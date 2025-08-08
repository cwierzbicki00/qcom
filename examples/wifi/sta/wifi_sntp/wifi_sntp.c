
#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include <sys/socket.h>
#include <lwip/api.h>
#include <lwip/arch.h>
#include <lwip/opt.h>
#include <lwip/inet.h>
#include <lwip/errno.h>
#include <netdb.h>
#include "sntp.h"
#include "shell.h"
#include "utils_getopt.h"
#include "time.h"

#define WIFI_SNTP_SERVER_1 "0.pool.ntp.org"
#define WIFI_SNTP_SERVER_2 "time.google.com"
#define WIFI_SNTP_SERVER_3 "us.pool.ntp.org"
#define WIFI_SNTP_INTERVAL 5

static uint32_t g_sntp_interval_ms = 60*1000;
static uint32_t g_sntp_retry_ms = 5*1000;
static bool g_sntp_successed = 0;

static int __sntp_gettime(int timezone, struct timespec * tp)
{
    int zone = (int)timezone;

    if (tp == NULL) {
        return -1;
    }
    if (zone >= -12 && zone <= 14)
        zone = zone*3600;
    else {
        int zone_h = zone/100;
        int zone_m = zone%100;
        zone = zone_h * 3600 + zone_m * 60;
    }

    clock_gettime(CLOCK_REALTIME, tp);

    tp->tv_sec = tp->tv_sec + zone;

    return 0;
}

static void __wifi_sntp_init(int argc, char **argv)
{
    int interval_ms;

    if (argc > 1) {
        interval_ms = atoi(argv[1]);
        if (interval_ms > 10*1000) {
            g_sntp_interval_ms = interval_ms;
        } else {
            printf("interval_ms %d is too short\r\n", interval_ms);
            return -1;
        }
    }
    sntp_setoperatingmode(SNTP_OPMODE_POLL);
    sntp_setservername(0, WIFI_SNTP_SERVER_1);
    sntp_setservername(1, WIFI_SNTP_SERVER_2);
    sntp_setservername(2, WIFI_SNTP_SERVER_3);
    sntp_init();
    printf("SNTP start\r\n");
}

static void __wifi_sntp_gettime(int argc, char **argv)
{
    int timezone = 8;
    struct timespec tp = {0};

    if (argc > 1) {
        timezone = atoi(argv[1]);
    }
    __sntp_gettime(timezone, &tp);

    printf("SNTP gettime %s\r\n", ctime(&tp.tv_sec));
}

static void __wifi_sntp_stop(int argc, char **argv)
{
    sntp_stop();
    printf("SNTP stop\r\n");
}

void sntp_set_time(uint32_t unix_time_sec, uint32_t unix_time_us)
{
    struct timespec tp = {
        .tv_sec = unix_time_sec,
        .tv_nsec = unix_time_us * 1000,
    };

    g_sntp_successed = 1;
    clock_settime(CLOCK_REALTIME, &tp);
    printf("SNTP time sync successful\r\n");
}

uint32_t sntp_update_interval(void)
{
    return (g_sntp_successed) ? g_sntp_interval_ms : g_sntp_retry_ms;
}

#ifdef CONFIG_SHELL
#include <shell.h>
SHELL_CMD_EXPORT_ALIAS(__wifi_sntp_init, sntp_init, wifi sntp test);
SHELL_CMD_EXPORT_ALIAS(__wifi_sntp_gettime, sntp_gettime, sntp test);
SHELL_CMD_EXPORT_ALIAS(__wifi_sntp_stop, sntp_stop, sntp test);
#endif
