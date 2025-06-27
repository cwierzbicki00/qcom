/****************************************************************************
 *
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.  The
 * ASF licenses this file to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance with the
 * License.  You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the
 * License for the specific language governing permissions and limitations
 * under the License.
 *
 ****************************************************************************/

/****************************************************************************
 * Included Files
 ****************************************************************************/

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
#include "qcc74x_common.h"

#include "qcc743_glb.h"
#include "rfparam_adapter.h"

#include "app_spiwifi.h"
#include "app_pm.h"

#include "board.h"
#include "shell.h"

#include "assert.h"
#include "qcc74x_mtd.h"
#include "coredump.h"

#define INIT_STACK_SIZE    (2048)
#define TASK_PRIORITY_INIT (16)

static struct qcc74x_device_s *uart0;
extern void shell_init_with_task(struct qcc74x_device_s *shell);

void app_init_entry(void *param)
{
    app_spiwifi_init();

    vTaskDelete(NULL);
}

int main(void)
{
    int ret;
    qcc74x_mtd_info_t info;
    qcc74x_mtd_handle_t handle;

    board_init();

    qcc74x_mtd_init();
#if 0
    ret = qcc74x_mtd_open("core", &handle, QCC74x_MTD_OPEN_FLAG_BUSADDR);
    if (ret < 0) {
        puts("No valid coredump partition found\r\n");
    }
    memset(&info, 0, sizeof(info));
    qcc74x_mtd_info(handle, &info);
    printf("Found Valid coredump partition, XIP Addr %08x, flash addr %08x, size %d\r\n",
           info.xip_addr,
           info.offset,
           info.size);
    core_partition_init(info.offset, info.size);
    void at_minidump_init(uint32_t, size_t);
    at_minidump_init(info.offset, info.size);
    qcc74x_mtd_close(handle);
#endif
    uart0 = qcc74x_device_get_by_name("uart0");
    shell_init_with_task(uart0);

    // UART1 GPIO conflicts with SPI pins, only one can be used
    //board_uartx_gpio_init();
#if CONFIG_SPI_3PIN_MODE_ENABLE
    board_spi0_gpio_3pin_init();
#else
    board_spi0_gpio_init();
#endif 

    xTaskCreate(app_init_entry, (char *)"init", INIT_STACK_SIZE, NULL, TASK_PRIORITY_INIT, NULL);

    vTaskStartScheduler();

    while (1) {
    }
}

int shell_crash(int argc, char **argv)
{
    printf("shell crash\r\n");
    //asm ("ebreak");
    assert(0);
    return 0;
}
SHELL_CMD_EXPORT_ALIAS(shell_crash, crash, trigger crash.);
