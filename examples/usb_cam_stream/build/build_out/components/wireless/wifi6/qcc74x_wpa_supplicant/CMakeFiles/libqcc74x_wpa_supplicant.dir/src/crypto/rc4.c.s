	.file	"rc4.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.rc4_skip,"ax",@progbits
	.align	1
	.globl	rc4_skip
	.type	rc4_skip, @function
rc4_skip:
.LFB106:
	.file 1 ".\\components\\wireless\\wifi6\\qcc74x_wpa_supplicant\\src\\crypto\\rc4.c"
	.loc 1 18 1
	.cfi_startproc
.LVL0:
	.loc 1 19 2
	.loc 1 20 2
	.loc 1 21 2
	.loc 1 24 2
	.loc 1 24 14
	.loc 1 18 1 is_stmt 0
	addi	sp,sp,-256
	.cfi_def_cfa_offset 256
	.loc 1 24 9
	li	a5,0
	.loc 1 24 2
	li	a6,256
.LVL1:
.L2:
	.loc 1 25 3 is_stmt 1 discriminator 3
	.loc 1 25 8 is_stmt 0 discriminator 3
	srb	a5,a5,sp,0
	.loc 1 24 23 is_stmt 1 discriminator 3
	.loc 1 24 24 is_stmt 0 discriminator 3
	addi	a5,a5,1
.LVL2:
	.loc 1 24 14 is_stmt 1 discriminator 3
	.loc 1 24 2 is_stmt 0 discriminator 3
	bne	a5,a6,.L2
	.loc 1 27 7
	li	a7,0
	.loc 1 26 4
	li	a5,0
.LVL3:
	.loc 1 28 9
	li	a6,0
	.loc 1 28 2
	li	t4,256
.L4:
.LVL4:
	.loc 1 29 3 is_stmt 1
	.loc 1 29 22 is_stmt 0
	lrbu	t1,a0,a7,0
	.loc 1 29 13
	lrbu	t3,sp,a6,0
	.loc 1 30 7
	addi	a7,a7,1
.LVL5:
	.loc 1 29 17
	add	t1,t1,t3
	add	a5,t1,a5
.LVL6:
	.loc 1 29 5
	andi	a5,a5,255
.LVL7:
	.loc 1 30 3 is_stmt 1
	.loc 1 31 3
	.loc 1 31 6 is_stmt 0
	bltu	a7,a1,.L3
	.loc 1 32 9
	li	a7,0
.LVL8:
.L3:
	.loc 1 33 3 is_stmt 1 discriminator 2
.LBB2:
	.loc 1 33 8 discriminator 2
	.loc 1 33 21 discriminator 2
	.loc 1 33 29 is_stmt 0 discriminator 2
	lrbu	t1,sp,a5,0
	.loc 1 33 26 discriminator 2
	srb	t1,sp,a6,0
	.loc 1 33 34 is_stmt 1 discriminator 2
	.loc 1 33 39 is_stmt 0 discriminator 2
	srb	t3,sp,a5,0
.LBE2:
	.loc 1 33 51 is_stmt 1 discriminator 2
	.loc 1 28 23 discriminator 2
	.loc 1 28 24 is_stmt 0 discriminator 2
	addi	a6,a6,1
.LVL9:
	.loc 1 28 14 is_stmt 1 discriminator 2
	.loc 1 28 2 is_stmt 0 discriminator 2
	bne	a6,t4,.L4
	.loc 1 38 9
	li	a0,0
.LVL10:
	.loc 1 37 8
	li	a1,0
.LVL11:
	.loc 1 37 4
	li	a5,0
.LVL12:
.L5:
	.loc 1 38 14 is_stmt 1 discriminator 1
	.loc 1 38 2 is_stmt 0 discriminator 1
	bne	a0,a2,.L6
	.loc 1 46 9
	li	a0,0
.LVL13:
.L7:
	.loc 1 46 14 is_stmt 1 discriminator 1
	.loc 1 46 2 is_stmt 0 discriminator 1
	bne	a0,a4,.L8
	.loc 1 53 2 is_stmt 1
	.loc 1 54 1 is_stmt 0
	li	a0,0
.LVL14:
	addi	sp,sp,256
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	ra
.LVL15:
.L6:
	.cfi_restore_state
	.loc 1 39 3 is_stmt 1 discriminator 3
	.loc 1 39 10 is_stmt 0 discriminator 3
	addi	a5,a5,1
.LVL16:
	.loc 1 39 5 discriminator 3
	andi	a5,a5,255
.LVL17:
	.loc 1 40 3 is_stmt 1 discriminator 3
	.loc 1 40 13 is_stmt 0 discriminator 3
	lrbu	a6,sp,a5,0
	.loc 1 38 25 discriminator 3
	addi	a0,a0,1
.LVL18:
	.loc 1 40 10 discriminator 3
	add	a1,a6,a1
.LVL19:
	.loc 1 40 5 discriminator 3
	andi	a1,a1,255
.LVL20:
	.loc 1 41 3 is_stmt 1 discriminator 3
.LBB3:
	.loc 1 41 8 discriminator 3
	.loc 1 41 21 discriminator 3
	.loc 1 41 29 is_stmt 0 discriminator 3
	lrbu	a7,sp,a1,0
	.loc 1 41 26 discriminator 3
	srb	a7,sp,a5,0
	.loc 1 41 34 is_stmt 1 discriminator 3
	.loc 1 41 39 is_stmt 0 discriminator 3
	srb	a6,sp,a1,0
.LBE3:
	.loc 1 41 51 is_stmt 1 discriminator 3
	.loc 1 38 24 discriminator 3
.LVL21:
	j	.L5
.LVL22:
.L8:
	.loc 1 47 3 discriminator 3
	.loc 1 47 10 is_stmt 0 discriminator 3
	addi	a5,a5,1
.LVL23:
	.loc 1 47 5 discriminator 3
	andi	a5,a5,255
.LVL24:
	.loc 1 48 3 is_stmt 1 discriminator 3
	.loc 1 48 13 is_stmt 0 discriminator 3
	lrbu	a2,sp,a5,0
	.loc 1 48 10 discriminator 3
	add	a1,a2,a1
.LVL25:
	.loc 1 48 5 discriminator 3
	andi	a1,a1,255
.LVL26:
	.loc 1 49 3 is_stmt 1 discriminator 3
.LBB4:
	.loc 1 49 8 discriminator 3
	.loc 1 49 21 discriminator 3
	.loc 1 49 29 is_stmt 0 discriminator 3
	lrbu	a6,sp,a1,0
	.loc 1 49 26 discriminator 3
	srb	a6,sp,a5,0
	.loc 1 49 34 is_stmt 1 discriminator 3
	.loc 1 49 39 is_stmt 0 discriminator 3
	srb	a2,sp,a1,0
.LBE4:
	.loc 1 49 51 is_stmt 1 discriminator 3
	.loc 1 50 3 discriminator 3
.LVL27:
	.loc 1 50 29 is_stmt 0 discriminator 3
	lrbu	a6,sp,a5,0
	add	a2,a2,a6
.LVL28:
	andi	a2,a2,0xff
	.loc 1 50 10 discriminator 3
	lrbu	a6,a3,a0,0
	lrbu	a2,sp,a2,0
	xor	a2,a2,a6
	srb	a2,a3,a0,0
	.loc 1 46 28 is_stmt 1 discriminator 3
	.loc 1 46 29 is_stmt 0 discriminator 3
	addi	a0,a0,1
.LVL29:
	j	.L7
	.cfi_endproc
.LFE106:
	.size	rc4_skip, .-rc4_skip
	.text
.Letext0:
	.file 2 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\machine\\_default_types.h"
	.file 3 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\sys\\_stdint.h"
	.file 4 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\lib\\gcc\\riscv64-unknown-elf\\10.4.0\\include\\stddef.h"
	.file 5 ".\\components\\wireless\\wifi6\\qcc74x_wpa_supplicant\\src\\utils/common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1db
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF19
	.byte	0xc
	.4byte	.LASF20
	.4byte	.LASF21
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x38
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0xd1
	.byte	0x16
	.4byte	0x70
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF13
	.byte	0x5
	.string	"u32"
	.byte	0x5
	.byte	0x93
	.byte	0x16
	.4byte	0x70
	.byte	0x5
	.string	"u8"
	.byte	0x5
	.byte	0x95
	.byte	0x11
	.4byte	0x77
	.byte	0x6
	.4byte	0xa9
	.byte	0x7
	.byte	0x4
	.4byte	0xa9
	.byte	0x8
	.4byte	.LASF22
	.byte	0x1
	.byte	0x10
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
	.byte	0x1
	.byte	0x9c
	.4byte	0x1cc
	.byte	0x9
	.string	"key"
	.byte	0x1
	.byte	0x10
	.byte	0x18
	.4byte	0x1cc
	.4byte	.LLST0
	.byte	0xa
	.4byte	.LASF14
	.byte	0x1
	.byte	0x10
	.byte	0x24
	.4byte	0x83
	.4byte	.LLST1
	.byte	0xa
	.4byte	.LASF15
	.byte	0x1
	.byte	0x10
	.byte	0x33
	.4byte	0x83
	.4byte	.LLST2
	.byte	0xb
	.4byte	.LASF16
	.byte	0x1
	.byte	0x11
	.byte	0xb
	.4byte	0xb9
	.byte	0x1
	.byte	0x5d
	.byte	0xb
	.4byte	.LASF17
	.byte	0x1
	.byte	0x11
	.byte	0x18
	.4byte	0x83
	.byte	0x1
	.byte	0x5e
	.byte	0xc
	.string	"i"
	.byte	0x1
	.byte	0x13
	.byte	0x6
	.4byte	0x9d
	.4byte	.LLST3
	.byte	0xc
	.string	"j"
	.byte	0x1
	.byte	0x13
	.byte	0x9
	.4byte	0x9d
	.4byte	.LLST4
	.byte	0xc
	.string	"k"
	.byte	0x1
	.byte	0x13
	.byte	0xc
	.4byte	0x9d
	.4byte	.LLST5
	.byte	0xd
	.string	"S"
	.byte	0x1
	.byte	0x14
	.byte	0x5
	.4byte	0x1d2
	.byte	0x3
	.byte	0x91
	.byte	0x80,0x7e
	.byte	0xc
	.string	"pos"
	.byte	0x1
	.byte	0x14
	.byte	0xe
	.4byte	0xb9
	.4byte	.LLST6
	.byte	0xe
	.4byte	.LASF18
	.byte	0x1
	.byte	0x15
	.byte	0x9
	.4byte	0x83
	.4byte	.LLST7
	.byte	0xf
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x197
	.byte	0xd
	.string	"t"
	.byte	0x1
	.byte	0x21
	.byte	0xb
	.4byte	0xa9
	.byte	0x1
	.byte	0x6c
	.byte	0
	.byte	0xf
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x1b3
	.byte	0xc
	.string	"t"
	.byte	0x1
	.byte	0x29
	.byte	0xb
	.4byte	0xa9
	.4byte	.LLST8
	.byte	0
	.byte	0x10
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0xc
	.string	"t"
	.byte	0x1
	.byte	0x31
	.byte	0xb
	.4byte	0xa9
	.4byte	.LLST9
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xb4
	.byte	0x11
	.4byte	0xa9
	.byte	0x12
	.4byte	0x70
	.byte	0xff
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
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x16
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
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
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
	.byte	0x9
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
	.byte	0xa
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
	.byte	0xb
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
	.byte	0xc
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
	.byte	0xd
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0xf
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LFE106
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL11
	.4byte	.LFE106
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL22
	.4byte	.LFE106
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL4
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL12
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x3
	.byte	0x7f
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x3
	.byte	0x7f
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LFE106
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL7
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL12
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL20
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL26
	.4byte	.LFE106
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x3
	.byte	0x7a
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LFE106
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x6
	.byte	0x7d
	.byte	0
	.byte	0x7a
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL27
	.2byte	0x6
	.byte	0x7d
	.byte	0
	.byte	0x7a
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x8
	.byte	0x7a
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LFE106
	.2byte	0x6
	.byte	0x7a
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x3
	.byte	0x81
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x61
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL28
	.4byte	.LFE106
	.2byte	0x9
	.byte	0x91
	.byte	0
	.byte	0x7b
	.byte	0
	.byte	0x22
	.byte	0xa
	.2byte	0x100
	.byte	0x1c
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB106
	.4byte	.LFE106
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF19:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF9:
	.string	"__uint8_t"
.LASF11:
	.string	"size_t"
.LASF15:
	.string	"skip"
.LASF20:
	.string	".\\components\\wireless\\wifi6\\qcc74x_wpa_supplicant\\src\\crypto\\rc4.c"
.LASF17:
	.string	"data_len"
.LASF22:
	.string	"rc4_skip"
.LASF16:
	.string	"data"
.LASF7:
	.string	"long long unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF21:
	.string	"C:\\\\Users\\\\cwier\\\\Documents\\\\GitHub\\\\qcom\\\\examples\\\\usb_cam_stream\\\\build\\\\build_out\\\\components\\\\wireless\\\\wifi6\\\\qcc74x_wpa_supplicant"
.LASF18:
	.string	"kpos"
.LASF8:
	.string	"unsigned int"
.LASF12:
	.string	"char"
.LASF10:
	.string	"uint8_t"
.LASF6:
	.string	"long long int"
.LASF2:
	.string	"short int"
.LASF14:
	.string	"keylen"
.LASF4:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF13:
	.string	"_Bool"
	.ident	"GCC: (GNU) 10.4.0"
