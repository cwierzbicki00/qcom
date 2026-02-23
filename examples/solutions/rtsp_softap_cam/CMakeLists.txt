cmake_minimum_required(VERSION 3.15)

include(proj.conf)

find_package(qcc74x_sdk REQUIRED HINTS $ENV{QCC74x_SDK_BASE})

set(GIT_TAG "unknown")
find_package(Git QUIET)
if(GIT_FOUND AND EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/.git")
    execute_process(
        COMMAND "${GIT_EXECUTABLE}" describe --tags --always --dirty
        WORKING_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}"
        OUTPUT_VARIABLE GIT_TAG_RAW
        OUTPUT_STRIP_TRAILING_WHITESPACE
        ERROR_QUIET
        RESULT_VARIABLE GIT_RC
        TIMEOUT 2
    )
    if(GIT_RC EQUAL 0 AND NOT GIT_TAG_RAW STREQUAL "")
        set(GIT_TAG "${GIT_TAG_RAW}")
    endif()
endif()

sdk_add_compile_definitions(-DCONFIG_CLI_CMD_ENABLE)
sdk_add_compile_definitions(-DSHELL_THREAD_PRIO=20)
sdk_add_compile_definitions(-DGIT_TAG="${GIT_TAG}")

sdk_add_include_directories(.)
sdk_add_include_directories(${QCC74x_SDK_BASE}/components/usb/cherryusb/port/ehci)
sdk_add_include_directories(${QCC74x_SDK_BASE}/components/usb/cherryusb/common)
sdk_add_include_directories(${QCC74x_SDK_BASE}/components/usb/cherryusb/core)
sdk_add_include_directories(${QCC74x_SDK_BASE}/components/net/lib/rtsp/inc)
sdk_add_include_directories(${QCC74x_SDK_BASE}/components/net/lib/rtsp/src)

sdk_set_main_file(main.c)
target_sources(app PRIVATE
    wifi_ap.c
    frame_pool.c
    uvc_capture.c
    usb_ehci_iso_stub.c
    http_server.c
    rtsp_bridge.c
    ${QCC74x_SDK_BASE}/components/net/lib/rtsp/src/delay_task.c
    ${QCC74x_SDK_BASE}/components/net/lib/rtsp/src/jpeg_parser.c
    ${QCC74x_SDK_BASE}/components/net/lib/rtsp/src/librtspsrv.c
    ${QCC74x_SDK_BASE}/components/net/lib/rtsp/src/log.c
    ${QCC74x_SDK_BASE}/components/net/lib/rtsp/src/rtcp.c
    rtp_local.c
    ${QCC74x_SDK_BASE}/components/net/lib/rtsp/src/rtsp_method.c
    ${QCC74x_SDK_BASE}/components/net/lib/rtsp/src/rtsp_parser.c
    ${QCC74x_SDK_BASE}/components/net/lib/rtsp/src/rtsp_sess.c
    ${QCC74x_SDK_BASE}/components/net/lib/rtsp/src/rtsp_srv.c
    ${QCC74x_SDK_BASE}/components/net/lib/rtsp/src/sd_handler.c
    ${QCC74x_SDK_BASE}/components/net/lib/rtsp/src/util.c
)

project(rtsp_softap_cam)
