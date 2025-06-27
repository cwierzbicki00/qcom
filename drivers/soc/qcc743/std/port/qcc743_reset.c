#include "qcc74x_peri.h"
#include "qcc743_reset.h"
#include "qcc743_glb.h"

int qcc74x_peripheral_reset_by_id(uint8_t peri)
{
    uint8_t rst_num = 0;

    switch (peri) {
        case QCC74x_PERIPHERAL_EMI_MISC:
            rst_num = 16;
            break;
        case QCC74x_PERIPHERAL_MM_MISC:
            rst_num = 17;
            break;
        case QCC74x_PERIPHERAL_PSRAM1_CTRL:
            rst_num = 18;
            break;
        case QCC74x_PERIPHERAL_USB20:
            rst_num = 19;
            break;
        case QCC74x_PERIPHERAL_AUDAC0:
            rst_num = 21;
            break;
        case QCC74x_PERIPHERAL_SDH0:
            rst_num = 22;
            break;
        case QCC74x_PERIPHERAL_EMAC0:
            rst_num = 23;
            break;
        case QCC74x_PERIPHERAL_D2XA:
            rst_num = 25;
            break;
        case QCC74x_PERIPHERAL_D2XB:
            rst_num = 26;
            break;
        case QCC74x_PERIPHERAL_JENC:
            rst_num = 27;
            break;
        case QCC74x_PERIPHERAL_GLB:
            rst_num = 32;
            break;
        case QCC74x_PERIPHERAL_MIX:
            rst_num = 33;
            break;
        case QCC74x_PERIPHERAL_GPADC0:
            rst_num = 34;
            break;
        case QCC74x_PERIPHERAL_GPDAC0:
            rst_num = 34;
            break;
        case QCC74x_PERIPHERAL_SEC_DBG:
            rst_num = 35;
            break;
        case QCC74x_PERIPHERAL_SEC_ENG:
            rst_num = 36;
            break;
        case QCC74x_PERIPHERAL_TZ1:
            rst_num = 37;
            break;
        case QCC74x_PERIPHERAL_EF_CTRL:
            rst_num = 39;
            break;
        case QCC74x_PERIPHERAL_SF_CTRL:
            rst_num = 43;
            break;
        case QCC74x_PERIPHERAL_DMA0:
            rst_num = 44;
            break;
        case QCC74x_PERIPHERAL_SDU0:
            rst_num = 45;
            break;
        case QCC74x_PERIPHERAL_PDS:
            rst_num = 46;
            break;
        case QCC74x_PERIPHERAL_UART0:
            rst_num = 48;
            break;
        case QCC74x_PERIPHERAL_UART1:
            rst_num = 49;
            break;
        case QCC74x_PERIPHERAL_SPI0:
            rst_num = 50;
            break;
        case QCC74x_PERIPHERAL_I2C0:
            rst_num = 51;
            break;
        case QCC74x_PERIPHERAL_PWM0:
            rst_num = 52;
            break;
        case QCC74x_PERIPHERAL_TIMER0:
            rst_num = 53;
            break;
        case QCC74x_PERIPHERAL_IR:
            rst_num = 54;
            break;
        case QCC74x_PERIPHERAL_CHECKSUM:
            rst_num = 55;
            break;
        case QCC74x_PERIPHERAL_DBI:
            rst_num = 56;
            break;
        case QCC74x_PERIPHERAL_I2C1:
            rst_num = 57;
            break;
        case QCC74x_PERIPHERAL_I2S0:
            rst_num = 59;
            break;
        case QCC74x_PERIPHERAL_AUADC0:
            rst_num = 60;
            break;
        default:
            return -1;
    }

    return GLB_AHB_MCU_Software_Reset(rst_num);
}
