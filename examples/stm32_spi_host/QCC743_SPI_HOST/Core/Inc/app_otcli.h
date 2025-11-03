/*
 * app_otcli.h
 *
 *  Created on: May 22, 2025
 */

#ifndef SRC_APP_OTCLI_H_
#define SRC_APP_OTCLI_H_

#include "at_host.h"

int app_otcli_init(void);

/** demostrate to execute openthread rcp commands */
void app_otcli_platform_reset(int reset_cnt);
void app_otcli_rcp_version(int reset_cnt);
void app_otcli_recv(int time_s);
void app_otcli_send(int pkt_len);
void app_otcli_sends(int time_s);

#endif /* SRC_APP_OTCLI_H_ */
