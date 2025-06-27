#include "qcc74x_reset.h"
#if defined(QCC74x_undef)
#include "qcc74x_undef_reset.h"
#elif defined(QCC74x_undef)
#include "qcc74x_undef_reset.h"
#elif defined(QCC74x_undef)
#include "qcc74x_undef_reset.h"
#elif defined(QCC74x_undef)
#include "qcc74x_undef_reset.h"
#elif defined(QCC743)
#include "qcc743_reset.h"
#elif defined(QCC74x_undef)
#include "qcc74x_undef_reset.h"
#elif defined(QCC74x_undef)
#include "qcc74x_undef_reset.h"
#endif
/****************************************************************************/ /**
 * @brief  reset peri
 *
 * @param  peri: QCC74x_PERIPHERAL_xxx
 *
 * @return int
 *
*******************************************************************************/
int qcc74x_peripheral_reset(uint8_t peri)
{
    return qcc74x_peripheral_reset_by_id(peri);
}