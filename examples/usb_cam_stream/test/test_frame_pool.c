/*
 * Host-side test for the frame buffer pool.
 *
 * Validates:
 *   1. Allocate FRAME_POOL_COUNT buffers successfully.
 *   2. Next alloc fails (pool exhausted).
 *   3. Free all buffers, then re-allocate succeeds.
 *   4. Push FRAME_POOL_COUNT frames into queue, pop in FIFO order.
 *   5. Push to full queue triggers drop-oldest.
 *   6. Data integrity across push/pop.
 *   7. Double-free is harmless (frame_free sets data=NULL).
 *   8. Pop on empty queue returns -1.
 *   9. Pool fully restored after drain.
 *  10. frame_queue_drain() frees all queued frames back to pool.
 *
 * Build & run:
 *   cd examples/usb_cam_stream
 *   gcc -std=c11 -Wall -Wextra -O2 -DTEST_HOST_BUILD \
 *       -o test/test_frame_pool test/test_frame_pool.c && \
 *   ./test/test_frame_pool
 *
 * Note: This test does NOT link against the SDK's qcc74x_block_pool.c
 * because that code assumes 32-bit pointers (truncates upper address
 * bits via ~uint32_t mask in alignment).  Instead we use a minimal
 * host-side block allocator that exercises the same frame_pool logic
 * (queue, push/pop, drop-oldest) that runs on the target.
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <stdbool.h>

/* ------------------------------------------------------------------ */
/* Minimal FreeRTOS mocks                                              */
/* ------------------------------------------------------------------ */

typedef int BaseType_t;
typedef uint32_t TickType_t;
#define pdTRUE   1
#define pdFALSE  0
#define pdMS_TO_TICKS(ms) (ms)

/* Queue mock: circular buffer */
typedef struct {
    uint8_t *buf;
    size_t   item_size;
    size_t   capacity;
    size_t   head;
    size_t   tail;
    size_t   count;
} MockQueue;

typedef MockQueue *QueueHandle_t;

static QueueHandle_t xQueueCreate(size_t len, size_t item_size)
{
    MockQueue *q = calloc(1, sizeof(MockQueue));
    q->buf       = calloc(len, item_size);
    q->item_size = item_size;
    q->capacity  = len;
    return q;
}

static BaseType_t xQueueSend(QueueHandle_t q, const void *item,
                             TickType_t wait)
{
    (void)wait;
    if (q->count >= q->capacity) return pdFALSE;
    memcpy(q->buf + q->tail * q->item_size, item, q->item_size);
    q->tail = (q->tail + 1) % q->capacity;
    q->count++;
    return pdTRUE;
}

static BaseType_t xQueueReceive(QueueHandle_t q, void *item,
                                TickType_t wait)
{
    (void)wait;
    if (q->count == 0) return pdFALSE;
    memcpy(item, q->buf + q->head * q->item_size, q->item_size);
    q->head = (q->head + 1) % q->capacity;
    q->count--;
    return pdTRUE;
}

static size_t uxQueueMessagesWaiting(QueueHandle_t q)
{
    return q->count;
}

/* LOG mock */
#define LOG_I(fmt, ...) printf("[INFO ] " fmt, ##__VA_ARGS__)
#define LOG_E(fmt, ...) fprintf(stderr, "[ERROR] " fmt, ##__VA_ARGS__)

/* ------------------------------------------------------------------ */
/* Frame pool types & constants (match frame_pool.h)                   */
/* ------------------------------------------------------------------ */

#define FRAME_MAX_SIZE   (100 * 1024)
#define FRAME_POOL_COUNT 4

typedef struct {
    uint8_t *data;
    uint32_t len;
    uint32_t timestamp_ms;
} frame_t;

/* ------------------------------------------------------------------ */
/* Host-side block pool (replaces qcc74x_block_pool for 64-bit host)  */
/* ------------------------------------------------------------------ */

typedef struct blk_node {
    struct blk_node *next;
    uint8_t         *block;
} blk_node_t;

static blk_node_t  blk_nodes[FRAME_POOL_COUNT];
static uint8_t    *blk_backing;
static blk_node_t *free_head;
static uint32_t    blk_total;
static uint32_t    blk_free_count;

static QueueHandle_t frame_queue;
static volatile bool initialised;

/* ------------------------------------------------------------------ */
/* frame_pool API (mirrors frame_pool.c logic exactly)                 */
/* ------------------------------------------------------------------ */

static int frame_pool_init(void)
{
    if (initialised) return 0;

    blk_backing = aligned_alloc(64, (size_t)FRAME_POOL_COUNT * FRAME_MAX_SIZE);
    if (!blk_backing) { LOG_E("alloc failed\n"); return -1; }

    free_head = NULL;
    for (int i = FRAME_POOL_COUNT - 1; i >= 0; i--) {
        blk_nodes[i].block = blk_backing + (size_t)i * FRAME_MAX_SIZE;
        blk_nodes[i].next  = free_head;
        free_head = &blk_nodes[i];
    }
    blk_total      = FRAME_POOL_COUNT;
    blk_free_count = FRAME_POOL_COUNT;

    LOG_I("frame pool: %u blocks x %u KB (free %u)\n",
          blk_total, FRAME_MAX_SIZE / 1024, blk_free_count);

    frame_queue = xQueueCreate(FRAME_POOL_COUNT, sizeof(frame_t));
    if (!frame_queue) { LOG_E("queue create failed\n"); return -1; }

    initialised = true;
    return 0;
}

static int frame_alloc(frame_t *frame)
{
    if (!free_head) return -1;
    blk_node_t *n = free_head;
    free_head = n->next;
    n->next = NULL;
    blk_free_count--;

    frame->data         = n->block;
    frame->len          = 0;
    frame->timestamp_ms = 0;
    return 0;
}

static void frame_free(frame_t *frame)
{
    if (!frame || !frame->data) return;

    size_t idx = (size_t)(frame->data - blk_backing) / FRAME_MAX_SIZE;
    if (idx >= FRAME_POOL_COUNT) return;

    blk_node_t *n = &blk_nodes[idx];
    n->next    = free_head;
    free_head  = n;
    blk_free_count++;

    frame->data = NULL;
    frame->len  = 0;
}

static void frame_queue_push(const frame_t *frame)
{
    if (xQueueSend(frame_queue, frame, 0) == pdTRUE) return;

    /* Queue full — drop oldest */
    frame_t oldest;
    if (xQueueReceive(frame_queue, &oldest, 0) == pdTRUE)
        frame_free(&oldest);

    if (xQueueSend(frame_queue, frame, 0) != pdTRUE) {
        frame_t tmp = *frame;
        frame_free(&tmp);
        LOG_E("frame queue push failed after drop\n");
    }
}

static int frame_queue_pop(frame_t *frame, uint32_t timeout_ms)
{
    TickType_t ticks = (timeout_ms == 0) ? 0 : pdMS_TO_TICKS(timeout_ms);
    return (xQueueReceive(frame_queue, frame, ticks) == pdTRUE) ? 0 : -1;
}

static void frame_queue_drain(void)
{
    frame_t frame;
    uint32_t drained = 0;
    while (xQueueReceive(frame_queue, &frame, 0) == pdTRUE) {
        frame_free(&frame);
        drained++;
    }
    if (drained > 0) {
        LOG_I("drained %u queued frames\n", (unsigned)drained);
    }
}

static void frame_pool_stats(uint32_t *total, uint32_t *free_count,
                             uint32_t *queued)
{
    if (total)      *total      = blk_total;
    if (free_count) *free_count = blk_free_count;
    if (queued)     *queued     = (uint32_t)uxQueueMessagesWaiting(frame_queue);
}

/* ------------------------------------------------------------------ */
/* Test harness                                                        */
/* ------------------------------------------------------------------ */

static int tests_run  = 0;
static int tests_pass = 0;
static int tests_fail = 0;

#define RUN_TEST(fn) do { \
    tests_run++;                                                   \
    printf("  TEST %-50s ", #fn);                                  \
    if (fn()) { tests_pass++; printf("PASS\n"); }                 \
    else      { tests_fail++; printf("FAIL\n"); }                 \
} while(0)

/* ------------------------------------------------------------------ */
/* Tests (return 1 on pass, 0 on fail)                                */
/* ------------------------------------------------------------------ */

static int test_init(void)
{
    return frame_pool_init() == 0;
}

static int test_alloc_exhaust_free_realloc(void)
{
    frame_t frames[FRAME_POOL_COUNT];

    /* Alloc all */
    for (int i = 0; i < FRAME_POOL_COUNT; i++) {
        if (frame_alloc(&frames[i]) != 0) {
            printf("alloc %d failed ", i);
            return 0;
        }
        if (!frames[i].data) { printf("data[%d] NULL ", i); return 0; }
        frames[i].len          = 1000 + i;
        frames[i].timestamp_ms = 100 * (i + 1);
    }

    /* Pool exhausted */
    frame_t extra;
    if (frame_alloc(&extra) == 0) {
        printf("alloc should fail ");
        frame_free(&extra);
        for (int i = 0; i < FRAME_POOL_COUNT; i++) frame_free(&frames[i]);
        return 0;
    }

    /* Stats: 0 free */
    uint32_t f;
    frame_pool_stats(NULL, &f, NULL);
    if (f != 0) {
        printf("expected 0 free got %u ", f);
        for (int i = 0; i < FRAME_POOL_COUNT; i++) frame_free(&frames[i]);
        return 0;
    }

    /* Free all */
    for (int i = 0; i < FRAME_POOL_COUNT; i++) frame_free(&frames[i]);

    /* All free */
    uint32_t t;
    frame_pool_stats(&t, &f, NULL);
    if (f != t) {
        printf("expected %u free got %u ", t, f);
        return 0;
    }

    /* Re-alloc all */
    for (int i = 0; i < FRAME_POOL_COUNT; i++) {
        if (frame_alloc(&frames[i]) != 0) {
            printf("re-alloc %d failed ", i);
            for (int j = 0; j < i; j++) frame_free(&frames[j]);
            return 0;
        }
    }
    for (int i = 0; i < FRAME_POOL_COUNT; i++) frame_free(&frames[i]);
    return 1;
}

static int test_queue_push_pop_fifo(void)
{
    frame_t frames[FRAME_POOL_COUNT];

    for (int i = 0; i < FRAME_POOL_COUNT; i++) {
        if (frame_alloc(&frames[i]) != 0) return 0;
        frames[i].len          = 2000 + i;
        frames[i].timestamp_ms = 200 * (i + 1);
        frame_queue_push(&frames[i]);
    }

    uint32_t q;
    frame_pool_stats(NULL, NULL, &q);
    if (q != FRAME_POOL_COUNT) {
        printf("queue %u != %d ", q, FRAME_POOL_COUNT);
        frame_t tmp;
        while (frame_queue_pop(&tmp, 0) == 0) frame_free(&tmp);
        return 0;
    }

    for (int i = 0; i < FRAME_POOL_COUNT; i++) {
        frame_t out;
        if (frame_queue_pop(&out, 0) != 0) {
            printf("pop %d failed ", i);
            return 0;
        }
        if (out.len != (uint32_t)(2000 + i)) {
            printf("order wrong at %d: len=%u exp=%u ", i, out.len, 2000 + i);
            frame_free(&out);
            frame_t tmp;
            while (frame_queue_pop(&tmp, 0) == 0) frame_free(&tmp);
            return 0;
        }
        frame_free(&out);
    }
    return 1;
}

static int test_queue_overflow_drops_oldest(void)
{
    frame_t frames[FRAME_POOL_COUNT];

    /* Fill pool and queue */
    for (int i = 0; i < FRAME_POOL_COUNT; i++) {
        if (frame_alloc(&frames[i]) != 0) return 0;
        frames[i].len          = 5000 + i;
        frames[i].timestamp_ms = 500 * (i + 1);
    }
    for (int i = 0; i < FRAME_POOL_COUNT; i++)
        frame_queue_push(&frames[i]);

    /*
     * Queue full, pool empty.  Push a dummy (data=NULL) to trigger
     * the drop-oldest path.  The oldest frame's block is freed.
     */
    frame_t dummy = { .data = NULL, .len = 9999, .timestamp_ms = 99999 };

    uint32_t free_before;
    frame_pool_stats(NULL, &free_before, NULL);

    frame_queue_push(&dummy);

    uint32_t free_after;
    frame_pool_stats(NULL, &free_after, NULL);
    if (free_after != free_before + 1) {
        printf("expected %u free got %u ", free_before + 1, free_after);
        frame_t tmp;
        while (frame_queue_pop(&tmp, 0) == 0) frame_free(&tmp);
        return 0;
    }

    uint32_t q;
    frame_pool_stats(NULL, NULL, &q);
    if (q != FRAME_POOL_COUNT) {
        printf("queue %u != %d ", q, FRAME_POOL_COUNT);
        frame_t tmp;
        while (frame_queue_pop(&tmp, 0) == 0) frame_free(&tmp);
        return 0;
    }

    /* Oldest (len=5000) was dropped; first pop should be frames[1] (len=5001) */
    frame_t popped;
    if (frame_queue_pop(&popped, 0) != 0) return 0;
    if (popped.len != 5001) {
        printf("expected len=5001 got %u ", popped.len);
        frame_free(&popped);
        frame_t tmp;
        while (frame_queue_pop(&tmp, 0) == 0) frame_free(&tmp);
        return 0;
    }
    frame_free(&popped);

    /* Drain rest */
    frame_t tmp;
    while (frame_queue_pop(&tmp, 0) == 0) frame_free(&tmp);
    return 1;
}

static int test_data_integrity(void)
{
    frame_t f;
    if (frame_alloc(&f) != 0) return 0;
    memset(f.data, 0xAB, FRAME_MAX_SIZE);
    f.len          = FRAME_MAX_SIZE;
    f.timestamp_ms = 42;

    frame_queue_push(&f);

    frame_t out;
    if (frame_queue_pop(&out, 0) != 0) return 0;
    if (out.len != FRAME_MAX_SIZE)              { frame_free(&out); return 0; }
    if (out.timestamp_ms != 42)                 { frame_free(&out); return 0; }
    if (out.data[0] != 0xAB)                    { frame_free(&out); return 0; }
    if (out.data[FRAME_MAX_SIZE - 1] != 0xAB)   { frame_free(&out); return 0; }
    frame_free(&out);
    return 1;
}

static int test_double_free_harmless(void)
{
    frame_t f;
    if (frame_alloc(&f) != 0) return 0;
    frame_free(&f);
    if (f.data != NULL) return 0;
    frame_free(&f); /* no-op */
    return 1;
}

static int test_pool_fully_restored(void)
{
    uint32_t total, free_cnt, queued;
    frame_pool_stats(&total, &free_cnt, &queued);
    if (free_cnt != total) { printf("pool %u/%u ", free_cnt, total); return 0; }
    if (queued != 0)       { printf("queue %u ", queued); return 0; }
    return 1;
}

static int test_pop_empty_returns_error(void)
{
    frame_t f;
    return frame_queue_pop(&f, 0) == -1;
}

static int test_drain_frees_all_queued(void)
{
    /* Fill queue with frames */
    frame_t frames[FRAME_POOL_COUNT];
    for (int i = 0; i < FRAME_POOL_COUNT; i++) {
        if (frame_alloc(&frames[i]) != 0) return 0;
        frames[i].len = 7000 + i;
        frame_queue_push(&frames[i]);
    }

    uint32_t free_before;
    frame_pool_stats(NULL, &free_before, NULL);
    if (free_before != 0) { printf("expected 0 free got %u ", free_before); return 0; }

    /* Drain should free all queued frames back to pool */
    frame_queue_drain();

    uint32_t total, free_after, queued;
    frame_pool_stats(&total, &free_after, &queued);
    if (free_after != total) { printf("expected %u free got %u ", total, free_after); return 0; }
    if (queued != 0)         { printf("queue should be 0 got %u ", queued); return 0; }
    return 1;
}

/* ------------------------------------------------------------------ */
/* Main                                                                */
/* ------------------------------------------------------------------ */

int main(void)
{
    printf("=== frame_pool host test ===\n\n");

    RUN_TEST(test_init);
    RUN_TEST(test_alloc_exhaust_free_realloc);
    RUN_TEST(test_queue_push_pop_fifo);
    RUN_TEST(test_queue_overflow_drops_oldest);
    RUN_TEST(test_data_integrity);
    RUN_TEST(test_double_free_harmless);
    RUN_TEST(test_pool_fully_restored);
    RUN_TEST(test_pop_empty_returns_error);
    RUN_TEST(test_drain_frees_all_queued);

    printf("\n=== Results: %d/%d passed", tests_pass, tests_run);
    if (tests_fail > 0) printf(", %d FAILED", tests_fail);
    printf(" ===\n");

    return (tests_fail == 0) ? 0 : 1;
}
