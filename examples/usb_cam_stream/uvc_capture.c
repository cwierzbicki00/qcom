#include "uvc_capture.h"
#include "frame_pool.h"
#include "http_server.h"

#include "FreeRTOS.h"
#include "task.h"

#include "usbh_core.h"
#include "usbh_video.h"

#include "qcc74x_core.h"
#include "qcc74x_name.h"
#include "mem.h"

#include "shell.h"

#include <string.h>
#include <inttypes.h>

#define DBG_TAG "UVC"
#include "log.h"

/* ------------------------------------------------------------------ */
/* Configuration                                                       */
/* ------------------------------------------------------------------ */

/* Keep each URB within a single iTD (<=8 microframes) for EHCI ISO stability.
 * Runtime may downshift further if SRAM is tight. */
#define ISO_PKTS_PER_URB_MAX    8
#define ISO_PKTS_PER_URB_MIN    4
#define ISO_URB_COUNT_MAX       2

/* Fallback order: keep throughput first, then reduce SRAM pressure. */
static const uint8_t g_iso_pkt_candidates[] = { 8, 6, 4 };

/* Leave some SRAM headroom for protocol stacks and task activity. */
#define ISO_SRAM_SAFETY_MARGIN  (20 * 1024U)

/* Guard bytes around each ISO payload buffer to detect DMA overwrite. */
#define ISO_BUF_GUARD_BYTES      32U
#define ISO_BUF_GUARD_VALUE      0xA5U

/* Streaming task stack and priority */
#define STREAM_TASK_STACK   6144
#define STREAM_TASK_PRIO    10

/* Lock-free URB done ring (ISR producer, task consumer). Must be power-of-two. */
#define URB_DONE_RING_SIZE  64U
#define URB_DONE_RING_MASK  (URB_DONE_RING_SIZE - 1U)

/* Stall detection: no transport progress for this many ms - restart.
 * Keep this tolerant enough to avoid false resets on transient Wi-Fi/USB jitter. */
#define STALL_TIMEOUT_MS    4000
/* If URBs keep arriving but no valid frame is completed for this long while a
 * client is connected, reset parser sync without tearing down USB transport. */
#define PARSER_RESYNC_TIMEOUT_MS 5000
/* Apply parser resync even when idle so /snapshot can recover without a stream
 * client driving retries. */
#define PARSER_RESYNC_TIMEOUT_IDLE_MS 7000
/* Allow a few transport restarts per physical attach before giving up. */
#define MAX_TRANSPORT_RESTARTS   3U

/* Cap ISO IN bandwidth selection for stability on qcc743+Wi-Fi+UVC.
 * Prefer single-transaction microframes (mult=0) to keep UVC payload
 * headers aligned and reduce parser desync under load. */
#define UVC_ISO_MPS_CAP         800U
/* Keep camera data rate below combined USB host + Wi-Fi forwarding limits. */
#define UVC_TARGET_FPS          10U
#define UVC_TARGET_INTERVAL_100NS (10000000U / UVC_TARGET_FPS)
/* Drop any frame touched by transport/header errors to avoid visible
 * corruption (green blocks/tearing) in MJPEG output. */
#define UVC_FRAME_PKT_ERROR_LIMIT 0U

/* Verbose capability dump is expensive and can disrupt timing on low SRAM. */
#define UVC_VERBOSE_ENUM_LOG 0

/* ------------------------------------------------------------------ */
/* State                                                               */
/* ------------------------------------------------------------------ */

static volatile camera_state_t g_cam_state = CAMERA_DETACHED;
static uvc_mode_t              g_cam_mode;
static struct usbh_video      *g_video_class;
static TaskHandle_t             g_stream_task;
static volatile bool            g_stream_stop;
/* Capture controller state (single owner + session IDs). */
static volatile capture_ctrl_state_t g_capture_ctrl_state = CAPTURE_CTRL_STOPPED;
static volatile uint32_t g_capture_session_seq;
static volatile uint32_t g_active_session_id;
static uint32_t g_cli_session_id;

/* Frame assembly state */
static frame_t      g_cur_frame;
static bool         g_cur_frame_valid;
static bool         g_cur_frame_oversize;
static bool         g_cur_frame_tainted;
static bool         g_cur_frame_saw_eoi;
static uint16_t     g_cur_frame_error_pkts;
static bool         g_wait_for_fid_resync;
static bool         g_pending_soi_tail_ff;
static uint8_t      g_last_fid;
static bool         g_fid_initialized;
static volatile uint64_t g_frames_captured;
static volatile uint64_t g_urb_payload_completions;

/* Stall detection */
static volatile bool g_stall_detected;
static volatile uint8_t g_transport_restart_attempts;
static volatile uint32_t g_iso_cb_queue_drop_count;
static volatile uint8_t g_iso_pkts_per_urb_active;
static volatile uint8_t g_iso_urb_count_active;
static volatile uint32_t g_frame_reclaim_count;
static volatile uint32_t g_urb_complete_count;
static volatile uint32_t g_unknown_urb_count;
static volatile uint32_t g_pkt_count_clamp_count;
static volatile uint32_t g_pkt_len_clamp_count;
static volatile uint32_t g_pkt_range_drop_count;
static volatile uint32_t g_pkt_desc_repair_count;
static volatile uint32_t g_invalid_urb_buf_count;
static volatile uint32_t g_guard_fault_count;
static volatile uint32_t g_hdr_short_count;
static volatile uint32_t g_hdr_invalid_count;
static volatile uint32_t g_hdr_error_bit_count;
static volatile uint32_t g_hdr_eof_count;
static volatile uint32_t g_hdr_fid_toggle_count;
static volatile uint32_t g_payload_pkt_count;
static volatile uint64_t g_payload_bytes_total;
static volatile uint32_t g_frame_oversize_drop_count;
static volatile uint32_t g_jpeg_invalid_drop_count;
static volatile uint32_t g_jpeg_trim_count;
static volatile uint32_t g_jpeg_no_sos_count;
static volatile uint32_t g_jpeg_no_eoi_count;
static volatile uint32_t g_jpeg_nested_soi_count;
static volatile uint32_t g_jpeg_trailer_garbage_count;
static volatile uint32_t g_resync_soi_count;
static volatile uint32_t g_fid_incomplete_drop_count;
static volatile uint32_t g_fid_toggle_ignore_count;
static volatile uint32_t g_pkt_error_drop_count;
static volatile uint32_t g_parser_resync_count;
static volatile uint32_t g_parser_resync_streak;
static volatile uint32_t g_parser_escalation_count;
static volatile uint32_t g_transport_restart_count;
static struct usbh_urb *g_stream_urbs[ISO_URB_COUNT_MAX];
static uint8_t *g_stream_iso_raw_bufs[ISO_URB_COUNT_MAX];
static uint8_t *g_stream_iso_bufs[ISO_URB_COUNT_MAX];
static struct usbh_urb *g_pending_resubmit[ISO_URB_COUNT_MAX];
static volatile uint32_t g_urb_done_head;
static volatile uint32_t g_urb_done_tail;
static struct usbh_urb *g_urb_done_ring[URB_DONE_RING_SIZE];
static volatile uint32_t g_resubmit_busy_count;
/* Persist preferred interval across reopen/restart cycles (100ns units). */
static uint32_t g_preferred_interval_100ns;

/* State change notification callback */
static uvc_state_callback_t g_state_callback;

/* ------------------------------------------------------------------ */
/* State change notification                                           */
/* ------------------------------------------------------------------ */

static void set_cam_state(camera_state_t new_state)
{
    g_cam_state = new_state;
    if (g_state_callback) {
        g_state_callback(new_state);
    }
}

static void capture_ctrl_set(capture_ctrl_state_t state, uint32_t session_id)
{
    taskENTER_CRITICAL();
    g_capture_ctrl_state = state;
    g_active_session_id = session_id;
    taskEXIT_CRITICAL();
}

static capture_ctrl_state_t capture_ctrl_get_state(void)
{
    capture_ctrl_state_t state;
    taskENTER_CRITICAL();
    state = g_capture_ctrl_state;
    taskEXIT_CRITICAL();
    return state;
}

static bool capture_ctrl_is_stopping(void)
{
    bool stopping;
    taskENTER_CRITICAL();
    stopping = (g_capture_ctrl_state == CAPTURE_CTRL_STOPPING);
    taskEXIT_CRITICAL();
    return stopping;
}

static bool capture_ctrl_enter_restarting(void)
{
    bool ok = false;
    taskENTER_CRITICAL();
    if (g_capture_ctrl_state == CAPTURE_CTRL_RUNNING &&
        g_active_session_id != 0U) {
        g_capture_ctrl_state = CAPTURE_CTRL_RESTARTING;
        ok = true;
    }
    taskEXIT_CRITICAL();
    return ok;
}

static void capture_ctrl_mark_running_if_owned(void)
{
    taskENTER_CRITICAL();
    if ((g_capture_ctrl_state == CAPTURE_CTRL_STARTING ||
         g_capture_ctrl_state == CAPTURE_CTRL_RESTARTING) &&
        g_active_session_id != 0U) {
        g_capture_ctrl_state = CAPTURE_CTRL_RUNNING;
    }
    taskEXIT_CRITICAL();
}

static inline void urb_done_ring_reset(void)
{
    g_urb_done_head = 0;
    g_urb_done_tail = 0;
}

static inline void stream_urb_slots_reset(void)
{
    for (uint8_t i = 0; i < ISO_URB_COUNT_MAX; i++) {
        g_stream_urbs[i] = NULL;
        g_stream_iso_raw_bufs[i] = NULL;
        g_stream_iso_bufs[i] = NULL;
        g_pending_resubmit[i] = NULL;
    }
}

static inline bool urb_ptr_aligned(const struct usbh_urb *urb)
{
    return urb && ((((uintptr_t)urb) & (sizeof(uintptr_t) - 1U)) == 0U);
}

static inline bool stream_client_connected(void)
{
    const http_counters_t *c = http_get_counters();
    return (c && c->stream_client_connected);
}

static inline uint8_t sanitize_iso_pkt_cap(uint8_t pkt_cap)
{
    if (pkt_cap < ISO_PKTS_PER_URB_MIN || pkt_cap > ISO_PKTS_PER_URB_MAX) {
        if (g_iso_pkts_per_urb_active >= ISO_PKTS_PER_URB_MIN &&
            g_iso_pkts_per_urb_active <= ISO_PKTS_PER_URB_MAX) {
            return g_iso_pkts_per_urb_active;
        }
        return ISO_PKTS_PER_URB_MIN;
    }
    return pkt_cap;
}

typedef struct {
    uint16_t wmax_raw;
    uint16_t mps;
    uint8_t transactions;
    uint16_t bytes_per_packet;
} iso_ep_layout_t;

static inline uint16_t decode_wmax_mps(uint16_t wmax_raw)
{
    return (uint16_t)(wmax_raw & USB_MAXPACKETSIZE_MASK);
}

static inline uint8_t decode_wmax_transactions(uint16_t wmax_raw)
{
    uint8_t add = (uint8_t)((wmax_raw & USB_MAXPACKETSIZE_ADDITIONAL_TRANSCATION_MASK) >>
                            USB_MAXPACKETSIZE_ADDITIONAL_TRANSCATION_SHIFT);
    return (uint8_t)(add + 1U);
}

static iso_ep_layout_t iso_ep_layout_from_ep(const struct usb_endpoint_descriptor *ep)
{
    iso_ep_layout_t layout;
    memset(&layout, 0, sizeof(layout));
    if (!ep) {
        return layout;
    }
    layout.wmax_raw = ep->wMaxPacketSize;
    layout.mps = decode_wmax_mps(layout.wmax_raw);
    layout.transactions = decode_wmax_transactions(layout.wmax_raw);
    layout.bytes_per_packet =
        (uint16_t)((uint32_t)layout.mps * (uint32_t)layout.transactions);
    return layout;
}

static bool iso_buffer_layout_is_valid(uint16_t bytes_per_packet,
                                       uint8_t urb_packets,
                                       uint32_t backing_buffer_size,
                                       const char *phase)
{
    if (bytes_per_packet == 0U || urb_packets == 0U) {
                LOG_E("[UVC] ISO layout invalid phase=%s bpp=%u pkts=%u\r\n",
                            phase ? phase : "?", (unsigned)bytes_per_packet,
              (unsigned)urb_packets);
        configASSERT(0);
        return false;
    }

    uint32_t urb_buf_bytes = (uint32_t)bytes_per_packet * (uint32_t)urb_packets;
    uint32_t last_packet_offset = ((uint32_t)urb_packets - 1U) *
                                  (uint32_t)bytes_per_packet;
    bool fits = (urb_buf_bytes <= backing_buffer_size) &&
                ((last_packet_offset + (uint32_t)bytes_per_packet) <=
                 backing_buffer_size);
    if (!fits) {
                LOG_E("[UVC] ISO layout overflow phase=%s bpp=%u pkts=%u urb_buf=%u backing=%u last_off=%u\r\n",
                            phase ? phase : "?", (unsigned)bytes_per_packet,
              (unsigned)urb_packets, (unsigned)urb_buf_bytes,
              (unsigned)backing_buffer_size, (unsigned)last_packet_offset);
    }
    configASSERT(urb_buf_bytes <= backing_buffer_size);
    configASSERT((last_packet_offset + (uint32_t)bytes_per_packet) <=
                 backing_buffer_size);
    return fits;
}

static void log_iso_arm_profile(const char *phase,
                                uint8_t altsetting,
                                const iso_ep_layout_t *layout,
                                uint8_t urb_packets,
                                uint32_t urb_buf_bytes,
                                uint32_t backing_buffer_size)
{
    if (!layout) {
        return;
    }
    LOG_I("[UVC] ISO %s altsetting=%u wMaxPacketSize_raw=0x%04X mps=%u transactions=%u bytes_per_packet=%u urb_packets=%u urb_buf_bytes=%u backing=%u\r\n",
          phase ? phase : "start",
          (unsigned)altsetting,
          (unsigned)layout->wmax_raw,
          (unsigned)layout->mps,
          (unsigned)layout->transactions,
          (unsigned)layout->bytes_per_packet,
          (unsigned)urb_packets,
          (unsigned)urb_buf_bytes,
          (unsigned)backing_buffer_size);
}

static bool iso_guard_is_intact(uint8_t slot, uint32_t data_size,
                                bool *tail_guard, uint32_t *guard_off)
{
    if (slot >= ISO_URB_COUNT_MAX || !g_stream_iso_raw_bufs[slot]) {
        return false;
    }

    for (uint32_t i = 0; i < ISO_BUF_GUARD_BYTES; i++) {
        if (g_stream_iso_raw_bufs[slot][i] != ISO_BUF_GUARD_VALUE) {
            if (tail_guard) *tail_guard = false;
            if (guard_off) *guard_off = i;
            return false;
        }
    }

    uint8_t *tail = g_stream_iso_raw_bufs[slot] + ISO_BUF_GUARD_BYTES + data_size;
    for (uint32_t i = 0; i < ISO_BUF_GUARD_BYTES; i++) {
        if (tail[i] != ISO_BUF_GUARD_VALUE) {
            if (tail_guard) *tail_guard = true;
            if (guard_off) *guard_off = i;
            return false;
        }
    }

    return true;
}

static inline bool urb_done_ring_push_isr(struct usbh_urb *urb)
{
    uint32_t head = g_urb_done_head;
    uint32_t next = (head + 1U) & URB_DONE_RING_MASK;
    if (next == g_urb_done_tail) {
        return false;
    }
    g_urb_done_ring[head] = urb;
    __asm volatile("" ::: "memory");
    g_urb_done_head = next;
    return true;
}

static inline bool urb_done_ring_pop(struct usbh_urb **out_urb)
{
    uint32_t tail = g_urb_done_tail;
    uint32_t head = g_urb_done_head;
    if (tail == head) {
        return false;
    }
    __asm volatile("" ::: "memory");
    *out_urb = g_urb_done_ring[tail];
    g_urb_done_tail = (tail + 1U) & URB_DONE_RING_MASK;
    return true;
}

/* ------------------------------------------------------------------ */
/* Helpers                                                             */
/* ------------------------------------------------------------------ */

/*
 * Resolution selection policy (from spec 10-usb-uvc-capture):
 *  1. Exact 640x480 MJPEG
 *  2. Nearest >=320x240 and <=1280x720
 *  3. Any available MJPEG resolution
 */
static bool select_best_resolution(struct usbh_video *vc,
                                   uint8_t *out_format_idx,
                                   uint8_t *out_frame_idx,
                                   uint16_t *out_w, uint16_t *out_h)
{
    int best_score   = -1;
    uint8_t best_fi  = 0;
    uint8_t best_fri = 0;
    uint16_t best_w  = 0, best_h = 0;
    uint8_t num_formats;
    uint8_t max_formats;
    uint8_t max_frames;

    if (!vc) {
        return false;
    }

    max_formats = (uint8_t)(sizeof(vc->format) / sizeof(vc->format[0]));
    num_formats = vc->num_of_formats;
    if (num_formats > max_formats) {
        LOG_W("[UVC] Clamp format count %u -> %u\r\n",
              (unsigned)num_formats, (unsigned)max_formats);
        num_formats = max_formats;
    }

    for (uint8_t fi = 0; fi < num_formats; fi++) {
        uint8_t num_frames = vc->format[fi].num_of_frames;
        if (vc->format[fi].format_type != USBH_VIDEO_FORMAT_MJPEG) {
            continue;
        }
        max_frames = (uint8_t)(sizeof(vc->format[fi].frame) /
                               sizeof(vc->format[fi].frame[0]));
        if (num_frames > max_frames) {
            LOG_W("[UVC] Clamp frame count %u -> %u (format=%u)\r\n",
                  (unsigned)num_frames, (unsigned)max_frames, (unsigned)(fi + 1U));
            num_frames = max_frames;
        }

        for (uint8_t fri = 0; fri < num_frames; fri++) {
            uint16_t w = vc->format[fi].frame[fri].wWidth;
            uint16_t h = vc->format[fi].frame[fri].wHeight;
            if (w == 0U || h == 0U) {
                continue;
            }

            int score;
            if (w == 640 && h == 480) {
                score = 10000; /* Exact match — highest priority */
            } else if (w >= 320 && h >= 240 && w <= 1280 && h <= 720) {
                /* Prefer resolutions closer to 640x480 */
                int dw = (int)w - 640;
                int dh = (int)h - 480;
                int dist = dw * dw + dh * dh;
                score = 5000 - (dist / 1000);
                if (score < 1) score = 1;
            } else {
                score = 0; /* Out-of-range fallback */
            }

            if (score > best_score) {
                best_score = score;
                best_fi    = fi;
                best_fri   = fri;
                best_w     = w;
                best_h     = h;
            }
        }
    }

    if (best_score < 0) {
        return false; /* No MJPEG format at all */
    }

    /* format_idx and frame_idx are 1-based for CherryUSB */
    *out_format_idx = best_fi + 1;
    *out_frame_idx  = best_fri + 1;
    *out_w = best_w;
    *out_h = best_h;
    return true;
}

/*
 * Pick the highest-bandwidth alt-setting (highest MPS) for ISO IN.
 * Alt-setting 0 is the zero-bandwidth setting, so start from 1.
 */
static uint8_t select_altsetting(struct usbh_video *vc)
{
    uint8_t best_single_alt = 0;
    uint16_t best_single_mps = 0;
    uint8_t best_cap_alt = 0;
    uint16_t best_cap_mps = 0;
    uint8_t fallback_alt = 1;
    uint16_t fallback_mps = 0;

    for (uint8_t i = 1; i < vc->num_of_intf_altsettings; i++) {
        struct usb_endpoint_descriptor *ep =
            &vc->hport->config.intf[vc->data_intf].altsetting[i].ep[0].ep_desc;
        iso_ep_layout_t iso = iso_ep_layout_from_ep(ep);
        uint16_t bytes_per_packet = iso.bytes_per_packet;

        if (bytes_per_packet > fallback_mps) {
            fallback_mps = bytes_per_packet;
            fallback_alt = i;
        }
        if (bytes_per_packet > UVC_ISO_MPS_CAP) {
            continue;
        }
        if (bytes_per_packet > best_cap_mps) {
            best_cap_mps = bytes_per_packet;
            best_cap_alt = i;
        }
        if (iso.transactions == 1U && bytes_per_packet > best_single_mps) {
            best_single_mps = bytes_per_packet;
            best_single_alt = i;
        }
    }

    if (best_single_alt != 0) {
        return best_single_alt;
    }
    if (best_cap_alt != 0) {
        return best_cap_alt;
    }

    return fallback_alt;
}

static uint16_t altsetting_mps(struct usbh_video *vc, uint8_t alt)
{
    if (!vc || alt >= vc->num_of_intf_altsettings) {
        return 0;
    }
    struct usb_endpoint_descriptor *ep =
        &vc->hport->config.intf[vc->data_intf].altsetting[alt].ep[0].ep_desc;
    return iso_ep_layout_from_ep(ep).bytes_per_packet;
}

static uint16_t restart_mps_floor_for_mode(uint16_t width, uint16_t height)
{
    uint32_t pixels = (uint32_t)width * (uint32_t)height;
    if (pixels >= (640U * 480U)) {
        return 640U;
    }
    if (pixels >= (320U * 240U)) {
        return 384U;
    }
    return 192U;
}

/*
 * Select next lower-bandwidth altsetting from a current choice.
 * If no lower setting exists above floor_mps, returns current_alt.
 */
static uint8_t select_lower_altsetting(struct usbh_video *vc, uint8_t current_alt,
                                       uint16_t floor_mps)
{
    uint16_t cur_mps = altsetting_mps(vc, current_alt);
    uint8_t best_alt = current_alt;
    uint16_t best_mps = 0U;

    if (!vc || cur_mps == 0U) {
        return current_alt;
    }

    for (uint8_t i = 1; i < vc->num_of_intf_altsettings; i++) {
        uint16_t mps = altsetting_mps(vc, i);
        if (mps == 0U || mps >= cur_mps || mps < floor_mps) {
            continue;
        }
        if (mps > best_mps) {
            best_mps = mps;
            best_alt = i;
        }
    }

    return best_alt;
}

/* ------------------------------------------------------------------ */
/* UVC payload header parsing and frame assembly                       */
/* ------------------------------------------------------------------ */

/*
 * Parse UVC payload header (USB Video Class 1.1, Section 2.4.3.3).
 * Header is variable-length: byte 0 = header length (2-12 bytes),
 * byte 1 = bmHeaderInfo (FID, EOF, PTS, SCR, etc.).
 *
 * Returns the offset where actual payload data begins.
 */
static bool locate_complete_jpeg(const uint8_t *buf, uint32_t len,
                                 uint32_t *out_eoi_end, bool *out_saw_sos)
{
    if (out_eoi_end) {
        *out_eoi_end = 0U;
    }
    if (out_saw_sos) {
        *out_saw_sos = false;
    }

    if (!buf || len < 4U || buf[0] != 0xFFU || buf[1] != 0xD8U) {
        return false;
    }

    uint32_t i = 2U;
    bool saw_sos = false;

    /* Parse JPEG headers marker-by-marker (length aware) until SOS. */
    while (i + 1U < len && !saw_sos) {
        if (buf[i] != 0xFFU) {
            i++;
            continue;
        }

        while (i < len && buf[i] == 0xFFU) {
            i++;
        }
        if (i >= len) {
            break;
        }

        uint8_t marker = buf[i++];
        if (marker == 0x00U) {
            continue;
        }

        if (marker == 0xD8U) {
            g_jpeg_nested_soi_count++;
            continue;
        }

        if (marker == 0xDAU) {
            saw_sos = true;
            break;
        }

        if (marker == 0xD9U) {
            /* EOI before SOS is not a valid image payload. */
            break;
        }

        if ((marker >= 0xD0U && marker <= 0xD7U) || marker == 0x01U) {
            continue; /* stand-alone marker */
        }

        if (i + 1U >= len) {
            break;
        }

        uint16_t seg_len = (uint16_t)(((uint16_t)buf[i] << 8U) | (uint16_t)buf[i + 1U]);
        if (seg_len < 2U) {
            break;
        }

        i += (uint32_t)seg_len;
        if (i > len) {
            break;
        }
    }

    if (!saw_sos) {
        if (out_saw_sos) {
            *out_saw_sos = false;
        }
        return false;
    }

    if (out_saw_sos) {
        *out_saw_sos = true;
    }

    /* Parse entropy-coded data: find real EOI while handling stuffed bytes. */
    while (i + 1U < len) {
        if (buf[i] != 0xFFU) {
            i++;
            continue;
        }

        while (i < len && buf[i] == 0xFFU) {
            i++;
        }
        if (i >= len) {
            break;
        }

        uint8_t marker = buf[i++];
        if (marker == 0x00U) {
            continue; /* stuffed 0xFF data byte */
        }
        if (marker == 0xD9U) {
            if (out_eoi_end) {
                *out_eoi_end = i;
            }
            return true;
        }
        if (marker >= 0xD0U && marker <= 0xD7U) {
            continue; /* restart marker */
        }

        /* For webcam MJPEG, anything other than stuffed FF, RSTn, or EOI
         * inside entropy-coded data is treated as corruption. */
        return false;
    }

    return false;
}

static bool sanitize_current_jpeg_frame(frame_t *frame)
{
    if (!frame || !frame->data || frame->len < 4U) {
        return false;
    }

    /* MJPEG frame must start at SOI. */
    if (frame->data[0] != 0xFFU || frame->data[1] != 0xD8U) {
        return false;
    }

    uint32_t eoi_end = 0U;
    bool saw_sos = false;
    if (!locate_complete_jpeg(frame->data, frame->len, &eoi_end, &saw_sos)) {
        if (!saw_sos) {
            g_jpeg_no_sos_count++;
        } else {
            g_jpeg_no_eoi_count++;
        }
        return false;
    }

    if (!saw_sos) {
        g_jpeg_no_sos_count++;
        return false;
    }

    uint32_t out_len = eoi_end;
    if (out_len == 0U || out_len > FRAME_MAX_SIZE) {
        return false;
    }

    if (out_len != frame->len) {
        /* Keep only the first complete JPEG and discard any trailer bytes.
         * Some cameras append non-image payload noise before EOF. */
        g_jpeg_trailer_garbage_count++;
        g_jpeg_trim_count++;
        frame->len = out_len;
    }
    return true;
}

static void note_packet_error_for_current_frame(void)
{
    g_pkt_error_drop_count++;
    if (!g_cur_frame_valid) {
        return;
    }

    if (g_cur_frame_error_pkts < UINT16_MAX) {
        g_cur_frame_error_pkts++;
    }
    if (g_cur_frame_error_pkts > UVC_FRAME_PKT_ERROR_LIMIT) {
        g_cur_frame_tainted = true;
    }
}

static void drop_current_assembly(bool wait_for_fid_resync)
{
    if (g_cur_frame_valid) {
        frame_free(&g_cur_frame);
    }
    g_cur_frame_valid = false;
    g_cur_frame_oversize = false;
    g_cur_frame_tainted = false;
    g_cur_frame_saw_eoi = false;
    g_cur_frame_error_pkts = 0U;
    g_wait_for_fid_resync = wait_for_fid_resync;
    g_pending_soi_tail_ff = false;
}

static void finalize_current_frame(bool eof_seen)
{
    if (!g_cur_frame_valid || g_cur_frame.len == 0U) {
        g_cur_frame_valid = false;
        g_cur_frame_oversize = false;
        g_cur_frame_tainted = false;
        g_cur_frame_saw_eoi = false;
        return;
    }

    if (eof_seen) {
        g_hdr_eof_count++;
    }

    if (g_cur_frame_oversize) {
        drop_current_assembly(true);
        return;
    }

    if (g_cur_frame_tainted) {
        g_jpeg_invalid_drop_count++;
        drop_current_assembly(true);
        return;
    }

    if (g_cur_frame_error_pkts > UVC_FRAME_PKT_ERROR_LIMIT) {
        g_jpeg_invalid_drop_count++;
        drop_current_assembly(true);
        return;
    }

    if (!sanitize_current_jpeg_frame(&g_cur_frame)) {
        g_jpeg_invalid_drop_count++;
        g_wait_for_fid_resync = true;
        g_pending_soi_tail_ff = false;
        if ((g_jpeg_invalid_drop_count & 0x3FU) == 1U) {
            uint8_t h0 = 0, h1 = 0, t0 = 0, t1 = 0;
            if (g_cur_frame.len >= 2U) {
                h0 = g_cur_frame.data[0];
                h1 = g_cur_frame.data[1];
                t0 = g_cur_frame.data[g_cur_frame.len - 2U];
                t1 = g_cur_frame.data[g_cur_frame.len - 1U];
            }
            LOG_W("[UVC] Drop invalid JPEG len=%u head=%02X%02X tail=%02X%02X (drops=%u)\r\n",
                  (unsigned)g_cur_frame.len, h0, h1, t0, t1,
                  (unsigned)g_jpeg_invalid_drop_count);
        }
        drop_current_assembly(true);
        return;
    }

    g_cur_frame.timestamp_ms =
        (uint32_t)(xTaskGetTickCount() * portTICK_PERIOD_MS);
    frame_queue_push(&g_cur_frame);
    g_frames_captured++;
    g_parser_resync_streak = 0;
    g_cur_frame_valid = false;
    g_cur_frame_oversize = false;
    g_cur_frame_tainted = false;
    g_cur_frame_saw_eoi = false;
    g_cur_frame_error_pkts = 0U;
}

static int32_t find_jpeg_soi(const uint8_t *buf, uint32_t len)
{
    if (!buf || len < 2U) {
        return -1;
    }
    for (uint32_t i = 0; i + 1U < len; i++) {
        if (buf[i] == 0xFFU && buf[i + 1U] == 0xD8U) {
            return (int32_t)i;
        }
    }
    return -1;
}

static int32_t find_jpeg_eoi(const uint8_t *buf, uint32_t len)
{
    if (!buf || len < 2U) {
        return -1;
    }

    for (uint32_t i = 0; i + 1U < len; i++) {
        if (buf[i] == 0xFFU && buf[i + 1U] == 0xD9U) {
            return (int32_t)i;
        }
    }
    return -1;
}

static bool reclaim_and_alloc_frame(frame_t *frame, bool *reclaimed_any)
{
    if (reclaimed_any) {
        *reclaimed_any = false;
    }

    if (frame_alloc(frame) == 0) {
        return true;
    }

    if (frame_queue_drop_oldest() && frame_alloc(frame) == 0) {
        if (reclaimed_any) {
            *reclaimed_any = true;
        }
        return true;
    }

    uint32_t queued_before = 0;
    frame_pool_stats(NULL, NULL, &queued_before);
    if (queued_before > 0U) {
        frame_queue_drain();
        if (reclaimed_any) {
            *reclaimed_any = true;
        }
    }

    return frame_alloc(frame) == 0;
}

static void process_iso_data(const uint8_t *data, uint32_t len)
{
    g_payload_pkt_count++;
    g_payload_bytes_total += len;

    if (len < 2) {
        g_hdr_short_count++;
        note_packet_error_for_current_frame();
        return; /* Too short for a UVC payload header */
    }

    uint8_t header_len = data[0];
    uint8_t header_info = data[1];

    if (header_len < 2 || header_len > 12 || header_len > len) {
        g_hdr_invalid_count++;
        note_packet_error_for_current_frame();
        return; /* Invalid header */
    }

    /* Extract FID and EOF bits */
    uint8_t fid = header_info & 0x01;
    uint8_t eof = (header_info >> 1) & 0x01;
    uint8_t err = (header_info >> 6) & 0x01;

    /* Payload data follows the header */
    const uint8_t *payload = data + header_len;
    uint32_t payload_len = len - header_len;
    bool payload_tail_ff = (payload_len > 0U) && (payload[payload_len - 1U] == 0xFFU);

    bool fid_toggled = (g_fid_initialized && fid != g_last_fid);
    if (fid_toggled) {
        g_hdr_fid_toggle_count++;
        if (g_cur_frame_valid && g_cur_frame.len > 0U) {
            if (g_cur_frame_saw_eoi) {
                /* JPEG boundary already detected from payload content. */
                finalize_current_frame(eof != 0U);
            } else if (eof &&
                       find_jpeg_eoi(g_cur_frame.data, g_cur_frame.len) >= 0) {
                g_cur_frame_saw_eoi = true;
                finalize_current_frame(true);
            } else {
                /* Some camera/controller combos flap FID under load.
                 * Treat FID as advisory and keep assembling until a real JPEG
                 * boundary (EOI/SOI) is observed. */
                g_fid_toggle_ignore_count++;
            }
        }
    }
    g_last_fid = fid;
    g_fid_initialized = true;

    /* UVC ERR bit indicates payload/header corruption in this packet.
     * Count it and skip appending this payload to avoid propagating
     * visible corruption into the assembled JPEG. */
    if (err) {
        g_hdr_error_bit_count++;
        note_packet_error_for_current_frame();
        if (eof && g_cur_frame_valid && g_cur_frame.len > 0U) {
            if (g_cur_frame_saw_eoi &&
                find_jpeg_eoi(g_cur_frame.data, g_cur_frame.len) >= 0) {
                finalize_current_frame(true);
            } else {
                g_jpeg_no_eoi_count++;
                drop_current_assembly(true);
            }
        }
        g_pending_soi_tail_ff = false;
        return;
    }

    if (g_wait_for_fid_resync) {
        int32_t soi_off = find_jpeg_soi(payload, payload_len);
        bool split_soi = (soi_off < 0) &&
                         g_pending_soi_tail_ff &&
                         (payload_len > 0U) &&
                         (payload[0] == 0xD8U);
        if (soi_off >= 0 || split_soi) {
            g_resync_soi_count++;
            g_wait_for_fid_resync = false;
            g_pending_soi_tail_ff = false;
        } else {
            g_pending_soi_tail_ff = payload_tail_ff;
            return;
        }
    }

    /* If a new SOI appears while a frame is already assembling, treat it as
     * an in-stream resync boundary and restart from that SOI. */
    if (g_cur_frame_valid && payload_len >= 2U) {
        int32_t embedded_soi = find_jpeg_soi(payload, payload_len);
        if (embedded_soi >= 0) {
            /* Missing EOF is common on noisy links. If we already saw EOI,
             * treat next SOI as an implicit frame boundary and publish. */
            if (g_cur_frame_saw_eoi && !g_cur_frame_tainted && g_cur_frame.len > 0U) {
                finalize_current_frame(false);
            } else {
                g_fid_incomplete_drop_count++;
                drop_current_assembly(false);
            }
            g_resync_soi_count++;
            payload += (uint32_t)embedded_soi;
            payload_len -= (uint32_t)embedded_soi;
        }
    }

    /* Allocate a new frame buffer if needed. Start only at SOI.
     * Handle SOI split across packets: previous payload ended in 0xFF and this
     * payload starts with 0xD8. */
    if (!g_cur_frame_valid) {
        int32_t soi_off = find_jpeg_soi(payload, payload_len);
        bool split_soi = (soi_off < 0) &&
                         g_pending_soi_tail_ff &&
                         (payload_len > 0U) &&
                         (payload[0] == 0xD8U);

        if (soi_off < 0 && !split_soi) {
            g_pending_soi_tail_ff = payload_tail_ff;
            return;
        }

        bool reclaimed = false;
        if (!reclaim_and_alloc_frame(&g_cur_frame, &reclaimed)) {
            g_pending_soi_tail_ff = payload_tail_ff;
            return;
        }

        if (reclaimed) {
            g_frame_reclaim_count++;
            if ((g_frame_reclaim_count % 64U) == 0U) {
                LOG_W("[UVC] Reclaimed %u queued frames to sustain capture\r\n",
                      (unsigned)g_frame_reclaim_count);
            }
        }
        g_cur_frame.len = 0U;
        g_cur_frame_valid = true;
        g_cur_frame_oversize = false;
        g_cur_frame_tainted = false;
        g_cur_frame_saw_eoi = false;
        g_cur_frame_error_pkts = 0U;

        if (split_soi) {
            g_cur_frame.data[0] = 0xFFU;
            g_cur_frame.data[1] = 0xD8U;
            g_cur_frame.len = 2U;
            payload += 1U;
            payload_len -= 1U;
            g_resync_soi_count++;
        } else {
            payload += (uint32_t)soi_off;
            payload_len -= (uint32_t)soi_off;
        }
    }
    /* Once a complete JPEG payload was seen, ignore trailing bytes until EOF.
     * This avoids appending camera-specific trailer noise after EOI. */
    if (g_cur_frame_valid && g_cur_frame_saw_eoi) {
        if (eof) {
            finalize_current_frame(true);
            g_pending_soi_tail_ff = false;
        } else {
            g_pending_soi_tail_ff = payload_tail_ff;
        }
        return;
    }

    /* Append payload data to current frame */
    if (payload_len > 0 && g_cur_frame_valid) {
        uint32_t prev_len = g_cur_frame.len;
        uint32_t space = FRAME_MAX_SIZE - g_cur_frame.len;
        if (payload_len > space) {
            g_cur_frame_oversize = true;
            g_frame_oversize_drop_count++;
            drop_current_assembly(true);
            g_pending_soi_tail_ff = payload_tail_ff;
            return;
        }

        memcpy(g_cur_frame.data + g_cur_frame.len, payload, payload_len);
        g_cur_frame.len += payload_len;

        /* Prefer content-complete finalize over noisy EOF/FID semantics.
         * This prevents parser starvation when headers degrade under load. */
        bool eoi_found = false;
        uint32_t eoi_end_len = 0U;

        if (prev_len > 0U &&
            payload[0] == 0xD9U &&
            g_cur_frame.data[prev_len - 1U] == 0xFFU) {
            eoi_found = true;
            eoi_end_len = prev_len + 1U; /* include D9 */
        } else {
            int32_t eoi_off = find_jpeg_eoi(payload, payload_len);
            if (eoi_off >= 0) {
                eoi_found = true;
                eoi_end_len = prev_len + (uint32_t)eoi_off + 2U;
            }
        }

        if (eoi_found && eoi_end_len > 0U && eoi_end_len <= g_cur_frame.len) {
            uint32_t verified_eoi_end = 0U;
            bool verified_saw_sos = false;

            /* Guard early-EOI finalize with full JPEG structure validation.
             * Raw FF D9 scans can false-trigger before SOS on noisy streams. */
            if (locate_complete_jpeg(g_cur_frame.data, eoi_end_len,
                                     &verified_eoi_end, &verified_saw_sos) &&
                verified_saw_sos &&
                verified_eoi_end > 0U &&
                verified_eoi_end <= eoi_end_len) {
                g_cur_frame_saw_eoi = true;

                /* EOF/FID can be noisy under load. A real EOI marker is the most
                 * reliable boundary for MJPEG frame completion; publish only at
                 * EOF/FID/SOI boundary to avoid truncated startup snapshots. */
                if (verified_eoi_end != g_cur_frame.len) {
                    g_jpeg_trim_count++;
                    g_cur_frame.len = verified_eoi_end;
                }
                if (eof) {
                    finalize_current_frame(true);
                    g_pending_soi_tail_ff = false;
                } else {
                    g_pending_soi_tail_ff = payload_tail_ff;
                }
                return;
            }
        }
    }

    /* EOF marks end of frame */
    if (eof && g_cur_frame_valid && g_cur_frame.len > 0) {
        uint32_t verified_eoi_end = 0U;
        bool verified_saw_sos = false;
        bool complete = locate_complete_jpeg(g_cur_frame.data, g_cur_frame.len,
                                             &verified_eoi_end, &verified_saw_sos);

        if (!complete || !verified_saw_sos) {
            /* EOF without a complete JPEG indicates truncated/garbled frame. */
            if (!verified_saw_sos) {
                g_jpeg_no_sos_count++;
            } else {
                g_jpeg_no_eoi_count++;
            }
            drop_current_assembly(true);
        } else {
            g_cur_frame_saw_eoi = true;
            if (verified_eoi_end > 0U && verified_eoi_end < g_cur_frame.len) {
                g_jpeg_trim_count++;
                g_cur_frame.len = verified_eoi_end;
            }
            finalize_current_frame(true);
        }
    }

    g_pending_soi_tail_ff = payload_tail_ff;
}

/* ------------------------------------------------------------------ */
/* ISO URB completion callback                                         */
/* ------------------------------------------------------------------ */

static void reset_iso_packets(struct usbh_urb *urb, uint8_t pkt_cap)
{
    if (!urb) {
        return;
    }

    pkt_cap = sanitize_iso_pkt_cap(pkt_cap);
    uint32_t pkt_count = urb->num_of_iso_packets;
    if (pkt_count == 0 || pkt_count > pkt_cap) {
        pkt_count = pkt_cap;
    }

    for (uint32_t i = 0; i < pkt_count; i++) {
        urb->iso_packet[i].actual_length = 0;
        urb->iso_packet[i].errorcode = 0;
    }
    urb->num_of_iso_packets = pkt_cap;
}

static void stamp_urb_endpoints(struct usbh_urb *urb,
                                struct usbh_hubport *hport,
                                struct usb_endpoint_descriptor *ep)
{
    if (!urb_ptr_aligned(urb) || !hport || !ep) {
        return;
    }
    urb->hport = hport;
    urb->ep = ep;
}

static bool rebuild_iso_packet_descriptors(struct usbh_urb *urb,
                                           uint8_t *buf,
                                           uint16_t bytes_per_packet,
                                           uint8_t pkt_cap,
                                           uint32_t backing_buffer_size)
{
    if (!urb || !buf || bytes_per_packet == 0U) {
        return false;
    }

    pkt_cap = sanitize_iso_pkt_cap(pkt_cap);
    if (!iso_buffer_layout_is_valid(bytes_per_packet, pkt_cap,
                                    backing_buffer_size, "arm")) {
        return false;
    }

    uint32_t urb_buf_bytes = (uint32_t)bytes_per_packet * (uint32_t)pkt_cap;
    urb->transfer_buffer = buf;
    urb->transfer_buffer_length = urb_buf_bytes;
    urb->num_of_iso_packets = pkt_cap;
    for (uint8_t i = 0; i < pkt_cap; i++) {
        urb->iso_packet[i].transfer_buffer =
            buf + ((uint32_t)i * (uint32_t)bytes_per_packet);
        urb->iso_packet[i].transfer_buffer_length = bytes_per_packet;
        urb->iso_packet[i].actual_length = 0;
        urb->iso_packet[i].errorcode = 0;
    }

    return true;
}

static void process_completed_urb(struct usbh_urb *urb,
                                  uint8_t pkt_cap,
                                  uint8_t slot,
                                  uint16_t bytes_per_packet)
{
    if (!urb) {
        return;
    }

    g_urb_complete_count++;
    pkt_cap = sanitize_iso_pkt_cap(pkt_cap);

    uintptr_t urb_base = (uintptr_t)urb->transfer_buffer;
    uintptr_t urb_end = urb_base + urb->transfer_buffer_length;
    if (!urb->transfer_buffer || urb_end <= urb_base) {
        g_invalid_urb_buf_count++;
        LOG_W("[UVC] Invalid URB buffer range\r\n");
        reset_iso_packets(urb, pkt_cap);
        return;
    }

    uint32_t pkt_count = urb->num_of_iso_packets;
    if (pkt_count == 0 || pkt_count > pkt_cap) {
        g_pkt_count_clamp_count++;
        LOG_W("[UVC] Clamp invalid URB pkt count %u -> %u\r\n",
              (unsigned)pkt_count, (unsigned)pkt_cap);
        pkt_count = pkt_cap;
        urb->num_of_iso_packets = pkt_cap;
    }

    bool saw_payload = false;
    bool saw_pkt_error = false;

    for (uint32_t i = 0; i < pkt_count; i++) {
        struct usbh_iso_frame_packet *pkt = &urb->iso_packet[i];
        uint8_t *expected_ptr =
            ((uint8_t *)urb->transfer_buffer) + (i * (uint32_t)bytes_per_packet);
        uint32_t expected_len = bytes_per_packet;
        if (pkt->transfer_buffer != expected_ptr ||
            pkt->transfer_buffer_length != expected_len) {
            pkt->transfer_buffer = expected_ptr;
            pkt->transfer_buffer_length = expected_len;
            g_pkt_desc_repair_count++;
            if ((g_pkt_desc_repair_count & 0x3FU) == 1U) {
                LOG_W("[UVC] Repaired ISO desc slot=%u pkt=%u ptr=%p len=%u\r\n",
                      (unsigned)slot, (unsigned)i, expected_ptr, (unsigned)expected_len);
            }
        }

        if (pkt->errorcode != 0) {
            saw_pkt_error = true;
            continue;
        }

        if (pkt->actual_length > 0) {
            saw_payload = true;
            uint32_t actual_len = pkt->actual_length;
            if (actual_len > expected_len) {
                g_pkt_len_clamp_count++;
                LOG_W("[UVC] ISO pkt len clamp: %u -> %u\r\n",
                      (unsigned)actual_len, (unsigned)expected_len);
                actual_len = expected_len;
            }
            uintptr_t pkt_base = (uintptr_t)pkt->transfer_buffer;
            uintptr_t pkt_end = pkt_base + actual_len;
            if (pkt_base < urb_base || pkt_end > urb_end || pkt_end < pkt_base) {
                g_pkt_range_drop_count++;
                saw_pkt_error = true;
                LOG_W("[UVC] Drop pkt out of URB range idx=%u ptr=%p len=%u\r\n",
                      (unsigned)i, pkt->transfer_buffer, (unsigned)actual_len);
                continue;
            }
            if (actual_len > 0 && pkt->transfer_buffer) {
                process_iso_data(pkt->transfer_buffer, actual_len);
            }
        }
    }

    if (saw_payload) {
        g_urb_payload_completions++;
    }
    if (saw_pkt_error) {
        note_packet_error_for_current_frame();
    }

    reset_iso_packets(urb, pkt_cap);
}

void uvc_iso_complete_router(void *arg, int nbytes)
{
    struct usbh_urb *urb = (struct usbh_urb *)arg;
    (void)nbytes;

    if (!urb || g_stream_stop || g_cam_state != CAMERA_STREAMING) {
        return;
    }

    if (urb_done_ring_push_isr(urb)) {
        return;
    }

    /* Ring saturated: drop completion and force stall recovery in task context. */
    g_iso_cb_queue_drop_count++;
    g_stall_detected = true;
    reset_iso_packets(urb, g_iso_pkts_per_urb_active);
}

static void free_iso_urb_resources(struct usbh_urb **urbs,
                                   uint8_t **iso_raw_bufs,
                                   uint8_t urb_count)
{
    for (uint8_t u = 0; u < urb_count; u++) {
        if (urbs[u]) {
            vPortFree(urbs[u]);
            urbs[u] = NULL;
        }
        if (iso_raw_bufs[u]) {
            vPortFree(iso_raw_bufs[u]);
            iso_raw_bufs[u] = NULL;
        }
    }
}

static int urb_slot_index(struct usbh_urb *urb, struct usbh_urb **urbs, uint8_t count)
{
    if (!urb_ptr_aligned(urb)) {
        return -1;
    }
    for (uint8_t i = 0; i < count; i++) {
        if (urbs[i] == urb) {
            return (int)i;
        }
    }
    return -1;
}

/* ------------------------------------------------------------------ */
/* Streaming task                                                      */
/* ------------------------------------------------------------------ */

static void streaming_task(void *arg)
{
    (void)arg;

    struct usbh_video *vc = g_video_class;
    if (!vc || !vc->isoin) {
        LOG_E("[UVC] No ISO IN endpoint — cannot stream\r\n");
        set_cam_state(CAMERA_UNAVAILABLE);
        g_stream_task = NULL;
        vTaskDelete(NULL);
        return;
    }
    struct usbh_hubport *stream_hport = vc->hport;
    struct usb_endpoint_descriptor *stream_ep = vc->isoin;

    iso_ep_layout_t iso_layout = iso_ep_layout_from_ep(stream_ep);
    uint16_t bytes_per_packet = iso_layout.bytes_per_packet;
    if (bytes_per_packet == 0U) {
        bytes_per_packet = vc->isoin_mps ? vc->isoin_mps : 512U;
        iso_layout.wmax_raw = stream_ep->wMaxPacketSize;
        iso_layout.mps = bytes_per_packet;
        iso_layout.transactions = 1U;
        iso_layout.bytes_per_packet = bytes_per_packet;
    }

    LOG_I("[UVC] Starting ISO streaming, bytes_per_packet=%u (SRAM free=%u)\r\n",
          (unsigned)bytes_per_packet, (unsigned)kfree_size());

    /* Initialize frame assembly state */
    g_cur_frame_valid = false;
    g_cur_frame_oversize = false;
    g_cur_frame_tainted = false;
    g_cur_frame_error_pkts = 0U;
    g_wait_for_fid_resync = false;
    g_fid_initialized = false;
    g_pending_soi_tail_ff = false;
    g_urb_payload_completions = 0;
    g_stall_detected = false;
    g_iso_cb_queue_drop_count = 0;
    g_iso_pkts_per_urb_active = 0;
    g_iso_urb_count_active = 0;
    g_frame_reclaim_count = 0;
    g_urb_complete_count = 0;
    g_unknown_urb_count = 0;
    g_pkt_count_clamp_count = 0;
    g_pkt_len_clamp_count = 0;
    g_pkt_range_drop_count = 0;
    g_invalid_urb_buf_count = 0;
    g_guard_fault_count = 0;
    g_pkt_desc_repair_count = 0;
    g_hdr_short_count = 0;
    g_hdr_invalid_count = 0;
    g_hdr_error_bit_count = 0;
    g_hdr_eof_count = 0;
    g_hdr_fid_toggle_count = 0;
    g_payload_pkt_count = 0;
    g_payload_bytes_total = 0;
    g_frame_oversize_drop_count = 0;
    g_jpeg_invalid_drop_count = 0;
    g_jpeg_trim_count = 0;
    g_jpeg_no_sos_count = 0;
    g_jpeg_no_eoi_count = 0;
    g_jpeg_nested_soi_count = 0;
    g_jpeg_trailer_garbage_count = 0;
    g_resync_soi_count = 0;
    g_fid_incomplete_drop_count = 0;
    g_fid_toggle_ignore_count = 0;
    g_pkt_error_drop_count = 0;
    g_parser_resync_count = 0;
    g_parser_resync_streak = 0;
    g_parser_escalation_count = 0;
    g_transport_restart_count = 0;
    g_resubmit_busy_count = 0;
    stream_urb_slots_reset();
    urb_done_ring_reset();
    /* Note: g_restart_attempted is NOT reset here - it is only reset in
     * usbh_video_run() (physical re-plug) per spec 10 - Fault handling:
     * "transition to camera unavailable until replugged". */
    g_stream_stop = false;

    /* Initialize frame pool */
    if (frame_pool_init() != 0) {
        LOG_E("[UVC] Frame pool init failed\r\n");
        set_cam_state(CAMERA_UNAVAILABLE);
        g_stream_task = NULL;
        vTaskDelete(NULL);
        return;
    }

    /* Stall detection state (no timer object needed). */
    uint64_t last_frames_seen = 0;
    uint64_t last_urb_payload_seen = 0;
    TickType_t last_progress_tick = xTaskGetTickCount();
    TickType_t last_frame_tick = last_progress_tick;
    TickType_t last_diag_tick = last_progress_tick;

    /* Allocate URB structures with ISO packet arrays.
     * struct usbh_urb has a flexible array member iso_packet[0],
     * so we allocate the full size including the packet descriptors. */
    uint32_t urb_alloc_size = 0;
    uint32_t buf_size_per_urb = 0;
    uint32_t buf_alloc_size_per_urb = 0;
    uint8_t chosen_urb_count = 0;
    uint8_t chosen_pkts_per_urb = 0;
    for (int urb_try = ISO_URB_COUNT_MAX; urb_try >= 1 && chosen_urb_count == 0; urb_try--) {
        for (size_t c = 0; c < sizeof(g_iso_pkt_candidates) / sizeof(g_iso_pkt_candidates[0]); c++) {
            uint8_t pkt_try = g_iso_pkt_candidates[c];
            if (pkt_try < ISO_PKTS_PER_URB_MIN || pkt_try > ISO_PKTS_PER_URB_MAX) {
                continue;
            }

            uint32_t try_urb_alloc_size = sizeof(struct usbh_urb) +
                                          (uint32_t)pkt_try * sizeof(struct usbh_iso_frame_packet);
            uint32_t try_buf_size_per_urb = (uint32_t)bytes_per_packet * (uint32_t)pkt_try;
            uint32_t try_raw_size = try_buf_size_per_urb + (2U * ISO_BUF_GUARD_BYTES);
            uint32_t try_total_bytes = (uint32_t)urb_try *
                                       (try_urb_alloc_size + try_raw_size);
            uint32_t free_before = (uint32_t)kfree_size();
            bool alloc_ok = true;

            if (free_before < (try_total_bytes + ISO_SRAM_SAFETY_MARGIN)) {
                LOG_W("[UVC] Skip ISO profile %d URBs x %u pkts (need=%u, free=%u, margin=%u)\r\n",
                      urb_try, (unsigned)pkt_try, (unsigned)try_total_bytes,
                      (unsigned)free_before, (unsigned)ISO_SRAM_SAFETY_MARGIN);
                continue;
            }

            for (int u = 0; u < urb_try; u++) {
                g_stream_urbs[u] = (struct usbh_urb *)pvPortMalloc(try_urb_alloc_size);
                g_stream_iso_raw_bufs[u] = (uint8_t *)pvPortMalloc(try_raw_size);
                if (!g_stream_urbs[u] || !g_stream_iso_raw_bufs[u]) {
                    alloc_ok = false;
                    break;
                }
                memset(g_stream_urbs[u], 0, try_urb_alloc_size);
                memset(g_stream_iso_raw_bufs[u], ISO_BUF_GUARD_VALUE, ISO_BUF_GUARD_BYTES);
                memset(g_stream_iso_raw_bufs[u] + ISO_BUF_GUARD_BYTES + try_buf_size_per_urb,
                       ISO_BUF_GUARD_VALUE, ISO_BUF_GUARD_BYTES);
                g_stream_iso_bufs[u] = g_stream_iso_raw_bufs[u] + ISO_BUF_GUARD_BYTES;
            }

            if (alloc_ok) {
                chosen_urb_count = (uint8_t)urb_try;
                chosen_pkts_per_urb = pkt_try;
                urb_alloc_size = try_urb_alloc_size;
                buf_size_per_urb = try_buf_size_per_urb;
                buf_alloc_size_per_urb = try_buf_size_per_urb;
                break;
            }

            LOG_W("[UVC] ISO alloc failed for %d URBs x %u pkts (buf=%u, SRAM free=%u) - retrying\r\n",
                  urb_try, (unsigned)pkt_try, (unsigned)try_buf_size_per_urb,
                  (unsigned)kfree_size());
            free_iso_urb_resources(g_stream_urbs, g_stream_iso_raw_bufs, (uint8_t)urb_try);
            for (int u = 0; u < urb_try; u++) {
                g_stream_iso_bufs[u] = NULL;
            }
        }
    }

    if (chosen_urb_count == 0) {
        LOG_E("[UVC] Unable to allocate ISO resources (bytes_per_packet=%u, SRAM free=%u)\r\n",
              (unsigned)bytes_per_packet, (unsigned)kfree_size());
        set_cam_state(CAMERA_UNAVAILABLE);
        g_stream_task = NULL;
        vTaskDelete(NULL);
        return;
    }

    LOG_I("[UVC] ISO profile: %u URBs x %u pkts/URB (buf=%u each, total=%u)\r\n",
          (unsigned)chosen_urb_count, (unsigned)chosen_pkts_per_urb,
          (unsigned)buf_size_per_urb,
          (unsigned)(buf_size_per_urb * chosen_urb_count));
    g_iso_pkts_per_urb_active = sanitize_iso_pkt_cap(chosen_pkts_per_urb);
    g_iso_urb_count_active = (chosen_urb_count > ISO_URB_COUNT_MAX)
                                 ? ISO_URB_COUNT_MAX
                                 : chosen_urb_count;

    uint32_t active_urb_buf_bytes = (uint32_t)bytes_per_packet *
                                    (uint32_t)g_iso_pkts_per_urb_active;
    log_iso_arm_profile("start", g_cam_mode.altsetting, &iso_layout,
                        g_iso_pkts_per_urb_active, active_urb_buf_bytes,
                        buf_alloc_size_per_urb);
    if (!iso_buffer_layout_is_valid(bytes_per_packet, g_iso_pkts_per_urb_active,
                                    buf_alloc_size_per_urb, "start")) {
        set_cam_state(CAMERA_UNAVAILABLE);
        g_stream_task = NULL;
        vTaskDelete(NULL);
        return;
    }

    /* Configure and submit URBs */
    for (int u = 0; u < g_iso_urb_count_active; u++) {
        struct usbh_urb *urb = g_stream_urbs[u];

        urb->hport = stream_hport;
        urb->ep = stream_ep;
        urb->transfer_buffer = g_stream_iso_bufs[u];
        urb->transfer_buffer_length = buf_size_per_urb;
        urb->num_of_iso_packets = g_iso_pkts_per_urb_active;
        urb->timeout = 0; /* async mode */
        urb->complete = uvc_iso_complete_router;
        urb->arg = urb;

        if (!rebuild_iso_packet_descriptors(urb, g_stream_iso_bufs[u],
                                            bytes_per_packet,
                                            g_iso_pkts_per_urb_active,
                                            buf_alloc_size_per_urb)) {
            LOG_E("[UVC] Initial ISO descriptor build failed (slot=%d)\r\n", u);
            set_cam_state(CAMERA_UNAVAILABLE);
            break;
        }

        int ret = usbh_submit_urb(urb);
        if (ret < 0) {
            LOG_E("[UVC] Initial ISO submit %d failed: %d\r\n", u, ret);
        }
    }

    if (g_cam_state == CAMERA_UNAVAILABLE) {
        g_stream_stop = true;
    }

    set_cam_state(CAMERA_STREAMING);
    capture_ctrl_mark_running_if_owned();
    LOG_I("[UVC] Camera streaming - MJPEG %ux%u\r\n",
          g_cam_mode.width, g_cam_mode.height);

    /* Main loop: process completed URBs in task context and watch for stalls. */
    uint8_t work_streak = 0;
    while (!g_stream_stop && g_cam_state == CAMERA_STREAMING) {
        if (g_iso_urb_count_active == 0 || g_iso_urb_count_active > ISO_URB_COUNT_MAX) {
            LOG_E("[UVC] Invalid active URB count=%u\r\n",
                  (unsigned)g_iso_urb_count_active);
            set_cam_state(CAMERA_UNAVAILABLE);
            g_stream_stop = true;
            break;
        }

        bool did_work = false;

        /* Retry deferred resubmits that were temporarily BUSY. */
        for (uint8_t u = 0; u < g_iso_urb_count_active; u++) {
            struct usbh_urb *pending = g_pending_resubmit[u];
            if (!pending) {
                continue;
            }
            pending->errorcode = 0;
            if (!rebuild_iso_packet_descriptors(pending, g_stream_iso_bufs[u],
                                              bytes_per_packet,
                                              g_iso_pkts_per_urb_active,
                                              buf_alloc_size_per_urb)) {
                LOG_E("[UVC] Deferred ISO descriptor build failed (slot=%u)\r\n",
                      (unsigned)u);
                set_cam_state(CAMERA_UNAVAILABLE);
                g_stream_stop = true;
                break;
            }
            reset_iso_packets(pending, g_iso_pkts_per_urb_active);
            stamp_urb_endpoints(pending, stream_hport, stream_ep);
            int r = usbh_submit_urb(pending);
            if (r == -USB_ERR_BUSY) {
                g_resubmit_busy_count++;
                continue;
            }
            if (r < 0) {
                LOG_E("[UVC] Deferred ISO resubmit failed: %d (slot=%u)\r\n",
                      r, (unsigned)u);
                set_cam_state(CAMERA_UNAVAILABLE);
                g_stream_stop = true;
                break;
            }
            g_pending_resubmit[u] = NULL;
            did_work = true;
        }
        if (g_cam_state == CAMERA_UNAVAILABLE || g_stream_stop) {
            break;
        }

        struct usbh_urb *done_urb = NULL;
        while (urb_done_ring_pop(&done_urb)) {
            did_work = true;
            int slot = urb_slot_index(done_urb, g_stream_urbs, g_iso_urb_count_active);
            if (slot < 0) {
                g_unknown_urb_count++;
                LOG_W("[UVC] Drop unknown URB pointer %p\r\n", done_urb);
                g_stall_detected = true;
                continue;
            }

            bool tail_guard = false;
            uint32_t guard_off = 0;
            if (!iso_guard_is_intact((uint8_t)slot, buf_alloc_size_per_urb,
                                     &tail_guard, &guard_off)) {
                g_guard_fault_count++;
                LOG_E("[UVC] ISO guard corruption slot=%d side=%s off=%u urb=%p raw=%p data=%p alloc=%u active=%u\r\n",
                      slot, tail_guard ? "tail" : "head", (unsigned)guard_off,
                      done_urb, g_stream_iso_raw_bufs[slot], g_stream_iso_bufs[slot],
                      (unsigned)buf_alloc_size_per_urb, (unsigned)buf_size_per_urb);
                set_cam_state(CAMERA_UNAVAILABLE);
                g_stream_stop = true;
                break;
            }

            process_completed_urb(done_urb, g_iso_pkts_per_urb_active,
                                  (uint8_t)slot, bytes_per_packet);

            if (!g_stream_stop && g_cam_state == CAMERA_STREAMING) {
                if (!rebuild_iso_packet_descriptors(done_urb, g_stream_iso_bufs[slot],
                                                  bytes_per_packet,
                                                  g_iso_pkts_per_urb_active,
                                                  buf_alloc_size_per_urb)) {
                    LOG_E("[UVC] ISO descriptor rebuild failed (slot=%d)\r\n", slot);
                    set_cam_state(CAMERA_UNAVAILABLE);
                    g_stream_stop = true;
                    break;
                }
                stamp_urb_endpoints(done_urb, stream_hport, stream_ep);
                done_urb->errorcode = 0;
                int ret = usbh_submit_urb(done_urb);
                if (ret == -USB_ERR_BUSY) {
                    g_pending_resubmit[slot] = done_urb;
                    g_resubmit_busy_count++;
                    continue;
                }
                if (ret < 0) {
                    LOG_E("[UVC] ISO resubmit failed: %d\r\n", ret);
                    set_cam_state(CAMERA_UNAVAILABLE);
                    g_stream_stop = true;
                    break;
                }
            }
        }
        if (g_cam_state == CAMERA_UNAVAILABLE || g_stream_stop) {
            break;
        }

        uint64_t frames_now = g_frames_captured;
        uint64_t urb_now = g_urb_payload_completions;
        TickType_t now = xTaskGetTickCount();

        bool stream_client = stream_client_connected();
        bool frame_progressed = (frames_now != last_frames_seen);
        bool urb_progressed = (urb_now != last_urb_payload_seen);
        bool progressed = frame_progressed || urb_progressed;

        if (frame_progressed) {
            last_frames_seen = frames_now;
            last_frame_tick = now;
            g_parser_resync_streak = 0;
        }
        if (urb_progressed) {
            last_urb_payload_seen = urb_now;
        }

        if (progressed) {
            last_progress_tick = now;
            g_stall_detected = false;
        } else if (!g_stall_detected &&
                   (now - last_progress_tick) >= pdMS_TO_TICKS(STALL_TIMEOUT_MS)) {
            LOG_W("[UVC] Stall detected - no URB progress for %d ms (%s)\r\n",
                  STALL_TIMEOUT_MS, stream_client ? "client active" : "idle");
            g_stall_detected = true;
        }

        uint32_t parser_timeout_ms = stream_client
                                         ? PARSER_RESYNC_TIMEOUT_MS
                                         : PARSER_RESYNC_TIMEOUT_IDLE_MS;
        if (urb_progressed && !frame_progressed &&
            (now - last_frame_tick) >= pdMS_TO_TICKS(parser_timeout_ms)) {
            g_parser_resync_count++;
            g_parser_resync_streak++;
            LOG_W("[UVC] No complete frame for %u ms with active URBs (%s) - parser resync #%u\r\n",
                  (unsigned)parser_timeout_ms,
                  stream_client ? "client active" : "idle",
                  (unsigned)g_parser_resync_count);
            drop_current_assembly(false);
            frame_queue_drain();
            g_fid_initialized = false;
            last_frame_tick = now;

            uint32_t escalate_streak = stream_client ? 3U : 5U;
            if (g_parser_resync_streak >= escalate_streak) {
                g_parser_escalation_count++;
                LOG_W("[UVC] Parser resync escalated (%u consecutive) - forcing transport restart\r\n",
                      (unsigned)g_parser_resync_streak);
                g_parser_resync_streak = 0;
                g_stall_detected = true;
            }
        }

        if (g_stall_detected) {
            if (capture_ctrl_is_stopping()) {
                LOG_I("[UVC] Stop requested while stalled - skip restart\r\n");
                break;
            }
            (void)capture_ctrl_enter_restarting();

            uint32_t pool_total = 0, pool_free = 0, pool_queued = 0;
            frame_pool_stats(&pool_total, &pool_free, &pool_queued);
            uint32_t ring_depth = (g_urb_done_head - g_urb_done_tail) & URB_DONE_RING_MASK;
            uint32_t pending_count = 0;
            for (uint8_t i = 0; i < g_iso_urb_count_active; i++) {
                if (g_pending_resubmit[i]) {
                    pending_count++;
                }
            }
            LOG_W("[UVC] Stall context: pool q=%u free=%u/%u\r\n",
                  (unsigned)pool_queued, (unsigned)pool_free, (unsigned)pool_total);
            LOG_W("[UVC] Stall context: ring=%u pending=%u busy_retry=%u\r\n",
                  (unsigned)ring_depth, (unsigned)pending_count,
                  (unsigned)g_resubmit_busy_count);

            if (g_transport_restart_attempts >= MAX_TRANSPORT_RESTARTS) {
                LOG_E("[UVC] Transport stalls exceeded %u restarts - capture stopped (camera remains attached)\r\n",
                      (unsigned)MAX_TRANSPORT_RESTARTS);
                set_cam_state(CAMERA_ATTACHED);
                break;
            }
            g_transport_restart_attempts++;
            g_transport_restart_count++;

            LOG_W("[UVC] Attempting stream restart after stall (%u/%u)\r\n",
                  (unsigned)g_transport_restart_attempts,
                  (unsigned)MAX_TRANSPORT_RESTARTS);
            g_stream_stop = true;

            for (int u = 0; u < g_iso_urb_count_active; u++) {
                if (!urb_ptr_aligned(g_stream_urbs[u])) {
                    LOG_W("[UVC] Skip invalid URB slot %d ptr=%p during restart kill\r\n",
                          u, g_stream_urbs[u]);
                    continue;
                }

                stamp_urb_endpoints(g_stream_urbs[u], stream_hport, stream_ep);
                g_stream_urbs[u]->complete = NULL;
                g_stream_urbs[u]->arg = NULL;

                if (g_stream_urbs[u]->hcpriv) {
                    int kret = usbh_kill_urb(g_stream_urbs[u]);
                    if (kret < 0) {
                        LOG_W("[UVC] usbh_kill_urb(%d) failed: %d\r\n", u, kret);
                    }
                }
            }

            urb_done_ring_reset();
            for (int u = 0; u < g_iso_urb_count_active; u++) {
                g_pending_resubmit[u] = NULL;
            }

            if (!stream_ep) {
                LOG_E("[UVC] Restart failed: ISO IN endpoint missing\r\n");
                set_cam_state(CAMERA_UNAVAILABLE);
                break;
            }

            if (vc) {
                (void)usbh_video_close(vc);
                if (g_preferred_interval_100ns > 0U) {
                    vc->probe.hintUnion.bmHint = 0x01;
                    vc->probe.hintUnion1.bmHint = 0x01;
                    vc->probe.dwFrameInterval = g_preferred_interval_100ns;
                } else {
                    vc->probe.hintUnion.bmHint = 0x00;
                    vc->probe.hintUnion1.bmHint = 0x00;
                    vc->probe.dwFrameInterval = 0;
                }
                uint8_t reopen_alt = g_cam_mode.altsetting;
                if (g_transport_restart_attempts >= 1U) {
                    uint16_t floor_mps = restart_mps_floor_for_mode(g_cam_mode.width, g_cam_mode.height);
                    uint8_t lower_alt = select_lower_altsetting(vc, reopen_alt, floor_mps);
                    if (lower_alt != reopen_alt) {
                        uint16_t old_mps = altsetting_mps(vc, reopen_alt);
                        uint16_t new_mps_cap = altsetting_mps(vc, lower_alt);
                        LOG_W("[UVC] Downshifting altsetting %u(%u) -> %u(%u) for restart stability\r\n",
                              (unsigned)reopen_alt, (unsigned)old_mps,
                              (unsigned)lower_alt, (unsigned)new_mps_cap);
                        reopen_alt = lower_alt;
                    }
                }

                int reopen = usbh_video_open(vc, g_cam_mode.format,
                                             g_cam_mode.width, g_cam_mode.height,
                                             reopen_alt);
                if (reopen < 0 || !vc->isoin) {
                    LOG_E("[UVC] Restart reopen failed: %d\r\n", reopen);
                    set_cam_state(CAMERA_UNAVAILABLE);
                    break;
                }

                stream_hport = vc->hport;
                stream_ep = vc->isoin;
                iso_layout = iso_ep_layout_from_ep(stream_ep);
                uint16_t new_bytes_per_packet = iso_layout.bytes_per_packet;
                if (new_bytes_per_packet == 0U) {
                    new_bytes_per_packet = vc->isoin_mps ? vc->isoin_mps : bytes_per_packet;
                    iso_layout.wmax_raw = stream_ep->wMaxPacketSize;
                    iso_layout.mps = new_bytes_per_packet;
                    iso_layout.transactions = 1U;
                    iso_layout.bytes_per_packet = new_bytes_per_packet;
                }
                uint32_t new_buf_size = (uint32_t)new_bytes_per_packet *
                                        (uint32_t)g_iso_pkts_per_urb_active;
                if (new_buf_size > buf_alloc_size_per_urb) {
                    LOG_E("[UVC] Restart stride expanded (%u->%u), buffer too small\r\n",
                          (unsigned)buf_alloc_size_per_urb, (unsigned)new_buf_size);
                    set_cam_state(CAMERA_UNAVAILABLE);
                    break;
                }
                bytes_per_packet = new_bytes_per_packet;
                buf_size_per_urb = new_buf_size;
                g_cam_mode.isoin_mps = bytes_per_packet;
                g_cam_mode.altsetting = reopen_alt;
                uint32_t ni = vc->probe.dwFrameInterval;
                g_cam_mode.fps = (uint8_t)((ni > 0U) ? (10000000U / ni) : 0U);
            }

            if (g_cur_frame_valid) {
                frame_free(&g_cur_frame);
            }
            g_cur_frame_valid = false;
            g_cur_frame_oversize = false;
            g_cur_frame_tainted = false;
            frame_queue_drain();
            g_wait_for_fid_resync = false;
            g_fid_initialized = false;
            g_pending_soi_tail_ff = false;
            g_stall_detected = false;
            g_parser_resync_streak = 0;
            last_frames_seen = g_frames_captured;
            last_urb_payload_seen = g_urb_payload_completions;
            last_progress_tick = xTaskGetTickCount();
            last_frame_tick = last_progress_tick;

            g_stream_stop = false;
            g_iso_pkts_per_urb_active = sanitize_iso_pkt_cap(g_iso_pkts_per_urb_active);
            uint32_t restart_urb_buf_bytes = (uint32_t)bytes_per_packet *
                                             (uint32_t)g_iso_pkts_per_urb_active;
            log_iso_arm_profile("restart", g_cam_mode.altsetting, &iso_layout,
                                g_iso_pkts_per_urb_active, restart_urb_buf_bytes,
                                buf_alloc_size_per_urb);
            if (!iso_buffer_layout_is_valid(bytes_per_packet, g_iso_pkts_per_urb_active,
                                            buf_alloc_size_per_urb, "restart")) {
                set_cam_state(CAMERA_UNAVAILABLE);
                break;
            }

            int ret = 0;
            for (int u = 0; u < g_iso_urb_count_active; u++) {
                struct usbh_urb *urb = g_stream_urbs[u];
                memset(urb, 0, urb_alloc_size);
                urb->hport = stream_hport;
                urb->ep = stream_ep;
                urb->transfer_buffer = g_stream_iso_bufs[u];
                urb->transfer_buffer_length = buf_size_per_urb;
                urb->num_of_iso_packets = g_iso_pkts_per_urb_active;
                urb->timeout = 0;
                urb->complete = uvc_iso_complete_router;
                urb->arg = urb;

                if (!rebuild_iso_packet_descriptors(urb, g_stream_iso_bufs[u],
                                                    bytes_per_packet,
                                                    g_iso_pkts_per_urb_active,
                                                    buf_alloc_size_per_urb)) {
                    LOG_E("[UVC] Restart ISO descriptor build failed (slot=%d)\r\n", u);
                    set_cam_state(CAMERA_UNAVAILABLE);
                    g_stream_stop = true;
                    break;
                }

                ret = usbh_submit_urb(urb);
                if (ret < 0) {
                    LOG_E("[UVC] Restart submit %d failed: %d\r\n", u, ret);
                    set_cam_state(CAMERA_UNAVAILABLE);
                    g_stream_stop = true;
                    break;
                }
            }

            if (g_cam_state == CAMERA_UNAVAILABLE) {
                break;
            }
            capture_ctrl_mark_running_if_owned();
            LOG_I("[UVC] Stream restarted successfully\r\n");
        }

        if ((now - last_diag_tick) >= pdMS_TO_TICKS(5000)) {
            uint32_t ring_depth = (g_urb_done_head - g_urb_done_tail) & URB_DONE_RING_MASK;
            LOG_I("[UVCDBG] urb_done=%u ring=%u cb_drop=%u unknown=%u guard=%u pkt_cnt_clamp=%u pkt_len_clamp=%u pkt_range_drop=%u desc_repair=%u invalid_urb=%u busy_retry=%u pkt_err=%u sync_reset=%u sync_streak=%u sync_escalate=%u restarts=%u hdr_short=%u hdr_inv=%u hdr_err=%u fid_tgl=%u fid_drop=%u fid_keep=%u eof=%u soi_resync=%u tail_ff=%u pkt=%u bytes=%llu oversize_drop=%u jpeg_bad=%u jpeg_trim=%u nosos=%u noeoi=%u nest_soi=%u trail=%u tainted=%u\r\n",
                  (unsigned)g_urb_complete_count, (unsigned)ring_depth,
                  (unsigned)g_iso_cb_queue_drop_count, (unsigned)g_unknown_urb_count,
                  (unsigned)g_guard_fault_count, (unsigned)g_pkt_count_clamp_count,
                  (unsigned)g_pkt_len_clamp_count, (unsigned)g_pkt_range_drop_count,
                  (unsigned)g_pkt_desc_repair_count,
                  (unsigned)g_invalid_urb_buf_count, (unsigned)g_resubmit_busy_count,
                  (unsigned)g_pkt_error_drop_count, (unsigned)g_parser_resync_count,
                  (unsigned)g_parser_resync_streak, (unsigned)g_parser_escalation_count,
                  (unsigned)g_transport_restart_count,
                  (unsigned)g_hdr_short_count,
                  (unsigned)g_hdr_invalid_count, (unsigned)g_hdr_error_bit_count,
                  (unsigned)g_hdr_fid_toggle_count, (unsigned)g_fid_incomplete_drop_count,
                  (unsigned)g_fid_toggle_ignore_count,
                  (unsigned)g_hdr_eof_count, (unsigned)g_resync_soi_count,
                  (unsigned)(g_pending_soi_tail_ff ? 1U : 0U),
                  (unsigned)g_payload_pkt_count,
                  (unsigned long long)g_payload_bytes_total,
                  (unsigned)g_frame_oversize_drop_count,
                  (unsigned)g_jpeg_invalid_drop_count,
                  (unsigned)g_jpeg_trim_count,
                  (unsigned)g_jpeg_no_sos_count,
                  (unsigned)g_jpeg_no_eoi_count,
                  (unsigned)g_jpeg_nested_soi_count,
                  (unsigned)g_jpeg_trailer_garbage_count,
                  (unsigned)(g_cur_frame_tainted ? 1U : 0U));
            last_diag_tick = now;
        }

        if (did_work) {
            if (++work_streak >= 4U) {
                /* Prevent high-priority capture task from starving network/HTTP tasks. */
                vTaskDelay(pdMS_TO_TICKS(1));
                work_streak = 0;
            }
        } else {
            work_streak = 0;
            vTaskDelay(pdMS_TO_TICKS(2));
        }
    }

    /* Cleanup: kill URBs, free memory */
    g_stream_stop = true;

    for (int u = 0; u < g_iso_urb_count_active; u++) {
        if (!urb_ptr_aligned(g_stream_urbs[u])) {
            continue;
        }
        stamp_urb_endpoints(g_stream_urbs[u], stream_hport, stream_ep);
        g_stream_urbs[u]->complete = NULL;
        g_stream_urbs[u]->arg = NULL;
        if (g_stream_urbs[u]->hcpriv) {
            (void)usbh_kill_urb(g_stream_urbs[u]);
        }
    }

    /* Free any partial frame */
    if (g_cur_frame_valid) {
        frame_free(&g_cur_frame);
        g_cur_frame_valid = false;
        g_cur_frame_oversize = false;
        g_cur_frame_tainted = false;
    }
    g_wait_for_fid_resync = false;
    g_pending_soi_tail_ff = false;

    /* Drain queued frames to return pool blocks */
    frame_queue_drain();

    /* Free URBs and buffers */
    free_iso_urb_resources(g_stream_urbs, g_stream_iso_raw_bufs, g_iso_urb_count_active);
    stream_urb_slots_reset();
    g_iso_pkts_per_urb_active = 0;
    g_iso_urb_count_active = 0;
    urb_done_ring_reset();

    if (g_cam_state == CAMERA_STREAMING) {
        set_cam_state(CAMERA_ATTACHED);
    }
    capture_ctrl_set(CAPTURE_CTRL_STOPPED, 0U);

    LOG_I("[UVC] Streaming task stopped (frames captured: %" PRIu64 ")\r\n",
          (uint64_t)g_frames_captured);
    g_stream_task = NULL;
    vTaskDelete(NULL);
}

/* ------------------------------------------------------------------ */
/* Start/stop streaming                                                */
/* ------------------------------------------------------------------ */

static int start_streaming(void)
{
    if (g_stream_task) {
        return 0; /* Already running */
    }

    /* Start from clean parser/queue state so stale partial assembly cannot
     * leak into a newly requested /stream or /snapshot session. */
    if (g_cur_frame_valid) {
        frame_free(&g_cur_frame);
    }
    g_cur_frame_valid = false;
    g_cur_frame_oversize = false;
    g_cur_frame_tainted = false;
    g_cur_frame_saw_eoi = false;
    g_cur_frame_error_pkts = 0U;
    g_wait_for_fid_resync = false;
    g_pending_soi_tail_ff = false;
    g_fid_initialized = false;
    frame_queue_drain();

    g_stream_stop = false;
    /* Allow fresh restart budget for each on-demand capture session. */
    g_transport_restart_attempts = 0;
    if (xTaskCreate(streaming_task, "uvc_iso", STREAM_TASK_STACK, NULL,
                    STREAM_TASK_PRIO, &g_stream_task) != pdPASS) {
        LOG_E("[UVC] Failed to create streaming task (stack=%u, free=%u)\r\n",
              (unsigned)STREAM_TASK_STACK, (unsigned)kfree_size());
        g_stream_stop = true;
        g_stream_task = NULL;
        return -1;
    }

    return 0;
}

static void stop_streaming(void)
{
    if (!g_stream_task) {
        return;
    }

    g_stream_stop = true;

    /* Wait for task to exit (up to 2 seconds) */
    for (int i = 0; i < 40 && g_stream_task; i++) {
        vTaskDelay(pdMS_TO_TICKS(50));
    }
}

/* ------------------------------------------------------------------ */
/* CherryUSB callbacks (override weak symbols)                         */
/* ------------------------------------------------------------------ */

void usbh_video_run(struct usbh_video *video_class)
{
    uint16_t vid = video_class->hport->device_desc.idVendor;
    uint16_t pid = video_class->hport->device_desc.idProduct;

    /* Reset stall restart allowance on physical re-plug per spec 10
     * Fault handling: "until replugged". */
    g_transport_restart_attempts = 0;
    capture_ctrl_set(CAPTURE_CTRL_STOPPED, 0U);
    g_cli_session_id = 0U;

    LOG_I("[UVC] Camera attached  VID=0x%04X  PID=0x%04X  ctrl_intf=%u  data_intf=%u\r\n",
          vid, pid, video_class->ctrl_intf, video_class->data_intf);

    /* Optional descriptor dump; disabled by default for runtime stability. */
#if UVC_VERBOSE_ENUM_LOG
    usbh_video_list_info(video_class);
#endif

    /* Select best MJPEG resolution */
    uint8_t format_idx, frame_idx;
    uint16_t w, h;

    if (!select_best_resolution(video_class, &format_idx, &frame_idx, &w, &h)) {
        LOG_E("[UVC] No MJPEG format found — camera unusable\r\n");
        set_cam_state(CAMERA_UNAVAILABLE);
        return;
    }

    /* Select highest-bandwidth alt-setting */
    uint8_t alt = select_altsetting(video_class);
    uint16_t alt_mps = altsetting_mps(video_class, alt);

    LOG_I("[UVC] Selected MJPEG %ux%u  altsetting=%u (MPS=%u, cap=%u)\r\n",
          w, h, alt, alt_mps, (unsigned)UVC_ISO_MPS_CAP);

    /* Request a conservative frame interval to reduce parser starvation and
     * restart churn under concurrent Wi-Fi forwarding load. */
    g_preferred_interval_100ns = UVC_TARGET_INTERVAL_100NS;
    video_class->probe.hintUnion.bmHint = 0x01;
    video_class->probe.hintUnion1.bmHint = 0x01;
    video_class->probe.dwFrameInterval = g_preferred_interval_100ns;
    LOG_I("[UVC] Requesting frame interval=%u (100ns) (~%u fps target)\r\n",
          (unsigned)g_preferred_interval_100ns, (unsigned)UVC_TARGET_FPS);

    /* Negotiate with camera */
    int ret = usbh_video_open(video_class, USBH_VIDEO_FORMAT_MJPEG, w, h, alt);
    if (ret < 0) {
        /* Some devices reject strict interval hints. Retry without forcing FPS. */
        LOG_W("[UVC] usbh_video_open failed with forced interval (%u): %d, retrying auto interval\r\n",
              (unsigned)g_preferred_interval_100ns, ret);
        g_preferred_interval_100ns = 0U;
        video_class->probe.hintUnion.bmHint = 0x00;
        video_class->probe.hintUnion1.bmHint = 0x00;
        video_class->probe.dwFrameInterval = 0;
        ret = usbh_video_open(video_class, USBH_VIDEO_FORMAT_MJPEG, w, h, alt);
    }
    if (ret < 0) {
        LOG_E("[UVC] usbh_video_open failed: %d\r\n", ret);
        set_cam_state(CAMERA_UNAVAILABLE);
        return;
    }

    /* Log negotiated frame interval (camera may have adjusted our preference) */
    uint32_t negotiated_interval = video_class->probe.dwFrameInterval;
    uint32_t negotiated_fps = (negotiated_interval > 0)
                              ? (10000000 / negotiated_interval) : 0;
    LOG_I("[UVC] Negotiated interval=%u (100ns) -> ~%u fps\r\n",
          (unsigned)negotiated_interval, (unsigned)negotiated_fps);

    /* Record negotiated mode */
    iso_ep_layout_t negotiated_iso = iso_ep_layout_from_ep(video_class->isoin);
    g_cam_mode.vid        = vid;
    g_cam_mode.pid        = pid;
    g_cam_mode.width      = w;
    g_cam_mode.height     = h;
    g_cam_mode.fps        = (uint8_t)(negotiated_fps > 255 ? 255 : negotiated_fps);
    g_cam_mode.format     = USBH_VIDEO_FORMAT_MJPEG;
    g_cam_mode.altsetting = alt;
    g_cam_mode.isoin_mps  = negotiated_iso.bytes_per_packet ?
                             negotiated_iso.bytes_per_packet : video_class->isoin_mps;
    g_video_class         = video_class;
    set_cam_state(CAMERA_ATTACHED);

    LOG_I("[UVC] Camera ready - MJPEG %ux%u @ %ufps  MPS=%u  EP=0x%02X\r\n",
          w, h, (unsigned)g_cam_mode.fps, g_cam_mode.isoin_mps,
          video_class->isoin ? video_class->isoin->bEndpointAddress : 0);

    /* Keep camera in ATTACHED until /stream or /snapshot requests capture. */
    LOG_I("[UVC] Camera attached and configured; capture starts on demand\r\n");
}

void usbh_video_stop(struct usbh_video *video_class)
{
    LOG_I("[UVC] Camera detached  VID=0x%04X  PID=0x%04X\r\n",
          g_cam_mode.vid, g_cam_mode.pid);

    /* Stop streaming task first */
    stop_streaming();

    set_cam_state(CAMERA_DETACHED);
    capture_ctrl_set(CAPTURE_CTRL_STOPPED, 0U);
    g_cli_session_id = 0U;
    g_video_class = NULL;
}

/* ------------------------------------------------------------------ */
/* Public API                                                          */
/* ------------------------------------------------------------------ */

void uvc_capture_init(void)
{
    struct qcc74x_device_s *usb_dev;

    usb_dev = qcc74x_device_get_by_name(QCC74x_NAME_USB_V2);
    if (!usb_dev) {
        LOG_E("[UVC] USB device not found in device table\r\n");
        return;
    }

    LOG_I("[UVC] Initialising USB host (reg_base=0x%08lx)\r\n",
          (unsigned long)usb_dev->reg_base);
    usbh_initialize(0, usb_dev->reg_base);
    LOG_I("[UVC] USB host init done — waiting for camera\r\n");
}

camera_state_t uvc_get_camera_state(void)
{
    return g_cam_state;
}

const uvc_mode_t *uvc_get_mode(void)
{
    return &g_cam_mode;
}

uint64_t uvc_get_frames_captured(void)
{
    return g_frames_captured;
}

uint32_t uvc_alloc_session_id(void)
{
    uint32_t next;
    taskENTER_CRITICAL();
    g_capture_session_seq++;
    if (g_capture_session_seq == 0U) {
        g_capture_session_seq = 1U;
    }
    next = g_capture_session_seq;
    taskEXIT_CRITICAL();
    return next;
}

capture_ctrl_state_t uvc_get_capture_ctrl_state(void)
{
    return capture_ctrl_get_state();
}

bool uvc_session_is_restarting(uint32_t session_id)
{
    taskENTER_CRITICAL();
    bool restarting = (session_id != 0U) &&
                      (session_id == g_active_session_id) &&
                      (g_capture_ctrl_state == CAPTURE_CTRL_RESTARTING);
    taskEXIT_CRITICAL();
    return restarting;
}

int uvc_start_capture_session(uint32_t session_id)
{
    if (session_id == 0U || !g_video_class) {
        return -1;
    }

    taskENTER_CRITICAL();
    capture_ctrl_state_t ctrl = g_capture_ctrl_state;
    uint32_t active = g_active_session_id;
    if ((ctrl == CAPTURE_CTRL_STARTING || ctrl == CAPTURE_CTRL_RUNNING ||
         ctrl == CAPTURE_CTRL_RESTARTING) && active == session_id) {
        taskEXIT_CRITICAL();
        return 0;
    }
    if (ctrl != CAPTURE_CTRL_STOPPED && active != session_id) {
        taskEXIT_CRITICAL();
        LOG_W("[UVC] Start denied for session=%lu active=%lu state=%u\r\n",
              (unsigned long)session_id,
              (unsigned long)active,
              (unsigned)ctrl);
        return -1;
    }
    g_capture_ctrl_state = CAPTURE_CTRL_STARTING;
    g_active_session_id = session_id;
    taskEXIT_CRITICAL();

    if (g_cam_state == CAMERA_STREAMING) {
        capture_ctrl_set(CAPTURE_CTRL_RUNNING, session_id);
        return 0;
    }
    if (g_cam_state != CAMERA_ATTACHED) {
        capture_ctrl_set(CAPTURE_CTRL_STOPPED, 0U);
        return -1;
    }

    if (!g_video_class->isoin || g_video_class->isoin_mps == 0U) {
        if (g_preferred_interval_100ns > 0U) {
            g_video_class->probe.hintUnion.bmHint = 0x01;
            g_video_class->probe.hintUnion1.bmHint = 0x01;
            g_video_class->probe.dwFrameInterval = g_preferred_interval_100ns;
        } else {
            g_video_class->probe.hintUnion.bmHint = 0x00;
            g_video_class->probe.hintUnion1.bmHint = 0x00;
            g_video_class->probe.dwFrameInterval = 0;
        }

        int ret = usbh_video_open(g_video_class, g_cam_mode.format,
                                  g_cam_mode.width, g_cam_mode.height,
                                  g_cam_mode.altsetting);
        if (ret < 0) {
            LOG_E("[UVC] usbh_video_open failed in start_capture: %d\r\n", ret);
            capture_ctrl_set(CAPTURE_CTRL_STOPPED, 0U);
            return -1;
        }
    }

    LOG_I("[UVC] Capture start requested (session=%lu)\r\n",
          (unsigned long)session_id);
    if (start_streaming() != 0) {
        (void)usbh_video_close(g_video_class);
        capture_ctrl_set(CAPTURE_CTRL_STOPPED, 0U);
        return -1;
    }
    return 0;
}

int uvc_stop_capture_session(uint32_t session_id)
{
    if (session_id == 0U) {
        return -1;
    }

    taskENTER_CRITICAL();
    capture_ctrl_state_t ctrl = g_capture_ctrl_state;
    uint32_t active = g_active_session_id;
    if (ctrl == CAPTURE_CTRL_STOPPED || ctrl == CAPTURE_CTRL_STOPPING) {
        taskEXIT_CRITICAL();
        return 0;
    }
    if (active != session_id) {
        taskEXIT_CRITICAL();
        LOG_I("[UVC] Ignore stale stop for session=%lu (active=%lu state=%u)\r\n",
              (unsigned long)session_id,
              (unsigned long)active,
              (unsigned)ctrl);
        return 0;
    }
    g_capture_ctrl_state = CAPTURE_CTRL_STOPPING;
    taskEXIT_CRITICAL();

    stop_streaming();

    if (g_video_class && g_cam_state != CAMERA_DETACHED) {
        int ret = usbh_video_close(g_video_class);
        if (ret < 0) {
            LOG_E("[UVC] usbh_video_close failed in stop_capture: %d\r\n", ret);
            capture_ctrl_set(CAPTURE_CTRL_STOPPED, 0U);
            return -1;
        }
    }

    if (g_cam_state != CAMERA_DETACHED && g_cam_state != CAMERA_UNAVAILABLE) {
        set_cam_state(CAMERA_ATTACHED);
    }
    capture_ctrl_set(CAPTURE_CTRL_STOPPED, 0U);
    return 0;
}

int uvc_start_capture(void)
{
    if (g_cli_session_id == 0U) {
        g_cli_session_id = uvc_alloc_session_id();
    }
    int ret = uvc_start_capture_session(g_cli_session_id);
    if (ret < 0) {
        g_cli_session_id = 0U;
    }
    return ret;
}

int uvc_stop_capture(void)
{
    if (g_cli_session_id == 0U) {
        return 0;
    }
    int ret = uvc_stop_capture_session(g_cli_session_id);
    if (ret == 0) {
        g_cli_session_id = 0U;
    }
    return ret;
}

int uvc_dequeue_frame(frame_t *frame, uint32_t timeout_ms)
{
    return frame_queue_pop(frame, timeout_ms);
}

int uvc_dequeue_latest_frame(frame_t *frame, uint32_t timeout_ms)
{
    return frame_queue_pop_latest(frame, timeout_ms);
}

void uvc_frame_release(frame_t *frame)
{
    frame_free(frame);
}

void uvc_register_state_callback(uvc_state_callback_t cb)
{
    g_state_callback = cb;
}

/* ------------------------------------------------------------------ */
/* CLI: cam_info                                                       */
/* ------------------------------------------------------------------ */

static const char *cam_state_str(camera_state_t st)
{
    switch (st) {
        case CAMERA_DETACHED:    return "DETACHED";
        case CAMERA_ATTACHED:    return "ATTACHED";
        case CAMERA_STREAMING:   return "STREAMING";
        case CAMERA_UNAVAILABLE: return "UNAVAILABLE";
        default:                 return "UNKNOWN";
    }
}

static int cmd_cam_info(int argc, char **argv)
{
    (void)argc; (void)argv;

    camera_state_t st = g_cam_state;

    printf("Camera state : %s\r\n", cam_state_str(st));
    if (st >= CAMERA_ATTACHED) {
        printf("  VID/PID    : 0x%04X / 0x%04X\r\n", g_cam_mode.vid, g_cam_mode.pid);
        printf("  Mode       : MJPEG %ux%u @ %ufps\r\n",
               g_cam_mode.width, g_cam_mode.height, g_cam_mode.fps);
        printf("  Alt-setting: %u\r\n", g_cam_mode.altsetting);
        printf("  ISO IN MPS : %u bytes\r\n", g_cam_mode.isoin_mps);
        printf("  Frames cap : %" PRIu64 "\r\n", (uint64_t)g_frames_captured);
    }
    return 0;
}
SHELL_CMD_EXPORT_ALIAS(cmd_cam_info, cam_info, Show camera info);

/* ------------------------------------------------------------------ */
/* CLI: cam_start / cam_stop                                           */
/* ------------------------------------------------------------------ */

static int cmd_cam_start(int argc, char **argv)
{
    (void)argc; (void)argv;

    if (!g_video_class) {
        printf("No camera attached\r\n");
        return -1;
    }

    if (g_cam_state == CAMERA_STREAMING) {
        printf("Camera already streaming\r\n");
        return 0;
    }

    if (g_cam_state != CAMERA_ATTACHED) {
        printf("Camera not in ATTACHED state (current: %s)\r\n",
               cam_state_str(g_cam_state));
        return -1;
    }

    int ret = uvc_start_capture();
    if (ret < 0) {
        printf("Start capture failed\r\n");
        return -1;
    }

    printf("Camera streaming started\r\n");
    return 0;
}
SHELL_CMD_EXPORT_ALIAS(cmd_cam_start, cam_start, Start camera streaming);

static int cmd_cam_stop(int argc, char **argv)
{
    (void)argc; (void)argv;

    if (!g_video_class) {
        printf("No camera attached\r\n");
        return -1;
    }

    if (g_cam_state != CAMERA_STREAMING && g_cam_state != CAMERA_ATTACHED) {
        printf("Camera not streaming (current: %s)\r\n",
               cam_state_str(g_cam_state));
        return 0;
    }

    int ret = uvc_stop_capture();
    if (ret < 0) {
        printf("Stop capture failed\r\n");
        return -1;
    }

    printf("Camera streaming stopped\r\n");
    return 0;
}
SHELL_CMD_EXPORT_ALIAS(cmd_cam_stop, cam_stop, Stop camera streaming);
