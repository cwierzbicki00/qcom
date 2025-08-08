#ifndef _GT911_I2C_H
#define _GT911_I2C_H

#include "qcc74x_core.h"
#include "touch.h"

#define GT911_CUSTOM_CFG           (1)
#define GT911_I2C_SLAVE_ADDR       (0xBA >> 1) // #define GT911_ADDR (0xBA)   //(0x28)   /* slave addr */
#define GT911_READ_XY_REG          (0x4E81)    //(0x814E) /* Coordinate register */
#define GT911_CLEARBUF_REG         (0x4E81)    //(0x814E) /* Clear coordinate buffer */
#define GT911_POINT1_REG           (0x4F81)    //(0x814f) /* point 1 reg */
#define GT911_POINT2_REG           (0x5781)    //(0x8157) /* point 2 reg */
#define GT911_POINT3_REG           (0x5F81)    //(0x815f) /* point 3 reg */
#define GT911_POINT4_REG           (0x6781)    //(0x8167) /* point 4 reg */
#define GT911_POINT5_REG           (0x6F81)    //(0x816f) /* point 5 reg */
#define GT911_CONFIG_REG           (0x4780)    //(0x8047) /* Configuration parameters */
#define GT911_COMMAND_REG          (0x4080)    //(0x8040) /* Real-time command */
#define GT911_PRODUCT_ID_REG       (0x4081)    //(0x8140) /* Product ID */
#define GT911_VENDOR_ID_REG        (0x4A81)    //(0x814A) /* Module option information */
#define GT911_CONFIG_VERSION_REG   (0x4780)    //(0x8047) /* Configuration version */
#define GT911_CONFIG_CHECKSUM_REG  (0xFF80)    //(0x80FF) /* Configuration checksum */
#define GT911_FIRMWARE_VERSION_REG (0x4481)    //(0x8144) /* Firmware version */
#define GT911_X_RESOLUTION         (0x4681)    //(0x8146) /* X-axis resolution */
#define GT911_Y_RESOLUTION         (0x4881)    //(0x8148) /* Y-axis resolution */

#define GT911_PRODUCT_ID (0x00313139)

/* Maximum border values of the touchscreen pad that the chip can handle */
#if GT911_CUSTOM_CFG
#define GT911_MAX_WIDTH   ((uint16_t)320)
#define GT911_MAX_HEIGHT  ((uint16_t)480)
#define GT911_INT_TRIGGER (0)
#else
#define GT911_MAX_WIDTH   ((uint16_t)4096)
#define GT911_MAX_HEIGHT  ((uint16_t)4096)
#define GT911_INT_TRIGGER (1)
#endif

/* Max detectable simultaneous touch points */
#define GT911_I2C_MAX_POINT 5

/* GT911 configuration parameters - Write all at once */
static const uint8_t g_gt911_cfg_params[] = {

#if 1
    /*KDC CFG*/
    0x00, 0x40, 0x01, 0xE0, 0x01, 0x0A, 0x05, 0x00,
    0x01, 0x08, 0x28, 0x05, 0x50, 0x32, 0x03, 0x05,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x86, 0x26, 0x07, 0x17, 0x15,
    0x31, 0x0D, 0x00, 0x00, 0x01, 0xBA, 0x03, 0x1D,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x64, 0x32,
    0x00, 0x00, 0x00, 0x0F, 0x4B, 0x94, 0xC5, 0x02,
    0x07, 0x00, 0x00, 0x04, 0x9B, 0x11, 0x00, 0x72,
    0x18, 0x00, 0x57, 0x21, 0x00, 0x42, 0x2E, 0x00,
    0x35, 0x40, 0x00, 0x35, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x12, 0x10, 0x0E, 0x0C, 0x0A, 0x08, 0x06, 0xFF,
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x22, 0x21,
    0x20, 0x1F, 0x1E, 0x1D, 0x00, 0x02, 0x04, 0x06,
    0x08, 0x0A, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xDC, 0x01
#else
    0x00,                               //0x8047 Version - Send 0x00 to initialize as A
    0x40, 0x01,                         //0x8048/8049 Maximum X-axis output value (320)
    0xE0, 0x01,                         //0x804a/804b Maximum Y-axis output value (480)
    0x0A,                               //0x804c Maximum number of touch points
    0x05,                               //0x804d XY swap, software noise reduction, falling edge trigger
    0x00,                               //0x804e reserved
    0x01,                               //0x804f Finger press jitter count
    0x08,                               //0x8050 Raw coordinate window filter value
    0x28,                               //0x8051 Large area touch point count
    0x05,                               //0x8052 Noise cancellation value
    0x50,                               //0x8053 Threshold for touch detection
    0x32,                               //0x8054 Threshold for touch release
    0x03,                               //0x8055 Time to enter low power mode (seconds)
    0x05,                               //0x8056 Coordinate reporting rate
    0x00,                               //0x8057 X-axis output upper limit
    0x00,                               //0x8058 Y-axis output upper limit
    0x00, 0X00,                         //0x8059-0x805a reserved
    0x00,                               //0x805b reserved
    0x00,                               //0x805c reserved
    0x00,                               //0x805d Small filter setting during drawing
    0x00,                               //0x805e Stretching interval 1 coefficient
    0x00,                               //0x805f Stretching interval 2 coefficient
    0x00,                               //0x8060 Stretching interval 3 coefficient
    0x00,                               //0x8061 Base value for stretching intervals
    0x00,                               //0x8062 Driver Group A number
    0x00,                               //0x8063 Driver Group B number
    0x00,                               //0x8064 Sensor Group B | A number
    0x00,                               //0x8065 Drive frequency multiplier for Group A
    0x00,                               //0x8066 Drive frequency multiplier for Group B
    0x00,                               //0x8067 Base frequency for Groups A and B
    0x04,                               //0x8068
    0x00,                               //0x8069 Time interval between adjacent drive signals
    0x00,                               //0x806a
    0x00,                               //0x806b 、、
    0x02,                               //0x806c 、、
    0x03,                               //0x806d Raw value amplification factor
    0x1D,                               //0x806e 、、
    0x00,                               //0x806f reserved
    0x01,                               //0x8070 、、
    0x00, 0x00,                         //reserved
    0x00,                               //0x8073 、、
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, //0x8071 - 0x8079 reserved
    0x50,                               //0x807a Starting frequency for frequency hopping
    0xA0,                               //0x807b Ending frequency for frequency hopping
    0x94,                               //0x807c Noise level determination after multiple detections (1-63 valid)
    0xD5,                               //0x807d Noise detection timeout
    0x02,                               //0x807e 、、
    0x07,                               //0x807f Threshold for interference detection
    0x00, 0x00,                         //0x8081 reserved
    0x04,                               //0x8082 Center base frequency for frequency hopping band 1 (Groups A/B)
    0xA4,                               //0x8083
    0x55,                               //0x8084 Frequency multiplier for band 1 center
    0x00,                               //0x8085 Center base frequency for frequency hopping band 2 (Groups A/B)
    0x91,                               //0x8086
    0x62,                               //0x8087 Frequency multiplier for band 2 center
    0x00,                               //0x8088 Center base frequency for frequency hopping band 3 (Groups A/B)
    0x80,                               //0x8089
    0x71,                               //0x808a Frequency multiplier for band 3 center
    0x00,                               //0x808b Center base frequency for frequency hopping band 4 (Groups A/B)
    0x71,                               //0x808c
    0x82,                               //0x808d Frequency multiplier for band 4 center
    0x00,                               //0x808e Center base frequency for frequency hopping band 5 (Groups A/B)
    0x65,                               //0x808f
    0x95,                               //0x8090 Frequency multiplier for band 5 center
    0x00, 0x65,                         //reserved
    0x00,                               //0x8093 Key1 position (0: no key)
    0x00,                               //0x8094 Key2 position (0: no key)
    0x00,                               //0x8095 Key3 position (0: no key)
    0x00,                               //0x8096 Key4 position (0: no key)
    0x00,                               //0x8097 reserved
    0x00,                               //0x8098 reserved
    0x00,                               //0x8099 reserved
    0x00,                               //0x809a reserved
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, //0x809b-0x80b2 reserved
    0x00,                               //0x80b3 Frame alignment distance
    0x00,                               //0x80b4
    0x00, 0x00,                         //0x80b6 reserved
    0x06,                               //0x80b7
    0x08,                               //0x80b8
    0x0A,                               //0x80b9
    0x0C,                               //0x80ba
    0x0E,                               //0x80bb
    0x10,                               //0x80bc
    0x12,                               //0x80bd
    0x14,                               //0x80be
    0x16,                               //0x80bf
    0x18,                               //0x80c0
    0x1A,                               //0x80c1
    0x1C,                               //0x80c2
    0xFF,                               //0x80c3
    0xFF,                               //0x80c4
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, //0x80c5-0x80d4 reserved
    0x00,                               //0x80d5
    0x02,                               //0x80d6
    0x04,                               //0x80d7
    0x06,                               //0x80d8
    0x08,                               //0x80d9
    0x0A,                               //0x80da
    0x0C,                               //0x80db
    0x0F,                               //0x80dc
    0x10,                               //0x80dd
    0x12,                               //0x80de
    0x13,                               //0x80df
    0x14,                               //0x80e0
    0x16,                               //0x80e1
    0x18,                               //0x80e2
    0x1C,                               //0x80e3
    0x1D,                               //0x80e4
    0x1E,                               //0x80e5
    0x1F,                               //0x80e6
    0x20,                               //0x80e7
    0x21,                               //0x80e8
    0xFF,                               //0x80e9
    0xFF,                               //0x80ea
    0xFF,                               //0x80eb
    0xFF,                               //0x80ec
    0xFF,                               //0x80ed
    0xFF,                               //0x80ee
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, //0x80ef-0x80fe reserved
    0x0B,                               //0x80ff Configuration information checksum
    0x01                                //0x8100 Configuration updated flag
#endif
};

typedef struct
{
    uint8_t touch_point_flag;
    uint8_t touch_key_sts;

    uint16_t x0;
    uint16_t y0;
    uint16_t p0;

    uint16_t x1;
    uint16_t y1;
    uint16_t p1;

    uint16_t x2;
    uint16_t y2;
    uint16_t p2;

    uint16_t x3;
    uint16_t y3;
    uint16_t p3;

    uint16_t x4;
    uint16_t y4;
    uint16_t p4;
} gt911_point_t;

int gt911_i2c_init(touch_coord_t *max_value);
int gt911_i2c_get_gesture_id();
int gt911_i2c_read(uint8_t *point_num, touch_coord_t *touch_coord, uint8_t max_num);

#endif /* __gt911_H */
