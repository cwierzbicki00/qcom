	.file	"sd_handler.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.handle_lsn_sd.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"<3>Accept RTSP connection error"
	.align	2
.LC1:
	.string	"Accept one connection from [%s:%d] ^_^\r\n"
	.align	2
.LC2:
	.string	"Set RTSP socket option [TCP_NODELAY] error"
	.section	.text.handle_lsn_sd,"ax",@progbits
	.align	1
	.globl	handle_lsn_sd
	.type	handle_lsn_sd, @function
handle_lsn_sd:
.LFB40:
	.file 1 ".\\components\\net\\lib\\rtsp\\src\\sd_handler.c"
	.loc 1 29 1
	.cfi_startproc
.LVL0:
	.loc 1 30 5
	.loc 1 29 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s0,56(sp)
	.cfi_offset 8, -8
	.loc 1 30 22
	lw	s0,12(a0)
.LVL1:
	.loc 1 31 5 is_stmt 1
	.loc 1 32 5
	.loc 1 33 5
	.loc 1 34 5
	.loc 1 34 15 is_stmt 0
	li	a5,1
	.loc 1 36 5
	li	a2,16
	li	a1,0
.LVL2:
	addi	a0,sp,32
.LVL3:
	.loc 1 29 1
	sw	ra,60(sp)
	.cfi_offset 1, -4
	.loc 1 34 15
	sw	a5,28(sp)
	.loc 1 36 5 is_stmt 1
	call	memset
.LVL4:
	.loc 1 37 5
	.loc 1 38 15 is_stmt 0
	lw	a0,4(s0)
	.loc 1 37 16
	li	a5,16
	.loc 1 38 15
	addi	a2,sp,24
	addi	a1,sp,32
	.loc 1 37 16
	sw	a5,24(sp)
	.loc 1 38 5 is_stmt 1
	.loc 1 38 15 is_stmt 0
	call	lwip_accept
.LVL5:
	.loc 1 39 5 is_stmt 1
	.loc 1 39 8 is_stmt 0
	bge	a0,zero,.L2
	.loc 1 40 9 is_stmt 1
	lui	a0,%hi(.LC0)
.LVL6:
	addi	a0,a0,%lo(.LC0)
.LVL7:
.L8:
	.loc 1 54 9 is_stmt 0
	call	printf
.LVL8:
	j	.L7
.LVL9:
.L2:
	mv	s0,a0
.LVL10:
	.loc 1 43 5 is_stmt 1
	addi	a0,sp,36
.LVL11:
	call	ip4addr_ntoa
.LVL12:
	sw	a0,12(sp)
	.loc 1 44 66 is_stmt 0
	lhu	a0,34(sp)
	call	lwip_htons
.LVL13:
	.loc 1 43 5
	lw	a1,12(sp)
	.loc 1 44 66
	mv	a2,a0
	.loc 1 43 5
	lui	a0,%hi(.LC1)
	addi	a0,a0,%lo(.LC1)
	call	printf
.LVL14:
	.loc 1 47 5 is_stmt 1
	.loc 1 47 9 is_stmt 0
	li	a1,0
	mv	a0,s0
	call	set_block_mode
.LVL15:
	.loc 1 47 8
	bge	a0,zero,.L4
	.loc 1 48 9 is_stmt 1
	mv	a0,s0
	call	lwip_close
.LVL16:
	.loc 1 49 9
.L7:
	.loc 1 55 9
	.loc 1 55 16 is_stmt 0
	li	a0,-1
.L1:
	.loc 1 62 1
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL17:
.L4:
	.cfi_restore_state
	.loc 1 52 5 is_stmt 1
	.loc 1 52 9 is_stmt 0
	li	a4,4
	addi	a3,sp,28
	li	a2,1
	li	a1,6
	mv	a0,s0
	call	lwip_setsockopt
.LVL18:
	.loc 1 52 8
	bge	a0,zero,.L5
	.loc 1 54 9 is_stmt 1
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	j	.L8
.L5:
	.loc 1 58 5
	li	a1,3
	mv	a0,s0
	call	monitor_sd_event
.LVL19:
	.loc 1 60 5
	mv	a0,s0
	call	create_rtsp_sess
.LVL20:
	.loc 1 61 5
	.loc 1 61 12 is_stmt 0
	li	a0,0
	j	.L1
	.cfi_endproc
.LFE40:
	.size	handle_lsn_sd, .-handle_lsn_sd
	.section	.rodata.handle_rtsp_sd.str1.4,"aMS",@progbits,1
	.align	2
.LC3:
	.string	"<4>Receive buffer seems not enough!\r\n"
	.section	.text.handle_rtsp_sd,"ax",@progbits
	.align	1
	.globl	handle_rtsp_sd
	.type	handle_rtsp_sd, @function
handle_rtsp_sd:
.LFB42:
	.loc 1 117 1 is_stmt 1
	.cfi_startproc
.LVL21:
	.loc 1 118 5
	.loc 1 117 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	ra,28(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.loc 1 121 15
	andi	a5,a1,1
	.loc 1 118 23
	lw	s0,12(a0)
.LVL22:
	.loc 1 119 5 is_stmt 1
	.loc 1 121 5
	.loc 1 117 1 is_stmt 0
	mv	s1,a1
	.loc 1 121 8
	beq	a5,zero,.L15
.LBB18:
.LBB19:
	.loc 1 76 73
	li	s3,102400
.LVL23:
.L11:
	.loc 1 75 5 is_stmt 1
	.loc 1 75 20 is_stmt 0
	lw	a1,40(s0)
	.loc 1 76 10
	lw	a0,24(s0)
	li	a3,0
	.loc 1 75 46
	lbu	a5,0(a1)
	addi	a5,a5,-36
	seqz	a5,a5
.LVL24:
	.loc 1 76 5 is_stmt 1
	.loc 1 76 73 is_stmt 0
	sub	s2,s3,a5
	.loc 1 76 10
	mv	a2,s2
	add	a1,a1,a5
	call	lwip_recv
.LVL25:
	.loc 1 79 5 is_stmt 1
	.loc 1 79 8 is_stmt 0
	bgt	a0,zero,.L12
	.loc 1 81 9 is_stmt 1
	.loc 1 81 28 is_stmt 0
	lw	a5,40(s0)
	.loc 1 81 12
	lbu	a5,0(a5)
	bne	a5,zero,.L27
.LBB20:
	.loc 1 82 13 is_stmt 1
	li	a0,10
.LVL26:
	call	vTaskDelay
.LVL27:
	.loc 1 83 13
	j	.L11
.LVL28:
.L12:
.LBE20:
	.loc 1 86 12
	.loc 1 86 15 is_stmt 0
	bne	s2,a0,.L14
	.loc 1 87 9 is_stmt 1
	lui	a0,%hi(.LC3)
.LVL29:
	addi	a0,a0,%lo(.LC3)
	call	printf
.LVL30:
	.loc 1 88 9
.L15:
.LBE19:
.LBE18:
	.loc 1 128 5
	.loc 1 128 15 is_stmt 0
	andi	s1,s1,2
.LVL31:
	.loc 1 128 8
	beq	s1,zero,.L18
	.loc 1 129 9 is_stmt 1
	.loc 1 134 36 is_stmt 0
	lw	a5,28(s0)
	li	a1,31
	bne	a5,zero,.L20
	li	a1,1
.L20:
.LVL32:
	.loc 1 136 9 is_stmt 1
	.loc 1 136 13 is_stmt 0
	mv	a0,s0
	call	consume_send_buf
.LVL33:
	.loc 1 136 12
	bge	a0,zero,.L18
.L27:
	.loc 1 137 13 is_stmt 1
	mv	a0,s0
	call	destroy_rtsp_sess
.LVL34:
.L18:
	.loc 1 141 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL35:
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
	li	a0,0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL36:
.L14:
	.cfi_restore_state
.LBB24:
.LBB23:
	.loc 1 91 5 is_stmt 1
	.loc 1 91 15 is_stmt 0
	lw	a4,40(s0)
	.loc 1 91 8
	li	a3,36
	.loc 1 91 25
	lbu	a5,0(a4)
	.loc 1 91 8
	bne	a5,a3,.L16
	.loc 1 91 37
	li	a5,1
	beq	a0,a5,.L15
	.loc 1 94 12 is_stmt 1
	.loc 1 95 9
	mv	a0,s0
.LVL37:
	call	handle_rtcp_pkt
.LVL38:
	.loc 1 96 9
	.loc 1 96 14 is_stmt 0
	lw	a5,40(s0)
	.loc 1 96 28
	sb	zero,0(a5)
	j	.L15
.LVL39:
.L16:
	.loc 1 94 12 is_stmt 1
	.loc 1 97 12
.LBB21:
.LBB22:
	.loc 1 16 5
	.loc 1 20 5
	.loc 1 20 27 is_stmt 0
	addi	a5,a5,-65
.LBE22:
.LBE21:
	.loc 1 97 15
	andi	a5,a5,0xff
	li	a3,25
	bgtu	a5,a3,.L17
	.loc 1 99 9 is_stmt 1
	lui	a0,%hi(handle_rtsp_req)
.LVL40:
	li	a2,0
	mv	a1,s0
	addi	a0,a0,%lo(handle_rtsp_req)
	call	create_delay_task
.LVL41:
	j	.L15
.LVL42:
.L17:
	.loc 1 102 9
	.loc 1 102 28 is_stmt 0
	sb	zero,0(a4)
.LVL43:
	j	.L15
.LBE23:
.LBE24:
	.cfi_endproc
.LFE42:
	.size	handle_rtsp_sd, .-handle_rtsp_sd
	.section	.text.handle_rtp_sd,"ax",@progbits
	.align	1
	.globl	handle_rtp_sd
	.type	handle_rtp_sd, @function
handle_rtp_sd:
.LFB43:
	.loc 1 151 1 is_stmt 1
	.cfi_startproc
.LVL44:
	.loc 1 152 5
	.loc 1 151 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	.loc 1 152 23
	lw	s0,12(a0)
.LVL45:
	.loc 1 153 5 is_stmt 1
	.loc 1 154 5
	.loc 1 154 8 is_stmt 0
	lw	a3,8(a0)
	.loc 1 151 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 154 8
	lw	a4,100(s0)
	.loc 1 151 1
	mv	a5,a1
	.loc 1 157 14
	li	a1,4
.LVL46:
	.loc 1 154 8
	bne	a3,a4,.L29
	li	a1,2
.L29:
.LVL47:
	.loc 1 159 5 is_stmt 1
	.loc 1 159 15 is_stmt 0
	andi	a5,a5,2
.LVL48:
	.loc 1 159 8
	beq	a5,zero,.L31
	.loc 1 160 9 is_stmt 1
	.loc 1 160 13 is_stmt 0
	mv	a0,s0
.LVL49:
	call	consume_send_buf
.LVL50:
	.loc 1 160 12
	bge	a0,zero,.L31
	.loc 1 161 13 is_stmt 1
	mv	a0,s0
	call	destroy_rtsp_sess
.LVL51:
.L31:
	.loc 1 165 5
	.loc 1 166 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL52:
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE43:
	.size	handle_rtp_sd, .-handle_rtp_sd
	.section	.text.handle_rtcp_sd,"ax",@progbits
	.align	1
	.globl	handle_rtcp_sd
	.type	handle_rtcp_sd, @function
handle_rtcp_sd:
.LFB44:
	.loc 1 176 1 is_stmt 1
	.cfi_startproc
.LVL53:
	.loc 1 177 5
	.loc 1 178 1 is_stmt 0
	li	a0,0
.LVL54:
	ret
	.cfi_endproc
.LFE44:
	.size	handle_rtcp_sd, .-handle_rtcp_sd
	.section	.text.do_sd_handler,"ax",@progbits
	.align	1
	.globl	do_sd_handler
	.type	do_sd_handler, @function
do_sd_handler:
.LFB45:
	.loc 1 181 1 is_stmt 1
	.cfi_startproc
.LVL55:
	.loc 1 182 5
	.loc 1 185 5
.LBB25:
	.loc 1 185 18
	.loc 1 185 59 is_stmt 0
	lui	a5,%hi(rtsp_srv+28)
	lw	a5,%lo(rtsp_srv+28)(a5)
.LVL56:
	.loc 1 185 105 is_stmt 1
.LBE25:
	.loc 1 185 5 is_stmt 0
	lui	a4,%hi(rtsp_srv+28)
	addi	a4,a4,%lo(rtsp_srv+28)
.LVL57:
.L38:
	.loc 1 185 11 is_stmt 1 discriminator 1
	.loc 1 185 5 is_stmt 0 discriminator 1
	bne	a5,a4,.L40
	.loc 1 193 1
	ret
.L40:
	.loc 1 186 9 is_stmt 1
	.loc 1 186 12 is_stmt 0
	lw	a3,8(a5)
	bne	a3,a0,.L39
	.loc 1 187 13 is_stmt 1
	lw	a4,16(a5)
.LVL58:
	mv	a0,a5
.LVL59:
	jr	a4
.LVL60:
.L39:
	.loc 1 185 54 discriminator 2
.LBB26:
	.loc 1 185 62 discriminator 2
	.loc 1 185 103 is_stmt 0 discriminator 2
	lw	a5,0(a5)
.LVL61:
	.loc 1 185 130 is_stmt 1 discriminator 2
	j	.L38
.LBE26:
	.cfi_endproc
.LFE45:
	.size	do_sd_handler, .-do_sd_handler
	.section	.rodata.register_sd_handler.str1.4,"aMS",@progbits,1
	.align	2
.LC4:
	.string	"<3>Allocate memory for struct sd_handler failed!\r\n"
	.section	.text.register_sd_handler,"ax",@progbits
	.align	1
	.globl	register_sd_handler
	.type	register_sd_handler, @function
register_sd_handler:
.LFB46:
	.loc 1 199 1
	.cfi_startproc
.LVL62:
	.loc 1 200 5
	.loc 1 202 5
.LBB27:
	.loc 1 202 13
.LBE27:
	.loc 1 199 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s3,12(sp)
	.cfi_offset 19, -20
	mv	s3,a0
.LBB28:
	.loc 1 202 25
	li	a0,20
.LVL63:
.LBE28:
	.loc 1 199 1
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 199 1
	mv	s1,a1
	mv	s2,a2
.LBB29:
	.loc 1 202 25
	call	malloc
.LVL64:
	.loc 1 202 46 is_stmt 1
	.loc 1 202 49 is_stmt 0
	beq	a0,zero,.L42
	.loc 1 202 57 discriminator 1
	li	a2,20
	li	a1,0
	mv	s0,a0
	.loc 1 202 57 is_stmt 1 discriminator 1
	call	memset
.LVL65:
	.loc 1 202 88 discriminator 1
.LBE29:
	.loc 1 203 5 discriminator 1
	.loc 1 208 5 discriminator 1
.LBB30:
.LBB31:
	.file 2 ".\\components\\net\\lib\\rtsp\\src\\list.h"
	.loc 2 97 2 is_stmt 0 discriminator 1
	lui	a5,%hi(rtsp_srv)
	addi	a5,a5,%lo(rtsp_srv)
	lw	a4,32(a5)
.LBB32:
.LBB33:
	.loc 2 68 13 discriminator 1
	sw	s0,32(a5)
	.loc 2 69 12 discriminator 1
	lui	a5,%hi(rtsp_srv+28)
	addi	a5,a5,%lo(rtsp_srv+28)
.LBE33:
.LBE32:
.LBE31:
.LBE30:
	.loc 1 208 12 discriminator 1
	sw	s3,8(s0)
	.loc 1 209 5 is_stmt 1 discriminator 1
	.loc 1 209 13 is_stmt 0 discriminator 1
	sw	s2,12(s0)
	.loc 1 210 5 is_stmt 1 discriminator 1
	.loc 1 210 14 is_stmt 0 discriminator 1
	sw	s1,16(s0)
	.loc 1 211 5 is_stmt 1 discriminator 1
.LVL66:
.LBB37:
.LBB36:
	.loc 2 97 2 discriminator 1
.LBB35:
.LBB34:
	.loc 2 68 2 discriminator 1
	.loc 2 69 2 discriminator 1
	.loc 2 69 12 is_stmt 0 discriminator 1
	sw	a5,0(s0)
	.loc 2 70 2 is_stmt 1 discriminator 1
	.loc 2 70 12 is_stmt 0 discriminator 1
	sw	a4,4(s0)
	.loc 2 71 2 is_stmt 1 discriminator 1
	.loc 2 71 13 is_stmt 0 discriminator 1
	sw	s0,0(a4)
.LVL67:
.LBE34:
.LBE35:
.LBE36:
.LBE37:
	.loc 1 212 5 is_stmt 1 discriminator 1
	.loc 1 212 12 is_stmt 0 discriminator 1
	li	a0,0
.LVL68:
.L41:
	.loc 1 213 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
.LVL69:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL70:
	lw	s3,12(sp)
	.cfi_restore 19
.LVL71:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL72:
.L42:
	.cfi_restore_state
.LBB38:
	.loc 1 202 88 is_stmt 1
.LBE38:
	.loc 1 203 5
	.loc 1 204 9
	lui	a0,%hi(.LC4)
.LVL73:
	addi	a0,a0,%lo(.LC4)
	call	printf
.LVL74:
	.loc 1 205 9
	.loc 1 205 16 is_stmt 0
	li	a0,-1
	j	.L41
	.cfi_endproc
.LFE46:
	.size	register_sd_handler, .-register_sd_handler
	.section	.text.deregister_sd_handler,"ax",@progbits
	.align	1
	.globl	deregister_sd_handler
	.type	deregister_sd_handler, @function
deregister_sd_handler:
.LFB47:
	.loc 1 219 1 is_stmt 1
	.cfi_startproc
.LVL75:
	.loc 1 220 5
	.loc 1 222 5
	.loc 1 219 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 219 1
	mv	s0,a0
	.loc 1 222 5
	call	unmonitor_sd_event
.LVL76:
	.loc 1 224 5 is_stmt 1
.LBB45:
	.loc 1 224 18
	.loc 1 224 59 is_stmt 0
	lui	a5,%hi(rtsp_srv+28)
	lw	a0,%lo(rtsp_srv+28)(a5)
.LVL77:
	.loc 1 224 105 is_stmt 1
.LBE45:
	.loc 1 224 5 is_stmt 0
	addi	a5,a5,%lo(rtsp_srv+28)
.LVL78:
.L46:
	.loc 1 224 11 is_stmt 1 discriminator 1
	.loc 1 224 5 is_stmt 0 discriminator 1
	bne	a0,a5,.L47
	.loc 1 232 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL79:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL80:
.L47:
	.cfi_restore_state
	.loc 1 225 9 is_stmt 1
	.loc 1 225 12 is_stmt 0
	lw	a3,8(a0)
.LBB46:
.LBB47:
	.loc 2 126 2
	lw	a4,0(a0)
.LBE47:
.LBE46:
	.loc 1 225 12
	bne	a3,s0,.L48
	.loc 1 226 13 is_stmt 1
.LVL81:
.LBB55:
.LBB52:
	.loc 2 126 2
	lw	a5,4(a0)
.LVL82:
.LBB48:
.LBB49:
	.loc 2 109 2
.LBE49:
.LBE48:
.LBE52:
.LBE55:
	.loc 1 232 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL83:
	lw	ra,12(sp)
	.cfi_restore 1
.LBB56:
.LBB53:
.LBB51:
.LBB50:
	.loc 2 109 13
	sw	a5,4(a4)
	.loc 2 110 2 is_stmt 1
	.loc 2 110 13 is_stmt 0
	sw	a4,0(a5)
.LVL84:
.LBE50:
.LBE51:
	.loc 2 127 2 is_stmt 1
	.loc 2 127 14 is_stmt 0
	li	a5,1048576
	addi	a5,a5,256
	sw	a5,0(a0)
	.loc 2 128 2 is_stmt 1
	.loc 2 128 14 is_stmt 0
	li	a5,2097152
	addi	a5,a5,512
	sw	a5,4(a0)
.LVL85:
.LBE53:
.LBE56:
	.loc 1 227 13 is_stmt 1
	.loc 1 227 26
	.loc 1 232 1 is_stmt 0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 227 26
	tail	free
.LVL86:
.L48:
	.cfi_restore_state
.LBB57:
.LBB54:
	.loc 2 126 2
	mv	a0,a4
.LVL87:
	j	.L46
.LBE54:
.LBE57:
	.cfi_endproc
.LFE47:
	.size	deregister_sd_handler, .-deregister_sd_handler
	.section	.text.init_sd_handler_list,"ax",@progbits
	.align	1
	.globl	init_sd_handler_list
	.type	init_sd_handler_list, @function
init_sd_handler_list:
.LFB48:
	.loc 1 235 1 is_stmt 1
	.cfi_startproc
	.loc 1 236 5
.LVL88:
.LBB58:
.LBB59:
	.loc 2 54 2
	.loc 2 54 13 is_stmt 0
	lui	a5,%hi(rtsp_srv)
	lui	a4,%hi(rtsp_srv+28)
	addi	a5,a5,%lo(rtsp_srv)
	addi	a4,a4,%lo(rtsp_srv+28)
	sw	a4,28(a5)
	.loc 2 55 2 is_stmt 1
	.loc 2 55 13 is_stmt 0
	sw	a4,32(a5)
.LVL89:
.LBE59:
.LBE58:
	.loc 1 237 5 is_stmt 1
	.loc 1 238 1 is_stmt 0
	ret
	.cfi_endproc
.LFE48:
	.size	init_sd_handler_list, .-init_sd_handler_list
	.section	.text.deinit_sd_handler_list,"ax",@progbits
	.align	1
	.globl	deinit_sd_handler_list
	.type	deinit_sd_handler_list, @function
deinit_sd_handler_list:
.LFB49:
	.loc 1 241 1 is_stmt 1
	.cfi_startproc
	.loc 1 242 5
.LVL90:
	.loc 1 243 5
	.loc 1 245 5
.LBB67:
	.loc 1 245 18
	.loc 1 245 59 is_stmt 0
	lui	a5,%hi(rtsp_srv+28)
	lw	a0,%lo(rtsp_srv+28)(a5)
.LVL91:
	.loc 1 245 105 is_stmt 1
.LBE67:
.LBB68:
	.loc 1 245 20
.LBE68:
	.loc 1 241 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s1,20(sp)
	.cfi_offset 9, -12
.LBB69:
	.loc 1 245 61
	lw	s1,0(a0)
.LVL92:
	.loc 1 245 88 is_stmt 1
.LBE69:
	.loc 1 241 1 is_stmt 0
	sw	s2,16(sp)
	sw	s3,12(sp)
	.cfi_offset 18, -16
	.cfi_offset 19, -20
.LBB70:
.LBB71:
	.loc 2 127 14
	li	s2,1048576
	.loc 2 128 14
	li	s3,2097152
.LBE71:
.LBE70:
	.loc 1 241 1
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 245 5
	addi	s0,a5,%lo(rtsp_srv+28)
.LBB76:
.LBB74:
	.loc 2 127 14
	addi	s2,s2,256
	.loc 2 128 14
	addi	s3,s3,512
.LVL93:
.L52:
.LBE74:
.LBE76:
	.loc 1 245 11 is_stmt 1 discriminator 1
	.loc 1 245 5 is_stmt 0 discriminator 1
	bne	a0,s0,.L53
	.loc 1 250 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
.LVL94:
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL95:
.L53:
	.cfi_restore_state
	.loc 1 246 9 is_stmt 1
.LBB77:
.LBB75:
	.loc 2 126 2
	lw	a5,4(a0)
	lw	a4,0(a0)
.LVL96:
.LBB72:
.LBB73:
	.loc 2 109 2
	.loc 2 109 13 is_stmt 0
	sw	a5,4(a4)
	.loc 2 110 2 is_stmt 1
	.loc 2 110 13 is_stmt 0
	sw	a4,0(a5)
.LVL97:
.LBE73:
.LBE72:
	.loc 2 127 2 is_stmt 1
	.loc 2 127 14 is_stmt 0
	sw	s2,0(a0)
	.loc 2 128 2 is_stmt 1
	.loc 2 128 14 is_stmt 0
	sw	s3,4(a0)
.LVL98:
.LBE75:
.LBE77:
	.loc 1 247 9 is_stmt 1
	.loc 1 247 22
	call	free
.LVL99:
	.loc 1 247 32
	.loc 1 245 54
.LBB78:
	.loc 1 245 73
	.loc 1 245 143
	.loc 1 245 115 is_stmt 0
	mv	a0,s1
.LBE78:
	.loc 1 245 68
	lw	s1,0(s1)
.LVL100:
	j	.L52
	.cfi_endproc
.LFE49:
	.size	deinit_sd_handler_list, .-deinit_sd_handler_list
	.text
.Letext0:
	.file 3 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\machine\\_default_types.h"
	.file 4 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\sys\\_types.h"
	.file 5 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\sys\\_stdint.h"
	.file 6 ".\\components\\libc\\sys\\types.h"
	.file 7 ".\\components\\net\\lwip\\lwip\\src\\include/lwip/arch.h"
	.file 8 ".\\components\\net\\lwip\\lwip\\src\\include/lwip/ip4_addr.h"
	.file 9 ".\\components\\net\\lwip\\lwip\\src\\include/lwip/inet.h"
	.file 10 ".\\components\\net\\lwip\\lwip\\src\\include/lwip/sockets.h"
	.file 11 ".\\components\\net\\lib\\rtsp\\src\\util.h"
	.file 12 ".\\components\\net\\lib\\rtsp\\src\\rtsp_srv.h"
	.file 13 ".\\components\\net\\lib\\rtsp\\inc\\librtspsrv.h"
	.file 14 ".\\components\\net\\lib\\rtsp\\src\\rtp.h"
	.file 15 ".\\components\\net\\lib\\rtsp\\src\\rtsp_sess.h"
	.file 16 ".\\components\\net\\lib\\rtsp\\src\\delay_task.h"
	.file 17 ".\\components\\net\\lib\\rtsp\\src\\sd_handler.h"
	.file 18 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\stdlib.h"
	.file 19 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\string.h"
	.file 20 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\stdio.h"
	.file 21 ".\\components\\net\\lib\\rtsp\\src\\rtcp.h"
	.file 22 ".\\components\\net\\lwip\\lwip\\src\\include/lwip/def.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1391
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF232
	.byte	0xc
	.4byte	.LASF233
	.4byte	.LASF234
	.4byte	.Ldebug_ranges0+0xe8
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x4
	.4byte	.LASF3
	.byte	0x3
	.byte	0x2b
	.byte	0x17
	.4byte	0x3f
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x4
	.4byte	.LASF4
	.byte	0x3
	.byte	0x39
	.byte	0x1c
	.4byte	0x59
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.byte	0x4
	.4byte	.LASF7
	.byte	0x3
	.byte	0x4f
	.byte	0x1b
	.4byte	0x73
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x4
	.4byte	.LASF12
	.byte	0x4
	.byte	0x93
	.byte	0x14
	.4byte	0x25
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
	.byte	0x8
	.4byte	0xa3
	.4byte	0xc5
	.byte	0x9
	.4byte	0x88
	.byte	0x7
	.byte	0
	.byte	0x4
	.4byte	.LASF14
	.byte	0x5
	.byte	0x18
	.byte	0x13
	.4byte	0x33
	.byte	0x4
	.4byte	.LASF15
	.byte	0x5
	.byte	0x30
	.byte	0x14
	.4byte	0x67
	.byte	0x4
	.4byte	.LASF16
	.byte	0x6
	.byte	0x37
	.byte	0x14
	.4byte	0x67
	.byte	0x4
	.4byte	.LASF17
	.byte	0x6
	.byte	0x3c
	.byte	0x14
	.4byte	0x4d
	.byte	0x4
	.4byte	.LASF18
	.byte	0x6
	.byte	0xb8
	.byte	0x12
	.4byte	0x8f
	.byte	0x4
	.4byte	.LASF19
	.byte	0x7
	.byte	0x7d
	.byte	0x11
	.4byte	0xc5
	.byte	0x4
	.4byte	.LASF20
	.byte	0x7
	.byte	0x81
	.byte	0x12
	.4byte	0xd1
	.byte	0xa
	.4byte	.LASF22
	.byte	0x4
	.byte	0x8
	.byte	0x33
	.byte	0x8
	.4byte	0x134
	.byte	0xb
	.4byte	.LASF24
	.byte	0x8
	.byte	0x34
	.byte	0x9
	.4byte	0x10d
	.byte	0
	.byte	0
	.byte	0x4
	.4byte	.LASF21
	.byte	0x8
	.byte	0x39
	.byte	0x19
	.4byte	0x119
	.byte	0xa
	.4byte	.LASF23
	.byte	0x4
	.byte	0x9
	.byte	0x3f
	.byte	0x8
	.4byte	0x15b
	.byte	0xb
	.4byte	.LASF25
	.byte	0x9
	.byte	0x40
	.byte	0xd
	.4byte	0xdd
	.byte	0
	.byte	0
	.byte	0x4
	.4byte	.LASF26
	.byte	0xa
	.byte	0x44
	.byte	0xe
	.4byte	0x101
	.byte	0xa
	.4byte	.LASF27
	.byte	0x10
	.byte	0xa
	.byte	0x4e
	.byte	0x8
	.4byte	0x1b6
	.byte	0xb
	.4byte	.LASF28
	.byte	0xa
	.byte	0x4f
	.byte	0x8
	.4byte	0x101
	.byte	0
	.byte	0xb
	.4byte	.LASF29
	.byte	0xa
	.byte	0x50
	.byte	0xf
	.4byte	0x15b
	.byte	0x1
	.byte	0xb
	.4byte	.LASF30
	.byte	0xa
	.byte	0x51
	.byte	0xd
	.4byte	0xe9
	.byte	0x2
	.byte	0xb
	.4byte	.LASF31
	.byte	0xa
	.byte	0x52
	.byte	0x12
	.4byte	0x140
	.byte	0x4
	.byte	0xb
	.4byte	.LASF32
	.byte	0xa
	.byte	0x54
	.byte	0x8
	.4byte	0xb5
	.byte	0x8
	.byte	0
	.byte	0xa
	.4byte	.LASF33
	.byte	0x10
	.byte	0xa
	.byte	0x63
	.byte	0x8
	.4byte	0x1eb
	.byte	0xb
	.4byte	.LASF34
	.byte	0xa
	.byte	0x64
	.byte	0x8
	.4byte	0x101
	.byte	0
	.byte	0xb
	.4byte	.LASF35
	.byte	0xa
	.byte	0x65
	.byte	0xf
	.4byte	0x15b
	.byte	0x1
	.byte	0xb
	.4byte	.LASF36
	.byte	0xa
	.byte	0x66
	.byte	0x8
	.4byte	0x1eb
	.byte	0x2
	.byte	0
	.byte	0x8
	.4byte	0xa3
	.4byte	0x1fb
	.byte	0x9
	.4byte	0x88
	.byte	0xd
	.byte	0
	.byte	0x4
	.4byte	.LASF37
	.byte	0xa
	.byte	0x76
	.byte	0xf
	.4byte	0x10d
	.byte	0xa
	.4byte	.LASF38
	.byte	0x8
	.byte	0x2
	.byte	0x2b
	.byte	0x8
	.4byte	0x22f
	.byte	0xb
	.4byte	.LASF39
	.byte	0x2
	.byte	0x2c
	.byte	0x14
	.4byte	0x234
	.byte	0
	.byte	0xb
	.4byte	.LASF40
	.byte	0x2
	.byte	0x2c
	.byte	0x1b
	.4byte	0x234
	.byte	0x4
	.byte	0
	.byte	0x7
	.4byte	0x207
	.byte	0x6
	.byte	0x4
	.4byte	0x207
	.byte	0xc
	.4byte	.LASF84
	.byte	0x7
	.byte	0x2
	.4byte	0x59
	.byte	0xb
	.byte	0x13
	.byte	0x6
	.4byte	0x37c
	.byte	0xd
	.4byte	.LASF41
	.byte	0x64
	.byte	0xe
	.string	"OK"
	.byte	0xc8
	.byte	0xd
	.4byte	.LASF42
	.byte	0xc9
	.byte	0xd
	.4byte	.LASF43
	.byte	0xfa
	.byte	0xf
	.4byte	.LASF44
	.2byte	0x12c
	.byte	0xf
	.4byte	.LASF45
	.2byte	0x12d
	.byte	0xf
	.4byte	.LASF46
	.2byte	0x12e
	.byte	0xf
	.4byte	.LASF47
	.2byte	0x12f
	.byte	0xf
	.4byte	.LASF48
	.2byte	0x130
	.byte	0xf
	.4byte	.LASF49
	.2byte	0x131
	.byte	0xf
	.4byte	.LASF50
	.2byte	0x190
	.byte	0xf
	.4byte	.LASF51
	.2byte	0x191
	.byte	0xf
	.4byte	.LASF52
	.2byte	0x192
	.byte	0xf
	.4byte	.LASF53
	.2byte	0x193
	.byte	0xf
	.4byte	.LASF54
	.2byte	0x194
	.byte	0xf
	.4byte	.LASF55
	.2byte	0x195
	.byte	0xf
	.4byte	.LASF56
	.2byte	0x196
	.byte	0xf
	.4byte	.LASF57
	.2byte	0x197
	.byte	0xf
	.4byte	.LASF58
	.2byte	0x198
	.byte	0xf
	.4byte	.LASF59
	.2byte	0x19a
	.byte	0xf
	.4byte	.LASF60
	.2byte	0x19b
	.byte	0xf
	.4byte	.LASF61
	.2byte	0x19c
	.byte	0xf
	.4byte	.LASF62
	.2byte	0x19d
	.byte	0xf
	.4byte	.LASF63
	.2byte	0x19e
	.byte	0xf
	.4byte	.LASF64
	.2byte	0x19f
	.byte	0xf
	.4byte	.LASF65
	.2byte	0x1c3
	.byte	0xf
	.4byte	.LASF66
	.2byte	0x1c4
	.byte	0xf
	.4byte	.LASF67
	.2byte	0x1c5
	.byte	0xf
	.4byte	.LASF68
	.2byte	0x1c6
	.byte	0xf
	.4byte	.LASF69
	.2byte	0x1c7
	.byte	0xf
	.4byte	.LASF70
	.2byte	0x1c8
	.byte	0xf
	.4byte	.LASF71
	.2byte	0x1c9
	.byte	0xf
	.4byte	.LASF72
	.2byte	0x1ca
	.byte	0xf
	.4byte	.LASF73
	.2byte	0x1cb
	.byte	0xf
	.4byte	.LASF74
	.2byte	0x1cc
	.byte	0xf
	.4byte	.LASF75
	.2byte	0x1cd
	.byte	0xf
	.4byte	.LASF76
	.2byte	0x1ce
	.byte	0xf
	.4byte	.LASF77
	.2byte	0x1f4
	.byte	0xf
	.4byte	.LASF78
	.2byte	0x1f5
	.byte	0xf
	.4byte	.LASF79
	.2byte	0x1f6
	.byte	0xf
	.4byte	.LASF80
	.2byte	0x1f7
	.byte	0xf
	.4byte	.LASF81
	.2byte	0x1f8
	.byte	0xf
	.4byte	.LASF82
	.2byte	0x1f9
	.byte	0xf
	.4byte	.LASF83
	.2byte	0x227
	.byte	0
	.byte	0xc
	.4byte	.LASF85
	.byte	0x7
	.byte	0x1
	.4byte	0x3f
	.byte	0xc
	.byte	0x23
	.byte	0x6
	.4byte	0x3c5
	.byte	0xd
	.4byte	.LASF86
	.byte	0
	.byte	0xd
	.4byte	.LASF87
	.byte	0x1
	.byte	0xd
	.4byte	.LASF88
	.byte	0x2
	.byte	0xd
	.4byte	.LASF89
	.byte	0x3
	.byte	0xd
	.4byte	.LASF90
	.byte	0x4
	.byte	0xd
	.4byte	.LASF91
	.byte	0x5
	.byte	0xd
	.4byte	.LASF92
	.byte	0x6
	.byte	0xd
	.4byte	.LASF93
	.byte	0x7
	.byte	0xd
	.4byte	.LASF94
	.byte	0x8
	.byte	0
	.byte	0xc
	.4byte	.LASF95
	.byte	0x7
	.byte	0x1
	.4byte	0x3f
	.byte	0xc
	.byte	0x33
	.byte	0x6
	.4byte	0x3ea
	.byte	0xd
	.4byte	.LASF96
	.byte	0
	.byte	0xd
	.4byte	.LASF97
	.byte	0x1
	.byte	0xd
	.4byte	.LASF98
	.byte	0x2
	.byte	0
	.byte	0xa
	.4byte	.LASF99
	.byte	0x2c
	.byte	0xc
	.byte	0x3c
	.byte	0x8
	.4byte	0x46d
	.byte	0xb
	.4byte	.LASF100
	.byte	0xc
	.byte	0x3d
	.byte	0xb
	.4byte	0x9b
	.byte	0
	.byte	0xb
	.4byte	.LASF101
	.byte	0xc
	.byte	0x3e
	.byte	0x9
	.4byte	0x25
	.byte	0x4
	.byte	0xb
	.4byte	.LASF102
	.byte	0xc
	.byte	0x3f
	.byte	0x9
	.4byte	0x25
	.byte	0x8
	.byte	0xb
	.4byte	.LASF103
	.byte	0xc
	.byte	0x40
	.byte	0x14
	.4byte	0x59
	.byte	0xc
	.byte	0xb
	.4byte	.LASF104
	.byte	0xc
	.byte	0x41
	.byte	0x14
	.4byte	0x59
	.byte	0xe
	.byte	0xb
	.4byte	.LASF105
	.byte	0xc
	.byte	0x42
	.byte	0xa
	.4byte	0xa3
	.byte	0x10
	.byte	0xb
	.4byte	.LASF106
	.byte	0xc
	.byte	0x43
	.byte	0x16
	.4byte	0x207
	.byte	0x14
	.byte	0xb
	.4byte	.LASF107
	.byte	0xc
	.byte	0x44
	.byte	0x16
	.4byte	0x207
	.byte	0x1c
	.byte	0xb
	.4byte	.LASF108
	.byte	0xc
	.byte	0x45
	.byte	0x16
	.4byte	0x207
	.byte	0x24
	.byte	0
	.byte	0xc
	.4byte	.LASF109
	.byte	0x7
	.byte	0x1
	.4byte	0x3f
	.byte	0xc
	.byte	0x48
	.byte	0x6
	.4byte	0x49e
	.byte	0xd
	.4byte	.LASF110
	.byte	0x1
	.byte	0xd
	.4byte	.LASF111
	.byte	0x2
	.byte	0xd
	.4byte	.LASF112
	.byte	0x4
	.byte	0xd
	.4byte	.LASF113
	.byte	0x8
	.byte	0xd
	.4byte	.LASF114
	.byte	0x10
	.byte	0
	.byte	0x10
	.4byte	.LASF99
	.byte	0xc
	.byte	0x5b
	.byte	0x18
	.4byte	0x3ea
	.byte	0xc
	.4byte	.LASF115
	.byte	0x7
	.byte	0x1
	.4byte	0x3f
	.byte	0xd
	.byte	0x1c
	.byte	0x6
	.4byte	0x4e1
	.byte	0xd
	.4byte	.LASF116
	.byte	0x1
	.byte	0xd
	.4byte	.LASF117
	.byte	0x2
	.byte	0xd
	.4byte	.LASF118
	.byte	0x3
	.byte	0xd
	.4byte	.LASF119
	.byte	0x4
	.byte	0xd
	.4byte	.LASF120
	.byte	0x5
	.byte	0xd
	.4byte	.LASF121
	.byte	0x6
	.byte	0
	.byte	0xc
	.4byte	.LASF122
	.byte	0x7
	.byte	0x1
	.4byte	0x3f
	.byte	0xd
	.byte	0x25
	.byte	0x6
	.4byte	0x500
	.byte	0xd
	.4byte	.LASF123
	.byte	0
	.byte	0xd
	.4byte	.LASF124
	.byte	0x1
	.byte	0
	.byte	0xa
	.4byte	.LASF125
	.byte	0x10
	.byte	0xd
	.byte	0x37
	.byte	0x8
	.4byte	0x542
	.byte	0xb
	.4byte	.LASF126
	.byte	0xd
	.byte	0x38
	.byte	0x9
	.4byte	0x25
	.byte	0
	.byte	0xb
	.4byte	.LASF122
	.byte	0xd
	.byte	0x39
	.byte	0x13
	.4byte	0x4e1
	.byte	0x4
	.byte	0xb
	.4byte	.LASF127
	.byte	0xd
	.byte	0x3a
	.byte	0xb
	.4byte	0x9d
	.byte	0x8
	.byte	0xb
	.4byte	.LASF128
	.byte	0xd
	.byte	0x3b
	.byte	0xb
	.4byte	0x9b
	.byte	0xc
	.byte	0
	.byte	0xa
	.4byte	.LASF129
	.byte	0x10
	.byte	0xd
	.byte	0x3f
	.byte	0x8
	.4byte	0x584
	.byte	0xb
	.4byte	.LASF130
	.byte	0xd
	.byte	0x40
	.byte	0x12
	.4byte	0x88
	.byte	0
	.byte	0xb
	.4byte	.LASF115
	.byte	0xd
	.byte	0x41
	.byte	0x13
	.4byte	0x4aa
	.byte	0x4
	.byte	0xb
	.4byte	.LASF131
	.byte	0xd
	.byte	0x42
	.byte	0xb
	.4byte	0x9d
	.byte	0x8
	.byte	0xb
	.4byte	.LASF132
	.byte	0xd
	.byte	0x43
	.byte	0xe
	.4byte	0xd1
	.byte	0xc
	.byte	0
	.byte	0x4
	.4byte	.LASF133
	.byte	0xd
	.byte	0x49
	.byte	0xf
	.4byte	0x590
	.byte	0x6
	.byte	0x4
	.4byte	0x596
	.byte	0x11
	.4byte	0x25
	.4byte	0x5aa
	.byte	0x12
	.4byte	0x5aa
	.byte	0x12
	.4byte	0x5b0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x500
	.byte	0x6
	.byte	0x4
	.4byte	0x542
	.byte	0xc
	.4byte	.LASF134
	.byte	0x7
	.byte	0x1
	.4byte	0x3f
	.byte	0xe
	.byte	0xc
	.byte	0x6
	.4byte	0x5d5
	.byte	0xd
	.4byte	.LASF135
	.byte	0
	.byte	0xd
	.4byte	.LASF136
	.byte	0x1
	.byte	0
	.byte	0xa
	.4byte	.LASF137
	.byte	0xc
	.byte	0xe
	.byte	0x2a
	.byte	0x8
	.4byte	0x65f
	.byte	0x13
	.string	"cc"
	.byte	0xe
	.byte	0x33
	.byte	0x10
	.4byte	0x3f
	.byte	0x1
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x13
	.string	"x"
	.byte	0xe
	.byte	0x34
	.byte	0x10
	.4byte	0x3f
	.byte	0x1
	.byte	0x1
	.byte	0x3
	.byte	0
	.byte	0x13
	.string	"p"
	.byte	0xe
	.byte	0x35
	.byte	0x10
	.4byte	0x3f
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0
	.byte	0x13
	.string	"v"
	.byte	0xe
	.byte	0x36
	.byte	0x10
	.4byte	0x3f
	.byte	0x1
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0x13
	.string	"pt"
	.byte	0xe
	.byte	0x37
	.byte	0x10
	.4byte	0x3f
	.byte	0x1
	.byte	0x7
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.string	"m"
	.byte	0xe
	.byte	0x38
	.byte	0x10
	.4byte	0x3f
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x1
	.byte	0x14
	.string	"seq"
	.byte	0xe
	.byte	0x3a
	.byte	0x11
	.4byte	0x59
	.byte	0x2
	.byte	0x14
	.string	"ts"
	.byte	0xe
	.byte	0x3b
	.byte	0xf
	.4byte	0x88
	.byte	0x4
	.byte	0xb
	.4byte	.LASF138
	.byte	0xe
	.byte	0x3c
	.byte	0xf
	.4byte	0x88
	.byte	0x8
	.byte	0
	.byte	0xc
	.4byte	.LASF139
	.byte	0x7
	.byte	0x1
	.4byte	0x3f
	.byte	0xf
	.byte	0xd
	.byte	0x6
	.4byte	0x6a2
	.byte	0xd
	.4byte	.LASF140
	.byte	0
	.byte	0xd
	.4byte	.LASF141
	.byte	0x1
	.byte	0xd
	.4byte	.LASF142
	.byte	0x2
	.byte	0xd
	.4byte	.LASF143
	.byte	0x3
	.byte	0xd
	.4byte	.LASF144
	.byte	0x4
	.byte	0xd
	.4byte	.LASF145
	.byte	0x5
	.byte	0xd
	.4byte	.LASF146
	.byte	0x6
	.byte	0xd
	.4byte	.LASF147
	.byte	0x7
	.byte	0
	.byte	0xa
	.4byte	.LASF148
	.byte	0xa
	.byte	0xf
	.byte	0x19
	.byte	0x8
	.4byte	0x6fe
	.byte	0xb
	.4byte	.LASF149
	.byte	0xf
	.byte	0x1a
	.byte	0xa
	.4byte	0xa3
	.byte	0
	.byte	0xb
	.4byte	.LASF150
	.byte	0xf
	.byte	0x1b
	.byte	0xa
	.4byte	0xa3
	.byte	0x1
	.byte	0xb
	.4byte	.LASF151
	.byte	0xf
	.byte	0x1c
	.byte	0x14
	.4byte	0x59
	.byte	0x2
	.byte	0xb
	.4byte	.LASF152
	.byte	0xf
	.byte	0x1d
	.byte	0x14
	.4byte	0x59
	.byte	0x4
	.byte	0xb
	.4byte	.LASF153
	.byte	0xf
	.byte	0x1e
	.byte	0x14
	.4byte	0x59
	.byte	0x6
	.byte	0xb
	.4byte	.LASF154
	.byte	0xf
	.byte	0x1f
	.byte	0x14
	.4byte	0x59
	.byte	0x8
	.byte	0
	.byte	0xa
	.4byte	.LASF155
	.byte	0xc
	.byte	0xf
	.byte	0x24
	.byte	0xc
	.4byte	0x733
	.byte	0xb
	.4byte	.LASF156
	.byte	0xf
	.byte	0x25
	.byte	0x1a
	.4byte	0x37c
	.byte	0
	.byte	0x14
	.string	"uri"
	.byte	0xf
	.byte	0x26
	.byte	0xf
	.4byte	0x9d
	.byte	0x4
	.byte	0x14
	.string	"ver"
	.byte	0xf
	.byte	0x27
	.byte	0xf
	.4byte	0x9d
	.byte	0x8
	.byte	0
	.byte	0xa
	.4byte	.LASF157
	.byte	0x18
	.byte	0xf
	.byte	0x29
	.byte	0xc
	.4byte	0x768
	.byte	0xb
	.4byte	.LASF158
	.byte	0xf
	.byte	0x2a
	.byte	0x1c
	.4byte	0x81
	.byte	0
	.byte	0xb
	.4byte	.LASF159
	.byte	0xf
	.byte	0x2b
	.byte	0x16
	.4byte	0x88
	.byte	0x8
	.byte	0xb
	.4byte	.LASF148
	.byte	0xf
	.byte	0x2c
	.byte	0x1a
	.4byte	0x6a2
	.byte	0xc
	.byte	0
	.byte	0xa
	.4byte	.LASF160
	.byte	0x30
	.byte	0xf
	.byte	0x23
	.byte	0x8
	.4byte	0x79d
	.byte	0xb
	.4byte	.LASF155
	.byte	0xf
	.byte	0x28
	.byte	0x7
	.4byte	0x6fe
	.byte	0
	.byte	0xb
	.4byte	.LASF157
	.byte	0xf
	.byte	0x2d
	.byte	0x7
	.4byte	0x733
	.byte	0x10
	.byte	0xb
	.4byte	.LASF161
	.byte	0xf
	.byte	0x2e
	.byte	0x15
	.4byte	0x5b6
	.byte	0x28
	.byte	0
	.byte	0xa
	.4byte	.LASF162
	.byte	0x8
	.byte	0xf
	.byte	0x33
	.byte	0xc
	.4byte	0x7c5
	.byte	0x14
	.string	"ver"
	.byte	0xf
	.byte	0x34
	.byte	0xf
	.4byte	0x9d
	.byte	0
	.byte	0xb
	.4byte	.LASF84
	.byte	0xf
	.byte	0x35
	.byte	0x1a
	.4byte	0x23a
	.byte	0x4
	.byte	0
	.byte	0xa
	.4byte	.LASF163
	.byte	0x20
	.byte	0xf
	.byte	0x37
	.byte	0xc
	.4byte	0x814
	.byte	0xb
	.4byte	.LASF158
	.byte	0xf
	.byte	0x38
	.byte	0x1c
	.4byte	0x81
	.byte	0
	.byte	0xb
	.4byte	.LASF159
	.byte	0xf
	.byte	0x39
	.byte	0x16
	.4byte	0x88
	.byte	0x8
	.byte	0xb
	.4byte	.LASF164
	.byte	0xf
	.byte	0x3a
	.byte	0xf
	.4byte	0x9d
	.byte	0xc
	.byte	0xb
	.4byte	.LASF165
	.byte	0xf
	.byte	0x3b
	.byte	0xf
	.4byte	0x9d
	.byte	0x10
	.byte	0xb
	.4byte	.LASF148
	.byte	0xf
	.byte	0x3c
	.byte	0x1a
	.4byte	0x6a2
	.byte	0x14
	.byte	0
	.byte	0xa
	.4byte	.LASF166
	.byte	0x4
	.byte	0xf
	.byte	0x3e
	.byte	0xc
	.4byte	0x82f
	.byte	0xb
	.4byte	.LASF167
	.byte	0xf
	.byte	0x3f
	.byte	0xf
	.4byte	0x9d
	.byte	0
	.byte	0
	.byte	0xa
	.4byte	.LASF168
	.byte	0x30
	.byte	0xf
	.byte	0x32
	.byte	0x8
	.4byte	0x864
	.byte	0xb
	.4byte	.LASF162
	.byte	0xf
	.byte	0x36
	.byte	0x7
	.4byte	0x79d
	.byte	0
	.byte	0xb
	.4byte	.LASF163
	.byte	0xf
	.byte	0x3d
	.byte	0x7
	.4byte	0x7c5
	.byte	0x8
	.byte	0xb
	.4byte	.LASF166
	.byte	0xf
	.byte	0x40
	.byte	0x7
	.4byte	0x814
	.byte	0x28
	.byte	0
	.byte	0xa
	.4byte	.LASF169
	.byte	0x24
	.byte	0xf
	.byte	0x44
	.byte	0x8
	.4byte	0x899
	.byte	0xb
	.4byte	.LASF125
	.byte	0xf
	.byte	0x45
	.byte	0x16
	.4byte	0x500
	.byte	0
	.byte	0xb
	.4byte	.LASF129
	.byte	0xf
	.byte	0x46
	.byte	0x15
	.4byte	0x542
	.byte	0x10
	.byte	0xb
	.4byte	.LASF170
	.byte	0xf
	.byte	0x47
	.byte	0xf
	.4byte	0x584
	.byte	0x20
	.byte	0
	.byte	0x15
	.string	"tcp"
	.byte	0x2
	.byte	0xf
	.byte	0x4e
	.byte	0x10
	.4byte	0x8c1
	.byte	0xb
	.4byte	.LASF149
	.byte	0xf
	.byte	0x4f
	.byte	0x12
	.4byte	0xa3
	.byte	0
	.byte	0xb
	.4byte	.LASF150
	.byte	0xf
	.byte	0x50
	.byte	0x12
	.4byte	0xa3
	.byte	0x1
	.byte	0
	.byte	0x15
	.string	"udp"
	.byte	0x28
	.byte	0xf
	.byte	0x52
	.byte	0x10
	.4byte	0x903
	.byte	0xb
	.4byte	.LASF171
	.byte	0xf
	.byte	0x53
	.byte	0x11
	.4byte	0x25
	.byte	0
	.byte	0xb
	.4byte	.LASF172
	.byte	0xf
	.byte	0x54
	.byte	0x11
	.4byte	0x25
	.byte	0x4
	.byte	0xb
	.4byte	.LASF173
	.byte	0xf
	.byte	0x55
	.byte	0x1d
	.4byte	0x1b6
	.byte	0x8
	.byte	0xb
	.4byte	.LASF174
	.byte	0xf
	.byte	0x56
	.byte	0x1d
	.4byte	0x1b6
	.byte	0x18
	.byte	0
	.byte	0x16
	.byte	0x28
	.byte	0xf
	.byte	0x4d
	.byte	0x5
	.4byte	0x925
	.byte	0x17
	.string	"tcp"
	.byte	0xf
	.byte	0x51
	.byte	0xb
	.4byte	0x899
	.byte	0x17
	.string	"udp"
	.byte	0xf
	.byte	0x57
	.byte	0xb
	.4byte	0x8c1
	.byte	0
	.byte	0xa
	.4byte	.LASF175
	.byte	0x34
	.byte	0xf
	.byte	0x4b
	.byte	0x8
	.4byte	0x946
	.byte	0xb
	.4byte	.LASF137
	.byte	0xf
	.byte	0x4c
	.byte	0x14
	.4byte	0x5d5
	.byte	0
	.byte	0x18
	.4byte	0x903
	.byte	0xc
	.byte	0
	.byte	0xa
	.4byte	.LASF176
	.byte	0xc0
	.byte	0xf
	.byte	0x5c
	.byte	0x8
	.4byte	0x9fd
	.byte	0xb
	.4byte	.LASF177
	.byte	0xf
	.byte	0x5d
	.byte	0x16
	.4byte	0x207
	.byte	0
	.byte	0xb
	.4byte	.LASF158
	.byte	0xf
	.byte	0x5e
	.byte	0x18
	.4byte	0x81
	.byte	0x8
	.byte	0xb
	.4byte	.LASF159
	.byte	0xf
	.byte	0x5f
	.byte	0x12
	.4byte	0x88
	.byte	0x10
	.byte	0xb
	.4byte	.LASF95
	.byte	0xf
	.byte	0x60
	.byte	0x15
	.4byte	0x3c5
	.byte	0x14
	.byte	0xb
	.4byte	.LASF139
	.byte	0xf
	.byte	0x61
	.byte	0x19
	.4byte	0x65f
	.byte	0x15
	.byte	0xb
	.4byte	.LASF178
	.byte	0xf
	.byte	0x62
	.byte	0x9
	.4byte	0x25
	.byte	0x18
	.byte	0xb
	.4byte	.LASF179
	.byte	0xf
	.byte	0x63
	.byte	0x9
	.4byte	0x25
	.byte	0x1c
	.byte	0xb
	.4byte	.LASF180
	.byte	0xf
	.byte	0x64
	.byte	0x16
	.4byte	0x207
	.byte	0x20
	.byte	0xb
	.4byte	.LASF181
	.byte	0xf
	.byte	0x65
	.byte	0xb
	.4byte	0x9d
	.byte	0x28
	.byte	0x14
	.string	"req"
	.byte	0xf
	.byte	0x66
	.byte	0x16
	.4byte	0x9fd
	.byte	0x2c
	.byte	0xb
	.4byte	.LASF182
	.byte	0xf
	.byte	0x67
	.byte	0x17
	.4byte	0xa03
	.byte	0x30
	.byte	0xb
	.4byte	.LASF169
	.byte	0xf
	.byte	0x68
	.byte	0x11
	.4byte	0x864
	.byte	0x34
	.byte	0xb
	.4byte	.LASF175
	.byte	0xf
	.byte	0x69
	.byte	0x15
	.4byte	0xa09
	.byte	0x58
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x768
	.byte	0x6
	.byte	0x4
	.4byte	0x82f
	.byte	0x8
	.4byte	0x925
	.4byte	0xa19
	.byte	0x9
	.4byte	0x88
	.byte	0x1
	.byte	0
	.byte	0x4
	.4byte	.LASF183
	.byte	0x10
	.byte	0x9
	.byte	0xf
	.4byte	0xa25
	.byte	0x6
	.byte	0x4
	.4byte	0xa2b
	.byte	0x11
	.4byte	0x25
	.4byte	0xa3a
	.byte	0x12
	.4byte	0x9b
	.byte	0
	.byte	0x4
	.4byte	.LASF184
	.byte	0x11
	.byte	0x5
	.byte	0xf
	.4byte	0xa46
	.byte	0x6
	.byte	0x4
	.4byte	0xa4c
	.byte	0x11
	.4byte	0x25
	.4byte	0xa60
	.byte	0x12
	.4byte	0xa60
	.byte	0x12
	.4byte	0x88
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xa66
	.byte	0xa
	.4byte	.LASF185
	.byte	0x14
	.byte	0x11
	.byte	0xb
	.byte	0x8
	.4byte	0xaa7
	.byte	0xb
	.4byte	.LASF177
	.byte	0x11
	.byte	0xc
	.byte	0x16
	.4byte	0x207
	.byte	0
	.byte	0x14
	.string	"sd"
	.byte	0x11
	.byte	0xd
	.byte	0x9
	.4byte	0x25
	.byte	0x8
	.byte	0x14
	.string	"arg"
	.byte	0x11
	.byte	0xe
	.byte	0xb
	.4byte	0x9b
	.byte	0xc
	.byte	0xb
	.4byte	.LASF186
	.byte	0x11
	.byte	0xf
	.byte	0x17
	.4byte	0xa3a
	.byte	0x10
	.byte	0
	.byte	0x19
	.4byte	.LASF188
	.byte	0x1
	.byte	0xf0
	.byte	0x6
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x1
	.byte	0x9c
	.4byte	0xb7d
	.byte	0x1a
	.string	"hp"
	.byte	0x1
	.byte	0xf2
	.byte	0x18
	.4byte	0xa60
	.4byte	.LLST33
	.byte	0x1a
	.string	"tmp"
	.byte	0x1
	.byte	0xf3
	.byte	0x18
	.4byte	0xa60
	.4byte	.LLST34
	.byte	0x1b
	.4byte	.LBB67
	.4byte	.LBE67-.LBB67
	.4byte	0xafa
	.byte	0x1c
	.4byte	.LASF187
	.byte	0x1
	.byte	0xf5
	.byte	0x3b
	.4byte	0xb7d
	.4byte	.LLST35
	.byte	0
	.byte	0x1d
	.4byte	.Ldebug_ranges0+0xb0
	.4byte	0xb14
	.byte	0x1c
	.4byte	.LASF187
	.byte	0x1
	.byte	0xf5
	.byte	0x3d
	.4byte	0xb7d
	.4byte	.LLST36
	.byte	0
	.byte	0x1b
	.4byte	.LBB78
	.4byte	.LBE78-.LBB78
	.4byte	0xb32
	.byte	0x1c
	.4byte	.LASF187
	.byte	0x1
	.byte	0xf5
	.byte	0x73
	.4byte	0xb7d
	.4byte	.LLST40
	.byte	0
	.byte	0x1e
	.4byte	0x11fa
	.4byte	.LBB70
	.4byte	.Ldebug_ranges0+0xc8
	.byte	0x1
	.byte	0xf6
	.byte	0x9
	.4byte	0xb73
	.byte	0x1f
	.4byte	0x1207
	.4byte	.LLST37
	.byte	0x20
	.4byte	0x1214
	.4byte	.LBB72
	.4byte	.LBE72-.LBB72
	.byte	0x2
	.byte	0x7e
	.byte	0x2
	.byte	0x1f
	.4byte	0x122d
	.4byte	.LLST38
	.byte	0x1f
	.4byte	0x1221
	.4byte	.LLST39
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	.LVL99
	.4byte	0x12ac
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x22f
	.byte	0x19
	.4byte	.LASF189
	.byte	0x1
	.byte	0xea
	.byte	0x6
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x1
	.byte	0x9c
	.4byte	0xbb0
	.byte	0x20
	.4byte	0x1292
	.4byte	.LBB58
	.4byte	.LBE58-.LBB58
	.byte	0x1
	.byte	0xec
	.byte	0x5
	.byte	0x22
	.4byte	0x129f
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LASF190
	.byte	0x1
	.byte	0xda
	.byte	0x6
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x1
	.byte	0x9c
	.4byte	0xc85
	.byte	0x23
	.string	"sd"
	.byte	0x1
	.byte	0xda
	.byte	0x20
	.4byte	0x25
	.4byte	.LLST27
	.byte	0x1a
	.string	"hp"
	.byte	0x1
	.byte	0xdc
	.byte	0x18
	.4byte	0xa60
	.4byte	.LLST28
	.byte	0x24
	.4byte	.LASF214
	.byte	0x1
	.byte	0xde
	.byte	0x5
	.4byte	0x25
	.4byte	0xbf6
	.byte	0x25
	.byte	0
	.byte	0x1b
	.4byte	.LBB45
	.4byte	.LBE45-.LBB45
	.4byte	0xc14
	.byte	0x1c
	.4byte	.LASF187
	.byte	0x1
	.byte	0xe0
	.byte	0x3b
	.4byte	0xb7d
	.4byte	.LLST29
	.byte	0
	.byte	0x26
	.4byte	0xc26
	.byte	0x27
	.4byte	.LASF187
	.byte	0x1
	.byte	0xe0
	.byte	0x67
	.4byte	0xb7d
	.byte	0
	.byte	0x1e
	.4byte	0x11fa
	.4byte	.LBB46
	.4byte	.Ldebug_ranges0+0x70
	.byte	0x1
	.byte	0xe2
	.byte	0xd
	.4byte	0xc67
	.byte	0x1f
	.4byte	0x1207
	.4byte	.LLST30
	.byte	0x28
	.4byte	0x1214
	.4byte	.LBB48
	.4byte	.Ldebug_ranges0+0x98
	.byte	0x2
	.byte	0x7e
	.byte	0x2
	.byte	0x1f
	.4byte	0x122d
	.4byte	.LLST31
	.byte	0x1f
	.4byte	0x1221
	.4byte	.LLST32
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.LVL76
	.4byte	0x12b8
	.4byte	0xc7b
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x2b
	.4byte	.LVL86
	.4byte	0x12ac
	.byte	0
	.byte	0x2c
	.4byte	.LASF192
	.byte	0x1
	.byte	0xc6
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x1
	.byte	0x9c
	.4byte	0xd83
	.byte	0x23
	.string	"sd"
	.byte	0x1
	.byte	0xc6
	.byte	0x1d
	.4byte	0x25
	.4byte	.LLST19
	.byte	0x2d
	.4byte	.LASF186
	.byte	0x1
	.byte	0xc6
	.byte	0x33
	.4byte	0xa3a
	.4byte	.LLST20
	.byte	0x23
	.string	"arg"
	.byte	0x1
	.byte	0xc6
	.byte	0x3f
	.4byte	0x9b
	.4byte	.LLST21
	.byte	0x1a
	.string	"hp"
	.byte	0x1
	.byte	0xc8
	.byte	0x18
	.4byte	0xa60
	.4byte	.LLST22
	.byte	0x1d
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0xd24
	.byte	0x1a
	.string	"ptr"
	.byte	0x1
	.byte	0xca
	.byte	0x13
	.4byte	0x9b
	.4byte	.LLST23
	.byte	0x29
	.4byte	.LVL64
	.4byte	0x12c4
	.4byte	0xd09
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0x2e
	.4byte	.LVL65
	.4byte	0x12d0
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	0x123a
	.4byte	.LBB30
	.4byte	.Ldebug_ranges0+0x40
	.byte	0x1
	.byte	0xd3
	.byte	0x5
	.4byte	0xd6f
	.byte	0x22
	.4byte	0x1253
	.byte	0x1f
	.4byte	0x1247
	.4byte	.LLST24
	.byte	0x28
	.4byte	0x1260
	.4byte	.LBB32
	.4byte	.Ldebug_ranges0+0x58
	.byte	0x2
	.byte	0x61
	.byte	0x2
	.byte	0x22
	.4byte	0x1285
	.byte	0x1f
	.4byte	0x1279
	.4byte	.LLST25
	.byte	0x1f
	.4byte	0x126d
	.4byte	.LLST24
	.byte	0
	.byte	0
	.byte	0x2e
	.4byte	.LVL74
	.4byte	0x12dc
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0
	.byte	0x2f
	.4byte	.LASF235
	.byte	0x1
	.byte	0xb4
	.byte	0x6
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x1
	.byte	0x9c
	.4byte	0xdfe
	.byte	0x23
	.string	"sd"
	.byte	0x1
	.byte	0xb4
	.byte	0x18
	.4byte	0x25
	.4byte	.LLST15
	.byte	0x2d
	.4byte	.LASF191
	.byte	0x1
	.byte	0xb4
	.byte	0x29
	.4byte	0x88
	.4byte	.LLST16
	.byte	0x1a
	.string	"hp"
	.byte	0x1
	.byte	0xb6
	.byte	0x18
	.4byte	0xa60
	.4byte	.LLST17
	.byte	0x1b
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.4byte	0xde5
	.byte	0x1c
	.4byte	.LASF187
	.byte	0x1
	.byte	0xb9
	.byte	0x3b
	.4byte	0xb7d
	.4byte	.LLST18
	.byte	0
	.byte	0x30
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.byte	0x31
	.4byte	.LASF187
	.byte	0x1
	.byte	0xb9
	.byte	0x67
	.4byte	0xb7d
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0
	.byte	0x2c
	.4byte	.LASF193
	.byte	0x1
	.byte	0xaf
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x1
	.byte	0x9c
	.4byte	0xe36
	.byte	0x23
	.string	"hp"
	.byte	0x1
	.byte	0xaf
	.byte	0x27
	.4byte	0xa60
	.4byte	.LLST14
	.byte	0x32
	.4byte	.LASF191
	.byte	0x1
	.byte	0xaf
	.byte	0x38
	.4byte	0x88
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0x2c
	.4byte	.LASF194
	.byte	0x1
	.byte	0x96
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x1
	.byte	0x9c
	.4byte	0xeb4
	.byte	0x23
	.string	"hp"
	.byte	0x1
	.byte	0x96
	.byte	0x26
	.4byte	0xa60
	.4byte	.LLST10
	.byte	0x2d
	.4byte	.LASF191
	.byte	0x1
	.byte	0x96
	.byte	0x37
	.4byte	0x88
	.4byte	.LLST11
	.byte	0x1c
	.4byte	.LASF195
	.byte	0x1
	.byte	0x98
	.byte	0x17
	.4byte	0xeb4
	.4byte	.LLST12
	.byte	0x1c
	.4byte	.LASF196
	.byte	0x1
	.byte	0x99
	.byte	0x14
	.4byte	0x46d
	.4byte	.LLST13
	.byte	0x29
	.4byte	.LVL50
	.4byte	0x12e8
	.4byte	0xea3
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x2e
	.4byte	.LVL51
	.4byte	0x12f4
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x946
	.byte	0x2c
	.4byte	.LASF197
	.byte	0x1
	.byte	0x74
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x1
	.byte	0x9c
	.4byte	0x1007
	.byte	0x23
	.string	"hp"
	.byte	0x1
	.byte	0x74
	.byte	0x27
	.4byte	0xa60
	.4byte	.LLST4
	.byte	0x2d
	.4byte	.LASF191
	.byte	0x1
	.byte	0x74
	.byte	0x38
	.4byte	0x88
	.4byte	.LLST5
	.byte	0x1c
	.4byte	.LASF195
	.byte	0x1
	.byte	0x76
	.byte	0x17
	.4byte	0xeb4
	.4byte	.LLST6
	.byte	0x1c
	.4byte	.LASF196
	.byte	0x1
	.byte	0x77
	.byte	0x14
	.4byte	0x46d
	.4byte	.LLST7
	.byte	0x1e
	.4byte	0x1007
	.4byte	.LBB18
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x7b
	.byte	0xd
	.4byte	0xfe2
	.byte	0x22
	.4byte	0x1018
	.byte	0x33
	.4byte	.Ldebug_ranges0+0
	.byte	0x34
	.4byte	0x1024
	.4byte	.LLST8
	.byte	0x34
	.4byte	0x102f
	.4byte	.LLST9
	.byte	0x35
	.4byte	0x103b
	.4byte	.L11
	.byte	0x36
	.4byte	0x1043
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.4byte	0xf6d
	.byte	0x2e
	.4byte	.LVL27
	.4byte	0x1300
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.byte	0x37
	.4byte	0x11dc
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.byte	0x1
	.byte	0x61
	.byte	0x10
	.4byte	0xf87
	.byte	0x22
	.4byte	0x11ed
	.byte	0
	.byte	0x29
	.4byte	.LVL25
	.4byte	0x130c
	.4byte	0xfa0
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x29
	.4byte	.LVL30
	.4byte	0x12dc
	.4byte	0xfb7
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x29
	.4byte	.LVL38
	.4byte	0x1319
	.4byte	0xfcb
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x2e
	.4byte	.LVL41
	.4byte	0x1325
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.LVL33
	.4byte	0x12e8
	.4byte	0xff6
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x2e
	.4byte	.LVL34
	.4byte	0x12f4
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x38
	.4byte	.LASF204
	.byte	0x1
	.byte	0x44
	.byte	0xc
	.4byte	0x25
	.byte	0x1
	.4byte	0x1054
	.byte	0x39
	.4byte	.LASF195
	.byte	0x1
	.byte	0x44
	.byte	0x37
	.4byte	0xeb4
	.byte	0x3a
	.string	"nr"
	.byte	0x1
	.byte	0x46
	.byte	0xd
	.4byte	0xf5
	.byte	0x27
	.4byte	.LASF198
	.byte	0x1
	.byte	0x47
	.byte	0x9
	.4byte	0x25
	.byte	0x3b
	.string	"try"
	.byte	0x1
	.byte	0x48
	.byte	0x1
	.byte	0x3c
	.byte	0x3d
	.4byte	.LASF220
	.byte	0x1
	.byte	0x52
	.byte	0xd
	.4byte	0x25
	.byte	0x25
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2c
	.4byte	.LASF199
	.byte	0x1
	.byte	0x1c
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x1
	.byte	0x9c
	.4byte	0x11d6
	.byte	0x23
	.string	"hp"
	.byte	0x1
	.byte	0x1c
	.byte	0x26
	.4byte	0xa60
	.4byte	.LLST0
	.byte	0x2d
	.4byte	.LASF191
	.byte	0x1
	.byte	0x1c
	.byte	0x37
	.4byte	0x88
	.4byte	.LLST1
	.byte	0x1c
	.4byte	.LASF200
	.byte	0x1
	.byte	0x1e
	.byte	0x16
	.4byte	0x11d6
	.4byte	.LLST2
	.byte	0x31
	.4byte	.LASF201
	.byte	0x1
	.byte	0x1f
	.byte	0x18
	.4byte	0x167
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x31
	.4byte	.LASF202
	.byte	0x1
	.byte	0x20
	.byte	0xf
	.4byte	0x1fb
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x1c
	.4byte	.LASF178
	.byte	0x1
	.byte	0x21
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST3
	.byte	0x31
	.4byte	.LASF203
	.byte	0x1
	.byte	0x22
	.byte	0xf
	.4byte	0x1fb
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x29
	.4byte	.LVL4
	.4byte	0x12d0
	.4byte	0x10f8
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x29
	.4byte	.LVL5
	.4byte	0x1331
	.4byte	0x1112
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0
	.byte	0x21
	.4byte	.LVL8
	.4byte	0x12dc
	.byte	0x29
	.4byte	.LVL12
	.4byte	0x133e
	.4byte	0x112f
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0
	.byte	0x21
	.4byte	.LVL13
	.4byte	0x134a
	.byte	0x29
	.4byte	.LVL14
	.4byte	0x12dc
	.4byte	0x1156
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x4c
	.byte	0x6
	.byte	0
	.byte	0x29
	.4byte	.LVL15
	.4byte	0x1356
	.4byte	0x116f
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x29
	.4byte	.LVL16
	.4byte	0x1362
	.4byte	0x1183
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.LVL18
	.4byte	0x136f
	.4byte	0x11ac
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x36
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0x2a
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x2a
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0x29
	.4byte	.LVL19
	.4byte	0x137c
	.4byte	0x11c5
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x2e
	.4byte	.LVL20
	.4byte	0x1388
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x3ea
	.byte	0x38
	.4byte	.LASF205
	.byte	0x1
	.byte	0xe
	.byte	0xc
	.4byte	0x25
	.byte	0x1
	.4byte	0x11fa
	.byte	0x3e
	.string	"buf"
	.byte	0x1
	.byte	0xe
	.byte	0x2c
	.4byte	0xaf
	.byte	0
	.byte	0x3f
	.4byte	.LASF206
	.byte	0x2
	.byte	0x7c
	.byte	0x14
	.byte	0x3
	.4byte	0x1214
	.byte	0x39
	.4byte	.LASF177
	.byte	0x2
	.byte	0x7c
	.byte	0x2f
	.4byte	0x234
	.byte	0
	.byte	0x3f
	.4byte	.LASF207
	.byte	0x2
	.byte	0x6b
	.byte	0x14
	.byte	0x3
	.4byte	0x123a
	.byte	0x39
	.4byte	.LASF40
	.byte	0x2
	.byte	0x6b
	.byte	0x32
	.4byte	0x234
	.byte	0x39
	.4byte	.LASF39
	.byte	0x2
	.byte	0x6b
	.byte	0x4b
	.4byte	0x234
	.byte	0
	.byte	0x3f
	.4byte	.LASF208
	.byte	0x2
	.byte	0x5f
	.byte	0x14
	.byte	0x3
	.4byte	0x1260
	.byte	0x3e
	.string	"new"
	.byte	0x2
	.byte	0x5f
	.byte	0x34
	.4byte	0x234
	.byte	0x39
	.4byte	.LASF209
	.byte	0x2
	.byte	0x5f
	.byte	0x4b
	.4byte	0x234
	.byte	0
	.byte	0x3f
	.4byte	.LASF210
	.byte	0x2
	.byte	0x40
	.byte	0x14
	.byte	0x3
	.4byte	0x1292
	.byte	0x3e
	.string	"new"
	.byte	0x2
	.byte	0x40
	.byte	0x31
	.4byte	0x234
	.byte	0x39
	.4byte	.LASF40
	.byte	0x2
	.byte	0x41
	.byte	0x1c
	.4byte	0x234
	.byte	0x39
	.4byte	.LASF39
	.byte	0x2
	.byte	0x42
	.byte	0x1c
	.4byte	0x234
	.byte	0
	.byte	0x3f
	.4byte	.LASF211
	.byte	0x2
	.byte	0x34
	.byte	0x14
	.byte	0x3
	.4byte	0x12ac
	.byte	0x39
	.4byte	.LASF212
	.byte	0x2
	.byte	0x34
	.byte	0x35
	.4byte	0x234
	.byte	0
	.byte	0x40
	.4byte	.LASF213
	.4byte	.LASF213
	.byte	0x12
	.byte	0x5e
	.byte	0x6
	.byte	0x40
	.4byte	.LASF214
	.4byte	.LASF214
	.byte	0x1
	.byte	0xde
	.byte	0x5
	.byte	0x40
	.4byte	.LASF215
	.4byte	.LASF215
	.byte	0x12
	.byte	0x6c
	.byte	0x7
	.byte	0x40
	.4byte	.LASF216
	.4byte	.LASF216
	.byte	0x13
	.byte	0x21
	.byte	0x8
	.byte	0x40
	.4byte	.LASF217
	.4byte	.LASF217
	.byte	0x14
	.byte	0xc8
	.byte	0x5
	.byte	0x40
	.4byte	.LASF218
	.4byte	.LASF218
	.byte	0xf
	.byte	0x7a
	.byte	0x5
	.byte	0x40
	.4byte	.LASF219
	.4byte	.LASF219
	.byte	0xf
	.byte	0x71
	.byte	0x5
	.byte	0x40
	.4byte	.LASF220
	.4byte	.LASF220
	.byte	0x1
	.byte	0x52
	.byte	0xd
	.byte	0x41
	.4byte	.LASF221
	.4byte	.LASF221
	.byte	0xa
	.2byte	0x25e
	.byte	0x9
	.byte	0x40
	.4byte	.LASF222
	.4byte	.LASF222
	.byte	0x15
	.byte	0x6
	.byte	0x5
	.byte	0x40
	.4byte	.LASF223
	.4byte	.LASF223
	.byte	0x10
	.byte	0x1a
	.byte	0x14
	.byte	0x41
	.4byte	.LASF224
	.4byte	.LASF224
	.byte	0xa
	.2byte	0x254
	.byte	0x5
	.byte	0x40
	.4byte	.LASF225
	.4byte	.LASF225
	.byte	0x8
	.byte	0xd8
	.byte	0x7
	.byte	0x40
	.4byte	.LASF226
	.4byte	.LASF226
	.byte	0x16
	.byte	0x60
	.byte	0x7
	.byte	0x40
	.4byte	.LASF227
	.4byte	.LASF227
	.byte	0xb
	.byte	0x6b
	.byte	0x5
	.byte	0x41
	.4byte	.LASF228
	.4byte	.LASF228
	.byte	0xa
	.2byte	0x25b
	.byte	0x6
	.byte	0x41
	.4byte	.LASF229
	.4byte	.LASF229
	.byte	0xa
	.2byte	0x25a
	.byte	0x5
	.byte	0x40
	.4byte	.LASF230
	.4byte	.LASF230
	.byte	0xc
	.byte	0x60
	.byte	0x5
	.byte	0x40
	.4byte	.LASF231
	.4byte	.LASF231
	.byte	0xf
	.byte	0x70
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
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xa
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
	.byte	0xb
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
	.byte	0xc
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
	.byte	0x8
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0x5
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
	.byte	0x12
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0x8
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
	.byte	0x16
	.byte	0x17
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
	.byte	0x17
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
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0xd
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
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
	.byte	0x1b
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1d
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1e
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
	.byte	0x1f
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x20
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
	.byte	0x21
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x22
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x23
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3c
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x25
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0x26
	.byte	0xb
	.byte	0x1
	.byte	0x1
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
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x29
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
	.byte	0x2a
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x2b
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
	.byte	0x2c
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
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
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
	.byte	0x30
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
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
	.byte	0x33
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x34
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x35
	.byte	0xa
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x36
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
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x38
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
	.byte	0x39
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
	.byte	0x3a
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
	.byte	0x3b
	.byte	0xa
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x3c
	.byte	0xb
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x3d
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
	.byte	0x49
	.byte	0x13
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x3e
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
	.byte	0x3f
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
	.byte	0x40
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST33:
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL91
	.4byte	.LVL99-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL100
	.4byte	.LFE49
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL90
	.4byte	.LVL92
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL95
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x2
	.byte	0x79
	.byte	0
	.4byte	.LVL100
	.4byte	.LFE49
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL91
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x2
	.byte	0x79
	.byte	0
	.4byte	.LVL100
	.4byte	.LFE49
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL95
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL75
	.4byte	.LVL76-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL76-1
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL83
	.4byte	.LVL86
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LFE47
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL86-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL78
	.4byte	.LVL82
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.4byte	.LVL86
	.4byte	.LFE47
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL81
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL82
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL82
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL63
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LFE46
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL62
	.4byte	.LVL64-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL64-1
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL69
	.4byte	.LVL72
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LFE46
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL62
	.4byte	.LVL64-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL64-1
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL70
	.4byte	.LVL72
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LFE46
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL62
	.4byte	.LVL65
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL72
	.4byte	.LFE46
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL64
	.4byte	.LVL65-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL65-1
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL55
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LFE45
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL55
	.4byte	.LVL60-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL60-1
	.4byte	.LVL60
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LFE45
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL60-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL60
	.4byte	.LFE45
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x2
	.byte	0x7e
	.byte	0
	.4byte	.LVL60
	.4byte	.LFE45
	.2byte	0x2
	.byte	0x7e
	.byte	0
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL54
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL44
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL49
	.4byte	.LFE43
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL48
	.4byte	.LFE43
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL45
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL50-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL23
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL31
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LFE42
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL22
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL36
	.4byte	.LFE42
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL22
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL33-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL36
	.4byte	.LFE42
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL24
	.4byte	.LVL25-1
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL5
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL17
	.4byte	.LFE40
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x5c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	.LBB24
	.4byte	.LBE24
	.4byte	0
	.4byte	0
	.4byte	.LBB27
	.4byte	.LBE27
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	.LBB29
	.4byte	.LBE29
	.4byte	.LBB38
	.4byte	.LBE38
	.4byte	0
	.4byte	0
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	.LBB37
	.4byte	.LBE37
	.4byte	0
	.4byte	0
	.4byte	.LBB32
	.4byte	.LBE32
	.4byte	.LBB35
	.4byte	.LBE35
	.4byte	0
	.4byte	0
	.4byte	.LBB46
	.4byte	.LBE46
	.4byte	.LBB55
	.4byte	.LBE55
	.4byte	.LBB56
	.4byte	.LBE56
	.4byte	.LBB57
	.4byte	.LBE57
	.4byte	0
	.4byte	0
	.4byte	.LBB48
	.4byte	.LBE48
	.4byte	.LBB51
	.4byte	.LBE51
	.4byte	0
	.4byte	0
	.4byte	.LBB68
	.4byte	.LBE68
	.4byte	.LBB69
	.4byte	.LBE69
	.4byte	0
	.4byte	0
	.4byte	.LBB70
	.4byte	.LBE70
	.4byte	.LBB76
	.4byte	.LBE76
	.4byte	.LBB77
	.4byte	.LBE77
	.4byte	0
	.4byte	0
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF80:
	.string	"SERVICE_UNAVAILABLE"
.LASF37:
	.string	"socklen_t"
.LASF12:
	.string	"_ssize_t"
.LASF35:
	.string	"sa_family"
.LASF106:
	.string	"rtsp_sess_list"
.LASF210:
	.string	"__list_add"
.LASF76:
	.string	"DESTINATION_UNREACHABLE"
.LASF157:
	.string	"req_hdr"
.LASF181:
	.string	"recv_buf"
.LASF29:
	.string	"sin_family"
.LASF31:
	.string	"sin_addr"
.LASF228:
	.string	"lwip_close"
.LASF38:
	.string	"list_head"
.LASF197:
	.string	"handle_rtsp_sd"
.LASF190:
	.string	"deregister_sd_handler"
.LASF176:
	.string	"rtsp_sess"
.LASF67:
	.string	"NOT_ENOUGH_BANDWIDTH"
.LASF52:
	.string	"PAYMENT_REQUIRED"
.LASF173:
	.string	"rtp_sa"
.LASF171:
	.string	"rtp_sd"
.LASF196:
	.string	"type"
.LASF163:
	.string	"resp_hdr"
.LASF89:
	.string	"RTSP_METHOD_PLAY"
.LASF195:
	.string	"sessp"
.LASF179:
	.string	"intlvd_mode"
.LASF105:
	.string	"thrd_running"
.LASF151:
	.string	"rtp_cli_port"
.LASF18:
	.string	"ssize_t"
.LASF114:
	.string	"DATA_TYPE_RTCP_A_PKT"
.LASF55:
	.string	"METHOD_NOT_ALLOWED"
.LASF3:
	.string	"__uint8_t"
.LASF50:
	.string	"BAD_REQUEST"
.LASF72:
	.string	"PARAMETER_IS_READ_ONLY"
.LASF183:
	.string	"delay_task_proc_t"
.LASF6:
	.string	"long int"
.LASF226:
	.string	"lwip_htons"
.LASF45:
	.string	"MOVED_PERMANENTLY"
.LASF134:
	.string	"media_type"
.LASF22:
	.string	"ip4_addr"
.LASF218:
	.string	"consume_send_buf"
.LASF68:
	.string	"SESSION_NOT_FOUND"
.LASF77:
	.string	"INTERNAL_SERVER_ERROR"
.LASF28:
	.string	"sin_len"
.LASF111:
	.string	"DATA_TYPE_RTP_V_PKT"
.LASF209:
	.string	"head"
.LASF92:
	.string	"RTSP_METHOD_SET_PARAMETER"
.LASF232:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF211:
	.string	"INIT_LIST_HEAD"
.LASF130:
	.string	"frm_sz"
.LASF214:
	.string	"unmonitor_sd_event"
.LASF0:
	.string	"signed char"
.LASF14:
	.string	"uint8_t"
.LASF193:
	.string	"handle_rtcp_sd"
.LASF107:
	.string	"sd_handler_list"
.LASF132:
	.string	"timestamp"
.LASF34:
	.string	"sa_len"
.LASF123:
	.string	"CHN_TYPE_MAIN"
.LASF158:
	.string	"sess_id"
.LASF1:
	.string	"unsigned char"
.LASF119:
	.string	"FRM_TYPE_A"
.LASF117:
	.string	"FRM_TYPE_B"
.LASF78:
	.string	"NOT_IMPLEMENTED"
.LASF116:
	.string	"FRM_TYPE_I"
.LASF120:
	.string	"FRM_TYPE_M"
.LASF118:
	.string	"FRM_TYPE_P"
.LASF145:
	.string	"HANDLING_STATE_DONE"
.LASF155:
	.string	"req_line"
.LASF13:
	.string	"char"
.LASF201:
	.string	"rtsp_sa"
.LASF4:
	.string	"__uint16_t"
.LASF175:
	.string	"rtp_rtcp"
.LASF27:
	.string	"sockaddr_in"
.LASF30:
	.string	"sin_port"
.LASF231:
	.string	"create_rtsp_sess"
.LASF186:
	.string	"proc"
.LASF233:
	.string	".\\components\\net\\lib\\rtsp\\src\\sd_handler.c"
.LASF51:
	.string	"UNAUTHORIZED"
.LASF136:
	.string	"MEDIA_TYPE_AUDIO"
.LASF49:
	.string	"USE_PROXY"
.LASF199:
	.string	"handle_lsn_sd"
.LASF204:
	.string	"filter_data_from_rtsp_sd"
.LASF32:
	.string	"sin_zero"
.LASF223:
	.string	"create_delay_task"
.LASF48:
	.string	"NOT_MODIFIED"
.LASF90:
	.string	"RTSP_METHOD_PAUSE"
.LASF161:
	.string	"media"
.LASF128:
	.string	"usr_data"
.LASF217:
	.string	"printf"
.LASF102:
	.string	"http_lsn_sd"
.LASF184:
	.string	"sd_handler_proc_t"
.LASF16:
	.string	"in_addr_t"
.LASF56:
	.string	"NOT_ACCEPTABLE"
.LASF104:
	.string	"http_port"
.LASF60:
	.string	"LENGTH_REQUIRED"
.LASF131:
	.string	"frm_buf"
.LASF200:
	.string	"srvp"
.LASF156:
	.string	"method"
.LASF122:
	.string	"chn_type"
.LASF164:
	.string	"server"
.LASF61:
	.string	"PRECONDITION_FAILED"
.LASF125:
	.string	"strm_info"
.LASF129:
	.string	"frm_info"
.LASF97:
	.string	"RTSP_STATE_READY"
.LASF85:
	.string	"rtsp_method"
.LASF71:
	.string	"INVALID_RANGE"
.LASF8:
	.string	"long unsigned int"
.LASF182:
	.string	"resp"
.LASF84:
	.string	"status_code"
.LASF87:
	.string	"RTSP_METHOD_DESCRIBE"
.LASF112:
	.string	"DATA_TYPE_RTP_A_PKT"
.LASF59:
	.string	"GONE"
.LASF138:
	.string	"ssrc"
.LASF47:
	.string	"SEE_OTHER"
.LASF147:
	.string	"HANDLING_STATE_FAILED"
.LASF167:
	.string	"sdp_info"
.LASF141:
	.string	"HANDLING_STATE_READY"
.LASF7:
	.string	"__uint32_t"
.LASF150:
	.string	"rtcp_chn"
.LASF9:
	.string	"long long int"
.LASF115:
	.string	"frm_type"
.LASF53:
	.string	"FORBIDDEN"
.LASF21:
	.string	"ip4_addr_t"
.LASF139:
	.string	"handling_state"
.LASF194:
	.string	"handle_rtp_sd"
.LASF99:
	.string	"rtsp_srv"
.LASF103:
	.string	"rtsp_port"
.LASF86:
	.string	"RTSP_METHOD_OPTIONS"
.LASF153:
	.string	"rtp_srv_port"
.LASF142:
	.string	"HANDLING_STATE_PARSED"
.LASF154:
	.string	"rtcp_srv_port"
.LASF191:
	.string	"event"
.LASF24:
	.string	"addr"
.LASF188:
	.string	"deinit_sd_handler_list"
.LASF168:
	.string	"rtsp_resp"
.LASF11:
	.string	"unsigned int"
.LASF205:
	.string	"looks_like_rtsp_req"
.LASF140:
	.string	"HANDLING_STATE_INIT"
.LASF165:
	.string	"public"
.LASF224:
	.string	"lwip_accept"
.LASF198:
	.string	"offset"
.LASF208:
	.string	"list_add_tail"
.LASF212:
	.string	"list"
.LASF63:
	.string	"REQUEST_URI_TOO_LARGE"
.LASF159:
	.string	"cseq"
.LASF41:
	.string	"CONTINUE"
.LASF187:
	.string	"__mptr"
.LASF94:
	.string	"RTSP_METHOD_MAX"
.LASF169:
	.string	"strm"
.LASF230:
	.string	"monitor_sd_event"
.LASF65:
	.string	"PARAMETER_NOT_UNDERSTOOD"
.LASF207:
	.string	"__list_del"
.LASF177:
	.string	"entry"
.LASF42:
	.string	"CREATED"
.LASF108:
	.string	"delay_task_queue"
.LASF192:
	.string	"register_sd_handler"
.LASF82:
	.string	"VERSION_NOT_SUPPORTED"
.LASF220:
	.string	"vTaskDelay"
.LASF10:
	.string	"long long unsigned int"
.LASF26:
	.string	"sa_family_t"
.LASF73:
	.string	"AGGREGATE_OPERATION_NOT_ALLOWED"
.LASF98:
	.string	"RTSP_STATE_PLAYING"
.LASF36:
	.string	"sa_data"
.LASF203:
	.string	"nodelay"
.LASF137:
	.string	"rtp_hdr"
.LASF189:
	.string	"init_sd_handler_list"
.LASF83:
	.string	"OPTION_NOT_SUPPORTED"
.LASF33:
	.string	"sockaddr"
.LASF93:
	.string	"RTSP_METHOD_TEARDOWN"
.LASF216:
	.string	"memset"
.LASF234:
	.string	"C:\\\\Users\\\\cwier\\\\documents\\\\github\\\\qcom\\\\examples\\\\solutions\\\\rtsp_softap_cam\\\\build"
.LASF235:
	.string	"do_sd_handler"
.LASF46:
	.string	"MOVED_TEMPORARILY"
.LASF170:
	.string	"get_frm"
.LASF206:
	.string	"list_del"
.LASF95:
	.string	"rtsp_state"
.LASF215:
	.string	"malloc"
.LASF88:
	.string	"RTSP_METHOD_SETUP"
.LASF144:
	.string	"HANDLING_STATE_RETRY"
.LASF133:
	.string	"get_frm_t"
.LASF23:
	.string	"in_addr"
.LASF20:
	.string	"u32_t"
.LASF96:
	.string	"RTSP_STATE_INIT"
.LASF75:
	.string	"UNSUPPORTED_TRANSPORT"
.LASF69:
	.string	"METHOD_NOT_VALID_IN_THIS_STATE"
.LASF221:
	.string	"lwip_recv"
.LASF152:
	.string	"rtcp_cli_port"
.LASF180:
	.string	"send_queue"
.LASF166:
	.string	"resp_body"
.LASF127:
	.string	"file_name"
.LASF2:
	.string	"short int"
.LASF225:
	.string	"ip4addr_ntoa"
.LASF148:
	.string	"transport"
.LASF62:
	.string	"REQUEST_ENTITY_TOO_LARGE"
.LASF70:
	.string	"HEADER_FIELD_NOT_VALID_FOR_RESOURCE"
.LASF178:
	.string	"rtsp_sd"
.LASF57:
	.string	"PROXY_AUTHENTICATION_REQUIRED"
.LASF146:
	.string	"HANDLING_STATE_ERROR"
.LASF227:
	.string	"set_block_mode"
.LASF109:
	.string	"data_type"
.LASF66:
	.string	"CONFERENCE_NOT_FOUND"
.LASF229:
	.string	"lwip_setsockopt"
.LASF58:
	.string	"REQUEST_TIME_OUT"
.LASF113:
	.string	"DATA_TYPE_RTCP_V_PKT"
.LASF135:
	.string	"MEDIA_TYPE_VIDEO"
.LASF91:
	.string	"RTSP_METHOD_GET_PARAMETER"
.LASF100:
	.string	"rtsp_srv_tid"
.LASF110:
	.string	"DATA_TYPE_RTSP_RESP"
.LASF54:
	.string	"NOT_FOUND"
.LASF43:
	.string	"LOW_ON_STORAGE_SPACE"
.LASF202:
	.string	"rtsp_salen"
.LASF160:
	.string	"rtsp_req"
.LASF81:
	.string	"GATEWAY_TIME_OUT"
.LASF25:
	.string	"s_addr"
.LASF222:
	.string	"handle_rtcp_pkt"
.LASF124:
	.string	"CHN_TYPE_MINOR"
.LASF149:
	.string	"rtp_chn"
.LASF64:
	.string	"UNSUPPORTED_MEDIA_TYPE"
.LASF15:
	.string	"uint32_t"
.LASF101:
	.string	"rtsp_lsn_sd"
.LASF143:
	.string	"HANDLING_STATE_HANDLED"
.LASF126:
	.string	"chn_no"
.LASF185:
	.string	"sd_handler"
.LASF213:
	.string	"free"
.LASF5:
	.string	"short unsigned int"
.LASF219:
	.string	"destroy_rtsp_sess"
.LASF19:
	.string	"u8_t"
.LASF121:
	.string	"FRM_TYPE_MAX"
.LASF74:
	.string	"ONLY_AGGREGATE_OPERATION_ALLOWED"
.LASF79:
	.string	"BAD_GATEWAY"
.LASF44:
	.string	"MULTIPLE_CHOICES"
.LASF162:
	.string	"resp_line"
.LASF39:
	.string	"next"
.LASF40:
	.string	"prev"
.LASF17:
	.string	"in_port_t"
.LASF174:
	.string	"rtcp_sa"
.LASF172:
	.string	"rtcp_sd"
	.ident	"GCC: (GNU) 10.4.0"
