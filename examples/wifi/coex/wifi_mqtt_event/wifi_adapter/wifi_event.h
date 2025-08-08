#ifndef _WIFI_EVENT_H_
#define _WIFI_EVENT_H_

#include <stdint.h>
#include <stdbool.h>
#include <string.h>
#include "esp_err.h"
#include "esp_event.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef enum wifi_event_id_t {
   WIFI_EVENT_STA_CONNECTED = 1, 
   WIFI_EVENT_STA_DISCONNECTED, 
   WIFI_EVENT_SCAN_DONE, 
   WIFI_EVENT_GOTIP, 
} wifi_event_id_t;

int wifi_events_init(esp_event_loop_handle_t loop_handler);

#ifdef __cplusplus
}
#endif //__cplusplus


#endif

