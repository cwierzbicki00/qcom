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
            break;
        }
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
    if (num_pkts == 0) {
        return -USB_ERR_INVAL;
    }

    iso = iso_group_alloc(bus);
    if (!iso) {
        USB_LOG_ERR("No free ISO group\r\n");
        return -USB_ERR_NOMEM;
    }

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

    /* Get current frame number for scheduling */
    uint16_t cur_frame = usbh_get_frame_number(bus);
    /* Start a few frames ahead to avoid races */
    uint16_t start_frame = (cur_frame + 2) & (CONFIG_USB_EHCI_FRAME_LIST_SIZE - 1);

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
        uint32_t total_span = 0;

        /* Calculate total buffer span for this ITD */
        uint32_t first_pkt = pkt_idx;
        uint32_t slots_this_itd = 0;
        for (uint32_t s = 0; s < 8 && (first_pkt + s) < num_pkts; s++) {
            total_span = (uint32_t)(uintptr_t)urb->iso_packet[first_pkt + s].transfer_buffer
                         + urb->iso_packet[first_pkt + s].transfer_buffer_length
                         - buf_base;
            slots_this_itd++;
        }

        itd_fill_bpl(itd, dev_addr, ep_num, mps, dir_in, mult + 1,
                     usb_phyaddr2ramaddr(buf_base), total_span);

        /* Fill transaction status/control for each micro-frame slot */
        for (uint32_t mf = 0; mf < 8 && pkt_idx < num_pkts; mf++, pkt_idx++) {
            struct usbh_iso_frame_packet *pkt = &urb->iso_packet[pkt_idx];
            uint32_t buf_phys = (uint32_t)(uintptr_t)pkt->transfer_buffer;
            uint32_t offset = buf_phys - buf_base;
            uint32_t page = offset / 0x1000;
            uint32_t xoffs = offset & 0xFFF;

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
        if (!urb) {
            continue;
        }

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
                if (pkt_i >= urb->num_of_iso_packets) {
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
                } else {
                    /* Success — for IN, length field has actual received bytes */
                    if (itd_hw->dir_in) {
                        pkt->actual_length = length;
                    } else {
                        pkt->actual_length = pkt->transfer_buffer_length;
                    }
                    pkt->errorcode = 0;
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

            iso_group_free(bus, iso);

            /* Fire completion callback */
            if (urb->complete) {
                if (urb->errorcode < 0) {
                    urb->complete(urb->arg, urb->errorcode);
                } else {
                    urb->complete(urb->arg, (int)urb->actual_length);
                }
            }
        }
    }
}
