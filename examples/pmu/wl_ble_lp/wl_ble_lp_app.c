#include "FreeRTOS.h"
#include "task.h"
#include "timers.h"
#include "mem.h"

#include <lwip/tcpip.h>
#include <lwip/sockets.h>
#include <lwip/netdb.h>

#include "export/qcc74x_fw_api.h"
#include "wifi_mgmr_ext.h"
#include "wifi_mgmr.h"

#include "qcc74x_irq.h"
#include "qcc74x_mtimer.h"
#include "board.h"
#include "qcc74x_lp.h"
#include "qcc743_pm.h"
#include "qcc74x_uart.h"
#include "qcc74x_gpio.h"
#include "qcc74x_clock.h"
#include "qcc743_glb.h"
#include "qcc743_glb_gpio.h"
#include "qcc743_hbn.h"
#include "qcc74x_rtc.h"
#include "shell.h"
#include "pm_manager.h"


int pwr_info_clear(void)
{
    qcc74x_lp_info_clear();

    return 0;
}

#define SLEEP_PDS_US        80
#define ACTIVE_LPFW_US      38000
#define ACTIVE_APP_US       57000

uint64_t pwr_info_get(void)
{
    qcc74x_lp_info_t lp_info;
    qcc74x_lp_info_get(&lp_info);

    printf("\r\nVirtual time: %llu us\r\n", qcc74x_lp_get_virtual_us());
    printf("Power info dump:\r\n");
    printf("LPFW try recv bcn: %d, loss %d\r\n", lp_info.lpfw_recv_cnt, lp_info.lpfw_loss_cnt);
    printf("Total time %lldms\r\n", lp_info.time_total_us / 1000);
    printf("PDS sleep: %lldms\r\n", lp_info.sleep_pds_us / 1000);
    printf("LPFW active: %lldms\r\n", lp_info.active_lpfw_us / 1000);
    printf("APP active: %lldms\r\n", lp_info.active_app_us / 1000);

    uint64_t current = (lp_info.sleep_pds_us * SLEEP_PDS_US + lp_info.active_lpfw_us * ACTIVE_LPFW_US + lp_info.active_app_us * ACTIVE_APP_US) / lp_info.time_total_us;

    printf("Predict current: %llduA\r\n", current);

    return current;
}

void timerCallback(TimerHandle_t xTimer)
{
    pwr_info_get();
    pm_disable_tickless();
    xTimerDelete(xTimer, portMAX_DELAY);
}

void createAndStartTimer(const char* timerName, TickType_t timerPeriod)
{
    TimerHandle_t timer = xTimerCreate(timerName,
                                       timerPeriod,
                                       pdTRUE,
                                       0,
                                       timerCallback
                                    );

    if (timer == NULL)
    {
        printf("Failed to create timer.\n");
        return;
    }

    if (xTimerStart(timer, 0) != pdPASS)
    {
        printf("Failed to start timer.\n");
        return;
    }
}

void app_pm_enter_pds15(uint32_t timeouts_ms)
{
    if (timeouts_ms) {
        TickType_t timerPeriod = pdMS_TO_TICKS(timeouts_ms);

        char timerName[32];
        snprintf(timerName, sizeof(timerName), "PwrTimer_%u", (unsigned int)timerPeriod);

        createAndStartTimer(timerName, timerPeriod);
    }
}

int cmd_wakeup_timer(int argc, char **argv)
{
    uint32_t timeouts_ms;
    int enable_bcmd = 0;

    if ((argc > 2) && (argv[1] != NULL) && (argv[2] != NULL)) {
        printf("%s\r\n", argv[1]);
        timeouts_ms = atoi(argv[1]);
        enable_bcmd = atoi(argv[2]);
    } else {
        printf("Need timeouts.\r\n");
        return -1;
    }

    enable_multicast_broadcast = enable_bcmd;
    app_pm_enter_pds15(timeouts_ms);
    pm_enable_tickless();
    pwr_info_clear();

    return 0;
}

int wl_ble_cmd_init(void)
{
    return 0;
}

SHELL_CMD_EXPORT_ALIAS(cmd_wakeup_timer, wakeup_timer, wakeup timer);
