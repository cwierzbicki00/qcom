cmake_minimum_required(VERSION 3.15)

include(proj.conf)

find_package(qcc74x_sdk REQUIRED HINTS $ENV{QCC74x_SDK_BASE})

sdk_add_compile_definitions(-DCONFIG_CLI_CMD_ENABLE)
sdk_add_compile_definitions(-DSHELL_THREAD_PRIO=20)

sdk_add_include_directories(.)
sdk_add_include_directories(${QCC74x_SDK_BASE}/components/usb/cherryusb/port/ehci)
sdk_add_include_directories(${QCC74x_SDK_BASE}/components/usb/cherryusb/common)
sdk_add_include_directories(${QCC74x_SDK_BASE}/components/usb/cherryusb/core)

sdk_set_main_file(main.c)
target_sources(app PRIVATE wifi_ap.c frame_pool.c uvc_capture.c usb_ehci_iso_stub.c http_server.c)

project(usb_cam_stream)
