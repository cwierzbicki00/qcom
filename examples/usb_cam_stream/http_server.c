#include "http_server.h"
#include "frame_pool.h"
#include "uvc_capture.h"
#include "wifi_ap.h"

#include "FreeRTOS.h"
#include "task.h"
#include "mem.h"

#include <lwip/sockets.h>
#include <lwip/inet.h>
#include <string.h>
#include <stdio.h>

#include "shell.h"

#define DBG_TAG "HTTP"
#include "log.h"

/* ------------------------------------------------------------------ */
/* Configuration                                                       */
/* ------------------------------------------------------------------ */

#define HTTP_PORT           80
#define HTTP_LISTEN_BACKLOG 2
#define HTTP_TASK_STACK     2048
#define HTTP_TASK_PRIO      12
#define HTTP_RECV_BUF_SIZE  512
#define HTTP_HDR_BUF_SIZE   256

/* Send timeout for streaming client (ms) */
#define STREAM_SEND_TIMEOUT_MS 5000

/* Target stream pacing: 10 fps → 100 ms minimum between frames */
#define STREAM_FRAME_INTERVAL_MS 100

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
    "<p><a href=\"/snapshot.jpg\">Snapshot</a> | "
    "<a href=\"/status.json\">Status</a></p>"
    "</body></html>";

/* ------------------------------------------------------------------ */
/* HTTP response helpers                                               */
/* ------------------------------------------------------------------ */

static int send_all(int sock, const void *buf, int len)
{
    const uint8_t *p = (const uint8_t *)buf;
    int remaining = len;

    while (remaining > 0) {
        int n = send(sock, p, remaining, 0);
        if (n <= 0) {
            return -1;
        }
        p += n;
        remaining -= n;
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
static char          g_stream_client_ip[16];

static void handle_stream(int sock, struct sockaddr_in *client_addr)
{
    /* Single-client enforcement */
    if (g_stream_active) {
        send_error(sock, "503 Service Unavailable",
                   "Stream already in use by another client");
        return;
    }

    g_stream_active = true;
    g_counters.stream_client_connected = true;

    /* Record client IP */
    inet_ntoa_r(client_addr->sin_addr, g_stream_client_ip,
                sizeof(g_stream_client_ip));

    LOG_I("[HTTP] Stream client connected: %s\r\n", g_stream_client_ip);

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

    for (;;) {
        frame_t frame;
        if (frame_queue_pop(&frame, 200) != 0) {
            /* No frame available; check if camera still alive */
            if (uvc_get_camera_state() == CAMERA_DETACHED ||
                uvc_get_camera_state() == CAMERA_UNAVAILABLE) {
                /* Camera gone — keep connection open, client sees stale last frame */
            }
            continue;
        }

        g_counters.frames_in++;

        /* 10 fps pacing: skip frame if too soon */
        TickType_t now = xTaskGetTickCount();
        if (last_send != 0 &&
            (now - last_send) < pdMS_TO_TICKS(STREAM_FRAME_INTERVAL_MS)) {
            g_counters.frames_dropped++;
            frame_free(&frame);
            continue;
        }

        /* Build multipart part header */
        int phlen = snprintf(part_hdr, sizeof(part_hdr),
                             "--frame\r\n"
                             "Content-Type: image/jpeg\r\n"
                             "Content-Length: %u\r\n"
                             "X-Timestamp-Ms: %u\r\n"
                             "\r\n",
                             (unsigned)frame.len,
                             (unsigned)frame.timestamp_ms);

        /* Send part header */
        if (send_all(sock, part_hdr, phlen) < 0) {
            frame_free(&frame);
            break;
        }

        /* Send JPEG data (zero-copy from frame pool) */
        if (send_all(sock, frame.data, (int)frame.len) < 0) {
            frame_free(&frame);
            break;
        }

        /* Send trailing CRLF */
        if (send_all(sock, "\r\n", 2) < 0) {
            frame_free(&frame);
            break;
        }

        frame_free(&frame);
        g_counters.frames_sent++;
        last_send = now;
    }

cleanup:
    LOG_I("[HTTP] Stream client disconnected: %s\r\n", g_stream_client_ip);
    g_stream_active = false;
    g_counters.stream_client_connected = false;
    g_stream_client_ip[0] = '\0';
}

/* ------------------------------------------------------------------ */
/* GET /snapshot.jpg — Single JPEG frame                               */
/* ------------------------------------------------------------------ */

static void handle_snapshot(int sock)
{
    camera_state_t st = uvc_get_camera_state();
    if (st != CAMERA_ATTACHED && st != CAMERA_STREAMING) {
        send_error(sock, "503 Service Unavailable", "Camera unavailable");
        return;
    }

    /* Try to grab a frame with short timeout */
    frame_t frame;
    if (frame_queue_pop(&frame, 500) != 0) {
        send_error(sock, "503 Service Unavailable", "No frame available");
        return;
    }

    send_response(sock, "200 OK", "image/jpeg", frame.data, (int)frame.len);
    frame_free(&frame);
}

/* ------------------------------------------------------------------ */
/* GET /status.json — Metrics endpoint                                 */
/* ------------------------------------------------------------------ */

static void handle_status(int sock)
{
    camera_state_t st = uvc_get_camera_state();
    const uvc_mode_t *mode = uvc_get_mode();

    char mode_str[32] = "none";
    if (st >= CAMERA_ATTACHED) {
        snprintf(mode_str, sizeof(mode_str), "MJPEG %ux%u",
                 mode->width, mode->height);
    }

    uint32_t uptime_ms = (uint32_t)(xTaskGetTickCount() * portTICK_PERIOD_MS);
    uint32_t heap_free = kfree_size();

    char json[512];
    int jlen = snprintf(json, sizeof(json),
        "{"
        "\"camera_attached\":%s,"
        "\"selected_mode\":\"%s\","
        "\"frames_in\":%u,"
        "\"frames_dropped\":%u,"
        "\"frames_sent\":%u,"
        "\"stream_client_connected\":%s,"
        "\"stream_client_ip\":\"%s\","
        "\"heap_free_bytes\":%u,"
        "\"uptime_ms\":%u"
        "}",
        (st >= CAMERA_ATTACHED) ? "true" : "false",
        mode_str,
        (unsigned)g_counters.frames_in,
        (unsigned)g_counters.frames_dropped,
        (unsigned)g_counters.frames_sent,
        g_counters.stream_client_connected ? "true" : "false",
        g_stream_client_ip[0] ? g_stream_client_ip : "",
        (unsigned)heap_free,
        (unsigned)uptime_ms);

    send_response(sock, "200 OK", "application/json", json, jlen);
}

/* ------------------------------------------------------------------ */
/* Request parsing and routing                                         */
/* ------------------------------------------------------------------ */

static void handle_client(int sock, struct sockaddr_in *client_addr)
{
    char buf[HTTP_RECV_BUF_SIZE];

    /* Set receive timeout so we don't block forever on a bad client */
    struct timeval tv = { .tv_sec = 5, .tv_usec = 0 };
    setsockopt(sock, SOL_SOCKET, SO_RCVTIMEO, &tv, sizeof(tv));

    int n = recv(sock, buf, sizeof(buf) - 1, 0);
    if (n <= 0) {
        return;
    }
    buf[n] = '\0';

    /* Parse first line: "GET /path HTTP/1.x" */
    if (strncmp(buf, "GET ", 4) != 0) {
        send_error(sock, "405 Method Not Allowed", "Only GET supported");
        return;
    }

    const char *path = buf + 4;
    const char *path_end = strchr(path, ' ');
    if (!path_end) {
        send_error(sock, "400 Bad Request", "Malformed request");
        return;
    }

    int path_len = (int)(path_end - path);

    /* Route */
    if (path_len == 1 && path[0] == '/') {
        handle_root(sock);
    } else if (path_len == 7 && strncmp(path, "/stream", 7) == 0) {
        handle_stream(sock, client_addr);
    } else if (path_len == 13 && strncmp(path, "/snapshot.jpg", 13) == 0) {
        handle_snapshot(sock);
    } else if (path_len == 12 && strncmp(path, "/status.json", 12) == 0) {
        handle_status(sock);
    } else {
        send_error(sock, "404 Not Found", "Unknown endpoint");
    }
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

        handle_client(client_fd, &client_addr);

        closesocket(client_fd);
    }
}

/* ------------------------------------------------------------------ */
/* Public API                                                          */
/* ------------------------------------------------------------------ */

void http_server_start(void)
{
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
    printf("Frames in:      %u\r\n", (unsigned)g_counters.frames_in);
    printf("Frames sent:    %u\r\n", (unsigned)g_counters.frames_sent);
    printf("Frames dropped: %u\r\n", (unsigned)g_counters.frames_dropped);
    return 0;
}
SHELL_CMD_EXPORT_ALIAS(cmd_stream_status, stream_status, Show stream status);
