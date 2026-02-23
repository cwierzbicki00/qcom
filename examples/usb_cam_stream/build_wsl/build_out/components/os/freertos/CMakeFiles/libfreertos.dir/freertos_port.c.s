	.file	"freertos_port.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.vAssertCalled.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"vAssertCalled\r\n"
	.section	.text.vAssertCalled,"ax",@progbits
	.align	1
	.weak	vAssertCalled
	.type	vAssertCalled, @function
vAssertCalled:
.LFB4:
	.file 1 "./components/os/freertos/freertos_port.c"
	.loc 1 6 1
	.cfi_startproc
	.loc 1 7 5
	lui	a0,%hi(.LC0)
	.loc 1 6 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 7 5
	addi	a0,a0,%lo(.LC0)
	.loc 1 6 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 7 5
	call	printf
.LVL0:
.L2:
	.loc 1 9 5 is_stmt 1 discriminator 1
	.loc 1 10 9 discriminator 1
	.loc 1 9 11 discriminator 1
	j	.L2
	.cfi_endproc
.LFE4:
	.size	vAssertCalled, .-vAssertCalled
	.section	.text.vApplicationTickHook,"ax",@progbits
	.align	1
	.weak	vApplicationTickHook
	.type	vApplicationTickHook, @function
vApplicationTickHook:
.LFB5:
	.loc 1 14 1
	.cfi_startproc
	.loc 1 16 1
	ret
	.cfi_endproc
.LFE5:
	.size	vApplicationTickHook, .-vApplicationTickHook
	.section	.rodata.vApplicationStackOverflowHook.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"vApplicationStackOverflowHook %s\r\n"
	.section	.text.vApplicationStackOverflowHook,"ax",@progbits
	.align	1
	.weak	vApplicationStackOverflowHook
	.type	vApplicationStackOverflowHook, @function
vApplicationStackOverflowHook:
.LFB6:
	.loc 1 19 1
	.cfi_startproc
.LVL1:
	.loc 1 20 5
	lui	a0,%hi(.LC1)
.LVL2:
	.loc 1 19 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 20 5
	addi	a0,a0,%lo(.LC1)
	.loc 1 19 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 20 5
	call	printf
.LVL3:
.L6:
	.loc 1 22 5 is_stmt 1 discriminator 1
	.loc 1 23 9 discriminator 1
	.loc 1 22 11 discriminator 1
	j	.L6
	.cfi_endproc
.LFE6:
	.size	vApplicationStackOverflowHook, .-vApplicationStackOverflowHook
	.section	.rodata.vApplicationMallocFailedHook.str1.4,"aMS",@progbits,1
	.align	2
.LC2:
	.string	"vApplicationMallocFailedHook\r\n"
	.section	.text.vApplicationMallocFailedHook,"ax",@progbits
	.align	1
	.weak	vApplicationMallocFailedHook
	.type	vApplicationMallocFailedHook, @function
vApplicationMallocFailedHook:
.LFB7:
	.loc 1 27 1
	.cfi_startproc
	.loc 1 28 5
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	tail	printf
.LVL4:
	.cfi_endproc
.LFE7:
	.size	vApplicationMallocFailedHook, .-vApplicationMallocFailedHook
	.section	.text.vApplicationGetIdleTaskMemory,"ax",@progbits
	.align	1
	.weak	vApplicationGetIdleTaskMemory
	.type	vApplicationGetIdleTaskMemory, @function
vApplicationGetIdleTaskMemory:
.LFB8:
	.loc 1 32 1
	.cfi_startproc
.LVL5:
	.loc 1 36 5
	.loc 1 37 5
	.loc 1 41 5
	.loc 1 41 27 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	sw	a5,0(a0)
	.loc 1 44 5 is_stmt 1
	.loc 1 44 29 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	addi	a5,a5,%lo(.LANCHOR1)
	sw	a5,0(a1)
	.loc 1 49 5 is_stmt 1
	.loc 1 49 27 is_stmt 0
	li	a5,128
	sw	a5,0(a2)
	.loc 1 50 1
	ret
	.cfi_endproc
.LFE8:
	.size	vApplicationGetIdleTaskMemory, .-vApplicationGetIdleTaskMemory
	.section	.text.vApplicationGetTimerTaskMemory,"ax",@progbits
	.align	1
	.weak	vApplicationGetTimerTaskMemory
	.type	vApplicationGetTimerTaskMemory, @function
vApplicationGetTimerTaskMemory:
.LFB9:
	.loc 1 56 1 is_stmt 1
	.cfi_startproc
.LVL6:
	.loc 1 60 5
	.loc 1 61 5
	.loc 1 65 5
	.loc 1 65 28 is_stmt 0
	lui	a5,%hi(.LANCHOR2)
	addi	a5,a5,%lo(.LANCHOR2)
	sw	a5,0(a0)
	.loc 1 68 5 is_stmt 1
	.loc 1 68 30 is_stmt 0
	lui	a5,%hi(uxTimerTaskStack.0)
	addi	a5,a5,%lo(uxTimerTaskStack.0)
	sw	a5,0(a1)
	.loc 1 73 5 is_stmt 1
	.loc 1 73 28 is_stmt 0
	li	a5,1024
	sw	a5,0(a2)
	.loc 1 74 1
	ret
	.cfi_endproc
.LFE9:
	.size	vApplicationGetTimerTaskMemory, .-vApplicationGetTimerTaskMemory
	.section	.text.__errno,"ax",@progbits
	.align	1
	.globl	__errno
	.type	__errno, @function
__errno:
.LFB10:
	.loc 1 78 1 is_stmt 1
	.cfi_startproc
	.loc 1 81 7
	.loc 1 82 7
	.loc 1 86 1 is_stmt 0
	lui	a0,%hi(FreeRTOS_errno)
	addi	a0,a0,%lo(FreeRTOS_errno)
	ret
	.cfi_endproc
.LFE10:
	.size	__errno, .-__errno
	.section	.bss.uxIdleTaskStack.2,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	uxIdleTaskStack.2, @object
	.size	uxIdleTaskStack.2, 512
uxIdleTaskStack.2:
	.zero	512
	.section	.bss.uxTimerTaskStack.0,"aw",@nobits
	.align	2
	.type	uxTimerTaskStack.0, @object
	.size	uxTimerTaskStack.0, 4096
uxTimerTaskStack.0:
	.zero	4096
	.section	.bss.xIdleTaskTCB.3,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	xIdleTaskTCB.3, @object
	.size	xIdleTaskTCB.3, 112
xIdleTaskTCB.3:
	.zero	112
	.section	.bss.xTimerTaskTCB.1,"aw",@nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	xTimerTaskTCB.1, @object
	.size	xTimerTaskTCB.1, 112
xTimerTaskTCB.1:
	.zero	112
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./components/os/freertos/portable/GCC/RISC-V/common/portmacro.h"
	.file 5 "./components/os/freertos/include/FreeRTOS.h"
	.file 6 "./components/os/freertos/include/task.h"
	.file 7 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x481
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF58
	.byte	0xc
	.4byte	.LASF59
	.4byte	.LASF60
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
	.byte	0x4
	.4byte	.LASF6
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
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.byte	0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x6e
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
	.byte	0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x3a
	.byte	0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x62
	.byte	0x5
	.byte	0x4
	.byte	0x6
	.byte	0x4
	.4byte	0xa3
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.byte	0x4
	.4byte	.LASF14
	.byte	0x4
	.byte	0x41
	.byte	0x12
	.4byte	0x8f
	.byte	0x4
	.4byte	.LASF15
	.byte	0x4
	.byte	0x43
	.byte	0x12
	.4byte	0x8f
	.byte	0x4
	.4byte	.LASF16
	.byte	0x4
	.byte	0x44
	.byte	0x12
	.4byte	0x8f
	.byte	0x7
	.4byte	.LASF20
	.byte	0x14
	.byte	0x5
	.2byte	0x4cc
	.byte	0x8
	.4byte	0xf9
	.byte	0x8
	.4byte	.LASF17
	.byte	0x5
	.2byte	0x4d1
	.byte	0x10
	.4byte	0xc2
	.byte	0
	.byte	0x8
	.4byte	.LASF18
	.byte	0x5
	.2byte	0x4d2
	.byte	0xc
	.4byte	0xf9
	.byte	0x4
	.byte	0
	.byte	0x9
	.4byte	0x9b
	.4byte	0x109
	.byte	0xa
	.4byte	0x2c
	.byte	0x3
	.byte	0
	.byte	0xb
	.4byte	.LASF19
	.byte	0x5
	.2byte	0x4d7
	.byte	0x22
	.4byte	0xce
	.byte	0x7
	.4byte	.LASF21
	.byte	0x70
	.byte	0x5
	.2byte	0x503
	.byte	0x10
	.4byte	0x205
	.byte	0x8
	.4byte	.LASF22
	.byte	0x5
	.2byte	0x505
	.byte	0xc
	.4byte	0x9b
	.byte	0
	.byte	0x8
	.4byte	.LASF23
	.byte	0x5
	.2byte	0x509
	.byte	0x16
	.4byte	0x205
	.byte	0x4
	.byte	0x8
	.4byte	.LASF24
	.byte	0x5
	.2byte	0x50a
	.byte	0x11
	.4byte	0xb6
	.byte	0x2c
	.byte	0x8
	.4byte	.LASF25
	.byte	0x5
	.2byte	0x50b
	.byte	0xc
	.4byte	0x9b
	.byte	0x30
	.byte	0x8
	.4byte	.LASF26
	.byte	0x5
	.2byte	0x50c
	.byte	0xd
	.4byte	0x215
	.byte	0x34
	.byte	0x8
	.4byte	.LASF27
	.byte	0x5
	.2byte	0x511
	.byte	0x15
	.4byte	0xb6
	.byte	0x44
	.byte	0x8
	.4byte	.LASF28
	.byte	0x5
	.2byte	0x514
	.byte	0x15
	.4byte	0x225
	.byte	0x48
	.byte	0x8
	.4byte	.LASF29
	.byte	0x5
	.2byte	0x517
	.byte	0x15
	.4byte	0x225
	.byte	0x50
	.byte	0x8
	.4byte	.LASF30
	.byte	0x5
	.2byte	0x51a
	.byte	0x10
	.4byte	0x9b
	.byte	0x58
	.byte	0x8
	.4byte	.LASF31
	.byte	0x5
	.2byte	0x51d
	.byte	0x10
	.4byte	0x235
	.byte	0x5c
	.byte	0x8
	.4byte	.LASF32
	.byte	0x5
	.2byte	0x51f
	.byte	0x10
	.4byte	0x235
	.byte	0x60
	.byte	0x8
	.4byte	.LASF33
	.byte	0x5
	.2byte	0x529
	.byte	0x12
	.4byte	0x245
	.byte	0x64
	.byte	0x8
	.4byte	.LASF34
	.byte	0x5
	.2byte	0x52a
	.byte	0x11
	.4byte	0x255
	.byte	0x68
	.byte	0x8
	.4byte	.LASF35
	.byte	0x5
	.2byte	0x52d
	.byte	0x11
	.4byte	0x83
	.byte	0x69
	.byte	0x8
	.4byte	.LASF36
	.byte	0x5
	.2byte	0x531
	.byte	0x11
	.4byte	0x83
	.byte	0x6a
	.byte	0x8
	.4byte	.LASF37
	.byte	0x5
	.2byte	0x534
	.byte	0xd
	.4byte	0x25
	.byte	0x6c
	.byte	0
	.byte	0x9
	.4byte	0x109
	.4byte	0x215
	.byte	0xa
	.4byte	0x2c
	.byte	0x1
	.byte	0
	.byte	0x9
	.4byte	0x83
	.4byte	0x225
	.byte	0xa
	.4byte	0x2c
	.byte	0xf
	.byte	0
	.byte	0x9
	.4byte	0xb6
	.4byte	0x235
	.byte	0xa
	.4byte	0x2c
	.byte	0x1
	.byte	0
	.byte	0x9
	.4byte	0x9b
	.4byte	0x245
	.byte	0xa
	.4byte	0x2c
	.byte	0
	.byte	0
	.byte	0x9
	.4byte	0x8f
	.4byte	0x255
	.byte	0xa
	.4byte	0x2c
	.byte	0
	.byte	0
	.byte	0x9
	.4byte	0x83
	.4byte	0x265
	.byte	0xa
	.4byte	0x2c
	.byte	0
	.byte	0
	.byte	0xb
	.4byte	.LASF38
	.byte	0x5
	.2byte	0x539
	.byte	0x3
	.4byte	0x116
	.byte	0x4
	.4byte	.LASF39
	.byte	0x6
	.byte	0x5c
	.byte	0x26
	.4byte	0x27e
	.byte	0x6
	.byte	0x4
	.4byte	0x284
	.byte	0xc
	.4byte	.LASF61
	.byte	0x6
	.byte	0x4
	.4byte	0xaa
	.byte	0xd
	.4byte	.LASF40
	.byte	0x1
	.byte	0x4d
	.byte	0x6
	.4byte	0x2b8
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x2b8
	.byte	0xe
	.byte	0xf
	.4byte	.LASF62
	.byte	0x1
	.byte	0x51
	.byte	0x12
	.4byte	0x25
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x25
	.byte	0x10
	.4byte	.LASF41
	.byte	0x1
	.byte	0x37
	.byte	0x1c
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x323
	.byte	0x11
	.4byte	.LASF42
	.byte	0x1
	.byte	0x37
	.byte	0x4a
	.4byte	0x323
	.byte	0x1
	.byte	0x5a
	.byte	0x11
	.4byte	.LASF43
	.byte	0x1
	.byte	0x37
	.byte	0x6f
	.4byte	0x32f
	.byte	0x1
	.byte	0x5b
	.byte	0x11
	.4byte	.LASF44
	.byte	0x1
	.byte	0x37
	.byte	0x92
	.4byte	0x335
	.byte	0x1
	.byte	0x5c
	.byte	0x12
	.4byte	.LASF45
	.byte	0x1
	.byte	0x3c
	.byte	0x19
	.4byte	0x265
	.byte	0x5
	.byte	0x3
	.4byte	xTimerTaskTCB.1
	.byte	0x12
	.4byte	.LASF46
	.byte	0x1
	.byte	0x3d
	.byte	0x18
	.4byte	0x33b
	.byte	0x5
	.byte	0x3
	.4byte	uxTimerTaskStack.0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x329
	.byte	0x6
	.byte	0x4
	.4byte	0x265
	.byte	0x6
	.byte	0x4
	.4byte	0x289
	.byte	0x6
	.byte	0x4
	.4byte	0x8f
	.byte	0x9
	.4byte	0xaa
	.4byte	0x34c
	.byte	0x13
	.4byte	0x2c
	.2byte	0x3ff
	.byte	0
	.byte	0x10
	.4byte	.LASF47
	.byte	0x1
	.byte	0x1f
	.byte	0x1c
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x3b1
	.byte	0x11
	.4byte	.LASF48
	.byte	0x1
	.byte	0x1f
	.byte	0x49
	.4byte	0x323
	.byte	0x1
	.byte	0x5a
	.byte	0x11
	.4byte	.LASF49
	.byte	0x1
	.byte	0x1f
	.byte	0x6d
	.4byte	0x32f
	.byte	0x1
	.byte	0x5b
	.byte	0x11
	.4byte	.LASF50
	.byte	0x1
	.byte	0x1f
	.byte	0x8f
	.4byte	0x335
	.byte	0x1
	.byte	0x5c
	.byte	0x12
	.4byte	.LASF51
	.byte	0x1
	.byte	0x24
	.byte	0x19
	.4byte	0x265
	.byte	0x5
	.byte	0x3
	.4byte	xIdleTaskTCB.3
	.byte	0x12
	.4byte	.LASF52
	.byte	0x1
	.byte	0x25
	.byte	0x18
	.4byte	0x3b1
	.byte	0x5
	.byte	0x3
	.4byte	uxIdleTaskStack.2
	.byte	0
	.byte	0x9
	.4byte	0xaa
	.4byte	0x3c1
	.byte	0xa
	.4byte	0x2c
	.byte	0x7f
	.byte	0
	.byte	0x10
	.4byte	.LASF53
	.byte	0x1
	.byte	0x1a
	.byte	0x1c
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x3eb
	.byte	0x14
	.4byte	.LVL4
	.4byte	0x478
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LASF54
	.byte	0x1
	.byte	0x12
	.byte	0x1c
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x43c
	.byte	0x16
	.4byte	.LASF55
	.byte	0x1
	.byte	0x12
	.byte	0x47
	.4byte	0x272
	.4byte	.LLST0
	.byte	0x16
	.4byte	.LASF56
	.byte	0x1
	.byte	0x12
	.byte	0x54
	.4byte	0x9d
	.4byte	.LLST1
	.byte	0x17
	.4byte	.LVL3
	.4byte	0x478
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LASF63
	.byte	0x1
	.byte	0xd
	.byte	0x1c
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.byte	0x10
	.4byte	.LASF57
	.byte	0x1
	.byte	0x5
	.byte	0x1c
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x478
	.byte	0x17
	.4byte	.LVL0
	.4byte	0x478
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LASF64
	.4byte	.LASF64
	.byte	0x7
	.byte	0xc8
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
	.byte	0x8
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
	.byte	0x9
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xb
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
	.byte	0xc
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0xd
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
	.byte	0xe
	.byte	0xb
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0x5
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
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
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
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
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
	.byte	0x19
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
.LLST0:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF48:
	.string	"ppxIdleTaskTCBBuffer"
.LASF38:
	.string	"StaticTask_t"
.LASF31:
	.string	"pvDummy15"
.LASF62:
	.string	"FreeRTOS_errno"
.LASF59:
	.string	"./components/os/freertos/freertos_port.c"
.LASF57:
	.string	"vAssertCalled"
.LASF3:
	.string	"short int"
.LASF39:
	.string	"TaskHandle_t"
.LASF44:
	.string	"pulTimerTaskStackSize"
.LASF47:
	.string	"vApplicationGetIdleTaskMemory"
.LASF35:
	.string	"uxDummy20"
.LASF41:
	.string	"vApplicationGetTimerTaskMemory"
.LASF50:
	.string	"pulIdleTaskStackSize"
.LASF34:
	.string	"ucDummy19"
.LASF11:
	.string	"uint8_t"
.LASF63:
	.string	"vApplicationTickHook"
.LASF54:
	.string	"vApplicationStackOverflowHook"
.LASF55:
	.string	"xTask"
.LASF17:
	.string	"xDummy2"
.LASF23:
	.string	"xDummy3"
.LASF19:
	.string	"StaticListItem_t"
.LASF9:
	.string	"long long int"
.LASF16:
	.string	"TickType_t"
.LASF5:
	.string	"long int"
.LASF64:
	.string	"printf"
.LASF61:
	.string	"tskTaskControlBlock"
.LASF6:
	.string	"__uint8_t"
.LASF53:
	.string	"vApplicationMallocFailedHook"
.LASF7:
	.string	"__uint32_t"
.LASF20:
	.string	"xSTATIC_LIST_ITEM"
.LASF36:
	.string	"ucDummy21"
.LASF51:
	.string	"xIdleTaskTCB"
.LASF2:
	.string	"unsigned char"
.LASF52:
	.string	"uxIdleTaskStack"
.LASF1:
	.string	"signed char"
.LASF10:
	.string	"long long unsigned int"
.LASF12:
	.string	"uint32_t"
.LASF0:
	.string	"unsigned int"
.LASF46:
	.string	"uxTimerTaskStack"
.LASF49:
	.string	"ppxIdleTaskStackBuffer"
.LASF13:
	.string	"char"
.LASF60:
	.string	"./examples/usb_cam_stream/build_wsl/build_out/components/os/freertos"
.LASF42:
	.string	"ppxTimerTaskTCBBuffer"
.LASF4:
	.string	"short unsigned int"
.LASF24:
	.string	"uxDummy5"
.LASF43:
	.string	"ppxTimerTaskStackBuffer"
.LASF27:
	.string	"uxDummy9"
.LASF30:
	.string	"pxDummy14"
.LASF58:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF8:
	.string	"long unsigned int"
.LASF15:
	.string	"UBaseType_t"
.LASF14:
	.string	"StackType_t"
.LASF33:
	.string	"ulDummy18"
.LASF26:
	.string	"ucDummy7"
.LASF32:
	.string	"pvDummy15_1"
.LASF45:
	.string	"xTimerTaskTCB"
.LASF37:
	.string	"iDummy22"
.LASF21:
	.string	"xSTATIC_TCB"
.LASF18:
	.string	"pvDummy3"
.LASF28:
	.string	"uxDummy10"
.LASF29:
	.string	"uxDummy12"
.LASF22:
	.string	"pxDummy1"
.LASF40:
	.string	"__errno"
.LASF25:
	.string	"pxDummy6"
.LASF56:
	.string	"pcTaskName"
	.ident	"GCC: (GNU) 10.4.0"
