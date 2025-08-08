#include "qcc74x_mtimer.h"
#include "qcc74x_uart.h"
#include "qcc74x_rtc.h"
#include "board.h"
#include "qcc74xlog.h"
#include "example_log.h"

/*!< Define the INLINE tag, output is disabled by default */
QCC74xLOG_DEFINE_TAG(INLINE, "inline func", false);

/*!< Define the MAIN tag, output is enabled by default */
QCC74xLOG_DEFINE_TAG(MAIN, "main", true);

/*!< Set the tag to be used in this file */
#undef QCC74xLOG_TAG
#define QCC74xLOG_TAG QCC74xLOG_GET_TAG(MAIN)

/*!< qcc74xlog multithreaded asynchronous example */
/*!< It is recommended to configure the synchronous mode before RTOS scheduling starts.
    After RTOS scheduling begins, switch to the asynchronous mode.
    This ensures that LOG output remains normal regardless of RTOS stability. */

struct qcc74x_device_s *uart0 = NULL;
static struct qcc74x_device_s *rtc = NULL;

/*!< Current UTC timestamp: 2022-12-16 17:52 */
uint32_t timestamp_base = 1671184300;

/** @defgroup   example_qcc74xlog_port port
-----------------------------------------------------------------------------
* @{
----------------------------------------------------------------------------*/
uint64_t qcc74xlog_clock(void)
{
    return qcc74x_mtimer_get_time_us();
}

uint32_t qcc74xlog_time(void)
{
    return QCC74x_RTC_TIME2SEC(qcc74x_rtc_get_time(rtc)) + timestamp_base;
}

char *qcc74xlog_thread(void)
{
    return "";
}
/*---------------------------------------------------------------------------
* @}            example_qcc74xlog_port port
----------------------------------------------------------------------------*/

#define EXAMPLE_LOG_POOL_SIZE 4096

qcc74xlog_t example_recorder;
void *example_recorder_pointer = &example_recorder;
static uint32_t example_pool[EXAMPLE_LOG_POOL_SIZE / 4];
qcc74xlog_direct_stream_t example_uart_stream;

/*****************************************************************************
* @brief        Stream output
*
* @param[in]    ptr         Pointer to the output information
* @param[in]    size        Size of the output information (bytes)
*
* @retval uint16_t
*****************************************************************************/
uint16_t example_uart_stream_output(void *ptr, uint16_t size)
{
    for (size_t i = 0; i < size; i++) {
        qcc74x_uart_putchar(uart0, ((char *)ptr)[i]);
    }
    return size;
}

/*****************************************************************************
* @brief        Initialize before entering multithreaded scheduling
* 
* 
*****************************************************************************/
void example_log_init_before_enter(void)
{
    void *record = (void *)&example_recorder;
    void *direct = (void *)&example_uart_stream;

    /*!< Create a recorder, configure the memory pool, memory pool size, and set the mode to synchronous */
    /*!< create recorder */
    if (0 != qcc74xlog_create(record, example_pool, EXAMPLE_LOG_POOL_SIZE, QCC74xLOG_MODE_SYNC)) {
        printf("qcc74xlog_create faild\r\n");
    }

    /*!< Create a stream direct of type stream outputter, enable color output, and set the mutex to NULL */
    /*!< create stream direct */
    qcc74xlog_direct_create(direct, QCC74xLOG_DIRECT_TYPE_STREAM, QCC74xLOG_DIRECT_COLOR_ENABLE, NULL, NULL);
    /*!< Configure the output function for stream output */
    qcc74xlog_direct_init_stream((void *)direct, example_uart_stream_output);

    /*!< Add the direct to the recorder */
    /*!< connect direct and recorder */
    qcc74xlog_append(record, direct);

    /*!< Restore the direct to the working mode */
    /*!< resume direct */
    qcc74xlog_direct_resume(direct);

    /*!< Restore the logger to the working mode */
    /*!< resume record */
    qcc74xlog_resume(record);
}

/** @defgroup   freertos_base
-----------------------------------------------------------------------------
* @{
----------------------------------------------------------------------------*/
#include <FreeRTOS.h>
#include "task.h"
#include "queue.h"
#include "semphr.h"
#include "timers.h"
#include "event_groups.h"

void vApplicationTickHook(void)
{
}

void vApplicationIdleHook(void)
{
}

void vAssertCalled(void)
{
    LOG_F("vAssertCalled\r\n");
    _CALL_ERROR();
}

void vApplicationStackOverflowHook(TaskHandle_t xTask, char *pcTaskName)
{
    LOG_F("vApplicationStackOverflowHook\r\n");
    LOG_F("Taskname [%s]\r\n", pcTaskName);
    _CALL_ERROR();
}

void vApplicationMallocFailedHook(void)
{
    LOG_F("vApplicationMallocFailedHook\r\n");
    _CALL_ERROR();
}

/*---------------------------------------------------------------------------
* @}            freertos_base
----------------------------------------------------------------------------*/

/** @defgroup   thread_start
-----------------------------------------------------------------------------
* @{
----------------------------------------------------------------------------*/
#include "shell.h"
extern void shell_init_with_task(struct qcc74x_device_s *shell);

extern void app_server_log_init(void);

extern TaskHandle_t consumer_handle;
extern TaskHandle_t producer_handle;
extern void consumer_task(void *pvParameters);
extern void producer_task(void *pvParameters);

static TaskHandle_t task_start;
static void
task_function_start(void *param)
{
    LOG_I("start start task\r\n");

    app_server_log_init();

    shell_init_with_task(uart0);

    xTaskCreate(consumer_task, (char *)"consumer_task", 512, NULL, 4, &consumer_handle);
    xTaskCreate(producer_task, (char *)"producer_task", 512, NULL, 5, &producer_handle);

    LOG_I("delete start task\r\n");
    vTaskDelete(NULL);
}

/*---------------------------------------------------------------------------
* @}            thread_start
----------------------------------------------------------------------------*/

QueueHandle_t queue;

int main(void)
{
    board_init();

    /*!< uart0 already initialized in bsp/board */
    uart0 = qcc74x_device_get_by_name("uart0");
    rtc = qcc74x_device_get_by_name("rtc");
    qcc74x_rtc_set_time(rtc, 0);

    example_log_init_before_enter();

    LOG_I("app start init\r\n");

    _ASSERT_PARAM(configMAX_PRIORITIES >= 7);

    queue = xQueueCreate(32, sizeof(void *));
    _ASSERT_PARAM(NULL != queue);

    _ASSERT_FUNC(pdPASS == xTaskCreate(
                               /*!< task function */ task_function_start,
                               /*!< task name     */ "START",
                               /*!< stack size    */ 1024,
                               /*!< task param    */ NULL,
                               /*!< task priority */ 6,
                               /*!< task handle   */ &task_start));

    LOG_I("app start init success\r\n");

    vTaskStartScheduler();

    while (1) {
        qcc74x_mtimer_delay_ms(200);
    }
}

void error_handler(void)
{
    volatile unsigned char dummy = 0;

    printf("(enter error handler)\r\n");
    LOG_F("enter error handler\r\n");
    LOG_FLUSH();

    uint32_t flag = qcc74x_irq_save();

    while (dummy == 0) {
    }

    qcc74x_irq_restore(flag);
}

static int tag_config(int argc, char **argv)
{
    int ret = 0;

    if (argc < 3) {
        LOG_I("tag_config <your tag> 1\r\n");
        LOG_I("tag_config <your tag> 0\r\n");
        return 0;
    }

    LOG_I("exec qcc74xlog_global_filter(\"%s\",%d)\r\n", argv[1], atoi(argv[2]));
    ret = qcc74xlog_global_filter(argv[1], atoi(argv[2]));
    if (ret) {
        LOG_E("exec result faild, %d\r\n", ret);
    } else {
        LOG_I("exec success\r\n");
    }

    return 0;
}

static int level_config(int argc, char **argv)
{
    int ret = 0;

    if (argc < 2) {
        LOG_I("level_config <your level>\r\n");
        return 0;
    }

    LOG_I("exec qcc74xlog_control(&example_recorder,QCC74xLOG_CMD_LEVEL,%d)\r\n", atoi(argv[1]));
    ret = qcc74xlog_control(&example_recorder, QCC74xLOG_CMD_LEVEL, atoi(argv[1]));

    if (ret) {
        LOG_E("exec result faild, %d\r\n", ret);
    } else {
        LOG_I("exec success\r\n");
    }

    return 0;
}

SHELL_CMD_EXPORT(tag_config, tag config);
SHELL_CMD_EXPORT(level_config, level config);