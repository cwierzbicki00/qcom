#include "qcc74x_mtimer.h"
#include "qcc74x_uart.h"
#include "board.h"

#include "usbd_core.h"

#include "FreeRTOS.h"
#include "task.h"

#define DBG_TAG "MAIN"
#include "log.h"

static TaskHandle_t start_handle;

void start_main(void *param)
{
    LOG_I("[OS] start_main task run\r\n");

    struct qcc74x_device_s *uart0 = qcc74x_device_get_by_name("uart0");
    void shell_init_with_task(struct qcc74x_device_s *shell);
    shell_init_with_task(uart0);
    LOG_I("Shell ready\r\n");

    vTaskDelete(NULL);
}

int main(void)
{
    board_init();

    LOG_I("cherryUSB Device demo\r\n");

    xTaskCreate(start_main, (char *)"start_task", 1024, NULL, configMAX_PRIORITIES - 1, &start_handle);

    LOG_I("[OS] start scheduler\r\n");
    vTaskStartScheduler();
}
