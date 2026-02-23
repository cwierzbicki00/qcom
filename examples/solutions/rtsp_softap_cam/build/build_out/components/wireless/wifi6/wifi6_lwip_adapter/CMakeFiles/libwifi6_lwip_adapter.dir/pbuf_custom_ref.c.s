	.file	"pbuf_custom_ref.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.pbuf_custom_ref_free,"ax",@progbits
	.align	1
	.type	pbuf_custom_ref_free, @function
pbuf_custom_ref_free:
.LFB3:
	.file 1 ".\\components\\wireless\\wifi6\\wifi6_lwip_adapter\\pbuf_custom_ref.c"
	.loc 1 10 1
	.cfi_startproc
.LVL0:
	.loc 1 11 5
	.loc 1 14 5
	.loc 1 10 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	mv	s0,a0
	.loc 1 14 12
	lw	a0,20(a0)
.LVL1:
	.loc 1 10 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 14 8
	beq	a0,zero,.L2
	.loc 1 15 9 is_stmt 1
	call	pbuf_free
.LVL2:
	.loc 1 16 9
	.loc 1 16 19 is_stmt 0
	sw	zero,20(s0)
.L2:
	.loc 1 20 5 is_stmt 1
	mv	a0,s0
	.loc 1 21 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
.LVL3:
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 20 5
	tail	mem_free
.LVL4:
	.cfi_endproc
.LFE3:
	.size	pbuf_custom_ref_free, .-pbuf_custom_ref_free
	.section	.text.pbuf_custom_ref_create,"ax",@progbits
	.align	1
	.globl	pbuf_custom_ref_create
	.type	pbuf_custom_ref_create, @function
pbuf_custom_ref_create:
.LFB4:
	.loc 1 28 1 is_stmt 1
	.cfi_startproc
.LVL5:
	.loc 1 29 5
	.loc 1 30 5
	.loc 1 32 5
	.loc 1 28 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	.cfi_offset 8, -8
	mv	s0,a0
	.loc 1 32 11
	li	a0,24
.LVL6:
	.loc 1 28 1
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	ra,28(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.loc 1 28 1
	mv	s1,a1
	mv	s2,a2
	.loc 1 32 11
	call	mem_malloc
.LVL7:
	mv	a3,a0
.LVL8:
	.loc 1 33 5 is_stmt 1
	.loc 1 33 8 is_stmt 0
	beq	a0,zero,.L7
	.loc 1 36 5 is_stmt 1
	.loc 1 36 34 is_stmt 0
	lui	a4,%hi(pbuf_custom_ref_free)
	addi	a4,a4,%lo(pbuf_custom_ref_free)
	sw	a4,16(a0)
	sw	a0,12(sp)
	.loc 1 38 5 is_stmt 1
	mv	a0,s0
.LVL9:
	call	pbuf_ref
.LVL10:
	.loc 1 39 5
	.loc 1 39 15 is_stmt 0
	lw	a3,12(sp)
	.loc 1 40 9
	lw	a4,4(s0)
	mv	a5,s2
	.loc 1 39 15
	sw	s0,20(a3)
	.loc 1 40 5 is_stmt 1
	.loc 1 40 9 is_stmt 0
	add	a4,a4,s1
	li	a2,65
	mv	a1,s2
	li	a0,0
	call	pbuf_alloced_custom
.LVL11:
	.loc 1 43 13
	lw	a5,0(s0)
	.loc 1 40 9
	mv	a3,a0
.LVL12:
	.loc 1 43 5 is_stmt 1
	.loc 1 43 8 is_stmt 0
	beq	a5,zero,.L7
	.loc 1 44 9 is_stmt 1
	.loc 1 46 28 is_stmt 0
	lhu	a1,10(s0)
	.loc 1 44 17
	sw	a5,0(a0)
	.loc 1 46 9 is_stmt 1
	.loc 1 46 28 is_stmt 0
	sub	a1,a1,s1
	.loc 1 46 16
	sh	a1,10(a0)
.LVL13:
.L7:
	.loc 1 49 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL14:
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	mv	a0,a3
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	pbuf_custom_ref_create, .-pbuf_custom_ref_create
	.text
.Letext0:
	.file 2 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\machine\\_default_types.h"
	.file 3 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\sys\\_stdint.h"
	.file 4 ".\\components\\net\\lwip\\lwip\\src\\include/lwip/arch.h"
	.file 5 ".\\components\\net\\lwip\\lwip\\src\\include/lwip/pbuf.h"
	.file 6 ".\\components\\net\\lwip\\lwip\\src\\include/lwip/mem.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x347
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF43
	.byte	0xc
	.4byte	.LASF44
	.4byte	.LASF45
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x4
	.4byte	.LASF3
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x3f
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x4
	.4byte	.LASF4
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x59
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x5
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x33
	.byte	0x4
	.4byte	.LASF13
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x4d
	.byte	0x4
	.4byte	.LASF14
	.byte	0x4
	.byte	0x7d
	.byte	0x11
	.4byte	0x8c
	.byte	0x4
	.4byte	.LASF15
	.byte	0x4
	.byte	0x7f
	.byte	0x12
	.4byte	0x98
	.byte	0x6
	.byte	0x7
	.byte	0x2
	.4byte	0x59
	.byte	0x5
	.byte	0x59
	.byte	0xe
	.4byte	0xed
	.byte	0x7
	.4byte	.LASF16
	.2byte	0x1ba
	.byte	0x7
	.4byte	.LASF17
	.2byte	0x1a6
	.byte	0x7
	.4byte	.LASF18
	.2byte	0x192
	.byte	0x7
	.4byte	.LASF19
	.2byte	0x184
	.byte	0x8
	.4byte	.LASF20
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x7
	.byte	0x2
	.4byte	0x59
	.byte	0x5
	.byte	0x91
	.byte	0xe
	.4byte	0x116
	.byte	0x7
	.4byte	.LASF21
	.2byte	0x280
	.byte	0x8
	.4byte	.LASF22
	.byte	0x1
	.byte	0x8
	.4byte	.LASF23
	.byte	0x41
	.byte	0x7
	.4byte	.LASF24
	.2byte	0x182
	.byte	0
	.byte	0x9
	.4byte	.LASF32
	.byte	0x10
	.byte	0x5
	.byte	0xba
	.byte	0x8
	.4byte	0x18c
	.byte	0xa
	.4byte	.LASF25
	.byte	0x5
	.byte	0xbc
	.byte	0x10
	.4byte	0x18c
	.byte	0
	.byte	0xa
	.4byte	.LASF26
	.byte	0x5
	.byte	0xbf
	.byte	0x9
	.4byte	0x83
	.byte	0x4
	.byte	0xa
	.4byte	.LASF27
	.byte	0x5
	.byte	0xc8
	.byte	0x9
	.4byte	0xb0
	.byte	0x8
	.byte	0xb
	.string	"len"
	.byte	0x5
	.byte	0xcb
	.byte	0x9
	.4byte	0xb0
	.byte	0xa
	.byte	0xa
	.4byte	.LASF28
	.byte	0x5
	.byte	0xd0
	.byte	0x8
	.4byte	0xa4
	.byte	0xc
	.byte	0xa
	.4byte	.LASF29
	.byte	0x5
	.byte	0xd3
	.byte	0x8
	.4byte	0xa4
	.byte	0xd
	.byte	0xb
	.string	"ref"
	.byte	0x5
	.byte	0xda
	.byte	0x8
	.4byte	0xa4
	.byte	0xe
	.byte	0xa
	.4byte	.LASF30
	.byte	0x5
	.byte	0xdd
	.byte	0x8
	.4byte	0xa4
	.byte	0xf
	.byte	0
	.byte	0xc
	.byte	0x4
	.4byte	0x116
	.byte	0x4
	.4byte	.LASF31
	.byte	0x5
	.byte	0xf2
	.byte	0x10
	.4byte	0x19e
	.byte	0xc
	.byte	0x4
	.4byte	0x1a4
	.byte	0xd
	.4byte	0x1af
	.byte	0xe
	.4byte	0x18c
	.byte	0
	.byte	0x9
	.4byte	.LASF33
	.byte	0x14
	.byte	0x5
	.byte	0xf5
	.byte	0x8
	.4byte	0x1d7
	.byte	0xa
	.4byte	.LASF32
	.byte	0x5
	.byte	0xf7
	.byte	0xf
	.4byte	0x116
	.byte	0
	.byte	0xa
	.4byte	.LASF34
	.byte	0x5
	.byte	0xf9
	.byte	0x17
	.4byte	0x192
	.byte	0x10
	.byte	0
	.byte	0x9
	.4byte	.LASF35
	.byte	0x18
	.byte	0x1
	.byte	0x4
	.byte	0x8
	.4byte	0x1fe
	.byte	0xb
	.string	"pc"
	.byte	0x1
	.byte	0x5
	.byte	0x18
	.4byte	0x1af
	.byte	0
	.byte	0xa
	.4byte	.LASF36
	.byte	0x1
	.byte	0x6
	.byte	0x12
	.4byte	0x18c
	.byte	0x14
	.byte	0
	.byte	0xf
	.4byte	.LASF46
	.byte	0x1
	.byte	0x1b
	.byte	0xe
	.4byte	0x18c
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x2b6
	.byte	0x10
	.4byte	.LASF36
	.byte	0x1
	.byte	0x1b
	.byte	0x32
	.4byte	0x18c
	.4byte	.LLST2
	.byte	0x10
	.4byte	.LASF37
	.byte	0x1
	.byte	0x1b
	.byte	0x3e
	.4byte	0xb0
	.4byte	.LLST3
	.byte	0x11
	.string	"len"
	.byte	0x1
	.byte	0x1b
	.byte	0x4c
	.4byte	0xb0
	.4byte	.LLST4
	.byte	0x12
	.string	"n"
	.byte	0x1
	.byte	0x1d
	.byte	0x12
	.4byte	0x18c
	.4byte	.LLST5
	.byte	0x12
	.string	"pcr"
	.byte	0x1
	.byte	0x1e
	.byte	0x1d
	.4byte	0x2b6
	.4byte	.LLST6
	.byte	0x13
	.4byte	.LVL7
	.4byte	0x30b
	.4byte	0x279
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x48
	.byte	0
	.byte	0x13
	.4byte	.LVL10
	.4byte	0x317
	.4byte	0x28d
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL11
	.4byte	0x324
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x41
	.byte	0x14
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0x14
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x4
	.4byte	0x1d7
	.byte	0x16
	.4byte	.LASF47
	.byte	0x1
	.byte	0x9
	.byte	0xd
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x30b
	.byte	0x11
	.string	"p"
	.byte	0x1
	.byte	0x9
	.byte	0x2f
	.4byte	0x18c
	.4byte	.LLST0
	.byte	0x12
	.string	"pcr"
	.byte	0x1
	.byte	0xb
	.byte	0x1d
	.4byte	0x2b6
	.4byte	.LLST1
	.byte	0x17
	.4byte	.LVL2
	.4byte	0x331
	.byte	0x18
	.4byte	.LVL4
	.4byte	0x33e
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x6
	.byte	0x4a
	.byte	0x7
	.byte	0x1a
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x5
	.2byte	0x124
	.byte	0x6
	.byte	0x1a
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x5
	.2byte	0x116
	.byte	0xe
	.byte	0x1a
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x5
	.2byte	0x125
	.byte	0x6
	.byte	0x19
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x6
	.byte	0x4c
	.byte	0x6
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
	.byte	0x8
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
	.byte	0xe
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
	.byte	0x7
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0xa
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
	.byte	0xb
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
	.byte	0xc
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x11
	.byte	0x5
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x34
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x2e
	.byte	0x1
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
	.byte	0x17
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0x6e
	.byte	0xe
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0x6e
	.byte	0xe
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL14
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL7-1
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL7-1
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL10-1
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4-1
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4-1
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF43:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF3:
	.string	"__uint8_t"
.LASF25:
	.string	"next"
.LASF38:
	.string	"mem_malloc"
.LASF37:
	.string	"offset"
.LASF22:
	.string	"PBUF_ROM"
.LASF40:
	.string	"pbuf_alloced_custom"
.LASF19:
	.string	"PBUF_RAW_TX"
.LASF12:
	.string	"uint8_t"
.LASF35:
	.string	"pbuf_custom_ref"
.LASF47:
	.string	"pbuf_custom_ref_free"
.LASF18:
	.string	"PBUF_LINK"
.LASF1:
	.string	"unsigned char"
.LASF7:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF33:
	.string	"pbuf_custom"
.LASF21:
	.string	"PBUF_RAM"
.LASF44:
	.string	".\\components\\wireless\\wifi6\\wifi6_lwip_adapter\\pbuf_custom_ref.c"
.LASF4:
	.string	"__uint16_t"
.LASF15:
	.string	"u16_t"
.LASF27:
	.string	"tot_len"
.LASF34:
	.string	"custom_free_function"
.LASF23:
	.string	"PBUF_REF"
.LASF10:
	.string	"unsigned int"
.LASF29:
	.string	"flags"
.LASF39:
	.string	"pbuf_ref"
.LASF9:
	.string	"long long unsigned int"
.LASF46:
	.string	"pbuf_custom_ref_create"
.LASF14:
	.string	"u8_t"
.LASF41:
	.string	"pbuf_free"
.LASF26:
	.string	"payload"
.LASF28:
	.string	"type_internal"
.LASF45:
	.string	"C:\\\\Users\\\\cwier\\\\Documents\\\\GitHub\\\\qcom\\\\examples\\\\solutions\\\\rtsp_softap_cam\\\\build\\\\build_out\\\\components\\\\wireless\\\\wifi6\\\\wifi6_lwip_adapter"
.LASF42:
	.string	"mem_free"
.LASF8:
	.string	"long long int"
.LASF32:
	.string	"pbuf"
.LASF36:
	.string	"orig"
.LASF24:
	.string	"PBUF_POOL"
.LASF20:
	.string	"PBUF_RAW"
.LASF17:
	.string	"PBUF_IP"
.LASF2:
	.string	"short int"
.LASF31:
	.string	"pbuf_free_custom_fn"
.LASF13:
	.string	"uint16_t"
.LASF16:
	.string	"PBUF_TRANSPORT"
.LASF6:
	.string	"long int"
.LASF11:
	.string	"char"
.LASF0:
	.string	"signed char"
.LASF30:
	.string	"if_idx"
	.ident	"GCC: (GNU) 10.4.0"
