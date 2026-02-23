#include "http_server.h"

#include "uvc_capture.h"
#include "wifi_ap.h"
#include "frame_pool.h"

#include "FreeRTOS.h"
#include "task.h"
#include "mem.h"

#include <lwip/sockets.h>
#include <lwip/inet.h>
#include <lwip/tcp.h>

#include <string.h>
#include <stdio.h>
#include <inttypes.h>
#include <errno.h>

#define DBG_TAG "HTTP"
#include "log.h"

/* ------------------------------------------------------------------ */
/* Configuration                                                       */
/* ------------------------------------------------------------------ */

#define HTTP_PORT              80
#define HTTP_LISTEN_BACKLOG     2
#define HTTP_TASK_STACK      3072
#define HTTP_TASK_PRIO          8
#define HTTP_RECV_BUF_SIZE    512
#define HTTP_HDR_BUF_SIZE     384

#define HTTP_SEND_TIMEOUT_MS 3000
#define HTTP_SEND_CHUNK_BYTES 1460

/* Snapshot tuning: skip startup transients and select from multiple valid
 * candidates to reduce one-off garbled first-frame captures. */
#define SNAPSHOT_TIMEOUT_MS        8000
#define SNAPSHOT_DEQUEUE_MS         120
#define SNAPSHOT_WARMUP_FRAMES        0
#define SNAPSHOT_MIN_VALID_FRAMES     1
#define SNAPSHOT_MIN_JPEG_BYTES    1024
#define SNAPSHOT_TARGET_JPEG_BYTES 24000
/* Reject severe one-off size collapses versus last successful snapshot.
 * Keep threshold conservative to avoid false rejects on natural scene changes. */
#define SNAPSHOT_MIN_PREV_LEN_RATIO_PCT 40U
/* Snapshot-quality gate: reject any frame that had transport/header packet
 * errors while assembling. A small budget avoids deadlock on webcams that
 * flag occasional benign packet errors. */
#define SNAPSHOT_MAX_FRAME_ERR_PKTS 64U
/* Reject tiny packet-count candidates for VGA; they are typically truncated
 * first-fragment false positives that happen to contain SOI/EOI. */
#define SNAPSHOT_MIN_PAYLOAD_PKTS_VGA 24U

/* Base64 dump line width for first successful snapshot only. */
#define SNAPSHOT_DUMP_LINE_WIDTH   96
/* Disable giant UART dumps by default; they can starve networking timing on
 * small MCUs. Set to 1 only for targeted diagnostics. */
#define SNAPSHOT_DUMP_BASE64_ONCE  0
/* Raw reject diagnostics: bounded JPEG hex dumps for failed candidates. */
#define SNAPSHOT_RAW_REJECT_DUMP_ENABLE    1
#define SNAPSHOT_RAW_REJECT_DUMP_MAX_BYTES 96U
#define SNAPSHOT_RAW_REJECT_DUMP_MAX_PER_REQ 6U

/* ------------------------------------------------------------------ */
/* Global state                                                        */
/* ------------------------------------------------------------------ */

static http_counters_t g_counters;
static volatile bool g_http_started;
static volatile bool g_snapshot_dump_done;
static volatile uint32_t g_snapshot_requests_total;
static volatile uint32_t g_snapshot_requests_ok;
static volatile uint32_t g_snapshot_requests_timeout;
static volatile uint32_t g_snapshot_frames_invalid_total;
static volatile uint32_t g_snapshot_frames_errpkts_total;
static volatile uint32_t g_snapshot_frames_small_total;
static volatile uint32_t g_snapshot_send_fail_total;
static volatile uint32_t g_snapshot_last_len;
static volatile uint32_t g_snapshot_last_crc32;
static volatile uint16_t g_snapshot_last_width;
static volatile uint16_t g_snapshot_last_height;

const http_counters_t *http_get_counters(void)
{
    return &g_counters;
}

void http_stream_set_connected(bool connected)
{
    g_counters.stream_client_connected = connected;
}

void http_stream_note_dequeued(void)
{
    g_counters.frames_dequeued++;
}

void http_stream_note_sent(void)
{
    g_counters.frames_sent++;
}

void http_stream_note_dropped(void)
{
    g_counters.frames_dropped++;
}

void http_stream_reset(void)
{
    memset(&g_counters, 0, sizeof(g_counters));
}

/* ------------------------------------------------------------------ */
/* Static landing page                                                 */
/* ------------------------------------------------------------------ */

static const char landing_page[] =
    "<html><head><title>QCC RTSP SoftAP Cam</title></head><body>"
    "<h1>QCC RTSP SoftAP Cam</h1>"
    "<p>RTSP: <a href=\"rtsp://" AP_IP_ADDR ":8554/\">rtsp://" AP_IP_ADDR ":8554/</a></p>"
    "<p><a href=\"/snapshot.jpg\">Snapshot</a> | <a href=\"/status.json\">Status</a></p>"
    "</body></html>";

/* ------------------------------------------------------------------ */
/* HTTP helpers                                                        */
/* ------------------------------------------------------------------ */

static int send_all(int sock, const void *buf, int len)
{
    const uint8_t *p = (const uint8_t *)buf;
    int remaining = len;
    TickType_t last_progress_tick = xTaskGetTickCount();
    TickType_t send_timeout_ticks = pdMS_TO_TICKS(HTTP_SEND_TIMEOUT_MS);

    if (send_timeout_ticks == 0) {
        send_timeout_ticks = 1;
    }

    while (remaining > 0) {
        int chunk = (remaining > HTTP_SEND_CHUNK_BYTES)
                        ? HTTP_SEND_CHUNK_BYTES
                        : remaining;
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

static int send_response(int sock, const char *status,
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

    if (hlen <= 0) {
        return -1;
    }

    if (send_all(sock, hdr, hlen) < 0) {
        return -1;
    }
    if (body && body_len > 0) {
        if (send_all(sock, body, body_len) < 0) {
            return -1;
        }
    }
    return 0;
}

static void format_peer_addr(int sock, char *buf, size_t buf_len)
{
    struct sockaddr_in peer;
    socklen_t peer_len = sizeof(peer);

    if (!buf || buf_len == 0U) {
        return;
    }

    if (getpeername(sock, (struct sockaddr *)&peer, &peer_len) == 0) {
        const char *ip = inet_ntoa(peer.sin_addr);
        snprintf(buf, buf_len, "%s:%u", ip ? ip : "?", (unsigned)ntohs(peer.sin_port));
    } else {
        snprintf(buf, buf_len, "unknown");
    }
}

static void send_error(int sock, const char *status, const char *message)
{
    (void)send_response(sock, status, "text/plain", message, (int)strlen(message));
}

/* ------------------------------------------------------------------ */
/* JPEG frame validation                                               */
/* ------------------------------------------------------------------ */

typedef enum {
    SNAP_JPEG_OK = 0,
    SNAP_JPEG_ERR_NULL,
    SNAP_JPEG_ERR_TOO_SHORT,
    SNAP_JPEG_ERR_NO_SOI,
    SNAP_JPEG_ERR_BAD_SEGMENT,
    SNAP_JPEG_ERR_NO_SOS,
    SNAP_JPEG_ERR_NO_SOF,
    SNAP_JPEG_ERR_NO_EOI,
} snap_jpeg_reason_t;

typedef struct {
    snap_jpeg_reason_t reason;
    bool saw_sos;
    bool saw_eoi;
    bool saw_sof;
    bool has_dqt;
    bool has_dht;
    bool has_dri;
    uint16_t width;
    uint16_t height;
    uint8_t components;
    uint16_t restart_interval;
    uint32_t eoi_end;
    uint32_t marker_count;
    uint32_t fail_offset;
    uint16_t fail_seg_len;
    uint8_t fail_marker;
    uint8_t fail_stage; /* 0=none 1=header 2=entropy */
} snap_jpeg_diag_t;

static const char *snap_jpeg_reason_str(snap_jpeg_reason_t reason)
{
    switch (reason) {
        case SNAP_JPEG_OK:            return "ok";
        case SNAP_JPEG_ERR_NULL:      return "null";
        case SNAP_JPEG_ERR_TOO_SHORT: return "too_short";
        case SNAP_JPEG_ERR_NO_SOI:    return "no_soi";
        case SNAP_JPEG_ERR_BAD_SEGMENT:return "bad_segment";
        case SNAP_JPEG_ERR_NO_SOS:    return "no_sos";
        case SNAP_JPEG_ERR_NO_SOF:    return "no_sof";
        case SNAP_JPEG_ERR_NO_EOI:    return "no_eoi";
        default:                      return "unknown";
    }
}

static const char *snap_fail_stage_str(uint8_t stage)
{
    switch (stage) {
        case 1U: return "header";
        case 2U: return "entropy";
        default: return "none";
    }
}

#if SNAPSHOT_RAW_REJECT_DUMP_ENABLE
static void snapshot_log_hex(const char *tag, const uint8_t *buf, uint32_t len)
{
    char hex[(SNAPSHOT_RAW_REJECT_DUMP_MAX_BYTES * 2U) + 1U];
    uint32_t dump_len = len;
    uint32_t pos = 0U;

    if (!tag) {
        tag = "buf";
    }

    if (!buf || len == 0U) {
        LOG_I("[HTTP][RAW] %s len=%u data=<empty>\r\n", tag, (unsigned)len);
        return;
    }

    if (dump_len > SNAPSHOT_RAW_REJECT_DUMP_MAX_BYTES) {
        dump_len = SNAPSHOT_RAW_REJECT_DUMP_MAX_BYTES;
    }

    for (uint32_t i = 0U; i < dump_len; i++) {
        static const char h[] = "0123456789ABCDEF";
        uint8_t b = buf[i];
        hex[pos++] = h[(b >> 4) & 0x0FU];
        hex[pos++] = h[b & 0x0FU];
    }
    hex[pos] = '\0';

    LOG_I("[HTTP][RAW] %s len=%u dump=%u data=%s%s\r\n",
          tag, (unsigned)len, (unsigned)dump_len, hex,
          (dump_len < len) ? "..." : "");
}

static void snapshot_log_reject_raw(uint32_t req_id, uint32_t idx,
                                    const char *reason,
                                    const uint8_t *buf, uint32_t len,
                                    const snap_jpeg_diag_t *diag)
{
    LOG_I("[HTTP][RAW] req#%u reject#%u reason=%s len=%u fail_stage=%s fail_off=%u fail_marker=0x%02X fail_seg_len=%u markers=%u\r\n",
          (unsigned)req_id,
          (unsigned)idx,
          reason ? reason : "unknown",
          (unsigned)len,
          snap_fail_stage_str(diag ? diag->fail_stage : 0U),
          (unsigned)(diag ? diag->fail_offset : 0U),
          (unsigned)(diag ? diag->fail_marker : 0U),
          (unsigned)(diag ? diag->fail_seg_len : 0U),
          (unsigned)(diag ? diag->marker_count : 0U));
    snapshot_log_hex("jpeg_head", buf, len);
    if (buf && len > SNAPSHOT_RAW_REJECT_DUMP_MAX_BYTES) {
        uint32_t tail_off = len - SNAPSHOT_RAW_REJECT_DUMP_MAX_BYTES;
        snapshot_log_hex("jpeg_tail", buf + tail_off, len - tail_off);
    }
    if (buf && diag && diag->fail_offset < len) {
        uint32_t off = diag->fail_offset;
        uint32_t ctx_off = (off > 16U) ? (off - 16U) : 0U;
        uint32_t ctx_len = len - ctx_off;
        if (ctx_len > SNAPSHOT_RAW_REJECT_DUMP_MAX_BYTES) {
            ctx_len = SNAPSHOT_RAW_REJECT_DUMP_MAX_BYTES;
        }
        snapshot_log_hex("jpeg_fail_ctx", buf + ctx_off, ctx_len);
    }
}
#endif

static bool marker_is_sof(uint8_t marker)
{
    return (marker >= 0xC0U && marker <= 0xCFU &&
            marker != 0xC4U && marker != 0xC8U && marker != 0xCCU);
}

static uint32_t crc32_ieee(const uint8_t *data, uint32_t len)
{
    uint32_t crc = 0xFFFFFFFFU;
    if (!data) {
        return 0U;
    }

    for (uint32_t i = 0U; i < len; i++) {
        crc ^= (uint32_t)data[i];
        for (uint32_t b = 0U; b < 8U; b++) {
            uint32_t mask = (uint32_t)(-(int32_t)(crc & 1U));
            crc = (crc >> 1U) ^ (0xEDB88320U & mask);
        }
    }
    return ~crc;
}

static bool inspect_jpeg_strict(const uint8_t *buf, uint32_t len,
                                uint32_t *out_jpeg_len,
                                snap_jpeg_diag_t *out_diag)
{
    uint32_t i;
    snap_jpeg_diag_t d;

    memset(&d, 0, sizeof(d));
    d.reason = SNAP_JPEG_ERR_NULL;

    if (!buf) {
        d.fail_stage = 0U;
        goto done;
    }
    if (len < 4U) {
        d.reason = SNAP_JPEG_ERR_TOO_SHORT;
        d.fail_stage = 1U;
        d.fail_offset = len;
        goto done;
    }
    if (buf[0] != 0xFFU || buf[1] != 0xD8U) {
        d.reason = SNAP_JPEG_ERR_NO_SOI;
        d.fail_stage = 1U;
        d.fail_offset = 0U;
        d.fail_marker = (len > 1U) ? buf[1] : 0U;
        goto done;
    }

    i = 2U;

    /* Marker-by-marker parse until SOS. */
    while (i + 1U < len) {
        uint8_t marker;
        uint16_t seg_len;

        if (buf[i] != 0xFFU) {
            i++;
            continue;
        }

        while (i < len && buf[i] == 0xFFU) {
            i++;
        }
        if (i >= len) {
            d.reason = SNAP_JPEG_ERR_BAD_SEGMENT;
            d.fail_stage = 1U;
            d.fail_offset = i;
            goto done;
        }

        marker = buf[i++];
        if (marker == 0x00U) {
            continue;
        }
        d.marker_count++;

        if (marker == 0xD8U) {
            continue;
        }
        if (marker == 0xD9U) {
            d.reason = SNAP_JPEG_ERR_NO_SOS;
            d.fail_stage = 1U;
            d.fail_offset = i - 1U;
            d.fail_marker = marker;
            goto done;
        }
        if ((marker >= 0xD0U && marker <= 0xD7U) || marker == 0x01U) {
            continue;
        }

        if (i + 1U >= len) {
            d.reason = SNAP_JPEG_ERR_BAD_SEGMENT;
            d.fail_stage = 1U;
            d.fail_offset = i;
            d.fail_marker = marker;
            goto done;
        }

        seg_len = (uint16_t)(((uint16_t)buf[i] << 8U) | (uint16_t)buf[i + 1U]);
        if (seg_len < 2U || (i + seg_len) > len) {
            d.reason = SNAP_JPEG_ERR_BAD_SEGMENT;
            d.fail_stage = 1U;
            d.fail_offset = i;
            d.fail_marker = marker;
            d.fail_seg_len = seg_len;
            goto done;
        }

        if (marker == 0xDAU) {
            d.saw_sos = true;
            i += seg_len;
            break;
        }

        if (marker == 0xDBU) {
            d.has_dqt = true;
        } else if (marker == 0xC4U) {
            d.has_dht = true;
        } else if (marker == 0xDDU && seg_len >= 4U) {
            d.has_dri = true;
            d.restart_interval =
                (uint16_t)(((uint16_t)buf[i + 2U] << 8U) | (uint16_t)buf[i + 3U]);
        } else if (marker_is_sof(marker) && seg_len >= 8U) {
            d.saw_sof = true;
            d.height = (uint16_t)(((uint16_t)buf[i + 3U] << 8U) | (uint16_t)buf[i + 4U]);
            d.width = (uint16_t)(((uint16_t)buf[i + 5U] << 8U) | (uint16_t)buf[i + 6U]);
            d.components = buf[i + 7U];
        }

        i += seg_len;
    }

    if (!d.saw_sos) {
        d.reason = SNAP_JPEG_ERR_NO_SOS;
        d.fail_stage = 1U;
        d.fail_offset = i;
        goto done;
    }
    if (!d.saw_sof || d.width == 0U || d.height == 0U) {
        d.reason = SNAP_JPEG_ERR_NO_SOF;
        d.fail_stage = 1U;
        d.fail_offset = i;
        goto done;
    }

    /* Entropy parse until EOI (marker-aware with FF stuffing). */
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
        if (marker == 0xD9U) {
            d.saw_eoi = true;
            d.eoi_end = i;
            d.reason = SNAP_JPEG_OK;
            if (out_jpeg_len) {
                *out_jpeg_len = d.eoi_end;
            }
            goto done;
        }
        if (marker >= 0xD0U && marker <= 0xD7U) {
            continue; /* restart markers */
        }

        /* MJPEG scan data should only contain stuffed FF, RSTn, and EOI. */
        d.reason = SNAP_JPEG_ERR_BAD_SEGMENT;
        d.fail_stage = 2U;
        d.fail_offset = i - 1U;
        d.fail_marker = marker;
        goto done;
    }

    d.reason = SNAP_JPEG_ERR_NO_EOI;
    d.fail_stage = 2U;
    d.fail_offset = i;

done:
    if (out_diag) {
        *out_diag = d;
    }
    return (d.reason == SNAP_JPEG_OK);
}

/* ------------------------------------------------------------------ */
/* One-time snapshot dump                                              */
/* ------------------------------------------------------------------ */

static void dump_snapshot_base64_once(const uint8_t *data, uint32_t len)
{
    static const char b64[] =
        "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
    char line[SNAPSHOT_DUMP_LINE_WIDTH + 1];
    uint32_t i = 0U;
    uint32_t crc32 = 0U;
    size_t out = 0U;
    bool do_dump = false;

    if (!data || len == 0U) {
        return;
    }
    if (!SNAPSHOT_DUMP_BASE64_ONCE) {
        return;
    }

    taskENTER_CRITICAL();
    if (!g_snapshot_dump_done) {
        g_snapshot_dump_done = true;
        do_dump = true;
    }
    taskEXIT_CRITICAL();

    if (!do_dump) {
        return;
    }

    crc32 = crc32_ieee(data, len);
    LOG_I("[HTTP] SNAPSHOT_JPEG_B64_BEGIN len=%u crc32=%08" PRIX32 " head=%02X%02X tail=%02X%02X\r\n",
          (unsigned)len, crc32,
          data[0], data[1], data[len - 2U], data[len - 1U]);

    while (i + 3U <= len) {
        uint32_t v = ((uint32_t)data[i] << 16U) |
                     ((uint32_t)data[i + 1U] << 8U) |
                     ((uint32_t)data[i + 2U]);
        line[out++] = b64[(v >> 18U) & 0x3FU];
        line[out++] = b64[(v >> 12U) & 0x3FU];
        line[out++] = b64[(v >> 6U) & 0x3FU];
        line[out++] = b64[v & 0x3FU];
        i += 3U;

        if (out >= SNAPSHOT_DUMP_LINE_WIDTH) {
            line[out] = '\0';
            printf("SNAPSHOT_JPEG_B64:%s\r\n", line);
            out = 0U;
        }
    }

    uint32_t rem = len - i;
    if (rem == 1U) {
        uint32_t v = ((uint32_t)data[i] << 16U);
        line[out++] = b64[(v >> 18U) & 0x3FU];
        line[out++] = b64[(v >> 12U) & 0x3FU];
        line[out++] = '=';
        line[out++] = '=';
    } else if (rem == 2U) {
        uint32_t v = ((uint32_t)data[i] << 16U) |
                     ((uint32_t)data[i + 1U] << 8U);
        line[out++] = b64[(v >> 18U) & 0x3FU];
        line[out++] = b64[(v >> 12U) & 0x3FU];
        line[out++] = b64[(v >> 6U) & 0x3FU];
        line[out++] = '=';
    }

    if (out > 0U) {
        line[out] = '\0';
        printf("SNAPSHOT_JPEG_B64:%s\r\n", line);
    }

    LOG_I("[HTTP] SNAPSHOT_JPEG_B64_END len=%u\r\n", (unsigned)len);
}

/* ------------------------------------------------------------------ */
/* Endpoint handlers                                                   */
/* ------------------------------------------------------------------ */

static void handle_root(int sock)
{
    if (send_response(sock, "200 OK", "text/html",
                      landing_page, (int)(sizeof(landing_page) - 1)) < 0) {
        LOG_W("[HTTP] Root response send failed (errno=%d)\r\n", errno);
    }
}

static const char *camera_state_str(camera_state_t st)
{
    switch (st) {
        case CAMERA_DETACHED:    return "DETACHED";
        case CAMERA_ATTACHED:    return "ATTACHED";
        case CAMERA_STREAMING:   return "STREAMING";
        case CAMERA_UNAVAILABLE: return "UNAVAILABLE";
        default:                 return "UNKNOWN";
    }
}

static void handle_snapshot(int sock)
{
    camera_state_t st = uvc_get_camera_state();
    const uvc_mode_t *mode = uvc_get_mode();
    bool started_here = false;
    TickType_t start_tick;
    TickType_t timeout_ticks;
    uint32_t warmup_remaining;
    uint32_t valid_seen = 0U;
    uint32_t dequeued = 0U;
    uint32_t invalid = 0U;
    uint32_t rejected_err_pkts = 0U;
    uint32_t rejected_low_pkts = 0U;
    uint32_t too_small = 0U;
    uint32_t raw_reject_dumps = 0U;
    frame_t best_frame = {0};
    uint32_t best_len = 0U;
    uint32_t best_score = 0U;
    snap_jpeg_diag_t best_diag;
    bool best_diag_valid = false;
    frame_t warmup_frame = {0};
    uint32_t warmup_len = 0U;
    uint32_t warmup_score = 0U;
    snap_jpeg_diag_t warmup_diag;
    bool warmup_diag_valid = false;
    uint32_t request_id;

    static volatile uint32_t g_snapshot_request_seq;

    taskENTER_CRITICAL();
    g_snapshot_requests_total++;
    g_snapshot_request_seq++;
    if (g_snapshot_request_seq == 0U) {
        g_snapshot_request_seq = 1U;
    }
    request_id = g_snapshot_request_seq;
    taskEXIT_CRITICAL();

    LOG_I("[HTTP] Snapshot req#%u state=%s stream_client=%s mode=%ux%u@%u\r\n",
          (unsigned)request_id,
          camera_state_str(st),
          g_counters.stream_client_connected ? "yes" : "no",
          (unsigned)(mode ? mode->width : 0U),
          (unsigned)(mode ? mode->height : 0U),
          (unsigned)(mode ? mode->fps : 0U));
    LOG_I("[HTTP] Snapshot req#%u capture counters before start: frames_in=%" PRIu64 " dequeued=%" PRIu64 " sent=%" PRIu64 " dropped=%" PRIu64 "\r\n",
          (unsigned)request_id,
          (uint64_t)uvc_get_frames_captured(),
          (uint64_t)g_counters.frames_dequeued,
          (uint64_t)g_counters.frames_sent,
          (uint64_t)g_counters.frames_dropped);

    if (st == CAMERA_DETACHED || st == CAMERA_UNAVAILABLE) {
        send_error(sock, "503 Service Unavailable", "Camera unavailable");
        return;
    }

    if (st == CAMERA_ATTACHED) {
        if (uvc_start_capture() != 0) {
            send_error(sock, "503 Service Unavailable", "Camera start failed");
            return;
        }
        started_here = true;
    } else if (st != CAMERA_STREAMING) {
        send_error(sock, "503 Service Unavailable", "Camera not ready");
        return;
    }

    start_tick = xTaskGetTickCount();
    timeout_ticks = pdMS_TO_TICKS(SNAPSHOT_TIMEOUT_MS);
    warmup_remaining = started_here ? SNAPSHOT_WARMUP_FRAMES : 0U;
    LOG_I("[HTTP] Snapshot req#%u policy started_here=%u warmup=%u min_valid=%u timeout_ms=%u dequeue_ms=%u target=%u max_err_pkts=%u min_vga_pkts=%u\r\n",
          (unsigned)request_id,
          (unsigned)(started_here ? 1U : 0U),
          (unsigned)warmup_remaining,
          (unsigned)SNAPSHOT_MIN_VALID_FRAMES,
          (unsigned)SNAPSHOT_TIMEOUT_MS,
          (unsigned)SNAPSHOT_DEQUEUE_MS,
          (unsigned)SNAPSHOT_TARGET_JPEG_BYTES,
          (unsigned)SNAPSHOT_MAX_FRAME_ERR_PKTS,
          (unsigned)SNAPSHOT_MIN_PAYLOAD_PKTS_VGA);

    while ((xTaskGetTickCount() - start_tick) < timeout_ticks) {
        frame_t frame = {0};
        uint32_t jpeg_len = 0U;
        snap_jpeg_diag_t diag;
        bool ok;
        uint32_t prev_good_len = 0U;
        TickType_t now_tick;
        uint32_t now_ms;
        uint32_t age_ms;
        uint32_t candidate_score;
        uint8_t h0 = 0U, h1 = 0U, t0 = 0U, t1 = 0U;

        if (uvc_dequeue_latest_frame(&frame, SNAPSHOT_DEQUEUE_MS) != 0) {
            continue;
        }
        dequeued++;

        now_tick = xTaskGetTickCount();
        now_ms = (uint32_t)(now_tick * portTICK_PERIOD_MS);
        age_ms = now_ms - frame.timestamp_ms;

        if (frame.data && frame.len >= 2U) {
            h0 = frame.data[0];
            h1 = frame.data[1];
            t0 = frame.data[frame.len - 2U];
            t1 = frame.data[frame.len - 1U];
        }

        if (frame.error_pkts > SNAPSHOT_MAX_FRAME_ERR_PKTS) {
            invalid++;
            rejected_err_pkts++;
            LOG_W("[HTTP] Snapshot req#%u reject-errpkts#%u len=%u age=%u err_pkts=%u payload_pkts=%u limit=%u head=%02X%02X tail=%02X%02X\r\n",
                  (unsigned)request_id,
                  (unsigned)dequeued,
                  (unsigned)frame.len,
                  (unsigned)age_ms,
                  (unsigned)frame.error_pkts,
                  (unsigned)frame.payload_pkts,
                  (unsigned)SNAPSHOT_MAX_FRAME_ERR_PKTS,
                  h0, h1, t0, t1);
#if SNAPSHOT_RAW_REJECT_DUMP_ENABLE
            if (raw_reject_dumps < SNAPSHOT_RAW_REJECT_DUMP_MAX_PER_REQ) {
                raw_reject_dumps++;
                snapshot_log_reject_raw(request_id, dequeued, "err_pkts",
                                        frame.data, frame.len, NULL);
            }
#endif
            uvc_frame_release(&frame);
            continue;
        }

        ok = inspect_jpeg_strict(frame.data, frame.len, &jpeg_len, &diag);
        if (!ok) {
            invalid++;
            LOG_W("[HTTP] Snapshot req#%u reject#%u len=%u age=%u reason=%s sos=%u sof=%u eoi=%u eoi_end=%u wh=%ux%u comp=%u dqt=%u dht=%u dri=%u ri=%u markers=%u fail_stage=%s fail_off=%u fail_marker=0x%02X fail_seg_len=%u head=%02X%02X tail=%02X%02X\r\n",
                  (unsigned)request_id,
                  (unsigned)dequeued,
                  (unsigned)frame.len,
                  (unsigned)age_ms,
                  snap_jpeg_reason_str(diag.reason),
                  (unsigned)(diag.saw_sos ? 1U : 0U),
                  (unsigned)(diag.saw_sof ? 1U : 0U),
                  (unsigned)(diag.saw_eoi ? 1U : 0U),
                  (unsigned)diag.eoi_end,
                  (unsigned)diag.width,
                  (unsigned)diag.height,
                  (unsigned)diag.components,
                  (unsigned)(diag.has_dqt ? 1U : 0U),
                  (unsigned)(diag.has_dht ? 1U : 0U),
                  (unsigned)(diag.has_dri ? 1U : 0U),
                  (unsigned)diag.restart_interval,
                  (unsigned)diag.marker_count,
                  snap_fail_stage_str(diag.fail_stage),
                  (unsigned)diag.fail_offset,
                  (unsigned)diag.fail_marker,
                  (unsigned)diag.fail_seg_len,
                  h0, h1, t0, t1);
#if SNAPSHOT_RAW_REJECT_DUMP_ENABLE
            if (raw_reject_dumps < SNAPSHOT_RAW_REJECT_DUMP_MAX_PER_REQ) {
                raw_reject_dumps++;
                snapshot_log_reject_raw(request_id, dequeued,
                                        snap_jpeg_reason_str(diag.reason),
                                        frame.data, frame.len, &diag);
            }
#endif
            uvc_frame_release(&frame);
            continue;
        }

        if (jpeg_len < SNAPSHOT_MIN_JPEG_BYTES) {
            too_small++;
            LOG_W("[HTTP] Snapshot req#%u too-small#%u len=%u jpeg=%u age=%u wh=%ux%u head=%02X%02X tail=%02X%02X\r\n",
                  (unsigned)request_id,
                  (unsigned)dequeued,
                  (unsigned)frame.len,
                  (unsigned)jpeg_len,
                  (unsigned)age_ms,
                  (unsigned)diag.width,
                  (unsigned)diag.height,
                  h0, h1, t0, t1);
#if SNAPSHOT_RAW_REJECT_DUMP_ENABLE
            if (raw_reject_dumps < SNAPSHOT_RAW_REJECT_DUMP_MAX_PER_REQ) {
                raw_reject_dumps++;
                snapshot_log_reject_raw(request_id, dequeued, "too_small",
                                        frame.data, frame.len, &diag);
            }
#endif
            uvc_frame_release(&frame);
            continue;
        }

        if (mode && mode->width >= 640U && mode->height >= 480U &&
            frame.payload_pkts < SNAPSHOT_MIN_PAYLOAD_PKTS_VGA) {
            invalid++;
            rejected_low_pkts++;
            LOG_W("[HTTP] Snapshot req#%u reject-lowpkts#%u len=%u jpeg=%u age=%u payload_pkts=%u min=%u wh=%ux%u\r\n",
                  (unsigned)request_id,
                  (unsigned)dequeued,
                  (unsigned)frame.len,
                  (unsigned)jpeg_len,
                  (unsigned)age_ms,
                  (unsigned)frame.payload_pkts,
                  (unsigned)SNAPSHOT_MIN_PAYLOAD_PKTS_VGA,
                  (unsigned)diag.width,
                  (unsigned)diag.height);
#if SNAPSHOT_RAW_REJECT_DUMP_ENABLE
            if (raw_reject_dumps < SNAPSHOT_RAW_REJECT_DUMP_MAX_PER_REQ) {
                raw_reject_dumps++;
                snapshot_log_reject_raw(request_id, dequeued, "low_pkts",
                                        frame.data, frame.len, &diag);
            }
#endif
            uvc_frame_release(&frame);
            continue;
        }

        if (frame.len != jpeg_len) {
            invalid++;
            LOG_W("[HTTP] Snapshot req#%u reject-trailer#%u len=%u jpeg=%u trim=%u age=%u wh=%ux%u\r\n",
                  (unsigned)request_id,
                  (unsigned)dequeued,
                  (unsigned)frame.len,
                  (unsigned)jpeg_len,
                  (unsigned)(frame.len - jpeg_len),
                  (unsigned)age_ms,
                  (unsigned)diag.width,
                  (unsigned)diag.height);
#if SNAPSHOT_RAW_REJECT_DUMP_ENABLE
            if (raw_reject_dumps < SNAPSHOT_RAW_REJECT_DUMP_MAX_PER_REQ) {
                raw_reject_dumps++;
                snapshot_log_reject_raw(request_id, dequeued, "trailer",
                                        frame.data, frame.len, &diag);
            }
#endif
            uvc_frame_release(&frame);
            continue;
        }

        taskENTER_CRITICAL();
        prev_good_len = g_snapshot_last_len;
        taskEXIT_CRITICAL();
        if (prev_good_len > 0U &&
            ((uint64_t)jpeg_len * 100ULL) <
                ((uint64_t)prev_good_len * (uint64_t)SNAPSHOT_MIN_PREV_LEN_RATIO_PCT)) {
            invalid++;
            LOG_W("[HTTP] Snapshot req#%u reject-short-vs-prev#%u len=%u prev=%u ratio=%u%% age=%u wh=%ux%u\r\n",
                  (unsigned)request_id,
                  (unsigned)dequeued,
                  (unsigned)jpeg_len,
                  (unsigned)prev_good_len,
                  (unsigned)SNAPSHOT_MIN_PREV_LEN_RATIO_PCT,
                  (unsigned)age_ms,
                  (unsigned)diag.width,
                  (unsigned)diag.height);
#if SNAPSHOT_RAW_REJECT_DUMP_ENABLE
            if (raw_reject_dumps < SNAPSHOT_RAW_REJECT_DUMP_MAX_PER_REQ) {
                raw_reject_dumps++;
                snapshot_log_reject_raw(request_id, dequeued, "short_vs_prev",
                                        frame.data, frame.len, &diag);
            }
#endif
            uvc_frame_release(&frame);
            continue;
        }

        candidate_score = jpeg_len;
        if (frame.error_pkts > 0U) {
            uint32_t penalty = ((uint32_t)frame.error_pkts) * 0x01000000U;
            if (penalty > candidate_score) {
                penalty = candidate_score;
            }
            candidate_score -= penalty;
        }
        if (mode && mode->width > 0U && mode->height > 0U &&
            diag.width == mode->width && diag.height == mode->height) {
            candidate_score += 0x40000000U; /* Prefer negotiated dimensions. */
        }

        if (warmup_remaining > 0U) {
            warmup_remaining--;
            LOG_I("[HTTP] Snapshot req#%u warmup-skip#%u len=%u jpeg=%u age=%u wh=%ux%u\r\n",
                  (unsigned)request_id,
                  (unsigned)dequeued,
                  (unsigned)frame.len,
                  (unsigned)jpeg_len,
                  (unsigned)age_ms,
                  (unsigned)diag.width,
                  (unsigned)diag.height);

            if (!warmup_frame.data || candidate_score > warmup_score ||
                (candidate_score == warmup_score && jpeg_len > warmup_len)) {
                if (warmup_frame.data) {
                    uvc_frame_release(&warmup_frame);
                }
                warmup_frame = frame;
                warmup_len = jpeg_len;
                warmup_score = candidate_score;
                warmup_diag = diag;
                warmup_diag_valid = true;
            } else {
                uvc_frame_release(&frame);
            }
            continue;
        }

        valid_seen++;

        LOG_I("[HTTP] Snapshot req#%u candidate#%u len=%u jpeg=%u age=%u wh=%ux%u match_mode=%u score=%u trim=%u markers=%u err_pkts=%u payload_pkts=%u\r\n",
              (unsigned)request_id,
              (unsigned)valid_seen,
              (unsigned)frame.len,
              (unsigned)jpeg_len,
              (unsigned)age_ms,
              (unsigned)diag.width,
              (unsigned)diag.height,
              (unsigned)((mode && diag.width == mode->width && diag.height == mode->height) ? 1U : 0U),
              (unsigned)candidate_score,
              (unsigned)(frame.len - jpeg_len),
              (unsigned)diag.marker_count,
              (unsigned)frame.error_pkts,
              (unsigned)frame.payload_pkts);

        if (!best_frame.data || candidate_score > best_score ||
            (candidate_score == best_score && jpeg_len > best_len)) {
            if (best_frame.data) {
                uvc_frame_release(&best_frame);
            }
            best_frame = frame;
            best_len = jpeg_len;
            best_score = candidate_score;
            best_diag = diag;
            best_diag_valid = true;
        } else {
            uvc_frame_release(&frame);
        }

        if (best_frame.data &&
            valid_seen >= SNAPSHOT_MIN_VALID_FRAMES &&
            best_len >= SNAPSHOT_TARGET_JPEG_BYTES) {
            break;
        }
    }

    if (!best_frame.data && warmup_frame.data && warmup_len > 0U) {
        LOG_I("[HTTP] Snapshot req#%u using warmup fallback len=%u score=%u\r\n",
              (unsigned)request_id, (unsigned)warmup_len, (unsigned)warmup_score);
        best_frame = warmup_frame;
        warmup_frame.data = NULL;
        best_len = warmup_len;
        best_score = warmup_score;
        best_diag = warmup_diag;
        best_diag_valid = warmup_diag_valid;
        valid_seen = 1U;
    }

    if (best_frame.data && best_len > 0U) {
        int send_rc;
        bool stopped_before_send = false;
        char peer[40];
        TickType_t send_start_tick;
        uint32_t send_ms = 0U;
        uint8_t h0 = best_frame.data[0];
        uint8_t h1 = best_frame.data[1];
        uint8_t t0 = best_frame.data[best_len - 2U];
        uint8_t t1 = best_frame.data[best_len - 1U];
        uint32_t crc32 = crc32_ieee(best_frame.data, best_len);

        taskENTER_CRITICAL();
        g_snapshot_frames_invalid_total += invalid;
        g_snapshot_frames_errpkts_total += rejected_err_pkts;
        g_snapshot_frames_small_total += too_small;
        g_snapshot_last_len = best_len;
        g_snapshot_last_crc32 = crc32;
        g_snapshot_last_width = best_diag_valid ? best_diag.width : 0U;
        g_snapshot_last_height = best_diag_valid ? best_diag.height : 0U;
        taskEXIT_CRITICAL();

        /* For on-demand snapshot capture, stop ISO traffic before dumping JPEG
         * so board logs contain a clean one-time base64 stream. */
        if (started_here && !g_counters.stream_client_connected) {
            if (uvc_stop_capture() == 0) {
                stopped_before_send = true;
            }
        }

        LOG_I("[HTTP] Snapshot req#%u selected len=%u crc32=%08" PRIX32 " wh=%ux%u comp=%u dqt=%u dht=%u dri=%u ri=%u err_pkts=%u payload_pkts=%u head=%02X%02X tail=%02X%02X\r\n",
              (unsigned)request_id,
              (unsigned)best_len,
              crc32,
              (unsigned)(best_diag_valid ? best_diag.width : 0U),
              (unsigned)(best_diag_valid ? best_diag.height : 0U),
              (unsigned)(best_diag_valid ? best_diag.components : 0U),
              (unsigned)(best_diag_valid && best_diag.has_dqt ? 1U : 0U),
              (unsigned)(best_diag_valid && best_diag.has_dht ? 1U : 0U),
              (unsigned)(best_diag_valid && best_diag.has_dri ? 1U : 0U),
              (unsigned)(best_diag_valid ? best_diag.restart_interval : 0U),
              (unsigned)best_frame.error_pkts,
              (unsigned)best_frame.payload_pkts,
              h0, h1, t0, t1);
        LOG_I("[HTTP] Snapshot req#%u source=mjpeg_passthrough reencode=0 stop_before_send=%u\r\n",
              (unsigned)request_id, (unsigned)(stopped_before_send ? 1U : 0U));

        dump_snapshot_base64_once(best_frame.data, best_len);
        format_peer_addr(sock, peer, sizeof(peer));
        send_start_tick = xTaskGetTickCount();
        send_rc = send_response(sock, "200 OK", "image/jpeg",
                                best_frame.data, (int)best_len);
        send_ms = (uint32_t)((xTaskGetTickCount() - send_start_tick) * portTICK_PERIOD_MS);
        if (send_rc < 0) {
            taskENTER_CRITICAL();
            g_snapshot_send_fail_total++;
            taskEXIT_CRITICAL();
            LOG_W("[HTTP] Snapshot req#%u send failed len=%u errno=%d\r\n",
                  (unsigned)request_id, (unsigned)best_len, errno);
        } else {
            taskENTER_CRITICAL();
            g_snapshot_requests_ok++;
            taskEXIT_CRITICAL();
            LOG_I("[HTTP] Snapshot req#%u send ok peer=%s len=%u elapsed_ms=%u\r\n",
                  (unsigned)request_id,
                  peer,
                  (unsigned)best_len,
                  (unsigned)send_ms);
        }
        if (send_rc < 0) {
            LOG_W("[HTTP] Snapshot req#%u capture-ok but transmit-failed len=%u score=%u valid=%u dequeued=%u invalid=%u errpkts=%u lowpkts=%u small=%u rawdump=%u warmup_left=%u\r\n",
                  (unsigned)request_id,
                  (unsigned)best_len,
                  (unsigned)best_score,
                  (unsigned)valid_seen,
                  (unsigned)dequeued,
                  (unsigned)invalid,
                  (unsigned)rejected_err_pkts,
                  (unsigned)rejected_low_pkts,
                  (unsigned)too_small,
                  (unsigned)raw_reject_dumps,
                  (unsigned)warmup_remaining);
        } else {
            LOG_I("[HTTP] Snapshot req#%u served len=%u score=%u valid=%u dequeued=%u invalid=%u errpkts=%u lowpkts=%u small=%u rawdump=%u warmup_left=%u\r\n",
                  (unsigned)request_id,
                  (unsigned)best_len,
                  (unsigned)best_score,
                  (unsigned)valid_seen,
                  (unsigned)dequeued,
                  (unsigned)invalid,
                  (unsigned)rejected_err_pkts,
                  (unsigned)rejected_low_pkts,
                  (unsigned)too_small,
                  (unsigned)raw_reject_dumps,
                  (unsigned)warmup_remaining);
            LOG_I("[HTTP] Snapshot req#%u capture counters after serve: frames_in=%" PRIu64 " dequeued=%" PRIu64 " sent=%" PRIu64 " dropped=%" PRIu64 "\r\n",
                  (unsigned)request_id,
                  (uint64_t)uvc_get_frames_captured(),
                  (uint64_t)g_counters.frames_dequeued,
                  (uint64_t)g_counters.frames_sent,
                  (uint64_t)g_counters.frames_dropped);
        }
        uvc_frame_release(&best_frame);
        if (warmup_frame.data) {
            uvc_frame_release(&warmup_frame);
        }
        if (!stopped_before_send &&
            started_here && !g_counters.stream_client_connected) {
            (void)uvc_stop_capture();
        }
        return;
    }

    if (best_frame.data) {
        uvc_frame_release(&best_frame);
    }
    if (warmup_frame.data) {
        uvc_frame_release(&warmup_frame);
    }

    LOG_W("[HTTP] Snapshot req#%u timeout dequeued=%u invalid=%u errpkts=%u lowpkts=%u small=%u valid=%u rawdump=%u warmup_left=%u\r\n",
          (unsigned)request_id,
          (unsigned)dequeued,
          (unsigned)invalid,
          (unsigned)rejected_err_pkts,
          (unsigned)rejected_low_pkts,
          (unsigned)too_small,
          (unsigned)valid_seen,
          (unsigned)raw_reject_dumps,
          (unsigned)warmup_remaining);
    LOG_W("[HTTP] Snapshot req#%u capture counters at timeout: frames_in=%" PRIu64 " dequeued=%" PRIu64 " sent=%" PRIu64 " dropped=%" PRIu64 "\r\n",
          (unsigned)request_id,
          (uint64_t)uvc_get_frames_captured(),
          (uint64_t)g_counters.frames_dequeued,
          (uint64_t)g_counters.frames_sent,
          (uint64_t)g_counters.frames_dropped);

    taskENTER_CRITICAL();
    g_snapshot_requests_timeout++;
    g_snapshot_frames_invalid_total += invalid;
    g_snapshot_frames_errpkts_total += rejected_err_pkts;
    g_snapshot_frames_small_total += too_small;
    taskEXIT_CRITICAL();

    send_error(sock, "503 Service Unavailable", "No valid frame available");

    if (started_here && !g_counters.stream_client_connected) {
        (void)uvc_stop_capture();
    }
}

static void handle_status(int sock)
{
    camera_state_t st = uvc_get_camera_state();
    const uvc_mode_t *mode = uvc_get_mode();
    uint64_t uptime_ms = (uint64_t)xTaskGetTickCount() * portTICK_PERIOD_MS;
    uint32_t heap_free = kfree_size();
    uint32_t psram_free = pfree_size();
    uint32_t pool_total = 0U, pool_free = 0U, pool_queued = 0U;
    uint32_t snap_req_total = 0U, snap_ok = 0U, snap_timeout = 0U;
    uint32_t snap_invalid_total = 0U, snap_errpkts_total = 0U, snap_small_total = 0U, snap_send_fail = 0U;
    uint32_t snap_dump_done = 0U;
    uint32_t snap_last_len = 0U, snap_last_crc32 = 0U;
    uint16_t snap_last_w = 0U, snap_last_h = 0U;
    char mode_str[40] = "none";
    char json[1024];

    frame_pool_stats(&pool_total, &pool_free, &pool_queued);

    if (st >= CAMERA_ATTACHED) {
        snprintf(mode_str, sizeof(mode_str), "MJPEG %ux%u @ %ufps",
                 mode->width, mode->height, mode->fps);
    }

    taskENTER_CRITICAL();
    snap_req_total = g_snapshot_requests_total;
    snap_ok = g_snapshot_requests_ok;
    snap_timeout = g_snapshot_requests_timeout;
    snap_invalid_total = g_snapshot_frames_invalid_total;
    snap_errpkts_total = g_snapshot_frames_errpkts_total;
    snap_small_total = g_snapshot_frames_small_total;
    snap_send_fail = g_snapshot_send_fail_total;
    snap_dump_done = g_snapshot_dump_done ? 1U : 0U;
    snap_last_len = g_snapshot_last_len;
    snap_last_crc32 = g_snapshot_last_crc32;
    snap_last_w = g_snapshot_last_width;
    snap_last_h = g_snapshot_last_height;
    taskEXIT_CRITICAL();

    int jlen = snprintf(json, sizeof(json),
                        "{"
                        "\"camera_state\":\"%s\","
                        "\"camera_attached\":%s,"
                        "\"selected_mode\":\"%s\","
                        "\"frames_in\":%" PRIu64 ","
                        "\"frames_dequeued\":%" PRIu64 ","
                        "\"frames_dropped\":%" PRIu64 ","
                        "\"frames_sent\":%" PRIu64 ","
                        "\"stream_client_connected\":%s,"
                        "\"snapshot_requests_total\":%u,"
                        "\"snapshot_requests_ok\":%u,"
                        "\"snapshot_requests_timeout\":%u,"
                        "\"snapshot_invalid_frames_total\":%u,"
                        "\"snapshot_errpkt_reject_total\":%u,"
                        "\"snapshot_too_small_frames_total\":%u,"
                        "\"snapshot_send_fail_total\":%u,"
                        "\"snapshot_dump_done\":%s,"
                        "\"snapshot_last_len\":%u,"
                        "\"snapshot_last_crc32\":\"%08" PRIX32 "\","
                        "\"snapshot_last_width\":%u,"
                        "\"snapshot_last_height\":%u,"
                        "\"heap_free_bytes\":%u,"
                        "\"psram_free_bytes\":%u,"
                        "\"pool_total\":%u,"
                        "\"pool_free\":%u,"
                        "\"pool_queued\":%u,"
                        "\"uptime_ms\":%" PRIu64
                        "}",
                        camera_state_str(st),
                        (st >= CAMERA_ATTACHED) ? "true" : "false",
                        mode_str,
                        (uint64_t)uvc_get_frames_captured(),
                        (uint64_t)g_counters.frames_dequeued,
                        (uint64_t)g_counters.frames_dropped,
                        (uint64_t)g_counters.frames_sent,
                        g_counters.stream_client_connected ? "true" : "false",
                        (unsigned)snap_req_total,
                        (unsigned)snap_ok,
                        (unsigned)snap_timeout,
                        (unsigned)snap_invalid_total,
                        (unsigned)snap_errpkts_total,
                        (unsigned)snap_small_total,
                        (unsigned)snap_send_fail,
                        snap_dump_done ? "true" : "false",
                        (unsigned)snap_last_len,
                        (uint32_t)snap_last_crc32,
                        (unsigned)snap_last_w,
                        (unsigned)snap_last_h,
                        (unsigned)heap_free,
                        (unsigned)psram_free,
                        (unsigned)pool_total,
                        (unsigned)pool_free,
                        (unsigned)pool_queued,
                        uptime_ms);
    if (jlen < 0) {
        send_error(sock, "500 Internal Server Error", "status encode failed");
        return;
    }

    if (send_response(sock, "200 OK", "application/json", json, jlen) < 0) {
        LOG_W("[HTTP] Status response send failed (errno=%d)\r\n", errno);
    }
}

/* ------------------------------------------------------------------ */
/* Request parsing and routing                                         */
/* ------------------------------------------------------------------ */

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

    /* Accept absolute-form requests: GET http://host/path HTTP/1.1 */
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

static void handle_client(int sock)
{
    char buf[HTTP_RECV_BUF_SIZE];
    char path_buf[HTTP_RECV_BUF_SIZE];

    struct timeval tv = { .tv_sec = 5, .tv_usec = 0 };
    (void)setsockopt(sock, SOL_SOCKET, SO_RCVTIMEO, &tv, sizeof(tv));
    (void)setsockopt(sock, SOL_SOCKET, SO_SNDTIMEO, &tv, sizeof(tv));

    int n = recv_request_line(sock, buf, sizeof(buf));
    if (n <= 0) {
        return;
    }

    char *line_end = strstr(buf, "\r\n");
    if (!line_end) {
        line_end = strchr(buf, '\n');
    }
    if (line_end) {
        *line_end = '\0';
    }

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

    int path_len = 0;
    if (!normalize_request_path(path, (int)(path_end - path),
                                path_buf, sizeof(path_buf), &path_len)) {
        send_error(sock, "400 Bad Request", "Unsupported request target");
        return;
    }
    path = path_buf;

    if (path_len == 1 && path[0] == '/') {
        handle_root(sock);
    } else if ((path_len == 13 && strncmp(path, "/snapshot.jpg", 13) == 0) ||
               (path_len == 9 && strncmp(path, "/snapshot", 9) == 0)) {
        handle_snapshot(sock);
    } else if (path_len == 12 && strncmp(path, "/status.json", 12) == 0) {
        handle_status(sock);
    } else {
        send_error(sock, "404 Not Found", "Unknown endpoint");
    }

    /* Give lwIP a chance to flush queued payload before close on tiny targets.
     * Some clients otherwise observe occasional truncated snapshot responses. */
    (void)shutdown(sock, SHUT_WR);
    vTaskDelay(pdMS_TO_TICKS(10));
}

/* ------------------------------------------------------------------ */
/* Server task                                                         */
/* ------------------------------------------------------------------ */

static void http_server_task(void *arg)
{
    (void)arg;

    int server_fd = socket(AF_INET, SOCK_STREAM, 0);
    if (server_fd < 0) {
        LOG_E("[HTTP] socket() failed\r\n");
        g_http_started = false;
        vTaskDelete(NULL);
        return;
    }

    int optval = 1;
    (void)setsockopt(server_fd, SOL_SOCKET, SO_REUSEADDR, &optval, sizeof(optval));

    struct sockaddr_in addr;
    memset(&addr, 0, sizeof(addr));
    addr.sin_family = AF_INET;
    addr.sin_port = htons(HTTP_PORT);
    addr.sin_addr.s_addr = INADDR_ANY;

    if (bind(server_fd, (struct sockaddr *)&addr, sizeof(addr)) < 0) {
        LOG_E("[HTTP] bind(%d) failed\r\n", HTTP_PORT);
        closesocket(server_fd);
        g_http_started = false;
        vTaskDelete(NULL);
        return;
    }

    if (listen(server_fd, HTTP_LISTEN_BACKLOG) < 0) {
        LOG_E("[HTTP] listen() failed\r\n");
        closesocket(server_fd);
        g_http_started = false;
        vTaskDelete(NULL);
        return;
    }

    LOG_I("[HTTP] Server listening: http://%s/\r\n", AP_IP_ADDR);

    for (;;) {
        struct sockaddr_in client_addr;
        socklen_t addr_len = sizeof(client_addr);
        int client_fd = accept(server_fd, (struct sockaddr *)&client_addr, &addr_len);
        if (client_fd < 0) {
            continue;
        }

        int flag = 1;
        (void)setsockopt(client_fd, IPPROTO_TCP, TCP_NODELAY, &flag, sizeof(flag));

        handle_client(client_fd);
        closesocket(client_fd);
    }
}

void http_server_start(void)
{
    if (g_http_started) {
        return;
    }

    g_http_started = true;
    if (xTaskCreate(http_server_task, "http", HTTP_TASK_STACK, NULL,
                    HTTP_TASK_PRIO, NULL) != pdPASS) {
        g_http_started = false;
        LOG_E("[HTTP] Failed to create HTTP server task\r\n");
    }
}
