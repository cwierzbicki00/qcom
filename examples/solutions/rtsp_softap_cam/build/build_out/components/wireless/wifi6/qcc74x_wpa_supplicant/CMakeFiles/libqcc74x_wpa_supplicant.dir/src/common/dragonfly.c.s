	.file	"dragonfly.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.dragonfly_get_rand_2_to_r_1,"ax",@progbits
	.align	1
	.type	dragonfly_get_rand_2_to_r_1, @function
dragonfly_get_rand_2_to_r_1:
.LFB122:
	.file 1 ".\\components\\wireless\\wifi6\\qcc74x_wpa_supplicant\\src\\common\\dragonfly.c"
	.loc 1 184 1
	.cfi_startproc
.LVL0:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 184 1 is_stmt 0
	mv	s0,a0
	.loc 1 185 2 is_stmt 1
	.loc 1 185 9 is_stmt 0
	call	crypto_bignum_rand
.LVL1:
	.loc 1 186 31
	beq	a0,zero,.L2
.L4:
	li	a0,0
.L1:
	.loc 1 188 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL2:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL3:
.L2:
	.cfi_restore_state
	.loc 1 186 4 discriminator 1
	mv	a0,s0
	call	crypto_bignum_is_zero
.LVL4:
	.loc 1 185 45 discriminator 1
	bne	a0,zero,.L4
.LVL5:
.LBB22:
.LBB23:
	.loc 1 187 4
	mv	a0,s0
	call	crypto_bignum_is_one
.LVL6:
	.loc 1 186 31
	seqz	a0,a0
.LVL7:
.LBE23:
.LBE22:
	j	.L1
	.cfi_endproc
.LFE122:
	.size	dragonfly_get_rand_2_to_r_1, .-dragonfly_get_rand_2_to_r_1
	.section	.text.dragonfly_suitable_group,"ax",@progbits
	.align	1
	.globl	dragonfly_suitable_group
	.type	dragonfly_suitable_group, @function
dragonfly_suitable_group:
.LFB117:
	.loc 1 19 1 is_stmt 1
	.cfi_startproc
.LVL8:
	.loc 1 28 2
	.loc 1 28 36 is_stmt 0
	addi	a3,a0,-19
	.loc 1 28 51
	li	a4,2
	.loc 1 19 1
	mv	a5,a0
	.loc 1 28 51
	bleu	a3,a4,.L8
	.loc 1 28 51 discriminator 2
	li	a0,0
.LVL9:
	bne	a1,zero,.L6
	.loc 1 30 47
	addi	a5,a5,-15
.LVL10:
	.loc 1 29 14
	sltiu	a0,a5,4
	ret
.LVL11:
.L8:
	.loc 1 28 51
	li	a0,1
.LVL12:
.L6:
	.loc 1 31 1
	ret
	.cfi_endproc
.LFE117:
	.size	dragonfly_suitable_group, .-dragonfly_suitable_group
	.section	.text.dragonfly_min_pwe_loop_iter,"ax",@progbits
	.align	1
	.globl	dragonfly_min_pwe_loop_iter
	.type	dragonfly_min_pwe_loop_iter, @function
dragonfly_min_pwe_loop_iter:
.LFB118:
	.loc 1 35 1 is_stmt 1
	.cfi_startproc
.LVL13:
	.loc 1 36 2
	.loc 1 36 33 is_stmt 0
	addi	a4,a0,-22
	.loc 1 36 5
	li	a5,2
	bleu	a4,a5,.L12
	.loc 1 42 2 is_stmt 1
	.loc 1 42 5 is_stmt 0
	li	a5,18
	.loc 1 39 10
	li	a4,40
	.loc 1 42 5
	bgtu	a0,a5,.L10
	li	a5,507904
	addi	a5,a5,38
	srl	a5,a5,a0
	andi	a5,a5,1
	.loc 1 45 10
	li	a4,1
	.loc 1 42 5
	bne	a5,zero,.L10
.L12:
	.loc 1 39 10
	li	a4,40
.L10:
	.loc 1 50 1
	mv	a0,a4
.LVL14:
	ret
	.cfi_endproc
.LFE118:
	.size	dragonfly_min_pwe_loop_iter, .-dragonfly_min_pwe_loop_iter
	.section	.text.dragonfly_get_random_qr_qnr,"ax",@progbits
	.align	1
	.globl	dragonfly_get_random_qr_qnr
	.type	dragonfly_get_random_qr_qnr, @function
dragonfly_get_random_qr_qnr:
.LFB119:
	.loc 1 56 1 is_stmt 1
	.cfi_startproc
.LVL15:
	.loc 1 57 2
	.loc 1 56 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	sw	s5,4(sp)
	sw	ra,28(sp)
	sw	s2,16(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	.loc 1 57 13
	sw	zero,0(a2)
	.loc 1 56 1
	mv	s3,a0
	mv	s1,a1
	mv	s0,a2
	.loc 1 57 6
	sw	zero,0(a1)
	.loc 1 59 2 is_stmt 1
	.loc 1 59 8
.LBB24:
	.loc 1 70 6 is_stmt 0
	li	s4,1
	.loc 1 72 11
	li	s5,-1
.LVL16:
.L17:
	.loc 1 60 3 is_stmt 1
	.loc 1 61 3
	.loc 1 63 3
	.loc 1 63 9 is_stmt 0
	call	crypto_bignum_init
.LVL17:
	mv	s2,a0
.LVL18:
	.loc 1 64 3 is_stmt 1
	.loc 1 64 6 is_stmt 0
	beq	a0,zero,.L18
	.loc 1 64 15 discriminator 1
	mv	a1,s3
	call	crypto_bignum_rand
.LVL19:
	.loc 1 64 12 discriminator 1
	bge	a0,zero,.L19
.L18:
	.loc 1 65 4 is_stmt 1
	li	a1,0
	mv	a0,s2
	call	crypto_bignum_deinit
.LVL20:
	.loc 1 66 4
.L20:
.LBE24:
	.loc 1 78 2
	.loc 1 78 6 is_stmt 0
	lw	a0,0(s1)
	.loc 1 78 5
	beq	a0,zero,.L26
	.loc 1 78 10 discriminator 1
	lw	a4,0(s0)
	.loc 1 79 10 discriminator 1
	li	a5,0
	.loc 1 78 10 discriminator 1
	bne	a4,zero,.L16
.L26:
	.loc 1 80 2 is_stmt 1
	li	a1,0
	call	crypto_bignum_deinit
.LVL21:
	.loc 1 81 2
	lw	a0,0(s0)
	li	a1,0
	call	crypto_bignum_deinit
.LVL22:
	.loc 1 82 2
	.loc 1 82 13 is_stmt 0
	sw	zero,0(s0)
	.loc 1 82 6
	sw	zero,0(s1)
	.loc 1 83 2 is_stmt 1
	.loc 1 83 9 is_stmt 0
	li	a5,-1
.L16:
	.loc 1 84 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL23:
	lw	s1,20(sp)
	.cfi_restore 9
.LVL24:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL25:
	lw	s3,12(sp)
	.cfi_restore 19
.LVL26:
	lw	s4,8(sp)
	.cfi_restore 20
	lw	s5,4(sp)
	.cfi_restore 21
	mv	a0,a5
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL27:
.L19:
	.cfi_restore_state
.LBB25:
	.loc 1 69 3 is_stmt 1
	.loc 1 69 9 is_stmt 0
	mv	a1,s3
	mv	a0,s2
	call	crypto_bignum_legendre
.LVL28:
	.loc 1 70 3 is_stmt 1
	.loc 1 70 6 is_stmt 0
	bne	a0,s4,.L21
	.loc 1 70 16 discriminator 1
	lw	a5,0(s1)
	bne	a5,zero,.L22
	.loc 1 71 4 is_stmt 1
	.loc 1 71 8 is_stmt 0
	sw	s2,0(s1)
.LBE25:
	.loc 1 59 8 is_stmt 1
.LVL29:
.L23:
	.loc 1 59 16 is_stmt 0 discriminator 1
	lw	a5,0(s0)
	beq	a5,zero,.L17
	j	.L20
.LVL30:
.L21:
.LBB26:
	.loc 1 72 8 is_stmt 1
	.loc 1 72 11 is_stmt 0
	bne	a0,s5,.L22
	.loc 1 72 22 discriminator 1
	lw	a5,0(s0)
	bne	a5,zero,.L22
	.loc 1 73 4 is_stmt 1
	.loc 1 73 9 is_stmt 0
	sw	s2,0(s0)
.LVL31:
.L24:
.LBE26:
	.loc 1 59 8 is_stmt 1
	lw	a5,0(s1)
	bne	a5,zero,.L23
	j	.L17
.LVL32:
.L22:
.LBB27:
	.loc 1 75 4
	li	a1,0
	mv	a0,s2
.LVL33:
	call	crypto_bignum_deinit
.LVL34:
	j	.L24
.LBE27:
	.cfi_endproc
.LFE119:
	.size	dragonfly_get_random_qr_qnr, .-dragonfly_get_random_qr_qnr
	.section	.rodata.dragonfly_is_quadratic_residue_blind.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"\001"
	.section	.text.dragonfly_is_quadratic_residue_blind,"ax",@progbits
	.align	1
	.globl	dragonfly_is_quadratic_residue_blind
	.type	dragonfly_is_quadratic_residue_blind, @function
dragonfly_is_quadratic_residue_blind:
.LFB121:
	.loc 1 112 1
	.cfi_startproc
.LVL35:
	.loc 1 113 2
	.loc 1 114 2
	.loc 1 115 2
	.loc 1 116 2
	.loc 1 117 2
	.loc 1 118 2
	.loc 1 120 2
	.loc 1 112 1 is_stmt 0
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sw	ra,124(sp)
	sw	s0,120(sp)
	sw	s1,116(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a0
	sw	s2,112(sp)
	sw	s3,108(sp)
	sw	s4,104(sp)
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	mv	s3,a3
	sw	s5,100(sp)
	sw	s6,96(sp)
	sw	s7,92(sp)
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.loc 1 112 1
	mv	s6,a1
	mv	s7,a2
	.loc 1 120 10
	call	crypto_ec_get_prime
.LVL36:
	mv	s5,a0
.LVL37:
	.loc 1 121 2 is_stmt 1
	.loc 1 121 14 is_stmt 0
	mv	a0,s0
.LVL38:
	call	crypto_ec_prime_len
.LVL39:
	mv	s4,a0
.LVL40:
	.loc 1 132 2 is_stmt 1
.LBB47:
.LBB48:
	.loc 1 90 2
	.loc 1 92 2
	.loc 1 92 8 is_stmt 0
	call	crypto_bignum_init
.LVL41:
	mv	s0,a0
.LVL42:
	.loc 1 93 2 is_stmt 1
	.loc 1 93 8 is_stmt 0
	call	crypto_bignum_init
.LVL43:
	mv	s2,a0
.LVL44:
	.loc 1 94 2 is_stmt 1
	.loc 1 94 8 is_stmt 0
	lui	a0,%hi(.LC0)
.LVL45:
	li	a1,1
	addi	a0,a0,%lo(.LC0)
	call	crypto_bignum_init_set
.LVL46:
	mv	s1,a0
.LVL47:
	.loc 1 95 2 is_stmt 1
	.loc 1 95 5 is_stmt 0
	bne	s0,zero,.L43
.L45:
	.loc 1 99 3 is_stmt 1
	mv	a0,s0
	li	a1,0
	call	crypto_bignum_deinit
.LVL48:
	.loc 1 100 3
	.loc 1 100 7 is_stmt 0
	li	s0,0
.LVL49:
.L44:
	.loc 1 103 2 is_stmt 1
	li	a1,0
	mv	a0,s2
	call	crypto_bignum_deinit
.LVL50:
	.loc 1 104 2
	mv	a0,s1
	li	a1,0
	call	crypto_bignum_deinit
.LVL51:
	.loc 1 105 2
.LBE48:
.LBE47:
	.loc 1 133 2
	.loc 1 134 10 is_stmt 0
	li	s1,-1
	.loc 1 133 5
	beq	s0,zero,.L42
	.loc 1 136 2 is_stmt 1
	.loc 1 136 8 is_stmt 0
	call	crypto_bignum_init
.LVL52:
	mv	s2,a0
.LVL53:
	.loc 1 137 2 is_stmt 1
	.loc 1 137 5 is_stmt 0
	bne	a0,zero,.L47
.LVL54:
.L49:
	.loc 1 114 13
	li	s1,-1
	.loc 1 113 34
	li	s4,0
.LVL55:
.L48:
	.loc 1 175 2 is_stmt 1
	li	a1,1
	mv	a0,s2
	call	crypto_bignum_deinit
.LVL56:
	.loc 1 176 2
	li	a1,1
	mv	a0,s0
	call	crypto_bignum_deinit
.LVL57:
	.loc 1 177 2
	li	a1,1
	mv	a0,s4
	call	crypto_bignum_deinit
.LVL58:
	.loc 1 178 2
.L42:
	.loc 1 179 1 is_stmt 0
	lw	ra,124(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,120(sp)
	.cfi_restore 8
.LVL59:
	lw	s2,112(sp)
	.cfi_restore 18
	lw	s3,108(sp)
	.cfi_restore 19
	lw	s4,104(sp)
	.cfi_restore 20
	lw	s5,100(sp)
	.cfi_restore 21
.LVL60:
	lw	s6,96(sp)
	.cfi_restore 22
.LVL61:
	lw	s7,92(sp)
	.cfi_restore 23
.LVL62:
	mv	a0,s1
	lw	s1,116(sp)
	.cfi_restore 9
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
	jr	ra
.LVL63:
.L43:
	.cfi_restore_state
.LBB50:
.LBB49:
	.loc 1 95 11
	beq	s2,zero,.L45
	.loc 1 95 19
	beq	a0,zero,.L45
	.loc 1 96 6
	mv	a1,a0
	mv	a2,s2
	mv	a0,s5
	call	crypto_bignum_sub
.LVL64:
	.loc 1 95 27
	blt	a0,zero,.L45
	.loc 1 97 6
	mv	a1,s2
	mv	a0,s0
	call	crypto_bignum_rand
.LVL65:
	.loc 1 96 45
	blt	a0,zero,.L45
	.loc 1 98 6
	mv	a2,s0
	mv	a1,s1
	mv	a0,s0
	call	crypto_bignum_add
.LVL66:
	.loc 1 97 39
	bge	a0,zero,.L44
	j	.L45
.LVL67:
.L47:
.LBE49:
.LBE50:
	.loc 1 138 6 discriminator 1
	mv	a3,a0
	mv	a2,s5
	mv	a1,s0
	mv	a0,s3
.LVL68:
	call	crypto_bignum_mulmod
.LVL69:
	.loc 1 137 11 discriminator 1
	blt	a0,zero,.L49
	.loc 1 139 6
	mv	a3,s2
	mv	a2,s5
	mv	a1,s0
	mv	a0,s2
	call	crypto_bignum_mulmod
.LVL70:
	.loc 1 138 51
	blt	a0,zero,.L49
	.loc 1 155 2 is_stmt 1
	.loc 1 155 28 is_stmt 0
	mv	a0,s0
	call	crypto_bignum_is_odd
.LVL71:
.LBB51:
.LBB52:
	.file 2 ".\\components\\wireless\\wifi6\\qcc74x_wpa_supplicant\\src/utils/const_time.h"
	.loc 2 43 2 is_stmt 1
.LBB53:
.LBB54:
	.loc 2 34 2
.LBE54:
.LBE53:
	.loc 2 43 29 is_stmt 0
	not	s3,a0
.LVL72:
	.loc 2 43 41
	addi	a0,a0,-1
.LVL73:
	.loc 2 43 9
	and	a0,s3,a0
.LVL74:
.LBB56:
.LBB55:
	.loc 2 34 40
	srai	s3,a0,31
.LVL75:
.LBE55:
.LBE56:
.LBE52:
.LBE51:
	.loc 1 156 2 is_stmt 1
	andi	a2,s3,0xff
.LVL76:
.LBB57:
.LBB58:
	.loc 2 167 9 is_stmt 0
	li	a5,0
	addi	a0,sp,12
.LVL77:
.L50:
	.loc 2 167 14 is_stmt 1
	.loc 2 167 2 is_stmt 0
	bne	s4,a5,.L51
.LVL78:
.LBE58:
.LBE57:
	.loc 1 157 2 is_stmt 1
	.loc 1 157 14 is_stmt 0
	mv	a1,s4
	call	crypto_bignum_init_set
.LVL79:
	mv	s4,a0
.LVL80:
	.loc 1 158 2 is_stmt 1
	.loc 1 158 5 is_stmt 0
	beq	a0,zero,.L49
	.loc 1 159 6 discriminator 1
	mv	a1,a0
	mv	a3,s2
	mv	a2,s5
	mv	a0,s2
.LVL81:
	call	crypto_bignum_mulmod
.LVL82:
	.loc 1 114 13 discriminator 1
	li	s1,-1
	.loc 1 158 17 discriminator 1
	blt	a0,zero,.L48
	.loc 1 162 2 is_stmt 1
.LVL83:
	.loc 2 117 2
	.loc 2 103 2
	.loc 1 165 8 is_stmt 0
	mv	a1,s5
	mv	a0,s2
	call	crypto_bignum_legendre
.LVL84:
	.loc 1 166 5
	li	a5,-2
	andi	s3,s3,-2
.LVL85:
	.loc 1 165 2 is_stmt 1
	.loc 1 166 2
	.loc 1 166 5 is_stmt 0
	beq	a0,a5,.L48
	.loc 1 172 2 is_stmt 1
	xor	a0,a0,s3
.LVL86:
.LBB61:
.LBB62:
	.loc 2 50 2
.LBB63:
.LBB64:
	.loc 2 43 2
.LBE64:
.LBE63:
.LBE62:
.LBE61:
	.loc 2 34 2
	.loc 1 173 2
.LBB68:
.LBB69:
	.loc 2 117 2
.LBE69:
.LBE68:
	.loc 2 103 2
.LBB71:
.LBB67:
	.loc 2 50 9 is_stmt 0
	xori	s1,a0,1
.LBB66:
.LBB65:
	.loc 2 43 41
	addi	s1,s1,-1
	.loc 2 43 9
	xori	a0,a0,-2
.LVL87:
	and	s1,s1,a0
.LVL88:
.LBE65:
.LBE66:
.LBE67:
.LBE71:
.LBB72:
.LBB70:
	.loc 2 117 9
	srli	s1,s1,31
.LVL89:
	j	.L48
.LVL90:
.L51:
.LBE70:
.LBE72:
.LBB73:
.LBB59:
	.loc 2 168 3 is_stmt 1
	.loc 2 168 12 is_stmt 0
	lrbu	a3,s6,a5,0
.LVL91:
.LBE59:
.LBE73:
	.loc 2 131 2 is_stmt 1
	.loc 2 103 2
.LBB74:
.LBB60:
	.loc 2 168 10 is_stmt 0
	lrbu	a4,s7,a5,0
	xor	a4,a3,a4
	and	a4,a2,a4
	xor	a4,a3,a4
	srb	a4,a0,a5,0
	.loc 2 167 23 is_stmt 1
	.loc 2 167 24 is_stmt 0
	addi	a5,a5,1
.LVL92:
	j	.L50
.LBE60:
.LBE74:
	.cfi_endproc
.LFE121:
	.size	dragonfly_is_quadratic_residue_blind, .-dragonfly_is_quadratic_residue_blind
	.section	.text.dragonfly_generate_scalar,"ax",@progbits
	.align	1
	.globl	dragonfly_generate_scalar
	.type	dragonfly_generate_scalar, @function
dragonfly_generate_scalar:
.LFB123:
	.loc 1 195 1 is_stmt 1
	.cfi_startproc
.LVL93:
	.loc 1 196 2
	.loc 1 200 2
	.loc 1 200 18
	.loc 1 195 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 1, -4
	.loc 1 195 1
	mv	s2,a0
	mv	s3,a1
	mv	s4,a2
	mv	s0,a3
	li	s1,100
.LVL94:
.L67:
	.loc 1 201 3 is_stmt 1
	.loc 1 201 7 is_stmt 0
	mv	a1,s2
	mv	a0,s3
	call	dragonfly_get_rand_2_to_r_1
.LVL95:
	.loc 1 201 6
	bne	a0,zero,.L66
.L69:
	.loc 1 200 31 is_stmt 1
.LVL96:
	.loc 1 200 18
	.loc 1 200 2 is_stmt 0
	addi	s1,s1,-1
.LVL97:
	bne	s1,zero,.L67
	.loc 1 214 9
	li	a0,-1
.LVL98:
.L65:
	.loc 1 215 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL99:
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
.LVL100:
	lw	s3,12(sp)
	.cfi_restore 19
.LVL101:
	lw	s4,8(sp)
	.cfi_restore 20
.LVL102:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL103:
.L66:
	.cfi_restore_state
	.loc 1 202 7 discriminator 1
	mv	a1,s2
	mv	a0,s4
	call	dragonfly_get_rand_2_to_r_1
.LVL104:
	.loc 1 201 49 discriminator 1
	beq	a0,zero,.L69
	.loc 1 203 7
	mv	a2,s0
	mv	a1,s4
	mv	a0,s3
	call	crypto_bignum_add
.LVL105:
	.loc 1 202 49
	bne	a0,zero,.L69
	.loc 1 204 7
	mv	a2,s0
	mv	a1,s2
	mv	a0,s0
	call	crypto_bignum_mod
.LVL106:
	.loc 1 203 52
	bne	a0,zero,.L69
	.loc 1 205 8
	mv	a0,s0
	call	crypto_bignum_is_zero
.LVL107:
	.loc 1 204 53
	bne	a0,zero,.L69
	.loc 1 206 8
	mv	a0,s0
	call	crypto_bignum_is_one
.LVL108:
	.loc 1 205 38
	bne	a0,zero,.L69
	j	.L65
	.cfi_endproc
.LFE123:
	.size	dragonfly_generate_scalar, .-dragonfly_generate_scalar
	.section	.text.dragonfly_sqrt,"ax",@progbits
	.align	1
	.globl	dragonfly_sqrt
	.type	dragonfly_sqrt, @function
dragonfly_sqrt:
.LFB124:
	.loc 1 221 1 is_stmt 1
	.cfi_startproc
.LVL109:
	.loc 1 222 2
	.loc 1 223 2
	.loc 1 224 2
	.loc 1 225 2
	.loc 1 226 2
	.loc 1 230 2
	.loc 1 221 1 is_stmt 0
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sw	ra,108(sp)
	sw	s0,104(sp)
	sw	s1,100(sp)
	sw	s2,96(sp)
	sw	s3,92(sp)
	sw	s4,88(sp)
	sw	s5,84(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.loc 1 221 1
	mv	s4,a1
	mv	s5,a2
	mv	s0,a0
	.loc 1 230 10
	call	crypto_ec_get_prime
.LVL110:
	mv	s1,a0
.LVL111:
	.loc 1 231 2 is_stmt 1
	.loc 1 231 14 is_stmt 0
	mv	a0,s0
	call	crypto_ec_prime_len
.LVL112:
	mv	s3,a0
.LVL113:
	.loc 1 232 2 is_stmt 1
	.loc 1 232 8 is_stmt 0
	call	crypto_bignum_init
.LVL114:
	mv	s0,a0
.LVL115:
	.loc 1 233 2 is_stmt 1
	.loc 1 233 8 is_stmt 0
	li	a0,1
	call	crypto_bignum_init_uint
.LVL116:
	mv	s2,a0
.LVL117:
	.loc 1 235 2 is_stmt 1
	.loc 1 235 6 is_stmt 0
	mv	a3,s3
	li	a2,66
	addi	a1,sp,12
	mv	a0,s1
.LVL118:
	call	crypto_bignum_to_bin
.LVL119:
	.loc 1 235 5
	bge	a0,zero,.L76
.L78:
	.loc 1 244 7
	li	s1,-1
.LVL120:
.L77:
	.loc 1 246 2 is_stmt 1
	mv	a0,s0
	li	a1,0
	call	crypto_bignum_deinit
.LVL121:
	.loc 1 247 2
	mv	a0,s2
	li	a1,0
	call	crypto_bignum_deinit
.LVL122:
	.loc 1 248 2
	.loc 1 249 1 is_stmt 0
	lw	ra,108(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,104(sp)
	.cfi_restore 8
.LVL123:
	lw	s2,96(sp)
	.cfi_restore 18
.LVL124:
	lw	s3,92(sp)
	.cfi_restore 19
.LVL125:
	lw	s4,88(sp)
	.cfi_restore 20
.LVL126:
	lw	s5,84(sp)
	.cfi_restore 21
.LVL127:
	mv	a0,s1
	lw	s1,100(sp)
	.cfi_restore 9
.LVL128:
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
.LVL129:
.L76:
	.cfi_restore_state
	.loc 1 237 16
	addi	a5,sp,11
	.loc 1 236 21
	lrbu	a5,a5,s3,0
	li	a4,3
	andi	a5,a5,3
	bne	a5,a4,.L78
	.loc 1 237 45
	beq	s0,zero,.L78
	.loc 1 238 11
	beq	s2,zero,.L78
	.loc 1 240 6 discriminator 1
	mv	a2,s0
	mv	a1,s2
	mv	a0,s1
	call	crypto_bignum_add
.LVL130:
	.loc 1 238 19 discriminator 1
	blt	a0,zero,.L78
	.loc 1 241 6
	mv	a2,s0
	li	a1,2
	mv	a0,s0
	call	crypto_bignum_rshift
.LVL131:
	.loc 1 240 45
	blt	a0,zero,.L78
	.loc 1 243 6
	mv	a2,s1
	mv	a3,s5
	mv	a1,s0
	mv	a0,s4
	call	crypto_bignum_exptmod
.LVL132:
	.loc 1 241 44
	srai	s1,a0,31
.LVL133:
	j	.L77
	.cfi_endproc
.LFE124:
	.size	dragonfly_sqrt, .-dragonfly_sqrt
	.text
.Letext0:
	.file 3 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\machine\\_default_types.h"
	.file 4 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\sys\\_stdint.h"
	.file 5 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\lib\\gcc\\riscv64-unknown-elf\\10.4.0\\include\\stddef.h"
	.file 6 ".\\components\\wireless\\wifi6\\qcc74x_wpa_supplicant\\src/crypto/crypto.h"
	.file 7 ".\\components\\wireless\\wifi6\\qcc74x_wpa_supplicant\\src/utils/common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xc4e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF64
	.byte	0xc
	.4byte	.LASF65
	.4byte	.LASF66
	.4byte	.Ldebug_ranges0+0xc0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF9
	.byte	0x3
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
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF11
	.byte	0x5
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
	.byte	0x7
	.byte	0x95
	.byte	0x11
	.4byte	0x77
	.byte	0x6
	.4byte	0x9d
	.byte	0x7
	.byte	0x4
	.4byte	0x9d
	.byte	0x8
	.4byte	.LASF19
	.byte	0x1
	.byte	0xdb
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB124
	.4byte	.LFE124-.LFB124
	.byte	0x1
	.byte	0x9c
	.4byte	0x25b
	.byte	0x9
	.string	"ec"
	.byte	0x1
	.byte	0xdb
	.byte	0x26
	.4byte	0x260
	.4byte	.LLST43
	.byte	0x9
	.string	"val"
	.byte	0x1
	.byte	0xdb
	.byte	0x46
	.4byte	0x270
	.4byte	.LLST44
	.byte	0x9
	.string	"res"
	.byte	0x1
	.byte	0xdc
	.byte	0x1c
	.4byte	0x276
	.4byte	.LLST45
	.byte	0xa
	.4byte	.LASF14
	.byte	0x1
	.byte	0xde
	.byte	0x1e
	.4byte	0x270
	.4byte	.LLST46
	.byte	0xb
	.string	"tmp"
	.byte	0x1
	.byte	0xdf
	.byte	0x18
	.4byte	0x276
	.4byte	.LLST47
	.byte	0xb
	.string	"one"
	.byte	0x1
	.byte	0xdf
	.byte	0x1e
	.4byte	0x276
	.4byte	.LLST48
	.byte	0xb
	.string	"ret"
	.byte	0x1
	.byte	0xe0
	.byte	0x6
	.4byte	0x69
	.4byte	.LLST49
	.byte	0xc
	.4byte	.LASF15
	.byte	0x1
	.byte	0xe1
	.byte	0x5
	.4byte	0x27c
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0xa
	.4byte	.LASF16
	.byte	0x1
	.byte	0xe2
	.byte	0x9
	.4byte	0x83
	.4byte	.LLST50
	.byte	0xd
	.4byte	.LVL110
	.4byte	0xb67
	.4byte	0x170
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LVL112
	.4byte	0xb74
	.4byte	0x184
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LVL114
	.4byte	0xb81
	.byte	0xd
	.4byte	.LVL116
	.4byte	0xb8e
	.4byte	0x1a0
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0xd
	.4byte	.LVL119
	.4byte	0xb9b
	.4byte	0x1c7
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0xe
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x42
	.byte	0xe
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LVL121
	.4byte	0xba8
	.4byte	0x1e0
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0xd
	.4byte	.LVL122
	.4byte	0xba8
	.4byte	0x1f9
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0xd
	.4byte	.LVL130
	.4byte	0xbb5
	.4byte	0x219
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LVL131
	.4byte	0xbc2
	.4byte	0x238
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0xe
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LVL132
	.4byte	0xbcf
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LASF17
	.byte	0x7
	.byte	0x4
	.4byte	0x25b
	.byte	0x11
	.4byte	.LASF18
	.byte	0x6
	.4byte	0x266
	.byte	0x7
	.byte	0x4
	.4byte	0x26b
	.byte	0x7
	.byte	0x4
	.4byte	0x266
	.byte	0x12
	.4byte	0x9d
	.4byte	0x28c
	.byte	0x13
	.4byte	0x70
	.byte	0x41
	.byte	0
	.byte	0x8
	.4byte	.LASF20
	.byte	0x1
	.byte	0xbf
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB123
	.4byte	.LFE123-.LFB123
	.byte	0x1
	.byte	0x9c
	.4byte	0x38f
	.byte	0x14
	.4byte	.LASF21
	.byte	0x1
	.byte	0xbf
	.byte	0x3b
	.4byte	0x270
	.4byte	.LLST38
	.byte	0x14
	.4byte	.LASF22
	.byte	0x1
	.byte	0xc0
	.byte	0x20
	.4byte	0x276
	.4byte	.LLST39
	.byte	0x14
	.4byte	.LASF23
	.byte	0x1
	.byte	0xc1
	.byte	0x20
	.4byte	0x276
	.4byte	.LLST40
	.byte	0x14
	.4byte	.LASF24
	.byte	0x1
	.byte	0xc2
	.byte	0x20
	.4byte	0x276
	.4byte	.LLST41
	.byte	0xa
	.4byte	.LASF25
	.byte	0x1
	.byte	0xc4
	.byte	0x6
	.4byte	0x69
	.4byte	.LLST42
	.byte	0xd
	.4byte	.LVL95
	.4byte	0x38f
	.4byte	0x310
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LVL104
	.4byte	0x38f
	.4byte	0x32a
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LVL105
	.4byte	0xbb5
	.4byte	0x34a
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LVL106
	.4byte	0xbdc
	.4byte	0x36a
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LVL107
	.4byte	0xbe9
	.4byte	0x37e
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LVL108
	.4byte	0xbf6
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LASF31
	.byte	0x1
	.byte	0xb6
	.byte	0xc
	.4byte	0x69
	.byte	0x1
	.4byte	0x3b9
	.byte	0x16
	.string	"val"
	.byte	0x1
	.byte	0xb6
	.byte	0x3e
	.4byte	0x276
	.byte	0x17
	.4byte	.LASF21
	.byte	0x1
	.byte	0xb7
	.byte	0x28
	.4byte	0x270
	.byte	0
	.byte	0x8
	.4byte	.LASF26
	.byte	0x1
	.byte	0x6d
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB121
	.4byte	.LFE121-.LFB121
	.byte	0x1
	.byte	0x9c
	.4byte	0x7d4
	.byte	0x9
	.string	"ec"
	.byte	0x1
	.byte	0x6d
	.byte	0x3c
	.4byte	0x260
	.4byte	.LLST11
	.byte	0x9
	.string	"qr"
	.byte	0x1
	.byte	0x6e
	.byte	0x11
	.4byte	0x7d4
	.4byte	.LLST12
	.byte	0x9
	.string	"qnr"
	.byte	0x1
	.byte	0x6e
	.byte	0x1f
	.4byte	0x7d4
	.4byte	.LLST13
	.byte	0x9
	.string	"val"
	.byte	0x1
	.byte	0x6f
	.byte	0x23
	.4byte	0x270
	.4byte	.LLST14
	.byte	0xb
	.string	"r"
	.byte	0x1
	.byte	0x71
	.byte	0x18
	.4byte	0x276
	.4byte	.LLST15
	.byte	0xb
	.string	"num"
	.byte	0x1
	.byte	0x71
	.byte	0x1c
	.4byte	0x276
	.4byte	.LLST16
	.byte	0xa
	.4byte	.LASF27
	.byte	0x1
	.byte	0x71
	.byte	0x22
	.4byte	0x276
	.4byte	.LLST17
	.byte	0xa
	.4byte	.LASF28
	.byte	0x1
	.byte	0x72
	.byte	0x6
	.4byte	0x69
	.4byte	.LLST18
	.byte	0xb
	.string	"res"
	.byte	0x1
	.byte	0x72
	.byte	0xd
	.4byte	0x69
	.4byte	.LLST19
	.byte	0xc
	.4byte	.LASF29
	.byte	0x1
	.byte	0x73
	.byte	0x5
	.4byte	0x27c
	.byte	0x3
	.byte	0x91
	.byte	0x8c,0x7f
	.byte	0xa
	.4byte	.LASF14
	.byte	0x1
	.byte	0x74
	.byte	0x1e
	.4byte	0x270
	.4byte	.LLST20
	.byte	0xa
	.4byte	.LASF16
	.byte	0x1
	.byte	0x75
	.byte	0x9
	.4byte	0x83
	.4byte	.LLST21
	.byte	0xa
	.4byte	.LASF30
	.byte	0x1
	.byte	0x76
	.byte	0xf
	.4byte	0x70
	.4byte	.LLST22
	.byte	0x18
	.4byte	.LASF67
	.byte	0x1
	.byte	0xae
	.byte	0x1
	.4byte	.L48
	.byte	0x19
	.4byte	0x7da
	.4byte	.LBB47
	.4byte	.Ldebug_ranges0+0x28
	.byte	0x1
	.byte	0x84
	.byte	0x6
	.4byte	0x5b9
	.byte	0x1a
	.4byte	0x7eb
	.4byte	.LLST23
	.byte	0x1b
	.4byte	.Ldebug_ranges0+0x28
	.byte	0x1c
	.4byte	0x7f7
	.4byte	.LLST24
	.byte	0x1c
	.4byte	0x803
	.4byte	.LLST25
	.byte	0x1c
	.4byte	0x80f
	.4byte	.LLST26
	.byte	0xf
	.4byte	.LVL41
	.4byte	0xb81
	.byte	0xf
	.4byte	.LVL43
	.4byte	0xb81
	.byte	0xd
	.4byte	.LVL46
	.4byte	0xc03
	.4byte	0x516
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0xd
	.4byte	.LVL48
	.4byte	0xba8
	.4byte	0x52f
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0xd
	.4byte	.LVL50
	.4byte	0xba8
	.4byte	0x548
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0xd
	.4byte	.LVL51
	.4byte	0xba8
	.4byte	0x561
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0xd
	.4byte	.LVL64
	.4byte	0xc10
	.4byte	0x581
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LVL65
	.4byte	0xc1d
	.4byte	0x59b
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LVL66
	.4byte	0xbb5
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	0xaa3
	.4byte	.LBB51
	.4byte	.LBE51-.LBB51
	.byte	0x1
	.byte	0x9b
	.byte	0x9
	.4byte	0x5f1
	.byte	0x1a
	.4byte	0xab4
	.4byte	.LLST27
	.byte	0x1e
	.4byte	0xac1
	.4byte	.LBB53
	.4byte	.Ldebug_ranges0+0x40
	.byte	0x2
	.byte	0x2b
	.byte	0x9
	.byte	0x1a
	.4byte	0xad2
	.4byte	.LLST28
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	0x987
	.4byte	.LBB57
	.4byte	.Ldebug_ranges0+0x58
	.byte	0x1
	.byte	0x9c
	.byte	0x2
	.4byte	0x642
	.byte	0x1a
	.4byte	0x9c4
	.4byte	.LLST29
	.byte	0x1a
	.4byte	0x9b8
	.4byte	.LLST30
	.byte	0x1a
	.4byte	0x9ac
	.4byte	.LLST31
	.byte	0x1a
	.4byte	0x9a0
	.4byte	.LLST32
	.byte	0x1a
	.4byte	0x994
	.4byte	.LLST33
	.byte	0x1b
	.4byte	.Ldebug_ranges0+0x58
	.byte	0x1c
	.4byte	0x9d0
	.4byte	.LLST34
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	0xa7d
	.4byte	.LBB61
	.4byte	.Ldebug_ranges0+0x78
	.byte	0x1
	.byte	0xac
	.byte	0x9
	.4byte	0x677
	.byte	0x1f
	.4byte	0xa98
	.byte	0x1f
	.4byte	0xa8e
	.byte	0x1e
	.4byte	0xaa3
	.4byte	.LBB63
	.4byte	.Ldebug_ranges0+0x90
	.byte	0x2
	.byte	0x32
	.byte	0x9
	.byte	0x1f
	.4byte	0xab4
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	0xa11
	.4byte	.LBB68
	.4byte	.Ldebug_ranges0+0xa8
	.byte	0x1
	.byte	0xad
	.byte	0x8
	.4byte	0x6a7
	.byte	0x1a
	.4byte	0xa3a
	.4byte	.LLST35
	.byte	0x1a
	.4byte	0xa2e
	.4byte	.LLST36
	.byte	0x1a
	.4byte	0xa22
	.4byte	.LLST37
	.byte	0
	.byte	0xd
	.4byte	.LVL36
	.4byte	0xb67
	.4byte	0x6bb
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LVL39
	.4byte	0xb74
	.4byte	0x6cf
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LVL52
	.4byte	0xb81
	.byte	0xd
	.4byte	.LVL56
	.4byte	0xba8
	.4byte	0x6f1
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0xd
	.4byte	.LVL57
	.4byte	0xba8
	.4byte	0x70a
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0xd
	.4byte	.LVL58
	.4byte	0xba8
	.4byte	0x723
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0xd
	.4byte	.LVL69
	.4byte	0xc2a
	.4byte	0x749
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LVL70
	.4byte	0xc2a
	.4byte	0x76f
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LVL71
	.4byte	0xc37
	.4byte	0x783
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LVL79
	.4byte	0xc03
	.4byte	0x797
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LVL82
	.4byte	0xc2a
	.4byte	0x7bd
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LVL84
	.4byte	0xc44
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xa8
	.byte	0x15
	.4byte	.LASF32
	.byte	0x1
	.byte	0x58
	.byte	0x1
	.4byte	0x276
	.byte	0x1
	.4byte	0x81c
	.byte	0x17
	.4byte	.LASF14
	.byte	0x1
	.byte	0x58
	.byte	0x39
	.4byte	0x270
	.byte	0x20
	.string	"tmp"
	.byte	0x1
	.byte	0x5a
	.byte	0x18
	.4byte	0x276
	.byte	0x20
	.string	"pm1"
	.byte	0x1
	.byte	0x5a
	.byte	0x1e
	.4byte	0x276
	.byte	0x20
	.string	"one"
	.byte	0x1
	.byte	0x5a
	.byte	0x24
	.4byte	0x276
	.byte	0
	.byte	0x8
	.4byte	.LASF33
	.byte	0x1
	.byte	0x35
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB119
	.4byte	.LFE119-.LFB119
	.byte	0x1
	.byte	0x9c
	.4byte	0x91d
	.byte	0x14
	.4byte	.LASF14
	.byte	0x1
	.byte	0x35
	.byte	0x3d
	.4byte	0x270
	.4byte	.LLST6
	.byte	0x9
	.string	"qr"
	.byte	0x1
	.byte	0x36
	.byte	0x1c
	.4byte	0x91d
	.4byte	.LLST7
	.byte	0x9
	.string	"qnr"
	.byte	0x1
	.byte	0x37
	.byte	0x1c
	.4byte	0x91d
	.4byte	.LLST8
	.byte	0x21
	.4byte	.Ldebug_ranges0+0
	.4byte	0x8fa
	.byte	0xb
	.string	"tmp"
	.byte	0x1
	.byte	0x3c
	.byte	0x19
	.4byte	0x276
	.4byte	.LLST9
	.byte	0xb
	.string	"res"
	.byte	0x1
	.byte	0x3d
	.byte	0x7
	.4byte	0x69
	.4byte	.LLST10
	.byte	0xf
	.4byte	.LVL17
	.4byte	0xb81
	.byte	0xd
	.4byte	.LVL19
	.4byte	0xc1d
	.4byte	0x8b1
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LVL20
	.4byte	0xba8
	.4byte	0x8ca
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0xd
	.4byte	.LVL28
	.4byte	0xc44
	.4byte	0x8e4
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LVL34
	.4byte	0xba8
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LVL21
	.4byte	0xba8
	.4byte	0x90d
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x10
	.4byte	.LVL22
	.4byte	0xba8
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x276
	.byte	0x8
	.4byte	.LASF34
	.byte	0x1
	.byte	0x22
	.byte	0xe
	.4byte	0x70
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.byte	0x1
	.byte	0x9c
	.4byte	0x94e
	.byte	0x14
	.4byte	.LASF35
	.byte	0x1
	.byte	0x22
	.byte	0x2e
	.4byte	0x69
	.4byte	.LLST5
	.byte	0
	.byte	0x8
	.4byte	.LASF36
	.byte	0x1
	.byte	0x12
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.byte	0x1
	.byte	0x9c
	.4byte	0x987
	.byte	0x14
	.4byte	.LASF35
	.byte	0x1
	.byte	0x12
	.byte	0x22
	.4byte	0x69
	.4byte	.LLST4
	.byte	0x22
	.4byte	.LASF37
	.byte	0x1
	.byte	0x12
	.byte	0x2d
	.4byte	0x69
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0x23
	.4byte	.LASF68
	.byte	0x2
	.byte	0xa1
	.byte	0x14
	.byte	0x3
	.4byte	0x9db
	.byte	0x17
	.4byte	.LASF30
	.byte	0x2
	.byte	0xa1
	.byte	0x2d
	.4byte	0x9d
	.byte	0x17
	.4byte	.LASF38
	.byte	0x2
	.byte	0xa1
	.byte	0x3d
	.4byte	0x7d4
	.byte	0x17
	.4byte	.LASF39
	.byte	0x2
	.byte	0xa2
	.byte	0x11
	.4byte	0x7d4
	.byte	0x16
	.string	"len"
	.byte	0x2
	.byte	0xa2
	.byte	0x23
	.4byte	0x83
	.byte	0x16
	.string	"dst"
	.byte	0x2
	.byte	0xa3
	.byte	0xb
	.4byte	0xad
	.byte	0x20
	.string	"i"
	.byte	0x2
	.byte	0xa5
	.byte	0x9
	.4byte	0x83
	.byte	0
	.byte	0x15
	.4byte	.LASF40
	.byte	0x2
	.byte	0x81
	.byte	0x12
	.4byte	0x9d
	.byte	0x3
	.4byte	0xa11
	.byte	0x17
	.4byte	.LASF30
	.byte	0x2
	.byte	0x81
	.byte	0x2a
	.4byte	0x9d
	.byte	0x17
	.4byte	.LASF38
	.byte	0x2
	.byte	0x81
	.byte	0x33
	.4byte	0x9d
	.byte	0x17
	.4byte	.LASF39
	.byte	0x2
	.byte	0x81
	.byte	0x40
	.4byte	0x9d
	.byte	0
	.byte	0x15
	.4byte	.LASF41
	.byte	0x2
	.byte	0x72
	.byte	0x13
	.4byte	0x69
	.byte	0x3
	.4byte	0xa47
	.byte	0x17
	.4byte	.LASF30
	.byte	0x2
	.byte	0x72
	.byte	0x36
	.4byte	0x70
	.byte	0x17
	.4byte	.LASF38
	.byte	0x2
	.byte	0x72
	.byte	0x40
	.4byte	0x69
	.byte	0x17
	.4byte	.LASF39
	.byte	0x2
	.byte	0x73
	.byte	0xa
	.4byte	0x69
	.byte	0
	.byte	0x15
	.4byte	.LASF42
	.byte	0x2
	.byte	0x63
	.byte	0x1c
	.4byte	0x70
	.byte	0x3
	.4byte	0xa7d
	.byte	0x17
	.4byte	.LASF30
	.byte	0x2
	.byte	0x63
	.byte	0x3b
	.4byte	0x70
	.byte	0x17
	.4byte	.LASF38
	.byte	0x2
	.byte	0x64
	.byte	0x18
	.4byte	0x70
	.byte	0x17
	.4byte	.LASF39
	.byte	0x2
	.byte	0x65
	.byte	0x18
	.4byte	0x70
	.byte	0
	.byte	0x15
	.4byte	.LASF43
	.byte	0x2
	.byte	0x30
	.byte	0x1c
	.4byte	0x70
	.byte	0x3
	.4byte	0xaa3
	.byte	0x16
	.string	"a"
	.byte	0x2
	.byte	0x30
	.byte	0x37
	.4byte	0x70
	.byte	0x16
	.string	"b"
	.byte	0x2
	.byte	0x30
	.byte	0x47
	.4byte	0x70
	.byte	0
	.byte	0x15
	.4byte	.LASF44
	.byte	0x2
	.byte	0x27
	.byte	0x1c
	.4byte	0x70
	.byte	0x3
	.4byte	0xac1
	.byte	0x16
	.string	"val"
	.byte	0x2
	.byte	0x27
	.byte	0x3c
	.4byte	0x70
	.byte	0
	.byte	0x15
	.4byte	.LASF45
	.byte	0x2
	.byte	0x1f
	.byte	0x1c
	.4byte	0x70
	.byte	0x3
	.4byte	0xadf
	.byte	0x16
	.string	"val"
	.byte	0x2
	.byte	0x1f
	.byte	0x3d
	.4byte	0x70
	.byte	0
	.byte	0x24
	.4byte	0x38f
	.4byte	.LFB122
	.4byte	.LFE122-.LFB122
	.byte	0x1
	.byte	0x9c
	.4byte	0xb67
	.byte	0x1a
	.4byte	0x3a0
	.4byte	.LLST0
	.byte	0x1a
	.4byte	0x3ac
	.4byte	.LLST1
	.byte	0x1d
	.4byte	0x38f
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.byte	0x1
	.byte	0xb6
	.byte	0xc
	.4byte	0xb3b
	.byte	0x1a
	.4byte	0x3ac
	.4byte	.LLST2
	.byte	0x1a
	.4byte	0x3a0
	.4byte	.LLST3
	.byte	0x10
	.4byte	.LVL6
	.4byte	0xbf6
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LVL1
	.4byte	0xc1d
	.4byte	0xb56
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0x10
	.4byte	.LVL4
	.4byte	0xbe9
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x25
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0x6
	.2byte	0x303
	.byte	0x1e
	.byte	0x25
	.4byte	.LASF47
	.4byte	.LASF47
	.byte	0x6
	.2byte	0x2ee
	.byte	0x8
	.byte	0x25
	.4byte	.LASF48
	.4byte	.LASF48
	.byte	0x6
	.2byte	0x206
	.byte	0x18
	.byte	0x25
	.4byte	.LASF49
	.4byte	.LASF49
	.byte	0x6
	.2byte	0x215
	.byte	0x18
	.byte	0x25
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0x6
	.2byte	0x226
	.byte	0x5
	.byte	0x25
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0x6
	.2byte	0x21c
	.byte	0x6
	.byte	0x25
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0x6
	.2byte	0x238
	.byte	0x5
	.byte	0x25
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0x6
	.2byte	0x2a1
	.byte	0x5
	.byte	0x25
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x6
	.2byte	0x24f
	.byte	0x5
	.byte	0x25
	.4byte	.LASF55
	.4byte	.LASF55
	.byte	0x6
	.2byte	0x243
	.byte	0x5
	.byte	0x25
	.4byte	.LASF56
	.4byte	.LASF56
	.byte	0x6
	.2byte	0x2b2
	.byte	0x5
	.byte	0x25
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0x6
	.2byte	0x2b9
	.byte	0x5
	.byte	0x25
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0x6
	.2byte	0x20e
	.byte	0x18
	.byte	0x25
	.4byte	.LASF59
	.4byte	.LASF59
	.byte	0x6
	.2byte	0x266
	.byte	0x5
	.byte	0x25
	.4byte	.LASF60
	.4byte	.LASF60
	.byte	0x6
	.2byte	0x22f
	.byte	0x5
	.byte	0x25
	.4byte	.LASF61
	.4byte	.LASF61
	.byte	0x6
	.2byte	0x28a
	.byte	0x5
	.byte	0x25
	.4byte	.LASF62
	.4byte	.LASF62
	.byte	0x6
	.2byte	0x2c0
	.byte	0x5
	.byte	0x25
	.4byte	.LASF63
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x2c8
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
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
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
	.byte	0x49
	.byte	0x13
	.byte	0x20
	.byte	0xb
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
	.byte	0
	.byte	0
	.byte	0x17
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
	.byte	0
	.byte	0
	.byte	0x18
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
	.byte	0x19
	.byte	0x1d
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x52
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x58
	.byte	0xb
	.byte	0x59
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1d
	.byte	0x1d
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x58
	.byte	0xb
	.byte	0x59
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1e
	.byte	0x1d
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x52
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x58
	.byte	0xb
	.byte	0x59
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x1f
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x20
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
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x22
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
	.byte	0x23
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x24
	.byte	0x2e
	.byte	0x1
	.byte	0x31
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
	.byte	0x25
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
.LLST43:
	.4byte	.LVL109
	.4byte	.LVL110-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL110-1
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL115
	.4byte	.LFE124
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL109
	.4byte	.LVL110-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL110-1
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL126
	.4byte	.LVL129
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL129
	.4byte	.LFE124
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL109
	.4byte	.LVL110-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL110-1
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL127
	.4byte	.LVL129
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL129
	.4byte	.LFE124
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL111
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL129
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL115
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL129
	.4byte	.LFE124
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL118
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL129
	.4byte	.LFE124
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL109
	.4byte	.LVL120
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL120
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL129
	.4byte	.LFE124
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL113
	.4byte	.LVL114-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL114-1
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL129
	.4byte	.LFE124
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL94
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL100
	.4byte	.LVL103
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LFE123
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL94
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL101
	.4byte	.LVL103
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LFE123
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL94
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LFE123
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL94
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL99
	.4byte	.LVL103
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LFE123
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL94
	.4byte	.LVL96
	.2byte	0x6
	.byte	0x8
	.byte	0x64
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x6
	.byte	0x8
	.byte	0x65
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x6
	.byte	0x8
	.byte	0x64
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LFE123
	.2byte	0x6
	.byte	0x8
	.byte	0x64
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL35
	.4byte	.LVL36-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL36-1
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL42
	.4byte	.LFE121
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL35
	.4byte	.LVL36-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL36-1
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LFE121
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL35
	.4byte	.LVL36-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL36-1
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
	.4byte	.LFE121
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL35
	.4byte	.LVL36-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL36-1
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL54
	.4byte	.LVL63
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL72
	.4byte	.LFE121
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL51
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL67
	.4byte	.LFE121
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL54
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL68
	.4byte	.LFE121
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL35
	.4byte	.LVL54
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL63
	.4byte	.LVL80
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL81
	.4byte	.LVL82-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL82-1
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL90
	.4byte	.LFE121
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL85
	.4byte	.LVL90
	.2byte	0x5
	.byte	0x83
	.byte	0
	.byte	0x31
	.byte	0x27
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL35
	.4byte	.LVL55
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL63
	.4byte	.LVL85
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL90
	.4byte	.LFE121
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL38
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL63
	.4byte	.LFE121
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL40
	.4byte	.LVL41-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL41-1
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL63
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL90
	.4byte	.LFE121
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL75
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0xf
	.byte	0x7a
	.byte	0
	.byte	0x31
	.byte	0x27
	.byte	0x31
	.byte	0x1c
	.byte	0x7a
	.byte	0
	.byte	0x9
	.byte	0xfe
	.byte	0x27
	.byte	0x1a
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0xb
	.byte	0x7a
	.byte	0
	.byte	0x20
	.byte	0x31
	.byte	0x1c
	.byte	0x7a
	.byte	0
	.byte	0x1a
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x5
	.byte	0x79
	.byte	0
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0xb
	.byte	0x7a
	.byte	0
	.byte	0x20
	.byte	0x31
	.byte	0x1c
	.byte	0x7a
	.byte	0
	.byte	0x1a
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LFE121
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL40
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL63
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL42
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL63
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL45
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL63
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL47
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL63
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL71
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x3
	.byte	0x7a
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x4
	.byte	0x83
	.byte	0
	.byte	0x20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL71
	.4byte	.LVL73
	.2byte	0x7
	.byte	0x7a
	.byte	0x7f
	.byte	0x7a
	.byte	0
	.byte	0x20
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x7
	.byte	0x7a
	.byte	0x1
	.byte	0x20
	.byte	0x7a
	.byte	0
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x4
	.byte	0x91
	.byte	0x8c,0x7f
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL90
	.4byte	.LFE121
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL76
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL90
	.4byte	.LFE121
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL76
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL90
	.4byte	.LFE121
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL76
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL90
	.4byte	.LFE121
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL76
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL90
	.4byte	.LFE121
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL90
	.4byte	.LFE121
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL86
	.4byte	.LVL89
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL86
	.4byte	.LVL89
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0xf
	.byte	0x7a
	.byte	0
	.byte	0x31
	.byte	0x27
	.byte	0x31
	.byte	0x1c
	.byte	0x7a
	.byte	0
	.byte	0x9
	.byte	0xfe
	.byte	0x27
	.byte	0x1a
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0xb
	.byte	0x7a
	.byte	0
	.byte	0x20
	.byte	0x31
	.byte	0x1c
	.byte	0x7a
	.byte	0
	.byte	0x1a
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x5
	.byte	0x79
	.byte	0
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LFE119
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL16
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL24
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LFE119
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL16
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL23
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LFE119
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL18
	.4byte	.LVL19-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19-1
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL27
	.4byte	.LFE119
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LFE118
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x3
	.byte	0x7f
	.byte	0xf
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LFE117
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1-1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LFE122
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1-1
	.4byte	.LFE122
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x4c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB122
	.4byte	.LFE122-.LFB122
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.4byte	.LFB119
	.4byte	.LFE119-.LFB119
	.4byte	.LFB121
	.4byte	.LFE121-.LFB121
	.4byte	.LFB123
	.4byte	.LFE123-.LFB123
	.4byte	.LFB124
	.4byte	.LFE124-.LFB124
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB24
	.4byte	.LBE24
	.4byte	.LBB25
	.4byte	.LBE25
	.4byte	.LBB26
	.4byte	.LBE26
	.4byte	.LBB27
	.4byte	.LBE27
	.4byte	0
	.4byte	0
	.4byte	.LBB47
	.4byte	.LBE47
	.4byte	.LBB50
	.4byte	.LBE50
	.4byte	0
	.4byte	0
	.4byte	.LBB53
	.4byte	.LBE53
	.4byte	.LBB56
	.4byte	.LBE56
	.4byte	0
	.4byte	0
	.4byte	.LBB57
	.4byte	.LBE57
	.4byte	.LBB73
	.4byte	.LBE73
	.4byte	.LBB74
	.4byte	.LBE74
	.4byte	0
	.4byte	0
	.4byte	.LBB61
	.4byte	.LBE61
	.4byte	.LBB71
	.4byte	.LBE71
	.4byte	0
	.4byte	0
	.4byte	.LBB63
	.4byte	.LBE63
	.4byte	.LBB66
	.4byte	.LBE66
	.4byte	0
	.4byte	0
	.4byte	.LBB68
	.4byte	.LBE68
	.4byte	.LBB72
	.4byte	.LBE72
	.4byte	0
	.4byte	0
	.4byte	.LFB122
	.4byte	.LFE122
	.4byte	.LFB117
	.4byte	.LFE117
	.4byte	.LFB118
	.4byte	.LFE118
	.4byte	.LFB119
	.4byte	.LFE119
	.4byte	.LFB121
	.4byte	.LFE121
	.4byte	.LFB123
	.4byte	.LFE123
	.4byte	.LFB124
	.4byte	.LFE124
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF32:
	.string	"dragonfly_get_rand_1_to_p_1"
.LASF55:
	.string	"crypto_bignum_mod"
.LASF17:
	.string	"crypto_ec"
.LASF20:
	.string	"dragonfly_generate_scalar"
.LASF57:
	.string	"crypto_bignum_is_one"
.LASF34:
	.string	"dragonfly_min_pwe_loop_iter"
.LASF61:
	.string	"crypto_bignum_mulmod"
.LASF11:
	.string	"size_t"
.LASF29:
	.string	"qr_or_qnr_bin"
.LASF35:
	.string	"group"
.LASF51:
	.string	"crypto_bignum_deinit"
.LASF46:
	.string	"crypto_ec_get_prime"
.LASF47:
	.string	"crypto_ec_prime_len"
.LASF15:
	.string	"prime_bin"
.LASF31:
	.string	"dragonfly_get_rand_2_to_r_1"
.LASF2:
	.string	"short int"
.LASF14:
	.string	"prime"
.LASF49:
	.string	"crypto_bignum_init_uint"
.LASF10:
	.string	"uint8_t"
.LASF24:
	.string	"scalar"
.LASF25:
	.string	"count"
.LASF38:
	.string	"true_val"
.LASF45:
	.string	"const_time_fill_msb"
.LASF6:
	.string	"long long int"
.LASF67:
	.string	"fail"
.LASF21:
	.string	"order"
.LASF12:
	.string	"char"
.LASF4:
	.string	"long int"
.LASF62:
	.string	"crypto_bignum_is_odd"
.LASF9:
	.string	"__uint8_t"
.LASF37:
	.string	"ecc_only"
.LASF56:
	.string	"crypto_bignum_is_zero"
.LASF22:
	.string	"_rand"
.LASF42:
	.string	"const_time_select"
.LASF1:
	.string	"unsigned char"
.LASF27:
	.string	"qr_or_qnr"
.LASF52:
	.string	"crypto_bignum_add"
.LASF23:
	.string	"_mask"
.LASF48:
	.string	"crypto_bignum_init"
.LASF0:
	.string	"signed char"
.LASF7:
	.string	"long long unsigned int"
.LASF8:
	.string	"unsigned int"
.LASF5:
	.string	"long unsigned int"
.LASF40:
	.string	"const_time_select_u8"
.LASF44:
	.string	"const_time_is_zero"
.LASF18:
	.string	"crypto_bignum"
.LASF19:
	.string	"dragonfly_sqrt"
.LASF3:
	.string	"short unsigned int"
.LASF60:
	.string	"crypto_bignum_rand"
.LASF39:
	.string	"false_val"
.LASF66:
	.string	"C:\\\\Users\\\\cwier\\\\Documents\\\\GitHub\\\\qcom\\\\examples\\\\solutions\\\\rtsp_softap_cam\\\\build\\\\build_out\\\\components\\\\wireless\\\\wifi6\\\\qcc74x_wpa_supplicant"
.LASF13:
	.string	"_Bool"
.LASF68:
	.string	"const_time_select_bin"
.LASF16:
	.string	"prime_len"
.LASF64:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF43:
	.string	"const_time_eq"
.LASF65:
	.string	".\\components\\wireless\\wifi6\\qcc74x_wpa_supplicant\\src\\common\\dragonfly.c"
.LASF50:
	.string	"crypto_bignum_to_bin"
.LASF41:
	.string	"const_time_select_int"
.LASF30:
	.string	"mask"
.LASF26:
	.string	"dragonfly_is_quadratic_residue_blind"
.LASF36:
	.string	"dragonfly_suitable_group"
.LASF28:
	.string	"check"
.LASF63:
	.string	"crypto_bignum_legendre"
.LASF59:
	.string	"crypto_bignum_sub"
.LASF53:
	.string	"crypto_bignum_rshift"
.LASF58:
	.string	"crypto_bignum_init_set"
.LASF33:
	.string	"dragonfly_get_random_qr_qnr"
.LASF54:
	.string	"crypto_bignum_exptmod"
	.ident	"GCC: (GNU) 10.4.0"
