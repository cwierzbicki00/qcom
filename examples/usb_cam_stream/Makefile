SDK_DEMO_PATH ?= .
QCC74x_SDK_BASE ?= ./../..

export QCC74x_SDK_BASE

CHIP ?= qcc743
BOARD ?= qcc744dk
CROSS_COMPILE ?= riscv64-unknown-elf-

# Host detection helpers.
# Do not call `uname` on native Windows make.exe.
HOST_IS_WINDOWS := $(filter Windows_NT,$(OS))
ifneq ($(ComSpec),)
HOST_IS_WINDOWS := Windows_NT
# Ensure included SDK make logic treats PowerShell sessions as Windows.
OS := Windows_NT
export OS
endif
UNAME_R :=
ifeq ($(HOST_IS_WINDOWS),)
UNAME_R := $(shell uname -r 2>/dev/null)
endif

# Keep separate CMake caches per shell environment.
# Windows stays on `build` (matches flash_prog_cfg.ini defaults).
# WSL uses `build_wsl` to avoid cache/source path collisions.
ifeq ($(HOST_IS_WINDOWS),Windows_NT)
BUILD_DIR ?= build
else ifneq ($(findstring WSL2,$(UNAME_R)),)
BUILD_DIR ?= build_wsl
endif

# add custom cmake definition
#cmake_definition+=-Dxxx=sss

include $(QCC74x_SDK_BASE)/project.build

# In WSL, flash/efuse are proxied to PowerShell by project.build.
# Pass BUILD_DIR through so the proxied Windows make uses the same artifacts.
ifneq ($(findstring WSL2,$(UNAME_R)),)
command_flash = $(PS_PROGRAM) make flash CHIP=$(CHIP) CPU_ID=$(CPU_ID) COMX=$(COMX) BAUDRATE=$(BAUDRATE) BUILD_DIR=$(BUILD_DIR)
command_efuse = $(PS_PROGRAM) make efuse CHIP=$(CHIP) CPU_ID=$(CPU_ID) COMX=$(COMX) BAUDRATE=$(BAUDRATE) BUILD_DIR=$(BUILD_DIR)
endif

check_cmake_cache:
	@$(CMAKE) -DBUILD_DIR="$(BUILD_DIR)" -P check_cmake_cache.cmake

cmake_cache: check_cmake_cache
