#include "common.h"

#if defined(MBEDTLS_SHA1_C)

#include "mbedtls/sha1.h"
#include "mbedtls/platform_util.h"
#include "mbedtls/error.h"

#include <string.h>

#include "mbedtls/platform.h"

/*
 * HMAC(K, M) = H( ( K' ^ opad ) || H( ( K' ^ ipad ) || M ) )
 */
int mbedtls_hmac_iter_init( const unsigned char *key, size_t key_len,
                            unsigned char *buf, size_t buf_len)
{
    int i, ret = MBEDTLS_ERR_ERROR_CORRUPTION_DETECTED;
    uint32_t *pw, *pw2;

    memset(buf, 0, buf_len);
    uint8_t *buf1 = (uint8_t *)(( (uint32_t)buf + 31 ) & ~( (uint32_t)31 ));
    if( buf_len < buf1 - buf + 256 )
        goto exit;

    if(key_len > 64)
        goto exit;

    uint8_t *buf2 = buf1 + 128;

    memcpy(buf1, key, key_len);
    memcpy(buf2, key, key_len);
    pw = (uint32_t *)buf1;
    pw2 = (uint32_t *)buf2;
    for (i = 0; i < 16; ++i) {
        *pw++ ^= 0x36363636;
        *pw2++ ^= 0x5c5c5c5c;
    }

#if defined(MBEDTLS_SHA1_ALT)
    mbedtls_sha1_once_padded_init();
#endif

exit:

    return( ret );
}

static void pad_buf(uint8_t *buf, size_t input_len)
{
    uint8_t *p = buf + input_len;
    *p++ = 0x80;
    size_t pad_len = 128 - input_len - 1 - 4;
    memset(p, 0, pad_len);
    p += pad_len;
    size_t input_len_bits = input_len << 3;
    {
        p[0] = (uint8_t)(input_len_bits >> 24);
        p[1] = (uint8_t)(input_len_bits >> 16);
        p[2] = (uint8_t)(input_len_bits >> 8);
        p[3] = (uint8_t)(input_len_bits);
    }
}

int mbedtls_hmac_iter_ret( unsigned char *buf, size_t buf_len,
                           unsigned char *msg, size_t msg_len,
                           unsigned char output[20], int padded)
{
    int ret = MBEDTLS_ERR_ERROR_CORRUPTION_DETECTED;

    uint8_t *buf1 = (uint8_t *)(( (uint32_t)buf + 31 ) & ~( (uint32_t)31 ));
    uint8_t *buf2 = buf1 + 128;

    if( buf_len < buf1 - buf + 256 )
        goto exit;

    if(msg_len > 64 - 1 - 4)
        goto exit;
    else
        memcpy(buf1 + 64, msg, msg_len);

    if(!padded) {
        pad_buf(buf1, 64 + msg_len);
        pad_buf(buf2, 64 + 20);
    }

#if !defined(MBEDTLS_SHA1_ALT)

    mbedtls_sha1_context ctx;

    mbedtls_sha1_init( &ctx );

    if( ( ret = mbedtls_sha1_starts_ret( &ctx ) ) != 0 )
        goto exit;

    if( ( ret = mbedtls_sha1_update_ret( &ctx, buf1, 64 + msg_len ) ) != 0 )
        goto exit;

    if( ( ret = mbedtls_sha1_finish_ret( &ctx, buf2 + 64 ) ) != 0 )
        goto exit;

    mbedtls_sha1_init( &ctx );

    if( ( ret = mbedtls_sha1_starts_ret( &ctx ) ) != 0 )
        goto exit;

    if( ( ret = mbedtls_sha1_update_ret( &ctx, buf2, 64 + 20 ) ) != 0 )
        goto exit;

    if( ( ret = mbedtls_sha1_finish_ret( &ctx, output ) ) != 0 )
        goto exit;
#else

    if( ( ret = mbedtls_sha1_once_padded( buf1, buf2 + 64, 2) ) != 0 )
        goto exit;

    if( ( ret = mbedtls_sha1_once_padded( buf2, output, 2 ) ) != 0 )
        goto exit;
#endif

exit:

    return( ret );
}

#if !defined(MBEDTLS_DEPRECATED_REMOVED)
void mbedtls_hmac( const unsigned char *key, size_t key_len,
                   unsigned char *msg, size_t msg_len,
                   unsigned char output[20] )
{
    uint32_t buf[(256 + 28) / 4];

    mbedtls_hmac_iter_init( key, key_len, (unsigned char *)buf, sizeof(buf) );
    mbedtls_hmac_iter_ret( (unsigned char *)buf, sizeof(buf), msg, msg_len, output, 0 );
}
#endif

#endif /* MBEDTLS_HMAC_C */
