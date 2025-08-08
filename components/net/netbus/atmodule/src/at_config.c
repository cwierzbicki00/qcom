/**
  ******************************************************************************
  * @file    at_config.c
  * @version V1.0
  * @date
  * @brief   This file is part of AT command framework
  ******************************************************************************
  */

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
//#ifdef EASYFLASH_ENABLE
#include <easyflash.h>
//#endif
#include "at_main.h"
#include "at_core.h"

#define AT_CONFIG_PRINTF AT_CMD_PRINTF
    
int at_config_read(const char *key, void *config, int len)
{
    if (!key || !config || len <= 0) {
        AT_CONFIG_PRINTF("Invalid arguments to at_config_read\r\n");
        return 0;
    }

    size_t ret, value_len;

    memset(config, 0, len);
    ret = ef_get_env_blob(key, config, len, &value_len);
    if (ret > 0 && ret == value_len && value_len == len) {
        AT_CONFIG_PRINTF("'%s' (%d) read success\r\n", key, len);
        return 1;
    }

    AT_CONFIG_PRINTF("'%s' (%d) read failed\r\n", key, len);
    return 0;
}

int at_config_write(const char *key, void *config, int len)
{
    if (!key || !config || len <= 0) {
        AT_CONFIG_PRINTF("Invalid arguments to at_config_write\r\n");
        return 0;
    }
    int ret = ef_set_env_blob(key, config, len);
    if (ret != 0) {
        AT_CONFIG_PRINTF("ef_set_env_blob failed for '%s' (%d)\r\n", key, len);
        return 0;
    }
    return 1;
}

