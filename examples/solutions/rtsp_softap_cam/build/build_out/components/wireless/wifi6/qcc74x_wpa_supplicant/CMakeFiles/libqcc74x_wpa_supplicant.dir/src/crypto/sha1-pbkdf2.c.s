	.file	"sha1-pbkdf2.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.pbkdf2_sha1_f,"ax",@progbits
	.align	1
	.type	pbkdf2_sha1_f, @function
pbkdf2_sha1_f:
.LFB107:
	.file 1 ".\\components\\wireless\\wifi6\\qcc74x_wpa_supplicant\\src\\crypto\\sha1-pbkdf2.c"
	.loc 1 19 1
	.cfi_startproc
.LVL0:
	.loc 1 20 5
	.loc 1 21 5
	.loc 1 22 5
	.loc 1 24 5
	.loc 1 19 1 is_stmt 0
	addi	sp,sp,-400
	.cfi_def_cfa_offset 400
	sw	ra,396(sp)
	sw	a4,12(sp)
	sw	s0,392(sp)
	sw	s1,388(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a1
	mv	s1,a0
	sw	s2,384(sp)
	sw	s3,380(sp)
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	mv	s2,a2
	mv	s3,a5
	sw	s4,376(sp)
	.cfi_offset 20, -24
	.loc 1 19 1
	mv	s4,a3
	.loc 1 24 5
	call	os_strlen
.LVL1:
	mv	a1,a0
	li	a3,284
	addi	a2,sp,84
	mv	a0,s1
	call	mbedtls_hmac_iter_init
.LVL2:
	.loc 1 26 5 is_stmt 1
	addi	s1,sp,48
.LVL3:
	mv	a1,s0
	mv	a2,s2
	mv	a0,s1
	call	memcpy
.LVL4:
	.loc 1 27 5
	.loc 1 28 26 is_stmt 0
	lw	a4,12(sp)
	.loc 1 27 7
	add	a5,s1,s2
.LVL5:
	.loc 1 28 5 is_stmt 1
	.loc 1 32 5 is_stmt 0
	addi	s0,sp,28
.LVL6:
	.loc 1 28 26
	srli	a3,a4,24
	.loc 1 28 10
	srb	a3,s1,s2,0
	.loc 1 29 5 is_stmt 1
	.loc 1 29 19 is_stmt 0
	srli	a3,a4,16
	.loc 1 29 10
	sb	a3,1(a5)
	.loc 1 30 5 is_stmt 1
	.loc 1 30 19 is_stmt 0
	srli	a3,a4,8
	.loc 1 30 10
	sb	a3,2(a5)
	.loc 1 31 5 is_stmt 1
	.loc 1 31 10 is_stmt 0
	sb	a4,3(a5)
	.loc 1 32 5 is_stmt 1
	mv	a2,s1
	li	a5,0
.LVL7:
	mv	a4,s0
	addi	a3,s2,4
	li	a1,284
	addi	a0,sp,84
	call	mbedtls_hmac_iter_ret
.LVL8:
	.loc 1 34 5
	li	a2,20
	mv	a1,s0
	mv	a0,s3
	call	os_memcpy
.LVL9:
	.loc 1 36 5
	.loc 1 37 5
	.loc 1 36 9 is_stmt 0
	li	a5,0
	.loc 1 37 12
	li	s1,1
.LVL10:
.L2:
	.loc 1 37 17 is_stmt 1 discriminator 1
	.loc 1 37 5 is_stmt 0 discriminator 1
	blt	s1,s4,.L4
	.loc 1 45 5 is_stmt 1
	.loc 1 46 1 is_stmt 0
	lw	ra,396(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,392(sp)
	.cfi_restore 8
	lw	s1,388(sp)
	.cfi_restore 9
.LVL11:
	lw	s2,384(sp)
	.cfi_restore 18
.LVL12:
	lw	s3,380(sp)
	.cfi_restore 19
.LVL13:
	lw	s4,376(sp)
	.cfi_restore 20
.LVL14:
	li	a0,0
	addi	sp,sp,400
	.cfi_def_cfa_offset 0
.LVL15:
	jr	ra
.LVL16:
.L4:
	.cfi_restore_state
	.loc 1 38 9 is_stmt 1
	li	a3,20
	mv	a4,s0
	mv	a2,s0
	li	a1,284
	addi	a0,sp,84
	call	mbedtls_hmac_iter_ret
.LVL17:
	.loc 1 39 9
	.loc 1 41 9
	.loc 1 41 21
	.loc 1 41 16 is_stmt 0
	li	a5,0
	.loc 1 41 9
	li	a3,20
.LVL18:
.L3:
	.loc 1 42 13 is_stmt 1 discriminator 3
	.loc 1 42 23 is_stmt 0 discriminator 3
	lrbu	a4,s3,a5,0
	lrbu	a2,s0,a5,0
	xor	a4,a4,a2
	srb	a4,s3,a5,0
	.loc 1 41 29 is_stmt 1 discriminator 3
	.loc 1 41 30 is_stmt 0 discriminator 3
	addi	a5,a5,1
.LVL19:
	.loc 1 41 21 is_stmt 1 discriminator 3
	.loc 1 41 9 is_stmt 0 discriminator 3
	bne	a5,a3,.L3
	.loc 1 37 33 is_stmt 1 discriminator 2
	.loc 1 37 34 is_stmt 0 discriminator 2
	addi	s1,s1,1
.LVL20:
	.loc 1 39 16 discriminator 2
	li	a5,1
.LVL21:
	j	.L2
	.cfi_endproc
.LFE107:
	.size	pbkdf2_sha1_f, .-pbkdf2_sha1_f
	.section	.text.pbkdf2_sha1,"ax",@progbits
	.align	1
	.globl	pbkdf2_sha1
	.type	pbkdf2_sha1, @function
pbkdf2_sha1:
.LFB108:
	.loc 1 109 1 is_stmt 1
	.cfi_startproc
.LVL22:
	.loc 1 110 2
	.loc 1 111 2
	.loc 1 109 1 is_stmt 0
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	s0,72(sp)
	sw	s2,64(sp)
	sw	s3,60(sp)
	sw	s4,56(sp)
	sw	s5,52(sp)
	sw	s6,48(sp)
	sw	s7,44(sp)
	sw	s8,40(sp)
	sw	ra,76(sp)
	sw	s1,68(sp)
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.loc 1 109 1
	mv	s4,a0
	mv	s5,a1
	mv	s6,a2
	mv	s7,a3
	mv	s3,a4
.LVL23:
	.loc 1 112 2 is_stmt 1
	.loc 1 109 1 is_stmt 0
	mv	s0,a5
.LVL24:
	.loc 1 113 2 is_stmt 1
	.loc 1 115 2
	.loc 1 110 15 is_stmt 0
	li	s2,0
	.loc 1 120 8
	li	s8,20
.LVL25:
.L8:
	.loc 1 115 8 is_stmt 1
	bne	s0,zero,.L11
	.loc 1 126 9 is_stmt 0
	li	a0,0
.L7:
	.loc 1 127 1
	lw	ra,76(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
.LVL26:
	lw	s1,68(sp)
	.cfi_restore 9
	lw	s2,64(sp)
	.cfi_restore 18
.LVL27:
	lw	s3,60(sp)
	.cfi_restore 19
.LVL28:
	lw	s4,56(sp)
	.cfi_restore 20
.LVL29:
	lw	s5,52(sp)
	.cfi_restore 21
.LVL30:
	lw	s6,48(sp)
	.cfi_restore 22
.LVL31:
	lw	s7,44(sp)
	.cfi_restore 23
.LVL32:
	lw	s8,40(sp)
	.cfi_restore 24
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
.LVL33:
.L11:
	.cfi_restore_state
	.loc 1 116 3 is_stmt 1
	.loc 1 116 8 is_stmt 0
	addi	s2,s2,1
.LVL34:
	.loc 1 117 3 is_stmt 1
	.loc 1 117 7 is_stmt 0
	addi	a5,sp,12
	mv	a4,s2
	mv	a3,s7
	mv	a2,s6
	mv	a1,s5
	mv	a0,s4
	call	pbkdf2_sha1_f
.LVL35:
	.loc 1 117 6
	bne	a0,zero,.L12
	.loc 1 120 3 is_stmt 1
	.loc 1 120 8 is_stmt 0
	mv	s1,s0
	bleu	s0,s8,.L10
	li	s1,20
.L10:
.LVL36:
	.loc 1 121 3 is_stmt 1
	mv	a0,s3
	mv	a2,s1
	addi	a1,sp,12
	call	os_memcpy
.LVL37:
	.loc 1 122 3
	.loc 1 122 7 is_stmt 0
	add	s3,s3,s1
.LVL38:
	.loc 1 123 3 is_stmt 1
	.loc 1 123 8 is_stmt 0
	sub	s0,s0,s1
.LVL39:
	j	.L8
.LVL40:
.L12:
	.loc 1 119 11
	li	a0,-1
	j	.L7
	.cfi_endproc
.LFE108:
	.size	pbkdf2_sha1, .-pbkdf2_sha1
	.text
.Letext0:
	.file 2 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\machine\\_default_types.h"
	.file 3 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\sys\\_stdint.h"
	.file 4 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\lib\\gcc\\riscv64-unknown-elf\\10.4.0\\include\\stddef.h"
	.file 5 ".\\components\\wireless\\wifi6\\qcc74x_wpa_supplicant\\src\\utils/os.h"
	.file 6 ".\\components\\crypto\\mbedtls\\mbedtls\\include/mbedtls/sha1.h"
	.file 7 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\string.h"
	.file 8 ".\\components\\wireless\\wifi6\\qcc74x_wpa_supplicant\\src\\utils/common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x436
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
	.4byte	.LASF5
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
	.byte	0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x60
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x54
	.byte	0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0xd1
	.byte	0x16
	.4byte	0x7c
	.byte	0x5
	.byte	0x4
	.4byte	0x38
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0x6
	.4byte	0xad
	.byte	0x5
	.byte	0x4
	.4byte	0xb4
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF15
	.byte	0x5
	.byte	0x4
	.4byte	0x83
	.byte	0x7
	.string	"u8"
	.byte	0x8
	.byte	0x95
	.byte	0x11
	.4byte	0x83
	.byte	0x6
	.4byte	0xcc
	.byte	0x5
	.byte	0x4
	.4byte	0xcc
	.byte	0x8
	.4byte	.LASF35
	.byte	0x1
	.byte	0x6b
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB108
	.4byte	.LFE108-.LFB108
	.byte	0x1
	.byte	0x9c
	.4byte	0x1fd
	.byte	0x9
	.4byte	.LASF16
	.byte	0x1
	.byte	0x6b
	.byte	0x1d
	.4byte	0xb9
	.4byte	.LLST10
	.byte	0x9
	.4byte	.LASF17
	.byte	0x1
	.byte	0x6b
	.byte	0x33
	.4byte	0x1fd
	.4byte	.LLST11
	.byte	0x9
	.4byte	.LASF18
	.byte	0x1
	.byte	0x6b
	.byte	0x40
	.4byte	0x9b
	.4byte	.LLST12
	.byte	0x9
	.4byte	.LASF19
	.byte	0x1
	.byte	0x6c
	.byte	0x7
	.4byte	0x75
	.4byte	.LLST13
	.byte	0xa
	.string	"buf"
	.byte	0x1
	.byte	0x6c
	.byte	0x17
	.4byte	0xdc
	.4byte	.LLST14
	.byte	0x9
	.4byte	.LASF20
	.byte	0x1
	.byte	0x6c
	.byte	0x23
	.4byte	0x9b
	.4byte	.LLST15
	.byte	0xb
	.4byte	.LASF21
	.byte	0x1
	.byte	0x6e
	.byte	0xf
	.4byte	0x7c
	.4byte	.LLST16
	.byte	0xc
	.string	"pos"
	.byte	0x1
	.byte	0x6f
	.byte	0x11
	.4byte	0xa7
	.4byte	.LLST17
	.byte	0xb
	.4byte	.LASF22
	.byte	0x1
	.byte	0x70
	.byte	0x9
	.4byte	0x9b
	.4byte	.LLST18
	.byte	0xb
	.4byte	.LASF23
	.byte	0x1
	.byte	0x70
	.byte	0x18
	.4byte	0x9b
	.4byte	.LLST19
	.byte	0xd
	.4byte	.LASF24
	.byte	0x1
	.byte	0x71
	.byte	0x10
	.4byte	0x203
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0xe
	.4byte	.LVL35
	.4byte	0x213
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
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5f
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0
	.byte	0x10
	.4byte	.LVL37
	.4byte	0x3f9
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0xd7
	.byte	0x11
	.4byte	0x38
	.4byte	0x213
	.byte	0x12
	.4byte	0x7c
	.byte	0x13
	.byte	0
	.byte	0x13
	.4byte	.LASF36
	.byte	0x1
	.byte	0x10
	.byte	0xc
	.4byte	0x75
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.byte	0x1
	.byte	0x9c
	.4byte	0x3c9
	.byte	0x9
	.4byte	.LASF16
	.byte	0x1
	.byte	0x10
	.byte	0x26
	.4byte	0xb9
	.4byte	.LLST0
	.byte	0x9
	.4byte	.LASF17
	.byte	0x1
	.byte	0x10
	.byte	0x3c
	.4byte	0x1fd
	.4byte	.LLST1
	.byte	0x9
	.4byte	.LASF18
	.byte	0x1
	.byte	0x11
	.byte	0x15
	.4byte	0x9b
	.4byte	.LLST2
	.byte	0x9
	.4byte	.LASF19
	.byte	0x1
	.byte	0x11
	.byte	0x23
	.4byte	0x75
	.4byte	.LLST3
	.byte	0x9
	.4byte	.LASF21
	.byte	0x1
	.byte	0x11
	.byte	0x3c
	.4byte	0x7c
	.4byte	.LLST4
	.byte	0x9
	.4byte	.LASF24
	.byte	0x1
	.byte	0x12
	.byte	0x12
	.4byte	0xdc
	.4byte	.LLST5
	.byte	0x14
	.string	"buf"
	.byte	0x1
	.byte	0x14
	.byte	0xe
	.4byte	0x3c9
	.byte	0x3
	.byte	0x91
	.byte	0xc4,0x7d
	.byte	0xc
	.string	"p"
	.byte	0x1
	.byte	0x15
	.byte	0xe
	.4byte	0xc6
	.4byte	.LLST6
	.byte	0x14
	.string	"msg"
	.byte	0x1
	.byte	0x15
	.byte	0x11
	.4byte	0x3d9
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x7d
	.byte	0xd
	.4byte	.LASF25
	.byte	0x1
	.byte	0x15
	.byte	0x1e
	.4byte	0x3e9
	.byte	0x3
	.byte	0x91
	.byte	0x8c,0x7d
	.byte	0xc
	.string	"i"
	.byte	0x1
	.byte	0x16
	.byte	0x9
	.4byte	0x75
	.4byte	.LLST7
	.byte	0xc
	.string	"j"
	.byte	0x1
	.byte	0x16
	.byte	0xc
	.4byte	0x75
	.4byte	.LLST8
	.byte	0xb
	.4byte	.LASF26
	.byte	0x1
	.byte	0x24
	.byte	0x9
	.4byte	0x75
	.4byte	.LLST9
	.byte	0xe
	.4byte	.LVL1
	.4byte	0x406
	.4byte	0x30b
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LVL2
	.4byte	0x413
	.4byte	0x32d
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0xc4,0x7d
	.byte	0xf
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xa
	.2byte	0x11c
	.byte	0
	.byte	0xe
	.4byte	.LVL4
	.4byte	0x420
	.4byte	0x34d
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
	.byte	0x78
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LVL8
	.4byte	0x42c
	.4byte	0x380
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xc4,0x7d
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xa
	.2byte	0x11c
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x82
	.byte	0x4
	.byte	0xf
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0xe
	.4byte	.LVL9
	.4byte	0x3f9
	.4byte	0x39f
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
	.byte	0x78
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0x10
	.4byte	.LVL17
	.4byte	0x42c
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xc4,0x7d
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xa
	.2byte	0x11c
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x44
	.byte	0xf
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	0x8f
	.4byte	0x3d9
	.byte	0x12
	.4byte	0x7c
	.byte	0x46
	.byte	0
	.byte	0x11
	.4byte	0x83
	.4byte	0x3e9
	.byte	0x12
	.4byte	0x7c
	.byte	0x23
	.byte	0
	.byte	0x11
	.4byte	0x83
	.4byte	0x3f9
	.byte	0x12
	.4byte	0x7c
	.byte	0x13
	.byte	0
	.byte	0x15
	.4byte	.LASF27
	.4byte	.LASF27
	.byte	0x5
	.2byte	0x154
	.byte	0x8
	.byte	0x15
	.4byte	.LASF28
	.4byte	.LASF28
	.byte	0x5
	.2byte	0x183
	.byte	0x8
	.byte	0x15
	.4byte	.LASF29
	.4byte	.LASF29
	.byte	0x6
	.2byte	0x188
	.byte	0x5
	.byte	0x16
	.4byte	.LASF30
	.4byte	.LASF30
	.byte	0x7
	.byte	0x1f
	.byte	0x8
	.byte	0x15
	.4byte	.LASF31
	.4byte	.LASF31
	.byte	0x6
	.2byte	0x178
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
	.byte	0x14
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
	.byte	0x16
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
.LLST10:
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL29
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LFE108
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL25
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LFE108
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL25
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LFE108
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL25
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LFE108
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL25
	.4byte	.LFE108
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL25
	.4byte	.LFE108
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL33
	.4byte	.LFE108
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL25
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL33
	.4byte	.LFE108
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL33
	.4byte	.LFE108
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL36
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1-1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL3
	.4byte	.LFE107
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1-1
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL6
	.4byte	.LFE107
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL1-1
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL12
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LFE107
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL1-1
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LFE107
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL1-1
	.4byte	.LVL15
	.2byte	0x3
	.byte	0x91
	.byte	0xfc,0x7c
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x3
	.byte	0x72
	.byte	0xfc,0x7c
	.4byte	.LVL16
	.4byte	.LFE107
	.2byte	0x3
	.byte	0x91
	.byte	0xfc,0x7c
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL1-1
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL13
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LFE107
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x6
	.byte	0x79
	.byte	0
	.byte	0x82
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0xa
	.byte	0x91
	.byte	0
	.byte	0x82
	.byte	0
	.byte	0x22
	.byte	0xa
	.2byte	0x160
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0xb
	.byte	0x91
	.byte	0
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x22
	.byte	0xa
	.2byte	0x160
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0xb
	.byte	0x72
	.byte	0
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x22
	.byte	0xa
	.2byte	0x160
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LFE107
	.2byte	0xa
	.byte	0x91
	.byte	0
	.byte	0x82
	.byte	0
	.byte	0x22
	.byte	0xa
	.2byte	0x160
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL16
	.4byte	.LFE107
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL17-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL17
	.4byte	.LFE107
	.2byte	0x2
	.byte	0x31
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
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.4byte	.LFB108
	.4byte	.LFE108-.LFB108
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB107
	.4byte	.LFE107
	.4byte	.LFB108
	.4byte	.LFE108
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF8:
	.string	"long long int"
.LASF32:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF5:
	.string	"__uint8_t"
.LASF13:
	.string	"size_t"
.LASF35:
	.string	"pbkdf2_sha1"
.LASF21:
	.string	"count"
.LASF24:
	.string	"digest"
.LASF4:
	.string	"long int"
.LASF22:
	.string	"left"
.LASF31:
	.string	"mbedtls_hmac_iter_ret"
.LASF18:
	.string	"ssid_len"
.LASF1:
	.string	"unsigned char"
.LASF7:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF19:
	.string	"iterations"
.LASF12:
	.string	"uint32_t"
.LASF26:
	.string	"padded"
.LASF29:
	.string	"mbedtls_hmac_iter_init"
.LASF6:
	.string	"__uint32_t"
.LASF34:
	.string	"C:\\\\Users\\\\cwier\\\\Documents\\\\GitHub\\\\qcom\\\\examples\\\\solutions\\\\rtsp_softap_cam\\\\build\\\\build_out\\\\components\\\\wireless\\\\wifi6\\\\qcc74x_wpa_supplicant"
.LASF10:
	.string	"unsigned int"
.LASF14:
	.string	"char"
.LASF11:
	.string	"uint8_t"
.LASF33:
	.string	".\\components\\wireless\\wifi6\\qcc74x_wpa_supplicant\\src\\crypto\\sha1-pbkdf2.c"
.LASF30:
	.string	"memcpy"
.LASF27:
	.string	"os_memcpy"
.LASF36:
	.string	"pbkdf2_sha1_f"
.LASF17:
	.string	"ssid"
.LASF2:
	.string	"short int"
.LASF25:
	.string	"output"
.LASF23:
	.string	"plen"
.LASF20:
	.string	"buflen"
.LASF28:
	.string	"os_strlen"
.LASF16:
	.string	"passphrase"
.LASF0:
	.string	"signed char"
.LASF15:
	.string	"_Bool"
.LASF9:
	.string	"long long unsigned int"
	.ident	"GCC: (GNU) 10.4.0"
