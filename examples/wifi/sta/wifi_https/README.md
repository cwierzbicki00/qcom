# wifi6

## Support CHIP

|      CHIP        | Remark |
|:----------------:|:------:|
|qcc743/qcc744       |        |

## Compile

- qcc743/qcc744

```
make CHIP=qcc743 BOARD=qcc743dk
```

## Flash

```
make flash COMX=xxx ## xxx is your com name
```

## How use wifi https test

### https test get a page

On qcc743 board, using <wifi_sta_connect> command connect your WiFi router

```bash
qxx74x />wifi_sta_connect QCC74X_TEST 12345678
qcc74x />wifi_https_test https://www.gov.cn  

...

Http client GET request server success

...

Http client POST request server success
```

