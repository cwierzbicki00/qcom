	.file	"hmac.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.pad_buf,"ax",@progbits
	.align	1
	.type	pad_buf, @function
pad_buf:
.LFB9:
	.file 1 ".\\components\\crypto\\mbedtls\\mbedtls\\library\\hmac.c"
	.loc 1 51 1
	.cfi_startproc
.LVL0:
	.loc 1 52 5
	.loc 1 51 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s1,4(sp)
	sw	s2,0(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 54 12
	li	s1,123
	.loc 1 52 14
	add	s2,a0,a1
.LVL1:
	.loc 1 53 5 is_stmt 1
	.loc 1 51 1 is_stmt 0
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 54 12
	sub	s1,s1,a1
	.loc 1 53 7
	addi	s2,s2,1
.LVL2:
	.loc 1 53 10
	li	a5,-128
	srb	a5,a0,a1,0
	.loc 1 54 5 is_stmt 1
.LVL3:
	.loc 1 55 5
	.loc 1 51 1 is_stmt 0
	mv	s0,a1
	.loc 1 55 5
	mv	a2,s1
	mv	a0,s2
.LVL4:
	li	a1,0
.LVL5:
	call	memset
.LVL6:
	.loc 1 56 5 is_stmt 1
	.loc 1 56 7 is_stmt 0
	add	a5,s2,s1
.LVL7:
	.loc 1 57 5 is_stmt 1
	.loc 1 59 14 is_stmt 0
	srb	zero,s2,s1,0
	.loc 1 57 12
	slli	a4,s0,3
.LVL8:
	.loc 1 59 9 is_stmt 1
	.loc 1 60 9
	.loc 1 61 41 is_stmt 0
	extu	s0,s0,5+24-1,5
.LVL9:
	.loc 1 60 14
	sb	zero,1(a5)
	.loc 1 61 9 is_stmt 1
	.loc 1 61 16 is_stmt 0
	sb	s0,2(a5)
	.loc 1 62 9 is_stmt 1
	.loc 1 62 16 is_stmt 0
	sb	a4,3(a5)
	.loc 1 64 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
.LVL10:
	lw	s2,0(sp)
	.cfi_restore 18
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	pad_buf, .-pad_buf
	.section	.text.mbedtls_hmac_iter_init,"ax",@progbits
	.align	1
	.globl	mbedtls_hmac_iter_init
	.type	mbedtls_hmac_iter_init, @function
mbedtls_hmac_iter_init:
.LFB8:
	.loc 1 18 1 is_stmt 1
	.cfi_startproc
.LVL11:
	.loc 1 19 5
	.loc 1 20 5
	.loc 1 22 5
	.loc 1 18 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s1,36(sp)
	.cfi_offset 9, -12
	mv	s1,a2
	sw	s2,32(sp)
	sw	s3,28(sp)
	.loc 1 22 5
	mv	a2,a3
.LVL12:
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.loc 1 18 1
	mv	s3,a0
	mv	s2,a1
	.loc 1 22 5
	mv	a0,s1
.LVL13:
	li	a1,0
.LVL14:
	.loc 1 18 1
	sw	s0,40(sp)
	.loc 1 22 5
	sw	a3,12(sp)
	.cfi_offset 8, -8
	.loc 1 23 49
	addi	s0,s1,31
	.loc 1 18 1
	sw	ra,44(sp)
	.cfi_offset 1, -4
	.loc 1 22 5
	call	memset
.LVL15:
	.loc 1 23 5 is_stmt 1
	.loc 1 23 56 is_stmt 0
	andi	s0,s0,-32
.LVL16:
	.loc 1 24 5 is_stmt 1
	.loc 1 24 7 is_stmt 0
	lw	a3,12(sp)
	.loc 1 24 24
	sub	s1,s0,s1
.LVL17:
	.loc 1 24 30
	addi	s1,s1,256
	.loc 1 24 7
	bgtu	s1,a3,.L4
	.loc 1 27 5 is_stmt 1
	.loc 1 27 7 is_stmt 0
	li	a5,64
	bgtu	s2,a5,.L4
	.loc 1 30 5 is_stmt 1
.LVL18:
	.loc 1 32 5
	mv	a2,s2
	mv	a1,s3
	mv	a0,s0
	call	memcpy
.LVL19:
	.loc 1 33 5
	mv	a2,s2
	mv	a1,s3
	addi	a0,s0,128
.LVL20:
	call	memcpy
.LVL21:
	.loc 1 34 5
	.loc 1 35 5
	.loc 1 36 5
	.loc 1 36 17
	.loc 1 37 15 is_stmt 0
	li	a3,909520896
	.loc 1 38 16
	li	a4,1549557760
	addi	a0,s0,64
	.loc 1 37 15
	addi	a3,a3,1590
	.loc 1 38 16
	addi	a4,a4,-932
.LVL22:
.L5:
	mv	a1,s0
	.loc 1 37 15 discriminator 3
	lw	a5,0(a1)
	addi	a2,s0,128
.LVL23:
	.loc 1 37 9 is_stmt 1 discriminator 3
	.loc 1 37 12 is_stmt 0 discriminator 3
	addi	s0,s0,4
.LVL24:
	.loc 1 37 15 discriminator 3
	xor	a5,a5,a3
	sw	a5,0(a1)
	.loc 1 38 9 is_stmt 1 discriminator 3
.LVL25:
	.loc 1 38 16 is_stmt 0 discriminator 3
	lw	a5,0(a2)
	xor	a5,a5,a4
	sw	a5,0(a2)
	.loc 1 36 25 is_stmt 1 discriminator 3
	.loc 1 36 17 discriminator 3
	.loc 1 36 5 is_stmt 0 discriminator 3
	bne	s0,a0,.L5
	.loc 1 42 5 is_stmt 1
	call	mbedtls_sha1_once_padded_init
.LVL26:
.L4:
	.loc 1 47 5
	.loc 1 48 1 is_stmt 0
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
.LVL27:
	lw	s3,28(sp)
	.cfi_restore 19
.LVL28:
	li	a0,-110
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
.LVL29:
	jr	ra
	.cfi_endproc
.LFE8:
	.size	mbedtls_hmac_iter_init, .-mbedtls_hmac_iter_init
	.section	.text.mbedtls_hmac_iter_ret,"ax",@progbits
	.align	1
	.globl	mbedtls_hmac_iter_ret
	.type	mbedtls_hmac_iter_ret, @function
mbedtls_hmac_iter_ret:
.LFB10:
	.loc 1 69 1 is_stmt 1
	.cfi_startproc
.LVL30:
	.loc 1 70 5
	.loc 1 72 5
	.loc 1 69 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	.cfi_offset 8, -8
	.loc 1 72 49
	addi	s0,a0,31
	.loc 1 72 56
	andi	s0,s0,-32
.LVL31:
	.loc 1 73 5 is_stmt 1
	.loc 1 75 5
	.loc 1 75 24 is_stmt 0
	sub	a0,s0,a0
.LVL32:
	.loc 1 69 1
	sw	ra,28(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.loc 1 75 30
	addi	a0,a0,256
	.loc 1 75 7
	bgtu	a0,a1,.L12
	.loc 1 78 5 is_stmt 1
	.loc 1 78 7 is_stmt 0
	li	a1,59
.LVL33:
	bgtu	a3,a1,.L12
	mv	s3,a5
	mv	a1,a2
	.loc 1 81 9 is_stmt 1
	addi	a0,s0,64
	mv	a2,a3
.LVL34:
	addi	s4,s0,128
.LVL35:
	mv	s2,a4
	mv	s1,a3
	call	memcpy
.LVL36:
	.loc 1 83 5
	.loc 1 83 7 is_stmt 0
	bne	s3,zero,.L10
	.loc 1 84 9 is_stmt 1
	addi	a1,s1,64
	mv	a0,s0
	call	pad_buf
.LVL37:
	.loc 1 85 9
	li	a1,84
	mv	a0,s4
	call	pad_buf
.LVL38:
.L10:
	.loc 1 115 5
	.loc 1 115 17 is_stmt 0
	li	a2,2
	addi	a1,s0,192
	mv	a0,s0
	call	mbedtls_sha1_once_padded
.LVL39:
	.loc 1 115 7
	bne	a0,zero,.L8
	.loc 1 118 5 is_stmt 1
	.loc 1 125 1 is_stmt 0
	lw	s0,24(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL40:
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s1,20(sp)
	.cfi_restore 9
.LVL41:
	lw	s3,12(sp)
	.cfi_restore 19
.LVL42:
	.loc 1 118 17
	mv	a1,s2
	mv	a0,s4
.LVL43:
	.loc 1 125 1
	lw	s2,16(sp)
	.cfi_restore 18
.LVL44:
	lw	s4,8(sp)
	.cfi_restore 20
.LVL45:
	.loc 1 118 17
	li	a2,2
	.loc 1 125 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	.loc 1 118 17
	tail	mbedtls_sha1_once_padded
.LVL46:
.L12:
	.cfi_restore_state
	.loc 1 70 9
	li	a0,-110
	.loc 1 124 5 is_stmt 1
.L9:
.LVL47:
.L8:
	.loc 1 125 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL48:
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	mbedtls_hmac_iter_ret, .-mbedtls_hmac_iter_ret
	.section	.text.mbedtls_hmac,"ax",@progbits
	.align	1
	.globl	mbedtls_hmac
	.type	mbedtls_hmac, @function
mbedtls_hmac:
.LFB11:
	.loc 1 131 1 is_stmt 1
	.cfi_startproc
.LVL49:
	.loc 1 132 5
	.loc 1 134 5
	.loc 1 131 1 is_stmt 0
	addi	sp,sp,-320
	.cfi_def_cfa_offset 320
	sw	s0,312(sp)
	sw	s1,308(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a2
	mv	s1,a3
	.loc 1 134 5
	addi	a2,sp,20
.LVL50:
	li	a3,284
.LVL51:
	.loc 1 131 1
	sw	ra,316(sp)
	.cfi_offset 1, -4
	.loc 1 131 1
	sw	a4,12(sp)
	.loc 1 134 5
	call	mbedtls_hmac_iter_init
.LVL52:
	.loc 1 135 5 is_stmt 1
	lw	a4,12(sp)
	mv	a3,s1
	mv	a2,s0
	addi	a0,sp,20
	li	a5,0
	li	a1,284
	call	mbedtls_hmac_iter_ret
.LVL53:
	.loc 1 136 1 is_stmt 0
	lw	ra,316(sp)
	.cfi_restore 1
	lw	s0,312(sp)
	.cfi_restore 8
.LVL54:
	lw	s1,308(sp)
	.cfi_restore 9
.LVL55:
	addi	sp,sp,320
	.cfi_def_cfa_offset 0
.LVL56:
	jr	ra
	.cfi_endproc
.LFE11:
	.size	mbedtls_hmac, .-mbedtls_hmac
	.text
.Letext0:
	.file 2 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\machine\\_default_types.h"
	.file 3 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\lib\\gcc\\riscv64-unknown-elf\\10.4.0\\include\\stddef.h"
	.file 4 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\sys\\_stdint.h"
	.file 5 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\string.h"
	.file 6 ".\\components\\crypto\\mbedtls\\mbedtls\\include/mbedtls/sha1.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x4d9
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
	.byte	0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x65
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
	.byte	0x5
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
	.byte	0xd1
	.byte	0x16
	.4byte	0x81
	.byte	0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x59
	.byte	0x6
	.byte	0x4
	.4byte	0x38
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0x7
	.4byte	.LASF35
	.byte	0x1
	.byte	0x80
	.byte	0x6
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x18b
	.byte	0x8
	.string	"key"
	.byte	0x1
	.byte	0x80
	.byte	0x29
	.4byte	0x18b
	.4byte	.LLST22
	.byte	0x9
	.4byte	.LASF15
	.byte	0x1
	.byte	0x80
	.byte	0x35
	.4byte	0x88
	.4byte	.LLST23
	.byte	0x8
	.string	"msg"
	.byte	0x1
	.byte	0x81
	.byte	0x23
	.4byte	0xac
	.4byte	.LLST24
	.byte	0x9
	.4byte	.LASF16
	.byte	0x1
	.byte	0x81
	.byte	0x2f
	.4byte	0x88
	.4byte	.LLST25
	.byte	0x9
	.4byte	.LASF17
	.byte	0x1
	.byte	0x82
	.byte	0x22
	.4byte	0xac
	.4byte	.LLST26
	.byte	0xa
	.string	"buf"
	.byte	0x1
	.byte	0x84
	.byte	0xe
	.4byte	0x191
	.byte	0x3
	.byte	0x91
	.byte	0xd4,0x7d
	.byte	0xb
	.4byte	.LVL52
	.4byte	0x378
	.4byte	0x159
	.byte	0xc
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xc
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0xc
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0xd4,0x7d
	.byte	0xc
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xa
	.2byte	0x11c
	.byte	0
	.byte	0xd
	.4byte	.LVL53
	.4byte	0x1a1
	.byte	0xc
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xd4,0x7d
	.byte	0xc
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xa
	.2byte	0x11c
	.byte	0xc
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xc
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xc
	.byte	0x1
	.byte	0x5e
	.byte	0x4
	.byte	0x91
	.byte	0xcc,0x7d
	.byte	0x6
	.byte	0xc
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x3f
	.byte	0xe
	.4byte	0xa0
	.4byte	0x1a1
	.byte	0xf
	.4byte	0x81
	.byte	0x46
	.byte	0
	.byte	0x10
	.4byte	.LASF25
	.byte	0x1
	.byte	0x42
	.byte	0x5
	.4byte	0x7a
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x2f4
	.byte	0x8
	.string	"buf"
	.byte	0x1
	.byte	0x42
	.byte	0x2b
	.4byte	0xac
	.4byte	.LLST13
	.byte	0x9
	.4byte	.LASF18
	.byte	0x1
	.byte	0x42
	.byte	0x37
	.4byte	0x88
	.4byte	.LLST14
	.byte	0x8
	.string	"msg"
	.byte	0x1
	.byte	0x43
	.byte	0x2b
	.4byte	0xac
	.4byte	.LLST15
	.byte	0x9
	.4byte	.LASF16
	.byte	0x1
	.byte	0x43
	.byte	0x37
	.4byte	0x88
	.4byte	.LLST16
	.byte	0x9
	.4byte	.LASF17
	.byte	0x1
	.byte	0x44
	.byte	0x2a
	.4byte	0xac
	.4byte	.LLST17
	.byte	0x9
	.4byte	.LASF19
	.byte	0x1
	.byte	0x44
	.byte	0x3a
	.4byte	0x7a
	.4byte	.LLST18
	.byte	0x11
	.string	"ret"
	.byte	0x1
	.byte	0x46
	.byte	0x9
	.4byte	0x7a
	.4byte	.LLST19
	.byte	0x12
	.4byte	.LASF20
	.byte	0x1
	.byte	0x48
	.byte	0xe
	.4byte	0x2f4
	.4byte	.LLST20
	.byte	0x12
	.4byte	.LASF21
	.byte	0x1
	.byte	0x49
	.byte	0xe
	.4byte	0x2f4
	.4byte	.LLST21
	.byte	0x13
	.4byte	.LASF27
	.byte	0x1
	.byte	0x7a
	.byte	0x1
	.4byte	.L9
	.byte	0xb
	.4byte	.LVL36
	.4byte	0x4aa
	.4byte	0x279
	.byte	0xc
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xc0,0
	.byte	0xc
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0xc
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0xb
	.4byte	.LVL37
	.4byte	0x2fa
	.4byte	0x294
	.byte	0xc
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xc
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x79
	.byte	0xc0,0
	.byte	0
	.byte	0xb
	.4byte	.LVL38
	.4byte	0x2fa
	.4byte	0x2ae
	.byte	0xc
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0xc
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x54
	.byte	0
	.byte	0xb
	.4byte	.LVL39
	.4byte	0x4b6
	.4byte	0x2ce
	.byte	0xc
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xc
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0xc0,0x1
	.byte	0xc
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x14
	.4byte	.LVL46
	.4byte	0x4b6
	.byte	0xc
	.byte	0x1
	.byte	0x5a
	.byte	0xb
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x1f
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x23
	.byte	0x80,0x1
	.byte	0xc
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0xc
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x94
	.byte	0x15
	.4byte	.LASF36
	.byte	0x1
	.byte	0x32
	.byte	0xd
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x378
	.byte	0x8
	.string	"buf"
	.byte	0x1
	.byte	0x32
	.byte	0x1e
	.4byte	0x2f4
	.4byte	.LLST0
	.byte	0x9
	.4byte	.LASF22
	.byte	0x1
	.byte	0x32
	.byte	0x2a
	.4byte	0x88
	.4byte	.LLST1
	.byte	0x11
	.string	"p"
	.byte	0x1
	.byte	0x34
	.byte	0xe
	.4byte	0x2f4
	.4byte	.LLST2
	.byte	0x12
	.4byte	.LASF23
	.byte	0x1
	.byte	0x36
	.byte	0xc
	.4byte	0x88
	.4byte	.LLST3
	.byte	0x16
	.4byte	.LASF24
	.byte	0x1
	.byte	0x39
	.byte	0xc
	.4byte	0x88
	.byte	0x1
	.byte	0x5e
	.byte	0xd
	.4byte	.LVL6
	.4byte	0x4c3
	.byte	0xc
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0xc
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0xc
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LASF26
	.byte	0x1
	.byte	0x10
	.byte	0x5
	.4byte	0x7a
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x4a4
	.byte	0x8
	.string	"key"
	.byte	0x1
	.byte	0x10
	.byte	0x32
	.4byte	0x18b
	.4byte	.LLST4
	.byte	0x9
	.4byte	.LASF15
	.byte	0x1
	.byte	0x10
	.byte	0x3e
	.4byte	0x88
	.4byte	.LLST5
	.byte	0x8
	.string	"buf"
	.byte	0x1
	.byte	0x11
	.byte	0x2c
	.4byte	0xac
	.4byte	.LLST6
	.byte	0x9
	.4byte	.LASF18
	.byte	0x1
	.byte	0x11
	.byte	0x38
	.4byte	0x88
	.4byte	.LLST7
	.byte	0x11
	.string	"i"
	.byte	0x1
	.byte	0x13
	.byte	0x9
	.4byte	0x7a
	.4byte	.LLST8
	.byte	0x17
	.string	"ret"
	.byte	0x1
	.byte	0x13
	.byte	0xc
	.4byte	0x7a
	.byte	0x92,0x7f
	.byte	0x11
	.string	"pw"
	.byte	0x1
	.byte	0x14
	.byte	0xf
	.4byte	0x4a4
	.4byte	.LLST9
	.byte	0x11
	.string	"pw2"
	.byte	0x1
	.byte	0x14
	.byte	0x14
	.4byte	0x4a4
	.4byte	.LLST10
	.byte	0x12
	.4byte	.LASF20
	.byte	0x1
	.byte	0x17
	.byte	0xe
	.4byte	0x2f4
	.4byte	.LLST11
	.byte	0x13
	.4byte	.LASF27
	.byte	0x1
	.byte	0x2d
	.byte	0x1
	.4byte	.L4
	.byte	0x12
	.4byte	.LASF21
	.byte	0x1
	.byte	0x1e
	.byte	0xe
	.4byte	0x2f4
	.4byte	.LLST12
	.byte	0xb
	.4byte	.LVL15
	.4byte	0x4c3
	.4byte	0x459
	.byte	0xc
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xc
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0xc
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0x5c
	.byte	0x6
	.byte	0
	.byte	0xb
	.4byte	.LVL19
	.4byte	0x4aa
	.4byte	0x479
	.byte	0xc
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xc
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0xc
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0xb
	.4byte	.LVL21
	.4byte	0x4aa
	.4byte	0x49a
	.byte	0xc
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0x80,0x1
	.byte	0xc
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0xc
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL26
	.4byte	0x4cf
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xa0
	.byte	0x19
	.4byte	.LASF28
	.4byte	.LASF28
	.byte	0x5
	.byte	0x1f
	.byte	0x8
	.byte	0x1a
	.4byte	.LASF29
	.4byte	.LASF29
	.byte	0x6
	.2byte	0x160
	.byte	0x5
	.byte	0x19
	.4byte	.LASF30
	.4byte	.LASF30
	.byte	0x5
	.byte	0x21
	.byte	0x8
	.byte	0x1a
	.4byte	.LASF31
	.4byte	.LASF31
	.byte	0x6
	.2byte	0x168
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
	.byte	0x8
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
	.byte	0xb
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
	.byte	0xc
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x14
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
	.byte	0x15
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
	.byte	0x16
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
	.byte	0x17
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
	.byte	0x1c
	.byte	0xd
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
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
.LLST22:
	.4byte	.LVL49
	.4byte	.LVL52-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL52-1
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL49
	.4byte	.LVL52-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL52-1
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL50
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL54
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL51
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL55
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL49
	.4byte	.LVL52-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL52-1
	.4byte	.LVL56
	.2byte	0x3
	.byte	0x91
	.byte	0xcc,0x7d
	.4byte	.LVL56
	.4byte	.LFE11
	.2byte	0x3
	.byte	0x72
	.byte	0xcc,0x7d
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL32
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL33
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL30
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL34
	.4byte	.LVL36-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL36-1
	.4byte	.LVL46
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL47
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL30
	.4byte	.LVL36-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL36-1
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL41
	.4byte	.LVL46
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL47
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL30
	.4byte	.LVL36-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL36-1
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL44
	.4byte	.LVL46-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL46-1
	.4byte	.LVL46
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL47
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL30
	.4byte	.LVL36-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL36-1
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL42
	.4byte	.LVL46
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL47
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL30
	.4byte	.LVL39
	.2byte	0x3
	.byte	0x9
	.byte	0x92
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x3
	.byte	0x9
	.byte	0x92
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL31
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL40
	.4byte	.LVL45
	.2byte	0x4
	.byte	0x84
	.byte	0x80,0x7f
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL46-1
	.2byte	0x4
	.byte	0x7a
	.byte	0x80,0x7f
	.byte	0x9f
	.4byte	.LVL46-1
	.4byte	.LVL46
	.2byte	0x9
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x1f
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL48
	.4byte	.LFE10
	.2byte	0x9
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x1f
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL31
	.4byte	.LVL35
	.2byte	0x4
	.byte	0x78
	.byte	0x80,0x1
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL45
	.4byte	.LVL46-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL46-1
	.4byte	.LVL46
	.2byte	0xc
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x1f
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x23
	.byte	0x80,0x1
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x4
	.byte	0x78
	.byte	0x80,0x1
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LFE10
	.2byte	0xc
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x1f
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x23
	.byte	0x80,0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL9
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL7
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL3
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL10
	.4byte	.LFE9
	.2byte	0x7
	.byte	0x8
	.byte	0x7b
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL28
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL14
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL27
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL12
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL17
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL11
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL15-1
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x91
	.byte	0x5c
	.4byte	.LVL29
	.4byte	.LFE8
	.2byte	0x2
	.byte	0x72
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x4
	.byte	0x78
	.byte	0x80,0x1
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x4
	.byte	0x78
	.byte	0x80,0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL16
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL22
	.4byte	.LVL26-1
	.2byte	0x3
	.byte	0x7a
	.byte	0x40
	.byte	0x9f
	.4byte	.LVL26-1
	.4byte	.LFE8
	.2byte	0x9
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x23
	.byte	0x1f
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x4
	.byte	0x78
	.byte	0x80,0x1
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21-1
	.4byte	.LVL22
	.2byte	0x4
	.byte	0x78
	.byte	0x80,0x1
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL26-1
	.2byte	0x4
	.byte	0x7a
	.byte	0xc0,0
	.byte	0x9f
	.4byte	.LVL26-1
	.4byte	.LVL26
	.2byte	0xc
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x23
	.byte	0x1f
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x23
	.byte	0x80,0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF20:
	.string	"buf1"
.LASF21:
	.string	"buf2"
.LASF5:
	.string	"__uint8_t"
.LASF11:
	.string	"size_t"
.LASF19:
	.string	"padded"
.LASF2:
	.string	"short int"
.LASF25:
	.string	"mbedtls_hmac_iter_ret"
.LASF34:
	.string	"C:\\\\Users\\\\cwier\\\\Documents\\\\GitHub\\\\qcom\\\\examples\\\\solutions\\\\rtsp_softap_cam\\\\build\\\\build_out\\\\components\\\\crypto\\\\mbedtls"
.LASF1:
	.string	"unsigned char"
.LASF32:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF35:
	.string	"mbedtls_hmac"
.LASF3:
	.string	"short unsigned int"
.LASF18:
	.string	"buf_len"
.LASF6:
	.string	"__uint32_t"
.LASF30:
	.string	"memset"
.LASF7:
	.string	"long unsigned int"
.LASF26:
	.string	"mbedtls_hmac_iter_init"
.LASF33:
	.string	".\\components\\crypto\\mbedtls\\mbedtls\\library\\hmac.c"
.LASF29:
	.string	"mbedtls_sha1_once_padded"
.LASF10:
	.string	"unsigned int"
.LASF22:
	.string	"input_len"
.LASF9:
	.string	"long long unsigned int"
.LASF12:
	.string	"uint8_t"
.LASF36:
	.string	"pad_buf"
.LASF8:
	.string	"long long int"
.LASF14:
	.string	"char"
.LASF28:
	.string	"memcpy"
.LASF27:
	.string	"exit"
.LASF17:
	.string	"output"
.LASF15:
	.string	"key_len"
.LASF13:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF31:
	.string	"mbedtls_sha1_once_padded_init"
.LASF24:
	.string	"input_len_bits"
.LASF23:
	.string	"pad_len"
.LASF0:
	.string	"signed char"
.LASF16:
	.string	"msg_len"
	.ident	"GCC: (GNU) 10.4.0"
