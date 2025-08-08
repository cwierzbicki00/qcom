#include "FreeRTOS.h"
#include "task.h"
#include "timers.h"

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
#include "assert.h"
#include "rfparam_adapter.h"

#include "board.h"
#include "board_rf.h"
#include "shell.h"
#if defined(CFG_BLE_ENABLE)
#include "btble_lib_api.h"
#ifndef NXSPI_HCI
#include "bluetooth.h"
#include "conn.h"
#include "conn_internal.h"
#include "hci_driver.h"
#include "hci_core.h"
#endif
#endif
#include "qcc743_glb.h"
#include "clock_manager.h"
#include "tickless.h"
#include "linear_allocator.h"

#define PM_MEM_POOL_SIZE    (1460 *2)
static TaskHandle_t rxl_process_task_hd = NULL;
int enable_multicast_broadcas = 0;
extern qcc74x_lp_fw_cfg_t lpfw_cfg;
static linear_allocator pm_mem;
struct pbuf *pm_pbuf;

int pm_sys_init(void)
{
    memset(&pm_mem, 0, sizeof(linear_allocator));

    wifi_mgmr_sta_ps_status_register(tickless_handke_get());

    return 0;
}

int pm_mem_pool_alloc(void)
{
    if (pm_pbuf) {
        return 0;
    }

    pm_pbuf = pbuf_alloc(PBUF_RAW, PM_MEM_POOL_SIZE, PBUF_RAM);

    if (!pm_pbuf) {
        printf("!!!! pbuf alloc fail.\r\n");
        return -1;
    }

    if (pm_pbuf->len < PM_MEM_POOL_SIZE) {
        printf("WARNING: pbuf actual len %d < expected pool size %d!\n", pm_pbuf->len, PM_MEM_POOL_SIZE);
    }

    if (!pm_pbuf->payload) {
        printf("[PM] Error: pbuf payload is NULL!\r\n");
        return -1;
    }

    linear_allocator_init(&pm_mem, pm_pbuf->payload, pm_pbuf->len);

    return 0;
}

int pm_mem_pool_free(void)
{
    if (pm_pbuf) {
        pbuf_free(pm_pbuf);
        pm_pbuf = NULL;
    }

    linear_allocator_reset(&pm_mem);

    return 0;
}

uint32_t rxl_pbuf_pool_get(void)
{
    uint32_t addr = (uint32_t)&pm_mem;

    if ((addr & 0xF0000000) == 0x60000000) {
        addr = (addr & 0x0FFFFFFF) | 0x20000000;
    }

    return addr;
}

#define APP_PM_IELD_TASK_STACK_SIZE (512)

void vApplicationGetIdleTaskMemory(StaticTask_t **ppxIdleTaskTCBBuffer, StackType_t **ppxIdleTaskStackBuffer, uint32_t *pulIdleTaskStackSize)
{
    /* If the buffers to be provided to the Idle task are declared inside this
    function then they must be declared static - otherwise they will be allocated on
    the stack and so not exists after this function exits. */
    static StaticTask_t xIdleTaskTCB;
    static StackType_t uxIdleTaskStack[APP_PM_IELD_TASK_STACK_SIZE];

    /* Pass out a pointer to the StaticTask_t structure in which the Idle task's
    state will be stored. */
    *ppxIdleTaskTCBBuffer = &xIdleTaskTCB;

    /* Pass out the array that will be used as the Idle task's stack. */
    *ppxIdleTaskStackBuffer = uxIdleTaskStack;

    /* Pass out the size of the array pointed to by *ppxIdleTaskStackBuffer.
    Note that, as the array is necessarily of type StackType_t,
    configMINIMAL_STACK_SIZE is specified in words, not bytes. */
    *pulIdleTaskStackSize = APP_PM_IELD_TASK_STACK_SIZE;
}

GLB_GPIO_Type pinList[4] = {
  GLB_GPIO_PIN_0,
  GLB_GPIO_PIN_1,
  GLB_GPIO_PIN_2,
  GLB_GPIO_PIN_3,
};

extern void uart_shell_isr();
extern struct qcc74x_device_s *uart_shell;

static void set_cpu_bclk_80M_and_gate_clk(void)
{
    uint32_t tmpVal = 0;

    GLB_Set_MCU_System_CLK_Div(0, 3);
    CPU_Set_MTimer_CLK(ENABLE, QCC74x_MTIMER_SOURCE_CLOCK_MCU_CLK, Clock_System_Clock_Get(QCC74x_SYSTEM_CLOCK_MCU_CLK) / 1000000 - 1);

    /* clk gate,except DMA&CPU&UART0&SF&EMI&WIFI&EFUSE */
    tmpVal = 0;
    tmpVal = QCC74x_SET_REG_BITS_VAL(tmpVal, GLB_CGEN_M_CPU, 1);
    tmpVal = QCC74x_SET_REG_BITS_VAL(tmpVal, GLB_CGEN_M_DMA, 1);
    tmpVal = QCC74x_SET_REG_BITS_VAL(tmpVal, GLB_CGEN_M_SEC, 1);
    tmpVal = QCC74x_SET_REG_BITS_VAL(tmpVal, GLB_CGEN_M_SDU, 1);
    QCC74x_WR_REG(GLB_BASE, GLB_CGEN_CFG0,tmpVal);

    tmpVal = 0;
    tmpVal = QCC74x_SET_REG_BITS_VAL(tmpVal, GLB_CGEN_S1_EF_CTRL, 1);
    tmpVal = QCC74x_SET_REG_BITS_VAL(tmpVal, GLB_CGEN_S1_SF_CTRL, 1);
    tmpVal = QCC74x_SET_REG_BITS_VAL(tmpVal, GLB_CGEN_S1_DMA, 1);
    tmpVal = QCC74x_SET_REG_BITS_VAL(tmpVal, GLB_CGEN_S1A_UART0, 1);
    tmpVal = QCC74x_SET_REG_BITS_VAL(tmpVal, GLB_CGEN_S1A_UART1, 1);
    tmpVal = QCC74x_SET_REG_BITS_VAL(tmpVal, GLB_CGEN_S1_SEC_ENG, 1);
    QCC74x_WR_REG(GLB_BASE, GLB_CGEN_CFG1,tmpVal);

    tmpVal = 0;
    tmpVal = QCC74x_SET_REG_BITS_VAL(tmpVal, GLB_CGEN_S2_WIFI, 1);
    tmpVal = QCC74x_SET_REG_BITS_VAL(tmpVal, GLB_CGEN_S1_EXT_EMI_MISC, 1);
    tmpVal = QCC74x_SET_REG_BITS_VAL(tmpVal, GLB_CGEN_S1_EXT_PIO, 1);

    QCC74x_WR_REG(GLB_BASE, GLB_CGEN_CFG2, tmpVal);
}

static int lp_exit(void *arg)
{
    BaseType_t xHigherPriorityTaskWoken = pdFALSE;
    int wakeup_reason;

    nxspi_ps_exit(NULL);

    set_cpu_bclk_80M_and_gate_clk();

    /* recovery system_clock_init\peripheral_clock_init\console_init*/
    board_recovery();

    //GLB_Set_EM_Sel(GLB_WRAM160KB_EM0KB);
    //qcc74x_sys_em_config();

    //board_rf_ctl(BRD_CTL_RF_RESET_DEFAULT, 0);

    vPortSetupTimerInterrupt();

    qcc74x_uart_rxint_mask(uart_shell, false);
    qcc74x_irq_attach(uart_shell->irq_num, uart_shell_isr, NULL);
    qcc74x_irq_enable(uart_shell->irq_num);

    wakeup_reason = qcc74x_lp_get_wake_reason();
    if (wakeup_reason & LPFW_WAKEUP_WIFI_BROADCAST) {
        vTaskNotifyGiveFromISR(rxl_process_task_hd, &xHigherPriorityTaskWoken);
        portYIELD_FROM_ISR(xHigherPriorityTaskWoken);
    } else {
        linear_allocator_reset(&pm_mem);
    }

    //GLB_GPIO_Func_Init(GPIO_FUN_JTAG, pinList, 4);

    return 0;
}

#if 0
static int lp_exit(void *arg)
{
    printf("start board recovery.\r\n");
    /* recovery system_clock_init\peripheral_clock_init\console_init*/
    board_recovery();
    printf("board recovery.\r\n");

    GLB_Set_EM_Sel(GLB_WRAM160KB_EM0KB);

    board_rf_ctl(BRD_CTL_RF_RESET_DEFAULT, 0);

    vPortSetupTimerInterrupt();

    qcc74x_uart_rxint_mask(uart_shell, false);
    qcc74x_irq_attach(uart_shell->irq_num, uart_shell_isr, NULL);
    qcc74x_irq_enable(uart_shell->irq_num);
    printf("init uart.\r\n");

    GLB_GPIO_Func_Init(GPIO_FUN_JTAG, pinList, 4);

    return 0;
}
#endif

static int lp_enter(void *arg)
{
    nxspi_ps_enter(NULL);
    return 0;
}

#ifdef CONFIG_SHELL
int cmd_wifi_lp(int argc, char **argv)
{
    int ret = 0;
    printf("enter wireless low power!\r\n");

    qcc74x_lp_init();
    // qcc74x_lp_fw_init();
    qcc74x_lp_sys_callback_register(lp_enter, NULL, lp_exit, NULL);

    while (1) {
        // lp_exit(0);
        ret = qcc74x_lp_fw_enter(&lpfw_cfg);
        if (ret < 0) {
            printf("[E]qcc74x_lpfw_enter Fail,ErrId:%d\r\n", ret);
        } else {
            printf("qcc74x_lpfw_enter Success\r\n");
        }
        arch_delay_ms(1000);
    }

    return 0;
}

void set_dtim_config(int dtim)
{
    lpfw_cfg.dtim_origin = dtim;
    wifi_mgmr_sta_set_listen_itv(dtim);
}

void clear_dtim_config(void)
{
    // Use default config
    lpfw_cfg.dtim_origin = 10;
    wifi_mgmr_sta_set_listen_itv(lpfw_cfg.dtim_origin);
}

uint8_t lp_interval_get(void)
{
    return lpfw_cfg.dtim_num;
}

static void cmd_twt(int argc, char **argv)
{
    lpfw_cfg.dtim_origin = 0;

    qcc74x_lp_fw_bcn_loss_cfg_dtim_default(lpfw_cfg.dtim_origin);
    pm_enable_tickless();
}

int pm_enter_lp_perparation(void)
{
    int ret = 0;
    int dtim = 0;
    if (enable_multicast_broadcas) {
        ret = pm_mem_pool_alloc();

        if (!ret) {
            lpfw_cfg.buf_addr = rxl_pbuf_pool_get();
        } else {
            lpfw_cfg.buf_addr = NULL;
        }
    } else {
        lpfw_cfg.buf_addr = NULL;
    }

    dtim = wifi_mgmr_sta_get_listen_itv();

    lpfw_cfg.dtim_origin = dtim;

    qcc74x_lp_fw_bcn_loss_cfg_dtim_default(lpfw_cfg.dtim_origin);

    if (wifi_mgmr_sta_state_get()) {
        wifi_mgmr_sta_ps_enter();
    }

    return ret;
}

int pm_exit_lp_perparation(void)
{
    pm_mem_pool_free();
    lpfw_cfg.buf_addr = NULL;

    if (wifi_mgmr_sta_state_get()) {
        wifi_mgmr_sta_ps_exit();
    }

    return 0;
}

int pm_enable_tickless(void)
{
    pm_enter_lp_perparation();

    tickless_enter();

    return 0;
}

int pm_disable_tickless(void)
{
    pm_exit_lp_perparation();

    tickless_exit();

    return 0;
}

int pm_status_update(int status)
{
    //update status
    if (status) {
        pm_disable_tickless();
    } else {
        pm_enable_tickless();
    }
}

static void cmd_tickless(int argc, char **argv)
{
    uint8_t dtim;
    if ((argc > 1) && (argv[1] != NULL)) {
        printf("%s\r\n", argv[1]);
        dtim = atoi(argv[1]);
    } else {
        dtim = 10;
    }

    set_dtim_config(dtim);
    pm_enable_tickless();
}

static int test_tcp_keepalive(int argc, char **argv)
{
    int sockfd;
    // uint8_t *recv_buffer;
    struct sockaddr_in dest, my_addr;
    char buffer[51];
    uint32_t pck_cnt = 0;
    uint32_t pck_total = 0;

    /* Create a socket */
    if ((sockfd = socket(AF_INET, SOCK_STREAM, 0)) < 0) {
        printf("Error in socket\r\n");
        return -1;
    }

    /*---Initialize server address/port struct---*/
    memset(&my_addr, 0, sizeof(my_addr));
    my_addr.sin_family = AF_INET;
    my_addr.sin_addr.s_addr = INADDR_ANY;
    my_addr.sin_port = htons(50001);

    memset(&dest, 0, sizeof(dest));
    dest.sin_family = AF_INET;
    dest.sin_port = htons(50001);
    inet_aton(argv[1], &dest.sin_addr);

    if (argc == 4) {
        pck_cnt = atoi(argv[3]);
        printf("keep alive pck:%ld\r\n");
    }

    printf("tcp server ip: %s\r\n", argv[1]);

    if (bind(sockfd, (struct sockaddr *)&my_addr, sizeof(my_addr)) != 0) {
        printf("Error in bind\r\n");
        close(sockfd);
        return -1;
    }

    /*---Connect to server---*/
    if (connect(sockfd, (struct sockaddr *)&dest, sizeof(dest)) != 0) {
        printf("Error in connect\r\n");
        close(sockfd);
        return -1;
    }

    /*---Get "Hello?"---*/
    memset(buffer, 'A', sizeof(buffer) - 1);

#ifdef LP_APP
    if (argc > 2) {
        cmd_tickless(0, NULL);
    }
#endif

    int ret = 0;

    while (1) {
        pck_total++;
        snprintf(buffer, sizeof(buffer), "SEQ = %ld  ", pck_total);

        buffer[sizeof(buffer) - 2] = '\n';
        ret = write(sockfd, buffer, sizeof(buffer) - 1);
        if (ret != sizeof(buffer) - 1) {
            printf("write error: %d\n", ret);
            break;
        }
        printf("**********************************\n");
        printf("SEQ:%ld WRITE SUCCESS %d\n", pck_total, ret);

        if (pck_cnt && (pck_total >= pck_cnt)) {
            qcc74x_pm_event_bit_set(PSM_EVENT_APP);
            break;
        }
#if 0
        ret = read(sockfd, buffer, sizeof(buffer)-1);
        buffer[sizeof(buffer) -1] = 0;
        printf("read ret: %d, %s\r\n", ret, buffer);
#endif
        vTaskDelay(pdMS_TO_TICKS(30 * 1000));
    }

    close(sockfd);
    return 0;
}

static void cmd_io_dbg(int argc, char **argv)
{
    if (argc != 2) {
        printf("cmd_io_dbg err\r\n");
        return;
    }

    if (atoi(argv[1]) <= 34) {
        iot2lp_para->debug_io = atoi(argv[1]);
    } else {
        iot2lp_para->debug_io = 0xFF;
    }
}

#define BASE_ADDRESS 0x2000f000
#define OFFSET 0x204

void modify_register_bits_incremental(int increment)
{
    volatile uint32_t *reg_address = (volatile uint32_t *)(BASE_ADDRESS + OFFSET);

    uint32_t mask = (0x3F << 11);
    uint32_t current_value = *reg_address;
    uint32_t target_bits = (current_value & mask) >> 11;

    /*
    printf("Before change:\r\n");
    printf("  Register value (full): 0x%08X\r\n", current_value);
    printf("  bit11 to bit16 value: 0x%X\r\n", target_bits);
    */

    target_bits = (int32_t)(target_bits) + increment;
    if (target_bits > 0x3F) {
        target_bits = 0x3F;
    } else if (target_bits < 0) {
        target_bits = 0;
    }

    current_value = (current_value & ~mask) | (target_bits << 11);
    *reg_address = current_value;
    current_value = *reg_address;
    target_bits = (current_value & mask) >> 11;

    /*
    printf("After change:\r\n");
    printf("  Register value (full): 0x%08X\r\n", current_value);
    printf("  bit11 to bit16 value: 0x%X\r\n", target_bits);
    */
}

static void cmd_xtal32k_calibration(int argc, char **argv)
{
    uint32_t offset;

    offset = atoi(argv[1]);
    printf("offset:%d\r\n", offset);
    modify_register_bits_incremental(offset); 
}

static void cmd_xtal32k_calc(int argc, char **argv)
{
    uint64_t rtc_us, rtc_cal_us;
    uint64_t mtimer_us, mtimer_cal_us;
    uint64_t mius;


    uint32_t delay;

    delay = atoi(argv[1]);
    printf("delay:%ld\r\n", delay);

    //xtal 32k calibration
    __disable_irq();
    rtc_us = qcc74x_rtc_get_time(NULL);
    mtimer_us = qcc74x_mtimer_get_time_us();
    __enable_irq();

    vTaskDelay(delay);

    __disable_irq();
    rtc_cal_us = qcc74x_rtc_get_time(NULL);
    mtimer_cal_us = qcc74x_mtimer_get_time_us();
    __enable_irq();

    rtc_us = ((rtc_cal_us - rtc_us) * 1000000) / 32768;
    mtimer_us = mtimer_cal_us - mtimer_us;

    if (rtc_us > mtimer_us) {
        mius = rtc_us - mtimer_us;
    } else {
        mius = mtimer_us - rtc_us;
    }
    printf("mtimer:%llu rtc:%llu minus:%llu\r\n", mtimer_us, rtc_us, mius);
}

static void lp_io_wakeup_callback(uint64_t wake_up_io_bits)
{
    //enable_tickless = 0;

     //TODO ;can not call in interupt context
    //if (wifi_mgmr_sta_state_get()) {
    //    wifi_mgmr_sta_ps_exit();
    //}

    //call resume spi
    //spisync_wakeuparg_t wakeup_arg;
    //wakeup_arg.wakeup_reason = 0;
    //spisync_ps_wakeup(NULL, &wakeup_arg);
}

static qcc74x_lp_io_cfg_t lp_wake_io_cfg;
int lp_set_wakeup_by_io(uint8_t io, uint8_t mode)
{
    if ((io != 16 && io != 28) || (mode > 1)) {
        printf("[PM] Error: only support gpio 16, 28 and mode 0/1\r\n");
        return -1;
    } 

    if (io == 16) {
        lp_wake_io_cfg.io_16_ie = QCC74x_LP_IO_INPUT_ENABLE;
        if (mode == 0) {
            lp_wake_io_cfg.io_16_19_aon_trig_mode = QCC74x_LP_PDS_IO_TRIG_SYNC_HIGH_LEVEL;
        } else{
            lp_wake_io_cfg.io_16_19_aon_trig_mode = QCC74x_LP_AON_IO_TRIG_SYNC_RISING_FALLING_EDGE;
        }
        lp_wake_io_cfg.io_16_res = QCC74x_LP_IO_RES_PULL_DOWN;
    } else {
        lp_wake_io_cfg.io_20_34_ie = QCC74x_LP_IO_INPUT_ENABLE;
        if (mode == 0) {
            lp_wake_io_cfg.io_28_34_pds_trig_mode = QCC74x_LP_PDS_IO_TRIG_SYNC_HIGH_LEVEL;
        } else if (mode == 1) {
            lp_wake_io_cfg.io_28_34_pds_trig_mode = QCC74x_LP_AON_IO_TRIG_SYNC_RISING_FALLING_EDGE;
        }
        lp_wake_io_cfg.io_20_34_res = QCC74x_LP_IO_RES_PULL_DOWN;
    }

    lp_wake_io_cfg.io_wakeup_unmask |= ((uint64_t)1 << io);

    qcc74x_lp_io_wakeup_cfg(&lp_wake_io_cfg);
    qcc74x_lp_wakeup_io_int_register(lp_io_wakeup_callback);

    return 0;

}

int lp_delete_wakeup_by_io(uint8_t io)
{
    if (io < 28 || io > 29) {
        printf("[PM] Error: only support gpio 28, 29 now.\r\n");
        return -1;
    }

    lp_wake_io_cfg.io_wakeup_unmask &= ~((uint64_t)1 << io);
    
    return 0;
}

static void modify_bit(uint32_t *reg_addr, uint8_t bit_position, uint8_t bit_value) {
    if (bit_value) {
        *reg_addr |= (1U << bit_position);
    } else {
        *reg_addr &= ~(1U << bit_position);
    }
}

void write_register(uint32_t *reg_addr, uint32_t value) {
    *reg_addr = value;
}

static void cmd_32k_output(int argc, char **argv)
{
    modify_bit(0x2000F204, 22, 0x1);
    write_register(0x200002E8, 0x4000);
    write_register(0x200002F0, 0x1);
    write_register(0x20000930, 0x40000F02);
}

void app_arp_send(void)
{
    if (!wifi_mgmr_sta_state_get()) {
        return;
    }

    if (ip4_addr_isany_val(*netif_ip4_addr(netif_default))) {
        printf("IP address not assigned. ARP announcement skipped.\n");
        return;
    }

    LOCK_TCPIP_CORE();
    do {
        ip_addr_t src_ip = netif_default->ip_addr;
        ip_addr_t dest_ip;                        
        ip_addr_copy(dest_ip, src_ip);            
        err_t result = etharp_request(netif_default, &dest_ip);

        if (result != ERR_OK) {
            printf("Failed to send ARP request. Error: %d\n", result);
        }
    } while (0);
    UNLOCK_TCPIP_CORE();
}

TimerHandle_t xArpTimer = NULL;
static void arp_send(TimerHandle_t xTimer) {

    app_arp_send();
}

int app_pm_create_arp_announce_timer(uint32_t seconds)
{   
    if (xArpTimer) {
        printf("[PM] Error: ARP timer already exists\r\n");
        return -1;
    }
    if (seconds == 0) {
        printf("[PM] Error: ARP timer interval must be > 0\r\n");
        return -1;
    }
    app_arp_send();
    xArpTimer = xTimerCreate("traffic probe",  pdMS_TO_TICKS(seconds * 1000), pdTRUE, (void*)0, arp_send);
    if (!xArpTimer) {
        printf("[PM] Error: Failed to create ARP timer\r\n");
        return -1;
    }
    if (xTimerStart(xArpTimer, 0) != pdPASS) {
        printf("[PM] Error: Failed to start ARP timer\r\n");
        xTimerDelete(xArpTimer, portMAX_DELAY);
        xArpTimer = NULL;
        return -1;
    }
    return 0;
}

int app_pm_delete_arp_announce_timer(void)
{
    if (xArpTimer) {
        xTimerStop(xArpTimer, 0);
        xTimerDelete(xArpTimer, portMAX_DELAY);
        xArpTimer = NULL;
        printf("Delete arp timer.\r\n");
    } else {
        printf("Arp timer has not been create.\r\n");
    }

    return 0;
}

static void cmd_create_arp_timer(int argc, char **argv)
{
    if (argc != 2) {
        printf("Need param\r\n");
        return;
    }

    printf("set arp interval :%d s\r\n",atoi(argv[1]));
    app_pm_create_arp_announce_timer(atoi(argv[1]));

    return;
}

static void cmd_delete_arp_timer(int argc, char **argv)
{
    app_pm_delete_arp_announce_timer();
    return;
}

SHELL_CMD_EXPORT_ALIAS(cmd_tickless, tickless, cmd tickless);
SHELL_CMD_EXPORT_ALIAS(cmd_twt, twt, cmd twt);
SHELL_CMD_EXPORT_ALIAS(cmd_wifi_lp, wifi_lp_test, wifi low power test);
SHELL_CMD_EXPORT_ALIAS(test_tcp_keepalive, lpfw_tcp_keepalive, tcp keepalive test);
SHELL_CMD_EXPORT_ALIAS(cmd_io_dbg, io_debug, cmd io_debug);
SHELL_CMD_EXPORT_ALIAS(cmd_32k_output, output_32k, cmd 32k output);
SHELL_CMD_EXPORT_ALIAS(cmd_xtal32k_calibration, xtal_calibration, cmd xtal calibration);
SHELL_CMD_EXPORT_ALIAS(cmd_xtal32k_calc, calc, cmd xtal32k calc);
SHELL_CMD_EXPORT_ALIAS(cmd_create_arp_timer, create_arp_timer, cmd create arp timer);
SHELL_CMD_EXPORT_ALIAS(cmd_delete_arp_timer, delete_arp_timer, cmd delete arp timer);
#endif

static TaskHandle_t xtal32k_check_entry_task_hd = NULL;

void timerCallback(TimerHandle_t xTimer)
{
    pm_disable_tickless();
    xTimerDelete(xTimer, portMAX_DELAY);

    //if (wifi_mgmr_sta_state_get()) {
    //    wifi_mgmr_sta_ps_exit();
    //}
    //spisync_wakeuparg_t wakeup_arg;
    //wakeup_arg.wakeup_reason = 2;
    //spisync_ps_wakeup(NULL, &wakeup_arg);
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

static qcc74x_lp_hbn_fw_cfg_t hbn_test_cfg={
    //.hbn_sleep_cnt = (32768 * ms) / 1000,
    .hbn_sleep_cnt = 0,
    .hbn_level=0, 
};

static uint32_t lp_timerouts_ms;

int app_lp_timer_config(int mode, uint32_t ms)
{
    if (0 == mode) {
        lp_timerouts_ms = ms;
    } else if (1 == mode){
        hbn_test_cfg.hbn_sleep_cnt = (32768 * ms) / 1000;
    } else {
        printf("config lp level fail:%d\r\n", mode);

        return -1;
    } 
    
    return 0;
}

void app_pm_enter_hbn(int level)
{
    qcc74x_lp_hbn_init(0,0,0,0);

    if (level > 0 && level < 3) {
        hbn_test_cfg.hbn_level=level;
    }

    qcc74x_lp_hbn_enter(&hbn_test_cfg);
}

void app_pm_enter_pds15(void)
{
    if (lp_timerouts_ms) {
        TickType_t timerPeriod = pdMS_TO_TICKS(lp_timerouts_ms);

        char timerName[32];
        snprintf(timerName, sizeof(timerName), "PwrTimer_%u", (unsigned int)timerPeriod);

        createAndStartTimer(timerName, timerPeriod);
        lp_timerouts_ms = 0;
    }

    pm_enable_tickless();
}

TimerHandle_t keepalive_timer = NULL;

void keepalive_callback(TimerHandle_t xTimer)
{
    wifi_mgmr_null_data_send();
}

void app_pm_twt_param_set(int s, int t, int e, int n, int m)
{
    twt_setup_params_struct_t param;
    param.setup_type = s;
    param.flow_type = t;
    param.wake_int_exp = e;
    param.wake_dur_unit = 0; 
    param.min_twt_wake_dur = n;
    param.wake_int_mantissa = m;

    wifi_mgmr_sta_twt_setup(&param);
}


void app_pm_twt_enter(void)
{
    //TODO: Fix it.
    pm_enable_tickless();

    lpfw_cfg.dtim_origin = 0;
    qcc74x_lp_fw_bcn_loss_cfg_dtim_default(lpfw_cfg.dtim_origin);
}

int app_create_keepalive_timer(uint32_t periods)
{
    TickType_t timerPeriod = pdMS_TO_TICKS(periods * 1000);

    if (keepalive_timer == NULL) {
        keepalive_timer = xTimerCreate("keepalive_timer", timerPeriod, pdTRUE, 0, keepalive_callback);
        if (keepalive_timer == NULL)
        {
            printf("Failed to create timer.\n");
            return -1;
        }

        if (xTimerStart(keepalive_timer, 0) != pdPASS)
        {
            printf("Failed to start timer.\n");
            return -1;
        }
    } else {
        if (xTimerChangePeriod(keepalive_timer, timerPeriod, 0) != pdPASS)
        {
            printf("Failed to change timer period.\n");
            return -1;
        }
    }

    return 0;
}

int app_delete_keepalive_timer(void)
{
    if (keepalive_timer != NULL) {
        if (xTimerStop(keepalive_timer, 0) != pdPASS) {
            printf("Failed to stop timer.\n");
            return -1;
        }

        if (xTimerDelete(keepalive_timer, 0) != pdPASS) {
            printf("Failed to delete timer.\n");
            return -1;
        }

        keepalive_timer = NULL;
        printf("Timer successfully deleted.\n");
    } else {
        printf("No timer to delete.\n");
        return 0;
    }

    return 0;
}

#if 0
static void print_pbuf_contents(struct pbuf *p, int pbuf_index)
{
    if (!p || !p->payload) {
        printf("[RECV_TASK] pbuf %d is NULL or has no payload\r\n", pbuf_index);
        return;
    }

    printf("[RECV_TASK] ========== PBUF %d CONTENTS ==========\r\n", pbuf_index);
    printf("[RECV_TASK] pbuf->len: %d, pbuf->tot_len: %d\r\n", p->len, p->tot_len);
    printf("[RECV_TASK] pbuf->type: %d, pbuf->flags: 0x%02x\r\n", p->type_internal, p->flags);
    printf("[RECV_TASK] pbuf->payload: %p\r\n", p->payload);

    uint8_t *data = (uint8_t *)p->payload;
    uint16_t len = p->len;

    if (len >= 14) {
        printf("[RECV_TASK] Ethernet Header Analysis:\r\n");
        printf("  Dest MAC: %02x:%02x:%02x:%02x:%02x:%02x\r\n",
               data[0], data[1], data[2], data[3], data[4], data[5]);
        printf("  Src MAC:  %02x:%02x:%02x:%02x:%02x:%02x\r\n",
               data[6], data[7], data[8], data[9], data[10], data[11]);

        uint16_t ethertype = (data[12] << 8) | data[13];
        printf("  EtherType: 0x%04x ", ethertype);

        switch (ethertype) {
            case 0x0800:
                printf("(IPv4)\r\n");
                break;
            case 0x0806:
                printf("(ARP)\r\n");
                break;
            case 0x86DD:
                printf("(IPv6)\r\n");
                break;
            default:
                printf("(Unknown)\r\n");
                break;
        }

        if (ethertype == 0x0800 && len >= 34) {
            printf("[RECV_TASK] IPv4 Header Analysis:\r\n");
            uint8_t *ip_header = &data[14];
            uint8_t version = (ip_header[0] >> 4) & 0x0F;
            uint8_t ihl = ip_header[0] & 0x0F;
            uint8_t protocol = ip_header[9];

            printf("  Version: %d, IHL: %d\r\n", version, ihl);
            printf("  Protocol: %d ", protocol);

            switch (protocol) {
                case 1:
                    printf("(ICMP)\r\n");
                    break;
                case 6:
                    printf("(TCP)\r\n");
                    break;
                case 17:
                    printf("(UDP)\r\n");
                    break;
                default:
                    printf("(Other)\r\n");
                    break;
            }

            printf("  Src IP: %d.%d.%d.%d\r\n",
                   ip_header[12], ip_header[13], ip_header[14], ip_header[15]);
            printf("  Dst IP: %d.%d.%d.%d\r\n",
                   ip_header[16], ip_header[17], ip_header[18], ip_header[19]);
        }
    }

    printf("[RECV_TASK] ====================================\r\n");
}
#endif

static void process_multicase_broadcast(void *pvParameters)
{
    struct pbuf *p;

    while (1) {
        ulTaskNotifyTake(pdTRUE, portMAX_DELAY);

        linear_allocator_iter_reset(&pm_mem);
        p = (struct pbuf *)linear_allocator_next_ptr(&pm_mem);
        while (p) {
            if (p != NULL && p->payload) {
                //print_pbuf_contents(p, 0);
                
                #if CONFIG_LWIP_ONHOST_ENABLE
                extern int dual_stack_input(struct pbuf *p, bool is_sta);
                dual_stack_input(p, 1);
                #else
                if (netif_default && netif_default->input) {
                    err_t ret = netif_default->input(p, netif_default);
                    if (ret != ERR_OK) {
                        printf("[RECV_TASK] Failed to input pbuf to netif\r\n");
                        pbuf_free(p);
                    }
                } else {
                }
                #endif
            }
            p = (struct pbuf *)linear_allocator_next_ptr(&pm_mem);
        }

        linear_allocator_reset(&pm_mem);
    }

    vTaskDelete(NULL);
}

void app_pm_exit_pds15(void)
{
    pm_disable_tickless();
    wifi_mgmr_sta_ps_exit();
}

int qcc74x_pm_app_check(void)
{
    return nxspi_ps_get();
}

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

int app_pm_init(void)
{
    uint8_t soc_v, rt_v, aon_v;

    hal_pm_ldo11_cfg(PM_PDS_LDO_LEVEL_SOC_DEFAULT, PM_PDS_LDO_LEVEL_RT_DEFAULT, PM_PDS_LDO_LEVEL_AON_DEFAULT);
    hal_pm_ldo11_cfg_get(&soc_v, &rt_v, &aon_v);
    printf("SOC:%d RT:%d AON:%d\r\n", soc_v, rt_v, aon_v);

    HBN_Enable_RTC_Counter();
    pm_rc32k_auto_cal_init();
    
    pm_sys_init();

#ifdef LP_APP
#if defined(CFG_QCC74x_WIFI_PS_ENABLE) || defined(CFG_WIFI_PDS_RESUME)
    qcc74x_lp_init();
#endif
    qcc74x_lp_sys_callback_register(lp_enter, NULL, lp_exit, NULL);
#endif

    app_clock_init();
    app_atmoudle_init();

    printf("[OS] Starting process_multicase_broadcast task...\r\n");
    xTaskCreate(process_multicase_broadcast, (char*)"hellow", 384, NULL, 10, &rxl_process_task_hd);

    return 0;
}
