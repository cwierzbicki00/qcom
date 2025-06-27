#ifndef _QCC74x_RESET_H
#define _QCC74x_RESET_H

#include "qcc74x_core.h"

/** @addtogroup LHAL
  * @{
  */

/** @addtogroup RESET
  * @{
  */

#ifdef __cplusplus
extern "C" {
#endif

/**
 * @brief  reset peri
 *
 * @param  peri: QCC74x_PERIPHERAL_xxx
 * @return int
 */
int qcc74x_peripheral_reset(uint8_t peri);

#ifdef __cplusplus
}
#endif

/**
  * @}
  */

/**
  * @}
  */

#endif