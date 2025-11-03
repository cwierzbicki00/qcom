#include "qcc74x_mtimer.h"
#include "qcc74x_i2c.h"
#include "qcc74x_cam.h"

#include "stdlib.h"
#include "malloc.h"

#include "board.h"
#include "board_gpio_overlay.h"
#include "image_sensor.h"
#include "lcd.h"

#define CAM_IAMGE_WIDTH_USE  640
#define CAM_IMAGE_HEIGHT_USE 480

#define src_b_l1(x)         (src[(x)])
#define src_b_l2(x)         (src[(640 * 2 + (x))])

static struct qcc74x_device_s *i2c0;
static struct qcc74x_device_s *cam0;

static short __s_r_1370705v[256] = { 0 };
static short __s_b_1732446u[256] = { 0 };
static short __s_g_337633u[256] = { 0 };
static short __s_g_698001v[256] = { 0 };

static ATTR_NOINIT_PSRAM_SECTION uint32_t display_buffer[480 * 320];

static void initYUV2RGBTabel()
{
    for (int i = 0; i < 256; i++) {
        __s_r_1370705v[i] = (1.370705 * (i - 128));
        __s_b_1732446u[i] = (1.732446 * (i - 128));
        __s_g_337633u[i] = (0.337633 * (i - 128));
        __s_g_698001v[i] = (0.698001 * (i - 128));
    }
}

static inline uint8_t BYTECLIP(int val)
{
    if (unlikely(val < 0)) {
        return 0;
    } else if (unlikely(val > 255)) {
        return 255;
    } else {
        return (uint8_t)val;
    }
}

static ATTR_TCM_SECTION __attribute__((optimize("O3"))) void yuyv_640x480_to_nrgb_480x320(uint8_t *yuyv_src, uint8_t *nrgb_dest)
{
    uint8_t *src;
    uint8_t *dest;

    int16_t out_y, out_u, out_v;

    for (uint16_t i = 0; i < 320; i++) {
        src = yuyv_src;
        dest = nrgb_dest;

        for (uint16_t j = 0; j < 480; j++) {
            /* output pixel yuv */
            if((i % 2 != 1) && (j % 3 != 2)){
                out_y = src[2 * (j % 2)];
                out_u = src[1];
                out_v = src[3];
            }else if((i % 2 != 1) && (j % 3 == 2)){
                out_y = (src[0] + src[2]) / 2;
                out_u = src[1];
                out_v = src[3];
            }else if((i % 2 == 1) && (j % 3 != 2)){
                out_y = (src_b_l1(2 * (j % 2)) + src_b_l2(2 * (j % 2))) / 2;
                out_u = (src_b_l1(1) + src_b_l2(1)) / 2;
                out_v = (src_b_l1(3) + src_b_l2(3)) / 2;
            }else{
                out_y = (src_b_l1(0) + src_b_l2(2)) / 2;;
                out_u = (src_b_l1(1) + src_b_l2(1)) / 2;
                out_v = (src_b_l1(3) + src_b_l2(3)) / 2;
            }

            dest[0] = /*R*/ BYTECLIP(out_y + __s_r_1370705v[out_v]);
            dest[1] = /*G*/ BYTECLIP(out_y - __s_g_337633u[out_u] - __s_g_698001v[out_v]);
            dest[2] = /*B*/ BYTECLIP(out_y + __s_b_1732446u[out_u]);

            src += 4 * (j % 2);
            dest += 4;
        }

        yuyv_src += 640 * 2 + 640 * 2 * (i % 2);
        nrgb_dest += 480 * 4;
    }
}

static ATTR_TCM_SECTION __attribute__((optimize("O3"))) void yuyv_640x480_to_rgb565_480x320(uint8_t *yuyv_src, uint8_t *rgb565_dest)
{
    uint8_t *src;
    uint16_t *dest;

    int16_t out_y, out_u, out_v;
    int16_t r, g, b;
    uint16_t rgb565;

    for (uint16_t i = 0; i < 320; i++) {
        src = yuyv_src;
        dest = (uint16_t *)rgb565_dest;

        for (uint16_t j = 0; j < 480; j++) {
            /* output pixel yuv */
            if((i % 2 != 1) && (j % 3 != 2)){
                out_y = src[2 * (j % 2)];
                out_u = src[1];
                out_v = src[3];
            }else if((i % 2 != 1) && (j % 3 == 2)){
                out_y = (src[0] + src[2]) / 2;
                out_u = src[1];
                out_v = src[3];
            }else if((i % 2 == 1) && (j % 3 != 2)){
                out_y = (src_b_l1(2 * (j % 2)) + src_b_l2(2 * (j % 2))) / 2;
                out_u = (src_b_l1(1) + src_b_l2(1)) / 2;
                out_v = (src_b_l1(3) + src_b_l2(3)) / 2;
            }else{
                out_y = (src_b_l1(0) + src_b_l2(2)) / 2;
                out_u = (src_b_l1(1) + src_b_l2(1)) / 2;
                out_v = (src_b_l1(3) + src_b_l2(3)) / 2;
            }

            /* Convert YUV to RGB */
            r = BYTECLIP(out_y + __s_r_1370705v[out_v]);
            g = BYTECLIP(out_y - __s_g_337633u[out_u] - __s_g_698001v[out_v]);
            b = BYTECLIP(out_y + __s_b_1732446u[out_u]);

            /* Convert RGB888 to RGB565 */
            rgb565 = ((b & 0xF8) << 8) | ((g & 0xFC) << 3) | (r >> 3);

            *dest = rgb565;

            src += 4 * (j % 2);
            dest += 1;
        }

        yuyv_src += 640 * 2 + 640 * 2 * (i % 2);
        rgb565_dest += 480 * 2;
    }
}

int main(void)
{
    uint8_t *pic;
    struct qcc74x_cam_config_s cam_config;
    struct image_sensor_config_s *sensor_config;

    board_init();
    board_dvp_gpio_init();
    board_lcd_assist_gpio_init();

    printf("cam_lcd_test\r\n");

    i2c0 = qcc74x_device_get_by_name("i2c0");
    cam0 = qcc74x_device_get_by_name("cam0");

    lcd_init();
    lcd_set_dir(3, 0);
    lcd_draw_area(0, 0, lcd_max_x, lcd_max_y, LCD_COLOR_RGB(0, 0, 0));
    printf("LCD init done, size: %d*%d\r\n", LCD_W, LCD_H);
    lcd_draw_str_ascii16(10, 10, LCD_COLOR_RGB(255, 0, 0), LCD_COLOR_RGB(0, 0, 0), (uint8_t *)"Cam test", 8);
    qcc74x_mtimer_delay_ms(500);

    initYUV2RGBTabel();
    
    if (image_sensor_scan(i2c0, &sensor_config)) {
        printf("\r\nSensor name: %s, size: %d*%d\r\n", sensor_config->name, sensor_config->resolution_x, sensor_config->resolution_y);
    } else {
        printf("\r\nError! Can't identify sensor!\r\n");
        while (1) {
        }
    }

    if (sensor_config->resolution_x > CAM_IAMGE_WIDTH_USE) {
        qcc74x_cam_crop_hsync(cam0, (sensor_config->resolution_x - CAM_IAMGE_WIDTH_USE) / 2, (sensor_config->resolution_x - CAM_IAMGE_WIDTH_USE) / 2 + CAM_IAMGE_WIDTH_USE);
    }
    if (sensor_config->resolution_y > CAM_IMAGE_HEIGHT_USE) {
        qcc74x_cam_crop_vsync(cam0, (sensor_config->resolution_y - CAM_IMAGE_HEIGHT_USE) / 2, (sensor_config->resolution_y - CAM_IMAGE_HEIGHT_USE) / 2 + CAM_IMAGE_HEIGHT_USE);
    }

    memcpy(&cam_config, sensor_config, IMAGE_SENSOR_INFO_COPY_SIZE);
    cam_config.with_mjpeg = false;
    cam_config.input_source = CAM_INPUT_SOURCE_DVP;
    cam_config.output_format = CAM_OUTPUT_FORMAT_AUTO;
    cam_config.output_bufsize = CAM_IAMGE_WIDTH_USE * CAM_IMAGE_HEIGHT_USE * 2 * 2;;
    cam_config.output_bufaddr = (uint32_t)memalign(32, cam_config.output_bufsize);
    if (cam_config.output_bufaddr == 0) {
        printf("\r\nError! Can't allocate memory!\r\n");
        while (1) {
        }
    }
    qcc74x_cam_init(cam0, &cam_config);
    qcc74x_cam_start(cam0);

    while (1) {
        while (qcc74x_cam_get_frame_count(cam0) == 0) {
        }
        qcc74x_cam_get_frame_info(cam0, &pic);
        if (LCD_COLOR_DEPTH == 32) {
            yuyv_640x480_to_nrgb_480x320(pic, (uint8_t *)display_buffer);
        } else {
            yuyv_640x480_to_rgb565_480x320(pic, (uint8_t *)display_buffer);
        }
        lcd_draw_picture_nonblocking(0, 0, lcd_max_x, lcd_max_y, (void *)display_buffer);
        while (lcd_draw_is_busy()) {
        }

        qcc74x_cam_pop_one_frame(cam0);
    }

    qcc74x_cam_stop(cam0);

    printf("end\r\n");

    while (1) {
        qcc74x_mtimer_delay_ms(1000);
    }
}
