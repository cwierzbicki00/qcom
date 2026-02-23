	.file	"sha1-prf.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.sha1_prf,"ax",@progbits
	.align	1
	.globl	sha1_prf
	.type	sha1_prf, @function
sha1_prf:
.LFB106:
	.file 1 ".\\components\\wireless\\wifi6\\qcc74x_wpa_supplicant\\src\\crypto\\sha1-prf.c"
	.loc 1 32 1
	.cfi_startproc
.LVL0:
	.loc 1 33 2
	.loc 1 32 1 is_stmt 0
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	s2,80(sp)
	.cfi_offset 18, -16
	mv	s2,a0
	.loc 1 36 21
	mv	a0,a2
.LVL1:
	.loc 1 32 1
	sw	s0,88(sp)
	sw	s1,84(sp)
	sw	s3,76(sp)
	sw	s5,68(sp)
	sw	a1,12(sp)
	sw	a3,8(sp)
	sw	a4,4(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	.cfi_offset 21, -28
	mv	s3,a5
	.loc 1 36 21
	sw	a2,0(sp)
	.loc 1 32 1
	sw	ra,92(sp)
	sw	s4,72(sp)
	.cfi_offset 1, -4
	.cfi_offset 20, -24
	.loc 1 32 1
	mv	s1,a6
	.loc 1 33 5
	sb	zero,19(sp)
	.loc 1 34 2 is_stmt 1
	.loc 1 35 2
	.loc 1 36 2
	.loc 1 36 21 is_stmt 0
	call	os_strlen
.LVL2:
	.loc 1 37 2 is_stmt 1
	.loc 1 38 2
	.loc 1 40 2
	.loc 1 40 10 is_stmt 0
	lw	a2,0(sp)
	.loc 1 42 10
	lw	a3,8(sp)
	.loc 1 43 9
	lw	a4,4(sp)
	.loc 1 44 10
	addi	a5,sp,19
	.loc 1 48 8
	lw	a1,12(sp)
	.loc 1 36 9
	addi	a0,a0,1
.LVL3:
	.loc 1 44 10
	sw	a5,28(sp)
	.loc 1 45 9
	li	a5,1
	.loc 1 40 10
	sw	a2,20(sp)
	.loc 1 41 2 is_stmt 1
	.loc 1 41 9 is_stmt 0
	sw	a0,32(sp)
	.loc 1 42 2 is_stmt 1
	.loc 1 42 10 is_stmt 0
	sw	a3,24(sp)
	.loc 1 43 2 is_stmt 1
	.loc 1 43 9 is_stmt 0
	sw	a4,36(sp)
	.loc 1 44 2 is_stmt 1
	.loc 1 45 2
	.loc 1 45 9 is_stmt 0
	sw	a5,40(sp)
	.loc 1 47 2 is_stmt 1
.LVL4:
	.loc 1 48 2
	.loc 1 47 6 is_stmt 0
	li	s0,0
	.loc 1 50 6
	li	s5,19
.LVL5:
.L2:
	.loc 1 48 8 is_stmt 1
	bgeu	s0,s1,.L7
	.loc 1 49 3
	sub	s4,s1,s0
.LVL6:
	.loc 1 50 3
	.loc 1 50 6 is_stmt 0
	bleu	s4,s5,.L3
	.loc 1 51 4 is_stmt 1
	.loc 1 51 8 is_stmt 0
	add	a5,s3,s0
	addi	a4,sp,32
	addi	a3,sp,20
	li	a2,3
	mv	a0,s2
	sw	a1,0(sp)
	call	hmac_sha1_vector
.LVL7:
	.loc 1 51 7
	lw	a1,0(sp)
	beq	a0,zero,.L4
.L6:
	.loc 1 53 12
	li	a0,-1
.LVL8:
.L1:
	.loc 1 67 1
	lw	ra,92(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
.LVL9:
	lw	s1,84(sp)
	.cfi_restore 9
.LVL10:
	lw	s2,80(sp)
	.cfi_restore 18
.LVL11:
	lw	s3,76(sp)
	.cfi_restore 19
.LVL12:
	lw	s4,72(sp)
	.cfi_restore 20
	lw	s5,68(sp)
	.cfi_restore 21
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
.LVL13:
	jr	ra
.LVL14:
.L4:
	.cfi_restore_state
	.loc 1 54 4 is_stmt 1
	.loc 1 62 10 is_stmt 0
	lbu	a5,19(sp)
	.loc 1 54 8
	addi	s0,s0,20
.LVL15:
	.loc 1 62 3 is_stmt 1
	.loc 1 62 10 is_stmt 0
	addi	a5,a5,1
	sb	a5,19(sp)
	j	.L2
.L3:
	.loc 1 56 4 is_stmt 1
	.loc 1 56 8 is_stmt 0
	addi	a5,sp,44
	addi	a4,sp,32
	addi	a3,sp,20
	li	a2,3
	mv	a0,s2
	call	hmac_sha1_vector
.LVL16:
	.loc 1 56 7
	bne	a0,zero,.L6
	.loc 1 59 4 is_stmt 1
	mv	a2,s4
	addi	a1,sp,44
	add	a0,s3,s0
	call	os_memcpy
.LVL17:
	.loc 1 60 4
.L7:
	.loc 1 64 2
	addi	a0,sp,44
	li	a1,20
	call	forced_memzero
.LVL18:
	.loc 1 66 2
	.loc 1 66 9 is_stmt 0
	li	a0,0
	j	.L1
	.cfi_endproc
.LFE106:
	.size	sha1_prf, .-sha1_prf
	.text
.Letext0:
	.file 2 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\machine\\_default_types.h"
	.file 3 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\sys\\_stdint.h"
	.file 4 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\lib\\gcc\\riscv64-unknown-elf\\10.4.0\\include\\stddef.h"
	.file 5 ".\\components\\wireless\\wifi6\\qcc74x_wpa_supplicant\\src\\utils/os.h"
	.file 6 ".\\components\\wireless\\wifi6\\qcc74x_wpa_supplicant\\src\\crypto\\sha1.h"
	.file 7 ".\\components\\wireless\\wifi6\\qcc74x_wpa_supplicant\\src\\utils/common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2d7
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF28
	.byte	0xc
	.4byte	.LASF29
	.4byte	.LASF30
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
	.byte	0x4
	.4byte	0x38
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
	.byte	0x5
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
	.4byte	0x75
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0x4
	.4byte	0x94
	.byte	0x6
	.byte	0x4
	.4byte	0x9b
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF13
	.byte	0x7
	.string	"u8"
	.byte	0x7
	.byte	0x95
	.byte	0x11
	.4byte	0x7c
	.byte	0x4
	.4byte	0xad
	.byte	0x6
	.byte	0x4
	.4byte	0xad
	.byte	0x8
	.4byte	.LASF31
	.byte	0x1
	.byte	0x1e
	.byte	0x5
	.4byte	0x6e
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
	.byte	0x1
	.byte	0x9c
	.4byte	0x26b
	.byte	0x9
	.string	"key"
	.byte	0x1
	.byte	0x1e
	.byte	0x18
	.4byte	0x26b
	.4byte	.LLST0
	.byte	0xa
	.4byte	.LASF14
	.byte	0x1
	.byte	0x1e
	.byte	0x24
	.4byte	0x88
	.4byte	.LLST1
	.byte	0xa
	.4byte	.LASF15
	.byte	0x1
	.byte	0x1e
	.byte	0x39
	.4byte	0xa0
	.4byte	.LLST2
	.byte	0xa
	.4byte	.LASF16
	.byte	0x1
	.byte	0x1f
	.byte	0x11
	.4byte	0x26b
	.4byte	.LLST3
	.byte	0xa
	.4byte	.LASF17
	.byte	0x1
	.byte	0x1f
	.byte	0x1e
	.4byte	0x88
	.4byte	.LLST4
	.byte	0x9
	.string	"buf"
	.byte	0x1
	.byte	0x1f
	.byte	0x2c
	.4byte	0xbd
	.4byte	.LLST5
	.byte	0xa
	.4byte	.LASF18
	.byte	0x1
	.byte	0x1f
	.byte	0x38
	.4byte	0x88
	.4byte	.LLST6
	.byte	0xb
	.4byte	.LASF19
	.byte	0x1
	.byte	0x21
	.byte	0x5
	.4byte	0xad
	.byte	0x3
	.byte	0x91
	.byte	0xb3,0x7f
	.byte	0xc
	.string	"pos"
	.byte	0x1
	.byte	0x22
	.byte	0x9
	.4byte	0x88
	.4byte	.LLST7
	.byte	0xd
	.4byte	.LASF20
	.byte	0x1
	.byte	0x22
	.byte	0xe
	.4byte	0x88
	.4byte	.LLST8
	.byte	0xb
	.4byte	.LASF21
	.byte	0x1
	.byte	0x23
	.byte	0x5
	.4byte	0x271
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0xd
	.4byte	.LASF22
	.byte	0x1
	.byte	0x24
	.byte	0x9
	.4byte	0x88
	.4byte	.LLST9
	.byte	0xb
	.4byte	.LASF23
	.byte	0x1
	.byte	0x25
	.byte	0x17
	.4byte	0x281
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0xe
	.string	"len"
	.byte	0x1
	.byte	0x26
	.byte	0x9
	.4byte	0x297
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0xf
	.4byte	.LVL2
	.4byte	0x2a7
	.4byte	0x1d0
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x72
	.byte	0
	.byte	0x6
	.byte	0
	.byte	0xf
	.4byte	.LVL7
	.4byte	0x2b4
	.4byte	0x206
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x72
	.byte	0
	.byte	0x6
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x33
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x10
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0x10
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.byte	0x83
	.byte	0
	.byte	0x78
	.byte	0
	.byte	0x22
	.byte	0
	.byte	0xf
	.4byte	.LVL16
	.4byte	0x2b4
	.4byte	0x232
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x33
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x10
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0x10
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0
	.byte	0xf
	.4byte	.LVL17
	.4byte	0x2c0
	.4byte	0x255
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x83
	.byte	0
	.byte	0x78
	.byte	0
	.byte	0x22
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LVL18
	.4byte	0x2cd
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xb8
	.byte	0x12
	.4byte	0xad
	.4byte	0x281
	.byte	0x13
	.4byte	0x75
	.byte	0x13
	.byte	0
	.byte	0x12
	.4byte	0x291
	.4byte	0x291
	.byte	0x13
	.4byte	0x75
	.byte	0x2
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x3f
	.byte	0x12
	.4byte	0x88
	.4byte	0x2a7
	.byte	0x13
	.4byte	0x75
	.byte	0x2
	.byte	0
	.byte	0x14
	.4byte	.LASF24
	.4byte	.LASF24
	.byte	0x5
	.2byte	0x183
	.byte	0x8
	.byte	0x15
	.4byte	.LASF25
	.4byte	.LASF25
	.byte	0x6
	.byte	0xe
	.byte	0x5
	.byte	0x14
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x5
	.2byte	0x154
	.byte	0x8
	.byte	0x14
	.4byte	.LASF27
	.4byte	.LASF27
	.byte	0x7
	.2byte	0x25d
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x5
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
	.byte	0x6
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
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
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x10
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x14
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
	.byte	0x15
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LFE106
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2-1
	.4byte	.LVL13
	.2byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x3
	.byte	0x72
	.byte	0xac,0x7f
	.4byte	.LVL14
	.4byte	.LFE106
	.2byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL2-1
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x72
	.byte	0
	.4byte	.LVL5
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
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL2-1
	.4byte	.LVL13
	.2byte	0x3
	.byte	0x91
	.byte	0xa8,0x7f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x3
	.byte	0x72
	.byte	0xa8,0x7f
	.4byte	.LVL14
	.4byte	.LFE106
	.2byte	0x3
	.byte	0x91
	.byte	0xa8,0x7f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL2-1
	.4byte	.LVL13
	.2byte	0x3
	.byte	0x91
	.byte	0xa4,0x7f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x3
	.byte	0x72
	.byte	0xa4,0x7f
	.4byte	.LVL14
	.4byte	.LFE106
	.2byte	0x3
	.byte	0x91
	.byte	0xa4,0x7f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL2-1
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LFE106
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL2-1
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL10
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x60
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LFE106
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL14
	.4byte	.LFE106
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x3
	.byte	0x7a
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
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
.LASF28:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF9:
	.string	"__uint8_t"
.LASF11:
	.string	"size_t"
.LASF26:
	.string	"os_memcpy"
.LASF4:
	.string	"long int"
.LASF3:
	.string	"short unsigned int"
.LASF16:
	.string	"data"
.LASF17:
	.string	"data_len"
.LASF19:
	.string	"counter"
.LASF7:
	.string	"long long unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"long unsigned int"
.LASF23:
	.string	"addr"
.LASF30:
	.string	"C:\\\\Users\\\\cwier\\\\Documents\\\\GitHub\\\\qcom\\\\examples\\\\usb_cam_stream\\\\build\\\\build_out\\\\components\\\\wireless\\\\wifi6\\\\qcc74x_wpa_supplicant"
.LASF18:
	.string	"buf_len"
.LASF25:
	.string	"hmac_sha1_vector"
.LASF31:
	.string	"sha1_prf"
.LASF8:
	.string	"unsigned int"
.LASF29:
	.string	".\\components\\wireless\\wifi6\\qcc74x_wpa_supplicant\\src\\crypto\\sha1-prf.c"
.LASF12:
	.string	"char"
.LASF10:
	.string	"uint8_t"
.LASF21:
	.string	"hash"
.LASF6:
	.string	"long long int"
.LASF27:
	.string	"forced_memzero"
.LASF2:
	.string	"short int"
.LASF20:
	.string	"plen"
.LASF14:
	.string	"key_len"
.LASF24:
	.string	"os_strlen"
.LASF0:
	.string	"signed char"
.LASF22:
	.string	"label_len"
.LASF15:
	.string	"label"
.LASF13:
	.string	"_Bool"
	.ident	"GCC: (GNU) 10.4.0"
