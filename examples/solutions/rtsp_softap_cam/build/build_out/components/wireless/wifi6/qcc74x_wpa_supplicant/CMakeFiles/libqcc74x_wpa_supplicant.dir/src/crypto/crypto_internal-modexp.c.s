	.file	"crypto_internal-modexp.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.crypto_dh_derive_secret,"ax",@progbits
	.align	1
	.globl	crypto_dh_derive_secret
	.type	crypto_dh_derive_secret, @function
crypto_dh_derive_secret:
.LFB106:
	.file 1 ".\\components\\wireless\\wifi6\\qcc74x_wpa_supplicant\\src\\crypto\\crypto_internal-modexp.c"
	.loc 1 48 1
	.cfi_startproc
.LVL0:
	.loc 1 49 2
	.loc 1 50 2
	.loc 1 52 2
	.loc 1 48 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s7,28(sp)
	.cfi_offset 23, -36
	lw	s7,64(sp)
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	sw	s3,44(sp)
	sw	s4,40(sp)
	sw	s5,36(sp)
	sw	s6,32(sp)
	sw	s8,24(sp)
	sw	s9,20(sp)
	sw	s10,16(sp)
	sw	s11,12(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.cfi_offset 26, -48
	.cfi_offset 27, -52
	.loc 1 52 5
	bleu	s7,a2,.L2
.LVL1:
.L7:
	.loc 1 55 10
	li	s0,-1
.LVL2:
.L1:
	.loc 1 87 1
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,s0
	lw	s0,56(sp)
	.cfi_restore 8
	lw	s1,52(sp)
	.cfi_restore 9
	lw	s2,48(sp)
	.cfi_restore 18
	lw	s3,44(sp)
	.cfi_restore 19
	lw	s4,40(sp)
	.cfi_restore 20
	lw	s5,36(sp)
	.cfi_restore 21
	lw	s6,32(sp)
	.cfi_restore 22
	lw	s7,28(sp)
	.cfi_restore 23
	lw	s8,24(sp)
	.cfi_restore 24
	lw	s9,20(sp)
	.cfi_restore 25
	lw	s10,16(sp)
	.cfi_restore 26
	lw	s11,12(sp)
	.cfi_restore 27
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
.LVL3:
	jr	ra
.LVL4:
.L2:
	.cfi_restore_state
	mv	s8,a1
	mv	s0,a2
	mv	s1,a7
	mv	s10,a6
	mv	s9,a5
	mv	s11,a4
	mv	s3,a3
	.loc 1 52 29 discriminator 1
	beq	s7,a2,.L4
.LVL5:
.L8:
	.loc 1 57 2 is_stmt 1
	.loc 1 57 8 is_stmt 0
	call	bignum_init
.LVL6:
	mv	s2,a0
.LVL7:
	.loc 1 58 2 is_stmt 1
	.loc 1 58 5 is_stmt 0
	bne	a0,zero,.L24
.LVL8:
.L5:
	.loc 1 50 6
	li	s0,-1
.LVL9:
.L9:
	.loc 1 85 2 is_stmt 1
	mv	a0,s2
	call	bignum_deinit
.LVL10:
	.loc 1 86 2
	.loc 1 86 9 is_stmt 0
	j	.L1
.LVL11:
.L4:
	.loc 1 54 7
	mv	a0,a7
.LVL12:
	call	os_memcmp
.LVL13:
	.loc 1 53 31
	blt	a0,zero,.L8
	j	.L7
.LVL14:
.L24:
	.loc 1 58 14 discriminator 1
	mv	a2,s7
	mv	a1,s1
	call	bignum_set_unsigned_bin
.LVL15:
	.loc 1 58 11 discriminator 1
	blt	a0,zero,.L5
	.loc 1 59 6 discriminator 2
	li	a1,1
	mv	a0,s2
	call	bignum_cmp_d
.LVL16:
	.loc 1 58 67 discriminator 2
	ble	a0,zero,.L5
	.loc 1 62 2 is_stmt 1
	.loc 1 62 5 is_stmt 0
	bne	s3,zero,.L10
.LVL17:
.L14:
	.loc 1 82 2 is_stmt 1
	.loc 1 82 8 is_stmt 0
	lw	a7,72(sp)
	lw	a6,68(sp)
	mv	a5,s0
	mv	a4,s8
	mv	a3,s10
	mv	a2,s9
	mv	a1,s7
	mv	a0,s1
	call	crypto_mod_exp
.LVL18:
	mv	s0,a0
.LVL19:
	j	.L9
.LVL20:
.L10:
.LBB2:
	.loc 1 63 3 is_stmt 1
	.loc 1 64 3
	.loc 1 67 3
	.loc 1 67 7 is_stmt 0
	call	bignum_init
.LVL21:
	mv	s6,a0
.LVL22:
	.loc 1 68 3 is_stmt 1
	.loc 1 68 7 is_stmt 0
	call	bignum_init
.LVL23:
	mv	s5,a0
.LVL24:
	.loc 1 69 3 is_stmt 1
	.loc 1 69 9 is_stmt 0
	call	bignum_init
.LVL25:
	mv	s4,a0
.LVL26:
	.loc 1 70 3 is_stmt 1
	.loc 1 73 39 is_stmt 0
	bne	s6,zero,.L11
.LVL27:
.L13:
	li	s3,1
.LVL28:
.L12:
	.loc 1 75 3 is_stmt 1
	mv	a0,s6
	call	bignum_deinit
.LVL29:
	.loc 1 76 3
	mv	a0,s5
	call	bignum_deinit
.LVL30:
	.loc 1 77 3
	mv	a0,s4
	call	bignum_deinit
.LVL31:
	.loc 1 78 3
	.loc 1 78 6 is_stmt 0
	beq	s3,zero,.L14
	j	.L5
.LVL32:
.L11:
	.loc 1 70 15
	beq	s5,zero,.L13
	.loc 1 70 21 discriminator 1
	beq	a0,zero,.L13
	.loc 1 71 4 discriminator 2
	mv	a2,s0
	mv	a1,s8
	mv	a0,s6
.LVL33:
	call	bignum_set_unsigned_bin
.LVL34:
	.loc 1 70 29 discriminator 2
	blt	a0,zero,.L13
	.loc 1 72 4
	mv	a2,s11
	mv	a1,s3
	mv	a0,s5
	call	bignum_set_unsigned_bin
.LVL35:
	.loc 1 71 53
	blt	a0,zero,.L13
	.loc 1 73 4
	mv	a3,s4
	mv	a2,s6
	mv	a1,s5
	mv	a0,s2
	call	bignum_exptmod
.LVL36:
	.loc 1 72 53
	blt	a0,zero,.L13
	.loc 1 74 4 discriminator 2
	li	a1,1
	mv	a0,s4
	call	bignum_cmp_d
.LVL37:
	.loc 1 73 39 discriminator 2
	snez	s3,a0
.LVL38:
	j	.L12
.LBE2:
	.cfi_endproc
.LFE106:
	.size	crypto_dh_derive_secret, .-crypto_dh_derive_secret
	.text
.Letext0:
	.file 2 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\machine\\_default_types.h"
	.file 3 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\sys\\_stdint.h"
	.file 4 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\lib\\gcc\\riscv64-unknown-elf\\10.4.0\\include\\stddef.h"
	.file 5 ".\\components\\wireless\\wifi6\\qcc74x_wpa_supplicant\\src/tls/bignum.h"
	.file 6 ".\\components\\wireless\\wifi6\\qcc74x_wpa_supplicant\\src\\utils/os.h"
	.file 7 ".\\components\\wireless\\wifi6\\qcc74x_wpa_supplicant\\src\\crypto\\crypto.h"
	.file 8 ".\\components\\wireless\\wifi6\\qcc74x_wpa_supplicant\\src\\utils/common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x3d0
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF32
	.byte	0xc
	.4byte	.LASF33
	.4byte	.LASF34
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
	.string	"u8"
	.byte	0x8
	.byte	0x95
	.byte	0x11
	.4byte	0x77
	.byte	0x6
	.4byte	0x9d
	.byte	0x7
	.byte	0x4
	.4byte	0x9d
	.byte	0x8
	.4byte	.LASF35
	.byte	0x1
	.byte	0x2b
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
	.byte	0x1
	.byte	0x9c
	.4byte	0x366
	.byte	0x9
	.4byte	.LASF14
	.byte	0x1
	.byte	0x2b
	.byte	0x20
	.4byte	0x9d
	.4byte	.LLST0
	.byte	0x9
	.4byte	.LASF15
	.byte	0x1
	.byte	0x2b
	.byte	0x35
	.4byte	0x366
	.4byte	.LLST1
	.byte	0x9
	.4byte	.LASF16
	.byte	0x1
	.byte	0x2b
	.byte	0x43
	.4byte	0x83
	.4byte	.LLST2
	.byte	0x9
	.4byte	.LASF17
	.byte	0x1
	.byte	0x2c
	.byte	0x12
	.4byte	0x366
	.4byte	.LLST3
	.byte	0x9
	.4byte	.LASF18
	.byte	0x1
	.byte	0x2c
	.byte	0x20
	.4byte	0x83
	.4byte	.LLST4
	.byte	0x9
	.4byte	.LASF19
	.byte	0x1
	.byte	0x2d
	.byte	0x12
	.4byte	0x366
	.4byte	.LLST5
	.byte	0x9
	.4byte	.LASF20
	.byte	0x1
	.byte	0x2d
	.byte	0x22
	.4byte	0x83
	.4byte	.LLST6
	.byte	0x9
	.4byte	.LASF21
	.byte	0x1
	.byte	0x2e
	.byte	0x12
	.4byte	0x366
	.4byte	.LLST7
	.byte	0x9
	.4byte	.LASF22
	.byte	0x1
	.byte	0x2e
	.byte	0x21
	.4byte	0x83
	.4byte	.LLST8
	.byte	0x9
	.4byte	.LASF23
	.byte	0x1
	.byte	0x2f
	.byte	0xc
	.4byte	0xad
	.4byte	.LLST9
	.byte	0xa
	.string	"len"
	.byte	0x1
	.byte	0x2f
	.byte	0x1c
	.4byte	0x36c
	.4byte	.LLST10
	.byte	0xb
	.string	"pub"
	.byte	0x1
	.byte	0x31
	.byte	0x11
	.4byte	0x377
	.4byte	.LLST11
	.byte	0xb
	.string	"res"
	.byte	0x1
	.byte	0x32
	.byte	0x6
	.4byte	0x69
	.4byte	.LLST12
	.byte	0xc
	.4byte	.LASF36
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.4byte	.L9
	.byte	0xd
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x2c5
	.byte	0xb
	.string	"p"
	.byte	0x1
	.byte	0x3f
	.byte	0x12
	.4byte	0x377
	.4byte	.LLST13
	.byte	0xb
	.string	"q"
	.byte	0x1
	.byte	0x3f
	.byte	0x16
	.4byte	0x377
	.4byte	.LLST14
	.byte	0xb
	.string	"tmp"
	.byte	0x1
	.byte	0x3f
	.byte	0x1a
	.4byte	0x377
	.4byte	.LLST15
	.byte	0xe
	.4byte	.LASF24
	.byte	0x1
	.byte	0x40
	.byte	0x7
	.4byte	0x69
	.4byte	.LLST16
	.byte	0xf
	.4byte	.LVL21
	.4byte	0x37d
	.byte	0xf
	.4byte	.LVL23
	.4byte	0x37d
	.byte	0xf
	.4byte	.LVL25
	.4byte	0x37d
	.byte	0x10
	.4byte	.LVL29
	.4byte	0x389
	.4byte	0x221
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LVL30
	.4byte	0x389
	.4byte	0x235
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LVL31
	.4byte	0x389
	.4byte	0x249
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LVL34
	.4byte	0x395
	.4byte	0x269
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LVL35
	.4byte	0x395
	.4byte	0x289
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8b
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LVL36
	.4byte	0x3a1
	.4byte	0x2af
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LVL37
	.4byte	0x3ad
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LVL6
	.4byte	0x37d
	.byte	0x10
	.4byte	.LVL10
	.4byte	0x389
	.4byte	0x2e2
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LVL13
	.4byte	0x3b9
	.4byte	0x2f6
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LVL15
	.4byte	0x395
	.4byte	0x310
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LVL16
	.4byte	0x3ad
	.4byte	0x329
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x12
	.4byte	.LVL18
	.4byte	0x3c6
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x89
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x60
	.byte	0x3
	.byte	0x91
	.byte	0x4
	.byte	0x6
	.byte	0x11
	.byte	0x1
	.byte	0x61
	.byte	0x3
	.byte	0x91
	.byte	0x8
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xa8
	.byte	0x7
	.byte	0x4
	.4byte	0x83
	.byte	0x13
	.4byte	.LASF37
	.byte	0x7
	.byte	0x4
	.4byte	0x372
	.byte	0x14
	.4byte	.LASF25
	.4byte	.LASF25
	.byte	0x5
	.byte	0xe
	.byte	0x11
	.byte	0x14
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x5
	.byte	0xf
	.byte	0x6
	.byte	0x14
	.4byte	.LASF27
	.4byte	.LASF27
	.byte	0x5
	.byte	0x12
	.byte	0x5
	.byte	0x14
	.4byte	.LASF28
	.4byte	.LASF28
	.byte	0x5
	.byte	0x1d
	.byte	0x5
	.byte	0x14
	.4byte	.LASF29
	.4byte	.LASF29
	.byte	0x5
	.byte	0x14
	.byte	0x5
	.byte	0x15
	.4byte	.LASF30
	.4byte	.LASF30
	.byte	0x6
	.2byte	0x173
	.byte	0x5
	.byte	0x15
	.4byte	.LASF31
	.4byte	.LASF31
	.byte	0x7
	.2byte	0x1d2
	.byte	0x2d
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
	.byte	0xc
	.byte	0xa
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x11
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0xd
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
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x11
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
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
	.byte	0x5
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
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
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
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL5
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL11
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL13-1
	.4byte	.LFE106
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LFE106
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL5
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL13-1
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL28
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL38
	.4byte	.LFE106
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL5
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL11
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL13-1
	.4byte	.LFE106
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL5
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL11
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL13-1
	.4byte	.LFE106
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x60
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL5
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL11
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL13-1
	.4byte	.LFE106
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x61
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL5
	.4byte	.LFE106
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x91
	.byte	0
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x72
	.byte	0
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL5
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x91
	.byte	0
	.4byte	.LVL11
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL20
	.4byte	.LFE106
	.2byte	0x2
	.byte	0x91
	.byte	0
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x91
	.byte	0x4
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x72
	.byte	0x4
	.4byte	.LVL4
	.4byte	.LFE106
	.2byte	0x2
	.byte	0x91
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x91
	.byte	0x8
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x72
	.byte	0x8
	.4byte	.LVL4
	.4byte	.LFE106
	.2byte	0x2
	.byte	0x91
	.byte	0x8
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL14
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15-1
	.4byte	.LFE106
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL9
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL11
	.4byte	.LVL19
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL20
	.4byte	.LFE106
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL22
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23-1
	.4byte	.LFE106
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL24
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25-1
	.4byte	.LFE106
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL27
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL33
	.4byte	.LFE106
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL28
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x63
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
.LASF32:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF19:
	.string	"privkey"
.LASF9:
	.string	"__uint8_t"
.LASF11:
	.string	"size_t"
.LASF35:
	.string	"crypto_dh_derive_secret"
.LASF15:
	.string	"prime"
.LASF29:
	.string	"bignum_cmp_d"
.LASF21:
	.string	"pubkey"
.LASF25:
	.string	"bignum_init"
.LASF22:
	.string	"pubkey_len"
.LASF14:
	.string	"generator"
.LASF7:
	.string	"long long unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF28:
	.string	"bignum_exptmod"
.LASF5:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF30:
	.string	"os_memcmp"
.LASF18:
	.string	"order_len"
.LASF17:
	.string	"order"
.LASF34:
	.string	"C:\\\\Users\\\\cwier\\\\Documents\\\\GitHub\\\\qcom\\\\examples\\\\solutions\\\\rtsp_softap_cam\\\\build\\\\build_out\\\\components\\\\wireless\\\\wifi6\\\\qcc74x_wpa_supplicant"
.LASF8:
	.string	"unsigned int"
.LASF12:
	.string	"char"
.LASF10:
	.string	"uint8_t"
.LASF26:
	.string	"bignum_deinit"
.LASF27:
	.string	"bignum_set_unsigned_bin"
.LASF33:
	.string	".\\components\\wireless\\wifi6\\qcc74x_wpa_supplicant\\src\\crypto\\crypto_internal-modexp.c"
.LASF16:
	.string	"prime_len"
.LASF6:
	.string	"long long int"
.LASF2:
	.string	"short int"
.LASF24:
	.string	"failed"
.LASF23:
	.string	"secret"
.LASF37:
	.string	"bignum"
.LASF4:
	.string	"long int"
.LASF31:
	.string	"crypto_mod_exp"
.LASF20:
	.string	"privkey_len"
.LASF0:
	.string	"signed char"
.LASF13:
	.string	"_Bool"
.LASF36:
	.string	"fail"
	.ident	"GCC: (GNU) 10.4.0"
