#ifndef __COREDUMP_H__
#define __COREDUMP_H__
#include <stddef.h>
#include <stdint.h>

struct dump_section {
    uint32_t addr;
    uint32_t len;
};
extern __attribute__((weak)) struct dump_section _dump_sections;

#define BUILD_ID_LEN 20
extern __attribute__((weak)) uint8_t elf_build_id[BUILD_ID_LEN];

void coredump_print(uintptr_t addr, uintptr_t lma_addr, size_t len, const char *desc);
void coredump_run();

void core_partition_init(void);
uint32_t core_partition_addr(void);
size_t core_partition_size(void);
int coredump_xip_flash_write(uint32_t lma, uint8_t *lma_xip, size_t len);
void core_bin_start_hook(uint32_t *lma, size_t len, struct dump_section *dump_sections);
void core_bin_sections_hook(uint32_t *lma, uint8_t *lma_xip, size_t len);
void core_bin_end_hook(uint32_t header_lma);

void current_task_stack(struct dump_section *sections, int n);

#endif /* __COREDUMP_H__ */
