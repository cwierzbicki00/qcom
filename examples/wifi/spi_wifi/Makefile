SDK_DEMO_PATH ?= .
QCC74x_SDK_BASE ?= $(SDK_DEMO_PATH)/../../../

export QCC74x_SDK_BASE

CHIP ?= qcc743
BOARD ?= qcc743dk
CROSS_COMPILE ?= riscv64-unknown-elf-

# add custom cmake definition
#cmake_definition+=-Dxxx=sss

CONFIG_LWIP_ONHOST_ENABLE ?= 0
cmake_definition+=-DCONFIG_LWIP_ONHOST_ENABLE=$(CONFIG_LWIP_ONHOST_ENABLE)

CONFIG_USE_LPAPP ?= 1
cmake_definition+=-DCONFIG_USE_LPAPP=$(CONFIG_USE_LPAPP)

CONFIG_BLUETOOTH_APP ?= 1
cmake_definition+=-DCONFIG_BLUETOOTH_APP=$(CONFIG_BLUETOOTH_APP)

CONFIG_HCI_ENABLE ?= 0
ifeq ($(CONFIG_HCI_ENABLE), 1)
    cmake_definition+=-DCONFIG_HCI_ENABLE=$(CONFIG_HCI_ENABLE)
    ifneq ($(CONFIG_LWIP_ONHOST_ENABLE), 1)
        $(error "Bluetooth HCI mode only runs with Wi-Fi Lwip On Host mode.")
    endif
    ifneq ($(CONFIG_BLUETOOTH_APP), 0)
        $(error "BLE AT CMD NOT run Bluetooth HCI mode.")
    endif
endif

ifeq ($(CONFIG_LWIP_ONHOST_ENABLE), 1)
CONFIG_IPV6 = 0
else
CONFIG_IPV6 ?= 1
endif

cmake_definition+=-DCONFIG_IPV6=$(CONFIG_IPV6)

CONFIG_MQTT ?= 1
cmake_definition+=-DCONFIG_MQTT=$(CONFIG_MQTT)

CONFIG_HTTP ?= 1
cmake_definition+=-DCONFIG_HTTP=$(CONFIG_HTTP)

CONFIG_NETWORK ?= 1
cmake_definition+=-DCONFIG_NETWORK=$(CONFIG_NETWORK)

CONFIG_ANTENNA_CONTROL ?= 1
cmake_definition+=-DCONFIG_ANTENNA_CONTROL=$(CONFIG_ANTENNA_CONTROL)

cmake_definition+=-DCONFIG_PSRAM_COPY_CODE=$(CONFIG_PSRAM_COPY_CODE)

include $(QCC74x_SDK_BASE)/project.build 
