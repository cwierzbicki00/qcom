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

/****************************************************************************
 * Included Files
 ****************************************************************************/

#include "mem.h"

/****************************************************************************
 * Pre-processor Definitions
 ****************************************************************************/

/****************************************************************************
 * Private Data
 ****************************************************************************/

struct mem_heap_s g_kmemheap;
struct mem_heap_s g_pmemheap;

/****************************************************************************
 * Private Function Prototypes
 ****************************************************************************/

/****************************************************************************
 * Functions
 ****************************************************************************/

/****************************************************************************
 * Name: kmem_init
 *
 * Description:
 *   Allocate memory from the user heap.
 *
 * Input Parameters:
 *
 ****************************************************************************/

void kmem_init(void *heapstart, size_t heapsize)
{
    MEM_LOG("Heap: start=%p size=%u\r\n", heapstart, heapsize);

    qcc74x_mem_init(KMEM_HEAP, heapstart, heapsize);
}


/**
 * kmalloc 
 * - allocate memory from the kernel heap 
 * - Allocates a contiguous block from kernel heap, at least pointer-size aligned.
 * - Returns NULL on failure. 
 *
 * @size: number of bytes to allocate.
 * @flags: allocation context flags (accepted for compatibility; ignored here).
 *
 *
 * Common flags (compatibility notes; not functionally enforced here):
 * %MM_KERNEL  — normal kernel allocation (sleeping not implemented).
 * %MM_ZERO    — Zero the allocated memory before returning. Also see kzalloc().
 * %MM_ATOMIC  — atomic-context allocation, may use emergency pools (not provided).
 * %MM_DMA     — Allocate memory directly accessible by DMA (not provided).
 *
 * Notes:
 * - For alignment-sensitive allocations, use memalign(); for resizing, use realloc().
 */

void *kmalloc(size_t size, int flag)
{
    void *ptr = NULL;
    struct mem_heap_s *heap = KMEM_HEAP;

    MEM_LOG("kmalloc %d\r\n", size);

    ptr = qcc74x_malloc_align(heap, (flag & MM_ALIGN32) ? 32 : sizeof(void *), size);

    if (ptr && (flag & MM_ZERO)) {
        memset(ptr, 0, size);
    }

    return ptr;
}

void *pvPortMallocStack(size_t xSize)
{
    return kmalloc(xSize, MM_KERNEL);
}

/****************************************************************************
 * Name: free
 *
 * Description:
 *   Returns a chunk of user memory to the list of free nodes,  merging with
 *   adjacent free chunks if possible.
 *
 ****************************************************************************/

void kfree(void *addr)
{
    MEM_LOG("kfree %p\r\n", addr);

    qcc74x_free(KMEM_HEAP, addr);
}

void vPortFreeStack(void *pv)
{
    return kfree(pv);
}

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

void *kcalloc(size_t size, size_t len)
{
    return kmalloc(size * len, MM_KERNEL|MM_ZERO);
}

/****************************************************************************
 * Name: kmem_init
 *
 * Description:
 *   Allocate memory from the user heap.
 *
 * Input Parameters:
 *
 ****************************************************************************/

void pmem_init(void *heapstart, size_t heapsize)
{
    MEM_LOG("Heap: start=%p size=%u\r\n", heapstart, heapsize);

    qcc74x_mem_init(PMEM_HEAP, heapstart, heapsize);
}

/****************************************************************************
 * Name: malloc
 *
 * Description:
 *   Allocate memory from the user heap.
 *
 * Input Parameters:
 *   size - Size (in bytes) of the memory region to be allocated.
 *
 * Returned Value:
 *   The address of the allocated memory (NULL on failure to allocate)
 *
 ****************************************************************************/

void *malloc(size_t size)
{
    MEM_LOG("malloc %d\r\n", size);

    return qcc74x_malloc(PMEM_HEAP, size);
}

/****************************************************************************
 * Name: realloc
 *
 * Description:
 *   Re-allocate memory in the user heap.
 *
 * Input Parameters:
 *   oldmem  - The old memory allocated
 *   newsize - Size (in bytes) of the new memory region to be re-allocated.
 *
 * Returned Value:
 *   The address of the re-allocated memory (NULL on failure to re-allocate)
 *
 ****************************************************************************/

void *realloc(void *old, size_t newlen)
{
    return qcc74x_realloc(PMEM_HEAP, old, newlen);
}

/****************************************************************************
 * Name: calloc
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

void *calloc(size_t size, size_t len)
{
    return qcc74x_calloc(PMEM_HEAP, size, len);
}

/****************************************************************************
 * Name: memalign
 *
 * Description:
 *   memalign requests more than enough space from malloc, finds a region
 *   within that chunk that meets the alignment request and then frees any
 *   leading or trailing space.
 *
 *   The alignment argument must be a power of two (not checked).  8-byte
 *   alignment is guaranteed by normal malloc calls.
 *
 ****************************************************************************/

void *memalign(size_t align, size_t size)
{
    return qcc74x_malloc_align(PMEM_HEAP, align, size);
}

/****************************************************************************
 * Name: free
 *
 * Description:
 *   Returns a chunk of user memory to the list of free nodes,  merging with
 *   adjacent free chunks if possible.
 *
 ****************************************************************************/

void free(void *addr)
{
    MEM_LOG("free %p\r\n", addr);

    qcc74x_free(PMEM_HEAP, addr);
}

/****************************************************************************
 * Name: kfree_size
 *
 * Description:
 *   Returns the free heap size
 *
 ****************************************************************************/

uint32_t kfree_size(void)
{
    return g_kmemheap.free_bytes;
}

uint32_t pfree_size(void)
{
#if defined(CONFIG_PSRAM) && defined(QCC743) // only for qcc74x_undef
    return g_pmemheap.free_bytes;
#else
    return 0;
#endif
}

#ifdef CONFIG_SHELL
#include <shell.h>

int cmd_free(int argc, char **argv)
{
    printf("sram free size:%d\r\n", kfree_size());
    printf("psram free size:%d\r\n", pfree_size());
    return 0;
}
SHELL_CMD_EXPORT_ALIAS(cmd_free, free, show memory usage);
#endif
