#ifndef _VIRT_NET_SPI_H_
#define _VIRT_NET_SPI_H_

#include "virt_net.h"
#include "at_host.h"
#include "FreeRTOS.h"
#include "queue.h"
#include "lwipopts.h"

#define TX_BUFFER_COUNT (TCP_SND_QUEUELEN * VIRT_NET_MAX)

#define SPI_NET_LOG(...) //printf(__VA_ARGS__)

typedef struct virt_net_spi {
  struct virt_net vnet;
  QueueHandle_t txq;
  uint8_t *txbuf_desc;
  at_host_handle_t athandle;
  TaskHandle_t task;
} *virt_net_spi_t;

typedef void (*net_buf_free_fn)(void *net_buf);
typedef void *net_buf_t;

virt_net_t virt_net_spi_create(void);

int virt_net_spi_input(struct netif *netif,
                  net_buf_t net_buf,
                  void *payload,
                  uint16_t length,
		          net_buf_free_fn free_fn);

#endif
