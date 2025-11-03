
#include <stdbool.h>
#include <stdio.h>
#include <string.h>
#include "bitset.h"

#include "spi.h"
#include "at_host.h"

#define APP_OTCLI_TEST_CHANNEL  15
#define APP_OTCLI_TEST_PANID    0xabcd
#define APP_OTCLI_TEST_SADDR    0xabab
#define APP_OTCLI_TEST_LADDR    0x1234567812345678

enum
{
    kFlagXOn        = 0x11,
    kFlagXOff       = 0x13,
    kFlagSequence   = 0x7e, ///< HDLC Flag value
    kEscapeSequence = 0x7d, ///< HDLC Escape value
    kFlagSpecial    = 0xf8,
};
#define NEED_ESCAPE(abyte) (((abyte) == kFlagXOn) || ((abyte) == kFlagXOff)  || ((abyte) == kFlagSequence)  || ((abyte) == kEscapeSequence)  || ((abyte) == kFlagSpecial))

enum
{
    kInitFcs = 0xffff, ///< Initial FCS value.
    kGoodFcs = 0xf0b8, ///< Good FCS value.
    kFcsSize = 2,      ///< FCS size (number of bytes).
};

enum 
{
    kOtcli_Cmd_ver = 0,
    kOtcli_Cmd_reset = 1,
    kOtcli_Cmd_recv = 2,
    kOtcli_Cmd_send = 3,
    kOtcli_Cmd_sends = 4,
};

typedef struct {
    uint8_t cmd;
    uint8_t itvl;
    union {
        uint16_t repeat_cnt;
        uint16_t recv_time;
        uint16_t pkt_len;
        uint16_t send_duration;
    };
} app_otcli_test_cmd_t;

osMessageQueueId_t app_otcli_msg = NULL;
static uint8_t  app_otcli_tid = 1;
static int app_otcli_platform_reset_cnt = 0;
static int app_otcli_platform_reset_num = 0;

static int app_otcli_rcp_ver_cnt = 0;
static int app_otcli_rcp_ver_num = 0;

static uint8_t app_otcli_seq = 0;
static bool app_otcli_is_acked = false;
static const uint8_t app_otcli_send_pkt [] = {
    0x61, 0x98, 0x00, APP_OTCLI_TEST_PANID & 0xff, (APP_OTCLI_TEST_PANID >> 8) & 0xff, 
    APP_OTCLI_TEST_SADDR & 0xff, (APP_OTCLI_TEST_SADDR >> 8) & 0xff, 0x00, 0x00, 
};

static int app_otcli_pkt_send_num = 0;
static int app_otcli_pkt_acked_num = 0;
static uint32_t app_otcli_pkt_start_time = 0;
static uint32_t app_otcli_pkt_last_time = 0;
static int app_otcli_pkt_received_num = 0;
static int app_otcli_pkt_missed_num = 0;

static uint16_t spinel_update_fcs(uint16_t aFcs, uint8_t aByte)
{
    static const uint16_t sFcsTable[256] = {
        0x0000, 0x1189, 0x2312, 0x329b, 0x4624, 0x57ad, 0x6536, 0x74bf, 0x8c48, 0x9dc1, 0xaf5a, 0xbed3, 0xca6c, 0xdbe5,
        0xe97e, 0xf8f7, 0x1081, 0x0108, 0x3393, 0x221a, 0x56a5, 0x472c, 0x75b7, 0x643e, 0x9cc9, 0x8d40, 0xbfdb, 0xae52,
        0xdaed, 0xcb64, 0xf9ff, 0xe876, 0x2102, 0x308b, 0x0210, 0x1399, 0x6726, 0x76af, 0x4434, 0x55bd, 0xad4a, 0xbcc3,
        0x8e58, 0x9fd1, 0xeb6e, 0xfae7, 0xc87c, 0xd9f5, 0x3183, 0x200a, 0x1291, 0x0318, 0x77a7, 0x662e, 0x54b5, 0x453c,
        0xbdcb, 0xac42, 0x9ed9, 0x8f50, 0xfbef, 0xea66, 0xd8fd, 0xc974, 0x4204, 0x538d, 0x6116, 0x709f, 0x0420, 0x15a9,
        0x2732, 0x36bb, 0xce4c, 0xdfc5, 0xed5e, 0xfcd7, 0x8868, 0x99e1, 0xab7a, 0xbaf3, 0x5285, 0x430c, 0x7197, 0x601e,
        0x14a1, 0x0528, 0x37b3, 0x263a, 0xdecd, 0xcf44, 0xfddf, 0xec56, 0x98e9, 0x8960, 0xbbfb, 0xaa72, 0x6306, 0x728f,
        0x4014, 0x519d, 0x2522, 0x34ab, 0x0630, 0x17b9, 0xef4e, 0xfec7, 0xcc5c, 0xddd5, 0xa96a, 0xb8e3, 0x8a78, 0x9bf1,
        0x7387, 0x620e, 0x5095, 0x411c, 0x35a3, 0x242a, 0x16b1, 0x0738, 0xffcf, 0xee46, 0xdcdd, 0xcd54, 0xb9eb, 0xa862,
        0x9af9, 0x8b70, 0x8408, 0x9581, 0xa71a, 0xb693, 0xc22c, 0xd3a5, 0xe13e, 0xf0b7, 0x0840, 0x19c9, 0x2b52, 0x3adb,
        0x4e64, 0x5fed, 0x6d76, 0x7cff, 0x9489, 0x8500, 0xb79b, 0xa612, 0xd2ad, 0xc324, 0xf1bf, 0xe036, 0x18c1, 0x0948,
        0x3bd3, 0x2a5a, 0x5ee5, 0x4f6c, 0x7df7, 0x6c7e, 0xa50a, 0xb483, 0x8618, 0x9791, 0xe32e, 0xf2a7, 0xc03c, 0xd1b5,
        0x2942, 0x38cb, 0x0a50, 0x1bd9, 0x6f66, 0x7eef, 0x4c74, 0x5dfd, 0xb58b, 0xa402, 0x9699, 0x8710, 0xf3af, 0xe226,
        0xd0bd, 0xc134, 0x39c3, 0x284a, 0x1ad1, 0x0b58, 0x7fe7, 0x6e6e, 0x5cf5, 0x4d7c, 0xc60c, 0xd785, 0xe51e, 0xf497,
        0x8028, 0x91a1, 0xa33a, 0xb2b3, 0x4a44, 0x5bcd, 0x6956, 0x78df, 0x0c60, 0x1de9, 0x2f72, 0x3efb, 0xd68d, 0xc704,
        0xf59f, 0xe416, 0x90a9, 0x8120, 0xb3bb, 0xa232, 0x5ac5, 0x4b4c, 0x79d7, 0x685e, 0x1ce1, 0x0d68, 0x3ff3, 0x2e7a,
        0xe70e, 0xf687, 0xc41c, 0xd595, 0xa12a, 0xb0a3, 0x8238, 0x93b1, 0x6b46, 0x7acf, 0x4854, 0x59dd, 0x2d62, 0x3ceb,
        0x0e70, 0x1ff9, 0xf78f, 0xe606, 0xd49d, 0xc514, 0xb1ab, 0xa022, 0x92b9, 0x8330, 0x7bc7, 0x6a4e, 0x58d5, 0x495c,
        0x3de3, 0x2c6a, 0x1ef1, 0x0f78};
    return (aFcs >> 8) ^ sFcsTable[(aFcs ^ aByte) & 0xff];
}

static uint8_t * spinel_append_fcs(uint8_t *aData, uint8_t fcs[2]) 
{
    if (NEED_ESCAPE(fcs[0])) {
        aData[0] = kEscapeSequence;
        aData[1] = fcs[0] ^ 0x20;
        aData ++;
    }
    else {
        aData[0] = fcs[0];
    }
    aData ++;

    if (NEED_ESCAPE(fcs[1])) {
        aData[0] = kEscapeSequence;
        aData[1] = fcs[1] ^ 0x20;
        aData ++;
    }
    else {
        aData[0] = fcs[1];
    }
    aData ++;

    return aData;
}

static int spinel_verify_and_decode(uint8_t *aData, int16_t aLength)
{
    int                     decodedLength = 0;
    uint16_t                fcs = kGoodFcs;
    int                     i = 0, j = 0;

    for (i = 0; i < aLength; i ++, j++) 
    {
        switch (aData[i])
        {
        case kFlagSequence:

            if (j == 0 && fcs == kGoodFcs) {
                fcs = kInitFcs;
            }
            else if ((j - decodedLength) >= kFcsSize && fcs == kGoodFcs) {
                decodedLength = j + 1;
                fcs = kInitFcs;
            }
            else if (kInitFcs != fcs) {
                printf ("spinel_verify_and_decode error %d %d %d %d\r\n", i, j, decodedLength, aLength);
                return decodedLength;
            }

            aData[j] = aData[i];
            break;

        case kEscapeSequence:
            i ++;

            aData[j] = aData[i] ^ 0x20;
            fcs = spinel_update_fcs(fcs, aData[j]);
            break;

        default:
            aData[j] = aData[i];
            fcs = spinel_update_fcs(fcs, aData[j]);

            break;
        }
    }

    return decodedLength;
}

static int spinel_packed_uint_decode(const uint8_t *bytes, int len, unsigned int *value_ptr)
{
    int             iret   = 0;
    unsigned int    value = 0;
    unsigned int    i = 0;

    do
    {
        if ((len < sizeof(uint8_t)) || (i >= sizeof(unsigned int) * 8))
        {
            iret = -1;
            break;
        }

        value |= (unsigned int)(bytes[0] & 0x7F) << i;
        i += 7;
        iret += sizeof(uint8_t);
        bytes += sizeof(uint8_t);
        len -= sizeof(uint8_t);
    } while ((bytes[-1] & 0x80) == 0x80);

    if ((iret > 0) && (value_ptr != NULL))
    {
        *value_ptr = value;
    }

    return iret;
}

static int spinel_packed_uint_size(unsigned int value)
{
    int iret;

    if (value < (1 << 7))
    {
        iret = 1;
    }
    else if (value < (1 << 14))
    {
        iret = 2;
    }
    else if (value < (1 << 21))
    {
        iret = 3;
    }
    else if (value < (1 << 28))
    {
        iret = 4;
    }
    else
    {
        iret = 5;
    }

    return iret;
}

static int spinel_packed_uint_encode(uint8_t *bytes, int len, unsigned int value)
{
    const int encoded_size = spinel_packed_uint_size(value);

    if (len >= encoded_size)
    {
        int i;

        for (i = 0; i != encoded_size - 1; ++i)
        {
            *bytes++ = (value & 0x7F) | 0x80;
            value    = (value >> 7);
        }

        *bytes++ = (value & 0x7F);
    }

    return encoded_size;
}


static int16_t spinel_handle_received(uint8_t *aData, int16_t aLength) 
{
    uint8_t * pData = aData;

    uint16_t pkt_len = pData[0] | ((uint16_t)pData[1] << 8), len;
    uint8_t  seq;

    pData += 2;
    if (pkt_len > aLength - 2) {
        return -1;
    }

    if (pkt_len < sizeof(app_otcli_send_pkt) + 4) {
        return -1;
    }

    seq = pData[2];
    pData[2] = 0;
    if (0 == memcmp(app_otcli_send_pkt, pData, sizeof(app_otcli_send_pkt))) {

        if (0 == app_otcli_pkt_start_time) {
            app_otcli_pkt_received_num = 1;
            app_otcli_pkt_missed_num = 0;
            app_otcli_pkt_start_time = osKernelGetTickCount();
        }
        else {
            if (seq == (app_otcli_seq + 1)) {
                app_otcli_pkt_received_num ++;
            }
            else {
                app_otcli_pkt_missed_num += (uint8_t)(seq - app_otcli_seq);
            }
        }
        app_otcli_pkt_last_time = osKernelGetTickCount();
        app_otcli_seq = seq;

        printf ("received %d bytes, seq %d. rx %d packets in total %d packets within %ld seconds\r\n", pkt_len, seq, 
            app_otcli_pkt_received_num, app_otcli_pkt_received_num + app_otcli_pkt_missed_num,
            (app_otcli_pkt_last_time - app_otcli_pkt_start_time) / 1000);
    }

    pData += pkt_len;
    pData += 4;
    len = pData[0] | ((uint16_t)pData[1] << 8);
    pData += (len + 2);
    len = pData[0] | ((uint16_t)pData[1] << 8);
    pData += (len + 2);
    len = pData[0] | ((uint16_t)pData[1] << 8);
    pData += (len + 2);

    return pData - aData;
}


static int spinel_cmd_property_value_get(uint8_t *aData, int16_t aLength) 
{
    unsigned int    id = 0;
    int             iret;
    int16_t         data_len = 0;
    uint64_t        laddr;
    uint16_t        saddr;

    iret = spinel_packed_uint_decode(aData, aLength - data_len, &id);
    data_len += iret;

    switch (id) {
    case 2:
        data_len -= (strlen((char *)aData + data_len) + 1);

        if (app_otcli_rcp_ver_num > 1) {
            app_otcli_rcp_ver_cnt ++;
            printf ("rcp version: %s. repeat test: %d/%d\r\n", aData, app_otcli_rcp_ver_cnt, app_otcli_rcp_ver_num);
            if (app_otcli_rcp_ver_cnt >= app_otcli_rcp_ver_num) {
                app_otcli_rcp_ver_cnt = app_otcli_rcp_ver_num = 0;
            }
        }
        else {
            printf ("rcp version: %s\r\n", aData);
        }

        break;
    case 0x20:
        printf ("phy is %s\r\n", *(aData + data_len) ? "enabled": "disabled");
        data_len += 1;
        break;
    case 0x21:
        printf ("phy channel: %d\r\n", *(aData + data_len));
        data_len += 1;
        break;
    case 0x34:
        memcpy(&laddr, aData + data_len, sizeof(laddr));
        printf ("long address: %llx\r\n", laddr);
        data_len += sizeof(laddr);
        break;
    case 0x35:
        memcpy(&saddr, aData + data_len, sizeof(saddr));
        printf ("short addr: %04x\r\n", saddr);
        data_len += sizeof(saddr);
        break;
    case 0x36:
        memcpy(&saddr, aData + data_len, sizeof(saddr));
        printf ("pan id: %04x\r\n", saddr);
        data_len += sizeof(saddr);
        break;
    case 0x37:
        printf ("raw stream is %s\r\n", *(aData + data_len) ? "enabled": "disabled");
        data_len += 1;
        break;
    default:
        return 1;
    }

    return data_len;
}

static int spinel_cmd_property_value_is(uint8_t *aData, int16_t aLength) 
{
    unsigned int    id = 0;
    unsigned int    value = 0;
    int             iret;
    int16_t         data_len = 0;
    uint64_t        laddr;
    uint16_t        saddr;
    int             i = 0;
    uint8_t         ack_seq;
    iret = spinel_packed_uint_decode(aData, aLength - data_len, &id);
    data_len += iret;

    // printf ("value_is: %02x\r\n", id);

    switch (id) {
    case 0:
        iret = spinel_packed_uint_decode(aData + data_len, aLength - data_len, &value);
        data_len += iret;

        if (0 == value) {

            for (i = 0; i < aLength; i ++) {
                if (aData[data_len + i] == kFlagSequence) {
                    break;
                }
            }

            if (i <  aLength) {
                if (aData[data_len + 2] == 0x5) {
                    ack_seq = aData[data_len + 6];
                    app_otcli_is_acked = true;

                    if ((ack_seq + 1) == app_otcli_seq) {
                        app_otcli_pkt_acked_num ++;
                    }
                    printf ("sent: %02x acked\r\n", ack_seq);
                }

                // printf ("pkt %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x\r\n", 
                //     aData[data_len + 0], aData[data_len + 1], 
                //     aData[data_len + 2], aData[data_len + 3], aData[data_len + 4], aData[data_len + 5], aData[data_len + 6], 
                //     aData[data_len + 7], aData[data_len + 8], aData[data_len + 9], aData[data_len + 10], aData[data_len + 11]);

                data_len = i;
            }
            else {
                data_len = aLength;
            }
        } else if (9 == value) {
            printf ("error: comand parse error %u\r\n", value);
        } else if (17 == value) {
            printf ("sent: no ack\r\n");
            data_len += 2;
            app_otcli_is_acked = true;
        }
        else if (112 <= value && value <= (112 + 8)) {
            static const char reset_reason[][12] = {
                "power on",
                "external",
                "software",
                "fault",
                "crash",
                "assert",
                "other",
                "unknown",
                "watchdog"
            };

            if (app_otcli_platform_reset_num > 1) {
                app_otcli_platform_reset_cnt ++;
                printf ("reset, and reason: %s. repeat test: %d/%d\r\n", reset_reason[value - 112], 
                    app_otcli_platform_reset_cnt, app_otcli_platform_reset_num);
                if (app_otcli_platform_reset_cnt >= app_otcli_platform_reset_num) {
                    app_otcli_platform_reset_cnt = app_otcli_platform_reset_num = 0;
                }
            }
            else {
                printf ("reset, and reason: %s\r\n", reset_reason[value - 112]);
            }
        }
        else {
            printf ("property value: last status is %u\r\n", value);
        }
        break;
    case 2:
        data_len += (strlen((char *)aData + data_len) + 1);

        if (app_otcli_rcp_ver_num > 1) {
            app_otcli_rcp_ver_cnt ++;
            printf ("rcp version: %s. repeat test: %d/%d\r\n", aData, app_otcli_rcp_ver_cnt, app_otcli_rcp_ver_num);
            if (app_otcli_rcp_ver_cnt >= app_otcli_rcp_ver_num) {
                app_otcli_rcp_ver_cnt = app_otcli_rcp_ver_num = 0;
            }
        }
        else {
            printf ("rcp version: %s\r\n", aData);
        }

        break;
    case 0x20:
        printf ("phy is %s\r\n", *(aData + data_len) ? "enabled": "disabled");
        data_len += 1;
        break;
    case 0x21:
        printf ("phy channel: %d\r\n", *(aData + data_len));
        data_len += 1;
        break;
    case 0x34:
        memcpy(&laddr, aData + data_len, sizeof(laddr));
        printf ("long address: %llx\r\n", laddr);
        data_len += sizeof(laddr);
        break;
    case 0x35:
        memcpy(&saddr, aData + data_len, sizeof(saddr));
        printf ("short addr: %04x\r\n", saddr);
        data_len += sizeof(saddr);
        break;
    case 0x36:
        memcpy(&saddr, aData + data_len, sizeof(saddr));
        printf ("pan id: %04x\r\n", saddr);
        data_len += sizeof(saddr);
        break;
    case 0x37:
        printf ("raw stream is %s\r\n", *(aData + data_len) ? "enabled": "disabled");
        data_len += 1;
        break;
    case 0x70:
        for (i = 3; i < aLength; i ++) {
            if (aData[i + data_len] == kFlagSequence) {
                aData[i - 2 + data_len] = '\0';
                data_len += (i + 2);
                break;
            }
        }

        if (i >= aLength) {
            data_len = aLength;
        }
        printf ("debug %s\r\n", aData);
        break;
    case 0x71:

        data_len += spinel_handle_received(aData + data_len, aLength);
        break;
    default:
        /* 0x38: SPINEL_PROP_MAC_PROMISCUOUS_MODE*/
        /* 0x70: SPINEL_PROP_STREAM_DEBUG */
        printf ("property value: unknown key %u\r\n", id);
        return 1;
    }

    return data_len;
}

typedef int (*spinel_cmd_handler_t)(uint8_t *aData, int16_t aLength);
typedef struct {
    unsigned int            cmd;
    spinel_cmd_handler_t    handler;
} spinel_cmd_handler_table_t;
static spinel_cmd_handler_table_t spinel_cmd_handler_table[] =
{
    {.cmd = 2, .handler = spinel_cmd_property_value_get},
    {.cmd = 6, .handler = spinel_cmd_property_value_is},
};

static void spinel_parse(uint8_t *aData, int16_t aLength) 
{
    unsigned int    cmd = 0;
    int             iret;
    int             i = 0;
    uint8_t         *pEnd = aData + aLength;

    while (aData < pEnd) {
        /** remove kFlagSequence and FCS */
        aData ++;
        aData ++;

        iret = spinel_packed_uint_decode(aData, aLength, &cmd);
        aData += iret;


        iret = 0;
        if (cmd <= 63) {
            for (i = 0; i < sizeof(spinel_cmd_handler_table)/sizeof(spinel_cmd_handler_table[0]); i ++) {
                if (spinel_cmd_handler_table[i].cmd == cmd) {
                    iret = spinel_cmd_handler_table[i].handler(aData, pEnd - aData);
                    break;
                }
            }
            // if (i >= sizeof(spinel_cmd_handler_table)/sizeof(spinel_cmd_handler_table[0])) {
            //     printf ("unsupported core command %d\r\n", cmd);
            // }
        }
        // else {
        //     printf ("unsupported command %d\r\n", cmd);
        // }

        if (iret > 0) {
            aData += (iret + kFcsSize + 1);
        }
        else {
            while (aData < pEnd) {
                if (aData[0] == kFlagSequence) {
                    aData ++;
                    break;
                }
                aData ++;
            }
        }
    }
}

static uint8_t * spinel_property_get_cmd(uint8_t tid, uint8_t *aData, uint32_t property_id) 
{
    uint16_t fcs = 0, len;
    uint8_t *p = aData;

    fcs = kInitFcs;
    *p++ = kFlagSequence;
    *p = (0x80 | (tid & 0x0f));
    fcs = spinel_update_fcs(fcs, *p++);
    *p = 2;
    fcs = spinel_update_fcs(fcs, *p++);
    len = spinel_packed_uint_encode(p, 4, property_id);
    for (int j = 0; j < len; j ++) {
        fcs = spinel_update_fcs(fcs, p[j]);
    }
    p += len;
    fcs ^= 0xffff;
    p = spinel_append_fcs(p, (uint8_t *)&fcs);
    *p++ = kFlagSequence;

    return p;
}

static uint8_t * spinel_property_set_cmd(uint8_t tid, uint8_t *aData, uint32_t property_id, uint8_t *value, int value_len) 
{
    uint16_t fcs = 0, len;
    uint8_t *p = aData;
    int j;

    fcs = kInitFcs;
    *p++ = kFlagSequence;
    *p = (0x80 | (tid & 0x0f));
    fcs = spinel_update_fcs(fcs, *p++);
    *p = 3;
    fcs = spinel_update_fcs(fcs, *p++);
    len = spinel_packed_uint_encode(p, 4, property_id);
    memcpy(p + len, value, value_len);
    for (j = 0; j < value_len + len; j ++) {
        fcs = spinel_update_fcs(fcs, p[j]);
    }
    p += (len + value_len);
    fcs ^= 0xffff;
    p = spinel_append_fcs(p, (uint8_t *)&fcs);
    *p++ = kFlagSequence;

    return p;
}

static uint8_t * spinel_property_send_cmd(uint8_t tid, uint8_t *aData, int pkt_len) 
{
    uint16_t fcs = 0;
    uint8_t *p = aData, *p0;
    int j;
    uint32_t ticks;

    fcs = kInitFcs;
    *p++ = kFlagSequence;
    *p++ = (0x80 | (tid & 0x0f));
    *p++ = 3;

    p += spinel_packed_uint_encode(p, 4, 0x71);

    *p++ = pkt_len & 0xff;
    *p++ = (pkt_len & 0xff00) >> 8;

    for (j = 0; j < pkt_len; j ++) {
        *(p + j) = j + 1;
    }
    memcpy(p, app_otcli_send_pkt, sizeof(app_otcli_send_pkt));
    *(p + 2) = app_otcli_seq++;
    ticks = osKernelGetTickCount();
    memcpy(p + sizeof(app_otcli_send_pkt), &ticks, sizeof(ticks));
    p += pkt_len;

    memset(p, 0, 16);
    *p = APP_OTCLI_TEST_CHANNEL;
    *(p + 1) = 4;
    *(p + 2) = 15;
    *(p + 3) = 1;
    p += 16;

    p0 = aData + 1;
    while (p0 < p) {
        fcs = spinel_update_fcs(fcs, *p0);

        if (NEED_ESCAPE(*p0)) {
            memmove(p0 + 1, p0, p - p0);

            p0[1] = p0[0] ^ 0x20;
            p0[0] = kEscapeSequence;
            p ++;
            p0 ++;
        }

        p0 ++;
    }

    fcs ^= 0xffff;
    p = spinel_append_fcs(p, (uint8_t *)&fcs);
    *p++ = kFlagSequence;

    return p;
}


static void app_otcli_handle_platform_reset(int reset_cnt) 
{
    struct spi_msg_control ctrl;
    struct spi_msg m = {0};
    uint8_t traffic_type = SPI_MSG_CTRL_TRAFFIC_OT;
    uint8_t data[16], *p;
    uint16_t fcs = 0;

    app_otcli_platform_reset_num = reset_cnt;
    app_otcli_platform_reset_cnt = 0;

    for (int i = 0; i < reset_cnt; i ++) {

        SPI_MSG_CONTROL_INIT(ctrl, SPI_MSG_CTRL_TRAFFIC_TYPE,
            SPI_MSG_CTRL_TRAFFIC_TYPE_LEN, &traffic_type);
        SPI_MSG_INIT(m, SPI_MSG_OP_DATA, &ctrl, 0);
        m.data = data;

        p = data;
        fcs = kInitFcs;
        *p++ = kFlagSequence;
        *p = 0x80;
        fcs = spinel_update_fcs(fcs, *p++);
        *p = 1;
        fcs = spinel_update_fcs(fcs, *p++);
        fcs ^= 0xffff;
        p = spinel_append_fcs(p, (uint8_t *)&fcs);
        *p++ = kFlagSequence;

        m.data_len = (uint32_t)(p - data);

        spi_write(&m, 0);

        if (reset_cnt) {
            osDelay(pdMS_TO_TICKS(1000));
        }
    }
}

static void app_otcli_handle_rcp_version(int ver_cnt) 
{
    struct spi_msg_control ctrl;
    struct spi_msg m = {0};
    uint8_t traffic_type = SPI_MSG_CTRL_TRAFFIC_OT;
    uint8_t data[16], *p;

    app_otcli_rcp_ver_cnt = 0;
    app_otcli_rcp_ver_num = ver_cnt;

    for (int i = 0; i < ver_cnt; i ++) {

        SPI_MSG_CONTROL_INIT(ctrl, SPI_MSG_CTRL_TRAFFIC_TYPE,
            SPI_MSG_CTRL_TRAFFIC_TYPE_LEN, &traffic_type);
        SPI_MSG_INIT(m, SPI_MSG_OP_DATA, &ctrl, 0);
        m.data = data;

        p = spinel_property_get_cmd(app_otcli_tid, data, 2);

        m.data_len = (uint32_t)(p - data);

        if (spi_write(&m, 0) < 0) {
            printf ("app_otcli_rcp_version failed %d\r\n", i);
        }

        if (ver_cnt) {
            osDelay(pdMS_TO_TICKS(200));
        }
    }
}

static void app_otcli_handle_recv(int time_s) 
{
    struct spi_msg_control ctrl;
    struct spi_msg m = {0};
    uint8_t traffic_type = SPI_MSG_CTRL_TRAFFIC_OT;
    uint8_t data[128], *p;
    uint8_t phy_chn = APP_OTCLI_TEST_CHANNEL;
    uint64_t laddr = APP_OTCLI_TEST_LADDR;
    uint16_t saddr = APP_OTCLI_TEST_SADDR;
    uint16_t panid = APP_OTCLI_TEST_PANID;
    bool     phy_enable = 1;

    SPI_MSG_CONTROL_INIT(ctrl, SPI_MSG_CTRL_TRAFFIC_TYPE,
        SPI_MSG_CTRL_TRAFFIC_TYPE_LEN, &traffic_type);
    SPI_MSG_INIT(m, SPI_MSG_OP_DATA, &ctrl, 0);
    m.data = data;

    p = spinel_property_set_cmd(app_otcli_tid, data, 0x20, (uint8_t *)&phy_enable, sizeof(phy_enable));
    p = spinel_property_set_cmd(app_otcli_tid, p, 0x21, (uint8_t *)&phy_chn, sizeof(phy_chn));
    p = spinel_property_set_cmd(app_otcli_tid, p, 0x34, (uint8_t *)&laddr, sizeof(laddr));
    p = spinel_property_set_cmd(app_otcli_tid, p, 0x35, (uint8_t *)&saddr, sizeof(saddr));
    p = spinel_property_set_cmd(app_otcli_tid, p, 0x36, (uint8_t *)&panid, sizeof(panid));
    p = spinel_property_set_cmd(app_otcli_tid, p, 0x37, (uint8_t *)&phy_enable, sizeof(phy_enable));

    m.data_len = (uint32_t)(p - data);

    app_otcli_pkt_received_num = 0;
    app_otcli_pkt_missed_num = 0;
    app_otcli_pkt_start_time = 0;
    app_otcli_pkt_last_time = 0;

    spi_write(&m, 0);

    osDelay(time_s * 1000);

    phy_enable = 0;
    p = spinel_property_set_cmd(app_otcli_tid, data, 0x37, (uint8_t *)&phy_enable, sizeof(phy_enable));
    p = spinel_property_set_cmd(app_otcli_tid, p, 0x20, (uint8_t *)&phy_enable, sizeof(phy_enable));
    m.data_len = (uint32_t)(p - data);

    spi_write(&m, 0);
}

static void app_otcli_handle_send(int pkt_len)
{
    struct spi_msg_control ctrl;
    struct spi_msg m = {0};
    uint8_t traffic_type = SPI_MSG_CTRL_TRAFFIC_OT;
    uint8_t data[256], *p;
    bool     phy_enable = 1;

    SPI_MSG_CONTROL_INIT(ctrl, SPI_MSG_CTRL_TRAFFIC_TYPE,
        SPI_MSG_CTRL_TRAFFIC_TYPE_LEN, &traffic_type);
    SPI_MSG_INIT(m, SPI_MSG_OP_DATA, &ctrl, 0);
    m.data = data;

    p = spinel_property_set_cmd(app_otcli_tid, data, 0x20, (uint8_t *)&phy_enable, sizeof(phy_enable));
    m.data_len = (uint32_t)(p - data);

    spi_write(&m, 0);

    if (pkt_len + (uint32_t)(p - data) < sizeof(data) - 3) {
        p = spinel_property_send_cmd(app_otcli_tid, data, pkt_len);
        m.data_len = (uint32_t)(p - data);
        spi_write(&m, 0);

        osDelay(500);
    }
    else {
        printf ("packet len is over size for test data buffer.\n");
    }
    
    phy_enable = 0;
    p = spinel_property_set_cmd(app_otcli_tid, data, 0x20, (uint8_t *)&phy_enable, sizeof(phy_enable));
    m.data_len = (uint32_t)(p - data);

    spi_write(&m, 0);
}

static void app_otcli_handle_sends(int send_duration)
{
    struct spi_msg_control ctrl;
    struct spi_msg m = {0};
    uint8_t traffic_type = SPI_MSG_CTRL_TRAFFIC_OT;
    uint8_t data[256], *p;
    bool     phy_enable = 1;

    SPI_MSG_CONTROL_INIT(ctrl, SPI_MSG_CTRL_TRAFFIC_TYPE,
        SPI_MSG_CTRL_TRAFFIC_TYPE_LEN, &traffic_type);
    SPI_MSG_INIT(m, SPI_MSG_OP_DATA, &ctrl, 0);
    m.data = data;

    p = spinel_property_set_cmd(app_otcli_tid, data, 0x20, (uint8_t *)&phy_enable, sizeof(phy_enable));
    m.data_len = (uint32_t)(p - data);

    spi_write(&m, 0);

    uint32_t timeout_tick_count = osKernelGetTickCount() + send_duration * 1000;

    app_otcli_pkt_send_num = 0;
    app_otcli_pkt_acked_num = 0;
    app_otcli_is_acked = true;
    while (osKernelGetTickCount() < timeout_tick_count) {

        if (app_otcli_is_acked) {
            app_otcli_is_acked = false;
            p = spinel_property_send_cmd(app_otcli_tid, data, 127);
            m.data_len = (uint32_t)(p - data);
            spi_write(&m, 0);
            
            app_otcli_pkt_send_num ++;

            osDelay(10);
        }
    }

    osDelay(500);
    
    phy_enable = 0;
    p = spinel_property_set_cmd(app_otcli_tid, data, 0x20, (uint8_t *)&phy_enable, sizeof(phy_enable));
    m.data_len = (uint32_t)(p - data);

    spi_write(&m, 0);

    printf ("packet tx test done, tx %d packets, acked %d packets\r\n", app_otcli_pkt_send_num, app_otcli_pkt_acked_num);
}


static void __recv_task(void *arg) 
{
    int iret;
    uint8_t traffic_type = SPI_MSG_CTRL_TRAFFIC_OT;
    struct spi_msg_control ctrl;
    struct spi_msg m = {0};
    static uint8_t    recv_buffer[1024];

    SPI_MSG_CONTROL_INIT(ctrl, SPI_MSG_CTRL_TRAFFIC_TYPE,
        SPI_MSG_CTRL_TRAFFIC_TYPE_LEN, &traffic_type);
    SPI_MSG_INIT(m, SPI_MSG_OP_DATA, &ctrl, 0);

    while (true) {

        m.data = recv_buffer;
        m.data_len = sizeof(recv_buffer);
        if ((iret = spi_read(&m, portMAX_DELAY)) >= 0 && (iret = spinel_verify_and_decode(recv_buffer, iret))) {

            // uint8_t *output = recv_buffer;
            // for (int i = 0; i < (iret + 15) / 16; i ++) {
            //     printf ("%02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x\r\n",
            //         output[i * 16 + 0], output[i * 16 + 1], output[i * 16 + 2], output[i * 16 + 3],
            //         output[i * 16 + 4], output[i * 16 + 5], output[i * 16 + 6], output[i * 16 + 7],
            //         output[i * 16 + 8], output[i * 16 + 9], output[i * 16 + 10], output[i * 16 + 11],
            //         output[i * 16 + 12], output[i * 16 + 13], output[i * 16 + 14], output[i * 16 + 15]);
            // }

            spinel_parse(recv_buffer, iret);
        }
    }
}

static void __send_task(void *arg) 
{
    app_otcli_test_cmd_t test_cmd;

    while (true) {
        if (osOK == osMessageQueueGet(app_otcli_msg, &test_cmd, NULL, portMAX_DELAY)) {
            if (test_cmd.cmd == kOtcli_Cmd_ver) {
                app_otcli_handle_rcp_version(test_cmd.repeat_cnt);
            }
            else if (test_cmd.cmd == kOtcli_Cmd_reset) {
                app_otcli_handle_platform_reset(test_cmd.repeat_cnt);
            }
            else if (test_cmd.cmd == kOtcli_Cmd_recv) {
                app_otcli_handle_recv(test_cmd.recv_time);
            }
            else if (test_cmd.cmd == kOtcli_Cmd_send) {
                app_otcli_handle_send(test_cmd.pkt_len);
            }
            else if (test_cmd.cmd == kOtcli_Cmd_sends) {
                app_otcli_handle_sends(test_cmd.send_duration);
            }
        }
    }
}

int app_otcli_init(void) 
{
    int             iret;
    static const osThreadAttr_t _recv_task_attr = {
      .name = "ot_recv",
      .priority = (osPriority_t) osPriorityNormal,
      .stack_size = 2048
    };

    static const osThreadAttr_t _send_task_attr = {
      .name = "ot_send",
      .priority = (osPriority_t) osPriorityNormal,
      .stack_size = 2048
    };

    if ((iret = spi_bind(SPI_MSG_CTRL_TRAFFIC_OT, 16)) < 0) {
        return iret;
    }

    app_otcli_msg = osMessageQueueNew (1, sizeof(app_otcli_test_cmd_t), NULL);
    if (NULL == app_otcli_msg) {
        return -1;
    }

    if (NULL == osThreadNew(__recv_task, NULL, &_recv_task_attr)) {
        return -1;
    }

    if (NULL == osThreadNew(__send_task, NULL, &_send_task_attr)) {
        return -1;
    }

    return 0;
}

void app_otcli_platform_reset(int reset_cnt)  
{
    app_otcli_test_cmd_t test_cmd;
    test_cmd.cmd = kOtcli_Cmd_reset;
    test_cmd.repeat_cnt = reset_cnt;

    osMessageQueuePut(app_otcli_msg, &test_cmd, 0, 0);
}

void app_otcli_rcp_version(int ver_cnt) 
{
    app_otcli_test_cmd_t test_cmd;
    test_cmd.cmd = kOtcli_Cmd_ver;
    test_cmd.repeat_cnt = ver_cnt;

    osMessageQueuePut(app_otcli_msg, &test_cmd, 0, 0);
} 

void app_otcli_recv(int time_s) 
{
    app_otcli_test_cmd_t test_cmd;
    test_cmd.cmd = kOtcli_Cmd_recv;
    test_cmd.recv_time = time_s;

    osMessageQueuePut(app_otcli_msg, &test_cmd, 0, 0);
} 

void app_otcli_send(int pkt_len) 
{
    app_otcli_test_cmd_t test_cmd;
    test_cmd.cmd = kOtcli_Cmd_send;
    test_cmd.pkt_len = pkt_len;

    osMessageQueuePut(app_otcli_msg, &test_cmd, 0, 0);
}

void app_otcli_sends(int time_s) 
{
    app_otcli_test_cmd_t test_cmd;
    test_cmd.cmd = kOtcli_Cmd_sends;
    test_cmd.send_duration = time_s;

    osMessageQueuePut(app_otcli_msg, &test_cmd, 0, 0);
}
