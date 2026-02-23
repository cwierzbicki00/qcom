#include "http_server.h"
#include "uvc_capture.h"
#include "wifi_ap.h"

#include "FreeRTOS.h"
#include "task.h"
#include "mem.h"

#include <lwip/sockets.h>
#include <lwip/inet.h>
#include <string.h>
#include <stdio.h>
#include <inttypes.h>
#include <errno.h>

#include "shell.h"

#define DBG_TAG "HTTP"
#include "log.h"

/* ------------------------------------------------------------------ */
/* Configuration                                                       */
/* ------------------------------------------------------------------ */

#define HTTP_PORT           80
#define HTTP_LISTEN_BACKLOG 2
#define HTTP_TASK_STACK     2048
#define HTTP_TASK_PRIO      8
#define HTTP_RECV_BUF_SIZE  512
#define HTTP_HDR_BUF_SIZE   256
#define STREAM_TASK_STACK   4096
#define STREAM_TASK_PRIO    9

/* Send timeout for streaming client (ms) */
#define STREAM_SEND_TIMEOUT_MS 3000

/* Optional extra pacing in sender path; 0 disables sender-side throttling. */
#define STREAM_FRAME_INTERVAL_MS 0

/* Keep socket writes bounded for lwIP send path stability on embedded targets. */
#define STREAM_SEND_CHUNK_BYTES 1460

/* End stream if no frame arrives for this long.
 * Keep this above UVC stall-detect/restart windows so brief transport recovery
 * does not force unnecessary HTTP reconnect churn. */
#define STREAM_NO_FRAME_TIMEOUT_MS 12000
/* Drop stale frames so stream favors freshness over lag buildup. */
#define STREAM_MAX_FRAME_AGE_MS    800

/* Snapshot tuning: prioritize returning a complete, non-garbled frame quickly. */
#define SNAPSHOT_TIMEOUT_MS        2500
#define SNAPSHOT_DEQUEUE_MS         120
#define SNAPSHOT_WARMUP_FRAMES        2
#define SNAPSHOT_MIN_VALID_FRAMES     2
#define SNAPSHOT_MIN_JPEG_BYTES    8192
#define SNAPSHOT_TARGET_JPEG_BYTES 24000
/* ------------------------------------------------------------------ */
/* Global counters                                                     */
/* ------------------------------------------------------------------ */

static http_counters_t g_counters;

const http_counters_t *http_get_counters(void)
{
    return &g_counters;
}

/* ------------------------------------------------------------------ */
/* Static HTML landing page                                            */
/* ------------------------------------------------------------------ */

static const char landing_page[] =
    "<html><head><title>QCC748M-CAM</title></head><body>"
    "<h1>QCC748M-CAM</h1>"
    "<p>IP: " AP_IP_ADDR "</p>"
    "<img src=\"/stream\">"
    "<p><a href=\"/snapshot\">Snapshot</a> | "
    "<a href=\"/status.json\">Status</a></p>"
    "</body></html>";

/* ------------------------------------------------------------------ */
/* HTTP response helpers                                               */
/* ------------------------------------------------------------------ */

static int send_all(int sock, const void *buf, int len)
{
    const uint8_t *p = (const uint8_t *)buf;
    int remaining = len;
    TickType_t last_progress_tick = xTaskGetTickCount();
    TickType_t send_timeout_ticks = pdMS_TO_TICKS(STREAM_SEND_TIMEOUT_MS);
    if (send_timeout_ticks == 0) {
        send_timeout_ticks = 1;
    }

    while (remaining > 0) {
        int chunk = (remaining > STREAM_SEND_CHUNK_BYTES) ? STREAM_SEND_CHUNK_BYTES : remaining;
        int n = send(sock, p, chunk, 0);
        if (n <= 0) {
            int err = errno;
            if (err == EAGAIN || err == EWOULDBLOCK) {
                TickType_t now = xTaskGetTickCount();
                if ((now - last_progress_tick) >= send_timeout_ticks) {
                    errno = ETIMEDOUT;
                    return -1;
                }
                vTaskDelay(pdMS_TO_TICKS(2));
                continue;
            }
            return -1;
        }
        p += n;
        remaining -= n;
        last_progress_tick = xTaskGetTickCount();
    }
    return len;
}

static void send_response(int sock, const char *status,
                          const char *content_type,
                          const void *body, int body_len)
{
    char hdr[HTTP_HDR_BUF_SIZE];
    int hlen = snprintf(hdr, sizeof(hdr),
                        "HTTP/1.1 %s\r\n"
                        "Content-Type: %s\r\n"
                        "Content-Length: %d\r\n"
                        "Connection: close\r\n"
                        "\r\n",
                        status, content_type, body_len);

    send_all(sock, hdr, hlen);
    if (body && body_len > 0) {
        send_all(sock, body, body_len);
    }
}

static void send_error(int sock, const char *status, const char *message)
{
    send_response(sock, status, "text/plain", message, (int)strlen(message));
}

static bool frame_has_jpeg_markers(const frame_t *frame)
{
    if (!frame || !frame->data || frame->len < 4U) {
        return false;
    }
    if (frame->data[0] != 0xFFU || frame->data[1] != 0xD8U) {
        return false;
    }
    return true;
}

static int32_t find_jpeg_eoi(const uint8_t *buf, uint32_t len)
{
    if (!buf || len < 4U) {
        return -1;
    }

    for (uint32_t i = 2U; i + 1U < len; i++) {
        if (buf[i] == 0xFFU && buf[i + 1U] == 0xD9U) {
            return (int32_t)i;
        }
    }
    return -1;
}

static int32_t find_jpeg_sos(const uint8_t *buf, uint32_t len)
{
    if (!buf || len < 4U) {
        return -1;
    }
    for (uint32_t i = 2U; i + 1U < len; i++) {
        if (buf[i] == 0xFFU && buf[i + 1U] == 0xDAU) {
            return (int32_t)i;
        }
    }
    return -1;
}

/* Validate boundaries and return safe payload length to send.
 * Capture-side parser already enforces SOI/SOS/EOI integrity; keep this check
 * lightweight to avoid false negatives on valid frames. */
static bool frame_extract_valid_jpeg(const frame_t *frame, uint32_t *out_len)
{
    if (!frame_has_jpeg_markers(frame)) {
        return false;
    }

    int32_t eoi = find_jpeg_eoi(frame->data, frame->len);
    int32_t sos;
    if (eoi < 0) {
        return false;
    }
    uint32_t eoi_end = (uint32_t)eoi + 2U;
    if (eoi_end < 4U || eoi_end > frame->len) {
        return false;
    }

    /* Require SOS marker before EOI; prevents returning malformed buffers
     * as snapshot/stream payloads when parser loses sync under load. */
    sos = find_jpeg_sos(frame->data, eoi_end);
    if (sos < 0 || (uint32_t)sos >= (uint32_t)eoi) {
        return false;
    }

    if (out_len) {
        *out_len = eoi_end;
    }
    return true;
}

/* ------------------------------------------------------------------ */
/* GET / — Landing page                                                */
/* ------------------------------------------------------------------ */

static void handle_root(int sock)
{
    send_response(sock, "200 OK", "text/html",
                  landing_page, (int)(sizeof(landing_page) - 1));
}

/* ------------------------------------------------------------------ */
/* GET /stream — Multipart MJPEG stream                                */
/* ------------------------------------------------------------------ */

static volatile bool g_stream_active;
static volatile bool g_camera_gone = true;   /* Set by UVC state callback */
static volatile uint32_t g_stream_session_id;
static char          g_stream_client_ip[16];

static void stop_capture_for_session(uint32_t session_id, const char *reason)
{
    if (session_id == 0U) {
        return;
    }

    if (uvc_stop_capture_session(session_id) == 0) {
        LOG_I("[HTTP] Capture stop requested (session=%lu, %s)\r\n",
              (unsigned long)session_id,
              reason ? reason : "none");
    }
}

/* Camera state change callback — sets flag so stream task can exit promptly */
static void on_camera_state_change(camera_state_t new_state)
{
    if (new_state == CAMERA_DETACHED || new_state == CAMERA_UNAVAILABLE) {
        g_camera_gone = true;
    } else {
        g_camera_gone = false;
    }
}

/* Context passed to the stream task (allocated by caller, freed by task) */
typedef struct {
    int                sock;
    struct sockaddr_in client_addr;
    uint32_t           session_id;
} stream_task_ctx_t;

static void stream_task(void *arg)
{
    stream_task_ctx_t *ctx = (stream_task_ctx_t *)arg;
    int sock = ctx->sock;
    uint32_t session_id = ctx->session_id;

    /* Record client IP */
    inet_ntoa_r(ctx->client_addr.sin_addr, g_stream_client_ip,
                sizeof(g_stream_client_ip));
    vPortFree(ctx);
    ctx = NULL;

    LOG_I("[HTTP] Stream client connected: %s (session=%lu)\r\n",
          g_stream_client_ip, (unsigned long)session_id);

    /* Set send timeout to avoid blocking forever on slow client */
    struct timeval tv = { .tv_sec = STREAM_SEND_TIMEOUT_MS / 1000,
                          .tv_usec = (STREAM_SEND_TIMEOUT_MS % 1000) * 1000 };
    setsockopt(sock, SOL_SOCKET, SO_SNDTIMEO, &tv, sizeof(tv));

    /* Send multipart response header */
    static const char stream_hdr[] =
        "HTTP/1.1 200 OK\r\n"
        "Content-Type: multipart/x-mixed-replace; boundary=frame\r\n"
        "Cache-Control: no-cache\r\n"
        "Connection: close\r\n"
        "\r\n";

    if (send_all(sock, stream_hdr, (int)(sizeof(stream_hdr) - 1)) < 0) {
        goto cleanup;
    }

    TickType_t last_send = 0;
    char part_hdr[HTTP_HDR_BUF_SIZE];
    uint32_t empty_polls = 0;
    const uint32_t empty_poll_limit =
        (STREAM_NO_FRAME_TIMEOUT_MS / 200U) ? (STREAM_NO_FRAME_TIMEOUT_MS / 200U) : 1U;

    for (;;) {
        frame_t frame;
        uint32_t jpeg_len = 0U;
        if (uvc_dequeue_latest_frame(&frame, 200) != 0) {
            /* No frame available; end stream on detach/unavailable or long starvation. */
            camera_state_t st = uvc_get_camera_state();
            if (g_camera_gone ||
                st == CAMERA_DETACHED ||
                st == CAMERA_UNAVAILABLE) {
                LOG_I("[HTTP] Camera unavailable - ending stream\r\n");
                break;
            }

            if (++empty_polls >= empty_poll_limit) {
                if (uvc_session_is_restarting(session_id)) {
                    LOG_W("[HTTP] No frames for %u ms, waiting for UVC restart (session=%lu)\r\n",
                          (unsigned)STREAM_NO_FRAME_TIMEOUT_MS,
                          (unsigned long)session_id);
                    empty_polls = empty_poll_limit / 2U;
                    continue;
                }
                LOG_W("[HTTP] No frames for %u ms - ending stream\r\n",
                      (unsigned)STREAM_NO_FRAME_TIMEOUT_MS);
                break;
            }
            continue;
        }
        empty_polls = 0;

        g_counters.frames_dequeued++;

        if (!frame_extract_valid_jpeg(&frame, &jpeg_len)) {
            g_counters.frames_dropped++;
            LOG_W("[HTTP] Drop invalid JPEG frame (len=%u)\r\n", (unsigned)frame.len);
            uvc_frame_release(&frame);
            continue;
        }

        TickType_t now = xTaskGetTickCount();
        uint32_t now_ms = (uint32_t)(now * portTICK_PERIOD_MS);
        uint32_t age_ms = now_ms - frame.timestamp_ms;
        if (age_ms > STREAM_MAX_FRAME_AGE_MS) {
            g_counters.frames_dropped++;
            uvc_frame_release(&frame);
            continue;
        }
        if (STREAM_FRAME_INTERVAL_MS > 0 &&
            last_send != 0 &&
            (now - last_send) < pdMS_TO_TICKS(STREAM_FRAME_INTERVAL_MS)) {
            g_counters.frames_dropped++;
            uvc_frame_release(&frame);
            continue;
        }

        int phlen = snprintf(part_hdr, sizeof(part_hdr),
                             "--frame\r\n"
                             "Content-Type: image/jpeg\r\n"
                             "Content-Length: %u\r\n"
                             "X-Timestamp-Ms: %u\r\n"
                             "\r\n",
                             (unsigned)jpeg_len,
                             (unsigned)frame.timestamp_ms);

        if (send_all(sock, part_hdr, phlen) < 0) {
            LOG_W("[HTTP] Stream header send failed (errno=%d)\r\n", errno);
            uvc_frame_release(&frame);
            break;
        }

        if (send_all(sock, frame.data, (int)jpeg_len) < 0) {
            LOG_W("[HTTP] Stream data send failed (len=%u errno=%d)\r\n",
                  (unsigned)jpeg_len, errno);
            uvc_frame_release(&frame);
            break;
        }

        if (send_all(sock, "\r\n", 2) < 0) {
            LOG_W("[HTTP] Stream trailer send failed (errno=%d)\r\n", errno);
            uvc_frame_release(&frame);
            break;
        }

        uvc_frame_release(&frame);
        g_counters.frames_sent++;
        last_send = now;
    }

cleanup:
    LOG_I("[HTTP] Stream client disconnected: %s\r\n", g_stream_client_ip);
    closesocket(sock);
    g_stream_active = false;
    g_stream_session_id = 0U;
    g_counters.stream_client_connected = false;
    g_stream_client_ip[0] = '\0';
    stop_capture_for_session(session_id, "stream ended");
    vTaskDelete(NULL);
}

/*
 * Try to start the stream on a dedicated task.
 * Returns true if the stream task was launched (caller must NOT close sock).
 * Returns false if rejected (caller closes sock as normal).
 */
static bool handle_stream(int sock, struct sockaddr_in *client_addr)
{
    camera_state_t st = uvc_get_camera_state();

    if (st == CAMERA_DETACHED || st == CAMERA_UNAVAILABLE) {
        send_error(sock, "503 Service Unavailable", "Camera unavailable");
        return false;
    }

    /* Single-client enforcement */
    if (g_stream_active) {
        send_error(sock, "503 Service Unavailable",
                   "Stream already in use by another client");
        return false;
    }

    uint32_t session_id = uvc_alloc_session_id();
    if (uvc_start_capture_session(session_id) != 0) {
        send_error(sock, "503 Service Unavailable", "Camera start failed");
        return false;
    }

    stream_task_ctx_t *ctx = pvPortMalloc(sizeof(stream_task_ctx_t));
    if (!ctx) {
        stop_capture_for_session(session_id, "stream alloc failed");
        send_error(sock, "503 Service Unavailable", "Out of memory");
        return false;
    }

    ctx->sock = sock;
    ctx->client_addr = *client_addr;
    ctx->session_id = session_id;

    g_camera_gone = false;
    g_stream_active = true;
    g_stream_session_id = session_id;
    g_counters.stream_client_connected = true;

    BaseType_t ret = xTaskCreate(stream_task, "mjpeg", STREAM_TASK_STACK,
                                 ctx, STREAM_TASK_PRIO, NULL);
    if (ret != pdPASS) {
        vPortFree(ctx);
        g_stream_active = false;
        g_stream_session_id = 0U;
        g_counters.stream_client_connected = false;
        stop_capture_for_session(session_id, "stream task create failed");
        send_error(sock, "503 Service Unavailable",
                   "Cannot create stream task");
        return false;
    }

    return true;  /* stream task owns the socket now */
}

/* ------------------------------------------------------------------ */
/* GET /snapshot(.jpg) — Single JPEG frame                             */
/* ------------------------------------------------------------------ */

static void handle_snapshot(int sock)
{
    camera_state_t st = uvc_get_camera_state();
    bool started_here = false;
    uint32_t session_id = 0U;
    TickType_t start_tick;
    TickType_t timeout;
    uint32_t warmup_remaining;
    uint32_t valid_seen = 0U;
    uint32_t dequeued = 0U;
    uint32_t invalid = 0U;
    uint32_t too_small = 0U;
    frame_t best_frame = {0};
    uint32_t best_len = 0U;

    if (!g_stream_active) {
        if (st == CAMERA_DETACHED || st == CAMERA_UNAVAILABLE) {
            send_error(sock, "503 Service Unavailable", "Camera unavailable");
            return;
        }

        session_id = uvc_alloc_session_id();
        if (uvc_start_capture_session(session_id) != 0) {
            send_error(sock, "503 Service Unavailable", "Camera start failed");
            return;
        }
        started_here = true;
    }

    start_tick = xTaskGetTickCount();
    timeout = pdMS_TO_TICKS(SNAPSHOT_TIMEOUT_MS);
    warmup_remaining = started_here ? SNAPSHOT_WARMUP_FRAMES : 0U;

    while ((xTaskGetTickCount() - start_tick) < timeout) {
        frame_t frame = {0};
        uint32_t jpeg_len = 0U;

        if (uvc_dequeue_latest_frame(&frame, SNAPSHOT_DEQUEUE_MS) != 0) {
            continue;
        }
        dequeued++;

        if (!frame_extract_valid_jpeg(&frame, &jpeg_len)) {
            invalid++;
            uvc_frame_release(&frame);
            continue;
        }

        if (jpeg_len < SNAPSHOT_MIN_JPEG_BYTES) {
            too_small++;
            uvc_frame_release(&frame);
            continue;
        }

        if (warmup_remaining > 0U) {
            warmup_remaining--;
            uvc_frame_release(&frame);
            continue;
        }

        valid_seen++;

        if (!best_frame.data || jpeg_len > best_len) {
            if (best_frame.data) {
                uvc_frame_release(&best_frame);
            }
            best_frame = frame;
            best_len = jpeg_len;
        } else {
            uvc_frame_release(&frame);
        }

        if (best_frame.data &&
            valid_seen >= SNAPSHOT_MIN_VALID_FRAMES &&
            best_len >= SNAPSHOT_TARGET_JPEG_BYTES) {
            break;
        }
    }

    if (best_frame.data && best_len > 0U) {
        send_response(sock, "200 OK", "image/jpeg", best_frame.data, (int)best_len);
        LOG_I("[HTTP] Snapshot served len=%u valid=%u dequeued=%u invalid=%u small=%u warmup_left=%u\r\n",
              (unsigned)best_len,
              (unsigned)valid_seen,
              (unsigned)dequeued,
              (unsigned)invalid,
              (unsigned)too_small,
              (unsigned)warmup_remaining);
        uvc_frame_release(&best_frame);
        if (started_here) {
            stop_capture_for_session(session_id, "snapshot complete");
        }
        return;
    }

    LOG_W("[HTTP] Snapshot timeout dequeued=%u invalid=%u small=%u valid=%u warmup_left=%u\r\n",
          (unsigned)dequeued,
          (unsigned)invalid,
          (unsigned)too_small,
          (unsigned)valid_seen,
          (unsigned)warmup_remaining);
    send_error(sock, "503 Service Unavailable", "No valid frame available");
    if (started_here) {
        stop_capture_for_session(session_id, "snapshot timeout");
    }
}

/* ------------------------------------------------------------------ */
/* GET /status.json — Metrics endpoint                                 */
/* ------------------------------------------------------------------ */

static void handle_status(int sock)
{
    camera_state_t st = uvc_get_camera_state();
    const uvc_mode_t *mode = uvc_get_mode();

    char mode_str[40] = "none";
    if (st >= CAMERA_ATTACHED) {
        snprintf(mode_str, sizeof(mode_str), "MJPEG %ux%u @ %ufps",
                 mode->width, mode->height, mode->fps);
    }

    uint64_t uptime_ms = (uint64_t)xTaskGetTickCount() * portTICK_PERIOD_MS;
    uint32_t heap_free = kfree_size();
    uint32_t psram_free = pfree_size();

    uint32_t pool_total, pool_free, pool_queued;
    frame_pool_stats(&pool_total, &pool_free, &pool_queued);

    char json[512];
    int jlen = snprintf(json, sizeof(json),
        "{"
        "\"camera_attached\":%s,"
        "\"selected_mode\":\"%s\","
        "\"frames_in\":%" PRIu64 ","
        "\"frames_dequeued\":%" PRIu64 ","
        "\"frames_dropped\":%" PRIu64 ","
        "\"frames_sent\":%" PRIu64 ","
        "\"stream_client_connected\":%s,"
        "\"stream_client_ip\":\"%s\","
        "\"heap_free_bytes\":%u,"
        "\"psram_free_bytes\":%u,"
        "\"pool_total\":%u,"
        "\"pool_free\":%u,"
        "\"pool_queued\":%u,"
        "\"uptime_ms\":%" PRIu64
        "}",
        (st >= CAMERA_ATTACHED) ? "true" : "false",
        mode_str,
        (uint64_t)uvc_get_frames_captured(),
        (uint64_t)g_counters.frames_dequeued,
        (uint64_t)g_counters.frames_dropped,
        (uint64_t)g_counters.frames_sent,
        g_counters.stream_client_connected ? "true" : "false",
        g_stream_client_ip[0] ? g_stream_client_ip : "",
        (unsigned)heap_free,
        (unsigned)psram_free,
        (unsigned)pool_total,
        (unsigned)pool_free,
        (unsigned)pool_queued,
        uptime_ms);

    send_response(sock, "200 OK", "application/json", json, jlen);
}

static int recv_request_line(int sock, char *buf, int buf_len)
{
    int n = 0;

    while (n < (buf_len - 1)) {
        int r = recv(sock, buf + n, (size_t)(buf_len - 1 - n), 0);
        if (r <= 0) {
            return (n > 0) ? n : r;
        }

        n += r;
        buf[n] = '\0';

        if (strstr(buf, "\r\n") || strchr(buf, '\n')) {
            break;
        }
    }

    return n;
}

static bool normalize_request_path(const char *target, int target_len,
                                   char *path, size_t path_size, int *path_len)
{
    const char *p = target;
    int len = target_len;

    if (!target || target_len <= 0 || !path || path_size < 2) {
        return false;
    }

    /* Accept absolute-form requests: "GET http://host/path HTTP/1.1". */
    if (len >= 7 && strncmp(p, "http://", 7) == 0) {
        const char *slash = memchr(p + 7, '/', (size_t)(len - 7));
        if (!slash) {
            p = "/";
            len = 1;
        } else {
            len -= (int)(slash - p);
            p = slash;
        }
    } else if (len >= 8 && strncmp(p, "https://", 8) == 0) {
        const char *slash = memchr(p + 8, '/', (size_t)(len - 8));
        if (!slash) {
            p = "/";
            len = 1;
        } else {
            len -= (int)(slash - p);
            p = slash;
        }
    }

    if (len <= 0 || p[0] != '/') {
        return false;
    }

    /* Strip query/fragment so /stream?x=1 still maps to /stream. */
    for (int i = 0; i < len; i++) {
        if (p[i] == '?' || p[i] == '#') {
            len = i;
            break;
        }
    }

    while (len > 1 && p[len - 1] == '/') {
        len--;
    }

    if ((size_t)len >= path_size) {
        return false;
    }

    memcpy(path, p, (size_t)len);
    path[len] = '\0';
    if (path_len) {
        *path_len = len;
    }
    return true;
}

/* ------------------------------------------------------------------ */
/* Request parsing and routing                                         */
/* ------------------------------------------------------------------ */

/*
 * Handle an accepted client connection.
 * Returns true if a stream task took ownership of the socket
 * (caller must NOT close it).  Returns false otherwise.
 */
static bool handle_client(int sock, struct sockaddr_in *client_addr)
{
    char buf[HTTP_RECV_BUF_SIZE];
    char path_buf[HTTP_RECV_BUF_SIZE];

    /* Set receive timeout so we don't block forever on a bad client */
    struct timeval tv = { .tv_sec = 5, .tv_usec = 0 };
    setsockopt(sock, SOL_SOCKET, SO_RCVTIMEO, &tv, sizeof(tv));

    int n = recv_request_line(sock, buf, sizeof(buf));
    if (n <= 0) {
        return false;
    }

    char *line_end = strstr(buf, "\r\n");
    if (!line_end) {
        line_end = strchr(buf, '\n');
    }
    if (line_end) {
        *line_end = '\0';
    }

    /* Parse first line: "GET /path HTTP/1.x" */
    if (strncmp(buf, "GET ", 4) != 0) {
        send_error(sock, "405 Method Not Allowed", "Only GET supported");
        return false;
    }

    const char *path = buf + 4;
    const char *path_end = strchr(path, ' ');
    if (!path_end) {
        send_error(sock, "400 Bad Request", "Malformed request");
        return false;
    }

    int path_len = 0;
    if (!normalize_request_path(path, (int)(path_end - path),
                                path_buf, sizeof(path_buf), &path_len)) {
        send_error(sock, "400 Bad Request", "Unsupported request target");
        return false;
    }
    path = path_buf;

    /* Route */
    if (path_len == 1 && path[0] == '/') {
        handle_root(sock);
    } else if (path_len == 7 && strncmp(path, "/stream", 7) == 0) {
        return handle_stream(sock, client_addr);
    } else if ((path_len == 13 && strncmp(path, "/snapshot.jpg", 13) == 0) ||
               (path_len == 9 && strncmp(path, "/snapshot", 9) == 0)) {
        handle_snapshot(sock);
    } else if (path_len == 12 && strncmp(path, "/status.json", 12) == 0) {
        handle_status(sock);
    } else {
        send_error(sock, "404 Not Found", "Unknown endpoint");
    }
    return false;
}

/* ------------------------------------------------------------------ */
/* Server task                                                         */
/* ------------------------------------------------------------------ */

static void http_server_task(void *arg)
{
    (void)arg;

    /* Initialize frame pool (idempotent if already done) */
    frame_pool_init();

    int server_fd = socket(AF_INET, SOCK_STREAM, 0);
    if (server_fd < 0) {
        LOG_E("[HTTP] socket() failed\r\n");
        vTaskDelete(NULL);
        return;
    }

    /* Allow address reuse */
    int optval = 1;
    setsockopt(server_fd, SOL_SOCKET, SO_REUSEADDR, &optval, sizeof(optval));

    struct sockaddr_in addr;
    memset(&addr, 0, sizeof(addr));
    addr.sin_family = AF_INET;
    addr.sin_port = htons(HTTP_PORT);
    addr.sin_addr.s_addr = INADDR_ANY;

    if (bind(server_fd, (struct sockaddr *)&addr, sizeof(addr)) < 0) {
        LOG_E("[HTTP] bind(%d) failed\r\n", HTTP_PORT);
        closesocket(server_fd);
        vTaskDelete(NULL);
        return;
    }

    if (listen(server_fd, HTTP_LISTEN_BACKLOG) < 0) {
        LOG_E("[HTTP] listen() failed\r\n");
        closesocket(server_fd);
        vTaskDelete(NULL);
        return;
    }

    LOG_I("[HTTP] Server listening on port %d\r\n", HTTP_PORT);

    for (;;) {
        struct sockaddr_in client_addr;
        socklen_t addr_len = sizeof(client_addr);

        int client_fd = accept(server_fd, (struct sockaddr *)&client_addr,
                               &addr_len);
        if (client_fd < 0) {
            LOG_E("[HTTP] accept() failed\r\n");
            continue;
        }

        /* Disable Nagle for low-latency streaming */
        int flag = 1;
        setsockopt(client_fd, IPPROTO_TCP, TCP_NODELAY, &flag, sizeof(flag));

        bool stream_owns_sock = handle_client(client_fd, &client_addr);

        if (!stream_owns_sock) {
            closesocket(client_fd);
        }
    }
}

/* ------------------------------------------------------------------ */
/* Public API                                                          */
/* ------------------------------------------------------------------ */

void http_server_start(void)
{
    uvc_register_state_callback(on_camera_state_change);
    xTaskCreate(http_server_task, "http", HTTP_TASK_STACK, NULL,
                HTTP_TASK_PRIO, NULL);
}

/* ------------------------------------------------------------------ */
/* CLI: stream_status                                                  */
/* ------------------------------------------------------------------ */

static int cmd_stream_status(int argc, char **argv)
{
    (void)argc; (void)argv;

    printf("Stream active:  %s\r\n",
           g_counters.stream_client_connected ? "yes" : "no");
    if (g_stream_client_ip[0]) {
        printf("Client IP:      %s\r\n", g_stream_client_ip);
    }
    printf("Frames dequeued:%" PRIu64 "\r\n", (uint64_t)g_counters.frames_dequeued);
    printf("Frames sent:    %" PRIu64 "\r\n", (uint64_t)g_counters.frames_sent);
    printf("Frames dropped: %" PRIu64 "\r\n", (uint64_t)g_counters.frames_dropped);
    return 0;
}
SHELL_CMD_EXPORT_ALIAS(cmd_stream_status, stream_status, Show stream status);
