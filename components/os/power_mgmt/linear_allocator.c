#include "linear_allocator.h"

static size_t align_up(size_t ptr, size_t align) {
    if (align == 0) return ptr;
    return (ptr + (align - 1)) & ~(align - 1);
}

void linear_allocator_init(linear_allocator *alloc, void *buffer, size_t size) {
    alloc->buffer = (uint8_t *)buffer;
    alloc->size = size;
    alloc->offset = 0;
    alloc->ptr_count = 0;
    alloc->iter_index = 0;
}

void *linear_allocator_alloc(linear_allocator *alloc, size_t size, size_t align) {
    size_t base = (size_t)(alloc->buffer);
    size_t current = base + alloc->offset;
    size_t aligned = align_up(current, align);
    size_t rel_offset = aligned - base;
    size_t new_offset = rel_offset + size;

    if (new_offset > alloc->size || alloc->ptr_count >= LINEAR_ALLOCATOR_MAX_PTRS)
        return NULL;

    void *ptr = (void *)(alloc->buffer + rel_offset);
    alloc->offset = new_offset;
    alloc->ptrs[alloc->ptr_count++] = ptr;
    return ptr;
}

size_t linear_allocator_get_ptrs(linear_allocator *alloc, void **out_ptrs, size_t max_ptrs) {
    size_t count = (alloc->ptr_count < max_ptrs) ? alloc->ptr_count : max_ptrs;
    for (size_t i = 0; i < count; ++i) {
        out_ptrs[i] = alloc->ptrs[i];
    }
    return count;
}

void linear_allocator_reset(linear_allocator *alloc) {
    alloc->offset = 0;
    alloc->ptr_count = 0;
    alloc->iter_index = 0;
}

void *linear_allocator_next_ptr(linear_allocator *alloc) {
    if (!alloc) return NULL;
    if (alloc->iter_index >= alloc->ptr_count) {
        return NULL;
    }
    return alloc->ptrs[alloc->iter_index++];
}


void linear_allocator_iter_reset(linear_allocator *alloc) {
    alloc->iter_index = 0;
}
