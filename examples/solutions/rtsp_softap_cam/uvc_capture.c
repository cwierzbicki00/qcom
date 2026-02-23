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

/* Stall detection: no transport progress for this many ms → restart.
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
/* Prefer a conservative single-transaction payload size when available. */
#define UVC_ISO_MPS_PREFERRED   640U
/* Keep camera data rate below combined USB host + Wi-Fi forwarding limits. */
#define UVC_TARGET_FPS          10U
#define UVC_TARGET_INTERVAL_100NS (10000000U / UVC_TARGET_FPS)
/* Keep a bounded packet-error budget per frame.
 * Field logs show this camera sets occasional ERR/invalid-header bits during
 * otherwise recoverable frames; budgeting avoids dropping every frame. */
#define UVC_FRAME_PKT_ERROR_LIMIT 12U
/* Accept bounded trailer bytes after EOI and trim them.
 * Some webcams pad up to the end of an isoch packet after EOI. */
#define UVC_MAX_JPEG_TRAILER_BYTES 1024U
/* Drop one-off frames that carry far fewer payload packets than recent good
 * frames. This filters partial JPEGs that still end with EOF and otherwise
 * render as "top part valid + grey lower area" after an isoch hiccup. */
#define UVC_PARTIAL_PKT_MIN_SAMPLES    8U
#define UVC_PARTIAL_PKT_RATIO_NUM      3U
#define UVC_PARTIAL_PKT_RATIO_DEN      5U
#define UVC_PARTIAL_PKT_ADAPT_STREAK   3U
/* Guard FID-only finalize path against tiny false-positive JPEGs. */
#define UVC_FID_TOGGLE_MIN_JPEG_BYTES  16384U
#define UVC_FID_TOGGLE_MIN_PKTS        24U
/* Parser hardening:
 * - Drop active assembly immediately when UVC ERR is raised for a packet.
 * - Start a frame only on SOI packet prefix that is followed by a marker prefix.
 * These reduce mid-stream false SOI lock and no-SOF snapshots. */
#define UVC_ERR_PACKET_ABORT_FRAME     0U
#define UVC_ERR_BIT_COUNT_AS_PKT_ERROR 0U
/* Many webcams mis-set ERR together with EOF on valid payload packets.
 * Treat that pattern as advisory to avoid destroying every frame. */
#define UVC_ERR_BIT_ADVISORY_EOF_ONLY  1U
#define UVC_SOI_REQUIRE_MARKER_PREFIX  1U
/* Some cameras expose noisy FID transitions under host load.
 * Keep FID as advisory unless we have a complete JPEG boundary. */
#define UVC_FID_DROP_ON_INCOMPLETE     0U
/* Raw dump diagnostics: print bounded packet/frame hex snippets at parser
 * boundaries and failure points. */
#define UVC_RAW_DUMP_ENABLE            1U
#define UVC_RAW_DUMP_MAX_BYTES         48U
#define UVC_RAW_DUMP_BURST             16U
#define UVC_RAW_DUMP_PERIOD_MASK       0x3FU
/* UVC 1.0/1.1 MJPEG headers are typically <=12 bytes (base + PTS/SCR).
 * Larger values on this platform are usually descriptor misalignment noise. */
#define UVC_HEADER_LEN_TRUST_MAX       12U
/* Limit noisy per-frame drop diagnostics while preserving first failures. */
#define UVC_DROP_LOG_BURST             8U
#define UVC_DROP_LOG_PERIOD_MASK       0x3FU

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

/* Frame assembly state */
static frame_t      g_cur_frame;
static bool         g_cur_frame_valid;
static bool         g_cur_frame_oversize;
static bool         g_cur_frame_tainted;
static bool         g_cur_frame_saw_eoi;
static uint16_t     g_cur_frame_error_pkts;
static uint16_t     g_cur_frame_payload_pkts;
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
static volatile uint32_t g_hdr_error_advisory_count;
static volatile uint32_t g_hdr_long_count;
static volatile uint32_t g_hdr_long_salvage_count;
static volatile uint32_t g_hdr_long_drop_count;
static volatile uint32_t g_hdr_payload_empty_count;
static volatile uint8_t g_hdr_max_len_seen;
static volatile uint32_t g_hdr_eof_count;
static volatile uint32_t g_hdr_fid_toggle_count;
static volatile uint32_t g_payload_pkt_count;
static volatile uint64_t g_payload_bytes_total;
static volatile uint32_t g_frame_oversize_drop_count;
static volatile uint32_t g_jpeg_invalid_drop_count;
static volatile uint32_t g_jpeg_trim_count;
static volatile uint32_t g_jpeg_no_sos_count;
static volatile uint32_t g_jpeg_no_sof_count;
static volatile uint32_t g_jpeg_no_eoi_count;
static volatile uint32_t g_jpeg_nested_soi_count;
static volatile uint32_t g_jpeg_trailer_garbage_count;
static volatile uint32_t g_jpeg_trailer_excess_drop_count;
static volatile uint32_t g_resync_soi_count;
static volatile uint32_t g_fid_incomplete_drop_count;
static volatile uint32_t g_fid_incomplete_ignore_count;
static volatile uint32_t g_fid_toggle_ignore_count;
static volatile uint32_t g_pkt_error_drop_count;
static volatile uint32_t g_partial_pkt_drop_count;
static volatile uint32_t g_drop_tainted_count;
static volatile uint32_t g_drop_error_budget_count;
static volatile uint32_t g_drop_eof_incomplete_count;
static volatile uint32_t g_drop_sanitize_count;
static volatile uint32_t g_drop_err_packet_frame_count;
static volatile uint32_t g_soi_prefix_reject_count;
static volatile uint32_t g_raw_dump_count;
static volatile uint32_t g_frame_start_count;
static volatile uint32_t g_frame_start_split_count;
static volatile uint32_t g_parser_resync_count;
static volatile uint32_t g_parser_resync_streak;
static volatile uint32_t g_parser_escalation_count;
static volatile uint32_t g_transport_restart_count;
static uint32_t     g_good_frame_pkt_ema_q8;
static uint16_t     g_good_frame_pkt_samples;
static uint8_t      g_partial_pkt_suspect_streak;
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
 *  2. Nearest ≥320x240 and ≤1280x720
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
    uint8_t preferred_single_alt = 0;
    uint16_t preferred_single_mps = 0;
    uint8_t best_single_alt = 0;
    uint16_t best_single_mps = 0;
    uint8_t best_cap_alt = 0;
    uint16_t best_cap_mps = 0;
    uint8_t fallback_alt = 1;
    uint16_t fallback_mps = 0;

    for (uint8_t i = 1; i < vc->num_of_intf_altsettings; i++) {
        struct usb_endpoint_descriptor *ep =
            &vc->hport->config.intf[vc->data_intf].altsetting[i].ep[0].ep_desc;

        uint8_t mult = (ep->wMaxPacketSize &
                        USB_MAXPACKETSIZE_ADDITIONAL_TRANSCATION_MASK) >>
                       USB_MAXPACKETSIZE_ADDITIONAL_TRANSCATION_SHIFT;
        uint16_t mps = (ep->wMaxPacketSize & USB_MAXPACKETSIZE_MASK) * (mult + 1);

        if (mps > fallback_mps) {
            fallback_mps = mps;
            fallback_alt = i;
        }

        if (mps > UVC_ISO_MPS_CAP) {
            continue;
        }

        if (mps > best_cap_mps) {
            best_cap_mps = mps;
            best_cap_alt = i;
        }

        /* Prefer single-transaction microframes (mult==0) for parser stability. */
        if (mult == 0U) {
            if (mps <= UVC_ISO_MPS_PREFERRED && mps > preferred_single_mps) {
                preferred_single_mps = mps;
                preferred_single_alt = i;
            }
            if (mps > best_single_mps) {
                best_single_mps = mps;
                best_single_alt = i;
            }
        }
    }

    if (preferred_single_alt != 0) {
        return preferred_single_alt;
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
    uint8_t mult = (ep->wMaxPacketSize &
                    USB_MAXPACKETSIZE_ADDITIONAL_TRANSCATION_MASK) >>
                   USB_MAXPACKETSIZE_ADDITIONAL_TRANSCATION_SHIFT;
    return (uint16_t)((ep->wMaxPacketSize & USB_MAXPACKETSIZE_MASK) * (mult + 1));
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

#if UVC_RAW_DUMP_ENABLE
static void log_raw_hex(const char *label, const uint8_t *buf, uint32_t len);
static void log_raw_packet_event(const char *event,
                                 const uint8_t *pkt, uint32_t pkt_len,
                                 uint8_t header_len, uint8_t header_info,
                                 const uint8_t *payload, uint32_t payload_len);
#endif
static bool jpeg_has_sof_segment(const uint8_t *buf, uint32_t len,
                                 uint16_t *out_w, uint16_t *out_h);

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

        /* In entropy-coded scan data, only stuffed FF, RSTn, and EOI are valid.
         * Treat any other marker as corruption instead of trying to skip ahead. */
        return false;
    }

    return false;
}

static bool frame_has_complete_jpeg(const frame_t *frame, uint32_t *out_eoi_end)
{
    uint32_t eoi_end = 0U;
    bool saw_sos = false;

    if (out_eoi_end) {
        *out_eoi_end = 0U;
    }

    if (!frame || !frame->data || frame->len < 4U) {
        return false;
    }

    if (!locate_complete_jpeg(frame->data, frame->len, &eoi_end, &saw_sos)) {
        return false;
    }
    if (!saw_sos || eoi_end == 0U || eoi_end > frame->len) {
        return false;
    }

    if (out_eoi_end) {
        *out_eoi_end = eoi_end;
    }
    return true;
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

    uint16_t sof_w = 0U;
    uint16_t sof_h = 0U;
    if (!jpeg_has_sof_segment(frame->data, eoi_end, &sof_w, &sof_h) ||
        sof_w == 0U || sof_h == 0U) {
        g_jpeg_no_sof_count++;
        if ((g_jpeg_no_sof_count <= UVC_DROP_LOG_BURST) ||
            ((g_jpeg_no_sof_count & UVC_DROP_LOG_PERIOD_MASK) == 0U)) {
            LOG_W("[UVC] Drop JPEG missing SOF len=%u eoi_end=%u drops=%u\r\n",
                  (unsigned)frame->len,
                  (unsigned)eoi_end,
                  (unsigned)g_jpeg_no_sof_count);
#if UVC_RAW_DUMP_ENABLE
            log_raw_hex("nosof_frame_head", frame->data, frame->len);
            if (frame->len > UVC_RAW_DUMP_MAX_BYTES) {
                uint32_t tail_off = frame->len - UVC_RAW_DUMP_MAX_BYTES;
                log_raw_hex("nosof_frame_tail", frame->data + tail_off,
                            frame->len - tail_off);
            }
#endif
        }
        return false;
    }

    uint32_t out_len = eoi_end;
    if (out_len == 0U || out_len > FRAME_MAX_SIZE) {
        return false;
    }

    if (out_len != frame->len) {
        uint32_t trailer_len = frame->len - out_len;
        /* Keep only tiny trailer noise. A large post-EOI tail is usually
         * corruption (false early EOI inside damaged entropy data). */
        if (trailer_len > UVC_MAX_JPEG_TRAILER_BYTES) {
            g_jpeg_trailer_garbage_count++;
            g_jpeg_trailer_excess_drop_count++;
            if ((g_jpeg_trailer_excess_drop_count <= UVC_DROP_LOG_BURST) ||
                ((g_jpeg_trailer_excess_drop_count & UVC_DROP_LOG_PERIOD_MASK) == 0U)) {
                LOG_W("[UVC] Drop JPEG with excessive trailer: trailer=%u max=%u len=%u eoi_end=%u drops=%u\r\n",
                      (unsigned)trailer_len,
                      (unsigned)UVC_MAX_JPEG_TRAILER_BYTES,
                      (unsigned)frame->len,
                      (unsigned)out_len,
                      (unsigned)g_jpeg_trailer_excess_drop_count);
#if UVC_RAW_DUMP_ENABLE
                log_raw_hex("trail_frame_head", frame->data, frame->len);
                if (frame->len > out_len) {
                    log_raw_hex("trail_bytes", frame->data + out_len,
                                frame->len - out_len);
                }
#endif
            }
            return false;
        }
        /* Some cameras append a few non-image bytes before EOF. */
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
        if (!g_cur_frame_tainted &&
            ((g_pkt_error_drop_count <= UVC_DROP_LOG_BURST) ||
             ((g_pkt_error_drop_count & UVC_DROP_LOG_PERIOD_MASK) == 0U))) {
            LOG_W("[UVC] Frame marked tainted err_pkts=%u limit=%u len=%u pkts=%u\r\n",
                  (unsigned)g_cur_frame_error_pkts,
                  (unsigned)UVC_FRAME_PKT_ERROR_LIMIT,
                  (unsigned)g_cur_frame.len,
                  (unsigned)g_cur_frame_payload_pkts);
        }
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
    g_cur_frame_payload_pkts = 0U;
    g_wait_for_fid_resync = wait_for_fid_resync;
    g_pending_soi_tail_ff = false;
}

static void update_good_frame_pkt_baseline(uint16_t pkt_count)
{
    uint32_t sample_q8;

    if (pkt_count == 0U) {
        return;
    }

    sample_q8 = ((uint32_t)pkt_count) << 8U;
    if (g_good_frame_pkt_ema_q8 == 0U) {
        g_good_frame_pkt_ema_q8 = sample_q8;
    } else {
        /* 1/8 EWMA: stable enough to reject outliers, adaptive to new scenes. */
        g_good_frame_pkt_ema_q8 =
            ((g_good_frame_pkt_ema_q8 * 7U) + sample_q8) / 8U;
    }

    if (g_good_frame_pkt_samples < UINT16_MAX) {
        g_good_frame_pkt_samples++;
    }
}

static bool is_partial_packet_outlier(uint16_t pkt_count, uint16_t *avg_out)
{
    uint32_t avg_pkts;

    if (avg_out) {
        *avg_out = 0U;
    }

    if (g_good_frame_pkt_samples < UVC_PARTIAL_PKT_MIN_SAMPLES ||
        g_good_frame_pkt_ema_q8 == 0U) {
        return false;
    }

    avg_pkts = (g_good_frame_pkt_ema_q8 + 128U) >> 8U;
    if (avg_pkts == 0U) {
        avg_pkts = 1U;
    }
    if (avg_out) {
        *avg_out = (uint16_t)avg_pkts;
    }

    return ((uint32_t)pkt_count * UVC_PARTIAL_PKT_RATIO_DEN) <
           (avg_pkts * UVC_PARTIAL_PKT_RATIO_NUM);
}

static void finalize_current_frame(bool eof_seen)
{
    uint16_t avg_pkts = 0U;
    bool partial_pkt_outlier = false;

    if (!g_cur_frame_valid || g_cur_frame.len == 0U) {
        g_cur_frame_valid = false;
        g_cur_frame_oversize = false;
        g_cur_frame_tainted = false;
        g_cur_frame_saw_eoi = false;
        g_cur_frame_payload_pkts = 0U;
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
        g_drop_tainted_count++;
        if ((g_drop_tainted_count <= UVC_DROP_LOG_BURST) ||
            ((g_drop_tainted_count & UVC_DROP_LOG_PERIOD_MASK) == 0U)) {
            LOG_W("[UVC] Drop tainted frame len=%u pkts=%u err_pkts=%u drops=%u\r\n",
                  (unsigned)g_cur_frame.len,
                  (unsigned)g_cur_frame_payload_pkts,
                  (unsigned)g_cur_frame_error_pkts,
                  (unsigned)g_drop_tainted_count);
        }
        drop_current_assembly(true);
        return;
    }

    if (g_cur_frame_error_pkts > UVC_FRAME_PKT_ERROR_LIMIT) {
        g_jpeg_invalid_drop_count++;
        g_drop_error_budget_count++;
        if ((g_drop_error_budget_count <= UVC_DROP_LOG_BURST) ||
            ((g_drop_error_budget_count & UVC_DROP_LOG_PERIOD_MASK) == 0U)) {
            LOG_W("[UVC] Drop frame over err budget len=%u pkts=%u err_pkts=%u limit=%u drops=%u\r\n",
                  (unsigned)g_cur_frame.len,
                  (unsigned)g_cur_frame_payload_pkts,
                  (unsigned)g_cur_frame_error_pkts,
                  (unsigned)UVC_FRAME_PKT_ERROR_LIMIT,
                  (unsigned)g_drop_error_budget_count);
        }
        drop_current_assembly(true);
        return;
    }

    partial_pkt_outlier =
        is_partial_packet_outlier(g_cur_frame_payload_pkts, &avg_pkts);
    if (partial_pkt_outlier) {
        g_partial_pkt_suspect_streak++;
        if (g_partial_pkt_suspect_streak < UVC_PARTIAL_PKT_ADAPT_STREAK) {
            g_partial_pkt_drop_count++;
            if ((g_partial_pkt_drop_count & 0x1FU) == 1U) {
                LOG_W("[UVC] Drop partial frame: pkts=%u avg=%u streak=%u drops=%u\r\n",
                      (unsigned)g_cur_frame_payload_pkts, (unsigned)avg_pkts,
                      (unsigned)g_partial_pkt_suspect_streak,
                      (unsigned)g_partial_pkt_drop_count);
            }
            drop_current_assembly(true);
            return;
        }

        /* Avoid lockout when compression regime genuinely shifts downward. */
        g_partial_pkt_suspect_streak = 0U;
    } else {
        g_partial_pkt_suspect_streak = 0U;
    }

    if (!sanitize_current_jpeg_frame(&g_cur_frame)) {
        g_jpeg_invalid_drop_count++;
        g_drop_sanitize_count++;
        g_wait_for_fid_resync = true;
        g_pending_soi_tail_ff = false;
        if ((g_drop_sanitize_count <= UVC_DROP_LOG_BURST) ||
            ((g_drop_sanitize_count & UVC_DROP_LOG_PERIOD_MASK) == 0U)) {
            uint8_t h0 = 0, h1 = 0, t0 = 0, t1 = 0;
            if (g_cur_frame.len >= 2U) {
                h0 = g_cur_frame.data[0];
                h1 = g_cur_frame.data[1];
                t0 = g_cur_frame.data[g_cur_frame.len - 2U];
                t1 = g_cur_frame.data[g_cur_frame.len - 1U];
            }
            LOG_W("[UVC] Drop invalid JPEG len=%u pkts=%u err_pkts=%u head=%02X%02X tail=%02X%02X drops=%u\r\n",
                  (unsigned)g_cur_frame.len,
                  (unsigned)g_cur_frame_payload_pkts,
                  (unsigned)g_cur_frame_error_pkts,
                  h0, h1, t0, t1,
                  (unsigned)g_drop_sanitize_count);
#if UVC_RAW_DUMP_ENABLE
            log_raw_hex("sanitize_frame_head", g_cur_frame.data, g_cur_frame.len);
            if (g_cur_frame.len > UVC_RAW_DUMP_MAX_BYTES) {
                uint32_t tail_off = g_cur_frame.len - UVC_RAW_DUMP_MAX_BYTES;
                log_raw_hex("sanitize_frame_tail",
                            g_cur_frame.data + tail_off,
                            g_cur_frame.len - tail_off);
            }
#endif
        }
        drop_current_assembly(true);
        return;
    }

    g_cur_frame.timestamp_ms =
        (uint32_t)(xTaskGetTickCount() * portTICK_PERIOD_MS);
    g_cur_frame.error_pkts = g_cur_frame_error_pkts;
    g_cur_frame.payload_pkts = g_cur_frame_payload_pkts;
    frame_queue_push(&g_cur_frame);
    g_frames_captured++;
    if ((g_frames_captured <= UVC_DROP_LOG_BURST) ||
        ((g_frames_captured & UVC_DROP_LOG_PERIOD_MASK) == 0U)) {
        LOG_I("[UVC] Frame OK #%" PRIu64 " len=%u pkts=%u err_pkts=%u eof=%u\r\n",
              (uint64_t)g_frames_captured,
              (unsigned)g_cur_frame.len,
              (unsigned)g_cur_frame_payload_pkts,
              (unsigned)g_cur_frame_error_pkts,
              (unsigned)(eof_seen ? 1U : 0U));
    }
    update_good_frame_pkt_baseline(g_cur_frame_payload_pkts);
    g_parser_resync_streak = 0;
    g_cur_frame_valid = false;
    g_cur_frame_oversize = false;
    g_cur_frame_tainted = false;
    g_cur_frame_saw_eoi = false;
    g_cur_frame_error_pkts = 0U;
    g_cur_frame_payload_pkts = 0U;
}

static inline bool has_soi_prefix(const uint8_t *buf, uint32_t len)
{
    return (buf && len >= 2U && buf[0] == 0xFFU && buf[1] == 0xD8U);
}

#if UVC_RAW_DUMP_ENABLE
static void log_raw_hex(const char *label, const uint8_t *buf, uint32_t len)
{
    char hex[(UVC_RAW_DUMP_MAX_BYTES * 2U) + 1U];
    uint32_t dump_len = len;
    uint32_t pos = 0U;

    if (!buf || len == 0U) {
        LOG_I("[UVC][RAW] %s len=%u data=<empty>\r\n",
              label ? label : "blob", (unsigned)len);
        return;
    }

    if (dump_len > UVC_RAW_DUMP_MAX_BYTES) {
        dump_len = UVC_RAW_DUMP_MAX_BYTES;
    }

    for (uint32_t i = 0U; i < dump_len; i++) {
        static const char h[] = "0123456789ABCDEF";
        uint8_t b = buf[i];
        hex[pos++] = h[(b >> 4) & 0x0FU];
        hex[pos++] = h[b & 0x0FU];
    }
    hex[pos] = '\0';

    LOG_I("[UVC][RAW] %s len=%u dump=%u data=%s%s\r\n",
          label ? label : "blob",
          (unsigned)len,
          (unsigned)dump_len,
          hex,
          (dump_len < len) ? "..." : "");
}

static void log_raw_packet_event(const char *event,
                                 const uint8_t *pkt, uint32_t pkt_len,
                                 uint8_t header_len, uint8_t header_info,
                                 const uint8_t *payload, uint32_t payload_len)
{
    uint32_t seq = ++g_raw_dump_count;
    if (seq > UVC_RAW_DUMP_BURST &&
        ((seq & UVC_RAW_DUMP_PERIOD_MASK) != 0U)) {
        return;
    }

    LOG_I("[UVC][RAW] evt=%s seq=%u pkt_len=%u hdr_len=%u hdr_info=0x%02X payload_len=%u frame_len=%u frame_pkts=%u err_pkts=%u fid=%u eof=%u err=%u\r\n",
          event ? event : "pkt",
          (unsigned)seq,
          (unsigned)pkt_len,
          (unsigned)header_len,
          (unsigned)header_info,
          (unsigned)payload_len,
          (unsigned)g_cur_frame.len,
          (unsigned)g_cur_frame_payload_pkts,
          (unsigned)g_cur_frame_error_pkts,
          (unsigned)(header_info & 0x01U),
          (unsigned)((header_info >> 1) & 0x01U),
          (unsigned)((header_info >> 6) & 0x01U));
    log_raw_hex("pkt_head", pkt, pkt_len);
    if (payload && payload_len > 0U) {
        log_raw_hex("payload_head", payload, payload_len);
        if (payload_len > UVC_RAW_DUMP_MAX_BYTES) {
            uint32_t tail_off = payload_len - UVC_RAW_DUMP_MAX_BYTES;
            log_raw_hex("payload_tail", payload + tail_off, payload_len - tail_off);
        }
    }
    if (g_cur_frame_valid && g_cur_frame.data && g_cur_frame.len > 0U) {
        log_raw_hex("frame_head", g_cur_frame.data, g_cur_frame.len);
        if (g_cur_frame.len > UVC_RAW_DUMP_MAX_BYTES) {
            uint32_t frame_tail_off = g_cur_frame.len - UVC_RAW_DUMP_MAX_BYTES;
            log_raw_hex("frame_tail", g_cur_frame.data + frame_tail_off,
                        g_cur_frame.len - frame_tail_off);
        }
    }
}
#endif

static inline bool has_marker_prefix_after_soi(const uint8_t *buf, uint32_t len)
{
    if (!has_soi_prefix(buf, len)) {
        return false;
    }
    if (len < 3U) {
        return true;
    }
    return (buf[2] == 0xFFU);
}

static inline bool marker_is_sof(uint8_t marker)
{
    return (marker >= 0xC0U && marker <= 0xCFU &&
            marker != 0xC4U && marker != 0xC8U && marker != 0xCCU);
}

static inline bool marker_is_jpeg_headerish(uint8_t marker)
{
    if (marker == 0xD8U || marker == 0xD9U || marker == 0xDAU ||
        marker == 0xDBU || marker == 0xDDU || marker == 0xFEU ||
        marker == 0x00U || marker == 0x01U) {
        return true;
    }
    if (marker_is_sof(marker)) {
        return true;
    }
    if (marker == 0xC4U || marker == 0xCCU) { /* DHT, DAC */
        return true;
    }
    if (marker >= 0xD0U && marker <= 0xD7U) {
        return true;
    }
    if (marker >= 0xE0U && marker <= 0xEFU) { /* APPn */
        return true;
    }
    return false;
}

static bool jpeg_has_sof_segment(const uint8_t *buf, uint32_t len,
                                 uint16_t *out_w, uint16_t *out_h)
{
    uint32_t i = 2U;

    if (out_w) {
        *out_w = 0U;
    }
    if (out_h) {
        *out_h = 0U;
    }

    if (!buf || len < 4U || buf[0] != 0xFFU || buf[1] != 0xD8U) {
        return false;
    }

    while (i + 1U < len) {
        uint8_t marker;

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

        marker = buf[i++];
        if (marker == 0x00U) {
            continue;
        }
        if (marker == 0xD8U) {
            continue;
        }
        if (marker == 0xDAU || marker == 0xD9U) {
            break;
        }
        if ((marker >= 0xD0U && marker <= 0xD7U) || marker == 0x01U) {
            continue;
        }

        if (i + 1U >= len) {
            break;
        }

        uint16_t seg_len =
            (uint16_t)(((uint16_t)buf[i] << 8U) | (uint16_t)buf[i + 1U]);
        if (seg_len < 2U || (i + seg_len) > len) {
            break;
        }

        if (marker_is_sof(marker) && seg_len >= 8U) {
            if (out_h) {
                *out_h =
                    (uint16_t)(((uint16_t)buf[i + 3U] << 8U) | (uint16_t)buf[i + 4U]);
            }
            if (out_w) {
                *out_w =
                    (uint16_t)(((uint16_t)buf[i + 5U] << 8U) | (uint16_t)buf[i + 6U]);
            }
            return true;
        }

        i += (uint32_t)seg_len;
    }

    return false;
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
        if ((g_hdr_short_count <= UVC_DROP_LOG_BURST) ||
            ((g_hdr_short_count & UVC_DROP_LOG_PERIOD_MASK) == 0U)) {
            LOG_W("[UVC] Short payload packet len=%u count=%u\r\n",
                  (unsigned)len, (unsigned)g_hdr_short_count);
#if UVC_RAW_DUMP_ENABLE
            log_raw_packet_event("short_pkt", data, len, 0U, 0U, data, len);
#endif
        }
        note_packet_error_for_current_frame();
        return; /* Too short for a UVC payload header */
    }

    uint8_t header_len = data[0];
    uint8_t header_info = data[1];

    /* UVC payload header length is variable; accept any sane value that fits
     * this packet to avoid false rejects from device-specific extensions. */
    if (header_len < 2U || (uint32_t)header_len > len) {
        g_hdr_invalid_count++;
        if ((g_hdr_invalid_count <= UVC_DROP_LOG_BURST) ||
            ((g_hdr_invalid_count & UVC_DROP_LOG_PERIOD_MASK) == 0U)) {
            LOG_W("[UVC] Invalid header len=%u pkt_len=%u info=0x%02X frame_len=%u frame_pkts=%u count=%u\r\n",
                  (unsigned)header_len,
                  (unsigned)len,
                  (unsigned)header_info,
                  (unsigned)g_cur_frame.len,
                  (unsigned)g_cur_frame_payload_pkts,
                  (unsigned)g_hdr_invalid_count);
#if UVC_RAW_DUMP_ENABLE
            log_raw_packet_event("hdr_invalid", data, len, header_len, header_info,
                                 (len > 2U) ? (data + 2U) : data,
                                 (len > 2U) ? (len - 2U) : 0U);
#endif
        }
        note_packet_error_for_current_frame();
        return; /* Invalid header */
    }
    if (header_len > g_hdr_max_len_seen) {
        g_hdr_max_len_seen = header_len;
    }
    if (header_len > UVC_HEADER_LEN_TRUST_MAX) {
        g_hdr_long_count++;
        bool salvage_to_12 = false;

        if (len > UVC_HEADER_LEN_TRUST_MAX + 1U) {
            uint8_t p0 = data[UVC_HEADER_LEN_TRUST_MAX];
            uint8_t p1 = data[UVC_HEADER_LEN_TRUST_MAX + 1U];
            if (p0 == 0xFFU && marker_is_jpeg_headerish(p1)) {
                salvage_to_12 = true;
            }
        }

        if (salvage_to_12) {
            g_hdr_long_salvage_count++;
            if ((g_hdr_long_salvage_count <= UVC_DROP_LOG_BURST) ||
                ((g_hdr_long_salvage_count & UVC_DROP_LOG_PERIOD_MASK) == 0U)) {
                LOG_W("[UVC] Salvage long header len=%u -> %u info=0x%02X pkt_len=%u salvage=%u\r\n",
                      (unsigned)header_len,
                      (unsigned)UVC_HEADER_LEN_TRUST_MAX,
                      (unsigned)header_info,
                      (unsigned)len,
                      (unsigned)g_hdr_long_salvage_count);
#if UVC_RAW_DUMP_ENABLE
                log_raw_packet_event("hdr_long_salvage", data, len, header_len, header_info,
                                     data + UVC_HEADER_LEN_TRUST_MAX,
                                     len - UVC_HEADER_LEN_TRUST_MAX);
#endif
            }
            header_len = UVC_HEADER_LEN_TRUST_MAX;
        } else {
            g_hdr_long_drop_count++;
            if ((g_hdr_long_drop_count <= UVC_DROP_LOG_BURST) ||
                ((g_hdr_long_drop_count & UVC_DROP_LOG_PERIOD_MASK) == 0U)) {
                LOG_W("[UVC] Drop long header len=%u info=0x%02X pkt_len=%u drops=%u\r\n",
                      (unsigned)header_len, (unsigned)header_info,
                      (unsigned)len, (unsigned)g_hdr_long_drop_count);
#if UVC_RAW_DUMP_ENABLE
                log_raw_packet_event("hdr_long_drop", data, len, header_len, header_info,
                                     data + 2U, len - 2U);
#endif
            }
            note_packet_error_for_current_frame();
            return;
        }
    }

    /* Extract FID and EOF bits */
    uint8_t fid = header_info & 0x01;
    uint8_t eof = (header_info >> 1) & 0x01;
    uint8_t err = (header_info >> 6) & 0x01;
    bool eof_effective = (eof != 0U);

    /* Payload data follows the header */
    const uint8_t *payload = data + header_len;
    uint32_t payload_len = len - header_len;
    bool payload_tail_ff = (payload_len > 0U) && (payload[payload_len - 1U] == 0xFFU);
    if (payload_len == 0U) {
        g_hdr_payload_empty_count++;
    }

    /* UVC ERR bit indicates payload/header corruption in this packet.
     * Do not trust boundary bits (FID/EOF) from this packet. */
    if (err) {
        bool advisory_err = false;
        if (UVC_ERR_BIT_ADVISORY_EOF_ONLY &&
            eof_effective &&
            header_len == UVC_HEADER_LEN_TRUST_MAX &&
            payload_len > 0U &&
            g_cur_frame_valid &&
            g_cur_frame.len > 0U) {
            advisory_err = true;
            eof_effective = false; /* do not trust EOF when ERR is advisory */
            g_hdr_error_advisory_count++;
        }

        g_hdr_error_bit_count++;
        if ((g_hdr_error_bit_count <= UVC_DROP_LOG_BURST) ||
            ((g_hdr_error_bit_count & UVC_DROP_LOG_PERIOD_MASK) == 0U)) {
            LOG_W("[UVC] ERR bit set hdr=0x%02X len=%u frame_len=%u frame_pkts=%u err_pkts=%u advisory=%u count=%u\r\n",
                  (unsigned)header_info, (unsigned)len, (unsigned)g_cur_frame.len,
                  (unsigned)g_cur_frame_payload_pkts, (unsigned)g_cur_frame_error_pkts,
                  (unsigned)(advisory_err ? 1U : 0U),
                  (unsigned)g_hdr_error_bit_count);
#if UVC_RAW_DUMP_ENABLE
            log_raw_packet_event(advisory_err ? "hdr_err_adv" : "hdr_err",
                                 data, len, header_len, header_info,
                                 payload, payload_len);
#endif
        }
        if (!advisory_err && UVC_ERR_BIT_COUNT_AS_PKT_ERROR) {
            note_packet_error_for_current_frame();
        }
        if (!advisory_err && UVC_ERR_PACKET_ABORT_FRAME && g_cur_frame_valid) {
            g_drop_err_packet_frame_count++;
            if ((g_drop_err_packet_frame_count <= UVC_DROP_LOG_BURST) ||
                ((g_drop_err_packet_frame_count & UVC_DROP_LOG_PERIOD_MASK) == 0U)) {
                LOG_W("[UVC] Drop frame on ERR packet len=%u pkts=%u err_pkts=%u drops=%u\r\n",
                      (unsigned)g_cur_frame.len,
                      (unsigned)g_cur_frame_payload_pkts,
                      (unsigned)g_cur_frame_error_pkts,
                      (unsigned)g_drop_err_packet_frame_count);
            }
            drop_current_assembly(true);
        }
        if (!advisory_err &&
            (UVC_ERR_PACKET_ABORT_FRAME || UVC_ERR_BIT_COUNT_AS_PKT_ERROR)) {
            g_pending_soi_tail_ff = payload_tail_ff;
            return;
        }
    }

    bool fid_toggled = (g_fid_initialized && fid != g_last_fid);
    if (fid_toggled) {
        g_hdr_fid_toggle_count++;
        if (g_cur_frame_valid && g_cur_frame.len > 0U) {
            uint32_t verified_eoi_end = 0U;
            bool frame_complete = frame_has_complete_jpeg(&g_cur_frame, &verified_eoi_end);
            bool can_finalize = (g_cur_frame_saw_eoi || frame_complete);
            if (eof_effective && can_finalize) {
                g_cur_frame_saw_eoi = true;
                finalize_current_frame(true);
            } else if (!eof_effective && frame_complete) {
                /* Some UVC 1.0 MJPEG cameras don't assert EOF consistently.
                 * If the frame is structurally complete at FID boundary,
                 * finalize instead of dropping and forcing parser resync. */
                if (verified_eoi_end >= UVC_FID_TOGGLE_MIN_JPEG_BYTES &&
                    g_cur_frame_payload_pkts >= UVC_FID_TOGGLE_MIN_PKTS) {
                    g_fid_toggle_ignore_count++;
                    if ((g_fid_toggle_ignore_count & 0x3FU) == 1U) {
                        LOG_W("[UVC] Finalize frame on FID toggle without EOF (count=%u, len=%u, pkts=%u)\r\n",
                              (unsigned)g_fid_toggle_ignore_count,
                              (unsigned)g_cur_frame.len,
                              (unsigned)g_cur_frame_payload_pkts);
                    }
                    g_cur_frame_saw_eoi = true;
                    finalize_current_frame(false);
                } else {
                    g_fid_incomplete_drop_count++;
                    if ((g_fid_incomplete_drop_count <= UVC_DROP_LOG_BURST) ||
                        ((g_fid_incomplete_drop_count & UVC_DROP_LOG_PERIOD_MASK) == 0U)) {
                        LOG_W("[UVC] Drop small FID-only frame len=%u eoi_end=%u pkts=%u min_len=%u min_pkts=%u drops=%u\r\n",
                              (unsigned)g_cur_frame.len,
                              (unsigned)verified_eoi_end,
                              (unsigned)g_cur_frame_payload_pkts,
                              (unsigned)UVC_FID_TOGGLE_MIN_JPEG_BYTES,
                              (unsigned)UVC_FID_TOGGLE_MIN_PKTS,
                              (unsigned)g_fid_incomplete_drop_count);
                    }
                    drop_current_assembly(false);
                }
            } else if (g_cur_frame_saw_eoi) {
                /* Strict boundary mode: do not publish frames that reached EOI
                 * but never received a UVC EOF indication. */
                g_fid_incomplete_drop_count++;
#if UVC_FID_DROP_ON_INCOMPLETE
                drop_current_assembly(false);
#else
                g_fid_incomplete_ignore_count++;
#endif
            } else {
                /* FID toggled before a complete JPEG/EOF boundary. Some cameras
                 * toggle FID noisily; keep this advisory unless strict mode is set. */
                g_fid_incomplete_drop_count++;
#if UVC_FID_DROP_ON_INCOMPLETE
                drop_current_assembly(false);
#else
                g_fid_incomplete_ignore_count++;
                if ((g_fid_incomplete_ignore_count <= UVC_DROP_LOG_BURST) ||
                    ((g_fid_incomplete_ignore_count & UVC_DROP_LOG_PERIOD_MASK) == 0U)) {
                    LOG_W("[UVC] Ignore incomplete FID toggle len=%u pkts=%u eof=%u ignores=%u\r\n",
                          (unsigned)g_cur_frame.len,
                          (unsigned)g_cur_frame_payload_pkts,
                          (unsigned)eof_effective,
                          (unsigned)g_fid_incomplete_ignore_count);
                }
#endif
            }
        }
    }
    g_last_fid = fid;
    g_fid_initialized = true;

    if (g_wait_for_fid_resync) {
        if (has_soi_prefix(payload, payload_len)) {
#if UVC_SOI_REQUIRE_MARKER_PREFIX
            if (!has_marker_prefix_after_soi(payload, payload_len)) {
                g_soi_prefix_reject_count++;
                if ((g_soi_prefix_reject_count <= UVC_DROP_LOG_BURST) ||
                    ((g_soi_prefix_reject_count & UVC_DROP_LOG_PERIOD_MASK) == 0U)) {
                    LOG_W("[UVC] Ignore SOI without marker prefix (resync) len=%u head=%02X%02X%02X count=%u\r\n",
                          (unsigned)payload_len,
                          (unsigned)payload[0],
                          (unsigned)((payload_len > 1U) ? payload[1] : 0U),
                          (unsigned)((payload_len > 2U) ? payload[2] : 0U),
                          (unsigned)g_soi_prefix_reject_count);
#if UVC_RAW_DUMP_ENABLE
                    log_raw_packet_event("soi_reject_resync", data, len, header_len,
                                         header_info, payload, payload_len);
#endif
                }
                g_pending_soi_tail_ff = payload_tail_ff;
                return;
            }
#endif
            g_resync_soi_count++;
            g_wait_for_fid_resync = false;
            g_pending_soi_tail_ff = false;
        } else {
            g_pending_soi_tail_ff = payload_tail_ff;
            return;
        }
    }

    /* If a new packet starts with SOI while a frame is assembling, treat it as
     * a boundary resync. Do not scan for embedded SOI inside packet payload
     * because that can false-trigger on corrupted entropy bytes. */
    if (g_cur_frame_valid && payload_len >= 2U) {
        if (has_soi_prefix(payload, payload_len)) {
            uint32_t verified_eoi_end = 0U;
            if (frame_has_complete_jpeg(&g_cur_frame, &verified_eoi_end)) {
                bool strong_boundary =
                    (verified_eoi_end >= UVC_FID_TOGGLE_MIN_JPEG_BYTES) &&
                    (g_cur_frame_payload_pkts >= UVC_FID_TOGGLE_MIN_PKTS);

                if (strong_boundary) {
                    /* EOF/FID may be unreliable on some webcams. If prior assembly is
                     * already a complete JPEG and large enough, finalize on next SOI
                     * boundary. */
                    g_fid_toggle_ignore_count++;
                    finalize_current_frame(false);
                } else {
                    /* Prevent tiny false-positive JPEG fragments (often no real SOS
                     * payload) from being published as snapshots. */
                    g_fid_incomplete_drop_count++;
                    if ((g_fid_incomplete_drop_count <= UVC_DROP_LOG_BURST) ||
                        ((g_fid_incomplete_drop_count & UVC_DROP_LOG_PERIOD_MASK) == 0U)) {
                        LOG_W("[UVC] Drop small SOI-boundary frame len=%u eoi_end=%u pkts=%u min_len=%u min_pkts=%u drops=%u\r\n",
                              (unsigned)g_cur_frame.len,
                              (unsigned)verified_eoi_end,
                              (unsigned)g_cur_frame_payload_pkts,
                              (unsigned)UVC_FID_TOGGLE_MIN_JPEG_BYTES,
                              (unsigned)UVC_FID_TOGGLE_MIN_PKTS,
                              (unsigned)g_fid_incomplete_drop_count);
                    }
                    drop_current_assembly(false);
                }
            } else {
                /* Strict boundary mode: next SOI without a complete JPEG means
                 * previous frame was incomplete/corrupt; drop and resync. */
                g_fid_incomplete_drop_count++;
                drop_current_assembly(false);
            }
            g_resync_soi_count++;
        }
    }

    /* Allocate a new frame buffer if needed. Start only at packet-aligned SOI. */
    if (!g_cur_frame_valid) {
        bool soi_at_start = has_soi_prefix(payload, payload_len);

        if (!soi_at_start) {
            g_pending_soi_tail_ff = payload_tail_ff;
            return;
        }
#if UVC_SOI_REQUIRE_MARKER_PREFIX
        if (!has_marker_prefix_after_soi(payload, payload_len)) {
            g_soi_prefix_reject_count++;
            if ((g_soi_prefix_reject_count <= UVC_DROP_LOG_BURST) ||
                ((g_soi_prefix_reject_count & UVC_DROP_LOG_PERIOD_MASK) == 0U)) {
                LOG_W("[UVC] Ignore SOI without marker prefix len=%u head=%02X%02X%02X count=%u\r\n",
                      (unsigned)payload_len,
                      (unsigned)payload[0],
                      (unsigned)((payload_len > 1U) ? payload[1] : 0U),
                      (unsigned)((payload_len > 2U) ? payload[2] : 0U),
                      (unsigned)g_soi_prefix_reject_count);
#if UVC_RAW_DUMP_ENABLE
                log_raw_packet_event("soi_reject_start", data, len, header_len,
                                     header_info, payload, payload_len);
#endif
            }
            g_pending_soi_tail_ff = payload_tail_ff;
            return;
        }
#endif

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
        g_cur_frame_payload_pkts = 0U;

        g_frame_start_count++;
        if ((g_frame_start_count <= UVC_DROP_LOG_BURST) ||
            ((g_frame_start_count & UVC_DROP_LOG_PERIOD_MASK) == 0U)) {
            LOG_I("[UVC] Frame start soi count=%u split=%u fid=%u hdr=0x%02X payload_len=%u\r\n",
                  (unsigned)g_frame_start_count,
                  (unsigned)g_frame_start_split_count,
                  (unsigned)fid,
                  (unsigned)header_info,
                  (unsigned)payload_len);
#if UVC_RAW_DUMP_ENABLE
            log_raw_packet_event("frame_start", data, len, header_len, header_info,
                                 payload, payload_len);
#endif
        }
    }

    /* Once a complete JPEG payload was seen, ignore trailing bytes until EOF.
     * This avoids appending camera-specific trailer noise after EOI. */
    if (g_cur_frame_valid && g_cur_frame_saw_eoi) {
        if (eof_effective) {
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
            if ((g_frame_oversize_drop_count <= UVC_DROP_LOG_BURST) ||
                ((g_frame_oversize_drop_count & UVC_DROP_LOG_PERIOD_MASK) == 0U)) {
                LOG_W("[UVC] Drop oversize frame len=%u add=%u max=%u drops=%u\r\n",
                      (unsigned)g_cur_frame.len,
                      (unsigned)payload_len,
                      (unsigned)FRAME_MAX_SIZE,
                      (unsigned)g_frame_oversize_drop_count);
            }
            drop_current_assembly(true);
            g_pending_soi_tail_ff = payload_tail_ff;
            return;
        }

        memcpy(g_cur_frame.data + g_cur_frame.len, payload, payload_len);
        g_cur_frame.len += payload_len;
        if (g_cur_frame_payload_pkts < UINT16_MAX) {
            g_cur_frame_payload_pkts++;
        }

        /* Detect when a complete JPEG appears in the payload stream, but do
         * not publish until UVC EOF confirms frame boundary. */
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
            }
        }
    }

    /* EOF marks end of frame */
    if (eof_effective && g_cur_frame_valid && g_cur_frame.len > 0U) {
        uint32_t verified_eoi_end = 0U;
        bool verified_saw_sos = false;
        bool complete = locate_complete_jpeg(g_cur_frame.data, g_cur_frame.len,
                                             &verified_eoi_end, &verified_saw_sos);

        if (!complete || !verified_saw_sos) {
            if (!verified_saw_sos) {
                g_jpeg_no_sos_count++;
            } else {
                g_jpeg_no_eoi_count++;
            }
            g_drop_eof_incomplete_count++;
            if ((g_drop_eof_incomplete_count <= UVC_DROP_LOG_BURST) ||
                ((g_drop_eof_incomplete_count & UVC_DROP_LOG_PERIOD_MASK) == 0U)) {
                LOG_W("[UVC] Drop EOF-incomplete len=%u pkts=%u err_pkts=%u saw_sos=%u complete=%u drops=%u\r\n",
                      (unsigned)g_cur_frame.len,
                      (unsigned)g_cur_frame_payload_pkts,
                      (unsigned)g_cur_frame_error_pkts,
                      (unsigned)(verified_saw_sos ? 1U : 0U),
                      (unsigned)(complete ? 1U : 0U),
                      (unsigned)g_drop_eof_incomplete_count);
#if UVC_RAW_DUMP_ENABLE
                log_raw_packet_event("eof_incomplete", data, len, header_len,
                                     header_info, payload, payload_len);
#endif
            }
            drop_current_assembly(true);
        } else {
            g_cur_frame_saw_eoi = true;
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

static void rebuild_iso_packet_descriptors(struct usbh_urb *urb,
                                           uint8_t *buf,
                                           uint16_t mps,
                                           uint8_t pkt_cap)
{
    if (!urb || !buf || mps == 0U) {
        return;
    }

    pkt_cap = sanitize_iso_pkt_cap(pkt_cap);
    urb->transfer_buffer = buf;
    urb->transfer_buffer_length = (uint32_t)mps * (uint32_t)pkt_cap;
    urb->num_of_iso_packets = pkt_cap;
    for (uint8_t i = 0; i < pkt_cap; i++) {
        urb->iso_packet[i].transfer_buffer = buf + ((uint32_t)i * mps);
        urb->iso_packet[i].transfer_buffer_length = mps;
        urb->iso_packet[i].actual_length = 0;
        urb->iso_packet[i].errorcode = 0;
    }
}

static void process_completed_urb(struct usbh_urb *urb,
                                  uint8_t pkt_cap,
                                  uint8_t slot,
                                  uint16_t mps)
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
        uint8_t *expected_ptr = ((uint8_t *)urb->transfer_buffer) + (i * mps);
        uint32_t expected_len = mps;
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

    uint16_t mps = vc->isoin_mps;
    if (mps == 0) {
        mps = 512; /* fallback */
    }

    LOG_I("[UVC] Starting ISO streaming, MPS=%u (SRAM free=%u)\r\n",
          mps, (unsigned)kfree_size());

    /* Initialize frame assembly state */
    g_cur_frame_valid = false;
    g_cur_frame_oversize = false;
    g_cur_frame_tainted = false;
    g_cur_frame_error_pkts = 0U;
    g_cur_frame_payload_pkts = 0U;
    g_wait_for_fid_resync = false;
    g_fid_initialized = false;
    g_pending_soi_tail_ff = false;
    g_frames_captured = 0;
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
    g_hdr_error_advisory_count = 0;
    g_hdr_long_count = 0;
    g_hdr_long_salvage_count = 0;
    g_hdr_long_drop_count = 0;
    g_hdr_payload_empty_count = 0;
    g_hdr_max_len_seen = 0U;
    g_hdr_eof_count = 0;
    g_hdr_fid_toggle_count = 0;
    g_payload_pkt_count = 0;
    g_payload_bytes_total = 0;
    g_frame_oversize_drop_count = 0;
    g_jpeg_invalid_drop_count = 0;
    g_jpeg_trim_count = 0;
    g_jpeg_no_sos_count = 0;
    g_jpeg_no_sof_count = 0;
    g_jpeg_no_eoi_count = 0;
    g_jpeg_nested_soi_count = 0;
    g_jpeg_trailer_garbage_count = 0;
    g_jpeg_trailer_excess_drop_count = 0;
    g_resync_soi_count = 0;
    g_fid_incomplete_drop_count = 0;
    g_fid_incomplete_ignore_count = 0;
    g_fid_toggle_ignore_count = 0;
    g_pkt_error_drop_count = 0;
    g_partial_pkt_drop_count = 0;
    g_drop_tainted_count = 0;
    g_drop_error_budget_count = 0;
    g_drop_eof_incomplete_count = 0;
    g_drop_sanitize_count = 0;
    g_drop_err_packet_frame_count = 0;
    g_soi_prefix_reject_count = 0;
    g_raw_dump_count = 0;
    g_frame_start_count = 0;
    g_frame_start_split_count = 0;
    g_parser_resync_count = 0;
    g_parser_resync_streak = 0;
    g_parser_escalation_count = 0;
    g_transport_restart_count = 0;
    /* Keep partial-frame baseline across on-demand start/stop cycles so
     * snapshot sessions have history for early outlier rejection. */
    g_partial_pkt_suspect_streak = 0U;
    g_resubmit_busy_count = 0;
    stream_urb_slots_reset();
    urb_done_ring_reset();
    /* Note: g_restart_attempted is NOT reset here — it is only reset in
     * usbh_video_run() (physical re-plug) per spec 10 §Fault handling:
     * "transition to camera unavailable until replugged". */
    g_stream_stop = false;

    LOG_I("[UVC] Parser policy: pkt_err_limit=%u trailer_max=%u partial_ratio=%u/%u adapt_streak=%u err_abort=%u err_count=%u err_adv_eof=%u soi_prefix=%u fid_drop_incomplete=%u hdr_trust_max=%u raw_dump=%u raw_max=%u fps_target=%u mps_pref=%u mps_cap=%u\r\n",
          (unsigned)UVC_FRAME_PKT_ERROR_LIMIT,
          (unsigned)UVC_MAX_JPEG_TRAILER_BYTES,
          (unsigned)UVC_PARTIAL_PKT_RATIO_NUM,
          (unsigned)UVC_PARTIAL_PKT_RATIO_DEN,
          (unsigned)UVC_PARTIAL_PKT_ADAPT_STREAK,
          (unsigned)UVC_ERR_PACKET_ABORT_FRAME,
          (unsigned)UVC_ERR_BIT_COUNT_AS_PKT_ERROR,
          (unsigned)UVC_ERR_BIT_ADVISORY_EOF_ONLY,
          (unsigned)UVC_SOI_REQUIRE_MARKER_PREFIX,
          (unsigned)UVC_FID_DROP_ON_INCOMPLETE,
          (unsigned)UVC_HEADER_LEN_TRUST_MAX,
          (unsigned)UVC_RAW_DUMP_ENABLE,
          (unsigned)UVC_RAW_DUMP_MAX_BYTES,
          (unsigned)UVC_TARGET_FPS,
          (unsigned)UVC_ISO_MPS_PREFERRED,
          (unsigned)UVC_ISO_MPS_CAP);

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
            uint32_t try_buf_size_per_urb = (uint32_t)mps * (uint32_t)pkt_try;
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

            LOG_W("[UVC] ISO alloc failed for %d URBs x %u pkts (buf=%u, SRAM free=%u) — retrying\r\n",
                  urb_try, (unsigned)pkt_try, (unsigned)try_buf_size_per_urb,
                  (unsigned)kfree_size());
            free_iso_urb_resources(g_stream_urbs, g_stream_iso_raw_bufs, (uint8_t)urb_try);
            for (int u = 0; u < urb_try; u++) {
                g_stream_iso_bufs[u] = NULL;
            }
        }
    }

    if (chosen_urb_count == 0) {
        LOG_E("[UVC] Unable to allocate ISO resources (MPS=%u, SRAM free=%u)\r\n",
              mps, (unsigned)kfree_size());
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

        rebuild_iso_packet_descriptors(urb, g_stream_iso_bufs[u], mps, g_iso_pkts_per_urb_active);

        int ret = usbh_submit_urb(urb);
        if (ret < 0) {
            LOG_E("[UVC] Initial ISO submit %d failed: %d\r\n", u, ret);
        }
    }

    set_cam_state(CAMERA_STREAMING);
    LOG_I("[UVC] Camera streaming — MJPEG %ux%u\r\n",
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
            rebuild_iso_packet_descriptors(pending, g_stream_iso_bufs[u], mps, g_iso_pkts_per_urb_active);
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

            process_completed_urb(done_urb, g_iso_pkts_per_urb_active, (uint8_t)slot, mps);

            if (!g_stream_stop && g_cam_state == CAMERA_STREAMING) {
                rebuild_iso_packet_descriptors(done_urb, g_stream_iso_bufs[slot], mps, g_iso_pkts_per_urb_active);
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
            LOG_W("[UVC] Stall detected — no URB progress for %d ms (%s)\r\n",
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
            LOG_W("[UVC] No complete frame for %u ms with active URBs (%s) — parser resync #%u\r\n",
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
                LOG_W("[UVC] Parser resync escalated (%u consecutive) — forcing transport restart\r\n",
                      (unsigned)g_parser_resync_streak);
                g_parser_resync_streak = 0;
                g_stall_detected = true;
            }
        }

        if (g_stall_detected) {
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

            /* Spec 10 §Fault handling: "Attempt to restart UVC streaming once.
             * If restart fails, transition to camera unavailable until replugged." */
            if (g_transport_restart_attempts >= MAX_TRANSPORT_RESTARTS) {
                LOG_E("[UVC] Transport stalls exceeded %u restarts — capture stopped (camera remains attached)\r\n",
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

            /* Kill outstanding URBs */
            for (int u = 0; u < g_iso_urb_count_active; u++) {
                if (!urb_ptr_aligned(g_stream_urbs[u])) {
                    LOG_W("[UVC] Skip invalid URB slot %d ptr=%p during restart kill\r\n",
                          u, g_stream_urbs[u]);
                    continue;
                }

                /* Guard against stale/corrupted header fields before kill. */
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

            /* Re-negotiate UVC stream state (SET_INTERFACE/probe/commit) to
             * recover controllers/cameras that stop producing ISO completions
             * after a stall. */
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
                uint16_t new_mps = vc->isoin_mps ? vc->isoin_mps : mps;
                uint32_t new_buf_size = (uint32_t)new_mps * (uint32_t)g_iso_pkts_per_urb_active;
                if (new_buf_size > buf_alloc_size_per_urb) {
                    LOG_E("[UVC] Restart MPS expanded (%u->%u), buffer too small\r\n",
                          (unsigned)buf_alloc_size_per_urb, (unsigned)new_buf_size);
                    set_cam_state(CAMERA_UNAVAILABLE);
                    break;
                }
                mps = new_mps;
                buf_size_per_urb = new_buf_size;
                g_cam_mode.isoin_mps = vc->isoin_mps;
                g_cam_mode.altsetting = reopen_alt;
                uint32_t ni = vc->probe.dwFrameInterval;
                g_cam_mode.fps = (uint8_t)((ni > 0U) ? (10000000U / ni) : 0U);
            }

            /* Reset frame assembly state */
            if (g_cur_frame_valid) {
                frame_free(&g_cur_frame);
            }
            g_cur_frame_valid = false;
            g_cur_frame_oversize = false;
            g_cur_frame_tainted = false;
            g_cur_frame_payload_pkts = 0U;
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

            /* Resubmit URBs */
            g_stream_stop = false;
            g_iso_pkts_per_urb_active = sanitize_iso_pkt_cap(g_iso_pkts_per_urb_active);
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

                rebuild_iso_packet_descriptors(urb, g_stream_iso_bufs[u], mps, g_iso_pkts_per_urb_active);

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
            LOG_I("[UVC] Stream restarted successfully\r\n");
        }

        if ((now - last_diag_tick) >= pdMS_TO_TICKS(5000)) {
            uint32_t ring_depth = (g_urb_done_head - g_urb_done_tail) & URB_DONE_RING_MASK;
            LOG_I("[UVCDBG] urb_done=%u ring=%u cb_drop=%u unknown=%u guard=%u pkt_cnt_clamp=%u pkt_len_clamp=%u pkt_range_drop=%u desc_repair=%u invalid_urb=%u busy_retry=%u pkt_err=%u sync_reset=%u sync_streak=%u sync_escalate=%u restarts=%u hdr_short=%u hdr_inv=%u hdr_err=%u hdr_err_adv=%u hdr_long=%u hdr_long_fix=%u hdr_long_drop=%u hdr_max=%u hdr_empty=%u fid_tgl=%u fid_drop=%u fid_ignore=%u fid_keep=%u eof=%u soi_resync=%u soi_reject=%u frame_start=%u frame_start_split=%u tail_ff=%u pkt=%u bytes=%llu oversize_drop=%u jpeg_bad=%u jpeg_trim=%u nosos=%u nosof=%u noeoi=%u nest_soi=%u trail=%u trail_excess=%u drop_tainted=%u drop_err_budget=%u drop_eof_incomplete=%u drop_sanitize=%u drop_err_pkt=%u raw_dump=%u tainted=%u\r\n",
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
                  (unsigned)g_hdr_error_advisory_count,
                  (unsigned)g_hdr_long_count,
                  (unsigned)g_hdr_long_salvage_count,
                  (unsigned)g_hdr_long_drop_count,
                  (unsigned)g_hdr_max_len_seen,
                  (unsigned)g_hdr_payload_empty_count,
                  (unsigned)g_hdr_fid_toggle_count, (unsigned)g_fid_incomplete_drop_count,
                  (unsigned)g_fid_incomplete_ignore_count,
                  (unsigned)g_fid_toggle_ignore_count,
                  (unsigned)g_hdr_eof_count, (unsigned)g_resync_soi_count,
                  (unsigned)g_soi_prefix_reject_count,
                  (unsigned)g_frame_start_count, (unsigned)g_frame_start_split_count,
                  (unsigned)(g_pending_soi_tail_ff ? 1U : 0U),
                  (unsigned)g_payload_pkt_count,
                  (unsigned long long)g_payload_bytes_total,
                  (unsigned)g_frame_oversize_drop_count,
                  (unsigned)g_jpeg_invalid_drop_count,
                  (unsigned)g_jpeg_trim_count,
                  (unsigned)g_jpeg_no_sos_count,
                  (unsigned)g_jpeg_no_sof_count,
                  (unsigned)g_jpeg_no_eoi_count,
                  (unsigned)g_jpeg_nested_soi_count,
                  (unsigned)g_jpeg_trailer_garbage_count,
                  (unsigned)g_jpeg_trailer_excess_drop_count,
                  (unsigned)g_drop_tainted_count,
                  (unsigned)g_drop_error_budget_count,
                  (unsigned)g_drop_eof_incomplete_count,
                  (unsigned)g_drop_sanitize_count,
                  (unsigned)g_drop_err_packet_frame_count,
                  (unsigned)g_raw_dump_count,
                  (unsigned)(g_cur_frame_tainted ? 1U : 0U));
            LOG_I("[UVCDBG] pkt_partial_drop=%u cur_pkts=%u pkt_avg=%u\r\n",
                  (unsigned)g_partial_pkt_drop_count,
                  (unsigned)g_cur_frame_payload_pkts,
                  (unsigned)((g_good_frame_pkt_ema_q8 + 128U) >> 8U));
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
    g_cur_frame_payload_pkts = 0U;
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

    LOG_I("[UVC] Streaming task stopped (frames captured: %" PRIu64 ")\r\n",
          (uint64_t)g_frames_captured);
    LOG_I("[UVC] Stop stats: urb_done=%u payload_urbs=%u pkt=%u bytes=%llu hdr_short=%u hdr_invalid=%u hdr_err=%u hdr_err_adv=%u hdr_long=%u hdr_long_fix=%u hdr_long_drop=%u hdr_max=%u hdr_empty=%u fid_tgl=%u fid_drop=%u fid_ignore=%u fid_keep=%u eof=%u soi_resync=%u soi_reject=%u frame_start=%u frame_start_split=%u jpeg_bad=%u jpeg_trim=%u nosos=%u nosof=%u noeoi=%u trail=%u trail_excess=%u drop_tainted=%u drop_err_budget=%u drop_eof_incomplete=%u drop_sanitize=%u drop_err_pkt=%u raw_dump=%u pkt_err=%u partial_drop=%u restarts=%u\r\n",
          (unsigned)g_urb_complete_count,
          (unsigned)g_urb_payload_completions,
          (unsigned)g_payload_pkt_count,
          (unsigned long long)g_payload_bytes_total,
          (unsigned)g_hdr_short_count,
          (unsigned)g_hdr_invalid_count,
          (unsigned)g_hdr_error_bit_count,
          (unsigned)g_hdr_error_advisory_count,
          (unsigned)g_hdr_long_count,
          (unsigned)g_hdr_long_salvage_count,
          (unsigned)g_hdr_long_drop_count,
          (unsigned)g_hdr_max_len_seen,
          (unsigned)g_hdr_payload_empty_count,
          (unsigned)g_hdr_fid_toggle_count,
          (unsigned)g_fid_incomplete_drop_count,
          (unsigned)g_fid_incomplete_ignore_count,
          (unsigned)g_fid_toggle_ignore_count,
          (unsigned)g_hdr_eof_count,
          (unsigned)g_resync_soi_count,
          (unsigned)g_soi_prefix_reject_count,
          (unsigned)g_frame_start_count,
          (unsigned)g_frame_start_split_count,
          (unsigned)g_jpeg_invalid_drop_count,
          (unsigned)g_jpeg_trim_count,
          (unsigned)g_jpeg_no_sos_count,
          (unsigned)g_jpeg_no_sof_count,
          (unsigned)g_jpeg_no_eoi_count,
          (unsigned)g_jpeg_trailer_garbage_count,
          (unsigned)g_jpeg_trailer_excess_drop_count,
          (unsigned)g_drop_tainted_count,
          (unsigned)g_drop_error_budget_count,
          (unsigned)g_drop_eof_incomplete_count,
          (unsigned)g_drop_sanitize_count,
          (unsigned)g_drop_err_packet_frame_count,
          (unsigned)g_raw_dump_count,
          (unsigned)g_pkt_error_drop_count,
          (unsigned)g_partial_pkt_drop_count,
          (unsigned)g_transport_restart_count);
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
    g_cur_frame_payload_pkts = 0U;
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
     * §Fault handling: "until replugged". */
    g_transport_restart_attempts = 0;
    /* Reset partial-frame baseline only on physical attach/re-plug so
     * per-session stop/start does not lose outlier history. */
    g_good_frame_pkt_ema_q8 = 0U;
    g_good_frame_pkt_samples = 0U;
    g_partial_pkt_suspect_streak = 0U;

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

    /* Select stable alt-setting (prefer conservative single-transaction MPS). */
    uint8_t alt = select_altsetting(video_class);
    uint16_t alt_mps = altsetting_mps(video_class, alt);

    LOG_I("[UVC] Selected MJPEG %ux%u  altsetting=%u (MPS=%u, preferred=%u, cap=%u)\r\n",
          w, h, alt, alt_mps,
          (unsigned)UVC_ISO_MPS_PREFERRED,
          (unsigned)UVC_ISO_MPS_CAP);

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
    LOG_I("[UVC] Negotiated interval=%u (100ns) → ~%u fps\r\n",
          (unsigned)negotiated_interval, (unsigned)negotiated_fps);

    /* Record negotiated mode */
    g_cam_mode.vid        = vid;
    g_cam_mode.pid        = pid;
    g_cam_mode.width      = w;
    g_cam_mode.height     = h;
    g_cam_mode.fps        = (uint8_t)(negotiated_fps > 255 ? 255 : negotiated_fps);
    g_cam_mode.format     = USBH_VIDEO_FORMAT_MJPEG;
    g_cam_mode.altsetting = alt;
    g_cam_mode.isoin_mps  = video_class->isoin_mps;
    g_video_class         = video_class;
    set_cam_state(CAMERA_ATTACHED);

    LOG_I("[UVC] Camera ready — MJPEG %ux%u @ %ufps  MPS=%u  EP=0x%02X\r\n",
          w, h, (unsigned)g_cam_mode.fps, video_class->isoin_mps,
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

int uvc_start_capture(void)
{
    if (!g_video_class) {
        return -1;
    }

    if (g_cam_state == CAMERA_STREAMING) {
        return 0; /* Already streaming */
    }

    if (g_cam_state != CAMERA_ATTACHED) {
        return -1;
    }

    /* Re-open only when stream endpoint state is missing. Avoid redundant
     * open/commit churn on every /stream request. */
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
            return -1;
        }
    }

    LOG_I("[UVC] Capture start requested (on-demand)\r\n");
    if (start_streaming() != 0) {
        /* If task creation failed, close stream state so next attempt can
         * renegotiate cleanly after memory pressure recovers. */
        (void)usbh_video_close(g_video_class);
        return -1;
    }
    return 0;
}

int uvc_stop_capture(void)
{
    if (!g_video_class) {
        return -1;
    }

    if (g_cam_state != CAMERA_STREAMING && g_cam_state != CAMERA_ATTACHED) {
        return -1;
    }

    stop_streaming();

    int ret = usbh_video_close(g_video_class);
    if (ret < 0) {
        LOG_E("[UVC] usbh_video_close failed in stop_capture: %d\r\n", ret);
        return -1;
    }

    set_cam_state(CAMERA_ATTACHED);
    return 0;
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
