#ifndef UVC_CAPTURE_H
#define UVC_CAPTURE_H

#include <stdint.h>
#include <stdbool.h>

/* Camera state visible to other modules (HTTP server, metrics) */
typedef enum {
    CAMERA_DETACHED = 0,
    CAMERA_ATTACHED,
    CAMERA_STREAMING,
    CAMERA_UNAVAILABLE,
} camera_state_t;

/* Negotiated mode info (read-only after negotiation) */
typedef struct {
    uint16_t vid;
    uint16_t pid;
    uint16_t width;
    uint16_t height;
    uint8_t  format;           /* USBH_VIDEO_FORMAT_MJPEG or UNCOMPRESSED */
    uint8_t  altsetting;       /* Selected bandwidth alt-setting */
    uint8_t  fps;              /* Negotiated FPS (camera may differ from request) */
    uint16_t isoin_mps;        /* ISO IN max packet size (after mult) */
} uvc_mode_t;

/*
 * Initialise USB host stack.
 * Call after board_init() and before vTaskStartScheduler().
 */
void uvc_capture_init(void);

/*
 * Get current camera state (thread-safe atomic read).
 */
camera_state_t uvc_get_camera_state(void);

/*
 * Get negotiated mode info.
 * Only valid when state >= CAMERA_ATTACHED.
 * Returns pointer to internal static struct (do not free).
 */
const uvc_mode_t *uvc_get_mode(void);

/*
 * Get total frames captured since last streaming start.
 */
uint64_t uvc_get_frames_captured(void);

#endif /* UVC_CAPTURE_H */
