SDK_DEMO_PATH ?= .
QCC74x_SDK_BASE ?= $(SDK_DEMO_PATH)/../../../..

export QCC74x_SDK_BASE

CHIP ?= qcc743
BOARD ?= qcc743dk
CROSS_COMPILE ?= riscv64-unknown-elf-

# add custom cmake definition
#cmake_definition+=-Dxxx=sss

cmake_definition+=-DCONFIG_PSRAM_COPY_CODE=$(CONFIG_PSRAM_COPY_CODE)

CONFIG_CSIDMA_CLI ?= 0
cmake_definition+=-DCONFIG_CSIDMA_CLI=$(CONFIG_CSIDMA_CLI)

include $(QCC74x_SDK_BASE)/project.build
