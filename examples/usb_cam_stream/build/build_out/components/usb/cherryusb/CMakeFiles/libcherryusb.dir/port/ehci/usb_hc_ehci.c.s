	.file	"usb_hc_ehci.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.ehci_qh_remove,"ax",@progbits
	.align	1
	.type	ehci_qh_remove, @function
ehci_qh_remove:
.LFB34:
	.file 1 ".\\components\\usb\\cherryusb\\port\\ehci\\usb_hc_ehci.c"
	.loc 1 145 1
	.cfi_startproc
.LVL0:
	.loc 1 146 5
	.loc 1 148 5
.L3:
	.loc 1 148 11
	.loc 1 148 34 is_stmt 0
	lw	a5,0(a0)
	andi	a5,a5,-32
	.loc 1 148 11
	beq	a5,zero,.L2
	.loc 1 148 80 discriminator 1
	bne	a5,a1,.L4
.L2:
	.loc 1 152 5 is_stmt 1
	.loc 1 153 9
	.loc 1 153 28 is_stmt 0
	lw	a5,0(a1)
	.loc 1 153 21
	sw	a5,0(a0)
	.loc 1 158 1
	ret
.L4:
	mv	a0,a5
.LVL1:
	j	.L3
	.cfi_endproc
.LFE34:
	.size	ehci_qh_remove, .-ehci_qh_remove
	.section	.text.ehci_qh_fill,"ax",@progbits
	.align	1
	.type	ehci_qh_fill, @function
ehci_qh_fill:
.LFB36:
	.loc 1 192 1 is_stmt 1
	.cfi_startproc
.LVL2:
	.loc 1 193 5
	.loc 1 194 5
	.loc 1 221 5
	.loc 1 222 5
	.loc 1 223 5
	.loc 1 221 32 is_stmt 0
	li	t1,4096
	slli	a2,a2,8
.LVL3:
	addi	t1,t1,-256
	.loc 1 223 23
	slli	a4,a4,16
.LVL4:
	.loc 1 221 32
	and	a2,a2,t1
	.loc 1 223 12
	or	a4,a4,a1
	or	a1,a2,a4
.LVL5:
	.loc 1 225 5 is_stmt 1
	.loc 1 225 8 is_stmt 0
	bne	a3,zero,.L9
	.loc 1 226 9 is_stmt 1
	.loc 1 226 16 is_stmt 0
	li	a4,16384
.LVL6:
	or	a1,a1,a4
.LVL7:
	.loc 1 229 5 is_stmt 1
	li	a4,2
	beq	a7,a4,.L10
	li	a4,3
	beq	a7,a4,.L27
	li	a5,1
.LVL8:
	li	a4,0
	bne	a7,a5,.L12
.L20:
	.loc 1 231 13
	.loc 1 231 20 is_stmt 0
	li	a5,4096
.LVL9:
	or	a1,a1,a5
.LVL10:
	.loc 1 232 13 is_stmt 1
	.loc 1 234 13
	.loc 1 234 16 is_stmt 0
	bne	a3,zero,.L13
.L10:
	.loc 1 235 17 is_stmt 1
	.loc 1 235 24 is_stmt 0
	li	a5,134217728
.LVL11:
	or	a1,a1,a5
.LVL12:
.L13:
	.loc 1 238 13 is_stmt 1
	.loc 1 242 13
	.loc 1 244 13
	.loc 1 245 13
	.loc 1 244 33 is_stmt 0
	lbu	a4,0(sp)
	.loc 1 245 33
	lbu	a5,4(sp)
	.loc 1 244 33
	slli	a4,a4,16
	.loc 1 245 33
	slli	a5,a5,23
	or	a4,a4,a5
.LVL13:
	.loc 1 247 13 is_stmt 1
	.loc 1 247 16 is_stmt 0
	li	a5,3
	beq	a3,a5,.L14
	.loc 1 245 19
	li	a5,1073741824
.LVL14:
.L18:
	.loc 1 264 23
	or	a4,a4,a5
.LVL15:
	j	.L12
.LVL16:
.L14:
	.loc 1 248 17 is_stmt 1
	.loc 1 249 17
	.loc 1 249 23 is_stmt 0
	li	a5,1073774592
	addi	a5,a5,-2046
	j	.L18
.LVL17:
.L27:
	.loc 1 254 20
	li	a4,8192
	.loc 1 229 5
	mv	a7,a1
.LVL18:
	.loc 1 254 13 is_stmt 1
	.loc 1 254 20 is_stmt 0
	or	a1,a1,a4
.LVL19:
	.loc 1 255 13 is_stmt 1
	.loc 1 255 16 is_stmt 0
	bne	a3,zero,.L15
	.loc 1 256 17 is_stmt 1
	.loc 1 256 24 is_stmt 0
	li	a1,1073750016
.LVL20:
	or	a1,a7,a1
.LVL21:
	.loc 1 258 17 is_stmt 1
	.loc 1 258 23 is_stmt 0
	li	a4,1073741824
.LVL22:
.L12:
	.loc 1 272 5 is_stmt 1
	.loc 1 272 19 is_stmt 0
	sw	a1,4(a0)
	.loc 1 273 5 is_stmt 1
	.loc 1 273 18 is_stmt 0
	sw	a4,8(a0)
	.loc 1 274 1
	ret
.LVL23:
.L15:
	.loc 1 259 20 is_stmt 1
	.loc 1 259 23 is_stmt 0
	li	a2,2
	.loc 1 260 23
	li	a4,1073741824
	.loc 1 259 23
	beq	a3,a2,.L12
	.loc 1 263 17 is_stmt 1
	.loc 1 263 37 is_stmt 0
	slli	a5,a5,30
.LVL24:
	.loc 1 264 17 is_stmt 1
.LBB9:
.LBB10:
	.loc 1 162 5
	.loc 1 164 5
	.loc 1 165 5
	.loc 1 164 14 is_stmt 0
	li	a3,1
.LVL25:
	.loc 1 165 11
	li	a2,1
.LVL26:
.L16:
	.loc 1 165 11 is_stmt 1
	bgt	a6,a2,.L17
	.loc 1 170 5
	.loc 1 171 16 is_stmt 0
	li	a4,255
	.loc 1 170 8
	beq	a3,a2,.L18
	.loc 1 172 5 is_stmt 1
	.loc 1 172 8 is_stmt 0
	li	a2,3
	.loc 1 173 16
	li	a4,85
	.loc 1 172 8
	ble	a3,a2,.L18
	.loc 1 174 5 is_stmt 1
	.loc 1 174 8 is_stmt 0
	li	a2,7
	.loc 1 175 16
	li	a4,34
	.loc 1 174 8
	ble	a3,a2,.L18
	.loc 1 176 16
	li	a4,0
	.loc 1 176 5
	li	a2,1
.L19:
.LVL27:
	.loc 1 177 9 is_stmt 1
	.loc 1 177 18 is_stmt 0
	srai	a3,a3,1
.LVL28:
	.loc 1 176 37 is_stmt 1
	.loc 1 176 42 is_stmt 0
	addi	a4,a4,1
.LVL29:
	.loc 1 176 21 is_stmt 1
	.loc 1 176 5 is_stmt 0
	bne	a3,a2,.L19
	.loc 1 179 5 is_stmt 1
	.loc 1 179 27 is_stmt 0
	andi	a4,a4,7
.LVL30:
	.loc 1 179 17
	sll	a4,a3,a4
	j	.L18
.L17:
	.loc 1 166 9 is_stmt 1
	.loc 1 166 18 is_stmt 0
	slli	a3,a3,1
.LVL31:
	.loc 1 167 9 is_stmt 1
	.loc 1 167 18 is_stmt 0
	addi	a6,a6,-1
.LVL32:
	j	.L16
.LVL33:
.L9:
.LBE10:
.LBE9:
	.loc 1 229 5 is_stmt 1
	li	a4,2
	beq	a7,a4,.L13
	li	a4,3
	beq	a7,a4,.L27
	li	a5,1
.LVL34:
	li	a4,0
	bne	a7,a5,.L12
	j	.L20
	.cfi_endproc
.LFE36:
	.size	ehci_qh_fill, .-ehci_qh_fill
	.section	.text.ehci_qtd_fill,"ax",@progbits
	.align	1
	.type	ehci_qtd_fill, @function
ehci_qtd_fill:
.LFB38:
	.loc 1 303 1
	.cfi_startproc
.LVL35:
	.loc 1 317 5
.LBB14:
.LBB15:
	.loc 1 281 30 is_stmt 0
	li	a4,4096
	addi	a5,a4,-1
	and	a5,a1,a5
.LBE15:
.LBE14:
	.loc 1 317 19
	sw	a3,8(a0)
	.loc 1 319 5 is_stmt 1
.LVL36:
.LBB19:
.LBB17:
	.loc 1 278 5
	.loc 1 280 5
	.loc 1 280 20 is_stmt 0
	sw	a1,12(a0)
	.loc 1 281 5 is_stmt 1
	.loc 1 281 10 is_stmt 0
	sub	a5,a4,a5
.LVL37:
	.loc 1 283 5 is_stmt 1
	.loc 1 283 8 is_stmt 0
	bgeu	a2,a5,.L31
.LVL38:
.L34:
.LBE17:
.LBE19:
	.loc 1 320 5 is_stmt 1
	.loc 1 320 18 is_stmt 0
	sw	a1,40(a0)
	.loc 1 321 5 is_stmt 1
	.loc 1 321 17 is_stmt 0
	sw	a2,44(a0)
	.loc 1 322 1
	ret
.LVL39:
.L31:
.LBB20:
.LBB18:
	.loc 1 286 9 is_stmt 1
	.loc 1 287 17 is_stmt 0
	li	a3,-4096
.LVL40:
	.loc 1 286 17
	add	a4,a1,a4
.LVL41:
	.loc 1 287 9 is_stmt 1
	.loc 1 287 17 is_stmt 0
	and	a4,a4,a3
.LVL42:
	.loc 1 289 9 is_stmt 1
.LBB16:
	.loc 1 289 14
	.loc 1 289 39 is_stmt 0
	li	a7,20
	.loc 1 289 9
	li	a3,0
	.loc 1 290 28
	addi	t1,a0,12
	.loc 1 293 23
	li	t3,4096
.LVL43:
.L32:
	slli	a6,a3,10
	add	a6,a6,a4
.LVL44:
	.loc 1 289 25 is_stmt 1
	.loc 1 289 9 is_stmt 0
	bleu	a2,a5,.L34
	.loc 1 289 39
	addi	a3,a3,4
	beq	a3,a7,.L34
	.loc 1 290 13 is_stmt 1
	.loc 1 293 23 is_stmt 0
	add	a5,a5,t3
.LVL45:
	.loc 1 290 28
	srw	a6,t1,a3,0
	.loc 1 291 13 is_stmt 1
.LVL46:
	.loc 1 293 13
	sgtu	a6,a2,a5
	mveqz	a5, a2, a6
.LVL47:
	.loc 1 289 49
	j	.L32
.LBE16:
.LBE18:
.LBE20:
	.cfi_endproc
.LFE38:
	.size	ehci_qtd_fill, .-ehci_qtd_fill
	.section	.text.ehci_qh_alloc,"ax",@progbits
	.align	1
	.type	ehci_qh_alloc, @function
ehci_qh_alloc:
.LFB31:
	.loc 1 70 1
	.cfi_startproc
.LVL48:
	.loc 1 71 5
	.loc 1 72 5
	.loc 1 74 5
	.loc 1 70 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s2,16(sp)
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	mv	s0,a0
	sw	ra,28(sp)
	sw	s1,20(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.loc 1 74 13
	call	usb_osal_enter_critical_section
.LVL49:
	.loc 1 75 5 is_stmt 1
.LBB21:
	.loc 1 75 10
	.loc 1 75 26
	.loc 1 76 36 is_stmt 0
	lbu	a3,12(s0)
	li	s0,960
.LVL50:
	lui	s2,%hi(.LANCHOR0)
	mul	s0,a3,s0
	addi	a4,s2,%lo(.LANCHOR0)
	.loc 1 75 19
	li	a5,0
	addi	s2,s2,%lo(.LANCHOR0)
	.loc 1 75 5
	li	a2,10
	add	a4,a4,s0
.LVL51:
.L40:
	.loc 1 76 9 is_stmt 1
	.loc 1 77 9
	.loc 1 77 12 is_stmt 0
	lbu	a1,48(a4)
	bne	a1,zero,.L38
	.loc 1 76 12
	li	s1,96
	mul	s1,a5,s1
.LVL52:
	.loc 1 78 23
	li	a5,960
.LVL53:
	li	s4,1
	.loc 1 76 12
	add	s0,s1,s0
	.loc 1 78 23
	mula	s1,a3,a5
.LVL54:
	.loc 1 76 12
	add	s0,s2,s0
	.loc 1 78 13 is_stmt 1
	.loc 1 78 23 is_stmt 0
	add	s3,s2,s1
	sb	s4,48(s3)
	.loc 1 79 13 is_stmt 1
	call	usb_osal_leave_critical_section
.LVL55:
	.loc 1 81 13
	li	a2,48
	li	a1,0
	mv	a0,s0
	call	memset
.LVL56:
	.loc 1 82 13
	.loc 1 82 24 is_stmt 0
	srw	s4,s2,s1,0
	.loc 1 83 13 is_stmt 1
	.loc 1 83 37 is_stmt 0
	sw	s4,16(s3)
	.loc 1 84 13 is_stmt 1
	.loc 1 84 41 is_stmt 0
	sw	s4,20(s3)
	.loc 1 85 13 is_stmt 1
	.loc 1 85 21 is_stmt 0
	sw	zero,56(s3)
	.loc 1 86 13 is_stmt 1
	.loc 1 86 27 is_stmt 0
	sw	s4,52(s3)
	.loc 1 87 13 is_stmt 1
	.loc 1 87 32 is_stmt 0
	sb	zero,64(s3)
	.loc 1 89 13 is_stmt 1
.L37:
.LBE21:
	.loc 1 94 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,s0
	lw	s0,24(sp)
	.cfi_restore 8
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
.LVL57:
.L38:
	.cfi_restore_state
.LBB22:
	.loc 1 75 34 is_stmt 1 discriminator 2
	.loc 1 75 35 is_stmt 0 discriminator 2
	addi	a5,a5,1
.LVL58:
	.loc 1 75 26 is_stmt 1 discriminator 2
	.loc 1 75 5 is_stmt 0 discriminator 2
	addi	a4,a4,96
	bne	a5,a2,.L40
.LBE22:
	.loc 1 92 5 is_stmt 1
	call	usb_osal_leave_critical_section
.LVL59:
	.loc 1 93 5
	.loc 1 93 11 is_stmt 0
	li	s0,0
	j	.L37
	.cfi_endproc
.LFE31:
	.size	ehci_qh_alloc, .-ehci_qh_alloc
	.section	.text.ehci_qtd_alloc,"ax",@progbits
	.align	1
	.type	ehci_qtd_alloc, @function
ehci_qtd_alloc:
.LFB29:
	.loc 1 31 1 is_stmt 1
	.cfi_startproc
.LVL60:
	.loc 1 32 5
	.loc 1 33 5
	.loc 1 35 5
	.loc 1 31 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	mv	s0,a0
	sw	s1,4(sp)
	sw	s2,0(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 35 13
	call	usb_osal_enter_critical_section
.LVL61:
	.loc 1 36 5 is_stmt 1
.LBB23:
	.loc 1 36 10
	.loc 1 36 26
	.loc 1 37 38 is_stmt 0
	lbu	a3,12(s0)
	lui	a5,%hi(.LANCHOR0)
	addi	a4,a5,%lo(.LANCHOR0)
	li	a2,1920
	addi	a4,a4,960
	mula	a4,a3,a2
	.loc 1 36 19
	li	s0,0
.LVL62:
	addi	a5,a5,%lo(.LANCHOR0)
	.loc 1 36 5
	li	a2,30
.LVL63:
.L46:
	.loc 1 37 9 is_stmt 1
	.loc 1 38 9
	.loc 1 38 12 is_stmt 0
	lbu	a1,32(a4)
	bne	a1,zero,.L44
	.loc 1 37 13
	li	a4,30
	mula	s0,a3,a4
.LVL64:
	lui	s1,%hi(.LANCHOR0+960)
	addi	s1,s1,%lo(.LANCHOR0+960)
	.loc 1 39 24
	li	s2,1
	.loc 1 37 13
	slli	s0,s0,6
	add	s1,s1,s0
	.loc 1 39 13 is_stmt 1
	.loc 1 39 24 is_stmt 0
	add	s0,a5,s0
	sb	s2,992(s0)
	.loc 1 40 13 is_stmt 1
	call	usb_osal_leave_critical_section
.LVL65:
	.loc 1 42 13
	li	a2,32
	li	a1,0
	mv	a0,s1
	call	memset
.LVL66:
	.loc 1 43 13
	.loc 1 45 27 is_stmt 0
	li	a5,64
	.loc 1 43 30
	sw	s2,960(s0)
	.loc 1 44 13 is_stmt 1
	.loc 1 44 34 is_stmt 0
	sw	s2,964(s0)
	.loc 1 45 13 is_stmt 1
	.loc 1 45 27 is_stmt 0
	sw	a5,968(s0)
	.loc 1 46 13 is_stmt 1
	.loc 1 46 22 is_stmt 0
	sw	zero,996(s0)
	.loc 1 47 13 is_stmt 1
	.loc 1 47 26 is_stmt 0
	sw	zero,1000(s0)
	.loc 1 48 13 is_stmt 1
	.loc 1 48 25 is_stmt 0
	sw	zero,1004(s0)
	.loc 1 50 13 is_stmt 1
.L43:
.LBE23:
	.loc 1 55 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s2,0(sp)
	.cfi_restore 18
	mv	a0,s1
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL67:
.L44:
	.cfi_restore_state
.LBB24:
	.loc 1 36 40 is_stmt 1 discriminator 2
	.loc 1 36 41 is_stmt 0 discriminator 2
	addi	s0,s0,1
.LVL68:
	.loc 1 36 26 is_stmt 1 discriminator 2
	.loc 1 36 5 is_stmt 0 discriminator 2
	addi	a4,a4,64
	bne	s0,a2,.L46
.LBE24:
	.loc 1 53 5 is_stmt 1
	call	usb_osal_leave_critical_section
.LVL69:
	.loc 1 54 5
	.loc 1 54 11 is_stmt 0
	li	s1,0
	j	.L43
	.cfi_endproc
.LFE29:
	.size	ehci_qtd_alloc, .-ehci_qtd_alloc
	.section	.text.ehci_qh_free.isra.0,"ax",@progbits
	.align	1
	.type	ehci_qh_free.isra.0, @function
ehci_qh_free.isra.0:
.LFB63:
	.loc 1 96 13 is_stmt 1
	.cfi_startproc
.LVL70:
	.loc 1 98 5
	.loc 1 99 5
	.loc 1 101 5
	.loc 1 96 13 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s1,4(sp)
	.cfi_offset 9, -12
	mv	s1,a0
	sw	s0,8(sp)
	sw	s2,0(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.loc 1 101 13
	call	usb_osal_enter_critical_section
.LVL71:
	.loc 1 102 34
	lw	s0,52(s1)
	.loc 1 101 13
	mv	s2,a0
.LVL72:
	.loc 1 102 5 is_stmt 1
.L53:
	.loc 1 106 38 is_stmt 0
	andi	s0,s0,-32
.LVL73:
	.loc 1 104 11 is_stmt 1
	bne	s0,zero,.L51
	.loc 1 109 5
	.loc 1 112 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL74:
	.loc 1 110 19
	li	a5,1
	.loc 1 112 1
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 109 15
	sb	zero,48(s1)
	.loc 1 110 5 is_stmt 1
	.loc 1 110 19 is_stmt 0
	sw	a5,52(s1)
	.loc 1 111 5 is_stmt 1
	mv	a0,s2
	.loc 1 112 1 is_stmt 0
	lw	s1,4(sp)
	.cfi_restore 9
.LVL75:
	lw	s2,0(sp)
	.cfi_restore 18
.LVL76:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 111 5
	tail	usb_osal_leave_critical_section
.LVL77:
.L51:
	.cfi_restore_state
	.loc 1 105 9 is_stmt 1
.LBB27:
.LBB28:
	.loc 1 59 5
	.loc 1 61 5
	.loc 1 63 5
	.loc 1 63 13 is_stmt 0
	call	usb_osal_enter_critical_section
.LVL78:
	.loc 1 64 5 is_stmt 1
	.loc 1 64 16 is_stmt 0
	sb	zero,32(s0)
	.loc 1 65 5 is_stmt 1
	.loc 1 65 14 is_stmt 0
	sw	zero,36(s0)
	.loc 1 66 5 is_stmt 1
	call	usb_osal_leave_critical_section
.LVL79:
.LBE28:
.LBE27:
	.loc 1 106 9
	.loc 1 106 38 is_stmt 0
	lw	s0,0(s0)
.LVL80:
	j	.L53
	.cfi_endproc
.LFE63:
	.size	ehci_qh_free.isra.0, .-ehci_qh_free.isra.0
	.section	.text.ehci_urb_waitup.isra.0,"ax",@progbits
	.align	1
	.type	ehci_urb_waitup.isra.0, @function
ehci_urb_waitup.isra.0:
.LFB64:
	.loc 1 614 13 is_stmt 1
	.cfi_startproc
.LVL81:
	.loc 1 616 5
	.loc 1 618 5
	.loc 1 614 13 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	mv	s0,a0
	.loc 1 618 8
	lw	a0,4(a0)
.LVL82:
	.loc 1 619 5 is_stmt 1
	.loc 1 614 13 is_stmt 0
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 619 13
	sw	zero,56(a0)
	.loc 1 620 5 is_stmt 1
	.loc 1 620 17 is_stmt 0
	sw	zero,4(s0)
	.loc 1 622 5 is_stmt 1
	.loc 1 622 24 is_stmt 0
	sb	zero,64(a0)
	.loc 1 624 5 is_stmt 1
	.loc 1 624 8 is_stmt 0
	lw	a5,40(s0)
	beq	a5,zero,.L55
	.loc 1 625 9 is_stmt 1
	lw	a0,60(a0)
.LVL83:
	call	usb_osal_sem_give
.LVL84:
.L56:
	.loc 1 630 5
	.loc 1 630 12 is_stmt 0
	lw	a5,56(s0)
	.loc 1 630 8
	beq	a5,zero,.L54
	.loc 1 631 9 is_stmt 1
	.loc 1 631 16 is_stmt 0
	lw	a1,44(s0)
	.loc 1 632 13
	lw	a0,60(s0)
	.loc 1 631 12
	bge	a1,zero,.L58
.L60:
	.loc 1 637 1
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL85:
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 634 13
	jr	a5
.LVL86:
.L55:
	.cfi_restore_state
	.loc 1 627 9 is_stmt 1
	call	ehci_qh_free.isra.0
.LVL87:
	j	.L56
.L58:
	.loc 1 634 13
	lw	a1,36(s0)
	j	.L60
.L54:
	.loc 1 637 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL88:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE64:
	.size	ehci_urb_waitup.isra.0, .-ehci_urb_waitup.isra.0
	.section	.text.ehci_check_qh,"ax",@progbits
	.align	1
	.type	ehci_check_qh, @function
ehci_check_qh:
.LFB44:
	.loc 1 657 1 is_stmt 1
	.cfi_startproc
.LVL89:
	.loc 1 658 5
	.loc 1 659 5
	.loc 1 660 5
	.loc 1 662 5
	.loc 1 662 34 is_stmt 0
	lw	a5,52(a2)
	andi	a5,a5,-32
.LVL90:
	.loc 1 664 5 is_stmt 1
	.loc 1 664 8 is_stmt 0
	beq	a5,zero,.L61
.L64:
	.loc 1 672 9 is_stmt 1
	.loc 1 672 15 is_stmt 0
	lw	a4,8(a5)
.LVL91:
	.loc 1 674 9 is_stmt 1
	.loc 1 674 19 is_stmt 0
	andi	a3,a4,120
	.loc 1 674 12
	bne	a3,zero,.L63
	.loc 1 676 16 is_stmt 1
	.loc 1 676 26 is_stmt 0
	andi	a3,a4,128
	.loc 1 676 19
	bne	a3,zero,.L61
	.loc 1 680 9 is_stmt 1
	.loc 1 680 38 is_stmt 0
	lw	a5,0(a5)
.LVL92:
	andi	a5,a5,-32
	.loc 1 680 13
	mv	a3,a5
.LVL93:
	.loc 1 668 11 is_stmt 1
	bne	a5,zero,.L64
.LVL94:
.L63:
	.loc 1 683 5
	.loc 1 657 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	sw	s1,4(sp)
	sw	s2,0(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 683 9
	lw	s0,56(a2)
.LVL95:
	.loc 1 685 5 is_stmt 1
	.loc 1 685 8 is_stmt 0
	bne	a3,zero,.L65
	.loc 1 686 9 is_stmt 1
	.loc 1 686 12 is_stmt 0
	srli	a4,a4,31
.LVL96:
	sb	a4,16(s0)
	.loc 1 691 9 is_stmt 1
	.loc 1 691 24 is_stmt 0
	sw	zero,44(s0)
.LVL97:
.L66:
	mv	a5,a1
	mv	s2,a0
	.loc 1 704 5 is_stmt 1
.LVL98:
.LBB31:
.LBB32:
	.loc 1 641 5
	.loc 1 643 5
	.loc 1 645 5
	mv	a1,a2
.LVL99:
	mv	a0,a5
.LVL100:
	mv	s1,a2
	call	ehci_qh_remove
.LVL101:
	.loc 1 647 5
	.loc 1 647 34 is_stmt 0
	lw	a5,52(s1)
	.loc 1 650 87
	li	a3,32768
	addi	a3,a3,-1
	.loc 1 647 34
	andi	a5,a5,-32
.LVL102:
	.loc 1 649 5 is_stmt 1
.L69:
	.loc 1 649 11
	bne	a5,zero,.L70
.LVL103:
.LBE32:
.LBE31:
	.loc 1 706 5
	.loc 1 706 18 is_stmt 0
	lw	a5,12(s0)
	.loc 1 706 8
	li	a4,3
	lbu	a5,3(a5)
	andi	a5,a5,3
	bne	a5,a4,.L71
.L85:
	.loc 1 715 9 is_stmt 1
	mv	a0,s0
	.loc 1 717 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL104:
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
.LVL105:
	lw	s2,0(sp)
	.cfi_restore 18
.LVL106:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 715 9
	tail	ehci_urb_waitup.isra.0
.LVL107:
.L65:
	.cfi_restore_state
	.loc 1 693 9 is_stmt 1
	.loc 1 693 19 is_stmt 0
	andi	a5,a4,16
.LVL108:
	.loc 1 693 12
	beq	a5,zero,.L67
	.loc 1 694 13 is_stmt 1
	.loc 1 694 28 is_stmt 0
	li	a5,-9
.L84:
	.loc 1 697 28
	sw	a5,44(s0)
	.loc 1 698 13 is_stmt 1
	.loc 1 698 30 is_stmt 0
	sb	zero,16(s0)
	j	.L66
.L67:
	.loc 1 696 16 is_stmt 1
	.loc 1 696 26 is_stmt 0
	andi	a5,a4,64
	.loc 1 696 19
	beq	a5,zero,.L68
	.loc 1 697 13 is_stmt 1
	.loc 1 697 28 is_stmt 0
	li	a5,-8
	j	.L84
.L68:
	.loc 1 699 16 is_stmt 1
	.loc 1 699 26 is_stmt 0
	andi	a4,a4,40
.LVL109:
	.loc 1 699 19
	beq	a4,zero,.L66
	.loc 1 700 13 is_stmt 1
	.loc 1 700 28 is_stmt 0
	li	a5,-12
	sw	a5,44(s0)
	j	.L66
.LVL110:
.L70:
.LBB34:
.LBB33:
	.loc 1 650 9 is_stmt 1
	.loc 1 650 12 is_stmt 0
	lw	a1,36(a5)
	.loc 1 650 33
	lw	a2,44(a5)
	lw	a4,36(a1)
	add	a4,a4,a2
	.loc 1 650 87
	lhu	a2,10(a5)
	.loc 1 652 38
	lw	a5,0(a5)
.LVL111:
	.loc 1 650 87
	and	a2,a2,a3
	.loc 1 650 33
	sub	a4,a4,a2
	sw	a4,36(a1)
	.loc 1 652 9 is_stmt 1
	.loc 1 652 38 is_stmt 0
	andi	a5,a5,-32
.LVL112:
	j	.L69
.LVL113:
.L71:
.LBE33:
.LBE34:
	.loc 1 709 9 is_stmt 1
	.loc 1 709 28 is_stmt 0
	li	a5,1
	sb	a5,64(s1)
	.loc 1 711 9 is_stmt 1
	.loc 1 711 89 is_stmt 0
	lbu	a3,12(s2)
	.loc 1 711 97
	lui	a5,%hi(.LANCHOR1)
	li	a4,10
	addi	a5,a5,%lo(.LANCHOR1)
	mula	a5,a3,a4
	.loc 1 711 120
	lbu	a4,9(a5)
	lw	a5,8(s2)
	lrw	a3,a4,a5,0
	add	a2,a4,a5
	ori	a3,a3,64
	srw	a3,a4,a5,0
	.loc 1 712 9 is_stmt 1
.L72:
	.loc 1 713 9 discriminator 1
	.loc 1 712 15 discriminator 1
	.loc 1 712 120 is_stmt 0 discriminator 1
	lw	a5,4(a2)
	.loc 1 712 129 discriminator 1
	andi	a5,a5,32
	.loc 1 712 15 discriminator 1
	beq	a5,zero,.L72
	.loc 1 714 9 is_stmt 1
	.loc 1 714 120 is_stmt 0
	li	a5,32
	sw	a5,4(a2)
	j	.L85
.LVL114:
.L61:
	.cfi_def_cfa_offset 0
	.cfi_restore 1
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 18
	ret
	.cfi_endproc
.LFE44:
	.size	ehci_check_qh, .-ehci_check_qh
	.section	.text.ehci_scan_async_list,"ax",@progbits
	.align	1
	.type	ehci_scan_async_list, @function
ehci_scan_async_list:
.LFB56:
	.loc 1 1372 1 is_stmt 1
	.cfi_startproc
.LVL115:
	.loc 1 1373 5
	.loc 1 1375 5
	.loc 1 1372 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.loc 1 1375 79
	lbu	a2,12(a0)
	.loc 1 1375 90
	lui	a5,%hi(.LANCHOR2)
	addi	a5,a5,%lo(.LANCHOR2)
	li	a3,96
	mv	a4,a5
	mula	a4,a2,a3
	.loc 1 1376 19
	addi	s1,a5,-1216
	li	s2,96
	.loc 1 1375 32
	lw	s0,-1216(a4)
	andi	s0,s0,-32
.LVL116:
	.loc 1 1376 5 is_stmt 1
.L87:
	.loc 1 1376 11
	.loc 1 1376 19 is_stmt 0
	lbu	a5,12(a0)
	mv	a1,s1
	mula	a1,a5,s2
	.loc 1 1376 11
	beq	a1,s0,.L86
	.loc 1 1376 54 discriminator 1
	bne	s0,zero,.L90
.L86:
	.loc 1 1382 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL117:
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL118:
.L90:
	.cfi_restore_state
	.loc 1 1377 9 is_stmt 1
	.loc 1 1377 12 is_stmt 0
	lw	a5,56(s0)
	beq	a5,zero,.L88
	.loc 1 1378 13 is_stmt 1
	mv	a2,s0
	sw	a0,12(sp)
	call	ehci_check_qh
.LVL119:
	lw	a0,12(sp)
.L88:
	.loc 1 1380 9
	.loc 1 1380 36 is_stmt 0
	lw	s0,0(s0)
.LVL120:
	andi	s0,s0,-32
.LVL121:
	j	.L87
	.cfi_endproc
.LFE56:
	.size	ehci_scan_async_list, .-ehci_scan_async_list
	.section	.text.ehci_scan_periodic_list,"ax",@progbits
	.align	1
	.type	ehci_scan_periodic_list, @function
ehci_scan_periodic_list:
.LFB57:
	.loc 1 1385 1 is_stmt 1
	.cfi_startproc
.LVL122:
	.loc 1 1386 5
	.loc 1 1388 5
	.loc 1 1385 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.loc 1 1388 82
	lbu	a2,12(a0)
	.loc 1 1388 93
	lui	a5,%hi(.LANCHOR2)
	addi	a5,a5,%lo(.LANCHOR2)
	li	a3,96
	mv	a4,a5
	mula	a4,a2,a3
	.loc 1 1391 13
	addi	s1,a5,-1120
	li	s2,96
	.loc 1 1388 32
	lw	s0,-1120(a4)
	andi	s0,s0,-32
.LVL123:
	.loc 1 1389 5 is_stmt 1
.L96:
	.loc 1 1389 11
	bne	s0,zero,.L98
	.loc 1 1395 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL124:
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL125:
.L98:
	.cfi_restore_state
	.loc 1 1390 9 is_stmt 1
	.loc 1 1390 12 is_stmt 0
	lw	a5,56(s0)
	beq	a5,zero,.L97
	.loc 1 1391 13 is_stmt 1
	lbu	a5,12(a0)
	mv	a1,s1
	mv	a2,s0
	mula	a1,a5,s2
	sw	a0,12(sp)
	call	ehci_check_qh
.LVL126:
	lw	a0,12(sp)
.L97:
	.loc 1 1393 9
	.loc 1 1393 36 is_stmt 0
	lw	s0,0(s0)
.LVL127:
	andi	s0,s0,-32
.LVL128:
	j	.L96
	.cfi_endproc
.LFE57:
	.size	ehci_scan_periodic_list, .-ehci_scan_periodic_list
	.section	.text.usb_hc_low_level_init,"ax",@progbits
	.align	1
	.weak	usb_hc_low_level_init
	.type	usb_hc_low_level_init, @function
usb_hc_low_level_init:
.LFB47:
	.loc 1 757 1 is_stmt 1
	.cfi_startproc
.LVL129:
	.loc 1 758 5
	.loc 1 759 1 is_stmt 0
	ret
	.cfi_endproc
.LFE47:
	.size	usb_hc_low_level_init, .-usb_hc_low_level_init
	.section	.text.usb_hc_low_level2_init,"ax",@progbits
	.align	1
	.weak	usb_hc_low_level2_init
	.type	usb_hc_low_level2_init, @function
usb_hc_low_level2_init:
.LFB60:
	.cfi_startproc
	ret
	.cfi_endproc
.LFE60:
	.size	usb_hc_low_level2_init, .-usb_hc_low_level2_init
	.section	.text.usb_hc_low_level_deinit,"ax",@progbits
	.align	1
	.weak	usb_hc_low_level_deinit
	.type	usb_hc_low_level_deinit, @function
usb_hc_low_level_deinit:
.LFB62:
	.cfi_startproc
	ret
	.cfi_endproc
.LFE62:
	.size	usb_hc_low_level_deinit, .-usb_hc_low_level_deinit
	.section	.rodata.usb_hc_init.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"\033[32m[I/USB] "
	.align	2
.LC1:
	.string	"EHCI HCIVERSION:0x%04x\r\n"
	.align	2
.LC2:
	.string	"\033[0m"
	.align	2
.LC3:
	.string	"EHCI HCSPARAMS:0x%06x\r\n"
	.align	2
.LC4:
	.string	"EHCI HCCPARAMS:0x%04x\r\n"
	.align	2
.LC5:
	.string	"EHCI ppc:%u, n_ports:%u, n_cc:%u, n_pcc:%u\r\n"
	.align	2
.LC6:
	.string	"EHCI uses tt for ls/fs device\r\n"
	.align	2
.LC7:
	.string	"\033[33m[W/USB] "
	.align	2
.LC8:
	.string	"Do not enable companion controller, you should use a hub to support ls/fs device\r\n"
	.section	.text.usb_hc_init,"ax",@progbits
	.align	1
	.globl	usb_hc_init
	.type	usb_hc_init, @function
usb_hc_init:
.LFB50:
	.loc 1 772 1 is_stmt 1
	.cfi_startproc
.LVL130:
	.loc 1 773 5
	.loc 1 774 5
	.loc 1 776 5
	.loc 1 772 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s0,56(sp)
	.cfi_offset 8, -8
	mv	s0,a0
	.loc 1 779 12
	lbu	a4,12(s0)
	.loc 1 772 1
	sw	s2,48(sp)
	.cfi_offset 18, -16
	.loc 1 779 12
	lui	s2,%hi(.LANCHOR1)
	.loc 1 779 5
	li	a5,10
	.loc 1 779 12
	addi	a0,s2,%lo(.LANCHOR1)
.LVL131:
	.loc 1 779 5
	mula	a0,a4,a5
	li	a2,10
	li	a1,0
	.loc 1 772 1
	sw	ra,60(sp)
	sw	s3,44(sp)
	sw	s4,40(sp)
	sw	s5,36(sp)
	sw	s6,32(sp)
	sw	s7,28(sp)
	sw	s1,52(sp)
	sw	s8,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 9, -12
	.cfi_offset 24, -40
	.loc 1 776 23
	sw	zero,12(sp)
	.loc 1 777 5 is_stmt 1
	.loc 1 779 5
	call	memset
.LVL132:
	.loc 1 780 5
	.loc 1 780 24 is_stmt 0
	lbu	a4,12(s0)
	lui	s5,%hi(.LANCHOR0)
	addi	s3,s5,%lo(.LANCHOR0)
	.loc 1 780 5
	li	a5,960
	mv	a0,s3
	mula	a0,a4,a5
	li	a2,960
	li	a1,0
	.loc 1 781 5
	li	s4,0
	addi	s2,s2,%lo(.LANCHOR1)
	addi	s5,s5,%lo(.LANCHOR0)
.LBB35:
	.loc 1 801 21
	li	s7,960
	.loc 1 799 5
	li	s6,10
.LBE35:
	.loc 1 780 5
	call	memset
.LVL133:
	.loc 1 781 5 is_stmt 1
	.loc 1 781 25 is_stmt 0
	lbu	a4,12(s0)
	addi	a0,s3,960
	.loc 1 781 5
	li	a5,1920
	mula	a0,a4,a5
	li	a2,1920
	li	a1,0
.LBB36:
	.loc 1 801 21
	li	s3,96
.LBE36:
	.loc 1 781 5
	call	memset
.LVL134:
	.loc 1 783 5 is_stmt 1
	.loc 1 783 10
	.loc 1 783 29
	.loc 1 784 9
	.loc 1 785 9
	.loc 1 783 41
	.loc 1 783 29
	.loc 1 792 9
	.loc 1 793 9
	.loc 1 791 47
	.loc 1 791 29
.L107:
.LBB37:
	.loc 1 800 9 discriminator 3
	.loc 1 800 36 is_stmt 0 discriminator 3
	lbu	s1,12(s0)
.LVL135:
	.loc 1 801 9 is_stmt 1 discriminator 3
	.loc 1 801 23 is_stmt 0 discriminator 3
	li	a0,0
	call	usb_osal_sem_create
.LVL136:
	.loc 1 801 21 discriminator 3
	mul	s1,s1,s7
.LVL137:
	mula	s1,s4,s3
	.loc 1 799 5 discriminator 3
	addi	s4,s4,1
.LVL138:
	.loc 1 801 21 discriminator 3
	add	s1,s5,s1
	sw	a0,60(s1)
	.loc 1 799 41 is_stmt 1 discriminator 3
	.loc 1 799 29 discriminator 3
	.loc 1 799 5 is_stmt 0 discriminator 3
	bne	s4,s6,.L107
.LBE37:
	.loc 1 804 5 is_stmt 1
	.loc 1 804 12 is_stmt 0
	lui	s1,%hi(.LANCHOR2)
	addi	s1,s1,%lo(.LANCHOR2)
	lbu	a5,12(s0)
	addi	s4,s1,-1216
	.loc 1 804 5
	mv	a0,s4
	mula	a0,a5,s3
	li	a2,96
	li	a1,0
	.loc 1 812 23
	lui	s6,%hi(g_framelist)
	.loc 1 809 55
	li	s8,64
	.loc 1 812 23
	addi	s7,s6,%lo(g_framelist)
	.loc 1 814 12
	addi	s5,s1,-1120
	.loc 1 804 5
	call	memset
.LVL139:
	.loc 1 805 5 is_stmt 1
	.loc 1 805 85 is_stmt 0
	lbu	a0,12(s0)
	.loc 1 812 5
	li	a2,4096
	li	a1,0
	.loc 1 805 45
	mul	a4,a0,s3
	.loc 1 812 23
	slli	a0,a0,12
	.loc 1 812 5
	add	a0,s7,a0
	.loc 1 805 45
	add	a5,s1,a4
	.loc 1 805 60
	add	s4,s4,a4
	.loc 1 805 45
	addi	a5,a5,-1280
	.loc 1 805 104
	ori	s4,s4,2
	.loc 1 806 48
	li	a4,32768
	.loc 1 805 45
	sw	s4,64(a5)
	.loc 1 806 5 is_stmt 1
	.loc 1 807 58 is_stmt 0
	li	s4,1
	.loc 1 806 48
	sw	a4,68(a5)
	.loc 1 807 5 is_stmt 1
	.loc 1 807 58 is_stmt 0
	sw	s4,80(a5)
	.loc 1 808 5 is_stmt 1
	.loc 1 808 62 is_stmt 0
	sw	s4,84(a5)
	.loc 1 809 5 is_stmt 1
	.loc 1 810 48 is_stmt 0
	sw	s4,116(a5)
	.loc 1 809 55
	sw	s8,88(a5)
	.loc 1 810 5 is_stmt 1
	.loc 1 812 5
	call	memset
.LVL140:
	.loc 1 814 5
	.loc 1 814 12 is_stmt 0
	lbu	a5,12(s0)
	.loc 1 814 5
	mv	a0,s5
	li	a2,96
	mula	a0,a5,s3
	li	a1,0
	call	memset
.LVL141:
	.loc 1 815 5 is_stmt 1
	.loc 1 815 32 is_stmt 0
	lbu	a4,12(s0)
.LBB38:
	.loc 1 822 5
	li	a3,1024
.LBE38:
	.loc 1 815 48
	mul	s3,a4,s3
	slli	a4,a4,12
	add	a4,a4,s7
	add	a5,s1,s3
	addi	a5,a5,-1152
.LBB39:
	.loc 1 823 56
	add	s3,s5,s3
.LBE39:
	.loc 1 815 48
	sw	s4,32(a5)
	.loc 1 816 5 is_stmt 1
	.loc 1 816 51 is_stmt 0
	sw	s4,36(a5)
	.loc 1 817 5 is_stmt 1
	.loc 1 817 61 is_stmt 0
	sw	s4,48(a5)
	.loc 1 818 5 is_stmt 1
	.loc 1 818 65 is_stmt 0
	sw	s4,52(a5)
	.loc 1 819 5 is_stmt 1
	.loc 1 820 51 is_stmt 0
	sw	s4,84(a5)
	.loc 1 819 58
	sw	s8,56(a5)
	.loc 1 820 5 is_stmt 1
	.loc 1 822 5
.LBB40:
	.loc 1 822 10
.LVL142:
	.loc 1 822 26
	.loc 1 823 103 is_stmt 0
	ori	s3,s3,2
	.loc 1 822 19
	li	a5,0
	addi	s4,s6,%lo(g_framelist)
.LVL143:
.L108:
	.loc 1 823 9 is_stmt 1 discriminator 3
	.loc 1 823 41 is_stmt 0 discriminator 3
	srw	s3,a4,a5,2
	.loc 1 822 36 is_stmt 1 discriminator 3
	.loc 1 822 37 is_stmt 0 discriminator 3
	addi	a5,a5,1
.LVL144:
	.loc 1 822 26 is_stmt 1 discriminator 3
	.loc 1 822 5 is_stmt 0 discriminator 3
	bne	a5,a3,.L108
.LBE40:
	.loc 1 832 5 is_stmt 1
	mv	a0,s0
	call	usb_hc_low_level_init
.LVL145:
	.loc 1 834 5
	.loc 1 834 10
	lui	s3,%hi(.LC0)
	addi	a0,s3,%lo(.LC0)
	call	printf
.LVL146:
	.loc 1 834 56
	.loc 1 834 108 is_stmt 0
	lw	a5,8(s0)
	.loc 1 834 56
	lui	a0,%hi(.LC1)
	addi	a0,a0,%lo(.LC1)
	.loc 1 834 167
	lhu	a1,2(a5)
	.loc 1 834 182
	lui	s1,%hi(.LC2)
	.loc 1 838 37
	li	s5,10
	.loc 1 834 56
	extu	a1,a1,15,0
	call	printf
.LVL147:
	.loc 1 834 182 is_stmt 1
	addi	a0,s1,%lo(.LC2)
	call	printf
.LVL148:
	.loc 1 834 209
	.loc 1 835 5
	.loc 1 835 10
	addi	a0,s3,%lo(.LC0)
	call	printf
.LVL149:
	.loc 1 835 56
	.loc 1 835 107 is_stmt 0
	lw	a5,8(s0)
	.loc 1 835 56
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	.loc 1 835 166
	lw	a1,4(a5)
	.loc 1 857 12
	li	s6,100
	.loc 1 835 56
	call	printf
.LVL150:
	.loc 1 835 180 is_stmt 1
	addi	a0,s1,%lo(.LC2)
	call	printf
.LVL151:
	.loc 1 835 207
	.loc 1 836 5
	.loc 1 836 10
	addi	a0,s3,%lo(.LC0)
	call	printf
.LVL152:
	.loc 1 836 56
	.loc 1 836 107 is_stmt 0
	lw	a5,8(s0)
	.loc 1 836 56
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	.loc 1 836 166
	lw	a1,8(a5)
	.loc 1 836 56
	call	printf
.LVL153:
	.loc 1 836 180 is_stmt 1
	addi	a0,s1,%lo(.LC2)
	call	printf
.LVL154:
	.loc 1 836 207
	.loc 1 838 5
	.loc 1 838 24 is_stmt 0
	lbu	a2,12(s0)
	.loc 1 838 37
	mv	a5,s2
	.loc 1 838 41
	lw	a3,8(s0)
	.loc 1 838 37
	mula	a5,a2,s5
	.loc 1 845 10
	addi	a0,s3,%lo(.LC0)
	.loc 1 838 100
	lw	a4,4(a3)
	.loc 1 838 89
	extu	a4,a4,4+1-1,4
	.loc 1 838 37
	sb	a4,4(a5)
	.loc 1 839 5 is_stmt 1
	.loc 1 839 104 is_stmt 0
	lw	a4,4(a3)
	.loc 1 839 131
	andi	a4,a4,15
	.loc 1 839 41
	sb	a4,8(a5)
	.loc 1 840 5 is_stmt 1
	.loc 1 840 101 is_stmt 0
	lw	a4,4(a3)
	.loc 1 840 129
	extu	a4,a4,12+4-1,12
	.loc 1 840 38
	sb	a4,6(a5)
	.loc 1 841 5 is_stmt 1
	.loc 1 841 102 is_stmt 0
	lw	a2,4(a3)
	.loc 1 842 82
	seqz	a4,a4
	sb	a4,5(a5)
	.loc 1 841 129
	extu	a2,a2,8+4-1,8
	.loc 1 841 39
	sb	a2,7(a5)
	.loc 1 842 5 is_stmt 1
	.loc 1 843 5
	.loc 1 843 107 is_stmt 0
	lbu	a4,0(a3)
	.loc 1 843 45
	sb	a4,9(a5)
	.loc 1 845 5 is_stmt 1
	.loc 1 845 10
	call	printf
.LVL155:
	.loc 1 845 56
	.loc 1 845 132 is_stmt 0
	lbu	a4,12(s0)
	.loc 1 845 244
	mv	a5,s2
	.loc 1 845 56
	lui	a0,%hi(.LC5)
	.loc 1 845 244
	mula	a5,a4,s5
	.loc 1 845 56
	addi	a0,a0,%lo(.LC5)
	lbu	a4,7(a5)
	lbu	a3,6(a5)
	lbu	a2,8(a5)
	lbu	a1,4(a5)
	call	printf
.LVL156:
	.loc 1 845 253 is_stmt 1
	addi	a0,s1,%lo(.LC2)
	call	printf
.LVL157:
	.loc 1 845 280
	.loc 1 851 5
	.loc 1 851 85 is_stmt 0
	lbu	a4,12(s0)
	.loc 1 851 93
	mv	a5,s2
	.loc 1 852 5
	li	a0,2
	.loc 1 851 93
	mula	a5,a4,s5
	.loc 1 851 116
	lw	a4,8(s0)
	lbu	a3,9(a5)
	lrw	a5,a3,a4,0
	andi	a5,a5,-2
	srw	a5,a3,a4,0
	.loc 1 852 5 is_stmt 1
	call	usb_osal_msleep
.LVL158:
	.loc 1 853 5
	.loc 1 853 85 is_stmt 0
	lbu	a4,12(s0)
	.loc 1 853 93
	mv	a5,s2
	mula	a5,a4,s5
	.loc 1 853 116
	lw	a4,8(s0)
	lbu	a3,9(a5)
	lrw	a5,a3,a4,0
	ori	a5,a5,2
	srw	a5,a3,a4,0
	.loc 1 854 5 is_stmt 1
.L109:
	.loc 1 854 11
	.loc 1 854 92 is_stmt 0
	lbu	a4,12(s0)
	.loc 1 854 100
	mv	a5,s2
	mula	a5,a4,s5
	.loc 1 854 71
	lw	a4,8(s0)
	.loc 1 854 100
	lbu	a3,9(a5)
	.loc 1 854 71
	add	a5,a3,a4
	.loc 1 854 114
	lrw	a4,a3,a4,0
	.loc 1 854 123
	andi	a4,a4,2
	.loc 1 854 11
	bne	a4,zero,.L111
	.loc 1 862 5 is_stmt 1
	.loc 1 862 117 is_stmt 0
	sw	zero,8(a5)
	.loc 1 863 5 is_stmt 1
	.loc 1 863 220 is_stmt 0
	lw	a4,4(a5)
	.loc 1 865 5
	mv	a0,s0
	.loc 1 900 12
	li	s6,100
	.loc 1 863 116
	sw	a4,4(a5)
	.loc 1 865 5 is_stmt 1
	call	usb_hc_low_level2_init
.LVL159:
	.loc 1 868 5
	.loc 1 868 173 is_stmt 0
	lbu	a5,12(s0)
	.loc 1 868 148
	lui	a4,%hi(.LANCHOR2-1216)
	li	a3,96
	addi	a4,a4,%lo(.LANCHOR2-1216)
	mula	a4,a5,a3
	.loc 1 868 93
	mv	a3,s2
	mula	a3,a5,s5
	.loc 1 870 150
	slli	a5,a5,12
	add	a5,s4,a5
	.loc 1 897 100
	li	s5,10
	.loc 1 897 123
	li	s4,4096
	.loc 1 868 93
	lbu	a2,9(a3)
	.loc 1 868 64
	lw	a3,8(s0)
	add	a1,a2,a3
	.loc 1 868 123
	sw	a4,24(a1)
	.loc 1 870 5 is_stmt 1
	.loc 1 870 126 is_stmt 0
	sw	a5,20(a1)
	.loc 1 872 5 is_stmt 1
	.loc 1 872 12 is_stmt 0
	lrw	a5,a2,a3,0
.LVL160:
	.loc 1 873 5 is_stmt 1
	.loc 1 873 12 is_stmt 0
	li	a4,-16711680
	addi	a4,a4,-13
	and	a5,a5,a4
.LVL161:
	.loc 1 875 5 is_stmt 1
	.loc 1 885 5
	.loc 1 887 5
	.loc 1 888 5
	.loc 1 889 5
	.loc 1 889 12 is_stmt 0
	li	a4,65536
	addi	a4,a4,49
	or	a5,a5,a4
.LVL162:
	.loc 1 890 5 is_stmt 1
	.loc 1 890 116 is_stmt 0
	srw	a5,a2,a3,0
	.loc 1 896 5 is_stmt 1
	.loc 1 896 13 is_stmt 0
	sw	zero,12(sp)
	.loc 1 897 5 is_stmt 1
.LVL163:
.L112:
	.loc 1 897 11
	.loc 1 897 92 is_stmt 0
	lbu	a2,12(s0)
	.loc 1 897 100
	mv	a4,s2
	.loc 1 897 71
	lw	a5,8(s0)
	.loc 1 897 100
	mula	a4,a2,s5
	lbu	a3,9(a4)
	.loc 1 897 71
	add	a3,a3,a5
	.loc 1 897 114
	lw	a5,4(a3)
	.loc 1 897 123
	and	a5,a5,s4
	.loc 1 897 11
	bne	a5,zero,.L114
	.loc 1 905 5 is_stmt 1
	.loc 1 905 8 is_stmt 0
	lbu	a1,4(a4)
	bne	a1,zero,.L115
.L120:
	.loc 1 914 5 is_stmt 1
	.loc 1 919 5
	.loc 1 921 5
	.loc 1 914 36 is_stmt 0
	li	a4,10
	mv	a5,s2
	mula	a5,a2,a4
	.loc 1 921 8
	lbu	a5,5(a5)
	bne	a5,zero,.L116
	.loc 1 928 9 is_stmt 1
	.loc 1 928 14
	lui	a0,%hi(.LC7)
	addi	a0,a0,%lo(.LC7)
	call	printf
.LVL164:
	.loc 1 928 60
	lui	a0,%hi(.LC8)
	addi	a0,a0,%lo(.LC8)
	j	.L127
.L111:
	.loc 1 855 9
	li	a0,1
	call	usb_osal_msleep
.LVL165:
	.loc 1 856 9
	.loc 1 856 16 is_stmt 0
	lw	a5,12(sp)
	addi	a5,a5,1
	sw	a5,12(sp)
	.loc 1 857 9 is_stmt 1
	.loc 1 857 21 is_stmt 0
	lw	a5,12(sp)
	.loc 1 857 12
	bleu	a5,s6,.L109
.L113:
	.loc 1 858 20
	li	a0,-14
.L106:
	.loc 1 935 1
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
.LVL166:
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
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL167:
.L114:
	.cfi_restore_state
	.loc 1 898 9 is_stmt 1
	li	a0,1
	call	usb_osal_msleep
.LVL168:
	.loc 1 899 9
	.loc 1 899 16 is_stmt 0
	lw	a5,12(sp)
	addi	a5,a5,1
	sw	a5,12(sp)
	.loc 1 900 9 is_stmt 1
	.loc 1 900 21 is_stmt 0
	lw	a5,12(sp)
	.loc 1 900 12
	bleu	a5,s6,.L112
	j	.L113
.L115:
.LBB41:
	.loc 1 906 66
	lbu	a0,8(a4)
	.loc 1 909 20
	li	a6,4096
.L118:
.LVL169:
	.loc 1 906 32 is_stmt 1 discriminator 1
	.loc 1 906 9 is_stmt 0 discriminator 1
	andi	a4,a5,0xff
	bleu	a0,a4,.L120
	.loc 1 907 13 is_stmt 1 discriminator 3
	addsl	a1, a3, a5, 2
	.loc 1 907 20 is_stmt 0 discriminator 3
	lw	a4,32(a1)
.LVL170:
	.loc 1 908 13 is_stmt 1 discriminator 3
	.loc 1 909 13 discriminator 3
	addi	a5,a5,1
.LVL171:
	andi	a4,a4,-43
.LVL172:
	.loc 1 909 20 is_stmt 0 discriminator 3
	or	a4,a4,a6
.LVL173:
	.loc 1 910 13 is_stmt 1 discriminator 3
	.loc 1 910 130 is_stmt 0 discriminator 3
	sw	a4,32(a1)
	.loc 1 906 76 is_stmt 1 discriminator 3
	j	.L118
.LVL174:
.L116:
.LBE41:
	.loc 1 922 9
	.loc 1 922 14
	addi	a0,s3,%lo(.LC0)
	call	printf
.LVL175:
	.loc 1 922 60
	lui	a0,%hi(.LC6)
	addi	a0,a0,%lo(.LC6)
.L127:
	.loc 1 928 60 is_stmt 0
	call	printf
.LVL176:
	.loc 1 928 156 is_stmt 1
	addi	a0,s1,%lo(.LC2)
	call	printf
.LVL177:
	.loc 1 928 183
	.loc 1 933 5
	.loc 1 933 85 is_stmt 0
	lbu	a4,12(s0)
	.loc 1 933 93
	li	a5,10
	.loc 1 934 12
	li	a0,0
	.loc 1 933 93
	mula	s2,a4,a5
	.loc 1 933 64
	lw	a4,8(s0)
	.loc 1 933 93
	lbu	a5,9(s2)
	.loc 1 933 64
	add	a5,a5,a4
	.loc 1 933 117
	li	a4,55
	sw	a4,8(a5)
	.loc 1 934 5 is_stmt 1
	.loc 1 934 12 is_stmt 0
	j	.L106
	.cfi_endproc
.LFE50:
	.size	usb_hc_init, .-usb_hc_init
	.section	.text.usb_hc_deinit,"ax",@progbits
	.align	1
	.globl	usb_hc_deinit
	.type	usb_hc_deinit, @function
usb_hc_deinit:
.LFB51:
	.loc 1 938 1 is_stmt 1
	.cfi_startproc
.LVL178:
	.loc 1 939 5
	.loc 1 941 5
	.loc 1 938 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	sw	s6,16(sp)
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 944 85
	lbu	a2,12(a0)
	.loc 1 944 93
	lui	a5,%hi(.LANCHOR1)
	li	a3,10
	addi	a4,a5,%lo(.LANCHOR1)
	mula	a4,a2,a3
	.loc 1 941 23
	sw	zero,12(sp)
	.loc 1 942 5 is_stmt 1
	.loc 1 944 5
	.loc 1 938 1 is_stmt 0
	mv	s1,a0
	addi	s2,a5,%lo(.LANCHOR1)
	.loc 1 952 101
	li	s4,10
	.loc 1 952 124
	li	s5,49152
	.loc 1 952 267
	li	s3,4096
	.loc 1 955 12
	li	s6,100
	.loc 1 944 93
	lbu	a3,9(a4)
	.loc 1 944 64
	lw	a4,8(a0)
	add	a2,a3,a4
	.loc 1 944 117
	sw	zero,8(a2)
	.loc 1 946 5 is_stmt 1
	.loc 1 946 12 is_stmt 0
	lrw	a2,a3,a4,0
.LVL179:
	.loc 1 947 5 is_stmt 1
	.loc 1 948 5
	.loc 1 949 5
	.loc 1 949 12 is_stmt 0
	andi	a2,a2,-50
.LVL180:
	.loc 1 950 5 is_stmt 1
	.loc 1 950 116 is_stmt 0
	srw	a2,a3,a4,0
	.loc 1 952 5 is_stmt 1
.LVL181:
.L129:
	.loc 1 952 11
	.loc 1 952 93 is_stmt 0
	lbu	a5,12(s1)
	.loc 1 952 101
	mv	a4,s2
	.loc 1 952 72
	lw	a3,8(s1)
	.loc 1 952 101
	mula	a4,a5,s4
	lbu	a5,9(a4)
	.loc 1 952 72
	add	a5,a5,a3
	.loc 1 952 115
	lw	s0,4(a5)
	.loc 1 952 124
	and	s0,s0,s5
	.loc 1 952 11
	bne	s0,zero,.L131
	.loc 1 952 258 discriminator 1
	lw	a3,4(a5)
	.loc 1 952 267 discriminator 1
	and	a3,a3,s3
	.loc 1 952 151 discriminator 1
	beq	a3,zero,.L131
	.loc 1 960 5 is_stmt 1
	.loc 1 960 8 is_stmt 0
	lbu	a3,4(a4)
	bne	a3,zero,.L132
.L136:
	.loc 1 972 5 is_stmt 1
	.loc 1 972 220 is_stmt 0
	lw	a4,4(a5)
.LBB42:
	.loc 1 977 9
	lui	s2,%hi(.LANCHOR0)
	addi	s2,s2,%lo(.LANCHOR0)
.LBE42:
	.loc 1 972 116
	sw	a4,4(a5)
	.loc 1 973 5 is_stmt 1
	.loc 1 973 116 is_stmt 0
	lw	a4,0(a5)
.LBB43:
	.loc 1 977 9
	li	s4,96
	li	s5,960
.LBE43:
	.loc 1 973 116
	ori	a4,a4,2
	sw	a4,0(a5)
	.loc 1 975 5 is_stmt 1
.LBB44:
	.loc 1 975 10
.LVL182:
	.loc 1 975 29
	.loc 1 975 5 is_stmt 0
	li	s3,10
.LVL183:
.L133:
	.loc 1 976 9 is_stmt 1 discriminator 3
	.loc 1 977 9 discriminator 3
	.loc 1 976 36 is_stmt 0 discriminator 3
	lbu	a5,12(s1)
	.loc 1 977 9 discriminator 3
	mul	a5,a5,s5
	mula	a5,s0,s4
	.loc 1 975 5 discriminator 3
	addi	s0,s0,1
.LVL184:
	.loc 1 977 9 discriminator 3
	add	a5,s2,a5
	lw	a0,60(a5)
	call	usb_osal_sem_delete
.LVL185:
	.loc 1 975 41 is_stmt 1 discriminator 3
	.loc 1 975 29 discriminator 3
	.loc 1 975 5 is_stmt 0 discriminator 3
	bne	s0,s3,.L133
.LBE44:
	.loc 1 984 5 is_stmt 1
	mv	a0,s1
	call	usb_hc_low_level_deinit
.LVL186:
	.loc 1 985 5
	.loc 1 985 12 is_stmt 0
	li	a0,0
.L128:
	.loc 1 986 1
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
.LVL187:
	lw	s2,32(sp)
	.cfi_restore 18
	lw	s3,28(sp)
	.cfi_restore 19
	lw	s4,24(sp)
	.cfi_restore 20
	lw	s5,20(sp)
	.cfi_restore 21
	lw	s6,16(sp)
	.cfi_restore 22
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL188:
.L131:
	.cfi_restore_state
	.loc 1 953 9 is_stmt 1
	li	a0,1
	call	usb_osal_msleep
.LVL189:
	.loc 1 954 9
	.loc 1 954 16 is_stmt 0
	lw	a5,12(sp)
	addi	a5,a5,1
	sw	a5,12(sp)
	.loc 1 955 9 is_stmt 1
	.loc 1 955 21 is_stmt 0
	lw	a5,12(sp)
	.loc 1 955 12
	bleu	a5,s6,.L129
	.loc 1 956 20
	li	a0,-14
	j	.L128
.L132:
.LBB45:
	.loc 1 963 20
	li	a3,-4096
	.loc 1 961 66
	lbu	a0,8(a4)
	.loc 1 963 20
	addi	a3,a3,-1
	.loc 1 961 66
	li	a4,0
.L134:
.LVL190:
	.loc 1 961 32 is_stmt 1 discriminator 1
	.loc 1 961 9 is_stmt 0 discriminator 1
	andi	a2,a4,0xff
	bgeu	a2,a0,.L136
	.loc 1 962 13 is_stmt 1 discriminator 3
	addsl	a1, a5, a4, 2
	.loc 1 962 20 is_stmt 0 discriminator 3
	lw	a2,32(a1)
.LVL191:
	.loc 1 963 13 is_stmt 1 discriminator 3
	addi	a4,a4,1
.LVL192:
	.loc 1 963 20 is_stmt 0 discriminator 3
	and	a2,a2,a3
.LVL193:
	.loc 1 964 13 is_stmt 1 discriminator 3
	.loc 1 964 130 is_stmt 0 discriminator 3
	sw	a2,32(a1)
	.loc 1 961 76 is_stmt 1 discriminator 3
	j	.L134
.LBE45:
	.cfi_endproc
.LFE51:
	.size	usb_hc_deinit, .-usb_hc_deinit
	.section	.text.usbh_get_frame_number,"ax",@progbits
	.align	1
	.globl	usbh_get_frame_number
	.type	usbh_get_frame_number, @function
usbh_get_frame_number:
.LFB52:
	.loc 1 989 1
	.cfi_startproc
.LVL194:
	.loc 1 996 5
	.loc 1 996 95 is_stmt 0
	lbu	a3,12(a0)
	.loc 1 996 103
	lui	a5,%hi(.LANCHOR1)
	li	a4,10
	addi	a5,a5,%lo(.LANCHOR1)
	mula	a5,a3,a4
	.loc 1 996 74
	lw	a4,8(a0)
	.loc 1 996 103
	lbu	a5,9(a5)
	.loc 1 996 74
	add	a5,a5,a4
	.loc 1 996 117
	lw	a0,12(a5)
.LVL195:
	.loc 1 997 1
	extu	a0,a0,3+10-1,3
	ret
	.cfi_endproc
.LFE52:
	.size	usbh_get_frame_number, .-usbh_get_frame_number
	.section	.text.usbh_roothub_control,"ax",@progbits
	.align	1
	.globl	usbh_roothub_control
	.type	usbh_roothub_control, @function
usbh_roothub_control:
.LFB53:
	.loc 1 1000 1 is_stmt 1
	.cfi_startproc
.LVL196:
	.loc 1 1001 5
	.loc 1 1002 5
	.loc 1 1003 5
	.loc 1 1005 5
	.loc 1 1000 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s1,36(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	sw	s6,16(sp)
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s2,32(sp)
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.loc 1 1005 33
	lbu	a5,12(a0)
.LVL197:
	.loc 1 1007 5 is_stmt 1
	.loc 1 1009 100 is_stmt 0
	lui	s4,%hi(.LANCHOR1)
	addi	s5,s4,%lo(.LANCHOR1)
	li	s6,10
	mv	a3,s5
	mula	a3,a5,s6
	.loc 1 1007 10
	lbu	s0,4(a1)
.LVL198:
	.loc 1 1009 5 is_stmt 1
	.loc 1 1000 1 is_stmt 0
	mv	s1,a2
	.loc 1 1009 71
	lw	a2,8(a0)
.LVL199:
	slli	s3,s0,2
	.loc 1 1009 100
	lbu	a6,9(a3)
	.loc 1 1009 71
	add	a7,a6,a2
	add	a5,a7,s3
.LVL200:
	.loc 1 1009 10
	lw	a4,28(a5)
	.loc 1 1025 5 is_stmt 1
	.loc 1 1055 12
	.loc 1 1055 15 is_stmt 0
	lbu	a4,0(a1)
	andi	a4,a4,3
	bne	a4,zero,.L145
.LVL201:
.L227:
.LBB60:
.LBB61:
	.file 2 ".\\components\\usb\\cherryusb\\common/usb_memcpy.h"
	.loc 2 79 13 is_stmt 1
	.loc 2 80 13
	.loc 2 77 15
	.loc 2 85 15
.LBE61:
.LBE60:
	.loc 1 1191 12 is_stmt 0
	li	a0,0
.LBB67:
.LBB64:
	j	.L144
.LVL202:
.L145:
.LBE64:
.LBE67:
	.loc 1 1005 12
	lbu	a4,8(a3)
	.loc 1 1056 9 is_stmt 1
	.loc 1 1056 22 is_stmt 0
	lbu	a3,1(a1)
	mv	s2,a0
	.loc 1 1056 9
	li	a0,1
.LVL203:
	beq	a3,a0,.L147
	li	a0,3
	beq	a3,a0,.L148
	bne	a3,zero,.L227
	.loc 1 1145 17 is_stmt 1
	.loc 1 1059 28 is_stmt 0
	li	a0,-2
	.loc 1 1145 20
	beq	s0,zero,.L144
	.loc 1 1145 27 discriminator 1
	bltu	a4,s0,.L144
	.loc 1 1148 17 is_stmt 1
	.loc 1 1148 22 is_stmt 0
	lw	s3,28(a5)
.LVL204:
	.loc 1 1150 17 is_stmt 1
	.loc 1 1151 17
	.loc 1 1151 26 is_stmt 0
	andi	a5,s3,2
	.loc 1 1151 20
	bne	a5,zero,.L167
	.loc 1 1150 24
	sw	zero,12(sp)
.L168:
	.loc 1 1154 17 is_stmt 1
	.loc 1 1154 26 is_stmt 0
	andi	a5,s3,8
	.loc 1 1154 20
	beq	a5,zero,.L169
	.loc 1 1155 21 is_stmt 1
	.loc 1 1155 28 is_stmt 0
	lw	a5,12(sp)
	li	a4,131072
	or	a5,a5,a4
	sw	a5,12(sp)
.L169:
	.loc 1 1157 17 is_stmt 1
	.loc 1 1157 26 is_stmt 0
	andi	a5,s3,32
	.loc 1 1157 20
	beq	a5,zero,.L170
	.loc 1 1158 21 is_stmt 1
	.loc 1 1158 28 is_stmt 0
	lw	a5,12(sp)
	li	a4,524288
	or	a5,a5,a4
	sw	a5,12(sp)
.L170:
	.loc 1 1161 17 is_stmt 1
	.loc 1 1161 26 is_stmt 0
	andi	a5,s3,1
	.loc 1 1161 20
	beq	a5,zero,.L171
	.loc 1 1162 21 is_stmt 1
	.loc 1 1162 28 is_stmt 0
	lw	a5,12(sp)
	ori	a5,a5,1
	sw	a5,12(sp)
.L171:
	.loc 1 1164 17 is_stmt 1
	.loc 1 1164 26 is_stmt 0
	andi	a5,s3,4
	.loc 1 1164 20
	beq	a5,zero,.L173
	.loc 1 1165 21 is_stmt 1
	.loc 1 1165 28 is_stmt 0
	lw	s4,12(sp)
	.loc 1 1167 25
	mv	a1,s0
.LVL205:
	mv	a0,s2
	.loc 1 1165 28
	ori	a5,s4,2
	sw	a5,12(sp)
	.loc 1 1167 21 is_stmt 1
	.loc 1 1167 25 is_stmt 0
	call	usbh_get_port_speed
.LVL206:
	.loc 1 1167 24
	li	a5,1
	bne	a0,a5,.L174
	.loc 1 1168 25 is_stmt 1
	.loc 1 1168 32 is_stmt 0
	ori	s4,s4,514
.L226:
	.loc 1 1170 32
	sw	s4,12(sp)
.L173:
	.loc 1 1173 17 is_stmt 1
	.loc 1 1173 26 is_stmt 0
	andi	a5,s3,128
	.loc 1 1173 20
	beq	a5,zero,.L176
	.loc 1 1174 21 is_stmt 1
	.loc 1 1174 28 is_stmt 0
	lw	a5,12(sp)
	ori	a5,a5,4
	sw	a5,12(sp)
.L176:
	.loc 1 1176 17 is_stmt 1
	.loc 1 1176 26 is_stmt 0
	andi	a5,s3,16
	.loc 1 1176 20
	beq	a5,zero,.L177
	.loc 1 1177 21 is_stmt 1
	.loc 1 1177 28 is_stmt 0
	lw	a5,12(sp)
	ori	a5,a5,8
	sw	a5,12(sp)
.L177:
	.loc 1 1179 17 is_stmt 1
	.loc 1 1179 26 is_stmt 0
	andi	a5,s3,256
	.loc 1 1179 20
	beq	a5,zero,.L178
	.loc 1 1180 21 is_stmt 1
	.loc 1 1180 28 is_stmt 0
	lw	a5,12(sp)
	ori	a5,a5,16
	sw	a5,12(sp)
.L178:
	.loc 1 1182 17 is_stmt 1
	.loc 1 1182 26 is_stmt 0
	li	a5,4096
	and	s3,s3,a5
.LVL207:
	.loc 1 1182 20
	bne	s3,zero,.L179
	.loc 1 1182 44 discriminator 1
	lw	a5,8(s2)
	.loc 1 1182 103 discriminator 1
	lw	a5,4(a5)
	.loc 1 1182 115 discriminator 1
	andi	a5,a5,16
	.loc 1 1182 38 discriminator 1
	bne	a5,zero,.L180
.L179:
	.loc 1 1183 21 is_stmt 1
	.loc 1 1183 28 is_stmt 0
	lw	a5,12(sp)
	ori	a5,a5,256
	sw	a5,12(sp)
.L180:
	.loc 1 1185 17 is_stmt 1
.LVL208:
.LBB68:
.LBB65:
	.loc 2 24 5
	.loc 2 25 5
	.loc 2 26 5
	.loc 2 27 5
	.loc 2 29 5
	.loc 2 29 62 is_stmt 0
	andi	a5,s1,3
	.loc 2 29 8
	beq	a5,zero,.L197
	.loc 2 58 15 is_stmt 1
.LVL209:
	.loc 2 65 15
	.loc 2 77 15
	.loc 2 78 10
	lw	a5,12(sp)
.LVL210:
.LBB62:
.LBB63:
	.loc 2 16 5
	.loc 2 17 17 is_stmt 0
	srli	a4,a5,8
	.loc 2 16 13
	sb	a5,0(s1)
	.loc 2 17 5 is_stmt 1
	.loc 2 17 13 is_stmt 0
	sb	a4,1(s1)
	.loc 2 18 5 is_stmt 1
	.loc 2 18 17 is_stmt 0
	srli	a4,a5,16
	.loc 2 19 17
	srli	a5,a5,24
.LVL211:
	.loc 2 18 13
	sb	a4,2(s1)
	.loc 2 19 5 is_stmt 1
	.loc 2 19 13 is_stmt 0
	sb	a5,3(s1)
	j	.L227
.LVL212:
.L147:
.LBE63:
.LBE62:
.LBE65:
.LBE68:
	.loc 1 1058 17 is_stmt 1
	.loc 1 1059 28 is_stmt 0
	li	a0,-2
	.loc 1 1058 20
	beq	s0,zero,.L144
	.loc 1 1058 27 discriminator 1
	bltu	a4,s0,.L144
	.loc 1 1062 17 is_stmt 1
	.loc 1 1062 30 is_stmt 0
	lbu	a4,3(a1)
	lbu	a2,2(a1)
	slli	a4,a4,8
	or	a4,a4,a2
	li	a2,16
	beq	a4,a2,.L150
	bgtu	a4,a2,.L151
	li	a2,2
	beq	a4,a2,.L152
	li	a2,8
	beq	a4,a2,.L153
	li	a0,-5
	bne	a4,a3,.L144
	.loc 1 1064 25 is_stmt 1
	.loc 1 1064 146 is_stmt 0
	lw	a4,28(a5)
	andi	a4,a4,-5
.L229:
	.loc 1 1123 146
	sw	a4,28(a5)
.LVL213:
	.loc 1 1124 25 is_stmt 1
	j	.L227
.LVL214:
.L151:
	li	a3,19
	beq	a4,a3,.L155
	bgtu	a4,a3,.L156
	li	a3,17
	beq	a4,a3,.L157
	li	a5,18
.L228:
	li	a0,-5
	beq	a4,a5,.L227
.LVL215:
.L144:
	.loc 1 1192 1 is_stmt 0
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
	lw	s3,28(sp)
	.cfi_restore 19
	lw	s4,24(sp)
	.cfi_restore 20
	lw	s5,20(sp)
	.cfi_restore 21
	lw	s6,16(sp)
	.cfi_restore 22
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL216:
.L156:
	.cfi_restore_state
	li	a5,20
	j	.L228
.L152:
	.loc 1 1067 25 is_stmt 1
	.loc 1 1067 146 is_stmt 0
	lw	a4,28(a5)
	.loc 1 1068 25
	li	a0,20
	.loc 1 1067 146
	ori	a4,a4,64
	sw	a4,28(a5)
.LVL217:
	.loc 1 1068 25 is_stmt 1
	call	usb_osal_msleep
.LVL218:
	.loc 1 1069 25
	.loc 1 1069 105 is_stmt 0
	lbu	a5,12(s2)
	.loc 1 1069 113
	mula	s5,a5,s6
	.loc 1 1069 146
	lw	a5,8(s2)
	lbu	a4,9(s5)
	add	a2,a4,a5
	add	s3,a2,s3
	lw	a3,28(s3)
	andi	a3,a3,-65
	sw	a3,28(s3)
	.loc 1 1070 25 is_stmt 1
.L158:
	.loc 1 1071 25 discriminator 1
	.loc 1 1070 31 discriminator 1
	.loc 1 1070 142 is_stmt 0 discriminator 1
	lw	a3,28(s3)
	.loc 1 1070 153 discriminator 1
	andi	a3,a3,64
	.loc 1 1070 31 discriminator 1
	bne	a3,zero,.L158
	.loc 1 1073 25 is_stmt 1
	.loc 1 1073 30 is_stmt 0
	lrw	a3,a4,a5,0
.LVL219:
	.loc 1 1074 25 is_stmt 1
	.loc 1 1075 25
	.loc 1 1076 25
	.loc 1 1076 30 is_stmt 0
	ori	a3,a3,49
.LVL220:
	.loc 1 1077 25 is_stmt 1
	.loc 1 1077 136 is_stmt 0
	srw	a3,a4,a5,0
	.loc 1 1079 25 is_stmt 1
.L159:
	.loc 1 1080 25 discriminator 1
	.loc 1 1079 31 discriminator 1
	.loc 1 1079 135 is_stmt 0 discriminator 1
	lw	a5,0(a2)
	.loc 1 1079 144 discriminator 1
	andi	a5,a5,1
	.loc 1 1079 31 discriminator 1
	beq	a5,zero,.L159
	j	.L227
.LVL221:
.L153:
	.loc 1 1085 25 is_stmt 1
	.loc 1 1085 146 is_stmt 0
	lw	a4,28(a5)
	li	a3,-4096
	addi	a3,a3,-1
	and	a4,a4,a3
	j	.L229
.L150:
	.loc 1 1088 25 is_stmt 1
	.loc 1 1088 146 is_stmt 0
	lw	a4,28(a5)
	ori	a4,a4,2
	j	.L229
.L157:
	.loc 1 1091 25 is_stmt 1
	.loc 1 1091 146 is_stmt 0
	lw	a4,28(a5)
	ori	a4,a4,8
	j	.L229
.L155:
	.loc 1 1094 25 is_stmt 1
	.loc 1 1094 146 is_stmt 0
	lw	a4,28(a5)
	ori	a4,a4,32
	j	.L229
.L148:
	.loc 1 1103 17 is_stmt 1
	.loc 1 1059 28 is_stmt 0
	li	a0,-2
	.loc 1 1103 20
	beq	s0,zero,.L144
	.loc 1 1103 27 discriminator 1
	bltu	a4,s0,.L144
	.loc 1 1107 17 is_stmt 1
	.loc 1 1107 30 is_stmt 0
	lbu	a4,3(a1)
	lbu	a3,2(a1)
	slli	a4,a4,8
	or	a4,a4,a3
	li	a3,4
	beq	a4,a3,.L161
	li	a3,8
	beq	a4,a3,.L162
	li	a3,2
	li	a0,-5
	bne	a4,a3,.L144
	.loc 1 1109 25 is_stmt 1
	.loc 1 1109 30 is_stmt 0
	lrw	a4,a6,a2,0
.LVL222:
	.loc 1 1110 25 is_stmt 1
	.loc 1 1111 25
	.loc 1 1112 25
	.loc 1 1112 30 is_stmt 0
	andi	a4,a4,-50
.LVL223:
	.loc 1 1113 25 is_stmt 1
	.loc 1 1113 136 is_stmt 0
	srw	a4,a6,a2,0
.LVL224:
	.loc 1 1115 25 is_stmt 1
.L163:
	.loc 1 1116 25 discriminator 1
	.loc 1 1115 31 discriminator 1
	.loc 1 1115 134 is_stmt 0 discriminator 1
	lw	a4,0(a7)
	.loc 1 1115 143 discriminator 1
	andi	a4,a4,1
	.loc 1 1115 31 discriminator 1
	bne	a4,zero,.L163
	.loc 1 1118 25 is_stmt 1
	.loc 1 1118 146 is_stmt 0
	lw	a4,28(a5)
	ori	a4,a4,128
	sw	a4,28(a5)
.LVL225:
	.loc 1 1119 25 is_stmt 1
.L164:
	.loc 1 1120 25 discriminator 1
	.loc 1 1119 31 discriminator 1
	.loc 1 1119 143 is_stmt 0 discriminator 1
	lw	a4,28(a5)
	.loc 1 1119 154 discriminator 1
	andi	a4,a4,128
	.loc 1 1119 31 discriminator 1
	beq	a4,zero,.L164
	j	.L227
.LVL226:
.L162:
	.loc 1 1123 25 is_stmt 1
	.loc 1 1123 146 is_stmt 0
	lw	a4,28(a5)
	li	a3,4096
	or	a4,a4,a3
	j	.L229
.L161:
.LBB69:
.LBB70:
	.loc 1 728 23
	sw	zero,12(sp)
	.loc 1 738 12
	lw	a4,28(a5)
	.loc 1 742 5
	li	a0,55
	addi	s4,s4,%lo(.LANCHOR1)
.LBE70:
.LBE69:
	.loc 1 1126 25 is_stmt 1
.LVL227:
.LBB72:
.LBB71:
	.loc 1 728 5
	.loc 1 729 5
	.loc 1 738 5
	.loc 1 739 5
	.loc 1 739 12 is_stmt 0
	andi	a4,a4,-5
.LVL228:
	.loc 1 740 5 is_stmt 1
	.loc 1 740 12 is_stmt 0
	ori	a4,a4,256
.LVL229:
	.loc 1 741 5 is_stmt 1
	.loc 1 741 126 is_stmt 0
	sw	a4,28(a5)
.LVL230:
	.loc 1 742 5 is_stmt 1
	call	usb_osal_msleep
.LVL231:
	.loc 1 744 5
	.loc 1 744 85 is_stmt 0
	lbu	a4,12(s2)
	.loc 1 744 93
	mv	a5,s4
	.loc 1 745 101
	li	s1,10
.LVL232:
	.loc 1 744 93
	mula	a5,a4,s6
	.loc 1 744 126
	lw	a4,8(s2)
	.loc 1 745 123
	addi	s0,s0,7
	.loc 1 744 126
	lbu	a5,9(a5)
	add	a5,a5,a4
	add	s3,a5,s3
	lw	a5,28(s3)
	andi	a5,a5,-257
	sw	a5,28(s3)
	.loc 1 745 5 is_stmt 1
	.loc 1 748 12 is_stmt 0
	li	s3,100
.L165:
	.loc 1 745 11 is_stmt 1
	.loc 1 745 93 is_stmt 0
	lbu	a4,12(s2)
	.loc 1 745 101
	mv	a5,s4
	mula	a5,a4,s1
	.loc 1 745 72
	lw	a4,8(s2)
	.loc 1 745 101
	lbu	a5,9(a5)
	.loc 1 745 72
	add	a5,a5,a4
	.loc 1 745 123
	lrw	a5,a5,s0,2
	.loc 1 745 134
	andi	a5,a5,256
	.loc 1 745 11
	beq	a5,zero,.L227
	.loc 1 746 9 is_stmt 1
	li	a0,1
	call	usb_osal_msleep
.LVL233:
	.loc 1 747 9
	.loc 1 747 16 is_stmt 0
	lw	a5,12(sp)
	addi	a5,a5,1
	sw	a5,12(sp)
	.loc 1 748 9 is_stmt 1
	.loc 1 748 21 is_stmt 0
	lw	a5,12(sp)
	.loc 1 748 12
	bleu	a5,s3,.L165
	j	.L227
.LVL234:
.L167:
.LBE71:
.LBE72:
	.loc 1 1152 21 is_stmt 1
	.loc 1 1152 28 is_stmt 0
	li	a5,65536
	sw	a5,12(sp)
	j	.L168
.LVL235:
.L174:
	.loc 1 1169 28 is_stmt 1
	.loc 1 1169 32 is_stmt 0
	mv	a1,s0
	mv	a0,s2
	call	usbh_get_port_speed
.LVL236:
	.loc 1 1169 31
	li	a5,3
	bne	a0,a5,.L173
	.loc 1 1170 25 is_stmt 1
	.loc 1 1170 32 is_stmt 0
	ori	s4,s4,1026
	j	.L226
.LVL237:
.L197:
.LBB73:
.LBB66:
	.loc 2 25 17
	addi	a3,sp,12
.LVL238:
	li	a4,4
	j	.L181
.LVL239:
.L224:
	.loc 2 30 74
	beq	a4,zero,.L227
	.loc 2 31 13 is_stmt 1
.LVL240:
	.loc 2 31 19 is_stmt 0
	lbuia	a5,(a3),1,0
.LVL241:
	.loc 2 32 13
	addi	a4,a4,-1
	.loc 2 31 19
	sbia	a5,(s1),1,0
.LVL242:
	.loc 2 32 13 is_stmt 1
.L181:
	.loc 2 30 15
	.loc 2 30 43 is_stmt 0
	andi	a5,s1,3
	.loc 2 30 15
	bne	a5,zero,.L224
	.loc 2 46 15
	li	a2,4
.LVL243:
.L183:
	.loc 2 46 15 is_stmt 1
	beq	a4,a2,.L185
.LVL244:
.L186:
	.loc 2 54 15
	beq	a4,a5,.L227
	.loc 2 55 13
.LVL245:
	.loc 2 55 19 is_stmt 0
	lrbu	a2,a3,a5,0
	srb	a2,s1,a5,0
	addi	a5,a5,1
.LVL246:
	j	.L186
.LVL247:
.L185:
	.loc 2 47 13 is_stmt 1
	.loc 2 47 19 is_stmt 0
	lwia	a4,(a3),4,0
.LVL248:
	swia	a4,(s1),4,0
.LVL249:
	.loc 2 48 13 is_stmt 1
	.loc 2 48 15 is_stmt 0
	li	a4,0
	j	.L183
.LBE66:
.LBE73:
	.cfi_endproc
.LFE53:
	.size	usbh_roothub_control, .-usbh_roothub_control
	.section	.text.usbh_kill_urb,"ax",@progbits
	.align	1
	.globl	usbh_kill_urb
	.type	usbh_kill_urb, @function
usbh_kill_urb:
.LFB55:
	.loc 1 1291 1 is_stmt 1
	.cfi_startproc
.LVL250:
	.loc 1 1292 5
	.loc 1 1293 5
	.loc 1 1294 5
	.loc 1 1295 4
	.loc 1 1297 5
	.loc 1 1297 8 is_stmt 0
	beq	a0,zero,.L246
	.loc 1 1297 21 discriminator 1
	lw	a4,8(a0)
	.loc 1 1298 16 discriminator 1
	li	a5,-2
	.loc 1 1297 14 discriminator 1
	beq	a4,zero,.L255
	.loc 1 1297 29 discriminator 2
	lw	a3,4(a0)
	beq	a3,zero,.L255
	.loc 1 1297 59 discriminator 3
	li	a5,4096
	.loc 1 1291 1 discriminator 3
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	.loc 1 1297 59 discriminator 3
	add	a4,a4,a5
	.loc 1 1291 1 discriminator 3
	sw	s0,56(sp)
	.cfi_offset 8, -8
	.loc 1 1297 59 discriminator 3
	lw	s0,932(a4)
	.loc 1 1291 1 discriminator 3
	sw	ra,60(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	sw	s3,44(sp)
	sw	s4,40(sp)
	sw	s5,36(sp)
	sw	s6,32(sp)
	sw	s7,28(sp)
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.loc 1 1298 16 discriminator 3
	li	a5,-2
	.loc 1 1297 45 discriminator 3
	beq	s0,zero,.L230
	mv	s1,a0
	.loc 1 1301 5 is_stmt 1
.LVL251:
	.loc 1 1309 5
	.loc 1 1309 13 is_stmt 0
	call	usb_osal_enter_critical_section
.LVL252:
	.loc 1 1311 85
	lbu	a4,12(s0)
	.loc 1 1311 93
	lui	s3,%hi(.LANCHOR1)
	addi	s2,s3,%lo(.LANCHOR1)
	li	s4,10
	mv	a5,s2
	mula	a5,a4,s4
	.loc 1 1311 116
	lw	a3,8(s0)
	.loc 1 1309 13
	mv	s5,a0
.LVL253:
	.loc 1 1311 5 is_stmt 1
	addi	s3,s3,%lo(.LANCHOR1)
	.loc 1 1311 116 is_stmt 0
	lbu	a2,9(a5)
	lrw	a5,a2,a3,0
	andi	a5,a5,-49
	srw	a5,a2,a3,0
	.loc 1 1313 5 is_stmt 1
	.loc 1 1313 19 is_stmt 0
	lw	a5,12(s1)
	lbu	a5,3(a5)
	.loc 1 1313 8
	andi	a3,a5,1
	bne	a3,zero,.L232
	.loc 1 1314 9 is_stmt 1
	.loc 1 1314 94 is_stmt 0
	lui	a5,%hi(.LANCHOR2)
	addi	a5,a5,%lo(.LANCHOR2)
	li	a2,96
	mv	a3,a5
	mula	a3,a4,a2
	.loc 1 1295 9
	li	s6,0
	.loc 1 1315 23
	addi	s4,a5,-1216
	li	s7,96
	.loc 1 1314 36
	lw	s2,-1216(a3)
	andi	s2,s2,-32
.LVL254:
	.loc 1 1315 9 is_stmt 1
.L233:
	.loc 1 1315 15
	.loc 1 1315 23 is_stmt 0
	lbu	a5,12(s0)
	mv	a0,s4
	mula	a0,a5,s7
	.loc 1 1315 15
	beq	a0,s2,.L235
	.loc 1 1315 58 discriminator 1
	bne	s2,zero,.L236
.LVL255:
.L235:
	.loc 1 1339 5 is_stmt 1
	.loc 1 1339 85 is_stmt 0
	lbu	a3,12(s0)
	.loc 1 1339 93
	li	a4,10
	mv	a5,s3
	mula	a5,a3,a4
	.loc 1 1339 116
	lw	a4,8(s0)
	.loc 1 1341 8
	lw	a0,4(s1)
	.loc 1 1339 116
	lbu	a3,9(a5)
	lrw	a5,a3,a4,0
	ori	a5,a5,48
	srw	a5,a3,a4,0
	.loc 1 1341 5 is_stmt 1
.LVL256:
	.loc 1 1342 5
	.loc 1 1343 20 is_stmt 0
	li	a5,-13
	sw	a5,44(s1)
	.loc 1 1346 8
	lw	a5,40(s1)
	.loc 1 1342 17
	sw	zero,4(s1)
	.loc 1 1343 5 is_stmt 1
	.loc 1 1344 5
	.loc 1 1344 13 is_stmt 0
	sw	zero,56(a0)
	.loc 1 1346 5 is_stmt 1
	.loc 1 1346 8 is_stmt 0
	beq	a5,zero,.L241
	.loc 1 1347 9 is_stmt 1
	lw	a0,60(a0)
.LVL257:
	call	usb_osal_sem_give
.LVL258:
.L242:
	.loc 1 1352 5
	.loc 1 1352 8 is_stmt 0
	beq	s6,zero,.L243
.LBB74:
	.loc 1 1353 9 is_stmt 1
	.loc 1 1354 89 is_stmt 0
	lbu	a3,12(s0)
	.loc 1 1354 97
	li	a4,10
	mv	a5,s3
	mula	a5,a3,a4
	.loc 1 1354 120
	lw	a4,8(s0)
	.loc 1 1353 27
	sw	zero,12(sp)
	.loc 1 1354 9 is_stmt 1
	.loc 1 1355 106 is_stmt 0
	li	s1,10
.LVL259:
	.loc 1 1358 16
	li	s2,100
	.loc 1 1354 120
	lbu	a3,9(a5)
	lrw	a5,a3,a4,0
	ori	a5,a5,64
	srw	a5,a3,a4,0
	.loc 1 1355 9 is_stmt 1
.L244:
	.loc 1 1355 15
	.loc 1 1355 98 is_stmt 0
	lbu	a4,12(s0)
	.loc 1 1355 106
	mv	a5,s3
	mula	a5,a4,s1
	.loc 1 1355 77
	lw	a4,8(s0)
	.loc 1 1355 106
	lbu	a5,9(a5)
	.loc 1 1355 77
	add	a5,a5,a4
	.loc 1 1355 120
	lw	a4,4(a5)
	.loc 1 1355 129
	andi	a4,a4,32
	.loc 1 1355 15
	beq	a4,zero,.L245
	.loc 1 1363 9 is_stmt 1
	.loc 1 1363 120 is_stmt 0
	li	a4,32
	sw	a4,4(a5)
	j	.L243
.LVL260:
.L236:
.LBE74:
	.loc 1 1316 13 is_stmt 1
	.loc 1 1316 16 is_stmt 0
	lw	a5,56(s2)
	bne	a5,s1,.L234
	.loc 1 1317 17 is_stmt 1
.LVL261:
	.loc 1 1318 17
.LBB75:
.LBB76:
	.loc 1 721 5
	.loc 1 723 5
	mv	a1,s2
	call	ehci_qh_remove
.LVL262:
.LBE76:
.LBE75:
	.loc 1 1317 32 is_stmt 0
	li	s6,1
.LVL263:
.L234:
	.loc 1 1320 13 is_stmt 1
	.loc 1 1320 40 is_stmt 0
	lw	s2,0(s2)
.LVL264:
	andi	s2,s2,-32
.LVL265:
	j	.L233
.LVL266:
.L232:
	.loc 1 1322 12 is_stmt 1
	.loc 1 1322 15 is_stmt 0
	andi	a5,a5,3
	li	a3,3
	bne	a5,a3,.L237
	.loc 1 1323 9 is_stmt 1
	.loc 1 1323 97 is_stmt 0
	lui	a5,%hi(.LANCHOR2)
	addi	a5,a5,%lo(.LANCHOR2)
	li	a2,96
	mv	a3,a5
	mula	a3,a4,a2
	.loc 1 1326 17
	addi	s4,a5,-1120
	li	s6,96
	.loc 1 1323 36
	lw	s2,-1120(a3)
	andi	s2,s2,-32
.LVL267:
	.loc 1 1324 9 is_stmt 1
.L238:
	.loc 1 1324 15
	bne	s2,zero,.L240
	.loc 1 1295 9 is_stmt 0
	li	s6,0
	j	.L235
.L240:
	.loc 1 1325 13 is_stmt 1
	.loc 1 1325 16 is_stmt 0
	lw	a5,56(s2)
	bne	a5,s1,.L239
	.loc 1 1326 17 is_stmt 1
.LVL268:
.LBB77:
.LBB78:
	.loc 1 721 5
	.loc 1 723 5
.LBE78:
.LBE77:
	.loc 1 1326 17 is_stmt 0
	lbu	a5,12(s0)
.LBB80:
.LBB79:
	.loc 1 723 5
	mv	a0,s4
	mv	a1,s2
	mula	a0,a5,s6
	call	ehci_qh_remove
.LVL269:
.L239:
.LBE79:
.LBE80:
	.loc 1 1328 13 is_stmt 1
	.loc 1 1328 40 is_stmt 0
	lw	s2,0(s2)
.LVL270:
	andi	s2,s2,-32
.LVL271:
	j	.L238
.LVL272:
.L237:
	.loc 1 1332 9 is_stmt 1
	mv	a1,s1
	mv	a0,s0
.LVL273:
	call	ehci_kill_iso_urb
.LVL274:
	.loc 1 1333 9
	.loc 1 1333 89 is_stmt 0
	lbu	a5,12(s0)
	.loc 1 1333 120
	lw	a4,8(s0)
	.loc 1 1333 97
	mula	s2,a5,s4
	.loc 1 1333 120
	lbu	a3,9(s2)
	lrw	a5,a3,a4,0
	ori	a5,a5,48
	srw	a5,a3,a4,0
	.loc 1 1334 9 is_stmt 1
.LVL275:
.L243:
	.loc 1 1366 5
	mv	a0,s5
	call	usb_osal_leave_critical_section
.LVL276:
	.loc 1 1368 5
	.loc 1 1368 12 is_stmt 0
	li	a5,0
	j	.L230
.LVL277:
.L241:
	.loc 1 1349 9 is_stmt 1
	call	ehci_qh_free.isra.0
.LVL278:
	j	.L242
.LVL279:
.L245:
.LBB81:
	.loc 1 1356 13
	li	a0,1
	call	usb_osal_msleep
.LVL280:
	.loc 1 1357 13
	.loc 1 1357 20 is_stmt 0
	lw	a5,12(sp)
	addi	a5,a5,1
	sw	a5,12(sp)
	.loc 1 1358 13 is_stmt 1
	.loc 1 1358 25 is_stmt 0
	lw	a5,12(sp)
	.loc 1 1358 16
	bleu	a5,s2,.L244
	.loc 1 1359 17 is_stmt 1
	mv	a0,s5
	call	usb_osal_leave_critical_section
.LVL281:
	.loc 1 1360 17
	.loc 1 1360 24 is_stmt 0
	li	a5,-14
.LVL282:
.L230:
.LBE81:
	.loc 1 1369 1
	lw	ra,60(sp)
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
	lw	s6,32(sp)
	.cfi_restore 22
	lw	s7,28(sp)
	.cfi_restore 23
	mv	a0,a5
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL283:
.L246:
	.loc 1 1298 16
	li	a5,-2
.L255:
	.loc 1 1369 1
	mv	a0,a5
.LVL284:
	ret
	.cfi_endproc
.LFE55:
	.size	usbh_kill_urb, .-usbh_kill_urb
	.section	.rodata.usbh_submit_urb.str1.4,"aMS",@progbits,1
	.align	2
.LC9:
	.string	"\033[31m[E/USB] "
	.align	2
.LC10:
	.string	".\\components\\usb\\cherryusb\\port\\ehci\\usb_hc_ehci.c"
	.align	2
.LC11:
	.string	"qtd_setup && qtd_status"
	.align	2
.LC12:
	.string	"ASSERT FAIL [%s] @ %s:%d\r\n"
	.align	2
.LC13:
	.string	"ctrl qtd alloc failed\r\n"
	.align	2
.LC14:
	.string	"qtd_data"
	.align	2
.LC15:
	.string	"qtd"
	.align	2
.LC16:
	.string	"bulk qtd alloc failed\r\n"
	.align	2
.LC17:
	.string	"intr qtd alloc failed\r\n"
	.section	.text.usbh_submit_urb,"ax",@progbits
	.align	1
	.globl	usbh_submit_urb
	.type	usbh_submit_urb, @function
usbh_submit_urb:
.LFB54:
	.loc 1 1195 1 is_stmt 1
	.cfi_startproc
.LVL285:
	.loc 1 1196 5
	.loc 1 1197 5
	.loc 1 1198 5
	.loc 1 1199 5
	.loc 1 1200 5
	.loc 1 1201 5
	.loc 1 1203 5
	.loc 1 1195 1 is_stmt 0
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	ra,92(sp)
	sw	s0,88(sp)
	sw	s1,84(sp)
	sw	s2,80(sp)
	sw	s3,76(sp)
	sw	s4,72(sp)
	sw	s5,68(sp)
	sw	s6,64(sp)
	sw	s7,60(sp)
	sw	s8,56(sp)
	sw	s9,52(sp)
	sw	s10,48(sp)
	sw	s11,44(sp)
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
	.loc 1 1203 8
	beq	a0,zero,.L299
	.loc 1 1203 21 discriminator 1
	lw	a4,8(a0)
	.loc 1 1203 14 discriminator 1
	beq	a4,zero,.L299
	.loc 1 1203 29 discriminator 2
	lw	a5,12(a0)
	beq	a5,zero,.L299
	.loc 1 1203 55 discriminator 3
	li	a5,4096
	add	a5,a4,a5
	lw	s2,932(a5)
	.loc 1 1203 41 discriminator 3
	beq	s2,zero,.L299
	.loc 1 1212 5 is_stmt 1
.LVL286:
	.loc 1 1215 5
	.loc 1 1216 5
	.loc 1 1216 9 is_stmt 0
	lw	a5,924(a5)
.LVL287:
	.loc 1 1217 5 is_stmt 1
	.loc 1 1217 11 is_stmt 0
	mv	a3,a4
	.loc 1 1218 15
	li	a1,20480
	.loc 1 1219 13
	li	a6,4096
.LVL288:
.L260:
	.loc 1 1217 11 is_stmt 1
	lbu	a2,1(a5)
	beq	a2,zero,.L261
	.loc 1 1228 5
	.loc 1 1228 8 is_stmt 0
	lbu	a5,0(a4)
.LVL289:
	beq	a5,zero,.L301
	.loc 1 1228 117 discriminator 1
	lbu	a2,12(s2)
	.loc 1 1228 125 discriminator 1
	lui	s4,%hi(.LANCHOR1)
	addi	a5,s4,%lo(.LANCHOR1)
	li	a4,10
	mula	a5,a2,a4
	.loc 1 1228 96 discriminator 1
	lw	a4,8(s2)
	addi	s4,s4,%lo(.LANCHOR1)
	.loc 1 1228 125 discriminator 1
	lbu	a5,9(a5)
	.loc 1 1228 96 discriminator 1
	add	a5,a5,a4
	.loc 1 1228 153 discriminator 1
	lbu	a4,1(a3)
	.loc 1 1228 147 discriminator 1
	addi	a4,a4,7
	lrw	a5,a5,a4,2
	.loc 1 1228 165 discriminator 1
	andi	a5,a5,1
	.loc 1 1228 32 discriminator 1
	beq	a5,zero,.L301
	.loc 1 1232 5 is_stmt 1
	.loc 1 1232 12 is_stmt 0
	lw	s3,44(a0)
	.loc 1 1232 8
	li	s1,-6
	beq	s3,s1,.L258
	mv	s0,a0
	.loc 1 1236 5 is_stmt 1
	.loc 1 1236 13 is_stmt 0
	call	usb_osal_enter_critical_section
.LVL290:
	.loc 1 1238 5 is_stmt 1
	.loc 1 1238 17 is_stmt 0
	sw	zero,4(s0)
	.loc 1 1239 5 is_stmt 1
	.loc 1 1239 20 is_stmt 0
	sw	s1,44(s0)
	.loc 1 1240 5 is_stmt 1
	.loc 1 1240 24 is_stmt 0
	sw	zero,36(s0)
	.loc 1 1242 5 is_stmt 1
	call	usb_osal_leave_critical_section
.LVL291:
	.loc 1 1244 5
	.loc 1 1244 22 is_stmt 0
	lw	a5,12(s0)
	.loc 1 1244 5
	li	a4,2
	lbu	a5,3(a5)
	andi	a5,a5,3
	beq	a5,a4,.L262
	li	a4,3
	beq	a5,a4,.L263
	li	a4,1
	beq	a5,a4,.L264
	.loc 1 1246 13 is_stmt 1
.LBB94:
.LBB95:
	.loc 1 333 10 is_stmt 0
	mv	a0,s2
.LBE95:
.LBE94:
	.loc 1 1246 18
	lw	s6,20(s0)
	lw	s8,24(s0)
	lw	s7,28(s0)
.LVL292:
.LBB99:
.LBB96:
	.loc 1 326 5 is_stmt 1
	.loc 1 327 5
	.loc 1 328 5
	.loc 1 329 5
	.loc 1 330 5
	.loc 1 331 5
	.loc 1 333 5
	.loc 1 333 10 is_stmt 0
	call	ehci_qh_alloc
.LVL293:
	mv	s1,a0
.LVL294:
	.loc 1 334 5 is_stmt 1
	.loc 1 334 8 is_stmt 0
	bne	a0,zero,.L265
.LVL295:
.L276:
.LBE96:
.LBE99:
	.loc 1 1248 24
	li	s3,-1
.LVL296:
.L258:
	.loc 1 1288 1
	lw	ra,92(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
	lw	s1,84(sp)
	.cfi_restore 9
	lw	s2,80(sp)
	.cfi_restore 18
	lw	s4,72(sp)
	.cfi_restore 20
	lw	s5,68(sp)
	.cfi_restore 21
	lw	s6,64(sp)
	.cfi_restore 22
	lw	s7,60(sp)
	.cfi_restore 23
	lw	s8,56(sp)
	.cfi_restore 24
	lw	s9,52(sp)
	.cfi_restore 25
	lw	s10,48(sp)
	.cfi_restore 26
	lw	s11,44(sp)
	.cfi_restore 27
	mv	a0,s3
	lw	s3,76(sp)
	.cfi_restore 19
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
.LVL297:
.L261:
	.cfi_restore_state
	.loc 1 1218 9 is_stmt 1
	.loc 1 1218 15 is_stmt 0
	add	a5,a5,a1
.LVL298:
	lw	a3,-16(a5)
.LVL299:
	.loc 1 1219 9 is_stmt 1
	.loc 1 1219 13 is_stmt 0
	add	a5,a3,a6
	lw	a5,924(a5)
.LVL300:
	j	.L260
.LVL301:
.L265:
.LBB100:
.LBB97:
	.loc 1 338 5 is_stmt 1
	.loc 1 338 17 is_stmt 0
	mv	a0,s2
	call	ehci_qtd_alloc
.LVL302:
	mv	s3,a0
.LVL303:
	.loc 1 339 5 is_stmt 1
	.loc 1 339 18 is_stmt 0
	mv	a0,s2
.LVL304:
	call	ehci_qtd_alloc
.LVL305:
	mv	s5,a0
.LVL306:
	.loc 1 340 5 is_stmt 1
	.loc 1 340 10
	.loc 1 340 13 is_stmt 0
	beq	s3,zero,.L266
	.loc 1 340 14
	bne	a0,zero,.L267
.L266:
	.loc 1 340 44 is_stmt 1
	.loc 1 340 49
	lui	s1,%hi(.LC9)
.LVL307:
	addi	a0,s1,%lo(.LC9)
.LVL308:
	call	printf
.LVL309:
	.loc 1 340 95
	lui	a2,%hi(.LC10)
	lui	a1,%hi(.LC11)
	lui	a0,%hi(.LC12)
	li	a3,340
	addi	a2,a2,%lo(.LC10)
	addi	a1,a1,%lo(.LC11)
	addi	a0,a0,%lo(.LC12)
	call	printf
.LVL310:
	.loc 1 340 226
	lui	s0,%hi(.LC2)
.LVL311:
	addi	a0,s0,%lo(.LC2)
	call	printf
.LVL312:
	.loc 1 340 253
	.loc 1 340 258
	.loc 1 340 263
	addi	a0,s1,%lo(.LC9)
	call	printf
.LVL313:
	.loc 1 340 309
	lui	a0,%hi(.LC13)
	addi	a0,a0,%lo(.LC13)
	call	printf
.LVL314:
	.loc 1 340 349
	addi	a0,s0,%lo(.LC2)
	call	printf
.LVL315:
.L268:
	.loc 1 340 376
	.loc 1 340 381
	.loc 1 340 393
	.loc 1 340 387
	j	.L268
.LVL316:
.L267:
	.loc 1 340 405
	.loc 1 342 5
	.loc 1 344 21 is_stmt 0
	lw	a2,12(s0)
	.loc 1 343 21
	lw	a5,8(s0)
	.loc 1 342 5
	li	a6,0
	.loc 1 346 27
	lbu	a4,5(a2)
	lbu	a3,4(a2)
	.loc 1 342 5
	lbu	a0,1(a5)
.LVL317:
	.loc 1 346 27
	slli	a4,a4,8
	.loc 1 342 5
	lbu	a7,3(a5)
	lbu	a1,2(a5)
	.loc 1 346 27
	or	a4,a4,a3
	.loc 1 342 5
	lbu	a3,3(a2)
	lbu	a2,2(a2)
	sw	a0,4(sp)
	li	a0,4096
	add	a5,a5,a0
	lw	a5,924(a5)
	andi	a4,a4,2047
	andi	a3,a3,3
	lbu	a5,3(a5)
	mv	a0,s1
	sw	a5,0(sp)
	li	a5,0
	call	ehci_qh_fill
.LVL318:
	.loc 1 354 5 is_stmt 1
	.loc 1 359 5
	li	a3,528384
	addi	a3,a3,-384
	li	a2,8
	mv	a1,s6
	mv	a0,s3
	call	ehci_qtd_fill
.LVL319:
	.loc 1 360 5
	.loc 1 360 20 is_stmt 0
	sw	s0,36(s3)
	.loc 1 363 5 is_stmt 1
	.loc 1 363 14 is_stmt 0
	lbu	a5,7(s6)
	lbu	a4,6(s6)
	slli	a5,a5,8
	.loc 1 363 8
	or	a5,a5,a4
	beq	a5,zero,.L269
	.loc 1 364 9 is_stmt 1
	.loc 1 364 20 is_stmt 0
	mv	a0,s2
	call	ehci_qtd_alloc
.LVL320:
	mv	s9,a0
.LVL321:
	.loc 1 365 9 is_stmt 1
	.loc 1 365 14
	.loc 1 365 17 is_stmt 0
	bne	a0,zero,.L270
	.loc 1 365 33 is_stmt 1
	.loc 1 365 38
	lui	s1,%hi(.LC9)
.LVL322:
	addi	a0,s1,%lo(.LC9)
.LVL323:
	call	printf
.LVL324:
	.loc 1 365 84
	lui	a2,%hi(.LC10)
	lui	a1,%hi(.LC14)
	lui	a0,%hi(.LC12)
	li	a3,365
	addi	a2,a2,%lo(.LC10)
	addi	a1,a1,%lo(.LC14)
	addi	a0,a0,%lo(.LC12)
	call	printf
.LVL325:
	.loc 1 365 200
	lui	s0,%hi(.LC2)
.LVL326:
	addi	a0,s0,%lo(.LC2)
	call	printf
.LVL327:
	.loc 1 365 227
	.loc 1 365 232
	.loc 1 365 237
	addi	a0,s1,%lo(.LC9)
	call	printf
.LVL328:
	.loc 1 365 283
	lui	a0,%hi(.LC13)
	addi	a0,a0,%lo(.LC13)
	call	printf
.LVL329:
	.loc 1 365 323
	addi	a0,s0,%lo(.LC2)
	call	printf
.LVL330:
.L271:
	.loc 1 365 350
	.loc 1 365 355
	.loc 1 365 367
	.loc 1 365 361
	j	.L271
.LVL331:
.L270:
	.loc 1 365 379
	.loc 1 367 9
	.loc 1 367 12 is_stmt 0
	lb	a3,0(s6)
	.loc 1 376 36
	slli	a5,s7,16
	.loc 1 378 9
	mv	a2,s7
	.loc 1 370 19
	slti	a3,a3,0
	slli	a3,a3,8
.LVL332:
	.loc 1 372 9 is_stmt 1
	.loc 1 372 15 is_stmt 0
	or	a3,a5,a3
.LVL333:
	.loc 1 378 9 is_stmt 1
	li	a5,-2147479552
	addi	a5,a5,-896
	or	a3,a3,a5
.LVL334:
	mv	a1,s8
	call	ehci_qtd_fill
.LVL335:
	.loc 1 379 9
	.loc 1 380 67 is_stmt 0
	andi	a5,s9,-32
	.loc 1 379 23
	sw	s0,36(s9)
	.loc 1 380 9 is_stmt 1
	.loc 1 380 32 is_stmt 0
	sw	a5,0(s3)
	.loc 1 381 9 is_stmt 1
	.loc 1 381 68 is_stmt 0
	andi	a5,s5,-32
	.loc 1 381 31
	sw	a5,0(s9)
.LVL336:
.L273:
	.loc 1 387 5 is_stmt 1
	.loc 1 387 8 is_stmt 0
	lb	a5,0(s6)
	.loc 1 388 15
	li	a3,0
	.loc 1 387 8
	blt	a5,zero,.L274
	.loc 1 390 15
	li	a3,256
.L274:
.LVL337:
	.loc 1 392 5 is_stmt 1
	.loc 1 398 5
	li	a5,-2147446784
	addi	a5,a5,-896
	or	a3,a3,a5
.LVL338:
	li	a2,0
	li	a1,0
	mv	a0,s5
	call	ehci_qtd_fill
.LVL339:
	.loc 1 399 5
	.loc 1 400 29 is_stmt 0
	li	a5,1
	.loc 1 399 21
	sw	s0,36(s5)
	.loc 1 400 5 is_stmt 1
	.loc 1 400 29 is_stmt 0
	sw	a5,0(s5)
	.loc 1 403 5 is_stmt 1
	.loc 1 403 57 is_stmt 0
	andi	s3,s3,-32
.LVL340:
	.loc 1 403 21
	sw	s3,12(s1)
	.loc 1 404 5 is_stmt 1
	.loc 1 404 29 is_stmt 0
	sw	s3,16(s1)
	.loc 1 407 5 is_stmt 1
	.loc 1 407 19 is_stmt 0
	sw	s3,52(s1)
	.loc 1 409 5 is_stmt 1
.LVL341:
.L328:
.LBE97:
.LBE100:
.LBB101:
.LBB102:
	.loc 1 505 5
	.loc 1 505 13 is_stmt 0
	call	usb_osal_enter_critical_section
.LVL342:
	.loc 1 507 5 is_stmt 1
	.loc 1 507 13 is_stmt 0
	sw	s0,56(s1)
	.loc 1 508 5 is_stmt 1
	.loc 1 508 17 is_stmt 0
	sw	s1,4(s0)
	.loc 1 510 5 is_stmt 1
	.loc 1 510 47 is_stmt 0
	lbu	a3,12(s2)
.LVL343:
.LBB103:
.LBB104:
	.loc 1 133 5 is_stmt 1
	.loc 1 133 25 is_stmt 0
	lui	a5,%hi(.LANCHOR2)
	li	a4,96
	addi	a5,a5,%lo(.LANCHOR2)
	mula	a5,a3,a4
	lw	a4,-1216(a5)
	.loc 1 133 15
	sw	a4,0(s1)
	.loc 1 134 5 is_stmt 1
	.loc 1 136 5
	.loc 1 138 5
	.loc 1 138 36 is_stmt 0
	andi	a4,s1,-32
	.loc 1 138 45
	ori	a4,a4,2
	.loc 1 138 18
	sw	a4,-1216(a5)
.LVL344:
.LBE104:
.LBE103:
	.loc 1 512 5 is_stmt 1
	.loc 1 512 93 is_stmt 0
	li	a5,10
	mula	s4,a3,a5
	.loc 1 512 116
	lw	a4,8(s2)
	lbu	a3,9(s4)
	lrw	a5,a3,a4,0
	ori	a5,a5,32
.LVL345:
.L327:
.LBE102:
.LBE101:
.LBB107:
.LBB108:
	.loc 1 608 116
	srw	a5,a3,a4,0
	.loc 1 610 5 is_stmt 1
	call	usb_osal_leave_critical_section
.LVL346:
	.loc 1 611 5
.LBE108:
.LBE107:
	.loc 1 1259 13
	.loc 1 1198 9 is_stmt 0
	li	s3,0
.LVL347:
.L275:
	.loc 1 1272 5 is_stmt 1
	.loc 1 1272 12 is_stmt 0
	lw	a1,40(s0)
	.loc 1 1272 8
	beq	a1,zero,.L258
	.loc 1 1274 9 is_stmt 1
	.loc 1 1274 15 is_stmt 0
	lw	a0,60(s1)
	call	usb_osal_sem_take
.LVL348:
	.loc 1 1285 18
	sw	zero,40(s0)
	.loc 1 1274 15
	mv	s3,a0
.LVL349:
	.loc 1 1275 9 is_stmt 1
	.loc 1 1275 12 is_stmt 0
	bge	a0,zero,.L295
	.loc 1 1276 13 is_stmt 1
.LDL1:
	.loc 1 1285 5
	.loc 1 1286 5
	mv	a0,s0
.LVL350:
	call	usbh_kill_urb
.LVL351:
	.loc 1 1287 5
	.loc 1 1287 12 is_stmt 0
	j	.L258
.LVL352:
.L269:
.LBB113:
.LBB98:
	.loc 1 383 9 is_stmt 1
	.loc 1 383 69 is_stmt 0
	andi	a5,s5,-32
	.loc 1 383 32
	sw	a5,0(s3)
	j	.L273
.LVL353:
.L262:
.LBE98:
.LBE113:
	.loc 1 1252 13 is_stmt 1
.LBB114:
.LBB105:
	.loc 1 432 10 is_stmt 0
	mv	a0,s2
.LBE105:
.LBE114:
	.loc 1 1252 18
	lw	s7,24(s0)
	lw	s3,28(s0)
.LVL354:
.LBB115:
.LBB106:
	.loc 1 424 5 is_stmt 1
	.loc 1 425 5
	.loc 1 426 5
	.loc 1 427 5
	.loc 1 428 5
	.loc 1 429 5
	.loc 1 430 5
	.loc 1 432 5
	.loc 1 432 10 is_stmt 0
	call	ehci_qh_alloc
.LVL355:
	mv	s1,a0
.LVL356:
	.loc 1 433 5 is_stmt 1
	.loc 1 433 8 is_stmt 0
	beq	a0,zero,.L276
	.loc 1 437 5 is_stmt 1
	.loc 1 439 21 is_stmt 0
	lw	a2,12(s0)
	.loc 1 438 21
	lw	a5,8(s0)
	.loc 1 437 5
	li	s6,4096
	.loc 1 441 27
	lbu	a4,5(a2)
	lbu	a3,4(a2)
	.loc 1 437 5
	lbu	a6,1(a5)
	.loc 1 441 27
	slli	a4,a4,8
	.loc 1 437 5
	lbu	a7,3(a5)
	lbu	a1,2(a5)
	.loc 1 441 27
	or	a4,a4,a3
	.loc 1 437 5
	add	a5,a5,s6
	lbu	a3,3(a2)
	lbu	a2,2(a2)
	sw	a6,4(sp)
	lw	a5,924(a5)
	li	a6,0
	andi	a4,a4,2047
	lbu	a5,3(a5)
	andi	a3,a3,3
	.loc 1 471 19
	li	s8,36864
	.loc 1 437 5
	sw	a5,0(sp)
	li	a5,0
	call	ehci_qh_fill
.LVL357:
	.loc 1 427 25
	li	a0,0
	.loc 1 426 25
	li	s5,0
	.loc 1 452 12
	li	s9,16384
	.loc 1 471 19
	addi	s8,s8,-896
	.loc 1 466 15
	addi	s6,s6,-896
	.loc 1 476 26
	li	s11,1
.LVL358:
.L284:
	.loc 1 448 5 is_stmt 1
	.loc 1 449 9
	mv	s10,a0
	.loc 1 449 15 is_stmt 0
	mv	a0,s2
	call	ehci_qtd_alloc
.LVL359:
	.loc 1 450 9 is_stmt 1
	.loc 1 450 14
	.loc 1 450 17 is_stmt 0
	bne	a0,zero,.L277
	.loc 1 450 28 is_stmt 1
	.loc 1 450 33
	lui	s1,%hi(.LC9)
.LVL360:
	addi	a0,s1,%lo(.LC9)
.LVL361:
	call	printf
.LVL362:
	.loc 1 450 79
	lui	a2,%hi(.LC10)
	lui	a1,%hi(.LC15)
	lui	a0,%hi(.LC12)
	li	a3,450
	addi	a2,a2,%lo(.LC10)
	addi	a1,a1,%lo(.LC15)
	addi	a0,a0,%lo(.LC12)
	call	printf
.LVL363:
	.loc 1 450 190
	lui	s0,%hi(.LC2)
.LVL364:
	addi	a0,s0,%lo(.LC2)
	call	printf
.LVL365:
	.loc 1 450 217
	.loc 1 450 222
	.loc 1 450 227
	addi	a0,s1,%lo(.LC9)
	call	printf
.LVL366:
	.loc 1 450 273
	lui	a0,%hi(.LC16)
	addi	a0,a0,%lo(.LC16)
	call	printf
.LVL367:
	.loc 1 450 313
	addi	a0,s0,%lo(.LC2)
	call	printf
.LVL368:
.L278:
	.loc 1 450 340
	.loc 1 450 345
	.loc 1 450 357
	.loc 1 450 351
	j	.L278
.LVL369:
.L277:
	.loc 1 450 369
	.loc 1 452 9
	.loc 1 452 12 is_stmt 0
	bleu	s3,s9,.L304
	.loc 1 453 13 is_stmt 1
.LVL370:
	.loc 1 454 13
	.loc 1 454 20 is_stmt 0
	sub	s3,s3,s9
.LVL371:
	.loc 1 453 22
	li	a2,16384
.LVL372:
.L279:
	.loc 1 460 9 is_stmt 1
	.loc 1 460 20 is_stmt 0
	lw	a5,12(s0)
	.loc 1 468 38
	slli	a4,a2,16
	.loc 1 460 12
	lb	a5,2(a5)
	.loc 1 463 19
	slti	a5,a5,0
	slli	a5,a5,8
.LVL373:
	.loc 1 466 9 is_stmt 1
	.loc 1 466 15 is_stmt 0
	or	a5,a4,a5
.LVL374:
	.loc 1 470 9 is_stmt 1
	.loc 1 471 19 is_stmt 0
	or	a3,a5,s8
	.loc 1 470 12
	beq	s3,zero,.L282
	.loc 1 466 15
	or	a3,a5,s6
.L282:
.LVL375:
	.loc 1 474 9 is_stmt 1
	mv	a1,s7
	sw	a2,28(sp)
	sw	a0,24(sp)
	call	ehci_qtd_fill
.LVL376:
	.loc 1 475 9
	.loc 1 475 18 is_stmt 0
	lw	a0,24(sp)
	.loc 1 477 16
	lw	a2,28(sp)
	.loc 1 475 18
	sw	s0,36(a0)
	.loc 1 476 9 is_stmt 1
	.loc 1 476 26 is_stmt 0
	sw	s11,0(a0)
	.loc 1 477 9 is_stmt 1
	.loc 1 477 16 is_stmt 0
	add	s7,s7,a2
.LVL377:
	.loc 1 479 9 is_stmt 1
	.loc 1 479 12 is_stmt 0
	beq	s10,zero,.L306
	.loc 1 480 13 is_stmt 1
	.loc 1 480 65 is_stmt 0
	andi	a5,a0,-32
	.loc 1 480 35
	sw	a5,0(s10)
.LVL378:
.L283:
	.loc 1 484 9 is_stmt 1
	.loc 1 486 9
	.loc 1 486 12 is_stmt 0
	bne	s3,zero,.L284
	.loc 1 492 5 is_stmt 1
	.loc 1 492 57 is_stmt 0
	andi	s5,s5,-32
.LVL379:
	.loc 1 492 21
	sw	s5,12(s1)
	.loc 1 493 5 is_stmt 1
	.loc 1 493 29 is_stmt 0
	sw	s5,16(s1)
	.loc 1 496 5 is_stmt 1
	.loc 1 496 8 is_stmt 0
	lbu	a5,16(s0)
	beq	a5,zero,.L285
	.loc 1 497 30
	li	s3,-2147483648
.LVL380:
.L285:
	sw	s3,24(s1)
	.loc 1 503 5 is_stmt 1
	.loc 1 503 19 is_stmt 0
	sw	s5,52(s1)
	j	.L328
.LVL381:
.L304:
	mv	a2,s3
	.loc 1 457 20
	li	s3,0
.LVL382:
	j	.L279
.LVL383:
.L306:
	mv	s5,a0
.LVL384:
	j	.L283
.LVL385:
.L263:
.LBE106:
.LBE115:
	.loc 1 1258 13 is_stmt 1
.LBB116:
.LBB111:
	.loc 1 528 10 is_stmt 0
	mv	a0,s2
.LBE111:
.LBE116:
	.loc 1 1258 18
	lw	s7,24(s0)
	lw	s3,28(s0)
.LVL386:
.LBB117:
.LBB112:
	.loc 1 520 5 is_stmt 1
	.loc 1 521 5
	.loc 1 522 5
	.loc 1 523 5
	.loc 1 524 5
	.loc 1 525 5
	.loc 1 526 5
	.loc 1 528 5
	.loc 1 528 10 is_stmt 0
	call	ehci_qh_alloc
.LVL387:
	mv	s1,a0
.LVL388:
	.loc 1 529 5 is_stmt 1
	.loc 1 529 8 is_stmt 0
	beq	a0,zero,.L276
	.loc 1 533 5 is_stmt 1
	.loc 1 534 21 is_stmt 0
	lw	t1,8(s0)
	.loc 1 535 21
	lw	a2,12(s0)
	.loc 1 533 5
	li	s6,4096
	lbu	t3,1(t1)
	.loc 1 537 27
	lbu	a4,4(a2)
	lbu	a5,5(a2)
	.loc 1 533 5
	lbu	a3,3(a2)
	lbu	a7,3(t1)
	lbu	a6,6(a2)
	lbu	a1,2(t1)
	lbu	a2,2(a2)
	add	t1,t1,s6
	sw	t3,4(sp)
	lw	t1,924(t1)
	.loc 1 537 27
	slli	a5,a5,8
	or	a4,a5,a4
	.loc 1 533 5
	lbu	t1,3(t1)
	.loc 1 538 57
	extu	a5,a5,11+2-1,11
	.loc 1 533 5
	addi	a5,a5,1
	sw	t1,0(sp)
	andi	a4,a4,2047
	andi	a3,a3,3
	call	ehci_qh_fill
.LVL389:
	.loc 1 567 19
	li	s8,36864
	.loc 1 523 25
	li	a0,0
	.loc 1 522 25
	li	s5,0
	.loc 1 548 12
	li	s9,16384
	.loc 1 567 19
	addi	s8,s8,-896
	.loc 1 562 15
	addi	s6,s6,-896
	.loc 1 572 26
	li	s11,1
.LVL390:
.L293:
	.loc 1 544 5 is_stmt 1
	.loc 1 545 9
	mv	s10,a0
	.loc 1 545 15 is_stmt 0
	mv	a0,s2
	call	ehci_qtd_alloc
.LVL391:
	.loc 1 546 9 is_stmt 1
	.loc 1 546 14
	.loc 1 546 17 is_stmt 0
	bne	a0,zero,.L286
	.loc 1 546 28 is_stmt 1
	.loc 1 546 33
	lui	s1,%hi(.LC9)
.LVL392:
	addi	a0,s1,%lo(.LC9)
.LVL393:
	call	printf
.LVL394:
	.loc 1 546 79
	lui	a2,%hi(.LC10)
	lui	a1,%hi(.LC15)
	lui	a0,%hi(.LC12)
	li	a3,546
	addi	a2,a2,%lo(.LC10)
	addi	a1,a1,%lo(.LC15)
	addi	a0,a0,%lo(.LC12)
	call	printf
.LVL395:
	.loc 1 546 190
	lui	s0,%hi(.LC2)
.LVL396:
	addi	a0,s0,%lo(.LC2)
	call	printf
.LVL397:
	.loc 1 546 217
	.loc 1 546 222
	.loc 1 546 227
	addi	a0,s1,%lo(.LC9)
	call	printf
.LVL398:
	.loc 1 546 273
	lui	a0,%hi(.LC17)
	addi	a0,a0,%lo(.LC17)
	call	printf
.LVL399:
	.loc 1 546 313
	addi	a0,s0,%lo(.LC2)
	call	printf
.LVL400:
.L287:
	.loc 1 546 340
	.loc 1 546 345
	.loc 1 546 357
	.loc 1 546 351
	j	.L287
.LVL401:
.L286:
	.loc 1 546 369
	.loc 1 548 9
	.loc 1 548 12 is_stmt 0
	bleu	s3,s9,.L308
	.loc 1 549 13 is_stmt 1
.LVL402:
	.loc 1 550 13
	.loc 1 550 20 is_stmt 0
	sub	s3,s3,s9
.LVL403:
	.loc 1 549 22
	li	a2,16384
.LVL404:
.L288:
	.loc 1 556 9 is_stmt 1
	.loc 1 556 20 is_stmt 0
	lw	a5,12(s0)
	.loc 1 564 38
	slli	a4,a2,16
	.loc 1 556 12
	lb	a5,2(a5)
	.loc 1 559 19
	slti	a5,a5,0
	slli	a5,a5,8
.LVL405:
	.loc 1 562 9 is_stmt 1
	.loc 1 562 15 is_stmt 0
	or	a5,a4,a5
.LVL406:
	.loc 1 566 9 is_stmt 1
	.loc 1 567 19 is_stmt 0
	or	a3,a5,s8
	.loc 1 566 12
	beq	s3,zero,.L291
	.loc 1 562 15
	or	a3,a5,s6
.L291:
.LVL407:
	.loc 1 570 9 is_stmt 1
	mv	a1,s7
	sw	a2,28(sp)
	sw	a0,24(sp)
	call	ehci_qtd_fill
.LVL408:
	.loc 1 571 9
	.loc 1 571 18 is_stmt 0
	lw	a0,24(sp)
	.loc 1 573 16
	lw	a2,28(sp)
	.loc 1 571 18
	sw	s0,36(a0)
	.loc 1 572 9 is_stmt 1
	.loc 1 572 26 is_stmt 0
	sw	s11,0(a0)
	.loc 1 573 9 is_stmt 1
	.loc 1 573 16 is_stmt 0
	add	s7,s7,a2
.LVL409:
	.loc 1 575 9 is_stmt 1
	.loc 1 575 12 is_stmt 0
	beq	s10,zero,.L310
	.loc 1 576 13 is_stmt 1
	.loc 1 576 65 is_stmt 0
	andi	a5,a0,-32
	.loc 1 576 35
	sw	a5,0(s10)
.LVL410:
.L292:
	.loc 1 580 9 is_stmt 1
	.loc 1 582 9
	.loc 1 582 12 is_stmt 0
	bne	s3,zero,.L293
	.loc 1 588 5 is_stmt 1
	.loc 1 588 57 is_stmt 0
	andi	s5,s5,-32
.LVL411:
	.loc 1 588 21
	sw	s5,12(s1)
	.loc 1 589 5 is_stmt 1
	.loc 1 589 29 is_stmt 0
	sw	s5,16(s1)
	.loc 1 592 5 is_stmt 1
	.loc 1 592 8 is_stmt 0
	lbu	a5,16(s0)
	beq	a5,zero,.L294
	.loc 1 593 30
	li	s3,-2147483648
.LVL412:
.L294:
	sw	s3,24(s1)
	.loc 1 599 5 is_stmt 1
	.loc 1 599 19 is_stmt 0
	sw	s5,52(s1)
	.loc 1 601 5 is_stmt 1
	.loc 1 601 13 is_stmt 0
	call	usb_osal_enter_critical_section
.LVL413:
	.loc 1 603 5 is_stmt 1
	.loc 1 603 13 is_stmt 0
	sw	s0,56(s1)
	.loc 1 604 5 is_stmt 1
	.loc 1 604 17 is_stmt 0
	sw	s1,4(s0)
	.loc 1 606 5 is_stmt 1
	.loc 1 606 50 is_stmt 0
	lbu	a3,12(s2)
.LVL414:
.LBB109:
.LBB110:
	.loc 1 133 5 is_stmt 1
	.loc 1 133 25 is_stmt 0
	lui	a5,%hi(.LANCHOR2)
	li	a4,96
	addi	a5,a5,%lo(.LANCHOR2)
	mula	a5,a3,a4
	lw	a4,-1120(a5)
	.loc 1 133 15
	sw	a4,0(s1)
	.loc 1 134 5 is_stmt 1
	.loc 1 136 5
	.loc 1 138 5
	.loc 1 138 36 is_stmt 0
	andi	a4,s1,-32
	.loc 1 138 45
	ori	a4,a4,2
	.loc 1 138 18
	sw	a4,-1120(a5)
.LVL415:
.LBE110:
.LBE109:
	.loc 1 608 5 is_stmt 1
	.loc 1 608 93 is_stmt 0
	li	a5,10
	mula	s4,a3,a5
	.loc 1 608 116
	lw	a4,8(s2)
	lbu	a3,9(s4)
	lrw	a5,a3,a4,0
	ori	a5,a5,16
	j	.L327
.LVL416:
.L308:
	mv	a2,s3
	.loc 1 553 20
	li	s3,0
.LVL417:
	j	.L288
.LVL418:
.L310:
	mv	s5,a0
.LVL419:
	j	.L292
.LVL420:
.L264:
.LBE112:
.LBE117:
	.loc 1 1265 13 is_stmt 1
	.loc 1 1265 19 is_stmt 0
	mv	a1,s0
	mv	a0,s2
	call	ehci_iso_urb_init
.LVL421:
	mv	s3,a0
.LVL422:
	.loc 1 1267 13 is_stmt 1
	.loc 1 1196 24 is_stmt 0
	li	s1,0
	.loc 1 1267 13
	j	.L275
.LVL423:
.L295:
	.loc 1 1278 9 is_stmt 1
	.loc 1 1279 9
	.loc 1 1281 9 is_stmt 0
	mv	a0,s1
.LVL424:
	.loc 1 1279 13
	lw	s3,44(s0)
.LVL425:
	.loc 1 1281 9 is_stmt 1
	call	ehci_qh_free.isra.0
.LVL426:
	j	.L258
.LVL427:
.L299:
	.loc 1 1204 16 is_stmt 0
	li	s3,-2
	j	.L258
.LVL428:
.L301:
	.loc 1 1229 16
	li	s3,-4
.LVL429:
	j	.L258
	.cfi_endproc
.LFE54:
	.size	usbh_submit_urb, .-usbh_submit_urb
	.section	.text.USBH_IRQHandler,"ax",@progbits
	.align	1
	.globl	USBH_IRQHandler
	.type	USBH_IRQHandler, @function
USBH_IRQHandler:
.LFB58:
	.loc 1 1398 1 is_stmt 1
	.cfi_startproc
.LVL430:
	.loc 1 1399 5
	.loc 1 1400 5
	.loc 1 1402 5
	.loc 1 1398 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	.cfi_offset 8, -8
	li	s0,20480
	addi	s0,s0,112
	mul	s0,a0,s0
	sw	s3,28(sp)
	.cfi_offset 19, -20
	.loc 1 1402 9
	lui	s3,%hi(g_usbhost_bus)
	.loc 1 1398 1
	sw	s1,36(sp)
	.cfi_offset 9, -12
	.loc 1 1402 9
	addi	s1,s3,%lo(g_usbhost_bus)
	.loc 1 1398 1
	sw	s5,20(sp)
	.cfi_offset 21, -28
	.loc 1 1404 102
	lui	s5,%hi(.LANCHOR1)
	addi	a5,s5,%lo(.LANCHOR1)
	li	a4,10
	.loc 1 1398 1
	sw	s2,32(sp)
	.loc 1 1402 9
	add	s1,s0,s1
.LVL431:
	.loc 1 1404 5 is_stmt 1
	.loc 1 1404 94 is_stmt 0
	lbu	a3,12(s1)
	.loc 1 1398 1
	sw	s4,24(sp)
	sw	ra,44(sp)
	.loc 1 1404 102
	mula	a5,a3,a4
	.loc 1 1398 1
	sw	s6,16(sp)
	sw	s7,12(sp)
	sw	s8,8(sp)
	sw	s9,4(sp)
	.cfi_offset 18, -16
	.cfi_offset 20, -24
	.cfi_offset 1, -4
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.loc 1 1404 73
	lw	a4,8(s1)
	.loc 1 1398 1
	mv	s4,a0
	addi	s3,s3,%lo(g_usbhost_bus)
	addi	s5,s5,%lo(.LANCHOR1)
	.loc 1 1404 102
	lbu	a5,9(a5)
	.loc 1 1404 73
	add	a5,a5,a4
	.loc 1 1404 116
	lw	s2,4(a5)
	.loc 1 1404 229
	lw	a4,8(a5)
	.loc 1 1404 12
	and	s2,s2,a4
.LVL432:
	.loc 1 1405 5 is_stmt 1
	.loc 1 1405 116 is_stmt 0
	sw	s2,4(a5)
	.loc 1 1407 5 is_stmt 1
	.loc 1 1407 16 is_stmt 0
	andi	a5,s2,1
	.loc 1 1407 8
	beq	a5,zero,.L330
	.loc 1 1408 9 is_stmt 1
	mv	a0,s1
.LVL433:
	call	ehci_scan_async_list
.LVL434:
	.loc 1 1409 9
	mv	a0,s1
	call	ehci_scan_periodic_list
.LVL435:
	.loc 1 1411 9
	mv	a0,s1
	call	ehci_scan_isochronous_list
.LVL436:
.L330:
	.loc 1 1415 5
	.loc 1 1415 16 is_stmt 0
	andi	a5,s2,2
	.loc 1 1415 8
	beq	a5,zero,.L331
	.loc 1 1416 9 is_stmt 1
	mv	a0,s1
	call	ehci_scan_async_list
.LVL437:
	.loc 1 1417 9
	mv	a0,s1
	call	ehci_scan_periodic_list
.LVL438:
	.loc 1 1419 9
	mv	a0,s1
	call	ehci_scan_isochronous_list
.LVL439:
.L331:
	.loc 1 1423 5
	.loc 1 1423 16 is_stmt 0
	andi	a5,s2,4
	.loc 1 1423 8
	bne	a5,zero,.L332
.LVL440:
.L338:
	.loc 1 1442 5 is_stmt 1
	.loc 1 1442 16 is_stmt 0
	andi	s2,s2,32
.LVL441:
	.loc 1 1442 8
	bne	s2,zero,.L340
.LVL442:
.L329:
	.loc 1 1453 1
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
	lw	s3,28(sp)
	.cfi_restore 19
	lw	s4,24(sp)
	.cfi_restore 20
	lw	s5,20(sp)
	.cfi_restore 21
	lw	s6,16(sp)
	.cfi_restore 22
	lw	s7,12(sp)
	.cfi_restore 23
	lw	s8,8(sp)
	.cfi_restore 24
	lw	s9,4(sp)
	.cfi_restore 25
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL443:
.L332:
	.cfi_restore_state
.LBB118:
	.loc 1 1424 54
	li	a5,20480
	addi	a4,a5,112
	mv	s7,s3
	mula	s7,s4,a4
.LBB119:
	.loc 1 1437 17
	addi	s0,s0,16
	add	s0,s3,s0
.LBE119:
	.loc 1 1424 18
	li	s1,0
.LVL444:
	.loc 1 1424 62
	li	s8,10
.LBB120:
	.loc 1 1436 54
	li	s9,1
	.loc 1 1436 33
	add	s6,a5,s7
.LVL445:
.L335:
.LBE120:
	.loc 1 1424 28 is_stmt 1 discriminator 1
	.loc 1 1424 54 is_stmt 0 discriminator 1
	lbu	a4,12(s7)
	.loc 1 1424 62 discriminator 1
	mv	a5,s5
	mula	a5,a4,s8
	lbu	a4,8(a5)
	.loc 1 1424 9 discriminator 1
	ble	a4,s1,.L338
.LBB121:
	.loc 1 1425 13 is_stmt 1
	.loc 1 1425 90 is_stmt 0
	lw	a4,8(s7)
	.loc 1 1425 119
	lbu	a5,9(a5)
	.loc 1 1425 90
	add	a5,a5,a4
	.loc 1 1425 22
	addi	a4,s1,8
	lrw	a5,a5,a4,2
.LVL446:
	.loc 1 1427 13 is_stmt 1
	.loc 1 1436 63 is_stmt 0
	addi	s1,s1,1
.LVL447:
	.loc 1 1427 24
	andi	a5,a5,2
.LVL448:
	.loc 1 1427 16
	beq	a5,zero,.L335
	.loc 1 1428 17 is_stmt 1
	.loc 1 1435 17
	.loc 1 1436 17
	.loc 1 1436 33 is_stmt 0
	lw	a4,76(s6)
	.loc 1 1436 54
	sll	a5,s9,s1
	.loc 1 1437 17
	mv	a0,s0
	.loc 1 1436 48
	lbu	a3,0(a4)
	or	a5,a5,a3
	sb	a5,0(a4)
	.loc 1 1437 17 is_stmt 1
	call	usbh_hub_thread_wakeup
.LVL449:
.LBE121:
	.loc 1 1424 72
	j	.L335
.LVL450:
.L340:
.LBE118:
.LBB122:
.LBB123:
	.loc 1 1444 59 is_stmt 0
	li	a5,20480
.LVL451:
	addi	a5,a5,112
.LVL452:
	.loc 1 1445 19
	lui	s1,%hi(.LANCHOR0)
	.loc 1 1444 59
	mula	s3,s4,a5
.LVL453:
.LBE123:
.LBE122:
	li	s0,0
.LBB126:
.LBB124:
	.loc 1 1445 19
	addi	s1,s1,%lo(.LANCHOR0)
	li	s4,96
.LVL454:
	li	s5,960
.LBE124:
	.loc 1 1443 9
	li	s2,10
.L333:
.LVL455:
.LBB125:
	.loc 1 1444 13 is_stmt 1
	.loc 1 1444 59 is_stmt 0
	lbu	a5,12(s3)
.LVL456:
	.loc 1 1445 13 is_stmt 1
	.loc 1 1445 19 is_stmt 0
	mul	a5,a5,s5
.LVL457:
	mula	a5,s0,s4
	add	a5,s1,a5
	.loc 1 1445 16
	lbu	a4,64(a5)
	beq	a4,zero,.L339
	.loc 1 1446 17 is_stmt 1
	lw	a0,56(a5)
	call	ehci_urb_waitup.isra.0
.LVL458:
.L339:
.LBE125:
	.loc 1 1443 45 discriminator 2
	.loc 1 1443 33 discriminator 2
	.loc 1 1443 9 is_stmt 0 discriminator 2
	addi	s0,s0,1
.LVL459:
	bne	s0,s2,.L333
	j	.L329
.LBE126:
	.cfi_endproc
.LFE58:
	.size	USBH_IRQHandler, .-USBH_IRQHandler
	.globl	g_framelist
	.globl	g_periodic_qh_head
	.globl	g_async_qh_head
	.globl	ehci_qtd_pool
	.globl	ehci_qh_pool
	.globl	g_ehci_hcd
	.section	.bss.g_ehci_hcd,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	g_ehci_hcd, @object
	.size	g_ehci_hcd, 10
g_ehci_hcd:
	.zero	10
	.section	.noncacheable,"aw"
	.align	12
	.set	.LANCHOR0,. + 0
	.set	.LANCHOR2,. + 4096
	.type	ehci_qh_pool, @object
	.size	ehci_qh_pool, 960
ehci_qh_pool:
	.zero	960
	.type	ehci_qtd_pool, @object
	.size	ehci_qtd_pool, 1920
ehci_qtd_pool:
	.zero	1920
	.type	g_async_qh_head, @object
	.size	g_async_qh_head, 96
g_async_qh_head:
	.zero	96
	.type	g_periodic_qh_head, @object
	.size	g_periodic_qh_head, 96
g_periodic_qh_head:
	.zero	96
	.zero	1024
	.type	g_framelist, @object
	.size	g_framelist, 4096
g_framelist:
	.zero	4096
	.text
.Letext0:
	.file 3 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\lib\\gcc\\riscv64-unknown-elf\\10.4.0\\include\\stddef.h"
	.file 4 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\machine\\_default_types.h"
	.file 5 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\sys\\_stdint.h"
	.file 6 ".\\components\\usb\\cherryusb\\common/usb_def.h"
	.file 7 ".\\components\\usb\\cherryusb\\common/usb_list.h"
	.file 8 ".\\components\\usb\\cherryusb\\common/usb_hc.h"
	.file 9 ".\\components\\usb\\cherryusb\\core/usbh_core.h"
	.file 10 ".\\components\\usb\\cherryusb\\common/usb_osal.h"
	.file 11 ".\\components\\usb\\cherryusb\\class\\hub/usb_hub.h"
	.file 12 ".\\components\\usb\\cherryusb\\port\\ehci\\usb_ehci_reg.h"
	.file 13 ".\\components\\usb\\cherryusb\\port\\ehci\\usb_hc_ehci.h"
	.file 14 ".\\components\\usb\\cherryusb\\class\\hub/usbh_hub.h"
	.file 15 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\stdio.h"
	.file 16 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2a3c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF278
	.byte	0xc
	.4byte	.LASF279
	.4byte	.LASF280
	.4byte	.Ldebug_ranges0+0x1f8
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF2
	.byte	0x3
	.byte	0xd1
	.byte	0x16
	.4byte	0x38
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x3
	.4byte	.LASF3
	.byte	0x4
	.byte	0x2b
	.byte	0x17
	.4byte	0x52
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.byte	0x3
	.4byte	.LASF6
	.byte	0x4
	.byte	0x39
	.byte	0x1c
	.4byte	0x6c
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
	.byte	0x4
	.byte	0x4f
	.byte	0x1b
	.4byte	0x86
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
	.byte	0x4
	.byte	0xe8
	.byte	0x16
	.4byte	0x38
	.byte	0x5
	.byte	0x4
	.byte	0x6
	.byte	0x4
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0x7
	.4byte	0xaf
	.byte	0x6
	.byte	0x4
	.4byte	0xb6
	.byte	0x3
	.4byte	.LASF15
	.byte	0x5
	.byte	0x18
	.byte	0x13
	.4byte	0x46
	.byte	0x7
	.4byte	0xc1
	.byte	0x8
	.4byte	0xc1
	.byte	0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0x24
	.byte	0x14
	.4byte	0x60
	.byte	0x8
	.4byte	0xd7
	.byte	0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0x30
	.byte	0x14
	.4byte	0x7a
	.byte	0x8
	.4byte	0xe8
	.byte	0x7
	.4byte	0xe8
	.byte	0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x52
	.byte	0x15
	.4byte	0x9b
	.byte	0x6
	.byte	0x4
	.4byte	0x110
	.byte	0x9
	.byte	0xa
	.4byte	.LASF24
	.byte	0x8
	.byte	0x1
	.byte	0x6
	.2byte	0x13f
	.byte	0x8
	.4byte	0x167
	.byte	0xb
	.4byte	.LASF19
	.byte	0x6
	.2byte	0x145
	.byte	0xd
	.4byte	0xc1
	.byte	0
	.byte	0xb
	.4byte	.LASF20
	.byte	0x6
	.2byte	0x14c
	.byte	0xd
	.4byte	0xc1
	.byte	0x1
	.byte	0xb
	.4byte	.LASF21
	.byte	0x6
	.2byte	0x14f
	.byte	0xe
	.4byte	0xd7
	.byte	0x2
	.byte	0xb
	.4byte	.LASF22
	.byte	0x6
	.2byte	0x153
	.byte	0xe
	.4byte	0xd7
	.byte	0x4
	.byte	0xb
	.4byte	.LASF23
	.byte	0x6
	.2byte	0x156
	.byte	0xe
	.4byte	0xd7
	.byte	0x6
	.byte	0
	.byte	0xa
	.4byte	.LASF25
	.byte	0x12
	.byte	0x1
	.byte	0x6
	.2byte	0x15c
	.byte	0x8
	.4byte	0x23b
	.byte	0xb
	.4byte	.LASF26
	.byte	0x6
	.2byte	0x15d
	.byte	0xd
	.4byte	0xc1
	.byte	0
	.byte	0xb
	.4byte	.LASF27
	.byte	0x6
	.2byte	0x15e
	.byte	0xd
	.4byte	0xc1
	.byte	0x1
	.byte	0xb
	.4byte	.LASF28
	.byte	0x6
	.2byte	0x15f
	.byte	0xe
	.4byte	0xd7
	.byte	0x2
	.byte	0xb
	.4byte	.LASF29
	.byte	0x6
	.2byte	0x160
	.byte	0xd
	.4byte	0xc1
	.byte	0x4
	.byte	0xb
	.4byte	.LASF30
	.byte	0x6
	.2byte	0x161
	.byte	0xd
	.4byte	0xc1
	.byte	0x5
	.byte	0xb
	.4byte	.LASF31
	.byte	0x6
	.2byte	0x162
	.byte	0xd
	.4byte	0xc1
	.byte	0x6
	.byte	0xb
	.4byte	.LASF32
	.byte	0x6
	.2byte	0x163
	.byte	0xd
	.4byte	0xc1
	.byte	0x7
	.byte	0xb
	.4byte	.LASF33
	.byte	0x6
	.2byte	0x164
	.byte	0xe
	.4byte	0xd7
	.byte	0x8
	.byte	0xb
	.4byte	.LASF34
	.byte	0x6
	.2byte	0x165
	.byte	0xe
	.4byte	0xd7
	.byte	0xa
	.byte	0xb
	.4byte	.LASF35
	.byte	0x6
	.2byte	0x166
	.byte	0xe
	.4byte	0xd7
	.byte	0xc
	.byte	0xb
	.4byte	.LASF36
	.byte	0x6
	.2byte	0x167
	.byte	0xd
	.4byte	0xc1
	.byte	0xe
	.byte	0xb
	.4byte	.LASF37
	.byte	0x6
	.2byte	0x168
	.byte	0xd
	.4byte	0xc1
	.byte	0xf
	.byte	0xb
	.4byte	.LASF38
	.byte	0x6
	.2byte	0x169
	.byte	0xd
	.4byte	0xc1
	.byte	0x10
	.byte	0xb
	.4byte	.LASF39
	.byte	0x6
	.2byte	0x16a
	.byte	0xd
	.4byte	0xc1
	.byte	0x11
	.byte	0
	.byte	0xa
	.4byte	.LASF40
	.byte	0x9
	.byte	0x1
	.byte	0x6
	.2byte	0x170
	.byte	0x8
	.4byte	0x2bb
	.byte	0xb
	.4byte	.LASF26
	.byte	0x6
	.2byte	0x171
	.byte	0xd
	.4byte	0xc1
	.byte	0
	.byte	0xb
	.4byte	.LASF27
	.byte	0x6
	.2byte	0x172
	.byte	0xd
	.4byte	0xc1
	.byte	0x1
	.byte	0xb
	.4byte	.LASF41
	.byte	0x6
	.2byte	0x173
	.byte	0xe
	.4byte	0xd7
	.byte	0x2
	.byte	0xb
	.4byte	.LASF42
	.byte	0x6
	.2byte	0x174
	.byte	0xd
	.4byte	0xc1
	.byte	0x4
	.byte	0xb
	.4byte	.LASF43
	.byte	0x6
	.2byte	0x175
	.byte	0xd
	.4byte	0xc1
	.byte	0x5
	.byte	0xb
	.4byte	.LASF44
	.byte	0x6
	.2byte	0x176
	.byte	0xd
	.4byte	0xc1
	.byte	0x6
	.byte	0xb
	.4byte	.LASF45
	.byte	0x6
	.2byte	0x177
	.byte	0xd
	.4byte	0xc1
	.byte	0x7
	.byte	0xb
	.4byte	.LASF46
	.byte	0x6
	.2byte	0x178
	.byte	0xd
	.4byte	0xc1
	.byte	0x8
	.byte	0
	.byte	0xa
	.4byte	.LASF47
	.byte	0x9
	.byte	0x1
	.byte	0x6
	.2byte	0x17e
	.byte	0x8
	.4byte	0x349
	.byte	0xb
	.4byte	.LASF26
	.byte	0x6
	.2byte	0x17f
	.byte	0xd
	.4byte	0xc1
	.byte	0
	.byte	0xb
	.4byte	.LASF27
	.byte	0x6
	.2byte	0x180
	.byte	0xd
	.4byte	0xc1
	.byte	0x1
	.byte	0xb
	.4byte	.LASF48
	.byte	0x6
	.2byte	0x181
	.byte	0xd
	.4byte	0xc1
	.byte	0x2
	.byte	0xb
	.4byte	.LASF49
	.byte	0x6
	.2byte	0x182
	.byte	0xd
	.4byte	0xc1
	.byte	0x3
	.byte	0xb
	.4byte	.LASF50
	.byte	0x6
	.2byte	0x183
	.byte	0xd
	.4byte	0xc1
	.byte	0x4
	.byte	0xb
	.4byte	.LASF51
	.byte	0x6
	.2byte	0x184
	.byte	0xd
	.4byte	0xc1
	.byte	0x5
	.byte	0xb
	.4byte	.LASF52
	.byte	0x6
	.2byte	0x185
	.byte	0xd
	.4byte	0xc1
	.byte	0x6
	.byte	0xb
	.4byte	.LASF53
	.byte	0x6
	.2byte	0x186
	.byte	0xd
	.4byte	0xc1
	.byte	0x7
	.byte	0xb
	.4byte	.LASF54
	.byte	0x6
	.2byte	0x187
	.byte	0xd
	.4byte	0xc1
	.byte	0x8
	.byte	0
	.byte	0xa
	.4byte	.LASF55
	.byte	0x7
	.byte	0x1
	.byte	0x6
	.2byte	0x18d
	.byte	0x8
	.4byte	0x3ad
	.byte	0xb
	.4byte	.LASF26
	.byte	0x6
	.2byte	0x18e
	.byte	0xd
	.4byte	0xc1
	.byte	0
	.byte	0xb
	.4byte	.LASF27
	.byte	0x6
	.2byte	0x18f
	.byte	0xd
	.4byte	0xc1
	.byte	0x1
	.byte	0xb
	.4byte	.LASF56
	.byte	0x6
	.2byte	0x190
	.byte	0xd
	.4byte	0xc1
	.byte	0x2
	.byte	0xb
	.4byte	.LASF45
	.byte	0x6
	.2byte	0x191
	.byte	0xd
	.4byte	0xc1
	.byte	0x3
	.byte	0xb
	.4byte	.LASF57
	.byte	0x6
	.2byte	0x192
	.byte	0xe
	.4byte	0xd7
	.byte	0x4
	.byte	0xb
	.4byte	.LASF58
	.byte	0x6
	.2byte	0x193
	.byte	0xd
	.4byte	0xc1
	.byte	0x6
	.byte	0
	.byte	0xc
	.4byte	.LASF62
	.byte	0x4
	.byte	0x7
	.byte	0x1a
	.byte	0x8
	.4byte	0x3c8
	.byte	0xd
	.4byte	.LASF59
	.byte	0x7
	.byte	0x1b
	.byte	0x1c
	.4byte	0x3c8
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x3ad
	.byte	0x3
	.4byte	.LASF60
	.byte	0x7
	.byte	0x1d
	.byte	0x1f
	.4byte	0x3ad
	.byte	0x3
	.4byte	.LASF61
	.byte	0x8
	.byte	0xf
	.byte	0x10
	.4byte	0x3e6
	.byte	0x6
	.byte	0x4
	.4byte	0x3ec
	.byte	0xe
	.4byte	0x3fc
	.byte	0xf
	.4byte	0xa7
	.byte	0xf
	.4byte	0x25
	.byte	0
	.byte	0xc
	.4byte	.LASF63
	.byte	0x10
	.byte	0x8
	.byte	0x18
	.byte	0x8
	.4byte	0x43e
	.byte	0xd
	.4byte	.LASF64
	.byte	0x8
	.byte	0x19
	.byte	0xe
	.4byte	0x43e
	.byte	0
	.byte	0xd
	.4byte	.LASF65
	.byte	0x8
	.byte	0x1a
	.byte	0xe
	.4byte	0xe8
	.byte	0x4
	.byte	0xd
	.4byte	.LASF66
	.byte	0x8
	.byte	0x1b
	.byte	0xe
	.4byte	0xe8
	.byte	0x8
	.byte	0xd
	.4byte	.LASF67
	.byte	0x8
	.byte	0x1c
	.byte	0x9
	.4byte	0x25
	.byte	0xc
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xc1
	.byte	0xc
	.4byte	.LASF68
	.byte	0x40
	.byte	0x8
	.byte	0x24
	.byte	0x8
	.4byte	0x53b
	.byte	0xd
	.4byte	.LASF69
	.byte	0x8
	.byte	0x25
	.byte	0x11
	.4byte	0x3ce
	.byte	0
	.byte	0xd
	.4byte	.LASF70
	.byte	0x8
	.byte	0x26
	.byte	0xb
	.4byte	0xa7
	.byte	0x4
	.byte	0xd
	.4byte	.LASF71
	.byte	0x8
	.byte	0x27
	.byte	0x1a
	.4byte	0x65d
	.byte	0x8
	.byte	0x10
	.string	"ep"
	.byte	0x8
	.byte	0x28
	.byte	0x25
	.4byte	0x663
	.byte	0xc
	.byte	0xd
	.4byte	.LASF72
	.byte	0x8
	.byte	0x29
	.byte	0xd
	.4byte	0xc1
	.byte	0x10
	.byte	0xd
	.4byte	.LASF73
	.byte	0x8
	.byte	0x2a
	.byte	0xd
	.4byte	0xc1
	.byte	0x11
	.byte	0xd
	.4byte	.LASF74
	.byte	0x8
	.byte	0x2b
	.byte	0x1e
	.4byte	0x669
	.byte	0x14
	.byte	0xd
	.4byte	.LASF64
	.byte	0x8
	.byte	0x2c
	.byte	0xe
	.4byte	0x43e
	.byte	0x18
	.byte	0xd
	.4byte	.LASF65
	.byte	0x8
	.byte	0x2d
	.byte	0xe
	.4byte	0xe8
	.byte	0x1c
	.byte	0xd
	.4byte	.LASF75
	.byte	0x8
	.byte	0x2e
	.byte	0x9
	.4byte	0x25
	.byte	0x20
	.byte	0xd
	.4byte	.LASF66
	.byte	0x8
	.byte	0x2f
	.byte	0xe
	.4byte	0xe8
	.byte	0x24
	.byte	0xd
	.4byte	.LASF76
	.byte	0x8
	.byte	0x30
	.byte	0xe
	.4byte	0xe8
	.byte	0x28
	.byte	0xd
	.4byte	.LASF67
	.byte	0x8
	.byte	0x31
	.byte	0x9
	.4byte	0x25
	.byte	0x2c
	.byte	0xd
	.4byte	.LASF77
	.byte	0x8
	.byte	0x32
	.byte	0xe
	.4byte	0xe8
	.byte	0x30
	.byte	0xd
	.4byte	.LASF78
	.byte	0x8
	.byte	0x33
	.byte	0xe
	.4byte	0xe8
	.byte	0x34
	.byte	0xd
	.4byte	.LASF79
	.byte	0x8
	.byte	0x34
	.byte	0x1e
	.4byte	0x3da
	.byte	0x38
	.byte	0x10
	.string	"arg"
	.byte	0x8
	.byte	0x35
	.byte	0xb
	.4byte	0xa7
	.byte	0x3c
	.byte	0xd
	.4byte	.LASF80
	.byte	0x8
	.byte	0x39
	.byte	0x22
	.4byte	0x66f
	.byte	0x40
	.byte	0
	.byte	0x11
	.4byte	.LASF81
	.2byte	0x13f4
	.byte	0x4
	.byte	0x9
	.byte	0x65
	.byte	0x8
	.4byte	0x65d
	.byte	0xd
	.4byte	.LASF82
	.byte	0x9
	.byte	0x66
	.byte	0x9
	.4byte	0x71b
	.byte	0
	.byte	0xd
	.4byte	.LASF83
	.byte	0x9
	.byte	0x67
	.byte	0xd
	.4byte	0xc1
	.byte	0x1
	.byte	0xd
	.4byte	.LASF84
	.byte	0x9
	.byte	0x68
	.byte	0xd
	.4byte	0xc1
	.byte	0x2
	.byte	0xd
	.4byte	.LASF85
	.byte	0x9
	.byte	0x69
	.byte	0xd
	.4byte	0xc1
	.byte	0x3
	.byte	0xd
	.4byte	.LASF86
	.byte	0x9
	.byte	0x6a
	.byte	0xd
	.4byte	0xc1
	.byte	0x4
	.byte	0xd
	.4byte	.LASF87
	.byte	0x9
	.byte	0x6b
	.byte	0xd
	.4byte	0xc1
	.byte	0x5
	.byte	0xd
	.4byte	.LASF88
	.byte	0x9
	.byte	0x6c
	.byte	0xd
	.4byte	0xc1
	.byte	0x6
	.byte	0x12
	.4byte	.LASF89
	.byte	0x9
	.byte	0x6d
	.byte	0x22
	.4byte	0x167
	.byte	0x1
	.byte	0x7
	.byte	0x12
	.4byte	.LASF90
	.byte	0x9
	.byte	0x6e
	.byte	0x1f
	.4byte	0x93e
	.byte	0x4
	.byte	0x1c
	.byte	0x13
	.4byte	.LASF36
	.byte	0x9
	.byte	0x6f
	.byte	0x11
	.4byte	0xbb
	.2byte	0x1388
	.byte	0x13
	.4byte	.LASF37
	.byte	0x9
	.byte	0x70
	.byte	0x11
	.4byte	0xbb
	.2byte	0x138c
	.byte	0x13
	.4byte	.LASF38
	.byte	0x9
	.byte	0x71
	.byte	0x11
	.4byte	0xbb
	.2byte	0x1390
	.byte	0x13
	.4byte	.LASF91
	.byte	0x9
	.byte	0x72
	.byte	0xe
	.4byte	0x43e
	.2byte	0x1394
	.byte	0x13
	.4byte	.LASF74
	.byte	0x9
	.byte	0x73
	.byte	0x1e
	.4byte	0x669
	.2byte	0x1398
	.byte	0x13
	.4byte	.LASF92
	.byte	0x9
	.byte	0x74
	.byte	0x16
	.4byte	0xa7e
	.2byte	0x139c
	.byte	0x13
	.4byte	.LASF93
	.byte	0x9
	.byte	0x75
	.byte	0x16
	.4byte	0xa7e
	.2byte	0x13a0
	.byte	0x14
	.string	"bus"
	.byte	0x9
	.byte	0x76
	.byte	0x16
	.4byte	0xae6
	.2byte	0x13a4
	.byte	0x15
	.string	"ep0"
	.byte	0x9
	.byte	0x77
	.byte	0x24
	.4byte	0x349
	.byte	0x1
	.2byte	0x13a8
	.byte	0x13
	.4byte	.LASF94
	.byte	0x9
	.byte	0x78
	.byte	0x15
	.4byte	0x444
	.2byte	0x13b0
	.byte	0x13
	.4byte	.LASF95
	.byte	0x9
	.byte	0x79
	.byte	0x16
	.4byte	0x697
	.2byte	0x13f0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x53b
	.byte	0x6
	.byte	0x4
	.4byte	0x349
	.byte	0x6
	.byte	0x4
	.4byte	0x111
	.byte	0x16
	.4byte	0x3fc
	.4byte	0x67f
	.byte	0x17
	.4byte	0x38
	.byte	0
	.byte	0
	.byte	0x3
	.4byte	.LASF96
	.byte	0xa
	.byte	0x1a
	.byte	0xf
	.4byte	0xa7
	.byte	0x3
	.4byte	.LASF97
	.byte	0xa
	.byte	0x1b
	.byte	0xf
	.4byte	0xa7
	.byte	0x3
	.4byte	.LASF98
	.byte	0xa
	.byte	0x1c
	.byte	0xf
	.4byte	0xa7
	.byte	0x3
	.4byte	.LASF99
	.byte	0xa
	.byte	0x1d
	.byte	0xf
	.4byte	0xa7
	.byte	0x6
	.byte	0x4
	.4byte	0x6b5
	.byte	0xe
	.4byte	0x6c0
	.byte	0xf
	.4byte	0xa7
	.byte	0
	.byte	0x3
	.4byte	.LASF100
	.byte	0xa
	.byte	0x1f
	.byte	0x10
	.4byte	0x6af
	.byte	0xc
	.4byte	.LASF101
	.byte	0x14
	.byte	0xa
	.byte	0x20
	.byte	0x8
	.4byte	0x71b
	.byte	0xd
	.4byte	.LASF102
	.byte	0xa
	.byte	0x21
	.byte	0x19
	.4byte	0x6c0
	.byte	0
	.byte	0xd
	.4byte	.LASF103
	.byte	0xa
	.byte	0x22
	.byte	0xb
	.4byte	0xa7
	.byte	0x4
	.byte	0xd
	.4byte	.LASF104
	.byte	0xa
	.byte	0x23
	.byte	0x9
	.4byte	0x71b
	.byte	0x8
	.byte	0xd
	.4byte	.LASF105
	.byte	0xa
	.byte	0x24
	.byte	0xe
	.4byte	0xe8
	.byte	0xc
	.byte	0xd
	.4byte	.LASF106
	.byte	0xa
	.byte	0x25
	.byte	0xb
	.4byte	0xa7
	.byte	0x10
	.byte	0
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF107
	.byte	0x18
	.4byte	.LASF108
	.byte	0x9
	.byte	0x1
	.byte	0xb
	.byte	0x81
	.byte	0x8
	.4byte	0x799
	.byte	0xd
	.4byte	.LASF26
	.byte	0xb
	.byte	0x82
	.byte	0xd
	.4byte	0xc1
	.byte	0
	.byte	0xd
	.4byte	.LASF27
	.byte	0xb
	.byte	0x83
	.byte	0xd
	.4byte	0xc1
	.byte	0x1
	.byte	0xd
	.4byte	.LASF109
	.byte	0xb
	.byte	0x84
	.byte	0xd
	.4byte	0xc1
	.byte	0x2
	.byte	0xd
	.4byte	.LASF110
	.byte	0xb
	.byte	0x85
	.byte	0xe
	.4byte	0xd7
	.byte	0x3
	.byte	0xd
	.4byte	.LASF111
	.byte	0xb
	.byte	0x86
	.byte	0xd
	.4byte	0xc1
	.byte	0x5
	.byte	0xd
	.4byte	.LASF112
	.byte	0xb
	.byte	0x87
	.byte	0xd
	.4byte	0xc1
	.byte	0x6
	.byte	0xd
	.4byte	.LASF113
	.byte	0xb
	.byte	0x88
	.byte	0xd
	.4byte	0xc1
	.byte	0x7
	.byte	0xd
	.4byte	.LASF114
	.byte	0xb
	.byte	0x89
	.byte	0xd
	.4byte	0xc1
	.byte	0x8
	.byte	0
	.byte	0x18
	.4byte	.LASF115
	.byte	0xb
	.byte	0x1
	.byte	0xb
	.byte	0x8f
	.byte	0x8
	.4byte	0x81d
	.byte	0xd
	.4byte	.LASF26
	.byte	0xb
	.byte	0x90
	.byte	0xd
	.4byte	0xc1
	.byte	0
	.byte	0xd
	.4byte	.LASF27
	.byte	0xb
	.byte	0x91
	.byte	0xd
	.4byte	0xc1
	.byte	0x1
	.byte	0xd
	.4byte	.LASF109
	.byte	0xb
	.byte	0x92
	.byte	0xd
	.4byte	0xc1
	.byte	0x2
	.byte	0xd
	.4byte	.LASF110
	.byte	0xb
	.byte	0x93
	.byte	0xe
	.4byte	0xd7
	.byte	0x3
	.byte	0xd
	.4byte	.LASF111
	.byte	0xb
	.byte	0x94
	.byte	0xd
	.4byte	0xc1
	.byte	0x5
	.byte	0xd
	.4byte	.LASF112
	.byte	0xb
	.byte	0x95
	.byte	0xd
	.4byte	0xc1
	.byte	0x6
	.byte	0xd
	.4byte	.LASF116
	.byte	0xb
	.byte	0x96
	.byte	0xd
	.4byte	0xc1
	.byte	0x7
	.byte	0xd
	.4byte	.LASF117
	.byte	0xb
	.byte	0x97
	.byte	0xe
	.4byte	0xd7
	.byte	0x8
	.byte	0xd
	.4byte	.LASF113
	.byte	0xb
	.byte	0x98
	.byte	0xd
	.4byte	0xc1
	.byte	0xa
	.byte	0
	.byte	0xc
	.4byte	.LASF118
	.byte	0xc
	.byte	0x9
	.byte	0x49
	.byte	0x8
	.4byte	0x852
	.byte	0xd
	.4byte	.LASF119
	.byte	0x9
	.byte	0x4a
	.byte	0x11
	.4byte	0xbb
	.byte	0
	.byte	0xd
	.4byte	.LASF120
	.byte	0x9
	.byte	0x4b
	.byte	0xb
	.4byte	0x866
	.byte	0x4
	.byte	0xd
	.4byte	.LASF121
	.byte	0x9
	.byte	0x4c
	.byte	0xb
	.4byte	0x866
	.byte	0x8
	.byte	0
	.byte	0x19
	.4byte	0x25
	.4byte	0x866
	.byte	0xf
	.4byte	0x65d
	.byte	0xf
	.4byte	0xc1
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x852
	.byte	0x18
	.4byte	.LASF122
	.byte	0x7
	.byte	0x1
	.byte	0x9
	.byte	0x4f
	.byte	0x8
	.4byte	0x889
	.byte	0x12
	.4byte	.LASF123
	.byte	0x9
	.byte	0x50
	.byte	0x24
	.4byte	0x349
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LASF124
	.byte	0x25
	.byte	0x1
	.byte	0x9
	.byte	0x53
	.byte	0x8
	.4byte	0x8b3
	.byte	0x12
	.4byte	.LASF125
	.byte	0x9
	.byte	0x54
	.byte	0x25
	.4byte	0x2bb
	.byte	0x1
	.byte	0
	.byte	0x1a
	.string	"ep"
	.byte	0x9
	.byte	0x55
	.byte	0x1a
	.4byte	0x8b3
	.byte	0x1
	.byte	0x9
	.byte	0
	.byte	0x1b
	.4byte	0x86c
	.byte	0x1
	.4byte	0x8c4
	.byte	0x1c
	.4byte	0x38
	.byte	0x3
	.byte	0
	.byte	0x11
	.4byte	.LASF126
	.2byte	0x26c
	.byte	0x4
	.byte	0x9
	.byte	0x58
	.byte	0x8
	.4byte	0x917
	.byte	0xd
	.4byte	.LASF127
	.byte	0x9
	.byte	0x59
	.byte	0xa
	.4byte	0x917
	.byte	0
	.byte	0xd
	.4byte	.LASF128
	.byte	0x9
	.byte	0x5a
	.byte	0x1f
	.4byte	0x927
	.byte	0x10
	.byte	0xd
	.4byte	.LASF129
	.byte	0x9
	.byte	0x5b
	.byte	0xb
	.4byte	0xa7
	.byte	0x14
	.byte	0x12
	.4byte	.LASF130
	.byte	0x9
	.byte	0x5c
	.byte	0x26
	.4byte	0x92d
	.byte	0x1
	.byte	0x18
	.byte	0x13
	.4byte	.LASF131
	.byte	0x9
	.byte	0x5d
	.byte	0xd
	.4byte	0xc1
	.2byte	0x268
	.byte	0
	.byte	0x16
	.4byte	0xaf
	.4byte	0x927
	.byte	0x1c
	.4byte	0x38
	.byte	0xf
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x81d
	.byte	0x1b
	.4byte	0x889
	.byte	0x1
	.4byte	0x93e
	.byte	0x1c
	.4byte	0x38
	.byte	0xf
	.byte	0
	.byte	0x11
	.4byte	.LASF132
	.2byte	0x136c
	.byte	0x4
	.byte	0x9
	.byte	0x60
	.byte	0x8
	.4byte	0x96a
	.byte	0x12
	.4byte	.LASF133
	.byte	0x9
	.byte	0x61
	.byte	0x29
	.4byte	0x23b
	.byte	0x1
	.byte	0
	.byte	0x12
	.4byte	.LASF134
	.byte	0x9
	.byte	0x62
	.byte	0x1b
	.4byte	0x96a
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0x1b
	.4byte	0x8c4
	.byte	0x4
	.4byte	0x97b
	.byte	0x1c
	.4byte	0x38
	.byte	0x7
	.byte	0
	.byte	0x11
	.4byte	.LASF135
	.2byte	0x5044
	.byte	0x4
	.byte	0x9
	.byte	0x7c
	.byte	0x8
	.4byte	0xa7e
	.byte	0xd
	.4byte	.LASF82
	.byte	0x9
	.byte	0x7d
	.byte	0x9
	.4byte	0x71b
	.byte	0
	.byte	0xd
	.4byte	.LASF136
	.byte	0x9
	.byte	0x7e
	.byte	0x9
	.4byte	0x71b
	.byte	0x1
	.byte	0xd
	.4byte	.LASF137
	.byte	0x9
	.byte	0x7f
	.byte	0xd
	.4byte	0xc1
	.byte	0x2
	.byte	0xd
	.4byte	.LASF138
	.byte	0x9
	.byte	0x80
	.byte	0xd
	.4byte	0xc1
	.byte	0x3
	.byte	0xd
	.4byte	.LASF85
	.byte	0x9
	.byte	0x81
	.byte	0xd
	.4byte	0xc1
	.byte	0x4
	.byte	0xd
	.4byte	.LASF139
	.byte	0x9
	.byte	0x82
	.byte	0xd
	.4byte	0xc1
	.byte	0x5
	.byte	0xd
	.4byte	.LASF140
	.byte	0x9
	.byte	0x83
	.byte	0xd
	.4byte	0xc1
	.byte	0x6
	.byte	0xd
	.4byte	.LASF141
	.byte	0x9
	.byte	0x84
	.byte	0xd
	.4byte	0xc1
	.byte	0x7
	.byte	0xd
	.4byte	.LASF142
	.byte	0x9
	.byte	0x85
	.byte	0x9
	.4byte	0x71b
	.byte	0x8
	.byte	0x12
	.4byte	.LASF143
	.byte	0x9
	.byte	0x86
	.byte	0x1f
	.4byte	0x722
	.byte	0x1
	.byte	0x9
	.byte	0x12
	.4byte	.LASF144
	.byte	0x9
	.byte	0x87
	.byte	0x22
	.4byte	0x799
	.byte	0x1
	.byte	0x12
	.byte	0x12
	.4byte	.LASF145
	.byte	0x9
	.byte	0x88
	.byte	0x19
	.4byte	0xaec
	.byte	0x4
	.byte	0x20
	.byte	0x13
	.4byte	.LASF92
	.byte	0x9
	.byte	0x89
	.byte	0x1a
	.4byte	0x65d
	.2byte	0x4ff0
	.byte	0x14
	.string	"bus"
	.byte	0x9
	.byte	0x8a
	.byte	0x16
	.4byte	0xae6
	.2byte	0x4ff4
	.byte	0x13
	.4byte	.LASF146
	.byte	0x9
	.byte	0x8b
	.byte	0x25
	.4byte	0x663
	.2byte	0x4ff8
	.byte	0x13
	.4byte	.LASF147
	.byte	0x9
	.byte	0x8c
	.byte	0x15
	.4byte	0x444
	.2byte	0x4ffc
	.byte	0x13
	.4byte	.LASF148
	.byte	0x9
	.byte	0x8d
	.byte	0xe
	.4byte	0x43e
	.2byte	0x503c
	.byte	0x13
	.4byte	.LASF149
	.byte	0x9
	.byte	0x8e
	.byte	0x1c
	.4byte	0xafd
	.2byte	0x5040
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x97b
	.byte	0x11
	.4byte	.LASF150
	.2byte	0x5070
	.byte	0x4
	.byte	0x9
	.byte	0xa4
	.byte	0x8
	.4byte	0xae6
	.byte	0xd
	.4byte	.LASF69
	.byte	0x9
	.byte	0xa5
	.byte	0x11
	.4byte	0x3ce
	.byte	0
	.byte	0xd
	.4byte	.LASF151
	.byte	0x9
	.byte	0xa6
	.byte	0xd
	.4byte	0xc1
	.byte	0x4
	.byte	0x1a
	.string	"hcd"
	.byte	0x9
	.byte	0xa7
	.byte	0x15
	.4byte	0xb3b
	.byte	0x4
	.byte	0x8
	.byte	0x13
	.4byte	.LASF152
	.byte	0x9
	.byte	0xa8
	.byte	0x1d
	.4byte	0xb03
	.2byte	0x5054
	.byte	0x13
	.4byte	.LASF153
	.byte	0x9
	.byte	0xa9
	.byte	0x17
	.4byte	0x67f
	.2byte	0x5068
	.byte	0x13
	.4byte	.LASF154
	.byte	0x9
	.byte	0xaa
	.byte	0x13
	.4byte	0x6a3
	.2byte	0x506c
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xa84
	.byte	0x1b
	.4byte	0x53b
	.byte	0x4
	.4byte	0xafd
	.byte	0x1c
	.4byte	0x38
	.byte	0x3
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x6cc
	.byte	0xc
	.4byte	.LASF155
	.byte	0x14
	.byte	0x9
	.byte	0x91
	.byte	0x8
	.4byte	0xb2b
	.byte	0xd
	.4byte	.LASF59
	.byte	0x9
	.byte	0x99
	.byte	0xd
	.4byte	0xc1
	.byte	0
	.byte	0xd
	.4byte	.LASF156
	.byte	0x9
	.byte	0x9a
	.byte	0xe
	.4byte	0xb2b
	.byte	0x4
	.byte	0
	.byte	0x16
	.4byte	0xe8
	.4byte	0xb3b
	.byte	0x1c
	.4byte	0x38
	.byte	0x3
	.byte	0
	.byte	0x11
	.4byte	.LASF157
	.2byte	0x504c
	.byte	0x4
	.byte	0x9
	.byte	0x9d
	.byte	0x8
	.4byte	0xb80
	.byte	0xd
	.4byte	.LASF158
	.byte	0x9
	.byte	0x9e
	.byte	0xf
	.4byte	0xfe
	.byte	0
	.byte	0xd
	.4byte	.LASF159
	.byte	0x9
	.byte	0x9f
	.byte	0xd
	.4byte	0xc1
	.byte	0x4
	.byte	0xd
	.4byte	.LASF160
	.byte	0x9
	.byte	0xa0
	.byte	0xd
	.4byte	0xb80
	.byte	0x5
	.byte	0x12
	.4byte	.LASF161
	.byte	0x9
	.byte	0xa1
	.byte	0x15
	.4byte	0x97b
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x16
	.4byte	0xc1
	.4byte	0xb90
	.byte	0x1c
	.4byte	0x38
	.byte	0x1
	.byte	0
	.byte	0x1b
	.4byte	0xa84
	.byte	0x4
	.4byte	0xb9c
	.byte	0x1d
	.byte	0
	.byte	0x1e
	.4byte	.LASF203
	.byte	0x9
	.byte	0xe7
	.byte	0x18
	.4byte	0xb90
	.byte	0x1f
	.4byte	.LASF162
	.byte	0x14
	.byte	0xc
	.2byte	0x12d
	.byte	0x8
	.4byte	0xc0b
	.byte	0xb
	.4byte	.LASF163
	.byte	0xc
	.2byte	0x12e
	.byte	0x16
	.4byte	0xd2
	.byte	0
	.byte	0xb
	.4byte	.LASF164
	.byte	0xc
	.2byte	0x12f
	.byte	0x16
	.4byte	0xd2
	.byte	0x1
	.byte	0xb
	.4byte	.LASF165
	.byte	0xc
	.2byte	0x130
	.byte	0x17
	.4byte	0xe3
	.byte	0x2
	.byte	0xb
	.4byte	.LASF166
	.byte	0xc
	.2byte	0x131
	.byte	0x17
	.4byte	0xf4
	.byte	0x4
	.byte	0xb
	.4byte	.LASF167
	.byte	0xc
	.2byte	0x132
	.byte	0x17
	.4byte	0xf4
	.byte	0x8
	.byte	0xb
	.4byte	.LASF168
	.byte	0xc
	.2byte	0x133
	.byte	0x16
	.4byte	0xc1b
	.byte	0xc
	.byte	0
	.byte	0x16
	.4byte	0xd2
	.4byte	0xc1b
	.byte	0x1c
	.4byte	0x38
	.byte	0x7
	.byte	0
	.byte	0x8
	.4byte	0xc0b
	.byte	0x1f
	.4byte	.LASF169
	.byte	0x5c
	.byte	0xc
	.2byte	0x13b
	.byte	0x8
	.4byte	0xcad
	.byte	0xb
	.4byte	.LASF170
	.byte	0xc
	.2byte	0x13c
	.byte	0x17
	.4byte	0xf4
	.byte	0
	.byte	0xb
	.4byte	.LASF171
	.byte	0xc
	.2byte	0x13d
	.byte	0x17
	.4byte	0xf4
	.byte	0x4
	.byte	0xb
	.4byte	.LASF172
	.byte	0xc
	.2byte	0x13e
	.byte	0x17
	.4byte	0xf4
	.byte	0x8
	.byte	0xb
	.4byte	.LASF173
	.byte	0xc
	.2byte	0x13f
	.byte	0x17
	.4byte	0xf4
	.byte	0xc
	.byte	0xb
	.4byte	.LASF174
	.byte	0xc
	.2byte	0x140
	.byte	0x17
	.4byte	0xf4
	.byte	0x10
	.byte	0xb
	.4byte	.LASF175
	.byte	0xc
	.2byte	0x141
	.byte	0x17
	.4byte	0xf4
	.byte	0x14
	.byte	0xb
	.4byte	.LASF176
	.byte	0xc
	.2byte	0x142
	.byte	0x17
	.4byte	0xf4
	.byte	0x18
	.byte	0xb
	.4byte	.LASF177
	.byte	0xc
	.2byte	0x146
	.byte	0x17
	.4byte	0xf4
	.byte	0x1c
	.byte	0xb
	.4byte	.LASF178
	.byte	0xc
	.2byte	0x147
	.byte	0x17
	.4byte	0xcbd
	.byte	0x20
	.byte	0
	.byte	0x16
	.4byte	0xf4
	.4byte	0xcbd
	.byte	0x1c
	.4byte	0x38
	.byte	0xe
	.byte	0
	.byte	0x8
	.4byte	0xcad
	.byte	0x1f
	.4byte	.LASF179
	.byte	0x20
	.byte	0xc
	.2byte	0x15b
	.byte	0x8
	.4byte	0xd09
	.byte	0xb
	.4byte	.LASF180
	.byte	0xc
	.2byte	0x15c
	.byte	0xe
	.4byte	0xe8
	.byte	0
	.byte	0xb
	.4byte	.LASF181
	.byte	0xc
	.2byte	0x15d
	.byte	0xe
	.4byte	0xe8
	.byte	0x4
	.byte	0xb
	.4byte	.LASF182
	.byte	0xc
	.2byte	0x15e
	.byte	0xe
	.4byte	0xe8
	.byte	0x8
	.byte	0x20
	.string	"bpl"
	.byte	0xc
	.2byte	0x15f
	.byte	0xe
	.4byte	0xd09
	.byte	0xc
	.byte	0
	.byte	0x16
	.4byte	0xe8
	.4byte	0xd19
	.byte	0x1c
	.4byte	0x38
	.byte	0x4
	.byte	0
	.byte	0x1f
	.4byte	.LASF183
	.byte	0x30
	.byte	0xc
	.2byte	0x166
	.byte	0x8
	.4byte	0xd6e
	.byte	0x20
	.string	"hlp"
	.byte	0xc
	.2byte	0x167
	.byte	0xe
	.4byte	0xe8
	.byte	0
	.byte	0xb
	.4byte	.LASF184
	.byte	0xc
	.2byte	0x168
	.byte	0xe
	.4byte	0xe8
	.byte	0x4
	.byte	0xb
	.4byte	.LASF185
	.byte	0xc
	.2byte	0x169
	.byte	0xe
	.4byte	0xe8
	.byte	0x8
	.byte	0xb
	.4byte	.LASF186
	.byte	0xc
	.2byte	0x16a
	.byte	0xe
	.4byte	0xe8
	.byte	0xc
	.byte	0xb
	.4byte	.LASF187
	.byte	0xc
	.2byte	0x16b
	.byte	0x15
	.4byte	0xcc2
	.byte	0x10
	.byte	0
	.byte	0x18
	.4byte	.LASF188
	.byte	0x40
	.byte	0x20
	.byte	0xd
	.byte	0x2e
	.byte	0x8
	.4byte	0xdbd
	.byte	0x10
	.string	"hw"
	.byte	0xd
	.byte	0x2f
	.byte	0x15
	.4byte	0xcc2
	.byte	0
	.byte	0xd
	.4byte	.LASF189
	.byte	0xd
	.byte	0x33
	.byte	0x9
	.4byte	0x71b
	.byte	0x20
	.byte	0x10
	.string	"urb"
	.byte	0xd
	.byte	0x34
	.byte	0x16
	.4byte	0xdbd
	.byte	0x24
	.byte	0xd
	.4byte	.LASF190
	.byte	0xd
	.byte	0x35
	.byte	0xf
	.4byte	0xfe
	.byte	0x28
	.byte	0xd
	.4byte	.LASF191
	.byte	0xd
	.byte	0x36
	.byte	0xe
	.4byte	0xe8
	.byte	0x2c
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x444
	.byte	0x18
	.4byte	.LASF192
	.byte	0x60
	.byte	0x20
	.byte	0xd
	.byte	0x39
	.byte	0x8
	.4byte	0xe1f
	.byte	0x10
	.string	"hw"
	.byte	0xd
	.byte	0x3a
	.byte	0x14
	.4byte	0xd19
	.byte	0
	.byte	0xd
	.4byte	.LASF189
	.byte	0xd
	.byte	0x3e
	.byte	0x9
	.4byte	0x71b
	.byte	0x30
	.byte	0xd
	.4byte	.LASF193
	.byte	0xd
	.byte	0x3f
	.byte	0xe
	.4byte	0xe8
	.byte	0x34
	.byte	0x10
	.string	"urb"
	.byte	0xd
	.byte	0x40
	.byte	0x16
	.4byte	0xdbd
	.byte	0x38
	.byte	0xd
	.4byte	.LASF194
	.byte	0xd
	.byte	0x41
	.byte	0x14
	.4byte	0x68b
	.byte	0x3c
	.byte	0xd
	.4byte	.LASF195
	.byte	0xd
	.byte	0x42
	.byte	0xd
	.4byte	0xc1
	.byte	0x40
	.byte	0
	.byte	0xc
	.4byte	.LASF196
	.byte	0xa
	.byte	0xd
	.byte	0x54
	.byte	0x8
	.4byte	0xe88
	.byte	0xd
	.4byte	.LASF197
	.byte	0xd
	.byte	0x55
	.byte	0x9
	.4byte	0xe88
	.byte	0
	.byte	0x10
	.string	"ppc"
	.byte	0xd
	.byte	0x56
	.byte	0x9
	.4byte	0x71b
	.byte	0x4
	.byte	0xd
	.4byte	.LASF198
	.byte	0xd
	.byte	0x57
	.byte	0x9
	.4byte	0x71b
	.byte	0x5
	.byte	0xd
	.4byte	.LASF199
	.byte	0xd
	.byte	0x58
	.byte	0xd
	.4byte	0xc1
	.byte	0x6
	.byte	0xd
	.4byte	.LASF200
	.byte	0xd
	.byte	0x59
	.byte	0xd
	.4byte	0xc1
	.byte	0x7
	.byte	0xd
	.4byte	.LASF201
	.byte	0xd
	.byte	0x5a
	.byte	0xd
	.4byte	0xc1
	.byte	0x8
	.byte	0xd
	.4byte	.LASF202
	.byte	0xd
	.byte	0x5b
	.byte	0xd
	.4byte	0xc1
	.byte	0x9
	.byte	0
	.byte	0x16
	.4byte	0x71b
	.4byte	0xe98
	.byte	0x1c
	.4byte	0x38
	.byte	0x3
	.byte	0
	.byte	0x16
	.4byte	0xe1f
	.4byte	0xea8
	.byte	0x1c
	.4byte	0x38
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LASF204
	.byte	0xd
	.byte	0x5e
	.byte	0x18
	.4byte	0xe98
	.byte	0x16
	.4byte	0xe8
	.4byte	0xecb
	.byte	0x1c
	.4byte	0x38
	.byte	0
	.byte	0x21
	.4byte	0x38
	.2byte	0x3ff
	.byte	0
	.byte	0x1e
	.4byte	.LASF205
	.byte	0xd
	.byte	0x5f
	.byte	0x11
	.4byte	0xeb4
	.byte	0x22
	.4byte	0xea8
	.byte	0x1
	.byte	0x11
	.byte	0x11
	.byte	0x5
	.byte	0x3
	.4byte	g_ehci_hcd
	.byte	0x1b
	.4byte	0xdc3
	.byte	0x20
	.4byte	0xefc
	.byte	0x1c
	.4byte	0x38
	.byte	0
	.byte	0x1c
	.4byte	0x38
	.byte	0x9
	.byte	0
	.byte	0x23
	.4byte	.LASF206
	.byte	0x1
	.byte	0x13
	.byte	0x3d
	.4byte	0xee5
	.byte	0x5
	.byte	0x3
	.4byte	ehci_qh_pool
	.byte	0x1b
	.4byte	0xd6e
	.byte	0x20
	.4byte	0xf25
	.byte	0x1c
	.4byte	0x38
	.byte	0
	.byte	0x1c
	.4byte	0x38
	.byte	0x1d
	.byte	0
	.byte	0x23
	.4byte	.LASF207
	.byte	0x1
	.byte	0x14
	.byte	0x3e
	.4byte	0xf0e
	.byte	0x5
	.byte	0x3
	.4byte	ehci_qtd_pool
	.byte	0x1b
	.4byte	0xdc3
	.byte	0x20
	.4byte	0xf48
	.byte	0x1c
	.4byte	0x38
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	.LASF208
	.byte	0x1
	.byte	0x17
	.byte	0x3d
	.4byte	0xf37
	.byte	0x5
	.byte	0x3
	.4byte	g_async_qh_head
	.byte	0x23
	.4byte	.LASF209
	.byte	0x1
	.byte	0x19
	.byte	0x3d
	.4byte	0xf37
	.byte	0x5
	.byte	0x3
	.4byte	g_periodic_qh_head
	.byte	0x22
	.4byte	0xecb
	.byte	0x1
	.byte	0x1c
	.byte	0x34
	.byte	0x5
	.byte	0x3
	.4byte	g_framelist
	.byte	0x24
	.4byte	.LASF281
	.byte	0x1
	.2byte	0x575
	.byte	0x6
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.byte	0x1
	.byte	0x9c
	.4byte	0x10b9
	.byte	0x25
	.4byte	.LASF151
	.byte	0x1
	.2byte	0x575
	.byte	0x1e
	.4byte	0xc1
	.4byte	.LLST131
	.byte	0x26
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x577
	.byte	0xe
	.4byte	0xe8
	.4byte	.LLST132
	.byte	0x27
	.string	"bus"
	.byte	0x1
	.2byte	0x578
	.byte	0x16
	.4byte	0xae6
	.4byte	.LLST133
	.byte	0x28
	.4byte	.LBB118
	.4byte	.LBE118-.LBB118
	.4byte	0x100a
	.byte	0x26
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x590
	.byte	0x12
	.4byte	0x25
	.4byte	.LLST134
	.byte	0x29
	.4byte	.Ldebug_ranges0+0x1a0
	.byte	0x26
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x591
	.byte	0x16
	.4byte	0xe8
	.4byte	.LLST135
	.byte	0x2a
	.4byte	.LVL449
	.4byte	0x2997
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2c
	.4byte	.Ldebug_ranges0+0x1c0
	.4byte	0x1044
	.byte	0x26
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x5a3
	.byte	0x16
	.4byte	0xc1
	.4byte	.LLST136
	.byte	0x29
	.4byte	.Ldebug_ranges0+0x1d8
	.byte	0x27
	.string	"qh"
	.byte	0x1
	.2byte	0x5a4
	.byte	0x20
	.4byte	0x10b9
	.4byte	.LLST137
	.byte	0x2d
	.4byte	.LVL458
	.4byte	0x2938
	.byte	0
	.byte	0
	.byte	0x2e
	.4byte	.LVL434
	.4byte	0x110f
	.4byte	0x1058
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x2e
	.4byte	.LVL435
	.4byte	0x10bf
	.4byte	0x106c
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x2e
	.4byte	.LVL436
	.4byte	0x29a3
	.4byte	0x1080
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x2e
	.4byte	.LVL437
	.4byte	0x110f
	.4byte	0x1094
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x2e
	.4byte	.LVL438
	.4byte	0x10bf
	.4byte	0x10a8
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x2a
	.4byte	.LVL439
	.4byte	0x29a3
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xdc3
	.byte	0x2f
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x568
	.byte	0xd
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.byte	0x1
	.byte	0x9c
	.4byte	0x110f
	.byte	0x30
	.string	"bus"
	.byte	0x1
	.2byte	0x568
	.byte	0x36
	.4byte	0xae6
	.4byte	.LLST47
	.byte	0x27
	.string	"qh"
	.byte	0x1
	.2byte	0x56a
	.byte	0x18
	.4byte	0x10b9
	.4byte	.LLST48
	.byte	0x2a
	.4byte	.LVL126
	.4byte	0x20a9
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0x2b
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2f
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x55b
	.byte	0xd
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.byte	0x1
	.byte	0x9c
	.4byte	0x115f
	.byte	0x30
	.string	"bus"
	.byte	0x1
	.2byte	0x55b
	.byte	0x33
	.4byte	0xae6
	.4byte	.LLST45
	.byte	0x27
	.string	"qh"
	.byte	0x1
	.2byte	0x55d
	.byte	0x18
	.4byte	0x10b9
	.4byte	.LLST46
	.byte	0x2a
	.4byte	.LVL119
	.4byte	0x20a9
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0x2b
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x31
	.4byte	.LASF213
	.byte	0x1
	.2byte	0x50a
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.byte	0x1
	.byte	0x9c
	.4byte	0x12e0
	.byte	0x30
	.string	"urb"
	.byte	0x1
	.2byte	0x50a
	.byte	0x24
	.4byte	0xdbd
	.4byte	.LLST77
	.byte	0x27
	.string	"qh"
	.byte	0x1
	.2byte	0x50c
	.byte	0x18
	.4byte	0x10b9
	.4byte	.LLST78
	.byte	0x27
	.string	"bus"
	.byte	0x1
	.2byte	0x50d
	.byte	0x16
	.4byte	0xae6
	.4byte	.LLST79
	.byte	0x26
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x50e
	.byte	0xc
	.4byte	0x2c
	.4byte	.LLST80
	.byte	0x26
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x50f
	.byte	0x9
	.4byte	0x71b
	.4byte	.LLST81
	.byte	0x2c
	.4byte	.Ldebug_ranges0+0x108
	.4byte	0x120b
	.byte	0x32
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x549
	.byte	0x1b
	.4byte	0xf4
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x2e
	.4byte	.LVL280
	.4byte	0x29af
	.4byte	0x11fa
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x2a
	.4byte	.LVL281
	.4byte	0x29bb
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0
	.byte	0x33
	.4byte	0x2074
	.4byte	.LBB75
	.4byte	.LBE75-.LBB75
	.byte	0x1
	.2byte	0x526
	.byte	0x11
	.4byte	0x124c
	.byte	0x34
	.4byte	0x209c
	.4byte	.LLST82
	.byte	0x34
	.4byte	0x208f
	.4byte	.LLST83
	.byte	0x34
	.4byte	0x2082
	.4byte	.LLST84
	.byte	0x2a
	.4byte	.LVL262
	.4byte	0x2618
	.byte	0x2b
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0x35
	.4byte	0x2074
	.4byte	.LBB77
	.4byte	.Ldebug_ranges0+0x120
	.byte	0x1
	.2byte	0x52e
	.byte	0x11
	.4byte	0x128d
	.byte	0x34
	.4byte	0x209c
	.4byte	.LLST85
	.byte	0x34
	.4byte	0x208f
	.4byte	.LLST86
	.byte	0x34
	.4byte	0x2082
	.4byte	.LLST87
	.byte	0x2a
	.4byte	.LVL269
	.4byte	0x2618
	.byte	0x2b
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2d
	.4byte	.LVL252
	.4byte	0x29c7
	.byte	0x2d
	.4byte	.LVL258
	.4byte	0x29d3
	.byte	0x2e
	.4byte	.LVL274
	.4byte	0x29df
	.4byte	0x12b9
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x2b
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x2e
	.4byte	.LVL276
	.4byte	0x29bb
	.4byte	0x12cd
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0x2a
	.4byte	.LVL278
	.4byte	0x28ad
	.byte	0x36
	.4byte	0x268c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x31
	.4byte	.LASF214
	.byte	0x1
	.2byte	0x4aa
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.byte	0x1
	.byte	0x9c
	.4byte	0x19e0
	.byte	0x30
	.string	"urb"
	.byte	0x1
	.2byte	0x4aa
	.byte	0x26
	.4byte	0xdbd
	.4byte	.LLST88
	.byte	0x27
	.string	"qh"
	.byte	0x1
	.2byte	0x4ac
	.byte	0x18
	.4byte	0x10b9
	.4byte	.LLST89
	.byte	0x26
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x4ad
	.byte	0xc
	.4byte	0x2c
	.4byte	.LLST90
	.byte	0x27
	.string	"ret"
	.byte	0x1
	.2byte	0x4ae
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST91
	.byte	0x27
	.string	"hub"
	.byte	0x1
	.2byte	0x4af
	.byte	0x16
	.4byte	0xa7e
	.4byte	.LLST92
	.byte	0x26
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x4b0
	.byte	0x1a
	.4byte	0x65d
	.4byte	.LLST93
	.byte	0x27
	.string	"bus"
	.byte	0x1
	.2byte	0x4b1
	.byte	0x16
	.4byte	0xae6
	.4byte	.LLST94
	.byte	0x37
	.4byte	.LASF282
	.byte	0x1
	.2byte	0x504
	.byte	0x1
	.4byte	.LDL1
	.byte	0x35
	.4byte	0x2349
	.4byte	.LBB94
	.4byte	.Ldebug_ranges0+0x138
	.byte	0x1
	.2byte	0x4de
	.byte	0x12
	.4byte	0x1609
	.byte	0x34
	.4byte	0x238f
	.4byte	.LLST95
	.byte	0x34
	.4byte	0x2382
	.4byte	.LLST96
	.byte	0x34
	.4byte	0x2375
	.4byte	.LLST97
	.byte	0x34
	.4byte	0x2368
	.4byte	.LLST98
	.byte	0x34
	.4byte	0x235b
	.4byte	.LLST99
	.byte	0x29
	.4byte	.Ldebug_ranges0+0x138
	.byte	0x38
	.4byte	0x239c
	.4byte	.LLST100
	.byte	0x38
	.4byte	0x23a8
	.4byte	.LLST101
	.byte	0x38
	.4byte	0x23b5
	.4byte	.LLST102
	.byte	0x38
	.4byte	0x23c2
	.4byte	.LLST103
	.byte	0x38
	.4byte	0x23cf
	.4byte	.LLST104
	.byte	0x39
	.4byte	0x23dc
	.byte	0x2e
	.4byte	.LVL293
	.4byte	0x26bc
	.4byte	0x140b
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x2e
	.4byte	.LVL302
	.4byte	0x2786
	.4byte	0x141f
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x2e
	.4byte	.LVL305
	.4byte	0x2786
	.4byte	0x1433
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x2e
	.4byte	.LVL309
	.4byte	0x29eb
	.4byte	0x144a
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0x2e
	.4byte	.LVL310
	.4byte	0x29eb
	.4byte	0x147a
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0x2b
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0x2b
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0x2b
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xa
	.2byte	0x154
	.byte	0
	.byte	0x2e
	.4byte	.LVL312
	.4byte	0x29eb
	.4byte	0x1491
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x2e
	.4byte	.LVL313
	.4byte	0x29eb
	.4byte	0x14a8
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0x2e
	.4byte	.LVL314
	.4byte	0x29eb
	.4byte	0x14bf
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.byte	0x2e
	.4byte	.LVL315
	.4byte	0x29eb
	.4byte	0x14d6
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x2e
	.4byte	.LVL318
	.4byte	0x24e3
	.4byte	0x14f4
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x2b
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x30
	.byte	0x2b
	.byte	0x1
	.byte	0x60
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x2e
	.4byte	.LVL319
	.4byte	0x23ea
	.4byte	0x151c
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x2b
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0x2b
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x38
	.byte	0x2b
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0xc
	.4byte	0x80e80
	.byte	0
	.byte	0x2e
	.4byte	.LVL320
	.4byte	0x2786
	.4byte	0x1530
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x2e
	.4byte	.LVL324
	.4byte	0x29eb
	.4byte	0x1547
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0x2e
	.4byte	.LVL325
	.4byte	0x29eb
	.4byte	0x1577
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0x2b
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0x2b
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0x2b
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xa
	.2byte	0x16d
	.byte	0
	.byte	0x2e
	.4byte	.LVL327
	.4byte	0x29eb
	.4byte	0x158e
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x2e
	.4byte	.LVL328
	.4byte	0x29eb
	.4byte	0x15a5
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0x2e
	.4byte	.LVL329
	.4byte	0x29eb
	.4byte	0x15bc
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.byte	0x2e
	.4byte	.LVL330
	.4byte	0x29eb
	.4byte	0x15d3
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x2e
	.4byte	.LVL335
	.4byte	0x23ea
	.4byte	0x15ed
	.byte	0x2b
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0x2b
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0
	.byte	0x2a
	.4byte	.LVL339
	.4byte	0x23ea
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x2b
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x2b
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.byte	0x35
	.4byte	0x22a8
	.4byte	.LBB101
	.4byte	.Ldebug_ranges0+0x160
	.byte	0x1
	.2byte	0x4e4
	.byte	0x12
	.4byte	0x17c2
	.byte	0x34
	.4byte	0x22e1
	.4byte	.LLST105
	.byte	0x34
	.4byte	0x22d4
	.4byte	.LLST106
	.byte	0x34
	.4byte	0x22c7
	.4byte	.LLST107
	.byte	0x34
	.4byte	0x22ba
	.4byte	.LLST108
	.byte	0x29
	.4byte	.Ldebug_ranges0+0x160
	.byte	0x38
	.4byte	0x22ee
	.4byte	.LLST109
	.byte	0x38
	.4byte	0x22fa
	.4byte	.LLST110
	.byte	0x38
	.4byte	0x2307
	.4byte	.LLST111
	.byte	0x38
	.4byte	0x2314
	.4byte	.LLST110
	.byte	0x38
	.4byte	0x2321
	.4byte	.LLST113
	.byte	0x38
	.4byte	0x232e
	.4byte	.LLST114
	.byte	0x38
	.4byte	0x233b
	.4byte	.LLST115
	.byte	0x33
	.4byte	0x265b
	.4byte	.LBB103
	.4byte	.LBE103-.LBB103
	.byte	0x1
	.2byte	0x1fe
	.byte	0x5
	.4byte	0x16ae
	.byte	0x34
	.4byte	0x2674
	.4byte	.LLST116
	.byte	0x34
	.4byte	0x2668
	.4byte	.LLST117
	.byte	0
	.byte	0x2d
	.4byte	.LVL342
	.4byte	0x29c7
	.byte	0x2e
	.4byte	.LVL355
	.4byte	0x26bc
	.4byte	0x16cb
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x2e
	.4byte	.LVL357
	.4byte	0x24e3
	.4byte	0x16e9
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x2b
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x30
	.byte	0x2b
	.byte	0x1
	.byte	0x60
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x2e
	.4byte	.LVL359
	.4byte	0x2786
	.4byte	0x16fd
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x2e
	.4byte	.LVL362
	.4byte	0x29eb
	.4byte	0x1714
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0x2e
	.4byte	.LVL363
	.4byte	0x29eb
	.4byte	0x1744
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0x2b
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0x2b
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0x2b
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xa
	.2byte	0x1c2
	.byte	0
	.byte	0x2e
	.4byte	.LVL365
	.4byte	0x29eb
	.4byte	0x175b
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x2e
	.4byte	.LVL366
	.4byte	0x29eb
	.4byte	0x1772
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0x2e
	.4byte	.LVL367
	.4byte	0x29eb
	.4byte	0x1789
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0
	.byte	0x2e
	.4byte	.LVL368
	.4byte	0x29eb
	.4byte	0x17a0
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x2a
	.4byte	.LVL376
	.4byte	0x23ea
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x4
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0x6
	.byte	0x2b
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0x2b
	.byte	0x1
	.byte	0x5c
	.byte	0x4
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0x35
	.4byte	0x2207
	.4byte	.LBB107
	.4byte	.Ldebug_ranges0+0x180
	.byte	0x1
	.2byte	0x4ea
	.byte	0x12
	.4byte	0x197e
	.byte	0x34
	.4byte	0x2240
	.4byte	.LLST118
	.byte	0x34
	.4byte	0x2233
	.4byte	.LLST119
	.byte	0x34
	.4byte	0x2226
	.4byte	.LLST120
	.byte	0x34
	.4byte	0x2219
	.4byte	.LLST121
	.byte	0x29
	.4byte	.Ldebug_ranges0+0x180
	.byte	0x38
	.4byte	0x224d
	.4byte	.LLST122
	.byte	0x38
	.4byte	0x2259
	.4byte	.LLST123
	.byte	0x38
	.4byte	0x2266
	.4byte	.LLST124
	.byte	0x38
	.4byte	0x2273
	.4byte	.LLST123
	.byte	0x38
	.4byte	0x2280
	.4byte	.LLST126
	.byte	0x38
	.4byte	0x228d
	.4byte	.LLST127
	.byte	0x38
	.4byte	0x229a
	.4byte	.LLST128
	.byte	0x33
	.4byte	0x265b
	.4byte	.LBB109
	.4byte	.LBE109-.LBB109
	.byte	0x1
	.2byte	0x25e
	.byte	0x5
	.4byte	0x1867
	.byte	0x34
	.4byte	0x2674
	.4byte	.LLST129
	.byte	0x34
	.4byte	0x2668
	.4byte	.LLST130
	.byte	0
	.byte	0x2d
	.4byte	.LVL346
	.4byte	0x29bb
	.byte	0x2e
	.4byte	.LVL387
	.4byte	0x26bc
	.4byte	0x1884
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x2e
	.4byte	.LVL389
	.4byte	0x24e3
	.4byte	0x1898
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x2e
	.4byte	.LVL391
	.4byte	0x2786
	.4byte	0x18ac
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x2e
	.4byte	.LVL394
	.4byte	0x29eb
	.4byte	0x18c3
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0x2e
	.4byte	.LVL395
	.4byte	0x29eb
	.4byte	0x18f3
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0x2b
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0x2b
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0x2b
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xa
	.2byte	0x222
	.byte	0
	.byte	0x2e
	.4byte	.LVL397
	.4byte	0x29eb
	.4byte	0x190a
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x2e
	.4byte	.LVL398
	.4byte	0x29eb
	.4byte	0x1921
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0x2e
	.4byte	.LVL399
	.4byte	0x29eb
	.4byte	0x1938
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.byte	0x2e
	.4byte	.LVL400
	.4byte	0x29eb
	.4byte	0x194f
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x2e
	.4byte	.LVL408
	.4byte	0x23ea
	.4byte	0x1973
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x4
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0x6
	.byte	0x2b
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0x2b
	.byte	0x1
	.byte	0x5c
	.byte	0x4
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0x6
	.byte	0
	.byte	0x2d
	.4byte	.LVL413
	.4byte	0x29c7
	.byte	0
	.byte	0
	.byte	0x2d
	.4byte	.LVL290
	.4byte	0x29c7
	.byte	0x2d
	.4byte	.LVL291
	.4byte	0x29bb
	.byte	0x2d
	.4byte	.LVL348
	.4byte	0x29f7
	.byte	0x2e
	.4byte	.LVL351
	.4byte	0x115f
	.4byte	0x19ad
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x2e
	.4byte	.LVL421
	.4byte	0x2a03
	.4byte	0x19c7
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x2b
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x2a
	.4byte	.LVL426
	.4byte	0x28ad
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x36
	.4byte	0x268c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0x31
	.4byte	.LASF215
	.byte	0x1
	.2byte	0x3e7
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.byte	0x1
	.byte	0x9c
	.4byte	0x1b8d
	.byte	0x30
	.string	"bus"
	.byte	0x1
	.2byte	0x3e7
	.byte	0x2b
	.4byte	0xae6
	.4byte	.LLST61
	.byte	0x25
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x3e7
	.byte	0x49
	.4byte	0x669
	.4byte	.LLST62
	.byte	0x30
	.string	"buf"
	.byte	0x1
	.2byte	0x3e7
	.byte	0x59
	.4byte	0x43e
	.4byte	.LLST63
	.byte	0x26
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x3e9
	.byte	0xd
	.4byte	0xc1
	.4byte	.LLST64
	.byte	0x3a
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x3ea
	.byte	0xd
	.4byte	0xc1
	.byte	0x26
	.4byte	.LASF216
	.byte	0x1
	.2byte	0x3eb
	.byte	0xe
	.4byte	0xe8
	.4byte	.LLST65
	.byte	0x32
	.4byte	.LASF217
	.byte	0x1
	.2byte	0x3eb
	.byte	0x14
	.4byte	0xe8
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x35
	.4byte	0x281f
	.4byte	.LBB60
	.4byte	.Ldebug_ranges0+0xc8
	.byte	0x1
	.2byte	0x4a1
	.byte	0x11
	.4byte	0x1aeb
	.byte	0x34
	.4byte	0x2846
	.4byte	.LLST66
	.byte	0x34
	.4byte	0x283b
	.4byte	.LLST67
	.byte	0x34
	.4byte	0x2830
	.4byte	.LLST68
	.byte	0x29
	.4byte	.Ldebug_ranges0+0xc8
	.byte	0x38
	.4byte	0x2850
	.4byte	.LLST69
	.byte	0x38
	.4byte	0x285b
	.4byte	.LLST70
	.byte	0x38
	.4byte	0x2866
	.4byte	.LLST71
	.byte	0x38
	.4byte	0x2871
	.4byte	.LLST72
	.byte	0x3b
	.4byte	0x2889
	.4byte	.LBB62
	.4byte	.LBE62-.LBB62
	.byte	0x2
	.byte	0x4e
	.byte	0xa
	.byte	0x34
	.4byte	0x28a2
	.4byte	.LLST73
	.byte	0x34
	.4byte	0x2896
	.4byte	.LLST74
	.byte	0
	.byte	0
	.byte	0
	.byte	0x35
	.4byte	0x202d
	.4byte	.LBB69
	.4byte	.Ldebug_ranges0+0xf0
	.byte	0x1
	.2byte	0x466
	.byte	0x19
	.4byte	0x1b49
	.byte	0x3c
	.4byte	0x204c
	.byte	0x34
	.4byte	0x203f
	.4byte	.LLST75
	.byte	0x29
	.4byte	.Ldebug_ranges0+0xf0
	.byte	0x3d
	.4byte	0x2059
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x38
	.4byte	0x2066
	.4byte	.LLST76
	.byte	0x2e
	.4byte	.LVL231
	.4byte	0x29af
	.4byte	0x1b38
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x37
	.byte	0
	.byte	0x2a
	.4byte	.LVL233
	.4byte	0x29af
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2e
	.4byte	.LVL206
	.4byte	0x2a0f
	.4byte	0x1b63
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x2b
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x2e
	.4byte	.LVL218
	.4byte	0x29af
	.4byte	0x1b76
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0x2a
	.4byte	.LVL236
	.4byte	0x2a0f
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x2b
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x31
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x3dc
	.byte	0xa
	.4byte	0xd7
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.byte	0x1
	.byte	0x9c
	.4byte	0x1bba
	.byte	0x30
	.string	"bus"
	.byte	0x1
	.2byte	0x3dc
	.byte	0x31
	.4byte	0xae6
	.4byte	.LLST60
	.byte	0
	.byte	0x31
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x3a9
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.byte	0x1
	.byte	0x9c
	.4byte	0x1c7e
	.byte	0x30
	.string	"bus"
	.byte	0x1
	.2byte	0x3a9
	.byte	0x24
	.4byte	0xae6
	.4byte	.LLST55
	.byte	0x27
	.string	"qh"
	.byte	0x1
	.2byte	0x3ab
	.byte	0x18
	.4byte	0x10b9
	.4byte	.LLST56
	.byte	0x32
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x3ad
	.byte	0x17
	.4byte	0xf4
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x26
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x3ae
	.byte	0xe
	.4byte	0xe8
	.4byte	.LLST57
	.byte	0x28
	.4byte	.LBB45
	.4byte	.LBE45-.LBB45
	.4byte	0x1c36
	.byte	0x26
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x3c1
	.byte	0x16
	.4byte	0xc1
	.4byte	.LLST59
	.byte	0
	.byte	0x2c
	.4byte	.Ldebug_ranges0+0xa8
	.4byte	0x1c5a
	.byte	0x26
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x3cf
	.byte	0x12
	.4byte	0xc1
	.4byte	.LLST58
	.byte	0x2d
	.4byte	.LVL185
	.4byte	0x2a1b
	.byte	0
	.byte	0x2e
	.4byte	.LVL186
	.4byte	0x1fdb
	.4byte	0x1c6e
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x2a
	.4byte	.LVL189
	.4byte	0x29af
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x31
	.4byte	.LASF221
	.byte	0x1
	.2byte	0x303
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.byte	0x1
	.byte	0x9c
	.4byte	0x1fd5
	.byte	0x30
	.string	"bus"
	.byte	0x1
	.2byte	0x303
	.byte	0x22
	.4byte	0xae6
	.4byte	.LLST49
	.byte	0x27
	.string	"qh"
	.byte	0x1
	.2byte	0x305
	.byte	0x18
	.4byte	0x10b9
	.4byte	.LLST50
	.byte	0x3e
	.string	"qtd"
	.byte	0x1
	.2byte	0x306
	.byte	0x19
	.4byte	0x1fd5
	.byte	0x32
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x308
	.byte	0x17
	.4byte	0xf4
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x26
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x309
	.byte	0xe
	.4byte	0xe8
	.4byte	.LLST51
	.byte	0x3f
	.4byte	0x1cfb
	.byte	0x3a
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x30f
	.byte	0x12
	.4byte	0xc1
	.byte	0
	.byte	0x3f
	.4byte	0x1d0e
	.byte	0x3a
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x317
	.byte	0x12
	.4byte	0xc1
	.byte	0
	.byte	0x2c
	.4byte	.Ldebug_ranges0+0x68
	.4byte	0x1d3a
	.byte	0x26
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x31f
	.byte	0x12
	.4byte	0xc1
	.4byte	.LLST52
	.byte	0x2a
	.4byte	.LVL136
	.4byte	0x2a27
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x4c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x2c
	.4byte	.Ldebug_ranges0+0x88
	.4byte	0x1d53
	.byte	0x27
	.string	"i"
	.byte	0x1
	.2byte	0x336
	.byte	0x13
	.4byte	0xe8
	.4byte	.LLST53
	.byte	0
	.byte	0x28
	.4byte	.LBB41
	.4byte	.LBE41-.LBB41
	.4byte	0x1d72
	.byte	0x26
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x38a
	.byte	0x16
	.4byte	0xc1
	.4byte	.LLST54
	.byte	0
	.byte	0x2e
	.4byte	.LVL132
	.4byte	0x2a33
	.4byte	0x1d8c
	.byte	0x2b
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x4c
	.byte	0x6
	.byte	0x2b
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0x2e
	.4byte	.LVL133
	.4byte	0x2a33
	.4byte	0x1da7
	.byte	0x2b
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x4c
	.byte	0x6
	.byte	0x2b
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0
	.byte	0x2e
	.4byte	.LVL134
	.4byte	0x2a33
	.4byte	0x1dc3
	.byte	0x2b
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x4c
	.byte	0x6
	.byte	0x2b
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x780
	.byte	0
	.byte	0x2e
	.4byte	.LVL139
	.4byte	0x2a33
	.4byte	0x1dde
	.byte	0x2b
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x4c
	.byte	0x6
	.byte	0x2b
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x2e
	.4byte	.LVL140
	.4byte	0x2a33
	.4byte	0x1dfa
	.byte	0x2b
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x4c
	.byte	0x6
	.byte	0x2b
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0
	.byte	0x2e
	.4byte	.LVL141
	.4byte	0x2a33
	.4byte	0x1e15
	.byte	0x2b
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x4c
	.byte	0x6
	.byte	0x2b
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x2e
	.4byte	.LVL145
	.4byte	0x2011
	.4byte	0x1e29
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x2e
	.4byte	.LVL146
	.4byte	0x29eb
	.4byte	0x1e40
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x2e
	.4byte	.LVL147
	.4byte	0x29eb
	.4byte	0x1e57
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0x2e
	.4byte	.LVL148
	.4byte	0x29eb
	.4byte	0x1e6e
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x2e
	.4byte	.LVL149
	.4byte	0x29eb
	.4byte	0x1e85
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x2e
	.4byte	.LVL150
	.4byte	0x29eb
	.4byte	0x1e9c
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x2e
	.4byte	.LVL151
	.4byte	0x29eb
	.4byte	0x1eb3
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x2e
	.4byte	.LVL152
	.4byte	0x29eb
	.4byte	0x1eca
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x2e
	.4byte	.LVL153
	.4byte	0x29eb
	.4byte	0x1ee1
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0x2e
	.4byte	.LVL154
	.4byte	0x29eb
	.4byte	0x1ef8
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x2e
	.4byte	.LVL155
	.4byte	0x29eb
	.4byte	0x1f0f
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x2e
	.4byte	.LVL156
	.4byte	0x29eb
	.4byte	0x1f26
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x2e
	.4byte	.LVL157
	.4byte	0x29eb
	.4byte	0x1f3d
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x2e
	.4byte	.LVL158
	.4byte	0x29af
	.4byte	0x1f50
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x2e
	.4byte	.LVL159
	.4byte	0x1ff6
	.4byte	0x1f64
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x2e
	.4byte	.LVL164
	.4byte	0x29eb
	.4byte	0x1f7b
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.byte	0x2e
	.4byte	.LVL165
	.4byte	0x29af
	.4byte	0x1f8e
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x2e
	.4byte	.LVL168
	.4byte	0x29af
	.4byte	0x1fa1
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x2e
	.4byte	.LVL175
	.4byte	0x29eb
	.4byte	0x1fb8
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x2d
	.4byte	.LVL176
	.4byte	0x29eb
	.byte	0x2a
	.4byte	.LVL177
	.4byte	0x29eb
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xd6e
	.byte	0x40
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x2fe
	.byte	0x1c
	.4byte	0x1ff6
	.byte	0x41
	.string	"bus"
	.byte	0x1
	.2byte	0x2fe
	.byte	0x45
	.4byte	0xae6
	.byte	0
	.byte	0x40
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x2f9
	.byte	0x1c
	.4byte	0x2011
	.byte	0x41
	.string	"bus"
	.byte	0x1
	.2byte	0x2f9
	.byte	0x44
	.4byte	0xae6
	.byte	0
	.byte	0x42
	.4byte	.LASF283
	.byte	0x1
	.2byte	0x2f4
	.byte	0x1c
	.byte	0x1
	.4byte	0x202d
	.byte	0x41
	.string	"bus"
	.byte	0x1
	.2byte	0x2f4
	.byte	0x43
	.4byte	0xae6
	.byte	0
	.byte	0x43
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x2d6
	.byte	0xc
	.4byte	0x25
	.byte	0x1
	.4byte	0x2074
	.byte	0x41
	.string	"bus"
	.byte	0x1
	.2byte	0x2d6
	.byte	0x2d
	.4byte	0xae6
	.byte	0x44
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x2d6
	.byte	0x40
	.4byte	0xcd
	.byte	0x3a
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x2d8
	.byte	0x17
	.4byte	0xf4
	.byte	0x3a
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x2d9
	.byte	0xe
	.4byte	0xe8
	.byte	0
	.byte	0x45
	.4byte	.LASF226
	.byte	0x1
	.2byte	0x2cf
	.byte	0xd
	.byte	0x1
	.4byte	0x20a9
	.byte	0x41
	.string	"bus"
	.byte	0x1
	.2byte	0x2cf
	.byte	0x2b
	.4byte	0xae6
	.byte	0x44
	.4byte	.LASF224
	.byte	0x1
	.2byte	0x2cf
	.byte	0x43
	.4byte	0x10b9
	.byte	0x41
	.string	"qh"
	.byte	0x1
	.2byte	0x2cf
	.byte	0x5d
	.4byte	0x10b9
	.byte	0
	.byte	0x2f
	.4byte	.LASF225
	.byte	0x1
	.2byte	0x290
	.byte	0xd
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x1
	.byte	0x9c
	.4byte	0x2190
	.byte	0x30
	.string	"bus"
	.byte	0x1
	.2byte	0x290
	.byte	0x2c
	.4byte	0xae6
	.4byte	.LLST35
	.byte	0x25
	.4byte	.LASF224
	.byte	0x1
	.2byte	0x290
	.byte	0x44
	.4byte	0x10b9
	.4byte	.LLST36
	.byte	0x30
	.string	"qh"
	.byte	0x1
	.2byte	0x290
	.byte	0x5e
	.4byte	0x10b9
	.4byte	.LLST37
	.byte	0x27
	.string	"urb"
	.byte	0x1
	.2byte	0x292
	.byte	0x16
	.4byte	0xdbd
	.4byte	.LLST38
	.byte	0x27
	.string	"qtd"
	.byte	0x1
	.2byte	0x293
	.byte	0x19
	.4byte	0x1fd5
	.4byte	.LLST39
	.byte	0x26
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x294
	.byte	0xe
	.4byte	0xe8
	.4byte	.LLST40
	.byte	0x35
	.4byte	0x2190
	.4byte	.LBB31
	.4byte	.Ldebug_ranges0+0x50
	.byte	0x1
	.2byte	0x2c0
	.byte	0x5
	.4byte	0x217c
	.byte	0x34
	.4byte	0x219e
	.4byte	.LLST41
	.byte	0x34
	.4byte	0x21b8
	.4byte	.LLST42
	.byte	0x34
	.4byte	0x21ab
	.4byte	.LLST43
	.byte	0x29
	.4byte	.Ldebug_ranges0+0x50
	.byte	0x38
	.4byte	0x21c4
	.4byte	.LLST44
	.byte	0x2a
	.4byte	.LVL101
	.4byte	0x2618
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x2b
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x46
	.4byte	.LVL107
	.4byte	0x2938
	.byte	0x36
	.4byte	0x21e0
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x45
	.4byte	.LASF227
	.byte	0x1
	.2byte	0x27f
	.byte	0xd
	.byte	0x1
	.4byte	0x21d2
	.byte	0x41
	.string	"bus"
	.byte	0x1
	.2byte	0x27f
	.byte	0x30
	.4byte	0xae6
	.byte	0x44
	.4byte	.LASF224
	.byte	0x1
	.2byte	0x27f
	.byte	0x48
	.4byte	0x10b9
	.byte	0x41
	.string	"qh"
	.byte	0x1
	.2byte	0x27f
	.byte	0x62
	.4byte	0x10b9
	.byte	0x3e
	.string	"qtd"
	.byte	0x1
	.2byte	0x281
	.byte	0x19
	.4byte	0x1fd5
	.byte	0
	.byte	0x45
	.4byte	.LASF228
	.byte	0x1
	.2byte	0x266
	.byte	0xd
	.byte	0x1
	.4byte	0x2207
	.byte	0x41
	.string	"bus"
	.byte	0x1
	.2byte	0x266
	.byte	0x2e
	.4byte	0xae6
	.byte	0x41
	.string	"urb"
	.byte	0x1
	.2byte	0x266
	.byte	0x44
	.4byte	0xdbd
	.byte	0x3e
	.string	"qh"
	.byte	0x1
	.2byte	0x268
	.byte	0x18
	.4byte	0x10b9
	.byte	0
	.byte	0x43
	.4byte	.LASF230
	.byte	0x1
	.2byte	0x206
	.byte	0x1b
	.4byte	0x10b9
	.byte	0x1
	.4byte	0x22a8
	.byte	0x41
	.string	"bus"
	.byte	0x1
	.2byte	0x206
	.byte	0x3f
	.4byte	0xae6
	.byte	0x41
	.string	"urb"
	.byte	0x1
	.2byte	0x206
	.byte	0x55
	.4byte	0xdbd
	.byte	0x44
	.4byte	.LASF231
	.byte	0x1
	.2byte	0x206
	.byte	0x63
	.4byte	0x43e
	.byte	0x44
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x206
	.byte	0x74
	.4byte	0xe8
	.byte	0x3e
	.string	"qh"
	.byte	0x1
	.2byte	0x208
	.byte	0x18
	.4byte	0x10b9
	.byte	0x3e
	.string	"qtd"
	.byte	0x1
	.2byte	0x209
	.byte	0x19
	.4byte	0x1fd5
	.byte	0x3a
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x20a
	.byte	0x19
	.4byte	0x1fd5
	.byte	0x3a
	.4byte	.LASF233
	.byte	0x1
	.2byte	0x20b
	.byte	0x19
	.4byte	0x1fd5
	.byte	0x3a
	.4byte	.LASF234
	.byte	0x1
	.2byte	0x20c
	.byte	0xe
	.4byte	0xe8
	.byte	0x3a
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x20d
	.byte	0xe
	.4byte	0xe8
	.byte	0x3a
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x20e
	.byte	0xc
	.4byte	0x2c
	.byte	0
	.byte	0x43
	.4byte	.LASF235
	.byte	0x1
	.2byte	0x1a6
	.byte	0x1b
	.4byte	0x10b9
	.byte	0x1
	.4byte	0x2349
	.byte	0x41
	.string	"bus"
	.byte	0x1
	.2byte	0x1a6
	.byte	0x3f
	.4byte	0xae6
	.byte	0x41
	.string	"urb"
	.byte	0x1
	.2byte	0x1a6
	.byte	0x55
	.4byte	0xdbd
	.byte	0x44
	.4byte	.LASF231
	.byte	0x1
	.2byte	0x1a6
	.byte	0x63
	.4byte	0x43e
	.byte	0x44
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x1a6
	.byte	0x74
	.4byte	0xe8
	.byte	0x3e
	.string	"qh"
	.byte	0x1
	.2byte	0x1a8
	.byte	0x18
	.4byte	0x10b9
	.byte	0x3e
	.string	"qtd"
	.byte	0x1
	.2byte	0x1a9
	.byte	0x19
	.4byte	0x1fd5
	.byte	0x3a
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x1aa
	.byte	0x19
	.4byte	0x1fd5
	.byte	0x3a
	.4byte	.LASF233
	.byte	0x1
	.2byte	0x1ab
	.byte	0x19
	.4byte	0x1fd5
	.byte	0x3a
	.4byte	.LASF234
	.byte	0x1
	.2byte	0x1ac
	.byte	0xe
	.4byte	0xe8
	.byte	0x3a
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x1ad
	.byte	0xe
	.4byte	0xe8
	.byte	0x3a
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x1ae
	.byte	0xc
	.4byte	0x2c
	.byte	0
	.byte	0x43
	.4byte	.LASF236
	.byte	0x1
	.2byte	0x144
	.byte	0x1b
	.4byte	0x10b9
	.byte	0x1
	.4byte	0x23ea
	.byte	0x41
	.string	"bus"
	.byte	0x1
	.2byte	0x144
	.byte	0x42
	.4byte	0xae6
	.byte	0x41
	.string	"urb"
	.byte	0x1
	.2byte	0x144
	.byte	0x58
	.4byte	0xdbd
	.byte	0x44
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x144
	.byte	0x76
	.4byte	0x669
	.byte	0x44
	.4byte	.LASF231
	.byte	0x1
	.2byte	0x144
	.byte	0x86
	.4byte	0x43e
	.byte	0x44
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x144
	.byte	0x97
	.4byte	0xe8
	.byte	0x3e
	.string	"qh"
	.byte	0x1
	.2byte	0x146
	.byte	0x18
	.4byte	0x10b9
	.byte	0x3a
	.4byte	.LASF237
	.byte	0x1
	.2byte	0x147
	.byte	0x19
	.4byte	0x1fd5
	.byte	0x3a
	.4byte	.LASF238
	.byte	0x1
	.2byte	0x148
	.byte	0x19
	.4byte	0x1fd5
	.byte	0x3a
	.4byte	.LASF239
	.byte	0x1
	.2byte	0x149
	.byte	0x19
	.4byte	0x1fd5
	.byte	0x3a
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x14a
	.byte	0xe
	.4byte	0xe8
	.byte	0x3a
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x14b
	.byte	0xc
	.4byte	0x2c
	.byte	0
	.byte	0x2f
	.4byte	.LASF240
	.byte	0x1
	.2byte	0x12e
	.byte	0xd
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x1
	.byte	0x9c
	.4byte	0x2493
	.byte	0x47
	.string	"qtd"
	.byte	0x1
	.2byte	0x12e
	.byte	0x2f
	.4byte	0x1fd5
	.byte	0x1
	.byte	0x5a
	.byte	0x48
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x12e
	.byte	0x3d
	.4byte	0xe8
	.byte	0x1
	.byte	0x5b
	.byte	0x48
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x12e
	.byte	0x4d
	.4byte	0x2c
	.byte	0x1
	.byte	0x5c
	.byte	0x25
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x12e
	.byte	0x5e
	.4byte	0xe8
	.4byte	.LLST14
	.byte	0x49
	.4byte	0x2493
	.4byte	.LBB14
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x13f
	.byte	0x5
	.byte	0x34
	.4byte	0x24bb
	.4byte	.LLST15
	.byte	0x34
	.4byte	0x24ae
	.4byte	.LLST16
	.byte	0x34
	.4byte	0x24a1
	.4byte	.LLST17
	.byte	0x29
	.4byte	.Ldebug_ranges0+0
	.byte	0x38
	.4byte	0x24c8
	.4byte	.LLST18
	.byte	0x4a
	.4byte	0x24d5
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.byte	0x38
	.4byte	0x24d6
	.4byte	.LLST19
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x45
	.4byte	.LASF241
	.byte	0x1
	.2byte	0x114
	.byte	0xd
	.byte	0x1
	.4byte	0x24e3
	.byte	0x41
	.string	"qtd"
	.byte	0x1
	.2byte	0x114
	.byte	0x33
	.4byte	0x1fd5
	.byte	0x44
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x114
	.byte	0x41
	.4byte	0xe8
	.byte	0x44
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x114
	.byte	0x51
	.4byte	0x2c
	.byte	0x3a
	.4byte	.LASF242
	.byte	0x1
	.2byte	0x116
	.byte	0xe
	.4byte	0xe8
	.byte	0x4b
	.byte	0x3e
	.string	"i"
	.byte	0x1
	.2byte	0x121
	.byte	0x12
	.4byte	0x25
	.byte	0
	.byte	0
	.byte	0x4c
	.4byte	.LASF243
	.byte	0x1
	.byte	0xb6
	.byte	0xd
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x1
	.byte	0x9c
	.4byte	0x25e2
	.byte	0x4d
	.string	"qh"
	.byte	0x1
	.byte	0xb6
	.byte	0x2d
	.4byte	0x10b9
	.byte	0x1
	.byte	0x5a
	.byte	0x4e
	.4byte	.LASF84
	.byte	0x1
	.byte	0xb7
	.byte	0x22
	.4byte	0xc1
	.4byte	.LLST2
	.byte	0x4e
	.4byte	.LASF244
	.byte	0x1
	.byte	0xb8
	.byte	0x22
	.4byte	0xc1
	.4byte	.LLST3
	.byte	0x4e
	.4byte	.LASF245
	.byte	0x1
	.byte	0xb9
	.byte	0x22
	.4byte	0xc1
	.4byte	.LLST4
	.byte	0x4e
	.4byte	.LASF246
	.byte	0x1
	.byte	0xba
	.byte	0x23
	.4byte	0xd7
	.4byte	.LLST5
	.byte	0x4e
	.4byte	.LASF247
	.byte	0x1
	.byte	0xbb
	.byte	0x22
	.4byte	0xc1
	.4byte	.LLST6
	.byte	0x4e
	.4byte	.LASF248
	.byte	0x1
	.byte	0xbc
	.byte	0x22
	.4byte	0xc1
	.4byte	.LLST7
	.byte	0x4e
	.4byte	.LASF85
	.byte	0x1
	.byte	0xbd
	.byte	0x22
	.4byte	0xc1
	.4byte	.LLST8
	.byte	0x4f
	.4byte	.LASF249
	.byte	0x1
	.byte	0xbe
	.byte	0x22
	.4byte	0xc1
	.byte	0x2
	.byte	0x91
	.byte	0
	.byte	0x4f
	.4byte	.LASF250
	.byte	0x1
	.byte	0xbf
	.byte	0x22
	.4byte	0xc1
	.byte	0x2
	.byte	0x91
	.byte	0x4
	.byte	0x50
	.4byte	.LASF184
	.byte	0x1
	.byte	0xc1
	.byte	0xe
	.4byte	0xe8
	.4byte	.LLST9
	.byte	0x50
	.4byte	.LASF185
	.byte	0x1
	.byte	0xc2
	.byte	0xe
	.4byte	0xe8
	.4byte	.LLST10
	.byte	0x51
	.4byte	0x25e2
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.byte	0x1
	.2byte	0x108
	.byte	0x1a
	.byte	0x34
	.4byte	0x25f3
	.4byte	.LLST11
	.byte	0x38
	.4byte	0x25ff
	.4byte	.LLST12
	.byte	0x38
	.4byte	0x260b
	.4byte	.LLST13
	.byte	0
	.byte	0
	.byte	0x52
	.4byte	.LASF251
	.byte	0x1
	.byte	0xa0
	.byte	0xc
	.4byte	0x25
	.byte	0x1
	.4byte	0x2618
	.byte	0x53
	.4byte	.LASF252
	.byte	0x1
	.byte	0xa0
	.byte	0x24
	.4byte	0x25
	.byte	0x54
	.4byte	.LASF253
	.byte	0x1
	.byte	0xa2
	.byte	0x9
	.4byte	0x25
	.byte	0x54
	.4byte	.LASF73
	.byte	0x1
	.byte	0xa2
	.byte	0x10
	.4byte	0x25
	.byte	0
	.byte	0x4c
	.4byte	.LASF254
	.byte	0x1
	.byte	0x90
	.byte	0x14
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x1
	.byte	0x9c
	.4byte	0x265b
	.byte	0x4e
	.4byte	.LASF255
	.byte	0x1
	.byte	0x90
	.byte	0x36
	.4byte	0x10b9
	.4byte	.LLST0
	.byte	0x4d
	.string	"n"
	.byte	0x1
	.byte	0x90
	.byte	0x4f
	.4byte	0x10b9
	.byte	0x1
	.byte	0x5b
	.byte	0x55
	.string	"tmp"
	.byte	0x1
	.byte	0x92
	.byte	0x18
	.4byte	0x10b9
	.4byte	.LLST1
	.byte	0
	.byte	0x56
	.4byte	.LASF256
	.byte	0x1
	.byte	0x83
	.byte	0x14
	.byte	0x3
	.4byte	0x267f
	.byte	0x53
	.4byte	.LASF255
	.byte	0x1
	.byte	0x83
	.byte	0x38
	.4byte	0x10b9
	.byte	0x57
	.string	"n"
	.byte	0x1
	.byte	0x83
	.byte	0x51
	.4byte	0x10b9
	.byte	0
	.byte	0x56
	.4byte	.LASF257
	.byte	0x1
	.byte	0x60
	.byte	0xd
	.byte	0x1
	.4byte	0x26bc
	.byte	0x57
	.string	"bus"
	.byte	0x1
	.byte	0x60
	.byte	0x2b
	.4byte	0xae6
	.byte	0x57
	.string	"qh"
	.byte	0x1
	.byte	0x60
	.byte	0x43
	.4byte	0x10b9
	.byte	0x58
	.string	"qtd"
	.byte	0x1
	.byte	0x62
	.byte	0x19
	.4byte	0x1fd5
	.byte	0x54
	.4byte	.LASF212
	.byte	0x1
	.byte	0x63
	.byte	0xc
	.4byte	0x2c
	.byte	0
	.byte	0x59
	.4byte	.LASF259
	.byte	0x1
	.byte	0x45
	.byte	0x1b
	.4byte	0x10b9
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x1
	.byte	0x9c
	.4byte	0x2754
	.byte	0x5a
	.string	"bus"
	.byte	0x1
	.byte	0x45
	.byte	0x3a
	.4byte	0xae6
	.4byte	.LLST20
	.byte	0x55
	.string	"qh"
	.byte	0x1
	.byte	0x47
	.byte	0x18
	.4byte	0x10b9
	.4byte	.LLST21
	.byte	0x50
	.4byte	.LASF212
	.byte	0x1
	.byte	0x48
	.byte	0xc
	.4byte	0x2c
	.4byte	.LLST22
	.byte	0x2c
	.4byte	.Ldebug_ranges0+0x20
	.4byte	0x2741
	.byte	0x55
	.string	"i"
	.byte	0x1
	.byte	0x4b
	.byte	0x13
	.4byte	0xe8
	.4byte	.LLST23
	.byte	0x2d
	.4byte	.LVL55
	.4byte	0x29bb
	.byte	0x2a
	.4byte	.LVL56
	.4byte	0x2a33
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x2b
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x2b
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x2d
	.4byte	.LVL49
	.4byte	0x29c7
	.byte	0x2d
	.4byte	.LVL59
	.4byte	0x29bb
	.byte	0
	.byte	0x56
	.4byte	.LASF258
	.byte	0x1
	.byte	0x39
	.byte	0xd
	.byte	0x1
	.4byte	0x2786
	.byte	0x57
	.string	"bus"
	.byte	0x1
	.byte	0x39
	.byte	0x2c
	.4byte	0xae6
	.byte	0x57
	.string	"qtd"
	.byte	0x1
	.byte	0x39
	.byte	0x45
	.4byte	0x1fd5
	.byte	0x54
	.4byte	.LASF212
	.byte	0x1
	.byte	0x3b
	.byte	0xc
	.4byte	0x2c
	.byte	0
	.byte	0x59
	.4byte	.LASF260
	.byte	0x1
	.byte	0x1e
	.byte	0x1c
	.4byte	0x1fd5
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x1
	.byte	0x9c
	.4byte	0x281f
	.byte	0x5a
	.string	"bus"
	.byte	0x1
	.byte	0x1e
	.byte	0x3c
	.4byte	0xae6
	.4byte	.LLST24
	.byte	0x55
	.string	"qtd"
	.byte	0x1
	.byte	0x20
	.byte	0x19
	.4byte	0x1fd5
	.4byte	.LLST25
	.byte	0x50
	.4byte	.LASF212
	.byte	0x1
	.byte	0x21
	.byte	0xc
	.4byte	0x2c
	.4byte	.LLST26
	.byte	0x2c
	.4byte	.Ldebug_ranges0+0x38
	.4byte	0x280c
	.byte	0x55
	.string	"i"
	.byte	0x1
	.byte	0x24
	.byte	0x13
	.4byte	0xe8
	.4byte	.LLST27
	.byte	0x2d
	.4byte	.LVL65
	.4byte	0x29bb
	.byte	0x2a
	.4byte	.LVL66
	.4byte	0x2a33
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x2b
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x2b
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0x2d
	.4byte	.LVL61
	.4byte	0x29c7
	.byte	0x2d
	.4byte	.LVL69
	.4byte	0x29bb
	.byte	0
	.byte	0x52
	.4byte	.LASF261
	.byte	0x2
	.byte	0x16
	.byte	0x15
	.4byte	0xa7
	.byte	0x3
	.4byte	0x287d
	.byte	0x57
	.string	"s1"
	.byte	0x2
	.byte	0x16
	.byte	0x26
	.4byte	0xa7
	.byte	0x57
	.string	"s2"
	.byte	0x2
	.byte	0x16
	.byte	0x36
	.4byte	0x10a
	.byte	0x57
	.string	"n"
	.byte	0x2
	.byte	0x16
	.byte	0x41
	.4byte	0x2c
	.byte	0x58
	.string	"b1"
	.byte	0x2
	.byte	0x18
	.byte	0xb
	.4byte	0xa9
	.byte	0x58
	.string	"b2"
	.byte	0x2
	.byte	0x19
	.byte	0x11
	.4byte	0xbb
	.byte	0x58
	.string	"w1"
	.byte	0x2
	.byte	0x1a
	.byte	0xf
	.4byte	0x287d
	.byte	0x58
	.string	"w2"
	.byte	0x2
	.byte	0x1b
	.byte	0x15
	.4byte	0x2883
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xe8
	.byte	0x6
	.byte	0x4
	.4byte	0xf9
	.byte	0x56
	.4byte	.LASF262
	.byte	0x2
	.byte	0xe
	.byte	0x14
	.byte	0x3
	.4byte	0x28ad
	.byte	0x53
	.4byte	.LASF263
	.byte	0x2
	.byte	0xe
	.byte	0x26
	.4byte	0xa9
	.byte	0x57
	.string	"w"
	.byte	0x2
	.byte	0xe
	.byte	0x35
	.4byte	0xe8
	.byte	0
	.byte	0x5b
	.4byte	0x267f
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.byte	0x1
	.byte	0x9c
	.4byte	0x2938
	.byte	0x34
	.4byte	0x2698
	.4byte	.LLST28
	.byte	0x38
	.4byte	0x26a3
	.4byte	.LLST29
	.byte	0x38
	.4byte	0x26af
	.4byte	.LLST30
	.byte	0x5c
	.4byte	0x268c
	.byte	0x6
	.byte	0xfa
	.4byte	0x268c
	.byte	0x9f
	.byte	0x5d
	.4byte	0x2754
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.byte	0x1
	.byte	0x69
	.byte	0x9
	.4byte	0x2925
	.byte	0x3c
	.4byte	0x2761
	.byte	0x34
	.4byte	0x276d
	.4byte	.LLST31
	.byte	0x38
	.4byte	0x2779
	.4byte	.LLST32
	.byte	0x2d
	.4byte	.LVL78
	.4byte	0x29c7
	.byte	0x2d
	.4byte	.LVL79
	.4byte	0x29bb
	.byte	0
	.byte	0x2d
	.4byte	.LVL71
	.4byte	0x29c7
	.byte	0x5e
	.4byte	.LVL77
	.4byte	0x29bb
	.byte	0
	.byte	0x5f
	.4byte	0x21d2
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.byte	0x1
	.byte	0x9c
	.4byte	0x297c
	.byte	0x34
	.4byte	0x21ed
	.4byte	.LLST33
	.byte	0x38
	.4byte	0x21fa
	.4byte	.LLST34
	.byte	0x5c
	.4byte	0x21e0
	.byte	0x6
	.byte	0xfa
	.4byte	0x21e0
	.byte	0x9f
	.byte	0x2d
	.4byte	.LVL84
	.4byte	0x29d3
	.byte	0x2d
	.4byte	.LVL87
	.4byte	0x28ad
	.byte	0
	.byte	0x5b
	.4byte	0x2011
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x1
	.byte	0x9c
	.4byte	0x2997
	.byte	0x5c
	.4byte	0x201f
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x60
	.4byte	.LASF264
	.4byte	.LASF264
	.byte	0xe
	.byte	0x14
	.byte	0x6
	.byte	0x60
	.4byte	.LASF265
	.4byte	.LASF265
	.byte	0xd
	.byte	0x64
	.byte	0x6
	.byte	0x60
	.4byte	.LASF266
	.4byte	.LASF266
	.byte	0xa
	.byte	0x47
	.byte	0x6
	.byte	0x60
	.4byte	.LASF267
	.4byte	.LASF267
	.byte	0xa
	.byte	0x45
	.byte	0x6
	.byte	0x60
	.4byte	.LASF268
	.4byte	.LASF268
	.byte	0xa
	.byte	0x44
	.byte	0x8
	.byte	0x60
	.4byte	.LASF269
	.4byte	.LASF269
	.byte	0xa
	.byte	0x32
	.byte	0x5
	.byte	0x60
	.4byte	.LASF270
	.4byte	.LASF270
	.byte	0xd
	.byte	0x63
	.byte	0x6
	.byte	0x60
	.4byte	.LASF271
	.4byte	.LASF271
	.byte	0xf
	.byte	0xc8
	.byte	0x5
	.byte	0x60
	.4byte	.LASF272
	.4byte	.LASF272
	.byte	0xa
	.byte	0x31
	.byte	0x5
	.byte	0x60
	.4byte	.LASF273
	.4byte	.LASF273
	.byte	0xd
	.byte	0x62
	.byte	0x5
	.byte	0x60
	.4byte	.LASF274
	.4byte	.LASF274
	.byte	0xd
	.byte	0x60
	.byte	0x10
	.byte	0x60
	.4byte	.LASF275
	.4byte	.LASF275
	.byte	0xa
	.byte	0x30
	.byte	0x6
	.byte	0x60
	.4byte	.LASF276
	.4byte	.LASF276
	.byte	0xa
	.byte	0x2f
	.byte	0x10
	.byte	0x60
	.4byte	.LASF277
	.4byte	.LASF277
	.byte	0x10
	.byte	0x21
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x35
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x26
	.byte	0
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x88,0x1
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0xd
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
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xc
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
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x14
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
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x88,0x1
	.byte	0xb
	.byte	0x38
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x37
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
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
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0x88,0x1
	.byte	0xb
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x88,0x1
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x1d
	.byte	0x21
	.byte	0
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
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x1f
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x20
	.byte	0xd
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
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x22
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
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x24
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
	.byte	0x26
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
	.byte	0x27
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
	.byte	0x28
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
	.byte	0x29
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2a
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2b
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x2c
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2d
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2e
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
	.byte	0x2f
	.byte	0x2e
	.byte	0x1
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
	.byte	0x31
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
	.byte	0x32
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
	.byte	0x33
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x34
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x35
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
	.byte	0x36
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x37
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
	.byte	0x38
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x39
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x3a
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
	.byte	0
	.byte	0
	.byte	0x3b
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
	.byte	0
	.byte	0
	.byte	0x3c
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x3d
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x3e
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
	.byte	0
	.byte	0
	.byte	0x3f
	.byte	0xb
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x40
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x41
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
	.byte	0
	.byte	0
	.byte	0x42
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x43
	.byte	0x2e
	.byte	0x1
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x44
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
	.byte	0
	.byte	0
	.byte	0x45
	.byte	0x2e
	.byte	0x1
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x46
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
	.byte	0x47
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x48
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x49
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
	.byte	0
	.byte	0
	.byte	0x4a
	.byte	0xb
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x4b
	.byte	0xb
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x4c
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
	.byte	0x4d
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
	.byte	0x4e
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
	.byte	0x4f
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
	.byte	0x50
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
	.byte	0x51
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
	.byte	0x52
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
	.byte	0x53
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
	.byte	0x54
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
	.byte	0x55
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
	.byte	0x56
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
	.byte	0x57
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
	.byte	0x58
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
	.byte	0x59
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
	.byte	0x5a
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
	.byte	0x5b
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
	.byte	0x5c
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x5d
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
	.byte	0x5e
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x5f
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x60
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
.LLST131:
	.4byte	.LVL430
	.4byte	.LVL433
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL433
	.4byte	.LFE58
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST132:
	.4byte	.LVL432
	.4byte	.LVL441
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL443
	.4byte	.LVL450
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST133:
	.4byte	.LVL431
	.4byte	.LVL440
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL440
	.4byte	.LVL442
	.2byte	0xa
	.byte	0x84
	.byte	0
	.byte	0xa
	.2byte	0x5070
	.byte	0x1e
	.byte	0x83
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL443
	.4byte	.LVL444
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL444
	.4byte	.LVL445
	.2byte	0x9
	.byte	0x84
	.byte	0
	.byte	0x7e
	.byte	0
	.byte	0x1e
	.byte	0x83
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL445
	.4byte	.LVL451
	.2byte	0xa
	.byte	0x84
	.byte	0
	.byte	0xa
	.2byte	0x5070
	.byte	0x1e
	.byte	0x83
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL451
	.4byte	.LVL452
	.2byte	0xa
	.byte	0x7f
	.byte	0xf0,0
	.byte	0x84
	.byte	0
	.byte	0x1e
	.byte	0x83
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL452
	.4byte	.LVL453
	.2byte	0x9
	.byte	0x84
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x1e
	.byte	0x83
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST134:
	.4byte	.LVL445
	.4byte	.LVL447
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL447
	.4byte	.LVL449
	.2byte	0x3
	.byte	0x79
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL449
	.4byte	.LVL450
	.2byte	0x3
	.byte	0x79
	.byte	0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST135:
	.4byte	.LVL446
	.4byte	.LVL448
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST136:
	.4byte	.LVL455
	.4byte	.LVL458
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL458
	.4byte	.LVL459
	.2byte	0x3
	.byte	0x78
	.byte	0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST137:
	.4byte	.LVL456
	.4byte	.LVL457
	.2byte	0x13
	.byte	0x78
	.byte	0
	.byte	0x8
	.byte	0x60
	.byte	0x1e
	.byte	0x7f
	.byte	0
	.byte	0xa
	.2byte	0x3c0
	.byte	0x1e
	.byte	0x22
	.byte	0x3
	.4byte	ehci_qh_pool
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL457
	.4byte	.LVL458-1
	.2byte	0x18
	.byte	0x78
	.byte	0
	.byte	0x8
	.byte	0x60
	.byte	0x1e
	.byte	0x83
	.byte	0xc
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0xa
	.2byte	0x3c0
	.byte	0x1e
	.byte	0x22
	.byte	0x3
	.4byte	ehci_qh_pool
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL123
	.4byte	.LFE57
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL125
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL128
	.4byte	.LFE57
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL116
	.4byte	.LFE56
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL118
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL121
	.4byte	.LFE56
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL250
	.4byte	.LVL252-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL252-1
	.4byte	.LVL259
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL259
	.4byte	.LVL260
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL260
	.4byte	.LVL275
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL275
	.4byte	.LVL277
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL277
	.4byte	.LVL279
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL279
	.4byte	.LVL283
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL283
	.4byte	.LVL284
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL284
	.4byte	.LFE55
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL254
	.4byte	.LVL256
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL256
	.4byte	.LVL257
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL260
	.4byte	.LVL264
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL265
	.4byte	.LVL266
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL267
	.4byte	.LVL270
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL271
	.4byte	.LVL272
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL277
	.4byte	.LVL278-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LVL251
	.4byte	.LVL282
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL253
	.4byte	.LVL254
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL254
	.4byte	.LVL266
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL266
	.4byte	.LVL267
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL267
	.4byte	.LVL272
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL272
	.4byte	.LVL273
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL273
	.4byte	.LVL282
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL250
	.4byte	.LVL254
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL254
	.4byte	.LVL261
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL261
	.4byte	.LVL263
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL263
	.4byte	.LVL266
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL266
	.4byte	.LVL275
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL277
	.4byte	.LVL282
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL283
	.4byte	.LFE55
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LVL261
	.4byte	.LVL263
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST83:
	.4byte	.LVL261
	.4byte	.LVL262-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST84:
	.4byte	.LVL261
	.4byte	.LVL263
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST85:
	.4byte	.LVL268
	.4byte	.LVL269
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST86:
	.4byte	.LVL268
	.4byte	.LVL269-1
	.2byte	0x11
	.byte	0x78
	.byte	0xc
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x60
	.byte	0x1e
	.byte	0x3
	.4byte	g_periodic_qh_head
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST87:
	.4byte	.LVL268
	.4byte	.LVL269
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST88:
	.4byte	.LVL285
	.4byte	.LVL290-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL290-1
	.4byte	.LVL296
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL296
	.4byte	.LVL297
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL297
	.4byte	.LVL301
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL301
	.4byte	.LVL311
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL311
	.4byte	.LVL316
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL316
	.4byte	.LVL326
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL326
	.4byte	.LVL331
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL331
	.4byte	.LVL364
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL364
	.4byte	.LVL369
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL369
	.4byte	.LVL396
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL396
	.4byte	.LVL401
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL401
	.4byte	.LVL427
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL427
	.4byte	.LFE54
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST89:
	.4byte	.LVL285
	.4byte	.LVL296
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL297
	.4byte	.LVL346
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL346
	.4byte	.LVL352
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL352
	.4byte	.LVL423
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL423
	.4byte	.LVL427
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL427
	.4byte	.LVL429
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST90:
	.4byte	.LVL290
	.4byte	.LVL291-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST91:
	.4byte	.LVL285
	.4byte	.LVL296
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL297
	.4byte	.LVL347
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL347
	.4byte	.LVL349
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL349
	.4byte	.LVL350
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL350
	.4byte	.LVL352
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL352
	.4byte	.LVL422
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL422
	.4byte	.LVL424
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL424
	.4byte	.LVL427
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL427
	.4byte	.LVL429
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST92:
	.4byte	.LVL287
	.4byte	.LVL289
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL297
	.4byte	.LVL298
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL300
	.4byte	.LVL301
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST93:
	.4byte	.LVL286
	.4byte	.LVL288
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL288
	.4byte	.LVL290-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL297
	.4byte	.LVL301
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL428
	.4byte	.LFE54
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST94:
	.4byte	.LVL286
	.4byte	.LVL296
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL297
	.4byte	.LVL427
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL428
	.4byte	.LFE54
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST95:
	.4byte	.LVL292
	.4byte	.LVL295
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL301
	.4byte	.LVL341
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL352
	.4byte	.LVL353
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST96:
	.4byte	.LVL292
	.4byte	.LVL295
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL301
	.4byte	.LVL341
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL352
	.4byte	.LVL353
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST97:
	.4byte	.LVL292
	.4byte	.LVL295
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL301
	.4byte	.LVL341
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL352
	.4byte	.LVL353
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST98:
	.4byte	.LVL292
	.4byte	.LVL295
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL301
	.4byte	.LVL311
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL311
	.4byte	.LVL316
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL316
	.4byte	.LVL326
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL326
	.4byte	.LVL331
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL331
	.4byte	.LVL341
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL352
	.4byte	.LVL353
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST99:
	.4byte	.LVL292
	.4byte	.LVL295
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL301
	.4byte	.LVL341
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL352
	.4byte	.LVL353
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST100:
	.4byte	.LVL292
	.4byte	.LVL294
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL294
	.4byte	.LVL295
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL301
	.4byte	.LVL307
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL316
	.4byte	.LVL322
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL331
	.4byte	.LVL341
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL352
	.4byte	.LVL353
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST101:
	.4byte	.LVL292
	.4byte	.LVL295
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL301
	.4byte	.LVL303
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL303
	.4byte	.LVL304
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL304
	.4byte	.LVL340
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL352
	.4byte	.LVL353
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST102:
	.4byte	.LVL292
	.4byte	.LVL295
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL301
	.4byte	.LVL321
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL321
	.4byte	.LVL323
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL323
	.4byte	.LVL331
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL331
	.4byte	.LVL335-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL335-1
	.4byte	.LVL336
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL352
	.4byte	.LVL353
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST103:
	.4byte	.LVL292
	.4byte	.LVL295
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL301
	.4byte	.LVL306
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL306
	.4byte	.LVL308
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL308
	.4byte	.LVL316
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL316
	.4byte	.LVL317
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL317
	.4byte	.LVL341
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL352
	.4byte	.LVL353
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST104:
	.4byte	.LVL318
	.4byte	.LVL332
	.2byte	0x6
	.byte	0xc
	.4byte	0x80e80
	.byte	0x9f
	.4byte	.LVL332
	.4byte	.LVL333
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL333
	.4byte	.LVL334
	.2byte	0xa
	.byte	0x7d
	.byte	0
	.byte	0x11
	.byte	0x80,0x99,0x80,0x80,0x78
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL334
	.4byte	.LVL335-1
	.2byte	0x19
	.byte	0x7c
	.byte	0
	.byte	0x40
	.byte	0x24
	.byte	0x86
	.byte	0
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x30
	.byte	0x2d
	.byte	0x38
	.byte	0x24
	.byte	0x21
	.byte	0x11
	.byte	0x80,0x99,0x80,0x80,0x78
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL337
	.4byte	.LVL338
	.2byte	0xa
	.byte	0x7d
	.byte	0
	.byte	0x11
	.byte	0x80,0x99,0x82,0x80,0x78
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL352
	.4byte	.LVL353
	.2byte	0x6
	.byte	0xc
	.4byte	0x80e80
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST105:
	.4byte	.LVL354
	.4byte	.LVL380
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL381
	.4byte	.LVL382
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL382
	.4byte	.LVL383
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL383
	.4byte	.LVL385
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST106:
	.4byte	.LVL354
	.4byte	.LVL385
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST107:
	.4byte	.LVL354
	.4byte	.LVL364
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL364
	.4byte	.LVL369
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL369
	.4byte	.LVL385
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST108:
	.4byte	.LVL354
	.4byte	.LVL385
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST109:
	.4byte	.LVL354
	.4byte	.LVL356
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL356
	.4byte	.LVL360
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL369
	.4byte	.LVL385
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST110:
	.4byte	.LVL354
	.4byte	.LVL358
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL359
	.4byte	.LVL361
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL369
	.4byte	.LVL376-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL376-1
	.4byte	.LVL381
	.2byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.4byte	.LVL381
	.4byte	.LVL383
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL383
	.4byte	.LVL385
	.2byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.4byte	0
	.4byte	0
.LLST111:
	.4byte	.LVL354
	.4byte	.LVL358
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL358
	.4byte	.LVL379
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL381
	.4byte	.LVL384
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST113:
	.4byte	.LVL354
	.4byte	.LVL358
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL370
	.4byte	.LVL372
	.2byte	0x4
	.byte	0xa
	.2byte	0x4000
	.byte	0x9f
	.4byte	.LVL372
	.4byte	.LVL376-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL376-1
	.4byte	.LVL381
	.2byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.4byte	.LVL383
	.4byte	.LVL385
	.2byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.4byte	0
	.4byte	0
.LLST114:
	.4byte	.LVL373
	.4byte	.LVL374
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL374
	.4byte	.LVL375
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0xa
	.2byte	0xc80
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL375
	.4byte	.LVL376-1
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST115:
	.4byte	.LVL342
	.4byte	.LVL345
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST116:
	.4byte	.LVL343
	.4byte	.LVL344
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST117:
	.4byte	.LVL343
	.4byte	.LVL344
	.2byte	0xc
	.byte	0x7d
	.byte	0
	.byte	0x8
	.byte	0x60
	.byte	0x1e
	.byte	0x3
	.4byte	g_async_qh_head
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST118:
	.4byte	.LVL386
	.4byte	.LVL412
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL416
	.4byte	.LVL417
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL417
	.4byte	.LVL418
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL418
	.4byte	.LVL420
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST119:
	.4byte	.LVL386
	.4byte	.LVL420
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST120:
	.4byte	.LVL386
	.4byte	.LVL396
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL396
	.4byte	.LVL401
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL401
	.4byte	.LVL420
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST121:
	.4byte	.LVL386
	.4byte	.LVL420
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST122:
	.4byte	.LVL386
	.4byte	.LVL388
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL388
	.4byte	.LVL392
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL401
	.4byte	.LVL420
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST123:
	.4byte	.LVL386
	.4byte	.LVL390
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL391
	.4byte	.LVL393
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL401
	.4byte	.LVL408-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL408-1
	.4byte	.LVL416
	.2byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.4byte	.LVL416
	.4byte	.LVL418
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL418
	.4byte	.LVL420
	.2byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.4byte	0
	.4byte	0
.LLST124:
	.4byte	.LVL386
	.4byte	.LVL390
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL390
	.4byte	.LVL411
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL416
	.4byte	.LVL419
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST126:
	.4byte	.LVL386
	.4byte	.LVL390
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL402
	.4byte	.LVL404
	.2byte	0x4
	.byte	0xa
	.2byte	0x4000
	.byte	0x9f
	.4byte	.LVL404
	.4byte	.LVL408-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL408-1
	.4byte	.LVL416
	.2byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.4byte	.LVL418
	.4byte	.LVL420
	.2byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.4byte	0
	.4byte	0
.LLST127:
	.4byte	.LVL405
	.4byte	.LVL406
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL406
	.4byte	.LVL407
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0xa
	.2byte	0xc80
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL407
	.4byte	.LVL408-1
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST128:
	.4byte	.LVL413
	.4byte	.LVL416
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST129:
	.4byte	.LVL414
	.4byte	.LVL415
	.2byte	0x2
	.byte	0x78
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST130:
	.4byte	.LVL414
	.4byte	.LVL415
	.2byte	0xc
	.byte	0x7d
	.byte	0
	.byte	0x8
	.byte	0x60
	.byte	0x1e
	.byte	0x3
	.4byte	g_periodic_qh_head
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL196
	.4byte	.LVL201
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL201
	.4byte	.LVL202
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL202
	.4byte	.LVL203
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL203
	.4byte	.LVL215
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL215
	.4byte	.LVL216
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL216
	.4byte	.LFE53
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL196
	.4byte	.LVL201
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL201
	.4byte	.LVL202
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL202
	.4byte	.LVL205
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL205
	.4byte	.LVL212
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL212
	.4byte	.LVL215
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL215
	.4byte	.LVL216
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL216
	.4byte	.LVL218-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL218-1
	.4byte	.LVL221
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL221
	.4byte	.LVL231-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL231-1
	.4byte	.LVL234
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL234
	.4byte	.LVL235
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL235
	.4byte	.LFE53
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL196
	.4byte	.LVL199
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL199
	.4byte	.LVL201
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL201
	.4byte	.LVL202
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL202
	.4byte	.LVL215
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL215
	.4byte	.LVL216
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL216
	.4byte	.LVL232
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL232
	.4byte	.LVL234
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL234
	.4byte	.LVL239
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL239
	.4byte	.LFE53
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL197
	.4byte	.LVL200
	.2byte	0xa
	.byte	0x7f
	.byte	0
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.4byte	g_ehci_hcd+8
	.byte	0x22
	.4byte	.LVL200
	.4byte	.LVL201
	.2byte	0xf
	.byte	0x7a
	.byte	0xc
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.4byte	g_ehci_hcd+8
	.byte	0x22
	.4byte	.LVL202
	.4byte	.LVL203
	.2byte	0xf
	.byte	0x7a
	.byte	0xc
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.4byte	g_ehci_hcd+8
	.byte	0x22
	.4byte	.LVL203
	.4byte	.LVL206-1
	.2byte	0xf
	.byte	0x82
	.byte	0xc
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.4byte	g_ehci_hcd+8
	.byte	0x22
	.4byte	.LVL212
	.4byte	.LVL213
	.2byte	0xf
	.byte	0x82
	.byte	0xc
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.4byte	g_ehci_hcd+8
	.byte	0x22
	.4byte	.LVL214
	.4byte	.LVL215
	.2byte	0xf
	.byte	0x82
	.byte	0xc
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.4byte	g_ehci_hcd+8
	.byte	0x22
	.4byte	.LVL216
	.4byte	.LVL217
	.2byte	0xf
	.byte	0x82
	.byte	0xc
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.4byte	g_ehci_hcd+8
	.byte	0x22
	.4byte	.LVL221
	.4byte	.LVL224
	.2byte	0xf
	.byte	0x82
	.byte	0xc
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.4byte	g_ehci_hcd+8
	.byte	0x22
	.4byte	.LVL226
	.4byte	.LVL230
	.2byte	0xf
	.byte	0x82
	.byte	0xc
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.4byte	g_ehci_hcd+8
	.byte	0x22
	.4byte	.LVL234
	.4byte	.LVL235
	.2byte	0xf
	.byte	0x82
	.byte	0xc
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.4byte	g_ehci_hcd+8
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL204
	.4byte	.LVL207
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL219
	.4byte	.LVL220
	.2byte	0x6
	.byte	0x7d
	.byte	0
	.byte	0x8
	.byte	0x30
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL220
	.4byte	.LVL221
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL222
	.4byte	.LVL223
	.2byte	0x6
	.byte	0x7e
	.byte	0
	.byte	0x9
	.byte	0xcf
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL223
	.4byte	.LVL224
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL224
	.4byte	.LVL225
	.2byte	0x5
	.byte	0x80
	.byte	0
	.byte	0x7c
	.byte	0
	.byte	0x22
	.4byte	.LVL234
	.4byte	.LVL237
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL201
	.4byte	.LVL202
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL208
	.4byte	.LVL212
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL237
	.4byte	.LVL239
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL249
	.4byte	.LFE53
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL208
	.4byte	.LVL212
	.2byte	0x3
	.byte	0x91
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL237
	.4byte	.LVL238
	.2byte	0x3
	.byte	0x91
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL238
	.4byte	.LVL239
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL239
	.4byte	.LFE53
	.2byte	0x3
	.byte	0x91
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL208
	.4byte	.LVL212
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL237
	.4byte	.LVL240
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL240
	.4byte	.LVL242
	.2byte	0x3
	.byte	0x79
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL242
	.4byte	.LVL247
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL247
	.4byte	.LVL249
	.2byte	0x3
	.byte	0x79
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL249
	.4byte	.LFE53
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL208
	.4byte	.LVL212
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL237
	.4byte	.LVL240
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL240
	.4byte	.LVL242
	.2byte	0x3
	.byte	0x79
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL242
	.4byte	.LVL244
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL244
	.4byte	.LVL245
	.2byte	0x6
	.byte	0x79
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL245
	.4byte	.LVL246
	.2byte	0x8
	.byte	0x79
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL246
	.4byte	.LVL247
	.2byte	0x6
	.byte	0x79
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL247
	.4byte	.LVL249
	.2byte	0x3
	.byte	0x79
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL249
	.4byte	.LFE53
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL201
	.4byte	.LVL202
	.2byte	0x3
	.byte	0x91
	.byte	0x60
	.byte	0x9f
	.4byte	.LVL208
	.4byte	.LVL212
	.2byte	0x3
	.byte	0x91
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL237
	.4byte	.LVL238
	.2byte	0x3
	.byte	0x91
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL238
	.4byte	.LVL240
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL240
	.4byte	.LVL241
	.2byte	0x3
	.byte	0x7d
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL241
	.4byte	.LVL243
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL244
	.4byte	.LVL245
	.2byte	0x6
	.byte	0x7d
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL245
	.4byte	.LVL246
	.2byte	0x8
	.byte	0x7d
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL246
	.4byte	.LVL247
	.2byte	0x6
	.byte	0x7d
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL243
	.4byte	.LVL244
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL247
	.4byte	.LVL249
	.2byte	0x3
	.byte	0x79
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL249
	.4byte	.LFE53
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL201
	.4byte	.LVL202
	.2byte	0x3
	.byte	0x91
	.byte	0x60
	.byte	0x9f
	.4byte	.LVL209
	.4byte	.LVL212
	.2byte	0x3
	.byte	0x91
	.byte	0x60
	.byte	0x9f
	.4byte	.LVL243
	.4byte	.LVL244
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL247
	.4byte	.LVL248
	.2byte	0x3
	.byte	0x7d
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL248
	.4byte	.LFE53
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL210
	.4byte	.LVL211
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL211
	.4byte	.LVL212
	.2byte	0x2
	.byte	0x91
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL210
	.4byte	.LVL212
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL227
	.4byte	.LVL234
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL227
	.4byte	.LVL231-1
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL194
	.4byte	.LVL195
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL195
	.4byte	.LFE52
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL178
	.4byte	.LVL181
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL181
	.4byte	.LVL187
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL187
	.4byte	.LVL188
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL188
	.4byte	.LFE51
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL183
	.4byte	.LVL184
	.2byte	0x18
	.byte	0x78
	.byte	0
	.byte	0x8
	.byte	0x60
	.byte	0x1e
	.byte	0x79
	.byte	0xc
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0xa
	.2byte	0x3c0
	.byte	0x1e
	.byte	0x22
	.byte	0x3
	.4byte	ehci_qh_pool
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL184
	.4byte	.LVL185-1
	.2byte	0x18
	.byte	0x78
	.byte	0x7f
	.byte	0x8
	.byte	0x60
	.byte	0x1e
	.byte	0x79
	.byte	0xc
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0xa
	.2byte	0x3c0
	.byte	0x1e
	.byte	0x22
	.byte	0x3
	.4byte	ehci_qh_pool
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL179
	.4byte	.LVL180
	.2byte	0x6
	.byte	0x7c
	.byte	0
	.byte	0x9
	.byte	0xcf
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL180
	.4byte	.LVL181
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL191
	.4byte	.LFE51
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL190
	.4byte	.LVL192
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL182
	.4byte	.LVL183
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL183
	.4byte	.LVL184
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL131
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL166
	.4byte	.LVL167
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL167
	.4byte	.LFE50
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL135
	.4byte	.LVL137
	.2byte	0x13
	.byte	0x84
	.byte	0
	.byte	0x8
	.byte	0x60
	.byte	0x1e
	.byte	0x79
	.byte	0
	.byte	0xa
	.2byte	0x3c0
	.byte	0x1e
	.byte	0x22
	.byte	0x3
	.4byte	ehci_qh_pool
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL160
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL161
	.4byte	.LVL162
	.2byte	0x9
	.byte	0x7f
	.byte	0
	.byte	0xc
	.4byte	0x10030
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL162
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL170
	.4byte	.LVL172
	.2byte	0x7
	.byte	0x7e
	.byte	0
	.byte	0xa
	.2byte	0x1000
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL173
	.4byte	.LVL174
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL134
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL143
	.4byte	.LVL145-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL169
	.4byte	.LVL171
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL89
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL100
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL110
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL114
	.4byte	.LFE44
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL89
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL99
	.4byte	.LVL101-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL101-1
	.4byte	.LVL107
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL110
	.4byte	.LVL114
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL114
	.4byte	.LFE44
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL89
	.4byte	.LVL101-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL101-1
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL105
	.4byte	.LVL107
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL110
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL114
	.4byte	.LFE44
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL95
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL104
	.4byte	.LVL107-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL107
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL90
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL94
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL114
	.4byte	.LFE44
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL91
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL107
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL98
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL100
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL110
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL98
	.4byte	.LVL101-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL101-1
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL110
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL98
	.4byte	.LVL101-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL101-1
	.4byte	.LVL103
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL110
	.4byte	.LVL113
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL112
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL35
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL40
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x7a
	.byte	0x8
	.4byte	.LVL43
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL39
	.4byte	.LFE38
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL46
	.4byte	.LFE38
	.2byte	0x8
	.byte	0x7d
	.byte	0
	.byte	0x3a
	.byte	0x24
	.byte	0x7e
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL39
	.4byte	.LFE38
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL39
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL47
	.4byte	.LFE38
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL5
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL3
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL2
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL25
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LFE36
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL4
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL2
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL8
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL24
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL34
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL2
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x60
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x60
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL26
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x60
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LFE36
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL2
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x61
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL18
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x61
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LFE36
	.2byte	0x1
	.byte	0x61
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x12
	.byte	0x7c
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0xa
	.2byte	0xf00
	.byte	0x1a
	.byte	0x7b
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x13
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0xa
	.2byte	0xf00
	.byte	0x1a
	.byte	0x7b
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x7
	.byte	0x7b
	.byte	0
	.byte	0xa
	.2byte	0x4000
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x7
	.byte	0x7b
	.byte	0
	.byte	0xa
	.2byte	0x1000
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x7
	.byte	0x7b
	.byte	0
	.byte	0x40
	.byte	0x47
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x7
	.byte	0x81
	.byte	0
	.byte	0xa
	.2byte	0x2000
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x9
	.byte	0x81
	.byte	0
	.byte	0xc
	.4byte	0x40002000
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LFE36
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL2
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0xe
	.byte	0x91
	.byte	0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x4a
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x7
	.byte	0x7e
	.byte	0
	.byte	0x40
	.byte	0x4a
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x9
	.byte	0x7e
	.byte	0
	.byte	0xc
	.4byte	0x40000002
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL21
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x4
	.byte	0x40
	.byte	0x4a
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL33
	.4byte	.LFE36
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL24
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL27
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL0
	.4byte	.LFE34
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
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL48
	.4byte	.LVL49-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL49-1
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL50
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x13
	.byte	0x7f
	.byte	0
	.byte	0x8
	.byte	0x60
	.byte	0x1e
	.byte	0x7d
	.byte	0
	.byte	0xa
	.2byte	0x3c0
	.byte	0x1e
	.byte	0x22
	.byte	0x3
	.4byte	ehci_qh_pool
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x10
	.byte	0x7d
	.byte	0
	.byte	0xa
	.2byte	0x3c0
	.byte	0x1e
	.byte	0x79
	.byte	0
	.byte	0x22
	.byte	0x3
	.4byte	ehci_qh_pool
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x13
	.byte	0x7f
	.byte	0
	.byte	0x8
	.byte	0x60
	.byte	0x1e
	.byte	0x7d
	.byte	0
	.byte	0xa
	.2byte	0x3c0
	.byte	0x1e
	.byte	0x22
	.byte	0x3
	.4byte	ehci_qh_pool
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL59-1
	.2byte	0x13
	.byte	0x7f
	.byte	0x7f
	.byte	0x8
	.byte	0x60
	.byte	0x1e
	.byte	0x7d
	.byte	0
	.byte	0xa
	.2byte	0x3c0
	.byte	0x1e
	.byte	0x22
	.byte	0x3
	.4byte	ehci_qh_pool
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL49
	.4byte	.LVL55-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL57
	.4byte	.LVL59-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL57
	.4byte	.LVL59-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL60
	.4byte	.LVL61-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL61-1
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL62
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x10
	.byte	0x7d
	.byte	0
	.byte	0x4e
	.byte	0x1e
	.byte	0x78
	.byte	0
	.byte	0x22
	.byte	0x36
	.byte	0x24
	.byte	0x3
	.4byte	ehci_qtd_pool
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x10
	.byte	0x7d
	.byte	0
	.byte	0x4e
	.byte	0x1e
	.byte	0x78
	.byte	0
	.byte	0x22
	.byte	0x36
	.byte	0x24
	.byte	0x3
	.4byte	ehci_qtd_pool
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LVL69-1
	.2byte	0x10
	.byte	0x7d
	.byte	0
	.byte	0x4e
	.byte	0x1e
	.byte	0x78
	.byte	0x7f
	.byte	0x22
	.byte	0x36
	.byte	0x24
	.byte	0x3
	.4byte	ehci_qtd_pool
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL61
	.4byte	.LVL65-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL67
	.4byte	.LVL69-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL67
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL70
	.4byte	.LVL71-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL71-1
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LFE63
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL77
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL72
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL76
	.4byte	.LVL77-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL77
	.4byte	.LFE63
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL77
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL78
	.4byte	.LVL79-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL82
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL88
	.4byte	.LFE64
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL86
	.4byte	.LVL87-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xa4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	.LBB19
	.4byte	.LBE19
	.4byte	.LBB20
	.4byte	.LBE20
	.4byte	0
	.4byte	0
	.4byte	.LBB21
	.4byte	.LBE21
	.4byte	.LBB22
	.4byte	.LBE22
	.4byte	0
	.4byte	0
	.4byte	.LBB23
	.4byte	.LBE23
	.4byte	.LBB24
	.4byte	.LBE24
	.4byte	0
	.4byte	0
	.4byte	.LBB31
	.4byte	.LBE31
	.4byte	.LBB34
	.4byte	.LBE34
	.4byte	0
	.4byte	0
	.4byte	.LBB35
	.4byte	.LBE35
	.4byte	.LBB36
	.4byte	.LBE36
	.4byte	.LBB37
	.4byte	.LBE37
	.4byte	0
	.4byte	0
	.4byte	.LBB38
	.4byte	.LBE38
	.4byte	.LBB39
	.4byte	.LBE39
	.4byte	.LBB40
	.4byte	.LBE40
	.4byte	0
	.4byte	0
	.4byte	.LBB42
	.4byte	.LBE42
	.4byte	.LBB43
	.4byte	.LBE43
	.4byte	.LBB44
	.4byte	.LBE44
	.4byte	0
	.4byte	0
	.4byte	.LBB60
	.4byte	.LBE60
	.4byte	.LBB67
	.4byte	.LBE67
	.4byte	.LBB68
	.4byte	.LBE68
	.4byte	.LBB73
	.4byte	.LBE73
	.4byte	0
	.4byte	0
	.4byte	.LBB69
	.4byte	.LBE69
	.4byte	.LBB72
	.4byte	.LBE72
	.4byte	0
	.4byte	0
	.4byte	.LBB74
	.4byte	.LBE74
	.4byte	.LBB81
	.4byte	.LBE81
	.4byte	0
	.4byte	0
	.4byte	.LBB77
	.4byte	.LBE77
	.4byte	.LBB80
	.4byte	.LBE80
	.4byte	0
	.4byte	0
	.4byte	.LBB94
	.4byte	.LBE94
	.4byte	.LBB99
	.4byte	.LBE99
	.4byte	.LBB100
	.4byte	.LBE100
	.4byte	.LBB113
	.4byte	.LBE113
	.4byte	0
	.4byte	0
	.4byte	.LBB101
	.4byte	.LBE101
	.4byte	.LBB114
	.4byte	.LBE114
	.4byte	.LBB115
	.4byte	.LBE115
	.4byte	0
	.4byte	0
	.4byte	.LBB107
	.4byte	.LBE107
	.4byte	.LBB116
	.4byte	.LBE116
	.4byte	.LBB117
	.4byte	.LBE117
	.4byte	0
	.4byte	0
	.4byte	.LBB119
	.4byte	.LBE119
	.4byte	.LBB120
	.4byte	.LBE120
	.4byte	.LBB121
	.4byte	.LBE121
	.4byte	0
	.4byte	0
	.4byte	.LBB122
	.4byte	.LBE122
	.4byte	.LBB126
	.4byte	.LBE126
	.4byte	0
	.4byte	0
	.4byte	.LBB123
	.4byte	.LBE123
	.4byte	.LBB124
	.4byte	.LBE124
	.4byte	.LBB125
	.4byte	.LBE125
	.4byte	0
	.4byte	0
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB63
	.4byte	.LFE63
	.4byte	.LFB64
	.4byte	.LFE64
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB56
	.4byte	.LFE56
	.4byte	.LFB57
	.4byte	.LFE57
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	.LFB53
	.4byte	.LFE53
	.4byte	.LFB55
	.4byte	.LFE55
	.4byte	.LFB54
	.4byte	.LFE54
	.4byte	.LFB58
	.4byte	.LFE58
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF46:
	.string	"bMaxPower"
.LASF22:
	.string	"wIndex"
.LASF233:
	.string	"prev_qtd"
.LASF135:
	.string	"usbh_hub"
.LASF165:
	.string	"hciversion"
.LASF281:
	.string	"USBH_IRQHandler"
.LASF73:
	.string	"interval"
.LASF203:
	.string	"g_usbhost_bus"
.LASF183:
	.string	"ehci_qh"
.LASF75:
	.string	"transfer_flags"
.LASF247:
	.string	"ep_mult"
.LASF130:
	.string	"altsetting"
.LASF144:
	.string	"hub_ss_desc"
.LASF158:
	.string	"reg_base"
.LASF259:
	.string	"ehci_qh_alloc"
.LASF60:
	.string	"usb_slist_t"
.LASF103:
	.string	"argument"
.LASF274:
	.string	"usbh_get_port_speed"
.LASF93:
	.string	"self"
.LASF212:
	.string	"flags"
.LASF54:
	.string	"iInterface"
.LASF231:
	.string	"buffer"
.LASF40:
	.string	"usb_configuration_descriptor"
.LASF89:
	.string	"device_desc"
.LASF112:
	.string	"bHubContrCurrent"
.LASF181:
	.string	"alt_next_qtd"
.LASF246:
	.string	"ep_mps"
.LASF0:
	.string	"unsigned int"
.LASF59:
	.string	"next"
.LASF269:
	.string	"usb_osal_sem_give"
.LASF99:
	.string	"usb_osal_mq_t"
.LASF19:
	.string	"bmRequestType"
.LASF124:
	.string	"usbh_interface_altsetting"
.LASF171:
	.string	"usbsts"
.LASF105:
	.string	"timeout_ms"
.LASF97:
	.string	"usb_osal_sem_t"
.LASF113:
	.string	"DeviceRemovable"
.LASF250:
	.string	"hubport"
.LASF169:
	.string	"ehci_hcor"
.LASF126:
	.string	"usbh_interface"
.LASF185:
	.string	"epcap"
.LASF102:
	.string	"handler"
.LASF228:
	.string	"ehci_urb_waitup"
.LASF154:
	.string	"hub_mq"
.LASF57:
	.string	"wMaxPacketSize"
.LASF196:
	.string	"ehci_hcd"
.LASF58:
	.string	"bInterval"
.LASF52:
	.string	"bInterfaceSubClass"
.LASF35:
	.string	"bcdDevice"
.LASF132:
	.string	"usbh_configuration"
.LASF34:
	.string	"idProduct"
.LASF260:
	.string	"ehci_qtd_alloc"
.LASF156:
	.string	"alloctab"
.LASF36:
	.string	"iManufacturer"
.LASF172:
	.string	"usbintr"
.LASF85:
	.string	"speed"
.LASF222:
	.string	"usb_hc_low_level_deinit"
.LASF205:
	.string	"g_framelist"
.LASF21:
	.string	"wValue"
.LASF276:
	.string	"usb_osal_sem_create"
.LASF69:
	.string	"list"
.LASF29:
	.string	"bDeviceClass"
.LASF17:
	.string	"uint32_t"
.LASF215:
	.string	"usbh_roothub_control"
.LASF279:
	.string	".\\components\\usb\\cherryusb\\port\\ehci\\usb_hc_ehci.c"
.LASF37:
	.string	"iProduct"
.LASF28:
	.string	"bcdUSB"
.LASF178:
	.string	"portsc"
.LASF95:
	.string	"mutex"
.LASF194:
	.string	"waitsem"
.LASF109:
	.string	"bNbrPorts"
.LASF177:
	.string	"configflag"
.LASF180:
	.string	"next_qtd"
.LASF137:
	.string	"index"
.LASF41:
	.string	"wTotalLength"
.LASF201:
	.string	"n_ports"
.LASF48:
	.string	"bInterfaceNumber"
.LASF67:
	.string	"errorcode"
.LASF12:
	.string	"long long unsigned int"
.LASF253:
	.string	"order"
.LASF24:
	.string	"usb_setup_packet"
.LASF192:
	.string	"ehci_qh_hw"
.LASF254:
	.string	"ehci_qh_remove"
.LASF224:
	.string	"qhead"
.LASF6:
	.string	"__uint16_t"
.LASF87:
	.string	"route"
.LASF159:
	.string	"hcd_id"
.LASF262:
	.string	"dword2array"
.LASF145:
	.string	"child"
.LASF195:
	.string	"remove_in_iaad"
.LASF30:
	.string	"bDeviceSubClass"
.LASF243:
	.string	"ehci_qh_fill"
.LASF199:
	.string	"n_cc"
.LASF251:
	.string	"ehci_caculate_smask"
.LASF280:
	.string	"C:\\\\Users\\\\cwier\\\\Documents\\\\GitHub\\\\qcom\\\\examples\\\\usb_cam_stream\\\\build\\\\build_out\\\\components\\\\usb\\\\cherryusb"
.LASF186:
	.string	"curr_qtd"
.LASF273:
	.string	"ehci_iso_urb_init"
.LASF162:
	.string	"ehci_hccr"
.LASF104:
	.string	"is_period"
.LASF114:
	.string	"PortPwrCtrlMask"
.LASF2:
	.string	"size_t"
.LASF50:
	.string	"bNumEndpoints"
.LASF98:
	.string	"usb_osal_mutex_t"
.LASF225:
	.string	"ehci_check_qh"
.LASF63:
	.string	"usbh_iso_frame_packet"
.LASF82:
	.string	"connected"
.LASF107:
	.string	"_Bool"
.LASF153:
	.string	"hub_thread"
.LASF141:
	.string	"tt_think"
.LASF148:
	.string	"int_buffer"
.LASF213:
	.string	"usbh_kill_urb"
.LASF232:
	.string	"buflen"
.LASF198:
	.string	"has_tt"
.LASF53:
	.string	"bInterfaceProtocol"
.LASF96:
	.string	"usb_osal_thread_t"
.LASF175:
	.string	"periodiclistbase"
.LASF149:
	.string	"int_timer"
.LASF79:
	.string	"complete"
.LASF176:
	.string	"asynclistaddr"
.LASF38:
	.string	"iSerialNumber"
.LASF51:
	.string	"bInterfaceClass"
.LASF257:
	.string	"ehci_qh_free"
.LASF129:
	.string	"priv"
.LASF110:
	.string	"wHubCharacteristics"
.LASF14:
	.string	"char"
.LASF184:
	.string	"epchar"
.LASF108:
	.string	"usb_hub_descriptor"
.LASF166:
	.string	"hcsparams"
.LASF77:
	.string	"num_of_iso_packets"
.LASF238:
	.string	"qtd_data"
.LASF255:
	.string	"head"
.LASF219:
	.string	"usb_hc_deinit"
.LASF170:
	.string	"usbcmd"
.LASF249:
	.string	"hubaddr"
.LASF125:
	.string	"intf_desc"
.LASF127:
	.string	"devname"
.LASF200:
	.string	"n_pcc"
.LASF61:
	.string	"usbh_complete_callback_t"
.LASF101:
	.string	"usb_osal_timer"
.LASF282:
	.string	"errout_timeout"
.LASF15:
	.string	"uint8_t"
.LASF217:
	.string	"status"
.LASF118:
	.string	"usbh_class_driver"
.LASF157:
	.string	"usbh_hcd"
.LASF270:
	.string	"ehci_kill_iso_urb"
.LASF134:
	.string	"intf"
.LASF11:
	.string	"long long int"
.LASF167:
	.string	"hccparams"
.LASF161:
	.string	"roothub"
.LASF271:
	.string	"printf"
.LASF163:
	.string	"caplength"
.LASF221:
	.string	"usb_hc_init"
.LASF86:
	.string	"depth"
.LASF32:
	.string	"bMaxPacketSize0"
.LASF229:
	.string	"usbh_reset_port"
.LASF218:
	.string	"usbh_get_frame_number"
.LASF152:
	.string	"devgen"
.LASF277:
	.string	"memset"
.LASF193:
	.string	"first_qtd"
.LASF131:
	.string	"altsetting_num"
.LASF241:
	.string	"ehci_qtd_bpl_fill"
.LASF202:
	.string	"hcor_offset"
.LASF223:
	.string	"usb_hc_low_level2_init"
.LASF204:
	.string	"g_ehci_hcd"
.LASF55:
	.string	"usb_endpoint_descriptor"
.LASF121:
	.string	"disconnect"
.LASF283:
	.string	"usb_hc_low_level_init"
.LASF239:
	.string	"qtd_status"
.LASF91:
	.string	"raw_config_desc"
.LASF265:
	.string	"ehci_scan_isochronous_list"
.LASF31:
	.string	"bDeviceProtocol"
.LASF16:
	.string	"uint16_t"
.LASF182:
	.string	"token"
.LASF248:
	.string	"ep_interval"
.LASF160:
	.string	"roothub_intbuf"
.LASF206:
	.string	"ehci_qh_pool"
.LASF13:
	.string	"__uintptr_t"
.LASF150:
	.string	"usbh_bus"
.LASF240:
	.string	"ehci_qtd_fill"
.LASF90:
	.string	"config"
.LASF173:
	.string	"frindex"
.LASF142:
	.string	"ismtt"
.LASF236:
	.string	"ehci_control_urb_init"
.LASF256:
	.string	"ehci_qh_add_head"
.LASF92:
	.string	"parent"
.LASF5:
	.string	"short int"
.LASF234:
	.string	"xfer_len"
.LASF120:
	.string	"connect"
.LASF272:
	.string	"usb_osal_sem_take"
.LASF8:
	.string	"long int"
.LASF42:
	.string	"bNumInterfaces"
.LASF190:
	.string	"bufaddr"
.LASF84:
	.string	"dev_addr"
.LASF191:
	.string	"length"
.LASF187:
	.string	"overlay"
.LASF214:
	.string	"usbh_submit_urb"
.LASF235:
	.string	"ehci_bulk_urb_init"
.LASF23:
	.string	"wLength"
.LASF216:
	.string	"temp"
.LASF252:
	.string	"binterval"
.LASF136:
	.string	"is_roothub"
.LASF45:
	.string	"bmAttributes"
.LASF94:
	.string	"ep0_urb"
.LASF210:
	.string	"ehci_scan_periodic_list"
.LASF56:
	.string	"bEndpointAddress"
.LASF44:
	.string	"iConfiguration"
.LASF188:
	.string	"ehci_qtd_hw"
.LASF81:
	.string	"usbh_hubport"
.LASF3:
	.string	"__uint8_t"
.LASF211:
	.string	"ehci_scan_async_list"
.LASF20:
	.string	"bRequest"
.LASF70:
	.string	"hcpriv"
.LASF33:
	.string	"idVendor"
.LASF80:
	.string	"iso_packet"
.LASF18:
	.string	"uintptr_t"
.LASF147:
	.string	"intin_urb"
.LASF62:
	.string	"usb_slist_node"
.LASF10:
	.string	"long unsigned int"
.LASF123:
	.string	"ep_desc"
.LASF43:
	.string	"bConfigurationValue"
.LASF83:
	.string	"port"
.LASF78:
	.string	"start_frame"
.LASF179:
	.string	"ehci_qtd"
.LASF117:
	.string	"wHubDelay"
.LASF133:
	.string	"config_desc"
.LASF146:
	.string	"intin"
.LASF4:
	.string	"unsigned char"
.LASF74:
	.string	"setup"
.LASF9:
	.string	"__uint32_t"
.LASF226:
	.string	"ehci_kill_qh"
.LASF49:
	.string	"bAlternateSetting"
.LASF244:
	.string	"ep_addr"
.LASF76:
	.string	"timeout"
.LASF278:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF168:
	.string	"hcspportroute"
.LASF208:
	.string	"g_async_qh_head"
.LASF263:
	.string	"addr"
.LASF268:
	.string	"usb_osal_enter_critical_section"
.LASF237:
	.string	"qtd_setup"
.LASF27:
	.string	"bDescriptorType"
.LASF189:
	.string	"inuse"
.LASF116:
	.string	"bHubHdrDecLat"
.LASF258:
	.string	"ehci_qtd_free"
.LASF128:
	.string	"class_driver"
.LASF267:
	.string	"usb_osal_leave_critical_section"
.LASF209:
	.string	"g_periodic_qh_head"
.LASF66:
	.string	"actual_length"
.LASF88:
	.string	"slot_id"
.LASF151:
	.string	"busid"
.LASF140:
	.string	"powerdelay"
.LASF245:
	.string	"ep_type"
.LASF1:
	.string	"signed char"
.LASF7:
	.string	"short unsigned int"
.LASF100:
	.string	"usb_timer_handler_t"
.LASF230:
	.string	"ehci_intr_urb_init"
.LASF164:
	.string	"reserved"
.LASF64:
	.string	"transfer_buffer"
.LASF261:
	.string	"usb_memcpy"
.LASF71:
	.string	"hport"
.LASF197:
	.string	"ehci_iso_used"
.LASF39:
	.string	"bNumConfigurations"
.LASF227:
	.string	"ehci_qh_scan_qtds"
.LASF242:
	.string	"rest"
.LASF174:
	.string	"ctrldssegment"
.LASF264:
	.string	"usbh_hub_thread_wakeup"
.LASF26:
	.string	"bLength"
.LASF155:
	.string	"usbh_devaddr_map"
.LASF266:
	.string	"usb_osal_msleep"
.LASF119:
	.string	"driver_name"
.LASF106:
	.string	"timer"
.LASF122:
	.string	"usbh_endpoint"
.LASF72:
	.string	"data_toggle"
.LASF68:
	.string	"usbh_urb"
.LASF143:
	.string	"hub_desc"
.LASF111:
	.string	"bPwrOn2PwrGood"
.LASF138:
	.string	"hub_addr"
.LASF275:
	.string	"usb_osal_sem_delete"
.LASF139:
	.string	"nports"
.LASF220:
	.string	"regval"
.LASF47:
	.string	"usb_interface_descriptor"
.LASF115:
	.string	"usb_hub_ss_descriptor"
.LASF25:
	.string	"usb_device_descriptor"
.LASF65:
	.string	"transfer_buffer_length"
.LASF207:
	.string	"ehci_qtd_pool"
	.ident	"GCC: (GNU) 10.4.0"
