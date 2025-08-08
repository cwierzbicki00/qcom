sdk_generate_library()

sdk_library_add_sources(ota/ota.c)
sdk_add_include_directories(.)

sdk_library_add_sources(https/https_fota.c)
sdk_add_include_directories(https)
