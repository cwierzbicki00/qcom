#include "qcc74x_mtimer.h"
#include "board.h"
#include "mbedtls/aes.h"
#include "mbedtls/sha1.h"
#include "mbedtls/sha256.h"
#include "mbedtls/sha512.h"
#include "mbedtls/entropy.h"
#include "mbedtls/ctr_drbg.h"
#include "mbedtls/platform.h"
#include "mbedtls/ecdsa.h"
#include "mbedtls/ecdh.h"

extern void mbedtls_ecdh_test(void);
extern void mbedtls_ecdsa_test();
extern void mbedtls_aes_test();
extern void mbedtls_sha_test();
extern void mbedtls_rsa_test(void);

int main(void)
{
    board_init();

    // mbedtls_aes_self_test(1); /* mbedtls aes test uses dynamic iv(modifies last iv) but hardware does not support */
    mbedtls_sha1_self_test(1);
    mbedtls_sha256_self_test(1);
    mbedtls_sha512_self_test(1);

    printf("\r\n=========== ecdh test ================\r\n");
    mbedtls_ecdh_test();
    printf("\r\n=========== ecdsa test ================\r\n");
    mbedtls_ecdsa_test();
    printf("\r\n=========== aes test ================\r\n");
    mbedtls_aes_test();
    printf("\r\n=========== sha test ================\r\n");
    mbedtls_sha_test();
    printf("\r\n=========== rsa test ================\r\n");
    mbedtls_rsa_test();
    while (1) {
        qcc74x_mtimer_delay_ms(1000);
    }
}
