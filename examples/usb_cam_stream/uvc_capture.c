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

#define DBG_TAG "UVC"
#include "log.h"

/* ------------------------------------------------------------------ */
/* State                                                               */
/* ------------------------------------------------------------------ */

static volatile camera_state_t g_cam_state = CAMERA_DETACHED;
static uvc_mode_t              g_cam_mode;
static struct usbh_video      *g_video_class;

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

    /* Negotiate with camera */
    int ret = usbh_video_open(video_class, USBH_VIDEO_FORMAT_MJPEG, w, h, alt);
    if (ret < 0) {
        LOG_E("[UVC] usbh_video_open failed: %d\r\n", ret);
        g_cam_state = CAMERA_UNAVAILABLE;
        return;
    }

    /* Record negotiated mode */
    g_cam_mode.vid        = vid;
    g_cam_mode.pid        = pid;
    g_cam_mode.width      = w;
    g_cam_mode.height     = h;
    g_cam_mode.format     = USBH_VIDEO_FORMAT_MJPEG;
    g_cam_mode.altsetting = alt;
    g_cam_mode.isoin_mps  = video_class->isoin_mps;
    g_video_class         = video_class;
    g_cam_state           = CAMERA_ATTACHED;

    LOG_I("[UVC] Camera ready — MJPEG %ux%u  MPS=%u\r\n",
          w, h, video_class->isoin_mps);
}

void usbh_video_stop(struct usbh_video *video_class)
{
    LOG_I("[UVC] Camera detached\r\n");
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

/* ------------------------------------------------------------------ */
/* CLI: cam_info                                                       */
/* ------------------------------------------------------------------ */

static int cmd_cam_info(int argc, char **argv)
{
    (void)argc; (void)argv;

    camera_state_t st = g_cam_state;
    const char *state_str;

    switch (st) {
        case CAMERA_DETACHED:    state_str = "DETACHED";    break;
        case CAMERA_ATTACHED:    state_str = "ATTACHED";    break;
        case CAMERA_STREAMING:   state_str = "STREAMING";   break;
        case CAMERA_UNAVAILABLE: state_str = "UNAVAILABLE"; break;
        default:                 state_str = "UNKNOWN";     break;
    }

    printf("Camera state : %s\r\n", state_str);
    if (st >= CAMERA_ATTACHED) {
        printf("  VID/PID    : 0x%04X / 0x%04X\r\n", g_cam_mode.vid, g_cam_mode.pid);
        printf("  Mode       : MJPEG %ux%u\r\n", g_cam_mode.width, g_cam_mode.height);
        printf("  Alt-setting: %u\r\n", g_cam_mode.altsetting);
        printf("  ISO IN MPS : %u bytes\r\n", g_cam_mode.isoin_mps);
    }
    return 0;
}
SHELL_CMD_EXPORT_ALIAS(cmd_cam_info, cam_info, Show camera info);
