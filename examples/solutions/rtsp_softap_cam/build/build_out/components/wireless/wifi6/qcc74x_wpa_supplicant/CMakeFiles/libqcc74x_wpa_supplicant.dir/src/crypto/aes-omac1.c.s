	.file	"aes-omac1.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.gf_mulx,"ax",@progbits
	.align	1
	.type	gf_mulx, @function
gf_mulx:
.LFB106:
	.file 1 ".\\components\\wireless\\wifi6\\qcc74x_wpa_supplicant\\src\\crypto\\aes-omac1.c"
	.loc 1 17 1
	.cfi_startproc
.LVL0:
	.loc 1 18 2
	.loc 1 20 2
	.loc 1 20 13 is_stmt 0
	lbu	a3,0(a0)
.LVL1:
	.loc 1 21 2 is_stmt 1
	.loc 1 21 14
	mv	a5,a0
	addi	a1,a0,15
.LVL2:
.L2:
	.loc 1 22 3 discriminator 3
	.loc 1 22 16 is_stmt 0 discriminator 3
	lbu	a4,0(a5)
	.loc 1 22 26 discriminator 3
	lbu	a2,1(a5)
	.loc 1 22 20 discriminator 3
	slli	a4,a4,1
	.loc 1 22 26 discriminator 3
	srli	a2,a2,7
	or	a4,a4,a2
	.loc 1 22 10 discriminator 3
	sbia	a4,(a5),1,0
.LVL3:
	.loc 1 21 26 is_stmt 1 discriminator 3
	.loc 1 21 14 discriminator 3
	.loc 1 21 2 is_stmt 0 discriminator 3
	bne	a1,a5,.L2
	.loc 1 23 2 is_stmt 1
	.loc 1 23 14 is_stmt 0
	lbu	a5,15(a0)
.LVL4:
	.loc 1 24 5
	ext	a4,a3,7,0
	.loc 1 23 14
	slli	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 24 2 is_stmt 1
	.loc 1 24 5 is_stmt 0
	blt	a4,zero,.L3
.L6:
	.loc 1 25 15
	sb	a5,15(a0)
	.loc 1 26 1
	ret
.L3:
	.loc 1 25 3 is_stmt 1
	.loc 1 25 15 is_stmt 0
	xori	a5,a5,-121
	j	.L6
	.cfi_endproc
.LFE106:
	.size	gf_mulx, .-gf_mulx
	.section	.text.omac1_aes_vector,"ax",@progbits
	.align	1
	.globl	omac1_aes_vector
	.type	omac1_aes_vector, @function
omac1_aes_vector:
.LFB107:
	.loc 1 45 1 is_stmt 1
	.cfi_startproc
.LVL5:
	.loc 1 46 2
	.loc 1 47 2
	.loc 1 48 2
	.loc 1 49 2
	.loc 1 51 2
	.loc 1 54 2
	.loc 1 45 1 is_stmt 0
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	s0,72(sp)
	sw	s5,52(sp)
	sw	s6,48(sp)
	sw	s9,36(sp)
	sw	ra,76(sp)
	sw	s1,68(sp)
	sw	s2,64(sp)
	sw	s3,60(sp)
	sw	s4,56(sp)
	sw	s7,44(sp)
	sw	s8,40(sp)
	sw	s10,32(sp)
	.cfi_offset 8, -8
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 25, -44
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 26, -48
	.loc 1 45 1
	mv	s0,a2
	mv	s6,a3
	mv	s9,a4
	mv	s5,a5
	.loc 1 54 8
	call	aes_encrypt_init
.LVL6:
	.loc 1 55 2 is_stmt 1
	.loc 1 55 5 is_stmt 0
	beq	a0,zero,.L21
	mv	s3,a0
	.loc 1 57 2 is_stmt 1
	li	a2,16
	li	a1,0
	mv	a0,sp
.LVL7:
	call	os_memset
.LVL8:
	.loc 1 59 2
	.loc 1 60 2
	.loc 1 59 12 is_stmt 0
	li	s2,0
	.loc 1 60 9
	li	a5,0
.LVL9:
.L9:
	.loc 1 60 14 is_stmt 1 discriminator 1
	.loc 1 60 2 is_stmt 0 discriminator 1
	bne	a5,s0,.L10
	.loc 1 62 2 is_stmt 1
.LVL10:
	.loc 1 64 2
	.loc 1 65 2
	.loc 1 65 6 is_stmt 0
	lw	s0,0(s6)
.LVL11:
	.loc 1 66 2 is_stmt 1
	.loc 1 66 6 is_stmt 0
	lw	s1,0(s9)
	.loc 1 68 8
	mv	s4,s2
	.loc 1 64 4
	li	s10,0
	.loc 1 66 6
	add	s1,s0,s1
.LVL12:
	.loc 1 68 2 is_stmt 1
	.loc 1 68 8 is_stmt 0
	li	s8,15
	.loc 1 76 21
	li	s7,16
.LVL13:
.L11:
	.loc 1 68 8 is_stmt 1
	bgtu	s4,s8,.L24
	srli	a5,s2,4
	li	a4,-16
	mv	s4,s2
.LVL14:
	mula	s4,a5,a4
	.loc 1 89 2
	li	a2,16
	li	a1,0
	addi	a0,sp,16
	call	os_memset
.LVL15:
	.loc 1 90 2
	addi	a2,sp,16
	mv	a1,a2
	mv	a0,s3
	call	aes_encrypt
.LVL16:
	.loc 1 91 2
	addi	a0,sp,16
	call	gf_mulx
.LVL17:
	.loc 1 93 2
	.loc 1 93 5 is_stmt 0
	bne	s4,zero,.L25
	.loc 1 93 11 discriminator 1
	bne	s2,zero,.L17
.L19:
.LVL18:
	.loc 1 108 3 is_stmt 1
	.loc 1 108 13 is_stmt 0
	lrbu	a5,sp,s4,0
	.loc 1 109 3
	addi	a0,sp,16
	.loc 1 108 13
	xori	a5,a5,-128
	srb	a5,sp,s4,0
	.loc 1 109 3 is_stmt 1
	call	gf_mulx
.LVL19:
.L17:
	li	a5,0
	.loc 1 112 2 is_stmt 0 discriminator 3
	li	a3,16
.L20:
.LVL20:
	.loc 1 113 3 is_stmt 1 discriminator 3
	.loc 1 113 10 is_stmt 0 discriminator 3
	addi	a4,sp,16
	lrbu	a4,a4,a5,0
	lrbu	a2,sp,a5,0
	xor	a4,a4,a2
	addi	a2,sp,16
	srb	a4,a2,a5,0
	.loc 1 112 22 is_stmt 1 discriminator 3
	.loc 1 112 23 is_stmt 0 discriminator 3
	addi	a5,a5,1
.LVL21:
	.loc 1 112 14 is_stmt 1 discriminator 3
	.loc 1 112 2 is_stmt 0 discriminator 3
	bne	a5,a3,.L20
	.loc 1 114 2 is_stmt 1
	mv	a2,s5
	addi	a1,sp,16
	mv	a0,s3
	call	aes_encrypt
.LVL22:
	.loc 1 115 2
	mv	a0,s3
	call	aes_encrypt_deinit
.LVL23:
	.loc 1 116 2
	.loc 1 116 9 is_stmt 0
	li	a0,0
.LVL24:
.L7:
	.loc 1 117 1
	lw	ra,76(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
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
.LVL25:
	lw	s6,48(sp)
	.cfi_restore 22
.LVL26:
	lw	s7,44(sp)
	.cfi_restore 23
	lw	s8,40(sp)
	.cfi_restore 24
	lw	s9,36(sp)
	.cfi_restore 25
.LVL27:
	lw	s10,32(sp)
	.cfi_restore 26
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
.LVL28:
.L10:
	.cfi_restore_state
	.loc 1 61 3 is_stmt 1 discriminator 3
	.loc 1 61 13 is_stmt 0 discriminator 3
	lrw	a4,s9,a5,2
	.loc 1 60 29 discriminator 3
	addi	a5,a5,1
.LVL29:
	.loc 1 61 13 discriminator 3
	add	s2,s2,a4
.LVL30:
	.loc 1 60 28 is_stmt 1 discriminator 3
	j	.L9
.LVL31:
.L24:
	.loc 1 69 10 is_stmt 0
	li	a5,0
.L15:
.LVL32:
	.loc 1 70 4 is_stmt 1
	.loc 1 70 11 is_stmt 0
	lrbu	a3,sp,a5,0
	lbuia	a4,(s0),1,0
.LVL33:
	xor	a3,a3,a4
	srb	a3,sp,a5,0
	.loc 1 71 4 is_stmt 1
	.loc 1 71 7 is_stmt 0
	bltu	s0,s1,.L12
	.loc 1 76 5 is_stmt 1
	.loc 1 76 8 is_stmt 0
	bne	a5,s8,.L13
	.loc 1 76 21 discriminator 1
	beq	s4,s7,.L14
.L13:
	.loc 1 79 5 is_stmt 1
	.loc 1 79 6 is_stmt 0
	addi	s10,s10,1
.LVL34:
	.loc 1 80 5 is_stmt 1
	.loc 1 80 9 is_stmt 0
	lrw	s0,s6,s10,2
.LVL35:
	.loc 1 81 5 is_stmt 1
	.loc 1 81 9 is_stmt 0
	lrw	s1,s9,s10,2
.LVL36:
	add	s1,s0,s1
.LVL37:
.L12:
	.loc 1 69 23 is_stmt 1 discriminator 2
	.loc 1 69 24 is_stmt 0 discriminator 2
	addi	a5,a5,1
.LVL38:
	.loc 1 69 15 is_stmt 1 discriminator 2
	.loc 1 69 3 is_stmt 0 discriminator 2
	bne	a5,s7,.L15
	.loc 1 84 3 is_stmt 1
	.loc 1 84 6 is_stmt 0
	beq	s4,s7,.L14
	.loc 1 85 4 is_stmt 1
	mv	a2,sp
	mv	a1,sp
	mv	a0,s3
	call	aes_encrypt
.LVL39:
.L14:
	.loc 1 86 3
	.loc 1 86 8 is_stmt 0
	addi	s4,s4,-16
.LVL40:
	j	.L11
.LVL41:
.L25:
	li	a5,0
.L16:
.LVL42:
	.loc 1 95 4 is_stmt 1
	.loc 1 95 11 is_stmt 0
	lrbu	a3,sp,a5,0
	lbuia	a4,(s0),1,0
.LVL43:
	xor	a3,a3,a4
	srb	a3,sp,a5,0
	.loc 1 96 4 is_stmt 1
	.loc 1 101 11 is_stmt 0
	addi	a5,a5,1
.LVL44:
	.loc 1 96 7
	bgtu	s1,s0,.L18
	.loc 1 101 5 is_stmt 1
	.loc 1 101 8 is_stmt 0
	beq	s4,a5,.L19
	.loc 1 103 5 is_stmt 1
	.loc 1 103 6 is_stmt 0
	addi	s10,s10,1
.LVL45:
	.loc 1 104 5 is_stmt 1
	.loc 1 104 9 is_stmt 0
	lrw	s0,s6,s10,2
.LVL46:
	.loc 1 105 5 is_stmt 1
	.loc 1 105 9 is_stmt 0
	lrw	s1,s9,s10,2
.LVL47:
	add	s1,s0,s1
.LVL48:
.L18:
	.loc 1 94 25 is_stmt 1 discriminator 2
	.loc 1 94 15 discriminator 2
	.loc 1 94 3 is_stmt 0 discriminator 2
	bne	s4,a5,.L16
	j	.L19
.LVL49:
.L21:
	.loc 1 56 10
	li	a0,-1
.LVL50:
	j	.L7
	.cfi_endproc
.LFE107:
	.size	omac1_aes_vector, .-omac1_aes_vector
	.section	.text.omac1_aes_128_vector,"ax",@progbits
	.align	1
	.globl	omac1_aes_128_vector
	.type	omac1_aes_128_vector, @function
omac1_aes_128_vector:
.LFB108:
	.loc 1 135 1 is_stmt 1
	.cfi_startproc
.LVL51:
	.loc 1 136 2
	.loc 1 135 1 is_stmt 0
	mv	a5,a4
	.loc 1 136 9
	mv	a4,a3
.LVL52:
	mv	a3,a2
.LVL53:
	mv	a2,a1
.LVL54:
	li	a1,16
.LVL55:
	tail	omac1_aes_vector
.LVL56:
	.cfi_endproc
.LFE108:
	.size	omac1_aes_128_vector, .-omac1_aes_128_vector
	.section	.text.omac1_aes_128,"ax",@progbits
	.align	1
	.globl	omac1_aes_128
	.type	omac1_aes_128, @function
omac1_aes_128:
.LFB109:
	.loc 1 153 1 is_stmt 1
	.cfi_startproc
.LVL57:
	.loc 1 154 2
	.loc 1 153 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	a1,12(sp)
	sw	a2,8(sp)
	mv	a4,a3
	.loc 1 154 9
	addi	a2,sp,12
.LVL58:
	addi	a3,sp,8
.LVL59:
	li	a1,1
.LVL60:
	.loc 1 153 1
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 154 9
	call	omac1_aes_128_vector
.LVL61:
	.loc 1 155 1
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE109:
	.size	omac1_aes_128, .-omac1_aes_128
	.section	.text.omac1_aes_256,"ax",@progbits
	.align	1
	.globl	omac1_aes_256
	.type	omac1_aes_256, @function
omac1_aes_256:
.LFB110:
	.loc 1 171 1 is_stmt 1
	.cfi_startproc
.LVL62:
	.loc 1 172 2
	.loc 1 171 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	a1,12(sp)
	sw	a2,8(sp)
	mv	a5,a3
	.loc 1 172 9
	addi	a4,sp,8
	addi	a3,sp,12
.LVL63:
	li	a2,1
.LVL64:
	li	a1,32
.LVL65:
	.loc 1 171 1
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 172 9
	call	omac1_aes_vector
.LVL66:
	.loc 1 173 1
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE110:
	.size	omac1_aes_256, .-omac1_aes_256
	.text
.Letext0:
	.file 2 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\machine\\_default_types.h"
	.file 3 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\sys\\_stdint.h"
	.file 4 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\lib\\gcc\\riscv64-unknown-elf\\10.4.0\\include\\stddef.h"
	.file 5 ".\\components\\wireless\\wifi6\\qcc74x_wpa_supplicant\\src\\crypto\\aes.h"
	.file 6 ".\\components\\wireless\\wifi6\\qcc74x_wpa_supplicant\\src\\utils/os.h"
	.file 7 ".\\components\\wireless\\wifi6\\qcc74x_wpa_supplicant\\src\\utils/common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x4f5
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF30
	.byte	0xc
	.4byte	.LASF31
	.4byte	.LASF32
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
	.4byte	0x83
	.byte	0x6
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF13
	.byte	0x7
	.string	"u8"
	.byte	0x7
	.byte	0x95
	.byte	0x11
	.4byte	0x77
	.byte	0x5
	.4byte	0xa4
	.byte	0x8
	.byte	0x4
	.4byte	0xa4
	.byte	0x9
	.4byte	.LASF16
	.byte	0x1
	.byte	0xaa
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.byte	0x1
	.byte	0x9c
	.4byte	0x144
	.byte	0xa
	.string	"key"
	.byte	0x1
	.byte	0xaa
	.byte	0x1d
	.4byte	0x144
	.4byte	.LLST23
	.byte	0xb
	.4byte	.LASF14
	.byte	0x1
	.byte	0xaa
	.byte	0x2c
	.4byte	0x144
	.4byte	.LLST24
	.byte	0xb
	.4byte	.LASF15
	.byte	0x1
	.byte	0xaa
	.byte	0x39
	.4byte	0x83
	.4byte	.LLST25
	.byte	0xa
	.string	"mac"
	.byte	0x1
	.byte	0xaa
	.byte	0x47
	.4byte	0xb4
	.4byte	.LLST26
	.byte	0xc
	.4byte	.LVL66
	.4byte	0x277
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xd
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0xd
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0xd
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0xd
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0xd
	.byte	0x1
	.byte	0x5f
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0xaf
	.byte	0x9
	.4byte	.LASF17
	.byte	0x1
	.byte	0x98
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB109
	.4byte	.LFE109-.LFB109
	.byte	0x1
	.byte	0x9c
	.4byte	0x1ce
	.byte	0xa
	.string	"key"
	.byte	0x1
	.byte	0x98
	.byte	0x1d
	.4byte	0x144
	.4byte	.LLST19
	.byte	0xb
	.4byte	.LASF14
	.byte	0x1
	.byte	0x98
	.byte	0x2c
	.4byte	0x144
	.4byte	.LLST20
	.byte	0xb
	.4byte	.LASF15
	.byte	0x1
	.byte	0x98
	.byte	0x39
	.4byte	0x83
	.4byte	.LLST21
	.byte	0xa
	.string	"mac"
	.byte	0x1
	.byte	0x98
	.byte	0x47
	.4byte	0xb4
	.4byte	.LLST22
	.byte	0xc
	.4byte	.LVL61
	.4byte	0x1ce
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xd
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0xd
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0xd
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0xd
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0
	.byte	0
	.byte	0x9
	.4byte	.LASF18
	.byte	0x1
	.byte	0x85
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB108
	.4byte	.LFE108-.LFB108
	.byte	0x1
	.byte	0x9c
	.4byte	0x26b
	.byte	0xa
	.string	"key"
	.byte	0x1
	.byte	0x85
	.byte	0x24
	.4byte	0x144
	.4byte	.LLST14
	.byte	0xb
	.4byte	.LASF19
	.byte	0x1
	.byte	0x85
	.byte	0x30
	.4byte	0x83
	.4byte	.LLST15
	.byte	0xb
	.4byte	.LASF20
	.byte	0x1
	.byte	0x86
	.byte	0xf
	.4byte	0x26b
	.4byte	.LLST16
	.byte	0xa
	.string	"len"
	.byte	0x1
	.byte	0x86
	.byte	0x25
	.4byte	0x271
	.4byte	.LLST17
	.byte	0xa
	.string	"mac"
	.byte	0x1
	.byte	0x86
	.byte	0x2e
	.4byte	0xb4
	.4byte	.LLST18
	.byte	0xe
	.4byte	.LVL56
	.4byte	0x277
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xd
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0xd
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0xd
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0xd
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0xd
	.byte	0x1
	.byte	0x5f
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x144
	.byte	0x8
	.byte	0x4
	.4byte	0x8f
	.byte	0x9
	.4byte	.LASF21
	.byte	0x1
	.byte	0x2b
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.byte	0x1
	.byte	0x9c
	.4byte	0x46e
	.byte	0xa
	.string	"key"
	.byte	0x1
	.byte	0x2b
	.byte	0x20
	.4byte	0x144
	.4byte	.LLST1
	.byte	0xb
	.4byte	.LASF22
	.byte	0x1
	.byte	0x2b
	.byte	0x2c
	.4byte	0x83
	.4byte	.LLST2
	.byte	0xb
	.4byte	.LASF19
	.byte	0x1
	.byte	0x2b
	.byte	0x3c
	.4byte	0x83
	.4byte	.LLST3
	.byte	0xb
	.4byte	.LASF20
	.byte	0x1
	.byte	0x2c
	.byte	0x12
	.4byte	0x26b
	.4byte	.LLST4
	.byte	0xa
	.string	"len"
	.byte	0x1
	.byte	0x2c
	.byte	0x28
	.4byte	0x271
	.4byte	.LLST5
	.byte	0xa
	.string	"mac"
	.byte	0x1
	.byte	0x2c
	.byte	0x31
	.4byte	0xb4
	.4byte	.LLST6
	.byte	0xf
	.string	"ctx"
	.byte	0x1
	.byte	0x2e
	.byte	0x8
	.4byte	0x94
	.4byte	.LLST7
	.byte	0x10
	.string	"cbc"
	.byte	0x1
	.byte	0x2f
	.byte	0x5
	.4byte	0x46e
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0x10
	.string	"pad"
	.byte	0x1
	.byte	0x2f
	.byte	0xe
	.4byte	0x46e
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0xf
	.string	"pos"
	.byte	0x1
	.byte	0x30
	.byte	0xc
	.4byte	0x144
	.4byte	.LLST8
	.byte	0xf
	.string	"end"
	.byte	0x1
	.byte	0x30
	.byte	0x12
	.4byte	0x144
	.4byte	.LLST9
	.byte	0xf
	.string	"i"
	.byte	0x1
	.byte	0x31
	.byte	0x9
	.4byte	0x83
	.4byte	.LLST10
	.byte	0xf
	.string	"e"
	.byte	0x1
	.byte	0x31
	.byte	0xc
	.4byte	0x83
	.4byte	.LLST11
	.byte	0x11
	.4byte	.LASF23
	.byte	0x1
	.byte	0x31
	.byte	0xf
	.4byte	0x83
	.4byte	.LLST12
	.byte	0x11
	.4byte	.LASF24
	.byte	0x1
	.byte	0x31
	.byte	0x15
	.4byte	0x83
	.4byte	.LLST13
	.byte	0x12
	.4byte	.LVL6
	.4byte	0x4c7
	.4byte	0x398
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xd
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0x12
	.4byte	.LVL8
	.4byte	0x4d3
	.4byte	0x3b6
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0xd
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0xd
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x12
	.4byte	.LVL15
	.4byte	0x4d3
	.4byte	0x3d5
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0xd
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0xd
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LVL16
	.4byte	0x4e0
	.4byte	0x3f5
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0xd
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0xd
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0
	.byte	0x12
	.4byte	.LVL17
	.4byte	0x47e
	.4byte	0x409
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0
	.byte	0x12
	.4byte	.LVL19
	.4byte	0x47e
	.4byte	0x41d
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0
	.byte	0x12
	.4byte	.LVL22
	.4byte	0x4e0
	.4byte	0x43d
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0xd
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0xd
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LVL23
	.4byte	0x4ec
	.4byte	0x451
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	.LVL39
	.4byte	0x4e0
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0xd
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0xd
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	0xa4
	.4byte	0x47e
	.byte	0x14
	.4byte	0x70
	.byte	0xf
	.byte	0
	.byte	0x15
	.4byte	.LASF33
	.byte	0x1
	.byte	0x10
	.byte	0xd
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
	.byte	0x1
	.byte	0x9c
	.4byte	0x4c7
	.byte	0x16
	.string	"pad"
	.byte	0x1
	.byte	0x10
	.byte	0x19
	.4byte	0xb4
	.byte	0x1
	.byte	0x5a
	.byte	0xf
	.string	"i"
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.4byte	0x69
	.4byte	.LLST0
	.byte	0x17
	.4byte	.LASF25
	.byte	0x1
	.byte	0x12
	.byte	0x9
	.4byte	0x69
	.byte	0x9
	.byte	0x7d
	.byte	0
	.byte	0x9
	.byte	0x80
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.byte	0
	.byte	0x18
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x5
	.byte	0xe
	.byte	0x8
	.byte	0x19
	.4byte	.LASF27
	.4byte	.LASF27
	.byte	0x6
	.2byte	0x168
	.byte	0x8
	.byte	0x18
	.4byte	.LASF28
	.4byte	.LASF28
	.byte	0x5
	.byte	0xf
	.byte	0x5
	.byte	0x18
	.4byte	.LASF29
	.4byte	.LASF29
	.byte	0x5
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
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
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x17
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
	.byte	0x18
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST23:
	.4byte	.LVL62
	.4byte	.LVL66-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL66-1
	.4byte	.LFE110
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL62
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL65
	.4byte	.LVL66-1
	.2byte	0x2
	.byte	0x7d
	.byte	0
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL62
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL64
	.4byte	.LVL66-1
	.2byte	0x2
	.byte	0x7e
	.byte	0
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL63
	.4byte	.LVL66-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL66-1
	.4byte	.LFE110
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL57
	.4byte	.LVL61-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL61-1
	.4byte	.LFE109
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL57
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL60
	.4byte	.LVL61-1
	.2byte	0x2
	.byte	0x7c
	.byte	0
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x2
	.byte	0x91
	.byte	0x68
	.4byte	.LVL59
	.4byte	.LVL61-1
	.2byte	0x2
	.byte	0x7d
	.byte	0
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL57
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL59
	.4byte	.LVL61-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL61-1
	.4byte	.LFE109
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL51
	.4byte	.LVL56-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL56-1
	.4byte	.LFE108
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL51
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL55
	.4byte	.LVL56-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL56-1
	.4byte	.LFE108
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL51
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL54
	.4byte	.LVL56-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL56-1
	.4byte	.LFE108
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL53
	.4byte	.LVL56-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL56-1
	.4byte	.LFE108
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL52
	.4byte	.LVL56-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL56-1
	.4byte	.LFE108
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6-1
	.4byte	.LFE107
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL6-1
	.4byte	.LFE107
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL6-1
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL11
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL31
	.4byte	.LVL49
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LFE107
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL6-1
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LFE107
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL6-1
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LFE107
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL6-1
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL25
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LFE107
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL28
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL11
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x3
	.byte	0x78
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x3
	.byte	0x78
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL12
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL31
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL37
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL20
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL32
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL44
	.4byte	.LVL48
	.2byte	0x3
	.byte	0x7f
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x3
	.byte	0x7f
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL31
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL31
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL28
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x7a
	.byte	0
	.byte	0x1c
	.byte	0x9f
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
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.4byte	.LFB108
	.4byte	.LFE108-.LFB108
	.4byte	.LFB109
	.4byte	.LFE109-.LFB109
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB106
	.4byte	.LFE106
	.4byte	.LFB107
	.4byte	.LFE107
	.4byte	.LFB108
	.4byte	.LFE108
	.4byte	.LFB109
	.4byte	.LFE109
	.4byte	.LFB110
	.4byte	.LFE110
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF30:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF16:
	.string	"omac1_aes_256"
.LASF9:
	.string	"__uint8_t"
.LASF11:
	.string	"size_t"
.LASF13:
	.string	"_Bool"
.LASF17:
	.string	"omac1_aes_128"
.LASF23:
	.string	"left"
.LASF3:
	.string	"short unsigned int"
.LASF29:
	.string	"aes_encrypt_deinit"
.LASF15:
	.string	"data_len"
.LASF25:
	.string	"carry"
.LASF14:
	.string	"data"
.LASF1:
	.string	"unsigned char"
.LASF33:
	.string	"gf_mulx"
.LASF5:
	.string	"long unsigned int"
.LASF20:
	.string	"addr"
.LASF26:
	.string	"aes_encrypt_init"
.LASF32:
	.string	"C:\\\\Users\\\\cwier\\\\Documents\\\\GitHub\\\\qcom\\\\examples\\\\solutions\\\\rtsp_softap_cam\\\\build\\\\build_out\\\\components\\\\wireless\\\\wifi6\\\\qcc74x_wpa_supplicant"
.LASF8:
	.string	"unsigned int"
.LASF12:
	.string	"char"
.LASF10:
	.string	"uint8_t"
.LASF0:
	.string	"signed char"
.LASF19:
	.string	"num_elem"
.LASF6:
	.string	"long long int"
.LASF24:
	.string	"total_len"
.LASF27:
	.string	"os_memset"
.LASF2:
	.string	"short int"
.LASF28:
	.string	"aes_encrypt"
.LASF22:
	.string	"key_len"
.LASF4:
	.string	"long int"
.LASF31:
	.string	".\\components\\wireless\\wifi6\\qcc74x_wpa_supplicant\\src\\crypto\\aes-omac1.c"
.LASF21:
	.string	"omac1_aes_vector"
.LASF18:
	.string	"omac1_aes_128_vector"
.LASF7:
	.string	"long long unsigned int"
	.ident	"GCC: (GNU) 10.4.0"
