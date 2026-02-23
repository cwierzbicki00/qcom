#ifndef HTTP_SERVER_H
#define HTTP_SERVER_H

#include <stdint.h>
#include <stdbool.h>

/* Compatibility counters consumed by uvc_capture stall heuristics. */
typedef struct {
    volatile uint64_t frames_dequeued;
    volatile uint64_t frames_dropped;
    volatile uint64_t frames_sent;
    volatile bool stream_client_connected;
} http_counters_t;

const http_counters_t *http_get_counters(void);
void http_stream_set_connected(bool connected);
void http_stream_note_dequeued(void);
void http_stream_note_sent(void);
void http_stream_note_dropped(void);
void http_stream_reset(void);

/* Start lightweight HTTP server (/snapshot(.jpg), /status.json). */
void http_server_start(void);

#endif /* HTTP_SERVER_H */
