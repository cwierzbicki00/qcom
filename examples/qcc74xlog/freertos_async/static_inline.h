#include "example_log.h"

#ifndef __STATIC_INLINE_H__
#define __STATIC_INLINE_H__

/*!< Define tags only in C files that are not included by other files */
/*!< Export tags using 'extern' in header files */
QCC74xLOG_EXTERN_TAG(INLINE);

/*!< Set the tag to be used in this file */
#undef QCC74xLOG_TAG
#define QCC74xLOG_TAG QCC74xLOG_GET_TAG(INLINE)

static inline void test_log_static_inline(void)
{
    LOG_I("static inline\r\n");
}

#endif