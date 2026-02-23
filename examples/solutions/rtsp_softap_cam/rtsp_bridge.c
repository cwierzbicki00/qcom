#include "rtsp_bridge.h"

#include <stdbool.h>
#include <string.h>
#include <stdio.h>
#include <inttypes.h>

#include "FreeRTOS.h"
#include "task.h"

#include "librtspsrv.h"

#include "uvc_capture.h"
#include "wifi_ap.h"
#include "http_server.h"
#include "shell.h"

#define DBG_TAG "RTSP"
#include "log.h"

#define RTSP_FPS_TARGET   15
#define RTSP_FRAME_WAITMS 40
#define OWNER_STALE_MS    750

static bool g_started;
static struct strm_info *g_owner_stream;
static frame_t g_inflight_frame;
static bool g_inflight_valid;
static TickType_t g_owner_last_tick;

static void release_inflight(void)
{
    if (!g_inflight_valid) {
        return;
    }

    uvc_frame_release(&g_inflight_frame);
    memset(&g_inflight_frame, 0, sizeof(g_inflight_frame));
    g_inflight_valid = false;
}

/* Reset RTSP ownership bookkeeping.
 * stop_capture=true is reserved for full bridge shutdown only. */
static void clear_owner(bool stop_capture)
{
    g_owner_stream = NULL;
    g_owner_last_tick = 0;
    http_stream_set_connected(false);
    release_inflight();
    if (stop_capture && uvc_get_camera_state() == CAMERA_STREAMING) {
        (void)uvc_stop_capture();
    }
}

static void rtsp_report_handler(int action)
{
    if (action == RTSP_STRM_REPORT_CLIENT_EXIT) {
        clear_owner(false);
        LOG_I("RTSP client detached\r\n");
    }
}

static int rtsp_get_frame(struct strm_info *strm, struct frm_info *frm)
{
    frame_t frame;
    camera_state_t st;

    if (!strm || !frm) {
        return -1;
    }

    if (!g_owner_stream) {
        g_owner_stream = strm;
        g_owner_last_tick = xTaskGetTickCount();
        http_stream_set_connected(true);
        LOG_I("RTSP client attached\r\n");
    }

    if (g_owner_stream != strm) {
        TickType_t now = xTaskGetTickCount();
        if ((g_owner_last_tick != 0) &&
            ((now - g_owner_last_tick) >= pdMS_TO_TICKS(OWNER_STALE_MS))) {
            LOG_W("Replacing stale RTSP owner\r\n");
            clear_owner(false);
            g_owner_stream = strm;
            g_owner_last_tick = now;
            http_stream_set_connected(true);
        } else {
            /* Keep a single stream producer to avoid frame ownership races. */
            http_stream_note_dropped();
            return 0;
        }
    }

    if (g_owner_stream == strm) {
        g_owner_last_tick = xTaskGetTickCount();
    }

    if (g_owner_stream != strm) {
        /* Keep a single stream producer to avoid frame ownership races. */
        http_stream_note_dropped();
        return 0;
    }

    st = uvc_get_camera_state();
    if (st == CAMERA_ATTACHED) {
        (void)uvc_start_capture();
        st = uvc_get_camera_state();
    }

    if (st != CAMERA_STREAMING) {
        return 0;
    }

    release_inflight();

    if (uvc_dequeue_latest_frame(&frame, RTSP_FRAME_WAITMS) != 0) {
        http_stream_note_dropped();
        return 0;
    }

    g_inflight_frame = frame;
    g_inflight_valid = true;

    frm->frm_buf = (char *)g_inflight_frame.data;
    frm->frm_sz = g_inflight_frame.len;
    frm->frm_type = FRM_TYPE_M;
    frm->timestamp = g_inflight_frame.timestamp_ms;

    http_stream_note_dequeued();
    http_stream_note_sent();

    return (int)frm->frm_sz;
}

int rtsp_bridge_start(void)
{
    int ret;

    if (g_started) {
        return 0;
    }

    http_stream_reset();
    memset(&g_inflight_frame, 0, sizeof(g_inflight_frame));
    g_inflight_valid = false;
    g_owner_stream = NULL;
    g_owner_last_tick = 0;

    set_strm_cb(rtsp_get_frame);
    rtsp_set_strm_report_cb(rtsp_report_handler);

    rtsp_set_audio_en(0);
    rtsp_set_video_en(1);
    rtsp_set_videoFmt(RTSP_VIDEOFMT_MJPEG);
    rtsp_set_video_fps(RTSP_FPS_TARGET);

    ret = rtsp_init_lib();
    if (ret != 0) {
        LOG_E("rtsp_init_lib failed: %d\r\n", ret);
        return ret;
    }

    g_started = true;
    LOG_I("RTSP server started on %s:8554\r\n", AP_IP_ADDR);
    return 0;
}

void rtsp_bridge_stop(void)
{
    if (!g_started) {
        return;
    }

    (void)rtsp_deinit_lib();
    clear_owner(true);
    g_started = false;
    LOG_I("RTSP server stopped\r\n");
}

static int cmd_rtsp_info(int argc, char **argv)
{
    const http_counters_t *c = http_get_counters();
    (void)argc;
    (void)argv;

    printf("RTSP started      : %s\r\n", g_started ? "yes" : "no");
    printf("RTSP URL          : rtsp://%s:8554/\r\n", AP_IP_ADDR);
    printf("Client connected  : %s\r\n", c->stream_client_connected ? "yes" : "no");
    printf("Frames dequeued   : %" PRIu64 "\r\n", c->frames_dequeued);
    printf("Frames sent       : %" PRIu64 "\r\n", c->frames_sent);
    printf("Frames dropped    : %" PRIu64 "\r\n", c->frames_dropped);
    return 0;
}
SHELL_CMD_EXPORT_ALIAS(cmd_rtsp_info, rtsp_info, Show RTSP stream status);
