#include "coredump.h"

#ifdef CONFIG_FREERTOS
#include <FreeRTOS.h>
#include <task.h>
#include <risc-v/csr.h>

uint32_t coredump_regs[3];
extern void *pxCurrentTCB;
void current_task_stack(struct dump_section *sections, int n)
{
    coredump_regs[0] = READ_CSR(CSR_MCAUSE);
    coredump_regs[1] = READ_CSR(CSR_MEPC);
    coredump_regs[2] = READ_CSR(CSR_MTVAL);

    sections[0].addr = *(uint32_t *)pxCurrentTCB - 120 - 144;
    sections[0].len = 1024 * 12;
    sections[1].addr = (uint32_t)pxCurrentTCB;
    sections[1].len = 0x100;
    sections[2].addr = (uint32_t)&pxCurrentTCB;
    sections[2].len = 4;
    sections[3].addr = (uint32_t)coredump_regs;
    sections[3].len = sizeof(coredump_regs);
    sections[4].addr = 0xffffffff;
    sections[4].len = 0x0;

    // Step 1: Bubble sort implementation to sort by addr
    for(int i = 0; i < 5; i++) {
        for(int j = 0; j < 4 - i; j++) {
            if(sections[j].addr > sections[j+1].addr) {
                // Swap the elements
                struct dump_section temp = sections[j];
                sections[j] = sections[j+1];
                sections[j+1] = temp;
            }
        }
    }

    // Step 2: Adjust lengths to remove overlaps
    for(int i = 0; i < 4; i++) {
        uint32_t current_end = sections[i].addr + sections[i].len;
        uint32_t next_start = sections[i+1].addr;
        
        if(current_end > next_start) {
            // There's an overlap - adjust current section's length
            sections[i].len = next_start - sections[i].addr;
            
        }
    }
}
#else
void current_task_stack(struct dump_section *sections, int n)
{
}
#endif
