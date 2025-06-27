#include "qcc74x_clock.h"
#if defined(QCC74x_undef)
#include "qcc74x_undef_clock.h"
#elif defined(QCC74x_undef)
#include "qcc74x_undef_clock.h"
#elif defined(QCC74x_undef)
#include "qcc74x_undef_clock.h"
#elif defined(QCC74x_undef)
#include "qcc74x_undef_clock.h"
#elif defined(QCC743)
#include "qcc743_clock.h"
#elif defined(QCC74x_undef)
#include "qcc74x_undef_clock.h"
#elif defined(QCC74x_undef)
#include "qcc74x_undef_clock.h"
#endif

/****************************************************************************/ /**
 * @brief  get peri clock
 *
 * @param  peri: QCC74x_PERIPHERAL_xxx
 *
 * @return int
 *
*******************************************************************************/
uint32_t qcc74x_peripheral_clock_get(uint8_t peri)
{
    return qcc74x_peripheral_clock_get_by_id(peri);
}

/****************************************************************************/ /**
 * @brief  enable/disable peri clock
 *
 * @param  peri: QCC74x_PERIPHERAL_xxx
 *
 * @param  enable: Boolean value to enable or disable the clock
 * @return int
 *
*******************************************************************************/
int ATTR_CLOCK_SECTION qcc74x_peripheral_clock_control(uint8_t peri, bool enable)
{
    return qcc74x_peripheral_clock_control_by_id(peri, enable);
}

/****************************************************************************/ /**
 * @brief  get peri clock status
 *
 * @param  peri: QCC74x_PERIPHERAL_xxx
 *
 * @return int
 *
*******************************************************************************/
int ATTR_CLOCK_SECTION qcc74x_peripheral_clock_status_get(uint8_t peri)
{
    return qcc74x_peripheral_clock_status_get_by_id(peri);
}

