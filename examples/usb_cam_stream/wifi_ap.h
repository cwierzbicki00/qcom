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

#ifndef AP_CHANNEL
#define AP_CHANNEL   6
#endif

#ifndef AP_IP_ADDR
#define AP_IP_ADDR   "192.168.2.1"
#endif

#ifndef AP_NET_MASK
#define AP_NET_MASK  "255.255.255.0"
#endif

#ifndef AP_DHCP_START
#define AP_DHCP_START 100
#endif

#ifndef AP_DHCP_LIMIT
#define AP_DHCP_LIMIT 101
#endif

#ifndef AP_USE_DHCP
#define AP_USE_DHCP 1
#endif

#ifndef AP_SECURITY
#define AP_SECURITY "wpa2"
#endif

void wifi_ap_start(void);
void wifi_ap_stop(void);
void wifi_ap_event_handler(uint32_t code);

/* Return the current number of connected stations. */
int wifi_ap_get_sta_count(void);

#endif /* WIFI_AP_H */
