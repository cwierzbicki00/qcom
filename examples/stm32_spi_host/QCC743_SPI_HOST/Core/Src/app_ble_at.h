#ifndef APP_BLE_AT_H_
#define APP_BLE_AT_H_

#include "at_host.h"

int at_ble_master_high_frequency_bursts(at_host_handle_t at_handle, const char* target_addr, uint32_t retry_count);
int at_ble_slave_high_frequency_bursts(at_host_handle_t at_handle, uint32_t retry_count);

#endif // APP_BLE_AT_H_