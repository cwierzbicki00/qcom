	.file	"ip.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.globl	ip_data
	.section	.bss.ip_data,"aw",@nobits
	.align	2
	.type	ip_data, @object
	.size	ip_data, 24
ip_data:
	.zero	24
	.text
.Letext0:
	.file 1 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 3 "./components/net/lwip/lwip/src/include/lwip/arch.h"
	.file 4 "./components/net/lwip/lwip/src/include/lwip/ip4_addr.h"
	.file 5 "./components/net/lwip/lwip/src/include/lwip/ip_addr.h"
	.file 6 "./components/net/lwip/lwip/src/include/lwip/err.h"
	.file 7 "./components/net/lwip/lwip/src/include/lwip/pbuf.h"
	.file 8 "./components/net/lwip/lwip/src/include/lwip/netif.h"
	.file 9 "./components/net/lwip/lwip/src/include/lwip/prot/ip4.h"
	.file 10 "./components/net/lwip/lwip/src/include/lwip/ip.h"
	.file 11 "./components/net/lwip/lwip/src/include/lwip/memp.h"
	.file 12 "./components/net/lwip/lwip/src/core/ip.c"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x57b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF89
	.byte	0xc
	.4byte	.LASF90
	.4byte	.LASF91
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF1
	.byte	0x1
	.byte	0x29
	.byte	0x15
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF2
	.byte	0x1
	.byte	0x2b
	.byte	0x17
	.4byte	0x43
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.byte	0x3
	.4byte	.LASF5
	.byte	0x1
	.byte	0x39
	.byte	0x1c
	.4byte	0x5d
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.byte	0x3
	.4byte	.LASF8
	.byte	0x1
	.byte	0x4f
	.byte	0x1b
	.4byte	0x77
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.byte	0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.byte	0x5
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.byte	0x3
	.4byte	.LASF14
	.byte	0x2
	.byte	0x14
	.byte	0x12
	.4byte	0x24
	.byte	0x3
	.4byte	.LASF15
	.byte	0x2
	.byte	0x18
	.byte	0x13
	.4byte	0x37
	.byte	0x3
	.4byte	.LASF16
	.byte	0x2
	.byte	0x24
	.byte	0x14
	.4byte	0x51
	.byte	0x3
	.4byte	.LASF17
	.byte	0x2
	.byte	0x30
	.byte	0x14
	.4byte	0x6b
	.byte	0x3
	.4byte	.LASF18
	.byte	0x3
	.byte	0x7d
	.byte	0x11
	.4byte	0xa8
	.byte	0x3
	.4byte	.LASF19
	.byte	0x3
	.byte	0x7e
	.byte	0x10
	.4byte	0x9c
	.byte	0x3
	.4byte	.LASF20
	.byte	0x3
	.byte	0x7f
	.byte	0x12
	.4byte	0xb4
	.byte	0x3
	.4byte	.LASF21
	.byte	0x3
	.byte	0x81
	.byte	0x12
	.4byte	0xc0
	.byte	0x6
	.4byte	.LASF25
	.byte	0x4
	.byte	0x4
	.byte	0x33
	.byte	0x8
	.4byte	0x117
	.byte	0x7
	.4byte	.LASF27
	.byte	0x4
	.byte	0x34
	.byte	0x9
	.4byte	0xf0
	.byte	0
	.byte	0
	.byte	0x3
	.4byte	.LASF22
	.byte	0x4
	.byte	0x39
	.byte	0x19
	.4byte	0xfc
	.byte	0x8
	.4byte	0x117
	.byte	0x9
	.4byte	.LASF23
	.byte	0x5
	.2byte	0x126
	.byte	0x14
	.4byte	0x117
	.byte	0x3
	.4byte	.LASF24
	.byte	0x6
	.byte	0x60
	.byte	0xe
	.4byte	0xd8
	.byte	0x6
	.4byte	.LASF26
	.byte	0x10
	.byte	0x7
	.byte	0xba
	.byte	0x8
	.4byte	0x1b7
	.byte	0x7
	.4byte	.LASF28
	.byte	0x7
	.byte	0xbc
	.byte	0x10
	.4byte	0x1b7
	.byte	0
	.byte	0x7
	.4byte	.LASF29
	.byte	0x7
	.byte	0xbf
	.byte	0x9
	.4byte	0x93
	.byte	0x4
	.byte	0x7
	.4byte	.LASF30
	.byte	0x7
	.byte	0xc8
	.byte	0x9
	.4byte	0xe4
	.byte	0x8
	.byte	0xa
	.string	"len"
	.byte	0x7
	.byte	0xcb
	.byte	0x9
	.4byte	0xe4
	.byte	0xa
	.byte	0x7
	.4byte	.LASF31
	.byte	0x7
	.byte	0xd0
	.byte	0x8
	.4byte	0xcc
	.byte	0xc
	.byte	0x7
	.4byte	.LASF32
	.byte	0x7
	.byte	0xd3
	.byte	0x8
	.4byte	0xcc
	.byte	0xd
	.byte	0xa
	.string	"ref"
	.byte	0x7
	.byte	0xda
	.byte	0x8
	.4byte	0xcc
	.byte	0xe
	.byte	0x7
	.4byte	.LASF33
	.byte	0x7
	.byte	0xdd
	.byte	0x8
	.4byte	0xcc
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0x4
	.4byte	0x141
	.byte	0xc
	.byte	0x7
	.byte	0x1
	.4byte	0x43
	.byte	0xb
	.byte	0x34
	.byte	0xe
	.4byte	0x220
	.byte	0xd
	.4byte	.LASF34
	.byte	0
	.byte	0xd
	.4byte	.LASF35
	.byte	0x1
	.byte	0xd
	.4byte	.LASF36
	.byte	0x2
	.byte	0xd
	.4byte	.LASF37
	.byte	0x3
	.byte	0xd
	.4byte	.LASF38
	.byte	0x4
	.byte	0xd
	.4byte	.LASF39
	.byte	0x5
	.byte	0xd
	.4byte	.LASF40
	.byte	0x6
	.byte	0xd
	.4byte	.LASF41
	.byte	0x7
	.byte	0xd
	.4byte	.LASF42
	.byte	0x8
	.byte	0xd
	.4byte	.LASF43
	.byte	0x9
	.byte	0xd
	.4byte	.LASF44
	.byte	0xa
	.byte	0xd
	.4byte	.LASF45
	.byte	0xb
	.byte	0xd
	.4byte	.LASF46
	.byte	0xc
	.byte	0xd
	.4byte	.LASF47
	.byte	0xd
	.byte	0
	.byte	0xe
	.4byte	.LASF92
	.byte	0x7
	.byte	0x1
	.4byte	0x43
	.byte	0x8
	.byte	0x71
	.byte	0x6
	.4byte	0x245
	.byte	0xd
	.4byte	.LASF48
	.byte	0
	.byte	0xd
	.4byte	.LASF49
	.byte	0x1
	.byte	0xd
	.4byte	.LASF50
	.byte	0x2
	.byte	0
	.byte	0xb
	.byte	0x4
	.4byte	0x24b
	.byte	0xf
	.4byte	.LASF51
	.byte	0x50
	.byte	0x8
	.2byte	0x10d
	.byte	0x8
	.4byte	0x371
	.byte	0x10
	.4byte	.LASF28
	.byte	0x8
	.2byte	0x110
	.byte	0x11
	.4byte	0x245
	.byte	0
	.byte	0x10
	.4byte	.LASF52
	.byte	0x8
	.2byte	0x115
	.byte	0xd
	.4byte	0x128
	.byte	0x4
	.byte	0x10
	.4byte	.LASF53
	.byte	0x8
	.2byte	0x116
	.byte	0xd
	.4byte	0x128
	.byte	0x8
	.byte	0x11
	.string	"gw"
	.byte	0x8
	.2byte	0x117
	.byte	0xd
	.4byte	0x128
	.byte	0xc
	.byte	0x10
	.4byte	.LASF54
	.byte	0x8
	.2byte	0x129
	.byte	0x12
	.4byte	0x371
	.byte	0x10
	.byte	0x10
	.4byte	.LASF55
	.byte	0x8
	.2byte	0x12f
	.byte	0x13
	.4byte	0x397
	.byte	0x14
	.byte	0x10
	.4byte	.LASF56
	.byte	0x8
	.2byte	0x134
	.byte	0x17
	.4byte	0x3c8
	.byte	0x18
	.byte	0x10
	.4byte	.LASF57
	.byte	0x8
	.2byte	0x13f
	.byte	0x1c
	.4byte	0x3ee
	.byte	0x1c
	.byte	0x10
	.4byte	.LASF58
	.byte	0x8
	.2byte	0x14c
	.byte	0x9
	.4byte	0x93
	.byte	0x20
	.byte	0x10
	.4byte	.LASF59
	.byte	0x8
	.2byte	0x14e
	.byte	0x9
	.4byte	0x40b
	.byte	0x24
	.byte	0x11
	.string	"mtu"
	.byte	0x8
	.2byte	0x158
	.byte	0x9
	.4byte	0xe4
	.byte	0x30
	.byte	0x10
	.4byte	.LASF60
	.byte	0x8
	.2byte	0x15e
	.byte	0x8
	.4byte	0x41b
	.byte	0x32
	.byte	0x10
	.4byte	.LASF61
	.byte	0x8
	.2byte	0x160
	.byte	0x8
	.4byte	0xcc
	.byte	0x38
	.byte	0x10
	.4byte	.LASF32
	.byte	0x8
	.2byte	0x162
	.byte	0x8
	.4byte	0xcc
	.byte	0x39
	.byte	0x10
	.4byte	.LASF62
	.byte	0x8
	.2byte	0x164
	.byte	0x8
	.4byte	0x42b
	.byte	0x3a
	.byte	0x11
	.string	"num"
	.byte	0x8
	.2byte	0x167
	.byte	0x8
	.4byte	0xcc
	.byte	0x3c
	.byte	0x10
	.4byte	.LASF63
	.byte	0x8
	.2byte	0x185
	.byte	0xf
	.4byte	0x440
	.byte	0x40
	.byte	0x10
	.4byte	.LASF64
	.byte	0x8
	.2byte	0x18c
	.byte	0x10
	.4byte	0x1b7
	.byte	0x44
	.byte	0x10
	.4byte	.LASF65
	.byte	0x8
	.2byte	0x18d
	.byte	0x10
	.4byte	0x1b7
	.byte	0x48
	.byte	0x10
	.4byte	.LASF66
	.byte	0x8
	.2byte	0x193
	.byte	0x8
	.4byte	0xcc
	.byte	0x4c
	.byte	0
	.byte	0x3
	.4byte	.LASF67
	.byte	0x8
	.byte	0xb5
	.byte	0x11
	.4byte	0x37d
	.byte	0xb
	.byte	0x4
	.4byte	0x383
	.byte	0x12
	.4byte	0x135
	.4byte	0x397
	.byte	0x13
	.4byte	0x1b7
	.byte	0x13
	.4byte	0x245
	.byte	0
	.byte	0x3
	.4byte	.LASF68
	.byte	0x8
	.byte	0xc0
	.byte	0x11
	.4byte	0x3a3
	.byte	0xb
	.byte	0x4
	.4byte	0x3a9
	.byte	0x12
	.4byte	0x135
	.4byte	0x3c2
	.byte	0x13
	.4byte	0x245
	.byte	0x13
	.4byte	0x1b7
	.byte	0x13
	.4byte	0x3c2
	.byte	0
	.byte	0xb
	.byte	0x4
	.4byte	0x123
	.byte	0x3
	.4byte	.LASF69
	.byte	0x8
	.byte	0xd7
	.byte	0x11
	.4byte	0x3d4
	.byte	0xb
	.byte	0x4
	.4byte	0x3da
	.byte	0x12
	.4byte	0x135
	.4byte	0x3ee
	.byte	0x13
	.4byte	0x245
	.byte	0x13
	.4byte	0x1b7
	.byte	0
	.byte	0x3
	.4byte	.LASF70
	.byte	0x8
	.byte	0xd9
	.byte	0x10
	.4byte	0x3fa
	.byte	0xb
	.byte	0x4
	.4byte	0x400
	.byte	0x14
	.4byte	0x40b
	.byte	0x13
	.4byte	0x245
	.byte	0
	.byte	0x15
	.4byte	0x93
	.4byte	0x41b
	.byte	0x16
	.4byte	0x8c
	.byte	0x2
	.byte	0
	.byte	0x15
	.4byte	0xcc
	.4byte	0x42b
	.byte	0x16
	.4byte	0x8c
	.byte	0x5
	.byte	0
	.byte	0x15
	.4byte	0x95
	.4byte	0x43b
	.byte	0x16
	.4byte	0x8c
	.byte	0x1
	.byte	0
	.byte	0x17
	.string	"acd"
	.byte	0xb
	.byte	0x4
	.4byte	0x43b
	.byte	0x6
	.4byte	.LASF71
	.byte	0x4
	.byte	0x9
	.byte	0x35
	.byte	0x8
	.4byte	0x461
	.byte	0x7
	.4byte	.LASF27
	.byte	0x9
	.byte	0x36
	.byte	0x9
	.4byte	0xf0
	.byte	0
	.byte	0
	.byte	0x3
	.4byte	.LASF72
	.byte	0x9
	.byte	0x3d
	.byte	0x20
	.4byte	0x446
	.byte	0x6
	.4byte	.LASF73
	.byte	0x14
	.byte	0x9
	.byte	0x49
	.byte	0x8
	.4byte	0x4fd
	.byte	0x7
	.4byte	.LASF74
	.byte	0x9
	.byte	0x4b
	.byte	0x8
	.4byte	0xcc
	.byte	0
	.byte	0x7
	.4byte	.LASF75
	.byte	0x9
	.byte	0x4d
	.byte	0x8
	.4byte	0xcc
	.byte	0x1
	.byte	0x7
	.4byte	.LASF76
	.byte	0x9
	.byte	0x4f
	.byte	0x9
	.4byte	0xe4
	.byte	0x2
	.byte	0xa
	.string	"_id"
	.byte	0x9
	.byte	0x51
	.byte	0x9
	.4byte	0xe4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF77
	.byte	0x9
	.byte	0x53
	.byte	0x9
	.4byte	0xe4
	.byte	0x6
	.byte	0x7
	.4byte	.LASF78
	.byte	0x9
	.byte	0x59
	.byte	0x8
	.4byte	0xcc
	.byte	0x8
	.byte	0x7
	.4byte	.LASF79
	.byte	0x9
	.byte	0x5b
	.byte	0x8
	.4byte	0xcc
	.byte	0x9
	.byte	0x7
	.4byte	.LASF80
	.byte	0x9
	.byte	0x5d
	.byte	0x9
	.4byte	0xe4
	.byte	0xa
	.byte	0xa
	.string	"src"
	.byte	0x9
	.byte	0x5f
	.byte	0x10
	.4byte	0x461
	.byte	0xc
	.byte	0x7
	.4byte	.LASF81
	.byte	0x9
	.byte	0x60
	.byte	0x10
	.4byte	0x461
	.byte	0x10
	.byte	0
	.byte	0x8
	.4byte	0x46d
	.byte	0x6
	.4byte	.LASF82
	.byte	0x18
	.byte	0xa
	.byte	0x76
	.byte	0x8
	.4byte	0x55e
	.byte	0x7
	.4byte	.LASF83
	.byte	0xa
	.byte	0x79
	.byte	0x11
	.4byte	0x245
	.byte	0
	.byte	0x7
	.4byte	.LASF84
	.byte	0xa
	.byte	0x7b
	.byte	0x11
	.4byte	0x245
	.byte	0x4
	.byte	0x7
	.4byte	.LASF85
	.byte	0xa
	.byte	0x7e
	.byte	0x18
	.4byte	0x55e
	.byte	0x8
	.byte	0x7
	.4byte	.LASF86
	.byte	0xa
	.byte	0x85
	.byte	0x9
	.4byte	0xe4
	.byte	0xc
	.byte	0x7
	.4byte	.LASF87
	.byte	0xa
	.byte	0x87
	.byte	0xd
	.4byte	0x128
	.byte	0x10
	.byte	0x7
	.4byte	.LASF88
	.byte	0xa
	.byte	0x89
	.byte	0xd
	.4byte	0x128
	.byte	0x14
	.byte	0
	.byte	0xb
	.byte	0x4
	.4byte	0x4fd
	.byte	0x18
	.4byte	.LASF93
	.byte	0xa
	.byte	0x8b
	.byte	0x1a
	.4byte	0x502
	.byte	0x19
	.4byte	0x564
	.byte	0xc
	.byte	0x40
	.byte	0x13
	.byte	0x5
	.byte	0x3
	.4byte	ip_data
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.byte	0x13
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0x1b
	.byte	0xe
	.byte	0x10
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x4
	.byte	0x1
	.byte	0x3e
	.byte	0xb
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0x3e
	.byte	0xb
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x34
	.byte	0
	.byte	0x47
	.byte	0x13
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x14
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF63:
	.string	"acd_list"
.LASF27:
	.string	"addr"
.LASF85:
	.string	"current_ip4_header"
.LASF91:
	.string	"./examples/usb_cam_stream/build_wsl/build_out/components/net/lwip/lwip"
.LASF79:
	.string	"_proto"
.LASF60:
	.string	"hwaddr"
.LASF14:
	.string	"int8_t"
.LASF49:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_ACD"
.LASF58:
	.string	"state"
.LASF68:
	.string	"netif_output_fn"
.LASF4:
	.string	"short int"
.LASF40:
	.string	"MEMP_NETBUF"
.LASF54:
	.string	"input"
.LASF73:
	.string	"ip_hdr"
.LASF77:
	.string	"_offset"
.LASF74:
	.string	"_v_hl"
.LASF8:
	.string	"__uint32_t"
.LASF57:
	.string	"status_callback"
.LASF5:
	.string	"__uint16_t"
.LASF59:
	.string	"client_data"
.LASF76:
	.string	"_len"
.LASF43:
	.string	"MEMP_SYS_TIMEOUT"
.LASF72:
	.string	"ip4_addr_p_t"
.LASF15:
	.string	"uint8_t"
.LASF52:
	.string	"ip_addr"
.LASF37:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF78:
	.string	"_ttl"
.LASF87:
	.string	"current_iphdr_src"
.LASF44:
	.string	"MEMP_NETDB"
.LASF0:
	.string	"signed char"
.LASF56:
	.string	"linkoutput"
.LASF19:
	.string	"s8_t"
.LASF10:
	.string	"long long int"
.LASF92:
	.string	"lwip_internal_netif_client_data_index"
.LASF30:
	.string	"tot_len"
.LASF7:
	.string	"long int"
.LASF23:
	.string	"ip_addr_t"
.LASF50:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF90:
	.string	"./components/net/lwip/lwip/src/core/ip.c"
.LASF31:
	.string	"type_internal"
.LASF84:
	.string	"current_input_netif"
.LASF81:
	.string	"dest"
.LASF80:
	.string	"_chksum"
.LASF62:
	.string	"name"
.LASF48:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF67:
	.string	"netif_input_fn"
.LASF3:
	.string	"unsigned char"
.LASF70:
	.string	"netif_status_callback_fn"
.LASF47:
	.string	"MEMP_MAX"
.LASF33:
	.string	"if_idx"
.LASF69:
	.string	"netif_linkoutput_fn"
.LASF32:
	.string	"flags"
.LASF11:
	.string	"long long unsigned int"
.LASF17:
	.string	"uint32_t"
.LASF64:
	.string	"loop_first"
.LASF12:
	.string	"unsigned int"
.LASF16:
	.string	"uint16_t"
.LASF93:
	.string	"ip_data"
.LASF82:
	.string	"ip_globals"
.LASF6:
	.string	"short unsigned int"
.LASF39:
	.string	"MEMP_REASSDATA"
.LASF1:
	.string	"__int8_t"
.LASF24:
	.string	"err_t"
.LASF13:
	.string	"char"
.LASF42:
	.string	"MEMP_TCPIP_MSG_API"
.LASF86:
	.string	"current_ip_header_tot_len"
.LASF66:
	.string	"reschedule_poll"
.LASF25:
	.string	"ip4_addr"
.LASF45:
	.string	"MEMP_PBUF"
.LASF83:
	.string	"current_netif"
.LASF29:
	.string	"payload"
.LASF89:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF9:
	.string	"long unsigned int"
.LASF34:
	.string	"MEMP_RAW_PCB"
.LASF22:
	.string	"ip4_addr_t"
.LASF51:
	.string	"netif"
.LASF53:
	.string	"netmask"
.LASF21:
	.string	"u32_t"
.LASF65:
	.string	"loop_last"
.LASF20:
	.string	"u16_t"
.LASF46:
	.string	"MEMP_PBUF_POOL"
.LASF38:
	.string	"MEMP_TCP_SEG"
.LASF88:
	.string	"current_iphdr_dest"
.LASF41:
	.string	"MEMP_NETCONN"
.LASF71:
	.string	"ip4_addr_packed"
.LASF55:
	.string	"output"
.LASF36:
	.string	"MEMP_TCP_PCB"
.LASF35:
	.string	"MEMP_UDP_PCB"
.LASF18:
	.string	"u8_t"
.LASF75:
	.string	"_tos"
.LASF61:
	.string	"hwaddr_len"
.LASF28:
	.string	"next"
.LASF2:
	.string	"__uint8_t"
.LASF26:
	.string	"pbuf"
	.ident	"GCC: (GNU) 10.4.0"
