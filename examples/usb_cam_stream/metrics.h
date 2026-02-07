#ifndef METRICS_H
#define METRICS_H

#include <stdint.h>

/*
 * Initialise the 1 Hz periodic metrics timer.
 * Call once from a task context (after all modules are initialised).
 */
void metrics_init(void);

#endif /* METRICS_H */
