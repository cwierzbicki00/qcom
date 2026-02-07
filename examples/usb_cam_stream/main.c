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
#include "qcc74x_uart.h"

#include "qcc743_glb.h"
#include "rfparam_adapter.h"

#include "board.h"
#include "shell.h"

#include "wifi_ap.h"
#include "uvc_capture.h"
#include "http_server.h"
#include "metrics.h"

#include "qcc74x_efuse.h"

#define DBG_TAG "MAIN"
#include "log.h"

#define WIFI_STACK_SIZE  (1536)
#define TASK_PRIORITY_FW (16)

static struct qcc74x_device_s *uart0;
static TaskHandle_t wifi_fw_task;

extern void shell_init_with_task(struct qcc74x_device_s *shell);

int wifi_start_firmware_task(void)
{
    LOG_I("Starting wifi ...\r\n");

    GLB_PER_Clock_UnGate(GLB_AHB_CLOCK_IP_WIFI_PHY |
                         GLB_AHB_CLOCK_IP_WIFI_MAC_PHY |
                         GLB_AHB_CLOCK_IP_WIFI_PLATFORM);
    GLB_AHB_MCU_Software_Reset(GLB_AHB_MCU_SW_WIFI);

    extern void interrupt0_handler(void);
    qcc74x_irq_attach(WIFI_IRQn, (irq_callback)interrupt0_handler, NULL);
    qcc74x_irq_enable(WIFI_IRQn);

    xTaskCreate(wifi_main, (char *)"fw", WIFI_STACK_SIZE, NULL, TASK_PRIORITY_FW, &wifi_fw_task);

    return 0;
}

void wifi_event_handler(uint32_t code)
{
    switch (code) {
        case CODE_WIFI_ON_INIT_DONE:
            LOG_I("[APP] [EVT] WIFI_ON_INIT_DONE\r\n");
            wifi_mgmr_init();
            break;

        case CODE_WIFI_ON_MGMR_DONE:
            LOG_I("[APP] [EVT] WIFI_ON_MGMR_DONE\r\n");
            wifi_ap_start();
            break;

        case CODE_WIFI_ON_SCAN_DONE:
            LOG_I("[APP] [EVT] WIFI_ON_SCAN_DONE\r\n");
            break;

        case CODE_WIFI_ON_CONNECTED:
            LOG_I("[APP] [EVT] WIFI_ON_CONNECTED\r\n");
            break;

        case CODE_WIFI_ON_GOT_IP:
            LOG_I("[APP] [EVT] WIFI_ON_GOT_IP\r\n");
            LOG_I("[SYS] Memory left is %d Bytes\r\n", kfree_size());
            break;

        case CODE_WIFI_ON_DISCONNECT:
            LOG_I("[APP] [EVT] WIFI_ON_DISCONNECT\r\n");
            break;

        case CODE_WIFI_ON_AP_STARTED:
            wifi_ap_event_handler(code);
            http_server_start();
            metrics_init();
            break;

        case CODE_WIFI_ON_AP_STOPPED:
        case CODE_WIFI_ON_AP_STA_ADD:
        case CODE_WIFI_ON_AP_STA_DEL:
            wifi_ap_event_handler(code);
            break;

        default:
            LOG_I("[APP] [EVT] Unknown code %u\r\n", code);
            break;
    }
}

int main(void)
{
    board_init();

    LOG_I("FW: usb-cam-stream built %s %s\r\n", __DATE__, __TIME__);

    /* Print chip/board identification */
    {
        qcc74x_efuse_device_info_type dev_info;
        qcc74x_efuse_get_device_info(&dev_info);
        LOG_I("Board: qcc744dk  Chip: %s  PSRAM: %s  Flash: %s  Rev: A%d\r\n",
              dev_info.package_name ? dev_info.package_name : "?",
              dev_info.psram_info_name ? dev_info.psram_info_name : "?",
              dev_info.flash_info_name ? dev_info.flash_info_name : "?",
              dev_info.version);
        LOG_I("SRAM heap: %u bytes  PSRAM heap: %u bytes\r\n",
              (unsigned)kfree_size(), (unsigned)pfree_size());
    }

    uart0 = qcc74x_device_get_by_name("uart0");
    shell_init_with_task(uart0);

    if (0 != rfparam_init(0, NULL, 0)) {
        LOG_E("PHY RF init failed!\r\n");
        return 0;
    }
    LOG_I("PHY RF init success!\r\n");

    tcpip_init(NULL, NULL);
    wifi_start_firmware_task();

    uvc_capture_init();

    vTaskStartScheduler();

    while (1) {
    }
}
