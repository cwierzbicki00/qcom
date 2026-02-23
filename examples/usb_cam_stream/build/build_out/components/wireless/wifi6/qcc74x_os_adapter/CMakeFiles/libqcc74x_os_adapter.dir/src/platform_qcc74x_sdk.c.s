	.file	"platform_qcc74x_sdk.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.async_event_handler,"ax",@progbits
	.align	1
	.type	async_event_handler, @function
async_event_handler:
.LFB13:
	.file 1 ".\\components\\wireless\\wifi6\\qcc74x_os_adapter\\src\\platform_qcc74x_sdk.c"
	.loc 1 108 1
	.cfi_startproc
.LVL0:
	.loc 1 110 5
	.loc 1 108 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 108 1
	sw	a1,12(sp)
	.loc 1 110 5
	call	vTaskSuspendAll
.LVL1:
	.loc 1 112 5 is_stmt 1
	lw	a1,12(sp)
	mv	a0,a1
	call	wifi_event_handler
.LVL2:
	.loc 1 114 5
	.loc 1 115 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL3:
	.loc 1 114 5
	tail	xTaskResumeAll
.LVL4:
	.cfi_endproc
.LFE13:
	.size	async_event_handler, .-async_event_handler
	.section	.text.platform_get_mac,"ax",@progbits
	.align	1
	.globl	platform_get_mac
	.type	platform_get_mac, @function
platform_get_mac:
.LFB6:
	.loc 1 47 1 is_stmt 1
	.cfi_startproc
.LVL5:
	.loc 1 48 5
	.loc 1 47 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 48 14
	li	a1,1
	.loc 1 47 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 48 14
	call	mfg_media_read_macaddr_with_lock
.LVL6:
	.loc 1 52 1
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 48 8
	snez	a0,a0
	.loc 1 52 1
	neg	a0,a0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	platform_get_mac, .-platform_get_mac
	.section	.text.platform_get_random,"ax",@progbits
	.align	1
	.globl	platform_get_random
	.type	platform_get_random, @function
platform_get_random:
.LFB7:
	.loc 1 55 1 is_stmt 1
	.cfi_startproc
.LVL7:
	.loc 1 56 5
	.loc 1 58 5
	.loc 1 55 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 55 1
	sw	a0,12(sp)
	sw	a1,8(sp)
	.loc 1 58 5
	call	vTaskEnterCritical
.LVL8:
	.loc 1 59 5 is_stmt 1
	.loc 1 59 11 is_stmt 0
	lw	a1,8(sp)
	lw	a0,12(sp)
	call	qcc74x_trng_readlen
.LVL9:
	sw	a0,8(sp)
.LVL10:
	.loc 1 60 5 is_stmt 1
	call	vTaskExitCritical
.LVL11:
	.loc 1 61 5
	.loc 1 62 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	a0,8(sp)
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL12:
	jr	ra
	.cfi_endproc
.LFE7:
	.size	platform_get_random, .-platform_get_random
	.section	.text.rtos_malloc,"ax",@progbits
	.align	1
	.globl	rtos_malloc
	.type	rtos_malloc, @function
rtos_malloc:
.LFB8:
	.loc 1 70 1 is_stmt 1
	.cfi_startproc
.LVL13:
	.loc 1 71 5
	.loc 1 73 5
	.loc 1 70 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 73 11
	li	a1,0
	.loc 1 70 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 73 11
	call	kmalloc
.LVL14:
	.loc 1 74 5 is_stmt 1
	.loc 1 74 8 is_stmt 0
	bne	a0,zero,.L7
.L9:
	.loc 1 75 9 is_stmt 1 discriminator 1
	.loc 1 77 9 discriminator 1
	.loc 1 75 15 discriminator 1
	j	.L9
.L7:
	.loc 1 80 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	rtos_malloc, .-rtos_malloc
	.section	.text.rtos_calloc,"ax",@progbits
	.align	1
	.globl	rtos_calloc
	.type	rtos_calloc, @function
rtos_calloc:
.LFB9:
	.loc 1 83 1 is_stmt 1
	.cfi_startproc
.LVL15:
	.loc 1 84 5
	.loc 1 84 32 is_stmt 0
	mul	a2,a0,a1
	.loc 1 83 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 84 17
	li	a1,0
.LVL16:
	.loc 1 83 1
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 84 17
	mv	a0,a2
.LVL17:
	sw	a2,12(sp)
	call	kmalloc
.LVL18:
	mv	s0,a0
.LVL19:
	.loc 1 85 5 is_stmt 1
	.loc 1 85 8 is_stmt 0
	beq	a0,zero,.L11
	.loc 1 86 9 is_stmt 1
	lw	a2,12(sp)
	li	a1,0
	call	memset
.LVL20:
	.loc 1 88 5
.L11:
	.loc 1 89 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	mv	a0,s0
	lw	s0,24(sp)
	.cfi_restore 8
.LVL21:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	rtos_calloc, .-rtos_calloc
	.section	.text.rtos_free,"ax",@progbits
	.align	1
	.globl	rtos_free
	.type	rtos_free, @function
rtos_free:
.LFB16:
	.cfi_startproc
	tail	kfree
	.cfi_endproc
.LFE16:
	.size	rtos_free, .-rtos_free
	.section	.text.platform_malloc,"ax",@progbits
	.align	1
	.globl	platform_malloc
	.type	platform_malloc, @function
platform_malloc:
.LFB11:
	.loc 1 97 1 is_stmt 1
	.cfi_startproc
.LVL22:
	.loc 1 98 5
	.loc 1 98 12 is_stmt 0
	li	a1,0
	tail	kmalloc
.LVL23:
	.cfi_endproc
.LFE11:
	.size	platform_malloc, .-platform_malloc
	.section	.text.platform_free,"ax",@progbits
	.align	1
	.globl	platform_free
	.type	platform_free, @function
platform_free:
.LFB12:
	.loc 1 102 1 is_stmt 1
	.cfi_startproc
.LVL24:
	.loc 1 103 5
	tail	kfree
.LVL25:
	.cfi_endproc
.LFE12:
	.size	platform_free, .-platform_free
	.section	.rodata.platform_post_event.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	".\\components\\wireless\\wifi6\\qcc74x_os_adapter\\src\\platform_qcc74x_sdk.c"
	.align	2
.LC1:
	.string	"file [%s]\r\n"
	.align	2
.LC2:
	.string	"func [%s]\r\n"
	.align	2
.LC3:
	.string	"line [%d]\r\n"
	.align	2
.LC4:
	.string	"xReturn == pdPASS"
	.align	2
.LC5:
	.string	"%s\r\n"
	.section	.text.platform_post_event,"ax",@progbits
	.align	1
	.globl	platform_post_event
	.type	platform_post_event, @function
platform_post_event:
.LFB14:
	.loc 1 127 1
	.cfi_startproc
.LVL26:
	.loc 1 128 5
	.loc 1 130 5
	.loc 1 127 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	.loc 1 130 15
	lui	a0,%hi(async_event_handler)
.LVL27:
	.loc 1 127 1
	sw	a2,24(sp)
	sw	a3,28(sp)
	.loc 1 130 15
	mv	a2,a1
	li	a3,-1
	li	a1,0
.LVL28:
	addi	a0,a0,%lo(async_event_handler)
	.loc 1 127 1
	sw	a5,36(sp)
	sw	ra,12(sp)
	.cfi_offset 1, -36
	.loc 1 127 1
	sw	a4,32(sp)
	sw	a6,40(sp)
	sw	a7,44(sp)
	.loc 1 130 15
	call	xTimerPendFunctionCall
.LVL29:
	.loc 1 131 5 is_stmt 1
	.loc 1 131 8 is_stmt 0
	li	a5,1
	beq	a0,a5,.L20
	.loc 1 131 55 is_stmt 1 discriminator 1
	lui	a1,%hi(.LC0)
	lui	a0,%hi(.LC1)
.LVL30:
	addi	a1,a1,%lo(.LC0)
	addi	a0,a0,%lo(.LC1)
	call	printf
.LVL31:
	.loc 1 131 161 discriminator 1
	lui	a1,%hi(.LANCHOR0)
	lui	a0,%hi(.LC2)
	addi	a1,a1,%lo(.LANCHOR0)
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL32:
	.loc 1 131 200 discriminator 1
	lui	a0,%hi(.LC3)
	li	a1,131
	addi	a0,a0,%lo(.LC3)
	call	printf
.LVL33:
	.loc 1 131 230 discriminator 1
	lui	a1,%hi(.LC4)
	lui	a0,%hi(.LC5)
	addi	a1,a1,%lo(.LC4)
	addi	a0,a0,%lo(.LC5)
	call	printf
.LVL34:
	.loc 1 131 285 discriminator 1
	call	vAssertCalled
.LVL35:
	.loc 1 131 303 discriminator 1
.L20:
	.loc 1 132 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE14:
	.size	platform_post_event, .-platform_post_event
	.section	.rodata.__FUNCTION__.0,"a"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	__FUNCTION__.0, @object
	.size	__FUNCTION__.0, 20
__FUNCTION__.0:
	.string	"platform_post_event"
	.text
.Letext0:
	.file 2 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\machine\\_default_types.h"
	.file 3 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\sys\\_stdint.h"
	.file 4 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\lib\\gcc\\riscv64-unknown-elf\\10.4.0\\include\\stddef.h"
	.file 5 ".\\components\\os\\freertos\\portable\\GCC\\RISC-V\\common/portmacro.h"
	.file 6 ".\\components\\os\\freertos\\include/timers.h"
	.file 7 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\stdio.h"
	.file 8 ".\\examples\\usb_cam_stream\\freertosconfig.h"
	.file 9 ".\\components\\os\\freertos\\include/task.h"
	.file 10 ".\\components\\mm\\mem.h"
	.file 11 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\string.h"
	.file 12 ".\\drivers\\lhal\\include/qcc74x_sec_trng.h"
	.file 13 ".\\drivers\\soc\\qcc743\\std\\include/qcc743_mfg_media.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x522
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF47
	.byte	0xc
	.4byte	.LASF48
	.4byte	.LASF49
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF4
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
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.byte	0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x4d
	.byte	0x12
	.4byte	0x59
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.byte	0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x6c
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
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
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x2c
	.byte	0x13
	.4byte	0x4d
	.byte	0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x60
	.byte	0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0xd1
	.byte	0x16
	.4byte	0x88
	.byte	0x5
	.byte	0x4
	.byte	0x6
	.byte	0x4
	.4byte	0x38
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.byte	0x7
	.4byte	0xc7
	.byte	0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0x42
	.byte	0x11
	.4byte	0x9b
	.byte	0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x44
	.byte	0x12
	.4byte	0xa7
	.byte	0x6
	.byte	0x4
	.4byte	0x8f
	.byte	0x8
	.4byte	.LASF23
	.byte	0x1
	.byte	0x7e
	.byte	0x6
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x1f7
	.byte	0x9
	.4byte	.LASF19
	.byte	0x1
	.byte	0x7e
	.byte	0x1e
	.4byte	0x81
	.4byte	.LLST12
	.byte	0x9
	.4byte	.LASF20
	.byte	0x1
	.byte	0x7e
	.byte	0x2d
	.4byte	0x81
	.4byte	.LLST13
	.byte	0xa
	.byte	0xb
	.4byte	.LASF30
	.byte	0x1
	.byte	0x80
	.byte	0x10
	.4byte	0xd3
	.4byte	.LLST14
	.byte	0xc
	.4byte	.LASF50
	.4byte	0x207
	.byte	0x5
	.byte	0x3
	.4byte	__FUNCTION__.0
	.byte	0xd
	.4byte	.LVL29
	.4byte	0x486
	.4byte	0x170
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	async_event_handler
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0xe
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0xe
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0xd
	.4byte	.LVL31
	.4byte	0x493
	.4byte	0x190
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0xd
	.4byte	.LVL32
	.4byte	0x493
	.4byte	0x1b0
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0xd
	.4byte	.LVL33
	.4byte	0x493
	.4byte	0x1cd
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x83
	.byte	0
	.byte	0xd
	.4byte	.LVL34
	.4byte	0x493
	.4byte	0x1ed
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0xf
	.4byte	.LVL35
	.4byte	0x49f
	.byte	0
	.byte	0x10
	.4byte	0xce
	.4byte	0x207
	.byte	0x11
	.4byte	0x88
	.byte	0x13
	.byte	0
	.byte	0x7
	.4byte	0x1f7
	.byte	0x12
	.4byte	.LASF51
	.byte	0x1
	.byte	0x6b
	.byte	0xd
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x26a
	.byte	0x9
	.4byte	.LASF21
	.byte	0x1
	.byte	0x6b
	.byte	0x27
	.4byte	0xbf
	.4byte	.LLST0
	.byte	0x9
	.4byte	.LASF22
	.byte	0x1
	.byte	0x6b
	.byte	0x36
	.4byte	0xa7
	.4byte	.LLST1
	.byte	0xf
	.4byte	.LVL1
	.4byte	0x4ab
	.byte	0xd
	.4byte	.LVL2
	.4byte	0x4b8
	.4byte	0x260
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0
	.byte	0x13
	.4byte	.LVL4
	.4byte	0x4c4
	.byte	0
	.byte	0x8
	.4byte	.LASF24
	.byte	0x1
	.byte	0x65
	.byte	0x6
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x2a2
	.byte	0x9
	.4byte	.LASF25
	.byte	0x1
	.byte	0x65
	.byte	0x1a
	.4byte	0xbf
	.4byte	.LLST11
	.byte	0x14
	.4byte	.LVL25
	.4byte	0x4d1
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LASF27
	.byte	0x1
	.byte	0x60
	.byte	0x7
	.4byte	0xbf
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x2e3
	.byte	0x9
	.4byte	.LASF26
	.byte	0x1
	.byte	0x60
	.byte	0x20
	.4byte	0xa7
	.4byte	.LLST10
	.byte	0x14
	.4byte	.LVL23
	.4byte	0x4dd
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LASF52
	.byte	0x1
	.byte	0x5b
	.byte	0x6
	.4byte	0x2fc
	.byte	0x17
	.string	"ptr"
	.byte	0x1
	.byte	0x5b
	.byte	0x16
	.4byte	0xbf
	.byte	0
	.byte	0x15
	.4byte	.LASF28
	.byte	0x1
	.byte	0x52
	.byte	0x7
	.4byte	0xbf
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x37d
	.byte	0x9
	.4byte	.LASF29
	.byte	0x1
	.byte	0x52
	.byte	0x1c
	.4byte	0xa7
	.4byte	.LLST7
	.byte	0x9
	.4byte	.LASF26
	.byte	0x1
	.byte	0x52
	.byte	0x2d
	.4byte	0xa7
	.4byte	.LLST8
	.byte	0x18
	.string	"res"
	.byte	0x1
	.byte	0x54
	.byte	0xb
	.4byte	0xbf
	.4byte	.LLST9
	.byte	0xd
	.4byte	.LVL18
	.4byte	0x4dd
	.4byte	0x360
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x19
	.4byte	.LVL20
	.4byte	0x4e9
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0xe
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LASF31
	.byte	0x1
	.byte	0x45
	.byte	0x7
	.4byte	0xbf
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x3cc
	.byte	0x9
	.4byte	.LASF26
	.byte	0x1
	.byte	0x45
	.byte	0x1c
	.4byte	0xa7
	.4byte	.LLST6
	.byte	0x1a
	.string	"ptr"
	.byte	0x1
	.byte	0x47
	.byte	0xb
	.4byte	0xbf
	.byte	0x1
	.byte	0x5a
	.byte	0x19
	.4byte	.LVL14
	.4byte	0x4dd
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LASF32
	.byte	0x1
	.byte	0x36
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x445
	.byte	0x1b
	.string	"buf"
	.byte	0x1
	.byte	0x36
	.byte	0x28
	.4byte	0xc1
	.4byte	.LLST3
	.byte	0x1b
	.string	"len"
	.byte	0x1
	.byte	0x36
	.byte	0x34
	.4byte	0xb3
	.4byte	.LLST4
	.byte	0x18
	.string	"ret"
	.byte	0x1
	.byte	0x38
	.byte	0x9
	.4byte	0x81
	.4byte	.LLST5
	.byte	0xf
	.4byte	.LVL8
	.4byte	0x4f5
	.byte	0xd
	.4byte	.LVL9
	.4byte	0x501
	.4byte	0x43b
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x68
	.byte	0x6
	.byte	0
	.byte	0xf
	.4byte	.LVL11
	.4byte	0x50d
	.byte	0
	.byte	0x15
	.4byte	.LASF33
	.byte	0x1
	.byte	0x2e
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x486
	.byte	0x1b
	.string	"mac"
	.byte	0x1
	.byte	0x2e
	.byte	0x1f
	.4byte	0xeb
	.4byte	.LLST2
	.byte	0x19
	.4byte	.LVL6
	.4byte	0x519
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LASF34
	.4byte	.LASF34
	.byte	0x6
	.2byte	0x4d6
	.byte	0xc
	.byte	0x1d
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x7
	.byte	0xc8
	.byte	0x5
	.byte	0x1d
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x8
	.byte	0x64
	.byte	0x6
	.byte	0x1c
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x9
	.2byte	0x55f
	.byte	0x6
	.byte	0x1d
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x1
	.byte	0x1d
	.byte	0xd
	.byte	0x1c
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x9
	.2byte	0x597
	.byte	0xc
	.byte	0x1d
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0xa
	.byte	0x9c
	.byte	0x6
	.byte	0x1d
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0xa
	.byte	0x82
	.byte	0x7
	.byte	0x1d
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0xb
	.byte	0x21
	.byte	0x8
	.byte	0x1d
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x5
	.byte	0x7d
	.byte	0xd
	.byte	0x1d
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0xc
	.byte	0x22
	.byte	0x5
	.byte	0x1d
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0x5
	.byte	0x7e
	.byte	0xd
	.byte	0x1d
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0xd
	.byte	0x2c
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
	.byte	0x9
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
	.byte	0xa
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0xb
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
	.byte	0xc
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
	.byte	0xd
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
	.byte	0xe
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
	.byte	0x13
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
	.byte	0x14
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
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
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1b
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
	.byte	0x1c
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST12:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL27
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL28
	.4byte	.LVL29-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL29-1
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1-1
	.4byte	.LFE13
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
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL3
	.4byte	.LFE13
	.2byte	0x2
	.byte	0x72
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL24
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25-1
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL22
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23-1
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL16
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL21
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL13
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14-1
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8-1
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL12
	.4byte	.LFE7
	.2byte	0x2
	.byte	0x72
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL8-1
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x91
	.byte	0x68
	.4byte	.LVL10
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11-1
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x91
	.byte	0x68
	.4byte	.LVL12
	.4byte	.LFE7
	.2byte	0x2
	.byte	0x72
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x54
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF44:
	.string	"qcc74x_trng_readlen"
.LASF47:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF15:
	.string	"size_t"
.LASF45:
	.string	"vTaskExitCritical"
.LASF4:
	.string	"__uint8_t"
.LASF33:
	.string	"platform_get_mac"
.LASF37:
	.string	"vTaskSuspendAll"
.LASF18:
	.string	"TickType_t"
.LASF28:
	.string	"rtos_calloc"
.LASF43:
	.string	"vTaskEnterCritical"
.LASF5:
	.string	"__int32_t"
.LASF42:
	.string	"memset"
.LASF3:
	.string	"short unsigned int"
.LASF39:
	.string	"xTaskResumeAll"
.LASF36:
	.string	"vAssertCalled"
.LASF35:
	.string	"printf"
.LASF38:
	.string	"wifi_event_handler"
.LASF40:
	.string	"kfree"
.LASF21:
	.string	"arg1"
.LASF22:
	.string	"arg2"
.LASF26:
	.string	"size"
.LASF48:
	.string	".\\components\\wireless\\wifi6\\qcc74x_os_adapter\\src\\platform_qcc74x_sdk.c"
.LASF8:
	.string	"long unsigned int"
.LASF41:
	.string	"kmalloc"
.LASF23:
	.string	"platform_post_event"
.LASF1:
	.string	"unsigned char"
.LASF25:
	.string	"mem_ptr"
.LASF32:
	.string	"platform_get_random"
.LASF7:
	.string	"__uint32_t"
.LASF20:
	.string	"code"
.LASF50:
	.string	"__FUNCTION__"
.LASF30:
	.string	"xReturn"
.LASF51:
	.string	"async_event_handler"
.LASF34:
	.string	"xTimerPendFunctionCall"
.LASF11:
	.string	"unsigned int"
.LASF52:
	.string	"rtos_free"
.LASF10:
	.string	"long long unsigned int"
.LASF12:
	.string	"uint8_t"
.LASF6:
	.string	"long int"
.LASF49:
	.string	"C:\\\\Users\\\\cwier\\\\Documents\\\\GitHub\\\\qcom\\\\examples\\\\usb_cam_stream\\\\build\\\\build_out\\\\components\\\\wireless\\\\wifi6\\\\qcc74x_os_adapter"
.LASF13:
	.string	"int32_t"
.LASF9:
	.string	"long long int"
.LASF16:
	.string	"char"
.LASF46:
	.string	"mfg_media_read_macaddr_with_lock"
.LASF19:
	.string	"catalogue"
.LASF2:
	.string	"short int"
.LASF14:
	.string	"uint32_t"
.LASF24:
	.string	"platform_free"
.LASF27:
	.string	"platform_malloc"
.LASF0:
	.string	"signed char"
.LASF31:
	.string	"rtos_malloc"
.LASF29:
	.string	"nb_elt"
.LASF17:
	.string	"BaseType_t"
	.ident	"GCC: (GNU) 10.4.0"
