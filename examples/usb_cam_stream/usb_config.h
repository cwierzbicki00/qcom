/*
 * CherryUSB configuration for usb_cam_stream (host-only, UVC video)
 * Based on examples/cherryusb/cherryusb_cli/usb_config.h
 */
#ifndef CHERRYUSB_CONFIG_H
#define CHERRYUSB_CONFIG_H

/* ================ USB common Configuration ================ */

#define CONFIG_USB_PRINTF(...) printf(__VA_ARGS__)

#ifndef CONFIG_USB_DBG_LEVEL
#define CONFIG_USB_DBG_LEVEL USB_DBG_INFO
#endif

#define CONFIG_USB_PRINTF_COLOR_ENABLE

/* data align size when use dma or use dcache */
#define CONFIG_USB_ALIGN_SIZE 4

/* attribute data into no cache ram */
#define USB_NOCACHE_RAM_SECTION __attribute__((section(".noncacheable")))

/* Post-reset settling time — some cameras need >200ms (SDK default) */
#define DELAY_TIME_AFTER_RESET 400

/* ================ USB HOST Stack Configuration ================ */

#define CONFIG_USBHOST_MAX_RHPORTS          1
#define CONFIG_USBHOST_MAX_EXTHUBS          1
#define CONFIG_USBHOST_MAX_EHPORTS          4
#define CONFIG_USBHOST_MAX_INTERFACES       8
#define CONFIG_USBHOST_MAX_INTF_ALTSETTINGS 16
#define CONFIG_USBHOST_MAX_ENDPOINTS        4

#define CONFIG_USBHOST_MAX_CDC_ACM_CLASS 0
#define CONFIG_USBHOST_MAX_HID_CLASS     0
#define CONFIG_USBHOST_MAX_MSC_CLASS     0
#define CONFIG_USBHOST_MAX_AUDIO_CLASS   0
#define CONFIG_USBHOST_MAX_VIDEO_CLASS   1

#define CONFIG_USBHOST_DEV_NAMELEN 16

#ifndef CONFIG_USBHOST_PSC_PRIO
#define CONFIG_USBHOST_PSC_PRIO 15
#endif
#ifndef CONFIG_USBHOST_PSC_STACKSIZE
#define CONFIG_USBHOST_PSC_STACKSIZE 2048
#endif

#ifndef CONFIG_USBHOST_REQUEST_BUFFER_LEN
#define CONFIG_USBHOST_REQUEST_BUFFER_LEN 4096
#endif

#ifndef CONFIG_USBHOST_CONTROL_TRANSFER_TIMEOUT
#define CONFIG_USBHOST_CONTROL_TRANSFER_TIMEOUT 1500
#endif

/* enable advance desc register api */
#define CONFIG_USBHOST_ADVANCE_DESC

/* High-speed USB */
#ifndef QCC74x_undef
#define CONFIG_USB_HS
#endif

/* ================ USB Host Port Configuration ================ */

#ifndef CONFIG_USBHOST_MAX_BUS
#define CONFIG_USBHOST_MAX_BUS 1
#endif

#ifndef CONFIG_USBHOST_PIPE_NUM
#define CONFIG_USBHOST_PIPE_NUM 10
#endif

/* ---------------- EHCI Configuration ---------------- */

#define CONFIG_USB_EHCI_HCCR_OFFSET     (0x0)
#define CONFIG_USB_EHCI_FRAME_LIST_SIZE 1024
#define CONFIG_USB_EHCI_QH_NUM          CONFIG_USBHOST_PIPE_NUM
#define CONFIG_USB_EHCI_QTD_NUM         (CONFIG_USB_EHCI_QH_NUM * 3)
#define CONFIG_USB_EHCI_ITD_NUM         20
#define CONFIG_USB_EHCI_HCOR_RESERVED_DISABLE
#define CONFIG_USB_EHCI_ISO

/* ---------------- OHCI Configuration ---------------- */
#define CONFIG_USB_OHCI_HCOR_OFFSET (0x0)
#define CONFIG_USB_OHCI_ED_NUM CONFIG_USBHOST_PIPE_NUM
#define CONFIG_USB_OHCI_TD_NUM 3

/* ---------------- XHCI Configuration ---------------- */
#define CONFIG_USB_XHCI_HCCR_OFFSET (0x0)

#ifndef usb_phyaddr2ramaddr
#define usb_phyaddr2ramaddr(addr) (addr)
#endif

#ifndef usb_ramaddr2phyaddr
#define usb_ramaddr2phyaddr(addr) (addr)
#endif

#endif /* CHERRYUSB_CONFIG_H */
