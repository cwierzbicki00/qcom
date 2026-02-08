#ifndef WIFI_AP_H
#define WIFI_AP_H

#include <stdint.h>

/* Build-time configurable SoftAP parameters */
#ifndef AP_SSID
#define AP_SSID "QCC748M-CAM"
#endif

#ifndef AP_PASSWORD
#define AP_PASSWORD "change-me-please"
#endif

#define AP_CHANNEL   6
#define AP_IP_ADDR   "192.168.2.1"
#define AP_NET_MASK  "255.255.255.0"
#define AP_DHCP_START 100
#define AP_DHCP_LIMIT 101

void wifi_ap_start(void);
void wifi_ap_stop(void);
void wifi_ap_event_handler(uint32_t code);

/* Return the current number of connected stations. */
int wifi_ap_get_sta_count(void);

#endif /* WIFI_AP_H */
