SDK_DEMO_PATH ?= $(abspath .)
QCC74x_SDK_BASE ?= ./../../..

export QCC74x_SDK_BASE

CHIP ?= qcc743
BOARD ?= qcc743dk
CROSS_COMPILE ?= riscv64-unknown-elf-

# add custom cmake definition
# cmake_definition+=-Dxxx=sss

CONFIG_BLE_ENABLE ?= 1
cmake_definition+=-DCONFIG_BLE_ENABLE=$(CONFIG_BLE_ENABLE)

CONFIG_USBH_MSC ?= 0
cmake_definition+=-DCONFIG_USBH_MSC=$(CONFIG_USBH_MSC)

include $(QCC74x_SDK_BASE)/project.build
