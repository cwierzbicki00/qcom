SDK_DEMO_PATH ?= .
QCC74x_SDK_BASE ?= $(SDK_DEMO_PATH)/../../../..

export QCC74x_SDK_BASE

CHIP ?= qcc743
BOARD ?= qcc743dk
CROSS_COMPILE ?= riscv64-unknown-elf-
CONFIG_AUDIO_MIC_PDM_MODE ?= n

# add custom cmake definition
#cmake_definition+=-Dxxx=sss
cmake_definition+=-DCONFIG_AUDIO_MIC_PDM_MODE=$(CONFIG_AUDIO_MIC_PDM_MODE)

include $(QCC74x_SDK_BASE)/project.build
