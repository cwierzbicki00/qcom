	.file	"aes-wrap.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.aes_wrap,"ax",@progbits
	.align	1
	.globl	aes_wrap
	.type	aes_wrap, @function
aes_wrap:
.LFB106:
	.file 1 ".\\components\\wireless\\wifi6\\qcc74x_wpa_supplicant\\src\\crypto\\aes-wrap.c"
	.loc 1 27 1
	.cfi_startproc
.LVL0:
	.loc 1 28 2
	.loc 1 29 2
	.loc 1 30 2
	.loc 1 31 2
	.loc 1 33 2
	.loc 1 34 2
	.loc 1 37 2
	.loc 1 27 1 is_stmt 0
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	s1,68(sp)
	sw	s2,64(sp)
	sw	s6,48(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 22, -32
	mv	s1,a0
	mv	s2,a1
	mv	s6,a2
	.loc 1 37 2
	li	a1,166
.LVL1:
	li	a2,8
.LVL2:
	mv	a0,a4
.LVL3:
	.loc 1 27 1
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s3,60(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 19, -20
	mv	s0,a4
	sw	s4,56(sp)
	sw	s5,52(sp)
	sw	s7,44(sp)
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 23, -36
	.loc 1 27 1
	sw	a3,12(sp)
	.loc 1 37 2
	call	os_memset
.LVL4:
	.loc 1 38 2 is_stmt 1
	lw	a3,12(sp)
	slli	a2,s6,3
	addi	a0,s0,8
.LVL5:
	mv	a1,a3
	call	os_memcpy
.LVL6:
	.loc 1 40 2
	.loc 1 40 8 is_stmt 0
	mv	a1,s2
	mv	a0,s1
	call	aes_encrypt_init
.LVL7:
	.loc 1 41 2 is_stmt 1
	.loc 1 41 5 is_stmt 0
	beq	a0,zero,.L7
	mv	s3,a0
	li	s4,1
	li	s5,6
.LVL8:
.L3:
	.loc 1 27 1
	mv	s1,s4
	.loc 1 53 10
	li	s2,1
	j	.L6
.LVL9:
.L4:
	.loc 1 54 4 is_stmt 1 discriminator 3
	li	a2,8
	mv	a1,s0
	addi	a0,sp,16
	call	os_memcpy
.LVL10:
	.loc 1 55 4 discriminator 3
	li	a2,8
	mv	a1,s7
	addi	a0,sp,24
	call	os_memcpy
.LVL11:
	.loc 1 56 4 discriminator 3
	addi	a2,sp,16
	mv	a1,a2
	mv	a0,s3
	call	aes_encrypt
.LVL12:
	.loc 1 57 4 discriminator 3
	li	a2,8
	addi	a1,sp,16
	mv	a0,s0
	call	os_memcpy
.LVL13:
	.loc 1 58 4 discriminator 3
	.loc 1 59 4 discriminator 3
	.loc 1 59 9 is_stmt 0 discriminator 3
	lbu	a5,7(s0)
	.loc 1 60 9 discriminator 3
	lbu	a4,6(s0)
	.loc 1 63 4 discriminator 3
	li	a2,8
	.loc 1 59 9 discriminator 3
	xor	a5,s1,a5
	sb	a5,7(s0)
	.loc 1 60 4 is_stmt 1 discriminator 3
	.loc 1 60 14 is_stmt 0 discriminator 3
	srli	a5,s1,8
	.loc 1 60 9 discriminator 3
	xor	a5,a5,a4
	.loc 1 61 9 discriminator 3
	lbu	a4,5(s0)
	.loc 1 60 9 discriminator 3
	sb	a5,6(s0)
	.loc 1 61 4 is_stmt 1 discriminator 3
	.loc 1 61 14 is_stmt 0 discriminator 3
	srli	a5,s1,16
	.loc 1 61 9 discriminator 3
	xor	a5,a5,a4
	.loc 1 62 9 discriminator 3
	lbu	a4,4(s0)
	.loc 1 61 9 discriminator 3
	sb	a5,5(s0)
	.loc 1 62 4 is_stmt 1 discriminator 3
	.loc 1 62 14 is_stmt 0 discriminator 3
	srli	a5,s1,24
	.loc 1 62 9 discriminator 3
	xor	a5,a5,a4
	sb	a5,4(s0)
	.loc 1 63 4 is_stmt 1 discriminator 3
	addi	a1,sp,24
	mv	a0,s7
	call	os_memcpy
.LVL14:
	.loc 1 64 4 discriminator 3
	.loc 1 53 23 discriminator 3
	.loc 1 53 24 is_stmt 0 discriminator 3
	addi	s2,s2,1
.LVL15:
	addi	s1,s1,1
.LVL16:
.L6:
	addsl	s7, s0, s2, 3
.LVL17:
	.loc 1 53 15 is_stmt 1 discriminator 1
	.loc 1 53 3 is_stmt 0 discriminator 1
	ble	s2,s6,.L4
	.loc 1 51 22 is_stmt 1 discriminator 2
.LVL18:
	.loc 1 51 14 discriminator 2
	.loc 1 51 2 is_stmt 0 discriminator 2
	addi	s5,s5,-1
.LVL19:
	add	s4,s4,s6
	bne	s5,zero,.L3
	.loc 1 67 2 is_stmt 1
	mv	a0,s3
	call	aes_encrypt_deinit
.LVL20:
	.loc 1 75 2
	.loc 1 75 9 is_stmt 0
	li	a0,0
.LVL21:
.L1:
	.loc 1 76 1
	lw	ra,76(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
.LVL22:
	lw	s1,68(sp)
	.cfi_restore 9
	lw	s2,64(sp)
	.cfi_restore 18
	lw	s3,60(sp)
	.cfi_restore 19
	lw	s4,56(sp)
	.cfi_restore 20
	lw	s5,52(sp)
	.cfi_restore 21
	lw	s6,48(sp)
	.cfi_restore 22
.LVL23:
	lw	s7,44(sp)
	.cfi_restore 23
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
.LVL24:
	jr	ra
.LVL25:
.L7:
	.cfi_restore_state
	.loc 1 42 10
	li	a0,-1
.LVL26:
	j	.L1
	.cfi_endproc
.LFE106:
	.size	aes_wrap, .-aes_wrap
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
	.4byte	0x2db
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF22
	.byte	0xc
	.4byte	.LASF23
	.4byte	.LASF24
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
	.4byte	.LASF25
	.byte	0x1
	.byte	0x1a
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
	.byte	0x1
	.byte	0x9c
	.4byte	0x28a
	.byte	0xa
	.string	"kek"
	.byte	0x1
	.byte	0x1a
	.byte	0x18
	.4byte	0x28a
	.4byte	.LLST0
	.byte	0xb
	.4byte	.LASF14
	.byte	0x1
	.byte	0x1a
	.byte	0x24
	.4byte	0x83
	.4byte	.LLST1
	.byte	0xa
	.string	"n"
	.byte	0x1
	.byte	0x1a
	.byte	0x31
	.4byte	0x69
	.4byte	.LLST2
	.byte	0xb
	.4byte	.LASF15
	.byte	0x1
	.byte	0x1a
	.byte	0x3e
	.4byte	0x28a
	.4byte	.LLST3
	.byte	0xb
	.4byte	.LASF16
	.byte	0x1
	.byte	0x1a
	.byte	0x49
	.4byte	0xaf
	.4byte	.LLST4
	.byte	0xc
	.string	"a"
	.byte	0x1
	.byte	0x1c
	.byte	0x6
	.4byte	0xaf
	.4byte	.LLST5
	.byte	0xc
	.string	"r"
	.byte	0x1
	.byte	0x1c
	.byte	0xa
	.4byte	0xaf
	.4byte	.LLST6
	.byte	0xd
	.string	"b"
	.byte	0x1
	.byte	0x1c
	.byte	0xd
	.4byte	0x290
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0xc
	.string	"i"
	.byte	0x1
	.byte	0x1d
	.byte	0x6
	.4byte	0x69
	.4byte	.LLST7
	.byte	0xc
	.string	"j"
	.byte	0x1
	.byte	0x1d
	.byte	0x9
	.4byte	0x69
	.4byte	.LLST8
	.byte	0xc
	.string	"ctx"
	.byte	0x1
	.byte	0x1e
	.byte	0x8
	.4byte	0x8f
	.4byte	.LLST9
	.byte	0xc
	.string	"t"
	.byte	0x1
	.byte	0x1f
	.byte	0xf
	.4byte	0x70
	.4byte	.LLST10
	.byte	0xe
	.4byte	.LVL4
	.4byte	0x2a0
	.4byte	0x19f
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0xa6
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x38
	.byte	0
	.byte	0xe
	.4byte	.LVL6
	.4byte	0x2ad
	.4byte	0x1c3
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x8
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x4
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0x6
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x4
	.byte	0x86
	.byte	0
	.byte	0x33
	.byte	0x24
	.byte	0
	.byte	0xe
	.4byte	.LVL7
	.4byte	0x2ba
	.4byte	0x1dd
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
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LVL10
	.4byte	0x2ad
	.4byte	0x1fc
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
	.byte	0x78
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x38
	.byte	0
	.byte	0xe
	.4byte	.LVL11
	.4byte	0x2ad
	.4byte	0x21b
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
	.byte	0x87
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x38
	.byte	0
	.byte	0xe
	.4byte	.LVL12
	.4byte	0x2c6
	.4byte	0x23b
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
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
	.4byte	.LVL13
	.4byte	0x2ad
	.4byte	0x25a
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
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
	.byte	0xe
	.4byte	.LVL14
	.4byte	0x2ad
	.4byte	0x279
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x87
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
	.byte	0x10
	.4byte	.LVL20
	.4byte	0x2d2
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0xaa
	.byte	0x11
	.4byte	0x9f
	.4byte	0x2a0
	.byte	0x12
	.4byte	0x70
	.byte	0xf
	.byte	0
	.byte	0x13
	.4byte	.LASF17
	.4byte	.LASF17
	.byte	0x5
	.2byte	0x168
	.byte	0x8
	.byte	0x13
	.4byte	.LASF18
	.4byte	.LASF18
	.byte	0x5
	.2byte	0x154
	.byte	0x8
	.byte	0x14
	.4byte	.LASF19
	.4byte	.LASF19
	.byte	0x6
	.byte	0xe
	.byte	0x8
	.byte	0x14
	.4byte	.LASF20
	.4byte	.LASF20
	.byte	0x6
	.byte	0xf
	.byte	0x5
	.byte	0x14
	.4byte	.LASF21
	.4byte	.LASF21
	.byte	0x6
	.byte	0x10
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
	.byte	0x59
	.4byte	.LVL8
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LFE106
	.2byte	0x1
	.byte	0x59
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
	.byte	0x62
	.4byte	.LVL8
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LFE106
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL2
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LFE106
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL4-1
	.4byte	.LVL24
	.2byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x3
	.byte	0x72
	.byte	0xbc,0x7f
	.4byte	.LVL25
	.4byte	.LFE106
	.2byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL4-1
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LFE106
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL0
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL4-1
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LFE106
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL0
	.4byte	.LVL4-1
	.2byte	0x3
	.byte	0x7e
	.byte	0x8
	.byte	0x9f
	.4byte	.LVL4-1
	.4byte	.LVL5
	.2byte	0x3
	.byte	0x78
	.byte	0x8
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6-1
	.4byte	.LVL8
	.2byte	0x3
	.byte	0x78
	.byte	0x8
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0xa
	.byte	0x82
	.byte	0
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x8
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0xa
	.byte	0x82
	.byte	0x7f
	.byte	0x33
	.byte	0x24
	.byte	0x78
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x8
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL25
	.4byte	.LFE106
	.2byte	0x3
	.byte	0x78
	.byte	0x8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL9
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL17
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL8
	.4byte	.LVL18
	.2byte	0x5
	.byte	0x36
	.byte	0x85
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x5
	.byte	0x37
	.byte	0x85
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x5
	.byte	0x36
	.byte	0x85
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL13
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x59
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
.LASF15:
	.string	"plain"
.LASF22:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF9:
	.string	"__uint8_t"
.LASF11:
	.string	"size_t"
.LASF18:
	.string	"os_memcpy"
.LASF19:
	.string	"aes_encrypt_init"
.LASF21:
	.string	"aes_encrypt_deinit"
.LASF0:
	.string	"signed char"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF14:
	.string	"kek_len"
.LASF16:
	.string	"cipher"
.LASF25:
	.string	"aes_wrap"
.LASF24:
	.string	"C:\\\\Users\\\\cwier\\\\Documents\\\\GitHub\\\\qcom\\\\examples\\\\solutions\\\\rtsp_softap_cam\\\\build\\\\build_out\\\\components\\\\wireless\\\\wifi6\\\\qcc74x_wpa_supplicant"
.LASF8:
	.string	"unsigned int"
.LASF12:
	.string	"char"
.LASF10:
	.string	"uint8_t"
.LASF6:
	.string	"long long int"
.LASF17:
	.string	"os_memset"
.LASF23:
	.string	".\\components\\wireless\\wifi6\\qcc74x_wpa_supplicant\\src\\crypto\\aes-wrap.c"
.LASF2:
	.string	"short int"
.LASF20:
	.string	"aes_encrypt"
.LASF4:
	.string	"long int"
.LASF13:
	.string	"_Bool"
.LASF7:
	.string	"long long unsigned int"
	.ident	"GCC: (GNU) 10.4.0"
