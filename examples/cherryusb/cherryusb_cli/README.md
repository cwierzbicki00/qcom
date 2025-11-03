# cherryusb

## OverView

This example demonstrates ​​USB device and host mode functionalities​​ on an embedded system, supporting various USB classes such as ​​CDC-ACM, RNDIS, UVC, UAC, MSC, HID, and ECM​​. It enables communication between the embedded device and a host PC (Windows/Linux) or another embedded board acting as a USB host.

## Support CHIP

|      CHIP        |   BOARD   |  Remark   |
|:-----------------|:----------|:----------|
|QCC743/QCC744     |  QCC74x   |           |

## Compile

- QCC743/QCC744

```
make CHIP=qcc743 BOARD=qcc74xdk
```


## Flash

```
make flash CHIP=chip_name COMX=xxx # xxx is your com name
```

## ​Key Features​​

### ​​USB Device Mode (Slave)​​:

- ​CDC-ACM​​: Virtual serial port (COM) for bidirectional communication.
- ​​RNDIS/ECM​​: Ethernet-over-USB (Windows/Linux - recognizes it as a network adapter).
- ​​UVC (USB Video Class)​​: Simulates a webcam for video streaming.
- ​​UAC (USB Audio Class)​​: Simulates an audio device for playback/recording.
- ​​MSC (Mass Storage Class)​​: Emulates a USB flash drive for file storage.
- ​​HID (Human Interface Device)​​: Simulates a keyboard/mouse.
### ​​USB Host Mode (Master)​​:

- ​​CDC-ACM Host​​: Communicates with a USB CDC-ACM device (e.g., another embedded board).
- ​HID Host​​: Reads input from USB keyboards/mice.
- MSC Host​​: Reads/writes to USB storage devices (FATFS support).
### Testing & Debugging Commands​​:
- usbd_cdc_acm_test, usbd_rndis_test, usbd_uvc_mjpeg_test, etc., initialize different USB device modes.
- usbh_start, usbh_stop control host mode.
- lsusb lists connected USB devices.

## How to use example

**The key test commands will be explained in the order of the required hardware, serial terminal input logs, visualization of results, and notes (optional).**  
**Advice:** Try sending `help` followed by the Enter key in the serial command line to learn about the available commands.




## Device Function

### 1. CDC-ACM
**Command:** `usbd_cdc_acm_test`
**Function Description:** Initialize a USB device that supports CDC-ACM protocols  
**Hardware:** Windows/Linux PC, Two Type-C to Type-A data cables  

**Note:** A virtual serial interface will be generated in the Device Manager upon successful completion. It is necessary to use `usbd_stop` to shut down. When you open a virtual serial port using a serial terminal and activate the DTR (Data Terminal Ready) signal at the same time, the port enters loopback mode, causing any data transmitted from the virtual serial port to be received back on the same port. 

Serial port printing display：
``` 
IACM Create USB device cdc_acm data send task...
IACM usbd cdc_acm machine start/restart 
I/USB CDC_ACM USBD_EVENT_RESET
I/USB CDC_ACM configured done
IACM USBD ACM Ready!
IACM DTR clear, Exit the loopback test mode
```

Loopback test mode Serial port printing display：
```
IACM DTR set, Enter the loopback test mode
```

Windows Device Manager Virtual Serial Port Display:
<div align="center" style="margin-top: 2em; margin-bottom: 2em;">
    <img src="./picture/windows_cdc_acm.png" alt="GPIO_Output" width="420"   height="420" >  
</div> 

Linux Terminal Virtual Serial Port Display:
```
$ sudo dmesg -w
[ 2354.648190]usb 3-5:new high-speed USB device number 5 using xhci hcd
[ 2354.797016] usb 3-5: New USB device found, idVendor=ffff, idProduct=ffff, bcdDevice= 1.00
[ 2354.797024] usb 3-5: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 2354.797027] usb 3-5: Product: CherryUSB_CDC_DEMO
[ 2354.797029] usb 3-5: Manufacturer: CherryUSB
[ 2354.797031] usb 3-5: SerialNumber: 2022123456
[ 2354.816798] cdc_acm 3-5:1.0: ttyACM0: USB ACM device
[ 2354.816822] usbcore: registered new interface driver cdc_acm
[ 2354.816825] cdc_acm: USB Abstract Control Model driver for USB modems and ISDN adapters
```

### 2.CDC_ECM
**Command:** `usbd_cdc_ecm_test`  
**Function Description:** Initialize a USB device that emulates an Ethernet interface  
**Hardware:** Linux PC, Two Type-C to Type-A data cables, A network cable  

**Note:** Please use the Ethernet board. It is necessary to use `usbd_stop` to shut down.

Serial port printing display：
```
IEPHY eth phy scan success, phy_addr: 1, phy_id: 0x02430C54
WEPHY drv_match falied, use General driver
IECM Create USB device cdc_ecm <-> emac task...
qcc74x />
qcc74x />IECM USB device cdc_ecm <-> emac task start...
IECM usbd rndis machine start/restart 
WETH_EMAC Eth Emac ReStart (LinkDown) !!!
I/USB CDC_ECM USBD_EVENT_CONFIGURED
IECM USBD ECM EMAC Ready!
WETH_EMAC Eth Emac LinkUp !!!
IETH_EMAC TX_BUF_CNT:0, RX_BUF_CNT:10
IETH_EMAC eth_phy speed: 100M_FULL_DUPLEX
IECM USBD ECM IN/RX start
IECM USBD ECM OUT/TX start

IETH_EMAC TX: success cnt:0, error cnt:0, total size:0Byte
IETH_EMAC     push_cnt:0, tx_db waiting:0, tx_bd_ptr:0
IETH_EMAC RX: success cnt:0, error cnt:0, total size:0Byte
IETH_EMAC     push_cnt:10, rx_db waiting:10, rx_bd_ptr:0, busy cnt:0
```

Linux Terminal Virtual Network Port Display:
```
$ sudo dmesg -w
[664826.119339] usb 1-3: new high-speed USB device number 10 using xhci_hcd
[664826.514987] usb 1-3: New USB device found, idVendor=ffff, idProduct=ffff, bcdDevice= 1.00
[664826.514991] usb 1-3: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[664826.514992] usb 1-3: Product: CherryUSB_CDC_ECM_DEMO
[664826.514993] usb 1-3: Manufacturer: CherryUSB
[664826.514994] usb 1-3: SerialNumber: 2022123456
[664826.558607] cdc_ether 1-3:1.0 eth0: register 'cdc_ether' at usb-0000:00:14.0-3, CDC Ethernet Device, 18:b9:05:12:34:56
[664826.558639] usbcore: registered new interface driver cdc_ether
[664826.565021] cdc_ether 1-3:1.0 enx18b905123456: renamed from eth0

$ ifconfig 
enx18b905123456: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 10.28.30.186  netmask 255.255.255.0  broadcast 10.28.30.255
        inet6 fe80::7b6e:119c:c26:e462  prefixlen 64  scopeid 0x20<link>
        ether 18:b9:05:12:34:56  txqueuelen 1000  (Ethernet)
        RX packets 2382  bytes 414519 (414.5 KB)
        RX errors 0  dropped 215  overruns 0  frame 0
        TX packets 208  bytes 30106 (30.1 KB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
```

### 3.CDC_RNDIS
**Command:** `usbd_cdc_rndis_test`  
**Function Description:** Initialize a USB RNDIS (Remote NDIS) device  
**Hardware:** Windows PC, Two Type-C to Type-A data cables, A network cable  

**Note:** Please use the Ethernet board. It is necessary to use `usbd_stop` to shut down.  

Serial port printing display：
```
IEPHY eth phy scan success, phy_addr: 1, phy_id: 0x02430C54
WEPHY drv_match falied, use General driver
IRNDIS Create USB device cdc_rndis <-> emac task...
IRNDIS USB device cdc_rndis <-> emac task start...
IRNDIS usbd rndis machine start/restart 
WETH_EMAC Eth Emac ReStart (LinkDown) !!!
I/USB CDC_RNDIS USBD_EVENT_CONFIGURED
IRNDIS USBD RNDIS EMAC Ready!
WETH_EMAC Eth Emac LinkUp !!!
IETH_EMAC TX_BUF_CNT:0, RX_BUF_CNT:10
IETH_EMAC eth_phy speed: 100M_FULL_DUPLEX
IRNDIS USBD RNDIS IN/RX start
IRNDIS USBD RNDIS OUT/TX start

IETH_EMAC TX: success cnt:0, error cnt:0, total size:0Byte
IETH_EMAC     push_cnt:0, tx_db waiting:0, tx_bd_ptr:0
IETH_EMAC RX: success cnt:0, error cnt:0, total size:0Byte
IETH_EMAC     push_cnt:10, rx_db waiting:10, rx_bd_ptr:0, busy cnt:0
```
Windows Settings Network and Internet Port Display:
<div align="center" style="margin-top: 2em; margin-bottom: 2em;">
    <img src="./picture/windows_rndis.png" alt="GPIO_Output" width="650"   height="550" >  
</div> 

### 4.HID_Keyboard 
**Command:** `usbd_hid_keyboard_test`  
**Function Description:** Initialize a virtual USB keyboard device  
**Hardware:** Windows/Linux PC, Two Type-C to Type-A data cables  

**Note:** Be cautious when clicking on an input field with your mouse, as it may continuously send 'a'. It is necessary to use `usbd_stop` to shut down.

Serial port printing display：
```
IUSBD_CLI Create USB device usbd_hid_keyboard task...
IUSBD_CLI usbd_hid_keyboard_task run
IUSBD_CLI hid_keyboard_init done
I/USB HID KeyBoard configured done
```

### 5.MSC
**5. Command:** `usbd_msc_test`  
**Function Description:** Initialize a USB device that supports MSC protocols  
**Hardware:** Windows/Linux PC, Two Type-C to Type-A data cables  

**Note:** A virtual USB drive will be inserted during the successful jump. It is necessary to use `usbd_stop` to shut down.

Serial port printing display：
```
I/USB MSC configured done
```


### 6.UAV
**6. Command:** `usbd_uac_v1_test`  
**Function Description:** Initialize a USB Audio Class v1.0 device  
**Hardware:** Windows PC, Two Type-C to Type-A data cables  

**Note:** Please turn on the video recorder to display 'UAC OPEN' on the serial port. It will continue to send high-frequency audio data. It is necessary to use `usbd_stop` to shut down.

Serial port printing display：
```
IUSBD_CLI Create USB device usbd_uac_v1 task...
IUSBD_CLI usbd_uac_v1_task run
IUSBD_CLI uac_v1_init done
I/USB UAC configured done
I/USB UAC OPEN SPK
```
Windows Terminal UAC Recorder Display:
<div align="center" style="margin-top: 2em; margin-bottom: 2em;">
    <img src="./picture/windows_uac.png" alt="GPIO_Output" width="520"   height="300" >  
</div> 

### 7.UVC
**Command:** `usbd_uvc_mjpeg_test`  
**Function Description:** Initialize a USB Video Class device  
**Hardware:** Windows PC, Two Type-C to Type-A data cables  

**Note:** Please open the camera application to display 'UVC OPEN' on the serial port. It is necessary to use `usbd_stop` to shut down.

Serial port printing display：
```
IUSBD_CLI Create USB device usbd_uvc_mjpeg task...
IUSBD_CLI usbd_uvc_mjpeg_task run
IUSBD_CLI uvc_mjpeg_init done
I/USB UVC configured done
I/USB UVC OPEN
```

Windows Terminal UVC Camera Display:
<div align="center" style="margin-top: 2em; margin-bottom: 2em;">
    <img src="./picture/windows_uvc.png" alt="GPIO_Output" width="500"   height="390" >  
</div> 

### **8. Command:** `usbd_cdc_acm_msc_test`  
**Function Description:** Initialize a USB device that supports both CDC-ACM and MSC protocols  
**Hardware:** Windows/Linux PC 、 Two Type-C to Type-A data cables

**Note:** A virtual USB drive was inserted during the successful jump. Its effect is consistent with that of usbd_cdc_acm_test and usbd_msc_test. It is necessary to use `usbd_stop` to shut down.

Serial port printing display：
```
IACM_MSC Create USB device cdc_acm data send task...
IACM usbd cdc_acm machine start/restart 
I/USB MSC CDC_ACM configured done
IACM USBD ACM Ready!
IACM DTR clear, Exit the loopback test mode
```

## Host Function

### 1. CDC-ECM
**Function Description:** As a USB host, automatically recognizes and tests connected CDC-ECM devices (such as USB Ethernet adapters)  
**Hardware:** CDC-ECM device, Type-C to Type-A data cable  

**Note:** After successfully identifying the CDC-ECM device, the MAC address and maximum segment size will be printed, and it will be registered as a network device. Use `usbh_stop` to shut down.

Serial port printing display：

```
[I/usbh_hub] New high-speed device on Bus 0, Hub 1, Port 1 connected
[I/usbh_core] New device found,idVendor:ffff,idProduct:ffff,bcdDevice:0100
[I/usbh_core] The device has 1 bNumConfigurations
[I/usbh_core] The device has 2 interfaces
[I/usbh_core] Enumeration success, start loading class driver
[I/usbh_core] Loading cdc_ecm class driver
[I/usbh_cdc_ecm] CDC ECM MAC address 18:b9:05:12:34:56
[I/usbh_cdc_ecm] CDC ECM Max Segment Size:1514
[I/usbh_cdc_ecm] Ep=83 Attr=03 Mps=16 Interval=05 Mult=00
[I/usbh_cdc_ecm] Ep=02 Attr=02 Mps=512 Interval=00 Mult=00
[I/usbh_cdc_ecm] Ep=81 Attr=02 Mps=512 Interval=00 Mult=00
[I/usbh_cdc_ecm] Set CDC ECM packet filter:000c
[I/usbh_cdc_ecm] Register CDC ECM Class:/dev/cdc_ether
[I/USB] USBH CDC ECM run
USBH CDC ECM LWIP test start
[I/usbh_core] Loading cdc_data class driver
[I/USB] CDC ECM link down
```

### 2. MSC
**Function Description:** As a USB host, automatically recognizes and tests connected MSC devices (such as USB flash drives)  
**Hardware:** USB flash drive, Type-C to Type-A data cable  

**Note:** After successfully identifying the MSC device, read and write tests will be performed. Use `usbh_stop` to shut down.

Serial port printing display：
```
[I/USB] New high-speed device on Hub 2, Port 1 connected
[I/USB] New device found,idVendor:04e8,idProduct:61fd,bcdDevice:0005
[I/USB] The device has 1 interfaces
[I/USB] Enumeration success, start loading class driver
[I/USB] Loading msc class driver
[I/USB] Get max LUN:1
[I/USB] Ep=81 Attr=02 Mps=512 Interval=00 Mult=00
[I/USB] Ep=02 Attr=02 Mps=512 Interval=00 Mult=00
[E/USB] csw bStatus 1
[I/USB] Capacity info:
[I/USB] Block num:15486976,block size:512
[I/USB] Register MSC Class:/dev/sda

[I/USB] ******************** be about to write test... **********************
[I/USB] Write Test Succeed!
[I/USB] Single data size:32768 Byte, Write the number:1024, Total size:32768 KB
[I/USB] Time:1766ms, Write Speed:18554 KB/s

[I/USB] ******************** be about to read test... **********************
[I/USB] Read Test Succeed!
[I/USB] Single data size:32768Byte, Read the number:1024, Total size:32768 KB
[I/USB] Time:1496ms, Read Speed:21903 KB/s

[I/USB] ******************** be about to check test... **********************
[I/USB] Check Test Succeed!
[I/USB] All Data Is Good!
```

### 3. CDC-ACM
**Function Description:** As a USB host, automatically recognizes and tests connected CDC-ACM devices (such as USB-to-serial adapters)  
**Hardware:** USB-to-serial adapter, Type-C to Type-A data cable  

**Note:** After successfully identifying the CDC-ACM device, speed testing will be performed. Use `usbh_stop` to shut down.

Serial port printing display：
```
[I/usbh_hub] New high-speed device on Bus 0, Hub 1, Port 1 connected
[I/usbh_core] New device found,idVendor:ffff,idProduct:ffff,bcdDevice:0100
[I/usbh_core] The device has 1 bNumConfigurations
[I/usbh_core] The device has 2 interfaces
[I/usbh_core] Enumeration success, start loading class driver
[I/usbh_core] Loading cdc_acm class driver
[I/usbh_cdc_acm] Ep=04 Attr=02 Mps=512 Interval=00 Mult=00
[I/usbh_cdc_acm] Ep=83 Attr=02 Mps=512 Interval=00 Mult=00
[I/usbh_cdc_acm] Register CDC ACM Class:/dev/ttyACM0
USBH ACM speed test start
[I/usbh_core] Loading cdc_data class driver
USBH ACM test time: 2000
USBH ACM out size: 23160832
USBH ACM in size: 23160907
USBH ACM out speed: 11309 KB/S
USBH ACM in speed: 11309 KB/S
USBH ACM total speed: 22618 KB/S
USBH ACM speed test end
```

### 4. HID
**Function Description:** As a USB host, automatically recognizes and tests connected HID devices (such as mice, keyboards)  
**Hardware:** HID device (mouse, keyboard), Type-C to Type-A data cable  

**Note:** After successfully identifying the HID device, it will be registered as an input device. Use `usbh_stop` to shut down.

Serial port printing display：
```
[I/usbh_hub] New low-speed device on Bus 0, Hub 1, Port 1 connected
[I/usbh_core] New device found,idVendor:413c,idProduct:2113,bcdDevice:0110
[I/usbh_core] The device has 1 bNumConfigurations
[I/usbh_core] The device has 2 interfaces
[I/usbh_core] Enumeration success, start loading class driver
[I/usbh_core] Loading hid class driver
[I/usbh_hid] Ep=81 Attr=03 Mps=8 Interval=10 Mult=00
[I/usbh_hid] Register HID Class:/dev/input0
USBH HID test start, hid_interval: 10ms
[I/usbh_core] Loading hid class driver
[W/usbh_hid] Do not support set idle
[I/usbh_hid] Ep=82 Attr=03 Mps=3 Interval=10 Mult=00
[I/usbh_hid] Register HID Class:/dev/input1
[E/USB] USBH HID test already running
USBH HID test end
```

### Technical Details

None 

## Limitation

None

## Reference

None