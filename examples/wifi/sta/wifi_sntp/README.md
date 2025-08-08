# wifi6 sntp case

## Support CHIP

|      CHIP        | Remark |
|:----------------:|:------:|
|qcc743/qcc744       |        |

## Compile

- qcc743/qcc744

```bash
make CHIP=qcc743 BOARD=qcc743dk
```

## Flash

```bash
make flash COMX=xxx ## xxx is your com name
```

## How use wifi sntp test

example
```             
              ))    (                            ____________
    \|/      )))    ((   \|/  \|/               |            |
     |______           ___|____|___             |  Host pc   |
    |       |         |            |            |____________|
    | qcc743|        |   Router   |#<-------->#/            /#
    |_______|         |____________|           /____________/#   
   192.168.31.144         192.168.31.1              192.168.31.2    
                      SSID: QCC74x_TEST
                    Password:12345678
```

### sntp test

On qcc743 board, using <wifi_sta_connect> command connect your WiFi router

```bash
qxx74x />wifi_sta_connect QCC74x_TEST 12345678

```

Waiting to receive the got IP log

```bash
qxx74x />
wl1: MAC=c4:cc:37:a0:02:be ip=192.168.31.144/24 UP,CONNECTED

```

After NTP success, obtain NTP time

```bash
qxx74x /> sntp_init
qxx74x /> sntp_gettime 8

SNTP gettime Wed Jun 25 13:57:41 2025

```

