	.file	"metrics.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.metrics_timer_cb.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"[METRICS] frames_in=%u frames_sent=%u frames_dropped=%u clients=%d sta=%d stream=%d q=%u free=%u/%u heap=%u psram=%u\r\n"
	.section	.text.metrics_timer_cb,"ax",@progbits
	.align	1
	.type	metrics_timer_cb, @function
metrics_timer_cb:
.LFB79:
	.file 1 ".\\examples\\usb_cam_stream\\metrics.c"
	.loc 1 28 1
	.cfi_startproc
.LVL0:
	.loc 1 29 5
	.loc 1 31 5
	.loc 1 28 1 is_stmt 0
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sw	ra,108(sp)
	sw	s0,104(sp)
	sw	s1,100(sp)
	sw	s6,80(sp)
	sw	s8,76(sp)
	sw	s9,72(sp)
	sw	s2,96(sp)
	sw	s3,92(sp)
	sw	s4,88(sp)
	sw	s5,84(sp)
	sw	s10,68(sp)
	sw	s11,64(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 22, -32
	.cfi_offset 24, -36
	.cfi_offset 25, -40
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 26, -44
	.cfi_offset 27, -48
	.loc 1 31 32
	call	http_get_counters
.LVL1:
	mv	s6,a0
.LVL2:
	.loc 1 33 5 is_stmt 1
	.loc 1 33 19 is_stmt 0
	call	uvc_get_frames_captured
.LVL3:
	.loc 1 34 5 is_stmt 1
	.loc 1 38 40 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	.loc 1 38 13
	lw	s0,%lo(.LANCHOR0)(a5)
	lw	s1,%lo(.LANCHOR0+4)(a5)
	.loc 1 34 14
	lw	a6,16(s6)
	lw	a7,20(s6)
.LVL4:
	.loc 1 35 5 is_stmt 1
	.loc 1 35 14 is_stmt 0
	lw	a2,8(s6)
	lw	a3,12(s6)
.LVL5:
	.loc 1 38 5 is_stmt 1
	.loc 1 39 5
	.loc 1 40 5
	.loc 1 42 5
	.loc 1 38 13 is_stmt 0
	sub64	s8,a0,s0
	addi	t1,a5,%lo(.LANCHOR0)
	.loc 1 42 60
	bge	s9,zero,.L2
	li	s8,0
.L2:
	.loc 1 43 5 is_stmt 1
	.loc 1 39 40 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	.loc 1 39 13
	lw	s2,%lo(.LANCHOR1)(a5)
	lw	s3,%lo(.LANCHOR1+4)(a5)
	addi	a4,a5,%lo(.LANCHOR1)
	sub64	s10,a6,s2
	.loc 1 43 60
	bge	s11,zero,.L4
	li	s10,0
.L4:
	.loc 1 44 5 is_stmt 1
	.loc 1 40 40 is_stmt 0
	lui	a5,%hi(.LANCHOR2)
	.loc 1 40 13
	lw	s4,%lo(.LANCHOR2)(a5)
	lw	s5,%lo(.LANCHOR2+4)(a5)
	addi	a5,a5,%lo(.LANCHOR2)
	sub64	s0,a2,s4
	sw	s1,28(sp)
	sw	s0,24(sp)
	.loc 1 44 60
	lw	s0,28(sp)
	bge	s0,zero,.L6
	li	s0,0
	li	s1,0
	sw	s0,24(sp)
	sw	s1,28(sp)
.L6:
.LVL6:
	.loc 1 46 5 is_stmt 1
	.loc 1 46 20 is_stmt 0
	sw	a1,4(t1)
.LVL7:
	.loc 1 47 5 is_stmt 1
	.loc 1 48 25 is_stmt 0
	sw	a2,0(a5)
.LVL8:
	sw	a3,4(a5)
	.loc 1 46 20
	sw	a0,0(t1)
	.loc 1 47 22
	sw	a7,4(a4)
.LVL9:
	.loc 1 48 5 is_stmt 1
	.loc 1 50 5
	.loc 1 47 22 is_stmt 0
	sw	a6,0(a4)
	.loc 1 50 23
	call	wifi_ap_get_sta_count
.LVL10:
	.loc 1 51 5 is_stmt 1
	.loc 1 51 27 is_stmt 0
	lbu	a6,24(s6)
	.loc 1 56 5
	addi	a2,sp,60
	addi	a1,sp,56
	.loc 1 51 27
	andi	a6,a6,0xff
.LVL11:
	.loc 1 52 5 is_stmt 1
	.loc 1 52 9 is_stmt 0
	add	a4,a0,a6
	sw	a0,40(sp)
	.loc 1 56 5
	addi	a0,sp,52
.LVL12:
	.loc 1 52 9
	sw	a6,44(sp)
	sw	a4,36(sp)
.LVL13:
	.loc 1 53 5 is_stmt 1
	.loc 1 53 14 is_stmt 0
	sw	zero,52(sp)
	.loc 1 54 5 is_stmt 1
	.loc 1 54 14 is_stmt 0
	sw	zero,56(sp)
	.loc 1 55 5 is_stmt 1
	.loc 1 55 14 is_stmt 0
	sw	zero,60(sp)
	.loc 1 56 5 is_stmt 1
	call	frame_pool_stats
.LVL14:
	.loc 1 58 5
	lw	a7,60(sp)
	lw	s1,56(sp)
	lw	s3,52(sp)
	sw	a7,32(sp)
	.loc 1 62 22 is_stmt 0
	call	kfree_size
.LVL15:
	mv	s5,a0
	.loc 1 62 46
	call	pfree_size
.LVL16:
	.loc 1 58 5
	lw	a7,32(sp)
	lw	a6,44(sp)
	lw	a5,40(sp)
	lw	a4,36(sp)
	lw	a3,24(sp)
	sw	a0,12(sp)
	lui	a0,%hi(.LC0)
	sw	s5,8(sp)
	sw	s3,4(sp)
	sw	s1,0(sp)
	mv	a2,s10
	mv	a1,s8
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL17:
	.loc 1 63 1
	lw	ra,108(sp)
	.cfi_restore 1
	lw	s0,104(sp)
	.cfi_restore 8
	lw	s1,100(sp)
	.cfi_restore 9
	lw	s2,96(sp)
	.cfi_restore 18
	lw	s3,92(sp)
	.cfi_restore 19
	lw	s4,88(sp)
	.cfi_restore 20
	lw	s5,84(sp)
	.cfi_restore 21
	lw	s6,80(sp)
	.cfi_restore 22
.LVL18:
	lw	s8,76(sp)
	.cfi_restore 24
	lw	s9,72(sp)
	.cfi_restore 25
	lw	s10,68(sp)
	.cfi_restore 26
	lw	s11,64(sp)
	.cfi_restore 27
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
.LVL19:
	jr	ra
	.cfi_endproc
.LFE79:
	.size	metrics_timer_cb, .-metrics_timer_cb
	.section	.rodata.cmd_mem_stats.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"SRAM heap free:  %u bytes\r\n"
	.align	2
.LC2:
	.string	"PSRAM heap free: %u bytes\r\n"
	.align	2
.LC3:
	.string	"Frame pool:      %u total, %u free, %u queued\r\n"
	.section	.text.cmd_mem_stats,"ax",@progbits
	.align	1
	.type	cmd_mem_stats, @function
cmd_mem_stats:
.LFB81:
	.loc 1 88 1 is_stmt 1
	.cfi_startproc
.LVL20:
	.loc 1 89 5
	.loc 1 89 17
	.loc 1 91 5
	.loc 1 88 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 91 55
	call	kfree_size
.LVL21:
	mv	a1,a0
	.loc 1 91 5
	lui	a0,%hi(.LC1)
	addi	a0,a0,%lo(.LC1)
	call	printf
.LVL22:
	.loc 1 92 5 is_stmt 1
	.loc 1 92 55 is_stmt 0
	call	pfree_size
.LVL23:
	mv	a1,a0
	.loc 1 92 5
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL24:
	.loc 1 94 5 is_stmt 1
	.loc 1 95 5
	addi	a2,sp,12
	addi	a1,sp,8
	addi	a0,sp,4
	call	frame_pool_stats
.LVL25:
	.loc 1 96 5
	lw	a3,12(sp)
	lw	a2,8(sp)
	lw	a1,4(sp)
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	call	printf
.LVL26:
	.loc 1 99 5
	.loc 1 100 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE81:
	.size	cmd_mem_stats, .-cmd_mem_stats
	.section	.rodata.metrics_init.str1.4,"aMS",@progbits,1
	.align	2
.LC4:
	.string	"metrics"
	.align	2
.LC5:
	.string	"\033[0;31m[E][METRICS] metrics timer create failed\r\n"
	.align	2
.LC6:
	.string	"\033[0m[I][METRICS] 1 Hz metrics timer started\r\n"
	.section	.text.metrics_init,"ax",@progbits
	.align	1
	.globl	metrics_init
	.type	metrics_init, @function
metrics_init:
.LFB80:
	.loc 1 66 1 is_stmt 1
	.cfi_startproc
	.loc 1 67 5
	.loc 1 66 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 67 32
	call	http_get_counters
.LVL27:
	mv	s0,a0
.LVL28:
	.loc 1 68 5 is_stmt 1
	.loc 1 68 22 is_stmt 0
	call	uvc_get_frames_captured
.LVL29:
	.loc 1 69 25
	lw	a2,16(s0)
	lw	a3,20(s0)
	.loc 1 68 20
	lui	a5,%hi(.LANCHOR0)
	sw	a0,%lo(.LANCHOR0)(a5)
	sw	a1,%lo(.LANCHOR0+4)(a5)
	.loc 1 69 5 is_stmt 1
	.loc 1 69 22 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	sw	a2,%lo(.LANCHOR1)(a5)
	sw	a3,%lo(.LANCHOR1+4)(a5)
	.loc 1 70 5 is_stmt 1
	.loc 1 70 28 is_stmt 0
	lw	a2,8(s0)
	lw	a3,12(s0)
	.loc 1 70 25
	lui	a5,%hi(.LANCHOR2)
	.loc 1 72 25
	lui	a4,%hi(metrics_timer_cb)
	lui	a0,%hi(.LC4)
	.loc 1 70 25
	sw	a2,%lo(.LANCHOR2)(a5)
	sw	a3,%lo(.LANCHOR2+4)(a5)
	.loc 1 72 5 is_stmt 1
	.loc 1 72 25 is_stmt 0
	addi	a4,a4,%lo(metrics_timer_cb)
	li	a3,0
	li	a2,1
	li	a1,1000
	addi	a0,a0,%lo(.LC4)
	call	xTimerCreate
.LVL30:
	.loc 1 74 5 is_stmt 1
	.loc 1 74 8 is_stmt 0
	bne	a0,zero,.L12
	.loc 1 75 9 is_stmt 1
	lui	a0,%hi(.LC5)
.LVL31:
	addi	a0,a0,%lo(.LC5)
.LVL32:
.L14:
	.loc 1 81 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 80 5
	tail	printf
.LVL33:
.L12:
	.cfi_restore_state
	mv	s0,a0
.LVL34:
	.loc 1 79 5 is_stmt 1
	call	xTaskGetTickCount
.LVL35:
	mv	a2,a0
	li	a4,0
	li	a3,0
	li	a1,1
	mv	a0,s0
	call	xTimerGenericCommand
.LVL36:
	.loc 1 80 5
	lui	a0,%hi(.LC6)
	addi	a0,a0,%lo(.LC6)
	j	.L14
	.cfi_endproc
.LFE80:
	.size	metrics_init, .-metrics_init
	.globl	__fsym_mem_stats
	.globl	__fsym_mem_stats_name
	.section	.bss.prev_frames_dropped,"aw",@nobits
	.align	3
	.set	.LANCHOR2,. + 0
	.type	prev_frames_dropped, @object
	.size	prev_frames_dropped, 8
prev_frames_dropped:
	.zero	8
	.section	.bss.prev_frames_in,"aw",@nobits
	.align	3
	.set	.LANCHOR0,. + 0
	.type	prev_frames_in, @object
	.size	prev_frames_in, 8
prev_frames_in:
	.zero	8
	.section	.bss.prev_frames_sent,"aw",@nobits
	.align	3
	.set	.LANCHOR1,. + 0
	.type	prev_frames_sent, @object
	.size	prev_frames_sent, 8
prev_frames_sent:
	.zero	8
	.section	.rodata.__fsym_mem_stats_name,"a"
	.align	2
	.type	__fsym_mem_stats_name, @object
	.size	__fsym_mem_stats_name, 10
__fsym_mem_stats_name:
	.string	"mem_stats"
	.section	FSymTab,"a"
	.align	2
	.type	__fsym_mem_stats, @object
	.size	__fsym_mem_stats, 8
__fsym_mem_stats:
	.word	__fsym_mem_stats_name
	.word	cmd_mem_stats
	.text
.Letext0:
	.file 2 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\machine\\_default_types.h"
	.file 3 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\sys\\_stdint.h"
	.file 4 ".\\examples\\usb_cam_stream\\http_server.h"
	.file 5 ".\\components\\os\\freertos\\portable\\GCC\\RISC-V\\common/portmacro.h"
	.file 6 ".\\components\\os\\freertos\\include/timers.h"
	.file 7 ".\\components\\shell\\shell.h"
	.file 8 ".\\components\\mm\\mem.h"
	.file 9 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\stdio.h"
	.file 10 ".\\examples\\usb_cam_stream\\frame_pool.h"
	.file 11 ".\\examples\\usb_cam_stream\\uvc_capture.h"
	.file 12 ".\\components\\os\\freertos\\include/task.h"
	.file 13 ".\\examples\\usb_cam_stream\\wifi_ap.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x5ec
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF60
	.byte	0xc
	.4byte	.LASF61
	.4byte	.LASF62
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.byte	0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4d
	.byte	0x12
	.4byte	0x54
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.byte	0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x67
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x67
	.byte	0x17
	.4byte	0x7a
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.byte	0x3
	.4byte	.LASF11
	.byte	0x2
	.byte	0x69
	.byte	0x20
	.4byte	0x25
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x2c
	.byte	0x13
	.4byte	0x48
	.byte	0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x5b
	.byte	0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x38
	.byte	0x13
	.4byte	0x6e
	.byte	0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x3c
	.byte	0x14
	.4byte	0x81
	.byte	0x5
	.4byte	0xbf
	.byte	0x6
	.byte	0x20
	.byte	0x4
	.byte	0x8
	.byte	0x9
	.4byte	0x10e
	.byte	0x7
	.4byte	.LASF17
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.4byte	0xcb
	.byte	0
	.byte	0x7
	.4byte	.LASF18
	.byte	0x4
	.byte	0xa
	.byte	0x17
	.4byte	0xcb
	.byte	0x8
	.byte	0x7
	.4byte	.LASF19
	.byte	0x4
	.byte	0xb
	.byte	0x17
	.4byte	0xcb
	.byte	0x10
	.byte	0x7
	.4byte	.LASF20
	.byte	0x4
	.byte	0xc
	.byte	0x16
	.4byte	0x115
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF21
	.byte	0x5
	.4byte	0x10e
	.byte	0x3
	.4byte	.LASF22
	.byte	0x4
	.byte	0xd
	.byte	0x3
	.4byte	0xd0
	.byte	0x8
	.4byte	0x11a
	.byte	0x9
	.byte	0x4
	.4byte	0x131
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF23
	.byte	0x8
	.4byte	0x131
	.byte	0x9
	.byte	0x4
	.4byte	0x138
	.byte	0x3
	.4byte	.LASF24
	.byte	0x5
	.byte	0x42
	.byte	0x11
	.4byte	0x9b
	.byte	0x3
	.4byte	.LASF25
	.byte	0x5
	.byte	0x44
	.byte	0x12
	.4byte	0xa7
	.byte	0x3
	.4byte	.LASF26
	.byte	0x6
	.byte	0x50
	.byte	0x22
	.4byte	0x167
	.byte	0x9
	.byte	0x4
	.4byte	0x16d
	.byte	0xa
	.4byte	.LASF63
	.byte	0x3
	.4byte	.LASF27
	.byte	0x7
	.byte	0x3f
	.byte	0xf
	.4byte	0x17e
	.byte	0x9
	.byte	0x4
	.4byte	0x184
	.byte	0xb
	.4byte	0x8d
	.byte	0x9
	.byte	0x4
	.4byte	0x12b
	.byte	0xc
	.4byte	.LASF64
	.byte	0x8
	.byte	0x7
	.byte	0x5e
	.byte	0x8
	.4byte	0x1b7
	.byte	0x7
	.4byte	.LASF28
	.byte	0x7
	.byte	0x5f
	.byte	0x11
	.4byte	0x13d
	.byte	0
	.byte	0x7
	.4byte	.LASF29
	.byte	0x7
	.byte	0x63
	.byte	0x12
	.4byte	0x172
	.byte	0x4
	.byte	0
	.byte	0x8
	.4byte	0x18f
	.byte	0xd
	.4byte	.LASF30
	.byte	0x1
	.byte	0x17
	.byte	0x11
	.4byte	0xbf
	.byte	0x5
	.byte	0x3
	.4byte	prev_frames_in
	.byte	0xd
	.4byte	.LASF31
	.byte	0x1
	.byte	0x18
	.byte	0x11
	.4byte	0xbf
	.byte	0x5
	.byte	0x3
	.4byte	prev_frames_sent
	.byte	0xd
	.4byte	.LASF32
	.byte	0x1
	.byte	0x19
	.byte	0x11
	.4byte	0xbf
	.byte	0x5
	.byte	0x3
	.4byte	prev_frames_dropped
	.byte	0xe
	.4byte	0x138
	.4byte	0x202
	.byte	0xf
	.4byte	0x94
	.byte	0x9
	.byte	0
	.byte	0x8
	.4byte	0x1f2
	.byte	0x10
	.4byte	.LASF33
	.byte	0x1
	.byte	0x65
	.byte	0xc
	.4byte	0x202
	.byte	0x5
	.byte	0x3
	.4byte	__fsym_mem_stats_name
	.byte	0x10
	.4byte	.LASF34
	.byte	0x1
	.byte	0x65
	.byte	0x64
	.4byte	0x1b7
	.byte	0x5
	.byte	0x3
	.4byte	__fsym_mem_stats
	.byte	0x11
	.4byte	.LASF65
	.byte	0x1
	.byte	0x57
	.byte	0xc
	.4byte	0x8d
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.byte	0x1
	.byte	0x9c
	.4byte	0x306
	.byte	0x12
	.4byte	.LASF35
	.byte	0x1
	.byte	0x57
	.byte	0x1e
	.4byte	0x8d
	.4byte	.LLST12
	.byte	0x12
	.4byte	.LASF36
	.byte	0x1
	.byte	0x57
	.byte	0x2b
	.4byte	0x189
	.4byte	.LLST13
	.byte	0xd
	.4byte	.LASF37
	.byte	0x1
	.byte	0x5e
	.byte	0xe
	.4byte	0xa7
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0xd
	.4byte	.LASF38
	.byte	0x1
	.byte	0x5e
	.byte	0x15
	.4byte	0xa7
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0xd
	.4byte	.LASF39
	.byte	0x1
	.byte	0x5e
	.byte	0x1f
	.4byte	0xa7
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x13
	.4byte	.LVL21
	.4byte	0x575
	.byte	0x14
	.4byte	.LVL22
	.4byte	0x581
	.4byte	0x2b2
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0x13
	.4byte	.LVL23
	.4byte	0x58d
	.byte	0x14
	.4byte	.LVL24
	.4byte	0x581
	.4byte	0x2d2
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x14
	.4byte	.LVL25
	.4byte	0x599
	.4byte	0x2f2
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x16
	.4byte	.LVL26
	.4byte	0x581
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.LASF66
	.byte	0x1
	.byte	0x41
	.byte	0x6
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.byte	0x1
	.byte	0x9c
	.4byte	0x3af
	.byte	0x18
	.string	"c"
	.byte	0x1
	.byte	0x43
	.byte	0x1c
	.4byte	0x3af
	.4byte	.LLST14
	.byte	0x18
	.string	"tmr"
	.byte	0x1
	.byte	0x48
	.byte	0x13
	.4byte	0x15b
	.4byte	.LLST15
	.byte	0x13
	.4byte	.LVL27
	.4byte	0x5a5
	.byte	0x13
	.4byte	.LVL29
	.4byte	0x5b1
	.byte	0x14
	.4byte	.LVL30
	.4byte	0x5bd
	.4byte	0x37d
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0x15
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x15
	.byte	0x1
	.byte	0x5e
	.byte	0x5
	.byte	0x3
	.4byte	metrics_timer_cb
	.byte	0
	.byte	0x19
	.4byte	.LVL33
	.4byte	0x581
	.byte	0x13
	.4byte	.LVL35
	.4byte	0x5c9
	.byte	0x16
	.4byte	.LVL36
	.4byte	0x5d6
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x15
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x15
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0x126
	.byte	0x1a
	.4byte	.LASF67
	.byte	0x1
	.byte	0x1b
	.byte	0xd
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.byte	0x1
	.byte	0x9c
	.4byte	0x575
	.byte	0x12
	.4byte	.LASF40
	.byte	0x1
	.byte	0x1b
	.byte	0x2c
	.4byte	0x15b
	.4byte	.LLST0
	.byte	0x18
	.string	"c"
	.byte	0x1
	.byte	0x1f
	.byte	0x1c
	.4byte	0x3af
	.4byte	.LLST1
	.byte	0x18
	.string	"fi"
	.byte	0x1
	.byte	0x21
	.byte	0xe
	.4byte	0xbf
	.4byte	.LLST2
	.byte	0x18
	.string	"fs"
	.byte	0x1
	.byte	0x22
	.byte	0xe
	.4byte	0xbf
	.4byte	.LLST3
	.byte	0x18
	.string	"fd"
	.byte	0x1
	.byte	0x23
	.byte	0xe
	.4byte	0xbf
	.4byte	.LLST4
	.byte	0x1b
	.4byte	.LASF41
	.byte	0x1
	.byte	0x26
	.byte	0xd
	.4byte	0xb3
	.4byte	.LLST5
	.byte	0x1b
	.4byte	.LASF42
	.byte	0x1
	.byte	0x27
	.byte	0xd
	.4byte	0xb3
	.4byte	.LLST6
	.byte	0x1b
	.4byte	.LASF43
	.byte	0x1
	.byte	0x28
	.byte	0xd
	.4byte	0xb3
	.4byte	.LLST7
	.byte	0x1c
	.string	"dfi"
	.byte	0x1
	.byte	0x2a
	.byte	0xe
	.4byte	0xbf
	.byte	0x1c
	.string	"dfs"
	.byte	0x1
	.byte	0x2b
	.byte	0xe
	.4byte	0xbf
	.byte	0x18
	.string	"dfd"
	.byte	0x1
	.byte	0x2c
	.byte	0xe
	.4byte	0xbf
	.4byte	.LLST8
	.byte	0x1b
	.4byte	.LASF44
	.byte	0x1
	.byte	0x32
	.byte	0x9
	.4byte	0x8d
	.4byte	.LLST9
	.byte	0x1b
	.4byte	.LASF45
	.byte	0x1
	.byte	0x33
	.byte	0x9
	.4byte	0x8d
	.4byte	.LLST10
	.byte	0x1b
	.4byte	.LASF46
	.byte	0x1
	.byte	0x34
	.byte	0x9
	.4byte	0x8d
	.4byte	.LLST11
	.byte	0xd
	.4byte	.LASF47
	.byte	0x1
	.byte	0x35
	.byte	0xe
	.4byte	0xa7
	.byte	0x2
	.byte	0x91
	.byte	0x44
	.byte	0xd
	.4byte	.LASF48
	.byte	0x1
	.byte	0x36
	.byte	0xe
	.4byte	0xa7
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0xd
	.4byte	.LASF49
	.byte	0x1
	.byte	0x37
	.byte	0xe
	.4byte	0xa7
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x13
	.4byte	.LVL1
	.4byte	0x5a5
	.byte	0x13
	.4byte	.LVL3
	.4byte	0x5b1
	.byte	0x13
	.4byte	.LVL10
	.4byte	0x5e3
	.byte	0x14
	.4byte	.LVL14
	.4byte	0x599
	.4byte	0x506
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x44
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0
	.byte	0x13
	.4byte	.LVL15
	.4byte	0x575
	.byte	0x13
	.4byte	.LVL16
	.4byte	0x58d
	.byte	0x16
	.4byte	.LVL17
	.4byte	0x581
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5d
	.byte	0x4
	.byte	0x91
	.byte	0xa8,0x7f
	.byte	0x6
	.byte	0x15
	.byte	0x1
	.byte	0x5e
	.byte	0x4
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x6
	.byte	0x15
	.byte	0x1
	.byte	0x5f
	.byte	0x4
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0x6
	.byte	0x15
	.byte	0x1
	.byte	0x60
	.byte	0x4
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0x6
	.byte	0x15
	.byte	0x1
	.byte	0x61
	.byte	0x4
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0x6
	.byte	0x15
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x15
	.byte	0x2
	.byte	0x72
	.byte	0x4
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x15
	.byte	0x2
	.byte	0x72
	.byte	0x8
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0x8
	.byte	0xa5
	.byte	0xa
	.byte	0x1d
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0x9
	.byte	0xc8
	.byte	0x5
	.byte	0x1d
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0x8
	.byte	0xa8
	.byte	0xa
	.byte	0x1d
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0xa
	.byte	0x55
	.byte	0x6
	.byte	0x1d
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x4
	.byte	0x12
	.byte	0x18
	.byte	0x1d
	.4byte	.LASF55
	.4byte	.LASF55
	.byte	0xb
	.byte	0x3a
	.byte	0xa
	.byte	0x1d
	.4byte	.LASF56
	.4byte	.LASF56
	.byte	0x6
	.byte	0xe8
	.byte	0x13
	.byte	0x1e
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0xc
	.2byte	0x5a8
	.byte	0xc
	.byte	0x1e
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0x6
	.2byte	0x547
	.byte	0xc
	.byte	0x1d
	.4byte	.LASF59
	.4byte	.LASF59
	.byte	0xd
	.byte	0x30
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
	.byte	0x35
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
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
	.byte	0x7
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
	.byte	0x8
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0x49
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
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
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
	.byte	0x15
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
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
	.byte	0x18
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
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0
	.byte	0
	.byte	0x1d
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
	.byte	0x1e
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
	.4byte	.LVL20
	.4byte	.LVL21-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21-1
	.4byte	.LFE81
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL20
	.4byte	.LVL21-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL21-1
	.4byte	.LFE81
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL28
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL33
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL35-1
	.4byte	.LFE80
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1-1
	.4byte	.LFE79
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3-1
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL10-1
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.byte	0x4
	.byte	0x5b
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL10-1
	.2byte	0x6
	.byte	0x60
	.byte	0x93
	.byte	0x4
	.byte	0x61
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL10-1
	.2byte	0x6
	.byte	0x5c
	.byte	0x93
	.byte	0x4
	.byte	0x5d
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0xd
	.byte	0xf5
	.byte	0xa
	.byte	0x25
	.byte	0x3
	.4byte	prev_frames_in
	.byte	0xf6
	.byte	0x8
	.byte	0x25
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0xd
	.byte	0xf5
	.byte	0x10
	.byte	0x25
	.byte	0x3
	.4byte	prev_frames_sent
	.byte	0xf6
	.byte	0x8
	.byte	0x25
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL5
	.4byte	.LVL8
	.2byte	0xd
	.byte	0xf5
	.byte	0xc
	.byte	0x25
	.byte	0x3
	.4byte	prev_frames_dropped
	.byte	0xf6
	.byte	0x8
	.byte	0x25
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL6
	.4byte	.LVL19
	.2byte	0x3
	.byte	0x91
	.byte	0xa8,0x7f
	.4byte	.LVL19
	.4byte	.LFE79
	.2byte	0x3
	.byte	0x72
	.byte	0xa8,0x7f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LVL19
	.2byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.4byte	.LVL19
	.4byte	.LFE79
	.2byte	0x3
	.byte	0x72
	.byte	0xb8,0x7f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL11
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL14-1
	.4byte	.LVL19
	.2byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.4byte	.LVL19
	.4byte	.LFE79
	.2byte	0x3
	.byte	0x72
	.byte	0xbc,0x7f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL13
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL14-1
	.4byte	.LVL19
	.2byte	0x3
	.byte	0x91
	.byte	0xb4,0x7f
	.4byte	.LVL19
	.4byte	.LFE79
	.2byte	0x3
	.byte	0x72
	.byte	0xb4,0x7f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB79
	.4byte	.LFE79
	.4byte	.LFB81
	.4byte	.LFE81
	.4byte	.LFB80
	.4byte	.LFE80
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF20:
	.string	"stream_client_connected"
.LASF41:
	.string	"dfi_signed"
.LASF16:
	.string	"uint64_t"
.LASF26:
	.string	"TimerHandle_t"
.LASF3:
	.string	"short int"
.LASF52:
	.string	"pfree_size"
.LASF64:
	.string	"shell_syscall"
.LASF18:
	.string	"frames_dropped"
.LASF34:
	.string	"__fsym_mem_stats"
.LASF15:
	.string	"int64_t"
.LASF53:
	.string	"frame_pool_stats"
.LASF66:
	.string	"metrics_init"
.LASF56:
	.string	"xTimerCreate"
.LASF19:
	.string	"frames_sent"
.LASF1:
	.string	"signed char"
.LASF17:
	.string	"frames_dequeued"
.LASF49:
	.string	"pool_queued"
.LASF29:
	.string	"func"
.LASF30:
	.string	"prev_frames_in"
.LASF10:
	.string	"long long int"
.LASF43:
	.string	"dfd_signed"
.LASF33:
	.string	"__fsym_mem_stats_name"
.LASF5:
	.string	"long int"
.LASF9:
	.string	"__int64_t"
.LASF51:
	.string	"printf"
.LASF59:
	.string	"wifi_ap_get_sta_count"
.LASF57:
	.string	"xTaskGetTickCount"
.LASF31:
	.string	"prev_frames_sent"
.LASF7:
	.string	"__uint32_t"
.LASF27:
	.string	"syscall_func"
.LASF28:
	.string	"name"
.LASF25:
	.string	"TickType_t"
.LASF40:
	.string	"xTimer"
.LASF2:
	.string	"unsigned char"
.LASF35:
	.string	"argc"
.LASF54:
	.string	"http_get_counters"
.LASF0:
	.string	"long long unsigned int"
.LASF14:
	.string	"uint32_t"
.LASF58:
	.string	"xTimerGenericCommand"
.LASF12:
	.string	"unsigned int"
.LASF24:
	.string	"BaseType_t"
.LASF22:
	.string	"http_counters_t"
.LASF36:
	.string	"argv"
.LASF50:
	.string	"kfree_size"
.LASF4:
	.string	"short unsigned int"
.LASF55:
	.string	"uvc_get_frames_captured"
.LASF39:
	.string	"queued"
.LASF45:
	.string	"stream_clients"
.LASF23:
	.string	"char"
.LASF13:
	.string	"int32_t"
.LASF46:
	.string	"clients"
.LASF21:
	.string	"_Bool"
.LASF48:
	.string	"pool_free"
.LASF67:
	.string	"metrics_timer_cb"
.LASF11:
	.string	"__uint64_t"
.LASF60:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF8:
	.string	"long unsigned int"
.LASF38:
	.string	"free_cnt"
.LASF63:
	.string	"tmrTimerControl"
.LASF6:
	.string	"__int32_t"
.LASF62:
	.string	"C:\\\\Users\\\\cwier\\\\documents\\\\github\\\\qcom\\\\examples\\\\usb_cam_stream\\\\build"
.LASF61:
	.string	".\\examples\\usb_cam_stream\\metrics.c"
.LASF37:
	.string	"total"
.LASF44:
	.string	"sta_clients"
.LASF32:
	.string	"prev_frames_dropped"
.LASF47:
	.string	"pool_total"
.LASF65:
	.string	"cmd_mem_stats"
.LASF42:
	.string	"dfs_signed"
	.ident	"GCC: (GNU) 10.4.0"
