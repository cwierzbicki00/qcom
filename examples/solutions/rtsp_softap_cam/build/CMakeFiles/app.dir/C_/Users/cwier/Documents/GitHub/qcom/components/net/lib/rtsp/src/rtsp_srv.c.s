	.file	"rtsp_srv.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.monitor_sd_event.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"Poll fds exceeds\r\n"
	.section	.text.monitor_sd_event,"ax",@progbits
	.align	1
	.globl	monitor_sd_event
	.type	monitor_sd_event, @function
monitor_sd_event:
.LFB40:
	.file 1 ".\\components\\net\\lib\\rtsp\\src\\rtsp_srv.c"
	.loc 1 30 1
	.cfi_startproc
.LVL0:
	.loc 1 31 5
	.loc 1 31 29 is_stmt 0
	lui	a3,%hi(.LANCHOR0)
	addi	a3,a3,%lo(.LANCHOR0)
	lw	a5,0(a3)
	.loc 1 31 8
	li	a4,30
	ble	a5,a4,.L2
	.loc 1 32 9 is_stmt 1
	lui	a0,%hi(.LC0)
.LVL1:
	.loc 1 30 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 32 9
	addi	a0,a0,%lo(.LC0)
	.loc 1 30 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 32 9
	call	printf
.LVL2:
	.loc 1 33 9 is_stmt 1
	.loc 1 39 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 33 16
	li	a0,-1
	.loc 1 39 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL3:
.L2:
	.loc 1 35 5 is_stmt 1
	.loc 1 35 39 is_stmt 0
	lui	a4,%hi(.LANCHOR1)
	addi	a4,a4,%lo(.LANCHOR1)
	srw	a0,a4,a5,3
	.loc 1 36 5 is_stmt 1
	.loc 1 36 43 is_stmt 0
	addsl	a4, a4, a5, 3
	.loc 1 37 21
	addi	a5,a5,1
	.loc 1 36 43
	sh	a1,4(a4)
	.loc 1 37 5 is_stmt 1
	.loc 1 37 21 is_stmt 0
	sw	a5,0(a3)
	.loc 1 38 5 is_stmt 1
	.loc 1 38 12 is_stmt 0
	li	a0,0
.LVL4:
	.loc 1 39 1
	ret
	.cfi_endproc
.LFE40:
	.size	monitor_sd_event, .-monitor_sd_event
	.section	.text.unmonitor_sd_event,"ax",@progbits
	.align	1
	.globl	unmonitor_sd_event
	.type	unmonitor_sd_event, @function
unmonitor_sd_event:
.LFB41:
	.loc 1 42 1 is_stmt 1
	.cfi_startproc
.LVL5:
	.loc 1 43 5
	.loc 1 44 5
	.loc 1 44 19 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	lw	a3,%lo(.LANCHOR0)(a5)
	addi	a2,a5,%lo(.LANCHOR0)
	.loc 1 45 28
	lui	a5,%hi(.LANCHOR1)
	.loc 1 44 12
	li	a4,0
	.loc 1 45 28
	addi	a5,a5,%lo(.LANCHOR1)
.LVL6:
.L9:
	.loc 1 44 17 is_stmt 1 discriminator 1
	.loc 1 44 5 is_stmt 0 discriminator 1
	ble	a3,a4,.L12
	.loc 1 45 9 is_stmt 1
	.loc 1 45 12 is_stmt 0
	lrw	a1,a5,a4,3
	bne	a1,a0,.L10
	.loc 1 46 13 is_stmt 1
	.loc 1 46 38 is_stmt 0
	addi	a3,a3,-1
	.loc 1 46 16
	ble	a3,a4,.L11
	.loc 1 47 17 is_stmt 1
	.loc 1 47 72 is_stmt 0
	lrw	a1,a5,a3,3
	.loc 1 47 36
	srw	a1,a5,a4,3
	.loc 1 48 17 is_stmt 1
	.loc 1 48 76 is_stmt 0
	addsl	a1, a5, a3, 3
	lh	a1,4(a1)
	.loc 1 48 40
	addsl	a5, a5, a4, 3
	sh	a1,4(a5)
.L11:
	.loc 1 50 13 is_stmt 1
	.loc 1 50 29 is_stmt 0
	sw	a3,0(a2)
	.loc 1 51 13 is_stmt 1
.L12:
	.loc 1 54 5
	.loc 1 55 1 is_stmt 0
	li	a0,0
.LVL7:
	ret
.LVL8:
.L10:
	.loc 1 44 39 is_stmt 1 discriminator 2
	.loc 1 44 40 is_stmt 0 discriminator 2
	addi	a4,a4,1
.LVL9:
	j	.L9
	.cfi_endproc
.LFE41:
	.size	unmonitor_sd_event, .-unmonitor_sd_event
	.section	.text.cleanup_sd_event,"ax",@progbits
	.align	1
	.globl	cleanup_sd_event
	.type	cleanup_sd_event, @function
cleanup_sd_event:
.LFB42:
	.loc 1 58 1 is_stmt 1
	.cfi_startproc
	.loc 1 59 5
	.loc 1 60 5
.LVL10:
	.loc 1 58 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s1,4(sp)
	.cfi_offset 9, -12
	.loc 1 61 28
	lui	s1,%hi(.LANCHOR1)
	.loc 1 58 1
	sw	s0,8(sp)
	sw	s2,0(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.loc 1 60 12
	li	s0,0
	.loc 1 60 19
	lui	s2,%hi(.LANCHOR0)
	.loc 1 61 28
	addi	s1,s1,%lo(.LANCHOR1)
.LVL11:
.L15:
	.loc 1 60 17 is_stmt 1 discriminator 1
	.loc 1 60 19 is_stmt 0 discriminator 1
	addi	a5,s2,%lo(.LANCHOR0)
	.loc 1 60 5 discriminator 1
	lw	a4,0(a5)
	bgt	a4,s0,.L17
	.loc 1 64 5 is_stmt 1
	.loc 1 65 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL12:
	.loc 1 64 22
	sw	zero,0(a5)
	.loc 1 65 1
	lw	s1,4(sp)
	.cfi_restore 9
	lw	s2,0(sp)
	.cfi_restore 18
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL13:
.L17:
	.cfi_restore_state
	.loc 1 61 9 is_stmt 1
	.loc 1 61 28 is_stmt 0
	lrw	a0,s1,s0,3
	.loc 1 61 12
	blt	a0,zero,.L16
	.loc 1 62 13 is_stmt 1
	call	lwip_close
.LVL14:
.L16:
	.loc 1 60 39 discriminator 2
	.loc 1 60 40 is_stmt 0 discriminator 2
	addi	s0,s0,1
.LVL15:
	j	.L15
	.cfi_endproc
.LFE42:
	.size	cleanup_sd_event, .-cleanup_sd_event
	.section	.rodata.rtsp_srv_thrd.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"rtsp_srv_thrd bind fail\r\n"
	.align	2
.LC2:
	.string	"Start listening connections error\r\n"
	.align	2
.LC3:
	.string	"monitor sd event fail\r\n"
	.align	2
.LC4:
	.string	"register rtsp_lsn_sd handler failed!\r\n"
	.align	2
.LC5:
	.string	"\r\nStart listening RTSP connections ...\r\n"
	.align	2
.LC6:
	.string	"epoll_wait for listen socket error %d, %d\r\n"
	.align	2
.LC7:
	.string	"epoll_wait error occured on this fd[%d]\n"
	.section	.text.rtsp_srv_thrd,"ax",@progbits
	.align	1
	.type	rtsp_srv_thrd, @function
rtsp_srv_thrd:
.LFB44:
	.loc 1 86 1 is_stmt 1
	.cfi_startproc
.LVL16:
	.loc 1 87 5
	.loc 1 86 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s0,56(sp)
	sw	s3,44(sp)
	sw	s4,40(sp)
	sw	s5,36(sp)
	sw	ra,60(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	sw	s6,32(sp)
	sw	s7,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.loc 1 86 1
	mv	s0,a0
.LVL17:
	.loc 1 88 5 is_stmt 1
	.loc 1 89 5
	.loc 1 90 5
	.loc 1 91 5
	.loc 1 92 5
	.loc 1 93 5
	.loc 1 156 24 is_stmt 0
	lui	s3,%hi(.LANCHOR0)
	.loc 1 93 29
	call	xTaskGetTickCount
.LVL18:
	.loc 1 156 24
	lui	s4,%hi(.LANCHOR1)
	.loc 1 170 21
	lui	s5,%hi(.LC7)
.LVL19:
.L36:
	.loc 1 95 5 is_stmt 1
	.loc 1 97 5
	.loc 1 98 9
	.loc 1 99 9
	.loc 1 100 9
	.loc 1 101 9
	.loc 1 103 9
	.loc 1 104 9
	.loc 1 105 9
	.loc 1 106 9
	.loc 1 107 9
	.loc 1 103 27 is_stmt 0
	li	a5,-1
	sw	a5,4(s0)
	.loc 1 104 27
	sw	a5,8(s0)
	.loc 1 105 25
	li	a5,8192
	addi	a5,a5,362
	sw	a5,12(s0)
	.loc 1 107 28
	li	a5,1
	sb	a5,16(s0)
	.loc 1 109 9 is_stmt 1
	call	init_rtsp_sess_list
.LVL20:
	.loc 1 110 9
	call	init_sd_handler_list
.LVL21:
	.loc 1 111 9
	call	init_delay_task_queue
.LVL22:
	.loc 1 114 9
	.loc 1 114 23 is_stmt 0
	lhu	a0,12(s0)
	call	create_and_bind
.LVL23:
	mv	s1,a0
.LVL24:
	.loc 1 115 9 is_stmt 1
	.loc 1 115 12 is_stmt 0
	bge	a0,zero,.L20
	.loc 1 116 13 is_stmt 1
	lui	a0,%hi(.LC1)
	addi	a0,a0,%lo(.LC1)
.L44:
	.loc 1 121 13 is_stmt 0
	call	printf
.LVL25:
	.loc 1 122 13 is_stmt 1
.L21:
	.loc 1 183 9
	lw	a0,4(s0)
	call	deregister_sd_handler
.LVL26:
	.loc 1 184 9
	lw	a0,4(s0)
	call	lwip_close
.LVL27:
	.loc 1 185 9
	lw	a0,8(s0)
	call	lwip_close
.LVL28:
	.loc 1 186 9
	.loc 1 186 27 is_stmt 0
	li	a5,-1
	sw	a5,4(s0)
	.loc 1 187 9 is_stmt 1
	.loc 1 187 27 is_stmt 0
	sw	a5,8(s0)
	.loc 1 188 9 is_stmt 1
	call	cleanup_sd_event
.LVL29:
	.loc 1 189 9
	li	a0,0
	call	rtsp_strm_report_cb
.LVL30:
	.loc 1 97 11
	.loc 1 98 21 is_stmt 0
	j	.L36
.LVL31:
.L20:
	.loc 1 120 9 is_stmt 1
	.loc 1 120 13 is_stmt 0
	li	a1,5
	call	lwip_listen
.LVL32:
	.loc 1 120 12
	bge	a0,zero,.L22
	.loc 1 121 13 is_stmt 1
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	j	.L44
.L22:
	.loc 1 124 9
	.loc 1 124 27 is_stmt 0
	sw	s1,4(s0)
	.loc 1 125 9 is_stmt 1
	.loc 1 125 13 is_stmt 0
	li	a1,3
	mv	a0,s1
	call	monitor_sd_event
.LVL33:
	.loc 1 125 12
	bge	a0,zero,.L23
	.loc 1 126 13 is_stmt 1
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	j	.L44
.L23:
	.loc 1 131 9
	.loc 1 131 13 is_stmt 0
	lui	a1,%hi(handle_lsn_sd)
	mv	a2,s0
	addi	a1,a1,%lo(handle_lsn_sd)
	mv	a0,s1
	call	register_sd_handler
.LVL34:
	.loc 1 131 12
	bge	a0,zero,.L24
	.loc 1 132 13 is_stmt 1
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	j	.L44
.L24:
	.loc 1 137 9
	lui	a0,%hi(.LC5)
	addi	a0,a0,%lo(.LC5)
	call	printf
.LVL35:
	.loc 1 138 9
	.loc 1 157 32 is_stmt 0
	li	s6,4
.LVL36:
.L26:
	.loc 1 138 15 is_stmt 1
	lbu	a5,16(s0)
	beq	a5,zero,.L21
	.loc 1 147 13
	.loc 1 147 17 is_stmt 0
	call	check_send_queue
.LVL37:
	.loc 1 147 16
	blt	a0,zero,.L26
	.loc 1 151 13 is_stmt 1
	.loc 1 151 30 is_stmt 0
	call	get_min_delay_time
.LVL38:
	.loc 1 152 13 is_stmt 1
	.loc 1 152 49 is_stmt 0
	li	s1,-1
	blt	a0,zero,.L29
	.loc 1 152 49 discriminator 1
	li	s1,1000
	div	s1,a0,s1
.LVL39:
.L29:
	.loc 1 155 13 is_stmt 1 discriminator 2
	.loc 1 156 17 discriminator 2
	.loc 1 156 24 is_stmt 0 discriminator 2
	lw	a1,%lo(.LANCHOR0)(s3)
	mv	a2,s1
	addi	a0,s4,%lo(.LANCHOR1)
	call	lwip_poll
.LVL40:
	.loc 1 157 21 is_stmt 1 discriminator 2
	addi	s7,s3,%lo(.LANCHOR0)
	.loc 1 157 48 is_stmt 0 discriminator 2
	bne	a0,zero,.L28
	.loc 1 157 36 discriminator 1
	call	__errno
.LVL41:
	.loc 1 157 32 discriminator 1
	lw	a5,0(a0)
	beq	a5,s6,.L29
.L31:
	addi	s1,s4,%lo(.LANCHOR1)
	.loc 1 152 49
	li	s2,0
.L30:
.LVL42:
	.loc 1 164 25 is_stmt 1 discriminator 1
	.loc 1 164 13 is_stmt 0 discriminator 1
	lw	a5,0(s7)
	bgt	a5,s2,.L34
	.loc 1 179 13 is_stmt 1
	call	do_delay_task
.LVL43:
	j	.L26
.LVL44:
.L28:
	.loc 1 158 13
	.loc 1 158 16 is_stmt 0
	bge	a0,zero,.L31
	sw	a0,12(sp)
	.loc 1 159 17 is_stmt 1
	.loc 1 159 80 is_stmt 0
	call	__errno
.LVL45:
	.loc 1 159 17
	lw	a2,0(a0)
	lw	a1,12(sp)
	lui	a0,%hi(.LC6)
	addi	a0,a0,%lo(.LC6)
	call	printf
.LVL46:
	.loc 1 160 17 is_stmt 1
	j	.L21
.LVL47:
.L34:
	.loc 1 165 17
	.loc 1 165 36 is_stmt 0
	lh	a1,6(s1)
	.loc 1 165 20
	beq	a1,zero,.L32
	.loc 1 168 17 is_stmt 1
	.loc 1 170 21 is_stmt 0
	lw	a0,0(s1)
	.loc 1 168 20
	bne	a1,s6,.L33
	.loc 1 170 21 is_stmt 1
	mv	a1,a0
	addi	a0,s5,%lo(.LC7)
	call	printf
.LVL48:
	.loc 1 171 21
	lw	a0,0(s1)
	call	destroy_rtsp_sess_contain_sd
.LVL49:
	.loc 1 172 21
.L32:
	.loc 1 164 47 discriminator 2
	.loc 1 164 48 is_stmt 0 discriminator 2
	addi	s2,s2,1
.LVL50:
	addi	s1,s1,8
	j	.L30
.L33:
	.loc 1 175 17 is_stmt 1
	call	do_sd_handler
.LVL51:
	j	.L32
	.cfi_endproc
.LFE44:
	.size	rtsp_srv_thrd, .-rtsp_srv_thrd
	.section	.text.update_sd_event,"ax",@progbits
	.align	1
	.globl	update_sd_event
	.type	update_sd_event, @function
update_sd_event:
.LFB43:
	.loc 1 74 1
	.cfi_startproc
.LVL52:
	.loc 1 75 5
	.loc 1 76 5
	.loc 1 76 19 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	lw	a3,%lo(.LANCHOR0)(a5)
	lui	a5,%hi(.LANCHOR1)
	addi	a5,a5,%lo(.LANCHOR1)
	.loc 1 76 12
	li	a4,0
.LVL53:
.L46:
	.loc 1 76 17 is_stmt 1 discriminator 1
	.loc 1 76 5 is_stmt 0 discriminator 1
	bgt	a3,a4,.L48
	.loc 1 81 5 is_stmt 1
	.loc 1 82 1 is_stmt 0
	li	a0,0
.LVL54:
	ret
.LVL55:
.L48:
	.loc 1 77 9 is_stmt 1
	.loc 1 77 12 is_stmt 0
	lw	a2,0(a5)
	bne	a2,a0,.L47
	.loc 1 78 13 is_stmt 1
	.loc 1 78 36 is_stmt 0
	sh	a1,4(a5)
.L47:
	.loc 1 76 39 is_stmt 1 discriminator 2
	.loc 1 76 40 is_stmt 0 discriminator 2
	addi	a4,a4,1
.LVL56:
	addi	a5,a5,8
	j	.L46
	.cfi_endproc
.LFE43:
	.size	update_sd_event, .-update_sd_event
	.section	.rodata.start_rtsp_srv.str1.4,"aMS",@progbits,1
	.align	2
.LC8:
	.string	"RTSP Server"
	.section	.text.start_rtsp_srv,"ax",@progbits
	.align	1
	.globl	start_rtsp_srv
	.type	start_rtsp_srv, @function
start_rtsp_srv:
.LFB45:
	.loc 1 196 1 is_stmt 1
	.cfi_startproc
	.loc 1 206 5
	lui	a5,%hi(.LANCHOR2)
	lui	a3,%hi(.LANCHOR3)
	lui	a1,%hi(.LC8)
	lui	a0,%hi(rtsp_srv_thrd)
	.loc 1 196 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 206 5
	addi	a5,a5,%lo(.LANCHOR2)
	li	a4,0
	addi	a3,a3,%lo(.LANCHOR3)
	li	a2,4096
	addi	a1,a1,%lo(.LC8)
	addi	a0,a0,%lo(rtsp_srv_thrd)
	.loc 1 196 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 206 5
	call	xTaskCreate
.LVL57:
	.loc 1 209 5 is_stmt 1
	.loc 1 210 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE45:
	.size	start_rtsp_srv, .-start_rtsp_srv
	.section	.text.stop_rtsp_srv,"ax",@progbits
	.align	1
	.globl	stop_rtsp_srv
	.type	stop_rtsp_srv, @function
stop_rtsp_srv:
.LFB46:
	.loc 1 213 1 is_stmt 1
	.cfi_startproc
	.loc 1 214 5
	.loc 1 213 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 214 27
	lui	a5,%hi(.LANCHOR3+16)
	.loc 1 213 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 214 27
	sb	zero,%lo(.LANCHOR3+16)(a5)
	.loc 1 215 5 is_stmt 1
	call	deinit_delay_task_queue
.LVL58:
	.loc 1 216 5
	call	deinit_sd_handler_list
.LVL59:
	.loc 1 217 5
	call	deinit_rtsp_sess_list
.LVL60:
	.loc 1 219 5
	.loc 1 220 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE46:
	.size	stop_rtsp_srv, .-stop_rtsp_srv
	.globl	rtsp_srv
	.section	.bss.gRTSPTaskHdl,"aw",@nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	gRTSPTaskHdl, @object
	.size	gRTSPTaskHdl, 4
gRTSPTaskHdl:
	.zero	4
	.section	.bss.g_poll_table,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	g_poll_table, @object
	.size	g_poll_table, 256
g_poll_table:
	.zero	256
	.section	.bss.g_poll_table_cnt,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	g_poll_table_cnt, @object
	.size	g_poll_table_cnt, 4
g_poll_table_cnt:
	.zero	4
	.section	.bss.rtsp_srv,"aw",@nobits
	.align	2
	.set	.LANCHOR3,. + 0
	.type	rtsp_srv, @object
	.size	rtsp_srv, 44
rtsp_srv:
	.zero	44
	.text
.Letext0:
	.file 2 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\machine\\_default_types.h"
	.file 3 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\sys\\_stdint.h"
	.file 4 ".\\components\\os\\freertos\\portable\\GCC\\RISC-V\\common/portmacro.h"
	.file 5 ".\\components\\os\\freertos\\include/task.h"
	.file 6 ".\\components\\net\\lwip\\lwip\\src\\include/lwip/sockets.h"
	.file 7 ".\\components\\net\\lib\\rtsp\\src\\list.h"
	.file 8 ".\\components\\net\\lwip\\lwip\\src\\include/lwip/memp.h"
	.file 9 ".\\components\\net\\lib\\rtsp\\inc\\librtspsrv.h"
	.file 10 ".\\components\\net\\lib\\rtsp\\src\\rtsp_srv.h"
	.file 11 ".\\components\\net\\lib\\rtsp\\src\\delay_task.h"
	.file 12 ".\\components\\net\\lib\\rtsp\\src\\sd_handler.h"
	.file 13 ".\\components\\net\\lib\\rtsp\\src\\rtsp_sess.h"
	.file 14 ".\\components\\net\\lib\\rtsp\\src\\util.h"
	.file 15 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\stdio.h"
	.file 16 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\sys\\errno.h"
	.file 17 ".\\components\\net\\lwip\\lwip\\src\\include/lwip/netif.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x725
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF83
	.byte	0xc
	.4byte	.LASF84
	.4byte	.LASF85
	.4byte	.Ldebug_ranges0+0
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
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.byte	0x4
	.4byte	.LASF9
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x62
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.byte	0x4
	.4byte	.LASF10
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x56
	.byte	0x5
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x4
	.4byte	.LASF12
	.byte	0x4
	.byte	0x44
	.byte	0x12
	.4byte	0x77
	.byte	0x4
	.4byte	.LASF13
	.byte	0x5
	.byte	0x5c
	.byte	0x26
	.4byte	0xa4
	.byte	0x6
	.byte	0x4
	.4byte	0xaa
	.byte	0x7
	.4byte	.LASF86
	.byte	0x8
	.byte	0x7
	.byte	0x1
	.4byte	0x3a
	.byte	0x8
	.byte	0x34
	.byte	0xe
	.4byte	0x112
	.byte	0x9
	.4byte	.LASF14
	.byte	0
	.byte	0x9
	.4byte	.LASF15
	.byte	0x1
	.byte	0x9
	.4byte	.LASF16
	.byte	0x2
	.byte	0x9
	.4byte	.LASF17
	.byte	0x3
	.byte	0x9
	.4byte	.LASF18
	.byte	0x4
	.byte	0x9
	.4byte	.LASF19
	.byte	0x5
	.byte	0x9
	.4byte	.LASF20
	.byte	0x6
	.byte	0x9
	.4byte	.LASF21
	.byte	0x7
	.byte	0x9
	.4byte	.LASF22
	.byte	0x8
	.byte	0x9
	.4byte	.LASF23
	.byte	0x9
	.byte	0x9
	.4byte	.LASF24
	.byte	0xa
	.byte	0x9
	.4byte	.LASF25
	.byte	0xb
	.byte	0x9
	.4byte	.LASF26
	.byte	0xc
	.byte	0x9
	.4byte	.LASF27
	.byte	0xd
	.byte	0
	.byte	0xa
	.4byte	.LASF87
	.byte	0x7
	.byte	0x1
	.4byte	0x3a
	.byte	0x11
	.byte	0x71
	.byte	0x6
	.4byte	0x137
	.byte	0x9
	.4byte	.LASF28
	.byte	0
	.byte	0x9
	.4byte	.LASF29
	.byte	0x1
	.byte	0x9
	.4byte	.LASF30
	.byte	0x2
	.byte	0
	.byte	0xb
	.4byte	.LASF33
	.byte	0x8
	.byte	0x6
	.2byte	0x205
	.byte	0x8
	.4byte	0x16f
	.byte	0xc
	.string	"fd"
	.byte	0x6
	.2byte	0x207
	.byte	0x7
	.4byte	0x25
	.byte	0
	.byte	0xd
	.4byte	.LASF31
	.byte	0x6
	.2byte	0x208
	.byte	0x9
	.4byte	0x41
	.byte	0x4
	.byte	0xd
	.4byte	.LASF32
	.byte	0x6
	.2byte	0x209
	.byte	0x9
	.4byte	0x41
	.byte	0x6
	.byte	0
	.byte	0xe
	.4byte	.LASF34
	.byte	0x8
	.byte	0x7
	.byte	0x2b
	.byte	0x8
	.4byte	0x197
	.byte	0xf
	.4byte	.LASF35
	.byte	0x7
	.byte	0x2c
	.byte	0x14
	.4byte	0x197
	.byte	0
	.byte	0xf
	.4byte	.LASF36
	.byte	0x7
	.byte	0x2c
	.byte	0x1b
	.4byte	0x197
	.byte	0x4
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x16f
	.byte	0x8
	.byte	0x7
	.byte	0x1
	.4byte	0x3a
	.byte	0x9
	.byte	0x16
	.byte	0x6
	.4byte	0x1b8
	.byte	0x9
	.4byte	.LASF37
	.byte	0
	.byte	0x9
	.4byte	.LASF38
	.byte	0x1
	.byte	0
	.byte	0xe
	.4byte	.LASF39
	.byte	0x2c
	.byte	0xa
	.byte	0x3c
	.byte	0x8
	.4byte	0x23b
	.byte	0xf
	.4byte	.LASF40
	.byte	0xa
	.byte	0x3d
	.byte	0xb
	.4byte	0x83
	.byte	0
	.byte	0xf
	.4byte	.LASF41
	.byte	0xa
	.byte	0x3e
	.byte	0x9
	.4byte	0x25
	.byte	0x4
	.byte	0xf
	.4byte	.LASF42
	.byte	0xa
	.byte	0x3f
	.byte	0x9
	.4byte	0x25
	.byte	0x8
	.byte	0xf
	.4byte	.LASF43
	.byte	0xa
	.byte	0x40
	.byte	0x14
	.4byte	0x48
	.byte	0xc
	.byte	0xf
	.4byte	.LASF44
	.byte	0xa
	.byte	0x41
	.byte	0x14
	.4byte	0x48
	.byte	0xe
	.byte	0xf
	.4byte	.LASF45
	.byte	0xa
	.byte	0x42
	.byte	0xa
	.4byte	0x85
	.byte	0x10
	.byte	0xf
	.4byte	.LASF46
	.byte	0xa
	.byte	0x43
	.byte	0x16
	.4byte	0x16f
	.byte	0x14
	.byte	0xf
	.4byte	.LASF47
	.byte	0xa
	.byte	0x44
	.byte	0x16
	.4byte	0x16f
	.byte	0x1c
	.byte	0xf
	.4byte	.LASF48
	.byte	0xa
	.byte	0x45
	.byte	0x16
	.4byte	0x16f
	.byte	0x24
	.byte	0
	.byte	0x10
	.4byte	.LASF39
	.byte	0xa
	.byte	0x5b
	.byte	0x18
	.4byte	0x1b8
	.byte	0x11
	.4byte	0x23b
	.byte	0x1
	.byte	0x14
	.byte	0x11
	.byte	0x5
	.byte	0x3
	.4byte	rtsp_srv
	.byte	0x12
	.4byte	0x137
	.4byte	0x265
	.byte	0x13
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.byte	0x14
	.4byte	.LASF49
	.byte	0x1
	.byte	0x15
	.byte	0x16
	.4byte	0x255
	.byte	0x5
	.byte	0x3
	.4byte	g_poll_table
	.byte	0x14
	.4byte	.LASF50
	.byte	0x1
	.byte	0x16
	.byte	0xc
	.4byte	0x25
	.byte	0x5
	.byte	0x3
	.4byte	g_poll_table_cnt
	.byte	0x14
	.4byte	.LASF51
	.byte	0x1
	.byte	0x17
	.byte	0x15
	.4byte	0x98
	.byte	0x5
	.byte	0x3
	.4byte	gRTSPTaskHdl
	.byte	0x15
	.4byte	.LASF52
	.byte	0x1
	.byte	0xd4
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x1
	.byte	0x9c
	.4byte	0x2d1
	.byte	0x16
	.4byte	.LVL58
	.4byte	0x61b
	.byte	0x16
	.4byte	.LVL59
	.4byte	0x627
	.byte	0x16
	.4byte	.LVL60
	.4byte	0x633
	.byte	0
	.byte	0x15
	.4byte	.LASF53
	.byte	0x1
	.byte	0xc3
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x1
	.byte	0x9c
	.4byte	0x326
	.byte	0x17
	.4byte	.LVL57
	.4byte	0x63f
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	rtsp_srv_thrd
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0x18
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0x18
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR3
	.byte	0x18
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x30
	.byte	0x18
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR2
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LASF88
	.byte	0x1
	.byte	0x55
	.byte	0xd
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x1
	.byte	0x9c
	.4byte	0x51e
	.byte	0x1a
	.string	"arg"
	.byte	0x1
	.byte	0x55
	.byte	0x21
	.4byte	0x83
	.4byte	.LLST5
	.byte	0x1b
	.4byte	.LASF54
	.byte	0x1
	.byte	0x57
	.byte	0x16
	.4byte	0x51e
	.4byte	.LLST6
	.byte	0x1c
	.string	"i"
	.byte	0x1
	.byte	0x58
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST7
	.byte	0x1b
	.4byte	.LASF41
	.byte	0x1
	.byte	0x59
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST8
	.byte	0x1b
	.4byte	.LASF55
	.byte	0x1
	.byte	0x5a
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST9
	.byte	0x1b
	.4byte	.LASF56
	.byte	0x1
	.byte	0x5b
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST10
	.byte	0x1b
	.4byte	.LASF57
	.byte	0x1
	.byte	0x5c
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST11
	.byte	0x1d
	.4byte	.LASF89
	.byte	0x1
	.byte	0x5d
	.byte	0x10
	.4byte	0x8c
	.byte	0x1e
	.string	"rtn"
	.byte	0x1
	.byte	0xb6
	.byte	0x5
	.4byte	.L21
	.byte	0x16
	.4byte	.LVL18
	.4byte	0x64c
	.byte	0x16
	.4byte	.LVL20
	.4byte	0x659
	.byte	0x16
	.4byte	.LVL21
	.4byte	0x665
	.byte	0x16
	.4byte	.LVL22
	.4byte	0x671
	.byte	0x16
	.4byte	.LVL23
	.4byte	0x67d
	.byte	0x16
	.4byte	.LVL25
	.4byte	0x689
	.byte	0x16
	.4byte	.LVL26
	.4byte	0x695
	.byte	0x16
	.4byte	.LVL27
	.4byte	0x6a1
	.byte	0x16
	.4byte	.LVL28
	.4byte	0x6a1
	.byte	0x16
	.4byte	.LVL29
	.4byte	0x569
	.byte	0x1f
	.4byte	.LVL30
	.4byte	0x6ae
	.4byte	0x42f
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1f
	.4byte	.LVL32
	.4byte	0x6ba
	.4byte	0x442
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x35
	.byte	0
	.byte	0x1f
	.4byte	.LVL33
	.4byte	0x5cf
	.4byte	0x45b
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x1f
	.4byte	.LVL34
	.4byte	0x6c7
	.4byte	0x475
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x18
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL35
	.4byte	0x689
	.4byte	0x48c
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x16
	.4byte	.LVL37
	.4byte	0x6d3
	.byte	0x16
	.4byte	.LVL38
	.4byte	0x6df
	.byte	0x1f
	.4byte	.LVL40
	.4byte	0x6eb
	.4byte	0x4bb
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0x18
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LVL41
	.4byte	0x6f8
	.byte	0x16
	.4byte	.LVL43
	.4byte	0x704
	.byte	0x16
	.4byte	.LVL45
	.4byte	0x6f8
	.byte	0x1f
	.4byte	.LVL46
	.4byte	0x689
	.4byte	0x4f4
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x4c
	.byte	0x6
	.byte	0
	.byte	0x1f
	.4byte	.LVL48
	.4byte	0x689
	.4byte	0x50b
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.byte	0x16
	.4byte	.LVL49
	.4byte	0x710
	.byte	0x16
	.4byte	.LVL51
	.4byte	0x71c
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x1b8
	.byte	0x15
	.4byte	.LASF58
	.byte	0x1
	.byte	0x49
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x1
	.byte	0x9c
	.4byte	0x569
	.byte	0x1a
	.string	"fd"
	.byte	0x1
	.byte	0x49
	.byte	0x19
	.4byte	0x25
	.4byte	.LLST12
	.byte	0x20
	.string	"ev"
	.byte	0x1
	.byte	0x49
	.byte	0x2a
	.4byte	0x2c
	.byte	0x1
	.byte	0x5b
	.byte	0x1c
	.string	"i"
	.byte	0x1
	.byte	0x4b
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST13
	.byte	0
	.byte	0x21
	.4byte	.LASF90
	.byte	0x1
	.byte	0x39
	.byte	0x6
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x1
	.byte	0x9c
	.4byte	0x597
	.byte	0x1c
	.string	"i"
	.byte	0x1
	.byte	0x3b
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST4
	.byte	0x16
	.4byte	.LVL14
	.4byte	0x6a1
	.byte	0
	.byte	0x15
	.4byte	.LASF59
	.byte	0x1
	.byte	0x29
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x1
	.byte	0x9c
	.4byte	0x5cf
	.byte	0x1a
	.string	"fd"
	.byte	0x1
	.byte	0x29
	.byte	0x1c
	.4byte	0x25
	.4byte	.LLST2
	.byte	0x1c
	.string	"i"
	.byte	0x1
	.byte	0x2b
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST3
	.byte	0
	.byte	0x15
	.4byte	.LASF60
	.byte	0x1
	.byte	0x1d
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x1
	.byte	0x9c
	.4byte	0x61b
	.byte	0x1a
	.string	"fd"
	.byte	0x1
	.byte	0x1d
	.byte	0x1a
	.4byte	0x25
	.4byte	.LLST0
	.byte	0x1a
	.string	"ev"
	.byte	0x1
	.byte	0x1d
	.byte	0x2b
	.4byte	0x2c
	.4byte	.LLST1
	.byte	0x17
	.4byte	.LVL2
	.4byte	0x689
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LASF61
	.4byte	.LASF61
	.byte	0xb
	.byte	0x1e
	.byte	0x6
	.byte	0x22
	.4byte	.LASF62
	.4byte	.LASF62
	.byte	0xc
	.byte	0x14
	.byte	0x6
	.byte	0x22
	.4byte	.LASF63
	.4byte	.LASF63
	.byte	0xd
	.byte	0x6e
	.byte	0x6
	.byte	0x23
	.4byte	.LASF64
	.4byte	.LASF64
	.byte	0x5
	.2byte	0x168
	.byte	0x10
	.byte	0x23
	.4byte	.LASF65
	.4byte	.LASF65
	.byte	0x5
	.2byte	0x5a8
	.byte	0xc
	.byte	0x22
	.4byte	.LASF66
	.4byte	.LASF66
	.byte	0xd
	.byte	0x6d
	.byte	0x6
	.byte	0x22
	.4byte	.LASF67
	.4byte	.LASF67
	.byte	0xc
	.byte	0x13
	.byte	0x6
	.byte	0x22
	.4byte	.LASF68
	.4byte	.LASF68
	.byte	0xb
	.byte	0x1d
	.byte	0x6
	.byte	0x22
	.4byte	.LASF69
	.4byte	.LASF69
	.byte	0xe
	.byte	0x6d
	.byte	0x5
	.byte	0x22
	.4byte	.LASF70
	.4byte	.LASF70
	.byte	0xf
	.byte	0xc8
	.byte	0x5
	.byte	0x22
	.4byte	.LASF71
	.4byte	.LASF71
	.byte	0xc
	.byte	0x1e
	.byte	0x6
	.byte	0x23
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x25b
	.byte	0x6
	.byte	0x22
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0x9
	.byte	0x59
	.byte	0x6
	.byte	0x23
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x25d
	.byte	0x5
	.byte	0x22
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0xc
	.byte	0x1d
	.byte	0x5
	.byte	0x22
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0xd
	.byte	0x81
	.byte	0x5
	.byte	0x22
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0xb
	.byte	0x18
	.byte	0x5
	.byte	0x23
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x270
	.byte	0x5
	.byte	0x22
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0x10
	.byte	0xf
	.byte	0xd
	.byte	0x22
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0xb
	.byte	0x17
	.byte	0x6
	.byte	0x22
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0xd
	.byte	0x7e
	.byte	0x6
	.byte	0x22
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0xc
	.byte	0x1b
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
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x8
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
	.byte	0x9
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xa
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
	.byte	0x5
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
	.byte	0xd
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
	.byte	0xe
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
	.byte	0x38
	.byte	0xb
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
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x16
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0x1b
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
	.byte	0x1c
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
	.byte	0
	.byte	0
	.byte	0x1e
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
	.byte	0x11
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x1f
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
	.byte	0x20
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
	.byte	0x21
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
	.byte	0x22
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
	.byte	0x23
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
.LLST5:
	.4byte	.LVL16
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18-1
	.4byte	.LFE44
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL17
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18-1
	.4byte	.LFE44
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL47
	.4byte	.LFE44
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL17
	.4byte	.LVL24
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL31
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL17
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL36
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL41-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL44
	.4byte	.LVL45-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL45-1
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x91
	.byte	0x4c
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL17
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL36
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL17
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL36
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LFE43
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LFE43
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL13
	.4byte	.LFE42
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LFE41
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LFE41
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4
	.4byte	.LFE40
	.2byte	0xa
	.byte	0x7f
	.byte	0x7f
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2-1
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LFE40
	.2byte	0x1
	.byte	0x5b
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
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF71:
	.string	"deregister_sd_handler"
.LASF81:
	.string	"destroy_rtsp_sess_contain_sd"
.LASF72:
	.string	"lwip_close"
.LASF34:
	.string	"list_head"
.LASF82:
	.string	"do_sd_handler"
.LASF29:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_ACD"
.LASF35:
	.string	"next"
.LASF42:
	.string	"http_lsn_sd"
.LASF3:
	.string	"short int"
.LASF18:
	.string	"MEMP_TCP_SEG"
.LASF69:
	.string	"create_and_bind"
.LASF62:
	.string	"deinit_sd_handler_list"
.LASF13:
	.string	"TaskHandle_t"
.LASF9:
	.string	"__uint32_t"
.LASF50:
	.string	"g_poll_table_cnt"
.LASF40:
	.string	"rtsp_srv_tid"
.LASF58:
	.string	"update_sd_event"
.LASF53:
	.string	"start_rtsp_srv"
.LASF23:
	.string	"MEMP_SYS_TIMEOUT"
.LASF30:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF57:
	.string	"min_delay_time"
.LASF17:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF10:
	.string	"uint32_t"
.LASF60:
	.string	"monitor_sd_event"
.LASF24:
	.string	"MEMP_NETDB"
.LASF7:
	.string	"long long int"
.LASF12:
	.string	"TickType_t"
.LASF90:
	.string	"cleanup_sd_event"
.LASF87:
	.string	"lwip_internal_netif_client_data_index"
.LASF51:
	.string	"gRTSPTaskHdl"
.LASF5:
	.string	"long int"
.LASF70:
	.string	"printf"
.LASF86:
	.string	"tskTaskControlBlock"
.LASF77:
	.string	"get_min_delay_time"
.LASF65:
	.string	"xTaskGetTickCount"
.LASF32:
	.string	"revents"
.LASF28:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF46:
	.string	"rtsp_sess_list"
.LASF2:
	.string	"unsigned char"
.LASF27:
	.string	"MEMP_MAX"
.LASF1:
	.string	"signed char"
.LASF63:
	.string	"deinit_rtsp_sess_list"
.LASF8:
	.string	"long long unsigned int"
.LASF75:
	.string	"register_sd_handler"
.LASF88:
	.string	"rtsp_srv_thrd"
.LASF0:
	.string	"unsigned int"
.LASF66:
	.string	"init_rtsp_sess_list"
.LASF89:
	.string	"tick_start"
.LASF59:
	.string	"unmonitor_sd_event"
.LASF41:
	.string	"rtsp_lsn_sd"
.LASF33:
	.string	"pollfd"
.LASF43:
	.string	"rtsp_port"
.LASF84:
	.string	".\\components\\net\\lib\\rtsp\\src\\rtsp_srv.c"
.LASF68:
	.string	"init_delay_task_queue"
.LASF4:
	.string	"short unsigned int"
.LASF19:
	.string	"MEMP_REASSDATA"
.LASF11:
	.string	"char"
.LASF22:
	.string	"MEMP_TCPIP_MSG_API"
.LASF52:
	.string	"stop_rtsp_srv"
.LASF74:
	.string	"lwip_listen"
.LASF38:
	.string	"RTSP_STRM_REPORT_MAX"
.LASF64:
	.string	"xTaskCreate"
.LASF25:
	.string	"MEMP_PBUF"
.LASF55:
	.string	"nfds"
.LASF54:
	.string	"srvp"
.LASF83:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF6:
	.string	"long unsigned int"
.LASF14:
	.string	"MEMP_RAW_PCB"
.LASF44:
	.string	"http_port"
.LASF47:
	.string	"sd_handler_list"
.LASF76:
	.string	"check_send_queue"
.LASF78:
	.string	"lwip_poll"
.LASF73:
	.string	"rtsp_strm_report_cb"
.LASF26:
	.string	"MEMP_PBUF_POOL"
.LASF67:
	.string	"init_sd_handler_list"
.LASF48:
	.string	"delay_task_queue"
.LASF21:
	.string	"MEMP_NETCONN"
.LASF31:
	.string	"events"
.LASF16:
	.string	"MEMP_TCP_PCB"
.LASF85:
	.string	"C:\\\\Users\\\\cwier\\\\documents\\\\github\\\\qcom\\\\examples\\\\solutions\\\\rtsp_softap_cam\\\\build"
.LASF80:
	.string	"do_delay_task"
.LASF15:
	.string	"MEMP_UDP_PCB"
.LASF36:
	.string	"prev"
.LASF61:
	.string	"deinit_delay_task_queue"
.LASF37:
	.string	"RTSP_STRM_REPORT_CLIENT_EXIT"
.LASF49:
	.string	"g_poll_table"
.LASF56:
	.string	"timeout"
.LASF45:
	.string	"thrd_running"
.LASF79:
	.string	"__errno"
.LASF20:
	.string	"MEMP_NETBUF"
.LASF39:
	.string	"rtsp_srv"
	.ident	"GCC: (GNU) 10.4.0"
