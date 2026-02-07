#include "metrics.h"
#include "http_server.h"
#include "uvc_capture.h"
#include "wifi_ap.h"
#include "frame_pool.h"

#include "FreeRTOS.h"
#include "timers.h"
#include "mem.h"

#include <stdio.h>

#include "shell.h"

#define DBG_TAG "METRICS"
#include "log.h"

/* ------------------------------------------------------------------ */
/* 1 Hz periodic metrics                                               */
/* ------------------------------------------------------------------ */

static uint64_t prev_frames_in;
static uint64_t prev_frames_sent;
static uint64_t prev_frames_dropped;

static void metrics_timer_cb(TimerHandle_t xTimer)
{
    (void)xTimer;

    const http_counters_t *c = http_get_counters();

    uint64_t fi = uvc_get_frames_captured();
    uint64_t fs = c->frames_sent;
    uint64_t fd = c->frames_dropped;

    uint64_t dfi = fi - prev_frames_in;
    uint64_t dfs = fs - prev_frames_sent;
    uint64_t dfd = fd - prev_frames_dropped;

    prev_frames_in      = fi;
    prev_frames_sent    = fs;
    prev_frames_dropped = fd;

    int clients = wifi_ap_get_sta_count() + (c->stream_client_connected ? 1 : 0);

    printf("[METRICS] in=%u sent=%u drop=%u clients=%d heap=%u psram=%u\r\n",
           (unsigned)dfi, (unsigned)dfs, (unsigned)dfd,
           clients, (unsigned)kfree_size(), (unsigned)pfree_size());
}

void metrics_init(void)
{
    const http_counters_t *c = http_get_counters();
    prev_frames_in      = uvc_get_frames_captured();
    prev_frames_sent    = c->frames_sent;
    prev_frames_dropped = c->frames_dropped;

    TimerHandle_t tmr = xTimerCreate("metrics", pdMS_TO_TICKS(1000),
                                     pdTRUE, NULL, metrics_timer_cb);
    if (!tmr) {
        LOG_E("metrics timer create failed\r\n");
        return;
    }

    xTimerStart(tmr, 0);
    LOG_I("1 Hz metrics timer started\r\n");
}

/* ------------------------------------------------------------------ */
/* CLI: mem_stats                                                       */
/* ------------------------------------------------------------------ */

static int cmd_mem_stats(int argc, char **argv)
{
    (void)argc; (void)argv;

    printf("SRAM heap free:  %u bytes\r\n", (unsigned)kfree_size());
    printf("PSRAM heap free: %u bytes\r\n", (unsigned)pfree_size());

    uint32_t total, free_cnt, queued;
    frame_pool_stats(&total, &free_cnt, &queued);
    printf("Frame pool:      %u total, %u free, %u queued\r\n",
           (unsigned)total, (unsigned)free_cnt, (unsigned)queued);

    return 0;
}
SHELL_CMD_EXPORT_ALIAS(cmd_mem_stats, mem_stats, Show memory and pool stats);
