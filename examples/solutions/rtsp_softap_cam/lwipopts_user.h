/*
 * lwIP options for rtsp_softap_cam.
 * Based on examples/wifi/ap_sta_bridge/lwipopts_user.h.
 */
#ifndef LWIP_HDR_LWIPOPTS_H__
#define LWIP_HDR_LWIPOPTS_H__

#define LWIP_TCPIP_CORE_LOCKING       1
#define IP_DEFAULT_TTL          64

#if defined(CONFIG_HIGH_PERFORMANCE) && (CONFIG_HIGH_PERFORMANCE == 1)
#define LWIP_ASSERT_CORE_LOCKED()
#define LWIP_NOASSERT
#else
#if LWIP_TCPIP_CORE_LOCKING
#define LWIP_ASSERT_CORE_LOCKED()       do { if(lock_tcpip_core) { LWIP_ASSERT("api must call with lwip core lock", !sys_is_inside_interrupt() && sys_mutex_is_locked(&lock_tcpip_core)); } } while(0)
#else
#define LWIP_ASSERT_CORE_LOCKED()       do { LWIP_ASSERT("api must call inside lwip task", !sys_is_inside_interrupt() && sys_current_is_tcpip()); } while(0)
#endif
#endif

#define LWIP_NETIF_API                1
#define LWIP_DEBUG                    1
#define LWIP_STATS_DISPLAY            1
#define SOCKETS_DEBUG                 LWIP_DBG_OFF
#define DHCP_DEBUG                    LWIP_DBG_OFF
#define ICMP_DEBUG                    LWIP_DBG_OFF
#define ETHARP_DEBUG                  LWIP_DBG_OFF
#define LWIP_MULTICAST_PING           1
#define LWIP_BROADCAST_PING           1

#define TCPIP_MBOX_SIZE               64
#define TCPIP_THREAD_STACKSIZE        1024
#define TCPIP_THREAD_PRIO             28

#define DEFAULT_THREAD_STACKSIZE      1024
#define DEFAULT_THREAD_PRIO           1
#define DEFAULT_RAW_RECVMBOX_SIZE     32
#define DEFAULT_UDP_RECVMBOX_SIZE     64
#define DEFAULT_TCP_RECVMBOX_SIZE     64
#define DEFAULT_ACCEPTMBOX_SIZE       32

#define LWIP_NETIF_LOOPBACK           1
#define LWIP_HAVE_LOOPIF              1
#define LWIP_LOOPBACK_MAX_PBUFS       0

#define LWIP_CHKSUM_ALGORITHM         3
#define LWIP_TCPIP_CORE_LOCKING_INPUT 1

#define PBUF_LINK_ENCAPSULATION_HLEN  388

#define IP_REASS_MAX_PBUFS            (24)

#define MEMP_NUM_NETBUF               32
#define MEMP_NUM_NETCONN              16
#define MEMP_NUM_UDP_PCB              16
#define MEMP_NUM_REASSDATA            LWIP_MIN((IP_REASS_MAX_PBUFS), 5)

#define MAC_TXQ_DEPTH                 32
#define MAC_RXQ_DEPTH                 12

#define TCP_MSS                       1460
#define TCP_WND                       (MAC_RXQ_DEPTH * TCP_MSS)
#define TCP_SND_BUF                   (4 * MAC_TXQ_DEPTH * TCP_MSS)

#define TCP_QUEUE_OOSEQ               1

#define MEMP_NUM_TCP_SEG              ((4 * TCP_SND_BUF) / TCP_MSS)
#define MEMP_NUM_PBUF                 (TCP_SND_BUF / TCP_MSS)

#define PBUF_POOL_SIZE                0
#define LWIP_WND_SCALE                1
#define TCP_RCV_SCALE                 2
#define TCP_SNDLOWAT                  LWIP_MIN(LWIP_MAX(((TCP_SND_BUF)/4),               \
                                                        (2 * TCP_MSS) + 1),              \
                                               (TCP_SND_BUF) - 1)

#define MEM_MIN_TCP                   (2048 + MEMP_NUM_PBUF * (100 + PBUF_LINK_ENCAPSULATION_HLEN + 1514))
#if NX_TG
#define MEM_MIN_TG                    16384
#else
#define MEM_MIN_TG                    0
#endif
#if MEM_MIN_TCP > MEM_MIN_TG
#define MEM_MIN                       MEM_MIN_TCP
#else
#define MEM_MIN                       MEM_MIN_TG
#endif
#define MEM_ALIGNMENT                 4

// heap size upper limit
#if MEM_MIN > (64 * 1024)
#undef MEM_MIN
#define MEM_MIN (64 * 1024)
#endif

#define LWIP_HEAP_SIZE  (60 * 1024)

#ifdef LWIP_HEAP_SIZE
#define MEM_SIZE LWIP_HEAP_SIZE
#else
#if MEM_MIN > 8192
#define MEM_SIZE                      MEM_MIN
#else
#define MEM_SIZE                      8192
#endif
#endif

#define LWIP_HOOK_FILENAME            "lwiphooks.h"

#define LWIP_RAW                      1
#define LWIP_MULTICAST_TX_OPTIONS     1

#define LWIP_TIMEVAL_PRIVATE          0

#ifndef PLATFORM_PRIVDE_ERRNO
#define LWIP_PROVIDE_ERRNO            1
#else
#define LWIP_ERRNO_STDINCLUDE         1
#define LWIP_SOCKET_SET_ERRNO         1
#endif

#define LWIP_DHCP                     1
#define LWIP_DNS                      1
#define LWIP_IGMP                     0
#define LWIP_SO_RCVTIMEO              1
#define LWIP_SO_SNDTIMEO              1
#define SO_REUSE                      1
#define LWIP_TCP_KEEPALIVE            1
#define LWIP_SO_RCVBUF                1

#define MEMP_NUM_SYS_TIMEOUT          (LWIP_NUM_SYS_TIMEOUT_INTERNAL + 8 + 3)
extern int * __errno(void);
#define errno (*__errno())
#define LWIP_NETIF_STATUS_CALLBACK 1
#define LWIP_NETIF_API 1

#define LWIP_NUM_NETIF_CLIENT_DATA  1

#define ETHARP_SUPPORT_STATIC_ENTRIES   1

#define LWIP_SUPPORT_CUSTOM_PBUF        1
#define LWIP_NETIF_TX_SINGLE_PBUF       1
#define LWIP_RAND() ((u32_t)rand())

#endif /* LWIP_HDR_LWIPOPTS_H__ */
