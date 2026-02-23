	.file	"port.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.vPortSetupTimerInterrupt,"ax",@progbits
	.align	1
	.weak	vPortSetupTimerInterrupt
	.type	vPortSetupTimerInterrupt, @function
vPortSetupTimerInterrupt:
.LFB5:
	.file 1 ".\\components\\os\\freertos\\portable\\GCC\\RISC-V\\common\\port.c"
	.loc 1 140 5
	.cfi_startproc
	.loc 1 141 5
	.loc 1 142 5
.LVL0:
	.loc 1 143 5
	.loc 1 144 5
	.loc 1 146 9
	.loc 1 140 5 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 146 9
 #APP
# 146 "C:\Users\cwier\Documents\GitHub\qcom\components\os\freertos\portable\GCC\RISC-V\common\port.c" 1
	csrr a5, mhartid
# 0 "" 2
 #NO_APP
	sw	a5,12(sp)
	.loc 1 147 9 is_stmt 1
	.loc 1 147 104 is_stmt 0
	lw	a3,12(sp)
	li	a5,469766144
	addi	a5,a5,-2048
	add	a3,a3,a5
	slli	a3,a3,3
	.loc 1 147 41
	lui	a5,%hi(.LANCHOR0)
	sw	a3,%lo(.LANCHOR0)(a5)
	.loc 1 151 31
	li	a5,-536821760
.L2:
	.loc 1 149 9 is_stmt 1 discriminator 1
	.loc 1 151 13 discriminator 1
	.loc 1 151 31 is_stmt 0 discriminator 1
	lw	a4,-4(a5)
.LVL1:
	.loc 1 152 13 is_stmt 1 discriminator 1
	.loc 1 152 30 is_stmt 0 discriminator 1
	lw	a1,-8(a5)
.LVL2:
	.loc 1 153 16 is_stmt 1 discriminator 1
	.loc 1 153 39 is_stmt 0 discriminator 1
	lw	a2,-4(a5)
	.loc 1 153 9 discriminator 1
	bne	a2,a4,.L2
	.loc 1 155 9 is_stmt 1
	.loc 1 156 9
	.loc 1 157 9
	.loc 1 157 21 is_stmt 0
	mv	a4,a1
.LVL3:
	mv	a5,a2
	.loc 1 158 9 is_stmt 1
	.loc 1 158 21 is_stmt 0
	li	a0,1000
	li	a1,0
.LVL4:
	add64	a0,a4,a0
	.loc 1 159 9 is_stmt 1
	.loc 1 159 42 is_stmt 0
	sw	a0,0(a3)
	sw	a1,4(a3)
	.loc 1 162 9 is_stmt 1
	.loc 1 162 21 is_stmt 0
	li	a2,2000
	li	a3,0
	add64	a4,a4,a2
.LVL5:
	lui	a3,%hi(.LANCHOR1)
	sw	a4,%lo(.LANCHOR1)(a3)
	sw	a5,%lo(.LANCHOR1+4)(a3)
	.loc 1 163 5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	vPortSetupTimerInterrupt, .-vPortSetupTimerInterrupt
	.section	.rodata.xPortStartScheduler.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	".\\components\\os\\freertos\\portable\\GCC\\RISC-V\\common\\port.c"
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
	.string	"( mtvec & 0x03UL ) == 0x03"
	.align	2
.LC5:
	.string	"%s\r\n"
	.align	2
.LC6:
	.string	"( xISRStackTop & portBYTE_ALIGNMENT_MASK ) == 0"
	.section	.text.xPortStartScheduler,"ax",@progbits
	.align	1
	.globl	xPortStartScheduler
	.type	xPortStartScheduler, @function
xPortStartScheduler:
.LFB6:
	.loc 1 169 1 is_stmt 1
	.cfi_startproc
	.loc 1 170 1
.LBB2:
	.loc 1 174 9
.LBE2:
	.loc 1 169 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	.cfi_offset 1, -4
.LBB3:
	.loc 1 174 27
	sw	zero,12(sp)
	.loc 1 178 9 is_stmt 1
 #APP
# 178 "C:\Users\cwier\Documents\GitHub\qcom\components\os\freertos\portable\GCC\RISC-V\common\port.c" 1
	csrr a5, mtvec
# 0 "" 2
 #NO_APP
	sw	a5,12(sp)
	.loc 1 179 9
	.loc 1 179 22 is_stmt 0
	lw	a5,12(sp)
	.loc 1 179 12
	li	a4,3
	.loc 1 179 22
	andi	a5,a5,3
	.loc 1 179 12
	beq	a5,a4,.L6
	.loc 1 179 50 is_stmt 1 discriminator 1
	lui	a1,%hi(.LC0)
	lui	a0,%hi(.LC1)
	addi	a1,a1,%lo(.LC0)
	addi	a0,a0,%lo(.LC1)
	call	printf
.LVL6:
	.loc 1 179 145 discriminator 1
	lui	a1,%hi(.LANCHOR2)
	lui	a0,%hi(.LC2)
	addi	a1,a1,%lo(.LANCHOR2)
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL7:
	.loc 1 179 184 discriminator 1
	lui	a0,%hi(.LC3)
	li	a1,179
	addi	a0,a0,%lo(.LC3)
	call	printf
.LVL8:
	.loc 1 179 214 discriminator 1
	lui	a1,%hi(.LC4)
	lui	a0,%hi(.LC5)
	addi	a1,a1,%lo(.LC4)
	addi	a0,a0,%lo(.LC5)
	call	printf
.LVL9:
	.loc 1 179 278 discriminator 1
	call	vAssertCalled
.LVL10:
.L6:
	.loc 1 179 296 discriminator 3
	.loc 1 184 9 discriminator 3
	.loc 1 184 29 is_stmt 0 discriminator 3
	lui	a5,%hi(__freertos_irq_stack_top)
	addi	a5,a5,%lo(__freertos_irq_stack_top)
	andi	a5,a5,15
	.loc 1 184 12 discriminator 3
	beq	a5,zero,.L7
	.loc 1 184 58 is_stmt 1 discriminator 1
	lui	a1,%hi(.LC0)
	lui	a0,%hi(.LC1)
	addi	a1,a1,%lo(.LC0)
	addi	a0,a0,%lo(.LC1)
	call	printf
.LVL11:
	.loc 1 184 153 discriminator 1
	lui	a1,%hi(.LANCHOR2)
	lui	a0,%hi(.LC2)
	addi	a1,a1,%lo(.LANCHOR2)
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL12:
	.loc 1 184 192 discriminator 1
	lui	a0,%hi(.LC3)
	li	a1,184
	addi	a0,a0,%lo(.LC3)
	call	printf
.LVL13:
	.loc 1 184 222 discriminator 1
	lui	a1,%hi(.LC6)
	lui	a0,%hi(.LC5)
	addi	a1,a1,%lo(.LC6)
	addi	a0,a0,%lo(.LC5)
	call	printf
.LVL14:
	.loc 1 184 307 discriminator 1
	call	vAssertCalled
.LVL15:
.L7:
	.loc 1 184 325 discriminator 3
.LBE3:
	.loc 1 197 5 discriminator 3
	call	vPortSetupTimerInterrupt
.LVL16:
	.loc 1 204 9 discriminator 3
	li	a5,4096
	addi	a5,a5,-1920
 #APP
# 204 "C:\Users\cwier\Documents\GitHub\qcom\components\os\freertos\portable\GCC\RISC-V\common\port.c" 1
	csrs mie, a5
# 0 "" 2
	.loc 1 212 5 discriminator 3
	.loc 1 213 5 discriminator 3
 #NO_APP
	li	a0,7
	call	qcc74x_irq_enable
.LVL17:
	.loc 1 215 5 discriminator 3
	call	xPortStartFirstTask
.LVL18:
	.loc 1 219 5 discriminator 3
	.loc 1 220 1 is_stmt 0 discriminator 3
	lw	ra,28(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	xPortStartScheduler, .-xPortStartScheduler
	.section	.text.vPortEndScheduler,"ax",@progbits
	.align	1
	.globl	vPortEndScheduler
	.type	vPortEndScheduler, @function
vPortEndScheduler:
.LFB7:
	.loc 1 224 1 is_stmt 1
	.cfi_startproc
.L13:
	.loc 1 226 5 discriminator 1
	.loc 1 226 14 discriminator 1
	.loc 1 226 11 discriminator 1
	j	.L13
	.cfi_endproc
.LFE7:
	.size	vPortEndScheduler, .-vPortEndScheduler
	.globl	xTaskReturnAddress
	.globl	pTrapNetCounter
	.globl	TrapNetCounter
	.globl	pullMachineTimerCompareRegister
	.globl	ullMachineTimerCompareRegisterBase
	.globl	uxTimerIncrementsForOneTick
	.globl	pullNextTime
	.globl	ullNextTime
	.globl	xISRStackTop
	.section	.bss.TrapNetCounter,"aw",@nobits
	.align	2
	.type	TrapNetCounter, @object
	.size	TrapNetCounter, 4
TrapNetCounter:
	.zero	4
	.section	.bss.pullMachineTimerCompareRegister,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	pullMachineTimerCompareRegister, @object
	.size	pullMachineTimerCompareRegister, 4
pullMachineTimerCompareRegister:
	.zero	4
	.section	.bss.ullNextTime,"aw",@nobits
	.align	3
	.set	.LANCHOR1,. + 0
	.type	ullNextTime, @object
	.size	ullNextTime, 8
ullNextTime:
	.zero	8
	.section	.bss.xTaskReturnAddress,"aw",@nobits
	.align	2
	.type	xTaskReturnAddress, @object
	.size	xTaskReturnAddress, 4
xTaskReturnAddress:
	.zero	4
	.section	.data.pTrapNetCounter,"aw"
	.align	2
	.type	pTrapNetCounter, @object
	.size	pTrapNetCounter, 4
pTrapNetCounter:
	.word	TrapNetCounter
	.section	.data.pullNextTime,"aw"
	.align	2
	.type	pullNextTime, @object
	.size	pullNextTime, 4
pullNextTime:
	.word	ullNextTime
	.section	.rodata.__FUNCTION__.0,"a"
	.align	2
	.set	.LANCHOR2,. + 0
	.type	__FUNCTION__.0, @object
	.size	__FUNCTION__.0, 20
__FUNCTION__.0:
	.string	"xPortStartScheduler"
	.section	.rodata.ullMachineTimerCompareRegisterBase,"a"
	.align	2
	.type	ullMachineTimerCompareRegisterBase, @object
	.size	ullMachineTimerCompareRegisterBase, 4
ullMachineTimerCompareRegisterBase:
	.word	-536854528
	.section	.rodata.uxTimerIncrementsForOneTick,"a"
	.align	2
	.type	uxTimerIncrementsForOneTick, @object
	.size	uxTimerIncrementsForOneTick, 4
uxTimerIncrementsForOneTick:
	.word	1000
	.section	.rodata.xISRStackTop,"a"
	.align	2
	.type	xISRStackTop, @object
	.size	xISRStackTop, 4
xISRStackTop:
	.word	__freertos_irq_stack_top
	.text
.Letext0:
	.file 2 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\lib\\gcc\\riscv64-unknown-elf\\10.4.0\\include\\stddef.h"
	.file 3 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\machine\\_default_types.h"
	.file 4 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\sys\\_stdint.h"
	.file 5 ".\\components\\os\\freertos\\portable\\GCC\\RISC-V\\common/portmacro.h"
	.file 6 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\stdio.h"
	.file 7 ".\\examples\\solutions\\rtsp_softap_cam\\freertosconfig.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x43f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF40
	.byte	0xc
	.4byte	.LASF41
	.4byte	.LASF42
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0xd1
	.byte	0x16
	.4byte	0x3d
	.byte	0x4
	.4byte	0x2c
	.byte	0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x5
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.byte	0x5
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x5
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.byte	0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x4d
	.byte	0x12
	.4byte	0x6c
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.byte	0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x4f
	.byte	0x1b
	.4byte	0x7f
	.byte	0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x5
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.byte	0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x69
	.byte	0x20
	.4byte	0x99
	.byte	0x5
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.byte	0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x2c
	.byte	0x13
	.4byte	0x60
	.byte	0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x73
	.byte	0x4
	.4byte	0xac
	.byte	0x6
	.4byte	0xac
	.byte	0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x3c
	.byte	0x14
	.4byte	0x8d
	.byte	0x4
	.4byte	0xc2
	.byte	0x6
	.4byte	0xc2
	.byte	0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.byte	0x4
	.4byte	0xd8
	.byte	0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0x41
	.byte	0x12
	.4byte	0xac
	.byte	0x4
	.4byte	0xe4
	.byte	0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x42
	.byte	0x11
	.4byte	0xa0
	.byte	0x4
	.4byte	0xf5
	.byte	0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x44
	.byte	0x12
	.4byte	0xac
	.byte	0x7
	.4byte	.LASF20
	.byte	0x5
	.byte	0xae
	.byte	0x13
	.4byte	0xf5
	.byte	0x8
	.4byte	0xb8
	.4byte	0x129
	.byte	0x9
	.byte	0
	.byte	0x4
	.4byte	0x11e
	.byte	0x7
	.4byte	.LASF21
	.byte	0x1
	.byte	0x4c
	.byte	0x1a
	.4byte	0x129
	.byte	0xa
	.4byte	.LASF22
	.byte	0x1
	.byte	0x4d
	.byte	0x17
	.4byte	0xf0
	.byte	0x5
	.byte	0x3
	.4byte	xISRStackTop
	.byte	0xa
	.4byte	.LASF23
	.byte	0x1
	.byte	0x5a
	.byte	0xa
	.4byte	0xc2
	.byte	0x5
	.byte	0x3
	.4byte	ullNextTime
	.byte	0xa
	.4byte	.LASF24
	.byte	0x1
	.byte	0x5b
	.byte	0x11
	.4byte	0x170
	.byte	0x5
	.byte	0x3
	.4byte	pullNextTime
	.byte	0xb
	.byte	0x4
	.4byte	0xce
	.byte	0xa
	.4byte	.LASF25
	.byte	0x1
	.byte	0x5c
	.byte	0xe
	.4byte	0x38
	.byte	0x5
	.byte	0x3
	.4byte	uxTimerIncrementsForOneTick
	.byte	0xa
	.4byte	.LASF26
	.byte	0x1
	.byte	0x5d
	.byte	0x10
	.4byte	0xb8
	.byte	0x5
	.byte	0x3
	.4byte	ullMachineTimerCompareRegisterBase
	.byte	0xa
	.4byte	.LASF27
	.byte	0x1
	.byte	0x5e
	.byte	0x15
	.4byte	0x1ac
	.byte	0x5
	.byte	0x3
	.4byte	pullMachineTimerCompareRegister
	.byte	0xb
	.byte	0x4
	.4byte	0xd3
	.byte	0xc
	.4byte	0x112
	.byte	0x1
	.byte	0x5f
	.byte	0xc
	.byte	0x5
	.byte	0x3
	.4byte	TrapNetCounter
	.byte	0xa
	.4byte	.LASF28
	.byte	0x1
	.byte	0x60
	.byte	0x14
	.4byte	0x1d2
	.byte	0x5
	.byte	0x3
	.4byte	pTrapNetCounter
	.byte	0xb
	.byte	0x4
	.4byte	0x101
	.byte	0xa
	.4byte	.LASF29
	.byte	0x1
	.byte	0x71
	.byte	0x8
	.4byte	0x2c
	.byte	0x5
	.byte	0x3
	.4byte	xTaskReturnAddress
	.byte	0xd
	.4byte	.LASF43
	.byte	0x1
	.byte	0xdf
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.byte	0xe
	.4byte	.LASF44
	.byte	0x1
	.byte	0xa8
	.byte	0xc
	.4byte	0xf5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x38a
	.byte	0xf
	.4byte	.LASF39
	.byte	0x1
	.byte	0xaa
	.byte	0xd
	.byte	0x10
	.4byte	.LASF45
	.4byte	0x39a
	.byte	0x5
	.byte	0x3
	.4byte	__FUNCTION__.0
	.byte	0x11
	.4byte	.LASF38
	.byte	0x1
	.byte	0xd4
	.byte	0x11
	.4byte	0x23f
	.byte	0x12
	.4byte	0x25
	.byte	0
	.byte	0x13
	.4byte	.Ldebug_ranges0+0
	.4byte	0x364
	.byte	0x14
	.4byte	.LASF30
	.byte	0x1
	.byte	0xae
	.byte	0x1b
	.4byte	0xbd
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x15
	.4byte	.LVL6
	.4byte	0x412
	.4byte	0x277
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x15
	.4byte	.LVL7
	.4byte	0x412
	.4byte	0x297
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR2
	.byte	0
	.byte	0x15
	.4byte	.LVL8
	.4byte	0x412
	.4byte	0x2b4
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0xb3
	.byte	0
	.byte	0x15
	.4byte	.LVL9
	.4byte	0x412
	.4byte	0x2d4
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0x17
	.4byte	.LVL10
	.4byte	0x41e
	.byte	0x15
	.4byte	.LVL11
	.4byte	0x412
	.4byte	0x2fd
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x15
	.4byte	.LVL12
	.4byte	0x412
	.4byte	0x31d
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR2
	.byte	0
	.byte	0x15
	.4byte	.LVL13
	.4byte	0x412
	.4byte	0x33a
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0xb8
	.byte	0
	.byte	0x15
	.4byte	.LVL14
	.4byte	0x412
	.4byte	0x35a
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0x17
	.4byte	.LVL15
	.4byte	0x41e
	.byte	0
	.byte	0x17
	.4byte	.LVL16
	.4byte	0x39f
	.byte	0x15
	.4byte	.LVL17
	.4byte	0x42a
	.4byte	0x380
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x37
	.byte	0
	.byte	0x17
	.4byte	.LVL18
	.4byte	0x436
	.byte	0
	.byte	0x8
	.4byte	0xdf
	.4byte	0x39a
	.byte	0x18
	.4byte	0x3d
	.byte	0x13
	.byte	0
	.byte	0x4
	.4byte	0x38a
	.byte	0x19
	.4byte	.LASF46
	.byte	0x1
	.byte	0x8b
	.byte	0xa
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x407
	.byte	0x1a
	.4byte	.LASF31
	.byte	0x1
	.byte	0x8d
	.byte	0xe
	.4byte	0xac
	.4byte	.LLST0
	.byte	0x1a
	.4byte	.LASF32
	.byte	0x1
	.byte	0x8d
	.byte	0x21
	.4byte	0xac
	.4byte	.LLST1
	.byte	0x1b
	.4byte	.LASF33
	.byte	0x1
	.byte	0x8e
	.byte	0x1f
	.4byte	0x40d
	.byte	0xfc,0xff,0x82,0x80,0x7e
	.byte	0x1b
	.4byte	.LASF34
	.byte	0x1
	.byte	0x8f
	.byte	0x1f
	.4byte	0x40d
	.byte	0xf8,0xff,0x82,0x80,0x7e
	.byte	0x14
	.4byte	.LASF35
	.byte	0x1
	.byte	0x90
	.byte	0x17
	.4byte	0xbd
	.byte	0x2
	.byte	0x91
	.byte	0x7c
	.byte	0
	.byte	0xb
	.byte	0x4
	.4byte	0xbd
	.byte	0x4
	.4byte	0x407
	.byte	0x1c
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x6
	.byte	0xc8
	.byte	0x5
	.byte	0x1c
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x7
	.byte	0x64
	.byte	0x6
	.byte	0x1c
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x1
	.byte	0xd4
	.byte	0x11
	.byte	0x1c
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x1
	.byte	0xaa
	.byte	0xd
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x5
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
	.byte	0x6
	.byte	0x35
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
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
	.byte	0
	.byte	0
	.byte	0xa
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
	.byte	0xb
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
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
	.byte	0xd
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
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x3c
	.byte	0x19
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
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
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
	.byte	0x16
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
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
	.byte	0x1c
	.byte	0xd
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
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5e
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	0
	.4byte	0
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF23:
	.string	"ullNextTime"
.LASF19:
	.string	"TickType_t"
.LASF5:
	.string	"size_t"
.LASF30:
	.string	"mtvec"
.LASF35:
	.string	"ulHartId"
.LASF6:
	.string	"__int32_t"
.LASF37:
	.string	"vAssertCalled"
.LASF15:
	.string	"uint64_t"
.LASF13:
	.string	"int32_t"
.LASF34:
	.string	"pulTimeLow"
.LASF27:
	.string	"pullMachineTimerCompareRegister"
.LASF25:
	.string	"uxTimerIncrementsForOneTick"
.LASF40:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF9:
	.string	"long unsigned int"
.LASF4:
	.string	"short unsigned int"
.LASF42:
	.string	"C:\\\\Users\\\\cwier\\\\Documents\\\\GitHub\\\\qcom\\\\examples\\\\solutions\\\\rtsp_softap_cam\\\\build\\\\build_out\\\\components\\\\os\\\\freertos"
.LASF20:
	.string	"TrapNetCounter"
.LASF2:
	.string	"unsigned char"
.LASF24:
	.string	"pullNextTime"
.LASF31:
	.string	"ulCurrentTimeHigh"
.LASF8:
	.string	"__uint32_t"
.LASF28:
	.string	"pTrapNetCounter"
.LASF45:
	.string	"__FUNCTION__"
.LASF29:
	.string	"xTaskReturnAddress"
.LASF43:
	.string	"vPortEndScheduler"
.LASF39:
	.string	"xPortStartFirstTask"
.LASF0:
	.string	"unsigned int"
.LASF33:
	.string	"pulTimeHigh"
.LASF12:
	.string	"long long unsigned int"
.LASF46:
	.string	"vPortSetupTimerInterrupt"
.LASF26:
	.string	"ullMachineTimerCompareRegisterBase"
.LASF32:
	.string	"ulCurrentTimeLow"
.LASF10:
	.string	"long long int"
.LASF16:
	.string	"char"
.LASF17:
	.string	"StackType_t"
.LASF36:
	.string	"printf"
.LASF21:
	.string	"__freertos_irq_stack_top"
.LASF3:
	.string	"short int"
.LASF38:
	.string	"qcc74x_irq_enable"
.LASF11:
	.string	"__uint64_t"
.LASF41:
	.string	".\\components\\os\\freertos\\portable\\GCC\\RISC-V\\common\\port.c"
.LASF14:
	.string	"uint32_t"
.LASF7:
	.string	"long int"
.LASF22:
	.string	"xISRStackTop"
.LASF1:
	.string	"signed char"
.LASF44:
	.string	"xPortStartScheduler"
.LASF18:
	.string	"BaseType_t"
	.ident	"GCC: (GNU) 10.4.0"
