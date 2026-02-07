#ifndef HTTP_SERVER_H
#define HTTP_SERVER_H

#include <stdint.h>
#include <stdbool.h>

/* Streaming counters (read by /status.json and metrics) */
typedef struct {
    volatile uint64_t frames_dequeued;
    volatile uint64_t frames_dropped;
    volatile uint64_t frames_sent;
    volatile bool     stream_client_connected;
} http_counters_t;

/*
 * Get pointer to the global counters struct (read-only for callers).
 */
const http_counters_t *http_get_counters(void);

/*
 * Start the HTTP server task.
 * Requires: tcpip_init() done, frame_pool_init() done.
 * Creates a FreeRTOS task that listens on port 80.
 */
void http_server_start(void);

#endif /* HTTP_SERVER_H */
