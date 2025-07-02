#include <sdk_version.h>
#include "compiler/compiler_ld.h"

static const char *version_sdk __attribute__((used, section(".version.sdk"))) = "component_version_sdk_" PROJECT_SDK_VERSION;
static const char *compile_time __attribute__((used, section(".version.sdk." ATTR_TOSTRING(__LINE__)))) = "compile_time:"__DATE__" " __TIME__;
static const char *sw_image __attribute__((used, section(".version.sdk." ATTR_TOSTRING(__LINE__)))) = "SW image:" CONFIG_PROJECT_NAME CONFIG_PROJECT_PARAM;
