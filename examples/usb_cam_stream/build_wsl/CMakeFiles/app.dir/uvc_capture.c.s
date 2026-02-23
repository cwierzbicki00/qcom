	.file	"uvc_capture.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.set_cam_state,"ax",@progbits
	.align	1
	.type	set_cam_state, @function
set_cam_state:
.LFB105:
	.file 1 "./examples/usb_cam_stream/uvc_capture.c"
	.loc 1 95 1
	.cfi_startproc
.LVL0:
	.loc 1 96 5
	.loc 1 96 17 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	sb	a0,%lo(.LANCHOR0)(a5)
	.loc 1 97 5 is_stmt 1
	.loc 1 97 9 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	lw	a5,%lo(.LANCHOR1)(a5)
	.loc 1 97 8
	beq	a5,zero,.L1
	.loc 1 98 9 is_stmt 1
	jr	a5
.LVL1:
.L1:
	.loc 1 100 1 is_stmt 0
	ret
	.cfi_endproc
.LFE105:
	.size	set_cam_state, .-set_cam_state
	.section	.text.stream_urb_slots_reset,"ax",@progbits
	.align	1
	.type	stream_urb_slots_reset, @function
stream_urb_slots_reset:
.LFB107:
	.loc 1 109 1 is_stmt 1
	.cfi_startproc
	.loc 1 110 5
.LBB5:
	.loc 1 110 10
.LVL2:
	.loc 1 110 25
	.loc 1 111 9
	.loc 1 111 26 is_stmt 0
	lui	a4,%hi(.LANCHOR2)
	.loc 1 112 30
	lui	a5,%hi(.LANCHOR3)
	.loc 1 111 26
	addi	a4,a4,%lo(.LANCHOR2)
	.loc 1 112 30
	addi	a5,a5,%lo(.LANCHOR3)
	.loc 1 111 26
	sw	zero,0(a4)
	.loc 1 112 9 is_stmt 1
	.loc 1 112 30 is_stmt 0
	sw	zero,0(a5)
	.loc 1 110 32 is_stmt 1
.LVL3:
	.loc 1 110 25
	.loc 1 111 9
	.loc 1 111 26 is_stmt 0
	sw	zero,4(a4)
	.loc 1 112 9 is_stmt 1
	.loc 1 112 30 is_stmt 0
	sw	zero,4(a5)
	.loc 1 110 32 is_stmt 1
.LVL4:
	.loc 1 110 25
.LBE5:
	.loc 1 114 1 is_stmt 0
	ret
	.cfi_endproc
.LFE107:
	.size	stream_urb_slots_reset, .-stream_urb_slots_reset
	.section	.text.reset_iso_packets,"ax",@progbits
	.align	1
	.type	reset_iso_packets, @function
reset_iso_packets:
.LFB116:
	.loc 1 419 1 is_stmt 1
	.cfi_startproc
.LVL5:
	.loc 1 420 5
	.loc 1 420 8 is_stmt 0
	beq	a0,zero,.L4
	.loc 1 424 5 is_stmt 1
	.loc 1 424 14 is_stmt 0
	lw	a4,48(a0)
.LVL6:
	.loc 1 425 5 is_stmt 1
	.loc 1 425 8 is_stmt 0
	bne	a1,zero,.L6
	.loc 1 426 17
	li	a1,8
.LVL7:
.L6:
	.loc 1 428 5 is_stmt 1
	.loc 1 428 37 is_stmt 0
	mv	a5,a1
	.loc 1 428 8
	beq	a4,zero,.L7
	sgtu	a3,a1,a4
	mv	a5,a4
	mveqz	a5, a1, a3
.L7:
.LVL8:
	.loc 1 432 5 is_stmt 1
.LBB6:
	.loc 1 432 10
	.loc 1 432 26
	slli	a5,a5,4
.LVL9:
	mv	a4,a0
	add	a5,a5,a0
.LVL10:
.L9:
	.loc 1 433 9 discriminator 3
	.loc 1 433 42 is_stmt 0 discriminator 3
	sw	zero,72(a4)
	.loc 1 434 9 is_stmt 1 discriminator 3
	.loc 1 434 38 is_stmt 0 discriminator 3
	sw	zero,76(a4)
	.loc 1 432 41 is_stmt 1 discriminator 3
	.loc 1 432 26 discriminator 3
	.loc 1 432 5 is_stmt 0 discriminator 3
	addi	a4,a4,16
	bne	a4,a5,.L9
.LBE6:
	.loc 1 436 5 is_stmt 1
	.loc 1 436 29 is_stmt 0
	sw	a1,48(a0)
.L4:
	.loc 1 437 1
	ret
	.cfi_endproc
.LFE116:
	.size	reset_iso_packets, .-reset_iso_packets
	.section	.text.stamp_urb_endpoints,"ax",@progbits
	.align	1
	.type	stamp_urb_endpoints, @function
stamp_urb_endpoints:
.LFB117:
	.loc 1 442 1 is_stmt 1
	.cfi_startproc
.LVL11:
	.loc 1 443 5
.LBB9:
.LBB10:
	.loc 1 118 5
	.loc 1 118 16 is_stmt 0
	beq	a0,zero,.L16
	.loc 1 118 38
	andi	a5,a0,3
	.loc 1 118 16
	bne	a5,zero,.L16
.LVL12:
.LBE10:
.LBE9:
	.loc 1 443 31
	beq	a1,zero,.L16
	.loc 1 443 41 discriminator 2
	beq	a2,zero,.L16
	.loc 1 446 5 is_stmt 1
	.loc 1 446 16 is_stmt 0
	sw	a1,8(a0)
	.loc 1 447 5 is_stmt 1
	.loc 1 447 13 is_stmt 0
	sw	a2,12(a0)
.L16:
	.loc 1 448 1
	ret
	.cfi_endproc
.LFE117:
	.size	stamp_urb_endpoints, .-stamp_urb_endpoints
	.section	.rodata.uvc_iso_complete_router.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"\033[0;33m[W][UVC] [UVC] URB done ring overflow count=%u\r\n"
	.section	.text.uvc_iso_complete_router,"ax",@progbits
	.align	1
	.globl	uvc_iso_complete_router
	.type	uvc_iso_complete_router, @function
uvc_iso_complete_router:
.LFB119:
	.loc 1 505 1 is_stmt 1
	.cfi_startproc
.LVL13:
	.loc 1 506 5
	.loc 1 507 5
	.loc 1 509 5
	.loc 1 509 8 is_stmt 0
	beq	a0,zero,.L27
	.loc 1 509 14 discriminator 1
	lui	a5,%hi(.LANCHOR4)
	lbu	a5,%lo(.LANCHOR4)(a5)
	andi	a5,a5,0xff
	bne	a5,zero,.L27
	.loc 1 509 46 discriminator 2
	lui	a5,%hi(.LANCHOR0)
	lbu	a5,%lo(.LANCHOR0)(a5)
	.loc 1 509 31 discriminator 2
	li	a4,2
	.loc 1 509 46 discriminator 2
	andi	a5,a5,0xff
	.loc 1 509 31 discriminator 2
	bne	a5,a4,.L27
	.loc 1 513 5 is_stmt 1
.LVL14:
.LBB15:
.LBB16:
	.loc 1 123 5
	.loc 1 123 14 is_stmt 0
	lui	a5,%hi(.LANCHOR5)
	addi	a5,a5,%lo(.LANCHOR5)
	lw	a2,0(a5)
.LVL15:
	.loc 1 124 5 is_stmt 1
	.loc 1 125 14 is_stmt 0
	lui	a3,%hi(.LANCHOR6)
	lw	a3,%lo(.LANCHOR6)(a3)
	.loc 1 124 27
	addi	a4,a2,1
	.loc 1 124 14
	andi	a4,a4,63
.LVL16:
	.loc 1 125 5 is_stmt 1
	.loc 1 125 8 is_stmt 0
	bne	a4,a3,.L29
.LBE16:
.LBE15:
.LBB18:
.LBB19:
	.loc 1 518 30
	lui	a5,%hi(.LANCHOR7)
	addi	a5,a5,%lo(.LANCHOR7)
	lw	a4,0(a5)
.LVL17:
.LBE19:
.LBE18:
	.loc 1 505 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
.LBB24:
.LBB20:
	.loc 1 518 30
	addi	a4,a4,1
.LBE20:
.LBE24:
	.loc 1 505 1
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
.LBB25:
.LBB21:
	.loc 1 518 30
	sw	a4,0(a5)
	.loc 1 519 36
	lw	a4,0(a5)
	mv	s0,a0
.LVL18:
	.loc 1 518 5 is_stmt 1
	.loc 1 519 5
	.loc 1 519 36 is_stmt 0
	andi	a4,a4,31
	.loc 1 519 8
	bne	a4,zero,.L31
	.loc 1 520 9 is_stmt 1
	lw	a1,0(a5)
.LVL19:
	lui	a0,%hi(.LC0)
.LVL20:
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL21:
.L31:
	.loc 1 523 5
	.loc 1 523 22 is_stmt 0
	lui	a5,%hi(.LANCHOR9)
	li	a4,1
	sb	a4,%lo(.LANCHOR9)(a5)
	.loc 1 524 5 is_stmt 1
	lui	a5,%hi(.LANCHOR10)
	lbu	a1,%lo(.LANCHOR10)(a5)
	mv	a0,s0
.LBE21:
.LBE25:
	.loc 1 525 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
.LVL22:
	lw	ra,12(sp)
	.cfi_restore 1
.LBB26:
.LBB22:
	.loc 1 524 5
	andi	a1,a1,0xff
.LBE22:
.LBE26:
	.loc 1 525 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
.LBB27:
.LBB23:
	.loc 1 524 5
	tail	reset_iso_packets
.LVL23:
.L29:
.LBE23:
.LBE27:
.LBB28:
.LBB17:
	.loc 1 128 5 is_stmt 1
	.loc 1 128 27 is_stmt 0
	lui	a3,%hi(.LANCHOR8)
	addi	a3,a3,%lo(.LANCHOR8)
	srw	a0,a3,a2,2
	.loc 1 129 5 is_stmt 1
	.loc 1 130 5
	.loc 1 130 21 is_stmt 0
	sw	a4,0(a5)
	.loc 1 131 5 is_stmt 1
.LVL24:
	ret
.L27:
	ret
.LBE17:
.LBE28:
	.cfi_endproc
.LFE119:
	.size	uvc_iso_complete_router, .-uvc_iso_complete_router
	.section	.rodata.cmd_cam_info.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"UNKNOWN"
	.align	2
.LC2:
	.string	"Camera state : %s\r\n"
	.align	2
.LC3:
	.string	"  VID/PID    : 0x%04X / 0x%04X\r\n"
	.align	2
.LC4:
	.string	"  Mode       : MJPEG %ux%u @ %ufps\r\n"
	.align	2
.LC5:
	.string	"  Alt-setting: %u\r\n"
	.align	2
.LC6:
	.string	"  ISO IN MPS : %u bytes\r\n"
	.align	2
.LC7:
	.string	"  Frames cap : %llu\r\n"
	.section	.text.cmd_cam_info,"ax",@progbits
	.align	1
	.type	cmd_cam_info, @function
cmd_cam_info:
.LFB137:
	.loc 1 1145 1
	.cfi_startproc
.LVL25:
	.loc 1 1146 5
	.loc 1 1146 17
	.loc 1 1148 5
	.loc 1 1145 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 1148 20
	lui	a5,%hi(.LANCHOR0)
	.loc 1 1145 1
	sw	s0,8(sp)
	.cfi_offset 8, -8
	.loc 1 1148 20
	lbu	s0,%lo(.LANCHOR0)(a5)
	.loc 1 1145 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	li	a5,3
	.loc 1 1148 20
	andi	s0,s0,0xff
.LVL26:
	.loc 1 1150 5 is_stmt 1
	.loc 1 1135 5
	bgtu	s0,a5,.L41
	lui	a5,%hi(.LANCHOR11)
	addi	a5,a5,%lo(.LANCHOR11)
	lrw	a1,a5,s0,2
.LVL27:
.L39:
	.loc 1 1150 5 is_stmt 0
	lui	a0,%hi(.LC2)
.LVL28:
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL29:
	.loc 1 1151 5 is_stmt 1
	.loc 1 1151 8 is_stmt 0
	beq	s0,zero,.L40
.LVL30:
.LBB33:
.LBB34:
	.loc 1 1152 9 is_stmt 1
	.loc 1 1152 80 is_stmt 0
	lui	s0,%hi(.LANCHOR12)
.LVL31:
	addi	s0,s0,%lo(.LANCHOR12)
	.loc 1 1152 9
	lhu	a2,2(s0)
	lhu	a1,0(s0)
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	call	printf
.LVL32:
	.loc 1 1153 9 is_stmt 1
	lbu	a3,10(s0)
	lhu	a2,6(s0)
	lhu	a1,4(s0)
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	call	printf
.LVL33:
	.loc 1 1155 9
	lbu	a1,9(s0)
	lui	a0,%hi(.LC5)
	addi	a0,a0,%lo(.LC5)
	call	printf
.LVL34:
	.loc 1 1156 9
	lhu	a1,12(s0)
	lui	a0,%hi(.LC6)
	addi	a0,a0,%lo(.LC6)
	call	printf
.LVL35:
	.loc 1 1157 9
	lui	a5,%hi(.LANCHOR13)
	lw	a2,%lo(.LANCHOR13)(a5)
	lw	a3,%lo(.LANCHOR13+4)(a5)
	lui	a0,%hi(.LC7)
	addi	a0,a0,%lo(.LC7)
	call	printf
.LVL36:
.L40:
.LBE34:
.LBE33:
	.loc 1 1159 5
	.loc 1 1160 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL37:
.L41:
	.cfi_restore_state
	.loc 1 1148 20
	lui	a1,%hi(.LC1)
.LVL38:
	addi	a1,a1,%lo(.LC1)
	j	.L39
	.cfi_endproc
.LFE137:
	.size	cmd_cam_info, .-cmd_cam_info
	.section	.rodata.start_streaming.part.0.str1.4,"aMS",@progbits,1
	.align	2
.LC8:
	.string	"uvc_iso"
	.section	.text.start_streaming.part.0,"ax",@progbits
	.align	1
	.type	start_streaming.part.0, @function
start_streaming.part.0:
.LFB142:
	.loc 1 902 13 is_stmt 1
	.cfi_startproc
	.loc 1 908 5
	.loc 1 908 19 is_stmt 0
	lui	a5,%hi(.LANCHOR4)
	sb	zero,%lo(.LANCHOR4)(a5)
	.loc 1 909 5 is_stmt 1
	li	a2,8192
	lui	a5,%hi(.LANCHOR14)
	lui	a1,%hi(.LC8)
	lui	a0,%hi(streaming_task)
	addi	a5,a5,%lo(.LANCHOR14)
	li	a4,14
	li	a3,0
	addi	a2,a2,-2048
	addi	a1,a1,%lo(.LC8)
	addi	a0,a0,%lo(streaming_task)
	tail	xTaskCreate
.LVL39:
	.cfi_endproc
.LFE142:
	.size	start_streaming.part.0, .-start_streaming.part.0
	.section	.text.stop_streaming,"ax",@progbits
	.align	1
	.type	stop_streaming, @function
stop_streaming:
.LFB124:
	.loc 1 914 1
	.cfi_startproc
	.loc 1 915 5
	.loc 1 915 9 is_stmt 0
	lui	a5,%hi(.LANCHOR14)
	.loc 1 915 8
	lw	a4,%lo(.LANCHOR14)(a5)
	beq	a4,zero,.L58
	.loc 1 914 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.loc 1 919 19
	li	a4,1
	.cfi_offset 8, -8
	addi	s0,a5,%lo(.LANCHOR14)
	.loc 1 919 5 is_stmt 1
	.loc 1 919 19 is_stmt 0
	lui	a5,%hi(.LANCHOR4)
	.loc 1 914 1
	sw	s1,4(sp)
	sw	ra,12(sp)
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.loc 1 919 19
	sb	a4,%lo(.LANCHOR4)(a5)
	.loc 1 922 5 is_stmt 1
	.loc 1 922 10
.LVL40:
.LBB38:
.LBB39:
	.loc 1 922 21
.LBE39:
.LBE38:
	.loc 1 919 19 is_stmt 0
	li	s1,40
.LVL41:
.L49:
.LBB41:
.LBB40:
	.loc 1 923 9 is_stmt 1
	li	a0,50
	.loc 1 922 5 is_stmt 0
	addi	s1,s1,-1
.LVL42:
	.loc 1 923 9
	call	vTaskDelay
.LVL43:
	.loc 1 922 46 is_stmt 1
	.loc 1 922 21
	.loc 1 922 5 is_stmt 0
	beq	s1,zero,.L47
.LVL44:
	.loc 1 922 28
	lw	a5,0(s0)
	bne	a5,zero,.L49
.LVL45:
.L47:
.LBE40:
.LBE41:
	.loc 1 925 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL46:
.L58:
	ret
	.cfi_endproc
.LFE124:
	.size	stop_streaming, .-stop_streaming
	.section	.text.free_iso_urb_resources.constprop.0,"ax",@progbits
	.align	1
	.type	free_iso_urb_resources.constprop.0, @function
free_iso_urb_resources.constprop.0:
.LFB147:
	.loc 1 527 13 is_stmt 1
	.cfi_startproc
.LVL47:
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s1,20(sp)
	sw	s2,16(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
.LBB42:
	.loc 1 532 17 is_stmt 0
	lui	s1,%hi(.LANCHOR2)
	.loc 1 536 21
	lui	s2,%hi(.LANCHOR3)
.LBE42:
	.loc 1 527 13
	sw	s0,24(sp)
	sw	s3,12(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.loc 1 527 13
	mv	s3,a0
	li	s0,0
.LBB43:
	.loc 1 532 17
	addi	s1,s1,%lo(.LANCHOR2)
	.loc 1 536 21
	addi	s2,s2,%lo(.LANCHOR3)
.LVL48:
.L62:
	.loc 1 531 25 is_stmt 1
	.loc 1 531 5 is_stmt 0
	bne	s3,s0,.L65
.LBE43:
	.loc 1 541 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL49:
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL50:
.L65:
	.cfi_restore_state
.LBB44:
	.loc 1 532 9 is_stmt 1
	.loc 1 532 17 is_stmt 0
	lrw	a0,s1,s0,2
	.loc 1 532 12
	beq	a0,zero,.L63
	.loc 1 533 13 is_stmt 1
	call	vPortFree
.LVL51:
	.loc 1 534 13
	.loc 1 534 21 is_stmt 0
	srw	zero,s1,s0,2
.L63:
	.loc 1 536 9 is_stmt 1
	.loc 1 536 21 is_stmt 0
	lrw	a0,s2,s0,2
	.loc 1 536 12
	beq	a0,zero,.L64
	.loc 1 537 13 is_stmt 1
	call	vPortFree
.LVL52:
	.loc 1 538 13
	.loc 1 538 25 is_stmt 0
	srw	zero,s2,s0,2
.L64:
	.loc 1 531 40 is_stmt 1
.LVL53:
	addi	s0,s0,1
.LVL54:
	j	.L62
.LBE44:
	.cfi_endproc
.LFE147:
	.size	free_iso_urb_resources.constprop.0, .-free_iso_urb_resources.constprop.0
	.section	.rodata.streaming_task.str1.4,"aMS",@progbits,1
	.align	2
.LC9:
	.string	"\033[0;31m[E][UVC] [UVC] No ISO IN endpoint \342\200\224 cannot stream\r\n"
	.align	2
.LC10:
	.string	"\033[0m[I][UVC] [UVC] Starting ISO streaming, MPS=%u (SRAM free=%u)\r\n"
	.align	2
.LC11:
	.string	"\033[0;31m[E][UVC] [UVC] Frame pool init failed\r\n"
	.align	2
.LC12:
	.string	"\033[0;33m[W][UVC] [UVC] Skip ISO profile %d URBs x %u pkts (need=%u, free=%u, margin=%u)\r\n"
	.align	2
.LC13:
	.string	"\033[0m[I][UVC] [UVC] ISO profile: %u URBs x %u pkts/URB (buf=%u each, total=%u)\r\n"
	.align	2
.LC14:
	.string	"\033[0;31m[E][UVC] [UVC] Initial ISO submit %d failed: %d\r\n"
	.align	2
.LC15:
	.string	"\033[0m[I][UVC] [UVC] Camera streaming \342\200\224 MJPEG %ux%u\r\n"
	.align	2
.LC16:
	.string	"\033[0;33m[W][UVC] [UVC] Drop unknown URB pointer %p\r\n"
	.align	2
.LC17:
	.string	"\033[0;33m[W][UVC] [UVC] Invalid URB buffer range\r\n"
	.align	2
.LC18:
	.string	"\033[0;33m[W][UVC] [UVC] Clamp invalid URB pkt count %u -> %u\r\n"
	.align	2
.LC19:
	.string	"\033[0;33m[W][UVC] [UVC] ISO pkt len clamp: %u -> %u\r\n"
	.align	2
.LC20:
	.string	"\033[0;33m[W][UVC] [UVC] Drop pkt out of URB range idx=%u ptr=%p len=%u\r\n"
	.align	2
.LC21:
	.string	"\033[0;33m[W][UVC] [UVC] Reclaimed %u queued frames to sustain capture\r\n"
	.align	2
.LC22:
	.string	"\033[0;31m[E][UVC] [UVC] ISO resubmit failed: %d\r\n"
	.align	2
.LC23:
	.string	"\033[0;33m[W][UVC] [UVC] Stall detected \342\200\224 no frames for %d ms\r\n"
	.align	2
.LC24:
	.string	"\033[0;31m[E][UVC] [UVC] Stall recurred after restart \342\200\224 camera unavailable\r\n"
	.align	2
.LC25:
	.string	"\033[0;33m[W][UVC] [UVC] Attempting stream restart after stall\r\n"
	.align	2
.LC26:
	.string	"\033[0;33m[W][UVC] [UVC] Skip invalid URB slot %d ptr=%p during restart kill\r\n"
	.align	2
.LC27:
	.string	"\033[0;33m[W][UVC] [UVC] usbh_kill_urb(%d) failed: %d\r\n"
	.align	2
.LC28:
	.string	"\033[0;31m[E][UVC] [UVC] Restart submit %d failed: %d\r\n"
	.align	2
.LC29:
	.string	"\033[0m[I][UVC] [UVC] Stream restarted successfully\r\n"
	.align	2
.LC30:
	.string	"\033[0m[I][UVC] [UVC] Streaming task stopped (frames captured: %llu)\r\n"
	.align	2
.LC31:
	.string	"\033[0;33m[W][UVC] [UVC] ISO alloc failed for %d URBs x %u pkts (buf=%u, SRAM free=%u) \342\200\224 retrying\r\n"
	.align	2
.LC32:
	.string	"\033[0;31m[E][UVC] [UVC] Unable to allocate ISO resources (MPS=%u, SRAM free=%u)\r\n"
	.section	.text.streaming_task,"ax",@progbits
	.align	1
	.type	streaming_task, @function
streaming_task:
.LFB122:
	.loc 1 561 1
	.cfi_startproc
.LVL55:
	.loc 1 562 5
	.loc 1 564 5
	.loc 1 564 24 is_stmt 0
	lui	a5,%hi(.LANCHOR15)
	lw	a5,%lo(.LANCHOR15)(a5)
.LVL56:
	.loc 1 565 5 is_stmt 1
	.loc 1 561 1 is_stmt 0
	addi	sp,sp,-176
	.cfi_def_cfa_offset 176
	sw	ra,172(sp)
	sw	s0,168(sp)
	sw	s1,164(sp)
	sw	s2,160(sp)
	sw	s3,156(sp)
	sw	s4,152(sp)
	sw	s5,148(sp)
	sw	s6,144(sp)
	sw	s7,140(sp)
	sw	s8,136(sp)
	sw	s9,132(sp)
	sw	s10,128(sp)
	sw	s11,124(sp)
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
	.loc 1 565 8
	beq	a5,zero,.L74
	.loc 1 565 19 discriminator 1
	lw	a4,4(a5)
	sw	a4,0(sp)
	.loc 1 565 13 discriminator 1
	bne	a4,zero,.L75
.L74:
	.loc 1 566 9 is_stmt 1
	lui	a0,%hi(.LC9)
.LVL57:
	addi	a0,a0,%lo(.LC9)
.LVL58:
.L256:
	.loc 1 601 9 is_stmt 0
	call	printf
.LVL59:
	.loc 1 602 9 is_stmt 1
.L254:
	.loc 1 670 9
	li	a0,3
	call	set_cam_state
.LVL60:
	j	.L255
.LVL61:
.L75:
	.loc 1 572 5
	.loc 1 572 26 is_stmt 0
	lw	a4,0(a5)
	.loc 1 575 14
	lhu	s8,84(a5)
	.loc 1 572 26
	sw	a4,8(sp)
.LVL62:
	.loc 1 573 5 is_stmt 1
	.loc 1 575 5
	.loc 1 576 5
	.loc 1 576 8 is_stmt 0
	bne	s8,zero,.L76
	.loc 1 577 13
	li	s8,512
.LVL63:
.L76:
	.loc 1 580 5 is_stmt 1
	.loc 1 580 111 is_stmt 0
	call	kfree_size
.LVL64:
	mv	a2,a0
	.loc 1 580 5
	lui	a0,%hi(.LC10)
	mv	a1,s8
	addi	a0,a0,%lo(.LC10)
	call	printf
.LVL65:
	.loc 1 584 5 is_stmt 1
	.loc 1 586 23 is_stmt 0
	lui	s6,%hi(.LANCHOR13)
	li	a2,0
	addi	a5,s6,%lo(.LANCHOR13)
	sw	a2,0(a5)
	li	a3,0
	.loc 1 587 31
	lui	s5,%hi(.LANCHOR18)
	.loc 1 586 23
	sw	a3,4(a5)
	.loc 1 587 31
	addi	a5,s5,%lo(.LANCHOR18)
	sw	a2,0(a5)
	.loc 1 588 22
	lui	s4,%hi(.LANCHOR9)
	.loc 1 587 31
	sw	a3,4(a5)
	.loc 1 588 22
	addi	a5,s4,%lo(.LANCHOR9)
	sb	zero,0(a5)
	.loc 1 590 31
	lui	s3,%hi(.LANCHOR10)
	.loc 1 589 31
	lui	a5,%hi(.LANCHOR7)
	sw	zero,%lo(.LANCHOR7)(a5)
	.loc 1 590 31
	addi	a5,s3,%lo(.LANCHOR10)
	sb	zero,0(a5)
	.loc 1 584 23
	lui	s9,%hi(.LANCHOR16)
	.loc 1 591 27
	lui	a5,%hi(.LANCHOR19)
	.loc 1 585 23
	lui	s7,%hi(.LANCHOR17)
	.loc 1 591 27
	sw	zero,%lo(.LANCHOR19)(a5)
.LBB98:
.LBB99:
	.loc 1 104 21
	lui	s1,%hi(.LANCHOR5)
.LBE99:
.LBE98:
	.loc 1 584 23
	sb	zero,%lo(.LANCHOR16)(s9)
	.loc 1 585 5 is_stmt 1
	.loc 1 585 23 is_stmt 0
	sb	zero,%lo(.LANCHOR17)(s7)
	.loc 1 586 5 is_stmt 1
	.loc 1 587 5
	.loc 1 588 5
	.loc 1 589 5
	.loc 1 590 5
	.loc 1 591 5
	.loc 1 592 5
	call	stream_urb_slots_reset
.LVL66:
	.loc 1 593 5
.LBB102:
.LBB100:
	.loc 1 104 5
	.loc 1 104 21 is_stmt 0
	addi	a5,s1,%lo(.LANCHOR5)
	.loc 1 105 21
	lui	s0,%hi(.LANCHOR6)
	.loc 1 104 21
	sw	zero,0(a5)
	.loc 1 105 5 is_stmt 1
.LBE100:
.LBE102:
	.loc 1 597 19 is_stmt 0
	lui	s2,%hi(.LANCHOR4)
.LBB103:
.LBB101:
	.loc 1 105 21
	addi	a5,s0,%lo(.LANCHOR6)
	sw	zero,0(a5)
.LBE101:
.LBE103:
	.loc 1 597 5 is_stmt 1
	.loc 1 597 19 is_stmt 0
	addi	a5,s2,%lo(.LANCHOR4)
	sb	zero,0(a5)
	.loc 1 600 5 is_stmt 1
	.loc 1 600 9 is_stmt 0
	call	frame_pool_init
.LVL67:
	addi	a5,s9,%lo(.LANCHOR16)
	sw	a5,36(sp)
	addi	a5,s7,%lo(.LANCHOR17)
	sw	a5,96(sp)
	addi	a5,s6,%lo(.LANCHOR13)
	sw	a5,56(sp)
	addi	a5,s5,%lo(.LANCHOR18)
	sw	a5,40(sp)
	addi	a5,s4,%lo(.LANCHOR9)
	sw	a5,4(sp)
	addi	a5,s3,%lo(.LANCHOR10)
	sw	a5,60(sp)
	addi	a5,s1,%lo(.LANCHOR5)
	sw	a5,64(sp)
	addi	a5,s0,%lo(.LANCHOR6)
	sw	a0,12(sp)
	sw	a5,44(sp)
	addi	s2,s2,%lo(.LANCHOR4)
	.loc 1 600 8
	beq	a0,zero,.L77
	.loc 1 601 9 is_stmt 1
	lui	a0,%hi(.LC11)
	addi	a0,a0,%lo(.LC11)
	j	.L256
.L77:
	.loc 1 609 5
.LVL68:
	.loc 1 610 5
	.loc 1 611 5
	.loc 1 611 37 is_stmt 0
	call	xTaskGetTickCount
.LVL69:
.LBB104:
.LBB105:
.LBB106:
.LBB107:
	.loc 1 644 38
	lui	a5,%hi(.LANCHOR3)
.LBE107:
	.loc 1 622 21
	lui	s6,%hi(.LANCHOR20)
.LBB108:
	.loc 1 643 34
	lui	s1,%hi(.LANCHOR2)
	.loc 1 644 38
	addi	a5,a5,%lo(.LANCHOR3)
.LBE108:
.LBE106:
.LBE105:
.LBE104:
	.loc 1 611 37
	sw	a0,48(sp)
.LVL70:
	.loc 1 616 5 is_stmt 1
	.loc 1 617 5
	.loc 1 618 5
	.loc 1 619 5
	.loc 1 620 5
.LBB118:
	.loc 1 620 10
	.loc 1 620 27
	.loc 1 620 14 is_stmt 0
	li	s3,2
.LBB115:
	.loc 1 621 21
	li	s4,0
.LBB112:
	.loc 1 622 21
	addi	s6,s6,%lo(.LANCHOR20)
.LBB109:
	.loc 1 643 34
	addi	s1,s1,%lo(.LANCHOR2)
	.loc 1 644 38
	sw	a5,72(sp)
.LBE109:
	.loc 1 660 13
	lui	s5,%hi(.LC31)
.LVL71:
.L78:
	.loc 1 622 13 is_stmt 1
	.loc 1 622 21 is_stmt 0
	lrbu	s0,s6,s4,0
.LVL72:
	.loc 1 623 13 is_stmt 1
	.loc 1 623 16 is_stmt 0
	li	a4,4
	.loc 1 623 29
	addi	a5,s0,-4
	.loc 1 623 16
	andi	a5,a5,0xff
	bgtu	a5,a4,.L79
	.loc 1 627 13 is_stmt 1
	.loc 1 629 22 is_stmt 0
	mul	s9,s8,s0
	.loc 1 627 67
	addi	a5,s0,4
	.loc 1 627 22
	slli	a5,a5,4
	sw	a5,24(sp)
.LVL73:
	.loc 1 629 13 is_stmt 1
	.loc 1 630 13
.LBB110:
	.loc 1 642 22 is_stmt 0
	li	s7,0
.LBE110:
	.loc 1 631 60
	add	a3,a5,s9
	.loc 1 630 22
	mul	a3,a3,s3
	sw	a3,16(sp)
.LVL74:
	.loc 1 632 13 is_stmt 1
	.loc 1 632 46 is_stmt 0
	call	kfree_size
.LVL75:
	.loc 1 635 48
	lw	a3,16(sp)
	li	a5,20480
	.loc 1 632 46
	mv	a4,a0
.LVL76:
	.loc 1 633 12 is_stmt 1
	.loc 1 635 13
	.loc 1 635 48 is_stmt 0
	add	a5,a3,a5
	.loc 1 635 16
	bleu	a5,a0,.L80
	.loc 1 636 17 is_stmt 1
	lui	a0,%hi(.LC12)
.LVL77:
	li	a5,20480
	mv	a2,s0
	mv	a1,s3
	addi	a0,a0,%lo(.LC12)
	call	printf
.LVL78:
	.loc 1 639 17
.L79:
.LBE112:
	.loc 1 621 96 discriminator 2
	.loc 1 621 97 is_stmt 0 discriminator 2
	addi	s4,s4,1
.LVL79:
	.loc 1 621 28 is_stmt 1 discriminator 2
	.loc 1 621 9 is_stmt 0 discriminator 2
	li	a5,3
	bne	s4,a5,.L78
.LBE115:
	.loc 1 620 66 is_stmt 1
.LVL80:
	.loc 1 620 27
	.loc 1 620 5 is_stmt 0
	li	a5,1
	bne	s3,a5,.L174
.LBE118:
	.loc 1 667 5 is_stmt 1
	.loc 1 668 9
	.loc 1 668 128 is_stmt 0
	call	kfree_size
.LVL81:
	mv	a2,a0
	.loc 1 668 9
	lui	a0,%hi(.LC32)
	mv	a1,s8
	addi	a0,a0,%lo(.LC32)
	call	printf
.LVL82:
	j	.L254
.L174:
.LBB119:
	.loc 1 620 73
	li	s3,1
.LVL83:
.LBB116:
	.loc 1 621 21
	li	s4,0
.LVL84:
	j	.L78
.LVL85:
.L80:
.LBB113:
.LBB111:
	.loc 1 643 17 is_stmt 1
	.loc 1 643 55 is_stmt 0
	lw	a0,24(sp)
	call	pvPortMalloc
.LVL86:
	.loc 1 643 34
	srw	a0,s1,s7,2
	.loc 1 644 17 is_stmt 1
	.loc 1 644 51 is_stmt 0
	mv	a0,s9
	call	pvPortMalloc
.LVL87:
	.loc 1 644 38
	lw	a5,72(sp)
	srw	a0,a5,s7,2
	.loc 1 645 17 is_stmt 1
	.loc 1 645 35 is_stmt 0
	lrw	a5,s1,s7,2
	.loc 1 645 20
	beq	a5,zero,.L81
	.loc 1 645 39 discriminator 1
	beq	a0,zero,.L81
	.loc 1 649 17 is_stmt 1 discriminator 2
	lw	a2,24(sp)
	mv	a0,a5
	li	a1,0
	call	memset
.LVL88:
	.loc 1 642 42 discriminator 2
	.loc 1 642 43 is_stmt 0 discriminator 2
	addi	a5,s7,1
.LVL89:
	.loc 1 642 29 is_stmt 1 discriminator 2
	li	s7,1
	.loc 1 642 13 is_stmt 0 discriminator 2
	bgt	s3,a5,.L80
.LBE111:
	.loc 1 652 13 is_stmt 1
	.loc 1 653 17
.LVL90:
	.loc 1 654 17
	.loc 1 655 17
	.loc 1 656 17
	.loc 1 657 17
.LBE113:
.LBE116:
	.loc 1 620 66
	.loc 1 620 27
.LBE119:
	.loc 1 676 5 is_stmt 0
	mul	a4,s3,s9
	andi	s10,s3,0xff
	.loc 1 676 5 is_stmt 1
	lui	a0,%hi(.LC13)
	mv	a3,s9
	mv	a2,s0
	mv	a1,s10
	addi	a0,a0,%lo(.LC13)
.LBB120:
.LBB121:
	.loc 1 692 23 is_stmt 0
	lui	s4,%hi(uvc_iso_complete_router)
.LVL91:
.LBE121:
	.loc 1 683 14
	li	s5,0
.LBB125:
	.loc 1 692 23
	addi	s4,s4,%lo(uvc_iso_complete_router)
.LBE125:
.LBE120:
	.loc 1 676 5
	call	printf
.LVL92:
	.loc 1 680 5 is_stmt 1
	.loc 1 680 31 is_stmt 0
	lw	a5,60(sp)
.LBB129:
.LBB126:
	.loc 1 705 13
	lui	s3,%hi(.LC14)
.LVL93:
.LBE126:
.LBE129:
	.loc 1 680 31
	sb	s0,0(a5)
	.loc 1 683 5 is_stmt 1
.LBB130:
	.loc 1 683 10
.LVL94:
.L85:
	.loc 1 683 21 discriminator 1
	.loc 1 683 5 is_stmt 0 discriminator 1
	bgt	s10,s5,.L89
.LBE130:
	.loc 1 709 5 is_stmt 1
	li	a0,2
	call	set_cam_state
.LVL95:
	.loc 1 710 5
	.loc 1 710 111 is_stmt 0
	lui	a5,%hi(.LANCHOR12)
	addi	a5,a5,%lo(.LANCHOR12)
	.loc 1 710 5
	lhu	a2,6(a5)
	lhu	a1,4(a5)
	lui	a0,%hi(.LC15)
	addi	a0,a0,%lo(.LC15)
	call	printf
.LVL96:
	.loc 1 714 5 is_stmt 1
.LBB131:
.LBB132:
.LBB133:
	.loc 1 142 31 is_stmt 0
	lui	a5,%hi(.LANCHOR8)
	addi	a5,a5,%lo(.LANCHOR8)
.LBE133:
.LBE132:
.LBE131:
	.loc 1 610 14
	sw	zero,88(sp)
	sw	zero,92(sp)
	.loc 1 609 14
	sw	zero,80(sp)
	sw	zero,84(sp)
.LBB218:
.LBB136:
.LBB134:
	.loc 1 142 31
	sw	a5,100(sp)
.LBE134:
.LBE136:
.LBB137:
.LBB138:
.LBB139:
.LBB140:
.LBB141:
.LBB142:
.LBB143:
.LBB144:
	.loc 1 396 52
	lui	s3,%hi(.LANCHOR22)
.LVL97:
.L90:
.LBE144:
.LBE143:
.LBE142:
.LBE141:
.LBE140:
.LBE139:
.LBE138:
.LBE137:
.LBE218:
	.loc 1 714 11 is_stmt 1
	.loc 1 714 12 is_stmt 0
	lbu	a5,0(s2)
	andi	a5,a5,0xff
	.loc 1 714 11
	bne	a5,zero,.L136
	.loc 1 714 42 discriminator 1
	lui	a4,%hi(.LANCHOR0)
	addi	a5,a4,%lo(.LANCHOR0)
	lbu	a5,0(a5)
	addi	a4,a4,%lo(.LANCHOR0)
	.loc 1 714 27 discriminator 1
	li	a3,2
	.loc 1 714 42 discriminator 1
	andi	a5,a5,0xff
	sw	a4,68(sp)
	.loc 1 714 27 discriminator 1
	bne	a5,a3,.L136
.LBB219:
	.loc 1 715 13
	li	s11,0
	j	.L157
.LVL98:
.L89:
.LBE219:
.LBB220:
.LBB127:
	.loc 1 684 9 is_stmt 1
	.loc 1 684 26 is_stmt 0
	lrw	a0,s1,s5,2
.LVL99:
	.loc 1 686 9 is_stmt 1
	.loc 1 686 20 is_stmt 0
	lw	a5,8(sp)
.LBB122:
	.loc 1 696 18
	li	a3,0
.LBE122:
	.loc 1 689 37
	sw	s9,28(a0)
	.loc 1 686 20
	sw	a5,8(a0)
	.loc 1 687 9 is_stmt 1
	.loc 1 687 17 is_stmt 0
	lw	a5,0(sp)
	.loc 1 690 33
	sw	s0,48(a0)
	.loc 1 691 22
	sw	zero,40(a0)
	.loc 1 687 17
	sw	a5,12(a0)
	.loc 1 688 9 is_stmt 1
	.loc 1 688 49 is_stmt 0
	lw	a5,72(sp)
	.loc 1 692 23
	sw	s4,56(a0)
	.loc 1 693 18
	sw	a0,60(a0)
	.loc 1 688 49
	lrw	a5,a5,s5,2
	addi	a4,a0,64
	.loc 1 688 30
	sw	a5,24(a0)
	.loc 1 689 9 is_stmt 1
	.loc 1 690 9
	.loc 1 691 9
	.loc 1 692 9
	.loc 1 693 9
	.loc 1 696 9
.LBB123:
	.loc 1 696 14
.LVL100:
.L86:
	.loc 1 696 25 discriminator 1
	.loc 1 696 9 is_stmt 0 discriminator 1
	bgt	s0,a3,.L87
.LBE123:
	.loc 1 703 9 is_stmt 1
	.loc 1 703 19 is_stmt 0
	call	usbh_submit_urb
.LVL101:
	mv	a2,a0
.LVL102:
	.loc 1 704 9 is_stmt 1
	.loc 1 704 12 is_stmt 0
	bge	a0,zero,.L88
	.loc 1 705 13 is_stmt 1
	mv	a1,s5
	addi	a0,s3,%lo(.LC14)
.LVL103:
	call	printf
.LVL104:
.L88:
.LBE127:
	.loc 1 683 43 discriminator 2
	.loc 1 683 44 is_stmt 0 discriminator 2
	addi	s5,s5,1
.LVL105:
	j	.L85
.LVL106:
.L87:
.LBB128:
.LBB124:
	.loc 1 697 13 is_stmt 1 discriminator 3
	.loc 1 697 48 is_stmt 0 discriminator 3
	sw	a5,0(a4)
	.loc 1 698 13 is_stmt 1 discriminator 3
	.loc 1 698 55 is_stmt 0 discriminator 3
	sw	s8,4(a4)
	.loc 1 699 13 is_stmt 1 discriminator 3
	.loc 1 699 46 is_stmt 0 discriminator 3
	sw	zero,8(a4)
	.loc 1 700 13 is_stmt 1 discriminator 3
	.loc 1 700 42 is_stmt 0 discriminator 3
	sw	zero,12(a4)
	.loc 1 696 50 is_stmt 1 discriminator 3
	.loc 1 696 51 is_stmt 0 discriminator 3
	addi	a3,a3,1
.LVL107:
	add	a5,a5,s8
	addi	a4,a4,16
	j	.L86
.LVL108:
.L134:
.LBE124:
.LBE128:
.LBE220:
.LBB221:
.LBB180:
.LBB181:
.LBB182:
	.loc 1 118 38
	andi	a5,s4,3
	sw	a5,28(sp)
	.loc 1 118 16
	bne	a5,zero,.L91
.LVL109:
.LBE182:
.LBE181:
.LBB184:
	.loc 1 549 9 is_stmt 1
	.loc 1 549 12 is_stmt 0
	lw	a5,0(s1)
	beq	s4,a5,.L92
	.loc 1 548 36 is_stmt 1
.LVL110:
	.loc 1 548 25
	.loc 1 548 5 is_stmt 0
	li	a5,2
	bne	s10,a5,.L91
	.loc 1 549 9 is_stmt 1
	.loc 1 549 12 is_stmt 0
	lw	a5,4(s1)
	beq	a5,s4,.L92
.LVL111:
.L91:
.LBE184:
.LBE180:
	.loc 1 720 17 is_stmt 1
	lui	a0,%hi(.LC16)
	mv	a1,s4
	addi	a0,a0,%lo(.LC16)
	call	printf
.LVL112:
	.loc 1 721 17
	.loc 1 721 34 is_stmt 0
	lw	a4,4(sp)
	li	a5,1
	sb	a5,0(a4)
	.loc 1 722 17 is_stmt 1
.L93:
.LBB186:
.LBB176:
	.loc 1 472 9 is_stmt 0
	li	s11,1
.LVL113:
.L157:
.LBE176:
.LBE186:
	.loc 1 717 15 is_stmt 1
.LBB187:
.LBB135:
	.loc 1 136 5
	.loc 1 136 14 is_stmt 0
	lw	a5,44(sp)
	.loc 1 137 14
	lw	a4,64(sp)
	.loc 1 136 14
	lw	a5,0(a5)
.LVL114:
	.loc 1 137 5 is_stmt 1
	.loc 1 137 14 is_stmt 0
	lw	a4,0(a4)
.LVL115:
	.loc 1 138 5 is_stmt 1
	.loc 1 138 8 is_stmt 0
	beq	a5,a4,.L133
	.loc 1 141 5 is_stmt 1
	.loc 1 142 5
	.loc 1 142 31 is_stmt 0
	lw	a4,100(sp)
.LVL116:
	lrw	s4,a4,a5,2
.LVL117:
	.loc 1 143 5 is_stmt 1
	.loc 1 143 21 is_stmt 0
	lw	a4,44(sp)
	.loc 1 143 29
	addi	a5,a5,1
.LVL118:
	.loc 1 143 35
	andi	a5,a5,63
.LVL119:
	.loc 1 143 21
	sw	a5,0(a4)
	.loc 1 144 5 is_stmt 1
.LVL120:
.LBE135:
.LBE187:
	.loc 1 718 13
	.loc 1 719 13
.LBE221:
	.loc 1 545 5
.LBB222:
.LBB188:
.LBB185:
.LBB183:
	.loc 1 118 5
	.loc 1 118 16 is_stmt 0
	bne	s4,zero,.L134
	j	.L91
.LVL121:
.L96:
.LBE183:
.LBE185:
.LBE188:
.LBB189:
.LBB177:
	.loc 1 464 5 is_stmt 1
	.loc 1 464 14 is_stmt 0
	lw	a5,48(s4)
.LVL122:
	sw	a5,16(sp)
.LVL123:
	.loc 1 465 5 is_stmt 1
	.loc 1 465 8 is_stmt 0
	beq	a5,zero,.L98
	.loc 1 465 24
	bgeu	s0,a5,.L99
.L98:
	.loc 1 466 9 is_stmt 1
	lw	a1,16(sp)
	lui	a0,%hi(.LC18)
	mv	a2,s0
	addi	a0,a0,%lo(.LC18)
	call	printf
.LVL124:
	.loc 1 468 9
	.loc 1 469 9
	.loc 1 469 33 is_stmt 0
	sw	s0,48(s4)
.LBE177:
.LBE189:
.LBE222:
	.loc 1 676 5
	sw	s0,16(sp)
.LVL125:
.L99:
.LBB223:
.LBB190:
.LBB178:
	.loc 1 472 4 is_stmt 1
	.loc 1 473 5
.LBB173:
	.loc 1 473 10
	addi	s5,s4,64
.LBE173:
	.loc 1 472 9 is_stmt 0
	li	a5,0
.LVL126:
.L100:
.LBB174:
	.loc 1 473 26 is_stmt 1
	.loc 1 473 5 is_stmt 0
	lw	a4,28(sp)
	lw	a3,16(sp)
	bne	a4,a3,.L131
.LBE174:
	.loc 1 497 5 is_stmt 1
	.loc 1 497 8 is_stmt 0
	beq	a5,zero,.L132
	.loc 1 498 9 is_stmt 1
	.loc 1 498 34 is_stmt 0
	lw	a5,40(sp)
.LVL127:
	li	a3,0
	li	a2,1
	lw	a4,0(a5)
	lw	a5,4(a5)
	add64	a4,a4,a2
	lw	a3,40(sp)
	sw	a4,0(a3)
	sw	a5,4(a3)
	j	.L132
.LVL128:
.L131:
.LBB175:
.LBB171:
	.loc 1 474 9 is_stmt 1
	.loc 1 476 9
	.loc 1 476 12 is_stmt 0
	lw	a4,12(s5)
	bne	a4,zero,.L101
	.loc 1 476 39
	lw	s11,8(s5)
	.loc 1 476 33
	beq	s11,zero,.L101
.LBB169:
	.loc 1 477 13 is_stmt 1
.LVL129:
	.loc 1 478 13
	.loc 1 479 13
	.loc 1 479 33 is_stmt 0
	lw	a2,4(s5)
	.loc 1 479 16
	bleu	s11,a2,.L102
	.loc 1 480 17 is_stmt 1
	lui	a0,%hi(.LC19)
	mv	a1,s11
	addi	a0,a0,%lo(.LC19)
	call	printf
.LVL130:
	.loc 1 482 17
	.loc 1 482 28 is_stmt 0
	lw	s11,4(s5)
.LVL131:
.L102:
	.loc 1 484 13 is_stmt 1
	.loc 1 484 48 is_stmt 0
	lw	s7,0(s5)
.LVL132:
	.loc 1 485 13 is_stmt 1
	.loc 1 486 16 is_stmt 0
	lw	a4,32(sp)
	.loc 1 485 23
	add	a5,s7,s11
.LVL133:
	.loc 1 486 13 is_stmt 1
	.loc 1 486 16 is_stmt 0
	bgtu	a4,s7,.L103
	.loc 1 486 37
	lw	a4,76(sp)
	bltu	a4,a5,.L103
	.loc 1 486 58
	bleu	s7,a5,.L104
.L103:
	.loc 1 487 17 is_stmt 1
	lw	a1,28(sp)
	lui	a5,%hi(.LC20)
.LVL134:
	mv	a3,s11
	mv	a2,s7
	addi	a0,a5,%lo(.LC20)
	call	printf
.LVL135:
	.loc 1 489 17
.L252:
	.loc 1 477 25 is_stmt 0
	li	a5,1
	j	.L101
.LVL136:
.L104:
	.loc 1 491 13 is_stmt 1
	.loc 1 491 16 is_stmt 0
	li	a5,1
.LVL137:
	bleu	s11,a5,.L252
	.loc 1 491 32
	beq	s7,zero,.L252
	.loc 1 492 17 is_stmt 1
.LVL138:
.LBB167:
.LBB165:
	.loc 1 334 5
	.loc 1 338 5
	.loc 1 338 13 is_stmt 0
	lbu	a4,0(s7)
	sw	a4,20(sp)
.LVL139:
	.loc 1 339 5 is_stmt 1
	.loc 1 341 5
	.loc 1 341 8 is_stmt 0
	bleu	a4,a5,.L252
	.loc 1 341 24
	bltu	s11,a4,.L252
	.loc 1 339 13
	lbu	a5,1(s7)
	.loc 1 355 8
	lui	a4,%hi(.LANCHOR17)
	lui	a3,%hi(.LANCHOR16)
	.loc 1 339 13
	sw	a5,52(sp)
	.loc 1 346 5 is_stmt 1
	.loc 1 346 13 is_stmt 0
	andi	a6,a5,1
.LVL140:
	.loc 1 347 5 is_stmt 1
	.loc 1 348 5
	andi	a7,a5,64
.LVL141:
	.loc 1 351 5
	.loc 1 352 5
	.loc 1 355 5
	.loc 1 355 8 is_stmt 0
	lbu	a5,%lo(.LANCHOR17)(a4)
	addi	t3,a4,%lo(.LANCHOR17)
	lui	a4,%hi(.LANCHOR21)
	addi	s6,a3,%lo(.LANCHOR16)
	addi	a1,a4,%lo(.LANCHOR21)
	beq	a5,zero,.L107
	.loc 1 355 27
	lbu	a5,0(a1)
	beq	a5,a6,.L107
	.loc 1 357 9 is_stmt 1
	.loc 1 357 12 is_stmt 0
	lbu	a5,0(s6)
	beq	a5,zero,.L107
	.loc 1 357 45
	addi	a5,s3,%lo(.LANCHOR22)
	.loc 1 357 31
	lw	a4,4(a5)
	beq	a4,zero,.L107
	sw	a6,108(sp)
	sw	a7,104(sp)
	.loc 1 358 13 is_stmt 1
	.loc 1 359 28 is_stmt 0
	call	xTaskGetTickCount
.LVL142:
	.loc 1 358 38
	lui	a5,%hi(.LANCHOR22)
	addi	a5,a5,%lo(.LANCHOR22)
	sw	a0,8(a5)
	.loc 1 360 13 is_stmt 1
	addi	a0,s3,%lo(.LANCHOR22)
	call	frame_queue_push
.LVL143:
	.loc 1 361 13
	.loc 1 361 30 is_stmt 0
	lui	a5,%hi(.LANCHOR13)
	addi	a0,a5,%lo(.LANCHOR13)
	lw	t1,0(a0)
	lw	t2,4(a0)
	li	a4,1
	li	a5,0
	add64	a4,t1,a4
	sw	a4,0(a0)
	sw	a5,4(a0)
	.loc 1 362 13 is_stmt 1
	.loc 1 362 31 is_stmt 0
	lw	a6,108(sp)
	lui	a5,%hi(.LANCHOR21)
	lw	a7,104(sp)
	addi	a1,a5,%lo(.LANCHOR21)
	lui	a5,%hi(.LANCHOR17)
	sb	zero,0(s6)
	addi	t3,a5,%lo(.LANCHOR17)
.LVL144:
.L107:
	.loc 1 365 5 is_stmt 1
	.loc 1 366 23 is_stmt 0
	li	a5,1
	sb	a5,0(t3)
	.loc 1 365 16
	sb	a6,0(a1)
	.loc 1 366 5 is_stmt 1
	.loc 1 369 5
	.loc 1 370 13 is_stmt 0
	lbu	a5,0(s6)
	.loc 1 369 8
	beq	a7,zero,.L108
	.loc 1 370 9 is_stmt 1
	.loc 1 370 12 is_stmt 0
	beq	a5,zero,.L252
	.loc 1 371 13
	addi	a0,s3,%lo(.LANCHOR22)
	sw	a5,20(sp)
.LVL145:
	.loc 1 371 13 is_stmt 1
	call	frame_free
.LVL146:
	.loc 1 372 13
	lw	a5,20(sp)
	.loc 1 372 31 is_stmt 0
	sb	zero,0(s6)
.LVL147:
.L101:
.LBE165:
.LBE167:
.LBE169:
.LBE171:
	.loc 1 473 41 is_stmt 1
	.loc 1 473 42 is_stmt 0
	lw	a4,28(sp)
	addi	s5,s5,16
	addi	a4,a4,1
	sw	a4,28(sp)
.LVL148:
	j	.L100
.LVL149:
.L108:
.LBB172:
.LBB170:
.LBB168:
.LBB166:
	.loc 1 378 5 is_stmt 1
	.loc 1 378 8 is_stmt 0
	bne	a5,zero,.L109
	.loc 1 379 9 is_stmt 1
	.loc 1 379 13 is_stmt 0
	addi	a0,s3,%lo(.LANCHOR22)
	call	frame_alloc
.LVL150:
	.loc 1 379 12
	beq	a0,zero,.L111
	.loc 1 381 13 is_stmt 1
	.loc 1 381 18 is_stmt 0
	call	frame_queue_drop_oldest
.LVL151:
	.loc 1 381 16
	beq	a0,zero,.L252
	.loc 1 381 47
	addi	a0,s3,%lo(.LANCHOR22)
	call	frame_alloc
.LVL152:
	.loc 1 381 44
	bne	a0,zero,.L252
	.loc 1 384 13 is_stmt 1
	.loc 1 384 34 is_stmt 0
	lui	a5,%hi(.LANCHOR19)
	addi	a5,a5,%lo(.LANCHOR19)
	lw	a4,0(a5)
	addi	a4,a4,1
	sw	a4,0(a5)
	.loc 1 385 13 is_stmt 1
	.loc 1 385 40 is_stmt 0
	lw	a4,0(a5)
	andi	a4,a4,63
	.loc 1 385 16
	bne	a4,zero,.L111
	.loc 1 386 17 is_stmt 1
	lw	a1,0(a5)
	lui	a0,%hi(.LC21)
	addi	a0,a0,%lo(.LC21)
	call	printf
.LVL153:
.L111:
	.loc 1 390 9
	.loc 1 390 25 is_stmt 0
	lui	a5,%hi(.LANCHOR22)
	addi	a5,a5,%lo(.LANCHOR22)
	sw	zero,4(a5)
	.loc 1 391 9 is_stmt 1
	.loc 1 391 27 is_stmt 0
	li	a5,1
	sb	a5,0(s6)
.L109:
	.loc 1 347 13
	lw	a5,52(sp)
	extu	t1,a5,1+1-1,1
	.loc 1 352 14
	lw	a5,20(sp)
	sub	a4,s11,a5
	.loc 1 395 5 is_stmt 1
	.loc 1 395 8 is_stmt 0
	beq	s11,a5,.L250
.LBB161:
	.loc 1 396 9 is_stmt 1
	.loc 1 396 52 is_stmt 0
	addi	a5,s3,%lo(.LANCHOR22)
	lw	a5,4(a5)
.LVL154:
	.loc 1 397 9 is_stmt 1
	.loc 1 396 18 is_stmt 0
	li	a0,102400
	addi	a7,s3,%lo(.LANCHOR22)
	sub	a0,a0,a5
.LVL155:
	.loc 1 397 18
	sgtu	a3,a0,a4
	mvnez	a0, a4, a3
.LVL156:
	.loc 1 398 9 is_stmt 1
	.loc 1 398 12 is_stmt 0
	beq	a0,zero,.L123
.LBE161:
	.loc 1 351 20
	lw	a4,20(sp)
.LBB162:
	.loc 1 399 41
	lw	a1,0(a7)
.LBE162:
	.loc 1 351 20
	add	a2,s7,a4
.LBB163:
	.loc 1 399 13 is_stmt 1
	.loc 1 399 41 is_stmt 0
	add	a1,a1,a5
.LVL157:
.LBB145:
.LBB146:
	.file 2 "./components/usb/cherryusb/common/usb_memcpy.h"
	.loc 2 24 5 is_stmt 1
	.loc 2 25 5
	.loc 2 26 5
	.loc 2 27 5
	.loc 2 29 5
	.loc 2 29 62 is_stmt 0
	xor	a5,a1,a2
.LVL158:
	andi	a5,a5,3
	mv	a4,a0
	.loc 2 29 8
	beq	a5,zero,.L113
.LVL159:
.L114:
	.loc 2 58 52
	andi	a6,a2,3
	.loc 2 58 22
	bne	a6,zero,.L124
	mv	a3,a2
	mv	a5,a1
	add	t5,a2,a4
	.loc 2 65 15
	li	t4,15
.LVL160:
.L125:
	.loc 2 65 15 is_stmt 1
	sub	t3,t5,a3
	bgtu	t3,t4,.L126
	andi	a5,a4,-16
.LVL161:
	li	a3,-16
.LVL162:
	srli	t3,a4,4
	add	a2,a2,a5
.LVL163:
	add	a5,a1,a5
	mula	a4,t3,a3
	li	a1,0
	mv	a3,a5
	.loc 2 77 15 is_stmt 0
	li	t4,3
.L127:
.LVL164:
	.loc 2 77 15 is_stmt 1
	sub	t3,a4,a1
.LVL165:
	bgtu	t3,t4,.L128
	srli	t3,a4,2
.LVL166:
	li	a3,-4
.LVL167:
	andi	a1,a4,-4
.LVL168:
	add	a2,a2,a1
	mula	a4,t3,a3
	add	a5,a5,a1
.L129:
.LVL169:
	.loc 2 85 15
	beq	a6,a4,.L117
	.loc 2 86 13
.LVL170:
	.loc 2 86 21 is_stmt 0
	lrbu	a3,a2,a6,0
	.loc 2 86 19
	srb	a3,a5,a6,0
	addi	a6,a6,1
.LVL171:
	j	.L129
.LVL172:
.L116:
	.loc 2 31 13 is_stmt 1
	.loc 2 31 21 is_stmt 0
	lbuia	a5,(a2),1,0
.LVL173:
	.loc 2 32 13
	addi	a4,a4,-1
.LVL174:
	.loc 2 31 19
	sbia	a5,(a1),1,0
.LVL175:
	.loc 2 32 13 is_stmt 1
.L113:
	.loc 2 30 15
	.loc 2 30 43 is_stmt 0
	andi	a6,a1,3
	.loc 2 30 15
	beq	a6,zero,.L172
	.loc 2 30 74
	bne	a4,zero,.L116
.LVL176:
.L117:
	.loc 2 89 5 is_stmt 1
.LBE146:
.LBE145:
	.loc 1 400 13
	.loc 1 400 29 is_stmt 0
	lw	a5,4(a7)
	add	a0,a5,a0
.LVL177:
	sw	a0,4(a7)
.L123:
.LBE163:
	.loc 1 405 5 is_stmt 1
	.loc 1 405 8 is_stmt 0
	bne	t1,zero,.L165
	j	.L252
.LVL178:
.L118:
.LBB164:
.LBB160:
.LBB159:
	.loc 2 39 13 is_stmt 1
	.loc 2 39 21 is_stmt 0
	lw	t4,0(a3)
	.loc 2 39 19
	sw	t4,0(a5)
	.loc 2 40 13 is_stmt 1
.LVL179:
	.loc 2 40 21 is_stmt 0
	lw	t4,4(a3)
	.loc 2 40 19
	sw	t4,4(a5)
	.loc 2 41 13 is_stmt 1
.LVL180:
	.loc 2 41 21 is_stmt 0
	lw	t4,8(a3)
	addi	a3,a3,16
.LVL181:
	.loc 2 41 19
	sw	t4,8(a5)
	.loc 2 42 13 is_stmt 1
.LVL182:
	.loc 2 42 21 is_stmt 0
	lw	t4,-4(a3)
	addi	a5,a5,16
.LVL183:
	.loc 2 42 19
	sw	t4,-4(a5)
	.loc 2 43 13 is_stmt 1
.LVL184:
.L115:
	.loc 2 38 15
	sub	t4,t5,a3
	bgtu	t4,t3,.L118
	andi	a5,a4,-16
.LVL185:
	li	a3,-16
.LVL186:
	srli	t3,a4,4
	mula	a4,t3,a3
	add	a2,a2,a5
.LVL187:
	li	a3,0
	add	a5,a1,a5
	.loc 2 46 15 is_stmt 0
	li	a1,3
.LVL188:
.L119:
	.loc 2 46 15 is_stmt 1
	sub	t3,a4,a3
.LVL189:
	bgtu	t3,a1,.L120
	andi	a3,a4,-4
.LVL190:
	srli	a1,a4,2
	add	a2,a2,a3
	add	a5,a5,a3
	li	a3,-4
	mula	a4,a1,a3
.LVL191:
.L121:
	.loc 2 54 15
	beq	a6,a4,.L117
	.loc 2 55 13
.LVL192:
	.loc 2 55 21 is_stmt 0
	lrbu	a3,a2,a6,0
	.loc 2 55 19
	srb	a3,a5,a6,0
	addi	a6,a6,1
.LVL193:
	j	.L121
.LVL194:
.L172:
	mv	a3,a2
	mv	a5,a1
	add	t5,a2,a4
	.loc 2 38 15
	li	t3,15
	j	.L115
.LVL195:
.L120:
	.loc 2 47 13 is_stmt 1
	.loc 2 47 21 is_stmt 0
	lrw	t3,a2,a3,0
.LVL196:
	.loc 2 47 19
	srw	t3,a5,a3,0
	.loc 2 48 13 is_stmt 1
.LVL197:
	addi	a3,a3,4
.LVL198:
	j	.L119
.LVL199:
.L124:
	.loc 2 59 13
	.loc 2 59 21 is_stmt 0
	lbuia	a5,(a2),1,0
.LVL200:
	.loc 2 60 13
	addi	a4,a4,-1
.LVL201:
	.loc 2 59 19
	sbia	a5,(a1),1,0
.LVL202:
	.loc 2 60 13 is_stmt 1
	.loc 2 58 15
	bne	a4,zero,.L114
	j	.L117
.LVL203:
.L126:
	.loc 2 66 10
	lw	t3,0(a3)
.LVL204:
.LBB147:
.LBB148:
	.loc 2 16 5
	addi	a5,a5,16
.LVL205:
	.loc 2 17 17 is_stmt 0
	srli	t6,t3,8
	.loc 2 16 13
	sb	t3,-16(a5)
	.loc 2 17 5 is_stmt 1
	.loc 2 17 13 is_stmt 0
	sb	t6,-15(a5)
	.loc 2 18 5 is_stmt 1
	.loc 2 18 17 is_stmt 0
	srli	t6,t3,16
	.loc 2 19 17
	srli	t3,t3,24
.LVL206:
	.loc 2 18 13
	sb	t6,-14(a5)
	.loc 2 19 5 is_stmt 1
	.loc 2 19 13 is_stmt 0
	sb	t3,-13(a5)
.LVL207:
.LBE148:
.LBE147:
	.loc 2 67 13 is_stmt 1
	.loc 2 68 10
	lw	t3,4(a3)
.LVL208:
.LBB149:
.LBB150:
	.loc 2 16 5
	.loc 2 17 17 is_stmt 0
	srli	t6,t3,8
	.loc 2 16 13
	sb	t3,-12(a5)
	.loc 2 17 5 is_stmt 1
	.loc 2 17 13 is_stmt 0
	sb	t6,-11(a5)
	.loc 2 18 5 is_stmt 1
	.loc 2 18 17 is_stmt 0
	srli	t6,t3,16
	.loc 2 19 17
	srli	t3,t3,24
.LVL209:
	.loc 2 18 13
	sb	t6,-10(a5)
	.loc 2 19 5 is_stmt 1
	.loc 2 19 13 is_stmt 0
	sb	t3,-9(a5)
.LBE150:
.LBE149:
	.loc 2 69 13 is_stmt 1
	.loc 2 70 10
.LVL210:
	lw	t3,8(a3)
.LVL211:
.LBB151:
.LBB152:
	.loc 2 16 5
	addi	a3,a3,16
.LVL212:
	.loc 2 17 17 is_stmt 0
	srli	t6,t3,8
	.loc 2 16 13
	sb	t3,-8(a5)
	.loc 2 17 5 is_stmt 1
	.loc 2 17 13 is_stmt 0
	sb	t6,-7(a5)
	.loc 2 18 5 is_stmt 1
	.loc 2 18 17 is_stmt 0
	srli	t6,t3,16
	.loc 2 19 17
	srli	t3,t3,24
.LVL213:
	.loc 2 18 13
	sb	t6,-6(a5)
	.loc 2 19 5 is_stmt 1
	.loc 2 19 13 is_stmt 0
	sb	t3,-5(a5)
.LBE152:
.LBE151:
	.loc 2 71 13 is_stmt 1
	.loc 2 72 10
.LVL214:
	lw	t3,-4(a3)
.LVL215:
.LBB153:
.LBB154:
	.loc 2 16 5
	.loc 2 17 17 is_stmt 0
	srli	t6,t3,8
	.loc 2 16 13
	sb	t3,-4(a5)
	.loc 2 17 5 is_stmt 1
	.loc 2 17 13 is_stmt 0
	sb	t6,-3(a5)
	.loc 2 18 5 is_stmt 1
	.loc 2 18 17 is_stmt 0
	srli	t6,t3,16
	.loc 2 19 17
	srli	t3,t3,24
.LVL216:
	.loc 2 18 13
	sb	t6,-2(a5)
	.loc 2 19 5 is_stmt 1
	.loc 2 19 13 is_stmt 0
	sb	t3,-1(a5)
.LBE154:
.LBE153:
	.loc 2 73 13 is_stmt 1
.LVL217:
	.loc 2 74 13
	j	.L125
.LVL218:
.L128:
	.loc 2 78 10
	lrw	t3,a2,a1,0
.LVL219:
.LBB155:
.LBB156:
	.loc 2 16 5
.LBE156:
.LBE155:
	.loc 2 79 16 is_stmt 0
	addi	a3,a3,4
.LVL220:
	addi	a1,a1,4
.LVL221:
.LBB158:
.LBB157:
	.loc 2 17 17
	srli	t5,t3,8
	.loc 2 16 13
	sb	t3,-4(a3)
	.loc 2 17 5 is_stmt 1
	.loc 2 17 13 is_stmt 0
	sb	t5,-3(a3)
	.loc 2 18 5 is_stmt 1
	.loc 2 18 17 is_stmt 0
	srli	t5,t3,16
	.loc 2 19 17
	srli	t3,t3,24
.LVL222:
	.loc 2 18 13
	sb	t5,-2(a3)
	.loc 2 19 5 is_stmt 1
	.loc 2 19 13 is_stmt 0
	sb	t3,-1(a3)
.LVL223:
.LBE157:
.LBE158:
	.loc 2 79 13 is_stmt 1
	.loc 2 80 13
	j	.L127
.LVL224:
.L250:
.LBE159:
.LBE160:
.LBE164:
	.loc 1 405 5
	.loc 1 405 8 is_stmt 0
	beq	t1,zero,.L252
	.loc 1 405 13
	lbu	a5,0(s6)
	beq	a5,zero,.L252
.L165:
	.loc 1 405 48
	addi	s7,s3,%lo(.LANCHOR22)
.LVL225:
	.loc 1 405 34
	lw	a4,4(s7)
	beq	a4,zero,.L252
	.loc 1 406 9 is_stmt 1
	.loc 1 407 24 is_stmt 0
	call	xTaskGetTickCount
.LVL226:
	.loc 1 406 34
	sw	a0,8(s7)
	.loc 1 408 9 is_stmt 1
	addi	a0,s3,%lo(.LANCHOR22)
	call	frame_queue_push
.LVL227:
	.loc 1 409 9
	.loc 1 409 26 is_stmt 0
	lui	a5,%hi(.LANCHOR13)
	addi	a3,a5,%lo(.LANCHOR13)
	lw	a4,0(a3)
	lw	a5,4(a3)
	li	a0,1
	li	a1,0
	add64	a4,a4,a0
	sw	a4,0(a3)
	sw	a5,4(a3)
	.loc 1 410 9 is_stmt 1
	.loc 1 410 27 is_stmt 0
	sb	zero,0(s6)
	j	.L252
.LVL228:
.L248:
.LBE166:
.LBE168:
.LBE170:
.LBE172:
.LBE175:
.LBE178:
.LBE190:
	.loc 1 756 16 is_stmt 1
	.loc 1 756 20 is_stmt 0
	lw	a5,4(sp)
	lbu	a5,0(a5)
	andi	a5,a5,0xff
	.loc 1 756 19
	bne	a5,zero,.L141
	.loc 1 757 25 discriminator 1
	lw	a5,48(sp)
	.loc 1 756 38 discriminator 1
	li	a1,4096
	.loc 1 757 25 discriminator 1
	sub	a0,a0,a5
.LVL229:
	.loc 1 756 38 discriminator 1
	addi	a5,a1,-1597
	bleu	a0,a5,.L141
	.loc 1 758 13 is_stmt 1
	lui	a0,%hi(.LC23)
	addi	a1,a1,-1596
	addi	a0,a0,%lo(.LC23)
	call	printf
.LVL230:
	.loc 1 759 13
	.loc 1 759 30 is_stmt 0
	lw	a4,4(sp)
	li	a5,1
	sb	a5,0(a4)
	j	.L141
.LVL231:
.L143:
.LBB191:
	.loc 1 770 13 is_stmt 1
	.loc 1 772 13 is_stmt 0
	lui	a0,%hi(.LC25)
	.loc 1 770 33
	li	s4,1
.LVL232:
	.loc 1 772 13
	addi	a0,a0,%lo(.LC25)
	.loc 1 770 33
	sb	s4,0(a5)
	.loc 1 772 13 is_stmt 1
.LBB192:
	.loc 1 778 21 is_stmt 0
	lui	s6,%hi(.LC26)
.LVL233:
.LBE192:
	.loc 1 772 13
	call	printf
.LVL234:
	.loc 1 773 13 is_stmt 1
.LBB198:
.LBB193:
	.loc 1 791 25 is_stmt 0
	lui	s5,%hi(.LC27)
.LBE193:
.LBE198:
	.loc 1 773 27
	sb	s4,0(s2)
	.loc 1 776 13 is_stmt 1
.LBB199:
	.loc 1 776 18
.LVL235:
	.loc 1 776 29
	.loc 1 776 22 is_stmt 0
	li	s4,0
.LVL236:
.L149:
	.loc 1 777 17 is_stmt 1
	.loc 1 777 51 is_stmt 0
	lrw	a0,s1,s4,2
.LVL237:
.LBB194:
.LBB195:
	.loc 1 118 5 is_stmt 1
	.loc 1 118 16 is_stmt 0
	beq	a0,zero,.L144
	.loc 1 118 38
	andi	a5,a0,3
	.loc 1 118 16
	beq	a5,zero,.L145
.L144:
.LVL238:
.LBE195:
.LBE194:
	.loc 1 778 21 is_stmt 1
	mv	a2,a0
	mv	a1,s4
	addi	a0,s6,%lo(.LC26)
.LVL239:
.L253:
.LBB196:
	.loc 1 791 25 is_stmt 0
	call	printf
.LVL240:
.L146:
.LBE196:
	.loc 1 776 51 is_stmt 1 discriminator 2
	.loc 1 776 52 is_stmt 0 discriminator 2
	addi	a5,s4,1
.LVL241:
	.loc 1 776 29 is_stmt 1 discriminator 2
	li	s4,1
	.loc 1 776 13 is_stmt 0 discriminator 2
	bgt	s10,a5,.L149
.LBE199:
	.loc 1 796 13 is_stmt 1
.LBB200:
.LBB201:
	.loc 1 104 5
	.loc 1 104 21 is_stmt 0
	lw	a5,64(sp)
.LVL242:
	sw	zero,0(a5)
	.loc 1 105 5 is_stmt 1
	.loc 1 105 21 is_stmt 0
	lw	a5,44(sp)
	sw	zero,0(a5)
.LBE201:
.LBE200:
	.loc 1 798 13 is_stmt 1
	.loc 1 805 13
	.loc 1 805 16 is_stmt 0
	lw	a5,36(sp)
	lbu	a5,0(a5)
	beq	a5,zero,.L150
	.loc 1 806 17 is_stmt 1
	addi	a0,s3,%lo(.LANCHOR22)
	call	frame_free
.LVL243:
	.loc 1 807 17
	.loc 1 807 35 is_stmt 0
	lw	a5,36(sp)
	sb	zero,0(a5)
.L150:
	.loc 1 809 13 is_stmt 1
	.loc 1 809 31 is_stmt 0
	lw	a5,96(sp)
	sb	zero,0(a5)
	.loc 1 810 13 is_stmt 1
	.loc 1 810 30 is_stmt 0
	lw	a5,4(sp)
	sb	zero,0(a5)
	.loc 1 811 13 is_stmt 1
	.loc 1 811 30 is_stmt 0
	lw	a5,56(sp)
	lw	s4,0(a5)
	lw	s5,4(a5)
.LVL244:
	.loc 1 812 13 is_stmt 1
	.loc 1 812 35 is_stmt 0
	lw	a5,40(sp)
	lw	s6,0(a5)
	lw	s7,4(a5)
.LVL245:
	.loc 1 813 13 is_stmt 1
	.loc 1 813 34 is_stmt 0
	call	xTaskGetTickCount
.LVL246:
	.loc 1 817 39
	lw	a5,60(sp)
	.loc 1 816 27
	sb	zero,0(s2)
	.loc 1 813 34
	sw	a0,48(sp)
.LVL247:
	.loc 1 816 13 is_stmt 1
	.loc 1 817 13
	.loc 1 817 39 is_stmt 0
	sb	s0,0(a5)
	.loc 1 818 13 is_stmt 1
.LVL248:
	.loc 1 819 13
.LBB202:
	.loc 1 819 18
	.loc 1 819 29
.LBB203:
	.loc 1 828 31 is_stmt 0
	lui	a5,%hi(uvc_iso_complete_router)
	addi	a5,a5,%lo(uvc_iso_complete_router)
.LBE203:
	.loc 1 819 22
	li	a6,0
.LBB208:
	.loc 1 828 31
	sw	a5,16(sp)
.LVL249:
.L155:
	.loc 1 820 17 is_stmt 1
	.loc 1 820 34 is_stmt 0
	lrw	a5,s1,a6,2
	.loc 1 821 17
	lw	a2,24(sp)
	li	a1,0
	mv	a0,a5
	.loc 1 820 34
	sw	a6,28(sp)
.LVL250:
	.loc 1 821 17 is_stmt 1
	sw	a5,20(sp)
	call	memset
.LVL251:
	.loc 1 822 17
	.loc 1 822 28 is_stmt 0
	lw	a5,20(sp)
	lw	a4,8(sp)
	.loc 1 824 57
	lw	a6,28(sp)
	.loc 1 825 45
	sw	s9,28(a5)
	.loc 1 822 28
	sw	a4,8(a5)
	.loc 1 823 17 is_stmt 1
	.loc 1 823 25 is_stmt 0
	lw	a4,0(sp)
	.loc 1 826 41
	sw	s0,48(a5)
	.loc 1 827 30
	sw	zero,40(a5)
	.loc 1 823 25
	sw	a4,12(a5)
	.loc 1 824 17 is_stmt 1
	.loc 1 824 57 is_stmt 0
	lw	a4,72(sp)
	.loc 1 829 26
	sw	a5,60(a5)
.LBB204:
	.loc 1 831 26
	li	a2,0
.LBE204:
	.loc 1 824 57
	lrw	a3,a4,a6,2
	.loc 1 828 31
	lw	a4,16(sp)
	.loc 1 824 38
	sw	a3,24(a5)
	.loc 1 825 17 is_stmt 1
	.loc 1 826 17
	.loc 1 827 17
	.loc 1 828 17
	.loc 1 828 31 is_stmt 0
	sw	a4,56(a5)
	.loc 1 829 17 is_stmt 1
	.loc 1 831 17
.LBB205:
	.loc 1 831 22
.LVL252:
	addi	a4,a5,64
.LVL253:
.L151:
	.loc 1 831 33 discriminator 1
	.loc 1 831 17 is_stmt 0 discriminator 1
	bgt	s0,a2,.L152
.LBE205:
	.loc 1 838 23
	mv	a0,a5
	sw	a6,20(sp)
.LVL254:
	.loc 1 838 17 is_stmt 1
	.loc 1 838 23 is_stmt 0
	call	usbh_submit_urb
.LVL255:
	.loc 1 839 20
	lw	a6,20(sp)
	.loc 1 838 23
	mv	a2,a0
.LVL256:
	.loc 1 839 17 is_stmt 1
	.loc 1 839 20 is_stmt 0
	bge	a0,zero,.L153
	.loc 1 840 21 is_stmt 1
	lui	a0,%hi(.LC28)
.LVL257:
	mv	a1,a6
	addi	a0,a0,%lo(.LC28)
	call	printf
.LVL258:
	.loc 1 841 21
	li	a0,3
	call	set_cam_state
.LVL259:
	.loc 1 842 21
	.loc 1 842 35 is_stmt 0
	li	a5,1
	sb	a5,0(s2)
	.loc 1 843 21 is_stmt 1
.LVL260:
.L154:
.LBE208:
.LBE202:
	.loc 1 847 13
	.loc 1 847 29 is_stmt 0
	lw	a5,68(sp)
	.loc 1 847 16
	li	a4,3
	.loc 1 847 29
	lbu	a5,0(a5)
	andi	a5,a5,0xff
	.loc 1 847 16
	beq	a5,a4,.L136
	.loc 1 850 13 is_stmt 1
	lui	a0,%hi(.LC29)
	addi	a0,a0,%lo(.LC29)
	call	printf
.LVL261:
.L142:
.LBE191:
	.loc 1 853 9
	.loc 1 853 12 is_stmt 0
	bne	s11,zero,.L156
	.loc 1 854 13 is_stmt 1
	li	a0,2
	call	vTaskDelay
.LVL262:
.L156:
.LBB214:
.LBB211:
.LBB209:
.LBB206:
	.loc 1 831 26 is_stmt 0
	sw	s6,88(sp)
	sw	s7,92(sp)
	sw	s4,80(sp)
	sw	s5,84(sp)
	j	.L90
.LVL263:
.L145:
.LBE206:
.LBE209:
.LBE211:
.LBB212:
	.loc 1 784 17 is_stmt 1
	lw	a2,0(sp)
	lw	a1,8(sp)
	call	stamp_urb_endpoints
.LVL264:
	.loc 1 785 17
	.loc 1 785 30 is_stmt 0
	lrw	a0,s1,s4,2
	.loc 1 788 20
	lw	a5,4(a0)
	.loc 1 785 44
	sw	zero,56(a0)
	.loc 1 786 17 is_stmt 1
	.loc 1 786 39 is_stmt 0
	sw	zero,60(a0)
	.loc 1 788 17 is_stmt 1
	.loc 1 788 20 is_stmt 0
	beq	a5,zero,.L146
.LBB197:
	.loc 1 789 21 is_stmt 1
	.loc 1 789 32 is_stmt 0
	call	usbh_kill_urb
.LVL265:
	mv	a2,a0
.LVL266:
	.loc 1 790 21 is_stmt 1
	.loc 1 790 24 is_stmt 0
	bge	a0,zero,.L146
	.loc 1 791 25 is_stmt 1
	mv	a1,s4
	addi	a0,s5,%lo(.LC27)
.LVL267:
	j	.L253
.LVL268:
.L152:
.LBE197:
.LBE212:
.LBB213:
.LBB210:
.LBB207:
	.loc 1 832 21 discriminator 3
	.loc 1 832 56 is_stmt 0 discriminator 3
	sw	a3,0(a4)
	.loc 1 833 21 is_stmt 1 discriminator 3
	.loc 1 833 63 is_stmt 0 discriminator 3
	sw	s8,4(a4)
	.loc 1 834 21 is_stmt 1 discriminator 3
	.loc 1 834 54 is_stmt 0 discriminator 3
	sw	zero,8(a4)
	.loc 1 835 21 is_stmt 1 discriminator 3
	.loc 1 835 50 is_stmt 0 discriminator 3
	sw	zero,12(a4)
	.loc 1 831 58 is_stmt 1 discriminator 3
	.loc 1 831 59 is_stmt 0 discriminator 3
	addi	a2,a2,1
.LVL269:
	add	a3,a3,s8
	addi	a4,a4,16
	j	.L151
.LVL270:
.L153:
.LBE207:
.LBE210:
	.loc 1 819 51 is_stmt 1 discriminator 2
	.loc 1 819 52 is_stmt 0 discriminator 2
	addi	a5,a6,1
.LVL271:
	.loc 1 819 29 is_stmt 1 discriminator 2
	li	a6,1
	.loc 1 819 13 is_stmt 0 discriminator 2
	bgt	s10,a5,.L155
	j	.L154
.LVL272:
.L81:
.LBE213:
.LBE214:
.LBE223:
.LBB224:
.LBB117:
.LBB114:
	.loc 1 652 13 is_stmt 1
	.loc 1 660 13
	.loc 1 660 206 is_stmt 0
	call	kfree_size
.LVL273:
	mv	a4,a0
	.loc 1 660 13
	mv	a3,s9
	mv	a2,s0
	mv	a1,s3
	addi	a0,s5,%lo(.LC31)
	call	printf
.LVL274:
	.loc 1 663 13 is_stmt 1
	mv	a0,s3
	call	free_iso_urb_resources.constprop.0
.LVL275:
	j	.L79
.LVL276:
.L92:
.LBE114:
.LBE117:
.LBE224:
.LBB225:
	.loc 1 725 13
	.loc 1 725 16 is_stmt 0
	lw	a5,4(s4)
	bne	a5,zero,.L93
	.loc 1 725 41 discriminator 1
	lw	a4,44(s4)
	li	a5,-6
	beq	a4,a5,.L93
	.loc 1 730 13 is_stmt 1
.LVL277:
.LBB215:
.LBB179:
	.loc 1 452 5
	.loc 1 456 5
	.loc 1 456 40 is_stmt 0
	lw	a5,24(s4)
	sw	a5,32(sp)
.LVL278:
	.loc 1 457 5 is_stmt 1
	.loc 1 457 15 is_stmt 0
	lw	a4,32(sp)
	lw	a5,28(s4)
.LVL279:
	add	a5,a4,a5
	sw	a5,76(sp)
.LVL280:
	.loc 1 458 5 is_stmt 1
	.loc 1 458 8 is_stmt 0
	mv	a5,a4
.LVL281:
	beq	a4,zero,.L95
	.loc 1 458 31
	lw	a4,76(sp)
.LVL282:
	bltu	a5,a4,.L96
.L95:
	.loc 1 459 9 is_stmt 1
	lui	a0,%hi(.LC17)
	addi	a0,a0,%lo(.LC17)
	call	printf
.LVL283:
	.loc 1 460 9
.L132:
	.loc 1 501 5
	mv	a1,s0
	mv	a0,s4
	call	reset_iso_packets
.LVL284:
.LBE179:
.LBE215:
	.loc 1 732 13
	.loc 1 732 17 is_stmt 0
	lbu	a5,0(s2)
	andi	a5,a5,0xff
	.loc 1 732 16
	bne	a5,zero,.L93
	.loc 1 732 47 discriminator 1
	lw	a5,68(sp)
	.loc 1 732 32 discriminator 1
	li	a4,2
	.loc 1 732 47 discriminator 1
	lbu	a5,0(a5)
	andi	a5,a5,0xff
	.loc 1 732 32 discriminator 1
	bne	a5,a4,.L93
.LBB216:
	.loc 1 733 17 is_stmt 1
	lw	a1,8(sp)
	lw	a2,0(sp)
	mv	a0,s4
	call	stamp_urb_endpoints
.LVL285:
	.loc 1 734 17
	.loc 1 734 27 is_stmt 0
	mv	a0,s4
	call	usbh_submit_urb
.LVL286:
	mv	a1,a0
.LVL287:
	.loc 1 735 17 is_stmt 1
	.loc 1 735 20 is_stmt 0
	bge	a0,zero,.L93
	.loc 1 736 21 is_stmt 1
	lui	a0,%hi(.LC22)
.LVL288:
	addi	a0,a0,%lo(.LC22)
	call	printf
.LVL289:
	.loc 1 737 21
	li	a0,3
	call	set_cam_state
.LVL290:
	.loc 1 738 21
	.loc 1 738 35 is_stmt 0
	li	a5,1
	sb	a5,0(s2)
	.loc 1 739 21 is_stmt 1
.LBE216:
	.loc 1 718 22 is_stmt 0
	li	s11,1
.LVL291:
.L133:
	.loc 1 743 9 is_stmt 1
	.loc 1 743 25 is_stmt 0
	lw	a5,68(sp)
	.loc 1 743 12
	li	a4,3
	.loc 1 743 25
	lbu	a5,0(a5)
	andi	a5,a5,0xff
	.loc 1 743 12
	beq	a5,a4,.L136
	.loc 1 743 47 discriminator 1
	lbu	a5,0(s2)
	andi	a5,a5,0xff
	bne	a5,zero,.L136
	.loc 1 747 9 is_stmt 1
	.loc 1 747 18 is_stmt 0
	lw	a5,56(sp)
	lw	s4,0(a5)
	lw	s5,4(a5)
.LVL292:
	.loc 1 748 9 is_stmt 1
	.loc 1 748 18 is_stmt 0
	lw	a5,40(sp)
	lw	s6,0(a5)
	lw	s7,4(a5)
.LVL293:
	.loc 1 749 9 is_stmt 1
	.loc 1 749 26 is_stmt 0
	call	xTaskGetTickCount
.LVL294:
	.loc 1 751 9 is_stmt 1
	.loc 1 751 12 is_stmt 0
	lw	a5,80(sp)
	bne	a5,s4,.L138
	lw	a5,84(sp)
	bne	a5,s5,.L138
	.loc 1 751 44 discriminator 1
	lw	a5,88(sp)
	bne	a5,s6,.L138
	lw	a5,92(sp)
	beq	a5,s7,.L248
.L138:
	.loc 1 752 13 is_stmt 1
.LVL295:
	.loc 1 753 13
	.loc 1 754 13
	.loc 1 755 13
	.loc 1 755 30 is_stmt 0
	lw	a5,4(sp)
	.loc 1 754 32
	sw	a0,48(sp)
	.loc 1 755 30
	sb	zero,0(a5)
.LVL296:
.L141:
	.loc 1 762 9 is_stmt 1
	.loc 1 762 13 is_stmt 0
	lw	a5,4(sp)
	lbu	a5,0(a5)
	andi	a5,a5,0xff
	.loc 1 762 12
	beq	a5,zero,.L142
.LBB217:
	.loc 1 765 13 is_stmt 1
	.loc 1 765 17 is_stmt 0
	lui	a5,%hi(.LANCHOR23)
	addi	a5,a5,%lo(.LANCHOR23)
	lbu	a4,0(a5)
	andi	a4,a4,0xff
	.loc 1 765 16
	beq	a4,zero,.L143
	.loc 1 766 17 is_stmt 1
	lui	a0,%hi(.LC24)
	addi	a0,a0,%lo(.LC24)
	call	printf
.LVL297:
	.loc 1 767 17
	li	a0,3
	call	set_cam_state
.LVL298:
	.loc 1 768 17
.L136:
.LBE217:
.LBE225:
	.loc 1 859 5
	.loc 1 859 19 is_stmt 0
	li	a5,1
	sb	a5,0(s2)
	.loc 1 861 5 is_stmt 1
.LBB226:
	.loc 1 861 10
.LVL299:
	.loc 1 861 21
.L161:
	.loc 1 862 9
	.loc 1 862 43 is_stmt 0
	lw	a5,12(sp)
	lrw	a0,s1,a5,2
.LVL300:
.LBB227:
.LBB228:
	.loc 1 118 5 is_stmt 1
	.loc 1 118 16 is_stmt 0
	beq	a0,zero,.L159
	.loc 1 118 38
	andi	a5,a0,3
	.loc 1 118 16
	bne	a5,zero,.L159
.LVL301:
.LBE228:
.LBE227:
	.loc 1 865 9 is_stmt 1
	lw	a2,0(sp)
	lw	a1,8(sp)
	call	stamp_urb_endpoints
.LVL302:
	.loc 1 866 9
	.loc 1 866 22 is_stmt 0
	lw	a5,12(sp)
	lrw	a0,s1,a5,2
	.loc 1 868 12
	lw	a5,4(a0)
	.loc 1 866 36
	sw	zero,56(a0)
	.loc 1 867 9 is_stmt 1
	.loc 1 867 31 is_stmt 0
	sw	zero,60(a0)
	.loc 1 868 9 is_stmt 1
	.loc 1 868 12 is_stmt 0
	beq	a5,zero,.L159
	.loc 1 869 13 is_stmt 1
	.loc 1 869 19 is_stmt 0
	call	usbh_kill_urb
.LVL303:
.L159:
	.loc 1 861 43 is_stmt 1 discriminator 2
	.loc 1 861 44 is_stmt 0 discriminator 2
	lw	a5,12(sp)
	li	a4,1
	sw	a4,12(sp)
.LVL304:
	addi	a5,a5,1
.LVL305:
	.loc 1 861 21 is_stmt 1 discriminator 2
	.loc 1 861 5 is_stmt 0 discriminator 2
	bgt	s10,a5,.L161
.LBE226:
	.loc 1 874 5 is_stmt 1
	.loc 1 874 8 is_stmt 0
	lw	a5,36(sp)
.LVL306:
	lbu	a5,0(a5)
	beq	a5,zero,.L162
	.loc 1 875 9 is_stmt 1
	lui	a0,%hi(.LANCHOR22)
	addi	a0,a0,%lo(.LANCHOR22)
	call	frame_free
.LVL307:
	.loc 1 876 9
	.loc 1 876 27 is_stmt 0
	lw	a5,36(sp)
	sb	zero,0(a5)
.L162:
	.loc 1 880 5 is_stmt 1
	call	frame_queue_drain
.LVL308:
	.loc 1 883 5
	mv	a0,s10
	call	free_iso_urb_resources.constprop.0
.LVL309:
	.loc 1 884 5
	call	stream_urb_slots_reset
.LVL310:
	.loc 1 885 5
	.loc 1 885 31 is_stmt 0
	lw	a5,60(sp)
	.loc 1 888 8
	li	a4,2
	.loc 1 885 31
	sb	zero,0(a5)
	.loc 1 886 5 is_stmt 1
.LBB229:
.LBB230:
	.loc 1 104 5
	.loc 1 104 21 is_stmt 0
	lw	a5,64(sp)
	sw	zero,0(a5)
	.loc 1 105 5 is_stmt 1
	.loc 1 105 21 is_stmt 0
	lw	a5,44(sp)
	sw	zero,0(a5)
.LBE230:
.LBE229:
	.loc 1 888 5 is_stmt 1
	.loc 1 888 21 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	lbu	a5,%lo(.LANCHOR0)(a5)
	andi	a5,a5,0xff
	.loc 1 888 8
	bne	a5,a4,.L163
	.loc 1 889 9 is_stmt 1
	li	a0,1
	call	set_cam_state
.LVL311:
.L163:
	.loc 1 892 5
	lw	a5,56(sp)
	lui	a0,%hi(.LC30)
	addi	a0,a0,%lo(.LC30)
	lw	a2,0(a5)
	lw	a3,4(a5)
	call	printf
.LVL312:
	.loc 1 894 5
.L255:
	.loc 1 671 9
	.loc 1 896 1 is_stmt 0
	lw	s0,168(sp)
	.cfi_restore 8
	lw	ra,172(sp)
	.cfi_restore 1
	lw	s1,164(sp)
	.cfi_restore 9
	lw	s2,160(sp)
	.cfi_restore 18
	lw	s3,156(sp)
	.cfi_restore 19
	lw	s4,152(sp)
	.cfi_restore 20
	lw	s5,148(sp)
	.cfi_restore 21
	lw	s6,144(sp)
	.cfi_restore 22
	lw	s7,140(sp)
	.cfi_restore 23
	lw	s8,136(sp)
	.cfi_restore 24
	lw	s9,132(sp)
	.cfi_restore 25
	lw	s10,128(sp)
	.cfi_restore 26
	lw	s11,124(sp)
	.cfi_restore 27
	.loc 1 671 23
	lui	a5,%hi(.LANCHOR14)
	sw	zero,%lo(.LANCHOR14)(a5)
	.loc 1 672 9 is_stmt 1
	.loc 1 896 1 is_stmt 0
	.loc 1 672 9
	li	a0,0
	.loc 1 896 1
	addi	sp,sp,176
	.cfi_def_cfa_offset 0
	.loc 1 672 9
	tail	vTaskDelete
.LVL313:
	.cfi_endproc
.LFE122:
	.size	streaming_task, .-streaming_task
	.section	.rodata.usbh_video_run.str1.4,"aMS",@progbits,1
	.align	2
.LC33:
	.string	"\033[0m[I][UVC] [UVC] Camera attached  VID=0x%04X  PID=0x%04X  ctrl_intf=%u  data_intf=%u\r\n"
	.align	2
.LC34:
	.string	"\033[0m[I][UVC] [UVC] Selected MJPEG %ux%u  altsetting=%u (MPS=%u, cap=%u)\r\n"
	.align	2
.LC35:
	.string	"\033[0m[I][UVC] [UVC] No discrete intervals \342\200\224 requesting %u fps\r\n"
	.align	2
.LC36:
	.string	"\033[0m[I][UVC] [UVC] Selected interval=%u (100ns) \342\206\222 ~%u fps from %u available\r\n"
	.align	2
.LC37:
	.string	"\033[0;31m[E][UVC] [UVC] usbh_video_open failed: %d\r\n"
	.align	2
.LC38:
	.string	"\033[0m[I][UVC] [UVC] Negotiated interval=%u (100ns) \342\206\222 ~%u fps\r\n"
	.align	2
.LC39:
	.string	"\033[0m[I][UVC] [UVC] Camera ready \342\200\224 MJPEG %ux%u @ %ufps  MPS=%u  EP=0x%02X\r\n"
	.align	2
.LC40:
	.string	"\033[0;31m[E][UVC] [UVC] No MJPEG format found \342\200\224 camera unusable\r\n"
	.section	.text.usbh_video_run,"ax",@progbits
	.align	1
	.globl	usbh_video_run
	.type	usbh_video_run, @function
usbh_video_run:
.LFB125:
	.loc 1 932 1 is_stmt 1
	.cfi_startproc
.LVL314:
	.loc 1 933 5
	.loc 1 933 31 is_stmt 0
	lw	a5,0(a0)
	.loc 1 932 1
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	sw	s6,16(sp)
	sw	s7,12(sp)
	sw	s8,8(sp)
	sw	s9,4(sp)
	sw	s10,0(sp)
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
	.loc 1 933 14
	lw	a2,16(a5)
	lbu	a4,15(a5)
	.loc 1 940 5
	lbu	a3,12(a0)
	.loc 1 933 14
	andi	s1,a2,255
	slli	s1,s1,8
	or	s1,s1,a4
.LVL315:
	.loc 1 934 5 is_stmt 1
	.loc 1 940 5 is_stmt 0
	lbu	a4,13(a0)
	.loc 1 932 1
	mv	s0,a0
	.loc 1 934 14
	extu	s4,a2,8+16-1,8
.LVL316:
	.loc 1 938 5 is_stmt 1
	.loc 1 940 5 is_stmt 0
	lui	a0,%hi(.LC33)
.LVL317:
	.loc 1 938 25
	lui	a5,%hi(.LANCHOR23)
	.loc 1 940 5
	mv	a2,s4
	mv	a1,s1
	addi	a0,a0,%lo(.LC33)
	.loc 1 938 25
	sb	zero,%lo(.LANCHOR23)(a5)
	.loc 1 940 5 is_stmt 1
	call	printf
.LVL318:
	.loc 1 944 5
	mv	a0,s0
	call	usbh_video_list_info
.LVL319:
	.loc 1 947 5
	.loc 1 948 5
	.loc 1 950 5
.LBB252:
.LBB253:
	.loc 1 162 5
	.loc 1 163 5
	.loc 1 164 5
	.loc 1 165 5
	.loc 1 167 5
.LBB254:
	.loc 1 167 10
	.loc 1 167 33 is_stmt 0
	lbu	t2,93(s0)
.LBB255:
.LBB256:
.LBB257:
	.loc 1 183 23
	li	t4,4096
.LBE257:
	.loc 1 177 23
	li	t5,8192
	mv	a6,s0
.LBE256:
.LBE255:
	.loc 1 167 18
	li	a2,0
.LBE254:
	.loc 1 165 26
	li	s3,0
	.loc 1 165 14
	li	s2,0
	.loc 1 164 13
	li	a5,0
	.loc 1 163 13
	li	a3,0
	.loc 1 162 9
	li	t3,-1
.LBB268:
	.loc 1 168 12
	li	ra,1
.LBB264:
.LBB260:
	.loc 1 176 16
	li	s5,640
	.loc 1 178 58
	li	s6,720
.LBB258:
	.loc 1 183 38
	li	s7,-1000
	.loc 1 183 23
	addi	t4,t4,904
.LBE258:
	.loc 1 178 23
	li	s8,960
	.loc 1 178 33
	li	t6,239
	.loc 1 176 26
	li	s9,480
	.loc 1 177 23
	addi	t5,t5,1808
.LVL320:
.L258:
.LBE260:
.LBE264:
	.loc 1 167 26 is_stmt 1
	.loc 1 167 5 is_stmt 0
	bne	a2,t2,.L266
.LBE268:
	.loc 1 199 5 is_stmt 1
	.loc 1 199 8 is_stmt 0
	li	a4,-1
	beq	t3,a4,.L267
	.loc 1 204 5 is_stmt 1
.LBE253:
.LBE252:
.LBB274:
.LBB275:
.LBB276:
	.loc 1 281 31 is_stmt 0
	lbu	a0,92(s0)
.LBE276:
.LBE275:
.LBE274:
.LBB283:
.LBB271:
	.loc 1 204 31
	addi	a3,a3,1
.LVL321:
	.loc 1 205 31
	addi	a5,a5,1
.LVL322:
	.loc 1 204 31
	andi	s7,a3,0xff
.LVL323:
	.loc 1 205 5 is_stmt 1
	.loc 1 205 31 is_stmt 0
	andi	s5,a5,0xff
.LVL324:
	.loc 1 206 5 is_stmt 1
	.loc 1 207 5
	.loc 1 208 5
.LBE271:
.LBE283:
.LBB284:
.LBB281:
.LBB279:
	.loc 1 281 31 is_stmt 0
	li	a3,1
	li	a7,0
	li	a6,1
	li	a2,0
	li	s6,1
.LBB277:
	.loc 1 285 27
	li	t1,37
	li	t3,620
	.loc 1 295 12
	li	t4,1984
.L268:
	andi	a1,a3,0xff
.LVL325:
.LBE277:
	.loc 1 281 25 is_stmt 1
	.loc 1 281 5 is_stmt 0
	bltu	a1,a0,.L271
.LBE279:
	.loc 1 301 5 is_stmt 1
	.loc 1 301 8 is_stmt 0
	mveqz	s6, a6, a2
.LVL326:
	.loc 1 305 5 is_stmt 1
.LBE281:
.LBE284:
	.loc 1 958 5
.LBB285:
.LBB286:
	.loc 1 310 5
	.loc 1 311 16 is_stmt 0
	li	a4,0
	.loc 1 310 13
	bleu	a0,s6,.L285
	.loc 1 313 5 is_stmt 1
.LVL327:
	.loc 1 315 5
	.loc 1 314 35 is_stmt 0
	lbu	a5,13(s0)
.LVL328:
	.loc 1 315 23
	li	a3,620
	lw	a4,0(s0)
	mul	a5,a5,a3
.LVL329:
	li	a3,37
	mula	a5,s6,a3
	add	a5,a4,a5
	lbu	a4,77(a5)
	lbu	a5,78(a5)
	slli	a5,a5,8
	or	a4,a5,a4
.LVL330:
	.loc 1 318 5 is_stmt 1
	.loc 1 315 13 is_stmt 0
	extu	a5,a5,11+2-1,11
	.loc 1 318 12
	addi	a5,a5,1
	andi	a5,a5,0xff
	andi	a4,a4,2047
.LVL331:
	mul	a4,a4,a5
	extu	a4,a4,15,0
.LVL332:
.L285:
.LBE286:
.LBE285:
	.loc 1 960 5 is_stmt 1
	lui	a0,%hi(.LC34)
	li	a5,1984
	mv	a3,s6
	mv	a2,s3
	mv	a1,s2
	addi	a0,a0,%lo(.LC34)
	call	printf
.LVL333:
	.loc 1 965 5
	.loc 1 966 41 is_stmt 0
	addi	s7,s7,-1
.LVL334:
.LBB287:
.LBB288:
	.loc 1 226 13
	li	a4,532
	mul	a4,s7,a4
	li	a3,44
.LBE288:
.LBE287:
	.loc 1 966 62
	addi	a5,s5,-1
.LVL335:
	.loc 1 967 5 is_stmt 1
.LBB299:
.LBB297:
	.loc 1 226 5
	.loc 1 226 13 is_stmt 0
	mula	a4,a5,a3
	add	a4,s0,a4
	lbu	a3,104(a4)
.LVL336:
	.loc 1 228 5 is_stmt 1
	.loc 1 228 8 is_stmt 0
	beq	a3,zero,.L273
	.loc 1 233 5 is_stmt 1
	li	a2,8
	mv	a4,a3
	bleu	a3,a2,.L274
	li	a4,8
.L274:
	andi	a1,a4,0xff
.LVL337:
	.loc 1 238 5
	.loc 1 239 5
	.loc 1 240 5
	.loc 1 241 5
	.loc 1 243 5
.LBB289:
	.loc 1 243 10
	.loc 1 243 25
	li	a4,44
	mul	a5,a5,a4
.LVL338:
	li	a4,532
.LBB290:
	.loc 1 247 12 is_stmt 0
	li	a2,999424
.LBE290:
.LBE289:
	.loc 1 228 8
	li	a0,0
	.loc 1 240 14
	li	a6,0
	.loc 1 238 14
	li	s5,0
.LVL339:
	.loc 1 241 14
	li	t1,-1
	.loc 1 239 14
	li	a7,-1
.LBB295:
.LBB293:
	.loc 1 247 12
	addi	a2,a2,576
	mula	a5,s7,a4
	addi	a5,a5,108
	add	a5,s0,a5
.LVL340:
.L277:
	.loc 1 244 9 is_stmt 1
	.loc 1 244 18 is_stmt 0
	lrw	a4,a5,a0,2
.LVL341:
	.loc 1 245 9 is_stmt 1
	.loc 1 245 12 is_stmt 0
	beq	a4,zero,.L275
	.loc 1 247 9 is_stmt 1
	.loc 1 247 12 is_stmt 0
	bgtu	a4,a2,.L276
.LBB291:
	.loc 1 249 13 is_stmt 1
	.loc 1 249 22 is_stmt 0
	sub	t3,a2,a4
.LVL342:
	.loc 1 250 13 is_stmt 1
	.loc 1 250 16 is_stmt 0
	bgeu	t3,a7,.L275
	mv	a7,t3
.LVL343:
	mv	s5,a4
.LVL344:
.L275:
.LBE291:
.LBE293:
	.loc 1 243 32 is_stmt 1
	.loc 1 243 25
	.loc 1 243 5 is_stmt 0
	addi	a0,a0,1
.LVL345:
	andi	a4,a0,0xff
.LVL346:
	bgtu	a1,a4,.L277
.LBE295:
	.loc 1 265 5 is_stmt 1
	.loc 1 265 8 is_stmt 0
	bne	s5,zero,.L278
	.loc 1 266 5 is_stmt 1
.LVL347:
.LBE297:
.LBE299:
	.loc 1 968 5
	mv	s5,a6
	.loc 1 968 8 is_stmt 0
	bne	a6,zero,.L278
.LVL348:
.L273:
	.loc 1 970 9 is_stmt 1
	.loc 1 971 9
	lui	a0,%hi(.LC35)
	li	a1,10
	addi	a0,a0,%lo(.LC35)
	.loc 1 970 25 is_stmt 0
	li	s5,999424
	.loc 1 971 9
	call	printf
.LVL349:
	.loc 1 970 25
	addi	s5,s5,576
.LVL350:
.L279:
	.loc 1 979 5 is_stmt 1
	.loc 1 980 5
	.loc 1 981 5
	.loc 1 979 41 is_stmt 0
	li	a5,1
	sb	a5,15(s0)
	.loc 1 982 40
	extu	a5,s5,8+8-1,8
	sb	s5,19(s0)
	sb	a5,20(s0)
	extu	a5,s5,16+8-1,16
	srli	s5,s5,24
.LVL351:
	.loc 1 985 15
	li	a1,1
	.loc 1 981 42
	sb	zero,16(s0)
	.loc 1 982 5 is_stmt 1
	.loc 1 982 40 is_stmt 0
	sb	a5,21(s0)
	sb	s5,22(s0)
	.loc 1 985 5 is_stmt 1
	.loc 1 985 15 is_stmt 0
	mv	a4,s6
	mv	a3,s3
	mv	a2,s2
	mv	a0,s0
	call	usbh_video_open
.LVL352:
	mv	a1,a0
.LVL353:
	.loc 1 986 5 is_stmt 1
	.loc 1 986 8 is_stmt 0
	bge	a0,zero,.L280
	.loc 1 987 9 is_stmt 1
	lui	a0,%hi(.LC37)
.LVL354:
	addi	a0,a0,%lo(.LC37)
	call	printf
.LVL355:
	.loc 1 988 9
.L306:
	.loc 1 952 9
	.loc 1 1017 1 is_stmt 0
	lw	s0,40(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL356:
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s1,36(sp)
	.cfi_restore 9
.LVL357:
	lw	s2,32(sp)
	.cfi_restore 18
	lw	s3,28(sp)
	.cfi_restore 19
	lw	s4,24(sp)
	.cfi_restore 20
.LVL358:
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
	lw	s10,0(sp)
	.cfi_restore 26
	.loc 1 952 9
	li	a0,3
	.loc 1 1017 1
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	.loc 1 952 9
	tail	set_cam_state
.LVL359:
.L266:
	.cfi_restore_state
.LBB300:
.LBB272:
.LBB269:
	.loc 1 168 9 is_stmt 1
	.loc 1 168 12 is_stmt 0
	lbu	a4,624(a6)
	bne	a4,ra,.L259
.LBB265:
	.loc 1 171 51
	lbu	t0,625(a6)
	mv	t1,a6
	.loc 1 171 22
	li	a1,0
.L260:
.LVL360:
	.loc 1 171 31 is_stmt 1
	.loc 1 171 9 is_stmt 0
	bne	a1,t0,.L265
.LVL361:
.L259:
.LBE265:
	.loc 1 167 51 is_stmt 1
	.loc 1 167 53 is_stmt 0
	addi	a2,a2,1
.LVL362:
	andi	a2,a2,0xff
.LVL363:
	addi	a6,a6,532
	j	.L258
.LVL364:
.L265:
.LBB266:
.LBB261:
	.loc 1 172 13 is_stmt 1
	.loc 1 172 22 is_stmt 0
	lhu	a7,96(t1)
.LVL365:
	.loc 1 173 13 is_stmt 1
	.loc 1 173 22 is_stmt 0
	lhu	a0,98(t1)
.LVL366:
	.loc 1 175 13 is_stmt 1
	.loc 1 176 13
	.loc 1 176 16 is_stmt 0
	bne	a7,s5,.L261
	.loc 1 177 23
	mv	a4,t5
	.loc 1 176 26
	bne	a0,s9,.L304
.L262:
.LVL367:
	.loc 1 189 13 is_stmt 1
	.loc 1 189 16 is_stmt 0
	bge	t3,a4,.L264
	.loc 1 173 22
	mv	s3,a0
.LVL368:
	.loc 1 172 22
	mv	s2,a7
.LVL369:
	.loc 1 189 16
	mv	a5,a1
.LVL370:
	mv	a3,a2
.LVL371:
	mv	t3,a4
.LVL372:
.L264:
.LBE261:
	.loc 1 171 67 is_stmt 1
	.loc 1 171 70 is_stmt 0
	addi	a1,a1,1
.LVL373:
	andi	a1,a1,0xff
.LVL374:
	addi	t1,t1,44
	j	.L260
.LVL375:
.L261:
.LBB262:
	.loc 1 178 20 is_stmt 1
	.loc 1 178 23 is_stmt 0
	addi	s10,a7,-320
	extu	s10,s10,15,0
	.loc 1 186 23
	li	a4,0
	.loc 1 178 23
	bgtu	s10,s8,.L262
	.loc 1 178 33
	bleu	a0,t6,.L262
.L287:
	.loc 1 186 23
	li	a4,0
	.loc 1 178 58
	bgtu	a0,s6,.L262
.LBB259:
	.loc 1 180 17 is_stmt 1
	.loc 1 181 21 is_stmt 0
	addi	a4,a0,-480
	.loc 1 182 41
	mul	a4,a4,a4
	.loc 1 180 21
	addi	s10,a7,-640
	.loc 1 181 17 is_stmt 1
	.loc 1 182 17
	.loc 1 183 17
	.loc 1 182 21 is_stmt 0
	mula	a4,s10,s10
	.loc 1 183 38
	div	a4,a4,s7
	.loc 1 183 23
	add	a4,a4,t4
.LVL376:
	.loc 1 184 17 is_stmt 1
	j	.L262
.LVL377:
.L271:
.LBE259:
.LBE262:
.LBE266:
.LBE269:
.LBE272:
.LBE300:
.LBB301:
.LBB282:
.LBB280:
.LBB278:
	.loc 1 282 9
	.loc 1 285 9
	.loc 1 283 39 is_stmt 0
	lbu	a5,13(s0)
.LVL378:
	.loc 1 285 27
	lw	a4,0(s0)
	mul	a5,a5,t3
.LVL379:
	mula	a5,a3,t1
	add	a5,a4,a5
	lbu	a4,77(a5)
	lbu	a5,78(a5)
	slli	a5,a5,8
	or	a4,a5,a4
.LVL380:
	.loc 1 288 9 is_stmt 1
	.loc 1 285 17 is_stmt 0
	extu	a5,a5,11+2-1,11
	.loc 1 288 18
	addi	a5,a5,1
	andi	a5,a5,0xff
	andi	a4,a4,2047
.LVL381:
	mul	a4,a4,a5
	extu	a4,a4,15,0
.LVL382:
	.loc 1 290 9 is_stmt 1
	.loc 1 290 12 is_stmt 0
	bleu	a4,a7,.L269
	mv	a7,a4
.LVL383:
	mv	a6,a1
.LVL384:
.L269:
	.loc 1 295 9 is_stmt 1
	.loc 1 295 12 is_stmt 0
	bgtu	a4,t4,.L270
	.loc 1 295 26
	bleu	a4,a2,.L270
	mv	a2,a4
.LVL385:
	mv	s6,a1
.LVL386:
.L270:
.LBE278:
	.loc 1 281 58 is_stmt 1
	addi	a3,a3,1
.LVL387:
	j	.L268
.LVL388:
.L276:
.LBE280:
.LBE282:
.LBE301:
.LBB302:
.LBB298:
.LBB296:
.LBB294:
.LBB292:
	.loc 1 256 13
	.loc 1 256 22 is_stmt 0
	sub	t3,a4,a2
.LVL389:
	.loc 1 257 13 is_stmt 1
	.loc 1 257 16 is_stmt 0
	bgeu	t3,t1,.L275
	mv	t1,t3
.LVL390:
	mv	a6,a4
.LVL391:
	j	.L275
.LVL392:
.L278:
.LBE292:
.LBE294:
.LBE296:
.LBE298:
.LBE302:
.LBB303:
	.loc 1 974 9 is_stmt 1 discriminator 1
	.loc 1 975 9 discriminator 1
	li	a2,9998336
	addi	a2,a2,1664
	divu	a2,a2,s5
	lui	a0,%hi(.LC36)
	mv	a1,s5
	addi	a0,a0,%lo(.LC36)
	call	printf
.LVL393:
	j	.L279
.LVL394:
.L280:
.LBE303:
	.loc 1 993 5
	.loc 1 993 14 is_stmt 0
	lw	a1,20(s0)
	lbu	a5,19(s0)
	.loc 1 995 66
	li	s5,0
	.loc 1 993 14
	slli	a1,a1,8
	or	a1,a1,a5
.LVL395:
	.loc 1 994 5 is_stmt 1
	.loc 1 995 66 is_stmt 0
	beq	a1,zero,.L281
	.loc 1 995 66 discriminator 1
	li	s5,9998336
	addi	s5,s5,1664
	divu	s5,s5,a1
.L281:
.LVL396:
	.loc 1 996 5 is_stmt 1
	lui	a0,%hi(.LC38)
.LVL397:
	mv	a2,s5
	addi	a0,a0,%lo(.LC38)
	call	printf
.LVL398:
	.loc 1 1000 5
	.loc 1 1000 20 is_stmt 0
	lui	a5,%hi(.LANCHOR12)
	addi	a4,a5,%lo(.LANCHOR12)
	sh	s1,0(a4)
	.loc 1 1001 5 is_stmt 1
	.loc 1 1001 20 is_stmt 0
	sh	s4,2(a4)
	.loc 1 1002 5 is_stmt 1
	.loc 1 1002 22 is_stmt 0
	sh	s2,4(a4)
	.loc 1 1003 5 is_stmt 1
	.loc 1 1003 23 is_stmt 0
	sh	s3,6(a4)
	.loc 1 1004 5 is_stmt 1
	.loc 1 1004 20 is_stmt 0
	li	a3,255
	addi	s1,a5,%lo(.LANCHOR12)
.LVL399:
	bleu	s5,a3,.L282
	li	s5,255
.LVL400:
.L282:
	.loc 1 1005 23
	li	a5,1
	sb	a5,8(s1)
	.loc 1 1007 26
	lhu	a5,84(s0)
	.loc 1 1009 5
	li	a0,1
	.loc 1 1004 20
	sb	s5,10(a4)
	.loc 1 1005 5 is_stmt 1
	.loc 1 1006 5
	.loc 1 1007 26 is_stmt 0
	sh	a5,12(s1)
	.loc 1 1008 19
	lui	a5,%hi(.LANCHOR15)
	sw	s0,%lo(.LANCHOR15)(a5)
	.loc 1 1006 27
	sb	s6,9(s1)
	.loc 1 1007 5 is_stmt 1
	.loc 1 1008 5
	.loc 1 1009 5
	call	set_cam_state
.LVL401:
	.loc 1 1011 5
	.loc 1 1011 173 is_stmt 0
	lw	a2,4(s0)
	.loc 1 1011 5
	lbu	a3,10(s1)
	lhu	a4,84(s0)
	li	a5,0
	beq	a2,zero,.L283
	.loc 1 1011 5 discriminator 1
	lbu	a5,2(a2)
.L283:
	.loc 1 1011 5 discriminator 4
	lui	a0,%hi(.LC39)
	mv	a2,s3
	mv	a1,s2
	addi	a0,a0,%lo(.LC39)
	call	printf
.LVL402:
	.loc 1 1016 5 is_stmt 1 discriminator 4
.LBB304:
.LBB305:
	.loc 1 904 5 discriminator 4
	.loc 1 904 8 is_stmt 0 discriminator 4
	lui	a5,%hi(.LANCHOR14)
	lw	a5,%lo(.LANCHOR14)(a5)
	bne	a5,zero,.L257
.LBE305:
.LBE304:
	.loc 1 1017 1
	lw	s0,40(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL403:
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
.LVL404:
	lw	s3,28(sp)
	.cfi_restore 19
.LVL405:
	lw	s4,24(sp)
	.cfi_restore 20
.LVL406:
	lw	s5,20(sp)
	.cfi_restore 21
	lw	s6,16(sp)
	.cfi_restore 22
.LVL407:
	lw	s7,12(sp)
	.cfi_restore 23
.LVL408:
	lw	s8,8(sp)
	.cfi_restore 24
	lw	s9,4(sp)
	.cfi_restore 25
	lw	s10,0(sp)
	.cfi_restore 26
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
.LBB307:
.LBB306:
	tail	start_streaming.part.0
.LVL409:
.L267:
	.cfi_restore_state
.LBE306:
.LBE307:
	.loc 1 951 9 is_stmt 1
	lui	a0,%hi(.LC40)
	addi	a0,a0,%lo(.LC40)
	call	printf
.LVL410:
	j	.L306
.LVL411:
.L304:
.LBB308:
.LBB273:
.LBB270:
.LBB267:
.LBB263:
	.loc 1 186 23 is_stmt 0
	li	a4,0
	.loc 1 178 33
	bleu	a0,t6,.L262
	j	.L287
.LVL412:
.L257:
.LBE263:
.LBE267:
.LBE270:
.LBE273:
.LBE308:
	.loc 1 1017 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
.LVL413:
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
.LVL414:
	lw	s3,28(sp)
	.cfi_restore 19
.LVL415:
	lw	s4,24(sp)
	.cfi_restore 20
.LVL416:
	lw	s5,20(sp)
	.cfi_restore 21
	lw	s6,16(sp)
	.cfi_restore 22
.LVL417:
	lw	s7,12(sp)
	.cfi_restore 23
.LVL418:
	lw	s8,8(sp)
	.cfi_restore 24
	lw	s9,4(sp)
	.cfi_restore 25
	lw	s10,0(sp)
	.cfi_restore 26
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE125:
	.size	usbh_video_run, .-usbh_video_run
	.section	.rodata.usbh_video_stop.str1.4,"aMS",@progbits,1
	.align	2
.LC41:
	.string	"\033[0m[I][UVC] [UVC] Camera detached  VID=0x%04X  PID=0x%04X\r\n"
	.section	.text.usbh_video_stop,"ax",@progbits
	.align	1
	.globl	usbh_video_stop
	.type	usbh_video_stop, @function
usbh_video_stop:
.LFB126:
	.loc 1 1020 1 is_stmt 1
	.cfi_startproc
.LVL419:
	.loc 1 1021 5
	.loc 1 1021 116 is_stmt 0
	lui	a5,%hi(.LANCHOR12)
	addi	a5,a5,%lo(.LANCHOR12)
	.loc 1 1021 5
	lhu	a2,2(a5)
	lhu	a1,0(a5)
	lui	a0,%hi(.LC41)
.LVL420:
	.loc 1 1020 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 1021 5
	addi	a0,a0,%lo(.LC41)
	.loc 1 1020 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 1021 5
	call	printf
.LVL421:
	.loc 1 1025 5 is_stmt 1
	call	stop_streaming
.LVL422:
	.loc 1 1027 5
	li	a0,0
	call	set_cam_state
.LVL423:
	.loc 1 1028 5
	.loc 1 1029 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 1028 19
	lui	a5,%hi(.LANCHOR15)
	sw	zero,%lo(.LANCHOR15)(a5)
	.loc 1 1029 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE126:
	.size	usbh_video_stop, .-usbh_video_stop
	.section	.rodata.uvc_capture_init.str1.4,"aMS",@progbits,1
	.align	2
.LC42:
	.string	"usb_v2"
	.align	2
.LC43:
	.string	"\033[0;31m[E][UVC] [UVC] USB device not found in device table\r\n"
	.align	2
.LC44:
	.string	"\033[0m[I][UVC] [UVC] Initialising USB host (reg_base=0x%08lx)\r\n"
	.align	2
.LC45:
	.string	"\033[0m[I][UVC] [UVC] USB host init done \342\200\224 waiting for camera\r\n"
	.section	.text.uvc_capture_init,"ax",@progbits
	.align	1
	.globl	uvc_capture_init
	.type	uvc_capture_init, @function
uvc_capture_init:
.LFB127:
	.loc 1 1036 1 is_stmt 1
	.cfi_startproc
	.loc 1 1037 5
	.loc 1 1039 5
	.loc 1 1039 15 is_stmt 0
	lui	a0,%hi(.LC42)
	.loc 1 1036 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 1039 15
	addi	a0,a0,%lo(.LC42)
	.loc 1 1036 1
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 1039 15
	call	qcc74x_device_get_by_name
.LVL424:
	.loc 1 1040 5 is_stmt 1
	.loc 1 1040 8 is_stmt 0
	bne	a0,zero,.L310
	.loc 1 1041 9 is_stmt 1
	lui	a0,%hi(.LC43)
.LVL425:
	addi	a0,a0,%lo(.LC43)
.L312:
	.loc 1 1049 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 1048 5
	tail	printf
.LVL426:
.L310:
	.cfi_restore_state
	.loc 1 1045 5
	lw	a1,4(a0)
	mv	s0,a0
	.loc 1 1045 5 is_stmt 1
	lui	a0,%hi(.LC44)
.LVL427:
	addi	a0,a0,%lo(.LC44)
	call	printf
.LVL428:
	.loc 1 1047 5
	lw	a1,4(s0)
	li	a0,0
	call	usbh_initialize
.LVL429:
	.loc 1 1048 5
	lui	a0,%hi(.LC45)
	addi	a0,a0,%lo(.LC45)
	j	.L312
	.cfi_endproc
.LFE127:
	.size	uvc_capture_init, .-uvc_capture_init
	.section	.text.uvc_get_camera_state,"ax",@progbits
	.align	1
	.globl	uvc_get_camera_state
	.type	uvc_get_camera_state, @function
uvc_get_camera_state:
.LFB128:
	.loc 1 1052 1
	.cfi_startproc
	.loc 1 1053 5
	.loc 1 1053 12 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	lbu	a0,%lo(.LANCHOR0)(a5)
	.loc 1 1054 1
	andi	a0,a0,0xff
	ret
	.cfi_endproc
.LFE128:
	.size	uvc_get_camera_state, .-uvc_get_camera_state
	.section	.text.uvc_get_mode,"ax",@progbits
	.align	1
	.globl	uvc_get_mode
	.type	uvc_get_mode, @function
uvc_get_mode:
.LFB129:
	.loc 1 1057 1 is_stmt 1
	.cfi_startproc
	.loc 1 1058 5
	.loc 1 1058 12 is_stmt 0
	lui	a0,%hi(.LANCHOR12)
	.loc 1 1059 1
	addi	a0,a0,%lo(.LANCHOR12)
	ret
	.cfi_endproc
.LFE129:
	.size	uvc_get_mode, .-uvc_get_mode
	.section	.text.uvc_get_frames_captured,"ax",@progbits
	.align	1
	.globl	uvc_get_frames_captured
	.type	uvc_get_frames_captured, @function
uvc_get_frames_captured:
.LFB130:
	.loc 1 1062 1 is_stmt 1
	.cfi_startproc
	.loc 1 1063 5
	.loc 1 1063 12 is_stmt 0
	lui	a5,%hi(.LANCHOR13)
	lw	a0,%lo(.LANCHOR13)(a5)
	lw	a1,%lo(.LANCHOR13+4)(a5)
	.loc 1 1064 1
	ret
	.cfi_endproc
.LFE130:
	.size	uvc_get_frames_captured, .-uvc_get_frames_captured
	.section	.rodata.uvc_start_capture.str1.4,"aMS",@progbits,1
	.align	2
.LC46:
	.string	"\033[0;31m[E][UVC] [UVC] usbh_video_open failed in start_capture: %d\r\n"
	.section	.text.uvc_start_capture,"ax",@progbits
	.align	1
	.globl	uvc_start_capture
	.type	uvc_start_capture, @function
uvc_start_capture:
.LFB131:
	.loc 1 1067 1 is_stmt 1
	.cfi_startproc
	.loc 1 1068 5
	.loc 1 1068 9 is_stmt 0
	lui	a5,%hi(.LANCHOR15)
	lw	a0,%lo(.LANCHOR15)(a5)
	.loc 1 1069 16
	li	a5,-1
	.loc 1 1068 8
	beq	a0,zero,.L324
	.loc 1 1072 5 is_stmt 1
	.loc 1 1072 21 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	lbu	a4,0(a5)
	.loc 1 1072 8
	li	a3,2
	.loc 1 1072 21
	andi	a4,a4,0xff
	.loc 1 1072 8
	bne	a4,a3,.L318
	.loc 1 1073 16
	li	a5,0
.L324:
	.loc 1 1090 1
	mv	a0,a5
	ret
.L318:
	.loc 1 1076 5 is_stmt 1
	.loc 1 1076 21 is_stmt 0
	lbu	a4,0(a5)
	.loc 1 1076 8
	li	a3,1
	.loc 1 1069 16
	li	a5,-1
	.loc 1 1076 21
	andi	a4,a4,0xff
	.loc 1 1076 8
	bne	a4,a3,.L324
	.loc 1 1080 5 is_stmt 1
	.loc 1 1067 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 1080 15
	lui	a5,%hi(.LANCHOR12)
	addi	a5,a5,%lo(.LANCHOR12)
	.loc 1 1067 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 1080 15
	lbu	a1,8(a5)
	lbu	a4,9(a5)
	lhu	a3,6(a5)
	lhu	a2,4(a5)
	call	usbh_video_open
.LVL430:
	mv	a1,a0
.LVL431:
	.loc 1 1083 5 is_stmt 1
	.loc 1 1083 8 is_stmt 0
	bge	a0,zero,.L319
	.loc 1 1084 9 is_stmt 1
	lui	a0,%hi(.LC46)
.LVL432:
	addi	a0,a0,%lo(.LC46)
	call	printf
.LVL433:
	.loc 1 1085 9
	.loc 1 1085 16 is_stmt 0
	li	a5,-1
.L316:
	.loc 1 1090 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL434:
.L319:
	.cfi_restore_state
	.loc 1 1088 5 is_stmt 1
.LBB311:
.LBB312:
	.loc 1 904 5
	.loc 1 904 8 is_stmt 0
	lui	a5,%hi(.LANCHOR14)
	lw	a5,%lo(.LANCHOR14)(a5)
	bne	a5,zero,.L328
	call	start_streaming.part.0
.LVL435:
.L328:
.LBE312:
.LBE311:
	.loc 1 1089 12
	li	a5,0
	j	.L316
	.cfi_endproc
.LFE131:
	.size	uvc_start_capture, .-uvc_start_capture
	.section	.rodata.cmd_cam_start.str1.4,"aMS",@progbits,1
	.align	2
.LC47:
	.string	"No camera attached\r\n"
	.align	2
.LC48:
	.string	"Camera already streaming\r\n"
	.align	2
.LC49:
	.string	"Camera not in ATTACHED state (current: %s)\r\n"
	.align	2
.LC50:
	.string	"Start capture failed\r\n"
	.align	2
.LC51:
	.string	"Camera streaming started\r\n"
	.section	.text.cmd_cam_start,"ax",@progbits
	.align	1
	.type	cmd_cam_start, @function
cmd_cam_start:
.LFB138:
	.loc 1 1168 1 is_stmt 1
	.cfi_startproc
.LVL436:
	.loc 1 1169 5
	.loc 1 1169 17
	.loc 1 1171 5
	.loc 1 1171 8 is_stmt 0
	lui	a5,%hi(.LANCHOR15)
	lw	a5,%lo(.LANCHOR15)(a5)
	.loc 1 1168 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 1171 8
	bne	a5,zero,.L330
	.loc 1 1172 9 is_stmt 1
	lui	a0,%hi(.LC47)
.LVL437:
	addi	a0,a0,%lo(.LC47)
.LVL438:
.L339:
	.loc 1 1189 9 is_stmt 0
	call	printf
.LVL439:
	j	.L338
.LVL440:
.L330:
	.loc 1 1176 5 is_stmt 1
	.loc 1 1176 21 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	lbu	a4,0(a5)
	.loc 1 1176 8
	li	a3,2
	.loc 1 1176 21
	andi	a4,a4,0xff
	.loc 1 1176 8
	bne	a4,a3,.L332
	.loc 1 1177 9 is_stmt 1
	lui	a0,%hi(.LC48)
.LVL441:
	addi	a0,a0,%lo(.LC48)
.LVL442:
.L340:
	.loc 1 1193 5 is_stmt 0
	call	printf
.LVL443:
	.loc 1 1194 5 is_stmt 1
	.loc 1 1194 12 is_stmt 0
	li	a0,0
	j	.L329
.LVL444:
.L332:
	.loc 1 1181 5 is_stmt 1
	.loc 1 1181 21 is_stmt 0
	lbu	a4,0(a5)
	.loc 1 1181 8
	li	a3,1
	.loc 1 1181 21
	andi	a4,a4,0xff
	.loc 1 1181 8
	beq	a4,a3,.L333
.LVL445:
.LBB317:
.LBB318:
	.loc 1 1182 9 is_stmt 1
	lbu	a5,0(a5)
	li	a4,3
	andi	a5,a5,0xff
.LVL446:
.LBE318:
.LBE317:
	.loc 1 1135 5
	bgtu	a5,a4,.L336
	lui	a4,%hi(.LANCHOR11)
	addi	a4,a4,%lo(.LANCHOR11)
	lrw	a1,a4,a5,2
.LVL447:
.L334:
.LBB321:
.LBB319:
	.loc 1 1182 9 is_stmt 0
	lui	a0,%hi(.LC49)
.LVL448:
	addi	a0,a0,%lo(.LC49)
	call	printf
.LVL449:
	.loc 1 1184 9 is_stmt 1
.L338:
.LBE319:
.LBE321:
	.loc 1 1190 9
	.loc 1 1190 16 is_stmt 0
	li	a0,-1
.L329:
	.loc 1 1195 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL450:
.L336:
	.cfi_restore_state
.LBB322:
.LBB320:
	.loc 1 1182 9
	lui	a1,%hi(.LC1)
.LVL451:
	addi	a1,a1,%lo(.LC1)
	j	.L334
.LVL452:
.L333:
.LBE320:
.LBE322:
	.loc 1 1187 5 is_stmt 1
	.loc 1 1187 15 is_stmt 0
	call	uvc_start_capture
.LVL453:
	.loc 1 1188 5 is_stmt 1
	.loc 1 1188 8 is_stmt 0
	bge	a0,zero,.L335
	.loc 1 1189 9 is_stmt 1
	lui	a0,%hi(.LC50)
.LVL454:
	addi	a0,a0,%lo(.LC50)
	j	.L339
.LVL455:
.L335:
	.loc 1 1193 5
	lui	a0,%hi(.LC51)
.LVL456:
	addi	a0,a0,%lo(.LC51)
	j	.L340
	.cfi_endproc
.LFE138:
	.size	cmd_cam_start, .-cmd_cam_start
	.section	.rodata.uvc_stop_capture.str1.4,"aMS",@progbits,1
	.align	2
.LC52:
	.string	"\033[0;31m[E][UVC] [UVC] usbh_video_close failed in stop_capture: %d\r\n"
	.section	.text.uvc_stop_capture,"ax",@progbits
	.align	1
	.globl	uvc_stop_capture
	.type	uvc_stop_capture, @function
uvc_stop_capture:
.LFB132:
	.loc 1 1093 1
	.cfi_startproc
	.loc 1 1094 5
	.loc 1 1094 9 is_stmt 0
	lui	a5,%hi(.LANCHOR15)
	.loc 1 1094 8
	lw	a4,%lo(.LANCHOR15)(a5)
	.loc 1 1095 16
	li	a0,-1
	.loc 1 1094 8
	beq	a4,zero,.L348
	.loc 1 1093 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	addi	s0,a5,%lo(.LANCHOR15)
	.loc 1 1098 5 is_stmt 1
	.loc 1 1098 21 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	.loc 1 1093 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 1098 21
	addi	a5,a5,%lo(.LANCHOR0)
	lbu	a4,0(a5)
	.loc 1 1098 8
	li	a3,2
	.loc 1 1098 21
	andi	a4,a4,0xff
	.loc 1 1098 8
	beq	a4,a3,.L343
	.loc 1 1098 56 discriminator 1
	lbu	a5,0(a5)
	.loc 1 1098 41 discriminator 1
	li	a4,1
	.loc 1 1098 56 discriminator 1
	andi	a5,a5,0xff
	.loc 1 1098 41 discriminator 1
	bne	a5,a4,.L341
.L343:
	.loc 1 1102 5 is_stmt 1
	call	stop_streaming
.LVL457:
	.loc 1 1104 5
	.loc 1 1104 15 is_stmt 0
	lw	a0,0(s0)
	call	usbh_video_close
.LVL458:
	mv	a1,a0
.LVL459:
	.loc 1 1105 5 is_stmt 1
	.loc 1 1105 8 is_stmt 0
	bge	a0,zero,.L344
	.loc 1 1106 9 is_stmt 1
	lui	a0,%hi(.LC52)
.LVL460:
	addi	a0,a0,%lo(.LC52)
	call	printf
.LVL461:
	.loc 1 1107 9
	.loc 1 1107 16 is_stmt 0
	li	a0,-1
.L341:
	.loc 1 1112 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL462:
.L344:
	.cfi_restore_state
	.loc 1 1110 5 is_stmt 1
	li	a0,1
.LVL463:
	call	set_cam_state
.LVL464:
	.loc 1 1111 5
	.loc 1 1111 12 is_stmt 0
	li	a0,0
	j	.L341
.L348:
	.cfi_def_cfa_offset 0
	.cfi_restore 1
	.cfi_restore 8
	.loc 1 1112 1
	ret
	.cfi_endproc
.LFE132:
	.size	uvc_stop_capture, .-uvc_stop_capture
	.section	.rodata.cmd_cam_stop.str1.4,"aMS",@progbits,1
	.align	2
.LC53:
	.string	"Camera not streaming (current: %s)\r\n"
	.align	2
.LC54:
	.string	"Stop capture failed\r\n"
	.align	2
.LC55:
	.string	"Camera streaming stopped\r\n"
	.section	.text.cmd_cam_stop,"ax",@progbits
	.align	1
	.type	cmd_cam_stop, @function
cmd_cam_stop:
.LFB139:
	.loc 1 1199 1 is_stmt 1
	.cfi_startproc
.LVL465:
	.loc 1 1200 5
	.loc 1 1200 17
	.loc 1 1202 5
	.loc 1 1202 8 is_stmt 0
	lui	a5,%hi(.LANCHOR15)
	lw	a5,%lo(.LANCHOR15)(a5)
	.loc 1 1199 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 1202 8
	bne	a5,zero,.L352
	.loc 1 1203 9 is_stmt 1
	lui	a0,%hi(.LC47)
.LVL466:
	addi	a0,a0,%lo(.LC47)
.LVL467:
.L360:
	.loc 1 1215 9 is_stmt 0
	call	printf
.LVL468:
	.loc 1 1216 9 is_stmt 1
	.loc 1 1216 16 is_stmt 0
	li	a0,-1
.L351:
	.loc 1 1221 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL469:
.L352:
	.cfi_restore_state
	.loc 1 1207 5 is_stmt 1
	.loc 1 1207 21 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	lbu	a4,0(a5)
	.loc 1 1207 8
	li	a3,2
	.loc 1 1207 21
	andi	a4,a4,0xff
	.loc 1 1207 8
	beq	a4,a3,.L354
	.loc 1 1207 56 discriminator 1
	lbu	a4,0(a5)
	.loc 1 1207 41 discriminator 1
	li	a3,1
	.loc 1 1207 56 discriminator 1
	andi	a4,a4,0xff
	.loc 1 1207 41 discriminator 1
	beq	a4,a3,.L354
.LVL470:
.LBB327:
.LBB328:
	.loc 1 1208 9 is_stmt 1
	lbu	a5,0(a5)
	li	a4,3
	andi	a5,a5,0xff
.LVL471:
.LBE328:
.LBE327:
	.loc 1 1135 5
	bgtu	a5,a4,.L357
	lui	a4,%hi(.LANCHOR11)
	addi	a4,a4,%lo(.LANCHOR11)
	lrw	a1,a4,a5,2
.LVL472:
.L355:
.LBB331:
.LBB329:
	.loc 1 1208 9 is_stmt 0
	lui	a0,%hi(.LC53)
.LVL473:
	addi	a0,a0,%lo(.LC53)
	call	printf
.LVL474:
	.loc 1 1210 9 is_stmt 1
.L359:
.LBE329:
.LBE331:
	.loc 1 1220 5
	.loc 1 1220 12 is_stmt 0
	li	a0,0
	j	.L351
.LVL475:
.L357:
.LBB332:
.LBB330:
	.loc 1 1208 9
	lui	a1,%hi(.LC1)
.LVL476:
	addi	a1,a1,%lo(.LC1)
	j	.L355
.LVL477:
.L354:
.LBE330:
.LBE332:
	.loc 1 1213 5 is_stmt 1
	.loc 1 1213 15 is_stmt 0
	call	uvc_stop_capture
.LVL478:
	.loc 1 1214 5 is_stmt 1
	.loc 1 1214 8 is_stmt 0
	bge	a0,zero,.L356
	.loc 1 1215 9 is_stmt 1
	lui	a0,%hi(.LC54)
.LVL479:
	addi	a0,a0,%lo(.LC54)
	j	.L360
.LVL480:
.L356:
	.loc 1 1219 5
	lui	a0,%hi(.LC55)
.LVL481:
	addi	a0,a0,%lo(.LC55)
	call	printf
.LVL482:
	j	.L359
	.cfi_endproc
.LFE139:
	.size	cmd_cam_stop, .-cmd_cam_stop
	.section	.text.uvc_dequeue_frame,"ax",@progbits
	.align	1
	.globl	uvc_dequeue_frame
	.type	uvc_dequeue_frame, @function
uvc_dequeue_frame:
.LFB133:
	.loc 1 1115 1
	.cfi_startproc
.LVL483:
	.loc 1 1116 5
	.loc 1 1116 12 is_stmt 0
	tail	frame_queue_pop
.LVL484:
	.cfi_endproc
.LFE133:
	.size	uvc_dequeue_frame, .-uvc_dequeue_frame
	.section	.text.uvc_frame_release,"ax",@progbits
	.align	1
	.globl	uvc_frame_release
	.type	uvc_frame_release, @function
uvc_frame_release:
.LFB134:
	.loc 1 1120 1 is_stmt 1
	.cfi_startproc
.LVL485:
	.loc 1 1121 5
	tail	frame_free
.LVL486:
	.cfi_endproc
.LFE134:
	.size	uvc_frame_release, .-uvc_frame_release
	.section	.text.uvc_register_state_callback,"ax",@progbits
	.align	1
	.globl	uvc_register_state_callback
	.type	uvc_register_state_callback, @function
uvc_register_state_callback:
.LFB135:
	.loc 1 1125 1
	.cfi_startproc
.LVL487:
	.loc 1 1126 5
	.loc 1 1126 22 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	sw	a0,%lo(.LANCHOR1)(a5)
	.loc 1 1127 1
	ret
	.cfi_endproc
.LFE135:
	.size	uvc_register_state_callback, .-uvc_register_state_callback
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC56:
	.string	"DETACHED"
	.align	2
.LC57:
	.string	"ATTACHED"
	.align	2
.LC58:
	.string	"STREAMING"
	.align	2
.LC59:
	.string	"UNAVAILABLE"
	.globl	__fsym_cam_stop
	.globl	__fsym_cam_stop_name
	.globl	__fsym_cam_start
	.globl	__fsym_cam_start_name
	.globl	__fsym_cam_info
	.globl	__fsym_cam_info_name
	.section	.bss.g_cam_mode,"aw",@nobits
	.align	2
	.set	.LANCHOR12,. + 0
	.type	g_cam_mode, @object
	.size	g_cam_mode, 14
g_cam_mode:
	.zero	14
	.section	.bss.g_cam_state,"aw",@nobits
	.set	.LANCHOR0,. + 0
	.type	g_cam_state, @object
	.size	g_cam_state, 1
g_cam_state:
	.zero	1
	.section	.bss.g_cur_frame,"aw",@nobits
	.align	2
	.set	.LANCHOR22,. + 0
	.type	g_cur_frame, @object
	.size	g_cur_frame, 12
g_cur_frame:
	.zero	12
	.section	.bss.g_cur_frame_valid,"aw",@nobits
	.set	.LANCHOR16,. + 0
	.type	g_cur_frame_valid, @object
	.size	g_cur_frame_valid, 1
g_cur_frame_valid:
	.zero	1
	.section	.bss.g_fid_initialized,"aw",@nobits
	.set	.LANCHOR17,. + 0
	.type	g_fid_initialized, @object
	.size	g_fid_initialized, 1
g_fid_initialized:
	.zero	1
	.section	.bss.g_frame_reclaim_count,"aw",@nobits
	.align	2
	.set	.LANCHOR19,. + 0
	.type	g_frame_reclaim_count, @object
	.size	g_frame_reclaim_count, 4
g_frame_reclaim_count:
	.zero	4
	.section	.bss.g_frames_captured,"aw",@nobits
	.align	3
	.set	.LANCHOR13,. + 0
	.type	g_frames_captured, @object
	.size	g_frames_captured, 8
g_frames_captured:
	.zero	8
	.section	.bss.g_iso_cb_queue_drop_count,"aw",@nobits
	.align	2
	.set	.LANCHOR7,. + 0
	.type	g_iso_cb_queue_drop_count, @object
	.size	g_iso_cb_queue_drop_count, 4
g_iso_cb_queue_drop_count:
	.zero	4
	.section	.bss.g_iso_pkts_per_urb_active,"aw",@nobits
	.set	.LANCHOR10,. + 0
	.type	g_iso_pkts_per_urb_active, @object
	.size	g_iso_pkts_per_urb_active, 1
g_iso_pkts_per_urb_active:
	.zero	1
	.section	.bss.g_last_fid,"aw",@nobits
	.set	.LANCHOR21,. + 0
	.type	g_last_fid, @object
	.size	g_last_fid, 1
g_last_fid:
	.zero	1
	.section	.bss.g_restart_attempted,"aw",@nobits
	.set	.LANCHOR23,. + 0
	.type	g_restart_attempted, @object
	.size	g_restart_attempted, 1
g_restart_attempted:
	.zero	1
	.section	.bss.g_stall_detected,"aw",@nobits
	.set	.LANCHOR9,. + 0
	.type	g_stall_detected, @object
	.size	g_stall_detected, 1
g_stall_detected:
	.zero	1
	.section	.bss.g_state_callback,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	g_state_callback, @object
	.size	g_state_callback, 4
g_state_callback:
	.zero	4
	.section	.bss.g_stream_iso_bufs,"aw",@nobits
	.align	2
	.set	.LANCHOR3,. + 0
	.type	g_stream_iso_bufs, @object
	.size	g_stream_iso_bufs, 8
g_stream_iso_bufs:
	.zero	8
	.section	.bss.g_stream_stop,"aw",@nobits
	.set	.LANCHOR4,. + 0
	.type	g_stream_stop, @object
	.size	g_stream_stop, 1
g_stream_stop:
	.zero	1
	.section	.bss.g_stream_task,"aw",@nobits
	.align	2
	.set	.LANCHOR14,. + 0
	.type	g_stream_task, @object
	.size	g_stream_task, 4
g_stream_task:
	.zero	4
	.section	.bss.g_stream_urbs,"aw",@nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	g_stream_urbs, @object
	.size	g_stream_urbs, 8
g_stream_urbs:
	.zero	8
	.section	.bss.g_urb_done_head,"aw",@nobits
	.align	2
	.set	.LANCHOR5,. + 0
	.type	g_urb_done_head, @object
	.size	g_urb_done_head, 4
g_urb_done_head:
	.zero	4
	.section	.bss.g_urb_done_ring,"aw",@nobits
	.align	2
	.set	.LANCHOR8,. + 0
	.type	g_urb_done_ring, @object
	.size	g_urb_done_ring, 256
g_urb_done_ring:
	.zero	256
	.section	.bss.g_urb_done_tail,"aw",@nobits
	.align	2
	.set	.LANCHOR6,. + 0
	.type	g_urb_done_tail, @object
	.size	g_urb_done_tail, 4
g_urb_done_tail:
	.zero	4
	.section	.bss.g_urb_payload_completions,"aw",@nobits
	.align	3
	.set	.LANCHOR18,. + 0
	.type	g_urb_payload_completions, @object
	.size	g_urb_payload_completions, 8
g_urb_payload_completions:
	.zero	8
	.section	.bss.g_video_class,"aw",@nobits
	.align	2
	.set	.LANCHOR15,. + 0
	.type	g_video_class, @object
	.size	g_video_class, 4
g_video_class:
	.zero	4
	.section	.rodata.CSWTCH.134,"a"
	.align	2
	.set	.LANCHOR11,. + 0
	.type	CSWTCH.134, @object
	.size	CSWTCH.134, 16
CSWTCH.134:
	.word	.LC56
	.word	.LC57
	.word	.LC58
	.word	.LC59
	.section	.rodata.__fsym_cam_info_name,"a"
	.align	2
	.type	__fsym_cam_info_name, @object
	.size	__fsym_cam_info_name, 9
__fsym_cam_info_name:
	.string	"cam_info"
	.section	.rodata.__fsym_cam_start_name,"a"
	.align	2
	.type	__fsym_cam_start_name, @object
	.size	__fsym_cam_start_name, 10
__fsym_cam_start_name:
	.string	"cam_start"
	.section	.rodata.__fsym_cam_stop_name,"a"
	.align	2
	.type	__fsym_cam_stop_name, @object
	.size	__fsym_cam_stop_name, 9
__fsym_cam_stop_name:
	.string	"cam_stop"
	.section	.rodata.g_iso_pkt_candidates,"a"
	.align	2
	.set	.LANCHOR20,. + 0
	.type	g_iso_pkt_candidates, @object
	.size	g_iso_pkt_candidates, 3
g_iso_pkt_candidates:
	.ascii	"\b\006\004"
	.section	FSymTab,"a"
	.align	2
	.type	__fsym_cam_stop, @object
	.size	__fsym_cam_stop, 8
__fsym_cam_stop:
	.word	__fsym_cam_stop_name
	.word	cmd_cam_stop
	.type	__fsym_cam_start, @object
	.size	__fsym_cam_start, 8
__fsym_cam_start:
	.word	__fsym_cam_start_name
	.word	cmd_cam_start
	.type	__fsym_cam_info, @object
	.size	__fsym_cam_info, 8
__fsym_cam_info:
	.word	__fsym_cam_info_name
	.word	cmd_cam_info
	.text
.Letext0:
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 4 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 5 "./examples/usb_cam_stream/frame_pool.h"
	.file 6 "./examples/usb_cam_stream/uvc_capture.h"
	.file 7 "./toolchain/linux_x86_64/lib/gcc/riscv64-unknown-elf/10.4.0/include/stddef.h"
	.file 8 "./components/os/freertos/portable/GCC/RISC-V/common/portmacro.h"
	.file 9 "./components/os/freertos/include/task.h"
	.file 10 "./components/usb/cherryusb/common/usb_def.h"
	.file 11 "./components/usb/cherryusb/common/usb_list.h"
	.file 12 "./components/usb/cherryusb/common/usb_hc.h"
	.file 13 "./components/usb/cherryusb/core/usbh_core.h"
	.file 14 "./components/usb/cherryusb/common/usb_osal.h"
	.file 15 "./components/usb/cherryusb/class/hub/usb_hub.h"
	.file 16 "./components/usb/cherryusb/class/video/usb_video.h"
	.file 17 "./components/usb/cherryusb/class/video/usbh_video.h"
	.file 18 "./drivers/lhal/include/qcc74x_core.h"
	.file 19 "./components/shell/./shell.h"
	.file 20 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/stdio.h"
	.file 21 "./components/os/freertos/include/portable.h"
	.file 22 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/string.h"
	.file 23 "./components/mm/./mem.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x3365
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF397
	.byte	0xc
	.4byte	.LASF398
	.4byte	.LASF399
	.4byte	.Ldebug_ranges0+0x620
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x2b
	.byte	0x17
	.4byte	0x3f
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x3
	.4byte	.LASF5
	.byte	0x3
	.byte	0x39
	.byte	0x1c
	.4byte	0x59
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.byte	0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x4f
	.byte	0x1b
	.4byte	0x73
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.byte	0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x69
	.byte	0x20
	.4byte	0x8d
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0xe8
	.byte	0x16
	.4byte	0x25
	.byte	0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x33
	.byte	0x5
	.4byte	0xa7
	.byte	0x6
	.4byte	0xa7
	.byte	0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x24
	.byte	0x14
	.4byte	0x4d
	.byte	0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x67
	.byte	0x6
	.4byte	0xc9
	.byte	0x5
	.4byte	0xc9
	.byte	0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x3c
	.byte	0x14
	.4byte	0x81
	.byte	0x6
	.4byte	0xdf
	.byte	0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x52
	.byte	0x15
	.4byte	0x9b
	.byte	0x7
	.byte	0xc
	.byte	0x5
	.byte	0xe
	.byte	0x9
	.4byte	0x12d
	.byte	0x8
	.4byte	.LASF19
	.byte	0x5
	.byte	0xf
	.byte	0xe
	.4byte	0x12d
	.byte	0
	.byte	0x9
	.string	"len"
	.byte	0x5
	.byte	0x10
	.byte	0xe
	.4byte	0xc9
	.byte	0x4
	.byte	0x8
	.4byte	.LASF20
	.byte	0x5
	.byte	0x11
	.byte	0xe
	.4byte	0xc9
	.byte	0x8
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0xa7
	.byte	0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0x12
	.byte	0x3
	.4byte	0xfc
	.byte	0xb
	.byte	0x7
	.byte	0x1
	.4byte	0x3f
	.byte	0x6
	.byte	0x9
	.byte	0xe
	.4byte	0x166
	.byte	0xc
	.4byte	.LASF22
	.byte	0
	.byte	0xc
	.4byte	.LASF23
	.byte	0x1
	.byte	0xc
	.4byte	.LASF24
	.byte	0x2
	.byte	0xc
	.4byte	.LASF25
	.byte	0x3
	.byte	0
	.byte	0x3
	.4byte	.LASF26
	.byte	0x6
	.byte	0xe
	.byte	0x3
	.4byte	0x13f
	.byte	0x6
	.4byte	0x166
	.byte	0x7
	.byte	0xe
	.byte	0x6
	.byte	0x11
	.byte	0x9
	.4byte	0x1e9
	.byte	0x9
	.string	"vid"
	.byte	0x6
	.byte	0x12
	.byte	0xe
	.4byte	0xbd
	.byte	0
	.byte	0x9
	.string	"pid"
	.byte	0x6
	.byte	0x13
	.byte	0xe
	.4byte	0xbd
	.byte	0x2
	.byte	0x8
	.4byte	.LASF27
	.byte	0x6
	.byte	0x14
	.byte	0xe
	.4byte	0xbd
	.byte	0x4
	.byte	0x8
	.4byte	.LASF28
	.byte	0x6
	.byte	0x15
	.byte	0xe
	.4byte	0xbd
	.byte	0x6
	.byte	0x8
	.4byte	.LASF29
	.byte	0x6
	.byte	0x16
	.byte	0xd
	.4byte	0xa7
	.byte	0x8
	.byte	0x8
	.4byte	.LASF30
	.byte	0x6
	.byte	0x17
	.byte	0xd
	.4byte	0xa7
	.byte	0x9
	.byte	0x9
	.string	"fps"
	.byte	0x6
	.byte	0x18
	.byte	0xd
	.4byte	0xa7
	.byte	0xa
	.byte	0x8
	.4byte	.LASF31
	.byte	0x6
	.byte	0x19
	.byte	0xe
	.4byte	0xbd
	.byte	0xc
	.byte	0
	.byte	0x3
	.4byte	.LASF32
	.byte	0x6
	.byte	0x1a
	.byte	0x3
	.4byte	0x177
	.byte	0x5
	.4byte	0x1e9
	.byte	0x3
	.4byte	.LASF33
	.byte	0x6
	.byte	0x53
	.byte	0x10
	.4byte	0x206
	.byte	0xa
	.byte	0x4
	.4byte	0x20c
	.byte	0xd
	.4byte	0x217
	.byte	0xe
	.4byte	0x166
	.byte	0
	.byte	0x3
	.4byte	.LASF34
	.byte	0x7
	.byte	0xd1
	.byte	0x16
	.4byte	0x25
	.byte	0xf
	.byte	0x4
	.byte	0xa
	.byte	0x4
	.4byte	0x22b
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF35
	.byte	0x5
	.4byte	0x22b
	.byte	0xa
	.byte	0x4
	.4byte	0x232
	.byte	0xa
	.byte	0x4
	.4byte	0x243
	.byte	0xd
	.4byte	0x24e
	.byte	0xe
	.4byte	0x223
	.byte	0
	.byte	0x3
	.4byte	.LASF36
	.byte	0x8
	.byte	0x44
	.byte	0x12
	.4byte	0xc9
	.byte	0x10
	.4byte	0xa7
	.4byte	0x26a
	.byte	0x11
	.4byte	0x25
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF37
	.byte	0x9
	.byte	0x5c
	.byte	0x26
	.4byte	0x276
	.byte	0xa
	.byte	0x4
	.4byte	0x27c
	.byte	0x12
	.4byte	.LASF400
	.byte	0xa
	.byte	0x4
	.4byte	0x287
	.byte	0x13
	.byte	0x14
	.4byte	.LASF43
	.byte	0x8
	.byte	0x1
	.byte	0xa
	.2byte	0x13f
	.byte	0x8
	.4byte	0x2de
	.byte	0x15
	.4byte	.LASF38
	.byte	0xa
	.2byte	0x145
	.byte	0xd
	.4byte	0xa7
	.byte	0
	.byte	0x15
	.4byte	.LASF39
	.byte	0xa
	.2byte	0x14c
	.byte	0xd
	.4byte	0xa7
	.byte	0x1
	.byte	0x15
	.4byte	.LASF40
	.byte	0xa
	.2byte	0x14f
	.byte	0xe
	.4byte	0xbd
	.byte	0x2
	.byte	0x15
	.4byte	.LASF41
	.byte	0xa
	.2byte	0x153
	.byte	0xe
	.4byte	0xbd
	.byte	0x4
	.byte	0x15
	.4byte	.LASF42
	.byte	0xa
	.2byte	0x156
	.byte	0xe
	.4byte	0xbd
	.byte	0x6
	.byte	0
	.byte	0x14
	.4byte	.LASF44
	.byte	0x12
	.byte	0x1
	.byte	0xa
	.2byte	0x15c
	.byte	0x8
	.4byte	0x3b2
	.byte	0x15
	.4byte	.LASF45
	.byte	0xa
	.2byte	0x15d
	.byte	0xd
	.4byte	0xa7
	.byte	0
	.byte	0x15
	.4byte	.LASF46
	.byte	0xa
	.2byte	0x15e
	.byte	0xd
	.4byte	0xa7
	.byte	0x1
	.byte	0x15
	.4byte	.LASF47
	.byte	0xa
	.2byte	0x15f
	.byte	0xe
	.4byte	0xbd
	.byte	0x2
	.byte	0x15
	.4byte	.LASF48
	.byte	0xa
	.2byte	0x160
	.byte	0xd
	.4byte	0xa7
	.byte	0x4
	.byte	0x15
	.4byte	.LASF49
	.byte	0xa
	.2byte	0x161
	.byte	0xd
	.4byte	0xa7
	.byte	0x5
	.byte	0x15
	.4byte	.LASF50
	.byte	0xa
	.2byte	0x162
	.byte	0xd
	.4byte	0xa7
	.byte	0x6
	.byte	0x15
	.4byte	.LASF51
	.byte	0xa
	.2byte	0x163
	.byte	0xd
	.4byte	0xa7
	.byte	0x7
	.byte	0x15
	.4byte	.LASF52
	.byte	0xa
	.2byte	0x164
	.byte	0xe
	.4byte	0xbd
	.byte	0x8
	.byte	0x15
	.4byte	.LASF53
	.byte	0xa
	.2byte	0x165
	.byte	0xe
	.4byte	0xbd
	.byte	0xa
	.byte	0x15
	.4byte	.LASF54
	.byte	0xa
	.2byte	0x166
	.byte	0xe
	.4byte	0xbd
	.byte	0xc
	.byte	0x15
	.4byte	.LASF55
	.byte	0xa
	.2byte	0x167
	.byte	0xd
	.4byte	0xa7
	.byte	0xe
	.byte	0x15
	.4byte	.LASF56
	.byte	0xa
	.2byte	0x168
	.byte	0xd
	.4byte	0xa7
	.byte	0xf
	.byte	0x15
	.4byte	.LASF57
	.byte	0xa
	.2byte	0x169
	.byte	0xd
	.4byte	0xa7
	.byte	0x10
	.byte	0x15
	.4byte	.LASF58
	.byte	0xa
	.2byte	0x16a
	.byte	0xd
	.4byte	0xa7
	.byte	0x11
	.byte	0
	.byte	0x14
	.4byte	.LASF59
	.byte	0x9
	.byte	0x1
	.byte	0xa
	.2byte	0x170
	.byte	0x8
	.4byte	0x432
	.byte	0x15
	.4byte	.LASF45
	.byte	0xa
	.2byte	0x171
	.byte	0xd
	.4byte	0xa7
	.byte	0
	.byte	0x15
	.4byte	.LASF46
	.byte	0xa
	.2byte	0x172
	.byte	0xd
	.4byte	0xa7
	.byte	0x1
	.byte	0x15
	.4byte	.LASF60
	.byte	0xa
	.2byte	0x173
	.byte	0xe
	.4byte	0xbd
	.byte	0x2
	.byte	0x15
	.4byte	.LASF61
	.byte	0xa
	.2byte	0x174
	.byte	0xd
	.4byte	0xa7
	.byte	0x4
	.byte	0x15
	.4byte	.LASF62
	.byte	0xa
	.2byte	0x175
	.byte	0xd
	.4byte	0xa7
	.byte	0x5
	.byte	0x15
	.4byte	.LASF63
	.byte	0xa
	.2byte	0x176
	.byte	0xd
	.4byte	0xa7
	.byte	0x6
	.byte	0x15
	.4byte	.LASF64
	.byte	0xa
	.2byte	0x177
	.byte	0xd
	.4byte	0xa7
	.byte	0x7
	.byte	0x15
	.4byte	.LASF65
	.byte	0xa
	.2byte	0x178
	.byte	0xd
	.4byte	0xa7
	.byte	0x8
	.byte	0
	.byte	0x14
	.4byte	.LASF66
	.byte	0x9
	.byte	0x1
	.byte	0xa
	.2byte	0x17e
	.byte	0x8
	.4byte	0x4c0
	.byte	0x15
	.4byte	.LASF45
	.byte	0xa
	.2byte	0x17f
	.byte	0xd
	.4byte	0xa7
	.byte	0
	.byte	0x15
	.4byte	.LASF46
	.byte	0xa
	.2byte	0x180
	.byte	0xd
	.4byte	0xa7
	.byte	0x1
	.byte	0x15
	.4byte	.LASF67
	.byte	0xa
	.2byte	0x181
	.byte	0xd
	.4byte	0xa7
	.byte	0x2
	.byte	0x15
	.4byte	.LASF68
	.byte	0xa
	.2byte	0x182
	.byte	0xd
	.4byte	0xa7
	.byte	0x3
	.byte	0x15
	.4byte	.LASF69
	.byte	0xa
	.2byte	0x183
	.byte	0xd
	.4byte	0xa7
	.byte	0x4
	.byte	0x15
	.4byte	.LASF70
	.byte	0xa
	.2byte	0x184
	.byte	0xd
	.4byte	0xa7
	.byte	0x5
	.byte	0x15
	.4byte	.LASF71
	.byte	0xa
	.2byte	0x185
	.byte	0xd
	.4byte	0xa7
	.byte	0x6
	.byte	0x15
	.4byte	.LASF72
	.byte	0xa
	.2byte	0x186
	.byte	0xd
	.4byte	0xa7
	.byte	0x7
	.byte	0x15
	.4byte	.LASF73
	.byte	0xa
	.2byte	0x187
	.byte	0xd
	.4byte	0xa7
	.byte	0x8
	.byte	0
	.byte	0x14
	.4byte	.LASF74
	.byte	0x7
	.byte	0x1
	.byte	0xa
	.2byte	0x18d
	.byte	0x8
	.4byte	0x524
	.byte	0x15
	.4byte	.LASF45
	.byte	0xa
	.2byte	0x18e
	.byte	0xd
	.4byte	0xa7
	.byte	0
	.byte	0x15
	.4byte	.LASF46
	.byte	0xa
	.2byte	0x18f
	.byte	0xd
	.4byte	0xa7
	.byte	0x1
	.byte	0x15
	.4byte	.LASF75
	.byte	0xa
	.2byte	0x190
	.byte	0xd
	.4byte	0xa7
	.byte	0x2
	.byte	0x15
	.4byte	.LASF64
	.byte	0xa
	.2byte	0x191
	.byte	0xd
	.4byte	0xa7
	.byte	0x3
	.byte	0x15
	.4byte	.LASF76
	.byte	0xa
	.2byte	0x192
	.byte	0xe
	.4byte	0xbd
	.byte	0x4
	.byte	0x15
	.4byte	.LASF77
	.byte	0xa
	.2byte	0x193
	.byte	0xd
	.4byte	0xa7
	.byte	0x6
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0xb3
	.byte	0x16
	.4byte	.LASF81
	.byte	0x4
	.byte	0xb
	.byte	0x1a
	.byte	0x8
	.4byte	0x545
	.byte	0x8
	.4byte	.LASF78
	.byte	0xb
	.byte	0x1b
	.byte	0x1c
	.4byte	0x545
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x52a
	.byte	0x3
	.4byte	.LASF79
	.byte	0xb
	.byte	0x1d
	.byte	0x1f
	.4byte	0x52a
	.byte	0x3
	.4byte	.LASF80
	.byte	0xc
	.byte	0xf
	.byte	0x10
	.4byte	0x563
	.byte	0xa
	.byte	0x4
	.4byte	0x569
	.byte	0xd
	.4byte	0x579
	.byte	0xe
	.4byte	0x223
	.byte	0xe
	.4byte	0x94
	.byte	0
	.byte	0x16
	.4byte	.LASF82
	.byte	0x10
	.byte	0xc
	.byte	0x18
	.byte	0x8
	.4byte	0x5bb
	.byte	0x8
	.4byte	.LASF83
	.byte	0xc
	.byte	0x19
	.byte	0xe
	.4byte	0x12d
	.byte	0
	.byte	0x8
	.4byte	.LASF84
	.byte	0xc
	.byte	0x1a
	.byte	0xe
	.4byte	0xc9
	.byte	0x4
	.byte	0x8
	.4byte	.LASF85
	.byte	0xc
	.byte	0x1b
	.byte	0xe
	.4byte	0xc9
	.byte	0x8
	.byte	0x8
	.4byte	.LASF86
	.byte	0xc
	.byte	0x1c
	.byte	0x9
	.4byte	0x94
	.byte	0xc
	.byte	0
	.byte	0x16
	.4byte	.LASF87
	.byte	0x40
	.byte	0xc
	.byte	0x24
	.byte	0x8
	.4byte	0x6b2
	.byte	0x8
	.4byte	.LASF88
	.byte	0xc
	.byte	0x25
	.byte	0x11
	.4byte	0x54b
	.byte	0
	.byte	0x8
	.4byte	.LASF89
	.byte	0xc
	.byte	0x26
	.byte	0xb
	.4byte	0x223
	.byte	0x4
	.byte	0x8
	.4byte	.LASF90
	.byte	0xc
	.byte	0x27
	.byte	0x1a
	.4byte	0x7d9
	.byte	0x8
	.byte	0x9
	.string	"ep"
	.byte	0xc
	.byte	0x28
	.byte	0x25
	.4byte	0x7df
	.byte	0xc
	.byte	0x8
	.4byte	.LASF91
	.byte	0xc
	.byte	0x29
	.byte	0xd
	.4byte	0xa7
	.byte	0x10
	.byte	0x8
	.4byte	.LASF92
	.byte	0xc
	.byte	0x2a
	.byte	0xd
	.4byte	0xa7
	.byte	0x11
	.byte	0x8
	.4byte	.LASF93
	.byte	0xc
	.byte	0x2b
	.byte	0x1e
	.4byte	0x7e5
	.byte	0x14
	.byte	0x8
	.4byte	.LASF83
	.byte	0xc
	.byte	0x2c
	.byte	0xe
	.4byte	0x12d
	.byte	0x18
	.byte	0x8
	.4byte	.LASF84
	.byte	0xc
	.byte	0x2d
	.byte	0xe
	.4byte	0xc9
	.byte	0x1c
	.byte	0x8
	.4byte	.LASF94
	.byte	0xc
	.byte	0x2e
	.byte	0x9
	.4byte	0x94
	.byte	0x20
	.byte	0x8
	.4byte	.LASF85
	.byte	0xc
	.byte	0x2f
	.byte	0xe
	.4byte	0xc9
	.byte	0x24
	.byte	0x8
	.4byte	.LASF95
	.byte	0xc
	.byte	0x30
	.byte	0xe
	.4byte	0xc9
	.byte	0x28
	.byte	0x8
	.4byte	.LASF86
	.byte	0xc
	.byte	0x31
	.byte	0x9
	.4byte	0x94
	.byte	0x2c
	.byte	0x8
	.4byte	.LASF96
	.byte	0xc
	.byte	0x32
	.byte	0xe
	.4byte	0xc9
	.byte	0x30
	.byte	0x8
	.4byte	.LASF97
	.byte	0xc
	.byte	0x33
	.byte	0xe
	.4byte	0xc9
	.byte	0x34
	.byte	0x8
	.4byte	.LASF98
	.byte	0xc
	.byte	0x34
	.byte	0x1e
	.4byte	0x557
	.byte	0x38
	.byte	0x9
	.string	"arg"
	.byte	0xc
	.byte	0x35
	.byte	0xb
	.4byte	0x223
	.byte	0x3c
	.byte	0x8
	.4byte	.LASF99
	.byte	0xc
	.byte	0x39
	.byte	0x22
	.4byte	0x7eb
	.byte	0x40
	.byte	0
	.byte	0x5
	.4byte	0x5bb
	.byte	0x17
	.4byte	.LASF100
	.2byte	0x13f4
	.byte	0x4
	.byte	0xd
	.byte	0x65
	.byte	0x8
	.4byte	0x7d9
	.byte	0x8
	.4byte	.LASF101
	.byte	0xd
	.byte	0x66
	.byte	0x9
	.4byte	0x87a
	.byte	0
	.byte	0x8
	.4byte	.LASF102
	.byte	0xd
	.byte	0x67
	.byte	0xd
	.4byte	0xa7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF103
	.byte	0xd
	.byte	0x68
	.byte	0xd
	.4byte	0xa7
	.byte	0x2
	.byte	0x8
	.4byte	.LASF104
	.byte	0xd
	.byte	0x69
	.byte	0xd
	.4byte	0xa7
	.byte	0x3
	.byte	0x8
	.4byte	.LASF105
	.byte	0xd
	.byte	0x6a
	.byte	0xd
	.4byte	0xa7
	.byte	0x4
	.byte	0x8
	.4byte	.LASF106
	.byte	0xd
	.byte	0x6b
	.byte	0xd
	.4byte	0xa7
	.byte	0x5
	.byte	0x8
	.4byte	.LASF107
	.byte	0xd
	.byte	0x6c
	.byte	0xd
	.4byte	0xa7
	.byte	0x6
	.byte	0x18
	.4byte	.LASF108
	.byte	0xd
	.byte	0x6d
	.byte	0x22
	.4byte	0x2de
	.byte	0x1
	.byte	0x7
	.byte	0x18
	.4byte	.LASF109
	.byte	0xd
	.byte	0x6e
	.byte	0x1f
	.4byte	0xaa2
	.byte	0x4
	.byte	0x1c
	.byte	0x19
	.4byte	.LASF55
	.byte	0xd
	.byte	0x6f
	.byte	0x11
	.4byte	0x237
	.2byte	0x1388
	.byte	0x19
	.4byte	.LASF56
	.byte	0xd
	.byte	0x70
	.byte	0x11
	.4byte	0x237
	.2byte	0x138c
	.byte	0x19
	.4byte	.LASF57
	.byte	0xd
	.byte	0x71
	.byte	0x11
	.4byte	0x237
	.2byte	0x1390
	.byte	0x19
	.4byte	.LASF110
	.byte	0xd
	.byte	0x72
	.byte	0xe
	.4byte	0x12d
	.2byte	0x1394
	.byte	0x19
	.4byte	.LASF93
	.byte	0xd
	.byte	0x73
	.byte	0x1e
	.4byte	0x7e5
	.2byte	0x1398
	.byte	0x19
	.4byte	.LASF111
	.byte	0xd
	.byte	0x74
	.byte	0x16
	.4byte	0xbe2
	.2byte	0x139c
	.byte	0x19
	.4byte	.LASF112
	.byte	0xd
	.byte	0x75
	.byte	0x16
	.4byte	0xbe2
	.2byte	0x13a0
	.byte	0x1a
	.string	"bus"
	.byte	0xd
	.byte	0x76
	.byte	0x16
	.4byte	0xc4a
	.2byte	0x13a4
	.byte	0x1b
	.string	"ep0"
	.byte	0xd
	.byte	0x77
	.byte	0x24
	.4byte	0x4c0
	.byte	0x1
	.2byte	0x13a8
	.byte	0x19
	.4byte	.LASF113
	.byte	0xd
	.byte	0x78
	.byte	0x15
	.4byte	0x5bb
	.2byte	0x13b0
	.byte	0x19
	.4byte	.LASF114
	.byte	0xd
	.byte	0x79
	.byte	0x16
	.4byte	0x807
	.2byte	0x13f0
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x6b7
	.byte	0xa
	.byte	0x4
	.4byte	0x4c0
	.byte	0xa
	.byte	0x4
	.4byte	0x288
	.byte	0x10
	.4byte	0x579
	.4byte	0x7fb
	.byte	0x1c
	.4byte	0x25
	.byte	0
	.byte	0
	.byte	0x3
	.4byte	.LASF115
	.byte	0xe
	.byte	0x1a
	.byte	0xf
	.4byte	0x223
	.byte	0x3
	.4byte	.LASF116
	.byte	0xe
	.byte	0x1c
	.byte	0xf
	.4byte	0x223
	.byte	0x3
	.4byte	.LASF117
	.byte	0xe
	.byte	0x1d
	.byte	0xf
	.4byte	0x223
	.byte	0x3
	.4byte	.LASF118
	.byte	0xe
	.byte	0x1f
	.byte	0x10
	.4byte	0x23d
	.byte	0x16
	.4byte	.LASF119
	.byte	0x14
	.byte	0xe
	.byte	0x20
	.byte	0x8
	.4byte	0x87a
	.byte	0x8
	.4byte	.LASF120
	.byte	0xe
	.byte	0x21
	.byte	0x19
	.4byte	0x81f
	.byte	0
	.byte	0x8
	.4byte	.LASF121
	.byte	0xe
	.byte	0x22
	.byte	0xb
	.4byte	0x223
	.byte	0x4
	.byte	0x8
	.4byte	.LASF122
	.byte	0xe
	.byte	0x23
	.byte	0x9
	.4byte	0x87a
	.byte	0x8
	.byte	0x8
	.4byte	.LASF123
	.byte	0xe
	.byte	0x24
	.byte	0xe
	.4byte	0xc9
	.byte	0xc
	.byte	0x8
	.4byte	.LASF124
	.byte	0xe
	.byte	0x25
	.byte	0xb
	.4byte	0x223
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF125
	.byte	0x6
	.4byte	0x87a
	.byte	0x1d
	.4byte	.LASF126
	.byte	0x9
	.byte	0x1
	.byte	0xf
	.byte	0x81
	.byte	0x8
	.4byte	0x8fd
	.byte	0x8
	.4byte	.LASF45
	.byte	0xf
	.byte	0x82
	.byte	0xd
	.4byte	0xa7
	.byte	0
	.byte	0x8
	.4byte	.LASF46
	.byte	0xf
	.byte	0x83
	.byte	0xd
	.4byte	0xa7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF127
	.byte	0xf
	.byte	0x84
	.byte	0xd
	.4byte	0xa7
	.byte	0x2
	.byte	0x8
	.4byte	.LASF128
	.byte	0xf
	.byte	0x85
	.byte	0xe
	.4byte	0xbd
	.byte	0x3
	.byte	0x8
	.4byte	.LASF129
	.byte	0xf
	.byte	0x86
	.byte	0xd
	.4byte	0xa7
	.byte	0x5
	.byte	0x8
	.4byte	.LASF130
	.byte	0xf
	.byte	0x87
	.byte	0xd
	.4byte	0xa7
	.byte	0x6
	.byte	0x8
	.4byte	.LASF131
	.byte	0xf
	.byte	0x88
	.byte	0xd
	.4byte	0xa7
	.byte	0x7
	.byte	0x8
	.4byte	.LASF132
	.byte	0xf
	.byte	0x89
	.byte	0xd
	.4byte	0xa7
	.byte	0x8
	.byte	0
	.byte	0x1d
	.4byte	.LASF133
	.byte	0xb
	.byte	0x1
	.byte	0xf
	.byte	0x8f
	.byte	0x8
	.4byte	0x981
	.byte	0x8
	.4byte	.LASF45
	.byte	0xf
	.byte	0x90
	.byte	0xd
	.4byte	0xa7
	.byte	0
	.byte	0x8
	.4byte	.LASF46
	.byte	0xf
	.byte	0x91
	.byte	0xd
	.4byte	0xa7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF127
	.byte	0xf
	.byte	0x92
	.byte	0xd
	.4byte	0xa7
	.byte	0x2
	.byte	0x8
	.4byte	.LASF128
	.byte	0xf
	.byte	0x93
	.byte	0xe
	.4byte	0xbd
	.byte	0x3
	.byte	0x8
	.4byte	.LASF129
	.byte	0xf
	.byte	0x94
	.byte	0xd
	.4byte	0xa7
	.byte	0x5
	.byte	0x8
	.4byte	.LASF130
	.byte	0xf
	.byte	0x95
	.byte	0xd
	.4byte	0xa7
	.byte	0x6
	.byte	0x8
	.4byte	.LASF134
	.byte	0xf
	.byte	0x96
	.byte	0xd
	.4byte	0xa7
	.byte	0x7
	.byte	0x8
	.4byte	.LASF135
	.byte	0xf
	.byte	0x97
	.byte	0xe
	.4byte	0xbd
	.byte	0x8
	.byte	0x8
	.4byte	.LASF131
	.byte	0xf
	.byte	0x98
	.byte	0xd
	.4byte	0xa7
	.byte	0xa
	.byte	0
	.byte	0x16
	.4byte	.LASF136
	.byte	0xc
	.byte	0xd
	.byte	0x49
	.byte	0x8
	.4byte	0x9b6
	.byte	0x8
	.4byte	.LASF137
	.byte	0xd
	.byte	0x4a
	.byte	0x11
	.4byte	0x237
	.byte	0
	.byte	0x8
	.4byte	.LASF138
	.byte	0xd
	.byte	0x4b
	.byte	0xb
	.4byte	0x9ca
	.byte	0x4
	.byte	0x8
	.4byte	.LASF139
	.byte	0xd
	.byte	0x4c
	.byte	0xb
	.4byte	0x9ca
	.byte	0x8
	.byte	0
	.byte	0x1e
	.4byte	0x94
	.4byte	0x9ca
	.byte	0xe
	.4byte	0x7d9
	.byte	0xe
	.4byte	0xa7
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x9b6
	.byte	0x1d
	.4byte	.LASF140
	.byte	0x7
	.byte	0x1
	.byte	0xd
	.byte	0x4f
	.byte	0x8
	.4byte	0x9ed
	.byte	0x18
	.4byte	.LASF141
	.byte	0xd
	.byte	0x50
	.byte	0x24
	.4byte	0x4c0
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LASF142
	.byte	0x25
	.byte	0x1
	.byte	0xd
	.byte	0x53
	.byte	0x8
	.4byte	0xa17
	.byte	0x18
	.4byte	.LASF143
	.byte	0xd
	.byte	0x54
	.byte	0x25
	.4byte	0x432
	.byte	0x1
	.byte	0
	.byte	0x1f
	.string	"ep"
	.byte	0xd
	.byte	0x55
	.byte	0x1a
	.4byte	0xa17
	.byte	0x1
	.byte	0x9
	.byte	0
	.byte	0x20
	.4byte	0x9d0
	.byte	0x1
	.4byte	0xa28
	.byte	0x11
	.4byte	0x25
	.byte	0x3
	.byte	0
	.byte	0x17
	.4byte	.LASF144
	.2byte	0x26c
	.byte	0x4
	.byte	0xd
	.byte	0x58
	.byte	0x8
	.4byte	0xa7b
	.byte	0x8
	.4byte	.LASF145
	.byte	0xd
	.byte	0x59
	.byte	0xa
	.4byte	0xa7b
	.byte	0
	.byte	0x8
	.4byte	.LASF146
	.byte	0xd
	.byte	0x5a
	.byte	0x1f
	.4byte	0xa8b
	.byte	0x10
	.byte	0x8
	.4byte	.LASF147
	.byte	0xd
	.byte	0x5b
	.byte	0xb
	.4byte	0x223
	.byte	0x14
	.byte	0x18
	.4byte	.LASF30
	.byte	0xd
	.byte	0x5c
	.byte	0x26
	.4byte	0xa91
	.byte	0x1
	.byte	0x18
	.byte	0x19
	.4byte	.LASF148
	.byte	0xd
	.byte	0x5d
	.byte	0xd
	.4byte	0xa7
	.2byte	0x268
	.byte	0
	.byte	0x10
	.4byte	0x22b
	.4byte	0xa8b
	.byte	0x11
	.4byte	0x25
	.byte	0xf
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x981
	.byte	0x20
	.4byte	0x9ed
	.byte	0x1
	.4byte	0xaa2
	.byte	0x11
	.4byte	0x25
	.byte	0xf
	.byte	0
	.byte	0x17
	.4byte	.LASF149
	.2byte	0x136c
	.byte	0x4
	.byte	0xd
	.byte	0x60
	.byte	0x8
	.4byte	0xace
	.byte	0x18
	.4byte	.LASF150
	.byte	0xd
	.byte	0x61
	.byte	0x29
	.4byte	0x3b2
	.byte	0x1
	.byte	0
	.byte	0x18
	.4byte	.LASF151
	.byte	0xd
	.byte	0x62
	.byte	0x1b
	.4byte	0xace
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0x20
	.4byte	0xa28
	.byte	0x4
	.4byte	0xadf
	.byte	0x11
	.4byte	0x25
	.byte	0x7
	.byte	0
	.byte	0x17
	.4byte	.LASF152
	.2byte	0x5044
	.byte	0x4
	.byte	0xd
	.byte	0x7c
	.byte	0x8
	.4byte	0xbe2
	.byte	0x8
	.4byte	.LASF101
	.byte	0xd
	.byte	0x7d
	.byte	0x9
	.4byte	0x87a
	.byte	0
	.byte	0x8
	.4byte	.LASF153
	.byte	0xd
	.byte	0x7e
	.byte	0x9
	.4byte	0x87a
	.byte	0x1
	.byte	0x8
	.4byte	.LASF154
	.byte	0xd
	.byte	0x7f
	.byte	0xd
	.4byte	0xa7
	.byte	0x2
	.byte	0x8
	.4byte	.LASF155
	.byte	0xd
	.byte	0x80
	.byte	0xd
	.4byte	0xa7
	.byte	0x3
	.byte	0x8
	.4byte	.LASF104
	.byte	0xd
	.byte	0x81
	.byte	0xd
	.4byte	0xa7
	.byte	0x4
	.byte	0x8
	.4byte	.LASF156
	.byte	0xd
	.byte	0x82
	.byte	0xd
	.4byte	0xa7
	.byte	0x5
	.byte	0x8
	.4byte	.LASF157
	.byte	0xd
	.byte	0x83
	.byte	0xd
	.4byte	0xa7
	.byte	0x6
	.byte	0x8
	.4byte	.LASF158
	.byte	0xd
	.byte	0x84
	.byte	0xd
	.4byte	0xa7
	.byte	0x7
	.byte	0x8
	.4byte	.LASF159
	.byte	0xd
	.byte	0x85
	.byte	0x9
	.4byte	0x87a
	.byte	0x8
	.byte	0x18
	.4byte	.LASF160
	.byte	0xd
	.byte	0x86
	.byte	0x1f
	.4byte	0x886
	.byte	0x1
	.byte	0x9
	.byte	0x18
	.4byte	.LASF161
	.byte	0xd
	.byte	0x87
	.byte	0x22
	.4byte	0x8fd
	.byte	0x1
	.byte	0x12
	.byte	0x18
	.4byte	.LASF162
	.byte	0xd
	.byte	0x88
	.byte	0x19
	.4byte	0xc50
	.byte	0x4
	.byte	0x20
	.byte	0x19
	.4byte	.LASF111
	.byte	0xd
	.byte	0x89
	.byte	0x1a
	.4byte	0x7d9
	.2byte	0x4ff0
	.byte	0x1a
	.string	"bus"
	.byte	0xd
	.byte	0x8a
	.byte	0x16
	.4byte	0xc4a
	.2byte	0x4ff4
	.byte	0x19
	.4byte	.LASF163
	.byte	0xd
	.byte	0x8b
	.byte	0x25
	.4byte	0x7df
	.2byte	0x4ff8
	.byte	0x19
	.4byte	.LASF164
	.byte	0xd
	.byte	0x8c
	.byte	0x15
	.4byte	0x5bb
	.2byte	0x4ffc
	.byte	0x19
	.4byte	.LASF165
	.byte	0xd
	.byte	0x8d
	.byte	0xe
	.4byte	0x12d
	.2byte	0x503c
	.byte	0x19
	.4byte	.LASF166
	.byte	0xd
	.byte	0x8e
	.byte	0x1c
	.4byte	0xc61
	.2byte	0x5040
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0xadf
	.byte	0x17
	.4byte	.LASF167
	.2byte	0x5070
	.byte	0x4
	.byte	0xd
	.byte	0xa4
	.byte	0x8
	.4byte	0xc4a
	.byte	0x8
	.4byte	.LASF88
	.byte	0xd
	.byte	0xa5
	.byte	0x11
	.4byte	0x54b
	.byte	0
	.byte	0x8
	.4byte	.LASF168
	.byte	0xd
	.byte	0xa6
	.byte	0xd
	.4byte	0xa7
	.byte	0x4
	.byte	0x1f
	.string	"hcd"
	.byte	0xd
	.byte	0xa7
	.byte	0x15
	.4byte	0xc9f
	.byte	0x4
	.byte	0x8
	.byte	0x19
	.4byte	.LASF169
	.byte	0xd
	.byte	0xa8
	.byte	0x1d
	.4byte	0xc67
	.2byte	0x5054
	.byte	0x19
	.4byte	.LASF170
	.byte	0xd
	.byte	0xa9
	.byte	0x17
	.4byte	0x7fb
	.2byte	0x5068
	.byte	0x19
	.4byte	.LASF171
	.byte	0xd
	.byte	0xaa
	.byte	0x13
	.4byte	0x813
	.2byte	0x506c
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0xbe8
	.byte	0x20
	.4byte	0x6b7
	.byte	0x4
	.4byte	0xc61
	.byte	0x11
	.4byte	0x25
	.byte	0x3
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x82b
	.byte	0x16
	.4byte	.LASF172
	.byte	0x14
	.byte	0xd
	.byte	0x91
	.byte	0x8
	.4byte	0xc8f
	.byte	0x8
	.4byte	.LASF78
	.byte	0xd
	.byte	0x99
	.byte	0xd
	.4byte	0xa7
	.byte	0
	.byte	0x8
	.4byte	.LASF173
	.byte	0xd
	.byte	0x9a
	.byte	0xe
	.4byte	0xc8f
	.byte	0x4
	.byte	0
	.byte	0x10
	.4byte	0xc9
	.4byte	0xc9f
	.byte	0x11
	.4byte	0x25
	.byte	0x3
	.byte	0
	.byte	0x17
	.4byte	.LASF174
	.2byte	0x504c
	.byte	0x4
	.byte	0xd
	.byte	0x9d
	.byte	0x8
	.4byte	0xce4
	.byte	0x8
	.4byte	.LASF175
	.byte	0xd
	.byte	0x9e
	.byte	0xf
	.4byte	0xf0
	.byte	0
	.byte	0x8
	.4byte	.LASF176
	.byte	0xd
	.byte	0x9f
	.byte	0xd
	.4byte	0xa7
	.byte	0x4
	.byte	0x8
	.4byte	.LASF177
	.byte	0xd
	.byte	0xa0
	.byte	0xd
	.4byte	0x25a
	.byte	0x5
	.byte	0x18
	.4byte	.LASF178
	.byte	0xd
	.byte	0xa1
	.byte	0x15
	.4byte	0xadf
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x21
	.byte	0x1
	.byte	0x10
	.2byte	0x2e8
	.byte	0x9
	.4byte	0xd55
	.byte	0x22
	.4byte	.LASF179
	.byte	0x10
	.2byte	0x2ea
	.byte	0x15
	.4byte	0xa7
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0
	.byte	0x22
	.4byte	.LASF180
	.byte	0x10
	.2byte	0x2eb
	.byte	0x15
	.4byte	0xa7
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0
	.byte	0x22
	.4byte	.LASF181
	.byte	0x10
	.2byte	0x2ec
	.byte	0x15
	.4byte	0xa7
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0
	.byte	0x22
	.4byte	.LASF182
	.byte	0x10
	.2byte	0x2ed
	.byte	0x15
	.4byte	0xa7
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0
	.byte	0x22
	.4byte	.LASF183
	.byte	0x10
	.2byte	0x2ee
	.byte	0x15
	.4byte	0xa7
	.byte	0x1
	.byte	0x1
	.byte	0x3
	.byte	0
	.byte	0x22
	.4byte	.LASF184
	.byte	0x10
	.2byte	0x2ef
	.byte	0x15
	.4byte	0xa7
	.byte	0x1
	.byte	0x3
	.byte	0
	.byte	0
	.byte	0
	.byte	0x23
	.byte	0x1
	.byte	0x10
	.2byte	0x2e6
	.byte	0x5
	.4byte	0xd7a
	.byte	0x24
	.4byte	.LASF185
	.byte	0x10
	.2byte	0x2e7
	.byte	0x11
	.4byte	0xa7
	.byte	0x24
	.4byte	.LASF186
	.byte	0x10
	.2byte	0x2f0
	.byte	0xb
	.4byte	0xce4
	.byte	0
	.byte	0x21
	.byte	0x1
	.byte	0x10
	.2byte	0x2f4
	.byte	0x9
	.4byte	0xd96
	.byte	0x22
	.4byte	.LASF184
	.byte	0x10
	.2byte	0x2f6
	.byte	0x15
	.4byte	0xa7
	.byte	0x1
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.byte	0x23
	.byte	0x1
	.byte	0x10
	.2byte	0x2f2
	.byte	0x5
	.4byte	0xdbb
	.byte	0x24
	.4byte	.LASF185
	.byte	0x10
	.2byte	0x2f3
	.byte	0x11
	.4byte	0xa7
	.byte	0x24
	.4byte	.LASF186
	.byte	0x10
	.2byte	0x2f7
	.byte	0xb
	.4byte	0xd7a
	.byte	0
	.byte	0x14
	.4byte	.LASF187
	.byte	0x22
	.byte	0x1
	.byte	0x10
	.2byte	0x2e5
	.byte	0x8
	.4byte	0xeb9
	.byte	0x15
	.4byte	.LASF188
	.byte	0x10
	.2byte	0x2f1
	.byte	0x7
	.4byte	0xd55
	.byte	0
	.byte	0x15
	.4byte	.LASF189
	.byte	0x10
	.2byte	0x2f8
	.byte	0x7
	.4byte	0xd96
	.byte	0x1
	.byte	0x15
	.4byte	.LASF190
	.byte	0x10
	.2byte	0x2f9
	.byte	0xd
	.4byte	0xa7
	.byte	0x2
	.byte	0x15
	.4byte	.LASF191
	.byte	0x10
	.2byte	0x2fa
	.byte	0xd
	.4byte	0xa7
	.byte	0x3
	.byte	0x15
	.4byte	.LASF179
	.byte	0x10
	.2byte	0x2fb
	.byte	0xe
	.4byte	0xc9
	.byte	0x4
	.byte	0x15
	.4byte	.LASF180
	.byte	0x10
	.2byte	0x2fc
	.byte	0xe
	.4byte	0xbd
	.byte	0x8
	.byte	0x15
	.4byte	.LASF181
	.byte	0x10
	.2byte	0x2fd
	.byte	0xe
	.4byte	0xbd
	.byte	0xa
	.byte	0x15
	.4byte	.LASF182
	.byte	0x10
	.2byte	0x2fe
	.byte	0xe
	.4byte	0xbd
	.byte	0xc
	.byte	0x15
	.4byte	.LASF183
	.byte	0x10
	.2byte	0x2ff
	.byte	0xe
	.4byte	0xbd
	.byte	0xe
	.byte	0x15
	.4byte	.LASF192
	.byte	0x10
	.2byte	0x300
	.byte	0xe
	.4byte	0xbd
	.byte	0x10
	.byte	0x15
	.4byte	.LASF193
	.byte	0x10
	.2byte	0x302
	.byte	0xe
	.4byte	0xc9
	.byte	0x12
	.byte	0x15
	.4byte	.LASF194
	.byte	0x10
	.2byte	0x303
	.byte	0xe
	.4byte	0xc9
	.byte	0x16
	.byte	0x15
	.4byte	.LASF195
	.byte	0x10
	.2byte	0x305
	.byte	0xe
	.4byte	0xc9
	.byte	0x1a
	.byte	0x15
	.4byte	.LASF196
	.byte	0x10
	.2byte	0x308
	.byte	0xd
	.4byte	0xa7
	.byte	0x1e
	.byte	0x15
	.4byte	.LASF197
	.byte	0x10
	.2byte	0x309
	.byte	0xd
	.4byte	0xa7
	.byte	0x1f
	.byte	0x15
	.4byte	.LASF198
	.byte	0x10
	.2byte	0x30b
	.byte	0xd
	.4byte	0xa7
	.byte	0x20
	.byte	0x15
	.4byte	.LASF199
	.byte	0x10
	.2byte	0x30d
	.byte	0xd
	.4byte	0xa7
	.byte	0x21
	.byte	0
	.byte	0x16
	.4byte	.LASF200
	.byte	0x2c
	.byte	0x11
	.byte	0x11
	.byte	0x8
	.4byte	0xf08
	.byte	0x8
	.4byte	.LASF201
	.byte	0x11
	.byte	0x12
	.byte	0xe
	.4byte	0xbd
	.byte	0
	.byte	0x8
	.4byte	.LASF202
	.byte	0x11
	.byte	0x13
	.byte	0xe
	.4byte	0xbd
	.byte	0x2
	.byte	0x8
	.4byte	.LASF203
	.byte	0x11
	.byte	0x14
	.byte	0xe
	.4byte	0xc9
	.byte	0x4
	.byte	0x8
	.4byte	.LASF204
	.byte	0x11
	.byte	0x15
	.byte	0xd
	.4byte	0xa7
	.byte	0x8
	.byte	0x8
	.4byte	.LASF179
	.byte	0x11
	.byte	0x16
	.byte	0xe
	.4byte	0xf0d
	.byte	0xc
	.byte	0
	.byte	0x5
	.4byte	0xeb9
	.byte	0x10
	.4byte	0xc9
	.4byte	0xf1d
	.byte	0x11
	.4byte	0x25
	.byte	0x7
	.byte	0
	.byte	0x25
	.4byte	.LASF205
	.2byte	0x214
	.byte	0x11
	.byte	0x19
	.byte	0x8
	.4byte	0xf55
	.byte	0x8
	.4byte	.LASF206
	.byte	0x11
	.byte	0x1a
	.byte	0x22
	.4byte	0xf55
	.byte	0
	.byte	0x19
	.4byte	.LASF207
	.byte	0x11
	.byte	0x1b
	.byte	0xd
	.4byte	0xa7
	.2byte	0x210
	.byte	0x19
	.4byte	.LASF208
	.byte	0x11
	.byte	0x1c
	.byte	0xd
	.4byte	0xa7
	.2byte	0x211
	.byte	0
	.byte	0x10
	.4byte	0xeb9
	.4byte	0xf65
	.byte	0x11
	.4byte	0x25
	.byte	0xb
	.byte	0
	.byte	0x17
	.4byte	.LASF209
	.2byte	0x6a0
	.byte	0x4
	.byte	0x11
	.byte	0x2e
	.byte	0x8
	.4byte	0x1055
	.byte	0x8
	.4byte	.LASF90
	.byte	0x11
	.byte	0x2f
	.byte	0x1a
	.4byte	0x7d9
	.byte	0
	.byte	0x8
	.4byte	.LASF210
	.byte	0x11
	.byte	0x30
	.byte	0x25
	.4byte	0x7df
	.byte	0x4
	.byte	0x8
	.4byte	.LASF211
	.byte	0x11
	.byte	0x31
	.byte	0x25
	.4byte	0x7df
	.byte	0x8
	.byte	0x8
	.4byte	.LASF212
	.byte	0x11
	.byte	0x33
	.byte	0xd
	.4byte	0xa7
	.byte	0xc
	.byte	0x8
	.4byte	.LASF213
	.byte	0x11
	.byte	0x34
	.byte	0xd
	.4byte	0xa7
	.byte	0xd
	.byte	0x8
	.4byte	.LASF214
	.byte	0x11
	.byte	0x35
	.byte	0xd
	.4byte	0xa7
	.byte	0xe
	.byte	0x18
	.4byte	.LASF215
	.byte	0x11
	.byte	0x36
	.byte	0x2c
	.4byte	0xdbb
	.byte	0x1
	.byte	0xf
	.byte	0x18
	.4byte	.LASF216
	.byte	0x11
	.byte	0x37
	.byte	0x2c
	.4byte	0xdbb
	.byte	0x1
	.byte	0x31
	.byte	0x8
	.4byte	.LASF31
	.byte	0x11
	.byte	0x38
	.byte	0xe
	.4byte	0xbd
	.byte	0x54
	.byte	0x8
	.4byte	.LASF217
	.byte	0x11
	.byte	0x39
	.byte	0xe
	.4byte	0xbd
	.byte	0x56
	.byte	0x8
	.4byte	.LASF218
	.byte	0x11
	.byte	0x3a
	.byte	0x9
	.4byte	0x87a
	.byte	0x58
	.byte	0x8
	.4byte	.LASF219
	.byte	0x11
	.byte	0x3b
	.byte	0xd
	.4byte	0xa7
	.byte	0x59
	.byte	0x8
	.4byte	.LASF220
	.byte	0x11
	.byte	0x3c
	.byte	0xe
	.4byte	0xbd
	.byte	0x5a
	.byte	0x8
	.4byte	.LASF221
	.byte	0x11
	.byte	0x3d
	.byte	0xd
	.4byte	0xa7
	.byte	0x5c
	.byte	0x8
	.4byte	.LASF222
	.byte	0x11
	.byte	0x3e
	.byte	0xd
	.4byte	0xa7
	.byte	0x5d
	.byte	0x8
	.4byte	.LASF29
	.byte	0x11
	.byte	0x3f
	.byte	0x1e
	.4byte	0x1055
	.byte	0x60
	.byte	0x19
	.4byte	.LASF223
	.byte	0x11
	.byte	0x41
	.byte	0xb
	.4byte	0x223
	.2byte	0x69c
	.byte	0
	.byte	0x10
	.4byte	0xf1d
	.4byte	0x1065
	.byte	0x11
	.4byte	0x25
	.byte	0x2
	.byte	0
	.byte	0x16
	.4byte	.LASF224
	.byte	0x10
	.byte	0x12
	.byte	0x67
	.byte	0x8
	.4byte	0x10ce
	.byte	0x8
	.4byte	.LASF225
	.byte	0x12
	.byte	0x68
	.byte	0x11
	.4byte	0x237
	.byte	0
	.byte	0x8
	.4byte	.LASF175
	.byte	0x12
	.byte	0x69
	.byte	0xe
	.4byte	0xc9
	.byte	0x4
	.byte	0x8
	.4byte	.LASF226
	.byte	0x12
	.byte	0x6a
	.byte	0xd
	.4byte	0xa7
	.byte	0x8
	.byte	0x9
	.string	"idx"
	.byte	0x12
	.byte	0x6b
	.byte	0xd
	.4byte	0xa7
	.byte	0x9
	.byte	0x8
	.4byte	.LASF227
	.byte	0x12
	.byte	0x6c
	.byte	0xd
	.4byte	0xa7
	.byte	0xa
	.byte	0x8
	.4byte	.LASF228
	.byte	0x12
	.byte	0x6d
	.byte	0xd
	.4byte	0xa7
	.byte	0xb
	.byte	0x8
	.4byte	.LASF223
	.byte	0x12
	.byte	0x6e
	.byte	0xb
	.4byte	0x223
	.byte	0xc
	.byte	0
	.byte	0x3
	.4byte	.LASF229
	.byte	0x13
	.byte	0x3f
	.byte	0xf
	.4byte	0x10da
	.byte	0xa
	.byte	0x4
	.4byte	0x10e0
	.byte	0x26
	.4byte	0x94
	.byte	0xa
	.byte	0x4
	.4byte	0x225
	.byte	0x16
	.4byte	.LASF230
	.byte	0x8
	.byte	0x13
	.byte	0x5e
	.byte	0x8
	.4byte	0x1113
	.byte	0x8
	.4byte	.LASF225
	.byte	0x13
	.byte	0x5f
	.byte	0x11
	.4byte	0x237
	.byte	0
	.byte	0x8
	.4byte	.LASF231
	.byte	0x13
	.byte	0x63
	.byte	0x12
	.4byte	0x10ce
	.byte	0x4
	.byte	0
	.byte	0x5
	.4byte	0x10eb
	.byte	0x10
	.4byte	0xb3
	.4byte	0x1128
	.byte	0x11
	.4byte	0x25
	.byte	0x2
	.byte	0
	.byte	0x5
	.4byte	0x1118
	.byte	0x27
	.4byte	.LASF232
	.byte	0x1
	.byte	0x21
	.byte	0x16
	.4byte	0x1128
	.byte	0x5
	.byte	0x3
	.4byte	g_iso_pkt_candidates
	.byte	0x27
	.4byte	.LASF233
	.byte	0x1
	.byte	0x3d
	.byte	0x20
	.4byte	0x172
	.byte	0x5
	.byte	0x3
	.4byte	g_cam_state
	.byte	0x27
	.4byte	.LASF234
	.byte	0x1
	.byte	0x3e
	.byte	0x13
	.4byte	0x1e9
	.byte	0x5
	.byte	0x3
	.4byte	g_cam_mode
	.byte	0x27
	.4byte	.LASF235
	.byte	0x1
	.byte	0x3f
	.byte	0x1b
	.4byte	0x1175
	.byte	0x5
	.byte	0x3
	.4byte	g_video_class
	.byte	0xa
	.byte	0x4
	.4byte	0xf65
	.byte	0x27
	.4byte	.LASF236
	.byte	0x1
	.byte	0x40
	.byte	0x15
	.4byte	0x26a
	.byte	0x5
	.byte	0x3
	.4byte	g_stream_task
	.byte	0x27
	.4byte	.LASF237
	.byte	0x1
	.byte	0x41
	.byte	0x20
	.4byte	0x881
	.byte	0x5
	.byte	0x3
	.4byte	g_stream_stop
	.byte	0x27
	.4byte	.LASF238
	.byte	0x1
	.byte	0x44
	.byte	0x10
	.4byte	0x133
	.byte	0x5
	.byte	0x3
	.4byte	g_cur_frame
	.byte	0x27
	.4byte	.LASF239
	.byte	0x1
	.byte	0x45
	.byte	0x14
	.4byte	0x87a
	.byte	0x5
	.byte	0x3
	.4byte	g_cur_frame_valid
	.byte	0x27
	.4byte	.LASF240
	.byte	0x1
	.byte	0x46
	.byte	0x10
	.4byte	0xa7
	.byte	0x5
	.byte	0x3
	.4byte	g_last_fid
	.byte	0x27
	.4byte	.LASF241
	.byte	0x1
	.byte	0x47
	.byte	0x14
	.4byte	0x87a
	.byte	0x5
	.byte	0x3
	.4byte	g_fid_initialized
	.byte	0x27
	.4byte	.LASF242
	.byte	0x1
	.byte	0x48
	.byte	0x1a
	.4byte	0xeb
	.byte	0x5
	.byte	0x3
	.4byte	g_frames_captured
	.byte	0x27
	.4byte	.LASF243
	.byte	0x1
	.byte	0x49
	.byte	0x1a
	.4byte	0xeb
	.byte	0x5
	.byte	0x3
	.4byte	g_urb_payload_completions
	.byte	0x27
	.4byte	.LASF244
	.byte	0x1
	.byte	0x4c
	.byte	0x15
	.4byte	0x881
	.byte	0x5
	.byte	0x3
	.4byte	g_stall_detected
	.byte	0x27
	.4byte	.LASF245
	.byte	0x1
	.byte	0x4d
	.byte	0x15
	.4byte	0x881
	.byte	0x5
	.byte	0x3
	.4byte	g_restart_attempted
	.byte	0x27
	.4byte	.LASF246
	.byte	0x1
	.byte	0x4e
	.byte	0x1a
	.4byte	0xd5
	.byte	0x5
	.byte	0x3
	.4byte	g_iso_cb_queue_drop_count
	.byte	0x27
	.4byte	.LASF247
	.byte	0x1
	.byte	0x4f
	.byte	0x19
	.4byte	0xb8
	.byte	0x5
	.byte	0x3
	.4byte	g_iso_pkts_per_urb_active
	.byte	0x27
	.4byte	.LASF248
	.byte	0x1
	.byte	0x50
	.byte	0x1a
	.4byte	0xd5
	.byte	0x5
	.byte	0x3
	.4byte	g_frame_reclaim_count
	.byte	0x10
	.4byte	0x1275
	.4byte	0x1275
	.byte	0x11
	.4byte	0x25
	.byte	0x1
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x5bb
	.byte	0x27
	.4byte	.LASF249
	.byte	0x1
	.byte	0x51
	.byte	0x19
	.4byte	0x1265
	.byte	0x5
	.byte	0x3
	.4byte	g_stream_urbs
	.byte	0x10
	.4byte	0x12d
	.4byte	0x129d
	.byte	0x11
	.4byte	0x25
	.byte	0x1
	.byte	0
	.byte	0x27
	.4byte	.LASF250
	.byte	0x1
	.byte	0x52
	.byte	0x11
	.4byte	0x128d
	.byte	0x5
	.byte	0x3
	.4byte	g_stream_iso_bufs
	.byte	0x27
	.4byte	.LASF251
	.byte	0x1
	.byte	0x53
	.byte	0x1a
	.4byte	0xd5
	.byte	0x5
	.byte	0x3
	.4byte	g_urb_done_head
	.byte	0x27
	.4byte	.LASF252
	.byte	0x1
	.byte	0x54
	.byte	0x1a
	.4byte	0xd5
	.byte	0x5
	.byte	0x3
	.4byte	g_urb_done_tail
	.byte	0x10
	.4byte	0x1275
	.4byte	0x12e3
	.byte	0x11
	.4byte	0x25
	.byte	0x3f
	.byte	0
	.byte	0x27
	.4byte	.LASF253
	.byte	0x1
	.byte	0x55
	.byte	0x19
	.4byte	0x12d3
	.byte	0x5
	.byte	0x3
	.4byte	g_urb_done_ring
	.byte	0x27
	.4byte	.LASF254
	.byte	0x1
	.byte	0x58
	.byte	0x1d
	.4byte	0x1fa
	.byte	0x5
	.byte	0x3
	.4byte	g_state_callback
	.byte	0x10
	.4byte	0x232
	.4byte	0x1317
	.byte	0x11
	.4byte	0x25
	.byte	0x8
	.byte	0
	.byte	0x5
	.4byte	0x1307
	.byte	0x28
	.4byte	.LASF255
	.byte	0x1
	.2byte	0x489
	.byte	0xc
	.4byte	0x1317
	.byte	0x5
	.byte	0x3
	.4byte	__fsym_cam_info_name
	.byte	0x28
	.4byte	.LASF256
	.byte	0x1
	.2byte	0x489
	.byte	0x62
	.4byte	0x1113
	.byte	0x5
	.byte	0x3
	.4byte	__fsym_cam_info
	.byte	0x10
	.4byte	0x232
	.4byte	0x1352
	.byte	0x11
	.4byte	0x25
	.byte	0x9
	.byte	0
	.byte	0x5
	.4byte	0x1342
	.byte	0x28
	.4byte	.LASF257
	.byte	0x1
	.2byte	0x4ac
	.byte	0xc
	.4byte	0x1352
	.byte	0x5
	.byte	0x3
	.4byte	__fsym_cam_start_name
	.byte	0x28
	.4byte	.LASF258
	.byte	0x1
	.2byte	0x4ac
	.byte	0x64
	.4byte	0x1113
	.byte	0x5
	.byte	0x3
	.4byte	__fsym_cam_start
	.byte	0x28
	.4byte	.LASF259
	.byte	0x1
	.2byte	0x4c6
	.byte	0xc
	.4byte	0x1317
	.byte	0x5
	.byte	0x3
	.4byte	__fsym_cam_stop_name
	.byte	0x28
	.4byte	.LASF260
	.byte	0x1
	.2byte	0x4c6
	.byte	0x62
	.4byte	0x1113
	.byte	0x5
	.byte	0x3
	.4byte	__fsym_cam_stop
	.byte	0x29
	.4byte	.LASF263
	.byte	0x1
	.2byte	0x4ae
	.byte	0xc
	.4byte	0x94
	.byte	0x1
	.4byte	0x13dd
	.byte	0x2a
	.4byte	.LASF261
	.byte	0x1
	.2byte	0x4ae
	.byte	0x1d
	.4byte	0x94
	.byte	0x2a
	.4byte	.LASF262
	.byte	0x1
	.2byte	0x4ae
	.byte	0x2a
	.4byte	0x10e5
	.byte	0x2b
	.string	"ret"
	.byte	0x1
	.2byte	0x4bd
	.byte	0x9
	.4byte	0x94
	.byte	0
	.byte	0x29
	.4byte	.LASF264
	.byte	0x1
	.2byte	0x48f
	.byte	0xc
	.4byte	0x94
	.byte	0x1
	.4byte	0x1417
	.byte	0x2a
	.4byte	.LASF261
	.byte	0x1
	.2byte	0x48f
	.byte	0x1e
	.4byte	0x94
	.byte	0x2a
	.4byte	.LASF262
	.byte	0x1
	.2byte	0x48f
	.byte	0x2b
	.4byte	0x10e5
	.byte	0x2b
	.string	"ret"
	.byte	0x1
	.2byte	0x4a3
	.byte	0x9
	.4byte	0x94
	.byte	0
	.byte	0x29
	.4byte	.LASF265
	.byte	0x1
	.2byte	0x478
	.byte	0xc
	.4byte	0x94
	.byte	0x1
	.4byte	0x1450
	.byte	0x2a
	.4byte	.LASF261
	.byte	0x1
	.2byte	0x478
	.byte	0x1d
	.4byte	0x94
	.byte	0x2a
	.4byte	.LASF262
	.byte	0x1
	.2byte	0x478
	.byte	0x2a
	.4byte	0x10e5
	.byte	0x2b
	.string	"st"
	.byte	0x1
	.2byte	0x47c
	.byte	0x14
	.4byte	0x166
	.byte	0
	.byte	0x29
	.4byte	.LASF266
	.byte	0x1
	.2byte	0x46d
	.byte	0x14
	.4byte	0x237
	.byte	0x1
	.4byte	0x146f
	.byte	0x2c
	.string	"st"
	.byte	0x1
	.2byte	0x46d
	.byte	0x31
	.4byte	0x166
	.byte	0
	.byte	0x2d
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x464
	.byte	0x6
	.4byte	.LFB135
	.4byte	.LFE135-.LFB135
	.byte	0x1
	.byte	0x9c
	.4byte	0x1495
	.byte	0x2e
	.string	"cb"
	.byte	0x1
	.2byte	0x464
	.byte	0x37
	.4byte	0x1fa
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x2d
	.4byte	.LASF268
	.byte	0x1
	.2byte	0x45f
	.byte	0x6
	.4byte	.LFB134
	.4byte	.LFE134-.LFB134
	.byte	0x1
	.byte	0x9c
	.4byte	0x14cf
	.byte	0x2f
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x45f
	.byte	0x21
	.4byte	0x14cf
	.4byte	.LLST174
	.byte	0x30
	.4byte	.LVL486
	.4byte	0x324f
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x133
	.byte	0x32
	.4byte	.LASF269
	.byte	0x1
	.2byte	0x45a
	.byte	0x5
	.4byte	0x94
	.4byte	.LFB133
	.4byte	.LFE133-.LFB133
	.byte	0x1
	.byte	0x9c
	.4byte	0x152b
	.byte	0x2f
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x45a
	.byte	0x20
	.4byte	0x14cf
	.4byte	.LLST172
	.byte	0x2f
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x45a
	.byte	0x30
	.4byte	0xc9
	.4byte	.LLST173
	.byte	0x30
	.4byte	.LVL484
	.4byte	0x325b
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0x32
	.4byte	.LASF270
	.byte	0x1
	.2byte	0x444
	.byte	0x5
	.4byte	0x94
	.4byte	.LFB132
	.4byte	.LFE132-.LFB132
	.byte	0x1
	.byte	0x9c
	.4byte	0x1590
	.byte	0x33
	.string	"ret"
	.byte	0x1
	.2byte	0x450
	.byte	0x9
	.4byte	0x94
	.4byte	.LLST166
	.byte	0x34
	.4byte	.LVL457
	.4byte	0x1bfe
	.byte	0x34
	.4byte	.LVL458
	.4byte	0x3267
	.byte	0x35
	.4byte	.LVL461
	.4byte	0x3273
	.4byte	0x1580
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC52
	.byte	0
	.byte	0x36
	.4byte	.LVL464
	.4byte	0x2de8
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x32
	.4byte	.LASF271
	.byte	0x1
	.2byte	0x42a
	.byte	0x5
	.4byte	0x94
	.4byte	.LFB131
	.4byte	.LFE131-.LFB131
	.byte	0x1
	.byte	0x9c
	.4byte	0x15f8
	.byte	0x33
	.string	"ret"
	.byte	0x1
	.2byte	0x438
	.byte	0x9
	.4byte	0x94
	.4byte	.LLST160
	.byte	0x37
	.4byte	0x1c1a
	.4byte	.LBB311
	.4byte	.LBE311-.LBB311
	.byte	0x1
	.2byte	0x440
	.byte	0x5
	.4byte	0x15db
	.byte	0x34
	.4byte	.LVL435
	.4byte	0x3038
	.byte	0
	.byte	0x34
	.4byte	.LVL430
	.4byte	0x327f
	.byte	0x36
	.4byte	.LVL433
	.4byte	0x3273
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC46
	.byte	0
	.byte	0
	.byte	0x38
	.4byte	.LASF272
	.byte	0x1
	.2byte	0x425
	.byte	0xa
	.4byte	0xdf
	.4byte	.LFB130
	.4byte	.LFE130-.LFB130
	.byte	0x1
	.byte	0x9c
	.byte	0x38
	.4byte	.LASF273
	.byte	0x1
	.2byte	0x420
	.byte	0x13
	.4byte	0x1626
	.4byte	.LFB129
	.4byte	.LFE129-.LFB129
	.byte	0x1
	.byte	0x9c
	.byte	0xa
	.byte	0x4
	.4byte	0x1f5
	.byte	0x38
	.4byte	.LASF274
	.byte	0x1
	.2byte	0x41b
	.byte	0x10
	.4byte	0x166
	.4byte	.LFB128
	.4byte	.LFE128-.LFB128
	.byte	0x1
	.byte	0x9c
	.byte	0x2d
	.4byte	.LASF275
	.byte	0x1
	.2byte	0x40b
	.byte	0x6
	.4byte	.LFB127
	.4byte	.LFE127-.LFB127
	.byte	0x1
	.byte	0x9c
	.4byte	0x16b2
	.byte	0x39
	.4byte	.LASF276
	.byte	0x1
	.2byte	0x40d
	.byte	0x1d
	.4byte	0x16b2
	.4byte	.LLST159
	.byte	0x35
	.4byte	.LVL424
	.4byte	0x328b
	.4byte	0x1682
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC42
	.byte	0
	.byte	0x3a
	.4byte	.LVL426
	.4byte	0x3273
	.byte	0x35
	.4byte	.LVL428
	.4byte	0x3273
	.4byte	0x16a2
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC44
	.byte	0
	.byte	0x36
	.4byte	.LVL429
	.4byte	0x3297
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x1065
	.byte	0x2d
	.4byte	.LASF277
	.byte	0x1
	.2byte	0x3fb
	.byte	0x6
	.4byte	.LFB126
	.4byte	.LFE126-.LFB126
	.byte	0x1
	.byte	0x9c
	.4byte	0x1710
	.byte	0x2f
	.4byte	.LASF278
	.byte	0x1
	.2byte	0x3fb
	.byte	0x29
	.4byte	0x1175
	.4byte	.LLST158
	.byte	0x35
	.4byte	.LVL421
	.4byte	0x3273
	.4byte	0x16f7
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC41
	.byte	0
	.byte	0x34
	.4byte	.LVL422
	.4byte	0x1bfe
	.byte	0x36
	.4byte	.LVL423
	.4byte	0x2de8
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x2d
	.4byte	.LASF279
	.byte	0x1
	.2byte	0x3a3
	.byte	0x6
	.4byte	.LFB125
	.4byte	.LFE125-.LFB125
	.byte	0x1
	.byte	0x9c
	.4byte	0x1bf8
	.byte	0x2f
	.4byte	.LASF278
	.byte	0x1
	.2byte	0x3a3
	.byte	0x28
	.4byte	0x1175
	.4byte	.LLST106
	.byte	0x33
	.string	"vid"
	.byte	0x1
	.2byte	0x3a5
	.byte	0xe
	.4byte	0xbd
	.4byte	.LLST107
	.byte	0x33
	.string	"pid"
	.byte	0x1
	.2byte	0x3a6
	.byte	0xe
	.4byte	0xbd
	.4byte	.LLST108
	.byte	0x39
	.4byte	.LASF280
	.byte	0x1
	.2byte	0x3b3
	.byte	0xd
	.4byte	0xa7
	.4byte	.LLST109
	.byte	0x39
	.4byte	.LASF281
	.byte	0x1
	.2byte	0x3b3
	.byte	0x19
	.4byte	0xa7
	.4byte	.LLST110
	.byte	0x33
	.string	"w"
	.byte	0x1
	.2byte	0x3b4
	.byte	0xe
	.4byte	0xbd
	.4byte	.LLST111
	.byte	0x33
	.string	"h"
	.byte	0x1
	.2byte	0x3b4
	.byte	0x11
	.4byte	0xbd
	.4byte	.LLST112
	.byte	0x33
	.string	"alt"
	.byte	0x1
	.2byte	0x3bd
	.byte	0xd
	.4byte	0xa7
	.4byte	.LLST113
	.byte	0x39
	.4byte	.LASF282
	.byte	0x1
	.2byte	0x3be
	.byte	0xe
	.4byte	0xbd
	.4byte	.LLST114
	.byte	0x39
	.4byte	.LASF283
	.byte	0x1
	.2byte	0x3c5
	.byte	0x29
	.4byte	0x1bf8
	.4byte	.LLST115
	.byte	0x39
	.4byte	.LASF284
	.byte	0x1
	.2byte	0x3c7
	.byte	0xe
	.4byte	0xc9
	.4byte	.LLST116
	.byte	0x33
	.string	"ret"
	.byte	0x1
	.2byte	0x3d9
	.byte	0x9
	.4byte	0x94
	.4byte	.LLST117
	.byte	0x39
	.4byte	.LASF285
	.byte	0x1
	.2byte	0x3e1
	.byte	0xe
	.4byte	0xc9
	.4byte	.LLST118
	.byte	0x39
	.4byte	.LASF286
	.byte	0x1
	.2byte	0x3e2
	.byte	0xe
	.4byte	0xc9
	.4byte	.LLST119
	.byte	0x3b
	.4byte	.LBB303
	.4byte	.LBE303-.LBB303
	.4byte	0x185b
	.byte	0x39
	.4byte	.LASF287
	.byte	0x1
	.2byte	0x3ce
	.byte	0x12
	.4byte	0xc9
	.4byte	.LLST157
	.byte	0x36
	.4byte	.LVL393
	.4byte	0x3273
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC36
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0xe
	.byte	0xc
	.4byte	0x989680
	.byte	0xf7
	.byte	0x25
	.byte	0x85
	.byte	0
	.byte	0xf7
	.byte	0x25
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0
	.byte	0
	.byte	0x3c
	.4byte	0x2c30
	.4byte	.LBB252
	.4byte	.Ldebug_ranges0+0x440
	.byte	0x1
	.2byte	0x3b6
	.byte	0xa
	.4byte	0x1939
	.byte	0x3d
	.4byte	0x2c70
	.4byte	.LLST120
	.byte	0x3d
	.4byte	0x2c64
	.4byte	.LLST121
	.byte	0x3d
	.4byte	0x2c58
	.4byte	.LLST122
	.byte	0x3d
	.4byte	0x2c4c
	.4byte	.LLST123
	.byte	0x3d
	.4byte	0x2c41
	.4byte	.LLST124
	.byte	0x3e
	.4byte	.Ldebug_ranges0+0x440
	.byte	0x3f
	.4byte	0x2c7c
	.4byte	.LLST125
	.byte	0x3f
	.4byte	0x2c88
	.4byte	.LLST126
	.byte	0x3f
	.4byte	0x2c94
	.4byte	.LLST127
	.byte	0x3f
	.4byte	0x2ca0
	.4byte	.LLST128
	.byte	0x3f
	.4byte	0x2cac
	.4byte	.LLST129
	.byte	0x40
	.4byte	0x2cb8
	.4byte	.Ldebug_ranges0+0x468
	.byte	0x3f
	.4byte	0x2cb9
	.4byte	.LLST130
	.byte	0x40
	.4byte	0x2cc4
	.4byte	.Ldebug_ranges0+0x490
	.byte	0x3f
	.4byte	0x2cc5
	.4byte	.LLST131
	.byte	0x40
	.4byte	0x2cd1
	.4byte	.Ldebug_ranges0+0x4c0
	.byte	0x3f
	.4byte	0x2cd2
	.4byte	.LLST132
	.byte	0x3f
	.4byte	0x2cdc
	.4byte	.LLST133
	.byte	0x3f
	.4byte	0x2ce6
	.4byte	.LLST134
	.byte	0x40
	.4byte	0x2cf2
	.4byte	.Ldebug_ranges0+0x4f0
	.byte	0x41
	.4byte	0x2cf3
	.byte	0x1
	.byte	0x6a
	.byte	0x41
	.4byte	0x2cfe
	.byte	0x1
	.byte	0x5e
	.byte	0x42
	.4byte	0x2d09
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x3c
	.4byte	0x2b16
	.4byte	.LBB274
	.4byte	.Ldebug_ranges0+0x510
	.byte	0x1
	.2byte	0x3bd
	.byte	0x13
	.4byte	0x19b6
	.byte	0x43
	.4byte	0x2b28
	.byte	0x3e
	.4byte	.Ldebug_ranges0+0x510
	.byte	0x3f
	.4byte	0x2b34
	.4byte	.LLST135
	.byte	0x3f
	.4byte	0x2b41
	.4byte	.LLST136
	.byte	0x3f
	.4byte	0x2b4e
	.4byte	.LLST137
	.byte	0x3f
	.4byte	0x2b5b
	.4byte	.LLST138
	.byte	0x40
	.4byte	0x2b68
	.4byte	.Ldebug_ranges0+0x530
	.byte	0x3f
	.4byte	0x2b69
	.4byte	.LLST139
	.byte	0x40
	.4byte	0x2b74
	.4byte	.Ldebug_ranges0+0x550
	.byte	0x3f
	.4byte	0x2b75
	.4byte	.LLST140
	.byte	0x3f
	.4byte	0x2b81
	.4byte	.LLST141
	.byte	0x3f
	.4byte	0x2b8e
	.4byte	.LLST142
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x37
	.4byte	0x2ad1
	.4byte	.LBB285
	.4byte	.LBE285-.LBB285
	.byte	0x1
	.2byte	0x3be
	.byte	0x18
	.4byte	0x19f0
	.byte	0x3d
	.4byte	0x2aef
	.4byte	.LLST143
	.byte	0x3d
	.4byte	0x2ae3
	.4byte	.LLST144
	.byte	0x3f
	.4byte	0x2afc
	.4byte	.LLST145
	.byte	0x3f
	.4byte	0x2b08
	.4byte	.LLST146
	.byte	0
	.byte	0x3c
	.4byte	0x2b9e
	.4byte	.LBB287
	.4byte	.Ldebug_ranges0+0x568
	.byte	0x1
	.2byte	0x3c7
	.byte	0x20
	.4byte	0x1a9a
	.byte	0x3d
	.4byte	0x2baf
	.4byte	.LLST115
	.byte	0x3e
	.4byte	.Ldebug_ranges0+0x568
	.byte	0x3f
	.4byte	0x2bbb
	.4byte	.LLST148
	.byte	0x3f
	.4byte	0x2bc5
	.4byte	.LLST149
	.byte	0x3f
	.4byte	0x2bd1
	.4byte	.LLST150
	.byte	0x3f
	.4byte	0x2bdd
	.4byte	.LLST151
	.byte	0x3f
	.4byte	0x2be9
	.4byte	.LLST152
	.byte	0x40
	.4byte	0x2bf5
	.4byte	.Ldebug_ranges0+0x588
	.byte	0x3f
	.4byte	0x2bf6
	.4byte	.LLST153
	.byte	0x40
	.4byte	0x2c00
	.4byte	.Ldebug_ranges0+0x5a8
	.byte	0x3f
	.4byte	0x2c01
	.4byte	.LLST154
	.byte	0x44
	.4byte	0x2c0c
	.4byte	.LBB291
	.4byte	.LBE291-.LBB291
	.4byte	0x1a7f
	.byte	0x3f
	.4byte	0x2c11
	.4byte	.LLST155
	.byte	0
	.byte	0x45
	.4byte	0x2c1e
	.4byte	.LBB292
	.4byte	.LBE292-.LBB292
	.byte	0x3f
	.4byte	0x2c1f
	.4byte	.LLST156
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x3c
	.4byte	0x1c1a
	.4byte	.LBB304
	.4byte	.Ldebug_ranges0+0x5c8
	.byte	0x1
	.2byte	0x3f8
	.byte	0x5
	.4byte	0x1ab9
	.byte	0x3a
	.4byte	.LVL409
	.4byte	0x3038
	.byte	0
	.byte	0x35
	.4byte	.LVL318
	.4byte	0x3273
	.4byte	0x1adc
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC33
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x35
	.4byte	.LVL319
	.4byte	0x32a4
	.4byte	0x1af0
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x35
	.4byte	.LVL333
	.4byte	0x3273
	.4byte	0x1b20
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC34
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x31
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0x31
	.byte	0x1
	.byte	0x5f
	.byte	0x3
	.byte	0xa
	.2byte	0x7c0
	.byte	0
	.byte	0x35
	.4byte	.LVL349
	.4byte	0x3273
	.4byte	0x1b3c
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC35
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0x35
	.4byte	.LVL352
	.4byte	0x327f
	.4byte	0x1b67
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x31
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x31
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0
	.byte	0x35
	.4byte	.LVL355
	.4byte	0x3273
	.4byte	0x1b7e
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC37
	.byte	0
	.byte	0x46
	.4byte	.LVL359
	.4byte	0x2de8
	.4byte	0x1b91
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x35
	.4byte	.LVL398
	.4byte	0x3273
	.4byte	0x1bae
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC38
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0x35
	.4byte	.LVL401
	.4byte	0x2de8
	.4byte	0x1bc1
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x35
	.4byte	.LVL402
	.4byte	0x3273
	.4byte	0x1be4
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC39
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x36
	.4byte	.LVL410
	.4byte	0x3273
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC40
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0xf08
	.byte	0x47
	.4byte	.LASF312
	.byte	0x1
	.2byte	0x391
	.byte	0xd
	.byte	0x1
	.4byte	0x1c1a
	.byte	0x48
	.byte	0x2b
	.string	"i"
	.byte	0x1
	.2byte	0x39a
	.byte	0xe
	.4byte	0x94
	.byte	0
	.byte	0
	.byte	0x49
	.4byte	.LASF368
	.byte	0x1
	.2byte	0x386
	.byte	0xd
	.byte	0x1
	.byte	0x4a
	.4byte	.LASF326
	.byte	0x1
	.2byte	0x230
	.byte	0xd
	.4byte	.LFB122
	.4byte	.LFE122-.LFB122
	.byte	0x1
	.byte	0x9c
	.4byte	0x27fc
	.byte	0x4b
	.string	"arg"
	.byte	0x1
	.2byte	0x230
	.byte	0x22
	.4byte	0x223
	.4byte	.LLST22
	.byte	0x33
	.string	"vc"
	.byte	0x1
	.2byte	0x234
	.byte	0x18
	.4byte	0x1175
	.4byte	.LLST23
	.byte	0x39
	.4byte	.LASF288
	.byte	0x1
	.2byte	0x23c
	.byte	0x1a
	.4byte	0x7d9
	.4byte	.LLST24
	.byte	0x39
	.4byte	.LASF289
	.byte	0x1
	.2byte	0x23d
	.byte	0x25
	.4byte	0x7df
	.4byte	.LLST25
	.byte	0x33
	.string	"mps"
	.byte	0x1
	.2byte	0x23f
	.byte	0xe
	.4byte	0xbd
	.4byte	.LLST26
	.byte	0x39
	.4byte	.LASF290
	.byte	0x1
	.2byte	0x261
	.byte	0xe
	.4byte	0xdf
	.4byte	.LLST27
	.byte	0x39
	.4byte	.LASF291
	.byte	0x1
	.2byte	0x262
	.byte	0xe
	.4byte	0xdf
	.4byte	.LLST28
	.byte	0x39
	.4byte	.LASF292
	.byte	0x1
	.2byte	0x263
	.byte	0x10
	.4byte	0x24e
	.4byte	.LLST29
	.byte	0x39
	.4byte	.LASF293
	.byte	0x1
	.2byte	0x268
	.byte	0xe
	.4byte	0xc9
	.4byte	.LLST30
	.byte	0x39
	.4byte	.LASF294
	.byte	0x1
	.2byte	0x269
	.byte	0xe
	.4byte	0xc9
	.4byte	.LLST31
	.byte	0x39
	.4byte	.LASF295
	.byte	0x1
	.2byte	0x26a
	.byte	0xd
	.4byte	0xa7
	.4byte	.LLST32
	.byte	0x39
	.4byte	.LASF296
	.byte	0x1
	.2byte	0x26b
	.byte	0xd
	.4byte	0xa7
	.4byte	.LLST33
	.byte	0x4c
	.4byte	.Ldebug_ranges0+0xa0
	.4byte	0x1e8f
	.byte	0x39
	.4byte	.LASF297
	.byte	0x1
	.2byte	0x26c
	.byte	0xe
	.4byte	0x94
	.4byte	.LLST34
	.byte	0x3e
	.4byte	.Ldebug_ranges0+0xc8
	.byte	0x33
	.string	"c"
	.byte	0x1
	.2byte	0x26d
	.byte	0x15
	.4byte	0x217
	.4byte	.LLST35
	.byte	0x3e
	.4byte	.Ldebug_ranges0+0xf0
	.byte	0x39
	.4byte	.LASF298
	.byte	0x1
	.2byte	0x26e
	.byte	0x15
	.4byte	0xa7
	.4byte	.LLST36
	.byte	0x39
	.4byte	.LASF299
	.byte	0x1
	.2byte	0x273
	.byte	0x16
	.4byte	0xc9
	.4byte	.LLST37
	.byte	0x39
	.4byte	.LASF300
	.byte	0x1
	.2byte	0x275
	.byte	0x16
	.4byte	0xc9
	.4byte	.LLST38
	.byte	0x39
	.4byte	.LASF301
	.byte	0x1
	.2byte	0x276
	.byte	0x16
	.4byte	0xc9
	.4byte	.LLST39
	.byte	0x39
	.4byte	.LASF302
	.byte	0x1
	.2byte	0x278
	.byte	0x16
	.4byte	0xc9
	.4byte	.LLST40
	.byte	0x39
	.4byte	.LASF303
	.byte	0x1
	.2byte	0x279
	.byte	0x11
	.4byte	0x87a
	.4byte	.LLST41
	.byte	0x4c
	.4byte	.Ldebug_ranges0+0x118
	.4byte	0x1df9
	.byte	0x33
	.string	"u"
	.byte	0x1
	.2byte	0x282
	.byte	0x16
	.4byte	0x94
	.4byte	.LLST42
	.byte	0x35
	.4byte	.LVL86
	.4byte	0x32b0
	.4byte	0x1dcd
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x4
	.byte	0x91
	.byte	0xe8,0x7e
	.byte	0x6
	.byte	0
	.byte	0x35
	.4byte	.LVL87
	.4byte	0x32b0
	.4byte	0x1de1
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x89
	.byte	0
	.byte	0
	.byte	0x36
	.4byte	.LVL88
	.4byte	0x32bc
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x4
	.byte	0x91
	.byte	0xe8,0x7e
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x34
	.4byte	.LVL75
	.4byte	0x32c8
	.byte	0x35
	.4byte	.LVL78
	.4byte	0x3273
	.4byte	0x1e34
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x31
	.byte	0x1
	.byte	0x5d
	.byte	0x4
	.byte	0x91
	.byte	0xe0,0x7e
	.byte	0x6
	.byte	0x31
	.byte	0x1
	.byte	0x5f
	.byte	0x3
	.byte	0xa
	.2byte	0x5000
	.byte	0
	.byte	0x34
	.4byte	.LVL273
	.4byte	0x32c8
	.byte	0x35
	.4byte	.LVL274
	.4byte	0x3273
	.4byte	0x1e66
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC31
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x31
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x89
	.byte	0
	.byte	0
	.byte	0x36
	.4byte	.LVL275
	.4byte	0x30cb
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x4d
	.4byte	0x2857
	.byte	0x5
	.byte	0x3
	.4byte	g_stream_urbs
	.byte	0x4d
	.4byte	0x2864
	.byte	0x5
	.byte	0x3
	.4byte	g_stream_iso_bufs
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x4c
	.4byte	.Ldebug_ranges0+0x148
	.4byte	0x1f0b
	.byte	0x33
	.string	"u"
	.byte	0x1
	.2byte	0x2ab
	.byte	0xe
	.4byte	0x94
	.4byte	.LLST43
	.byte	0x3e
	.4byte	.Ldebug_ranges0+0x170
	.byte	0x33
	.string	"urb"
	.byte	0x1
	.2byte	0x2ac
	.byte	0x1a
	.4byte	0x1275
	.4byte	.LLST44
	.byte	0x33
	.string	"ret"
	.byte	0x1
	.2byte	0x2bf
	.byte	0xd
	.4byte	0x94
	.4byte	.LLST45
	.byte	0x4c
	.4byte	.Ldebug_ranges0+0x1a0
	.4byte	0x1ee7
	.byte	0x33
	.string	"p"
	.byte	0x1
	.2byte	0x2b8
	.byte	0x12
	.4byte	0x94
	.4byte	.LLST46
	.byte	0
	.byte	0x34
	.4byte	.LVL101
	.4byte	0x32d4
	.byte	0x36
	.4byte	.LVL104
	.4byte	0x3273
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x4c
	.4byte	.Ldebug_ranges0+0x1c0
	.4byte	0x2608
	.byte	0x39
	.4byte	.LASF304
	.byte	0x1
	.2byte	0x2cb
	.byte	0xd
	.4byte	0x87a
	.4byte	.LLST47
	.byte	0x39
	.4byte	.LASF305
	.byte	0x1
	.2byte	0x2cc
	.byte	0x1a
	.4byte	0x1275
	.4byte	.LLST48
	.byte	0x39
	.4byte	.LASF306
	.byte	0x1
	.2byte	0x2eb
	.byte	0x12
	.4byte	0xdf
	.4byte	.LLST49
	.byte	0x39
	.4byte	.LASF307
	.byte	0x1
	.2byte	0x2ec
	.byte	0x12
	.4byte	0xdf
	.4byte	.LLST50
	.byte	0x33
	.string	"now"
	.byte	0x1
	.2byte	0x2ed
	.byte	0x14
	.4byte	0x24e
	.4byte	.LLST51
	.byte	0x3b
	.4byte	.LBB216
	.4byte	.LBE216-.LBB216
	.4byte	0x1fe5
	.byte	0x33
	.string	"ret"
	.byte	0x1
	.2byte	0x2de
	.byte	0x15
	.4byte	0x94
	.4byte	.LLST103
	.byte	0x35
	.4byte	.LVL285
	.4byte	0x2970
	.4byte	0x1faa
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x4
	.byte	0x91
	.byte	0xd8,0x7e
	.byte	0x6
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x72
	.byte	0
	.byte	0x6
	.byte	0
	.byte	0x35
	.4byte	.LVL286
	.4byte	0x32d4
	.4byte	0x1fbe
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x35
	.4byte	.LVL289
	.4byte	0x3273
	.4byte	0x1fd5
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC22
	.byte	0
	.byte	0x36
	.4byte	.LVL290
	.4byte	0x2de8
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0x4c
	.4byte	.Ldebug_ranges0+0x368
	.4byte	0x21a6
	.byte	0x33
	.string	"ret"
	.byte	0x1
	.2byte	0x332
	.byte	0x11
	.4byte	0x94
	.4byte	.LLST96
	.byte	0x4c
	.4byte	.Ldebug_ranges0+0x388
	.4byte	0x207d
	.byte	0x33
	.string	"u"
	.byte	0x1
	.2byte	0x308
	.byte	0x16
	.4byte	0x94
	.4byte	.LLST97
	.byte	0x4c
	.4byte	.Ldebug_ranges0+0x3b0
	.4byte	0x2044
	.byte	0x39
	.4byte	.LASF308
	.byte	0x1
	.2byte	0x315
	.byte	0x19
	.4byte	0x94
	.4byte	.LLST98
	.byte	0x34
	.4byte	.LVL240
	.4byte	0x3273
	.byte	0x34
	.4byte	.LVL265
	.4byte	0x32e0
	.byte	0
	.byte	0x37
	.4byte	0x2d8c
	.4byte	.LBB194
	.4byte	.LBE194-.LBB194
	.byte	0x1
	.2byte	0x309
	.byte	0x16
	.4byte	0x2063
	.byte	0x3d
	.4byte	0x2d9d
	.4byte	.LLST99
	.byte	0
	.byte	0x36
	.4byte	.LVL264
	.4byte	0x2970
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x4
	.byte	0x91
	.byte	0xd8,0x7e
	.byte	0x6
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x72
	.byte	0
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x4c
	.4byte	.Ldebug_ranges0+0x3d0
	.4byte	0x2120
	.byte	0x33
	.string	"u"
	.byte	0x1
	.2byte	0x333
	.byte	0x16
	.4byte	0x94
	.4byte	.LLST100
	.byte	0x3e
	.4byte	.Ldebug_ranges0+0x3f0
	.byte	0x33
	.string	"urb"
	.byte	0x1
	.2byte	0x334
	.byte	0x22
	.4byte	0x1275
	.4byte	.LLST101
	.byte	0x4c
	.4byte	.Ldebug_ranges0+0x418
	.4byte	0x20c4
	.byte	0x33
	.string	"p"
	.byte	0x1
	.2byte	0x33f
	.byte	0x1a
	.4byte	0x94
	.4byte	.LLST102
	.byte	0
	.byte	0x35
	.4byte	.LVL251
	.4byte	0x32bc
	.4byte	0x20e7
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x4
	.byte	0x91
	.byte	0xe4,0x7e
	.byte	0x6
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x4
	.byte	0x91
	.byte	0xe8,0x7e
	.byte	0x6
	.byte	0
	.byte	0x34
	.4byte	.LVL255
	.4byte	0x32d4
	.byte	0x35
	.4byte	.LVL258
	.4byte	0x3273
	.4byte	0x210f
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC28
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x4
	.byte	0x91
	.byte	0xe4,0x7e
	.byte	0x6
	.byte	0
	.byte	0x36
	.4byte	.LVL259
	.4byte	0x2de8
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.byte	0x4e
	.4byte	0x2ddf
	.4byte	.LBB200
	.4byte	.LBE200-.LBB200
	.byte	0x1
	.2byte	0x31c
	.byte	0xd
	.byte	0x35
	.4byte	.LVL234
	.4byte	0x3273
	.4byte	0x2148
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC25
	.byte	0
	.byte	0x35
	.4byte	.LVL243
	.4byte	0x324f
	.4byte	0x215f
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR22
	.byte	0
	.byte	0x34
	.4byte	.LVL246
	.4byte	0x32ec
	.byte	0x35
	.4byte	.LVL261
	.4byte	0x3273
	.4byte	0x217f
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC29
	.byte	0
	.byte	0x35
	.4byte	.LVL297
	.4byte	0x3273
	.4byte	0x2196
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC24
	.byte	0
	.byte	0x36
	.4byte	.LVL298
	.4byte	0x2de8
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0x3c
	.4byte	0x2d20
	.4byte	.LBB132
	.4byte	.Ldebug_ranges0+0x200
	.byte	0x1
	.2byte	0x2cd
	.byte	0x10
	.4byte	0x21dd
	.byte	0x3d
	.4byte	0x2d31
	.4byte	.LLST52
	.byte	0x3e
	.4byte	.Ldebug_ranges0+0x200
	.byte	0x3f
	.4byte	0x2d3d
	.4byte	.LLST53
	.byte	0x3f
	.4byte	0x2d49
	.4byte	.LLST54
	.byte	0
	.byte	0
	.byte	0x3c
	.4byte	0x28c8
	.4byte	.LBB137
	.4byte	.Ldebug_ranges0+0x220
	.byte	0x1
	.2byte	0x2da
	.byte	0xd
	.4byte	0x2549
	.byte	0x3d
	.4byte	0x28e3
	.4byte	.LLST55
	.byte	0x3d
	.4byte	0x28d6
	.4byte	.LLST56
	.byte	0x3e
	.4byte	.Ldebug_ranges0+0x220
	.byte	0x3f
	.4byte	0x28f0
	.4byte	.LLST57
	.byte	0x3f
	.4byte	0x28fd
	.4byte	.LLST58
	.byte	0x3f
	.4byte	0x290a
	.4byte	.LLST59
	.byte	0x3f
	.4byte	0x2917
	.4byte	.LLST60
	.byte	0x4f
	.4byte	0x2924
	.4byte	.Ldebug_ranges0+0x250
	.4byte	0x24f5
	.byte	0x3f
	.4byte	0x2925
	.4byte	.LLST61
	.byte	0x40
	.4byte	0x2930
	.4byte	.Ldebug_ranges0+0x278
	.byte	0x3f
	.4byte	0x2931
	.4byte	.LLST62
	.byte	0x40
	.4byte	0x293e
	.4byte	.Ldebug_ranges0+0x298
	.byte	0x3f
	.4byte	0x293f
	.4byte	.LLST63
	.byte	0x3f
	.4byte	0x294c
	.4byte	.LLST64
	.byte	0x3f
	.4byte	0x2959
	.4byte	.LLST65
	.byte	0x3c
	.4byte	0x2a31
	.4byte	.LBB142
	.4byte	.Ldebug_ranges0+0x2b8
	.byte	0x1
	.2byte	0x1ec
	.byte	0x11
	.4byte	0x24ae
	.byte	0x3d
	.4byte	0x2a4c
	.4byte	.LLST66
	.byte	0x3d
	.4byte	0x2a3f
	.4byte	.LLST67
	.byte	0x3e
	.4byte	.Ldebug_ranges0+0x2b8
	.byte	0x3f
	.4byte	0x2a59
	.4byte	.LLST68
	.byte	0x3f
	.4byte	0x2a66
	.4byte	.LLST69
	.byte	0x3f
	.4byte	0x2a73
	.4byte	.LLST70
	.byte	0x3f
	.4byte	0x2a80
	.4byte	.LLST71
	.byte	0x3f
	.4byte	0x2a8d
	.4byte	.LLST72
	.byte	0x3f
	.4byte	0x2a9a
	.4byte	.LLST73
	.byte	0x3f
	.4byte	0x2aa7
	.4byte	.LLST74
	.byte	0x4f
	.4byte	0x2ab4
	.4byte	.Ldebug_ranges0+0x2d8
	.4byte	0x240e
	.byte	0x3f
	.4byte	0x2ab5
	.4byte	.LLST75
	.byte	0x3f
	.4byte	0x2ac2
	.4byte	.LLST76
	.byte	0x50
	.4byte	0x2e0f
	.4byte	.LBB145
	.4byte	.Ldebug_ranges0+0x308
	.byte	0x1
	.2byte	0x18f
	.byte	0xd
	.byte	0x3d
	.4byte	0x2e36
	.4byte	.LLST77
	.byte	0x3d
	.4byte	0x2e2b
	.4byte	.LLST78
	.byte	0x3d
	.4byte	0x2e20
	.4byte	.LLST79
	.byte	0x3e
	.4byte	.Ldebug_ranges0+0x308
	.byte	0x3f
	.4byte	0x2e40
	.4byte	.LLST80
	.byte	0x3f
	.4byte	0x2e4b
	.4byte	.LLST81
	.byte	0x3f
	.4byte	0x2e56
	.4byte	.LLST82
	.byte	0x3f
	.4byte	0x2e61
	.4byte	.LLST83
	.byte	0x51
	.4byte	0x2e79
	.4byte	.LBB147
	.4byte	.LBE147-.LBB147
	.byte	0x2
	.byte	0x42
	.byte	0xa
	.4byte	0x237f
	.byte	0x3d
	.4byte	0x2e92
	.4byte	.LLST84
	.byte	0x3d
	.4byte	0x2e86
	.4byte	.LLST85
	.byte	0
	.byte	0x51
	.4byte	0x2e79
	.4byte	.LBB149
	.4byte	.LBE149-.LBB149
	.byte	0x2
	.byte	0x44
	.byte	0xa
	.4byte	0x23a2
	.byte	0x3d
	.4byte	0x2e92
	.4byte	.LLST86
	.byte	0x43
	.4byte	0x2e86
	.byte	0
	.byte	0x51
	.4byte	0x2e79
	.4byte	.LBB151
	.4byte	.LBE151-.LBB151
	.byte	0x2
	.byte	0x46
	.byte	0xa
	.4byte	0x23c5
	.byte	0x3d
	.4byte	0x2e92
	.4byte	.LLST87
	.byte	0x43
	.4byte	0x2e86
	.byte	0
	.byte	0x51
	.4byte	0x2e79
	.4byte	.LBB153
	.4byte	.LBE153-.LBB153
	.byte	0x2
	.byte	0x48
	.byte	0xa
	.4byte	0x23e8
	.byte	0x3d
	.4byte	0x2e92
	.4byte	.LLST88
	.byte	0x43
	.4byte	0x2e86
	.byte	0
	.byte	0x52
	.4byte	0x2e79
	.4byte	.LBB155
	.4byte	.Ldebug_ranges0+0x320
	.byte	0x2
	.byte	0x4e
	.byte	0xa
	.byte	0x3d
	.4byte	0x2e92
	.4byte	.LLST89
	.byte	0x3d
	.4byte	0x2e86
	.4byte	.LLST90
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x34
	.4byte	.LVL142
	.4byte	0x32ec
	.byte	0x35
	.4byte	.LVL143
	.4byte	0x32f9
	.4byte	0x242e
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR22
	.byte	0
	.byte	0x35
	.4byte	.LVL146
	.4byte	0x324f
	.4byte	0x2445
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR22
	.byte	0
	.byte	0x35
	.4byte	.LVL150
	.4byte	0x3305
	.4byte	0x245c
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR22
	.byte	0
	.byte	0x34
	.4byte	.LVL151
	.4byte	0x3311
	.byte	0x35
	.4byte	.LVL152
	.4byte	0x3305
	.4byte	0x247c
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR22
	.byte	0
	.byte	0x35
	.4byte	.LVL153
	.4byte	0x3273
	.4byte	0x2493
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC21
	.byte	0
	.byte	0x34
	.4byte	.LVL226
	.4byte	0x32ec
	.byte	0x36
	.4byte	.LVL227
	.4byte	0x32f9
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x35
	.4byte	.LVL130
	.4byte	0x3273
	.4byte	0x24cb
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8b
	.byte	0
	.byte	0
	.byte	0x36
	.4byte	.LVL135
	.4byte	0x3273
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC20
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x4
	.byte	0x91
	.byte	0xec,0x7e
	.byte	0x6
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0x31
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x8b
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x35
	.4byte	.LVL124
	.4byte	0x3273
	.4byte	0x251a
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x4
	.byte	0x91
	.byte	0xe0,0x7e
	.byte	0x6
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x35
	.4byte	.LVL283
	.4byte	0x3273
	.4byte	0x2531
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.byte	0x36
	.4byte	.LVL284
	.4byte	0x29cf
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x3c
	.4byte	0x27fc
	.4byte	.LBB180
	.4byte	.Ldebug_ranges0+0x338
	.byte	0x1
	.2byte	0x2cf
	.byte	0x12
	.4byte	0x25b0
	.byte	0x3d
	.4byte	0x281b
	.4byte	.LLST91
	.byte	0x3d
	.4byte	0x2828
	.4byte	.LLST92
	.byte	0x3d
	.4byte	0x280e
	.4byte	.LLST93
	.byte	0x3c
	.4byte	0x2d8c
	.4byte	.LBB181
	.4byte	.Ldebug_ranges0+0x350
	.byte	0x1
	.2byte	0x221
	.byte	0xa
	.4byte	0x2598
	.byte	0x3d
	.4byte	0x2d9d
	.4byte	.LLST94
	.byte	0
	.byte	0x45
	.4byte	0x2835
	.4byte	.LBB184
	.4byte	.LBE184-.LBB184
	.byte	0x3f
	.4byte	0x2836
	.4byte	.LLST95
	.byte	0
	.byte	0
	.byte	0x35
	.4byte	.LVL112
	.4byte	0x3273
	.4byte	0x25cd
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x35
	.4byte	.LVL230
	.4byte	0x3273
	.4byte	0x25eb
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xa
	.2byte	0x9c4
	.byte	0
	.byte	0x35
	.4byte	.LVL262
	.4byte	0x331d
	.4byte	0x25fe
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x34
	.4byte	.LVL294
	.4byte	0x32ec
	.byte	0
	.byte	0x3b
	.4byte	.LBB226
	.4byte	.LBE226-.LBB226
	.4byte	0x266a
	.byte	0x33
	.string	"u"
	.byte	0x1
	.2byte	0x35d
	.byte	0xe
	.4byte	0x94
	.4byte	.LLST104
	.byte	0x37
	.4byte	0x2d8c
	.4byte	.LBB227
	.4byte	.LBE227-.LBB227
	.byte	0x1
	.2byte	0x35e
	.byte	0xe
	.4byte	0x2643
	.byte	0x3d
	.4byte	0x2d9d
	.4byte	.LLST105
	.byte	0
	.byte	0x35
	.4byte	.LVL302
	.4byte	0x2970
	.4byte	0x2660
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x4
	.byte	0x91
	.byte	0xd8,0x7e
	.byte	0x6
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x72
	.byte	0
	.byte	0x6
	.byte	0
	.byte	0x34
	.4byte	.LVL303
	.4byte	0x32e0
	.byte	0
	.byte	0x53
	.4byte	0x2ddf
	.4byte	.LBB98
	.4byte	.Ldebug_ranges0+0x80
	.byte	0x1
	.2byte	0x251
	.byte	0x5
	.byte	0x4e
	.4byte	0x2ddf
	.4byte	.LBB229
	.4byte	.LBE229-.LBB229
	.byte	0x1
	.2byte	0x376
	.byte	0x5
	.byte	0x34
	.4byte	.LVL59
	.4byte	0x3273
	.byte	0x35
	.4byte	.LVL60
	.4byte	0x2de8
	.4byte	0x26a8
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x34
	.4byte	.LVL64
	.4byte	0x32c8
	.byte	0x35
	.4byte	.LVL65
	.4byte	0x3273
	.4byte	0x26ce
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0
	.byte	0x34
	.4byte	.LVL66
	.4byte	0x2db0
	.byte	0x34
	.4byte	.LVL67
	.4byte	0x332a
	.byte	0x34
	.4byte	.LVL69
	.4byte	0x32ec
	.byte	0x34
	.4byte	.LVL81
	.4byte	0x32c8
	.byte	0x35
	.4byte	.LVL82
	.4byte	0x3273
	.4byte	0x270f
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC32
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0
	.byte	0x35
	.4byte	.LVL92
	.4byte	0x3273
	.4byte	0x2741
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x31
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x89
	.byte	0
	.byte	0x31
	.byte	0x1
	.byte	0x5e
	.byte	0x5
	.byte	0x83
	.byte	0
	.byte	0x89
	.byte	0
	.byte	0x1e
	.byte	0
	.byte	0x35
	.4byte	.LVL95
	.4byte	0x2de8
	.4byte	0x2754
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x35
	.4byte	.LVL96
	.4byte	0x3273
	.4byte	0x276b
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.byte	0x35
	.4byte	.LVL307
	.4byte	0x324f
	.4byte	0x2782
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR22
	.byte	0
	.byte	0x34
	.4byte	.LVL308
	.4byte	0x3336
	.byte	0x35
	.4byte	.LVL309
	.4byte	0x30cb
	.4byte	0x27b5
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x4d
	.4byte	0x2857
	.byte	0x5
	.byte	0x3
	.4byte	g_stream_urbs
	.byte	0x4d
	.4byte	0x2864
	.byte	0x5
	.byte	0x3
	.4byte	g_stream_iso_bufs
	.byte	0
	.byte	0x34
	.4byte	.LVL310
	.4byte	0x2db0
	.byte	0x35
	.4byte	.LVL311
	.4byte	0x2de8
	.4byte	0x27d5
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x91
	.byte	0xdc,0x7e
	.byte	0x94
	.byte	0x1
	.byte	0
	.byte	0x35
	.4byte	.LVL312
	.4byte	0x3273
	.4byte	0x27ec
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC30
	.byte	0
	.byte	0x30
	.4byte	.LVL313
	.4byte	0x3342
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.LASF309
	.byte	0x1
	.2byte	0x21f
	.byte	0xc
	.4byte	0x87a
	.byte	0x1
	.4byte	0x2843
	.byte	0x2c
	.string	"urb"
	.byte	0x1
	.2byte	0x21f
	.byte	0x2a
	.4byte	0x1275
	.byte	0x2a
	.4byte	.LASF310
	.byte	0x1
	.2byte	0x21f
	.byte	0x41
	.4byte	0x2843
	.byte	0x2a
	.4byte	.LASF311
	.byte	0x1
	.2byte	0x21f
	.byte	0x4f
	.4byte	0xa7
	.byte	0x48
	.byte	0x2b
	.string	"i"
	.byte	0x1
	.2byte	0x224
	.byte	0x12
	.4byte	0xa7
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x1275
	.byte	0x47
	.4byte	.LASF313
	.byte	0x1
	.2byte	0x20f
	.byte	0xd
	.byte	0x1
	.4byte	0x288c
	.byte	0x2a
	.4byte	.LASF310
	.byte	0x1
	.2byte	0x20f
	.byte	0x36
	.4byte	0x2843
	.byte	0x2a
	.4byte	.LASF314
	.byte	0x1
	.2byte	0x210
	.byte	0x2e
	.4byte	0x288c
	.byte	0x2a
	.4byte	.LASF315
	.byte	0x1
	.2byte	0x211
	.byte	0x2c
	.4byte	0xa7
	.byte	0x48
	.byte	0x2b
	.string	"u"
	.byte	0x1
	.2byte	0x213
	.byte	0x12
	.4byte	0xa7
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x12d
	.byte	0x54
	.4byte	.LASF401
	.byte	0x1
	.2byte	0x1f8
	.byte	0x6
	.byte	0x1
	.4byte	0x28c8
	.byte	0x2c
	.string	"arg"
	.byte	0x1
	.2byte	0x1f8
	.byte	0x24
	.4byte	0x223
	.byte	0x2a
	.4byte	.LASF316
	.byte	0x1
	.2byte	0x1f8
	.byte	0x2d
	.4byte	0x94
	.byte	0x2b
	.string	"urb"
	.byte	0x1
	.2byte	0x1fa
	.byte	0x16
	.4byte	0x1275
	.byte	0
	.byte	0x47
	.4byte	.LASF317
	.byte	0x1
	.2byte	0x1c2
	.byte	0xd
	.byte	0x1
	.4byte	0x296a
	.byte	0x2c
	.string	"urb"
	.byte	0x1
	.2byte	0x1c2
	.byte	0x34
	.4byte	0x1275
	.byte	0x2a
	.4byte	.LASF318
	.byte	0x1
	.2byte	0x1c2
	.byte	0x41
	.4byte	0xa7
	.byte	0x55
	.4byte	.LASF319
	.byte	0x1
	.2byte	0x1c8
	.byte	0xf
	.4byte	0xf0
	.byte	0x55
	.4byte	.LASF320
	.byte	0x1
	.2byte	0x1c9
	.byte	0xf
	.4byte	0xf0
	.byte	0x55
	.4byte	.LASF321
	.byte	0x1
	.2byte	0x1d0
	.byte	0xe
	.4byte	0xc9
	.byte	0x55
	.4byte	.LASF322
	.byte	0x1
	.2byte	0x1d8
	.byte	0x9
	.4byte	0x87a
	.byte	0x48
	.byte	0x2b
	.string	"i"
	.byte	0x1
	.2byte	0x1d9
	.byte	0x13
	.4byte	0xc9
	.byte	0x48
	.byte	0x2b
	.string	"pkt"
	.byte	0x1
	.2byte	0x1da
	.byte	0x27
	.4byte	0x296a
	.byte	0x48
	.byte	0x55
	.4byte	.LASF323
	.byte	0x1
	.2byte	0x1de
	.byte	0x16
	.4byte	0xc9
	.byte	0x55
	.4byte	.LASF324
	.byte	0x1
	.2byte	0x1e4
	.byte	0x17
	.4byte	0xf0
	.byte	0x55
	.4byte	.LASF325
	.byte	0x1
	.2byte	0x1e5
	.byte	0x17
	.4byte	0xf0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x579
	.byte	0x4a
	.4byte	.LASF327
	.byte	0x1
	.2byte	0x1b7
	.byte	0xd
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.byte	0x1
	.byte	0x9c
	.4byte	0x29cf
	.byte	0x2e
	.string	"urb"
	.byte	0x1
	.2byte	0x1b7
	.byte	0x32
	.4byte	0x1275
	.byte	0x1
	.byte	0x5a
	.byte	0x56
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x1b8
	.byte	0x36
	.4byte	0x7d9
	.byte	0x1
	.byte	0x5b
	.byte	0x2e
	.string	"ep"
	.byte	0x1
	.2byte	0x1b9
	.byte	0x41
	.4byte	0x7df
	.byte	0x1
	.byte	0x5c
	.byte	0x57
	.4byte	0x2d8c
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.byte	0x1
	.2byte	0x1bb
	.byte	0xa
	.byte	0x3d
	.4byte	0x2d9d
	.4byte	.LLST5
	.byte	0
	.byte	0
	.byte	0x4a
	.4byte	.LASF328
	.byte	0x1
	.2byte	0x1a2
	.byte	0xd
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.byte	0x1
	.byte	0x9c
	.4byte	0x2a31
	.byte	0x2e
	.string	"urb"
	.byte	0x1
	.2byte	0x1a2
	.byte	0x30
	.4byte	0x1275
	.byte	0x1
	.byte	0x5a
	.byte	0x2f
	.4byte	.LASF318
	.byte	0x1
	.2byte	0x1a2
	.byte	0x3d
	.4byte	0xa7
	.4byte	.LLST2
	.byte	0x39
	.4byte	.LASF321
	.byte	0x1
	.2byte	0x1a8
	.byte	0xe
	.4byte	0xc9
	.4byte	.LLST3
	.byte	0x58
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x33
	.string	"i"
	.byte	0x1
	.2byte	0x1b0
	.byte	0x13
	.4byte	0xc9
	.4byte	.LLST4
	.byte	0
	.byte	0
	.byte	0x47
	.4byte	.LASF329
	.byte	0x1
	.2byte	0x14c
	.byte	0xd
	.byte	0x1
	.4byte	0x2ad1
	.byte	0x2a
	.4byte	.LASF19
	.byte	0x1
	.2byte	0x14c
	.byte	0x2d
	.4byte	0x524
	.byte	0x2c
	.string	"len"
	.byte	0x1
	.2byte	0x14c
	.byte	0x3c
	.4byte	0xc9
	.byte	0x55
	.4byte	.LASF330
	.byte	0x1
	.2byte	0x152
	.byte	0xd
	.4byte	0xa7
	.byte	0x55
	.4byte	.LASF331
	.byte	0x1
	.2byte	0x153
	.byte	0xd
	.4byte	0xa7
	.byte	0x2b
	.string	"fid"
	.byte	0x1
	.2byte	0x15a
	.byte	0xd
	.4byte	0xa7
	.byte	0x2b
	.string	"eof"
	.byte	0x1
	.2byte	0x15b
	.byte	0xd
	.4byte	0xa7
	.byte	0x2b
	.string	"err"
	.byte	0x1
	.2byte	0x15c
	.byte	0xd
	.4byte	0xa7
	.byte	0x55
	.4byte	.LASF332
	.byte	0x1
	.2byte	0x15f
	.byte	0x14
	.4byte	0x524
	.byte	0x55
	.4byte	.LASF333
	.byte	0x1
	.2byte	0x160
	.byte	0xe
	.4byte	0xc9
	.byte	0x48
	.byte	0x55
	.4byte	.LASF334
	.byte	0x1
	.2byte	0x18c
	.byte	0x12
	.4byte	0xc9
	.byte	0x55
	.4byte	.LASF335
	.byte	0x1
	.2byte	0x18d
	.byte	0x12
	.4byte	0xc9
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.LASF336
	.byte	0x1
	.2byte	0x134
	.byte	0x11
	.4byte	0xbd
	.byte	0x1
	.4byte	0x2b16
	.byte	0x2c
	.string	"vc"
	.byte	0x1
	.2byte	0x134
	.byte	0x33
	.4byte	0x1175
	.byte	0x2c
	.string	"alt"
	.byte	0x1
	.2byte	0x134
	.byte	0x3f
	.4byte	0xa7
	.byte	0x2b
	.string	"ep"
	.byte	0x1
	.2byte	0x139
	.byte	0x25
	.4byte	0x7df
	.byte	0x55
	.4byte	.LASF337
	.byte	0x1
	.2byte	0x13b
	.byte	0xd
	.4byte	0xa7
	.byte	0
	.byte	0x29
	.4byte	.LASF338
	.byte	0x1
	.2byte	0x112
	.byte	0x10
	.4byte	0xa7
	.byte	0x1
	.4byte	0x2b9e
	.byte	0x2c
	.string	"vc"
	.byte	0x1
	.2byte	0x112
	.byte	0x35
	.4byte	0x1175
	.byte	0x55
	.4byte	.LASF339
	.byte	0x1
	.2byte	0x114
	.byte	0xd
	.4byte	0xa7
	.byte	0x55
	.4byte	.LASF340
	.byte	0x1
	.2byte	0x115
	.byte	0xe
	.4byte	0xbd
	.byte	0x55
	.4byte	.LASF341
	.byte	0x1
	.2byte	0x116
	.byte	0xd
	.4byte	0xa7
	.byte	0x55
	.4byte	.LASF342
	.byte	0x1
	.2byte	0x117
	.byte	0xe
	.4byte	0xbd
	.byte	0x48
	.byte	0x2b
	.string	"i"
	.byte	0x1
	.2byte	0x119
	.byte	0x12
	.4byte	0xa7
	.byte	0x48
	.byte	0x2b
	.string	"ep"
	.byte	0x1
	.2byte	0x11a
	.byte	0x29
	.4byte	0x7df
	.byte	0x55
	.4byte	.LASF337
	.byte	0x1
	.2byte	0x11d
	.byte	0x11
	.4byte	0xa7
	.byte	0x2b
	.string	"mps"
	.byte	0x1
	.2byte	0x120
	.byte	0x12
	.4byte	0xbd
	.byte	0
	.byte	0
	.byte	0
	.byte	0x59
	.4byte	.LASF343
	.byte	0x1
	.byte	0xe0
	.byte	0x11
	.4byte	0xc9
	.byte	0x1
	.4byte	0x2c30
	.byte	0x5a
	.string	"res"
	.byte	0x1
	.byte	0xe0
	.byte	0x50
	.4byte	0x1bf8
	.byte	0x5b
	.string	"n"
	.byte	0x1
	.byte	0xe2
	.byte	0xd
	.4byte	0xa7
	.byte	0x5c
	.4byte	.LASF344
	.byte	0x1
	.byte	0xee
	.byte	0xe
	.4byte	0xc9
	.byte	0x5c
	.4byte	.LASF345
	.byte	0x1
	.byte	0xef
	.byte	0xe
	.4byte	0xc9
	.byte	0x5c
	.4byte	.LASF346
	.byte	0x1
	.byte	0xf0
	.byte	0xe
	.4byte	0xc9
	.byte	0x5c
	.4byte	.LASF347
	.byte	0x1
	.byte	0xf1
	.byte	0xe
	.4byte	0xc9
	.byte	0x48
	.byte	0x5b
	.string	"i"
	.byte	0x1
	.byte	0xf3
	.byte	0x12
	.4byte	0xa7
	.byte	0x48
	.byte	0x5b
	.string	"iv"
	.byte	0x1
	.byte	0xf4
	.byte	0x12
	.4byte	0xc9
	.byte	0x5d
	.4byte	0x2c1e
	.byte	0x5c
	.4byte	.LASF348
	.byte	0x1
	.byte	0xf9
	.byte	0x16
	.4byte	0xc9
	.byte	0
	.byte	0x48
	.byte	0x55
	.4byte	.LASF348
	.byte	0x1
	.2byte	0x100
	.byte	0x16
	.4byte	0xc9
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x59
	.4byte	.LASF349
	.byte	0x1
	.byte	0x9d
	.byte	0xc
	.4byte	0x87a
	.byte	0x1
	.4byte	0x2d1a
	.byte	0x5a
	.string	"vc"
	.byte	0x1
	.byte	0x9d
	.byte	0x36
	.4byte	0x1175
	.byte	0x5e
	.4byte	.LASF350
	.byte	0x1
	.byte	0x9e
	.byte	0x2d
	.4byte	0x12d
	.byte	0x5e
	.4byte	.LASF351
	.byte	0x1
	.byte	0x9f
	.byte	0x2d
	.4byte	0x12d
	.byte	0x5e
	.4byte	.LASF352
	.byte	0x1
	.byte	0xa0
	.byte	0x2e
	.4byte	0x2d1a
	.byte	0x5e
	.4byte	.LASF353
	.byte	0x1
	.byte	0xa0
	.byte	0x3f
	.4byte	0x2d1a
	.byte	0x5c
	.4byte	.LASF354
	.byte	0x1
	.byte	0xa2
	.byte	0x9
	.4byte	0x94
	.byte	0x5c
	.4byte	.LASF355
	.byte	0x1
	.byte	0xa3
	.byte	0xd
	.4byte	0xa7
	.byte	0x5c
	.4byte	.LASF356
	.byte	0x1
	.byte	0xa4
	.byte	0xd
	.4byte	0xa7
	.byte	0x5c
	.4byte	.LASF357
	.byte	0x1
	.byte	0xa5
	.byte	0xe
	.4byte	0xbd
	.byte	0x5c
	.4byte	.LASF358
	.byte	0x1
	.byte	0xa5
	.byte	0x1a
	.4byte	0xbd
	.byte	0x48
	.byte	0x5b
	.string	"fi"
	.byte	0x1
	.byte	0xa7
	.byte	0x12
	.4byte	0xa7
	.byte	0x48
	.byte	0x5b
	.string	"fri"
	.byte	0x1
	.byte	0xab
	.byte	0x16
	.4byte	0xa7
	.byte	0x48
	.byte	0x5b
	.string	"w"
	.byte	0x1
	.byte	0xac
	.byte	0x16
	.4byte	0xbd
	.byte	0x5b
	.string	"h"
	.byte	0x1
	.byte	0xad
	.byte	0x16
	.4byte	0xbd
	.byte	0x5c
	.4byte	.LASF359
	.byte	0x1
	.byte	0xaf
	.byte	0x11
	.4byte	0x94
	.byte	0x48
	.byte	0x5b
	.string	"dw"
	.byte	0x1
	.byte	0xb4
	.byte	0x15
	.4byte	0x94
	.byte	0x5b
	.string	"dh"
	.byte	0x1
	.byte	0xb5
	.byte	0x15
	.4byte	0x94
	.byte	0x5c
	.4byte	.LASF360
	.byte	0x1
	.byte	0xb6
	.byte	0x15
	.4byte	0x94
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0xbd
	.byte	0x59
	.4byte	.LASF361
	.byte	0x1
	.byte	0x86
	.byte	0x13
	.4byte	0x87a
	.byte	0x3
	.4byte	0x2d56
	.byte	0x5e
	.4byte	.LASF362
	.byte	0x1
	.byte	0x86
	.byte	0x37
	.4byte	0x2843
	.byte	0x5c
	.4byte	.LASF363
	.byte	0x1
	.byte	0x88
	.byte	0xe
	.4byte	0xc9
	.byte	0x5c
	.4byte	.LASF364
	.byte	0x1
	.byte	0x89
	.byte	0xe
	.4byte	0xc9
	.byte	0
	.byte	0x59
	.4byte	.LASF365
	.byte	0x1
	.byte	0x79
	.byte	0x13
	.4byte	0x87a
	.byte	0x3
	.4byte	0x2d8c
	.byte	0x5a
	.string	"urb"
	.byte	0x1
	.byte	0x79
	.byte	0x3b
	.4byte	0x1275
	.byte	0x5c
	.4byte	.LASF364
	.byte	0x1
	.byte	0x7b
	.byte	0xe
	.4byte	0xc9
	.byte	0x5c
	.4byte	.LASF78
	.byte	0x1
	.byte	0x7c
	.byte	0xe
	.4byte	0xc9
	.byte	0
	.byte	0x59
	.4byte	.LASF366
	.byte	0x1
	.byte	0x74
	.byte	0x13
	.4byte	0x87a
	.byte	0x3
	.4byte	0x2daa
	.byte	0x5a
	.string	"urb"
	.byte	0x1
	.byte	0x74
	.byte	0x3a
	.4byte	0x2daa
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x6b2
	.byte	0x5f
	.4byte	.LASF367
	.byte	0x1
	.byte	0x6c
	.byte	0x14
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.byte	0x1
	.byte	0x9c
	.4byte	0x2ddf
	.byte	0x58
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.byte	0x60
	.string	"i"
	.byte	0x1
	.byte	0x6e
	.byte	0x12
	.4byte	0xa7
	.4byte	.LLST1
	.byte	0
	.byte	0
	.byte	0x61
	.4byte	.LASF369
	.byte	0x1
	.byte	0x66
	.byte	0x14
	.byte	0x3
	.byte	0x62
	.4byte	.LASF402
	.byte	0x1
	.byte	0x5e
	.byte	0xd
	.4byte	.LFB105
	.4byte	.LFE105-.LFB105
	.byte	0x1
	.byte	0x9c
	.4byte	0x2e0f
	.byte	0x63
	.4byte	.LASF370
	.byte	0x1
	.byte	0x5e
	.byte	0x2a
	.4byte	0x166
	.4byte	.LLST0
	.byte	0
	.byte	0x59
	.4byte	.LASF371
	.byte	0x2
	.byte	0x16
	.byte	0x15
	.4byte	0x223
	.byte	0x3
	.4byte	0x2e6d
	.byte	0x5a
	.string	"s1"
	.byte	0x2
	.byte	0x16
	.byte	0x26
	.4byte	0x223
	.byte	0x5a
	.string	"s2"
	.byte	0x2
	.byte	0x16
	.byte	0x36
	.4byte	0x281
	.byte	0x5a
	.string	"n"
	.byte	0x2
	.byte	0x16
	.byte	0x41
	.4byte	0x217
	.byte	0x5b
	.string	"b1"
	.byte	0x2
	.byte	0x18
	.byte	0xb
	.4byte	0x225
	.byte	0x5b
	.string	"b2"
	.byte	0x2
	.byte	0x19
	.byte	0x11
	.4byte	0x237
	.byte	0x5b
	.string	"w1"
	.byte	0x2
	.byte	0x1a
	.byte	0xf
	.4byte	0x2e6d
	.byte	0x5b
	.string	"w2"
	.byte	0x2
	.byte	0x1b
	.byte	0x15
	.4byte	0x2e73
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0xc9
	.byte	0xa
	.byte	0x4
	.4byte	0xda
	.byte	0x64
	.4byte	.LASF372
	.byte	0x2
	.byte	0xe
	.byte	0x14
	.byte	0x3
	.4byte	0x2e9d
	.byte	0x5e
	.4byte	.LASF373
	.byte	0x2
	.byte	0xe
	.byte	0x26
	.4byte	0x225
	.byte	0x5a
	.string	"w"
	.byte	0x2
	.byte	0xe
	.byte	0x35
	.4byte	0xc9
	.byte	0
	.byte	0x65
	.4byte	0x2892
	.4byte	.LFB119
	.4byte	.LFE119-.LFB119
	.byte	0x1
	.byte	0x9c
	.4byte	0x2f5a
	.byte	0x3d
	.4byte	0x28a0
	.4byte	.LLST6
	.byte	0x3d
	.4byte	0x28ad
	.4byte	.LLST7
	.byte	0x3f
	.4byte	0x28ba
	.4byte	.LLST8
	.byte	0x3c
	.4byte	0x2d56
	.4byte	.LBB15
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x201
	.byte	0x9
	.4byte	0x2f02
	.byte	0x3d
	.4byte	0x2d67
	.4byte	.LLST9
	.byte	0x3e
	.4byte	.Ldebug_ranges0+0
	.byte	0x3f
	.4byte	0x2d73
	.4byte	.LLST10
	.byte	0x3f
	.4byte	0x2d7f
	.4byte	.LLST11
	.byte	0
	.byte	0
	.byte	0x50
	.4byte	0x2892
	.4byte	.LBB18
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.2byte	0x1f8
	.byte	0x6
	.byte	0x3d
	.4byte	0x28ad
	.4byte	.LLST12
	.byte	0x3d
	.4byte	0x28a0
	.4byte	.LLST13
	.byte	0x3e
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x42
	.4byte	0x28ba
	.byte	0x35
	.4byte	.LVL21
	.4byte	0x3273
	.4byte	0x2f46
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x30
	.4byte	.LVL23
	.4byte	0x29cf
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x65
	.4byte	0x1417
	.4byte	.LFB137
	.4byte	.LFE137-.LFB137
	.byte	0x1
	.byte	0x9c
	.4byte	0x3038
	.byte	0x3d
	.4byte	0x1429
	.4byte	.LLST14
	.byte	0x3d
	.4byte	0x1436
	.4byte	.LLST15
	.byte	0x3f
	.4byte	0x1443
	.4byte	.LLST16
	.byte	0x37
	.4byte	0x1417
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.byte	0x1
	.2byte	0x478
	.byte	0xc
	.4byte	0x3024
	.byte	0x3d
	.4byte	0x1429
	.4byte	.LLST17
	.byte	0x3d
	.4byte	0x1436
	.4byte	.LLST18
	.byte	0x42
	.4byte	0x1443
	.byte	0x35
	.4byte	.LVL32
	.4byte	0x3273
	.4byte	0x2fcb
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x35
	.4byte	.LVL33
	.4byte	0x3273
	.4byte	0x2fe2
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0x35
	.4byte	.LVL34
	.4byte	0x3273
	.4byte	0x2ff9
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x35
	.4byte	.LVL35
	.4byte	0x3273
	.4byte	0x3010
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0x36
	.4byte	.LVL36
	.4byte	0x3273
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.byte	0
	.byte	0x36
	.4byte	.LVL29
	.4byte	0x3273
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.byte	0x65
	.4byte	0x1c1a
	.4byte	.LFB142
	.4byte	.LFE142-.LFB142
	.byte	0x1
	.byte	0x9c
	.4byte	0x3082
	.byte	0x30
	.4byte	.LVL39
	.4byte	0x334f
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	streaming_task
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x1800
	.byte	0x31
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x31
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x3e
	.byte	0x31
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR14
	.byte	0
	.byte	0
	.byte	0x65
	.4byte	0x1bfe
	.4byte	.LFB124
	.4byte	.LFE124-.LFB124
	.byte	0x1
	.byte	0x9c
	.4byte	0x30cb
	.byte	0x50
	.4byte	0x1bfe
	.4byte	.LBB38
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.2byte	0x391
	.byte	0xd
	.byte	0x40
	.4byte	0x1c0c
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x3f
	.4byte	0x1c0d
	.4byte	.LLST19
	.byte	0x36
	.4byte	.LVL43
	.4byte	0x331d
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x65
	.4byte	0x2849
	.4byte	.LFB147
	.4byte	.LFE147-.LFB147
	.byte	0x1
	.byte	0x9c
	.4byte	0x3125
	.byte	0x3d
	.4byte	0x2871
	.4byte	.LLST20
	.byte	0x66
	.4byte	0x2864
	.byte	0x6
	.byte	0x3
	.4byte	g_stream_iso_bufs
	.byte	0x9f
	.byte	0x66
	.4byte	0x2857
	.byte	0x6
	.byte	0x3
	.4byte	g_stream_urbs
	.byte	0x9f
	.byte	0x40
	.4byte	0x287e
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x3f
	.4byte	0x287f
	.4byte	.LLST21
	.byte	0x34
	.4byte	.LVL51
	.4byte	0x335c
	.byte	0x34
	.4byte	.LVL52
	.4byte	0x335c
	.byte	0
	.byte	0
	.byte	0x65
	.4byte	0x13dd
	.4byte	.LFB138
	.4byte	.LFE138-.LFB138
	.byte	0x1
	.byte	0x9c
	.4byte	0x31b5
	.byte	0x3d
	.4byte	0x13ef
	.4byte	.LLST161
	.byte	0x3d
	.4byte	0x13fc
	.4byte	.LLST162
	.byte	0x3f
	.4byte	0x1409
	.4byte	.LLST163
	.byte	0x3c
	.4byte	0x13dd
	.4byte	.LBB317
	.4byte	.Ldebug_ranges0+0x5e0
	.byte	0x1
	.2byte	0x48f
	.byte	0xc
	.4byte	0x3199
	.byte	0x3d
	.4byte	0x13ef
	.4byte	.LLST164
	.byte	0x3d
	.4byte	0x13fc
	.4byte	.LLST165
	.byte	0x3e
	.4byte	.Ldebug_ranges0+0x5e0
	.byte	0x42
	.4byte	0x1409
	.byte	0x36
	.4byte	.LVL449
	.4byte	0x3273
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC49
	.byte	0
	.byte	0
	.byte	0
	.byte	0x34
	.4byte	.LVL439
	.4byte	0x3273
	.byte	0x34
	.4byte	.LVL443
	.4byte	0x3273
	.byte	0x34
	.4byte	.LVL453
	.4byte	0x1590
	.byte	0
	.byte	0x65
	.4byte	0x13a3
	.4byte	.LFB139
	.4byte	.LFE139-.LFB139
	.byte	0x1
	.byte	0x9c
	.4byte	0x324f
	.byte	0x3d
	.4byte	0x13b5
	.4byte	.LLST167
	.byte	0x3d
	.4byte	0x13c2
	.4byte	.LLST168
	.byte	0x3f
	.4byte	0x13cf
	.4byte	.LLST169
	.byte	0x3c
	.4byte	0x13a3
	.4byte	.LBB327
	.4byte	.Ldebug_ranges0+0x600
	.byte	0x1
	.2byte	0x4ae
	.byte	0xc
	.4byte	0x3229
	.byte	0x3d
	.4byte	0x13b5
	.4byte	.LLST170
	.byte	0x3d
	.4byte	0x13c2
	.4byte	.LLST171
	.byte	0x3e
	.4byte	.Ldebug_ranges0+0x600
	.byte	0x42
	.4byte	0x13cf
	.byte	0x36
	.4byte	.LVL474
	.4byte	0x3273
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC53
	.byte	0
	.byte	0
	.byte	0
	.byte	0x34
	.4byte	.LVL468
	.4byte	0x3273
	.byte	0x34
	.4byte	.LVL478
	.4byte	0x152b
	.byte	0x36
	.4byte	.LVL482
	.4byte	0x3273
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC55
	.byte	0
	.byte	0
	.byte	0x67
	.4byte	.LASF374
	.4byte	.LASF374
	.byte	0x5
	.byte	0x27
	.byte	0x6
	.byte	0x67
	.4byte	.LASF375
	.4byte	.LASF375
	.byte	0x5
	.byte	0x34
	.byte	0x5
	.byte	0x67
	.4byte	.LASF376
	.4byte	.LASF376
	.byte	0x11
	.byte	0x50
	.byte	0x5
	.byte	0x67
	.4byte	.LASF377
	.4byte	.LASF377
	.byte	0x14
	.byte	0xc8
	.byte	0x5
	.byte	0x67
	.4byte	.LASF378
	.4byte	.LASF378
	.byte	0x11
	.byte	0x4b
	.byte	0x5
	.byte	0x67
	.4byte	.LASF379
	.4byte	.LASF379
	.byte	0x12
	.byte	0x7b
	.byte	0x19
	.byte	0x68
	.4byte	.LASF380
	.4byte	.LASF380
	.byte	0xd
	.2byte	0x114
	.byte	0x5
	.byte	0x67
	.4byte	.LASF381
	.4byte	.LASF381
	.byte	0x11
	.byte	0x52
	.byte	0x6
	.byte	0x67
	.4byte	.LASF382
	.4byte	.LASF382
	.byte	0x15
	.byte	0xb1
	.byte	0x8
	.byte	0x67
	.4byte	.LASF383
	.4byte	.LASF383
	.byte	0x16
	.byte	0x21
	.byte	0x8
	.byte	0x67
	.4byte	.LASF384
	.4byte	.LASF384
	.byte	0x17
	.byte	0xa5
	.byte	0xa
	.byte	0x67
	.4byte	.LASF385
	.4byte	.LASF385
	.byte	0xc
	.byte	0x63
	.byte	0x5
	.byte	0x67
	.4byte	.LASF386
	.4byte	.LASF386
	.byte	0xc
	.byte	0x6d
	.byte	0x5
	.byte	0x68
	.4byte	.LASF387
	.4byte	.LASF387
	.byte	0x9
	.2byte	0x5a8
	.byte	0xc
	.byte	0x67
	.4byte	.LASF388
	.4byte	.LASF388
	.byte	0x5
	.byte	0x2e
	.byte	0x6
	.byte	0x67
	.4byte	.LASF389
	.4byte	.LASF389
	.byte	0x5
	.byte	0x21
	.byte	0x5
	.byte	0x67
	.4byte	.LASF390
	.4byte	.LASF390
	.byte	0x5
	.byte	0x40
	.byte	0x5
	.byte	0x68
	.4byte	.LASF391
	.4byte	.LASF391
	.byte	0x9
	.2byte	0x31f
	.byte	0x6
	.byte	0x67
	.4byte	.LASF392
	.4byte	.LASF392
	.byte	0x5
	.byte	0x19
	.byte	0x5
	.byte	0x67
	.4byte	.LASF393
	.4byte	.LASF393
	.byte	0x5
	.byte	0x3a
	.byte	0x6
	.byte	0x68
	.4byte	.LASF394
	.4byte	.LASF394
	.byte	0x9
	.2byte	0x2e9
	.byte	0x6
	.byte	0x68
	.4byte	.LASF395
	.4byte	.LASF395
	.byte	0x9
	.2byte	0x168
	.byte	0x10
	.byte	0x67
	.4byte	.LASF396
	.4byte	.LASF396
	.byte	0x15
	.byte	0xb4
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
	.byte	0x35
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x13
	.byte	0x1
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
	.byte	0x9
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
	.byte	0xa
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
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
	.byte	0xc
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x26
	.byte	0
	.byte	0
	.byte	0
	.byte	0x14
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
	.byte	0x15
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
	.byte	0x16
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
	.byte	0x17
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
	.byte	0x18
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
	.byte	0x19
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
	.byte	0x38
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x1b
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
	.byte	0x1c
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x37
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x1d
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
	.byte	0x1e
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
	.byte	0x1f
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
	.byte	0x20
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
	.byte	0x21
	.byte	0x13
	.byte	0x1
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
	.byte	0x22
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
	.byte	0x23
	.byte	0x17
	.byte	0x1
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
	.byte	0x24
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
	.byte	0
	.byte	0
	.byte	0x25
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0x5
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
	.byte	0x26
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x27
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
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x29
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
	.byte	0x2a
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
	.byte	0x2b
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
	.byte	0x2c
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
	.byte	0x2d
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
	.byte	0x2e
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
	.byte	0x2f
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
	.byte	0x30
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
	.byte	0x31
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x32
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
	.byte	0x33
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
	.byte	0x34
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x35
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
	.byte	0x36
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x37
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
	.byte	0x38
	.byte	0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0x39
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
	.byte	0x3a
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
	.byte	0x3b
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
	.byte	0x3c
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
	.byte	0x3d
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x3e
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x3f
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x40
	.byte	0xb
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x41
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x42
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x43
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x44
	.byte	0xb
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x45
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
	.byte	0x46
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
	.byte	0x47
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
	.byte	0x48
	.byte	0xb
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x49
	.byte	0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0x4a
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
	.byte	0x4b
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
	.byte	0x4c
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x4d
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x4e
	.byte	0x1d
	.byte	0
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
	.byte	0x50
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
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x52
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
	.byte	0x53
	.byte	0x1d
	.byte	0
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
	.byte	0x54
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
	.byte	0x55
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
	.byte	0x56
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
	.byte	0x57
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
	.byte	0x58
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
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
	.byte	0x20
	.byte	0xb
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
	.byte	0
	.byte	0
	.byte	0x5b
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
	.byte	0x5c
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
	.byte	0x5d
	.byte	0xb
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x5e
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
	.byte	0x5f
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
	.byte	0x60
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
	.byte	0x61
	.byte	0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0x62
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x63
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
	.byte	0x64
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
	.byte	0x65
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
	.byte	0x66
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x67
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
	.byte	0x68
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
.LLST174:
	.4byte	.LVL485
	.4byte	.LVL486-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL486-1
	.4byte	.LFE134
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST172:
	.4byte	.LVL483
	.4byte	.LVL484-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL484-1
	.4byte	.LFE133
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST173:
	.4byte	.LVL483
	.4byte	.LVL484-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL484-1
	.4byte	.LFE133
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST166:
	.4byte	.LVL459
	.4byte	.LVL460
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL460
	.4byte	.LVL461-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL462
	.4byte	.LVL463
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL463
	.4byte	.LVL464-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST160:
	.4byte	.LVL431
	.4byte	.LVL432
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL432
	.4byte	.LVL433-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL434
	.4byte	.LVL435-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST159:
	.4byte	.LVL424
	.4byte	.LVL425
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL426
	.4byte	.LVL427
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL427
	.4byte	.LFE127
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST158:
	.4byte	.LVL419
	.4byte	.LVL420
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL420
	.4byte	.LFE126
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST106:
	.4byte	.LVL314
	.4byte	.LVL317
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL317
	.4byte	.LVL356
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL356
	.4byte	.LVL359
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL359
	.4byte	.LVL403
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL403
	.4byte	.LVL409
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL409
	.4byte	.LVL413
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL413
	.4byte	.LFE125
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST107:
	.4byte	.LVL315
	.4byte	.LVL357
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL359
	.4byte	.LVL399
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL399
	.4byte	.LVL401-1
	.2byte	0x5
	.byte	0x3
	.4byte	g_cam_mode
	.4byte	.LVL409
	.4byte	.LVL412
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST108:
	.4byte	.LVL316
	.4byte	.LVL358
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL359
	.4byte	.LVL406
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL409
	.4byte	.LVL416
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST109:
	.4byte	.LVL323
	.4byte	.LVL334
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL334
	.4byte	.LVL355
	.2byte	0x3
	.byte	0x87
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL377
	.4byte	.LVL388
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL388
	.4byte	.LVL408
	.2byte	0x3
	.byte	0x87
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL412
	.4byte	.LVL418
	.2byte	0x3
	.byte	0x87
	.byte	0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST110:
	.4byte	.LVL324
	.4byte	.LVL339
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL377
	.4byte	.LVL388
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST111:
	.4byte	.LVL324
	.4byte	.LVL355
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL377
	.4byte	.LVL404
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL412
	.4byte	.LVL414
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST112:
	.4byte	.LVL324
	.4byte	.LVL355
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL377
	.4byte	.LVL405
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL412
	.4byte	.LVL415
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST113:
	.4byte	.LVL326
	.4byte	.LVL355
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL388
	.4byte	.LVL407
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL412
	.4byte	.LVL417
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST114:
	.4byte	.LVL332
	.4byte	.LVL333-1
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST115:
	.4byte	.LVL335
	.4byte	.LVL338
	.2byte	0x12
	.byte	0x7f
	.byte	0
	.byte	0x8
	.byte	0x2c
	.byte	0x1e
	.byte	0x87
	.byte	0
	.byte	0xa
	.2byte	0x214
	.byte	0x1e
	.byte	0x22
	.byte	0x78
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x60
	.byte	0x9f
	.4byte	.LVL338
	.4byte	.LVL339
	.2byte	0x12
	.byte	0x85
	.byte	0x7f
	.byte	0x8
	.byte	0x2c
	.byte	0x1e
	.byte	0x87
	.byte	0
	.byte	0xa
	.2byte	0x214
	.byte	0x1e
	.byte	0x22
	.byte	0x78
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x60
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST116:
	.4byte	.LVL347
	.4byte	.LVL348
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL348
	.4byte	.LVL350
	.2byte	0x6
	.byte	0xc
	.4byte	0xf4240
	.byte	0x9f
	.4byte	.LVL350
	.4byte	.LVL351
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL392
	.4byte	.LVL394
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST117:
	.4byte	.LVL353
	.4byte	.LVL354
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL354
	.4byte	.LVL355-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL394
	.4byte	.LVL397
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST118:
	.4byte	.LVL395
	.4byte	.LVL398-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST119:
	.4byte	.LVL396
	.4byte	.LVL400
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST157:
	.4byte	.LVL392
	.4byte	.LVL394
	.2byte	0xf
	.byte	0xc
	.4byte	0x989680
	.byte	0xf7
	.byte	0x25
	.byte	0x85
	.byte	0
	.byte	0xf7
	.byte	0x25
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST120:
	.4byte	.LVL319
	.4byte	.LVL324
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+6027
	.byte	0
	.4byte	.LVL359
	.4byte	.LVL377
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+6027
	.byte	0
	.4byte	.LVL411
	.4byte	.LVL412
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+6027
	.byte	0
	.4byte	0
	.4byte	0
.LLST121:
	.4byte	.LVL319
	.4byte	.LVL324
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+6012
	.byte	0
	.4byte	.LVL359
	.4byte	.LVL377
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+6012
	.byte	0
	.4byte	.LVL411
	.4byte	.LVL412
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+6012
	.byte	0
	.4byte	0
	.4byte	0
.LLST122:
	.4byte	.LVL319
	.4byte	.LVL324
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+5995
	.byte	0
	.4byte	.LVL359
	.4byte	.LVL377
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+5995
	.byte	0
	.4byte	.LVL411
	.4byte	.LVL412
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+5995
	.byte	0
	.4byte	0
	.4byte	0
.LLST123:
	.4byte	.LVL319
	.4byte	.LVL324
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+5978
	.byte	0
	.4byte	.LVL359
	.4byte	.LVL377
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+5978
	.byte	0
	.4byte	.LVL411
	.4byte	.LVL412
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+5978
	.byte	0
	.4byte	0
	.4byte	0
.LLST124:
	.4byte	.LVL319
	.4byte	.LVL324
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL359
	.4byte	.LVL377
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL411
	.4byte	.LVL412
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST125:
	.4byte	.LVL319
	.4byte	.LVL320
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL320
	.4byte	.LVL324
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL359
	.4byte	.LVL377
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL411
	.4byte	.LVL412
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST126:
	.4byte	.LVL319
	.4byte	.LVL320
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL320
	.4byte	.LVL321
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL359
	.4byte	.LVL371
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL372
	.4byte	.LVL377
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL411
	.4byte	.LVL412
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST127:
	.4byte	.LVL319
	.4byte	.LVL320
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL320
	.4byte	.LVL322
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL359
	.4byte	.LVL370
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL372
	.4byte	.LVL377
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL411
	.4byte	.LVL412
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST128:
	.4byte	.LVL319
	.4byte	.LVL320
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL320
	.4byte	.LVL324
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL359
	.4byte	.LVL369
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL372
	.4byte	.LVL377
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL411
	.4byte	.LVL412
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST129:
	.4byte	.LVL319
	.4byte	.LVL320
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL320
	.4byte	.LVL324
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL359
	.4byte	.LVL368
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL372
	.4byte	.LVL377
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL411
	.4byte	.LVL412
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST130:
	.4byte	.LVL319
	.4byte	.LVL320
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL320
	.4byte	.LVL324
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL359
	.4byte	.LVL362
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL363
	.4byte	.LVL377
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL411
	.4byte	.LVL412
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST131:
	.4byte	.LVL360
	.4byte	.LVL361
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL364
	.4byte	.LVL373
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL374
	.4byte	.LVL377
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL411
	.4byte	.LVL412
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST132:
	.4byte	.LVL365
	.4byte	.LVL377
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL411
	.4byte	.LVL412
	.2byte	0x1
	.byte	0x61
	.4byte	0
	.4byte	0
.LLST133:
	.4byte	.LVL366
	.4byte	.LVL377
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL411
	.4byte	.LVL412
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST134:
	.4byte	.LVL367
	.4byte	.LVL375
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL376
	.4byte	.LVL377
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST135:
	.4byte	.LVL325
	.4byte	.LVL326
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL377
	.4byte	.LVL388
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST136:
	.4byte	.LVL325
	.4byte	.LVL326
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL377
	.4byte	.LVL385
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL386
	.4byte	.LVL388
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST137:
	.4byte	.LVL325
	.4byte	.LVL326
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL377
	.4byte	.LVL388
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST138:
	.4byte	.LVL325
	.4byte	.LVL326
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL377
	.4byte	.LVL383
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL384
	.4byte	.LVL388
	.2byte	0x1
	.byte	0x61
	.4byte	0
	.4byte	0
.LLST139:
	.4byte	.LVL325
	.4byte	.LVL326
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL377
	.4byte	.LVL386
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL386
	.4byte	.LVL387
	.2byte	0x3
	.byte	0x7d
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL387
	.4byte	.LVL388
	.2byte	0x3
	.byte	0x7b
	.byte	0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST140:
	.4byte	.LVL377
	.4byte	.LVL378
	.2byte	0x18
	.byte	0x7d
	.byte	0
	.byte	0x8
	.byte	0x25
	.byte	0x1e
	.byte	0x78
	.byte	0xd
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0xa
	.2byte	0x26c
	.byte	0x1e
	.byte	0x22
	.byte	0x78
	.byte	0
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.byte	0x49
	.byte	0x9f
	.4byte	.LVL378
	.4byte	.LVL379
	.2byte	0x13
	.byte	0x7d
	.byte	0
	.byte	0x8
	.byte	0x25
	.byte	0x1e
	.byte	0x7f
	.byte	0
	.byte	0xa
	.2byte	0x26c
	.byte	0x1e
	.byte	0x22
	.byte	0x78
	.byte	0
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.byte	0x49
	.byte	0x9f
	.4byte	.LVL379
	.4byte	.LVL387
	.2byte	0x18
	.byte	0x7d
	.byte	0
	.byte	0x8
	.byte	0x25
	.byte	0x1e
	.byte	0x78
	.byte	0xd
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0xa
	.2byte	0x26c
	.byte	0x1e
	.byte	0x22
	.byte	0x78
	.byte	0
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.byte	0x49
	.byte	0x9f
	.4byte	.LVL387
	.4byte	.LVL388
	.2byte	0x18
	.byte	0x7d
	.byte	0x7f
	.byte	0x8
	.byte	0x25
	.byte	0x1e
	.byte	0x78
	.byte	0xd
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0xa
	.2byte	0x26c
	.byte	0x1e
	.byte	0x22
	.byte	0x78
	.byte	0
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.byte	0x49
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST141:
	.4byte	.LVL380
	.4byte	.LVL381
	.2byte	0xb
	.byte	0x7e
	.byte	0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x3b
	.byte	0x26
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL381
	.4byte	.LVL387
	.2byte	0x3e
	.byte	0x7d
	.byte	0
	.byte	0x76
	.byte	0
	.byte	0x1e
	.byte	0x78
	.byte	0xd
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8c
	.byte	0
	.byte	0x1e
	.byte	0x22
	.byte	0x78
	.byte	0
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.byte	0x4e
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x7d
	.byte	0
	.byte	0x76
	.byte	0
	.byte	0x1e
	.byte	0x78
	.byte	0xd
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8c
	.byte	0
	.byte	0x1e
	.byte	0x22
	.byte	0x78
	.byte	0
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.byte	0x4d
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x3b
	.byte	0x26
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL387
	.4byte	.LVL388
	.2byte	0x3e
	.byte	0x7d
	.byte	0x7f
	.byte	0x76
	.byte	0
	.byte	0x1e
	.byte	0x78
	.byte	0xd
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8c
	.byte	0
	.byte	0x1e
	.byte	0x22
	.byte	0x78
	.byte	0
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.byte	0x4e
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x7d
	.byte	0x7f
	.byte	0x76
	.byte	0
	.byte	0x1e
	.byte	0x78
	.byte	0xd
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8c
	.byte	0
	.byte	0x1e
	.byte	0x22
	.byte	0x78
	.byte	0
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.byte	0x4d
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x3b
	.byte	0x26
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST142:
	.4byte	.LVL382
	.4byte	.LVL388
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST143:
	.4byte	.LVL326
	.4byte	.LVL332
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST144:
	.4byte	.LVL326
	.4byte	.LVL332
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST145:
	.4byte	.LVL327
	.4byte	.LVL328
	.2byte	0x1b
	.byte	0x86
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x25
	.byte	0x1e
	.byte	0x78
	.byte	0xd
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0xa
	.2byte	0x26c
	.byte	0x1e
	.byte	0x22
	.byte	0x78
	.byte	0
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.byte	0x49
	.byte	0x9f
	.4byte	.LVL328
	.4byte	.LVL329
	.2byte	0x16
	.byte	0x86
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x25
	.byte	0x1e
	.byte	0x7f
	.byte	0
	.byte	0xa
	.2byte	0x26c
	.byte	0x1e
	.byte	0x22
	.byte	0x78
	.byte	0
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.byte	0x49
	.byte	0x9f
	.4byte	.LVL329
	.4byte	.LVL332
	.2byte	0x1b
	.byte	0x86
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x25
	.byte	0x1e
	.byte	0x78
	.byte	0xd
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0xa
	.2byte	0x26c
	.byte	0x1e
	.byte	0x22
	.byte	0x78
	.byte	0
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.byte	0x49
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST146:
	.4byte	.LVL330
	.4byte	.LVL331
	.2byte	0xb
	.byte	0x7e
	.byte	0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x3b
	.byte	0x26
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL331
	.4byte	.LVL332
	.2byte	0x3e
	.byte	0x86
	.byte	0
	.byte	0x76
	.byte	0
	.byte	0x1e
	.byte	0x78
	.byte	0xd
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8c
	.byte	0
	.byte	0x1e
	.byte	0x22
	.byte	0x78
	.byte	0
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.byte	0x4e
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x86
	.byte	0
	.byte	0x76
	.byte	0
	.byte	0x1e
	.byte	0x78
	.byte	0xd
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8c
	.byte	0
	.byte	0x1e
	.byte	0x22
	.byte	0x78
	.byte	0
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.byte	0x4d
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x3b
	.byte	0x26
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST148:
	.4byte	.LVL336
	.4byte	.LVL337
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST149:
	.4byte	.LVL337
	.4byte	.LVL340
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL340
	.4byte	.LVL347
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL388
	.4byte	.LVL392
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST150:
	.4byte	.LVL337
	.4byte	.LVL340
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL340
	.4byte	.LVL343
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL344
	.4byte	.LVL347
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL388
	.4byte	.LVL392
	.2byte	0x1
	.byte	0x61
	.4byte	0
	.4byte	0
.LLST151:
	.4byte	.LVL337
	.4byte	.LVL340
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL340
	.4byte	.LVL347
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL388
	.4byte	.LVL391
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST152:
	.4byte	.LVL337
	.4byte	.LVL340
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL340
	.4byte	.LVL347
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL388
	.4byte	.LVL390
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST153:
	.4byte	.LVL337
	.4byte	.LVL340
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL340
	.4byte	.LVL344
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL344
	.4byte	.LVL345
	.2byte	0x3
	.byte	0x7a
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL388
	.4byte	.LVL392
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST154:
	.4byte	.LVL341
	.4byte	.LVL346
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL346
	.4byte	.LVL347
	.2byte	0x7
	.byte	0x7a
	.byte	0x7f
	.byte	0x32
	.byte	0x24
	.byte	0x7f
	.byte	0
	.byte	0x22
	.4byte	.LVL388
	.4byte	.LVL392
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST155:
	.4byte	.LVL342
	.4byte	.LVL344
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST156:
	.4byte	.LVL389
	.4byte	.LVL392
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL57
	.4byte	.LVL61
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL64-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL64-1
	.4byte	.LFE122
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL61
	.4byte	.LVL64-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL62
	.4byte	.LVL64-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL64-1
	.4byte	.LVL312
	.2byte	0x3
	.byte	0x91
	.byte	0xd8,0x7e
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL62
	.4byte	.LVL312
	.2byte	0x2
	.byte	0x72
	.byte	0
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL62
	.4byte	.LVL312
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL68
	.4byte	.LVL97
	.2byte	0xa
	.byte	0x9e
	.byte	0x8
	.8byte	0
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0xa
	.byte	0x91
	.byte	0xa0,0x7f
	.byte	0x93
	.byte	0x4
	.byte	0x91
	.byte	0xa4,0x7f
	.byte	0x93
	.byte	0x4
	.4byte	.LVL98
	.4byte	.LVL108
	.2byte	0xa
	.byte	0x9e
	.byte	0x8
	.8byte	0
	.4byte	.LVL108
	.4byte	.LVL231
	.2byte	0xa
	.byte	0x91
	.byte	0xa0,0x7f
	.byte	0x93
	.byte	0x4
	.byte	0x91
	.byte	0xa4,0x7f
	.byte	0x93
	.byte	0x4
	.4byte	.LVL231
	.4byte	.LVL232
	.2byte	0x6
	.byte	0x64
	.byte	0x93
	.byte	0x4
	.byte	0x65
	.byte	0x93
	.byte	0x4
	.4byte	.LVL244
	.4byte	.LVL263
	.2byte	0x6
	.byte	0x64
	.byte	0x93
	.byte	0x4
	.byte	0x65
	.byte	0x93
	.byte	0x4
	.4byte	.LVL268
	.4byte	.LVL272
	.2byte	0x6
	.byte	0x64
	.byte	0x93
	.byte	0x4
	.byte	0x65
	.byte	0x93
	.byte	0x4
	.4byte	.LVL272
	.4byte	.LVL276
	.2byte	0xa
	.byte	0x9e
	.byte	0x8
	.8byte	0
	.4byte	.LVL276
	.4byte	.LVL295
	.2byte	0xa
	.byte	0x91
	.byte	0xa0,0x7f
	.byte	0x93
	.byte	0x4
	.byte	0x91
	.byte	0xa4,0x7f
	.byte	0x93
	.byte	0x4
	.4byte	.LVL295
	.4byte	.LVL298
	.2byte	0x6
	.byte	0x64
	.byte	0x93
	.byte	0x4
	.byte	0x65
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL68
	.4byte	.LVL97
	.2byte	0xa
	.byte	0x9e
	.byte	0x8
	.8byte	0
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0xa
	.byte	0x91
	.byte	0xa8,0x7f
	.byte	0x93
	.byte	0x4
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0x93
	.byte	0x4
	.4byte	.LVL98
	.4byte	.LVL108
	.2byte	0xa
	.byte	0x9e
	.byte	0x8
	.8byte	0
	.4byte	.LVL108
	.4byte	.LVL231
	.2byte	0xa
	.byte	0x91
	.byte	0xa8,0x7f
	.byte	0x93
	.byte	0x4
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0x93
	.byte	0x4
	.4byte	.LVL231
	.4byte	.LVL233
	.2byte	0x6
	.byte	0x66
	.byte	0x93
	.byte	0x4
	.byte	0x67
	.byte	0x93
	.byte	0x4
	.4byte	.LVL245
	.4byte	.LVL263
	.2byte	0x6
	.byte	0x66
	.byte	0x93
	.byte	0x4
	.byte	0x67
	.byte	0x93
	.byte	0x4
	.4byte	.LVL268
	.4byte	.LVL272
	.2byte	0x6
	.byte	0x66
	.byte	0x93
	.byte	0x4
	.byte	0x67
	.byte	0x93
	.byte	0x4
	.4byte	.LVL272
	.4byte	.LVL276
	.2byte	0xa
	.byte	0x9e
	.byte	0x8
	.8byte	0
	.4byte	.LVL276
	.4byte	.LVL295
	.2byte	0xa
	.byte	0x91
	.byte	0xa8,0x7f
	.byte	0x93
	.byte	0x4
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0x93
	.byte	0x4
	.4byte	.LVL295
	.4byte	.LVL298
	.2byte	0x6
	.byte	0x66
	.byte	0x93
	.byte	0x4
	.byte	0x67
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL71
	.4byte	.LVL247
	.2byte	0x3
	.byte	0x91
	.byte	0x80,0x7f
	.4byte	.LVL247
	.4byte	.LVL249
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL249
	.4byte	.LVL295
	.2byte	0x3
	.byte	0x91
	.byte	0x80,0x7f
	.4byte	.LVL295
	.4byte	.LVL296
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL296
	.4byte	.LVL312
	.2byte	0x3
	.byte	0x91
	.byte	0x80,0x7f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL70
	.4byte	.LVL90
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LVL272
	.2byte	0x3
	.byte	0x91
	.byte	0xe8,0x7e
	.4byte	.LVL272
	.4byte	.LVL276
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL276
	.4byte	.LVL312
	.2byte	0x3
	.byte	0x91
	.byte	0xe8,0x7e
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL70
	.4byte	.LVL90
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LVL272
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL272
	.4byte	.LVL276
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL276
	.4byte	.LVL312
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL70
	.4byte	.LVL90
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL93
	.4byte	.LVL272
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL272
	.4byte	.LVL276
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL276
	.4byte	.LVL312
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL70
	.4byte	.LVL90
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LVL272
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL272
	.4byte	.LVL276
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL276
	.4byte	.LVL312
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL83
	.2byte	0x3
	.byte	0x83
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LVL93
	.2byte	0x3
	.byte	0x83
	.byte	0x7f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL71
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL85
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL272
	.4byte	.LVL276
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL72
	.4byte	.LVL312
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL73
	.4byte	.LVL75-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL75-1
	.4byte	.LVL78
	.2byte	0x3
	.byte	0x91
	.byte	0xe8,0x7e
	.4byte	.LVL85
	.4byte	.LVL312
	.2byte	0x3
	.byte	0x91
	.byte	0xe8,0x7e
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL73
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL85
	.4byte	.LVL312
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL74
	.4byte	.LVL75-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL75-1
	.4byte	.LVL78
	.2byte	0x3
	.byte	0x91
	.byte	0xe0,0x7e
	.4byte	.LVL85
	.4byte	.LVL97
	.2byte	0x3
	.byte	0x91
	.byte	0xe0,0x7e
	.4byte	.LVL98
	.4byte	.LVL108
	.2byte	0x3
	.byte	0x91
	.byte	0xe0,0x7e
	.4byte	.LVL272
	.4byte	.LVL276
	.2byte	0x3
	.byte	0x91
	.byte	0xe0,0x7e
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL77
	.4byte	.LVL78-1
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL76
	.4byte	.LVL78
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL272
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL272
	.4byte	.LVL276
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL276
	.4byte	.LVL312
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL85
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL89
	.4byte	.LVL92-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL272
	.4byte	.LVL276
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL94
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL98
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL99
	.4byte	.LVL101-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL106
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL103
	.4byte	.LVL104-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL100
	.4byte	.LVL101-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL106
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL108
	.4byte	.LVL113
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL113
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL120
	.4byte	.LVL228
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL228
	.4byte	.LVL272
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL276
	.4byte	.LVL291
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL291
	.4byte	.LVL298
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL108
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL117
	.4byte	.LVL228
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL276
	.4byte	.LVL291
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL228
	.4byte	.LVL232
	.2byte	0x6
	.byte	0x64
	.byte	0x93
	.byte	0x4
	.byte	0x65
	.byte	0x93
	.byte	0x4
	.4byte	.LVL292
	.4byte	.LVL298
	.2byte	0x6
	.byte	0x64
	.byte	0x93
	.byte	0x4
	.byte	0x65
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL228
	.4byte	.LVL233
	.2byte	0x6
	.byte	0x66
	.byte	0x93
	.byte	0x4
	.byte	0x67
	.byte	0x93
	.byte	0x4
	.4byte	.LVL293
	.4byte	.LVL298
	.2byte	0x6
	.byte	0x66
	.byte	0x93
	.byte	0x4
	.byte	0x67
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL228
	.4byte	.LVL229
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL294
	.4byte	.LVL296
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST103:
	.4byte	.LVL287
	.4byte	.LVL288
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL288
	.4byte	.LVL289-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST96:
	.4byte	.LVL248
	.4byte	.LVL249
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL256
	.4byte	.LVL257
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL257
	.4byte	.LVL258-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL270
	.4byte	.LVL272
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST97:
	.4byte	.LVL235
	.4byte	.LVL236
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL236
	.4byte	.LVL239
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL239
	.4byte	.LVL240-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL240-1
	.4byte	.LVL241
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL241
	.4byte	.LVL242
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL263
	.4byte	.LVL268
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST98:
	.4byte	.LVL266
	.4byte	.LVL267
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL267
	.4byte	.LVL268
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST99:
	.4byte	.LVL237
	.4byte	.LVL238
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST100:
	.4byte	.LVL248
	.4byte	.LVL249
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL249
	.4byte	.LVL251-1
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL251-1
	.4byte	.LVL260
	.2byte	0x3
	.byte	0x91
	.byte	0xec,0x7e
	.4byte	.LVL268
	.4byte	.LVL271
	.2byte	0x3
	.byte	0x91
	.byte	0xec,0x7e
	.4byte	.LVL271
	.4byte	.LVL272
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST101:
	.4byte	.LVL250
	.4byte	.LVL251-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL251-1
	.4byte	.LVL254
	.2byte	0x3
	.byte	0x91
	.byte	0xe4,0x7e
	.4byte	.LVL268
	.4byte	.LVL270
	.2byte	0x3
	.byte	0x91
	.byte	0xe4,0x7e
	.4byte	0
	.4byte	0
.LLST102:
	.4byte	.LVL252
	.4byte	.LVL253
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL253
	.4byte	.LVL255-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL268
	.4byte	.LVL270
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL113
	.4byte	.LVL120
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+7973
	.byte	0
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL114
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x3
	.byte	0x7f
	.byte	0x7f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL121
	.4byte	.LVL228
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL277
	.4byte	.LVL284
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL121
	.4byte	.LVL228
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL277
	.4byte	.LVL284
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL122
	.4byte	.LVL228
	.2byte	0x3
	.byte	0x91
	.byte	0xf0,0x7e
	.4byte	.LVL278
	.4byte	.LVL279
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL279
	.4byte	.LVL282
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL282
	.4byte	.LVL283-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL283-1
	.4byte	.LVL284
	.2byte	0x3
	.byte	0x91
	.byte	0xf0,0x7e
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL121
	.4byte	.LVL124-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL124-1
	.4byte	.LVL228
	.2byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.4byte	.LVL280
	.4byte	.LVL281
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL281
	.4byte	.LVL284
	.2byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL123
	.4byte	.LVL124-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL124-1
	.4byte	.LVL124
	.2byte	0x3
	.byte	0x91
	.byte	0xe0,0x7e
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL125
	.4byte	.LVL228
	.2byte	0x3
	.byte	0x91
	.byte	0xe0,0x7e
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL125
	.4byte	.LVL126
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL126
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL129
	.4byte	.LVL147
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL147
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL149
	.4byte	.LVL228
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL125
	.4byte	.LVL126
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL126
	.4byte	.LVL148
	.2byte	0x3
	.byte	0x91
	.byte	0xec,0x7e
	.4byte	.LVL148
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL149
	.4byte	.LVL228
	.2byte	0x3
	.byte	0x91
	.byte	0xec,0x7e
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL128
	.4byte	.LVL148
	.2byte	0xc
	.byte	0x91
	.byte	0xec,0x7e
	.byte	0x6
	.byte	0x23
	.byte	0x4
	.byte	0x34
	.byte	0x24
	.byte	0x84
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL149
	.4byte	.LVL228
	.2byte	0xc
	.byte	0x91
	.byte	0xec,0x7e
	.byte	0x6
	.byte	0x23
	.byte	0x4
	.byte	0x34
	.byte	0x24
	.byte	0x84
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL129
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL149
	.4byte	.LVL228
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL132
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL136
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL149
	.4byte	.LVL225
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL133
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL134
	.4byte	.LVL135
	.2byte	0x6
	.byte	0x87
	.byte	0
	.byte	0x8b
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL136
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL137
	.4byte	.LVL147
	.2byte	0x6
	.byte	0x87
	.byte	0
	.byte	0x8b
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL149
	.4byte	.LVL225
	.2byte	0x6
	.byte	0x87
	.byte	0
	.byte	0x8b
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL138
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL149
	.4byte	.LVL228
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL138
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL149
	.4byte	.LVL225
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL139
	.4byte	.LVL145
	.2byte	0x3
	.byte	0x91
	.byte	0xe4,0x7e
	.4byte	.LVL149
	.4byte	.LVL228
	.2byte	0x3
	.byte	0x91
	.byte	0xe4,0x7e
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL139
	.4byte	.LVL142-1
	.2byte	0x2
	.byte	0x87
	.byte	0x1
	.4byte	.LVL142-1
	.4byte	.LVL147
	.2byte	0x3
	.byte	0x91
	.byte	0x84,0x7f
	.4byte	.LVL149
	.4byte	.LVL228
	.2byte	0x3
	.byte	0x91
	.byte	0x84,0x7f
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL140
	.4byte	.LVL142-1
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL142-1
	.4byte	.LVL144
	.2byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.4byte	.LVL144
	.4byte	.LVL147
	.2byte	0x7
	.byte	0x91
	.byte	0x84,0x7f
	.byte	0x6
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL149
	.4byte	.LVL228
	.2byte	0x7
	.byte	0x91
	.byte	0x84,0x7f
	.byte	0x6
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL140
	.4byte	.LVL142-1
	.2byte	0x9
	.byte	0x87
	.byte	0x1
	.byte	0x94
	.byte	0x1
	.byte	0x31
	.byte	0x25
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL142-1
	.4byte	.LVL147
	.2byte	0xa
	.byte	0x91
	.byte	0x84,0x7f
	.byte	0x94
	.byte	0x1
	.byte	0x31
	.byte	0x25
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL149
	.4byte	.LVL228
	.2byte	0xa
	.byte	0x91
	.byte	0x84,0x7f
	.byte	0x94
	.byte	0x1
	.byte	0x31
	.byte	0x25
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL141
	.4byte	.LVL142-1
	.2byte	0x9
	.byte	0x87
	.byte	0x1
	.byte	0x94
	.byte	0x1
	.byte	0x36
	.byte	0x25
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL142-1
	.4byte	.LVL147
	.2byte	0xa
	.byte	0x91
	.byte	0x84,0x7f
	.byte	0x94
	.byte	0x1
	.byte	0x36
	.byte	0x25
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL149
	.4byte	.LVL228
	.2byte	0xa
	.byte	0x91
	.byte	0x84,0x7f
	.byte	0x94
	.byte	0x1
	.byte	0x36
	.byte	0x25
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL141
	.4byte	.LVL145
	.2byte	0x8
	.byte	0x87
	.byte	0
	.byte	0x91
	.byte	0xe4,0x7e
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL149
	.4byte	.LVL225
	.2byte	0x8
	.byte	0x87
	.byte	0
	.byte	0x91
	.byte	0xe4,0x7e
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL141
	.4byte	.LVL145
	.2byte	0x8
	.byte	0x8b
	.byte	0
	.byte	0x91
	.byte	0xe4,0x7e
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL149
	.4byte	.LVL228
	.2byte	0x8
	.byte	0x8b
	.byte	0
	.byte	0x91
	.byte	0xe4,0x7e
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL154
	.4byte	.LVL155
	.2byte	0x7
	.byte	0x49
	.byte	0x3c
	.byte	0x24
	.byte	0x7f
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL155
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL156
	.4byte	.LVL158
	.2byte	0x7
	.byte	0x49
	.byte	0x3c
	.byte	0x24
	.byte	0x7f
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL158
	.4byte	.LVL159
	.2byte	0xb
	.byte	0x49
	.byte	0x3c
	.byte	0x24
	.byte	0x3
	.4byte	g_cur_frame+4
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL156
	.4byte	.LVL177
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL178
	.4byte	.LVL224
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL157
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL159
	.4byte	.LVL160
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL160
	.4byte	.LVL162
	.2byte	0x9
	.byte	0x7c
	.byte	0
	.byte	0x7e
	.byte	0
	.byte	0x22
	.byte	0x7d
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL164
	.4byte	.LVL165
	.2byte	0x6
	.byte	0x7e
	.byte	0
	.byte	0x7b
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL165
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL166
	.4byte	.LVL168
	.2byte	0x6
	.byte	0x7e
	.byte	0
	.byte	0x7b
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL169
	.4byte	.LVL171
	.2byte	0x7
	.byte	0x80
	.byte	0
	.byte	0x20
	.byte	0x7e
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL171
	.4byte	.LVL172
	.2byte	0x6
	.byte	0x7e
	.byte	0
	.byte	0x80
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL172
	.4byte	.LVL174
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL174
	.4byte	.LVL175
	.2byte	0x3
	.byte	0x7e
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL175
	.4byte	.LVL176
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL178
	.4byte	.LVL181
	.2byte	0x9
	.byte	0x7c
	.byte	0
	.byte	0x7e
	.byte	0
	.byte	0x22
	.byte	0x7d
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL181
	.4byte	.LVL184
	.2byte	0xb
	.byte	0x7c
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x1c
	.byte	0x7e
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x10
	.byte	0x9f
	.4byte	.LVL184
	.4byte	.LVL186
	.2byte	0x9
	.byte	0x7c
	.byte	0
	.byte	0x7e
	.byte	0
	.byte	0x22
	.byte	0x7d
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL188
	.4byte	.LVL189
	.2byte	0x6
	.byte	0x7e
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL189
	.4byte	.LVL191
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL191
	.4byte	.LVL193
	.2byte	0x7
	.byte	0x80
	.byte	0
	.byte	0x20
	.byte	0x7e
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL193
	.4byte	.LVL194
	.2byte	0x6
	.byte	0x7e
	.byte	0
	.byte	0x80
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL194
	.4byte	.LVL195
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL195
	.4byte	.LVL196
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL196
	.4byte	.LVL197
	.2byte	0x6
	.byte	0x7e
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL197
	.4byte	.LVL198
	.2byte	0x8
	.byte	0x7e
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x1c
	.byte	0x34
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL198
	.4byte	.LVL199
	.2byte	0x6
	.byte	0x7e
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL199
	.4byte	.LVL201
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL201
	.4byte	.LVL202
	.2byte	0x3
	.byte	0x7e
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL202
	.4byte	.LVL203
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL203
	.4byte	.LVL212
	.2byte	0x9
	.byte	0x7c
	.byte	0
	.byte	0x7e
	.byte	0
	.byte	0x22
	.byte	0x7d
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL212
	.4byte	.LVL217
	.2byte	0xb
	.byte	0x7c
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x1c
	.byte	0x7e
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x10
	.byte	0x9f
	.4byte	.LVL217
	.4byte	.LVL218
	.2byte	0x9
	.byte	0x7c
	.byte	0
	.byte	0x7e
	.byte	0
	.byte	0x22
	.byte	0x7d
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL218
	.4byte	.LVL219
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL219
	.4byte	.LVL221
	.2byte	0x6
	.byte	0x7e
	.byte	0
	.byte	0x7b
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL221
	.4byte	.LVL223
	.2byte	0x8
	.byte	0x7e
	.byte	0
	.byte	0x7b
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0x4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL157
	.4byte	.LVL176
	.2byte	0x8
	.byte	0x87
	.byte	0
	.byte	0x91
	.byte	0xe4,0x7e
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL178
	.4byte	.LVL224
	.2byte	0x8
	.byte	0x87
	.byte	0
	.byte	0x91
	.byte	0xe4,0x7e
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LVL157
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL157
	.4byte	.LVL160
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL160
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL164
	.4byte	.LVL167
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL169
	.4byte	.LVL170
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x80
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL170
	.4byte	.LVL171
	.2byte	0x8
	.byte	0x7f
	.byte	0
	.byte	0x80
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL171
	.4byte	.LVL172
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x80
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL172
	.4byte	.LVL175
	.2byte	0x3
	.byte	0x7b
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL175
	.4byte	.LVL176
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL178
	.4byte	.LVL188
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL191
	.4byte	.LVL192
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x80
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL192
	.4byte	.LVL193
	.2byte	0x8
	.byte	0x7f
	.byte	0
	.byte	0x80
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL193
	.4byte	.LVL194
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x80
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL194
	.4byte	.LVL195
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL199
	.4byte	.LVL202
	.2byte	0x3
	.byte	0x7b
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL202
	.4byte	.LVL203
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL203
	.4byte	.LVL205
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL205
	.4byte	.LVL207
	.2byte	0x3
	.byte	0x7f
	.byte	0x70
	.byte	0x9f
	.4byte	.LVL217
	.4byte	.LVL218
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL218
	.4byte	.LVL220
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL220
	.4byte	.LVL223
	.2byte	0x3
	.byte	0x7d
	.byte	0x7c
	.byte	0x9f
	.4byte	.LVL223
	.4byte	.LVL224
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL157
	.4byte	.LVL159
	.2byte	0x8
	.byte	0x87
	.byte	0
	.byte	0x91
	.byte	0xe4,0x7e
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL159
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL169
	.4byte	.LVL170
	.2byte	0x6
	.byte	0x7c
	.byte	0
	.byte	0x80
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL170
	.4byte	.LVL171
	.2byte	0x8
	.byte	0x7c
	.byte	0
	.byte	0x80
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL171
	.4byte	.LVL172
	.2byte	0x6
	.byte	0x7c
	.byte	0
	.byte	0x80
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL172
	.4byte	.LVL173
	.2byte	0x3
	.byte	0x7c
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL173
	.4byte	.LVL176
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL178
	.4byte	.LVL187
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL191
	.4byte	.LVL192
	.2byte	0x6
	.byte	0x7c
	.byte	0
	.byte	0x80
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL192
	.4byte	.LVL193
	.2byte	0x8
	.byte	0x7c
	.byte	0
	.byte	0x80
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL193
	.4byte	.LVL194
	.2byte	0x6
	.byte	0x7c
	.byte	0
	.byte	0x80
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL194
	.4byte	.LVL195
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL199
	.4byte	.LVL200
	.2byte	0x3
	.byte	0x7c
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL200
	.4byte	.LVL218
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LVL178
	.4byte	.LVL179
	.2byte	0x3
	.byte	0x7f
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL179
	.4byte	.LVL180
	.2byte	0x3
	.byte	0x7f
	.byte	0x8
	.byte	0x9f
	.4byte	.LVL180
	.4byte	.LVL183
	.2byte	0x3
	.byte	0x7f
	.byte	0xc
	.byte	0x9f
	.4byte	.LVL183
	.4byte	.LVL185
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL188
	.4byte	.LVL190
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL195
	.4byte	.LVL198
	.2byte	0x8
	.byte	0x7f
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL198
	.4byte	.LVL199
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST83:
	.4byte	.LVL160
	.4byte	.LVL162
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL164
	.4byte	.LVL168
	.2byte	0x6
	.byte	0x7c
	.byte	0
	.byte	0x7b
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL178
	.4byte	.LVL179
	.2byte	0x3
	.byte	0x7d
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL179
	.4byte	.LVL180
	.2byte	0x3
	.byte	0x7d
	.byte	0x8
	.byte	0x9f
	.4byte	.LVL180
	.4byte	.LVL181
	.2byte	0x3
	.byte	0x7d
	.byte	0xc
	.byte	0x9f
	.4byte	.LVL181
	.4byte	.LVL182
	.2byte	0x3
	.byte	0x7d
	.byte	0x7c
	.byte	0x9f
	.4byte	.LVL182
	.4byte	.LVL186
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL188
	.4byte	.LVL190
	.2byte	0x6
	.byte	0x7c
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL195
	.4byte	.LVL198
	.2byte	0x8
	.byte	0x7c
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL198
	.4byte	.LVL199
	.2byte	0x6
	.byte	0x7c
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL203
	.4byte	.LVL207
	.2byte	0x3
	.byte	0x7d
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL207
	.4byte	.LVL210
	.2byte	0x3
	.byte	0x7d
	.byte	0x8
	.byte	0x9f
	.4byte	.LVL210
	.4byte	.LVL212
	.2byte	0x3
	.byte	0x7d
	.byte	0xc
	.byte	0x9f
	.4byte	.LVL212
	.4byte	.LVL214
	.2byte	0x3
	.byte	0x7d
	.byte	0x7c
	.byte	0x9f
	.4byte	.LVL214
	.4byte	.LVL218
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL218
	.4byte	.LVL221
	.2byte	0x8
	.byte	0x7c
	.byte	0
	.byte	0x7b
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL221
	.4byte	.LVL224
	.2byte	0x6
	.byte	0x7c
	.byte	0
	.byte	0x7b
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST84:
	.4byte	.LVL204
	.4byte	.LVL206
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST85:
	.4byte	.LVL204
	.4byte	.LVL205
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL205
	.4byte	.LVL207
	.2byte	0x3
	.byte	0x7f
	.byte	0x70
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST86:
	.4byte	.LVL208
	.4byte	.LVL209
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST87:
	.4byte	.LVL211
	.4byte	.LVL213
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST88:
	.4byte	.LVL215
	.4byte	.LVL216
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST89:
	.4byte	.LVL219
	.4byte	.LVL222
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST90:
	.4byte	.LVL219
	.4byte	.LVL220
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL220
	.4byte	.LVL223
	.2byte	0x3
	.byte	0x7d
	.byte	0x7c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST91:
	.4byte	.LVL108
	.4byte	.LVL111
	.2byte	0x6
	.byte	0x3
	.4byte	g_stream_urbs
	.byte	0x9f
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x6
	.byte	0x3
	.4byte	g_stream_urbs
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST92:
	.4byte	.LVL108
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST93:
	.4byte	.LVL108
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST94:
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST95:
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST104:
	.4byte	.LVL299
	.4byte	.LVL304
	.2byte	0x3
	.byte	0x91
	.byte	0xdc,0x7e
	.4byte	.LVL305
	.4byte	.LVL306
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST105:
	.4byte	.LVL300
	.4byte	.LVL301
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL7
	.4byte	.LFE116
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LFE107
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1-1
	.4byte	.LVL1
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LFE105
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL13
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL22
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23-1
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LFE119
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL13
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL19
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LFE119
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL13
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL22
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23-1
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LFE119
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL14
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL15
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x6
	.byte	0x7c
	.byte	0x1
	.byte	0x8
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL19
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL22
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23-1
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL25
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28
	.4byte	.LVL37
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LFE137
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL27
	.4byte	.LVL37
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL38
	.4byte	.LFE137
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL26
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL37
	.4byte	.LFE137
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL30
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL30
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x6
	.byte	0x8
	.byte	0x28
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x6
	.byte	0x8
	.byte	0x27
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x6
	.byte	0x8
	.byte	0x29
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL48
	.4byte	.LFE147
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL50
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x3
	.byte	0x78
	.byte	0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST161:
	.4byte	.LVL436
	.4byte	.LVL437
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL437
	.4byte	.LVL440
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL440
	.4byte	.LVL441
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL441
	.4byte	.LVL444
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL444
	.4byte	.LVL448
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL448
	.4byte	.LVL450
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL450
	.4byte	.LVL453-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL453-1
	.4byte	.LFE138
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST162:
	.4byte	.LVL436
	.4byte	.LVL438
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL438
	.4byte	.LVL440
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL440
	.4byte	.LVL442
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL442
	.4byte	.LVL444
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL444
	.4byte	.LVL447
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL447
	.4byte	.LVL450
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL450
	.4byte	.LVL451
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL451
	.4byte	.LVL452
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL452
	.4byte	.LVL453-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL453-1
	.4byte	.LFE138
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST163:
	.4byte	.LVL453
	.4byte	.LVL454
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL455
	.4byte	.LVL456
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST164:
	.4byte	.LVL445
	.4byte	.LVL448
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL448
	.4byte	.LVL449
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL450
	.4byte	.LVL452
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST165:
	.4byte	.LVL445
	.4byte	.LVL447
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL447
	.4byte	.LVL449
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL450
	.4byte	.LVL451
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL451
	.4byte	.LVL452
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST167:
	.4byte	.LVL465
	.4byte	.LVL466
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL466
	.4byte	.LVL469
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL469
	.4byte	.LVL473
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL473
	.4byte	.LVL475
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL475
	.4byte	.LVL478-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL478-1
	.4byte	.LFE139
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST168:
	.4byte	.LVL465
	.4byte	.LVL467
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL467
	.4byte	.LVL469
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL469
	.4byte	.LVL472
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL472
	.4byte	.LVL475
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL475
	.4byte	.LVL476
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL476
	.4byte	.LVL477
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL477
	.4byte	.LVL478-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL478-1
	.4byte	.LFE139
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST169:
	.4byte	.LVL478
	.4byte	.LVL479
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL480
	.4byte	.LVL481
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST170:
	.4byte	.LVL470
	.4byte	.LVL473
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL473
	.4byte	.LVL474
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL475
	.4byte	.LVL477
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST171:
	.4byte	.LVL470
	.4byte	.LVL472
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL472
	.4byte	.LVL474
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL475
	.4byte	.LVL476
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL476
	.4byte	.LVL477
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xcc
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB105
	.4byte	.LFE105-.LFB105
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.4byte	.LFB119
	.4byte	.LFE119-.LFB119
	.4byte	.LFB137
	.4byte	.LFE137-.LFB137
	.4byte	.LFB142
	.4byte	.LFE142-.LFB142
	.4byte	.LFB124
	.4byte	.LFE124-.LFB124
	.4byte	.LFB147
	.4byte	.LFE147-.LFB147
	.4byte	.LFB122
	.4byte	.LFE122-.LFB122
	.4byte	.LFB125
	.4byte	.LFE125-.LFB125
	.4byte	.LFB126
	.4byte	.LFE126-.LFB126
	.4byte	.LFB127
	.4byte	.LFE127-.LFB127
	.4byte	.LFB128
	.4byte	.LFE128-.LFB128
	.4byte	.LFB129
	.4byte	.LFE129-.LFB129
	.4byte	.LFB130
	.4byte	.LFE130-.LFB130
	.4byte	.LFB131
	.4byte	.LFE131-.LFB131
	.4byte	.LFB138
	.4byte	.LFE138-.LFB138
	.4byte	.LFB132
	.4byte	.LFE132-.LFB132
	.4byte	.LFB139
	.4byte	.LFE139-.LFB139
	.4byte	.LFB133
	.4byte	.LFE133-.LFB133
	.4byte	.LFB134
	.4byte	.LFE134-.LFB134
	.4byte	.LFB135
	.4byte	.LFE135-.LFB135
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	0
	.4byte	0
	.4byte	.LBB18
	.4byte	.LBE18
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
	.4byte	.LBB38
	.4byte	.LBE38
	.4byte	.LBB41
	.4byte	.LBE41
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
	.4byte	.LBB98
	.4byte	.LBE98
	.4byte	.LBB102
	.4byte	.LBE102
	.4byte	.LBB103
	.4byte	.LBE103
	.4byte	0
	.4byte	0
	.4byte	.LBB104
	.4byte	.LBE104
	.4byte	.LBB118
	.4byte	.LBE118
	.4byte	.LBB119
	.4byte	.LBE119
	.4byte	.LBB224
	.4byte	.LBE224
	.4byte	0
	.4byte	0
	.4byte	.LBB105
	.4byte	.LBE105
	.4byte	.LBB115
	.4byte	.LBE115
	.4byte	.LBB116
	.4byte	.LBE116
	.4byte	.LBB117
	.4byte	.LBE117
	.4byte	0
	.4byte	0
	.4byte	.LBB106
	.4byte	.LBE106
	.4byte	.LBB112
	.4byte	.LBE112
	.4byte	.LBB113
	.4byte	.LBE113
	.4byte	.LBB114
	.4byte	.LBE114
	.4byte	0
	.4byte	0
	.4byte	.LBB107
	.4byte	.LBE107
	.4byte	.LBB108
	.4byte	.LBE108
	.4byte	.LBB109
	.4byte	.LBE109
	.4byte	.LBB110
	.4byte	.LBE110
	.4byte	.LBB111
	.4byte	.LBE111
	.4byte	0
	.4byte	0
	.4byte	.LBB120
	.4byte	.LBE120
	.4byte	.LBB129
	.4byte	.LBE129
	.4byte	.LBB130
	.4byte	.LBE130
	.4byte	.LBB220
	.4byte	.LBE220
	.4byte	0
	.4byte	0
	.4byte	.LBB121
	.4byte	.LBE121
	.4byte	.LBB125
	.4byte	.LBE125
	.4byte	.LBB126
	.4byte	.LBE126
	.4byte	.LBB127
	.4byte	.LBE127
	.4byte	.LBB128
	.4byte	.LBE128
	.4byte	0
	.4byte	0
	.4byte	.LBB122
	.4byte	.LBE122
	.4byte	.LBB123
	.4byte	.LBE123
	.4byte	.LBB124
	.4byte	.LBE124
	.4byte	0
	.4byte	0
	.4byte	.LBB131
	.4byte	.LBE131
	.4byte	.LBB218
	.4byte	.LBE218
	.4byte	.LBB219
	.4byte	.LBE219
	.4byte	.LBB221
	.4byte	.LBE221
	.4byte	.LBB222
	.4byte	.LBE222
	.4byte	.LBB223
	.4byte	.LBE223
	.4byte	.LBB225
	.4byte	.LBE225
	.4byte	0
	.4byte	0
	.4byte	.LBB132
	.4byte	.LBE132
	.4byte	.LBB136
	.4byte	.LBE136
	.4byte	.LBB187
	.4byte	.LBE187
	.4byte	0
	.4byte	0
	.4byte	.LBB137
	.4byte	.LBE137
	.4byte	.LBB186
	.4byte	.LBE186
	.4byte	.LBB189
	.4byte	.LBE189
	.4byte	.LBB190
	.4byte	.LBE190
	.4byte	.LBB215
	.4byte	.LBE215
	.4byte	0
	.4byte	0
	.4byte	.LBB139
	.4byte	.LBE139
	.4byte	.LBB173
	.4byte	.LBE173
	.4byte	.LBB174
	.4byte	.LBE174
	.4byte	.LBB175
	.4byte	.LBE175
	.4byte	0
	.4byte	0
	.4byte	.LBB140
	.4byte	.LBE140
	.4byte	.LBB171
	.4byte	.LBE171
	.4byte	.LBB172
	.4byte	.LBE172
	.4byte	0
	.4byte	0
	.4byte	.LBB141
	.4byte	.LBE141
	.4byte	.LBB169
	.4byte	.LBE169
	.4byte	.LBB170
	.4byte	.LBE170
	.4byte	0
	.4byte	0
	.4byte	.LBB142
	.4byte	.LBE142
	.4byte	.LBB167
	.4byte	.LBE167
	.4byte	.LBB168
	.4byte	.LBE168
	.4byte	0
	.4byte	0
	.4byte	.LBB144
	.4byte	.LBE144
	.4byte	.LBB161
	.4byte	.LBE161
	.4byte	.LBB162
	.4byte	.LBE162
	.4byte	.LBB163
	.4byte	.LBE163
	.4byte	.LBB164
	.4byte	.LBE164
	.4byte	0
	.4byte	0
	.4byte	.LBB145
	.4byte	.LBE145
	.4byte	.LBB160
	.4byte	.LBE160
	.4byte	0
	.4byte	0
	.4byte	.LBB155
	.4byte	.LBE155
	.4byte	.LBB158
	.4byte	.LBE158
	.4byte	0
	.4byte	0
	.4byte	.LBB180
	.4byte	.LBE180
	.4byte	.LBB188
	.4byte	.LBE188
	.4byte	0
	.4byte	0
	.4byte	.LBB181
	.4byte	.LBE181
	.4byte	.LBB185
	.4byte	.LBE185
	.4byte	0
	.4byte	0
	.4byte	.LBB191
	.4byte	.LBE191
	.4byte	.LBB214
	.4byte	.LBE214
	.4byte	.LBB217
	.4byte	.LBE217
	.4byte	0
	.4byte	0
	.4byte	.LBB192
	.4byte	.LBE192
	.4byte	.LBB198
	.4byte	.LBE198
	.4byte	.LBB199
	.4byte	.LBE199
	.4byte	.LBB212
	.4byte	.LBE212
	.4byte	0
	.4byte	0
	.4byte	.LBB193
	.4byte	.LBE193
	.4byte	.LBB196
	.4byte	.LBE196
	.4byte	.LBB197
	.4byte	.LBE197
	.4byte	0
	.4byte	0
	.4byte	.LBB202
	.4byte	.LBE202
	.4byte	.LBB211
	.4byte	.LBE211
	.4byte	.LBB213
	.4byte	.LBE213
	.4byte	0
	.4byte	0
	.4byte	.LBB203
	.4byte	.LBE203
	.4byte	.LBB208
	.4byte	.LBE208
	.4byte	.LBB209
	.4byte	.LBE209
	.4byte	.LBB210
	.4byte	.LBE210
	.4byte	0
	.4byte	0
	.4byte	.LBB204
	.4byte	.LBE204
	.4byte	.LBB205
	.4byte	.LBE205
	.4byte	.LBB206
	.4byte	.LBE206
	.4byte	.LBB207
	.4byte	.LBE207
	.4byte	0
	.4byte	0
	.4byte	.LBB252
	.4byte	.LBE252
	.4byte	.LBB283
	.4byte	.LBE283
	.4byte	.LBB300
	.4byte	.LBE300
	.4byte	.LBB308
	.4byte	.LBE308
	.4byte	0
	.4byte	0
	.4byte	.LBB254
	.4byte	.LBE254
	.4byte	.LBB268
	.4byte	.LBE268
	.4byte	.LBB269
	.4byte	.LBE269
	.4byte	.LBB270
	.4byte	.LBE270
	.4byte	0
	.4byte	0
	.4byte	.LBB255
	.4byte	.LBE255
	.4byte	.LBB264
	.4byte	.LBE264
	.4byte	.LBB265
	.4byte	.LBE265
	.4byte	.LBB266
	.4byte	.LBE266
	.4byte	.LBB267
	.4byte	.LBE267
	.4byte	0
	.4byte	0
	.4byte	.LBB256
	.4byte	.LBE256
	.4byte	.LBB260
	.4byte	.LBE260
	.4byte	.LBB261
	.4byte	.LBE261
	.4byte	.LBB262
	.4byte	.LBE262
	.4byte	.LBB263
	.4byte	.LBE263
	.4byte	0
	.4byte	0
	.4byte	.LBB257
	.4byte	.LBE257
	.4byte	.LBB258
	.4byte	.LBE258
	.4byte	.LBB259
	.4byte	.LBE259
	.4byte	0
	.4byte	0
	.4byte	.LBB274
	.4byte	.LBE274
	.4byte	.LBB284
	.4byte	.LBE284
	.4byte	.LBB301
	.4byte	.LBE301
	.4byte	0
	.4byte	0
	.4byte	.LBB276
	.4byte	.LBE276
	.4byte	.LBB279
	.4byte	.LBE279
	.4byte	.LBB280
	.4byte	.LBE280
	.4byte	0
	.4byte	0
	.4byte	.LBB277
	.4byte	.LBE277
	.4byte	.LBB278
	.4byte	.LBE278
	.4byte	0
	.4byte	0
	.4byte	.LBB287
	.4byte	.LBE287
	.4byte	.LBB299
	.4byte	.LBE299
	.4byte	.LBB302
	.4byte	.LBE302
	.4byte	0
	.4byte	0
	.4byte	.LBB289
	.4byte	.LBE289
	.4byte	.LBB295
	.4byte	.LBE295
	.4byte	.LBB296
	.4byte	.LBE296
	.4byte	0
	.4byte	0
	.4byte	.LBB290
	.4byte	.LBE290
	.4byte	.LBB293
	.4byte	.LBE293
	.4byte	.LBB294
	.4byte	.LBE294
	.4byte	0
	.4byte	0
	.4byte	.LBB304
	.4byte	.LBE304
	.4byte	.LBB307
	.4byte	.LBE307
	.4byte	0
	.4byte	0
	.4byte	.LBB317
	.4byte	.LBE317
	.4byte	.LBB321
	.4byte	.LBE321
	.4byte	.LBB322
	.4byte	.LBE322
	.4byte	0
	.4byte	0
	.4byte	.LBB327
	.4byte	.LBE327
	.4byte	.LBB331
	.4byte	.LBE331
	.4byte	.LBB332
	.4byte	.LBE332
	.4byte	0
	.4byte	0
	.4byte	.LFB105
	.4byte	.LFE105
	.4byte	.LFB107
	.4byte	.LFE107
	.4byte	.LFB116
	.4byte	.LFE116
	.4byte	.LFB117
	.4byte	.LFE117
	.4byte	.LFB119
	.4byte	.LFE119
	.4byte	.LFB137
	.4byte	.LFE137
	.4byte	.LFB142
	.4byte	.LFE142
	.4byte	.LFB124
	.4byte	.LFE124
	.4byte	.LFB147
	.4byte	.LFE147
	.4byte	.LFB122
	.4byte	.LFE122
	.4byte	.LFB125
	.4byte	.LFE125
	.4byte	.LFB126
	.4byte	.LFE126
	.4byte	.LFB127
	.4byte	.LFE127
	.4byte	.LFB128
	.4byte	.LFE128
	.4byte	.LFB129
	.4byte	.LFE129
	.4byte	.LFB130
	.4byte	.LFE130
	.4byte	.LFB131
	.4byte	.LFE131
	.4byte	.LFB138
	.4byte	.LFE138
	.4byte	.LFB132
	.4byte	.LFE132
	.4byte	.LFB139
	.4byte	.LFE139
	.4byte	.LFB133
	.4byte	.LFE133
	.4byte	.LFB134
	.4byte	.LFE134
	.4byte	.LFB135
	.4byte	.LFE135
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF56:
	.string	"iProduct"
.LASF365:
	.string	"urb_done_ring_push_isr"
.LASF68:
	.string	"bAlternateSetting"
.LASF141:
	.string	"ep_desc"
.LASF197:
	.string	"bPreferedVersion"
.LASF34:
	.string	"size_t"
.LASF75:
	.string	"bEndpointAddress"
.LASF249:
	.string	"g_stream_urbs"
.LASF259:
	.string	"__fsym_cam_stop_name"
.LASF353:
	.string	"out_h"
.LASF229:
	.string	"syscall_func"
.LASF180:
	.string	"wKeyFrameRate"
.LASF122:
	.string	"is_period"
.LASF363:
	.string	"tail"
.LASF352:
	.string	"out_w"
.LASF323:
	.string	"actual_len"
.LASF346:
	.string	"best_lt"
.LASF357:
	.string	"best_w"
.LASF91:
	.string	"data_toggle"
.LASF49:
	.string	"bDeviceSubClass"
.LASF331:
	.string	"header_info"
.LASF310:
	.string	"urbs"
.LASF31:
	.string	"isoin_mps"
.LASF340:
	.string	"best_mps"
.LASF328:
	.string	"reset_iso_packets"
.LASF150:
	.string	"config_desc"
.LASF200:
	.string	"usbh_video_resolution"
.LASF42:
	.string	"wLength"
.LASF127:
	.string	"bNbrPorts"
.LASF109:
	.string	"config"
.LASF205:
	.string	"usbh_video_format"
.LASF179:
	.string	"dwFrameInterval"
.LASF379:
	.string	"qcc74x_device_get_by_name"
.LASF227:
	.string	"sub_idx"
.LASF316:
	.string	"nbytes"
.LASF30:
	.string	"altsetting"
.LASF224:
	.string	"qcc74x_device_s"
.LASF84:
	.string	"transfer_buffer_length"
.LASF100:
	.string	"usbh_hubport"
.LASF89:
	.string	"hcpriv"
.LASF366:
	.string	"urb_ptr_aligned"
.LASF47:
	.string	"bcdUSB"
.LASF79:
	.string	"usb_slist_t"
.LASF279:
	.string	"usbh_video_run"
.LASF94:
	.string	"transfer_flags"
.LASF375:
	.string	"frame_queue_pop"
.LASF361:
	.string	"urb_done_ring_pop"
.LASF368:
	.string	"start_streaming"
.LASF147:
	.string	"priv"
.LASF74:
	.string	"usb_endpoint_descriptor"
.LASF4:
	.string	"__uint8_t"
.LASF222:
	.string	"num_of_formats"
.LASF287:
	.string	"chosen_fps"
.LASF151:
	.string	"intf"
.LASF92:
	.string	"interval"
.LASF348:
	.string	"diff"
.LASF126:
	.string	"usb_hub_descriptor"
.LASF50:
	.string	"bDeviceProtocol"
.LASF7:
	.string	"long int"
.LASF165:
	.string	"int_buffer"
.LASF289:
	.string	"stream_ep"
.LASF77:
	.string	"bInterval"
.LASF168:
	.string	"busid"
.LASF270:
	.string	"uvc_stop_capture"
.LASF160:
	.string	"hub_desc"
.LASF380:
	.string	"usbh_initialize"
.LASF387:
	.string	"xTaskGetTickCount"
.LASF128:
	.string	"wHubCharacteristics"
.LASF342:
	.string	"fallback_mps"
.LASF277:
	.string	"usbh_video_stop"
.LASF322:
	.string	"saw_payload"
.LASF131:
	.string	"DeviceRemovable"
.LASF182:
	.string	"wCompQuality"
.LASF269:
	.string	"uvc_dequeue_frame"
.LASF364:
	.string	"head"
.LASF239:
	.string	"g_cur_frame_valid"
.LASF397:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF125:
	.string	"_Bool"
.LASF371:
	.string	"usb_memcpy"
.LASF372:
	.string	"dword2array"
.LASF278:
	.string	"video_class"
.LASF176:
	.string	"hcd_id"
.LASF21:
	.string	"frame_t"
.LASF72:
	.string	"bInterfaceProtocol"
.LASF146:
	.string	"class_driver"
.LASF90:
	.string	"hport"
.LASF382:
	.string	"pvPortMalloc"
.LASF1:
	.string	"signed char"
.LASF14:
	.string	"uint8_t"
.LASF231:
	.string	"func"
.LASF213:
	.string	"data_intf"
.LASF170:
	.string	"hub_thread"
.LASF140:
	.string	"usbh_endpoint"
.LASF376:
	.string	"usbh_video_close"
.LASF349:
	.string	"select_best_resolution"
.LASF159:
	.string	"ismtt"
.LASF54:
	.string	"bcdDevice"
.LASF313:
	.string	"free_iso_urb_resources"
.LASF2:
	.string	"unsigned char"
.LASF38:
	.string	"bmRequestType"
.LASF32:
	.string	"uvc_mode_t"
.LASF40:
	.string	"wValue"
.LASF359:
	.string	"score"
.LASF336:
	.string	"altsetting_mps"
.LASF115:
	.string	"usb_osal_thread_t"
.LASF285:
	.string	"negotiated_interval"
.LASF120:
	.string	"handler"
.LASF167:
	.string	"usbh_bus"
.LASF99:
	.string	"iso_packet"
.LASF210:
	.string	"isoin"
.LASF80:
	.string	"usbh_complete_callback_t"
.LASF85:
	.string	"actual_length"
.LASF35:
	.string	"char"
.LASF161:
	.string	"hub_ss_desc"
.LASF297:
	.string	"urb_try"
.LASF196:
	.string	"bmFramingInfo"
.LASF378:
	.string	"usbh_video_open"
.LASF255:
	.string	"__fsym_cam_info_name"
.LASF300:
	.string	"try_buf_size_per_urb"
.LASF5:
	.string	"__uint16_t"
.LASF271:
	.string	"uvc_start_capture"
.LASF234:
	.string	"g_cam_mode"
.LASF263:
	.string	"cmd_cam_stop"
.LASF124:
	.string	"timer"
.LASF315:
	.string	"urb_count"
.LASF390:
	.string	"frame_queue_drop_oldest"
.LASF130:
	.string	"bHubContrCurrent"
.LASF384:
	.string	"kfree_size"
.LASF337:
	.string	"mult"
.LASF394:
	.string	"vTaskDelete"
.LASF107:
	.string	"slot_id"
.LASF136:
	.string	"usbh_class_driver"
.LASF108:
	.string	"device_desc"
.LASF312:
	.string	"stop_streaming"
.LASF158:
	.string	"tt_think"
.LASF245:
	.string	"g_restart_attempted"
.LASF226:
	.string	"irq_num"
.LASF291:
	.string	"last_urb_payload_seen"
.LASF187:
	.string	"video_probe_and_commit_controls"
.LASF264:
	.string	"cmd_cam_start"
.LASF354:
	.string	"best_score"
.LASF59:
	.string	"usb_configuration_descriptor"
.LASF195:
	.string	"dwClockFrequency"
.LASF185:
	.string	"bmHint"
.LASF338:
	.string	"select_altsetting"
.LASF135:
	.string	"wHubDelay"
.LASF169:
	.string	"devgen"
.LASF377:
	.string	"printf"
.LASF202:
	.string	"wHeight"
.LASF265:
	.string	"cmd_cam_info"
.LASF388:
	.string	"frame_queue_push"
.LASF93:
	.string	"setup"
.LASF104:
	.string	"speed"
.LASF212:
	.string	"ctrl_intf"
.LASF329:
	.string	"process_iso_data"
.LASF402:
	.string	"set_cam_state"
.LASF307:
	.string	"urb_now"
.LASF351:
	.string	"out_frame_idx"
.LASF66:
	.string	"usb_interface_descriptor"
.LASF154:
	.string	"index"
.LASF46:
	.string	"bDescriptorType"
.LASF343:
	.string	"select_best_frame_interval"
.LASF401:
	.string	"uvc_iso_complete_router"
.LASF330:
	.string	"header_len"
.LASF156:
	.string	"nports"
.LASF192:
	.string	"wDelay"
.LASF152:
	.string	"usbh_hub"
.LASF221:
	.string	"num_of_intf_altsettings"
.LASF181:
	.string	"wPFrameRate"
.LASF11:
	.string	"__uint64_t"
.LASF305:
	.string	"done_urb"
.LASF350:
	.string	"out_format_idx"
.LASF250:
	.string	"g_stream_iso_bufs"
.LASF9:
	.string	"long unsigned int"
.LASF86:
	.string	"errorcode"
.LASF153:
	.string	"is_roothub"
.LASF398:
	.string	"./examples/usb_cam_stream/uvc_capture.c"
.LASF51:
	.string	"bMaxPacketSize0"
.LASF29:
	.string	"format"
.LASF57:
	.string	"iSerialNumber"
.LASF286:
	.string	"negotiated_fps"
.LASF112:
	.string	"self"
.LASF193:
	.string	"dwMaxVideoFrameSize"
.LASF69:
	.string	"bNumEndpoints"
.LASF399:
	.string	"./examples/usb_cam_stream/build_wsl"
.LASF215:
	.string	"probe"
.LASF288:
	.string	"stream_hport"
.LASF188:
	.string	"hintUnion"
.LASF333:
	.string	"payload_len"
.LASF392:
	.string	"frame_pool_init"
.LASF238:
	.string	"g_cur_frame"
.LASF83:
	.string	"transfer_buffer"
.LASF18:
	.string	"uintptr_t"
.LASF308:
	.string	"kret"
.LASF355:
	.string	"best_fi"
.LASF332:
	.string	"payload"
.LASF23:
	.string	"CAMERA_ATTACHED"
.LASF367:
	.string	"stream_urb_slots_reset"
.LASF261:
	.string	"argc"
.LASF230:
	.string	"shell_syscall"
.LASF258:
	.string	"__fsym_cam_start"
.LASF262:
	.string	"argv"
.LASF260:
	.string	"__fsym_cam_stop"
.LASF317:
	.string	"process_completed_urb"
.LASF232:
	.string	"g_iso_pkt_candidates"
.LASF64:
	.string	"bmAttributes"
.LASF293:
	.string	"urb_alloc_size"
.LASF201:
	.string	"wWidth"
.LASF123:
	.string	"timeout_ms"
.LASF347:
	.string	"best_lt_diff"
.LASF344:
	.string	"best_ge"
.LASF97:
	.string	"start_frame"
.LASF8:
	.string	"__uint32_t"
.LASF334:
	.string	"space"
.LASF253:
	.string	"g_urb_done_ring"
.LASF10:
	.string	"long long int"
.LASF138:
	.string	"connect"
.LASF27:
	.string	"width"
.LASF268:
	.string	"uvc_frame_release"
.LASF173:
	.string	"alloctab"
.LASF304:
	.string	"did_work"
.LASF133:
	.string	"usb_hub_ss_descriptor"
.LASF257:
	.string	"__fsym_cam_start_name"
.LASF211:
	.string	"isoout"
.LASF26:
	.string	"camera_state_t"
.LASF76:
	.string	"wMaxPacketSize"
.LASF162:
	.string	"child"
.LASF105:
	.string	"depth"
.LASF320:
	.string	"urb_end"
.LASF206:
	.string	"frame"
.LASF325:
	.string	"pkt_end"
.LASF374:
	.string	"frame_free"
.LASF111:
	.string	"parent"
.LASF114:
	.string	"mutex"
.LASF55:
	.string	"iManufacturer"
.LASF292:
	.string	"last_progress_tick"
.LASF98:
	.string	"complete"
.LASF95:
	.string	"timeout"
.LASF103:
	.string	"dev_addr"
.LASF311:
	.string	"count"
.LASF254:
	.string	"g_state_callback"
.LASF290:
	.string	"last_frames_seen"
.LASF235:
	.string	"g_video_class"
.LASF0:
	.string	"unsigned int"
.LASF339:
	.string	"best_alt"
.LASF360:
	.string	"dist"
.LASF61:
	.string	"bNumInterfaces"
.LASF275:
	.string	"uvc_capture_init"
.LASF70:
	.string	"bInterfaceClass"
.LASF62:
	.string	"bConfigurationValue"
.LASF299:
	.string	"try_urb_alloc_size"
.LASF144:
	.string	"usbh_interface"
.LASF142:
	.string	"usbh_interface_altsetting"
.LASF345:
	.string	"best_ge_diff"
.LASF266:
	.string	"cam_state_str"
.LASF214:
	.string	"minor"
.LASF37:
	.string	"TaskHandle_t"
.LASF389:
	.string	"frame_alloc"
.LASF190:
	.string	"bFormatIndex"
.LASF191:
	.string	"bFrameIndex"
.LASF63:
	.string	"iConfiguration"
.LASF39:
	.string	"bRequest"
.LASF117:
	.string	"usb_osal_mq_t"
.LASF71:
	.string	"bInterfaceSubClass"
.LASF88:
	.string	"list"
.LASF148:
	.string	"altsetting_num"
.LASF395:
	.string	"xTaskCreate"
.LASF295:
	.string	"chosen_urb_count"
.LASF177:
	.string	"roothub_intbuf"
.LASF22:
	.string	"CAMERA_DETACHED"
.LASF341:
	.string	"fallback_alt"
.LASF309:
	.string	"urb_is_known"
.LASF204:
	.string	"bFrameIntervalType"
.LASF327:
	.string	"stamp_urb_endpoints"
.LASF178:
	.string	"roothub"
.LASF321:
	.string	"pkt_count"
.LASF175:
	.string	"reg_base"
.LASF236:
	.string	"g_stream_task"
.LASF60:
	.string	"wTotalLength"
.LASF276:
	.string	"usb_dev"
.LASF251:
	.string	"g_urb_done_head"
.LASF208:
	.string	"num_of_frames"
.LASF241:
	.string	"g_fid_initialized"
.LASF81:
	.string	"usb_slist_node"
.LASF139:
	.string	"disconnect"
.LASF335:
	.string	"copy_len"
.LASF400:
	.string	"tskTaskControlBlock"
.LASF96:
	.string	"num_of_iso_packets"
.LASF391:
	.string	"vTaskDelay"
.LASF194:
	.string	"dwMaxPayloadTransferSize"
.LASF82:
	.string	"usbh_iso_frame_packet"
.LASF45:
	.string	"bLength"
.LASF183:
	.string	"wCompWindowSize"
.LASF12:
	.string	"long long unsigned int"
.LASF244:
	.string	"g_stall_detected"
.LASF41:
	.string	"wIndex"
.LASF145:
	.string	"devname"
.LASF356:
	.string	"best_fri"
.LASF15:
	.string	"uint16_t"
.LASF33:
	.string	"uvc_state_callback_t"
.LASF318:
	.string	"pkt_cap"
.LASF281:
	.string	"frame_idx"
.LASF240:
	.string	"g_last_fid"
.LASF294:
	.string	"buf_size_per_urb"
.LASF369:
	.string	"urb_done_ring_reset"
.LASF220:
	.string	"bcdVDC"
.LASF58:
	.string	"bNumConfigurations"
.LASF186:
	.string	"hintBitmap"
.LASF370:
	.string	"new_state"
.LASF53:
	.string	"idProduct"
.LASF233:
	.string	"g_cam_state"
.LASF36:
	.string	"TickType_t"
.LASF252:
	.string	"g_urb_done_tail"
.LASF25:
	.string	"CAMERA_UNAVAILABLE"
.LASF106:
	.string	"route"
.LASF52:
	.string	"idVendor"
.LASF303:
	.string	"alloc_ok"
.LASF166:
	.string	"int_timer"
.LASF383:
	.string	"memset"
.LASF163:
	.string	"intin"
.LASF306:
	.string	"frames_now"
.LASF44:
	.string	"usb_device_descriptor"
.LASF73:
	.string	"iInterface"
.LASF282:
	.string	"alt_mps"
.LASF386:
	.string	"usbh_kill_urb"
.LASF228:
	.string	"dev_type"
.LASF13:
	.string	"__uintptr_t"
.LASF172:
	.string	"usbh_devaddr_map"
.LASF284:
	.string	"chosen_interval"
.LASF164:
	.string	"intin_urb"
.LASF314:
	.string	"iso_bufs"
.LASF247:
	.string	"g_iso_pkts_per_urb_active"
.LASF48:
	.string	"bDeviceClass"
.LASF358:
	.string	"best_h"
.LASF199:
	.string	"bMaxVersion"
.LASF225:
	.string	"name"
.LASF385:
	.string	"usbh_submit_urb"
.LASF102:
	.string	"port"
.LASF43:
	.string	"usb_setup_packet"
.LASF137:
	.string	"driver_name"
.LASF67:
	.string	"bInterfaceNumber"
.LASF296:
	.string	"chosen_pkts_per_urb"
.LASF243:
	.string	"g_urb_payload_completions"
.LASF174:
	.string	"usbh_hcd"
.LASF218:
	.string	"is_opened"
.LASF3:
	.string	"short int"
.LASF17:
	.string	"uint64_t"
.LASF219:
	.string	"current_format"
.LASF381:
	.string	"usbh_video_list_info"
.LASF237:
	.string	"g_stream_stop"
.LASF189:
	.string	"hintUnion1"
.LASF119:
	.string	"usb_osal_timer"
.LASF248:
	.string	"g_frame_reclaim_count"
.LASF149:
	.string	"usbh_configuration"
.LASF246:
	.string	"g_iso_cb_queue_drop_count"
.LASF110:
	.string	"raw_config_desc"
.LASF24:
	.string	"CAMERA_STREAMING"
.LASF20:
	.string	"timestamp_ms"
.LASF203:
	.string	"dwDefaultFrameInterval"
.LASF272:
	.string	"uvc_get_frames_captured"
.LASF134:
	.string	"bHubHdrDecLat"
.LASF267:
	.string	"uvc_register_state_callback"
.LASF207:
	.string	"format_type"
.LASF298:
	.string	"pkt_try"
.LASF373:
	.string	"addr"
.LASF209:
	.string	"usbh_video"
.LASF16:
	.string	"uint32_t"
.LASF217:
	.string	"isoout_mps"
.LASF283:
	.string	"sel_res"
.LASF65:
	.string	"bMaxPower"
.LASF280:
	.string	"format_idx"
.LASF256:
	.string	"__fsym_cam_info"
.LASF184:
	.string	"reserved"
.LASF87:
	.string	"usbh_urb"
.LASF129:
	.string	"bPwrOn2PwrGood"
.LASF143:
	.string	"intf_desc"
.LASF6:
	.string	"short unsigned int"
.LASF301:
	.string	"try_total_bytes"
.LASF121:
	.string	"argument"
.LASF223:
	.string	"user_data"
.LASF116:
	.string	"usb_osal_mutex_t"
.LASF396:
	.string	"vPortFree"
.LASF132:
	.string	"PortPwrCtrlMask"
.LASF113:
	.string	"ep0_urb"
.LASF326:
	.string	"streaming_task"
.LASF155:
	.string	"hub_addr"
.LASF324:
	.string	"pkt_base"
.LASF319:
	.string	"urb_base"
.LASF362:
	.string	"out_urb"
.LASF198:
	.string	"bMinVersion"
.LASF78:
	.string	"next"
.LASF19:
	.string	"data"
.LASF118:
	.string	"usb_timer_handler_t"
.LASF101:
	.string	"connected"
.LASF216:
	.string	"commit"
.LASF242:
	.string	"g_frames_captured"
.LASF302:
	.string	"free_before"
.LASF274:
	.string	"uvc_get_camera_state"
.LASF273:
	.string	"uvc_get_mode"
.LASF28:
	.string	"height"
.LASF157:
	.string	"powerdelay"
.LASF393:
	.string	"frame_queue_drain"
.LASF171:
	.string	"hub_mq"
	.ident	"GCC: (GNU) 10.4.0"
