
#if __has_include("board_flash_psram_overlay.h")
/* Use board_flash_psram_overlay.c instead of this file */
#else

#include "qcc74x_flash.h"
#include "qcc74x_xip_sflash.h"
#include "qcc74x_sf_ctrl.h"
#include "qcc74x_efuse.h"
#include "qcc74x_clock.h"

#include "qcc743_glb.h"
#include "qcc743_psram.h"
#include "qcc743_tzc_sec.h"

void qcc74x_show_flashinfo(void)
{
    spi_flash_cfg_type flashCfg;
    uint8_t *pFlashCfg = NULL;
    uint32_t flashSize = 0;
    uint32_t flashCfgLen = 0;
    uint32_t flashJedecId = 0;

    flashJedecId = qcc74x_flash_get_jedec_id();
    flashSize = qcc74x_flash_get_size();
    qcc74x_flash_get_cfg(&pFlashCfg, &flashCfgLen);
    arch_memcpy((void *)&flashCfg, pFlashCfg, flashCfgLen);
    printf("======== flash cfg ========\r\n");
    printf("flash size 0x%08X\r\n", flashSize);
    printf("jedec id     0x%06X\r\n", flashJedecId);
    printf("mid              0x%02X\r\n", flashCfg.mid);
    printf("iomode           0x%02X\r\n", flashCfg.io_mode);
    printf("clk delay        0x%02X\r\n", flashCfg.clk_delay);
    printf("clk invert       0x%02X\r\n", flashCfg.clk_invert);
    printf("read reg cmd0    0x%02X\r\n", flashCfg.read_reg_cmd[0]);
    printf("read reg cmd1    0x%02X\r\n", flashCfg.read_reg_cmd[1]);
    printf("write reg cmd0   0x%02X\r\n", flashCfg.write_reg_cmd[0]);
    printf("write reg cmd1   0x%02X\r\n", flashCfg.write_reg_cmd[1]);
    printf("qe write len     0x%02X\r\n", flashCfg.qe_write_reg_len);
    printf("cread support    0x%02X\r\n", flashCfg.c_read_support);
    printf("cread code       0x%02X\r\n", flashCfg.c_read_mode);
    printf("burst wrap cmd   0x%02X\r\n", flashCfg.burst_wrap_cmd);
    printf("===========================\r\n");
}

#ifdef CONFIG_PSRAM
static void qcc74x_init_psram_gpio(void)
{
    struct qcc74x_device_s *gpio;

    gpio = qcc74x_device_get_by_name("gpio");
    for (uint8_t i = 0; i < 12; i++) {
        qcc74x_gpio_init(gpio, (41 + i), GPIO_INPUT | GPIO_FLOAT | GPIO_SMT_EN | GPIO_DRV_0);
    }
}

static void psram_winbond_default_init(uint8_t psram_info)
{
    qcc74x_ef_ctrl_com_trim_t trim;
    uint16_t dqs_val[] = {
        0x8000,
        0xC000,
        0xE000,
        0xF000,
        0xF800,
        0xFC00,
        0xFE00,
        0xFF00,
        0xFF80,
        0xFFC0,
        0xFFE0,
        0xFFF0,
        0xFFF8,
        0xFFFC,
        0xFFFE,
        0xFFFF,
    };
    int32_t left_flag = 0, right_flag = 0, c_val = 0;
    PSRAM_Ctrl_Cfg_Type default_psram_ctrl_cfg = {
        .vendor = PSRAM_CTRL_VENDOR_WINBOND,
        .ioMode = PSRAM_CTRL_X8_MODE,
        .size = PSRAM_SIZE_4MB,
        .dqs_delay = 0xfff0,
    };

    PSRAM_Winbond_Cfg_Type default_winbond_cfg = {
        .rst = DISABLE,
        .clockType = PSRAM_CLOCK_DIFF,
        .inputPowerDownMode = DISABLE,
        .hybridSleepMode = DISABLE,
        .linear_dis = ENABLE,
        .PASR = PSRAM_PARTIAL_REFRESH_FULL,
        .disDeepPowerDownMode = ENABLE,
        .fixedLatency = DISABLE,
        .burstLen = PSRAM_WINBOND_BURST_LENGTH_64_BYTES,
        .burstType = PSRAM_WRAPPED_BURST,
        .latency = PSRAM_WINBOND_6_CLOCKS_LATENCY,
        .driveStrength = PSRAM_WINBOND_DRIVE_STRENGTH_35_OHMS_FOR_4M,
    };

    qcc74x_ef_ctrl_read_common_trim(NULL, "psram", &trim, 1);
    if (trim.en) {
        if (trim.parity == qcc74x_ef_ctrl_get_trim_parity(trim.value, trim.len)) {
            left_flag = ((trim.value & (0xf0)) >> 0x4);
            right_flag = (trim.value & (0xf));
            c_val = ((left_flag + right_flag) >> 0x1);
            default_psram_ctrl_cfg.dqs_delay = dqs_val[c_val];
        } else {
            printf("\r\nPSRAM trim is corrupted\r\n");
        }
    } else {
        printf("\r\n!!!!!!PSRAM INIT WITHOUT PSRAM TRIM!!!!!!!!!!!!!!!!!!\r\n");
    }

    switch (psram_info) {
        case 1:
            default_psram_ctrl_cfg.size = PSRAM_SIZE_4MB;
            default_winbond_cfg.driveStrength = PSRAM_WINBOND_DRIVE_STRENGTH_35_OHMS_FOR_4M;
            break;
        case 2:
            default_psram_ctrl_cfg.size = PSRAM_SIZE_8MB;
            default_winbond_cfg.driveStrength = PSRAM_WINBOND_DRIVE_STRENGTH_25_OHMS_FOR_8M;
            break;
        case 3:
            default_psram_ctrl_cfg.size = PSRAM_SIZE_16MB;
            default_winbond_cfg.driveStrength = PSRAM_WINBOND_DRIVE_STRENGTH_25_OHMS_FOR_16M;
            break;
        default:
            break;
    }
    PSram_Ctrl_Init(PSRAM0_ID, &default_psram_ctrl_cfg);
    // PSram_Ctrl_Winbond_Reset(PSRAM0_ID);
    PSram_Ctrl_Winbond_Write_Reg(PSRAM0_ID, PSRAM_WINBOND_REG_CR0, &default_winbond_cfg);
}

uint32_t board_psram_x8_init(uint8_t psram_info)
{
    qcc74x_efuse_device_info_type device_info;
    uint16_t reg_read = 0;

    /* Check if the chip supports PSRAM */
    qcc74x_efuse_get_device_info(&device_info);
    if (device_info.psram_info == 0) {
        puts("This chip has no psram, please disable CONFIG_PSRAM\r\n");
        while (1) {}
    }

    /* Verify whether the PSRAM initialization has been completed on the chip */
    if (QCC743_PSRAM_INIT_DONE) {
        puts("psram already init\r\n");
        return 0;
    }

    /* clk init */
    GLB_Set_PSRAMB_CLK_Sel(ENABLE, GLB_PSRAMB_EMI_WIFIPLL_320M, 0);
    /* gpio init */
    qcc74x_init_psram_gpio();

    /* psram init*/
    psram_winbond_default_init(psram_info);
    /* check psram work or not */
    PSram_Ctrl_Winbond_Read_Reg(PSRAM0_ID, PSRAM_WINBOND_REG_ID0, &reg_read);

    Tzc_Sec_PSRAMB_Access_Release();

    return reg_read;
}
#endif

#endif
