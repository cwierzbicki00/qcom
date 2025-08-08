#include <assert.h>
#include "qcc74x_mtimer.h"
#include "qcc74x_uart.h"
#include "shell.h"
#include <FreeRTOS.h>
#include "semphr.h"
#include "board.h"

#include "qcc74x_mtd.h"
#include "coredump.h"

static struct qcc74x_device_s *uart0;

extern void shell_init_with_task(struct qcc74x_device_s *shell);

int main(void)
{
    qcc74x_mtd_info_t info;
    qcc74x_mtd_handle_t handle;
    int ret;
    uint32_t offset;
    size_t size;

    board_init();
    core_partition_init();

    uart0 = qcc74x_device_get_by_name("uart0");
    shell_init_with_task(uart0);

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
