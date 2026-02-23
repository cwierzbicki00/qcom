	.file	"aes-unwrap.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.aes_unwrap,"ax",@progbits
	.align	1
	.globl	aes_unwrap
	.type	aes_unwrap, @function
aes_unwrap:
.LFB106:
	.file 1 ".\\components\\wireless\\wifi6\\qcc74x_wpa_supplicant\\src\\crypto\\aes-unwrap.c"
	.loc 1 28 1
	.cfi_startproc
.LVL0:
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	s1,84(sp)
	.cfi_offset 9, -12
	.loc 1 35 2 is_stmt 0
	addi	s1,sp,24
	.loc 1 28 1
	sw	s2,80(sp)
	sw	s4,72(sp)
	sw	s5,68(sp)
	.cfi_offset 18, -16
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	mv	s4,a0
	mv	s5,a1
	mv	s2,a2
	.loc 1 29 2 is_stmt 1
	.loc 1 30 2
	.loc 1 31 2
	.loc 1 32 2
	.loc 1 35 2
	mv	a1,a3
.LVL1:
	li	a2,8
.LVL2:
	mv	a0,s1
.LVL3:
	.loc 1 28 1 is_stmt 0
	sw	ra,92(sp)
	sw	s0,88(sp)
	sw	s3,76(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 19, -20
	mv	s0,a4
	sw	s6,64(sp)
	sw	s7,60(sp)
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.loc 1 35 2
	sw	a3,12(sp)
	call	os_memcpy
.LVL4:
	.loc 1 36 2 is_stmt 1
	.loc 1 37 2
	lw	a3,12(sp)
	.loc 1 37 29 is_stmt 0
	slli	s3,s2,3
	.loc 1 37 2
	mv	a2,s3
	addi	a1,a3,8
	mv	a0,s0
	call	os_memcpy
.LVL5:
	.loc 1 39 2 is_stmt 1
	.loc 1 39 8 is_stmt 0
	mv	a1,s5
	mv	a0,s4
	call	aes_decrypt_init
.LVL6:
	.loc 1 40 2 is_stmt 1
	.loc 1 40 5 is_stmt 0
	beq	a0,zero,.L2
	.loc 1 51 23
	addi	s3,s3,-8
	.loc 1 51 5
	add	s3,s0,s3
	li	s0,5
.LVL7:
	mul	s0,s2,s0
	mv	s6,a0
	li	s7,6
.LVL8:
.L5:
	.loc 1 51 3 is_stmt 1
	.loc 1 52 3
	.loc 1 52 10 is_stmt 0
	mv	s4,s2
	.loc 1 51 5
	mv	s5,s3
.LVL9:
.L3:
	.loc 1 52 15 is_stmt 1 discriminator 1
	.loc 1 52 3 is_stmt 0 discriminator 1
	bgt	s4,zero,.L4
	.loc 1 50 22 is_stmt 1 discriminator 2
.LVL10:
	.loc 1 50 14 discriminator 2
	.loc 1 50 2 is_stmt 0 discriminator 2
	addi	s7,s7,-1
.LVL11:
	sub	s0,s0,s2
	bne	s7,zero,.L5
	.loc 1 67 2 is_stmt 1
	mv	a0,s6
	call	aes_decrypt_deinit
.LVL12:
	.loc 1 74 2
	.loc 1 74 14
	.loc 1 74 9 is_stmt 0
	li	a5,0
	.loc 1 75 6
	li	a3,166
	.loc 1 74 2
	li	a4,8
.LVL13:
.L6:
	.loc 1 75 3 is_stmt 1
	.loc 1 75 6 is_stmt 0
	lrbu	a2,s1,a5,0
	bne	a2,a3,.L2
	.loc 1 74 21 is_stmt 1 discriminator 2
	.loc 1 74 22 is_stmt 0 discriminator 2
	addi	a5,a5,1
.LVL14:
	.loc 1 74 14 is_stmt 1 discriminator 2
	.loc 1 74 2 is_stmt 0 discriminator 2
	bne	a5,a4,.L6
	.loc 1 79 9
	li	a0,0
.LVL15:
.L1:
	.loc 1 80 1
	lw	ra,92(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
	lw	s1,84(sp)
	.cfi_restore 9
	lw	s2,80(sp)
	.cfi_restore 18
.LVL16:
	lw	s3,76(sp)
	.cfi_restore 19
	lw	s4,72(sp)
	.cfi_restore 20
	lw	s5,68(sp)
	.cfi_restore 21
	lw	s6,64(sp)
	.cfi_restore 22
	lw	s7,60(sp)
	.cfi_restore 23
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
.LVL17:
	jr	ra
.LVL18:
.L4:
	.cfi_restore_state
	.loc 1 53 4 is_stmt 1 discriminator 3
	li	a2,8
	mv	a1,s1
	addi	a0,sp,32
	call	os_memcpy
.LVL19:
	.loc 1 54 4 discriminator 3
	.loc 1 55 9 is_stmt 0 discriminator 3
	lbu	a4,39(sp)
	add	a5,s4,s0
.LVL20:
	.loc 1 55 4 is_stmt 1 discriminator 3
	.loc 1 56 9 is_stmt 0 discriminator 3
	lbu	a3,38(sp)
	.loc 1 55 9 discriminator 3
	xor	a4,a5,a4
	sb	a4,39(sp)
	.loc 1 56 4 is_stmt 1 discriminator 3
	.loc 1 56 14 is_stmt 0 discriminator 3
	srli	a4,a5,8
	.loc 1 56 9 discriminator 3
	xor	a4,a4,a3
	.loc 1 57 9 discriminator 3
	lbu	a3,37(sp)
	.loc 1 56 9 discriminator 3
	sb	a4,38(sp)
	.loc 1 57 4 is_stmt 1 discriminator 3
	.loc 1 57 14 is_stmt 0 discriminator 3
	srli	a4,a5,16
	.loc 1 57 9 discriminator 3
	xor	a4,a4,a3
	sb	a4,37(sp)
	.loc 1 58 4 is_stmt 1 discriminator 3
	.loc 1 58 9 is_stmt 0 discriminator 3
	lbu	a4,36(sp)
	.loc 1 58 14 discriminator 3
	srli	a5,a5,24
.LVL21:
	.loc 1 60 4 discriminator 3
	mv	a1,s5
	.loc 1 58 9 discriminator 3
	xor	a5,a5,a4
	.loc 1 60 4 discriminator 3
	li	a2,8
	addi	a0,sp,40
	.loc 1 58 9 discriminator 3
	sb	a5,36(sp)
	.loc 1 60 4 is_stmt 1 discriminator 3
	call	os_memcpy
.LVL22:
	.loc 1 61 4 discriminator 3
	addi	a2,sp,32
	mv	a1,a2
	mv	a0,s6
	call	aes_decrypt
.LVL23:
	.loc 1 62 4 discriminator 3
	li	a2,8
	addi	a1,sp,32
	mv	a0,s1
	call	os_memcpy
.LVL24:
	.loc 1 63 4 discriminator 3
	mv	a0,s5
	li	a2,8
	addi	a1,sp,40
	call	os_memcpy
.LVL25:
	.loc 1 64 4 discriminator 3
	.loc 1 64 6 is_stmt 0 discriminator 3
	addi	s5,s5,-8
.LVL26:
	.loc 1 52 23 is_stmt 1 discriminator 3
	.loc 1 52 24 is_stmt 0 discriminator 3
	addi	s4,s4,-1
.LVL27:
	j	.L3
.LVL28:
.L2:
	.loc 1 41 10
	li	a0,-1
	j	.L1
	.cfi_endproc
.LFE106:
	.size	aes_unwrap, .-aes_unwrap
	.text
.Letext0:
	.file 2 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\machine\\_default_types.h"
	.file 3 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\sys\\_stdint.h"
	.file 4 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\lib\\gcc\\riscv64-unknown-elf\\10.4.0\\include\\stddef.h"
	.file 5 ".\\components\\wireless\\wifi6\\qcc74x_wpa_supplicant\\src\\utils/os.h"
	.file 6 ".\\components\\wireless\\wifi6\\qcc74x_wpa_supplicant\\src\\crypto\\aes.h"
	.file 7 ".\\components\\wireless\\wifi6\\qcc74x_wpa_supplicant\\src\\utils/common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2e0
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF21
	.byte	0xc
	.4byte	.LASF22
	.4byte	.LASF23
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
	.byte	0x5
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF13
	.byte	0x6
	.string	"u8"
	.byte	0x7
	.byte	0x95
	.byte	0x11
	.4byte	0x77
	.byte	0x7
	.4byte	0x9f
	.byte	0x8
	.byte	0x4
	.4byte	0x9f
	.byte	0x9
	.4byte	.LASF24
	.byte	0x1
	.byte	0x1a
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
	.byte	0x1
	.byte	0x9c
	.4byte	0x28c
	.byte	0xa
	.string	"kek"
	.byte	0x1
	.byte	0x1a
	.byte	0x1a
	.4byte	0x28c
	.4byte	.LLST0
	.byte	0xb
	.4byte	.LASF14
	.byte	0x1
	.byte	0x1a
	.byte	0x26
	.4byte	0x83
	.4byte	.LLST1
	.byte	0xa
	.string	"n"
	.byte	0x1
	.byte	0x1a
	.byte	0x33
	.4byte	0x69
	.4byte	.LLST2
	.byte	0xb
	.4byte	.LASF15
	.byte	0x1
	.byte	0x1a
	.byte	0x40
	.4byte	0x28c
	.4byte	.LLST3
	.byte	0xb
	.4byte	.LASF16
	.byte	0x1
	.byte	0x1b
	.byte	0xd
	.4byte	0xaf
	.4byte	.LLST4
	.byte	0xc
	.string	"a"
	.byte	0x1
	.byte	0x1d
	.byte	0x5
	.4byte	0x292
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0xd
	.string	"r"
	.byte	0x1
	.byte	0x1d
	.byte	0xc
	.4byte	0xaf
	.4byte	.LLST5
	.byte	0xc
	.string	"b"
	.byte	0x1
	.byte	0x1d
	.byte	0xf
	.4byte	0x2a2
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0xd
	.string	"i"
	.byte	0x1
	.byte	0x1e
	.byte	0x6
	.4byte	0x69
	.4byte	.LLST6
	.byte	0xd
	.string	"j"
	.byte	0x1
	.byte	0x1e
	.byte	0x9
	.4byte	0x69
	.4byte	.LLST7
	.byte	0xd
	.string	"ctx"
	.byte	0x1
	.byte	0x1f
	.byte	0x8
	.4byte	0x8f
	.4byte	.LLST8
	.byte	0xd
	.string	"t"
	.byte	0x1
	.byte	0x20
	.byte	0xf
	.4byte	0x70
	.4byte	.LLST9
	.byte	0xe
	.4byte	.LVL4
	.4byte	0x2b2
	.4byte	0x1a1
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x4
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0x6
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x38
	.byte	0
	.byte	0xe
	.4byte	.LVL5
	.4byte	0x2b2
	.4byte	0x1c5
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x6
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0x6
	.byte	0x23
	.byte	0x8
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LVL6
	.4byte	0x2bf
	.4byte	0x1df
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LVL12
	.4byte	0x2cb
	.4byte	0x1f3
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LVL19
	.4byte	0x2b2
	.4byte	0x212
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x38
	.byte	0
	.byte	0xe
	.4byte	.LVL22
	.4byte	0x2b2
	.4byte	0x231
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x38
	.byte	0
	.byte	0xe
	.4byte	.LVL23
	.4byte	0x2d7
	.4byte	0x251
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0
	.byte	0xe
	.4byte	.LVL24
	.4byte	0x2b2
	.4byte	0x270
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x38
	.byte	0
	.byte	0x10
	.4byte	.LVL25
	.4byte	0x2b2
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x38
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0xaa
	.byte	0x11
	.4byte	0x9f
	.4byte	0x2a2
	.byte	0x12
	.4byte	0x70
	.byte	0x7
	.byte	0
	.byte	0x11
	.4byte	0x9f
	.4byte	0x2b2
	.byte	0x12
	.4byte	0x70
	.byte	0xf
	.byte	0
	.byte	0x13
	.4byte	.LASF17
	.4byte	.LASF17
	.byte	0x5
	.2byte	0x154
	.byte	0x8
	.byte	0x14
	.4byte	.LASF18
	.4byte	.LASF18
	.byte	0x6
	.byte	0x11
	.byte	0x8
	.byte	0x14
	.4byte	.LASF19
	.4byte	.LASF19
	.byte	0x6
	.byte	0x13
	.byte	0x6
	.byte	0x14
	.4byte	.LASF20
	.4byte	.LASF20
	.byte	0x6
	.byte	0x12
	.byte	0x5
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x6
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
	.byte	0x7
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0xa
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
	.byte	0x17
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
	.byte	0x18
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0xf
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
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
	.byte	0x13
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
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL8
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
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL8
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
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL2
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LFE106
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL4-1
	.4byte	.LVL17
	.2byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x3
	.byte	0x72
	.byte	0xac,0x7f
	.4byte	.LVL18
	.4byte	.LFE106
	.2byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL4-1
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL7
	.4byte	.LFE106
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL18
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL9
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL18
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x3
	.byte	0x87
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x3
	.byte	0x87
	.byte	0x7e
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL15
	.2byte	0x3
	.byte	0x87
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL28
	.2byte	0x3
	.byte	0x87
	.byte	0x7f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL18
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL21
	.4byte	.LVL27
	.2byte	0x6
	.byte	0x84
	.byte	0
	.byte	0x78
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x8
	.byte	0x78
	.byte	0
	.byte	0x84
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x1
	.byte	0x9f
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
.LASF16:
	.string	"plain"
.LASF21:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF9:
	.string	"__uint8_t"
.LASF11:
	.string	"size_t"
.LASF17:
	.string	"os_memcpy"
.LASF22:
	.string	".\\components\\wireless\\wifi6\\qcc74x_wpa_supplicant\\src\\crypto\\aes-unwrap.c"
.LASF0:
	.string	"signed char"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF23:
	.string	"C:\\\\Users\\\\cwier\\\\Documents\\\\GitHub\\\\qcom\\\\examples\\\\usb_cam_stream\\\\build\\\\build_out\\\\components\\\\wireless\\\\wifi6\\\\qcc74x_wpa_supplicant"
.LASF14:
	.string	"kek_len"
.LASF15:
	.string	"cipher"
.LASF24:
	.string	"aes_unwrap"
.LASF8:
	.string	"unsigned int"
.LASF19:
	.string	"aes_decrypt_deinit"
.LASF12:
	.string	"char"
.LASF10:
	.string	"uint8_t"
.LASF18:
	.string	"aes_decrypt_init"
.LASF6:
	.string	"long long int"
.LASF2:
	.string	"short int"
.LASF4:
	.string	"long int"
.LASF20:
	.string	"aes_decrypt"
.LASF13:
	.string	"_Bool"
.LASF7:
	.string	"long long unsigned int"
	.ident	"GCC: (GNU) 10.4.0"
