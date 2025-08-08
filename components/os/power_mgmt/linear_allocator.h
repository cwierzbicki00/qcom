#ifndef LINEAR_ALLOCATOR_H
#define LINEAR_ALLOCATOR_H

#include <stddef.h>
#include <stdint.h>

#define LINEAR_ALLOCATOR_MAX_PTRS 12

typedef struct {
    uint8_t *buffer;
    size_t size;
    size_t offset;

    void *ptrs[LINEAR_ALLOCATOR_MAX_PTRS];
    size_t ptr_count;
    size_t iter_index;
} linear_allocator;

void linear_allocator_init(linear_allocator *alloc, void *buffer, size_t size);
void *linear_allocator_alloc(linear_allocator *alloc, size_t size, size_t align);
size_t linear_allocator_get_ptrs(linear_allocator *alloc, void **out_ptrs, size_t max_ptrs);
void *linear_allocator_next_ptr(linear_allocator *alloc);
void linear_allocator_reset(linear_allocator *alloc);
void linear_allocator_iter_reset(linear_allocator *alloc);

#endif // LINEAR_ALLOCATOR_H
