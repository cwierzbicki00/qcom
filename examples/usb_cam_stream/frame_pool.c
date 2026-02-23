#include "frame_pool.h"

#include "FreeRTOS.h"
#include "task.h"
#include "semphr.h"
#include "queue.h"

#include "qcc74x_block_pool.h"

#include <string.h>

#define DBG_TAG "FPOOL"
#include "log.h"

/* ------------------------------------------------------------------ */
/* PSRAM-backed storage for the block pool                             */
/* ------------------------------------------------------------------ */

/*
 * Each block needs FRAME_MAX_SIZE bytes of payload plus sizeof(void*)
 * for the internal free-list pointer.  We add a small margin for
 * alignment overhead.
 */
#define POOL_BLOCK_OVERHEAD  (sizeof(void *))
#define POOL_MEM_SIZE        (FRAME_POOL_COUNT * (FRAME_MAX_SIZE + POOL_BLOCK_OVERHEAD) + 128)

static uint8_t pool_memory[POOL_MEM_SIZE]
    __attribute__((section(".psram_noinit"), aligned(64)));

/* ------------------------------------------------------------------ */
/* Internal state                                                      */
/* ------------------------------------------------------------------ */

static qcc74x_block_pool_t  blk_pool;
static QueueHandle_t         frame_queue;
static SemaphoreHandle_t     pool_mtx;
static SemaphoreHandle_t     pool_sem;
static volatile uint32_t     stale_drop_total;

static volatile bool         initialised;

/* ------------------------------------------------------------------ */
/* Block pool thread-safety callbacks (FreeRTOS)                       */
/* ------------------------------------------------------------------ */

static int pool_mtx_get(uint32_t wait)
{
    return (xSemaphoreTake(pool_mtx, (TickType_t)wait) == pdTRUE) ? 0 : -1;
}

static void pool_mtx_put(void)
{
    xSemaphoreGive(pool_mtx);
}

static int pool_sem_get(uint32_t wait)
{
    return (xSemaphoreTake(pool_sem, (TickType_t)wait) == pdTRUE) ? 0 : -1;
}

static void pool_sem_put(void)
{
    xSemaphoreGive(pool_sem);
}

/* ------------------------------------------------------------------ */
/* Public API                                                          */
/* ------------------------------------------------------------------ */

int frame_pool_init(void)
{
    if (initialised) {
        return 0;
    }

    /* Create FreeRTOS primitives */
    pool_mtx = xSemaphoreCreateMutex();
    if (!pool_mtx) {
        LOG_E("mutex create failed\r\n");
        return -1;
    }

    pool_sem = xSemaphoreCreateCounting(FRAME_POOL_COUNT, FRAME_POOL_COUNT);
    if (!pool_sem) {
        LOG_E("semaphore create failed\r\n");
        return -1;
    }

    /* Create the block pool over PSRAM memory */
    int ret = qcc74x_block_pool_create(&blk_pool, FRAME_MAX_SIZE,
                                        QCC74x_BLOCK_POOL_ALIGN_64,
                                        pool_memory, sizeof(pool_memory));
    if (ret != 0) {
        LOG_E("block pool create failed (%d)\r\n", ret);
        return -1;
    }

    /* Register thread-safety callbacks */
    qcc74x_block_pool_add_mtx(&blk_pool, pool_mtx_get, pool_mtx_put);
    qcc74x_block_pool_add_sem(&blk_pool, pool_sem_get, pool_sem_put);

    uint32_t total, free_cnt;
    qcc74x_block_pool_info_get(&blk_pool, &total, &free_cnt);
    LOG_I("frame pool: %u blocks x %u KB in PSRAM (free %u)\r\n",
          total, FRAME_MAX_SIZE / 1024, free_cnt);

    /* Ready queue: holds completed frame descriptors */
    frame_queue = xQueueCreate(FRAME_QUEUE_DEPTH, sizeof(frame_t));
    if (!frame_queue) {
        LOG_E("frame queue create failed\r\n");
        return -1;
    }

    stale_drop_total = 0;
    initialised = true;
    return 0;
}

int frame_alloc(frame_t *frame)
{
    void *blk = NULL;

    configASSERT(initialised);
    configASSERT(frame != NULL);

    /* Non-blocking alloc (wait = 0) */
    if (qcc74x_block_pool_alloc(&blk_pool, &blk, 0) != 0) {
        return -1;
    }

    frame->data         = (uint8_t *)blk;
    frame->len          = 0;
    frame->timestamp_ms = 0;
    return 0;
}

void frame_free(frame_t *frame)
{
    if (frame && frame->data) {
        qcc74x_block_pool_free(&blk_pool, frame->data);
        frame->data = NULL;
        frame->len  = 0;
    }
}

void frame_queue_push(const frame_t *frame)
{
    /* Freshness policy: keep only the newest completed frame. */
    frame_t stale;
    uint32_t dropped = 0U;
    while (xQueueReceive(frame_queue, &stale, 0) == pdTRUE) {
        frame_free(&stale);
        dropped++;
    }
    if (dropped > 0U) {
        stale_drop_total += dropped;
    }

    if (xQueueSend(frame_queue, frame, 0) != pdTRUE) {
        /* Defensive: free producer-owned frame if queue unexpectedly rejects it. */
        frame_t tmp = *frame;
        frame_free(&tmp);
        LOG_E("frame queue push failed\r\n");
    }
}

int frame_queue_pop(frame_t *frame, uint32_t timeout_ms)
{
    TickType_t ticks = (timeout_ms == 0) ? 0 : pdMS_TO_TICKS(timeout_ms);

    if (xQueueReceive(frame_queue, frame, ticks) == pdTRUE) {
        return 0;
    }
    return -1;
}

int frame_queue_pop_latest(frame_t *frame, uint32_t timeout_ms)
{
    TickType_t ticks = (timeout_ms == 0) ? 0 : pdMS_TO_TICKS(timeout_ms);
    frame_t newer;
    uint32_t dropped = 0;

    if (xQueueReceive(frame_queue, frame, ticks) != pdTRUE) {
        return -1;
    }

    while (xQueueReceive(frame_queue, &newer, 0) == pdTRUE) {
        frame_free(frame);
        *frame = newer;
        dropped++;
    }

    if (dropped > 0) {
        stale_drop_total += dropped;
        if ((stale_drop_total % 64U) == 0U) {
            LOG_W("dropped %u stale queued frames (total=%u)\r\n",
                  (unsigned)dropped, (unsigned)stale_drop_total);
        }
    }

    return 0;
}

void frame_queue_drain(void)
{
    frame_t frame;
    uint32_t drained = 0;

    while (xQueueReceive(frame_queue, &frame, 0) == pdTRUE) {
        frame_free(&frame);
        drained++;
    }

    if (drained > 0) {
        LOG_I("drained %u queued frames\r\n", (unsigned)drained);
    }
}

bool frame_queue_drop_oldest(void)
{
    frame_t oldest;

    if (!frame_queue) {
        return false;
    }

    if (xQueueReceive(frame_queue, &oldest, 0) != pdTRUE) {
        return false;
    }

    frame_free(&oldest);
    return true;
}

void frame_pool_stats(uint32_t *total, uint32_t *free_count,
                      uint32_t *queued)
{
    if (total || free_count) {
        uint32_t t = 0, f = 0;
        qcc74x_block_pool_info_get(&blk_pool, &t, &f);
        if (total)      *total      = t;
        if (free_count) *free_count = f;
    }

    if (queued) {
        *queued = (uint32_t)uxQueueMessagesWaiting(frame_queue);
    }
}
