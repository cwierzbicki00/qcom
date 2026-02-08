#include "wifi_ap.h"

#include <string.h>
#include <lwip/tcpip.h>
#include <lwip/sockets.h>
#include <lwip/inet.h>

#include "export/qcc74x_fw_api.h"
#include "wifi_mgmr_ext.h"
#include "wifi_mgmr.h"
#include "fhost.h"

/* The SDK header (dhcp_server.h) declares dhcpd_sta_status_callback_set()
 * but the implementation (dhcp_server_raw.c) defines dhcpd_status_callback_set().
 * Declare the actual function name here to avoid the linker mismatch. */
typedef void (*dhcpd_callback_t)(struct netif *netif);
err_t dhcpd_status_callback_set(struct netif *netif, dhcpd_callback_t cb);

#include "shell.h"

#define DBG_TAG "WIFI"
#include "log.h"

static volatile int ap_sta_count = 0;

/* Cache connected STA MACs so we can log them on disconnect.
 * The SDK event system does not pass the MAC with STA_DEL events,
 * so we diff the firmware table against our cache. */
static uint8_t sta_mac_cache[4][6]; /* CFG_STA_MAX is hardcoded to 4 */

/* DHCP lease cache: maps STA MAC → assigned IP address.
 * Updated via DHCP server callback when a client obtains an IP. */
static uint32_t sta_ip_cache[4]; /* IP in network byte order, 0 = unknown */

/*
 * DHCP server callback — fired when a STA obtains an IP via DHCP ACK.
 * The SDK passes a temporary netif with hwaddr=MAC, ip_addr=assigned IP.
 */
static void dhcp_lease_cb(struct netif *netif)
{
    if (!netif) return;

    uint32_t ip = ip4_addr_get_u32(ip_2_ip4(&netif->ip_addr));
    const uint8_t *mac = netif->hwaddr;

    /* Find matching slot in our STA cache and store the IP */
    for (int i = 0; i < CFG_STA_MAX; i++) {
        if (memcmp(sta_mac_cache[i], mac, 6) == 0) {
            sta_ip_cache[i] = ip;
            struct in_addr addr = { .s_addr = ip };
            LOG_I("[WIFI] DHCP lease: %02x:%02x:%02x:%02x:%02x:%02x → %s\r\n",
                  mac[0], mac[1], mac[2], mac[3], mac[4], mac[5],
                  inet_ntoa(addr));
            return;
        }
    }
}

void wifi_ap_start(void)
{
    wifi_mgmr_ap_params_t ap;
    memset(&ap, 0, sizeof(ap));

    ap.ssid = AP_SSID;
    ap.key = AP_PASSWORD;
    ap.akm = AP_SECURITY;
    ap.channel = AP_CHANNEL;
    ap.use_dhcpd = AP_USE_DHCP;
    ap.ap_ipaddr = inet_addr(AP_IP_ADDR);
    ap.ap_mask = inet_addr(AP_NET_MASK);
    ap.start = AP_DHCP_START;
    ap.limit = AP_DHCP_LIMIT;

    LOG_I("[WIFI] Starting SoftAP: SSID=%s channel=%d IP=%s DHCP=%s\r\n",
          AP_SSID, AP_CHANNEL, AP_IP_ADDR, ap.use_dhcpd ? "on" : "off");

    int ret = wifi_mgmr_ap_start(&ap);
    if (ret != 0) {
        LOG_E("[WIFI] AP start failed: %d\r\n", ret);
        return;
    }

    /* Register DHCP lease callback to track STA IP assignments */
    struct netif *ap_netif = (struct netif *)fhost_to_net_if(MGMR_VIF_AP);
    if (ap_netif) {
        dhcpd_status_callback_set(ap_netif, dhcp_lease_cb);
    }
}

void wifi_ap_event_handler(uint32_t code)
{
    switch (code) {
        case CODE_WIFI_ON_AP_STARTED:
            LOG_I("[WIFI] SoftAP started: SSID=%s channel=%d IP=%s DHCP=%s\r\n",
                  AP_SSID, AP_CHANNEL, AP_IP_ADDR,
                  AP_USE_DHCP ? "on" : "off");
            break;

        case CODE_WIFI_ON_AP_STOPPED:
            LOG_I("[WIFI] SoftAP stopped\r\n");
            ap_sta_count = 0;
            memset(sta_mac_cache, 0, sizeof(sta_mac_cache));
            memset(sta_ip_cache, 0, sizeof(sta_ip_cache));
            break;

        case CODE_WIFI_ON_AP_STA_ADD: {
            ap_sta_count++;
            struct wifi_sta_basic_info sta_info;
            memset(&sta_info, 0, sizeof(sta_info));

            /* Scan for the newly added STA and cache its MAC */
            for (int i = 0; i < CFG_STA_MAX; i++) {
                wifi_mgmr_ap_sta_info_get(&sta_info, i);
                if (sta_info.is_used && sta_info.sta_idx != 0xef) {
                    memcpy(sta_mac_cache[i], sta_info.sta_mac, 6);
                    LOG_I("[WIFI] STA connected: %02x:%02x:%02x:%02x:%02x:%02x (count=%d)\r\n",
                          sta_info.sta_mac[0], sta_info.sta_mac[1],
                          sta_info.sta_mac[2], sta_info.sta_mac[3],
                          sta_info.sta_mac[4], sta_info.sta_mac[5],
                          ap_sta_count);
                    break;
                }
            }

            /* Enforce single-station limit (backup to CONFIG_STA_MAX=1 in proj.conf) */
            if (ap_sta_count > 1) {
                LOG_W("[WIFI] Rejecting extra STA (limit=1)\r\n");
                wifi_mgmr_ap_sta_delete(sta_info.sta_idx);
                ap_sta_count--;
            }
            break;
        }

        case CODE_WIFI_ON_AP_STA_DEL: {
            if (ap_sta_count > 0) {
                ap_sta_count--;
            }

            /* Find which cached STA is no longer in the firmware table */
            struct wifi_sta_basic_info sta_info;
            bool found = false;
            for (int i = 0; i < CFG_STA_MAX; i++) {
                /* Skip slots we never cached */
                if (sta_mac_cache[i][0] == 0 && sta_mac_cache[i][1] == 0 &&
                    sta_mac_cache[i][2] == 0 && sta_mac_cache[i][3] == 0 &&
                    sta_mac_cache[i][4] == 0 && sta_mac_cache[i][5] == 0) {
                    continue;
                }
                memset(&sta_info, 0, sizeof(sta_info));
                wifi_mgmr_ap_sta_info_get(&sta_info, i);
                if (!sta_info.is_used || sta_info.sta_idx == 0xef) {
                    /* This slot was occupied but is now empty — this STA left */
                    LOG_I("[WIFI] STA disconnected: %02x:%02x:%02x:%02x:%02x:%02x (count=%d)\r\n",
                          sta_mac_cache[i][0], sta_mac_cache[i][1],
                          sta_mac_cache[i][2], sta_mac_cache[i][3],
                          sta_mac_cache[i][4], sta_mac_cache[i][5],
                          ap_sta_count);
                    memset(sta_mac_cache[i], 0, 6);
                    sta_ip_cache[i] = 0;
                    found = true;
                    break;
                }
            }
            if (!found) {
                LOG_I("[WIFI] STA disconnected (count=%d)\r\n", ap_sta_count);
            }
            break;
        }

        default:
            break;
    }
}

int wifi_ap_get_sta_count(void)
{
    return ap_sta_count;
}

void wifi_ap_stop(void)
{
    LOG_I("[WIFI] Stopping SoftAP\r\n");
    wifi_mgmr_ap_stop();
}

static int cmd_ap_start(int argc, char **argv)
{
    (void)argc; (void)argv;
    wifi_ap_start();
    printf("SoftAP start requested\r\n");
    return 0;
}
SHELL_CMD_EXPORT_ALIAS(cmd_ap_start, ap_start, Start SoftAP with configured params);

static int cmd_ap_stop(int argc, char **argv)
{
    (void)argc; (void)argv;
    wifi_ap_stop();
    printf("SoftAP stop requested\r\n");
    return 0;
}
SHELL_CMD_EXPORT_ALIAS(cmd_ap_stop, ap_stop, Stop SoftAP);

static int cmd_wifi_status(int argc, char **argv)
{
    printf("SoftAP SSID:   %s\r\n", AP_SSID);
    printf("Security:      %s\r\n", AP_SECURITY);
    printf("Channel:       %d\r\n", AP_CHANNEL);
    printf("IP address:    %s\r\n", AP_IP_ADDR);
    printf("Connected STAs: %d\r\n", ap_sta_count);

    struct wifi_sta_basic_info sta_info;
    for (int i = 0; i < CFG_STA_MAX; i++) {
        memset(&sta_info, 0, sizeof(sta_info));
        wifi_mgmr_ap_sta_info_get(&sta_info, i);
        if (sta_info.is_used && sta_info.sta_idx != 0xef) {
            if (sta_ip_cache[i] != 0) {
                struct in_addr addr = { .s_addr = sta_ip_cache[i] };
                printf("  STA[%d]: %02x:%02x:%02x:%02x:%02x:%02x  IP=%s\r\n", i,
                       sta_info.sta_mac[0], sta_info.sta_mac[1],
                       sta_info.sta_mac[2], sta_info.sta_mac[3],
                       sta_info.sta_mac[4], sta_info.sta_mac[5],
                       inet_ntoa(addr));
            } else {
                printf("  STA[%d]: %02x:%02x:%02x:%02x:%02x:%02x  IP=pending\r\n", i,
                       sta_info.sta_mac[0], sta_info.sta_mac[1],
                       sta_info.sta_mac[2], sta_info.sta_mac[3],
                       sta_info.sta_mac[4], sta_info.sta_mac[5]);
            }
        }
    }
    return 0;
}
SHELL_CMD_EXPORT_ALIAS(cmd_wifi_status, wifi_status, Print SoftAP status);
