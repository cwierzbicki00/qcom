/**
 * @file usb_ehci_iso_stub.c
 * @brief EHCI Isochronous Transfer Descriptor (iTD) implementation
 *
 * Implements the three missing EHCI ISO functions required by CherryUSB:
 *   - ehci_iso_urb_init()          — allocate/fill ITDs, link into frame list
 *   - ehci_scan_isochronous_list() — called from ISR, check completion, fire callback
 *   - ehci_kill_iso_urb()          — unlink ITDs from frame list, release
 *
 * References:
 *   - EHCI Specification 1.0, Section 3.3 (iTD)
 *   - CherryUSB port/ehci/usb_hc_ehci.h (data structures)
 *   - CherryUSB port/ehci/usb_ehci_reg.h (register/field definitions)
 */

#include "usb_hc_ehci.h"
#include "usb_errno.h"
#include "usb_log.h"

#include <string.h>

/* ------------------------------------------------------------------ */
/* ISO group pool (one per concurrent ISO pipe)                        */
/* ------------------------------------------------------------------ */

static USB_NOCACHE_RAM_SECTION struct ehci_iso_hw
    g_iso_pool[CONFIG_USBHOST_MAX_BUS][CONFIG_USB_EHCI_ISO_NUM]
    __attribute__((aligned(CONFIG_USB_EHCI_ALIGN_SIZE)));
static volatile uint8_t g_iso_expected_pkts[CONFIG_USBHOST_MAX_BUS][CONFIG_USB_EHCI_ISO_NUM];
static uint16_t g_iso_next_start_frame[CONFIG_USBHOST_MAX_BUS];
static uint32_t g_iso_submit_count[CONFIG_USBHOST_MAX_BUS];
static uint32_t g_iso_complete_count[CONFIG_USBHOST_MAX_BUS];
static uint64_t g_iso_bytes_total[CONFIG_USBHOST_MAX_BUS];
static uint32_t g_iso_pkt_done_total[CONFIG_USBHOST_MAX_BUS];
static uint32_t g_iso_pkt_short_total[CONFIG_USBHOST_MAX_BUS];
static uint32_t g_iso_pkt_full_total[CONFIG_USBHOST_MAX_BUS];
static uint32_t g_iso_pkt_error_total[CONFIG_USBHOST_MAX_BUS];
static uint32_t g_iso_hw_len_zero_total[CONFIG_USBHOST_MAX_BUS];
static uint32_t g_iso_hw_len_nonzero_total[CONFIG_USBHOST_MAX_BUS];

/* App-owned ISO completion router (defined in uvc_capture.c). */
extern void uvc_iso_complete_router(void *arg, int nbytes);

static int iso_group_index(struct usbh_bus *bus, struct ehci_iso_hw *iso)
{
    for (int i = 0; i < CONFIG_USB_EHCI_ISO_NUM; i++) {
        if (&g_iso_pool[bus->hcd.hcd_id][i] == iso) {
            return i;
        }
    }
    return -1;
}

static bool iso_any_group_in_use(struct usbh_bus *bus)
{
    for (int i = 0; i < CONFIG_USB_EHCI_ISO_NUM; i++) {
        if (g_ehci_hcd[bus->hcd.hcd_id].ehci_iso_used[i]) {
            return true;
        }
    }
    return false;
}

/* Pick a monotonic start frame so ISO URBs do not overlap/gap under load.
 * Repeatedly submitting at current+2 can collide URBs and corrupt payload
 * continuity; maintain a rolling cursor per bus instead. */
static uint16_t iso_pick_start_frame(struct usbh_bus *bus, uint32_t itds_needed)
{
    const uint16_t frame_mask = (uint16_t)(CONFIG_USB_EHCI_FRAME_LIST_SIZE - 1U);
    const uint16_t half_wrap = (uint16_t)(CONFIG_USB_EHCI_FRAME_LIST_SIZE / 2U);
    const uint16_t cur_frame = (uint16_t)(usbh_get_frame_number(bus) & frame_mask);
    const uint16_t earliest = (uint16_t)((cur_frame + 2U) & frame_mask);
    uint16_t start_frame = earliest;
    size_t flags = usb_osal_enter_critical_section();

    uint16_t cursor = (uint16_t)(g_iso_next_start_frame[bus->hcd.hcd_id] & frame_mask);
    uint16_t cursor_ahead = (uint16_t)((cursor - cur_frame) & frame_mask);
    uint16_t earliest_ahead = (uint16_t)((earliest - cur_frame) & frame_mask);

    if (cursor_ahead > earliest_ahead && cursor_ahead < half_wrap) {
        start_frame = cursor;
    }

    g_iso_next_start_frame[bus->hcd.hcd_id] =
        (uint16_t)((start_frame + itds_needed) & frame_mask);
    usb_osal_leave_critical_section(flags);
    return start_frame;
}

static uint32_t iso_group_pkt_limit_from_itd(const struct ehci_iso_hw *iso)
{
    uint32_t max_pkt = 0;

    if (!iso) {
        return 0;
    }

    for (uint32_t i = 0; i < iso->itd_num; i++) {
        const struct ehci_itd_hw *itd_hw = &iso->itd_pool[i];
        uint8_t mask = itd_hw->mf_unmask;

        for (uint32_t mf = 0; mf < 8; mf++) {
            if (!(mask & (1U << mf))) {
                continue;
            }

            uint32_t pkt_i = itd_hw->pkt_idx[mf];
            if ((pkt_i + 1U) > max_pkt) {
                max_pkt = pkt_i + 1U;
            }
        }
    }

    return max_pkt;
}

/*
 * On qcc74x EHCI, iTD LENGTH for ISO IN reports bytes actually received in
 * this microframe transaction.
 *
 * Why this matters:
 * - Treating LENGTH as "remaining bytes" makes empty microframes look like
 *   full packets and feeds stale tail data into the UVC parser.
 * - That manifests as hdr_len=0 / ERR storms / no frame start, exactly what
 *   we see in field logs.
 */
static uint32_t iso_in_actual_length(const struct usbh_iso_frame_packet *pkt,
                                     uint32_t hw_length_field)
{
    uint32_t req_len;

    if (!pkt) {
        return 0;
    }

    req_len = pkt->transfer_buffer_length;
    if (hw_length_field > req_len) {
        return 0;
    }

    return hw_length_field;
}

/* ------------------------------------------------------------------ */
/* ITD pool helpers                                                    */
/* ------------------------------------------------------------------ */

static struct ehci_iso_hw *iso_group_alloc(struct usbh_bus *bus)
{
    for (int i = 0; i < CONFIG_USB_EHCI_ISO_NUM; i++) {
        if (!g_ehci_hcd[bus->hcd.hcd_id].ehci_iso_used[i]) {
            g_ehci_hcd[bus->hcd.hcd_id].ehci_iso_used[i] = true;
            struct ehci_iso_hw *iso = &g_iso_pool[bus->hcd.hcd_id][i];
            memset(iso, 0, sizeof(*iso));
            g_iso_expected_pkts[bus->hcd.hcd_id][i] = 0;
            return iso;
        }
    }
    return NULL;
}

static void iso_group_free(struct usbh_bus *bus, struct ehci_iso_hw *iso)
{
    for (int i = 0; i < CONFIG_USB_EHCI_ISO_NUM; i++) {
        if (&g_iso_pool[bus->hcd.hcd_id][i] == iso) {
            g_ehci_hcd[bus->hcd.hcd_id].ehci_iso_used[i] = false;
            g_iso_expected_pkts[bus->hcd.hcd_id][i] = 0;
            break;
        }
    }
    if (!iso_any_group_in_use(bus)) {
        g_iso_next_start_frame[bus->hcd.hcd_id] = 0;
    }
}

/* ------------------------------------------------------------------ */
/* ITD buffer pointer page fill                                        */
/* ------------------------------------------------------------------ */

/**
 * Fill iTD Buffer Page Pointer List (bpl[0..6]).
 *
 * Per EHCI 3.3.4:
 *   bpl[0] bits 0-6  = Device Address, bits 8-11 = Endpoint Number
 *   bpl[1] bits 0-10 = MaxPacketSize, bit 11 = Direction (1=IN)
 *   bpl[2] bits 0-1  = Multi (transactions per micro-frame)
 *   bpl[0..6] bits 12-31 = physical page addresses (4K-aligned)
 */
static void itd_fill_bpl(struct ehci_itd *itd,
                          uint8_t dev_addr, uint8_t ep_num,
                          uint16_t mps, bool dir_in, uint8_t mult,
                          uint32_t buf_phys, uint32_t total_len)
{
    /* Page 0: device addr + endpoint */
    itd->bpl[0] = (buf_phys & ~0xFFFU) |
                  ((ep_num & 0xF) << ITD_BUFPTR0_ENDPT_SHIFT) |
                  (dev_addr & ITD_BUFPTR0_DEVADDR_MASK);

    /* Page 1: max packet size + direction */
    uint32_t page1 = (buf_phys & ~0xFFFU);
    page1 |= (mps & ITD_BUFPTR1_MAXPKT_MASK);
    if (dir_in) {
        page1 |= ITD_BUFPTR1_DIRIN;
    }
    itd->bpl[1] = page1;

    /* Page 2: multi */
    uint32_t page2 = (buf_phys & ~0xFFFU);
    page2 |= ((mult & 0x3) << ITD_BUFPTR2_MULTI_SHIFT);
    itd->bpl[2] = page2;

    /* Pages 3-6: additional 4K page pointers if buffer spans pages */
    uint32_t base_page = buf_phys & ~0xFFFU;
    for (int i = 1; i <= 6; i++) {
        uint32_t page_addr = base_page + (uint32_t)(i * 0x1000);
        if (page_addr < buf_phys + total_len) {
            if (i >= 3) {
                itd->bpl[i] = page_addr & ~0xFFFU;
            } else {
                /* Already set above for pages 0-2, just update page address */
                itd->bpl[i] = (itd->bpl[i] & 0xFFFU) | (page_addr & ~0xFFFU);
            }
        }
    }
}

/* ------------------------------------------------------------------ */
/* ehci_iso_urb_init                                                   */
/* ------------------------------------------------------------------ */

int ehci_iso_urb_init(struct usbh_bus *bus, struct usbh_urb *urb)
{
    struct ehci_iso_hw *iso;
    int iso_idx;
    uint8_t dev_addr;
    uint8_t ep_num;
    uint16_t mps;
    uint8_t mult;
    bool dir_in;
    uint32_t num_pkts;
    size_t flags;

    if (!bus || !urb || !urb->hport || !urb->ep) {
        return -USB_ERR_INVAL;
    }

    num_pkts = urb->num_of_iso_packets;
    if (num_pkts == 0 || num_pkts > 64) {
        return -USB_ERR_INVAL;
    }
    g_iso_submit_count[bus->hcd.hcd_id]++;
    if ((g_iso_submit_count[bus->hcd.hcd_id] & 0xFFU) == 0U) {
        uint32_t first_buf = (uint32_t)(uintptr_t)urb->iso_packet[0].transfer_buffer;
        USB_LOG_INFO("ISO submit=%lu pkts=%lu first_buf=0x%08lx off=0x%03lx\r\n",
                     (unsigned long)g_iso_submit_count[bus->hcd.hcd_id],
                     (unsigned long)num_pkts,
                     (unsigned long)first_buf,
                     (unsigned long)(first_buf & 0x0FFFU));
    }

    iso = iso_group_alloc(bus);
    if (!iso) {
        USB_LOG_ERR("No free ISO group\r\n");
        return -USB_ERR_NOMEM;
    }
    iso_idx = iso_group_index(bus, iso);
    if (iso_idx < 0) {
        iso_group_free(bus, iso);
        return -USB_ERR_INVAL;
    }
    g_iso_expected_pkts[bus->hcd.hcd_id][iso_idx] = (uint8_t)num_pkts;

    dev_addr = urb->hport->dev_addr;
    ep_num   = urb->ep->bEndpointAddress & 0x0F;
    dir_in   = (urb->ep->bEndpointAddress & 0x80) != 0;

    /* Extract MPS and mult from endpoint descriptor */
    mult = (urb->ep->wMaxPacketSize &
            USB_MAXPACKETSIZE_ADDITIONAL_TRANSCATION_MASK) >>
           USB_MAXPACKETSIZE_ADDITIONAL_TRANSCATION_SHIFT;
    mps = urb->ep->wMaxPacketSize & USB_MAXPACKETSIZE_MASK;

    /*
     * Each ITD handles up to 8 transactions (one per micro-frame).
     * For high-speed ISO IN, we schedule one transaction per micro-frame slot.
     * Number of ITDs needed = ceil(num_pkts / 8).
     */
    uint32_t itds_needed = (num_pkts + 7) / 8;
    if (itds_needed > CONFIG_USB_EHCI_ITD_NUM) {
        USB_LOG_ERR("ISO needs %u ITDs, pool has %d\r\n",
                    (unsigned)itds_needed, CONFIG_USB_EHCI_ITD_NUM);
        iso_group_free(bus, iso);
        return -USB_ERR_NOMEM;
    }

    /* Start a few frames ahead, but keep a monotonic per-bus schedule cursor
     * so resubmitted URBs stay contiguous instead of overlapping. */
    uint16_t start_frame = iso_pick_start_frame(bus, itds_needed);

    urb->start_frame = start_frame;

    uint32_t pkt_idx = 0;

    for (uint32_t i = 0; i < itds_needed && pkt_idx < num_pkts; i++) {
        struct ehci_itd_hw *itd_hw = &iso->itd_pool[i];
        struct ehci_itd *itd = &itd_hw->hw;

        memset(itd_hw, 0, sizeof(*itd_hw));
        itd_hw->urb = urb;
        itd_hw->start_frame = (start_frame + i) & (CONFIG_USB_EHCI_FRAME_LIST_SIZE - 1);
        itd_hw->dir_in = dir_in;
        itd_hw->mf_unmask = 0;
        itd_hw->mf_valid = 0;

        /* Initialize NLP to terminate (will be linked below) */
        itd->nlp = QH_HLP_END;

        /* Fill buffer page pointers using first packet's buffer */
        uint32_t buf_base = (uint32_t)(uintptr_t)urb->iso_packet[pkt_idx].transfer_buffer;
        uint32_t base_page = buf_base & ~0xFFFU;
        uint32_t total_span = 0;

        /* Calculate total buffer span for this ITD */
        uint32_t first_pkt = pkt_idx;
        for (uint32_t s = 0; s < 8 && (first_pkt + s) < num_pkts; s++) {
            total_span = (uint32_t)(uintptr_t)urb->iso_packet[first_pkt + s].transfer_buffer
                         + urb->iso_packet[first_pkt + s].transfer_buffer_length
                         - buf_base;
        }

        itd_fill_bpl(itd, dev_addr, ep_num, mps, dir_in, mult + 1,
                     usb_phyaddr2ramaddr(buf_base), total_span);

        /* Fill transaction status/control for each micro-frame slot */
        for (uint32_t mf = 0; mf < 8 && pkt_idx < num_pkts; mf++, pkt_idx++) {
            struct usbh_iso_frame_packet *pkt = &urb->iso_packet[pkt_idx];
            uint32_t buf_phys = (uint32_t)(uintptr_t)pkt->transfer_buffer;
            uint32_t page = (buf_phys - base_page) / 0x1000U;
            uint32_t xoffs = buf_phys & 0xFFFU;

            if (page > 6U) {
                USB_LOG_ERR("ISO pkt page overflow: page=%u buf=0x%08lx base_page=0x%08lx idx=%lu\r\n",
                            (unsigned)page, (unsigned long)buf_phys,
                            (unsigned long)base_page, (unsigned long)pkt_idx);
                iso_group_free(bus, iso);
                return -USB_ERR_INVAL;
            }
            if (pkt->transfer_buffer_length > 0x0FFFU) {
                USB_LOG_ERR("ISO pkt length overflow: len=%lu idx=%lu\r\n",
                            (unsigned long)pkt->transfer_buffer_length,
                            (unsigned long)pkt_idx);
                iso_group_free(bus, iso);
                return -USB_ERR_INVAL;
            }

            uint32_t tscl = ITD_TSCL_STATUS_ACTIVE;
            tscl |= (xoffs & ITD_TSCL_XOFFS_MASK);
            tscl |= ((page & 0x7) << ITD_TSCL_PG_SHIFT);
            tscl |= ((uint32_t)pkt->transfer_buffer_length << ITD_TSCL_LENGTH_SHIFT);

            /* Set IOC on last transaction of last ITD */
            if (pkt_idx == num_pkts - 1) {
                tscl |= ITD_TSCL_IOC;
            }

            itd->tscl[mf] = tscl;
            itd_hw->pkt_idx[mf] = pkt_idx;
            itd_hw->mf_unmask |= (1 << mf);
            itd_hw->mf_valid |= (1 << mf);

            pkt->actual_length = 0;
            pkt->errorcode = -USB_ERR_BUSY;
        }

        iso->itd_num++;
    }

    /* Link ITDs into the periodic frame list */
    flags = usb_osal_enter_critical_section();

    urb->hcpriv = iso;

    for (uint32_t i = 0; i < iso->itd_num; i++) {
        struct ehci_itd_hw *itd_hw = &iso->itd_pool[i];
        uint16_t frame_idx = itd_hw->start_frame;

        /* Insert ITD at head of frame list entry, chain to existing entry */
        itd_hw->hw.nlp = g_framelist[bus->hcd.hcd_id][frame_idx];
        g_framelist[bus->hcd.hcd_id][frame_idx] =
            ITD_NLP_ITD(&itd_hw->hw);
    }

    /* Ensure periodic schedule is enabled */
    EHCI_HCOR->usbcmd |= EHCI_USBCMD_PSEN;

    usb_osal_leave_critical_section(flags);

    return 0;
}

/* ------------------------------------------------------------------ */
/* ehci_kill_iso_urb                                                   */
/* ------------------------------------------------------------------ */

void ehci_kill_iso_urb(struct usbh_bus *bus, struct usbh_urb *urb)
{
    struct ehci_iso_hw *iso;

    if (!urb || !urb->hcpriv) {
        return;
    }

    iso = (struct ehci_iso_hw *)urb->hcpriv;

    /* Unlink all ITDs from the periodic frame list */
    for (uint32_t i = 0; i < iso->itd_num; i++) {
        struct ehci_itd_hw *itd_hw = &iso->itd_pool[i];
        uint16_t frame_idx = itd_hw->start_frame;
        uint32_t itd_addr = EHCI_PTR2ADDR(&itd_hw->hw);

        /* Walk the frame list chain and remove this ITD */
        uint32_t *link = &g_framelist[bus->hcd.hcd_id][frame_idx];
        while ((*link & 0x1) == 0) { /* Not terminated */
            uint32_t type = *link & 0x6;
            if (type == 0x0) { /* ITD type */
                struct ehci_itd_hw *cur = EHCI_ADDR2ITD(*link);
                if (EHCI_PTR2ADDR(cur) == itd_addr) {
                    /* Remove from chain */
                    *link = cur->hw.nlp;
                    break;
                }
                link = &cur->hw.nlp;
            } else {
                /* QH or siTD — skip */
                break;
            }
        }

        /* Deactivate all transactions */
        for (int mf = 0; mf < 8; mf++) {
            itd_hw->hw.tscl[mf] &= ~ITD_TSCL_STATUS_ACTIVE;
        }
    }

    urb->hcpriv = NULL;
    urb->errorcode = -USB_ERR_SHUTDOWN;

    iso_group_free(bus, iso);
}

/* ------------------------------------------------------------------ */
/* ehci_scan_isochronous_list                                          */
/* ------------------------------------------------------------------ */

void ehci_scan_isochronous_list(struct usbh_bus *bus)
{
    for (int g = 0; g < CONFIG_USB_EHCI_ISO_NUM; g++) {
        if (!g_ehci_hcd[bus->hcd.hcd_id].ehci_iso_used[g]) {
            continue;
        }

        struct ehci_iso_hw *iso = &g_iso_pool[bus->hcd.hcd_id][g];
        if (iso->itd_num == 0) {
            continue;
        }

        /* Check first ITD's URB */
        struct usbh_urb *urb = iso->itd_pool[0].urb;
        uint8_t bus_id = bus->hcd.hcd_id;
        if (!urb) {
            continue;
        }
        uint32_t pkt_limit = urb->num_of_iso_packets;
        if (pkt_limit == 0 || pkt_limit > 64) {
            pkt_limit = (uint32_t)g_iso_expected_pkts[bus->hcd.hcd_id][g];
        }
        if (pkt_limit == 0 || pkt_limit > 64) {
            pkt_limit = iso_group_pkt_limit_from_itd(iso);
        }
        if (pkt_limit == 0 || pkt_limit > 64) {
            USB_LOG_WRN("Invalid ISO pkt_limit=%u for group %d (urb=%u itd=%u)\r\n",
                        (unsigned)pkt_limit, g,
                        (unsigned)urb->num_of_iso_packets,
                        (unsigned)iso->itd_num);
            continue;
        }
        g_iso_expected_pkts[bus->hcd.hcd_id][g] = (uint8_t)pkt_limit;

        /* Scan all ITDs in this group */
        bool all_done = true;
        bool any_error = false;
        uint32_t total_actual = 0;

        for (uint32_t i = 0; i < iso->itd_num; i++) {
            struct ehci_itd_hw *itd_hw = &iso->itd_pool[i];
            struct ehci_itd *itd = &itd_hw->hw;

            for (int mf = 0; mf < 8; mf++) {
                if (!(itd_hw->mf_valid & (1 << mf))) {
                    continue;
                }

                uint32_t tscl = itd->tscl[mf];

                if (tscl & ITD_TSCL_STATUS_ACTIVE) {
                    all_done = false;
                    continue;
                }

                /* Transaction completed — extract results */
                uint32_t pkt_i = itd_hw->pkt_idx[mf];
                if (pkt_i >= pkt_limit) {
                    continue;
                }

                struct usbh_iso_frame_packet *pkt = &urb->iso_packet[pkt_i];

                if (pkt->errorcode != -USB_ERR_BUSY) {
                    /* Already processed */
                    continue;
                }

                uint32_t status = tscl & ITD_TSCL_STATUS_MASK;
                uint32_t length = (tscl & ITD_TSCL_LENGTH_MASK) >> ITD_TSCL_LENGTH_SHIFT;

                if (status) {
                    /* Error in this transaction */
                    if (status & ITD_TSCL_STATUS_BABBLE) {
                        pkt->errorcode = -USB_ERR_BABBLE;
                    } else if (status & ITD_TSCL_STATUS_DBERROR) {
                        pkt->errorcode = -USB_ERR_IO;
                    } else if (status & ITD_TSCL_STATUS_XACTERR) {
                        pkt->errorcode = -USB_ERR_IO;
                    } else {
                        pkt->errorcode = -USB_ERR_IO;
                    }
                    pkt->actual_length = 0;
                    any_error = true;
                    g_iso_pkt_error_total[bus_id]++;
                } else {
                    /* Success */
                    if (itd_hw->dir_in) {
                        pkt->actual_length = iso_in_actual_length(pkt, length);
                        if (length == 0U) {
                            g_iso_hw_len_zero_total[bus_id]++;
                        } else {
                            g_iso_hw_len_nonzero_total[bus_id]++;
                        }
                    } else {
                        pkt->actual_length = pkt->transfer_buffer_length;
                    }
                    pkt->errorcode = 0;
                    g_iso_pkt_done_total[bus_id]++;
                    if (pkt->actual_length < pkt->transfer_buffer_length) {
                        g_iso_pkt_short_total[bus_id]++;
                    } else {
                        g_iso_pkt_full_total[bus_id]++;
                    }
                    g_iso_bytes_total[bus_id] += (uint64_t)pkt->actual_length;
                    total_actual += pkt->actual_length;
                }

                /* Clear valid bit so we don't re-process */
                itd_hw->mf_valid &= ~(1 << mf);
            }
        }

        if (all_done) {
            /* All transactions complete — unlink ITDs from frame list */
            for (uint32_t i = 0; i < iso->itd_num; i++) {
                struct ehci_itd_hw *itd_hw = &iso->itd_pool[i];
                uint16_t frame_idx = itd_hw->start_frame;
                uint32_t itd_addr = EHCI_PTR2ADDR(&itd_hw->hw);

                uint32_t *link = &g_framelist[bus->hcd.hcd_id][frame_idx];
                while ((*link & 0x1) == 0) {
                    uint32_t type = *link & 0x6;
                    if (type == 0x0) {
                        struct ehci_itd_hw *cur = EHCI_ADDR2ITD(*link);
                        if (EHCI_PTR2ADDR(cur) == itd_addr) {
                            *link = cur->hw.nlp;
                            break;
                        }
                        link = &cur->hw.nlp;
                    } else {
                        break;
                    }
                }
            }

            urb->hcpriv = NULL;
            urb->actual_length = total_actual;
            urb->errorcode = any_error ? -USB_ERR_IO : 0;
            urb->num_of_iso_packets = pkt_limit;
            urb->arg = urb;
            if (urb->complete != uvc_iso_complete_router) {
                USB_LOG_WRN("Unexpected ISO cb=%p, forcing router\r\n", (void *)urb->complete);
                urb->complete = uvc_iso_complete_router;
            }

            iso_group_free(bus, iso);
            g_iso_complete_count[bus_id]++;
            if (g_iso_complete_count[bus_id] <= 8U && pkt_limit > 0U) {
                struct usbh_iso_frame_packet *p0 = &urb->iso_packet[0];
                uint32_t hlen = 0U;
                uint32_t hinfo = 0U;
                if (p0->actual_length >= 2U && p0->transfer_buffer) {
                    hlen = p0->transfer_buffer[0];
                    hinfo = p0->transfer_buffer[1];
                }
                USB_LOG_INFO("ISO sample=%lu pkt0_req=%lu pkt0_act=%lu hdr_len=%lu hdr_info=0x%02lx err_pkt0=%ld total_actual=%lu\r\n",
                             (unsigned long)g_iso_complete_count[bus_id],
                             (unsigned long)p0->transfer_buffer_length,
                             (unsigned long)p0->actual_length,
                             (unsigned long)hlen,
                             (unsigned long)hinfo,
                             (long)p0->errorcode,
                             (unsigned long)total_actual);
                USB_LOG_INFO("ISO sample=%lu pkt_actual[0..7]=%lu,%lu,%lu,%lu,%lu,%lu,%lu,%lu\r\n",
                             (unsigned long)g_iso_complete_count[bus_id],
                             (unsigned long)((pkt_limit > 0U) ? urb->iso_packet[0].actual_length : 0U),
                             (unsigned long)((pkt_limit > 1U) ? urb->iso_packet[1].actual_length : 0U),
                             (unsigned long)((pkt_limit > 2U) ? urb->iso_packet[2].actual_length : 0U),
                             (unsigned long)((pkt_limit > 3U) ? urb->iso_packet[3].actual_length : 0U),
                             (unsigned long)((pkt_limit > 4U) ? urb->iso_packet[4].actual_length : 0U),
                             (unsigned long)((pkt_limit > 5U) ? urb->iso_packet[5].actual_length : 0U),
                             (unsigned long)((pkt_limit > 6U) ? urb->iso_packet[6].actual_length : 0U),
                             (unsigned long)((pkt_limit > 7U) ? urb->iso_packet[7].actual_length : 0U));
            }
            if ((g_iso_complete_count[bus_id] & 0xFFU) == 0U) {
                USB_LOG_INFO("ISO complete=%lu pkt_limit=%lu total_actual=%lu err=%lu pkt_done=%lu pkt_short=%lu pkt_full=%lu pkt_err=%lu hw_len0=%lu hw_lennz=%lu bytes=%llu\r\n",
                             (unsigned long)g_iso_complete_count[bus_id],
                             (unsigned long)pkt_limit,
                             (unsigned long)total_actual,
                             (unsigned long)(any_error ? 1U : 0U),
                             (unsigned long)g_iso_pkt_done_total[bus_id],
                             (unsigned long)g_iso_pkt_short_total[bus_id],
                             (unsigned long)g_iso_pkt_full_total[bus_id],
                             (unsigned long)g_iso_pkt_error_total[bus_id],
                             (unsigned long)g_iso_hw_len_zero_total[bus_id],
                             (unsigned long)g_iso_hw_len_nonzero_total[bus_id],
                             (unsigned long long)g_iso_bytes_total[bus_id]);
            }

            /* Fire completion callback through the app-owned router directly. */
            if (urb->errorcode < 0) {
                uvc_iso_complete_router(urb, urb->errorcode);
            } else {
                uvc_iso_complete_router(urb, (int)urb->actual_length);
            }
        }
    }
}
