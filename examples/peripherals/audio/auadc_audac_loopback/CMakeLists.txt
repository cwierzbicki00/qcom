cmake_minimum_required(VERSION 3.15)

include(proj.conf)

find_package(qcc74x_sdk REQUIRED HINTS $ENV{QCC74x_SDK_BASE})

if(CONFIG_AUDIO_MIC_PDM_MODE)
    sdk_add_compile_definitions(-D CONFIG_AUDIO_MIC_PDM_MODE)
endif()

sdk_set_main_file(main.c)

project(auadc_audac_loopback)
