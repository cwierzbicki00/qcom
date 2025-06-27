#include "qcc74x_mtimer.h"
#include "board.h"

#include "usbh_core.h"
#include "shell.h"

#ifdef QCC743
#include "qcc743_memorymap.h"
#endif

#ifdef CONFIG_CHERRYUSB_DEVICE
extern volatile bool usbd_run_flag;
#endif
volatile bool usbh_run_flag = false;

int shell_usbh_start(int argc, char **argv)
{
    if (usbh_run_flag == true) {
        USB_LOG_WRN("usb host already running\r\n");
        USB_LOG_WRN("please stop it first (cmd: usbh_stop)\r\n");
        return 0;
    }

#ifdef CONFIG_CHERRYUSB_DEVICE
    if (usbd_run_flag == true) {
        USB_LOG_WRN("usb device already running\r\n");
        USB_LOG_WRN("please stop it first (cmd: usbd_stop)\r\n");
        return 0;
    }
#endif

    usbh_run_flag = true;

    USB_LOG_INFO("usb host start!\r\n");
    usbh_initialize(0, USB_BASE);

    return 0;
}
SHELL_CMD_EXPORT_ALIAS(shell_usbh_start, usbh_start, usb host start);

int shell_usbh_stop(int argc, char **argv)
{
    if (usbh_run_flag == false) {
        USB_LOG_WRN("usb host not running\r\n");
        return 0;
    }

    USB_LOG_INFO("usbh host stop!\r\n");
    usbh_deinitialize(0);

    usbh_run_flag = false;
    return 0;
}
SHELL_CMD_EXPORT_ALIAS(shell_usbh_stop, usbh_stop, usb host stop);

SHELL_CMD_EXPORT_ALIAS(lsusb, lsusb, ls usb);
