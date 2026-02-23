#ifndef FRAME_POOL_H
#define FRAME_POOL_H

#include <stdint.h>
#include <stdbool.h>

/* Maximum JPEG frame size.
 * 320 KB avoids truncating large 640x480 MJPEG frames from high-quality webcams. */
#define FRAME_MAX_SIZE      (320 * 1024)

/* Number of frame buffers in the pool.
 * 4 keeps full-frame headroom while preserving PSRAM for USB/Wi-Fi stacks
 * on lower-available-memory builds. */
#define FRAME_POOL_COUNT    4

/* Keep queue single-entry so consumers always get the newest completed frame. */
#define FRAME_QUEUE_DEPTH   1

/* Frame descriptor passed through the queue */
typedef struct {
    uint8_t *data;          /* Points into block pool (FRAME_MAX_SIZE bytes) */
    uint32_t len;           /* Actual JPEG payload size */
    uint32_t timestamp_ms;  /* xTaskGetTickCount() * portTICK_PERIOD_MS at capture */
} frame_t;

/*
 * Initialise the frame buffer pool and ready queue.
 * Must be called once from a task context (uses FreeRTOS primitives).
 * Returns 0 on success, -1 on error.
 */
int frame_pool_init(void);

/*
 * Allocate a frame buffer from the pool.
 * Returns 0 on success with *frame populated (data points to FRAME_MAX_SIZE bytes).
 * Returns -1 if no buffers available (all in-flight).
 * len and timestamp_ms are zeroed; caller must fill them in.
 */
int frame_alloc(frame_t *frame);

/*
 * Return a frame buffer to the pool.
 * The caller must not use frame->data after this call.
 */
void frame_free(frame_t *frame);

/*
 * Push a completed frame onto the ready queue.
 * If the queue is full the oldest frame is dropped (freed back to pool)
 * so this call never fails for a valid frame.
 */
void frame_queue_push(const frame_t *frame);

/*
 * Pop the next frame from the ready queue.
 * Blocks up to timeout_ms.  Returns 0 on success, -1 on timeout.
 */
int frame_queue_pop(frame_t *frame, uint32_t timeout_ms);

/*
 * Pop the most recent frame from the ready queue.
 * Blocks up to timeout_ms waiting for first frame, then drains any newer
 * frames immediately and returns only the newest one (older drained frames
 * are freed back to pool).
 * Returns 0 on success, -1 on timeout.
 */
int frame_queue_pop_latest(frame_t *frame, uint32_t timeout_ms);

/*
 * Drain all frames from the ready queue, freeing each back to the pool.
 * Call when stopping the capture pipeline to prevent pool block leaks.
 */
void frame_queue_drain(void);

/*
 * Drop the oldest queued frame (if any) and free its backing buffer.
 * Returns true if a frame was dropped, false if queue was empty.
 */
bool frame_queue_drop_oldest(void);

/*
 * Query pool statistics.
 * Any pointer may be NULL if not needed.
 */
void frame_pool_stats(uint32_t *total, uint32_t *free_count,
                      uint32_t *queued);

#endif /* FRAME_POOL_H */
