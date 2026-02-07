/**
 * @file usb_ehci_iso_stub.c
 * @brief Stub implementations for EHCI isochronous transfer functions
 * 
 * The QCC74x SDK's CherryUSB port declares but does not implement these
 * isochronous transfer functions. This file provides minimal stub
 * implementations to allow linking to succeed.
 * 
 * TODO: Implement proper isochronous transfer support or use bulk transfers
 */

#include "usb_hc_ehci.h"
#include "usb_errno.h"
#include "usb_log.h"

int ehci_iso_urb_init(struct usbh_bus *bus, struct usbh_urb *urb)
{
    (void)bus;
    (void)urb;
    USB_LOG_ERR("ISO transfer not implemented\r\n");
    return -USB_ERR_NOTSUPP;
}

void ehci_kill_iso_urb(struct usbh_bus *bus, struct usbh_urb *urb)
{
    (void)bus;
    (void)urb;
    USB_LOG_WRN("ISO kill called but not implemented\r\n");
}

void ehci_scan_isochronous_list(struct usbh_bus *bus)
{
    (void)bus;
    /* Silently do nothing - this is called from interrupt handler */
}
