	.file	"base64.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.mbedtls_base64_encode,"ax",@progbits
	.align	1
	.globl	mbedtls_base64_encode
	.type	mbedtls_base64_encode, @function
mbedtls_base64_encode:
.LFB36:
	.file 1 "./components/crypto/mbedtls/mbedtls/library/base64.c"
	.loc 1 29 1
	.cfi_startproc
.LVL0:
	.loc 1 30 5
	.loc 1 31 5
	.loc 1 32 5
	.loc 1 34 5
	.loc 1 29 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s5,36(sp)
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	sw	s3,44(sp)
	sw	s4,40(sp)
	sw	s6,32(sp)
	sw	s7,28(sp)
	sw	s8,24(sp)
	.cfi_offset 21, -28
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.loc 1 29 1
	mv	s5,a2
	.loc 1 34 8
	bne	a4,zero,.L2
	.loc 1 35 9 is_stmt 1
	.loc 1 35 15 is_stmt 0
	sw	zero,0(a2)
	.loc 1 36 9 is_stmt 1
.LVL1:
.L15:
	.loc 1 88 5
	.loc 1 88 12 is_stmt 0
	li	a0,0
	j	.L1
.LVL2:
.L2:
	mv	s2,a4
	.loc 1 39 5 is_stmt 1
	.loc 1 39 14 is_stmt 0
	li	s8,3
	.loc 1 39 26
	remu	a5,s2,s8
	.loc 1 41 8
	li	a2,1073741824
.LVL3:
	.loc 1 39 14
	divu	a4,a4,s8
.LVL4:
	.loc 1 39 30
	snez	a5,a5
	.loc 1 39 7
	add	a5,a5,a4
.LVL5:
	.loc 1 41 5 is_stmt 1
	.loc 1 41 8 is_stmt 0
	bltu	a5,a2,.L4
	.loc 1 42 9 is_stmt 1
	.loc 1 42 15 is_stmt 0
	li	a5,-1
.LVL6:
.L5:
	.loc 1 49 9 is_stmt 1
	.loc 1 49 15 is_stmt 0
	sw	a5,0(s5)
	.loc 1 50 9 is_stmt 1
	.loc 1 50 16 is_stmt 0
	li	a0,-42
.LVL7:
.L1:
	.loc 1 89 1
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
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
.LVL8:
	lw	s6,32(sp)
	.cfi_restore 22
	lw	s7,28(sp)
	.cfi_restore 23
	lw	s8,24(sp)
	.cfi_restore 24
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL9:
.L4:
	.cfi_restore_state
	.loc 1 46 5 is_stmt 1
	.loc 1 48 5
	.loc 1 46 7 is_stmt 0
	slli	a5,a5,2
.LVL10:
	.loc 1 48 19
	addi	a5,a5,1
.LVL11:
	.loc 1 48 8
	bgtu	a5,a1,.L5
	mv	s4,a0
	.loc 1 48 24 discriminator 1
	beq	a0,zero,.L5
	.loc 1 53 5 is_stmt 1
	.loc 1 53 7 is_stmt 0
	mul	s8,a4,s8
.LVL12:
	.loc 1 55 5 is_stmt 1
	mv	s0,a0
	.loc 1 55 12 is_stmt 0
	li	s1,0
.LVL13:
.L7:
	.loc 1 55 26 is_stmt 1 discriminator 1
	.loc 1 55 5 is_stmt 0 discriminator 1
	bltu	s1,s8,.L8
	.loc 1 68 5 is_stmt 1
	.loc 1 68 8 is_stmt 0
	bgeu	s1,s2,.L9
	.loc 1 69 9 is_stmt 1
.LVL14:
	.loc 1 70 18 is_stmt 0
	addi	s1,s1,1
.LVL15:
	.loc 1 69 12
	lbu	s3,0(a3)
.LVL16:
	.loc 1 70 9 is_stmt 1
	.loc 1 70 40 is_stmt 0
	li	s6,0
	bgeu	s1,s2,.L10
.LVL17:
	.loc 1 70 40 discriminator 1
	lbu	s6,1(a3)
.LVL18:
.L10:
	.loc 1 72 9 is_stmt 1 discriminator 4
	.loc 1 72 16 is_stmt 0 discriminator 4
	srli	a0,s3,2
	call	mbedtls_ct_base64_enc_char
.LVL19:
	.loc 1 73 54 discriminator 4
	slli	s3,s3,4
.LVL20:
	.loc 1 72 14 discriminator 4
	sb	a0,0(s0)
	.loc 1 73 9 is_stmt 1 discriminator 4
.LVL21:
	.loc 1 73 54 is_stmt 0 discriminator 4
	andi	s3,s3,48
	.loc 1 73 66 discriminator 4
	srai	a0,s6,4
	.loc 1 73 16 discriminator 4
	add	a0,s3,a0
	call	mbedtls_ct_base64_enc_char
.LVL22:
	.loc 1 73 14 discriminator 4
	sb	a0,1(s0)
	.loc 1 76 9 is_stmt 1 discriminator 4
	.loc 1 76 12 is_stmt 0 discriminator 4
	bgeu	s1,s2,.L11
	.loc 1 77 13 is_stmt 1
.LVL23:
	.loc 1 77 58 is_stmt 0
	slli	a0,s6,2
	.loc 1 77 20
	andi	a0,a0,60
	call	mbedtls_ct_base64_enc_char
.LVL24:
	.loc 1 77 18
	sb	a0,2(s0)
.LVL25:
.L12:
	.loc 1 82 9 is_stmt 1
	.loc 1 82 14 is_stmt 0
	li	a5,61
	sb	a5,3(s0)
	.loc 1 82 11
	addi	s0,s0,4
.LVL26:
.L9:
	.loc 1 85 5 is_stmt 1
	.loc 1 85 15 is_stmt 0
	sub	s4,s0,s4
.LVL27:
	.loc 1 85 11
	sw	s4,0(s5)
	.loc 1 86 5 is_stmt 1
	.loc 1 86 8 is_stmt 0
	sb	zero,0(s0)
	j	.L15
.LVL28:
.L8:
	.loc 1 56 9 is_stmt 1 discriminator 3
	.loc 1 56 12 is_stmt 0 discriminator 3
	lbu	s6,0(a3)
.LVL29:
	.loc 1 57 9 is_stmt 1 discriminator 3
	.loc 1 57 12 is_stmt 0 discriminator 3
	lbu	s3,1(a3)
.LVL30:
	.loc 1 58 9 is_stmt 1 discriminator 3
	.loc 1 58 14 is_stmt 0 discriminator 3
	lbu	s7,2(a3)
	.loc 1 60 16 discriminator 3
	srli	a0,s6,2
	addi	a3,a3,3
.LVL31:
	.loc 1 58 14 discriminator 3
	sw	a3,12(sp)
.LVL32:
	.loc 1 60 9 is_stmt 1 discriminator 3
	.loc 1 61 54 is_stmt 0 discriminator 3
	slli	s6,s6,4
.LVL33:
	.loc 1 60 16 discriminator 3
	call	mbedtls_ct_base64_enc_char
.LVL34:
	.loc 1 60 14 discriminator 3
	sb	a0,0(s0)
	.loc 1 61 9 is_stmt 1 discriminator 3
.LVL35:
	.loc 1 61 54 is_stmt 0 discriminator 3
	andi	s6,s6,48
	.loc 1 61 66 discriminator 3
	srai	a0,s3,4
	.loc 1 61 16 discriminator 3
	add	a0,s6,a0
	call	mbedtls_ct_base64_enc_char
.LVL36:
	.loc 1 63 55 discriminator 3
	slli	s3,s3,2
.LVL37:
	.loc 1 61 14 discriminator 3
	sb	a0,1(s0)
	.loc 1 63 9 is_stmt 1 discriminator 3
.LVL38:
	.loc 1 63 55 is_stmt 0 discriminator 3
	andi	s3,s3,60
	.loc 1 63 67 discriminator 3
	srai	a0,s7,6
	.loc 1 63 16 discriminator 3
	add	a0,s3,a0
	call	mbedtls_ct_base64_enc_char
.LVL39:
	.loc 1 63 14 discriminator 3
	sb	a0,2(s0)
	.loc 1 65 9 is_stmt 1 discriminator 3
	.loc 1 65 16 is_stmt 0 discriminator 3
	andi	a0,s7,63
	call	mbedtls_ct_base64_enc_char
.LVL40:
	addi	s0,s0,4
.LVL41:
	.loc 1 55 35 discriminator 3
	lw	a3,12(sp)
	addi	s1,s1,3
.LVL42:
	.loc 1 65 14 discriminator 3
	sb	a0,-1(s0)
	.loc 1 55 33 is_stmt 1 discriminator 3
.LVL43:
	j	.L7
.LVL44:
.L11:
	.loc 1 79 13
	.loc 1 79 18 is_stmt 0
	li	a5,61
	sb	a5,2(s0)
	j	.L12
	.cfi_endproc
.LFE36:
	.size	mbedtls_base64_encode, .-mbedtls_base64_encode
	.section	.text.mbedtls_base64_decode,"ax",@progbits
	.align	1
	.globl	mbedtls_base64_decode
	.type	mbedtls_base64_decode, @function
mbedtls_base64_decode:
.LFB37:
	.loc 1 96 1 is_stmt 1
	.cfi_startproc
.LVL45:
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	s0,72(sp)
	sw	s1,68(sp)
	sw	s2,64(sp)
	sw	s3,60(sp)
	sw	s4,56(sp)
	sw	s5,52(sp)
	sw	s6,48(sp)
	sw	s7,44(sp)
	sw	s8,40(sp)
	sw	s9,36(sp)
	sw	s10,32(sp)
	sw	s11,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.cfi_offset 26, -48
	.cfi_offset 27, -52
	mv	s3,a4
	sw	ra,76(sp)
	.cfi_offset 1, -4
	.loc 1 96 1 is_stmt 0
	mv	s6,a0
	mv	s7,a2
	mv	s8,a3
	.loc 1 97 5 is_stmt 1
	.loc 1 98 5
	.loc 1 99 5
	.loc 1 100 5
.LVL46:
	.loc 1 101 5
	.loc 1 102 5
	.loc 1 103 5
	.loc 1 106 5
	.loc 1 101 14 is_stmt 0
	li	s4,0
	.loc 1 106 16
	li	s2,0
	.loc 1 106 12
	li	s1,0
	.loc 1 109 25
	li	s5,32
	.loc 1 111 28
	li	s9,1
	.loc 1 137 12
	li	s10,61
	.loc 1 138 16
	li	s11,2
	.loc 1 124 12
	li	s0,10
	.loc 1 119 29
	li	a4,13
.LVL47:
.L17:
	.loc 1 106 21 is_stmt 1 discriminator 1
	.loc 1 106 5 is_stmt 0 discriminator 1
	bltu	s1,s3,.L39
	mv	s3,s1
.LVL48:
	j	.L18
.LVL49:
.L19:
	.loc 1 110 13 is_stmt 1
	addi	s1,s1,1
.LVL50:
	.loc 1 111 13
	.loc 1 109 15
	.loc 1 111 28 is_stmt 0
	li	a5,1
	.loc 1 109 15
	bne	s3,s1,.L28
.LVL51:
.L18:
	.loc 1 152 5 is_stmt 1
	.loc 1 152 8 is_stmt 0
	bne	s2,zero,.L29
	.loc 1 153 9 is_stmt 1
	.loc 1 153 15 is_stmt 0
	sw	zero,0(s7)
	.loc 1 154 9 is_stmt 1
.LVL52:
.L49:
	.loc 1 196 5
	.loc 1 196 12 is_stmt 0
	li	a0,0
	j	.L16
.LVL53:
.L39:
	.loc 1 108 24
	li	a5,0
.L28:
.LVL54:
	.loc 1 109 25 discriminator 1
	lrbu	a0,s8,s1,0
	beq	a0,s5,.L19
	.loc 1 115 9 is_stmt 1
	.loc 1 115 12 is_stmt 0
	beq	s3,s1,.L18
	.loc 1 119 9 is_stmt 1
	.loc 1 119 19 is_stmt 0
	sub	a3,s3,s1
	.loc 1 119 12
	beq	a3,s9,.L20
	.loc 1 119 29 discriminator 1
	bne	a0,a4,.L20
	.loc 1 120 34
	add	a3,s8,s1
	.loc 1 120 28
	lbu	a3,1(a3)
	bne	a3,s0,.L22
.LVL55:
.L21:
	.loc 1 106 31 is_stmt 1 discriminator 2
	.loc 1 106 32 is_stmt 0 discriminator 2
	addi	s1,s1,1
.LVL56:
	j	.L17
.LVL57:
.L20:
	.loc 1 124 9 is_stmt 1
	.loc 1 124 12 is_stmt 0
	beq	a0,s0,.L21
.L22:
	.loc 1 129 9 is_stmt 1
	.loc 1 129 12 is_stmt 0
	beq	a5,zero,.L23
.LVL58:
.L25:
	.loc 1 130 20
	li	a0,-44
.LVL59:
.L16:
	.loc 1 197 1
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
.LVL60:
	lw	s5,52(sp)
	.cfi_restore 21
	lw	s6,48(sp)
	.cfi_restore 22
.LVL61:
	lw	s7,44(sp)
	.cfi_restore 23
.LVL62:
	lw	s8,40(sp)
	.cfi_restore 24
	lw	s9,36(sp)
	.cfi_restore 25
	lw	s10,32(sp)
	.cfi_restore 26
	lw	s11,28(sp)
	.cfi_restore 27
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
.LVL63:
.L23:
	.cfi_restore_state
	.loc 1 133 9 is_stmt 1
	.loc 1 133 12 is_stmt 0
	ext	a5,a0,7,0
.LVL64:
	blt	a5,zero,.L25
	.loc 1 137 9 is_stmt 1
	.loc 1 137 12 is_stmt 0
	bne	a0,s10,.L26
	.loc 1 138 13 is_stmt 1
	.loc 1 138 16 is_stmt 0
	addi	s4,s4,1
.LVL65:
	bgtu	s4,s11,.L25
.L27:
	.loc 1 149 9 is_stmt 1
	.loc 1 149 10 is_stmt 0
	addi	s2,s2,1
.LVL66:
	j	.L21
.L26:
	sw	a1,12(sp)
	.loc 1 142 13 is_stmt 1
	.loc 1 142 16 is_stmt 0
	bne	s4,zero,.L25
	.loc 1 145 13 is_stmt 1
	.loc 1 145 17 is_stmt 0
	call	mbedtls_ct_base64_dec_value
.LVL67:
	.loc 1 145 16
	lw	a1,12(sp)
	li	a4,13
	bge	a0,zero,.L27
	j	.L25
.LVL68:
.L29:
	.loc 1 161 5 is_stmt 1
	.loc 1 161 35 is_stmt 0
	andi	a5,s2,7
	.loc 1 161 30
	li	a4,6
	mul	a5,a5,a4
	.loc 1 161 17
	srli	s2,s2,3
.LVL69:
	.loc 1 161 42
	addi	a5,a5,7
	.loc 1 161 47
	srli	a5,a5,3
	.loc 1 162 5 is_stmt 1
	mula	a5,s2,a4
	.loc 1 162 7 is_stmt 0
	sub	a5,a5,s4
.LVL70:
	.loc 1 164 5 is_stmt 1
	.loc 1 164 8 is_stmt 0
	beq	s6,zero,.L30
	.loc 1 164 20 discriminator 1
	bleu	a5,a1,.L40
.L30:
	.loc 1 165 9 is_stmt 1
	.loc 1 165 15 is_stmt 0
	sw	a5,0(s7)
	.loc 1 166 9 is_stmt 1
	.loc 1 166 16 is_stmt 0
	li	a0,-42
	j	.L16
.LVL71:
.L38:
	.loc 1 171 9 is_stmt 1
	.loc 1 171 13 is_stmt 0
	lrbu	a0,s8,s5,0
	.loc 1 171 26
	addi	a5,a0,-10
	andi	a5,a5,0xff
	bgtu	a5,s10,.L32
	.loc 1 171 26 discriminator 1
	srl	a5,s9,a5
	andi	a5,a5,1
	bne	a5,zero,.L33
.L32:
	.loc 1 175 9 is_stmt 1
	.loc 1 175 11 is_stmt 0
	slli	s1,s1,6
.LVL72:
	.loc 1 176 9 is_stmt 1
	.loc 1 176 12 is_stmt 0
	bne	a0,s11,.L34
	.loc 1 177 13 is_stmt 1
	addi	s4,s4,1
.LVL73:
.L35:
	.loc 1 182 9
	.loc 1 182 12 is_stmt 0
	addi	s2,s2,1
.LVL74:
	bne	s2,a4,.L33
	.loc 1 183 13 is_stmt 1
.LVL75:
	.loc 1 184 13
	.loc 1 184 37 is_stmt 0
	srli	a5,s1,16
	.loc 1 184 21
	sb	a5,0(s0)
	.loc 1 185 13 is_stmt 1
	.loc 1 185 16 is_stmt 0
	bleu	s4,a3,.L36
	.loc 1 184 15
	addi	s0,s0,1
.LVL76:
.L48:
	.loc 1 183 32
	li	s2,0
.LVL77:
.L33:
	.loc 1 170 33 is_stmt 1 discriminator 2
	addi	s5,s5,1
.LVL78:
.L31:
	.loc 1 170 26 discriminator 1
	.loc 1 170 5 is_stmt 0 discriminator 1
	bne	s5,s3,.L38
	.loc 1 194 5 is_stmt 1
	.loc 1 194 15 is_stmt 0
	sub	s0,s0,s6
.LVL79:
	.loc 1 194 11
	sw	s0,0(s7)
	j	.L49
.LVL80:
.L34:
	.loc 1 179 13 is_stmt 1
	.loc 1 179 18 is_stmt 0
	call	mbedtls_ct_base64_dec_value
.LVL81:
	.loc 1 179 15
	or	s1,s1,a0
.LVL82:
	li	a3,1
	li	a4,4
.LVL83:
	j	.L35
.LVL84:
.L36:
	.loc 1 186 17 is_stmt 1
	.loc 1 186 41 is_stmt 0
	srli	a5,s1,8
	.loc 1 186 25
	sb	a5,1(s0)
	.loc 1 188 13 is_stmt 1
	.loc 1 188 16 is_stmt 0
	beq	s4,zero,.L37
	.loc 1 186 19
	addi	s0,s0,2
.LVL85:
	li	s4,1
.LVL86:
	j	.L48
.LVL87:
.L37:
	.loc 1 189 17 is_stmt 1
	.loc 1 189 25 is_stmt 0
	sb	s1,2(s0)
	.loc 1 189 19
	addi	s0,s0,3
.LVL88:
	j	.L48
.LVL89:
.L40:
	.loc 1 171 26
	li	s9,4194304
	mv	s0,s6
	li	s5,0
	.loc 1 169 12
	li	s4,0
.LVL90:
	.loc 1 100 14
	li	s2,0
	.loc 1 170 12
	li	s1,0
	.loc 1 171 26
	li	s10,22
	.loc 1 176 12
	li	s11,61
	.loc 1 182 12
	li	a4,4
	.loc 1 185 16
	li	a3,1
	.loc 1 171 26
	addi	s9,s9,9
	j	.L31
	.cfi_endproc
.LFE37:
	.size	mbedtls_base64_decode, .-mbedtls_base64_decode
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/lib/gcc/riscv64-unknown-elf/10.4.0/include/stddef.h"
	.file 4 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 5 "./components/crypto/mbedtls/mbedtls/library/constant_time_internal.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x317
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF25
	.byte	0xc
	.4byte	.LASF26
	.4byte	.LASF27
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
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0x6
	.byte	0x4
	.4byte	0x38
	.byte	0x6
	.byte	0x4
	.4byte	0x88
	.byte	0x6
	.byte	0x4
	.4byte	0x3f
	.byte	0x7
	.4byte	.LASF21
	.byte	0x1
	.byte	0x5e
	.byte	0x5
	.4byte	0x7a
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x1
	.byte	0x9c
	.4byte	0x1aa
	.byte	0x8
	.string	"dst"
	.byte	0x1
	.byte	0x5e
	.byte	0x2a
	.4byte	0xb3
	.4byte	.LLST11
	.byte	0x9
	.4byte	.LASF15
	.byte	0x1
	.byte	0x5e
	.byte	0x36
	.4byte	0x88
	.4byte	.LLST12
	.byte	0x9
	.4byte	.LASF16
	.byte	0x1
	.byte	0x5e
	.byte	0x44
	.4byte	0xb9
	.4byte	.LLST13
	.byte	0x8
	.string	"src"
	.byte	0x1
	.byte	0x5f
	.byte	0x30
	.4byte	0xbf
	.4byte	.LLST14
	.byte	0x9
	.4byte	.LASF17
	.byte	0x1
	.byte	0x5f
	.byte	0x3c
	.4byte	0x88
	.4byte	.LLST15
	.byte	0xa
	.string	"i"
	.byte	0x1
	.byte	0x61
	.byte	0xc
	.4byte	0x88
	.4byte	.LLST16
	.byte	0xa
	.string	"n"
	.byte	0x1
	.byte	0x62
	.byte	0xc
	.4byte	0x88
	.4byte	.LLST17
	.byte	0xa
	.string	"x"
	.byte	0x1
	.byte	0x63
	.byte	0xe
	.4byte	0xa0
	.4byte	.LLST18
	.byte	0xb
	.4byte	.LASF18
	.byte	0x1
	.byte	0x64
	.byte	0xe
	.4byte	0x81
	.4byte	.LLST19
	.byte	0xb
	.4byte	.LASF19
	.byte	0x1
	.byte	0x65
	.byte	0xe
	.4byte	0x81
	.4byte	.LLST20
	.byte	0xb
	.4byte	.LASF20
	.byte	0x1
	.byte	0x66
	.byte	0x9
	.4byte	0x7a
	.4byte	.LLST21
	.byte	0xa
	.string	"p"
	.byte	0x1
	.byte	0x67
	.byte	0x14
	.4byte	0xb3
	.4byte	.LLST22
	.byte	0xc
	.4byte	.LVL67
	.4byte	0x302
	.byte	0xc
	.4byte	.LVL81
	.4byte	0x302
	.byte	0
	.byte	0x7
	.4byte	.LASF22
	.byte	0x1
	.byte	0x1b
	.byte	0x5
	.4byte	0x7a
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x1
	.byte	0x9c
	.4byte	0x302
	.byte	0x8
	.string	"dst"
	.byte	0x1
	.byte	0x1b
	.byte	0x2a
	.4byte	0xb3
	.4byte	.LLST0
	.byte	0x9
	.4byte	.LASF15
	.byte	0x1
	.byte	0x1b
	.byte	0x36
	.4byte	0x88
	.4byte	.LLST1
	.byte	0x9
	.4byte	.LASF16
	.byte	0x1
	.byte	0x1b
	.byte	0x44
	.4byte	0xb9
	.4byte	.LLST2
	.byte	0x8
	.string	"src"
	.byte	0x1
	.byte	0x1c
	.byte	0x30
	.4byte	0xbf
	.4byte	.LLST3
	.byte	0x9
	.4byte	.LASF17
	.byte	0x1
	.byte	0x1c
	.byte	0x3c
	.4byte	0x88
	.4byte	.LLST4
	.byte	0xa
	.string	"i"
	.byte	0x1
	.byte	0x1e
	.byte	0xc
	.4byte	0x88
	.4byte	.LLST5
	.byte	0xa
	.string	"n"
	.byte	0x1
	.byte	0x1e
	.byte	0xf
	.4byte	0x88
	.4byte	.LLST6
	.byte	0xa
	.string	"C1"
	.byte	0x1
	.byte	0x1f
	.byte	0x9
	.4byte	0x7a
	.4byte	.LLST7
	.byte	0xa
	.string	"C2"
	.byte	0x1
	.byte	0x1f
	.byte	0xd
	.4byte	0x7a
	.4byte	.LLST8
	.byte	0xa
	.string	"C3"
	.byte	0x1
	.byte	0x1f
	.byte	0x11
	.4byte	0x7a
	.4byte	.LLST9
	.byte	0xa
	.string	"p"
	.byte	0x1
	.byte	0x20
	.byte	0x14
	.4byte	0xb3
	.4byte	.LLST10
	.byte	0xd
	.4byte	.LVL19
	.4byte	0x30e
	.4byte	0x281
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x4
	.byte	0x83
	.byte	0
	.byte	0x32
	.byte	0x25
	.byte	0
	.byte	0xd
	.4byte	.LVL22
	.4byte	0x30e
	.4byte	0x29a
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x7
	.byte	0x86
	.byte	0
	.byte	0x34
	.byte	0x26
	.byte	0x83
	.byte	0
	.byte	0x22
	.byte	0
	.byte	0xd
	.4byte	.LVL24
	.4byte	0x30e
	.4byte	0x2b3
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x7
	.byte	0x86
	.byte	0
	.byte	0x32
	.byte	0x24
	.byte	0x8
	.byte	0x3c
	.byte	0x1a
	.byte	0
	.byte	0xc
	.4byte	.LVL34
	.4byte	0x30e
	.byte	0xd
	.4byte	.LVL36
	.4byte	0x30e
	.4byte	0x2d5
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x7
	.byte	0x83
	.byte	0
	.byte	0x34
	.byte	0x26
	.byte	0x86
	.byte	0
	.byte	0x22
	.byte	0
	.byte	0xd
	.4byte	.LVL39
	.4byte	0x30e
	.4byte	0x2ee
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x7
	.byte	0x87
	.byte	0
	.byte	0x36
	.byte	0x26
	.byte	0x83
	.byte	0
	.byte	0x22
	.byte	0
	.byte	0xf
	.4byte	.LVL40
	.4byte	0x30e
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x87
	.byte	0
	.byte	0x8
	.byte	0x3f
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LASF23
	.4byte	.LASF23
	.byte	0x5
	.byte	0xba
	.byte	0xd
	.byte	0x10
	.4byte	.LASF24
	.4byte	.LASF24
	.byte	0x5
	.byte	0xac
	.byte	0xf
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
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
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
	.byte	0xe
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
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
	.byte	0
	.byte	0
	.byte	0x10
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
.LLST11:
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL47
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LFE37
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL47
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL47
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LFE37
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL47
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL53
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL63
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL71
	.4byte	.LVL77
	.2byte	0x6
	.byte	0x88
	.byte	0
	.byte	0x85
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x8
	.byte	0x88
	.byte	0
	.byte	0x85
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LVL89
	.2byte	0x6
	.byte	0x88
	.byte	0
	.byte	0x85
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LFE37
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL59
	.4byte	.LVL63
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL68
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL53
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL63
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL68
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL71
	.4byte	.LVL77
	.2byte	0x6
	.byte	0x83
	.byte	0
	.byte	0x85
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x7
	.byte	0x85
	.byte	0
	.byte	0x20
	.byte	0x83
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LVL89
	.2byte	0x6
	.byte	0x83
	.byte	0
	.byte	0x85
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LFE37
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL53
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL63
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL89
	.4byte	.LFE37
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL71
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL83
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL46
	.4byte	.LVL52
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL59
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL71
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL84
	.4byte	.LFE37
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL63
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL77
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL87
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL71
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x3
	.byte	0x78
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL80
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x3
	.byte	0x78
	.byte	0x2
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x3
	.byte	0x78
	.byte	0x3
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LFE36
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL13
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL3
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LFE36
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL2
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL9
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x3
	.byte	0x7d
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x3
	.byte	0x7d
	.byte	0x2
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x3
	.byte	0x7d
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x3
	.byte	0x7d
	.byte	0x2
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x3
	.byte	0x7d
	.byte	0x3
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL34-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL34-1
	.4byte	.LVL44
	.2byte	0x2
	.byte	0x91
	.byte	0x4c
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LFE36
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL15
	.4byte	.LVL26
	.2byte	0x3
	.byte	0x79
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x3
	.byte	0x79
	.byte	0x7d
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL44
	.4byte	.LFE36
	.2byte	0x3
	.byte	0x79
	.byte	0x7f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x5
	.byte	0x7f
	.byte	0
	.byte	0x32
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x3
	.byte	0x7f
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LFE36
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL16
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL29
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL33
	.4byte	.LVL34-1
	.2byte	0x8
	.byte	0x7d
	.byte	0x7d
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL30
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL32
	.4byte	.LVL44
	.2byte	0x6
	.byte	0x87
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x3
	.byte	0x78
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x3
	.byte	0x78
	.byte	0x2
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x3
	.byte	0x78
	.byte	0x3
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x3
	.byte	0x78
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL32
	.4byte	.LVL35
	.2byte	0x3
	.byte	0x78
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL38
	.2byte	0x3
	.byte	0x78
	.byte	0x2
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL41
	.2byte	0x3
	.byte	0x78
	.byte	0x3
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL44
	.4byte	.LFE36
	.2byte	0x3
	.byte	0x78
	.byte	0x3
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
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF25:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF5:
	.string	"__uint8_t"
.LASF11:
	.string	"size_t"
.LASF18:
	.string	"accumulated_digits"
.LASF3:
	.string	"short unsigned int"
.LASF15:
	.string	"dlen"
.LASF9:
	.string	"long long unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF23:
	.string	"mbedtls_ct_base64_dec_value"
.LASF17:
	.string	"slen"
.LASF13:
	.string	"uint32_t"
.LASF7:
	.string	"long unsigned int"
.LASF20:
	.string	"spaces_present"
.LASF6:
	.string	"__uint32_t"
.LASF22:
	.string	"mbedtls_base64_encode"
.LASF10:
	.string	"unsigned int"
.LASF26:
	.string	"./components/crypto/mbedtls/mbedtls/library/base64.c"
.LASF14:
	.string	"char"
.LASF12:
	.string	"uint8_t"
.LASF24:
	.string	"mbedtls_ct_base64_enc_char"
.LASF8:
	.string	"long long int"
.LASF16:
	.string	"olen"
.LASF2:
	.string	"short int"
.LASF27:
	.string	"./examples/usb_cam_stream/build_wsl/build_out/components/crypto/mbedtls"
.LASF4:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF19:
	.string	"equals"
.LASF21:
	.string	"mbedtls_base64_decode"
	.ident	"GCC: (GNU) 10.4.0"
