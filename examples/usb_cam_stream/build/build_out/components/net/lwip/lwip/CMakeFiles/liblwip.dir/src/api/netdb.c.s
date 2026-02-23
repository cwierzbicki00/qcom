	.file	"netdb.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.lwip_gethostbyname,"ax",@progbits
	.align	1
	.globl	lwip_gethostbyname
	.type	lwip_gethostbyname, @function
lwip_gethostbyname:
.LFB5:
	.file 1 ".\\components\\net\\lwip\\lwip\\src\\api\\netdb.c"
	.loc 1 93 1
	.cfi_startproc
.LVL0:
	.loc 1 94 3
	.loc 1 95 3
	.loc 1 98 3
	.loc 1 99 3
	.loc 1 100 3
	.loc 1 101 3
	.loc 1 102 3
	.loc 1 105 3
	.loc 1 93 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 105 9
	addi	a1,sp,12
	.loc 1 93 1
	sw	s2,16(sp)
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.loc 1 93 1
	mv	s2,a0
	.loc 1 105 9
	call	netconn_gethostbyname
.LVL1:
	.loc 1 106 3 is_stmt 1
	.loc 1 106 6 is_stmt 0
	beq	a0,zero,.L2
	.loc 1 107 5 is_stmt 1 discriminator 4
	.loc 1 107 10 discriminator 4
	.loc 1 107 217 discriminator 4
	.loc 1 108 5 discriminator 4
	.loc 1 108 13 is_stmt 0 discriminator 4
	lui	a5,%hi(.LANCHOR1)
	li	a4,210
	sw	a4,%lo(.LANCHOR1)(a5)
	.loc 1 109 5 is_stmt 1 discriminator 4
	.loc 1 109 11 is_stmt 0 discriminator 4
	li	a0,0
.LVL2:
.L1:
	.loc 1 146 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
.LVL3:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL4:
.L2:
	.cfi_restore_state
	.loc 1 113 3 is_stmt 1
	.loc 1 113 18 is_stmt 0
	lw	a4,12(sp)
	.loc 1 116 3
	lui	a0,%hi(.LANCHOR4)
.LVL5:
	.loc 1 113 18
	lui	a5,%hi(.LANCHOR2)
	.loc 1 114 22
	lui	s0,%hi(.LANCHOR3)
	.loc 1 113 18
	addi	a5,a5,%lo(.LANCHOR2)
	.loc 1 114 22
	addi	s0,s0,%lo(.LANCHOR3)
	.loc 1 116 3
	addi	s1,a0,%lo(.LANCHOR4)
	li	a2,257
	mv	a1,s2
	addi	a0,a0,%lo(.LANCHOR4)
	.loc 1 113 18
	sw	a4,0(a5)
	.loc 1 114 3 is_stmt 1
	.loc 1 114 22 is_stmt 0
	sw	a5,0(s0)
	.loc 1 115 3 is_stmt 1
	.loc 1 115 22 is_stmt 0
	sw	zero,4(s0)
	.loc 1 116 3 is_stmt 1
	call	strlcpy
.LVL6:
	.loc 1 117 3
	.loc 1 117 20 is_stmt 0
	lui	a0,%hi(.LANCHOR0)
	.loc 1 118 13
	lui	a4,%hi(.LANCHOR5)
	.loc 1 117 20
	addi	a5,a0,%lo(.LANCHOR0)
	.loc 1 118 13
	addi	a4,a4,%lo(.LANCHOR5)
	sw	zero,0(a4)
	.loc 1 119 23
	sw	a4,4(a5)
	.loc 1 120 24
	li	a4,2
	sw	a4,8(a5)
	.loc 1 121 22
	li	a4,4
	.loc 1 117 20
	sw	s1,0(a5)
	.loc 1 118 3 is_stmt 1
	.loc 1 119 3
	.loc 1 120 3
	.loc 1 121 3
	.loc 1 121 22 is_stmt 0
	sw	a4,12(a5)
	.loc 1 122 3 is_stmt 1
	.loc 1 122 25 is_stmt 0
	sw	s0,16(a5)
	.loc 1 144 3 is_stmt 1
	.loc 1 144 10 is_stmt 0
	addi	a0,a0,%lo(.LANCHOR0)
	j	.L1
	.cfi_endproc
.LFE5:
	.size	lwip_gethostbyname, .-lwip_gethostbyname
	.section	.text.lwip_gethostbyname_r,"ax",@progbits
	.align	1
	.globl	lwip_gethostbyname_r
	.type	lwip_gethostbyname_r, @function
lwip_gethostbyname_r:
.LFB6:
	.loc 1 167 1 is_stmt 1
	.cfi_startproc
.LVL7:
	.loc 1 168 3
	.loc 1 169 3
	.loc 1 170 3
	.loc 1 171 3
	.loc 1 172 3
	.loc 1 174 3
	.loc 1 167 1 is_stmt 0
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	s0,72(sp)
	sw	s1,68(sp)
	sw	s2,64(sp)
	sw	s3,60(sp)
	sw	s4,56(sp)
	sw	ra,76(sp)
	sw	s5,52(sp)
	sw	s6,48(sp)
	sw	s7,44(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 1, -4
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.loc 1 167 1
	mv	s3,a0
	mv	s1,a1
	mv	s0,a2
	mv	s4,a4
	.loc 1 176 14
	addi	s2,sp,28
	.loc 1 174 6
	beq	a5,zero,.L6
	mv	s2,a5
.L6:
.LVL8:
	.loc 1 179 3 is_stmt 1
	.loc 1 179 6 is_stmt 0
	bne	s4,zero,.L7
.L9:
	.loc 1 188 5 is_stmt 1
	.loc 1 188 15 is_stmt 0
	li	a5,22
.LVL9:
.L21:
	.loc 1 206 15 discriminator 4
	sw	a5,0(s2)
	.loc 1 207 5 is_stmt 1 discriminator 4
	.loc 1 207 12 is_stmt 0 discriminator 4
	li	a0,-1
.L5:
	.loc 1 229 1
	lw	ra,76(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	lw	s1,68(sp)
	.cfi_restore 9
.LVL10:
	lw	s2,64(sp)
	.cfi_restore 18
.LVL11:
	lw	s3,60(sp)
	.cfi_restore 19
.LVL12:
	lw	s4,56(sp)
	.cfi_restore 20
.LVL13:
	lw	s5,52(sp)
	.cfi_restore 21
	lw	s6,48(sp)
	.cfi_restore 22
	lw	s7,44(sp)
	.cfi_restore 23
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
.LVL14:
.L7:
	.cfi_restore_state
	.loc 1 185 3 is_stmt 1
	.loc 1 185 11 is_stmt 0
	sw	zero,0(s4)
	.loc 1 186 3 is_stmt 1
	.loc 1 186 6 is_stmt 0
	beq	s3,zero,.L9
	.loc 1 186 21 discriminator 1
	beq	s1,zero,.L9
	.loc 1 186 38 discriminator 2
	beq	s0,zero,.L9
	.loc 1 192 13
	mv	a0,s3
.LVL15:
	sw	a3,12(sp)
	.loc 1 192 3 is_stmt 1
	.loc 1 192 13 is_stmt 0
	call	strlen
.LVL16:
	.loc 1 193 6
	lw	a3,12(sp)
	.loc 1 193 55
	addi	a5,a0,20
	.loc 1 192 13
	mv	s6,a0
.LVL17:
	.loc 1 193 3 is_stmt 1
	.loc 1 193 6 is_stmt 0
	bleu	a5,a3,.L11
	.loc 1 195 5 is_stmt 1
	.loc 1 195 15 is_stmt 0
	li	a5,34
	j	.L21
.L11:
	.loc 1 199 3 is_stmt 1
	.loc 1 199 72 is_stmt 0
	addi	s0,s0,3
.LVL18:
	.loc 1 199 77
	andi	s0,s0,-4
.LVL19:
	.loc 1 200 3 is_stmt 1
	.loc 1 203 9 is_stmt 0
	addi	s7,s0,8
	mv	a1,s7
	mv	a0,s3
.LVL20:
	.loc 1 200 12
	addi	s5,s0,16
.LVL21:
	.loc 1 203 3 is_stmt 1
	.loc 1 203 9 is_stmt 0
	call	netconn_gethostbyname
.LVL22:
	.loc 1 204 3 is_stmt 1
	.loc 1 204 6 is_stmt 0
	beq	a0,zero,.L12
	.loc 1 205 5 is_stmt 1 discriminator 4
	.loc 1 205 10 discriminator 4
	.loc 1 205 217 discriminator 4
	.loc 1 206 5 discriminator 4
	.loc 1 206 15 is_stmt 0 discriminator 4
	li	a5,210
	j	.L21
.L12:
	.loc 1 211 3 is_stmt 1
	mv	a2,s6
	mv	a1,s3
	mv	a0,s5
.LVL23:
	call	memcpy
.LVL24:
	.loc 1 212 3
	.loc 1 212 21 is_stmt 0
	srb	zero,s5,s6,0
	.loc 1 215 3 is_stmt 1
	.loc 1 215 19 is_stmt 0
	sw	s7,0(s0)
	.loc 1 216 3 is_stmt 1
	.loc 1 216 19 is_stmt 0
	sw	zero,4(s0)
	.loc 1 217 3 is_stmt 1
	.loc 1 217 14 is_stmt 0
	mv	a5,s0
	swib	zero,(a5),12,0
	.loc 1 218 3 is_stmt 1
	.loc 1 219 18 is_stmt 0
	sw	a5,4(s1)
	.loc 1 220 19
	li	a5,2
	sw	a5,8(s1)
	.loc 1 221 17
	li	a5,4
	.loc 1 218 15
	sw	s5,0(s1)
	.loc 1 219 3 is_stmt 1
	.loc 1 220 3
	.loc 1 221 3
	.loc 1 221 17 is_stmt 0
	sw	a5,12(s1)
	.loc 1 222 3 is_stmt 1
	.loc 1 222 20 is_stmt 0
	sw	s0,16(s1)
	.loc 1 225 3 is_stmt 1
	.loc 1 225 11 is_stmt 0
	sw	s1,0(s4)
	.loc 1 228 3 is_stmt 1
	.loc 1 228 10 is_stmt 0
	li	a0,0
	j	.L5
	.cfi_endproc
.LFE6:
	.size	lwip_gethostbyname_r, .-lwip_gethostbyname_r
	.section	.text.lwip_freeaddrinfo,"ax",@progbits
	.align	1
	.globl	lwip_freeaddrinfo
	.type	lwip_freeaddrinfo, @function
lwip_freeaddrinfo:
.LFB7:
	.loc 1 240 1 is_stmt 1
	.cfi_startproc
.LVL25:
	.loc 1 241 3
	.loc 1 243 3
	.loc 1 243 9
	.loc 1 240 1 is_stmt 0
	mv	a1,a0
	.loc 1 243 9
	bne	a0,zero,.L27
	ret
.L27:
	.loc 1 240 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
.LVL26:
.L24:
	.loc 1 244 5 is_stmt 1
	.loc 1 244 10 is_stmt 0
	lw	s0,28(a1)
.LVL27:
	.loc 1 245 5 is_stmt 1
	li	a0,10
	call	memp_free
.LVL28:
	.loc 1 246 5
	.loc 1 246 8 is_stmt 0
	mv	a1,s0
	.loc 1 243 9 is_stmt 1
	bne	s0,zero,.L24
	.loc 1 248 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL29:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	lwip_freeaddrinfo, .-lwip_freeaddrinfo
	.section	.text.lwip_getaddrinfo,"ax",@progbits
	.align	1
	.globl	lwip_getaddrinfo
	.type	lwip_getaddrinfo, @function
lwip_getaddrinfo:
.LFB8:
	.loc 1 274 1 is_stmt 1
	.cfi_startproc
.LVL30:
	.loc 1 275 3
	.loc 1 276 3
	.loc 1 277 3
	.loc 1 278 3
	.loc 1 279 3
	.loc 1 280 3
	.loc 1 281 3
	.loc 1 282 3
	.loc 1 284 3
	.loc 1 284 6 is_stmt 0
	bne	a3,zero,.L29
	.loc 1 285 12
	li	a5,202
	.loc 1 419 1
	mv	a0,a5
.LVL31:
	ret
.LVL32:
.L29:
	.loc 1 274 1
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	sw	s4,40(sp)
	sw	ra,60(sp)
	sw	s3,44(sp)
	sw	s5,36(sp)
	sw	s6,32(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 20, -24
	.cfi_offset 1, -4
	.cfi_offset 19, -20
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.loc 1 287 8
	sw	zero,0(a3)
	mv	s4,a3
	mv	s1,a2
	mv	s0,a1
	mv	s2,a0
	.loc 1 287 3 is_stmt 1
	.loc 1 288 3
	.loc 1 288 6 is_stmt 0
	bne	a0,zero,.L31
.LVL33:
	.loc 1 288 25 discriminator 1
	bne	a1,zero,.L32
.LVL34:
.L39:
	.loc 1 289 12
	li	a5,200
	j	.L28
.LVL35:
.L31:
	.loc 1 292 3 is_stmt 1
	.loc 1 292 6 is_stmt 0
	beq	a2,zero,.L33
.L47:
	.loc 1 293 5 is_stmt 1
.LVL36:
	.loc 1 294 5
	.loc 1 294 8 is_stmt 0
	lw	s3,4(s1)
	.loc 1 302 14
	li	a5,204
	.loc 1 294 8
	andi	s3,s3,-3
	bne	s3,zero,.L28
.LVL37:
	.loc 1 308 3 is_stmt 1
	.loc 1 308 6 is_stmt 0
	beq	s0,zero,.L34
.L48:
	.loc 1 311 5 is_stmt 1
	.loc 1 311 15 is_stmt 0
	mv	a0,s0
.LVL38:
	call	atoi
.LVL39:
	mv	s3,a0
.LVL40:
	.loc 1 312 5 is_stmt 1
	.loc 1 312 8 is_stmt 0
	bne	a0,zero,.L35
	.loc 1 312 22 discriminator 1
	lbu	a3,0(s0)
	li	a4,48
	.loc 1 314 14 discriminator 1
	li	a5,201
	.loc 1 312 22 discriminator 1
	bne	a3,a4,.L28
.L36:
	.loc 1 321 3 is_stmt 1
	.loc 1 321 6 is_stmt 0
	beq	s2,zero,.L37
	.loc 1 323 5 is_stmt 1
	.loc 1 323 8 is_stmt 0
	beq	s1,zero,.L38
.LVL41:
.L49:
	.loc 1 323 44 discriminator 1
	lw	a5,0(s1)
	andi	a5,a5,4
	.loc 1 323 24 discriminator 1
	beq	a5,zero,.L38
	.loc 1 325 7 is_stmt 1
	.loc 1 325 12 is_stmt 0
	addi	a1,sp,28
	mv	a0,s2
	call	ip4addr_aton
.LVL42:
	.loc 1 325 10
	beq	a0,zero,.L39
.L40:
	.loc 1 358 3 is_stmt 1
.LVL43:
	.loc 1 359 3
	.loc 1 360 5
	.loc 1 360 15 is_stmt 0
	mv	a0,s2
	call	strlen
.LVL44:
	.loc 1 361 8
	li	a5,256
	.loc 1 360 15
	mv	s5,a0
.LVL45:
	.loc 1 361 5 is_stmt 1
	.loc 1 366 16 is_stmt 0
	addi	a2,a0,49
	.loc 1 361 8
	bgtu	a0,a5,.L41
.LVL46:
.L46:
	.loc 1 371 27
	li	a0,10
	sw	a2,12(sp)
.LVL47:
	.loc 1 370 45 is_stmt 1
	.loc 1 371 3
	.loc 1 371 27 is_stmt 0
	call	memp_malloc
.LVL48:
	mv	s0,a0
.LVL49:
	.loc 1 372 3 is_stmt 1
	.loc 1 373 12 is_stmt 0
	li	a5,203
	.loc 1 372 6
	beq	a0,zero,.L28
	.loc 1 375 3 is_stmt 1
	lw	a2,12(sp)
	li	a1,0
	.loc 1 377 6 is_stmt 0
	addi	s6,s0,32
	.loc 1 375 3
	call	memset
.LVL50:
	.loc 1 377 3 is_stmt 1
	.loc 1 378 3
.LBB2:
	.loc 1 391 5
	.loc 1 393 5
	.loc 1 393 31 is_stmt 0
	lw	a5,28(sp)
	.loc 1 396 21
	extu	a0,s3,15,0
	.loc 1 393 31
	sw	a5,36(s0)
	.loc 1 394 5 is_stmt 1
	.loc 1 395 5
	.loc 1 395 18 is_stmt 0
	li	a5,528
	sh	a5,32(s0)
	.loc 1 396 5 is_stmt 1
	.loc 1 396 21 is_stmt 0
	call	lwip_htons
.LVL51:
	.loc 1 397 19
	li	a5,2
	.loc 1 396 19
	sh	a0,34(s0)
	.loc 1 397 5 is_stmt 1
	.loc 1 397 19 is_stmt 0
	sw	a5,4(s0)
.LBE2:
	.loc 1 402 3 is_stmt 1
	.loc 1 402 6 is_stmt 0
	beq	s1,zero,.L43
	.loc 1 404 5 is_stmt 1
	.loc 1 404 28 is_stmt 0
	lw	a5,8(s1)
	.loc 1 404 21
	sw	a5,8(s0)
	.loc 1 405 5 is_stmt 1
	.loc 1 405 28 is_stmt 0
	lw	a5,12(s1)
	.loc 1 405 21
	sw	a5,12(s0)
.L43:
	.loc 1 407 3 is_stmt 1
	.loc 1 407 6 is_stmt 0
	beq	s2,zero,.L44
	.loc 1 409 5 is_stmt 1
	.loc 1 409 62 is_stmt 0
	addi	a0,s0,48
	.loc 1 409 22
	sw	a0,24(s0)
	.loc 1 410 5 is_stmt 1
	mv	a2,s5
	mv	a1,s2
	call	memcpy
.LVL52:
	.loc 1 411 5
	.loc 1 411 31 is_stmt 0
	lw	a5,24(s0)
	srb	zero,a5,s5,0
.L44:
	.loc 1 413 3 is_stmt 1
	.loc 1 413 18 is_stmt 0
	li	a5,16
	sw	a5,16(s0)
	.loc 1 414 3 is_stmt 1
	.loc 1 414 15 is_stmt 0
	sw	s6,20(s0)
	.loc 1 416 3 is_stmt 1
	.loc 1 416 8 is_stmt 0
	sw	s0,0(s4)
	.loc 1 418 3 is_stmt 1
	.loc 1 418 10 is_stmt 0
	li	a5,0
	j	.L28
.LVL53:
.L35:
	.loc 1 316 5 is_stmt 1
	.loc 1 316 8 is_stmt 0
	li	a4,65536
	.loc 1 314 14
	li	a5,201
	.loc 1 316 8
	bltu	a0,a4,.L36
	j	.L28
.LVL54:
.L54:
	.loc 1 354 24
	li	a5,16777216
	addi	a5,a5,127
	j	.L42
.LVL55:
.L32:
	.loc 1 292 3 is_stmt 1
	.loc 1 292 6 is_stmt 0
	bne	a2,zero,.L47
	j	.L48
.L33:
	.loc 1 308 3 is_stmt 1
	.loc 1 279 7 is_stmt 0
	li	s3,0
	.loc 1 308 6
	bne	a1,zero,.L48
.LVL56:
.L38:
	.loc 1 344 7 is_stmt 1
	.loc 1 344 13 is_stmt 0
	addi	a1,sp,28
	mv	a0,s2
	call	netconn_gethostbyname
.LVL57:
	.loc 1 345 7 is_stmt 1
	.loc 1 345 10 is_stmt 0
	beq	a0,zero,.L40
.LVL58:
.L41:
	.loc 1 285 12
	li	a5,202
.LVL59:
.L28:
	.loc 1 419 1
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	lw	s1,52(sp)
	.cfi_restore 9
.LVL60:
	lw	s2,48(sp)
	.cfi_restore 18
.LVL61:
	lw	s3,44(sp)
	.cfi_restore 19
	lw	s4,40(sp)
	.cfi_restore 20
.LVL62:
	lw	s5,36(sp)
	.cfi_restore 21
	lw	s6,32(sp)
	.cfi_restore 22
	mv	a0,a5
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL63:
.L34:
	.cfi_restore_state
	.loc 1 321 3 is_stmt 1
	.loc 1 321 6 is_stmt 0
	bne	s2,zero,.L49
.LVL64:
.L37:
	.loc 1 351 5 is_stmt 1
	.loc 1 351 8 is_stmt 0
	beq	s1,zero,.L54
	.loc 1 351 44 discriminator 1
	lw	a5,0(s1)
	andi	a5,a5,1
	.loc 1 351 24 discriminator 1
	beq	a5,zero,.L54
	.loc 1 352 24
	li	a5,0
.L42:
	sw	a5,28(sp)
	.loc 1 358 3 is_stmt 1
.LVL65:
	.loc 1 359 3
	.loc 1 281 10 is_stmt 0
	li	s5,0
	.loc 1 358 14
	li	a2,48
	j	.L46
	.cfi_endproc
.LFE8:
	.size	lwip_getaddrinfo, .-lwip_getaddrinfo
	.globl	h_errno
	.section	.bss.h_errno,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	h_errno, @object
	.size	h_errno, 4
h_errno:
	.zero	4
	.section	.bss.s_aliases.0,"aw",@nobits
	.align	2
	.set	.LANCHOR5,. + 0
	.type	s_aliases.0, @object
	.size	s_aliases.0, 4
s_aliases.0:
	.zero	4
	.section	.bss.s_hostent.1,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	s_hostent.1, @object
	.size	s_hostent.1, 20
s_hostent.1:
	.zero	20
	.section	.bss.s_hostent_addr.4,"aw",@nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	s_hostent_addr.4, @object
	.size	s_hostent_addr.4, 4
s_hostent_addr.4:
	.zero	4
	.section	.bss.s_hostname.2,"aw",@nobits
	.align	2
	.set	.LANCHOR4,. + 0
	.type	s_hostname.2, @object
	.size	s_hostname.2, 257
s_hostname.2:
	.zero	257
	.section	.bss.s_phostent_addr.3,"aw",@nobits
	.align	2
	.set	.LANCHOR3,. + 0
	.type	s_phostent_addr.3, @object
	.size	s_phostent_addr.3, 8
s_phostent_addr.3:
	.zero	8
	.text
.Letext0:
	.file 2 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\machine\\_default_types.h"
	.file 3 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\lib\\gcc\\riscv64-unknown-elf\\10.4.0\\include\\stddef.h"
	.file 4 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\sys\\_stdint.h"
	.file 5 ".\\components\\libc\\sys\\types.h"
	.file 6 ".\\components\\net\\lwip\\lwip\\src\\include/lwip/arch.h"
	.file 7 ".\\components\\net\\lwip\\lwip\\src\\include/lwip/ip4_addr.h"
	.file 8 ".\\components\\net\\lwip\\lwip\\src\\include/lwip/ip_addr.h"
	.file 9 ".\\components\\net\\lwip\\lwip\\src\\include/lwip/inet.h"
	.file 10 ".\\components\\net\\lwip\\lwip\\src\\include/lwip/err.h"
	.file 11 ".\\components\\net\\lwip\\lwip\\src\\include/lwip/memp.h"
	.file 12 ".\\components\\net\\lwip\\lwip\\src\\include/lwip/sockets.h"
	.file 13 ".\\components\\net\\lwip\\lwip\\src\\include/lwip/netdb.h"
	.file 14 ".\\components\\net\\lwip\\lwip\\src\\include/lwip/def.h"
	.file 15 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\stdlib.h"
	.file 16 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\string.h"
	.file 17 ".\\components\\net\\lwip\\lwip\\src\\include/lwip/api.h"
	.file 18 ".\\components\\net\\lwip\\lwip\\src\\include/lwip/netif.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x9da
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF138
	.byte	0xc
	.4byte	.LASF139
	.4byte	.LASF140
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF1
	.byte	0x2
	.byte	0x29
	.byte	0x15
	.4byte	0x38
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x4b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.byte	0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x37
	.byte	0x13
	.4byte	0x5e
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.byte	0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x71
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.byte	0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x8b
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.byte	0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.byte	0x3
	.4byte	.LASF13
	.byte	0x2
	.byte	0xe8
	.byte	0x16
	.4byte	0xac
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.byte	0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0xd1
	.byte	0x16
	.4byte	0xac
	.byte	0x5
	.byte	0x4
	.4byte	0xc5
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.byte	0x6
	.4byte	0xc5
	.byte	0x5
	.byte	0x4
	.4byte	0xcc
	.byte	0x7
	.4byte	0xc5
	.4byte	0xe7
	.byte	0x8
	.4byte	0xac
	.byte	0x7
	.byte	0
	.byte	0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x14
	.byte	0x12
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x3f
	.byte	0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x20
	.byte	0x13
	.4byte	0x52
	.byte	0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x24
	.byte	0x14
	.4byte	0x65
	.byte	0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x7f
	.byte	0x3
	.4byte	.LASF22
	.byte	0x4
	.byte	0x52
	.byte	0x15
	.4byte	0xa0
	.byte	0x3
	.4byte	.LASF23
	.byte	0x5
	.byte	0x37
	.byte	0x14
	.4byte	0x7f
	.byte	0x3
	.4byte	.LASF24
	.byte	0x5
	.byte	0x3c
	.byte	0x14
	.4byte	0x65
	.byte	0x3
	.4byte	.LASF25
	.byte	0x6
	.byte	0x7d
	.byte	0x11
	.4byte	0xf3
	.byte	0x3
	.4byte	.LASF26
	.byte	0x6
	.byte	0x7e
	.byte	0x10
	.4byte	0xe7
	.byte	0x3
	.4byte	.LASF27
	.byte	0x6
	.byte	0x7f
	.byte	0x12
	.4byte	0x10b
	.byte	0x3
	.4byte	.LASF28
	.byte	0x6
	.byte	0x80
	.byte	0x11
	.4byte	0xff
	.byte	0x3
	.4byte	.LASF29
	.byte	0x6
	.byte	0x81
	.byte	0x12
	.4byte	0x117
	.byte	0x3
	.4byte	.LASF30
	.byte	0x6
	.byte	0x87
	.byte	0x13
	.4byte	0x123
	.byte	0x9
	.4byte	.LASF33
	.byte	0x4
	.byte	0x7
	.byte	0x33
	.byte	0x8
	.4byte	0x1aa
	.byte	0xa
	.4byte	.LASF35
	.byte	0x7
	.byte	0x34
	.byte	0x9
	.4byte	0x177
	.byte	0
	.byte	0
	.byte	0x3
	.4byte	.LASF31
	.byte	0x7
	.byte	0x39
	.byte	0x19
	.4byte	0x18f
	.byte	0xb
	.4byte	.LASF32
	.byte	0x8
	.2byte	0x126
	.byte	0x14
	.4byte	0x1aa
	.byte	0x9
	.4byte	.LASF34
	.byte	0x4
	.byte	0x9
	.byte	0x3f
	.byte	0x8
	.4byte	0x1de
	.byte	0xa
	.4byte	.LASF36
	.byte	0x9
	.byte	0x40
	.byte	0xd
	.4byte	0x12f
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x5
	.byte	0x1
	.4byte	0x38
	.byte	0xa
	.byte	0x35
	.byte	0xe
	.4byte	0x253
	.byte	0xd
	.4byte	.LASF37
	.byte	0
	.byte	0xe
	.4byte	.LASF38
	.byte	0x7f
	.byte	0xe
	.4byte	.LASF39
	.byte	0x7e
	.byte	0xe
	.4byte	.LASF40
	.byte	0x7d
	.byte	0xe
	.4byte	.LASF41
	.byte	0x7c
	.byte	0xe
	.4byte	.LASF42
	.byte	0x7b
	.byte	0xe
	.4byte	.LASF43
	.byte	0x7a
	.byte	0xe
	.4byte	.LASF44
	.byte	0x79
	.byte	0xe
	.4byte	.LASF45
	.byte	0x78
	.byte	0xe
	.4byte	.LASF46
	.byte	0x77
	.byte	0xe
	.4byte	.LASF47
	.byte	0x76
	.byte	0xe
	.4byte	.LASF48
	.byte	0x75
	.byte	0xe
	.4byte	.LASF49
	.byte	0x74
	.byte	0xe
	.4byte	.LASF50
	.byte	0x73
	.byte	0xe
	.4byte	.LASF51
	.byte	0x72
	.byte	0xe
	.4byte	.LASF52
	.byte	0x71
	.byte	0xe
	.4byte	.LASF53
	.byte	0x70
	.byte	0
	.byte	0x3
	.4byte	.LASF54
	.byte	0xa
	.byte	0x60
	.byte	0xe
	.4byte	0x153
	.byte	0xc
	.byte	0x7
	.byte	0x1
	.4byte	0x4b
	.byte	0xb
	.byte	0x34
	.byte	0xe
	.4byte	0x2c2
	.byte	0xd
	.4byte	.LASF55
	.byte	0
	.byte	0xd
	.4byte	.LASF56
	.byte	0x1
	.byte	0xd
	.4byte	.LASF57
	.byte	0x2
	.byte	0xd
	.4byte	.LASF58
	.byte	0x3
	.byte	0xd
	.4byte	.LASF59
	.byte	0x4
	.byte	0xd
	.4byte	.LASF60
	.byte	0x5
	.byte	0xd
	.4byte	.LASF61
	.byte	0x6
	.byte	0xd
	.4byte	.LASF62
	.byte	0x7
	.byte	0xd
	.4byte	.LASF63
	.byte	0x8
	.byte	0xd
	.4byte	.LASF64
	.byte	0x9
	.byte	0xd
	.4byte	.LASF65
	.byte	0xa
	.byte	0xd
	.4byte	.LASF66
	.byte	0xb
	.byte	0xd
	.4byte	.LASF67
	.byte	0xc
	.byte	0xd
	.4byte	.LASF68
	.byte	0xd
	.byte	0
	.byte	0xf
	.4byte	.LASF141
	.byte	0x7
	.byte	0x1
	.4byte	0x4b
	.byte	0x12
	.byte	0x71
	.byte	0x6
	.4byte	0x2e7
	.byte	0xd
	.4byte	.LASF69
	.byte	0
	.byte	0xd
	.4byte	.LASF70
	.byte	0x1
	.byte	0xd
	.4byte	.LASF71
	.byte	0x2
	.byte	0
	.byte	0x7
	.4byte	0xc5
	.4byte	0x2f7
	.byte	0x8
	.4byte	0xac
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF72
	.byte	0xc
	.byte	0x44
	.byte	0xe
	.4byte	0x147
	.byte	0x9
	.4byte	.LASF73
	.byte	0x10
	.byte	0xc
	.byte	0x4e
	.byte	0x8
	.4byte	0x352
	.byte	0xa
	.4byte	.LASF74
	.byte	0xc
	.byte	0x4f
	.byte	0x8
	.4byte	0x147
	.byte	0
	.byte	0xa
	.4byte	.LASF75
	.byte	0xc
	.byte	0x50
	.byte	0xf
	.4byte	0x2f7
	.byte	0x1
	.byte	0xa
	.4byte	.LASF76
	.byte	0xc
	.byte	0x51
	.byte	0xd
	.4byte	0x13b
	.byte	0x2
	.byte	0xa
	.4byte	.LASF77
	.byte	0xc
	.byte	0x52
	.byte	0x12
	.4byte	0x1c3
	.byte	0x4
	.byte	0xa
	.4byte	.LASF78
	.byte	0xc
	.byte	0x54
	.byte	0x8
	.4byte	0xd7
	.byte	0x8
	.byte	0
	.byte	0x9
	.4byte	.LASF79
	.byte	0x10
	.byte	0xc
	.byte	0x63
	.byte	0x8
	.4byte	0x387
	.byte	0xa
	.4byte	.LASF80
	.byte	0xc
	.byte	0x64
	.byte	0x8
	.4byte	0x147
	.byte	0
	.byte	0xa
	.4byte	.LASF81
	.byte	0xc
	.byte	0x65
	.byte	0xf
	.4byte	0x2f7
	.byte	0x1
	.byte	0xa
	.4byte	.LASF82
	.byte	0xc
	.byte	0x66
	.byte	0x8
	.4byte	0x387
	.byte	0x2
	.byte	0
	.byte	0x7
	.4byte	0xc5
	.4byte	0x397
	.byte	0x8
	.4byte	0xac
	.byte	0xd
	.byte	0
	.byte	0x9
	.4byte	.LASF83
	.byte	0x10
	.byte	0xc
	.byte	0x69
	.byte	0x8
	.4byte	0x3d9
	.byte	0xa
	.4byte	.LASF84
	.byte	0xc
	.byte	0x6a
	.byte	0x8
	.4byte	0x147
	.byte	0
	.byte	0xa
	.4byte	.LASF85
	.byte	0xc
	.byte	0x6b
	.byte	0xf
	.4byte	0x2f7
	.byte	0x1
	.byte	0xa
	.4byte	.LASF86
	.byte	0xc
	.byte	0x6c
	.byte	0x8
	.4byte	0x2e7
	.byte	0x2
	.byte	0xa
	.4byte	.LASF87
	.byte	0xc
	.byte	0x6d
	.byte	0x9
	.4byte	0x3d9
	.byte	0x4
	.byte	0
	.byte	0x7
	.4byte	0x177
	.4byte	0x3e9
	.byte	0x8
	.4byte	0xac
	.byte	0x2
	.byte	0
	.byte	0x3
	.4byte	.LASF88
	.byte	0xc
	.byte	0x76
	.byte	0xf
	.4byte	0x177
	.byte	0x9
	.4byte	.LASF89
	.byte	0x14
	.byte	0xd
	.byte	0x5c
	.byte	0x8
	.4byte	0x444
	.byte	0xa
	.4byte	.LASF90
	.byte	0xd
	.byte	0x5d
	.byte	0xb
	.4byte	0xbf
	.byte	0
	.byte	0xa
	.4byte	.LASF91
	.byte	0xd
	.byte	0x5e
	.byte	0xc
	.4byte	0x444
	.byte	0x4
	.byte	0xa
	.4byte	.LASF92
	.byte	0xd
	.byte	0x60
	.byte	0x9
	.4byte	0x25
	.byte	0x8
	.byte	0xa
	.4byte	.LASF93
	.byte	0xd
	.byte	0x61
	.byte	0x9
	.4byte	0x25
	.byte	0xc
	.byte	0xa
	.4byte	.LASF94
	.byte	0xd
	.byte	0x62
	.byte	0xc
	.4byte	0x444
	.byte	0x10
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0xbf
	.byte	0x9
	.4byte	.LASF95
	.byte	0x20
	.byte	0xd
	.byte	0x67
	.byte	0x8
	.4byte	0x4c0
	.byte	0xa
	.4byte	.LASF96
	.byte	0xd
	.byte	0x68
	.byte	0x9
	.4byte	0x25
	.byte	0
	.byte	0xa
	.4byte	.LASF97
	.byte	0xd
	.byte	0x69
	.byte	0x9
	.4byte	0x25
	.byte	0x4
	.byte	0xa
	.4byte	.LASF98
	.byte	0xd
	.byte	0x6a
	.byte	0x9
	.4byte	0x25
	.byte	0x8
	.byte	0xa
	.4byte	.LASF99
	.byte	0xd
	.byte	0x6b
	.byte	0x9
	.4byte	0x25
	.byte	0xc
	.byte	0xa
	.4byte	.LASF100
	.byte	0xd
	.byte	0x6c
	.byte	0xf
	.4byte	0x3e9
	.byte	0x10
	.byte	0xa
	.4byte	.LASF101
	.byte	0xd
	.byte	0x6d
	.byte	0x16
	.4byte	0x4c5
	.byte	0x14
	.byte	0xa
	.4byte	.LASF102
	.byte	0xd
	.byte	0x6e
	.byte	0xb
	.4byte	0xbf
	.byte	0x18
	.byte	0xa
	.4byte	.LASF103
	.byte	0xd
	.byte	0x6f
	.byte	0x16
	.4byte	0x4cb
	.byte	0x1c
	.byte	0
	.byte	0x6
	.4byte	0x44a
	.byte	0x5
	.byte	0x4
	.4byte	0x352
	.byte	0x5
	.byte	0x4
	.4byte	0x44a
	.byte	0x10
	.4byte	.LASF142
	.byte	0xd
	.byte	0x77
	.byte	0xc
	.4byte	0x25
	.byte	0x9
	.4byte	.LASF104
	.byte	0x10
	.byte	0x1
	.byte	0x35
	.byte	0x8
	.4byte	0x512
	.byte	0xa
	.4byte	.LASF105
	.byte	0x1
	.byte	0x36
	.byte	0xe
	.4byte	0x512
	.byte	0
	.byte	0xa
	.4byte	.LASF35
	.byte	0x1
	.byte	0x37
	.byte	0xd
	.4byte	0x1b6
	.byte	0x8
	.byte	0xa
	.4byte	.LASF106
	.byte	0x1
	.byte	0x38
	.byte	0x9
	.4byte	0xbf
	.byte	0xc
	.byte	0
	.byte	0x7
	.4byte	0x522
	.4byte	0x522
	.byte	0x8
	.4byte	0xac
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x1b6
	.byte	0x11
	.4byte	0x4d1
	.byte	0x1
	.byte	0x3d
	.byte	0x5
	.byte	0x5
	.byte	0x3
	.4byte	h_errno
	.byte	0x12
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x110
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x6f5
	.byte	0x13
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x110
	.byte	0x1e
	.4byte	0xd1
	.4byte	.LLST12
	.byte	0x13
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x110
	.byte	0x34
	.4byte	0xd1
	.4byte	.LLST13
	.byte	0x13
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x111
	.byte	0x29
	.4byte	0x6f5
	.4byte	.LLST14
	.byte	0x14
	.string	"res"
	.byte	0x1
	.2byte	0x111
	.byte	0x42
	.4byte	0x6fb
	.4byte	.LLST15
	.byte	0x15
	.string	"err"
	.byte	0x1
	.2byte	0x113
	.byte	0x9
	.4byte	0x253
	.4byte	.LLST16
	.byte	0x16
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x114
	.byte	0xd
	.4byte	0x1b6
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x15
	.string	"ai"
	.byte	0x1
	.2byte	0x115
	.byte	0x14
	.4byte	0x4cb
	.4byte	.LLST17
	.byte	0x15
	.string	"sa"
	.byte	0x1
	.2byte	0x116
	.byte	0x1c
	.4byte	0x701
	.4byte	.LLST18
	.byte	0x17
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x117
	.byte	0x7
	.4byte	0x25
	.4byte	.LLST19
	.byte	0x17
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x118
	.byte	0xa
	.4byte	0xb3
	.4byte	.LLST20
	.byte	0x17
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x119
	.byte	0xa
	.4byte	0xb3
	.4byte	.LLST21
	.byte	0x17
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x11a
	.byte	0x7
	.4byte	0x25
	.4byte	.LLST22
	.byte	0x18
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x649
	.byte	0x15
	.string	"sa4"
	.byte	0x1
	.2byte	0x187
	.byte	0x19
	.4byte	0x707
	.4byte	.LLST23
	.byte	0x19
	.4byte	.LVL51
	.4byte	0x964
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LVL39
	.4byte	0x970
	.4byte	0x65d
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LVL42
	.4byte	0x97c
	.4byte	0x677
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0
	.byte	0x1b
	.4byte	.LVL44
	.4byte	0x988
	.4byte	0x68b
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LVL48
	.4byte	0x994
	.4byte	0x69e
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0x1b
	.4byte	.LVL50
	.4byte	0x9a0
	.4byte	0x6be
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x1a
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0x4c
	.byte	0x6
	.byte	0
	.byte	0x1b
	.4byte	.LVL52
	.4byte	0x9ac
	.4byte	0x6de
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x30
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x1a
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LVL57
	.4byte	0x9b8
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x4c0
	.byte	0x5
	.byte	0x4
	.4byte	0x4cb
	.byte	0x5
	.byte	0x4
	.4byte	0x397
	.byte	0x5
	.byte	0x4
	.4byte	0x303
	.byte	0x1c
	.4byte	.LASF143
	.byte	0x1
	.byte	0xef
	.byte	0x1
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x752
	.byte	0x1d
	.string	"ai"
	.byte	0x1
	.byte	0xef
	.byte	0x24
	.4byte	0x4cb
	.4byte	.LLST10
	.byte	0x1e
	.4byte	.LASF113
	.byte	0x1
	.byte	0xf1
	.byte	0x14
	.4byte	0x4cb
	.4byte	.LLST11
	.byte	0x19
	.4byte	.LVL28
	.4byte	0x9c5
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LASF115
	.byte	0x1
	.byte	0xa5
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x860
	.byte	0x20
	.4byte	.LASF116
	.byte	0x1
	.byte	0xa5
	.byte	0x22
	.4byte	0xd1
	.4byte	.LLST2
	.byte	0x1d
	.string	"ret"
	.byte	0x1
	.byte	0xa5
	.byte	0x38
	.4byte	0x860
	.4byte	.LLST3
	.byte	0x1d
	.string	"buf"
	.byte	0x1
	.byte	0xa5
	.byte	0x43
	.4byte	0xbf
	.4byte	.LLST4
	.byte	0x20
	.4byte	.LASF117
	.byte	0x1
	.byte	0xa6
	.byte	0x1d
	.4byte	0xb3
	.4byte	.LLST5
	.byte	0x20
	.4byte	.LASF118
	.byte	0x1
	.byte	0xa6
	.byte	0x36
	.4byte	0x866
	.4byte	.LLST6
	.byte	0x20
	.4byte	.LASF119
	.byte	0x1
	.byte	0xa6
	.byte	0x43
	.4byte	0x86c
	.4byte	.LLST7
	.byte	0x21
	.string	"err"
	.byte	0x1
	.byte	0xa8
	.byte	0x9
	.4byte	0x253
	.4byte	.LLST8
	.byte	0x22
	.string	"h"
	.byte	0x1
	.byte	0xa9
	.byte	0x22
	.4byte	0x872
	.byte	0x1
	.byte	0x58
	.byte	0x23
	.4byte	.LASF120
	.byte	0x1
	.byte	0xaa
	.byte	0x9
	.4byte	0xbf
	.byte	0x1
	.byte	0x65
	.byte	0x1e
	.4byte	.LASF112
	.byte	0x1
	.byte	0xab
	.byte	0xa
	.4byte	0xb3
	.4byte	.LLST9
	.byte	0x23
	.4byte	.LASF121
	.byte	0x1
	.byte	0xac
	.byte	0x7
	.4byte	0x25
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x1b
	.4byte	.LVL16
	.4byte	0x988
	.4byte	0x829
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LVL22
	.4byte	0x9b8
	.4byte	0x843
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LVL24
	.4byte	0x9ac
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x1a
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x3f5
	.byte	0x5
	.byte	0x4
	.4byte	0x860
	.byte	0x5
	.byte	0x4
	.4byte	0x25
	.byte	0x5
	.byte	0x4
	.4byte	0x4dd
	.byte	0x1f
	.4byte	.LASF122
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.4byte	0x860
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x953
	.byte	0x20
	.4byte	.LASF116
	.byte	0x1
	.byte	0x5c
	.byte	0x20
	.4byte	0xd1
	.4byte	.LLST0
	.byte	0x21
	.string	"err"
	.byte	0x1
	.byte	0x5e
	.byte	0x9
	.4byte	0x253
	.4byte	.LLST1
	.byte	0x23
	.4byte	.LASF35
	.byte	0x1
	.byte	0x5f
	.byte	0xd
	.4byte	0x1b6
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x23
	.4byte	.LASF123
	.byte	0x1
	.byte	0x62
	.byte	0x19
	.4byte	0x3f5
	.byte	0x5
	.byte	0x3
	.4byte	s_hostent.1
	.byte	0x23
	.4byte	.LASF124
	.byte	0x1
	.byte	0x63
	.byte	0x10
	.4byte	0xbf
	.byte	0x5
	.byte	0x3
	.4byte	s_aliases.0
	.byte	0x23
	.4byte	.LASF125
	.byte	0x1
	.byte	0x64
	.byte	0x14
	.4byte	0x1b6
	.byte	0x5
	.byte	0x3
	.4byte	s_hostent_addr.4
	.byte	0x23
	.4byte	.LASF126
	.byte	0x1
	.byte	0x65
	.byte	0x15
	.4byte	0x512
	.byte	0x5
	.byte	0x3
	.4byte	s_phostent_addr.3
	.byte	0x23
	.4byte	.LASF127
	.byte	0x1
	.byte	0x66
	.byte	0xf
	.4byte	0x953
	.byte	0x5
	.byte	0x3
	.4byte	s_hostname.2
	.byte	0x1b
	.4byte	.LVL1
	.4byte	0x9b8
	.4byte	0x935
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x19
	.4byte	.LVL6
	.4byte	0x9d1
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x1a
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x101
	.byte	0
	.byte	0
	.byte	0x7
	.4byte	0xc5
	.4byte	0x964
	.byte	0x24
	.4byte	0xac
	.2byte	0x100
	.byte	0
	.byte	0x25
	.4byte	.LASF128
	.4byte	.LASF128
	.byte	0xe
	.byte	0x60
	.byte	0x7
	.byte	0x25
	.4byte	.LASF129
	.4byte	.LASF129
	.byte	0xf
	.byte	0x51
	.byte	0x5
	.byte	0x25
	.4byte	.LASF130
	.4byte	.LASF130
	.byte	0x7
	.byte	0xd6
	.byte	0x5
	.byte	0x25
	.4byte	.LASF131
	.4byte	.LASF131
	.byte	0x10
	.byte	0x29
	.byte	0x8
	.byte	0x25
	.4byte	.LASF132
	.4byte	.LASF132
	.byte	0xb
	.byte	0x93
	.byte	0x7
	.byte	0x25
	.4byte	.LASF133
	.4byte	.LASF133
	.byte	0x10
	.byte	0x21
	.byte	0x8
	.byte	0x25
	.4byte	.LASF134
	.4byte	.LASF134
	.byte	0x10
	.byte	0x1f
	.byte	0x8
	.byte	0x26
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0x11
	.2byte	0x16c
	.byte	0x7
	.byte	0x25
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0xb
	.byte	0x95
	.byte	0x6
	.byte	0x25
	.4byte	.LASF137
	.4byte	.LASF137
	.byte	0x10
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
	.byte	0xe
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
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0x16
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
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x4
	.byte	0x1
	.byte	0x3e
	.byte	0xb
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
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
	.byte	0xd
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xd
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0x3e
	.byte	0xb
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
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
	.byte	0x10
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
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x34
	.byte	0
	.byte	0x47
	.byte	0x13
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x14
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
	.byte	0x15
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
	.byte	0x16
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
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1b
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
	.byte	0x1c
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
	.byte	0x1d
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
	.byte	0x1e
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
	.byte	0x1f
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
	.byte	0x20
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
	.byte	0x21
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
	.byte	0x22
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
	.byte	0x23
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
	.byte	0x24
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0x5
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x26
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
.LLST12:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL35
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL38
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL56
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL64
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL33
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL49
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL59
	.4byte	.LVL63
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL33
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL60
	.4byte	.LVL63
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL30
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL35
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL39-1
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL56
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL64
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL49
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL30
	.4byte	.LVL50
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL53
	.4byte	.LVL59
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LFE8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL30
	.4byte	.LVL34
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL43
	.4byte	.LVL47
	.2byte	0x3
	.byte	0x8
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL48-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL48-1
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x91
	.byte	0x4c
	.4byte	.LVL65
	.4byte	.LFE8
	.2byte	0x3
	.byte	0x8
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL30
	.4byte	.LVL45
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL47
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL53
	.4byte	.LVL58
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LFE8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x2
	.byte	0x79
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL50
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL29
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL29
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL10
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL9
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x3
	.byte	0x78
	.byte	0x7d
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL9
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL16-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL16-1
	.4byte	.LFE6
	.2byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL9
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL16-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL16-1
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL14
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x66
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
	.byte	0x62
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF56:
	.string	"MEMP_UDP_PCB"
.LASF105:
	.string	"addr_list"
.LASF64:
	.string	"MEMP_SYS_TIMEOUT"
.LASF30:
	.string	"mem_ptr_t"
.LASF96:
	.string	"ai_flags"
.LASF15:
	.string	"size_t"
.LASF113:
	.string	"next"
.LASF22:
	.string	"uintptr_t"
.LASF65:
	.string	"MEMP_NETDB"
.LASF106:
	.string	"aliases"
.LASF95:
	.string	"addrinfo"
.LASF2:
	.string	"__uint8_t"
.LASF136:
	.string	"memp_free"
.LASF83:
	.string	"sockaddr_storage"
.LASF139:
	.string	".\\components\\net\\lwip\\lwip\\src\\api\\netdb.c"
.LASF12:
	.string	"long long unsigned int"
.LASF23:
	.string	"in_addr_t"
.LASF110:
	.string	"port_nr"
.LASF59:
	.string	"MEMP_TCP_SEG"
.LASF88:
	.string	"socklen_t"
.LASF1:
	.string	"__int8_t"
.LASF111:
	.string	"total_size"
.LASF19:
	.string	"int16_t"
.LASF11:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF10:
	.string	"long unsigned int"
.LASF45:
	.string	"ERR_USE"
.LASF124:
	.string	"s_aliases"
.LASF40:
	.string	"ERR_TIMEOUT"
.LASF120:
	.string	"hostname"
.LASF8:
	.string	"long int"
.LASF55:
	.string	"MEMP_RAW_PCB"
.LASF33:
	.string	"ip4_addr"
.LASF134:
	.string	"memcpy"
.LASF89:
	.string	"hostent"
.LASF71:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF49:
	.string	"ERR_IF"
.LASF37:
	.string	"ERR_OK"
.LASF68:
	.string	"MEMP_MAX"
.LASF9:
	.string	"__uint32_t"
.LASF58:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF137:
	.string	"strlcpy"
.LASF4:
	.string	"__int16_t"
.LASF78:
	.string	"sin_zero"
.LASF28:
	.string	"s16_t"
.LASF132:
	.string	"memp_malloc"
.LASF60:
	.string	"MEMP_REASSDATA"
.LASF14:
	.string	"unsigned int"
.LASF36:
	.string	"s_addr"
.LASF20:
	.string	"uint16_t"
.LASF121:
	.string	"lh_errno"
.LASF131:
	.string	"strlen"
.LASF98:
	.string	"ai_socktype"
.LASF90:
	.string	"h_name"
.LASF46:
	.string	"ERR_ALREADY"
.LASF29:
	.string	"u32_t"
.LASF123:
	.string	"s_hostent"
.LASF116:
	.string	"name"
.LASF57:
	.string	"MEMP_TCP_PCB"
.LASF7:
	.string	"short unsigned int"
.LASF77:
	.string	"sin_addr"
.LASF31:
	.string	"ip4_addr_t"
.LASF92:
	.string	"h_addrtype"
.LASF24:
	.string	"in_port_t"
.LASF128:
	.string	"lwip_htons"
.LASF130:
	.string	"ip4addr_aton"
.LASF138:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF25:
	.string	"u8_t"
.LASF80:
	.string	"sa_len"
.LASF75:
	.string	"sin_family"
.LASF32:
	.string	"ip_addr_t"
.LASF54:
	.string	"err_t"
.LASF127:
	.string	"s_hostname"
.LASF140:
	.string	"C:\\\\Users\\\\cwier\\\\Documents\\\\GitHub\\\\qcom\\\\examples\\\\usb_cam_stream\\\\build\\\\build_out\\\\components\\\\net\\\\lwip\\\\lwip"
.LASF126:
	.string	"s_phostent_addr"
.LASF91:
	.string	"h_aliases"
.LASF74:
	.string	"sin_len"
.LASF86:
	.string	"s2_data1"
.LASF87:
	.string	"s2_data2"
.LASF72:
	.string	"sa_family_t"
.LASF100:
	.string	"ai_addrlen"
.LASF42:
	.string	"ERR_INPROGRESS"
.LASF76:
	.string	"sin_port"
.LASF81:
	.string	"sa_family"
.LASF93:
	.string	"h_length"
.LASF94:
	.string	"h_addr_list"
.LASF70:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_ACD"
.LASF43:
	.string	"ERR_VAL"
.LASF35:
	.string	"addr"
.LASF129:
	.string	"atoi"
.LASF3:
	.string	"unsigned char"
.LASF53:
	.string	"ERR_ARG"
.LASF48:
	.string	"ERR_CONN"
.LASF101:
	.string	"ai_addr"
.LASF5:
	.string	"short int"
.LASF99:
	.string	"ai_protocol"
.LASF103:
	.string	"ai_next"
.LASF117:
	.string	"buflen"
.LASF69:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF26:
	.string	"s8_t"
.LASF143:
	.string	"lwip_freeaddrinfo"
.LASF51:
	.string	"ERR_RST"
.LASF21:
	.string	"uint32_t"
.LASF13:
	.string	"__uintptr_t"
.LASF16:
	.string	"char"
.LASF63:
	.string	"MEMP_TCPIP_MSG_API"
.LASF122:
	.string	"lwip_gethostbyname"
.LASF50:
	.string	"ERR_ABRT"
.LASF85:
	.string	"ss_family"
.LASF61:
	.string	"MEMP_NETBUF"
.LASF6:
	.string	"__uint16_t"
.LASF38:
	.string	"ERR_MEM"
.LASF62:
	.string	"MEMP_NETCONN"
.LASF67:
	.string	"MEMP_PBUF_POOL"
.LASF97:
	.string	"ai_family"
.LASF135:
	.string	"netconn_gethostbyname"
.LASF112:
	.string	"namelen"
.LASF142:
	.string	"h_errno"
.LASF52:
	.string	"ERR_CLSD"
.LASF41:
	.string	"ERR_RTE"
.LASF17:
	.string	"int8_t"
.LASF108:
	.string	"servname"
.LASF27:
	.string	"u16_t"
.LASF39:
	.string	"ERR_BUF"
.LASF109:
	.string	"hints"
.LASF133:
	.string	"memset"
.LASF141:
	.string	"lwip_internal_netif_client_data_index"
.LASF47:
	.string	"ERR_ISCONN"
.LASF79:
	.string	"sockaddr"
.LASF73:
	.string	"sockaddr_in"
.LASF18:
	.string	"uint8_t"
.LASF114:
	.string	"lwip_getaddrinfo"
.LASF107:
	.string	"nodename"
.LASF115:
	.string	"lwip_gethostbyname_r"
.LASF125:
	.string	"s_hostent_addr"
.LASF44:
	.string	"ERR_WOULDBLOCK"
.LASF84:
	.string	"s2_len"
.LASF82:
	.string	"sa_data"
.LASF102:
	.string	"ai_canonname"
.LASF119:
	.string	"h_errnop"
.LASF66:
	.string	"MEMP_PBUF"
.LASF118:
	.string	"result"
.LASF104:
	.string	"gethostbyname_r_helper"
.LASF34:
	.string	"in_addr"
	.ident	"GCC: (GNU) 10.4.0"
