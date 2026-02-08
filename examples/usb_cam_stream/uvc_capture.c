#include "uvc_capture.h"
#include "frame_pool.h"

#include "FreeRTOS.h"
#include "task.h"
#include "timers.h"

#include "usbh_core.h"
#include "usbh_video.h"

#include "qcc74x_core.h"
#include "qcc74x_name.h"

#include "shell.h"

#include <string.h>
#include <inttypes.h>

#define DBG_TAG "UVC"
#include "log.h"

/* ------------------------------------------------------------------ */
/* Configuration                                                       */
/* ------------------------------------------------------------------ */

/* Number of ISO packets per URB submission.
 * Each micro-frame delivers up to isoin_mps bytes.
 * 8 packets = 1 full frame (1ms at high-speed).
 * We use 16 packets (2ms) for double-buffering efficiency. */
#define ISO_PKTS_PER_URB    16

/* Number of URBs for double-buffering — submit 2 alternately */
#define ISO_URB_COUNT       2

/* Streaming task stack and priority */
#define STREAM_TASK_STACK   2048
#define STREAM_TASK_PRIO    14

/* Stall detection: no complete frame for this many ms → restart.
 * Spec requires >2 seconds, so use 2500ms. */
#define STALL_TIMEOUT_MS    2500

/* Preferred frame interval in 100ns units (10 fps = 1,000,000) */
#define PREFERRED_FPS           10
#define PREFERRED_INTERVAL_100NS (10000000 / PREFERRED_FPS) /* 1,000,000 */

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
static uint8_t      g_last_fid;
static bool         g_fid_initialized;
static volatile uint64_t g_frames_captured;

/* Stall detection */
static TimerHandle_t g_stall_timer;
static volatile bool g_stall_detected;

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

    for (uint8_t fi = 0; fi < vc->num_of_formats; fi++) {
        if (vc->format[fi].format_type != USBH_VIDEO_FORMAT_MJPEG) {
            continue;
        }
        for (uint8_t fri = 0; fri < vc->format[fi].num_of_frames; fri++) {
            uint16_t w = vc->format[fi].frame[fri].wWidth;
            uint16_t h = vc->format[fi].frame[fri].wHeight;

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
 * FPS selection policy (from spec 10-usb-uvc-capture §4):
 *  "If the camera's fps choices do not include 10, choose the nearest
 *   >= 10 if available; else choose the nearest below."
 *
 * Frame intervals are in 100ns units.  10 fps = 1,000,000.
 * Lower interval = higher fps.  We want the interval whose fps is
 * closest to PREFERRED_FPS, with preference for >= PREFERRED_FPS
 * (i.e. interval <= preferred_interval).
 *
 * Returns the chosen interval in 100ns units, or 0 if no selection
 * could be made (caller should fall back to PREFERRED_INTERVAL_100NS).
 */
static uint32_t select_best_frame_interval(const struct usbh_video_resolution *res)
{
    uint8_t n = res->bFrameIntervalType;

    if (n == 0) {
        /* Continuous or no interval data — rely on probe/commit negotiation */
        return 0;
    }

    if (n > USBH_VIDEO_MAX_FRAME_INTERVALS) {
        n = USBH_VIDEO_MAX_FRAME_INTERVALS;
    }

    /* Separate candidates: intervals <= preferred (fps >= 10) and > preferred (fps < 10) */
    uint32_t best_ge = 0;      /* best interval with fps >= preferred (interval <= pref) */
    uint32_t best_ge_diff = UINT32_MAX;
    uint32_t best_lt = 0;      /* best interval with fps < preferred (interval > pref) */
    uint32_t best_lt_diff = UINT32_MAX;

    for (uint8_t i = 0; i < n; i++) {
        uint32_t iv = res->dwFrameInterval[i];
        if (iv == 0) continue;

        if (iv <= PREFERRED_INTERVAL_100NS) {
            /* fps >= preferred */
            uint32_t diff = PREFERRED_INTERVAL_100NS - iv;
            if (diff < best_ge_diff) {
                best_ge_diff = diff;
                best_ge = iv;
            }
        } else {
            /* fps < preferred */
            uint32_t diff = iv - PREFERRED_INTERVAL_100NS;
            if (diff < best_lt_diff) {
                best_lt_diff = diff;
                best_lt = iv;
            }
        }
    }

    /* Prefer nearest >= 10fps; else nearest below */
    if (best_ge != 0) return best_ge;
    if (best_lt != 0) return best_lt;
    return 0;
}

/*
 * Pick the highest-bandwidth alt-setting (highest MPS) for ISO IN.
 * Alt-setting 0 is the zero-bandwidth setting, so start from 1.
 */
static uint8_t select_altsetting(struct usbh_video *vc)
{
    uint8_t best_alt = 1;
    uint16_t best_mps = 0;

    for (uint8_t i = 1; i < vc->num_of_intf_altsettings; i++) {
        struct usb_endpoint_descriptor *ep =
            &vc->hport->config.intf[vc->data_intf].altsetting[i].ep[0].ep_desc;

        uint8_t mult = (ep->wMaxPacketSize &
                        USB_MAXPACKETSIZE_ADDITIONAL_TRANSCATION_MASK) >>
                       USB_MAXPACKETSIZE_ADDITIONAL_TRANSCATION_SHIFT;
        uint16_t mps = (ep->wMaxPacketSize & USB_MAXPACKETSIZE_MASK) * (mult + 1);

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
static void process_iso_data(const uint8_t *data, uint32_t len)
{
    if (len < 2) {
        return; /* Too short for a UVC payload header */
    }

    uint8_t header_len = data[0];
    uint8_t header_info = data[1];

    if (header_len < 2 || header_len > len) {
        return; /* Invalid header */
    }

    /* Extract FID and EOF bits */
    uint8_t fid = header_info & 0x01;
    uint8_t eof = (header_info >> 1) & 0x01;
    uint8_t err = (header_info >> 6) & 0x01;

    /* Payload data follows the header */
    const uint8_t *payload = data + header_len;
    uint32_t payload_len = len - header_len;

    /* Detect frame boundary via FID toggle */
    if (g_fid_initialized && fid != g_last_fid) {
        /* FID toggled — previous frame is complete (if we had one) */
        if (g_cur_frame_valid && g_cur_frame.len > 0) {
            g_cur_frame.timestamp_ms =
                (uint32_t)(xTaskGetTickCount() * portTICK_PERIOD_MS);
            frame_queue_push(&g_cur_frame);
            g_frames_captured++;
            g_cur_frame_valid = false;
        }
    }
    g_last_fid = fid;
    g_fid_initialized = true;

    /* If we have error bit set, discard current frame */
    if (err) {
        if (g_cur_frame_valid) {
            frame_free(&g_cur_frame);
            g_cur_frame_valid = false;
        }
        return;
    }

    /* Allocate a new frame buffer if needed */
    if (!g_cur_frame_valid) {
        if (frame_alloc(&g_cur_frame) != 0) {
            /* No buffers available — drop data */
            return;
        }
        g_cur_frame.len = 0;
        g_cur_frame_valid = true;
    }

    /* Append payload data to current frame */
    if (payload_len > 0 && g_cur_frame_valid) {
        uint32_t space = FRAME_MAX_SIZE - g_cur_frame.len;
        uint32_t copy_len = payload_len < space ? payload_len : space;
        if (copy_len > 0) {
            memcpy(g_cur_frame.data + g_cur_frame.len, payload, copy_len);
            g_cur_frame.len += copy_len;
        }
    }

    /* EOF marks end of frame */
    if (eof && g_cur_frame_valid && g_cur_frame.len > 0) {
        g_cur_frame.timestamp_ms =
            (uint32_t)(xTaskGetTickCount() * portTICK_PERIOD_MS);
        frame_queue_push(&g_cur_frame);
        g_frames_captured++;
        g_cur_frame_valid = false;
    }
}

/* ------------------------------------------------------------------ */
/* ISO URB completion callback                                         */
/* ------------------------------------------------------------------ */

static void iso_complete_cb(void *arg, int nbytes)
{
    struct usbh_urb *urb = (struct usbh_urb *)arg;
    (void)nbytes;

    if (!urb || g_stream_stop) {
        return;
    }

    /* Process each ISO packet */
    for (uint32_t i = 0; i < urb->num_of_iso_packets; i++) {
        struct usbh_iso_frame_packet *pkt = &urb->iso_packet[i];

        if (pkt->errorcode == 0 && pkt->actual_length > 0) {
            process_iso_data(pkt->transfer_buffer, pkt->actual_length);
        }
        /* Reset for resubmission */
        pkt->actual_length = 0;
        pkt->errorcode = 0;
    }

    /* Resubmit URB for continuous streaming */
    if (!g_stream_stop && g_cam_state == CAMERA_STREAMING) {
        urb->errorcode = 0;
        int ret = usbh_submit_urb(urb);
        if (ret < 0) {
            LOG_E("[UVC] ISO resubmit failed: %d\r\n", ret);
        }
    }
}

/* ------------------------------------------------------------------ */
/* Stall detection timer callback                                      */
/* ------------------------------------------------------------------ */

static void stall_timer_cb(TimerHandle_t timer)
{
    (void)timer;

    static uint64_t last_frames = 0;

    if (g_cam_state != CAMERA_STREAMING) {
        last_frames = g_frames_captured;
        return;
    }

    if (g_frames_captured == last_frames) {
        /* No new frames since last check */
        LOG_W("[UVC] Stall detected — no frames for %d ms\r\n",
              STALL_TIMEOUT_MS);
        g_stall_detected = true;
    }

    last_frames = g_frames_captured;
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
        g_cam_state = CAMERA_UNAVAILABLE;
        g_stream_task = NULL;
        vTaskDelete(NULL);
        return;
    }

    uint16_t mps = vc->isoin_mps;
    if (mps == 0) {
        mps = 512; /* fallback */
    }

    LOG_I("[UVC] Starting ISO streaming, MPS=%u, %d pkts/URB\r\n",
          mps, ISO_PKTS_PER_URB);

    /* Initialize frame assembly state */
    g_cur_frame_valid = false;
    g_fid_initialized = false;
    g_frames_captured = 0;
    g_stall_detected = false;
    g_stream_stop = false;

    /* Initialize frame pool */
    frame_pool_init();

    /* Allocate URB structures with ISO packet arrays.
     * struct usbh_urb has a flexible array member iso_packet[0],
     * so we allocate the full size including the packet descriptors. */
    uint32_t urb_alloc_size = sizeof(struct usbh_urb) +
                              ISO_PKTS_PER_URB * sizeof(struct usbh_iso_frame_packet);

    /* Allocate data buffers for ISO packets — contiguous per URB */
    uint32_t buf_size_per_urb = (uint32_t)mps * ISO_PKTS_PER_URB;

    struct usbh_urb *urbs[ISO_URB_COUNT];
    uint8_t *iso_bufs[ISO_URB_COUNT];

    for (int u = 0; u < ISO_URB_COUNT; u++) {
        urbs[u] = (struct usbh_urb *)pvPortMalloc(urb_alloc_size);
        iso_bufs[u] = (uint8_t *)pvPortMalloc(buf_size_per_urb);

        if (!urbs[u] || !iso_bufs[u]) {
            LOG_E("[UVC] Failed to alloc URB/buffer %d\r\n", u);
            /* Clean up what was allocated */
            for (int j = 0; j <= u; j++) {
                if (urbs[j]) vPortFree(urbs[j]);
                if (iso_bufs[j]) vPortFree(iso_bufs[j]);
            }
            g_cam_state = CAMERA_UNAVAILABLE;
            g_stream_task = NULL;
            vTaskDelete(NULL);
            return;
        }

        memset(urbs[u], 0, urb_alloc_size);
    }

    /* Configure and submit URBs */
    for (int u = 0; u < ISO_URB_COUNT; u++) {
        struct usbh_urb *urb = urbs[u];

        urb->hport = vc->hport;
        urb->ep = vc->isoin;
        urb->transfer_buffer = iso_bufs[u];
        urb->transfer_buffer_length = buf_size_per_urb;
        urb->num_of_iso_packets = ISO_PKTS_PER_URB;
        urb->timeout = 0; /* async mode */
        urb->complete = iso_complete_cb;
        urb->arg = urb;

        /* Set up per-packet descriptors */
        for (int p = 0; p < ISO_PKTS_PER_URB; p++) {
            urb->iso_packet[p].transfer_buffer = iso_bufs[u] + (uint32_t)p * mps;
            urb->iso_packet[p].transfer_buffer_length = mps;
            urb->iso_packet[p].actual_length = 0;
            urb->iso_packet[p].errorcode = 0;
        }

        int ret = usbh_submit_urb(urb);
        if (ret < 0) {
            LOG_E("[UVC] Initial ISO submit %d failed: %d\r\n", u, ret);
        }
    }

    g_cam_state = CAMERA_STREAMING;
    LOG_I("[UVC] Camera streaming — MJPEG %ux%u\r\n",
          g_cam_mode.width, g_cam_mode.height);

    /* Start stall detection timer */
    if (g_stall_timer) {
        xTimerStart(g_stall_timer, 0);
    }

    /* Main loop: just wait for stop signal or stall */
    while (!g_stream_stop && g_cam_state == CAMERA_STREAMING) {
        if (g_stall_detected) {
            LOG_W("[UVC] Attempting stream restart after stall\r\n");

            /* Kill outstanding URBs */
            for (int u = 0; u < ISO_URB_COUNT; u++) {
                if (urbs[u]->hcpriv) {
                    usbh_kill_urb(urbs[u]);
                }
            }

            /* Try to restart: close and reopen video */
            usbh_video_close(vc);
            vTaskDelay(pdMS_TO_TICKS(100));

            int ret = usbh_video_open(vc, g_cam_mode.format,
                                       g_cam_mode.width, g_cam_mode.height,
                                       g_cam_mode.altsetting);
            if (ret < 0) {
                LOG_E("[UVC] Restart failed: %d — camera unavailable\r\n", ret);
                g_cam_state = CAMERA_UNAVAILABLE;
                break;
            }

            /* Reset frame assembly state */
            if (g_cur_frame_valid) {
                frame_free(&g_cur_frame);
                g_cur_frame_valid = false;
            }
            g_fid_initialized = false;
            g_stall_detected = false;

            /* Resubmit URBs */
            for (int u = 0; u < ISO_URB_COUNT; u++) {
                struct usbh_urb *urb = urbs[u];
                memset(urb, 0, sizeof(struct usbh_urb));
                urb->hport = vc->hport;
                urb->ep = vc->isoin;
                urb->transfer_buffer = iso_bufs[u];
                urb->transfer_buffer_length = buf_size_per_urb;
                urb->num_of_iso_packets = ISO_PKTS_PER_URB;
                urb->timeout = 0;
                urb->complete = iso_complete_cb;
                urb->arg = urb;

                for (int p = 0; p < ISO_PKTS_PER_URB; p++) {
                    urb->iso_packet[p].transfer_buffer = iso_bufs[u] + (uint32_t)p * mps;
                    urb->iso_packet[p].transfer_buffer_length = mps;
                    urb->iso_packet[p].actual_length = 0;
                    urb->iso_packet[p].errorcode = 0;
                }

                ret = usbh_submit_urb(urb);
                if (ret < 0) {
                    LOG_E("[UVC] Restart submit %d failed: %d\r\n", u, ret);
                    g_cam_state = CAMERA_UNAVAILABLE;
                    break;
                }
            }

            if (g_cam_state == CAMERA_UNAVAILABLE) {
                break;
            }
            LOG_I("[UVC] Stream restarted successfully\r\n");
        }

        vTaskDelay(pdMS_TO_TICKS(50));
    }

    /* Cleanup: stop timer, kill URBs, free memory */
    if (g_stall_timer) {
        xTimerStop(g_stall_timer, 0);
    }

    for (int u = 0; u < ISO_URB_COUNT; u++) {
        if (urbs[u]->hcpriv) {
            usbh_kill_urb(urbs[u]);
        }
    }

    /* Free any partial frame */
    if (g_cur_frame_valid) {
        frame_free(&g_cur_frame);
        g_cur_frame_valid = false;
    }

    /* Drain queued frames to return pool blocks */
    frame_queue_drain();

    /* Free URBs and buffers */
    for (int u = 0; u < ISO_URB_COUNT; u++) {
        vPortFree(urbs[u]);
        vPortFree(iso_bufs[u]);
    }

    if (g_cam_state == CAMERA_STREAMING) {
        g_cam_state = CAMERA_ATTACHED;
    }

    LOG_I("[UVC] Streaming task stopped (frames captured: %" PRIu64 ")\r\n",
          (uint64_t)g_frames_captured);
    g_stream_task = NULL;
    vTaskDelete(NULL);
}

/* ------------------------------------------------------------------ */
/* Start/stop streaming                                                */
/* ------------------------------------------------------------------ */

static void start_streaming(void)
{
    if (g_stream_task) {
        return; /* Already running */
    }

    /* Create stall detection timer if not yet created */
    if (!g_stall_timer) {
        g_stall_timer = xTimerCreate("uvc_stall",
                                      pdMS_TO_TICKS(STALL_TIMEOUT_MS),
                                      pdTRUE, /* auto-reload */
                                      NULL,
                                      stall_timer_cb);
    }

    g_stream_stop = false;
    xTaskCreate(streaming_task, "uvc_iso", STREAM_TASK_STACK, NULL,
                STREAM_TASK_PRIO, &g_stream_task);
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

    LOG_I("[UVC] Camera attached  VID=0x%04X  PID=0x%04X\r\n", vid, pid);

    /* List all supported formats/resolutions (debug) */
    usbh_video_list_info(video_class);

    /* Select best MJPEG resolution */
    uint8_t format_idx, frame_idx;
    uint16_t w, h;

    if (!select_best_resolution(video_class, &format_idx, &frame_idx, &w, &h)) {
        LOG_E("[UVC] No MJPEG format found — camera unusable\r\n");
        g_cam_state = CAMERA_UNAVAILABLE;
        return;
    }

    /* Select highest-bandwidth alt-setting */
    uint8_t alt = select_altsetting(video_class);

    LOG_I("[UVC] Selected MJPEG %ux%u  altsetting=%u\r\n", w, h, alt);

    /* Select best frame interval from camera's available choices per spec §4:
     * "choose nearest >= 10fps if available; else nearest below" */
    const struct usbh_video_resolution *sel_res =
        &video_class->format[format_idx - 1].frame[frame_idx - 1];
    uint32_t chosen_interval = select_best_frame_interval(sel_res);
    if (chosen_interval == 0) {
        /* No discrete intervals available — request preferred and let camera adjust */
        chosen_interval = PREFERRED_INTERVAL_100NS;
        LOG_I("[UVC] No discrete intervals — requesting %u fps\r\n",
              (unsigned)PREFERRED_FPS);
    } else {
        uint32_t chosen_fps = (chosen_interval > 0) ? (10000000 / chosen_interval) : 0;
        LOG_I("[UVC] Selected interval=%u (100ns) → ~%u fps from %u available\r\n",
              (unsigned)chosen_interval, (unsigned)chosen_fps,
              (unsigned)sel_res->bFrameIntervalType);
    }
    video_class->probe.dwFrameInterval = chosen_interval;

    /* Negotiate with camera */
    int ret = usbh_video_open(video_class, USBH_VIDEO_FORMAT_MJPEG, w, h, alt);
    if (ret < 0) {
        LOG_E("[UVC] usbh_video_open failed: %d\r\n", ret);
        g_cam_state = CAMERA_UNAVAILABLE;
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
    g_cam_state           = CAMERA_ATTACHED;

    LOG_I("[UVC] Camera ready — MJPEG %ux%u @ %ufps  MPS=%u\r\n",
          w, h, (unsigned)g_cam_mode.fps, video_class->isoin_mps);

    /* Auto-start streaming */
    start_streaming();
}

void usbh_video_stop(struct usbh_video *video_class)
{
    LOG_I("[UVC] Camera detached\r\n");

    /* Stop streaming task first */
    stop_streaming();

    g_cam_state   = CAMERA_DETACHED;
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

    int ret = usbh_video_open(g_video_class, g_cam_mode.format,
                               g_cam_mode.width, g_cam_mode.height,
                               g_cam_mode.altsetting);
    if (ret < 0) {
        LOG_E("[UVC] usbh_video_open failed in start_capture: %d\r\n", ret);
        return -1;
    }

    start_streaming();
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

    g_cam_state = CAMERA_ATTACHED;
    return 0;
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
