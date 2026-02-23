	.file	"bignum_alt.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.qcc74x_mpi_exp_mod_wo_lock.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"pka"
	.section	.text.qcc74x_mpi_exp_mod_wo_lock,"ax",@progbits
	.align	1
	.globl	qcc74x_mpi_exp_mod_wo_lock
	.type	qcc74x_mpi_exp_mod_wo_lock, @function
qcc74x_mpi_exp_mod_wo_lock:
.LFB5:
	.file 1 "./components/crypto/mbedtls/port/hw_acc/bignum_alt.c"
	.loc 1 49 1
	.cfi_startproc
.LVL0:
	.loc 1 50 5
	.loc 1 51 5
	.loc 1 52 5
	.loc 1 53 5
	.loc 1 54 5
	.loc 1 54 10
	.loc 1 54 12 is_stmt 0
	bne	a0,zero,.L2
	.loc 1 54 16
	li	a5,-4
	.loc 1 209 1
	mv	a0,a5
.LVL1:
	ret
.LVL2:
.L4:
	.cfi_def_cfa_offset 128
	.cfi_offset 1, -4
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
	.loc 1 54 16
	li	a5,-4
.L1:
	.loc 1 209 1
	lw	ra,124(sp)
	.cfi_restore 1
	lw	s0,120(sp)
	.cfi_restore 8
	lw	s1,116(sp)
	.cfi_restore 9
	lw	s2,112(sp)
	.cfi_restore 18
	lw	s3,108(sp)
	.cfi_restore 19
	lw	s4,104(sp)
	.cfi_restore 20
	lw	s5,100(sp)
	.cfi_restore 21
	lw	s6,96(sp)
	.cfi_restore 22
	lw	s7,92(sp)
	.cfi_restore 23
	lw	s8,88(sp)
	.cfi_restore 24
.LVL3:
	lw	s9,84(sp)
	.cfi_restore 25
	lw	s10,80(sp)
	.cfi_restore 26
	lw	s11,76(sp)
	.cfi_restore 27
	mv	a0,a5
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
	jr	ra
.LVL4:
.L2:
	.loc 1 49 1 discriminator 2
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sw	s8,88(sp)
	sw	ra,124(sp)
	sw	s0,120(sp)
	sw	s1,116(sp)
	sw	s2,112(sp)
	sw	s3,108(sp)
	sw	s4,104(sp)
	sw	s5,100(sp)
	sw	s6,96(sp)
	sw	s7,92(sp)
	sw	s9,84(sp)
	sw	s10,80(sp)
	sw	s11,76(sp)
	.cfi_offset 24, -40
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 25, -44
	.cfi_offset 26, -48
	.cfi_offset 27, -52
	mv	s8,a1
	.loc 1 54 38 is_stmt 1 discriminator 2
	.loc 1 55 5 discriminator 2
	.loc 1 55 10 discriminator 2
	.loc 1 55 12 is_stmt 0 discriminator 2
	beq	a1,zero,.L4
	mv	s3,a2
	.loc 1 55 38 is_stmt 1 discriminator 2
	.loc 1 56 5 discriminator 2
	.loc 1 56 10 discriminator 2
	.loc 1 56 12 is_stmt 0 discriminator 2
	beq	a2,zero,.L4
	mv	s5,a3
	.loc 1 56 38 is_stmt 1 discriminator 2
	.loc 1 57 5 discriminator 2
	.loc 1 57 10 discriminator 2
	.loc 1 57 12 is_stmt 0 discriminator 2
	beq	a3,zero,.L4
	mv	s4,a0
	.loc 1 59 28 discriminator 2
	mv	a0,a1
.LVL5:
	mv	s6,a4
	.loc 1 57 38 is_stmt 1 discriminator 2
	.loc 1 59 5 discriminator 2
	.loc 1 59 28 is_stmt 0 discriminator 2
	call	mpi_words
.LVL6:
	mv	s0,a0
.LVL7:
	.loc 1 60 5 is_stmt 1 discriminator 2
	.loc 1 60 28 is_stmt 0 discriminator 2
	mv	a0,s3
	call	mpi_words
.LVL8:
	mv	s1,a0
.LVL9:
	.loc 1 61 5 is_stmt 1 discriminator 2
	.loc 1 61 28 is_stmt 0 discriminator 2
	mv	a0,s5
	call	mpi_words
.LVL10:
	.loc 1 63 18 discriminator 2
	sltu	a5,s0,s1
	mvnez	s0, s1, a5
.LVL11:
	sltu	a5,s0,a0
	.loc 1 61 28 discriminator 2
	mv	s2,a0
.LVL12:
	.loc 1 63 5 is_stmt 1 discriminator 2
	.loc 1 65 5 discriminator 2
	.loc 1 63 18 is_stmt 0 discriminator 2
	mv	a0,s0
.LVL13:
	mvnez	a0, s2, a5
	.loc 1 65 26 discriminator 2
	call	mpi_words_to_reg_size
.LVL14:
	sw	a0,32(sp)
.LVL15:
	.loc 1 66 5 is_stmt 1 discriminator 2
	.loc 1 66 23 is_stmt 0 discriminator 2
	call	mpi_reg_size_to_words
.LVL16:
	sw	a0,24(sp)
.LVL17:
	.loc 1 67 5 is_stmt 1 discriminator 2
	.loc 1 67 28 is_stmt 0 discriminator 2
	mv	a0,s2
.LVL18:
	call	mpi_words_to_reg_size
.LVL19:
	mv	s0,a0
.LVL20:
	.loc 1 68 5 is_stmt 1 discriminator 2
	.loc 1 68 25 is_stmt 0 discriminator 2
	call	mpi_reg_size_to_words
.LVL21:
	mv	s9,a0
.LVL22:
	.loc 1 69 5 is_stmt 1 discriminator 2
	.loc 1 69 28 is_stmt 0 discriminator 2
	mv	a0,s1
.LVL23:
	call	mpi_words_to_reg_size
.LVL24:
	sw	a0,40(sp)
.LVL25:
	.loc 1 70 5 is_stmt 1 discriminator 2
	.loc 1 70 25 is_stmt 0 discriminator 2
	call	mpi_reg_size_to_words
.LVL26:
	mv	s11,a0
.LVL27:
	.loc 1 71 5 is_stmt 1 discriminator 2
	.loc 1 71 50 is_stmt 0 discriminator 2
	lw	a0,32(sp)
.LVL28:
	call	mpi_reg_size_to_words
.LVL29:
	.loc 1 71 28 discriminator 2
	slli	a0,a0,1
	call	mpi_words_to_reg_size
.LVL30:
	sw	a0,44(sp)
.LVL31:
	.loc 1 72 5 is_stmt 1 discriminator 2
	.loc 1 73 5 discriminator 2
	.loc 1 74 5 discriminator 2
	.loc 1 75 5 discriminator 2
	.loc 1 75 26 is_stmt 0 discriminator 2
	mv	a0,s3
.LVL32:
	call	mbedtls_mpi_bitlen
.LVL33:
	.loc 1 81 8 discriminator 2
	lw	a4,32(sp)
	.loc 1 75 26 discriminator 2
	sw	a0,28(sp)
.LVL34:
	.loc 1 76 5 is_stmt 1 discriminator 2
	.loc 1 77 4 discriminator 2
	.loc 1 78 5 discriminator 2
	.loc 1 81 5 discriminator 2
	.loc 1 81 8 is_stmt 0 discriminator 2
	li	a5,8
	ble	a4,a5,.L7
	.loc 1 83 9 is_stmt 1
	.loc 1 209 1 is_stmt 0
	lw	s0,120(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL35:
	lw	ra,124(sp)
	.cfi_restore 1
	lw	s1,116(sp)
	.cfi_restore 9
.LVL36:
	lw	s2,112(sp)
	.cfi_restore 18
.LVL37:
	lw	s7,92(sp)
	.cfi_restore 23
	lw	s9,84(sp)
	.cfi_restore 25
.LVL38:
	lw	s10,80(sp)
	.cfi_restore 26
	lw	s11,76(sp)
	.cfi_restore 27
.LVL39:
	.loc 1 83 16
	mv	a4,s6
	mv	a3,s5
	.loc 1 209 1
	lw	s6,96(sp)
	.cfi_restore 22
.LVL40:
	lw	s5,100(sp)
	.cfi_restore 21
.LVL41:
	.loc 1 83 16
	mv	a2,s3
	mv	a1,s8
	.loc 1 209 1
	lw	s3,108(sp)
	.cfi_restore 19
.LVL42:
	lw	s8,88(sp)
	.cfi_restore 24
.LVL43:
	.loc 1 83 16
	mv	a0,s4
.LVL44:
	.loc 1 209 1
	lw	s4,104(sp)
	.cfi_restore 20
.LVL45:
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
.LVL46:
	.loc 1 83 16
	tail	mbedtls_mpi_exp_mod_original
.LVL47:
.L7:
	.cfi_restore_state
	.loc 1 89 5 is_stmt 1
	.loc 1 89 9 is_stmt 0
	li	a1,0
	mv	a0,s5
.LVL48:
	call	mbedtls_mpi_cmp_int
.LVL49:
	.loc 1 89 8
	ble	a0,zero,.L4
	.loc 1 89 48 discriminator 1
	lw	a5,8(s5)
	.loc 1 89 52 discriminator 1
	lw	a5,0(a5)
	andi	a5,a5,1
	.loc 1 89 40 discriminator 1
	beq	a5,zero,.L4
	.loc 1 92 5 is_stmt 1
	.loc 1 92 9 is_stmt 0
	li	a1,0
	mv	a0,s3
	call	mbedtls_mpi_cmp_int
.LVL50:
	.loc 1 92 8
	blt	a0,zero,.L4
	.loc 1 95 5 is_stmt 1
	.loc 1 95 9 is_stmt 0
	li	a1,0
	mv	a0,s3
	call	mbedtls_mpi_cmp_int
.LVL51:
	.loc 1 95 8
	bne	a0,zero,.L8
	.loc 1 96 9 is_stmt 1
	.loc 1 209 1 is_stmt 0
	lw	s0,120(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL52:
	lw	ra,124(sp)
	.cfi_restore 1
	lw	s1,116(sp)
	.cfi_restore 9
.LVL53:
	lw	s2,112(sp)
	.cfi_restore 18
.LVL54:
	lw	s3,108(sp)
	.cfi_restore 19
.LVL55:
	lw	s5,100(sp)
	.cfi_restore 21
.LVL56:
	lw	s6,96(sp)
	.cfi_restore 22
.LVL57:
	lw	s7,92(sp)
	.cfi_restore 23
	lw	s8,88(sp)
	.cfi_restore 24
.LVL58:
	lw	s9,84(sp)
	.cfi_restore 25
.LVL59:
	lw	s10,80(sp)
	.cfi_restore 26
	lw	s11,76(sp)
	.cfi_restore 27
.LVL60:
	.loc 1 96 16
	mv	a0,s4
	.loc 1 209 1
	lw	s4,104(sp)
	.cfi_restore 20
.LVL61:
	.loc 1 96 16
	li	a1,1
	.loc 1 209 1
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
.LVL62:
	.loc 1 96 16
	tail	mbedtls_mpi_lset
.LVL63:
.L8:
	.cfi_restore_state
	.loc 1 99 5 is_stmt 1
	.loc 1 99 16 is_stmt 0
	lw	a1,24(sp)
	mv	a0,s4
	call	mbedtls_mpi_grow
.LVL64:
	mv	a5,a0
.LVL65:
	.loc 1 99 8
	bne	a0,zero,.L1
	.loc 1 103 5 is_stmt 1
	.loc 1 103 40 is_stmt 0
	lw	a5,24(sp)
	.loc 1 103 16
	li	a0,1
.LVL66:
	.loc 1 103 40
	slli	a5,a5,2
	.loc 1 103 16
	mv	a1,a5
	.loc 1 103 40
	sw	a5,36(sp)
	.loc 1 103 16
	call	mbedtls_calloc
.LVL67:
	mv	s2,a0
.LVL68:
	.loc 1 104 16
	li	a5,-16
	.loc 1 103 8
	beq	a0,zero,.L1
	.loc 1 107 5 is_stmt 1
	.loc 1 107 18 is_stmt 0
	lui	a0,%hi(.LC0)
.LVL69:
	addi	a0,a0,%lo(.LC0)
	call	qcc74x_device_get_by_name
.LVL70:
	.loc 1 107 16
	lui	s1,%hi(.LANCHOR0)
.LVL71:
	sw	a0,%lo(.LANCHOR0)(s1)
	.loc 1 107 52 is_stmt 1
	call	qcc74x_pka_init
.LVL72:
	.loc 1 108 5
	.loc 1 110 5
	addi	a0,sp,52
.LVL73:
	call	mbedtls_mpi_init
.LVL74:
	.loc 1 112 5
	addi	s1,s1,%lo(.LANCHOR0)
	.loc 1 112 8 is_stmt 0
	beq	s6,zero,.L9
	.loc 1 112 20 discriminator 1
	lw	a5,8(s6)
	bne	a5,zero,.L10
.L9:
	.loc 1 113 9 is_stmt 1
	.loc 1 113 14
	.loc 1 113 26 is_stmt 0
	slli	a2,s9,5
	mv	a1,s5
	addi	a0,sp,52
.LVL75:
	call	mpi_hensel_quad_mod_inv_prime_n
.LVL76:
	mv	a5,a0
	.loc 1 113 17
	bne	a0,zero,.L11
	.loc 1 113 118 is_stmt 1 discriminator 2
	.loc 1 114 9 discriminator 2
	.loc 1 114 12 is_stmt 0 discriminator 2
	bne	s6,zero,.L12
.L13:
	.loc 1 73 18
	addi	s6,sp,52
.LVL77:
.L10:
	.loc 1 121 5 is_stmt 1
	.loc 1 121 10
	.loc 1 121 63 is_stmt 0
	slli	s7,s9,2
	.loc 1 121 22
	mv	a2,s7
	mv	a1,s2
	mv	a0,s5
	call	mbedtls_mpi_write_binary
.LVL78:
	mv	a5,a0
	.loc 1 121 13
	bne	a0,zero,.L11
	.loc 1 121 98 is_stmt 1 discriminator 2
	.loc 1 122 5 discriminator 2
	lw	a0,0(s1)
.LVL79:
	andi	s0,s0,0xff
.LVL80:
	extu	s10,s9,15,0
	li	a5,1
.LVL81:
	mv	a4,s10
	mv	a3,s2
	mv	a2,s0
	li	a1,0
	call	qcc74x_pka_write
.LVL82:
	.loc 1 123 5 discriminator 2
	.loc 1 123 10 discriminator 2
	.loc 1 123 22 is_stmt 0 discriminator 2
	lw	a2,36(sp)
	mv	a1,s2
	mv	a0,s8
	call	mbedtls_mpi_write_binary
.LVL83:
	mv	a5,a0
	.loc 1 123 13 discriminator 2
	bne	a0,zero,.L11
	.loc 1 123 96 is_stmt 1 discriminator 2
	.loc 1 124 5 discriminator 2
	lw	a4,24(sp)
	lbu	a2,32(sp)
	lw	a0,0(s1)
.LVL84:
	li	a5,1
.LVL85:
	extu	a4,a4,15,0
	mv	a3,s2
	li	a1,2
	sw	a2,24(sp)
.LVL86:
	call	qcc74x_pka_write
.LVL87:
	.loc 1 125 5 discriminator 2
	.loc 1 125 86 is_stmt 0 discriminator 2
	slli	a5,s9,5
	.loc 1 125 5 discriminator 2
	sw	a5,4(sp)
	sw	s0,0(sp)
	lbu	a6,44(sp)
	lw	a2,24(sp)
	lw	a0,0(s1)
	li	a5,2
	li	a7,0
	mv	a4,s0
	li	a3,3
	li	a1,2
	call	qcc74x_pka_gf2mont
.LVL88:
	.loc 1 127 5 is_stmt 1 discriminator 2
	.loc 1 127 10 discriminator 2
	.loc 1 127 22 is_stmt 0 discriminator 2
	mv	a2,s7
	mv	a1,s2
	mv	a0,s6
	call	mbedtls_mpi_write_binary
.LVL89:
	mv	a5,a0
	.loc 1 127 13 discriminator 2
	bne	a0,zero,.L11
	.loc 1 127 103 is_stmt 1 discriminator 2
	.loc 1 128 5 discriminator 2
	lw	a0,0(s1)
.LVL90:
	li	a5,1
.LVL91:
	mv	a4,s10
	mv	a3,s2
	mv	a2,s0
	li	a1,1
	call	qcc74x_pka_write
.LVL92:
	.loc 1 130 5 discriminator 2
	.loc 1 131 5 discriminator 2
	.loc 1 131 24 is_stmt 0 discriminator 2
	lw	a4,28(sp)
	li	a5,79
	bgt	a4,a5,.L36
	.loc 1 131 37 discriminator 1
	li	a5,23
	bgt	a4,a5,.L37
.LVL93:
	.loc 1 132 5 is_stmt 1
	.loc 1 144 9
	.loc 1 145 9
	.loc 1 145 14
	.loc 1 145 26 is_stmt 0
	slli	a2,s11,2
	mv	a1,s2
	mv	a0,s3
	call	mbedtls_mpi_write_binary
.LVL94:
	mv	a5,a0
	.loc 1 145 17
	bne	a0,zero,.L11
	.loc 1 145 102 is_stmt 1 discriminator 2
	.loc 1 146 9 discriminator 2
	.loc 1 144 34 is_stmt 0 discriminator 2
	add	s6,s7,s11
.LVL95:
	.loc 1 144 44 discriminator 2
	addi	s6,s6,-1
	.loc 1 144 19 discriminator 2
	div	s6,s6,s11
	.loc 1 146 9 discriminator 2
	lbu	a6,40(sp)
	lw	a0,0(s1)
.LVL96:
	li	a5,1
.LVL97:
	mv	a2,a6
	extu	a4,s11,15,0
	mv	a3,s2
	sw	a6,24(sp)
	andi	s6,s6,0xff
	mv	a1,s6
	call	qcc74x_pka_write
.LVL98:
	.loc 1 148 9 is_stmt 1 discriminator 2
	li	a5,1
	sw	a5,4(sp)
	sw	s0,0(sp)
	lw	a6,24(sp)
	lw	a0,0(s1)
	li	a7,0
	mv	a5,s6
	mv	a4,s0
	li	a3,2
	mv	a2,s0
	li	a1,3
	call	qcc74x_pka_mexp
.LVL99:
	.loc 1 149 9 discriminator 2
.L18:
	.loc 1 190 5
	mv	a2,s7
	li	a1,0
	mv	a0,s2
	call	memset
.LVL100:
	.loc 1 191 5
	.loc 1 191 26 is_stmt 0
	add	a5,s2,s7
	li	s6,1
	sb	s6,-1(a5)
	.loc 1 192 5 is_stmt 1
	lw	a0,0(s1)
	li	a5,1
	mv	a4,s10
	mv	a3,s2
	mv	a2,s0
	li	a1,3
	call	qcc74x_pka_write
.LVL101:
	.loc 1 193 5
	sw	s6,4(sp)
	sw	s0,0(sp)
	lw	a0,0(s1)
	li	a5,3
	li	a7,0
	mv	a6,s0
	mv	a4,s0
	li	a3,4
	mv	a2,s0
	li	a1,2
	call	qcc74x_pka_mmul
.LVL102:
	.loc 1 194 5
	lw	a0,0(s1)
	mv	a4,s10
	mv	a3,s2
	mv	a2,s0
	li	a1,4
	call	qcc74x_pka_read
.LVL103:
	.loc 1 195 5
	.loc 1 195 10
	.loc 1 195 22 is_stmt 0
	mv	a2,s7
	mv	a1,s2
	mv	a0,s4
	call	mbedtls_mpi_read_binary
.LVL104:
	mv	a5,a0
	.loc 1 195 13
	bne	a0,zero,.L11
	.loc 1 195 97 is_stmt 1 discriminator 2
	.loc 1 198 5 discriminator 2
	.loc 1 198 8 is_stmt 0 discriminator 2
	lw	a3,0(s8)
	li	a4,-1
	bne	a3,a4,.L32
	.loc 1 198 28 discriminator 1
	lw	a4,8(s3)
	.loc 1 198 32 discriminator 1
	lw	a4,0(a4)
	andi	a4,a4,1
	.loc 1 198 20 discriminator 1
	beq	a4,zero,.L32
	.loc 1 199 9 is_stmt 1
	.loc 1 199 14 is_stmt 0
	sw	a3,0(s4)
	.loc 1 200 9 is_stmt 1
	.loc 1 200 14
	.loc 1 200 26 is_stmt 0
	mv	a2,s4
	mv	a1,s5
	mv	a0,s4
.LVL105:
	call	mbedtls_mpi_add_mpi
.LVL106:
	mv	a5,a0
	j	.L11
.LVL107:
.L12:
	.loc 1 115 13 is_stmt 1
	.loc 1 115 18
	.loc 1 115 30 is_stmt 0
	addi	a1,sp,52
.LVL108:
	mv	a0,s6
.LVL109:
	call	mbedtls_mpi_copy
.LVL110:
	mv	a5,a0
	.loc 1 115 21
	beq	a0,zero,.L13
.LVL111:
.L11:
	.loc 1 206 5
	mv	a0,s2
.LVL112:
	sw	a5,24(sp)
	.loc 1 206 5 is_stmt 1
	call	mbedtls_free
.LVL113:
	.loc 1 207 5
	addi	a0,sp,52
	call	mbedtls_mpi_free
.LVL114:
	.loc 1 208 5
	.loc 1 208 12 is_stmt 0
	lw	a5,24(sp)
	j	.L1
.LVL115:
.L20:
.LBB2:
	.loc 1 158 13 is_stmt 1
	.loc 1 159 13
	.loc 1 160 13
	.loc 1 160 27 is_stmt 0
	addi	s11,s9,1
	sgt	a4,s11,s6
	mv	a5,s11
	mvnez	s11, s6, a4
.LVL116:
	.loc 1 163 19 is_stmt 1
.L24:
	.loc 1 164 17
	.loc 1 164 21 is_stmt 0
	sub	a1,a5,s11
	mv	a0,s3
	sw	a5,28(sp)
	call	mbedtls_mpi_get_bit
.LVL117:
	.loc 1 164 20
	bne	a0,zero,.L23
	.loc 1 166 17 is_stmt 1
	.loc 1 166 30 is_stmt 0
	addi	s11,s11,-1
.LVL118:
	.loc 1 163 19 is_stmt 1
	lw	a5,28(sp)
	bne	s11,zero,.L24
.L23:
.LBE2:
.LBB4:
	.loc 1 136 13 is_stmt 0 discriminator 1
	li	a5,0
	li	t3,0
.LVL119:
.L25:
.LBE4:
.LBB5:
	.loc 1 168 25 is_stmt 1 discriminator 1
	.loc 1 168 13 is_stmt 0 discriminator 1
	bne	t3,s11,.L28
	.loc 1 177 13 is_stmt 1
	.loc 1 177 33 is_stmt 0
	addi	a1,a5,-1
	.loc 1 178 16
	lw	a5,24(sp)
.LVL120:
	.loc 1 177 38
	srai	a1,a1,1
.LVL121:
	.loc 1 177 15
	addi	a1,a1,4
.LVL122:
	.loc 1 178 13 is_stmt 1
	andi	a1,a1,0xff
.LVL123:
	.loc 1 178 16 is_stmt 0
	beq	a5,zero,.L29
	.loc 1 179 17 is_stmt 1
	lw	a0,0(s1)
	li	a5,1
	mv	a4,s0
	li	a3,2
	mv	a2,s0
	call	qcc74x_pka_movdat
.LVL124:
	.loc 1 180 17
.L30:
	.loc 1 185 13
	.loc 1 185 23 is_stmt 0
	sub	s9,s9,s11
.LVL125:
	sw	zero,24(sp)
	j	.L19
.LVL126:
.L28:
.LBB3:
	.loc 1 169 31
	sub	a1,s9,t3
	mv	a0,s3
	sw	t3,28(sp)
	sw	a5,32(sp)
.LVL127:
	.loc 1 169 17 is_stmt 1
	.loc 1 169 31 is_stmt 0
	call	mbedtls_mpi_get_bit
.LVL128:
	.loc 1 170 20
	lw	t3,28(sp)
	.loc 1 169 31
	mv	t4,a0
.LVL129:
	.loc 1 170 17 is_stmt 1
	.loc 1 170 20 is_stmt 0
	beq	t3,zero,.L26
	.loc 1 173 21 is_stmt 1
	.loc 1 173 35 is_stmt 0
	lw	a5,32(sp)
	addsl	t4, a0, a5, 1
.LVL130:
.L26:
	.loc 1 174 17 is_stmt 1
	.loc 1 174 20 is_stmt 0
	lw	a5,24(sp)
	bne	a5,zero,.L27
	.loc 1 175 21
	lw	a0,0(s1)
	li	a7,1
	mv	a6,s0
	mv	a4,s0
	li	a3,2
	mv	a2,s0
	li	a1,2
	sw	t4,32(sp)
	sw	t3,28(sp)
	.loc 1 175 21 is_stmt 1
	call	qcc74x_pka_msqr
.LVL131:
	lw	t4,32(sp)
	lw	t3,28(sp)
.LVL132:
.L27:
.LBE3:
	.loc 1 168 44 discriminator 2
	addi	t3,t3,1
.LVL133:
	mv	a5,t4
	j	.L25
.LVL134:
.L29:
	.loc 1 182 17
	li	a5,1
	sw	a5,4(sp)
	sw	s0,0(sp)
	lw	a0,0(s1)
	mv	a5,a1
	li	a7,0
	mv	a6,s0
	mv	a4,s0
	li	a3,2
	mv	a2,s0
	li	a1,2
	call	qcc74x_pka_mmul
.LVL135:
	j	.L30
.LVL136:
.L32:
.LBE5:
	.loc 1 202 9
	.loc 1 202 14 is_stmt 0
	li	a4,1
	sw	a4,0(s4)
	j	.L11
.LVL137:
.L36:
	.loc 1 131 24
	li	s6,4
.LVL138:
.L14:
	.loc 1 132 5 is_stmt 1
	.loc 1 132 8 is_stmt 0
	li	a5,32
	ble	s9,a5,.L33
	.loc 1 133 15
	li	s6,3
.LVL139:
.L33:
.LBB6:
	.loc 1 136 9 is_stmt 1
	.loc 1 137 9
	lw	a0,0(s1)
	li	a5,1
	mv	a4,s0
	li	a3,4
	mv	a2,s0
	li	a1,3
	call	qcc74x_pka_movdat
.LVL140:
	.loc 1 138 9
	lw	a0,0(s1)
	li	a5,0
	li	a7,1
	mv	a6,s0
	mv	a4,s0
	li	a3,3
	mv	a2,s0
	li	a1,3
	call	qcc74x_pka_msqr
.LVL141:
	.loc 1 140 9
	.loc 1 141 9
	.loc 1 141 21
	.loc 1 140 26 is_stmt 0
	addi	a5,s6,-1
	.loc 1 140 16
	li	s9,1
.LVL142:
	sll	s9,s9,a5
	addi	s9,s9,4
	.loc 1 136 13
	li	s11,5
.LVL143:
	.loc 1 142 13
	li	t1,1
.LVL144:
.L16:
	.loc 1 142 13 is_stmt 1 discriminator 3
	sw	t1,4(sp)
	sw	s0,0(sp)
	andi	a3,s11,0xff
	lw	a0,0(s1)
	addi	a1,a3,-1
	li	a7,0
	mv	a6,s0
	li	a5,3
	mv	a4,s0
	mv	a2,s0
	andi	a1,a1,0xff
	call	qcc74x_pka_mmul
.LVL145:
	.loc 1 141 28 discriminator 3
	.loc 1 141 33 is_stmt 0 discriminator 3
	addi	s11,s11,1
.LVL146:
	.loc 1 141 21 is_stmt 1 discriminator 3
	.loc 1 141 9 is_stmt 0 discriminator 3
	li	t1,1
	bne	s9,s11,.L16
.LBE6:
	.loc 1 152 5 is_stmt 1
	.loc 1 152 15 is_stmt 0
	lw	a5,28(sp)
	addi	s9,a5,-1
.LVL147:
	.loc 1 153 5 is_stmt 1
	.loc 1 77 9 is_stmt 0
	li	a5,1
	sw	a5,24(sp)
.LVL148:
.L19:
	.loc 1 153 11 is_stmt 1
	blt	s9,zero,.L18
	.loc 1 154 9
	.loc 1 154 13 is_stmt 0
	mv	a1,s9
	mv	a0,s3
	call	mbedtls_mpi_get_bit
.LVL149:
	.loc 1 154 12
	bne	a0,zero,.L20
	.loc 1 155 13 is_stmt 1
	lw	a0,0(s1)
	li	a7,1
	mv	a6,s0
	li	a5,0
	mv	a4,s0
	li	a3,2
	mv	a2,s0
	li	a1,2
	call	qcc74x_pka_msqr
.LVL150:
	.loc 1 156 13
	.loc 1 156 22 is_stmt 0
	addi	s9,s9,-1
.LVL151:
	j	.L19
.LVL152:
.L37:
	.loc 1 131 37
	li	s6,3
.LVL153:
	j	.L14
	.cfi_endproc
.LFE5:
	.size	qcc74x_mpi_exp_mod_wo_lock, .-qcc74x_mpi_exp_mod_wo_lock
	.section	.text.mbedtls_mpi_exp_mod,"ax",@progbits
	.align	1
	.globl	mbedtls_mpi_exp_mod
	.type	mbedtls_mpi_exp_mod, @function
mbedtls_mpi_exp_mod:
.LFB6:
	.loc 1 212 1 is_stmt 1
	.cfi_startproc
.LVL154:
	.loc 1 213 5
	.loc 1 215 5
	.loc 1 212 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 212 1
	sw	a1,12(sp)
	mv	s0,a0
	sw	a2,8(sp)
	sw	a3,4(sp)
	sw	a4,0(sp)
	.loc 1 215 5
	call	qcc74x_sec_pka_mutex_take
.LVL155:
	.loc 1 216 5 is_stmt 1
	.loc 1 216 11 is_stmt 0
	lw	a4,0(sp)
	lw	a3,4(sp)
	lw	a2,8(sp)
	lw	a1,12(sp)
	mv	a0,s0
	call	qcc74x_mpi_exp_mod_wo_lock
.LVL156:
	mv	s0,a0
.LVL157:
	.loc 1 217 5 is_stmt 1
	call	qcc74x_sec_pka_mutex_give
.LVL158:
	.loc 1 218 5
	.loc 1 219 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	mv	a0,s0
	lw	s0,24(sp)
	.cfi_restore 8
.LVL159:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL160:
	jr	ra
	.cfi_endproc
.LFE6:
	.size	mbedtls_mpi_exp_mod, .-mbedtls_mpi_exp_mod
	.globl	bignum_pka
	.section	.bss.bignum_pka,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	bignum_pka, @object
	.size	bignum_pka, 4
bignum_pka:
	.zero	4
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/lib/gcc/riscv64-unknown-elf/10.4.0/include/stddef.h"
	.file 4 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 5 "./components/crypto/mbedtls/mbedtls/include/mbedtls/bignum.h"
	.file 6 "./drivers/lhal/include/qcc74x_core.h"
	.file 7 "./components/crypto/mbedtls/port/sec_mutex.h"
	.file 8 "./drivers/lhal/include/qcc74x_sec_pka.h"
	.file 9 "./components/crypto/mbedtls/port/hw_acc/bignum_ext.h"
	.file 10 "./components/crypto/mbedtls/mbedtls/include/mbedtls/platform.h"
	.file 11 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xce4
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF79
	.byte	0xc
	.4byte	.LASF80
	.4byte	.LASF81
	.4byte	.Ldebug_ranges0+0x30
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
	.byte	0x5
	.4byte	0x75
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
	.byte	0x5
	.4byte	0x88
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
	.4byte	0x54
	.byte	0x3
	.4byte	.LASF14
	.byte	0x5
	.byte	0xa8
	.byte	0x12
	.4byte	0xa5
	.byte	0x6
	.4byte	.LASF15
	.byte	0xc
	.byte	0x5
	.byte	0xc4
	.byte	0x10
	.4byte	0xec
	.byte	0x7
	.string	"s"
	.byte	0x5
	.byte	0xd0
	.byte	0x9
	.4byte	0x75
	.byte	0
	.byte	0x7
	.string	"n"
	.byte	0x5
	.byte	0xd3
	.byte	0xc
	.4byte	0x88
	.byte	0x4
	.byte	0x7
	.string	"p"
	.byte	0x5
	.byte	0xd9
	.byte	0x17
	.4byte	0xec
	.byte	0x8
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0xb1
	.byte	0x3
	.4byte	.LASF15
	.byte	0x5
	.byte	0xdb
	.byte	0x1
	.4byte	0xbd
	.byte	0x5
	.4byte	0xf2
	.byte	0x9
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.byte	0x5
	.4byte	0x105
	.byte	0x8
	.byte	0x4
	.4byte	0x10c
	.byte	0x6
	.4byte	.LASF17
	.byte	0x10
	.byte	0x6
	.byte	0x67
	.byte	0x8
	.4byte	0x180
	.byte	0xa
	.4byte	.LASF18
	.byte	0x6
	.byte	0x68
	.byte	0x11
	.4byte	0x111
	.byte	0
	.byte	0xa
	.4byte	.LASF19
	.byte	0x6
	.byte	0x69
	.byte	0xe
	.4byte	0xa5
	.byte	0x4
	.byte	0xa
	.4byte	.LASF20
	.byte	0x6
	.byte	0x6a
	.byte	0xd
	.4byte	0x99
	.byte	0x8
	.byte	0x7
	.string	"idx"
	.byte	0x6
	.byte	0x6b
	.byte	0xd
	.4byte	0x99
	.byte	0x9
	.byte	0xa
	.4byte	.LASF21
	.byte	0x6
	.byte	0x6c
	.byte	0xd
	.4byte	0x99
	.byte	0xa
	.byte	0xa
	.4byte	.LASF22
	.byte	0x6
	.byte	0x6d
	.byte	0xd
	.4byte	0x99
	.byte	0xb
	.byte	0xa
	.4byte	.LASF23
	.byte	0x6
	.byte	0x6e
	.byte	0xb
	.4byte	0x103
	.byte	0xc
	.byte	0
	.byte	0xb
	.4byte	.LASF82
	.byte	0x1
	.byte	0x9
	.byte	0x19
	.4byte	0x192
	.byte	0x5
	.byte	0x3
	.4byte	bignum_pka
	.byte	0x8
	.byte	0x4
	.4byte	0x117
	.byte	0xc
	.4byte	.LASF24
	.byte	0x1
	.byte	0xd3
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x24d
	.byte	0xd
	.string	"X"
	.byte	0x1
	.byte	0xd3
	.byte	0x26
	.4byte	0x24d
	.4byte	.LLST30
	.byte	0xd
	.string	"A"
	.byte	0x1
	.byte	0xd3
	.byte	0x3c
	.4byte	0x253
	.4byte	.LLST31
	.byte	0xd
	.string	"E"
	.byte	0x1
	.byte	0xd3
	.byte	0x52
	.4byte	0x253
	.4byte	.LLST32
	.byte	0xd
	.string	"N"
	.byte	0x1
	.byte	0xd3
	.byte	0x68
	.4byte	0x253
	.4byte	.LLST33
	.byte	0xd
	.string	"_RN"
	.byte	0x1
	.byte	0xd3
	.byte	0x78
	.4byte	0x24d
	.4byte	.LLST34
	.byte	0xe
	.string	"ret"
	.byte	0x1
	.byte	0xd5
	.byte	0x9
	.4byte	0x75
	.4byte	.LLST35
	.byte	0xf
	.4byte	.LVL155
	.4byte	0xb77
	.byte	0x10
	.4byte	.LVL156
	.4byte	0x259
	.4byte	0x243
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0x68
	.byte	0x6
	.byte	0x11
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x91
	.byte	0x64
	.byte	0x6
	.byte	0x11
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0x72
	.byte	0
	.byte	0x6
	.byte	0
	.byte	0xf
	.4byte	.LVL158
	.4byte	0xb83
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0xf2
	.byte	0x8
	.byte	0x4
	.4byte	0xfe
	.byte	0xc
	.4byte	.LASF25
	.byte	0x1
	.byte	0x30
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0xb6a
	.byte	0xd
	.string	"X"
	.byte	0x1
	.byte	0x30
	.byte	0x2d
	.4byte	0x24d
	.4byte	.LLST0
	.byte	0xd
	.string	"A"
	.byte	0x1
	.byte	0x30
	.byte	0x43
	.4byte	0x253
	.4byte	.LLST1
	.byte	0xd
	.string	"E"
	.byte	0x1
	.byte	0x30
	.byte	0x59
	.4byte	0x253
	.4byte	.LLST2
	.byte	0xd
	.string	"N"
	.byte	0x1
	.byte	0x30
	.byte	0x6f
	.4byte	0x253
	.4byte	.LLST3
	.byte	0xd
	.string	"_RN"
	.byte	0x1
	.byte	0x30
	.byte	0x7f
	.4byte	0x24d
	.4byte	.LLST4
	.byte	0xe
	.string	"ret"
	.byte	0x1
	.byte	0x32
	.byte	0x9
	.4byte	0x75
	.4byte	.LLST5
	.byte	0xe
	.string	"tmp"
	.byte	0x1
	.byte	0x33
	.byte	0xe
	.4byte	0xb6a
	.4byte	.LLST6
	.byte	0x12
	.4byte	.LASF26
	.byte	0x1
	.byte	0x34
	.byte	0x9
	.4byte	0x75
	.4byte	.LLST7
	.byte	0xe
	.string	"i"
	.byte	0x1
	.byte	0x35
	.byte	0x9
	.4byte	0x75
	.4byte	.LLST8
	.byte	0xe
	.string	"j"
	.byte	0x1
	.byte	0x35
	.byte	0xc
	.4byte	0x75
	.4byte	.LLST9
	.byte	0x12
	.4byte	.LASF27
	.byte	0x1
	.byte	0x3b
	.byte	0x12
	.4byte	0x94
	.4byte	.LLST10
	.byte	0x12
	.4byte	.LASF28
	.byte	0x1
	.byte	0x3c
	.byte	0x12
	.4byte	0x94
	.4byte	.LLST11
	.byte	0x12
	.4byte	.LASF29
	.byte	0x1
	.byte	0x3d
	.byte	0x12
	.4byte	0x94
	.4byte	.LLST12
	.byte	0x13
	.4byte	.LASF83
	.byte	0x1
	.byte	0x3f
	.byte	0x12
	.4byte	0x94
	.byte	0x12
	.4byte	.LASF30
	.byte	0x1
	.byte	0x41
	.byte	0xf
	.4byte	0x7c
	.4byte	.LLST13
	.byte	0x12
	.4byte	.LASF31
	.byte	0x1
	.byte	0x42
	.byte	0xf
	.4byte	0x7c
	.4byte	.LLST14
	.byte	0x12
	.4byte	.LASF32
	.byte	0x1
	.byte	0x43
	.byte	0xf
	.4byte	0x7c
	.4byte	.LLST15
	.byte	0x12
	.4byte	.LASF33
	.byte	0x1
	.byte	0x44
	.byte	0xf
	.4byte	0x7c
	.4byte	.LLST16
	.byte	0x12
	.4byte	.LASF34
	.byte	0x1
	.byte	0x45
	.byte	0xf
	.4byte	0x7c
	.4byte	.LLST17
	.byte	0x12
	.4byte	.LASF35
	.byte	0x1
	.byte	0x46
	.byte	0xf
	.4byte	0x7c
	.4byte	.LLST18
	.byte	0x12
	.4byte	.LASF36
	.byte	0x1
	.byte	0x47
	.byte	0xf
	.4byte	0x7c
	.4byte	.LLST19
	.byte	0x14
	.4byte	.LASF37
	.byte	0x1
	.byte	0x48
	.byte	0x11
	.4byte	0xf2
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x12
	.4byte	.LASF38
	.byte	0x1
	.byte	0x49
	.byte	0x12
	.4byte	0x24d
	.4byte	.LLST20
	.byte	0x12
	.4byte	.LASF39
	.byte	0x1
	.byte	0x4a
	.byte	0x9
	.4byte	0x75
	.4byte	.LLST21
	.byte	0x12
	.4byte	.LASF40
	.byte	0x1
	.byte	0x4b
	.byte	0xf
	.4byte	0x7c
	.4byte	.LLST22
	.byte	0x12
	.4byte	.LASF41
	.byte	0x1
	.byte	0x4c
	.byte	0x9
	.4byte	0x75
	.4byte	.LLST23
	.byte	0x12
	.4byte	.LASF42
	.byte	0x1
	.byte	0x4d
	.byte	0x9
	.4byte	0xb70
	.4byte	.LLST24
	.byte	0xe
	.string	"sN"
	.byte	0x1
	.byte	0x4e
	.byte	0xf
	.4byte	0x7c
	.4byte	.LLST25
	.byte	0x15
	.4byte	.LASF43
	.byte	0x1
	.byte	0xcd
	.byte	0x1
	.4byte	.L11
	.byte	0x15
	.4byte	.LASF44
	.byte	0x1
	.byte	0xbd
	.byte	0x1
	.4byte	.L18
	.byte	0x16
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x4f4
	.byte	0xe
	.string	"ri"
	.byte	0x1
	.byte	0x88
	.byte	0xd
	.4byte	0x75
	.4byte	.LLST29
	.byte	0x10
	.4byte	.LVL140
	.4byte	0xb8f
	.4byte	0x47b
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x34
	.byte	0x11
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x10
	.4byte	.LVL141
	.4byte	0xb9b
	.4byte	0x4af
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x33
	.byte	0x11
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x30
	.byte	0x11
	.byte	0x1
	.byte	0x60
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x17
	.4byte	.LVL145
	.4byte	0xba7
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x7
	.byte	0x8b
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x31
	.byte	0x1c
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x8b
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x33
	.byte	0x11
	.byte	0x1
	.byte	0x60
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.byte	0x30
	.byte	0x11
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x11
	.byte	0x2
	.byte	0x72
	.byte	0x4
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.Ldebug_ranges0+0
	.4byte	0x60a
	.byte	0x12
	.4byte	.LASF45
	.byte	0x1
	.byte	0x9e
	.byte	0x11
	.4byte	0x75
	.4byte	.LLST26
	.byte	0x12
	.4byte	.LASF46
	.byte	0x1
	.byte	0x9f
	.byte	0x11
	.4byte	0x75
	.4byte	.LLST27
	.byte	0x18
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x58e
	.byte	0x12
	.4byte	.LASF47
	.byte	0x1
	.byte	0xa9
	.byte	0x15
	.4byte	0x75
	.4byte	.LLST28
	.byte	0x10
	.4byte	.LVL128
	.4byte	0xbb3
	.4byte	0x559
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x7
	.byte	0x89
	.byte	0
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0x6
	.byte	0x1c
	.byte	0
	.byte	0x17
	.4byte	.LVL131
	.4byte	0xb9b
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x32
	.byte	0x11
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.byte	0x91
	.byte	0x98,0x7f
	.byte	0x94
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x60
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LVL117
	.4byte	0xbb3
	.4byte	0x5ad
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x7
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0x6
	.byte	0x8b
	.byte	0
	.byte	0x1c
	.byte	0
	.byte	0x10
	.4byte	.LVL124
	.4byte	0xb8f
	.4byte	0x5d1
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x32
	.byte	0x11
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x17
	.4byte	.LVL135
	.4byte	0xba7
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x32
	.byte	0x11
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x60
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.byte	0x30
	.byte	0x11
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x11
	.byte	0x2
	.byte	0x72
	.byte	0x4
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LVL6
	.4byte	0xbc0
	.4byte	0x61e
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LVL8
	.4byte	0xbc0
	.4byte	0x632
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LVL10
	.4byte	0xbc0
	.4byte	0x646
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LVL14
	.4byte	0xbcc
	.4byte	0x66e
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x16
	.byte	0x78
	.byte	0
	.byte	0x82
	.byte	0
	.byte	0x78
	.byte	0
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x82
	.byte	0
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2a
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.byte	0x10
	.4byte	.LVL16
	.4byte	0xbd8
	.4byte	0x684
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x4
	.byte	0x91
	.byte	0xa0,0x7f
	.byte	0x6
	.byte	0
	.byte	0x10
	.4byte	.LVL19
	.4byte	0xbcc
	.4byte	0x698
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LVL21
	.4byte	0xbd8
	.4byte	0x6ac
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LVL24
	.4byte	0xbcc
	.4byte	0x6c0
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LVL26
	.4byte	0xbd8
	.4byte	0x6d6
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x4
	.byte	0x91
	.byte	0xa8,0x7f
	.byte	0x6
	.byte	0
	.byte	0x10
	.4byte	.LVL29
	.4byte	0xbd8
	.4byte	0x6ec
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x4
	.byte	0x91
	.byte	0xa0,0x7f
	.byte	0x6
	.byte	0
	.byte	0xf
	.4byte	.LVL30
	.4byte	0xbcc
	.byte	0x10
	.4byte	.LVL33
	.4byte	0xbe4
	.4byte	0x709
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LVL47
	.4byte	0xbf1
	.4byte	0x73a
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x11
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x11
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0
	.byte	0x10
	.4byte	.LVL49
	.4byte	0xbfd
	.4byte	0x753
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x10
	.4byte	.LVL50
	.4byte	0xbfd
	.4byte	0x76c
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x10
	.4byte	.LVL51
	.4byte	0xbfd
	.4byte	0x785
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x19
	.4byte	.LVL63
	.4byte	0xc0a
	.4byte	0x79f
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x10
	.4byte	.LVL64
	.4byte	0xc17
	.4byte	0x7bb
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x4
	.byte	0x91
	.byte	0x98,0x7f
	.byte	0x6
	.byte	0
	.byte	0x10
	.4byte	.LVL67
	.4byte	0xc23
	.4byte	0x7d6
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x4
	.byte	0x91
	.byte	0xa4,0x7f
	.byte	0x6
	.byte	0
	.byte	0x10
	.4byte	.LVL70
	.4byte	0xc2f
	.4byte	0x7ed
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0xf
	.4byte	.LVL72
	.4byte	0xc3b
	.byte	0x10
	.4byte	.LVL74
	.4byte	0xc47
	.4byte	0x80b
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0
	.byte	0x10
	.4byte	.LVL76
	.4byte	0xc53
	.4byte	0x82e
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x4
	.byte	0x89
	.byte	0
	.byte	0x35
	.byte	0x24
	.byte	0
	.byte	0x10
	.4byte	.LVL78
	.4byte	0xc5f
	.4byte	0x84e
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
	.byte	0x82
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LVL82
	.4byte	0xc6c
	.4byte	0x878
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x10
	.4byte	.LVL83
	.4byte	0xc5f
	.4byte	0x89a
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x4
	.byte	0x91
	.byte	0xa4,0x7f
	.byte	0x6
	.byte	0
	.byte	0x10
	.4byte	.LVL87
	.4byte	0xc6c
	.4byte	0x8c1
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x91
	.byte	0x98,0x7f
	.byte	0x94
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x10
	.4byte	.LVL88
	.4byte	0xc78
	.4byte	0x90b
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x91
	.byte	0x98,0x7f
	.byte	0x94
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x33
	.byte	0x11
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x32
	.byte	0x11
	.byte	0x1
	.byte	0x60
	.byte	0x5
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0x94
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.byte	0x30
	.byte	0x11
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x11
	.byte	0x2
	.byte	0x72
	.byte	0x4
	.byte	0x4
	.byte	0x89
	.byte	0
	.byte	0x35
	.byte	0x24
	.byte	0
	.byte	0x10
	.4byte	.LVL89
	.4byte	0xc5f
	.4byte	0x92b
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
	.byte	0x82
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LVL92
	.4byte	0xc6c
	.4byte	0x955
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x10
	.4byte	.LVL94
	.4byte	0xc5f
	.4byte	0x977
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x4
	.byte	0x8b
	.byte	0
	.byte	0x32
	.byte	0x24
	.byte	0
	.byte	0x10
	.4byte	.LVL98
	.4byte	0xc6c
	.4byte	0x9a5
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x91
	.byte	0x98,0x7f
	.byte	0x94
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8b
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x10
	.4byte	.LVL99
	.4byte	0xc84
	.4byte	0x9ea
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x32
	.byte	0x11
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x60
	.byte	0x5
	.byte	0x91
	.byte	0x98,0x7f
	.byte	0x94
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.byte	0x30
	.byte	0x11
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x11
	.byte	0x2
	.byte	0x72
	.byte	0x4
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x10
	.4byte	.LVL100
	.4byte	0xc90
	.4byte	0xa09
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
	.byte	0x30
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LVL101
	.4byte	0xc6c
	.4byte	0xa34
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LVL102
	.4byte	0xba7
	.4byte	0xa76
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x34
	.byte	0x11
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x33
	.byte	0x11
	.byte	0x1
	.byte	0x60
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.byte	0x30
	.byte	0x11
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x11
	.byte	0x2
	.byte	0x72
	.byte	0x4
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LVL103
	.4byte	0xc9c
	.4byte	0xa9b
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x34
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LVL104
	.4byte	0xca8
	.4byte	0xabb
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LVL106
	.4byte	0xcb5
	.4byte	0xadb
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
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
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LVL110
	.4byte	0xcc2
	.4byte	0xaf6
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0
	.byte	0x10
	.4byte	.LVL113
	.4byte	0xccf
	.4byte	0xb0a
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LVL114
	.4byte	0xcdb
	.4byte	0xb1f
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0
	.byte	0x10
	.4byte	.LVL149
	.4byte	0xbb3
	.4byte	0xb39
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x89
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.LVL150
	.4byte	0xb9b
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x32
	.byte	0x11
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x30
	.byte	0x11
	.byte	0x1
	.byte	0x60
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x99
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF48
	.byte	0x1a
	.4byte	.LASF49
	.4byte	.LASF49
	.byte	0x7
	.byte	0xb
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0x7
	.byte	0xc
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0x8
	.byte	0xd3
	.byte	0x6
	.byte	0x1a
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0x8
	.byte	0x99
	.byte	0x6
	.byte	0x1a
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0x8
	.byte	0xa2
	.byte	0x6
	.byte	0x1b
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x5
	.2byte	0x178
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF55
	.4byte	.LASF55
	.byte	0x9
	.byte	0xa
	.byte	0x8
	.byte	0x1a
	.4byte	.LASF56
	.4byte	.LASF56
	.byte	0x9
	.byte	0x7
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0x9
	.byte	0x8
	.byte	0x8
	.byte	0x1b
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0x5
	.2byte	0x1a5
	.byte	0x8
	.byte	0x1a
	.4byte	.LASF59
	.4byte	.LASF59
	.byte	0x1
	.byte	0x2c
	.byte	0xc
	.byte	0x1b
	.4byte	.LASF60
	.4byte	.LASF60
	.byte	0x5
	.2byte	0x294
	.byte	0x5
	.byte	0x1b
	.4byte	.LASF61
	.4byte	.LASF61
	.byte	0x5
	.2byte	0x16c
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF62
	.4byte	.LASF62
	.byte	0x5
	.byte	0xfd
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF63
	.4byte	.LASF63
	.byte	0xa
	.byte	0x99
	.byte	0xe
	.byte	0x1a
	.4byte	.LASF64
	.4byte	.LASF64
	.byte	0x6
	.byte	0x7b
	.byte	0x19
	.byte	0x1a
	.4byte	.LASF65
	.4byte	.LASF65
	.byte	0x8
	.byte	0x39
	.byte	0x6
	.byte	0x1a
	.4byte	.LASF66
	.4byte	.LASF66
	.byte	0x5
	.byte	0xe5
	.byte	0x6
	.byte	0x1a
	.4byte	.LASF67
	.4byte	.LASF67
	.byte	0x9
	.byte	0xd
	.byte	0x5
	.byte	0x1b
	.4byte	.LASF68
	.4byte	.LASF68
	.byte	0x5
	.2byte	0x233
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF69
	.4byte	.LASF69
	.byte	0x8
	.byte	0xed
	.byte	0x6
	.byte	0x1a
	.4byte	.LASF70
	.4byte	.LASF70
	.byte	0x8
	.byte	0xfa
	.byte	0x6
	.byte	0x1a
	.4byte	.LASF71
	.4byte	.LASF71
	.byte	0x8
	.byte	0x8e
	.byte	0x6
	.byte	0x1a
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0xb
	.byte	0x21
	.byte	0x8
	.byte	0x1a
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0x8
	.byte	0xf4
	.byte	0x6
	.byte	0x1b
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0x5
	.2byte	0x212
	.byte	0x5
	.byte	0x1b
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0x5
	.2byte	0x2be
	.byte	0x5
	.byte	0x1b
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0x5
	.2byte	0x11d
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0xa
	.byte	0x9a
	.byte	0xd
	.byte	0x1a
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0x5
	.byte	0xee
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
	.byte	0x7
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
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
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xc
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
	.byte	0xd
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
	.byte	0
	.byte	0
	.byte	0x14
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
	.byte	0x15
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
	.byte	0x16
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
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
	.byte	0x19
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0x1
	.byte	0x13
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x1b
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
.LLST30:
	.4byte	.LVL154
	.4byte	.LVL155-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL155-1
	.4byte	.LVL157
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL157
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL154
	.4byte	.LVL155-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL155-1
	.4byte	.LVL160
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL160
	.4byte	.LFE6
	.2byte	0x2
	.byte	0x72
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL154
	.4byte	.LVL155-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL155-1
	.4byte	.LVL160
	.2byte	0x2
	.byte	0x91
	.byte	0x68
	.4byte	.LVL160
	.4byte	.LFE6
	.2byte	0x2
	.byte	0x72
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL154
	.4byte	.LVL155-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL155-1
	.4byte	.LVL160
	.2byte	0x2
	.byte	0x91
	.byte	0x64
	.4byte	.LVL160
	.4byte	.LFE6
	.2byte	0x2
	.byte	0x72
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL154
	.4byte	.LVL155-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL155-1
	.4byte	.LVL160
	.2byte	0x2
	.byte	0x72
	.byte	0
	.4byte	.LVL160
	.4byte	.LFE6
	.2byte	0x2
	.byte	0x72
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL157
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL159
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
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
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL45
	.4byte	.LVL47-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL47-1
	.4byte	.LVL47
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL61
	.4byte	.LVL63-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL63-1
	.4byte	.LVL63
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL6-1
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL43
	.4byte	.LVL47-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL47-1
	.4byte	.LVL47
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL58
	.4byte	.LVL63
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL6-1
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL42
	.4byte	.LVL47-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL47-1
	.4byte	.LVL47
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL55
	.4byte	.LVL63
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL6-1
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL41
	.4byte	.LVL47-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL47-1
	.4byte	.LVL47
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL56
	.4byte	.LVL63
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL6-1
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL40
	.4byte	.LVL47-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL47-1
	.4byte	.LVL47
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL57
	.4byte	.LVL63
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL77
	.4byte	.LVL107
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL111
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL79
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL94
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL105
	.4byte	.LVL106-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL106
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL109
	.4byte	.LVL110-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL110
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL112
	.4byte	.LVL113-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL113-1
	.4byte	.LVL115
	.2byte	0x3
	.byte	0x91
	.byte	0x98,0x7f
	.4byte	.LVL136
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL69
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL92
	.4byte	.LVL99
	.2byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL133
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL137
	.4byte	.LVL141
	.2byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.4byte	.LVL141
	.4byte	.LVL144
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0x3
	.byte	0x8b
	.byte	0x7b
	.byte	0x9f
	.4byte	.LVL145
	.4byte	.LVL146
	.2byte	0x3
	.byte	0x8b
	.byte	0x7c
	.byte	0x9f
	.4byte	.LVL146
	.4byte	.LVL148
	.2byte	0x3
	.byte	0x8b
	.byte	0x7b
	.byte	0x9f
	.4byte	.LVL152
	.4byte	.LFE5
	.2byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL115
	.4byte	.LVL136
	.2byte	0x7
	.byte	0x31
	.byte	0x86
	.byte	0x7f
	.byte	0x24
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL141
	.4byte	.LVL152
	.2byte	0x7
	.byte	0x31
	.byte	0x86
	.byte	0x7f
	.byte	0x24
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL7
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL9
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL47
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL63
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL47
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL63
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL15
	.4byte	.LVL16-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16-1
	.4byte	.LVL46
	.2byte	0x3
	.byte	0x91
	.byte	0xa0,0x7f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x3
	.byte	0x72
	.byte	0xa0,0x7f
	.4byte	.LVL47
	.4byte	.LVL62
	.2byte	0x3
	.byte	0x91
	.byte	0xa0,0x7f
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x3
	.byte	0x72
	.byte	0xa0,0x7f
	.4byte	.LVL63
	.4byte	.LVL99
	.2byte	0x3
	.byte	0x91
	.byte	0xa0,0x7f
	.4byte	.LVL107
	.4byte	.LVL111
	.2byte	0x3
	.byte	0x91
	.byte	0xa0,0x7f
	.4byte	.LVL137
	.4byte	.LVL148
	.2byte	0x3
	.byte	0x91
	.byte	0xa0,0x7f
	.4byte	.LVL152
	.4byte	.LFE5
	.2byte	0x3
	.byte	0x91
	.byte	0xa0,0x7f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18
	.4byte	.LVL46
	.2byte	0x3
	.byte	0x91
	.byte	0x98,0x7f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x3
	.byte	0x72
	.byte	0x98,0x7f
	.4byte	.LVL47
	.4byte	.LVL62
	.2byte	0x3
	.byte	0x91
	.byte	0x98,0x7f
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x3
	.byte	0x72
	.byte	0x98,0x7f
	.4byte	.LVL63
	.4byte	.LVL86
	.2byte	0x3
	.byte	0x91
	.byte	0x98,0x7f
	.4byte	.LVL107
	.4byte	.LVL111
	.2byte	0x3
	.byte	0x91
	.byte	0x98,0x7f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL20
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL47
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL63
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL107
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL47
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL63
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL107
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL137
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL152
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL25
	.4byte	.LVL26-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26-1
	.4byte	.LVL46
	.2byte	0x3
	.byte	0x91
	.byte	0xa8,0x7f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x3
	.byte	0x72
	.byte	0xa8,0x7f
	.4byte	.LVL47
	.4byte	.LVL62
	.2byte	0x3
	.byte	0x91
	.byte	0xa8,0x7f
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x3
	.byte	0x72
	.byte	0xa8,0x7f
	.4byte	.LVL63
	.4byte	.LFE5
	.2byte	0x3
	.byte	0x91
	.byte	0xa8,0x7f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL47
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL63
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL107
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL137
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL152
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL32
	.4byte	.LVL46
	.2byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x3
	.byte	0x72
	.byte	0xac,0x7f
	.4byte	.LVL47
	.4byte	.LVL62
	.2byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x3
	.byte	0x72
	.byte	0xac,0x7f
	.4byte	.LVL63
	.4byte	.LFE5
	.2byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL31
	.4byte	.LVL46
	.2byte	0x4
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x4
	.byte	0x72
	.byte	0xb4,0x7f
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL62
	.2byte	0x4
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x4
	.byte	0x72
	.byte	0xb4,0x7f
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL73
	.2byte	0x4
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL74-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL74-1
	.4byte	.LVL75
	.2byte	0x4
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL76-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL76-1
	.4byte	.LVL77
	.2byte	0x4
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x4
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x9f
	.4byte	.LVL108
	.4byte	.LVL110-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL110-1
	.4byte	.LVL111
	.2byte	0x4
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x9f
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL152
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL93
	.4byte	.LVL99
	.2byte	0xb
	.byte	0x87
	.byte	0
	.byte	0x8b
	.byte	0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x8b
	.byte	0
	.byte	0x1b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL34
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x3
	.byte	0x72
	.byte	0x9c,0x7f
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL48
	.4byte	.LVL62
	.2byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x3
	.byte	0x72
	.byte	0x9c,0x7f
	.4byte	.LVL63
	.4byte	.LVL99
	.2byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.4byte	.LVL107
	.4byte	.LVL111
	.2byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.4byte	.LVL137
	.4byte	.LVL148
	.2byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.4byte	.LVL152
	.4byte	.LFE5
	.2byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL115
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL147
	.4byte	.LVL152
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL34
	.4byte	.LVL99
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL111
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL115
	.4byte	.LVL124
	.2byte	0x3
	.byte	0x91
	.byte	0x98,0x7f
	.4byte	.LVL124
	.4byte	.LVL126
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL126
	.4byte	.LVL136
	.2byte	0x3
	.byte	0x91
	.byte	0x98,0x7f
	.4byte	.LVL137
	.4byte	.LVL148
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL148
	.4byte	.LVL152
	.2byte	0x3
	.byte	0x91
	.byte	0x98,0x7f
	.4byte	.LVL152
	.4byte	.LFE5
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL47
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL63
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL107
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL139
	.4byte	.LVL144
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL144
	.4byte	.LVL148
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL116
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL115
	.4byte	.LVL119
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x3
	.byte	0x7b
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL126
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL127
	.4byte	.LVL130
	.2byte	0x3
	.byte	0x91
	.byte	0xa0,0x7f
	.4byte	.LVL130
	.4byte	.LVL131-1
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL131-1
	.4byte	.LVL132
	.2byte	0x3
	.byte	0x91
	.byte	0xa0,0x7f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL129
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	0
	.4byte	0
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	0
	.4byte	0
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF11:
	.string	"size_t"
.LASF49:
	.string	"qcc74x_sec_pka_mutex_take"
.LASF83:
	.string	"m_words"
.LASF5:
	.string	"__uint8_t"
.LASF51:
	.string	"qcc74x_pka_movdat"
.LASF40:
	.string	"e_bitlen"
.LASF9:
	.string	"long long unsigned int"
.LASF31:
	.string	"words"
.LASF21:
	.string	"sub_idx"
.LASF15:
	.string	"mbedtls_mpi"
.LASF71:
	.string	"qcc74x_pka_mexp"
.LASF8:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF23:
	.string	"user_data"
.LASF26:
	.string	"wsize"
.LASF30:
	.string	"reg_size"
.LASF75:
	.string	"mbedtls_mpi_add_mpi"
.LASF4:
	.string	"long int"
.LASF38:
	.string	"PrimeN"
.LASF25:
	.string	"qcc74x_mpi_exp_mod_wo_lock"
.LASF44:
	.string	"cvt_back"
.LASF6:
	.string	"__uint32_t"
.LASF53:
	.string	"qcc74x_pka_mmul"
.LASF43:
	.string	"cleanup"
.LASF34:
	.string	"reg_size_E"
.LASF56:
	.string	"mpi_words_to_reg_size"
.LASF32:
	.string	"reg_size_N"
.LASF67:
	.string	"mpi_hensel_quad_mod_inv_prime_n"
.LASF10:
	.string	"unsigned int"
.LASF7:
	.string	"long unsigned int"
.LASF54:
	.string	"mbedtls_mpi_get_bit"
.LASF18:
	.string	"name"
.LASF55:
	.string	"mpi_words"
.LASF3:
	.string	"short unsigned int"
.LASF66:
	.string	"mbedtls_mpi_init"
.LASF74:
	.string	"mbedtls_mpi_read_binary"
.LASF24:
	.string	"mbedtls_mpi_exp_mod"
.LASF70:
	.string	"qcc74x_pka_gf2mont"
.LASF80:
	.string	"./components/crypto/mbedtls/port/hw_acc/bignum_alt.c"
.LASF79:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF50:
	.string	"qcc74x_sec_pka_mutex_give"
.LASF73:
	.string	"qcc74x_pka_read"
.LASF46:
	.string	"bitstring_val"
.LASF29:
	.string	"n_words"
.LASF47:
	.string	"cur_bit"
.LASF19:
	.string	"reg_base"
.LASF27:
	.string	"a_words"
.LASF28:
	.string	"e_words"
.LASF61:
	.string	"mbedtls_mpi_lset"
.LASF14:
	.string	"mbedtls_mpi_uint"
.LASF48:
	.string	"_Bool"
.LASF1:
	.string	"unsigned char"
.LASF2:
	.string	"short int"
.LASF68:
	.string	"mbedtls_mpi_write_binary"
.LASF62:
	.string	"mbedtls_mpi_grow"
.LASF52:
	.string	"qcc74x_pka_msqr"
.LASF81:
	.string	"./examples/usb_cam_stream/build_wsl/build_out/components/crypto/mbedtls"
.LASF39:
	.string	"reg_idx_E"
.LASF36:
	.string	"d_reg_size"
.LASF64:
	.string	"qcc74x_device_get_by_name"
.LASF13:
	.string	"uint32_t"
.LASF20:
	.string	"irq_num"
.LASF42:
	.string	"first"
.LASF60:
	.string	"mbedtls_mpi_cmp_int"
.LASF41:
	.string	"e_bit_idx"
.LASF16:
	.string	"char"
.LASF78:
	.string	"mbedtls_mpi_free"
.LASF69:
	.string	"qcc74x_pka_write"
.LASF35:
	.string	"words_E"
.LASF77:
	.string	"mbedtls_free"
.LASF76:
	.string	"mbedtls_mpi_copy"
.LASF22:
	.string	"dev_type"
.LASF58:
	.string	"mbedtls_mpi_bitlen"
.LASF57:
	.string	"mpi_reg_size_to_words"
.LASF82:
	.string	"bignum_pka"
.LASF17:
	.string	"qcc74x_device_s"
.LASF63:
	.string	"mbedtls_calloc"
.LASF72:
	.string	"memset"
.LASF45:
	.string	"bitstring_len"
.LASF12:
	.string	"uint8_t"
.LASF59:
	.string	"mbedtls_mpi_exp_mod_original"
.LASF33:
	.string	"words_N"
.LASF37:
	.string	"PrimeN_new"
.LASF65:
	.string	"qcc74x_pka_init"
	.ident	"GCC: (GNU) 10.4.0"
