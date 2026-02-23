	.file	"list.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.vListInitialise,"ax",@progbits
	.align	1
	.globl	vListInitialise
	.type	vListInitialise, @function
vListInitialise:
.LFB4:
	.file 1 "./components/os/freertos/list.c"
	.loc 1 51 1
	.cfi_startproc
.LVL0:
	.loc 1 55 5
	.loc 1 55 40 is_stmt 0
	addi	a5,a0,8
	.loc 1 61 33
	li	a4,-1
	.loc 1 55 21
	sw	a5,4(a0)
	.loc 1 57 5 is_stmt 1
	.loc 1 61 5
	.loc 1 61 33 is_stmt 0
	sw	a4,8(a0)
	.loc 1 65 5 is_stmt 1
	.loc 1 65 29 is_stmt 0
	sw	a5,12(a0)
	.loc 1 66 5 is_stmt 1
	.loc 1 66 33 is_stmt 0
	sw	a5,16(a0)
	.loc 1 77 5 is_stmt 1
	.loc 1 77 29 is_stmt 0
	sw	zero,0(a0)
	.loc 1 81 5 is_stmt 1
	.loc 1 82 5
	.loc 1 83 1 is_stmt 0
	ret
	.cfi_endproc
.LFE4:
	.size	vListInitialise, .-vListInitialise
	.section	.text.vListInitialiseItem,"ax",@progbits
	.align	1
	.globl	vListInitialiseItem
	.type	vListInitialiseItem, @function
vListInitialiseItem:
.LFB5:
	.loc 1 87 1 is_stmt 1
	.cfi_startproc
.LVL1:
	.loc 1 89 5
	.loc 1 89 25 is_stmt 0
	sw	zero,16(a0)
	.loc 1 93 5 is_stmt 1
	.loc 1 94 5
	.loc 1 95 1 is_stmt 0
	ret
	.cfi_endproc
.LFE5:
	.size	vListInitialiseItem, .-vListInitialiseItem
	.section	.text.vListInsertEnd,"ax",@progbits
	.align	1
	.globl	vListInsertEnd
	.type	vListInsertEnd, @function
vListInsertEnd:
.LFB6:
	.loc 1 100 1 is_stmt 1
	.cfi_startproc
.LVL2:
	.loc 1 101 5
	.loc 1 101 24 is_stmt 0
	lw	a5,4(a0)
.LVL3:
	.loc 1 106 5 is_stmt 1
	.loc 1 107 5
	.loc 1 112 5
	.loc 1 113 40 is_stmt 0
	lw	a4,8(a5)
	.loc 1 112 27
	sw	a5,4(a1)
	.loc 1 113 5 is_stmt 1
	.loc 1 113 31 is_stmt 0
	sw	a4,8(a1)
	.loc 1 116 5 is_stmt 1
	.loc 1 118 5
	.loc 1 118 33 is_stmt 0
	lw	a4,8(a5)
	sw	a1,4(a4)
	.loc 1 119 5 is_stmt 1
	.loc 1 119 25 is_stmt 0
	sw	a1,8(a5)
	.loc 1 122 5 is_stmt 1
	.loc 1 124 13 is_stmt 0
	lw	a5,0(a0)
.LVL4:
	.loc 1 122 32
	sw	a0,16(a1)
	.loc 1 124 5 is_stmt 1
	.loc 1 124 32 is_stmt 0
	addi	a5,a5,1
	sw	a5,0(a0)
	.loc 1 125 1
	ret
	.cfi_endproc
.LFE6:
	.size	vListInsertEnd, .-vListInsertEnd
	.section	.text.vListInsert,"ax",@progbits
	.align	1
	.globl	vListInsert
	.type	vListInsert, @function
vListInsert:
.LFB7:
	.loc 1 130 1 is_stmt 1
	.cfi_startproc
.LVL5:
	.loc 1 131 5
	.loc 1 132 5
	.loc 1 132 22 is_stmt 0
	lw	a3,0(a1)
.LVL6:
	.loc 1 137 5 is_stmt 1
	.loc 1 138 5
	.loc 1 148 5
	.loc 1 148 7 is_stmt 0
	li	a5,-1
	.loc 1 179 25
	addi	a4,a0,8
	.loc 1 148 7
	bne	a3,a5,.L7
	.loc 1 150 9 is_stmt 1
	.loc 1 150 20 is_stmt 0
	lw	a5,16(a0)
.LVL7:
.L6:
	.loc 1 186 5 is_stmt 1
	.loc 1 186 39 is_stmt 0
	lw	a4,4(a5)
	.loc 1 186 27
	sw	a4,4(a1)
	.loc 1 187 5 is_stmt 1
	.loc 1 187 39 is_stmt 0
	sw	a1,8(a4)
	.loc 1 188 5 is_stmt 1
	.loc 1 188 31 is_stmt 0
	sw	a5,8(a1)
	.loc 1 189 5 is_stmt 1
	.loc 1 189 24 is_stmt 0
	sw	a1,4(a5)
	.loc 1 193 5 is_stmt 1
	.loc 1 195 13 is_stmt 0
	lw	a5,0(a0)
.LVL8:
	.loc 1 193 32
	sw	a0,16(a1)
	.loc 1 195 5 is_stmt 1
	.loc 1 195 32 is_stmt 0
	addi	a5,a5,1
	sw	a5,0(a0)
	.loc 1 196 1
	ret
.LVL9:
.L7:
	.loc 1 179 67 is_stmt 1 discriminator 1
	mv	a5,a4
	.loc 1 179 77 is_stmt 0 discriminator 1
	lw	a4,4(a4)
.LVL10:
	.loc 1 179 9 discriminator 1
	lw	a2,0(a4)
	bleu	a2,a3,.L7
	j	.L6
	.cfi_endproc
.LFE7:
	.size	vListInsert, .-vListInsert
	.section	.text.uxListRemove,"ax",@progbits
	.align	1
	.globl	uxListRemove
	.type	uxListRemove, @function
uxListRemove:
.LFB8:
	.loc 1 200 1 is_stmt 1
	.cfi_startproc
.LVL11:
	.loc 1 203 5
	.loc 1 205 19 is_stmt 0
	lw	a3,4(a0)
	.loc 1 205 56
	lw	a4,8(a0)
	.loc 1 203 20
	lw	a5,16(a0)
.LVL12:
	.loc 1 205 5 is_stmt 1
	.loc 1 205 40 is_stmt 0
	sw	a4,8(a3)
	.loc 1 206 5 is_stmt 1
	.loc 1 206 40 is_stmt 0
	sw	a3,4(a4)
	.loc 1 209 5 is_stmt 1
	.loc 1 212 5
	.loc 1 212 7 is_stmt 0
	lw	a3,4(a5)
	bne	a3,a0,.L11
	.loc 1 214 9 is_stmt 1
	.loc 1 214 25 is_stmt 0
	sw	a4,4(a5)
.L11:
	.loc 1 218 9 is_stmt 1
	.loc 1 221 5
	.loc 1 222 13 is_stmt 0
	lw	a4,0(a5)
	.loc 1 221 33
	sw	zero,16(a0)
	.loc 1 222 5 is_stmt 1
	.loc 1 222 32 is_stmt 0
	addi	a4,a4,-1
	sw	a4,0(a5)
	.loc 1 224 5 is_stmt 1
	.loc 1 224 18 is_stmt 0
	lw	a0,0(a5)
.LVL13:
	.loc 1 225 1
	ret
	.cfi_endproc
.LFE8:
	.size	uxListRemove, .-uxListRemove
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./components/os/freertos/portable/GCC/RISC-V/common/portmacro.h"
	.file 5 "./components/os/freertos/include/list.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2bd
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF37
	.byte	0xc
	.4byte	.LASF38
	.4byte	.LASF39
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.byte	0x4
	.4byte	.LASF10
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x62
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.byte	0x5
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x56
	.byte	0x4
	.4byte	.LASF12
	.byte	0x4
	.byte	0x43
	.byte	0x12
	.4byte	0x80
	.byte	0x6
	.4byte	0x8c
	.byte	0x4
	.4byte	.LASF13
	.byte	0x4
	.byte	0x44
	.byte	0x12
	.4byte	0x80
	.byte	0x7
	.4byte	0x9d
	.byte	0x8
	.4byte	.LASF19
	.byte	0x14
	.byte	0x5
	.byte	0x90
	.byte	0x8
	.4byte	0xfd
	.byte	0x9
	.4byte	.LASF14
	.byte	0x5
	.byte	0x93
	.byte	0x10
	.4byte	0x9d
	.byte	0
	.byte	0x9
	.4byte	.LASF15
	.byte	0x5
	.byte	0x94
	.byte	0x19
	.4byte	0xfd
	.byte	0x4
	.byte	0x9
	.4byte	.LASF16
	.byte	0x5
	.byte	0x95
	.byte	0x19
	.4byte	0xfd
	.byte	0x8
	.byte	0x9
	.4byte	.LASF17
	.byte	0x5
	.byte	0x96
	.byte	0xc
	.4byte	0x77
	.byte	0xc
	.byte	0x9
	.4byte	.LASF18
	.byte	0x5
	.byte	0x97
	.byte	0x14
	.4byte	0x138
	.byte	0x10
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0xae
	.byte	0x8
	.4byte	.LASF20
	.byte	0x14
	.byte	0x5
	.byte	0xac
	.byte	0x10
	.4byte	0x138
	.byte	0x9
	.4byte	.LASF21
	.byte	0x5
	.byte	0xaf
	.byte	0x1a
	.4byte	0x98
	.byte	0
	.byte	0x9
	.4byte	.LASF22
	.byte	0x5
	.byte	0xb0
	.byte	0x12
	.4byte	0x18b
	.byte	0x4
	.byte	0x9
	.4byte	.LASF23
	.byte	0x5
	.byte	0xb1
	.byte	0x14
	.4byte	0x17f
	.byte	0x8
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x103
	.byte	0x4
	.4byte	.LASF24
	.byte	0x5
	.byte	0x9a
	.byte	0x1b
	.4byte	0xae
	.byte	0x8
	.4byte	.LASF25
	.byte	0xc
	.byte	0x5
	.byte	0x9d
	.byte	0xc
	.4byte	0x17f
	.byte	0x9
	.4byte	.LASF14
	.byte	0x5
	.byte	0xa0
	.byte	0x14
	.4byte	0x9d
	.byte	0
	.byte	0x9
	.4byte	.LASF15
	.byte	0x5
	.byte	0xa1
	.byte	0x1d
	.4byte	0xfd
	.byte	0x4
	.byte	0x9
	.4byte	.LASF16
	.byte	0x5
	.byte	0xa2
	.byte	0x1d
	.4byte	0xfd
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LASF26
	.byte	0x5
	.byte	0xa4
	.byte	0x24
	.4byte	0x14a
	.byte	0xa
	.byte	0x4
	.4byte	0x13e
	.byte	0x7
	.4byte	0x18b
	.byte	0x4
	.4byte	.LASF27
	.byte	0x5
	.byte	0xb3
	.byte	0x3
	.4byte	0x103
	.byte	0xb
	.4byte	.LASF40
	.byte	0x1
	.byte	0xc7
	.byte	0xd
	.4byte	0x8c
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x1db
	.byte	0xc
	.4byte	.LASF28
	.byte	0x1
	.byte	0xc7
	.byte	0x2e
	.4byte	0x191
	.4byte	.LLST2
	.byte	0xd
	.4byte	.LASF29
	.byte	0x1
	.byte	0xcb
	.byte	0x14
	.4byte	0x1e1
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x196
	.byte	0x7
	.4byte	0x1db
	.byte	0xe
	.4byte	.LASF33
	.byte	0x1
	.byte	0x80
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x237
	.byte	0xf
	.4byte	.LASF29
	.byte	0x1
	.byte	0x80
	.byte	0x22
	.4byte	0x1e1
	.byte	0x1
	.byte	0x5a
	.byte	0xf
	.4byte	.LASF30
	.byte	0x1
	.byte	0x81
	.byte	0x26
	.4byte	0x191
	.byte	0x1
	.byte	0x5b
	.byte	0x10
	.4byte	.LASF31
	.byte	0x1
	.byte	0x83
	.byte	0x12
	.4byte	0x18b
	.4byte	.LLST1
	.byte	0xd
	.4byte	.LASF32
	.byte	0x1
	.byte	0x84
	.byte	0x16
	.4byte	0xa9
	.byte	0x1
	.byte	0x5d
	.byte	0
	.byte	0xe
	.4byte	.LASF34
	.byte	0x1
	.byte	0x62
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x27a
	.byte	0xf
	.4byte	.LASF29
	.byte	0x1
	.byte	0x62
	.byte	0x25
	.4byte	0x1e1
	.byte	0x1
	.byte	0x5a
	.byte	0xf
	.4byte	.LASF30
	.byte	0x1
	.byte	0x63
	.byte	0x29
	.4byte	0x191
	.byte	0x1
	.byte	0x5b
	.byte	0x10
	.4byte	.LASF22
	.byte	0x1
	.byte	0x65
	.byte	0x18
	.4byte	0x191
	.4byte	.LLST0
	.byte	0
	.byte	0xe
	.4byte	.LASF35
	.byte	0x1
	.byte	0x56
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x29f
	.byte	0xf
	.4byte	.LASF36
	.byte	0x1
	.byte	0x56
	.byte	0x2e
	.4byte	0x191
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x11
	.4byte	.LASF41
	.byte	0x1
	.byte	0x32
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.byte	0xf
	.4byte	.LASF29
	.byte	0x1
	.byte	0x32
	.byte	0x26
	.4byte	0x1e1
	.byte	0x1
	.byte	0x5a
	.byte	0
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
	.byte	0x55
	.byte	0x17
	.byte	0x11
	.byte	0x1
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
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x3
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
	.byte	0x4
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
	.byte	0x5
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x35
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
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
	.byte	0x9
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
	.byte	0xa
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x5
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xd
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
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x5
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
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST2:
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x7b
	.byte	0x8
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL10
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL4
	.4byte	.LFE6
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF13:
	.string	"TickType_t"
.LASF18:
	.string	"pvContainer"
.LASF22:
	.string	"pxIndex"
.LASF26:
	.string	"MiniListItem_t"
.LASF14:
	.string	"xItemValue"
.LASF4:
	.string	"short unsigned int"
.LASF23:
	.string	"xListEnd"
.LASF17:
	.string	"pvOwner"
.LASF19:
	.string	"xLIST_ITEM"
.LASF2:
	.string	"unsigned char"
.LASF37:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF6:
	.string	"long unsigned int"
.LASF28:
	.string	"pxItemToRemove"
.LASF16:
	.string	"pxPrevious"
.LASF39:
	.string	"./examples/usb_cam_stream/build_wsl/build_out/components/os/freertos"
.LASF27:
	.string	"List_t"
.LASF38:
	.string	"./components/os/freertos/list.c"
.LASF10:
	.string	"__uint32_t"
.LASF21:
	.string	"uxNumberOfItems"
.LASF34:
	.string	"vListInsertEnd"
.LASF15:
	.string	"pxNext"
.LASF0:
	.string	"unsigned int"
.LASF41:
	.string	"vListInitialise"
.LASF32:
	.string	"xValueOfInsertion"
.LASF8:
	.string	"long long unsigned int"
.LASF36:
	.string	"pxItem"
.LASF24:
	.string	"ListItem_t"
.LASF7:
	.string	"long long int"
.LASF9:
	.string	"char"
.LASF31:
	.string	"pxIterator"
.LASF3:
	.string	"short int"
.LASF11:
	.string	"uint32_t"
.LASF5:
	.string	"long int"
.LASF35:
	.string	"vListInitialiseItem"
.LASF40:
	.string	"uxListRemove"
.LASF25:
	.string	"xMINI_LIST_ITEM"
.LASF1:
	.string	"signed char"
.LASF29:
	.string	"pxList"
.LASF20:
	.string	"xLIST"
.LASF12:
	.string	"UBaseType_t"
.LASF30:
	.string	"pxNewListItem"
.LASF33:
	.string	"vListInsert"
	.ident	"GCC: (GNU) 10.4.0"
