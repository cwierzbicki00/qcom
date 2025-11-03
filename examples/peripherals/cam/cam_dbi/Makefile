SDK_DEMO_PATH ?= $(abspath .)
QCC74x_SDK_BASE ?= $(abspath ./../../../..)

export QCC74x_SDK_BASE

NOW_REAL_PATH:= $(realpath ./)

CHIP ?= qcc743
BOARD ?= devkitm
BOARD_DIR = $(NOW_REAL_PATH)
CROSS_COMPILE ?= riscv64-unknown-elf-

# add custom cmake definition
#cmake_definition+=-Dxxx=sss

include $(QCC74x_SDK_BASE)/project.build
