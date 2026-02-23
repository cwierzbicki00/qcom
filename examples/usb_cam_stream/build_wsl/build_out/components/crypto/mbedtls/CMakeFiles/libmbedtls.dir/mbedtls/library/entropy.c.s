	.file	"entropy.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.entropy_update,"ax",@progbits
	.align	1
	.type	entropy_update, @function
entropy_update:
.LFB11:
	.file 1 "./components/crypto/mbedtls/mbedtls/library/entropy.c"
	.loc 1 165 1
	.cfi_startproc
.LVL0:
	.loc 1 166 5
	.loc 1 167 5
	.loc 1 168 5
	.loc 1 169 5
	.loc 1 165 1 is_stmt 0
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sw	s1,100(sp)
	sw	s2,96(sp)
	sw	s3,92(sp)
	sw	s4,88(sp)
	sw	ra,108(sp)
	sw	s0,104(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 172 8
	li	a5,64
	.loc 1 165 1
	mv	s4,a0
	mv	s1,a1
	mv	s3,a2
.LVL1:
	.loc 1 170 5 is_stmt 1
	.loc 1 172 5
	.loc 1 165 1 is_stmt 0
	mv	s2,a3
	.loc 1 172 8
	bleu	a3,a5,.L2
	.loc 1 174 9 is_stmt 1
	.loc 1 174 20 is_stmt 0
	li	a3,0
.LVL2:
	addi	a2,sp,16
.LVL3:
	mv	a1,s2
.LVL4:
	mv	a0,s3
.LVL5:
	call	mbedtls_sha512_ret
.LVL6:
	mv	s0,a0
.LVL7:
	.loc 1 174 12
	bne	a0,zero,.L3
	.loc 1 182 11
	addi	s3,sp,16
.LVL8:
	.loc 1 183 17
	li	s2,64
.LVL9:
.L2:
	.loc 1 186 5 is_stmt 1
	.loc 1 186 15 is_stmt 0
	sb	s1,12(sp)
	.loc 1 187 5 is_stmt 1
	.loc 1 196 16 is_stmt 0
	mv	s1,s4
	.loc 1 195 8
	lwia	a5,(s1),8,2
	.loc 1 187 15
	sb	s2,13(sp)
	.loc 1 195 5 is_stmt 1
	.loc 1 195 8 is_stmt 0
	beq	a5,zero,.L4
.L6:
	.loc 1 199 9 is_stmt 1
	.loc 1 199 34 is_stmt 0
	li	a5,1
	sw	a5,0(s4)
	.loc 1 201 5 is_stmt 1
	.loc 1 201 16 is_stmt 0
	li	a2,2
	addi	a1,sp,12
	mv	a0,s1
	call	mbedtls_sha512_update_ret
.LVL10:
	mv	s0,a0
.LVL11:
	.loc 1 201 8
	bne	a0,zero,.L3
	.loc 1 204 5 is_stmt 1
	.loc 1 204 11 is_stmt 0
	mv	a2,s2
	mv	a1,s3
	mv	a0,s1
	call	mbedtls_sha512_update_ret
.LVL12:
	mv	s0,a0
.LVL13:
	j	.L3
.LVL14:
.L4:
	.loc 1 196 16 discriminator 1
	li	a1,0
	mv	a0,s1
	call	mbedtls_sha512_starts_ret
.LVL15:
	mv	s0,a0
.LVL16:
	.loc 1 195 39 discriminator 1
	beq	a0,zero,.L6
.L3:
	.loc 1 219 5 is_stmt 1
	addi	a0,sp,16
	li	a1,64
	call	mbedtls_platform_zeroize
.LVL17:
	.loc 1 221 5
	.loc 1 222 1 is_stmt 0
	lw	ra,108(sp)
	.cfi_restore 1
	mv	a0,s0
	lw	s0,104(sp)
	.cfi_restore 8
.LVL18:
	lw	s1,100(sp)
	.cfi_restore 9
	lw	s2,96(sp)
	.cfi_restore 18
.LVL19:
	lw	s3,92(sp)
	.cfi_restore 19
.LVL20:
	lw	s4,88(sp)
	.cfi_restore 20
.LVL21:
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	entropy_update, .-entropy_update
	.section	.text.entropy_gather_internal.part.0,"ax",@progbits
	.align	1
	.type	entropy_gather_internal.part.0, @function
entropy_gather_internal.part.0:
.LFB16:
	.loc 1 249 12 is_stmt 1
	.cfi_startproc
.LVL22:
	addi	sp,sp,-176
	.cfi_def_cfa_offset 176
	sw	s0,168(sp)
	sw	s1,164(sp)
	sw	s2,160(sp)
	sw	s3,156(sp)
	sw	s4,152(sp)
	sw	s5,148(sp)
	sw	ra,172(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 1, -4
	.loc 1 249 12 is_stmt 0
	mv	s3,a0
	addi	s0,a0,452
	.loc 1 253 9
	li	s4,0
	.loc 1 264 12
	li	s2,0
	.loc 1 251 9
	li	s1,-60
	.loc 1 265 12
	li	s5,1
.LVL23:
.L10:
	.loc 1 264 17 is_stmt 1
	.loc 1 264 5 is_stmt 0
	lw	a5,448(s3)
	blt	s2,a5,.L15
	.loc 1 287 5 is_stmt 1
	.loc 1 287 8 is_stmt 0
	bne	s4,zero,.L12
	.loc 1 288 13
	li	s1,-61
.LVL24:
.L12:
	.loc 1 292 5 is_stmt 1
	addi	a0,sp,16
	li	a1,128
	call	mbedtls_platform_zeroize
.LVL25:
	.loc 1 294 5
	.loc 1 294 12 is_stmt 0
	mv	a0,s1
.LVL26:
.L9:
	.loc 1 295 1
	lw	ra,172(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,168(sp)
	.cfi_restore 8
	lw	s1,164(sp)
	.cfi_restore 9
	lw	s2,160(sp)
	.cfi_restore 18
.LVL27:
	lw	s3,156(sp)
	.cfi_restore 19
.LVL28:
	lw	s4,152(sp)
	.cfi_restore 20
.LVL29:
	lw	s5,148(sp)
	.cfi_restore 21
	addi	sp,sp,176
	.cfi_def_cfa_offset 0
	jr	ra
.LVL30:
.L15:
	.cfi_restore_state
	.loc 1 265 9 is_stmt 1
	.loc 1 265 27 is_stmt 0
	lw	a5,16(s0)
	.loc 1 265 12
	bne	a5,s5,.L11
	.loc 1 266 29
	li	s4,1
.LVL31:
.L11:
	.loc 1 269 9 is_stmt 1
	.loc 1 270 20 is_stmt 0
	lw	a5,0(s0)
	lw	a0,4(s0)
	.loc 1 269 14
	sw	zero,12(sp)
	.loc 1 270 9 is_stmt 1
	.loc 1 270 20 is_stmt 0
	addi	a3,sp,12
	li	a2,128
	addi	a1,sp,16
	jalr	a5
.LVL32:
	mv	s1,a0
.LVL33:
	.loc 1 270 12
	bne	a0,zero,.L12
	.loc 1 278 9 is_stmt 1
	.loc 1 278 18 is_stmt 0
	lw	a3,12(sp)
	.loc 1 278 12
	beq	a3,zero,.L13
	.loc 1 279 13 is_stmt 1
	.loc 1 279 24 is_stmt 0
	addi	a2,sp,16
	andi	a1,s2,0xff
	mv	a0,s3
	call	entropy_update
.LVL34:
	.loc 1 279 16
	bne	a0,zero,.L9
	.loc 1 283 13 is_stmt 1
	.loc 1 283 33 is_stmt 0
	lw	a5,8(s0)
	lw	a4,12(sp)
	add	a5,a5,a4
	sw	a5,8(s0)
.L13:
.LVL35:
	.loc 1 264 40 is_stmt 1
	.loc 1 264 41 is_stmt 0
	addi	s2,s2,1
.LVL36:
	addi	s0,s0,20
	j	.L10
	.cfi_endproc
.LFE16:
	.size	entropy_gather_internal.part.0, .-entropy_gather_internal.part.0
	.section	.text.mbedtls_entropy_free,"ax",@progbits
	.align	1
	.globl	mbedtls_entropy_free
	.type	mbedtls_entropy_free, @function
mbedtls_entropy_free:
.LFB9:
	.loc 1 99 1 is_stmt 1
	.cfi_startproc
.LVL37:
	.loc 1 102 5
	.loc 1 102 8 is_stmt 0
	lw	a5,0(a0)
	.loc 1 99 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s1,4(sp)
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 102 8
	li	s1,-1
	beq	a5,s1,.L20
	mv	s0,a0
	.loc 1 113 5 is_stmt 1
	addi	a0,a0,32
.LVL38:
	call	mbedtls_sha512_free
.LVL39:
	.loc 1 120 5
	.loc 1 121 5 is_stmt 0
	li	a1,400
	.loc 1 120 23
	sw	zero,448(s0)
	.loc 1 121 5 is_stmt 1
	addi	a0,s0,452
	call	mbedtls_platform_zeroize
.LVL40:
	.loc 1 122 5
	.loc 1 122 30 is_stmt 0
	sw	s1,0(s0)
.LVL41:
.L20:
	.loc 1 123 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	mbedtls_entropy_free, .-mbedtls_entropy_free
	.section	.text.mbedtls_entropy_add_source,"ax",@progbits
	.align	1
	.globl	mbedtls_entropy_add_source
	.type	mbedtls_entropy_add_source, @function
mbedtls_entropy_add_source:
.LFB10:
	.loc 1 128 1 is_stmt 1
	.cfi_startproc
.LVL42:
	.loc 1 129 5
	.loc 1 137 5
	.loc 1 137 9 is_stmt 0
	lw	a6,448(a0)
.LVL43:
	.loc 1 138 5 is_stmt 1
	.loc 1 138 8 is_stmt 0
	li	a5,19
	bgt	a6,a5,.L25
	.loc 1 143 5 is_stmt 1
	.loc 1 143 31 is_stmt 0
	li	a7,20
	mv	a5,a0
	mula	a5,a6,a7
	.loc 1 148 22
	addi	a6,a6,1
.LVL44:
	.loc 1 143 31
	addi	a5,a5,384
	sw	a1,68(a5)
	.loc 1 144 5 is_stmt 1
	.loc 1 144 31 is_stmt 0
	sw	a2,72(a5)
	.loc 1 145 5 is_stmt 1
	.loc 1 145 32 is_stmt 0
	sw	a3,80(a5)
	.loc 1 146 5 is_stmt 1
	.loc 1 146 29 is_stmt 0
	sw	a4,84(a5)
	.loc 1 148 5 is_stmt 1
	.loc 1 148 22 is_stmt 0
	sw	a6,448(a0)
.LVL45:
	.loc 1 129 14
	li	a0,0
.LVL46:
	ret
.LVL47:
.L25:
.L24:
	.loc 1 157 5 is_stmt 1
	.loc 1 139 13 is_stmt 0
	li	a0,-62
.LVL48:
	.loc 1 158 1
	ret
	.cfi_endproc
.LFE10:
	.size	mbedtls_entropy_add_source, .-mbedtls_entropy_add_source
	.section	.text.mbedtls_entropy_init,"ax",@progbits
	.align	1
	.globl	mbedtls_entropy_init
	.type	mbedtls_entropy_init, @function
mbedtls_entropy_init:
.LFB8:
	.loc 1 42 1 is_stmt 1
	.cfi_startproc
.LVL49:
	.loc 1 43 5
	.loc 1 42 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 44 5
	li	a2,400
	.loc 1 42 1
	mv	s0,a0
	.loc 1 44 5
	li	a1,0
	.loc 1 43 23
	sw	zero,448(a0)
	.loc 1 44 5 is_stmt 1
	addi	a0,a0,452
.LVL50:
	call	memset
.LVL51:
	.loc 1 50 5
	.loc 1 50 30 is_stmt 0
	mv	a0,s0
	swia	zero,(a0),8,2
	.loc 1 52 5 is_stmt 1
	call	mbedtls_sha512_init
.LVL52:
	.loc 1 85 5
	mv	a0,s0
	.loc 1 96 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
.LVL53:
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 85 5
	lui	a1,%hi(mbedtls_hardware_poll)
	.loc 1 96 1
	.loc 1 85 5
	li	a4,1
	li	a3,32
	li	a2,0
	addi	a1,a1,%lo(mbedtls_hardware_poll)
	.loc 1 96 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 85 5
	tail	mbedtls_entropy_add_source
.LVL54:
	.cfi_endproc
.LFE8:
	.size	mbedtls_entropy_init, .-mbedtls_entropy_init
	.section	.text.mbedtls_entropy_update_manual,"ax",@progbits
	.align	1
	.globl	mbedtls_entropy_update_manual
	.type	mbedtls_entropy_update_manual, @function
mbedtls_entropy_update_manual:
.LFB12:
	.loc 1 226 1 is_stmt 1
	.cfi_startproc
.LVL55:
	.loc 1 227 5
	.loc 1 235 5
	.loc 1 226 1 is_stmt 0
	mv	a3,a2
	.loc 1 235 11
	mv	a2,a1
.LVL56:
	li	a1,20
.LVL57:
	tail	entropy_update
.LVL58:
	.cfi_endproc
.LFE12:
	.size	mbedtls_entropy_update_manual, .-mbedtls_entropy_update_manual
	.section	.text.mbedtls_entropy_gather,"ax",@progbits
	.align	1
	.globl	mbedtls_entropy_gather
	.type	mbedtls_entropy_gather, @function
mbedtls_entropy_gather:
.LFB14:
	.loc 1 301 1 is_stmt 1
	.cfi_startproc
.LVL59:
	.loc 1 302 5
	.loc 1 310 5
.LBB4:
.LBB5:
	.loc 1 251 5
	.loc 1 252 5
	.loc 1 253 5
	.loc 1 254 5
	.loc 1 255 5
	.loc 1 257 5
	.loc 1 257 8 is_stmt 0
	lw	a5,448(a0)
	beq	a5,zero,.L30
	tail	entropy_gather_internal.part.0
.LVL60:
.L30:
.LBE5:
.LBE4:
	.loc 1 318 5 is_stmt 1
	.loc 1 319 1 is_stmt 0
	li	a0,-64
.LVL61:
	ret
	.cfi_endproc
.LFE14:
	.size	mbedtls_entropy_gather, .-mbedtls_entropy_gather
	.section	.text.mbedtls_entropy_func,"ax",@progbits
	.align	1
	.globl	mbedtls_entropy_func
	.type	mbedtls_entropy_func, @function
mbedtls_entropy_func:
.LFB15:
	.loc 1 322 1 is_stmt 1
	.cfi_startproc
.LVL62:
	.loc 1 323 5
	.loc 1 324 5
	.loc 1 325 5
	.loc 1 326 5
	.loc 1 328 5
	.loc 1 322 1 is_stmt 0
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sw	s0,104(sp)
	sw	ra,108(sp)
	sw	s1,100(sp)
	sw	s2,96(sp)
	sw	s3,92(sp)
	sw	s4,88(sp)
	sw	s5,84(sp)
	sw	s6,80(sp)
	sw	s7,76(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.loc 1 328 8
	li	a5,64
	.loc 1 329 16
	li	s0,-60
	.loc 1 328 8
	bgtu	a2,a5,.L31
	mv	s3,a2
	mv	s4,a1
	mv	s1,a0
	li	s2,258
	addi	s5,a0,460
	.loc 1 363 28
	li	s7,1
	.loc 1 373 34
	li	s6,63
.LVL63:
.L45:
	.loc 1 353 5 is_stmt 1
	.loc 1 354 9
	.loc 1 354 12 is_stmt 0
	addi	s2,s2,-1
.LVL64:
	beq	s2,zero,.L42
.LVL65:
	.loc 1 359 9 is_stmt 1
.LBB8:
.LBB9:
	.loc 1 251 5
	.loc 1 252 5
	.loc 1 253 5
	.loc 1 254 5
	.loc 1 255 5
	.loc 1 257 5
	.loc 1 257 8 is_stmt 0
	lw	a5,448(s1)
	beq	a5,zero,.L43
	mv	a0,s1
	call	entropy_gather_internal.part.0
.LVL66:
	mv	s0,a0
.LVL67:
.LBE9:
.LBE8:
	.loc 1 359 12
	bne	a0,zero,.L33
	.loc 1 365 28
	lw	a0,448(s1)
	mv	a5,s5
	.loc 1 365 16
	li	a3,0
	.loc 1 364 21
	li	a4,0
	.loc 1 363 28
	li	a2,1
.L34:
.LVL68:
	.loc 1 365 21 is_stmt 1 discriminator 1
	.loc 1 365 9 is_stmt 0 discriminator 1
	bgt	a0,a3,.L37
	.loc 1 373 13 is_stmt 1
	.loc 1 373 5 is_stmt 0
	beq	a2,zero,.L45
	.loc 1 373 34 discriminator 1
	bleu	a4,s6,.L45
	.loc 1 375 5 is_stmt 1
	li	a2,64
.LVL69:
	li	a1,0
	mv	a0,sp
	call	memset
.LVL70:
	.loc 1 383 5
	.loc 1 383 16 is_stmt 0
	addi	s2,s1,32
.LVL71:
	mv	a1,sp
	mv	a0,s2
	call	mbedtls_sha512_finish_ret
.LVL72:
	mv	s0,a0
.LVL73:
	.loc 1 383 8
	bne	a0,zero,.L33
	.loc 1 390 5 is_stmt 1
	mv	a0,s2
	call	mbedtls_sha512_free
.LVL74:
	.loc 1 391 5
	mv	a0,s2
	call	mbedtls_sha512_init
.LVL75:
	.loc 1 392 5
	.loc 1 392 16 is_stmt 0
	li	a1,0
	mv	a0,s2
	call	mbedtls_sha512_starts_ret
.LVL76:
	mv	s0,a0
.LVL77:
	.loc 1 392 8
	bne	a0,zero,.L33
	.loc 1 395 5 is_stmt 1
	.loc 1 395 16 is_stmt 0
	li	a2,64
	mv	a1,sp
	mv	a0,s2
	call	mbedtls_sha512_update_ret
.LVL78:
	mv	s0,a0
.LVL79:
	.loc 1 395 8
	bne	a0,zero,.L33
	.loc 1 403 5 is_stmt 1
	.loc 1 403 16 is_stmt 0
	li	a3,0
	mv	a2,sp
	li	a1,64
	mv	a0,sp
	call	mbedtls_sha512_ret
.LVL80:
	mv	s0,a0
.LVL81:
	.loc 1 403 8
	bne	a0,zero,.L33
	.loc 1 434 24
	lw	a4,448(s1)
	.loc 1 434 12
	li	a5,0
	.loc 1 435 29
	li	a3,20
.L39:
.LVL82:
	.loc 1 434 17 is_stmt 1 discriminator 1
	.loc 1 434 5 is_stmt 0 discriminator 1
	bgt	a4,a5,.L40
	.loc 1 438 5 is_stmt 1
	mv	a2,s3
	mv	a1,sp
	mv	a0,s4
	call	memcpy
.LVL83:
	.loc 1 440 5
.L33:
	.loc 1 443 5
	li	a1,64
	mv	a0,sp
	call	mbedtls_platform_zeroize
.LVL84:
	.loc 1 451 5
.L31:
	.loc 1 452 1 is_stmt 0
	lw	ra,108(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,s0
	lw	s0,104(sp)
	.cfi_restore 8
	lw	s1,100(sp)
	.cfi_restore 9
	lw	s2,96(sp)
	.cfi_restore 18
	lw	s3,92(sp)
	.cfi_restore 19
	lw	s4,88(sp)
	.cfi_restore 20
	lw	s5,84(sp)
	.cfi_restore 21
	lw	s6,80(sp)
	.cfi_restore 22
	lw	s7,76(sp)
	.cfi_restore 23
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
.LVL85:
.L37:
	.cfi_restore_state
	.loc 1 366 13 is_stmt 1
	.loc 1 366 31 is_stmt 0
	lw	a1,0(a5)
	.loc 1 366 16
	lw	a6,4(a5)
	bgeu	a1,a6,.L35
	.loc 1 367 36
	li	a2,0
.LVL86:
.L35:
	.loc 1 369 13 is_stmt 1
	.loc 1 369 16 is_stmt 0
	lw	a6,8(a5)
	bne	a6,s7,.L36
	.loc 1 370 17 is_stmt 1
	.loc 1 370 29 is_stmt 0
	add	a4,a4,a1
.LVL87:
.L36:
	.loc 1 365 44 is_stmt 1 discriminator 2
	.loc 1 365 45 is_stmt 0 discriminator 2
	addi	a3,a3,1
.LVL88:
	addi	a5,a5,20
	j	.L34
.LVL89:
.L40:
	.loc 1 435 9 is_stmt 1 discriminator 3
	.loc 1 435 29 is_stmt 0 discriminator 3
	mul	a2,a5,a3
	.loc 1 434 41 discriminator 3
	addi	a5,a5,1
.LVL90:
	.loc 1 435 29 discriminator 3
	srw	zero,s5,a2,0
	.loc 1 434 40 is_stmt 1 discriminator 3
.LVL91:
	j	.L39
.LVL92:
.L42:
	.loc 1 355 17 is_stmt 0
	li	s0,-60
	j	.L33
.LVL93:
.L43:
.LBB11:
.LBB10:
	.loc 1 258 16
	li	s0,-64
	j	.L33
.LBE10:
.LBE11:
	.cfi_endproc
.LFE15:
	.size	mbedtls_entropy_func, .-mbedtls_entropy_func
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/lib/gcc/riscv64-unknown-elf/10.4.0/include/stddef.h"
	.file 4 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 5 "./drivers/lhal/include/qcc74x_core.h"
	.file 6 "./drivers/lhal/include/qcc74x_sec_sha.h"
	.file 7 "./components/crypto/mbedtls/port/hw_acc/sha512_alt.h"
	.file 8 "./components/crypto/mbedtls/mbedtls/include/mbedtls/entropy.h"
	.file 9 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/string.h"
	.file 10 "./components/crypto/mbedtls/mbedtls/include/mbedtls/sha512.h"
	.file 11 "./components/crypto/mbedtls/mbedtls/include/mbedtls/platform_util.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xb0e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF80
	.byte	0xc
	.4byte	.LASF81
	.4byte	.LASF82
	.4byte	.Ldebug_ranges0+0x18
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
	.byte	0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x69
	.byte	0x20
	.4byte	0x7f
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0xd1
	.byte	0x16
	.4byte	0x8d
	.byte	0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x59
	.byte	0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x3c
	.byte	0x14
	.4byte	0x73
	.byte	0x6
	.byte	0x4
	.byte	0x7
	.byte	0x4
	.4byte	0x38
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.byte	0x4
	.4byte	0xcc
	.byte	0x7
	.byte	0x4
	.4byte	0xd3
	.byte	0x8
	.4byte	.LASF23
	.byte	0x10
	.byte	0x5
	.byte	0x67
	.byte	0x8
	.4byte	0x147
	.byte	0x9
	.4byte	.LASF17
	.byte	0x5
	.byte	0x68
	.byte	0x11
	.4byte	0xd8
	.byte	0
	.byte	0x9
	.4byte	.LASF18
	.byte	0x5
	.byte	0x69
	.byte	0xe
	.4byte	0xac
	.byte	0x4
	.byte	0x9
	.4byte	.LASF19
	.byte	0x5
	.byte	0x6a
	.byte	0xd
	.4byte	0xa0
	.byte	0x8
	.byte	0xa
	.string	"idx"
	.byte	0x5
	.byte	0x6b
	.byte	0xd
	.4byte	0xa0
	.byte	0x9
	.byte	0x9
	.4byte	.LASF20
	.byte	0x5
	.byte	0x6c
	.byte	0xd
	.4byte	0xa0
	.byte	0xa
	.byte	0x9
	.4byte	.LASF21
	.byte	0x5
	.byte	0x6d
	.byte	0xd
	.4byte	0xa0
	.byte	0xb
	.byte	0x9
	.4byte	.LASF22
	.byte	0x5
	.byte	0x6e
	.byte	0xb
	.4byte	0xc4
	.byte	0xc
	.byte	0
	.byte	0xb
	.4byte	0xb8
	.4byte	0x157
	.byte	0xc
	.4byte	0x8d
	.byte	0x1
	.byte	0
	.byte	0xb
	.4byte	0xa0
	.4byte	0x167
	.byte	0xc
	.4byte	0x8d
	.byte	0x7f
	.byte	0
	.byte	0x8
	.4byte	.LASF24
	.byte	0x48
	.byte	0x6
	.byte	0x2d
	.byte	0x8
	.4byte	0x1ef
	.byte	0xd
	.4byte	.LASF25
	.byte	0x6
	.byte	0x2f
	.byte	0xe
	.4byte	0xac
	.byte	0x4
	.byte	0x3
	.byte	0x1b
	.byte	0
	.byte	0xd
	.4byte	.LASF26
	.byte	0x6
	.byte	0x31
	.byte	0xe
	.4byte	0xac
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.byte	0xd
	.4byte	.LASF27
	.byte	0x6
	.byte	0x33
	.byte	0xe
	.4byte	0xac
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.byte	0xd
	.4byte	.LASF28
	.byte	0x6
	.byte	0x34
	.byte	0xe
	.4byte	0xac
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.byte	0xd
	.4byte	.LASF29
	.byte	0x6
	.byte	0x36
	.byte	0xe
	.4byte	0xac
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0
	.byte	0xd
	.4byte	.LASF30
	.byte	0x6
	.byte	0x38
	.byte	0xe
	.4byte	0xac
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0x9
	.4byte	.LASF31
	.byte	0x6
	.byte	0x39
	.byte	0xe
	.4byte	0xac
	.byte	0x4
	.byte	0x9
	.4byte	.LASF32
	.byte	0x6
	.byte	0x3a
	.byte	0xe
	.4byte	0x1ef
	.byte	0x8
	.byte	0
	.byte	0xb
	.4byte	0xac
	.4byte	0x1ff
	.byte	0xc
	.4byte	0x8d
	.byte	0xf
	.byte	0
	.byte	0xe
	.4byte	.LASF38
	.2byte	0x180
	.byte	0x20
	.byte	0x6
	.byte	0x4d
	.byte	0x8
	.4byte	0x254
	.byte	0x9
	.4byte	.LASF33
	.byte	0x6
	.byte	0x4e
	.byte	0xe
	.4byte	0x147
	.byte	0
	.byte	0xf
	.4byte	.LASF34
	.byte	0x6
	.byte	0x4f
	.byte	0x2a
	.4byte	0x157
	.byte	0x20
	.byte	0x20
	.byte	0xf
	.4byte	.LASF35
	.byte	0x6
	.byte	0x50
	.byte	0x2a
	.4byte	0x157
	.byte	0x20
	.byte	0xa0
	.byte	0x10
	.4byte	.LASF36
	.byte	0x6
	.byte	0x51
	.byte	0xe
	.4byte	0xac
	.2byte	0x120
	.byte	0x10
	.4byte	.LASF37
	.byte	0x6
	.byte	0x52
	.byte	0x1e
	.4byte	0x167
	.2byte	0x124
	.byte	0
	.byte	0xe
	.4byte	.LASF39
	.2byte	0x1a0
	.byte	0x20
	.byte	0x7
	.byte	0xe
	.byte	0x10
	.4byte	0x27f
	.byte	0xa
	.string	"sha"
	.byte	0x7
	.byte	0x10
	.byte	0x1d
	.4byte	0x27f
	.byte	0
	.byte	0xf
	.4byte	.LASF40
	.byte	0x7
	.byte	0x11
	.byte	0x25
	.4byte	0x1ff
	.byte	0x20
	.byte	0x20
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xde
	.byte	0x11
	.4byte	.LASF39
	.byte	0x7
	.byte	0x13
	.byte	0x1
	.4byte	0x254
	.byte	0x20
	.byte	0x3
	.4byte	.LASF41
	.byte	0x8
	.byte	0x5f
	.byte	0xf
	.4byte	0x29e
	.byte	0x7
	.byte	0x4
	.4byte	0x2a4
	.byte	0x12
	.4byte	0x86
	.4byte	0x2c2
	.byte	0x13
	.4byte	0xc4
	.byte	0x13
	.4byte	0xc6
	.byte	0x13
	.4byte	0x94
	.byte	0x13
	.4byte	0x2c2
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x94
	.byte	0x8
	.4byte	.LASF42
	.byte	0x14
	.byte	0x8
	.byte	0x65
	.byte	0x10
	.4byte	0x317
	.byte	0x9
	.4byte	.LASF43
	.byte	0x8
	.byte	0x66
	.byte	0x22
	.4byte	0x292
	.byte	0
	.byte	0x9
	.4byte	.LASF44
	.byte	0x8
	.byte	0x67
	.byte	0xb
	.4byte	0xc4
	.byte	0x4
	.byte	0x9
	.4byte	.LASF45
	.byte	0x8
	.byte	0x68
	.byte	0xc
	.4byte	0x94
	.byte	0x8
	.byte	0x9
	.4byte	.LASF46
	.byte	0x8
	.byte	0x69
	.byte	0xc
	.4byte	0x94
	.byte	0xc
	.byte	0x9
	.4byte	.LASF47
	.byte	0x8
	.byte	0x6a
	.byte	0x9
	.4byte	0x86
	.byte	0x10
	.byte	0
	.byte	0x3
	.4byte	.LASF42
	.byte	0x8
	.byte	0x6c
	.byte	0x1
	.4byte	0x2c8
	.byte	0xe
	.4byte	.LASF48
	.2byte	0x360
	.byte	0x20
	.byte	0x8
	.byte	0x71
	.byte	0x10
	.4byte	0x36a
	.byte	0x9
	.4byte	.LASF49
	.byte	0x8
	.byte	0x72
	.byte	0x9
	.4byte	0x86
	.byte	0
	.byte	0xf
	.4byte	.LASF50
	.byte	0x8
	.byte	0x76
	.byte	0x1c
	.4byte	0x285
	.byte	0x20
	.byte	0x20
	.byte	0x10
	.4byte	.LASF51
	.byte	0x8
	.byte	0x7a
	.byte	0x9
	.4byte	0x86
	.2byte	0x1c0
	.byte	0x10
	.4byte	.LASF52
	.byte	0x8
	.byte	0x7b
	.byte	0x22
	.4byte	0x36a
	.2byte	0x1c4
	.byte	0
	.byte	0xb
	.4byte	0x317
	.4byte	0x37a
	.byte	0xc
	.4byte	0x8d
	.byte	0x13
	.byte	0
	.byte	0x11
	.4byte	.LASF48
	.byte	0x8
	.byte	0x86
	.byte	0x1
	.4byte	0x323
	.byte	0x20
	.byte	0x14
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x141
	.byte	0x5
	.4byte	0x86
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x5a8
	.byte	0x15
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x141
	.byte	0x20
	.4byte	0xc4
	.4byte	.LLST24
	.byte	0x15
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x141
	.byte	0x35
	.4byte	0xc6
	.4byte	.LLST25
	.byte	0x16
	.string	"len"
	.byte	0x1
	.2byte	0x141
	.byte	0x44
	.4byte	0x94
	.4byte	.LLST26
	.byte	0x17
	.string	"ret"
	.byte	0x1
	.2byte	0x143
	.byte	0x9
	.4byte	0x86
	.4byte	.LLST27
	.byte	0x18
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x143
	.byte	0xe
	.4byte	0x86
	.4byte	.LLST28
	.byte	0x17
	.string	"i"
	.byte	0x1
	.2byte	0x143
	.byte	0x19
	.4byte	0x86
	.4byte	.LLST29
	.byte	0x18
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x143
	.byte	0x1c
	.4byte	0x86
	.4byte	.LLST30
	.byte	0x18
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x144
	.byte	0xc
	.4byte	0x94
	.4byte	.LLST31
	.byte	0x17
	.string	"ctx"
	.byte	0x1
	.2byte	0x145
	.byte	0x1e
	.4byte	0x5a8
	.4byte	.LLST32
	.byte	0x19
	.string	"buf"
	.byte	0x1
	.2byte	0x146
	.byte	0x13
	.4byte	0x5ae
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7f
	.byte	0x1a
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x1ba
	.byte	0x1
	.4byte	.L33
	.byte	0x1b
	.4byte	0x64e
	.4byte	.LBB8
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x167
	.byte	0x14
	.4byte	0x4b2
	.byte	0x1c
	.4byte	0x65f
	.4byte	.LLST33
	.byte	0x1d
	.4byte	.Ldebug_ranges0+0
	.byte	0x1e
	.4byte	0x66b
	.4byte	.LLST34
	.byte	0x1f
	.4byte	0x677
	.byte	0x1e
	.4byte	0x681
	.4byte	.LLST35
	.byte	0x1f
	.4byte	0x68d
	.byte	0x1f
	.4byte	0x699
	.byte	0x20
	.4byte	0x6a5
	.byte	0x21
	.4byte	.LVL66
	.4byte	0x9fc
	.byte	0x22
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	.LVL70
	.4byte	0xaa5
	.4byte	0x4d1
	.byte	0x22
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x22
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x22
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0x23
	.4byte	.LVL72
	.4byte	0xab1
	.4byte	0x4eb
	.byte	0x22
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x22
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	.LVL74
	.4byte	0xabd
	.4byte	0x4ff
	.byte	0x22
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	.LVL75
	.4byte	0xac9
	.4byte	0x513
	.byte	0x22
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	.LVL76
	.4byte	0xad5
	.4byte	0x52c
	.byte	0x22
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x22
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x23
	.4byte	.LVL78
	.4byte	0xae1
	.4byte	0x54c
	.byte	0x22
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x22
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x22
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0x23
	.4byte	.LVL80
	.4byte	0xaed
	.4byte	0x571
	.byte	0x22
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x22
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0x22
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x22
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x23
	.4byte	.LVL83
	.4byte	0xaf9
	.4byte	0x591
	.byte	0x22
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x22
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x22
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	.LVL84
	.4byte	0xb05
	.byte	0x22
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x22
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x37a
	.byte	0xb
	.4byte	0x38
	.4byte	0x5be
	.byte	0xc
	.4byte	0x8d
	.byte	0x3f
	.byte	0
	.byte	0x14
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x12c
	.byte	0x5
	.4byte	0x86
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x64e
	.byte	0x16
	.string	"ctx"
	.byte	0x1
	.2byte	0x12c
	.byte	0x35
	.4byte	0x5a8
	.4byte	.LLST19
	.byte	0x17
	.string	"ret"
	.byte	0x1
	.2byte	0x12e
	.byte	0x9
	.4byte	0x86
	.4byte	.LLST20
	.byte	0x24
	.4byte	0x64e
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.2byte	0x136
	.byte	0xb
	.byte	0x1c
	.4byte	0x65f
	.4byte	.LLST21
	.byte	0x1e
	.4byte	0x66b
	.4byte	.LLST22
	.byte	0x1f
	.4byte	0x677
	.byte	0x1e
	.4byte	0x681
	.4byte	.LLST23
	.byte	0x1f
	.4byte	0x68d
	.byte	0x1f
	.4byte	0x699
	.byte	0x20
	.4byte	0x6a5
	.byte	0x25
	.4byte	.LVL60
	.4byte	0x9fc
	.byte	0x22
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	.LASF83
	.byte	0x1
	.byte	0xf9
	.byte	0xc
	.4byte	0x86
	.byte	0x1
	.4byte	0x6af
	.byte	0x27
	.string	"ctx"
	.byte	0x1
	.byte	0xf9
	.byte	0x3d
	.4byte	0x5a8
	.byte	0x28
	.string	"ret"
	.byte	0x1
	.byte	0xfb
	.byte	0x9
	.4byte	0x86
	.byte	0x28
	.string	"i"
	.byte	0x1
	.byte	0xfc
	.byte	0x9
	.4byte	0x86
	.byte	0x29
	.4byte	.LASF60
	.byte	0x1
	.byte	0xfd
	.byte	0x9
	.4byte	0x86
	.byte	0x28
	.string	"buf"
	.byte	0x1
	.byte	0xfe
	.byte	0x13
	.4byte	0x6af
	.byte	0x29
	.4byte	.LASF61
	.byte	0x1
	.byte	0xff
	.byte	0xc
	.4byte	0x94
	.byte	0x2a
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x123
	.byte	0x1
	.byte	0
	.byte	0xb
	.4byte	0x38
	.4byte	0x6bf
	.byte	0xc
	.4byte	0x8d
	.byte	0x7f
	.byte	0
	.byte	0x2b
	.4byte	.LASF62
	.byte	0x1
	.byte	0xe0
	.byte	0x5
	.4byte	0x86
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x73c
	.byte	0x2c
	.string	"ctx"
	.byte	0x1
	.byte	0xe0
	.byte	0x3c
	.4byte	0x5a8
	.4byte	.LLST16
	.byte	0x2d
	.4byte	.LASF53
	.byte	0x1
	.byte	0xe1
	.byte	0x38
	.4byte	0x73c
	.4byte	.LLST17
	.byte	0x2c
	.string	"len"
	.byte	0x1
	.byte	0xe1
	.byte	0x45
	.4byte	0x94
	.4byte	.LLST18
	.byte	0x2e
	.string	"ret"
	.byte	0x1
	.byte	0xe3
	.byte	0x9
	.4byte	0x86
	.byte	0x92,0x7f
	.byte	0x25
	.4byte	.LVL58
	.4byte	0x742
	.byte	0x22
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x22
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x44
	.byte	0x22
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x22
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x3f
	.byte	0x2f
	.4byte	.LASF84
	.byte	0x1
	.byte	0xa3
	.byte	0xc
	.4byte	0x86
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x88d
	.byte	0x2c
	.string	"ctx"
	.byte	0x1
	.byte	0xa3
	.byte	0x34
	.4byte	0x5a8
	.4byte	.LLST0
	.byte	0x2d
	.4byte	.LASF63
	.byte	0x1
	.byte	0xa3
	.byte	0x47
	.4byte	0x38
	.4byte	.LLST1
	.byte	0x2d
	.4byte	.LASF53
	.byte	0x1
	.byte	0xa4
	.byte	0x30
	.4byte	0x73c
	.4byte	.LLST2
	.byte	0x2c
	.string	"len"
	.byte	0x1
	.byte	0xa4
	.byte	0x3d
	.4byte	0x94
	.4byte	.LLST3
	.byte	0x30
	.4byte	.LASF64
	.byte	0x1
	.byte	0xa6
	.byte	0x13
	.4byte	0x88d
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0x31
	.string	"tmp"
	.byte	0x1
	.byte	0xa7
	.byte	0x13
	.4byte	0x5ae
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x7f
	.byte	0x32
	.4byte	.LASF65
	.byte	0x1
	.byte	0xa8
	.byte	0xc
	.4byte	0x94
	.4byte	.LLST4
	.byte	0x33
	.string	"p"
	.byte	0x1
	.byte	0xa9
	.byte	0x1a
	.4byte	0x73c
	.4byte	.LLST5
	.byte	0x33
	.string	"ret"
	.byte	0x1
	.byte	0xaa
	.byte	0x9
	.4byte	0x86
	.4byte	.LLST6
	.byte	0x34
	.4byte	.LASF67
	.byte	0x1
	.byte	0xda
	.byte	0x1
	.4byte	.L3
	.byte	0x23
	.4byte	.LVL6
	.4byte	0xaed
	.4byte	0x81c
	.byte	0x22
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x22
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x22
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x7f
	.byte	0x22
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x23
	.4byte	.LVL10
	.4byte	0xae1
	.4byte	0x83c
	.byte	0x22
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x22
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0x22
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x23
	.4byte	.LVL12
	.4byte	0xae1
	.4byte	0x85c
	.byte	0x22
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x22
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x22
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	.LVL15
	.4byte	0xad5
	.4byte	0x875
	.byte	0x22
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x22
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x21
	.4byte	.LVL17
	.4byte	0xb05
	.byte	0x22
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x7f
	.byte	0x22
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0xb
	.4byte	0x38
	.4byte	0x89d
	.byte	0xc
	.4byte	0x8d
	.byte	0x1
	.byte	0
	.byte	0x2b
	.4byte	.LASF68
	.byte	0x1
	.byte	0x7d
	.byte	0x5
	.4byte	0x86
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x92c
	.byte	0x2c
	.string	"ctx"
	.byte	0x1
	.byte	0x7d
	.byte	0x39
	.4byte	0x5a8
	.4byte	.LLST12
	.byte	0x35
	.4byte	.LASF43
	.byte	0x1
	.byte	0x7e
	.byte	0x3d
	.4byte	0x292
	.byte	0x1
	.byte	0x5b
	.byte	0x35
	.4byte	.LASF44
	.byte	0x1
	.byte	0x7e
	.byte	0x4d
	.4byte	0xc4
	.byte	0x1
	.byte	0x5c
	.byte	0x35
	.4byte	.LASF46
	.byte	0x1
	.byte	0x7f
	.byte	0x27
	.4byte	0x94
	.byte	0x1
	.byte	0x5d
	.byte	0x35
	.4byte	.LASF47
	.byte	0x1
	.byte	0x7f
	.byte	0x36
	.4byte	0x86
	.byte	0x1
	.byte	0x5e
	.byte	0x33
	.string	"idx"
	.byte	0x1
	.byte	0x81
	.byte	0x9
	.4byte	0x86
	.4byte	.LLST13
	.byte	0x33
	.string	"ret"
	.byte	0x1
	.byte	0x81
	.byte	0xe
	.4byte	0x86
	.4byte	.LLST14
	.byte	0x34
	.4byte	.LASF66
	.byte	0x1
	.byte	0x96
	.byte	0x1
	.4byte	.L24
	.byte	0
	.byte	0x36
	.4byte	.LASF69
	.byte	0x1
	.byte	0x62
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x97f
	.byte	0x2c
	.string	"ctx"
	.byte	0x1
	.byte	0x62
	.byte	0x34
	.4byte	0x5a8
	.4byte	.LLST11
	.byte	0x23
	.4byte	.LVL39
	.4byte	0xabd
	.4byte	0x966
	.byte	0x22
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x20
	.byte	0
	.byte	0x21
	.4byte	.LVL40
	.4byte	0xb05
	.byte	0x22
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xc4,0x3
	.byte	0x22
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xa
	.2byte	0x190
	.byte	0
	.byte	0
	.byte	0x36
	.4byte	.LASF70
	.byte	0x1
	.byte	0x29
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x9fc
	.byte	0x2c
	.string	"ctx"
	.byte	0x1
	.byte	0x29
	.byte	0x34
	.4byte	0x5a8
	.4byte	.LLST15
	.byte	0x23
	.4byte	.LVL51
	.4byte	0xaa5
	.4byte	0x9c6
	.byte	0x22
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xc4,0x3
	.byte	0x22
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x22
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x190
	.byte	0
	.byte	0x23
	.4byte	.LVL52
	.4byte	0xac9
	.4byte	0x9da
	.byte	0x22
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x20
	.byte	0
	.byte	0x25
	.4byte	.LVL54
	.4byte	0x89d
	.byte	0x22
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x22
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0x22
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0x22
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x37
	.4byte	0x64e
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0xaa5
	.byte	0x1c
	.4byte	0x65f
	.4byte	.LLST7
	.byte	0x1e
	.4byte	0x66b
	.4byte	.LLST8
	.byte	0x1e
	.4byte	0x677
	.4byte	.LLST9
	.byte	0x1e
	.4byte	0x681
	.4byte	.LLST10
	.byte	0x38
	.4byte	0x68d
	.byte	0x3
	.byte	0x91
	.byte	0xe0,0x7e
	.byte	0x38
	.4byte	0x699
	.byte	0x3
	.byte	0x91
	.byte	0xdc,0x7e
	.byte	0x39
	.4byte	0x6a5
	.4byte	.L12
	.byte	0x23
	.4byte	.LVL25
	.4byte	0xb05
	.4byte	0xa69
	.byte	0x22
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xe0,0x7e
	.byte	0x22
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x80
	.byte	0
	.byte	0x3a
	.4byte	.LVL32
	.4byte	0xa87
	.byte	0x22
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xe0,0x7e
	.byte	0x22
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x80
	.byte	0x22
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x91
	.byte	0xdc,0x7e
	.byte	0
	.byte	0x21
	.4byte	.LVL34
	.4byte	0x742
	.byte	0x22
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x22
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x22
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0xe0,0x7e
	.byte	0
	.byte	0
	.byte	0x3b
	.4byte	.LASF71
	.4byte	.LASF71
	.byte	0x9
	.byte	0x21
	.byte	0x8
	.byte	0x3b
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0xa
	.byte	0x85
	.byte	0x5
	.byte	0x3b
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0xa
	.byte	0x4c
	.byte	0x6
	.byte	0x3b
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0xa
	.byte	0x42
	.byte	0x6
	.byte	0x3b
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0xa
	.byte	0x66
	.byte	0x5
	.byte	0x3b
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0xa
	.byte	0x75
	.byte	0x5
	.byte	0x3b
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0xa
	.byte	0xf5
	.byte	0x5
	.byte	0x3b
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0x9
	.byte	0x1f
	.byte	0x8
	.byte	0x3b
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0xb
	.byte	0xef
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
	.byte	0x9
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
	.byte	0xa
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
	.byte	0xb
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xd
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
	.byte	0xb
	.byte	0xb
	.byte	0xd
	.byte	0xb
	.byte	0xc
	.byte	0xb
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0x5
	.byte	0x88,0x1
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
	.byte	0xf
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
	.byte	0x88,0x1
	.byte	0xb
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x88,0x1
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
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
	.byte	0x15
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0xa
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x11
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x1b
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
	.byte	0x5
	.byte	0x57
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1d
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1e
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1f
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x20
	.byte	0xa
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x22
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x23
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
	.byte	0x24
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
	.byte	0x5
	.byte	0x57
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x25
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
	.byte	0x26
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
	.byte	0x27
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
	.byte	0x28
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
	.byte	0x29
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
	.byte	0x2a
	.byte	0xa
	.byte	0
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
	.byte	0x2b
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
	.byte	0x2c
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
	.byte	0x2d
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
	.byte	0x2e
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
	.byte	0x2f
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
	.byte	0x30
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
	.byte	0x31
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
	.byte	0x32
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
	.byte	0x33
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
	.byte	0x34
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
	.byte	0x35
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
	.byte	0x36
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
	.byte	0x37
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
	.byte	0x38
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x39
	.byte	0xa
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x3a
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x3b
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
.LLST24:
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL63
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL63
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL63
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL67
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL85
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x7
	.byte	0xa
	.2byte	0x103
	.byte	0x82
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x7
	.byte	0xa
	.2byte	0x102
	.byte	0x82
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LVL71
	.2byte	0x7
	.byte	0xa
	.2byte	0x103
	.byte	0x82
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL89
	.2byte	0x7
	.byte	0xa
	.2byte	0x103
	.byte	0x82
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x7
	.byte	0xa
	.2byte	0x102
	.byte	0x82
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LFE15
	.2byte	0x7
	.byte	0xa
	.2byte	0x103
	.byte	0x82
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL68
	.4byte	.LVL70-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL82
	.4byte	.LVL83-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL85
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x3
	.byte	0x7f
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL85
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL68
	.4byte	.LVL70-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL85
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL63
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL65
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL93
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL65
	.4byte	.LVL67
	.2byte	0x3
	.byte	0x9
	.byte	0xc4
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LFE15
	.2byte	0x3
	.byte	0x9
	.byte	0xc4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL65
	.4byte	.LVL67
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LFE15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL59
	.4byte	.LVL60-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL60-1
	.4byte	.LVL60
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL61
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x3
	.byte	0x9
	.byte	0x92
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LFE14
	.2byte	0x3
	.byte	0x9
	.byte	0xc0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL59
	.4byte	.LVL60-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL60-1
	.4byte	.LVL60
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x3
	.byte	0x9
	.byte	0xc4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL55
	.4byte	.LVL58-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL58-1
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL57
	.4byte	.LVL58-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL58-1
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL56
	.4byte	.LVL58-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL58-1
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL21
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL4
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL3
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL8
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL2
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL9
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL2
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL3
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL1
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL18
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL42
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL48
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x3
	.byte	0x7a
	.byte	0xc0,0x3
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x3
	.byte	0x80
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL42
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LFE10
	.2byte	0x3
	.byte	0x9
	.byte	0xc2
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL38
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL41
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL50
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL53
	.4byte	.LVL54-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL54-1
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL26
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL30
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL35
	.4byte	.LFE16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL23
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL30
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL23
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL30
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x64
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
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	0
	.4byte	0
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF23:
	.string	"qcc74x_device_s"
.LASF32:
	.string	"result"
.LASF51:
	.string	"source_count"
.LASF18:
	.string	"reg_base"
.LASF21:
	.string	"dev_type"
.LASF36:
	.string	"link_addr"
.LASF59:
	.string	"mbedtls_entropy_gather"
.LASF72:
	.string	"mbedtls_sha512_finish_ret"
.LASF15:
	.string	"uint64_t"
.LASF2:
	.string	"short int"
.LASF12:
	.string	"size_t"
.LASF20:
	.string	"sub_idx"
.LASF35:
	.string	"sha_padding"
.LASF6:
	.string	"__uint32_t"
.LASF38:
	.string	"qcc74x_sha512_link_ctx_s"
.LASF78:
	.string	"memcpy"
.LASF64:
	.string	"header"
.LASF73:
	.string	"mbedtls_sha512_free"
.LASF30:
	.string	"sha_msglen"
.LASF22:
	.string	"user_data"
.LASF39:
	.string	"mbedtls_sha512_context"
.LASF82:
	.string	"./examples/usb_cam_stream/build_wsl/build_out/components/crypto/mbedtls"
.LASF13:
	.string	"uint8_t"
.LASF70:
	.string	"mbedtls_entropy_init"
.LASF25:
	.string	"sha_mode"
.LASF57:
	.string	"strong_size"
.LASF50:
	.string	"accumulator"
.LASF8:
	.string	"long long int"
.LASF61:
	.string	"olen"
.LASF29:
	.string	"sha_mode_ext"
.LASF46:
	.string	"threshold"
.LASF71:
	.string	"memset"
.LASF4:
	.string	"long int"
.LASF31:
	.string	"sha_srcaddr"
.LASF24:
	.string	"qcc74x_sha_link_s"
.LASF62:
	.string	"mbedtls_entropy_update_manual"
.LASF5:
	.string	"__uint8_t"
.LASF52:
	.string	"source"
.LASF75:
	.string	"mbedtls_sha512_starts_ret"
.LASF66:
	.string	"exit"
.LASF1:
	.string	"unsigned char"
.LASF79:
	.string	"mbedtls_platform_zeroize"
.LASF27:
	.string	"sha_intclr"
.LASF67:
	.string	"cleanup"
.LASF76:
	.string	"mbedtls_sha512_update_ret"
.LASF0:
	.string	"signed char"
.LASF48:
	.string	"mbedtls_entropy_context"
.LASF10:
	.string	"long long unsigned int"
.LASF56:
	.string	"thresholds_reached"
.LASF14:
	.string	"uint32_t"
.LASF11:
	.string	"unsigned int"
.LASF81:
	.string	"./components/crypto/mbedtls/mbedtls/library/entropy.c"
.LASF42:
	.string	"mbedtls_entropy_source_state"
.LASF28:
	.string	"sha_intset"
.LASF74:
	.string	"mbedtls_sha512_init"
.LASF60:
	.string	"have_one_strong"
.LASF3:
	.string	"short unsigned int"
.LASF34:
	.string	"sha_buf"
.LASF40:
	.string	"link_ctx"
.LASF16:
	.string	"char"
.LASF65:
	.string	"use_len"
.LASF83:
	.string	"entropy_gather_internal"
.LASF47:
	.string	"strong"
.LASF9:
	.string	"__uint64_t"
.LASF53:
	.string	"data"
.LASF80:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF7:
	.string	"long unsigned int"
.LASF68:
	.string	"mbedtls_entropy_add_source"
.LASF45:
	.string	"size"
.LASF44:
	.string	"p_source"
.LASF55:
	.string	"count"
.LASF37:
	.string	"link_cfg"
.LASF17:
	.string	"name"
.LASF19:
	.string	"irq_num"
.LASF43:
	.string	"f_source"
.LASF54:
	.string	"output"
.LASF69:
	.string	"mbedtls_entropy_free"
.LASF33:
	.string	"total"
.LASF26:
	.string	"sha_newhash_dis"
.LASF41:
	.string	"mbedtls_entropy_f_source_ptr"
.LASF63:
	.string	"source_id"
.LASF49:
	.string	"accumulator_started"
.LASF58:
	.string	"mbedtls_entropy_func"
.LASF84:
	.string	"entropy_update"
.LASF77:
	.string	"mbedtls_sha512_ret"
	.ident	"GCC: (GNU) 10.4.0"
