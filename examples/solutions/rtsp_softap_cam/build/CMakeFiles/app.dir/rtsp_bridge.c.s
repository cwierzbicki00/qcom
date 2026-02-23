	.file	"rtsp_bridge.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.cmd_rtsp_info.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"yes"
	.align	2
.LC1:
	.string	"no"
	.align	2
.LC2:
	.string	"RTSP started      : %s\r\n"
	.align	2
.LC3:
	.string	"192.168.2.1"
	.align	2
.LC4:
	.string	"RTSP URL          : rtsp://%s:8554/\r\n"
	.align	2
.LC5:
	.string	"Client connected  : %s\r\n"
	.align	2
.LC6:
	.string	"Frames dequeued   : %llu\r\n"
	.align	2
.LC7:
	.string	"Frames sent       : %llu\r\n"
	.align	2
.LC8:
	.string	"Frames dropped    : %llu\r\n"
	.section	.text.cmd_rtsp_info,"ax",@progbits
	.align	1
	.type	cmd_rtsp_info, @function
cmd_rtsp_info:
.LFB85:
	.file 1 ".\\examples\\solutions\\rtsp_softap_cam\\rtsp_bridge.c"
	.loc 1 182 1
	.cfi_startproc
.LVL0:
	.loc 1 183 5
	.loc 1 182 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 183 32
	call	http_get_counters
.LVL1:
	.loc 1 187 5
	lui	a5,%hi(.LANCHOR0)
	lbu	a5,%lo(.LANCHOR0)(a5)
	.loc 1 183 32
	mv	s0,a0
.LVL2:
	.loc 1 184 5 is_stmt 1
	.loc 1 185 5
	.loc 1 187 5
	bne	a5,zero,.L4
	lui	a1,%hi(.LC1)
	addi	a1,a1,%lo(.LC1)
.L2:
	.loc 1 187 5 is_stmt 0 discriminator 4
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL3:
	.loc 1 188 5 is_stmt 1 discriminator 4
	lui	a1,%hi(.LC3)
	lui	a0,%hi(.LC4)
	addi	a1,a1,%lo(.LC3)
	addi	a0,a0,%lo(.LC4)
	call	printf
.LVL4:
	.loc 1 189 5 discriminator 4
	.loc 1 189 43 is_stmt 0 discriminator 4
	lbu	a5,24(s0)
	andi	a5,a5,0xff
	.loc 1 189 5 discriminator 4
	bne	a5,zero,.L5
	.loc 1 189 5
	lui	a1,%hi(.LC1)
	addi	a1,a1,%lo(.LC1)
.L3:
	.loc 1 189 5 discriminator 4
	lui	a0,%hi(.LC5)
	addi	a0,a0,%lo(.LC5)
	call	printf
.LVL5:
	.loc 1 190 5 is_stmt 1 discriminator 4
	lw	a2,0(s0)
	lw	a3,4(s0)
	lui	a0,%hi(.LC6)
	addi	a0,a0,%lo(.LC6)
	call	printf
.LVL6:
	.loc 1 191 5 discriminator 4
	lw	a2,16(s0)
	lw	a3,20(s0)
	lui	a0,%hi(.LC7)
	addi	a0,a0,%lo(.LC7)
	call	printf
.LVL7:
	.loc 1 192 5 discriminator 4
	lw	a2,8(s0)
	lw	a3,12(s0)
	lui	a0,%hi(.LC8)
	addi	a0,a0,%lo(.LC8)
	call	printf
.LVL8:
	.loc 1 193 5 discriminator 4
	.loc 1 194 1 is_stmt 0 discriminator 4
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL9:
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL10:
.L4:
	.cfi_restore_state
	.loc 1 187 5
	lui	a1,%hi(.LC0)
	addi	a1,a1,%lo(.LC0)
	j	.L2
.L5:
	.loc 1 189 5
	lui	a1,%hi(.LC0)
	addi	a1,a1,%lo(.LC0)
	j	.L3
	.cfi_endproc
.LFE85:
	.size	cmd_rtsp_info, .-cmd_rtsp_info
	.section	.text.release_inflight.part.0,"ax",@progbits
	.align	1
	.type	release_inflight.part.0, @function
release_inflight.part.0:
.LFB86:
	.loc 1 31 13 is_stmt 1
	.cfi_startproc
	.loc 1 37 5
	.loc 1 31 13 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	.loc 1 37 5
	lui	s0,%hi(.LANCHOR1)
	addi	a0,s0,%lo(.LANCHOR1)
	.loc 1 31 13
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 37 5
	call	uvc_frame_release
.LVL11:
	.loc 1 38 5 is_stmt 1
	addi	a0,s0,%lo(.LANCHOR1)
	li	a2,16
	li	a1,0
	call	memset
.LVL12:
	.loc 1 39 5
	.loc 1 40 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.loc 1 39 22
	lui	a5,%hi(.LANCHOR2)
	sb	zero,%lo(.LANCHOR2)(a5)
	.loc 1 40 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE86:
	.size	release_inflight.part.0, .-release_inflight.part.0
	.section	.text.clear_owner,"ax",@progbits
	.align	1
	.type	clear_owner, @function
clear_owner:
.LFB80:
	.loc 1 45 1 is_stmt 1
	.cfi_startproc
.LVL13:
	.loc 1 46 5
	.loc 1 45 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 46 20
	lui	a5,%hi(.LANCHOR3)
	.loc 1 45 1
	sw	s0,8(sp)
	.loc 1 46 20
	sw	zero,%lo(.LANCHOR3)(a5)
	.loc 1 47 5 is_stmt 1
	.cfi_offset 8, -8
	.loc 1 45 1 is_stmt 0
	mv	s0,a0
	.loc 1 47 23
	lui	a5,%hi(.LANCHOR4)
	.loc 1 48 5
	li	a0,0
.LVL14:
	.loc 1 47 23
	sw	zero,%lo(.LANCHOR4)(a5)
	.loc 1 48 5 is_stmt 1
	.loc 1 45 1 is_stmt 0
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 48 5
	call	http_stream_set_connected
.LVL15:
	.loc 1 49 5 is_stmt 1
.LBB6:
.LBB7:
	.loc 1 33 5
	.loc 1 33 8 is_stmt 0
	lui	a5,%hi(.LANCHOR2)
	lbu	a5,%lo(.LANCHOR2)(a5)
	beq	a5,zero,.L10
	call	release_inflight.part.0
.LVL16:
.L10:
.LBE7:
.LBE6:
	.loc 1 50 5 is_stmt 1
	.loc 1 50 8 is_stmt 0
	beq	s0,zero,.L9
.LVL17:
.LBB8:
.LBB9:
	.loc 1 50 25
	call	uvc_get_camera_state
.LVL18:
	.loc 1 50 22
	li	a5,2
	bne	a0,a5,.L9
	.loc 1 51 9 is_stmt 1
.LBE9:
.LBE8:
	.loc 1 53 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
.LBB11:
.LBB10:
	.loc 1 51 15
	tail	uvc_stop_capture
.LVL19:
.L9:
	.cfi_restore_state
.LBE10:
.LBE11:
	.loc 1 53 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE80:
	.size	clear_owner, .-clear_owner
	.section	.rodata.rtsp_report_handler.str1.4,"aMS",@progbits,1
	.align	2
.LC9:
	.string	"\033[0m[I][RTSP] RTSP client detached\r\n"
	.section	.text.rtsp_report_handler,"ax",@progbits
	.align	1
	.type	rtsp_report_handler, @function
rtsp_report_handler:
.LFB81:
	.loc 1 56 1 is_stmt 1
	.cfi_startproc
.LVL20:
	.loc 1 57 5
	.loc 1 57 8 is_stmt 0
	bne	a0,zero,.L18
.LVL21:
.LBB14:
.LBB15:
	.loc 1 58 9 is_stmt 1
.LBE15:
.LBE14:
	.loc 1 56 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LBB20:
.LBB16:
	.loc 1 58 9
	call	clear_owner
.LVL22:
	.loc 1 59 9 is_stmt 1
.LBE16:
.LBE20:
	.loc 1 61 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
.LBB21:
.LBB17:
	.loc 1 59 9
	lui	a0,%hi(.LC9)
.LBE17:
.LBE21:
	.loc 1 61 1
.LBB22:
.LBB18:
	.loc 1 59 9
	addi	a0,a0,%lo(.LC9)
.LBE18:
.LBE22:
	.loc 1 61 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
.LBB23:
.LBB19:
	.loc 1 59 9
	tail	printf
.LVL23:
.L18:
	ret
.LBE19:
.LBE23:
	.cfi_endproc
.LFE81:
	.size	rtsp_report_handler, .-rtsp_report_handler
	.section	.rodata.rtsp_get_frame.str1.4,"aMS",@progbits,1
	.align	2
.LC10:
	.string	"\033[0m[I][RTSP] RTSP client attached\r\n"
	.align	2
.LC11:
	.string	"\033[0;33m[W][RTSP] Replacing stale RTSP owner\r\n"
	.section	.text.rtsp_get_frame,"ax",@progbits
	.align	1
	.type	rtsp_get_frame, @function
rtsp_get_frame:
.LFB82:
	.loc 1 64 1 is_stmt 1
	.cfi_startproc
.LVL24:
	.loc 1 65 5
	.loc 1 66 5
	.loc 1 68 5
	.loc 1 69 16 is_stmt 0
	li	a5,-1
	.loc 1 68 8
	beq	a0,zero,.L41
	.loc 1 68 15 discriminator 1
	beq	a1,zero,.L41
	.loc 1 64 1
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s2,32(sp)
	.cfi_offset 18, -16
	.loc 1 72 9
	lui	s2,%hi(.LANCHOR3)
	.loc 1 72 8
	lw	a5,%lo(.LANCHOR3)(s2)
	.loc 1 64 1
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s3,28(sp)
	sw	ra,44(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	lui	s3,%hi(.LANCHOR4)
	sw	s4,24(sp)
	.cfi_offset 20, -24
	mv	s0,a1
	mv	s1,a0
	.loc 1 72 5 is_stmt 1
	addi	s2,s2,%lo(.LANCHOR3)
	addi	s3,s3,%lo(.LANCHOR4)
	.loc 1 72 8 is_stmt 0
	bne	a5,zero,.L25
	.loc 1 73 9 is_stmt 1
	.loc 1 73 24 is_stmt 0
	sw	a0,0(s2)
	.loc 1 74 9 is_stmt 1
	.loc 1 74 29 is_stmt 0
	call	xTaskGetTickCount
.LVL25:
	.loc 1 74 27
	sw	a0,0(s3)
	.loc 1 75 9 is_stmt 1
	li	a0,1
	call	http_stream_set_connected
.LVL26:
	.loc 1 76 9
	lui	a0,%hi(.LC10)
	addi	a0,a0,%lo(.LC10)
	call	printf
.LVL27:
.L25:
	.loc 1 79 5
	.loc 1 79 8 is_stmt 0
	lw	a5,0(s2)
	beq	a5,s1,.L26
.LBB27:
	.loc 1 80 9 is_stmt 1
	.loc 1 80 26 is_stmt 0
	call	xTaskGetTickCount
.LVL28:
	.loc 1 81 32
	lw	a5,0(s3)
	.loc 1 80 26
	mv	s4,a0
.LVL29:
	.loc 1 81 9 is_stmt 1
	.loc 1 81 12 is_stmt 0
	beq	a5,zero,.L30
	.loc 1 82 19 discriminator 1
	sub	a5,a0,a5
	.loc 1 81 38 discriminator 1
	li	a4,749
	bleu	a5,a4,.L30
	.loc 1 83 13 is_stmt 1
	lui	a0,%hi(.LC11)
.LVL30:
	addi	a0,a0,%lo(.LC11)
	call	printf
.LVL31:
	.loc 1 84 13
	li	a0,0
	call	clear_owner
.LVL32:
	.loc 1 85 13
	.loc 1 87 13 is_stmt 0
	li	a0,1
	.loc 1 85 28
	sw	s1,0(s2)
	.loc 1 86 13 is_stmt 1
	.loc 1 86 31 is_stmt 0
	sw	s4,0(s3)
	.loc 1 87 13 is_stmt 1
	call	http_stream_set_connected
.LVL33:
.LBE27:
	.loc 1 95 5
	.loc 1 95 8 is_stmt 0
	lw	a5,0(s2)
	beq	a5,s1,.L26
.LVL34:
.L30:
.LBB28:
	.loc 1 90 13 is_stmt 1
	call	http_stream_note_dropped
.LVL35:
	.loc 1 91 13
	.loc 1 91 20 is_stmt 0
	li	a5,0
.L23:
.LBE28:
	.loc 1 134 1
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
.LVL36:
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
	lw	s3,28(sp)
	.cfi_restore 19
	lw	s4,24(sp)
	.cfi_restore 20
	mv	a0,a5
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL37:
.L26:
	.cfi_restore_state
	.loc 1 96 9 is_stmt 1
	.loc 1 96 29 is_stmt 0
	call	xTaskGetTickCount
.LVL38:
	.loc 1 99 8
	lw	a5,0(s2)
	.loc 1 96 27
	sw	a0,0(s3)
	.loc 1 99 5 is_stmt 1
	.loc 1 99 8 is_stmt 0
	bne	a5,s1,.L30
	.loc 1 105 5 is_stmt 1
	.loc 1 105 10 is_stmt 0
	call	uvc_get_camera_state
.LVL39:
	.loc 1 106 5 is_stmt 1
	.loc 1 106 8 is_stmt 0
	li	a5,1
	bne	a0,a5,.L28
	.loc 1 107 9 is_stmt 1
	.loc 1 107 15 is_stmt 0
	call	uvc_start_capture
.LVL40:
	.loc 1 108 9 is_stmt 1
	.loc 1 108 14 is_stmt 0
	call	uvc_get_camera_state
.LVL41:
.L28:
	.loc 1 111 5 is_stmt 1
	.loc 1 111 8 is_stmt 0
	li	a4,2
	.loc 1 112 16
	li	a5,0
	.loc 1 111 8
	bne	a0,a4,.L23
	.loc 1 115 5 is_stmt 1
.LBB29:
.LBB30:
	.loc 1 33 5
	.loc 1 33 9 is_stmt 0
	lui	a5,%hi(.LANCHOR2)
	.loc 1 33 8
	lbu	a4,%lo(.LANCHOR2)(a5)
	addi	s1,a5,%lo(.LANCHOR2)
.LVL42:
	beq	a4,zero,.L29
	call	release_inflight.part.0
.LVL43:
.L29:
.LBE30:
.LBE29:
	.loc 1 117 5 is_stmt 1
	.loc 1 117 9 is_stmt 0
	li	a1,40
	mv	a0,sp
	call	uvc_dequeue_latest_frame
.LVL44:
	.loc 1 117 8
	bne	a0,zero,.L30
	.loc 1 122 5 is_stmt 1
	.loc 1 122 22 is_stmt 0
	lui	a0,%hi(.LANCHOR1)
	addi	s2,a0,%lo(.LANCHOR1)
	li	a2,16
	mv	a1,sp
	addi	a0,a0,%lo(.LANCHOR1)
	call	memcpy
.LVL45:
	.loc 1 123 5 is_stmt 1
	.loc 1 123 22 is_stmt 0
	li	a5,1
	sb	a5,0(s1)
	.loc 1 125 5 is_stmt 1
	.loc 1 125 18 is_stmt 0
	lw	a5,0(s2)
	sw	a5,8(s0)
	.loc 1 126 5 is_stmt 1
	.loc 1 126 17 is_stmt 0
	lw	a5,4(s2)
	sw	a5,0(s0)
	.loc 1 127 5 is_stmt 1
	.loc 1 127 19 is_stmt 0
	li	a5,5
	sb	a5,4(s0)
	.loc 1 128 5 is_stmt 1
	.loc 1 128 20 is_stmt 0
	lw	a5,8(s2)
	sw	a5,12(s0)
	.loc 1 130 5 is_stmt 1
	call	http_stream_note_dequeued
.LVL46:
	.loc 1 131 5
	call	http_stream_note_sent
.LVL47:
	.loc 1 133 5
	.loc 1 133 12 is_stmt 0
	lw	a5,0(s0)
	j	.L23
.LVL48:
.L41:
	.cfi_def_cfa_offset 0
	.cfi_restore 1
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 18
	.cfi_restore 19
	.cfi_restore 20
	.loc 1 134 1
	mv	a0,a5
.LVL49:
	ret
	.cfi_endproc
.LFE82:
	.size	rtsp_get_frame, .-rtsp_get_frame
	.section	.rodata.rtsp_bridge_start.str1.4,"aMS",@progbits,1
	.align	2
.LC12:
	.string	"\033[0;31m[E][RTSP] rtsp_init_lib failed: %d\r\n"
	.align	2
.LC13:
	.string	"\033[0m[I][RTSP] RTSP server started on %s:8554\r\n"
	.section	.text.rtsp_bridge_start,"ax",@progbits
	.align	1
	.globl	rtsp_bridge_start
	.type	rtsp_bridge_start, @function
rtsp_bridge_start:
.LFB83:
	.loc 1 137 1 is_stmt 1
	.cfi_startproc
	.loc 1 138 5
	.loc 1 140 5
	.loc 1 137 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s1,4(sp)
	.cfi_offset 9, -12
	.loc 1 140 9
	lui	s1,%hi(.LANCHOR0)
	addi	s1,s1,%lo(.LANCHOR0)
	.loc 1 140 8
	lbu	a5,0(s1)
	.loc 1 137 1
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 141 16
	li	s0,0
	.loc 1 140 8
	bne	a5,zero,.L44
	.loc 1 144 5 is_stmt 1
	call	http_stream_reset
.LVL50:
	.loc 1 145 5
	lui	a0,%hi(.LANCHOR1)
	li	a2,16
	li	a1,0
	addi	a0,a0,%lo(.LANCHOR1)
	call	memset
.LVL51:
	.loc 1 146 5
	.loc 1 146 22 is_stmt 0
	lui	a5,%hi(.LANCHOR2)
	sb	zero,%lo(.LANCHOR2)(a5)
	.loc 1 147 5 is_stmt 1
	.loc 1 150 5 is_stmt 0
	lui	a0,%hi(rtsp_get_frame)
	.loc 1 147 20
	lui	a5,%hi(.LANCHOR3)
	sw	zero,%lo(.LANCHOR3)(a5)
	.loc 1 148 5 is_stmt 1
	.loc 1 150 5 is_stmt 0
	addi	a0,a0,%lo(rtsp_get_frame)
	.loc 1 148 23
	lui	a5,%hi(.LANCHOR4)
	sw	zero,%lo(.LANCHOR4)(a5)
	.loc 1 150 5 is_stmt 1
	call	set_strm_cb
.LVL52:
	.loc 1 151 5
	lui	a0,%hi(rtsp_report_handler)
	addi	a0,a0,%lo(rtsp_report_handler)
	call	rtsp_set_strm_report_cb
.LVL53:
	.loc 1 153 5
	li	a0,0
	call	rtsp_set_audio_en
.LVL54:
	.loc 1 154 5
	li	a0,1
	call	rtsp_set_video_en
.LVL55:
	.loc 1 155 5
	li	a0,0
	call	rtsp_set_videoFmt
.LVL56:
	.loc 1 156 5
	li	a0,15
	call	rtsp_set_video_fps
.LVL57:
	.loc 1 158 5
	.loc 1 158 11 is_stmt 0
	call	rtsp_init_lib
.LVL58:
	mv	s0,a0
.LVL59:
	.loc 1 159 5 is_stmt 1
	.loc 1 159 8 is_stmt 0
	beq	a0,zero,.L46
	.loc 1 160 9 is_stmt 1
	mv	a1,a0
	lui	a0,%hi(.LC12)
	addi	a0,a0,%lo(.LC12)
.L49:
	.loc 1 165 5 is_stmt 0
	call	printf
.LVL60:
	.loc 1 166 5 is_stmt 1
.L44:
	.loc 1 167 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,s0
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL61:
.L46:
	.cfi_restore_state
	.loc 1 164 5 is_stmt 1
	.loc 1 164 15 is_stmt 0
	li	a5,1
	.loc 1 165 5
	lui	a1,%hi(.LC3)
	lui	a0,%hi(.LC13)
	.loc 1 164 15
	sb	a5,0(s1)
	.loc 1 165 5 is_stmt 1
	addi	a1,a1,%lo(.LC3)
	addi	a0,a0,%lo(.LC13)
	j	.L49
	.cfi_endproc
.LFE83:
	.size	rtsp_bridge_start, .-rtsp_bridge_start
	.section	.rodata.rtsp_bridge_stop.str1.4,"aMS",@progbits,1
	.align	2
.LC14:
	.string	"\033[0m[I][RTSP] RTSP server stopped\r\n"
	.section	.text.rtsp_bridge_stop,"ax",@progbits
	.align	1
	.globl	rtsp_bridge_stop
	.type	rtsp_bridge_stop, @function
rtsp_bridge_stop:
.LFB84:
	.loc 1 170 1
	.cfi_startproc
	.loc 1 171 5
	.loc 1 170 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	.loc 1 171 9
	lui	s0,%hi(.LANCHOR0)
	addi	s0,s0,%lo(.LANCHOR0)
	.loc 1 171 8
	lbu	a5,0(s0)
	.loc 1 170 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 171 8
	beq	a5,zero,.L50
	.loc 1 175 5 is_stmt 1
	.loc 1 175 11 is_stmt 0
	call	rtsp_deinit_lib
.LVL62:
	.loc 1 176 5 is_stmt 1
	li	a0,1
	call	clear_owner
.LVL63:
	.loc 1 177 5
	.loc 1 177 15 is_stmt 0
	sb	zero,0(s0)
	.loc 1 178 5 is_stmt 1
	.loc 1 179 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 178 5
	lui	a0,%hi(.LC14)
	.loc 1 179 1
	.loc 1 178 5
	addi	a0,a0,%lo(.LC14)
	.loc 1 179 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 178 5
	tail	printf
.LVL64:
.L50:
	.cfi_restore_state
	.loc 1 179 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE84:
	.size	rtsp_bridge_stop, .-rtsp_bridge_stop
	.globl	__fsym_rtsp_info
	.globl	__fsym_rtsp_info_name
	.section	.bss.g_inflight_frame,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	g_inflight_frame, @object
	.size	g_inflight_frame, 16
g_inflight_frame:
	.zero	16
	.section	.bss.g_inflight_valid,"aw",@nobits
	.set	.LANCHOR2,. + 0
	.type	g_inflight_valid, @object
	.size	g_inflight_valid, 1
g_inflight_valid:
	.zero	1
	.section	.bss.g_owner_last_tick,"aw",@nobits
	.align	2
	.set	.LANCHOR4,. + 0
	.type	g_owner_last_tick, @object
	.size	g_owner_last_tick, 4
g_owner_last_tick:
	.zero	4
	.section	.bss.g_owner_stream,"aw",@nobits
	.align	2
	.set	.LANCHOR3,. + 0
	.type	g_owner_stream, @object
	.size	g_owner_stream, 4
g_owner_stream:
	.zero	4
	.section	.bss.g_started,"aw",@nobits
	.set	.LANCHOR0,. + 0
	.type	g_started, @object
	.size	g_started, 1
g_started:
	.zero	1
	.section	.rodata.__fsym_rtsp_info_name,"a"
	.align	2
	.type	__fsym_rtsp_info_name, @object
	.size	__fsym_rtsp_info_name, 10
__fsym_rtsp_info_name:
	.string	"rtsp_info"
	.section	FSymTab,"a"
	.align	2
	.type	__fsym_rtsp_info, @object
	.size	__fsym_rtsp_info, 8
__fsym_rtsp_info:
	.word	__fsym_rtsp_info_name
	.word	cmd_rtsp_info
	.text
.Letext0:
	.file 2 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\machine\\_default_types.h"
	.file 3 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\sys\\_stdint.h"
	.file 4 ".\\components\\os\\freertos\\portable\\GCC\\RISC-V\\common/portmacro.h"
	.file 5 ".\\components\\net\\lib\\rtsp\\inc\\librtspsrv.h"
	.file 6 ".\\examples\\solutions\\rtsp_softap_cam\\frame_pool.h"
	.file 7 ".\\examples\\solutions\\rtsp_softap_cam\\uvc_capture.h"
	.file 8 ".\\examples\\solutions\\rtsp_softap_cam\\http_server.h"
	.file 9 ".\\components\\shell\\shell.h"
	.file 10 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\stdio.h"
	.file 11 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\string.h"
	.file 12 ".\\components\\os\\freertos\\include/task.h"
	.file 13 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x9dc
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF100
	.byte	0xc
	.4byte	.LASF101
	.4byte	.LASF102
	.4byte	.Ldebug_ranges0+0x60
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x4
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x46
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x60
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.byte	0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x7a
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.byte	0x4
	.4byte	.LASF11
	.byte	0x2
	.byte	0x69
	.byte	0x20
	.4byte	0x94
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.byte	0x5
	.byte	0x4
	.byte	0x6
	.byte	0x4
	.4byte	0xa3
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.byte	0x7
	.4byte	0xa3
	.byte	0x6
	.byte	0x4
	.4byte	0xaa
	.byte	0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x3a
	.byte	0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x54
	.byte	0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x6e
	.byte	0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x3c
	.byte	0x14
	.4byte	0x88
	.byte	0x8
	.4byte	0xd9
	.byte	0x4
	.4byte	.LASF18
	.byte	0x4
	.byte	0x44
	.byte	0x12
	.4byte	0xcd
	.byte	0x6
	.byte	0x4
	.4byte	0xb5
	.byte	0x9
	.byte	0x7
	.byte	0x1
	.4byte	0x46
	.byte	0x5
	.byte	0x16
	.byte	0x6
	.4byte	0x117
	.byte	0xa
	.4byte	.LASF19
	.byte	0
	.byte	0xa
	.4byte	.LASF20
	.byte	0x1
	.byte	0
	.byte	0xb
	.4byte	.LASF27
	.byte	0x7
	.byte	0x1
	.4byte	0x46
	.byte	0x5
	.byte	0x1c
	.byte	0x6
	.4byte	0x14e
	.byte	0xa
	.4byte	.LASF21
	.byte	0x1
	.byte	0xa
	.4byte	.LASF22
	.byte	0x2
	.byte	0xa
	.4byte	.LASF23
	.byte	0x3
	.byte	0xa
	.4byte	.LASF24
	.byte	0x4
	.byte	0xa
	.4byte	.LASF25
	.byte	0x5
	.byte	0xa
	.4byte	.LASF26
	.byte	0x6
	.byte	0
	.byte	0xb
	.4byte	.LASF28
	.byte	0x7
	.byte	0x1
	.4byte	0x46
	.byte	0x5
	.byte	0x25
	.byte	0x6
	.4byte	0x16d
	.byte	0xa
	.4byte	.LASF29
	.byte	0
	.byte	0xa
	.4byte	.LASF30
	.byte	0x1
	.byte	0
	.byte	0x9
	.byte	0x7
	.byte	0x1
	.4byte	0x46
	.byte	0x5
	.byte	0x31
	.byte	0x6
	.4byte	0x188
	.byte	0xa
	.4byte	.LASF31
	.byte	0
	.byte	0xa
	.4byte	.LASF32
	.byte	0x1
	.byte	0
	.byte	0xc
	.4byte	.LASF36
	.byte	0x10
	.byte	0x5
	.byte	0x37
	.byte	0x8
	.4byte	0x1ca
	.byte	0xd
	.4byte	.LASF33
	.byte	0x5
	.byte	0x38
	.byte	0x9
	.4byte	0x25
	.byte	0
	.byte	0xd
	.4byte	.LASF28
	.byte	0x5
	.byte	0x39
	.byte	0x13
	.4byte	0x14e
	.byte	0x4
	.byte	0xd
	.4byte	.LASF34
	.byte	0x5
	.byte	0x3a
	.byte	0xb
	.4byte	0x9d
	.byte	0x8
	.byte	0xd
	.4byte	.LASF35
	.byte	0x5
	.byte	0x3b
	.byte	0xb
	.4byte	0x9b
	.byte	0xc
	.byte	0
	.byte	0xc
	.4byte	.LASF37
	.byte	0x10
	.byte	0x5
	.byte	0x3f
	.byte	0x8
	.4byte	0x20c
	.byte	0xd
	.4byte	.LASF38
	.byte	0x5
	.byte	0x40
	.byte	0x12
	.4byte	0x2c
	.byte	0
	.byte	0xd
	.4byte	.LASF27
	.byte	0x5
	.byte	0x41
	.byte	0x13
	.4byte	0x117
	.byte	0x4
	.byte	0xd
	.4byte	.LASF39
	.byte	0x5
	.byte	0x42
	.byte	0xb
	.4byte	0x9d
	.byte	0x8
	.byte	0xd
	.4byte	.LASF40
	.byte	0x5
	.byte	0x43
	.byte	0xe
	.4byte	0xcd
	.byte	0xc
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x188
	.byte	0x6
	.byte	0x4
	.4byte	0x1ca
	.byte	0xe
	.byte	0x10
	.byte	0x6
	.byte	0x14
	.byte	0x9
	.4byte	0x263
	.byte	0xd
	.4byte	.LASF41
	.byte	0x6
	.byte	0x15
	.byte	0xe
	.4byte	0xf6
	.byte	0
	.byte	0xf
	.string	"len"
	.byte	0x6
	.byte	0x16
	.byte	0xe
	.4byte	0xcd
	.byte	0x4
	.byte	0xd
	.4byte	.LASF42
	.byte	0x6
	.byte	0x17
	.byte	0xe
	.4byte	0xcd
	.byte	0x8
	.byte	0xd
	.4byte	.LASF43
	.byte	0x6
	.byte	0x18
	.byte	0xe
	.4byte	0xc1
	.byte	0xc
	.byte	0xd
	.4byte	.LASF44
	.byte	0x6
	.byte	0x19
	.byte	0xe
	.4byte	0xc1
	.byte	0xe
	.byte	0
	.byte	0x4
	.4byte	.LASF45
	.byte	0x6
	.byte	0x1a
	.byte	0x3
	.4byte	0x218
	.byte	0x9
	.byte	0x7
	.byte	0x1
	.4byte	0x46
	.byte	0x7
	.byte	0x9
	.byte	0xe
	.4byte	0x296
	.byte	0xa
	.4byte	.LASF46
	.byte	0
	.byte	0xa
	.4byte	.LASF47
	.byte	0x1
	.byte	0xa
	.4byte	.LASF48
	.byte	0x2
	.byte	0xa
	.4byte	.LASF49
	.byte	0x3
	.byte	0
	.byte	0x4
	.4byte	.LASF50
	.byte	0x7
	.byte	0xe
	.byte	0x3
	.4byte	0x26f
	.byte	0xe
	.byte	0x20
	.byte	0x8
	.byte	0x8
	.byte	0x9
	.4byte	0x2e0
	.byte	0xd
	.4byte	.LASF51
	.byte	0x8
	.byte	0x9
	.byte	0x17
	.4byte	0xe5
	.byte	0
	.byte	0xd
	.4byte	.LASF52
	.byte	0x8
	.byte	0xa
	.byte	0x17
	.4byte	0xe5
	.byte	0x8
	.byte	0xd
	.4byte	.LASF53
	.byte	0x8
	.byte	0xb
	.byte	0x17
	.4byte	0xe5
	.byte	0x10
	.byte	0xd
	.4byte	.LASF54
	.byte	0x8
	.byte	0xc
	.byte	0x12
	.4byte	0x2e7
	.byte	0x18
	.byte	0
	.byte	0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF55
	.byte	0x8
	.4byte	0x2e0
	.byte	0x4
	.4byte	.LASF56
	.byte	0x8
	.byte	0xd
	.byte	0x3
	.4byte	0x2a2
	.byte	0x7
	.4byte	0x2ec
	.byte	0x4
	.4byte	.LASF57
	.byte	0x9
	.byte	0x3f
	.byte	0xf
	.4byte	0x309
	.byte	0x6
	.byte	0x4
	.4byte	0x30f
	.byte	0x10
	.4byte	0x25
	.byte	0x6
	.byte	0x4
	.4byte	0x9d
	.byte	0xc
	.4byte	.LASF58
	.byte	0x8
	.byte	0x9
	.byte	0x5e
	.byte	0x8
	.4byte	0x342
	.byte	0xd
	.4byte	.LASF59
	.byte	0x9
	.byte	0x5f
	.byte	0x11
	.4byte	0xaf
	.byte	0
	.byte	0xd
	.4byte	.LASF60
	.byte	0x9
	.byte	0x63
	.byte	0x12
	.4byte	0x2fd
	.byte	0x4
	.byte	0
	.byte	0x7
	.4byte	0x31a
	.byte	0x11
	.4byte	.LASF61
	.byte	0x1
	.byte	0x19
	.byte	0xc
	.4byte	0x2e0
	.byte	0x5
	.byte	0x3
	.4byte	g_started
	.byte	0x11
	.4byte	.LASF62
	.byte	0x1
	.byte	0x1a
	.byte	0x1a
	.4byte	0x20c
	.byte	0x5
	.byte	0x3
	.4byte	g_owner_stream
	.byte	0x11
	.4byte	.LASF63
	.byte	0x1
	.byte	0x1b
	.byte	0x10
	.4byte	0x263
	.byte	0x5
	.byte	0x3
	.4byte	g_inflight_frame
	.byte	0x11
	.4byte	.LASF64
	.byte	0x1
	.byte	0x1c
	.byte	0xc
	.4byte	0x2e0
	.byte	0x5
	.byte	0x3
	.4byte	g_inflight_valid
	.byte	0x11
	.4byte	.LASF65
	.byte	0x1
	.byte	0x1d
	.byte	0x13
	.4byte	0xea
	.byte	0x5
	.byte	0x3
	.4byte	g_owner_last_tick
	.byte	0x12
	.4byte	0xaa
	.4byte	0x3b1
	.byte	0x13
	.4byte	0x2c
	.byte	0x9
	.byte	0
	.byte	0x7
	.4byte	0x3a1
	.byte	0x14
	.4byte	.LASF66
	.byte	0x1
	.byte	0xc3
	.byte	0xc
	.4byte	0x3b1
	.byte	0x5
	.byte	0x3
	.4byte	__fsym_rtsp_info_name
	.byte	0x14
	.4byte	.LASF67
	.byte	0x1
	.byte	0xc3
	.byte	0x64
	.4byte	0x342
	.byte	0x5
	.byte	0x3
	.4byte	__fsym_rtsp_info
	.byte	0x15
	.4byte	.LASF70
	.byte	0x1
	.byte	0xb5
	.byte	0xc
	.4byte	0x25
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.byte	0x1
	.byte	0x9c
	.4byte	0x4bb
	.byte	0x16
	.4byte	.LASF68
	.byte	0x1
	.byte	0xb5
	.byte	0x1e
	.4byte	0x25
	.4byte	.LLST0
	.byte	0x16
	.4byte	.LASF69
	.byte	0x1
	.byte	0xb5
	.byte	0x2b
	.4byte	0x314
	.4byte	.LLST1
	.byte	0x17
	.string	"c"
	.byte	0x1
	.byte	0xb7
	.byte	0x1c
	.4byte	0x4bb
	.4byte	.LLST2
	.byte	0x18
	.4byte	.LVL1
	.4byte	0x8cb
	.byte	0x19
	.4byte	.LVL3
	.4byte	0x8d7
	.4byte	0x442
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x19
	.4byte	.LVL4
	.4byte	0x8d7
	.4byte	0x462
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x19
	.4byte	.LVL5
	.4byte	0x8d7
	.4byte	0x479
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x19
	.4byte	.LVL6
	.4byte	0x8d7
	.4byte	0x490
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0x19
	.4byte	.LVL7
	.4byte	0x8d7
	.4byte	0x4a7
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.byte	0x1b
	.4byte	.LVL8
	.4byte	0x8d7
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x2f8
	.byte	0x1c
	.4byte	.LASF103
	.byte	0x1
	.byte	0xa9
	.byte	0x6
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.byte	0x1
	.byte	0x9c
	.4byte	0x507
	.byte	0x18
	.4byte	.LVL62
	.4byte	0x8e3
	.byte	0x19
	.4byte	.LVL63
	.4byte	0x787
	.4byte	0x4f3
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x1d
	.4byte	.LVL64
	.4byte	0x8d7
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LASF104
	.byte	0x1
	.byte	0x88
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.byte	0x1
	.byte	0x9c
	.4byte	0x5eb
	.byte	0x17
	.string	"ret"
	.byte	0x1
	.byte	0x8a
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST11
	.byte	0x18
	.4byte	.LVL50
	.4byte	0x8ef
	.byte	0x19
	.4byte	.LVL51
	.4byte	0x8fb
	.4byte	0x55c
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x1a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x19
	.4byte	.LVL52
	.4byte	0x907
	.4byte	0x573
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	rtsp_get_frame
	.byte	0
	.byte	0x19
	.4byte	.LVL53
	.4byte	0x913
	.4byte	0x58a
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	rtsp_report_handler
	.byte	0
	.byte	0x19
	.4byte	.LVL54
	.4byte	0x91f
	.4byte	0x59e
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LVL55
	.4byte	0x92b
	.4byte	0x5b1
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x19
	.4byte	.LVL56
	.4byte	0x937
	.4byte	0x5c5
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LVL57
	.4byte	0x943
	.4byte	0x5d8
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3f
	.byte	0
	.byte	0x18
	.4byte	.LVL58
	.4byte	0x94f
	.byte	0x18
	.4byte	.LVL60
	.4byte	0x8d7
	.byte	0
	.byte	0x15
	.4byte	.LASF71
	.byte	0x1
	.byte	0x3f
	.byte	0xc
	.4byte	0x25
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.byte	0x1
	.byte	0x9c
	.4byte	0x76d
	.byte	0x16
	.4byte	.LASF72
	.byte	0x1
	.byte	0x3f
	.byte	0x2d
	.4byte	0x20c
	.4byte	.LLST7
	.byte	0x1f
	.string	"frm"
	.byte	0x1
	.byte	0x3f
	.byte	0x44
	.4byte	0x212
	.4byte	.LLST8
	.byte	0x11
	.4byte	.LASF73
	.byte	0x1
	.byte	0x41
	.byte	0xd
	.4byte	0x263
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x17
	.string	"st"
	.byte	0x1
	.byte	0x42
	.byte	0x14
	.4byte	0x296
	.4byte	.LLST9
	.byte	0x20
	.4byte	.Ldebug_ranges0+0x48
	.4byte	0x6ac
	.byte	0x17
	.string	"now"
	.byte	0x1
	.byte	0x50
	.byte	0x14
	.4byte	0xea
	.4byte	.LLST10
	.byte	0x18
	.4byte	.LVL28
	.4byte	0x95b
	.byte	0x19
	.4byte	.LVL31
	.4byte	0x8d7
	.4byte	0x67c
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.byte	0x19
	.4byte	.LVL32
	.4byte	0x787
	.4byte	0x68f
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x19
	.4byte	.LVL33
	.4byte	0x968
	.4byte	0x6a2
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x18
	.4byte	.LVL35
	.4byte	0x974
	.byte	0
	.byte	0x21
	.4byte	0x7a1
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.byte	0x1
	.byte	0x73
	.byte	0x5
	.4byte	0x6ca
	.byte	0x18
	.4byte	.LVL43
	.4byte	0x7aa
	.byte	0
	.byte	0x18
	.4byte	.LVL25
	.4byte	0x95b
	.byte	0x19
	.4byte	.LVL26
	.4byte	0x968
	.4byte	0x6e6
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x19
	.4byte	.LVL27
	.4byte	0x8d7
	.4byte	0x6fd
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.byte	0x18
	.4byte	.LVL38
	.4byte	0x95b
	.byte	0x18
	.4byte	.LVL39
	.4byte	0x980
	.byte	0x18
	.4byte	.LVL40
	.4byte	0x98c
	.byte	0x18
	.4byte	.LVL41
	.4byte	0x980
	.byte	0x19
	.4byte	.LVL44
	.4byte	0x998
	.4byte	0x73b
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.byte	0x19
	.4byte	.LVL45
	.4byte	0x9a4
	.4byte	0x75a
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
	.byte	0x72
	.byte	0
	.byte	0x1a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x18
	.4byte	.LVL46
	.4byte	0x9af
	.byte	0x18
	.4byte	.LVL47
	.4byte	0x9bb
	.byte	0
	.byte	0x22
	.4byte	.LASF74
	.byte	0x1
	.byte	0x37
	.byte	0xd
	.byte	0x1
	.4byte	0x787
	.byte	0x23
	.4byte	.LASF76
	.byte	0x1
	.byte	0x37
	.byte	0x25
	.4byte	0x25
	.byte	0
	.byte	0x22
	.4byte	.LASF75
	.byte	0x1
	.byte	0x2c
	.byte	0xd
	.byte	0x1
	.4byte	0x7a1
	.byte	0x23
	.4byte	.LASF77
	.byte	0x1
	.byte	0x2c
	.byte	0x1d
	.4byte	0x2e0
	.byte	0
	.byte	0x24
	.4byte	.LASF105
	.byte	0x1
	.byte	0x1f
	.byte	0xd
	.byte	0x1
	.byte	0x25
	.4byte	0x7a1
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.byte	0x1
	.byte	0x9c
	.4byte	0x7f2
	.byte	0x19
	.4byte	.LVL11
	.4byte	0x9c7
	.4byte	0x7d4
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0
	.byte	0x1b
	.4byte	.LVL12
	.4byte	0x8fb
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x1a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0x25
	.4byte	0x787
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.byte	0x1
	.byte	0x9c
	.4byte	0x86c
	.byte	0x26
	.4byte	0x794
	.4byte	.LLST3
	.byte	0x21
	.4byte	0x7a1
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x1
	.byte	0x31
	.byte	0x5
	.4byte	0x82c
	.byte	0x18
	.4byte	.LVL16
	.4byte	0x7aa
	.byte	0
	.byte	0x27
	.4byte	0x787
	.4byte	.LBB8
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x2c
	.byte	0xd
	.4byte	0x85c
	.byte	0x26
	.4byte	0x794
	.4byte	.LLST4
	.byte	0x18
	.4byte	.LVL18
	.4byte	0x980
	.byte	0x28
	.4byte	.LVL19
	.4byte	0x9d3
	.byte	0
	.byte	0x1b
	.4byte	.LVL15
	.4byte	0x968
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x25
	.4byte	0x76d
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.byte	0x1
	.byte	0x9c
	.4byte	0x8cb
	.byte	0x26
	.4byte	0x77a
	.4byte	.LLST5
	.byte	0x29
	.4byte	0x76d
	.4byte	.LBB14
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x37
	.byte	0xd
	.byte	0x26
	.4byte	0x77a
	.4byte	.LLST6
	.byte	0x19
	.4byte	.LVL22
	.4byte	0x787
	.4byte	0x8b6
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x1d
	.4byte	.LVL23
	.4byte	0x8d7
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2a
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0x8
	.byte	0xf
	.byte	0x18
	.byte	0x2a
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0xa
	.byte	0xc8
	.byte	0x5
	.byte	0x2a
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x5
	.byte	0x50
	.byte	0x5
	.byte	0x2a
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0x8
	.byte	0x14
	.byte	0x6
	.byte	0x2a
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0xb
	.byte	0x21
	.byte	0x8
	.byte	0x2a
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0x5
	.byte	0x4d
	.byte	0x6
	.byte	0x2a
	.4byte	.LASF84
	.4byte	.LASF84
	.byte	0x5
	.byte	0x5a
	.byte	0x6
	.byte	0x2a
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0x5
	.byte	0x52
	.byte	0x6
	.byte	0x2a
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0x5
	.byte	0x51
	.byte	0x6
	.byte	0x2a
	.4byte	.LASF87
	.4byte	.LASF87
	.byte	0x5
	.byte	0x57
	.byte	0x6
	.byte	0x2a
	.4byte	.LASF88
	.4byte	.LASF88
	.byte	0x5
	.byte	0x5b
	.byte	0x6
	.byte	0x2a
	.4byte	.LASF89
	.4byte	.LASF89
	.byte	0x5
	.byte	0x4f
	.byte	0x5
	.byte	0x2b
	.4byte	.LASF90
	.4byte	.LASF90
	.byte	0xc
	.2byte	0x5a8
	.byte	0xc
	.byte	0x2a
	.4byte	.LASF91
	.4byte	.LASF91
	.byte	0x8
	.byte	0x10
	.byte	0x6
	.byte	0x2a
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0x8
	.byte	0x13
	.byte	0x6
	.byte	0x2a
	.4byte	.LASF93
	.4byte	.LASF93
	.byte	0x7
	.byte	0x25
	.byte	0x10
	.byte	0x2a
	.4byte	.LASF94
	.4byte	.LASF94
	.byte	0x7
	.byte	0x38
	.byte	0x5
	.byte	0x2a
	.4byte	.LASF95
	.4byte	.LASF95
	.byte	0x7
	.byte	0x4d
	.byte	0x5
	.byte	0x2c
	.4byte	.LASF106
	.4byte	.LASF107
	.byte	0xd
	.byte	0
	.byte	0x2a
	.4byte	.LASF96
	.4byte	.LASF96
	.byte	0x8
	.byte	0x11
	.byte	0x6
	.byte	0x2a
	.4byte	.LASF97
	.4byte	.LASF97
	.byte	0x8
	.byte	0x12
	.byte	0x6
	.byte	0x2a
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0x7
	.byte	0x53
	.byte	0x6
	.byte	0x2a
	.4byte	.LASF99
	.4byte	.LASF99
	.byte	0x7
	.byte	0x3f
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
	.byte	0xa
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xb
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
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
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
	.byte	0x18
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
	.byte	0x17
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
	.byte	0x18
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
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
	.byte	0x1
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
	.byte	0x1e
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
	.byte	0x1f
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x21
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
	.byte	0x22
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
	.byte	0x23
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
	.byte	0x24
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
	.byte	0x25
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
	.byte	0x26
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x27
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
	.byte	0x28
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
	.byte	0x29
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
	.byte	0x2a
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
	.byte	0x2b
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
	.byte	0x2c
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1-1
	.4byte	.LFE85
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1-1
	.4byte	.LFE85
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL10
	.4byte	.LFE85
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL61
	.4byte	.LFE83
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL24
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25-1
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL34
	.4byte	.LVL37
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL42
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL49
	.4byte	.LFE82
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL24
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL25-1
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL48
	.4byte	.LFE82
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL39
	.4byte	.LVL40-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL41
	.4byte	.LVL43-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL30
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LFE80
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL20
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22-1
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LFE81
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
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
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
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
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	.LBB20
	.4byte	.LBE20
	.4byte	.LBB21
	.4byte	.LBE21
	.4byte	.LBB22
	.4byte	.LBE22
	.4byte	.LBB23
	.4byte	.LBE23
	.4byte	0
	.4byte	0
	.4byte	.LBB27
	.4byte	.LBE27
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	0
	.4byte	0
	.4byte	.LFB85
	.4byte	.LFE85
	.4byte	.LFB86
	.4byte	.LFE86
	.4byte	.LFB80
	.4byte	.LFE80
	.4byte	.LFB81
	.4byte	.LFE81
	.4byte	.LFB82
	.4byte	.LFE82
	.4byte	.LFB83
	.4byte	.LFE83
	.4byte	.LFB84
	.4byte	.LFE84
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF95:
	.string	"uvc_dequeue_latest_frame"
.LASF107:
	.string	"__builtin_memcpy"
.LASF65:
	.string	"g_owner_last_tick"
.LASF26:
	.string	"FRM_TYPE_MAX"
.LASF54:
	.string	"stream_client_connected"
.LASF28:
	.string	"chn_type"
.LASF61:
	.string	"g_started"
.LASF83:
	.string	"set_strm_cb"
.LASF75:
	.string	"clear_owner"
.LASF100:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF17:
	.string	"uint64_t"
.LASF103:
	.string	"rtsp_bridge_stop"
.LASF3:
	.string	"short int"
.LASF58:
	.string	"shell_syscall"
.LASF52:
	.string	"frames_dropped"
.LASF87:
	.string	"rtsp_set_videoFmt"
.LASF25:
	.string	"FRM_TYPE_M"
.LASF31:
	.string	"RTSP_VIDEOFMT_MJPEG"
.LASF10:
	.string	"long long int"
.LASF8:
	.string	"__uint32_t"
.LASF104:
	.string	"rtsp_bridge_start"
.LASF5:
	.string	"__uint16_t"
.LASF97:
	.string	"http_stream_note_sent"
.LASF74:
	.string	"rtsp_report_handler"
.LASF36:
	.string	"strm_info"
.LASF44:
	.string	"payload_pkts"
.LASF29:
	.string	"CHN_TYPE_MAIN"
.LASF106:
	.string	"memcpy"
.LASF45:
	.string	"frame_t"
.LASF14:
	.string	"uint8_t"
.LASF30:
	.string	"CHN_TYPE_MINOR"
.LASF50:
	.string	"camera_state_t"
.LASF53:
	.string	"frames_sent"
.LASF68:
	.string	"argc"
.LASF51:
	.string	"frames_dequeued"
.LASF99:
	.string	"uvc_stop_capture"
.LASF60:
	.string	"func"
.LASF101:
	.string	".\\examples\\solutions\\rtsp_softap_cam\\rtsp_bridge.c"
.LASF70:
	.string	"cmd_rtsp_info"
.LASF76:
	.string	"action"
.LASF82:
	.string	"memset"
.LASF98:
	.string	"uvc_frame_release"
.LASF7:
	.string	"long int"
.LASF79:
	.string	"printf"
.LASF9:
	.string	"long unsigned int"
.LASF43:
	.string	"error_pkts"
.LASF4:
	.string	"__uint8_t"
.LASF90:
	.string	"xTaskGetTickCount"
.LASF72:
	.string	"strm"
.LASF57:
	.string	"syscall_func"
.LASF77:
	.string	"stop_capture"
.LASF59:
	.string	"name"
.LASF84:
	.string	"rtsp_set_strm_report_cb"
.LASF18:
	.string	"TickType_t"
.LASF2:
	.string	"unsigned char"
.LASF40:
	.string	"timestamp"
.LASF81:
	.string	"http_stream_reset"
.LASF27:
	.string	"frm_type"
.LASF1:
	.string	"signed char"
.LASF78:
	.string	"http_get_counters"
.LASF12:
	.string	"long long unsigned int"
.LASF38:
	.string	"frm_sz"
.LASF16:
	.string	"uint32_t"
.LASF0:
	.string	"unsigned int"
.LASF15:
	.string	"uint16_t"
.LASF64:
	.string	"g_inflight_valid"
.LASF89:
	.string	"rtsp_init_lib"
.LASF35:
	.string	"usr_data"
.LASF69:
	.string	"argv"
.LASF92:
	.string	"http_stream_note_dropped"
.LASF94:
	.string	"uvc_start_capture"
.LASF6:
	.string	"short unsigned int"
.LASF42:
	.string	"timestamp_ms"
.LASF73:
	.string	"frame"
.LASF13:
	.string	"char"
.LASF86:
	.string	"rtsp_set_video_en"
.LASF46:
	.string	"CAMERA_DETACHED"
.LASF66:
	.string	"__fsym_rtsp_info_name"
.LASF55:
	.string	"_Bool"
.LASF21:
	.string	"FRM_TYPE_I"
.LASF19:
	.string	"RTSP_STRM_REPORT_CLIENT_EXIT"
.LASF63:
	.string	"g_inflight_frame"
.LASF11:
	.string	"__uint64_t"
.LASF41:
	.string	"data"
.LASF39:
	.string	"frm_buf"
.LASF20:
	.string	"RTSP_STRM_REPORT_MAX"
.LASF85:
	.string	"rtsp_set_audio_en"
.LASF47:
	.string	"CAMERA_ATTACHED"
.LASF23:
	.string	"FRM_TYPE_P"
.LASF24:
	.string	"FRM_TYPE_A"
.LASF22:
	.string	"FRM_TYPE_B"
.LASF37:
	.string	"frm_info"
.LASF56:
	.string	"http_counters_t"
.LASF88:
	.string	"rtsp_set_video_fps"
.LASF62:
	.string	"g_owner_stream"
.LASF80:
	.string	"rtsp_deinit_lib"
.LASF34:
	.string	"file_name"
.LASF48:
	.string	"CAMERA_STREAMING"
.LASF93:
	.string	"uvc_get_camera_state"
.LASF96:
	.string	"http_stream_note_dequeued"
.LASF49:
	.string	"CAMERA_UNAVAILABLE"
.LASF91:
	.string	"http_stream_set_connected"
.LASF102:
	.string	"C:\\\\Users\\\\cwier\\\\documents\\\\github\\\\qcom\\\\examples\\\\solutions\\\\rtsp_softap_cam\\\\build"
.LASF33:
	.string	"chn_no"
.LASF32:
	.string	"RTSP_VIDEOFMT_H264"
.LASF67:
	.string	"__fsym_rtsp_info"
.LASF71:
	.string	"rtsp_get_frame"
.LASF105:
	.string	"release_inflight"
	.ident	"GCC: (GNU) 10.4.0"
