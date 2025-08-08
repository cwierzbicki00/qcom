#include "shell.h"
#include <FreeRTOS.h>
#include "task.h"
#include "board.h"

#include "export/qcc74x_fw_api.h"
#include "wifi_mgmr_ext.h"
#include "wifi_mgmr.h"
#include "esp_event.h"
#include "wifi_event.h"

#if defined(QCC74x_undef) || defined(QCC74x_undef)
#elif defined(QCC743)
#include "qcc743_glb.h"
#include "rfparam_adapter.h"
#elif defined(QCC74x_undef)
#include "qcc74x_undef_glb.h"
#endif

#define DBG_TAG "MAIN"
#include "log.h"

#define WIFI_STACK_SIZE  (1536)
#define TASK_PRIORITY_FW (16)

static esp_event_loop_handle_t wifi_event;

static void __wifi_connect_event_handler(void* event_handler_arg,
                                 esp_event_base_t event_base,
                                 int32_t event_id,
                                 void* event_data)
{
    printf("%s\r\n", __func__);
}

static void __wifi_disconnect_event_handler(void* event_handler_arg,
                                 esp_event_base_t event_base,
                                 int32_t event_id,
                                 void* event_data)
{
    printf("%s\r\n", __func__);
}

static void __wifi_scan_done_event_handler(void* event_handler_arg,
                                 esp_event_base_t event_base,
                                 int32_t event_id,
                                 void* event_data)
{
    printf("%s\r\n", __func__);
}

static void __wifi_gotip_event_handler(void* event_handler_arg,
                                 esp_event_base_t event_base,
                                 int32_t event_id,
                                 void* event_data)
{
    printf("%s\r\n", __func__);
}

int app_wifi_start(void)
{
    static TaskHandle_t wifi_fw_task;
    LOG_I("Starting wifi ...\r\n");

    /* enable wifi clock */

    GLB_PER_Clock_UnGate(GLB_AHB_CLOCK_IP_WIFI_PHY | GLB_AHB_CLOCK_IP_WIFI_MAC_PHY | GLB_AHB_CLOCK_IP_WIFI_PLATFORM);
    GLB_AHB_MCU_Software_Reset(GLB_AHB_MCU_SW_WIFI);

    /* Enable wifi irq */

    extern void interrupt0_handler(void);
    qcc74x_irq_attach(WIFI_IRQn, (irq_callback)interrupt0_handler, NULL);
    qcc74x_irq_enable(WIFI_IRQn);

    xTaskCreate(wifi_main, (char *)"fw", WIFI_STACK_SIZE, NULL, TASK_PRIORITY_FW, &wifi_fw_task);

    esp_event_loop_args_t no_task_loop = {
         .queue_size = 5,
         .task_name = "wifi_event",
		 .task_priority = 10,
		 .task_stack_size = 1024,
    };
    esp_event_loop_create(&no_task_loop, &wifi_event);
    wifi_events_init(wifi_event);

    esp_event_handler_register_with(wifi_event, "WIFI_EVENTS", WIFI_EVENT_STA_CONNECTED, __wifi_connect_event_handler, NULL);
    esp_event_handler_register_with(wifi_event, "WIFI_EVENTS", WIFI_EVENT_STA_DISCONNECTED, __wifi_disconnect_event_handler, NULL);
    esp_event_handler_register_with(wifi_event, "WIFI_EVENTS", WIFI_EVENT_SCAN_DONE, __wifi_scan_done_event_handler, NULL);
    esp_event_handler_register_with(wifi_event, "WIFI_EVENTS", WIFI_EVENT_GOTIP, __wifi_gotip_event_handler, NULL);
    return 0;
}

