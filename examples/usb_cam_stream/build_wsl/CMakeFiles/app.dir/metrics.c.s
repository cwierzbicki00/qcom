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
	.string	"[METRICS] frames_in=%u frames_sent=%u frames_dropped=%u clients=%d heap=%u psram=%u\r\n"
	.section	.text.metrics_timer_cb,"ax",@progbits
	.align	1
	.type	metrics_timer_cb, @function
metrics_timer_cb:
.LFB79:
	.file 1 "./examples/usb_cam_stream/metrics.c"
	.loc 1 27 1
	.cfi_startproc
.LVL0:
	.loc 1 28 5
	.loc 1 30 5
	.loc 1 27 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.loc 1 30 32
	call	http_get_counters
.LVL1:
	mv	s4,a0
.LVL2:
	.loc 1 32 5 is_stmt 1
	.loc 1 32 19 is_stmt 0
	call	uvc_get_frames_captured
.LVL3:
	.loc 1 33 5 is_stmt 1
	.loc 1 37 23 is_stmt 0
	lui	a4,%hi(.LANCHOR1)
	addi	a4,a4,%lo(.LANCHOR1)
	.loc 1 33 14
	lw	t3,16(s4)
	.loc 1 37 14
	lw	a2,0(a4)
	.loc 1 33 14
	lw	t4,20(s4)
.LVL4:
	.loc 1 34 5 is_stmt 1
	.loc 1 37 14 is_stmt 0
	lw	a3,4(a4)
	.loc 1 36 23
	lui	t5,%hi(.LANCHOR0)
	.loc 1 38 23
	lui	a5,%hi(.LANCHOR2)
	.loc 1 37 14
	sub64	s2,t3,a2
	.loc 1 38 23
	addi	a5,a5,%lo(.LANCHOR2)
	.loc 1 36 23
	addi	t5,t5,%lo(.LANCHOR0)
	.loc 1 34 14
	lw	t1,8(s4)
	.loc 1 36 14
	lw	s0,0(t5)
	.loc 1 34 14
	lw	t2,12(s4)
.LVL5:
	.loc 1 36 5 is_stmt 1
	.loc 1 36 14 is_stmt 0
	lw	s1,4(t5)
	.loc 1 37 14
	sw	s2,8(sp)
	sw	s3,12(sp)
	.loc 1 38 14
	lw	s2,0(a5)
	lw	s3,4(a5)
	.loc 1 36 14
	sub64	s0,a0,s0
	.loc 1 37 5 is_stmt 1
.LVL6:
	.loc 1 38 5
	.loc 1 40 20 is_stmt 0
	sw	a1,4(t5)
	.loc 1 38 14
	sub64	s2,t1,s2
	.loc 1 40 5 is_stmt 1
	.loc 1 41 5
	.loc 1 41 22 is_stmt 0
	sw	t3,0(a4)
	sw	t4,4(a4)
	.loc 1 42 5 is_stmt 1
	.loc 1 42 25 is_stmt 0
	sw	t1,0(a5)
	sw	t2,4(a5)
	.loc 1 44 5 is_stmt 1
	.loc 1 40 20 is_stmt 0
	sw	a0,0(t5)
	.loc 1 44 19
	call	wifi_ap_get_sta_count
.LVL7:
	.loc 1 44 47
	lbu	a4,24(s4)
	andi	a4,a4,0xff
	.loc 1 44 9
	add	a4,a4,a0
	sw	a4,4(sp)
.LVL8:
	.loc 1 46 5 is_stmt 1
	.loc 1 48 31 is_stmt 0
	call	kfree_size
.LVL9:
	sw	a0,0(sp)
	.loc 1 48 55
	call	pfree_size
.LVL10:
	.loc 1 46 5
	mv	a3,s2
	lw	s2,8(sp)
	mv	a1,s0
	.loc 1 49 1
	lw	s0,40(sp)
	.cfi_restore 8
	.loc 1 46 5
	lw	a5,0(sp)
	lw	a4,4(sp)
	.loc 1 49 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s3,28(sp)
	.cfi_restore 19
	lw	s4,24(sp)
	.cfi_restore 20
.LVL11:
	.loc 1 46 5
	mv	a2,s2
	.loc 1 49 1
	lw	s2,32(sp)
	.cfi_restore 18
	.loc 1 46 5
	mv	a6,a0
	lui	a0,%hi(.LC0)
	.loc 1 49 1
	.loc 1 46 5
	addi	a0,a0,%lo(.LC0)
	.loc 1 49 1
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
.LVL12:
	.loc 1 46 5
	tail	printf
.LVL13:
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
	.loc 1 74 1 is_stmt 1
	.cfi_startproc
.LVL14:
	.loc 1 75 5
	.loc 1 75 17
	.loc 1 77 5
	.loc 1 74 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 77 55
	call	kfree_size
.LVL15:
	mv	a1,a0
	.loc 1 77 5
	lui	a0,%hi(.LC1)
	addi	a0,a0,%lo(.LC1)
	call	printf
.LVL16:
	.loc 1 78 5 is_stmt 1
	.loc 1 78 55 is_stmt 0
	call	pfree_size
.LVL17:
	mv	a1,a0
	.loc 1 78 5
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL18:
	.loc 1 80 5 is_stmt 1
	.loc 1 81 5
	addi	a2,sp,12
	addi	a1,sp,8
	addi	a0,sp,4
	call	frame_pool_stats
.LVL19:
	.loc 1 82 5
	lw	a3,12(sp)
	lw	a2,8(sp)
	lw	a1,4(sp)
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	call	printf
.LVL20:
	.loc 1 85 5
	.loc 1 86 1 is_stmt 0
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
	.loc 1 52 1 is_stmt 1
	.cfi_startproc
	.loc 1 53 5
	.loc 1 52 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 53 32
	call	http_get_counters
.LVL21:
	mv	s0,a0
.LVL22:
	.loc 1 54 5 is_stmt 1
	.loc 1 54 22 is_stmt 0
	call	uvc_get_frames_captured
.LVL23:
	.loc 1 55 25
	lw	a2,16(s0)
	lw	a3,20(s0)
	.loc 1 54 20
	lui	a5,%hi(.LANCHOR0)
	sw	a0,%lo(.LANCHOR0)(a5)
	sw	a1,%lo(.LANCHOR0+4)(a5)
	.loc 1 55 5 is_stmt 1
	.loc 1 55 22 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	sw	a2,%lo(.LANCHOR1)(a5)
	sw	a3,%lo(.LANCHOR1+4)(a5)
	.loc 1 56 5 is_stmt 1
	.loc 1 56 28 is_stmt 0
	lw	a2,8(s0)
	lw	a3,12(s0)
	.loc 1 56 25
	lui	a5,%hi(.LANCHOR2)
	.loc 1 58 25
	lui	a4,%hi(metrics_timer_cb)
	lui	a0,%hi(.LC4)
	.loc 1 56 25
	sw	a2,%lo(.LANCHOR2)(a5)
	sw	a3,%lo(.LANCHOR2+4)(a5)
	.loc 1 58 5 is_stmt 1
	.loc 1 58 25 is_stmt 0
	addi	a4,a4,%lo(metrics_timer_cb)
	li	a3,0
	li	a2,1
	li	a1,1000
	addi	a0,a0,%lo(.LC4)
	call	xTimerCreate
.LVL24:
	.loc 1 60 5 is_stmt 1
	.loc 1 60 8 is_stmt 0
	bne	a0,zero,.L6
	.loc 1 61 9 is_stmt 1
	lui	a0,%hi(.LC5)
.LVL25:
	addi	a0,a0,%lo(.LC5)
.LVL26:
.L8:
	.loc 1 67 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 66 5
	tail	printf
.LVL27:
.L6:
	.cfi_restore_state
	mv	s0,a0
.LVL28:
	.loc 1 65 5 is_stmt 1
	call	xTaskGetTickCount
.LVL29:
	mv	a2,a0
	li	a4,0
	li	a3,0
	li	a1,1
	mv	a0,s0
	call	xTimerGenericCommand
.LVL30:
	.loc 1 66 5
	lui	a0,%hi(.LC6)
	addi	a0,a0,%lo(.LC6)
	j	.L8
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
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./examples/usb_cam_stream/http_server.h"
	.file 5 "./components/os/freertos/portable/GCC/RISC-V/common/portmacro.h"
	.file 6 "./components/os/freertos/include/timers.h"
	.file 7 "./components/shell/./shell.h"
	.file 8 "./components/mm/./mem.h"
	.file 9 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/stdio.h"
	.file 10 "./examples/usb_cam_stream/frame_pool.h"
	.file 11 "./examples/usb_cam_stream/uvc_capture.h"
	.file 12 "./components/os/freertos/include/task.h"
	.file 13 "./examples/usb_cam_stream/wifi_ap.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x511
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF50
	.byte	0xc
	.4byte	.LASF51
	.4byte	.LASF52
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.byte	0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x4d
	.byte	0x12
	.4byte	0x4d
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x60
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.byte	0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x69
	.byte	0x20
	.4byte	0x7a
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x2c
	.byte	0x13
	.4byte	0x41
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x54
	.byte	0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x3c
	.byte	0x14
	.4byte	0x6e
	.byte	0x5
	.4byte	0xa7
	.byte	0x6
	.byte	0x20
	.byte	0x4
	.byte	0x8
	.byte	0x9
	.4byte	0xf6
	.byte	0x7
	.4byte	.LASF15
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.4byte	0xb3
	.byte	0
	.byte	0x7
	.4byte	.LASF16
	.byte	0x4
	.byte	0xa
	.byte	0x17
	.4byte	0xb3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF17
	.byte	0x4
	.byte	0xb
	.byte	0x17
	.4byte	0xb3
	.byte	0x10
	.byte	0x7
	.4byte	.LASF18
	.byte	0x4
	.byte	0xc
	.byte	0x16
	.4byte	0xfd
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF19
	.byte	0x5
	.4byte	0xf6
	.byte	0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0xd
	.byte	0x3
	.4byte	0xb8
	.byte	0x8
	.4byte	0x102
	.byte	0x9
	.byte	0x4
	.4byte	0x119
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF21
	.byte	0x8
	.4byte	0x119
	.byte	0x9
	.byte	0x4
	.4byte	0x120
	.byte	0x3
	.4byte	.LASF22
	.byte	0x5
	.byte	0x42
	.byte	0x11
	.4byte	0x8f
	.byte	0x3
	.4byte	.LASF23
	.byte	0x5
	.byte	0x44
	.byte	0x12
	.4byte	0x9b
	.byte	0x3
	.4byte	.LASF24
	.byte	0x6
	.byte	0x50
	.byte	0x22
	.4byte	0x14f
	.byte	0x9
	.byte	0x4
	.4byte	0x155
	.byte	0xa
	.4byte	.LASF53
	.byte	0x3
	.4byte	.LASF25
	.byte	0x7
	.byte	0x3f
	.byte	0xf
	.4byte	0x166
	.byte	0x9
	.byte	0x4
	.4byte	0x16c
	.byte	0xb
	.4byte	0x81
	.byte	0x9
	.byte	0x4
	.4byte	0x113
	.byte	0xc
	.4byte	.LASF54
	.byte	0x8
	.byte	0x7
	.byte	0x5e
	.byte	0x8
	.4byte	0x19f
	.byte	0x7
	.4byte	.LASF26
	.byte	0x7
	.byte	0x5f
	.byte	0x11
	.4byte	0x125
	.byte	0
	.byte	0x7
	.4byte	.LASF27
	.byte	0x7
	.byte	0x63
	.byte	0x12
	.4byte	0x15a
	.byte	0x4
	.byte	0
	.byte	0x8
	.4byte	0x177
	.byte	0xd
	.4byte	.LASF28
	.byte	0x1
	.byte	0x16
	.byte	0x11
	.4byte	0xa7
	.byte	0x5
	.byte	0x3
	.4byte	prev_frames_in
	.byte	0xd
	.4byte	.LASF29
	.byte	0x1
	.byte	0x17
	.byte	0x11
	.4byte	0xa7
	.byte	0x5
	.byte	0x3
	.4byte	prev_frames_sent
	.byte	0xd
	.4byte	.LASF30
	.byte	0x1
	.byte	0x18
	.byte	0x11
	.4byte	0xa7
	.byte	0x5
	.byte	0x3
	.4byte	prev_frames_dropped
	.byte	0xe
	.4byte	0x120
	.4byte	0x1ea
	.byte	0xf
	.4byte	0x88
	.byte	0x9
	.byte	0
	.byte	0x8
	.4byte	0x1da
	.byte	0x10
	.4byte	.LASF31
	.byte	0x1
	.byte	0x57
	.byte	0xc
	.4byte	0x1ea
	.byte	0x5
	.byte	0x3
	.4byte	__fsym_mem_stats_name
	.byte	0x10
	.4byte	.LASF32
	.byte	0x1
	.byte	0x57
	.byte	0x64
	.4byte	0x19f
	.byte	0x5
	.byte	0x3
	.4byte	__fsym_mem_stats
	.byte	0x11
	.4byte	.LASF55
	.byte	0x1
	.byte	0x49
	.byte	0xc
	.4byte	0x81
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.byte	0x1
	.byte	0x9c
	.4byte	0x2ee
	.byte	0x12
	.4byte	.LASF33
	.byte	0x1
	.byte	0x49
	.byte	0x1e
	.4byte	0x81
	.4byte	.LLST7
	.byte	0x12
	.4byte	.LASF34
	.byte	0x1
	.byte	0x49
	.byte	0x2b
	.4byte	0x171
	.4byte	.LLST8
	.byte	0xd
	.4byte	.LASF35
	.byte	0x1
	.byte	0x50
	.byte	0xe
	.4byte	0x9b
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0xd
	.4byte	.LASF36
	.byte	0x1
	.byte	0x50
	.byte	0x15
	.4byte	0x9b
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0xd
	.4byte	.LASF37
	.byte	0x1
	.byte	0x50
	.byte	0x1f
	.4byte	0x9b
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x13
	.4byte	.LVL15
	.4byte	0x49a
	.byte	0x14
	.4byte	.LVL16
	.4byte	0x4a6
	.4byte	0x29a
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0x13
	.4byte	.LVL17
	.4byte	0x4b2
	.byte	0x14
	.4byte	.LVL18
	.4byte	0x4a6
	.4byte	0x2ba
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x14
	.4byte	.LVL19
	.4byte	0x4be
	.4byte	0x2da
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
	.4byte	.LVL20
	.4byte	0x4a6
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.LASF56
	.byte	0x1
	.byte	0x33
	.byte	0x6
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.byte	0x1
	.byte	0x9c
	.4byte	0x397
	.byte	0x18
	.string	"c"
	.byte	0x1
	.byte	0x35
	.byte	0x1c
	.4byte	0x397
	.4byte	.LLST9
	.byte	0x18
	.string	"tmr"
	.byte	0x1
	.byte	0x3a
	.byte	0x13
	.4byte	0x143
	.4byte	.LLST10
	.byte	0x13
	.4byte	.LVL21
	.4byte	0x4ca
	.byte	0x13
	.4byte	.LVL23
	.4byte	0x4d6
	.byte	0x14
	.4byte	.LVL24
	.4byte	0x4e2
	.4byte	0x365
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
	.4byte	.LVL27
	.4byte	0x4a6
	.byte	0x13
	.4byte	.LVL29
	.4byte	0x4ee
	.byte	0x16
	.4byte	.LVL30
	.4byte	0x4fb
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
	.4byte	0x10e
	.byte	0x1a
	.4byte	.LASF57
	.byte	0x1
	.byte	0x1a
	.byte	0xd
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.byte	0x1
	.byte	0x9c
	.4byte	0x49a
	.byte	0x12
	.4byte	.LASF38
	.byte	0x1
	.byte	0x1a
	.byte	0x2c
	.4byte	0x143
	.4byte	.LLST0
	.byte	0x18
	.string	"c"
	.byte	0x1
	.byte	0x1e
	.byte	0x1c
	.4byte	0x397
	.4byte	.LLST1
	.byte	0x18
	.string	"fi"
	.byte	0x1
	.byte	0x20
	.byte	0xe
	.4byte	0xa7
	.4byte	.LLST2
	.byte	0x18
	.string	"fs"
	.byte	0x1
	.byte	0x21
	.byte	0xe
	.4byte	0xa7
	.4byte	.LLST3
	.byte	0x18
	.string	"fd"
	.byte	0x1
	.byte	0x22
	.byte	0xe
	.4byte	0xa7
	.4byte	.LLST4
	.byte	0x1b
	.string	"dfi"
	.byte	0x1
	.byte	0x24
	.byte	0xe
	.4byte	0xa7
	.byte	0x6
	.byte	0x58
	.byte	0x93
	.byte	0x4
	.byte	0x59
	.byte	0x93
	.byte	0x4
	.byte	0x18
	.string	"dfs"
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.4byte	0xa7
	.4byte	.LLST5
	.byte	0x1b
	.string	"dfd"
	.byte	0x1
	.byte	0x26
	.byte	0xe
	.4byte	0xa7
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.byte	0x4
	.byte	0x63
	.byte	0x93
	.byte	0x4
	.byte	0x1c
	.4byte	.LASF39
	.byte	0x1
	.byte	0x2c
	.byte	0x9
	.4byte	0x81
	.4byte	.LLST6
	.byte	0x13
	.4byte	.LVL1
	.4byte	0x4ca
	.byte	0x13
	.4byte	.LVL3
	.4byte	0x4d6
	.byte	0x13
	.4byte	.LVL7
	.4byte	0x508
	.byte	0x13
	.4byte	.LVL9
	.4byte	0x49a
	.byte	0x13
	.4byte	.LVL10
	.4byte	0x4b2
	.byte	0x1d
	.4byte	.LVL13
	.4byte	0x4a6
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x72
	.byte	0x58
	.byte	0x6
	.byte	0x15
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0x72
	.byte	0x54
	.byte	0x6
	.byte	0x15
	.byte	0x1
	.byte	0x5f
	.byte	0x3
	.byte	0x72
	.byte	0x50
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x8
	.byte	0xa5
	.byte	0xa
	.byte	0x1e
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x9
	.byte	0xc8
	.byte	0x5
	.byte	0x1e
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x8
	.byte	0xa8
	.byte	0xa
	.byte	0x1e
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0xa
	.byte	0x46
	.byte	0x6
	.byte	0x1e
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x4
	.byte	0x12
	.byte	0x18
	.byte	0x1e
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0xb
	.byte	0x31
	.byte	0xa
	.byte	0x1e
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0x6
	.byte	0xe8
	.byte	0x13
	.byte	0x1f
	.4byte	.LASF47
	.4byte	.LASF47
	.byte	0xc
	.2byte	0x5a8
	.byte	0xc
	.byte	0x1f
	.4byte	.LASF48
	.4byte	.LASF48
	.byte	0x6
	.2byte	0x547
	.byte	0xc
	.byte	0x1e
	.4byte	.LASF49
	.4byte	.LASF49
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
	.byte	0x1f
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
.LLST7:
	.4byte	.LVL14
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15-1
	.4byte	.LFE81
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL14
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL15-1
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
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL27
	.4byte	.LVL29-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL29-1
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
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL7-1
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
	.4byte	.LVL7-1
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.byte	0x4
	.byte	0x6d
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL7-1
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.byte	0x4
	.byte	0x57
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL6
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x91
	.byte	0x58
	.4byte	.LVL12
	.4byte	.LFE79
	.2byte	0x2
	.byte	0x72
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL8
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL9-1
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x91
	.byte	0x54
	.4byte	.LVL12
	.4byte	.LFE79
	.2byte	0x2
	.byte	0x72
	.byte	0x54
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
.LASF18:
	.string	"stream_client_connected"
.LASF6:
	.string	"__uint32_t"
.LASF14:
	.string	"uint64_t"
.LASF24:
	.string	"TimerHandle_t"
.LASF2:
	.string	"short int"
.LASF42:
	.string	"pfree_size"
.LASF54:
	.string	"shell_syscall"
.LASF16:
	.string	"frames_dropped"
.LASF32:
	.string	"__fsym_mem_stats"
.LASF43:
	.string	"frame_pool_stats"
.LASF56:
	.string	"metrics_init"
.LASF51:
	.string	"./examples/usb_cam_stream/metrics.c"
.LASF17:
	.string	"frames_sent"
.LASF0:
	.string	"signed char"
.LASF15:
	.string	"frames_dequeued"
.LASF27:
	.string	"func"
.LASF28:
	.string	"prev_frames_in"
.LASF8:
	.string	"long long int"
.LASF23:
	.string	"TickType_t"
.LASF31:
	.string	"__fsym_mem_stats_name"
.LASF4:
	.string	"long int"
.LASF41:
	.string	"printf"
.LASF49:
	.string	"wifi_ap_get_sta_count"
.LASF47:
	.string	"xTaskGetTickCount"
.LASF29:
	.string	"prev_frames_sent"
.LASF46:
	.string	"xTimerCreate"
.LASF25:
	.string	"syscall_func"
.LASF26:
	.string	"name"
.LASF38:
	.string	"xTimer"
.LASF1:
	.string	"unsigned char"
.LASF33:
	.string	"argc"
.LASF44:
	.string	"http_get_counters"
.LASF10:
	.string	"long long unsigned int"
.LASF13:
	.string	"uint32_t"
.LASF48:
	.string	"xTimerGenericCommand"
.LASF11:
	.string	"unsigned int"
.LASF22:
	.string	"BaseType_t"
.LASF20:
	.string	"http_counters_t"
.LASF34:
	.string	"argv"
.LASF40:
	.string	"kfree_size"
.LASF3:
	.string	"short unsigned int"
.LASF45:
	.string	"uvc_get_frames_captured"
.LASF37:
	.string	"queued"
.LASF21:
	.string	"char"
.LASF52:
	.string	"./examples/usb_cam_stream/build_wsl"
.LASF12:
	.string	"int32_t"
.LASF39:
	.string	"clients"
.LASF19:
	.string	"_Bool"
.LASF57:
	.string	"metrics_timer_cb"
.LASF9:
	.string	"__uint64_t"
.LASF50:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF7:
	.string	"long unsigned int"
.LASF36:
	.string	"free_cnt"
.LASF53:
	.string	"tmrTimerControl"
.LASF5:
	.string	"__int32_t"
.LASF35:
	.string	"total"
.LASF30:
	.string	"prev_frames_dropped"
.LASF55:
	.string	"cmd_mem_stats"
	.ident	"GCC: (GNU) 10.4.0"
