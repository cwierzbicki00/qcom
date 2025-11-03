#include "main.h"
#include "app_atmodule.h"
#include "app_ble_at.h"
#include "cmsis_os2.h"
#include <stdio.h>
#include <string.h>
#include <stdarg.h>

/* Global variables for BLE connection tracking */
static volatile int ble_connected = 0;
static char connected_device_mac[18] = {0}; // Store connected device MAC address
static uint8_t ble_m_s_switch_g = 0;

static osEventFlagsId_t ble_event_flags = NULL;
#define BLE_CONNECT_EVENT_FLAG     (1 << 0)
#define BLE_DISCONNECT_EVENT_FLAG  (1 << 1)
#define BLE_GENERIC_EVENT_FLAG     (1 << 2)
#define AT_COMMAND_RESPONSE_FLAG   (1 << 3)

static volatile int command_response_received = 0;
static volatile int last_command_result = 0;

static void set_at_response(uint32_t flags)
{
    command_response_received = 1;
    last_command_result = 1;

    if (ble_event_flags) {
        osEventFlagsSet(ble_event_flags, flags);
    }
}

/* BLE event callback function */
static int ble_event_callback(uint8_t *buf, uint32_t len, void *arg)
{
    // Convert received data to string for processing
    char *str_buf = (char *)buf;
    str_buf[len] = '\0'; // Ensure string termination

    // Check if it contains a connection event
    if (strstr(str_buf, "+BLE:CONNECTED:")) {
        printf("[ASYNC EVENT] BLE device connected: %s", str_buf);
        ble_connected = 1;

        // Extract MAC address
        char *mac_start = strstr(str_buf, "\"");
        if (mac_start) {
            char *mac_end = strstr(mac_start + 1, "\"");
            if (mac_end) {
                int mac_len = mac_end - mac_start - 1;
                if (mac_len < sizeof(connected_device_mac)) {
                    memcpy(connected_device_mac, mac_start + 1, mac_len);
                    connected_device_mac[mac_len] = '\0';
                    printf("[INFO] Connected to device MAC: %s\n", connected_device_mac);
                }
            }
        }

        if (ble_event_flags) {
            osEventFlagsSet(ble_event_flags, BLE_CONNECT_EVENT_FLAG);
        }
    }
    else if (strstr(str_buf, "+BLE:DISCONNECTED:")) {
        printf("[ASYNC EVENT] BLE device disconnected: %s", str_buf);
        ble_connected = 0;
        memset(connected_device_mac, 0, sizeof(connected_device_mac));
        set_at_response(BLE_DISCONNECT_EVENT_FLAG);
    }
    else if (strstr(str_buf, "+BLE:")) {
        printf("[ASYNC EVENT] BLE event: %s", str_buf);
         set_at_response(BLE_GENERIC_EVENT_FLAG);
    }
    else if (strstr(str_buf, "\r\nSEND OK\r\n")) {
        printf("[ASYNC EVENT] Data sent successfully: %s", str_buf);
        set_at_response(AT_COMMAND_RESPONSE_FLAG);
    }
    else if (strstr(str_buf, "\r\nSEND FAIL\r\n")) {
        printf("[ASYNC EVENT] Data send failed: %s", str_buf);
       set_at_response(AT_COMMAND_RESPONSE_FLAG);
    }

    else if (strstr(str_buf, "\r\nOK\r\n") || strstr(str_buf, "\r\nERROR\r\n")) {
        printf("[ASYNC EVENT] AT command response: %s", str_buf);
       set_at_response(AT_COMMAND_RESPONSE_FLAG);
    }

    // Print all received data (for debugging)
    // printf("[RECEIVED] %.*s", (int)len, str_buf);
    return 0;
}

/* Function to wait for BLE connection */
static int wait_for_ble_connection(uint32_t timeout_ms)
{
    uint32_t start_time = osKernelGetTickCount();

    while ((osKernelGetTickCount() - start_time) < pdMS_TO_TICKS(timeout_ms)) {
        if (ble_connected) {
            return 1; // Connection successful
        }
        osDelay(100);
    }

    return 0;
}

static int wait_at_response(uint32_t timeout_ms)
{
    uint32_t start_time = osKernelGetTickCount();

    while ((osKernelGetTickCount() - start_time) < pdMS_TO_TICKS(timeout_ms)) {
        if (command_response_received) {
            command_response_received = 0;
            return last_command_result;
        }
        osDelay(10);
    }

    return -1;
}
static int wait_for_at_ble_event(uint32_t timeout_ms)
{
    if (!ble_event_flags) return -1;

    uint32_t start_time = osKernelGetTickCount();

    while ((osKernelGetTickCount() - start_time) < pdMS_TO_TICKS(timeout_ms)) {
        if (command_response_received) {
            command_response_received = 0;
            return last_command_result;
        }
        osDelay(5);
    }

    uint32_t flags = osEventFlagsWait(ble_event_flags,
        AT_COMMAND_RESPONSE_FLAG | BLE_GENERIC_EVENT_FLAG, osFlagsWaitAny, timeout_ms);
    if ((flags & AT_COMMAND_RESPONSE_FLAG) || (flags & BLE_GENERIC_EVENT_FLAG)){
        command_response_received = 0;
        return last_command_result;
    }

    return -1;
}
static int send_at_command_loop_helper(at_host_handle_t at_handle, int wait_evt, uint32_t timeout,
    uint32_t count, uint32_t delay_ms, const char *fmt, va_list args)
{
    if (!at_handle || !fmt || count == 0) {
        return -1;
    }

    int success_count = 0;
    int max_retries = 3;

    for (uint32_t i = 0; i < count; i++) {
        char buf[256];
        va_list args_copy;
        int send_result = -1;
        int response_result = -1;
        int retry_count = 0;

        va_copy(args_copy, args);
        int len = vsnprintf(buf, sizeof(buf), fmt, args_copy);
        va_end(args_copy);

        if (len < 0 || len >= sizeof(buf)) {
            printf("[ERROR] Command too long or formatting error in iteration %d\n", i+1);
            continue;
        }

        while (retry_count < max_retries) {
            command_response_received = 0;
            last_command_result = 0;

            send_result = at_host_send(at_handle, wait_evt, (uint8_t*)buf, len, timeout);
            if (send_result < 0) {
                retry_count++;
                osDelay(100);
            }

            response_result = wait_for_at_ble_event(timeout);
            if (response_result > 0) {
                success_count++;
                printf("[INFO] Sending Command iteration %s %d/%d succeeded\n", buf, i+1, count);
                break;
            } else {
                printf("[WARN] Command %s %d/%d response timeout or failed (attempt %d/%d)\n",
                        buf, i+1, count, retry_count+1, max_retries);
                retry_count++;
                osDelay(200);
            }
            }

            if (i < count - 1 && delay_ms > 0) {
                osDelay(delay_ms);
            }
    }

    return success_count;
}

static int send_at_command_loop(at_host_handle_t at_handle, int wait_evt, uint32_t timeout,
    uint32_t count, uint32_t delay_ms, const char *fmt, ...)
{
    if (!at_handle || !fmt || count == 0) {
        return -1;
    }

    va_list args;
    va_start(args, fmt);
    int result = send_at_command_loop_helper(at_handle, wait_evt, timeout, count, delay_ms, fmt, args);
    va_end(args);

    return result;
}

int at_ble_master_high_frequency_bursts(at_host_handle_t at_handle, const char* target_addr, uint32_t retry_count)
{
    at_host_handle_t s_at_handle = at_handle;

    if (!at_handle || !target_addr) {
        printf("[ERROR] Invalid parameters for at_ble_master_high_frequency_bursts\n");
        return -1;
    }

    if (!ble_event_flags) {
        ble_event_flags = osEventFlagsNew(NULL);
    }

    at_host_receive_register(s_at_handle, (at_receive_cb_t)ble_event_callback, NULL);

    if (ble_m_s_switch_g && ble_connected) {
        send_at_command_loop(s_at_handle, AT_HOST_RESP_EVT_OK, 100, 1, 0, "AT+BLEDISCONN=0\r\n");
        printf("[INFO] Device disconnected\r\n");
        send_at_command_loop(s_at_handle, AT_HOST_RESP_EVT_OK, 100, 1, 0, "AT+BLEADVSTOP\r\n");
        ble_m_s_switch_g = 0;
    }

    printf("[INFO] BLE master init\n");
    send_at_command_loop(s_at_handle, AT_HOST_RESP_EVT_OK, 100, 1, 0, "AT+BLEINIT=0\r\n");
    osDelay(100);
    send_at_command_loop(s_at_handle, AT_HOST_RESP_EVT_OK, 100, 1, 0, "AT+BLEINIT=1\r\n");
    osDelay(100);

    printf("[INFO] Setting scan parameters...\n");
    send_at_command_loop(s_at_handle, AT_HOST_RESP_EVT_OK, 100, 1, 10, "AT+BLESCANPARAM=0,0,0,80,40\r\n");
    osDelay(100);

    // start scanning
    printf("[INFO] Starting BLE scan...\n");
    send_at_command_loop(s_at_handle, AT_HOST_RESP_EVT_OK, 10, retry_count, 10, "AT+BLESCAN=1\r\n");

    //stop scanning
    printf("[INFO] Stopping BLE scan\n");
    send_at_command_loop(s_at_handle, AT_HOST_RESP_EVT_OK, 10, retry_count, 10, "AT+BLESCAN=0\r\n");

    // connect to the target device
    if (target_addr && strlen(target_addr) > 0) {
        printf("[INFO] Connecting to device %s...\n", target_addr);

        for(int i = 0; i < retry_count; i++) {
            send_at_command_loop(s_at_handle, AT_HOST_RESP_EVT_OK, 1000, 1, 50,
                                "AT+BLECONN=0,\"%s\",0,10\r\n", target_addr);

            printf("[INFO] Disconnecting from device...\n");
            send_at_command_loop(s_at_handle, AT_HOST_RESP_EVT_OK, 1000, 1, 40, "AT+BLEDISCONN=0\r\n");
        }

        printf("[INFO] BLE Connecting...........\n");
        send_at_command_loop(s_at_handle, AT_HOST_RESP_EVT_OK, 2000, 1, 50,
                            "AT+BLECONN=0,\"%s\",0,10\r\n", target_addr);

        printf("[INFO] Waiting for connection event...\n");
        if (wait_for_ble_connection(10000)) {
            printf("[INFO] Device connected successfully, to MAC: %s\n", connected_device_mac);
        } else {
            printf("[WARN] Connection event timeout...\n");
            return -1;
        }

        printf("[INFO] Setting security parameters...\n");
        send_at_command_loop(s_at_handle, AT_HOST_RESP_EVT_OK, 100, retry_count, 50, "AT+BLESECPARAM=1,3,16,7,7\r\n");

        //set power tx
        printf("[INFO] Setting TX power...\n");
        send_at_command_loop(s_at_handle, AT_HOST_RESP_EVT_OK, 100, retry_count, 50, "AT+BLETXPWR=0\r\n");

        //set MTU
        printf("[INFO] Exchanging MTU...\n");
        send_at_command_loop(s_at_handle, AT_HOST_RESP_EVT_OK, 100, retry_count, 50, "AT+BLEEXCHANGEMTU=0\r\n");

        // discover services
        printf("[INFO] Discovering services...\n");
        send_at_command_loop(s_at_handle, AT_HOST_RESP_EVT_OK, 500, retry_count, 50, "AT+BLEGATTCSRVDIS=0\r\n");
        osDelay(100);

        // discover characteristics
        printf("[INFO] Discovering characteristics...\n");
        send_at_command_loop(s_at_handle, AT_HOST_RESP_EVT_OK, 100, 1, 50, "AT+BLEGATTCCHARDIS=0,3\r\n");

        printf("[INFO] Subscribing to notifications...\n");
        send_at_command_loop(s_at_handle, AT_HOST_RESP_EVT_OK, 100, 1, 50, "AT+BLEGATTCSUBSCRIBE=0,17,16,2\r\n");

        printf("[INFO] Reading characteristics...\n");
        send_at_command_loop(s_at_handle, AT_HOST_RESP_EVT_OK, 500, retry_count, 50, "AT+BLEGATTCRD=0,3,1\r\n");

        printf("[INFO] Disconnecting from device...\n");
        send_at_command_loop(s_at_handle, AT_HOST_RESP_EVT_OK, 100, 1, 50, "AT+BLEDISCONN=0\r\n");

        printf("[INFO] BLE Master full process completed successfully\n");
    } else {
        printf("[WARN] No target address provided\n");
        return -1;
    }

    return 0;
}
int at_ble_slave_high_frequency_bursts(at_host_handle_t at_handle, uint32_t retry_count)
{
    at_host_handle_t s_at_handle = at_handle;

    if (!at_handle) {
        printf("[ERROR] Invalid AT handle for at_ble_slave_high_frequency_bursts\n");
        return -1;
    }

    if (!ble_event_flags) {
        ble_event_flags = osEventFlagsNew(NULL);
    }

    at_host_receive_register(s_at_handle, (at_receive_cb_t)ble_event_callback, NULL);

    printf("[INFO] BLE slave init\n");
    send_at_command_loop(s_at_handle, AT_HOST_RESP_EVT_OK, 100, 1, 50, "AT+BLEINIT=0\r\n");
    osDelay(100);
    send_at_command_loop(s_at_handle, AT_HOST_RESP_EVT_OK, 100, 1, 50, "AT+BLEINIT=2\r\n");
    osDelay(1000);

    // set BLE device name
    send_at_command_loop(s_at_handle, AT_HOST_RESP_EVT_OK, 10, 1, 10, "AT+BLENAME=\"BL_DEV\"\r\n");

    send_at_command_loop(s_at_handle, AT_HOST_RESP_EVT_OK, 10, retry_count, 10, "AT+BLETXPWR=0\r\n");

    send_at_command_loop(s_at_handle, AT_HOST_RESP_EVT_OK, 10, 1, 10, "AT+BLEADDR=\"99:11:22:33:44:55\"\r\n");

    printf("[INFO] Setting advertising parameters...\n");
    send_at_command_loop(s_at_handle, AT_HOST_RESP_EVT_OK, 10, 1, 10, "AT+BLEGATTSSRVCRE=0,\"11000000111111112222222233333333\",1,2\r\n");
    osDelay(10);

    const char *char_cmds[] = {
        "AT+BLEGATTSCHARCRE=0,1,\"01000000111111112222222233333333\",2,3,2\r\n",
        "AT+BLEGATTSCHARCRE=0,2,\"02000000111111112222222233333333\",4,3,2\r\n",
        "AT+BLEGATTSCHARCRE=0,3,\"03000000111111112222222233333333\",40,3,2\r\n",
        "AT+BLEGATTSCHARCRE=0,4,\"04000000111111112222222233333333\",16,3,2\r\n"
    };

    printf("[INFO] Creating GATT characteristics...\n");
    for (int i = 0; i < sizeof(char_cmds)/sizeof(char_cmds[0]); i++) {
        send_at_command_loop(s_at_handle, AT_HOST_RESP_EVT_OK, 100, 1, 50, char_cmds[i]);
        osDelay(10);
    }

    send_at_command_loop(s_at_handle, AT_HOST_RESP_EVT_OK, 100, 1, 50, "AT+BLEADVDATA=\"020106\"\r\n");
    osDelay(10);

    send_at_command_loop(s_at_handle, AT_HOST_RESP_EVT_OK, 100, 1, 50, "AT+BLESCANRSPDATA=\"020106\"\r\n");
    osDelay(10);

    send_at_command_loop(s_at_handle, AT_HOST_RESP_EVT_OK, 100, 1, 50, "AT+BLEADVPARAM=160,320,0,7\r\n");
    osDelay(10);

    printf("[INFO] Read GATT characteristic...\n");
    send_at_command_loop(s_at_handle, AT_HOST_RESP_EVT_OK, 500, retry_count, 50, "AT+BLEGATTSRD=0,1,4\r\n");

    printf("[INFO] Setting up BLE GATT server...\n");
    send_at_command_loop(s_at_handle, AT_HOST_RESP_EVT_OK, 500, retry_count, 50, "AT+BLEGATTSIND=0,3,5\r\n");

    printf("[INFO] Starting BLE advertising...\n");
    send_at_command_loop(s_at_handle, AT_HOST_RESP_EVT_OK, 500, retry_count, 50, "AT+BLEADVSTART\r\n");

    ble_m_s_switch_g = 1;

    printf("[INFO] BLE peripheral setup complete and advertising\n");
    return 0;
}
