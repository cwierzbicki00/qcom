#ifndef UVC_CAPTURE_H
#define UVC_CAPTURE_H

#include <stdint.h>
#include <stdbool.h>
#include "frame_pool.h"

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

/*
 * Start capture: open UVC stream and begin ISO transfers.
 * Requires camera in CAMERA_ATTACHED state.
 * Returns 0 on success, -1 on error.
 */
int uvc_start_capture(void);

/*
 * Stop capture: stop ISO transfers and close UVC stream.
 * Transitions camera from STREAMING back to ATTACHED.
 * Returns 0 on success, -1 on error.
 */
int uvc_stop_capture(void);

/*
 * Dequeue the next completed frame.
 * Blocks up to timeout_ms.  Returns 0 on success, -1 on timeout.
 * Caller must call uvc_frame_release() when done with the frame.
 */
int uvc_dequeue_frame(frame_t *frame, uint32_t timeout_ms);

/*
 * Release a dequeued frame back to the buffer pool.
 * Caller must not use frame->data after this call.
 */
void uvc_frame_release(frame_t *frame);

/*
 * Camera state change callback.
 * Called from ISR or task context when camera state transitions.
 * Keep the callback lightweight (e.g. send a notification, set a flag).
 */
typedef void (*uvc_state_callback_t)(camera_state_t new_state);

/*
 * Register a callback to be notified when camera state changes.
 * Only one callback is supported; subsequent calls replace the previous.
 * Pass NULL to unregister.
 */
void uvc_register_state_callback(uvc_state_callback_t cb);

#endif /* UVC_CAPTURE_H */
