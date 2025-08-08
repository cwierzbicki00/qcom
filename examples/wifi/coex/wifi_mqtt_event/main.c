#include "shell.h"
#include <FreeRTOS.h>
#include "task.h"
#include "board.h"

#define DBG_TAG "MAIN"
#include "log.h"

static struct qcc74x_device_s *uart0;

extern void app_ble_start(void);
extern int  app_wifi_start(void);

int main(void)
{
    board_init();

    configASSERT((configMAX_PRIORITIES > 4));

    uart0 = qcc74x_device_get_by_name("uart0");
    shell_init_with_task(uart0);

    qcc74x_mtd_init();
    /* ble stack need easyflash kv */
    easyflash_init();

#if defined(QCC743)
    /* Init rf */
    if (0 != rfparam_init(0, NULL, 0)) {
        printf("PHY RF init failed!\r\n");
        return 0;
    }
#endif

    tcpip_init(NULL, NULL);
    
    app_wifi_start();
    app_ble_start();
    
    vTaskStartScheduler();

    while (1) {
    }
}
