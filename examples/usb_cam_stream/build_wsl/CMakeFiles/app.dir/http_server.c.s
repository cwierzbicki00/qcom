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
.LFB84:
	.file 1 "./examples/usb_cam_stream/http_server.c"
	.loc 1 130 1
	.cfi_startproc
.LVL0:
	.loc 1 131 5
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	.loc 1 131 8 is_stmt 0
	beq	a0,zero,.L2
	.loc 1 131 38 discriminator 1
	li	a4,3
	bne	a0,a4,.L3
.L2:
	.loc 1 132 9 is_stmt 1
	.loc 1 132 23 is_stmt 0
	li	a4,1
	sb	a4,0(a5)
	ret
.L3:
	.loc 1 134 9 is_stmt 1
	.loc 1 134 23 is_stmt 0
	sb	zero,0(a5)
	.loc 1 136 1
	ret
	.cfi_endproc
.LFE84:
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
.LFB92:
	.loc 1 526 1 is_stmt 1
	.cfi_startproc
.LVL1:
	.loc 1 527 5
	.loc 1 527 17
	.loc 1 529 5
	.loc 1 526 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	.loc 1 530 22
	lui	s0,%hi(.LANCHOR1)
	addi	a5,s0,%lo(.LANCHOR1)
	lbu	a5,24(a5)
	.loc 1 526 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	addi	s0,s0,%lo(.LANCHOR1)
	.loc 1 530 22
	andi	a5,a5,0xff
	.loc 1 529 5
	bne	a5,zero,.L11
	lui	a1,%hi(.LC1)
.LVL2:
	addi	a1,a1,%lo(.LC1)
.L9:
	.loc 1 529 5 discriminator 4
	lui	a0,%hi(.LC2)
.LVL3:
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL4:
	.loc 1 531 5 is_stmt 1 discriminator 4
	.loc 1 531 27 is_stmt 0 discriminator 4
	lui	a1,%hi(.LANCHOR2)
	.loc 1 531 8 discriminator 4
	lbu	a5,%lo(.LANCHOR2)(a1)
	beq	a5,zero,.L10
	.loc 1 532 9 is_stmt 1
	lui	a0,%hi(.LC3)
	addi	a1,a1,%lo(.LANCHOR2)
	addi	a0,a0,%lo(.LC3)
	call	printf
.LVL5:
.L10:
	.loc 1 534 5
	.loc 1 534 63 is_stmt 0
	lw	a2,0(s0)
	lw	a3,4(s0)
	.loc 1 534 5
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	call	printf
.LVL6:
	.loc 1 535 5 is_stmt 1
	.loc 1 535 63 is_stmt 0
	lw	a2,16(s0)
	lw	a3,20(s0)
	.loc 1 535 5
	lui	a0,%hi(.LC5)
	addi	a0,a0,%lo(.LC5)
	call	printf
.LVL7:
	.loc 1 536 5 is_stmt 1
	.loc 1 536 63 is_stmt 0
	lw	a2,8(s0)
	lw	a3,12(s0)
	.loc 1 536 5
	lui	a0,%hi(.LC6)
	addi	a0,a0,%lo(.LC6)
	call	printf
.LVL8:
	.loc 1 537 5 is_stmt 1
	.loc 1 538 1 is_stmt 0
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
	.loc 1 529 5
	lui	a1,%hi(.LC0)
.LVL10:
	addi	a1,a1,%lo(.LC0)
	j	.L9
	.cfi_endproc
.LFE92:
	.size	cmd_stream_status, .-cmd_stream_status
	.section	.text.send_all,"ax",@progbits
	.align	1
	.type	send_all, @function
send_all:
.LFB80:
	.loc 1 71 1 is_stmt 1
	.cfi_startproc
.LVL11:
	.loc 1 72 5
	.loc 1 73 5
	.loc 1 75 5
	.loc 1 71 1 is_stmt 0
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
	.loc 1 71 1
	mv	s2,a0
	mv	s1,a2
	.loc 1 73 9
	mv	s0,a2
.LVL12:
.L17:
	.loc 1 75 11 is_stmt 1
	bgt	s0,zero,.L19
.LVL13:
.L18:
	.loc 1 84 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL14:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL15:
	mv	a0,s1
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL16:
.L19:
	.cfi_restore_state
.LBB2:
	.loc 1 76 9 is_stmt 1
	.loc 1 76 17 is_stmt 0
	li	a3,0
	mv	a2,s0
	mv	a0,s2
	sw	a1,12(sp)
	call	lwip_send
.LVL17:
	.loc 1 77 9 is_stmt 1
	.loc 1 77 12 is_stmt 0
	ble	a0,zero,.L20
	.loc 1 80 9 is_stmt 1
	.loc 1 80 11 is_stmt 0
	lw	a1,12(sp)
	.loc 1 81 19
	sub	s0,s0,a0
.LVL18:
	.loc 1 80 11
	add	a1,a1,a0
.LVL19:
	.loc 1 81 9 is_stmt 1
	j	.L17
.LVL20:
.L20:
	.loc 1 78 20 is_stmt 0
	li	s1,-1
.LVL21:
	j	.L18
.LBE2:
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
	.loc 1 89 1 is_stmt 1
	.cfi_startproc
.LVL22:
	.loc 1 90 5
	.loc 1 91 5
	.loc 1 89 1 is_stmt 0
	addi	sp,sp,-272
	.cfi_def_cfa_offset 272
	sw	s0,264(sp)
	.loc 1 91 16
	mv	a5,a4
	.cfi_offset 8, -8
	.loc 1 89 1
	mv	s0,a4
	.loc 1 91 16
	mv	a4,a2
.LVL23:
	lui	a2,%hi(.LC7)
.LVL24:
	.loc 1 89 1
	sw	s1,260(sp)
	sw	s2,256(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	mv	s1,a0
	mv	s2,a3
	.loc 1 91 16
	addi	a2,a2,%lo(.LC7)
	mv	a3,a1
.LVL25:
	mv	a0,sp
.LVL26:
	li	a1,256
.LVL27:
	.loc 1 89 1
	sw	ra,268(sp)
	.cfi_offset 1, -4
	.loc 1 91 16
	call	snprintf
.LVL28:
	mv	a2,a0
.LVL29:
	.loc 1 99 5 is_stmt 1
	mv	a1,sp
	mv	a0,s1
.LVL30:
	call	send_all
.LVL31:
	.loc 1 100 5
	.loc 1 100 8 is_stmt 0
	beq	s2,zero,.L22
	.loc 1 100 14 discriminator 1
	ble	s0,zero,.L22
	.loc 1 101 9 is_stmt 1
	mv	a2,s0
	mv	a1,s2
	mv	a0,s1
	call	send_all
.LVL32:
.L22:
	.loc 1 103 1 is_stmt 0
	lw	ra,268(sp)
	.cfi_restore 1
	lw	s0,264(sp)
	.cfi_restore 8
.LVL33:
	lw	s1,260(sp)
	.cfi_restore 9
.LVL34:
	lw	s2,256(sp)
	.cfi_restore 18
.LVL35:
	addi	sp,sp,272
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE81:
	.size	send_response, .-send_response
	.section	.rodata.stream_task.str1.4,"aMS",@progbits,1
	.align	2
.LC8:
	.string	"\033[0m[I][HTTP] [HTTP] Stream client connected: %s\r\n"
	.align	2
.LC9:
	.string	"\033[0m[I][HTTP] [HTTP] Camera unavailable \342\200\224 ending stream\r\n"
	.align	2
.LC10:
	.string	"\033[0;33m[W][HTTP] [HTTP] No frames for %u ms \342\200\224 ending stream\r\n"
	.align	2
.LC11:
	.string	"--frame\r\nContent-Type: image/jpeg\r\nContent-Length: %u\r\nX-Timestamp-Ms: %u\r\n\r\n"
	.align	2
.LC12:
	.string	"\r\n"
	.align	2
.LC13:
	.string	"\033[0m[I][HTTP] [HTTP] Stream client disconnected: %s\r\n"
	.section	.text.stream_task,"ax",@progbits
	.align	1
	.type	stream_task, @function
stream_task:
.LFB85:
	.loc 1 145 1 is_stmt 1
	.cfi_startproc
.LVL36:
	.loc 1 146 5
	.loc 1 147 5
	.loc 1 145 1 is_stmt 0
	addi	sp,sp,-336
	.cfi_def_cfa_offset 336
	sw	s0,328(sp)
	sw	s1,324(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a0
	.loc 1 147 9
	lwia	s1,(a0),8,0
.LVL37:
	.loc 1 150 5 is_stmt 1
	.loc 1 145 1 is_stmt 0
	sw	s2,320(sp)
	.cfi_offset 18, -16
	.loc 1 150 5
	lui	s2,%hi(.LANCHOR2)
	li	a2,16
	addi	a1,s2,%lo(.LANCHOR2)
	.loc 1 145 1
	sw	ra,332(sp)
	sw	s3,316(sp)
	sw	s4,312(sp)
	sw	s5,308(sp)
	sw	s6,304(sp)
	sw	s7,300(sp)
	sw	s8,296(sp)
	sw	s9,292(sp)
	.cfi_offset 1, -4
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.loc 1 150 5
	call	ip4addr_ntoa_r
.LVL38:
	.loc 1 152 5 is_stmt 1
	mv	a0,s0
	call	vPortFree
.LVL39:
	.loc 1 153 5
	.loc 1 155 5
	lui	a0,%hi(.LC8)
	addi	a1,s2,%lo(.LANCHOR2)
	addi	a0,a0,%lo(.LC8)
	call	printf
.LVL40:
	.loc 1 158 5
	.loc 1 158 20 is_stmt 0
	li	a4,5
	.loc 1 160 5
	li	a1,4096
	addi	a2,a1,5
	.loc 1 158 20
	li	a5,0
	sw	a4,16(sp)
	.loc 1 160 5
	addi	a1,a1,-1
	li	a4,16
	addi	a3,sp,16
	mv	a0,s1
	.loc 1 158 20
	sw	a5,20(sp)
	sw	zero,24(sp)
	.loc 1 160 5 is_stmt 1
	call	lwip_setsockopt
.LVL41:
	.loc 1 163 5
	.loc 1 170 5
	.loc 1 170 9 is_stmt 0
	lui	a1,%hi(.LANCHOR3)
	li	a2,120
	addi	a1,a1,%lo(.LANCHOR3)
	mv	a0,s1
	call	send_all
.LVL42:
	.loc 1 170 8
	blt	a0,zero,.L29
.LBB3:
	.loc 1 201 19
	lui	s0,%hi(.LANCHOR1)
.LVL43:
.LBE3:
	.loc 1 176 14
	li	s3,0
	.loc 1 174 16
	li	s4,0
.LBB7:
	.loc 1 201 19
	addi	s0,s0,%lo(.LANCHOR1)
	.loc 1 201 35
	li	s6,1
	li	s7,0
	.loc 1 213 21
	lui	s5,%hi(.LC11)
	.loc 1 235 13
	lui	s8,%hi(.LC12)
.LBB4:
	.loc 1 185 17
	lui	s9,%hi(.LANCHOR0)
.L30:
.LVL44:
.LBE4:
.LBE7:
	.loc 1 180 5 is_stmt 1
.LBB8:
	.loc 1 181 9
	.loc 1 182 9
	.loc 1 182 13 is_stmt 0
	li	a1,200
	addi	a0,sp,4
	call	uvc_dequeue_frame
.LVL45:
	.loc 1 182 12
	beq	a0,zero,.L31
.LBB5:
	.loc 1 184 13 is_stmt 1
	.loc 1 184 33 is_stmt 0
	call	uvc_get_camera_state
.LVL46:
	.loc 1 185 13 is_stmt 1
	.loc 1 185 17 is_stmt 0
	addi	a5,s9,%lo(.LANCHOR0)
	lbu	a5,0(a5)
	andi	a5,a5,0xff
	.loc 1 185 16
	bne	a5,zero,.L32
	.loc 1 185 31 discriminator 1
	beq	a0,zero,.L32
	.loc 1 186 39
	li	a5,3
	bne	a0,a5,.L33
.L32:
	.loc 1 188 17 is_stmt 1
	lui	a0,%hi(.LC9)
.LVL47:
	addi	a0,a0,%lo(.LC9)
	call	printf
.LVL48:
	.loc 1 189 17
.L29:
.LBE5:
.LBE8:
	.loc 1 246 5
	lui	a0,%hi(.LC13)
	addi	a1,s2,%lo(.LANCHOR2)
	addi	a0,a0,%lo(.LC13)
	call	printf
.LVL49:
	.loc 1 247 5
	mv	a0,s1
	call	lwip_close
.LVL50:
	.loc 1 248 5
	.loc 1 248 21 is_stmt 0
	lui	a5,%hi(.LANCHOR4)
	.loc 1 246 5
	addi	s0,s2,%lo(.LANCHOR2)
	.loc 1 248 21
	sb	zero,%lo(.LANCHOR4)(a5)
	.loc 1 249 5 is_stmt 1
	.loc 1 249 40 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	addi	a5,a5,%lo(.LANCHOR1)
	.loc 1 250 27
	sb	zero,0(s0)
	.loc 1 251 5
	li	a0,0
	.loc 1 249 40
	sb	zero,24(a5)
	.loc 1 250 5 is_stmt 1
	.loc 1 251 5
	call	vTaskDelete
.LVL51:
	.loc 1 252 1 is_stmt 0
	lw	ra,332(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,328(sp)
	.cfi_restore 8
	lw	s1,324(sp)
	.cfi_restore 9
.LVL52:
	lw	s2,320(sp)
	.cfi_restore 18
	lw	s3,316(sp)
	.cfi_restore 19
	lw	s4,312(sp)
	.cfi_restore 20
	lw	s5,308(sp)
	.cfi_restore 21
	lw	s6,304(sp)
	.cfi_restore 22
	lw	s7,300(sp)
	.cfi_restore 23
	lw	s8,296(sp)
	.cfi_restore 24
	lw	s9,292(sp)
	.cfi_restore 25
	addi	sp,sp,336
	.cfi_def_cfa_offset 0
	jr	ra
.LVL53:
.L33:
	.cfi_restore_state
.LBB9:
.LBB6:
	.loc 1 192 13 is_stmt 1
	.loc 1 192 16 is_stmt 0
	addi	s3,s3,1
.LVL54:
	li	a5,24
	bleu	s3,a5,.L30
	.loc 1 193 17 is_stmt 1
	li	a1,4096
	lui	a0,%hi(.LC10)
.LVL55:
	addi	a1,a1,904
	addi	a0,a0,%lo(.LC10)
	call	printf
.LVL56:
	.loc 1 195 17
	j	.L29
.L31:
.LBE6:
	.loc 1 199 9
.LVL57:
	.loc 1 201 9
	.loc 1 201 19 is_stmt 0
	lw	a4,0(s0)
	lw	a5,4(s0)
	.loc 1 201 35
	add64	a4,a4,s6
	sw	a4,0(s0)
	sw	a5,4(s0)
	.loc 1 204 9 is_stmt 1
	.loc 1 204 26 is_stmt 0
	call	xTaskGetTickCount
.LVL58:
	mv	s3,a0
.LVL59:
	.loc 1 205 9 is_stmt 1
	.loc 1 205 12 is_stmt 0
	beq	s4,zero,.L36
	.loc 1 206 18 discriminator 1
	sub	a5,a0,s4
	.loc 1 205 28 discriminator 1
	li	a4,99
	bgtu	a5,a4,.L36
	.loc 1 207 13 is_stmt 1
	.loc 1 207 23 is_stmt 0
	lw	a4,8(s0)
	lw	a5,12(s0)
	.loc 1 208 13
	addi	a0,sp,4
.LVL60:
	.loc 1 207 38
	add64	a4,a4,s6
	sw	a4,8(s0)
	sw	a5,12(s0)
	.loc 1 208 13 is_stmt 1
	call	uvc_frame_release
.LVL61:
	.loc 1 209 13
.L47:
	.loc 1 199 21 is_stmt 0
	li	s3,0
	j	.L30
.LVL62:
.L36:
	.loc 1 213 9 is_stmt 1
	.loc 1 213 21 is_stmt 0
	lw	a4,12(sp)
	lw	a3,8(sp)
	addi	a2,s5,%lo(.LC11)
	li	a1,256
	addi	a0,sp,32
	call	snprintf
.LVL63:
	mv	a2,a0
.LVL64:
	.loc 1 223 9 is_stmt 1
	.loc 1 223 13 is_stmt 0
	addi	a1,sp,32
	mv	a0,s1
.LVL65:
	call	send_all
.LVL66:
	.loc 1 223 12
	bge	a0,zero,.L37
.L38:
	.loc 1 224 13 is_stmt 1
	addi	a0,sp,4
	call	uvc_frame_release
.LVL67:
	.loc 1 225 13
	j	.L29
.L37:
	.loc 1 229 9
	.loc 1 229 13 is_stmt 0
	lw	a2,8(sp)
	lw	a1,4(sp)
	mv	a0,s1
	call	send_all
.LVL68:
	.loc 1 229 12
	blt	a0,zero,.L38
	.loc 1 235 9 is_stmt 1
	.loc 1 235 13 is_stmt 0
	li	a2,2
	addi	a1,s8,%lo(.LC12)
	mv	a0,s1
	call	send_all
.LVL69:
	.loc 1 235 12
	blt	a0,zero,.L38
	.loc 1 240 9 is_stmt 1
	addi	a0,sp,4
	call	uvc_frame_release
.LVL70:
	.loc 1 241 9
	.loc 1 241 19 is_stmt 0
	lw	a4,16(s0)
	lw	a5,20(s0)
	.loc 1 242 19
	mv	s4,s3
.LVL71:
	.loc 1 241 31
	add64	a4,a4,s6
	sw	a4,16(s0)
	sw	a5,20(s0)
	.loc 1 242 9 is_stmt 1
.LVL72:
	j	.L47
.LBE9:
	.cfi_endproc
.LFE85:
	.size	stream_task, .-stream_task
	.section	.rodata.send_error.str1.4,"aMS",@progbits,1
	.align	2
.LC14:
	.string	"text/plain"
	.section	.text.send_error,"ax",@progbits
	.align	1
	.type	send_error, @function
send_error:
.LFB82:
	.loc 1 106 1
	.cfi_startproc
.LVL73:
	.loc 1 107 5
	.loc 1 106 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	.cfi_offset 8, -8
	mv	s0,a0
	.loc 1 107 61
	mv	a0,a2
.LVL74:
	.loc 1 106 1
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 106 1
	sw	a1,12(sp)
	.loc 1 107 61
	sw	a2,8(sp)
	call	strlen
.LVL75:
	mv	a4,a0
	.loc 1 107 5
	mv	a0,s0
	.loc 1 108 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL76:
	.loc 1 107 5
	lw	a3,8(sp)
	lw	a1,12(sp)
	.loc 1 108 1
	lw	ra,28(sp)
	.cfi_restore 1
	.loc 1 107 5
	lui	a2,%hi(.LC14)
	.loc 1 108 1
	.loc 1 107 5
	addi	a2,a2,%lo(.LC14)
	.loc 1 108 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL77:
	.loc 1 107 5
	tail	send_response
.LVL78:
	.cfi_endproc
.LFE82:
	.size	send_error, .-send_error
	.section	.rodata.handle_client.str1.4,"aMS",@progbits,1
	.align	2
.LC15:
	.string	"true"
	.align	2
.LC16:
	.string	"false"
	.align	2
.LC17:
	.string	""
	.align	2
.LC18:
	.string	"GET "
	.align	2
.LC19:
	.string	"Only GET supported"
	.align	2
.LC20:
	.string	"405 Method Not Allowed"
	.align	2
.LC21:
	.string	"Malformed request"
	.align	2
.LC22:
	.string	"400 Bad Request"
	.align	2
.LC23:
	.string	"text/html"
	.align	2
.LC24:
	.string	"200 OK"
	.align	2
.LC25:
	.string	"/stream"
	.align	2
.LC26:
	.string	"Camera unavailable"
	.align	2
.LC27:
	.string	"503 Service Unavailable"
	.align	2
.LC28:
	.string	"Camera start failed"
	.align	2
.LC29:
	.string	"Stream already in use by another client"
	.align	2
.LC30:
	.string	"Out of memory"
	.align	2
.LC31:
	.string	"mjpeg"
	.align	2
.LC32:
	.string	"Cannot create stream task"
	.align	2
.LC33:
	.string	"/snapshot.jpg"
	.align	2
.LC34:
	.string	"No frame available"
	.align	2
.LC35:
	.string	"image/jpeg"
	.align	2
.LC36:
	.string	"/status.json"
	.align	2
.LC37:
	.string	"MJPEG %ux%u @ %ufps"
	.align	2
.LC38:
	.ascii	"{\"camera_attached\":%s,\"select"
	.string	"ed_mode\":\"%s\",\"frames_in\":%llu,\"frames_dequeued\":%llu,\"frames_dropped\":%llu,\"frames_sent\":%llu,\"stream_client_connected\":%s,\"stream_client_ip\":\"%s\",\"heap_free_bytes\":%u,\"psram_free_bytes\":%u,\"pool_total\":%u,\"pool_free\":%u,\"pool_queued\":%u,\"uptime_ms\":%llu}"
	.align	2
.LC39:
	.string	"application/json"
	.align	2
.LC40:
	.string	"Unknown endpoint"
	.align	2
.LC41:
	.string	"404 Not Found"
	.section	.text.handle_client,"ax",@progbits
	.align	1
	.type	handle_client, @function
handle_client:
.LFB89:
	.loc 1 400 1 is_stmt 1
	.cfi_startproc
.LVL79:
	.loc 1 401 5
	.loc 1 404 5
	.loc 1 400 1 is_stmt 0
	addi	sp,sp,-1200
	.cfi_def_cfa_offset 1200
	sw	s3,1180(sp)
	.loc 1 404 20
	li	a4,5
	.cfi_offset 19, -20
	.loc 1 400 1
	mv	s3,a1
	.loc 1 405 5
	li	a1,4096
.LVL80:
	addi	a2,a1,6
	.loc 1 404 20
	li	a5,0
	sw	a4,88(sp)
	.loc 1 405 5
	addi	a3,sp,88
	addi	a1,a1,-1
	li	a4,16
	.loc 1 400 1
	sw	s0,1192(sp)
	sw	s1,1188(sp)
	sw	ra,1196(sp)
	sw	s2,1184(sp)
	sw	s4,1176(sp)
	sw	s5,1172(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.loc 1 400 1
	mv	s1,a0
	.loc 1 404 20
	sw	a5,92(sp)
	sw	zero,96(sp)
	.loc 1 405 5 is_stmt 1
	.loc 1 407 13 is_stmt 0
	addi	s0,sp,144
	.loc 1 405 5
	call	lwip_setsockopt
.LVL81:
	.loc 1 407 5 is_stmt 1
	.loc 1 407 13 is_stmt 0
	li	a3,0
	li	a2,511
	mv	a1,s0
	mv	a0,s1
	call	lwip_recv
.LVL82:
	.loc 1 408 5 is_stmt 1
	.loc 1 408 8 is_stmt 0
	ble	a0,zero,.L87
	.loc 1 411 5 is_stmt 1
	.loc 1 414 9 is_stmt 0
	lui	a1,%hi(.LC18)
	.loc 1 411 12
	srb	zero,s0,a0,0
	.loc 1 414 5 is_stmt 1
	.loc 1 414 9 is_stmt 0
	li	a2,4
	addi	a1,a1,%lo(.LC18)
	mv	a0,s0
.LVL83:
	call	strncmp
.LVL84:
	.loc 1 414 8
	beq	a0,zero,.L52
	.loc 1 415 9 is_stmt 1
	lui	a2,%hi(.LC19)
	lui	a1,%hi(.LC20)
	addi	a2,a2,%lo(.LC19)
	addi	a1,a1,%lo(.LC20)
.L86:
	.loc 1 438 9 is_stmt 0
	mv	a0,s1
	call	send_error
.LVL85:
	j	.L87
.L52:
	.loc 1 419 5 is_stmt 1
.LVL86:
	.loc 1 420 5
	.loc 1 420 28 is_stmt 0
	addi	s0,sp,148
.LVL87:
	li	a1,32
	mv	a0,s0
	call	strchr
.LVL88:
	.loc 1 421 5 is_stmt 1
	.loc 1 421 8 is_stmt 0
	bne	a0,zero,.L53
	.loc 1 422 9 is_stmt 1
	lui	a2,%hi(.LC21)
	lui	a1,%hi(.LC22)
	addi	a2,a2,%lo(.LC21)
	addi	a1,a1,%lo(.LC22)
	j	.L86
.L53:
	.loc 1 426 5
	.loc 1 426 9 is_stmt 0
	sub	a0,a0,s0
.LVL89:
	.loc 1 429 5 is_stmt 1
	.loc 1 429 8 is_stmt 0
	li	s2,1
	bne	a0,s2,.L54
	.loc 1 429 23 discriminator 1
	lbu	a4,148(sp)
	li	a5,47
	bne	a4,a5,.L55
	.loc 1 430 9 is_stmt 1
.LVL90:
.LBB18:
.LBB19:
	.loc 1 116 5
	lui	a3,%hi(.LANCHOR5)
	lui	a2,%hi(.LC23)
	li	a4,205
	addi	a3,a3,%lo(.LANCHOR5)
	addi	a2,a2,%lo(.LC23)
.LVL91:
.L90:
.LBE19:
.LBE18:
.LBB20:
.LBB21:
	.loc 1 387 5 is_stmt 0
	lui	a1,%hi(.LC24)
	addi	a1,a1,%lo(.LC24)
	mv	a0,s1
	call	send_response
.LVL92:
	j	.L87
.LVL93:
.L54:
.LBE21:
.LBE20:
	.loc 1 431 12 is_stmt 1
	.loc 1 431 15 is_stmt 0
	li	a5,7
	bne	a0,a5,.L56
	.loc 1 431 33 discriminator 1
	lui	a1,%hi(.LC25)
	li	a2,7
	addi	a1,a1,%lo(.LC25)
	mv	a0,s0
.LVL94:
	call	strncmp
.LVL95:
	.loc 1 431 30 discriminator 1
	bne	a0,zero,.L55
	.loc 1 432 9 is_stmt 1
.LVL96:
.LBB23:
.LBB24:
	.loc 1 261 5
	.loc 1 261 25 is_stmt 0
	call	uvc_get_camera_state
.LVL97:
	.loc 1 262 5 is_stmt 1
	.loc 1 262 8 is_stmt 0
	beq	a0,zero,.L91
	.loc 1 262 31
	li	a5,3
	bne	a0,a5,.L58
.LVL98:
.L91:
.LBE24:
.LBE23:
.LBB28:
.LBB29:
	.loc 1 317 9 is_stmt 1
	lui	a2,%hi(.LC26)
	addi	a2,a2,%lo(.LC26)
	j	.L89
.LVL99:
.L58:
.LBE29:
.LBE28:
.LBB31:
.LBB25:
	.loc 1 267 5
	.loc 1 267 8 is_stmt 0
	bne	a0,s2,.L59
	.loc 1 268 9 is_stmt 1
	.loc 1 268 13 is_stmt 0
	call	uvc_start_capture
.LVL100:
	.loc 1 268 12
	beq	a0,zero,.L59
	.loc 1 269 13 is_stmt 1
	lui	a2,%hi(.LC28)
	addi	a2,a2,%lo(.LC28)
.LVL101:
.L89:
	.loc 1 276 9 is_stmt 0
	lui	a1,%hi(.LC27)
	addi	a1,a1,%lo(.LC27)
	j	.L86
.LVL102:
.L59:
	.loc 1 275 5 is_stmt 1
	.loc 1 275 9 is_stmt 0
	lui	s2,%hi(.LANCHOR4)
	addi	s2,s2,%lo(.LANCHOR4)
	lbu	s0,0(s2)
.LVL103:
	andi	s0,s0,0xff
	.loc 1 275 8
	beq	s0,zero,.L60
	.loc 1 276 9 is_stmt 1
	lui	a2,%hi(.LC29)
	addi	a2,a2,%lo(.LC29)
	j	.L89
.L60:
	.loc 1 281 5
	.loc 1 281 30 is_stmt 0
	li	a0,20
	call	pvPortMalloc
.LVL104:
	mv	s4,a0
.LVL105:
	.loc 1 282 5 is_stmt 1
	.loc 1 282 8 is_stmt 0
	bne	a0,zero,.L61
	.loc 1 283 9 is_stmt 1
	lui	a2,%hi(.LC30)
	addi	a2,a2,%lo(.LC30)
.LVL106:
.L88:
	.loc 1 301 9 is_stmt 0
	lui	a1,%hi(.LC27)
	addi	a1,a1,%lo(.LC27)
	mv	a0,s1
	call	send_error
.LVL107:
	.loc 1 303 9 is_stmt 1
.L51:
.LBE25:
.LBE31:
	.loc 1 441 1 is_stmt 0
	lw	ra,1196(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,s0
	lw	s0,1192(sp)
	.cfi_restore 8
	lw	s1,1188(sp)
	.cfi_restore 9
.LVL108:
	lw	s2,1184(sp)
	.cfi_restore 18
	lw	s3,1180(sp)
	.cfi_restore 19
	lw	s4,1176(sp)
	.cfi_restore 20
	lw	s5,1172(sp)
	.cfi_restore 21
	addi	sp,sp,1200
	.cfi_def_cfa_offset 0
	jr	ra
.LVL109:
.L61:
	.cfi_restore_state
.LBB32:
.LBB26:
	.loc 1 288 5 is_stmt 1
	.loc 1 289 22 is_stmt 0
	mv	a1,s3
	li	a2,16
	.loc 1 288 15
	swia	s1,(a0),4,0
.LVL110:
	.loc 1 289 5 is_stmt 1
	.loc 1 289 22 is_stmt 0
	call	memcpy
.LVL111:
	.loc 1 291 5 is_stmt 1
	.loc 1 291 19 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	sb	zero,%lo(.LANCHOR0)(a5)
	.loc 1 292 5 is_stmt 1
	.loc 1 292 21 is_stmt 0
	li	s5,1
	.loc 1 293 40
	lui	s3,%hi(.LANCHOR1)
.LVL112:
	.loc 1 295 22
	li	a2,4096
	lui	a1,%hi(.LC31)
	lui	a0,%hi(stream_task)
	.loc 1 292 21
	sb	s5,0(s2)
	.loc 1 293 5 is_stmt 1
	.loc 1 293 40 is_stmt 0
	addi	s3,s3,%lo(.LANCHOR1)
	.loc 1 295 22
	li	a5,0
	li	a4,12
	mv	a3,s4
	addi	a2,a2,-2048
	addi	a1,a1,%lo(.LC31)
	addi	a0,a0,%lo(stream_task)
	.loc 1 293 40
	sb	s5,24(s3)
	.loc 1 295 5 is_stmt 1
	.loc 1 295 22 is_stmt 0
	call	xTaskCreate
.LVL113:
	.loc 1 297 5 is_stmt 1
	.loc 1 297 8 is_stmt 0
	beq	a0,s5,.L71
	.loc 1 298 9 is_stmt 1
	mv	a0,s4
.LVL114:
	call	vPortFree
.LVL115:
	.loc 1 299 9
	.loc 1 301 9 is_stmt 0
	lui	a2,%hi(.LC32)
	.loc 1 299 25
	sb	zero,0(s2)
	.loc 1 300 9 is_stmt 1
	.loc 1 300 44 is_stmt 0
	sb	zero,24(s3)
	.loc 1 301 9 is_stmt 1
	addi	a2,a2,%lo(.LC32)
	j	.L88
.LVL116:
.L56:
.LBE26:
.LBE32:
	.loc 1 433 12
	.loc 1 433 15 is_stmt 0
	li	a5,13
	bne	a0,a5,.L62
	.loc 1 433 34 discriminator 1
	lui	a1,%hi(.LC33)
	li	a2,13
	addi	a1,a1,%lo(.LC33)
	mv	a0,s0
.LVL117:
	call	strncmp
.LVL118:
	.loc 1 433 31 discriminator 1
	bne	a0,zero,.L55
	.loc 1 434 9 is_stmt 1
.LVL119:
.LBB33:
.LBB30:
	.loc 1 315 5
	.loc 1 315 25 is_stmt 0
	call	uvc_get_camera_state
.LVL120:
	.loc 1 316 5 is_stmt 1
	.loc 1 316 31 is_stmt 0
	addi	a0,a0,-1
.LVL121:
	.loc 1 316 8
	andi	a0,a0,0xff
	bgtu	a0,s2,.L91
	.loc 1 322 5 is_stmt 1
	.loc 1 323 5
	.loc 1 323 9 is_stmt 0
	li	a1,500
	addi	a0,sp,656
	call	uvc_dequeue_frame
.LVL122:
	.loc 1 323 8
	beq	a0,zero,.L65
	.loc 1 324 9 is_stmt 1
	lui	a2,%hi(.LC34)
	addi	a2,a2,%lo(.LC34)
	j	.L89
.L65:
	.loc 1 328 5
	lw	a4,660(sp)
	lw	a3,656(sp)
	lui	a2,%hi(.LC35)
	lui	a1,%hi(.LC24)
	mv	a0,s1
	addi	a2,a2,%lo(.LC35)
	addi	a1,a1,%lo(.LC24)
	call	send_response
.LVL123:
	.loc 1 329 5
	addi	a0,sp,656
	call	uvc_frame_release
.LVL124:
.L87:
.LBE30:
.LBE33:
	.loc 1 440 11 is_stmt 0
	li	s0,0
	j	.L51
.LVL125:
.L62:
	.loc 1 435 12 is_stmt 1
	.loc 1 435 15 is_stmt 0
	li	a5,12
	bne	a0,a5,.L55
	.loc 1 435 34 discriminator 1
	lui	a1,%hi(.LC36)
	li	a2,12
	addi	a1,a1,%lo(.LC36)
	mv	a0,s0
.LVL126:
	call	strncmp
.LVL127:
	.loc 1 435 31 discriminator 1
	bne	a0,zero,.L55
	.loc 1 436 9 is_stmt 1
.LVL128:
.LBB34:
.LBB22:
	.loc 1 338 5
	.loc 1 338 25 is_stmt 0
	call	uvc_get_camera_state
.LVL129:
	mv	s4,a0
.LVL130:
	.loc 1 339 5 is_stmt 1
	.loc 1 339 30 is_stmt 0
	call	uvc_get_mode
.LVL131:
	.loc 1 341 10
	li	a5,1701736448
	.loc 1 339 30
	mv	s0,a0
.LVL132:
	.loc 1 341 5 is_stmt 1
	.loc 1 341 10 is_stmt 0
	addi	a5,a5,-146
	li	a2,32
	li	a1,0
	addi	a0,sp,112
	sw	a5,104(sp)
	sw	zero,108(sp)
	call	memset
.LVL133:
	.loc 1 342 5 is_stmt 1
	.loc 1 342 8 is_stmt 0
	beq	s4,zero,.L66
	.loc 1 343 9 is_stmt 1
	lbu	a5,10(s0)
	lhu	a4,6(s0)
	lhu	a3,4(s0)
	lui	a2,%hi(.LC37)
	addi	a2,a2,%lo(.LC37)
	li	a1,40
	addi	a0,sp,104
	call	snprintf
.LVL134:
.L66:
	.loc 1 347 5
	.loc 1 347 36 is_stmt 0
	call	xTaskGetTickCount
.LVL135:
	mv	s3,a0
.LVL136:
	.loc 1 348 5 is_stmt 1
	.loc 1 348 26 is_stmt 0
	call	kfree_size
.LVL137:
	mv	s0,a0
.LVL138:
	.loc 1 349 5 is_stmt 1
	.loc 1 349 27 is_stmt 0
	call	pfree_size
.LVL139:
	mv	s2,a0
.LVL140:
	.loc 1 351 5 is_stmt 1
	.loc 1 352 5
	addi	a2,sp,84
	addi	a1,sp,80
	addi	a0,sp,76
.LVL141:
	call	frame_pool_stats
.LVL142:
	.loc 1 354 5
	.loc 1 355 5
	.loc 1 355 16 is_stmt 0
	bne	s4,zero,.L72
	lui	s4,%hi(.LC16)
.LVL143:
	addi	s4,s4,%lo(.LC16)
.L67:
	.loc 1 374 19
	call	uvc_get_frames_captured
.LVL144:
	.loc 1 375 29
	lui	a5,%hi(.LANCHOR1)
	addi	a5,a5,%lo(.LANCHOR1)
	lw	a2,0(a5)
	lw	a3,4(a5)
	.loc 1 376 29
	lw	a6,8(a5)
	lw	a7,12(a5)
	.loc 1 377 29
	lw	t1,16(a5)
	lw	t2,20(a5)
	.loc 1 378 19
	lbu	a5,24(a5)
	andi	a5,a5,0xff
	.loc 1 355 16
	bne	a5,zero,.L73
	lui	a4,%hi(.LC16)
	addi	a4,a4,%lo(.LC16)
.L68:
	.loc 1 379 27
	lui	a5,%hi(.LANCHOR2)
	.loc 1 355 16
	lbu	t3,%lo(.LANCHOR2)(a5)
	addi	a5,a5,%lo(.LANCHOR2)
	bne	t3,zero,.L69
	lui	a5,%hi(.LC17)
	addi	a5,a5,%lo(.LC17)
.L69:
	lw	t3,84(sp)
	sw	a2,0(sp)
	lui	a2,%hi(.LC38)
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
	addi	a2,a2,%lo(.LC38)
	sw	s3,56(sp)
	sw	zero,60(sp)
	sw	t3,40(sp)
	sw	s2,36(sp)
	sw	s0,32(sp)
	sw	a5,28(sp)
	sw	t1,16(sp)
	sw	t2,20(sp)
	li	a1,512
	addi	a0,sp,656
	call	snprintf
.LVL145:
	.loc 1 387 5
	lui	a2,%hi(.LC39)
	.loc 1 355 16
	mv	a4,a0
.LVL146:
	.loc 1 387 5 is_stmt 1
	addi	a3,sp,656
	addi	a2,a2,%lo(.LC39)
	j	.L90
.LVL147:
.L72:
	.loc 1 355 16 is_stmt 0
	lui	s4,%hi(.LC15)
.LVL148:
	addi	s4,s4,%lo(.LC15)
	j	.L67
.L73:
	lui	a4,%hi(.LC15)
	addi	a4,a4,%lo(.LC15)
	j	.L68
.LVL149:
.L55:
.LBE22:
.LBE34:
	.loc 1 438 9 is_stmt 1
	lui	a2,%hi(.LC40)
	lui	a1,%hi(.LC41)
	addi	a2,a2,%lo(.LC40)
	addi	a1,a1,%lo(.LC41)
	j	.L86
.LVL150:
.L71:
.LBB35:
.LBB27:
	.loc 1 306 11 is_stmt 0
	li	s0,1
	j	.L51
.LBE27:
.LBE35:
	.cfi_endproc
.LFE89:
	.size	handle_client, .-handle_client
	.section	.rodata.http_server_task.str1.4,"aMS",@progbits,1
	.align	2
.LC42:
	.string	"\033[0;31m[E][HTTP] [HTTP] socket() failed\r\n"
	.align	2
.LC43:
	.string	"\033[0;31m[E][HTTP] [HTTP] bind(%d) failed\r\n"
	.align	2
.LC44:
	.string	"\033[0;31m[E][HTTP] [HTTP] listen() failed\r\n"
	.align	2
.LC45:
	.string	"\033[0m[I][HTTP] [HTTP] Server listening on port %d\r\n"
	.align	2
.LC46:
	.string	"\033[0;31m[E][HTTP] [HTTP] accept() failed\r\n"
	.section	.text.http_server_task,"ax",@progbits
	.align	1
	.type	http_server_task, @function
http_server_task:
.LFB90:
	.loc 1 448 1 is_stmt 1
	.cfi_startproc
.LVL151:
	.loc 1 449 5
	.loc 1 452 5
	.loc 1 448 1 is_stmt 0
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
	.loc 1 452 5
	call	frame_pool_init
.LVL152:
	.loc 1 454 5 is_stmt 1
	.loc 1 454 21 is_stmt 0
	li	a2,0
	li	a1,1
	li	a0,2
	call	lwip_socket
.LVL153:
	.loc 1 455 5 is_stmt 1
	.loc 1 455 8 is_stmt 0
	bge	a0,zero,.L93
	.loc 1 456 9 is_stmt 1
	lui	a0,%hi(.LC42)
.LVL154:
	addi	a0,a0,%lo(.LC42)
	call	printf
.LVL155:
	.loc 1 457 9
	.loc 1 508 1 is_stmt 0
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
	.loc 1 457 9
	li	a0,0
	.loc 1 508 1
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	.loc 1 457 9
	tail	vTaskDelete
.LVL156:
.L93:
	.cfi_restore_state
	.loc 1 463 5
	li	a1,4096
	.loc 1 462 9
	li	a5,1
	.loc 1 463 5
	li	a4,4
	addi	a3,sp,4
	li	a2,4
	addi	a1,a1,-1
	.loc 1 462 9
	sw	a5,4(sp)
	mv	s0,a0
	.loc 1 462 5 is_stmt 1
	.loc 1 463 5
	call	lwip_setsockopt
.LVL157:
	.loc 1 465 5
	.loc 1 466 5
	li	a2,16
	li	a1,0
	addi	a0,sp,16
	call	memset
.LVL158:
	.loc 1 467 5
	.loc 1 467 21 is_stmt 0
	li	a5,2
	.loc 1 468 21
	li	a0,80
	.loc 1 467 21
	sb	a5,17(sp)
	.loc 1 468 5 is_stmt 1
	.loc 1 468 21 is_stmt 0
	call	lwip_htons
.LVL159:
	.loc 1 468 19
	sh	a0,18(sp)
	.loc 1 469 5 is_stmt 1
	.loc 1 471 9 is_stmt 0
	li	a2,16
	addi	a1,sp,16
	mv	a0,s0
	.loc 1 469 26
	sw	zero,20(sp)
	.loc 1 471 5 is_stmt 1
	.loc 1 471 9 is_stmt 0
	call	lwip_bind
.LVL160:
	.loc 1 471 8
	bge	a0,zero,.L94
	.loc 1 472 9 is_stmt 1
	lui	a0,%hi(.LC43)
	li	a1,80
	addi	a0,a0,%lo(.LC43)
	call	printf
.LVL161:
	.loc 1 473 9
.L102:
	.loc 1 480 9
	mv	a0,s0
	call	lwip_close
.LVL162:
	.loc 1 481 9
	li	a0,0
	call	vTaskDelete
.LVL163:
	.loc 1 482 9
	.loc 1 508 1 is_stmt 0
	lw	ra,76(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
.LVL164:
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
.LVL165:
.L94:
	.cfi_restore_state
	.loc 1 478 5 is_stmt 1
	.loc 1 478 9 is_stmt 0
	li	a1,2
	mv	a0,s0
	call	lwip_listen
.LVL166:
	.loc 1 478 8
	bge	a0,zero,.L96
	.loc 1 479 9 is_stmt 1
	lui	a0,%hi(.LC44)
	addi	a0,a0,%lo(.LC44)
	call	printf
.LVL167:
	j	.L102
.L96:
	.loc 1 485 5
	lui	a0,%hi(.LC45)
	li	a1,80
	addi	a0,a0,%lo(.LC45)
	call	printf
.LVL168:
.LBB36:
	.loc 1 489 19 is_stmt 0
	li	s2,16
	.loc 1 499 13
	li	s3,1
	.loc 1 494 13
	lui	s4,%hi(.LC46)
.L97:
.LBE36:
	.loc 1 487 5 is_stmt 1
.LBB37:
	.loc 1 488 9
	.loc 1 489 9
	.loc 1 491 25 is_stmt 0
	addi	a2,sp,8
	addi	a1,sp,32
	mv	a0,s0
	.loc 1 489 19
	sw	s2,8(sp)
	.loc 1 491 9 is_stmt 1
	.loc 1 491 25 is_stmt 0
	call	lwip_accept
.LVL169:
	mv	s1,a0
.LVL170:
	.loc 1 493 9 is_stmt 1
	.loc 1 493 12 is_stmt 0
	bge	a0,zero,.L98
	.loc 1 494 13 is_stmt 1
	addi	a0,s4,%lo(.LC46)
	call	printf
.LVL171:
	.loc 1 495 13
	j	.L97
.L98:
	.loc 1 499 9
	.loc 1 500 9 is_stmt 0
	li	a1,6
	li	a4,4
	addi	a3,sp,12
	li	a2,1
	.loc 1 499 13
	sw	s3,12(sp)
	.loc 1 500 9 is_stmt 1
	call	lwip_setsockopt
.LVL172:
	.loc 1 502 8
	.loc 1 502 32 is_stmt 0
	addi	a1,sp,32
	mv	a0,s1
	call	handle_client
.LVL173:
	.loc 1 504 9 is_stmt 1
	.loc 1 504 12 is_stmt 0
	bne	a0,zero,.L97
	.loc 1 505 13 is_stmt 1
	mv	a0,s1
.LVL174:
	call	lwip_close
.LVL175:
	j	.L97
.LBE37:
	.cfi_endproc
.LFE90:
	.size	http_server_task, .-http_server_task
	.section	.text.http_get_counters,"ax",@progbits
	.align	1
	.globl	http_get_counters
	.type	http_get_counters, @function
http_get_counters:
.LFB79:
	.loc 1 49 1
	.cfi_startproc
	.loc 1 50 5
	.loc 1 50 12 is_stmt 0
	lui	a0,%hi(.LANCHOR1)
	.loc 1 51 1
	addi	a0,a0,%lo(.LANCHOR1)
	ret
	.cfi_endproc
.LFE79:
	.size	http_get_counters, .-http_get_counters
	.section	.rodata.http_server_start.str1.4,"aMS",@progbits,1
	.align	2
.LC47:
	.string	"http"
	.section	.text.http_server_start,"ax",@progbits
	.align	1
	.globl	http_server_start
	.type	http_server_start, @function
http_server_start:
.LFB91:
	.loc 1 515 1 is_stmt 1
	.cfi_startproc
	.loc 1 516 5
	lui	a0,%hi(on_camera_state_change)
	.loc 1 515 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 516 5
	addi	a0,a0,%lo(on_camera_state_change)
	.loc 1 515 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 516 5
	call	uvc_register_state_callback
.LVL176:
	.loc 1 517 5 is_stmt 1
	.loc 1 519 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 517 5
	li	a2,4096
	lui	a1,%hi(.LC47)
	lui	a0,%hi(http_server_task)
	.loc 1 519 1
	.loc 1 517 5
	li	a5,0
	li	a4,12
	li	a3,0
	addi	a2,a2,-2048
	addi	a1,a1,%lo(.LC47)
	addi	a0,a0,%lo(http_server_task)
	.loc 1 519 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 517 5
	tail	xTaskCreate
.LVL177:
	.cfi_endproc
.LFE91:
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
	.set	.LANCHOR5,. + 0
	.type	landing_page, @object
	.size	landing_page, 206
landing_page:
	.string	"<html><head><title>QCC748M-CAM</title></head><body><h1>QCC748M-CAM</h1><p>IP: 192.168.2.1</p><img src=\"/stream\"><p><a href=\"/snapshot.jpg\">Snapshot</a> | <a href=\"/status.json\">Status</a></p></body></html>"
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
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./examples/usb_cam_stream/http_server.h"
	.file 5 "./examples/usb_cam_stream/frame_pool.h"
	.file 6 "./examples/usb_cam_stream/uvc_capture.h"
	.file 7 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_types.h"
	.file 8 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_timeval.h"
	.file 9 "./components/libc/./sys/types.h"
	.file 10 "./components/os/freertos/portable/GCC/RISC-V/common/portmacro.h"
	.file 11 "./components/net/lwip/lwip/src/include/lwip/arch.h"
	.file 12 "./components/net/lwip/lwip/src/include/lwip/ip4_addr.h"
	.file 13 "./components/net/lwip/lwip/src/include/lwip/memp.h"
	.file 14 "./components/net/lwip/lwip/src/include/lwip/inet.h"
	.file 15 "./components/net/lwip/lwip/src/include/lwip/sockets.h"
	.file 16 "./components/shell/./shell.h"
	.file 17 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/stdio.h"
	.file 18 "./components/os/freertos/include/task.h"
	.file 19 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/unistd.h"
	.file 20 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/string.h"
	.file 21 "./components/net/lwip/lwip/src/include/lwip/def.h"
	.file 22 "./components/mm/./mem.h"
	.file 23 "./components/os/freertos/include/portable.h"
	.file 24 "<built-in>"
	.file 25 "./components/net/lwip/lwip/src/include/lwip/netif.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x16d3
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF183
	.byte	0xc
	.4byte	.LASF184
	.4byte	.LASF185
	.4byte	.Ldebug_ranges0+0xb8
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
	.byte	0x5
	.4byte	0xdc
	.byte	0x3
	.4byte	.LASF19
	.byte	0x3
	.byte	0x3c
	.byte	0x14
	.4byte	0x86
	.byte	0x6
	.4byte	0xed
	.byte	0x7
	.byte	0x20
	.byte	0x4
	.byte	0x8
	.byte	0x9
	.4byte	0x13c
	.byte	0x8
	.4byte	.LASF20
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.4byte	0xf9
	.byte	0
	.byte	0x8
	.4byte	.LASF21
	.byte	0x4
	.byte	0xa
	.byte	0x17
	.4byte	0xf9
	.byte	0x8
	.byte	0x8
	.4byte	.LASF22
	.byte	0x4
	.byte	0xb
	.byte	0x17
	.4byte	0xf9
	.byte	0x10
	.byte	0x8
	.4byte	.LASF23
	.byte	0x4
	.byte	0xc
	.byte	0x16
	.4byte	0x143
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF24
	.byte	0x6
	.4byte	0x13c
	.byte	0x3
	.4byte	.LASF25
	.byte	0x4
	.byte	0xd
	.byte	0x3
	.4byte	0xfe
	.byte	0x5
	.4byte	0x148
	.byte	0x7
	.byte	0xc
	.byte	0x5
	.byte	0xe
	.byte	0x9
	.4byte	0x18a
	.byte	0x8
	.4byte	.LASF26
	.byte	0x5
	.byte	0xf
	.byte	0xe
	.4byte	0x18a
	.byte	0
	.byte	0x9
	.string	"len"
	.byte	0x5
	.byte	0x10
	.byte	0xe
	.4byte	0xdc
	.byte	0x4
	.byte	0x8
	.4byte	.LASF27
	.byte	0x5
	.byte	0x11
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
	.byte	0x12
	.byte	0x3
	.4byte	0x159
	.byte	0xb
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0x6
	.byte	0x9
	.byte	0xe
	.4byte	0x1c3
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
	.4byte	0x19c
	.byte	0x7
	.byte	0xe
	.byte	0x6
	.byte	0x11
	.byte	0x9
	.4byte	0x241
	.byte	0x9
	.string	"vid"
	.byte	0x6
	.byte	0x12
	.byte	0xe
	.4byte	0xc4
	.byte	0
	.byte	0x9
	.string	"pid"
	.byte	0x6
	.byte	0x13
	.byte	0xe
	.4byte	0xc4
	.byte	0x2
	.byte	0x8
	.4byte	.LASF34
	.byte	0x6
	.byte	0x14
	.byte	0xe
	.4byte	0xc4
	.byte	0x4
	.byte	0x8
	.4byte	.LASF35
	.byte	0x6
	.byte	0x15
	.byte	0xe
	.4byte	0xc4
	.byte	0x6
	.byte	0x8
	.4byte	.LASF36
	.byte	0x6
	.byte	0x16
	.byte	0xd
	.4byte	0xb3
	.byte	0x8
	.byte	0x8
	.4byte	.LASF37
	.byte	0x6
	.byte	0x17
	.byte	0xd
	.4byte	0xb3
	.byte	0x9
	.byte	0x9
	.string	"fps"
	.byte	0x6
	.byte	0x18
	.byte	0xd
	.4byte	0xb3
	.byte	0xa
	.byte	0x8
	.4byte	.LASF38
	.byte	0x6
	.byte	0x19
	.byte	0xe
	.4byte	0xc4
	.byte	0xc
	.byte	0
	.byte	0x3
	.4byte	.LASF39
	.byte	0x6
	.byte	0x1a
	.byte	0x3
	.4byte	0x1cf
	.byte	0x5
	.4byte	0x241
	.byte	0xd
	.byte	0x4
	.byte	0x3
	.4byte	.LASF40
	.byte	0x7
	.byte	0xd2
	.byte	0xe
	.4byte	0x65
	.byte	0xa
	.byte	0x4
	.4byte	0x266
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF41
	.byte	0x5
	.4byte	0x266
	.byte	0xa
	.byte	0x4
	.4byte	0x26d
	.byte	0xe
	.4byte	0x266
	.4byte	0x288
	.byte	0xf
	.4byte	0xac
	.byte	0x7
	.byte	0
	.byte	0x3
	.4byte	.LASF42
	.byte	0x8
	.byte	0x25
	.byte	0x17
	.4byte	0x254
	.byte	0x3
	.4byte	.LASF43
	.byte	0x8
	.byte	0x2a
	.byte	0x19
	.4byte	0x99
	.byte	0x10
	.4byte	.LASF52
	.byte	0x10
	.byte	0x8
	.byte	0x36
	.byte	0x8
	.4byte	0x2c8
	.byte	0x8
	.4byte	.LASF44
	.byte	0x8
	.byte	0x37
	.byte	0x9
	.4byte	0x294
	.byte	0
	.byte	0x8
	.4byte	.LASF45
	.byte	0x8
	.byte	0x38
	.byte	0xe
	.4byte	0x288
	.byte	0x8
	.byte	0
	.byte	0x3
	.4byte	.LASF46
	.byte	0x9
	.byte	0x37
	.byte	0x14
	.4byte	0x6c
	.byte	0x3
	.4byte	.LASF47
	.byte	0x9
	.byte	0x3c
	.byte	0x14
	.4byte	0x46
	.byte	0xe
	.4byte	0x266
	.4byte	0x2f0
	.byte	0xf
	.4byte	0xac
	.byte	0x27
	.byte	0
	.byte	0x3
	.4byte	.LASF48
	.byte	0xa
	.byte	0x42
	.byte	0x11
	.4byte	0xd0
	.byte	0x3
	.4byte	.LASF49
	.byte	0xa
	.byte	0x44
	.byte	0x12
	.4byte	0xdc
	.byte	0xa
	.byte	0x4
	.4byte	0x30e
	.byte	0x11
	.byte	0x3
	.4byte	.LASF50
	.byte	0xb
	.byte	0x7d
	.byte	0x11
	.4byte	0xb3
	.byte	0x3
	.4byte	.LASF51
	.byte	0xb
	.byte	0x81
	.byte	0x12
	.4byte	0xdc
	.byte	0x10
	.4byte	.LASF53
	.byte	0x4
	.byte	0xc
	.byte	0x33
	.byte	0x8
	.4byte	0x342
	.byte	0x8
	.4byte	.LASF54
	.byte	0xc
	.byte	0x34
	.byte	0x9
	.4byte	0x31b
	.byte	0
	.byte	0
	.byte	0x3
	.4byte	.LASF55
	.byte	0xc
	.byte	0x39
	.byte	0x19
	.4byte	0x327
	.byte	0xb
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0xd
	.byte	0x34
	.byte	0xe
	.4byte	0x3b1
	.byte	0xc
	.4byte	.LASF56
	.byte	0
	.byte	0xc
	.4byte	.LASF57
	.byte	0x1
	.byte	0xc
	.4byte	.LASF58
	.byte	0x2
	.byte	0xc
	.4byte	.LASF59
	.byte	0x3
	.byte	0xc
	.4byte	.LASF60
	.byte	0x4
	.byte	0xc
	.4byte	.LASF61
	.byte	0x5
	.byte	0xc
	.4byte	.LASF62
	.byte	0x6
	.byte	0xc
	.4byte	.LASF63
	.byte	0x7
	.byte	0xc
	.4byte	.LASF64
	.byte	0x8
	.byte	0xc
	.4byte	.LASF65
	.byte	0x9
	.byte	0xc
	.4byte	.LASF66
	.byte	0xa
	.byte	0xc
	.4byte	.LASF67
	.byte	0xb
	.byte	0xc
	.4byte	.LASF68
	.byte	0xc
	.byte	0xc
	.4byte	.LASF69
	.byte	0xd
	.byte	0
	.byte	0x12
	.4byte	.LASF186
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0x19
	.byte	0x71
	.byte	0x6
	.4byte	0x3d6
	.byte	0xc
	.4byte	.LASF70
	.byte	0
	.byte	0xc
	.4byte	.LASF71
	.byte	0x1
	.byte	0xc
	.4byte	.LASF72
	.byte	0x2
	.byte	0
	.byte	0x10
	.4byte	.LASF73
	.byte	0x4
	.byte	0xe
	.byte	0x3f
	.byte	0x8
	.4byte	0x3f1
	.byte	0x8
	.4byte	.LASF74
	.byte	0xe
	.byte	0x40
	.byte	0xd
	.4byte	0x2c8
	.byte	0
	.byte	0
	.byte	0x3
	.4byte	.LASF75
	.byte	0xf
	.byte	0x44
	.byte	0xe
	.4byte	0x30f
	.byte	0x10
	.4byte	.LASF76
	.byte	0x10
	.byte	0xf
	.byte	0x4e
	.byte	0x8
	.4byte	0x44c
	.byte	0x8
	.4byte	.LASF77
	.byte	0xf
	.byte	0x4f
	.byte	0x8
	.4byte	0x30f
	.byte	0
	.byte	0x8
	.4byte	.LASF78
	.byte	0xf
	.byte	0x50
	.byte	0xf
	.4byte	0x3f1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF79
	.byte	0xf
	.byte	0x51
	.byte	0xd
	.4byte	0x2d4
	.byte	0x2
	.byte	0x8
	.4byte	.LASF80
	.byte	0xf
	.byte	0x52
	.byte	0x12
	.4byte	0x3d6
	.byte	0x4
	.byte	0x8
	.4byte	.LASF81
	.byte	0xf
	.byte	0x54
	.byte	0x8
	.4byte	0x278
	.byte	0x8
	.byte	0
	.byte	0x10
	.4byte	.LASF82
	.byte	0x10
	.byte	0xf
	.byte	0x63
	.byte	0x8
	.4byte	0x481
	.byte	0x8
	.4byte	.LASF83
	.byte	0xf
	.byte	0x64
	.byte	0x8
	.4byte	0x30f
	.byte	0
	.byte	0x8
	.4byte	.LASF84
	.byte	0xf
	.byte	0x65
	.byte	0xf
	.4byte	0x3f1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF85
	.byte	0xf
	.byte	0x66
	.byte	0x8
	.4byte	0x481
	.byte	0x2
	.byte	0
	.byte	0xe
	.4byte	0x266
	.4byte	0x491
	.byte	0xf
	.4byte	0xac
	.byte	0xd
	.byte	0
	.byte	0x3
	.4byte	.LASF86
	.byte	0xf
	.byte	0x76
	.byte	0xf
	.4byte	0x31b
	.byte	0x3
	.4byte	.LASF87
	.byte	0x10
	.byte	0x3f
	.byte	0xf
	.4byte	0x4a9
	.byte	0xa
	.byte	0x4
	.4byte	0x4af
	.byte	0x13
	.4byte	0xa5
	.byte	0xa
	.byte	0x4
	.4byte	0x260
	.byte	0x10
	.4byte	.LASF88
	.byte	0x8
	.byte	0x10
	.byte	0x5e
	.byte	0x8
	.4byte	0x4e2
	.byte	0x8
	.4byte	.LASF89
	.byte	0x10
	.byte	0x5f
	.byte	0x11
	.4byte	0x272
	.byte	0
	.byte	0x8
	.4byte	.LASF90
	.byte	0x10
	.byte	0x63
	.byte	0x12
	.4byte	0x49d
	.byte	0x4
	.byte	0
	.byte	0x5
	.4byte	0x4ba
	.byte	0x14
	.4byte	.LASF91
	.byte	0x1
	.byte	0x2e
	.byte	0x18
	.4byte	0x148
	.byte	0x5
	.byte	0x3
	.4byte	g_counters
	.byte	0xe
	.4byte	0x26d
	.4byte	0x509
	.byte	0xf
	.4byte	0xac
	.byte	0xcd
	.byte	0
	.byte	0x5
	.4byte	0x4f9
	.byte	0x14
	.4byte	.LASF92
	.byte	0x1
	.byte	0x39
	.byte	0x13
	.4byte	0x509
	.byte	0x5
	.byte	0x3
	.4byte	landing_page
	.byte	0x14
	.4byte	.LASF93
	.byte	0x1
	.byte	0x7c
	.byte	0x15
	.4byte	0x143
	.byte	0x5
	.byte	0x3
	.4byte	g_stream_active
	.byte	0x14
	.4byte	.LASF94
	.byte	0x1
	.byte	0x7d
	.byte	0x15
	.4byte	0x143
	.byte	0x5
	.byte	0x3
	.4byte	g_camera_gone
	.byte	0xe
	.4byte	0x266
	.4byte	0x554
	.byte	0xf
	.4byte	0xac
	.byte	0xf
	.byte	0
	.byte	0x14
	.4byte	.LASF95
	.byte	0x1
	.byte	0x7e
	.byte	0xd
	.4byte	0x544
	.byte	0x5
	.byte	0x3
	.4byte	g_stream_client_ip
	.byte	0x7
	.byte	0x14
	.byte	0x1
	.byte	0x8b
	.byte	0x9
	.4byte	0x58a
	.byte	0x8
	.4byte	.LASF96
	.byte	0x1
	.byte	0x8c
	.byte	0x9
	.4byte	0xa5
	.byte	0
	.byte	0x8
	.4byte	.LASF97
	.byte	0x1
	.byte	0x8d
	.byte	0x18
	.4byte	0x3fd
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF98
	.byte	0x1
	.byte	0x8e
	.byte	0x3
	.4byte	0x566
	.byte	0xe
	.4byte	0x26d
	.4byte	0x5a6
	.byte	0xf
	.4byte	0xac
	.byte	0xd
	.byte	0
	.byte	0x5
	.4byte	0x596
	.byte	0x15
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x21b
	.byte	0xc
	.4byte	0x5a6
	.byte	0x5
	.byte	0x3
	.4byte	__fsym_stream_status_name
	.byte	0x15
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x21b
	.byte	0x6c
	.4byte	0x4e2
	.byte	0x5
	.byte	0x3
	.4byte	__fsym_stream_status
	.byte	0x16
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x20d
	.byte	0xc
	.4byte	0xa5
	.4byte	.LFB92
	.4byte	.LFE92-.LFB92
	.byte	0x1
	.byte	0x9c
	.4byte	0x687
	.byte	0x17
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x20d
	.byte	0x22
	.4byte	0xa5
	.4byte	.LLST0
	.byte	0x17
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x20d
	.byte	0x2f
	.4byte	0x4b4
	.4byte	.LLST1
	.byte	0x18
	.4byte	.LVL4
	.4byte	0x1535
	.4byte	0x625
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x18
	.4byte	.LVL5
	.4byte	0x1535
	.4byte	0x645
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
	.4byte	0x1535
	.4byte	0x65c
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0x18
	.4byte	.LVL7
	.4byte	0x1535
	.4byte	0x673
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x1a
	.4byte	.LVL8
	.4byte	0x1535
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x202
	.byte	0x6
	.4byte	.LFB91
	.4byte	.LFE91-.LFB91
	.byte	0x1
	.byte	0x9c
	.4byte	0x6e8
	.byte	0x18
	.4byte	.LVL176
	.4byte	0x1541
	.4byte	0x6b5
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	on_camera_state_change
	.byte	0
	.byte	0x1c
	.4byte	.LVL177
	.4byte	0x154d
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
	.4byte	.LC47
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
	.byte	0x3c
	.byte	0x19
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x1bf
	.byte	0xd
	.4byte	.LFB90
	.4byte	.LFE90-.LFB90
	.byte	0x1
	.byte	0x9c
	.4byte	0x980
	.byte	0x1e
	.string	"arg"
	.byte	0x1
	.2byte	0x1bf
	.byte	0x24
	.4byte	0x252
	.4byte	.LLST44
	.byte	0x1f
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x1c6
	.byte	0x9
	.4byte	0xa5
	.4byte	.LLST45
	.byte	0x20
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x1ce
	.byte	0x9
	.4byte	0xa5
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x20
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x1d1
	.byte	0x18
	.4byte	0x3fd
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0x21
	.4byte	.Ldebug_ranges0+0xa0
	.4byte	0x825
	.byte	0x20
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x1e8
	.byte	0x1c
	.4byte	0x3fd
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x20
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x1e9
	.byte	0x13
	.4byte	0x491
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0x20
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x1eb
	.byte	0xd
	.4byte	0xa5
	.byte	0x1
	.byte	0x59
	.byte	0x20
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x1f3
	.byte	0xd
	.4byte	0xa5
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0x1f
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x1f6
	.byte	0xd
	.4byte	0x13c
	.4byte	.LLST46
	.byte	0x18
	.4byte	.LVL169
	.4byte	0x155a
	.4byte	0x7be
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
	.4byte	.LVL171
	.4byte	0x1535
	.4byte	0x7d5
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC46
	.byte	0
	.byte	0x18
	.4byte	.LVL172
	.4byte	0x1567
	.4byte	0x7fa
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
	.4byte	.LVL173
	.4byte	0x980
	.4byte	0x814
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
	.4byte	.LVL175
	.4byte	0x1574
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LVL152
	.4byte	0x1580
	.byte	0x18
	.4byte	.LVL153
	.4byte	0x158c
	.4byte	0x84b
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
	.4byte	.LVL155
	.4byte	0x1535
	.4byte	0x862
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC42
	.byte	0
	.byte	0x23
	.4byte	.LVL156
	.4byte	0x1599
	.4byte	0x875
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x18
	.4byte	.LVL157
	.4byte	0x1567
	.4byte	0x8a1
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
	.4byte	.LVL158
	.4byte	0x15a6
	.4byte	0x8bf
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
	.4byte	.LVL159
	.4byte	0x15b2
	.4byte	0x8d3
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x50
	.byte	0
	.byte	0x18
	.4byte	.LVL160
	.4byte	0x15be
	.4byte	0x8f2
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
	.4byte	.LVL161
	.4byte	0x1535
	.4byte	0x90f
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC43
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x50
	.byte	0
	.byte	0x18
	.4byte	.LVL162
	.4byte	0x1574
	.4byte	0x923
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL163
	.4byte	0x1599
	.4byte	0x936
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x18
	.4byte	.LVL166
	.4byte	0x15cb
	.4byte	0x94f
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
	.4byte	.LVL167
	.4byte	0x1535
	.4byte	0x966
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC44
	.byte	0
	.byte	0x1a
	.4byte	.LVL168
	.4byte	0x1535
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC45
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x50
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x18f
	.byte	0xc
	.4byte	0x13c
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.byte	0x1
	.byte	0x9c
	.4byte	0xe44
	.byte	0x17
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x18f
	.byte	0x1e
	.4byte	0xa5
	.4byte	.LLST24
	.byte	0x17
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x18f
	.byte	0x38
	.4byte	0xe44
	.4byte	.LLST25
	.byte	0x24
	.string	"buf"
	.byte	0x1
	.2byte	0x191
	.byte	0xa
	.4byte	0xe4a
	.byte	0x3
	.byte	0x91
	.byte	0xe0,0x77
	.byte	0x24
	.string	"tv"
	.byte	0x1
	.2byte	0x194
	.byte	0x14
	.4byte	0x2a0
	.byte	0x3
	.byte	0x91
	.byte	0xa8,0x77
	.byte	0x25
	.string	"n"
	.byte	0x1
	.2byte	0x197
	.byte	0x9
	.4byte	0xa5
	.4byte	.LLST26
	.byte	0x1f
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x1a3
	.byte	0x11
	.4byte	0x272
	.4byte	.LLST27
	.byte	0x1f
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x1a4
	.byte	0x11
	.4byte	0x272
	.4byte	.LLST28
	.byte	0x1f
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x1aa
	.byte	0x9
	.4byte	0xa5
	.4byte	.LLST29
	.byte	0x26
	.4byte	0x12df
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.byte	0x1
	.2byte	0x1ae
	.byte	0x9
	.4byte	0xa3f
	.byte	0x27
	.4byte	0x12ec
	.4byte	.LLST30
	.byte	0
	.byte	0x28
	.4byte	0xe5b
	.4byte	.LBB20
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.2byte	0x1b4
	.byte	0x9
	.4byte	0xbb9
	.byte	0x27
	.4byte	0xe69
	.4byte	.LLST31
	.byte	0x29
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x2a
	.4byte	0xe76
	.4byte	.LLST32
	.byte	0x2a
	.4byte	0xe82
	.4byte	.LLST33
	.byte	0x2b
	.4byte	0xe8f
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x77
	.byte	0x2c
	.4byte	0xe9c
	.byte	0x2a
	.4byte	0xea9
	.4byte	.LLST34
	.byte	0x2a
	.4byte	0xeb6
	.4byte	.LLST35
	.byte	0x2b
	.4byte	0xec3
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x77
	.byte	0x2b
	.4byte	0xed0
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x77
	.byte	0x2b
	.4byte	0xedd
	.byte	0x3
	.byte	0x91
	.byte	0xa4,0x77
	.byte	0x2b
	.4byte	0xeea
	.byte	0x3
	.byte	0x91
	.byte	0xe0,0x7b
	.byte	0x2a
	.4byte	0xef7
	.4byte	.LLST36
	.byte	0x18
	.4byte	.LVL92
	.4byte	0x137d
	.4byte	0xade
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC24
	.byte	0
	.byte	0x22
	.4byte	.LVL129
	.4byte	0x15d8
	.byte	0x22
	.4byte	.LVL131
	.4byte	0x15e4
	.byte	0x18
	.4byte	.LVL133
	.4byte	0x15f0
	.4byte	0xb10
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xc0,0x77
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
	.4byte	.LVL134
	.4byte	0x15fb
	.4byte	0xb34
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x77
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
	.4byte	.LC37
	.byte	0
	.byte	0x22
	.4byte	.LVL135
	.4byte	0x1608
	.byte	0x22
	.4byte	.LVL137
	.4byte	0x1615
	.byte	0x22
	.4byte	.LVL139
	.4byte	0x1621
	.byte	0x18
	.4byte	.LVL142
	.4byte	0x162d
	.4byte	0xb72
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x77
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x77
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0xa4,0x77
	.byte	0
	.byte	0x22
	.4byte	.LVL144
	.4byte	0x1639
	.byte	0x1a
	.4byte	.LVL145
	.4byte	0x15fb
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xe0,0x7b
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
	.4byte	.LC38
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
	.byte	0xb8,0x77
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
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	0xf40
	.4byte	.LBB23
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x1
	.2byte	0x1b0
	.byte	0x10
	.4byte	0xcaa
	.byte	0x27
	.4byte	0xf5f
	.4byte	.LLST37
	.byte	0x27
	.4byte	0xf52
	.4byte	.LLST38
	.byte	0x29
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x2a
	.4byte	0xf6c
	.4byte	.LLST39
	.byte	0x2a
	.4byte	0xf78
	.4byte	.LLST40
	.byte	0x2a
	.4byte	0xf85
	.4byte	.LLST41
	.byte	0x22
	.4byte	.LVL97
	.4byte	0x15d8
	.byte	0x22
	.4byte	.LVL100
	.4byte	0x1645
	.byte	0x18
	.4byte	.LVL104
	.4byte	0x1651
	.4byte	0xc25
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0x18
	.4byte	.LVL107
	.4byte	0x12f9
	.4byte	0xc42
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC27
	.byte	0
	.byte	0x18
	.4byte	.LVL111
	.4byte	0x165d
	.4byte	0xc61
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0x4
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x18
	.4byte	.LVL113
	.4byte	0x154d
	.4byte	0xc98
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
	.4byte	.LC31
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x800
	.byte	0x19
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x3c
	.byte	0x19
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1a
	.4byte	.LVL115
	.4byte	0x1668
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	0xf0b
	.4byte	.LBB28
	.4byte	.Ldebug_ranges0+0x88
	.byte	0x1
	.2byte	0x1b2
	.byte	0x9
	.4byte	0xd3d
	.byte	0x27
	.4byte	0xf19
	.4byte	.LLST42
	.byte	0x29
	.4byte	.Ldebug_ranges0+0x88
	.byte	0x2a
	.4byte	0xf26
	.4byte	.LLST43
	.byte	0x2b
	.4byte	0xf32
	.byte	0x3
	.byte	0x91
	.byte	0xe0,0x7b
	.byte	0x22
	.4byte	.LVL120
	.4byte	0x15d8
	.byte	0x18
	.4byte	.LVL122
	.4byte	0x1674
	.4byte	0xd04
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xe0,0x7b
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xa
	.2byte	0x1f4
	.byte	0
	.byte	0x18
	.4byte	.LVL123
	.4byte	0x137d
	.4byte	0xd2a
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC24
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC35
	.byte	0
	.byte	0x1a
	.4byte	.LVL124
	.4byte	0x1680
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xe0,0x7b
	.byte	0
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL81
	.4byte	0x1567
	.4byte	0xd6b
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
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
	.byte	0xa8,0x77
	.byte	0x19
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x18
	.4byte	.LVL82
	.4byte	0x168c
	.4byte	0xd91
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
	.byte	0x78
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x1ff
	.byte	0x19
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x18
	.4byte	.LVL84
	.4byte	0x1699
	.4byte	0xdb3
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
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0x18
	.4byte	.LVL85
	.4byte	0x12f9
	.4byte	0xdc7
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL88
	.4byte	0x16a5
	.4byte	0xde1
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
	.4byte	.LVL95
	.4byte	0x1699
	.4byte	0xe03
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
	.4byte	.LC25
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x37
	.byte	0
	.byte	0x18
	.4byte	.LVL118
	.4byte	0x1699
	.4byte	0xe25
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
	.4byte	.LC33
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3d
	.byte	0
	.byte	0x1a
	.4byte	.LVL127
	.4byte	0x1699
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
	.4byte	.LC36
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x3fd
	.byte	0xe
	.4byte	0x266
	.4byte	0xe5b
	.byte	0x2d
	.4byte	0xac
	.2byte	0x1ff
	.byte	0
	.byte	0x2e
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x150
	.byte	0xd
	.byte	0x1
	.4byte	0xf05
	.byte	0x2f
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x150
	.byte	0x1f
	.4byte	0xa5
	.byte	0x30
	.string	"st"
	.byte	0x1
	.2byte	0x152
	.byte	0x14
	.4byte	0x1c3
	.byte	0x31
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x153
	.byte	0x17
	.4byte	0xf05
	.byte	0x31
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x155
	.byte	0xa
	.4byte	0x2e0
	.byte	0x31
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x15b
	.byte	0xe
	.4byte	0xed
	.byte	0x31
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x15c
	.byte	0xe
	.4byte	0xdc
	.byte	0x31
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x15d
	.byte	0xe
	.4byte	0xdc
	.byte	0x31
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x15f
	.byte	0xe
	.4byte	0xdc
	.byte	0x31
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x15f
	.byte	0x1a
	.4byte	0xdc
	.byte	0x31
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x15f
	.byte	0x25
	.4byte	0xdc
	.byte	0x31
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x162
	.byte	0xa
	.4byte	0xe4a
	.byte	0x31
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x163
	.byte	0x9
	.4byte	0xa5
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x24d
	.byte	0x2e
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x139
	.byte	0xd
	.byte	0x1
	.4byte	0xf40
	.byte	0x2f
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x139
	.byte	0x21
	.4byte	0xa5
	.byte	0x30
	.string	"st"
	.byte	0x1
	.2byte	0x13b
	.byte	0x14
	.4byte	0x1c3
	.byte	0x31
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x142
	.byte	0xd
	.4byte	0x190
	.byte	0
	.byte	0x32
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x103
	.byte	0xc
	.4byte	0x13c
	.byte	0x1
	.4byte	0xf93
	.byte	0x2f
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x103
	.byte	0x1e
	.4byte	0xa5
	.byte	0x2f
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x103
	.byte	0x38
	.4byte	0xe44
	.byte	0x30
	.string	"st"
	.byte	0x1
	.2byte	0x105
	.byte	0x14
	.4byte	0x1c3
	.byte	0x30
	.string	"ctx"
	.byte	0x1
	.2byte	0x119
	.byte	0x18
	.4byte	0xf93
	.byte	0x30
	.string	"ret"
	.byte	0x1
	.2byte	0x127
	.byte	0x10
	.4byte	0x2f0
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x58a
	.byte	0x33
	.4byte	.LASF128
	.byte	0x1
	.byte	0x90
	.byte	0xd
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.byte	0x1
	.byte	0x9c
	.4byte	0x1295
	.byte	0x34
	.string	"arg"
	.byte	0x1
	.byte	0x90
	.byte	0x1f
	.4byte	0x252
	.4byte	.LLST13
	.byte	0x35
	.string	"ctx"
	.byte	0x1
	.byte	0x92
	.byte	0x18
	.4byte	0xf93
	.4byte	.LLST14
	.byte	0x36
	.4byte	.LASF96
	.byte	0x1
	.byte	0x93
	.byte	0x9
	.4byte	0xa5
	.4byte	.LLST15
	.byte	0x37
	.string	"tv"
	.byte	0x1
	.byte	0x9e
	.byte	0x14
	.4byte	0x2a0
	.byte	0x3
	.byte	0x91
	.byte	0xc0,0x7d
	.byte	0x14
	.4byte	.LASF129
	.byte	0x1
	.byte	0xa3
	.byte	0x17
	.4byte	0x12a5
	.byte	0x5
	.byte	0x3
	.4byte	stream_hdr.0
	.byte	0x38
	.4byte	.LASF189
	.byte	0x1
	.byte	0xf5
	.byte	0x1
	.4byte	.L29
	.byte	0x36
	.4byte	.LASF130
	.byte	0x1
	.byte	0xae
	.byte	0x10
	.4byte	0x2fc
	.4byte	.LLST16
	.byte	0x14
	.4byte	.LASF131
	.byte	0x1
	.byte	0xaf
	.byte	0xa
	.4byte	0x12aa
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7d
	.byte	0x36
	.4byte	.LASF132
	.byte	0x1
	.byte	0xb0
	.byte	0xe
	.4byte	0xdc
	.4byte	.LLST17
	.byte	0x39
	.4byte	.LASF133
	.byte	0x1
	.byte	0xb1
	.byte	0x14
	.4byte	0xe8
	.byte	0x21
	.4byte	.Ldebug_ranges0+0
	.4byte	0x11aa
	.byte	0x14
	.4byte	.LASF126
	.byte	0x1
	.byte	0xb5
	.byte	0x11
	.4byte	0x190
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7d
	.byte	0x35
	.string	"now"
	.byte	0x1
	.byte	0xcc
	.byte	0x14
	.4byte	0x2fc
	.4byte	.LLST18
	.byte	0x36
	.4byte	.LASF134
	.byte	0x1
	.byte	0xd5
	.byte	0xd
	.4byte	0xa5
	.4byte	.LLST19
	.byte	0x21
	.4byte	.Ldebug_ranges0+0x28
	.4byte	0x10d4
	.byte	0x35
	.string	"st"
	.byte	0x1
	.byte	0xb8
	.byte	0x1c
	.4byte	0x1c3
	.4byte	.LLST20
	.byte	0x22
	.4byte	.LVL46
	.4byte	0x15d8
	.byte	0x18
	.4byte	.LVL48
	.4byte	0x1535
	.4byte	0x10b9
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0x1a
	.4byte	.LVL56
	.4byte	0x1535
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xa
	.2byte	0x1388
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL45
	.4byte	0x1674
	.4byte	0x10ef
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7d
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0xc8
	.byte	0
	.byte	0x22
	.4byte	.LVL58
	.4byte	0x1608
	.byte	0x18
	.4byte	.LVL61
	.4byte	0x1680
	.4byte	0x110d
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7d
	.byte	0
	.byte	0x18
	.4byte	.LVL63
	.4byte	0x15fb
	.4byte	0x1132
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7d
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
	.4byte	.LC11
	.byte	0
	.byte	0x18
	.4byte	.LVL66
	.4byte	0x1472
	.4byte	0x114d
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7d
	.byte	0
	.byte	0x18
	.4byte	.LVL67
	.4byte	0x1680
	.4byte	0x1162
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7d
	.byte	0
	.byte	0x18
	.4byte	.LVL68
	.4byte	0x1472
	.4byte	0x1176
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL69
	.4byte	0x1472
	.4byte	0x1198
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x1a
	.4byte	.LVL70
	.4byte	0x1680
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7d
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL38
	.4byte	0x16b1
	.4byte	0x11cc
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
	.4byte	.LVL39
	.4byte	0x1668
	.4byte	0x11e0
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL40
	.4byte	0x1535
	.4byte	0x1200
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR2
	.byte	0
	.byte	0x18
	.4byte	.LVL41
	.4byte	0x1567
	.4byte	0x122e
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
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
	.byte	0xc0,0x7d
	.byte	0x19
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x18
	.4byte	.LVL42
	.4byte	0x1472
	.4byte	0x1251
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
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
	.4byte	.LVL49
	.4byte	0x1535
	.4byte	0x1271
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR2
	.byte	0
	.byte	0x18
	.4byte	.LVL50
	.4byte	0x1574
	.4byte	0x1285
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL51
	.4byte	0x1599
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	0x26d
	.4byte	0x12a5
	.byte	0xf
	.4byte	0xac
	.byte	0x78
	.byte	0
	.byte	0x5
	.4byte	0x1295
	.byte	0xe
	.4byte	0x266
	.4byte	0x12ba
	.byte	0xf
	.4byte	0xac
	.byte	0xff
	.byte	0
	.byte	0x33
	.4byte	.LASF135
	.byte	0x1
	.byte	0x81
	.byte	0xd
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.byte	0x1
	.byte	0x9c
	.4byte	0x12df
	.byte	0x3a
	.4byte	.LASF136
	.byte	0x1
	.byte	0x81
	.byte	0x33
	.4byte	0x1c3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x3b
	.4byte	.LASF137
	.byte	0x1
	.byte	0x72
	.byte	0xd
	.byte	0x1
	.4byte	0x12f9
	.byte	0x3c
	.4byte	.LASF96
	.byte	0x1
	.byte	0x72
	.byte	0x1d
	.4byte	0xa5
	.byte	0
	.byte	0x33
	.4byte	.LASF138
	.byte	0x1
	.byte	0x69
	.byte	0xd
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.byte	0x1
	.byte	0x9c
	.4byte	0x137d
	.byte	0x3d
	.4byte	.LASF96
	.byte	0x1
	.byte	0x69
	.byte	0x1c
	.4byte	0xa5
	.4byte	.LLST21
	.byte	0x3d
	.4byte	.LASF139
	.byte	0x1
	.byte	0x69
	.byte	0x2e
	.4byte	0x272
	.4byte	.LLST22
	.byte	0x3d
	.4byte	.LASF140
	.byte	0x1
	.byte	0x69
	.byte	0x42
	.4byte	0x272
	.4byte	.LLST23
	.byte	0x18
	.4byte	.LVL75
	.4byte	0x16bd
	.4byte	0x1354
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x68
	.byte	0x6
	.byte	0
	.byte	0x1c
	.4byte	.LVL78
	.4byte	0x137d
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
	.4byte	.LC14
	.byte	0x19
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x72
	.byte	0x68
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x33
	.4byte	.LASF141
	.byte	0x1
	.byte	0x56
	.byte	0xd
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.byte	0x1
	.byte	0x9c
	.4byte	0x1472
	.byte	0x3d
	.4byte	.LASF96
	.byte	0x1
	.byte	0x56
	.byte	0x1f
	.4byte	0xa5
	.4byte	.LLST7
	.byte	0x3d
	.4byte	.LASF139
	.byte	0x1
	.byte	0x56
	.byte	0x31
	.4byte	0x272
	.4byte	.LLST8
	.byte	0x3d
	.4byte	.LASF142
	.byte	0x1
	.byte	0x57
	.byte	0x27
	.4byte	0x272
	.4byte	.LLST9
	.byte	0x3d
	.4byte	.LASF143
	.byte	0x1
	.byte	0x58
	.byte	0x27
	.4byte	0x308
	.4byte	.LLST10
	.byte	0x3d
	.4byte	.LASF144
	.byte	0x1
	.byte	0x58
	.byte	0x31
	.4byte	0xa5
	.4byte	.LLST11
	.byte	0x37
	.string	"hdr"
	.byte	0x1
	.byte	0x5a
	.byte	0xa
	.4byte	0x12aa
	.byte	0x3
	.byte	0x91
	.byte	0xf0,0x7d
	.byte	0x36
	.4byte	.LASF145
	.byte	0x1
	.byte	0x5b
	.byte	0x9
	.4byte	0xa5
	.4byte	.LLST12
	.byte	0x18
	.4byte	.LVL28
	.4byte	0x15fb
	.4byte	0x143b
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
	.4byte	.LVL31
	.4byte	0x1472
	.4byte	0x1455
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
	.4byte	.LVL32
	.4byte	0x1472
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
	.byte	0x3e
	.4byte	.LASF146
	.byte	0x1
	.byte	0x46
	.byte	0xc
	.4byte	0xa5
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.byte	0x1
	.byte	0x9c
	.4byte	0x1513
	.byte	0x3d
	.4byte	.LASF96
	.byte	0x1
	.byte	0x46
	.byte	0x19
	.4byte	0xa5
	.4byte	.LLST2
	.byte	0x34
	.string	"buf"
	.byte	0x1
	.byte	0x46
	.byte	0x2b
	.4byte	0x308
	.4byte	.LLST3
	.byte	0x34
	.string	"len"
	.byte	0x1
	.byte	0x46
	.byte	0x34
	.4byte	0xa5
	.4byte	.LLST4
	.byte	0x35
	.string	"p"
	.byte	0x1
	.byte	0x48
	.byte	0x14
	.4byte	0x1513
	.4byte	.LLST5
	.byte	0x36
	.4byte	.LASF147
	.byte	0x1
	.byte	0x49
	.byte	0x9
	.4byte	0xa5
	.4byte	.LLST6
	.byte	0x3f
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.byte	0x37
	.string	"n"
	.byte	0x1
	.byte	0x4c
	.byte	0xd
	.4byte	0xa5
	.byte	0x1
	.byte	0x5a
	.byte	0x1a
	.4byte	.LVL17
	.4byte	0x16c9
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
	.byte	0x6c
	.byte	0x6
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0xbf
	.byte	0x40
	.4byte	.LASF190
	.byte	0x1
	.byte	0x30
	.byte	0x18
	.4byte	0x152f
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.byte	0x1
	.byte	0x9c
	.byte	0xa
	.byte	0x4
	.4byte	0x154
	.byte	0x41
	.4byte	.LASF148
	.4byte	.LASF148
	.byte	0x11
	.byte	0xc8
	.byte	0x5
	.byte	0x41
	.4byte	.LASF149
	.4byte	.LASF149
	.byte	0x6
	.byte	0x5a
	.byte	0x6
	.byte	0x42
	.4byte	.LASF150
	.4byte	.LASF150
	.byte	0x12
	.2byte	0x168
	.byte	0x10
	.byte	0x42
	.4byte	.LASF151
	.4byte	.LASF151
	.byte	0xf
	.2byte	0x254
	.byte	0x5
	.byte	0x42
	.4byte	.LASF152
	.4byte	.LASF152
	.byte	0xf
	.2byte	0x25a
	.byte	0x5
	.byte	0x41
	.4byte	.LASF153
	.4byte	.LASF153
	.byte	0x13
	.byte	0x1e
	.byte	0x8
	.byte	0x41
	.4byte	.LASF154
	.4byte	.LASF154
	.byte	0x5
	.byte	0x19
	.byte	0x5
	.byte	0x42
	.4byte	.LASF155
	.4byte	.LASF155
	.byte	0xf
	.2byte	0x268
	.byte	0x5
	.byte	0x42
	.4byte	.LASF156
	.4byte	.LASF156
	.byte	0x12
	.2byte	0x2e9
	.byte	0x6
	.byte	0x41
	.4byte	.LASF157
	.4byte	.LASF157
	.byte	0x14
	.byte	0x21
	.byte	0x8
	.byte	0x41
	.4byte	.LASF158
	.4byte	.LASF158
	.byte	0x15
	.byte	0x60
	.byte	0x7
	.byte	0x42
	.4byte	.LASF159
	.4byte	.LASF159
	.byte	0xf
	.2byte	0x255
	.byte	0x5
	.byte	0x42
	.4byte	.LASF160
	.4byte	.LASF160
	.byte	0xf
	.2byte	0x25d
	.byte	0x5
	.byte	0x41
	.4byte	.LASF161
	.4byte	.LASF161
	.byte	0x6
	.byte	0x25
	.byte	0x10
	.byte	0x41
	.4byte	.LASF162
	.4byte	.LASF162
	.byte	0x6
	.byte	0x2c
	.byte	0x13
	.byte	0x43
	.4byte	.LASF157
	.4byte	.LASF172
	.byte	0x18
	.byte	0
	.byte	0x42
	.4byte	.LASF163
	.4byte	.LASF163
	.byte	0x11
	.2byte	0x10a
	.byte	0x5
	.byte	0x42
	.4byte	.LASF164
	.4byte	.LASF164
	.byte	0x12
	.2byte	0x5a8
	.byte	0xc
	.byte	0x41
	.4byte	.LASF165
	.4byte	.LASF165
	.byte	0x16
	.byte	0xa5
	.byte	0xa
	.byte	0x41
	.4byte	.LASF166
	.4byte	.LASF166
	.byte	0x16
	.byte	0xa8
	.byte	0xa
	.byte	0x41
	.4byte	.LASF167
	.4byte	.LASF167
	.byte	0x5
	.byte	0x46
	.byte	0x6
	.byte	0x41
	.4byte	.LASF168
	.4byte	.LASF168
	.byte	0x6
	.byte	0x31
	.byte	0xa
	.byte	0x41
	.4byte	.LASF169
	.4byte	.LASF169
	.byte	0x6
	.byte	0x38
	.byte	0x5
	.byte	0x41
	.4byte	.LASF170
	.4byte	.LASF170
	.byte	0x17
	.byte	0xb1
	.byte	0x8
	.byte	0x43
	.4byte	.LASF171
	.4byte	.LASF173
	.byte	0x18
	.byte	0
	.byte	0x41
	.4byte	.LASF174
	.4byte	.LASF174
	.byte	0x17
	.byte	0xb4
	.byte	0x6
	.byte	0x41
	.4byte	.LASF175
	.4byte	.LASF175
	.byte	0x6
	.byte	0x46
	.byte	0x5
	.byte	0x41
	.4byte	.LASF176
	.4byte	.LASF176
	.byte	0x6
	.byte	0x4c
	.byte	0x6
	.byte	0x42
	.4byte	.LASF177
	.4byte	.LASF177
	.byte	0xf
	.2byte	0x25e
	.byte	0x9
	.byte	0x41
	.4byte	.LASF178
	.4byte	.LASF178
	.byte	0x14
	.byte	0x2b
	.byte	0x5
	.byte	0x41
	.4byte	.LASF179
	.4byte	.LASF179
	.byte	0x14
	.byte	0x23
	.byte	0x7
	.byte	0x41
	.4byte	.LASF180
	.4byte	.LASF180
	.byte	0xc
	.byte	0xd9
	.byte	0x7
	.byte	0x41
	.4byte	.LASF181
	.4byte	.LASF181
	.byte	0x14
	.byte	0x29
	.byte	0x8
	.byte	0x42
	.4byte	.LASF182
	.4byte	.LASF182
	.byte	0xf
	.2byte	0x264
	.byte	0x9
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x26
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
	.byte	0x29
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2a
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2b
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x2c
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2d
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x2e
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
	.byte	0
	.byte	0
	.byte	0x30
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
	.byte	0x31
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
	.byte	0x32
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
	.byte	0x33
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
	.byte	0x34
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
	.byte	0x35
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
	.byte	0x36
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
	.byte	0x37
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
	.byte	0x38
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
	.byte	0x39
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
	.byte	0x3a
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
	.byte	0x3b
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
	.byte	0x3c
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
	.byte	0x17
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
	.byte	0x3f
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x40
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
	.byte	0x41
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
	.byte	0x42
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
	.byte	0x43
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
	.4byte	.LFE92
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
	.4byte	.LFE92
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL151
	.4byte	.LVL152-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL152-1
	.4byte	.LFE90
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL153
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL156
	.4byte	.LVL157-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL157-1
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL165
	.4byte	.LFE90
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL173
	.4byte	.LVL174
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL79
	.4byte	.LVL81-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL81-1
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LFE89
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL80
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL91
	.4byte	.LVL93
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL106
	.4byte	.LVL109
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL112
	.4byte	.LVL116
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL116
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL125
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL136
	.4byte	.LVL149
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL149
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL150
	.4byte	.LFE89
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x4
	.byte	0x91
	.byte	0xe4,0x77
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL91
	.4byte	.LVL93
	.2byte	0x4
	.byte	0x91
	.byte	0xe4,0x77
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x4
	.byte	0x91
	.byte	0xe4,0x77
	.byte	0x9f
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL103
	.4byte	.LVL107
	.2byte	0x4
	.byte	0x91
	.byte	0xe4,0x77
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL116
	.2byte	0x4
	.byte	0x91
	.byte	0xe4,0x77
	.byte	0x9f
	.4byte	.LVL116
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL125
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL132
	.4byte	.LVL149
	.2byte	0x4
	.byte	0x91
	.byte	0xe4,0x77
	.byte	0x9f
	.4byte	.LVL149
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL150
	.4byte	.LFE89
	.2byte	0x4
	.byte	0x91
	.byte	0xe4,0x77
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL89
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL125
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL128
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL130
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL147
	.4byte	.LVL148
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL132
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL138
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL140
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL141
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL146
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL96
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL99
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL102
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL112
	.4byte	.LVL116
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL150
	.4byte	.LFE89
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL96
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL99
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL102
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL109
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL150
	.4byte	.LFE89
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL99
	.4byte	.LVL100-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL110
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL150
	.4byte	.LFE89
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL150
	.4byte	.LFE89
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL119
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL37
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL43
	.4byte	.LFE85
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL39
	.4byte	.LFE85
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL37
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL53
	.4byte	.LFE85
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL44
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL53
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL72
	.4byte	.LFE85
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL44
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL53
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL57
	.4byte	.LVL61
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL65
	.4byte	.LVL66-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL74
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL76
	.4byte	.LVL78-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL78-1
	.4byte	.LFE82
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL73
	.4byte	.LVL75-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL75-1
	.4byte	.LVL77
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL77
	.4byte	.LFE82
	.2byte	0x2
	.byte	0x72
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL73
	.4byte	.LVL75-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL75-1
	.4byte	.LVL77
	.2byte	0x2
	.byte	0x91
	.byte	0x68
	.4byte	.LVL77
	.4byte	.LFE82
	.2byte	0x2
	.byte	0x72
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL22
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL34
	.4byte	.LFE81
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL22
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL28-1
	.4byte	.LFE81
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL24
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL28-1
	.4byte	.LFE81
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL25
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL35
	.4byte	.LFE81
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL23
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL33
	.4byte	.LFE81
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL30
	.4byte	.LVL31-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LFE80
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL12
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
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL13
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL21
	.4byte	.LFE80
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL16
	.4byte	.LVL17-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL17-1
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL20
	.4byte	.LFE80
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL19
	.4byte	.LFE80
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x64
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.4byte	.LFB92
	.4byte	.LFE92-.LFB92
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.4byte	.LFB90
	.4byte	.LFE90-.LFB90
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.4byte	.LFB91
	.4byte	.LFE91-.LFB91
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	0
	.4byte	0
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	0
	.4byte	0
	.4byte	.LBB20
	.4byte	.LBE20
	.4byte	.LBB34
	.4byte	.LBE34
	.4byte	0
	.4byte	0
	.4byte	.LBB23
	.4byte	.LBE23
	.4byte	.LBB31
	.4byte	.LBE31
	.4byte	.LBB32
	.4byte	.LBE32
	.4byte	.LBB35
	.4byte	.LBE35
	.4byte	0
	.4byte	0
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	.LBB33
	.4byte	.LBE33
	.4byte	0
	.4byte	0
	.4byte	.LBB36
	.4byte	.LBE36
	.4byte	.LBB37
	.4byte	.LBE37
	.4byte	0
	.4byte	0
	.4byte	.LFB84
	.4byte	.LFE84
	.4byte	.LFB92
	.4byte	.LFE92
	.4byte	.LFB80
	.4byte	.LFE80
	.4byte	.LFB81
	.4byte	.LFE81
	.4byte	.LFB85
	.4byte	.LFE85
	.4byte	.LFB82
	.4byte	.LFE82
	.4byte	.LFB89
	.4byte	.LFE89
	.4byte	.LFB90
	.4byte	.LFE90
	.4byte	.LFB79
	.4byte	.LFE79
	.4byte	.LFB91
	.4byte	.LFE91
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF148:
	.string	"printf"
.LASF145:
	.string	"hlen"
.LASF180:
	.string	"ip4addr_ntoa_r"
.LASF149:
	.string	"uvc_register_state_callback"
.LASF143:
	.string	"body"
.LASF65:
	.string	"MEMP_SYS_TIMEOUT"
.LASF120:
	.string	"pool_free"
.LASF87:
	.string	"syscall_func"
.LASF190:
	.string	"http_get_counters"
.LASF66:
	.string	"MEMP_NETDB"
.LASF19:
	.string	"uint64_t"
.LASF0:
	.string	"signed char"
.LASF3:
	.string	"__uint8_t"
.LASF91:
	.string	"g_counters"
.LASF32:
	.string	"CAMERA_UNAVAILABLE"
.LASF141:
	.string	"send_response"
.LASF111:
	.string	"path"
.LASF172:
	.string	"__builtin_memset"
.LASF12:
	.string	"long long unsigned int"
.LASF169:
	.string	"uvc_start_capture"
.LASF116:
	.string	"uptime_ms"
.LASF126:
	.string	"frame"
.LASF33:
	.string	"camera_state_t"
.LASF182:
	.string	"lwip_send"
.LASF86:
	.string	"socklen_t"
.LASF13:
	.string	"__int_least64_t"
.LASF185:
	.string	"./examples/usb_cam_stream/build_wsl"
.LASF117:
	.string	"heap_free"
.LASF25:
	.string	"http_counters_t"
.LASF10:
	.string	"long long int"
.LASF167:
	.string	"frame_pool_stats"
.LASF154:
	.string	"frame_pool_init"
.LASF103:
	.string	"server_fd"
.LASF127:
	.string	"http_server_task"
.LASF7:
	.string	"long int"
.LASF112:
	.string	"path_end"
.LASF56:
	.string	"MEMP_RAW_PCB"
.LASF53:
	.string	"ip4_addr"
.LASF94:
	.string	"g_camera_gone"
.LASF90:
	.string	"func"
.LASF171:
	.string	"memcpy"
.LASF72:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF16:
	.string	"uint16_t"
.LASF88:
	.string	"shell_syscall"
.LASF20:
	.string	"frames_dequeued"
.LASF48:
	.string	"BaseType_t"
.LASF57:
	.string	"MEMP_UDP_PCB"
.LASF128:
	.string	"stream_task"
.LASF187:
	.string	"http_server_start"
.LASF159:
	.string	"lwip_bind"
.LASF69:
	.string	"MEMP_MAX"
.LASF8:
	.string	"__uint32_t"
.LASF96:
	.string	"sock"
.LASF170:
	.string	"pvPortMalloc"
.LASF108:
	.string	"stream_owns_sock"
.LASF99:
	.string	"__fsym_stream_status_name"
.LASF81:
	.string	"sin_zero"
.LASF42:
	.string	"suseconds_t"
.LASF129:
	.string	"stream_hdr"
.LASF61:
	.string	"MEMP_REASSDATA"
.LASF30:
	.string	"CAMERA_ATTACHED"
.LASF176:
	.string	"uvc_frame_release"
.LASF74:
	.string	"s_addr"
.LASF92:
	.string	"landing_page"
.LASF181:
	.string	"strlen"
.LASF28:
	.string	"frame_t"
.LASF9:
	.string	"long unsigned int"
.LASF51:
	.string	"u32_t"
.LASF40:
	.string	"__suseconds_t"
.LASF179:
	.string	"strchr"
.LASF89:
	.string	"name"
.LASF175:
	.string	"uvc_dequeue_frame"
.LASF105:
	.string	"addr_len"
.LASF58:
	.string	"MEMP_TCP_PCB"
.LASF34:
	.string	"width"
.LASF26:
	.string	"data"
.LASF5:
	.string	"short unsigned int"
.LASF80:
	.string	"sin_addr"
.LASF130:
	.string	"last_send"
.LASF31:
	.string	"CAMERA_STREAMING"
.LASF125:
	.string	"handle_snapshot"
.LASF124:
	.string	"handle_status"
.LASF165:
	.string	"kfree_size"
.LASF144:
	.string	"body_len"
.LASF164:
	.string	"xTaskGetTickCount"
.LASF168:
	.string	"uvc_get_frames_captured"
.LASF52:
	.string	"timeval"
.LASF158:
	.string	"lwip_htons"
.LASF21:
	.string	"frames_dropped"
.LASF95:
	.string	"g_stream_client_ip"
.LASF183:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF60:
	.string	"MEMP_TCP_SEG"
.LASF118:
	.string	"psram_free"
.LASF104:
	.string	"optval"
.LASF83:
	.string	"sa_len"
.LASF78:
	.string	"sin_family"
.LASF50:
	.string	"u8_t"
.LASF93:
	.string	"g_stream_active"
.LASF150:
	.string	"xTaskCreate"
.LASF49:
	.string	"TickType_t"
.LASF97:
	.string	"client_addr"
.LASF115:
	.string	"mode_str"
.LASF77:
	.string	"sin_len"
.LASF23:
	.string	"stream_client_connected"
.LASF43:
	.string	"time_t"
.LASF100:
	.string	"__fsym_stream_status"
.LASF11:
	.string	"__uint64_t"
.LASF132:
	.string	"empty_polls"
.LASF135:
	.string	"on_camera_state_change"
.LASF79:
	.string	"sin_port"
.LASF84:
	.string	"sa_family"
.LASF44:
	.string	"tv_sec"
.LASF137:
	.string	"handle_root"
.LASF134:
	.string	"phlen"
.LASF188:
	.string	"handle_stream"
.LASF71:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_ACD"
.LASF136:
	.string	"new_state"
.LASF113:
	.string	"path_len"
.LASF54:
	.string	"addr"
.LASF24:
	.string	"_Bool"
.LASF17:
	.string	"int32_t"
.LASF1:
	.string	"unsigned char"
.LASF178:
	.string	"strncmp"
.LASF2:
	.string	"short int"
.LASF131:
	.string	"part_hdr"
.LASF46:
	.string	"in_addr_t"
.LASF107:
	.string	"flag"
.LASF22:
	.string	"frames_sent"
.LASF27:
	.string	"timestamp_ms"
.LASF36:
	.string	"format"
.LASF39:
	.string	"uvc_mode_t"
.LASF70:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF174:
	.string	"vPortFree"
.LASF146:
	.string	"send_all"
.LASF138:
	.string	"send_error"
.LASF45:
	.string	"tv_usec"
.LASF18:
	.string	"uint32_t"
.LASF151:
	.string	"lwip_accept"
.LASF173:
	.string	"__builtin_memcpy"
.LASF152:
	.string	"lwip_setsockopt"
.LASF64:
	.string	"MEMP_TCPIP_MSG_API"
.LASF155:
	.string	"lwip_socket"
.LASF41:
	.string	"char"
.LASF102:
	.string	"argv"
.LASF114:
	.string	"mode"
.LASF14:
	.string	"unsigned int"
.LASF62:
	.string	"MEMP_NETBUF"
.LASF4:
	.string	"__uint16_t"
.LASF59:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF156:
	.string	"vTaskDelete"
.LASF29:
	.string	"CAMERA_DETACHED"
.LASF123:
	.string	"jlen"
.LASF68:
	.string	"MEMP_PBUF_POOL"
.LASF6:
	.string	"__int32_t"
.LASF177:
	.string	"lwip_recv"
.LASF161:
	.string	"uvc_get_camera_state"
.LASF153:
	.string	"lwip_close"
.LASF37:
	.string	"altsetting"
.LASF122:
	.string	"json"
.LASF55:
	.string	"ip4_addr_t"
.LASF110:
	.string	"handle_client"
.LASF121:
	.string	"pool_queued"
.LASF163:
	.string	"snprintf"
.LASF160:
	.string	"lwip_listen"
.LASF109:
	.string	"cmd_stream_status"
.LASF75:
	.string	"sa_family_t"
.LASF119:
	.string	"pool_total"
.LASF157:
	.string	"memset"
.LASF186:
	.string	"lwip_internal_netif_client_data_index"
.LASF139:
	.string	"status"
.LASF63:
	.string	"MEMP_NETCONN"
.LASF82:
	.string	"sockaddr"
.LASF76:
	.string	"sockaddr_in"
.LASF106:
	.string	"client_fd"
.LASF15:
	.string	"uint8_t"
.LASF133:
	.string	"empty_poll_limit"
.LASF162:
	.string	"uvc_get_mode"
.LASF189:
	.string	"cleanup"
.LASF142:
	.string	"content_type"
.LASF101:
	.string	"argc"
.LASF85:
	.string	"sa_data"
.LASF98:
	.string	"stream_task_ctx_t"
.LASF184:
	.string	"./examples/usb_cam_stream/http_server.c"
.LASF140:
	.string	"message"
.LASF35:
	.string	"height"
.LASF166:
	.string	"pfree_size"
.LASF38:
	.string	"isoin_mps"
.LASF67:
	.string	"MEMP_PBUF"
.LASF47:
	.string	"in_port_t"
.LASF147:
	.string	"remaining"
.LASF73:
	.string	"in_addr"
	.ident	"GCC: (GNU) 10.4.0"
