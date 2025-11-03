/****************************************************************************
 *
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.  The
 * ASF licenses this file to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance with the
 * License.  You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the
 * License for the specific language governing permissions and limitations
 * under the License.
 *
 ****************************************************************************/

#ifndef __QCC74x_MM_MEM_H
#define __QCC74x_MM_MEM_H

/****************************************************************************
 * Included Files
 ****************************************************************************/

#include <stdint.h>
#include <stddef.h>
#include <stdio.h>
#include <string.h>

/****************************************************************************
 * Pre-processor Definitions
 ****************************************************************************/

#define MEM_ASSERT(x)                                                     \
    {                                                                     \
        if (!(x)) {                                                       \
            printf(#x " assert failed at function %s\r\n", __FUNCTION__); \
            qcc74x_irq_save();                                              \
            while (1)                                                     \
                ;                                                         \
        }                                                                 \
    }

#define MEM_LOG(fmt, ...)  //printf(fmt, __VA_ARGS__)

#define MEM_IS_VALID(heap) ((heap) != NULL && (heap)->mem_impl != NULL)

#define KMEM_HEAP          &g_kmemheap
#if defined(CONFIG_PSRAM) && defined(QCC743) // only for qcc74x_undef
#define PMEM_HEAP &g_pmemheap
#else
#define PMEM_HEAP &g_kmemheap
#endif

/****************************************************************************
 * Allocation Flags (bitmasks; may be OR'ed)
 *
 * Flags are split into two groups:
 * - Context flags (mutually exclusive in intent, but not enforced here):
 *     MM_KERNEL, MM_ZERO
 *
 * Examples:
 *   kmalloc(256, MM_KERNEL | MM_ZERO);
 *
 * If no context flag is provided, callers should treat it as MM_KERNEL.
 ****************************************************************************/
#define MM_KERNEL      (0<<0)             /* normal kernel allocation (compatibility) */
#define MM_ZERO        (1<<0)             /* zero memory before return */
#define MM_PSRAM       (1<<1)             /* Allocate memory space from PSRAM */
#define MM_ALIGN32     (1<<2)             /* Use 32 byte alignment */
//#define MM_ATOMIC      (__MM_NORMAL|__MM_NOWAIT) /* atomic context (compatibility hint) */
//#define MM_DMA         (__MM_NORMAL|__MM_DMA)    /* DMA-capable memory (compatibility hint) */


/****************************************************************************
 * Public Types
 ****************************************************************************/

struct mem_heap_s {
    void *priv;
    void *heapstart;
    size_t heapsize;
    size_t free_bytes;
    size_t min_free_bytes;
};

/****************************************************************************
 * Public Data
 ****************************************************************************/

#undef EXTERN
#if defined(__cplusplus)
#define EXTERN extern "C"
extern "C" {
#else
#define EXTERN extern
#endif

EXTERN struct mem_heap_s g_kmemheap;
EXTERN struct mem_heap_s g_pmemheap;

/****************************************************************************
 * Public Function Prototypes
 ****************************************************************************/

void kmem_init(void *heapstart, size_t heapsize);

/**
 * Name: kmalloc 
 *
 * Description:
 * - allocate memory from the kernel heap 
 * - Allocates a contiguous block from kernel heap, at least pointer-size aligned.
 * - Returns NULL on failure. 
 *
 * @size: number of bytes to allocate.
 * @flags: allocation context flags (accepted for compatibility; ignored here).
 *
 * Common flags (compatibility notes; not functionally enforced here):
 * %MM_KERNEL  — normal kernel allocation, may sleep (sleeping not implemented).
 * %MM_ZERO    — Zero the allocated memory before returning. Also see kzalloc().
 * %MM_ATOMIC  — atomic-context allocation, may use emergency pools (not provided).
 * %MM_DMA     — Allocate memory directly accessible by DMA (not provided).
 *
 * Notes:
 * - For alignment-sensitive allocations, use memalign(); for resizing, use realloc().
 */
void *kmalloc(size_t size, int flag);

/****************************************************************************
 * Name: kcalloc
 *
 * Description:
 *   Allocate and zero memory from the user heap.
 *
 * Input Parameters:
 *   size - Size (in bytes) of the memory region to be allocated.
 *
 * Returned Value:
 *   The address of the allocated memory (NULL on failure to allocate)
 *
 ****************************************************************************/
void *kcalloc(size_t size, size_t len);

/****************************************************************************
 * Name: free
 *
 * Description:
 *   Returns a chunk of user memory to the list of free nodes,  merging with
 *   adjacent free chunks if possible.
 *
 ****************************************************************************/

void kfree(void *addr);

/****************************************************************************
 * Name: kfree_size
 *
 * Description:
 *   Returns the free heap size
 *
 ****************************************************************************/
uint32_t kfree_size(void);

void pmem_init(void *heapstart, size_t heapsize);
uint32_t pfree_size(void);

/* private api for mm*/

void qcc74x_mem_init(struct mem_heap_s *heap, void *heapstart, size_t heapsize);

void *qcc74x_malloc(struct mem_heap_s *heap, size_t nbytes);

void qcc74x_free(struct mem_heap_s *heap, void *ptr);

void *qcc74x_realloc(struct mem_heap_s *heap, void *ptr, size_t nbytes);

void *qcc74x_calloc(struct mem_heap_s *heap, size_t count, size_t size);

void *qcc74x_malloc_align(struct mem_heap_s *heap, size_t align, size_t size);

#undef EXTERN
#ifdef __cplusplus
}
#endif

#endif /* __QCC74x_MM_MEM_H */
