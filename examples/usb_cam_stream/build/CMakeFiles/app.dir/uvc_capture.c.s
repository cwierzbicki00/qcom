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
	.file 1 ".\\examples\\usb_cam_stream\\uvc_capture.c"
	.loc 1 162 1
	.cfi_startproc
.LVL0:
	.loc 1 163 5
	.loc 1 163 17 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	sb	a0,%lo(.LANCHOR0)(a5)
	.loc 1 164 5 is_stmt 1
	.loc 1 164 9 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	lw	a5,%lo(.LANCHOR1)(a5)
	.loc 1 164 8
	beq	a5,zero,.L1
	.loc 1 165 9 is_stmt 1
	jr	a5
.LVL1:
.L1:
	.loc 1 167 1 is_stmt 0
	ret
	.cfi_endproc
.LFE105:
	.size	set_cam_state, .-set_cam_state
	.section	.text.stream_urb_slots_reset,"ax",@progbits
	.align	1
	.type	stream_urb_slots_reset, @function
stream_urb_slots_reset:
.LFB112:
	.loc 1 226 1 is_stmt 1
	.cfi_startproc
	.loc 1 227 5
.LBB19:
	.loc 1 227 10
.LVL2:
	.loc 1 227 25
	.loc 1 228 9
	.loc 1 228 26 is_stmt 0
	lui	a2,%hi(.LANCHOR2)
	.loc 1 229 34
	lui	a3,%hi(.LANCHOR3)
	.loc 1 230 30
	lui	a4,%hi(.LANCHOR4)
	.loc 1 231 31
	lui	a5,%hi(.LANCHOR5)
	.loc 1 228 26
	addi	a2,a2,%lo(.LANCHOR2)
	.loc 1 229 34
	addi	a3,a3,%lo(.LANCHOR3)
	.loc 1 230 30
	addi	a4,a4,%lo(.LANCHOR4)
	.loc 1 231 31
	addi	a5,a5,%lo(.LANCHOR5)
	.loc 1 228 26
	sw	zero,0(a2)
	.loc 1 229 9 is_stmt 1
	.loc 1 229 34 is_stmt 0
	sw	zero,0(a3)
	.loc 1 230 9 is_stmt 1
	.loc 1 230 30 is_stmt 0
	sw	zero,0(a4)
	.loc 1 231 9 is_stmt 1
	.loc 1 231 31 is_stmt 0
	sw	zero,0(a5)
	.loc 1 227 32 is_stmt 1
.LVL3:
	.loc 1 227 25
	.loc 1 228 9
	.loc 1 228 26 is_stmt 0
	sw	zero,4(a2)
	.loc 1 229 9 is_stmt 1
	.loc 1 229 34 is_stmt 0
	sw	zero,4(a3)
	.loc 1 230 9 is_stmt 1
	.loc 1 230 30 is_stmt 0
	sw	zero,4(a4)
	.loc 1 231 9 is_stmt 1
	.loc 1 231 31 is_stmt 0
	sw	zero,4(a5)
	.loc 1 227 32 is_stmt 1
.LVL4:
	.loc 1 227 25
.LBE19:
	.loc 1 233 1 is_stmt 0
	ret
	.cfi_endproc
.LFE112:
	.size	stream_urb_slots_reset, .-stream_urb_slots_reset
	.section	.text.stamp_urb_endpoints,"ax",@progbits
	.align	1
	.type	stamp_urb_endpoints, @function
stamp_urb_endpoints:
.LFB139:
	.loc 1 1181 1 is_stmt 1
	.cfi_startproc
.LVL5:
	.loc 1 1182 5
.LBB22:
.LBB23:
	.loc 1 237 5
	.loc 1 237 16 is_stmt 0
	beq	a0,zero,.L4
	.loc 1 237 38
	andi	a5,a0,3
	.loc 1 237 16
	bne	a5,zero,.L4
.LVL6:
.LBE23:
.LBE22:
	.loc 1 1182 31
	beq	a1,zero,.L4
	.loc 1 1182 41 discriminator 2
	beq	a2,zero,.L4
	.loc 1 1185 5 is_stmt 1
	.loc 1 1185 16 is_stmt 0
	sw	a1,8(a0)
	.loc 1 1186 5 is_stmt 1
	.loc 1 1186 13 is_stmt 0
	sw	a2,12(a0)
.L4:
	.loc 1 1187 1
	ret
	.cfi_endproc
.LFE139:
	.size	stamp_urb_endpoints, .-stamp_urb_endpoints
	.section	.text.capture_ctrl_set,"ax",@progbits
	.align	1
	.type	capture_ctrl_set, @function
capture_ctrl_set:
.LFB106:
	.loc 1 170 1 is_stmt 1
	.cfi_startproc
.LVL7:
	.loc 1 171 5
	.loc 1 170 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 170 1
	sw	a0,12(sp)
	sw	a1,8(sp)
	.loc 1 171 5
	call	vTaskEnterCritical
.LVL8:
	.loc 1 172 5 is_stmt 1
	.loc 1 172 26 is_stmt 0
	lw	a0,12(sp)
	.loc 1 173 25
	lw	a1,8(sp)
	.loc 1 172 26
	lui	a5,%hi(.LANCHOR6)
	sb	a0,%lo(.LANCHOR6)(a5)
	.loc 1 173 5 is_stmt 1
	.loc 1 175 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	.loc 1 173 25
	lui	a5,%hi(.LANCHOR7)
	sw	a1,%lo(.LANCHOR7)(a5)
	.loc 1 174 5 is_stmt 1
	.loc 1 175 1 is_stmt 0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL9:
	.loc 1 174 5
	tail	vTaskExitCritical
.LVL10:
	.cfi_endproc
.LFE106:
	.size	capture_ctrl_set, .-capture_ctrl_set
	.section	.text.capture_ctrl_mark_running_if_owned,"ax",@progbits
	.align	1
	.type	capture_ctrl_mark_running_if_owned, @function
capture_ctrl_mark_running_if_owned:
.LFB110:
	.loc 1 209 1 is_stmt 1
	.cfi_startproc
	.loc 1 210 5
	.loc 1 209 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 210 5
	call	vTaskEnterCritical
.LVL11:
	.loc 1 211 5 is_stmt 1
	.loc 1 211 31 is_stmt 0
	lui	a5,%hi(.LANCHOR6)
	addi	a4,a5,%lo(.LANCHOR6)
	lbu	a4,0(a4)
	.loc 1 211 8
	li	a3,1
	addi	a5,a5,%lo(.LANCHOR6)
	.loc 1 211 31
	andi	a4,a4,0xff
	.loc 1 211 8
	beq	a4,a3,.L18
	.loc 1 212 31 discriminator 1
	lbu	a4,0(a5)
	.loc 1 211 56 discriminator 1
	li	a3,3
	.loc 1 212 31 discriminator 1
	andi	a4,a4,0xff
	.loc 1 211 56 discriminator 1
	bne	a4,a3,.L19
.L18:
	.loc 1 213 29
	lui	a4,%hi(.LANCHOR7)
	lw	a4,%lo(.LANCHOR7)(a4)
	.loc 1 212 59
	beq	a4,zero,.L19
	.loc 1 214 9 is_stmt 1
	.loc 1 214 30 is_stmt 0
	li	a4,2
	sb	a4,0(a5)
.L19:
	.loc 1 216 5 is_stmt 1
	.loc 1 217 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 216 5
	tail	vTaskExitCritical
.LVL12:
	.cfi_endproc
.LFE110:
	.size	capture_ctrl_mark_running_if_owned, .-capture_ctrl_mark_running_if_owned
	.section	.text.iso_ep_layout_from_ep,"ax",@progbits
	.align	1
	.type	iso_ep_layout_from_ep, @function
iso_ep_layout_from_ep:
.LFB118:
	.loc 1 278 1 is_stmt 1
	.cfi_startproc
.LVL13:
	.loc 1 279 5
	.loc 1 280 5
	.loc 1 278 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	.loc 1 280 5
	li	a2,8
	.cfi_offset 8, -8
	.loc 1 278 1
	mv	s0,a0
	.loc 1 280 5
	li	a1,0
	mv	a0,sp
.LVL14:
	.loc 1 278 1
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 280 5
	call	memset
.LVL15:
	.loc 1 281 5 is_stmt 1
	.loc 1 281 8 is_stmt 0
	bne	s0,zero,.L25
.L28:
	.loc 1 289 5 is_stmt 1
	.loc 1 289 12 is_stmt 0
	lw	a5,0(sp)
	.loc 1 290 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL16:
	.loc 1 289 12
	sw	a5,8(sp)
	lw	a5,4(sp)
	.loc 1 290 1
	lhu	a0,8(sp)
	lhu	a3,10(sp)
	.loc 1 289 12
	sw	a5,12(sp)
	.loc 1 290 1
	lhu	a1,12(sp)
	lhu	a4,14(sp)
	li	a5,65536
	addi	a5,a5,-1
	slli	a3,a3,16
	and	a0,a0,a5
	slli	a4,a4,16
	and	a1,a1,a5
	or	a0,a0,a3
	or	a1,a1,a4
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL17:
.L25:
	.cfi_restore_state
	.loc 1 284 5 is_stmt 1
	.loc 1 284 25 is_stmt 0
	lbu	a5,5(s0)
	lbu	a4,4(s0)
	slli	a5,a5,8
	or	a5,a5,a4
.LBB24:
.LBB25:
	.loc 1 267 12
	andi	a4,a5,2047
.LBE25:
.LBE24:
	.loc 1 284 21
	sh	a5,0(sp)
	.loc 1 285 5 is_stmt 1
.LVL18:
.LBB27:
.LBB26:
	.loc 1 267 5
.LBE26:
.LBE27:
.LBB28:
.LBB29:
	.loc 1 272 13 is_stmt 0
	extu	a5,a5,11+2-1,11
	.loc 1 274 12
	addi	a5,a5,1
.LBE29:
.LBE28:
	.loc 1 286 25
	sb	a5,4(sp)
	.loc 1 288 9
	mul	a5,a4,a5
	.loc 1 285 16
	sh	a4,2(sp)
	.loc 1 286 5 is_stmt 1
.LBB31:
.LBB30:
	.loc 1 272 5
.LVL19:
	.loc 1 274 5
.LBE30:
.LBE31:
	.loc 1 287 5
	.loc 1 287 29 is_stmt 0
	sh	a5,6(sp)
	j	.L28
	.cfi_endproc
.LFE118:
	.size	iso_ep_layout_from_ep, .-iso_ep_layout_from_ep
	.section	.text.drop_current_assembly,"ax",@progbits
	.align	1
	.type	drop_current_assembly, @function
drop_current_assembly:
.LFB132:
	.loc 1 781 1 is_stmt 1
	.cfi_startproc
.LVL20:
	.loc 1 782 5
	.loc 1 782 9 is_stmt 0
	lui	a5,%hi(.LANCHOR8)
	.loc 1 782 8
	lbu	a4,%lo(.LANCHOR8)(a5)
	.loc 1 781 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.loc 1 781 1
	mv	s1,a0
	addi	s0,a5,%lo(.LANCHOR8)
	.loc 1 782 8
	beq	a4,zero,.L30
	.loc 1 783 9 is_stmt 1
	lui	a0,%hi(.LANCHOR9)
.LVL21:
	addi	a0,a0,%lo(.LANCHOR9)
	call	frame_free
.LVL22:
.L30:
	.loc 1 785 5
	.loc 1 786 26 is_stmt 0
	lui	a5,%hi(.LANCHOR10)
	sb	zero,%lo(.LANCHOR10)(a5)
	.loc 1 787 25
	lui	a5,%hi(.LANCHOR11)
	sb	zero,%lo(.LANCHOR11)(a5)
	.loc 1 788 25
	lui	a5,%hi(.LANCHOR12)
	sb	zero,%lo(.LANCHOR12)(a5)
	.loc 1 789 28
	lui	a5,%hi(.LANCHOR13)
	.loc 1 792 1
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 785 23
	sb	zero,0(s0)
	.loc 1 786 5 is_stmt 1
	.loc 1 787 5
	.loc 1 788 5
	.loc 1 789 5
	.loc 1 789 28 is_stmt 0
	sh	zero,%lo(.LANCHOR13)(a5)
	.loc 1 790 5 is_stmt 1
	.loc 1 792 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
	.loc 1 790 27
	lui	a5,%hi(.LANCHOR14)
	sb	s1,%lo(.LANCHOR14)(a5)
	.loc 1 791 5 is_stmt 1
	.loc 1 791 27 is_stmt 0
	lui	a5,%hi(.LANCHOR15)
	sb	zero,%lo(.LANCHOR15)(a5)
	.loc 1 792 1
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE132:
	.size	drop_current_assembly, .-drop_current_assembly
	.section	.rodata.iso_buffer_layout_is_valid.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"\033[0;31m[E][UVC] [UVC] ISO layout invalid phase=%s bpp=%u pkts=%u\r\n"
	.align	2
.LC1:
	.string	".\\examples\\usb_cam_stream\\uvc_capture.c"
	.align	2
.LC2:
	.string	"file [%s]\r\n"
	.align	2
.LC3:
	.string	"func [%s]\r\n"
	.align	2
.LC4:
	.string	"line [%d]\r\n"
	.align	2
.LC5:
	.string	"0"
	.align	2
.LC6:
	.string	"%s\r\n"
	.align	2
.LC7:
	.string	"\033[0;31m[E][UVC] [UVC] ISO layout overflow phase=%s bpp=%u pkts=%u urb_buf=%u backing=%u last_off=%u\r\n"
	.align	2
.LC8:
	.string	"urb_buf_bytes <= backing_buffer_size"
	.align	2
.LC9:
	.string	"(last_packet_offset + (uint32_t)bytes_per_packet) <= backing_buffer_size"
	.section	.text.iso_buffer_layout_is_valid,"ax",@progbits
	.align	1
	.type	iso_buffer_layout_is_valid, @function
iso_buffer_layout_is_valid:
.LFB119:
	.loc 1 296 1 is_stmt 1
	.cfi_startproc
.LVL23:
	.loc 1 297 5
	.loc 1 296 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	sw	s5,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.loc 1 296 1
	mv	a7,a1
	mv	a1,a3
.LVL24:
	.loc 1 297 8
	beq	a0,zero,.L36
	.loc 1 297 32 discriminator 1
	bne	a7,zero,.L37
.L36:
	.loc 1 298 17 is_stmt 1 discriminator 4
	mv	a2,a0
.LVL25:
	lui	a0,%hi(.LC0)
.LVL26:
	mv	a3,a7
.LVL27:
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL28:
	.loc 1 301 9 discriminator 4
	.loc 1 301 25 discriminator 4
	lui	a1,%hi(.LC1)
	lui	a0,%hi(.LC2)
	addi	a1,a1,%lo(.LC1)
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL29:
	.loc 1 301 96 discriminator 4
	lui	a1,%hi(.LANCHOR16)
	lui	a0,%hi(.LC3)
	addi	a1,a1,%lo(.LANCHOR16)
	addi	a0,a0,%lo(.LC3)
	call	printf
.LVL30:
	.loc 1 301 135 discriminator 4
	lui	a0,%hi(.LC4)
	li	a1,301
	addi	a0,a0,%lo(.LC4)
	call	printf
.LVL31:
	.loc 1 301 165 discriminator 4
	lui	a1,%hi(.LC5)
	lui	a0,%hi(.LC6)
	addi	a1,a1,%lo(.LC5)
	addi	a0,a0,%lo(.LC6)
.L48:
	.loc 1 318 232 is_stmt 0 discriminator 4
	call	printf
.LVL32:
	.loc 1 318 342 is_stmt 1 discriminator 4
	call	vAssertCalled
.LVL33:
	li	a0,0
.L38:
	.loc 1 321 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
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
	lw	s5,4(sp)
	.cfi_restore 21
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL34:
.L37:
	.cfi_restore_state
	.loc 1 305 14
	mul	a4,a0,a7
	mv	a5,a2
	.loc 1 305 5 is_stmt 1
.LVL35:
	.loc 1 306 5
	sub	a6,a4,a0
.LVL36:
	.loc 1 308 4
	.loc 1 308 55 is_stmt 0
	bleu	a4,a2,.L46
.LVL37:
	.loc 1 312 17 is_stmt 1 discriminator 4
	mv	a2,a0
.LVL38:
	lui	a0,%hi(.LC7)
.LVL39:
	mv	a3,a7
	addi	a0,a0,%lo(.LC7)
	call	printf
.LVL40:
	.loc 1 317 5 discriminator 4
	.loc 1 317 56 discriminator 4
	lui	s5,%hi(.LC1)
	lui	s4,%hi(.LC2)
	addi	a1,s5,%lo(.LC1)
	addi	a0,s4,%lo(.LC2)
	call	printf
.LVL41:
	.loc 1 317 127 discriminator 4
	lui	s3,%hi(.LANCHOR16)
	lui	s2,%hi(.LC3)
	addi	a1,s3,%lo(.LANCHOR16)
	addi	a0,s2,%lo(.LC3)
	call	printf
.LVL42:
	.loc 1 317 166 discriminator 4
	lui	s1,%hi(.LC4)
	li	a1,317
	addi	a0,s1,%lo(.LC4)
	call	printf
.LVL43:
	.loc 1 317 196 discriminator 4
	lui	s0,%hi(.LC6)
	lui	a1,%hi(.LC8)
	addi	a1,a1,%lo(.LC8)
	addi	a0,s0,%lo(.LC6)
	call	printf
.LVL44:
	.loc 1 317 270 discriminator 4
	call	vAssertCalled
.LVL45:
	.loc 1 317 288 discriminator 4
	.loc 1 318 5 discriminator 4
	.loc 1 318 92 discriminator 4
	addi	a1,s5,%lo(.LC1)
	addi	a0,s4,%lo(.LC2)
	call	printf
.LVL46:
	.loc 1 318 163 discriminator 4
	addi	a1,s3,%lo(.LANCHOR16)
	addi	a0,s2,%lo(.LC3)
	call	printf
.LVL47:
	.loc 1 318 202 discriminator 4
	li	a1,318
	addi	a0,s1,%lo(.LC4)
	call	printf
.LVL48:
	.loc 1 318 232 discriminator 4
	lui	a1,%hi(.LC9)
	addi	a1,a1,%lo(.LC9)
	addi	a0,s0,%lo(.LC6)
	j	.L48
.LVL49:
.L46:
	.loc 1 308 9 is_stmt 0
	li	a0,1
.LVL50:
	j	.L38
	.cfi_endproc
.LFE119:
	.size	iso_buffer_layout_is_valid, .-iso_buffer_layout_is_valid
	.section	.text.sanitize_iso_pkt_cap,"ax",@progbits
	.align	1
	.type	sanitize_iso_pkt_cap, @function
sanitize_iso_pkt_cap:
.LFB115:
	.loc 1 247 1 is_stmt 1
	.cfi_startproc
.LVL51:
	.loc 1 248 5
	.loc 1 248 21 is_stmt 0
	addi	a5,a0,-4
	.loc 1 248 8
	andi	a5,a5,0xff
	li	a4,4
	bleu	a5,a4,.L50
.LVL52:
.LBB34:
.LBB35:
	.loc 1 249 9 is_stmt 1
	.loc 1 249 39 is_stmt 0
	lui	a5,%hi(.LANCHOR17)
	addi	a5,a5,%lo(.LANCHOR17)
	lbu	a4,0(a5)
	.loc 1 249 12
	li	a3,3
	.loc 1 253 16
	li	a0,4
.LVL53:
	.loc 1 249 39
	andi	a4,a4,0xff
	.loc 1 249 12
	bleu	a4,a3,.L50
	.loc 1 250 39
	lbu	a4,0(a5)
	.loc 1 249 44
	li	a3,8
	.loc 1 250 39
	andi	a4,a4,0xff
	.loc 1 249 44
	bgtu	a4,a3,.L50
	.loc 1 251 13 is_stmt 1
	.loc 1 251 20 is_stmt 0
	lbu	a0,0(a5)
.LVL54:
	andi	a0,a0,0xff
.LVL55:
.L50:
.LBE35:
.LBE34:
	.loc 1 256 1
	ret
	.cfi_endproc
.LFE115:
	.size	sanitize_iso_pkt_cap, .-sanitize_iso_pkt_cap
	.section	.text.note_packet_error_for_current_frame,"ax",@progbits
	.align	1
	.type	note_packet_error_for_current_frame, @function
note_packet_error_for_current_frame:
.LFB131:
	.loc 1 766 1 is_stmt 1
	.cfi_startproc
	.loc 1 767 5
	.loc 1 767 27 is_stmt 0
	lui	a5,%hi(.LANCHOR18)
	addi	a5,a5,%lo(.LANCHOR18)
	lw	a4,0(a5)
	addi	a4,a4,1
	sw	a4,0(a5)
	.loc 1 768 5 is_stmt 1
	.loc 1 768 8 is_stmt 0
	lui	a5,%hi(.LANCHOR8)
	lbu	a5,%lo(.LANCHOR8)(a5)
	beq	a5,zero,.L53
.LBB38:
.LBB39:
	.loc 1 772 5 is_stmt 1
	.loc 1 772 32 is_stmt 0
	lui	a5,%hi(.LANCHOR13)
	addi	a5,a5,%lo(.LANCHOR13)
	lhu	a4,0(a5)
	.loc 1 772 8
	li	a3,65536
	addi	a3,a3,-1
	beq	a4,a3,.L55
	.loc 1 773 9 is_stmt 1
	.loc 1 773 31 is_stmt 0
	addi	a4,a4,1
	sh	a4,0(a5)
.L55:
	.loc 1 775 5 is_stmt 1
	.loc 1 776 9
	.loc 1 776 29 is_stmt 0
	lui	a5,%hi(.LANCHOR11)
	li	a4,1
	sb	a4,%lo(.LANCHOR11)(a5)
.L53:
.LBE39:
.LBE38:
	.loc 1 778 1
	ret
	.cfi_endproc
.LFE131:
	.size	note_packet_error_for_current_frame, .-note_packet_error_for_current_frame
	.section	.text.find_jpeg_soi,"ax",@progbits
	.align	1
	.type	find_jpeg_soi, @function
find_jpeg_soi:
.LFB134:
	.loc 1 858 1 is_stmt 1
	.cfi_startproc
.LVL56:
	.loc 1 859 5
	.loc 1 859 14 is_stmt 0
	li	a5,1
	bleu	a1,a5,.L63
.LBB44:
.LBB45:
	.loc 1 862 19
	li	a5,0
	.loc 1 863 16
	addi	a3,a0,-1
	.loc 1 863 12
	li	a2,255
	.loc 1 863 29
	li	a6,216
.L64:
.LVL57:
	.loc 1 862 26 is_stmt 1
	mv	a4,a5
	.loc 1 862 28 is_stmt 0
	addi	a5,a5,1
.LVL58:
	.loc 1 862 5
	bne	a1,a5,.L62
.LVL59:
.L63:
.LBE45:
.LBE44:
	.loc 1 860 16
	li	a0,-1
.LVL60:
	.loc 1 868 1
	ret
.LVL61:
.L62:
.LBB47:
.LBB46:
	.loc 1 863 9 is_stmt 1
	.loc 1 863 12 is_stmt 0
	lrbu	a7,a3,a5,0
	bne	a7,a2,.L64
	.loc 1 863 29
	lrbu	a7,a0,a5,0
	bne	a7,a6,.L64
	.loc 1 864 13 is_stmt 1
	.loc 1 864 20 is_stmt 0
	mv	a0,a4
.LVL62:
	ret
.LBE46:
.LBE47:
	.cfi_endproc
.LFE134:
	.size	find_jpeg_soi, .-find_jpeg_soi
	.section	.text.find_jpeg_eoi,"ax",@progbits
	.align	1
	.type	find_jpeg_eoi, @function
find_jpeg_eoi:
.LFB135:
	.loc 1 871 1 is_stmt 1
	.cfi_startproc
.LVL63:
	.loc 1 872 5
	.loc 1 872 8 is_stmt 0
	beq	a0,zero,.L69
	.loc 1 872 14 discriminator 1
	li	a4,1
	.loc 1 873 16 discriminator 1
	li	a5,-1
	.loc 1 872 14 discriminator 1
	bleu	a1,a4,.L65
.LBB52:
.LBB53:
	.loc 1 876 19
	li	a4,0
	.loc 1 877 16
	addi	a3,a0,-1
	.loc 1 877 12
	li	a2,255
	.loc 1 877 29
	li	a6,217
.L71:
.LVL64:
	.loc 1 876 26 is_stmt 1
	mv	a5,a4
	.loc 1 876 28 is_stmt 0
	addi	a4,a4,1
.LVL65:
	.loc 1 876 5
	bne	a1,a4,.L68
.LVL66:
.L69:
.LBE53:
.LBE52:
	.loc 1 873 16
	li	a5,-1
	j	.L65
.LVL67:
.L68:
.LBB55:
.LBB54:
	.loc 1 877 9 is_stmt 1
	.loc 1 877 12 is_stmt 0
	lrbu	a7,a3,a4,0
	bne	a7,a2,.L71
	.loc 1 877 29
	lrbu	a7,a0,a4,0
	bne	a7,a6,.L71
.LVL68:
.L65:
.LBE54:
.LBE55:
	.loc 1 882 1
	mv	a0,a5
.LVL69:
	ret
	.cfi_endproc
.LFE135:
	.size	find_jpeg_eoi, .-find_jpeg_eoi
	.section	.text.reset_iso_packets,"ax",@progbits
	.align	1
	.type	reset_iso_packets, @function
reset_iso_packets:
.LFB138:
	.loc 1 1160 1 is_stmt 1
	.cfi_startproc
.LVL70:
	.loc 1 1161 5
	.loc 1 1161 8 is_stmt 0
	beq	a0,zero,.L85
	.loc 1 1160 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	mv	s0,a0
	mv	a0,a1
.LVL71:
.LBB59:
.LBB60:
	.loc 1 1165 5 is_stmt 1
.LBE60:
.LBE59:
	.loc 1 1160 1 is_stmt 0
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LBB66:
.LBB63:
	.loc 1 1165 15
	call	sanitize_iso_pkt_cap
.LVL72:
	.loc 1 1166 5 is_stmt 1
	.loc 1 1166 14 is_stmt 0
	lw	a5,48(s0)
.LVL73:
	.loc 1 1167 5 is_stmt 1
	.loc 1 1167 8 is_stmt 0
	beq	a5,zero,.L74
	.loc 1 1167 24
	bleu	a5,a0,.L75
.L74:
	.loc 1 1168 9 is_stmt 1
	.loc 1 1168 19 is_stmt 0
	mv	a5,a0
.LVL74:
.L75:
	.loc 1 1171 5 is_stmt 1
.LBB61:
	.loc 1 1171 10
	slli	a5,a5,4
.LVL75:
	mv	a4,s0
	add	a5,a5,s0
.LVL76:
.L76:
	.loc 1 1171 26
	.loc 1 1171 5 is_stmt 0
	bne	a5,a4,.L77
.LBE61:
	.loc 1 1175 5 is_stmt 1
.LBE63:
.LBE66:
	.loc 1 1176 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
.LBB67:
.LBB64:
	.loc 1 1175 29
	sw	a0,48(s0)
.LVL77:
.LBE64:
.LBE67:
	.loc 1 1176 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL78:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL79:
.L77:
	.cfi_restore_state
.LBB68:
.LBB65:
.LBB62:
	.loc 1 1172 9 is_stmt 1
	.loc 1 1172 42 is_stmt 0
	sw	zero,72(a4)
	.loc 1 1173 9 is_stmt 1
	.loc 1 1173 38 is_stmt 0
	sw	zero,76(a4)
	.loc 1 1171 41 is_stmt 1
	addi	a4,a4,16
	j	.L76
.LVL80:
.L85:
	.cfi_def_cfa_offset 0
	.cfi_restore 1
	.cfi_restore 8
	ret
.LBE62:
.LBE65:
.LBE68:
	.cfi_endproc
.LFE138:
	.size	reset_iso_packets, .-reset_iso_packets
	.section	.text.uvc_iso_complete_router,"ax",@progbits
	.align	1
	.globl	uvc_iso_complete_router
	.type	uvc_iso_complete_router, @function
uvc_iso_complete_router:
.LFB142:
	.loc 1 1309 1
	.cfi_startproc
.LVL81:
	.loc 1 1310 5
	.loc 1 1311 5
	.loc 1 1313 5
	.loc 1 1313 8 is_stmt 0
	beq	a0,zero,.L88
	.loc 1 1313 14 discriminator 1
	lui	a5,%hi(.LANCHOR19)
	lbu	a5,%lo(.LANCHOR19)(a5)
	andi	a5,a5,0xff
	bne	a5,zero,.L88
	.loc 1 1313 46 discriminator 2
	lui	a5,%hi(.LANCHOR0)
	lbu	a5,%lo(.LANCHOR0)(a5)
	.loc 1 1313 31 discriminator 2
	li	a4,2
	.loc 1 1313 46 discriminator 2
	andi	a5,a5,0xff
	.loc 1 1313 31 discriminator 2
	bne	a5,a4,.L88
	.loc 1 1317 5 is_stmt 1
.LVL82:
.LBB73:
.LBB74:
	.loc 1 374 5
	.loc 1 374 14 is_stmt 0
	lui	a5,%hi(.LANCHOR20)
	addi	a5,a5,%lo(.LANCHOR20)
	lw	a2,0(a5)
.LVL83:
	.loc 1 375 5 is_stmt 1
	.loc 1 376 14 is_stmt 0
	lui	a3,%hi(.LANCHOR21)
	lw	a3,%lo(.LANCHOR21)(a3)
	.loc 1 375 27
	addi	a4,a2,1
	.loc 1 375 14
	andi	a4,a4,63
.LVL84:
	.loc 1 376 5 is_stmt 1
	.loc 1 376 8 is_stmt 0
	bne	a4,a3,.L90
.LVL85:
.LBE74:
.LBE73:
.LBB76:
.LBB77:
	.loc 1 1322 5 is_stmt 1
	.loc 1 1322 30 is_stmt 0
	lui	a5,%hi(.LANCHOR22)
	addi	a5,a5,%lo(.LANCHOR22)
	lw	a4,0(a5)
	addi	a4,a4,1
	sw	a4,0(a5)
	.loc 1 1323 5 is_stmt 1
	.loc 1 1323 22 is_stmt 0
	lui	a5,%hi(.LANCHOR23)
	li	a4,1
	sb	a4,%lo(.LANCHOR23)(a5)
	.loc 1 1324 5 is_stmt 1
	lui	a5,%hi(.LANCHOR17)
	lbu	a1,%lo(.LANCHOR17)(a5)
.LVL86:
	andi	a1,a1,0xff
	tail	reset_iso_packets
.LVL87:
.L90:
.LBE77:
.LBE76:
.LBB78:
.LBB75:
	.loc 1 379 5
	.loc 1 379 27 is_stmt 0
	lui	a3,%hi(.LANCHOR24)
	addi	a3,a3,%lo(.LANCHOR24)
	srw	a0,a3,a2,2
	.loc 1 380 5 is_stmt 1
	.loc 1 381 5
	.loc 1 381 21 is_stmt 0
	sw	a4,0(a5)
	.loc 1 382 5 is_stmt 1
.LVL88:
.L88:
.LBE75:
.LBE78:
	.loc 1 1325 1 is_stmt 0
	ret
	.cfi_endproc
.LFE142:
	.size	uvc_iso_complete_router, .-uvc_iso_complete_router
	.section	.rodata.cmd_cam_info.str1.4,"aMS",@progbits,1
	.align	2
.LC10:
	.string	"UNKNOWN"
	.align	2
.LC11:
	.string	"Camera state : %s\r\n"
	.align	2
.LC12:
	.string	"  VID/PID    : 0x%04X / 0x%04X\r\n"
	.align	2
.LC13:
	.string	"  Mode       : MJPEG %ux%u @ %ufps\r\n"
	.align	2
.LC14:
	.string	"  Alt-setting: %u\r\n"
	.align	2
.LC15:
	.string	"  ISO IN MPS : %u bytes\r\n"
	.align	2
.LC16:
	.string	"  Frames cap : %llu\r\n"
	.section	.text.cmd_cam_info,"ax",@progbits
	.align	1
	.type	cmd_cam_info, @function
cmd_cam_info:
.LFB166:
	.loc 1 2431 1 is_stmt 1
	.cfi_startproc
.LVL89:
	.loc 1 2432 5
	.loc 1 2432 17
	.loc 1 2434 5
	.loc 1 2431 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 2434 20
	lui	a5,%hi(.LANCHOR0)
	.loc 1 2431 1
	sw	s0,8(sp)
	.cfi_offset 8, -8
	.loc 1 2434 20
	lbu	s0,%lo(.LANCHOR0)(a5)
	.loc 1 2431 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	li	a5,3
	.loc 1 2434 20
	andi	s0,s0,0xff
.LVL90:
	.loc 1 2436 5 is_stmt 1
	.loc 1 2421 5
	bgtu	s0,a5,.L97
	lui	a5,%hi(.LANCHOR25)
	addi	a5,a5,%lo(.LANCHOR25)
	lrw	a1,a5,s0,2
.LVL91:
.L95:
	.loc 1 2436 5 is_stmt 0
	lui	a0,%hi(.LC11)
.LVL92:
	addi	a0,a0,%lo(.LC11)
	call	printf
.LVL93:
	.loc 1 2437 5 is_stmt 1
	.loc 1 2437 8 is_stmt 0
	beq	s0,zero,.L96
.LVL94:
.LBB83:
.LBB84:
	.loc 1 2438 9 is_stmt 1
	.loc 1 2438 80 is_stmt 0
	lui	s0,%hi(.LANCHOR26)
.LVL95:
	addi	s0,s0,%lo(.LANCHOR26)
	.loc 1 2438 9
	lhu	a2,2(s0)
	lhu	a1,0(s0)
	lui	a0,%hi(.LC12)
	addi	a0,a0,%lo(.LC12)
	call	printf
.LVL96:
	.loc 1 2439 9 is_stmt 1
	lbu	a3,10(s0)
	lhu	a2,6(s0)
	lhu	a1,4(s0)
	lui	a0,%hi(.LC13)
	addi	a0,a0,%lo(.LC13)
	call	printf
.LVL97:
	.loc 1 2441 9
	lbu	a1,9(s0)
	lui	a0,%hi(.LC14)
	addi	a0,a0,%lo(.LC14)
	call	printf
.LVL98:
	.loc 1 2442 9
	lhu	a1,12(s0)
	lui	a0,%hi(.LC15)
	addi	a0,a0,%lo(.LC15)
	call	printf
.LVL99:
	.loc 1 2443 9
	lui	a5,%hi(.LANCHOR27)
	lw	a2,%lo(.LANCHOR27)(a5)
	lw	a3,%lo(.LANCHOR27+4)(a5)
	lui	a0,%hi(.LC16)
	addi	a0,a0,%lo(.LC16)
	call	printf
.LVL100:
.L96:
.LBE84:
.LBE83:
	.loc 1 2445 5
	.loc 1 2446 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL101:
.L97:
	.cfi_restore_state
	.loc 1 2434 20
	lui	a1,%hi(.LC10)
.LVL102:
	addi	a1,a1,%lo(.LC10)
	j	.L95
	.cfi_endproc
.LFE166:
	.size	cmd_cam_info, .-cmd_cam_info
	.section	.text.altsetting_mps,"ax",@progbits
	.align	1
	.type	altsetting_mps, @function
altsetting_mps:
.LFB126:
	.loc 1 536 1 is_stmt 1
	.cfi_startproc
.LVL103:
	.loc 1 537 5
	.loc 1 537 8 is_stmt 0
	beq	a0,zero,.L104
	.loc 1 537 13 discriminator 1
	lbu	a4,92(a0)
	mv	a5,a0
	.loc 1 538 16 discriminator 1
	li	a0,0
.LVL104:
	.loc 1 537 13 discriminator 1
	bleu	a4,a1,.L107
.LVL105:
.LBB87:
.LBB88:
	.loc 1 540 5 is_stmt 1
	.loc 1 542 5
	.loc 1 540 37 is_stmt 0
	li	a0,37
	mul	a1,a1,a0
.LVL106:
.LBE88:
.LBE87:
	.loc 1 536 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
.LVL107:
	.cfi_offset 1, -4
.LBB91:
.LBB89:
	.loc 1 540 37
	lbu	a3,13(a5)
	li	a4,620
	lw	a0,0(a5)
	addi	a1,a1,73
	mula	a1,a3,a4
	.loc 1 542 12
	add	a0,a0,a1
	call	iso_ep_layout_from_ep
.LVL108:
.LBE89:
.LBE91:
	.loc 1 543 1
	lw	ra,28(sp)
	.cfi_restore 1
.LBB92:
.LBB90:
	.loc 1 542 12
	sw	a0,8(sp)
	sw	a1,12(sp)
	.loc 1 542 37
	lhu	a0,14(sp)
.LVL109:
.LBE90:
.LBE92:
	.loc 1 543 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL110:
.L104:
	.loc 1 538 16
	li	a0,0
.LVL111:
	ret
.LVL112:
.L107:
	.loc 1 543 1
	ret
	.cfi_endproc
.LFE126:
	.size	altsetting_mps, .-altsetting_mps
	.section	.text.stop_streaming,"ax",@progbits
	.align	1
	.type	stop_streaming, @function
stop_streaming:
.LFB147:
	.loc 1 2077 1 is_stmt 1
	.cfi_startproc
	.loc 1 2078 5
	.loc 1 2078 9 is_stmt 0
	lui	a5,%hi(.LANCHOR28)
	.loc 1 2078 8
	lw	a4,%lo(.LANCHOR28)(a5)
	beq	a4,zero,.L121
	.loc 1 2077 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.loc 1 2082 19
	li	a4,1
	.cfi_offset 8, -8
	addi	s0,a5,%lo(.LANCHOR28)
	.loc 1 2082 5 is_stmt 1
	.loc 1 2082 19 is_stmt 0
	lui	a5,%hi(.LANCHOR19)
	.loc 1 2077 1
	sw	s1,4(sp)
	sw	ra,12(sp)
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.loc 1 2082 19
	sb	a4,%lo(.LANCHOR19)(a5)
	.loc 1 2085 5 is_stmt 1
	.loc 1 2085 10
.LVL113:
.LBB96:
.LBB97:
	.loc 1 2085 21
.LBE97:
.LBE96:
	.loc 1 2082 19 is_stmt 0
	li	s1,40
.LVL114:
.L112:
.LBB99:
.LBB98:
	.loc 1 2086 9 is_stmt 1
	li	a0,50
	.loc 1 2085 5 is_stmt 0
	addi	s1,s1,-1
.LVL115:
	.loc 1 2086 9
	call	vTaskDelay
.LVL116:
	.loc 1 2085 46 is_stmt 1
	.loc 1 2085 21
	.loc 1 2085 5 is_stmt 0
	beq	s1,zero,.L110
.LVL117:
	.loc 1 2085 28
	lw	a5,0(s0)
	bne	a5,zero,.L112
.LVL118:
.L110:
.LBE98:
.LBE99:
	.loc 1 2088 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL119:
.L121:
	ret
	.cfi_endproc
.LFE147:
	.size	stop_streaming, .-stop_streaming
	.section	.rodata.rebuild_iso_packet_descriptors.str1.4,"aMS",@progbits,1
	.align	2
.LC17:
	.string	"arm"
	.section	.text.rebuild_iso_packet_descriptors,"ax",@progbits
	.align	1
	.type	rebuild_iso_packet_descriptors, @function
rebuild_iso_packet_descriptors:
.LFB140:
	.loc 1 1194 1 is_stmt 1
	.cfi_startproc
.LVL120:
	.loc 1 1195 5
	.loc 1 1195 8 is_stmt 0
	bne	a0,zero,.L125
.L140:
	.loc 1 1196 15
	li	a0,0
.LVL121:
	.loc 1 1218 1
	ret
.LVL122:
.L127:
	.cfi_def_cfa_offset 48
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.loc 1 1196 15
	li	a0,0
.L126:
	.loc 1 1218 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
	lw	s3,28(sp)
	.cfi_restore 19
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL123:
.L125:
	.loc 1 1195 14 discriminator 1
	beq	a1,zero,.L140
	.loc 1 1194 1 discriminator 2
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s2,32(sp)
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s3,28(sp)
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	mv	s2,a2
	.loc 1 1195 22 discriminator 2
	beq	a2,zero,.L127
	mv	s0,a0
	mv	a0,a3
.LVL124:
	mv	s1,a1
.LVL125:
.LBB103:
.LBB104:
	.loc 1 1199 5 is_stmt 1
	sw	a4,12(sp)
.LVL126:
	.loc 1 1199 15 is_stmt 0
	call	sanitize_iso_pkt_cap
.LVL127:
	.loc 1 1200 10
	lw	a2,12(sp)
	lui	a3,%hi(.LC17)
	.loc 1 1199 15
	mv	s3,a0
.LVL128:
	.loc 1 1200 5 is_stmt 1
	.loc 1 1200 10 is_stmt 0
	mv	a1,a0
	addi	a3,a3,%lo(.LC17)
	mv	a0,s2
.LVL129:
	call	iso_buffer_layout_is_valid
.LVL130:
	.loc 1 1200 8
	beq	a0,zero,.L127
	.loc 1 1205 5 is_stmt 1
.LVL131:
	.loc 1 1206 5
	.loc 1 1205 14 is_stmt 0
	mul	a5,s2,s3
.LVL132:
	.loc 1 1206 26
	sw	s1,24(s0)
	.loc 1 1207 5 is_stmt 1
	.loc 1 1208 29 is_stmt 0
	sw	s3,48(s0)
	mv	a4,s1
.LBB105:
	.loc 1 1209 18
	li	a3,0
.LBE105:
	.loc 1 1207 33
	sw	a5,28(s0)
	.loc 1 1208 5 is_stmt 1
	.loc 1 1209 5
.LBB106:
	.loc 1 1209 10
.LVL133:
	addi	a5,s0,64
.LVL134:
.L128:
	.loc 1 1209 25
	.loc 1 1209 5 is_stmt 0
	beq	s3,a3,.L126
	.loc 1 1210 9 is_stmt 1
	.loc 1 1209 39 is_stmt 0
	addi	a3,a3,1
.LVL135:
	.loc 1 1210 44
	sw	a4,0(a5)
	.loc 1 1212 9 is_stmt 1
	.loc 1 1212 51 is_stmt 0
	sw	s2,4(a5)
	.loc 1 1213 9 is_stmt 1
	.loc 1 1213 42 is_stmt 0
	sw	zero,8(a5)
	.loc 1 1214 9 is_stmt 1
	.loc 1 1214 38 is_stmt 0
	sw	zero,12(a5)
	.loc 1 1209 38 is_stmt 1
	.loc 1 1209 39 is_stmt 0
	andi	a3,a3,0xff
.LVL136:
	add	a4,a4,s2
	addi	a5,a5,16
	j	.L128
.LBE106:
.LBE104:
.LBE103:
	.cfi_endproc
.LFE140:
	.size	rebuild_iso_packet_descriptors, .-rebuild_iso_packet_descriptors
	.section	.text.free_iso_urb_resources.constprop.0,"ax",@progbits
	.align	1
	.type	free_iso_urb_resources.constprop.0, @function
free_iso_urb_resources.constprop.0:
.LFB190:
	.loc 1 1327 13 is_stmt 1
	.cfi_startproc
.LVL137:
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s1,20(sp)
	sw	s2,16(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
.LBB107:
	.loc 1 1332 17 is_stmt 0
	lui	s1,%hi(.LANCHOR2)
	.loc 1 1336 25
	lui	s2,%hi(.LANCHOR3)
.LBE107:
	.loc 1 1327 13
	sw	s0,24(sp)
	sw	s3,12(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.loc 1 1327 13
	mv	s3,a0
	li	s0,0
.LBB108:
	.loc 1 1332 17
	addi	s1,s1,%lo(.LANCHOR2)
	.loc 1 1336 25
	addi	s2,s2,%lo(.LANCHOR3)
.LVL138:
.L144:
	.loc 1 1331 25 is_stmt 1
	.loc 1 1331 5 is_stmt 0
	bne	s3,s0,.L147
.LBE108:
	.loc 1 1341 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL139:
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL140:
.L147:
	.cfi_restore_state
.LBB109:
	.loc 1 1332 9 is_stmt 1
	.loc 1 1332 17 is_stmt 0
	lrw	a0,s1,s0,2
	.loc 1 1332 12
	beq	a0,zero,.L145
	.loc 1 1333 13 is_stmt 1
	call	vPortFree
.LVL141:
	.loc 1 1334 13
	.loc 1 1334 21 is_stmt 0
	srw	zero,s1,s0,2
.L145:
	.loc 1 1336 9 is_stmt 1
	.loc 1 1336 25 is_stmt 0
	lrw	a0,s2,s0,2
	.loc 1 1336 12
	beq	a0,zero,.L146
	.loc 1 1337 13 is_stmt 1
	call	vPortFree
.LVL142:
	.loc 1 1338 13
	.loc 1 1338 29 is_stmt 0
	srw	zero,s2,s0,2
.L146:
	.loc 1 1331 40 is_stmt 1
.LVL143:
	addi	s0,s0,1
.LVL144:
	j	.L144
.LBE109:
	.cfi_endproc
.LFE190:
	.size	free_iso_urb_resources.constprop.0, .-free_iso_urb_resources.constprop.0
	.section	.text.locate_complete_jpeg.constprop.0,"ax",@progbits
	.align	1
	.type	locate_complete_jpeg.constprop.0, @function
locate_complete_jpeg.constprop.0:
.LFB187:
	.loc 1 597 12
	.cfi_startproc
.LVL145:
	.loc 1 600 5
	.loc 1 601 9
	.loc 1 601 22 is_stmt 0
	sw	zero,0(a2)
	.loc 1 603 5 is_stmt 1
	.loc 1 604 9
	.loc 1 604 22 is_stmt 0
	sb	zero,0(a3)
	.loc 1 607 5 is_stmt 1
	.loc 1 607 8 is_stmt 0
	bne	a0,zero,.L156
.L184:
	.loc 1 608 15
	li	a0,0
.LVL146:
	.loc 1 721 1
	ret
.LVL147:
.L156:
	.loc 1 607 14
	li	a5,3
	bleu	a1,a5,.L184
	.loc 1 607 26
	lbu	a4,0(a0)
	li	a5,255
	bne	a4,a5,.L184
	.loc 1 607 45
	lbu	a4,1(a0)
	li	a5,216
	bne	a4,a5,.L184
	.loc 1 597 12
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	sw	s1,8(sp)
	.cfi_offset 8, -4
	.cfi_offset 9, -8
.LBB114:
.LBB115:
	.loc 1 611 14
	li	a5,2
	addi	t3,a0,-1
.LBB116:
	.loc 1 616 12
	li	t4,255
	.loc 1 633 12
	li	t6,216
	.loc 1 638 12
	li	t0,218
	.loc 1 643 12
	li	t2,217
	.loc 1 648 12
	li	s0,7
	.loc 1 648 50
	li	t5,1
	.loc 1 634 36
	lui	s1,%hi(.LANCHOR29)
.L160:
.LVL148:
.LBE116:
	.loc 1 615 11 is_stmt 1
	mv	a4,a5
	.loc 1 615 14 is_stmt 0
	addi	a5,a5,1
.LVL149:
	.loc 1 615 11
	bleu	a1,a5,.L158
.LBB117:
	.loc 1 616 9 is_stmt 1
	.loc 1 616 12 is_stmt 0
	lrbu	a6,t3,a5,0
	bne	a6,t4,.L160
.LVL150:
.L161:
	.loc 1 621 15 is_stmt 1
	bleu	a1,a4,.L158
	.loc 1 621 24 is_stmt 0
	lrbu	a6,a0,a4,0
	addi	a7,a4,1
	beq	a6,t4,.L162
	.loc 1 624 9 is_stmt 1
	.loc 1 628 9
	.loc 1 628 31 is_stmt 0
	mv	a5,a7
.LVL151:
	.loc 1 629 9 is_stmt 1
	.loc 1 629 12 is_stmt 0
	beq	a6,zero,.L160
	.loc 1 633 9 is_stmt 1
	.loc 1 633 12 is_stmt 0
	bne	a6,t6,.L164
	.loc 1 634 13 is_stmt 1
	.loc 1 634 36 is_stmt 0
	addi	a6,s1,%lo(.LANCHOR29)
.LVL152:
	lw	a4,0(a6)
.LVL153:
	addi	a4,a4,1
	sw	a4,0(a6)
	.loc 1 635 13 is_stmt 1
	j	.L160
.LVL154:
.L162:
	.loc 1 622 13
	.loc 1 622 14 is_stmt 0
	mv	a4,a7
.LVL155:
	j	.L161
.LVL156:
.L164:
	.loc 1 638 9 is_stmt 1
	.loc 1 638 12 is_stmt 0
	beq	a6,t0,.L165
	.loc 1 643 9 is_stmt 1
	.loc 1 643 12 is_stmt 0
	beq	a6,t2,.L158
	.loc 1 648 9 is_stmt 1
	.loc 1 648 30 is_stmt 0
	addi	t1,a6,48
	.loc 1 648 12
	andi	t1,t1,0xff
	bleu	t1,s0,.L160
	.loc 1 648 50
	beq	a6,t5,.L160
	.loc 1 652 9 is_stmt 1
	.loc 1 652 15 is_stmt 0
	addi	a4,a4,2
	.loc 1 652 12
	bleu	a1,a4,.L158
	.loc 1 656 9 is_stmt 1
	.loc 1 656 40 is_stmt 0
	lrbu	a5,a0,a7,0
.LVL157:
	.loc 1 656 64
	lrbu	a4,a0,a4,0
	.loc 1 656 57
	slli	a5,a5,8
	.loc 1 656 18
	or	a5,a5,a4
.LVL158:
	.loc 1 657 9 is_stmt 1
	.loc 1 657 12 is_stmt 0
	bleu	a5,t5,.L158
	.loc 1 661 9 is_stmt 1
	.loc 1 661 11 is_stmt 0
	add	a5,a7,a5
.LVL159:
	.loc 1 662 9 is_stmt 1
	.loc 1 662 12 is_stmt 0
	bgeu	a1,a5,.L160
.LVL160:
.L158:
.LBE117:
.LBE115:
.LBE114:
	.loc 1 608 15
	li	a0,0
.LVL161:
.L182:
	.loc 1 721 1
	lw	s0,12(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	s1,8(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL162:
.L169:
	.cfi_restore_state
.LBB122:
.LBB121:
.LBB118:
	.loc 1 686 13 is_stmt 1
	.loc 1 686 14 is_stmt 0
	mv	a4,a6
.LVL163:
	j	.L168
.LVL164:
.L171:
	.loc 1 702 9 is_stmt 1
	.loc 1 702 30 is_stmt 0
	addi	a6,a3,48
	.loc 1 702 12
	andi	a6,a6,0xff
	bleu	a6,t5,.L167
	.loc 1 702 50
	beq	a3,t4,.L167
	.loc 1 707 9 is_stmt 1
	.loc 1 707 15 is_stmt 0
	addi	a4,a4,2
	.loc 1 707 12
	bleu	a1,a4,.L158
	.loc 1 710 9 is_stmt 1
	.loc 1 710 40 is_stmt 0
	lrbu	a3,a0,a5,0
.LVL165:
	.loc 1 710 64
	lrbu	a4,a0,a4,0
.LVL166:
	.loc 1 710 57
	slli	a3,a3,8
	.loc 1 710 18
	or	a4,a3,a4
.LVL167:
	.loc 1 711 9 is_stmt 1
	.loc 1 711 12 is_stmt 0
	bleu	a4,t1,.L158
	.loc 1 714 9 is_stmt 1
	.loc 1 714 11 is_stmt 0
	add	a5,a5,a4
.LVL168:
	.loc 1 715 9 is_stmt 1
	.loc 1 715 12 is_stmt 0
	bltu	a1,a5,.L158
.LVL169:
.L167:
.LBE118:
	.loc 1 679 11 is_stmt 1
	mv	a4,a5
	.loc 1 679 14 is_stmt 0
	addi	a5,a5,1
.LVL170:
	.loc 1 679 11
	bleu	a1,a5,.L158
.LBB119:
	.loc 1 680 9 is_stmt 1
	.loc 1 680 12 is_stmt 0
	lrbu	a3,t3,a5,0
	bne	a3,a7,.L167
.LVL171:
.L168:
	.loc 1 685 15 is_stmt 1
	bleu	a1,a4,.L158
	.loc 1 685 24 is_stmt 0
	lrbu	a3,a0,a4,0
	addi	a6,a4,1
	beq	a3,a7,.L169
	.loc 1 688 9 is_stmt 1
	.loc 1 692 9
	.loc 1 692 31 is_stmt 0
	mv	a5,a6
.LVL172:
	.loc 1 693 9 is_stmt 1
	.loc 1 693 12 is_stmt 0
	beq	a3,zero,.L167
	.loc 1 696 9 is_stmt 1
	.loc 1 696 12 is_stmt 0
	bne	a3,t6,.L171
	.loc 1 697 13 is_stmt 1
	.loc 1 698 17
	.loc 1 698 30 is_stmt 0
	sw	a6,0(a2)
	.loc 1 700 19
	li	a0,1
.LVL173:
	j	.L182
.LVL174:
.L165:
.LBE119:
	.loc 1 667 5 is_stmt 1
	.loc 1 674 5
	.loc 1 675 9
	.loc 1 675 22 is_stmt 0
	li	a4,1
	sb	a4,0(a3)
.LBB120:
	.loc 1 680 12
	li	a7,255
	.loc 1 696 12
	li	t6,217
	.loc 1 702 12
	li	t5,7
	.loc 1 702 50
	li	t4,218
	.loc 1 711 12
	li	t1,1
	j	.L167
.LBE120:
.LBE121:
.LBE122:
	.cfi_endproc
.LFE187:
	.size	locate_complete_jpeg.constprop.0, .-locate_complete_jpeg.constprop.0
	.section	.rodata.finalize_current_frame.str1.4,"aMS",@progbits,1
	.align	2
.LC18:
	.string	"\033[0;33m[W][UVC] [UVC] Drop invalid JPEG len=%u head=%02X%02X tail=%02X%02X (drops=%u)\r\n"
	.section	.text.finalize_current_frame,"ax",@progbits
	.align	1
	.type	finalize_current_frame, @function
finalize_current_frame:
.LFB133:
	.loc 1 795 1 is_stmt 1
	.cfi_startproc
.LVL175:
	.loc 1 796 5
	.loc 1 795 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s2,32(sp)
	.cfi_offset 18, -16
	.loc 1 796 9
	lui	s2,%hi(.LANCHOR8)
	.loc 1 796 8
	lbu	a5,%lo(.LANCHOR8)(s2)
	.loc 1 795 1
	sw	s1,36(sp)
	sw	ra,44(sp)
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	lui	s1,%hi(.LANCHOR10)
	sw	s0,40(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	.cfi_offset 8, -8
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	addi	s2,s2,%lo(.LANCHOR8)
	addi	s1,s1,%lo(.LANCHOR10)
	.loc 1 796 8
	beq	a5,zero,.L188
	.loc 1 796 42 discriminator 1
	lui	s3,%hi(.LANCHOR9)
	addi	a5,s3,%lo(.LANCHOR9)
	lw	a1,4(a5)
	addi	s0,s3,%lo(.LANCHOR9)
	.loc 1 796 28 discriminator 1
	bne	a1,zero,.L189
.L188:
	.loc 1 797 9 is_stmt 1
	.loc 1 799 29 is_stmt 0
	lui	a5,%hi(.LANCHOR11)
	sb	zero,%lo(.LANCHOR11)(a5)
	.loc 1 800 29
	lui	a5,%hi(.LANCHOR12)
	.loc 1 797 27
	sb	zero,0(s2)
	.loc 1 798 9 is_stmt 1
	.loc 1 798 30 is_stmt 0
	sb	zero,0(s1)
	.loc 1 799 9 is_stmt 1
	.loc 1 800 9
	.loc 1 800 29 is_stmt 0
	sb	zero,%lo(.LANCHOR12)(a5)
	.loc 1 801 9 is_stmt 1
.LVL176:
.L187:
	.loc 1 855 1 is_stmt 0
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
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL177:
.L189:
	.cfi_restore_state
	.loc 1 804 5 is_stmt 1
	.loc 1 804 8 is_stmt 0
	beq	a0,zero,.L191
	.loc 1 805 9 is_stmt 1
	.loc 1 805 24 is_stmt 0
	lui	a5,%hi(.LANCHOR30)
	addi	a5,a5,%lo(.LANCHOR30)
	lw	a4,0(a5)
	addi	a4,a4,1
	sw	a4,0(a5)
.L191:
	.loc 1 808 5 is_stmt 1
	.loc 1 808 8 is_stmt 0
	lbu	a5,0(s1)
	beq	a5,zero,.L192
.LVL178:
.L216:
.LBB128:
.LBB129:
	.loc 1 821 9 is_stmt 1
.LBE129:
.LBE128:
	.loc 1 855 1 is_stmt 0
	lw	s0,40(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	ra,44(sp)
	.cfi_restore 1
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
.LBB138:
.LBB136:
	.loc 1 821 9
	li	a0,1
.LBE136:
.LBE138:
	.loc 1 855 1
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
.LBB139:
.LBB137:
	.loc 1 821 9
	tail	drop_current_assembly
.LVL179:
.L192:
	.cfi_restore_state
	.loc 1 813 5 is_stmt 1
	.loc 1 813 9 is_stmt 0
	lui	s5,%hi(.LANCHOR11)
	.loc 1 813 8
	lbu	a5,%lo(.LANCHOR11)(s5)
	addi	s5,s5,%lo(.LANCHOR11)
	beq	a5,zero,.L193
.L217:
	.loc 1 820 9 is_stmt 1
	.loc 1 820 34 is_stmt 0
	lui	a5,%hi(.LANCHOR31)
	addi	a5,a5,%lo(.LANCHOR31)
	lw	a4,0(a5)
	addi	a4,a4,1
	sw	a4,0(a5)
	j	.L216
.L193:
	.loc 1 819 5 is_stmt 1
	.loc 1 819 32 is_stmt 0
	lui	s4,%hi(.LANCHOR13)
	.loc 1 819 8
	lhu	a5,%lo(.LANCHOR13)(s4)
	addi	s4,s4,%lo(.LANCHOR13)
	bne	a5,zero,.L217
	.loc 1 825 5 is_stmt 1
.LVL180:
.LBB130:
.LBB131:
	.loc 1 725 5
	.loc 1 725 25 is_stmt 0
	lw	a0,0(s0)
.LVL181:
	.loc 1 725 16
	beq	a0,zero,.L198
	.loc 1 725 32
	li	a5,3
	bleu	a1,a5,.L198
	.loc 1 730 5 is_stmt 1
	.loc 1 730 8 is_stmt 0
	lbu	a4,0(a0)
	li	a5,255
	bne	a4,a5,.L198
	.loc 1 730 33
	lbu	a4,1(a0)
	li	a5,216
	bne	a4,a5,.L198
	.loc 1 734 5 is_stmt 1
	.loc 1 736 10 is_stmt 0
	addi	a3,sp,11
	addi	a2,sp,12
	.loc 1 734 14
	sw	zero,12(sp)
	.loc 1 735 4 is_stmt 1
	.loc 1 735 9 is_stmt 0
	sb	zero,11(sp)
	.loc 1 736 5 is_stmt 1
	.loc 1 736 10 is_stmt 0
	call	locate_complete_jpeg.constprop.0
.LVL182:
	lbu	a5,11(sp)
	.loc 1 736 8
	bne	a0,zero,.L196
	.loc 1 737 9 is_stmt 1
	.loc 1 737 12 is_stmt 0
	bne	a5,zero,.L197
.L218:
	.loc 1 746 9 is_stmt 1
	.loc 1 746 28 is_stmt 0
	lui	a5,%hi(.LANCHOR32)
	addi	a5,a5,%lo(.LANCHOR32)
	j	.L215
.L197:
	.loc 1 740 13 is_stmt 1
	.loc 1 740 32 is_stmt 0
	lui	a5,%hi(.LANCHOR33)
	addi	a5,a5,%lo(.LANCHOR33)
.L215:
	lw	a4,0(a5)
	addi	a4,a4,1
	sw	a4,0(a5)
.LVL183:
.L198:
.LBE131:
.LBE130:
	.loc 1 826 9 is_stmt 1
	.loc 1 826 34 is_stmt 0
	lui	a5,%hi(.LANCHOR31)
	addi	a4,a5,%lo(.LANCHOR31)
	lw	a3,0(a4)
	.loc 1 827 31
	lui	a2,%hi(.LANCHOR14)
	addi	a0,a5,%lo(.LANCHOR31)
	.loc 1 826 34
	addi	a3,a3,1
	sw	a3,0(a4)
	.loc 1 827 9 is_stmt 1
	.loc 1 829 40 is_stmt 0
	lw	a4,0(a4)
	.loc 1 827 31
	li	a3,1
	sb	a3,%lo(.LANCHOR14)(a2)
	.loc 1 828 9 is_stmt 1
	.loc 1 828 31 is_stmt 0
	lui	a2,%hi(.LANCHOR15)
	sb	zero,%lo(.LANCHOR15)(a2)
	.loc 1 829 9 is_stmt 1
	.loc 1 829 40 is_stmt 0
	andi	a4,a4,63
	.loc 1 829 12
	bne	a4,a3,.L216
.LBB133:
	.loc 1 830 13 is_stmt 1
.LVL184:
	.loc 1 831 13
	.loc 1 831 28 is_stmt 0
	lw	a1,4(s0)
	.loc 1 831 16
	bleu	a1,a4,.L204
	.loc 1 832 17 is_stmt 1
	.loc 1 832 33 is_stmt 0
	lw	a5,0(s0)
	.loc 1 832 20
	lbu	a2,0(a5)
.LVL185:
	.loc 1 833 17 is_stmt 1
	.loc 1 833 20 is_stmt 0
	lbu	a3,1(a5)
.LVL186:
	.loc 1 834 17 is_stmt 1
	.loc 1 834 20 is_stmt 0
	add	a5,a5,a1
	lbu	a4,-2(a5)
.LVL187:
	.loc 1 835 17 is_stmt 1
	.loc 1 835 20 is_stmt 0
	lbu	a5,-1(a5)
.LVL188:
.L203:
	.loc 1 837 13 is_stmt 1
	lw	a6,0(a0)
	lui	a0,%hi(.LC18)
	addi	a0,a0,%lo(.LC18)
	call	printf
.LVL189:
	j	.L216
.LVL190:
.L196:
.LBE133:
.LBB134:
.LBB132:
	.loc 1 745 5
	.loc 1 745 8 is_stmt 0
	beq	a5,zero,.L218
	.loc 1 750 5 is_stmt 1
	.loc 1 750 14 is_stmt 0
	lw	a4,12(sp)
.LVL191:
	.loc 1 751 5 is_stmt 1
	.loc 1 751 8 is_stmt 0
	li	a5,327680
	.loc 1 751 23
	addi	a3,a4,-1
	.loc 1 751 8
	bgeu	a3,a5,.L198
	.loc 1 755 5 is_stmt 1
	.loc 1 755 8 is_stmt 0
	lw	a5,4(s0)
	beq	a4,a5,.L201
	.loc 1 758 9 is_stmt 1
	.loc 1 758 37 is_stmt 0
	lui	a5,%hi(.LANCHOR34)
	addi	a5,a5,%lo(.LANCHOR34)
	lw	a3,0(a5)
	.loc 1 760 20
	sw	a4,4(s0)
	.loc 1 758 37
	addi	a3,a3,1
	sw	a3,0(a5)
	.loc 1 759 9 is_stmt 1
	.loc 1 759 26 is_stmt 0
	lui	a5,%hi(.LANCHOR35)
	addi	a5,a5,%lo(.LANCHOR35)
	lw	a3,0(a5)
	addi	a3,a3,1
	sw	a3,0(a5)
	.loc 1 760 9 is_stmt 1
.LVL192:
.L201:
.LBE132:
.LBE134:
	.loc 1 845 5
	.loc 1 846 20 is_stmt 0
	call	xTaskGetTickCount
.LVL193:
	.loc 1 845 30
	sw	a0,8(s0)
	.loc 1 847 5 is_stmt 1
	addi	a0,s3,%lo(.LANCHOR9)
	call	frame_queue_push
.LVL194:
	.loc 1 848 5
	.loc 1 848 22 is_stmt 0
	lui	a5,%hi(.LANCHOR27)
	addi	a5,a5,%lo(.LANCHOR27)
	lw	a2,0(a5)
	lw	a3,4(a5)
	li	a0,1
	li	a1,0
	add64	a2,a2,a0
	sw	a2,0(a5)
	sw	a3,4(a5)
	.loc 1 849 5 is_stmt 1
	.loc 1 849 28 is_stmt 0
	lui	a5,%hi(.LANCHOR36)
	sw	zero,%lo(.LANCHOR36)(a5)
	.loc 1 850 5 is_stmt 1
	.loc 1 853 25 is_stmt 0
	lui	a5,%hi(.LANCHOR12)
	.loc 1 850 23
	sb	zero,0(s2)
	.loc 1 851 5 is_stmt 1
	.loc 1 851 26 is_stmt 0
	sb	zero,0(s1)
	.loc 1 852 5 is_stmt 1
	.loc 1 852 25 is_stmt 0
	sb	zero,0(s5)
	.loc 1 853 5 is_stmt 1
	.loc 1 853 25 is_stmt 0
	sb	zero,%lo(.LANCHOR12)(a5)
	.loc 1 854 5 is_stmt 1
	.loc 1 854 28 is_stmt 0
	sh	zero,0(s4)
	j	.L187
.LVL195:
.L204:
.LBB135:
	.loc 1 830 45
	li	a5,0
	.loc 1 830 37
	li	a4,0
	.loc 1 830 29
	li	a3,0
	.loc 1 830 21
	li	a2,0
	j	.L203
.LBE135:
.LBE137:
.LBE139:
	.cfi_endproc
.LFE133:
	.size	finalize_current_frame, .-finalize_current_frame
	.section	.rodata.streaming_task.str1.4,"aMS",@progbits,1
	.align	2
.LC19:
	.string	"tail"
	.align	2
.LC20:
	.string	"head"
	.align	2
.LC21:
	.string	"client active"
	.align	2
.LC22:
	.string	"idle"
	.align	2
.LC23:
	.string	"\033[0;31m[E][UVC] [UVC] No ISO IN endpoint \342\200\224 cannot stream\r\n"
	.align	2
.LC24:
	.string	"\033[0m[I][UVC] [UVC] Starting ISO streaming, bytes_per_packet=%u (SRAM free=%u)\r\n"
	.align	2
.LC25:
	.string	"\033[0;31m[E][UVC] [UVC] Frame pool init failed\r\n"
	.align	2
.LC26:
	.string	"\033[0;33m[W][UVC] [UVC] Skip ISO profile %d URBs x %u pkts (need=%u, free=%u, margin=%u)\r\n"
	.align	2
.LC27:
	.string	"\033[0m[I][UVC] [UVC] ISO profile: %u URBs x %u pkts/URB (buf=%u each, total=%u)\r\n"
	.align	2
.LC28:
	.string	"start"
	.align	2
.LC29:
	.string	"\033[0m[I][UVC] [UVC] ISO %s altsetting=%u wMaxPacketSize_raw=0x%04X mps=%u transactions=%u bytes_per_packet=%u urb_packets=%u urb_buf_bytes=%u backing=%u\r\n"
	.align	2
.LC30:
	.string	"\033[0;31m[E][UVC] [UVC] Initial ISO descriptor build failed (slot=%d)\r\n"
	.align	2
.LC31:
	.string	"\033[0;31m[E][UVC] [UVC] Initial ISO submit %d failed: %d\r\n"
	.align	2
.LC32:
	.string	"\033[0m[I][UVC] [UVC] Camera streaming - MJPEG %ux%u\r\n"
	.align	2
.LC33:
	.string	"\033[0;31m[E][UVC] [UVC] Invalid active URB count=%u\r\n"
	.align	2
.LC34:
	.string	"\033[0;31m[E][UVC] [UVC] Deferred ISO descriptor build failed (slot=%u)\r\n"
	.align	2
.LC35:
	.string	"\033[0;31m[E][UVC] [UVC] Deferred ISO resubmit failed: %d (slot=%u)\r\n"
	.align	2
.LC36:
	.string	"\033[0;33m[W][UVC] [UVC] Drop unknown URB pointer %p\r\n"
	.align	2
.LC37:
	.string	"\033[0;31m[E][UVC] [UVC] ISO guard corruption slot=%d side=%s off=%u urb=%p raw=%p data=%p alloc=%u active=%u\r\n"
	.align	2
.LC38:
	.string	"\033[0;33m[W][UVC] [UVC] Invalid URB buffer range\r\n"
	.align	2
.LC39:
	.string	"\033[0;33m[W][UVC] [UVC] Clamp invalid URB pkt count %u -> %u\r\n"
	.align	2
.LC40:
	.string	"\033[0;33m[W][UVC] [UVC] Repaired ISO desc slot=%u pkt=%u ptr=%p len=%u\r\n"
	.align	2
.LC41:
	.string	"\033[0;33m[W][UVC] [UVC] ISO pkt len clamp: %u -> %u\r\n"
	.align	2
.LC42:
	.string	"\033[0;33m[W][UVC] [UVC] Drop pkt out of URB range idx=%u ptr=%p len=%u\r\n"
	.align	2
.LC43:
	.string	"\033[0;33m[W][UVC] [UVC] Reclaimed %u queued frames to sustain capture\r\n"
	.align	2
.LC44:
	.string	"\033[0;31m[E][UVC] [UVC] ISO descriptor rebuild failed (slot=%d)\r\n"
	.align	2
.LC45:
	.string	"\033[0;31m[E][UVC] [UVC] ISO resubmit failed: %d\r\n"
	.align	2
.LC46:
	.string	"\033[0;33m[W][UVC] [UVC] Stall detected - no URB progress for %d ms (%s)\r\n"
	.align	2
.LC47:
	.string	"\033[0;33m[W][UVC] [UVC] No complete frame for %u ms with active URBs (%s) - parser resync #%u\r\n"
	.align	2
.LC48:
	.string	"\033[0;33m[W][UVC] [UVC] Parser resync escalated (%u consecutive) - forcing transport restart\r\n"
	.align	2
.LC49:
	.string	"\033[0m[I][UVC] [UVC] Stop requested while stalled - skip restart\r\n"
	.align	2
.LC50:
	.string	"\033[0;33m[W][UVC] [UVC] Stall context: pool q=%u free=%u/%u\r\n"
	.align	2
.LC51:
	.string	"\033[0;33m[W][UVC] [UVC] Stall context: ring=%u pending=%u busy_retry=%u\r\n"
	.align	2
.LC52:
	.string	"\033[0;31m[E][UVC] [UVC] Transport stalls exceeded %u restarts - capture stopped (camera remains attached)\r\n"
	.align	2
.LC53:
	.string	"\033[0;33m[W][UVC] [UVC] Attempting stream restart after stall (%u/%u)\r\n"
	.align	2
.LC54:
	.string	"\033[0;33m[W][UVC] [UVC] Skip invalid URB slot %d ptr=%p during restart kill\r\n"
	.align	2
.LC55:
	.string	"\033[0;33m[W][UVC] [UVC] usbh_kill_urb(%d) failed: %d\r\n"
	.align	2
.LC56:
	.string	"\033[0;33m[W][UVC] [UVC] Downshifting altsetting %u(%u) -> %u(%u) for restart stability\r\n"
	.align	2
.LC57:
	.string	"\033[0;31m[E][UVC] [UVC] Restart reopen failed: %d\r\n"
	.align	2
.LC58:
	.string	"\033[0;31m[E][UVC] [UVC] Restart stride expanded (%u->%u), buffer too small\r\n"
	.align	2
.LC59:
	.string	"restart"
	.align	2
.LC60:
	.string	"\033[0;31m[E][UVC] [UVC] Restart ISO descriptor build failed (slot=%d)\r\n"
	.align	2
.LC61:
	.string	"\033[0;31m[E][UVC] [UVC] Restart submit %d failed: %d\r\n"
	.align	2
.LC62:
	.string	"\033[0m[I][UVC] [UVC] Stream restarted successfully\r\n"
	.align	2
.LC63:
	.ascii	"\033[0m[I][UVC] [UVCDBG] urb_done=%u ring=%u cb_drop=%u unkn"
	.ascii	"own=%u guard=%u pkt_cnt_clamp=%u pkt_len_clamp=%u pkt_range_"
	.ascii	"drop=%u desc_repair=%u invalid_urb=%u busy_retry=%u pkt_err="
	.ascii	"%u sync_reset=%u s"
	.string	"ync_streak=%u sync_escalate=%u restarts=%u hdr_short=%u hdr_inv=%u hdr_err=%u fid_tgl=%u fid_drop=%u fid_keep=%u eof=%u soi_resync=%u tail_ff=%u pkt=%u bytes=%llu oversize_drop=%u jpeg_bad=%u jpeg_trim=%u nosos=%u noeoi=%u nest_soi=%u trail=%u tainted=%u\r\n"
	.align	2
.LC64:
	.string	"\033[0m[I][UVC] [UVC] Streaming task stopped (frames captured: %llu)\r\n"
	.align	2
.LC65:
	.string	"\033[0;33m[W][UVC] [UVC] ISO alloc failed for %d URBs x %u pkts (buf=%u, SRAM free=%u) - retrying\r\n"
	.align	2
.LC66:
	.string	"\033[0;31m[E][UVC] [UVC] Unable to allocate ISO resources (bytes_per_packet=%u, SRAM free=%u)\r\n"
	.section	.text.streaming_task,"ax",@progbits
	.align	1
	.type	streaming_task, @function
streaming_task:
.LFB145:
	.loc 1 1361 1 is_stmt 1
	.cfi_startproc
.LVL196:
	.loc 1 1362 5
	.loc 1 1364 5
	.loc 1 1361 1 is_stmt 0
	addi	sp,sp,-576
	.cfi_def_cfa_offset 576
	.loc 1 1364 24
	lui	a5,%hi(.LANCHOR37)
	.loc 1 1361 1
	sw	s11,524(sp)
	.cfi_offset 27, -52
	.loc 1 1364 24
	lw	s11,%lo(.LANCHOR37)(a5)
.LVL197:
	.loc 1 1365 5 is_stmt 1
	.loc 1 1361 1 is_stmt 0
	sw	ra,572(sp)
	sw	s0,568(sp)
	sw	s1,564(sp)
	sw	s2,560(sp)
	sw	s3,556(sp)
	sw	s4,552(sp)
	sw	s5,548(sp)
	sw	s6,544(sp)
	sw	s7,540(sp)
	sw	s8,536(sp)
	sw	s9,532(sp)
	sw	s10,528(sp)
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
	.loc 1 1365 8
	beq	s11,zero,.L220
	.loc 1 1365 19 discriminator 1
	lw	s10,4(s11)
	.loc 1 1365 13 discriminator 1
	bne	s10,zero,.L221
.L220:
	.loc 1 1366 9 is_stmt 1
	lui	a0,%hi(.LC23)
.LVL198:
	addi	a0,a0,%lo(.LC23)
.L624:
	.loc 1 1442 9 is_stmt 0
	call	printf
.LVL199:
	.loc 1 1443 9 is_stmt 1
.L622:
	.loc 1 1523 9
	li	a0,3
	call	set_cam_state
.LVL200:
	j	.L623
.LVL201:
.L221:
	.loc 1 1372 5
	.loc 1 1372 26 is_stmt 0
	lw	a5,0(s11)
	.loc 1 1375 34
	mv	a0,s10
.LVL202:
	.loc 1 1372 26
	sw	a5,172(sp)
.LVL203:
	.loc 1 1373 5 is_stmt 1
	.loc 1 1375 5
	.loc 1 1375 34 is_stmt 0
	call	iso_ep_layout_from_ep
.LVL204:
	extu	a5,a0,15,0
	sw	a1,508(sp)
	sw	a5,176(sp)
.LVL205:
	srli	a5,a0,16
	sw	a5,160(sp)
.LVL206:
	lbu	a5,508(sp)
	lhu	s9,510(sp)
	sw	a0,504(sp)
	sw	a5,140(sp)
.LVL207:
	.loc 1 1376 5 is_stmt 1
	.loc 1 1377 5
	.loc 1 1377 8 is_stmt 0
	bne	s9,zero,.L222
	.loc 1 1378 9 is_stmt 1
	.loc 1 1378 30 is_stmt 0
	lhu	s9,84(s11)
.LVL208:
	.loc 1 1378 26
	bne	s9,zero,.L223
	li	s9,512
.L223:
.LVL209:
	.loc 1 1379 9 is_stmt 1 discriminator 4
	.loc 1 1379 40 is_stmt 0 discriminator 4
	lbu	a5,5(s10)
	lbu	a4,4(s10)
	.loc 1 1380 24 discriminator 4
	sw	s9,160(sp)
.LVL210:
	.loc 1 1379 40 discriminator 4
	slli	a5,a5,8
	or	a5,a5,a4
	sw	a5,176(sp)
.LVL211:
	.loc 1 1380 9 is_stmt 1 discriminator 4
	.loc 1 1381 9 discriminator 4
	.loc 1 1382 9 discriminator 4
	.loc 1 1381 33 is_stmt 0 discriminator 4
	li	a5,1
	sw	a5,140(sp)
.LVL212:
.L222:
	.loc 1 1385 5 is_stmt 1
	.loc 1 1385 147 is_stmt 0
	call	kfree_size
.LVL213:
	mv	a2,a0
	.loc 1 1385 5
	lui	a0,%hi(.LC24)
	mv	a1,s9
	addi	a0,a0,%lo(.LC24)
	call	printf
.LVL214:
	.loc 1 1389 5 is_stmt 1
	.loc 1 1390 5
	.loc 1 1391 5
	.loc 1 1392 5
	.loc 1 1392 28 is_stmt 0
	lui	a5,%hi(.LANCHOR13)
	sh	zero,%lo(.LANCHOR13)(a5)
	.loc 1 1393 5 is_stmt 1
	.loc 1 1394 5
	.loc 1 1396 31 is_stmt 0
	lui	t3,%hi(.LANCHOR39)
	.loc 1 1394 23
	lui	a5,%hi(.LANCHOR38)
	sb	zero,%lo(.LANCHOR38)(a5)
	.loc 1 1395 5 is_stmt 1
	.loc 1 1396 5
	.loc 1 1395 27 is_stmt 0
	lui	t4,%hi(.LANCHOR15)
	.loc 1 1396 31
	addi	a5,t3,%lo(.LANCHOR39)
	li	t3,0
	sw	t3,0(a5)
	.loc 1 1395 27
	sb	zero,%lo(.LANCHOR15)(t4)
	.loc 1 1397 22
	lui	t1,%hi(.LANCHOR23)
	.loc 1 1396 31
	li	t4,0
	sw	t4,4(a5)
	.loc 1 1397 5 is_stmt 1
	.loc 1 1398 31 is_stmt 0
	lui	a7,%hi(.LANCHOR22)
	.loc 1 1397 22
	addi	a5,t1,%lo(.LANCHOR23)
	sb	zero,0(a5)
	.loc 1 1398 5 is_stmt 1
	.loc 1 1399 31 is_stmt 0
	lui	a6,%hi(.LANCHOR17)
	.loc 1 1398 31
	addi	a5,a7,%lo(.LANCHOR22)
	sw	zero,0(a5)
	.loc 1 1399 5 is_stmt 1
	.loc 1 1400 28 is_stmt 0
	lui	a1,%hi(.LANCHOR40)
	.loc 1 1399 31
	addi	a5,a6,%lo(.LANCHOR17)
	sb	zero,0(a5)
	.loc 1 1400 5 is_stmt 1
	.loc 1 1400 28 is_stmt 0
	addi	a5,a1,%lo(.LANCHOR40)
	sb	zero,0(a5)
	.loc 1 1401 5 is_stmt 1
	.loc 1 1402 26 is_stmt 0
	lui	a2,%hi(.LANCHOR42)
	.loc 1 1401 27
	lui	a5,%hi(.LANCHOR41)
	sw	zero,%lo(.LANCHOR41)(a5)
	.loc 1 1402 5 is_stmt 1
	.loc 1 1403 25 is_stmt 0
	lui	a3,%hi(.LANCHOR43)
	.loc 1 1402 26
	addi	a5,a2,%lo(.LANCHOR42)
	sw	zero,0(a5)
	.loc 1 1403 5 is_stmt 1
	.loc 1 1404 29 is_stmt 0
	lui	a4,%hi(.LANCHOR44)
	.loc 1 1403 25
	addi	a5,a3,%lo(.LANCHOR43)
	sw	zero,0(a5)
	.loc 1 1404 5 is_stmt 1
	.loc 1 1404 29 is_stmt 0
	addi	a5,a4,%lo(.LANCHOR44)
	sw	zero,0(a5)
	.loc 1 1405 5 is_stmt 1
	.loc 1 1405 27 is_stmt 0
	lui	a5,%hi(.LANCHOR45)
	addi	a0,a5,%lo(.LANCHOR45)
	.loc 1 1406 28
	lui	a5,%hi(.LANCHOR46)
	.loc 1 1405 27
	sw	zero,0(a0)
	.loc 1 1406 5 is_stmt 1
	.loc 1 1407 29 is_stmt 0
	lui	a4,%hi(.LANCHOR47)
	.loc 1 1406 28
	addi	a0,a5,%lo(.LANCHOR46)
	sw	zero,0(a0)
	.loc 1 1407 5 is_stmt 1
	.loc 1 1408 25 is_stmt 0
	lui	a3,%hi(.LANCHOR48)
	.loc 1 1407 29
	addi	a0,a4,%lo(.LANCHOR47)
	sw	zero,0(a0)
	.loc 1 1408 5 is_stmt 1
	.loc 1 1409 29 is_stmt 0
	lui	s8,%hi(.LANCHOR49)
	.loc 1 1408 25
	addi	a0,a3,%lo(.LANCHOR48)
	sw	zero,0(a0)
	.loc 1 1409 5 is_stmt 1
	.loc 1 1410 23 is_stmt 0
	lui	s7,%hi(.LANCHOR50)
	.loc 1 1409 29
	addi	a0,s8,%lo(.LANCHOR49)
	sw	zero,0(a0)
	.loc 1 1410 5 is_stmt 1
	.loc 1 1411 25 is_stmt 0
	lui	s6,%hi(.LANCHOR51)
	.loc 1 1410 23
	addi	a0,s7,%lo(.LANCHOR50)
	sw	zero,0(a0)
	.loc 1 1411 5 is_stmt 1
	.loc 1 1412 27 is_stmt 0
	lui	s5,%hi(.LANCHOR52)
	.loc 1 1411 25
	addi	a0,s6,%lo(.LANCHOR51)
	sw	zero,0(a0)
	.loc 1 1412 5 is_stmt 1
	.loc 1 1413 21 is_stmt 0
	lui	s4,%hi(.LANCHOR30)
	.loc 1 1412 27
	addi	a0,s5,%lo(.LANCHOR52)
	sw	zero,0(a0)
	.loc 1 1413 5 is_stmt 1
	.loc 1 1414 28 is_stmt 0
	lui	s3,%hi(.LANCHOR53)
	.loc 1 1413 21
	addi	a0,s4,%lo(.LANCHOR30)
	sw	zero,0(a0)
	.loc 1 1414 5 is_stmt 1
	.loc 1 1415 25 is_stmt 0
	lui	s2,%hi(.LANCHOR54)
	.loc 1 1414 28
	addi	a0,s3,%lo(.LANCHOR53)
	sw	zero,0(a0)
	.loc 1 1415 5 is_stmt 1
	.loc 1 1416 27 is_stmt 0
	lui	s1,%hi(.LANCHOR55)
	.loc 1 1415 25
	addi	a0,s2,%lo(.LANCHOR54)
	sw	zero,0(a0)
	.loc 1 1416 5 is_stmt 1
	.loc 1 1416 27 is_stmt 0
	addi	a0,s1,%lo(.LANCHOR55)
	sw	t3,0(a0)
	.loc 1 1417 33
	lui	s0,%hi(.LANCHOR56)
	.loc 1 1416 27
	sw	t4,4(a0)
	.loc 1 1417 5 is_stmt 1
	.loc 1 1418 31 is_stmt 0
	lui	a2,%hi(.LANCHOR31)
	.loc 1 1417 33
	addi	a0,s0,%lo(.LANCHOR56)
	sw	zero,0(a0)
	.loc 1 1418 5 is_stmt 1
	.loc 1 1419 23 is_stmt 0
	lui	a1,%hi(.LANCHOR35)
	.loc 1 1418 31
	addi	a0,a2,%lo(.LANCHOR31)
	.loc 1 1389 23
	lui	t2,%hi(.LANCHOR8)
	.loc 1 1390 26
	lui	t0,%hi(.LANCHOR10)
	.loc 1 1391 25
	lui	t6,%hi(.LANCHOR11)
	.loc 1 1393 27
	lui	t5,%hi(.LANCHOR14)
	.loc 1 1389 23
	sb	zero,%lo(.LANCHOR8)(t2)
	.loc 1 1390 26
	sb	zero,%lo(.LANCHOR10)(t0)
	.loc 1 1391 25
	sb	zero,%lo(.LANCHOR11)(t6)
	.loc 1 1393 27
	sb	zero,%lo(.LANCHOR14)(t5)
	.loc 1 1418 31
	sw	zero,0(a0)
	.loc 1 1419 5 is_stmt 1
	.loc 1 1419 23 is_stmt 0
	addi	a0,a1,%lo(.LANCHOR35)
	sw	zero,0(a0)
	.loc 1 1420 5 is_stmt 1
	.loc 1 1420 25 is_stmt 0
	lui	a0,%hi(.LANCHOR32)
	.loc 1 1421 25
	lui	a6,%hi(.LANCHOR33)
	.loc 1 1420 25
	addi	a0,a0,%lo(.LANCHOR32)
	sw	zero,0(a0)
	.loc 1 1421 5 is_stmt 1
	.loc 1 1422 29 is_stmt 0
	lui	a7,%hi(.LANCHOR29)
	.loc 1 1421 25
	addi	a0,a6,%lo(.LANCHOR33)
	sw	zero,0(a0)
	.loc 1 1422 5 is_stmt 1
	.loc 1 1423 34 is_stmt 0
	lui	t1,%hi(.LANCHOR34)
	.loc 1 1422 29
	addi	a0,a7,%lo(.LANCHOR29)
	sw	zero,0(a0)
	.loc 1 1423 5 is_stmt 1
	.loc 1 1424 24 is_stmt 0
	lui	t3,%hi(.LANCHOR57)
	.loc 1 1423 34
	addi	a0,t1,%lo(.LANCHOR34)
	sw	zero,0(a0)
	.loc 1 1424 5 is_stmt 1
	.loc 1 1425 33 is_stmt 0
	lui	t4,%hi(.LANCHOR58)
	.loc 1 1424 24
	addi	a0,t3,%lo(.LANCHOR57)
	sw	zero,0(a0)
	.loc 1 1425 5 is_stmt 1
	.loc 1 1426 31 is_stmt 0
	lui	t5,%hi(.LANCHOR59)
	.loc 1 1425 33
	addi	a0,t4,%lo(.LANCHOR58)
	sw	zero,0(a0)
	.loc 1 1426 5 is_stmt 1
	.loc 1 1427 28 is_stmt 0
	lui	t6,%hi(.LANCHOR18)
	.loc 1 1426 31
	addi	a0,t5,%lo(.LANCHOR59)
	sw	zero,0(a0)
	.loc 1 1427 5 is_stmt 1
	.loc 1 1428 27 is_stmt 0
	lui	t0,%hi(.LANCHOR60)
	.loc 1 1427 28
	addi	a0,t6,%lo(.LANCHOR18)
	sw	zero,0(a0)
	.loc 1 1428 5 is_stmt 1
	.loc 1 1429 28 is_stmt 0
	lui	t2,%hi(.LANCHOR36)
	.loc 1 1428 27
	addi	a0,t0,%lo(.LANCHOR60)
	sw	zero,0(a0)
	.loc 1 1429 5 is_stmt 1
	.loc 1 1430 31 is_stmt 0
	lui	ra,%hi(.LANCHOR61)
	.loc 1 1429 28
	addi	a0,t2,%lo(.LANCHOR36)
	sw	zero,0(a0)
	.loc 1 1430 5 is_stmt 1
	.loc 1 1431 31 is_stmt 0
	lui	a5,%hi(.LANCHOR62)
	.loc 1 1430 31
	addi	a0,ra,%lo(.LANCHOR61)
	sw	zero,0(a0)
	.loc 1 1431 5 is_stmt 1
	.loc 1 1432 27 is_stmt 0
	lui	a4,%hi(.LANCHOR63)
	.loc 1 1431 31
	addi	a0,a5,%lo(.LANCHOR62)
	sw	zero,0(a0)
	.loc 1 1432 5 is_stmt 1
	.loc 1 1432 27 is_stmt 0
	addi	a0,a4,%lo(.LANCHOR63)
	sw	zero,0(a0)
	.loc 1 1433 5 is_stmt 1
	call	stream_urb_slots_reset
.LVL215:
	.loc 1 1434 5
.LBB230:
.LBB231:
	.loc 1 221 5
	.loc 1 221 21 is_stmt 0
	lui	a3,%hi(.LANCHOR20)
	addi	a0,a3,%lo(.LANCHOR20)
	.loc 1 222 21
	lui	a2,%hi(.LANCHOR21)
	.loc 1 221 21
	sw	zero,0(a0)
	.loc 1 222 5 is_stmt 1
.LBE231:
.LBE230:
	.loc 1 1438 19 is_stmt 0
	lui	a1,%hi(.LANCHOR19)
.LBB233:
.LBB232:
	.loc 1 222 21
	addi	a0,a2,%lo(.LANCHOR21)
	sw	zero,0(a0)
.LBE232:
.LBE233:
	.loc 1 1438 5 is_stmt 1
	.loc 1 1438 19 is_stmt 0
	addi	a0,a1,%lo(.LANCHOR19)
	sb	zero,0(a0)
	.loc 1 1441 5 is_stmt 1
	.loc 1 1441 9 is_stmt 0
	call	frame_pool_init
.LVL216:
	lui	t2,%hi(.LANCHOR8)
	sw	a0,192(sp)
	lui	t0,%hi(.LANCHOR10)
	addi	a0,t2,%lo(.LANCHOR8)
	sw	a0,316(sp)
	lui	t6,%hi(.LANCHOR11)
	addi	a0,t0,%lo(.LANCHOR10)
	sw	a0,340(sp)
	lui	t5,%hi(.LANCHOR14)
	addi	a0,t6,%lo(.LANCHOR11)
	sw	a0,320(sp)
	lui	t4,%hi(.LANCHOR15)
	addi	a0,t5,%lo(.LANCHOR14)
	sw	a0,344(sp)
	lui	t3,%hi(.LANCHOR39)
	addi	a0,t4,%lo(.LANCHOR15)
	sw	a0,324(sp)
	lui	t1,%hi(.LANCHOR23)
	addi	a0,t3,%lo(.LANCHOR39)
	sw	a0,348(sp)
	lui	a7,%hi(.LANCHOR22)
	addi	a0,t1,%lo(.LANCHOR23)
	sw	a0,240(sp)
	lui	a6,%hi(.LANCHOR17)
	addi	a0,a7,%lo(.LANCHOR22)
	sw	a0,352(sp)
	lui	a1,%hi(.LANCHOR40)
	addi	a0,a6,%lo(.LANCHOR17)
	sw	a0,152(sp)
	lui	a2,%hi(.LANCHOR42)
	addi	a0,a1,%lo(.LANCHOR40)
	sw	a0,148(sp)
	lui	a3,%hi(.LANCHOR43)
	addi	a0,a2,%lo(.LANCHOR42)
	sw	a0,356(sp)
	lui	a4,%hi(.LANCHOR44)
	addi	a0,a3,%lo(.LANCHOR43)
	sw	a0,284(sp)
	lui	a5,%hi(.LANCHOR45)
	addi	a0,a4,%lo(.LANCHOR44)
	sw	a0,360(sp)
	addi	a0,a5,%lo(.LANCHOR45)
	sw	a0,364(sp)
	lui	a5,%hi(.LANCHOR46)
	lui	a0,%hi(.LANCHOR32)
	addi	a5,a5,%lo(.LANCHOR46)
	lui	a4,%hi(.LANCHOR47)
	addi	s0,s0,%lo(.LANCHOR56)
	lui	a2,%hi(.LANCHOR31)
	addi	a0,a0,%lo(.LANCHOR32)
	lui	a6,%hi(.LANCHOR33)
	sw	a5,368(sp)
	lui	a3,%hi(.LANCHOR48)
	addi	a5,a4,%lo(.LANCHOR47)
	sw	s0,408(sp)
	lui	a1,%hi(.LANCHOR35)
	addi	s0,a2,%lo(.LANCHOR31)
	sw	a0,420(sp)
	lui	a7,%hi(.LANCHOR29)
	addi	a0,a6,%lo(.LANCHOR33)
	sw	a5,372(sp)
	sw	s0,412(sp)
	addi	a5,a3,%lo(.LANCHOR48)
	addi	s0,a1,%lo(.LANCHOR35)
	sw	a0,424(sp)
	addi	s8,s8,%lo(.LANCHOR49)
	addi	a0,a7,%lo(.LANCHOR29)
	addi	s7,s7,%lo(.LANCHOR50)
	addi	s6,s6,%lo(.LANCHOR51)
	addi	s5,s5,%lo(.LANCHOR52)
	addi	s4,s4,%lo(.LANCHOR30)
	addi	s3,s3,%lo(.LANCHOR53)
	addi	s2,s2,%lo(.LANCHOR54)
	addi	s1,s1,%lo(.LANCHOR55)
	lui	t1,%hi(.LANCHOR34)
	sw	a5,288(sp)
	sw	a0,428(sp)
	sw	s8,376(sp)
	addi	a0,t1,%lo(.LANCHOR34)
	sw	s7,380(sp)
	sw	s6,384(sp)
	sw	s5,388(sp)
	sw	s4,392(sp)
	sw	s3,396(sp)
	sw	s2,400(sp)
	sw	s1,404(sp)
	sw	s0,416(sp)
	lui	t3,%hi(.LANCHOR57)
	lui	a5,%hi(.LANCHOR62)
	sw	a0,432(sp)
	addi	a5,a5,%lo(.LANCHOR62)
	addi	a0,t3,%lo(.LANCHOR57)
	lui	t4,%hi(.LANCHOR58)
	lui	a4,%hi(.LANCHOR63)
	sw	a0,436(sp)
	lui	t5,%hi(.LANCHOR59)
	addi	a0,t4,%lo(.LANCHOR58)
	sw	a5,460(sp)
	lui	a3,%hi(.LANCHOR20)
	addi	a5,a4,%lo(.LANCHOR63)
	sw	a0,440(sp)
	lui	t6,%hi(.LANCHOR18)
	addi	a0,t5,%lo(.LANCHOR59)
	sw	a5,292(sp)
	lui	a2,%hi(.LANCHOR21)
	addi	a5,a3,%lo(.LANCHOR20)
	sw	a0,444(sp)
	lui	t0,%hi(.LANCHOR60)
	addi	a0,t6,%lo(.LANCHOR18)
	sw	a5,244(sp)
	lui	a1,%hi(.LANCHOR19)
	addi	a5,a2,%lo(.LANCHOR21)
	sw	a0,448(sp)
	lui	t2,%hi(.LANCHOR36)
	addi	a0,t0,%lo(.LANCHOR60)
	sw	a5,212(sp)
	addi	a5,a1,%lo(.LANCHOR19)
	sw	a0,452(sp)
	lui	ra,%hi(.LANCHOR61)
	addi	a0,t2,%lo(.LANCHOR36)
	sw	a5,156(sp)
	.loc 1 1441 8
	lw	a5,192(sp)
	sw	a0,328(sp)
	addi	a0,ra,%lo(.LANCHOR61)
	sw	a0,456(sp)
	beq	a5,zero,.L224
	.loc 1 1442 9 is_stmt 1
	lui	a0,%hi(.LC25)
	addi	a0,a0,%lo(.LC25)
	j	.L624
.L224:
	.loc 1 1450 5
.LVL217:
	.loc 1 1451 5
	.loc 1 1452 5
	.loc 1 1452 37 is_stmt 0
	call	xTaskGetTickCount
.LVL218:
.LBB234:
.LBB235:
.LBB236:
.LBB237:
	.loc 1 1488 34
	lui	a5,%hi(.LANCHOR2)
	addi	a5,a5,%lo(.LANCHOR2)
	sw	a5,164(sp)
	lui	a5,%hi(.LANCHOR4)
.LBE237:
	.loc 1 1466 21
	lui	s4,%hi(.LANCHOR64)
	addi	a5,a5,%lo(.LANCHOR4)
.LBE236:
.LBE235:
.LBE234:
	.loc 1 1452 37
	sw	a0,168(sp)
.LVL219:
	.loc 1 1453 5 is_stmt 1
	.loc 1 1454 5
	.loc 1 1459 5
	.loc 1 1460 5
	.loc 1 1461 5
	.loc 1 1462 5
	.loc 1 1463 5
	.loc 1 1464 5
.LBB246:
	.loc 1 1464 10
	.loc 1 1464 27
	.loc 1 1464 14 is_stmt 0
	li	s0,2
.LBB243:
	.loc 1 1465 21
	li	s2,0
.LBB240:
	.loc 1 1466 21
	addi	s4,s4,%lo(.LANCHOR64)
	lui	s5,%hi(.LANCHOR3)
	sw	a5,196(sp)
.LVL220:
.L225:
	.loc 1 1466 13 is_stmt 1
	.loc 1 1466 21 is_stmt 0
	lrbu	s1,s4,s2,0
.LVL221:
	.loc 1 1467 13 is_stmt 1
	.loc 1 1467 16 is_stmt 0
	li	a4,4
	.loc 1 1467 29
	addi	a5,s1,-4
	.loc 1 1467 16
	andi	a5,a5,0xff
	bgtu	a5,a4,.L227
	.loc 1 1471 13 is_stmt 1
	.loc 1 1471 67 is_stmt 0
	addi	a5,s1,4
	.loc 1 1471 22
	slli	a5,a5,4
	sw	a5,228(sp)
.LVL222:
	.loc 1 1473 13 is_stmt 1
	.loc 1 1473 22 is_stmt 0
	mul	a5,s9,s1
.LVL223:
	sw	a5,144(sp)
.LVL224:
	.loc 1 1474 13 is_stmt 1
	.loc 1 1474 22 is_stmt 0
	addi	s6,a5,64
.LVL225:
	.loc 1 1475 13 is_stmt 1
	.loc 1 1476 60 is_stmt 0
	lw	a5,228(sp)
.LVL226:
	add	a3,a5,s6
	.loc 1 1475 22
	mul	a3,a3,s0
	sw	a3,184(sp)
.LVL227:
	.loc 1 1477 13 is_stmt 1
	.loc 1 1477 46 is_stmt 0
	call	kfree_size
.LVL228:
	.loc 1 1480 48
	lw	a3,184(sp)
	li	a5,20480
	.loc 1 1477 46
	mv	a4,a0
.LVL229:
	.loc 1 1478 12 is_stmt 1
	.loc 1 1480 13
	.loc 1 1480 48 is_stmt 0
	add	a5,a3,a5
	.loc 1 1480 16
	bleu	a5,a0,.L228
	.loc 1 1481 17 is_stmt 1
	lui	a0,%hi(.LC26)
.LVL230:
	li	a5,20480
	mv	a2,s1
	mv	a1,s0
	addi	a0,a0,%lo(.LC26)
	call	printf
.LVL231:
	.loc 1 1484 17
.L227:
.LBE240:
	.loc 1 1465 96 discriminator 2
	.loc 1 1465 97 is_stmt 0 discriminator 2
	addi	s2,s2,1
.LVL232:
	.loc 1 1465 28 is_stmt 1 discriminator 2
	.loc 1 1465 9 is_stmt 0 discriminator 2
	li	a5,3
	bne	s2,a5,.L225
.LBE243:
	.loc 1 1464 66 is_stmt 1
.LVL233:
	.loc 1 1464 27
	.loc 1 1464 5 is_stmt 0
	li	a5,1
	bne	s0,a5,.L447
.LBE246:
	.loc 1 1520 5 is_stmt 1
	.loc 1 1521 9
	.loc 1 1521 164 is_stmt 0
	call	kfree_size
.LVL234:
	mv	a2,a0
	.loc 1 1521 9
	lui	a0,%hi(.LC66)
	mv	a1,s9
	addi	a0,a0,%lo(.LC66)
	call	printf
.LVL235:
	j	.L622
.L447:
.LBB247:
	.loc 1 1464 73
	li	s0,1
.LVL236:
.LBB244:
	.loc 1 1465 21
	li	s2,0
.LVL237:
	j	.L225
.LVL238:
.L228:
.LBB241:
.LBB238:
	.loc 1 1496 55
	mul	a5,s9,s1
	addi	s3,s5,%lo(.LANCHOR3)
	.loc 1 1487 22
	li	s7,0
	.loc 1 1496 55
	addi	a5,a5,32
	sw	a5,332(sp)
.LVL239:
.L230:
	.loc 1 1488 17 is_stmt 1
	.loc 1 1488 55 is_stmt 0
	lw	a0,228(sp)
	call	pvPortMalloc
.LVL240:
	.loc 1 1488 34
	lw	a5,164(sp)
	srw	a0,a5,s7,2
	.loc 1 1489 17 is_stmt 1
	.loc 1 1489 55 is_stmt 0
	mv	a0,s6
	call	pvPortMalloc
.LVL241:
	.loc 1 1490 35
	lw	a5,164(sp)
	.loc 1 1489 42
	sw	a0,0(s3)
	.loc 1 1490 17 is_stmt 1
	.loc 1 1490 35 is_stmt 0
	lrw	a5,a5,s7,2
	.loc 1 1490 20
	beq	a5,zero,.L229
	.loc 1 1490 39 discriminator 1
	beq	a0,zero,.L229
	.loc 1 1494 17 is_stmt 1 discriminator 2
	lw	a2,228(sp)
	mv	a0,a5
	li	a1,0
	call	memset
.LVL242:
	.loc 1 1495 17 discriminator 2
	lw	a0,0(s3)
	li	a2,32
	li	a1,165
	call	memset
.LVL243:
	.loc 1 1496 17 discriminator 2
	.loc 1 1496 55 is_stmt 0 discriminator 2
	lw	a0,0(s3)
	.loc 1 1496 17 discriminator 2
	lw	a5,332(sp)
	li	a2,32
	li	a1,165
	add	a0,a0,a5
	call	memset
.LVL244:
	.loc 1 1498 17 is_stmt 1 discriminator 2
	.loc 1 1498 65 is_stmt 0 discriminator 2
	lwia	a5,(s3),4,0
	.loc 1 1498 38 discriminator 2
	lw	a4,196(sp)
	.loc 1 1498 65 discriminator 2
	addi	a5,a5,32
	.loc 1 1498 38 discriminator 2
	srw	a5,a4,s7,2
	.loc 1 1487 42 is_stmt 1 discriminator 2
	.loc 1 1487 43 is_stmt 0 discriminator 2
	addi	a5,s7,1
.LVL245:
	.loc 1 1487 29 is_stmt 1 discriminator 2
	li	s7,1
	.loc 1 1487 13 is_stmt 0 discriminator 2
	blt	a5,s0,.L230
.LBE238:
	.loc 1 1501 13 is_stmt 1
	.loc 1 1502 17
.LVL246:
	.loc 1 1503 17
	.loc 1 1504 17
	.loc 1 1505 17
	.loc 1 1506 17
	.loc 1 1507 17
.LBE241:
.LBE244:
	.loc 1 1464 66
	.loc 1 1464 27
.LBE247:
	.loc 1 1529 5 is_stmt 0
	lw	a5,144(sp)
.LVL247:
	andi	s2,s0,0xff
.LVL248:
	.loc 1 1529 5 is_stmt 1
	lui	a0,%hi(.LC27)
	mul	a4,s0,a5
	mv	a3,a5
	mv	a2,s1
	mv	a1,s2
	addi	a0,a0,%lo(.LC27)
	.loc 1 1540 5 is_stmt 0
	lui	s0,%hi(.LANCHOR26)
.LVL249:
.LBB248:
	.loc 1 1552 14
	li	s3,0
.LBE248:
	.loc 1 1529 5
	call	printf
.LVL250:
	.loc 1 1533 5 is_stmt 1
	.loc 1 1533 33 is_stmt 0
	mv	a0,s1
	call	sanitize_iso_pkt_cap
.LVL251:
	.loc 1 1533 31
	lw	a5,152(sp)
	.loc 1 1540 5
	lw	a4,152(sp)
	addi	a2,s0,%lo(.LANCHOR26)
	.loc 1 1533 31
	sb	a0,0(a5)
	.loc 1 1534 5 is_stmt 1
	.loc 1 1534 28 is_stmt 0
	lw	a5,148(sp)
.LBB252:
.LBB253:
	.loc 1 333 5
	lw	a3,176(sp)
	lui	s1,%hi(.LC28)
.LVL252:
.LBE253:
.LBE252:
	.loc 1 1534 28
	sb	s2,0(a5)
	.loc 1 1538 5 is_stmt 1
	.loc 1 1539 37 is_stmt 0
	lw	a5,152(sp)
.LBB258:
.LBB254:
	.loc 1 333 5
	lui	a0,%hi(.LC29)
	mv	a6,s9
.LBE254:
.LBE258:
	.loc 1 1539 37
	lbu	a5,0(a5)
	.loc 1 1540 5
	lbu	a7,0(a4)
.LBB259:
.LBB255:
	.loc 1 333 5
	lw	a4,144(sp)
.LBE255:
.LBE259:
	.loc 1 1539 37
	andi	a5,a5,0xff
.LVL253:
	.loc 1 1540 5 is_stmt 1
.LBB260:
.LBB256:
	.loc 1 330 5
	.loc 1 333 5
.LBE256:
.LBE260:
	.loc 1 1538 14 is_stmt 0
	mul	a5,a5,s9
.LVL254:
.LBB261:
.LBB257:
	.loc 1 333 5
	sw	a4,4(sp)
	lw	a4,160(sp)
.LVL255:
	andi	a7,a7,0xff
	addi	a1,s1,%lo(.LC28)
	addi	a0,a0,%lo(.LC29)
	sw	a5,0(sp)
	lbu	a2,9(a2)
	lw	a5,140(sp)
	call	printf
.LVL256:
.LBE257:
.LBE261:
	.loc 1 1543 5 is_stmt 1
	.loc 1 1543 10 is_stmt 0
	lw	a5,152(sp)
	lw	a2,144(sp)
	addi	a3,s1,%lo(.LC28)
	lbu	a1,0(a5)
	mv	a0,s9
	andi	a1,a1,0xff
	call	iso_buffer_layout_is_valid
.LVL257:
	addi	a5,s0,%lo(.LANCHOR26)
	sw	a0,140(sp)
.LVL258:
	sw	a5,216(sp)
	.loc 1 1543 8
	beq	a0,zero,.L622
.LBB262:
.LBB249:
	.loc 1 1561 23
	lui	s0,%hi(uvc_iso_complete_router)
	addi	s0,s0,%lo(uvc_iso_complete_router)
	.loc 1 1575 13
	lui	s1,%hi(.LC31)
.LVL259:
.L234:
.LBE249:
	.loc 1 1552 21 is_stmt 1 discriminator 1
	.loc 1 1552 23 is_stmt 0 discriminator 1
	lw	a5,148(sp)
	lbu	a5,0(a5)
	andi	a5,a5,0xff
	.loc 1 1552 5 discriminator 1
	ble	a5,s3,.L236
.LBB250:
	.loc 1 1553 9 is_stmt 1
	.loc 1 1553 26 is_stmt 0
	lw	a5,164(sp)
	.loc 1 1564 14
	lw	a4,144(sp)
	mv	a2,s9
	.loc 1 1553 26
	lrw	s2,a5,s3,2
.LVL260:
	.loc 1 1555 9 is_stmt 1
	.loc 1 1555 20 is_stmt 0
	lw	a5,172(sp)
	.loc 1 1556 17
	sw	s10,12(s2)
	.loc 1 1555 20
	sw	a5,8(s2)
	.loc 1 1556 9 is_stmt 1
	.loc 1 1557 9
	.loc 1 1557 49 is_stmt 0
	lw	a5,196(sp)
	.loc 1 1560 22
	sw	zero,40(s2)
	.loc 1 1561 23
	sw	s0,56(s2)
	.loc 1 1557 49
	lrw	a1,a5,s3,2
	.loc 1 1558 37
	lw	a5,144(sp)
	.loc 1 1562 18
	sw	s2,60(s2)
	.loc 1 1557 30
	sw	a1,24(s2)
	.loc 1 1558 9 is_stmt 1
	.loc 1 1558 37 is_stmt 0
	sw	a5,28(s2)
	.loc 1 1559 9 is_stmt 1
	.loc 1 1559 33 is_stmt 0
	lw	a5,152(sp)
	.loc 1 1564 14
	mv	a0,s2
	.loc 1 1559 33
	lbu	a5,0(a5)
	andi	a5,a5,0xff
	sw	a5,48(s2)
	.loc 1 1560 9 is_stmt 1
	.loc 1 1561 9
	.loc 1 1562 9
	.loc 1 1564 9
	.loc 1 1564 14 is_stmt 0
	lw	a5,152(sp)
	lbu	a3,0(a5)
	andi	a3,a3,0xff
	call	rebuild_iso_packet_descriptors
.LVL261:
	.loc 1 1564 12
	bne	a0,zero,.L235
	.loc 1 1568 13 is_stmt 1
	lui	a0,%hi(.LC30)
	mv	a1,s3
	addi	a0,a0,%lo(.LC30)
	call	printf
.LVL262:
	.loc 1 1569 13
	li	a0,3
	call	set_cam_state
.LVL263:
	.loc 1 1570 13
.L236:
.LBE250:
.LBE262:
	.loc 1 1579 5
	.loc 1 1579 21 is_stmt 0
	lui	a4,%hi(.LANCHOR0)
	addi	a5,a4,%lo(.LANCHOR0)
	lbu	a5,0(a5)
	addi	a4,a4,%lo(.LANCHOR0)
	.loc 1 1579 8
	li	a3,3
	.loc 1 1579 21
	andi	a5,a5,0xff
	sw	a4,220(sp)
	.loc 1 1579 8
	bne	a5,a3,.L239
	.loc 1 1580 9 is_stmt 1
	.loc 1 1580 23 is_stmt 0
	lw	a4,156(sp)
	li	a5,1
	sb	a5,0(a4)
.L239:
	.loc 1 1583 5 is_stmt 1
	li	a0,2
	call	set_cam_state
.LVL264:
	.loc 1 1584 5
	call	capture_ctrl_mark_running_if_owned
.LVL265:
	.loc 1 1585 5
	lw	a5,216(sp)
	lui	a0,%hi(.LC32)
	addi	a0,a0,%lo(.LC32)
	lhu	a2,6(a5)
	lhu	a1,4(a5)
	call	printf
.LVL266:
	.loc 1 1589 5
	.loc 1 1590 5
	.loc 1 1590 11 is_stmt 0
	lw	a5,144(sp)
	.loc 1 1589 13
	sw	zero,204(sp)
	.loc 1 1451 14
	sw	zero,276(sp)
	.loc 1 1590 11
	sw	a5,200(sp)
	.loc 1 1454 16
	lw	a5,168(sp)
	.loc 1 1451 14
	sw	zero,280(sp)
	.loc 1 1450 14
	sw	zero,264(sp)
	.loc 1 1454 16
	sw	a5,296(sp)
	.loc 1 1453 16
	sw	a5,232(sp)
.LBB263:
.LBB264:
.LBB265:
	.loc 1 1603 30
	lui	a5,%hi(.LANCHOR5)
	addi	a5,a5,%lo(.LANCHOR5)
.LBE265:
.LBE264:
.LBE263:
	.loc 1 1450 14
	sw	zero,272(sp)
.LBB429:
.LBB271:
.LBB266:
	.loc 1 1603 30
	sw	a5,224(sp)
.LVL267:
.L240:
.LBE266:
.LBE271:
.LBE429:
	.loc 1 1590 11 is_stmt 1
	.loc 1 1590 12 is_stmt 0
	lw	a5,156(sp)
	lbu	a5,0(a5)
	andi	s6,a5,0xff
	.loc 1 1590 11
	bne	s6,zero,.L243
	.loc 1 1590 42 discriminator 1
	lw	a5,220(sp)
	.loc 1 1590 27 discriminator 1
	li	a4,2
	.loc 1 1590 42 discriminator 1
	lbu	a5,0(a5)
	andi	a5,a5,0xff
	.loc 1 1590 27 discriminator 1
	bne	a5,a4,.L243
.LBB430:
	.loc 1 1591 9 is_stmt 1
	.loc 1 1591 36 is_stmt 0
	lw	a4,148(sp)
	lbu	a4,0(a4)
	andi	a4,a4,0xff
	.loc 1 1591 12
	beq	a4,zero,.L241
	.loc 1 1591 67 discriminator 1
	lw	a4,148(sp)
	lbu	a4,0(a4)
	andi	a4,a4,0xff
	.loc 1 1591 41 discriminator 1
	bleu	a4,a5,.L424
.L241:
	.loc 1 1592 13 is_stmt 1
	lw	a5,148(sp)
	lui	a0,%hi(.LC33)
	addi	a0,a0,%lo(.LC33)
	lbu	a1,0(a5)
	andi	a1,a1,0xff
	call	printf
.LVL268:
	.loc 1 1594 13
	li	a0,3
	call	set_cam_state
.LVL269:
	.loc 1 1595 13
	.loc 1 1595 27 is_stmt 0
	lw	a4,156(sp)
	li	a5,1
	sb	a5,0(a4)
	.loc 1 1596 13 is_stmt 1
.LVL270:
.L243:
.LBE430:
	.loc 1 1991 5
	.loc 1 1991 19 is_stmt 0
	lw	a4,156(sp)
	li	a5,1
	sb	a5,0(a4)
	.loc 1 1993 5 is_stmt 1
.LBB431:
	.loc 1 1993 10
.LVL271:
.L399:
	.loc 1 1993 21 discriminator 1
	.loc 1 1993 23 is_stmt 0 discriminator 1
	lw	a5,148(sp)
	.loc 1 1993 5 discriminator 1
	lw	a4,192(sp)
	.loc 1 1993 23 discriminator 1
	lbu	a5,0(a5)
	andi	a5,a5,0xff
	.loc 1 1993 5 discriminator 1
	bgt	a5,a4,.L403
.LBE431:
	.loc 1 2006 5 is_stmt 1
	.loc 1 2006 8 is_stmt 0
	lw	a5,316(sp)
	lbu	a5,0(a5)
	beq	a5,zero,.L404
	.loc 1 2007 9 is_stmt 1
	lui	a0,%hi(.LANCHOR9)
	addi	a0,a0,%lo(.LANCHOR9)
	call	frame_free
.LVL272:
	.loc 1 2008 9
	.loc 1 2008 27 is_stmt 0
	lw	a5,316(sp)
	sb	zero,0(a5)
	.loc 1 2009 9 is_stmt 1
	.loc 1 2009 30 is_stmt 0
	lw	a5,340(sp)
	sb	zero,0(a5)
	.loc 1 2010 9 is_stmt 1
	.loc 1 2010 29 is_stmt 0
	lw	a5,320(sp)
	sb	zero,0(a5)
.L404:
	.loc 1 2012 5 is_stmt 1
	.loc 1 2012 27 is_stmt 0
	lw	a5,344(sp)
	sb	zero,0(a5)
	.loc 1 2013 5 is_stmt 1
	.loc 1 2013 27 is_stmt 0
	lw	a5,324(sp)
	sb	zero,0(a5)
	.loc 1 2016 5 is_stmt 1
	call	frame_queue_drain
.LVL273:
	.loc 1 2019 5
	lw	a5,148(sp)
	lbu	a0,0(a5)
	andi	a0,a0,0xff
	call	free_iso_urb_resources.constprop.0
.LVL274:
	.loc 1 2020 5
	call	stream_urb_slots_reset
.LVL275:
	.loc 1 2021 5
	.loc 1 2021 31 is_stmt 0
	lw	a5,152(sp)
	.loc 1 2025 8
	li	a4,2
	.loc 1 2021 31
	sb	zero,0(a5)
	.loc 1 2022 5 is_stmt 1
	.loc 1 2022 28 is_stmt 0
	lw	a5,148(sp)
	sb	zero,0(a5)
	.loc 1 2023 5 is_stmt 1
.LBB434:
.LBB435:
	.loc 1 221 5
	.loc 1 221 21 is_stmt 0
	lw	a5,244(sp)
	sw	zero,0(a5)
	.loc 1 222 5 is_stmt 1
	.loc 1 222 21 is_stmt 0
	lw	a5,212(sp)
	sw	zero,0(a5)
.LBE435:
.LBE434:
	.loc 1 2025 5 is_stmt 1
	.loc 1 2025 21 is_stmt 0
	lw	a5,220(sp)
	lbu	a5,0(a5)
	andi	a5,a5,0xff
	.loc 1 2025 8
	bne	a5,a4,.L405
	.loc 1 2026 9 is_stmt 1
	li	a0,1
	call	set_cam_state
.LVL276:
.L405:
	.loc 1 2028 5
	li	a0,0
	li	a1,0
	call	capture_ctrl_set
.LVL277:
	.loc 1 2030 5
	lui	a5,%hi(.LANCHOR27)
	lw	a2,%lo(.LANCHOR27)(a5)
	lw	a3,%lo(.LANCHOR27+4)(a5)
	lui	a0,%hi(.LC64)
	addi	a0,a0,%lo(.LC64)
	call	printf
.LVL278:
	.loc 1 2032 5
.L623:
	.loc 1 1524 9
	.loc 1 2034 1 is_stmt 0
	lw	s0,568(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	ra,572(sp)
	.cfi_restore 1
	lw	s1,564(sp)
	.cfi_restore 9
	lw	s2,560(sp)
	.cfi_restore 18
	lw	s3,556(sp)
	.cfi_restore 19
	lw	s4,552(sp)
	.cfi_restore 20
	lw	s5,548(sp)
	.cfi_restore 21
	lw	s6,544(sp)
	.cfi_restore 22
	lw	s7,540(sp)
	.cfi_restore 23
	lw	s8,536(sp)
	.cfi_restore 24
	lw	s9,532(sp)
	.cfi_restore 25
	lw	s10,528(sp)
	.cfi_restore 26
	lw	s11,524(sp)
	.cfi_restore 27
.LVL279:
	.loc 1 1524 23
	lui	a5,%hi(.LANCHOR28)
	sw	zero,%lo(.LANCHOR28)(a5)
	.loc 1 1525 9 is_stmt 1
	.loc 1 2034 1 is_stmt 0
	.loc 1 1525 9
	li	a0,0
	.loc 1 2034 1
	addi	sp,sp,576
	.cfi_def_cfa_offset 0
	.loc 1 1525 9
	tail	vTaskDelete
.LVL280:
.L235:
	.cfi_restore_state
.LBB436:
.LBB251:
	.loc 1 1573 9 is_stmt 1
	.loc 1 1573 19 is_stmt 0
	mv	a0,s2
	call	usbh_submit_urb
.LVL281:
	mv	a2,a0
.LVL282:
	.loc 1 1574 9 is_stmt 1
	.loc 1 1574 12 is_stmt 0
	bge	a0,zero,.L237
	.loc 1 1575 13 is_stmt 1
	mv	a1,s3
	addi	a0,s1,%lo(.LC31)
.LVL283:
	call	printf
.LVL284:
.L237:
.LBE251:
	.loc 1 1552 49 discriminator 2
	.loc 1 1552 50 is_stmt 0 discriminator 2
	addi	s3,s3,1
.LVL285:
	j	.L234
.LVL286:
.L245:
.LBE436:
.LBB437:
.LBB272:
.LBB267:
	.loc 1 1618 13 is_stmt 1
	lw	a5,152(sp)
	mv	a0,s2
	lbu	a1,0(a5)
	andi	a1,a1,0xff
	call	reset_iso_packets
.LVL287:
	.loc 1 1619 13
	lw	a1,172(sp)
	mv	a2,s10
	mv	a0,s2
	call	stamp_urb_endpoints
.LVL288:
	.loc 1 1620 13
	.loc 1 1620 21 is_stmt 0
	mv	a0,s2
	call	usbh_submit_urb
.LVL289:
	mv	a1,a0
.LVL290:
	.loc 1 1621 13 is_stmt 1
	.loc 1 1621 16 is_stmt 0
	bne	a0,s0,.L247
	.loc 1 1622 17 is_stmt 1
	.loc 1 1622 38 is_stmt 0
	lw	a5,292(sp)
	lw	a4,292(sp)
	lw	a5,0(a5)
	addi	a5,a5,1
	sw	a5,0(a4)
	.loc 1 1623 17 is_stmt 1
.LVL291:
.L244:
.LBE267:
	.loc 1 1602 57 discriminator 2
	.loc 1 1602 58 is_stmt 0 discriminator 2
	addi	s1,s1,1
.LVL292:
	andi	s1,s1,0xff
.LVL293:
.L242:
	.loc 1 1602 29 is_stmt 1 discriminator 1
	.loc 1 1602 31 is_stmt 0 discriminator 1
	lw	a5,148(sp)
	lbu	a5,0(a5)
	andi	a5,a5,0xff
	.loc 1 1602 9 discriminator 1
	bleu	a5,s1,.L246
.LBB268:
	.loc 1 1603 13 is_stmt 1
	.loc 1 1603 30 is_stmt 0
	lw	a5,224(sp)
	lrw	s2,a5,s1,2
.LVL294:
	.loc 1 1604 13 is_stmt 1
	.loc 1 1604 16 is_stmt 0
	beq	s2,zero,.L244
	.loc 1 1607 13 is_stmt 1
	.loc 1 1608 18 is_stmt 0
	lw	a5,152(sp)
	lw	a4,144(sp)
	.loc 1 1607 32
	sw	zero,44(s2)
	.loc 1 1608 13 is_stmt 1
	.loc 1 1608 18 is_stmt 0
	lbu	a3,0(a5)
	lw	a5,196(sp)
	mv	a2,s9
	andi	a3,a3,0xff
	lrw	a1,a5,s1,2
	mv	a0,s2
	call	rebuild_iso_packet_descriptors
.LVL295:
	mv	s3,a0
	.loc 1 1608 16
	bne	a0,zero,.L245
	.loc 1 1612 17 is_stmt 1
	lui	a0,%hi(.LC34)
	mv	a1,s1
	addi	a0,a0,%lo(.LC34)
	call	printf
.LVL296:
	.loc 1 1614 17
.L609:
	.loc 1 1628 17
	li	a0,3
	call	set_cam_state
.LVL297:
	.loc 1 1629 17
	.loc 1 1629 31 is_stmt 0
	lw	a4,156(sp)
	li	a5,1
	sb	a5,0(a4)
	.loc 1 1630 17 is_stmt 1
.LVL298:
.L246:
.LBE268:
.LBE272:
	.loc 1 1635 9
	.loc 1 1635 25 is_stmt 0
	lw	a5,220(sp)
	.loc 1 1635 12
	li	a4,3
	.loc 1 1635 25
	lbu	a5,0(a5)
	andi	a5,a5,0xff
	.loc 1 1635 12
	beq	a5,a4,.L243
	.loc 1 1635 47 discriminator 1
	lw	a5,156(sp)
	lbu	a5,0(a5)
	andi	a5,a5,0xff
	sw	a5,248(sp)
	bne	a5,zero,.L243
.LBB273:
.LBB274:
	.loc 1 393 31
	lui	a5,%hi(.LANCHOR24)
	addi	a5,a5,%lo(.LANCHOR24)
	sw	a5,468(sp)
.LBE274:
.LBE273:
.LBB276:
.LBB277:
	.loc 1 1668 22
	lui	a5,%hi(.LANCHOR4)
	addi	a5,a5,%lo(.LANCHOR4)
	sw	a5,472(sp)
.LVL299:
.L250:
.LBE277:
.LBE276:
	.loc 1 1640 15 is_stmt 1
.LBB360:
.LBB275:
	.loc 1 387 5
	.loc 1 387 14 is_stmt 0
	lw	a5,212(sp)
	.loc 1 388 14
	lw	a4,244(sp)
	.loc 1 387 14
	lw	a5,0(a5)
.LVL300:
	.loc 1 388 5 is_stmt 1
	.loc 1 388 14 is_stmt 0
	lw	a4,0(a4)
.LVL301:
	.loc 1 389 5 is_stmt 1
	.loc 1 389 8 is_stmt 0
	beq	a5,a4,.L260
	.loc 1 392 5 is_stmt 1
	.loc 1 393 5
	.loc 1 393 31 is_stmt 0
	lw	a4,468(sp)
.LVL302:
	lrw	s1,a4,a5,2
.LVL303:
	.loc 1 394 5 is_stmt 1
	.loc 1 394 21 is_stmt 0
	lw	a4,212(sp)
	.loc 1 394 29
	addi	a5,a5,1
.LVL304:
	.loc 1 394 35
	andi	a5,a5,63
.LVL305:
	.loc 1 394 21
	sw	a5,0(a4)
	.loc 1 395 5 is_stmt 1
.LVL306:
.LBE275:
.LBE360:
.LBB361:
	.loc 1 1641 13
	.loc 1 1642 13
	.loc 1 1642 24 is_stmt 0
	lw	a5,148(sp)
	lbu	a5,0(a5)
	andi	a5,a5,0xff
.LVL307:
.LBE361:
.LBE437:
	.loc 1 1345 5 is_stmt 1
.LBB438:
.LBB362:
.LBB278:
.LBB279:
.LBB280:
	.loc 1 237 5
	.loc 1 237 16 is_stmt 0
	beq	s1,zero,.L252
	.loc 1 237 38
	andi	s8,s1,3
	.loc 1 237 16
	beq	s8,zero,.L425
.LVL308:
.L252:
.LBE280:
.LBE279:
.LBE278:
	.loc 1 1644 17 is_stmt 1
	.loc 1 1644 36 is_stmt 0
	lw	a5,284(sp)
	lw	a4,284(sp)
	.loc 1 1645 17
	lui	a0,%hi(.LC36)
	.loc 1 1644 36
	lw	a5,0(a5)
	.loc 1 1645 17
	mv	a1,s1
	addi	a0,a0,%lo(.LC36)
	.loc 1 1644 36
	addi	a5,a5,1
	sw	a5,0(a4)
	.loc 1 1645 17 is_stmt 1
	call	printf
.LVL309:
	.loc 1 1646 17
	.loc 1 1646 34 is_stmt 0
	lw	a4,240(sp)
	li	a5,1
	sb	a5,0(a4)
	.loc 1 1647 17 is_stmt 1
.L256:
.LBB285:
.LBB286:
	.loc 1 1250 9 is_stmt 0
	lw	s6,140(sp)
	j	.L250
.LVL310:
.L247:
.LBE286:
.LBE285:
.LBE362:
.LBB363:
.LBB269:
	.loc 1 1625 13 is_stmt 1
	.loc 1 1625 16 is_stmt 0
	bge	a0,zero,.L248
	.loc 1 1626 17 is_stmt 1
	lui	a0,%hi(.LC35)
.LVL311:
	mv	a2,s1
	addi	a0,a0,%lo(.LC35)
	call	printf
.LVL312:
	j	.L609
.LVL313:
.L248:
	.loc 1 1632 13
	.loc 1 1632 35 is_stmt 0
	lw	a5,224(sp)
	.loc 1 1633 22
	mv	s6,s3
.LVL314:
	.loc 1 1632 35
	srw	zero,a5,s1,2
	.loc 1 1633 13 is_stmt 1
.LVL315:
	j	.L244
.LVL316:
.L424:
.LBE269:
	.loc 1 1602 22 is_stmt 0
	li	s1,0
.LBB270:
	.loc 1 1621 16
	li	s0,-6
	j	.L242
.LVL317:
.L425:
.LBE270:
.LBE363:
.LBB364:
.LBB341:
.LBB282:
.LBB281:
	li	s3,0
.LVL318:
.L251:
.LBE281:
.LBE282:
.LBB283:
	.loc 1 1348 25 is_stmt 1
	.loc 1 1348 5 is_stmt 0
	andi	a4,s3,0xff
	bleu	a5,a4,.L252
	.loc 1 1349 9 is_stmt 1
	.loc 1 1349 12 is_stmt 0
	lw	a3,164(sp)
	.loc 1 1349 17
	addi	a4,s3,1
	.loc 1 1349 12
	lrw	a3,a3,s3,2
	bne	a3,s1,.L426
	.loc 1 1350 13 is_stmt 1
.LVL319:
.LBE283:
.LBE341:
	.loc 1 1643 13
	.loc 1 1650 12
	.loc 1 1651 13
	.loc 1 1652 13
.LBB342:
.LBB343:
	.loc 1 348 5
	.loc 1 348 44 is_stmt 0
	lui	a5,%hi(.LANCHOR3)
	addi	a5,a5,%lo(.LANCHOR3)
	.loc 1 348 8
	li	a4,1
	.loc 1 348 44
	lrw	a5,a5,s3,2
	.loc 1 348 8
	ble	s3,a4,.L599
.L253:
.LVL320:
.LBE343:
.LBE342:
	.loc 1 1654 17 is_stmt 1
	.loc 1 1654 36 is_stmt 0
	lw	a4,288(sp)
	lw	a3,288(sp)
	lw	a4,0(a4)
	addi	a4,a4,1
	sw	a4,0(a3)
	.loc 1 1655 17 is_stmt 1
	lw	a4,248(sp)
	bne	a4,zero,.L446
	lui	a2,%hi(.LC20)
	addi	a2,a2,%lo(.LC20)
.L408:
	.loc 1 1655 17 is_stmt 0 discriminator 4
	lw	a4,200(sp)
	lw	a7,144(sp)
	lui	a0,%hi(.LC37)
	sw	a4,0(sp)
	lw	a4,196(sp)
	mv	a3,s8
	mv	a1,s3
	lrw	a6,a4,s3,2
	addi	a0,a0,%lo(.LC37)
	mv	a4,s1
	call	printf
.LVL321:
	.loc 1 1659 17 is_stmt 1 discriminator 4
	li	a0,3
	call	set_cam_state
.LVL322:
	.loc 1 1660 17 discriminator 4
	.loc 1 1660 31 is_stmt 0 discriminator 4
	lw	a4,156(sp)
	li	a5,1
	sb	a5,0(a4)
	.loc 1 1661 17 is_stmt 1 discriminator 4
.LVL323:
.L615:
.LBB350:
	.loc 1 1675 21
.LBE350:
	.loc 1 1641 22 is_stmt 0
	lw	s6,140(sp)
.LVL324:
.L260:
.LBE364:
	.loc 1 1693 9 is_stmt 1
	.loc 1 1693 25 is_stmt 0
	lw	a5,220(sp)
	.loc 1 1693 12
	li	a4,3
	.loc 1 1693 25
	lbu	a5,0(a5)
	andi	a5,a5,0xff
	.loc 1 1693 12
	beq	a5,a4,.L243
	.loc 1 1693 47 discriminator 1
	lw	a5,156(sp)
	lbu	a5,0(a5)
	andi	a5,a5,0xff
	bne	a5,zero,.L243
	.loc 1 1697 9 is_stmt 1
	.loc 1 1697 18 is_stmt 0
	lui	s8,%hi(.LANCHOR27)
	addi	a5,s8,%lo(.LANCHOR27)
	lw	a4,0(a5)
	lw	a5,4(a5)
.LBB365:
.LBB366:
	.loc 1 243 15
	li	s0,0
.LBE366:
.LBE365:
	.loc 1 1697 18
	sw	a4,176(sp)
	sw	a5,180(sp)
.LVL325:
	.loc 1 1698 9 is_stmt 1
	.loc 1 1698 18 is_stmt 0
	lw	a5,348(sp)
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,184(sp)
	sw	a5,188(sp)
.LVL326:
	.loc 1 1699 9 is_stmt 1
	.loc 1 1699 26 is_stmt 0
	call	xTaskGetTickCount
.LVL327:
	sw	a0,160(sp)
.LVL328:
	.loc 1 1701 8 is_stmt 1
.LBB368:
.LBB367:
	.loc 1 242 5
	.loc 1 242 32 is_stmt 0
	call	http_get_counters
.LVL329:
	.loc 1 243 5 is_stmt 1
	addi	a5,s8,%lo(.LANCHOR27)
	sw	a5,236(sp)
	.loc 1 243 15 is_stmt 0
	beq	a0,zero,.L346
	.loc 1 243 19
	lbu	s0,24(a0)
	andi	s0,s0,0xff
.L346:
.LVL330:
.LBE367:
.LBE368:
	.loc 1 1702 8 is_stmt 1
	.loc 1 1703 8
	.loc 1 1704 8
	.loc 1 1704 43 is_stmt 0
	lw	a5,264(sp)
	lw	a4,176(sp)
	lui	s7,%hi(.LANCHOR23)
	addi	s7,s7,%lo(.LANCHOR23)
	bne	a5,a4,.L347
	lw	a5,272(sp)
	lw	a4,180(sp)
	bne	a5,a4,.L347
.LVL331:
	.loc 1 1706 9 is_stmt 1 discriminator 2
	.loc 1 1711 9 discriminator 2
	.loc 1 1715 9 discriminator 2
	.loc 1 1715 12 is_stmt 0 discriminator 2
	lw	a5,276(sp)
	lw	a4,184(sp)
	bne	a5,a4,.L412
	lw	a5,280(sp)
	lw	a4,188(sp)
	beq	a5,a4,.L603
.L412:
	.loc 1 1716 13 is_stmt 1
.LVL332:
	.loc 1 1717 13
	.loc 1 1717 30 is_stmt 0
	lw	a5,240(sp)
	sb	zero,0(a5)
	.loc 1 1725 9 is_stmt 1
	.loc 1 1716 32 is_stmt 0
	lw	a5,160(sp)
	sw	a5,168(sp)
	.loc 1 1727 42
	bne	s0,zero,.L436
.LVL333:
.L351:
	li	a1,8192
	addi	a1,a1,-1192
.L350:
.LVL334:
	.loc 1 1728 9 is_stmt 1
	.loc 1 1728 12 is_stmt 0
	lw	a5,276(sp)
	lw	a4,184(sp)
	bne	a5,a4,.L355
	lw	a5,280(sp)
	lw	a4,188(sp)
	beq	a5,a4,.L356
.L355:
	.loc 1 1728 28 discriminator 1
	lw	a5,264(sp)
	lw	a4,176(sp)
	bne	a5,a4,.L356
	lw	a5,272(sp)
	lw	a4,180(sp)
	bne	a5,a4,.L356
	.loc 1 1729 18 discriminator 2
	lw	a5,160(sp)
	lw	a4,232(sp)
	.loc 1 1729 98 discriminator 2
	li	a3,1000
	.loc 1 1729 18 discriminator 2
	sub	a4,a5,a4
	.loc 1 1729 98 discriminator 2
	mul	a5,a1,a3
	.loc 1 1729 42 discriminator 2
	divu	a5,a5,a3
	.loc 1 1728 49 discriminator 2
	bltu	a4,a5,.L356
.LBB369:
	.loc 1 1730 13 is_stmt 1
	.loc 1 1730 34 is_stmt 0
	lui	a5,%hi(.LANCHOR60)
	addi	a3,a5,%lo(.LANCHOR60)
	lw	a4,0(a3)
	.loc 1 1731 35
	lui	s1,%hi(.LANCHOR36)
	addi	a5,a5,%lo(.LANCHOR60)
	.loc 1 1730 34
	addi	a4,a4,1
	sw	a4,0(a3)
	.loc 1 1731 13 is_stmt 1
	.loc 1 1731 35 is_stmt 0
	addi	a3,s1,%lo(.LANCHOR36)
	lw	a4,0(a3)
	addi	s1,s1,%lo(.LANCHOR36)
	addi	a4,a4,1
	sw	a4,0(a3)
	.loc 1 1732 13 is_stmt 1
	bne	s0,zero,.L438
	lui	a2,%hi(.LC22)
	addi	a2,a2,%lo(.LC22)
.L357:
	.loc 1 1732 13 is_stmt 0 discriminator 4
	lw	a3,0(a5)
	lui	a0,%hi(.LC47)
	addi	a0,a0,%lo(.LC47)
	call	printf
.LVL335:
	.loc 1 1736 13 is_stmt 1 discriminator 4
	li	a0,0
	call	drop_current_assembly
.LVL336:
	.loc 1 1737 13 discriminator 4
	call	frame_queue_drain
.LVL337:
	.loc 1 1738 13 discriminator 4
	.loc 1 1738 31 is_stmt 0 discriminator 4
	lui	a5,%hi(.LANCHOR38)
	sb	zero,%lo(.LANCHOR38)(a5)
	.loc 1 1739 13 is_stmt 1 discriminator 4
.LVL338:
	.loc 1 1741 13 discriminator 4
	.loc 1 1741 59 is_stmt 0 discriminator 4
	li	a5,3
	bne	s0,zero,.L358
	.loc 1 1741 59
	li	a5,5
.L358:
.LVL339:
	.loc 1 1742 13 is_stmt 1 discriminator 4
	.loc 1 1739 29 is_stmt 0 discriminator 4
	lw	a3,160(sp)
	.loc 1 1742 40 discriminator 4
	lw	a4,0(s1)
	.loc 1 1739 29 discriminator 4
	sw	a3,232(sp)
	.loc 1 1742 16 discriminator 4
	bltu	a4,a5,.L356
	.loc 1 1743 17 is_stmt 1
	.loc 1 1743 42 is_stmt 0
	lui	a5,%hi(.LANCHOR61)
.LVL340:
	addi	a5,a5,%lo(.LANCHOR61)
	lw	a4,0(a5)
	.loc 1 1744 17
	lui	a0,%hi(.LC48)
	addi	a0,a0,%lo(.LC48)
	.loc 1 1743 42
	addi	a4,a4,1
	sw	a4,0(a5)
	.loc 1 1744 17 is_stmt 1
	lw	a1,0(s1)
	call	printf
.LVL341:
	.loc 1 1746 17
	.loc 1 1747 34 is_stmt 0
	li	a5,1
	.loc 1 1746 40
	sw	zero,0(s1)
	.loc 1 1747 17 is_stmt 1
	.loc 1 1747 34 is_stmt 0
	sb	a5,0(s7)
.LVL342:
.L356:
.LBE369:
	.loc 1 1751 9 is_stmt 1
	.loc 1 1751 13 is_stmt 0
	lw	a5,240(sp)
	lbu	a5,0(a5)
	andi	a5,a5,0xff
	.loc 1 1751 12
	beq	a5,zero,.L359
.LBB370:
	.loc 1 1752 13 is_stmt 1
.LBB371:
.LBB372:
	.loc 1 188 4
	.loc 1 189 5
	.loc 1 190 38 is_stmt 0
	lui	s0,%hi(.LANCHOR6)
.LVL343:
	addi	s0,s0,%lo(.LANCHOR6)
	.loc 1 189 5
	call	vTaskEnterCritical
.LVL344:
	.loc 1 190 5 is_stmt 1
	.loc 1 190 38 is_stmt 0
	lbu	s1,0(s0)
	.loc 1 191 5
	call	vTaskExitCritical
.LVL345:
.LBE372:
.LBE371:
	.loc 1 1752 16
	li	a5,4
.LBB374:
.LBB373:
	.loc 1 190 38
	andi	s1,s1,0xff
.LVL346:
	.loc 1 191 5 is_stmt 1
	.loc 1 192 5
.LBE373:
.LBE374:
	.loc 1 1752 16 is_stmt 0
	bne	s1,a5,.L360
	.loc 1 1753 17 is_stmt 1
	lui	a0,%hi(.LC49)
	addi	a0,a0,%lo(.LC49)
	call	printf
.LVL347:
	.loc 1 1754 17
.L618:
	.loc 1 1777 17
	mv	s0,s10
.LVL348:
.L361:
	.loc 1 1754 17 is_stmt 0
	mv	s10,s0
	j	.L243
.LVL349:
.L426:
.LBE370:
.LBB423:
.LBB351:
.LBB284:
	mv	s3,a4
.LVL350:
	j	.L251
.LVL351:
.L599:
.LBE284:
.LBE351:
.LBB352:
.LBB348:
	.loc 1 348 19
	beq	a5,zero,.L253
.LBB344:
	.loc 1 352 19
	li	a4,0
	.loc 1 353 12
	li	a2,165
	.loc 1 352 5
	li	a3,32
.L257:
.LVL352:
	.loc 1 353 9 is_stmt 1
	.loc 1 353 12 is_stmt 0
	lrbu	a1,a5,a4,0
	bne	a1,a2,.L427
	.loc 1 352 35 is_stmt 1
	.loc 1 352 36 is_stmt 0
	addi	a4,a4,1
.LVL353:
	.loc 1 352 26 is_stmt 1
	.loc 1 352 5 is_stmt 0
	bne	a4,a3,.L257
.LBE344:
.LBB345:
	.loc 1 362 17
	lw	a3,332(sp)
	.loc 1 361 19
	li	a4,0
.LVL354:
	.loc 1 362 12
	li	a1,165
	.loc 1 362 17
	add	a2,a5,a3
	.loc 1 361 5
	li	a3,32
.L258:
.LVL355:
	.loc 1 362 9 is_stmt 1
	.loc 1 362 12 is_stmt 0
	lrbu	a0,a2,a4,0
	bne	a0,a1,.L428
	.loc 1 361 35 is_stmt 1
	.loc 1 361 36 is_stmt 0
	addi	a4,a4,1
.LVL356:
	.loc 1 361 26 is_stmt 1
	.loc 1 361 5 is_stmt 0
	bne	a4,a3,.L258
.LVL357:
.LBE345:
.LBE348:
.LBE352:
	.loc 1 1664 13 is_stmt 1
	lui	s0,%hi(.LANCHOR17)
	addi	a5,s0,%lo(.LANCHOR17)
	lbu	a0,0(a5)
.LVL358:
.LBB353:
.LBB337:
	.loc 1 1225 5
	.loc 1 1229 5
	.loc 1 1229 25 is_stmt 0
	lui	a5,%hi(.LANCHOR42)
	addi	a5,a5,%lo(.LANCHOR42)
	lw	a4,0(a5)
	.loc 1 1230 15
	andi	a0,a0,0xff
	.loc 1 1229 25
	addi	a4,a4,1
	sw	a4,0(a5)
	.loc 1 1230 5 is_stmt 1
	.loc 1 1230 15 is_stmt 0
	call	sanitize_iso_pkt_cap
.LVL359:
	.loc 1 1232 40
	lw	a5,24(s1)
	.loc 1 1230 15
	sw	a0,160(sp)
.LVL360:
	.loc 1 1232 5 is_stmt 1
	.loc 1 1232 40 is_stmt 0
	sw	a5,236(sp)
.LVL361:
	.loc 1 1233 5 is_stmt 1
	.loc 1 1234 5
	addi	a5,s0,%lo(.LANCHOR17)
.LVL362:
	sw	a5,464(sp)
	.loc 1 1234 8 is_stmt 0
	lw	a5,236(sp)
	beq	a5,zero,.L410
	.loc 1 1233 15
	lw	a4,236(sp)
	lw	a5,28(s1)
	add	a5,a4,a5
	sw	a5,300(sp)
	.loc 1 1234 31
	mv	a5,a4
	lw	a4,300(sp)
	bltu	a5,a4,.L261
.L410:
	.loc 1 1235 9 is_stmt 1
	.loc 1 1235 32 is_stmt 0
	lui	a5,%hi(.LANCHOR47)
	addi	a5,a5,%lo(.LANCHOR47)
	lw	a4,0(a5)
	.loc 1 1236 9
	lui	a0,%hi(.LC38)
	addi	a0,a0,%lo(.LC38)
	.loc 1 1235 32
	addi	a4,a4,1
	sw	a4,0(a5)
	.loc 1 1236 9 is_stmt 1
	call	printf
.LVL363:
	.loc 1 1237 9
.L341:
	.loc 1 1305 5
	lw	a1,160(sp)
	mv	a0,s1
.LBE337:
.LBE353:
	.loc 1 1667 17 is_stmt 0
	lui	s0,%hi(.LANCHOR19)
.LBB354:
.LBB338:
	.loc 1 1305 5
	call	reset_iso_packets
.LVL364:
.LBE338:
.LBE354:
	.loc 1 1667 13 is_stmt 1
	.loc 1 1667 17 is_stmt 0
	addi	s0,s0,%lo(.LANCHOR19)
	lbu	a5,0(s0)
	andi	a5,a5,0xff
	.loc 1 1667 16
	bne	a5,zero,.L256
	.loc 1 1667 47 discriminator 1
	lw	a5,220(sp)
	.loc 1 1667 32 discriminator 1
	li	a4,2
	.loc 1 1667 47 discriminator 1
	lbu	a5,0(a5)
	andi	a5,a5,0xff
	.loc 1 1667 32 discriminator 1
	bne	a5,a4,.L256
.LBB355:
	.loc 1 1668 17 is_stmt 1
	.loc 1 1668 22 is_stmt 0
	lw	a5,464(sp)
	lw	a4,144(sp)
	mv	a2,s9
	lbu	a3,0(a5)
	lw	a5,472(sp)
	mv	a0,s1
	andi	a3,a3,0xff
	lrw	a1,a5,s3,2
	call	rebuild_iso_packet_descriptors
.LVL365:
	mv	s6,a0
	.loc 1 1668 20
	bne	a0,zero,.L343
	.loc 1 1672 21 is_stmt 1
	lui	a0,%hi(.LC44)
	mv	a1,s3
	addi	a0,a0,%lo(.LC44)
	call	printf
.LVL366:
	.loc 1 1673 21
	li	a0,3
	call	set_cam_state
.LVL367:
	.loc 1 1674 21
	.loc 1 1674 35 is_stmt 0
	li	a5,1
	sb	a5,0(s0)
	j	.L615
.LVL368:
.L446:
.LBE355:
	.loc 1 1655 17
	lui	a2,%hi(.LC19)
	addi	a2,a2,%lo(.LC19)
	j	.L408
.LVL369:
.L261:
.LBB356:
.LBB339:
	.loc 1 1241 5 is_stmt 1
	.loc 1 1241 14 is_stmt 0
	lw	a5,48(s1)
.LVL370:
	sw	a5,184(sp)
.LVL371:
	.loc 1 1242 5 is_stmt 1
	.loc 1 1242 8 is_stmt 0
	beq	a5,zero,.L263
	.loc 1 1242 24
	lw	a5,160(sp)
.LVL372:
	lw	a4,184(sp)
	bgeu	a5,a4,.L264
.L263:
	.loc 1 1243 9 is_stmt 1
	.loc 1 1243 32 is_stmt 0
	lui	a5,%hi(.LANCHOR44)
	addi	a5,a5,%lo(.LANCHOR44)
	lw	a4,0(a5)
	.loc 1 1244 9
	lw	a2,160(sp)
	lw	a1,184(sp)
	lui	a0,%hi(.LC39)
	.loc 1 1243 32
	addi	a4,a4,1
	.loc 1 1244 9
	addi	a0,a0,%lo(.LC39)
	.loc 1 1243 32
	sw	a4,0(a5)
	.loc 1 1244 9 is_stmt 1
	call	printf
.LVL373:
	.loc 1 1246 9
	.loc 1 1247 9
	.loc 1 1247 33 is_stmt 0
	lw	a5,160(sp)
	sw	a5,48(s1)
	.loc 1 1242 37
	sw	a5,184(sp)
.LVL374:
.L264:
	.loc 1 1250 4 is_stmt 1
	.loc 1 1251 4
	.loc 1 1253 5
.LBB287:
	.loc 1 1253 10
	addi	s4,s1,64
	.loc 1 1253 5 is_stmt 0
	sw	zero,260(sp)
.LBE287:
	.loc 1 1251 9
	sw	zero,256(sp)
	.loc 1 1250 9
	li	s6,0
.LVL375:
.L265:
.LBB334:
	.loc 1 1253 26 is_stmt 1
	.loc 1 1253 5 is_stmt 0
	lw	a5,184(sp)
	bne	s8,a5,.L339
.LBE334:
	.loc 1 1298 5 is_stmt 1
	.loc 1 1298 8 is_stmt 0
	beq	s6,zero,.L340
	.loc 1 1299 9 is_stmt 1
	.loc 1 1299 34 is_stmt 0
	lui	a5,%hi(.LANCHOR39)
	addi	a5,a5,%lo(.LANCHOR39)
	lw	a2,0(a5)
	lw	a3,4(a5)
	li	a0,1
	li	a1,0
	add64	a2,a2,a0
	sw	a2,0(a5)
	sw	a3,4(a5)
.L340:
	.loc 1 1301 5 is_stmt 1
	.loc 1 1301 8 is_stmt 0
	lw	a5,256(sp)
	beq	a5,zero,.L341
	.loc 1 1302 9 is_stmt 1
	call	note_packet_error_for_current_frame
.LVL376:
	j	.L341
.L339:
.LBB335:
.LBB288:
	.loc 1 1254 9
.LVL377:
	.loc 1 1255 9
	.loc 1 1255 18 is_stmt 0
	lw	a5,260(sp)
	lw	a3,24(s1)
	add	a3,a3,a5
.LVL378:
	.loc 1 1257 9 is_stmt 1
	.loc 1 1258 9
	.loc 1 1258 12 is_stmt 0
	lw	a5,0(s4)
	bne	a3,a5,.L266
	.loc 1 1258 50
	lw	a5,4(s4)
	beq	a5,s9,.L267
.L266:
	.loc 1 1260 13 is_stmt 1
	.loc 1 1262 36 is_stmt 0
	lui	a5,%hi(.LANCHOR49)
	addi	a5,a5,%lo(.LANCHOR49)
	lw	a4,0(a5)
	.loc 1 1260 34
	sw	a3,0(s4)
	.loc 1 1261 13 is_stmt 1
	.loc 1 1261 41 is_stmt 0
	sw	s9,4(s4)
	.loc 1 1262 13 is_stmt 1
	.loc 1 1262 36 is_stmt 0
	addi	a4,a4,1
	sw	a4,0(a5)
	.loc 1 1263 13 is_stmt 1
	.loc 1 1263 42 is_stmt 0
	lw	a5,0(a5)
	.loc 1 1263 16
	li	a4,1
	.loc 1 1263 42
	andi	a5,a5,63
	.loc 1 1263 16
	bne	a5,a4,.L267
	.loc 1 1264 17 is_stmt 1
	lui	a5,%hi(.LC40)
	mv	a4,s9
	mv	a2,s8
	mv	a1,s3
	addi	a0,a5,%lo(.LC40)
	call	printf
.LVL379:
.L267:
	.loc 1 1269 9
	.loc 1 1269 16 is_stmt 0
	lw	a5,12(s4)
	sw	a5,252(sp)
	.loc 1 1269 12
	bne	a5,zero,.L429
	.loc 1 1274 9 is_stmt 1
	.loc 1 1274 16 is_stmt 0
	lw	a3,8(s4)
	.loc 1 1274 12
	beq	a3,zero,.L269
.LBB289:
	.loc 1 1275 13 is_stmt 1
.LVL380:
	.loc 1 1276 13
	.loc 1 1277 13
	.loc 1 1277 16 is_stmt 0
	bleu	a3,s9,.L270
	.loc 1 1278 17 is_stmt 1
	.loc 1 1278 38 is_stmt 0
	lui	a5,%hi(.LANCHOR45)
	addi	a5,a5,%lo(.LANCHOR45)
	lw	a4,0(a5)
	.loc 1 1279 17
	lui	a0,%hi(.LC41)
	mv	a1,a3
	.loc 1 1278 38
	addi	a4,a4,1
	.loc 1 1279 17
	mv	a2,s9
	addi	a0,a0,%lo(.LC41)
	.loc 1 1278 38
	sw	a4,0(a5)
	.loc 1 1279 17 is_stmt 1
	call	printf
.LVL381:
	.loc 1 1281 17
	.loc 1 1279 17 is_stmt 0
	mv	a3,s9
.LVL382:
.L270:
	.loc 1 1283 13 is_stmt 1
	.loc 1 1283 48 is_stmt 0
	lw	a2,0(s4)
.LVL383:
	.loc 1 1284 13 is_stmt 1
	.loc 1 1285 16 is_stmt 0
	lw	a4,236(sp)
	.loc 1 1284 23
	add	a5,a2,a3
.LVL384:
	.loc 1 1285 13 is_stmt 1
	.loc 1 1285 16 is_stmt 0
	bgtu	a4,a2,.L271
	.loc 1 1285 37
	lw	a4,300(sp)
	bltu	a4,a5,.L271
	.loc 1 1285 58
	bleu	a2,a5,.L272
.L271:
	.loc 1 1286 17 is_stmt 1
	.loc 1 1286 39 is_stmt 0
	lui	a5,%hi(.LANCHOR46)
.LVL385:
	addi	a4,a5,%lo(.LANCHOR46)
	lw	a5,0(a4)
	.loc 1 1288 17
	mv	a1,s8
	.loc 1 1286 39
	addi	a5,a5,1
	sw	a5,0(a4)
	.loc 1 1287 17 is_stmt 1
.LVL386:
	.loc 1 1288 17
	lui	a5,%hi(.LC42)
	addi	a0,a5,%lo(.LC42)
	call	printf
.LVL387:
	.loc 1 1290 17
	.loc 1 1287 31 is_stmt 0
	lw	a5,140(sp)
	sw	a5,256(sp)
	.loc 1 1275 25
	mv	s6,a5
.LVL388:
.L269:
.LBE289:
.LBE288:
	.loc 1 1253 41 is_stmt 1
	lw	a5,260(sp)
	.loc 1 1253 42 is_stmt 0
	addi	s8,s8,1
.LVL389:
	addi	s4,s4,16
	add	a5,a5,s9
	sw	a5,260(sp)
	j	.L265
.LVL390:
.L272:
.LBB332:
.LBB330:
	.loc 1 1292 13 is_stmt 1
	.loc 1 1275 25 is_stmt 0
	lw	s6,140(sp)
	.loc 1 1292 32
	beq	a2,zero,.L269
	.loc 1 1293 17 is_stmt 1
.LVL391:
.LBB290:
.LBB291:
	.loc 1 915 5
	.loc 1 915 24 is_stmt 0
	lui	a5,%hi(.LANCHOR54)
.LVL392:
	addi	a4,a5,%lo(.LANCHOR54)
	lw	a5,0(a4)
	.loc 1 916 27
	sw	a3,304(sp)
	sw	zero,308(sp)
	.loc 1 915 24
	addi	a5,a5,1
	sw	a5,0(a4)
	.loc 1 916 5 is_stmt 1
	.loc 1 916 27 is_stmt 0
	lui	a5,%hi(.LANCHOR55)
	addi	a5,a5,%lo(.LANCHOR55)
	lw	a0,0(a5)
	lw	a6,304(sp)
	lw	a1,4(a5)
	lw	a7,308(sp)
	add64	a0,a6,a0
	sw	a0,0(a5)
	sw	a1,4(a5)
	.loc 1 918 5 is_stmt 1
	.loc 1 918 8 is_stmt 0
	li	a5,1
	bne	a3,a5,.L273
	.loc 1 919 9 is_stmt 1
	.loc 1 919 26 is_stmt 0
	lui	a5,%hi(.LANCHOR50)
	addi	a5,a5,%lo(.LANCHOR50)
	lw	a4,0(a5)
	addi	a4,a4,1
	sw	a4,0(a5)
	.loc 1 920 9 is_stmt 1
	call	note_packet_error_for_current_frame
.LVL393:
	.loc 1 921 9
	j	.L269
.LVL394:
.L273:
	.loc 1 924 5
	.loc 1 924 13 is_stmt 0
	lbu	s5,0(a2)
.LVL395:
	.loc 1 925 5 is_stmt 1
	.loc 1 927 5
	.loc 1 927 8 is_stmt 0
	li	a4,10
	.loc 1 927 24
	addi	a5,s5,-2
	.loc 1 927 8
	andi	a5,a5,0xff
	bgtu	a5,a4,.L274
	.loc 1 927 43
	bgeu	a3,s5,.L275
.L274:
	.loc 1 928 9 is_stmt 1
	.loc 1 928 28 is_stmt 0
	lui	a5,%hi(.LANCHOR51)
	addi	a5,a5,%lo(.LANCHOR51)
	lw	a4,0(a5)
	addi	a4,a4,1
	sw	a4,0(a5)
	.loc 1 929 9 is_stmt 1
	call	note_packet_error_for_current_frame
.LVL396:
	.loc 1 930 9
.L613:
.LBB292:
	.loc 1 1076 13
.LBE292:
.LBE291:
.LBE290:
	.loc 1 1275 25 is_stmt 0
	lw	s6,140(sp)
.LBB328:
.LBB326:
.LBB311:
	.loc 1 1076 13
	j	.L269
.LVL397:
.L275:
.LBE311:
	.loc 1 925 13
	lbu	s6,1(a2)
	.loc 1 934 5 is_stmt 1
	.loc 1 939 20 is_stmt 0
	add	s2,a2,s5
	.loc 1 940 14
	sub	s0,a3,s5
	.loc 1 934 13
	andi	a5,s6,1
	sw	a5,312(sp)
.LVL398:
	.loc 1 935 5 is_stmt 1
	.loc 1 935 13 is_stmt 0
	extu	a0,s6,1+1-1,1
	andi	a5,s6,64
	sw	a5,336(sp)
	sw	a0,208(sp)
.LVL399:
	.loc 1 936 5 is_stmt 1
	.loc 1 939 5
	.loc 1 940 5
	.loc 1 941 4
	.loc 1 941 46 is_stmt 0
	li	a5,0
	beq	a3,s5,.L276
	.loc 1 941 57
	add	a5,s2,s0
	.loc 1 941 46
	lbu	a5,-1(a5)
	addi	a5,a5,-255
	seqz	a5,a5
.L276:
	.loc 1 943 24
	lui	s7,%hi(.LANCHOR38)
	.loc 1 941 9
	sw	a5,176(sp)
.LVL400:
	.loc 1 943 4 is_stmt 1
	.loc 1 943 42 is_stmt 0
	lbu	a5,%lo(.LANCHOR38)(s7)
	lui	a4,%hi(.LANCHOR65)
	addi	s7,s7,%lo(.LANCHOR38)
	addi	s6,a4,%lo(.LANCHOR65)
	beq	a5,zero,.L278
.LVL401:
	.loc 1 944 5 is_stmt 1
	.loc 1 944 8 is_stmt 0
	lbu	a5,0(s6)
	lw	a4,312(sp)
	beq	a5,a4,.L278
	.loc 1 945 9 is_stmt 1
	.loc 1 945 31 is_stmt 0
	lui	a5,%hi(.LANCHOR53)
	addi	a5,a5,%lo(.LANCHOR53)
	lw	a4,0(a5)
	addi	a4,a4,1
	sw	a4,0(a5)
	.loc 1 946 9 is_stmt 1
	.loc 1 946 12 is_stmt 0
	lui	a5,%hi(.LANCHOR8)
	lbu	a5,%lo(.LANCHOR8)(a5)
	beq	a5,zero,.L278
	.loc 1 946 45
	lui	a5,%hi(.LANCHOR9)
	addi	a4,a5,%lo(.LANCHOR9)
	lw	a1,4(a4)
	.loc 1 946 31
	beq	a1,zero,.L278
	.loc 1 947 13 is_stmt 1
	.loc 1 947 17 is_stmt 0
	lui	a5,%hi(.LANCHOR12)
	addi	a5,a5,%lo(.LANCHOR12)
	.loc 1 947 16
	lbu	a3,0(a5)
.LVL402:
	beq	a3,zero,.L280
	sw	a2,476(sp)
	.loc 1 949 17 is_stmt 1
.LVL403:
.L610:
	.loc 1 953 17 is_stmt 0
	call	finalize_current_frame
.LVL404:
	lw	a2,476(sp)
.LVL405:
.L278:
	.loc 1 962 5 is_stmt 1
	.loc 1 962 16 is_stmt 0
	lw	a5,312(sp)
	sb	a5,0(s6)
	.loc 1 963 5 is_stmt 1
	.loc 1 963 23 is_stmt 0
	li	a5,1
	sb	a5,0(s7)
	.loc 1 968 5 is_stmt 1
	.loc 1 968 8 is_stmt 0
	lw	a5,336(sp)
	beq	a5,zero,.L282
	.loc 1 969 9 is_stmt 1
	.loc 1 969 30 is_stmt 0
	lui	a5,%hi(.LANCHOR52)
	addi	a5,a5,%lo(.LANCHOR52)
	lw	a4,0(a5)
	addi	a4,a4,1
	sw	a4,0(a5)
	.loc 1 970 9 is_stmt 1
	call	note_packet_error_for_current_frame
.LVL406:
	.loc 1 971 9
	.loc 1 971 12 is_stmt 0
	lw	a5,208(sp)
	beq	a5,zero,.L283
	.loc 1 971 17
	lui	a5,%hi(.LANCHOR8)
	lbu	a5,%lo(.LANCHOR8)(a5)
	beq	a5,zero,.L283
	.loc 1 971 52
	lui	a5,%hi(.LANCHOR9)
	addi	a5,a5,%lo(.LANCHOR9)
	lw	a1,4(a5)
	.loc 1 971 38
	beq	a1,zero,.L283
	.loc 1 972 13 is_stmt 1
	.loc 1 972 16 is_stmt 0
	lui	a4,%hi(.LANCHOR12)
	lbu	a4,%lo(.LANCHOR12)(a4)
	beq	a4,zero,.L284
	.loc 1 973 17
	lw	a0,0(a5)
	call	find_jpeg_eoi
.LVL407:
	.loc 1 972 37
	blt	a0,zero,.L284
	.loc 1 974 17 is_stmt 1
	li	a0,1
	call	finalize_current_frame
.LVL408:
.L283:
	.loc 1 980 9
	.loc 1 980 31 is_stmt 0
	lui	a5,%hi(.LANCHOR15)
	sb	zero,%lo(.LANCHOR15)(a5)
	.loc 1 981 9 is_stmt 1
	j	.L613
.LVL409:
.L280:
	.loc 1 950 20
	.loc 1 950 23 is_stmt 0
	lw	a5,208(sp)
	beq	a5,zero,.L281
	.loc 1 951 24
	lw	a0,0(a4)
	sw	a2,476(sp)
	call	find_jpeg_eoi
.LVL410:
	.loc 1 950 28
	lw	a2,476(sp)
	blt	a0,zero,.L281
.LVL411:
	.loc 1 952 17 is_stmt 1
	.loc 1 952 37 is_stmt 0
	lui	a5,%hi(.LANCHOR12)
	li	a4,1
	addi	a5,a5,%lo(.LANCHOR12)
	sb	a4,0(a5)
	.loc 1 953 17 is_stmt 1
	li	a0,1
	j	.L610
.L281:
	.loc 1 958 17
	.loc 1 958 42 is_stmt 0
	lui	a5,%hi(.LANCHOR59)
	addi	a5,a5,%lo(.LANCHOR59)
	lw	a4,0(a5)
	addi	a4,a4,1
	sw	a4,0(a5)
	j	.L278
.LVL412:
.L284:
	.loc 1 976 17 is_stmt 1
	.loc 1 976 36 is_stmt 0
	lui	a5,%hi(.LANCHOR33)
	addi	a5,a5,%lo(.LANCHOR33)
	lw	a4,0(a5)
	.loc 1 977 17
	li	a0,1
	.loc 1 976 36
	addi	a4,a4,1
	sw	a4,0(a5)
	.loc 1 977 17 is_stmt 1
	call	drop_current_assembly
.LVL413:
	j	.L283
.L282:
	.loc 1 984 9 is_stmt 0
	lui	a5,%hi(.LANCHOR14)
	lbu	s6,%lo(.LANCHOR14)(a5)
	sw	a2,312(sp)
.LVL414:
	.loc 1 984 5 is_stmt 1
	addi	s7,a5,%lo(.LANCHOR14)
	.loc 1 984 8 is_stmt 0
	beq	s6,zero,.L285
.LBB312:
	.loc 1 985 9 is_stmt 1
	.loc 1 985 27 is_stmt 0
	mv	a1,s0
	mv	a0,s2
	call	find_jpeg_soi
.LVL415:
	.loc 1 986 8 is_stmt 1
	lui	a5,%hi(.LANCHOR15)
	addi	a5,a5,%lo(.LANCHOR15)
	.loc 1 988 45 is_stmt 0
	bge	a0,zero,.L286
	.loc 1 986 39
	lbu	a4,0(a5)
	beq	a4,zero,.L287
	.loc 1 987 48
	beq	s0,zero,.L287
	.loc 1 988 45
	lw	a2,312(sp)
	li	a4,216
	lrbu	a3,a2,s5,0
	bne	a3,a4,.L287
.L286:
	.loc 1 991 13 is_stmt 1
	.loc 1 991 31 is_stmt 0
	lui	a4,%hi(.LANCHOR57)
	addi	a4,a4,%lo(.LANCHOR57)
	lw	a3,0(a4)
	.loc 1 992 35
	sb	zero,0(s7)
	.loc 1 993 35
	sb	zero,0(a5)
	.loc 1 991 31
	addi	a3,a3,1
	sw	a3,0(a4)
	.loc 1 992 13 is_stmt 1
	.loc 1 993 13
.LVL416:
.L285:
.LBE312:
	.loc 1 1002 5
	.loc 1 1002 9 is_stmt 0
	lui	s5,%hi(.LANCHOR8)
.LVL417:
	.loc 1 1002 8
	lbu	a5,%lo(.LANCHOR8)(s5)
	addi	s5,s5,%lo(.LANCHOR8)
	beq	a5,zero,.L288
	.loc 1 1002 27
	li	a5,1
	bleu	s0,a5,.L288
.LBB313:
	.loc 1 1003 9 is_stmt 1
	.loc 1 1003 32 is_stmt 0
	mv	a1,s0
	mv	a0,s2
	call	find_jpeg_soi
.LVL418:
	mv	s6,a0
.LVL419:
	.loc 1 1004 9 is_stmt 1
	.loc 1 1004 12 is_stmt 0
	blt	a0,zero,.L288
	.loc 1 1007 13 is_stmt 1
	.loc 1 1007 16 is_stmt 0
	lui	a5,%hi(.LANCHOR12)
	lbu	a5,%lo(.LANCHOR12)(a5)
	beq	a5,zero,.L289
	.loc 1 1007 37
	lui	a5,%hi(.LANCHOR11)
	lbu	a5,%lo(.LANCHOR11)(a5)
	bne	a5,zero,.L289
	.loc 1 1007 75
	lui	a5,%hi(.LANCHOR9)
	addi	a5,a5,%lo(.LANCHOR9)
	.loc 1 1007 61
	lw	a5,4(a5)
	beq	a5,zero,.L289
	.loc 1 1008 17 is_stmt 1
	li	a0,0
.LVL420:
	call	finalize_current_frame
.LVL421:
.L290:
	.loc 1 1013 13
	.loc 1 1013 31 is_stmt 0
	lui	a5,%hi(.LANCHOR57)
	addi	a5,a5,%lo(.LANCHOR57)
	lw	a4,0(a5)
	.loc 1 1014 21
	add	s2,s2,s6
.LVL422:
	.loc 1 1015 25
	sub	s0,s0,s6
.LVL423:
	.loc 1 1013 31
	addi	a4,a4,1
	sw	a4,0(a5)
	.loc 1 1014 13 is_stmt 1
.LVL424:
	.loc 1 1015 13
.L288:
.LBE313:
	.loc 1 1022 5
	.loc 1 1022 9 is_stmt 0
	lbu	s7,0(s5)
	.loc 1 1022 8
	bne	s7,zero,.L291
.LBB314:
	.loc 1 1023 9 is_stmt 1
	.loc 1 1023 27 is_stmt 0
	mv	a1,s0
	mv	a0,s2
	call	find_jpeg_soi
.LVL425:
	mv	s6,a0
.LVL426:
	.loc 1 1024 8 is_stmt 1
	.loc 1 1026 45 is_stmt 0
	bge	a0,zero,.L292
	.loc 1 1024 39
	lui	a5,%hi(.LANCHOR15)
	lbu	a4,%lo(.LANCHOR15)(a5)
	addi	a5,a5,%lo(.LANCHOR15)
	beq	a4,zero,.L293
	.loc 1 1025 48
	beq	s0,zero,.L293
	.loc 1 1026 45
	lbu	a3,0(s2)
	li	a4,216
	beq	a3,a4,.L432
.L293:
.LVL427:
	.loc 1 1029 9 is_stmt 1
	.loc 1 1030 13
	.loc 1 1030 35 is_stmt 0
	lw	a4,176(sp)
	sb	a4,0(a5)
	.loc 1 1031 13 is_stmt 1
	j	.L613
.LVL428:
.L287:
.LBE314:
.LBB317:
	.loc 1 990 9
	.loc 1 995 13
	.loc 1 995 35 is_stmt 0
	lw	a4,176(sp)
	sb	a4,0(a5)
	.loc 1 996 13 is_stmt 1
	j	.L269
.LVL429:
.L289:
.LBE317:
.LBB318:
	.loc 1 1010 17
	.loc 1 1010 44 is_stmt 0
	lui	a5,%hi(.LANCHOR58)
	addi	a5,a5,%lo(.LANCHOR58)
	lw	a4,0(a5)
	.loc 1 1011 17
	li	a0,0
.LVL430:
	.loc 1 1010 44
	addi	a4,a4,1
	sw	a4,0(a5)
	.loc 1 1011 17 is_stmt 1
	call	drop_current_assembly
.LVL431:
	j	.L290
.LVL432:
.L432:
.LBE318:
.LBB319:
	.loc 1 1026 45 is_stmt 0
	li	a5,1
	sw	a5,252(sp)
.L292:
	.loc 1 1034 8 is_stmt 1
.LVL433:
	.loc 1 1035 9
.LBB315:
.LBB316:
	.loc 1 886 5
	.loc 1 887 9
	.loc 1 890 5
	.loc 1 890 9 is_stmt 0
	lui	a5,%hi(.LANCHOR9)
	addi	a0,a5,%lo(.LANCHOR9)
.LVL434:
	call	frame_alloc
.LVL435:
	.loc 1 890 8
	beq	a0,zero,.L295
	.loc 1 894 5 is_stmt 1
	.loc 1 894 9 is_stmt 0
	call	frame_queue_drop_oldest
.LVL436:
	.loc 1 894 8
	beq	a0,zero,.L296
	.loc 1 894 38
	lui	a5,%hi(.LANCHOR9)
	addi	a0,a5,%lo(.LANCHOR9)
	call	frame_alloc
.LVL437:
	.loc 1 894 35
	beq	a0,zero,.L297
.L296:
	.loc 1 901 5 is_stmt 1
	.loc 1 902 5 is_stmt 0
	addi	a2,sp,500
	li	a1,0
	li	a0,0
	.loc 1 901 14
	sw	zero,500(sp)
	.loc 1 902 5 is_stmt 1
	call	frame_pool_stats
.LVL438:
	.loc 1 903 5
	.loc 1 903 8 is_stmt 0
	lw	a5,500(sp)
	beq	a5,zero,.L298
	.loc 1 904 9 is_stmt 1
	call	frame_queue_drain
.LVL439:
	.loc 1 905 9
	.loc 1 906 13
	.loc 1 906 28 is_stmt 0
	lw	s7,140(sp)
.LVL440:
.L298:
	.loc 1 910 5 is_stmt 1
	.loc 1 910 12 is_stmt 0
	lui	a5,%hi(.LANCHOR9)
	addi	a0,a5,%lo(.LANCHOR9)
	call	frame_alloc
.LVL441:
.LBE316:
.LBE315:
	.loc 1 1035 12
	beq	a0,zero,.L299
.LVL442:
.L614:
.LBE319:
.LBB320:
	.loc 1 1075 13 is_stmt 1
	.loc 1 1075 35 is_stmt 0
	lw	a4,176(sp)
	lui	a5,%hi(.LANCHOR15)
	sb	a4,%lo(.LANCHOR15)(a5)
	j	.L613
.LVL443:
.L299:
.LBE320:
.LBB321:
	.loc 1 1040 9 is_stmt 1
	.loc 1 1040 12 is_stmt 0
	beq	s7,zero,.L295
.LVL444:
.L297:
	.loc 1 1041 13 is_stmt 1
	.loc 1 1041 34 is_stmt 0
	lui	a5,%hi(.LANCHOR41)
	addi	a5,a5,%lo(.LANCHOR41)
	lw	a4,0(a5)
	addi	a4,a4,1
	sw	a4,0(a5)
	.loc 1 1042 13 is_stmt 1
	.loc 1 1042 40 is_stmt 0
	lw	a4,0(a5)
	andi	a4,a4,63
	.loc 1 1042 16
	bne	a4,zero,.L295
	.loc 1 1043 17 is_stmt 1
	lw	a1,0(a5)
	lui	a0,%hi(.LC43)
	addi	a0,a0,%lo(.LC43)
	call	printf
.LVL445:
.L295:
	.loc 1 1047 9
	.loc 1 1047 25 is_stmt 0
	lui	a4,%hi(.LANCHOR9)
	addi	a5,a4,%lo(.LANCHOR9)
	sw	zero,4(a5)
	.loc 1 1048 9 is_stmt 1
	.loc 1 1048 27 is_stmt 0
	li	a5,1
	sb	a5,0(s5)
	.loc 1 1049 9 is_stmt 1
	.loc 1 1049 30 is_stmt 0
	lui	a5,%hi(.LANCHOR10)
	sb	zero,%lo(.LANCHOR10)(a5)
	.loc 1 1050 9 is_stmt 1
	.loc 1 1050 29 is_stmt 0
	lui	a5,%hi(.LANCHOR11)
	sb	zero,%lo(.LANCHOR11)(a5)
	.loc 1 1051 9 is_stmt 1
	.loc 1 1051 29 is_stmt 0
	lui	a5,%hi(.LANCHOR12)
	sb	zero,%lo(.LANCHOR12)(a5)
	.loc 1 1052 9 is_stmt 1
	.loc 1 1052 32 is_stmt 0
	lui	a5,%hi(.LANCHOR13)
	sh	zero,%lo(.LANCHOR13)(a5)
	.loc 1 1054 9 is_stmt 1
	.loc 1 1054 12 is_stmt 0
	lw	a5,252(sp)
	beq	a5,zero,.L301
	.loc 1 1055 13 is_stmt 1
	.loc 1 1055 24 is_stmt 0
	addi	a5,a4,%lo(.LANCHOR9)
	lw	a5,0(a5)
	mv	a3,a4
	.loc 1 1055 33
	li	a4,-1
	sb	a4,0(a5)
	.loc 1 1056 13 is_stmt 1
	.loc 1 1056 24 is_stmt 0
	addi	a5,a3,%lo(.LANCHOR9)
	lw	a5,0(a5)
	.loc 1 1056 33
	li	a4,-40
	.loc 1 1058 21
	addi	s2,s2,1
.LVL446:
	.loc 1 1056 33
	sb	a4,1(a5)
	.loc 1 1057 13 is_stmt 1
	.loc 1 1057 29 is_stmt 0
	li	a5,2
	addi	a4,a3,%lo(.LANCHOR9)
	sw	a5,4(a4)
	.loc 1 1058 13 is_stmt 1
.LVL447:
	.loc 1 1059 13
	.loc 1 1060 31 is_stmt 0
	lui	a5,%hi(.LANCHOR57)
	addi	a5,a5,%lo(.LANCHOR57)
	lw	a4,0(a5)
	.loc 1 1059 25
	addi	s0,s0,-1
.LVL448:
	.loc 1 1060 13 is_stmt 1
	.loc 1 1060 31 is_stmt 0
	addi	a4,a4,1
	sw	a4,0(a5)
.LVL449:
.L291:
.LBE321:
	.loc 1 1068 5 is_stmt 1
	.loc 1 1068 8 is_stmt 0
	beq	s0,zero,.L607
.LBB322:
	.loc 1 1069 9 is_stmt 1
	.loc 1 1069 18 is_stmt 0
	lui	a4,%hi(.LANCHOR9)
	addi	a5,a4,%lo(.LANCHOR9)
	lw	s5,4(a5)
.LVL450:
	.loc 1 1070 9 is_stmt 1
	.loc 1 1071 9
	.loc 1 1070 18 is_stmt 0
	li	a5,327680
	addi	s7,a4,%lo(.LANCHOR9)
	sub	a5,a5,s5
.LVL451:
	.loc 1 1071 12
	bleu	s0,a5,.L606
	.loc 1 1072 13 is_stmt 1
	.loc 1 1072 34 is_stmt 0
	lui	a5,%hi(.LANCHOR10)
.LVL452:
	li	a4,1
	sb	a4,%lo(.LANCHOR10)(a5)
	.loc 1 1073 13 is_stmt 1
	.loc 1 1073 40 is_stmt 0
	lui	a5,%hi(.LANCHOR56)
	addi	a5,a5,%lo(.LANCHOR56)
.LVL453:
.L625:
	lw	a4,0(a5)
	.loc 1 1074 13
	li	a0,1
	.loc 1 1073 40
	addi	a4,a4,1
	sw	a4,0(a5)
	.loc 1 1074 13 is_stmt 1
	call	drop_current_assembly
.LVL454:
	j	.L614
.LVL455:
.L301:
.LBE322:
.LBB323:
	.loc 1 1062 13
	.loc 1 1062 21 is_stmt 0
	add	s2,s2,s6
.LVL456:
	.loc 1 1063 13 is_stmt 1
	.loc 1 1063 25 is_stmt 0
	sub	s0,s0,s6
.LVL457:
	j	.L291
.LVL458:
.L606:
.LBE323:
.LBB324:
	.loc 1 1079 9 is_stmt 1
	.loc 1 1079 37 is_stmt 0
	lw	a3,0(s7)
	add	a3,a3,s5
.LVL459:
.LBB293:
.LBB294:
	.file 2 ".\\components\\usb\\cherryusb\\common/usb_memcpy.h"
	.loc 2 24 5 is_stmt 1
	.loc 2 25 5
	.loc 2 26 5
	.loc 2 27 5
	.loc 2 29 5
	.loc 2 29 62 is_stmt 0
	xor	a5,a3,s2
.LVL460:
	andi	a5,a5,3
	.loc 2 29 8
	beq	a5,zero,.L433
	mv	a4,s0
	mv	a2,s2
.LVL461:
.L303:
	.loc 2 58 52
	andi	a0,a2,3
	.loc 2 58 22
	bne	a0,zero,.L315
	mv	a1,a2
	mv	a5,a3
	add	t1,a2,a4
	.loc 2 65 15
	li	a7,15
.LVL462:
.L316:
	.loc 2 65 15 is_stmt 1
	sub	a6,t1,a1
	bgtu	a6,a7,.L317
	andi	a5,a4,-16
.LVL463:
	add	a3,a3,a5
	srli	a1,a4,4
.LVL464:
	add	a2,a2,a5
.LVL465:
	li	a5,-16
	mula	a4,a1,a5
	li	a6,0
	mv	a5,a3
	.loc 2 77 15 is_stmt 0
	li	a7,3
.L318:
.LVL466:
	.loc 2 77 15 is_stmt 1
	sub	a1,a4,a6
.LVL467:
	bgtu	a1,a7,.L319
	srli	a5,a4,2
.LVL468:
	li	a1,-4
.LVL469:
	mula	a4,a5,a1
.LVL470:
	slli	a5,a5,2
	add	a3,a3,a5
	add	a5,a2,a5
.LVL471:
	j	.L321
.LVL472:
.L305:
	.loc 2 31 13
	.loc 2 31 21 is_stmt 0
	lbuia	a4,(a1),1,0
.LVL473:
	.loc 2 32 13
	addi	a5,a5,-1
.LVL474:
	.loc 2 31 19
	sbia	a4,(a3),1,0
.LVL475:
	.loc 2 32 13 is_stmt 1
.L302:
	.loc 2 30 15
	.loc 2 30 43 is_stmt 0
	andi	a0,a3,3
	.loc 2 30 15
	beq	a0,zero,.L434
	.loc 2 30 74
	bne	a5,zero,.L305
.LVL476:
.L306:
	.loc 2 89 5 is_stmt 1
.LBE294:
.LBE293:
	.loc 1 1080 9
	.loc 1 1080 25 is_stmt 0
	lw	s6,4(s7)
	add	s6,s0,s6
	sw	s6,4(s7)
	.loc 1 1084 8 is_stmt 1
.LVL477:
	.loc 1 1085 9
	.loc 1 1087 9
	.loc 1 1087 12 is_stmt 0
	bne	s5,zero,.L313
.L314:
.LBB308:
	.loc 1 1093 13 is_stmt 1
	.loc 1 1093 31 is_stmt 0
	mv	a1,s0
	mv	a0,s2
	call	find_jpeg_eoi
.LVL478:
	.loc 1 1094 13 is_stmt 1
	.loc 1 1094 16 is_stmt 0
	blt	a0,zero,.L324
	.loc 1 1095 17 is_stmt 1
.LVL479:
	.loc 1 1096 17
	.loc 1 1096 29 is_stmt 0
	addi	s5,s5,2
.LVL480:
	add	s5,s5,a0
.LVL481:
.LBE308:
	.loc 1 1100 9 is_stmt 1
	j	.L323
.LVL482:
.L433:
.LBB309:
.LBB307:
	mv	a1,s2
	mv	a5,s0
	j	.L302
.LVL483:
.L307:
	.loc 2 39 13
	.loc 2 39 21 is_stmt 0
	lw	a7,0(a4)
	.loc 2 39 19
	sw	a7,0(a2)
	.loc 2 40 13 is_stmt 1
.LVL484:
	.loc 2 40 21 is_stmt 0
	lw	a7,4(a4)
	.loc 2 40 19
	sw	a7,4(a2)
	.loc 2 41 13 is_stmt 1
.LVL485:
	.loc 2 41 21 is_stmt 0
	lw	a7,8(a4)
	addi	a4,a4,16
.LVL486:
	.loc 2 41 19
	sw	a7,8(a2)
	.loc 2 42 13 is_stmt 1
.LVL487:
	.loc 2 42 21 is_stmt 0
	lw	a7,-4(a4)
	addi	a2,a2,16
.LVL488:
	.loc 2 42 19
	sw	a7,-4(a2)
	.loc 2 43 13 is_stmt 1
.LVL489:
.L304:
	.loc 2 38 15
	sub	a7,t1,a4
	bgtu	a7,a6,.L307
	andi	a4,a5,-16
.LVL490:
	srli	a2,a5,4
.LVL491:
	add	a1,a1,a4
.LVL492:
	add	a3,a3,a4
.LVL493:
	li	a4,-16
	mula	a5,a2,a4
	li	a4,0
	.loc 2 46 15 is_stmt 0
	li	a2,3
.L308:
.LVL494:
	.loc 2 46 15 is_stmt 1
	sub	a6,a5,a4
.LVL495:
	bgtu	a6,a2,.L309
	srli	a4,a5,2
.LVL496:
	li	a2,-4
	mula	a5,a4,a2
	slli	a4,a4,2
	add	a3,a3,a4
	add	a1,a1,a4
.LVL497:
	j	.L311
.LVL498:
.L434:
	mv	a4,a1
	mv	a2,a3
	add	t1,a1,a5
	.loc 2 38 15 is_stmt 0
	li	a6,15
	j	.L304
.LVL499:
.L309:
	.loc 2 47 13 is_stmt 1
	.loc 2 47 21 is_stmt 0
	lrw	a6,a1,a4,0
.LVL500:
	.loc 2 47 19
	srw	a6,a3,a4,0
	.loc 2 48 13 is_stmt 1
.LVL501:
	addi	a4,a4,4
.LVL502:
	j	.L308
.LVL503:
.L312:
	.loc 2 55 13
	.loc 2 55 21 is_stmt 0
	lrbu	a4,a1,a0,0
	.loc 2 55 19
	srb	a4,a3,a0,0
	addi	a0,a0,1
.LVL504:
.L311:
	.loc 2 54 15 is_stmt 1
	bne	a5,a0,.L312
	j	.L306
.LVL505:
.L315:
	.loc 2 59 13
	.loc 2 59 21 is_stmt 0
	lbuia	a5,(a2),1,0
.LVL506:
	.loc 2 60 13
	addi	a4,a4,-1
.LVL507:
	.loc 2 59 19
	sbia	a5,(a3),1,0
.LVL508:
	.loc 2 60 13 is_stmt 1
	.loc 2 58 15
	bne	a4,zero,.L303
	j	.L306
.LVL509:
.L317:
	.loc 2 66 10
	lw	a6,0(a1)
.LVL510:
.LBB295:
.LBB296:
	.loc 2 16 5
	addi	a5,a5,16
.LVL511:
	.loc 2 17 17 is_stmt 0
	srli	t3,a6,8
	.loc 2 16 13
	sb	a6,-16(a5)
	.loc 2 17 5 is_stmt 1
	.loc 2 17 13 is_stmt 0
	sb	t3,-15(a5)
	.loc 2 18 5 is_stmt 1
	.loc 2 18 17 is_stmt 0
	srli	t3,a6,16
	.loc 2 19 17
	srli	a6,a6,24
.LVL512:
	.loc 2 18 13
	sb	t3,-14(a5)
	.loc 2 19 5 is_stmt 1
	.loc 2 19 13 is_stmt 0
	sb	a6,-13(a5)
.LVL513:
.LBE296:
.LBE295:
	.loc 2 67 13 is_stmt 1
	.loc 2 68 10
	lw	a6,4(a1)
.LVL514:
.LBB297:
.LBB298:
	.loc 2 16 5
	.loc 2 17 17 is_stmt 0
	srli	t3,a6,8
	.loc 2 16 13
	sb	a6,-12(a5)
	.loc 2 17 5 is_stmt 1
	.loc 2 17 13 is_stmt 0
	sb	t3,-11(a5)
	.loc 2 18 5 is_stmt 1
	.loc 2 18 17 is_stmt 0
	srli	t3,a6,16
	.loc 2 19 17
	srli	a6,a6,24
.LVL515:
	.loc 2 18 13
	sb	t3,-10(a5)
	.loc 2 19 5 is_stmt 1
	.loc 2 19 13 is_stmt 0
	sb	a6,-9(a5)
.LBE298:
.LBE297:
	.loc 2 69 13 is_stmt 1
	.loc 2 70 10
.LVL516:
	lw	a6,8(a1)
.LVL517:
.LBB299:
.LBB300:
	.loc 2 16 5
	addi	a1,a1,16
.LVL518:
	.loc 2 17 17 is_stmt 0
	srli	t3,a6,8
	.loc 2 16 13
	sb	a6,-8(a5)
	.loc 2 17 5 is_stmt 1
	.loc 2 17 13 is_stmt 0
	sb	t3,-7(a5)
	.loc 2 18 5 is_stmt 1
	.loc 2 18 17 is_stmt 0
	srli	t3,a6,16
	.loc 2 19 17
	srli	a6,a6,24
.LVL519:
	.loc 2 18 13
	sb	t3,-6(a5)
	.loc 2 19 5 is_stmt 1
	.loc 2 19 13 is_stmt 0
	sb	a6,-5(a5)
.LBE300:
.LBE299:
	.loc 2 71 13 is_stmt 1
	.loc 2 72 10
.LVL520:
	lw	a6,-4(a1)
.LVL521:
.LBB301:
.LBB302:
	.loc 2 16 5
	.loc 2 17 17 is_stmt 0
	srli	t3,a6,8
	.loc 2 16 13
	sb	a6,-4(a5)
	.loc 2 17 5 is_stmt 1
	.loc 2 17 13 is_stmt 0
	sb	t3,-3(a5)
	.loc 2 18 5 is_stmt 1
	.loc 2 18 17 is_stmt 0
	srli	t3,a6,16
	.loc 2 19 17
	srli	a6,a6,24
.LVL522:
	.loc 2 18 13
	sb	t3,-2(a5)
	.loc 2 19 5 is_stmt 1
	.loc 2 19 13 is_stmt 0
	sb	a6,-1(a5)
.LBE302:
.LBE301:
	.loc 2 73 13 is_stmt 1
.LVL523:
	.loc 2 74 13
	j	.L316
.LVL524:
.L319:
	.loc 2 78 10
	lrw	a1,a2,a6,0
.LVL525:
.LBB303:
.LBB304:
	.loc 2 16 5
.LBE304:
.LBE303:
	.loc 2 79 16 is_stmt 0
	addi	a5,a5,4
.LVL526:
	addi	a6,a6,4
.LVL527:
.LBB306:
.LBB305:
	.loc 2 17 17
	srli	t1,a1,8
	.loc 2 16 13
	sb	a1,-4(a5)
	.loc 2 17 5 is_stmt 1
	.loc 2 17 13 is_stmt 0
	sb	t1,-3(a5)
	.loc 2 18 5 is_stmt 1
	.loc 2 18 17 is_stmt 0
	srli	t1,a1,16
	.loc 2 19 17
	srli	a1,a1,24
.LVL528:
	.loc 2 18 13
	sb	t1,-2(a5)
	.loc 2 19 5 is_stmt 1
	.loc 2 19 13 is_stmt 0
	sb	a1,-1(a5)
.LVL529:
.LBE305:
.LBE306:
	.loc 2 79 13 is_stmt 1
	.loc 2 80 13
	j	.L318
.LVL530:
.L322:
	.loc 2 86 13
	.loc 2 86 21 is_stmt 0
	lrbu	a2,a5,a0,0
	.loc 2 86 19
	srb	a2,a3,a0,0
	addi	a0,a0,1
.LVL531:
.L321:
	.loc 2 85 15 is_stmt 1
	bne	a4,a0,.L322
	j	.L306
.LVL532:
.L313:
.LBE307:
.LBE309:
	.loc 1 1087 27 is_stmt 0
	lbu	a4,0(s2)
	li	a5,217
	bne	a4,a5,.L314
	.loc 1 1089 29
	lw	a5,0(s7)
	add	a5,a5,s5
	.loc 1 1088 33
	lbu	a4,-1(a5)
	li	a5,255
	bne	a4,a5,.L314
	.loc 1 1090 13 is_stmt 1
.LVL533:
	.loc 1 1091 13
	.loc 1 1091 25 is_stmt 0
	addi	s5,s5,1
.LVL534:
	.loc 1 1100 9 is_stmt 1
.L323:
	.loc 1 1100 23 is_stmt 0
	beq	s5,zero,.L324
	.loc 1 1100 43
	bltu	s6,s5,.L324
.LBB310:
	.loc 1 1101 13 is_stmt 1
	.loc 1 1106 17 is_stmt 0
	lw	a0,0(s7)
	addi	a3,sp,496
	addi	a2,sp,500
	mv	a1,s5
	.loc 1 1101 22
	sw	zero,500(sp)
	.loc 1 1102 12 is_stmt 1
	.loc 1 1102 17 is_stmt 0
	sb	zero,496(sp)
	.loc 1 1106 13 is_stmt 1
	.loc 1 1106 17 is_stmt 0
	call	locate_complete_jpeg.constprop.0
.LVL535:
	.loc 1 1106 16
	beq	a0,zero,.L324
	.loc 1 1107 76
	lbu	s6,496(sp)
	beq	s6,zero,.L324
	.loc 1 1109 34
	lw	a5,500(sp)
	.loc 1 1108 34
	beq	a5,zero,.L324
	.loc 1 1109 39
	bltu	s5,a5,.L324
	.loc 1 1111 17 is_stmt 1
	.loc 1 1111 37 is_stmt 0
	lui	a4,%hi(.LANCHOR12)
	li	a3,1
	sb	a3,%lo(.LANCHOR12)(a4)
	.loc 1 1116 17 is_stmt 1
	.loc 1 1116 20 is_stmt 0
	lw	a4,4(s7)
	beq	a5,a4,.L326
	.loc 1 1117 21 is_stmt 1
	.loc 1 1117 38 is_stmt 0
	lui	a4,%hi(.LANCHOR35)
	addi	a4,a4,%lo(.LANCHOR35)
	lw	a3,0(a4)
	.loc 1 1118 37
	sw	a5,4(s7)
	.loc 1 1117 38
	addi	a3,a3,1
	sw	a3,0(a4)
	.loc 1 1118 21 is_stmt 1
.L326:
	.loc 1 1120 17
	.loc 1 1120 20 is_stmt 0
	lw	a5,208(sp)
	lui	s0,%hi(.LANCHOR15)
.LVL536:
	addi	s0,s0,%lo(.LANCHOR15)
	bne	a5,zero,.L327
	.loc 1 1120 29 is_stmt 1
	.loc 1 1120 51 is_stmt 0
	lw	a5,176(sp)
	sb	a5,0(s0)
	.loc 1 1120 70 is_stmt 1
	j	.L269
.L327:
	.loc 1 1120 80
	li	a0,1
	call	finalize_current_frame
.LVL537:
	.loc 1 1121 17
	.loc 1 1121 39 is_stmt 0
	sb	zero,0(s0)
	.loc 1 1122 17 is_stmt 1
	j	.L269
.LVL538:
.L607:
.LBE310:
.LBE324:
	.loc 1 1128 5
	.loc 1 1128 8 is_stmt 0
	lw	a5,208(sp)
	beq	a5,zero,.L614
	.loc 1 1128 13
	lbu	a5,0(s5)
.L611:
	beq	a5,zero,.L614
	.loc 1 1128 48
	lui	a5,%hi(.LANCHOR9)
	addi	s0,a5,%lo(.LANCHOR9)
.LVL539:
	lw	a1,4(s0)
	.loc 1 1128 34
	beq	a1,zero,.L614
.LBB325:
	.loc 1 1129 9 is_stmt 1
	.loc 1 1131 24 is_stmt 0
	lw	a0,0(s0)
	addi	a3,sp,496
	addi	a2,sp,500
	.loc 1 1129 18
	sw	zero,500(sp)
	.loc 1 1130 8 is_stmt 1
	.loc 1 1130 13 is_stmt 0
	sb	zero,496(sp)
	.loc 1 1131 8 is_stmt 1
	.loc 1 1131 24 is_stmt 0
	call	locate_complete_jpeg.constprop.0
.LVL540:
	.loc 1 1134 9 is_stmt 1
	lbu	a5,496(sp)
	.loc 1 1134 12 is_stmt 0
	beq	a0,zero,.L332
	.loc 1 1134 23
	bne	a5,zero,.L333
.L334:
	.loc 1 1137 17 is_stmt 1
	.loc 1 1137 36 is_stmt 0
	lui	a5,%hi(.LANCHOR32)
	addi	a5,a5,%lo(.LANCHOR32)
	j	.L625
.L332:
	.loc 1 1136 13 is_stmt 1
	.loc 1 1136 16 is_stmt 0
	beq	a5,zero,.L334
	.loc 1 1139 17 is_stmt 1
	.loc 1 1139 36 is_stmt 0
	lui	a5,%hi(.LANCHOR33)
	addi	a5,a5,%lo(.LANCHOR33)
	j	.L625
.L333:
	.loc 1 1143 13 is_stmt 1
	.loc 1 1143 33 is_stmt 0
	li	a4,1
	lui	a5,%hi(.LANCHOR12)
	sb	a4,%lo(.LANCHOR12)(a5)
	.loc 1 1144 13 is_stmt 1
	.loc 1 1144 34 is_stmt 0
	lw	a4,500(sp)
	.loc 1 1144 16
	beq	a4,zero,.L338
	.loc 1 1144 39
	lw	a5,4(s0)
	bgeu	a4,a5,.L338
	.loc 1 1145 17 is_stmt 1
	.loc 1 1145 34 is_stmt 0
	lui	a5,%hi(.LANCHOR35)
	addi	a5,a5,%lo(.LANCHOR35)
	lw	a3,0(a5)
	.loc 1 1146 33
	sw	a4,4(s0)
	.loc 1 1145 34
	addi	a3,a3,1
	sw	a3,0(a5)
	.loc 1 1146 17 is_stmt 1
.L338:
	.loc 1 1148 13
	li	a0,1
.LVL541:
	call	finalize_current_frame
.LVL542:
.LBE325:
	.loc 1 1152 5
	j	.L614
.LVL543:
.L429:
.LBE326:
.LBE328:
.LBE330:
	.loc 1 1270 27 is_stmt 0
	lw	a5,140(sp)
	sw	a5,256(sp)
.LVL544:
	j	.L269
.LVL545:
.L343:
.LBE332:
.LBE335:
.LBE339:
.LBE356:
.LBB357:
	.loc 1 1677 17 is_stmt 1
	lw	a1,172(sp)
	mv	a2,s10
	mv	a0,s1
	call	stamp_urb_endpoints
.LVL546:
	.loc 1 1678 17
	.loc 1 1679 27 is_stmt 0
	mv	a0,s1
	.loc 1 1678 37
	sw	zero,44(s1)
	.loc 1 1679 17 is_stmt 1
	.loc 1 1679 27 is_stmt 0
	call	usbh_submit_urb
.LVL547:
	.loc 1 1680 20
	li	a5,-6
	.loc 1 1679 27
	mv	a1,a0
.LVL548:
	.loc 1 1680 17 is_stmt 1
	.loc 1 1680 20 is_stmt 0
	bne	a0,a5,.L344
	.loc 1 1681 21 is_stmt 1
	.loc 1 1681 46 is_stmt 0
	lw	a5,224(sp)
	srw	s1,a5,s3,2
	.loc 1 1682 21 is_stmt 1
	.loc 1 1682 42 is_stmt 0
	lui	a5,%hi(.LANCHOR63)
	addi	a5,a5,%lo(.LANCHOR63)
	lw	a4,0(a5)
	addi	a4,a4,1
	sw	a4,0(a5)
	.loc 1 1683 21 is_stmt 1
	j	.L256
.L344:
	.loc 1 1685 17
	.loc 1 1685 20 is_stmt 0
	bge	a0,zero,.L256
	.loc 1 1686 21 is_stmt 1
	lui	a0,%hi(.LC45)
.LVL549:
	addi	a0,a0,%lo(.LC45)
	call	printf
.LVL550:
	.loc 1 1687 21
	li	a0,3
	call	set_cam_state
.LVL551:
	.loc 1 1688 21
	.loc 1 1688 35 is_stmt 0
	li	a5,1
	sb	a5,0(s0)
	.loc 1 1689 21 is_stmt 1
	j	.L260
.LVL552:
.L603:
.LBE357:
.LBE423:
	.loc 1 1718 16
	.loc 1 1718 20 is_stmt 0
	lw	a5,240(sp)
.LVL553:
	lbu	a5,0(a5)
	andi	a5,a5,0xff
	.loc 1 1718 19
	bne	a5,zero,.L356
	.loc 1 1719 25 discriminator 1
	lw	a5,160(sp)
	lw	a4,168(sp)
	sub	a4,a5,a4
	.loc 1 1718 38 discriminator 1
	li	a5,4096
	addi	a5,a5,-97
	bleu	a4,a5,.L353
	.loc 1 1720 13 is_stmt 1
	bne	s0,zero,.L437
	lui	a2,%hi(.LC22)
	addi	a2,a2,%lo(.LC22)
.L354:
	.loc 1 1720 13 is_stmt 0 discriminator 4
	li	a1,4096
	lui	a0,%hi(.LC46)
	addi	a1,a1,-96
	addi	a0,a0,%lo(.LC46)
	call	printf
.LVL554:
	.loc 1 1722 13 is_stmt 1 discriminator 4
	.loc 1 1722 30 is_stmt 0 discriminator 4
	li	a5,1
	sb	a5,0(s7)
.L353:
	.loc 1 1725 9 is_stmt 1
	.loc 1 1727 42 is_stmt 0
	bne	s0,zero,.L356
	j	.L351
.L437:
	.loc 1 1720 13
	lui	a2,%hi(.LC21)
	addi	a2,a2,%lo(.LC21)
	j	.L354
.LVL555:
.L436:
	.loc 1 1727 42
	li	a1,4096
	addi	a1,a1,904
	j	.L350
.LVL556:
.L438:
.LBB424:
	.loc 1 1732 13
	lui	a2,%hi(.LC21)
	addi	a2,a2,%lo(.LC21)
	j	.L357
.LVL557:
.L360:
.LBE424:
.LBB425:
	.loc 1 1756 13 is_stmt 1
.LBB375:
.LBB376:
	.loc 1 197 4
	.loc 1 198 5
	call	vTaskEnterCritical
.LVL558:
	.loc 1 199 5
	.loc 1 199 30 is_stmt 0
	lbu	a5,0(s0)
	.loc 1 199 8
	li	a4,2
	.loc 1 199 30
	andi	a5,a5,0xff
	.loc 1 199 8
	bne	a5,a4,.L362
	.loc 1 200 29
	lui	a5,%hi(.LANCHOR7)
	lw	a5,%lo(.LANCHOR7)(a5)
	.loc 1 199 54
	beq	a5,zero,.L362
	.loc 1 201 9 is_stmt 1
	.loc 1 201 30 is_stmt 0
	li	a5,3
	sb	a5,0(s0)
	.loc 1 202 9 is_stmt 1
.LVL559:
.L362:
	.loc 1 204 5
	call	vTaskExitCritical
.LVL560:
	.loc 1 205 5
.LBE376:
.LBE375:
	.loc 1 1758 13
	.loc 1 1759 13 is_stmt 0
	addi	a1,sp,496
	addi	a2,sp,500
	addi	a0,sp,492
	.loc 1 1758 22
	sw	zero,492(sp)
	.loc 1 1758 38
	sw	zero,496(sp)
	.loc 1 1758 53
	sw	zero,500(sp)
	.loc 1 1759 13 is_stmt 1
	call	frame_pool_stats
.LVL561:
	.loc 1 1760 13
	.loc 1 1760 52 is_stmt 0
	lw	a5,244(sp)
	.loc 1 1761 22
	li	s1,0
.LBB377:
	.loc 1 1762 35
	lui	a3,%hi(.LANCHOR40)
.LBE377:
	.loc 1 1760 52
	lw	a1,0(a5)
	lw	a5,212(sp)
	lw	a5,0(a5)
	sub	a1,a1,a5
	.loc 1 1760 22
	andi	s0,a1,63
.LVL562:
	.loc 1 1761 13 is_stmt 1
	.loc 1 1762 13
.LBB378:
	.loc 1 1762 18
	.loc 1 1762 26 is_stmt 0
	li	a5,0
.LVL563:
.L363:
	.loc 1 1762 33 is_stmt 1 discriminator 1
	.loc 1 1762 35 is_stmt 0 discriminator 1
	addi	a4,a3,%lo(.LANCHOR40)
	lbu	a4,0(a4)
	andi	a4,a4,0xff
	.loc 1 1762 13 discriminator 1
	bgtu	a4,a5,.L365
.LBE378:
	.loc 1 1767 13 is_stmt 1
	lw	a3,492(sp)
	lw	a2,496(sp)
	lw	a1,500(sp)
	lui	a0,%hi(.LC50)
	addi	a0,a0,%lo(.LC50)
	call	printf
.LVL564:
	.loc 1 1769 13
	lui	a5,%hi(.LANCHOR63)
	lw	a3,%lo(.LANCHOR63)(a5)
	lui	a0,%hi(.LC51)
	mv	a1,s0
	mv	a2,s1
	addi	a0,a0,%lo(.LC51)
	call	printf
.LVL565:
	.loc 1 1773 13
	.loc 1 1773 46 is_stmt 0
	lui	s0,%hi(.LANCHOR66)
.LVL566:
	addi	a5,s0,%lo(.LANCHOR66)
	lbu	a5,0(a5)
	.loc 1 1773 16
	li	a4,2
	addi	s0,s0,%lo(.LANCHOR66)
	.loc 1 1773 46
	andi	a5,a5,0xff
	.loc 1 1773 16
	bleu	a5,a4,.L366
	.loc 1 1774 17 is_stmt 1
	lui	a0,%hi(.LC52)
	li	a1,3
	addi	a0,a0,%lo(.LC52)
	call	printf
.LVL567:
	.loc 1 1776 17
	li	a0,1
.LVL568:
.L620:
	call	set_cam_state
.LVL569:
	j	.L618
.LVL570:
.L365:
.LBB379:
	.loc 1 1763 17
	.loc 1 1763 20 is_stmt 0
	lw	a4,224(sp)
	lrw	a4,a4,a5,2
	beq	a4,zero,.L364
	.loc 1 1764 21 is_stmt 1
	.loc 1 1764 34 is_stmt 0
	addi	s1,s1,1
.LVL571:
.L364:
	.loc 1 1762 61 is_stmt 1 discriminator 2
	.loc 1 1762 62 is_stmt 0 discriminator 2
	addi	a5,a5,1
.LVL572:
	andi	a5,a5,0xff
.LVL573:
	j	.L363
.LVL574:
.L366:
.LBE379:
	.loc 1 1779 13 is_stmt 1
	.loc 1 1779 41 is_stmt 0
	lbu	a5,0(s0)
	.loc 1 1782 13
	lui	a0,%hi(.LC53)
	li	a2,3
	.loc 1 1779 41
	addi	a5,a5,1
	andi	a5,a5,0xff
	sb	a5,0(s0)
	.loc 1 1780 13 is_stmt 1
	.loc 1 1780 38 is_stmt 0
	lui	a5,%hi(.LANCHOR62)
	addi	a5,a5,%lo(.LANCHOR62)
	lw	a4,0(a5)
	.loc 1 1782 13
	addi	a0,a0,%lo(.LC53)
	.loc 1 1785 27
	lui	s5,%hi(.LANCHOR19)
	.loc 1 1780 38
	addi	a4,a4,1
	sw	a4,0(a5)
	.loc 1 1782 13 is_stmt 1
	lbu	a1,0(s0)
.LBB380:
	.loc 1 1787 22 is_stmt 0
	li	s3,0
	.loc 1 1789 21
	lui	s1,%hi(.LC54)
.LVL575:
.LBE380:
	.loc 1 1782 13
	andi	a1,a1,0xff
	call	printf
.LVL576:
	.loc 1 1785 13 is_stmt 1
	.loc 1 1785 27 is_stmt 0
	addi	a5,s5,%lo(.LANCHOR19)
	li	a4,1
	sb	a4,0(a5)
	.loc 1 1787 13 is_stmt 1
.LBB386:
	.loc 1 1787 18
.LVL577:
	addi	s5,s5,%lo(.LANCHOR19)
.LBB381:
	.loc 1 1801 25 is_stmt 0
	lui	s2,%hi(.LC55)
.LVL578:
.L367:
.LBE381:
	.loc 1 1787 29 is_stmt 1 discriminator 1
	.loc 1 1787 31 is_stmt 0 discriminator 1
	lui	a5,%hi(.LANCHOR40)
	addi	a5,a5,%lo(.LANCHOR40)
	lbu	a5,0(a5)
	andi	a5,a5,0xff
	.loc 1 1787 13 discriminator 1
	bgt	a5,s3,.L373
.LBE386:
	.loc 1 1806 13 is_stmt 1
.LBB387:
.LBB388:
	.loc 1 221 5
	.loc 1 221 21 is_stmt 0
	lui	a5,%hi(.LANCHOR20)
	sw	zero,%lo(.LANCHOR20)(a5)
	.loc 1 222 5 is_stmt 1
	.loc 1 222 21 is_stmt 0
	lui	a5,%hi(.LANCHOR21)
	sw	zero,%lo(.LANCHOR21)(a5)
.LBE388:
.LBE387:
.LBB389:
	.loc 1 1807 22
	li	a5,0
.L374:
.LVL579:
	.loc 1 1807 29 is_stmt 1 discriminator 1
	.loc 1 1807 31 is_stmt 0 discriminator 1
	lui	a4,%hi(.LANCHOR40)
	addi	a4,a4,%lo(.LANCHOR40)
	lbu	a4,0(a4)
	andi	a4,a4,0xff
	.loc 1 1807 13 discriminator 1
	bgt	a4,a5,.L375
.LBE389:
	.loc 1 1811 13 is_stmt 1
	.loc 1 1817 13
.LBB390:
	.loc 1 1818 17
	.loc 1 1818 23 is_stmt 0
	mv	a0,s11
	call	usbh_video_close
.LVL580:
	.loc 1 1819 17 is_stmt 1
	.loc 1 1819 48 is_stmt 0
	lui	a5,%hi(.LANCHOR67)
	lw	a5,%lo(.LANCHOR67)(a5)
	.loc 1 1819 20
	beq	a5,zero,.L376
	.loc 1 1820 21 is_stmt 1
	.loc 1 1820 48 is_stmt 0
	li	a4,1
	sb	a4,15(s11)
	.loc 1 1821 21 is_stmt 1
	.loc 1 1821 49 is_stmt 0
	sb	a4,16(s11)
	.loc 1 1822 21 is_stmt 1
	.loc 1 1822 47 is_stmt 0
	extu	a4,a5,8+8-1,8
	sb	a5,19(s11)
	sb	a4,20(s11)
	extu	a4,a5,16+8-1,16
	srli	a5,a5,24
	sb	a4,21(s11)
	sb	a5,22(s11)
.L377:
	.loc 1 1828 17 is_stmt 1
	.loc 1 1828 25 is_stmt 0
	lw	a5,216(sp)
	lbu	s3,9(a5)
.LVL581:
	.loc 1 1829 17 is_stmt 1
	.loc 1 1829 50 is_stmt 0
	lbu	a5,0(s0)
	andi	a5,a5,0xff
	.loc 1 1829 20
	beq	a5,zero,.L378
.LBB391:
	.loc 1 1830 21 is_stmt 1
.LVL582:
.LBB392:
.LBB393:
	.loc 1 547 5
	.loc 1 547 23 is_stmt 0
	lw	a5,216(sp)
	.loc 1 547 41
	lw	a4,216(sp)
	.loc 1 549 16
	li	s2,640
	.loc 1 547 23
	lhu	a5,4(a5)
	.loc 1 547 41
	lhu	a4,6(a4)
	.loc 1 547 14
	mul	a5,a5,a4
.LVL583:
	.loc 1 548 5 is_stmt 1
	.loc 1 548 8 is_stmt 0
	li	a4,307200
	bgeu	a5,a4,.L379
	.loc 1 551 5 is_stmt 1
	.loc 1 551 8 is_stmt 0
	li	a4,77824
	addi	a4,a4,-1025
	.loc 1 554 12
	li	s2,192
	.loc 1 551 8
	bleu	a5,a4,.L379
	.loc 1 552 16
	li	s2,384
.L379:
.LVL584:
.LBE393:
.LBE392:
	.loc 1 1831 21 is_stmt 1
.LBB394:
.LBB395:
	.loc 1 564 5
	.loc 1 564 24 is_stmt 0
	mv	a1,s3
	mv	a0,s11
	call	altsetting_mps
.LVL585:
	mv	s4,a0
.LVL586:
	.loc 1 565 5 is_stmt 1
	.loc 1 566 5
	.loc 1 568 5
	.loc 1 568 13 is_stmt 0
	beq	a0,zero,.L378
.LBE395:
.LBE394:
.LBE391:
	.loc 1 1828 25
	mv	s0,s3
.LBB405:
.LBB402:
.LBB400:
.LBB396:
	.loc 1 572 18
	li	s1,1
.LBE396:
	.loc 1 566 14
	li	s8,0
.LVL587:
.L380:
.LBB398:
	.loc 1 572 25 is_stmt 1
	.loc 1 572 5 is_stmt 0
	lbu	a5,92(s11)
	bgtu	a5,s1,.L382
.LVL588:
.LBE398:
.LBE400:
.LBE402:
	.loc 1 1832 21 is_stmt 1
	.loc 1 1832 24 is_stmt 0
	beq	s3,s0,.L378
.LBB403:
	.loc 1 1833 25 is_stmt 1
	.loc 1 1833 44 is_stmt 0
	mv	a1,s3
	mv	a0,s11
	call	altsetting_mps
.LVL589:
	sw	a0,168(sp)
.LVL590:
	.loc 1 1834 25 is_stmt 1
	.loc 1 1834 48 is_stmt 0
	mv	a1,s0
	mv	a0,s11
	call	altsetting_mps
.LVL591:
	.loc 1 1835 25
	lw	a2,168(sp)
	.loc 1 1834 48
	mv	a4,a0
.LVL592:
	.loc 1 1835 25 is_stmt 1
	lui	a0,%hi(.LC56)
	mv	a1,s3
	mv	a3,s0
	addi	a0,a0,%lo(.LC56)
	call	printf
.LVL593:
	.loc 1 1838 25
	.loc 1 1835 25 is_stmt 0
	mv	s3,s0
.LVL594:
.L378:
.LBE403:
.LBE405:
	.loc 1 1842 17 is_stmt 1
	.loc 1 1842 30 is_stmt 0
	lui	s4,%hi(.LANCHOR26)
	addi	a5,s4,%lo(.LANCHOR26)
	lbu	a1,8(a5)
	lhu	a3,6(a5)
	lhu	a2,4(a5)
	mv	a4,s3
	mv	a0,s11
	call	usbh_video_open
.LVL595:
	mv	a1,a0
.LVL596:
	.loc 1 1845 17 is_stmt 1
	addi	s4,s4,%lo(.LANCHOR26)
	.loc 1 1845 20 is_stmt 0
	blt	a0,zero,.L383
	.loc 1 1845 38 discriminator 1
	lw	s0,4(s11)
	.loc 1 1845 32 discriminator 1
	bne	s0,zero,.L384
.L383:
	.loc 1 1846 21 is_stmt 1
	lui	a0,%hi(.LC57)
.LVL597:
	addi	a0,a0,%lo(.LC57)
	call	printf
.LVL598:
	.loc 1 1847 21
	li	a0,3
	j	.L620
.LVL599:
.L373:
.LBE390:
.LBB407:
	.loc 1 1788 17
	.loc 1 1788 51 is_stmt 0
	lw	a5,164(sp)
	lrw	a0,a5,s3,2
.LVL600:
.LBB382:
.LBB383:
	.loc 1 237 5 is_stmt 1
	.loc 1 237 16 is_stmt 0
	beq	a0,zero,.L368
	.loc 1 237 38
	andi	a5,a0,3
	.loc 1 237 16
	beq	a5,zero,.L369
.L368:
.LVL601:
.LBE383:
.LBE382:
	.loc 1 1789 21 is_stmt 1
	mv	a2,a0
	mv	a1,s3
	addi	a0,s1,%lo(.LC54)
.LVL602:
.L616:
.LBB384:
	.loc 1 1801 25 is_stmt 0
	call	printf
.LVL603:
.L370:
.LBE384:
	.loc 1 1787 57 is_stmt 1 discriminator 2
	.loc 1 1787 58 is_stmt 0 discriminator 2
	addi	s3,s3,1
.LVL604:
	j	.L367
.LVL605:
.L369:
	.loc 1 1794 17 is_stmt 1
	lw	a1,172(sp)
	mv	a2,s10
	call	stamp_urb_endpoints
.LVL606:
	.loc 1 1795 17
	.loc 1 1795 30 is_stmt 0
	lw	a5,164(sp)
	lrw	a0,a5,s3,2
	.loc 1 1798 20
	lw	a5,4(a0)
	.loc 1 1795 44
	sw	zero,56(a0)
	.loc 1 1796 17 is_stmt 1
	.loc 1 1796 39 is_stmt 0
	sw	zero,60(a0)
	.loc 1 1798 17 is_stmt 1
	.loc 1 1798 20 is_stmt 0
	beq	a5,zero,.L370
.LBB385:
	.loc 1 1799 21 is_stmt 1
	.loc 1 1799 32 is_stmt 0
	call	usbh_kill_urb
.LVL607:
	mv	a2,a0
.LVL608:
	.loc 1 1800 21 is_stmt 1
	.loc 1 1800 24 is_stmt 0
	bge	a0,zero,.L370
	.loc 1 1801 25 is_stmt 1
	mv	a1,s3
	addi	a0,s2,%lo(.LC55)
.LVL609:
	j	.L616
.LVL610:
.L375:
.LBE385:
.LBE407:
.LBB408:
	.loc 1 1808 17 discriminator 3
	.loc 1 1808 39 is_stmt 0 discriminator 3
	lw	a4,224(sp)
	srw	zero,a4,a5,2
	.loc 1 1807 57 is_stmt 1 discriminator 3
	.loc 1 1807 58 is_stmt 0 discriminator 3
	addi	a5,a5,1
.LVL611:
	j	.L374
.LVL612:
.L376:
.LBE408:
.LBB409:
	.loc 1 1824 21 is_stmt 1
	.loc 1 1824 48 is_stmt 0
	sb	zero,15(s11)
	.loc 1 1825 21 is_stmt 1
	.loc 1 1825 49 is_stmt 0
	sb	zero,16(s11)
	.loc 1 1826 21 is_stmt 1
	.loc 1 1826 47 is_stmt 0
	sb	zero,19(s11)
	sb	zero,20(s11)
	sb	zero,21(s11)
	sb	zero,22(s11)
	j	.L377
.LVL613:
.L382:
.LBB406:
.LBB404:
.LBB401:
.LBB399:
.LBB397:
	.loc 1 573 9 is_stmt 1
	.loc 1 573 24 is_stmt 0
	mv	a1,s1
	mv	a0,s11
	call	altsetting_mps
.LVL614:
	.loc 1 574 9 is_stmt 1
	.loc 1 574 12 is_stmt 0
	beq	a0,zero,.L381
	.loc 1 574 23
	bleu	s4,a0,.L381
	.loc 1 574 41
	bltu	a0,s2,.L381
	.loc 1 577 9 is_stmt 1
	.loc 1 577 12 is_stmt 0
	bleu	a0,s8,.L381
	mv	s8,a0
.LVL615:
	mv	s0,s1
.LVL616:
.L381:
.LBE397:
	.loc 1 572 58 is_stmt 1
	.loc 1 572 59 is_stmt 0
	addi	s1,s1,1
.LVL617:
	andi	s1,s1,0xff
.LVL618:
	j	.L380
.LVL619:
.L384:
.LBE399:
.LBE401:
.LBE404:
.LBE406:
	.loc 1 1851 17 is_stmt 1
	.loc 1 1851 30 is_stmt 0
	lw	a5,0(s11)
	.loc 1 1853 30
	mv	a0,s0
.LVL620:
	.loc 1 1851 30
	sw	a5,172(sp)
.LVL621:
	.loc 1 1852 17 is_stmt 1
	.loc 1 1853 17
	.loc 1 1853 30 is_stmt 0
	call	iso_ep_layout_from_ep
.LVL622:
	sw	a1,508(sp)
	lbu	a5,508(sp)
	lhu	s2,510(sp)
	sw	a0,504(sp)
	sw	a5,208(sp)
	extu	s10,a0,15,0
.LVL623:
	srli	s8,a0,16
.LVL624:
	.loc 1 1854 17 is_stmt 1
	.loc 1 1855 17
	.loc 1 1855 20 is_stmt 0
	bne	s2,zero,.L385
	.loc 1 1856 21 is_stmt 1
	.loc 1 1856 46 is_stmt 0
	lhu	a5,84(s11)
.LVL625:
	.loc 1 1857 21 is_stmt 1
	.loc 1 1857 52 is_stmt 0
	lbu	s10,5(s0)
.LVL626:
	lbu	a3,4(s0)
	.loc 1 1858 36
	mv	s8,s9
.LVL627:
	mvnez	s8, a5, a5
.LVL628:
	.loc 1 1857 52
	slli	s10,s10,8
	.loc 1 1859 45
	li	a5,1
	.loc 1 1857 52
	or	s10,s10,a3
.LVL629:
	.loc 1 1858 21 is_stmt 1
	.loc 1 1859 21
	.loc 1 1860 21
	.loc 1 1856 42 is_stmt 0
	mv	s2,s8
	.loc 1 1859 45
	sw	a5,208(sp)
.LVL630:
.L385:
	.loc 1 1862 17 is_stmt 1
	.loc 1 1863 41 is_stmt 0
	lui	s1,%hi(.LANCHOR17)
	addi	a5,s1,%lo(.LANCHOR17)
	lbu	a5,0(a5)
	addi	s1,s1,%lo(.LANCHOR17)
	andi	a5,a5,0xff
	.loc 1 1862 26
	mul	a5,a5,s2
	sw	a5,200(sp)
.LVL631:
	.loc 1 1864 17 is_stmt 1
	.loc 1 1864 20 is_stmt 0
	lw	a4,200(sp)
	lw	a5,144(sp)
.LVL632:
	bgeu	a5,a4,.L387
	.loc 1 1865 21 is_stmt 1
	lui	a0,%hi(.LC58)
	mv	a2,a4
	mv	a1,a5
	addi	a0,a0,%lo(.LC58)
	call	printf
.LVL633:
	.loc 1 1867 21
.L619:
.LBE409:
	.loc 1 1904 17
	li	a0,3
	call	set_cam_state
.LVL634:
	.loc 1 1905 17
	j	.L361
.LVL635:
.L387:
.LBB410:
	.loc 1 1870 17
	.loc 1 1871 17
	.loc 1 1872 17
	.loc 1 1872 38 is_stmt 0
	sh	s2,12(s4)
	.loc 1 1873 17 is_stmt 1
	.loc 1 1873 39 is_stmt 0
	sb	s3,9(s4)
	.loc 1 1874 17 is_stmt 1
	.loc 1 1874 26 is_stmt 0
	lw	a5,20(s11)
	lbu	a4,19(s11)
.LVL636:
	slli	a5,a5,8
	or	a4,a5,a4
.LVL637:
	.loc 1 1875 17 is_stmt 1
	.loc 1 1875 34 is_stmt 0
	li	a5,0
	beq	a4,zero,.L388
	.loc 1 1875 67 discriminator 1
	li	a5,9998336
	addi	a5,a5,1664
	divu	a5,a5,a4
	.loc 1 1875 34 discriminator 1
	andi	a5,a5,0xff
.L388:
	.loc 1 1875 32 discriminator 4
	sb	a5,10(s4)
.LBE410:
	.loc 1 1878 13 is_stmt 1 discriminator 4
	.loc 1 1878 17 is_stmt 0 discriminator 4
	lui	a5,%hi(.LANCHOR8)
	.loc 1 1878 16 discriminator 4
	lbu	a4,%lo(.LANCHOR8)(a5)
.LVL638:
	addi	s3,a5,%lo(.LANCHOR8)
.LVL639:
	beq	a4,zero,.L389
	.loc 1 1879 17 is_stmt 1
	lui	a5,%hi(.LANCHOR9)
	addi	a0,a5,%lo(.LANCHOR9)
	call	frame_free
.LVL640:
.L389:
	.loc 1 1881 13
	.loc 1 1882 34 is_stmt 0
	lui	a5,%hi(.LANCHOR10)
	sb	zero,%lo(.LANCHOR10)(a5)
	.loc 1 1883 33
	lui	a5,%hi(.LANCHOR11)
	.loc 1 1881 31
	sb	zero,0(s3)
	.loc 1 1882 13 is_stmt 1
	.loc 1 1883 13
	.loc 1 1883 33 is_stmt 0
	sb	zero,%lo(.LANCHOR11)(a5)
	.loc 1 1884 13 is_stmt 1
	call	frame_queue_drain
.LVL641:
	.loc 1 1885 13
	.loc 1 1885 35 is_stmt 0
	lui	a5,%hi(.LANCHOR14)
	sb	zero,%lo(.LANCHOR14)(a5)
	.loc 1 1886 13 is_stmt 1
	.loc 1 1886 31 is_stmt 0
	lui	a5,%hi(.LANCHOR38)
	sb	zero,%lo(.LANCHOR38)(a5)
	.loc 1 1887 13 is_stmt 1
	.loc 1 1887 35 is_stmt 0
	lui	a5,%hi(.LANCHOR15)
	.loc 1 1888 30
	sb	zero,0(s7)
	.loc 1 1887 35
	sb	zero,%lo(.LANCHOR15)(a5)
	.loc 1 1888 13 is_stmt 1
	.loc 1 1889 13
	.loc 1 1889 36 is_stmt 0
	lui	a5,%hi(.LANCHOR36)
	sw	zero,%lo(.LANCHOR36)(a5)
	.loc 1 1890 13 is_stmt 1
	.loc 1 1890 30 is_stmt 0
	lw	a5,236(sp)
.LBB411:
.LBB412:
	.loc 1 333 5
	lui	s3,%hi(.LC59)
.LBE412:
.LBE411:
	.loc 1 1890 30
	lw	a4,0(a5)
.LVL642:
	lw	a5,4(a5)
	sw	a4,176(sp)
.LVL643:
	sw	a5,180(sp)
.LVL644:
	.loc 1 1891 13 is_stmt 1
	.loc 1 1891 35 is_stmt 0
	lui	a5,%hi(.LANCHOR39)
	lw	a4,%lo(.LANCHOR39)(a5)
.LVL645:
	lw	a5,%lo(.LANCHOR39+4)(a5)
	sw	a4,184(sp)
.LVL646:
	sw	a5,188(sp)
.LVL647:
	.loc 1 1892 13 is_stmt 1
	.loc 1 1892 34 is_stmt 0
	call	xTaskGetTickCount
.LVL648:
	.loc 1 1895 27
	sb	zero,0(s5)
	.loc 1 1892 34
	sw	a0,168(sp)
.LVL649:
	.loc 1 1893 13 is_stmt 1
	.loc 1 1895 13
	.loc 1 1896 13
	.loc 1 1896 41 is_stmt 0
	lbu	a0,0(s1)
.LVL650:
	andi	a0,a0,0xff
	call	sanitize_iso_pkt_cap
.LVL651:
	.loc 1 1896 39
	sb	a0,0(s1)
	.loc 1 1897 13 is_stmt 1
	.loc 1 1898 46 is_stmt 0
	lbu	a5,0(s1)
.LBB416:
.LBB413:
	.loc 1 333 5
	lw	a4,144(sp)
.LBE413:
.LBE416:
	.loc 1 1899 13
	lbu	a7,0(s1)
	.loc 1 1898 46
	andi	a5,a5,0xff
.LVL652:
	.loc 1 1899 13 is_stmt 1
.LBB417:
.LBB414:
	.loc 1 330 5
	.loc 1 333 5
.LBE414:
.LBE417:
	.loc 1 1897 22 is_stmt 0
	mul	a5,a5,s2
.LVL653:
.LBB418:
.LBB415:
	.loc 1 333 5
	sw	a4,4(sp)
	lui	a0,%hi(.LC29)
	mv	a3,s10
	addi	a1,s3,%lo(.LC59)
	andi	a7,a7,0xff
	mv	a6,s2
	mv	a4,s8
.LVL654:
	addi	a0,a0,%lo(.LC29)
	sw	a5,0(sp)
	lbu	a2,9(s4)
	lw	a5,208(sp)
	call	printf
.LVL655:
.LBE415:
.LBE418:
	.loc 1 1902 13 is_stmt 1
	.loc 1 1902 18 is_stmt 0
	lbu	a1,0(s1)
	lw	a2,144(sp)
	addi	a3,s3,%lo(.LC59)
	andi	a1,a1,0xff
	mv	a0,s2
	call	iso_buffer_layout_is_valid
.LVL656:
	.loc 1 1902 16
	beq	a0,zero,.L619
.LBB419:
.LBB420:
	.loc 1 1910 34
	lui	s3,%hi(.LANCHOR2)
	.loc 1 1914 57
	lui	s4,%hi(.LANCHOR4)
	.loc 1 1918 31
	lui	s7,%hi(uvc_iso_complete_router)
.LBE420:
	.loc 1 1909 22
	li	s9,0
.LBB421:
	.loc 1 1910 34
	addi	s3,s3,%lo(.LANCHOR2)
	.loc 1 1914 57
	addi	s4,s4,%lo(.LANCHOR4)
	.loc 1 1918 31
	addi	s7,s7,%lo(uvc_iso_complete_router)
	j	.L390
.LVL657:
.L391:
	.loc 1 1931 17 is_stmt 1
	.loc 1 1931 23 is_stmt 0
	mv	a0,s8
	call	usbh_submit_urb
.LVL658:
	mv	a2,a0
.LVL659:
	.loc 1 1932 17 is_stmt 1
	.loc 1 1932 20 is_stmt 0
	bge	a0,zero,.L393
	.loc 1 1933 21 is_stmt 1
	lui	a0,%hi(.LC61)
.LVL660:
	mv	a1,s9
	addi	a0,a0,%lo(.LC61)
	call	printf
.LVL661:
	j	.L617
.LVL662:
.L393:
.LBE421:
	.loc 1 1909 57 discriminator 2
	.loc 1 1909 58 is_stmt 0 discriminator 2
	addi	s9,s9,1
.LVL663:
.L390:
	.loc 1 1909 29 is_stmt 1 discriminator 1
	.loc 1 1909 31 is_stmt 0 discriminator 1
	lui	a5,%hi(.LANCHOR40)
	addi	a5,a5,%lo(.LANCHOR40)
	lbu	a5,0(a5)
	andi	a5,a5,0xff
	.loc 1 1909 13 discriminator 1
	ble	a5,s9,.L392
.LBB422:
	.loc 1 1910 17 is_stmt 1
	.loc 1 1910 34 is_stmt 0
	lrw	s8,s3,s9,2
.LVL664:
	.loc 1 1911 17 is_stmt 1
	lw	a2,228(sp)
	li	a1,0
	mv	a0,s8
	call	memset
.LVL665:
	.loc 1 1912 17
	.loc 1 1912 28 is_stmt 0
	lw	a5,172(sp)
	.loc 1 1914 57
	lrw	a1,s4,s9,2
	.loc 1 1921 22
	lw	a4,144(sp)
	.loc 1 1912 28
	sw	a5,8(s8)
	.loc 1 1913 17 is_stmt 1
	.loc 1 1915 45 is_stmt 0
	lw	a5,200(sp)
	.loc 1 1913 25
	sw	s0,12(s8)
	.loc 1 1914 17 is_stmt 1
	.loc 1 1914 38 is_stmt 0
	sw	a1,24(s8)
	.loc 1 1915 17 is_stmt 1
	.loc 1 1915 45 is_stmt 0
	sw	a5,28(s8)
	.loc 1 1916 17 is_stmt 1
	.loc 1 1916 41 is_stmt 0
	lbu	a5,0(s1)
	.loc 1 1921 22
	lbu	a3,0(s1)
	.loc 1 1917 30
	sw	zero,40(s8)
	.loc 1 1916 41
	andi	a5,a5,0xff
	sw	a5,48(s8)
	.loc 1 1917 17 is_stmt 1
	.loc 1 1918 17
	.loc 1 1918 31 is_stmt 0
	sw	s7,56(s8)
	.loc 1 1919 17 is_stmt 1
	.loc 1 1919 26 is_stmt 0
	sw	s8,60(s8)
	.loc 1 1921 17 is_stmt 1
	.loc 1 1921 22 is_stmt 0
	andi	a3,a3,0xff
	mv	a2,s2
	mv	a0,s8
	call	rebuild_iso_packet_descriptors
.LVL666:
	.loc 1 1921 20
	bne	a0,zero,.L391
	.loc 1 1925 21 is_stmt 1
	lui	a0,%hi(.LC60)
	mv	a1,s9
	addi	a0,a0,%lo(.LC60)
	call	printf
.LVL667:
	.loc 1 1926 21
.L617:
	.loc 1 1934 21
	li	a0,3
	call	set_cam_state
.LVL668:
	.loc 1 1935 21
	.loc 1 1935 35 is_stmt 0
	li	a5,1
	sb	a5,0(s5)
	.loc 1 1936 21 is_stmt 1
.LVL669:
.L392:
.LBE422:
.LBE419:
	.loc 1 1940 13
	.loc 1 1940 29 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	lbu	a5,%lo(.LANCHOR0)(a5)
	.loc 1 1940 16
	li	a4,3
	.loc 1 1940 29
	andi	a5,a5,0xff
	.loc 1 1940 16
	beq	a5,a4,.L361
	.loc 1 1943 13 is_stmt 1
	call	capture_ctrl_mark_running_if_owned
.LVL670:
	.loc 1 1944 13
	lui	a0,%hi(.LC62)
	addi	a0,a0,%lo(.LC62)
	call	printf
.LVL671:
	.loc 1 1893 29 is_stmt 0
	lw	a5,168(sp)
	mv	s9,s2
.LVL672:
	mv	s10,s0
.LVL673:
	sw	a5,232(sp)
.LVL674:
.L359:
.LBE425:
	.loc 1 1947 9 is_stmt 1
	.loc 1 1947 18 is_stmt 0
	lw	a5,160(sp)
	lw	a4,296(sp)
	sub	a4,a5,a4
	.loc 1 1947 12
	li	a5,4096
	addi	a5,a5,903
	bleu	a4,a5,.L395
.LBB426:
	.loc 1 1948 13 is_stmt 1
	.loc 1 1948 52 is_stmt 0
	lw	a5,244(sp)
	.loc 1 1949 13
	lw	a0,360(sp)
	.loc 1 1948 52
	lw	ra,0(a5)
	lw	a5,212(sp)
	lw	a2,0(a5)
.LVL675:
	.loc 1 1949 13 is_stmt 1
	lw	a5,356(sp)
	.loc 1 1948 52 is_stmt 0
	sub	a2,ra,a2
.LVL676:
	.loc 1 1949 13
	lw	a1,0(a5)
	lw	a5,352(sp)
	andi	a2,a2,63
.LVL677:
	lw	a3,0(a5)
	lw	a5,284(sp)
	lw	a4,0(a5)
	lw	a5,288(sp)
	lw	a5,0(a5)
	lw	a6,0(a0)
	lw	a0,364(sp)
	lw	a7,0(a0)
	lw	a0,368(sp)
	lw	a0,0(a0)
	sw	a0,208(sp)
	lw	a0,376(sp)
	lw	a0,0(a0)
	sw	a0,236(sp)
	lw	a0,372(sp)
	lw	a0,0(a0)
	sw	a0,248(sp)
	lw	a0,292(sp)
	lw	a0,0(a0)
	sw	a0,252(sp)
	lw	a0,448(sp)
	lw	a0,0(a0)
	sw	a0,256(sp)
	lw	a0,452(sp)
	lw	a0,0(a0)
	lw	s0,328(sp)
	lw	s1,444(sp)
	lw	s2,392(sp)
	lw	t1,0(s0)
	lw	s0,456(sp)
	lw	s3,436(sp)
	lw	s4,400(sp)
	lw	t3,0(s0)
	lw	s0,460(sp)
	lw	t4,0(s0)
	lw	s0,380(sp)
	lw	t5,0(s0)
	lw	s0,384(sp)
	lw	t6,0(s0)
	lw	s0,388(sp)
	lw	t0,0(s0)
	lw	s0,396(sp)
	lw	t2,0(s0)
	lw	s0,440(sp)
	lw	s0,0(s0)
	lw	s1,0(s1)
	lw	s2,0(s2)
	lw	s3,0(s3)
	lw	s4,0(s4)
	sw	s4,260(sp)
	lw	s4,404(sp)
	lw	s5,4(s4)
	lw	s4,0(s4)
	sw	s5,268(sp)
	sw	s4,264(sp)
	lw	s4,408(sp)
	lw	s5,0(s4)
	lw	s4,412(sp)
	lw	ra,320(sp)
	lw	s4,0(s4)
	lbu	ra,0(ra)
	sw	s4,272(sp)
	lw	s4,416(sp)
	lw	s7,0(s4)
	lw	s4,420(sp)
	lw	s8,0(s4)
	lw	s4,424(sp)
	lw	s4,0(s4)
	sw	s4,276(sp)
	lw	s4,428(sp)
	lw	s4,0(s4)
	sw	s4,280(sp)
	lw	s4,432(sp)
	lw	s4,0(s4)
	sw	ra,116(sp)
	lw	ra,280(sp)
	sw	s4,112(sp)
	lw	s4,264(sp)
	sw	ra,108(sp)
	lw	ra,276(sp)
	sw	s5,88(sp)
	lw	s5,268(sp)
	sw	ra,104(sp)
	lw	ra,272(sp)
	sw	s8,100(sp)
	sw	s7,96(sp)
	sw	ra,92(sp)
	sw	s4,80(sp)
	sw	s5,84(sp)
	lw	ra,260(sp)
	sw	ra,72(sp)
	lw	ra,324(sp)
	lbu	ra,0(ra)
	sw	a0,20(sp)
	lw	a0,256(sp)
	sw	ra,68(sp)
	sw	s3,64(sp)
	sw	a0,16(sp)
	lw	a0,252(sp)
	sw	s2,60(sp)
	sw	s1,56(sp)
	sw	a0,12(sp)
	lw	a0,248(sp)
	sw	s0,52(sp)
	sw	t2,48(sp)
	sw	a0,8(sp)
	lw	a0,236(sp)
	sw	t0,44(sp)
	sw	t6,40(sp)
	sw	a0,4(sp)
	lw	a0,208(sp)
	sw	t5,36(sp)
	sw	t4,32(sp)
	sw	a0,0(sp)
	lui	a0,%hi(.LC63)
	addi	a0,a0,%lo(.LC63)
	sw	t3,28(sp)
	sw	t1,24(sp)
	call	printf
.LVL678:
	.loc 1 1975 13 is_stmt 1
	.loc 1 1975 28 is_stmt 0
	lw	a5,160(sp)
	sw	a5,296(sp)
.LVL679:
.L395:
.LBE426:
	.loc 1 1978 9 is_stmt 1
	.loc 1 1978 12 is_stmt 0
	beq	s6,zero,.L396
	.loc 1 1979 13 is_stmt 1
	.loc 1 1979 16 is_stmt 0
	lw	a5,204(sp)
	.loc 1 1981 17
	li	a0,1
	.loc 1 1979 16
	addi	a5,a5,1
	andi	a5,a5,0xff
	sw	a5,204(sp)
.LVL680:
	lw	a4,204(sp)
	li	a5,3
	bgtu	a4,a5,.L621
.LVL681:
.L397:
	.loc 1 1982 29
	lw	a5,184(sp)
	sw	a5,276(sp)
	lw	a5,188(sp)
	sw	a5,280(sp)
	lw	a5,176(sp)
	sw	a5,264(sp)
	lw	a5,180(sp)
	sw	a5,272(sp)
	j	.L240
.LVL682:
.L396:
	.loc 1 1985 13 is_stmt 1
	.loc 1 1986 13
	li	a0,2
.LVL683:
.L621:
	call	vTaskDelay
.LVL684:
	.loc 1 1985 25 is_stmt 0
	sw	zero,204(sp)
	j	.L397
.LVL685:
.L403:
.LBE438:
.LBB439:
	.loc 1 1994 9 is_stmt 1
	.loc 1 1994 43 is_stmt 0
	lw	a5,164(sp)
	lw	a4,192(sp)
.LVL686:
	lrw	a0,a5,a4,2
.LVL687:
.LBB432:
.LBB433:
	.loc 1 237 5 is_stmt 1
	.loc 1 237 16 is_stmt 0
	beq	a0,zero,.L401
	.loc 1 237 38
	andi	a5,a0,3
	.loc 1 237 16
	bne	a5,zero,.L401
.LVL688:
.LBE433:
.LBE432:
	.loc 1 1997 9 is_stmt 1
	lw	a1,172(sp)
	mv	a2,s10
	call	stamp_urb_endpoints
.LVL689:
	.loc 1 1998 9
	.loc 1 1998 22 is_stmt 0
	lw	a5,164(sp)
	lw	a4,192(sp)
	lrw	a0,a5,a4,2
	.loc 1 2000 12
	lw	a5,4(a0)
	.loc 1 1998 36
	sw	zero,56(a0)
	.loc 1 1999 9 is_stmt 1
	.loc 1 1999 31 is_stmt 0
	sw	zero,60(a0)
	.loc 1 2000 9 is_stmt 1
	.loc 1 2000 12 is_stmt 0
	beq	a5,zero,.L401
	.loc 1 2001 13 is_stmt 1
	.loc 1 2001 19 is_stmt 0
	call	usbh_kill_urb
.LVL690:
.L401:
	.loc 1 1993 49 is_stmt 1 discriminator 2
	.loc 1 1993 50 is_stmt 0 discriminator 2
	lw	a5,192(sp)
	addi	a5,a5,1
	sw	a5,192(sp)
.LVL691:
	j	.L399
.LVL692:
.L229:
.LBE439:
.LBB440:
.LBB245:
.LBB242:
	.loc 1 1501 13 is_stmt 1
	.loc 1 1510 13
	.loc 1 1510 204 is_stmt 0
	call	kfree_size
.LVL693:
	.loc 1 1510 13
	lw	a3,144(sp)
	.loc 1 1510 204
	mv	a4,a0
	.loc 1 1510 13
	lui	a0,%hi(.LC65)
	mv	a2,s1
	mv	a1,s0
	addi	a0,a0,%lo(.LC65)
	call	printf
.LVL694:
	.loc 1 1513 13 is_stmt 1
	mv	a0,s0
	call	free_iso_urb_resources.constprop.0
.LVL695:
	.loc 1 1514 13
.LBB239:
	.loc 1 1514 18
	.loc 1 1514 29
	.loc 1 1515 17
	.loc 1 1515 38 is_stmt 0
	lw	a5,196(sp)
	sw	zero,0(a5)
	.loc 1 1514 42 is_stmt 1
.LVL696:
	.loc 1 1514 29
	.loc 1 1514 13 is_stmt 0
	li	a5,2
	bne	s0,a5,.L227
	.loc 1 1515 17 is_stmt 1
	.loc 1 1515 38 is_stmt 0
	lw	a5,196(sp)
	sw	zero,4(a5)
	.loc 1 1514 42 is_stmt 1
.LVL697:
	.loc 1 1514 29
	j	.L227
.LVL698:
.L427:
.LBE239:
.LBE242:
.LBE245:
.LBE440:
.LBB441:
.LBB427:
.LBB358:
.LBB349:
.LBB346:
	mv	s8,a4
	j	.L253
.LVL699:
.L428:
.LBE346:
.LBB347:
	mv	s8,a4
	.loc 1 363 41 is_stmt 0
	lw	a4,140(sp)
.LVL700:
	sw	a4,248(sp)
	j	.L253
.LVL701:
.L347:
.LBE347:
.LBE349:
.LBE358:
.LBE427:
	.loc 1 1706 9 is_stmt 1
	.loc 1 1707 13
	.loc 1 1708 13
	.loc 1 1709 13
	.loc 1 1709 36 is_stmt 0
	lw	a5,328(sp)
	sw	zero,0(a5)
.LVL702:
	.loc 1 1711 9 is_stmt 1
	.loc 1 1715 9
	.loc 1 1708 29 is_stmt 0
	lw	a5,160(sp)
	sw	a5,232(sp)
	j	.L412
.LVL703:
.L324:
.LBB428:
.LBB359:
.LBB340:
.LBB336:
.LBB333:
.LBB331:
.LBB329:
.LBB327:
	.loc 1 1128 5 is_stmt 1
	.loc 1 1128 8 is_stmt 0
	lw	a5,208(sp)
	j	.L611
.LBE327:
.LBE329:
.LBE331:
.LBE333:
.LBE336:
.LBE340:
.LBE359:
.LBE428:
.LBE441:
	.cfi_endproc
.LFE145:
	.size	streaming_task, .-streaming_task
	.section	.rodata.usbh_video_run.str1.4,"aMS",@progbits,1
	.align	2
.LC67:
	.string	"\033[0m[I][UVC] [UVC] Camera attached  VID=0x%04X  PID=0x%04X  ctrl_intf=%u  data_intf=%u\r\n"
	.align	2
.LC68:
	.string	"\033[0;33m[W][UVC] [UVC] Clamp format count %u -> %u\r\n"
	.align	2
.LC69:
	.string	"\033[0;33m[W][UVC] [UVC] Clamp frame count %u -> %u (format=%u)\r\n"
	.align	2
.LC70:
	.string	"\033[0m[I][UVC] [UVC] Selected MJPEG %ux%u  altsetting=%u (MPS=%u, cap=%u)\r\n"
	.align	2
.LC71:
	.string	"\033[0m[I][UVC] [UVC] Requesting frame interval=%u (100ns) (~%u fps target)\r\n"
	.align	2
.LC72:
	.string	"\033[0;33m[W][UVC] [UVC] usbh_video_open failed with forced interval (%u): %d, retrying auto interval\r\n"
	.align	2
.LC73:
	.string	"\033[0;31m[E][UVC] [UVC] usbh_video_open failed: %d\r\n"
	.align	2
.LC74:
	.string	"\033[0m[I][UVC] [UVC] Negotiated interval=%u (100ns) -> ~%u fps\r\n"
	.align	2
.LC75:
	.string	"\033[0m[I][UVC] [UVC] Camera ready - MJPEG %ux%u @ %ufps  MPS=%u  EP=0x%02X\r\n"
	.align	2
.LC76:
	.string	"\033[0m[I][UVC] [UVC] Camera attached and configured; capture starts on demand\r\n"
	.align	2
.LC77:
	.string	"\033[0;31m[E][UVC] [UVC] No MJPEG format found \342\200\224 camera unusable\r\n"
	.section	.text.usbh_video_run,"ax",@progbits
	.align	1
	.globl	usbh_video_run
	.type	usbh_video_run, @function
usbh_video_run:
.LFB148:
	.loc 1 2095 1 is_stmt 1
	.cfi_startproc
.LVL704:
	.loc 1 2096 5
	.loc 1 2096 31 is_stmt 0
	lw	a5,0(a0)
	.loc 1 2095 1
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	ra,92(sp)
	sw	s0,88(sp)
	sw	s4,72(sp)
	sw	s5,68(sp)
	sw	s6,64(sp)
	sw	s1,84(sp)
	sw	s2,80(sp)
	sw	s3,76(sp)
	sw	s7,60(sp)
	sw	s8,56(sp)
	sw	s9,52(sp)
	sw	s10,48(sp)
	sw	s11,44(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.cfi_offset 26, -48
	.cfi_offset 27, -52
	.loc 1 2096 14
	lw	a2,16(a5)
	lbu	a4,15(a5)
	.loc 1 2095 1
	mv	s0,a0
	.loc 1 2096 14
	andi	s4,a2,255
	.loc 1 2097 14
	extu	s5,a2,8+16-1,8
	.loc 1 2101 34
	lui	a5,%hi(.LANCHOR66)
	.loc 1 2102 5
	li	a1,0
	li	a0,0
.LVL705:
	.loc 1 2096 14
	slli	s4,s4,8
	or	s4,s4,a4
.LVL706:
	.loc 1 2097 5 is_stmt 1
	.loc 1 2101 34 is_stmt 0
	sb	zero,%lo(.LANCHOR66)(a5)
	.loc 1 2097 14
	sw	s5,12(sp)
.LVL707:
	.loc 1 2101 5 is_stmt 1
	.loc 1 2102 5
	call	capture_ctrl_set
.LVL708:
	.loc 1 2103 5
	.loc 1 2105 5 is_stmt 0
	lbu	a4,13(s0)
	lbu	a3,12(s0)
	lw	a2,12(sp)
	lui	a0,%hi(.LC67)
	.loc 1 2103 22
	lui	a5,%hi(.LANCHOR68)
	.loc 1 2105 5
	mv	a1,s4
	addi	a0,a0,%lo(.LC67)
	.loc 1 2103 22
	sw	zero,%lo(.LANCHOR68)(a5)
	.loc 1 2105 5 is_stmt 1
	call	printf
.LVL709:
	.loc 1 2114 5
	.loc 1 2115 5
	.loc 1 2117 5
.LBB453:
.LBB454:
	.loc 1 413 5
	.loc 1 414 5
	.loc 1 415 5
	.loc 1 416 5
	.loc 1 417 5
	.loc 1 418 5
	.loc 1 419 5
	.loc 1 421 5
	.loc 1 425 5
	.loc 1 426 5
	.loc 1 426 17 is_stmt 0
	lbu	s6,93(s0)
.LVL710:
	.loc 1 427 5 is_stmt 1
	.loc 1 427 8 is_stmt 0
	li	a5,3
	bleu	s6,a5,.L627
	.loc 1 428 9 is_stmt 1
	lui	a0,%hi(.LC68)
	mv	a1,s6
	li	a2,3
	addi	a0,a0,%lo(.LC68)
	call	printf
.LVL711:
	.loc 1 430 9
	.loc 1 430 21 is_stmt 0
	li	s6,3
.LVL712:
.L627:
	.loc 1 433 5 is_stmt 1
.LBB455:
	.loc 1 433 10
.LBB456:
.LBB457:
.LBB458:
.LBB459:
	.loc 1 461 23 is_stmt 0
	li	s9,4096
.LBE459:
	.loc 1 455 23
	li	s10,8192
	mv	s1,s0
.LBE458:
.LBE457:
.LBE456:
	.loc 1 433 5
	li	s7,0
.LBE455:
	.loc 1 416 26
	li	s3,0
	.loc 1 416 14
	li	s2,0
	.loc 1 413 9
	li	s8,-1
.LBB473:
.LBB470:
	.loc 1 435 12
	li	s11,1
.LBB467:
.LBB463:
.LBB460:
	.loc 1 461 23
	addi	s9,s9,904
.LBE460:
	.loc 1 455 23
	addi	s10,s10,1808
.LBE463:
.LBE467:
	.loc 1 441 13
	lui	a6,%hi(.LC69)
.LVL713:
.L628:
.LBE470:
	.loc 1 433 26 is_stmt 1
	.loc 1 433 5 is_stmt 0
	andi	a5,s7,0xff
	bgtu	s6,a5,.L637
.LBE473:
	.loc 1 477 5 is_stmt 1
	.loc 1 477 8 is_stmt 0
	li	a5,-1
	beq	s8,a5,.L638
	li	s1,1
	li	s9,0
	li	s6,1
.LVL714:
	li	s10,0
	li	s8,0
.LVL715:
	li	s11,0
	li	s7,0
.LVL716:
.LBE454:
.LBE453:
.LBB476:
.LBB477:
.LBB478:
.LBB479:
	.loc 1 503 41
	li	a4,620
	li	a3,37
.LVL717:
.L639:
.LBE479:
	.loc 1 502 25 is_stmt 1
	.loc 1 502 5 is_stmt 0
	lbu	a5,92(s0)
	bgtu	a5,s1,.L645
.LBE478:
	.loc 1 525 5 is_stmt 1
	.loc 1 525 8 is_stmt 0
	bne	s7,zero,.L656
	.loc 1 528 5 is_stmt 1
	.loc 1 528 8 is_stmt 0
	mvnez	s6, s8, s8
.LVL718:
.L646:
.LBE477:
.LBE476:
	.loc 1 2125 5 is_stmt 1
	.loc 1 2125 24 is_stmt 0
	mv	a1,s6
	mv	a0,s0
	call	altsetting_mps
.LVL719:
	mv	a4,a0
.LVL720:
	.loc 1 2127 5 is_stmt 1
	lui	a0,%hi(.LC70)
	mv	a3,s6
	li	a5,800
	mv	a2,s3
	mv	a1,s2
	addi	a0,a0,%lo(.LC70)
	call	printf
.LVL721:
	.loc 1 2132 5
	.loc 1 2133 41 is_stmt 0
	li	a5,1
	sb	a5,15(s0)
	.loc 1 2134 42
	sb	a5,16(s0)
	.loc 1 2135 40
	li	a5,64
	sb	a5,19(s0)
	li	a5,66
	sb	a5,20(s0)
	.loc 1 2132 32
	lui	s1,%hi(.LANCHOR67)
	.loc 1 2135 40
	li	a5,15
	.loc 1 2132 32
	li	a1,999424
	.loc 1 2136 5
	lui	a0,%hi(.LC71)
	.loc 1 2132 32
	addi	a1,a1,576
	.loc 1 2135 40
	sb	a5,21(s0)
	.loc 1 2136 5
	li	a2,10
	.loc 1 2132 32
	addi	s1,s1,%lo(.LANCHOR67)
	.loc 1 2135 40
	sb	zero,22(s0)
	.loc 1 2136 5
	addi	a0,a0,%lo(.LC71)
	.loc 1 2132 32
	sw	a1,0(s1)
	.loc 1 2133 5 is_stmt 1
	.loc 1 2134 5
	.loc 1 2135 5
	.loc 1 2136 5
	call	printf
.LVL722:
	.loc 1 2140 5
	.loc 1 2140 15 is_stmt 0
	mv	a2,s2
	mv	a4,s6
	mv	a3,s3
	li	a1,1
	mv	a0,s0
	call	usbh_video_open
.LVL723:
	mv	a2,a0
.LVL724:
	.loc 1 2141 5 is_stmt 1
	.loc 1 2141 8 is_stmt 0
	bge	a0,zero,.L647
	.loc 1 2143 9 is_stmt 1
	lw	a1,0(s1)
	lui	a0,%hi(.LC72)
.LVL725:
	addi	a0,a0,%lo(.LC72)
	call	printf
.LVL726:
	.loc 1 2145 9
	.loc 1 2149 15 is_stmt 0
	li	a1,1
	.loc 1 2146 45
	sb	zero,15(s0)
	.loc 1 2147 46
	sb	zero,16(s0)
	.loc 1 2148 44
	sb	zero,19(s0)
	sb	zero,20(s0)
	sb	zero,21(s0)
	sb	zero,22(s0)
	.loc 1 2149 15
	mv	a4,s6
	mv	a3,s3
	mv	a2,s2
	mv	a0,s0
	.loc 1 2145 36
	sw	zero,0(s1)
	.loc 1 2146 9 is_stmt 1
	.loc 1 2147 9
	.loc 1 2148 9
	.loc 1 2149 9
	.loc 1 2149 15 is_stmt 0
	call	usbh_video_open
.LVL727:
	mv	a1,a0
.LVL728:
	.loc 1 2151 5 is_stmt 1
	.loc 1 2151 8 is_stmt 0
	bge	a0,zero,.L647
	.loc 1 2152 9 is_stmt 1
	lui	a0,%hi(.LC73)
.LVL729:
	addi	a0,a0,%lo(.LC73)
	call	printf
.LVL730:
	.loc 1 2153 9
.L669:
	.loc 1 2119 9
	.loc 1 2184 1 is_stmt 0
	lw	s0,88(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL731:
	lw	ra,92(sp)
	.cfi_restore 1
	lw	s1,84(sp)
	.cfi_restore 9
	lw	s2,80(sp)
	.cfi_restore 18
	lw	s3,76(sp)
	.cfi_restore 19
	lw	s4,72(sp)
	.cfi_restore 20
.LVL732:
	lw	s5,68(sp)
	.cfi_restore 21
.LVL733:
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
	.loc 1 2119 9
	li	a0,3
	.loc 1 2184 1
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
.LVL734:
	.loc 1 2119 9
	tail	set_cam_state
.LVL735:
.L637:
	.cfi_restore_state
.LBB483:
.LBB475:
.LBB474:
.LBB471:
	.loc 1 434 9 is_stmt 1
	.loc 1 435 9
	.loc 1 435 12 is_stmt 0
	lbu	a5,624(s1)
	bne	a5,s11,.L629
	.loc 1 434 17
	lbu	a1,625(s1)
	.loc 1 438 9 is_stmt 1
.LVL736:
	.loc 1 440 9
	.loc 1 440 12 is_stmt 0
	li	a5,12
	bleu	a1,a5,.L630
	.loc 1 441 13 is_stmt 1
	addi	a0,a6,%lo(.LC69)
	addi	a3,s7,1
	li	a2,12
	call	printf
.LVL737:
	.loc 1 443 13
	.loc 1 443 24 is_stmt 0
	li	a1,12
	lui	a6,%hi(.LC69)
.LVL738:
.L630:
	.loc 1 446 9 is_stmt 1
.LBB468:
	.loc 1 446 14
	.loc 1 446 9 is_stmt 0
	mv	a0,s1
	.loc 1 446 22
	li	a3,0
.LBB464:
	.loc 1 454 16
	li	t1,640
	.loc 1 456 33
	li	a7,480
	.loc 1 456 45
	li	t3,1280
.LBB461:
	.loc 1 461 38
	li	t4,-1000
.LBE461:
	.loc 1 456 23
	li	t5,319
.LVL739:
.L631:
.LBE464:
	.loc 1 446 31 is_stmt 1
	.loc 1 446 9 is_stmt 0
	bne	a3,a1,.L636
.LVL740:
.L629:
.LBE468:
.LBE471:
	.loc 1 433 44 is_stmt 1
	addi	s7,s7,1
.LVL741:
	addi	s1,s1,532
	j	.L628
.LVL742:
.L636:
.LBB472:
.LBB469:
.LBB465:
	.loc 1 447 13
	.loc 1 447 22 is_stmt 0
	lhu	a4,96(a0)
.LVL743:
	.loc 1 448 13 is_stmt 1
	.loc 1 448 22 is_stmt 0
	lhu	a2,98(a0)
.LVL744:
	.loc 1 449 13 is_stmt 1
	.loc 1 449 16 is_stmt 0
	beq	a4,zero,.L632
	.loc 1 449 25
	beq	a2,zero,.L632
	.loc 1 453 13 is_stmt 1
	.loc 1 454 13
	.loc 1 454 16 is_stmt 0
	bne	a4,t1,.L633
	.loc 1 455 23
	mv	a5,s10
	.loc 1 454 26
	bne	a2,a7,.L635
.L634:
.LVL745:
	.loc 1 467 13 is_stmt 1
	.loc 1 467 16 is_stmt 0
	bge	s8,a5,.L632
	mv	s3,a2
.LVL746:
	mv	s2,a4
.LVL747:
	mv	s8,a5
.LVL748:
.L632:
.LBE465:
	.loc 1 446 49 is_stmt 1
	.loc 1 446 52 is_stmt 0
	addi	a3,a3,1
.LVL749:
	andi	a3,a3,0xff
.LVL750:
	addi	a0,a0,44
	j	.L631
.L633:
.LBB466:
	.loc 1 456 20 is_stmt 1
	.loc 1 464 23 is_stmt 0
	li	a5,0
	.loc 1 456 23
	bleu	a4,t5,.L634
.L635:
	.loc 1 456 33
	addi	t6,a2,-240
	extu	t6,t6,15,0
	.loc 1 464 23
	li	a5,0
	.loc 1 456 33
	bgtu	t6,a7,.L634
	.loc 1 456 45
	bgtu	a4,t3,.L634
.LBB462:
	.loc 1 458 17 is_stmt 1
	.loc 1 459 21 is_stmt 0
	addi	a5,a2,-480
	.loc 1 460 41
	mul	a5,a5,a5
	.loc 1 458 21
	addi	t6,a4,-640
	.loc 1 459 17 is_stmt 1
	.loc 1 460 17
	.loc 1 461 17
	.loc 1 460 21 is_stmt 0
	mula	a5,t6,t6
	.loc 1 461 38
	div	a5,a5,t4
	.loc 1 461 23
	add	a5,a5,s9
.LVL751:
	.loc 1 462 17 is_stmt 1
	j	.L634
.LVL752:
.L645:
.LBE462:
.LBE466:
.LBE469:
.LBE472:
.LBE474:
.LBE475:
.LBE483:
.LBB484:
.LBB482:
.LBB481:
.LBB480:
	.loc 1 503 9
	.loc 1 505 9
	.loc 1 503 41 is_stmt 0
	lbu	a5,13(s0)
.LVL753:
	lw	a0,0(s0)
	mul	a5,a5,a4
.LVL754:
	addi	a5,a5,73
	mula	a5,s1,a3
	.loc 1 505 31
	add	a0,a0,a5
	call	iso_ep_layout_from_ep
.LVL755:
	sw	a1,28(sp)
	.loc 1 506 9 is_stmt 1
	.loc 1 506 18 is_stmt 0
	lhu	a5,30(sp)
.LVL756:
	.loc 1 508 9 is_stmt 1
	.loc 1 505 31 is_stmt 0
	sw	a0,24(sp)
	.loc 1 508 12
	li	a3,37
	li	a4,620
	li	a2,800
	li	a6,1
	bleu	a5,s9,.L640
	mv	s9,a5
.LVL757:
	mv	s6,s1
.LVL758:
.L640:
	.loc 1 512 9 is_stmt 1
	.loc 1 512 12 is_stmt 0
	bgtu	a5,a2,.L642
	.loc 1 515 9 is_stmt 1
	.loc 1 515 12 is_stmt 0
	bleu	a5,s10,.L643
	mv	s10,a5
.LVL759:
	mv	s8,s1
.LVL760:
.L643:
	.loc 1 519 9 is_stmt 1
	.loc 1 519 12 is_stmt 0
	lbu	a1,28(sp)
	bne	a1,a6,.L642
	.loc 1 519 36
	bleu	a5,s11,.L642
	mv	s11,a5
.LVL761:
	mv	s7,s1
.LVL762:
.L642:
.LBE480:
	.loc 1 502 58 is_stmt 1
	.loc 1 502 59 is_stmt 0
	addi	s1,s1,1
.LVL763:
	andi	s1,s1,0xff
.LVL764:
	j	.L639
.LVL765:
.L656:
.LBE481:
	mv	s6,s7
.LVL766:
	j	.L646
.LVL767:
.L647:
.LBE482:
.LBE484:
	.loc 1 2158 5 is_stmt 1
	.loc 1 2158 14 is_stmt 0
	lw	a1,20(s0)
	lbu	a5,19(s0)
	.loc 1 2160 66
	li	s1,0
	.loc 1 2158 14
	slli	a1,a1,8
	or	a1,a1,a5
.LVL768:
	.loc 1 2159 5 is_stmt 1
	.loc 1 2160 66 is_stmt 0
	beq	a1,zero,.L648
	.loc 1 2160 66 discriminator 1
	li	s1,9998336
	addi	s1,s1,1664
	divu	s1,s1,a1
.L648:
.LVL769:
	.loc 1 2161 5 is_stmt 1
	lui	a0,%hi(.LC74)
	mv	a2,s1
	addi	a0,a0,%lo(.LC74)
	call	printf
.LVL770:
	.loc 1 2165 5
	.loc 1 2165 38 is_stmt 0
	lw	a0,4(s0)
	call	iso_ep_layout_from_ep
.LVL771:
	.loc 1 2166 20
	lui	a5,%hi(.LANCHOR26)
	addi	a4,a5,%lo(.LANCHOR26)
	.loc 1 2165 38
	sw	a1,28(sp)
	.loc 1 2166 20
	sh	s4,0(a4)
	.loc 1 2165 38
	sw	a0,24(sp)
	.loc 1 2167 20
	sh	s5,2(a4)
	.loc 1 2168 22
	sh	s2,4(a4)
	.loc 1 2169 23
	sh	s3,6(a4)
	.loc 1 2170 20
	li	a2,255
	.loc 1 2165 38
	lhu	a3,30(sp)
.LVL772:
	.loc 1 2166 5 is_stmt 1
	.loc 1 2167 5
	.loc 1 2168 5
	.loc 1 2169 5
	.loc 1 2170 5
	addi	s4,a5,%lo(.LANCHOR26)
.LVL773:
	.loc 1 2170 20 is_stmt 0
	bleu	s1,a2,.L649
	li	s1,255
.LVL774:
.L649:
	.loc 1 2171 23
	li	a5,1
	.loc 1 2170 20
	sb	s1,10(a4)
	.loc 1 2171 5 is_stmt 1
	.loc 1 2171 23 is_stmt 0
	sb	a5,8(s4)
	.loc 1 2172 5 is_stmt 1
	.loc 1 2172 27 is_stmt 0
	sb	s6,9(s4)
	.loc 1 2173 5 is_stmt 1
	.loc 1 2173 26 is_stmt 0
	bne	a3,zero,.L650
	.loc 1 2173 26 discriminator 2
	lhu	a3,84(s0)
.LVL775:
.L650:
	.loc 1 2175 19 discriminator 4
	lui	a5,%hi(.LANCHOR37)
	.loc 1 2176 5 discriminator 4
	li	a0,1
	.loc 1 2173 26 discriminator 4
	sh	a3,12(s4)
	.loc 1 2175 5 is_stmt 1 discriminator 4
	.loc 1 2175 19 is_stmt 0 discriminator 4
	sw	s0,%lo(.LANCHOR37)(a5)
	.loc 1 2176 5 is_stmt 1 discriminator 4
	call	set_cam_state
.LVL776:
	.loc 1 2178 5 discriminator 4
	.loc 1 2178 169 is_stmt 0 discriminator 4
	lw	a2,4(s0)
	.loc 1 2178 5 discriminator 4
	lbu	a3,10(s4)
	lhu	a4,12(s4)
	li	a5,0
	beq	a2,zero,.L651
	.loc 1 2178 5 discriminator 1
	lbu	a5,2(a2)
.L651:
	.loc 1 2178 5 discriminator 4
	lui	a0,%hi(.LC75)
	mv	a2,s3
	mv	a1,s2
	addi	a0,a0,%lo(.LC75)
	call	printf
.LVL777:
	.loc 1 2183 5 is_stmt 1 discriminator 4
	.loc 1 2184 1 is_stmt 0 discriminator 4
	lw	s0,88(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL778:
	lw	ra,92(sp)
	.cfi_restore 1
	lw	s1,84(sp)
	.cfi_restore 9
	lw	s2,80(sp)
	.cfi_restore 18
	lw	s3,76(sp)
	.cfi_restore 19
	lw	s4,72(sp)
	.cfi_restore 20
	lw	s5,68(sp)
	.cfi_restore 21
.LVL779:
	lw	s6,64(sp)
	.cfi_restore 22
.LVL780:
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
	.loc 1 2183 5 discriminator 4
	lui	a0,%hi(.LC76)
	.loc 1 2184 1 discriminator 4
	.loc 1 2183 5 discriminator 4
	addi	a0,a0,%lo(.LC76)
	.loc 1 2184 1 discriminator 4
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
.LVL781:
	.loc 1 2183 5 discriminator 4
	tail	printf
.LVL782:
.L638:
	.cfi_restore_state
	.loc 1 2118 9 is_stmt 1
	lui	a0,%hi(.LC77)
	addi	a0,a0,%lo(.LC77)
	call	printf
.LVL783:
	j	.L669
	.cfi_endproc
.LFE148:
	.size	usbh_video_run, .-usbh_video_run
	.section	.rodata.usbh_video_stop.str1.4,"aMS",@progbits,1
	.align	2
.LC78:
	.string	"\033[0m[I][UVC] [UVC] Camera detached  VID=0x%04X  PID=0x%04X\r\n"
	.section	.text.usbh_video_stop,"ax",@progbits
	.align	1
	.globl	usbh_video_stop
	.type	usbh_video_stop, @function
usbh_video_stop:
.LFB149:
	.loc 1 2187 1
	.cfi_startproc
.LVL784:
	.loc 1 2188 5
	.loc 1 2188 116 is_stmt 0
	lui	a5,%hi(.LANCHOR26)
	addi	a5,a5,%lo(.LANCHOR26)
	.loc 1 2188 5
	lhu	a1,0(a5)
	lhu	a2,2(a5)
	lui	a0,%hi(.LC78)
.LVL785:
	.loc 1 2187 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 2188 5
	addi	a0,a0,%lo(.LC78)
	.loc 1 2187 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 2188 5
	call	printf
.LVL786:
	.loc 1 2192 5 is_stmt 1
	call	stop_streaming
.LVL787:
	.loc 1 2194 5
	li	a0,0
	call	set_cam_state
.LVL788:
	.loc 1 2195 5
	li	a1,0
	li	a0,0
	call	capture_ctrl_set
.LVL789:
	.loc 1 2196 5
	.loc 1 2198 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 2196 22
	lui	a5,%hi(.LANCHOR68)
	sw	zero,%lo(.LANCHOR68)(a5)
	.loc 1 2197 5 is_stmt 1
	.loc 1 2197 19 is_stmt 0
	lui	a5,%hi(.LANCHOR37)
	sw	zero,%lo(.LANCHOR37)(a5)
	.loc 1 2198 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE149:
	.size	usbh_video_stop, .-usbh_video_stop
	.section	.rodata.uvc_capture_init.str1.4,"aMS",@progbits,1
	.align	2
.LC79:
	.string	"usb_v2"
	.align	2
.LC80:
	.string	"\033[0;31m[E][UVC] [UVC] USB device not found in device table\r\n"
	.align	2
.LC81:
	.string	"\033[0m[I][UVC] [UVC] Initialising USB host (reg_base=0x%08lx)\r\n"
	.align	2
.LC82:
	.string	"\033[0m[I][UVC] [UVC] USB host init done \342\200\224 waiting for camera\r\n"
	.section	.text.uvc_capture_init,"ax",@progbits
	.align	1
	.globl	uvc_capture_init
	.type	uvc_capture_init, @function
uvc_capture_init:
.LFB150:
	.loc 1 2205 1 is_stmt 1
	.cfi_startproc
	.loc 1 2206 5
	.loc 1 2208 5
	.loc 1 2208 15 is_stmt 0
	lui	a0,%hi(.LC79)
	.loc 1 2205 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 2208 15
	addi	a0,a0,%lo(.LC79)
	.loc 1 2205 1
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 2208 15
	call	qcc74x_device_get_by_name
.LVL790:
	.loc 1 2209 5 is_stmt 1
	.loc 1 2209 8 is_stmt 0
	bne	a0,zero,.L673
	.loc 1 2210 9 is_stmt 1
	lui	a0,%hi(.LC80)
.LVL791:
	addi	a0,a0,%lo(.LC80)
.L675:
	.loc 1 2218 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 2217 5
	tail	printf
.LVL792:
.L673:
	.cfi_restore_state
	.loc 1 2214 5
	lw	a1,4(a0)
	mv	s0,a0
	.loc 1 2214 5 is_stmt 1
	lui	a0,%hi(.LC81)
.LVL793:
	addi	a0,a0,%lo(.LC81)
	call	printf
.LVL794:
	.loc 1 2216 5
	lw	a1,4(s0)
	li	a0,0
	call	usbh_initialize
.LVL795:
	.loc 1 2217 5
	lui	a0,%hi(.LC82)
	addi	a0,a0,%lo(.LC82)
	j	.L675
	.cfi_endproc
.LFE150:
	.size	uvc_capture_init, .-uvc_capture_init
	.section	.text.uvc_get_camera_state,"ax",@progbits
	.align	1
	.globl	uvc_get_camera_state
	.type	uvc_get_camera_state, @function
uvc_get_camera_state:
.LFB151:
	.loc 1 2221 1
	.cfi_startproc
	.loc 1 2222 5
	.loc 1 2222 12 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	lbu	a0,%lo(.LANCHOR0)(a5)
	.loc 1 2223 1
	andi	a0,a0,0xff
	ret
	.cfi_endproc
.LFE151:
	.size	uvc_get_camera_state, .-uvc_get_camera_state
	.section	.text.uvc_get_mode,"ax",@progbits
	.align	1
	.globl	uvc_get_mode
	.type	uvc_get_mode, @function
uvc_get_mode:
.LFB152:
	.loc 1 2226 1 is_stmt 1
	.cfi_startproc
	.loc 1 2227 5
	.loc 1 2227 12 is_stmt 0
	lui	a0,%hi(.LANCHOR26)
	.loc 1 2228 1
	addi	a0,a0,%lo(.LANCHOR26)
	ret
	.cfi_endproc
.LFE152:
	.size	uvc_get_mode, .-uvc_get_mode
	.section	.text.uvc_get_frames_captured,"ax",@progbits
	.align	1
	.globl	uvc_get_frames_captured
	.type	uvc_get_frames_captured, @function
uvc_get_frames_captured:
.LFB153:
	.loc 1 2231 1 is_stmt 1
	.cfi_startproc
	.loc 1 2232 5
	.loc 1 2232 12 is_stmt 0
	lui	a5,%hi(.LANCHOR27)
	lw	a0,%lo(.LANCHOR27)(a5)
	lw	a1,%lo(.LANCHOR27+4)(a5)
	.loc 1 2233 1
	ret
	.cfi_endproc
.LFE153:
	.size	uvc_get_frames_captured, .-uvc_get_frames_captured
	.section	.text.uvc_alloc_session_id,"ax",@progbits
	.align	1
	.globl	uvc_alloc_session_id
	.type	uvc_alloc_session_id, @function
uvc_alloc_session_id:
.LFB154:
	.loc 1 2236 1 is_stmt 1
	.cfi_startproc
	.loc 1 2237 5
	.loc 1 2238 5
	.loc 1 2236 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 2238 5
	call	vTaskEnterCritical
.LVL796:
	.loc 1 2239 5 is_stmt 1
	.loc 1 2239 26 is_stmt 0
	lui	a5,%hi(.LANCHOR69)
	addi	a4,a5,%lo(.LANCHOR69)
	lw	a3,0(a4)
	addi	a5,a5,%lo(.LANCHOR69)
	addi	a3,a3,1
	sw	a3,0(a4)
	.loc 1 2240 5 is_stmt 1
	.loc 1 2240 31 is_stmt 0
	lw	a4,0(a4)
	.loc 1 2240 8
	bne	a4,zero,.L680
	.loc 1 2241 9 is_stmt 1
	.loc 1 2241 31 is_stmt 0
	li	a4,1
	sw	a4,0(a5)
.L680:
	.loc 1 2243 5 is_stmt 1
	.loc 1 2243 10 is_stmt 0
	lw	a0,0(a5)
	sw	a0,12(sp)
.LVL797:
	.loc 1 2244 5 is_stmt 1
	call	vTaskExitCritical
.LVL798:
	.loc 1 2245 5
	.loc 1 2246 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	a0,12(sp)
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL799:
	jr	ra
	.cfi_endproc
.LFE154:
	.size	uvc_alloc_session_id, .-uvc_alloc_session_id
	.section	.text.uvc_get_capture_ctrl_state,"ax",@progbits
	.align	1
	.globl	uvc_get_capture_ctrl_state
	.type	uvc_get_capture_ctrl_state, @function
uvc_get_capture_ctrl_state:
.LFB155:
	.loc 1 2249 1 is_stmt 1
	.cfi_startproc
	.loc 1 2250 5
.LBB487:
.LBB488:
	.loc 1 179 5
	.loc 1 180 5
.LBE488:
.LBE487:
	.loc 1 2249 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	.cfi_offset 1, -4
.LBB490:
.LBB489:
	.loc 1 180 5
	call	vTaskEnterCritical
.LVL800:
	.loc 1 181 5 is_stmt 1
	.loc 1 181 11 is_stmt 0
	lui	a5,%hi(.LANCHOR6)
	lbu	a0,%lo(.LANCHOR6)(a5)
	andi	a0,a0,0xff
	sw	a0,12(sp)
.LVL801:
	.loc 1 182 5 is_stmt 1
	call	vTaskExitCritical
.LVL802:
	.loc 1 183 5
.LBE489:
.LBE490:
	.loc 1 2251 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	a0,12(sp)
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE155:
	.size	uvc_get_capture_ctrl_state, .-uvc_get_capture_ctrl_state
	.section	.text.uvc_session_is_restarting,"ax",@progbits
	.align	1
	.globl	uvc_session_is_restarting
	.type	uvc_session_is_restarting, @function
uvc_session_is_restarting:
.LFB156:
	.loc 1 2254 1 is_stmt 1
	.cfi_startproc
.LVL803:
	.loc 1 2255 5
	.loc 1 2254 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	a0,12(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 2255 5
	call	vTaskEnterCritical
.LVL804:
	.loc 1 2256 4 is_stmt 1
	.loc 1 2257 59 is_stmt 0
	lw	a0,12(sp)
	li	s0,0
	beq	a0,zero,.L685
	.loc 1 2257 35 discriminator 1
	lui	a5,%hi(.LANCHOR7)
	lw	a5,%lo(.LANCHOR7)(a5)
	.loc 1 2257 59 discriminator 1
	li	s0,0
	.loc 1 2256 41 discriminator 1
	bne	a5,a0,.L685
	.loc 1 2258 45 discriminator 4
	lui	a5,%hi(.LANCHOR6)
	lbu	s0,%lo(.LANCHOR6)(a5)
	andi	s0,s0,0xff
	.loc 1 2257 59 discriminator 4
	addi	s0,s0,-3
	seqz	s0,s0
.L685:
.LVL805:
	.loc 1 2259 5 is_stmt 1
	call	vTaskExitCritical
.LVL806:
	.loc 1 2260 5
	.loc 1 2261 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	mv	a0,s0
	lw	s0,24(sp)
	.cfi_restore 8
.LVL807:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL808:
	jr	ra
	.cfi_endproc
.LFE156:
	.size	uvc_session_is_restarting, .-uvc_session_is_restarting
	.section	.rodata.uvc_start_capture_session.str1.4,"aMS",@progbits,1
	.align	2
.LC83:
	.string	"\033[0;33m[W][UVC] [UVC] Start denied for session=%lu active=%lu state=%u\r\n"
	.align	2
.LC84:
	.string	"\033[0;31m[E][UVC] [UVC] usbh_video_open failed in start_capture: %d\r\n"
	.align	2
.LC85:
	.string	"\033[0m[I][UVC] [UVC] Capture start requested (session=%lu)\r\n"
	.align	2
.LC86:
	.string	"uvc_iso"
	.align	2
.LC87:
	.string	"\033[0;31m[E][UVC] [UVC] Failed to create streaming task (stack=%u, free=%u)\r\n"
	.section	.text.uvc_start_capture_session,"ax",@progbits
	.align	1
	.globl	uvc_start_capture_session
	.type	uvc_start_capture_session, @function
uvc_start_capture_session:
.LFB157:
	.loc 1 2264 1 is_stmt 1
	.cfi_startproc
.LVL809:
	.loc 1 2265 5
	.loc 1 2265 8 is_stmt 0
	beq	a0,zero,.L703
	.loc 1 2264 1 discriminator 1
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s1,36(sp)
	.cfi_offset 9, -12
	.loc 1 2265 29 discriminator 1
	lui	s1,%hi(.LANCHOR37)
	.loc 1 2265 26 discriminator 1
	lw	a4,%lo(.LANCHOR37)(s1)
	.loc 1 2264 1 discriminator 1
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	addi	s1,s1,%lo(.LANCHOR37)
	.loc 1 2266 16 discriminator 1
	li	a5,-1
	.loc 1 2265 26 discriminator 1
	beq	a4,zero,.L689
	mv	s0,a0
	.loc 1 2269 5 is_stmt 1
	call	vTaskEnterCritical
.LVL810:
	.loc 1 2270 5
	.loc 1 2270 26 is_stmt 0
	lui	a4,%hi(.LANCHOR6)
	addi	a5,a4,%lo(.LANCHOR6)
	lbu	a3,0(a5)
	.loc 1 2271 14
	lui	a5,%hi(.LANCHOR7)
	addi	a2,a5,%lo(.LANCHOR7)
	.loc 1 2270 26
	andi	a3,a3,0xff
.LVL811:
	.loc 1 2271 5 is_stmt 1
	.loc 1 2272 72 is_stmt 0
	addi	a1,a3,-1
	.loc 1 2271 14
	lw	a2,0(a2)
.LVL812:
	.loc 1 2272 5 is_stmt 1
	.loc 1 2272 8 is_stmt 0
	andi	a1,a1,0xff
	li	a0,2
	addi	a4,a4,%lo(.LANCHOR6)
	addi	a5,a5,%lo(.LANCHOR7)
	bgtu	a1,a0,.L691
	.loc 1 2273 43
	bne	s0,a2,.L692
	.loc 1 2274 9 is_stmt 1
	call	vTaskExitCritical
.LVL813:
	.loc 1 2275 9
.L718:
	.loc 1 2291 9
	.loc 1 2291 16 is_stmt 0
	li	a5,0
.L689:
	.loc 1 2327 1
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
	mv	a0,a5
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL814:
.L691:
	.cfi_restore_state
	.loc 1 2277 5 is_stmt 1
	.loc 1 2277 8 is_stmt 0
	beq	a3,zero,.L693
	.loc 1 2277 38 discriminator 1
	beq	s0,a2,.L693
.L692:
	sw	a2,12(sp)
	sw	a3,8(sp)
	.loc 1 2278 9 is_stmt 1
	call	vTaskExitCritical
.LVL815:
	.loc 1 2279 9
	lw	a3,8(sp)
	lw	a2,12(sp)
	lui	a0,%hi(.LC83)
	mv	a1,s0
	addi	a0,a0,%lo(.LC83)
	call	printf
.LVL816:
	.loc 1 2283 9
.L720:
	.loc 1 2324 9
	.loc 1 2324 16 is_stmt 0
	li	a5,-1
	j	.L689
.LVL817:
.L693:
	.loc 1 2285 5 is_stmt 1
	.loc 1 2285 26 is_stmt 0
	li	s2,1
	sb	s2,0(a4)
	.loc 1 2286 5 is_stmt 1
	.loc 1 2286 25 is_stmt 0
	sw	s0,0(a5)
	.loc 1 2287 5 is_stmt 1
	call	vTaskExitCritical
.LVL818:
	.loc 1 2289 5
	.loc 1 2289 21 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	lbu	a4,0(a5)
	.loc 1 2289 8
	li	a3,2
	.loc 1 2289 21
	andi	a4,a4,0xff
	.loc 1 2289 8
	bne	a4,a3,.L694
	.loc 1 2290 9 is_stmt 1
	mv	a1,s0
	li	a0,2
	call	capture_ctrl_set
.LVL819:
	j	.L718
.L694:
	.loc 1 2293 5
	.loc 1 2293 21 is_stmt 0
	lbu	a5,0(a5)
	andi	a5,a5,0xff
	.loc 1 2293 8
	beq	a5,s2,.L695
.LVL820:
.L719:
	.loc 1 2323 9 is_stmt 1
	li	a1,0
	li	a0,0
	call	capture_ctrl_set
.LVL821:
	j	.L720
.LVL822:
.L695:
	.loc 1 2298 5
	.loc 1 2298 23 is_stmt 0
	lw	a0,0(s1)
	.loc 1 2298 8
	lw	a5,4(a0)
	beq	a5,zero,.L696
	.loc 1 2298 31 discriminator 1
	lhu	a5,84(a0)
	bne	a5,zero,.L697
.L696:
.LBB494:
	.loc 1 2299 9 is_stmt 1
	.loc 1 2299 40 is_stmt 0
	lui	a5,%hi(.LANCHOR67)
	lw	a5,%lo(.LANCHOR67)(a5)
	.loc 1 2299 12
	beq	a5,zero,.L698
	.loc 1 2300 13 is_stmt 1
	.loc 1 2300 51 is_stmt 0
	li	a4,1
	sb	a4,15(a0)
	.loc 1 2301 13 is_stmt 1
	.loc 1 2301 52 is_stmt 0
	sb	a4,16(a0)
	.loc 1 2302 13 is_stmt 1
	.loc 1 2302 50 is_stmt 0
	extu	a4,a5,8+8-1,8
	sb	a5,19(a0)
	sb	a4,20(a0)
	extu	a4,a5,16+8-1,16
	srli	a5,a5,24
	sb	a4,21(a0)
	sb	a5,22(a0)
.L699:
	.loc 1 2309 9 is_stmt 1
	.loc 1 2309 19 is_stmt 0
	lui	a5,%hi(.LANCHOR26)
	addi	a5,a5,%lo(.LANCHOR26)
	lbu	a1,8(a5)
	lbu	a4,9(a5)
	lhu	a3,6(a5)
	lhu	a2,4(a5)
	call	usbh_video_open
.LVL823:
	mv	a1,a0
.LVL824:
	.loc 1 2312 9 is_stmt 1
	.loc 1 2312 12 is_stmt 0
	bge	a0,zero,.L697
	.loc 1 2313 13 is_stmt 1
	lui	a0,%hi(.LC84)
.LVL825:
	addi	a0,a0,%lo(.LC84)
	call	printf
.LVL826:
	.loc 1 2314 13
	j	.L719
.L698:
	.loc 1 2304 13
	.loc 1 2304 51 is_stmt 0
	sb	zero,15(a0)
	.loc 1 2305 13 is_stmt 1
	.loc 1 2305 52 is_stmt 0
	sb	zero,16(a0)
	.loc 1 2306 13 is_stmt 1
	.loc 1 2306 50 is_stmt 0
	sb	zero,19(a0)
	sb	zero,20(a0)
	sb	zero,21(a0)
	sb	zero,22(a0)
	j	.L699
.L697:
.LBE494:
	.loc 1 2319 5 is_stmt 1
	lui	a0,%hi(.LC85)
	mv	a1,s0
	addi	a0,a0,%lo(.LC85)
.LBB495:
.LBB496:
	.loc 1 2042 9 is_stmt 0
	lui	s0,%hi(.LANCHOR28)
.LVL827:
.LBE496:
.LBE495:
	.loc 1 2319 5
	call	printf
.LVL828:
	.loc 1 2321 5 is_stmt 1
.LBB499:
.LBB497:
	.loc 1 2042 5
	.loc 1 2042 8 is_stmt 0
	lw	a5,%lo(.LANCHOR28)(s0)
	addi	s4,s0,%lo(.LANCHOR28)
	bne	a5,zero,.L718
	.loc 1 2048 5 is_stmt 1
	.loc 1 2048 9 is_stmt 0
	lui	a5,%hi(.LANCHOR8)
	.loc 1 2048 8
	lbu	a4,%lo(.LANCHOR8)(a5)
	addi	s2,a5,%lo(.LANCHOR8)
	beq	a4,zero,.L701
	.loc 1 2049 9 is_stmt 1
	lui	a0,%hi(.LANCHOR9)
	addi	a0,a0,%lo(.LANCHOR9)
	call	frame_free
.LVL829:
.L701:
	.loc 1 2051 5
	.loc 1 2052 26 is_stmt 0
	lui	a5,%hi(.LANCHOR10)
	sb	zero,%lo(.LANCHOR10)(a5)
	.loc 1 2053 25
	lui	a5,%hi(.LANCHOR11)
	sb	zero,%lo(.LANCHOR11)(a5)
	.loc 1 2054 25
	lui	a5,%hi(.LANCHOR12)
	sb	zero,%lo(.LANCHOR12)(a5)
	.loc 1 2055 28
	lui	a5,%hi(.LANCHOR13)
	sh	zero,%lo(.LANCHOR13)(a5)
	.loc 1 2056 27
	lui	a5,%hi(.LANCHOR14)
	sb	zero,%lo(.LANCHOR14)(a5)
	.loc 1 2057 27
	lui	a5,%hi(.LANCHOR15)
	.loc 1 2051 23
	sb	zero,0(s2)
	.loc 1 2052 5 is_stmt 1
	.loc 1 2053 5
	.loc 1 2054 5
	.loc 1 2055 5
	.loc 1 2056 5
	.loc 1 2057 5
	.loc 1 2057 27 is_stmt 0
	sb	zero,%lo(.LANCHOR15)(a5)
	.loc 1 2058 5 is_stmt 1
	.loc 1 2061 19 is_stmt 0
	lui	s2,%hi(.LANCHOR19)
	.loc 1 2058 23
	lui	a5,%hi(.LANCHOR38)
	sb	zero,%lo(.LANCHOR38)(a5)
	.loc 1 2059 5 is_stmt 1
	.loc 1 2061 19 is_stmt 0
	addi	s2,s2,%lo(.LANCHOR19)
	.loc 1 2059 5
	call	frame_queue_drain
.LVL830:
	.loc 1 2061 5 is_stmt 1
	.loc 1 2063 34 is_stmt 0
	lui	a5,%hi(.LANCHOR66)
	.loc 1 2061 19
	sb	zero,0(s2)
	.loc 1 2063 5 is_stmt 1
	.loc 1 2064 9 is_stmt 0
	li	s3,8192
	lui	a1,%hi(.LC86)
	lui	a0,%hi(streaming_task)
	.loc 1 2063 34
	sb	zero,%lo(.LANCHOR66)(a5)
	.loc 1 2064 5 is_stmt 1
	.loc 1 2064 9 is_stmt 0
	li	a4,10
	addi	a5,s0,%lo(.LANCHOR28)
	li	a3,0
	addi	a2,s3,-2048
	addi	a1,a1,%lo(.LC86)
	addi	a0,a0,%lo(streaming_task)
	call	xTaskCreate
.LVL831:
	.loc 1 2064 8
	li	s0,1
	beq	a0,s0,.L718
	.loc 1 2066 9 is_stmt 1
	.loc 1 2066 135 is_stmt 0
	call	kfree_size
.LVL832:
	mv	a2,a0
	.loc 1 2066 9
	lui	a0,%hi(.LC87)
	addi	a1,s3,-2048
	addi	a0,a0,%lo(.LC87)
	call	printf
.LVL833:
	.loc 1 2068 9 is_stmt 1
.LBE497:
.LBE499:
	.loc 1 2322 15 is_stmt 0
	lw	a0,0(s1)
.LBB500:
.LBB498:
	.loc 1 2068 23
	sb	s0,0(s2)
	.loc 1 2069 9 is_stmt 1
	.loc 1 2069 23 is_stmt 0
	sw	zero,0(s4)
	.loc 1 2070 9 is_stmt 1
.LBE498:
.LBE500:
	.loc 1 2322 9
	.loc 1 2322 15 is_stmt 0
	call	usbh_video_close
.LVL834:
	j	.L719
.LVL835:
.L703:
	.cfi_def_cfa_offset 0
	.cfi_restore 1
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 18
	.cfi_restore 19
	.cfi_restore 20
	.loc 1 2266 16
	li	a5,-1
	.loc 1 2327 1
	mv	a0,a5
.LVL836:
	ret
	.cfi_endproc
.LFE157:
	.size	uvc_start_capture_session, .-uvc_start_capture_session
	.section	.rodata.uvc_stop_capture_session.str1.4,"aMS",@progbits,1
	.align	2
.LC88:
	.string	"\033[0m[I][UVC] [UVC] Ignore stale stop for session=%lu (active=%lu state=%u)\r\n"
	.align	2
.LC89:
	.string	"\033[0;31m[E][UVC] [UVC] usbh_video_close failed in stop_capture: %d\r\n"
	.section	.text.uvc_stop_capture_session,"ax",@progbits
	.align	1
	.globl	uvc_stop_capture_session
	.type	uvc_stop_capture_session, @function
uvc_stop_capture_session:
.LFB158:
	.loc 1 2330 1 is_stmt 1
	.cfi_startproc
.LVL837:
	.loc 1 2331 5
	.loc 1 2331 8 is_stmt 0
	beq	a0,zero,.L727
	.loc 1 2330 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	mv	s0,a0
	.loc 1 2335 5 is_stmt 1
	call	vTaskEnterCritical
.LVL838:
	.loc 1 2336 5
	.loc 1 2336 26 is_stmt 0
	lui	a5,%hi(.LANCHOR6)
	addi	a5,a5,%lo(.LANCHOR6)
	lbu	a4,0(a5)
	.loc 1 2337 14
	lui	a2,%hi(.LANCHOR7)
	lw	a2,%lo(.LANCHOR7)(a2)
	.loc 1 2336 26
	andi	a3,a4,0xff
.LVL839:
	.loc 1 2337 5 is_stmt 1
	.loc 1 2338 5
	.loc 1 2338 8 is_stmt 0
	andi	a4,a4,251
	bne	a4,zero,.L723
	.loc 1 2339 9 is_stmt 1
	call	vTaskExitCritical
.LVL840:
	.loc 1 2340 9
.L741:
.LBB504:
.LBB505:
	.loc 1 2368 5
	.loc 1 2368 12 is_stmt 0
	li	a0,0
	j	.L721
.LVL841:
.L723:
	sw	a3,12(sp)
.LBE505:
.LBE504:
	.loc 1 2342 5 is_stmt 1
	.loc 1 2342 8 is_stmt 0
	sw	a2,8(sp)
	beq	s0,a2,.L724
	.loc 1 2343 9 is_stmt 1
	call	vTaskExitCritical
.LVL842:
	.loc 1 2344 9
	lw	a3,12(sp)
	lw	a2,8(sp)
	lui	a0,%hi(.LC88)
	mv	a1,s0
	addi	a0,a0,%lo(.LC88)
	call	printf
.LVL843:
	.loc 1 2348 9
	j	.L741
.LVL844:
.L724:
.LBB509:
.LBB507:
	.loc 1 2350 5
	.loc 1 2350 26 is_stmt 0
	li	a4,4
	sb	a4,0(a5)
	.loc 1 2351 5 is_stmt 1
	call	vTaskExitCritical
.LVL845:
	.loc 1 2353 5
	call	stop_streaming
.LVL846:
	.loc 1 2355 5
	.loc 1 2355 9 is_stmt 0
	lui	a5,%hi(.LANCHOR37)
	lw	a0,%lo(.LANCHOR37)(a5)
	lui	s0,%hi(.LANCHOR0)
.LVL847:
	addi	s0,s0,%lo(.LANCHOR0)
	.loc 1 2355 8
	beq	a0,zero,.L725
	.loc 1 2355 38
	lbu	a5,0(s0)
	andi	a5,a5,0xff
	.loc 1 2355 23
	beq	a5,zero,.L725
.LBB506:
	.loc 1 2356 9 is_stmt 1
	.loc 1 2356 19 is_stmt 0
	call	usbh_video_close
.LVL848:
	mv	a1,a0
.LVL849:
	.loc 1 2357 9 is_stmt 1
	.loc 1 2357 12 is_stmt 0
	bge	a0,zero,.L725
	.loc 1 2358 13 is_stmt 1
	lui	a0,%hi(.LC89)
.LVL850:
	addi	a0,a0,%lo(.LC89)
	call	printf
.LVL851:
	.loc 1 2359 13
	li	a0,0
	li	a1,0
	call	capture_ctrl_set
.LVL852:
	.loc 1 2360 13
	.loc 1 2360 20 is_stmt 0
	li	a0,-1
.LVL853:
.L721:
.LBE506:
.LBE507:
.LBE509:
	.loc 1 2369 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL854:
.L725:
	.cfi_restore_state
.LBB510:
.LBB508:
	.loc 1 2364 5 is_stmt 1
	.loc 1 2364 21 is_stmt 0
	lbu	a5,0(s0)
	andi	a5,a5,0xff
	.loc 1 2364 8
	beq	a5,zero,.L726
	.loc 1 2364 55
	lbu	a5,0(s0)
	.loc 1 2364 40
	li	a4,3
	.loc 1 2364 55
	andi	a5,a5,0xff
	.loc 1 2364 40
	beq	a5,a4,.L726
	.loc 1 2365 9 is_stmt 1
	li	a0,1
	call	set_cam_state
.LVL855:
.L726:
	.loc 1 2367 5
	li	a1,0
	li	a0,0
	call	capture_ctrl_set
.LVL856:
	j	.L741
.LVL857:
.L727:
	.cfi_def_cfa_offset 0
	.cfi_restore 1
	.cfi_restore 8
.LBE508:
.LBE510:
	.loc 1 2332 16 is_stmt 0
	li	a0,-1
.LVL858:
	.loc 1 2369 1
	ret
	.cfi_endproc
.LFE158:
	.size	uvc_stop_capture_session, .-uvc_stop_capture_session
	.section	.text.uvc_start_capture,"ax",@progbits
	.align	1
	.globl	uvc_start_capture
	.type	uvc_start_capture, @function
uvc_start_capture:
.LFB159:
	.loc 1 2372 1 is_stmt 1
	.cfi_startproc
	.loc 1 2373 5
	.loc 1 2372 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	.loc 1 2373 26
	lui	s0,%hi(.LANCHOR68)
	.loc 1 2373 8
	lw	a5,%lo(.LANCHOR68)(s0)
	.loc 1 2372 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	addi	s0,s0,%lo(.LANCHOR68)
	.loc 1 2373 8
	bne	a5,zero,.L743
	.loc 1 2374 9 is_stmt 1
	.loc 1 2374 28 is_stmt 0
	call	uvc_alloc_session_id
.LVL859:
	.loc 1 2374 26
	sw	a0,0(s0)
.L743:
	.loc 1 2376 5 is_stmt 1
	.loc 1 2376 15 is_stmt 0
	lw	a0,0(s0)
	call	uvc_start_capture_session
.LVL860:
	.loc 1 2377 5 is_stmt 1
	.loc 1 2377 8 is_stmt 0
	bge	a0,zero,.L742
	.loc 1 2378 9 is_stmt 1
	.loc 1 2378 26 is_stmt 0
	sw	zero,0(s0)
	.loc 1 2380 5 is_stmt 1
.L742:
	.loc 1 2381 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE159:
	.size	uvc_start_capture, .-uvc_start_capture
	.section	.rodata.cmd_cam_start.str1.4,"aMS",@progbits,1
	.align	2
.LC90:
	.string	"No camera attached\r\n"
	.align	2
.LC91:
	.string	"Camera already streaming\r\n"
	.align	2
.LC92:
	.string	"Camera not in ATTACHED state (current: %s)\r\n"
	.align	2
.LC93:
	.string	"Start capture failed\r\n"
	.align	2
.LC94:
	.string	"Camera streaming started\r\n"
	.section	.text.cmd_cam_start,"ax",@progbits
	.align	1
	.type	cmd_cam_start, @function
cmd_cam_start:
.LFB167:
	.loc 1 2454 1 is_stmt 1
	.cfi_startproc
.LVL861:
	.loc 1 2455 5
	.loc 1 2455 17
	.loc 1 2457 5
	.loc 1 2457 8 is_stmt 0
	lui	a5,%hi(.LANCHOR37)
	lw	a5,%lo(.LANCHOR37)(a5)
	.loc 1 2454 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 2457 8
	bne	a5,zero,.L747
	.loc 1 2458 9 is_stmt 1
	lui	a0,%hi(.LC90)
.LVL862:
	addi	a0,a0,%lo(.LC90)
.LVL863:
.L756:
	.loc 1 2475 9 is_stmt 0
	call	printf
.LVL864:
	j	.L755
.LVL865:
.L747:
	.loc 1 2462 5 is_stmt 1
	.loc 1 2462 21 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	lbu	a4,0(a5)
	.loc 1 2462 8
	li	a3,2
	.loc 1 2462 21
	andi	a4,a4,0xff
	.loc 1 2462 8
	bne	a4,a3,.L749
	.loc 1 2463 9 is_stmt 1
	lui	a0,%hi(.LC91)
.LVL866:
	addi	a0,a0,%lo(.LC91)
.LVL867:
.L757:
	.loc 1 2479 5 is_stmt 0
	call	printf
.LVL868:
	.loc 1 2480 5 is_stmt 1
	.loc 1 2480 12 is_stmt 0
	li	a0,0
	j	.L746
.LVL869:
.L749:
	.loc 1 2467 5 is_stmt 1
	.loc 1 2467 21 is_stmt 0
	lbu	a4,0(a5)
	.loc 1 2467 8
	li	a3,1
	.loc 1 2467 21
	andi	a4,a4,0xff
	.loc 1 2467 8
	beq	a4,a3,.L750
.LVL870:
.LBB515:
.LBB516:
	.loc 1 2468 9 is_stmt 1
	lbu	a5,0(a5)
	li	a4,3
	andi	a5,a5,0xff
.LVL871:
.LBE516:
.LBE515:
	.loc 1 2421 5
	bgtu	a5,a4,.L753
	lui	a4,%hi(.LANCHOR25)
	addi	a4,a4,%lo(.LANCHOR25)
	lrw	a1,a4,a5,2
.LVL872:
.L751:
.LBB519:
.LBB517:
	.loc 1 2468 9 is_stmt 0
	lui	a0,%hi(.LC92)
.LVL873:
	addi	a0,a0,%lo(.LC92)
	call	printf
.LVL874:
	.loc 1 2470 9 is_stmt 1
.L755:
.LBE517:
.LBE519:
	.loc 1 2476 9
	.loc 1 2476 16 is_stmt 0
	li	a0,-1
.L746:
	.loc 1 2481 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL875:
.L753:
	.cfi_restore_state
.LBB520:
.LBB518:
	.loc 1 2468 9
	lui	a1,%hi(.LC10)
.LVL876:
	addi	a1,a1,%lo(.LC10)
	j	.L751
.LVL877:
.L750:
.LBE518:
.LBE520:
	.loc 1 2473 5 is_stmt 1
	.loc 1 2473 15 is_stmt 0
	call	uvc_start_capture
.LVL878:
	.loc 1 2474 5 is_stmt 1
	.loc 1 2474 8 is_stmt 0
	bge	a0,zero,.L752
	.loc 1 2475 9 is_stmt 1
	lui	a0,%hi(.LC93)
.LVL879:
	addi	a0,a0,%lo(.LC93)
	j	.L756
.LVL880:
.L752:
	.loc 1 2479 5
	lui	a0,%hi(.LC94)
.LVL881:
	addi	a0,a0,%lo(.LC94)
	j	.L757
	.cfi_endproc
.LFE167:
	.size	cmd_cam_start, .-cmd_cam_start
	.section	.text.uvc_stop_capture,"ax",@progbits
	.align	1
	.globl	uvc_stop_capture
	.type	uvc_stop_capture, @function
uvc_stop_capture:
.LFB160:
	.loc 1 2384 1
	.cfi_startproc
	.loc 1 2385 5
	.loc 1 2384 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	.loc 1 2385 26
	lui	s0,%hi(.LANCHOR68)
	addi	s0,s0,%lo(.LANCHOR68)
	lw	a5,0(s0)
	.loc 1 2384 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 2386 16
	li	a0,0
	.loc 1 2385 8
	beq	a5,zero,.L758
	.loc 1 2388 5 is_stmt 1
	.loc 1 2388 15 is_stmt 0
	mv	a0,a5
	call	uvc_stop_capture_session
.LVL882:
	.loc 1 2389 5 is_stmt 1
	.loc 1 2389 8 is_stmt 0
	bne	a0,zero,.L758
	.loc 1 2390 9 is_stmt 1
	.loc 1 2390 26 is_stmt 0
	sw	zero,0(s0)
.LVL883:
.L758:
	.loc 1 2393 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE160:
	.size	uvc_stop_capture, .-uvc_stop_capture
	.section	.rodata.cmd_cam_stop.str1.4,"aMS",@progbits,1
	.align	2
.LC95:
	.string	"Camera not streaming (current: %s)\r\n"
	.align	2
.LC96:
	.string	"Stop capture failed\r\n"
	.align	2
.LC97:
	.string	"Camera streaming stopped\r\n"
	.section	.text.cmd_cam_stop,"ax",@progbits
	.align	1
	.type	cmd_cam_stop, @function
cmd_cam_stop:
.LFB168:
	.loc 1 2485 1 is_stmt 1
	.cfi_startproc
.LVL884:
	.loc 1 2486 5
	.loc 1 2486 17
	.loc 1 2488 5
	.loc 1 2488 8 is_stmt 0
	lui	a5,%hi(.LANCHOR37)
	lw	a5,%lo(.LANCHOR37)(a5)
	.loc 1 2485 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 2488 8
	bne	a5,zero,.L764
	.loc 1 2489 9 is_stmt 1
	lui	a0,%hi(.LC90)
.LVL885:
	addi	a0,a0,%lo(.LC90)
.LVL886:
.L772:
	.loc 1 2501 9 is_stmt 0
	call	printf
.LVL887:
	.loc 1 2502 9 is_stmt 1
	.loc 1 2502 16 is_stmt 0
	li	a0,-1
.L763:
	.loc 1 2507 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL888:
.L764:
	.cfi_restore_state
	.loc 1 2493 5 is_stmt 1
	.loc 1 2493 21 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	lbu	a4,0(a5)
	.loc 1 2493 8
	li	a3,2
	.loc 1 2493 21
	andi	a4,a4,0xff
	.loc 1 2493 8
	beq	a4,a3,.L766
	.loc 1 2493 56 discriminator 1
	lbu	a4,0(a5)
	.loc 1 2493 41 discriminator 1
	li	a3,1
	.loc 1 2493 56 discriminator 1
	andi	a4,a4,0xff
	.loc 1 2493 41 discriminator 1
	beq	a4,a3,.L766
.LVL889:
.LBB525:
.LBB526:
	.loc 1 2494 9 is_stmt 1
	lbu	a5,0(a5)
	li	a4,3
	andi	a5,a5,0xff
.LVL890:
.LBE526:
.LBE525:
	.loc 1 2421 5
	bgtu	a5,a4,.L769
	lui	a4,%hi(.LANCHOR25)
	addi	a4,a4,%lo(.LANCHOR25)
	lrw	a1,a4,a5,2
.LVL891:
.L767:
.LBB529:
.LBB527:
	.loc 1 2494 9 is_stmt 0
	lui	a0,%hi(.LC95)
.LVL892:
	addi	a0,a0,%lo(.LC95)
	call	printf
.LVL893:
	.loc 1 2496 9 is_stmt 1
.L771:
.LBE527:
.LBE529:
	.loc 1 2506 5
	.loc 1 2506 12 is_stmt 0
	li	a0,0
	j	.L763
.LVL894:
.L769:
.LBB530:
.LBB528:
	.loc 1 2494 9
	lui	a1,%hi(.LC10)
.LVL895:
	addi	a1,a1,%lo(.LC10)
	j	.L767
.LVL896:
.L766:
.LBE528:
.LBE530:
	.loc 1 2499 5 is_stmt 1
	.loc 1 2499 15 is_stmt 0
	call	uvc_stop_capture
.LVL897:
	.loc 1 2500 5 is_stmt 1
	.loc 1 2500 8 is_stmt 0
	bge	a0,zero,.L768
	.loc 1 2501 9 is_stmt 1
	lui	a0,%hi(.LC96)
.LVL898:
	addi	a0,a0,%lo(.LC96)
	j	.L772
.LVL899:
.L768:
	.loc 1 2505 5
	lui	a0,%hi(.LC97)
.LVL900:
	addi	a0,a0,%lo(.LC97)
	call	printf
.LVL901:
	j	.L771
	.cfi_endproc
.LFE168:
	.size	cmd_cam_stop, .-cmd_cam_stop
	.section	.text.uvc_dequeue_frame,"ax",@progbits
	.align	1
	.globl	uvc_dequeue_frame
	.type	uvc_dequeue_frame, @function
uvc_dequeue_frame:
.LFB161:
	.loc 1 2396 1
	.cfi_startproc
.LVL902:
	.loc 1 2397 5
	.loc 1 2397 12 is_stmt 0
	tail	frame_queue_pop
.LVL903:
	.cfi_endproc
.LFE161:
	.size	uvc_dequeue_frame, .-uvc_dequeue_frame
	.section	.text.uvc_dequeue_latest_frame,"ax",@progbits
	.align	1
	.globl	uvc_dequeue_latest_frame
	.type	uvc_dequeue_latest_frame, @function
uvc_dequeue_latest_frame:
.LFB162:
	.loc 1 2401 1 is_stmt 1
	.cfi_startproc
.LVL904:
	.loc 1 2402 5
	.loc 1 2402 12 is_stmt 0
	tail	frame_queue_pop_latest
.LVL905:
	.cfi_endproc
.LFE162:
	.size	uvc_dequeue_latest_frame, .-uvc_dequeue_latest_frame
	.section	.text.uvc_frame_release,"ax",@progbits
	.align	1
	.globl	uvc_frame_release
	.type	uvc_frame_release, @function
uvc_frame_release:
.LFB163:
	.loc 1 2406 1 is_stmt 1
	.cfi_startproc
.LVL906:
	.loc 1 2407 5
	tail	frame_free
.LVL907:
	.cfi_endproc
.LFE163:
	.size	uvc_frame_release, .-uvc_frame_release
	.section	.text.uvc_register_state_callback,"ax",@progbits
	.align	1
	.globl	uvc_register_state_callback
	.type	uvc_register_state_callback, @function
uvc_register_state_callback:
.LFB164:
	.loc 1 2411 1
	.cfi_startproc
.LVL908:
	.loc 1 2412 5
	.loc 1 2412 22 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	sw	a0,%lo(.LANCHOR1)(a5)
	.loc 1 2413 1
	ret
	.cfi_endproc
.LFE164:
	.size	uvc_register_state_callback, .-uvc_register_state_callback
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC98:
	.string	"DETACHED"
	.align	2
.LC99:
	.string	"ATTACHED"
	.align	2
.LC100:
	.string	"STREAMING"
	.align	2
.LC101:
	.string	"UNAVAILABLE"
	.globl	__fsym_cam_stop
	.globl	__fsym_cam_stop_name
	.globl	__fsym_cam_start
	.globl	__fsym_cam_start_name
	.globl	__fsym_cam_info
	.globl	__fsym_cam_info_name
	.section	.bss.g_active_session_id,"aw",@nobits
	.align	2
	.set	.LANCHOR7,. + 0
	.type	g_active_session_id, @object
	.size	g_active_session_id, 4
g_active_session_id:
	.zero	4
	.section	.bss.g_cam_mode,"aw",@nobits
	.align	2
	.set	.LANCHOR26,. + 0
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
	.section	.bss.g_capture_ctrl_state,"aw",@nobits
	.set	.LANCHOR6,. + 0
	.type	g_capture_ctrl_state, @object
	.size	g_capture_ctrl_state, 1
g_capture_ctrl_state:
	.zero	1
	.section	.bss.g_capture_session_seq,"aw",@nobits
	.align	2
	.set	.LANCHOR69,. + 0
	.type	g_capture_session_seq, @object
	.size	g_capture_session_seq, 4
g_capture_session_seq:
	.zero	4
	.section	.bss.g_cli_session_id,"aw",@nobits
	.align	2
	.set	.LANCHOR68,. + 0
	.type	g_cli_session_id, @object
	.size	g_cli_session_id, 4
g_cli_session_id:
	.zero	4
	.section	.bss.g_cur_frame,"aw",@nobits
	.align	2
	.set	.LANCHOR9,. + 0
	.type	g_cur_frame, @object
	.size	g_cur_frame, 12
g_cur_frame:
	.zero	12
	.section	.bss.g_cur_frame_error_pkts,"aw",@nobits
	.align	1
	.set	.LANCHOR13,. + 0
	.type	g_cur_frame_error_pkts, @object
	.size	g_cur_frame_error_pkts, 2
g_cur_frame_error_pkts:
	.zero	2
	.section	.bss.g_cur_frame_oversize,"aw",@nobits
	.set	.LANCHOR10,. + 0
	.type	g_cur_frame_oversize, @object
	.size	g_cur_frame_oversize, 1
g_cur_frame_oversize:
	.zero	1
	.section	.bss.g_cur_frame_saw_eoi,"aw",@nobits
	.set	.LANCHOR12,. + 0
	.type	g_cur_frame_saw_eoi, @object
	.size	g_cur_frame_saw_eoi, 1
g_cur_frame_saw_eoi:
	.zero	1
	.section	.bss.g_cur_frame_tainted,"aw",@nobits
	.set	.LANCHOR11,. + 0
	.type	g_cur_frame_tainted, @object
	.size	g_cur_frame_tainted, 1
g_cur_frame_tainted:
	.zero	1
	.section	.bss.g_cur_frame_valid,"aw",@nobits
	.set	.LANCHOR8,. + 0
	.type	g_cur_frame_valid, @object
	.size	g_cur_frame_valid, 1
g_cur_frame_valid:
	.zero	1
	.section	.bss.g_fid_incomplete_drop_count,"aw",@nobits
	.align	2
	.set	.LANCHOR58,. + 0
	.type	g_fid_incomplete_drop_count, @object
	.size	g_fid_incomplete_drop_count, 4
g_fid_incomplete_drop_count:
	.zero	4
	.section	.bss.g_fid_initialized,"aw",@nobits
	.set	.LANCHOR38,. + 0
	.type	g_fid_initialized, @object
	.size	g_fid_initialized, 1
g_fid_initialized:
	.zero	1
	.section	.bss.g_fid_toggle_ignore_count,"aw",@nobits
	.align	2
	.set	.LANCHOR59,. + 0
	.type	g_fid_toggle_ignore_count, @object
	.size	g_fid_toggle_ignore_count, 4
g_fid_toggle_ignore_count:
	.zero	4
	.section	.bss.g_frame_oversize_drop_count,"aw",@nobits
	.align	2
	.set	.LANCHOR56,. + 0
	.type	g_frame_oversize_drop_count, @object
	.size	g_frame_oversize_drop_count, 4
g_frame_oversize_drop_count:
	.zero	4
	.section	.bss.g_frame_reclaim_count,"aw",@nobits
	.align	2
	.set	.LANCHOR41,. + 0
	.type	g_frame_reclaim_count, @object
	.size	g_frame_reclaim_count, 4
g_frame_reclaim_count:
	.zero	4
	.section	.bss.g_frames_captured,"aw",@nobits
	.align	3
	.set	.LANCHOR27,. + 0
	.type	g_frames_captured, @object
	.size	g_frames_captured, 8
g_frames_captured:
	.zero	8
	.section	.bss.g_guard_fault_count,"aw",@nobits
	.align	2
	.set	.LANCHOR48,. + 0
	.type	g_guard_fault_count, @object
	.size	g_guard_fault_count, 4
g_guard_fault_count:
	.zero	4
	.section	.bss.g_hdr_eof_count,"aw",@nobits
	.align	2
	.set	.LANCHOR30,. + 0
	.type	g_hdr_eof_count, @object
	.size	g_hdr_eof_count, 4
g_hdr_eof_count:
	.zero	4
	.section	.bss.g_hdr_error_bit_count,"aw",@nobits
	.align	2
	.set	.LANCHOR52,. + 0
	.type	g_hdr_error_bit_count, @object
	.size	g_hdr_error_bit_count, 4
g_hdr_error_bit_count:
	.zero	4
	.section	.bss.g_hdr_fid_toggle_count,"aw",@nobits
	.align	2
	.set	.LANCHOR53,. + 0
	.type	g_hdr_fid_toggle_count, @object
	.size	g_hdr_fid_toggle_count, 4
g_hdr_fid_toggle_count:
	.zero	4
	.section	.bss.g_hdr_invalid_count,"aw",@nobits
	.align	2
	.set	.LANCHOR51,. + 0
	.type	g_hdr_invalid_count, @object
	.size	g_hdr_invalid_count, 4
g_hdr_invalid_count:
	.zero	4
	.section	.bss.g_hdr_short_count,"aw",@nobits
	.align	2
	.set	.LANCHOR50,. + 0
	.type	g_hdr_short_count, @object
	.size	g_hdr_short_count, 4
g_hdr_short_count:
	.zero	4
	.section	.bss.g_invalid_urb_buf_count,"aw",@nobits
	.align	2
	.set	.LANCHOR47,. + 0
	.type	g_invalid_urb_buf_count, @object
	.size	g_invalid_urb_buf_count, 4
g_invalid_urb_buf_count:
	.zero	4
	.section	.bss.g_iso_cb_queue_drop_count,"aw",@nobits
	.align	2
	.set	.LANCHOR22,. + 0
	.type	g_iso_cb_queue_drop_count, @object
	.size	g_iso_cb_queue_drop_count, 4
g_iso_cb_queue_drop_count:
	.zero	4
	.section	.bss.g_iso_pkts_per_urb_active,"aw",@nobits
	.set	.LANCHOR17,. + 0
	.type	g_iso_pkts_per_urb_active, @object
	.size	g_iso_pkts_per_urb_active, 1
g_iso_pkts_per_urb_active:
	.zero	1
	.section	.bss.g_iso_urb_count_active,"aw",@nobits
	.set	.LANCHOR40,. + 0
	.type	g_iso_urb_count_active, @object
	.size	g_iso_urb_count_active, 1
g_iso_urb_count_active:
	.zero	1
	.section	.bss.g_jpeg_invalid_drop_count,"aw",@nobits
	.align	2
	.set	.LANCHOR31,. + 0
	.type	g_jpeg_invalid_drop_count, @object
	.size	g_jpeg_invalid_drop_count, 4
g_jpeg_invalid_drop_count:
	.zero	4
	.section	.bss.g_jpeg_nested_soi_count,"aw",@nobits
	.align	2
	.set	.LANCHOR29,. + 0
	.type	g_jpeg_nested_soi_count, @object
	.size	g_jpeg_nested_soi_count, 4
g_jpeg_nested_soi_count:
	.zero	4
	.section	.bss.g_jpeg_no_eoi_count,"aw",@nobits
	.align	2
	.set	.LANCHOR33,. + 0
	.type	g_jpeg_no_eoi_count, @object
	.size	g_jpeg_no_eoi_count, 4
g_jpeg_no_eoi_count:
	.zero	4
	.section	.bss.g_jpeg_no_sos_count,"aw",@nobits
	.align	2
	.set	.LANCHOR32,. + 0
	.type	g_jpeg_no_sos_count, @object
	.size	g_jpeg_no_sos_count, 4
g_jpeg_no_sos_count:
	.zero	4
	.section	.bss.g_jpeg_trailer_garbage_count,"aw",@nobits
	.align	2
	.set	.LANCHOR34,. + 0
	.type	g_jpeg_trailer_garbage_count, @object
	.size	g_jpeg_trailer_garbage_count, 4
g_jpeg_trailer_garbage_count:
	.zero	4
	.section	.bss.g_jpeg_trim_count,"aw",@nobits
	.align	2
	.set	.LANCHOR35,. + 0
	.type	g_jpeg_trim_count, @object
	.size	g_jpeg_trim_count, 4
g_jpeg_trim_count:
	.zero	4
	.section	.bss.g_last_fid,"aw",@nobits
	.set	.LANCHOR65,. + 0
	.type	g_last_fid, @object
	.size	g_last_fid, 1
g_last_fid:
	.zero	1
	.section	.bss.g_parser_escalation_count,"aw",@nobits
	.align	2
	.set	.LANCHOR61,. + 0
	.type	g_parser_escalation_count, @object
	.size	g_parser_escalation_count, 4
g_parser_escalation_count:
	.zero	4
	.section	.bss.g_parser_resync_count,"aw",@nobits
	.align	2
	.set	.LANCHOR60,. + 0
	.type	g_parser_resync_count, @object
	.size	g_parser_resync_count, 4
g_parser_resync_count:
	.zero	4
	.section	.bss.g_parser_resync_streak,"aw",@nobits
	.align	2
	.set	.LANCHOR36,. + 0
	.type	g_parser_resync_streak, @object
	.size	g_parser_resync_streak, 4
g_parser_resync_streak:
	.zero	4
	.section	.bss.g_payload_bytes_total,"aw",@nobits
	.align	3
	.set	.LANCHOR55,. + 0
	.type	g_payload_bytes_total, @object
	.size	g_payload_bytes_total, 8
g_payload_bytes_total:
	.zero	8
	.section	.bss.g_payload_pkt_count,"aw",@nobits
	.align	2
	.set	.LANCHOR54,. + 0
	.type	g_payload_pkt_count, @object
	.size	g_payload_pkt_count, 4
g_payload_pkt_count:
	.zero	4
	.section	.bss.g_pending_resubmit,"aw",@nobits
	.align	2
	.set	.LANCHOR5,. + 0
	.type	g_pending_resubmit, @object
	.size	g_pending_resubmit, 8
g_pending_resubmit:
	.zero	8
	.section	.bss.g_pending_soi_tail_ff,"aw",@nobits
	.set	.LANCHOR15,. + 0
	.type	g_pending_soi_tail_ff, @object
	.size	g_pending_soi_tail_ff, 1
g_pending_soi_tail_ff:
	.zero	1
	.section	.bss.g_pkt_count_clamp_count,"aw",@nobits
	.align	2
	.set	.LANCHOR44,. + 0
	.type	g_pkt_count_clamp_count, @object
	.size	g_pkt_count_clamp_count, 4
g_pkt_count_clamp_count:
	.zero	4
	.section	.bss.g_pkt_desc_repair_count,"aw",@nobits
	.align	2
	.set	.LANCHOR49,. + 0
	.type	g_pkt_desc_repair_count, @object
	.size	g_pkt_desc_repair_count, 4
g_pkt_desc_repair_count:
	.zero	4
	.section	.bss.g_pkt_error_drop_count,"aw",@nobits
	.align	2
	.set	.LANCHOR18,. + 0
	.type	g_pkt_error_drop_count, @object
	.size	g_pkt_error_drop_count, 4
g_pkt_error_drop_count:
	.zero	4
	.section	.bss.g_pkt_len_clamp_count,"aw",@nobits
	.align	2
	.set	.LANCHOR45,. + 0
	.type	g_pkt_len_clamp_count, @object
	.size	g_pkt_len_clamp_count, 4
g_pkt_len_clamp_count:
	.zero	4
	.section	.bss.g_pkt_range_drop_count,"aw",@nobits
	.align	2
	.set	.LANCHOR46,. + 0
	.type	g_pkt_range_drop_count, @object
	.size	g_pkt_range_drop_count, 4
g_pkt_range_drop_count:
	.zero	4
	.section	.bss.g_preferred_interval_100ns,"aw",@nobits
	.align	2
	.set	.LANCHOR67,. + 0
	.type	g_preferred_interval_100ns, @object
	.size	g_preferred_interval_100ns, 4
g_preferred_interval_100ns:
	.zero	4
	.section	.bss.g_resubmit_busy_count,"aw",@nobits
	.align	2
	.set	.LANCHOR63,. + 0
	.type	g_resubmit_busy_count, @object
	.size	g_resubmit_busy_count, 4
g_resubmit_busy_count:
	.zero	4
	.section	.bss.g_resync_soi_count,"aw",@nobits
	.align	2
	.set	.LANCHOR57,. + 0
	.type	g_resync_soi_count, @object
	.size	g_resync_soi_count, 4
g_resync_soi_count:
	.zero	4
	.section	.bss.g_stall_detected,"aw",@nobits
	.set	.LANCHOR23,. + 0
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
	.set	.LANCHOR4,. + 0
	.type	g_stream_iso_bufs, @object
	.size	g_stream_iso_bufs, 8
g_stream_iso_bufs:
	.zero	8
	.section	.bss.g_stream_iso_raw_bufs,"aw",@nobits
	.align	2
	.set	.LANCHOR3,. + 0
	.type	g_stream_iso_raw_bufs, @object
	.size	g_stream_iso_raw_bufs, 8
g_stream_iso_raw_bufs:
	.zero	8
	.section	.bss.g_stream_stop,"aw",@nobits
	.set	.LANCHOR19,. + 0
	.type	g_stream_stop, @object
	.size	g_stream_stop, 1
g_stream_stop:
	.zero	1
	.section	.bss.g_stream_task,"aw",@nobits
	.align	2
	.set	.LANCHOR28,. + 0
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
	.section	.bss.g_transport_restart_attempts,"aw",@nobits
	.set	.LANCHOR66,. + 0
	.type	g_transport_restart_attempts, @object
	.size	g_transport_restart_attempts, 1
g_transport_restart_attempts:
	.zero	1
	.section	.bss.g_transport_restart_count,"aw",@nobits
	.align	2
	.set	.LANCHOR62,. + 0
	.type	g_transport_restart_count, @object
	.size	g_transport_restart_count, 4
g_transport_restart_count:
	.zero	4
	.section	.bss.g_unknown_urb_count,"aw",@nobits
	.align	2
	.set	.LANCHOR43,. + 0
	.type	g_unknown_urb_count, @object
	.size	g_unknown_urb_count, 4
g_unknown_urb_count:
	.zero	4
	.section	.bss.g_urb_complete_count,"aw",@nobits
	.align	2
	.set	.LANCHOR42,. + 0
	.type	g_urb_complete_count, @object
	.size	g_urb_complete_count, 4
g_urb_complete_count:
	.zero	4
	.section	.bss.g_urb_done_head,"aw",@nobits
	.align	2
	.set	.LANCHOR20,. + 0
	.type	g_urb_done_head, @object
	.size	g_urb_done_head, 4
g_urb_done_head:
	.zero	4
	.section	.bss.g_urb_done_ring,"aw",@nobits
	.align	2
	.set	.LANCHOR24,. + 0
	.type	g_urb_done_ring, @object
	.size	g_urb_done_ring, 256
g_urb_done_ring:
	.zero	256
	.section	.bss.g_urb_done_tail,"aw",@nobits
	.align	2
	.set	.LANCHOR21,. + 0
	.type	g_urb_done_tail, @object
	.size	g_urb_done_tail, 4
g_urb_done_tail:
	.zero	4
	.section	.bss.g_urb_payload_completions,"aw",@nobits
	.align	3
	.set	.LANCHOR39,. + 0
	.type	g_urb_payload_completions, @object
	.size	g_urb_payload_completions, 8
g_urb_payload_completions:
	.zero	8
	.section	.bss.g_video_class,"aw",@nobits
	.align	2
	.set	.LANCHOR37,. + 0
	.type	g_video_class, @object
	.size	g_video_class, 4
g_video_class:
	.zero	4
	.section	.bss.g_wait_for_fid_resync,"aw",@nobits
	.set	.LANCHOR14,. + 0
	.type	g_wait_for_fid_resync, @object
	.size	g_wait_for_fid_resync, 1
g_wait_for_fid_resync:
	.zero	1
	.section	.rodata.CSWTCH.362,"a"
	.align	2
	.set	.LANCHOR25,. + 0
	.type	CSWTCH.362, @object
	.size	CSWTCH.362, 16
CSWTCH.362:
	.word	.LC98
	.word	.LC99
	.word	.LC100
	.word	.LC101
	.section	.rodata.__FUNCTION__.0,"a"
	.align	2
	.set	.LANCHOR16,. + 0
	.type	__FUNCTION__.0, @object
	.size	__FUNCTION__.0, 27
__FUNCTION__.0:
	.string	"iso_buffer_layout_is_valid"
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
	.set	.LANCHOR64,. + 0
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
	.file 3 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\machine\\_default_types.h"
	.file 4 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\sys\\_stdint.h"
	.file 5 ".\\examples\\usb_cam_stream\\frame_pool.h"
	.file 6 ".\\examples\\usb_cam_stream\\uvc_capture.h"
	.file 7 ".\\examples\\usb_cam_stream\\http_server.h"
	.file 8 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\lib\\gcc\\riscv64-unknown-elf\\10.4.0\\include\\stddef.h"
	.file 9 ".\\components\\os\\freertos\\portable\\GCC\\RISC-V\\common/portmacro.h"
	.file 10 ".\\components\\os\\freertos\\include/task.h"
	.file 11 ".\\components\\usb\\cherryusb\\common/usb_def.h"
	.file 12 ".\\components\\usb\\cherryusb\\common/usb_list.h"
	.file 13 ".\\components\\usb\\cherryusb\\common/usb_hc.h"
	.file 14 ".\\components\\usb\\cherryusb\\core/usbh_core.h"
	.file 15 ".\\components\\usb\\cherryusb\\common/usb_osal.h"
	.file 16 ".\\components\\usb\\cherryusb\\class\\hub/usb_hub.h"
	.file 17 ".\\components\\usb\\cherryusb\\class\\video/usb_video.h"
	.file 18 ".\\components\\usb\\cherryusb\\class\\video/usbh_video.h"
	.file 19 ".\\drivers\\lhal\\include/qcc74x_core.h"
	.file 20 ".\\components\\shell\\shell.h"
	.file 21 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\stdio.h"
	.file 22 ".\\components\\mm\\mem.h"
	.file 23 ".\\components\\os\\freertos\\include/portable.h"
	.file 24 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\string.h"
	.file 25 ".\\examples\\usb_cam_stream\\freertosconfig.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x5653
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF564
	.byte	0xc
	.4byte	.LASF565
	.4byte	.LASF566
	.4byte	.Ldebug_ranges0+0x980
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF3
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
	.byte	0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x39
	.byte	0x1c
	.4byte	0x52
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.byte	0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x4d
	.byte	0x12
	.4byte	0x65
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.byte	0x3
	.4byte	.LASF8
	.byte	0x3
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
	.byte	0x3
	.byte	0x69
	.byte	0x20
	.4byte	0x92
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
	.4byte	0xac
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.byte	0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x5
	.4byte	0xb3
	.byte	0x6
	.4byte	0xb3
	.byte	0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x24
	.byte	0x14
	.4byte	0x46
	.byte	0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x2c
	.byte	0x13
	.4byte	0x59
	.byte	0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x6c
	.byte	0x6
	.4byte	0xe1
	.byte	0x5
	.4byte	0xe1
	.byte	0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x3c
	.byte	0x14
	.4byte	0x86
	.byte	0x6
	.4byte	0xf7
	.byte	0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x52
	.byte	0x15
	.4byte	0xa0
	.byte	0x7
	.byte	0xc
	.byte	0x5
	.byte	0x14
	.byte	0x9
	.4byte	0x145
	.byte	0x8
	.4byte	.LASF21
	.byte	0x5
	.byte	0x15
	.byte	0xe
	.4byte	0x145
	.byte	0
	.byte	0x9
	.string	"len"
	.byte	0x5
	.byte	0x16
	.byte	0xe
	.4byte	0xe1
	.byte	0x4
	.byte	0x8
	.4byte	.LASF22
	.byte	0x5
	.byte	0x17
	.byte	0xe
	.4byte	0xe1
	.byte	0x8
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0xb3
	.byte	0x3
	.4byte	.LASF23
	.byte	0x5
	.byte	0x18
	.byte	0x3
	.4byte	0x114
	.byte	0xb
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0x6
	.byte	0x9
	.byte	0xe
	.4byte	0x17e
	.byte	0xc
	.4byte	.LASF24
	.byte	0
	.byte	0xc
	.4byte	.LASF25
	.byte	0x1
	.byte	0xc
	.4byte	.LASF26
	.byte	0x2
	.byte	0xc
	.4byte	.LASF27
	.byte	0x3
	.byte	0
	.byte	0x3
	.4byte	.LASF28
	.byte	0x6
	.byte	0xe
	.byte	0x3
	.4byte	0x157
	.byte	0x6
	.4byte	0x17e
	.byte	0xb
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0x6
	.byte	0x11
	.byte	0xe
	.4byte	0x1bc
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
	.byte	0xc
	.4byte	.LASF33
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF34
	.byte	0x6
	.byte	0x17
	.byte	0x3
	.4byte	0x18f
	.byte	0x6
	.4byte	0x1bc
	.byte	0x7
	.byte	0xe
	.byte	0x6
	.byte	0x1a
	.byte	0x9
	.4byte	0x23f
	.byte	0x9
	.string	"vid"
	.byte	0x6
	.byte	0x1b
	.byte	0xe
	.4byte	0xc9
	.byte	0
	.byte	0x9
	.string	"pid"
	.byte	0x6
	.byte	0x1c
	.byte	0xe
	.4byte	0xc9
	.byte	0x2
	.byte	0x8
	.4byte	.LASF35
	.byte	0x6
	.byte	0x1d
	.byte	0xe
	.4byte	0xc9
	.byte	0x4
	.byte	0x8
	.4byte	.LASF36
	.byte	0x6
	.byte	0x1e
	.byte	0xe
	.4byte	0xc9
	.byte	0x6
	.byte	0x8
	.4byte	.LASF37
	.byte	0x6
	.byte	0x1f
	.byte	0xd
	.4byte	0xb3
	.byte	0x8
	.byte	0x8
	.4byte	.LASF38
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
	.4byte	.LASF39
	.byte	0x6
	.byte	0x22
	.byte	0xe
	.4byte	0xc9
	.byte	0xc
	.byte	0
	.byte	0x3
	.4byte	.LASF40
	.byte	0x6
	.byte	0x23
	.byte	0x3
	.4byte	0x1cd
	.byte	0x5
	.4byte	0x23f
	.byte	0x3
	.4byte	.LASF41
	.byte	0x6
	.byte	0x82
	.byte	0x10
	.4byte	0x25c
	.byte	0xa
	.byte	0x4
	.4byte	0x262
	.byte	0xd
	.4byte	0x26d
	.byte	0xe
	.4byte	0x17e
	.byte	0
	.byte	0x7
	.byte	0x20
	.byte	0x7
	.byte	0x8
	.byte	0x9
	.4byte	0x2ab
	.byte	0x8
	.4byte	.LASF42
	.byte	0x7
	.byte	0x9
	.byte	0x17
	.4byte	0x103
	.byte	0
	.byte	0x8
	.4byte	.LASF43
	.byte	0x7
	.byte	0xa
	.byte	0x17
	.4byte	0x103
	.byte	0x8
	.byte	0x8
	.4byte	.LASF44
	.byte	0x7
	.byte	0xb
	.byte	0x17
	.4byte	0x103
	.byte	0x10
	.byte	0x8
	.4byte	.LASF45
	.byte	0x7
	.byte	0xc
	.byte	0x16
	.4byte	0x2b2
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF46
	.byte	0x6
	.4byte	0x2ab
	.byte	0x3
	.4byte	.LASF47
	.byte	0x7
	.byte	0xd
	.byte	0x3
	.4byte	0x26d
	.byte	0x5
	.4byte	0x2b7
	.byte	0x3
	.4byte	.LASF48
	.byte	0x8
	.byte	0xd1
	.byte	0x16
	.4byte	0xac
	.byte	0xf
	.byte	0x4
	.byte	0xa
	.byte	0x4
	.4byte	0x2dc
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF49
	.byte	0x5
	.4byte	0x2dc
	.byte	0xa
	.byte	0x4
	.4byte	0x2e3
	.byte	0xa
	.byte	0x4
	.4byte	0x2f4
	.byte	0xd
	.4byte	0x2ff
	.byte	0xe
	.4byte	0x2d4
	.byte	0
	.byte	0x3
	.4byte	.LASF50
	.byte	0x9
	.byte	0x42
	.byte	0x11
	.4byte	0xd5
	.byte	0x3
	.4byte	.LASF51
	.byte	0x9
	.byte	0x44
	.byte	0x12
	.4byte	0xe1
	.byte	0x10
	.4byte	0xb3
	.4byte	0x327
	.byte	0x11
	.4byte	0xac
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF52
	.byte	0xa
	.byte	0x5c
	.byte	0x26
	.4byte	0x333
	.byte	0xa
	.byte	0x4
	.4byte	0x339
	.byte	0x12
	.4byte	.LASF567
	.byte	0xa
	.byte	0x4
	.4byte	0x344
	.byte	0x13
	.byte	0x14
	.4byte	.LASF58
	.byte	0x8
	.byte	0x1
	.byte	0xb
	.2byte	0x13f
	.byte	0x8
	.4byte	0x39b
	.byte	0x15
	.4byte	.LASF53
	.byte	0xb
	.2byte	0x145
	.byte	0xd
	.4byte	0xb3
	.byte	0
	.byte	0x15
	.4byte	.LASF54
	.byte	0xb
	.2byte	0x14c
	.byte	0xd
	.4byte	0xb3
	.byte	0x1
	.byte	0x15
	.4byte	.LASF55
	.byte	0xb
	.2byte	0x14f
	.byte	0xe
	.4byte	0xc9
	.byte	0x2
	.byte	0x15
	.4byte	.LASF56
	.byte	0xb
	.2byte	0x153
	.byte	0xe
	.4byte	0xc9
	.byte	0x4
	.byte	0x15
	.4byte	.LASF57
	.byte	0xb
	.2byte	0x156
	.byte	0xe
	.4byte	0xc9
	.byte	0x6
	.byte	0
	.byte	0x14
	.4byte	.LASF59
	.byte	0x12
	.byte	0x1
	.byte	0xb
	.2byte	0x15c
	.byte	0x8
	.4byte	0x46f
	.byte	0x15
	.4byte	.LASF60
	.byte	0xb
	.2byte	0x15d
	.byte	0xd
	.4byte	0xb3
	.byte	0
	.byte	0x15
	.4byte	.LASF61
	.byte	0xb
	.2byte	0x15e
	.byte	0xd
	.4byte	0xb3
	.byte	0x1
	.byte	0x15
	.4byte	.LASF62
	.byte	0xb
	.2byte	0x15f
	.byte	0xe
	.4byte	0xc9
	.byte	0x2
	.byte	0x15
	.4byte	.LASF63
	.byte	0xb
	.2byte	0x160
	.byte	0xd
	.4byte	0xb3
	.byte	0x4
	.byte	0x15
	.4byte	.LASF64
	.byte	0xb
	.2byte	0x161
	.byte	0xd
	.4byte	0xb3
	.byte	0x5
	.byte	0x15
	.4byte	.LASF65
	.byte	0xb
	.2byte	0x162
	.byte	0xd
	.4byte	0xb3
	.byte	0x6
	.byte	0x15
	.4byte	.LASF66
	.byte	0xb
	.2byte	0x163
	.byte	0xd
	.4byte	0xb3
	.byte	0x7
	.byte	0x15
	.4byte	.LASF67
	.byte	0xb
	.2byte	0x164
	.byte	0xe
	.4byte	0xc9
	.byte	0x8
	.byte	0x15
	.4byte	.LASF68
	.byte	0xb
	.2byte	0x165
	.byte	0xe
	.4byte	0xc9
	.byte	0xa
	.byte	0x15
	.4byte	.LASF69
	.byte	0xb
	.2byte	0x166
	.byte	0xe
	.4byte	0xc9
	.byte	0xc
	.byte	0x15
	.4byte	.LASF70
	.byte	0xb
	.2byte	0x167
	.byte	0xd
	.4byte	0xb3
	.byte	0xe
	.byte	0x15
	.4byte	.LASF71
	.byte	0xb
	.2byte	0x168
	.byte	0xd
	.4byte	0xb3
	.byte	0xf
	.byte	0x15
	.4byte	.LASF72
	.byte	0xb
	.2byte	0x169
	.byte	0xd
	.4byte	0xb3
	.byte	0x10
	.byte	0x15
	.4byte	.LASF73
	.byte	0xb
	.2byte	0x16a
	.byte	0xd
	.4byte	0xb3
	.byte	0x11
	.byte	0
	.byte	0x14
	.4byte	.LASF74
	.byte	0x9
	.byte	0x1
	.byte	0xb
	.2byte	0x170
	.byte	0x8
	.4byte	0x4ef
	.byte	0x15
	.4byte	.LASF60
	.byte	0xb
	.2byte	0x171
	.byte	0xd
	.4byte	0xb3
	.byte	0
	.byte	0x15
	.4byte	.LASF61
	.byte	0xb
	.2byte	0x172
	.byte	0xd
	.4byte	0xb3
	.byte	0x1
	.byte	0x15
	.4byte	.LASF75
	.byte	0xb
	.2byte	0x173
	.byte	0xe
	.4byte	0xc9
	.byte	0x2
	.byte	0x15
	.4byte	.LASF76
	.byte	0xb
	.2byte	0x174
	.byte	0xd
	.4byte	0xb3
	.byte	0x4
	.byte	0x15
	.4byte	.LASF77
	.byte	0xb
	.2byte	0x175
	.byte	0xd
	.4byte	0xb3
	.byte	0x5
	.byte	0x15
	.4byte	.LASF78
	.byte	0xb
	.2byte	0x176
	.byte	0xd
	.4byte	0xb3
	.byte	0x6
	.byte	0x15
	.4byte	.LASF79
	.byte	0xb
	.2byte	0x177
	.byte	0xd
	.4byte	0xb3
	.byte	0x7
	.byte	0x15
	.4byte	.LASF80
	.byte	0xb
	.2byte	0x178
	.byte	0xd
	.4byte	0xb3
	.byte	0x8
	.byte	0
	.byte	0x14
	.4byte	.LASF81
	.byte	0x9
	.byte	0x1
	.byte	0xb
	.2byte	0x17e
	.byte	0x8
	.4byte	0x57d
	.byte	0x15
	.4byte	.LASF60
	.byte	0xb
	.2byte	0x17f
	.byte	0xd
	.4byte	0xb3
	.byte	0
	.byte	0x15
	.4byte	.LASF61
	.byte	0xb
	.2byte	0x180
	.byte	0xd
	.4byte	0xb3
	.byte	0x1
	.byte	0x15
	.4byte	.LASF82
	.byte	0xb
	.2byte	0x181
	.byte	0xd
	.4byte	0xb3
	.byte	0x2
	.byte	0x15
	.4byte	.LASF83
	.byte	0xb
	.2byte	0x182
	.byte	0xd
	.4byte	0xb3
	.byte	0x3
	.byte	0x15
	.4byte	.LASF84
	.byte	0xb
	.2byte	0x183
	.byte	0xd
	.4byte	0xb3
	.byte	0x4
	.byte	0x15
	.4byte	.LASF85
	.byte	0xb
	.2byte	0x184
	.byte	0xd
	.4byte	0xb3
	.byte	0x5
	.byte	0x15
	.4byte	.LASF86
	.byte	0xb
	.2byte	0x185
	.byte	0xd
	.4byte	0xb3
	.byte	0x6
	.byte	0x15
	.4byte	.LASF87
	.byte	0xb
	.2byte	0x186
	.byte	0xd
	.4byte	0xb3
	.byte	0x7
	.byte	0x15
	.4byte	.LASF88
	.byte	0xb
	.2byte	0x187
	.byte	0xd
	.4byte	0xb3
	.byte	0x8
	.byte	0
	.byte	0x14
	.4byte	.LASF89
	.byte	0x7
	.byte	0x1
	.byte	0xb
	.2byte	0x18d
	.byte	0x8
	.4byte	0x5e1
	.byte	0x15
	.4byte	.LASF60
	.byte	0xb
	.2byte	0x18e
	.byte	0xd
	.4byte	0xb3
	.byte	0
	.byte	0x15
	.4byte	.LASF61
	.byte	0xb
	.2byte	0x18f
	.byte	0xd
	.4byte	0xb3
	.byte	0x1
	.byte	0x15
	.4byte	.LASF90
	.byte	0xb
	.2byte	0x190
	.byte	0xd
	.4byte	0xb3
	.byte	0x2
	.byte	0x15
	.4byte	.LASF79
	.byte	0xb
	.2byte	0x191
	.byte	0xd
	.4byte	0xb3
	.byte	0x3
	.byte	0x15
	.4byte	.LASF91
	.byte	0xb
	.2byte	0x192
	.byte	0xe
	.4byte	0xc9
	.byte	0x4
	.byte	0x15
	.4byte	.LASF92
	.byte	0xb
	.2byte	0x193
	.byte	0xd
	.4byte	0xb3
	.byte	0x6
	.byte	0
	.byte	0x5
	.4byte	0x57d
	.byte	0xa
	.byte	0x4
	.4byte	0xbf
	.byte	0x16
	.4byte	.LASF96
	.byte	0x4
	.byte	0xc
	.byte	0x1a
	.byte	0x8
	.4byte	0x607
	.byte	0x8
	.4byte	.LASF93
	.byte	0xc
	.byte	0x1b
	.byte	0x1c
	.4byte	0x607
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x5ec
	.byte	0x3
	.4byte	.LASF94
	.byte	0xc
	.byte	0x1d
	.byte	0x1f
	.4byte	0x5ec
	.byte	0x3
	.4byte	.LASF95
	.byte	0xd
	.byte	0xf
	.byte	0x10
	.4byte	0x625
	.byte	0xa
	.byte	0x4
	.4byte	0x62b
	.byte	0xd
	.4byte	0x63b
	.byte	0xe
	.4byte	0x2d4
	.byte	0xe
	.4byte	0x99
	.byte	0
	.byte	0x16
	.4byte	.LASF97
	.byte	0x10
	.byte	0xd
	.byte	0x18
	.byte	0x8
	.4byte	0x67d
	.byte	0x8
	.4byte	.LASF98
	.byte	0xd
	.byte	0x19
	.byte	0xe
	.4byte	0x145
	.byte	0
	.byte	0x8
	.4byte	.LASF99
	.byte	0xd
	.byte	0x1a
	.byte	0xe
	.4byte	0xe1
	.byte	0x4
	.byte	0x8
	.4byte	.LASF100
	.byte	0xd
	.byte	0x1b
	.byte	0xe
	.4byte	0xe1
	.byte	0x8
	.byte	0x8
	.4byte	.LASF101
	.byte	0xd
	.byte	0x1c
	.byte	0x9
	.4byte	0x99
	.byte	0xc
	.byte	0
	.byte	0x16
	.4byte	.LASF102
	.byte	0x40
	.byte	0xd
	.byte	0x24
	.byte	0x8
	.4byte	0x774
	.byte	0x8
	.4byte	.LASF103
	.byte	0xd
	.byte	0x25
	.byte	0x11
	.4byte	0x60d
	.byte	0
	.byte	0x8
	.4byte	.LASF104
	.byte	0xd
	.byte	0x26
	.byte	0xb
	.4byte	0x2d4
	.byte	0x4
	.byte	0x8
	.4byte	.LASF105
	.byte	0xd
	.byte	0x27
	.byte	0x1a
	.4byte	0x89b
	.byte	0x8
	.byte	0x9
	.string	"ep"
	.byte	0xd
	.byte	0x28
	.byte	0x25
	.4byte	0x8a1
	.byte	0xc
	.byte	0x8
	.4byte	.LASF106
	.byte	0xd
	.byte	0x29
	.byte	0xd
	.4byte	0xb3
	.byte	0x10
	.byte	0x8
	.4byte	.LASF107
	.byte	0xd
	.byte	0x2a
	.byte	0xd
	.4byte	0xb3
	.byte	0x11
	.byte	0x8
	.4byte	.LASF108
	.byte	0xd
	.byte	0x2b
	.byte	0x1e
	.4byte	0x8a7
	.byte	0x14
	.byte	0x8
	.4byte	.LASF98
	.byte	0xd
	.byte	0x2c
	.byte	0xe
	.4byte	0x145
	.byte	0x18
	.byte	0x8
	.4byte	.LASF99
	.byte	0xd
	.byte	0x2d
	.byte	0xe
	.4byte	0xe1
	.byte	0x1c
	.byte	0x8
	.4byte	.LASF109
	.byte	0xd
	.byte	0x2e
	.byte	0x9
	.4byte	0x99
	.byte	0x20
	.byte	0x8
	.4byte	.LASF100
	.byte	0xd
	.byte	0x2f
	.byte	0xe
	.4byte	0xe1
	.byte	0x24
	.byte	0x8
	.4byte	.LASF110
	.byte	0xd
	.byte	0x30
	.byte	0xe
	.4byte	0xe1
	.byte	0x28
	.byte	0x8
	.4byte	.LASF101
	.byte	0xd
	.byte	0x31
	.byte	0x9
	.4byte	0x99
	.byte	0x2c
	.byte	0x8
	.4byte	.LASF111
	.byte	0xd
	.byte	0x32
	.byte	0xe
	.4byte	0xe1
	.byte	0x30
	.byte	0x8
	.4byte	.LASF112
	.byte	0xd
	.byte	0x33
	.byte	0xe
	.4byte	0xe1
	.byte	0x34
	.byte	0x8
	.4byte	.LASF113
	.byte	0xd
	.byte	0x34
	.byte	0x1e
	.4byte	0x619
	.byte	0x38
	.byte	0x9
	.string	"arg"
	.byte	0xd
	.byte	0x35
	.byte	0xb
	.4byte	0x2d4
	.byte	0x3c
	.byte	0x8
	.4byte	.LASF114
	.byte	0xd
	.byte	0x39
	.byte	0x22
	.4byte	0x8ad
	.byte	0x40
	.byte	0
	.byte	0x5
	.4byte	0x67d
	.byte	0x17
	.4byte	.LASF115
	.2byte	0x13f4
	.byte	0x4
	.byte	0xe
	.byte	0x65
	.byte	0x8
	.4byte	0x89b
	.byte	0x8
	.4byte	.LASF116
	.byte	0xe
	.byte	0x66
	.byte	0x9
	.4byte	0x2ab
	.byte	0
	.byte	0x8
	.4byte	.LASF117
	.byte	0xe
	.byte	0x67
	.byte	0xd
	.4byte	0xb3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF118
	.byte	0xe
	.byte	0x68
	.byte	0xd
	.4byte	0xb3
	.byte	0x2
	.byte	0x8
	.4byte	.LASF119
	.byte	0xe
	.byte	0x69
	.byte	0xd
	.4byte	0xb3
	.byte	0x3
	.byte	0x8
	.4byte	.LASF120
	.byte	0xe
	.byte	0x6a
	.byte	0xd
	.4byte	0xb3
	.byte	0x4
	.byte	0x8
	.4byte	.LASF121
	.byte	0xe
	.byte	0x6b
	.byte	0xd
	.4byte	0xb3
	.byte	0x5
	.byte	0x8
	.4byte	.LASF122
	.byte	0xe
	.byte	0x6c
	.byte	0xd
	.4byte	0xb3
	.byte	0x6
	.byte	0x18
	.4byte	.LASF123
	.byte	0xe
	.byte	0x6d
	.byte	0x22
	.4byte	0x39b
	.byte	0x1
	.byte	0x7
	.byte	0x18
	.4byte	.LASF124
	.byte	0xe
	.byte	0x6e
	.byte	0x1f
	.4byte	0xb58
	.byte	0x4
	.byte	0x1c
	.byte	0x19
	.4byte	.LASF70
	.byte	0xe
	.byte	0x6f
	.byte	0x11
	.4byte	0x2e8
	.2byte	0x1388
	.byte	0x19
	.4byte	.LASF71
	.byte	0xe
	.byte	0x70
	.byte	0x11
	.4byte	0x2e8
	.2byte	0x138c
	.byte	0x19
	.4byte	.LASF72
	.byte	0xe
	.byte	0x71
	.byte	0x11
	.4byte	0x2e8
	.2byte	0x1390
	.byte	0x19
	.4byte	.LASF125
	.byte	0xe
	.byte	0x72
	.byte	0xe
	.4byte	0x145
	.2byte	0x1394
	.byte	0x19
	.4byte	.LASF108
	.byte	0xe
	.byte	0x73
	.byte	0x1e
	.4byte	0x8a7
	.2byte	0x1398
	.byte	0x19
	.4byte	.LASF126
	.byte	0xe
	.byte	0x74
	.byte	0x16
	.4byte	0xc98
	.2byte	0x139c
	.byte	0x19
	.4byte	.LASF127
	.byte	0xe
	.byte	0x75
	.byte	0x16
	.4byte	0xc98
	.2byte	0x13a0
	.byte	0x1a
	.string	"bus"
	.byte	0xe
	.byte	0x76
	.byte	0x16
	.4byte	0xd00
	.2byte	0x13a4
	.byte	0x1b
	.string	"ep0"
	.byte	0xe
	.byte	0x77
	.byte	0x24
	.4byte	0x57d
	.byte	0x1
	.2byte	0x13a8
	.byte	0x19
	.4byte	.LASF128
	.byte	0xe
	.byte	0x78
	.byte	0x15
	.4byte	0x67d
	.2byte	0x13b0
	.byte	0x19
	.4byte	.LASF129
	.byte	0xe
	.byte	0x79
	.byte	0x16
	.4byte	0x8c9
	.2byte	0x13f0
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x779
	.byte	0xa
	.byte	0x4
	.4byte	0x57d
	.byte	0xa
	.byte	0x4
	.4byte	0x345
	.byte	0x10
	.4byte	0x63b
	.4byte	0x8bd
	.byte	0x1c
	.4byte	0xac
	.byte	0
	.byte	0
	.byte	0x3
	.4byte	.LASF130
	.byte	0xf
	.byte	0x1a
	.byte	0xf
	.4byte	0x2d4
	.byte	0x3
	.4byte	.LASF131
	.byte	0xf
	.byte	0x1c
	.byte	0xf
	.4byte	0x2d4
	.byte	0x3
	.4byte	.LASF132
	.byte	0xf
	.byte	0x1d
	.byte	0xf
	.4byte	0x2d4
	.byte	0x3
	.4byte	.LASF133
	.byte	0xf
	.byte	0x1f
	.byte	0x10
	.4byte	0x2ee
	.byte	0x16
	.4byte	.LASF134
	.byte	0x14
	.byte	0xf
	.byte	0x20
	.byte	0x8
	.4byte	0x93c
	.byte	0x8
	.4byte	.LASF135
	.byte	0xf
	.byte	0x21
	.byte	0x19
	.4byte	0x8e1
	.byte	0
	.byte	0x8
	.4byte	.LASF136
	.byte	0xf
	.byte	0x22
	.byte	0xb
	.4byte	0x2d4
	.byte	0x4
	.byte	0x8
	.4byte	.LASF137
	.byte	0xf
	.byte	0x23
	.byte	0x9
	.4byte	0x2ab
	.byte	0x8
	.byte	0x8
	.4byte	.LASF138
	.byte	0xf
	.byte	0x24
	.byte	0xe
	.4byte	0xe1
	.byte	0xc
	.byte	0x8
	.4byte	.LASF139
	.byte	0xf
	.byte	0x25
	.byte	0xb
	.4byte	0x2d4
	.byte	0x10
	.byte	0
	.byte	0x1d
	.4byte	.LASF140
	.byte	0x9
	.byte	0x1
	.byte	0x10
	.byte	0x81
	.byte	0x8
	.4byte	0x9b3
	.byte	0x8
	.4byte	.LASF60
	.byte	0x10
	.byte	0x82
	.byte	0xd
	.4byte	0xb3
	.byte	0
	.byte	0x8
	.4byte	.LASF61
	.byte	0x10
	.byte	0x83
	.byte	0xd
	.4byte	0xb3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF141
	.byte	0x10
	.byte	0x84
	.byte	0xd
	.4byte	0xb3
	.byte	0x2
	.byte	0x8
	.4byte	.LASF142
	.byte	0x10
	.byte	0x85
	.byte	0xe
	.4byte	0xc9
	.byte	0x3
	.byte	0x8
	.4byte	.LASF143
	.byte	0x10
	.byte	0x86
	.byte	0xd
	.4byte	0xb3
	.byte	0x5
	.byte	0x8
	.4byte	.LASF144
	.byte	0x10
	.byte	0x87
	.byte	0xd
	.4byte	0xb3
	.byte	0x6
	.byte	0x8
	.4byte	.LASF145
	.byte	0x10
	.byte	0x88
	.byte	0xd
	.4byte	0xb3
	.byte	0x7
	.byte	0x8
	.4byte	.LASF146
	.byte	0x10
	.byte	0x89
	.byte	0xd
	.4byte	0xb3
	.byte	0x8
	.byte	0
	.byte	0x1d
	.4byte	.LASF147
	.byte	0xb
	.byte	0x1
	.byte	0x10
	.byte	0x8f
	.byte	0x8
	.4byte	0xa37
	.byte	0x8
	.4byte	.LASF60
	.byte	0x10
	.byte	0x90
	.byte	0xd
	.4byte	0xb3
	.byte	0
	.byte	0x8
	.4byte	.LASF61
	.byte	0x10
	.byte	0x91
	.byte	0xd
	.4byte	0xb3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF141
	.byte	0x10
	.byte	0x92
	.byte	0xd
	.4byte	0xb3
	.byte	0x2
	.byte	0x8
	.4byte	.LASF142
	.byte	0x10
	.byte	0x93
	.byte	0xe
	.4byte	0xc9
	.byte	0x3
	.byte	0x8
	.4byte	.LASF143
	.byte	0x10
	.byte	0x94
	.byte	0xd
	.4byte	0xb3
	.byte	0x5
	.byte	0x8
	.4byte	.LASF144
	.byte	0x10
	.byte	0x95
	.byte	0xd
	.4byte	0xb3
	.byte	0x6
	.byte	0x8
	.4byte	.LASF148
	.byte	0x10
	.byte	0x96
	.byte	0xd
	.4byte	0xb3
	.byte	0x7
	.byte	0x8
	.4byte	.LASF149
	.byte	0x10
	.byte	0x97
	.byte	0xe
	.4byte	0xc9
	.byte	0x8
	.byte	0x8
	.4byte	.LASF145
	.byte	0x10
	.byte	0x98
	.byte	0xd
	.4byte	0xb3
	.byte	0xa
	.byte	0
	.byte	0x16
	.4byte	.LASF150
	.byte	0xc
	.byte	0xe
	.byte	0x49
	.byte	0x8
	.4byte	0xa6c
	.byte	0x8
	.4byte	.LASF151
	.byte	0xe
	.byte	0x4a
	.byte	0x11
	.4byte	0x2e8
	.byte	0
	.byte	0x8
	.4byte	.LASF152
	.byte	0xe
	.byte	0x4b
	.byte	0xb
	.4byte	0xa80
	.byte	0x4
	.byte	0x8
	.4byte	.LASF153
	.byte	0xe
	.byte	0x4c
	.byte	0xb
	.4byte	0xa80
	.byte	0x8
	.byte	0
	.byte	0x1e
	.4byte	0x99
	.4byte	0xa80
	.byte	0xe
	.4byte	0x89b
	.byte	0xe
	.4byte	0xb3
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0xa6c
	.byte	0x1d
	.4byte	.LASF154
	.byte	0x7
	.byte	0x1
	.byte	0xe
	.byte	0x4f
	.byte	0x8
	.4byte	0xaa3
	.byte	0x18
	.4byte	.LASF155
	.byte	0xe
	.byte	0x50
	.byte	0x24
	.4byte	0x57d
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LASF156
	.byte	0x25
	.byte	0x1
	.byte	0xe
	.byte	0x53
	.byte	0x8
	.4byte	0xacd
	.byte	0x18
	.4byte	.LASF157
	.byte	0xe
	.byte	0x54
	.byte	0x25
	.4byte	0x4ef
	.byte	0x1
	.byte	0
	.byte	0x1f
	.string	"ep"
	.byte	0xe
	.byte	0x55
	.byte	0x1a
	.4byte	0xacd
	.byte	0x1
	.byte	0x9
	.byte	0
	.byte	0x20
	.4byte	0xa86
	.byte	0x1
	.4byte	0xade
	.byte	0x11
	.4byte	0xac
	.byte	0x3
	.byte	0
	.byte	0x17
	.4byte	.LASF158
	.2byte	0x26c
	.byte	0x4
	.byte	0xe
	.byte	0x58
	.byte	0x8
	.4byte	0xb31
	.byte	0x8
	.4byte	.LASF159
	.byte	0xe
	.byte	0x59
	.byte	0xa
	.4byte	0xb31
	.byte	0
	.byte	0x8
	.4byte	.LASF160
	.byte	0xe
	.byte	0x5a
	.byte	0x1f
	.4byte	0xb41
	.byte	0x10
	.byte	0x8
	.4byte	.LASF161
	.byte	0xe
	.byte	0x5b
	.byte	0xb
	.4byte	0x2d4
	.byte	0x14
	.byte	0x18
	.4byte	.LASF38
	.byte	0xe
	.byte	0x5c
	.byte	0x26
	.4byte	0xb47
	.byte	0x1
	.byte	0x18
	.byte	0x19
	.4byte	.LASF162
	.byte	0xe
	.byte	0x5d
	.byte	0xd
	.4byte	0xb3
	.2byte	0x268
	.byte	0
	.byte	0x10
	.4byte	0x2dc
	.4byte	0xb41
	.byte	0x11
	.4byte	0xac
	.byte	0xf
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0xa37
	.byte	0x20
	.4byte	0xaa3
	.byte	0x1
	.4byte	0xb58
	.byte	0x11
	.4byte	0xac
	.byte	0xf
	.byte	0
	.byte	0x17
	.4byte	.LASF163
	.2byte	0x136c
	.byte	0x4
	.byte	0xe
	.byte	0x60
	.byte	0x8
	.4byte	0xb84
	.byte	0x18
	.4byte	.LASF164
	.byte	0xe
	.byte	0x61
	.byte	0x29
	.4byte	0x46f
	.byte	0x1
	.byte	0
	.byte	0x18
	.4byte	.LASF165
	.byte	0xe
	.byte	0x62
	.byte	0x1b
	.4byte	0xb84
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0x20
	.4byte	0xade
	.byte	0x4
	.4byte	0xb95
	.byte	0x11
	.4byte	0xac
	.byte	0x7
	.byte	0
	.byte	0x17
	.4byte	.LASF166
	.2byte	0x5044
	.byte	0x4
	.byte	0xe
	.byte	0x7c
	.byte	0x8
	.4byte	0xc98
	.byte	0x8
	.4byte	.LASF116
	.byte	0xe
	.byte	0x7d
	.byte	0x9
	.4byte	0x2ab
	.byte	0
	.byte	0x8
	.4byte	.LASF167
	.byte	0xe
	.byte	0x7e
	.byte	0x9
	.4byte	0x2ab
	.byte	0x1
	.byte	0x8
	.4byte	.LASF168
	.byte	0xe
	.byte	0x7f
	.byte	0xd
	.4byte	0xb3
	.byte	0x2
	.byte	0x8
	.4byte	.LASF169
	.byte	0xe
	.byte	0x80
	.byte	0xd
	.4byte	0xb3
	.byte	0x3
	.byte	0x8
	.4byte	.LASF119
	.byte	0xe
	.byte	0x81
	.byte	0xd
	.4byte	0xb3
	.byte	0x4
	.byte	0x8
	.4byte	.LASF170
	.byte	0xe
	.byte	0x82
	.byte	0xd
	.4byte	0xb3
	.byte	0x5
	.byte	0x8
	.4byte	.LASF171
	.byte	0xe
	.byte	0x83
	.byte	0xd
	.4byte	0xb3
	.byte	0x6
	.byte	0x8
	.4byte	.LASF172
	.byte	0xe
	.byte	0x84
	.byte	0xd
	.4byte	0xb3
	.byte	0x7
	.byte	0x8
	.4byte	.LASF173
	.byte	0xe
	.byte	0x85
	.byte	0x9
	.4byte	0x2ab
	.byte	0x8
	.byte	0x18
	.4byte	.LASF174
	.byte	0xe
	.byte	0x86
	.byte	0x1f
	.4byte	0x93c
	.byte	0x1
	.byte	0x9
	.byte	0x18
	.4byte	.LASF175
	.byte	0xe
	.byte	0x87
	.byte	0x22
	.4byte	0x9b3
	.byte	0x1
	.byte	0x12
	.byte	0x18
	.4byte	.LASF176
	.byte	0xe
	.byte	0x88
	.byte	0x19
	.4byte	0xd06
	.byte	0x4
	.byte	0x20
	.byte	0x19
	.4byte	.LASF126
	.byte	0xe
	.byte	0x89
	.byte	0x1a
	.4byte	0x89b
	.2byte	0x4ff0
	.byte	0x1a
	.string	"bus"
	.byte	0xe
	.byte	0x8a
	.byte	0x16
	.4byte	0xd00
	.2byte	0x4ff4
	.byte	0x19
	.4byte	.LASF177
	.byte	0xe
	.byte	0x8b
	.byte	0x25
	.4byte	0x8a1
	.2byte	0x4ff8
	.byte	0x19
	.4byte	.LASF178
	.byte	0xe
	.byte	0x8c
	.byte	0x15
	.4byte	0x67d
	.2byte	0x4ffc
	.byte	0x19
	.4byte	.LASF179
	.byte	0xe
	.byte	0x8d
	.byte	0xe
	.4byte	0x145
	.2byte	0x503c
	.byte	0x19
	.4byte	.LASF180
	.byte	0xe
	.byte	0x8e
	.byte	0x1c
	.4byte	0xd17
	.2byte	0x5040
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0xb95
	.byte	0x17
	.4byte	.LASF181
	.2byte	0x5070
	.byte	0x4
	.byte	0xe
	.byte	0xa4
	.byte	0x8
	.4byte	0xd00
	.byte	0x8
	.4byte	.LASF103
	.byte	0xe
	.byte	0xa5
	.byte	0x11
	.4byte	0x60d
	.byte	0
	.byte	0x8
	.4byte	.LASF182
	.byte	0xe
	.byte	0xa6
	.byte	0xd
	.4byte	0xb3
	.byte	0x4
	.byte	0x1f
	.string	"hcd"
	.byte	0xe
	.byte	0xa7
	.byte	0x15
	.4byte	0xd55
	.byte	0x4
	.byte	0x8
	.byte	0x19
	.4byte	.LASF183
	.byte	0xe
	.byte	0xa8
	.byte	0x1d
	.4byte	0xd1d
	.2byte	0x5054
	.byte	0x19
	.4byte	.LASF184
	.byte	0xe
	.byte	0xa9
	.byte	0x17
	.4byte	0x8bd
	.2byte	0x5068
	.byte	0x19
	.4byte	.LASF185
	.byte	0xe
	.byte	0xaa
	.byte	0x13
	.4byte	0x8d5
	.2byte	0x506c
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0xc9e
	.byte	0x20
	.4byte	0x779
	.byte	0x4
	.4byte	0xd17
	.byte	0x11
	.4byte	0xac
	.byte	0x3
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x8ed
	.byte	0x16
	.4byte	.LASF186
	.byte	0x14
	.byte	0xe
	.byte	0x91
	.byte	0x8
	.4byte	0xd45
	.byte	0x8
	.4byte	.LASF93
	.byte	0xe
	.byte	0x99
	.byte	0xd
	.4byte	0xb3
	.byte	0
	.byte	0x8
	.4byte	.LASF187
	.byte	0xe
	.byte	0x9a
	.byte	0xe
	.4byte	0xd45
	.byte	0x4
	.byte	0
	.byte	0x10
	.4byte	0xe1
	.4byte	0xd55
	.byte	0x11
	.4byte	0xac
	.byte	0x3
	.byte	0
	.byte	0x17
	.4byte	.LASF188
	.2byte	0x504c
	.byte	0x4
	.byte	0xe
	.byte	0x9d
	.byte	0x8
	.4byte	0xd9a
	.byte	0x8
	.4byte	.LASF189
	.byte	0xe
	.byte	0x9e
	.byte	0xf
	.4byte	0x108
	.byte	0
	.byte	0x8
	.4byte	.LASF190
	.byte	0xe
	.byte	0x9f
	.byte	0xd
	.4byte	0xb3
	.byte	0x4
	.byte	0x8
	.4byte	.LASF191
	.byte	0xe
	.byte	0xa0
	.byte	0xd
	.4byte	0x317
	.byte	0x5
	.byte	0x18
	.4byte	.LASF192
	.byte	0xe
	.byte	0xa1
	.byte	0x15
	.4byte	0xb95
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x21
	.byte	0x1
	.byte	0x11
	.2byte	0x2e8
	.byte	0x9
	.4byte	0xe0b
	.byte	0x22
	.4byte	.LASF193
	.byte	0x11
	.2byte	0x2ea
	.byte	0x15
	.4byte	0xb3
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0
	.byte	0x22
	.4byte	.LASF194
	.byte	0x11
	.2byte	0x2eb
	.byte	0x15
	.4byte	0xb3
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0
	.byte	0x22
	.4byte	.LASF195
	.byte	0x11
	.2byte	0x2ec
	.byte	0x15
	.4byte	0xb3
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0
	.byte	0x22
	.4byte	.LASF196
	.byte	0x11
	.2byte	0x2ed
	.byte	0x15
	.4byte	0xb3
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0
	.byte	0x22
	.4byte	.LASF197
	.byte	0x11
	.2byte	0x2ee
	.byte	0x15
	.4byte	0xb3
	.byte	0x1
	.byte	0x1
	.byte	0x3
	.byte	0
	.byte	0x22
	.4byte	.LASF198
	.byte	0x11
	.2byte	0x2ef
	.byte	0x15
	.4byte	0xb3
	.byte	0x1
	.byte	0x3
	.byte	0
	.byte	0
	.byte	0
	.byte	0x23
	.byte	0x1
	.byte	0x11
	.2byte	0x2e6
	.byte	0x5
	.4byte	0xe30
	.byte	0x24
	.4byte	.LASF199
	.byte	0x11
	.2byte	0x2e7
	.byte	0x11
	.4byte	0xb3
	.byte	0x24
	.4byte	.LASF200
	.byte	0x11
	.2byte	0x2f0
	.byte	0xb
	.4byte	0xd9a
	.byte	0
	.byte	0x21
	.byte	0x1
	.byte	0x11
	.2byte	0x2f4
	.byte	0x9
	.4byte	0xe4c
	.byte	0x22
	.4byte	.LASF198
	.byte	0x11
	.2byte	0x2f6
	.byte	0x15
	.4byte	0xb3
	.byte	0x1
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.byte	0x23
	.byte	0x1
	.byte	0x11
	.2byte	0x2f2
	.byte	0x5
	.4byte	0xe71
	.byte	0x24
	.4byte	.LASF199
	.byte	0x11
	.2byte	0x2f3
	.byte	0x11
	.4byte	0xb3
	.byte	0x24
	.4byte	.LASF200
	.byte	0x11
	.2byte	0x2f7
	.byte	0xb
	.4byte	0xe30
	.byte	0
	.byte	0x14
	.4byte	.LASF201
	.byte	0x22
	.byte	0x1
	.byte	0x11
	.2byte	0x2e5
	.byte	0x8
	.4byte	0xf6f
	.byte	0x15
	.4byte	.LASF202
	.byte	0x11
	.2byte	0x2f1
	.byte	0x7
	.4byte	0xe0b
	.byte	0
	.byte	0x15
	.4byte	.LASF203
	.byte	0x11
	.2byte	0x2f8
	.byte	0x7
	.4byte	0xe4c
	.byte	0x1
	.byte	0x15
	.4byte	.LASF204
	.byte	0x11
	.2byte	0x2f9
	.byte	0xd
	.4byte	0xb3
	.byte	0x2
	.byte	0x15
	.4byte	.LASF205
	.byte	0x11
	.2byte	0x2fa
	.byte	0xd
	.4byte	0xb3
	.byte	0x3
	.byte	0x15
	.4byte	.LASF193
	.byte	0x11
	.2byte	0x2fb
	.byte	0xe
	.4byte	0xe1
	.byte	0x4
	.byte	0x15
	.4byte	.LASF194
	.byte	0x11
	.2byte	0x2fc
	.byte	0xe
	.4byte	0xc9
	.byte	0x8
	.byte	0x15
	.4byte	.LASF195
	.byte	0x11
	.2byte	0x2fd
	.byte	0xe
	.4byte	0xc9
	.byte	0xa
	.byte	0x15
	.4byte	.LASF196
	.byte	0x11
	.2byte	0x2fe
	.byte	0xe
	.4byte	0xc9
	.byte	0xc
	.byte	0x15
	.4byte	.LASF197
	.byte	0x11
	.2byte	0x2ff
	.byte	0xe
	.4byte	0xc9
	.byte	0xe
	.byte	0x15
	.4byte	.LASF206
	.byte	0x11
	.2byte	0x300
	.byte	0xe
	.4byte	0xc9
	.byte	0x10
	.byte	0x15
	.4byte	.LASF207
	.byte	0x11
	.2byte	0x302
	.byte	0xe
	.4byte	0xe1
	.byte	0x12
	.byte	0x15
	.4byte	.LASF208
	.byte	0x11
	.2byte	0x303
	.byte	0xe
	.4byte	0xe1
	.byte	0x16
	.byte	0x15
	.4byte	.LASF209
	.byte	0x11
	.2byte	0x305
	.byte	0xe
	.4byte	0xe1
	.byte	0x1a
	.byte	0x15
	.4byte	.LASF210
	.byte	0x11
	.2byte	0x308
	.byte	0xd
	.4byte	0xb3
	.byte	0x1e
	.byte	0x15
	.4byte	.LASF211
	.byte	0x11
	.2byte	0x309
	.byte	0xd
	.4byte	0xb3
	.byte	0x1f
	.byte	0x15
	.4byte	.LASF212
	.byte	0x11
	.2byte	0x30b
	.byte	0xd
	.4byte	0xb3
	.byte	0x20
	.byte	0x15
	.4byte	.LASF213
	.byte	0x11
	.2byte	0x30d
	.byte	0xd
	.4byte	0xb3
	.byte	0x21
	.byte	0
	.byte	0x16
	.4byte	.LASF214
	.byte	0x2c
	.byte	0x12
	.byte	0x11
	.byte	0x8
	.4byte	0xfbe
	.byte	0x8
	.4byte	.LASF215
	.byte	0x12
	.byte	0x12
	.byte	0xe
	.4byte	0xc9
	.byte	0
	.byte	0x8
	.4byte	.LASF216
	.byte	0x12
	.byte	0x13
	.byte	0xe
	.4byte	0xc9
	.byte	0x2
	.byte	0x8
	.4byte	.LASF217
	.byte	0x12
	.byte	0x14
	.byte	0xe
	.4byte	0xe1
	.byte	0x4
	.byte	0x8
	.4byte	.LASF218
	.byte	0x12
	.byte	0x15
	.byte	0xd
	.4byte	0xb3
	.byte	0x8
	.byte	0x8
	.4byte	.LASF193
	.byte	0x12
	.byte	0x16
	.byte	0xe
	.4byte	0xfbe
	.byte	0xc
	.byte	0
	.byte	0x10
	.4byte	0xe1
	.4byte	0xfce
	.byte	0x11
	.4byte	0xac
	.byte	0x7
	.byte	0
	.byte	0x25
	.4byte	.LASF219
	.2byte	0x214
	.byte	0x12
	.byte	0x19
	.byte	0x8
	.4byte	0x1006
	.byte	0x8
	.4byte	.LASF220
	.byte	0x12
	.byte	0x1a
	.byte	0x22
	.4byte	0x1006
	.byte	0
	.byte	0x19
	.4byte	.LASF221
	.byte	0x12
	.byte	0x1b
	.byte	0xd
	.4byte	0xb3
	.2byte	0x210
	.byte	0x19
	.4byte	.LASF222
	.byte	0x12
	.byte	0x1c
	.byte	0xd
	.4byte	0xb3
	.2byte	0x211
	.byte	0
	.byte	0x10
	.4byte	0xf6f
	.4byte	0x1016
	.byte	0x11
	.4byte	0xac
	.byte	0xb
	.byte	0
	.byte	0x17
	.4byte	.LASF223
	.2byte	0x6a0
	.byte	0x4
	.byte	0x12
	.byte	0x2e
	.byte	0x8
	.4byte	0x1106
	.byte	0x8
	.4byte	.LASF105
	.byte	0x12
	.byte	0x2f
	.byte	0x1a
	.4byte	0x89b
	.byte	0
	.byte	0x8
	.4byte	.LASF224
	.byte	0x12
	.byte	0x30
	.byte	0x25
	.4byte	0x8a1
	.byte	0x4
	.byte	0x8
	.4byte	.LASF225
	.byte	0x12
	.byte	0x31
	.byte	0x25
	.4byte	0x8a1
	.byte	0x8
	.byte	0x8
	.4byte	.LASF226
	.byte	0x12
	.byte	0x33
	.byte	0xd
	.4byte	0xb3
	.byte	0xc
	.byte	0x8
	.4byte	.LASF227
	.byte	0x12
	.byte	0x34
	.byte	0xd
	.4byte	0xb3
	.byte	0xd
	.byte	0x8
	.4byte	.LASF228
	.byte	0x12
	.byte	0x35
	.byte	0xd
	.4byte	0xb3
	.byte	0xe
	.byte	0x18
	.4byte	.LASF229
	.byte	0x12
	.byte	0x36
	.byte	0x2c
	.4byte	0xe71
	.byte	0x1
	.byte	0xf
	.byte	0x18
	.4byte	.LASF230
	.byte	0x12
	.byte	0x37
	.byte	0x2c
	.4byte	0xe71
	.byte	0x1
	.byte	0x31
	.byte	0x8
	.4byte	.LASF39
	.byte	0x12
	.byte	0x38
	.byte	0xe
	.4byte	0xc9
	.byte	0x54
	.byte	0x8
	.4byte	.LASF231
	.byte	0x12
	.byte	0x39
	.byte	0xe
	.4byte	0xc9
	.byte	0x56
	.byte	0x8
	.4byte	.LASF232
	.byte	0x12
	.byte	0x3a
	.byte	0x9
	.4byte	0x2ab
	.byte	0x58
	.byte	0x8
	.4byte	.LASF233
	.byte	0x12
	.byte	0x3b
	.byte	0xd
	.4byte	0xb3
	.byte	0x59
	.byte	0x8
	.4byte	.LASF234
	.byte	0x12
	.byte	0x3c
	.byte	0xe
	.4byte	0xc9
	.byte	0x5a
	.byte	0x8
	.4byte	.LASF235
	.byte	0x12
	.byte	0x3d
	.byte	0xd
	.4byte	0xb3
	.byte	0x5c
	.byte	0x8
	.4byte	.LASF236
	.byte	0x12
	.byte	0x3e
	.byte	0xd
	.4byte	0xb3
	.byte	0x5d
	.byte	0x8
	.4byte	.LASF37
	.byte	0x12
	.byte	0x3f
	.byte	0x1e
	.4byte	0x1106
	.byte	0x60
	.byte	0x19
	.4byte	.LASF237
	.byte	0x12
	.byte	0x41
	.byte	0xb
	.4byte	0x2d4
	.2byte	0x69c
	.byte	0
	.byte	0x10
	.4byte	0xfce
	.4byte	0x1116
	.byte	0x11
	.4byte	0xac
	.byte	0x2
	.byte	0
	.byte	0x16
	.4byte	.LASF238
	.byte	0x10
	.byte	0x13
	.byte	0x67
	.byte	0x8
	.4byte	0x117f
	.byte	0x8
	.4byte	.LASF239
	.byte	0x13
	.byte	0x68
	.byte	0x11
	.4byte	0x2e8
	.byte	0
	.byte	0x8
	.4byte	.LASF189
	.byte	0x13
	.byte	0x69
	.byte	0xe
	.4byte	0xe1
	.byte	0x4
	.byte	0x8
	.4byte	.LASF240
	.byte	0x13
	.byte	0x6a
	.byte	0xd
	.4byte	0xb3
	.byte	0x8
	.byte	0x9
	.string	"idx"
	.byte	0x13
	.byte	0x6b
	.byte	0xd
	.4byte	0xb3
	.byte	0x9
	.byte	0x8
	.4byte	.LASF241
	.byte	0x13
	.byte	0x6c
	.byte	0xd
	.4byte	0xb3
	.byte	0xa
	.byte	0x8
	.4byte	.LASF242
	.byte	0x13
	.byte	0x6d
	.byte	0xd
	.4byte	0xb3
	.byte	0xb
	.byte	0x8
	.4byte	.LASF237
	.byte	0x13
	.byte	0x6e
	.byte	0xb
	.4byte	0x2d4
	.byte	0xc
	.byte	0
	.byte	0x3
	.4byte	.LASF243
	.byte	0x14
	.byte	0x3f
	.byte	0xf
	.4byte	0x118b
	.byte	0xa
	.byte	0x4
	.4byte	0x1191
	.byte	0x26
	.4byte	0x99
	.byte	0xa
	.byte	0x4
	.4byte	0x2d6
	.byte	0x16
	.4byte	.LASF244
	.byte	0x8
	.byte	0x14
	.byte	0x5e
	.byte	0x8
	.4byte	0x11c4
	.byte	0x8
	.4byte	.LASF239
	.byte	0x14
	.byte	0x5f
	.byte	0x11
	.4byte	0x2e8
	.byte	0
	.byte	0x8
	.4byte	.LASF245
	.byte	0x14
	.byte	0x63
	.byte	0x12
	.4byte	0x117f
	.byte	0x4
	.byte	0
	.byte	0x5
	.4byte	0x119c
	.byte	0x10
	.4byte	0xbf
	.4byte	0x11d9
	.byte	0x11
	.4byte	0xac
	.byte	0x2
	.byte	0
	.byte	0x5
	.4byte	0x11c9
	.byte	0x27
	.4byte	.LASF246
	.byte	0x1
	.byte	0x22
	.byte	0x16
	.4byte	0x11d9
	.byte	0x5
	.byte	0x3
	.4byte	g_iso_pkt_candidates
	.byte	0x27
	.4byte	.LASF247
	.byte	0x1
	.byte	0x51
	.byte	0x20
	.4byte	0x18a
	.byte	0x5
	.byte	0x3
	.4byte	g_cam_state
	.byte	0x27
	.4byte	.LASF248
	.byte	0x1
	.byte	0x52
	.byte	0x13
	.4byte	0x23f
	.byte	0x5
	.byte	0x3
	.4byte	g_cam_mode
	.byte	0x27
	.4byte	.LASF249
	.byte	0x1
	.byte	0x53
	.byte	0x1b
	.4byte	0x1226
	.byte	0x5
	.byte	0x3
	.4byte	g_video_class
	.byte	0xa
	.byte	0x4
	.4byte	0x1016
	.byte	0x27
	.4byte	.LASF250
	.byte	0x1
	.byte	0x54
	.byte	0x15
	.4byte	0x327
	.byte	0x5
	.byte	0x3
	.4byte	g_stream_task
	.byte	0x27
	.4byte	.LASF251
	.byte	0x1
	.byte	0x55
	.byte	0x20
	.4byte	0x2b2
	.byte	0x5
	.byte	0x3
	.4byte	g_stream_stop
	.byte	0x27
	.4byte	.LASF252
	.byte	0x1
	.byte	0x57
	.byte	0x26
	.4byte	0x1c8
	.byte	0x5
	.byte	0x3
	.4byte	g_capture_ctrl_state
	.byte	0x27
	.4byte	.LASF253
	.byte	0x1
	.byte	0x58
	.byte	0x1a
	.4byte	0xed
	.byte	0x5
	.byte	0x3
	.4byte	g_capture_session_seq
	.byte	0x27
	.4byte	.LASF254
	.byte	0x1
	.byte	0x59
	.byte	0x1a
	.4byte	0xed
	.byte	0x5
	.byte	0x3
	.4byte	g_active_session_id
	.byte	0x27
	.4byte	.LASF255
	.byte	0x1
	.byte	0x5a
	.byte	0x11
	.4byte	0xe1
	.byte	0x5
	.byte	0x3
	.4byte	g_cli_session_id
	.byte	0x27
	.4byte	.LASF256
	.byte	0x1
	.byte	0x5d
	.byte	0x10
	.4byte	0x14b
	.byte	0x5
	.byte	0x3
	.4byte	g_cur_frame
	.byte	0x27
	.4byte	.LASF257
	.byte	0x1
	.byte	0x5e
	.byte	0x14
	.4byte	0x2ab
	.byte	0x5
	.byte	0x3
	.4byte	g_cur_frame_valid
	.byte	0x27
	.4byte	.LASF258
	.byte	0x1
	.byte	0x5f
	.byte	0x14
	.4byte	0x2ab
	.byte	0x5
	.byte	0x3
	.4byte	g_cur_frame_oversize
	.byte	0x27
	.4byte	.LASF259
	.byte	0x1
	.byte	0x60
	.byte	0x14
	.4byte	0x2ab
	.byte	0x5
	.byte	0x3
	.4byte	g_cur_frame_tainted
	.byte	0x27
	.4byte	.LASF260
	.byte	0x1
	.byte	0x61
	.byte	0x14
	.4byte	0x2ab
	.byte	0x5
	.byte	0x3
	.4byte	g_cur_frame_saw_eoi
	.byte	0x27
	.4byte	.LASF261
	.byte	0x1
	.byte	0x62
	.byte	0x11
	.4byte	0xc9
	.byte	0x5
	.byte	0x3
	.4byte	g_cur_frame_error_pkts
	.byte	0x27
	.4byte	.LASF262
	.byte	0x1
	.byte	0x63
	.byte	0x14
	.4byte	0x2ab
	.byte	0x5
	.byte	0x3
	.4byte	g_wait_for_fid_resync
	.byte	0x27
	.4byte	.LASF263
	.byte	0x1
	.byte	0x64
	.byte	0x14
	.4byte	0x2ab
	.byte	0x5
	.byte	0x3
	.4byte	g_pending_soi_tail_ff
	.byte	0x27
	.4byte	.LASF264
	.byte	0x1
	.byte	0x65
	.byte	0x10
	.4byte	0xb3
	.byte	0x5
	.byte	0x3
	.4byte	g_last_fid
	.byte	0x27
	.4byte	.LASF265
	.byte	0x1
	.byte	0x66
	.byte	0x14
	.4byte	0x2ab
	.byte	0x5
	.byte	0x3
	.4byte	g_fid_initialized
	.byte	0x27
	.4byte	.LASF266
	.byte	0x1
	.byte	0x67
	.byte	0x1a
	.4byte	0x103
	.byte	0x5
	.byte	0x3
	.4byte	g_frames_captured
	.byte	0x27
	.4byte	.LASF267
	.byte	0x1
	.byte	0x68
	.byte	0x1a
	.4byte	0x103
	.byte	0x5
	.byte	0x3
	.4byte	g_urb_payload_completions
	.byte	0x27
	.4byte	.LASF268
	.byte	0x1
	.byte	0x6b
	.byte	0x15
	.4byte	0x2b2
	.byte	0x5
	.byte	0x3
	.4byte	g_stall_detected
	.byte	0x27
	.4byte	.LASF269
	.byte	0x1
	.byte	0x6c
	.byte	0x19
	.4byte	0xc4
	.byte	0x5
	.byte	0x3
	.4byte	g_transport_restart_attempts
	.byte	0x27
	.4byte	.LASF270
	.byte	0x1
	.byte	0x6d
	.byte	0x1a
	.4byte	0xed
	.byte	0x5
	.byte	0x3
	.4byte	g_iso_cb_queue_drop_count
	.byte	0x27
	.4byte	.LASF271
	.byte	0x1
	.byte	0x6e
	.byte	0x19
	.4byte	0xc4
	.byte	0x5
	.byte	0x3
	.4byte	g_iso_pkts_per_urb_active
	.byte	0x27
	.4byte	.LASF272
	.byte	0x1
	.byte	0x6f
	.byte	0x19
	.4byte	0xc4
	.byte	0x5
	.byte	0x3
	.4byte	g_iso_urb_count_active
	.byte	0x27
	.4byte	.LASF273
	.byte	0x1
	.byte	0x70
	.byte	0x1a
	.4byte	0xed
	.byte	0x5
	.byte	0x3
	.4byte	g_frame_reclaim_count
	.byte	0x27
	.4byte	.LASF274
	.byte	0x1
	.byte	0x71
	.byte	0x1a
	.4byte	0xed
	.byte	0x5
	.byte	0x3
	.4byte	g_urb_complete_count
	.byte	0x27
	.4byte	.LASF275
	.byte	0x1
	.byte	0x72
	.byte	0x1a
	.4byte	0xed
	.byte	0x5
	.byte	0x3
	.4byte	g_unknown_urb_count
	.byte	0x27
	.4byte	.LASF276
	.byte	0x1
	.byte	0x73
	.byte	0x1a
	.4byte	0xed
	.byte	0x5
	.byte	0x3
	.4byte	g_pkt_count_clamp_count
	.byte	0x27
	.4byte	.LASF277
	.byte	0x1
	.byte	0x74
	.byte	0x1a
	.4byte	0xed
	.byte	0x5
	.byte	0x3
	.4byte	g_pkt_len_clamp_count
	.byte	0x27
	.4byte	.LASF278
	.byte	0x1
	.byte	0x75
	.byte	0x1a
	.4byte	0xed
	.byte	0x5
	.byte	0x3
	.4byte	g_pkt_range_drop_count
	.byte	0x27
	.4byte	.LASF279
	.byte	0x1
	.byte	0x76
	.byte	0x1a
	.4byte	0xed
	.byte	0x5
	.byte	0x3
	.4byte	g_pkt_desc_repair_count
	.byte	0x27
	.4byte	.LASF280
	.byte	0x1
	.byte	0x77
	.byte	0x1a
	.4byte	0xed
	.byte	0x5
	.byte	0x3
	.4byte	g_invalid_urb_buf_count
	.byte	0x27
	.4byte	.LASF281
	.byte	0x1
	.byte	0x78
	.byte	0x1a
	.4byte	0xed
	.byte	0x5
	.byte	0x3
	.4byte	g_guard_fault_count
	.byte	0x27
	.4byte	.LASF282
	.byte	0x1
	.byte	0x79
	.byte	0x1a
	.4byte	0xed
	.byte	0x5
	.byte	0x3
	.4byte	g_hdr_short_count
	.byte	0x27
	.4byte	.LASF283
	.byte	0x1
	.byte	0x7a
	.byte	0x1a
	.4byte	0xed
	.byte	0x5
	.byte	0x3
	.4byte	g_hdr_invalid_count
	.byte	0x27
	.4byte	.LASF284
	.byte	0x1
	.byte	0x7b
	.byte	0x1a
	.4byte	0xed
	.byte	0x5
	.byte	0x3
	.4byte	g_hdr_error_bit_count
	.byte	0x27
	.4byte	.LASF285
	.byte	0x1
	.byte	0x7c
	.byte	0x1a
	.4byte	0xed
	.byte	0x5
	.byte	0x3
	.4byte	g_hdr_eof_count
	.byte	0x27
	.4byte	.LASF286
	.byte	0x1
	.byte	0x7d
	.byte	0x1a
	.4byte	0xed
	.byte	0x5
	.byte	0x3
	.4byte	g_hdr_fid_toggle_count
	.byte	0x27
	.4byte	.LASF287
	.byte	0x1
	.byte	0x7e
	.byte	0x1a
	.4byte	0xed
	.byte	0x5
	.byte	0x3
	.4byte	g_payload_pkt_count
	.byte	0x27
	.4byte	.LASF288
	.byte	0x1
	.byte	0x7f
	.byte	0x1a
	.4byte	0x103
	.byte	0x5
	.byte	0x3
	.4byte	g_payload_bytes_total
	.byte	0x27
	.4byte	.LASF289
	.byte	0x1
	.byte	0x80
	.byte	0x1a
	.4byte	0xed
	.byte	0x5
	.byte	0x3
	.4byte	g_frame_oversize_drop_count
	.byte	0x27
	.4byte	.LASF290
	.byte	0x1
	.byte	0x81
	.byte	0x1a
	.4byte	0xed
	.byte	0x5
	.byte	0x3
	.4byte	g_jpeg_invalid_drop_count
	.byte	0x27
	.4byte	.LASF291
	.byte	0x1
	.byte	0x82
	.byte	0x1a
	.4byte	0xed
	.byte	0x5
	.byte	0x3
	.4byte	g_jpeg_trim_count
	.byte	0x27
	.4byte	.LASF292
	.byte	0x1
	.byte	0x83
	.byte	0x1a
	.4byte	0xed
	.byte	0x5
	.byte	0x3
	.4byte	g_jpeg_no_sos_count
	.byte	0x27
	.4byte	.LASF293
	.byte	0x1
	.byte	0x84
	.byte	0x1a
	.4byte	0xed
	.byte	0x5
	.byte	0x3
	.4byte	g_jpeg_no_eoi_count
	.byte	0x27
	.4byte	.LASF294
	.byte	0x1
	.byte	0x85
	.byte	0x1a
	.4byte	0xed
	.byte	0x5
	.byte	0x3
	.4byte	g_jpeg_nested_soi_count
	.byte	0x27
	.4byte	.LASF295
	.byte	0x1
	.byte	0x86
	.byte	0x1a
	.4byte	0xed
	.byte	0x5
	.byte	0x3
	.4byte	g_jpeg_trailer_garbage_count
	.byte	0x27
	.4byte	.LASF296
	.byte	0x1
	.byte	0x87
	.byte	0x1a
	.4byte	0xed
	.byte	0x5
	.byte	0x3
	.4byte	g_resync_soi_count
	.byte	0x27
	.4byte	.LASF297
	.byte	0x1
	.byte	0x88
	.byte	0x1a
	.4byte	0xed
	.byte	0x5
	.byte	0x3
	.4byte	g_fid_incomplete_drop_count
	.byte	0x27
	.4byte	.LASF298
	.byte	0x1
	.byte	0x89
	.byte	0x1a
	.4byte	0xed
	.byte	0x5
	.byte	0x3
	.4byte	g_fid_toggle_ignore_count
	.byte	0x27
	.4byte	.LASF299
	.byte	0x1
	.byte	0x8a
	.byte	0x1a
	.4byte	0xed
	.byte	0x5
	.byte	0x3
	.4byte	g_pkt_error_drop_count
	.byte	0x27
	.4byte	.LASF300
	.byte	0x1
	.byte	0x8b
	.byte	0x1a
	.4byte	0xed
	.byte	0x5
	.byte	0x3
	.4byte	g_parser_resync_count
	.byte	0x27
	.4byte	.LASF301
	.byte	0x1
	.byte	0x8c
	.byte	0x1a
	.4byte	0xed
	.byte	0x5
	.byte	0x3
	.4byte	g_parser_resync_streak
	.byte	0x27
	.4byte	.LASF302
	.byte	0x1
	.byte	0x8d
	.byte	0x1a
	.4byte	0xed
	.byte	0x5
	.byte	0x3
	.4byte	g_parser_escalation_count
	.byte	0x27
	.4byte	.LASF303
	.byte	0x1
	.byte	0x8e
	.byte	0x1a
	.4byte	0xed
	.byte	0x5
	.byte	0x3
	.4byte	g_transport_restart_count
	.byte	0x10
	.4byte	0x1608
	.4byte	0x1608
	.byte	0x11
	.4byte	0xac
	.byte	0x1
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x67d
	.byte	0x27
	.4byte	.LASF304
	.byte	0x1
	.byte	0x8f
	.byte	0x19
	.4byte	0x15f8
	.byte	0x5
	.byte	0x3
	.4byte	g_stream_urbs
	.byte	0x10
	.4byte	0x145
	.4byte	0x1630
	.byte	0x11
	.4byte	0xac
	.byte	0x1
	.byte	0
	.byte	0x27
	.4byte	.LASF305
	.byte	0x1
	.byte	0x90
	.byte	0x11
	.4byte	0x1620
	.byte	0x5
	.byte	0x3
	.4byte	g_stream_iso_raw_bufs
	.byte	0x27
	.4byte	.LASF306
	.byte	0x1
	.byte	0x91
	.byte	0x11
	.4byte	0x1620
	.byte	0x5
	.byte	0x3
	.4byte	g_stream_iso_bufs
	.byte	0x27
	.4byte	.LASF307
	.byte	0x1
	.byte	0x92
	.byte	0x19
	.4byte	0x15f8
	.byte	0x5
	.byte	0x3
	.4byte	g_pending_resubmit
	.byte	0x27
	.4byte	.LASF308
	.byte	0x1
	.byte	0x93
	.byte	0x1a
	.4byte	0xed
	.byte	0x5
	.byte	0x3
	.4byte	g_urb_done_head
	.byte	0x27
	.4byte	.LASF309
	.byte	0x1
	.byte	0x94
	.byte	0x1a
	.4byte	0xed
	.byte	0x5
	.byte	0x3
	.4byte	g_urb_done_tail
	.byte	0x10
	.4byte	0x1608
	.4byte	0x169a
	.byte	0x11
	.4byte	0xac
	.byte	0x3f
	.byte	0
	.byte	0x27
	.4byte	.LASF310
	.byte	0x1
	.byte	0x95
	.byte	0x19
	.4byte	0x168a
	.byte	0x5
	.byte	0x3
	.4byte	g_urb_done_ring
	.byte	0x27
	.4byte	.LASF311
	.byte	0x1
	.byte	0x96
	.byte	0x1a
	.4byte	0xed
	.byte	0x5
	.byte	0x3
	.4byte	g_resubmit_busy_count
	.byte	0x27
	.4byte	.LASF312
	.byte	0x1
	.byte	0x98
	.byte	0x11
	.4byte	0xe1
	.byte	0x5
	.byte	0x3
	.4byte	g_preferred_interval_100ns
	.byte	0x27
	.4byte	.LASF313
	.byte	0x1
	.byte	0x9b
	.byte	0x1d
	.4byte	0x250
	.byte	0x5
	.byte	0x3
	.4byte	g_state_callback
	.byte	0x21
	.byte	0x8
	.byte	0x1
	.2byte	0x102
	.byte	0x9
	.4byte	0x1725
	.byte	0x15
	.4byte	.LASF314
	.byte	0x1
	.2byte	0x103
	.byte	0xe
	.4byte	0xc9
	.byte	0
	.byte	0x28
	.string	"mps"
	.byte	0x1
	.2byte	0x104
	.byte	0xe
	.4byte	0xc9
	.byte	0x2
	.byte	0x15
	.4byte	.LASF315
	.byte	0x1
	.2byte	0x105
	.byte	0xd
	.4byte	0xb3
	.byte	0x4
	.byte	0x15
	.4byte	.LASF316
	.byte	0x1
	.2byte	0x106
	.byte	0xe
	.4byte	0xc9
	.byte	0x6
	.byte	0
	.byte	0x29
	.4byte	.LASF317
	.byte	0x1
	.2byte	0x107
	.byte	0x3
	.4byte	0x16e2
	.byte	0x5
	.4byte	0x1725
	.byte	0x10
	.4byte	0x2e3
	.4byte	0x1747
	.byte	0x11
	.4byte	0xac
	.byte	0x8
	.byte	0
	.byte	0x5
	.4byte	0x1737
	.byte	0x2a
	.4byte	.LASF318
	.byte	0x1
	.2byte	0x98f
	.byte	0xc
	.4byte	0x1747
	.byte	0x5
	.byte	0x3
	.4byte	__fsym_cam_info_name
	.byte	0x2a
	.4byte	.LASF319
	.byte	0x1
	.2byte	0x98f
	.byte	0x62
	.4byte	0x11c4
	.byte	0x5
	.byte	0x3
	.4byte	__fsym_cam_info
	.byte	0x10
	.4byte	0x2e3
	.4byte	0x1782
	.byte	0x11
	.4byte	0xac
	.byte	0x9
	.byte	0
	.byte	0x5
	.4byte	0x1772
	.byte	0x2a
	.4byte	.LASF320
	.byte	0x1
	.2byte	0x9b2
	.byte	0xc
	.4byte	0x1782
	.byte	0x5
	.byte	0x3
	.4byte	__fsym_cam_start_name
	.byte	0x2a
	.4byte	.LASF321
	.byte	0x1
	.2byte	0x9b2
	.byte	0x64
	.4byte	0x11c4
	.byte	0x5
	.byte	0x3
	.4byte	__fsym_cam_start
	.byte	0x2a
	.4byte	.LASF322
	.byte	0x1
	.2byte	0x9cc
	.byte	0xc
	.4byte	0x1747
	.byte	0x5
	.byte	0x3
	.4byte	__fsym_cam_stop_name
	.byte	0x2a
	.4byte	.LASF323
	.byte	0x1
	.2byte	0x9cc
	.byte	0x62
	.4byte	0x11c4
	.byte	0x5
	.byte	0x3
	.4byte	__fsym_cam_stop
	.byte	0x2b
	.4byte	.LASF326
	.byte	0x1
	.2byte	0x9b4
	.byte	0xc
	.4byte	0x99
	.byte	0x1
	.4byte	0x180d
	.byte	0x2c
	.4byte	.LASF324
	.byte	0x1
	.2byte	0x9b4
	.byte	0x1d
	.4byte	0x99
	.byte	0x2c
	.4byte	.LASF325
	.byte	0x1
	.2byte	0x9b4
	.byte	0x2a
	.4byte	0x1196
	.byte	0x2d
	.string	"ret"
	.byte	0x1
	.2byte	0x9c3
	.byte	0x9
	.4byte	0x99
	.byte	0
	.byte	0x2b
	.4byte	.LASF327
	.byte	0x1
	.2byte	0x995
	.byte	0xc
	.4byte	0x99
	.byte	0x1
	.4byte	0x1847
	.byte	0x2c
	.4byte	.LASF324
	.byte	0x1
	.2byte	0x995
	.byte	0x1e
	.4byte	0x99
	.byte	0x2c
	.4byte	.LASF325
	.byte	0x1
	.2byte	0x995
	.byte	0x2b
	.4byte	0x1196
	.byte	0x2d
	.string	"ret"
	.byte	0x1
	.2byte	0x9a9
	.byte	0x9
	.4byte	0x99
	.byte	0
	.byte	0x2b
	.4byte	.LASF328
	.byte	0x1
	.2byte	0x97e
	.byte	0xc
	.4byte	0x99
	.byte	0x1
	.4byte	0x1880
	.byte	0x2c
	.4byte	.LASF324
	.byte	0x1
	.2byte	0x97e
	.byte	0x1d
	.4byte	0x99
	.byte	0x2c
	.4byte	.LASF325
	.byte	0x1
	.2byte	0x97e
	.byte	0x2a
	.4byte	0x1196
	.byte	0x2d
	.string	"st"
	.byte	0x1
	.2byte	0x982
	.byte	0x14
	.4byte	0x17e
	.byte	0
	.byte	0x2b
	.4byte	.LASF329
	.byte	0x1
	.2byte	0x973
	.byte	0x14
	.4byte	0x2e8
	.byte	0x1
	.4byte	0x189f
	.byte	0x2e
	.string	"st"
	.byte	0x1
	.2byte	0x973
	.byte	0x31
	.4byte	0x17e
	.byte	0
	.byte	0x2f
	.4byte	.LASF330
	.byte	0x1
	.2byte	0x96a
	.byte	0x6
	.4byte	.LFB164
	.4byte	.LFE164-.LFB164
	.byte	0x1
	.byte	0x9c
	.4byte	0x18c5
	.byte	0x30
	.string	"cb"
	.byte	0x1
	.2byte	0x96a
	.byte	0x37
	.4byte	0x250
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x2f
	.4byte	.LASF331
	.byte	0x1
	.2byte	0x965
	.byte	0x6
	.4byte	.LFB163
	.4byte	.LFE163-.LFB163
	.byte	0x1
	.byte	0x9c
	.4byte	0x18ff
	.byte	0x31
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x965
	.byte	0x21
	.4byte	0x18ff
	.4byte	.LLST300
	.byte	0x32
	.4byte	.LVL907
	.4byte	0x5501
	.byte	0x33
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
	.4byte	0x14b
	.byte	0x34
	.4byte	.LASF332
	.byte	0x1
	.2byte	0x960
	.byte	0x5
	.4byte	0x99
	.4byte	.LFB162
	.4byte	.LFE162-.LFB162
	.byte	0x1
	.byte	0x9c
	.4byte	0x195b
	.byte	0x31
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x960
	.byte	0x27
	.4byte	0x18ff
	.4byte	.LLST298
	.byte	0x31
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x960
	.byte	0x37
	.4byte	0xe1
	.4byte	.LLST299
	.byte	0x32
	.4byte	.LVL905
	.4byte	0x550d
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0x34
	.4byte	.LASF333
	.byte	0x1
	.2byte	0x95b
	.byte	0x5
	.4byte	0x99
	.4byte	.LFB161
	.4byte	.LFE161-.LFB161
	.byte	0x1
	.byte	0x9c
	.4byte	0x19b1
	.byte	0x31
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x95b
	.byte	0x20
	.4byte	0x18ff
	.4byte	.LLST296
	.byte	0x31
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x95b
	.byte	0x30
	.4byte	0xe1
	.4byte	.LLST297
	.byte	0x32
	.4byte	.LVL903
	.4byte	0x5519
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0x34
	.4byte	.LASF334
	.byte	0x1
	.2byte	0x94f
	.byte	0x5
	.4byte	0x99
	.4byte	.LFB160
	.4byte	.LFE160-.LFB160
	.byte	0x1
	.byte	0x9c
	.4byte	0x19e7
	.byte	0x35
	.string	"ret"
	.byte	0x1
	.2byte	0x954
	.byte	0x9
	.4byte	0x99
	.4byte	.LLST290
	.byte	0x36
	.4byte	.LVL882
	.4byte	0x1a24
	.byte	0
	.byte	0x34
	.4byte	.LASF335
	.byte	0x1
	.2byte	0x943
	.byte	0x5
	.4byte	0x99
	.4byte	.LFB159
	.4byte	.LFE159-.LFB159
	.byte	0x1
	.byte	0x9c
	.4byte	0x1a24
	.byte	0x37
	.string	"ret"
	.byte	0x1
	.2byte	0x948
	.byte	0x9
	.4byte	0x99
	.byte	0x1
	.byte	0x5a
	.byte	0x36
	.4byte	.LVL859
	.4byte	0x1cd0
	.byte	0x36
	.4byte	.LVL860
	.4byte	0x1a6d
	.byte	0
	.byte	0x38
	.4byte	.LASF568
	.byte	0x1
	.2byte	0x919
	.byte	0x5
	.4byte	0x99
	.byte	0x1
	.4byte	0x1a6d
	.byte	0x2c
	.4byte	.LASF336
	.byte	0x1
	.2byte	0x919
	.byte	0x27
	.4byte	0xe1
	.byte	0x39
	.4byte	.LASF337
	.byte	0x1
	.2byte	0x920
	.byte	0x1a
	.4byte	0x1bc
	.byte	0x39
	.4byte	.LASF338
	.byte	0x1
	.2byte	0x921
	.byte	0xe
	.4byte	0xe1
	.byte	0x3a
	.byte	0x2d
	.string	"ret"
	.byte	0x1
	.2byte	0x934
	.byte	0xd
	.4byte	0x99
	.byte	0
	.byte	0
	.byte	0x34
	.4byte	.LASF339
	.byte	0x1
	.2byte	0x8d7
	.byte	0x5
	.4byte	0x99
	.4byte	.LFB157
	.4byte	.LFE157-.LFB157
	.byte	0x1
	.byte	0x9c
	.4byte	0x1c31
	.byte	0x31
	.4byte	.LASF336
	.byte	0x1
	.2byte	0x8d7
	.byte	0x28
	.4byte	0xe1
	.4byte	.LLST278
	.byte	0x3b
	.4byte	.LASF337
	.byte	0x1
	.2byte	0x8de
	.byte	0x1a
	.4byte	0x1bc
	.4byte	.LLST279
	.byte	0x3b
	.4byte	.LASF338
	.byte	0x1
	.2byte	0x8df
	.byte	0xe
	.4byte	0xe1
	.4byte	.LLST280
	.byte	0x3c
	.4byte	.LBB494
	.4byte	.LBE494-.LBB494
	.4byte	0x1af6
	.byte	0x35
	.string	"ret"
	.byte	0x1
	.2byte	0x905
	.byte	0xd
	.4byte	0x99
	.4byte	.LLST281
	.byte	0x36
	.4byte	.LVL823
	.4byte	0x5525
	.byte	0x3d
	.4byte	.LVL826
	.4byte	0x5531
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC84
	.byte	0
	.byte	0
	.byte	0x3e
	.4byte	0x22ea
	.4byte	.LBB495
	.4byte	.Ldebug_ranges0+0x900
	.byte	0x1
	.2byte	0x911
	.byte	0x9
	.4byte	0x1b89
	.byte	0x3f
	.4byte	.LVL829
	.4byte	0x5501
	.4byte	0x1b22
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR9
	.byte	0
	.byte	0x36
	.4byte	.LVL830
	.4byte	0x553d
	.byte	0x3f
	.4byte	.LVL831
	.4byte	0x5549
	.4byte	0x1b65
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	streaming_task
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC86
	.byte	0x33
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x83
	.byte	0x80,0x70
	.byte	0x33
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x33
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x3a
	.byte	0x33
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR28
	.byte	0
	.byte	0x36
	.4byte	.LVL832
	.4byte	0x5556
	.byte	0x3d
	.4byte	.LVL833
	.4byte	0x5531
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC87
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x83
	.byte	0x80,0x70
	.byte	0
	.byte	0
	.byte	0x36
	.4byte	.LVL810
	.4byte	0x5562
	.byte	0x36
	.4byte	.LVL813
	.4byte	0x556e
	.byte	0x36
	.4byte	.LVL815
	.4byte	0x556e
	.byte	0x3f
	.4byte	.LVL816
	.4byte	0x5531
	.4byte	0x1bcf
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC83
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0x5c
	.byte	0x6
	.byte	0x33
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x91
	.byte	0x58
	.byte	0x6
	.byte	0
	.byte	0x36
	.4byte	.LVL818
	.4byte	0x556e
	.byte	0x3f
	.4byte	.LVL819
	.4byte	0x4b35
	.4byte	0x1bf1
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x3f
	.4byte	.LVL821
	.4byte	0x4b35
	.4byte	0x1c09
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x3f
	.4byte	.LVL828
	.4byte	0x5531
	.4byte	0x1c27
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC85
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x36
	.4byte	.LVL834
	.4byte	0x557a
	.byte	0
	.byte	0x34
	.4byte	.LASF340
	.byte	0x1
	.2byte	0x8cd
	.byte	0x5
	.4byte	0x2ab
	.4byte	.LFB156
	.4byte	.LFE156-.LFB156
	.byte	0x1
	.byte	0x9c
	.4byte	0x1c81
	.byte	0x31
	.4byte	.LASF336
	.byte	0x1
	.2byte	0x8cd
	.byte	0x28
	.4byte	0xe1
	.4byte	.LLST276
	.byte	0x3b
	.4byte	.LASF341
	.byte	0x1
	.2byte	0x8d0
	.byte	0x9
	.4byte	0x2ab
	.4byte	.LLST277
	.byte	0x36
	.4byte	.LVL804
	.4byte	0x5562
	.byte	0x36
	.4byte	.LVL806
	.4byte	0x556e
	.byte	0
	.byte	0x34
	.4byte	.LASF342
	.byte	0x1
	.2byte	0x8c8
	.byte	0x16
	.4byte	0x1bc
	.4byte	.LFB155
	.4byte	.LFE155-.LFB155
	.byte	0x1
	.byte	0x9c
	.4byte	0x1cd0
	.byte	0x40
	.4byte	0x4b17
	.4byte	.LBB487
	.4byte	.Ldebug_ranges0+0x8e8
	.byte	0x1
	.2byte	0x8ca
	.byte	0xc
	.byte	0x41
	.4byte	.Ldebug_ranges0+0x8e8
	.byte	0x42
	.4byte	0x4b28
	.4byte	.LLST275
	.byte	0x36
	.4byte	.LVL800
	.4byte	0x5562
	.byte	0x36
	.4byte	.LVL802
	.4byte	0x556e
	.byte	0
	.byte	0
	.byte	0
	.byte	0x34
	.4byte	.LASF343
	.byte	0x1
	.2byte	0x8bb
	.byte	0xa
	.4byte	0xe1
	.4byte	.LFB154
	.4byte	.LFE154-.LFB154
	.byte	0x1
	.byte	0x9c
	.4byte	0x1d0f
	.byte	0x3b
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x8bd
	.byte	0xe
	.4byte	0xe1
	.4byte	.LLST274
	.byte	0x36
	.4byte	.LVL796
	.4byte	0x5562
	.byte	0x36
	.4byte	.LVL798
	.4byte	0x556e
	.byte	0
	.byte	0x43
	.4byte	.LASF344
	.byte	0x1
	.2byte	0x8b6
	.byte	0xa
	.4byte	0xf7
	.4byte	.LFB153
	.4byte	.LFE153-.LFB153
	.byte	0x1
	.byte	0x9c
	.byte	0x43
	.4byte	.LASF345
	.byte	0x1
	.2byte	0x8b1
	.byte	0x13
	.4byte	0x1d3d
	.4byte	.LFB152
	.4byte	.LFE152-.LFB152
	.byte	0x1
	.byte	0x9c
	.byte	0xa
	.byte	0x4
	.4byte	0x24b
	.byte	0x43
	.4byte	.LASF346
	.byte	0x1
	.2byte	0x8ac
	.byte	0x10
	.4byte	0x17e
	.4byte	.LFB151
	.4byte	.LFE151-.LFB151
	.byte	0x1
	.byte	0x9c
	.byte	0x2f
	.4byte	.LASF347
	.byte	0x1
	.2byte	0x89c
	.byte	0x6
	.4byte	.LFB150
	.4byte	.LFE150-.LFB150
	.byte	0x1
	.byte	0x9c
	.4byte	0x1dc9
	.byte	0x3b
	.4byte	.LASF348
	.byte	0x1
	.2byte	0x89e
	.byte	0x1d
	.4byte	0x1dc9
	.4byte	.LLST273
	.byte	0x3f
	.4byte	.LVL790
	.4byte	0x5586
	.4byte	0x1d99
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC79
	.byte	0
	.byte	0x44
	.4byte	.LVL792
	.4byte	0x5531
	.byte	0x3f
	.4byte	.LVL794
	.4byte	0x5531
	.4byte	0x1db9
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC81
	.byte	0
	.byte	0x3d
	.4byte	.LVL795
	.4byte	0x5592
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x1116
	.byte	0x2f
	.4byte	.LASF349
	.byte	0x1
	.2byte	0x88a
	.byte	0x6
	.4byte	.LFB149
	.4byte	.LFE149-.LFB149
	.byte	0x1
	.byte	0x9c
	.4byte	0x1e3f
	.byte	0x31
	.4byte	.LASF350
	.byte	0x1
	.2byte	0x88a
	.byte	0x29
	.4byte	0x1226
	.4byte	.LLST272
	.byte	0x3f
	.4byte	.LVL786
	.4byte	0x5531
	.4byte	0x1e0e
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC78
	.byte	0
	.byte	0x36
	.4byte	.LVL787
	.4byte	0x22ce
	.byte	0x3f
	.4byte	.LVL788
	.4byte	0x4b7e
	.4byte	0x1e2a
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x3d
	.4byte	.LVL789
	.4byte	0x4b35
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x2f
	.4byte	.LASF351
	.byte	0x1
	.2byte	0x82e
	.byte	0x6
	.4byte	.LFB148
	.4byte	.LFE148-.LFB148
	.byte	0x1
	.byte	0x9c
	.4byte	0x22ce
	.byte	0x31
	.4byte	.LASF350
	.byte	0x1
	.2byte	0x82e
	.byte	0x28
	.4byte	0x1226
	.4byte	.LLST236
	.byte	0x35
	.string	"vid"
	.byte	0x1
	.2byte	0x830
	.byte	0xe
	.4byte	0xc9
	.4byte	.LLST237
	.byte	0x35
	.string	"pid"
	.byte	0x1
	.2byte	0x831
	.byte	0xe
	.4byte	0xc9
	.4byte	.LLST238
	.byte	0x39
	.4byte	.LASF352
	.byte	0x1
	.2byte	0x842
	.byte	0xd
	.4byte	0xb3
	.byte	0x39
	.4byte	.LASF353
	.byte	0x1
	.2byte	0x842
	.byte	0x19
	.4byte	0xb3
	.byte	0x2d
	.string	"w"
	.byte	0x1
	.2byte	0x843
	.byte	0xe
	.4byte	0xc9
	.byte	0x2d
	.string	"h"
	.byte	0x1
	.2byte	0x843
	.byte	0x11
	.4byte	0xc9
	.byte	0x35
	.string	"alt"
	.byte	0x1
	.2byte	0x84c
	.byte	0xd
	.4byte	0xb3
	.4byte	.LLST239
	.byte	0x3b
	.4byte	.LASF354
	.byte	0x1
	.2byte	0x84d
	.byte	0xe
	.4byte	0xc9
	.4byte	.LLST240
	.byte	0x35
	.string	"ret"
	.byte	0x1
	.2byte	0x85c
	.byte	0x9
	.4byte	0x99
	.4byte	.LLST241
	.byte	0x3b
	.4byte	.LASF355
	.byte	0x1
	.2byte	0x86e
	.byte	0xe
	.4byte	0xe1
	.4byte	.LLST242
	.byte	0x3b
	.4byte	.LASF356
	.byte	0x1
	.2byte	0x86f
	.byte	0xe
	.4byte	0xe1
	.4byte	.LLST243
	.byte	0x3b
	.4byte	.LASF357
	.byte	0x1
	.2byte	0x875
	.byte	0x15
	.4byte	0x1725
	.4byte	.LLST244
	.byte	0x3e
	.4byte	0x446e
	.4byte	.LBB453
	.4byte	.Ldebug_ranges0+0x7c0
	.byte	0x1
	.2byte	0x845
	.byte	0xa
	.4byte	0x206c
	.byte	0x45
	.4byte	0x44b3
	.4byte	.LLST245
	.byte	0x45
	.4byte	0x44a6
	.4byte	.LLST246
	.byte	0x45
	.4byte	0x4499
	.4byte	.LLST247
	.byte	0x45
	.4byte	0x448c
	.4byte	.LLST248
	.byte	0x45
	.4byte	0x4480
	.4byte	.LLST249
	.byte	0x41
	.4byte	.Ldebug_ranges0+0x7c0
	.byte	0x42
	.4byte	0x44c0
	.4byte	.LLST250
	.byte	0x42
	.4byte	0x44cd
	.4byte	.LLST251
	.byte	0x42
	.4byte	0x44da
	.4byte	.LLST251
	.byte	0x42
	.4byte	0x44e7
	.4byte	.LLST253
	.byte	0x42
	.4byte	0x44f4
	.4byte	.LLST254
	.byte	0x42
	.4byte	0x4501
	.4byte	.LLST255
	.byte	0x46
	.4byte	0x450e
	.byte	0x3
	.byte	0x42
	.4byte	0x451b
	.4byte	.LLST256
	.byte	0x47
	.4byte	0x4528
	.4byte	.Ldebug_ranges0+0x7d8
	.4byte	0x204c
	.byte	0x42
	.4byte	0x4529
	.4byte	.LLST257
	.byte	0x48
	.4byte	0x4535
	.4byte	.Ldebug_ranges0+0x7f8
	.byte	0x42
	.4byte	0x4536
	.4byte	.LLST258
	.byte	0x47
	.4byte	0x4543
	.4byte	.Ldebug_ranges0+0x820
	.4byte	0x202c
	.byte	0x42
	.4byte	0x4544
	.4byte	.LLST259
	.byte	0x48
	.4byte	0x4551
	.4byte	.Ldebug_ranges0+0x848
	.byte	0x42
	.4byte	0x4552
	.4byte	.LLST260
	.byte	0x42
	.4byte	0x455d
	.4byte	.LLST261
	.byte	0x42
	.4byte	0x4568
	.4byte	.LLST262
	.byte	0x48
	.4byte	0x4575
	.4byte	.Ldebug_ranges0+0x878
	.byte	0x49
	.4byte	0x4576
	.byte	0x1
	.byte	0x6f
	.byte	0x49
	.4byte	0x4582
	.byte	0x1
	.byte	0x5f
	.byte	0x4a
	.4byte	0x458e
	.byte	0
	.byte	0
	.byte	0
	.byte	0x3d
	.4byte	.LVL737
	.4byte	0x5531
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC69
	.byte	0x33
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0x33
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x87
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0x3d
	.4byte	.LVL711
	.4byte	0x5531
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC68
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.byte	0x3e
	.4byte	0x43cc
	.4byte	.LBB476
	.4byte	.Ldebug_ranges0+0x8a0
	.byte	0x1
	.2byte	0x84c
	.byte	0x13
	.4byte	0x2104
	.byte	0x4b
	.4byte	0x43de
	.byte	0x41
	.4byte	.Ldebug_ranges0+0x8a0
	.byte	0x42
	.4byte	0x43ea
	.4byte	.LLST263
	.byte	0x42
	.4byte	0x43f7
	.4byte	.LLST264
	.byte	0x42
	.4byte	0x4404
	.4byte	.LLST265
	.byte	0x42
	.4byte	0x4411
	.4byte	.LLST266
	.byte	0x42
	.4byte	0x441e
	.4byte	.LLST267
	.byte	0x42
	.4byte	0x442b
	.4byte	.LLST268
	.byte	0x48
	.4byte	0x4438
	.4byte	.Ldebug_ranges0+0x8b8
	.byte	0x42
	.4byte	0x4439
	.4byte	.LLST269
	.byte	0x48
	.4byte	0x4444
	.4byte	.Ldebug_ranges0+0x8d0
	.byte	0x42
	.4byte	0x4445
	.4byte	.LLST270
	.byte	0x49
	.4byte	0x4451
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0x42
	.4byte	0x445e
	.4byte	.LLST271
	.byte	0x36
	.4byte	.LVL755
	.4byte	0x492d
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x3f
	.4byte	.LVL708
	.4byte	0x4b35
	.4byte	0x211c
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x3f
	.4byte	.LVL709
	.4byte	0x5531
	.4byte	0x2141
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC67
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5c
	.byte	0x4
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0x6
	.byte	0
	.byte	0x3f
	.4byte	.LVL719
	.4byte	0x4394
	.4byte	0x215b
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0
	.byte	0x3f
	.4byte	.LVL721
	.4byte	0x5531
	.4byte	0x218b
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC70
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5f
	.byte	0x3
	.byte	0xa
	.2byte	0x320
	.byte	0
	.byte	0x3f
	.4byte	.LVL722
	.4byte	0x5531
	.4byte	0x21b0
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC71
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0xc
	.4byte	0xf4240
	.byte	0x33
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0x3f
	.4byte	.LVL723
	.4byte	0x5525
	.4byte	0x21db
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x33
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0
	.byte	0x3f
	.4byte	.LVL726
	.4byte	0x5531
	.4byte	0x21f2
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC72
	.byte	0
	.byte	0x3f
	.4byte	.LVL727
	.4byte	0x5525
	.4byte	0x221d
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x33
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0
	.byte	0x3f
	.4byte	.LVL730
	.4byte	0x5531
	.4byte	0x2234
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC73
	.byte	0
	.byte	0x4c
	.4byte	.LVL735
	.4byte	0x4b7e
	.4byte	0x2247
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x3f
	.4byte	.LVL770
	.4byte	0x5531
	.4byte	0x2264
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC74
	.byte	0x33
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x36
	.4byte	.LVL771
	.4byte	0x492d
	.byte	0x3f
	.4byte	.LVL776
	.4byte	0x4b7e
	.4byte	0x2280
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x3f
	.4byte	.LVL777
	.4byte	0x5531
	.4byte	0x22a3
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC75
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x4c
	.4byte	.LVL782
	.4byte	0x5531
	.4byte	0x22ba
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC76
	.byte	0
	.byte	0x3d
	.4byte	.LVL783
	.4byte	0x5531
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC77
	.byte	0
	.byte	0
	.byte	0x4d
	.4byte	.LASF413
	.byte	0x1
	.2byte	0x81c
	.byte	0xd
	.byte	0x1
	.4byte	0x22ea
	.byte	0x3a
	.byte	0x2d
	.string	"i"
	.byte	0x1
	.2byte	0x825
	.byte	0xe
	.4byte	0x99
	.byte	0
	.byte	0
	.byte	0x4e
	.4byte	.LASF569
	.byte	0x1
	.2byte	0x7f8
	.byte	0xc
	.4byte	0x99
	.byte	0x1
	.byte	0x4f
	.4byte	.LASF433
	.byte	0x1
	.2byte	0x550
	.byte	0xd
	.4byte	.LFB145
	.4byte	.LFE145-.LFB145
	.byte	0x1
	.byte	0x9c
	.4byte	0x3c59
	.byte	0x50
	.string	"arg"
	.byte	0x1
	.2byte	0x550
	.byte	0x22
	.4byte	0x2d4
	.4byte	.LLST71
	.byte	0x35
	.string	"vc"
	.byte	0x1
	.2byte	0x554
	.byte	0x18
	.4byte	0x1226
	.4byte	.LLST72
	.byte	0x3b
	.4byte	.LASF358
	.byte	0x1
	.2byte	0x55c
	.byte	0x1a
	.4byte	0x89b
	.4byte	.LLST73
	.byte	0x3b
	.4byte	.LASF359
	.byte	0x1
	.2byte	0x55d
	.byte	0x25
	.4byte	0x8a1
	.4byte	.LLST74
	.byte	0x3b
	.4byte	.LASF360
	.byte	0x1
	.2byte	0x55f
	.byte	0x15
	.4byte	0x1725
	.4byte	.LLST75
	.byte	0x3b
	.4byte	.LASF316
	.byte	0x1
	.2byte	0x560
	.byte	0xe
	.4byte	0xc9
	.4byte	.LLST76
	.byte	0x3b
	.4byte	.LASF361
	.byte	0x1
	.2byte	0x5aa
	.byte	0xe
	.4byte	0xf7
	.4byte	.LLST77
	.byte	0x3b
	.4byte	.LASF362
	.byte	0x1
	.2byte	0x5ab
	.byte	0xe
	.4byte	0xf7
	.4byte	.LLST78
	.byte	0x3b
	.4byte	.LASF363
	.byte	0x1
	.2byte	0x5ac
	.byte	0x10
	.4byte	0x30b
	.4byte	.LLST79
	.byte	0x3b
	.4byte	.LASF364
	.byte	0x1
	.2byte	0x5ad
	.byte	0x10
	.4byte	0x30b
	.4byte	.LLST80
	.byte	0x3b
	.4byte	.LASF365
	.byte	0x1
	.2byte	0x5ae
	.byte	0x10
	.4byte	0x30b
	.4byte	.LLST81
	.byte	0x3b
	.4byte	.LASF366
	.byte	0x1
	.2byte	0x5b3
	.byte	0xe
	.4byte	0xe1
	.4byte	.LLST82
	.byte	0x3b
	.4byte	.LASF367
	.byte	0x1
	.2byte	0x5b4
	.byte	0xe
	.4byte	0xe1
	.4byte	.LLST83
	.byte	0x3b
	.4byte	.LASF368
	.byte	0x1
	.2byte	0x5b5
	.byte	0xe
	.4byte	0xe1
	.4byte	.LLST84
	.byte	0x3b
	.4byte	.LASF369
	.byte	0x1
	.2byte	0x5b6
	.byte	0xd
	.4byte	0xb3
	.4byte	.LLST85
	.byte	0x3b
	.4byte	.LASF370
	.byte	0x1
	.2byte	0x5b7
	.byte	0xd
	.4byte	0xb3
	.4byte	.LLST86
	.byte	0x3b
	.4byte	.LASF371
	.byte	0x1
	.2byte	0x602
	.byte	0xe
	.4byte	0xe1
	.4byte	.LLST87
	.byte	0x3b
	.4byte	.LASF372
	.byte	0x1
	.2byte	0x635
	.byte	0xd
	.4byte	0xb3
	.4byte	.LLST88
	.byte	0x51
	.4byte	.Ldebug_ranges0+0x1e0
	.4byte	0x262d
	.byte	0x3b
	.4byte	.LASF373
	.byte	0x1
	.2byte	0x5b8
	.byte	0xe
	.4byte	0x99
	.4byte	.LLST89
	.byte	0x41
	.4byte	.Ldebug_ranges0+0x208
	.byte	0x35
	.string	"c"
	.byte	0x1
	.2byte	0x5b9
	.byte	0x15
	.4byte	0x2c8
	.4byte	.LLST90
	.byte	0x41
	.4byte	.Ldebug_ranges0+0x230
	.byte	0x3b
	.4byte	.LASF374
	.byte	0x1
	.2byte	0x5ba
	.byte	0x15
	.4byte	0xb3
	.4byte	.LLST91
	.byte	0x3b
	.4byte	.LASF375
	.byte	0x1
	.2byte	0x5bf
	.byte	0x16
	.4byte	0xe1
	.4byte	.LLST92
	.byte	0x3b
	.4byte	.LASF376
	.byte	0x1
	.2byte	0x5c1
	.byte	0x16
	.4byte	0xe1
	.4byte	.LLST93
	.byte	0x3b
	.4byte	.LASF377
	.byte	0x1
	.2byte	0x5c2
	.byte	0x16
	.4byte	0xe1
	.4byte	.LLST94
	.byte	0x3b
	.4byte	.LASF378
	.byte	0x1
	.2byte	0x5c3
	.byte	0x16
	.4byte	0xe1
	.4byte	.LLST95
	.byte	0x3b
	.4byte	.LASF379
	.byte	0x1
	.2byte	0x5c5
	.byte	0x16
	.4byte	0xe1
	.4byte	.LLST96
	.byte	0x3b
	.4byte	.LASF380
	.byte	0x1
	.2byte	0x5c6
	.byte	0x11
	.4byte	0x2ab
	.4byte	.LLST97
	.byte	0x51
	.4byte	.Ldebug_ranges0+0x258
	.4byte	0x2578
	.byte	0x35
	.string	"u"
	.byte	0x1
	.2byte	0x5cf
	.byte	0x16
	.4byte	0x99
	.4byte	.LLST98
	.byte	0x3f
	.4byte	.LVL240
	.4byte	0x559f
	.4byte	0x2518
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x4
	.byte	0x91
	.byte	0xa4,0x7d
	.byte	0x6
	.byte	0
	.byte	0x3f
	.4byte	.LVL241
	.4byte	0x559f
	.4byte	0x252c
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0
	.byte	0x3f
	.4byte	.LVL242
	.4byte	0x55ab
	.4byte	0x2547
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x33
	.byte	0x1
	.byte	0x5c
	.byte	0x4
	.byte	0x91
	.byte	0xa4,0x7d
	.byte	0x6
	.byte	0
	.byte	0x3f
	.4byte	.LVL243
	.4byte	0x55ab
	.4byte	0x2561
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0xa5
	.byte	0x33
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x3d
	.4byte	.LVL244
	.4byte	0x55ab
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0xa5
	.byte	0x33
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0x3c
	.4byte	.LBB239
	.4byte	.LBE239-.LBB239
	.4byte	0x2595
	.byte	0x35
	.string	"u"
	.byte	0x1
	.2byte	0x5ea
	.byte	0x16
	.4byte	0x99
	.4byte	.LLST99
	.byte	0
	.byte	0x36
	.4byte	.LVL228
	.4byte	0x5556
	.byte	0x3f
	.4byte	.LVL231
	.4byte	0x5531
	.4byte	0x25d0
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC26
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5d
	.byte	0x4
	.byte	0x91
	.byte	0xf8,0x7c
	.byte	0x6
	.byte	0x33
	.byte	0x1
	.byte	0x5f
	.byte	0x3
	.byte	0xa
	.2byte	0x5000
	.byte	0
	.byte	0x36
	.4byte	.LVL693
	.4byte	0x5556
	.byte	0x3f
	.4byte	.LVL694
	.4byte	0x5531
	.4byte	0x2604
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC65
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5d
	.byte	0x4
	.byte	0x91
	.byte	0xd0,0x7c
	.byte	0x6
	.byte	0
	.byte	0x3d
	.4byte	.LVL695
	.4byte	0x50a5
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x52
	.4byte	0x3cb4
	.byte	0x5
	.byte	0x3
	.4byte	g_stream_urbs
	.byte	0x52
	.4byte	0x3cc1
	.byte	0x5
	.byte	0x3
	.4byte	g_stream_iso_raw_bufs
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x51
	.4byte	.Ldebug_ranges0+0x270
	.4byte	0x26ed
	.byte	0x35
	.string	"u"
	.byte	0x1
	.2byte	0x610
	.byte	0xe
	.4byte	0x99
	.4byte	.LLST100
	.byte	0x41
	.4byte	.Ldebug_ranges0+0x290
	.byte	0x35
	.string	"urb"
	.byte	0x1
	.2byte	0x611
	.byte	0x1a
	.4byte	0x1608
	.4byte	.LLST101
	.byte	0x35
	.string	"ret"
	.byte	0x1
	.2byte	0x625
	.byte	0xd
	.4byte	0x99
	.4byte	.LLST102
	.byte	0x3f
	.4byte	.LVL261
	.4byte	0x3e0e
	.4byte	0x268e
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x89
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5e
	.byte	0x4
	.byte	0x91
	.byte	0xd0,0x7c
	.byte	0x6
	.byte	0
	.byte	0x3f
	.4byte	.LVL262
	.4byte	0x5531
	.4byte	0x26ab
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC30
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x3f
	.4byte	.LVL263
	.4byte	0x4b7e
	.4byte	0x26be
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x3f
	.4byte	.LVL281
	.4byte	0x55b7
	.4byte	0x26d2
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x3d
	.4byte	.LVL284
	.4byte	0x5531
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC31
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x51
	.4byte	.Ldebug_ranges0+0x2e0
	.4byte	0x397e
	.byte	0x3b
	.4byte	.LASF381
	.byte	0x1
	.2byte	0x63f
	.byte	0xd
	.4byte	0x2ab
	.4byte	.LLST109
	.byte	0x3b
	.4byte	.LASF382
	.byte	0x1
	.2byte	0x667
	.byte	0x1a
	.4byte	0x1608
	.4byte	.LLST110
	.byte	0x3b
	.4byte	.LASF383
	.byte	0x1
	.2byte	0x6a1
	.byte	0x12
	.4byte	0xf7
	.4byte	.LLST111
	.byte	0x3b
	.4byte	.LASF384
	.byte	0x1
	.2byte	0x6a2
	.byte	0x12
	.4byte	0xf7
	.4byte	.LLST112
	.byte	0x35
	.string	"now"
	.byte	0x1
	.2byte	0x6a3
	.byte	0x14
	.4byte	0x30b
	.4byte	.LLST113
	.byte	0x3b
	.4byte	.LASF385
	.byte	0x1
	.2byte	0x6a5
	.byte	0xd
	.4byte	0x2ab
	.4byte	.LLST114
	.byte	0x39
	.4byte	.LASF386
	.byte	0x1
	.2byte	0x6a6
	.byte	0xd
	.4byte	0x2ab
	.byte	0x39
	.4byte	.LASF387
	.byte	0x1
	.2byte	0x6a7
	.byte	0xd
	.4byte	0x2ab
	.byte	0x3b
	.4byte	.LASF388
	.byte	0x1
	.2byte	0x6a8
	.byte	0xd
	.4byte	0x2ab
	.4byte	.LLST115
	.byte	0x3b
	.4byte	.LASF389
	.byte	0x1
	.2byte	0x6bd
	.byte	0x12
	.4byte	0xe1
	.4byte	.LLST116
	.byte	0x51
	.4byte	.Ldebug_ranges0+0x318
	.4byte	0x288c
	.byte	0x35
	.string	"u"
	.byte	0x1
	.2byte	0x642
	.byte	0x16
	.4byte	0xb3
	.4byte	.LLST117
	.byte	0x41
	.4byte	.Ldebug_ranges0+0x340
	.byte	0x3b
	.4byte	.LASF390
	.byte	0x1
	.2byte	0x643
	.byte	0x1e
	.4byte	0x1608
	.4byte	.LLST118
	.byte	0x35
	.string	"r"
	.byte	0x1
	.2byte	0x654
	.byte	0x11
	.4byte	0x99
	.4byte	.LLST119
	.byte	0x3f
	.4byte	.LVL287
	.4byte	0x3edb
	.4byte	0x27e9
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x3f
	.4byte	.LVL288
	.4byte	0x3e7c
	.4byte	0x280b
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x4
	.byte	0x91
	.byte	0xec,0x7c
	.byte	0x6
	.byte	0x33
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0
	.byte	0x3f
	.4byte	.LVL289
	.4byte	0x55b7
	.4byte	0x281f
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x3f
	.4byte	.LVL295
	.4byte	0x3e0e
	.4byte	0x2841
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x89
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5e
	.byte	0x4
	.byte	0x91
	.byte	0xd0,0x7c
	.byte	0x6
	.byte	0
	.byte	0x3f
	.4byte	.LVL296
	.4byte	0x5531
	.4byte	0x285e
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC34
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x3f
	.4byte	.LVL297
	.4byte	0x4b7e
	.4byte	0x2871
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x3d
	.4byte	.LVL312
	.4byte	0x5531
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC35
	.byte	0x33
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x51
	.4byte	.Ldebug_ranges0+0x390
	.4byte	0x30f8
	.byte	0x3b
	.4byte	.LASF391
	.byte	0x1
	.2byte	0x66a
	.byte	0x11
	.4byte	0x99
	.4byte	.LLST123
	.byte	0x3b
	.4byte	.LASF392
	.byte	0x1
	.2byte	0x672
	.byte	0x11
	.4byte	0x2ab
	.4byte	.LLST124
	.byte	0x3b
	.4byte	.LASF393
	.byte	0x1
	.2byte	0x673
	.byte	0x16
	.4byte	0xe1
	.4byte	.LLST125
	.byte	0x51
	.4byte	.Ldebug_ranges0+0x3d0
	.4byte	0x2991
	.byte	0x35
	.string	"ret"
	.byte	0x1
	.2byte	0x68f
	.byte	0x15
	.4byte	0x99
	.4byte	.LLST126
	.byte	0x3f
	.4byte	.LVL365
	.4byte	0x3e0e
	.4byte	0x2904
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x89
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5e
	.byte	0x4
	.byte	0x91
	.byte	0xd0,0x7c
	.byte	0x6
	.byte	0
	.byte	0x3f
	.4byte	.LVL366
	.4byte	0x5531
	.4byte	0x2921
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC44
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x3f
	.4byte	.LVL367
	.4byte	0x4b7e
	.4byte	0x2934
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x3f
	.4byte	.LVL546
	.4byte	0x3e7c
	.4byte	0x2956
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x4
	.byte	0x91
	.byte	0xec,0x7c
	.byte	0x6
	.byte	0x33
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0
	.byte	0x3f
	.4byte	.LVL547
	.4byte	0x55b7
	.4byte	0x296a
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x3f
	.4byte	.LVL550
	.4byte	0x5531
	.4byte	0x2981
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC45
	.byte	0
	.byte	0x3d
	.4byte	.LVL551
	.4byte	0x4b7e
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0x3e
	.4byte	0x3c59
	.4byte	.LBB278
	.4byte	.Ldebug_ranges0+0x3f8
	.byte	0x1
	.2byte	0x66a
	.byte	0x18
	.4byte	0x29f4
	.byte	0x45
	.4byte	0x3c78
	.4byte	.LLST127
	.byte	0x45
	.4byte	0x3c85
	.4byte	.LLST128
	.byte	0x45
	.4byte	0x3c6b
	.4byte	.LLST129
	.byte	0x3e
	.4byte	0x4a57
	.4byte	.LBB279
	.4byte	.Ldebug_ranges0+0x418
	.byte	0x1
	.2byte	0x541
	.byte	0xa
	.4byte	0x29e0
	.byte	0x45
	.4byte	0x4a68
	.4byte	.LLST130
	.byte	0
	.byte	0x48
	.4byte	0x3c92
	.4byte	.Ldebug_ranges0+0x430
	.byte	0x42
	.4byte	0x3c93
	.4byte	.LLST131
	.byte	0
	.byte	0
	.byte	0x3e
	.4byte	0x3d25
	.4byte	.LBB285
	.4byte	.Ldebug_ranges0+0x448
	.byte	0x1
	.2byte	0x680
	.byte	0xd
	.4byte	0x3022
	.byte	0x45
	.4byte	0x3d5a
	.4byte	.LLST132
	.byte	0x45
	.4byte	0x3d4d
	.4byte	.LLST133
	.byte	0x45
	.4byte	0x3d40
	.4byte	.LLST134
	.byte	0x45
	.4byte	0x3d33
	.4byte	.LLST135
	.byte	0x41
	.4byte	.Ldebug_ranges0+0x448
	.byte	0x42
	.4byte	0x3d67
	.4byte	.LLST136
	.byte	0x42
	.4byte	0x3d74
	.4byte	.LLST137
	.byte	0x42
	.4byte	0x3d81
	.4byte	.LLST138
	.byte	0x42
	.4byte	0x3d8e
	.4byte	.LLST139
	.byte	0x42
	.4byte	0x3d9b
	.4byte	.LLST140
	.byte	0x47
	.4byte	0x3da8
	.4byte	.Ldebug_ranges0+0x478
	.4byte	0x2fb3
	.byte	0x42
	.4byte	0x3da9
	.4byte	.LLST141
	.byte	0x48
	.4byte	0x3db4
	.4byte	.Ldebug_ranges0+0x4a0
	.byte	0x42
	.4byte	0x3db5
	.4byte	.LLST142
	.byte	0x42
	.4byte	0x3dc2
	.4byte	.LLST143
	.byte	0x42
	.4byte	0x3dcf
	.4byte	.LLST144
	.byte	0x47
	.4byte	0x3ddc
	.4byte	.Ldebug_ranges0+0x4c0
	.4byte	0x2f8c
	.byte	0x42
	.4byte	0x3ddd
	.4byte	.LLST145
	.byte	0x42
	.4byte	0x3dea
	.4byte	.LLST146
	.byte	0x42
	.4byte	0x3df7
	.4byte	.LLST147
	.byte	0x3e
	.4byte	0x3f1e
	.4byte	.LBB290
	.4byte	.Ldebug_ranges0+0x4e0
	.byte	0x1
	.2byte	0x50d
	.byte	0x11
	.4byte	0x2f55
	.byte	0x45
	.4byte	0x3f39
	.4byte	.LLST148
	.byte	0x45
	.4byte	0x3f2c
	.4byte	.LLST149
	.byte	0x41
	.4byte	.Ldebug_ranges0+0x4e0
	.byte	0x42
	.4byte	0x3f46
	.4byte	.LLST150
	.byte	0x42
	.4byte	0x3f53
	.4byte	.LLST151
	.byte	0x42
	.4byte	0x3f60
	.4byte	.LLST152
	.byte	0x42
	.4byte	0x3f6d
	.4byte	.LLST153
	.byte	0x42
	.4byte	0x3f7a
	.4byte	.LLST154
	.byte	0x42
	.4byte	0x3f87
	.4byte	.LLST155
	.byte	0x42
	.4byte	0x3f94
	.4byte	.LLST156
	.byte	0x42
	.4byte	0x3fa1
	.4byte	.LLST157
	.byte	0x42
	.4byte	0x3fae
	.4byte	.LLST158
	.byte	0x47
	.4byte	0x401b
	.4byte	.Ldebug_ranges0+0x500
	.4byte	0x2d13
	.byte	0x42
	.4byte	0x4020
	.4byte	.LLST159
	.byte	0x42
	.4byte	0x402d
	.4byte	.LLST160
	.byte	0x42
	.4byte	0x403a
	.4byte	.LLST161
	.byte	0x42
	.4byte	0x4047
	.4byte	.LLST162
	.byte	0x3e
	.4byte	0x4ba5
	.4byte	.LBB293
	.4byte	.Ldebug_ranges0+0x530
	.byte	0x1
	.2byte	0x437
	.byte	0x9
	.4byte	0x2c7d
	.byte	0x45
	.4byte	0x4bcc
	.4byte	.LLST163
	.byte	0x45
	.4byte	0x4bc1
	.4byte	.LLST164
	.byte	0x45
	.4byte	0x4bb6
	.4byte	.LLST165
	.byte	0x41
	.4byte	.Ldebug_ranges0+0x530
	.byte	0x42
	.4byte	0x4bd6
	.4byte	.LLST166
	.byte	0x42
	.4byte	0x4be1
	.4byte	.LLST167
	.byte	0x42
	.4byte	0x4bec
	.4byte	.LLST168
	.byte	0x42
	.4byte	0x4bf7
	.4byte	.LLST169
	.byte	0x53
	.4byte	0x4c09
	.4byte	.LBB295
	.4byte	.LBE295-.LBB295
	.byte	0x2
	.byte	0x42
	.byte	0xa
	.4byte	0x2bef
	.byte	0x45
	.4byte	0x4c22
	.4byte	.LLST170
	.byte	0x45
	.4byte	0x4c16
	.4byte	.LLST171
	.byte	0
	.byte	0x53
	.4byte	0x4c09
	.4byte	.LBB297
	.4byte	.LBE297-.LBB297
	.byte	0x2
	.byte	0x44
	.byte	0xa
	.4byte	0x2c12
	.byte	0x45
	.4byte	0x4c22
	.4byte	.LLST172
	.byte	0x4b
	.4byte	0x4c16
	.byte	0
	.byte	0x53
	.4byte	0x4c09
	.4byte	.LBB299
	.4byte	.LBE299-.LBB299
	.byte	0x2
	.byte	0x46
	.byte	0xa
	.4byte	0x2c35
	.byte	0x45
	.4byte	0x4c22
	.4byte	.LLST173
	.byte	0x4b
	.4byte	0x4c16
	.byte	0
	.byte	0x53
	.4byte	0x4c09
	.4byte	.LBB301
	.4byte	.LBE301-.LBB301
	.byte	0x2
	.byte	0x48
	.byte	0xa
	.4byte	0x2c58
	.byte	0x45
	.4byte	0x4c22
	.4byte	.LLST174
	.byte	0x4b
	.4byte	0x4c16
	.byte	0
	.byte	0x54
	.4byte	0x4c09
	.4byte	.LBB303
	.4byte	.Ldebug_ranges0+0x548
	.byte	0x2
	.byte	0x4e
	.byte	0xa
	.byte	0x45
	.4byte	0x4c22
	.4byte	.LLST175
	.byte	0x45
	.4byte	0x4c16
	.4byte	.LLST176
	.byte	0
	.byte	0
	.byte	0
	.byte	0x55
	.4byte	0x4054
	.4byte	.LBB308
	.4byte	.LBE308-.LBB308
	.4byte	0x2cae
	.byte	0x42
	.4byte	0x4059
	.4byte	.LLST177
	.byte	0x3d
	.4byte	.LVL478
	.4byte	0x40ee
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x55
	.4byte	0x4067
	.4byte	.LBB310
	.4byte	.LBE310-.LBB310
	.4byte	0x2d03
	.byte	0x49
	.4byte	0x4068
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x49
	.4byte	0x4075
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0x3f
	.4byte	.LVL535
	.4byte	0x50ff
	.4byte	0x2cf3
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x33
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0
	.byte	0x3d
	.4byte	.LVL537
	.4byte	0x4162
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x3d
	.4byte	.LVL454
	.4byte	0x41b0
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x47
	.4byte	0x3fbb
	.4byte	.Ldebug_ranges0+0x560
	.4byte	0x2d49
	.byte	0x42
	.4byte	0x3fc0
	.4byte	.LLST178
	.byte	0x42
	.4byte	0x3fcd
	.4byte	.LLST179
	.byte	0x3d
	.4byte	.LVL415
	.4byte	0x4128
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x47
	.4byte	0x3fdb
	.4byte	.Ldebug_ranges0+0x578
	.4byte	0x2da4
	.byte	0x42
	.4byte	0x3fe0
	.4byte	.LLST180
	.byte	0x3f
	.4byte	.LVL418
	.4byte	0x4128
	.4byte	0x2d79
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x3f
	.4byte	.LVL421
	.4byte	0x4162
	.4byte	0x2d90
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x91
	.byte	0xf4,0x7d
	.byte	0x94
	.byte	0x1
	.byte	0
	.byte	0x3d
	.4byte	.LVL431
	.4byte	0x41b0
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x91
	.byte	0xf4,0x7d
	.byte	0x94
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x47
	.4byte	0x3fee
	.4byte	.Ldebug_ranges0+0x590
	.4byte	0x2ea3
	.byte	0x42
	.4byte	0x3ff3
	.4byte	.LLST181
	.byte	0x42
	.4byte	0x4000
	.4byte	.LLST182
	.byte	0x42
	.4byte	0x400d
	.4byte	.LLST183
	.byte	0x56
	.4byte	0x40ae
	.4byte	.LBB315
	.4byte	.LBE315-.LBB315
	.byte	0x1
	.2byte	0x40b
	.byte	0xe
	.4byte	0x2e75
	.byte	0x45
	.4byte	0x40c0
	.4byte	.LLST184
	.byte	0x45
	.4byte	0x40cd
	.4byte	.LLST185
	.byte	0x49
	.4byte	0x40da
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x3f
	.4byte	.LVL435
	.4byte	0x55c3
	.4byte	0x2e13
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR9
	.byte	0
	.byte	0x36
	.4byte	.LVL436
	.4byte	0x55cf
	.byte	0x3f
	.4byte	.LVL437
	.4byte	0x55c3
	.4byte	0x2e33
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR9
	.byte	0
	.byte	0x3f
	.4byte	.LVL438
	.4byte	0x55db
	.4byte	0x2e58
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x4
	.byte	0x91
	.byte	0xf4,0x7d
	.byte	0x6
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x4
	.byte	0x91
	.byte	0xf4,0x7d
	.byte	0x6
	.byte	0x33
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0
	.byte	0x36
	.4byte	.LVL439
	.4byte	0x553d
	.byte	0x3d
	.4byte	.LVL441
	.4byte	0x55c3
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR9
	.byte	0
	.byte	0
	.byte	0x3f
	.4byte	.LVL425
	.4byte	0x4128
	.4byte	0x2e8f
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x3d
	.4byte	.LVL445
	.4byte	0x5531
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC43
	.byte	0
	.byte	0
	.byte	0x55
	.4byte	0x4084
	.4byte	.LBB325
	.4byte	.LBE325-.LBB325
	.4byte	0x2efb
	.byte	0x49
	.4byte	0x4085
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x49
	.4byte	0x4092
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0x42
	.4byte	0x409f
	.4byte	.LLST186
	.byte	0x3f
	.4byte	.LVL540
	.4byte	0x50ff
	.4byte	0x2eeb
	.byte	0x33
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x33
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0
	.byte	0x3d
	.4byte	.LVL542
	.4byte	0x4162
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x36
	.4byte	.LVL393
	.4byte	0x41ec
	.byte	0x36
	.4byte	.LVL396
	.4byte	0x41ec
	.byte	0x36
	.4byte	.LVL404
	.4byte	0x4162
	.byte	0x36
	.4byte	.LVL406
	.4byte	0x41ec
	.byte	0x36
	.4byte	.LVL407
	.4byte	0x40ee
	.byte	0x3f
	.4byte	.LVL408
	.4byte	0x4162
	.4byte	0x2f3b
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x36
	.4byte	.LVL410
	.4byte	0x40ee
	.byte	0x3d
	.4byte	.LVL413
	.4byte	0x41b0
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.byte	0x3f
	.4byte	.LVL381
	.4byte	0x5531
	.4byte	0x2f72
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC41
	.byte	0x33
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x89
	.byte	0
	.byte	0
	.byte	0x3d
	.4byte	.LVL387
	.4byte	0x5531
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC42
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0
	.byte	0
	.byte	0x3d
	.4byte	.LVL379
	.4byte	0x5531
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC40
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x89
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x36
	.4byte	.LVL359
	.4byte	0x4a17
	.byte	0x3f
	.4byte	.LVL363
	.4byte	0x5531
	.4byte	0x2fd3
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC38
	.byte	0
	.byte	0x3f
	.4byte	.LVL364
	.4byte	0x3edb
	.4byte	0x2ff0
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x91
	.byte	0xe0,0x7c
	.byte	0x94
	.byte	0x1
	.byte	0
	.byte	0x3f
	.4byte	.LVL373
	.4byte	0x5531
	.4byte	0x3017
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC39
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x4
	.byte	0x91
	.byte	0xf8,0x7c
	.byte	0x6
	.byte	0x33
	.byte	0x1
	.byte	0x5c
	.byte	0x4
	.byte	0x91
	.byte	0xe0,0x7c
	.byte	0x6
	.byte	0
	.byte	0x36
	.4byte	.LVL376
	.4byte	0x41ec
	.byte	0
	.byte	0
	.byte	0x3e
	.4byte	0x461b
	.4byte	.LBB342
	.4byte	.Ldebug_ranges0+0x5b8
	.byte	0x1
	.2byte	0x674
	.byte	0x12
	.4byte	0x3091
	.byte	0x45
	.4byte	0x4654
	.4byte	.LLST187
	.byte	0x45
	.4byte	0x4647
	.4byte	.LLST188
	.byte	0x45
	.4byte	0x463a
	.4byte	.LLST189
	.byte	0x45
	.4byte	0x462d
	.4byte	.LLST190
	.byte	0x41
	.4byte	.Ldebug_ranges0+0x5b8
	.byte	0x4a
	.4byte	0x4661
	.byte	0x47
	.4byte	0x466e
	.4byte	.Ldebug_ranges0+0x5d8
	.4byte	0x307c
	.byte	0x42
	.4byte	0x4673
	.4byte	.LLST191
	.byte	0
	.byte	0x48
	.4byte	0x467f
	.4byte	.Ldebug_ranges0+0x5f0
	.byte	0x42
	.4byte	0x4680
	.4byte	.LLST192
	.byte	0
	.byte	0
	.byte	0
	.byte	0x3f
	.4byte	.LVL309
	.4byte	0x5531
	.4byte	0x30ae
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC36
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x3f
	.4byte	.LVL321
	.4byte	0x5531
	.4byte	0x30e8
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC37
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x61
	.byte	0x4
	.byte	0x91
	.byte	0xd0,0x7c
	.byte	0x6
	.byte	0x33
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x4
	.byte	0x91
	.byte	0x88,0x7d
	.byte	0x6
	.byte	0
	.byte	0x3d
	.4byte	.LVL322
	.4byte	0x4b7e
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0x51
	.4byte	.Ldebug_ranges0+0x620
	.4byte	0x3159
	.byte	0x3b
	.4byte	.LASF394
	.byte	0x1
	.2byte	0x6cd
	.byte	0x16
	.4byte	0xe1
	.4byte	.LLST194
	.byte	0x3f
	.4byte	.LVL335
	.4byte	0x5531
	.4byte	0x3129
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC47
	.byte	0
	.byte	0x3f
	.4byte	.LVL336
	.4byte	0x41b0
	.4byte	0x313c
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x36
	.4byte	.LVL337
	.4byte	0x553d
	.byte	0x3d
	.4byte	.LVL341
	.4byte	0x5531
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC48
	.byte	0
	.byte	0
	.byte	0x51
	.4byte	.Ldebug_ranges0+0x638
	.4byte	0x3802
	.byte	0x57
	.4byte	.LASF395
	.byte	0x1
	.2byte	0x6de
	.byte	0x16
	.4byte	0xe1
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0x57
	.4byte	.LASF396
	.byte	0x1
	.2byte	0x6de
	.byte	0x26
	.4byte	0xe1
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0x57
	.4byte	.LASF397
	.byte	0x1
	.2byte	0x6de
	.byte	0x35
	.4byte	0xe1
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x3b
	.4byte	.LASF398
	.byte	0x1
	.2byte	0x6e0
	.byte	0x16
	.4byte	0xe1
	.4byte	.LLST195
	.byte	0x3b
	.4byte	.LASF399
	.byte	0x1
	.2byte	0x6e1
	.byte	0x16
	.4byte	0xe1
	.4byte	.LLST196
	.byte	0x3b
	.4byte	.LASF400
	.byte	0x1
	.2byte	0x769
	.byte	0x16
	.4byte	0xe1
	.4byte	.LLST197
	.byte	0x35
	.string	"ret"
	.byte	0x1
	.2byte	0x774
	.byte	0x11
	.4byte	0x99
	.4byte	.LLST198
	.byte	0x51
	.4byte	.Ldebug_ranges0+0x668
	.4byte	0x31f2
	.byte	0x35
	.string	"i"
	.byte	0x1
	.2byte	0x6e2
	.byte	0x1a
	.4byte	0xb3
	.4byte	.LLST200
	.byte	0
	.byte	0x51
	.4byte	.Ldebug_ranges0+0x688
	.4byte	0x326f
	.byte	0x35
	.string	"u"
	.byte	0x1
	.2byte	0x6fb
	.byte	0x16
	.4byte	0x99
	.4byte	.LLST201
	.byte	0x51
	.4byte	.Ldebug_ranges0+0x6a8
	.4byte	0x3237
	.byte	0x3b
	.4byte	.LASF401
	.byte	0x1
	.2byte	0x707
	.byte	0x19
	.4byte	0x99
	.4byte	.LLST202
	.byte	0x36
	.4byte	.LVL603
	.4byte	0x5531
	.byte	0x36
	.4byte	.LVL607
	.4byte	0x55e7
	.byte	0
	.byte	0x56
	.4byte	0x4a57
	.4byte	.LBB382
	.4byte	.LBE382-.LBB382
	.byte	0x1
	.2byte	0x6fc
	.byte	0x16
	.4byte	0x3256
	.byte	0x45
	.4byte	0x4a68
	.4byte	.LLST203
	.byte	0
	.byte	0x3d
	.4byte	.LVL606
	.4byte	0x3e7c
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x4
	.byte	0x91
	.byte	0xec,0x7c
	.byte	0x6
	.byte	0x33
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0
	.byte	0
	.byte	0x51
	.4byte	.Ldebug_ranges0+0x6c8
	.4byte	0x3288
	.byte	0x35
	.string	"u"
	.byte	0x1
	.2byte	0x70f
	.byte	0x16
	.4byte	0x99
	.4byte	.LLST204
	.byte	0
	.byte	0x51
	.4byte	.Ldebug_ranges0+0x6e0
	.4byte	0x34f2
	.byte	0x3b
	.4byte	.LASF402
	.byte	0x1
	.2byte	0x724
	.byte	0x19
	.4byte	0xb3
	.4byte	.LLST205
	.byte	0x3b
	.4byte	.LASF403
	.byte	0x1
	.2byte	0x732
	.byte	0x15
	.4byte	0x99
	.4byte	.LLST206
	.byte	0x3b
	.4byte	.LASF404
	.byte	0x1
	.2byte	0x73e
	.byte	0x1a
	.4byte	0xc9
	.4byte	.LLST207
	.byte	0x3b
	.4byte	.LASF405
	.byte	0x1
	.2byte	0x746
	.byte	0x1a
	.4byte	0xe1
	.4byte	.LLST208
	.byte	0x35
	.string	"ni"
	.byte	0x1
	.2byte	0x752
	.byte	0x1a
	.4byte	0xe1
	.4byte	.LLST209
	.byte	0x51
	.4byte	.Ldebug_ranges0+0x700
	.4byte	0x3475
	.byte	0x3b
	.4byte	.LASF406
	.byte	0x1
	.2byte	0x726
	.byte	0x1e
	.4byte	0xc9
	.4byte	.LLST210
	.byte	0x3b
	.4byte	.LASF407
	.byte	0x1
	.2byte	0x727
	.byte	0x1d
	.4byte	0xb3
	.4byte	.LLST211
	.byte	0x3c
	.4byte	.LBB403
	.4byte	.LBE403-.LBB403
	.4byte	0x339b
	.byte	0x3b
	.4byte	.LASF408
	.byte	0x1
	.2byte	0x729
	.byte	0x22
	.4byte	0xc9
	.4byte	.LLST223
	.byte	0x3b
	.4byte	.LASF409
	.byte	0x1
	.2byte	0x72a
	.byte	0x22
	.4byte	0xc9
	.4byte	.LLST224
	.byte	0x3f
	.4byte	.LVL589
	.4byte	0x4394
	.4byte	0x3359
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8b
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x3f
	.4byte	.LVL591
	.4byte	0x4394
	.4byte	0x3373
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8b
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x3d
	.4byte	.LVL593
	.4byte	0x5531
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC56
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5c
	.byte	0x4
	.byte	0x91
	.byte	0xe8,0x7c
	.byte	0x6
	.byte	0x33
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x56
	.4byte	0x435a
	.4byte	.LBB392
	.4byte	.LBE392-.LBB392
	.byte	0x1
	.2byte	0x726
	.byte	0x2a
	.4byte	0x33cc
	.byte	0x45
	.4byte	0x4379
	.4byte	.LLST212
	.byte	0x45
	.4byte	0x436c
	.4byte	.LLST213
	.byte	0x42
	.4byte	0x4386
	.4byte	.LLST214
	.byte	0
	.byte	0x40
	.4byte	0x42de
	.4byte	.LBB394
	.4byte	.Ldebug_ranges0+0x720
	.byte	0x1
	.2byte	0x727
	.byte	0x29
	.byte	0x45
	.4byte	0x4309
	.4byte	.LLST215
	.byte	0x45
	.4byte	0x42fc
	.4byte	.LLST216
	.byte	0x45
	.4byte	0x42f0
	.4byte	.LLST217
	.byte	0x41
	.4byte	.Ldebug_ranges0+0x720
	.byte	0x42
	.4byte	0x4316
	.4byte	.LLST218
	.byte	0x42
	.4byte	0x4323
	.4byte	.LLST219
	.byte	0x42
	.4byte	0x4330
	.4byte	.LLST220
	.byte	0x47
	.4byte	0x433d
	.4byte	.Ldebug_ranges0+0x740
	.4byte	0x345c
	.byte	0x42
	.4byte	0x433e
	.4byte	.LLST221
	.byte	0x58
	.4byte	0x4349
	.4byte	.LBB397
	.4byte	.LBE397-.LBB397
	.byte	0x42
	.4byte	0x434a
	.4byte	.LLST222
	.byte	0x3d
	.4byte	.LVL614
	.4byte	0x4394
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8b
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x3d
	.4byte	.LVL585
	.4byte	0x4394
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8b
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x3f
	.4byte	.LVL580
	.4byte	0x557a
	.4byte	0x3489
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8b
	.byte	0
	.byte	0
	.byte	0x3f
	.4byte	.LVL595
	.4byte	0x5525
	.4byte	0x34a3
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8b
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x3f
	.4byte	.LVL598
	.4byte	0x5531
	.4byte	0x34ba
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC57
	.byte	0
	.byte	0x3f
	.4byte	.LVL622
	.4byte	0x492d
	.4byte	0x34ce
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x3d
	.4byte	.LVL633
	.4byte	0x5531
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC58
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x4
	.byte	0x91
	.byte	0xd0,0x7c
	.byte	0x6
	.byte	0x33
	.byte	0x1
	.byte	0x5c
	.byte	0x4
	.byte	0x91
	.byte	0x88,0x7d
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x3c
	.4byte	.LBB419
	.4byte	.LBE419-.LBB419
	.4byte	0x35c6
	.byte	0x35
	.string	"u"
	.byte	0x1
	.2byte	0x775
	.byte	0x16
	.4byte	0x99
	.4byte	.LLST231
	.byte	0x41
	.4byte	.Ldebug_ranges0+0x788
	.byte	0x35
	.string	"urb"
	.byte	0x1
	.2byte	0x776
	.byte	0x22
	.4byte	0x1608
	.4byte	.LLST232
	.byte	0x3f
	.4byte	.LVL658
	.4byte	0x55b7
	.4byte	0x3538
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0
	.byte	0x3f
	.4byte	.LVL661
	.4byte	0x5531
	.4byte	0x3555
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC61
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x89
	.byte	0
	.byte	0
	.byte	0x3f
	.4byte	.LVL665
	.4byte	0x55ab
	.4byte	0x3576
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x33
	.byte	0x1
	.byte	0x5c
	.byte	0x4
	.byte	0x91
	.byte	0xa4,0x7d
	.byte	0x6
	.byte	0
	.byte	0x3f
	.4byte	.LVL666
	.4byte	0x3e0e
	.4byte	0x3598
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5e
	.byte	0x4
	.byte	0x91
	.byte	0xd0,0x7c
	.byte	0x6
	.byte	0
	.byte	0x3f
	.4byte	.LVL667
	.4byte	0x5531
	.4byte	0x35b5
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC60
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x89
	.byte	0
	.byte	0
	.byte	0x3d
	.4byte	.LVL668
	.4byte	0x4b7e
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.byte	0x3e
	.4byte	0x4af9
	.4byte	.LBB371
	.4byte	.Ldebug_ranges0+0x650
	.byte	0x1
	.2byte	0x6d8
	.byte	0x11
	.4byte	0x35f9
	.byte	0x41
	.4byte	.Ldebug_ranges0+0x650
	.byte	0x4a
	.4byte	0x4b0a
	.byte	0x36
	.4byte	.LVL344
	.4byte	0x5562
	.byte	0x36
	.4byte	.LVL345
	.4byte	0x556e
	.byte	0
	.byte	0
	.byte	0x56
	.4byte	0x4adc
	.4byte	.LBB375
	.4byte	.LBE375-.LBB375
	.byte	0x1
	.2byte	0x6dc
	.byte	0x13
	.4byte	0x362a
	.byte	0x42
	.4byte	0x4aed
	.4byte	.LLST199
	.byte	0x36
	.4byte	.LVL558
	.4byte	0x5562
	.byte	0x36
	.4byte	.LVL560
	.4byte	0x556e
	.byte	0
	.byte	0x59
	.4byte	0x4aaa
	.4byte	.LBB387
	.4byte	.LBE387-.LBB387
	.byte	0x1
	.2byte	0x70e
	.byte	0xd
	.byte	0x3e
	.4byte	0x468d
	.4byte	.LBB411
	.4byte	.Ldebug_ranges0+0x760
	.byte	0x1
	.2byte	0x76b
	.byte	0xd
	.4byte	0x36c6
	.byte	0x45
	.4byte	0x46dc
	.4byte	.LLST225
	.byte	0x45
	.4byte	0x46cf
	.4byte	.LLST197
	.byte	0x45
	.4byte	0x46c2
	.4byte	.LLST227
	.byte	0x45
	.4byte	0x46b5
	.4byte	.LLST228
	.byte	0x45
	.4byte	0x46a8
	.4byte	.LLST229
	.byte	0x45
	.4byte	0x469b
	.4byte	.LLST230
	.byte	0x3d
	.4byte	.LVL655
	.4byte	0x5531
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC29
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC59
	.byte	0x33
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5f
	.byte	0x4
	.byte	0x91
	.byte	0x90,0x7d
	.byte	0x6
	.byte	0x33
	.byte	0x1
	.byte	0x60
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x33
	.byte	0x2
	.byte	0x72
	.byte	0x4
	.byte	0x4
	.byte	0x91
	.byte	0xd0,0x7c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x3f
	.4byte	.LVL347
	.4byte	0x5531
	.4byte	0x36dd
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC49
	.byte	0
	.byte	0x3f
	.4byte	.LVL561
	.4byte	0x55db
	.4byte	0x3700
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0x33
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0
	.byte	0x3f
	.4byte	.LVL564
	.4byte	0x5531
	.4byte	0x3717
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC50
	.byte	0
	.byte	0x3f
	.4byte	.LVL565
	.4byte	0x5531
	.4byte	0x373a
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC51
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x3f
	.4byte	.LVL567
	.4byte	0x5531
	.4byte	0x3756
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC52
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x36
	.4byte	.LVL569
	.4byte	0x4b7e
	.byte	0x3f
	.4byte	.LVL576
	.4byte	0x5531
	.4byte	0x377b
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC53
	.byte	0x33
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x3f
	.4byte	.LVL634
	.4byte	0x4b7e
	.4byte	0x378e
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x3f
	.4byte	.LVL640
	.4byte	0x5501
	.4byte	0x37a5
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR9
	.byte	0
	.byte	0x36
	.4byte	.LVL641
	.4byte	0x553d
	.byte	0x36
	.4byte	.LVL648
	.4byte	0x55f3
	.byte	0x36
	.4byte	.LVL651
	.4byte	0x4a17
	.byte	0x3f
	.4byte	.LVL656
	.4byte	0x46f0
	.4byte	0x37e5
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5c
	.byte	0x4
	.byte	0x91
	.byte	0xd0,0x7c
	.byte	0x6
	.byte	0x33
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC59
	.byte	0
	.byte	0x36
	.4byte	.LVL670
	.4byte	0x4ab3
	.byte	0x3d
	.4byte	.LVL671
	.4byte	0x5531
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC62
	.byte	0
	.byte	0
	.byte	0x3c
	.4byte	.LBB426
	.4byte	.LBE426-.LBB426
	.4byte	0x38be
	.byte	0x3b
	.4byte	.LASF398
	.byte	0x1
	.2byte	0x79c
	.byte	0x16
	.4byte	0xe1
	.4byte	.LLST233
	.byte	0x3d
	.4byte	.LVL678
	.4byte	0x5531
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC63
	.byte	0x33
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x4
	.byte	0x91
	.byte	0x90,0x7d
	.byte	0x6
	.byte	0x33
	.byte	0x2
	.byte	0x72
	.byte	0x4
	.byte	0x4
	.byte	0x91
	.byte	0xac,0x7d
	.byte	0x6
	.byte	0x33
	.byte	0x2
	.byte	0x72
	.byte	0x8
	.byte	0x4
	.byte	0x91
	.byte	0xb8,0x7d
	.byte	0x6
	.byte	0x33
	.byte	0x2
	.byte	0x72
	.byte	0xc
	.byte	0x4
	.byte	0x91
	.byte	0xbc,0x7d
	.byte	0x6
	.byte	0x33
	.byte	0x2
	.byte	0x72
	.byte	0x10
	.byte	0x4
	.byte	0x91
	.byte	0xc0,0x7d
	.byte	0x6
	.byte	0x33
	.byte	0x2
	.byte	0x72
	.byte	0x34
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x33
	.byte	0x2
	.byte	0x72
	.byte	0x38
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x33
	.byte	0x2
	.byte	0x72
	.byte	0x3c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x33
	.byte	0x3
	.byte	0x72
	.byte	0xc0,0
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x33
	.byte	0x3
	.byte	0x72
	.byte	0xc4,0
	.byte	0x2
	.byte	0x71
	.byte	0
	.byte	0x33
	.byte	0x3
	.byte	0x72
	.byte	0xc8,0
	.byte	0x4
	.byte	0x91
	.byte	0xc4,0x7d
	.byte	0x6
	.byte	0x33
	.byte	0x3
	.byte	0x72
	.byte	0xdc,0
	.byte	0x4
	.byte	0x91
	.byte	0xd0,0x7d
	.byte	0x6
	.byte	0x33
	.byte	0x3
	.byte	0x72
	.byte	0xe0,0
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0x33
	.byte	0x3
	.byte	0x72
	.byte	0xe4,0
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0x33
	.byte	0x3
	.byte	0x72
	.byte	0xe8,0
	.byte	0x4
	.byte	0x91
	.byte	0xd4,0x7d
	.byte	0x6
	.byte	0x33
	.byte	0x3
	.byte	0x72
	.byte	0xec,0
	.byte	0x4
	.byte	0x91
	.byte	0xd8,0x7d
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x3e
	.4byte	0x45a7
	.4byte	.LBB273
	.4byte	.Ldebug_ranges0+0x378
	.byte	0x1
	.2byte	0x668
	.byte	0x10
	.4byte	0x38f5
	.byte	0x45
	.4byte	0x45b9
	.4byte	.LLST120
	.byte	0x41
	.4byte	.Ldebug_ranges0+0x378
	.byte	0x42
	.4byte	0x45c6
	.4byte	.LLST121
	.byte	0x42
	.4byte	0x45d3
	.4byte	.LLST122
	.byte	0
	.byte	0
	.byte	0x3e
	.4byte	0x4a35
	.4byte	.LBB365
	.4byte	.Ldebug_ranges0+0x608
	.byte	0x1
	.2byte	0x6a5
	.byte	0x1d
	.4byte	0x3923
	.byte	0x41
	.4byte	.Ldebug_ranges0+0x608
	.byte	0x42
	.4byte	0x4a46
	.4byte	.LLST193
	.byte	0x36
	.4byte	.LVL329
	.4byte	0x5600
	.byte	0
	.byte	0
	.byte	0x3f
	.4byte	.LVL268
	.4byte	0x5531
	.4byte	0x393a
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC33
	.byte	0
	.byte	0x3f
	.4byte	.LVL269
	.4byte	0x4b7e
	.4byte	0x394d
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x36
	.4byte	.LVL327
	.4byte	0x55f3
	.byte	0x3f
	.4byte	.LVL554
	.4byte	0x5531
	.4byte	0x3974
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC46
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xa
	.2byte	0xfa0
	.byte	0
	.byte	0x36
	.4byte	.LVL684
	.4byte	0x560c
	.byte	0
	.byte	0x51
	.4byte	.Ldebug_ranges0+0x7a8
	.4byte	0x39db
	.byte	0x35
	.string	"u"
	.byte	0x1
	.2byte	0x7c9
	.byte	0xe
	.4byte	0x99
	.4byte	.LLST234
	.byte	0x56
	.4byte	0x4a57
	.4byte	.LBB432
	.4byte	.LBE432-.LBB432
	.byte	0x1
	.2byte	0x7ca
	.byte	0xe
	.4byte	0x39b5
	.byte	0x45
	.4byte	0x4a68
	.4byte	.LLST235
	.byte	0
	.byte	0x3f
	.4byte	.LVL689
	.4byte	0x3e7c
	.4byte	0x39d1
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x4
	.byte	0x91
	.byte	0xec,0x7c
	.byte	0x6
	.byte	0x33
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0
	.byte	0x36
	.4byte	.LVL690
	.4byte	0x55e7
	.byte	0
	.byte	0x5a
	.4byte	0x4aaa
	.4byte	.LBB230
	.4byte	.Ldebug_ranges0+0x1c8
	.byte	0x1
	.2byte	0x59a
	.byte	0x5
	.byte	0x3e
	.4byte	0x468d
	.4byte	.LBB252
	.4byte	.Ldebug_ranges0+0x2b0
	.byte	0x1
	.2byte	0x604
	.byte	0x5
	.4byte	0x3a7b
	.byte	0x45
	.4byte	0x46dc
	.4byte	.LLST103
	.byte	0x45
	.4byte	0x46cf
	.4byte	.LLST87
	.byte	0x45
	.4byte	0x46c2
	.4byte	.LLST105
	.byte	0x45
	.4byte	0x46b5
	.4byte	.LLST106
	.byte	0x45
	.4byte	0x46a8
	.4byte	.LLST107
	.byte	0x45
	.4byte	0x469b
	.4byte	.LLST108
	.byte	0x3d
	.4byte	.LVL256
	.4byte	0x5531
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC29
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC28
	.byte	0x33
	.byte	0x1
	.byte	0x5d
	.byte	0x4
	.byte	0x91
	.byte	0xf0,0x7c
	.byte	0x6
	.byte	0x33
	.byte	0x1
	.byte	0x5e
	.byte	0x4
	.byte	0x91
	.byte	0xe0,0x7c
	.byte	0x6
	.byte	0x33
	.byte	0x1
	.byte	0x5f
	.byte	0x4
	.byte	0x91
	.byte	0xcc,0x7c
	.byte	0x6
	.byte	0x33
	.byte	0x1
	.byte	0x60
	.byte	0x2
	.byte	0x89
	.byte	0
	.byte	0x33
	.byte	0x2
	.byte	0x72
	.byte	0x4
	.byte	0x4
	.byte	0x91
	.byte	0xd0,0x7c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x59
	.4byte	0x4aaa
	.4byte	.LBB434
	.4byte	.LBE434-.LBB434
	.byte	0x1
	.2byte	0x7e7
	.byte	0x5
	.byte	0x36
	.4byte	.LVL199
	.4byte	0x5531
	.byte	0x3f
	.4byte	.LVL200
	.4byte	0x4b7e
	.4byte	0x3aa8
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x3f
	.4byte	.LVL204
	.4byte	0x492d
	.4byte	0x3abc
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0
	.byte	0x36
	.4byte	.LVL213
	.4byte	0x5556
	.byte	0x3f
	.4byte	.LVL214
	.4byte	0x5531
	.4byte	0x3ae2
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC24
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x89
	.byte	0
	.byte	0
	.byte	0x36
	.4byte	.LVL215
	.4byte	0x4a7b
	.byte	0x36
	.4byte	.LVL216
	.4byte	0x5619
	.byte	0x36
	.4byte	.LVL218
	.4byte	0x55f3
	.byte	0x36
	.4byte	.LVL234
	.4byte	0x5556
	.byte	0x3f
	.4byte	.LVL235
	.4byte	0x5531
	.4byte	0x3b23
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC66
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x89
	.byte	0
	.byte	0
	.byte	0x3f
	.4byte	.LVL250
	.4byte	0x5531
	.4byte	0x3b4e
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC27
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5d
	.byte	0x4
	.byte	0x91
	.byte	0xd0,0x7c
	.byte	0x6
	.byte	0
	.byte	0x3f
	.4byte	.LVL251
	.4byte	0x4a17
	.4byte	0x3b62
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x3f
	.4byte	.LVL257
	.4byte	0x46f0
	.4byte	0x3b87
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x89
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5c
	.byte	0x4
	.byte	0x91
	.byte	0xd0,0x7c
	.byte	0x6
	.byte	0x33
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC28
	.byte	0
	.byte	0x3f
	.4byte	.LVL264
	.4byte	0x4b7e
	.4byte	0x3b9a
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x36
	.4byte	.LVL265
	.4byte	0x4ab3
	.byte	0x3f
	.4byte	.LVL266
	.4byte	0x5531
	.4byte	0x3bba
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC32
	.byte	0
	.byte	0x3f
	.4byte	.LVL272
	.4byte	0x5501
	.4byte	0x3bd1
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR9
	.byte	0
	.byte	0x36
	.4byte	.LVL273
	.4byte	0x553d
	.byte	0x3f
	.4byte	.LVL274
	.4byte	0x50a5
	.4byte	0x3bfe
	.byte	0x52
	.4byte	0x3cb4
	.byte	0x5
	.byte	0x3
	.4byte	g_stream_urbs
	.byte	0x52
	.4byte	0x3cc1
	.byte	0x5
	.byte	0x3
	.4byte	g_stream_iso_raw_bufs
	.byte	0
	.byte	0x36
	.4byte	.LVL275
	.4byte	0x4a7b
	.byte	0x3f
	.4byte	.LVL276
	.4byte	0x4b7e
	.4byte	0x3c1a
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x3f
	.4byte	.LVL277
	.4byte	0x4b35
	.4byte	0x3c32
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x3f
	.4byte	.LVL278
	.4byte	0x5531
	.4byte	0x3c49
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC64
	.byte	0
	.byte	0x32
	.4byte	.LVL280
	.4byte	0x5625
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x2b
	.4byte	.LASF410
	.byte	0x1
	.2byte	0x53f
	.byte	0xc
	.4byte	0x99
	.byte	0x1
	.4byte	0x3ca0
	.byte	0x2e
	.string	"urb"
	.byte	0x1
	.2byte	0x53f
	.byte	0x2c
	.4byte	0x1608
	.byte	0x2c
	.4byte	.LASF411
	.byte	0x1
	.2byte	0x53f
	.byte	0x43
	.4byte	0x3ca0
	.byte	0x2c
	.4byte	.LASF412
	.byte	0x1
	.2byte	0x53f
	.byte	0x51
	.4byte	0xb3
	.byte	0x3a
	.byte	0x2d
	.string	"i"
	.byte	0x1
	.2byte	0x544
	.byte	0x12
	.4byte	0xb3
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x1608
	.byte	0x4d
	.4byte	.LASF414
	.byte	0x1
	.2byte	0x52f
	.byte	0xd
	.byte	0x1
	.4byte	0x3ce9
	.byte	0x2c
	.4byte	.LASF411
	.byte	0x1
	.2byte	0x52f
	.byte	0x36
	.4byte	0x3ca0
	.byte	0x2c
	.4byte	.LASF415
	.byte	0x1
	.2byte	0x530
	.byte	0x2e
	.4byte	0x3ce9
	.byte	0x2c
	.4byte	.LASF416
	.byte	0x1
	.2byte	0x531
	.byte	0x2c
	.4byte	0xb3
	.byte	0x3a
	.byte	0x2d
	.string	"u"
	.byte	0x1
	.2byte	0x533
	.byte	0x12
	.4byte	0xb3
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x145
	.byte	0x5b
	.4byte	.LASF570
	.byte	0x1
	.2byte	0x51c
	.byte	0x6
	.byte	0x1
	.4byte	0x3d25
	.byte	0x2e
	.string	"arg"
	.byte	0x1
	.2byte	0x51c
	.byte	0x24
	.4byte	0x2d4
	.byte	0x2c
	.4byte	.LASF417
	.byte	0x1
	.2byte	0x51c
	.byte	0x2d
	.4byte	0x99
	.byte	0x2d
	.string	"urb"
	.byte	0x1
	.2byte	0x51e
	.byte	0x16
	.4byte	0x1608
	.byte	0
	.byte	0x4d
	.4byte	.LASF418
	.byte	0x1
	.2byte	0x4c4
	.byte	0xd
	.byte	0x1
	.4byte	0x3e08
	.byte	0x2e
	.string	"urb"
	.byte	0x1
	.2byte	0x4c4
	.byte	0x34
	.4byte	0x1608
	.byte	0x2c
	.4byte	.LASF419
	.byte	0x1
	.2byte	0x4c5
	.byte	0x2b
	.4byte	0xb3
	.byte	0x2c
	.4byte	.LASF391
	.byte	0x1
	.2byte	0x4c6
	.byte	0x2b
	.4byte	0xb3
	.byte	0x2c
	.4byte	.LASF316
	.byte	0x1
	.2byte	0x4c7
	.byte	0x2c
	.4byte	0xc9
	.byte	0x39
	.4byte	.LASF420
	.byte	0x1
	.2byte	0x4d0
	.byte	0xf
	.4byte	0x108
	.byte	0x39
	.4byte	.LASF421
	.byte	0x1
	.2byte	0x4d1
	.byte	0xf
	.4byte	0x108
	.byte	0x39
	.4byte	.LASF422
	.byte	0x1
	.2byte	0x4d9
	.byte	0xe
	.4byte	0xe1
	.byte	0x39
	.4byte	.LASF423
	.byte	0x1
	.2byte	0x4e2
	.byte	0x9
	.4byte	0x2ab
	.byte	0x39
	.4byte	.LASF424
	.byte	0x1
	.2byte	0x4e3
	.byte	0x9
	.4byte	0x2ab
	.byte	0x3a
	.byte	0x2d
	.string	"i"
	.byte	0x1
	.2byte	0x4e5
	.byte	0x13
	.4byte	0xe1
	.byte	0x3a
	.byte	0x2d
	.string	"pkt"
	.byte	0x1
	.2byte	0x4e6
	.byte	0x27
	.4byte	0x3e08
	.byte	0x39
	.4byte	.LASF425
	.byte	0x1
	.2byte	0x4e7
	.byte	0x12
	.4byte	0x145
	.byte	0x39
	.4byte	.LASF426
	.byte	0x1
	.2byte	0x4e9
	.byte	0x12
	.4byte	0xe1
	.byte	0x3a
	.byte	0x39
	.4byte	.LASF427
	.byte	0x1
	.2byte	0x4fc
	.byte	0x16
	.4byte	0xe1
	.byte	0x39
	.4byte	.LASF428
	.byte	0x1
	.2byte	0x503
	.byte	0x17
	.4byte	0x108
	.byte	0x39
	.4byte	.LASF429
	.byte	0x1
	.2byte	0x504
	.byte	0x17
	.4byte	0x108
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x63b
	.byte	0x2b
	.4byte	.LASF430
	.byte	0x1
	.2byte	0x4a5
	.byte	0xc
	.4byte	0x2ab
	.byte	0x1
	.4byte	0x3e7c
	.byte	0x2e
	.string	"urb"
	.byte	0x1
	.2byte	0x4a5
	.byte	0x3c
	.4byte	0x1608
	.byte	0x2e
	.string	"buf"
	.byte	0x1
	.2byte	0x4a6
	.byte	0x35
	.4byte	0x145
	.byte	0x2c
	.4byte	.LASF316
	.byte	0x1
	.2byte	0x4a7
	.byte	0x35
	.4byte	0xc9
	.byte	0x2c
	.4byte	.LASF419
	.byte	0x1
	.2byte	0x4a8
	.byte	0x34
	.4byte	0xb3
	.byte	0x2c
	.4byte	.LASF431
	.byte	0x1
	.2byte	0x4a9
	.byte	0x35
	.4byte	0xe1
	.byte	0x39
	.4byte	.LASF432
	.byte	0x1
	.2byte	0x4b5
	.byte	0xe
	.4byte	0xe1
	.byte	0x3a
	.byte	0x2d
	.string	"i"
	.byte	0x1
	.2byte	0x4b9
	.byte	0x12
	.4byte	0xb3
	.byte	0
	.byte	0
	.byte	0x4f
	.4byte	.LASF434
	.byte	0x1
	.2byte	0x49a
	.byte	0xd
	.4byte	.LFB139
	.4byte	.LFE139-.LFB139
	.byte	0x1
	.byte	0x9c
	.4byte	0x3edb
	.byte	0x30
	.string	"urb"
	.byte	0x1
	.2byte	0x49a
	.byte	0x32
	.4byte	0x1608
	.byte	0x1
	.byte	0x5a
	.byte	0x5c
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x49b
	.byte	0x36
	.4byte	0x89b
	.byte	0x1
	.byte	0x5b
	.byte	0x30
	.string	"ep"
	.byte	0x1
	.2byte	0x49c
	.byte	0x41
	.4byte	0x8a1
	.byte	0x1
	.byte	0x5c
	.byte	0x5d
	.4byte	0x4a57
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.byte	0x1
	.2byte	0x49e
	.byte	0xa
	.byte	0x45
	.4byte	0x4a68
	.4byte	.LLST2
	.byte	0
	.byte	0
	.byte	0x4d
	.4byte	.LASF435
	.byte	0x1
	.2byte	0x487
	.byte	0xd
	.byte	0x1
	.4byte	0x3f1e
	.byte	0x2e
	.string	"urb"
	.byte	0x1
	.2byte	0x487
	.byte	0x30
	.4byte	0x1608
	.byte	0x2c
	.4byte	.LASF419
	.byte	0x1
	.2byte	0x487
	.byte	0x3d
	.4byte	0xb3
	.byte	0x39
	.4byte	.LASF422
	.byte	0x1
	.2byte	0x48e
	.byte	0xe
	.4byte	0xe1
	.byte	0x3a
	.byte	0x2d
	.string	"i"
	.byte	0x1
	.2byte	0x493
	.byte	0x13
	.4byte	0xe1
	.byte	0
	.byte	0
	.byte	0x4d
	.4byte	.LASF436
	.byte	0x1
	.2byte	0x391
	.byte	0xd
	.byte	0x1
	.4byte	0x40ae
	.byte	0x2c
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x391
	.byte	0x2d
	.4byte	0x5e6
	.byte	0x2e
	.string	"len"
	.byte	0x1
	.2byte	0x391
	.byte	0x3c
	.4byte	0xe1
	.byte	0x39
	.4byte	.LASF437
	.byte	0x1
	.2byte	0x39c
	.byte	0xd
	.4byte	0xb3
	.byte	0x39
	.4byte	.LASF438
	.byte	0x1
	.2byte	0x39d
	.byte	0xd
	.4byte	0xb3
	.byte	0x2d
	.string	"fid"
	.byte	0x1
	.2byte	0x3a6
	.byte	0xd
	.4byte	0xb3
	.byte	0x2d
	.string	"eof"
	.byte	0x1
	.2byte	0x3a7
	.byte	0xd
	.4byte	0xb3
	.byte	0x2d
	.string	"err"
	.byte	0x1
	.2byte	0x3a8
	.byte	0xd
	.4byte	0xb3
	.byte	0x39
	.4byte	.LASF439
	.byte	0x1
	.2byte	0x3ab
	.byte	0x14
	.4byte	0x5e6
	.byte	0x39
	.4byte	.LASF440
	.byte	0x1
	.2byte	0x3ac
	.byte	0xe
	.4byte	0xe1
	.byte	0x39
	.4byte	.LASF441
	.byte	0x1
	.2byte	0x3ad
	.byte	0x9
	.4byte	0x2ab
	.byte	0x39
	.4byte	.LASF442
	.byte	0x1
	.2byte	0x3af
	.byte	0x9
	.4byte	0x2ab
	.byte	0x5e
	.4byte	0x3fdb
	.byte	0x39
	.4byte	.LASF443
	.byte	0x1
	.2byte	0x3d9
	.byte	0x11
	.4byte	0xd5
	.byte	0x39
	.4byte	.LASF444
	.byte	0x1
	.2byte	0x3da
	.byte	0xd
	.4byte	0x2ab
	.byte	0
	.byte	0x5e
	.4byte	0x3fee
	.byte	0x39
	.4byte	.LASF445
	.byte	0x1
	.2byte	0x3eb
	.byte	0x11
	.4byte	0xd5
	.byte	0
	.byte	0x5e
	.4byte	0x401b
	.byte	0x39
	.4byte	.LASF443
	.byte	0x1
	.2byte	0x3ff
	.byte	0x11
	.4byte	0xd5
	.byte	0x39
	.4byte	.LASF444
	.byte	0x1
	.2byte	0x400
	.byte	0xd
	.4byte	0x2ab
	.byte	0x39
	.4byte	.LASF446
	.byte	0x1
	.2byte	0x40a
	.byte	0xd
	.4byte	0x2ab
	.byte	0
	.byte	0x5e
	.4byte	0x4084
	.byte	0x39
	.4byte	.LASF447
	.byte	0x1
	.2byte	0x42d
	.byte	0x12
	.4byte	0xe1
	.byte	0x39
	.4byte	.LASF448
	.byte	0x1
	.2byte	0x42e
	.byte	0x12
	.4byte	0xe1
	.byte	0x39
	.4byte	.LASF449
	.byte	0x1
	.2byte	0x43c
	.byte	0xd
	.4byte	0x2ab
	.byte	0x39
	.4byte	.LASF450
	.byte	0x1
	.2byte	0x43d
	.byte	0x12
	.4byte	0xe1
	.byte	0x5e
	.4byte	0x4067
	.byte	0x39
	.4byte	.LASF451
	.byte	0x1
	.2byte	0x445
	.byte	0x15
	.4byte	0xd5
	.byte	0
	.byte	0x3a
	.byte	0x39
	.4byte	.LASF452
	.byte	0x1
	.2byte	0x44d
	.byte	0x16
	.4byte	0xe1
	.byte	0x39
	.4byte	.LASF453
	.byte	0x1
	.2byte	0x44e
	.byte	0x11
	.4byte	0x2ab
	.byte	0
	.byte	0
	.byte	0x3a
	.byte	0x39
	.4byte	.LASF452
	.byte	0x1
	.2byte	0x469
	.byte	0x12
	.4byte	0xe1
	.byte	0x39
	.4byte	.LASF453
	.byte	0x1
	.2byte	0x46a
	.byte	0xd
	.4byte	0x2ab
	.byte	0x39
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x46b
	.byte	0xd
	.4byte	0x2ab
	.byte	0
	.byte	0
	.byte	0x2b
	.4byte	.LASF454
	.byte	0x1
	.2byte	0x374
	.byte	0xc
	.4byte	0x2ab
	.byte	0x1
	.4byte	0x40e8
	.byte	0x2c
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x374
	.byte	0x2d
	.4byte	0x18ff
	.byte	0x2c
	.4byte	.LASF455
	.byte	0x1
	.2byte	0x374
	.byte	0x3a
	.4byte	0x40e8
	.byte	0x39
	.4byte	.LASF456
	.byte	0x1
	.2byte	0x385
	.byte	0xe
	.4byte	0xe1
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x2ab
	.byte	0x2b
	.4byte	.LASF457
	.byte	0x1
	.2byte	0x366
	.byte	0x10
	.4byte	0xd5
	.byte	0x1
	.4byte	0x4128
	.byte	0x2e
	.string	"buf"
	.byte	0x1
	.2byte	0x366
	.byte	0x2d
	.4byte	0x5e6
	.byte	0x2e
	.string	"len"
	.byte	0x1
	.2byte	0x366
	.byte	0x3b
	.4byte	0xe1
	.byte	0x3a
	.byte	0x2d
	.string	"i"
	.byte	0x1
	.2byte	0x36c
	.byte	0x13
	.4byte	0xe1
	.byte	0
	.byte	0
	.byte	0x2b
	.4byte	.LASF458
	.byte	0x1
	.2byte	0x359
	.byte	0x10
	.4byte	0xd5
	.byte	0x1
	.4byte	0x4162
	.byte	0x2e
	.string	"buf"
	.byte	0x1
	.2byte	0x359
	.byte	0x2d
	.4byte	0x5e6
	.byte	0x2e
	.string	"len"
	.byte	0x1
	.2byte	0x359
	.byte	0x3b
	.4byte	0xe1
	.byte	0x3a
	.byte	0x2d
	.string	"i"
	.byte	0x1
	.2byte	0x35e
	.byte	0x13
	.4byte	0xe1
	.byte	0
	.byte	0
	.byte	0x4d
	.4byte	.LASF459
	.byte	0x1
	.2byte	0x31a
	.byte	0xd
	.byte	0x1
	.4byte	0x41b0
	.byte	0x2c
	.4byte	.LASF460
	.byte	0x1
	.2byte	0x31a
	.byte	0x28
	.4byte	0x2ab
	.byte	0x3a
	.byte	0x2d
	.string	"h0"
	.byte	0x1
	.2byte	0x33e
	.byte	0x15
	.4byte	0xb3
	.byte	0x2d
	.string	"h1"
	.byte	0x1
	.2byte	0x33e
	.byte	0x1d
	.4byte	0xb3
	.byte	0x2d
	.string	"t0"
	.byte	0x1
	.2byte	0x33e
	.byte	0x25
	.4byte	0xb3
	.byte	0x2d
	.string	"t1"
	.byte	0x1
	.2byte	0x33e
	.byte	0x2d
	.4byte	0xb3
	.byte	0
	.byte	0
	.byte	0x4f
	.4byte	.LASF461
	.byte	0x1
	.2byte	0x30c
	.byte	0xd
	.4byte	.LFB132
	.4byte	.LFE132-.LFB132
	.byte	0x1
	.byte	0x9c
	.4byte	0x41ec
	.byte	0x31
	.4byte	.LASF462
	.byte	0x1
	.2byte	0x30c
	.byte	0x27
	.4byte	0x2ab
	.4byte	.LLST6
	.byte	0x3d
	.4byte	.LVL22
	.4byte	0x5501
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR9
	.byte	0
	.byte	0
	.byte	0x5f
	.4byte	.LASF523
	.byte	0x1
	.2byte	0x2fd
	.byte	0xd
	.byte	0x1
	.byte	0x2b
	.4byte	.LASF463
	.byte	0x1
	.2byte	0x2d3
	.byte	0xc
	.4byte	0x2ab
	.byte	0x1
	.4byte	0x423d
	.byte	0x2c
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x2d3
	.byte	0x31
	.4byte	0x18ff
	.byte	0x39
	.4byte	.LASF464
	.byte	0x1
	.2byte	0x2de
	.byte	0xe
	.4byte	0xe1
	.byte	0x39
	.4byte	.LASF465
	.byte	0x1
	.2byte	0x2df
	.byte	0x9
	.4byte	0x2ab
	.byte	0x39
	.4byte	.LASF466
	.byte	0x1
	.2byte	0x2ee
	.byte	0xe
	.4byte	0xe1
	.byte	0
	.byte	0x2b
	.4byte	.LASF467
	.byte	0x1
	.2byte	0x255
	.byte	0xc
	.4byte	0x2ab
	.byte	0x1
	.4byte	0x42d8
	.byte	0x2e
	.string	"buf"
	.byte	0x1
	.2byte	0x255
	.byte	0x30
	.4byte	0x5e6
	.byte	0x2e
	.string	"len"
	.byte	0x1
	.2byte	0x255
	.byte	0x3e
	.4byte	0xe1
	.byte	0x2c
	.4byte	.LASF468
	.byte	0x1
	.2byte	0x256
	.byte	0x2c
	.4byte	0x42d8
	.byte	0x2c
	.4byte	.LASF469
	.byte	0x1
	.2byte	0x256
	.byte	0x3e
	.4byte	0x40e8
	.byte	0x2d
	.string	"i"
	.byte	0x1
	.2byte	0x263
	.byte	0xe
	.4byte	0xe1
	.byte	0x39
	.4byte	.LASF465
	.byte	0x1
	.2byte	0x264
	.byte	0x9
	.4byte	0x2ab
	.byte	0x5e
	.4byte	0x42bb
	.byte	0x39
	.4byte	.LASF470
	.byte	0x1
	.2byte	0x274
	.byte	0x11
	.4byte	0xb3
	.byte	0x39
	.4byte	.LASF471
	.byte	0x1
	.2byte	0x290
	.byte	0x12
	.4byte	0xc9
	.byte	0
	.byte	0x3a
	.byte	0x39
	.4byte	.LASF470
	.byte	0x1
	.2byte	0x2b4
	.byte	0x11
	.4byte	0xb3
	.byte	0x39
	.4byte	.LASF471
	.byte	0x1
	.2byte	0x2c6
	.byte	0x12
	.4byte	0xc9
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0xe1
	.byte	0x2b
	.4byte	.LASF472
	.byte	0x1
	.2byte	0x231
	.byte	0x10
	.4byte	0xb3
	.byte	0x1
	.4byte	0x435a
	.byte	0x2e
	.string	"vc"
	.byte	0x1
	.2byte	0x231
	.byte	0x3b
	.4byte	0x1226
	.byte	0x2c
	.4byte	.LASF473
	.byte	0x1
	.2byte	0x231
	.byte	0x47
	.4byte	0xb3
	.byte	0x2c
	.4byte	.LASF406
	.byte	0x1
	.2byte	0x232
	.byte	0x31
	.4byte	0xc9
	.byte	0x39
	.4byte	.LASF474
	.byte	0x1
	.2byte	0x234
	.byte	0xe
	.4byte	0xc9
	.byte	0x39
	.4byte	.LASF475
	.byte	0x1
	.2byte	0x235
	.byte	0xd
	.4byte	0xb3
	.byte	0x39
	.4byte	.LASF476
	.byte	0x1
	.2byte	0x236
	.byte	0xe
	.4byte	0xc9
	.byte	0x3a
	.byte	0x2d
	.string	"i"
	.byte	0x1
	.2byte	0x23c
	.byte	0x12
	.4byte	0xb3
	.byte	0x3a
	.byte	0x2d
	.string	"mps"
	.byte	0x1
	.2byte	0x23d
	.byte	0x12
	.4byte	0xc9
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2b
	.4byte	.LASF477
	.byte	0x1
	.2byte	0x221
	.byte	0x11
	.4byte	0xc9
	.byte	0x1
	.4byte	0x4394
	.byte	0x2c
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x221
	.byte	0x35
	.4byte	0xc9
	.byte	0x2c
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x221
	.byte	0x45
	.4byte	0xc9
	.byte	0x39
	.4byte	.LASF478
	.byte	0x1
	.2byte	0x223
	.byte	0xe
	.4byte	0xe1
	.byte	0
	.byte	0x2b
	.4byte	.LASF479
	.byte	0x1
	.2byte	0x217
	.byte	0x11
	.4byte	0xc9
	.byte	0x1
	.4byte	0x43cc
	.byte	0x2e
	.string	"vc"
	.byte	0x1
	.2byte	0x217
	.byte	0x33
	.4byte	0x1226
	.byte	0x2e
	.string	"alt"
	.byte	0x1
	.2byte	0x217
	.byte	0x3f
	.4byte	0xb3
	.byte	0x2d
	.string	"ep"
	.byte	0x1
	.2byte	0x21c
	.byte	0x25
	.4byte	0x8a1
	.byte	0
	.byte	0x2b
	.4byte	.LASF480
	.byte	0x1
	.2byte	0x1ed
	.byte	0x10
	.4byte	0xb3
	.byte	0x1
	.4byte	0x446e
	.byte	0x2e
	.string	"vc"
	.byte	0x1
	.2byte	0x1ed
	.byte	0x35
	.4byte	0x1226
	.byte	0x39
	.4byte	.LASF481
	.byte	0x1
	.2byte	0x1ef
	.byte	0xd
	.4byte	0xb3
	.byte	0x39
	.4byte	.LASF482
	.byte	0x1
	.2byte	0x1f0
	.byte	0xe
	.4byte	0xc9
	.byte	0x39
	.4byte	.LASF483
	.byte	0x1
	.2byte	0x1f1
	.byte	0xd
	.4byte	0xb3
	.byte	0x39
	.4byte	.LASF484
	.byte	0x1
	.2byte	0x1f2
	.byte	0xe
	.4byte	0xc9
	.byte	0x39
	.4byte	.LASF485
	.byte	0x1
	.2byte	0x1f3
	.byte	0xd
	.4byte	0xb3
	.byte	0x39
	.4byte	.LASF486
	.byte	0x1
	.2byte	0x1f4
	.byte	0xe
	.4byte	0xc9
	.byte	0x3a
	.byte	0x2d
	.string	"i"
	.byte	0x1
	.2byte	0x1f6
	.byte	0x12
	.4byte	0xb3
	.byte	0x3a
	.byte	0x2d
	.string	"ep"
	.byte	0x1
	.2byte	0x1f7
	.byte	0x29
	.4byte	0x8a1
	.byte	0x2d
	.string	"iso"
	.byte	0x1
	.2byte	0x1f9
	.byte	0x19
	.4byte	0x1725
	.byte	0x39
	.4byte	.LASF316
	.byte	0x1
	.2byte	0x1fa
	.byte	0x12
	.4byte	0xc9
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2b
	.4byte	.LASF487
	.byte	0x1
	.2byte	0x198
	.byte	0xc
	.4byte	0x2ab
	.byte	0x1
	.4byte	0x45a1
	.byte	0x2e
	.string	"vc"
	.byte	0x1
	.2byte	0x198
	.byte	0x36
	.4byte	0x1226
	.byte	0x2c
	.4byte	.LASF488
	.byte	0x1
	.2byte	0x199
	.byte	0x2d
	.4byte	0x145
	.byte	0x2c
	.4byte	.LASF489
	.byte	0x1
	.2byte	0x19a
	.byte	0x2d
	.4byte	0x145
	.byte	0x2c
	.4byte	.LASF490
	.byte	0x1
	.2byte	0x19b
	.byte	0x2e
	.4byte	0x45a1
	.byte	0x2c
	.4byte	.LASF491
	.byte	0x1
	.2byte	0x19b
	.byte	0x3f
	.4byte	0x45a1
	.byte	0x39
	.4byte	.LASF492
	.byte	0x1
	.2byte	0x19d
	.byte	0x9
	.4byte	0x99
	.byte	0x39
	.4byte	.LASF493
	.byte	0x1
	.2byte	0x19e
	.byte	0xd
	.4byte	0xb3
	.byte	0x39
	.4byte	.LASF494
	.byte	0x1
	.2byte	0x19f
	.byte	0xd
	.4byte	0xb3
	.byte	0x39
	.4byte	.LASF495
	.byte	0x1
	.2byte	0x1a0
	.byte	0xe
	.4byte	0xc9
	.byte	0x39
	.4byte	.LASF496
	.byte	0x1
	.2byte	0x1a0
	.byte	0x1a
	.4byte	0xc9
	.byte	0x39
	.4byte	.LASF497
	.byte	0x1
	.2byte	0x1a1
	.byte	0xd
	.4byte	0xb3
	.byte	0x39
	.4byte	.LASF498
	.byte	0x1
	.2byte	0x1a2
	.byte	0xd
	.4byte	0xb3
	.byte	0x39
	.4byte	.LASF499
	.byte	0x1
	.2byte	0x1a3
	.byte	0xd
	.4byte	0xb3
	.byte	0x3a
	.byte	0x2d
	.string	"fi"
	.byte	0x1
	.2byte	0x1b1
	.byte	0x12
	.4byte	0xb3
	.byte	0x3a
	.byte	0x39
	.4byte	.LASF500
	.byte	0x1
	.2byte	0x1b2
	.byte	0x11
	.4byte	0xb3
	.byte	0x3a
	.byte	0x2d
	.string	"fri"
	.byte	0x1
	.2byte	0x1be
	.byte	0x16
	.4byte	0xb3
	.byte	0x3a
	.byte	0x2d
	.string	"w"
	.byte	0x1
	.2byte	0x1bf
	.byte	0x16
	.4byte	0xc9
	.byte	0x2d
	.string	"h"
	.byte	0x1
	.2byte	0x1c0
	.byte	0x16
	.4byte	0xc9
	.byte	0x39
	.4byte	.LASF501
	.byte	0x1
	.2byte	0x1c5
	.byte	0x11
	.4byte	0x99
	.byte	0x3a
	.byte	0x2d
	.string	"dw"
	.byte	0x1
	.2byte	0x1ca
	.byte	0x15
	.4byte	0x99
	.byte	0x2d
	.string	"dh"
	.byte	0x1
	.2byte	0x1cb
	.byte	0x15
	.4byte	0x99
	.byte	0x39
	.4byte	.LASF502
	.byte	0x1
	.2byte	0x1cc
	.byte	0x15
	.4byte	0x99
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0xc9
	.byte	0x2b
	.4byte	.LASF503
	.byte	0x1
	.2byte	0x181
	.byte	0x13
	.4byte	0x2ab
	.byte	0x3
	.4byte	0x45e1
	.byte	0x2c
	.4byte	.LASF504
	.byte	0x1
	.2byte	0x181
	.byte	0x37
	.4byte	0x3ca0
	.byte	0x39
	.4byte	.LASF505
	.byte	0x1
	.2byte	0x183
	.byte	0xe
	.4byte	0xe1
	.byte	0x39
	.4byte	.LASF506
	.byte	0x1
	.2byte	0x184
	.byte	0xe
	.4byte	0xe1
	.byte	0
	.byte	0x2b
	.4byte	.LASF507
	.byte	0x1
	.2byte	0x174
	.byte	0x13
	.4byte	0x2ab
	.byte	0x3
	.4byte	0x461b
	.byte	0x2e
	.string	"urb"
	.byte	0x1
	.2byte	0x174
	.byte	0x3b
	.4byte	0x1608
	.byte	0x39
	.4byte	.LASF506
	.byte	0x1
	.2byte	0x176
	.byte	0xe
	.4byte	0xe1
	.byte	0x39
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x177
	.byte	0xe
	.4byte	0xe1
	.byte	0
	.byte	0x2b
	.4byte	.LASF508
	.byte	0x1
	.2byte	0x159
	.byte	0xc
	.4byte	0x2ab
	.byte	0x1
	.4byte	0x468d
	.byte	0x2c
	.4byte	.LASF391
	.byte	0x1
	.2byte	0x159
	.byte	0x28
	.4byte	0xb3
	.byte	0x2c
	.4byte	.LASF509
	.byte	0x1
	.2byte	0x159
	.byte	0x37
	.4byte	0xe1
	.byte	0x2c
	.4byte	.LASF392
	.byte	0x1
	.2byte	0x15a
	.byte	0x26
	.4byte	0x40e8
	.byte	0x2c
	.4byte	.LASF393
	.byte	0x1
	.2byte	0x15a
	.byte	0x3c
	.4byte	0x42d8
	.byte	0x39
	.4byte	.LASF505
	.byte	0x1
	.2byte	0x168
	.byte	0xe
	.4byte	0x145
	.byte	0x5e
	.4byte	0x467f
	.byte	0x2d
	.string	"i"
	.byte	0x1
	.2byte	0x160
	.byte	0x13
	.4byte	0xe1
	.byte	0
	.byte	0x3a
	.byte	0x2d
	.string	"i"
	.byte	0x1
	.2byte	0x169
	.byte	0x13
	.4byte	0xe1
	.byte	0
	.byte	0
	.byte	0x4d
	.4byte	.LASF510
	.byte	0x1
	.2byte	0x143
	.byte	0xd
	.byte	0x1
	.4byte	0x46ea
	.byte	0x2c
	.4byte	.LASF511
	.byte	0x1
	.2byte	0x143
	.byte	0x2d
	.4byte	0x2e8
	.byte	0x2c
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x144
	.byte	0x29
	.4byte	0xb3
	.byte	0x2c
	.4byte	.LASF512
	.byte	0x1
	.2byte	0x145
	.byte	0x38
	.4byte	0x46ea
	.byte	0x2c
	.4byte	.LASF513
	.byte	0x1
	.2byte	0x146
	.byte	0x29
	.4byte	0xb3
	.byte	0x2c
	.4byte	.LASF432
	.byte	0x1
	.2byte	0x147
	.byte	0x2a
	.4byte	0xe1
	.byte	0x2c
	.4byte	.LASF431
	.byte	0x1
	.2byte	0x148
	.byte	0x2a
	.4byte	0xe1
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x1732
	.byte	0x60
	.4byte	.LASF516
	.byte	0x1
	.2byte	0x124
	.byte	0xc
	.4byte	0x2ab
	.4byte	.LFB119
	.4byte	.LFE119-.LFB119
	.byte	0x1
	.byte	0x9c
	.4byte	0x4918
	.byte	0x31
	.4byte	.LASF316
	.byte	0x1
	.2byte	0x124
	.byte	0x30
	.4byte	0xc9
	.4byte	.LLST7
	.byte	0x31
	.4byte	.LASF513
	.byte	0x1
	.2byte	0x125
	.byte	0x30
	.4byte	0xb3
	.4byte	.LLST8
	.byte	0x31
	.4byte	.LASF431
	.byte	0x1
	.2byte	0x126
	.byte	0x31
	.4byte	0xe1
	.4byte	.LLST9
	.byte	0x31
	.4byte	.LASF511
	.byte	0x1
	.2byte	0x127
	.byte	0x34
	.4byte	0x2e8
	.4byte	.LLST10
	.byte	0x61
	.4byte	.LASF571
	.4byte	0x4928
	.byte	0x5
	.byte	0x3
	.4byte	__FUNCTION__.0
	.byte	0x3b
	.4byte	.LASF432
	.byte	0x1
	.2byte	0x131
	.byte	0xe
	.4byte	0xe1
	.4byte	.LLST11
	.byte	0x3b
	.4byte	.LASF514
	.byte	0x1
	.2byte	0x132
	.byte	0xe
	.4byte	0xe1
	.4byte	.LLST12
	.byte	0x3b
	.4byte	.LASF515
	.byte	0x1
	.2byte	0x134
	.byte	0x9
	.4byte	0x2ab
	.4byte	.LLST13
	.byte	0x3f
	.4byte	.LVL28
	.4byte	0x5531
	.4byte	0x47a8
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x3f
	.4byte	.LVL29
	.4byte	0x5531
	.4byte	0x47c8
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0x3f
	.4byte	.LVL30
	.4byte	0x5531
	.4byte	0x47e8
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR16
	.byte	0
	.byte	0x3f
	.4byte	.LVL31
	.4byte	0x5531
	.4byte	0x4806
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xa
	.2byte	0x12d
	.byte	0
	.byte	0x36
	.4byte	.LVL32
	.4byte	0x5531
	.byte	0x36
	.4byte	.LVL33
	.4byte	0x5632
	.byte	0x3f
	.4byte	.LVL40
	.4byte	0x5531
	.4byte	0x4836
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0x33
	.byte	0x1
	.byte	0x5f
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0x3f
	.4byte	.LVL41
	.4byte	0x5531
	.4byte	0x4856
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0x3f
	.4byte	.LVL42
	.4byte	0x5531
	.4byte	0x4876
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR16
	.byte	0
	.byte	0x3f
	.4byte	.LVL43
	.4byte	0x5531
	.4byte	0x4894
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xa
	.2byte	0x13d
	.byte	0
	.byte	0x3f
	.4byte	.LVL44
	.4byte	0x5531
	.4byte	0x48b4
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.byte	0x36
	.4byte	.LVL45
	.4byte	0x5632
	.byte	0x3f
	.4byte	.LVL46
	.4byte	0x5531
	.4byte	0x48dd
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0x3f
	.4byte	.LVL47
	.4byte	0x5531
	.4byte	0x48fd
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR16
	.byte	0
	.byte	0x3d
	.4byte	.LVL48
	.4byte	0x5531
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xa
	.2byte	0x13e
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	0x2e3
	.4byte	0x4928
	.byte	0x11
	.4byte	0xac
	.byte	0x1a
	.byte	0
	.byte	0x5
	.4byte	0x4918
	.byte	0x60
	.4byte	.LASF517
	.byte	0x1
	.2byte	0x115
	.byte	0x18
	.4byte	0x1725
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.byte	0x1
	.byte	0x9c
	.4byte	0x49c4
	.byte	0x50
	.string	"ep"
	.byte	0x1
	.2byte	0x115
	.byte	0x54
	.4byte	0x49c4
	.4byte	.LLST5
	.byte	0x57
	.4byte	.LASF512
	.byte	0x1
	.2byte	0x117
	.byte	0x15
	.4byte	0x1725
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x3e
	.4byte	0x49f7
	.4byte	.LBB24
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x11d
	.byte	0x12
	.4byte	0x4983
	.byte	0x4b
	.4byte	0x4a09
	.byte	0
	.byte	0x3e
	.4byte	0x49ca
	.4byte	.LBB28
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.2byte	0x11e
	.byte	0x1b
	.4byte	0x49a9
	.byte	0x4b
	.4byte	0x49dc
	.byte	0x41
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x4a
	.4byte	0x49e9
	.byte	0
	.byte	0
	.byte	0x3d
	.4byte	.LVL15
	.4byte	0x55ab
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x33
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x38
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x5e1
	.byte	0x2b
	.4byte	.LASF518
	.byte	0x1
	.2byte	0x10e
	.byte	0x17
	.4byte	0xb3
	.byte	0x3
	.4byte	0x49f7
	.byte	0x2c
	.4byte	.LASF314
	.byte	0x1
	.2byte	0x10e
	.byte	0x39
	.4byte	0xc9
	.byte	0x2d
	.string	"add"
	.byte	0x1
	.2byte	0x110
	.byte	0xd
	.4byte	0xb3
	.byte	0
	.byte	0x2b
	.4byte	.LASF519
	.byte	0x1
	.2byte	0x109
	.byte	0x18
	.4byte	0xc9
	.byte	0x3
	.4byte	0x4a17
	.byte	0x2c
	.4byte	.LASF314
	.byte	0x1
	.2byte	0x109
	.byte	0x31
	.4byte	0xc9
	.byte	0
	.byte	0x62
	.4byte	.LASF520
	.byte	0x1
	.byte	0xf6
	.byte	0x17
	.4byte	0xb3
	.byte	0x3
	.4byte	0x4a35
	.byte	0x63
	.4byte	.LASF419
	.byte	0x1
	.byte	0xf6
	.byte	0x34
	.4byte	0xb3
	.byte	0
	.byte	0x62
	.4byte	.LASF45
	.byte	0x1
	.byte	0xf0
	.byte	0x13
	.4byte	0x2ab
	.byte	0x3
	.4byte	0x4a51
	.byte	0x64
	.string	"c"
	.byte	0x1
	.byte	0xf2
	.byte	0x1c
	.4byte	0x4a51
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x2c3
	.byte	0x62
	.4byte	.LASF521
	.byte	0x1
	.byte	0xeb
	.byte	0x13
	.4byte	0x2ab
	.byte	0x3
	.4byte	0x4a75
	.byte	0x65
	.string	"urb"
	.byte	0x1
	.byte	0xeb
	.byte	0x3a
	.4byte	0x4a75
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x774
	.byte	0x66
	.4byte	.LASF522
	.byte	0x1
	.byte	0xe1
	.byte	0x14
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.byte	0x1
	.byte	0x9c
	.4byte	0x4aaa
	.byte	0x67
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.byte	0x68
	.string	"i"
	.byte	0x1
	.byte	0xe3
	.byte	0x12
	.4byte	0xb3
	.4byte	.LLST1
	.byte	0
	.byte	0
	.byte	0x69
	.4byte	.LASF524
	.byte	0x1
	.byte	0xdb
	.byte	0x14
	.byte	0x3
	.byte	0x66
	.4byte	.LASF525
	.byte	0x1
	.byte	0xd0
	.byte	0xd
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.byte	0x1
	.byte	0x9c
	.4byte	0x4adc
	.byte	0x36
	.4byte	.LVL11
	.4byte	0x5562
	.byte	0x44
	.4byte	.LVL12
	.4byte	0x556e
	.byte	0
	.byte	0x62
	.4byte	.LASF526
	.byte	0x1
	.byte	0xc3
	.byte	0xc
	.4byte	0x2ab
	.byte	0x1
	.4byte	0x4af9
	.byte	0x64
	.string	"ok"
	.byte	0x1
	.byte	0xc5
	.byte	0x9
	.4byte	0x2ab
	.byte	0
	.byte	0x62
	.4byte	.LASF527
	.byte	0x1
	.byte	0xba
	.byte	0xc
	.4byte	0x2ab
	.byte	0x1
	.4byte	0x4b17
	.byte	0x6a
	.4byte	.LASF528
	.byte	0x1
	.byte	0xbc
	.byte	0x9
	.4byte	0x2ab
	.byte	0
	.byte	0x62
	.4byte	.LASF529
	.byte	0x1
	.byte	0xb1
	.byte	0x1d
	.4byte	0x1bc
	.byte	0x1
	.4byte	0x4b35
	.byte	0x6a
	.4byte	.LASF530
	.byte	0x1
	.byte	0xb3
	.byte	0x1a
	.4byte	0x1bc
	.byte	0
	.byte	0x66
	.4byte	.LASF531
	.byte	0x1
	.byte	0xa9
	.byte	0xd
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
	.byte	0x1
	.byte	0x9c
	.4byte	0x4b7e
	.byte	0x6b
	.4byte	.LASF530
	.byte	0x1
	.byte	0xa9
	.byte	0x33
	.4byte	0x1bc
	.4byte	.LLST3
	.byte	0x6b
	.4byte	.LASF336
	.byte	0x1
	.byte	0xa9
	.byte	0x43
	.4byte	0xe1
	.4byte	.LLST4
	.byte	0x36
	.4byte	.LVL8
	.4byte	0x5562
	.byte	0x44
	.4byte	.LVL10
	.4byte	0x556e
	.byte	0
	.byte	0x6c
	.4byte	.LASF572
	.byte	0x1
	.byte	0xa1
	.byte	0xd
	.4byte	.LFB105
	.4byte	.LFE105-.LFB105
	.byte	0x1
	.byte	0x9c
	.4byte	0x4ba5
	.byte	0x6b
	.4byte	.LASF532
	.byte	0x1
	.byte	0xa1
	.byte	0x2a
	.4byte	0x17e
	.4byte	.LLST0
	.byte	0
	.byte	0x62
	.4byte	.LASF533
	.byte	0x2
	.byte	0x16
	.byte	0x15
	.4byte	0x2d4
	.byte	0x3
	.4byte	0x4c03
	.byte	0x65
	.string	"s1"
	.byte	0x2
	.byte	0x16
	.byte	0x26
	.4byte	0x2d4
	.byte	0x65
	.string	"s2"
	.byte	0x2
	.byte	0x16
	.byte	0x36
	.4byte	0x33e
	.byte	0x65
	.string	"n"
	.byte	0x2
	.byte	0x16
	.byte	0x41
	.4byte	0x2c8
	.byte	0x64
	.string	"b1"
	.byte	0x2
	.byte	0x18
	.byte	0xb
	.4byte	0x2d6
	.byte	0x64
	.string	"b2"
	.byte	0x2
	.byte	0x19
	.byte	0x11
	.4byte	0x2e8
	.byte	0x64
	.string	"w1"
	.byte	0x2
	.byte	0x1a
	.byte	0xf
	.4byte	0x42d8
	.byte	0x64
	.string	"w2"
	.byte	0x2
	.byte	0x1b
	.byte	0x15
	.4byte	0x4c03
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0xf2
	.byte	0x6d
	.4byte	.LASF534
	.byte	0x2
	.byte	0xe
	.byte	0x14
	.byte	0x3
	.4byte	0x4c2d
	.byte	0x63
	.4byte	.LASF535
	.byte	0x2
	.byte	0xe
	.byte	0x26
	.4byte	0x2d6
	.byte	0x65
	.string	"w"
	.byte	0x2
	.byte	0xe
	.byte	0x35
	.4byte	0xe1
	.byte	0
	.byte	0x6e
	.4byte	0x4a17
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.byte	0x1
	.byte	0x9c
	.4byte	0x4c64
	.byte	0x45
	.4byte	0x4a28
	.4byte	.LLST14
	.byte	0x6f
	.4byte	0x4a17
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.byte	0x1
	.byte	0xf6
	.byte	0x17
	.byte	0x45
	.4byte	0x4a28
	.4byte	.LLST15
	.byte	0
	.byte	0
	.byte	0x6e
	.4byte	0x41ec
	.4byte	.LFB131
	.4byte	.LFE131-.LFB131
	.byte	0x1
	.byte	0x9c
	.4byte	0x4c89
	.byte	0x59
	.4byte	0x41ec
	.4byte	.LBB38
	.4byte	.LBE38-.LBB38
	.byte	0x1
	.2byte	0x2fd
	.byte	0xd
	.byte	0
	.byte	0x6e
	.4byte	0x4128
	.4byte	.LFB134
	.4byte	.LFE134-.LFB134
	.byte	0x1
	.byte	0x9c
	.4byte	0x4cdc
	.byte	0x45
	.4byte	0x413a
	.4byte	.LLST16
	.byte	0x70
	.4byte	0x4147
	.byte	0x1
	.byte	0x5b
	.byte	0x40
	.4byte	0x4128
	.4byte	.LBB44
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.2byte	0x359
	.byte	0x10
	.byte	0x4b
	.4byte	0x4147
	.byte	0x4b
	.4byte	0x413a
	.byte	0x48
	.4byte	0x4154
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x42
	.4byte	0x4155
	.4byte	.LLST17
	.byte	0
	.byte	0
	.byte	0
	.byte	0x6e
	.4byte	0x40ee
	.4byte	.LFB135
	.4byte	.LFE135-.LFB135
	.byte	0x1
	.byte	0x9c
	.4byte	0x4d2f
	.byte	0x45
	.4byte	0x4100
	.4byte	.LLST18
	.byte	0x70
	.4byte	0x410d
	.byte	0x1
	.byte	0x5b
	.byte	0x40
	.4byte	0x40ee
	.4byte	.LBB52
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.2byte	0x366
	.byte	0x10
	.byte	0x4b
	.4byte	0x410d
	.byte	0x4b
	.4byte	0x4100
	.byte	0x48
	.4byte	0x411a
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x42
	.4byte	0x411b
	.4byte	.LLST19
	.byte	0
	.byte	0
	.byte	0
	.byte	0x6e
	.4byte	0x3edb
	.4byte	.LFB138
	.4byte	.LFE138-.LFB138
	.byte	0x1
	.byte	0x9c
	.4byte	0x4dad
	.byte	0x45
	.4byte	0x3ee9
	.4byte	.LLST20
	.byte	0x45
	.4byte	0x3ef6
	.4byte	.LLST21
	.byte	0x4a
	.4byte	0x3f03
	.byte	0x40
	.4byte	0x3edb
	.4byte	.LBB59
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x1
	.2byte	0x487
	.byte	0xd
	.byte	0x45
	.4byte	0x3ef6
	.4byte	.LLST22
	.byte	0x45
	.4byte	0x3ee9
	.4byte	.LLST23
	.byte	0x41
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x42
	.4byte	0x3f03
	.4byte	.LLST24
	.byte	0x47
	.4byte	0x3f10
	.4byte	.Ldebug_ranges0+0x88
	.4byte	0x4da1
	.byte	0x42
	.4byte	0x3f11
	.4byte	.LLST25
	.byte	0
	.byte	0x36
	.4byte	.LVL72
	.4byte	0x4a17
	.byte	0
	.byte	0
	.byte	0
	.byte	0x6e
	.4byte	0x3cef
	.4byte	.LFB142
	.4byte	.LFE142-.LFB142
	.byte	0x1
	.byte	0x9c
	.4byte	0x4e49
	.byte	0x45
	.4byte	0x3cfd
	.4byte	.LLST26
	.byte	0x45
	.4byte	0x3d0a
	.4byte	.LLST27
	.byte	0x42
	.4byte	0x3d17
	.4byte	.LLST28
	.byte	0x3e
	.4byte	0x45e1
	.4byte	.LBB73
	.4byte	.Ldebug_ranges0+0xa0
	.byte	0x1
	.2byte	0x525
	.byte	0x9
	.4byte	0x4e12
	.byte	0x45
	.4byte	0x45f3
	.4byte	.LLST29
	.byte	0x41
	.4byte	.Ldebug_ranges0+0xa0
	.byte	0x42
	.4byte	0x4600
	.4byte	.LLST30
	.byte	0x42
	.4byte	0x460d
	.4byte	.LLST31
	.byte	0
	.byte	0
	.byte	0x5d
	.4byte	0x3cef
	.4byte	.LBB76
	.4byte	.LBE76-.LBB76
	.byte	0x1
	.2byte	0x51c
	.byte	0x6
	.byte	0x45
	.4byte	0x3d0a
	.4byte	.LLST32
	.byte	0x4b
	.4byte	0x3cfd
	.byte	0x4a
	.4byte	0x3d17
	.byte	0x32
	.4byte	.LVL87
	.4byte	0x3edb
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0
	.byte	0x6e
	.4byte	0x1847
	.4byte	.LFB166
	.4byte	.LFE166-.LFB166
	.byte	0x1
	.byte	0x9c
	.4byte	0x4f27
	.byte	0x45
	.4byte	0x1859
	.4byte	.LLST33
	.byte	0x45
	.4byte	0x1866
	.4byte	.LLST34
	.byte	0x42
	.4byte	0x1873
	.4byte	.LLST35
	.byte	0x56
	.4byte	0x1847
	.4byte	.LBB83
	.4byte	.LBE83-.LBB83
	.byte	0x1
	.2byte	0x97e
	.byte	0xc
	.4byte	0x4f13
	.byte	0x45
	.4byte	0x1859
	.4byte	.LLST36
	.byte	0x45
	.4byte	0x1866
	.4byte	.LLST37
	.byte	0x4a
	.4byte	0x1873
	.byte	0x3f
	.4byte	.LVL96
	.4byte	0x5531
	.4byte	0x4eba
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.byte	0x3f
	.4byte	.LVL97
	.4byte	0x5531
	.4byte	0x4ed1
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.byte	0x3f
	.4byte	.LVL98
	.4byte	0x5531
	.4byte	0x4ee8
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.byte	0x3f
	.4byte	.LVL99
	.4byte	0x5531
	.4byte	0x4eff
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.byte	0x3d
	.4byte	.LVL100
	.4byte	0x5531
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0
	.byte	0
	.byte	0x3d
	.4byte	.LVL93
	.4byte	0x5531
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.byte	0
	.byte	0x6e
	.4byte	0x4394
	.4byte	.LFB126
	.4byte	.LFE126-.LFB126
	.byte	0x1
	.byte	0x9c
	.4byte	0x4f8e
	.byte	0x45
	.4byte	0x43a6
	.4byte	.LLST38
	.byte	0x45
	.4byte	0x43b2
	.4byte	.LLST39
	.byte	0x4a
	.4byte	0x43bf
	.byte	0x40
	.4byte	0x4394
	.4byte	.LBB87
	.4byte	.Ldebug_ranges0+0xb8
	.byte	0x1
	.2byte	0x217
	.byte	0x11
	.byte	0x45
	.4byte	0x43b2
	.4byte	.LLST40
	.byte	0x45
	.4byte	0x43a6
	.4byte	.LLST41
	.byte	0x41
	.4byte	.Ldebug_ranges0+0xb8
	.byte	0x42
	.4byte	0x43bf
	.4byte	.LLST42
	.byte	0x36
	.4byte	.LVL108
	.4byte	0x492d
	.byte	0
	.byte	0
	.byte	0
	.byte	0x6e
	.4byte	0x22ce
	.4byte	.LFB147
	.4byte	.LFE147-.LFB147
	.byte	0x1
	.byte	0x9c
	.4byte	0x4fd7
	.byte	0x40
	.4byte	0x22ce
	.4byte	.LBB96
	.4byte	.Ldebug_ranges0+0xd8
	.byte	0x1
	.2byte	0x81c
	.byte	0xd
	.byte	0x48
	.4byte	0x22dc
	.4byte	.Ldebug_ranges0+0xd8
	.byte	0x42
	.4byte	0x22dd
	.4byte	.LLST43
	.byte	0x3d
	.4byte	.LVL116
	.4byte	0x560c
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x6e
	.4byte	0x3e0e
	.4byte	.LFB140
	.4byte	.LFE140-.LFB140
	.byte	0x1
	.byte	0x9c
	.4byte	0x50a5
	.byte	0x45
	.4byte	0x3e20
	.4byte	.LLST44
	.byte	0x45
	.4byte	0x3e2d
	.4byte	.LLST45
	.byte	0x45
	.4byte	0x3e3a
	.4byte	.LLST46
	.byte	0x45
	.4byte	0x3e47
	.4byte	.LLST47
	.byte	0x45
	.4byte	0x3e54
	.4byte	.LLST48
	.byte	0x4a
	.4byte	0x3e61
	.byte	0x5d
	.4byte	0x3e0e
	.4byte	.LBB103
	.4byte	.LBE103-.LBB103
	.byte	0x1
	.2byte	0x4a5
	.byte	0xc
	.byte	0x45
	.4byte	0x3e54
	.4byte	.LLST49
	.byte	0x45
	.4byte	0x3e47
	.4byte	.LLST50
	.byte	0x70
	.4byte	0x3e3a
	.byte	0x1
	.byte	0x62
	.byte	0x70
	.4byte	0x3e2d
	.byte	0x1
	.byte	0x59
	.byte	0x70
	.4byte	0x3e20
	.byte	0x1
	.byte	0x58
	.byte	0x42
	.4byte	0x3e61
	.4byte	.LLST51
	.byte	0x47
	.4byte	0x3e6e
	.4byte	.Ldebug_ranges0+0xf0
	.4byte	0x5074
	.byte	0x42
	.4byte	0x3e6f
	.4byte	.LLST52
	.byte	0
	.byte	0x36
	.4byte	.LVL127
	.4byte	0x4a17
	.byte	0x3d
	.4byte	.LVL130
	.4byte	0x46f0
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0x5c
	.byte	0x6
	.byte	0x33
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.byte	0
	.byte	0
	.byte	0x6e
	.4byte	0x3ca6
	.4byte	.LFB190
	.4byte	.LFE190-.LFB190
	.byte	0x1
	.byte	0x9c
	.4byte	0x50ff
	.byte	0x45
	.4byte	0x3cce
	.4byte	.LLST53
	.byte	0x70
	.4byte	0x3cc1
	.byte	0x6
	.byte	0x3
	.4byte	g_stream_iso_raw_bufs
	.byte	0x9f
	.byte	0x70
	.4byte	0x3cb4
	.byte	0x6
	.byte	0x3
	.4byte	g_stream_urbs
	.byte	0x9f
	.byte	0x48
	.4byte	0x3cdb
	.4byte	.Ldebug_ranges0+0x108
	.byte	0x42
	.4byte	0x3cdc
	.4byte	.LLST54
	.byte	0x36
	.4byte	.LVL141
	.4byte	0x563e
	.byte	0x36
	.4byte	.LVL142
	.4byte	0x563e
	.byte	0
	.byte	0
	.byte	0x6e
	.4byte	0x423d
	.4byte	.LFB187
	.4byte	.LFE187-.LFB187
	.byte	0x1
	.byte	0x9c
	.4byte	0x51b7
	.byte	0x45
	.4byte	0x424f
	.4byte	.LLST55
	.byte	0x70
	.4byte	0x425c
	.byte	0x1
	.byte	0x5b
	.byte	0x70
	.4byte	0x4269
	.byte	0x1
	.byte	0x5c
	.byte	0x45
	.4byte	0x4276
	.4byte	.LLST56
	.byte	0x4a
	.4byte	0x4283
	.byte	0x4a
	.4byte	0x428e
	.byte	0x40
	.4byte	0x423d
	.4byte	.LBB114
	.4byte	.Ldebug_ranges0+0x128
	.byte	0x1
	.2byte	0x255
	.byte	0xc
	.byte	0x4b
	.4byte	0x4276
	.byte	0x4b
	.4byte	0x4269
	.byte	0x4b
	.4byte	0x425c
	.byte	0x4b
	.4byte	0x424f
	.byte	0x41
	.4byte	.Ldebug_ranges0+0x128
	.byte	0x42
	.4byte	0x4283
	.4byte	.LLST57
	.byte	0x42
	.4byte	0x428e
	.4byte	.LLST58
	.byte	0x47
	.4byte	0x429b
	.4byte	.Ldebug_ranges0+0x140
	.4byte	0x5198
	.byte	0x42
	.4byte	0x42a0
	.4byte	.LLST59
	.byte	0x42
	.4byte	0x42ad
	.4byte	.LLST60
	.byte	0
	.byte	0x48
	.4byte	0x42bb
	.4byte	.Ldebug_ranges0+0x158
	.byte	0x42
	.4byte	0x42bc
	.4byte	.LLST61
	.byte	0x42
	.4byte	0x42c9
	.4byte	.LLST62
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x6e
	.4byte	0x4162
	.4byte	.LFB133
	.4byte	.LFE133-.LFB133
	.byte	0x1
	.byte	0x9c
	.4byte	0x52b7
	.byte	0x45
	.4byte	0x4170
	.4byte	.LLST63
	.byte	0x40
	.4byte	0x4162
	.4byte	.LBB128
	.4byte	.Ldebug_ranges0+0x178
	.byte	0x1
	.2byte	0x31a
	.byte	0xd
	.byte	0x45
	.4byte	0x4170
	.4byte	.LLST64
	.byte	0x3e
	.4byte	0x41f6
	.4byte	.LBB130
	.4byte	.Ldebug_ranges0+0x198
	.byte	0x1
	.2byte	0x339
	.byte	0xa
	.4byte	0x5241
	.byte	0x45
	.4byte	0x4208
	.4byte	.LLST65
	.byte	0x41
	.4byte	.Ldebug_ranges0+0x198
	.byte	0x49
	.4byte	0x4215
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x49
	.4byte	0x4222
	.byte	0x2
	.byte	0x91
	.byte	0x5b
	.byte	0x42
	.4byte	0x422f
	.4byte	.LLST66
	.byte	0x3d
	.4byte	.LVL182
	.4byte	0x50ff
	.byte	0x33
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x33
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x91
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0
	.byte	0x47
	.4byte	0x417d
	.4byte	.Ldebug_ranges0+0x1b0
	.4byte	0x5286
	.byte	0x42
	.4byte	0x417e
	.4byte	.LLST67
	.byte	0x42
	.4byte	0x418a
	.4byte	.LLST68
	.byte	0x42
	.4byte	0x4196
	.4byte	.LLST69
	.byte	0x42
	.4byte	0x41a2
	.4byte	.LLST70
	.byte	0x3d
	.4byte	.LVL189
	.4byte	0x5531
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0
	.byte	0
	.byte	0x4c
	.4byte	.LVL179
	.4byte	0x41b0
	.4byte	0x5299
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x36
	.4byte	.LVL193
	.4byte	0x55f3
	.byte	0x3d
	.4byte	.LVL194
	.4byte	0x564a
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR9
	.byte	0
	.byte	0
	.byte	0
	.byte	0x6e
	.4byte	0x1a24
	.4byte	.LFB158
	.4byte	.LFE158-.LFB158
	.byte	0x1
	.byte	0x9c
	.4byte	0x53d7
	.byte	0x45
	.4byte	0x1a36
	.4byte	.LLST282
	.byte	0x42
	.4byte	0x1a43
	.4byte	.LLST283
	.byte	0x4a
	.4byte	0x1a50
	.byte	0x3e
	.4byte	0x1a24
	.4byte	.LBB504
	.4byte	.Ldebug_ranges0+0x920
	.byte	0x1
	.2byte	0x919
	.byte	0x5
	.4byte	0x5394
	.byte	0x4b
	.4byte	0x1a36
	.byte	0x41
	.4byte	.Ldebug_ranges0+0x920
	.byte	0x4a
	.4byte	0x1a43
	.byte	0x4a
	.4byte	0x1a50
	.byte	0x55
	.4byte	0x1a5d
	.4byte	.LBB506
	.4byte	.LBE506-.LBB506
	.4byte	0x5359
	.byte	0x42
	.4byte	0x1a5e
	.4byte	.LLST284
	.byte	0x36
	.4byte	.LVL848
	.4byte	0x557a
	.byte	0x3f
	.4byte	.LVL851
	.4byte	0x5531
	.4byte	0x5344
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC89
	.byte	0
	.byte	0x3d
	.4byte	.LVL852
	.4byte	0x4b35
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x36
	.4byte	.LVL845
	.4byte	0x556e
	.byte	0x36
	.4byte	.LVL846
	.4byte	0x22ce
	.byte	0x3f
	.4byte	.LVL855
	.4byte	0x4b7e
	.4byte	0x537e
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x3d
	.4byte	.LVL856
	.4byte	0x4b35
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.byte	0x36
	.4byte	.LVL838
	.4byte	0x5562
	.byte	0x36
	.4byte	.LVL840
	.4byte	0x556e
	.byte	0x36
	.4byte	.LVL842
	.4byte	0x556e
	.byte	0x3d
	.4byte	.LVL843
	.4byte	0x5531
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC88
	.byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x33
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0x68
	.byte	0x6
	.byte	0x33
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x6e
	.4byte	0x180d
	.4byte	.LFB167
	.4byte	.LFE167-.LFB167
	.byte	0x1
	.byte	0x9c
	.4byte	0x5467
	.byte	0x45
	.4byte	0x181f
	.4byte	.LLST285
	.byte	0x45
	.4byte	0x182c
	.4byte	.LLST286
	.byte	0x42
	.4byte	0x1839
	.4byte	.LLST287
	.byte	0x3e
	.4byte	0x180d
	.4byte	.LBB515
	.4byte	.Ldebug_ranges0+0x940
	.byte	0x1
	.2byte	0x995
	.byte	0xc
	.4byte	0x544b
	.byte	0x45
	.4byte	0x181f
	.4byte	.LLST288
	.byte	0x45
	.4byte	0x182c
	.4byte	.LLST289
	.byte	0x41
	.4byte	.Ldebug_ranges0+0x940
	.byte	0x4a
	.4byte	0x1839
	.byte	0x3d
	.4byte	.LVL874
	.4byte	0x5531
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC92
	.byte	0
	.byte	0
	.byte	0
	.byte	0x36
	.4byte	.LVL864
	.4byte	0x5531
	.byte	0x36
	.4byte	.LVL868
	.4byte	0x5531
	.byte	0x36
	.4byte	.LVL878
	.4byte	0x19e7
	.byte	0
	.byte	0x6e
	.4byte	0x17d3
	.4byte	.LFB168
	.4byte	.LFE168-.LFB168
	.byte	0x1
	.byte	0x9c
	.4byte	0x5501
	.byte	0x45
	.4byte	0x17e5
	.4byte	.LLST291
	.byte	0x45
	.4byte	0x17f2
	.4byte	.LLST292
	.byte	0x42
	.4byte	0x17ff
	.4byte	.LLST293
	.byte	0x3e
	.4byte	0x17d3
	.4byte	.LBB525
	.4byte	.Ldebug_ranges0+0x960
	.byte	0x1
	.2byte	0x9b4
	.byte	0xc
	.4byte	0x54db
	.byte	0x45
	.4byte	0x17e5
	.4byte	.LLST294
	.byte	0x45
	.4byte	0x17f2
	.4byte	.LLST295
	.byte	0x41
	.4byte	.Ldebug_ranges0+0x960
	.byte	0x4a
	.4byte	0x17ff
	.byte	0x3d
	.4byte	.LVL893
	.4byte	0x5531
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC95
	.byte	0
	.byte	0
	.byte	0
	.byte	0x36
	.4byte	.LVL887
	.4byte	0x5531
	.byte	0x36
	.4byte	.LVL897
	.4byte	0x19b1
	.byte	0x3d
	.4byte	.LVL901
	.4byte	0x5531
	.byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC97
	.byte	0
	.byte	0
	.byte	0x71
	.4byte	.LASF536
	.4byte	.LASF536
	.byte	0x5
	.byte	0x2d
	.byte	0x6
	.byte	0x71
	.4byte	.LASF537
	.4byte	.LASF537
	.byte	0x5
	.byte	0x43
	.byte	0x5
	.byte	0x71
	.4byte	.LASF538
	.4byte	.LASF538
	.byte	0x5
	.byte	0x3a
	.byte	0x5
	.byte	0x71
	.4byte	.LASF539
	.4byte	.LASF539
	.byte	0x12
	.byte	0x4b
	.byte	0x5
	.byte	0x71
	.4byte	.LASF540
	.4byte	.LASF540
	.byte	0x15
	.byte	0xc8
	.byte	0x5
	.byte	0x71
	.4byte	.LASF541
	.4byte	.LASF541
	.byte	0x5
	.byte	0x49
	.byte	0x6
	.byte	0x72
	.4byte	.LASF542
	.4byte	.LASF542
	.byte	0xa
	.2byte	0x168
	.byte	0x10
	.byte	0x71
	.4byte	.LASF543
	.4byte	.LASF543
	.byte	0x16
	.byte	0xa5
	.byte	0xa
	.byte	0x71
	.4byte	.LASF544
	.4byte	.LASF544
	.byte	0x9
	.byte	0x7d
	.byte	0xd
	.byte	0x71
	.4byte	.LASF545
	.4byte	.LASF545
	.byte	0x9
	.byte	0x7e
	.byte	0xd
	.byte	0x71
	.4byte	.LASF546
	.4byte	.LASF546
	.byte	0x12
	.byte	0x50
	.byte	0x5
	.byte	0x71
	.4byte	.LASF547
	.4byte	.LASF547
	.byte	0x13
	.byte	0x7b
	.byte	0x19
	.byte	0x72
	.4byte	.LASF548
	.4byte	.LASF548
	.byte	0xe
	.2byte	0x114
	.byte	0x5
	.byte	0x71
	.4byte	.LASF549
	.4byte	.LASF549
	.byte	0x17
	.byte	0xb1
	.byte	0x8
	.byte	0x71
	.4byte	.LASF550
	.4byte	.LASF550
	.byte	0x18
	.byte	0x21
	.byte	0x8
	.byte	0x71
	.4byte	.LASF551
	.4byte	.LASF551
	.byte	0xd
	.byte	0x63
	.byte	0x5
	.byte	0x71
	.4byte	.LASF552
	.4byte	.LASF552
	.byte	0x5
	.byte	0x27
	.byte	0x5
	.byte	0x71
	.4byte	.LASF553
	.4byte	.LASF553
	.byte	0x5
	.byte	0x4f
	.byte	0x5
	.byte	0x71
	.4byte	.LASF554
	.4byte	.LASF554
	.byte	0x5
	.byte	0x55
	.byte	0x6
	.byte	0x71
	.4byte	.LASF555
	.4byte	.LASF555
	.byte	0xd
	.byte	0x6d
	.byte	0x5
	.byte	0x72
	.4byte	.LASF556
	.4byte	.LASF556
	.byte	0xa
	.2byte	0x5a8
	.byte	0xc
	.byte	0x71
	.4byte	.LASF557
	.4byte	.LASF557
	.byte	0x7
	.byte	0x12
	.byte	0x18
	.byte	0x72
	.4byte	.LASF558
	.4byte	.LASF558
	.byte	0xa
	.2byte	0x31f
	.byte	0x6
	.byte	0x71
	.4byte	.LASF559
	.4byte	.LASF559
	.byte	0x5
	.byte	0x1f
	.byte	0x5
	.byte	0x72
	.4byte	.LASF560
	.4byte	.LASF560
	.byte	0xa
	.2byte	0x2e9
	.byte	0x6
	.byte	0x71
	.4byte	.LASF561
	.4byte	.LASF561
	.byte	0x19
	.byte	0x64
	.byte	0x6
	.byte	0x71
	.4byte	.LASF562
	.4byte	.LASF562
	.byte	0x17
	.byte	0xb4
	.byte	0x6
	.byte	0x71
	.4byte	.LASF563
	.4byte	.LASF563
	.byte	0x5
	.byte	0x34
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
	.byte	0x29
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
	.byte	0x2a
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
	.byte	0x2b
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
	.byte	0x2c
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
	.byte	0x2d
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
	.byte	0
	.byte	0
	.byte	0x2f
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x31
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
	.byte	0x32
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
	.byte	0x33
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x34
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
	.byte	0x35
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
	.byte	0x36
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x38
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
	.byte	0
	.byte	0
	.byte	0x3a
	.byte	0xb
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x3b
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
	.byte	0x3c
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
	.byte	0x3d
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x3e
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
	.byte	0x3f
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
	.byte	0x40
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
	.byte	0x41
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x42
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x43
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
	.byte	0x44
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
	.byte	0x45
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x46
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x47
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
	.byte	0x48
	.byte	0xb
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x49
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x4a
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x4b
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x4c
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
	.byte	0x4d
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
	.byte	0x4e
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
	.byte	0x49
	.byte	0x13
	.byte	0x20
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x4f
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
	.byte	0x50
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
	.byte	0x51
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x52
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x53
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
	.byte	0x54
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
	.byte	0x55
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
	.byte	0x56
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
	.byte	0x57
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
	.byte	0x58
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
	.byte	0x59
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
	.byte	0x5a
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
	.byte	0x5b
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
	.byte	0x5c
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
	.byte	0x5
	.byte	0x57
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x5e
	.byte	0xb
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x5f
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
	.byte	0x60
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
	.byte	0x61
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x49
	.byte	0x13
	.byte	0x34
	.byte	0x19
	.byte	0x2
	.byte	0x18
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
	.byte	0x49
	.byte	0x13
	.byte	0x20
	.byte	0xb
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
	.byte	0
	.byte	0
	.byte	0x64
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
	.byte	0x65
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
	.byte	0x66
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
	.byte	0x67
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x68
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
	.byte	0x69
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
	.byte	0x6a
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
	.byte	0x6b
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
	.byte	0x6c
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
	.byte	0x6d
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
	.byte	0x6e
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
	.byte	0x6f
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
	.byte	0x70
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x71
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
	.byte	0x72
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
.LLST300:
	.4byte	.LVL906
	.4byte	.LVL907-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL907-1
	.4byte	.LFE163
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST298:
	.4byte	.LVL904
	.4byte	.LVL905-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL905-1
	.4byte	.LFE162
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST299:
	.4byte	.LVL904
	.4byte	.LVL905-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL905-1
	.4byte	.LFE162
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST296:
	.4byte	.LVL902
	.4byte	.LVL903-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL903-1
	.4byte	.LFE161
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST297:
	.4byte	.LVL902
	.4byte	.LVL903-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL903-1
	.4byte	.LFE161
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST290:
	.4byte	.LVL882
	.4byte	.LVL883
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST278:
	.4byte	.LVL809
	.4byte	.LVL810-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL810-1
	.4byte	.LVL813
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL813
	.4byte	.LVL814
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL814
	.4byte	.LVL816
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL816
	.4byte	.LVL817
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL817
	.4byte	.LVL820
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL820
	.4byte	.LVL822
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL822
	.4byte	.LVL827
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL827
	.4byte	.LVL828-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL828-1
	.4byte	.LVL835
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL835
	.4byte	.LVL836
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL836
	.4byte	.LFE157
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST279:
	.4byte	.LVL811
	.4byte	.LVL813-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL814
	.4byte	.LVL815-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL815-1
	.4byte	.LVL816
	.2byte	0x2
	.byte	0x91
	.byte	0x58
	.4byte	.LVL817
	.4byte	.LVL818-1
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST280:
	.4byte	.LVL812
	.4byte	.LVL813-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL814
	.4byte	.LVL815-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL815-1
	.4byte	.LVL816
	.2byte	0x2
	.byte	0x91
	.byte	0x5c
	.4byte	.LVL817
	.4byte	.LVL818-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST281:
	.4byte	.LVL824
	.4byte	.LVL825
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL825
	.4byte	.LVL826-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST276:
	.4byte	.LVL803
	.4byte	.LVL804-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL804-1
	.4byte	.LVL808
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL808
	.4byte	.LFE156
	.2byte	0x2
	.byte	0x72
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST277:
	.4byte	.LVL805
	.4byte	.LVL807
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST275:
	.4byte	.LVL801
	.4byte	.LVL802
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST274:
	.4byte	.LVL797
	.4byte	.LVL798-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL798-1
	.4byte	.LVL799
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL799
	.4byte	.LFE154
	.2byte	0x2
	.byte	0x72
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST273:
	.4byte	.LVL790
	.4byte	.LVL791
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL792
	.4byte	.LVL793
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL793
	.4byte	.LFE150
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST272:
	.4byte	.LVL784
	.4byte	.LVL785
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL785
	.4byte	.LFE149
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST236:
	.4byte	.LVL704
	.4byte	.LVL705
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL705
	.4byte	.LVL731
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL731
	.4byte	.LVL735
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL735
	.4byte	.LVL778
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL778
	.4byte	.LVL782
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL782
	.4byte	.LFE148
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST237:
	.4byte	.LVL706
	.4byte	.LVL732
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL735
	.4byte	.LVL773
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL773
	.4byte	.LVL776-1
	.2byte	0x5
	.byte	0x3
	.4byte	g_cam_mode
	.4byte	.LVL782
	.4byte	.LFE148
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST238:
	.4byte	.LVL707
	.4byte	.LVL733
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL733
	.4byte	.LVL734
	.2byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.4byte	.LVL734
	.4byte	.LVL735
	.2byte	0x3
	.byte	0x72
	.byte	0xac,0x7f
	.4byte	.LVL735
	.4byte	.LVL779
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL779
	.4byte	.LVL781
	.2byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.4byte	.LVL781
	.4byte	.LVL782
	.2byte	0x3
	.byte	0x72
	.byte	0xac,0x7f
	.4byte	.LVL782
	.4byte	.LFE148
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST239:
	.4byte	.LVL718
	.4byte	.LVL730
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL767
	.4byte	.LVL780
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST240:
	.4byte	.LVL720
	.4byte	.LVL721-1
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST241:
	.4byte	.LVL724
	.4byte	.LVL725
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL725
	.4byte	.LVL726-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL728
	.4byte	.LVL729
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL729
	.4byte	.LVL730-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST242:
	.4byte	.LVL768
	.4byte	.LVL770-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST243:
	.4byte	.LVL769
	.4byte	.LVL774
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST244:
	.4byte	.LVL772
	.4byte	.LVL775
	.2byte	0x5
	.byte	0x93
	.byte	0x6
	.byte	0x5d
	.byte	0x93
	.byte	0x2
	.4byte	.LVL775
	.4byte	.LVL776-1
	.2byte	0x7
	.byte	0x93
	.byte	0x6
	.byte	0x91
	.byte	0xbe,0x7f
	.byte	0x93
	.byte	0x2
	.4byte	0
	.4byte	0
.LLST245:
	.4byte	.LVL709
	.4byte	.LVL717
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+7854
	.byte	0
	.4byte	.LVL735
	.4byte	.LVL752
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+7854
	.byte	0
	.4byte	0
	.4byte	0
.LLST246:
	.4byte	.LVL709
	.4byte	.LVL717
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+7843
	.byte	0
	.4byte	.LVL735
	.4byte	.LVL752
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+7843
	.byte	0
	.4byte	0
	.4byte	0
.LLST247:
	.4byte	.LVL709
	.4byte	.LVL717
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+7830
	.byte	0
	.4byte	.LVL735
	.4byte	.LVL752
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+7830
	.byte	0
	.4byte	0
	.4byte	0
.LLST248:
	.4byte	.LVL709
	.4byte	.LVL717
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+7817
	.byte	0
	.4byte	.LVL735
	.4byte	.LVL752
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+7817
	.byte	0
	.4byte	0
	.4byte	0
.LLST249:
	.4byte	.LVL709
	.4byte	.LVL717
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL735
	.4byte	.LVL752
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST250:
	.4byte	.LVL709
	.4byte	.LVL713
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL713
	.4byte	.LVL715
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL735
	.4byte	.LVL752
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST251:
	.4byte	.LVL709
	.4byte	.LVL713
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST253:
	.4byte	.LVL709
	.4byte	.LVL713
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL713
	.4byte	.LVL717
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL735
	.4byte	.LVL747
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL748
	.4byte	.LVL752
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST254:
	.4byte	.LVL709
	.4byte	.LVL713
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL713
	.4byte	.LVL717
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL735
	.4byte	.LVL746
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL748
	.4byte	.LVL752
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST255:
	.4byte	.LVL710
	.4byte	.LVL711
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL711
	.4byte	.LVL712
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL712
	.4byte	.LVL714
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL735
	.4byte	.LVL752
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST256:
	.4byte	.LVL736
	.4byte	.LVL740
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL742
	.4byte	.LVL752
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST257:
	.4byte	.LVL712
	.4byte	.LVL713
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL713
	.4byte	.LVL716
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL735
	.4byte	.LVL740
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL740
	.4byte	.LVL741
	.2byte	0x3
	.byte	0x87
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL742
	.4byte	.LVL752
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST258:
	.4byte	.LVL735
	.4byte	.LVL737-1
	.2byte	0xc
	.byte	0x87
	.byte	0
	.byte	0xa
	.2byte	0x214
	.byte	0x1e
	.byte	0x78
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0xf1,0x4
	.4byte	.LVL737
	.4byte	.LVL738
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL738
	.4byte	.LVL740
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL742
	.4byte	.LVL752
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST259:
	.4byte	.LVL738
	.4byte	.LVL739
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL739
	.4byte	.LVL740
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL742
	.4byte	.LVL749
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL750
	.4byte	.LVL752
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST260:
	.4byte	.LVL743
	.4byte	.LVL752
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST261:
	.4byte	.LVL744
	.4byte	.LVL752
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST262:
	.4byte	.LVL745
	.4byte	.LVL748
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL751
	.4byte	.LVL752
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST263:
	.4byte	.LVL717
	.4byte	.LVL718
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL752
	.4byte	.LVL767
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST264:
	.4byte	.LVL717
	.4byte	.LVL718
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL752
	.4byte	.LVL761
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL762
	.4byte	.LVL767
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST265:
	.4byte	.LVL717
	.4byte	.LVL718
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL752
	.4byte	.LVL767
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST266:
	.4byte	.LVL717
	.4byte	.LVL718
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL752
	.4byte	.LVL759
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL760
	.4byte	.LVL767
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST267:
	.4byte	.LVL717
	.4byte	.LVL718
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL752
	.4byte	.LVL766
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST268:
	.4byte	.LVL717
	.4byte	.LVL718
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL752
	.4byte	.LVL757
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL758
	.4byte	.LVL767
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST269:
	.4byte	.LVL717
	.4byte	.LVL718
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL752
	.4byte	.LVL763
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL764
	.4byte	.LVL767
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST270:
	.4byte	.LVL752
	.4byte	.LVL753
	.2byte	0x1b
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
	.byte	0x79
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x25
	.byte	0x1e
	.byte	0x22
	.byte	0x78
	.byte	0
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.byte	0x49
	.byte	0x9f
	.4byte	.LVL753
	.4byte	.LVL754
	.2byte	0x16
	.byte	0x7f
	.byte	0
	.byte	0xa
	.2byte	0x26c
	.byte	0x1e
	.byte	0x79
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x25
	.byte	0x1e
	.byte	0x22
	.byte	0x78
	.byte	0
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.byte	0x49
	.byte	0x9f
	.4byte	.LVL754
	.4byte	.LVL755-1
	.2byte	0x1b
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
	.byte	0x79
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x25
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
.LLST271:
	.4byte	.LVL756
	.4byte	.LVL765
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL196
	.4byte	.LVL198
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL198
	.4byte	.LVL201
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL201
	.4byte	.LVL202
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL202
	.4byte	.LFE145
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL197
	.4byte	.LVL279
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL280
	.4byte	.LFE145
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL203
	.4byte	.LVL204-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL204-1
	.4byte	.LVL278
	.2byte	0x3
	.byte	0x91
	.byte	0xec,0x7c
	.4byte	.LVL280
	.4byte	.LVL621
	.2byte	0x3
	.byte	0x91
	.byte	0xec,0x7c
	.4byte	.LVL621
	.4byte	.LVL622-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL622-1
	.4byte	.LFE145
	.2byte	0x3
	.byte	0x91
	.byte	0xec,0x7c
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL203
	.4byte	.LVL204-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL204-1
	.4byte	.LVL278
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL280
	.4byte	.LVL348
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL348
	.4byte	.LVL349
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL349
	.4byte	.LVL621
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL621
	.4byte	.LVL622-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL622-1
	.4byte	.LVL674
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL674
	.4byte	.LFE145
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL205
	.4byte	.LVL206
	.2byte	0x7
	.byte	0x91
	.byte	0xf0,0x7c
	.byte	0x93
	.byte	0x2
	.byte	0x93
	.byte	0x6
	.4byte	.LVL206
	.4byte	.LVL207
	.2byte	0xc
	.byte	0x91
	.byte	0xf0,0x7c
	.byte	0x93
	.byte	0x2
	.byte	0x91
	.byte	0xe0,0x7c
	.byte	0x93
	.byte	0x2
	.byte	0x93
	.byte	0x4
	.4byte	.LVL207
	.4byte	.LVL208
	.2byte	0x14
	.byte	0x91
	.byte	0xf0,0x7c
	.byte	0x93
	.byte	0x2
	.byte	0x91
	.byte	0xe0,0x7c
	.byte	0x93
	.byte	0x2
	.byte	0x91
	.byte	0xcc,0x7c
	.byte	0x93
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.byte	0x69
	.byte	0x93
	.byte	0x2
	.4byte	.LVL208
	.4byte	.LVL210
	.2byte	0x16
	.byte	0x91
	.byte	0xf0,0x7c
	.byte	0x93
	.byte	0x2
	.byte	0x91
	.byte	0xe0,0x7c
	.byte	0x93
	.byte	0x2
	.byte	0x91
	.byte	0xcc,0x7c
	.byte	0x93
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.byte	0x91
	.byte	0xbe,0x7f
	.byte	0x93
	.byte	0x2
	.4byte	.LVL210
	.4byte	.LVL211
	.2byte	0x13
	.byte	0x91
	.byte	0xf0,0x7c
	.byte	0x93
	.byte	0x2
	.byte	0x93
	.byte	0x2
	.byte	0x91
	.byte	0xcc,0x7c
	.byte	0x93
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.byte	0x91
	.byte	0xbe,0x7f
	.byte	0x93
	.byte	0x2
	.4byte	.LVL211
	.4byte	.LVL212
	.2byte	0x11
	.byte	0x91
	.byte	0xf0,0x7c
	.byte	0x93
	.byte	0x2
	.byte	0x69
	.byte	0x93
	.byte	0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x93
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.byte	0x69
	.byte	0x93
	.byte	0x2
	.4byte	.LVL212
	.4byte	.LVL258
	.2byte	0x14
	.byte	0x91
	.byte	0xf0,0x7c
	.byte	0x93
	.byte	0x2
	.byte	0x91
	.byte	0xe0,0x7c
	.byte	0x93
	.byte	0x2
	.byte	0x91
	.byte	0xcc,0x7c
	.byte	0x93
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.byte	0x69
	.byte	0x93
	.byte	0x2
	.4byte	.LVL258
	.4byte	.LVL267
	.2byte	0xf
	.byte	0x91
	.byte	0xf0,0x7c
	.byte	0x93
	.byte	0x2
	.byte	0x91
	.byte	0xe0,0x7c
	.byte	0x93
	.byte	0x2
	.byte	0x93
	.byte	0x2
	.byte	0x69
	.byte	0x93
	.byte	0x2
	.4byte	.LVL280
	.4byte	.LVL286
	.2byte	0xf
	.byte	0x91
	.byte	0xf0,0x7c
	.byte	0x93
	.byte	0x2
	.byte	0x91
	.byte	0xe0,0x7c
	.byte	0x93
	.byte	0x2
	.byte	0x93
	.byte	0x2
	.byte	0x69
	.byte	0x93
	.byte	0x2
	.4byte	.LVL623
	.4byte	.LVL624
	.2byte	0x5
	.byte	0x6a
	.byte	0x93
	.byte	0x2
	.byte	0x93
	.byte	0x6
	.4byte	.LVL624
	.4byte	.LVL626
	.2byte	0x10
	.byte	0x6a
	.byte	0x93
	.byte	0x2
	.byte	0x68
	.byte	0x93
	.byte	0x2
	.byte	0x91
	.byte	0x90,0x7d
	.byte	0x93
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.byte	0x62
	.byte	0x93
	.byte	0x2
	.4byte	.LVL626
	.4byte	.LVL627
	.2byte	0x10
	.byte	0x5a
	.byte	0x93
	.byte	0x2
	.byte	0x68
	.byte	0x93
	.byte	0x2
	.byte	0x91
	.byte	0x90,0x7d
	.byte	0x93
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.byte	0x62
	.byte	0x93
	.byte	0x2
	.4byte	.LVL627
	.4byte	.LVL629
	.2byte	0x14
	.byte	0x5a
	.byte	0x93
	.byte	0x2
	.byte	0x7a
	.byte	0
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.byte	0x93
	.byte	0x2
	.byte	0x91
	.byte	0x90,0x7d
	.byte	0x93
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.byte	0x62
	.byte	0x93
	.byte	0x2
	.4byte	.LVL629
	.4byte	.LVL630
	.2byte	0xf
	.byte	0x6a
	.byte	0x93
	.byte	0x2
	.byte	0x68
	.byte	0x93
	.byte	0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x93
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.byte	0x68
	.byte	0x93
	.byte	0x2
	.4byte	.LVL630
	.4byte	.LVL657
	.2byte	0x10
	.byte	0x6a
	.byte	0x93
	.byte	0x2
	.byte	0x68
	.byte	0x93
	.byte	0x2
	.byte	0x91
	.byte	0x90,0x7d
	.byte	0x93
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.byte	0x62
	.byte	0x93
	.byte	0x2
	.4byte	.LVL657
	.4byte	.LVL673
	.2byte	0xf
	.byte	0x6a
	.byte	0x93
	.byte	0x2
	.byte	0x93
	.byte	0x2
	.byte	0x91
	.byte	0x90,0x7d
	.byte	0x93
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.byte	0x62
	.byte	0x93
	.byte	0x2
	.4byte	.LVL673
	.4byte	.LVL674
	.2byte	0xc
	.byte	0x93
	.byte	0x4
	.byte	0x91
	.byte	0x90,0x7d
	.byte	0x93
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.byte	0x62
	.byte	0x93
	.byte	0x2
	.4byte	.LVL692
	.4byte	.LVL698
	.2byte	0x14
	.byte	0x91
	.byte	0xf0,0x7c
	.byte	0x93
	.byte	0x2
	.byte	0x91
	.byte	0xe0,0x7c
	.byte	0x93
	.byte	0x2
	.byte	0x91
	.byte	0xcc,0x7c
	.byte	0x93
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.byte	0x69
	.byte	0x93
	.byte	0x2
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL207
	.4byte	.LVL208
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL208
	.4byte	.LVL209
	.2byte	0x3
	.byte	0x91
	.byte	0xbe,0x7f
	.4byte	.LVL209
	.4byte	.LVL270
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL280
	.4byte	.LVL348
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL349
	.4byte	.LVL633
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL635
	.4byte	.LVL674
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL674
	.4byte	.LVL685
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL692
	.4byte	.LFE145
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL217
	.4byte	.LVL267
	.2byte	0xa
	.byte	0x9e
	.byte	0x8
	.8byte	0
	.4byte	.LVL267
	.4byte	.LVL270
	.2byte	0xa
	.byte	0x91
	.byte	0xc8,0x7d
	.byte	0x93
	.byte	0x4
	.byte	0x91
	.byte	0xd0,0x7d
	.byte	0x93
	.byte	0x4
	.4byte	.LVL280
	.4byte	.LVL286
	.2byte	0xa
	.byte	0x9e
	.byte	0x8
	.8byte	0
	.4byte	.LVL286
	.4byte	.LVL331
	.2byte	0xa
	.byte	0x91
	.byte	0xc8,0x7d
	.byte	0x93
	.byte	0x4
	.byte	0x91
	.byte	0xd0,0x7d
	.byte	0x93
	.byte	0x4
	.4byte	.LVL331
	.4byte	.LVL349
	.2byte	0x3
	.byte	0x91
	.byte	0xf0,0x7c
	.4byte	.LVL349
	.4byte	.LVL552
	.2byte	0xa
	.byte	0x91
	.byte	0xc8,0x7d
	.byte	0x93
	.byte	0x4
	.byte	0x91
	.byte	0xd0,0x7d
	.byte	0x93
	.byte	0x4
	.4byte	.LVL552
	.4byte	.LVL643
	.2byte	0x3
	.byte	0x91
	.byte	0xf0,0x7c
	.4byte	.LVL644
	.4byte	.LVL685
	.2byte	0x3
	.byte	0x91
	.byte	0xf0,0x7c
	.4byte	.LVL692
	.4byte	.LVL698
	.2byte	0xa
	.byte	0x9e
	.byte	0x8
	.8byte	0
	.4byte	.LVL698
	.4byte	.LVL701
	.2byte	0xa
	.byte	0x91
	.byte	0xc8,0x7d
	.byte	0x93
	.byte	0x4
	.byte	0x91
	.byte	0xd0,0x7d
	.byte	0x93
	.byte	0x4
	.4byte	.LVL701
	.4byte	.LVL703
	.2byte	0x3
	.byte	0x91
	.byte	0xf0,0x7c
	.4byte	.LVL703
	.4byte	.LFE145
	.2byte	0xa
	.byte	0x91
	.byte	0xc8,0x7d
	.byte	0x93
	.byte	0x4
	.byte	0x91
	.byte	0xd0,0x7d
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL217
	.4byte	.LVL267
	.2byte	0xa
	.byte	0x9e
	.byte	0x8
	.8byte	0
	.4byte	.LVL267
	.4byte	.LVL270
	.2byte	0xa
	.byte	0x91
	.byte	0xd4,0x7d
	.byte	0x93
	.byte	0x4
	.byte	0x91
	.byte	0xd8,0x7d
	.byte	0x93
	.byte	0x4
	.4byte	.LVL280
	.4byte	.LVL286
	.2byte	0xa
	.byte	0x9e
	.byte	0x8
	.8byte	0
	.4byte	.LVL286
	.4byte	.LVL331
	.2byte	0xa
	.byte	0x91
	.byte	0xd4,0x7d
	.byte	0x93
	.byte	0x4
	.byte	0x91
	.byte	0xd8,0x7d
	.byte	0x93
	.byte	0x4
	.4byte	.LVL331
	.4byte	.LVL349
	.2byte	0x3
	.byte	0x91
	.byte	0xf8,0x7c
	.4byte	.LVL349
	.4byte	.LVL552
	.2byte	0xa
	.byte	0x91
	.byte	0xd4,0x7d
	.byte	0x93
	.byte	0x4
	.byte	0x91
	.byte	0xd8,0x7d
	.byte	0x93
	.byte	0x4
	.4byte	.LVL552
	.4byte	.LVL646
	.2byte	0x3
	.byte	0x91
	.byte	0xf8,0x7c
	.4byte	.LVL647
	.4byte	.LVL685
	.2byte	0x3
	.byte	0x91
	.byte	0xf8,0x7c
	.4byte	.LVL692
	.4byte	.LVL698
	.2byte	0xa
	.byte	0x9e
	.byte	0x8
	.8byte	0
	.4byte	.LVL698
	.4byte	.LVL702
	.2byte	0xa
	.byte	0x91
	.byte	0xd4,0x7d
	.byte	0x93
	.byte	0x4
	.byte	0x91
	.byte	0xd8,0x7d
	.byte	0x93
	.byte	0x4
	.4byte	.LVL702
	.4byte	.LVL703
	.2byte	0x3
	.byte	0x91
	.byte	0xf8,0x7c
	.4byte	.LVL703
	.4byte	.LFE145
	.2byte	0xa
	.byte	0x91
	.byte	0xd4,0x7d
	.byte	0x93
	.byte	0x4
	.byte	0x91
	.byte	0xd8,0x7d
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LVL219
	.4byte	.LVL220
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL220
	.4byte	.LVL270
	.2byte	0x3
	.byte	0x91
	.byte	0xe8,0x7c
	.4byte	.LVL280
	.4byte	.LVL332
	.2byte	0x3
	.byte	0x91
	.byte	0xe8,0x7c
	.4byte	.LVL332
	.4byte	.LVL333
	.2byte	0x3
	.byte	0x91
	.byte	0xe0,0x7c
	.4byte	.LVL333
	.4byte	.LVL347
	.2byte	0x3
	.byte	0x91
	.byte	0xe8,0x7c
	.4byte	.LVL349
	.4byte	.LVL555
	.2byte	0x3
	.byte	0x91
	.byte	0xe8,0x7c
	.4byte	.LVL555
	.4byte	.LVL556
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL556
	.4byte	.LVL568
	.2byte	0x3
	.byte	0x91
	.byte	0xe8,0x7c
	.4byte	.LVL570
	.4byte	.LVL590
	.2byte	0x3
	.byte	0x91
	.byte	0xe8,0x7c
	.4byte	.LVL599
	.4byte	.LVL619
	.2byte	0x3
	.byte	0x91
	.byte	0xe8,0x7c
	.4byte	.LVL649
	.4byte	.LVL650
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL650
	.4byte	.LVL685
	.2byte	0x3
	.byte	0x91
	.byte	0xe8,0x7c
	.4byte	.LVL692
	.4byte	.LFE145
	.2byte	0x3
	.byte	0x91
	.byte	0xe8,0x7c
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL219
	.4byte	.LVL220
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL220
	.4byte	.LVL267
	.2byte	0x3
	.byte	0x91
	.byte	0xe8,0x7c
	.4byte	.LVL267
	.4byte	.LVL270
	.2byte	0x3
	.byte	0x91
	.byte	0xa8,0x7d
	.4byte	.LVL280
	.4byte	.LVL286
	.2byte	0x3
	.byte	0x91
	.byte	0xe8,0x7c
	.4byte	.LVL286
	.4byte	.LVL338
	.2byte	0x3
	.byte	0x91
	.byte	0xa8,0x7d
	.4byte	.LVL338
	.4byte	.LVL342
	.2byte	0x3
	.byte	0x91
	.byte	0xe0,0x7c
	.4byte	.LVL342
	.4byte	.LVL348
	.2byte	0x3
	.byte	0x91
	.byte	0xa8,0x7d
	.4byte	.LVL349
	.4byte	.LVL633
	.2byte	0x3
	.byte	0x91
	.byte	0xa8,0x7d
	.4byte	.LVL635
	.4byte	.LVL649
	.2byte	0x3
	.byte	0x91
	.byte	0xa8,0x7d
	.4byte	.LVL649
	.4byte	.LVL650
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL650
	.4byte	.LVL674
	.2byte	0x3
	.byte	0x91
	.byte	0xe8,0x7c
	.4byte	.LVL674
	.4byte	.LVL685
	.2byte	0x3
	.byte	0x91
	.byte	0xa8,0x7d
	.4byte	.LVL692
	.4byte	.LVL698
	.2byte	0x3
	.byte	0x91
	.byte	0xe8,0x7c
	.4byte	.LVL698
	.4byte	.LVL701
	.2byte	0x3
	.byte	0x91
	.byte	0xa8,0x7d
	.4byte	.LVL701
	.4byte	.LVL703
	.2byte	0x3
	.byte	0x91
	.byte	0xe0,0x7c
	.4byte	.LVL703
	.4byte	.LFE145
	.2byte	0x3
	.byte	0x91
	.byte	0xa8,0x7d
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL219
	.4byte	.LVL220
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL220
	.4byte	.LVL267
	.2byte	0x3
	.byte	0x91
	.byte	0xe8,0x7c
	.4byte	.LVL267
	.4byte	.LVL278
	.2byte	0x3
	.byte	0x91
	.byte	0xe8,0x7d
	.4byte	.LVL280
	.4byte	.LVL286
	.2byte	0x3
	.byte	0x91
	.byte	0xe8,0x7c
	.4byte	.LVL286
	.4byte	.LVL678
	.2byte	0x3
	.byte	0x91
	.byte	0xe8,0x7d
	.4byte	.LVL678
	.4byte	.LVL679
	.2byte	0x3
	.byte	0x91
	.byte	0xe0,0x7c
	.4byte	.LVL679
	.4byte	.LVL692
	.2byte	0x3
	.byte	0x91
	.byte	0xe8,0x7d
	.4byte	.LVL692
	.4byte	.LVL698
	.2byte	0x3
	.byte	0x91
	.byte	0xe8,0x7c
	.4byte	.LVL698
	.4byte	.LFE145
	.2byte	0x3
	.byte	0x91
	.byte	0xe8,0x7d
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LVL219
	.4byte	.LVL246
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL246
	.4byte	.LVL278
	.2byte	0x3
	.byte	0x91
	.byte	0xa4,0x7d
	.4byte	.LVL280
	.4byte	.LVL692
	.2byte	0x3
	.byte	0x91
	.byte	0xa4,0x7d
	.4byte	.LVL692
	.4byte	.LVL698
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL698
	.4byte	.LFE145
	.2byte	0x3
	.byte	0x91
	.byte	0xa4,0x7d
	.4byte	0
	.4byte	0
.LLST83:
	.4byte	.LVL219
	.4byte	.LVL246
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL246
	.4byte	.LVL267
	.2byte	0x3
	.byte	0x91
	.byte	0xd0,0x7c
	.4byte	.LVL267
	.4byte	.LVL270
	.2byte	0x3
	.byte	0x91
	.byte	0x88,0x7d
	.4byte	.LVL280
	.4byte	.LVL286
	.2byte	0x3
	.byte	0x91
	.byte	0xd0,0x7c
	.4byte	.LVL286
	.4byte	.LVL348
	.2byte	0x3
	.byte	0x91
	.byte	0x88,0x7d
	.4byte	.LVL349
	.4byte	.LVL631
	.2byte	0x3
	.byte	0x91
	.byte	0x88,0x7d
	.4byte	.LVL635
	.4byte	.LVL685
	.2byte	0x3
	.byte	0x91
	.byte	0x88,0x7d
	.4byte	.LVL692
	.4byte	.LVL698
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL698
	.4byte	.LFE145
	.2byte	0x3
	.byte	0x91
	.byte	0x88,0x7d
	.4byte	0
	.4byte	0
.LLST84:
	.4byte	.LVL219
	.4byte	.LVL246
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL246
	.4byte	.LVL278
	.2byte	0x3
	.byte	0x91
	.byte	0xd0,0x7c
	.4byte	.LVL280
	.4byte	.LVL692
	.2byte	0x3
	.byte	0x91
	.byte	0xd0,0x7c
	.4byte	.LVL692
	.4byte	.LVL698
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL698
	.4byte	.LFE145
	.2byte	0x3
	.byte	0x91
	.byte	0xd0,0x7c
	.4byte	0
	.4byte	0
.LLST85:
	.4byte	.LVL219
	.4byte	.LVL246
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL246
	.4byte	.LVL249
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL249
	.4byte	.LVL250-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL250-1
	.4byte	.LVL259
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL692
	.4byte	.LVL698
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST86:
	.4byte	.LVL219
	.4byte	.LVL246
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL246
	.4byte	.LVL252
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL692
	.4byte	.LVL698
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST87:
	.4byte	.LVL253
	.4byte	.LVL254
	.2byte	0x9
	.byte	0x7f
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x80
	.byte	0
	.byte	0x1e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST88:
	.4byte	.LVL266
	.4byte	.LVL267
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL267
	.4byte	.LVL278
	.2byte	0x3
	.byte	0x91
	.byte	0x8c,0x7d
	.4byte	.LVL286
	.4byte	.LVL681
	.2byte	0x3
	.byte	0x91
	.byte	0x8c,0x7d
	.4byte	.LVL682
	.4byte	.LVL683
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL685
	.4byte	.LVL692
	.2byte	0x3
	.byte	0x91
	.byte	0x8c,0x7d
	.4byte	.LVL698
	.4byte	.LFE145
	.2byte	0x3
	.byte	0x91
	.byte	0x8c,0x7d
	.4byte	0
	.4byte	0
.LLST89:
	.4byte	.LVL219
	.4byte	.LVL220
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL233
	.4byte	.LVL236
	.2byte	0x3
	.byte	0x78
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL246
	.4byte	.LVL249
	.2byte	0x3
	.byte	0x78
	.byte	0x7f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST90:
	.4byte	.LVL220
	.4byte	.LVL237
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL238
	.4byte	.LVL248
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL692
	.4byte	.LVL698
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST91:
	.4byte	.LVL221
	.4byte	.LVL252
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL692
	.4byte	.LVL698
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST92:
	.4byte	.LVL222
	.4byte	.LVL223
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL223
	.4byte	.LVL231
	.2byte	0x3
	.byte	0x91
	.byte	0xa4,0x7d
	.4byte	.LVL238
	.4byte	.LVL278
	.2byte	0x3
	.byte	0x91
	.byte	0xa4,0x7d
	.4byte	.LVL280
	.4byte	.LFE145
	.2byte	0x3
	.byte	0x91
	.byte	0xa4,0x7d
	.4byte	0
	.4byte	0
.LLST93:
	.4byte	.LVL224
	.4byte	.LVL226
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL226
	.4byte	.LVL231
	.2byte	0x3
	.byte	0x91
	.byte	0xd0,0x7c
	.4byte	.LVL238
	.4byte	.LVL278
	.2byte	0x3
	.byte	0x91
	.byte	0xd0,0x7c
	.4byte	.LVL280
	.4byte	.LFE145
	.2byte	0x3
	.byte	0x91
	.byte	0xd0,0x7c
	.4byte	0
	.4byte	0
.LLST94:
	.4byte	.LVL225
	.4byte	.LVL231
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL238
	.4byte	.LVL267
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL267
	.4byte	.LVL278
	.2byte	0x7
	.byte	0x91
	.byte	0xd0,0x7c
	.byte	0x6
	.byte	0x23
	.byte	0x40
	.byte	0x9f
	.4byte	.LVL280
	.4byte	.LVL286
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL286
	.4byte	.LVL692
	.2byte	0x7
	.byte	0x91
	.byte	0xd0,0x7c
	.byte	0x6
	.byte	0x23
	.byte	0x40
	.byte	0x9f
	.4byte	.LVL692
	.4byte	.LVL698
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL698
	.4byte	.LFE145
	.2byte	0x7
	.byte	0x91
	.byte	0xd0,0x7c
	.byte	0x6
	.byte	0x23
	.byte	0x40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST95:
	.4byte	.LVL227
	.4byte	.LVL228-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL228-1
	.4byte	.LVL231
	.2byte	0x3
	.byte	0x91
	.byte	0xf8,0x7c
	.4byte	.LVL238
	.4byte	.LVL267
	.2byte	0x3
	.byte	0x91
	.byte	0xf8,0x7c
	.4byte	.LVL280
	.4byte	.LVL286
	.2byte	0x3
	.byte	0x91
	.byte	0xf8,0x7c
	.4byte	.LVL692
	.4byte	.LVL698
	.2byte	0x3
	.byte	0x91
	.byte	0xf8,0x7c
	.4byte	0
	.4byte	0
.LLST96:
	.4byte	.LVL229
	.4byte	.LVL230
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL230
	.4byte	.LVL231-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL238
	.4byte	.LVL239
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST97:
	.4byte	.LVL229
	.4byte	.LVL231
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL238
	.4byte	.LVL278
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL280
	.4byte	.LVL692
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL692
	.4byte	.LVL698
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL698
	.4byte	.LFE145
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST98:
	.4byte	.LVL239
	.4byte	.LVL245
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL245
	.4byte	.LVL247
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL692
	.4byte	.LVL698
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST99:
	.4byte	.LVL695
	.4byte	.LVL696
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL696
	.4byte	.LVL697
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL697
	.4byte	.LVL698
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST100:
	.4byte	.LVL259
	.4byte	.LVL267
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL280
	.4byte	.LVL286
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST101:
	.4byte	.LVL260
	.4byte	.LVL263
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL280
	.4byte	.LVL286
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST102:
	.4byte	.LVL282
	.4byte	.LVL283
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL283
	.4byte	.LVL284-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST109:
	.4byte	.LVL286
	.4byte	.LVL306
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL306
	.4byte	.LVL310
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL310
	.4byte	.LVL314
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL315
	.4byte	.LVL316
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL317
	.4byte	.LVL324
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL324
	.4byte	.LVL349
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL349
	.4byte	.LVL552
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL552
	.4byte	.LVL685
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL698
	.4byte	.LVL701
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL701
	.4byte	.LVL703
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL703
	.4byte	.LFE145
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST110:
	.4byte	.LVL303
	.4byte	.LVL310
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL317
	.4byte	.LVL324
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL349
	.4byte	.LVL552
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL698
	.4byte	.LVL701
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL703
	.4byte	.LFE145
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST111:
	.4byte	.LVL325
	.4byte	.LVL348
	.2byte	0x3
	.byte	0x91
	.byte	0xf0,0x7c
	.4byte	.LVL552
	.4byte	.LVL633
	.2byte	0x3
	.byte	0x91
	.byte	0xf0,0x7c
	.4byte	.LVL635
	.4byte	.LVL642
	.2byte	0x3
	.byte	0x91
	.byte	0xf0,0x7c
	.4byte	.LVL701
	.4byte	.LVL703
	.2byte	0x3
	.byte	0x91
	.byte	0xf0,0x7c
	.4byte	0
	.4byte	0
.LLST112:
	.4byte	.LVL326
	.4byte	.LVL348
	.2byte	0x3
	.byte	0x91
	.byte	0xf8,0x7c
	.4byte	.LVL552
	.4byte	.LVL633
	.2byte	0x3
	.byte	0x91
	.byte	0xf8,0x7c
	.4byte	.LVL635
	.4byte	.LVL645
	.2byte	0x3
	.byte	0x91
	.byte	0xf8,0x7c
	.4byte	.LVL701
	.4byte	.LVL703
	.2byte	0x3
	.byte	0x91
	.byte	0xf8,0x7c
	.4byte	0
	.4byte	0
.LLST113:
	.4byte	.LVL328
	.4byte	.LVL329-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL329-1
	.4byte	.LVL349
	.2byte	0x3
	.byte	0x91
	.byte	0xe0,0x7c
	.4byte	.LVL552
	.4byte	.LVL685
	.2byte	0x3
	.byte	0x91
	.byte	0xe0,0x7c
	.4byte	.LVL701
	.4byte	.LVL703
	.2byte	0x3
	.byte	0x91
	.byte	0xe0,0x7c
	.4byte	0
	.4byte	0
.LLST114:
	.4byte	.LVL330
	.4byte	.LVL343
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL552
	.4byte	.LVL557
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL701
	.4byte	.LVL703
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST115:
	.4byte	.LVL701
	.4byte	.LVL702
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST116:
	.4byte	.LVL334
	.4byte	.LVL335-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL556
	.4byte	.LVL557
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST117:
	.4byte	.LVL286
	.4byte	.LVL292
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL293
	.4byte	.LVL299
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL310
	.4byte	.LVL316
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST118:
	.4byte	.LVL286
	.4byte	.LVL293
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL294
	.4byte	.LVL298
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL310
	.4byte	.LVL316
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST119:
	.4byte	.LVL290
	.4byte	.LVL291
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL310
	.4byte	.LVL311
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL311
	.4byte	.LVL312-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL313
	.4byte	.LVL316
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST123:
	.4byte	.LVL319
	.4byte	.LVL324
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL351
	.4byte	.LVL552
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL698
	.4byte	.LVL701
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL703
	.4byte	.LFE145
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST124:
	.4byte	.LVL319
	.4byte	.LVL320
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL320
	.4byte	.LVL323
	.2byte	0x3
	.byte	0x91
	.byte	0xb8,0x7d
	.4byte	.LVL351
	.4byte	.LVL368
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL368
	.4byte	.LVL369
	.2byte	0x3
	.byte	0x91
	.byte	0xb8,0x7d
	.4byte	.LVL369
	.4byte	.LVL552
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL698
	.4byte	.LVL701
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL703
	.4byte	.LFE145
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST125:
	.4byte	.LVL319
	.4byte	.LVL320
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL320
	.4byte	.LVL323
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL351
	.4byte	.LVL368
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL368
	.4byte	.LVL369
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL369
	.4byte	.LVL552
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL698
	.4byte	.LVL701
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL703
	.4byte	.LFE145
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST126:
	.4byte	.LVL548
	.4byte	.LVL549
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL549
	.4byte	.LVL550-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST127:
	.4byte	.LVL307
	.4byte	.LVL308
	.2byte	0x6
	.byte	0x3
	.4byte	g_stream_urbs
	.byte	0x9f
	.4byte	.LVL317
	.4byte	.LVL319
	.2byte	0x6
	.byte	0x3
	.4byte	g_stream_urbs
	.byte	0x9f
	.4byte	.LVL349
	.4byte	.LVL351
	.2byte	0x6
	.byte	0x3
	.4byte	g_stream_urbs
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST128:
	.4byte	.LVL307
	.4byte	.LVL308
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL317
	.4byte	.LVL319
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL349
	.4byte	.LVL351
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST129:
	.4byte	.LVL307
	.4byte	.LVL308
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL317
	.4byte	.LVL319
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL349
	.4byte	.LVL351
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST130:
	.4byte	.LVL307
	.4byte	.LVL308
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL317
	.4byte	.LVL318
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST131:
	.4byte	.LVL318
	.4byte	.LVL319
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL349
	.4byte	.LVL350
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST132:
	.4byte	.LVL358
	.4byte	.LVL364
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL369
	.4byte	.LVL545
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL703
	.4byte	.LFE145
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST133:
	.4byte	.LVL358
	.4byte	.LVL364
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL369
	.4byte	.LVL545
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL703
	.4byte	.LFE145
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST134:
	.4byte	.LVL358
	.4byte	.LVL359-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL360
	.4byte	.LVL364
	.2byte	0x3
	.byte	0x91
	.byte	0xe0,0x7c
	.4byte	.LVL369
	.4byte	.LVL545
	.2byte	0x3
	.byte	0x91
	.byte	0xe0,0x7c
	.4byte	.LVL703
	.4byte	.LFE145
	.2byte	0x3
	.byte	0x91
	.byte	0xe0,0x7c
	.4byte	0
	.4byte	0
.LLST135:
	.4byte	.LVL357
	.4byte	.LVL364
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL369
	.4byte	.LVL545
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL703
	.4byte	.LFE145
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST136:
	.4byte	.LVL361
	.4byte	.LVL362
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL362
	.4byte	.LVL364
	.2byte	0x3
	.byte	0x91
	.byte	0xac,0x7d
	.4byte	.LVL369
	.4byte	.LVL370
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL370
	.4byte	.LVL545
	.2byte	0x3
	.byte	0x91
	.byte	0xac,0x7d
	.4byte	.LVL703
	.4byte	.LFE145
	.2byte	0x3
	.byte	0x91
	.byte	0xac,0x7d
	.4byte	0
	.4byte	0
.LLST137:
	.4byte	.LVL361
	.4byte	.LVL362
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0x79
	.byte	0x1c
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL362
	.4byte	.LVL363-1
	.2byte	0x9
	.byte	0x91
	.byte	0xac,0x7d
	.byte	0x6
	.byte	0x79
	.byte	0x1c
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL369
	.4byte	.LVL370
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0x79
	.byte	0x1c
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL370
	.4byte	.LVL373-1
	.2byte	0x9
	.byte	0x91
	.byte	0xac,0x7d
	.byte	0x6
	.byte	0x79
	.byte	0x1c
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST138:
	.4byte	.LVL371
	.4byte	.LVL372
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL372
	.4byte	.LVL373
	.2byte	0x3
	.byte	0x91
	.byte	0xf8,0x7c
	.4byte	.LVL373
	.4byte	.LVL374
	.2byte	0x9
	.byte	0x91
	.byte	0xe0,0x7c
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL374
	.4byte	.LVL545
	.2byte	0x3
	.byte	0x91
	.byte	0xf8,0x7c
	.4byte	.LVL703
	.4byte	.LFE145
	.2byte	0x3
	.byte	0x91
	.byte	0xf8,0x7c
	.4byte	0
	.4byte	0
.LLST139:
	.4byte	.LVL374
	.4byte	.LVL375
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL375
	.4byte	.LVL380
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL380
	.4byte	.LVL388
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL388
	.4byte	.LVL390
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL390
	.4byte	.LVL543
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL543
	.4byte	.LVL545
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL703
	.4byte	.LFE145
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST140:
	.4byte	.LVL374
	.4byte	.LVL375
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL375
	.4byte	.LVL386
	.2byte	0x3
	.byte	0x91
	.byte	0xc0,0x7d
	.4byte	.LVL386
	.4byte	.LVL388
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL388
	.4byte	.LVL544
	.2byte	0x3
	.byte	0x91
	.byte	0xc0,0x7d
	.4byte	.LVL703
	.4byte	.LFE145
	.2byte	0x3
	.byte	0x91
	.byte	0xc0,0x7d
	.4byte	0
	.4byte	0
.LLST141:
	.4byte	.LVL374
	.4byte	.LVL375
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL375
	.4byte	.LVL545
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL703
	.4byte	.LFE145
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST142:
	.4byte	.LVL377
	.4byte	.LVL389
	.2byte	0x8
	.byte	0x88
	.byte	0x4
	.byte	0x34
	.byte	0x24
	.byte	0x79
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL389
	.4byte	.LVL390
	.2byte	0x8
	.byte	0x88
	.byte	0x3
	.byte	0x34
	.byte	0x24
	.byte	0x79
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL390
	.4byte	.LVL545
	.2byte	0x8
	.byte	0x88
	.byte	0x4
	.byte	0x34
	.byte	0x24
	.byte	0x79
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL703
	.4byte	.LFE145
	.2byte	0x8
	.byte	0x88
	.byte	0x4
	.byte	0x34
	.byte	0x24
	.byte	0x79
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST143:
	.4byte	.LVL378
	.4byte	.LVL379-1
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST144:
	.4byte	.LVL378
	.4byte	.LVL545
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL703
	.4byte	.LFE145
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST145:
	.4byte	.LVL380
	.4byte	.LVL381-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL381
	.4byte	.LVL382
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL382
	.4byte	.LVL387-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL390
	.4byte	.LVL393-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL393-1
	.4byte	.LVL394
	.2byte	0x3
	.byte	0x91
	.byte	0xf0,0x7d
	.4byte	.LVL394
	.4byte	.LVL396-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL396-1
	.4byte	.LVL397
	.2byte	0x3
	.byte	0x91
	.byte	0xf0,0x7d
	.4byte	.LVL397
	.4byte	.LVL402
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL402
	.4byte	.LVL403
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL403
	.4byte	.LVL409
	.2byte	0x3
	.byte	0x91
	.byte	0xf0,0x7d
	.4byte	.LVL409
	.4byte	.LVL410-1
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL410-1
	.4byte	.LVL543
	.2byte	0x3
	.byte	0x91
	.byte	0xf0,0x7d
	.4byte	.LVL703
	.4byte	.LFE145
	.2byte	0x3
	.byte	0x91
	.byte	0xf0,0x7d
	.4byte	0
	.4byte	0
.LLST146:
	.4byte	.LVL383
	.4byte	.LVL387-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL390
	.4byte	.LVL393-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL394
	.4byte	.LVL396-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL397
	.4byte	.LVL404-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL404-1
	.4byte	.LVL405
	.2byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.4byte	.LVL409
	.4byte	.LVL410-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL410-1
	.4byte	.LVL411
	.2byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.4byte	.LVL411
	.4byte	.LVL412
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST147:
	.4byte	.LVL384
	.4byte	.LVL385
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL385
	.4byte	.LVL387-1
	.2byte	0x6
	.byte	0x7c
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL390
	.4byte	.LVL392
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL392
	.4byte	.LVL393-1
	.2byte	0x6
	.byte	0x7c
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL394
	.4byte	.LVL396-1
	.2byte	0x6
	.byte	0x7c
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL397
	.4byte	.LVL402
	.2byte	0x6
	.byte	0x7c
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL402
	.4byte	.LVL403
	.2byte	0x6
	.byte	0x7c
	.byte	0
	.byte	0x80
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL403
	.4byte	.LVL404-1
	.2byte	0x8
	.byte	0x7c
	.byte	0
	.byte	0x91
	.byte	0xf0,0x7d
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL404-1
	.4byte	.LVL405
	.2byte	0xa
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0x6
	.byte	0x91
	.byte	0xf0,0x7d
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL409
	.4byte	.LVL410-1
	.2byte	0x6
	.byte	0x7c
	.byte	0
	.byte	0x80
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL410-1
	.4byte	.LVL411
	.2byte	0xa
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0x6
	.byte	0x91
	.byte	0xf0,0x7d
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL411
	.4byte	.LVL412
	.2byte	0x8
	.byte	0x7c
	.byte	0
	.byte	0x91
	.byte	0xf0,0x7d
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST148:
	.4byte	.LVL391
	.4byte	.LVL393-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL393-1
	.4byte	.LVL394
	.2byte	0x3
	.byte	0x91
	.byte	0xf0,0x7d
	.4byte	.LVL394
	.4byte	.LVL396-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL396-1
	.4byte	.LVL397
	.2byte	0x3
	.byte	0x91
	.byte	0xf0,0x7d
	.4byte	.LVL397
	.4byte	.LVL402
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL402
	.4byte	.LVL403
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL403
	.4byte	.LVL409
	.2byte	0x3
	.byte	0x91
	.byte	0xf0,0x7d
	.4byte	.LVL409
	.4byte	.LVL410-1
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL410-1
	.4byte	.LVL543
	.2byte	0x3
	.byte	0x91
	.byte	0xf0,0x7d
	.4byte	.LVL703
	.4byte	.LFE145
	.2byte	0x3
	.byte	0x91
	.byte	0xf0,0x7d
	.4byte	0
	.4byte	0
.LLST149:
	.4byte	.LVL391
	.4byte	.LVL393-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL394
	.4byte	.LVL396-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL397
	.4byte	.LVL404-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL404-1
	.4byte	.LVL405
	.2byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.4byte	.LVL409
	.4byte	.LVL410-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL410-1
	.4byte	.LVL411
	.2byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.4byte	.LVL411
	.4byte	.LVL412
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST150:
	.4byte	.LVL395
	.4byte	.LVL396
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL397
	.4byte	.LVL417
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL428
	.4byte	.LVL429
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST151:
	.4byte	.LVL395
	.4byte	.LVL396-1
	.2byte	0x2
	.byte	0x7c
	.byte	0x1
	.4byte	.LVL397
	.4byte	.LVL403
	.2byte	0x2
	.byte	0x7c
	.byte	0x1
	.4byte	.LVL409
	.4byte	.LVL410-1
	.2byte	0x2
	.byte	0x7c
	.byte	0x1
	.4byte	0
	.4byte	0
.LLST152:
	.4byte	.LVL398
	.4byte	.LVL414
	.2byte	0x3
	.byte	0x91
	.byte	0xf8,0x7d
	.4byte	0
	.4byte	0
.LLST153:
	.4byte	.LVL399
	.4byte	.LVL543
	.2byte	0x3
	.byte	0x91
	.byte	0x90,0x7d
	.4byte	.LVL703
	.4byte	.LFE145
	.2byte	0x3
	.byte	0x91
	.byte	0x90,0x7d
	.4byte	0
	.4byte	0
.LLST154:
	.4byte	.LVL399
	.4byte	.LVL403
	.2byte	0x9
	.byte	0x7c
	.byte	0x1
	.byte	0x94
	.byte	0x1
	.byte	0x36
	.byte	0x25
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL409
	.4byte	.LVL410-1
	.2byte	0x9
	.byte	0x7c
	.byte	0x1
	.byte	0x94
	.byte	0x1
	.byte	0x36
	.byte	0x25
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST155:
	.4byte	.LVL399
	.4byte	.LVL422
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL424
	.4byte	.LVL446
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL446
	.4byte	.LVL447
	.2byte	0x3
	.byte	0x82
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL447
	.4byte	.LVL543
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL703
	.4byte	.LFE145
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST156:
	.4byte	.LVL399
	.4byte	.LVL423
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL424
	.4byte	.LVL442
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL443
	.4byte	.LVL453
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL455
	.4byte	.LVL536
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL538
	.4byte	.LVL539
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL703
	.4byte	.LFE145
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST157:
	.4byte	.LVL400
	.4byte	.LVL543
	.2byte	0x3
	.byte	0x91
	.byte	0xf0,0x7c
	.4byte	.LVL703
	.4byte	.LFE145
	.2byte	0x3
	.byte	0x91
	.byte	0xf0,0x7c
	.4byte	0
	.4byte	0
.LLST158:
	.4byte	.LVL401
	.4byte	.LVL403
	.2byte	0xe
	.byte	0x91
	.byte	0xf8,0x7d
	.byte	0x94
	.byte	0x1
	.byte	0x3
	.4byte	g_last_fid
	.byte	0x94
	.byte	0x1
	.byte	0x2e
	.byte	0x9f
	.4byte	.LVL409
	.4byte	.LVL410-1
	.2byte	0xe
	.byte	0x91
	.byte	0xf8,0x7d
	.byte	0x94
	.byte	0x1
	.byte	0x3
	.4byte	g_last_fid
	.byte	0x94
	.byte	0x1
	.byte	0x2e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST159:
	.4byte	.LVL450
	.4byte	.LVL453
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL458
	.4byte	.LVL480
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL480
	.4byte	.LVL481
	.2byte	0x3
	.byte	0x85
	.byte	0x7e
	.byte	0x9f
	.4byte	.LVL482
	.4byte	.LVL534
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST160:
	.4byte	.LVL450
	.4byte	.LVL451
	.2byte	0x7
	.byte	0x44
	.byte	0x3e
	.byte	0x24
	.byte	0x85
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL451
	.4byte	.LVL452
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL452
	.4byte	.LVL453
	.2byte	0x7
	.byte	0x44
	.byte	0x3e
	.byte	0x24
	.byte	0x85
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL458
	.4byte	.LVL460
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL460
	.4byte	.LVL480
	.2byte	0x7
	.byte	0x44
	.byte	0x3e
	.byte	0x24
	.byte	0x85
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL480
	.4byte	.LVL481
	.2byte	0x9
	.byte	0xc
	.4byte	0x50002
	.byte	0x85
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL482
	.4byte	.LVL534
	.2byte	0x7
	.byte	0x44
	.byte	0x3e
	.byte	0x24
	.byte	0x85
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST161:
	.4byte	.LVL477
	.4byte	.LVL479
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL479
	.4byte	.LVL482
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL532
	.4byte	.LVL533
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL533
	.4byte	.LVL538
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST162:
	.4byte	.LVL477
	.4byte	.LVL481
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL481
	.4byte	.LVL482
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL532
	.4byte	.LVL534
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL534
	.4byte	.LVL538
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST163:
	.4byte	.LVL459
	.4byte	.LVL461
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL461
	.4byte	.LVL462
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL462
	.4byte	.LVL464
	.2byte	0x9
	.byte	0x7c
	.byte	0
	.byte	0x7e
	.byte	0
	.byte	0x22
	.byte	0x7b
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL466
	.4byte	.LVL467
	.2byte	0x6
	.byte	0x7e
	.byte	0
	.byte	0x80
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL467
	.4byte	.LVL469
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL469
	.4byte	.LVL470
	.2byte	0x6
	.byte	0x7e
	.byte	0
	.byte	0x80
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL472
	.4byte	.LVL474
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL474
	.4byte	.LVL475
	.2byte	0x3
	.byte	0x7f
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL475
	.4byte	.LVL476
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL482
	.4byte	.LVL483
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL483
	.4byte	.LVL486
	.2byte	0x9
	.byte	0x7b
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x7e
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL486
	.4byte	.LVL489
	.2byte	0xb
	.byte	0x7b
	.byte	0
	.byte	0x7e
	.byte	0
	.byte	0x1c
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x10
	.byte	0x9f
	.4byte	.LVL489
	.4byte	.LVL490
	.2byte	0x9
	.byte	0x7b
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x7e
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL494
	.4byte	.LVL495
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x7e
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL495
	.4byte	.LVL497
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL498
	.4byte	.LVL499
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL499
	.4byte	.LVL500
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL500
	.4byte	.LVL501
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x7e
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL501
	.4byte	.LVL502
	.2byte	0x8
	.byte	0x7f
	.byte	0
	.byte	0x7e
	.byte	0
	.byte	0x1c
	.byte	0x34
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL502
	.4byte	.LVL503
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x7e
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL503
	.4byte	.LVL505
	.2byte	0x7
	.byte	0x7a
	.byte	0
	.byte	0x20
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL505
	.4byte	.LVL507
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL507
	.4byte	.LVL508
	.2byte	0x3
	.byte	0x7e
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL508
	.4byte	.LVL509
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL509
	.4byte	.LVL518
	.2byte	0x9
	.byte	0x7c
	.byte	0
	.byte	0x7e
	.byte	0
	.byte	0x22
	.byte	0x7b
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL518
	.4byte	.LVL523
	.2byte	0xb
	.byte	0x7c
	.byte	0
	.byte	0x7b
	.byte	0
	.byte	0x1c
	.byte	0x7e
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x10
	.byte	0x9f
	.4byte	.LVL523
	.4byte	.LVL524
	.2byte	0x9
	.byte	0x7c
	.byte	0
	.byte	0x7e
	.byte	0
	.byte	0x22
	.byte	0x7b
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL524
	.4byte	.LVL525
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL525
	.4byte	.LVL527
	.2byte	0x6
	.byte	0x7e
	.byte	0
	.byte	0x80
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL527
	.4byte	.LVL529
	.2byte	0x8
	.byte	0x7e
	.byte	0
	.byte	0x80
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL530
	.4byte	.LVL532
	.2byte	0x7
	.byte	0x7a
	.byte	0
	.byte	0x20
	.byte	0x7e
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST164:
	.4byte	.LVL459
	.4byte	.LVL476
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL482
	.4byte	.LVL532
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST165:
	.4byte	.LVL459
	.4byte	.LVL461
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL482
	.4byte	.LVL483
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST166:
	.4byte	.LVL459
	.4byte	.LVL462
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL462
	.4byte	.LVL463
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL466
	.4byte	.LVL468
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL472
	.4byte	.LVL475
	.2byte	0x3
	.byte	0x7d
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL475
	.4byte	.LVL476
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL482
	.4byte	.LVL493
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL498
	.4byte	.LVL499
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL503
	.4byte	.LVL504
	.2byte	0x8
	.byte	0x7d
	.byte	0
	.byte	0x7a
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL504
	.4byte	.LVL505
	.2byte	0x6
	.byte	0x7d
	.byte	0
	.byte	0x7a
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL505
	.4byte	.LVL508
	.2byte	0x3
	.byte	0x7d
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL508
	.4byte	.LVL509
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL509
	.4byte	.LVL511
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL511
	.4byte	.LVL513
	.2byte	0x3
	.byte	0x7f
	.byte	0x70
	.byte	0x9f
	.4byte	.LVL523
	.4byte	.LVL526
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL526
	.4byte	.LVL529
	.2byte	0x3
	.byte	0x7f
	.byte	0x7c
	.byte	0x9f
	.4byte	.LVL529
	.4byte	.LVL530
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL530
	.4byte	.LVL531
	.2byte	0x8
	.byte	0x7d
	.byte	0
	.byte	0x7a
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL531
	.4byte	.LVL532
	.2byte	0x6
	.byte	0x7d
	.byte	0
	.byte	0x7a
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST167:
	.4byte	.LVL459
	.4byte	.LVL461
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL461
	.4byte	.LVL465
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL472
	.4byte	.LVL473
	.2byte	0x3
	.byte	0x7b
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL473
	.4byte	.LVL476
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL482
	.4byte	.LVL483
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL483
	.4byte	.LVL492
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL498
	.4byte	.LVL499
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL503
	.4byte	.LVL504
	.2byte	0x8
	.byte	0x7b
	.byte	0
	.byte	0x7a
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL504
	.4byte	.LVL505
	.2byte	0x6
	.byte	0x7b
	.byte	0
	.byte	0x7a
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL505
	.4byte	.LVL506
	.2byte	0x3
	.byte	0x7c
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL506
	.4byte	.LVL524
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL530
	.4byte	.LVL531
	.2byte	0x8
	.byte	0x7f
	.byte	0
	.byte	0x7a
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL531
	.4byte	.LVL532
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x7a
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST168:
	.4byte	.LVL483
	.4byte	.LVL484
	.2byte	0x3
	.byte	0x7c
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL484
	.4byte	.LVL485
	.2byte	0x3
	.byte	0x7c
	.byte	0x8
	.byte	0x9f
	.4byte	.LVL485
	.4byte	.LVL488
	.2byte	0x3
	.byte	0x7c
	.byte	0xc
	.byte	0x9f
	.4byte	.LVL488
	.4byte	.LVL491
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL494
	.4byte	.LVL496
	.2byte	0x6
	.byte	0x7d
	.byte	0
	.byte	0x7e
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL499
	.4byte	.LVL502
	.2byte	0x8
	.byte	0x7d
	.byte	0
	.byte	0x7e
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL502
	.4byte	.LVL503
	.2byte	0x6
	.byte	0x7d
	.byte	0
	.byte	0x7e
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST169:
	.4byte	.LVL462
	.4byte	.LVL464
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL466
	.4byte	.LVL471
	.2byte	0x6
	.byte	0x7c
	.byte	0
	.byte	0x80
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL483
	.4byte	.LVL484
	.2byte	0x3
	.byte	0x7e
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL484
	.4byte	.LVL485
	.2byte	0x3
	.byte	0x7e
	.byte	0x8
	.byte	0x9f
	.4byte	.LVL485
	.4byte	.LVL486
	.2byte	0x3
	.byte	0x7e
	.byte	0xc
	.byte	0x9f
	.4byte	.LVL486
	.4byte	.LVL487
	.2byte	0x3
	.byte	0x7e
	.byte	0x7c
	.byte	0x9f
	.4byte	.LVL487
	.4byte	.LVL490
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL494
	.4byte	.LVL496
	.2byte	0x6
	.byte	0x7b
	.byte	0
	.byte	0x7e
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL499
	.4byte	.LVL502
	.2byte	0x8
	.byte	0x7b
	.byte	0
	.byte	0x7e
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL502
	.4byte	.LVL503
	.2byte	0x6
	.byte	0x7b
	.byte	0
	.byte	0x7e
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL509
	.4byte	.LVL513
	.2byte	0x3
	.byte	0x7b
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL513
	.4byte	.LVL516
	.2byte	0x3
	.byte	0x7b
	.byte	0x8
	.byte	0x9f
	.4byte	.LVL516
	.4byte	.LVL518
	.2byte	0x3
	.byte	0x7b
	.byte	0xc
	.byte	0x9f
	.4byte	.LVL518
	.4byte	.LVL520
	.2byte	0x3
	.byte	0x7b
	.byte	0x7c
	.byte	0x9f
	.4byte	.LVL520
	.4byte	.LVL524
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL524
	.4byte	.LVL527
	.2byte	0x8
	.byte	0x7c
	.byte	0
	.byte	0x80
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL527
	.4byte	.LVL530
	.2byte	0x6
	.byte	0x7c
	.byte	0
	.byte	0x80
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST170:
	.4byte	.LVL510
	.4byte	.LVL512
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST171:
	.4byte	.LVL510
	.4byte	.LVL511
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL511
	.4byte	.LVL513
	.2byte	0x3
	.byte	0x7f
	.byte	0x70
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST172:
	.4byte	.LVL514
	.4byte	.LVL515
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST173:
	.4byte	.LVL517
	.4byte	.LVL519
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST174:
	.4byte	.LVL521
	.4byte	.LVL522
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST175:
	.4byte	.LVL525
	.4byte	.LVL528
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST176:
	.4byte	.LVL525
	.4byte	.LVL526
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL526
	.4byte	.LVL529
	.2byte	0x3
	.byte	0x7f
	.byte	0x7c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST177:
	.4byte	.LVL478
	.4byte	.LVL482
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST178:
	.4byte	.LVL415
	.4byte	.LVL416
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL428
	.4byte	.LVL429
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST179:
	.4byte	.LVL428
	.4byte	.LVL429
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST180:
	.4byte	.LVL419
	.4byte	.LVL420
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL420
	.4byte	.LVL424
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL429
	.4byte	.LVL430
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL430
	.4byte	.LVL432
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST181:
	.4byte	.LVL426
	.4byte	.LVL428
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL432
	.4byte	.LVL434
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL434
	.4byte	.LVL442
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL443
	.4byte	.LVL449
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL455
	.4byte	.LVL458
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST182:
	.4byte	.LVL427
	.4byte	.LVL428
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST183:
	.4byte	.LVL433
	.4byte	.LVL439
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL439
	.4byte	.LVL440
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL440
	.4byte	.LVL442
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL443
	.4byte	.LVL444
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST184:
	.4byte	.LVL433
	.4byte	.LVL441
	.2byte	0x6
	.byte	0x3
	.4byte	g_cur_frame
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST185:
	.4byte	.LVL433
	.4byte	.LVL441
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+11715
	.byte	0
	.4byte	0
	.4byte	0
.LLST186:
	.4byte	.LVL540
	.4byte	.LVL541
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST187:
	.4byte	.LVL319
	.4byte	.LVL320
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+10423
	.byte	0
	.4byte	.LVL351
	.4byte	.LVL357
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+10423
	.byte	0
	.4byte	.LVL698
	.4byte	.LVL701
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+10423
	.byte	0
	.4byte	0
	.4byte	0
.LLST188:
	.4byte	.LVL319
	.4byte	.LVL320
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+10406
	.byte	0
	.4byte	.LVL351
	.4byte	.LVL357
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+10406
	.byte	0
	.4byte	.LVL698
	.4byte	.LVL701
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+10406
	.byte	0
	.4byte	0
	.4byte	0
.LLST189:
	.4byte	.LVL319
	.4byte	.LVL320
	.2byte	0x3
	.byte	0x91
	.byte	0xd0,0x7c
	.4byte	.LVL351
	.4byte	.LVL357
	.2byte	0x3
	.byte	0x91
	.byte	0xd0,0x7c
	.4byte	.LVL698
	.4byte	.LVL701
	.2byte	0x3
	.byte	0x91
	.byte	0xd0,0x7c
	.4byte	0
	.4byte	0
.LLST190:
	.4byte	.LVL319
	.4byte	.LVL320
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL351
	.4byte	.LVL357
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL698
	.4byte	.LVL701
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST191:
	.4byte	.LVL352
	.4byte	.LVL354
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL698
	.4byte	.LVL699
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST192:
	.4byte	.LVL355
	.4byte	.LVL357
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL699
	.4byte	.LVL700
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL700
	.4byte	.LVL701
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST194:
	.4byte	.LVL339
	.4byte	.LVL340
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST195:
	.4byte	.LVL562
	.4byte	.LVL566
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL570
	.4byte	.LVL574
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST196:
	.4byte	.LVL562
	.4byte	.LVL563
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL563
	.4byte	.LVL568
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL570
	.4byte	.LVL575
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST197:
	.4byte	.LVL652
	.4byte	.LVL653
	.2byte	0x9
	.byte	0x7f
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x82
	.byte	0
	.byte	0x1e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST198:
	.4byte	.LVL659
	.4byte	.LVL660
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL660
	.4byte	.LVL661-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL662
	.4byte	.LVL663
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST200:
	.4byte	.LVL562
	.4byte	.LVL563
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL563
	.4byte	.LVL564-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL570
	.4byte	.LVL572
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL573
	.4byte	.LVL574
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST201:
	.4byte	.LVL577
	.4byte	.LVL578
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL578
	.4byte	.LVL581
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL599
	.4byte	.LVL602
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL602
	.4byte	.LVL603-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL603-1
	.4byte	.LVL613
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST202:
	.4byte	.LVL608
	.4byte	.LVL609
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL609
	.4byte	.LVL610
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST203:
	.4byte	.LVL600
	.4byte	.LVL601
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST204:
	.4byte	.LVL579
	.4byte	.LVL580-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL610
	.4byte	.LVL612
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST205:
	.4byte	.LVL581
	.4byte	.LVL593
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL593
	.4byte	.LVL594
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL594
	.4byte	.LVL599
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL613
	.4byte	.LVL633
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL635
	.4byte	.LVL639
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL639
	.4byte	.LVL640-1
	.2byte	0x5
	.byte	0x3
	.4byte	g_cam_mode+9
	.4byte	0
	.4byte	0
.LLST206:
	.4byte	.LVL596
	.4byte	.LVL597
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL597
	.4byte	.LVL598-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL619
	.4byte	.LVL620
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL620
	.4byte	.LVL622-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST207:
	.4byte	.LVL624
	.4byte	.LVL625
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL625
	.4byte	.LVL628
	.2byte	0xe
	.byte	0x7f
	.byte	0
	.byte	0x89
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL628
	.4byte	.LVL630
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL630
	.4byte	.LVL674
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST208:
	.4byte	.LVL631
	.4byte	.LVL632
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL632
	.4byte	.LVL633-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL633-1
	.4byte	.LVL635
	.2byte	0x3
	.byte	0x91
	.byte	0x88,0x7d
	.4byte	.LVL635
	.4byte	.LVL636
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL636
	.4byte	.LVL674
	.2byte	0x3
	.byte	0x91
	.byte	0x88,0x7d
	.4byte	0
	.4byte	0
.LLST209:
	.4byte	.LVL637
	.4byte	.LVL638
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST210:
	.4byte	.LVL584
	.4byte	.LVL594
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL613
	.4byte	.LVL619
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST211:
	.4byte	.LVL588
	.4byte	.LVL594
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST223:
	.4byte	.LVL590
	.4byte	.LVL594
	.2byte	0x3
	.byte	0x91
	.byte	0xe8,0x7c
	.4byte	0
	.4byte	0
.LLST224:
	.4byte	.LVL592
	.4byte	.LVL593-1
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST212:
	.4byte	.LVL582
	.4byte	.LVL584
	.2byte	0x5
	.byte	0x3
	.4byte	g_cam_mode+6
	.4byte	0
	.4byte	0
.LLST213:
	.4byte	.LVL582
	.4byte	.LVL584
	.2byte	0x5
	.byte	0x3
	.4byte	g_cam_mode+4
	.4byte	0
	.4byte	0
.LLST214:
	.4byte	.LVL583
	.4byte	.LVL584
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST215:
	.4byte	.LVL584
	.4byte	.LVL588
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL613
	.4byte	.LVL619
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST216:
	.4byte	.LVL584
	.4byte	.LVL588
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL613
	.4byte	.LVL619
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST217:
	.4byte	.LVL584
	.4byte	.LVL588
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL613
	.4byte	.LVL619
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST218:
	.4byte	.LVL586
	.4byte	.LVL587
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST219:
	.4byte	.LVL586
	.4byte	.LVL587
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL587
	.4byte	.LVL588
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL613
	.4byte	.LVL619
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST220:
	.4byte	.LVL586
	.4byte	.LVL587
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL587
	.4byte	.LVL588
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL613
	.4byte	.LVL615
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL616
	.4byte	.LVL619
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST221:
	.4byte	.LVL587
	.4byte	.LVL588
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL613
	.4byte	.LVL617
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL618
	.4byte	.LVL619
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST222:
	.4byte	.LVL614
	.4byte	.LVL619
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST231:
	.4byte	.LVL657
	.4byte	.LVL672
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST232:
	.4byte	.LVL657
	.4byte	.LVL663
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL664
	.4byte	.LVL669
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST199:
	.4byte	.LVL557
	.4byte	.LVL559
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST225:
	.4byte	.LVL652
	.4byte	.LVL654
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL654
	.4byte	.LVL655
	.2byte	0x3
	.byte	0x91
	.byte	0xd0,0x7c
	.4byte	0
	.4byte	0
.LLST227:
	.4byte	.LVL652
	.4byte	.LVL655-1
	.2byte	0x1
	.byte	0x61
	.4byte	0
	.4byte	0
.LLST228:
	.4byte	.LVL652
	.4byte	.LVL655
	.2byte	0x4
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST229:
	.4byte	.LVL652
	.4byte	.LVL655-1
	.2byte	0x5
	.byte	0x3
	.4byte	g_cam_mode+9
	.4byte	0
	.4byte	0
.LLST230:
	.4byte	.LVL652
	.4byte	.LVL655
	.2byte	0x6
	.byte	0x3
	.4byte	.LC59
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST233:
	.4byte	.LVL675
	.4byte	.LVL676
	.2byte	0x9
	.byte	0x71
	.byte	0
	.byte	0x7c
	.byte	0
	.byte	0x1c
	.byte	0x8
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL677
	.4byte	.LVL678-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST120:
	.4byte	.LVL299
	.4byte	.LVL306
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+9991
	.byte	0
	.4byte	0
	.4byte	0
.LLST121:
	.4byte	.LVL300
	.4byte	.LVL304
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL304
	.4byte	.LVL305
	.2byte	0x3
	.byte	0x7f
	.byte	0x7f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST122:
	.4byte	.LVL301
	.4byte	.LVL302
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST193:
	.4byte	.LVL329
	.4byte	.LVL330
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST234:
	.4byte	.LVL271
	.4byte	.LVL278
	.2byte	0x3
	.byte	0x91
	.byte	0x80,0x7d
	.4byte	.LVL685
	.4byte	.LVL686
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL686
	.4byte	.LVL691
	.2byte	0x3
	.byte	0x91
	.byte	0x80,0x7d
	.4byte	.LVL691
	.4byte	.LVL692
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST235:
	.4byte	.LVL687
	.4byte	.LVL688
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST103:
	.4byte	.LVL253
	.4byte	.LVL255
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL255
	.4byte	.LVL256
	.2byte	0x3
	.byte	0x91
	.byte	0xd0,0x7c
	.4byte	0
	.4byte	0
.LLST105:
	.4byte	.LVL253
	.4byte	.LVL256-1
	.2byte	0x1
	.byte	0x61
	.4byte	0
	.4byte	0
.LLST106:
	.4byte	.LVL253
	.4byte	.LVL256
	.2byte	0x4
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST107:
	.4byte	.LVL253
	.4byte	.LVL256-1
	.2byte	0x5
	.byte	0x3
	.4byte	g_cam_mode+9
	.4byte	0
	.4byte	0
.LLST108:
	.4byte	.LVL253
	.4byte	.LVL256
	.2byte	0x6
	.byte	0x3
	.4byte	.LC28
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21
	.4byte	.LFE132
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL39
	.4byte	.LVL49
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL50
	.4byte	.LFE119
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL24
	.4byte	.LFE119
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL25
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL38
	.4byte	.LVL40-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL40-1
	.4byte	.LVL49
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LFE119
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL23
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL28-1
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL40-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL40-1
	.4byte	.LVL49
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LFE119
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL35
	.4byte	.LVL40-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL49
	.4byte	.LFE119
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL36
	.4byte	.LVL40-1
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL49
	.4byte	.LFE119
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL37
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LFE118
	.2byte	0x1
	.byte	0x58
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
	.4byte	.LFE112
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8-1
	.4byte	.LFE106
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL8-1
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x91
	.byte	0x68
	.4byte	.LVL9
	.4byte	.LFE106
	.2byte	0x2
	.byte	0x72
	.byte	0x68
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
.LLST14:
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL53
	.4byte	.LFE115
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL56
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL62
	.4byte	.LFE134
	.2byte	0x3
	.byte	0x7d
	.byte	0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL61
	.4byte	.LFE134
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL63
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL69
	.4byte	.LFE135
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL71
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL80
	.4byte	.LFE138
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL70
	.4byte	.LVL72-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL72-1
	.4byte	.LVL80
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LFE138
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL71
	.4byte	.LVL72-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL72
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL71
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL74
	.4byte	.LVL76
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL81
	.4byte	.LVL87-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL87-1
	.4byte	.LVL87
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LFE142
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL81
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LFE142
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL81
	.4byte	.LVL87-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL87-1
	.4byte	.LVL87
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LFE142
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL82
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL83
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL89
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL92
	.4byte	.LVL101
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL101
	.4byte	.LFE166
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL89
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL91
	.4byte	.LVL101
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL102
	.4byte	.LFE166
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL90
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL101
	.4byte	.LFE166
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL94
	.4byte	.LVL100
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL94
	.4byte	.LVL100
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL104
	.4byte	.LVL108-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL108-1
	.4byte	.LVL110
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL112
	.4byte	.LFE126
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL103
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL106
	.4byte	.LVL110
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL110
	.4byte	.LFE126
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL106
	.4byte	.LVL109
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL105
	.4byte	.LVL108-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL108-1
	.4byte	.LVL109
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x1b
	.byte	0x7f
	.byte	0xd
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0xa
	.2byte	0x26c
	.byte	0x1e
	.byte	0x7b
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x25
	.byte	0x1e
	.byte	0x22
	.byte	0x7f
	.byte	0
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.byte	0x49
	.byte	0x9f
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x1c
	.byte	0x7f
	.byte	0xd
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0xa
	.2byte	0x26c
	.byte	0x1e
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x25
	.byte	0x1e
	.byte	0x22
	.byte	0x7f
	.byte	0
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.byte	0x49
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x6
	.byte	0x8
	.byte	0x28
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x6
	.byte	0x8
	.byte	0x27
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x6
	.byte	0x8
	.byte	0x29
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL121
	.4byte	.LVL123
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL124
	.4byte	.LFE140
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL120
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LVL127-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL127-1
	.4byte	.LFE140
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL120
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LVL127-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL127-1
	.4byte	.LFE140
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL120
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LVL127-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL127-1
	.4byte	.LFE140
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL120
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LVL127-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL127-1
	.4byte	.LFE140
	.2byte	0x2
	.byte	0x91
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL125
	.4byte	.LVL126
	.2byte	0x2
	.byte	0x91
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL125
	.4byte	.LVL127-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x6
	.byte	0x82
	.byte	0
	.byte	0x83
	.byte	0
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL132
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL134
	.4byte	.LFE140
	.2byte	0x6
	.byte	0x82
	.byte	0
	.byte	0x83
	.byte	0
	.byte	0x1e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL133
	.4byte	.LVL134
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL134
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL136
	.4byte	.LFE140
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL138
	.4byte	.LFE190
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL140
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL143
	.4byte	.LVL144
	.2byte	0x3
	.byte	0x78
	.byte	0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL145
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL146
	.4byte	.LVL147
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL147
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL161
	.4byte	.LVL162
	.2byte	0x3
	.byte	0x8c
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL162
	.4byte	.LVL173
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL173
	.4byte	.LVL174
	.2byte	0x3
	.byte	0x8c
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL174
	.4byte	.LFE187
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL145
	.4byte	.LVL160
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL160
	.4byte	.LVL174
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL174
	.4byte	.LFE187
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL148
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL149
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL151
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL154
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL155
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL156
	.4byte	.LVL157
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL157
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL159
	.4byte	.LVL160
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL162
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL163
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL164
	.4byte	.LVL170
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL170
	.4byte	.LVL172
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL172
	.4byte	.LVL173
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL174
	.4byte	.LFE187
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL162
	.4byte	.LVL173
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL174
	.4byte	.LFE187
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL151
	.4byte	.LVL152
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL152
	.4byte	.LVL153
	.2byte	0x5
	.byte	0x7a
	.byte	0
	.byte	0x7e
	.byte	0
	.byte	0x22
	.4byte	.LVL153
	.4byte	.LVL154
	.2byte	0x7
	.byte	0x7a
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.4byte	.LVL156
	.4byte	.LVL160
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL174
	.4byte	.LFE187
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL158
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL159
	.4byte	.LVL160
	.2byte	0x10
	.byte	0x7a
	.byte	0
	.byte	0x81
	.byte	0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x7e
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL164
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL165
	.4byte	.LVL166
	.2byte	0x7
	.byte	0x7a
	.byte	0
	.byte	0x7e
	.byte	0
	.byte	0x22
	.byte	0x32
	.byte	0x1c
	.4byte	.LVL166
	.4byte	.LVL168
	.2byte	0x7
	.byte	0x7a
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.4byte	.LVL172
	.4byte	.LVL173
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL167
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL175
	.4byte	.LVL176
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL176
	.4byte	.LVL177
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL177
	.4byte	.LVL178
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL178
	.4byte	.LVL179
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL179
	.4byte	.LVL181
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL181
	.4byte	.LFE133
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL179
	.4byte	.LVL181
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL180
	.4byte	.LVL183
	.2byte	0x6
	.byte	0x3
	.4byte	g_cur_frame
	.byte	0x9f
	.4byte	.LVL190
	.4byte	.LVL192
	.2byte	0x6
	.byte	0x3
	.4byte	g_cur_frame
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL191
	.4byte	.LVL192
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL184
	.4byte	.LVL185
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL185
	.4byte	.LVL189-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL195
	.4byte	.LFE133
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL184
	.4byte	.LVL186
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL186
	.4byte	.LVL189-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL195
	.4byte	.LFE133
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL184
	.4byte	.LVL187
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL187
	.4byte	.LVL189-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL195
	.4byte	.LFE133
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL184
	.4byte	.LVL188
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL188
	.4byte	.LVL189-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL195
	.4byte	.LFE133
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST282:
	.4byte	.LVL837
	.4byte	.LVL838-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL838-1
	.4byte	.LVL840
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL840
	.4byte	.LVL841
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL841
	.4byte	.LVL847
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL847
	.4byte	.LVL857
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL857
	.4byte	.LVL858
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL858
	.4byte	.LFE158
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST283:
	.4byte	.LVL839
	.4byte	.LVL840-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL841
	.4byte	.LVL842-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL842-1
	.4byte	.LVL844
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL844
	.4byte	.LVL845-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL845-1
	.4byte	.LVL853
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL854
	.4byte	.LVL857
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST284:
	.4byte	.LVL849
	.4byte	.LVL850
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL850
	.4byte	.LVL851-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST285:
	.4byte	.LVL861
	.4byte	.LVL862
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL862
	.4byte	.LVL865
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL865
	.4byte	.LVL866
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL866
	.4byte	.LVL869
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL869
	.4byte	.LVL873
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL873
	.4byte	.LVL875
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL875
	.4byte	.LVL878-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL878-1
	.4byte	.LFE167
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST286:
	.4byte	.LVL861
	.4byte	.LVL863
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL863
	.4byte	.LVL865
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL865
	.4byte	.LVL867
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL867
	.4byte	.LVL869
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL869
	.4byte	.LVL872
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL872
	.4byte	.LVL875
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL875
	.4byte	.LVL876
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL876
	.4byte	.LVL877
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL877
	.4byte	.LVL878-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL878-1
	.4byte	.LFE167
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST287:
	.4byte	.LVL878
	.4byte	.LVL879
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL880
	.4byte	.LVL881
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST288:
	.4byte	.LVL870
	.4byte	.LVL873
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL873
	.4byte	.LVL874
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL875
	.4byte	.LVL877
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST289:
	.4byte	.LVL870
	.4byte	.LVL872
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL872
	.4byte	.LVL874
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL875
	.4byte	.LVL876
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL876
	.4byte	.LVL877
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST291:
	.4byte	.LVL884
	.4byte	.LVL885
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL885
	.4byte	.LVL888
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL888
	.4byte	.LVL892
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL892
	.4byte	.LVL894
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL894
	.4byte	.LVL897-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL897-1
	.4byte	.LFE168
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST292:
	.4byte	.LVL884
	.4byte	.LVL886
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL886
	.4byte	.LVL888
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL888
	.4byte	.LVL891
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL891
	.4byte	.LVL894
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL894
	.4byte	.LVL895
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL895
	.4byte	.LVL896
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL896
	.4byte	.LVL897-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL897-1
	.4byte	.LFE168
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST293:
	.4byte	.LVL897
	.4byte	.LVL898
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL899
	.4byte	.LVL900
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST294:
	.4byte	.LVL889
	.4byte	.LVL892
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL892
	.4byte	.LVL893
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL894
	.4byte	.LVL896
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST295:
	.4byte	.LVL889
	.4byte	.LVL891
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL891
	.4byte	.LVL893
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL894
	.4byte	.LVL895
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL895
	.4byte	.LVL896
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x15c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB105
	.4byte	.LFE105-.LFB105
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.4byte	.LFB139
	.4byte	.LFE139-.LFB139
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.4byte	.LFB132
	.4byte	.LFE132-.LFB132
	.4byte	.LFB119
	.4byte	.LFE119-.LFB119
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.4byte	.LFB131
	.4byte	.LFE131-.LFB131
	.4byte	.LFB134
	.4byte	.LFE134-.LFB134
	.4byte	.LFB135
	.4byte	.LFE135-.LFB135
	.4byte	.LFB138
	.4byte	.LFE138-.LFB138
	.4byte	.LFB142
	.4byte	.LFE142-.LFB142
	.4byte	.LFB166
	.4byte	.LFE166-.LFB166
	.4byte	.LFB126
	.4byte	.LFE126-.LFB126
	.4byte	.LFB147
	.4byte	.LFE147-.LFB147
	.4byte	.LFB140
	.4byte	.LFE140-.LFB140
	.4byte	.LFB190
	.4byte	.LFE190-.LFB190
	.4byte	.LFB187
	.4byte	.LFE187-.LFB187
	.4byte	.LFB133
	.4byte	.LFE133-.LFB133
	.4byte	.LFB145
	.4byte	.LFE145-.LFB145
	.4byte	.LFB148
	.4byte	.LFE148-.LFB148
	.4byte	.LFB149
	.4byte	.LFE149-.LFB149
	.4byte	.LFB150
	.4byte	.LFE150-.LFB150
	.4byte	.LFB151
	.4byte	.LFE151-.LFB151
	.4byte	.LFB152
	.4byte	.LFE152-.LFB152
	.4byte	.LFB153
	.4byte	.LFE153-.LFB153
	.4byte	.LFB154
	.4byte	.LFE154-.LFB154
	.4byte	.LFB155
	.4byte	.LFE155-.LFB155
	.4byte	.LFB156
	.4byte	.LFE156-.LFB156
	.4byte	.LFB157
	.4byte	.LFE157-.LFB157
	.4byte	.LFB158
	.4byte	.LFE158-.LFB158
	.4byte	.LFB159
	.4byte	.LFE159-.LFB159
	.4byte	.LFB167
	.4byte	.LFE167-.LFB167
	.4byte	.LFB160
	.4byte	.LFE160-.LFB160
	.4byte	.LFB168
	.4byte	.LFE168-.LFB168
	.4byte	.LFB161
	.4byte	.LFE161-.LFB161
	.4byte	.LFB162
	.4byte	.LFE162-.LFB162
	.4byte	.LFB163
	.4byte	.LFE163-.LFB163
	.4byte	.LFB164
	.4byte	.LFE164-.LFB164
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB24
	.4byte	.LBE24
	.4byte	.LBB27
	.4byte	.LBE27
	.4byte	0
	.4byte	0
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	.LBB31
	.4byte	.LBE31
	.4byte	0
	.4byte	0
	.4byte	.LBB44
	.4byte	.LBE44
	.4byte	.LBB47
	.4byte	.LBE47
	.4byte	0
	.4byte	0
	.4byte	.LBB52
	.4byte	.LBE52
	.4byte	.LBB55
	.4byte	.LBE55
	.4byte	0
	.4byte	0
	.4byte	.LBB59
	.4byte	.LBE59
	.4byte	.LBB66
	.4byte	.LBE66
	.4byte	.LBB67
	.4byte	.LBE67
	.4byte	.LBB68
	.4byte	.LBE68
	.4byte	0
	.4byte	0
	.4byte	.LBB61
	.4byte	.LBE61
	.4byte	.LBB62
	.4byte	.LBE62
	.4byte	0
	.4byte	0
	.4byte	.LBB73
	.4byte	.LBE73
	.4byte	.LBB78
	.4byte	.LBE78
	.4byte	0
	.4byte	0
	.4byte	.LBB87
	.4byte	.LBE87
	.4byte	.LBB91
	.4byte	.LBE91
	.4byte	.LBB92
	.4byte	.LBE92
	.4byte	0
	.4byte	0
	.4byte	.LBB96
	.4byte	.LBE96
	.4byte	.LBB99
	.4byte	.LBE99
	.4byte	0
	.4byte	0
	.4byte	.LBB105
	.4byte	.LBE105
	.4byte	.LBB106
	.4byte	.LBE106
	.4byte	0
	.4byte	0
	.4byte	.LBB107
	.4byte	.LBE107
	.4byte	.LBB108
	.4byte	.LBE108
	.4byte	.LBB109
	.4byte	.LBE109
	.4byte	0
	.4byte	0
	.4byte	.LBB114
	.4byte	.LBE114
	.4byte	.LBB122
	.4byte	.LBE122
	.4byte	0
	.4byte	0
	.4byte	.LBB116
	.4byte	.LBE116
	.4byte	.LBB117
	.4byte	.LBE117
	.4byte	0
	.4byte	0
	.4byte	.LBB118
	.4byte	.LBE118
	.4byte	.LBB119
	.4byte	.LBE119
	.4byte	.LBB120
	.4byte	.LBE120
	.4byte	0
	.4byte	0
	.4byte	.LBB128
	.4byte	.LBE128
	.4byte	.LBB138
	.4byte	.LBE138
	.4byte	.LBB139
	.4byte	.LBE139
	.4byte	0
	.4byte	0
	.4byte	.LBB130
	.4byte	.LBE130
	.4byte	.LBB134
	.4byte	.LBE134
	.4byte	0
	.4byte	0
	.4byte	.LBB133
	.4byte	.LBE133
	.4byte	.LBB135
	.4byte	.LBE135
	.4byte	0
	.4byte	0
	.4byte	.LBB230
	.4byte	.LBE230
	.4byte	.LBB233
	.4byte	.LBE233
	.4byte	0
	.4byte	0
	.4byte	.LBB234
	.4byte	.LBE234
	.4byte	.LBB246
	.4byte	.LBE246
	.4byte	.LBB247
	.4byte	.LBE247
	.4byte	.LBB440
	.4byte	.LBE440
	.4byte	0
	.4byte	0
	.4byte	.LBB235
	.4byte	.LBE235
	.4byte	.LBB243
	.4byte	.LBE243
	.4byte	.LBB244
	.4byte	.LBE244
	.4byte	.LBB245
	.4byte	.LBE245
	.4byte	0
	.4byte	0
	.4byte	.LBB236
	.4byte	.LBE236
	.4byte	.LBB240
	.4byte	.LBE240
	.4byte	.LBB241
	.4byte	.LBE241
	.4byte	.LBB242
	.4byte	.LBE242
	.4byte	0
	.4byte	0
	.4byte	.LBB237
	.4byte	.LBE237
	.4byte	.LBB238
	.4byte	.LBE238
	.4byte	0
	.4byte	0
	.4byte	.LBB248
	.4byte	.LBE248
	.4byte	.LBB262
	.4byte	.LBE262
	.4byte	.LBB436
	.4byte	.LBE436
	.4byte	0
	.4byte	0
	.4byte	.LBB249
	.4byte	.LBE249
	.4byte	.LBB250
	.4byte	.LBE250
	.4byte	.LBB251
	.4byte	.LBE251
	.4byte	0
	.4byte	0
	.4byte	.LBB252
	.4byte	.LBE252
	.4byte	.LBB258
	.4byte	.LBE258
	.4byte	.LBB259
	.4byte	.LBE259
	.4byte	.LBB260
	.4byte	.LBE260
	.4byte	.LBB261
	.4byte	.LBE261
	.4byte	0
	.4byte	0
	.4byte	.LBB263
	.4byte	.LBE263
	.4byte	.LBB429
	.4byte	.LBE429
	.4byte	.LBB430
	.4byte	.LBE430
	.4byte	.LBB437
	.4byte	.LBE437
	.4byte	.LBB438
	.4byte	.LBE438
	.4byte	.LBB441
	.4byte	.LBE441
	.4byte	0
	.4byte	0
	.4byte	.LBB264
	.4byte	.LBE264
	.4byte	.LBB271
	.4byte	.LBE271
	.4byte	.LBB272
	.4byte	.LBE272
	.4byte	.LBB363
	.4byte	.LBE363
	.4byte	0
	.4byte	0
	.4byte	.LBB265
	.4byte	.LBE265
	.4byte	.LBB266
	.4byte	.LBE266
	.4byte	.LBB267
	.4byte	.LBE267
	.4byte	.LBB268
	.4byte	.LBE268
	.4byte	.LBB269
	.4byte	.LBE269
	.4byte	.LBB270
	.4byte	.LBE270
	.4byte	0
	.4byte	0
	.4byte	.LBB273
	.4byte	.LBE273
	.4byte	.LBB360
	.4byte	.LBE360
	.4byte	0
	.4byte	0
	.4byte	.LBB276
	.4byte	.LBE276
	.4byte	.LBB361
	.4byte	.LBE361
	.4byte	.LBB362
	.4byte	.LBE362
	.4byte	.LBB364
	.4byte	.LBE364
	.4byte	.LBB423
	.4byte	.LBE423
	.4byte	.LBB427
	.4byte	.LBE427
	.4byte	.LBB428
	.4byte	.LBE428
	.4byte	0
	.4byte	0
	.4byte	.LBB277
	.4byte	.LBE277
	.4byte	.LBB350
	.4byte	.LBE350
	.4byte	.LBB355
	.4byte	.LBE355
	.4byte	.LBB357
	.4byte	.LBE357
	.4byte	0
	.4byte	0
	.4byte	.LBB278
	.4byte	.LBE278
	.4byte	.LBB341
	.4byte	.LBE341
	.4byte	.LBB351
	.4byte	.LBE351
	.4byte	0
	.4byte	0
	.4byte	.LBB279
	.4byte	.LBE279
	.4byte	.LBB282
	.4byte	.LBE282
	.4byte	0
	.4byte	0
	.4byte	.LBB283
	.4byte	.LBE283
	.4byte	.LBB284
	.4byte	.LBE284
	.4byte	0
	.4byte	0
	.4byte	.LBB285
	.4byte	.LBE285
	.4byte	.LBB353
	.4byte	.LBE353
	.4byte	.LBB354
	.4byte	.LBE354
	.4byte	.LBB356
	.4byte	.LBE356
	.4byte	.LBB359
	.4byte	.LBE359
	.4byte	0
	.4byte	0
	.4byte	.LBB287
	.4byte	.LBE287
	.4byte	.LBB334
	.4byte	.LBE334
	.4byte	.LBB335
	.4byte	.LBE335
	.4byte	.LBB336
	.4byte	.LBE336
	.4byte	0
	.4byte	0
	.4byte	.LBB288
	.4byte	.LBE288
	.4byte	.LBB332
	.4byte	.LBE332
	.4byte	.LBB333
	.4byte	.LBE333
	.4byte	0
	.4byte	0
	.4byte	.LBB289
	.4byte	.LBE289
	.4byte	.LBB330
	.4byte	.LBE330
	.4byte	.LBB331
	.4byte	.LBE331
	.4byte	0
	.4byte	0
	.4byte	.LBB290
	.4byte	.LBE290
	.4byte	.LBB328
	.4byte	.LBE328
	.4byte	.LBB329
	.4byte	.LBE329
	.4byte	0
	.4byte	0
	.4byte	.LBB292
	.4byte	.LBE292
	.4byte	.LBB311
	.4byte	.LBE311
	.4byte	.LBB320
	.4byte	.LBE320
	.4byte	.LBB322
	.4byte	.LBE322
	.4byte	.LBB324
	.4byte	.LBE324
	.4byte	0
	.4byte	0
	.4byte	.LBB293
	.4byte	.LBE293
	.4byte	.LBB309
	.4byte	.LBE309
	.4byte	0
	.4byte	0
	.4byte	.LBB303
	.4byte	.LBE303
	.4byte	.LBB306
	.4byte	.LBE306
	.4byte	0
	.4byte	0
	.4byte	.LBB312
	.4byte	.LBE312
	.4byte	.LBB317
	.4byte	.LBE317
	.4byte	0
	.4byte	0
	.4byte	.LBB313
	.4byte	.LBE313
	.4byte	.LBB318
	.4byte	.LBE318
	.4byte	0
	.4byte	0
	.4byte	.LBB314
	.4byte	.LBE314
	.4byte	.LBB319
	.4byte	.LBE319
	.4byte	.LBB321
	.4byte	.LBE321
	.4byte	.LBB323
	.4byte	.LBE323
	.4byte	0
	.4byte	0
	.4byte	.LBB342
	.4byte	.LBE342
	.4byte	.LBB352
	.4byte	.LBE352
	.4byte	.LBB358
	.4byte	.LBE358
	.4byte	0
	.4byte	0
	.4byte	.LBB344
	.4byte	.LBE344
	.4byte	.LBB346
	.4byte	.LBE346
	.4byte	0
	.4byte	0
	.4byte	.LBB345
	.4byte	.LBE345
	.4byte	.LBB347
	.4byte	.LBE347
	.4byte	0
	.4byte	0
	.4byte	.LBB365
	.4byte	.LBE365
	.4byte	.LBB368
	.4byte	.LBE368
	.4byte	0
	.4byte	0
	.4byte	.LBB369
	.4byte	.LBE369
	.4byte	.LBB424
	.4byte	.LBE424
	.4byte	0
	.4byte	0
	.4byte	.LBB370
	.4byte	.LBE370
	.4byte	.LBB425
	.4byte	.LBE425
	.4byte	0
	.4byte	0
	.4byte	.LBB371
	.4byte	.LBE371
	.4byte	.LBB374
	.4byte	.LBE374
	.4byte	0
	.4byte	0
	.4byte	.LBB377
	.4byte	.LBE377
	.4byte	.LBB378
	.4byte	.LBE378
	.4byte	.LBB379
	.4byte	.LBE379
	.4byte	0
	.4byte	0
	.4byte	.LBB380
	.4byte	.LBE380
	.4byte	.LBB386
	.4byte	.LBE386
	.4byte	.LBB407
	.4byte	.LBE407
	.4byte	0
	.4byte	0
	.4byte	.LBB381
	.4byte	.LBE381
	.4byte	.LBB384
	.4byte	.LBE384
	.4byte	.LBB385
	.4byte	.LBE385
	.4byte	0
	.4byte	0
	.4byte	.LBB389
	.4byte	.LBE389
	.4byte	.LBB408
	.4byte	.LBE408
	.4byte	0
	.4byte	0
	.4byte	.LBB390
	.4byte	.LBE390
	.4byte	.LBB409
	.4byte	.LBE409
	.4byte	.LBB410
	.4byte	.LBE410
	.4byte	0
	.4byte	0
	.4byte	.LBB391
	.4byte	.LBE391
	.4byte	.LBB405
	.4byte	.LBE405
	.4byte	.LBB406
	.4byte	.LBE406
	.4byte	0
	.4byte	0
	.4byte	.LBB394
	.4byte	.LBE394
	.4byte	.LBB402
	.4byte	.LBE402
	.4byte	.LBB404
	.4byte	.LBE404
	.4byte	0
	.4byte	0
	.4byte	.LBB396
	.4byte	.LBE396
	.4byte	.LBB398
	.4byte	.LBE398
	.4byte	.LBB399
	.4byte	.LBE399
	.4byte	0
	.4byte	0
	.4byte	.LBB411
	.4byte	.LBE411
	.4byte	.LBB416
	.4byte	.LBE416
	.4byte	.LBB417
	.4byte	.LBE417
	.4byte	.LBB418
	.4byte	.LBE418
	.4byte	0
	.4byte	0
	.4byte	.LBB420
	.4byte	.LBE420
	.4byte	.LBB421
	.4byte	.LBE421
	.4byte	.LBB422
	.4byte	.LBE422
	.4byte	0
	.4byte	0
	.4byte	.LBB431
	.4byte	.LBE431
	.4byte	.LBB439
	.4byte	.LBE439
	.4byte	0
	.4byte	0
	.4byte	.LBB453
	.4byte	.LBE453
	.4byte	.LBB483
	.4byte	.LBE483
	.4byte	0
	.4byte	0
	.4byte	.LBB455
	.4byte	.LBE455
	.4byte	.LBB473
	.4byte	.LBE473
	.4byte	.LBB474
	.4byte	.LBE474
	.4byte	0
	.4byte	0
	.4byte	.LBB456
	.4byte	.LBE456
	.4byte	.LBB470
	.4byte	.LBE470
	.4byte	.LBB471
	.4byte	.LBE471
	.4byte	.LBB472
	.4byte	.LBE472
	.4byte	0
	.4byte	0
	.4byte	.LBB457
	.4byte	.LBE457
	.4byte	.LBB467
	.4byte	.LBE467
	.4byte	.LBB468
	.4byte	.LBE468
	.4byte	.LBB469
	.4byte	.LBE469
	.4byte	0
	.4byte	0
	.4byte	.LBB458
	.4byte	.LBE458
	.4byte	.LBB463
	.4byte	.LBE463
	.4byte	.LBB464
	.4byte	.LBE464
	.4byte	.LBB465
	.4byte	.LBE465
	.4byte	.LBB466
	.4byte	.LBE466
	.4byte	0
	.4byte	0
	.4byte	.LBB459
	.4byte	.LBE459
	.4byte	.LBB460
	.4byte	.LBE460
	.4byte	.LBB461
	.4byte	.LBE461
	.4byte	.LBB462
	.4byte	.LBE462
	.4byte	0
	.4byte	0
	.4byte	.LBB476
	.4byte	.LBE476
	.4byte	.LBB484
	.4byte	.LBE484
	.4byte	0
	.4byte	0
	.4byte	.LBB478
	.4byte	.LBE478
	.4byte	.LBB481
	.4byte	.LBE481
	.4byte	0
	.4byte	0
	.4byte	.LBB479
	.4byte	.LBE479
	.4byte	.LBB480
	.4byte	.LBE480
	.4byte	0
	.4byte	0
	.4byte	.LBB487
	.4byte	.LBE487
	.4byte	.LBB490
	.4byte	.LBE490
	.4byte	0
	.4byte	0
	.4byte	.LBB495
	.4byte	.LBE495
	.4byte	.LBB499
	.4byte	.LBE499
	.4byte	.LBB500
	.4byte	.LBE500
	.4byte	0
	.4byte	0
	.4byte	.LBB504
	.4byte	.LBE504
	.4byte	.LBB509
	.4byte	.LBE509
	.4byte	.LBB510
	.4byte	.LBE510
	.4byte	0
	.4byte	0
	.4byte	.LBB515
	.4byte	.LBE515
	.4byte	.LBB519
	.4byte	.LBE519
	.4byte	.LBB520
	.4byte	.LBE520
	.4byte	0
	.4byte	0
	.4byte	.LBB525
	.4byte	.LBE525
	.4byte	.LBB529
	.4byte	.LBE529
	.4byte	.LBB530
	.4byte	.LBE530
	.4byte	0
	.4byte	0
	.4byte	.LFB105
	.4byte	.LFE105
	.4byte	.LFB112
	.4byte	.LFE112
	.4byte	.LFB139
	.4byte	.LFE139
	.4byte	.LFB106
	.4byte	.LFE106
	.4byte	.LFB110
	.4byte	.LFE110
	.4byte	.LFB118
	.4byte	.LFE118
	.4byte	.LFB132
	.4byte	.LFE132
	.4byte	.LFB119
	.4byte	.LFE119
	.4byte	.LFB115
	.4byte	.LFE115
	.4byte	.LFB131
	.4byte	.LFE131
	.4byte	.LFB134
	.4byte	.LFE134
	.4byte	.LFB135
	.4byte	.LFE135
	.4byte	.LFB138
	.4byte	.LFE138
	.4byte	.LFB142
	.4byte	.LFE142
	.4byte	.LFB166
	.4byte	.LFE166
	.4byte	.LFB126
	.4byte	.LFE126
	.4byte	.LFB147
	.4byte	.LFE147
	.4byte	.LFB140
	.4byte	.LFE140
	.4byte	.LFB190
	.4byte	.LFE190
	.4byte	.LFB187
	.4byte	.LFE187
	.4byte	.LFB133
	.4byte	.LFE133
	.4byte	.LFB145
	.4byte	.LFE145
	.4byte	.LFB148
	.4byte	.LFE148
	.4byte	.LFB149
	.4byte	.LFE149
	.4byte	.LFB150
	.4byte	.LFE150
	.4byte	.LFB151
	.4byte	.LFE151
	.4byte	.LFB152
	.4byte	.LFE152
	.4byte	.LFB153
	.4byte	.LFE153
	.4byte	.LFB154
	.4byte	.LFE154
	.4byte	.LFB155
	.4byte	.LFE155
	.4byte	.LFB156
	.4byte	.LFE156
	.4byte	.LFB157
	.4byte	.LFE157
	.4byte	.LFB158
	.4byte	.LFE158
	.4byte	.LFB159
	.4byte	.LFE159
	.4byte	.LFB167
	.4byte	.LFE167
	.4byte	.LFB160
	.4byte	.LFE160
	.4byte	.LFB168
	.4byte	.LFE168
	.4byte	.LFB161
	.4byte	.LFE161
	.4byte	.LFB162
	.4byte	.LFE162
	.4byte	.LFB163
	.4byte	.LFE163
	.4byte	.LFB164
	.4byte	.LFE164
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF71:
	.string	"iProduct"
.LASF83:
	.string	"bAlternateSetting"
.LASF259:
	.string	"g_cur_frame_tainted"
.LASF155:
	.string	"ep_desc"
.LASF211:
	.string	"bPreferedVersion"
.LASF48:
	.string	"size_t"
.LASF90:
	.string	"bEndpointAddress"
.LASF304:
	.string	"g_stream_urbs"
.LASF322:
	.string	"__fsym_cam_stop_name"
.LASF491:
	.string	"out_h"
.LASF243:
	.string	"syscall_func"
.LASF194:
	.string	"wKeyFrameRate"
.LASF137:
	.string	"is_period"
.LASF505:
	.string	"tail"
.LASF490:
	.string	"out_w"
.LASF368:
	.string	"buf_alloc_size_per_urb"
.LASF427:
	.string	"actual_len"
.LASF495:
	.string	"best_w"
.LASF17:
	.string	"int32_t"
.LASF106:
	.string	"data_toggle"
.LASF64:
	.string	"bDeviceSubClass"
.LASF47:
	.string	"http_counters_t"
.LASF438:
	.string	"header_info"
.LASF411:
	.string	"urbs"
.LASF39:
	.string	"isoin_mps"
.LASF415:
	.string	"iso_raw_bufs"
.LASF476:
	.string	"best_mps"
.LASF435:
	.string	"reset_iso_packets"
.LASF404:
	.string	"new_bytes_per_packet"
.LASF164:
	.string	"config_desc"
.LASF214:
	.string	"usbh_video_resolution"
.LASF50:
	.string	"BaseType_t"
.LASF57:
	.string	"wLength"
.LASF43:
	.string	"frames_dropped"
.LASF372:
	.string	"work_streak"
.LASF124:
	.string	"config"
.LASF301:
	.string	"g_parser_resync_streak"
.LASF219:
	.string	"usbh_video_format"
.LASF298:
	.string	"g_fid_toggle_ignore_count"
.LASF193:
	.string	"dwFrameInterval"
.LASF547:
	.string	"qcc74x_device_get_by_name"
.LASF516:
	.string	"iso_buffer_layout_is_valid"
.LASF430:
	.string	"rebuild_iso_packet_descriptors"
.LASF241:
	.string	"sub_idx"
.LASF417:
	.string	"nbytes"
.LASF38:
	.string	"altsetting"
.LASF238:
	.string	"qcc74x_device_s"
.LASF99:
	.string	"transfer_buffer_length"
.LASF115:
	.string	"usbh_hubport"
.LASF387:
	.string	"urb_progressed"
.LASF104:
	.string	"hcpriv"
.LASF521:
	.string	"urb_ptr_aligned"
.LASF62:
	.string	"bcdUSB"
.LASF302:
	.string	"g_parser_escalation_count"
.LASF94:
	.string	"usb_slist_t"
.LASF351:
	.string	"usbh_video_run"
.LASF109:
	.string	"transfer_flags"
.LASF463:
	.string	"sanitize_current_jpeg_frame"
.LASF538:
	.string	"frame_queue_pop"
.LASF503:
	.string	"urb_done_ring_pop"
.LASF569:
	.string	"start_streaming"
.LASF161:
	.string	"priv"
.LASF89:
	.string	"usb_endpoint_descriptor"
.LASF357:
	.string	"negotiated_iso"
.LASF3:
	.string	"__uint8_t"
.LASF236:
	.string	"num_of_formats"
.LASF29:
	.string	"CAPTURE_CTRL_STOPPED"
.LASF165:
	.string	"intf"
.LASF107:
	.string	"interval"
.LASF510:
	.string	"log_iso_arm_profile"
.LASF398:
	.string	"ring_depth"
.LASF140:
	.string	"usb_hub_descriptor"
.LASF65:
	.string	"bDeviceProtocol"
.LASF464:
	.string	"eoi_end"
.LASF7:
	.string	"long int"
.LASF179:
	.string	"int_buffer"
.LASF300:
	.string	"g_parser_resync_count"
.LASF500:
	.string	"num_frames"
.LASF359:
	.string	"stream_ep"
.LASF92:
	.string	"bInterval"
.LASF182:
	.string	"busid"
.LASF334:
	.string	"uvc_stop_capture"
.LASF174:
	.string	"hub_desc"
.LASF548:
	.string	"usbh_initialize"
.LASF556:
	.string	"xTaskGetTickCount"
.LASF142:
	.string	"wHubCharacteristics"
.LASF486:
	.string	"fallback_mps"
.LASF349:
	.string	"usbh_video_stop"
.LASF423:
	.string	"saw_payload"
.LASF364:
	.string	"last_frame_tick"
.LASF290:
	.string	"g_jpeg_invalid_drop_count"
.LASF145:
	.string	"DeviceRemovable"
.LASF196:
	.string	"wCompQuality"
.LASF333:
	.string	"uvc_dequeue_frame"
.LASF506:
	.string	"head"
.LASF257:
	.string	"g_cur_frame_valid"
.LASF314:
	.string	"wmax_raw"
.LASF342:
	.string	"uvc_get_capture_ctrl_state"
.LASF564:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF533:
	.string	"usb_memcpy"
.LASF453:
	.string	"verified_saw_sos"
.LASF534:
	.string	"dword2array"
.LASF458:
	.string	"find_jpeg_soi"
.LASF350:
	.string	"video_class"
.LASF190:
	.string	"hcd_id"
.LASF502:
	.string	"dist"
.LASF23:
	.string	"frame_t"
.LASF87:
	.string	"bInterfaceProtocol"
.LASF160:
	.string	"class_driver"
.LASF105:
	.string	"hport"
.LASF549:
	.string	"pvPortMalloc"
.LASF0:
	.string	"signed char"
.LASF252:
	.string	"g_capture_ctrl_state"
.LASF15:
	.string	"uint8_t"
.LASF245:
	.string	"func"
.LASF227:
	.string	"data_intf"
.LASF472:
	.string	"select_lower_altsetting"
.LASF184:
	.string	"hub_thread"
.LASF154:
	.string	"usbh_endpoint"
.LASF546:
	.string	"usbh_video_close"
.LASF487:
	.string	"select_best_resolution"
.LASF365:
	.string	"last_diag_tick"
.LASF173:
	.string	"ismtt"
.LASF69:
	.string	"bcdDevice"
.LASF414:
	.string	"free_iso_urb_resources"
.LASF466:
	.string	"out_len"
.LASF1:
	.string	"unsigned char"
.LASF53:
	.string	"bmRequestType"
.LASF40:
	.string	"uvc_mode_t"
.LASF499:
	.string	"max_frames"
.LASF291:
	.string	"g_jpeg_trim_count"
.LASF55:
	.string	"wValue"
.LASF337:
	.string	"ctrl"
.LASF571:
	.string	"__FUNCTION__"
.LASF282:
	.string	"g_hdr_short_count"
.LASF426:
	.string	"expected_len"
.LASF479:
	.string	"altsetting_mps"
.LASF130:
	.string	"usb_osal_thread_t"
.LASF529:
	.string	"capture_ctrl_get_state"
.LASF355:
	.string	"negotiated_interval"
.LASF293:
	.string	"g_jpeg_no_eoi_count"
.LASF46:
	.string	"_Bool"
.LASF478:
	.string	"pixels"
.LASF441:
	.string	"payload_tail_ff"
.LASF181:
	.string	"usbh_bus"
.LASF114:
	.string	"iso_packet"
.LASF44:
	.string	"frames_sent"
.LASF224:
	.string	"isoin"
.LASF95:
	.string	"usbh_complete_callback_t"
.LASF100:
	.string	"actual_length"
.LASF49:
	.string	"char"
.LASF175:
	.string	"hub_ss_desc"
.LASF373:
	.string	"urb_try"
.LASF461:
	.string	"drop_current_assembly"
.LASF210:
	.string	"bmFramingInfo"
.LASF286:
	.string	"g_hdr_fid_toggle_count"
.LASF470:
	.string	"marker"
.LASF385:
	.string	"stream_client"
.LASF539:
	.string	"usbh_video_open"
.LASF318:
	.string	"__fsym_cam_info_name"
.LASF376:
	.string	"try_buf_size_per_urb"
.LASF258:
	.string	"g_cur_frame_oversize"
.LASF392:
	.string	"tail_guard"
.LASF4:
	.string	"__uint16_t"
.LASF335:
	.string	"uvc_start_capture"
.LASF276:
	.string	"g_pkt_count_clamp_count"
.LASF248:
	.string	"g_cam_mode"
.LASF326:
	.string	"cmd_cam_stop"
.LASF139:
	.string	"timer"
.LASF416:
	.string	"urb_count"
.LASF553:
	.string	"frame_queue_drop_oldest"
.LASF144:
	.string	"bHubContrCurrent"
.LASF543:
	.string	"kfree_size"
.LASF560:
	.string	"vTaskDelete"
.LASF122:
	.string	"slot_id"
.LASF371:
	.string	"active_urb_buf_bytes"
.LASF462:
	.string	"wait_for_fid_resync"
.LASF284:
	.string	"g_hdr_error_bit_count"
.LASF150:
	.string	"usbh_class_driver"
.LASF467:
	.string	"locate_complete_jpeg"
.LASF123:
	.string	"device_desc"
.LASF413:
	.string	"stop_streaming"
.LASF172:
	.string	"tt_think"
.LASF406:
	.string	"floor_mps"
.LASF240:
	.string	"irq_num"
.LASF343:
	.string	"uvc_alloc_session_id"
.LASF362:
	.string	"last_urb_payload_seen"
.LASF201:
	.string	"video_probe_and_commit_controls"
.LASF405:
	.string	"new_buf_size"
.LASF327:
	.string	"cmd_cam_start"
.LASF561:
	.string	"vAssertCalled"
.LASF283:
	.string	"g_hdr_invalid_count"
.LASF492:
	.string	"best_score"
.LASF74:
	.string	"usb_configuration_descriptor"
.LASF295:
	.string	"g_jpeg_trailer_garbage_count"
.LASF209:
	.string	"dwClockFrequency"
.LASF199:
	.string	"bmHint"
.LASF263:
	.string	"g_pending_soi_tail_ff"
.LASF447:
	.string	"prev_len"
.LASF149:
	.string	"wHubDelay"
.LASF183:
	.string	"devgen"
.LASF540:
	.string	"printf"
.LASF216:
	.string	"wHeight"
.LASF497:
	.string	"num_formats"
.LASF336:
	.string	"session_id"
.LASF328:
	.string	"cmd_cam_info"
.LASF563:
	.string	"frame_queue_push"
.LASF288:
	.string	"g_payload_bytes_total"
.LASF108:
	.string	"setup"
.LASF34:
	.string	"capture_ctrl_state_t"
.LASF312:
	.string	"g_preferred_interval_100ns"
.LASF484:
	.string	"best_cap_mps"
.LASF226:
	.string	"ctrl_intf"
.LASF436:
	.string	"process_iso_data"
.LASF400:
	.string	"restart_urb_buf_bytes"
.LASF572:
	.string	"set_cam_state"
.LASF566:
	.string	"C:\\\\Users\\\\cwier\\\\documents\\\\github\\\\qcom\\\\examples\\\\usb_cam_stream\\\\build"
.LASF384:
	.string	"urb_now"
.LASF489:
	.string	"out_frame_idx"
.LASF565:
	.string	".\\examples\\usb_cam_stream\\uvc_capture.c"
.LASF81:
	.string	"usb_interface_descriptor"
.LASF508:
	.string	"iso_guard_is_intact"
.LASF452:
	.string	"verified_eoi_end"
.LASF168:
	.string	"index"
.LASF340:
	.string	"uvc_session_is_restarting"
.LASF61:
	.string	"bDescriptorType"
.LASF396:
	.string	"pool_free"
.LASF570:
	.string	"uvc_iso_complete_router"
.LASF437:
	.string	"header_len"
.LASF170:
	.string	"nports"
.LASF206:
	.string	"wDelay"
.LASF166:
	.string	"usbh_hub"
.LASF235:
	.string	"num_of_intf_altsettings"
.LASF195:
	.string	"wPFrameRate"
.LASF514:
	.string	"last_packet_offset"
.LASF11:
	.string	"__uint64_t"
.LASF382:
	.string	"done_urb"
.LASF488:
	.string	"out_format_idx"
.LASF306:
	.string	"g_stream_iso_bufs"
.LASF9:
	.string	"long unsigned int"
.LASF101:
	.string	"errorcode"
.LASF167:
	.string	"is_roothub"
.LASF66:
	.string	"bMaxPacketSize0"
.LASF37:
	.string	"format"
.LASF72:
	.string	"iSerialNumber"
.LASF356:
	.string	"negotiated_fps"
.LASF127:
	.string	"self"
.LASF207:
	.string	"dwMaxVideoFrameSize"
.LASF285:
	.string	"g_hdr_eof_count"
.LASF84:
	.string	"bNumEndpoints"
.LASF444:
	.string	"split_soi"
.LASF229:
	.string	"probe"
.LASF358:
	.string	"stream_hport"
.LASF202:
	.string	"hintUnion"
.LASF338:
	.string	"active"
.LASF440:
	.string	"payload_len"
.LASF559:
	.string	"frame_pool_init"
.LASF275:
	.string	"g_unknown_urb_count"
.LASF256:
	.string	"g_cur_frame"
.LASF98:
	.string	"transfer_buffer"
.LASF390:
	.string	"pending"
.LASF20:
	.string	"uintptr_t"
.LASF509:
	.string	"data_size"
.LASF401:
	.string	"kret"
.LASF493:
	.string	"best_fi"
.LASF439:
	.string	"payload"
.LASF25:
	.string	"CAMERA_ATTACHED"
.LASF522:
	.string	"stream_urb_slots_reset"
.LASF324:
	.string	"argc"
.LASF244:
	.string	"shell_syscall"
.LASF557:
	.string	"http_get_counters"
.LASF321:
	.string	"__fsym_cam_start"
.LASF389:
	.string	"parser_timeout_ms"
.LASF395:
	.string	"pool_total"
.LASF518:
	.string	"decode_wmax_transactions"
.LASF325:
	.string	"argv"
.LASF323:
	.string	"__fsym_cam_stop"
.LASF418:
	.string	"process_completed_urb"
.LASF246:
	.string	"g_iso_pkt_candidates"
.LASF79:
	.string	"bmAttributes"
.LASF366:
	.string	"urb_alloc_size"
.LASF215:
	.string	"wWidth"
.LASF138:
	.string	"timeout_ms"
.LASF112:
	.string	"start_frame"
.LASF8:
	.string	"__uint32_t"
.LASF448:
	.string	"space"
.LASF310:
	.string	"g_urb_done_ring"
.LASF10:
	.string	"long long int"
.LASF152:
	.string	"connect"
.LASF507:
	.string	"urb_done_ring_push_isr"
.LASF281:
	.string	"g_guard_fault_count"
.LASF35:
	.string	"width"
.LASF331:
	.string	"uvc_frame_release"
.LASF469:
	.string	"out_saw_sos"
.LASF187:
	.string	"alloctab"
.LASF381:
	.string	"did_work"
.LASF292:
	.string	"g_jpeg_no_sos_count"
.LASF147:
	.string	"usb_hub_ss_descriptor"
.LASF320:
	.string	"__fsym_cam_start_name"
.LASF225:
	.string	"isoout"
.LASF28:
	.string	"camera_state_t"
.LASF91:
	.string	"wMaxPacketSize"
.LASF176:
	.string	"child"
.LASF410:
	.string	"urb_slot_index"
.LASF120:
	.string	"depth"
.LASF278:
	.string	"g_pkt_range_drop_count"
.LASF512:
	.string	"layout"
.LASF220:
	.string	"frame"
.LASF429:
	.string	"pkt_end"
.LASF536:
	.string	"frame_free"
.LASF126:
	.string	"parent"
.LASF129:
	.string	"mutex"
.LASF70:
	.string	"iManufacturer"
.LASF363:
	.string	"last_progress_tick"
.LASF432:
	.string	"urb_buf_bytes"
.LASF460:
	.string	"eof_seen"
.LASF113:
	.string	"complete"
.LASF377:
	.string	"try_raw_size"
.LASF110:
	.string	"timeout"
.LASF274:
	.string	"g_urb_complete_count"
.LASF118:
	.string	"dev_addr"
.LASF412:
	.string	"count"
.LASF313:
	.string	"g_state_callback"
.LASF425:
	.string	"expected_ptr"
.LASF361:
	.string	"last_frames_seen"
.LASF307:
	.string	"g_pending_resubmit"
.LASF249:
	.string	"g_video_class"
.LASF14:
	.string	"unsigned int"
.LASF409:
	.string	"new_mps_cap"
.LASF386:
	.string	"frame_progressed"
.LASF475:
	.string	"best_alt"
.LASF496:
	.string	"best_h"
.LASF76:
	.string	"bNumInterfaces"
.LASF347:
	.string	"uvc_capture_init"
.LASF85:
	.string	"bInterfaceClass"
.LASF77:
	.string	"bConfigurationValue"
.LASF375:
	.string	"try_urb_alloc_size"
.LASF511:
	.string	"phase"
.LASF158:
	.string	"usbh_interface"
.LASF156:
	.string	"usbh_interface_altsetting"
.LASF329:
	.string	"cam_state_str"
.LASF228:
	.string	"minor"
.LASF530:
	.string	"state"
.LASF52:
	.string	"TaskHandle_t"
.LASF552:
	.string	"frame_alloc"
.LASF204:
	.string	"bFormatIndex"
.LASF205:
	.string	"bFrameIndex"
.LASF445:
	.string	"embedded_soi"
.LASF78:
	.string	"iConfiguration"
.LASF54:
	.string	"bRequest"
.LASF132:
	.string	"usb_osal_mq_t"
.LASF407:
	.string	"lower_alt"
.LASF86:
	.string	"bInterfaceSubClass"
.LASF103:
	.string	"list"
.LASF515:
	.string	"fits"
.LASF162:
	.string	"altsetting_num"
.LASF542:
	.string	"xTaskCreate"
.LASF369:
	.string	"chosen_urb_count"
.LASF483:
	.string	"best_cap_alt"
.LASF191:
	.string	"roothub_intbuf"
.LASF421:
	.string	"urb_end"
.LASF24:
	.string	"CAMERA_DETACHED"
.LASF485:
	.string	"fallback_alt"
.LASF393:
	.string	"guard_off"
.LASF513:
	.string	"urb_packets"
.LASF311:
	.string	"g_resubmit_busy_count"
.LASF218:
	.string	"bFrameIntervalType"
.LASF434:
	.string	"stamp_urb_endpoints"
.LASF555:
	.string	"usbh_kill_urb"
.LASF431:
	.string	"backing_buffer_size"
.LASF192:
	.string	"roothub"
.LASF299:
	.string	"g_pkt_error_drop_count"
.LASF422:
	.string	"pkt_count"
.LASF189:
	.string	"reg_base"
.LASF250:
	.string	"g_stream_task"
.LASF537:
	.string	"frame_queue_pop_latest"
.LASF459:
	.string	"finalize_current_frame"
.LASF260:
	.string	"g_cur_frame_saw_eoi"
.LASF481:
	.string	"best_single_alt"
.LASF289:
	.string	"g_frame_oversize_drop_count"
.LASF75:
	.string	"wTotalLength"
.LASF348:
	.string	"usb_dev"
.LASF480:
	.string	"select_altsetting"
.LASF308:
	.string	"g_urb_done_head"
.LASF272:
	.string	"g_iso_urb_count_active"
.LASF222:
	.string	"num_of_frames"
.LASF265:
	.string	"g_fid_initialized"
.LASF96:
	.string	"usb_slist_node"
.LASF153:
	.string	"disconnect"
.LASF339:
	.string	"uvc_start_capture_session"
.LASF567:
	.string	"tskTaskControlBlock"
.LASF111:
	.string	"num_of_iso_packets"
.LASF558:
	.string	"vTaskDelay"
.LASF208:
	.string	"dwMaxPayloadTransferSize"
.LASF474:
	.string	"cur_mps"
.LASF97:
	.string	"usbh_iso_frame_packet"
.LASF262:
	.string	"g_wait_for_fid_resync"
.LASF294:
	.string	"g_jpeg_nested_soi_count"
.LASF60:
	.string	"bLength"
.LASF197:
	.string	"wCompWindowSize"
.LASF12:
	.string	"long long unsigned int"
.LASF268:
	.string	"g_stall_detected"
.LASF56:
	.string	"wIndex"
.LASF159:
	.string	"devname"
.LASF316:
	.string	"bytes_per_packet"
.LASF494:
	.string	"best_fri"
.LASF297:
	.string	"g_fid_incomplete_drop_count"
.LASF454:
	.string	"reclaim_and_alloc_frame"
.LASF16:
	.string	"uint16_t"
.LASF41:
	.string	"uvc_state_callback_t"
.LASF419:
	.string	"pkt_cap"
.LASF353:
	.string	"frame_idx"
.LASF468:
	.string	"out_eoi_end"
.LASF264:
	.string	"g_last_fid"
.LASF545:
	.string	"vTaskExitCritical"
.LASF367:
	.string	"buf_size_per_urb"
.LASF524:
	.string	"urb_done_ring_reset"
.LASF234:
	.string	"bcdVDC"
.LASF73:
	.string	"bNumConfigurations"
.LASF471:
	.string	"seg_len"
.LASF45:
	.string	"stream_client_connected"
.LASF554:
	.string	"frame_pool_stats"
.LASF31:
	.string	"CAPTURE_CTRL_RUNNING"
.LASF449:
	.string	"eoi_found"
.LASF200:
	.string	"hintBitmap"
.LASF532:
	.string	"new_state"
.LASF455:
	.string	"reclaimed_any"
.LASF68:
	.string	"idProduct"
.LASF247:
	.string	"g_cam_state"
.LASF315:
	.string	"transactions"
.LASF51:
	.string	"TickType_t"
.LASF309:
	.string	"g_urb_done_tail"
.LASF394:
	.string	"escalate_streak"
.LASF27:
	.string	"CAMERA_UNAVAILABLE"
.LASF121:
	.string	"route"
.LASF280:
	.string	"g_invalid_urb_buf_count"
.LASF520:
	.string	"sanitize_iso_pkt_cap"
.LASF67:
	.string	"idVendor"
.LASF380:
	.string	"alloc_ok"
.LASF332:
	.string	"uvc_dequeue_latest_frame"
.LASF180:
	.string	"int_timer"
.LASF550:
	.string	"memset"
.LASF177:
	.string	"intin"
.LASF446:
	.string	"reclaimed"
.LASF383:
	.string	"frames_now"
.LASF59:
	.string	"usb_device_descriptor"
.LASF261:
	.string	"g_cur_frame_error_pkts"
.LASF88:
	.string	"iInterface"
.LASF30:
	.string	"CAPTURE_CTRL_STARTING"
.LASF305:
	.string	"g_stream_iso_raw_bufs"
.LASF354:
	.string	"alt_mps"
.LASF341:
	.string	"restarting"
.LASF242:
	.string	"dev_type"
.LASF135:
	.string	"handler"
.LASF473:
	.string	"current_alt"
.LASF498:
	.string	"max_formats"
.LASF13:
	.string	"__uintptr_t"
.LASF477:
	.string	"restart_mps_floor_for_mode"
.LASF32:
	.string	"CAPTURE_CTRL_RESTARTING"
.LASF186:
	.string	"usbh_devaddr_map"
.LASF178:
	.string	"intin_urb"
.LASF531:
	.string	"capture_ctrl_set"
.LASF523:
	.string	"note_packet_error_for_current_frame"
.LASF420:
	.string	"urb_base"
.LASF271:
	.string	"g_iso_pkts_per_urb_active"
.LASF399:
	.string	"pending_count"
.LASF517:
	.string	"iso_ep_layout_from_ep"
.LASF63:
	.string	"bDeviceClass"
.LASF388:
	.string	"progressed"
.LASF213:
	.string	"bMaxVersion"
.LASF239:
	.string	"name"
.LASF544:
	.string	"vTaskEnterCritical"
.LASF528:
	.string	"stopping"
.LASF551:
	.string	"usbh_submit_urb"
.LASF117:
	.string	"port"
.LASF58:
	.string	"usb_setup_packet"
.LASF151:
	.string	"driver_name"
.LASF82:
	.string	"bInterfaceNumber"
.LASF370:
	.string	"chosen_pkts_per_urb"
.LASF267:
	.string	"g_urb_payload_completions"
.LASF188:
	.string	"usbh_hcd"
.LASF232:
	.string	"is_opened"
.LASF2:
	.string	"short int"
.LASF19:
	.string	"uint64_t"
.LASF402:
	.string	"reopen_alt"
.LASF233:
	.string	"current_format"
.LASF482:
	.string	"best_single_mps"
.LASF141:
	.string	"bNbrPorts"
.LASF251:
	.string	"g_stream_stop"
.LASF203:
	.string	"hintUnion1"
.LASF134:
	.string	"usb_osal_timer"
.LASF254:
	.string	"g_active_session_id"
.LASF163:
	.string	"usbh_configuration"
.LASF270:
	.string	"g_iso_cb_queue_drop_count"
.LASF277:
	.string	"g_pkt_len_clamp_count"
.LASF42:
	.string	"frames_dequeued"
.LASF457:
	.string	"find_jpeg_eoi"
.LASF456:
	.string	"queued_before"
.LASF279:
	.string	"g_pkt_desc_repair_count"
.LASF317:
	.string	"iso_ep_layout_t"
.LASF501:
	.string	"score"
.LASF125:
	.string	"raw_config_desc"
.LASF26:
	.string	"CAMERA_STREAMING"
.LASF22:
	.string	"timestamp_ms"
.LASF450:
	.string	"eoi_end_len"
.LASF403:
	.string	"reopen"
.LASF217:
	.string	"dwDefaultFrameInterval"
.LASF344:
	.string	"uvc_get_frames_captured"
.LASF273:
	.string	"g_frame_reclaim_count"
.LASF527:
	.string	"capture_ctrl_is_stopping"
.LASF148:
	.string	"bHubHdrDecLat"
.LASF330:
	.string	"uvc_register_state_callback"
.LASF255:
	.string	"g_cli_session_id"
.LASF221:
	.string	"format_type"
.LASF374:
	.string	"pkt_try"
.LASF424:
	.string	"saw_pkt_error"
.LASF568:
	.string	"uvc_stop_capture_session"
.LASF535:
	.string	"addr"
.LASF451:
	.string	"eoi_off"
.LASF223:
	.string	"usbh_video"
.LASF18:
	.string	"uint32_t"
.LASF519:
	.string	"decode_wmax_mps"
.LASF231:
	.string	"isoout_mps"
.LASF442:
	.string	"fid_toggled"
.LASF526:
	.string	"capture_ctrl_enter_restarting"
.LASF80:
	.string	"bMaxPower"
.LASF525:
	.string	"capture_ctrl_mark_running_if_owned"
.LASF352:
	.string	"format_idx"
.LASF360:
	.string	"iso_layout"
.LASF319:
	.string	"__fsym_cam_info"
.LASF198:
	.string	"reserved"
.LASF269:
	.string	"g_transport_restart_attempts"
.LASF443:
	.string	"soi_off"
.LASF102:
	.string	"usbh_urb"
.LASF143:
	.string	"bPwrOn2PwrGood"
.LASF157:
	.string	"intf_desc"
.LASF5:
	.string	"short unsigned int"
.LASF378:
	.string	"try_total_bytes"
.LASF397:
	.string	"pool_queued"
.LASF136:
	.string	"argument"
.LASF391:
	.string	"slot"
.LASF237:
	.string	"user_data"
.LASF131:
	.string	"usb_osal_mutex_t"
.LASF562:
	.string	"vPortFree"
.LASF465:
	.string	"saw_sos"
.LASF146:
	.string	"PortPwrCtrlMask"
.LASF6:
	.string	"__int32_t"
.LASF128:
	.string	"ep0_urb"
.LASF433:
	.string	"streaming_task"
.LASF169:
	.string	"hub_addr"
.LASF33:
	.string	"CAPTURE_CTRL_STOPPING"
.LASF428:
	.string	"pkt_base"
.LASF504:
	.string	"out_urb"
.LASF303:
	.string	"g_transport_restart_count"
.LASF119:
	.string	"speed"
.LASF296:
	.string	"g_resync_soi_count"
.LASF212:
	.string	"bMinVersion"
.LASF93:
	.string	"next"
.LASF21:
	.string	"data"
.LASF133:
	.string	"usb_timer_handler_t"
.LASF116:
	.string	"connected"
.LASF287:
	.string	"g_payload_pkt_count"
.LASF253:
	.string	"g_capture_session_seq"
.LASF230:
	.string	"commit"
.LASF266:
	.string	"g_frames_captured"
.LASF379:
	.string	"free_before"
.LASF346:
	.string	"uvc_get_camera_state"
.LASF345:
	.string	"uvc_get_mode"
.LASF408:
	.string	"old_mps"
.LASF36:
	.string	"height"
.LASF171:
	.string	"powerdelay"
.LASF541:
	.string	"frame_queue_drain"
.LASF185:
	.string	"hub_mq"
	.ident	"GCC: (GNU) 10.4.0"
