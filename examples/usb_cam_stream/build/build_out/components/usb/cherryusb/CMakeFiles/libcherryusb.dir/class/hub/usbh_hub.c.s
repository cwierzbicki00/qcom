	.file	"usbh_hub.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.usbh_hub_disconnect.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"\033[32m[I/usbh_hub] "
	.align	2
.LC1:
	.string	"Unregister HUB Class:%s\r\n"
	.align	2
.LC2:
	.string	"\033[0m"
	.section	.text.usbh_hub_disconnect,"ax",@progbits
	.align	1
	.type	usbh_hub_disconnect, @function
usbh_hub_disconnect:
.LFB46:
	.file 1 ".\\components\\usb\\cherryusb\\class\\hub\\usbh_hub.c"
	.loc 1 439 1
	.cfi_startproc
.LVL0:
	.loc 1 440 5
	.loc 1 441 5
	.loc 1 443 5
	.loc 1 443 22 is_stmt 0
	li	a4,620
	mv	a5,a0
	mula	a5,a1,a4
	.loc 1 439 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	sw	s5,4(sp)
	sw	s6,0(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.loc 1 443 22
	lw	s0,60(a5)
.LVL1:
	.loc 1 445 5 is_stmt 1
	.loc 1 445 8 is_stmt 0
	beq	s0,zero,.L2
	mv	s4,a0
	.loc 1 446 9 is_stmt 1
	.loc 1 446 16 is_stmt 0
	li	a0,20480
.LVL2:
	add	a5,s0,a0
	.loc 1 446 12
	lw	a5,-8(a5)
	mv	s1,a1
	beq	a5,zero,.L3
	.loc 1 447 13 is_stmt 1
	addi	a0,a0,-4
	add	a0,s0,a0
	call	usbh_kill_urb
.LVL3:
.L3:
	.loc 1 450 9
	.loc 1 450 16 is_stmt 0
	li	a5,20480
	add	a5,s0,a5
	lw	a0,64(a5)
	.loc 1 450 12
	beq	a0,zero,.L4
	.loc 1 451 13 is_stmt 1
	call	usb_osal_timer_delete
.LVL4:
.L4:
.LBB5:
	.loc 1 455 19 is_stmt 0 discriminator 1
	li	s5,4096
.LBE5:
	.loc 1 439 1 discriminator 1
	li	s2,0
.LBB6:
	.loc 1 455 19 discriminator 1
	addi	s6,s5,1012
.L5:
.LVL5:
	.loc 1 454 32 is_stmt 1 discriminator 1
	.loc 1 454 9 is_stmt 0 discriminator 1
	lbu	a5,5(s0)
	bgtu	a5,s2,.L6
.LBE6:
	.loc 1 460 9 is_stmt 1
	.loc 1 460 45 is_stmt 0
	li	a1,620
	mul	s1,s1,a1
	add	a5,s4,s1
	.loc 1 460 12
	lbu	a5,40(a5)
	beq	a5,zero,.L7
	.loc 1 461 13 is_stmt 1
	.loc 1 461 18
	lui	a0,%hi(.LC0)
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL6:
	.loc 1 461 69
	.loc 1 461 131 is_stmt 0
	addi	a1,s1,40
	.loc 1 461 69
	lui	a0,%hi(.LC1)
	add	a1,s4,a1
	addi	a0,a0,%lo(.LC1)
	call	printf
.LVL7:
	.loc 1 461 142 is_stmt 1
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL8:
.L7:
	.loc 1 461 169 discriminator 1
	.loc 1 464 9 discriminator 1
.LBB7:
.LBB8:
	.loc 1 61 5 discriminator 1
	.loc 1 61 13 is_stmt 0 discriminator 1
	lbu	a5,2(s0)
	addi	a5,a5,-2
	andi	a4,a5,0xff
.LVL9:
	.loc 1 63 5 is_stmt 1 discriminator 1
	.loc 1 63 8 is_stmt 0 discriminator 1
	li	a5,31
	bgtu	a4,a5,.L8
	.loc 1 64 9 is_stmt 1
	.loc 1 64 20 is_stmt 0
	lui	a3,%hi(.LANCHOR0)
	addi	a3,a3,%lo(.LANCHOR0)
	.loc 1 64 28
	li	a5,1
	sll	a5,a5,a4
	.loc 1 64 20
	lw	a4,0(a3)
.LVL10:
	.loc 1 64 23
	not	a5,a5
	.loc 1 64 20
	and	a5,a5,a4
	sw	a5,0(a3)
.L8:
	.loc 1 66 5 is_stmt 1
	li	a2,20480
	addi	a2,a2,68
	li	a1,0
	mv	a0,s0
	call	memset
.LVL11:
.L2:
.LBE8:
.LBE7:
	.loc 1 466 5
	.loc 1 467 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL12:
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
	lw	s5,4(sp)
	.cfi_restore 21
	lw	s6,0(sp)
	.cfi_restore 22
	li	a0,0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL13:
.L6:
	.cfi_restore_state
.LBB9:
	.loc 1 455 13 is_stmt 1 discriminator 3
	.loc 1 456 13 discriminator 3
	.loc 1 455 19 is_stmt 0 discriminator 3
	mul	s3,s2,s6
	.loc 1 454 56 discriminator 3
	addi	s2,s2,1
.LVL14:
	andi	s2,s2,0xff
	.loc 1 455 19 discriminator 3
	addi	a0,s3,32
	.loc 1 457 27 discriminator 3
	add	s3,s0,s3
	.loc 1 456 13 discriminator 3
	add	a0,s0,a0
	.loc 1 457 27 discriminator 3
	add	s3,s5,s3
	.loc 1 456 13 discriminator 3
	call	usbh_hubport_release
.LVL15:
	.loc 1 457 13 is_stmt 1 discriminator 3
	.loc 1 457 27 is_stmt 0 discriminator 3
	sw	zero,956(s3)
	.loc 1 454 52 is_stmt 1 discriminator 3
.LVL16:
	j	.L5
.LBE9:
	.cfi_endproc
.LFE46:
	.size	usbh_hub_disconnect, .-usbh_hub_disconnect
	.section	.text.hub_int_timeout,"ax",@progbits
	.align	1
	.type	hub_int_timeout, @function
hub_int_timeout:
.LFB44:
	.loc 1 317 1
	.cfi_startproc
.LVL17:
	.loc 1 318 5
	.loc 1 317 1 is_stmt 0
	mv	a3,a0
.LVL18:
	.loc 1 320 5 is_stmt 1
	li	a4,20480
	addi	a0,a4,-4
.LVL19:
	add	a4,a3,a4
	addi	a5,a4,-128
	lw	a2,60(a4)
	lw	a1,112(a5)
	lw	a6,120(a5)
.LBB12:
.LBB13:
	.file 2 ".\\components\\usb\\cherryusb\\core/usbh_core.h"
	.loc 2 223 26 is_stmt 0
	sw	a2,20(a4)
	.loc 2 224 33
	li	a2,1
	.loc 2 220 16
	sw	a1,4(a4)
	.loc 2 221 13
	sw	a6,8(a4)
	.loc 2 222 16
	sw	zero,16(a4)
	.loc 2 224 33
	sw	a2,24(a4)
	.loc 2 225 18
	sw	zero,36(a4)
.LBE13:
.LBE12:
	.loc 1 320 5
	addi	a5,a4,0
.LBB16:
.LBB14:
	.loc 2 226 19
	lui	a4,%hi(hub_int_complete_callback)
	addi	a4,a4,%lo(hub_int_complete_callback)
	sw	a4,52(a5)
	.loc 2 227 14
	sw	a3,56(a5)
	.loc 2 228 19
	lbu	a1,3(a1)
	li	a4,2
	lbu	a5,6(a6)
.LBE14:
.LBE16:
	.loc 1 320 5
	add	a0,a3,a0
.LVL20:
.LBB17:
.LBB15:
	.loc 2 220 5 is_stmt 1
	.loc 2 221 5
	.loc 2 222 5
	.loc 2 223 5
	.loc 2 224 5
	.loc 2 225 5
	.loc 2 226 5
	.loc 2 227 5
	.loc 2 228 5
	.loc 2 228 19 is_stmt 0
	bleu	a1,a4,.L23
	.loc 2 228 78
	addi	a5,a5,-1
	.loc 2 228 60
	sll	a5,a2,a5
	.loc 2 228 19
	andi	a5,a5,0xff
.L23:
	li	a4,20480
	add	a3,a3,a4
.LVL21:
	sb	a5,13(a3)
.LVL22:
.LBE15:
.LBE17:
	.loc 1 321 5 is_stmt 1
	tail	usbh_submit_urb
.LVL23:
	.cfi_endproc
.LFE44:
	.size	hub_int_timeout, .-hub_int_timeout
	.section	.text.usb_memcpy.isra.0,"ax",@progbits
	.align	1
	.type	usb_memcpy.isra.0, @function
usb_memcpy.isra.0:
.LFB57:
	.file 3 ".\\components\\usb\\cherryusb\\common/usb_memcpy.h"
	.loc 3 22 21
	.cfi_startproc
.LVL24:
	.loc 3 24 5
	.loc 3 25 5
	.loc 3 26 5
	.loc 3 27 5
	.loc 3 29 5
	.loc 3 29 62 is_stmt 0
	xor	a4,a0,a1
	andi	a4,a4,3
	.loc 3 29 8
	beq	a4,zero,.L25
.LVL25:
.L26:
.LBB30:
.LBB31:
	.loc 3 58 52
	andi	a4,a1,3
	.loc 3 58 22
	bne	a4,zero,.L34
	li	a7,0
	mv	a3,a0
	.loc 3 77 15
	li	t1,3
.LVL26:
.L35:
	.loc 3 77 15 is_stmt 1
	sub	a6,a2,a7
.LVL27:
	bgtu	a6,t1,.L36
	srli	a3,a2,2
.LVL28:
	li	a6,-4
.LVL29:
	mula	a2,a3,a6
.LVL30:
	slli	a3,a3,2
	add	a0,a0,a3
	add	a1,a1,a3
.LVL31:
	j	.L38
.LVL32:
.L28:
.LBE31:
.LBE30:
	.loc 3 31 13
	.loc 3 31 21 is_stmt 0
	lbuia	a5,(a1),1,0
.LVL33:
	.loc 3 32 13
	addi	a2,a2,-1
.LVL34:
	.loc 3 31 19
	sbia	a5,(a0),1,0
.LVL35:
	.loc 3 32 13 is_stmt 1
.L25:
	.loc 3 30 15
	.loc 3 30 43 is_stmt 0
	andi	a4,a0,3
	.loc 3 30 15
	beq	a4,zero,.L40
	.loc 3 30 74
	bne	a2,zero,.L28
	ret
.LVL36:
.L30:
	.loc 3 47 13 is_stmt 1
	.loc 3 47 21 is_stmt 0
	lrw	a6,a1,a3,0
.LVL37:
	.loc 3 47 19
	srw	a6,a0,a3,0
	.loc 3 48 13 is_stmt 1
.LVL38:
	addi	a3,a3,4
.LVL39:
.L27:
	.loc 3 46 15
	sub	a6,a2,a3
.LVL40:
	bgtu	a6,a5,.L30
	srli	a5,a2,2
	li	a3,-4
.LVL41:
	mula	a2,a5,a3
	slli	a5,a5,2
	add	a0,a0,a5
.LVL42:
	add	a5,a1,a5
.LVL43:
	j	.L32
.LVL44:
.L40:
	li	a3,0
	li	a5,3
	j	.L27
.LVL45:
.L33:
	.loc 3 55 13
	.loc 3 55 21 is_stmt 0
	lrbu	a3,a5,a4,0
	.loc 3 55 19
	srb	a3,a0,a4,0
	addi	a4,a4,1
.LVL46:
.L32:
	.loc 3 54 15 is_stmt 1
	bne	a2,a4,.L33
	ret
.LVL47:
.L34:
.LBB38:
.LBB36:
	.loc 3 59 13
	.loc 3 59 21 is_stmt 0
	lbuia	a4,(a1),1,0
.LVL48:
	.loc 3 60 13
	addi	a2,a2,-1
.LVL49:
	.loc 3 59 19
	sbia	a4,(a0),1,0
.LVL50:
	.loc 3 60 13 is_stmt 1
	.loc 3 58 15
	bne	a2,zero,.L26
.LVL51:
.L24:
.LBE36:
.LBE38:
	.loc 3 90 1 is_stmt 0
	ret
.LVL52:
.L36:
.LBB39:
.LBB37:
	.loc 3 78 10 is_stmt 1
	lrw	a6,a1,a7,0
.LVL53:
.LBB32:
.LBB33:
	.loc 3 16 5
.LBE33:
.LBE32:
	.loc 3 79 16 is_stmt 0
	addi	a3,a3,4
.LVL54:
	addi	a7,a7,4
.LVL55:
.LBB35:
.LBB34:
	.loc 3 17 17
	srli	t3,a6,8
	.loc 3 16 13
	sb	a6,-4(a3)
	.loc 3 17 5 is_stmt 1
	.loc 3 17 13 is_stmt 0
	sb	t3,-3(a3)
	.loc 3 18 5 is_stmt 1
	.loc 3 18 17 is_stmt 0
	srli	t3,a6,16
	.loc 3 19 17
	srli	a6,a6,24
.LVL56:
	.loc 3 18 13
	sb	t3,-2(a3)
	.loc 3 19 5 is_stmt 1
	.loc 3 19 13 is_stmt 0
	sb	a6,-1(a3)
.LVL57:
.LBE34:
.LBE35:
	.loc 3 79 13 is_stmt 1
	.loc 3 80 13
	j	.L35
.LVL58:
.L39:
	.loc 3 86 13
	.loc 3 86 21 is_stmt 0
	lrbu	a5,a1,a4,0
	.loc 3 86 19
	srb	a5,a0,a4,0
	addi	a4,a4,1
.LVL59:
.L38:
	.loc 3 85 15 is_stmt 1
	bne	a2,a4,.L39
	j	.L24
.LBE37:
.LBE39:
	.cfi_endproc
.LFE57:
	.size	usb_memcpy.isra.0, .-usb_memcpy.isra.0
	.section	.text.usbh_hub_get_portstatus,"ax",@progbits
	.align	1
	.type	usbh_hub_get_portstatus, @function
usbh_hub_get_portstatus:
.LFB39:
	.loc 1 230 1
	.cfi_startproc
.LVL60:
	mv	a4,a0
	.loc 1 231 5
	.loc 1 232 5
	.loc 1 234 5
	.loc 1 230 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	.loc 1 234 8
	lbu	a4,1(a4)
	.loc 1 230 1
	sw	s0,40(sp)
	.cfi_offset 8, -8
	li	s0,20480
	add	s0,a0,s0
	sw	ra,44(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	lw	a0,-12(s0)
.LVL61:
.LBB44:
.LBB45:
	.loc 1 239 23
	extu	a5,a1,15,0
.LBE45:
.LBE44:
	.loc 1 234 8
	beq	a4,zero,.L49
.LVL62:
.LBB47:
.LBB46:
	.loc 1 235 9 is_stmt 1
	.loc 1 236 9
	.loc 1 237 9
	.loc 1 238 9
	.loc 1 236 30 is_stmt 0
	li	a4,163
	.loc 1 239 23
	sh	a5,12(sp)
	.loc 1 241 16
	addi	a1,sp,8
.LVL63:
	.loc 1 240 24
	li	a5,4
	.loc 1 236 30
	sw	a4,8(sp)
	.loc 1 239 9 is_stmt 1
	.loc 1 240 9
	.loc 1 240 24 is_stmt 0
	sh	a5,14(sp)
	.loc 1 241 9 is_stmt 1
	.loc 1 241 16 is_stmt 0
	call	usbh_roothub_control
.LVL64:
	mv	s2,a0
.LVL65:
.L48:
.LBE46:
.LBE47:
	.loc 1 245 1
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s3,28(sp)
	.cfi_restore 19
	mv	a0,s2
	lw	s2,32(sp)
	.cfi_restore 18
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL66:
.L49:
	.cfi_restore_state
.LBB48:
.LBB49:
	.loc 1 119 16
	lw	a3,-16(s0)
	.loc 1 119 11
	li	a4,4096
	mv	s3,a2
.LBE49:
.LBE48:
	.loc 1 243 9 is_stmt 1
.LVL67:
.LBB51:
.LBB50:
	.loc 1 116 5
	.loc 1 117 5
	.loc 1 119 5
	.loc 1 119 11 is_stmt 0
	add	a4,a3,a4
	lw	a1,920(a4)
.LVL68:
	.loc 1 121 5 is_stmt 1
	.loc 1 121 26 is_stmt 0
	li	a4,-93
	.loc 1 127 62
	lui	s1,%hi(.LANCHOR1)
	.loc 1 124 19
	sb	a5,4(a1)
	.loc 1 125 20
	li	a5,4
	.loc 1 121 26
	sb	a4,0(a1)
	.loc 1 122 5 is_stmt 1
	.loc 1 122 21 is_stmt 0
	sb	zero,1(a1)
	.loc 1 123 5 is_stmt 1
	.loc 1 123 19 is_stmt 0
	sb	zero,2(a1)
	sb	zero,3(a1)
	.loc 1 124 5 is_stmt 1
	.loc 1 124 19 is_stmt 0
	sb	zero,5(a1)
	.loc 1 125 5 is_stmt 1
	.loc 1 125 20 is_stmt 0
	sb	a5,6(a1)
	sb	zero,7(a1)
	.loc 1 127 5 is_stmt 1
	.loc 1 127 62 is_stmt 0
	lbu	a2,4(a0)
.LVL69:
	addi	s1,s1,%lo(.LANCHOR1)
	.loc 1 127 11
	mv	a0,a3
	.loc 1 127 62
	slli	a2,a2,5
	.loc 1 127 11
	add	a2,s1,a2
	call	usbh_control_transfer
.LVL70:
	mv	s2,a0
.LVL71:
	.loc 1 128 5 is_stmt 1
	.loc 1 128 8 is_stmt 0
	blt	a0,zero,.L48
	.loc 1 131 5 is_stmt 1
	.loc 1 131 47 is_stmt 0
	lw	a5,-12(s0)
	.loc 1 131 5
	li	a2,4
	mv	a0,s3
.LVL72:
	.loc 1 131 38
	lbu	a1,4(a5)
	slli	a1,a1,5
	.loc 1 131 5
	add	a1,s1,a1
	call	usb_memcpy.isra.0
.LVL73:
	.loc 1 132 5 is_stmt 1
	.loc 1 132 12 is_stmt 0
	j	.L48
.LBE50:
.LBE51:
	.cfi_endproc
.LFE39:
	.size	usbh_hub_get_portstatus, .-usbh_hub_get_portstatus
	.section	.text.usbh_hub_set_feature,"ax",@progbits
	.align	1
	.globl	usbh_hub_set_feature
	.type	usbh_hub_set_feature, @function
usbh_hub_set_feature:
.LFB40:
	.loc 1 248 1 is_stmt 1
	.cfi_startproc
.LVL74:
	.loc 1 249 5
	.loc 1 250 5
	.loc 1 252 5
	.loc 1 252 8 is_stmt 0
	lbu	a4,1(a0)
.LBB56:
.LBB57:
	.loc 1 256 23
	extu	a2,a2,15,0
.LVL75:
	.loc 1 257 23
	extu	a5,a1,15,0
.LBE57:
.LBE56:
	.loc 1 252 8
	bne	a4,zero,.L56
	.loc 1 261 9 is_stmt 1
	li	a4,20480
	add	a0,a0,a4
.LVL76:
	lw	a0,-16(a0)
.LVL77:
.LBB61:
.LBB62:
	.loc 1 137 5
	.loc 1 139 5
	.loc 1 139 11 is_stmt 0
	li	a4,4096
	add	a4,a0,a4
	lw	a1,920(a4)
.LVL78:
	.loc 1 141 5 is_stmt 1
	.loc 1 141 26 is_stmt 0
	li	a4,35
	sb	a4,0(a1)
	.loc 1 142 5 is_stmt 1
	.loc 1 142 21 is_stmt 0
	li	a4,3
	.loc 1 143 19
	sb	a2,2(a1)
	.loc 1 142 21
	sb	a4,1(a1)
	.loc 1 143 5 is_stmt 1
	.loc 1 143 19 is_stmt 0
	sb	zero,3(a1)
	.loc 1 144 5 is_stmt 1
	.loc 1 144 19 is_stmt 0
	sb	a5,4(a1)
	sb	zero,5(a1)
	.loc 1 145 5 is_stmt 1
	.loc 1 145 20 is_stmt 0
	sb	zero,6(a1)
	sb	zero,7(a1)
	.loc 1 147 5 is_stmt 1
	.loc 1 147 12 is_stmt 0
	li	a2,0
	tail	usbh_control_transfer
.LVL79:
.L56:
.LBE62:
.LBE61:
.LBB63:
.LBB58:
	.loc 1 253 9 is_stmt 1
	li	a4,20480
	add	a0,a0,a4
.LVL80:
	.loc 1 259 16 is_stmt 0
	lw	a0,-12(a0)
.LVL81:
.LBE58:
.LBE63:
	.loc 1 248 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
.LVL82:
.LBB64:
.LBB59:
	.loc 1 254 9 is_stmt 1
	.loc 1 255 9
	.loc 1 256 23 is_stmt 0
	sh	a2,10(sp)
	.loc 1 254 30
	li	a4,803
	.loc 1 259 16
	addi	a1,sp,8
.LVL83:
	li	a2,0
.LBE59:
.LBE64:
	.loc 1 248 1
	sw	ra,28(sp)
	.cfi_offset 1, -4
.LBB65:
.LBB60:
	.loc 1 254 30
	sh	a4,8(sp)
	.loc 1 256 9 is_stmt 1
	.loc 1 257 9
	.loc 1 257 23 is_stmt 0
	sh	a5,12(sp)
	.loc 1 258 9 is_stmt 1
	.loc 1 258 24 is_stmt 0
	sh	zero,14(sp)
	.loc 1 259 9 is_stmt 1
	.loc 1 259 16 is_stmt 0
	call	usbh_roothub_control
.LVL84:
.LBE60:
.LBE65:
	.loc 1 263 1
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE40:
	.size	usbh_hub_set_feature, .-usbh_hub_set_feature
	.section	.rodata.usbh_hub_connect.str1.4,"aMS",@progbits,1
	.align	2
.LC3:
	.string	"\033[31m[E/usbh_hub] "
	.align	2
.LC4:
	.string	"Hub depth(%d) is overflow\r\n"
	.align	2
.LC5:
	.string	"Unable to set hub depth \r\n"
	.align	2
.LC6:
	.string	"invalid device bLength 0x%02x\r\n"
	.align	2
.LC7:
	.string	"unexpected descriptor 0x%02x\r\n"
	.align	2
.LC8:
	.string	"SuperSpeed Hub Descriptor:\r\n"
	.align	2
.LC9:
	.string	"bLength: 0x%02x             \r\n"
	.align	2
.LC10:
	.string	"bDescriptorType: 0x%02x     \r\n"
	.align	2
.LC11:
	.string	"bNbrPorts: 0x%02x           \r\n"
	.align	2
.LC12:
	.string	"wHubCharacteristics: 0x%04x \r\n"
	.align	2
.LC13:
	.string	"bPwrOn2PwrGood: 0x%02x      \r\n"
	.align	2
.LC14:
	.string	"bHubContrCurrent: 0x%02x    \r\n"
	.align	2
.LC15:
	.string	"DeviceRemovable: 0x%02x     \r\n"
	.align	2
.LC16:
	.string	"Hub Descriptor:\r\n"
	.align	2
.LC17:
	.string	"PortPwrCtrlMask: 0x%02x     \r\n"
	.align	2
.LC18:
	.string	"Ep=%02x Attr=%02u Mps=%d Interval=%02u Mult=%02u\r\n"
	.align	2
.LC19:
	.string	"port %u, status:0x%02x, change:0x%02x\r\n"
	.align	2
.LC20:
	.string	"/dev/hub%d"
	.align	2
.LC21:
	.string	"Register HUB Class:%s\r\n"
	.align	2
.LC22:
	.string	"hubint_tim"
	.align	2
.LC23:
	.string	"No memory to alloc int_timer\r\n"
	.align	2
.LC24:
	.string	"Fail to alloc hub_class\r\n"
	.section	.text.usbh_hub_connect,"ax",@progbits
	.align	1
	.type	usbh_hub_connect, @function
usbh_hub_connect:
.LFB45:
	.loc 1 325 1 is_stmt 1
	.cfi_startproc
.LVL85:
	.loc 1 326 5
	.loc 1 327 5
	.loc 1 328 5
	.loc 1 330 5
.LBB83:
.LBB84:
	.loc 1 46 5
	.loc 1 48 5
	.loc 1 48 21
	.loc 1 49 9
	.loc 1 49 25 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	lw	a4,0(a5)
.LBE84:
.LBE83:
	.loc 1 325 1
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	sw	s3,44(sp)
	sw	s4,40(sp)
	sw	s5,36(sp)
	sw	s6,32(sp)
	sw	s7,28(sp)
	sw	s8,24(sp)
	sw	s9,20(sp)
	sw	s10,16(sp)
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
.LBB87:
.LBB85:
	.loc 1 49 25
	andi	a3,a4,1
	.loc 1 49 12
	bne	a3,zero,.L60
	.loc 1 51 13
	lui	s5,%hi(g_hub_class)
	li	s0,20480
	mv	s3,a0
	.loc 1 50 24
	ori	a4,a4,1
	.loc 1 51 13
	addi	a2,s0,68
	mv	s4,a1
	.loc 1 50 13 is_stmt 1
	.loc 1 51 13 is_stmt 0
	addi	a0,s5,%lo(g_hub_class)
.LVL86:
	li	a1,0
.LVL87:
	.loc 1 50 24
	sw	a4,0(a5)
	.loc 1 51 13 is_stmt 1
	call	memset
.LVL88:
	.loc 1 52 13
	.loc 1 52 38 is_stmt 0
	addi	a5,s5,%lo(g_hub_class)
	li	a4,2
	sb	a4,2(a5)
	.loc 1 53 13 is_stmt 1
.LVL89:
.LBE85:
.LBE87:
	.loc 1 331 5
	.loc 1 336 5
	.loc 1 336 19 is_stmt 0
	lbu	a4,2(s3)
	.loc 1 337 17
	add	s0,a5,s0
	sw	s3,-16(s0)
	.loc 1 336 19
	sb	a4,3(a5)
	.loc 1 337 5 is_stmt 1
	.loc 1 338 5
	.loc 1 338 21 is_stmt 0
	li	a4,4096
	add	a3,s3,a4
	lw	a0,932(a3)
	.loc 1 342 35
	li	a1,620
	lui	s2,%hi(g_hub_class+20480)
	.loc 1 338 14
	sw	a0,-12(s0)
	.loc 1 339 5 is_stmt 1
	.loc 1 339 23 is_stmt 0
	lbu	a2,3(s3)
	.loc 1 341 17
	sw	a5,928(a3)
	.loc 1 342 35
	mv	a3,s3
	mula	a3,s4,a1
	.loc 1 339 16
	sb	a2,4(a5)
	.loc 1 341 5 is_stmt 1
	.loc 1 342 5
	addi	s0,s5,%lo(g_hub_class)
	addi	s2,s2,%lo(g_hub_class+20480)
	.loc 1 342 35 is_stmt 0
	sw	a5,60(a3)
	.loc 1 344 5 is_stmt 1
	.loc 1 344 14 is_stmt 0
	lbu	a5,4(s3)
	.loc 1 344 8
	li	a3,5
	bleu	a5,a3,.L61
	.loc 1 345 9 is_stmt 1
	.loc 1 345 14
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	call	printf
.LVL90:
	.loc 1 345 65
	lbu	a1,4(s3)
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	call	printf
.LVL91:
	.loc 1 345 120
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL92:
	.loc 1 345 147
	.loc 1 346 9
	.loc 1 346 16 is_stmt 0
	li	s1,-2
.LVL93:
.L59:
	.loc 1 436 1
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
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
	lw	s9,20(sp)
	.cfi_restore 25
	lw	s10,16(sp)
	.cfi_restore 26
	mv	a0,s1
	lw	s1,52(sp)
	.cfi_restore 9
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL94:
.L61:
	.cfi_restore_state
	.loc 1 355 5 is_stmt 1
	.loc 1 355 8 is_stmt 0
	beq	a5,zero,.L63
	.loc 1 355 29 discriminator 1
	bne	a2,a3,.L64
	.loc 1 356 9 is_stmt 1
.LBB88:
.LBB89:
	.loc 1 289 8 is_stmt 0
	lbu	a3,1(s0)
.LBE89:
.LBE88:
	.loc 1 356 15
	addi	a5,a5,-1
	extu	a5,a5,15,0
.LVL95:
.LBB96:
.LBB94:
	.loc 1 286 5 is_stmt 1
	.loc 1 287 5
	.loc 1 289 5
	.loc 1 289 8 is_stmt 0
	beq	a3,zero,.L65
	.loc 1 290 9 is_stmt 1
.LVL96:
	.loc 1 291 9
	.loc 1 292 9
	.loc 1 291 30 is_stmt 0
	addi	a4,a4,-992
	.loc 1 296 16
	li	a2,0
	addi	a1,sp,8
.LVL97:
	.loc 1 291 30
	sh	a4,8(sp)
	.loc 1 293 9 is_stmt 1
	.loc 1 293 23 is_stmt 0
	sh	a5,10(sp)
	.loc 1 294 9 is_stmt 1
	.loc 1 295 9
	.loc 1 294 23 is_stmt 0
	sw	zero,12(sp)
	.loc 1 296 9 is_stmt 1
	.loc 1 296 16 is_stmt 0
	call	usbh_roothub_control
.LVL98:
.L88:
.LBB90:
.LBB91:
	.loc 1 178 12
	mv	s1,a0
.LVL99:
.LBE91:
.LBE90:
.LBE94:
.LBE96:
	.loc 1 357 9 is_stmt 1
	.loc 1 357 12 is_stmt 0
	bge	a0,zero,.L63
	.loc 1 358 13 is_stmt 1
	.loc 1 358 18
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	call	printf
.LVL100:
	.loc 1 358 69
	lui	a0,%hi(.LC5)
	addi	a0,a0,%lo(.LC5)
	call	printf
.LVL101:
	.loc 1 358 109
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL102:
	.loc 1 358 136
	.loc 1 359 13
	.loc 1 359 20 is_stmt 0
	j	.L59
.LVL103:
.L65:
.LBB97:
.LBB95:
	.loc 1 298 9 is_stmt 1
	lw	a0,-16(s2)
.LVL104:
.LBB93:
.LBB92:
	.loc 1 168 5
	.loc 1 170 5
	.loc 1 178 12 is_stmt 0
	li	a2,0
	.loc 1 170 11
	add	a4,a0,a4
	lw	a1,920(a4)
.LVL105:
	.loc 1 172 5 is_stmt 1
	.loc 1 172 26 is_stmt 0
	li	a4,32
	sb	a4,0(a1)
	.loc 1 173 5 is_stmt 1
	.loc 1 174 19 is_stmt 0
	sb	a5,2(a1)
	.loc 1 173 21
	li	a4,12
	.loc 1 174 19
	srli	a5,a5,8
.LVL106:
	.loc 1 173 21
	sb	a4,1(a1)
	.loc 1 174 5 is_stmt 1
	.loc 1 174 19 is_stmt 0
	sb	a5,3(a1)
	.loc 1 175 5 is_stmt 1
	.loc 1 175 19 is_stmt 0
	sb	zero,4(a1)
	sb	zero,5(a1)
	.loc 1 176 5 is_stmt 1
	.loc 1 176 20 is_stmt 0
	sb	zero,6(a1)
	sb	zero,7(a1)
	.loc 1 178 5 is_stmt 1
	.loc 1 178 12 is_stmt 0
	call	usbh_control_transfer
.LVL107:
	j	.L88
.LVL108:
.L63:
.LBE92:
.LBE93:
.LBE95:
.LBE97:
	.loc 1 364 5 is_stmt 1
	.loc 1 364 8 is_stmt 0
	lbu	a4,3(s3)
	li	a5,5
	bne	a4,a5,.L64
.LBB98:
.LBB99:
	.loc 1 96 16
	lw	a0,-16(s2)
	.loc 1 96 11
	li	a5,4096
	.loc 1 105 62
	lui	s6,%hi(.LANCHOR1)
	.loc 1 96 11
	add	a5,a0,a5
	lw	a1,920(a5)
	.loc 1 105 71
	lw	a5,-12(s2)
	.loc 1 100 19
	li	s7,42
	.loc 1 105 62
	addi	s6,s6,%lo(.LANCHOR1)
	.loc 1 105 71
	lbu	a2,4(a5)
.LBE99:
.LBE98:
	.loc 1 365 9 is_stmt 1
.LVL109:
.LBB101:
.LBB100:
	.loc 1 93 5
	.loc 1 94 5
	.loc 1 96 5
	.loc 1 98 5
	.loc 1 98 26 is_stmt 0
	li	a5,-96
	sb	a5,0(a1)
.LVL110:
	.loc 1 99 5 is_stmt 1
	.loc 1 99 21 is_stmt 0
	li	a5,6
	sb	a5,1(a1)
	.loc 1 100 5 is_stmt 1
	.loc 1 105 62 is_stmt 0
	slli	a2,a2,5
	.loc 1 103 20
	li	a5,11
	.loc 1 100 19
	sb	zero,2(a1)
	sb	s7,3(a1)
	.loc 1 102 5 is_stmt 1
	.loc 1 102 19 is_stmt 0
	sb	zero,4(a1)
	sb	zero,5(a1)
	.loc 1 103 5 is_stmt 1
	.loc 1 103 20 is_stmt 0
	sb	a5,6(a1)
	sb	zero,7(a1)
	.loc 1 105 5 is_stmt 1
	.loc 1 105 11 is_stmt 0
	add	a2,s6,a2
	call	usbh_control_transfer
.LVL111:
	mv	s1,a0
.LVL112:
	.loc 1 106 5 is_stmt 1
	.loc 1 106 8 is_stmt 0
	blt	a0,zero,.L59
	.loc 1 109 5 is_stmt 1
	.loc 1 109 42 is_stmt 0
	lw	a5,-12(s2)
	.loc 1 109 5
	lui	a0,%hi(g_hub_class+18)
	li	a2,11
	.loc 1 109 33
	lbu	a1,4(a5)
	.loc 1 109 5
	addi	a0,a0,%lo(g_hub_class+18)
	.loc 1 109 33
	slli	a1,a1,5
	.loc 1 109 5
	add	a1,s6,a1
	call	usb_memcpy.isra.0
.LVL113:
	.loc 1 110 5 is_stmt 1
.LBE100:
.LBE101:
	.loc 1 366 9
	.loc 1 370 9
.LBB102:
.LBB103:
	.loc 1 207 5
	.loc 1 209 5
	.loc 1 209 8 is_stmt 0
	lbu	a4,18(s0)
	li	a5,10
	bgtu	a4,a5,.L67
	.loc 1 210 9 is_stmt 1
	.loc 1 210 14
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	call	printf
.LVL114:
	.loc 1 210 65
	lbu	a1,18(s0)
	lui	a0,%hi(.LC6)
	addi	a0,a0,%lo(.LC6)
.L89:
	.loc 1 213 65 is_stmt 0
	call	printf
.LVL115:
	.loc 1 213 132 is_stmt 1
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL116:
	.loc 1 213 159
	.loc 1 214 9
.L68:
.LBE103:
.LBE102:
	.loc 1 371 9
	.loc 1 371 21 is_stmt 0
	lbu	a5,20(s0)
	.loc 1 373 23
	sb	zero,7(s0)
	.loc 1 371 21
	sb	a5,5(s0)
	.loc 1 372 9 is_stmt 1
	.loc 1 372 25 is_stmt 0
	lbu	a5,23(s0)
	slli	a5,a5,1
	sb	a5,6(s0)
	.loc 1 373 9 is_stmt 1
.L70:
.LBB105:
	.loc 1 386 5 is_stmt 0 discriminator 1
	li	a3,4096
	.loc 1 386 38 discriminator 1
	lbu	a2,5(s0)
	addi	a4,s5,%lo(g_hub_class)
	li	a5,0
	.loc 1 386 5 discriminator 1
	addi	a1,a3,1012
	.loc 1 389 37 discriminator 1
	add	a0,s3,a3
	j	.L74
.LVL117:
.L67:
.LBE105:
.LBB106:
.LBB104:
	.loc 1 212 12 is_stmt 1
	.loc 1 212 15 is_stmt 0
	lbu	a5,19(s0)
	beq	a5,s7,.L69
	.loc 1 213 9 is_stmt 1
	.loc 1 213 14
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	call	printf
.LVL118:
	.loc 1 213 65
	lui	a0,%hi(.LC7)
	lbu	a1,19(s0)
	addi	a0,a0,%lo(.LC7)
	j	.L89
.L69:
	.loc 1 216 9
	lui	a0,%hi(.LC8)
	addi	a0,a0,%lo(.LC8)
	call	printf
.LVL119:
	.loc 1 217 9
	lbu	a1,18(s0)
	lui	a0,%hi(.LC9)
	addi	a0,a0,%lo(.LC9)
	call	printf
.LVL120:
	.loc 1 218 9
	lbu	a1,19(s0)
	lui	a0,%hi(.LC10)
	addi	a0,a0,%lo(.LC10)
	call	printf
.LVL121:
	.loc 1 219 9
	lbu	a1,20(s0)
	lui	a0,%hi(.LC11)
	addi	a0,a0,%lo(.LC11)
	call	printf
.LVL122:
	.loc 1 220 9
	.loc 1 220 56 is_stmt 0
	lw	a1,20(s0)
	.loc 1 220 9
	lui	a0,%hi(.LC12)
	addi	a0,a0,%lo(.LC12)
	extu	a1,a1,8+16-1,8
	call	printf
.LVL123:
	.loc 1 221 9 is_stmt 1
	lbu	a1,23(s0)
	lui	a0,%hi(.LC13)
	addi	a0,a0,%lo(.LC13)
	call	printf
.LVL124:
	.loc 1 222 9
	lbu	a1,24(s0)
	lui	a0,%hi(.LC14)
	addi	a0,a0,%lo(.LC14)
	call	printf
.LVL125:
	.loc 1 223 9
	lbu	a1,28(s0)
	lui	a0,%hi(.LC15)
	addi	a0,a0,%lo(.LC15)
	call	printf
.LVL126:
	.loc 1 225 5
	.loc 1 225 12 is_stmt 0
	j	.L68
.LVL127:
.L64:
.LBE104:
.LBE106:
	.loc 1 375 9 is_stmt 1
.LBB107:
.LBB108:
	.loc 1 71 5
	.loc 1 72 5
	.loc 1 74 5
	.loc 1 74 16 is_stmt 0
	lw	a0,-16(s2)
	.loc 1 74 11
	li	a5,4096
	.loc 1 78 19
	li	s7,41
	.loc 1 74 11
	add	a5,a0,a5
	lw	a1,920(a5)
.LVL128:
	.loc 1 76 5 is_stmt 1
	.loc 1 76 26 is_stmt 0
	li	a5,-96
	.loc 1 81 20
	li	s8,9
	.loc 1 76 26
	sb	a5,0(a1)
	.loc 1 77 5 is_stmt 1
	.loc 1 77 21 is_stmt 0
	li	a5,6
	sb	a5,1(a1)
	.loc 1 78 5 is_stmt 1
	.loc 1 83 71 is_stmt 0
	lw	a5,-12(s2)
	.loc 1 78 19
	sb	zero,2(a1)
	sb	s7,3(a1)
	.loc 1 80 5 is_stmt 1
	.loc 1 80 19 is_stmt 0
	sb	zero,4(a1)
	sb	zero,5(a1)
	.loc 1 81 5 is_stmt 1
	.loc 1 81 20 is_stmt 0
	sb	s8,6(a1)
	sb	zero,7(a1)
	.loc 1 83 5 is_stmt 1
	.loc 1 83 62 is_stmt 0
	lbu	a2,4(a5)
	lui	s6,%hi(.LANCHOR1)
	addi	s6,s6,%lo(.LANCHOR1)
	slli	a2,a2,5
	.loc 1 83 11
	add	a2,s6,a2
	call	usbh_control_transfer
.LVL129:
	mv	s1,a0
.LVL130:
	.loc 1 84 5 is_stmt 1
	.loc 1 84 8 is_stmt 0
	blt	a0,zero,.L59
	.loc 1 87 5 is_stmt 1
	.loc 1 87 42 is_stmt 0
	lw	a5,-12(s2)
	.loc 1 87 5
	lui	a0,%hi(g_hub_class+9)
	li	a2,9
	.loc 1 87 33
	lbu	a1,4(a5)
	.loc 1 87 5
	addi	a0,a0,%lo(g_hub_class+9)
	.loc 1 87 33
	slli	a1,a1,5
	.loc 1 87 5
	add	a1,s6,a1
	call	usb_memcpy.isra.0
.LVL131:
	.loc 1 88 5 is_stmt 1
.LBE108:
.LBE107:
	.loc 1 376 9
	.loc 1 380 9
.LBB109:
.LBB110:
	.loc 1 183 5
	.loc 1 185 5
	.loc 1 185 8 is_stmt 0
	lbu	a5,9(s0)
	beq	a5,s8,.L71
	.loc 1 186 9 is_stmt 1
	.loc 1 186 14
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	call	printf
.LVL132:
	.loc 1 186 65
	lbu	a1,9(s0)
	lui	a0,%hi(.LC6)
	addi	a0,a0,%lo(.LC6)
.L90:
	.loc 1 189 65 is_stmt 0
	call	printf
.LVL133:
	.loc 1 189 132 is_stmt 1
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL134:
	.loc 1 189 159
	.loc 1 190 9
.L72:
.LBE110:
.LBE109:
	.loc 1 381 9
	.loc 1 381 21 is_stmt 0
	lbu	a5,11(s0)
	sb	a5,5(s0)
	.loc 1 382 9 is_stmt 1
	.loc 1 382 25 is_stmt 0
	lbu	a5,14(s0)
	slli	a5,a5,1
	sb	a5,6(s0)
	.loc 1 383 9 is_stmt 1
	.loc 1 383 75 is_stmt 0
	lhu	a5,12(s0)
	extu	a5,a5,5+2-1,5
	.loc 1 383 23
	sb	a5,7(s0)
	j	.L70
.LVL135:
.L71:
.LBB112:
.LBB111:
	.loc 1 188 12 is_stmt 1
	.loc 1 188 15 is_stmt 0
	lbu	a5,10(s0)
	beq	a5,s7,.L73
	.loc 1 189 9 is_stmt 1
	.loc 1 189 14
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	call	printf
.LVL136:
	.loc 1 189 65
	lui	a0,%hi(.LC7)
	lbu	a1,10(s0)
	addi	a0,a0,%lo(.LC7)
	j	.L90
.L73:
	.loc 1 192 9
	lui	a0,%hi(.LC16)
	addi	a0,a0,%lo(.LC16)
	call	printf
.LVL137:
	.loc 1 193 9
	lbu	a1,9(s0)
	lui	a0,%hi(.LC9)
	addi	a0,a0,%lo(.LC9)
	call	printf
.LVL138:
	.loc 1 194 9
	lbu	a1,10(s0)
	lui	a0,%hi(.LC10)
	addi	a0,a0,%lo(.LC10)
	call	printf
.LVL139:
	.loc 1 195 9
	lbu	a1,11(s0)
	lui	a0,%hi(.LC11)
	addi	a0,a0,%lo(.LC11)
	call	printf
.LVL140:
	.loc 1 196 9
	lhu	a1,12(s0)
	lui	a0,%hi(.LC12)
	addi	a0,a0,%lo(.LC12)
	call	printf
.LVL141:
	.loc 1 197 9
	lbu	a1,14(s0)
	lui	a0,%hi(.LC13)
	addi	a0,a0,%lo(.LC13)
	call	printf
.LVL142:
	.loc 1 198 9
	lbu	a1,15(s0)
	lui	a0,%hi(.LC14)
	addi	a0,a0,%lo(.LC14)
	call	printf
.LVL143:
	.loc 1 199 9
	lbu	a1,16(s0)
	lui	a0,%hi(.LC15)
	addi	a0,a0,%lo(.LC15)
	call	printf
.LVL144:
	.loc 1 200 9
	lbu	a1,17(s0)
	lui	a0,%hi(.LC17)
	addi	a0,a0,%lo(.LC17)
	call	printf
.LVL145:
	.loc 1 202 5
	.loc 1 202 12 is_stmt 0
	j	.L72
.LVL146:
.L75:
.LBE111:
.LBE112:
.LBB113:
	.loc 1 387 9 is_stmt 1 discriminator 3
	.loc 1 387 38 is_stmt 0 discriminator 3
	addi	a5,a5,1
.LVL147:
	.loc 1 387 31 discriminator 3
	sub	a6,a4,a3
	.loc 1 387 38 discriminator 3
	andi	a5,a5,0xff
	.loc 1 387 31 discriminator 3
	sb	a5,-979(a6)
	.loc 1 388 9 is_stmt 1 discriminator 3
	.loc 1 389 37 is_stmt 0 discriminator 3
	lw	a6,932(a0)
	.loc 1 388 33 discriminator 3
	sw	s0,-56(a4)
	.loc 1 389 9 is_stmt 1 discriminator 3
	.loc 1 389 30 is_stmt 0 discriminator 3
	sw	a6,-48(a4)
	.loc 1 386 48 is_stmt 1 discriminator 3
.LVL148:
.L74:
	.loc 1 386 28 discriminator 1
	.loc 1 386 5 is_stmt 0 discriminator 1
	add	a4,a4,a1
	bne	a2,a5,.L75
.LBE113:
	.loc 1 392 5 is_stmt 1
	.loc 1 392 8 is_stmt 0
	lbu	a5,13(s3)
.LVL149:
	.loc 1 402 16
	li	s1,-1
.LVL150:
	.loc 1 392 8
	addi	a5,a5,-2
	seqz	a5,a5
	sb	a5,8(s0)
	.loc 1 398 5 is_stmt 1
	li	a5,620
	mul	s4,s4,a5
	.loc 1 399 16 is_stmt 0
	add	s6,s3,s4
	.loc 1 399 8
	lb	a4,75(s6)
	.loc 1 398 13
	addi	a5,s4,73
	add	a5,s3,a5
.LVL151:
	.loc 1 399 5 is_stmt 1
	.loc 1 399 8 is_stmt 0
	bge	a4,zero,.L59
	.loc 1 400 9 is_stmt 1
	.loc 1 400 14
	.loc 1 400 41 is_stmt 0
	lui	s8,%hi(.LC0)
	addi	a0,s8,%lo(.LC0)
	.loc 1 400 25
	sw	a5,-8(s2)
	.loc 1 400 36 is_stmt 1
	.loc 1 400 41
	call	printf
.LVL152:
	.loc 1 400 92
	.loc 1 400 214 is_stmt 0
	lw	a3,76(s6)
	.loc 1 400 92
	lbu	a4,79(s6)
	lbu	a2,76(s6)
	lbu	a1,75(s6)
	lui	a0,%hi(.LC18)
	extu	a5,a3,19+2-1,19
	addi	a0,a0,%lo(.LC18)
	extu	a3,a3,8+11-1,8
	call	printf
.LVL153:
	.loc 1 400 322 is_stmt 1
	lui	s6,%hi(.LC2)
	addi	a0,s6,%lo(.LC2)
	call	printf
.LVL154:
	.loc 1 400 349
	.loc 1 400 362
	.loc 1 405 5
.LBB114:
	.loc 1 405 10
	.loc 1 405 18 is_stmt 0
	li	s7,0
.LVL155:
.L76:
	.loc 1 405 28 is_stmt 1 discriminator 1
	.loc 1 405 5 is_stmt 0 discriminator 1
	lbu	a5,5(s0)
	bgtu	a5,s7,.L77
.LBE114:
	.loc 1 412 5 is_stmt 1
	lbu	a0,6(s0)
.LBB115:
	.loc 1 416 65 is_stmt 0
	lui	s10,%hi(.LC19)
.LBE115:
	.loc 1 412 5
	call	usb_osal_msleep
.LVL156:
	.loc 1 414 5 is_stmt 1
.LBB116:
	.loc 1 414 10
	.loc 1 414 18 is_stmt 0
	li	a1,0
.LVL157:
.L78:
	.loc 1 414 28 is_stmt 1 discriminator 1
	.loc 1 414 5 is_stmt 0 discriminator 1
	lbu	a5,5(s0)
	bgtu	a5,a1,.L79
.LBE116:
	.loc 1 422 5 is_stmt 1
	.loc 1 423 5 is_stmt 0
	lbu	a3,2(s0)
	.loc 1 423 38
	addi	s4,s4,40
.LVL158:
	add	s4,s3,s4
.LVL159:
	.loc 1 422 20
	li	s1,1
	.loc 1 423 5
	lui	a2,%hi(.LC20)
	addi	a2,a2,%lo(.LC20)
	li	a1,16
.LVL160:
	.loc 1 422 20
	sb	s1,0(s0)
	.loc 1 423 5 is_stmt 1
	mv	a0,s4
	call	snprintf
.LVL161:
	.loc 1 425 5
	.loc 1 425 10
	addi	a0,s8,%lo(.LC0)
	call	printf
.LVL162:
	.loc 1 425 61
	lui	a0,%hi(.LC21)
	mv	a1,s4
	addi	a0,a0,%lo(.LC21)
	call	printf
.LVL163:
	.loc 1 425 132
	addi	a0,s6,%lo(.LC2)
	call	printf
.LVL164:
	.loc 1 425 159
	.loc 1 427 5
	.loc 1 427 44 is_stmt 0
	lw	a4,-12(s2)
	.loc 1 427 23
	lui	a5,%hi(.LANCHOR1+32)
	addi	a5,a5,%lo(.LANCHOR1+32)
	lbu	a3,4(a4)
	.loc 1 427 56
	lbu	a4,2(s0)
	.loc 1 427 64
	addi	a4,a4,-1
	.loc 1 427 23
	addsl	a4, a4, a3, 1
	addsl	a5, a5, a4, 2
	.loc 1 427 21
	sw	a5,60(s2)
	.loc 1 429 5 is_stmt 1
	.loc 1 429 22 is_stmt 0
	lbu	a3,3(s3)
	lw	a5,-8(s2)
	li	a4,2
	lbu	a1,6(a5)
	bgtu	a3,a4,.L80
.L81:
	.loc 1 429 22 discriminator 4
	lui	a2,%hi(hub_int_timeout)
	lui	a0,%hi(.LC22)
	li	a4,0
	addi	a3,s5,%lo(g_hub_class)
	addi	a2,a2,%lo(hub_int_timeout)
	addi	a0,a0,%lo(.LC22)
	call	usb_osal_timer_create
.LVL165:
	.loc 1 429 20 discriminator 4
	sw	a0,64(s2)
	.loc 1 430 5 is_stmt 1 discriminator 4
	.loc 1 430 8 is_stmt 0 discriminator 4
	bne	a0,zero,.L82
	.loc 1 431 9 is_stmt 1
	.loc 1 431 14
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	call	printf
.LVL166:
	.loc 1 431 65
	lui	a0,%hi(.LC23)
	addi	a0,a0,%lo(.LC23)
	call	printf
.LVL167:
	.loc 1 431 109
	addi	a0,s6,%lo(.LC2)
.LVL168:
.L91:
	.loc 1 332 104 is_stmt 0
	call	printf
.LVL169:
	.loc 1 332 131 is_stmt 1
	.loc 1 333 9
	.loc 1 333 16 is_stmt 0
	li	s1,-1
	j	.L59
.LVL170:
.L77:
.LBB117:
	.loc 1 406 9 is_stmt 1
	.loc 1 406 15 is_stmt 0
	addi	s7,s7,1
.LVL171:
	andi	s7,s7,0xff
	li	a2,8
	mv	a1,s7
	addi	a0,s5,%lo(g_hub_class)
	call	usbh_hub_set_feature
.LVL172:
	mv	s1,a0
	.loc 1 407 9 is_stmt 1
	.loc 1 407 12 is_stmt 0
	bge	a0,zero,.L76
	j	.L59
.LVL173:
.L79:
.LBE117:
.LBB118:
	.loc 1 415 9 is_stmt 1
	.loc 1 415 15 is_stmt 0
	addi	s9,a1,1
	andi	s7,s9,0xff
	addi	a2,sp,8
	mv	a1,s7
.LVL174:
	addi	a0,s5,%lo(g_hub_class)
	call	usbh_hub_get_portstatus
.LVL175:
	mv	s1,a0
	.loc 1 416 9 is_stmt 1
	.loc 1 416 14
	addi	a0,s8,%lo(.LC0)
.LVL176:
	call	printf
.LVL177:
	.loc 1 416 65
	lhu	a3,10(sp)
	lhu	a2,8(sp)
	mv	a1,s9
	addi	a0,s10,%lo(.LC19)
	call	printf
.LVL178:
	.loc 1 416 178
	addi	a0,s6,%lo(.LC2)
	call	printf
.LVL179:
	.loc 1 416 205
	.loc 1 417 9
	.loc 1 417 12 is_stmt 0
	blt	s1,zero,.L59
	.loc 1 414 52
	mv	a1,s7
	j	.L78
.LVL180:
.L80:
.LBE118:
	.loc 1 429 131 discriminator 2
	addi	a1,a1,-1
	.loc 1 429 105 discriminator 2
	sll	a1,s1,a1
	j	.L81
.L82:
	.loc 1 434 5 is_stmt 1
	call	usb_osal_timer_start
.LVL181:
	.loc 1 435 5
	.loc 1 435 12 is_stmt 0
	li	s1,0
	j	.L59
.LVL182:
.L60:
.LBB119:
.LBB86:
	.loc 1 48 21 is_stmt 1
.LBE86:
.LBE119:
	.loc 1 331 5
	.loc 1 332 9
	.loc 1 332 14
	lui	a0,%hi(.LC3)
.LVL183:
	addi	a0,a0,%lo(.LC3)
	call	printf
.LVL184:
	.loc 1 332 65
	lui	a0,%hi(.LC24)
	addi	a0,a0,%lo(.LC24)
	call	printf
.LVL185:
	.loc 1 332 104
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	j	.L91
	.cfi_endproc
.LFE45:
	.size	usbh_hub_connect, .-usbh_hub_connect
	.section	.text.usbh_hub_clear_feature,"ax",@progbits
	.align	1
	.globl	usbh_hub_clear_feature
	.type	usbh_hub_clear_feature, @function
usbh_hub_clear_feature:
.LFB41:
	.loc 1 266 1
	.cfi_startproc
.LVL186:
	.loc 1 267 5
	.loc 1 268 5
	.loc 1 270 5
	.loc 1 270 8 is_stmt 0
	lbu	a4,1(a0)
.LBB124:
.LBB125:
	.loc 1 274 23
	extu	a2,a2,15,0
.LVL187:
	.loc 1 275 23
	extu	a5,a1,15,0
.LBE125:
.LBE124:
	.loc 1 270 8
	bne	a4,zero,.L96
	.loc 1 279 9 is_stmt 1
	li	a4,20480
	add	a0,a0,a4
.LVL188:
	lw	a0,-16(a0)
.LVL189:
.LBB129:
.LBB130:
	.loc 1 152 5
	.loc 1 154 5
	.loc 1 154 11 is_stmt 0
	li	a4,4096
	add	a4,a0,a4
	lw	a1,920(a4)
.LVL190:
	.loc 1 156 5 is_stmt 1
	.loc 1 156 26 is_stmt 0
	li	a4,35
	sb	a4,0(a1)
	.loc 1 157 5 is_stmt 1
	.loc 1 157 21 is_stmt 0
	li	a4,1
	.loc 1 158 19
	sb	a2,2(a1)
	.loc 1 157 21
	sb	a4,1(a1)
	.loc 1 158 5 is_stmt 1
	.loc 1 158 19 is_stmt 0
	sb	zero,3(a1)
	.loc 1 159 5 is_stmt 1
	.loc 1 159 19 is_stmt 0
	sb	a5,4(a1)
	sb	zero,5(a1)
	.loc 1 160 5 is_stmt 1
	.loc 1 160 20 is_stmt 0
	sb	zero,6(a1)
	sb	zero,7(a1)
	.loc 1 162 5 is_stmt 1
	.loc 1 162 12 is_stmt 0
	li	a2,0
	tail	usbh_control_transfer
.LVL191:
.L96:
.LBE130:
.LBE129:
.LBB131:
.LBB126:
	.loc 1 271 9 is_stmt 1
	li	a4,20480
	add	a0,a0,a4
.LVL192:
	.loc 1 277 16 is_stmt 0
	lw	a0,-12(a0)
.LVL193:
.LBE126:
.LBE131:
	.loc 1 266 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
.LVL194:
.LBB132:
.LBB127:
	.loc 1 272 9 is_stmt 1
	.loc 1 273 9
	.loc 1 274 23 is_stmt 0
	sh	a2,10(sp)
	.loc 1 272 30
	li	a4,291
	.loc 1 277 16
	addi	a1,sp,8
.LVL195:
	li	a2,0
.LBE127:
.LBE132:
	.loc 1 266 1
	sw	ra,28(sp)
	.cfi_offset 1, -4
.LBB133:
.LBB128:
	.loc 1 272 30
	sh	a4,8(sp)
	.loc 1 274 9 is_stmt 1
	.loc 1 275 9
	.loc 1 275 23 is_stmt 0
	sh	a5,12(sp)
	.loc 1 276 9 is_stmt 1
	.loc 1 276 24 is_stmt 0
	sh	zero,14(sp)
	.loc 1 277 9 is_stmt 1
	.loc 1 277 16 is_stmt 0
	call	usbh_roothub_control
.LVL196:
.LBE128:
.LBE133:
	.loc 1 281 1
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE41:
	.size	usbh_hub_clear_feature, .-usbh_hub_clear_feature
	.section	.rodata.usbh_hub_thread.str1.4,"aMS",@progbits,1
	.align	2
.LC25:
	.string	"Failed to read port %u status, errorcode: %d\r\n"
	.align	2
.LC26:
	.string	"Failed to clear port %u, change mask:%04x, errorcode:%d\r\n"
	.align	2
.LC27:
	.string	"Failed to debounce port %u\r\n"
	.align	2
.LC28:
	.string	"Failed to reset port %u,errorcode:%d\r\n"
	.align	2
.LC29:
	.string	"Failed to clear port %u reset change, errorcode: %d\r\n"
	.align	2
.LC30:
	.string	"\033[33m[W/usbh_hub] "
	.align	2
.LC31:
	.string	"Port %u does not enable power\r\n"
	.align	2
.LC32:
	.string	"New %s device on Bus %u, Hub %u, Port %u connected\r\n"
	.align	2
.LC33:
	.string	"Port %u enumerate retry %d/%d\r\n"
	.align	2
.LC34:
	.string	"Failed to enable port %u\r\n"
	.align	2
.LC35:
	.string	"Device on Bus %u, Hub %u, Port %u disconnected\r\n"
	.align	2
.LC36:
	.string	"Port %u enumerate fail\r\n"
	.section	.text.usbh_hub_thread,"ax",@progbits
	.align	1
	.type	usbh_hub_thread, @function
usbh_hub_thread:
.LFB48:
	.loc 1 675 1 is_stmt 1
	.cfi_startproc
.LVL197:
	.loc 1 676 5
	.loc 1 677 5
	.loc 1 679 5
	.loc 1 675 1 is_stmt 0
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
.LVL198:
	.loc 1 681 5 is_stmt 1
	.loc 1 675 1 is_stmt 0
	sw	s6,64(sp)
	sw	ra,92(sp)
	sw	s0,88(sp)
	sw	s1,84(sp)
	sw	s2,80(sp)
	sw	s3,76(sp)
	sw	s4,72(sp)
	sw	s5,68(sp)
	sw	s7,60(sp)
	sw	s8,56(sp)
	sw	s9,52(sp)
	sw	s10,48(sp)
	sw	s11,44(sp)
	.cfi_offset 22, -32
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.cfi_offset 26, -48
	.cfi_offset 27, -52
	.loc 1 675 1
	sw	a0,4(sp)
.LVL199:
	.loc 1 681 5
	call	usb_hc_init
.LVL200:
.LBB141:
.LBB142:
.LBB143:
.LBB144:
	.loc 1 629 77
	lui	a5,%hi(.LANCHOR2)
	addi	a5,a5,%lo(.LANCHOR2)
	.loc 1 655 26
	lui	s6,%hi(.LC30)
	.loc 1 629 77
	sw	a5,8(sp)
.LVL201:
.L102:
.LBE144:
.LBE143:
.LBE142:
.LBE141:
	.loc 1 683 15
	lw	a5,4(sp)
	li	s1,20480
	add	s0,a5,s1
.L100:
	.loc 1 682 5 is_stmt 1
	.loc 1 683 9
	.loc 1 683 15 is_stmt 0
	lw	a0,108(s0)
	li	a2,-1
	addi	a1,sp,24
	call	usb_osal_mq_recv
.LVL202:
	.loc 1 684 9 is_stmt 1
	.loc 1 684 12 is_stmt 0
	blt	a0,zero,.L100
	.loc 1 687 9 is_stmt 1
	lw	s0,24(sp)
.LVL203:
.LBB161:
.LBB160:
	.loc 1 472 5
	.loc 1 473 5
	.loc 1 474 5
	.loc 1 475 5
	.loc 1 476 5
	.loc 1 477 5
	.loc 1 478 5
	.loc 1 479 5
	.loc 1 480 5
	.loc 1 481 5
	.loc 1 483 5
	.loc 1 483 8 is_stmt 0
	lbu	a5,0(s0)
	beq	a5,zero,.L102
	.loc 1 487 5 is_stmt 1
	.loc 1 487 13 is_stmt 0
	call	usb_osal_enter_critical_section
.LVL204:
	.loc 1 488 38
	add	s1,s0,s1
	.loc 1 488 5
	lw	a1,60(s1)
	.loc 1 487 13
	mv	s2,a0
.LVL205:
	.loc 1 488 5 is_stmt 1
	li	a2,2
	addi	a0,sp,22
.LVL206:
	call	usb_memcpy.isra.0
.LVL207:
	.loc 1 489 5
	mv	a0,s2
	call	usb_osal_leave_critical_section
.LVL208:
	.loc 1 491 5
.LBB158:
	.loc 1 491 10
	.loc 1 491 18 is_stmt 0
	li	s2,0
.LVL209:
	.loc 1 519 26
	lui	s4,%hi(.LC3)
.LVL210:
.L103:
	.loc 1 491 28 is_stmt 1
	.loc 1 491 5 is_stmt 0
	lbu	a5,5(s0)
	bleu	a5,s2,.L119
	.loc 1 492 10 is_stmt 1
	.loc 1 492 11
	.loc 1 494 9
	.loc 1 494 13 is_stmt 0
	lhu	a3,22(sp)
	.loc 1 494 46
	addi	s1,s2,1
	.loc 1 501 15
	andi	s3,s1,0xff
	.loc 1 494 13
	sra	a4,a3,s1
	andi	a4,a4,1
	.loc 1 494 12
	beq	a4,zero,.L105
	.loc 1 497 9 is_stmt 1
	.loc 1 497 33 is_stmt 0
	li	a5,1
	sll	a5,a5,s1
	.loc 1 497 26
	not	a5,a5
	and	a5,a5,a3
	.loc 1 501 15
	addi	a2,sp,28
	mv	a1,s3
	mv	a0,s0
	.loc 1 497 26
	sh	a5,22(sp)
	.loc 1 498 10 is_stmt 1
	.loc 1 498 11
	.loc 1 501 9
	.loc 1 501 15 is_stmt 0
	call	usbh_hub_get_portstatus
.LVL211:
	.loc 1 502 9 is_stmt 1
	.loc 1 502 12 is_stmt 0
	bge	a0,zero,.L106
	sw	a0,12(sp)
	.loc 1 503 13 is_stmt 1
	.loc 1 503 18
	addi	a0,s4,%lo(.LC3)
.LVL212:
	call	printf
.LVL213:
	.loc 1 503 69
	lw	a2,12(sp)
	lui	a0,%hi(.LC25)
	mv	a1,s1
	addi	a0,a0,%lo(.LC25)
	call	printf
.LVL214:
	.loc 1 503 144
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
.LVL215:
.L153:
.LBB154:
	.loc 1 663 174 is_stmt 0
	call	printf
.LVL216:
.L105:
	.loc 1 663 201 is_stmt 1
.LBE154:
	.loc 1 491 48
	.loc 1 491 52 is_stmt 0
	mv	s2,s3
	j	.L103
.LVL217:
.L106:
	.loc 1 507 9 is_stmt 1
	.loc 1 507 20 is_stmt 0
	lhu	s5,28(sp)
.LVL218:
	.loc 1 508 9 is_stmt 1
	.loc 1 508 20 is_stmt 0
	lhu	s11,30(sp)
.LVL219:
	.loc 1 510 10 is_stmt 1
	.loc 1 510 11
	.loc 1 513 9
	.loc 1 514 9
	.loc 1 515 9
	.loc 1 514 14 is_stmt 0
	li	s10,16
	.loc 1 513 14
	li	s9,1
	.loc 1 519 77
	lui	s7,%hi(.LC26)
	.loc 1 519 169
	lui	s8,%hi(.LC2)
.LVL220:
.L107:
	.loc 1 515 15 is_stmt 1
	bne	s11,zero,.L111
	.loc 1 528 9
.LVL221:
	.loc 1 531 9
	.loc 1 531 12 is_stmt 0
	lhu	a5,30(sp)
	andi	a5,a5,1
	beq	a5,zero,.L105
.LBB155:
	.loc 1 533 22
	li	s10,0
.LVL222:
	.loc 1 532 22
	li	s8,0
.LBE155:
	li	s7,60
.LBB156:
.LBB145:
	.loc 1 538 152
	lui	s11,%hi(.LC2)
.LVL223:
.L118:
	.loc 1 536 17 is_stmt 1
	.loc 1 536 23 is_stmt 0
	addi	a2,sp,28
	mv	a1,s3
	mv	a0,s0
	call	usbh_hub_get_portstatus
.LVL224:
	.loc 1 537 17 is_stmt 1
	.loc 1 537 20 is_stmt 0
	bge	a0,zero,.L113
	sw	a0,12(sp)
	.loc 1 538 21 is_stmt 1
	.loc 1 538 26
	addi	a0,s4,%lo(.LC3)
.LVL225:
	call	printf
.LVL226:
	.loc 1 538 77
	lw	a2,12(sp)
	lui	a5,%hi(.LC25)
	mv	a1,s1
	addi	a0,a5,%lo(.LC25)
	call	printf
.LVL227:
	.loc 1 538 152
	addi	a0,s11,%lo(.LC2)
	call	printf
.LVL228:
	.loc 1 538 179
	.loc 1 539 21
.L114:
	.loc 1 534 66
	.loc 1 534 45
	.loc 1 534 13 is_stmt 0
	addi	s7,s7,-1
.LVL229:
	bne	s7,zero,.L118
.LBE145:
	.loc 1 566 13 is_stmt 1
	.loc 1 566 16 is_stmt 0
	li	a5,99
	bgtu	s10,a5,.L117
	.loc 1 567 17 is_stmt 1
	.loc 1 567 22
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	call	printf
.LVL230:
	.loc 1 567 73
	lui	a0,%hi(.LC27)
	mv	a1,s1
	addi	a0,a0,%lo(.LC27)
	call	printf
.LVL231:
	.loc 1 567 125
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL232:
	.loc 1 567 152
	.loc 1 568 17
.L119:
.LBE156:
.LBE158:
	.loc 1 669 5
	.loc 1 669 8 is_stmt 0
	lbu	a5,1(s0)
	bne	a5,zero,.L102
	.loc 1 669 26
	lbu	a5,0(s0)
	beq	a5,zero,.L102
	.loc 1 670 9 is_stmt 1
	li	a5,20480
	add	s0,s0,a5
.LVL233:
	lw	a0,64(s0)
	call	usb_osal_timer_start
.LVL234:
	.loc 1 484 9
	j	.L102
.LVL235:
.L111:
.LBB159:
	.loc 1 516 13
	.loc 1 516 16 is_stmt 0
	and	a5,s11,s9
	beq	a5,zero,.L108
	.loc 1 517 17 is_stmt 1
	.loc 1 517 23 is_stmt 0
	andi	a2,s10,0xff
	mv	a1,s3
	mv	a0,s0
	call	usbh_hub_clear_feature
.LVL236:
	.loc 1 518 17 is_stmt 1
	.loc 1 518 20 is_stmt 0
	bge	a0,zero,.L109
	sw	a0,12(sp)
	.loc 1 519 21 is_stmt 1
	.loc 1 519 26
	addi	a0,s4,%lo(.LC3)
.LVL237:
	call	printf
.LVL238:
	.loc 1 519 77
	lw	a3,12(sp)
	mv	a2,s9
	mv	a1,s1
	addi	a0,s7,%lo(.LC26)
	call	printf
.LVL239:
	.loc 1 519 169
	addi	a0,s8,%lo(.LC2)
	call	printf
.LVL240:
	.loc 1 519 196
	.loc 1 520 21
	j	.L107
.LVL241:
.L109:
	.loc 1 522 17
	.loc 1 522 28 is_stmt 0
	not	a5,s9
.LVL242:
	and	s11,a5,s11
.LVL243:
.L108:
	.loc 1 524 13 is_stmt 1
	.loc 1 524 18 is_stmt 0
	slli	s9,s9,1
.LVL244:
	.loc 1 525 17
	addi	s10,s10,1
.LVL245:
	.loc 1 524 18
	extu	s9,s9,15,0
.LVL246:
	.loc 1 525 13 is_stmt 1
	.loc 1 525 17 is_stmt 0
	extu	s10,s10,15,0
.LVL247:
	j	.L107
.LVL248:
.L113:
.LBB157:
.LBB146:
	.loc 1 542 17 is_stmt 1
	lhu	a5,30(sp)
	.loc 1 542 28 is_stmt 0
	lhu	s5,28(sp)
.LVL249:
	.loc 1 543 17 is_stmt 1
	.loc 1 545 18
	.loc 1 545 19
	.loc 1 547 17
	andi	a5,a5,1
	andi	s9,s5,1
	.loc 1 547 20 is_stmt 0
	bne	a5,zero,.L115
	.loc 1 547 46
	bne	s9,s8,.L116
	.loc 1 549 21 is_stmt 1
	.loc 1 549 36 is_stmt 0
	addi	a5,s10,25
	extu	a5,a5,15,0
.LVL250:
	.loc 1 550 21 is_stmt 1
	.loc 1 550 24 is_stmt 0
	li	a4,99
	bleu	a5,a4,.L116
.LVL251:
.L117:
.LBE146:
	.loc 1 572 13 is_stmt 1
	.loc 1 572 16 is_stmt 0
	andi	s5,s5,1
.LVL252:
	lui	s7,%hi(.LC2)
	beq	s5,zero,.L120
	.loc 1 573 17 is_stmt 1
	.loc 1 573 23 is_stmt 0
	li	a2,4
	mv	a1,s3
	mv	a0,s0
	call	usbh_hub_set_feature
.LVL253:
	.loc 1 574 17 is_stmt 1
	.loc 1 574 20 is_stmt 0
	bge	a0,zero,.L121
	sw	a0,12(sp)
	.loc 1 575 21 is_stmt 1
	.loc 1 575 26
	addi	a0,s4,%lo(.LC3)
.LVL254:
	call	printf
.LVL255:
	.loc 1 575 77
	lw	a2,12(sp)
	lui	a0,%hi(.LC28)
	mv	a1,s2
	addi	a0,a0,%lo(.LC28)
.L155:
	.loc 1 583 77 is_stmt 0
	call	printf
.LVL256:
	.loc 1 583 152 is_stmt 1
.L152:
	.loc 1 663 174
	addi	a0,s7,%lo(.LC2)
	j	.L153
.LVL257:
.L115:
.LBB147:
	.loc 1 554 21
	.loc 1 555 21
	.loc 1 558 17
	.loc 1 559 21
	li	a2,16
	mv	a1,s3
	mv	a0,s0
.LVL258:
	call	usbh_hub_clear_feature
.LVL259:
	.loc 1 554 36 is_stmt 0
	li	a5,0
.LVL260:
.L116:
	.loc 1 562 17
	li	a0,25
	sw	a5,12(sp)
	.loc 1 562 17 is_stmt 1
	call	usb_osal_msleep
.LVL261:
	lw	a5,12(sp)
	mv	s8,s9
	mv	s10,a5
	j	.L114
.LVL262:
.L121:
.LBE147:
	.loc 1 579 17
	li	a0,400
.LVL263:
	call	usb_osal_msleep
.LVL264:
	.loc 1 581 17
	.loc 1 581 23 is_stmt 0
	addi	a2,sp,28
	mv	a1,s3
	mv	a0,s0
	call	usbh_hub_get_portstatus
.LVL265:
	.loc 1 582 17 is_stmt 1
	.loc 1 582 20 is_stmt 0
	bge	a0,zero,.L122
	sw	a0,12(sp)
	.loc 1 583 21 is_stmt 1
	.loc 1 583 26
	addi	a0,s4,%lo(.LC3)
.LVL266:
	call	printf
.LVL267:
	.loc 1 583 77
	lui	a0,%hi(.LC25)
	lw	a2,12(sp)
	mv	a1,s1
	addi	a0,a0,%lo(.LC25)
	j	.L155
.LVL268:
.L122:
	.loc 1 587 17
	.loc 1 587 28 is_stmt 0
	lhu	s5,28(sp)
.LVL269:
	.loc 1 588 17 is_stmt 1
	.loc 1 589 17
	.loc 1 589 20 is_stmt 0
	li	a5,2
	andi	a4,s5,18
	bne	a4,a5,.L123
	.loc 1 590 21 is_stmt 1
	.loc 1 590 24 is_stmt 0
	lhu	a5,30(sp)
	andi	a5,a5,16
	beq	a5,zero,.L125
	.loc 1 591 25 is_stmt 1
	.loc 1 591 31 is_stmt 0
	li	a2,20
	mv	a1,s3
	mv	a0,s0
.LVL270:
	call	usbh_hub_clear_feature
.LVL271:
	.loc 1 592 25 is_stmt 1
	.loc 1 592 28 is_stmt 0
	bge	a0,zero,.L125
	sw	a0,12(sp)
	.loc 1 593 29 is_stmt 1
	.loc 1 593 34
	addi	a0,s4,%lo(.LC3)
.LVL272:
	call	printf
.LVL273:
	.loc 1 593 85
	lw	a2,12(sp)
	lui	a0,%hi(.LC29)
	mv	a1,s2
	addi	a0,a0,%lo(.LC29)
	call	printf
.LVL274:
	.loc 1 593 163
	addi	a0,s7,%lo(.LC2)
	call	printf
.LVL275:
.L125:
	.loc 1 593 190
	.loc 1 601 21
	.loc 1 601 24 is_stmt 0
	andi	a5,s5,256
	beq	a5,zero,.L127
	.loc 1 602 25 is_stmt 1
	.loc 1 602 28 is_stmt 0
	andi	a5,s5,1024
	.loc 1 603 35
	li	s9,3
	.loc 1 602 28
	bne	a5,zero,.L128
	.loc 1 604 32 is_stmt 1
	.loc 1 604 35 is_stmt 0
	andi	s5,s5,512
.LVL276:
	.loc 1 607 35
	seqz	s9,s5
	addi	s9,s9,1
.L128:
.LVL277:
	.loc 1 616 21 is_stmt 1
	.loc 1 616 27 is_stmt 0
	li	s5,4096
	addi	a2,s5,1012
	mul	s10,s2,a2
	addi	s8,s10,32
.LVL278:
	add	s8,s0,s8
.LVL279:
	.loc 1 618 21 is_stmt 1
	mv	a0,s8
	call	usbh_hubport_release
.LVL280:
	.loc 1 620 21
	li	a5,4096
	addi	a2,a5,1012
	li	a1,0
	mv	a0,s8
	call	memset
.LVL281:
	.loc 1 621 21
	.loc 1 621 35 is_stmt 0
	add	s10,s0,s10
	add	s5,s5,s10
	.loc 1 622 40
	li	a5,20480
	add	a5,s0,a5
	.loc 1 621 35
	sw	s0,956(s5)
	.loc 1 622 21 is_stmt 1
	.loc 1 622 40 is_stmt 0
	lw	a4,-16(a5)
	.loc 1 622 34
	li	a5,1
	beq	a4,zero,.L129
	lbu	a5,4(a4)
	addi	a5,a5,1
	andi	a5,a5,0xff
.L129:
	li	s5,4096
	addi	a3,s5,1012
	mv	a4,s0
	mula	a4,s2,a3
	.loc 1 626 37
	li	s10,20480
	add	s10,s0,s10
	.loc 1 622 34
	sb	a5,36(a4)
	.loc 1 623 21 is_stmt 1
	.loc 1 623 38 is_stmt 0
	li	a5,1
	.loc 1 625 34
	sb	s9,35(a4)
	.loc 1 623 38
	sb	a5,32(a4)
	.loc 1 624 21 is_stmt 1
	.loc 1 624 33 is_stmt 0
	sb	s3,33(a4)
	.loc 1 625 21 is_stmt 1
	.loc 1 626 21
	.loc 1 626 32 is_stmt 0
	lw	a5,-12(s10)
	add	s5,s5,a4
	sw	a5,964(s5)
	.loc 1 627 21 is_stmt 1
	.loc 1 627 36 is_stmt 0
	call	usb_osal_mutex_create
.LVL282:
	.loc 1 627 34
	sw	a0,1040(s5)
	.loc 1 629 21 is_stmt 1
	.loc 1 629 26
	lui	a0,%hi(.LC0)
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL283:
	.loc 1 629 77
	.loc 1 629 170 is_stmt 0
	lw	a5,-12(s10)
	.loc 1 629 77
	lbu	a3,2(s0)
	lui	a0,%hi(.LC32)
	lbu	a2,4(a5)
	lw	a5,8(sp)
	mv	a4,s1
	addi	a0,a0,%lo(.LC32)
	lrw	a1,a5,s9,2
.LBB148:
.LBB149:
	.loc 1 633 25
	li	s5,3
	.loc 1 633 34
	li	s9,0
.LVL284:
.LBE149:
.LBE148:
	.loc 1 629 77
	call	printf
.LVL285:
	.loc 1 629 202 is_stmt 1
	addi	a0,s7,%lo(.LC2)
	call	printf
.LVL286:
	.loc 1 629 229
.LBB152:
	.loc 1 632 25
	.loc 1 633 25
.LBB150:
	.loc 1 633 30
	.loc 1 633 45
	.loc 1 634 29
.L130:
	.loc 1 638 29
	.loc 1 638 40 is_stmt 0
	mv	a0,s8
	call	usbh_enumerate
.LVL287:
	.loc 1 639 29 is_stmt 1
	.loc 1 639 32 is_stmt 0
	bge	a0,zero,.L105
	.loc 1 633 56 is_stmt 1
	.loc 1 633 61 is_stmt 0
	addi	s9,s9,1
.LVL288:
	.loc 1 633 45 is_stmt 1
	.loc 1 633 25 is_stmt 0
	bne	s9,s5,.L131
.LBE150:
	.loc 1 643 25 is_stmt 1
	.loc 1 645 29
	mv	a0,s8
.LVL289:
	call	usbh_hubport_release
.LVL290:
	.loc 1 646 29
	.loc 1 646 34
	addi	a0,s4,%lo(.LC3)
	call	printf
.LVL291:
	.loc 1 646 85
	.loc 1 646 127 is_stmt 0
	li	a5,4096
	addi	a5,a5,1012
	mv	a4,s0
	mula	a4,s2,a5
	.loc 1 646 85
	lui	a0,%hi(.LC36)
	addi	a0,a0,%lo(.LC36)
	lbu	a1,33(a4)
	j	.L154
.LVL292:
.L127:
.LBE152:
	.loc 1 609 28 is_stmt 1
	.loc 1 609 31 is_stmt 0
	andi	s5,s5,512
.LVL293:
	.loc 1 610 31
	li	s9,5
	.loc 1 609 31
	bne	s5,zero,.L128
	.loc 1 612 25 is_stmt 1
	.loc 1 612 30
	addi	a0,s6,%lo(.LC30)
	call	printf
.LVL294:
	.loc 1 612 81
	lui	a0,%hi(.LC31)
	mv	a1,s1
	addi	a0,a0,%lo(.LC31)
.LVL295:
.L154:
.LBB153:
	.loc 1 646 85 is_stmt 0
	call	printf
.LVL296:
	.loc 1 646 136 is_stmt 1
	j	.L152
.LVL297:
.L131:
.LBB151:
	.loc 1 634 29
	.loc 1 635 33
	.loc 1 635 38
	addi	a0,s6,%lo(.LC30)
	call	printf
.LVL298:
	.loc 1 635 89
	lui	a5,%hi(.LC33)
	li	a3,2
	mv	a2,s9
	mv	a1,s1
	addi	a0,a5,%lo(.LC33)
	call	printf
.LVL299:
	.loc 1 635 158
	addi	a0,s7,%lo(.LC2)
	call	printf
.LVL300:
	.loc 1 635 185
	.loc 1 636 33
	li	a0,500
	call	usb_osal_msleep
.LVL301:
	j	.L130
.LVL302:
.L123:
.LBE151:
.LBE153:
	.loc 1 650 21
	.loc 1 652 21
	.loc 1 650 27 is_stmt 0
	li	a5,4096
	addi	a5,a5,1012
	mv	a0,s0
.LVL303:
	mula	a0,s2,a5
	.loc 1 652 21
	addi	a0,a0,32
	call	usbh_hubport_release
.LVL304:
	.loc 1 655 21 is_stmt 1
	.loc 1 655 26
	addi	a0,s6,%lo(.LC30)
	call	printf
.LVL305:
	.loc 1 655 77
	lui	a0,%hi(.LC34)
	mv	a1,s1
	addi	a0,a0,%lo(.LC34)
	j	.L154
.LVL306:
.L120:
	.loc 1 660 17
	.loc 1 662 17
	.loc 1 660 23 is_stmt 0
	li	a5,4096
	addi	a5,a5,1012
	mv	a0,s0
	mula	a0,s2,a5
	.loc 1 662 17
	addi	a0,a0,32
	call	usbh_hubport_release
.LVL307:
	.loc 1 663 17 is_stmt 1
	.loc 1 663 22
	lui	a0,%hi(.LC0)
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL308:
	.loc 1 663 73
	.loc 1 663 142 is_stmt 0
	li	a5,20480
	add	a5,s0,a5
	lw	a5,-12(a5)
	.loc 1 663 73
	lbu	a2,2(s0)
	lui	a0,%hi(.LC35)
	lbu	a1,4(a5)
	mv	a3,s1
	addi	a0,a0,%lo(.LC35)
	call	printf
.LVL309:
	j	.L152
.LBE157:
.LBE159:
.LBE160:
.LBE161:
	.cfi_endproc
.LFE48:
	.size	usbh_hub_thread, .-usbh_hub_thread
	.section	.text.usbh_hub_thread_wakeup,"ax",@progbits
	.align	1
	.globl	usbh_hub_thread_wakeup
	.type	usbh_hub_thread_wakeup, @function
usbh_hub_thread_wakeup:
.LFB49:
	.loc 1 692 1 is_stmt 1
	.cfi_startproc
.LVL310:
	.loc 1 693 5
	li	a4,20480
	add	a5,a0,a4
	lw	a5,-12(a5)
	.loc 1 692 1 is_stmt 0
	mv	a1,a0
	.loc 1 693 5
	add	a5,a5,a4
	lw	a0,108(a5)
.LVL311:
	tail	usb_osal_mq_send
.LVL312:
	.cfi_endproc
.LFE49:
	.size	usbh_hub_thread_wakeup, .-usbh_hub_thread_wakeup
	.section	.text.hub_int_complete_callback,"ax",@progbits
	.align	1
	.type	hub_int_complete_callback, @function
hub_int_complete_callback:
.LFB43:
	.loc 1 303 1 is_stmt 1
	.cfi_startproc
.LVL313:
	.loc 1 304 5
	.loc 1 306 5
	.loc 1 306 8 is_stmt 0
	ble	a1,zero,.L158
	.loc 1 307 9 is_stmt 1
	tail	usbh_hub_thread_wakeup
.LVL314:
.L158:
.LBB164:
.LBB165:
	.loc 1 308 12
	.loc 1 308 15 is_stmt 0
	li	a5,-10
	bne	a1,a5,.L157
	.loc 1 310 10 is_stmt 1
	.loc 1 310 11
	.loc 1 311 9
	li	a5,20480
	add	a0,a0,a5
.LVL315:
	lw	a0,64(a0)
.LVL316:
	tail	usb_osal_timer_start
.LVL317:
.L157:
.LBE165:
.LBE164:
	.loc 1 314 1 is_stmt 0
	ret
	.cfi_endproc
.LFE43:
	.size	hub_int_complete_callback, .-hub_int_complete_callback
	.section	.rodata.usbh_hub_initialize.str1.4,"aMS",@progbits,1
	.align	2
.LC37:
	.string	"Failed to create hub mq\r\n"
	.align	2
.LC38:
	.string	"usbh_hub%u"
	.align	2
.LC39:
	.string	"Failed to create hub thread\r\n"
	.section	.text.usbh_hub_initialize,"ax",@progbits
	.align	1
	.globl	usbh_hub_initialize
	.type	usbh_hub_initialize, @function
usbh_hub_initialize:
.LFB50:
	.loc 1 697 1 is_stmt 1
	.cfi_startproc
.LVL318:
	.loc 1 698 5
	.loc 1 697 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	.loc 1 698 10
	li	a2,28
	.cfi_offset 8, -8
	.loc 1 697 1
	mv	s0,a0
	.loc 1 698 10
	li	a1,0
	addi	a0,sp,4
.LVL319:
	.loc 1 697 1
	sw	ra,44(sp)
	sw	s1,36(sp)
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.loc 1 698 10
	sw	zero,0(sp)
	call	memset
.LVL320:
	.loc 1 699 5 is_stmt 1
	.loc 1 701 5
	.loc 1 702 5
	.loc 1 703 5
	.loc 1 704 5
	.loc 1 705 5
	.loc 1 705 17 is_stmt 0
	li	a5,20480
	srw	zero,s0,a5,0
	.loc 1 706 5 is_stmt 1
	.loc 1 705 17 is_stmt 0
	add	s1,s0,a5
	.loc 1 702 20
	li	a5,16842752
	addi	a5,a5,257
	sw	a5,16(s0)
	.loc 1 707 5 is_stmt 1
	.loc 1 707 17 is_stmt 0
	li	a5,1
	sb	a5,21(s0)
	.loc 1 708 5 is_stmt 1
	.loc 1 708 23 is_stmt 0
	addi	a5,s0,13
	.loc 1 708 21
	sw	a5,76(s1)
	.loc 1 709 5 is_stmt 1
	.loc 1 709 14 is_stmt 0
	sw	s0,4(s1)
	.loc 1 711 5 is_stmt 1
	.loc 1 711 19 is_stmt 0
	li	a0,7
	call	usb_osal_mq_create
.LVL321:
	.loc 1 711 17
	sw	a0,108(s1)
	.loc 1 712 5 is_stmt 1
	.loc 1 712 8 is_stmt 0
	bne	a0,zero,.L161
	.loc 1 713 9 is_stmt 1
	.loc 1 713 14
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	call	printf
.LVL322:
	.loc 1 713 65
	lui	a0,%hi(.LC37)
	addi	a0,a0,%lo(.LC37)
.L165:
	.loc 1 720 65 is_stmt 0
	call	printf
.LVL323:
	.loc 1 720 108 is_stmt 1
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL324:
	.loc 1 720 135
	.loc 1 721 9
	.loc 1 721 16 is_stmt 0
	li	a5,-1
.L160:
	.loc 1 724 1
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
.LVL325:
	lw	s1,36(sp)
	.cfi_restore 9
.LVL326:
	mv	a0,a5
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL327:
.L161:
	.cfi_restore_state
	.loc 1 717 5 is_stmt 1
	lbu	a3,4(s0)
	lui	a2,%hi(.LC38)
	addi	a2,a2,%lo(.LC38)
	li	a1,32
	mv	a0,sp
	call	snprintf
.LVL328:
	.loc 1 718 5
	.loc 1 718 23 is_stmt 0
	lui	a3,%hi(usbh_hub_thread)
	li	a1,4096
	mv	a4,s0
	addi	a3,a3,%lo(usbh_hub_thread)
	li	a2,15
	addi	a1,a1,-2048
	mv	a0,sp
	call	usb_osal_thread_create
.LVL329:
	.loc 1 718 21
	sw	a0,104(s1)
	.loc 1 719 5 is_stmt 1
	.loc 1 723 12 is_stmt 0
	li	a5,0
	.loc 1 719 8
	bne	a0,zero,.L160
	.loc 1 720 9 is_stmt 1
	.loc 1 720 14
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	call	printf
.LVL330:
	.loc 1 720 65
	lui	a0,%hi(.LC39)
	addi	a0,a0,%lo(.LC39)
	j	.L165
	.cfi_endproc
.LFE50:
	.size	usbh_hub_initialize, .-usbh_hub_initialize
	.section	.text.usbh_hub_deinitialize,"ax",@progbits
	.align	1
	.globl	usbh_hub_deinitialize
	.type	usbh_hub_deinitialize, @function
usbh_hub_deinitialize:
.LFB51:
	.loc 1 727 1
	.cfi_startproc
.LVL331:
	.loc 1 728 5
	.loc 1 729 5
	.loc 1 730 5
	.loc 1 732 5
	.loc 1 733 5
.LBB166:
	.loc 1 733 10
.LBE166:
	.loc 1 727 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s2,16(sp)
	.cfi_offset 18, -16
.LBB167:
	.loc 1 734 15
	li	s2,4096
.LBE167:
	.loc 1 727 1
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s3,12(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.loc 1 727 1
	mv	s0,a0
.LBB168:
	.loc 1 733 18
	li	s1,0
	.loc 1 734 15
	addi	s3,a0,16
.LVL332:
	addi	s2,s2,1012
.LVL333:
.L167:
	.loc 1 733 28 is_stmt 1 discriminator 1
	.loc 1 733 5 is_stmt 0 discriminator 1
	lbu	a5,21(s0)
	bgtu	a5,s1,.L168
.LBE168:
	.loc 1 739 5 is_stmt 1
	.loc 1 739 13 is_stmt 0
	call	usb_osal_enter_critical_section
.LVL334:
	mv	s1,a0
.LVL335:
	.loc 1 741 5 is_stmt 1
	mv	a0,s0
	call	usb_hc_deinit
.LVL336:
	.loc 1 743 5
	mv	a0,s1
	call	usb_osal_leave_critical_section
.LVL337:
	.loc 1 745 5
	li	a5,20480
	add	s0,s0,a5
.LVL338:
	lw	a0,108(s0)
	call	usb_osal_mq_delete
.LVL339:
	.loc 1 746 5
	lw	a0,104(s0)
	call	usb_osal_thread_delete
.LVL340:
	.loc 1 748 5
	.loc 1 749 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL341:
	lw	s1,20(sp)
	.cfi_restore 9
.LVL342:
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
.LVL343:
	li	a0,0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL344:
.L168:
	.cfi_restore_state
.LBB169:
	.loc 1 734 9 is_stmt 1 discriminator 3
	.loc 1 736 9 discriminator 3
	.loc 1 734 15 is_stmt 0 discriminator 3
	mv	a0,s3
	mula	a0,s1,s2
	.loc 1 733 52 discriminator 3
	addi	s1,s1,1
.LVL345:
	andi	s1,s1,0xff
	.loc 1 736 9 discriminator 3
	addi	a0,a0,32
	call	usbh_hubport_release
.LVL346:
	.loc 1 733 48 is_stmt 1 discriminator 3
	j	.L167
.LBE169:
	.cfi_endproc
.LFE51:
	.size	usbh_hub_deinitialize, .-usbh_hub_deinitialize
	.globl	hub_class_info
	.globl	hub_class_driver
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC40:
	.string	"hub"
	.align	2
.LC41:
	.string	"error-speed"
	.align	2
.LC42:
	.string	"low-speed"
	.align	2
.LC43:
	.string	"full-speed"
	.align	2
.LC44:
	.string	"high-speed"
	.align	2
.LC45:
	.string	"wireless-speed"
	.align	2
.LC46:
	.string	"super-speed"
	.align	2
.LC47:
	.string	"superplus-speed"
	.globl	g_hub_intbuf
	.globl	g_hub_buf
	.section	.bss.g_devinuse,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	g_devinuse, @object
	.size	g_devinuse, 4
g_devinuse:
	.zero	4
	.section	.bss.g_hub_class,"aw",@nobits
	.align	2
	.type	g_hub_class, @object
	.size	g_hub_class, 20548
g_hub_class:
	.zero	20548
	.section	.noncacheable,"aw"
	.align	2
	.set	.LANCHOR1,. + 0
	.type	g_hub_buf, @object
	.size	g_hub_buf, 32
g_hub_buf:
	.zero	32
	.type	g_hub_intbuf, @object
	.size	g_hub_intbuf, 8
g_hub_intbuf:
	.zero	8
	.section	.rodata.hub_class_driver,"a"
	.align	2
	.type	hub_class_driver, @object
	.size	hub_class_driver, 12
hub_class_driver:
	.word	.LC40
	.word	usbh_hub_connect
	.word	usbh_hub_disconnect
	.section	.rodata.speed_table,"a"
	.align	2
	.set	.LANCHOR2,. + 0
	.type	speed_table, @object
	.size	speed_table, 28
speed_table:
	.word	.LC41
	.word	.LC42
	.word	.LC43
	.word	.LC44
	.word	.LC45
	.word	.LC46
	.word	.LC47
	.section	.usbh_class_info,"a"
	.type	hub_class_info, @object
	.size	hub_class_info, 12
hub_class_info:
	.byte	4
	.byte	9
	.byte	0
	.byte	0
	.4byte	0
	.4byte	hub_class_driver
	.text
.Letext0:
	.file 4 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\lib\\gcc\\riscv64-unknown-elf\\10.4.0\\include\\stddef.h"
	.file 5 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\machine\\_default_types.h"
	.file 6 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\sys\\_stdint.h"
	.file 7 ".\\components\\usb\\cherryusb\\common/usb_def.h"
	.file 8 ".\\components\\usb\\cherryusb\\common/usb_list.h"
	.file 9 ".\\components\\usb\\cherryusb\\common/usb_hc.h"
	.file 10 ".\\components\\usb\\cherryusb\\common/usb_osal.h"
	.file 11 ".\\components\\usb\\cherryusb\\class\\hub/usb_hub.h"
	.file 12 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\stdio.h"
	.file 13 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\string.h"
	.file 14 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2932
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF244
	.byte	0xc
	.4byte	.LASF245
	.4byte	.LASF246
	.4byte	.Ldebug_ranges0+0x2d8
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF2
	.byte	0x4
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
	.byte	0x5
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
	.byte	0x5
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
	.byte	0x5
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
	.byte	0x5
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
	.byte	0x6
	.byte	0x18
	.byte	0x13
	.4byte	0x46
	.byte	0x3
	.4byte	.LASF16
	.byte	0x6
	.byte	0x24
	.byte	0x14
	.4byte	0x60
	.byte	0x7
	.4byte	0xcd
	.byte	0x3
	.4byte	.LASF17
	.byte	0x6
	.byte	0x30
	.byte	0x14
	.4byte	0x7a
	.byte	0x7
	.4byte	0xde
	.byte	0x3
	.4byte	.LASF18
	.byte	0x6
	.byte	0x52
	.byte	0x15
	.4byte	0x9b
	.byte	0x6
	.byte	0x4
	.4byte	0x101
	.byte	0x8
	.byte	0x9
	.4byte	.LASF24
	.byte	0x8
	.byte	0x1
	.byte	0x7
	.2byte	0x13f
	.byte	0x8
	.4byte	0x158
	.byte	0xa
	.4byte	.LASF19
	.byte	0x7
	.2byte	0x145
	.byte	0xd
	.4byte	0xc1
	.byte	0
	.byte	0xa
	.4byte	.LASF20
	.byte	0x7
	.2byte	0x14c
	.byte	0xd
	.4byte	0xc1
	.byte	0x1
	.byte	0xa
	.4byte	.LASF21
	.byte	0x7
	.2byte	0x14f
	.byte	0xe
	.4byte	0xcd
	.byte	0x2
	.byte	0xa
	.4byte	.LASF22
	.byte	0x7
	.2byte	0x153
	.byte	0xe
	.4byte	0xcd
	.byte	0x4
	.byte	0xa
	.4byte	.LASF23
	.byte	0x7
	.2byte	0x156
	.byte	0xe
	.4byte	0xcd
	.byte	0x6
	.byte	0
	.byte	0x9
	.4byte	.LASF25
	.byte	0x12
	.byte	0x1
	.byte	0x7
	.2byte	0x15c
	.byte	0x8
	.4byte	0x22c
	.byte	0xa
	.4byte	.LASF26
	.byte	0x7
	.2byte	0x15d
	.byte	0xd
	.4byte	0xc1
	.byte	0
	.byte	0xa
	.4byte	.LASF27
	.byte	0x7
	.2byte	0x15e
	.byte	0xd
	.4byte	0xc1
	.byte	0x1
	.byte	0xa
	.4byte	.LASF28
	.byte	0x7
	.2byte	0x15f
	.byte	0xe
	.4byte	0xcd
	.byte	0x2
	.byte	0xa
	.4byte	.LASF29
	.byte	0x7
	.2byte	0x160
	.byte	0xd
	.4byte	0xc1
	.byte	0x4
	.byte	0xa
	.4byte	.LASF30
	.byte	0x7
	.2byte	0x161
	.byte	0xd
	.4byte	0xc1
	.byte	0x5
	.byte	0xa
	.4byte	.LASF31
	.byte	0x7
	.2byte	0x162
	.byte	0xd
	.4byte	0xc1
	.byte	0x6
	.byte	0xa
	.4byte	.LASF32
	.byte	0x7
	.2byte	0x163
	.byte	0xd
	.4byte	0xc1
	.byte	0x7
	.byte	0xa
	.4byte	.LASF33
	.byte	0x7
	.2byte	0x164
	.byte	0xe
	.4byte	0xcd
	.byte	0x8
	.byte	0xa
	.4byte	.LASF34
	.byte	0x7
	.2byte	0x165
	.byte	0xe
	.4byte	0xcd
	.byte	0xa
	.byte	0xa
	.4byte	.LASF35
	.byte	0x7
	.2byte	0x166
	.byte	0xe
	.4byte	0xcd
	.byte	0xc
	.byte	0xa
	.4byte	.LASF36
	.byte	0x7
	.2byte	0x167
	.byte	0xd
	.4byte	0xc1
	.byte	0xe
	.byte	0xa
	.4byte	.LASF37
	.byte	0x7
	.2byte	0x168
	.byte	0xd
	.4byte	0xc1
	.byte	0xf
	.byte	0xa
	.4byte	.LASF38
	.byte	0x7
	.2byte	0x169
	.byte	0xd
	.4byte	0xc1
	.byte	0x10
	.byte	0xa
	.4byte	.LASF39
	.byte	0x7
	.2byte	0x16a
	.byte	0xd
	.4byte	0xc1
	.byte	0x11
	.byte	0
	.byte	0x9
	.4byte	.LASF40
	.byte	0x9
	.byte	0x1
	.byte	0x7
	.2byte	0x170
	.byte	0x8
	.4byte	0x2ac
	.byte	0xa
	.4byte	.LASF26
	.byte	0x7
	.2byte	0x171
	.byte	0xd
	.4byte	0xc1
	.byte	0
	.byte	0xa
	.4byte	.LASF27
	.byte	0x7
	.2byte	0x172
	.byte	0xd
	.4byte	0xc1
	.byte	0x1
	.byte	0xa
	.4byte	.LASF41
	.byte	0x7
	.2byte	0x173
	.byte	0xe
	.4byte	0xcd
	.byte	0x2
	.byte	0xa
	.4byte	.LASF42
	.byte	0x7
	.2byte	0x174
	.byte	0xd
	.4byte	0xc1
	.byte	0x4
	.byte	0xa
	.4byte	.LASF43
	.byte	0x7
	.2byte	0x175
	.byte	0xd
	.4byte	0xc1
	.byte	0x5
	.byte	0xa
	.4byte	.LASF44
	.byte	0x7
	.2byte	0x176
	.byte	0xd
	.4byte	0xc1
	.byte	0x6
	.byte	0xa
	.4byte	.LASF45
	.byte	0x7
	.2byte	0x177
	.byte	0xd
	.4byte	0xc1
	.byte	0x7
	.byte	0xa
	.4byte	.LASF46
	.byte	0x7
	.2byte	0x178
	.byte	0xd
	.4byte	0xc1
	.byte	0x8
	.byte	0
	.byte	0x9
	.4byte	.LASF47
	.byte	0x9
	.byte	0x1
	.byte	0x7
	.2byte	0x17e
	.byte	0x8
	.4byte	0x33a
	.byte	0xa
	.4byte	.LASF26
	.byte	0x7
	.2byte	0x17f
	.byte	0xd
	.4byte	0xc1
	.byte	0
	.byte	0xa
	.4byte	.LASF27
	.byte	0x7
	.2byte	0x180
	.byte	0xd
	.4byte	0xc1
	.byte	0x1
	.byte	0xa
	.4byte	.LASF48
	.byte	0x7
	.2byte	0x181
	.byte	0xd
	.4byte	0xc1
	.byte	0x2
	.byte	0xa
	.4byte	.LASF49
	.byte	0x7
	.2byte	0x182
	.byte	0xd
	.4byte	0xc1
	.byte	0x3
	.byte	0xa
	.4byte	.LASF50
	.byte	0x7
	.2byte	0x183
	.byte	0xd
	.4byte	0xc1
	.byte	0x4
	.byte	0xa
	.4byte	.LASF51
	.byte	0x7
	.2byte	0x184
	.byte	0xd
	.4byte	0xc1
	.byte	0x5
	.byte	0xa
	.4byte	.LASF52
	.byte	0x7
	.2byte	0x185
	.byte	0xd
	.4byte	0xc1
	.byte	0x6
	.byte	0xa
	.4byte	.LASF53
	.byte	0x7
	.2byte	0x186
	.byte	0xd
	.4byte	0xc1
	.byte	0x7
	.byte	0xa
	.4byte	.LASF54
	.byte	0x7
	.2byte	0x187
	.byte	0xd
	.4byte	0xc1
	.byte	0x8
	.byte	0
	.byte	0x9
	.4byte	.LASF55
	.byte	0x7
	.byte	0x1
	.byte	0x7
	.2byte	0x18d
	.byte	0x8
	.4byte	0x39e
	.byte	0xa
	.4byte	.LASF26
	.byte	0x7
	.2byte	0x18e
	.byte	0xd
	.4byte	0xc1
	.byte	0
	.byte	0xa
	.4byte	.LASF27
	.byte	0x7
	.2byte	0x18f
	.byte	0xd
	.4byte	0xc1
	.byte	0x1
	.byte	0xa
	.4byte	.LASF56
	.byte	0x7
	.2byte	0x190
	.byte	0xd
	.4byte	0xc1
	.byte	0x2
	.byte	0xa
	.4byte	.LASF45
	.byte	0x7
	.2byte	0x191
	.byte	0xd
	.4byte	0xc1
	.byte	0x3
	.byte	0xa
	.4byte	.LASF57
	.byte	0x7
	.2byte	0x192
	.byte	0xe
	.4byte	0xcd
	.byte	0x4
	.byte	0xa
	.4byte	.LASF58
	.byte	0x7
	.2byte	0x193
	.byte	0xd
	.4byte	0xc1
	.byte	0x6
	.byte	0
	.byte	0xb
	.4byte	.LASF62
	.byte	0x4
	.byte	0x8
	.byte	0x1a
	.byte	0x8
	.4byte	0x3b9
	.byte	0xc
	.4byte	.LASF59
	.byte	0x8
	.byte	0x1b
	.byte	0x1c
	.4byte	0x3b9
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x39e
	.byte	0x3
	.4byte	.LASF60
	.byte	0x8
	.byte	0x1d
	.byte	0x1f
	.4byte	0x39e
	.byte	0x3
	.4byte	.LASF61
	.byte	0x9
	.byte	0xf
	.byte	0x10
	.4byte	0x3d7
	.byte	0x6
	.byte	0x4
	.4byte	0x3dd
	.byte	0xd
	.4byte	0x3ed
	.byte	0xe
	.4byte	0xa7
	.byte	0xe
	.4byte	0x25
	.byte	0
	.byte	0xb
	.4byte	.LASF63
	.byte	0x10
	.byte	0x9
	.byte	0x18
	.byte	0x8
	.4byte	0x42f
	.byte	0xc
	.4byte	.LASF64
	.byte	0x9
	.byte	0x19
	.byte	0xe
	.4byte	0x42f
	.byte	0
	.byte	0xc
	.4byte	.LASF65
	.byte	0x9
	.byte	0x1a
	.byte	0xe
	.4byte	0xde
	.byte	0x4
	.byte	0xc
	.4byte	.LASF66
	.byte	0x9
	.byte	0x1b
	.byte	0xe
	.4byte	0xde
	.byte	0x8
	.byte	0xc
	.4byte	.LASF67
	.byte	0x9
	.byte	0x1c
	.byte	0x9
	.4byte	0x25
	.byte	0xc
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xc1
	.byte	0xb
	.4byte	.LASF68
	.byte	0x40
	.byte	0x9
	.byte	0x24
	.byte	0x8
	.4byte	0x52c
	.byte	0xc
	.4byte	.LASF69
	.byte	0x9
	.byte	0x25
	.byte	0x11
	.4byte	0x3bf
	.byte	0
	.byte	0xc
	.4byte	.LASF70
	.byte	0x9
	.byte	0x26
	.byte	0xb
	.4byte	0xa7
	.byte	0x4
	.byte	0xc
	.4byte	.LASF71
	.byte	0x9
	.byte	0x27
	.byte	0x1a
	.4byte	0x64e
	.byte	0x8
	.byte	0xf
	.string	"ep"
	.byte	0x9
	.byte	0x28
	.byte	0x25
	.4byte	0x654
	.byte	0xc
	.byte	0xc
	.4byte	.LASF72
	.byte	0x9
	.byte	0x29
	.byte	0xd
	.4byte	0xc1
	.byte	0x10
	.byte	0xc
	.4byte	.LASF73
	.byte	0x9
	.byte	0x2a
	.byte	0xd
	.4byte	0xc1
	.byte	0x11
	.byte	0xc
	.4byte	.LASF74
	.byte	0x9
	.byte	0x2b
	.byte	0x1e
	.4byte	0x65a
	.byte	0x14
	.byte	0xc
	.4byte	.LASF64
	.byte	0x9
	.byte	0x2c
	.byte	0xe
	.4byte	0x42f
	.byte	0x18
	.byte	0xc
	.4byte	.LASF65
	.byte	0x9
	.byte	0x2d
	.byte	0xe
	.4byte	0xde
	.byte	0x1c
	.byte	0xc
	.4byte	.LASF75
	.byte	0x9
	.byte	0x2e
	.byte	0x9
	.4byte	0x25
	.byte	0x20
	.byte	0xc
	.4byte	.LASF66
	.byte	0x9
	.byte	0x2f
	.byte	0xe
	.4byte	0xde
	.byte	0x24
	.byte	0xc
	.4byte	.LASF76
	.byte	0x9
	.byte	0x30
	.byte	0xe
	.4byte	0xde
	.byte	0x28
	.byte	0xc
	.4byte	.LASF67
	.byte	0x9
	.byte	0x31
	.byte	0x9
	.4byte	0x25
	.byte	0x2c
	.byte	0xc
	.4byte	.LASF77
	.byte	0x9
	.byte	0x32
	.byte	0xe
	.4byte	0xde
	.byte	0x30
	.byte	0xc
	.4byte	.LASF78
	.byte	0x9
	.byte	0x33
	.byte	0xe
	.4byte	0xde
	.byte	0x34
	.byte	0xc
	.4byte	.LASF79
	.byte	0x9
	.byte	0x34
	.byte	0x1e
	.4byte	0x3cb
	.byte	0x38
	.byte	0xf
	.string	"arg"
	.byte	0x9
	.byte	0x35
	.byte	0xb
	.4byte	0xa7
	.byte	0x3c
	.byte	0xc
	.4byte	.LASF80
	.byte	0x9
	.byte	0x39
	.byte	0x22
	.4byte	0x660
	.byte	0x40
	.byte	0
	.byte	0x10
	.4byte	.LASF81
	.2byte	0x13f4
	.byte	0x4
	.byte	0x2
	.byte	0x65
	.byte	0x8
	.4byte	0x64e
	.byte	0xc
	.4byte	.LASF82
	.byte	0x2
	.byte	0x66
	.byte	0x9
	.4byte	0x700
	.byte	0
	.byte	0xc
	.4byte	.LASF83
	.byte	0x2
	.byte	0x67
	.byte	0xd
	.4byte	0xc1
	.byte	0x1
	.byte	0xc
	.4byte	.LASF84
	.byte	0x2
	.byte	0x68
	.byte	0xd
	.4byte	0xc1
	.byte	0x2
	.byte	0xc
	.4byte	.LASF85
	.byte	0x2
	.byte	0x69
	.byte	0xd
	.4byte	0xc1
	.byte	0x3
	.byte	0xc
	.4byte	.LASF86
	.byte	0x2
	.byte	0x6a
	.byte	0xd
	.4byte	0xc1
	.byte	0x4
	.byte	0xc
	.4byte	.LASF87
	.byte	0x2
	.byte	0x6b
	.byte	0xd
	.4byte	0xc1
	.byte	0x5
	.byte	0xc
	.4byte	.LASF88
	.byte	0x2
	.byte	0x6c
	.byte	0xd
	.4byte	0xc1
	.byte	0x6
	.byte	0x11
	.4byte	.LASF89
	.byte	0x2
	.byte	0x6d
	.byte	0x22
	.4byte	0x158
	.byte	0x1
	.byte	0x7
	.byte	0x11
	.4byte	.LASF90
	.byte	0x2
	.byte	0x6e
	.byte	0x1f
	.4byte	0x9cd
	.byte	0x4
	.byte	0x1c
	.byte	0x12
	.4byte	.LASF36
	.byte	0x2
	.byte	0x6f
	.byte	0x11
	.4byte	0xbb
	.2byte	0x1388
	.byte	0x12
	.4byte	.LASF37
	.byte	0x2
	.byte	0x70
	.byte	0x11
	.4byte	0xbb
	.2byte	0x138c
	.byte	0x12
	.4byte	.LASF38
	.byte	0x2
	.byte	0x71
	.byte	0x11
	.4byte	0xbb
	.2byte	0x1390
	.byte	0x12
	.4byte	.LASF91
	.byte	0x2
	.byte	0x72
	.byte	0xe
	.4byte	0x42f
	.2byte	0x1394
	.byte	0x12
	.4byte	.LASF74
	.byte	0x2
	.byte	0x73
	.byte	0x1e
	.4byte	0x65a
	.2byte	0x1398
	.byte	0x12
	.4byte	.LASF92
	.byte	0x2
	.byte	0x74
	.byte	0x16
	.4byte	0xb0d
	.2byte	0x139c
	.byte	0x12
	.4byte	.LASF93
	.byte	0x2
	.byte	0x75
	.byte	0x16
	.4byte	0xb0d
	.2byte	0x13a0
	.byte	0x13
	.string	"bus"
	.byte	0x2
	.byte	0x76
	.byte	0x16
	.4byte	0xb75
	.2byte	0x13a4
	.byte	0x14
	.string	"ep0"
	.byte	0x2
	.byte	0x77
	.byte	0x24
	.4byte	0x33a
	.byte	0x1
	.2byte	0x13a8
	.byte	0x12
	.4byte	.LASF94
	.byte	0x2
	.byte	0x78
	.byte	0x15
	.4byte	0x435
	.2byte	0x13b0
	.byte	0x12
	.4byte	.LASF95
	.byte	0x2
	.byte	0x79
	.byte	0x16
	.4byte	0x67c
	.2byte	0x13f0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x52c
	.byte	0x6
	.byte	0x4
	.4byte	0x33a
	.byte	0x6
	.byte	0x4
	.4byte	0x102
	.byte	0x15
	.4byte	0x3ed
	.4byte	0x670
	.byte	0x16
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
	.byte	0x1c
	.byte	0xf
	.4byte	0xa7
	.byte	0x3
	.4byte	.LASF98
	.byte	0xa
	.byte	0x1d
	.byte	0xf
	.4byte	0xa7
	.byte	0x6
	.byte	0x4
	.4byte	0x69a
	.byte	0xd
	.4byte	0x6a5
	.byte	0xe
	.4byte	0xa7
	.byte	0
	.byte	0x3
	.4byte	.LASF99
	.byte	0xa
	.byte	0x1f
	.byte	0x10
	.4byte	0x694
	.byte	0xb
	.4byte	.LASF100
	.byte	0x14
	.byte	0xa
	.byte	0x20
	.byte	0x8
	.4byte	0x700
	.byte	0xc
	.4byte	.LASF101
	.byte	0xa
	.byte	0x21
	.byte	0x19
	.4byte	0x6a5
	.byte	0
	.byte	0xc
	.4byte	.LASF102
	.byte	0xa
	.byte	0x22
	.byte	0xb
	.4byte	0xa7
	.byte	0x4
	.byte	0xc
	.4byte	.LASF103
	.byte	0xa
	.byte	0x23
	.byte	0x9
	.4byte	0x700
	.byte	0x8
	.byte	0xc
	.4byte	.LASF104
	.byte	0xa
	.byte	0x24
	.byte	0xe
	.4byte	0xde
	.byte	0xc
	.byte	0xc
	.4byte	.LASF105
	.byte	0xa
	.byte	0x25
	.byte	0xb
	.4byte	0xa7
	.byte	0x10
	.byte	0
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF106
	.byte	0x17
	.4byte	.LASF107
	.byte	0x9
	.byte	0x1
	.byte	0xb
	.byte	0x81
	.byte	0x8
	.4byte	0x77e
	.byte	0xc
	.4byte	.LASF26
	.byte	0xb
	.byte	0x82
	.byte	0xd
	.4byte	0xc1
	.byte	0
	.byte	0xc
	.4byte	.LASF27
	.byte	0xb
	.byte	0x83
	.byte	0xd
	.4byte	0xc1
	.byte	0x1
	.byte	0xc
	.4byte	.LASF108
	.byte	0xb
	.byte	0x84
	.byte	0xd
	.4byte	0xc1
	.byte	0x2
	.byte	0xc
	.4byte	.LASF109
	.byte	0xb
	.byte	0x85
	.byte	0xe
	.4byte	0xcd
	.byte	0x3
	.byte	0xc
	.4byte	.LASF110
	.byte	0xb
	.byte	0x86
	.byte	0xd
	.4byte	0xc1
	.byte	0x5
	.byte	0xc
	.4byte	.LASF111
	.byte	0xb
	.byte	0x87
	.byte	0xd
	.4byte	0xc1
	.byte	0x6
	.byte	0xc
	.4byte	.LASF112
	.byte	0xb
	.byte	0x88
	.byte	0xd
	.4byte	0xc1
	.byte	0x7
	.byte	0xc
	.4byte	.LASF113
	.byte	0xb
	.byte	0x89
	.byte	0xd
	.4byte	0xc1
	.byte	0x8
	.byte	0
	.byte	0x17
	.4byte	.LASF114
	.byte	0xb
	.byte	0x1
	.byte	0xb
	.byte	0x8f
	.byte	0x8
	.4byte	0x802
	.byte	0xc
	.4byte	.LASF26
	.byte	0xb
	.byte	0x90
	.byte	0xd
	.4byte	0xc1
	.byte	0
	.byte	0xc
	.4byte	.LASF27
	.byte	0xb
	.byte	0x91
	.byte	0xd
	.4byte	0xc1
	.byte	0x1
	.byte	0xc
	.4byte	.LASF108
	.byte	0xb
	.byte	0x92
	.byte	0xd
	.4byte	0xc1
	.byte	0x2
	.byte	0xc
	.4byte	.LASF109
	.byte	0xb
	.byte	0x93
	.byte	0xe
	.4byte	0xcd
	.byte	0x3
	.byte	0xc
	.4byte	.LASF110
	.byte	0xb
	.byte	0x94
	.byte	0xd
	.4byte	0xc1
	.byte	0x5
	.byte	0xc
	.4byte	.LASF111
	.byte	0xb
	.byte	0x95
	.byte	0xd
	.4byte	0xc1
	.byte	0x6
	.byte	0xc
	.4byte	.LASF115
	.byte	0xb
	.byte	0x96
	.byte	0xd
	.4byte	0xc1
	.byte	0x7
	.byte	0xc
	.4byte	.LASF116
	.byte	0xb
	.byte	0x97
	.byte	0xe
	.4byte	0xcd
	.byte	0x8
	.byte	0xc
	.4byte	.LASF112
	.byte	0xb
	.byte	0x98
	.byte	0xd
	.4byte	0xc1
	.byte	0xa
	.byte	0
	.byte	0xb
	.4byte	.LASF117
	.byte	0x4
	.byte	0xb
	.byte	0xa4
	.byte	0x8
	.4byte	0x82a
	.byte	0xc
	.4byte	.LASF118
	.byte	0xb
	.byte	0xa5
	.byte	0xe
	.4byte	0xcd
	.byte	0
	.byte	0xc
	.4byte	.LASF119
	.byte	0xb
	.byte	0xa6
	.byte	0xe
	.4byte	0xcd
	.byte	0x2
	.byte	0
	.byte	0xb
	.4byte	.LASF120
	.byte	0xc
	.byte	0x2
	.byte	0x3f
	.byte	0x8
	.4byte	0x886
	.byte	0xc
	.4byte	.LASF121
	.byte	0x2
	.byte	0x40
	.byte	0xd
	.4byte	0xc1
	.byte	0
	.byte	0xc
	.4byte	.LASF51
	.byte	0x2
	.byte	0x41
	.byte	0xd
	.4byte	0xc1
	.byte	0x1
	.byte	0xc
	.4byte	.LASF52
	.byte	0x2
	.byte	0x42
	.byte	0xd
	.4byte	0xc1
	.byte	0x2
	.byte	0xc
	.4byte	.LASF53
	.byte	0x2
	.byte	0x43
	.byte	0xd
	.4byte	0xc1
	.byte	0x3
	.byte	0xc
	.4byte	.LASF122
	.byte	0x2
	.byte	0x44
	.byte	0x16
	.4byte	0x89b
	.byte	0x4
	.byte	0xc
	.4byte	.LASF123
	.byte	0x2
	.byte	0x45
	.byte	0x25
	.4byte	0x8db
	.byte	0x8
	.byte	0
	.byte	0x7
	.4byte	0x82a
	.byte	0x15
	.4byte	0xd9
	.4byte	0x89b
	.byte	0x18
	.4byte	0x38
	.byte	0x1
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x88b
	.byte	0xb
	.4byte	.LASF124
	.byte	0xc
	.byte	0x2
	.byte	0x49
	.byte	0x8
	.4byte	0x8d6
	.byte	0xc
	.4byte	.LASF125
	.byte	0x2
	.byte	0x4a
	.byte	0x11
	.4byte	0xbb
	.byte	0
	.byte	0xc
	.4byte	.LASF126
	.byte	0x2
	.byte	0x4b
	.byte	0xb
	.4byte	0x8f5
	.byte	0x4
	.byte	0xc
	.4byte	.LASF127
	.byte	0x2
	.byte	0x4c
	.byte	0xb
	.4byte	0x8f5
	.byte	0x8
	.byte	0
	.byte	0x7
	.4byte	0x8a1
	.byte	0x6
	.byte	0x4
	.4byte	0x8d6
	.byte	0x19
	.4byte	0x25
	.4byte	0x8f5
	.byte	0xe
	.4byte	0x64e
	.byte	0xe
	.4byte	0xc1
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x8e1
	.byte	0x17
	.4byte	.LASF128
	.byte	0x7
	.byte	0x1
	.byte	0x2
	.byte	0x4f
	.byte	0x8
	.4byte	0x918
	.byte	0x11
	.4byte	.LASF129
	.byte	0x2
	.byte	0x50
	.byte	0x24
	.4byte	0x33a
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.LASF130
	.byte	0x25
	.byte	0x1
	.byte	0x2
	.byte	0x53
	.byte	0x8
	.4byte	0x942
	.byte	0x11
	.4byte	.LASF131
	.byte	0x2
	.byte	0x54
	.byte	0x25
	.4byte	0x2ac
	.byte	0x1
	.byte	0
	.byte	0x1a
	.string	"ep"
	.byte	0x2
	.byte	0x55
	.byte	0x1a
	.4byte	0x942
	.byte	0x1
	.byte	0x9
	.byte	0
	.byte	0x1b
	.4byte	0x8fb
	.byte	0x1
	.4byte	0x953
	.byte	0x18
	.4byte	0x38
	.byte	0x3
	.byte	0
	.byte	0x10
	.4byte	.LASF132
	.2byte	0x26c
	.byte	0x4
	.byte	0x2
	.byte	0x58
	.byte	0x8
	.4byte	0x9a6
	.byte	0xc
	.4byte	.LASF133
	.byte	0x2
	.byte	0x59
	.byte	0xa
	.4byte	0x9a6
	.byte	0
	.byte	0xc
	.4byte	.LASF123
	.byte	0x2
	.byte	0x5a
	.byte	0x1f
	.4byte	0x9b6
	.byte	0x10
	.byte	0xc
	.4byte	.LASF134
	.byte	0x2
	.byte	0x5b
	.byte	0xb
	.4byte	0xa7
	.byte	0x14
	.byte	0x11
	.4byte	.LASF135
	.byte	0x2
	.byte	0x5c
	.byte	0x26
	.4byte	0x9bc
	.byte	0x1
	.byte	0x18
	.byte	0x12
	.4byte	.LASF136
	.byte	0x2
	.byte	0x5d
	.byte	0xd
	.4byte	0xc1
	.2byte	0x268
	.byte	0
	.byte	0x15
	.4byte	0xaf
	.4byte	0x9b6
	.byte	0x18
	.4byte	0x38
	.byte	0xf
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x8a1
	.byte	0x1b
	.4byte	0x918
	.byte	0x1
	.4byte	0x9cd
	.byte	0x18
	.4byte	0x38
	.byte	0xf
	.byte	0
	.byte	0x10
	.4byte	.LASF137
	.2byte	0x136c
	.byte	0x4
	.byte	0x2
	.byte	0x60
	.byte	0x8
	.4byte	0x9f9
	.byte	0x11
	.4byte	.LASF138
	.byte	0x2
	.byte	0x61
	.byte	0x29
	.4byte	0x22c
	.byte	0x1
	.byte	0
	.byte	0x11
	.4byte	.LASF139
	.byte	0x2
	.byte	0x62
	.byte	0x1b
	.4byte	0x9f9
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0x1b
	.4byte	0x953
	.byte	0x4
	.4byte	0xa0a
	.byte	0x18
	.4byte	0x38
	.byte	0x7
	.byte	0
	.byte	0x10
	.4byte	.LASF140
	.2byte	0x5044
	.byte	0x4
	.byte	0x2
	.byte	0x7c
	.byte	0x8
	.4byte	0xb0d
	.byte	0xc
	.4byte	.LASF82
	.byte	0x2
	.byte	0x7d
	.byte	0x9
	.4byte	0x700
	.byte	0
	.byte	0xc
	.4byte	.LASF141
	.byte	0x2
	.byte	0x7e
	.byte	0x9
	.4byte	0x700
	.byte	0x1
	.byte	0xc
	.4byte	.LASF142
	.byte	0x2
	.byte	0x7f
	.byte	0xd
	.4byte	0xc1
	.byte	0x2
	.byte	0xc
	.4byte	.LASF143
	.byte	0x2
	.byte	0x80
	.byte	0xd
	.4byte	0xc1
	.byte	0x3
	.byte	0xc
	.4byte	.LASF85
	.byte	0x2
	.byte	0x81
	.byte	0xd
	.4byte	0xc1
	.byte	0x4
	.byte	0xc
	.4byte	.LASF144
	.byte	0x2
	.byte	0x82
	.byte	0xd
	.4byte	0xc1
	.byte	0x5
	.byte	0xc
	.4byte	.LASF145
	.byte	0x2
	.byte	0x83
	.byte	0xd
	.4byte	0xc1
	.byte	0x6
	.byte	0xc
	.4byte	.LASF146
	.byte	0x2
	.byte	0x84
	.byte	0xd
	.4byte	0xc1
	.byte	0x7
	.byte	0xc
	.4byte	.LASF147
	.byte	0x2
	.byte	0x85
	.byte	0x9
	.4byte	0x700
	.byte	0x8
	.byte	0x11
	.4byte	.LASF148
	.byte	0x2
	.byte	0x86
	.byte	0x1f
	.4byte	0x707
	.byte	0x1
	.byte	0x9
	.byte	0x11
	.4byte	.LASF149
	.byte	0x2
	.byte	0x87
	.byte	0x22
	.4byte	0x77e
	.byte	0x1
	.byte	0x12
	.byte	0x11
	.4byte	.LASF150
	.byte	0x2
	.byte	0x88
	.byte	0x19
	.4byte	0xb7b
	.byte	0x4
	.byte	0x20
	.byte	0x12
	.4byte	.LASF92
	.byte	0x2
	.byte	0x89
	.byte	0x1a
	.4byte	0x64e
	.2byte	0x4ff0
	.byte	0x13
	.string	"bus"
	.byte	0x2
	.byte	0x8a
	.byte	0x16
	.4byte	0xb75
	.2byte	0x4ff4
	.byte	0x12
	.4byte	.LASF151
	.byte	0x2
	.byte	0x8b
	.byte	0x25
	.4byte	0x654
	.2byte	0x4ff8
	.byte	0x12
	.4byte	.LASF152
	.byte	0x2
	.byte	0x8c
	.byte	0x15
	.4byte	0x435
	.2byte	0x4ffc
	.byte	0x12
	.4byte	.LASF153
	.byte	0x2
	.byte	0x8d
	.byte	0xe
	.4byte	0x42f
	.2byte	0x503c
	.byte	0x12
	.4byte	.LASF154
	.byte	0x2
	.byte	0x8e
	.byte	0x1c
	.4byte	0xb8c
	.2byte	0x5040
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xa0a
	.byte	0x10
	.4byte	.LASF155
	.2byte	0x5070
	.byte	0x4
	.byte	0x2
	.byte	0xa4
	.byte	0x8
	.4byte	0xb75
	.byte	0xc
	.4byte	.LASF69
	.byte	0x2
	.byte	0xa5
	.byte	0x11
	.4byte	0x3bf
	.byte	0
	.byte	0xc
	.4byte	.LASF156
	.byte	0x2
	.byte	0xa6
	.byte	0xd
	.4byte	0xc1
	.byte	0x4
	.byte	0x1a
	.string	"hcd"
	.byte	0x2
	.byte	0xa7
	.byte	0x15
	.4byte	0xbca
	.byte	0x4
	.byte	0x8
	.byte	0x12
	.4byte	.LASF157
	.byte	0x2
	.byte	0xa8
	.byte	0x1d
	.4byte	0xb92
	.2byte	0x5054
	.byte	0x12
	.4byte	.LASF158
	.byte	0x2
	.byte	0xa9
	.byte	0x17
	.4byte	0x670
	.2byte	0x5068
	.byte	0x12
	.4byte	.LASF159
	.byte	0x2
	.byte	0xaa
	.byte	0x13
	.4byte	0x688
	.2byte	0x506c
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xb13
	.byte	0x1b
	.4byte	0x52c
	.byte	0x4
	.4byte	0xb8c
	.byte	0x18
	.4byte	0x38
	.byte	0x3
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x6b1
	.byte	0xb
	.4byte	.LASF160
	.byte	0x14
	.byte	0x2
	.byte	0x91
	.byte	0x8
	.4byte	0xbba
	.byte	0xc
	.4byte	.LASF59
	.byte	0x2
	.byte	0x99
	.byte	0xd
	.4byte	0xc1
	.byte	0
	.byte	0xc
	.4byte	.LASF161
	.byte	0x2
	.byte	0x9a
	.byte	0xe
	.4byte	0xbba
	.byte	0x4
	.byte	0
	.byte	0x15
	.4byte	0xde
	.4byte	0xbca
	.byte	0x18
	.4byte	0x38
	.byte	0x3
	.byte	0
	.byte	0x10
	.4byte	.LASF162
	.2byte	0x504c
	.byte	0x4
	.byte	0x2
	.byte	0x9d
	.byte	0x8
	.4byte	0xc0f
	.byte	0xc
	.4byte	.LASF163
	.byte	0x2
	.byte	0x9e
	.byte	0xf
	.4byte	0xef
	.byte	0
	.byte	0xc
	.4byte	.LASF164
	.byte	0x2
	.byte	0x9f
	.byte	0xd
	.4byte	0xc1
	.byte	0x4
	.byte	0xc
	.4byte	.LASF165
	.byte	0x2
	.byte	0xa0
	.byte	0xd
	.4byte	0xc0f
	.byte	0x5
	.byte	0x11
	.4byte	.LASF166
	.byte	0x2
	.byte	0xa1
	.byte	0x15
	.4byte	0xa0a
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x15
	.4byte	0xc1
	.4byte	0xc1f
	.byte	0x18
	.4byte	0x38
	.byte	0x1
	.byte	0
	.byte	0x15
	.4byte	0xc1
	.4byte	0xc35
	.byte	0x18
	.4byte	0x38
	.byte	0
	.byte	0x18
	.4byte	0x38
	.byte	0x1f
	.byte	0
	.byte	0x1c
	.4byte	.LASF167
	.byte	0x1
	.byte	0x20
	.byte	0x4f
	.4byte	0xc1f
	.byte	0x4
	.byte	0x5
	.byte	0x3
	.4byte	g_hub_buf
	.byte	0x15
	.4byte	0xc1
	.4byte	0xc64
	.byte	0x18
	.4byte	0x38
	.byte	0
	.byte	0x18
	.4byte	0x38
	.byte	0x1
	.byte	0x18
	.4byte	0x38
	.byte	0x3
	.byte	0
	.byte	0x1c
	.4byte	.LASF168
	.byte	0x1
	.byte	0x21
	.byte	0x4f
	.4byte	0xc48
	.byte	0x4
	.byte	0x5
	.byte	0x3
	.4byte	g_hub_intbuf
	.byte	0x15
	.4byte	0xbb
	.4byte	0xc87
	.byte	0x18
	.4byte	0x38
	.byte	0x6
	.byte	0
	.byte	0x1d
	.4byte	.LASF169
	.byte	0x1
	.byte	0x26
	.byte	0x14
	.4byte	0xc77
	.byte	0x5
	.byte	0x3
	.4byte	speed_table
	.byte	0x1b
	.4byte	0xa0a
	.byte	0x4
	.4byte	0xcaa
	.byte	0x18
	.4byte	0x38
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LASF170
	.byte	0x1
	.byte	0x29
	.byte	0x18
	.4byte	0xc99
	.byte	0x5
	.byte	0x3
	.4byte	g_hub_class
	.byte	0x1d
	.4byte	.LASF171
	.byte	0x1
	.byte	0x2a
	.byte	0x11
	.4byte	0xde
	.byte	0x5
	.byte	0x3
	.4byte	g_devinuse
	.byte	0x1e
	.4byte	.LASF247
	.byte	0x1
	.2byte	0x2f0
	.byte	0x20
	.4byte	0x8d6
	.byte	0x5
	.byte	0x3
	.4byte	hub_class_driver
	.byte	0x1f
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x2f6
	.byte	0x7d
	.4byte	0x886
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	hub_class_info
	.byte	0x20
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x2d6
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.byte	0x1
	.byte	0x9c
	.4byte	0xdbc
	.byte	0x21
	.string	"bus"
	.byte	0x1
	.2byte	0x2d6
	.byte	0x2c
	.4byte	0xb75
	.4byte	.LLST105
	.byte	0x22
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x2d8
	.byte	0x1a
	.4byte	0x64e
	.4byte	.LLST106
	.byte	0x23
	.string	"hub"
	.byte	0x1
	.2byte	0x2d9
	.byte	0x16
	.4byte	0xb0d
	.4byte	.LLST107
	.byte	0x22
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x2da
	.byte	0xc
	.4byte	0x2c
	.4byte	.LLST108
	.byte	0x24
	.4byte	.Ldebug_ranges0+0x2b0
	.4byte	0xd78
	.byte	0x22
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x2dd
	.byte	0x12
	.4byte	0xc1
	.4byte	.LLST109
	.byte	0x25
	.4byte	.LVL346
	.4byte	0x2809
	.byte	0
	.byte	0x25
	.4byte	.LVL334
	.4byte	0x2815
	.byte	0x26
	.4byte	.LVL336
	.4byte	0x2821
	.4byte	0xd95
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	.LVL337
	.4byte	0x282d
	.4byte	0xda9
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x25
	.4byte	.LVL339
	.4byte	0x2839
	.byte	0x25
	.4byte	.LVL340
	.4byte	0x2845
	.byte	0
	.byte	0x20
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x2b8
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.byte	0x1
	.byte	0x9c
	.4byte	0xed7
	.byte	0x21
	.string	"bus"
	.byte	0x1
	.2byte	0x2b8
	.byte	0x2a
	.4byte	0xb75
	.4byte	.LLST103
	.byte	0x28
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x2ba
	.byte	0xa
	.4byte	0xed7
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x23
	.string	"hub"
	.byte	0x1
	.2byte	0x2bb
	.byte	0x16
	.4byte	0xb0d
	.4byte	.LLST104
	.byte	0x26
	.4byte	.LVL320
	.4byte	0x2851
	.4byte	0xe27
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x4c
	.byte	0
	.byte	0x26
	.4byte	.LVL321
	.4byte	0x285c
	.4byte	0xe3a
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x37
	.byte	0
	.byte	0x26
	.4byte	.LVL322
	.4byte	0x2868
	.4byte	0xe51
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x25
	.4byte	.LVL323
	.4byte	0x2868
	.byte	0x26
	.4byte	.LVL324
	.4byte	0x2868
	.4byte	0xe71
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x26
	.4byte	.LVL328
	.4byte	0x2874
	.4byte	0xe94
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC38
	.byte	0
	.byte	0x26
	.4byte	.LVL329
	.4byte	0x2881
	.4byte	0xec3
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xa
	.2byte	0x800
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3f
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	usbh_hub_thread
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.LVL330
	.4byte	0x2868
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	0xaf
	.4byte	0xee7
	.byte	0x18
	.4byte	0x38
	.byte	0x1f
	.byte	0
	.byte	0x2a
	.4byte	.LASF248
	.byte	0x1
	.2byte	0x2b3
	.byte	0x6
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x1
	.byte	0x9c
	.4byte	0xf21
	.byte	0x21
	.string	"hub"
	.byte	0x1
	.2byte	0x2b3
	.byte	0x2e
	.4byte	0xb0d
	.4byte	.LLST97
	.byte	0x2b
	.4byte	.LVL312
	.4byte	0x288d
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x2c
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x2a2
	.byte	0xd
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x1
	.byte	0x9c
	.4byte	0x157a
	.byte	0x2d
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x2a2
	.byte	0x23
	.4byte	0xa7
	.4byte	.LLST79
	.byte	0x2e
	.string	"hub"
	.byte	0x1
	.2byte	0x2a4
	.byte	0x16
	.4byte	0xb0d
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0x23
	.string	"ret"
	.byte	0x1
	.2byte	0x2a5
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST80
	.byte	0x23
	.string	"bus"
	.byte	0x1
	.2byte	0x2a7
	.byte	0x16
	.4byte	0xb75
	.4byte	.LLST81
	.byte	0x2f
	.4byte	0x157a
	.4byte	.LBB141
	.4byte	.Ldebug_ranges0+0x1e8
	.byte	0x1
	.2byte	0x2af
	.byte	0x9
	.4byte	0x154c
	.byte	0x30
	.4byte	0x1588
	.4byte	.LLST82
	.byte	0x31
	.4byte	.Ldebug_ranges0+0x1e8
	.byte	0x32
	.4byte	0x1595
	.4byte	.LLST83
	.byte	0x33
	.4byte	0x15a2
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0x33
	.4byte	0x15af
	.byte	0x3
	.byte	0x91
	.byte	0xb6,0x7f
	.byte	0x32
	.4byte	0x15bc
	.4byte	.LLST84
	.byte	0x32
	.4byte	0x15c9
	.4byte	.LLST85
	.byte	0x32
	.4byte	0x15d6
	.4byte	.LLST86
	.byte	0x32
	.4byte	0x15e3
	.4byte	.LLST87
	.byte	0x32
	.4byte	0x15f0
	.4byte	.LLST88
	.byte	0x32
	.4byte	0x15fd
	.4byte	.LLST89
	.byte	0x32
	.4byte	0x160a
	.4byte	.LLST90
	.byte	0x34
	.4byte	0x1617
	.4byte	.Ldebug_ranges0+0x200
	.4byte	0x150a
	.byte	0x32
	.4byte	0x1618
	.4byte	.LLST91
	.byte	0x34
	.4byte	0x1625
	.4byte	.Ldebug_ranges0+0x220
	.4byte	0x1437
	.byte	0x32
	.4byte	0x1626
	.4byte	.LLST92
	.byte	0x32
	.4byte	0x1633
	.4byte	.LLST93
	.byte	0x34
	.4byte	0x1640
	.4byte	.Ldebug_ranges0+0x250
	.4byte	0x10e7
	.byte	0x32
	.4byte	0x1645
	.4byte	.LLST94
	.byte	0x26
	.4byte	.LVL224
	.4byte	0x20ab
	.4byte	0x1065
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0
	.byte	0x26
	.4byte	.LVL226
	.4byte	0x2868
	.4byte	0x107c
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x26
	.4byte	.LVL227
	.4byte	0x2868
	.4byte	0x10a1
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC25
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x4
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0x6
	.byte	0
	.byte	0x26
	.4byte	.LVL228
	.4byte	0x2868
	.4byte	0x10b8
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x26
	.4byte	.LVL259
	.4byte	0x2009
	.4byte	0x10d7
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x29
	.4byte	.LVL261
	.4byte	0x2899
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x49
	.byte	0
	.byte	0
	.byte	0x34
	.4byte	0x1653
	.4byte	.Ldebug_ranges0+0x270
	.4byte	0x11c4
	.byte	0x32
	.4byte	0x1654
	.4byte	.LLST95
	.byte	0x34
	.4byte	0x1661
	.4byte	.Ldebug_ranges0+0x290
	.4byte	0x118f
	.byte	0x32
	.4byte	0x1662
	.4byte	.LLST96
	.byte	0x26
	.4byte	.LVL287
	.4byte	0x28a5
	.4byte	0x1127
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	.LVL298
	.4byte	0x2868
	.4byte	0x113e
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC30
	.byte	0
	.byte	0x26
	.4byte	.LVL299
	.4byte	0x2868
	.4byte	0x1166
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC33
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x89
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x26
	.4byte	.LVL300
	.4byte	0x2868
	.4byte	0x117d
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x29
	.4byte	.LVL301
	.4byte	0x2899
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x1f4
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	.LVL290
	.4byte	0x2809
	.4byte	0x11a3
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	.LVL291
	.4byte	0x2868
	.4byte	0x11ba
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x25
	.4byte	.LVL296
	.4byte	0x2868
	.byte	0
	.byte	0x25
	.4byte	.LVL216
	.4byte	0x2868
	.byte	0x26
	.4byte	.LVL230
	.4byte	0x2868
	.4byte	0x11e4
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x26
	.4byte	.LVL231
	.4byte	0x2868
	.4byte	0x1201
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC27
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	.LVL232
	.4byte	0x2868
	.4byte	0x1218
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x26
	.4byte	.LVL253
	.4byte	0x205d
	.4byte	0x1237
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0x26
	.4byte	.LVL255
	.4byte	0x2868
	.4byte	0x124e
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x25
	.4byte	.LVL256
	.4byte	0x2868
	.byte	0x26
	.4byte	.LVL264
	.4byte	0x2899
	.4byte	0x126c
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x190
	.byte	0
	.byte	0x26
	.4byte	.LVL265
	.4byte	0x20ab
	.4byte	0x128d
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0
	.byte	0x26
	.4byte	.LVL267
	.4byte	0x2868
	.4byte	0x12a4
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x26
	.4byte	.LVL271
	.4byte	0x2009
	.4byte	0x12c3
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0x26
	.4byte	.LVL273
	.4byte	0x2868
	.4byte	0x12da
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x26
	.4byte	.LVL274
	.4byte	0x2868
	.4byte	0x12ff
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC29
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x4
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0x6
	.byte	0
	.byte	0x26
	.4byte	.LVL275
	.4byte	0x2868
	.4byte	0x1316
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x26
	.4byte	.LVL280
	.4byte	0x2809
	.4byte	0x132a
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	.LVL281
	.4byte	0x28b1
	.4byte	0x134a
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x85
	.byte	0xf4,0x7
	.byte	0
	.byte	0x25
	.4byte	.LVL282
	.4byte	0x28bd
	.byte	0x26
	.4byte	.LVL283
	.4byte	0x2868
	.4byte	0x136a
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x26
	.4byte	.LVL285
	.4byte	0x2868
	.4byte	0x1387
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC32
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	.LVL286
	.4byte	0x2868
	.4byte	0x139e
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x26
	.4byte	.LVL294
	.4byte	0x2868
	.4byte	0x13b5
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC30
	.byte	0
	.byte	0x26
	.4byte	.LVL304
	.4byte	0x2809
	.4byte	0x13d2
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0xb
	.byte	0x82
	.byte	0
	.byte	0xa
	.2byte	0x13f4
	.byte	0x1e
	.byte	0x78
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x20
	.byte	0
	.byte	0x26
	.4byte	.LVL305
	.4byte	0x2868
	.4byte	0x13e9
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC30
	.byte	0
	.byte	0x26
	.4byte	.LVL307
	.4byte	0x2809
	.4byte	0x1406
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0xb
	.byte	0x82
	.byte	0
	.byte	0xa
	.2byte	0x13f4
	.byte	0x1e
	.byte	0x78
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x20
	.byte	0
	.byte	0x26
	.4byte	.LVL308
	.4byte	0x2868
	.4byte	0x141d
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x29
	.4byte	.LVL309
	.4byte	0x2868
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC35
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	.LVL211
	.4byte	0x20ab
	.4byte	0x1458
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0
	.byte	0x26
	.4byte	.LVL213
	.4byte	0x2868
	.4byte	0x146f
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x26
	.4byte	.LVL214
	.4byte	0x2868
	.4byte	0x1494
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC25
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x4
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0x6
	.byte	0
	.byte	0x26
	.4byte	.LVL236
	.4byte	0x2009
	.4byte	0x14b4
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	.LVL238
	.4byte	0x2868
	.4byte	0x14cb
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x26
	.4byte	.LVL239
	.4byte	0x2868
	.4byte	0x14f6
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC26
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x89
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x4
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0x6
	.byte	0
	.byte	0x29
	.4byte	.LVL240
	.4byte	0x2868
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.byte	0x25
	.4byte	.LVL204
	.4byte	0x2815
	.byte	0x26
	.4byte	.LVL207
	.4byte	0x2430
	.4byte	0x152d
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xb6,0x7f
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x26
	.4byte	.LVL208
	.4byte	0x282d
	.4byte	0x1541
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x25
	.4byte	.LVL234
	.4byte	0x28c9
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	.LVL200
	.4byte	0x28d5
	.4byte	0x1562
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x4
	.byte	0x91
	.byte	0xa4,0x7f
	.byte	0x6
	.byte	0
	.byte	0x29
	.4byte	.LVL202
	.4byte	0x28e1
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.byte	0x35
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x1d6
	.byte	0xd
	.byte	0x1
	.4byte	0x1674
	.byte	0x36
	.string	"hub"
	.byte	0x1
	.2byte	0x1d6
	.byte	0x2e
	.4byte	0xb0d
	.byte	0x37
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x1d8
	.byte	0x1a
	.4byte	0x64e
	.byte	0x37
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x1d9
	.byte	0x1c
	.4byte	0x802
	.byte	0x37
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x1da
	.byte	0xe
	.4byte	0xcd
	.byte	0x37
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x1db
	.byte	0xe
	.4byte	0xcd
	.byte	0x37
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x1dc
	.byte	0xe
	.4byte	0xcd
	.byte	0x37
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x1dd
	.byte	0xe
	.4byte	0xcd
	.byte	0x37
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x1de
	.byte	0xe
	.4byte	0xcd
	.byte	0x37
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x1df
	.byte	0xd
	.4byte	0xc1
	.byte	0x38
	.string	"ret"
	.byte	0x1
	.2byte	0x1e0
	.byte	0x9
	.4byte	0x25
	.byte	0x37
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x1e1
	.byte	0xc
	.4byte	0x2c
	.byte	0x39
	.byte	0x37
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x1eb
	.byte	0x12
	.4byte	0xc1
	.byte	0x39
	.byte	0x37
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x214
	.byte	0x16
	.4byte	0xcd
	.byte	0x37
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x215
	.byte	0x16
	.4byte	0xcd
	.byte	0x3a
	.4byte	0x1653
	.byte	0x37
	.4byte	.LASF185
	.byte	0x1
	.2byte	0x216
	.byte	0x1b
	.4byte	0xde
	.byte	0
	.byte	0x39
	.byte	0x37
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x278
	.byte	0x1d
	.4byte	0x25
	.byte	0x39
	.byte	0x37
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x279
	.byte	0x22
	.4byte	0x25
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x3b
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x1b6
	.byte	0xc
	.4byte	0x25
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x1
	.byte	0x9c
	.4byte	0x17b5
	.byte	0x2d
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x1b6
	.byte	0x35
	.4byte	0x64e
	.4byte	.LLST0
	.byte	0x2d
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x1b6
	.byte	0x44
	.4byte	0xc1
	.4byte	.LLST1
	.byte	0x22
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x1b8
	.byte	0x1a
	.4byte	0x64e
	.4byte	.LLST2
	.byte	0x3c
	.string	"ret"
	.byte	0x1
	.2byte	0x1b9
	.byte	0x9
	.4byte	0x25
	.byte	0
	.byte	0x23
	.string	"hub"
	.byte	0x1
	.2byte	0x1bb
	.byte	0x16
	.4byte	0xb0d
	.4byte	.LLST3
	.byte	0x24
	.4byte	.Ldebug_ranges0+0
	.4byte	0x1705
	.byte	0x22
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x1c6
	.byte	0x16
	.4byte	0xc1
	.4byte	.LLST4
	.byte	0x25
	.4byte	.LVL15
	.4byte	0x2809
	.byte	0
	.byte	0x3d
	.4byte	0x22eb
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.byte	0x1
	.2byte	0x1d0
	.byte	0x9
	.4byte	0x1749
	.byte	0x30
	.4byte	0x22f8
	.4byte	.LLST5
	.byte	0x32
	.4byte	0x2304
	.4byte	.LLST6
	.byte	0x29
	.4byte	.LVL11
	.4byte	0x28b1
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x5044
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	.LVL3
	.4byte	0x28ed
	.4byte	0x175f
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x4
	.byte	0x78
	.byte	0xfc,0x9f,0x1
	.byte	0
	.byte	0x25
	.4byte	.LVL4
	.4byte	0x28f9
	.byte	0x26
	.4byte	.LVL6
	.4byte	0x2868
	.4byte	0x177f
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x26
	.4byte	.LVL7
	.4byte	0x2868
	.4byte	0x17a1
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x7
	.byte	0x84
	.byte	0
	.byte	0x79
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x28
	.byte	0
	.byte	0x29
	.4byte	.LVL8
	.4byte	0x2868
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.byte	0x3b
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x144
	.byte	0xc
	.4byte	0x25
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x1
	.byte	0x9c
	.4byte	0x1ef7
	.byte	0x2d
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x144
	.byte	0x32
	.4byte	0x64e
	.4byte	.LLST44
	.byte	0x2d
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x144
	.byte	0x41
	.4byte	0xc1
	.4byte	.LLST45
	.byte	0x22
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x146
	.byte	0x25
	.4byte	0x654
	.4byte	.LLST46
	.byte	0x28
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x147
	.byte	0x1c
	.4byte	0x802
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x23
	.string	"ret"
	.byte	0x1
	.2byte	0x148
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST47
	.byte	0x23
	.string	"hub"
	.byte	0x1
	.2byte	0x14a
	.byte	0x16
	.4byte	0xb0d
	.4byte	.LLST48
	.byte	0x24
	.4byte	.Ldebug_ranges0+0x158
	.4byte	0x1850
	.byte	0x22
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x182
	.byte	0x12
	.4byte	0xc1
	.4byte	.LLST62
	.byte	0
	.byte	0x24
	.4byte	.Ldebug_ranges0+0x188
	.4byte	0x1889
	.byte	0x22
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x195
	.byte	0x12
	.4byte	0xc1
	.4byte	.LLST69
	.byte	0x29
	.4byte	.LVL172
	.4byte	0x205d
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	g_hub_class
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x38
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	.Ldebug_ranges0+0x1a0
	.4byte	0x190e
	.byte	0x22
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x19e
	.byte	0x12
	.4byte	0xc1
	.4byte	.LLST70
	.byte	0x26
	.4byte	.LVL175
	.4byte	0x20ab
	.4byte	0x18c6
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	g_hub_class
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0
	.byte	0x26
	.4byte	.LVL177
	.4byte	0x2868
	.4byte	0x18dd
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x26
	.4byte	.LVL178
	.4byte	0x2868
	.4byte	0x18fa
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x89
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.LVL179
	.4byte	0x2868
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.byte	0x2f
	.4byte	0x2311
	.4byte	.LBB83
	.4byte	.Ldebug_ranges0+0xd0
	.byte	0x1
	.2byte	0x14a
	.byte	0x1c
	.4byte	0x1952
	.byte	0x31
	.4byte	.Ldebug_ranges0+0xd0
	.byte	0x32
	.4byte	0x2322
	.4byte	.LLST49
	.byte	0x29
	.4byte	.LVL88
	.4byte	0x28b1
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	g_hub_class
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x78
	.byte	0xc4,0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2f
	.4byte	0x1fc2
	.4byte	.LBB88
	.4byte	.Ldebug_ranges0+0xf0
	.byte	0x1
	.2byte	0x164
	.byte	0xf
	.4byte	0x19f1
	.byte	0x30
	.4byte	0x1fe1
	.4byte	.LLST50
	.byte	0x30
	.4byte	0x1fd4
	.4byte	.LLST51
	.byte	0x31
	.4byte	.Ldebug_ranges0+0xf0
	.byte	0x33
	.4byte	0x1fee
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x32
	.4byte	0x1ffb
	.4byte	.LLST52
	.byte	0x2f
	.4byte	0x215f
	.4byte	.LBB90
	.4byte	.Ldebug_ranges0+0x110
	.byte	0x1
	.2byte	0x12a
	.byte	0x10
	.4byte	0x19da
	.byte	0x3e
	.4byte	0x2170
	.byte	0x30
	.4byte	0x2170
	.4byte	.LLST53
	.byte	0x30
	.4byte	0x217c
	.4byte	.LLST54
	.byte	0x31
	.4byte	.Ldebug_ranges0+0x110
	.byte	0x32
	.4byte	0x2188
	.4byte	.LLST55
	.byte	0x29
	.4byte	.LVL107
	.4byte	0x2905
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.LVL98
	.4byte	0x2911
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2f
	.4byte	0x2267
	.4byte	.LBB98
	.4byte	.Ldebug_ranges0+0x128
	.byte	0x1
	.2byte	0x16d
	.byte	0xf
	.4byte	0x1a52
	.byte	0x30
	.4byte	0x2284
	.4byte	.LLST56
	.byte	0x30
	.4byte	0x2278
	.4byte	.LLST57
	.byte	0x31
	.4byte	.Ldebug_ranges0+0x128
	.byte	0x32
	.4byte	0x2290
	.4byte	.LLST58
	.byte	0x32
	.4byte	0x229c
	.4byte	.LLST59
	.byte	0x25
	.4byte	.LVL111
	.4byte	0x2905
	.byte	0x29
	.4byte	.LVL113
	.4byte	0x2430
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	g_hub_class+18
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3b
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2f
	.4byte	0x20ff
	.4byte	.LBB102
	.4byte	.Ldebug_ranges0+0x140
	.byte	0x1
	.2byte	0x172
	.byte	0x9
	.4byte	0x1b7c
	.byte	0x30
	.4byte	0x211c
	.4byte	.LLST60
	.byte	0x30
	.4byte	0x2110
	.4byte	.LLST61
	.byte	0x26
	.4byte	.LVL114
	.4byte	0x2868
	.4byte	0x1a90
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x25
	.4byte	.LVL115
	.4byte	0x2868
	.byte	0x26
	.4byte	.LVL116
	.4byte	0x2868
	.4byte	0x1ab0
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x26
	.4byte	.LVL118
	.4byte	0x2868
	.4byte	0x1ac7
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x26
	.4byte	.LVL119
	.4byte	0x2868
	.4byte	0x1ade
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.byte	0x26
	.4byte	.LVL120
	.4byte	0x2868
	.4byte	0x1af5
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0x26
	.4byte	.LVL121
	.4byte	0x2868
	.4byte	0x1b0c
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.byte	0x26
	.4byte	.LVL122
	.4byte	0x2868
	.4byte	0x1b23
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.byte	0x26
	.4byte	.LVL123
	.4byte	0x2868
	.4byte	0x1b3a
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.byte	0x26
	.4byte	.LVL124
	.4byte	0x2868
	.4byte	0x1b51
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.byte	0x26
	.4byte	.LVL125
	.4byte	0x2868
	.4byte	0x1b68
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.byte	0x29
	.4byte	.LVL126
	.4byte	0x2868
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.byte	0
	.byte	0x3d
	.4byte	0x22a9
	.4byte	.LBB107
	.4byte	.LBE107-.LBB107
	.byte	0x1
	.2byte	0x177
	.byte	0xf
	.4byte	0x1bd8
	.byte	0x30
	.4byte	0x22c6
	.4byte	.LLST63
	.byte	0x30
	.4byte	0x22ba
	.4byte	.LLST64
	.byte	0x32
	.4byte	0x22d2
	.4byte	.LLST65
	.byte	0x32
	.4byte	0x22de
	.4byte	.LLST66
	.byte	0x25
	.4byte	.LVL129
	.4byte	0x2905
	.byte	0x29
	.4byte	.LVL131
	.4byte	0x2430
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	g_hub_class+9
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2f
	.4byte	0x212f
	.4byte	.LBB109
	.4byte	.Ldebug_ranges0+0x170
	.byte	0x1
	.2byte	0x17c
	.byte	0x9
	.4byte	0x1d19
	.byte	0x30
	.4byte	0x214c
	.4byte	.LLST67
	.byte	0x30
	.4byte	0x2140
	.4byte	.LLST68
	.byte	0x26
	.4byte	.LVL132
	.4byte	0x2868
	.4byte	0x1c16
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x25
	.4byte	.LVL133
	.4byte	0x2868
	.byte	0x26
	.4byte	.LVL134
	.4byte	0x2868
	.4byte	0x1c36
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x26
	.4byte	.LVL136
	.4byte	0x2868
	.4byte	0x1c4d
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x26
	.4byte	.LVL137
	.4byte	0x2868
	.4byte	0x1c64
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0
	.byte	0x26
	.4byte	.LVL138
	.4byte	0x2868
	.4byte	0x1c7b
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0x26
	.4byte	.LVL139
	.4byte	0x2868
	.4byte	0x1c92
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.byte	0x26
	.4byte	.LVL140
	.4byte	0x2868
	.4byte	0x1ca9
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.byte	0x26
	.4byte	.LVL141
	.4byte	0x2868
	.4byte	0x1cc0
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.byte	0x26
	.4byte	.LVL142
	.4byte	0x2868
	.4byte	0x1cd7
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.byte	0x26
	.4byte	.LVL143
	.4byte	0x2868
	.4byte	0x1cee
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.byte	0x26
	.4byte	.LVL144
	.4byte	0x2868
	.4byte	0x1d05
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.byte	0x29
	.4byte	.LVL145
	.4byte	0x2868
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	.LVL90
	.4byte	0x2868
	.4byte	0x1d30
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x26
	.4byte	.LVL91
	.4byte	0x2868
	.4byte	0x1d47
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0x26
	.4byte	.LVL92
	.4byte	0x2868
	.4byte	0x1d5e
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x26
	.4byte	.LVL100
	.4byte	0x2868
	.4byte	0x1d75
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x26
	.4byte	.LVL101
	.4byte	0x2868
	.4byte	0x1d8c
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x26
	.4byte	.LVL102
	.4byte	0x2868
	.4byte	0x1da3
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x26
	.4byte	.LVL152
	.4byte	0x2868
	.4byte	0x1dba
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x26
	.4byte	.LVL153
	.4byte	0x2868
	.4byte	0x1dd1
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0
	.byte	0x26
	.4byte	.LVL154
	.4byte	0x2868
	.4byte	0x1de8
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x25
	.4byte	.LVL156
	.4byte	0x2899
	.byte	0x26
	.4byte	.LVL161
	.4byte	0x2874
	.4byte	0x1e13
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC20
	.byte	0
	.byte	0x26
	.4byte	.LVL162
	.4byte	0x2868
	.4byte	0x1e2a
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x26
	.4byte	.LVL163
	.4byte	0x2868
	.4byte	0x1e47
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC21
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	.LVL164
	.4byte	0x2868
	.4byte	0x1e5e
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x26
	.4byte	.LVL165
	.4byte	0x291d
	.4byte	0x1e8c
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC22
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	hub_int_timeout
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	g_hub_class
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x26
	.4byte	.LVL166
	.4byte	0x2868
	.4byte	0x1ea3
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x26
	.4byte	.LVL167
	.4byte	0x2868
	.4byte	0x1eba
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.byte	0x25
	.4byte	.LVL169
	.4byte	0x2868
	.byte	0x25
	.4byte	.LVL181
	.4byte	0x28c9
	.byte	0x26
	.4byte	.LVL184
	.4byte	0x2868
	.4byte	0x1ee3
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x29
	.4byte	.LVL185
	.4byte	0x2868
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC24
	.byte	0
	.byte	0
	.byte	0x2c
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x13c
	.byte	0xd
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x1
	.byte	0x9c
	.4byte	0x1f8c
	.byte	0x21
	.string	"arg"
	.byte	0x1
	.2byte	0x13c
	.byte	0x23
	.4byte	0xa7
	.4byte	.LLST7
	.byte	0x23
	.string	"hub"
	.byte	0x1
	.2byte	0x13e
	.byte	0x16
	.4byte	0xb0d
	.4byte	.LLST8
	.byte	0x2f
	.4byte	0x232f
	.4byte	.LBB12
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.2byte	0x140
	.byte	0x5
	.4byte	0x1f82
	.byte	0x30
	.4byte	0x236b
	.4byte	.LLST9
	.byte	0x30
	.4byte	0x2377
	.4byte	.LLST10
	.byte	0x3e
	.4byte	0x2383
	.byte	0x30
	.4byte	0x238f
	.4byte	.LLST11
	.byte	0x3e
	.4byte	0x235f
	.byte	0x30
	.4byte	0x2354
	.4byte	.LLST12
	.byte	0x3e
	.4byte	0x2348
	.byte	0x30
	.4byte	0x233c
	.4byte	.LLST13
	.byte	0
	.byte	0x3f
	.4byte	.LVL23
	.4byte	0x2929
	.byte	0
	.byte	0x35
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x12e
	.byte	0xd
	.byte	0x1
	.4byte	0x1fc2
	.byte	0x36
	.string	"arg"
	.byte	0x1
	.2byte	0x12e
	.byte	0x2d
	.4byte	0xa7
	.byte	0x40
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x12e
	.byte	0x36
	.4byte	0x25
	.byte	0x38
	.string	"hub"
	.byte	0x1
	.2byte	0x130
	.byte	0x16
	.4byte	0xb0d
	.byte	0
	.byte	0x41
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x11c
	.byte	0xc
	.4byte	0x25
	.byte	0x1
	.4byte	0x2009
	.byte	0x36
	.string	"hub"
	.byte	0x1
	.2byte	0x11c
	.byte	0x30
	.4byte	0xb0d
	.byte	0x40
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x11c
	.byte	0x3e
	.4byte	0xcd
	.byte	0x37
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x11e
	.byte	0x1d
	.4byte	0x102
	.byte	0x37
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x11f
	.byte	0x1e
	.4byte	0x65a
	.byte	0
	.byte	0x42
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x109
	.byte	0x5
	.4byte	0x25
	.byte	0x1
	.4byte	0x205d
	.byte	0x36
	.string	"hub"
	.byte	0x1
	.2byte	0x109
	.byte	0x2d
	.4byte	0xb0d
	.byte	0x40
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x109
	.byte	0x3a
	.4byte	0xc1
	.byte	0x40
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x109
	.byte	0x48
	.4byte	0xc1
	.byte	0x37
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x10b
	.byte	0x1d
	.4byte	0x102
	.byte	0x37
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x10c
	.byte	0x1e
	.4byte	0x65a
	.byte	0
	.byte	0x43
	.4byte	.LASF198
	.byte	0x1
	.byte	0xf7
	.byte	0x5
	.4byte	0x25
	.byte	0x1
	.4byte	0x20ab
	.byte	0x44
	.string	"hub"
	.byte	0x1
	.byte	0xf7
	.byte	0x2b
	.4byte	0xb0d
	.byte	0x45
	.4byte	.LASF83
	.byte	0x1
	.byte	0xf7
	.byte	0x38
	.4byte	0xc1
	.byte	0x45
	.4byte	.LASF196
	.byte	0x1
	.byte	0xf7
	.byte	0x46
	.4byte	0xc1
	.byte	0x46
	.4byte	.LASF195
	.byte	0x1
	.byte	0xf9
	.byte	0x1d
	.4byte	0x102
	.byte	0x46
	.4byte	.LASF74
	.byte	0x1
	.byte	0xfa
	.byte	0x1e
	.4byte	0x65a
	.byte	0
	.byte	0x47
	.4byte	.LASF200
	.byte	0x1
	.byte	0xe5
	.byte	0xc
	.4byte	0x25
	.byte	0x1
	.4byte	0x20f9
	.byte	0x44
	.string	"hub"
	.byte	0x1
	.byte	0xe5
	.byte	0x35
	.4byte	0xb0d
	.byte	0x45
	.4byte	.LASF83
	.byte	0x1
	.byte	0xe5
	.byte	0x42
	.4byte	0xc1
	.byte	0x45
	.4byte	.LASF177
	.byte	0x1
	.byte	0xe5
	.byte	0x60
	.4byte	0x20f9
	.byte	0x46
	.4byte	.LASF195
	.byte	0x1
	.byte	0xe7
	.byte	0x1d
	.4byte	0x102
	.byte	0x46
	.4byte	.LASF74
	.byte	0x1
	.byte	0xe8
	.byte	0x1e
	.4byte	0x65a
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x802
	.byte	0x47
	.4byte	.LASF201
	.byte	0x1
	.byte	0xcd
	.byte	0xc
	.4byte	0x25
	.byte	0x1
	.4byte	0x2129
	.byte	0x45
	.4byte	.LASF202
	.byte	0x1
	.byte	0xcd
	.byte	0x42
	.4byte	0x2129
	.byte	0x45
	.4byte	.LASF203
	.byte	0x1
	.byte	0xcd
	.byte	0x51
	.4byte	0xcd
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x77e
	.byte	0x47
	.4byte	.LASF204
	.byte	0x1
	.byte	0xb5
	.byte	0xc
	.4byte	0x25
	.byte	0x1
	.4byte	0x2159
	.byte	0x45
	.4byte	.LASF202
	.byte	0x1
	.byte	0xb5
	.byte	0x3c
	.4byte	0x2159
	.byte	0x45
	.4byte	.LASF203
	.byte	0x1
	.byte	0xb5
	.byte	0x4b
	.4byte	0xcd
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x707
	.byte	0x47
	.4byte	.LASF205
	.byte	0x1
	.byte	0xa6
	.byte	0xc
	.4byte	0x25
	.byte	0x1
	.4byte	0x2195
	.byte	0x44
	.string	"hub"
	.byte	0x1
	.byte	0xa6
	.byte	0x31
	.4byte	0xb0d
	.byte	0x45
	.4byte	.LASF86
	.byte	0x1
	.byte	0xa6
	.byte	0x3f
	.4byte	0xcd
	.byte	0x46
	.4byte	.LASF74
	.byte	0x1
	.byte	0xa8
	.byte	0x1e
	.4byte	0x65a
	.byte	0
	.byte	0x47
	.4byte	.LASF206
	.byte	0x1
	.byte	0x96
	.byte	0xc
	.4byte	0x25
	.byte	0x1
	.4byte	0x21d7
	.byte	0x44
	.string	"hub"
	.byte	0x1
	.byte	0x96
	.byte	0x35
	.4byte	0xb0d
	.byte	0x45
	.4byte	.LASF83
	.byte	0x1
	.byte	0x96
	.byte	0x42
	.4byte	0xc1
	.byte	0x45
	.4byte	.LASF196
	.byte	0x1
	.byte	0x96
	.byte	0x50
	.4byte	0xc1
	.byte	0x46
	.4byte	.LASF74
	.byte	0x1
	.byte	0x98
	.byte	0x1e
	.4byte	0x65a
	.byte	0
	.byte	0x47
	.4byte	.LASF207
	.byte	0x1
	.byte	0x87
	.byte	0xc
	.4byte	0x25
	.byte	0x1
	.4byte	0x2219
	.byte	0x44
	.string	"hub"
	.byte	0x1
	.byte	0x87
	.byte	0x33
	.4byte	0xb0d
	.byte	0x45
	.4byte	.LASF83
	.byte	0x1
	.byte	0x87
	.byte	0x40
	.4byte	0xc1
	.byte	0x45
	.4byte	.LASF196
	.byte	0x1
	.byte	0x87
	.byte	0x4e
	.4byte	0xc1
	.byte	0x46
	.4byte	.LASF74
	.byte	0x1
	.byte	0x89
	.byte	0x1e
	.4byte	0x65a
	.byte	0
	.byte	0x47
	.4byte	.LASF208
	.byte	0x1
	.byte	0x72
	.byte	0xc
	.4byte	0x25
	.byte	0x1
	.4byte	0x2267
	.byte	0x44
	.string	"hub"
	.byte	0x1
	.byte	0x72
	.byte	0x36
	.4byte	0xb0d
	.byte	0x45
	.4byte	.LASF83
	.byte	0x1
	.byte	0x72
	.byte	0x43
	.4byte	0xc1
	.byte	0x45
	.4byte	.LASF177
	.byte	0x1
	.byte	0x72
	.byte	0x61
	.4byte	0x20f9
	.byte	0x46
	.4byte	.LASF74
	.byte	0x1
	.byte	0x74
	.byte	0x1e
	.4byte	0x65a
	.byte	0x48
	.string	"ret"
	.byte	0x1
	.byte	0x75
	.byte	0x9
	.4byte	0x25
	.byte	0
	.byte	0x47
	.4byte	.LASF209
	.byte	0x1
	.byte	0x5b
	.byte	0xc
	.4byte	0x25
	.byte	0x1
	.4byte	0x22a9
	.byte	0x44
	.string	"hub"
	.byte	0x1
	.byte	0x5b
	.byte	0x3d
	.4byte	0xb0d
	.byte	0x45
	.4byte	.LASF210
	.byte	0x1
	.byte	0x5b
	.byte	0x4b
	.4byte	0x42f
	.byte	0x46
	.4byte	.LASF74
	.byte	0x1
	.byte	0x5d
	.byte	0x1e
	.4byte	0x65a
	.byte	0x48
	.string	"ret"
	.byte	0x1
	.byte	0x5e
	.byte	0x9
	.4byte	0x25
	.byte	0
	.byte	0x47
	.4byte	.LASF211
	.byte	0x1
	.byte	0x45
	.byte	0xc
	.4byte	0x25
	.byte	0x1
	.4byte	0x22eb
	.byte	0x44
	.string	"hub"
	.byte	0x1
	.byte	0x45
	.byte	0x3a
	.4byte	0xb0d
	.byte	0x45
	.4byte	.LASF210
	.byte	0x1
	.byte	0x45
	.byte	0x48
	.4byte	0x42f
	.byte	0x46
	.4byte	.LASF74
	.byte	0x1
	.byte	0x47
	.byte	0x1e
	.4byte	0x65a
	.byte	0x48
	.string	"ret"
	.byte	0x1
	.byte	0x48
	.byte	0x9
	.4byte	0x25
	.byte	0
	.byte	0x49
	.4byte	.LASF212
	.byte	0x1
	.byte	0x3b
	.byte	0xd
	.byte	0x1
	.4byte	0x2311
	.byte	0x45
	.4byte	.LASF213
	.byte	0x1
	.byte	0x3b
	.byte	0x32
	.4byte	0xb0d
	.byte	0x46
	.4byte	.LASF214
	.byte	0x1
	.byte	0x3d
	.byte	0xd
	.4byte	0xc1
	.byte	0
	.byte	0x47
	.4byte	.LASF215
	.byte	0x1
	.byte	0x2c
	.byte	0x19
	.4byte	0xb0d
	.byte	0x1
	.4byte	0x232f
	.byte	0x46
	.4byte	.LASF214
	.byte	0x1
	.byte	0x2e
	.byte	0xd
	.4byte	0xc1
	.byte	0
	.byte	0x49
	.4byte	.LASF216
	.byte	0x2
	.byte	0xd3
	.byte	0x14
	.byte	0x3
	.4byte	0x239c
	.byte	0x44
	.string	"urb"
	.byte	0x2
	.byte	0xd3
	.byte	0x37
	.4byte	0x239c
	.byte	0x45
	.4byte	.LASF71
	.byte	0x2
	.byte	0xd4
	.byte	0x3b
	.4byte	0x64e
	.byte	0x44
	.string	"ep"
	.byte	0x2
	.byte	0xd5
	.byte	0x46
	.4byte	0x654
	.byte	0x45
	.4byte	.LASF64
	.byte	0x2
	.byte	0xd6
	.byte	0x2f
	.4byte	0x42f
	.byte	0x45
	.4byte	.LASF65
	.byte	0x2
	.byte	0xd7
	.byte	0x2f
	.4byte	0xde
	.byte	0x45
	.4byte	.LASF76
	.byte	0x2
	.byte	0xd8
	.byte	0x2f
	.4byte	0xde
	.byte	0x45
	.4byte	.LASF79
	.byte	0x2
	.byte	0xd9
	.byte	0x3f
	.4byte	0x3cb
	.byte	0x44
	.string	"arg"
	.byte	0x2
	.byte	0xda
	.byte	0x2c
	.4byte	0xa7
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x435
	.byte	0x47
	.4byte	.LASF217
	.byte	0x3
	.byte	0x16
	.byte	0x15
	.4byte	0xa7
	.byte	0x3
	.4byte	0x2400
	.byte	0x44
	.string	"s1"
	.byte	0x3
	.byte	0x16
	.byte	0x26
	.4byte	0xa7
	.byte	0x44
	.string	"s2"
	.byte	0x3
	.byte	0x16
	.byte	0x36
	.4byte	0xfb
	.byte	0x44
	.string	"n"
	.byte	0x3
	.byte	0x16
	.byte	0x41
	.4byte	0x2c
	.byte	0x48
	.string	"b1"
	.byte	0x3
	.byte	0x18
	.byte	0xb
	.4byte	0xa9
	.byte	0x48
	.string	"b2"
	.byte	0x3
	.byte	0x19
	.byte	0x11
	.4byte	0xbb
	.byte	0x48
	.string	"w1"
	.byte	0x3
	.byte	0x1a
	.byte	0xf
	.4byte	0x2400
	.byte	0x48
	.string	"w2"
	.byte	0x3
	.byte	0x1b
	.byte	0x15
	.4byte	0x2406
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xde
	.byte	0x6
	.byte	0x4
	.4byte	0xea
	.byte	0x49
	.4byte	.LASF218
	.byte	0x3
	.byte	0xe
	.byte	0x14
	.byte	0x3
	.4byte	0x2430
	.byte	0x45
	.4byte	.LASF219
	.byte	0x3
	.byte	0xe
	.byte	0x26
	.4byte	0xa9
	.byte	0x44
	.string	"w"
	.byte	0x3
	.byte	0xe
	.byte	0x35
	.4byte	0xde
	.byte	0
	.byte	0x4a
	.4byte	0x23a2
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.byte	0x1
	.byte	0x9c
	.4byte	0x24f0
	.byte	0x30
	.4byte	0x23b3
	.4byte	.LLST14
	.byte	0x30
	.4byte	0x23be
	.4byte	.LLST15
	.byte	0x30
	.4byte	0x23c9
	.4byte	.LLST16
	.byte	0x32
	.4byte	0x23d3
	.4byte	.LLST17
	.byte	0x32
	.4byte	0x23de
	.4byte	.LLST18
	.byte	0x32
	.4byte	0x23e9
	.4byte	.LLST19
	.byte	0x32
	.4byte	0x23f4
	.4byte	.LLST20
	.byte	0x4b
	.4byte	0x23a2
	.4byte	.LBB30
	.4byte	.Ldebug_ranges0+0x40
	.byte	0x3
	.byte	0x16
	.byte	0x15
	.byte	0x30
	.4byte	0x23c9
	.4byte	.LLST21
	.byte	0x3e
	.4byte	0x23be
	.byte	0x3e
	.4byte	0x23b3
	.byte	0x31
	.4byte	.Ldebug_ranges0+0x40
	.byte	0x32
	.4byte	0x23d3
	.4byte	.LLST22
	.byte	0x32
	.4byte	0x23de
	.4byte	.LLST23
	.byte	0x4c
	.4byte	0x23e9
	.byte	0x32
	.4byte	0x23f4
	.4byte	.LLST24
	.byte	0x4b
	.4byte	0x240c
	.4byte	.LBB32
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x3
	.byte	0x4e
	.byte	0xa
	.byte	0x30
	.4byte	0x2425
	.4byte	.LLST25
	.byte	0x30
	.4byte	0x2419
	.4byte	.LLST26
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x4a
	.4byte	0x20ab
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x1
	.byte	0x9c
	.4byte	0x25e2
	.byte	0x30
	.4byte	0x20bc
	.4byte	.LLST27
	.byte	0x30
	.4byte	0x20c8
	.4byte	.LLST28
	.byte	0x30
	.4byte	0x20d4
	.4byte	.LLST29
	.byte	0x4c
	.4byte	0x20e0
	.byte	0x4c
	.4byte	0x20ec
	.byte	0x4d
	.4byte	0x20ab
	.4byte	.LBB44
	.4byte	.Ldebug_ranges0+0x78
	.byte	0x1
	.byte	0xe5
	.byte	0xc
	.4byte	0x2583
	.byte	0x3e
	.4byte	0x20bc
	.byte	0x3e
	.4byte	0x20bc
	.byte	0x3e
	.4byte	0x20d4
	.byte	0x30
	.4byte	0x20c8
	.4byte	.LLST30
	.byte	0x31
	.4byte	.Ldebug_ranges0+0x78
	.byte	0x33
	.4byte	0x20e0
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x32
	.4byte	0x20ec
	.4byte	.LLST31
	.byte	0x29
	.4byte	.LVL64
	.4byte	0x2911
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0
	.byte	0
	.byte	0x4b
	.4byte	0x2219
	.4byte	.LBB48
	.4byte	.Ldebug_ranges0+0x90
	.byte	0x1
	.byte	0xf3
	.byte	0x10
	.byte	0x30
	.4byte	0x2242
	.4byte	.LLST32
	.byte	0x30
	.4byte	0x2236
	.4byte	.LLST33
	.byte	0x3e
	.4byte	0x222a
	.byte	0x31
	.4byte	.Ldebug_ranges0+0x90
	.byte	0x32
	.4byte	0x224e
	.4byte	.LLST34
	.byte	0x32
	.4byte	0x225a
	.4byte	.LLST35
	.byte	0x25
	.4byte	.LVL70
	.4byte	0x2905
	.byte	0x29
	.4byte	.LVL73
	.4byte	0x2430
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x4a
	.4byte	0x205d
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x1
	.byte	0x9c
	.4byte	0x26ba
	.byte	0x30
	.4byte	0x206e
	.4byte	.LLST36
	.byte	0x30
	.4byte	0x207a
	.4byte	.LLST37
	.byte	0x30
	.4byte	0x2086
	.4byte	.LLST38
	.byte	0x4c
	.4byte	0x2092
	.byte	0x4c
	.4byte	0x209e
	.byte	0x4d
	.4byte	0x205d
	.4byte	.LBB56
	.4byte	.Ldebug_ranges0+0xa8
	.byte	0x1
	.byte	0xf7
	.byte	0x5
	.4byte	0x2673
	.byte	0x3e
	.4byte	0x206e
	.byte	0x3e
	.4byte	0x206e
	.byte	0x3e
	.4byte	0x2086
	.byte	0x30
	.4byte	0x207a
	.4byte	.LLST39
	.byte	0x31
	.4byte	.Ldebug_ranges0+0xa8
	.byte	0x33
	.4byte	0x2092
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x32
	.4byte	0x209e
	.4byte	.LLST40
	.byte	0x29
	.4byte	.LVL84
	.4byte	0x2911
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.byte	0x4e
	.4byte	0x21d7
	.4byte	.LBB61
	.4byte	.LBE61-.LBB61
	.byte	0x1
	.2byte	0x105
	.byte	0x10
	.byte	0x3e
	.4byte	0x21e8
	.byte	0x30
	.4byte	0x21e8
	.4byte	.LLST41
	.byte	0x3e
	.4byte	0x2200
	.byte	0x30
	.4byte	0x21f4
	.4byte	.LLST42
	.byte	0x32
	.4byte	0x220c
	.4byte	.LLST43
	.byte	0x2b
	.4byte	.LVL79
	.4byte	0x2905
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.byte	0x4a
	.4byte	0x2009
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x1
	.byte	0x9c
	.4byte	0x2793
	.byte	0x30
	.4byte	0x201b
	.4byte	.LLST71
	.byte	0x30
	.4byte	0x2028
	.4byte	.LLST72
	.byte	0x30
	.4byte	0x2035
	.4byte	.LLST73
	.byte	0x4c
	.4byte	0x2042
	.byte	0x4c
	.4byte	0x204f
	.byte	0x2f
	.4byte	0x2009
	.4byte	.LBB124
	.4byte	.Ldebug_ranges0+0x1c0
	.byte	0x1
	.2byte	0x109
	.byte	0x5
	.4byte	0x274c
	.byte	0x3e
	.4byte	0x201b
	.byte	0x3e
	.4byte	0x201b
	.byte	0x3e
	.4byte	0x2035
	.byte	0x30
	.4byte	0x2028
	.4byte	.LLST74
	.byte	0x31
	.4byte	.Ldebug_ranges0+0x1c0
	.byte	0x33
	.4byte	0x2042
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x32
	.4byte	0x204f
	.4byte	.LLST75
	.byte	0x29
	.4byte	.LVL196
	.4byte	0x2911
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.byte	0x4e
	.4byte	0x2195
	.4byte	.LBB129
	.4byte	.LBE129-.LBB129
	.byte	0x1
	.2byte	0x117
	.byte	0x10
	.byte	0x3e
	.4byte	0x21a6
	.byte	0x30
	.4byte	0x21a6
	.4byte	.LLST76
	.byte	0x3e
	.4byte	0x21be
	.byte	0x30
	.4byte	0x21b2
	.4byte	.LLST77
	.byte	0x32
	.4byte	0x21ca
	.4byte	.LLST78
	.byte	0x2b
	.4byte	.LVL191
	.4byte	0x2905
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.byte	0x4a
	.4byte	0x1f8c
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x1
	.byte	0x9c
	.4byte	0x2809
	.byte	0x30
	.4byte	0x1f9a
	.4byte	.LLST98
	.byte	0x30
	.4byte	0x1fa7
	.4byte	.LLST99
	.byte	0x32
	.4byte	0x1fb4
	.4byte	.LLST100
	.byte	0x3d
	.4byte	0x1f8c
	.4byte	.LBB164
	.4byte	.LBE164-.LBB164
	.byte	0x1
	.2byte	0x12e
	.byte	0xd
	.4byte	0x27f7
	.byte	0x30
	.4byte	0x1fa7
	.4byte	.LLST101
	.byte	0x30
	.4byte	0x1f9a
	.4byte	.LLST102
	.byte	0x4c
	.4byte	0x1fb4
	.byte	0x3f
	.4byte	.LVL317
	.4byte	0x28c9
	.byte	0
	.byte	0x2b
	.4byte	.LVL314
	.4byte	0xee7
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x4f
	.4byte	.LASF220
	.4byte	.LASF220
	.byte	0x1
	.byte	0x24
	.byte	0xd
	.byte	0x4f
	.4byte	.LASF221
	.4byte	.LASF221
	.byte	0xa
	.byte	0x44
	.byte	0x8
	.byte	0x4f
	.4byte	.LASF222
	.4byte	.LASF222
	.byte	0x9
	.byte	0x49
	.byte	0x5
	.byte	0x4f
	.4byte	.LASF223
	.4byte	.LASF223
	.byte	0xa
	.byte	0x45
	.byte	0x6
	.byte	0x4f
	.4byte	.LASF224
	.4byte	.LASF224
	.byte	0xa
	.byte	0x3b
	.byte	0x6
	.byte	0x4f
	.4byte	.LASF225
	.4byte	.LASF225
	.byte	0xa
	.byte	0x2c
	.byte	0x6
	.byte	0x50
	.4byte	.LASF233
	.4byte	.LASF249
	.byte	0xe
	.byte	0
	.byte	0x4f
	.4byte	.LASF226
	.4byte	.LASF226
	.byte	0xa
	.byte	0x3a
	.byte	0xf
	.byte	0x4f
	.4byte	.LASF227
	.4byte	.LASF227
	.byte	0xc
	.byte	0xc8
	.byte	0x5
	.byte	0x51
	.4byte	.LASF228
	.4byte	.LASF228
	.byte	0xc
	.2byte	0x10a
	.byte	0x5
	.byte	0x4f
	.4byte	.LASF229
	.4byte	.LASF229
	.byte	0xa
	.byte	0x2b
	.byte	0x13
	.byte	0x4f
	.4byte	.LASF230
	.4byte	.LASF230
	.byte	0xa
	.byte	0x3c
	.byte	0x5
	.byte	0x4f
	.4byte	.LASF231
	.4byte	.LASF231
	.byte	0xa
	.byte	0x47
	.byte	0x6
	.byte	0x4f
	.4byte	.LASF232
	.4byte	.LASF232
	.byte	0x1
	.byte	0x23
	.byte	0xc
	.byte	0x4f
	.4byte	.LASF233
	.4byte	.LASF233
	.byte	0xd
	.byte	0x21
	.byte	0x8
	.byte	0x4f
	.4byte	.LASF234
	.4byte	.LASF234
	.byte	0xa
	.byte	0x35
	.byte	0x12
	.byte	0x4f
	.4byte	.LASF235
	.4byte	.LASF235
	.byte	0xa
	.byte	0x41
	.byte	0x6
	.byte	0x4f
	.4byte	.LASF236
	.4byte	.LASF236
	.byte	0x9
	.byte	0x42
	.byte	0x5
	.byte	0x4f
	.4byte	.LASF237
	.4byte	.LASF237
	.byte	0xa
	.byte	0x3d
	.byte	0x5
	.byte	0x4f
	.4byte	.LASF238
	.4byte	.LASF238
	.byte	0x9
	.byte	0x6d
	.byte	0x5
	.byte	0x4f
	.4byte	.LASF239
	.4byte	.LASF239
	.byte	0xa
	.byte	0x40
	.byte	0x6
	.byte	0x4f
	.4byte	.LASF240
	.4byte	.LASF240
	.byte	0x2
	.byte	0xf6
	.byte	0x5
	.byte	0x4f
	.4byte	.LASF241
	.4byte	.LASF241
	.byte	0x9
	.byte	0x58
	.byte	0x5
	.byte	0x4f
	.4byte	.LASF242
	.4byte	.LASF242
	.byte	0xa
	.byte	0x3f
	.byte	0x18
	.byte	0x4f
	.4byte	.LASF243
	.4byte	.LASF243
	.byte	0x9
	.byte	0x63
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
	.byte	0x26
	.byte	0
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0xa
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
	.byte	0xb
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
	.byte	0xc
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
	.byte	0xd
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x38
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x13
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
	.byte	0x88,0x1
	.byte	0xb
	.byte	0x38
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x37
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x17
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
	.byte	0x18
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
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
	.byte	0x88,0x1
	.byte	0xb
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1d
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
	.byte	0x1e
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
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1f
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
	.byte	0x3f
	.byte	0x19
	.byte	0x88,0x1
	.byte	0xb
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x20
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
	.byte	0x21
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
	.byte	0x22
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
	.byte	0x23
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
	.byte	0x24
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x25
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x26
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
	.byte	0x27
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x28
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
	.byte	0x29
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2a
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
	.byte	0x2b
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
	.byte	0x2c
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
	.byte	0x2d
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
	.byte	0x2e
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
	.byte	0x2f
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
	.byte	0x30
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x31
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x32
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x33
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x34
	.byte	0xb
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x35
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
	.byte	0x36
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
	.byte	0x37
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
	.byte	0x38
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
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x3a
	.byte	0xb
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x3b
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
	.byte	0x3c
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
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x3d
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
	.byte	0x3e
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x3f
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
	.byte	0x40
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
	.byte	0x41
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
	.byte	0x49
	.byte	0x13
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x43
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
	.byte	0x45
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
	.byte	0x46
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
	.byte	0x47
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
	.byte	0x48
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
	.byte	0x49
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
	.byte	0x4a
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
	.byte	0x4b
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
	.byte	0x4c
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x4d
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
	.byte	0x4e
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
	.byte	0x4f
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
	.byte	0x50
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
	.byte	0
	.byte	0
	.byte	0x51
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
.LLST105:
	.4byte	.LVL331
	.4byte	.LVL333
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL333
	.4byte	.LVL338
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL338
	.4byte	.LVL341
	.2byte	0x5
	.byte	0x78
	.byte	0x80,0xe0,0x7e
	.byte	0x9f
	.4byte	.LVL341
	.4byte	.LVL343
	.2byte	0x3
	.byte	0x83
	.byte	0x70
	.byte	0x9f
	.4byte	.LVL343
	.4byte	.LVL344
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL344
	.4byte	.LFE51
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST106:
	.4byte	.LVL344
	.4byte	.LVL345
	.2byte	0xf
	.byte	0x79
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0xa
	.2byte	0x13f4
	.byte	0x1e
	.byte	0x78
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST107:
	.4byte	.LVL331
	.4byte	.LVL332
	.2byte	0x3
	.byte	0x7a
	.byte	0x10
	.byte	0x9f
	.4byte	.LVL332
	.4byte	.LVL343
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL343
	.4byte	.LVL344
	.2byte	0x6
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x10
	.byte	0x9f
	.4byte	.LVL344
	.4byte	.LFE51
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST108:
	.4byte	.LVL335
	.4byte	.LVL342
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST109:
	.4byte	.LVL331
	.4byte	.LVL333
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL333
	.4byte	.LVL335
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL344
	.4byte	.LVL345
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL346
	.4byte	.LFE51
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST103:
	.4byte	.LVL318
	.4byte	.LVL319
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL319
	.4byte	.LVL325
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL325
	.4byte	.LVL326
	.2byte	0x5
	.byte	0x79
	.byte	0x80,0xe0,0x7e
	.byte	0x9f
	.4byte	.LVL326
	.4byte	.LVL327
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL327
	.4byte	.LFE50
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST104:
	.4byte	.LVL320
	.4byte	.LVL325
	.2byte	0x3
	.byte	0x78
	.byte	0x10
	.byte	0x9f
	.4byte	.LVL325
	.4byte	.LVL326
	.2byte	0x5
	.byte	0x79
	.byte	0x90,0xe0,0x7e
	.byte	0x9f
	.4byte	.LVL326
	.4byte	.LVL327
	.2byte	0x6
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x10
	.byte	0x9f
	.4byte	.LVL327
	.4byte	.LFE50
	.2byte	0x3
	.byte	0x78
	.byte	0x10
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST97:
	.4byte	.LVL310
	.4byte	.LVL311
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL311
	.4byte	.LVL312-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL312-1
	.4byte	.LFE49
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LVL197
	.4byte	.LVL200-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL200-1
	.4byte	.LFE48
	.2byte	0x3
	.byte	0x91
	.byte	0xa4,0x7f
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL197
	.4byte	.LVL201
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL202
	.4byte	.LVL204-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL198
	.4byte	.LVL199
	.2byte	0x3
	.byte	0x91
	.byte	0xa4,0x7f
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LVL203
	.4byte	.LVL233
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL233
	.4byte	.LVL235
	.2byte	0x5
	.byte	0x78
	.byte	0x80,0xe0,0x7e
	.byte	0x9f
	.4byte	.LVL235
	.4byte	.LFE48
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST83:
	.4byte	.LVL279
	.4byte	.LVL292
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL297
	.4byte	.LVL302
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST84:
	.4byte	.LVL218
	.4byte	.LVL232
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL235
	.4byte	.LVL248
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL248
	.4byte	.LVL249
	.2byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.4byte	.LVL249
	.4byte	.LVL252
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL257
	.4byte	.LVL262
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL269
	.4byte	.LVL276
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL292
	.4byte	.LVL293
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL302
	.4byte	.LVL306
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST85:
	.4byte	.LVL219
	.4byte	.LVL220
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL221
	.4byte	.LVL223
	.2byte	0x3
	.byte	0x91
	.byte	0xbe,0x7f
	.4byte	.LVL242
	.4byte	.LVL243
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x8b
	.byte	0
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL249
	.4byte	.LVL251
	.2byte	0x3
	.byte	0x91
	.byte	0xbe,0x7f
	.4byte	.LVL257
	.4byte	.LVL259-1
	.2byte	0x3
	.byte	0x91
	.byte	0xbe,0x7f
	.4byte	.LVL269
	.4byte	.LVL271-1
	.2byte	0x3
	.byte	0x91
	.byte	0xbe,0x7f
	.4byte	.LVL302
	.4byte	.LVL304-1
	.2byte	0x3
	.byte	0x91
	.byte	0xbe,0x7f
	.4byte	0
	.4byte	0
.LLST86:
	.4byte	.LVL219
	.4byte	.LVL220
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL220
	.4byte	.LVL223
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL235
	.4byte	.LVL244
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL246
	.4byte	.LVL248
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST87:
	.4byte	.LVL219
	.4byte	.LVL220
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	.LVL220
	.4byte	.LVL222
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL235
	.4byte	.LVL245
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL247
	.4byte	.LVL248
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST88:
	.4byte	.LVL277
	.4byte	.LVL284
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST89:
	.4byte	.LVL211
	.4byte	.LVL212
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL212
	.4byte	.LVL215
	.2byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.4byte	.LVL217
	.4byte	.LVL220
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL224
	.4byte	.LVL225
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL225
	.4byte	.LVL228
	.2byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.4byte	.LVL236
	.4byte	.LVL237
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL237
	.4byte	.LVL241
	.2byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.4byte	.LVL241
	.4byte	.LVL243
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL248
	.4byte	.LVL251
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL253
	.4byte	.LVL254
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL254
	.4byte	.LVL256
	.2byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.4byte	.LVL257
	.4byte	.LVL258
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL262
	.4byte	.LVL263
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL265
	.4byte	.LVL266
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL266
	.4byte	.LVL268
	.2byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.4byte	.LVL268
	.4byte	.LVL270
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL271
	.4byte	.LVL272
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL272
	.4byte	.LVL275
	.2byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.4byte	.LVL302
	.4byte	.LVL303
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST90:
	.4byte	.LVL205
	.4byte	.LVL206
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL206
	.4byte	.LVL209
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST91:
	.4byte	.LVL208
	.4byte	.LVL210
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL216
	.4byte	.LVL217
	.2byte	0x3
	.byte	0x83
	.byte	0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST92:
	.4byte	.LVL223
	.4byte	.LVL232
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL248
	.4byte	.LVL256
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL257
	.4byte	.LVL260
	.2byte	0x5
	.byte	0x85
	.byte	0
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL262
	.4byte	.LVL278
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL292
	.4byte	.LVL295
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL302
	.4byte	.LFE48
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST93:
	.4byte	.LVL250
	.4byte	.LVL251
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL257
	.4byte	.LVL260
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST94:
	.4byte	.LVL223
	.4byte	.LVL228
	.2byte	0x9
	.byte	0x87
	.byte	0
	.byte	0x9
	.byte	0xe7
	.byte	0x1e
	.byte	0x23
	.byte	0xdc,0xb
	.byte	0x9f
	.4byte	.LVL228
	.4byte	.LVL229
	.2byte	0x9
	.byte	0x87
	.byte	0
	.byte	0x9
	.byte	0xe7
	.byte	0x1e
	.byte	0x23
	.byte	0xf5,0xb
	.byte	0x9f
	.4byte	.LVL229
	.4byte	.LVL232
	.2byte	0x9
	.byte	0x87
	.byte	0x1
	.byte	0x9
	.byte	0xe7
	.byte	0x1e
	.byte	0x23
	.byte	0xf5,0xb
	.byte	0x9f
	.4byte	.LVL248
	.4byte	.LVL251
	.2byte	0x9
	.byte	0x87
	.byte	0
	.byte	0x9
	.byte	0xe7
	.byte	0x1e
	.byte	0x23
	.byte	0xdc,0xb
	.byte	0x9f
	.4byte	.LVL257
	.4byte	.LVL262
	.2byte	0x9
	.byte	0x87
	.byte	0
	.byte	0x9
	.byte	0xe7
	.byte	0x1e
	.byte	0x23
	.byte	0xdc,0xb
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST95:
	.4byte	.LVL286
	.4byte	.LVL287
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL287
	.4byte	.LVL289
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL297
	.4byte	.LVL302
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST96:
	.4byte	.LVL288
	.4byte	.LVL292
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL297
	.4byte	.LVL302
	.2byte	0x1
	.byte	0x69
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
	.byte	0x64
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LFE46
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3-1
	.4byte	.LFE46
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0xf
	.byte	0x82
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0xa
	.2byte	0x13f4
	.byte	0x1e
	.byte	0x78
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL13
	.4byte	.LFE46
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL16
	.4byte	.LFE46
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL10
	.4byte	.LVL11-1
	.2byte	0xa
	.byte	0x78
	.byte	0x2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x32
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL86
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL94
	.4byte	.LVL168
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL168
	.4byte	.LVL170
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL170
	.4byte	.LVL182
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL182
	.4byte	.LVL183
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL183
	.4byte	.LFE45
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL85
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL87
	.4byte	.LVL182
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL182
	.4byte	.LVL184-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL184-1
	.4byte	.LFE45
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL151
	.4byte	.LVL152-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL152-1
	.4byte	.LVL158
	.2byte	0x8
	.byte	0x83
	.byte	0
	.byte	0x84
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x49
	.byte	0x9f
	.4byte	.LVL158
	.4byte	.LVL159
	.2byte	0x8
	.byte	0x83
	.byte	0
	.byte	0x84
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL170
	.4byte	.LVL180
	.2byte	0x8
	.byte	0x83
	.byte	0
	.byte	0x84
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x49
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL99
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL113
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL131
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL172
	.4byte	.LVL173
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL175
	.4byte	.LVL176
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL176
	.4byte	.LVL180
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL181
	.4byte	.LVL182
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL89
	.4byte	.LVL93
	.2byte	0x6
	.byte	0x3
	.4byte	g_hub_class
	.byte	0x9f
	.4byte	.LVL94
	.4byte	.LVL168
	.2byte	0x6
	.byte	0x3
	.4byte	g_hub_class
	.byte	0x9f
	.4byte	.LVL170
	.4byte	.LVL182
	.2byte	0x6
	.byte	0x3
	.4byte	g_hub_class
	.byte	0x9f
	.4byte	.LVL182
	.4byte	.LFE45
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL146
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL148
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL154
	.4byte	.LVL155
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL155
	.4byte	.LVL157
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL170
	.4byte	.LVL171
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL156
	.4byte	.LVL157
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL157
	.4byte	.LVL160
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL173
	.4byte	.LVL174
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL85
	.4byte	.LVL89
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL95
	.4byte	.LVL98-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL103
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL95
	.4byte	.LVL99
	.2byte	0x6
	.byte	0x3
	.4byte	g_hub_class
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LVL108
	.2byte	0x6
	.byte	0x3
	.4byte	g_hub_class
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x3
	.byte	0x91
	.byte	0x48
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LVL98-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL98-1
	.4byte	.LVL98
	.2byte	0x3
	.byte	0x91
	.byte	0x48
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL104
	.4byte	.LVL108
	.2byte	0x6
	.byte	0x3
	.4byte	g_hub_class
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL104
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL105
	.4byte	.LVL107-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL109
	.4byte	.LVL113
	.2byte	0x6
	.byte	0x3
	.4byte	g_hub_class+18
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL109
	.4byte	.LVL113
	.2byte	0x6
	.byte	0x3
	.4byte	g_hub_class
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x3
	.byte	0x7a
	.byte	0x98,0x27
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL112
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL113
	.4byte	.LVL116
	.2byte	0x2
	.byte	0x3b
	.byte	0x9f
	.4byte	.LVL117
	.4byte	.LVL127
	.2byte	0x2
	.byte	0x3b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL113
	.4byte	.LVL116
	.2byte	0x6
	.byte	0x3
	.4byte	g_hub_class+18
	.byte	0x9f
	.4byte	.LVL117
	.4byte	.LVL127
	.2byte	0x6
	.byte	0x3
	.4byte	g_hub_class+18
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL127
	.4byte	.LVL131
	.2byte	0x6
	.byte	0x3
	.4byte	g_hub_class+9
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL127
	.4byte	.LVL131
	.2byte	0x6
	.byte	0x3
	.4byte	g_hub_class
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL128
	.4byte	.LVL129-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL131
	.4byte	.LVL134
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	.LVL135
	.4byte	.LVL146
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL131
	.4byte	.LVL134
	.2byte	0x6
	.byte	0x3
	.4byte	g_hub_class+9
	.byte	0x9f
	.4byte	.LVL135
	.4byte	.LVL146
	.2byte	0x6
	.byte	0x3
	.4byte	g_hub_class+9
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL21
	.4byte	.LVL23-1
	.2byte	0x5
	.byte	0x7d
	.byte	0x80,0xe0,0x7e
	.byte	0x9f
	.4byte	.LVL23-1
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL21
	.4byte	.LVL23-1
	.2byte	0x5
	.byte	0x7d
	.byte	0x80,0xe0,0x7e
	.byte	0x9f
	.4byte	.LVL23-1
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x5
	.byte	0x7d
	.byte	0x80,0xe0,0x7e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LFE57
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL25
	.4byte	.LFE57
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL25
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x3
	.byte	0x7c
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x6
	.byte	0x7c
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x8
	.byte	0x7c
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x1c
	.byte	0x34
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x6
	.byte	0x7c
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x7
	.byte	0x7e
	.byte	0
	.byte	0x20
	.byte	0x7c
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LFE57
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL35
	.2byte	0x3
	.byte	0x7a
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x8
	.byte	0x7a
	.byte	0
	.byte	0x7e
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x6
	.byte	0x7a
	.byte	0
	.byte	0x7e
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LFE57
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL25
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x3
	.byte	0x7b
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x8
	.byte	0x7f
	.byte	0
	.byte	0x7e
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x7e
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LFE57
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL36
	.4byte	.LVL39
	.2byte	0x8
	.byte	0x7a
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x6
	.byte	0x7a
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL36
	.4byte	.LVL39
	.2byte	0x8
	.byte	0x7b
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x6
	.byte	0x7b
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x6
	.byte	0x7c
	.byte	0
	.byte	0x81
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x6
	.byte	0x7c
	.byte	0
	.byte	0x81
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x3
	.byte	0x7c
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x6
	.byte	0x7c
	.byte	0
	.byte	0x81
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x8
	.byte	0x7c
	.byte	0
	.byte	0x81
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LFE57
	.2byte	0x7
	.byte	0x7e
	.byte	0
	.byte	0x20
	.byte	0x7c
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL47
	.4byte	.LVL50
	.2byte	0x3
	.byte	0x7a
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL54
	.4byte	.LVL57
	.2byte	0x3
	.byte	0x7d
	.byte	0x7c
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x8
	.byte	0x7a
	.byte	0
	.byte	0x7e
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LFE57
	.2byte	0x6
	.byte	0x7a
	.byte	0
	.byte	0x7e
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL25
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x3
	.byte	0x7b
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL52
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x8
	.byte	0x7b
	.byte	0
	.byte	0x7e
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LFE57
	.2byte	0x6
	.byte	0x7b
	.byte	0
	.byte	0x7e
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL26
	.4byte	.LVL31
	.2byte	0x6
	.byte	0x7b
	.byte	0
	.byte	0x81
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL55
	.2byte	0x8
	.byte	0x7b
	.byte	0
	.byte	0x81
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL58
	.2byte	0x6
	.byte	0x7b
	.byte	0
	.byte	0x81
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL53
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL54
	.4byte	.LVL57
	.2byte	0x3
	.byte	0x7d
	.byte	0x7c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL61
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL60
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL63
	.4byte	.LVL66
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL68
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL60
	.4byte	.LVL64-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL64-1
	.4byte	.LVL66
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL69
	.4byte	.LFE39
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x3
	.byte	0x91
	.byte	0x58
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL64-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL64-1
	.4byte	.LVL65
	.2byte	0x3
	.byte	0x91
	.byte	0x58
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL67
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL68
	.4byte	.LVL70-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL74
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x5
	.byte	0x7a
	.byte	0x80,0xe0,0x7e
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL79
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x5
	.byte	0x7a
	.byte	0x80,0xe0,0x7e
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL74
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL83
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL75
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL79
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x3
	.byte	0x91
	.byte	0x68
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL84-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL84-1
	.4byte	.LVL84
	.2byte	0x3
	.byte	0x91
	.byte	0x68
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL77
	.4byte	.LVL79
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL78
	.4byte	.LVL79-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL186
	.4byte	.LVL188
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL188
	.4byte	.LVL189
	.2byte	0x5
	.byte	0x7a
	.byte	0x80,0xe0,0x7e
	.byte	0x9f
	.4byte	.LVL189
	.4byte	.LVL191
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL191
	.4byte	.LVL192
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL192
	.4byte	.LVL193
	.2byte	0x5
	.byte	0x7a
	.byte	0x80,0xe0,0x7e
	.byte	0x9f
	.4byte	.LVL193
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL186
	.4byte	.LVL190
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL190
	.4byte	.LVL191
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL191
	.4byte	.LVL195
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL195
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL186
	.4byte	.LVL187
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL187
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL191
	.4byte	.LVL195
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL194
	.4byte	.LVL195
	.2byte	0x3
	.byte	0x91
	.byte	0x68
	.byte	0x9f
	.4byte	.LVL195
	.4byte	.LVL196-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL196-1
	.4byte	.LVL196
	.2byte	0x3
	.byte	0x91
	.byte	0x68
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL189
	.4byte	.LVL191
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL189
	.4byte	.LVL190
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL190
	.4byte	.LVL191-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST98:
	.4byte	.LVL313
	.4byte	.LVL314-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL314-1
	.4byte	.LVL314
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL314
	.4byte	.LVL315
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL315
	.4byte	.LVL316
	.2byte	0x5
	.byte	0x7a
	.byte	0x80,0xe0,0x7e
	.byte	0x9f
	.4byte	.LVL316
	.4byte	.LVL317
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL317
	.4byte	.LFE43
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST99:
	.4byte	.LVL313
	.4byte	.LVL314-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL314-1
	.4byte	.LVL314
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL314
	.4byte	.LVL317-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL317-1
	.4byte	.LVL317
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL317
	.4byte	.LFE43
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST100:
	.4byte	.LVL313
	.4byte	.LVL314-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL314-1
	.4byte	.LVL314
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL314
	.4byte	.LVL315
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL315
	.4byte	.LVL316
	.2byte	0x5
	.byte	0x7a
	.byte	0x80,0xe0,0x7e
	.byte	0x9f
	.4byte	.LVL316
	.4byte	.LVL317
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL317
	.4byte	.LFE43
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST101:
	.4byte	.LVL314
	.4byte	.LVL317-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL317-1
	.4byte	.LVL317
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL317
	.4byte	.LFE43
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST102:
	.4byte	.LVL314
	.4byte	.LVL315
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL315
	.4byte	.LVL316
	.2byte	0x5
	.byte	0x7a
	.byte	0x80,0xe0,0x7e
	.byte	0x9f
	.4byte	.LVL316
	.4byte	.LVL317
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL317
	.4byte	.LFE43
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x74
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	0
	.4byte	0
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	0
	.4byte	0
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	.LBB38
	.4byte	.LBE38
	.4byte	.LBB39
	.4byte	.LBE39
	.4byte	0
	.4byte	0
	.4byte	.LBB32
	.4byte	.LBE32
	.4byte	.LBB35
	.4byte	.LBE35
	.4byte	0
	.4byte	0
	.4byte	.LBB44
	.4byte	.LBE44
	.4byte	.LBB47
	.4byte	.LBE47
	.4byte	0
	.4byte	0
	.4byte	.LBB48
	.4byte	.LBE48
	.4byte	.LBB51
	.4byte	.LBE51
	.4byte	0
	.4byte	0
	.4byte	.LBB56
	.4byte	.LBE56
	.4byte	.LBB63
	.4byte	.LBE63
	.4byte	.LBB64
	.4byte	.LBE64
	.4byte	.LBB65
	.4byte	.LBE65
	.4byte	0
	.4byte	0
	.4byte	.LBB83
	.4byte	.LBE83
	.4byte	.LBB87
	.4byte	.LBE87
	.4byte	.LBB119
	.4byte	.LBE119
	.4byte	0
	.4byte	0
	.4byte	.LBB88
	.4byte	.LBE88
	.4byte	.LBB96
	.4byte	.LBE96
	.4byte	.LBB97
	.4byte	.LBE97
	.4byte	0
	.4byte	0
	.4byte	.LBB90
	.4byte	.LBE90
	.4byte	.LBB93
	.4byte	.LBE93
	.4byte	0
	.4byte	0
	.4byte	.LBB98
	.4byte	.LBE98
	.4byte	.LBB101
	.4byte	.LBE101
	.4byte	0
	.4byte	0
	.4byte	.LBB102
	.4byte	.LBE102
	.4byte	.LBB106
	.4byte	.LBE106
	.4byte	0
	.4byte	0
	.4byte	.LBB105
	.4byte	.LBE105
	.4byte	.LBB113
	.4byte	.LBE113
	.4byte	0
	.4byte	0
	.4byte	.LBB109
	.4byte	.LBE109
	.4byte	.LBB112
	.4byte	.LBE112
	.4byte	0
	.4byte	0
	.4byte	.LBB114
	.4byte	.LBE114
	.4byte	.LBB117
	.4byte	.LBE117
	.4byte	0
	.4byte	0
	.4byte	.LBB115
	.4byte	.LBE115
	.4byte	.LBB116
	.4byte	.LBE116
	.4byte	.LBB118
	.4byte	.LBE118
	.4byte	0
	.4byte	0
	.4byte	.LBB124
	.4byte	.LBE124
	.4byte	.LBB131
	.4byte	.LBE131
	.4byte	.LBB132
	.4byte	.LBE132
	.4byte	.LBB133
	.4byte	.LBE133
	.4byte	0
	.4byte	0
	.4byte	.LBB141
	.4byte	.LBE141
	.4byte	.LBB161
	.4byte	.LBE161
	.4byte	0
	.4byte	0
	.4byte	.LBB143
	.4byte	.LBE143
	.4byte	.LBB158
	.4byte	.LBE158
	.4byte	.LBB159
	.4byte	.LBE159
	.4byte	0
	.4byte	0
	.4byte	.LBB144
	.4byte	.LBE144
	.4byte	.LBB154
	.4byte	.LBE154
	.4byte	.LBB155
	.4byte	.LBE155
	.4byte	.LBB156
	.4byte	.LBE156
	.4byte	.LBB157
	.4byte	.LBE157
	.4byte	0
	.4byte	0
	.4byte	.LBB145
	.4byte	.LBE145
	.4byte	.LBB146
	.4byte	.LBE146
	.4byte	.LBB147
	.4byte	.LBE147
	.4byte	0
	.4byte	0
	.4byte	.LBB148
	.4byte	.LBE148
	.4byte	.LBB152
	.4byte	.LBE152
	.4byte	.LBB153
	.4byte	.LBE153
	.4byte	0
	.4byte	0
	.4byte	.LBB149
	.4byte	.LBE149
	.4byte	.LBB150
	.4byte	.LBE150
	.4byte	.LBB151
	.4byte	.LBE151
	.4byte	0
	.4byte	0
	.4byte	.LBB166
	.4byte	.LBE166
	.4byte	.LBB167
	.4byte	.LBE167
	.4byte	.LBB168
	.4byte	.LBE168
	.4byte	.LBB169
	.4byte	.LBE169
	.4byte	0
	.4byte	0
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB57
	.4byte	.LFE57
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF46:
	.string	"bMaxPower"
.LASF22:
	.string	"wIndex"
.LASF140:
	.string	"usbh_hub"
.LASF235:
	.string	"usb_osal_timer_start"
.LASF73:
	.string	"interval"
.LASF75:
	.string	"transfer_flags"
.LASF135:
	.string	"altsetting"
.LASF149:
	.string	"hub_ss_desc"
.LASF163:
	.string	"reg_base"
.LASF60:
	.string	"usb_slist_t"
.LASF225:
	.string	"usb_osal_thread_delete"
.LASF102:
	.string	"argument"
.LASF93:
	.string	"self"
.LASF173:
	.string	"flags"
.LASF54:
	.string	"iInterface"
.LASF210:
	.string	"buffer"
.LASF245:
	.string	".\\components\\usb\\cherryusb\\class\\hub\\usbh_hub.c"
.LASF40:
	.string	"usb_configuration_descriptor"
.LASF89:
	.string	"device_desc"
.LASF209:
	.string	"_usbh_hub_get_hub_ss_descriptor"
.LASF111:
	.string	"bHubContrCurrent"
.LASF0:
	.string	"unsigned int"
.LASF59:
	.string	"next"
.LASF98:
	.string	"usb_osal_mq_t"
.LASF19:
	.string	"bmRequestType"
.LASF130:
	.string	"usbh_interface_altsetting"
.LASF186:
	.string	"enum_ret"
.LASF104:
	.string	"timeout_ms"
.LASF112:
	.string	"DeviceRemovable"
.LASF132:
	.string	"usbh_interface"
.LASF188:
	.string	"usbh_hub_disconnect"
.LASF101:
	.string	"handler"
.LASF226:
	.string	"usb_osal_mq_create"
.LASF159:
	.string	"hub_mq"
.LASF57:
	.string	"wMaxPacketSize"
.LASF58:
	.string	"bInterval"
.LASF52:
	.string	"bInterfaceSubClass"
.LASF35:
	.string	"bcdDevice"
.LASF137:
	.string	"usbh_configuration"
.LASF34:
	.string	"idProduct"
.LASF161:
	.string	"alloctab"
.LASF36:
	.string	"iManufacturer"
.LASF85:
	.string	"speed"
.LASF21:
	.string	"wValue"
.LASF69:
	.string	"list"
.LASF29:
	.string	"bDeviceClass"
.LASF17:
	.string	"uint32_t"
.LASF241:
	.string	"usbh_roothub_control"
.LASF37:
	.string	"iProduct"
.LASF28:
	.string	"bcdUSB"
.LASF167:
	.string	"g_hub_buf"
.LASF95:
	.string	"mutex"
.LASF108:
	.string	"bNbrPorts"
.LASF142:
	.string	"index"
.LASF41:
	.string	"wTotalLength"
.LASF48:
	.string	"bInterfaceNumber"
.LASF67:
	.string	"errorcode"
.LASF12:
	.string	"long long unsigned int"
.LASF24:
	.string	"usb_setup_packet"
.LASF229:
	.string	"usb_osal_thread_create"
.LASF208:
	.string	"_usbh_hub_get_portstatus"
.LASF205:
	.string	"_usbh_hub_set_depth"
.LASF6:
	.string	"__uint16_t"
.LASF87:
	.string	"route"
.LASF164:
	.string	"hcd_id"
.LASF218:
	.string	"dword2array"
.LASF150:
	.string	"child"
.LASF207:
	.string	"_usbh_hub_set_feature"
.LASF30:
	.string	"bDeviceSubClass"
.LASF178:
	.string	"portchange_index"
.LASF193:
	.string	"hub_int_complete_callback"
.LASF246:
	.string	"C:\\\\Users\\\\cwier\\\\Documents\\\\GitHub\\\\qcom\\\\examples\\\\usb_cam_stream\\\\build\\\\build_out\\\\components\\\\usb\\\\cherryusb"
.LASF103:
	.string	"is_period"
.LASF113:
	.string	"PortPwrCtrlMask"
.LASF2:
	.string	"size_t"
.LASF50:
	.string	"bNumEndpoints"
.LASF97:
	.string	"usb_osal_mutex_t"
.LASF63:
	.string	"usbh_iso_frame_packet"
.LASF82:
	.string	"connected"
.LASF106:
	.string	"_Bool"
.LASF158:
	.string	"hub_thread"
.LASF240:
	.string	"usbh_control_transfer"
.LASF146:
	.string	"tt_think"
.LASF239:
	.string	"usb_osal_timer_delete"
.LASF153:
	.string	"int_buffer"
.LASF238:
	.string	"usbh_kill_urb"
.LASF53:
	.string	"bInterfaceProtocol"
.LASF96:
	.string	"usb_osal_thread_t"
.LASF184:
	.string	"debouncestable"
.LASF195:
	.string	"roothub_setup"
.LASF154:
	.string	"int_timer"
.LASF79:
	.string	"complete"
.LASF38:
	.string	"iSerialNumber"
.LASF51:
	.string	"bInterfaceClass"
.LASF134:
	.string	"priv"
.LASF109:
	.string	"wHubCharacteristics"
.LASF14:
	.string	"char"
.LASF107:
	.string	"usb_hub_descriptor"
.LASF77:
	.string	"num_of_iso_packets"
.LASF237:
	.string	"usb_osal_mq_recv"
.LASF222:
	.string	"usb_hc_deinit"
.LASF131:
	.string	"intf_desc"
.LASF133:
	.string	"devname"
.LASF61:
	.string	"usbh_complete_callback_t"
.LASF176:
	.string	"thread_name"
.LASF100:
	.string	"usb_osal_timer"
.LASF122:
	.string	"id_table"
.LASF15:
	.string	"uint8_t"
.LASF124:
	.string	"usbh_class_driver"
.LASF212:
	.string	"usbh_hub_class_free"
.LASF162:
	.string	"usbh_hcd"
.LASF215:
	.string	"usbh_hub_class_alloc"
.LASF175:
	.string	"usbh_hub_initialize"
.LASF200:
	.string	"usbh_hub_get_portstatus"
.LASF213:
	.string	"hub_class"
.LASF139:
	.string	"intf"
.LASF168:
	.string	"g_hub_intbuf"
.LASF183:
	.string	"connection"
.LASF11:
	.string	"long long int"
.LASF117:
	.string	"hub_port_status"
.LASF166:
	.string	"roothub"
.LASF227:
	.string	"printf"
.LASF214:
	.string	"devno"
.LASF177:
	.string	"port_status"
.LASF86:
	.string	"depth"
.LASF32:
	.string	"bMaxPacketSize0"
.LASF174:
	.string	"usbh_hub_deinitialize"
.LASF157:
	.string	"devgen"
.LASF233:
	.string	"memset"
.LASF194:
	.string	"nbytes"
.LASF136:
	.string	"altsetting_num"
.LASF191:
	.string	"hub_int_timeout"
.LASF228:
	.string	"snprintf"
.LASF181:
	.string	"mask"
.LASF55:
	.string	"usb_endpoint_descriptor"
.LASF172:
	.string	"hub_class_info"
.LASF127:
	.string	"disconnect"
.LASF91:
	.string	"raw_config_desc"
.LASF196:
	.string	"feature"
.LASF179:
	.string	"portstatus"
.LASF31:
	.string	"bDeviceProtocol"
.LASF16:
	.string	"uint16_t"
.LASF199:
	.string	"usbh_hub_set_depth"
.LASF219:
	.string	"addr"
.LASF165:
	.string	"roothub_intbuf"
.LASF13:
	.string	"__uintptr_t"
.LASF206:
	.string	"_usbh_hub_clear_feature"
.LASF155:
	.string	"usbh_bus"
.LASF242:
	.string	"usb_osal_timer_create"
.LASF90:
	.string	"config"
.LASF147:
	.string	"ismtt"
.LASF92:
	.string	"parent"
.LASF197:
	.string	"usbh_hub_clear_feature"
.LASF5:
	.string	"short int"
.LASF126:
	.string	"connect"
.LASF8:
	.string	"long int"
.LASF42:
	.string	"bNumInterfaces"
.LASF84:
	.string	"dev_addr"
.LASF190:
	.string	"usbh_hub_thread"
.LASF203:
	.string	"length"
.LASF189:
	.string	"usbh_hub_connect"
.LASF243:
	.string	"usbh_submit_urb"
.LASF118:
	.string	"wPortStatus"
.LASF23:
	.string	"wLength"
.LASF230:
	.string	"usb_osal_mq_send"
.LASF141:
	.string	"is_roothub"
.LASF45:
	.string	"bmAttributes"
.LASF94:
	.string	"ep0_urb"
.LASF56:
	.string	"bEndpointAddress"
.LASF44:
	.string	"iConfiguration"
.LASF204:
	.string	"parse_hub_descriptor"
.LASF81:
	.string	"usbh_hubport"
.LASF3:
	.string	"__uint8_t"
.LASF20:
	.string	"bRequest"
.LASF70:
	.string	"hcpriv"
.LASF33:
	.string	"idVendor"
.LASF80:
	.string	"iso_packet"
.LASF249:
	.string	"__builtin_memset"
.LASF18:
	.string	"uintptr_t"
.LASF152:
	.string	"intin_urb"
.LASF62:
	.string	"usb_slist_node"
.LASF10:
	.string	"long unsigned int"
.LASF129:
	.string	"ep_desc"
.LASF43:
	.string	"bConfigurationValue"
.LASF83:
	.string	"port"
.LASF78:
	.string	"start_frame"
.LASF224:
	.string	"usb_osal_mq_delete"
.LASF116:
	.string	"wHubDelay"
.LASF216:
	.string	"usbh_int_urb_fill"
.LASF201:
	.string	"parse_hub_ss_descriptor"
.LASF138:
	.string	"config_desc"
.LASF151:
	.string	"intin"
.LASF4:
	.string	"unsigned char"
.LASF74:
	.string	"setup"
.LASF9:
	.string	"__uint32_t"
.LASF121:
	.string	"match_flags"
.LASF49:
	.string	"bAlternateSetting"
.LASF76:
	.string	"timeout"
.LASF244:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF234:
	.string	"usb_osal_mutex_create"
.LASF247:
	.string	"hub_class_driver"
.LASF221:
	.string	"usb_osal_enter_critical_section"
.LASF27:
	.string	"bDescriptorType"
.LASF115:
	.string	"bHubHdrDecLat"
.LASF171:
	.string	"g_devinuse"
.LASF123:
	.string	"class_driver"
.LASF119:
	.string	"wPortChange"
.LASF120:
	.string	"usbh_class_info"
.LASF232:
	.string	"usbh_enumerate"
.LASF236:
	.string	"usb_hc_init"
.LASF211:
	.string	"_usbh_hub_get_hub_descriptor"
.LASF223:
	.string	"usb_osal_leave_critical_section"
.LASF66:
	.string	"actual_length"
.LASF88:
	.string	"slot_id"
.LASF156:
	.string	"busid"
.LASF145:
	.string	"powerdelay"
.LASF180:
	.string	"portchange"
.LASF1:
	.string	"signed char"
.LASF170:
	.string	"g_hub_class"
.LASF7:
	.string	"short unsigned int"
.LASF185:
	.string	"debouncetime"
.LASF198:
	.string	"usbh_hub_set_feature"
.LASF99:
	.string	"usb_timer_handler_t"
.LASF64:
	.string	"transfer_buffer"
.LASF217:
	.string	"usb_memcpy"
.LASF71:
	.string	"hport"
.LASF39:
	.string	"bNumConfigurations"
.LASF182:
	.string	"feat"
.LASF248:
	.string	"usbh_hub_thread_wakeup"
.LASF26:
	.string	"bLength"
.LASF160:
	.string	"usbh_devaddr_map"
.LASF231:
	.string	"usb_osal_msleep"
.LASF125:
	.string	"driver_name"
.LASF202:
	.string	"desc"
.LASF105:
	.string	"timer"
.LASF128:
	.string	"usbh_endpoint"
.LASF72:
	.string	"data_toggle"
.LASF68:
	.string	"usbh_urb"
.LASF148:
	.string	"hub_desc"
.LASF110:
	.string	"bPwrOn2PwrGood"
.LASF143:
	.string	"hub_addr"
.LASF220:
	.string	"usbh_hubport_release"
.LASF144:
	.string	"nports"
.LASF47:
	.string	"usb_interface_descriptor"
.LASF114:
	.string	"usb_hub_ss_descriptor"
.LASF192:
	.string	"usbh_hub_events"
.LASF25:
	.string	"usb_device_descriptor"
.LASF187:
	.string	"retry"
.LASF65:
	.string	"transfer_buffer_length"
.LASF169:
	.string	"speed_table"
	.ident	"GCC: (GNU) 10.4.0"
