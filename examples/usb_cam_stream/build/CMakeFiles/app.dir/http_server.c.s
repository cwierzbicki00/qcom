	.file	"http_server.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.on_camera_state_change,"ax",@progbits
	.align	1
	.type	on_camera_state_change, @function
on_camera_state_change:
.LFB89:
	.file 1 ".\\examples\\usb_cam_stream\\http_server.c"
	.loc 1 239 1
	.cfi_startproc
.LVL0:
	.loc 1 240 5
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	.loc 1 240 8 is_stmt 0
	beq	a0,zero,.L2
	.loc 1 240 38 discriminator 1
	li	a4,3
	bne	a0,a4,.L3
.L2:
	.loc 1 241 9 is_stmt 1
	.loc 1 241 23 is_stmt 0
	li	a4,1
	sb	a4,0(a5)
	ret
.L3:
	.loc 1 243 9 is_stmt 1
	.loc 1 243 23 is_stmt 0
	sb	zero,0(a5)
	.loc 1 245 1
	ret
	.cfi_endproc
.LFE89:
	.size	on_camera_state_change, .-on_camera_state_change
	.section	.rodata.cmd_stream_status.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"yes"
	.align	2
.LC1:
	.string	"no"
	.align	2
.LC2:
	.string	"Stream active:  %s\r\n"
	.align	2
.LC3:
	.string	"Client IP:      %s\r\n"
	.align	2
.LC4:
	.string	"Frames dequeued:%llu\r\n"
	.align	2
.LC5:
	.string	"Frames sent:    %llu\r\n"
	.align	2
.LC6:
	.string	"Frames dropped: %llu\r\n"
	.section	.text.cmd_stream_status,"ax",@progbits
	.align	1
	.type	cmd_stream_status, @function
cmd_stream_status:
.LFB99:
	.loc 1 791 1 is_stmt 1
	.cfi_startproc
.LVL1:
	.loc 1 792 5
	.loc 1 792 17
	.loc 1 794 5
	.loc 1 791 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	.loc 1 795 22
	lui	s0,%hi(.LANCHOR1)
	addi	a5,s0,%lo(.LANCHOR1)
	lbu	a5,24(a5)
	.loc 1 791 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	addi	s0,s0,%lo(.LANCHOR1)
	.loc 1 795 22
	andi	a5,a5,0xff
	.loc 1 794 5
	bne	a5,zero,.L11
	lui	a1,%hi(.LC1)
.LVL2:
	addi	a1,a1,%lo(.LC1)
.L9:
	.loc 1 794 5 discriminator 4
	lui	a0,%hi(.LC2)
.LVL3:
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL4:
	.loc 1 796 5 is_stmt 1 discriminator 4
	.loc 1 796 27 is_stmt 0 discriminator 4
	lui	a1,%hi(.LANCHOR2)
	.loc 1 796 8 discriminator 4
	lbu	a5,%lo(.LANCHOR2)(a1)
	beq	a5,zero,.L10
	.loc 1 797 9 is_stmt 1
	lui	a0,%hi(.LC3)
	addi	a1,a1,%lo(.LANCHOR2)
	addi	a0,a0,%lo(.LC3)
	call	printf
.LVL5:
.L10:
	.loc 1 799 5
	.loc 1 799 63 is_stmt 0
	lw	a2,0(s0)
	lw	a3,4(s0)
	.loc 1 799 5
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	call	printf
.LVL6:
	.loc 1 800 5 is_stmt 1
	.loc 1 800 63 is_stmt 0
	lw	a2,16(s0)
	lw	a3,20(s0)
	.loc 1 800 5
	lui	a0,%hi(.LC5)
	addi	a0,a0,%lo(.LC5)
	call	printf
.LVL7:
	.loc 1 801 5 is_stmt 1
	.loc 1 801 63 is_stmt 0
	lw	a2,8(s0)
	lw	a3,12(s0)
	.loc 1 801 5
	lui	a0,%hi(.LC6)
	addi	a0,a0,%lo(.LC6)
	call	printf
.LVL8:
	.loc 1 802 5 is_stmt 1
	.loc 1 803 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL9:
.L11:
	.cfi_restore_state
	.loc 1 794 5
	lui	a1,%hi(.LC0)
.LVL10:
	addi	a1,a1,%lo(.LC0)
	j	.L9
	.cfi_endproc
.LFE99:
	.size	cmd_stream_status, .-cmd_stream_status
	.section	.text.send_all,"ax",@progbits
	.align	1
	.type	send_all, @function
send_all:
.LFB80:
	.loc 1 79 1 is_stmt 1
	.cfi_startproc
.LVL11:
	.loc 1 80 5
	.loc 1 79 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	sw	s6,16(sp)
	sw	s7,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	mv	s1,a2
	sw	ra,44(sp)
	.cfi_offset 1, -4
	.loc 1 79 1
	mv	s5,a0
	mv	s2,a1
.LVL12:
	.loc 1 81 5 is_stmt 1
	.loc 1 82 5
.LBB6:
.LBB7:
.LBB8:
	.loc 1 95 20 is_stmt 0
	li	s3,4096
.LBE8:
.LBE7:
.LBE6:
	.loc 1 82 37
	call	xTaskGetTickCount
.LVL13:
	mv	s4,a0
.LVL14:
	.loc 1 83 5 is_stmt 1
	.loc 1 84 5
	.loc 1 82 37 is_stmt 0
	mv	s0,s1
.LBB14:
	.loc 1 89 13
	li	s6,1460
.LBB12:
	.loc 1 93 16
	li	s7,11
.LBB9:
	.loc 1 95 20
	addi	s3,s3,-1097
.LVL15:
.L17:
.LBE9:
.LBE12:
.LBE14:
	.loc 1 88 11 is_stmt 1
	bgt	s0,zero,.L23
.LVL16:
.L20:
	.loc 1 109 1 is_stmt 0
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
.LVL17:
	lw	s2,32(sp)
	.cfi_restore 18
.LVL18:
	lw	s3,28(sp)
	.cfi_restore 19
	lw	s4,24(sp)
	.cfi_restore 20
.LVL19:
	lw	s5,20(sp)
	.cfi_restore 21
.LVL20:
	lw	s6,16(sp)
	.cfi_restore 22
	lw	s7,12(sp)
	.cfi_restore 23
	mv	a0,s1
	lw	s1,36(sp)
	.cfi_restore 9
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL21:
.L23:
	.cfi_restore_state
.LBB15:
	.loc 1 89 9 is_stmt 1
	.loc 1 90 9
	.loc 1 89 13 is_stmt 0
	mv	a2,s0
	ble	s0,s6,.L18
	li	a2,1460
.L18:
	.loc 1 90 17
	li	a3,0
	mv	a1,s2
	mv	a0,s5
	call	lwip_send
.LVL22:
	.loc 1 91 9 is_stmt 1
	.loc 1 91 12 is_stmt 0
	bgt	a0,zero,.L19
.LBB13:
	.loc 1 92 13 is_stmt 1
	.loc 1 92 24 is_stmt 0
	call	__errno
.LVL23:
	.loc 1 93 13 is_stmt 1
	.loc 1 93 16 is_stmt 0
	lw	a5,0(a0)
	bne	a5,s7,.L24
.LBB10:
	.loc 1 94 17 is_stmt 1
	.loc 1 94 34 is_stmt 0
	call	xTaskGetTickCount
.LVL24:
	.loc 1 95 17 is_stmt 1
	.loc 1 95 26 is_stmt 0
	sub	a0,a0,s4
.LVL25:
	.loc 1 95 20
	bleu	a0,s3,.L21
	.loc 1 96 20 is_stmt 1
	.loc 1 96 22 is_stmt 0
	call	__errno
.LVL26:
	.loc 1 96 26
	li	a5,116
	sw	a5,0(a0)
	.loc 1 97 21 is_stmt 1
.L24:
.LBE10:
	.loc 1 102 20 is_stmt 0
	li	s1,-1
.LVL27:
	j	.L20
.LVL28:
.L21:
.LBB11:
	.loc 1 99 17 is_stmt 1
	li	a0,2
	call	vTaskDelay
.LVL29:
	.loc 1 100 17
	j	.L17
.LVL30:
.L19:
.LBE11:
.LBE13:
	.loc 1 104 9
	.loc 1 104 11 is_stmt 0
	add	s2,s2,a0
.LVL31:
	.loc 1 105 9 is_stmt 1
	.loc 1 105 19 is_stmt 0
	sub	s0,s0,a0
.LVL32:
	.loc 1 106 9 is_stmt 1
	.loc 1 106 30 is_stmt 0
	call	xTaskGetTickCount
.LVL33:
	mv	s4,a0
.LVL34:
	j	.L17
.LBE15:
	.cfi_endproc
.LFE80:
	.size	send_all, .-send_all
	.section	.rodata.send_response.str1.4,"aMS",@progbits,1
	.align	2
.LC7:
	.string	"HTTP/1.1 %s\r\nContent-Type: %s\r\nContent-Length: %d\r\nConnection: close\r\n\r\n"
	.section	.text.send_response,"ax",@progbits
	.align	1
	.type	send_response, @function
send_response:
.LFB81:
	.loc 1 114 1 is_stmt 1
	.cfi_startproc
.LVL35:
	.loc 1 115 5
	.loc 1 116 5
	.loc 1 114 1 is_stmt 0
	addi	sp,sp,-272
	.cfi_def_cfa_offset 272
	sw	s0,264(sp)
	.loc 1 116 16
	mv	a5,a4
	.cfi_offset 8, -8
	.loc 1 114 1
	mv	s0,a4
	.loc 1 116 16
	mv	a4,a2
.LVL36:
	lui	a2,%hi(.LC7)
.LVL37:
	.loc 1 114 1
	sw	s1,260(sp)
	sw	s2,256(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	mv	s1,a0
	mv	s2,a3
	.loc 1 116 16
	addi	a2,a2,%lo(.LC7)
	mv	a3,a1
.LVL38:
	mv	a0,sp
.LVL39:
	li	a1,256
.LVL40:
	.loc 1 114 1
	sw	ra,268(sp)
	.cfi_offset 1, -4
	.loc 1 116 16
	call	snprintf
.LVL41:
	mv	a2,a0
.LVL42:
	.loc 1 124 5 is_stmt 1
	mv	a1,sp
	mv	a0,s1
.LVL43:
	call	send_all
.LVL44:
	.loc 1 125 5
	.loc 1 125 8 is_stmt 0
	beq	s2,zero,.L26
	.loc 1 125 14 discriminator 1
	ble	s0,zero,.L26
	.loc 1 126 9 is_stmt 1
	mv	a2,s0
	mv	a1,s2
	mv	a0,s1
	call	send_all
.LVL45:
.L26:
	.loc 1 128 1 is_stmt 0
	lw	ra,268(sp)
	.cfi_restore 1
	lw	s0,264(sp)
	.cfi_restore 8
.LVL46:
	lw	s1,260(sp)
	.cfi_restore 9
.LVL47:
	lw	s2,256(sp)
	.cfi_restore 18
.LVL48:
	addi	sp,sp,272
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE81:
	.size	send_response, .-send_response
	.section	.rodata.send_error.str1.4,"aMS",@progbits,1
	.align	2
.LC8:
	.string	"text/plain"
	.section	.text.send_error,"ax",@progbits
	.align	1
	.type	send_error, @function
send_error:
.LFB82:
	.loc 1 131 1 is_stmt 1
	.cfi_startproc
.LVL49:
	.loc 1 132 5
	.loc 1 131 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	.cfi_offset 8, -8
	mv	s0,a0
	.loc 1 132 61
	mv	a0,a2
.LVL50:
	.loc 1 131 1
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 131 1
	sw	a1,12(sp)
	.loc 1 132 61
	sw	a2,8(sp)
	call	strlen
.LVL51:
	mv	a4,a0
	.loc 1 132 5
	mv	a0,s0
	.loc 1 133 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL52:
	.loc 1 132 5
	lw	a3,8(sp)
	lw	a1,12(sp)
	.loc 1 133 1
	lw	ra,28(sp)
	.cfi_restore 1
	.loc 1 132 5
	lui	a2,%hi(.LC8)
	.loc 1 133 1
	.loc 1 132 5
	addi	a2,a2,%lo(.LC8)
	.loc 1 133 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL53:
	.loc 1 132 5
	tail	send_response
.LVL54:
	.cfi_endproc
.LFE82:
	.size	send_error, .-send_error
	.section	.text.frame_extract_valid_jpeg,"ax",@progbits
	.align	1
	.type	frame_extract_valid_jpeg, @function
frame_extract_valid_jpeg:
.LFB86:
	.loc 1 177 1 is_stmt 1
	.cfi_startproc
.LVL55:
	.loc 1 178 5
.LBB26:
.LBB27:
	.loc 1 137 5
	.loc 1 137 25 is_stmt 0
	lw	a4,0(a0)
	.loc 1 137 16
	beq	a4,zero,.L42
	.loc 1 137 40
	lw	a6,4(a0)
	.loc 1 137 32
	li	a5,3
.LBE27:
.LBE26:
	.loc 1 179 15
	li	a0,0
.LVL56:
.LBB29:
.LBB28:
	.loc 1 137 32
	bleu	a6,a5,.L35
	.loc 1 140 5 is_stmt 1
	.loc 1 140 8 is_stmt 0
	lbu	a3,0(a4)
	li	a5,255
	bne	a3,a5,.L35
	.loc 1 140 33
	lbu	a3,1(a4)
	li	a5,216
	bne	a3,a5,.L35
.LBE28:
.LBE29:
.LBB30:
.LBB31:
.LBB32:
.LBB33:
	.loc 1 152 19
	li	a5,2
	addi	a7,a4,-1
	.loc 1 153 12
	li	a3,255
	.loc 1 153 29
	li	a0,217
.LVL57:
.L50:
	.loc 1 152 27 is_stmt 1
	mv	a2,a5
	.loc 1 152 29 is_stmt 0
	addi	a5,a5,1
.LVL58:
	.loc 1 152 5
	bne	a6,a5,.L38
.LVL59:
.L42:
.LBE33:
.LBE32:
.LBE31:
.LBE30:
	.loc 1 179 15
	li	a0,0
.L35:
	.loc 1 203 1
	ret
.LVL60:
.L38:
.LBB43:
.LBB38:
.LBB35:
.LBB34:
	.loc 1 153 9 is_stmt 1
	.loc 1 153 12 is_stmt 0
	lrbu	t1,a7,a5,0
	bne	t1,a3,.L50
	.loc 1 153 29
	lrbu	t1,a4,a5,0
	bne	t1,a0,.L50
	.loc 1 154 13 is_stmt 1
.LVL61:
.LBE34:
.LBE35:
	.loc 1 183 5
	.loc 1 184 5
.LBE38:
.LBE43:
	.loc 1 179 15 is_stmt 0
	li	a0,0
.LBB44:
.LBB39:
	.loc 1 184 8
	bge	a2,zero,.L52
	ret
.L52:
	.loc 1 187 5 is_stmt 1
	.loc 1 187 14 is_stmt 0
	addi	a3,a2,2
.LVL62:
	.loc 1 188 5 is_stmt 1
.LBE39:
.LBE44:
	.loc 1 179 15 is_stmt 0
	li	a0,0
.LBB45:
.LBB40:
	.loc 1 188 22
	bltu	a6,a3,.L35
.LBB36:
.LBB37:
	.loc 1 165 19
	li	a5,2
	.loc 1 166 12
	li	a0,255
	.loc 1 166 29
	li	t1,218
.L51:
.LVL63:
	.loc 1 165 27 is_stmt 1
	mv	a6,a5
	.loc 1 165 29 is_stmt 0
	addi	a5,a5,1
.LVL64:
	.loc 1 165 5
	bleu	a3,a5,.L42
	.loc 1 166 9 is_stmt 1
	.loc 1 166 12 is_stmt 0
	lrbu	t3,a7,a5,0
	bne	t3,a0,.L51
	.loc 1 166 29
	lrbu	t3,a4,a5,0
	bne	t3,t1,.L51
	.loc 1 167 13 is_stmt 1
.LVL65:
.LBE37:
.LBE36:
	.loc 1 195 5
.LBE40:
.LBE45:
	.loc 1 179 15 is_stmt 0
	li	a0,0
.LBB46:
.LBB41:
	.loc 1 195 8
	bge	a6,zero,.L53
	ret
.L53:
.LBE41:
.LBE46:
	.loc 1 179 15
	li	a0,0
.LBB47:
.LBB42:
	.loc 1 195 17
	bleu	a2,a6,.L35
	.loc 1 199 5 is_stmt 1
	.loc 1 200 9
	.loc 1 200 18 is_stmt 0
	sw	a3,0(a1)
	.loc 1 202 11
	li	a0,1
	ret
.LBE42:
.LBE47:
	.cfi_endproc
.LFE86:
	.size	frame_extract_valid_jpeg, .-frame_extract_valid_jpeg
	.section	.rodata.stop_capture_for_session.str1.4,"aMS",@progbits,1
	.align	2
.LC9:
	.string	"\033[0m[I][HTTP] [HTTP] Capture stop requested (session=%lu, %s)\r\n"
	.section	.text.stop_capture_for_session,"ax",@progbits
	.align	1
	.type	stop_capture_for_session, @function
stop_capture_for_session:
.LFB88:
	.loc 1 225 1 is_stmt 1
	.cfi_startproc
.LVL66:
	.loc 1 226 5
	.loc 1 226 8 is_stmt 0
	beq	a0,zero,.L59
	.loc 1 225 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	.cfi_offset 1, -4
	sw	a1,12(sp)
	sw	a0,8(sp)
	.loc 1 230 5 is_stmt 1
	.loc 1 230 9 is_stmt 0
	call	uvc_stop_capture_session
.LVL67:
	.loc 1 230 8
	bne	a0,zero,.L54
.LVL68:
.LBB50:
.LBB51:
	.loc 1 231 9 is_stmt 1
	lw	a2,12(sp)
	lw	a1,8(sp)
.LBE51:
.LBE50:
	.loc 1 235 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
.LBB55:
.LBB52:
	.loc 1 231 9
	lui	a0,%hi(.LC9)
.LBE52:
.LBE55:
	.loc 1 235 1
.LBB56:
.LBB53:
	.loc 1 231 9
	addi	a0,a0,%lo(.LC9)
.LBE53:
.LBE56:
	.loc 1 235 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL69:
.LBB57:
.LBB54:
	.loc 1 231 9
	tail	printf
.LVL70:
.L54:
	.cfi_restore_state
.LBE54:
.LBE57:
	.loc 1 235 1
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL71:
	jr	ra
.LVL72:
.L59:
	ret
	.cfi_endproc
.LFE88:
	.size	stop_capture_for_session, .-stop_capture_for_session
	.section	.rodata.stream_task.str1.4,"aMS",@progbits,1
	.align	2
.LC10:
	.string	"\033[0m[I][HTTP] [HTTP] Stream client connected: %s (session=%lu)\r\n"
	.align	2
.LC11:
	.string	"\033[0m[I][HTTP] [HTTP] Camera unavailable - ending stream\r\n"
	.align	2
.LC12:
	.string	"\033[0;33m[W][HTTP] [HTTP] No frames for %u ms, waiting for UVC restart (session=%lu)\r\n"
	.align	2
.LC13:
	.string	"\033[0;33m[W][HTTP] [HTTP] No frames for %u ms - ending stream\r\n"
	.align	2
.LC14:
	.string	"\033[0;33m[W][HTTP] [HTTP] Drop invalid JPEG frame (len=%u)\r\n"
	.align	2
.LC15:
	.string	"--frame\r\nContent-Type: image/jpeg\r\nContent-Length: %u\r\nX-Timestamp-Ms: %u\r\n\r\n"
	.align	2
.LC16:
	.string	"\033[0;33m[W][HTTP] [HTTP] Stream header send failed (errno=%d)\r\n"
	.align	2
.LC17:
	.string	"\033[0;33m[W][HTTP] [HTTP] Stream data send failed (len=%u errno=%d)\r\n"
	.align	2
.LC18:
	.string	"\r\n"
	.align	2
.LC19:
	.string	"\033[0;33m[W][HTTP] [HTTP] Stream trailer send failed (errno=%d)\r\n"
	.align	2
.LC20:
	.string	"\033[0m[I][HTTP] [HTTP] Stream client disconnected: %s\r\n"
	.align	2
.LC21:
	.string	"stream ended"
	.section	.text.stream_task,"ax",@progbits
	.align	1
	.type	stream_task, @function
stream_task:
.LFB90:
	.loc 1 255 1 is_stmt 1
	.cfi_startproc
.LVL73:
	.loc 1 256 5
	.loc 1 257 5
	.loc 1 255 1 is_stmt 0
	addi	sp,sp,-368
	.cfi_def_cfa_offset 368
	sw	s3,348(sp)
	.cfi_offset 19, -20
	.loc 1 261 5
	lui	s3,%hi(.LANCHOR2)
	.loc 1 255 1
	sw	s0,360(sp)
	sw	s2,352(sp)
	sw	s4,344(sp)
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 20, -24
	.loc 1 257 9
	lw	s2,0(a0)
.LVL74:
	.loc 1 258 5 is_stmt 1
	.loc 1 258 14 is_stmt 0
	lw	s4,20(a0)
.LVL75:
	.loc 1 261 5 is_stmt 1
	li	a2,16
	addi	a1,s3,%lo(.LANCHOR2)
	.loc 1 255 1 is_stmt 0
	mv	s0,a0
	.loc 1 261 5
	addi	a0,a0,8
.LVL76:
	.loc 1 255 1
	sw	ra,364(sp)
	sw	s1,356(sp)
	sw	s5,340(sp)
	sw	s6,336(sp)
	sw	s7,332(sp)
	sw	s8,328(sp)
	sw	s9,324(sp)
	sw	s10,320(sp)
	sw	s11,316(sp)
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.cfi_offset 26, -48
	.cfi_offset 27, -52
	.loc 1 261 5
	call	ip4addr_ntoa_r
.LVL77:
	.loc 1 263 5 is_stmt 1
	mv	a0,s0
	call	vPortFree
.LVL78:
	.loc 1 264 5
	.loc 1 266 5
	lui	a0,%hi(.LC10)
	mv	a2,s4
	addi	a1,s3,%lo(.LANCHOR2)
	addi	a0,a0,%lo(.LC10)
	call	printf
.LVL79:
	.loc 1 270 5
	.loc 1 270 20 is_stmt 0
	li	a4,3
	.loc 1 272 5
	li	a1,4096
	addi	a2,a1,5
	.loc 1 270 20
	li	a5,0
	sw	a4,32(sp)
	.loc 1 272 5
	addi	a1,a1,-1
	li	a4,16
	addi	a3,sp,32
	mv	a0,s2
	.loc 1 270 20
	sw	a5,36(sp)
	sw	zero,40(sp)
	.loc 1 272 5 is_stmt 1
	call	lwip_setsockopt
.LVL80:
	.loc 1 275 5
	.loc 1 282 5
	.loc 1 282 9 is_stmt 0
	lui	a1,%hi(.LANCHOR3)
	li	a2,120
	addi	a1,a1,%lo(.LANCHOR3)
	mv	a0,s2
	call	send_all
.LVL81:
	.loc 1 282 8
	blt	a0,zero,.L63
.LBB58:
	.loc 1 321 19
	lui	s0,%hi(.LANCHOR1)
.LVL82:
.LBE58:
	.loc 1 288 14
	li	s1,0
.LBB62:
	.loc 1 321 19
	addi	s0,s0,%lo(.LANCHOR1)
	.loc 1 346 21
	lui	s5,%hi(.LC15)
	.loc 1 368 13
	lui	s8,%hi(.LC18)
	.loc 1 325 13
	lui	s9,%hi(.LC14)
.LBB59:
	.loc 1 298 17
	lui	s10,%hi(.LANCHOR0)
	.loc 1 307 21
	lui	s11,%hi(.LC12)
.L64:
.LVL83:
.LBE59:
.LBE62:
	.loc 1 292 5 is_stmt 1
.LBB63:
	.loc 1 293 9
	.loc 1 294 9
	.loc 1 295 13 is_stmt 0
	li	a1,200
	addi	a0,sp,20
	.loc 1 294 18
	sw	zero,16(sp)
	.loc 1 295 9 is_stmt 1
	.loc 1 295 13 is_stmt 0
	call	uvc_dequeue_latest_frame
.LVL84:
	.loc 1 295 12
	beq	a0,zero,.L65
.LBB60:
	.loc 1 297 13 is_stmt 1
	.loc 1 297 33 is_stmt 0
	call	uvc_get_camera_state
.LVL85:
	.loc 1 298 13 is_stmt 1
	.loc 1 298 17 is_stmt 0
	addi	a5,s10,%lo(.LANCHOR0)
	lbu	a5,0(a5)
	andi	a5,a5,0xff
	.loc 1 298 16
	bne	a5,zero,.L66
	.loc 1 298 31 discriminator 1
	beq	a0,zero,.L66
	.loc 1 299 39
	li	a5,3
	bne	a0,a5,.L67
.L66:
	.loc 1 301 17 is_stmt 1
	lui	a0,%hi(.LC11)
.LVL86:
	addi	a0,a0,%lo(.LC11)
	call	printf
.LVL87:
	.loc 1 302 17
.L63:
.LBE60:
.LBE63:
	.loc 1 380 5
	lui	a0,%hi(.LC20)
	addi	a1,s3,%lo(.LANCHOR2)
	addi	a0,a0,%lo(.LC20)
	call	printf
.LVL88:
	.loc 1 381 5
	mv	a0,s2
	call	lwip_close
.LVL89:
	.loc 1 382 5
	.loc 1 382 21 is_stmt 0
	lui	a5,%hi(.LANCHOR4)
	sb	zero,%lo(.LANCHOR4)(a5)
	.loc 1 383 5 is_stmt 1
	.loc 1 383 25 is_stmt 0
	lui	a5,%hi(.LANCHOR5)
	.loc 1 380 5
	addi	s0,s3,%lo(.LANCHOR2)
	.loc 1 383 25
	sw	zero,%lo(.LANCHOR5)(a5)
	.loc 1 384 5 is_stmt 1
	.loc 1 386 5 is_stmt 0
	lui	a1,%hi(.LC21)
	.loc 1 384 40
	lui	a5,%hi(.LANCHOR1)
	addi	a5,a5,%lo(.LANCHOR1)
	.loc 1 386 5
	mv	a0,s4
	.loc 1 385 27
	sb	zero,0(s0)
	.loc 1 386 5
	addi	a1,a1,%lo(.LC21)
	.loc 1 384 40
	sb	zero,24(a5)
	.loc 1 385 5 is_stmt 1
	.loc 1 386 5
	call	stop_capture_for_session
.LVL90:
	.loc 1 387 5
	li	a0,0
	call	vTaskDelete
.LVL91:
	.loc 1 388 1 is_stmt 0
	lw	ra,364(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,360(sp)
	.cfi_restore 8
	lw	s1,356(sp)
	.cfi_restore 9
	lw	s2,352(sp)
	.cfi_restore 18
.LVL92:
	lw	s3,348(sp)
	.cfi_restore 19
	lw	s4,344(sp)
	.cfi_restore 20
.LVL93:
	lw	s5,340(sp)
	.cfi_restore 21
	lw	s6,336(sp)
	.cfi_restore 22
	lw	s7,332(sp)
	.cfi_restore 23
	lw	s8,328(sp)
	.cfi_restore 24
	lw	s9,324(sp)
	.cfi_restore 25
	lw	s10,320(sp)
	.cfi_restore 26
	lw	s11,316(sp)
	.cfi_restore 27
	addi	sp,sp,368
	.cfi_def_cfa_offset 0
	jr	ra
.LVL94:
.L67:
	.cfi_restore_state
.LBB64:
.LBB61:
	.loc 1 305 13 is_stmt 1
	.loc 1 305 16 is_stmt 0
	addi	s1,s1,1
.LVL95:
	li	a5,59
	bleu	s1,a5,.L64
	.loc 1 306 17 is_stmt 1
	.loc 1 306 21 is_stmt 0
	mv	a0,s4
.LVL96:
	call	uvc_session_is_restarting
.LVL97:
	.loc 1 306 20
	beq	a0,zero,.L70
	.loc 1 307 21 is_stmt 1
	li	a1,12288
	mv	a2,s4
	addi	a1,a1,-288
	addi	a0,s11,%lo(.LC12)
	call	printf
.LVL98:
	.loc 1 310 21
	.loc 1 311 21
	.loc 1 310 33 is_stmt 0
	li	s1,30
	.loc 1 311 21
	j	.L64
.LVL99:
.L70:
	.loc 1 313 17 is_stmt 1
	li	a1,12288
	lui	a0,%hi(.LC13)
	addi	a1,a1,-288
	addi	a0,a0,%lo(.LC13)
	call	printf
.LVL100:
	.loc 1 315 17
	j	.L63
.L65:
.LBE61:
	.loc 1 319 9
.LVL101:
	.loc 1 321 9
	.loc 1 321 19 is_stmt 0
	lw	a4,0(s0)
	lw	a5,4(s0)
	.loc 1 321 35
	li	s6,1
	li	s7,0
	add64	a4,a4,s6
	sw	a4,0(s0)
	.loc 1 323 14
	addi	a1,sp,16
	addi	a0,sp,20
	.loc 1 321 35
	sw	a5,4(s0)
	.loc 1 323 9 is_stmt 1
	.loc 1 323 14 is_stmt 0
	call	frame_extract_valid_jpeg
.LVL102:
	.loc 1 323 12
	bne	a0,zero,.L71
	.loc 1 324 13 is_stmt 1
	.loc 1 324 23 is_stmt 0
	lw	a4,8(s0)
	lw	a5,12(s0)
	.loc 1 325 13
	lw	a1,24(sp)
	addi	a0,s9,%lo(.LC14)
	.loc 1 324 38
	add64	s6,a4,s6
	sw	s6,8(s0)
	sw	s7,12(s0)
	.loc 1 325 13 is_stmt 1
	call	printf
.LVL103:
	.loc 1 326 13
.L82:
	.loc 1 335 13
	addi	a0,sp,20
	call	uvc_frame_release
.LVL104:
	.loc 1 336 13
.L81:
	.loc 1 376 9
	.loc 1 319 21 is_stmt 0
	li	s1,0
	j	.L64
.L71:
	.loc 1 330 9 is_stmt 1
	.loc 1 330 26 is_stmt 0
	call	xTaskGetTickCount
.LVL105:
	.loc 1 331 9 is_stmt 1
	.loc 1 332 9
	.loc 1 332 41 is_stmt 0
	lw	a4,28(sp)
.LVL106:
	.loc 1 333 9 is_stmt 1
	.loc 1 333 12 is_stmt 0
	li	a5,800
	.loc 1 332 18
	sub	a0,a0,a4
.LVL107:
	.loc 1 333 12
	bleu	a0,a5,.L72
	.loc 1 334 13 is_stmt 1
	.loc 1 334 23 is_stmt 0
	lw	a4,8(s0)
	lw	a5,12(s0)
	.loc 1 334 38
	add64	s6,a4,s6
	sw	s6,8(s0)
	sw	s7,12(s0)
	j	.L82
.L72:
	.loc 1 338 9 is_stmt 1
	.loc 1 346 9
	.loc 1 346 21 is_stmt 0
	lw	a3,16(sp)
	addi	a2,s5,%lo(.LC15)
	li	a1,256
	addi	a0,sp,48
	call	snprintf
.LVL108:
	mv	a2,a0
.LVL109:
	.loc 1 355 9 is_stmt 1
	.loc 1 355 13 is_stmt 0
	addi	a1,sp,48
	mv	a0,s2
.LVL110:
	call	send_all
.LVL111:
	.loc 1 355 12
	bge	a0,zero,.L73
	.loc 1 356 13 is_stmt 1
	.loc 1 356 14 is_stmt 0
	call	__errno
.LVL112:
	.loc 1 356 13
	lw	a1,0(a0)
	lui	a0,%hi(.LC16)
	addi	a0,a0,%lo(.LC16)
.L84:
	.loc 1 369 13
	call	printf
.LVL113:
	j	.L83
.L73:
	.loc 1 361 9 is_stmt 1
	.loc 1 361 13 is_stmt 0
	lw	a2,16(sp)
	lw	a1,20(sp)
	mv	a0,s2
	call	send_all
.LVL114:
	.loc 1 361 12
	bge	a0,zero,.L74
	.loc 1 362 13 is_stmt 1
	lw	a1,16(sp)
	sw	a1,12(sp)
	.loc 1 362 14 is_stmt 0
	call	__errno
.LVL115:
	.loc 1 362 13
	lw	a2,0(a0)
	lw	a1,12(sp)
	lui	a0,%hi(.LC17)
	addi	a0,a0,%lo(.LC17)
	call	printf
.LVL116:
	.loc 1 364 13 is_stmt 1
.L83:
	.loc 1 370 13
	addi	a0,sp,20
	call	uvc_frame_release
.LVL117:
	.loc 1 371 13
	j	.L63
.L74:
	.loc 1 368 9
	.loc 1 368 13 is_stmt 0
	li	a2,2
	addi	a1,s8,%lo(.LC18)
	mv	a0,s2
	call	send_all
.LVL118:
	.loc 1 368 12
	bge	a0,zero,.L75
	.loc 1 369 13 is_stmt 1
	.loc 1 369 14 is_stmt 0
	call	__errno
.LVL119:
	.loc 1 369 13
	lw	a1,0(a0)
	lui	a0,%hi(.LC19)
	addi	a0,a0,%lo(.LC19)
	j	.L84
.L75:
	.loc 1 374 9 is_stmt 1
	addi	a0,sp,20
	call	uvc_frame_release
.LVL120:
	.loc 1 375 9
	.loc 1 375 19 is_stmt 0
	lw	a4,16(s0)
	lw	a5,20(s0)
	.loc 1 375 31
	add64	s6,a4,s6
	sw	s6,16(s0)
	sw	s7,20(s0)
	j	.L81
.LBE64:
	.cfi_endproc
.LFE90:
	.size	stream_task, .-stream_task
	.section	.rodata.handle_client.str1.4,"aMS",@progbits,1
	.align	2
.LC22:
	.string	"/"
	.align	2
.LC23:
	.string	"true"
	.align	2
.LC24:
	.string	"false"
	.align	2
.LC25:
	.string	""
	.align	2
.LC26:
	.string	"GET "
	.align	2
.LC27:
	.string	"Only GET supported"
	.align	2
.LC28:
	.string	"405 Method Not Allowed"
	.align	2
.LC29:
	.string	"Malformed request"
	.align	2
.LC30:
	.string	"400 Bad Request"
	.align	2
.LC31:
	.string	"http://"
	.align	2
.LC32:
	.string	"https://"
	.align	2
.LC33:
	.string	"Unsupported request target"
	.align	2
.LC34:
	.string	"text/html"
	.align	2
.LC35:
	.string	"200 OK"
	.align	2
.LC36:
	.string	"/stream"
	.align	2
.LC37:
	.string	"Camera unavailable"
	.align	2
.LC38:
	.string	"503 Service Unavailable"
	.align	2
.LC39:
	.string	"Stream already in use by another client"
	.align	2
.LC40:
	.string	"Camera start failed"
	.align	2
.LC41:
	.string	"stream alloc failed"
	.align	2
.LC42:
	.string	"Out of memory"
	.align	2
.LC43:
	.string	"mjpeg"
	.align	2
.LC44:
	.string	"stream task create failed"
	.align	2
.LC45:
	.string	"Cannot create stream task"
	.align	2
.LC46:
	.string	"/snapshot.jpg"
	.align	2
.LC47:
	.string	"/snapshot"
	.align	2
.LC48:
	.string	"image/jpeg"
	.align	2
.LC49:
	.string	"\033[0m[I][HTTP] [HTTP] Snapshot served len=%u min=%u warmup_left=%u\r\n"
	.align	2
.LC50:
	.string	"snapshot complete"
	.align	2
.LC51:
	.string	"\033[0;33m[W][HTTP] [HTTP] Snapshot timeout min=%u warmup_left=%u need=%u\r\n"
	.align	2
.LC52:
	.string	"No valid frame available"
	.align	2
.LC53:
	.string	"snapshot timeout"
	.align	2
.LC54:
	.string	"/status.json"
	.align	2
.LC55:
	.string	"MJPEG %ux%u @ %ufps"
	.align	2
.LC56:
	.ascii	"{\"camera_attached\":%s,\"select"
	.string	"ed_mode\":\"%s\",\"frames_in\":%llu,\"frames_dequeued\":%llu,\"frames_dropped\":%llu,\"frames_sent\":%llu,\"stream_client_connected\":%s,\"stream_client_ip\":\"%s\",\"heap_free_bytes\":%u,\"psram_free_bytes\":%u,\"pool_total\":%u,\"pool_free\":%u,\"pool_queued\":%u,\"uptime_ms\":%llu}"
	.align	2
.LC57:
	.string	"application/json"
	.align	2
.LC58:
	.string	"Unknown endpoint"
	.align	2
.LC59:
	.string	"404 Not Found"
	.section	.text.handle_client,"ax",@progbits
	.align	1
	.type	handle_client, @function
handle_client:
.LFB96:
	.loc 1 650 1 is_stmt 1
	.cfi_startproc
.LVL121:
	.loc 1 651 5
	.loc 1 652 5
	.loc 1 655 5
	.loc 1 650 1 is_stmt 0
	addi	sp,sp,-1728
	.cfi_def_cfa_offset 1728
	sw	s4,1704(sp)
	.loc 1 655 20
	li	a4,5
	.cfi_offset 20, -24
	.loc 1 650 1
	mv	s4,a1
	.loc 1 656 5
	li	a1,4096
.LVL122:
	.loc 1 655 20
	li	a5,0
	sw	a4,88(sp)
	.loc 1 656 5
	addi	a2,a1,6
	li	a4,16
	addi	a3,sp,88
	addi	a1,a1,-1
	.loc 1 650 1
	sw	s0,1720(sp)
	sw	s1,1716(sp)
	sw	s2,1712(sp)
	sw	s3,1708(sp)
	sw	s5,1700(sp)
	sw	s6,1696(sp)
	sw	ra,1724(sp)
	sw	s7,1692(sp)
	sw	s8,1688(sp)
	sw	s9,1684(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 1, -4
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.loc 1 650 1
	mv	s2,a0
	.loc 1 655 20
	sw	a5,92(sp)
	sw	zero,96(sp)
	.loc 1 656 5 is_stmt 1
.LBB82:
.LBB83:
	.loc 1 562 9 is_stmt 0
	li	s1,0
.LBE83:
.LBE82:
	.loc 1 656 5
	call	lwip_setsockopt
.LVL123:
	.loc 1 658 5 is_stmt 1
.LBB89:
.LBB87:
	.loc 1 564 11
.LBB84:
	.loc 1 565 61 is_stmt 0
	li	s5,511
	.loc 1 565 36
	addi	s0,sp,144
.LVL124:
	.loc 1 573 13
	lui	s6,%hi(.LC18)
.LBE84:
	.loc 1 564 11
	li	s3,510
.LVL125:
.L89:
.LBB85:
	.loc 1 565 9 is_stmt 1
	.loc 1 565 17 is_stmt 0
	li	a3,0
	sub	a2,s5,s1
	add	a1,s0,s1
	mv	a0,s2
	call	lwip_recv
.LVL126:
	.loc 1 566 9 is_stmt 1
	.loc 1 566 12 is_stmt 0
	bgt	a0,zero,.L86
	.loc 1 567 13 is_stmt 1
	.loc 1 567 32 is_stmt 0
	bne	s1,zero,.L87
.LVL127:
.L173:
.LBE85:
.LBE87:
.LBE89:
	.loc 1 705 11
	li	s0,0
	j	.L167
.LVL128:
.L86:
.LBB90:
.LBB88:
.LBB86:
	.loc 1 570 9 is_stmt 1
	.loc 1 570 11 is_stmt 0
	add	s1,s1,a0
.LVL129:
	.loc 1 571 9 is_stmt 1
	.loc 1 571 16 is_stmt 0
	srb	zero,s0,s1,0
	.loc 1 573 9 is_stmt 1
	.loc 1 573 13 is_stmt 0
	addi	a1,s6,%lo(.LC18)
	mv	a0,s0
.LVL130:
	call	strstr
.LVL131:
	.loc 1 573 12
	bne	a0,zero,.L87
	.loc 1 573 36
	li	a1,10
	mv	a0,s0
	call	strchr
.LVL132:
	.loc 1 573 33
	bne	a0,zero,.L87
.LBE86:
	.loc 1 564 11 is_stmt 1
	ble	s1,s3,.L89
.L87:
.LVL133:
.LBE88:
.LBE90:
	.loc 1 659 5
	.loc 1 663 5
	.loc 1 663 22 is_stmt 0
	lui	a1,%hi(.LC18)
	addi	a1,a1,%lo(.LC18)
	mv	a0,s0
	call	strstr
.LVL134:
	.loc 1 664 5 is_stmt 1
	.loc 1 664 8 is_stmt 0
	bne	a0,zero,.L135
	.loc 1 665 9 is_stmt 1
	.loc 1 665 20 is_stmt 0
	li	a1,10
	mv	a0,s0
.LVL135:
	call	strchr
.LVL136:
	.loc 1 667 5 is_stmt 1
	.loc 1 667 8 is_stmt 0
	beq	a0,zero,.L90
.L135:
	.loc 1 668 9 is_stmt 1
	.loc 1 668 19 is_stmt 0
	sb	zero,0(a0)
.L90:
	.loc 1 672 5 is_stmt 1
	.loc 1 672 9 is_stmt 0
	lui	a1,%hi(.LC26)
	li	a2,4
	addi	a1,a1,%lo(.LC26)
	mv	a0,s0
.LVL137:
	call	strncmp
.LVL138:
	mv	s1,a0
	.loc 1 672 8
	beq	a0,zero,.L91
	.loc 1 673 9 is_stmt 1
	lui	a2,%hi(.LC27)
	lui	a1,%hi(.LC28)
	addi	a2,a2,%lo(.LC27)
	addi	a1,a1,%lo(.LC28)
.L174:
	.loc 1 703 9 is_stmt 0
	mv	a0,s2
	call	send_error
.LVL139:
	j	.L173
.L91:
	.loc 1 677 5 is_stmt 1
.LVL140:
	.loc 1 678 5
	.loc 1 678 28 is_stmt 0
	addi	s0,sp,148
.LVL141:
	li	a1,32
	mv	a0,s0
	call	strchr
.LVL142:
	mv	s5,a0
.LVL143:
	.loc 1 679 5 is_stmt 1
	.loc 1 679 8 is_stmt 0
	bne	a0,zero,.L92
	.loc 1 680 9 is_stmt 1
	lui	a2,%hi(.LC29)
	addi	a2,a2,%lo(.LC29)
.LVL144:
.L177:
	.loc 1 687 9 is_stmt 0
	lui	a1,%hi(.LC30)
	addi	a1,a1,%lo(.LC30)
	j	.L174
.LVL145:
.L92:
	.loc 1 684 5 is_stmt 1
	.loc 1 685 5
	.loc 1 685 10 is_stmt 0
	sub	s3,a0,s0
.LVL146:
.LBB91:
.LBB92:
	.loc 1 584 5 is_stmt 1
	.loc 1 585 5
	.loc 1 587 5
	.loc 1 587 17 is_stmt 0
	ble	s3,zero,.L93
	.loc 1 592 5 is_stmt 1
	.loc 1 592 8 is_stmt 0
	li	a5,6
	ble	s3,a5,.L94
	.loc 1 592 21
	lui	a1,%hi(.LC31)
	li	a2,7
	addi	a1,a1,%lo(.LC31)
	mv	a0,s0
.LVL147:
	call	strncmp
.LVL148:
	.loc 1 592 18
	bne	a0,zero,.L94
.LBB93:
	.loc 1 593 9 is_stmt 1
	.loc 1 593 29 is_stmt 0
	addi	a2,s3,-7
	li	a1,47
	addi	a0,sp,155
	call	memchr
.LVL149:
	mv	s0,a0
.LVL150:
	.loc 1 594 9 is_stmt 1
	.loc 1 598 17 is_stmt 0
	sub	s3,s5,a0
.LVL151:
	.loc 1 594 12
	bne	a0,zero,.L97
.LVL152:
.L98:
	.loc 1 595 15
	lui	s0,%hi(.LC22)
	.loc 1 596 17
	li	s3,1
	.loc 1 595 15
	addi	s0,s0,%lo(.LC22)
.LVL153:
.L96:
.LBE93:
	.loc 1 612 18
	lbu	a4,0(s0)
	li	a5,47
	bne	a4,a5,.L93
.LBB94:
	.loc 1 618 12
	li	a4,63
	.loc 1 618 25
	li	a3,35
.L102:
.LVL154:
	.loc 1 618 9 is_stmt 1
	.loc 1 618 14 is_stmt 0
	lrbu	a5,s0,s1,0
	.loc 1 618 12
	bne	a5,a4,.L99
.L101:
.LBE94:
	.loc 1 624 11
	li	a2,1
	.loc 1 624 24
	addi	a3,s0,-1
	.loc 1 624 20
	li	a5,47
.LVL155:
.L100:
	.loc 1 624 11 is_stmt 1
	ble	s1,a2,.L103
	.loc 1 624 20 is_stmt 0
	lrbu	a4,a3,s1,0
	beq	a4,a5,.L104
	.loc 1 628 5 is_stmt 1
	.loc 1 628 8 is_stmt 0
	li	a5,511
	bgt	s1,a5,.L93
.L103:
	.loc 1 632 5 is_stmt 1
	addi	s3,sp,656
.LVL156:
	mv	a2,s1
	mv	a1,s0
	mv	a0,s3
	call	memcpy
.LVL157:
	.loc 1 633 5
.LBE92:
.LBE91:
	.loc 1 693 8 is_stmt 0
	li	s7,1
.LBB100:
.LBB97:
	.loc 1 633 15
	srb	zero,s3,s1,0
	.loc 1 634 5 is_stmt 1
	.loc 1 635 9
.LVL158:
.LBE97:
.LBE100:
	.loc 1 690 5
	.loc 1 693 5
	.loc 1 693 8 is_stmt 0
	bne	s1,s7,.L168
	.loc 1 693 23 discriminator 1
	lbu	a4,656(sp)
	li	a5,47
	bne	a4,a5,.L107
	.loc 1 694 9 is_stmt 1
.LVL159:
.LBB101:
.LBB102:
	.loc 1 211 5
	lui	a3,%hi(.LANCHOR6)
	lui	a2,%hi(.LC34)
	li	a4,201
	addi	a3,a3,%lo(.LANCHOR6)
	addi	a2,a2,%lo(.LC34)
.LVL160:
.L179:
.LBE102:
.LBE101:
.LBB103:
.LBB104:
	.loc 1 557 5 is_stmt 0
	lui	a1,%hi(.LC35)
	addi	a1,a1,%lo(.LC35)
	mv	a0,s2
	call	send_response
.LVL161:
	j	.L173
.LVL162:
.L94:
.LBE104:
.LBE103:
.LBB106:
.LBB98:
	.loc 1 601 12 is_stmt 1
	.loc 1 601 15 is_stmt 0
	li	a5,7
	ble	s3,a5,.L96
	.loc 1 601 28
	lui	a1,%hi(.LC32)
	li	a2,8
	addi	a1,a1,%lo(.LC32)
	mv	a0,s0
	call	strncmp
.LVL163:
	.loc 1 601 25
	bne	a0,zero,.L96
.LBB95:
	.loc 1 602 9 is_stmt 1
	.loc 1 602 29 is_stmt 0
	addi	a2,s3,-8
	li	a1,47
	addi	a0,sp,156
	call	memchr
.LVL164:
	mv	s0,a0
.LVL165:
	.loc 1 603 9 is_stmt 1
	.loc 1 603 12 is_stmt 0
	beq	a0,zero,.L98
	.loc 1 607 13 is_stmt 1
	.loc 1 607 17 is_stmt 0
	sub	s3,s5,a0
.LVL166:
	.loc 1 608 13 is_stmt 1
.L97:
.LBE95:
	.loc 1 612 5
	.loc 1 612 8 is_stmt 0
	bgt	s3,zero,.L96
.LVL167:
.L93:
.LBE98:
.LBE106:
	.loc 1 687 9 is_stmt 1
	lui	a2,%hi(.LC33)
	addi	a2,a2,%lo(.LC33)
	j	.L177
.LVL168:
.L99:
.LBB107:
.LBB99:
.LBB96:
	.loc 1 618 25 is_stmt 0
	beq	a5,a3,.L101
	.loc 1 617 30 is_stmt 1
	.loc 1 617 31 is_stmt 0
	addi	s1,s1,1
.LVL169:
	.loc 1 617 21 is_stmt 1
	.loc 1 617 5 is_stmt 0
	bne	s1,s3,.L102
	j	.L101
.LVL170:
.L104:
.LBE96:
	.loc 1 625 9 is_stmt 1
	.loc 1 625 12 is_stmt 0
	addi	s1,s1,-1
.LVL171:
	j	.L100
.LVL172:
.L168:
.LBE99:
.LBE107:
	.loc 1 695 12 is_stmt 1
	.loc 1 695 15 is_stmt 0
	li	a5,7
	bne	s1,a5,.L108
	.loc 1 695 33 discriminator 1
	lui	a1,%hi(.LC36)
	li	a2,7
	addi	a1,a1,%lo(.LC36)
	mv	a0,s3
	call	strncmp
.LVL173:
	.loc 1 695 30 discriminator 1
	bne	a0,zero,.L109
	.loc 1 696 9 is_stmt 1
.LVL174:
.LBB108:
.LBB109:
	.loc 1 397 5
	.loc 1 397 25 is_stmt 0
	call	uvc_get_camera_state
.LVL175:
	.loc 1 399 5 is_stmt 1
	.loc 1 399 8 is_stmt 0
	bne	a0,zero,.L110
.LVL176:
.L111:
	.loc 1 400 9 is_stmt 1
	lui	a2,%hi(.LC37)
	addi	a2,a2,%lo(.LC37)
.LVL177:
.L176:
	.loc 1 413 9 is_stmt 0
	lui	a1,%hi(.LC38)
	addi	a1,a1,%lo(.LC38)
	j	.L174
.LVL178:
.L110:
	.loc 1 399 31
	li	a5,3
	beq	a0,a5,.L111
	.loc 1 405 5 is_stmt 1
	.loc 1 405 9 is_stmt 0
	lui	s1,%hi(.LANCHOR4)
	addi	s1,s1,%lo(.LANCHOR4)
	lbu	s0,0(s1)
	andi	s0,s0,0xff
	.loc 1 405 8
	beq	s0,zero,.L112
	.loc 1 406 9 is_stmt 1
	lui	a2,%hi(.LC39)
	addi	a2,a2,%lo(.LC39)
	j	.L176
.L112:
	.loc 1 411 5
	.loc 1 411 27 is_stmt 0
	call	uvc_alloc_session_id
.LVL179:
	mv	s5,a0
.LVL180:
	.loc 1 412 5 is_stmt 1
	.loc 1 412 9 is_stmt 0
	call	uvc_start_capture_session
.LVL181:
	.loc 1 412 8
	beq	a0,zero,.L113
.LVL182:
.L119:
	.loc 1 413 9 is_stmt 1
	lui	a2,%hi(.LC40)
	addi	a2,a2,%lo(.LC40)
	j	.L176
.LVL183:
.L113:
	.loc 1 417 5
	.loc 1 417 30 is_stmt 0
	li	a0,24
	call	pvPortMalloc
.LVL184:
	mv	s3,a0
.LVL185:
	.loc 1 418 5 is_stmt 1
	.loc 1 418 8 is_stmt 0
	bne	a0,zero,.L114
	.loc 1 419 9 is_stmt 1
	lui	a1,%hi(.LC41)
	addi	a1,a1,%lo(.LC41)
	mv	a0,s5
.LVL186:
	call	stop_capture_for_session
.LVL187:
	.loc 1 420 9
	lui	a2,%hi(.LC42)
	addi	a2,a2,%lo(.LC42)
.LVL188:
.L175:
	.loc 1 441 9 is_stmt 0
	lui	a1,%hi(.LC38)
	addi	a1,a1,%lo(.LC38)
	mv	a0,s2
	call	send_error
.LVL189:
	.loc 1 443 9 is_stmt 1
.L167:
.LBE109:
.LBE108:
	.loc 1 706 1 is_stmt 0
	lw	ra,1724(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,s0
	lw	s0,1720(sp)
	.cfi_restore 8
	lw	s1,1716(sp)
	.cfi_restore 9
	lw	s2,1712(sp)
	.cfi_restore 18
.LVL190:
	lw	s3,1708(sp)
	.cfi_restore 19
	lw	s4,1704(sp)
	.cfi_restore 20
	lw	s5,1700(sp)
	.cfi_restore 21
	lw	s6,1696(sp)
	.cfi_restore 22
	lw	s7,1692(sp)
	.cfi_restore 23
	lw	s8,1688(sp)
	.cfi_restore 24
	lw	s9,1684(sp)
	.cfi_restore 25
	addi	sp,sp,1728
	.cfi_def_cfa_offset 0
	jr	ra
.LVL191:
.L114:
	.cfi_restore_state
.LBB112:
.LBB110:
	.loc 1 424 5 is_stmt 1
	.loc 1 425 22 is_stmt 0
	mv	a1,s4
	li	a2,16
	.loc 1 424 15
	swia	s2,(a0),4,0
.LVL192:
	.loc 1 425 5 is_stmt 1
	.loc 1 425 22 is_stmt 0
	call	memcpy
.LVL193:
	.loc 1 426 5 is_stmt 1
	.loc 1 428 19 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	sb	zero,%lo(.LANCHOR0)(a5)
	.loc 1 430 25
	lui	s6,%hi(.LANCHOR5)
	.loc 1 429 21
	sb	s7,0(s1)
	.loc 1 430 25
	addi	s6,s6,%lo(.LANCHOR5)
	.loc 1 431 40
	lui	s4,%hi(.LANCHOR1)
.LVL194:
	.loc 1 433 22
	lui	a1,%hi(.LC43)
	lui	a0,%hi(stream_task)
	.loc 1 426 21
	sw	s5,20(s3)
	.loc 1 428 5 is_stmt 1
	.loc 1 429 5
	.loc 1 430 5
	.loc 1 430 25 is_stmt 0
	sw	s5,0(s6)
	.loc 1 431 5 is_stmt 1
	.loc 1 431 40 is_stmt 0
	addi	s4,s4,%lo(.LANCHOR1)
	.loc 1 433 22
	li	a5,0
	li	a4,9
	mv	a3,s3
	li	a2,4096
	addi	a1,a1,%lo(.LC43)
	addi	a0,a0,%lo(stream_task)
	.loc 1 431 40
	sb	s7,24(s4)
	.loc 1 433 5 is_stmt 1
	.loc 1 433 22 is_stmt 0
	call	xTaskCreate
.LVL195:
	.loc 1 435 5 is_stmt 1
	.loc 1 435 8 is_stmt 0
	beq	a0,s7,.L138
	.loc 1 436 9 is_stmt 1
	mv	a0,s3
.LVL196:
	call	vPortFree
.LVL197:
	.loc 1 437 9
	.loc 1 440 9 is_stmt 0
	lui	a1,%hi(.LC44)
	.loc 1 437 25
	sb	zero,0(s1)
	.loc 1 438 9 is_stmt 1
	.loc 1 438 29 is_stmt 0
	sw	zero,0(s6)
	.loc 1 439 9 is_stmt 1
	.loc 1 440 9 is_stmt 0
	addi	a1,a1,%lo(.LC44)
	mv	a0,s5
	.loc 1 439 44
	sb	zero,24(s4)
	.loc 1 440 9 is_stmt 1
	call	stop_capture_for_session
.LVL198:
	.loc 1 441 9
	lui	a2,%hi(.LC45)
	addi	a2,a2,%lo(.LC45)
	j	.L175
.LVL199:
.L108:
.LBE110:
.LBE112:
	.loc 1 697 12
	.loc 1 697 15 is_stmt 0
	li	a5,13
	bne	s1,a5,.L107
	.loc 1 697 35 discriminator 1
	lui	a1,%hi(.LC46)
	li	a2,13
	addi	a1,a1,%lo(.LC46)
.L171:
	mv	a0,s3
	call	strncmp
.LVL200:
	.loc 1 697 32 discriminator 1
	bne	a0,zero,.L115
	.loc 1 699 9 is_stmt 1
.LVL201:
.LBB113:
.LBB114:
	.loc 1 455 5
	.loc 1 455 25 is_stmt 0
	call	uvc_get_camera_state
.LVL202:
	.loc 1 456 4 is_stmt 1
	.loc 1 457 5
	.loc 1 459 5
	.loc 1 459 9 is_stmt 0
	lui	a5,%hi(.LANCHOR4)
	lbu	a5,%lo(.LANCHOR4)(a5)
	andi	a5,a5,0xff
	.loc 1 459 8
	beq	a5,zero,.L169
	.loc 1 457 14
	li	s5,0
.LVL203:
	.loc 1 456 9
	li	s1,0
	j	.L116
.LVL204:
.L107:
.LBE114:
.LBE113:
	.loc 1 697 76
	li	a5,9
	bne	s1,a5,.L109
	.loc 1 698 34
	lui	a1,%hi(.LC47)
	li	a2,9
	addi	a1,a1,%lo(.LC47)
	j	.L171
.LVL205:
.L169:
.LBB120:
.LBB118:
	.loc 1 460 9 is_stmt 1
	.loc 1 460 12 is_stmt 0
	beq	a0,zero,.L111
	.loc 1 460 35
	li	a5,3
	beq	a0,a5,.L111
	.loc 1 465 9 is_stmt 1
	.loc 1 465 22 is_stmt 0
	call	uvc_alloc_session_id
.LVL206:
	mv	s5,a0
.LVL207:
	.loc 1 466 9 is_stmt 1
	.loc 1 466 13 is_stmt 0
	call	uvc_start_capture_session
.LVL208:
	.loc 1 470 22
	li	s1,1
	.loc 1 466 12
	bne	a0,zero,.L119
.LVL209:
.L116:
	.loc 1 473 5 is_stmt 1
	.loc 1 473 29 is_stmt 0
	call	xTaskGetTickCount
.LVL210:
	mv	s9,a0
.LVL211:
	.loc 1 474 5 is_stmt 1
	.loc 1 474 143
	.loc 1 474 189 is_stmt 0
	beq	s1,zero,.L140
	.loc 1 474 243
	li	s3,2
	.loc 1 474 189
	li	s0,8
.L120:
.LVL212:
	.loc 1 476 11
	li	s4,4096
.LVL213:
.LBB115:
	.loc 1 488 12
	li	s6,20480
.LBE115:
	.loc 1 476 11
	addi	s4,s4,403
.LBB116:
	.loc 1 488 12
	addi	s8,s6,-481
	.loc 1 488 225
	li	s7,1
	j	.L127
.LVL214:
.L128:
	.loc 1 477 9 is_stmt 1
	.loc 1 478 9
	.loc 1 479 13 is_stmt 0
	li	a1,120
	addi	a0,sp,1168
	.loc 1 478 18
	sw	zero,104(sp)
	.loc 1 479 9 is_stmt 1
	.loc 1 479 13 is_stmt 0
	call	uvc_dequeue_latest_frame
.LVL215:
	.loc 1 479 12
	bne	a0,zero,.L127
	.loc 1 483 9 is_stmt 1
	.loc 1 483 14 is_stmt 0
	addi	a1,sp,104
	addi	a0,sp,1168
	call	frame_extract_valid_jpeg
.LVL216:
	.loc 1 483 12
	bne	a0,zero,.L122
.LVL217:
.L172:
	.loc 1 488 130 is_stmt 1
	addi	a0,sp,1168
	call	uvc_frame_release
.LVL218:
	.loc 1 488 157
.L127:
.LBE116:
	.loc 1 476 11
	.loc 1 476 13 is_stmt 0
	call	xTaskGetTickCount
.LVL219:
	.loc 1 476 33
	sub	a0,a0,s9
	.loc 1 476 11
	bleu	a0,s4,.L128
	.loc 1 496 5 is_stmt 1
	li	a1,20480
	lui	a0,%hi(.LC51)
	mv	a2,s0
	addi	a1,a1,-480
	mv	a3,s3
	addi	a0,a0,%lo(.LC51)
	call	printf
.LVL220:
	.loc 1 496 187
	lui	a2,%hi(.LC52)
	lui	a1,%hi(.LC38)
	addi	a2,a2,%lo(.LC52)
	addi	a1,a1,%lo(.LC38)
	mv	a0,s2
	call	send_error
.LVL221:
	.loc 1 497 5
	.loc 1 497 8 is_stmt 0
	beq	s1,zero,.L173
	.loc 1 498 9 is_stmt 1
	lui	a1,%hi(.LC53)
	addi	a1,a1,%lo(.LC53)
	j	.L178
.L122:
.LBB117:
	.loc 1 488 9
	.loc 1 488 22 is_stmt 0
	lw	a4,104(sp)
	.loc 1 488 12
	bleu	a4,s8,.L172
	.loc 1 488 81 is_stmt 1
	.loc 1 488 84 is_stmt 0
	beq	s0,zero,.L124
	.loc 1 488 110 is_stmt 1
	.loc 1 488 126 is_stmt 0
	addi	s0,s0,-1
.LVL222:
	j	.L172
.LVL223:
.L124:
	.loc 1 488 169 is_stmt 1
	.loc 1 488 200
	.loc 1 488 222
	.loc 1 488 225 is_stmt 0
	beq	s3,s7,.L125
	.loc 1 488 253 is_stmt 1
	addi	a0,sp,1168
	call	uvc_frame_release
.LVL224:
	.loc 1 488 280
	.loc 1 488 9 is_stmt 0
	li	s3,1
.LVL225:
	j	.L127
.LVL226:
.L125:
	.loc 1 488 294 is_stmt 1
	lw	a3,1168(sp)
	lui	a2,%hi(.LC48)
	lui	a1,%hi(.LC35)
	addi	a2,a2,%lo(.LC48)
	addi	a1,a1,%lo(.LC35)
	mv	a0,s2
	call	send_response
.LVL227:
	.loc 1 488 366
	lw	a1,104(sp)
	lui	a0,%hi(.LC49)
	li	a3,0
	addi	a2,s6,-480
	addi	a0,a0,%lo(.LC49)
	call	printf
.LVL228:
	.loc 1 489 9
	addi	a0,sp,1168
	call	uvc_frame_release
.LVL229:
	.loc 1 490 9
	.loc 1 490 12 is_stmt 0
	beq	s1,zero,.L173
	.loc 1 491 13 is_stmt 1
	lui	a1,%hi(.LC50)
	addi	a1,a1,%lo(.LC50)
.LVL230:
.L178:
.LBE117:
	.loc 1 498 9 is_stmt 0
	mv	a0,s5
	call	stop_capture_for_session
.LVL231:
	j	.L173
.LVL232:
.L109:
.LBE118:
.LBE120:
	.loc 1 700 12 is_stmt 1
	.loc 1 700 15 is_stmt 0
	li	a5,12
	bne	s1,a5,.L115
	.loc 1 700 34 discriminator 1
	lui	a1,%hi(.LC54)
	li	a2,12
	addi	a1,a1,%lo(.LC54)
	mv	a0,s3
	call	strncmp
.LVL233:
	.loc 1 700 31 discriminator 1
	bne	a0,zero,.L115
	.loc 1 701 9 is_stmt 1
.LVL234:
.LBB121:
.LBB105:
	.loc 1 508 5
	.loc 1 508 25 is_stmt 0
	call	uvc_get_camera_state
.LVL235:
	mv	s4,a0
.LVL236:
	.loc 1 509 5 is_stmt 1
	.loc 1 509 30 is_stmt 0
	call	uvc_get_mode
.LVL237:
	.loc 1 511 10
	li	a5,1701736448
	.loc 1 509 30
	mv	s0,a0
.LVL238:
	.loc 1 511 5 is_stmt 1
	.loc 1 511 10 is_stmt 0
	addi	a5,a5,-146
	li	a2,32
	li	a1,0
	addi	a0,sp,112
	sw	a5,104(sp)
	sw	zero,108(sp)
	call	memset
.LVL239:
	.loc 1 512 5 is_stmt 1
	.loc 1 512 8 is_stmt 0
	beq	s4,zero,.L130
	.loc 1 513 9 is_stmt 1
	lbu	a5,10(s0)
	lhu	a4,6(s0)
	lhu	a3,4(s0)
	lui	a2,%hi(.LC55)
	addi	a2,a2,%lo(.LC55)
	li	a1,40
	addi	a0,sp,104
	call	snprintf
.LVL240:
.L130:
	.loc 1 517 5
	.loc 1 517 36 is_stmt 0
	call	xTaskGetTickCount
.LVL241:
	mv	s3,a0
.LVL242:
	.loc 1 518 5 is_stmt 1
	.loc 1 518 26 is_stmt 0
	call	kfree_size
.LVL243:
	mv	s0,a0
.LVL244:
	.loc 1 519 5 is_stmt 1
	.loc 1 519 27 is_stmt 0
	call	pfree_size
.LVL245:
	mv	s1,a0
.LVL246:
	.loc 1 521 5 is_stmt 1
	.loc 1 522 5
	addi	a2,sp,84
	addi	a1,sp,80
	addi	a0,sp,76
	call	frame_pool_stats
.LVL247:
	.loc 1 524 5
	.loc 1 525 5
	.loc 1 525 16 is_stmt 0
	bne	s4,zero,.L141
	lui	s4,%hi(.LC24)
.LVL248:
	addi	s4,s4,%lo(.LC24)
.L131:
	.loc 1 544 19
	call	uvc_get_frames_captured
.LVL249:
	.loc 1 545 29
	lui	a5,%hi(.LANCHOR1)
	addi	a5,a5,%lo(.LANCHOR1)
	lw	a2,0(a5)
	lw	a3,4(a5)
	.loc 1 546 29
	lw	a6,8(a5)
	lw	a7,12(a5)
	.loc 1 547 29
	lw	t1,16(a5)
	lw	t2,20(a5)
	.loc 1 548 19
	lbu	a5,24(a5)
	andi	a5,a5,0xff
	.loc 1 525 16
	bne	a5,zero,.L142
	lui	a4,%hi(.LC24)
	addi	a4,a4,%lo(.LC24)
.L132:
	.loc 1 549 27
	lui	a5,%hi(.LANCHOR2)
	.loc 1 525 16
	lbu	t3,%lo(.LANCHOR2)(a5)
	addi	a5,a5,%lo(.LANCHOR2)
	bne	t3,zero,.L133
	lui	a5,%hi(.LC25)
	addi	a5,a5,%lo(.LC25)
.L133:
	lw	t3,84(sp)
	sw	a2,0(sp)
	lui	a2,%hi(.LC56)
	sw	t3,48(sp)
	lw	t3,80(sp)
	sw	a4,24(sp)
	sw	a6,8(sp)
	sw	t3,44(sp)
	lw	t3,76(sp)
	sw	a7,12(sp)
	sw	a3,4(sp)
	mv	a6,a0
	mv	a7,a1
	addi	a4,sp,104
	mv	a3,s4
	addi	a2,a2,%lo(.LC56)
	sw	s3,56(sp)
	sw	zero,60(sp)
	sw	t3,40(sp)
	sw	s1,36(sp)
	sw	s0,32(sp)
	sw	a5,28(sp)
	sw	t1,16(sp)
	sw	t2,20(sp)
	li	a1,512
	addi	a0,sp,1168
	call	snprintf
.LVL250:
	.loc 1 557 5
	lui	a2,%hi(.LC57)
	.loc 1 525 16
	mv	a4,a0
.LVL251:
	.loc 1 557 5 is_stmt 1
	addi	a3,sp,1168
	addi	a2,a2,%lo(.LC57)
	j	.L179
.LVL252:
.L141:
	.loc 1 525 16 is_stmt 0
	lui	s4,%hi(.LC23)
.LVL253:
	addi	s4,s4,%lo(.LC23)
	j	.L131
.L142:
	lui	a4,%hi(.LC23)
	addi	a4,a4,%lo(.LC23)
	j	.L132
.LVL254:
.L115:
.LBE105:
.LBE121:
	.loc 1 703 9 is_stmt 1
	lui	a2,%hi(.LC58)
	lui	a1,%hi(.LC59)
	addi	a2,a2,%lo(.LC58)
	addi	a1,a1,%lo(.LC59)
	j	.L174
.LVL255:
.L138:
.LBB122:
.LBB111:
	.loc 1 446 11 is_stmt 0
	li	s0,1
.LVL256:
	j	.L167
.LVL257:
.L140:
.LBE111:
.LBE122:
.LBB123:
.LBB119:
	.loc 1 474 243
	li	s3,1
	.loc 1 474 189
	li	s0,0
	j	.L120
.LBE119:
.LBE123:
	.cfi_endproc
.LFE96:
	.size	handle_client, .-handle_client
	.section	.rodata.http_server_task.str1.4,"aMS",@progbits,1
	.align	2
.LC60:
	.string	"\033[0;31m[E][HTTP] [HTTP] socket() failed\r\n"
	.align	2
.LC61:
	.string	"\033[0;31m[E][HTTP] [HTTP] bind(%d) failed\r\n"
	.align	2
.LC62:
	.string	"\033[0;31m[E][HTTP] [HTTP] listen() failed\r\n"
	.align	2
.LC63:
	.string	"\033[0m[I][HTTP] [HTTP] Server listening on port %d\r\n"
	.align	2
.LC64:
	.string	"\033[0;31m[E][HTTP] [HTTP] accept() failed\r\n"
	.section	.text.http_server_task,"ax",@progbits
	.align	1
	.type	http_server_task, @function
http_server_task:
.LFB97:
	.loc 1 713 1 is_stmt 1
	.cfi_startproc
.LVL258:
	.loc 1 714 5
	.loc 1 717 5
	.loc 1 713 1 is_stmt 0
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s1,68(sp)
	sw	s2,64(sp)
	sw	s3,60(sp)
	sw	s4,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.loc 1 717 5
	call	frame_pool_init
.LVL259:
	.loc 1 719 5 is_stmt 1
	.loc 1 719 21 is_stmt 0
	li	a2,0
	li	a1,1
	li	a0,2
	call	lwip_socket
.LVL260:
	.loc 1 720 5 is_stmt 1
	.loc 1 720 8 is_stmt 0
	bge	a0,zero,.L181
	.loc 1 721 9 is_stmt 1
	lui	a0,%hi(.LC60)
.LVL261:
	addi	a0,a0,%lo(.LC60)
	call	printf
.LVL262:
	.loc 1 722 9
	.loc 1 773 1 is_stmt 0
	lw	s0,72(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s1,68(sp)
	.cfi_restore 9
	lw	s2,64(sp)
	.cfi_restore 18
	lw	s3,60(sp)
	.cfi_restore 19
	lw	s4,56(sp)
	.cfi_restore 20
	.loc 1 722 9
	li	a0,0
	.loc 1 773 1
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	.loc 1 722 9
	tail	vTaskDelete
.LVL263:
.L181:
	.cfi_restore_state
	.loc 1 728 5
	li	a1,4096
	.loc 1 727 9
	li	a5,1
	.loc 1 728 5
	li	a4,4
	addi	a3,sp,4
	li	a2,4
	addi	a1,a1,-1
	.loc 1 727 9
	sw	a5,4(sp)
	mv	s0,a0
	.loc 1 727 5 is_stmt 1
	.loc 1 728 5
	call	lwip_setsockopt
.LVL264:
	.loc 1 730 5
	.loc 1 731 5
	li	a2,16
	li	a1,0
	addi	a0,sp,16
	call	memset
.LVL265:
	.loc 1 732 5
	.loc 1 732 21 is_stmt 0
	li	a5,2
	.loc 1 733 21
	li	a0,80
	.loc 1 732 21
	sb	a5,17(sp)
	.loc 1 733 5 is_stmt 1
	.loc 1 733 21 is_stmt 0
	call	lwip_htons
.LVL266:
	.loc 1 733 19
	sh	a0,18(sp)
	.loc 1 734 5 is_stmt 1
	.loc 1 736 9 is_stmt 0
	li	a2,16
	addi	a1,sp,16
	mv	a0,s0
	.loc 1 734 26
	sw	zero,20(sp)
	.loc 1 736 5 is_stmt 1
	.loc 1 736 9 is_stmt 0
	call	lwip_bind
.LVL267:
	.loc 1 736 8
	bge	a0,zero,.L182
	.loc 1 737 9 is_stmt 1
	lui	a0,%hi(.LC61)
	li	a1,80
	addi	a0,a0,%lo(.LC61)
	call	printf
.LVL268:
	.loc 1 738 9
.L190:
	.loc 1 745 9
	mv	a0,s0
	call	lwip_close
.LVL269:
	.loc 1 746 9
	li	a0,0
	call	vTaskDelete
.LVL270:
	.loc 1 747 9
	.loc 1 773 1 is_stmt 0
	lw	ra,76(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
.LVL271:
	lw	s1,68(sp)
	.cfi_restore 9
	lw	s2,64(sp)
	.cfi_restore 18
	lw	s3,60(sp)
	.cfi_restore 19
	lw	s4,56(sp)
	.cfi_restore 20
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
.LVL272:
.L182:
	.cfi_restore_state
	.loc 1 743 5 is_stmt 1
	.loc 1 743 9 is_stmt 0
	li	a1,2
	mv	a0,s0
	call	lwip_listen
.LVL273:
	.loc 1 743 8
	bge	a0,zero,.L184
	.loc 1 744 9 is_stmt 1
	lui	a0,%hi(.LC62)
	addi	a0,a0,%lo(.LC62)
	call	printf
.LVL274:
	j	.L190
.L184:
	.loc 1 750 5
	lui	a0,%hi(.LC63)
	li	a1,80
	addi	a0,a0,%lo(.LC63)
	call	printf
.LVL275:
.LBB124:
	.loc 1 754 19 is_stmt 0
	li	s2,16
	.loc 1 764 13
	li	s3,1
	.loc 1 759 13
	lui	s4,%hi(.LC64)
.L185:
.LBE124:
	.loc 1 752 5 is_stmt 1
.LBB125:
	.loc 1 753 9
	.loc 1 754 9
	.loc 1 756 25 is_stmt 0
	addi	a2,sp,8
	addi	a1,sp,32
	mv	a0,s0
	.loc 1 754 19
	sw	s2,8(sp)
	.loc 1 756 9 is_stmt 1
	.loc 1 756 25 is_stmt 0
	call	lwip_accept
.LVL276:
	mv	s1,a0
.LVL277:
	.loc 1 758 9 is_stmt 1
	.loc 1 758 12 is_stmt 0
	bge	a0,zero,.L186
	.loc 1 759 13 is_stmt 1
	addi	a0,s4,%lo(.LC64)
	call	printf
.LVL278:
	.loc 1 760 13
	j	.L185
.L186:
	.loc 1 764 9
	.loc 1 765 9 is_stmt 0
	li	a1,6
	li	a4,4
	addi	a3,sp,12
	li	a2,1
	.loc 1 764 13
	sw	s3,12(sp)
	.loc 1 765 9 is_stmt 1
	call	lwip_setsockopt
.LVL279:
	.loc 1 767 8
	.loc 1 767 32 is_stmt 0
	addi	a1,sp,32
	mv	a0,s1
	call	handle_client
.LVL280:
	.loc 1 769 9 is_stmt 1
	.loc 1 769 12 is_stmt 0
	bne	a0,zero,.L185
	.loc 1 770 13 is_stmt 1
	mv	a0,s1
.LVL281:
	call	lwip_close
.LVL282:
	j	.L185
.LBE125:
	.cfi_endproc
.LFE97:
	.size	http_server_task, .-http_server_task
	.section	.text.http_get_counters,"ax",@progbits
	.align	1
	.globl	http_get_counters
	.type	http_get_counters, @function
http_get_counters:
.LFB79:
	.loc 1 57 1
	.cfi_startproc
	.loc 1 58 5
	.loc 1 58 12 is_stmt 0
	lui	a0,%hi(.LANCHOR1)
	.loc 1 59 1
	addi	a0,a0,%lo(.LANCHOR1)
	ret
	.cfi_endproc
.LFE79:
	.size	http_get_counters, .-http_get_counters
	.section	.rodata.http_server_start.str1.4,"aMS",@progbits,1
	.align	2
.LC65:
	.string	"http"
	.section	.text.http_server_start,"ax",@progbits
	.align	1
	.globl	http_server_start
	.type	http_server_start, @function
http_server_start:
.LFB98:
	.loc 1 780 1 is_stmt 1
	.cfi_startproc
	.loc 1 781 5
	lui	a0,%hi(on_camera_state_change)
	.loc 1 780 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 781 5
	addi	a0,a0,%lo(on_camera_state_change)
	.loc 1 780 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 781 5
	call	uvc_register_state_callback
.LVL283:
	.loc 1 782 5 is_stmt 1
	.loc 1 784 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 782 5
	li	a2,4096
	lui	a1,%hi(.LC65)
	lui	a0,%hi(http_server_task)
	.loc 1 784 1
	.loc 1 782 5
	li	a5,0
	li	a4,8
	li	a3,0
	addi	a2,a2,-2048
	addi	a1,a1,%lo(.LC65)
	addi	a0,a0,%lo(http_server_task)
	.loc 1 784 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 782 5
	tail	xTaskCreate
.LVL284:
	.cfi_endproc
.LFE98:
	.size	http_server_start, .-http_server_start
	.globl	__fsym_stream_status
	.globl	__fsym_stream_status_name
	.section	.bss.g_counters,"aw",@nobits
	.align	3
	.set	.LANCHOR1,. + 0
	.type	g_counters, @object
	.size	g_counters, 32
g_counters:
	.zero	32
	.section	.bss.g_stream_active,"aw",@nobits
	.set	.LANCHOR4,. + 0
	.type	g_stream_active, @object
	.size	g_stream_active, 1
g_stream_active:
	.zero	1
	.section	.bss.g_stream_client_ip,"aw",@nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	g_stream_client_ip, @object
	.size	g_stream_client_ip, 16
g_stream_client_ip:
	.zero	16
	.section	.bss.g_stream_session_id,"aw",@nobits
	.align	2
	.set	.LANCHOR5,. + 0
	.type	g_stream_session_id, @object
	.size	g_stream_session_id, 4
g_stream_session_id:
	.zero	4
	.section	.data.g_camera_gone,"aw"
	.set	.LANCHOR0,. + 0
	.type	g_camera_gone, @object
	.size	g_camera_gone, 1
g_camera_gone:
	.byte	1
	.section	.rodata.__fsym_stream_status_name,"a"
	.align	2
	.type	__fsym_stream_status_name, @object
	.size	__fsym_stream_status_name, 14
__fsym_stream_status_name:
	.string	"stream_status"
	.section	.rodata.landing_page,"a"
	.align	2
	.set	.LANCHOR6,. + 0
	.type	landing_page, @object
	.size	landing_page, 202
landing_page:
	.string	"<html><head><title>QCC748M-CAM</title></head><body><h1>QCC748M-CAM</h1><p>IP: 192.168.2.1</p><img src=\"/stream\"><p><a href=\"/snapshot\">Snapshot</a> | <a href=\"/status.json\">Status</a></p></body></html>"
	.section	.rodata.stream_hdr.0,"a"
	.align	2
	.set	.LANCHOR3,. + 0
	.type	stream_hdr.0, @object
	.size	stream_hdr.0, 121
stream_hdr.0:
	.string	"HTTP/1.1 200 OK\r\nContent-Type: multipart/x-mixed-replace; boundary=frame\r\nCache-Control: no-cache\r\nConnection: close\r\n\r\n"
	.section	FSymTab,"a"
	.align	2
	.type	__fsym_stream_status, @object
	.size	__fsym_stream_status, 8
__fsym_stream_status:
	.word	__fsym_stream_status_name
	.word	cmd_stream_status
	.text
.Letext0:
	.file 2 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\machine\\_default_types.h"
	.file 3 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\sys\\_stdint.h"
	.file 4 ".\\examples\\usb_cam_stream\\http_server.h"
	.file 5 ".\\examples\\usb_cam_stream\\frame_pool.h"
	.file 6 ".\\examples\\usb_cam_stream\\uvc_capture.h"
	.file 7 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\lib\\gcc\\riscv64-unknown-elf\\10.4.0\\include\\stddef.h"
	.file 8 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\sys\\_types.h"
	.file 9 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\sys\\_timeval.h"
	.file 10 ".\\components\\libc\\sys\\types.h"
	.file 11 ".\\components\\os\\freertos\\portable\\GCC\\RISC-V\\common/portmacro.h"
	.file 12 ".\\components\\net\\lwip\\lwip\\src\\include/lwip/arch.h"
	.file 13 ".\\components\\net\\lwip\\lwip\\src\\include/lwip/ip4_addr.h"
	.file 14 ".\\components\\net\\lwip\\lwip\\src\\include/lwip/memp.h"
	.file 15 ".\\components\\net\\lwip\\lwip\\src\\include/lwip/inet.h"
	.file 16 ".\\components\\net\\lwip\\lwip\\src\\include/lwip/sockets.h"
	.file 17 ".\\components\\shell\\shell.h"
	.file 18 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\stdio.h"
	.file 19 ".\\components\\os\\freertos\\include/task.h"
	.file 20 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\sys\\unistd.h"
	.file 21 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\string.h"
	.file 22 ".\\components\\net\\lwip\\lwip\\src\\include/lwip/def.h"
	.file 23 ".\\components\\mm\\mem.h"
	.file 24 ".\\components\\os\\freertos\\include/portable.h"
	.file 25 "<built-in>"
	.file 26 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\sys\\errno.h"
	.file 27 ".\\components\\net\\lwip\\lwip\\src\\include/lwip/netif.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x20be
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF223
	.byte	0xc
	.4byte	.LASF224
	.4byte	.LASF225
	.4byte	.Ldebug_ranges0+0x250
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF3
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
	.byte	0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x52
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.byte	0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4d
	.byte	0x12
	.4byte	0x65
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.byte	0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x78
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
	.byte	0x2
	.byte	0x69
	.byte	0x20
	.4byte	0x92
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.byte	0x3
	.4byte	.LASF13
	.byte	0x2
	.byte	0xc8
	.byte	0x17
	.4byte	0x7f
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.byte	0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x5
	.4byte	0xb3
	.byte	0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x46
	.byte	0x3
	.4byte	.LASF17
	.byte	0x3
	.byte	0x2c
	.byte	0x13
	.4byte	0x59
	.byte	0x3
	.4byte	.LASF18
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x6c
	.byte	0x6
	.4byte	0xdc
	.byte	0x5
	.4byte	0xdc
	.byte	0x3
	.4byte	.LASF19
	.byte	0x3
	.byte	0x3c
	.byte	0x14
	.4byte	0x86
	.byte	0x6
	.4byte	0xf2
	.byte	0x7
	.byte	0x20
	.byte	0x4
	.byte	0x8
	.byte	0x9
	.4byte	0x141
	.byte	0x8
	.4byte	.LASF20
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.4byte	0xfe
	.byte	0
	.byte	0x8
	.4byte	.LASF21
	.byte	0x4
	.byte	0xa
	.byte	0x17
	.4byte	0xfe
	.byte	0x8
	.byte	0x8
	.4byte	.LASF22
	.byte	0x4
	.byte	0xb
	.byte	0x17
	.4byte	0xfe
	.byte	0x10
	.byte	0x8
	.4byte	.LASF23
	.byte	0x4
	.byte	0xc
	.byte	0x16
	.4byte	0x148
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF24
	.byte	0x6
	.4byte	0x141
	.byte	0x3
	.4byte	.LASF25
	.byte	0x4
	.byte	0xd
	.byte	0x3
	.4byte	0x103
	.byte	0x5
	.4byte	0x14d
	.byte	0x7
	.byte	0xc
	.byte	0x5
	.byte	0x14
	.byte	0x9
	.4byte	0x18f
	.byte	0x8
	.4byte	.LASF26
	.byte	0x5
	.byte	0x15
	.byte	0xe
	.4byte	0x18f
	.byte	0
	.byte	0x9
	.string	"len"
	.byte	0x5
	.byte	0x16
	.byte	0xe
	.4byte	0xdc
	.byte	0x4
	.byte	0x8
	.4byte	.LASF27
	.byte	0x5
	.byte	0x17
	.byte	0xe
	.4byte	0xdc
	.byte	0x8
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0xb3
	.byte	0x3
	.4byte	.LASF28
	.byte	0x5
	.byte	0x18
	.byte	0x3
	.4byte	0x15e
	.byte	0x5
	.4byte	0x195
	.byte	0xb
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0x6
	.byte	0x9
	.byte	0xe
	.4byte	0x1cd
	.byte	0xc
	.4byte	.LASF29
	.byte	0
	.byte	0xc
	.4byte	.LASF30
	.byte	0x1
	.byte	0xc
	.4byte	.LASF31
	.byte	0x2
	.byte	0xc
	.4byte	.LASF32
	.byte	0x3
	.byte	0
	.byte	0x3
	.4byte	.LASF33
	.byte	0x6
	.byte	0xe
	.byte	0x3
	.4byte	0x1a6
	.byte	0x7
	.byte	0xe
	.byte	0x6
	.byte	0x1a
	.byte	0x9
	.4byte	0x24b
	.byte	0x9
	.string	"vid"
	.byte	0x6
	.byte	0x1b
	.byte	0xe
	.4byte	0xc4
	.byte	0
	.byte	0x9
	.string	"pid"
	.byte	0x6
	.byte	0x1c
	.byte	0xe
	.4byte	0xc4
	.byte	0x2
	.byte	0x8
	.4byte	.LASF34
	.byte	0x6
	.byte	0x1d
	.byte	0xe
	.4byte	0xc4
	.byte	0x4
	.byte	0x8
	.4byte	.LASF35
	.byte	0x6
	.byte	0x1e
	.byte	0xe
	.4byte	0xc4
	.byte	0x6
	.byte	0x8
	.4byte	.LASF36
	.byte	0x6
	.byte	0x1f
	.byte	0xd
	.4byte	0xb3
	.byte	0x8
	.byte	0x8
	.4byte	.LASF37
	.byte	0x6
	.byte	0x20
	.byte	0xd
	.4byte	0xb3
	.byte	0x9
	.byte	0x9
	.string	"fps"
	.byte	0x6
	.byte	0x21
	.byte	0xd
	.4byte	0xb3
	.byte	0xa
	.byte	0x8
	.4byte	.LASF38
	.byte	0x6
	.byte	0x22
	.byte	0xe
	.4byte	0xc4
	.byte	0xc
	.byte	0
	.byte	0x3
	.4byte	.LASF39
	.byte	0x6
	.byte	0x23
	.byte	0x3
	.4byte	0x1d9
	.byte	0x5
	.4byte	0x24b
	.byte	0x3
	.4byte	.LASF40
	.byte	0x7
	.byte	0xd1
	.byte	0x16
	.4byte	0xac
	.byte	0xd
	.byte	0x4
	.byte	0x3
	.4byte	.LASF41
	.byte	0x8
	.byte	0xd2
	.byte	0xe
	.4byte	0x65
	.byte	0xa
	.byte	0x4
	.4byte	0x27c
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF42
	.byte	0x5
	.4byte	0x27c
	.byte	0xa
	.byte	0x4
	.4byte	0x283
	.byte	0xe
	.4byte	0x27c
	.4byte	0x29e
	.byte	0xf
	.4byte	0xac
	.byte	0x7
	.byte	0
	.byte	0x3
	.4byte	.LASF43
	.byte	0x9
	.byte	0x25
	.byte	0x17
	.4byte	0x26a
	.byte	0x3
	.4byte	.LASF44
	.byte	0x9
	.byte	0x2a
	.byte	0x19
	.4byte	0x99
	.byte	0x10
	.4byte	.LASF53
	.byte	0x10
	.byte	0x9
	.byte	0x36
	.byte	0x8
	.4byte	0x2de
	.byte	0x8
	.4byte	.LASF45
	.byte	0x9
	.byte	0x37
	.byte	0x9
	.4byte	0x2aa
	.byte	0
	.byte	0x8
	.4byte	.LASF46
	.byte	0x9
	.byte	0x38
	.byte	0xe
	.4byte	0x29e
	.byte	0x8
	.byte	0
	.byte	0x3
	.4byte	.LASF47
	.byte	0xa
	.byte	0x37
	.byte	0x14
	.4byte	0x6c
	.byte	0x3
	.4byte	.LASF48
	.byte	0xa
	.byte	0x3c
	.byte	0x14
	.4byte	0x46
	.byte	0xe
	.4byte	0x27c
	.4byte	0x306
	.byte	0xf
	.4byte	0xac
	.byte	0x27
	.byte	0
	.byte	0x3
	.4byte	.LASF49
	.byte	0xb
	.byte	0x42
	.byte	0x11
	.4byte	0xd0
	.byte	0x3
	.4byte	.LASF50
	.byte	0xb
	.byte	0x44
	.byte	0x12
	.4byte	0xdc
	.byte	0x5
	.4byte	0x312
	.byte	0xa
	.byte	0x4
	.4byte	0x329
	.byte	0x11
	.byte	0x3
	.4byte	.LASF51
	.byte	0xc
	.byte	0x7d
	.byte	0x11
	.4byte	0xb3
	.byte	0x3
	.4byte	.LASF52
	.byte	0xc
	.byte	0x81
	.byte	0x12
	.4byte	0xdc
	.byte	0x10
	.4byte	.LASF54
	.byte	0x4
	.byte	0xd
	.byte	0x33
	.byte	0x8
	.4byte	0x35d
	.byte	0x8
	.4byte	.LASF55
	.byte	0xd
	.byte	0x34
	.byte	0x9
	.4byte	0x336
	.byte	0
	.byte	0
	.byte	0x3
	.4byte	.LASF56
	.byte	0xd
	.byte	0x39
	.byte	0x19
	.4byte	0x342
	.byte	0xb
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0xe
	.byte	0x34
	.byte	0xe
	.4byte	0x3cc
	.byte	0xc
	.4byte	.LASF57
	.byte	0
	.byte	0xc
	.4byte	.LASF58
	.byte	0x1
	.byte	0xc
	.4byte	.LASF59
	.byte	0x2
	.byte	0xc
	.4byte	.LASF60
	.byte	0x3
	.byte	0xc
	.4byte	.LASF61
	.byte	0x4
	.byte	0xc
	.4byte	.LASF62
	.byte	0x5
	.byte	0xc
	.4byte	.LASF63
	.byte	0x6
	.byte	0xc
	.4byte	.LASF64
	.byte	0x7
	.byte	0xc
	.4byte	.LASF65
	.byte	0x8
	.byte	0xc
	.4byte	.LASF66
	.byte	0x9
	.byte	0xc
	.4byte	.LASF67
	.byte	0xa
	.byte	0xc
	.4byte	.LASF68
	.byte	0xb
	.byte	0xc
	.4byte	.LASF69
	.byte	0xc
	.byte	0xc
	.4byte	.LASF70
	.byte	0xd
	.byte	0
	.byte	0x12
	.4byte	.LASF226
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0x1b
	.byte	0x71
	.byte	0x6
	.4byte	0x3f1
	.byte	0xc
	.4byte	.LASF71
	.byte	0
	.byte	0xc
	.4byte	.LASF72
	.byte	0x1
	.byte	0xc
	.4byte	.LASF73
	.byte	0x2
	.byte	0
	.byte	0x10
	.4byte	.LASF74
	.byte	0x4
	.byte	0xf
	.byte	0x3f
	.byte	0x8
	.4byte	0x40c
	.byte	0x8
	.4byte	.LASF75
	.byte	0xf
	.byte	0x40
	.byte	0xd
	.4byte	0x2de
	.byte	0
	.byte	0
	.byte	0x3
	.4byte	.LASF76
	.byte	0x10
	.byte	0x44
	.byte	0xe
	.4byte	0x32a
	.byte	0x10
	.4byte	.LASF77
	.byte	0x10
	.byte	0x10
	.byte	0x4e
	.byte	0x8
	.4byte	0x467
	.byte	0x8
	.4byte	.LASF78
	.byte	0x10
	.byte	0x4f
	.byte	0x8
	.4byte	0x32a
	.byte	0
	.byte	0x8
	.4byte	.LASF79
	.byte	0x10
	.byte	0x50
	.byte	0xf
	.4byte	0x40c
	.byte	0x1
	.byte	0x8
	.4byte	.LASF80
	.byte	0x10
	.byte	0x51
	.byte	0xd
	.4byte	0x2ea
	.byte	0x2
	.byte	0x8
	.4byte	.LASF81
	.byte	0x10
	.byte	0x52
	.byte	0x12
	.4byte	0x3f1
	.byte	0x4
	.byte	0x8
	.4byte	.LASF82
	.byte	0x10
	.byte	0x54
	.byte	0x8
	.4byte	0x28e
	.byte	0x8
	.byte	0
	.byte	0x10
	.4byte	.LASF83
	.byte	0x10
	.byte	0x10
	.byte	0x63
	.byte	0x8
	.4byte	0x49c
	.byte	0x8
	.4byte	.LASF84
	.byte	0x10
	.byte	0x64
	.byte	0x8
	.4byte	0x32a
	.byte	0
	.byte	0x8
	.4byte	.LASF85
	.byte	0x10
	.byte	0x65
	.byte	0xf
	.4byte	0x40c
	.byte	0x1
	.byte	0x8
	.4byte	.LASF86
	.byte	0x10
	.byte	0x66
	.byte	0x8
	.4byte	0x49c
	.byte	0x2
	.byte	0
	.byte	0xe
	.4byte	0x27c
	.4byte	0x4ac
	.byte	0xf
	.4byte	0xac
	.byte	0xd
	.byte	0
	.byte	0x3
	.4byte	.LASF87
	.byte	0x10
	.byte	0x76
	.byte	0xf
	.4byte	0x336
	.byte	0x3
	.4byte	.LASF88
	.byte	0x11
	.byte	0x3f
	.byte	0xf
	.4byte	0x4c4
	.byte	0xa
	.byte	0x4
	.4byte	0x4ca
	.byte	0x13
	.4byte	0xa5
	.byte	0xa
	.byte	0x4
	.4byte	0x276
	.byte	0x10
	.4byte	.LASF89
	.byte	0x8
	.byte	0x11
	.byte	0x5e
	.byte	0x8
	.4byte	0x4fd
	.byte	0x8
	.4byte	.LASF90
	.byte	0x11
	.byte	0x5f
	.byte	0x11
	.4byte	0x288
	.byte	0
	.byte	0x8
	.4byte	.LASF91
	.byte	0x11
	.byte	0x63
	.byte	0x12
	.4byte	0x4b8
	.byte	0x4
	.byte	0
	.byte	0x5
	.4byte	0x4d5
	.byte	0x14
	.4byte	.LASF92
	.byte	0x1
	.byte	0x36
	.byte	0x18
	.4byte	0x14d
	.byte	0x5
	.byte	0x3
	.4byte	g_counters
	.byte	0xe
	.4byte	0x283
	.4byte	0x524
	.byte	0xf
	.4byte	0xac
	.byte	0xc9
	.byte	0
	.byte	0x5
	.4byte	0x514
	.byte	0x14
	.4byte	.LASF93
	.byte	0x1
	.byte	0x41
	.byte	0x13
	.4byte	0x524
	.byte	0x5
	.byte	0x3
	.4byte	landing_page
	.byte	0x14
	.4byte	.LASF94
	.byte	0x1
	.byte	0xdb
	.byte	0x15
	.4byte	0x148
	.byte	0x5
	.byte	0x3
	.4byte	g_stream_active
	.byte	0x14
	.4byte	.LASF95
	.byte	0x1
	.byte	0xdc
	.byte	0x15
	.4byte	0x148
	.byte	0x5
	.byte	0x3
	.4byte	g_camera_gone
	.byte	0x14
	.4byte	.LASF96
	.byte	0x1
	.byte	0xdd
	.byte	0x1a
	.4byte	0xe8
	.byte	0x5
	.byte	0x3
	.4byte	g_stream_session_id
	.byte	0xe
	.4byte	0x27c
	.4byte	0x581
	.byte	0xf
	.4byte	0xac
	.byte	0xf
	.byte	0
	.byte	0x14
	.4byte	.LASF97
	.byte	0x1
	.byte	0xde
	.byte	0xd
	.4byte	0x571
	.byte	0x5
	.byte	0x3
	.4byte	g_stream_client_ip
	.byte	0x7
	.byte	0x18
	.byte	0x1
	.byte	0xf8
	.byte	0x9
	.4byte	0x5c4
	.byte	0x8
	.4byte	.LASF98
	.byte	0x1
	.byte	0xf9
	.byte	0x9
	.4byte	0xa5
	.byte	0
	.byte	0x8
	.4byte	.LASF99
	.byte	0x1
	.byte	0xfa
	.byte	0x18
	.4byte	0x418
	.byte	0x4
	.byte	0x8
	.4byte	.LASF100
	.byte	0x1
	.byte	0xfb
	.byte	0xe
	.4byte	0xdc
	.byte	0x14
	.byte	0
	.byte	0x3
	.4byte	.LASF101
	.byte	0x1
	.byte	0xfc
	.byte	0x3
	.4byte	0x593
	.byte	0xe
	.4byte	0x283
	.4byte	0x5e0
	.byte	0xf
	.4byte	0xac
	.byte	0xd
	.byte	0
	.byte	0x5
	.4byte	0x5d0
	.byte	0x15
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x324
	.byte	0xc
	.4byte	0x5e0
	.byte	0x5
	.byte	0x3
	.4byte	__fsym_stream_status_name
	.byte	0x15
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x324
	.byte	0x6c
	.4byte	0x4fd
	.byte	0x5
	.byte	0x3
	.4byte	__fsym_stream_status
	.byte	0x16
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x316
	.byte	0xc
	.4byte	0xa5
	.4byte	.LFB99
	.4byte	.LFE99-.LFB99
	.byte	0x1
	.byte	0x9c
	.4byte	0x6c1
	.byte	0x17
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x316
	.byte	0x22
	.4byte	0xa5
	.4byte	.LLST0
	.byte	0x17
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x316
	.byte	0x2f
	.4byte	0x4cf
	.4byte	.LLST1
	.byte	0x18
	.4byte	.LVL4
	.4byte	0x1ebf
	.4byte	0x65f
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x18
	.4byte	.LVL5
	.4byte	0x1ebf
	.4byte	0x67f
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR2
	.byte	0
	.byte	0x18
	.4byte	.LVL6
	.4byte	0x1ebf
	.4byte	0x696
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0x18
	.4byte	.LVL7
	.4byte	0x1ebf
	.4byte	0x6ad
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x1a
	.4byte	.LVL8
	.4byte	0x1ebf
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LASF227
	.byte	0x1
	.2byte	0x30b
	.byte	0x6
	.4byte	.LFB98
	.4byte	.LFE98-.LFB98
	.byte	0x1
	.byte	0x9c
	.4byte	0x722
	.byte	0x18
	.4byte	.LVL283
	.4byte	0x1ecb
	.4byte	0x6ef
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	on_camera_state_change
	.byte	0
	.byte	0x1c
	.4byte	.LVL284
	.4byte	0x1ed7
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	http_server_task
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC65
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x800
	.byte	0x19
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x19
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x38
	.byte	0x19
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x2c8
	.byte	0xd
	.4byte	.LFB97
	.4byte	.LFE97-.LFB97
	.byte	0x1
	.byte	0x9c
	.4byte	0x9ba
	.byte	0x1e
	.string	"arg"
	.byte	0x1
	.2byte	0x2c8
	.byte	0x24
	.4byte	0x268
	.4byte	.LLST81
	.byte	0x1f
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x2cf
	.byte	0x9
	.4byte	0xa5
	.4byte	.LLST82
	.byte	0x20
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x2d7
	.byte	0x9
	.4byte	0xa5
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x20
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x2da
	.byte	0x18
	.4byte	0x418
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0x21
	.4byte	.Ldebug_ranges0+0x238
	.4byte	0x85f
	.byte	0x20
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x2f1
	.byte	0x1c
	.4byte	0x418
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x20
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x2f2
	.byte	0x13
	.4byte	0x4ac
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0x20
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x2f4
	.byte	0xd
	.4byte	0xa5
	.byte	0x1
	.byte	0x59
	.byte	0x20
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x2fc
	.byte	0xd
	.4byte	0xa5
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0x1f
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x2ff
	.byte	0xd
	.4byte	0x141
	.4byte	.LLST83
	.byte	0x18
	.4byte	.LVL276
	.4byte	0x1ee4
	.4byte	0x7f8
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0
	.byte	0x18
	.4byte	.LVL278
	.4byte	0x1ebf
	.4byte	0x80f
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC64
	.byte	0
	.byte	0x18
	.4byte	.LVL279
	.4byte	0x1ef1
	.4byte	0x834
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x36
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0x19
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0x18
	.4byte	.LVL280
	.4byte	0x9ba
	.4byte	0x84e
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0
	.byte	0x1a
	.4byte	.LVL282
	.4byte	0x1efe
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LVL259
	.4byte	0x1f0a
	.byte	0x18
	.4byte	.LVL260
	.4byte	0x1f16
	.4byte	0x885
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x18
	.4byte	.LVL262
	.4byte	0x1ebf
	.4byte	0x89c
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC60
	.byte	0
	.byte	0x23
	.4byte	.LVL263
	.4byte	0x1f23
	.4byte	0x8af
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x18
	.4byte	.LVL264
	.4byte	0x1ef1
	.4byte	0x8db
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xa
	.2byte	0xfff
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x34
	.byte	0x19
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x19
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0x18
	.4byte	.LVL265
	.4byte	0x1f30
	.4byte	0x8f9
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x18
	.4byte	.LVL266
	.4byte	0x1f3c
	.4byte	0x90d
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x50
	.byte	0
	.byte	0x18
	.4byte	.LVL267
	.4byte	0x1f48
	.4byte	0x92c
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x18
	.4byte	.LVL268
	.4byte	0x1ebf
	.4byte	0x949
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC61
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x50
	.byte	0
	.byte	0x18
	.4byte	.LVL269
	.4byte	0x1efe
	.4byte	0x95d
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL270
	.4byte	0x1f23
	.4byte	0x970
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x18
	.4byte	.LVL273
	.4byte	0x1f55
	.4byte	0x989
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x18
	.4byte	.LVL274
	.4byte	0x1ebf
	.4byte	0x9a0
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC62
	.byte	0
	.byte	0x1a
	.4byte	.LVL275
	.4byte	0x1ebf
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC63
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x50
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x289
	.byte	0xc
	.4byte	0x141
	.4byte	.LFB96
	.4byte	.LFE96-.LFB96
	.byte	0x1
	.byte	0x9c
	.4byte	0x1230
	.byte	0x17
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x289
	.byte	0x1e
	.4byte	0xa5
	.4byte	.LLST39
	.byte	0x17
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x289
	.byte	0x38
	.4byte	0x1230
	.4byte	.LLST40
	.byte	0x24
	.string	"buf"
	.byte	0x1
	.2byte	0x28b
	.byte	0xa
	.4byte	0x1236
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x73
	.byte	0x20
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x28c
	.byte	0xa
	.4byte	0x1236
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x77
	.byte	0x24
	.string	"tv"
	.byte	0x1
	.2byte	0x28f
	.byte	0x14
	.4byte	0x2b6
	.byte	0x3
	.byte	0x91
	.byte	0x98,0x73
	.byte	0x25
	.string	"n"
	.byte	0x1
	.2byte	0x292
	.byte	0x9
	.4byte	0xa5
	.byte	0x1f
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x297
	.byte	0xb
	.4byte	0x276
	.4byte	.LLST41
	.byte	0x1f
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x2a5
	.byte	0x11
	.4byte	0x288
	.4byte	.LLST42
	.byte	0x1f
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x2a6
	.byte	0x11
	.4byte	0x288
	.4byte	.LLST43
	.byte	0x1f
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x2ac
	.byte	0x9
	.4byte	0xa5
	.4byte	.LLST44
	.byte	0x26
	.4byte	0x12ec
	.4byte	.LBB82
	.4byte	.Ldebug_ranges0+0x140
	.byte	0x1
	.2byte	0x292
	.byte	0xd
	.4byte	0xb28
	.byte	0x27
	.4byte	0x1318
	.4byte	.LLST45
	.byte	0x27
	.4byte	0x130b
	.4byte	.LLST46
	.byte	0x27
	.4byte	0x12fe
	.4byte	.LLST47
	.byte	0x28
	.4byte	.Ldebug_ranges0+0x140
	.byte	0x29
	.4byte	0x1325
	.4byte	.LLST48
	.byte	0x2a
	.4byte	0x1330
	.4byte	.Ldebug_ranges0+0x160
	.byte	0x29
	.4byte	0x1331
	.4byte	.LLST49
	.byte	0x18
	.4byte	.LVL126
	.4byte	0x1f62
	.4byte	0xaf3
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x78
	.byte	0
	.byte	0x79
	.byte	0
	.byte	0x22
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x85
	.byte	0
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0x19
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x18
	.4byte	.LVL131
	.4byte	0x1f6f
	.4byte	0xb10
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0
	.byte	0x1a
	.4byte	.LVL132
	.4byte	0x1f7b
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	0x1247
	.4byte	.LBB91
	.4byte	.Ldebug_ranges0+0x180
	.byte	0x1
	.2byte	0x2ad
	.byte	0xa
	.4byte	0xc6a
	.byte	0x27
	.4byte	0x1280
	.4byte	.LLST50
	.byte	0x27
	.4byte	0x128d
	.4byte	.LLST51
	.byte	0x27
	.4byte	0x1273
	.4byte	.LLST52
	.byte	0x27
	.4byte	0x1266
	.4byte	.LLST53
	.byte	0x27
	.4byte	0x1259
	.4byte	.LLST54
	.byte	0x28
	.4byte	.Ldebug_ranges0+0x180
	.byte	0x29
	.4byte	0x129a
	.4byte	.LLST55
	.byte	0x29
	.4byte	0x12a5
	.4byte	.LLST56
	.byte	0x2b
	.4byte	0x12b2
	.4byte	.LBB93
	.4byte	.LBE93-.LBB93
	.4byte	0xbb9
	.byte	0x29
	.4byte	0x12b7
	.4byte	.LLST57
	.byte	0x1a
	.4byte	.LVL149
	.4byte	0x1f87
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xdb,0x73
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x2f
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x83
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x2c
	.4byte	0x12d8
	.4byte	.Ldebug_ranges0+0x1a8
	.4byte	0xbd0
	.byte	0x29
	.4byte	0x12d9
	.4byte	.LLST58
	.byte	0
	.byte	0x2b
	.4byte	0x12c5
	.4byte	.LBB95
	.4byte	.LBE95-.LBB95
	.4byte	0xc08
	.byte	0x29
	.4byte	0x12ca
	.4byte	.LLST59
	.byte	0x1a
	.4byte	.LVL164
	.4byte	0x1f87
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xdc,0x73
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x2f
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x83
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL148
	.4byte	0x1f93
	.4byte	0xc2a
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC31
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x37
	.byte	0
	.byte	0x18
	.4byte	.LVL157
	.4byte	0x1f9f
	.4byte	0xc4a
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL163
	.4byte	0x1f93
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC32
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x38
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2d
	.4byte	0x197e
	.4byte	.LBB101
	.4byte	.LBE101-.LBB101
	.byte	0x1
	.2byte	0x2b6
	.byte	0x9
	.4byte	0xc89
	.byte	0x27
	.4byte	0x198b
	.4byte	.LLST60
	.byte	0
	.byte	0x26
	.4byte	0x133e
	.4byte	.LBB103
	.4byte	.Ldebug_ranges0+0x1c0
	.byte	0x1
	.2byte	0x2bd
	.byte	0x9
	.4byte	0xe03
	.byte	0x27
	.4byte	0x134c
	.4byte	.LLST61
	.byte	0x28
	.4byte	.Ldebug_ranges0+0x1c0
	.byte	0x29
	.4byte	0x1359
	.4byte	.LLST62
	.byte	0x29
	.4byte	0x1365
	.4byte	.LLST63
	.byte	0x2e
	.4byte	0x1372
	.byte	0x3
	.byte	0x91
	.byte	0xa8,0x73
	.byte	0x2f
	.4byte	0x137f
	.byte	0x29
	.4byte	0x138c
	.4byte	.LLST64
	.byte	0x29
	.4byte	0x1399
	.4byte	.LLST65
	.byte	0x2e
	.4byte	0x13a6
	.byte	0x3
	.byte	0x91
	.byte	0x8c,0x73
	.byte	0x2e
	.4byte	0x13b3
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x73
	.byte	0x2e
	.4byte	0x13c0
	.byte	0x3
	.byte	0x91
	.byte	0x94,0x73
	.byte	0x2e
	.4byte	0x13cd
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7b
	.byte	0x29
	.4byte	0x13da
	.4byte	.LLST66
	.byte	0x18
	.4byte	.LVL161
	.4byte	0x1b06
	.4byte	0xd28
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC35
	.byte	0
	.byte	0x22
	.4byte	.LVL235
	.4byte	0x1fab
	.byte	0x22
	.4byte	.LVL237
	.4byte	0x1fb7
	.byte	0x18
	.4byte	.LVL239
	.4byte	0x1fc3
	.4byte	0xd5a
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x73
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x18
	.4byte	.LVL240
	.4byte	0x1fce
	.4byte	0xd7e
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xa8,0x73
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x28
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC55
	.byte	0
	.byte	0x22
	.4byte	.LVL241
	.4byte	0x1fdb
	.byte	0x22
	.4byte	.LVL243
	.4byte	0x1fe8
	.byte	0x22
	.4byte	.LVL245
	.4byte	0x1ff4
	.byte	0x18
	.4byte	.LVL247
	.4byte	0x2000
	.4byte	0xdbc
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x8c,0x73
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x73
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0x94,0x73
	.byte	0
	.byte	0x22
	.4byte	.LVL249
	.4byte	0x200c
	.byte	0x1a
	.4byte	.LVL250
	.4byte	0x1fce
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7b
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xa
	.2byte	0x200
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC56
	.byte	0x19
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0x91
	.byte	0xa8,0x73
	.byte	0x19
	.byte	0x2
	.byte	0x72
	.byte	0x20
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x19
	.byte	0x2
	.byte	0x72
	.byte	0x24
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	0x148e
	.4byte	.LBB108
	.4byte	.Ldebug_ranges0+0x1d8
	.byte	0x1
	.2byte	0x2b8
	.byte	0x10
	.4byte	0xf4b
	.byte	0x27
	.4byte	0x14ad
	.4byte	.LLST67
	.byte	0x27
	.4byte	0x14a0
	.4byte	.LLST68
	.byte	0x28
	.4byte	.Ldebug_ranges0+0x1d8
	.byte	0x29
	.4byte	0x14ba
	.4byte	.LLST69
	.byte	0x29
	.4byte	0x14c6
	.4byte	.LLST70
	.byte	0x29
	.4byte	0x14d3
	.4byte	.LLST71
	.byte	0x29
	.4byte	0x14e0
	.4byte	.LLST72
	.byte	0x22
	.4byte	.LVL175
	.4byte	0x1fab
	.byte	0x22
	.4byte	.LVL179
	.4byte	0x2018
	.byte	0x18
	.4byte	.LVL181
	.4byte	0x2024
	.4byte	0xe79
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL184
	.4byte	0x2030
	.4byte	0xe8c
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x48
	.byte	0
	.byte	0x18
	.4byte	.LVL187
	.4byte	0x1958
	.4byte	0xea9
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC41
	.byte	0
	.byte	0x18
	.4byte	.LVL189
	.4byte	0x1a82
	.4byte	0xec6
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC38
	.byte	0
	.byte	0x18
	.4byte	.LVL193
	.4byte	0x203c
	.4byte	0xee5
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0x4
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x18
	.4byte	.LVL195
	.4byte	0x1ed7
	.4byte	0xf1c
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	stream_task
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC43
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0x19
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x39
	.byte	0x19
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x18
	.4byte	.LVL197
	.4byte	0x2047
	.4byte	0xf30
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL198
	.4byte	0x1958
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC44
	.byte	0
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	0x13ee
	.4byte	.LBB113
	.4byte	.Ldebug_ranges0+0x1f8
	.byte	0x1
	.2byte	0x2bb
	.byte	0x9
	.4byte	0x1127
	.byte	0x27
	.4byte	0x13fc
	.4byte	.LLST73
	.byte	0x28
	.4byte	.Ldebug_ranges0+0x1f8
	.byte	0x29
	.4byte	0x1409
	.4byte	.LLST74
	.byte	0x29
	.4byte	0x1415
	.4byte	.LLST75
	.byte	0x29
	.4byte	0x1422
	.4byte	.LLST76
	.byte	0x29
	.4byte	0x142f
	.4byte	.LLST77
	.byte	0x29
	.4byte	0x143c
	.4byte	.LLST78
	.byte	0x29
	.4byte	0x1449
	.4byte	.LLST79
	.byte	0x29
	.4byte	0x1456
	.4byte	.LLST80
	.byte	0x2f
	.4byte	0x1463
	.byte	0x2c
	.4byte	0x1471
	.4byte	.Ldebug_ranges0+0x218
	.4byte	0x108d
	.byte	0x2e
	.4byte	0x1472
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7b
	.byte	0x2e
	.4byte	0x147f
	.byte	0x3
	.byte	0x91
	.byte	0xa8,0x73
	.byte	0x18
	.4byte	.LVL215
	.4byte	0x2053
	.4byte	0xfec
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7b
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x78
	.byte	0
	.byte	0x18
	.4byte	.LVL216
	.4byte	0x1998
	.4byte	0x1008
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7b
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xa8,0x73
	.byte	0
	.byte	0x18
	.4byte	.LVL218
	.4byte	0x205f
	.4byte	0x101d
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7b
	.byte	0
	.byte	0x18
	.4byte	.LVL224
	.4byte	0x205f
	.4byte	0x1032
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7b
	.byte	0
	.byte	0x18
	.4byte	.LVL227
	.4byte	0x1b06
	.4byte	0x1058
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC35
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC48
	.byte	0
	.byte	0x18
	.4byte	.LVL228
	.4byte	0x1ebf
	.4byte	0x107b
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC49
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x86
	.byte	0xa0,0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1a
	.4byte	.LVL229
	.4byte	0x205f
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7b
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LVL202
	.4byte	0x1fab
	.byte	0x22
	.4byte	.LVL206
	.4byte	0x2018
	.byte	0x18
	.4byte	.LVL208
	.4byte	0x2024
	.4byte	0x10b3
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LVL210
	.4byte	0x1fdb
	.byte	0x22
	.4byte	.LVL219
	.4byte	0x1fdb
	.byte	0x18
	.4byte	.LVL220
	.4byte	0x1ebf
	.4byte	0x10ef
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC51
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x86
	.byte	0xa0,0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL221
	.4byte	0x1a82
	.4byte	0x1115
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC38
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC52
	.byte	0
	.byte	0x1a
	.4byte	.LVL231
	.4byte	0x1958
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL123
	.4byte	0x1ef1
	.4byte	0x1155
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xa
	.2byte	0xfff
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x1006
	.byte	0x19
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x91
	.byte	0x98,0x73
	.byte	0x19
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x18
	.4byte	.LVL134
	.4byte	0x1f6f
	.4byte	0x1172
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0
	.byte	0x18
	.4byte	.LVL136
	.4byte	0x1f7b
	.4byte	0x118b
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0x18
	.4byte	.LVL138
	.4byte	0x1f93
	.4byte	0x11ad
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC26
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0x18
	.4byte	.LVL139
	.4byte	0x1a82
	.4byte	0x11c1
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL142
	.4byte	0x1f7b
	.4byte	0x11db
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x18
	.4byte	.LVL173
	.4byte	0x1f93
	.4byte	0x11fd
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC36
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x37
	.byte	0
	.byte	0x18
	.4byte	.LVL200
	.4byte	0x1f93
	.4byte	0x1211
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL233
	.4byte	0x1f93
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC54
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x418
	.byte	0xe
	.4byte	0x27c
	.4byte	0x1247
	.byte	0x30
	.4byte	0xac
	.2byte	0x1ff
	.byte	0
	.byte	0x31
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x245
	.byte	0xc
	.4byte	0x141
	.byte	0x1
	.4byte	0x12e6
	.byte	0x32
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x245
	.byte	0x2f
	.4byte	0x288
	.byte	0x32
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x245
	.byte	0x3b
	.4byte	0xa5
	.byte	0x32
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x246
	.byte	0x2a
	.4byte	0x276
	.byte	0x32
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x246
	.byte	0x37
	.4byte	0x25c
	.byte	0x32
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x246
	.byte	0x47
	.4byte	0x12e6
	.byte	0x25
	.string	"p"
	.byte	0x1
	.2byte	0x248
	.byte	0x11
	.4byte	0x288
	.byte	0x25
	.string	"len"
	.byte	0x1
	.2byte	0x249
	.byte	0x9
	.4byte	0xa5
	.byte	0x33
	.4byte	0x12c5
	.byte	0x34
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x251
	.byte	0x15
	.4byte	0x288
	.byte	0
	.byte	0x33
	.4byte	0x12d8
	.byte	0x34
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x25a
	.byte	0x15
	.4byte	0x288
	.byte	0
	.byte	0x35
	.byte	0x25
	.string	"i"
	.byte	0x1
	.2byte	0x269
	.byte	0xe
	.4byte	0xa5
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0xa5
	.byte	0x31
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x230
	.byte	0xc
	.4byte	0xa5
	.byte	0x1
	.4byte	0x133e
	.byte	0x32
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x230
	.byte	0x22
	.4byte	0xa5
	.byte	0x36
	.string	"buf"
	.byte	0x1
	.2byte	0x230
	.byte	0x2e
	.4byte	0x276
	.byte	0x32
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x230
	.byte	0x37
	.4byte	0xa5
	.byte	0x25
	.string	"n"
	.byte	0x1
	.2byte	0x232
	.byte	0x9
	.4byte	0xa5
	.byte	0x35
	.byte	0x25
	.string	"r"
	.byte	0x1
	.2byte	0x235
	.byte	0xd
	.4byte	0xa5
	.byte	0
	.byte	0
	.byte	0x37
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x1fa
	.byte	0xd
	.byte	0x1
	.4byte	0x13e8
	.byte	0x32
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x1fa
	.byte	0x1f
	.4byte	0xa5
	.byte	0x25
	.string	"st"
	.byte	0x1
	.2byte	0x1fc
	.byte	0x14
	.4byte	0x1cd
	.byte	0x34
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x1fd
	.byte	0x17
	.4byte	0x13e8
	.byte	0x34
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x1ff
	.byte	0xa
	.4byte	0x2f6
	.byte	0x34
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x205
	.byte	0xe
	.4byte	0xf2
	.byte	0x34
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x206
	.byte	0xe
	.4byte	0xdc
	.byte	0x34
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x207
	.byte	0xe
	.4byte	0xdc
	.byte	0x34
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x209
	.byte	0xe
	.4byte	0xdc
	.byte	0x34
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x209
	.byte	0x1a
	.4byte	0xdc
	.byte	0x34
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x209
	.byte	0x25
	.4byte	0xdc
	.byte	0x34
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x20c
	.byte	0xa
	.4byte	0x1236
	.byte	0x34
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x20d
	.byte	0x9
	.4byte	0xa5
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x257
	.byte	0x37
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x1c5
	.byte	0xd
	.byte	0x1
	.4byte	0x148e
	.byte	0x32
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x1c5
	.byte	0x21
	.4byte	0xa5
	.byte	0x25
	.string	"st"
	.byte	0x1
	.2byte	0x1c7
	.byte	0x14
	.4byte	0x1cd
	.byte	0x34
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x1c8
	.byte	0x9
	.4byte	0x141
	.byte	0x34
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x1c9
	.byte	0xe
	.4byte	0xdc
	.byte	0x34
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x1d9
	.byte	0x10
	.4byte	0x312
	.byte	0x34
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x1da
	.byte	0x16
	.4byte	0x31e
	.byte	0x34
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x1da
	.byte	0x98
	.4byte	0xdc
	.byte	0x34
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x1da
	.byte	0xcc
	.4byte	0xdc
	.byte	0x38
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x1da
	.2byte	0x102
	.4byte	0xdc
	.byte	0x35
	.byte	0x34
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x1dd
	.byte	0x11
	.4byte	0x195
	.byte	0x34
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x1de
	.byte	0x12
	.4byte	0xdc
	.byte	0
	.byte	0
	.byte	0x31
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x18b
	.byte	0xc
	.4byte	0x141
	.byte	0x1
	.4byte	0x14ee
	.byte	0x32
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x18b
	.byte	0x1e
	.4byte	0xa5
	.byte	0x32
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x18b
	.byte	0x38
	.4byte	0x1230
	.byte	0x25
	.string	"st"
	.byte	0x1
	.2byte	0x18d
	.byte	0x14
	.4byte	0x1cd
	.byte	0x34
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x19b
	.byte	0xe
	.4byte	0xdc
	.byte	0x25
	.string	"ctx"
	.byte	0x1
	.2byte	0x1a1
	.byte	0x18
	.4byte	0x14ee
	.byte	0x25
	.string	"ret"
	.byte	0x1
	.2byte	0x1b1
	.byte	0x10
	.4byte	0x306
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x5c4
	.byte	0x39
	.4byte	.LASF148
	.byte	0x1
	.byte	0xfe
	.byte	0xd
	.4byte	.LFB90
	.4byte	.LFE90-.LFB90
	.byte	0x1
	.byte	0x9c
	.4byte	0x190e
	.byte	0x3a
	.string	"arg"
	.byte	0x1
	.byte	0xfe
	.byte	0x1f
	.4byte	0x268
	.4byte	.LLST29
	.byte	0x3b
	.string	"ctx"
	.byte	0x1
	.2byte	0x100
	.byte	0x18
	.4byte	0x14ee
	.4byte	.LLST30
	.byte	0x1f
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x101
	.byte	0x9
	.4byte	0xa5
	.4byte	.LLST31
	.byte	0x1f
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x102
	.byte	0xe
	.4byte	0xdc
	.4byte	.LLST32
	.byte	0x24
	.string	"tv"
	.byte	0x1
	.2byte	0x10e
	.byte	0x14
	.4byte	0x2b6
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7d
	.byte	0x20
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x113
	.byte	0x17
	.4byte	0x191e
	.byte	0x5
	.byte	0x3
	.4byte	stream_hdr.0
	.byte	0x3c
	.4byte	.LASF228
	.byte	0x1
	.2byte	0x17b
	.byte	0x1
	.4byte	.L63
	.byte	0x34
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x11e
	.byte	0x10
	.4byte	0x312
	.byte	0x20
	.4byte	.LASF151
	.byte	0x1
	.2byte	0x11f
	.byte	0xa
	.4byte	0x1923
	.byte	0x3
	.byte	0x91
	.byte	0xc0,0x7d
	.byte	0x1f
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x120
	.byte	0xe
	.4byte	0xdc
	.4byte	.LLST33
	.byte	0x34
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x121
	.byte	0x14
	.4byte	0xed
	.byte	0x21
	.4byte	.Ldebug_ranges0+0xf8
	.4byte	0x1800
	.byte	0x20
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x125
	.byte	0x11
	.4byte	0x195
	.byte	0x3
	.byte	0x91
	.byte	0xa4,0x7d
	.byte	0x20
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x126
	.byte	0x12
	.4byte	0xdc
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x7d
	.byte	0x3b
	.string	"now"
	.byte	0x1
	.2byte	0x14a
	.byte	0x14
	.4byte	0x312
	.4byte	.LLST34
	.byte	0x1f
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x14b
	.byte	0x12
	.4byte	0xdc
	.4byte	.LLST34
	.byte	0x1f
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x14c
	.byte	0x12
	.4byte	0xdc
	.4byte	.LLST36
	.byte	0x1f
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x15a
	.byte	0xd
	.4byte	0xa5
	.4byte	.LLST37
	.byte	0x21
	.4byte	.Ldebug_ranges0+0x120
	.4byte	0x16b4
	.byte	0x3b
	.string	"st"
	.byte	0x1
	.2byte	0x129
	.byte	0x1c
	.4byte	0x1cd
	.4byte	.LLST38
	.byte	0x22
	.4byte	.LVL85
	.4byte	0x1fab
	.byte	0x18
	.4byte	.LVL87
	.4byte	0x1ebf
	.4byte	0x1661
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.byte	0x18
	.4byte	.LVL97
	.4byte	0x206b
	.4byte	0x1675
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL98
	.4byte	0x1ebf
	.4byte	0x1699
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xa
	.2byte	0x2ee0
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL100
	.4byte	0x1ebf
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xa
	.2byte	0x2ee0
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL84
	.4byte	0x2053
	.4byte	0x16cf
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xa4,0x7d
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0xc8
	.byte	0
	.byte	0x18
	.4byte	.LVL102
	.4byte	0x1998
	.4byte	0x16eb
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xa4,0x7d
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x7d
	.byte	0
	.byte	0x18
	.4byte	.LVL103
	.4byte	0x1ebf
	.4byte	0x1702
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.byte	0x18
	.4byte	.LVL104
	.4byte	0x205f
	.4byte	0x1717
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xa4,0x7d
	.byte	0
	.byte	0x22
	.4byte	.LVL105
	.4byte	0x1fdb
	.byte	0x18
	.4byte	.LVL108
	.4byte	0x1fce
	.4byte	0x1745
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xc0,0x7d
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xa
	.2byte	0x100
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.byte	0x18
	.4byte	.LVL111
	.4byte	0x1bfb
	.4byte	0x1760
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xc0,0x7d
	.byte	0
	.byte	0x22
	.4byte	.LVL112
	.4byte	0x2077
	.byte	0x22
	.4byte	.LVL113
	.4byte	0x1ebf
	.byte	0x18
	.4byte	.LVL114
	.4byte	0x1bfb
	.4byte	0x1786
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LVL115
	.4byte	0x2077
	.byte	0x18
	.4byte	.LVL116
	.4byte	0x1ebf
	.4byte	0x17ae
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x4
	.byte	0x91
	.byte	0x9c,0x7d
	.byte	0x6
	.byte	0
	.byte	0x18
	.4byte	.LVL117
	.4byte	0x205f
	.4byte	0x17c3
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xa4,0x7d
	.byte	0
	.byte	0x18
	.4byte	.LVL118
	.4byte	0x1bfb
	.4byte	0x17e5
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x22
	.4byte	.LVL119
	.4byte	0x2077
	.byte	0x1a
	.4byte	.LVL120
	.4byte	0x205f
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xa4,0x7d
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL77
	.4byte	0x2083
	.4byte	0x1822
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x8
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR2
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x18
	.4byte	.LVL78
	.4byte	0x2047
	.4byte	0x1836
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL79
	.4byte	0x1ebf
	.4byte	0x185c
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR2
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL80
	.4byte	0x1ef1
	.4byte	0x188a
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xa
	.2byte	0xfff
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x1005
	.byte	0x19
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7d
	.byte	0x19
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x18
	.4byte	.LVL81
	.4byte	0x1bfb
	.4byte	0x18ad
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR3
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x78
	.byte	0
	.byte	0x18
	.4byte	.LVL88
	.4byte	0x1ebf
	.4byte	0x18cd
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC20
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR2
	.byte	0
	.byte	0x18
	.4byte	.LVL89
	.4byte	0x1efe
	.4byte	0x18e1
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL90
	.4byte	0x1958
	.4byte	0x18fe
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC21
	.byte	0
	.byte	0x1a
	.4byte	.LVL91
	.4byte	0x1f23
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	0x283
	.4byte	0x191e
	.byte	0xf
	.4byte	0xac
	.byte	0x78
	.byte	0
	.byte	0x5
	.4byte	0x190e
	.byte	0xe
	.4byte	0x27c
	.4byte	0x1933
	.byte	0xf
	.4byte	0xac
	.byte	0xff
	.byte	0
	.byte	0x39
	.4byte	.LASF157
	.byte	0x1
	.byte	0xee
	.byte	0xd
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.byte	0x1
	.byte	0x9c
	.4byte	0x1958
	.byte	0x3d
	.4byte	.LASF158
	.byte	0x1
	.byte	0xee
	.byte	0x33
	.4byte	0x1cd
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x3e
	.4byte	.LASF159
	.byte	0x1
	.byte	0xe0
	.byte	0xd
	.byte	0x1
	.4byte	0x197e
	.byte	0x3f
	.4byte	.LASF100
	.byte	0x1
	.byte	0xe0
	.byte	0x2f
	.4byte	0xdc
	.byte	0x3f
	.4byte	.LASF160
	.byte	0x1
	.byte	0xe0
	.byte	0x47
	.4byte	0x288
	.byte	0
	.byte	0x3e
	.4byte	.LASF161
	.byte	0x1
	.byte	0xd1
	.byte	0xd
	.byte	0x1
	.4byte	0x1998
	.byte	0x3f
	.4byte	.LASF98
	.byte	0x1
	.byte	0xd1
	.byte	0x1d
	.4byte	0xa5
	.byte	0
	.byte	0x40
	.4byte	.LASF162
	.byte	0x1
	.byte	0xb0
	.byte	0xc
	.4byte	0x141
	.byte	0x1
	.4byte	0x19e6
	.byte	0x3f
	.4byte	.LASF144
	.byte	0x1
	.byte	0xb0
	.byte	0x34
	.4byte	0x19e6
	.byte	0x3f
	.4byte	.LASF163
	.byte	0x1
	.byte	0xb0
	.byte	0x45
	.4byte	0x19ec
	.byte	0x41
	.string	"eoi"
	.byte	0x1
	.byte	0xb6
	.byte	0xd
	.4byte	0xd0
	.byte	0x41
	.string	"sos"
	.byte	0x1
	.byte	0xb7
	.byte	0xd
	.4byte	0xd0
	.byte	0x42
	.4byte	.LASF164
	.byte	0x1
	.byte	0xbb
	.byte	0xe
	.4byte	0xdc
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x1a1
	.byte	0xa
	.byte	0x4
	.4byte	0xdc
	.byte	0x40
	.4byte	.LASF165
	.byte	0x1
	.byte	0xa0
	.byte	0x10
	.4byte	0xd0
	.byte	0x1
	.4byte	0x1a28
	.byte	0x43
	.string	"buf"
	.byte	0x1
	.byte	0xa0
	.byte	0x2d
	.4byte	0x1a28
	.byte	0x43
	.string	"len"
	.byte	0x1
	.byte	0xa0
	.byte	0x3b
	.4byte	0xdc
	.byte	0x35
	.byte	0x41
	.string	"i"
	.byte	0x1
	.byte	0xa5
	.byte	0x13
	.4byte	0xdc
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0xbf
	.byte	0x40
	.4byte	.LASF166
	.byte	0x1
	.byte	0x92
	.byte	0x10
	.4byte	0xd0
	.byte	0x1
	.4byte	0x1a64
	.byte	0x43
	.string	"buf"
	.byte	0x1
	.byte	0x92
	.byte	0x2d
	.4byte	0x1a28
	.byte	0x43
	.string	"len"
	.byte	0x1
	.byte	0x92
	.byte	0x3b
	.4byte	0xdc
	.byte	0x35
	.byte	0x41
	.string	"i"
	.byte	0x1
	.byte	0x98
	.byte	0x13
	.4byte	0xdc
	.byte	0
	.byte	0
	.byte	0x40
	.4byte	.LASF167
	.byte	0x1
	.byte	0x87
	.byte	0xc
	.4byte	0x141
	.byte	0x1
	.4byte	0x1a82
	.byte	0x3f
	.4byte	.LASF144
	.byte	0x1
	.byte	0x87
	.byte	0x32
	.4byte	0x19e6
	.byte	0
	.byte	0x39
	.4byte	.LASF168
	.byte	0x1
	.byte	0x82
	.byte	0xd
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.byte	0x1
	.byte	0x9c
	.4byte	0x1b06
	.byte	0x44
	.4byte	.LASF98
	.byte	0x1
	.byte	0x82
	.byte	0x1c
	.4byte	0xa5
	.4byte	.LLST18
	.byte	0x44
	.4byte	.LASF169
	.byte	0x1
	.byte	0x82
	.byte	0x2e
	.4byte	0x288
	.4byte	.LLST19
	.byte	0x44
	.4byte	.LASF170
	.byte	0x1
	.byte	0x82
	.byte	0x42
	.4byte	0x288
	.4byte	.LLST20
	.byte	0x18
	.4byte	.LVL51
	.4byte	0x208f
	.4byte	0x1add
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x68
	.byte	0x6
	.byte	0
	.byte	0x1c
	.4byte	.LVL54
	.4byte	0x1b06
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x72
	.byte	0x6c
	.byte	0x6
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0x19
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x72
	.byte	0x68
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x39
	.4byte	.LASF171
	.byte	0x1
	.byte	0x6f
	.byte	0xd
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.byte	0x1
	.byte	0x9c
	.4byte	0x1bfb
	.byte	0x44
	.4byte	.LASF98
	.byte	0x1
	.byte	0x6f
	.byte	0x1f
	.4byte	0xa5
	.4byte	.LLST12
	.byte	0x44
	.4byte	.LASF169
	.byte	0x1
	.byte	0x6f
	.byte	0x31
	.4byte	0x288
	.4byte	.LLST13
	.byte	0x44
	.4byte	.LASF172
	.byte	0x1
	.byte	0x70
	.byte	0x27
	.4byte	0x288
	.4byte	.LLST14
	.byte	0x44
	.4byte	.LASF173
	.byte	0x1
	.byte	0x71
	.byte	0x27
	.4byte	0x323
	.4byte	.LLST15
	.byte	0x44
	.4byte	.LASF174
	.byte	0x1
	.byte	0x71
	.byte	0x31
	.4byte	0xa5
	.4byte	.LLST16
	.byte	0x45
	.string	"hdr"
	.byte	0x1
	.byte	0x73
	.byte	0xa
	.4byte	0x1923
	.byte	0x3
	.byte	0x91
	.byte	0xf0,0x7d
	.byte	0x46
	.4byte	.LASF175
	.byte	0x1
	.byte	0x74
	.byte	0x9
	.4byte	0xa5
	.4byte	.LLST17
	.byte	0x18
	.4byte	.LVL41
	.4byte	0x1fce
	.4byte	0x1bc4
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xa
	.2byte	0x100
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0x19
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x19
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x19
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL44
	.4byte	0x1bfb
	.4byte	0x1bde
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL45
	.4byte	0x1bfb
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x47
	.4byte	.LASF176
	.byte	0x1
	.byte	0x4e
	.byte	0xc
	.4byte	0xa5
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.byte	0x1
	.byte	0x9c
	.4byte	0x1d39
	.byte	0x44
	.4byte	.LASF98
	.byte	0x1
	.byte	0x4e
	.byte	0x19
	.4byte	0xa5
	.4byte	.LLST2
	.byte	0x3a
	.string	"buf"
	.byte	0x1
	.byte	0x4e
	.byte	0x2b
	.4byte	0x323
	.4byte	.LLST3
	.byte	0x3a
	.string	"len"
	.byte	0x1
	.byte	0x4e
	.byte	0x34
	.4byte	0xa5
	.4byte	.LLST4
	.byte	0x48
	.string	"p"
	.byte	0x1
	.byte	0x50
	.byte	0x14
	.4byte	0x1a28
	.4byte	.LLST5
	.byte	0x46
	.4byte	.LASF177
	.byte	0x1
	.byte	0x51
	.byte	0x9
	.4byte	0xa5
	.4byte	.LLST6
	.byte	0x46
	.4byte	.LASF178
	.byte	0x1
	.byte	0x52
	.byte	0x10
	.4byte	0x312
	.4byte	.LLST7
	.byte	0x49
	.4byte	.LASF179
	.byte	0x1
	.byte	0x53
	.byte	0x10
	.4byte	0x312
	.2byte	0xbb8
	.byte	0x21
	.4byte	.Ldebug_ranges0+0
	.4byte	0x1d2f
	.byte	0x46
	.4byte	.LASF180
	.byte	0x1
	.byte	0x59
	.byte	0xd
	.4byte	0xa5
	.4byte	.LLST8
	.byte	0x48
	.string	"n"
	.byte	0x1
	.byte	0x5a
	.byte	0xd
	.4byte	0xa5
	.4byte	.LLST9
	.byte	0x21
	.4byte	.Ldebug_ranges0+0x20
	.4byte	0x1d06
	.byte	0x48
	.string	"err"
	.byte	0x1
	.byte	0x5c
	.byte	0x11
	.4byte	0xa5
	.4byte	.LLST10
	.byte	0x21
	.4byte	.Ldebug_ranges0+0x40
	.4byte	0x1cfc
	.byte	0x48
	.string	"now"
	.byte	0x1
	.byte	0x5e
	.byte	0x1c
	.4byte	0x312
	.4byte	.LLST11
	.byte	0x22
	.4byte	.LVL24
	.4byte	0x1fdb
	.byte	0x22
	.4byte	.LVL26
	.4byte	0x2077
	.byte	0x1a
	.4byte	.LVL29
	.4byte	0x209b
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LVL23
	.4byte	0x2077
	.byte	0
	.byte	0x18
	.4byte	.LVL22
	.4byte	0x20a8
	.4byte	0x1d25
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x22
	.4byte	.LVL33
	.4byte	0x1fdb
	.byte	0
	.byte	0x22
	.4byte	.LVL13
	.4byte	0x1fdb
	.byte	0
	.byte	0x4a
	.4byte	.LASF229
	.byte	0x1
	.byte	0x38
	.byte	0x18
	.4byte	0x1d4f
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.byte	0x1
	.byte	0x9c
	.byte	0xa
	.byte	0x4
	.4byte	0x159
	.byte	0x4b
	.4byte	0x1998
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.byte	0x1
	.byte	0x9c
	.4byte	0x1e40
	.byte	0x27
	.4byte	0x19a9
	.4byte	.LLST21
	.byte	0x4c
	.4byte	0x19b5
	.byte	0x1
	.byte	0x5b
	.byte	0x2f
	.4byte	0x19c1
	.byte	0x2f
	.4byte	0x19cd
	.byte	0x2f
	.4byte	0x19d9
	.byte	0x4d
	.4byte	0x1a64
	.4byte	.LBB26
	.4byte	.Ldebug_ranges0+0x68
	.byte	0x1
	.byte	0xb2
	.byte	0xa
	.4byte	0x1da5
	.byte	0x27
	.4byte	0x1a75
	.4byte	.LLST22
	.byte	0
	.byte	0x4e
	.4byte	0x1998
	.4byte	.LBB30
	.4byte	.Ldebug_ranges0+0x80
	.byte	0x1
	.byte	0xb0
	.byte	0xc
	.byte	0x4f
	.4byte	0x19b5
	.byte	0x4f
	.4byte	0x19a9
	.byte	0x28
	.4byte	.Ldebug_ranges0+0x80
	.byte	0x2e
	.4byte	0x19c1
	.byte	0x1
	.byte	0x5c
	.byte	0x2e
	.4byte	0x19cd
	.byte	0x1
	.byte	0x60
	.byte	0x2e
	.4byte	0x19d9
	.byte	0x1
	.byte	0x5d
	.byte	0x4d
	.4byte	0x1a2e
	.4byte	.LBB32
	.4byte	.Ldebug_ranges0+0xb8
	.byte	0x1
	.byte	0xb6
	.byte	0x13
	.4byte	0x1e0b
	.byte	0x4f
	.4byte	0x1a4b
	.byte	0x4f
	.4byte	0x1a3f
	.byte	0x2a
	.4byte	0x1a57
	.4byte	.Ldebug_ranges0+0xb8
	.byte	0x29
	.4byte	0x1a58
	.4byte	.LLST23
	.byte	0
	.byte	0
	.byte	0x50
	.4byte	0x19f2
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.byte	0x1
	.byte	0xc2
	.byte	0xb
	.byte	0x4f
	.4byte	0x1a0f
	.byte	0x4f
	.4byte	0x1a03
	.byte	0x51
	.4byte	0x1a1b
	.4byte	.LBB37
	.4byte	.LBE37-.LBB37
	.byte	0x29
	.4byte	0x1a1c
	.4byte	.LLST24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x4b
	.4byte	0x1958
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.byte	0x1
	.byte	0x9c
	.4byte	0x1ebf
	.byte	0x27
	.4byte	0x1965
	.4byte	.LLST25
	.byte	0x27
	.4byte	0x1971
	.4byte	.LLST26
	.byte	0x4d
	.4byte	0x1958
	.4byte	.LBB50
	.4byte	.Ldebug_ranges0+0xd0
	.byte	0x1
	.byte	0xe0
	.byte	0xd
	.4byte	0x1ead
	.byte	0x27
	.4byte	0x1971
	.4byte	.LLST27
	.byte	0x27
	.4byte	0x1965
	.4byte	.LLST28
	.byte	0x1c
	.4byte	.LVL70
	.4byte	0x1ebf
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x72
	.byte	0x68
	.byte	0x6
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x72
	.byte	0x6c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL67
	.4byte	0x20b5
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x68
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x52
	.4byte	.LASF181
	.4byte	.LASF181
	.byte	0x12
	.byte	0xc8
	.byte	0x5
	.byte	0x52
	.4byte	.LASF182
	.4byte	.LASF182
	.byte	0x6
	.byte	0x89
	.byte	0x6
	.byte	0x53
	.4byte	.LASF183
	.4byte	.LASF183
	.byte	0x13
	.2byte	0x168
	.byte	0x10
	.byte	0x53
	.4byte	.LASF184
	.4byte	.LASF184
	.byte	0x10
	.2byte	0x254
	.byte	0x5
	.byte	0x53
	.4byte	.LASF185
	.4byte	.LASF185
	.byte	0x10
	.2byte	0x25a
	.byte	0x5
	.byte	0x52
	.4byte	.LASF186
	.4byte	.LASF186
	.byte	0x14
	.byte	0x1e
	.byte	0x8
	.byte	0x52
	.4byte	.LASF187
	.4byte	.LASF187
	.byte	0x5
	.byte	0x1f
	.byte	0x5
	.byte	0x53
	.4byte	.LASF188
	.4byte	.LASF188
	.byte	0x10
	.2byte	0x268
	.byte	0x5
	.byte	0x53
	.4byte	.LASF189
	.4byte	.LASF189
	.byte	0x13
	.2byte	0x2e9
	.byte	0x6
	.byte	0x52
	.4byte	.LASF190
	.4byte	.LASF190
	.byte	0x15
	.byte	0x21
	.byte	0x8
	.byte	0x52
	.4byte	.LASF191
	.4byte	.LASF191
	.byte	0x16
	.byte	0x60
	.byte	0x7
	.byte	0x53
	.4byte	.LASF192
	.4byte	.LASF192
	.byte	0x10
	.2byte	0x255
	.byte	0x5
	.byte	0x53
	.4byte	.LASF193
	.4byte	.LASF193
	.byte	0x10
	.2byte	0x25d
	.byte	0x5
	.byte	0x53
	.4byte	.LASF194
	.4byte	.LASF194
	.byte	0x10
	.2byte	0x25e
	.byte	0x9
	.byte	0x52
	.4byte	.LASF195
	.4byte	.LASF195
	.byte	0x15
	.byte	0x30
	.byte	0x7
	.byte	0x52
	.4byte	.LASF196
	.4byte	.LASF196
	.byte	0x15
	.byte	0x23
	.byte	0x7
	.byte	0x52
	.4byte	.LASF197
	.4byte	.LASF197
	.byte	0x15
	.byte	0x1d
	.byte	0x8
	.byte	0x52
	.4byte	.LASF198
	.4byte	.LASF198
	.byte	0x15
	.byte	0x2b
	.byte	0x5
	.byte	0x52
	.4byte	.LASF199
	.4byte	.LASF199
	.byte	0x15
	.byte	0x1f
	.byte	0x8
	.byte	0x52
	.4byte	.LASF200
	.4byte	.LASF200
	.byte	0x6
	.byte	0x2e
	.byte	0x10
	.byte	0x52
	.4byte	.LASF201
	.4byte	.LASF201
	.byte	0x6
	.byte	0x35
	.byte	0x13
	.byte	0x54
	.4byte	.LASF190
	.4byte	.LASF211
	.byte	0x19
	.byte	0
	.byte	0x53
	.4byte	.LASF202
	.4byte	.LASF202
	.byte	0x12
	.2byte	0x10a
	.byte	0x5
	.byte	0x53
	.4byte	.LASF203
	.4byte	.LASF203
	.byte	0x13
	.2byte	0x5a8
	.byte	0xc
	.byte	0x52
	.4byte	.LASF204
	.4byte	.LASF204
	.byte	0x17
	.byte	0xa5
	.byte	0xa
	.byte	0x52
	.4byte	.LASF205
	.4byte	.LASF205
	.byte	0x17
	.byte	0xa8
	.byte	0xa
	.byte	0x52
	.4byte	.LASF206
	.4byte	.LASF206
	.byte	0x5
	.byte	0x55
	.byte	0x6
	.byte	0x52
	.4byte	.LASF207
	.4byte	.LASF207
	.byte	0x6
	.byte	0x3a
	.byte	0xa
	.byte	0x52
	.4byte	.LASF208
	.4byte	.LASF208
	.byte	0x6
	.byte	0x3f
	.byte	0xa
	.byte	0x52
	.4byte	.LASF209
	.4byte	.LASF209
	.byte	0x6
	.byte	0x46
	.byte	0x5
	.byte	0x52
	.4byte	.LASF210
	.4byte	.LASF210
	.byte	0x18
	.byte	0xb1
	.byte	0x8
	.byte	0x54
	.4byte	.LASF199
	.4byte	.LASF212
	.byte	0x19
	.byte	0
	.byte	0x52
	.4byte	.LASF213
	.4byte	.LASF213
	.byte	0x18
	.byte	0xb4
	.byte	0x6
	.byte	0x52
	.4byte	.LASF214
	.4byte	.LASF214
	.byte	0x6
	.byte	0x75
	.byte	0x5
	.byte	0x52
	.4byte	.LASF215
	.4byte	.LASF215
	.byte	0x6
	.byte	0x7b
	.byte	0x6
	.byte	0x52
	.4byte	.LASF216
	.4byte	.LASF216
	.byte	0x6
	.byte	0x57
	.byte	0x5
	.byte	0x52
	.4byte	.LASF217
	.4byte	.LASF217
	.byte	0x1a
	.byte	0xf
	.byte	0xd
	.byte	0x52
	.4byte	.LASF218
	.4byte	.LASF218
	.byte	0xd
	.byte	0xd9
	.byte	0x7
	.byte	0x52
	.4byte	.LASF219
	.4byte	.LASF219
	.byte	0x15
	.byte	0x29
	.byte	0x8
	.byte	0x53
	.4byte	.LASF220
	.4byte	.LASF220
	.byte	0x13
	.2byte	0x31f
	.byte	0x6
	.byte	0x53
	.4byte	.LASF221
	.4byte	.LASF221
	.byte	0x10
	.2byte	0x264
	.byte	0x9
	.byte	0x52
	.4byte	.LASF222
	.4byte	.LASF222
	.byte	0x6
	.byte	0x4d
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x11
	.byte	0x26
	.byte	0
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0x13
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
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
	.byte	0x16
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
	.byte	0x17
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
	.byte	0x18
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
	.byte	0x19
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1b
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
	.byte	0x1c
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
	.byte	0x1d
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
	.byte	0x1e
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x20
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
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x23
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
	.byte	0x24
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
	.byte	0x25
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
	.byte	0x26
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
	.byte	0x27
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x28
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x29
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2a
	.byte	0xb
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2b
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
	.byte	0x2c
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
	.byte	0x2d
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
	.byte	0x2e
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x2f
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x30
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x31
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
	.byte	0x32
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
	.byte	0x33
	.byte	0xb
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x34
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
	.byte	0x35
	.byte	0xb
	.byte	0x1
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
	.byte	0x38
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0x5
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x39
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
	.byte	0x3a
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
	.byte	0x3b
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
	.byte	0x3c
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
	.byte	0x3d
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
	.byte	0x3e
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
	.byte	0x3f
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
	.byte	0x40
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
	.byte	0x41
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
	.byte	0x42
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
	.byte	0x43
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
	.byte	0x44
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
	.byte	0x45
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
	.byte	0x2
	.byte	0x17
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x49
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
	.byte	0x4a
	.byte	0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0x4b
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
	.byte	0x4c
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
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
	.byte	0x4f
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x50
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
	.byte	0x51
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
	.byte	0x52
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
	.byte	0x53
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
	.byte	0x54
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
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LFE99
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL10
	.4byte	.LFE99
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL258
	.4byte	.LVL259-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL259-1
	.4byte	.LFE97
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LVL260
	.4byte	.LVL261
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL263
	.4byte	.LVL264-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL264-1
	.4byte	.LVL271
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL272
	.4byte	.LFE97
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST83:
	.4byte	.LVL280
	.4byte	.LVL281
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL121
	.4byte	.LVL123-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL123-1
	.4byte	.LVL190
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL190
	.4byte	.LVL191
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL191
	.4byte	.LFE96
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL122
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL128
	.4byte	.LVL160
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL160
	.4byte	.LVL162
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL162
	.4byte	.LVL188
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL188
	.4byte	.LVL191
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL191
	.4byte	.LVL194
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL194
	.4byte	.LVL199
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL199
	.4byte	.LVL213
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL213
	.4byte	.LVL232
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL232
	.4byte	.LVL236
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL236
	.4byte	.LVL254
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL254
	.4byte	.LVL255
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL255
	.4byte	.LVL257
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL257
	.4byte	.LFE96
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL134
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL136
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL140
	.4byte	.LVL141
	.2byte	0x4
	.byte	0x91
	.byte	0xd4,0x73
	.byte	0x9f
	.4byte	.LVL141
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0x4
	.byte	0x91
	.byte	0xd4,0x73
	.byte	0x9f
	.4byte	.LVL145
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL150
	.4byte	.LVL158
	.2byte	0x4
	.byte	0x91
	.byte	0xd4,0x73
	.byte	0x9f
	.4byte	.LVL158
	.4byte	.LVL160
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL162
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL165
	.4byte	.LVL172
	.2byte	0x4
	.byte	0x91
	.byte	0xd4,0x73
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL143
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL145
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL147
	.4byte	.LVL177
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL178
	.4byte	.LVL180
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL199
	.4byte	.LVL203
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL204
	.4byte	.LVL207
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL232
	.4byte	.LVL255
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL145
	.4byte	.LVL158
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL158
	.4byte	.LVL160
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL162
	.4byte	.LVL167
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL168
	.4byte	.LVL172
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL123
	.4byte	.LVL127
	.2byte	0x4
	.byte	0xa
	.2byte	0x200
	.byte	0x9f
	.4byte	.LVL128
	.4byte	.LVL133
	.2byte	0x4
	.byte	0xa
	.2byte	0x200
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x4
	.byte	0x91
	.byte	0xd0,0x73
	.byte	0x9f
	.4byte	.LVL124
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL128
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL123
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL128
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL123
	.4byte	.LVL125
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL125
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL128
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL126
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL128
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL146
	.4byte	.LVL158
	.2byte	0x4
	.byte	0xa
	.2byte	0x200
	.byte	0x9f
	.4byte	.LVL162
	.4byte	.LVL167
	.2byte	0x4
	.byte	0xa
	.2byte	0x200
	.byte	0x9f
	.4byte	.LVL168
	.4byte	.LVL172
	.2byte	0x4
	.byte	0xa
	.2byte	0x200
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL146
	.4byte	.LVL158
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+2663
	.byte	0
	.4byte	.LVL162
	.4byte	.LVL167
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+2663
	.byte	0
	.4byte	.LVL168
	.4byte	.LVL172
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+2663
	.byte	0
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL146
	.4byte	.LVL156
	.2byte	0x4
	.byte	0x91
	.byte	0xd0,0x77
	.byte	0x9f
	.4byte	.LVL156
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL162
	.4byte	.LVL167
	.2byte	0x4
	.byte	0x91
	.byte	0xd0,0x77
	.byte	0x9f
	.4byte	.LVL168
	.4byte	.LVL172
	.2byte	0x4
	.byte	0x91
	.byte	0xd0,0x77
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL146
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL151
	.4byte	.LVL158
	.2byte	0x9
	.byte	0x85
	.byte	0
	.byte	0x91
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0xac,0xc
	.byte	0x9f
	.4byte	.LVL162
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL166
	.4byte	.LVL167
	.2byte	0x9
	.byte	0x85
	.byte	0
	.byte	0x91
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0xac,0xc
	.byte	0x9f
	.4byte	.LVL168
	.4byte	.LVL172
	.2byte	0x9
	.byte	0x85
	.byte	0
	.byte	0x91
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0xac,0xc
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL146
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL150
	.4byte	.LVL158
	.2byte	0x4
	.byte	0x91
	.byte	0xd4,0x73
	.byte	0x9f
	.4byte	.LVL162
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL165
	.4byte	.LVL167
	.2byte	0x4
	.byte	0x91
	.byte	0xd4,0x73
	.byte	0x9f
	.4byte	.LVL168
	.4byte	.LVL172
	.2byte	0x4
	.byte	0x91
	.byte	0xd4,0x73
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL146
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL150
	.4byte	.LVL153
	.2byte	0x4
	.byte	0x91
	.byte	0xd4,0x73
	.byte	0x9f
	.4byte	.LVL162
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL165
	.4byte	.LVL166
	.2byte	0x4
	.byte	0x91
	.byte	0xd4,0x73
	.byte	0x9f
	.4byte	.LVL166
	.4byte	.LVL167
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL146
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL151
	.4byte	.LVL153
	.2byte	0x9
	.byte	0x85
	.byte	0
	.byte	0x91
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0xac,0xc
	.byte	0x9f
	.4byte	.LVL155
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL162
	.4byte	.LVL167
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL170
	.4byte	.LVL172
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL150
	.4byte	.LVL152
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL154
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL168
	.4byte	.LVL170
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL165
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL159
	.4byte	.LVL160
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL234
	.4byte	.LVL254
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL236
	.4byte	.LVL248
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL252
	.4byte	.LVL253
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL238
	.4byte	.LVL244
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL244
	.4byte	.LVL254
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL246
	.4byte	.LVL254
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL251
	.4byte	.LVL252
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL174
	.4byte	.LVL176
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL178
	.4byte	.LVL182
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL183
	.4byte	.LVL188
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL188
	.4byte	.LVL189
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL191
	.4byte	.LVL194
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL194
	.4byte	.LVL199
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL255
	.4byte	.LVL256
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL174
	.4byte	.LVL176
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL178
	.4byte	.LVL182
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL183
	.4byte	.LVL189
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL191
	.4byte	.LVL199
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL255
	.4byte	.LVL256
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL175
	.4byte	.LVL176
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL178
	.4byte	.LVL179-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL180
	.4byte	.LVL181-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL181-1
	.4byte	.LVL182
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL183
	.4byte	.LVL189
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL191
	.4byte	.LVL199
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL255
	.4byte	.LVL256
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL185
	.4byte	.LVL186
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL186
	.4byte	.LVL189
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL191
	.4byte	.LVL192
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL192
	.4byte	.LVL199
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL255
	.4byte	.LVL256
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL195
	.4byte	.LVL196
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL255
	.4byte	.LVL256
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL201
	.4byte	.LVL204
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL205
	.4byte	.LVL232
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL257
	.4byte	.LFE96
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL202
	.4byte	.LVL204
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL205
	.4byte	.LVL206-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL202
	.4byte	.LVL204
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL205
	.4byte	.LVL209
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL209
	.4byte	.LVL212
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL257
	.4byte	.LFE96
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL202
	.4byte	.LVL204
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL205
	.4byte	.LVL207
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL207
	.4byte	.LVL208-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL208-1
	.4byte	.LVL212
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL257
	.4byte	.LFE96
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL211
	.4byte	.LVL212
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL257
	.4byte	.LFE96
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL211
	.4byte	.LVL212
	.2byte	0x4
	.byte	0xa
	.2byte	0x1194
	.byte	0x9f
	.4byte	.LVL257
	.4byte	.LFE96
	.2byte	0x4
	.byte	0xa
	.2byte	0x1194
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LVL214
	.4byte	.LVL222
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL222
	.4byte	.LVL223
	.2byte	0x3
	.byte	0x78
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL223
	.4byte	.LVL232
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL214
	.4byte	.LVL223
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL223
	.4byte	.LVL225
	.2byte	0x3
	.byte	0x83
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL225
	.4byte	.LVL226
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL226
	.4byte	.LVL230
	.2byte	0x3
	.byte	0x83
	.byte	0x7f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL73
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL76
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL82
	.4byte	.LFE90
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL73
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL76
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL78
	.4byte	.LFE90
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL74
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL94
	.4byte	.LFE90
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL75
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL94
	.4byte	.LFE90
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL83
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL94
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x2
	.byte	0x4e
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL101
	.4byte	.LFE90
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL105
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x6
	.byte	0x7a
	.byte	0
	.byte	0x7e
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL110
	.4byte	.LVL111-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL94
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL52
	.4byte	.LVL54-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL54-1
	.4byte	.LFE82
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL49
	.4byte	.LVL51-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL51-1
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL53
	.4byte	.LFE82
	.2byte	0x2
	.byte	0x72
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL49
	.4byte	.LVL51-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL51-1
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x91
	.byte	0x68
	.4byte	.LVL53
	.4byte	.LFE82
	.2byte	0x2
	.byte	0x72
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL35
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL39
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL47
	.4byte	.LFE81
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL35
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL40
	.4byte	.LVL41-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL41-1
	.4byte	.LFE81
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL37
	.4byte	.LVL41-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL41-1
	.4byte	.LFE81
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL35
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL38
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL48
	.4byte	.LFE81
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL36
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL46
	.4byte	.LFE81
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL43
	.4byte	.LVL44-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL11
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13-1
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LFE80
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL11
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL13-1
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL15
	.4byte	.LFE80
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL11
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL13-1
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL16
	.4byte	.LVL21
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LFE80
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL13-1
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL21
	.4byte	.LFE80
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL13-1
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL21
	.4byte	.LFE80
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL21
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL34
	.4byte	.LFE80
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL21
	.4byte	.LVL32
	.2byte	0xf
	.byte	0x78
	.byte	0
	.byte	0x12
	.byte	0xa
	.2byte	0x5b4
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL22
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL30
	.4byte	.LVL33-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL23
	.4byte	.LVL24-1
	.2byte	0x2
	.byte	0x7a
	.byte	0
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL56
	.4byte	.LFE86
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL66
	.4byte	.LVL67-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL67-1
	.4byte	.LVL69
	.2byte	0x2
	.byte	0x91
	.byte	0x68
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x2
	.byte	0x72
	.byte	0x68
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x2
	.byte	0x91
	.byte	0x68
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x2
	.byte	0x72
	.byte	0x68
	.4byte	.LVL72
	.4byte	.LFE88
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL66
	.4byte	.LVL67-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL67-1
	.4byte	.LVL69
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x2
	.byte	0x72
	.byte	0x6c
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x2
	.byte	0x72
	.byte	0x6c
	.4byte	.LVL72
	.4byte	.LFE88
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL69
	.4byte	.LVL70-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL70-1
	.4byte	.LVL70
	.2byte	0x2
	.byte	0x72
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x2
	.byte	0x91
	.byte	0x68
	.4byte	.LVL69
	.4byte	.LVL70-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL70-1
	.4byte	.LVL70
	.2byte	0x2
	.byte	0x72
	.byte	0x68
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
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.4byte	.LFB99
	.4byte	.LFE99-.LFB99
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.4byte	.LFB90
	.4byte	.LFE90-.LFB90
	.4byte	.LFB96
	.4byte	.LFE96-.LFB96
	.4byte	.LFB97
	.4byte	.LFE97-.LFB97
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.4byte	.LFB98
	.4byte	.LFE98-.LFB98
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	0
	.4byte	0
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	0
	.4byte	0
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	0
	.4byte	0
	.4byte	.LBB26
	.4byte	.LBE26
	.4byte	.LBB29
	.4byte	.LBE29
	.4byte	0
	.4byte	0
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	.LBB43
	.4byte	.LBE43
	.4byte	.LBB44
	.4byte	.LBE44
	.4byte	.LBB45
	.4byte	.LBE45
	.4byte	.LBB46
	.4byte	.LBE46
	.4byte	.LBB47
	.4byte	.LBE47
	.4byte	0
	.4byte	0
	.4byte	.LBB32
	.4byte	.LBE32
	.4byte	.LBB35
	.4byte	.LBE35
	.4byte	0
	.4byte	0
	.4byte	.LBB50
	.4byte	.LBE50
	.4byte	.LBB55
	.4byte	.LBE55
	.4byte	.LBB56
	.4byte	.LBE56
	.4byte	.LBB57
	.4byte	.LBE57
	.4byte	0
	.4byte	0
	.4byte	.LBB58
	.4byte	.LBE58
	.4byte	.LBB62
	.4byte	.LBE62
	.4byte	.LBB63
	.4byte	.LBE63
	.4byte	.LBB64
	.4byte	.LBE64
	.4byte	0
	.4byte	0
	.4byte	.LBB59
	.4byte	.LBE59
	.4byte	.LBB60
	.4byte	.LBE60
	.4byte	.LBB61
	.4byte	.LBE61
	.4byte	0
	.4byte	0
	.4byte	.LBB82
	.4byte	.LBE82
	.4byte	.LBB89
	.4byte	.LBE89
	.4byte	.LBB90
	.4byte	.LBE90
	.4byte	0
	.4byte	0
	.4byte	.LBB84
	.4byte	.LBE84
	.4byte	.LBB85
	.4byte	.LBE85
	.4byte	.LBB86
	.4byte	.LBE86
	.4byte	0
	.4byte	0
	.4byte	.LBB91
	.4byte	.LBE91
	.4byte	.LBB100
	.4byte	.LBE100
	.4byte	.LBB106
	.4byte	.LBE106
	.4byte	.LBB107
	.4byte	.LBE107
	.4byte	0
	.4byte	0
	.4byte	.LBB94
	.4byte	.LBE94
	.4byte	.LBB96
	.4byte	.LBE96
	.4byte	0
	.4byte	0
	.4byte	.LBB103
	.4byte	.LBE103
	.4byte	.LBB121
	.4byte	.LBE121
	.4byte	0
	.4byte	0
	.4byte	.LBB108
	.4byte	.LBE108
	.4byte	.LBB112
	.4byte	.LBE112
	.4byte	.LBB122
	.4byte	.LBE122
	.4byte	0
	.4byte	0
	.4byte	.LBB113
	.4byte	.LBE113
	.4byte	.LBB120
	.4byte	.LBE120
	.4byte	.LBB123
	.4byte	.LBE123
	.4byte	0
	.4byte	0
	.4byte	.LBB115
	.4byte	.LBE115
	.4byte	.LBB116
	.4byte	.LBE116
	.4byte	.LBB117
	.4byte	.LBE117
	.4byte	0
	.4byte	0
	.4byte	.LBB124
	.4byte	.LBE124
	.4byte	.LBB125
	.4byte	.LBE125
	.4byte	0
	.4byte	0
	.4byte	.LFB89
	.4byte	.LFE89
	.4byte	.LFB99
	.4byte	.LFE99
	.4byte	.LFB80
	.4byte	.LFE80
	.4byte	.LFB81
	.4byte	.LFE81
	.4byte	.LFB82
	.4byte	.LFE82
	.4byte	.LFB86
	.4byte	.LFE86
	.4byte	.LFB88
	.4byte	.LFE88
	.4byte	.LFB90
	.4byte	.LFE90
	.4byte	.LFB96
	.4byte	.LFE96
	.4byte	.LFB97
	.4byte	.LFE97
	.4byte	.LFB79
	.4byte	.LFE79
	.4byte	.LFB98
	.4byte	.LFE98
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF100:
	.string	"session_id"
.LASF218:
	.string	"ip4addr_ntoa_r"
.LASF182:
	.string	"uvc_register_state_callback"
.LASF173:
	.string	"body"
.LASF66:
	.string	"MEMP_SYS_TIMEOUT"
.LASF132:
	.string	"pool_free"
.LASF40:
	.string	"size_t"
.LASF88:
	.string	"syscall_func"
.LASF229:
	.string	"http_get_counters"
.LASF187:
	.string	"frame_pool_init"
.LASF19:
	.string	"uint64_t"
.LASF175:
	.string	"hlen"
.LASF3:
	.string	"__uint8_t"
.LASF195:
	.string	"strstr"
.LASF32:
	.string	"CAMERA_UNAVAILABLE"
.LASF107:
	.string	"optval"
.LASF171:
	.string	"send_response"
.LASF123:
	.string	"normalize_request_path"
.LASF116:
	.string	"path"
.LASF181:
	.string	"printf"
.LASF211:
	.string	"__builtin_memset"
.LASF12:
	.string	"long long unsigned int"
.LASF47:
	.string	"in_addr_t"
.LASF128:
	.string	"uptime_ms"
.LASF144:
	.string	"frame"
.LASF33:
	.string	"camera_state_t"
.LASF221:
	.string	"lwip_send"
.LASF163:
	.string	"out_len"
.LASF87:
	.string	"socklen_t"
.LASF74:
	.string	"in_addr"
.LASF193:
	.string	"lwip_listen"
.LASF129:
	.string	"heap_free"
.LASF25:
	.string	"http_counters_t"
.LASF10:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF169:
	.string	"status"
.LASF141:
	.string	"warmup_remaining"
.LASF196:
	.string	"strchr"
.LASF13:
	.string	"__int_least64_t"
.LASF220:
	.string	"vTaskDelay"
.LASF225:
	.string	"C:\\\\Users\\\\cwier\\\\documents\\\\github\\\\qcom\\\\examples\\\\usb_cam_stream\\\\build"
.LASF106:
	.string	"server_fd"
.LASF67:
	.string	"MEMP_NETDB"
.LASF217:
	.string	"__errno"
.LASF147:
	.string	"http_server_task"
.LASF7:
	.string	"long int"
.LASF125:
	.string	"buf_len"
.LASF209:
	.string	"uvc_start_capture_session"
.LASF57:
	.string	"MEMP_RAW_PCB"
.LASF54:
	.string	"ip4_addr"
.LASF95:
	.string	"g_camera_gone"
.LASF197:
	.string	"memchr"
.LASF91:
	.string	"func"
.LASF199:
	.string	"memcpy"
.LASF73:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF16:
	.string	"uint16_t"
.LASF89:
	.string	"shell_syscall"
.LASF20:
	.string	"frames_dequeued"
.LASF49:
	.string	"BaseType_t"
.LASF58:
	.string	"MEMP_UDP_PCB"
.LASF185:
	.string	"lwip_setsockopt"
.LASF148:
	.string	"stream_task"
.LASF227:
	.string	"http_server_start"
.LASF192:
	.string	"lwip_bind"
.LASF213:
	.string	"vPortFree"
.LASF70:
	.string	"MEMP_MAX"
.LASF72:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_ACD"
.LASF8:
	.string	"__uint32_t"
.LASF98:
	.string	"sock"
.LASF210:
	.string	"pvPortMalloc"
.LASF111:
	.string	"stream_owns_sock"
.LASF102:
	.string	"__fsym_stream_status_name"
.LASF82:
	.string	"sin_zero"
.LASF43:
	.string	"suseconds_t"
.LASF149:
	.string	"stream_hdr"
.LASF115:
	.string	"line_end"
.LASF174:
	.string	"body_len"
.LASF62:
	.string	"MEMP_REASSDATA"
.LASF30:
	.string	"CAMERA_ATTACHED"
.LASF215:
	.string	"uvc_frame_release"
.LASF75:
	.string	"s_addr"
.LASF93:
	.string	"landing_page"
.LASF155:
	.string	"age_ms"
.LASF219:
	.string	"strlen"
.LASF208:
	.string	"uvc_alloc_session_id"
.LASF28:
	.string	"frame_t"
.LASF9:
	.string	"long unsigned int"
.LASF52:
	.string	"u32_t"
.LASF140:
	.string	"timeout"
.LASF165:
	.string	"find_jpeg_sos"
.LASF90:
	.string	"name"
.LASF108:
	.string	"addr_len"
.LASF59:
	.string	"MEMP_TCP_PCB"
.LASF120:
	.string	"target_len"
.LASF5:
	.string	"short unsigned int"
.LASF81:
	.string	"sin_addr"
.LASF150:
	.string	"last_send"
.LASF31:
	.string	"CAMERA_STREAMING"
.LASF96:
	.string	"g_stream_session_id"
.LASF137:
	.string	"handle_snapshot"
.LASF136:
	.string	"handle_status"
.LASF119:
	.string	"target"
.LASF204:
	.string	"kfree_size"
.LASF159:
	.string	"stop_capture_for_session"
.LASF203:
	.string	"xTaskGetTickCount"
.LASF207:
	.string	"uvc_get_frames_captured"
.LASF53:
	.string	"timeval"
.LASF191:
	.string	"lwip_htons"
.LASF21:
	.string	"frames_dropped"
.LASF97:
	.string	"g_stream_client_ip"
.LASF223:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF61:
	.string	"MEMP_TCP_SEG"
.LASF178:
	.string	"last_progress_tick"
.LASF130:
	.string	"psram_free"
.LASF11:
	.string	"__uint64_t"
.LASF84:
	.string	"sa_len"
.LASF79:
	.string	"sin_family"
.LASF214:
	.string	"uvc_dequeue_latest_frame"
.LASF51:
	.string	"u8_t"
.LASF139:
	.string	"start_tick"
.LASF94:
	.string	"g_stream_active"
.LASF183:
	.string	"xTaskCreate"
.LASF50:
	.string	"TickType_t"
.LASF92:
	.string	"g_counters"
.LASF138:
	.string	"started_here"
.LASF99:
	.string	"client_addr"
.LASF127:
	.string	"mode_str"
.LASF78:
	.string	"sin_len"
.LASF167:
	.string	"frame_has_jpeg_markers"
.LASF23:
	.string	"stream_client_connected"
.LASF145:
	.string	"jpeg_len"
.LASF44:
	.string	"time_t"
.LASF103:
	.string	"__fsym_stream_status"
.LASF152:
	.string	"empty_polls"
.LASF157:
	.string	"on_camera_state_change"
.LASF80:
	.string	"sin_port"
.LASF85:
	.string	"sa_family"
.LASF45:
	.string	"tv_sec"
.LASF161:
	.string	"handle_root"
.LASF156:
	.string	"phlen"
.LASF146:
	.string	"handle_stream"
.LASF143:
	.string	"min_jpeg_bytes"
.LASF158:
	.string	"new_state"
.LASF118:
	.string	"path_len"
.LASF55:
	.string	"addr"
.LASF24:
	.string	"_Bool"
.LASF17:
	.string	"int32_t"
.LASF1:
	.string	"unsigned char"
.LASF198:
	.string	"strncmp"
.LASF2:
	.string	"short int"
.LASF114:
	.string	"path_buf"
.LASF151:
	.string	"part_hdr"
.LASF164:
	.string	"eoi_end"
.LASF117:
	.string	"path_end"
.LASF110:
	.string	"flag"
.LASF34:
	.string	"width"
.LASF22:
	.string	"frames_sent"
.LASF121:
	.string	"path_size"
.LASF27:
	.string	"timestamp_ms"
.LASF36:
	.string	"format"
.LASF160:
	.string	"reason"
.LASF39:
	.string	"uvc_mode_t"
.LASF71:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF41:
	.string	"__suseconds_t"
.LASF176:
	.string	"send_all"
.LASF168:
	.string	"send_error"
.LASF46:
	.string	"tv_usec"
.LASF18:
	.string	"uint32_t"
.LASF184:
	.string	"lwip_accept"
.LASF212:
	.string	"__builtin_memcpy"
.LASF124:
	.string	"recv_request_line"
.LASF216:
	.string	"uvc_session_is_restarting"
.LASF65:
	.string	"MEMP_TCPIP_MSG_API"
.LASF180:
	.string	"chunk"
.LASF42:
	.string	"char"
.LASF105:
	.string	"argv"
.LASF126:
	.string	"mode"
.LASF14:
	.string	"unsigned int"
.LASF63:
	.string	"MEMP_NETBUF"
.LASF4:
	.string	"__uint16_t"
.LASF60:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF189:
	.string	"vTaskDelete"
.LASF29:
	.string	"CAMERA_DETACHED"
.LASF135:
	.string	"jlen"
.LASF69:
	.string	"MEMP_PBUF_POOL"
.LASF6:
	.string	"__int32_t"
.LASF194:
	.string	"lwip_recv"
.LASF200:
	.string	"uvc_get_camera_state"
.LASF222:
	.string	"uvc_stop_capture_session"
.LASF26:
	.string	"data"
.LASF206:
	.string	"frame_pool_stats"
.LASF186:
	.string	"lwip_close"
.LASF224:
	.string	".\\examples\\usb_cam_stream\\http_server.c"
.LASF37:
	.string	"altsetting"
.LASF134:
	.string	"json"
.LASF56:
	.string	"ip4_addr_t"
.LASF113:
	.string	"handle_client"
.LASF133:
	.string	"pool_queued"
.LASF202:
	.string	"snprintf"
.LASF112:
	.string	"cmd_stream_status"
.LASF76:
	.string	"sa_family_t"
.LASF131:
	.string	"pool_total"
.LASF190:
	.string	"memset"
.LASF188:
	.string	"lwip_socket"
.LASF226:
	.string	"lwip_internal_netif_client_data_index"
.LASF142:
	.string	"valid_after_warmup"
.LASF166:
	.string	"find_jpeg_eoi"
.LASF64:
	.string	"MEMP_NETCONN"
.LASF83:
	.string	"sockaddr"
.LASF179:
	.string	"send_timeout_ticks"
.LASF77:
	.string	"sockaddr_in"
.LASF109:
	.string	"client_fd"
.LASF15:
	.string	"uint8_t"
.LASF154:
	.string	"now_ms"
.LASF153:
	.string	"empty_poll_limit"
.LASF201:
	.string	"uvc_get_mode"
.LASF228:
	.string	"cleanup"
.LASF172:
	.string	"content_type"
.LASF104:
	.string	"argc"
.LASF86:
	.string	"sa_data"
.LASF122:
	.string	"slash"
.LASF101:
	.string	"stream_task_ctx_t"
.LASF170:
	.string	"message"
.LASF35:
	.string	"height"
.LASF205:
	.string	"pfree_size"
.LASF38:
	.string	"isoin_mps"
.LASF68:
	.string	"MEMP_PBUF"
.LASF48:
	.string	"in_port_t"
.LASF177:
	.string	"remaining"
.LASF162:
	.string	"frame_extract_valid_jpeg"
	.ident	"GCC: (GNU) 10.4.0"
