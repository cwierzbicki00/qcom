#ifndef APP_BT_HCI_H_
#define APP_BT_HCI_H_

#include "at_host.h"

void app_hci_init(void);
void cmd_spi_hci_reset(void);
void cmd_spi_hci_setup_scan(int enable);
void cmd_spi_hci_setup_adv_parameters(void);
void cmd_spi_hci_setup_adv_data(void);
void cmd_spi_setup_hci_adv(int enable);
void cmd_spi_hci_rd_local_version(void);
void cmd_spi_hci_update_conn_para(void);
void cmd_spi_hci_rd_bt_addr(void);

#endif
