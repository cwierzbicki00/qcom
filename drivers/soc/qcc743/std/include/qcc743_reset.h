#ifndef __QCC743_RESET_H__
#define __QCC743_RESET_H__

#include "qcc74x_core.h"

#ifdef __cplusplus
extern "C" {
#endif

/** @addtogroup  QCC743_Peripheral_Driver
 *  @{
 */

/** @addtogroup  RESET
 *  @{
 */

/** @defgroup  RESET_Public_Functions
 *  @{
 */

/**
 * @brief  reset peri by id
 *
 * @param  peri: QCC74x_PERIPHERAL_xxx
 * @return int
 */
int qcc74x_peripheral_reset_by_id(uint8_t peri);

/*@} end of group RESET_Public_Functions */

/*@} end of group RESET */

/*@} end of group QCC743_Peripheral_Driver */

#ifdef __cplusplus
}
#endif

#endif /* __QCC743_RESET_H__ */
