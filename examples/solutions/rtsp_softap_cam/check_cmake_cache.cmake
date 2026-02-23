if(NOT DEFINED BUILD_DIR)
    message(FATAL_ERROR "BUILD_DIR is required")
endif()

if(NOT DEFINED CMAKE_SCRIPT_MODE_FILE)
    message(FATAL_ERROR "CMAKE_SCRIPT_MODE_FILE is required")
endif()

get_filename_component(SCRIPT_DIR "${CMAKE_SCRIPT_MODE_FILE}" DIRECTORY)

if(IS_ABSOLUTE "${BUILD_DIR}")
    set(BUILD_DIR_ABS "${BUILD_DIR}")
else()
    set(BUILD_DIR_ABS "${SCRIPT_DIR}/${BUILD_DIR}")
endif()

if(DEFINED SOURCE_DIR)
    if(IS_ABSOLUTE "${SOURCE_DIR}")
        set(SOURCE_DIR_ABS "${SOURCE_DIR}")
    else()
        set(SOURCE_DIR_ABS "${SCRIPT_DIR}/${SOURCE_DIR}")
    endif()
else()
    set(SOURCE_DIR_ABS "${SCRIPT_DIR}")
endif()

set(CACHE_FILE "${BUILD_DIR_ABS}/CMakeCache.txt")
if(NOT EXISTS "${CACHE_FILE}")
    return()
endif()

file(STRINGS "${CACHE_FILE}" CACHED_HOME_DIR
     REGEX "^CMAKE_HOME_DIRECTORY:INTERNAL="
     LIMIT_COUNT 1)
if(NOT CACHED_HOME_DIR)
    return()
endif()

string(REPLACE "CMAKE_HOME_DIRECTORY:INTERNAL=" "" CACHED_HOME_DIR "${CACHED_HOME_DIR}")

# Compare normalized paths to handle slash and case differences across shells.
file(TO_CMAKE_PATH "${CACHED_HOME_DIR}" CACHED_HOME_DIR_NORM)
file(TO_CMAKE_PATH "${SOURCE_DIR_ABS}" SOURCE_DIR_NORM)
string(TOLOWER "${CACHED_HOME_DIR_NORM}" CACHED_HOME_DIR_NORM)
string(TOLOWER "${SOURCE_DIR_NORM}" SOURCE_DIR_NORM)

if(NOT CACHED_HOME_DIR_NORM STREQUAL SOURCE_DIR_NORM)
    message(STATUS
        "Detected stale CMake cache:"
        " cache source='${CACHED_HOME_DIR}',"
        " current source='${SOURCE_DIR_ABS}'."
        " Removing '${BUILD_DIR_ABS}' to regenerate.")
    file(REMOVE_RECURSE "${BUILD_DIR_ABS}")
endif()
