#include <stdio.h>
#include <string.h>
#include "bitset.h"

#include "spi.h"
#include "at_host.h"
#include "app_bt_hci.h"

static int _virl_hci_spi_read(void *data, int len);
static int _virl_hci_spi_write(void *data, int len);

static const osThreadAttr_t _hci_rx_task_attr = {
  .name = "hci_recv_task",
  .priority = (osPriority_t) osPriorityRealtime7,
  .stack_size = 1024
};

static int _virl_hci_spi_read(void *data, int len)
{
	int ret;
	uint8_t traffic_type = SPI_MSG_CTRL_TRAFFIC_HCI;
	struct spi_msg_control ctrl;
	struct spi_msg m;

	SPI_MSG_CONTROL_INIT(ctrl, SPI_MSG_CTRL_TRAFFIC_TYPE,
		SPI_MSG_CTRL_TRAFFIC_TYPE_LEN, &traffic_type);
	SPI_MSG_INIT(m, SPI_MSG_OP_DATA, &ctrl, 0);
	m.data = data;
	m.data_len = len;
	ret = spi_read(&m, pdMS_TO_TICKS(10000));
	if (ret <= 0) {
		//printf("=====at failed to read from spi, %d\r\n", ret);
	} else {
		//printf("=====spi read %d\r\n", ret);
	}
#if 0
	if (ret > 0) {
		int max = ret > 25 ? 25 : ret;
		printf("[read] %d===>", ret);
		for (int i = 0; i < max; i++) {
			printf("%c", ((char *)data)[i]);
		}
		printf("\r\n");
	}
#endif
	return ret;
}

static int _virl_hci_spi_write(void *data, int len)
{
    int ret;
	struct spi_msg_control ctrl;
	uint8_t traffic = SPI_MSG_CTRL_TRAFFIC_HCI;
	struct spi_msg m;

	SPI_MSG_CONTROL_INIT(ctrl, SPI_MSG_CTRL_TRAFFIC_TYPE,
		SPI_MSG_CTRL_TRAFFIC_TYPE_LEN, &traffic);
	SPI_MSG_INIT(m, SPI_MSG_OP_DATA, &ctrl, 0);
	m.data = (void *)data;
	m.data_len = len;
	ret = spi_write(&m, pdMS_TO_TICKS(10000));
	if (ret <= 0) {
		printf("at failed to write to spi, %d\r\n", ret);
	}
#if 0
	int max = ret > 25 ? 25 : ret;
	printf("[write] %d===>", ret);
	for (int i = 0; i < max; i++) {
		printf("%c", ((char *)data)[i]);
	}
	printf("\r\n");
#endif
	return ret;
}

static void __hci_recv_task(void *arg)
{
	uint8_t *recvdata = NULL;
	int recv_size;
	recvdata = pvPortMalloc(512);
    
	while (1)
    {
		recv_size = _virl_hci_spi_read(recvdata, 512);
		if (recv_size <= 0) {
			continue;
		}
		else
		{
			printf("HCI RECV:\r\n");
			for (int i = 0; i < recv_size; i++) {
				printf("0x%02x ", recvdata[i]);
			}
			printf("\r\n");
			memset(recvdata, 0, 512);
		}
	}
	vPortFree(recvdata);
	vTaskDelete(NULL);
}

static void at_host_hci_send(uint8_t *data, int len)
{
	printf("HCI SEND:\r\n");
	for (int i = 0; i < len; i++) {
		printf("%02x ", data[i]);
	}
	printf("\r\n");
	_virl_hci_spi_write(data, len);
}
void cmd_spi_hci_reset(void)
{
    uint8_t hci_reset[4] = {0x01, 0x03, 0x0c, 0x00};
    at_host_hci_send(hci_reset, 4);
    vTaskDelay(100);
    uint8_t hci_set_event_mask[] = {0x01, 0x01, 0x0C, 0x08, 0xFD,0x8c, 0xE2, 0x02,0x06,0xC8,0x2F,0x24};
    at_host_hci_send(hci_set_event_mask, sizeof(hci_set_event_mask));
    vTaskDelay(100);
    uint8_t hci_set_event_mask_en[] = {0x01,0x01, 0x20, 0x08,0xFF, 0xFF,0xFF,0xFF,0x03,0x00,0x00,0x00};
    at_host_hci_send(hci_set_event_mask_en, sizeof(hci_set_event_mask_en));
    vTaskDelay(100);
    return 0;
}
void cmd_spi_hci_setup_scan(int enable)
{

    uint8_t hci_scan_enable[6] = {0x01, 0x0c, 0x20, 0x02,0x01, 0x00};
    uint8_t hci_scan_disable[6] = {0x01, 0x0c, 0x20, 0x02,0x00, 0x00};
    if (enable) {
        at_host_hci_send(hci_scan_enable, 6);
    }else {
        at_host_hci_send(hci_scan_disable, 6);
    }
}

void cmd_spi_hci_setup_adv_data(void)
{

    uint8_t hci_adv_data[] = {
		0x01,                   
		0x08, 0x20,             
		0x20,                   
		0x0E, 0x02, 0x01, 0x06, 0x0A, 0x09, 'H', 'C', 'I', 'L', 'E', '-', 'D', 'E', 'V', 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00               
	};
	at_host_hci_send(hci_adv_data, sizeof(hci_adv_data));
}
void cmd_spi_hci_setup_adv_parameter(void)
{

    uint8_t hci_adv_params[] = {
		0x01,                   
		0x06, 0x20,             
		0x0F,                  
		0xA0, 0x00,             
		0xA0, 0x00,             
		0x00,                   
		0x00,                   
		0x00,                   
		0x80, 0x81, 0x82, 0x83, 0x84, 0x85, 
		0x07,                   
		0x00                    
	};
    at_host_hci_send(hci_adv_params, sizeof(hci_adv_params));
}

void cmd_spi_setup_hci_adv(int enable)
{
    uint8_t hci_adv_enable [] = {
		0x01,                   
		0x0A, 0x20,             
		0x01,                   
		0x01
	};
    uint8_t hci_adv_disable [] = {
		0x01,                   
		0x0A, 0x20,             
		0x01,                   
		0x00
	};
    if (enable) {
        at_host_hci_send(hci_adv_enable, sizeof(hci_adv_enable));
    }
    else {
        at_host_hci_send(hci_adv_disable, sizeof(hci_adv_disable));
    }
}
void cmd_spi_hci_update_conn_para(void)
{
    uint8_t hci_update_conn_para [] = {
        // --- HCI Command Header ---
    0x01,                   //Command Packet (0x01)
    0x13, 0x20,             //LE Connection Update (0x2013)
    0x0E,

    0x01, 0x00,             
    // Conn Interval Min: 0x00C8 (200ms = 200 * 1.25ms)
    0xC8, 0x00,
    // Conn Interval Max: 0x00C8 (200ms = 200 * 1.25ms)
    0xC8, 0x00,
    // Max Latency: 0x0004
    0x04, 0x00,             

    0xF4, 0x01,             
   
    0x00, 0x00,             

    0x00, 0x00
        
	};

    at_host_hci_send(hci_update_conn_para, sizeof(hci_update_conn_para));
    
}

void cmd_spi_hci_rd_local_version(void)
{
    uint8_t hci_rd_version [] = {
		0x01,                   
        0x01,0x10,
        0x00
	};

    at_host_hci_send(hci_rd_version, sizeof(hci_rd_version));
    
}

void cmd_spi_hci_rd_bt_addr(void)
{
    uint8_t hci_rd_version [] = {
		0x01,                   
        0x09,0x10,
        0x00
	};

    at_host_hci_send(hci_rd_version, sizeof(hci_rd_version));
    
}

void app_hci_init(void)
{
	spi_bind(SPI_MSG_CTRL_TRAFFIC_HCI, 16);
	osThreadNew(__hci_recv_task, NULL, &_hci_rx_task_attr);
}
