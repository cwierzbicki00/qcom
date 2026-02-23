#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "mem.h"

#include <lwip/tcpip.h>

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
#include "rtsp_bridge.h"
#include "frame_pool.h"

#include "qcc74x_efuse.h"

#define DBG_TAG "MAIN"
#include "log.h"

#ifndef FW_VERSION
#define FW_VERSION "0.1.0"
#endif

#define WIFI_STACK_SIZE   (1536)
#define TASK_PRIORITY_FW  (16)
#define APP_STACK_SIZE    (1024)
#define APP_EVT_QUEUE_LEN (8)

static struct qcc74x_device_s *uart0;
static TaskHandle_t wifi_fw_task;
static QueueHandle_t app_evt_queue;

extern void shell_init_with_task(struct qcc74x_device_s *shell);

static int wifi_start_firmware_task(void)
{
    LOG_I("Starting wifi ...\r\n");

    GLB_PER_Clock_UnGate(GLB_AHB_CLOCK_IP_WIFI_PHY |
                         GLB_AHB_CLOCK_IP_WIFI_MAC_PHY |
                         GLB_AHB_CLOCK_IP_WIFI_PLATFORM);
    GLB_AHB_MCU_Software_Reset(GLB_AHB_MCU_SW_WIFI);

    extern void interrupt0_handler(void);
    qcc74x_irq_attach(WIFI_IRQn, (irq_callback)interrupt0_handler, NULL);
    qcc74x_irq_enable(WIFI_IRQn);

    if (xTaskCreate(wifi_main, (char *)"fw", WIFI_STACK_SIZE, NULL,
                    TASK_PRIORITY_FW, &wifi_fw_task) != pdPASS) {
        LOG_E("wifi fw task create failed\r\n");
        return -1;
    }

    return 0;
}

/*
 * SDK dispatches wifi_event_handler() with scheduler suspended, so any
 * potentially blocking work is deferred to this task via app_evt_queue.
 */
static void app_task(void *arg)
{
    (void)arg;
    uint32_t code;

    for (;;) {
        if (xQueueReceive(app_evt_queue, &code, portMAX_DELAY) != pdTRUE) {
            continue;
        }

        switch (code) {
            case CODE_WIFI_ON_MGMR_DONE:
                wifi_ap_start();
                break;

            case CODE_WIFI_ON_AP_STARTED:
                wifi_ap_event_handler(code);
                http_server_start();
                if (rtsp_bridge_start() != 0) {
                    LOG_E("RTSP server start failed\r\n");
                } else {
                    LOG_I("RTSP ready: rtsp://%s:8554/\r\n", AP_IP_ADDR);
                }
                LOG_I("Snapshot URL: http://%s/snapshot.jpg\r\n", AP_IP_ADDR);
                break;

            case CODE_WIFI_ON_AP_STOPPED:
                rtsp_bridge_stop();
                wifi_ap_event_handler(code);
                break;

            case CODE_WIFI_ON_AP_STA_ADD:
            case CODE_WIFI_ON_AP_STA_DEL:
                wifi_ap_event_handler(code);
                break;

            default:
                break;
        }
    }
}

void wifi_event_handler(uint32_t code)
{
    switch (code) {
        case CODE_WIFI_ON_INIT_DONE:
            LOG_I("[APP] [EVT] WIFI_ON_INIT_DONE\r\n");
            wifi_mgmr_init();
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

        case CODE_WIFI_ON_MGMR_DONE:
            LOG_I("[APP] [EVT] WIFI_ON_MGMR_DONE\r\n");
            xQueueSend(app_evt_queue, &code, 0);
            break;

        case CODE_WIFI_ON_AP_STARTED:
        case CODE_WIFI_ON_AP_STOPPED:
        case CODE_WIFI_ON_AP_STA_ADD:
        case CODE_WIFI_ON_AP_STA_DEL:
            xQueueSend(app_evt_queue, &code, 0);
            break;

        default:
            LOG_I("[APP] [EVT] Unknown code %u\r\n", code);
            break;
    }
}

int main(void)
{
    board_init();

    LOG_I("FW: rtsp-softap-cam v" FW_VERSION " (" GIT_TAG ") built %s %s\r\n",
          __DATE__, __TIME__);

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

    app_evt_queue = xQueueCreate(APP_EVT_QUEUE_LEN, sizeof(uint32_t));
    if (!app_evt_queue) {
        LOG_E("app event queue create failed\r\n");
        return 0;
    }

    if (xTaskCreate(app_task, "app", APP_STACK_SIZE, NULL,
                    TASK_PRIORITY_FW - 1, NULL) != pdPASS) {
        LOG_E("app task create failed\r\n");
        return 0;
    }

    if (frame_pool_init() != 0) {
        LOG_E("frame pool init failed\r\n");
        return 0;
    }

    tcpip_init(NULL, NULL);
    if (wifi_start_firmware_task() != 0) {
        return 0;
    }

    uvc_capture_init();

    LOG_I("SoftAP SSID: %s\r\n", AP_SSID);
    LOG_I("SoftAP IP: %s\r\n", AP_IP_ADDR);
    LOG_I("RTSP URL: rtsp://%s:8554/\r\n", AP_IP_ADDR);
    LOG_I("Camera: waiting for USB UVC MJPEG device\r\n");

    vTaskStartScheduler();

    while (1) {
    }
}
