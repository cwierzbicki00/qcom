	.file	"bignum_ext.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.dump_mpi.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"%s: "
	.align	2
.LC1:
	.string	"<null>"
	.align	2
.LC2:
	.string	"\r\n"
	.section	.text.dump_mpi,"ax",@progbits
	.align	1
	.globl	dump_mpi
	.type	dump_mpi, @function
dump_mpi:
.LFB7:
	.file 1 ".\\components\\crypto\\mbedtls\\port\\hw_acc\\bignum_ext.c"
	.loc 1 9 1
	.cfi_startproc
.LVL0:
	.loc 1 10 5
	.loc 1 11 5
	.loc 1 9 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s1,20(sp)
	.cfi_offset 9, -12
	mv	s1,a1
	.loc 1 11 25
	li	a1,4096
.LVL1:
	.loc 1 9 1
	sw	s2,16(sp)
	.loc 1 11 25
	addi	a1,a1,1
	.cfi_offset 18, -16
	.loc 1 9 1
	mv	s2,a0
	.loc 1 11 25
	li	a0,1
.LVL2:
	.loc 1 9 1
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 11 25
	call	mbedtls_calloc
.LVL3:
	.loc 1 12 5 is_stmt 1
	.loc 1 12 8 is_stmt 0
	beq	a0,zero,.L1
	mv	s0,a0
	.loc 1 14 5 is_stmt 1
	.loc 1 15 5
	.loc 1 15 8 is_stmt 0
	beq	s2,zero,.L4
	.loc 1 16 9 is_stmt 1
	lui	a0,%hi(.LC0)
.LVL4:
	mv	a1,s2
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL5:
.L4:
	.loc 1 17 5
	.loc 1 17 8 is_stmt 0
	beq	s1,zero,.L5
	.loc 1 18 9 is_stmt 1
	li	a3,4096
	addi	a4,sp,12
	addi	a3,a3,1
	mv	a2,s0
	li	a1,16
	mv	a0,s1
	call	mbedtls_mpi_write_string
.LVL6:
.L6:
	.loc 1 22 5
	mv	a0,s0
	call	printf
.LVL7:
	.loc 1 23 5
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL8:
	.loc 1 24 5
	mv	a0,s0
	call	mbedtls_free
.LVL9:
.L1:
	.loc 1 25 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
.LVL10:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL11:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL12:
.L5:
	.cfi_restore_state
	.loc 1 20 9 is_stmt 1
	li	a2,4096
	lui	a1,%hi(.LC1)
	addi	a2,a2,1
	addi	a1,a1,%lo(.LC1)
	mv	a0,s0
	call	strlcpy
.LVL13:
	j	.L6
	.cfi_endproc
.LFE7:
	.size	dump_mpi, .-dump_mpi
	.section	.text.mpi_words_to_reg_size,"ax",@progbits
	.align	1
	.globl	mpi_words_to_reg_size
	.type	mpi_words_to_reg_size, @function
mpi_words_to_reg_size:
.LFB8:
	.loc 1 28 1
	.cfi_startproc
.LVL14:
	.loc 1 29 5
	.loc 1 29 12 is_stmt 0
	slli	a5,a0,2
.LVL15:
	.loc 1 30 5 is_stmt 1
	.loc 1 30 8 is_stmt 0
	li	a4,8
	bleu	a5,a4,.L13
	.loc 1 31 10 is_stmt 1
	.loc 1 31 13 is_stmt 0
	li	a4,16
	.loc 1 31 34
	li	a0,2
.LVL16:
	.loc 1 31 13
	bleu	a5,a4,.L11
	.loc 1 32 10 is_stmt 1
	.loc 1 32 13 is_stmt 0
	li	a4,32
	.loc 1 32 34
	li	a0,3
	.loc 1 32 13
	bleu	a5,a4,.L11
	.loc 1 33 10 is_stmt 1
	.loc 1 33 13 is_stmt 0
	li	a4,64
	.loc 1 33 34
	li	a0,4
	.loc 1 33 13
	bleu	a5,a4,.L11
	.loc 1 34 10 is_stmt 1
	.loc 1 34 13 is_stmt 0
	li	a4,96
	.loc 1 34 34
	li	a0,5
	.loc 1 34 13
	bleu	a5,a4,.L11
	.loc 1 35 10 is_stmt 1
	.loc 1 35 13 is_stmt 0
	li	a4,128
	.loc 1 35 35
	li	a0,6
	.loc 1 35 13
	bleu	a5,a4,.L11
	.loc 1 36 10 is_stmt 1
	.loc 1 36 13 is_stmt 0
	li	a4,192
	.loc 1 36 35
	li	a0,7
	.loc 1 36 13
	bleu	a5,a4,.L11
	.loc 1 37 10 is_stmt 1
	.loc 1 37 13 is_stmt 0
	li	a4,256
	.loc 1 37 35
	li	a0,8
	.loc 1 37 13
	bleu	a5,a4,.L11
	.loc 1 38 10 is_stmt 1
	.loc 1 38 13 is_stmt 0
	li	a4,384
	.loc 1 38 35
	li	a0,9
	.loc 1 38 13
	bleu	a5,a4,.L11
	.loc 1 39 10 is_stmt 1
	.loc 1 39 13 is_stmt 0
	li	a4,512
	.loc 1 39 35
	li	a0,10
	.loc 1 39 13
	bleu	a5,a4,.L11
	.loc 1 40 17
	li	a0,0
	ret
.LVL17:
.L13:
	.loc 1 30 28
	li	a0,1
.LVL18:
.L11:
	.loc 1 41 1
	ret
	.cfi_endproc
.LFE8:
	.size	mpi_words_to_reg_size, .-mpi_words_to_reg_size
	.section	.text.mpi_reg_size_to_words,"ax",@progbits
	.align	1
	.globl	mpi_reg_size_to_words
	.type	mpi_reg_size_to_words, @function
mpi_reg_size_to_words:
.LFB9:
	.loc 1 44 1 is_stmt 1
	.cfi_startproc
.LVL19:
	.loc 1 45 5
	.loc 1 45 8 is_stmt 0
	li	a5,1
	beq	a0,a5,.L25
	.loc 1 46 10 is_stmt 1
	.loc 1 46 13 is_stmt 0
	li	a4,2
	.loc 1 46 36
	li	a5,4
	.loc 1 46 13
	beq	a0,a4,.L23
	.loc 1 47 10 is_stmt 1
	.loc 1 47 13 is_stmt 0
	li	a4,3
	.loc 1 47 36
	li	a5,8
	.loc 1 47 13
	beq	a0,a4,.L23
	.loc 1 48 10 is_stmt 1
	.loc 1 48 13 is_stmt 0
	li	a4,4
	.loc 1 48 36
	li	a5,16
	.loc 1 48 13
	beq	a0,a4,.L23
	.loc 1 49 10 is_stmt 1
	.loc 1 49 13 is_stmt 0
	li	a4,5
	.loc 1 49 36
	li	a5,24
	.loc 1 49 13
	beq	a0,a4,.L23
	.loc 1 50 10 is_stmt 1
	.loc 1 50 13 is_stmt 0
	li	a4,6
	.loc 1 50 36
	li	a5,32
	.loc 1 50 13
	beq	a0,a4,.L23
	.loc 1 51 10 is_stmt 1
	.loc 1 51 13 is_stmt 0
	li	a4,7
	.loc 1 51 36
	li	a5,48
	.loc 1 51 13
	beq	a0,a4,.L23
	.loc 1 52 10 is_stmt 1
	.loc 1 52 13 is_stmt 0
	li	a4,8
	.loc 1 52 36
	li	a5,64
	.loc 1 52 13
	beq	a0,a4,.L23
	.loc 1 53 10 is_stmt 1
	.loc 1 53 13 is_stmt 0
	li	a4,9
	.loc 1 53 36
	li	a5,96
	.loc 1 53 13
	beq	a0,a4,.L23
	.loc 1 54 10 is_stmt 1
	.loc 1 54 13 is_stmt 0
	li	a4,10
	.loc 1 54 37
	li	a5,128
	.loc 1 54 13
	beq	a0,a4,.L23
	.loc 1 55 17
	li	a5,0
.L23:
	.loc 1 56 1
	mv	a0,a5
.LVL20:
	ret
.LVL21:
.L25:
	.loc 1 45 31
	li	a5,2
	j	.L23
	.cfi_endproc
.LFE9:
	.size	mpi_reg_size_to_words, .-mpi_reg_size_to_words
	.section	.text.mpi_words,"ax",@progbits
	.align	1
	.globl	mpi_words
	.type	mpi_words, @function
mpi_words:
.LFB10:
	.loc 1 59 1 is_stmt 1
	.cfi_startproc
.LVL22:
	.loc 1 60 5
.LBB2:
	.loc 1 60 10
	.loc 1 60 17 is_stmt 0
	lw	a5,4(a0)
.LVL23:
.L36:
	.loc 1 60 29 is_stmt 1 discriminator 1
	.loc 1 60 5 is_stmt 0 discriminator 1
	bne	a5,zero,.L38
.L35:
.LBE2:
	.loc 1 66 1
	mv	a0,a5
.LVL24:
	ret
.LVL25:
.L38:
.LBB3:
	.loc 1 61 9 is_stmt 1
	.loc 1 61 19 is_stmt 0
	lw	a4,8(a0)
	addsl	a4, a4, a5, 2
	.loc 1 61 12
	lw	a4,-4(a4)
	bne	a4,zero,.L35
	.loc 1 60 36 is_stmt 1 discriminator 2
	.loc 1 60 37 is_stmt 0 discriminator 2
	addi	a5,a5,-1
.LVL26:
	j	.L36
.LBE3:
	.cfi_endproc
.LFE10:
	.size	mpi_words, .-mpi_words
	.section	.text.mpi_clear_upper_bits,"ax",@progbits
	.align	1
	.globl	mpi_clear_upper_bits
	.type	mpi_clear_upper_bits, @function
mpi_clear_upper_bits:
.LFB11:
	.loc 1 70 1 is_stmt 1
	.cfi_startproc
.LVL27:
	.loc 1 71 5
	.loc 1 73 5
	.loc 1 70 1 is_stmt 0
	mv	a3,a0
	.loc 1 73 8
	beq	a0,zero,.L43
	.loc 1 75 5 is_stmt 1
	.loc 1 75 47 is_stmt 0
	addi	a5,a1,31
.LBB4:
	.loc 1 77 43
	lw	a2,4(a0)
.LBE4:
	.loc 1 75 12
	srli	a5,a5,5
.LVL28:
	.loc 1 77 5 is_stmt 1
.LBB5:
	.loc 1 77 10
	.loc 1 77 17 is_stmt 0
	mv	a4,a5
.LVL29:
.L41:
	.loc 1 77 38 is_stmt 1 discriminator 1
	.loc 1 77 5 is_stmt 0 discriminator 1
	bgtu	a2,a4,.L42
.LBE5:
	.loc 1 80 5 is_stmt 1
	.loc 1 80 12 is_stmt 0
	andi	a4,a1,31
.LVL30:
	.loc 1 81 5 is_stmt 1
	.loc 1 88 12 is_stmt 0
	li	a0,0
	.loc 1 81 8
	beq	a4,zero,.L39
	.loc 1 81 39 discriminator 1
	addi	a1,a5,-1
.LVL31:
	.loc 1 81 20 discriminator 1
	bleu	a2,a1,.L39
.LBB6:
	.loc 1 82 9 is_stmt 1
.LVL32:
	.loc 1 83 9
	.loc 1 84 9
	.loc 1 85 9
	.loc 1 85 35 is_stmt 0
	lw	a3,8(a3)
.LVL33:
	li	a2,1073741824
	addi	a2,a2,-1
	add	a5,a5,a2
.LVL34:
	li	a1,-1
	sll	a1,a1,a4
	lrw	a4,a3,a5,2
.LVL35:
	not	a1,a1
	and	a1,a4,a1
	srw	a1,a3,a5,2
	ret
.LVL36:
.L42:
.LBE6:
.LBB7:
	.loc 1 78 9 is_stmt 1 discriminator 3
	.loc 1 78 17 is_stmt 0 discriminator 3
	lw	a0,8(a3)
	srw	zero,a0,a4,2
	.loc 1 77 48 is_stmt 1 discriminator 3
	addi	a4,a4,1
.LVL37:
	j	.L41
.LVL38:
.L43:
.LBE7:
	.loc 1 74 16 is_stmt 0
	li	a0,-1
.LVL39:
.L39:
	.loc 1 89 1
	ret
	.cfi_endproc
.LFE11:
	.size	mpi_clear_upper_bits, .-mpi_clear_upper_bits
	.section	.text.mpi_mod_2n,"ax",@progbits
	.align	1
	.globl	mpi_mod_2n
	.type	mpi_mod_2n, @function
mpi_mod_2n:
.LFB12:
	.loc 1 92 1 is_stmt 1
	.cfi_startproc
.LVL40:
	.loc 1 93 5
	.loc 1 94 5
	.loc 1 95 5
	.loc 1 92 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 96 16
	li	s0,-1
	.loc 1 95 8
	beq	a0,zero,.L47
	mv	s1,a0
	mv	s2,a1
	.loc 1 98 5 is_stmt 1
	call	mpi_clear_upper_bits
.LVL41:
	.loc 1 99 5
	addi	a0,sp,4
	call	mbedtls_mpi_init
.LVL42:
	.loc 1 100 5
	.loc 1 100 8 is_stmt 0
	lw	a5,0(s1)
	.loc 1 93 9
	li	s0,0
	.loc 1 100 8
	bge	a5,zero,.L49
	.loc 1 101 9 is_stmt 1
	.loc 1 101 14
	.loc 1 101 26 is_stmt 0
	li	a2,1
	mv	a1,s2
	addi	a0,sp,4
	call	mbedtls_mpi_set_bit
.LVL43:
	mv	s0,a0
.LVL44:
	.loc 1 101 17
	bne	a0,zero,.L49
	.loc 1 101 86 is_stmt 1 discriminator 2
	.loc 1 102 9 discriminator 2
	.loc 1 102 14 discriminator 2
	.loc 1 102 26 is_stmt 0 discriminator 2
	addi	a2,sp,4
	mv	a1,s1
	mv	a0,s1
	call	mbedtls_mpi_add_mpi
.LVL45:
	mv	s0,a0
.LVL46:
	.loc 1 102 17 discriminator 2
	bne	a0,zero,.L49
	.loc 1 102 86 is_stmt 1 discriminator 2
	.loc 1 103 9 discriminator 2
	.loc 1 103 14 discriminator 2
	.loc 1 103 26 is_stmt 0 discriminator 2
	li	a2,0
	mv	a1,s2
	mv	a0,s1
	call	mbedtls_mpi_set_bit
.LVL47:
	mv	s0,a0
.LVL48:
.L49:
	.loc 1 103 85 is_stmt 1 discriminator 3
	.loc 1 106 5 discriminator 3
	addi	a0,sp,4
	call	mbedtls_mpi_free
.LVL49:
	.loc 1 107 5 discriminator 3
.L47:
	.loc 1 108 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	mv	a0,s0
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE12:
	.size	mpi_mod_2n, .-mpi_mod_2n
	.section	.text.mpi_hensel_quad_mod_inv_prime_n,"ax",@progbits
	.align	1
	.globl	mpi_hensel_quad_mod_inv_prime_n
	.type	mpi_hensel_quad_mod_inv_prime_n, @function
mpi_hensel_quad_mod_inv_prime_n:
.LFB13:
	.loc 1 111 1 is_stmt 1
	.cfi_startproc
.LVL50:
	.loc 1 112 5
	.loc 1 113 5
	.loc 1 114 16 is_stmt 0
	li	a5,-1
	.loc 1 113 8
	beq	a0,zero,.L67
	.loc 1 113 13 discriminator 1
	beq	a1,zero,.L67
	.loc 1 113 9 discriminator 2
	beq	a2,zero,.L67
	.loc 1 116 5 is_stmt 1
	.loc 1 116 14 is_stmt 0
	lw	a5,8(a1)
	.loc 1 116 18
	lw	a4,0(a5)
	.loc 1 114 16
	li	a5,-1
	.loc 1 116 18
	andi	a4,a4,1
	.loc 1 116 8
	beq	a4,zero,.L67
	.loc 1 111 1
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s0,56(sp)
	.cfi_offset 8, -8
	mv	s0,a0
	.loc 1 119 5 is_stmt 1
	.loc 1 120 5
	addi	a0,sp,8
.LVL51:
	.loc 1 111 1 is_stmt 0
	sw	ra,60(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	sw	s3,44(sp)
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	mv	s2,a1
	mv	s3,a2
	.loc 1 120 5
	call	mbedtls_mpi_init
.LVL52:
	.loc 1 122 5 is_stmt 1
	.loc 1 122 10
	.loc 1 122 22 is_stmt 0
	li	a1,1
	mv	a0,s0
	call	mbedtls_mpi_lset
.LVL53:
.LBB8:
	.loc 1 123 17
	li	s1,2
.LBE8:
	.loc 1 122 13
	beq	a0,zero,.L55
.LVL54:
.L56:
	.loc 1 145 69 is_stmt 1 discriminator 3
	.loc 1 148 5 discriminator 3
	addi	a0,sp,8
	call	mbedtls_mpi_free
.LVL55:
	.loc 1 150 5 discriminator 3
	.loc 1 151 1 is_stmt 0 discriminator 3
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
.LVL56:
	.loc 1 150 12 discriminator 3
	li	a5,0
	.loc 1 151 1 discriminator 3
	lw	s1,52(sp)
	.cfi_restore 9
	lw	s2,48(sp)
	.cfi_restore 18
.LVL57:
	lw	s3,44(sp)
	.cfi_restore 19
.LVL58:
	mv	a0,a5
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL59:
.L58:
	.cfi_restore_state
.LBB9:
	.loc 1 124 9 is_stmt 1
	.loc 1 124 14
	.loc 1 124 26 is_stmt 0
	call	mbedtls_mpi_mul_mpi
.LVL60:
	.loc 1 124 17
	bne	a0,zero,.L56
	.loc 1 124 88 is_stmt 1 discriminator 2
	.loc 1 125 9 discriminator 2
	.loc 1 125 14 discriminator 2
	.loc 1 125 26 is_stmt 0 discriminator 2
	mv	a1,s1
	addi	a0,sp,8
.LVL61:
	call	mpi_mod_2n
.LVL62:
	.loc 1 125 17 discriminator 2
	bne	a0,zero,.L56
	.loc 1 125 76 is_stmt 1 discriminator 2
	.loc 1 126 9 discriminator 2
	.loc 1 126 14 discriminator 2
	.loc 1 126 26 is_stmt 0 discriminator 2
	addi	a1,sp,8
	mv	a2,s2
	mv	a0,a1
.LVL63:
	call	mbedtls_mpi_mul_mpi
.LVL64:
	.loc 1 126 17 discriminator 2
	bne	a0,zero,.L56
	.loc 1 126 91 is_stmt 1 discriminator 2
	.loc 1 127 9 discriminator 2
	.loc 1 127 14 discriminator 2
	.loc 1 127 26 is_stmt 0 discriminator 2
	mv	a1,s1
	addi	a0,sp,8
.LVL65:
	call	mpi_mod_2n
.LVL66:
	.loc 1 127 17 discriminator 2
	bne	a0,zero,.L56
	.loc 1 127 76 is_stmt 1 discriminator 2
	.loc 1 128 9 discriminator 2
	.loc 1 128 14 discriminator 2
	.loc 1 128 26 is_stmt 0 discriminator 2
	li	a1,1
	mv	a0,s0
.LVL67:
	call	mbedtls_mpi_shift_l
.LVL68:
	.loc 1 128 17 discriminator 2
	bne	a0,zero,.L56
	.loc 1 128 82 is_stmt 1 discriminator 2
	.loc 1 129 9 discriminator 2
	.loc 1 129 14 discriminator 2
	.loc 1 129 26 is_stmt 0 discriminator 2
	addi	a2,sp,8
	mv	a1,s0
	mv	a0,s0
.LVL69:
	call	mbedtls_mpi_sub_mpi
.LVL70:
	.loc 1 129 17 discriminator 2
	bne	a0,zero,.L56
	.loc 1 129 88 is_stmt 1 discriminator 2
	.loc 1 123 31 discriminator 2
	.loc 1 123 33 is_stmt 0 discriminator 2
	slli	s1,s1,1
.LVL71:
.L55:
	.loc 1 123 24 is_stmt 1 discriminator 2
	.loc 1 124 26 is_stmt 0 discriminator 2
	mv	a2,s0
	mv	a1,s0
	addi	a0,sp,8
.LVL72:
	.loc 1 123 5 discriminator 2
	bltu	s1,s3,.L58
.LBE9:
	.loc 1 131 5 is_stmt 1
	.loc 1 131 10
	.loc 1 131 22 is_stmt 0
	call	mbedtls_mpi_mul_mpi
.LVL73:
	.loc 1 131 13
	bne	a0,zero,.L56
	.loc 1 131 84 is_stmt 1 discriminator 2
	.loc 1 132 5 discriminator 2
	.loc 1 132 10 discriminator 2
	.loc 1 132 22 is_stmt 0 discriminator 2
	mv	a1,s3
	addi	a0,sp,8
.LVL74:
	call	mpi_mod_2n
.LVL75:
	.loc 1 132 13 discriminator 2
	bne	a0,zero,.L56
	.loc 1 132 72 is_stmt 1 discriminator 2
	.loc 1 133 5 discriminator 2
	.loc 1 133 10 discriminator 2
	.loc 1 133 22 is_stmt 0 discriminator 2
	addi	a1,sp,8
	mv	a2,s2
	mv	a0,a1
.LVL76:
	call	mbedtls_mpi_mul_mpi
.LVL77:
	.loc 1 133 13 discriminator 2
	bne	a0,zero,.L56
	.loc 1 133 87 is_stmt 1 discriminator 2
	.loc 1 134 5 discriminator 2
	.loc 1 134 10 discriminator 2
	.loc 1 134 22 is_stmt 0 discriminator 2
	mv	a1,s3
	addi	a0,sp,8
.LVL78:
	call	mpi_mod_2n
.LVL79:
	.loc 1 134 13 discriminator 2
	bne	a0,zero,.L56
	.loc 1 134 72 is_stmt 1 discriminator 2
	.loc 1 135 5 discriminator 2
	.loc 1 135 10 discriminator 2
	.loc 1 135 22 is_stmt 0 discriminator 2
	li	a1,1
	mv	a0,s0
.LVL80:
	call	mbedtls_mpi_shift_l
.LVL81:
	.loc 1 135 13 discriminator 2
	bne	a0,zero,.L56
	.loc 1 135 78 is_stmt 1 discriminator 2
	.loc 1 136 5 discriminator 2
	.loc 1 136 10 discriminator 2
	.loc 1 136 22 is_stmt 0 discriminator 2
	addi	a2,sp,8
	mv	a1,s0
	mv	a0,s0
.LVL82:
	call	mbedtls_mpi_sub_mpi
.LVL83:
	.loc 1 136 13 discriminator 2
	bne	a0,zero,.L56
	.loc 1 136 84 is_stmt 1 discriminator 2
	.loc 1 137 5 discriminator 2
	.loc 1 137 10 discriminator 2
	.loc 1 137 22 is_stmt 0 discriminator 2
	mv	a1,s3
	mv	a0,s0
.LVL84:
	call	mpi_mod_2n
.LVL85:
	.loc 1 137 13 discriminator 2
	bne	a0,zero,.L56
	.loc 1 137 69 is_stmt 1 discriminator 2
	.loc 1 139 5 discriminator 2
	.loc 1 140 5 discriminator 2
	.loc 1 141 12 is_stmt 0 discriminator 2
	li	a5,1
	sw	a5,20(sp)
	.loc 1 142 12 discriminator 2
	sw	a5,24(sp)
	.loc 1 144 22 discriminator 2
	mv	a2,s0
	.loc 1 143 12 discriminator 2
	addi	a5,sp,4
	.loc 1 144 22 discriminator 2
	addi	a1,sp,20
	mv	a0,s0
.LVL86:
	.loc 1 140 22 discriminator 2
	sw	zero,4(sp)
	.loc 1 141 5 is_stmt 1 discriminator 2
	.loc 1 142 5 discriminator 2
	.loc 1 143 5 discriminator 2
	.loc 1 143 12 is_stmt 0 discriminator 2
	sw	a5,28(sp)
	.loc 1 144 5 is_stmt 1 discriminator 2
	.loc 1 144 10 discriminator 2
	.loc 1 144 22 is_stmt 0 discriminator 2
	call	mbedtls_mpi_sub_mpi
.LVL87:
	.loc 1 144 13 discriminator 2
	bne	a0,zero,.L56
	.loc 1 144 85 is_stmt 1 discriminator 2
	.loc 1 145 5 discriminator 2
	.loc 1 145 10 discriminator 2
	.loc 1 145 22 is_stmt 0 discriminator 2
	mv	a1,s3
	mv	a0,s0
.LVL88:
	call	mpi_mod_2n
.LVL89:
	.loc 1 147 1 discriminator 2
	j	.L56
.LVL90:
.L67:
	.cfi_def_cfa_offset 0
	.cfi_restore 1
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 18
	.cfi_restore 19
	.loc 1 151 1
	mv	a0,a5
.LVL91:
	ret
	.cfi_endproc
.LFE13:
	.size	mpi_hensel_quad_mod_inv_prime_n, .-mpi_hensel_quad_mod_inv_prime_n
	.section	.text.mpi_scalar_encode,"ax",@progbits
	.align	1
	.globl	mpi_scalar_encode
	.type	mpi_scalar_encode, @function
mpi_scalar_encode:
.LFB14:
	.loc 1 156 1 is_stmt 1
	.cfi_startproc
.LVL92:
	.loc 1 157 5
	.loc 1 158 16 is_stmt 0
	li	a5,-1
	.loc 1 157 8
	beq	a0,zero,.L92
	.loc 1 157 18 discriminator 1
	beq	a1,zero,.L92
	.loc 1 157 32 discriminator 2
	beq	a3,zero,.L92
	.loc 1 157 9 discriminator 3
	beq	a4,zero,.L92
	.loc 1 159 5 is_stmt 1
	.loc 1 159 9 is_stmt 0
	addi	a6,a2,-2
	.loc 1 159 8
	li	a7,6
	bgtu	a6,a7,.L92
	.loc 1 156 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s5,4(sp)
	.cfi_offset 21, -28
	.loc 1 162 18
	slli	s5,a1,5
	.loc 1 156 1
	sw	s1,20(sp)
	sw	s3,12(sp)
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	mv	s1,a2
	sw	s4,8(sp)
	mv	s3,a0
	.loc 1 162 5 is_stmt 1
.LVL93:
	.loc 1 163 5
	.cfi_offset 20, -24
	mv	s4,a1
	addi	a2,s5,1
.LVL94:
	li	a1,0
.LVL95:
	mv	a0,a3
.LVL96:
	.loc 1 156 1 is_stmt 0
	sw	s0,24(sp)
	sw	s2,16(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	mv	s2,a4
	mv	s0,a3
	.loc 1 163 5
	call	memset
.LVL97:
	.loc 1 164 5 is_stmt 1
	.loc 1 164 30 is_stmt 0
	li	a4,1
	sll	a4,a4,s1
.LVL98:
	.loc 1 165 5 is_stmt 1
.LBB10:
	.loc 1 174 26 is_stmt 0
	li	a7,32
.LBE10:
	.loc 1 165 20
	addi	t3,a4,-1
.LVL99:
	.loc 1 167 5 is_stmt 1
	.loc 1 168 5
	.loc 1 169 5
	.loc 1 170 5
.LBB11:
	.loc 1 189 28 is_stmt 0
	srli	t1,a4,1
.LBE11:
	.loc 1 169 14
	li	a0,0
	.loc 1 168 12
	li	a6,0
	.loc 1 167 12
	li	a1,0
.LBB12:
	.loc 1 174 26
	sub	t4,a7,s1
.LVL100:
.L72:
.LBE12:
	.loc 1 170 11 is_stmt 1
	bltu	a6,s5,.L77
	.loc 1 199 5
	.loc 1 199 8 is_stmt 0
	beq	a0,zero,.L78
	.loc 1 200 9 is_stmt 1
	.loc 1 200 21 is_stmt 0
	li	a5,1
	srb	a5,s0,a6,0
	.loc 1 201 9 is_stmt 1
	.loc 1 201 20 is_stmt 0
	addi	a1,a6,1
.LVL101:
.L78:
	.loc 1 203 5 is_stmt 1
	.loc 1 203 8 is_stmt 0
	beq	a1,zero,.L79
	.loc 1 204 9 is_stmt 1
	.loc 1 204 18 is_stmt 0
	sw	a1,0(s2)
.L95:
	.loc 1 208 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL102:
	.loc 1 207 12
	li	a5,0
	.loc 1 208 1
	lw	s1,20(sp)
	.cfi_restore 9
.LVL103:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL104:
	lw	s3,12(sp)
	.cfi_restore 19
.LVL105:
	lw	s4,8(sp)
	.cfi_restore 20
.LVL106:
	lw	s5,4(sp)
	.cfi_restore 21
.LVL107:
	mv	a0,a5
.LVL108:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL109:
.L77:
	.cfi_restore_state
.LBB13:
	.loc 1 171 9 is_stmt 1
	.loc 1 171 16 is_stmt 0
	srli	a2,a6,5
.LVL110:
	.loc 1 172 9 is_stmt 1
	.loc 1 175 21 is_stmt 0
	lrw	a5,s3,a2,2
	.loc 1 172 16
	andi	a3,a6,31
.LVL111:
	.loc 1 173 9 is_stmt 1
	.loc 1 174 9
	.loc 1 175 29 is_stmt 0
	slli	t5,a2,2
	.loc 1 175 21
	srl	a5,a5,a3
	.loc 1 174 12
	bgtu	t4,a3,.L73
	.loc 1 177 13 is_stmt 1
	.loc 1 177 25 is_stmt 0
	addi	a2,a2,1
.LVL112:
	.loc 1 177 16
	bgeu	a2,s4,.L73
	.loc 1 178 17 is_stmt 1
	.loc 1 178 65 is_stmt 0
	add	a2,s3,t5
.LVL113:
	.loc 1 178 79
	lw	a2,4(a2)
	.loc 1 178 86
	sub	a3,a7,a3
.LVL114:
	.loc 1 178 79
	sll	a3,a2,a3
	.loc 1 178 25
	or	a5,a5,a3
.LVL115:
.L73:
	.loc 1 183 9 is_stmt 1
	.loc 1 183 50 is_stmt 0
	and	a5,a5,t3
.LVL116:
	.loc 1 183 24
	add	a5,a5,a0
.LVL117:
	.loc 1 184 9 is_stmt 1
	.loc 1 184 21 is_stmt 0
	andi	a2,a5,1
	.loc 1 185 17
	addi	a3,a6,1
	.loc 1 184 12
	beq	a2,zero,.L74
	.loc 1 188 9 is_stmt 1
.LVL118:
	.loc 1 189 9
	.loc 1 189 12 is_stmt 0
	bleu	t1,a5,.L75
	.loc 1 190 13 is_stmt 1
.LVL119:
	.loc 1 191 13
	.loc 1 191 25 is_stmt 0
	srb	a5,s0,a6,0
	.loc 1 190 19
	li	a2,0
.LVL120:
.L76:
	.loc 1 197 9 is_stmt 1
	.loc 1 188 20 is_stmt 0
	mv	a1,a3
	.loc 1 197 13
	mv	a0,a2
	add	a3,s1,a6
.LVL121:
.L74:
	mv	a6,a3
	j	.L72
.LVL122:
.L75:
	.loc 1 193 13 is_stmt 1
	.loc 1 194 13
	.loc 1 194 34 is_stmt 0
	sub	a5,a5,a4
.LVL123:
	.loc 1 194 25
	srb	a5,s0,a6,0
	j	.L76
.LVL124:
.L79:
.LBE13:
	.loc 1 206 9 is_stmt 1
	.loc 1 206 18 is_stmt 0
	li	a5,1
	sw	a5,0(s2)
	j	.L95
.LVL125:
.L92:
	.cfi_def_cfa_offset 0
	.cfi_restore 1
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 18
	.cfi_restore 19
	.cfi_restore 20
	.cfi_restore 21
	.loc 1 208 1
	mv	a0,a5
.LVL126:
	ret
	.cfi_endproc
.LFE14:
	.size	mpi_scalar_encode, .-mpi_scalar_encode
	.text
.Letext0:
	.file 2 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\machine\\_default_types.h"
	.file 3 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\lib\\gcc\\riscv64-unknown-elf\\10.4.0\\include\\stddef.h"
	.file 4 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\sys\\_stdint.h"
	.file 5 ".\\components\\crypto\\mbedtls\\mbedtls\\include/mbedtls/bignum.h"
	.file 6 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\string.h"
	.file 7 ".\\components\\crypto\\mbedtls\\mbedtls\\include/mbedtls/platform.h"
	.file 8 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x8e2
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF62
	.byte	0xc
	.4byte	.LASF63
	.4byte	.LASF64
	.4byte	.Ldebug_ranges0+0x78
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	.LASF5
	.byte	0x2
	.byte	0x29
	.byte	0x15
	.4byte	0x31
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x2
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x60
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x2
	.4byte	.LASF11
	.byte	0x3
	.byte	0xd1
	.byte	0x16
	.4byte	0x7c
	.byte	0x5
	.4byte	0x83
	.byte	0x2
	.4byte	.LASF12
	.byte	0x4
	.byte	0x14
	.byte	0x12
	.4byte	0x25
	.byte	0x2
	.4byte	.LASF13
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x54
	.byte	0x5
	.4byte	0xa0
	.byte	0x6
	.byte	0x4
	.4byte	0xb7
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0x5
	.4byte	0xb7
	.byte	0x6
	.byte	0x4
	.4byte	0xbe
	.byte	0x2
	.4byte	.LASF15
	.byte	0x5
	.byte	0xa8
	.byte	0x12
	.4byte	0xa0
	.byte	0x7
	.4byte	.LASF16
	.byte	0xc
	.byte	0x5
	.byte	0xc4
	.byte	0x10
	.4byte	0x104
	.byte	0x8
	.string	"s"
	.byte	0x5
	.byte	0xd0
	.byte	0x9
	.4byte	0x75
	.byte	0
	.byte	0x8
	.string	"n"
	.byte	0x5
	.byte	0xd3
	.byte	0xc
	.4byte	0x83
	.byte	0x4
	.byte	0x8
	.string	"p"
	.byte	0x5
	.byte	0xd9
	.byte	0x17
	.4byte	0x104
	.byte	0x8
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xc9
	.byte	0x2
	.4byte	.LASF16
	.byte	0x5
	.byte	0xdb
	.byte	0x1
	.4byte	0xd5
	.byte	0x5
	.4byte	0x10a
	.byte	0x9
	.4byte	.LASF30
	.byte	0x1
	.byte	0x9b
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x249
	.byte	0xa
	.4byte	.LASF17
	.byte	0x1
	.byte	0x9b
	.byte	0x27
	.4byte	0x249
	.4byte	.LLST20
	.byte	0xa
	.4byte	.LASF18
	.byte	0x1
	.byte	0x9b
	.byte	0x36
	.4byte	0x83
	.4byte	.LLST21
	.byte	0xb
	.string	"w"
	.byte	0x1
	.byte	0x9b
	.byte	0x46
	.4byte	0x75
	.4byte	.LLST22
	.byte	0xa
	.4byte	.LASF19
	.byte	0x1
	.byte	0x9b
	.byte	0x51
	.4byte	0x24f
	.4byte	.LLST23
	.byte	0xa
	.4byte	.LASF20
	.byte	0x1
	.byte	0x9b
	.byte	0x61
	.4byte	0x255
	.4byte	.LLST24
	.byte	0xc
	.4byte	.LASF21
	.byte	0x1
	.byte	0xa2
	.byte	0x12
	.4byte	0x8f
	.4byte	.LLST25
	.byte	0xc
	.4byte	.LASF22
	.byte	0x1
	.byte	0xa4
	.byte	0x14
	.4byte	0xac
	.4byte	.LLST26
	.byte	0xc
	.4byte	.LASF23
	.byte	0x1
	.byte	0xa5
	.byte	0x14
	.4byte	0xac
	.4byte	.LLST27
	.byte	0xc
	.4byte	.LASF24
	.byte	0x1
	.byte	0xa7
	.byte	0xc
	.4byte	0x83
	.4byte	.LLST28
	.byte	0xd
	.string	"pos"
	.byte	0x1
	.byte	0xa8
	.byte	0xc
	.4byte	0x83
	.4byte	.LLST29
	.byte	0xc
	.4byte	.LASF25
	.byte	0x1
	.byte	0xa9
	.byte	0xe
	.4byte	0xa0
	.4byte	.LLST30
	.byte	0xe
	.4byte	.Ldebug_ranges0+0x50
	.4byte	0x22d
	.byte	0xc
	.4byte	.LASF26
	.byte	0x1
	.byte	0xab
	.byte	0x10
	.4byte	0x83
	.4byte	.LLST31
	.byte	0xc
	.4byte	.LASF27
	.byte	0x1
	.byte	0xac
	.byte	0x10
	.4byte	0x83
	.4byte	.LLST32
	.byte	0xc
	.4byte	.LASF28
	.byte	0x1
	.byte	0xad
	.byte	0x12
	.4byte	0xa0
	.4byte	.LLST33
	.byte	0xc
	.4byte	.LASF29
	.byte	0x1
	.byte	0xb7
	.byte	0x18
	.4byte	0xac
	.4byte	.LLST34
	.byte	0
	.byte	0xf
	.4byte	.LVL97
	.4byte	0x836
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x85
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xac
	.byte	0x6
	.byte	0x4
	.4byte	0x94
	.byte	0x6
	.byte	0x4
	.4byte	0x83
	.byte	0x9
	.4byte	.LASF31
	.byte	0x1
	.byte	0x6e
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x4d0
	.byte	0xb
	.string	"U"
	.byte	0x1
	.byte	0x6e
	.byte	0x32
	.4byte	0x4d0
	.4byte	.LLST15
	.byte	0xb
	.string	"a"
	.byte	0x1
	.byte	0x6e
	.byte	0x48
	.4byte	0x4d6
	.4byte	.LLST16
	.byte	0xb
	.string	"m"
	.byte	0x1
	.byte	0x6e
	.byte	0x5c
	.4byte	0xc9
	.4byte	.LLST17
	.byte	0xd
	.string	"ret"
	.byte	0x1
	.byte	0x70
	.byte	0x9
	.4byte	0x75
	.4byte	.LLST18
	.byte	0x11
	.string	"tmp"
	.byte	0x1
	.byte	0x77
	.byte	0x11
	.4byte	0x10a
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x12
	.4byte	.LASF34
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.4byte	.L56
	.byte	0x13
	.4byte	.LASF32
	.byte	0x1
	.byte	0x8b
	.byte	0x11
	.4byte	0x10a
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x11
	.string	"z_"
	.byte	0x1
	.byte	0x8c
	.byte	0x16
	.4byte	0xc9
	.byte	0x2
	.byte	0x91
	.byte	0x44
	.byte	0xe
	.4byte	.Ldebug_ranges0+0x38
	.4byte	0x391
	.byte	0xd
	.string	"i"
	.byte	0x1
	.byte	0x7b
	.byte	0x11
	.4byte	0x83
	.4byte	.LLST19
	.byte	0x14
	.4byte	.LVL60
	.4byte	0x842
	.byte	0x15
	.4byte	.LVL62
	.4byte	0x4dc
	.4byte	0x321
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL64
	.4byte	0x842
	.4byte	0x341
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL66
	.4byte	0x4dc
	.4byte	0x35b
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL68
	.4byte	0x84f
	.4byte	0x374
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0xf
	.4byte	.LVL70
	.4byte	0x85c
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL52
	.4byte	0x869
	.4byte	0x3a5
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0
	.byte	0x15
	.4byte	.LVL53
	.4byte	0x875
	.4byte	0x3be
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x15
	.4byte	.LVL55
	.4byte	0x882
	.4byte	0x3d2
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0
	.byte	0x15
	.4byte	.LVL73
	.4byte	0x842
	.4byte	0x3f2
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL75
	.4byte	0x4dc
	.4byte	0x40c
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL77
	.4byte	0x842
	.4byte	0x42c
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL79
	.4byte	0x4dc
	.4byte	0x446
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL81
	.4byte	0x84f
	.4byte	0x45f
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x15
	.4byte	.LVL83
	.4byte	0x85c
	.4byte	0x47f
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0
	.byte	0x15
	.4byte	.LVL85
	.4byte	0x4dc
	.4byte	0x499
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL87
	.4byte	0x85c
	.4byte	0x4b9
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LVL89
	.4byte	0x4dc
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x10a
	.byte	0x6
	.byte	0x4
	.4byte	0x116
	.byte	0x9
	.4byte	.LASF33
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x5d8
	.byte	0xb
	.string	"X"
	.byte	0x1
	.byte	0x5b
	.byte	0x1d
	.4byte	0x4d0
	.4byte	.LLST12
	.byte	0xb
	.string	"n"
	.byte	0x1
	.byte	0x5b
	.byte	0x31
	.4byte	0xc9
	.4byte	.LLST13
	.byte	0xd
	.string	"ret"
	.byte	0x1
	.byte	0x5d
	.byte	0x9
	.4byte	0x75
	.4byte	.LLST14
	.byte	0x11
	.string	"R"
	.byte	0x1
	.byte	0x5e
	.byte	0x11
	.4byte	0x10a
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x12
	.4byte	.LASF34
	.byte	0x1
	.byte	0x69
	.byte	0x1
	.4byte	.L49
	.byte	0x15
	.4byte	.LVL41
	.4byte	0x5d8
	.4byte	0x555
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL42
	.4byte	0x869
	.4byte	0x569
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0
	.byte	0x15
	.4byte	.LVL43
	.4byte	0x88e
	.4byte	0x588
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x15
	.4byte	.LVL45
	.4byte	0x89b
	.4byte	0x5a8
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0
	.byte	0x15
	.4byte	.LVL47
	.4byte	0x88e
	.4byte	0x5c7
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0xf
	.4byte	.LVL49
	.4byte	0x882
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0
	.byte	0
	.byte	0x9
	.4byte	.LASF35
	.byte	0x1
	.byte	0x45
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x670
	.byte	0xb
	.string	"X"
	.byte	0x1
	.byte	0x45
	.byte	0x27
	.4byte	0x4d0
	.4byte	.LLST6
	.byte	0xb
	.string	"bit"
	.byte	0x1
	.byte	0x45
	.byte	0x31
	.4byte	0x83
	.4byte	.LLST7
	.byte	0x16
	.4byte	.LASF36
	.byte	0x1
	.byte	0x47
	.byte	0x12
	.4byte	0x8f
	.byte	0x20
	.byte	0xc
	.4byte	.LASF37
	.byte	0x1
	.byte	0x4b
	.byte	0xc
	.4byte	0x83
	.4byte	.LLST8
	.byte	0xc
	.4byte	.LASF38
	.byte	0x1
	.byte	0x50
	.byte	0xc
	.4byte	0x83
	.4byte	.LLST9
	.byte	0xe
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x655
	.byte	0xd
	.string	"i"
	.byte	0x1
	.byte	0x4d
	.byte	0x11
	.4byte	0x83
	.4byte	.LLST10
	.byte	0
	.byte	0x17
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0xc
	.4byte	.LASF39
	.byte	0x1
	.byte	0x52
	.byte	0x1a
	.4byte	0xc9
	.4byte	.LLST11
	.byte	0
	.byte	0
	.byte	0x9
	.4byte	.LASF40
	.byte	0x1
	.byte	0x3a
	.byte	0x8
	.4byte	0x83
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x6ad
	.byte	0xb
	.string	"mpi"
	.byte	0x1
	.byte	0x3a
	.byte	0x25
	.4byte	0x4d6
	.4byte	.LLST5
	.byte	0x18
	.4byte	.Ldebug_ranges0+0
	.byte	0x11
	.string	"i"
	.byte	0x1
	.byte	0x3c
	.byte	0x11
	.4byte	0x83
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0
	.byte	0x9
	.4byte	.LASF41
	.byte	0x1
	.byte	0x2b
	.byte	0x8
	.4byte	0x83
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x6d8
	.byte	0xa
	.4byte	.LASF42
	.byte	0x1
	.byte	0x2b
	.byte	0x22
	.4byte	0x75
	.4byte	.LLST4
	.byte	0
	.byte	0x9
	.4byte	.LASF43
	.byte	0x1
	.byte	0x1b
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x711
	.byte	0xa
	.4byte	.LASF44
	.byte	0x1
	.byte	0x1b
	.byte	0x22
	.4byte	0x83
	.4byte	.LLST3
	.byte	0x13
	.4byte	.LASF45
	.byte	0x1
	.byte	0x1d
	.byte	0xc
	.4byte	0x83
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0x19
	.4byte	.LASF65
	.byte	0x1
	.byte	0x8
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x836
	.byte	0xb
	.string	"tag"
	.byte	0x1
	.byte	0x8
	.byte	0x1b
	.4byte	0xc3
	.4byte	.LLST0
	.byte	0xb
	.string	"bn"
	.byte	0x1
	.byte	0x8
	.byte	0x33
	.4byte	0x4d6
	.4byte	.LLST1
	.byte	0x1a
	.4byte	.LASF46
	.byte	0x1
	.byte	0xa
	.byte	0x12
	.4byte	0x8f
	.2byte	0x1001
	.byte	0xd
	.string	"buf"
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.4byte	0xb1
	.4byte	.LLST2
	.byte	0x13
	.4byte	.LASF47
	.byte	0x1
	.byte	0xe
	.byte	0xc
	.4byte	0x83
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x15
	.4byte	.LVL3
	.4byte	0x8a8
	.4byte	0x78d
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xa
	.2byte	0x1001
	.byte	0
	.byte	0x15
	.4byte	.LVL5
	.4byte	0x8b4
	.4byte	0x7aa
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL6
	.4byte	0x8c0
	.4byte	0x7d6
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xa
	.2byte	0x1001
	.byte	0x10
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x15
	.4byte	.LVL7
	.4byte	0x8b4
	.4byte	0x7ea
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL8
	.4byte	0x8b4
	.4byte	0x801
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x15
	.4byte	.LVL9
	.4byte	0x8cd
	.4byte	0x815
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LVL13
	.4byte	0x8d9
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x1001
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LASF48
	.4byte	.LASF48
	.byte	0x6
	.byte	0x21
	.byte	0x8
	.byte	0x1c
	.4byte	.LASF49
	.4byte	.LASF49
	.byte	0x5
	.2byte	0x2f8
	.byte	0x5
	.byte	0x1c
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0x5
	.2byte	0x252
	.byte	0x5
	.byte	0x1c
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0x5
	.2byte	0x2cc
	.byte	0x5
	.byte	0x1b
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0x5
	.byte	0xe5
	.byte	0x6
	.byte	0x1c
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0x5
	.2byte	0x16c
	.byte	0x5
	.byte	0x1b
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x5
	.byte	0xee
	.byte	0x6
	.byte	0x1c
	.4byte	.LASF55
	.4byte	.LASF55
	.byte	0x5
	.2byte	0x189
	.byte	0x5
	.byte	0x1c
	.4byte	.LASF56
	.4byte	.LASF56
	.byte	0x5
	.2byte	0x2be
	.byte	0x5
	.byte	0x1b
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0x7
	.byte	0x99
	.byte	0xe
	.byte	0x1b
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0x8
	.byte	0xc8
	.byte	0x5
	.byte	0x1c
	.4byte	.LASF59
	.4byte	.LASF59
	.byte	0x5
	.2byte	0x1d8
	.byte	0x5
	.byte	0x1b
	.4byte	.LASF60
	.4byte	.LASF60
	.byte	0x7
	.byte	0x9a
	.byte	0xd
	.byte	0x1b
	.4byte	.LASF61
	.4byte	.LASF61
	.byte	0x6
	.byte	0x74
	.byte	0x8
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
	.byte	0x3
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
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
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
	.byte	0x8
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
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
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0x1c
	.byte	0x5
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x1c
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
.LLST20:
	.4byte	.LVL92
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL96
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL105
	.4byte	.LVL109
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL125
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL126
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL92
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL95
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL106
	.4byte	.LVL109
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL125
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL92
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL94
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL103
	.4byte	.LVL109
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL125
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL92
	.4byte	.LVL97-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL97-1
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL102
	.4byte	.LVL109
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL125
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL92
	.4byte	.LVL97-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL97-1
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL104
	.4byte	.LVL109
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL125
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL93
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL107
	.4byte	.LVL109
	.2byte	0x6
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x35
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL98
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL99
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL100
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL118
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL122
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL100
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x6
	.byte	0x79
	.byte	0
	.byte	0x80
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL122
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL100
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL109
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL122
	.4byte	.LVL124
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL110
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL112
	.4byte	.LVL113
	.2byte	0x3
	.byte	0x7c
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL113
	.4byte	.LVL115
	.2byte	0x5
	.byte	0x80
	.byte	0
	.byte	0x35
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL111
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x5
	.byte	0x80
	.byte	0
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL117
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL51
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL56
	.4byte	.LVL59
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL91
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL50
	.4byte	.LVL52-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL52-1
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL57
	.4byte	.LVL59
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL90
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL50
	.4byte	.LVL52-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL52-1
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL90
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL70
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL59
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL40
	.4byte	.LVL41-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL41-1
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL49
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL40
	.4byte	.LVL41-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL41-1
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL49
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL40
	.4byte	.LVL44
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL29
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL33
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL39
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL27
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL31
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL39
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL28
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x7
	.byte	0x7f
	.byte	0x81,0x80,0x80,0x80,0x7c
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL30
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x6
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL32
	.4byte	.LVL35
	.2byte	0x7
	.byte	0x31
	.byte	0x7e
	.byte	0
	.byte	0x24
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0xa
	.byte	0x31
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x4f
	.byte	0x1a
	.byte	0x24
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL12
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x54
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	0
	.4byte	0
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0
	.4byte	0
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	0
	.4byte	0
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	0
	.4byte	0
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF30:
	.string	"mpi_scalar_encode"
.LASF36:
	.string	"limb_bits"
.LASF24:
	.string	"output_len"
.LASF28:
	.string	"bit_buf"
.LASF49:
	.string	"mbedtls_mpi_mul_mpi"
.LASF2:
	.string	"short int"
.LASF11:
	.string	"size_t"
.LASF20:
	.string	"out_len"
.LASF12:
	.string	"int8_t"
.LASF60:
	.string	"mbedtls_free"
.LASF6:
	.string	"__uint32_t"
.LASF37:
	.string	"higher_limb_idx"
.LASF55:
	.string	"mbedtls_mpi_set_bit"
.LASF17:
	.string	"scalar"
.LASF18:
	.string	"scalar_len"
.LASF35:
	.string	"mpi_clear_upper_bits"
.LASF22:
	.string	"width"
.LASF41:
	.string	"mpi_reg_size_to_words"
.LASF26:
	.string	"u32_idx"
.LASF16:
	.string	"mbedtls_mpi"
.LASF8:
	.string	"long long int"
.LASF47:
	.string	"olen"
.LASF21:
	.string	"bits"
.LASF38:
	.string	"bit_offset"
.LASF48:
	.string	"memset"
.LASF65:
	.string	"dump_mpi"
.LASF58:
	.string	"printf"
.LASF42:
	.string	"reg_size"
.LASF54:
	.string	"mbedtls_mpi_free"
.LASF1:
	.string	"unsigned char"
.LASF34:
	.string	"cleanup"
.LASF61:
	.string	"strlcpy"
.LASF23:
	.string	"window_mask"
.LASF63:
	.string	".\\components\\crypto\\mbedtls\\port\\hw_acc\\bignum_ext.c"
.LASF0:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF13:
	.string	"uint32_t"
.LASF10:
	.string	"unsigned int"
.LASF33:
	.string	"mpi_mod_2n"
.LASF57:
	.string	"mbedtls_calloc"
.LASF7:
	.string	"long unsigned int"
.LASF43:
	.string	"mpi_words_to_reg_size"
.LASF3:
	.string	"short unsigned int"
.LASF5:
	.string	"__int8_t"
.LASF25:
	.string	"carry"
.LASF14:
	.string	"char"
.LASF4:
	.string	"long int"
.LASF46:
	.string	"buf_len"
.LASF62:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF56:
	.string	"mbedtls_mpi_add_mpi"
.LASF45:
	.string	"bytes"
.LASF27:
	.string	"bit_idx"
.LASF40:
	.string	"mpi_words"
.LASF52:
	.string	"mbedtls_mpi_init"
.LASF39:
	.string	"mask"
.LASF15:
	.string	"mbedtls_mpi_uint"
.LASF51:
	.string	"mbedtls_mpi_sub_mpi"
.LASF29:
	.string	"window"
.LASF50:
	.string	"mbedtls_mpi_shift_l"
.LASF19:
	.string	"output"
.LASF64:
	.string	"C:\\\\Users\\\\cwier\\\\Documents\\\\GitHub\\\\qcom\\\\examples\\\\solutions\\\\rtsp_softap_cam\\\\build\\\\build_out\\\\components\\\\crypto\\\\mbedtls"
.LASF53:
	.string	"mbedtls_mpi_lset"
.LASF44:
	.string	"words"
.LASF32:
	.string	"zero"
.LASF31:
	.string	"mpi_hensel_quad_mod_inv_prime_n"
.LASF59:
	.string	"mbedtls_mpi_write_string"
	.ident	"GCC: (GNU) 10.4.0"
