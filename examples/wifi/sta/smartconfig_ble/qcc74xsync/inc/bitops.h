#ifndef __BITOPS_H
#define __BITOPS_H

#ifdef __cplusplus
extern "C" {
#endif


#ifndef BIT
#define BIT(bit)                  (1u << (bit))
#endif

#define SBF(value, field)         ((value) << (field))


#define BIT_SET(data, bit)        ((data) |= BIT(bit))


#define BIT_CLR(data, bit)        ((data) &= ~BIT(bit))


#define BIT_SET_MASK(data, mask)  ((data) |= (mask))


#define BIT_CLR_MASK(data, mask)  ((data) &= ~(mask))

#define BIT_TOGGLE(data, bit)     ((data) ^= BIT(bit))


#define BIT_MODIFY(data, bit, value) \
    ((value) ? BIT_SET(data, bit) : BIT_CLR(data, bit))


#define BIT_ISSET(data, bit)      ((data) & BIT(bit))


#define BIT_GET(data, bit)        (BIT_ISSET(data, bit) ? 1 : 0)


#define BITS_MASK(n)              (~((~0u) << (n)))


#define BITS_GET(data, start, len)  \
    (((data) >> (start)) & BITS_MASK(len))


#define BITS_SET(data, start, len, value) \
    ((data) = (((data) & ~SBF(BITS_MASK(len), (start))) | \
        SBF((value) & (BITS_MASK(len)), (start))))

#ifdef __cplusplus
}
#endif

#endif /* __BITOPS_H */

