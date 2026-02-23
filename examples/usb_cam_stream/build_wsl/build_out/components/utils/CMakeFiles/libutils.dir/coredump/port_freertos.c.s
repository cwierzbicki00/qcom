	.file	"port_freertos.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.current_task_stack,"ax",@progbits
	.align	1
	.globl	current_task_stack
	.type	current_task_stack, @function
current_task_stack:
.LFB4:
	.file 1 "./components/utils/coredump/port_freertos.c"
	.loc 1 11 1
	.cfi_startproc
.LVL0:
	.loc 1 12 5
.LBB2:
	.loc 1 12 27
	.loc 1 12 46
 #APP
# 12 "/mnt/c/Users/cwier/documents/github/qcom/components/utils/coredump/port_freertos.c" 1
	csrr a4, 0x342
# 0 "" 2
.LVL1:
	.loc 1 12 93
 #NO_APP
.LBE2:
	.loc 1 12 22 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	sw	a4,0(a5)
	.loc 1 13 5 is_stmt 1
.LBB3:
	.loc 1 13 27
	.loc 1 13 46
 #APP
# 13 "/mnt/c/Users/cwier/documents/github/qcom/components/utils/coredump/port_freertos.c" 1
	csrr a4, 0x341
# 0 "" 2
.LVL2:
	.loc 1 13 93
 #NO_APP
.LBE3:
	.loc 1 13 22 is_stmt 0
	sw	a4,4(a5)
	.loc 1 14 5 is_stmt 1
.LBB4:
	.loc 1 14 27
	.loc 1 14 46
 #APP
# 14 "/mnt/c/Users/cwier/documents/github/qcom/components/utils/coredump/port_freertos.c" 1
	csrr a4, 0x343
# 0 "" 2
.LVL3:
	.loc 1 14 93
 #NO_APP
.LBE4:
	.loc 1 14 22 is_stmt 0
	sw	a4,8(a5)
	.loc 1 16 5 is_stmt 1
	.loc 1 16 25 is_stmt 0
	lui	a4,%hi(pxCurrentTCB)
.LVL4:
	lw	a2,%lo(pxCurrentTCB)(a4)
	.loc 1 20 22
	addi	a4,a4,%lo(pxCurrentTCB)
.LBB5:
	.loc 1 28 5
	li	a7,-1
.LBE5:
	.loc 1 16 56
	lw	a3,0(a2)
	.loc 1 22 22
	sw	a5,24(a0)
	.loc 1 23 21
	li	a5,12
	.loc 1 16 56
	addi	a3,a3,-264
	.loc 1 16 22
	sw	a3,0(a0)
.LVL5:
	.loc 1 17 5 is_stmt 1
	.loc 1 17 21 is_stmt 0
	li	a3,12288
	sw	a3,4(a0)
	.loc 1 18 5 is_stmt 1
	.loc 1 20 22 is_stmt 0
	sw	a4,16(a0)
	.loc 1 19 21
	li	a3,256
	.loc 1 21 21
	li	a4,4
	.loc 1 23 21
	sw	a5,28(a0)
	.loc 1 24 22
	li	a5,-1
	.loc 1 19 21
	sw	a3,12(a0)
	.loc 1 18 22
	sw	a2,8(a0)
	.loc 1 19 5 is_stmt 1
	.loc 1 20 5
	.loc 1 21 5
	.loc 1 21 21 is_stmt 0
	sw	a4,20(a0)
	.loc 1 22 5 is_stmt 1
	.loc 1 23 5
	.loc 1 24 5
	.loc 1 24 22 is_stmt 0
	sw	a5,32(a0)
	.loc 1 25 5 is_stmt 1
	.loc 1 25 21 is_stmt 0
	sw	zero,36(a0)
	.loc 1 28 5 is_stmt 1
.LBB8:
	.loc 1 28 9
.LVL6:
	.loc 1 28 20
.LBE8:
	.loc 1 25 21 is_stmt 0
	li	a3,4
.LVL7:
.L2:
	mv	a4,a0
	.loc 1 11 1
	mv	a5,a0
.LBB9:
.LBB6:
	.loc 1 29 17
	li	a2,0
	j	.L6
.LVL8:
.L4:
	.loc 1 30 13 is_stmt 1
	.loc 1 30 27 is_stmt 0
	lw	a1,0(a5)
	.loc 1 30 15
	lw	a6,8(a5)
	bleu	a1,a6,.L3
.LBB7:
	.loc 1 32 17 is_stmt 1
.LVL9:
	.loc 1 32 37 is_stmt 0
	lw	t1,4(a5)
.LVL10:
	.loc 1 33 17 is_stmt 1
	.loc 1 33 29 is_stmt 0
	sw	a6,0(a5)
	lw	a6,12(a5)
	.loc 1 34 31
	sw	a1,8(a5)
	sw	t1,12(a5)
	.loc 1 33 29
	sw	a6,4(a5)
	.loc 1 34 17 is_stmt 1
.LVL11:
.L3:
.LBE7:
	.loc 1 29 35 discriminator 2
	.loc 1 29 36 is_stmt 0 discriminator 2
	addi	a2,a2,1
.LVL12:
	addi	a5,a5,8
.LVL13:
.L6:
	.loc 1 29 24 is_stmt 1 discriminator 1
	.loc 1 29 9 is_stmt 0 discriminator 1
	blt	a2,a3,.L4
.LBE6:
	.loc 1 28 27 is_stmt 1 discriminator 2
.LVL14:
	.loc 1 28 20 discriminator 2
	.loc 1 28 5 is_stmt 0 discriminator 2
	addi	a3,a3,-1
.LVL15:
	bne	a3,a7,.L2
	addi	a0,a0,32
.LVL16:
.L8:
.LBE9:
.LBB10:
.LBB11:
	.loc 1 41 9 is_stmt 1
	.loc 1 41 43 is_stmt 0
	lw	a2,0(a4)
.LVL17:
	.loc 1 42 9 is_stmt 1
	.loc 1 41 18 is_stmt 0
	lw	a3,4(a4)
	.loc 1 42 18
	lw	a5,8(a4)
.LVL18:
	.loc 1 44 9 is_stmt 1
	.loc 1 41 18 is_stmt 0
	add	a3,a2,a3
.LVL19:
	.loc 1 44 11
	bleu	a3,a5,.L7
	.loc 1 46 13 is_stmt 1
	.loc 1 46 42 is_stmt 0
	sub	a5,a5,a2
.LVL20:
	.loc 1 46 29
	sw	a5,4(a4)
.L7:
.LBE11:
	.loc 1 40 27 is_stmt 1 discriminator 2
	.loc 1 40 20 discriminator 2
	.loc 1 40 5 is_stmt 0 discriminator 2
	addi	a4,a4,8
.LVL21:
	bne	a0,a4,.L8
.LBE10:
	.loc 1 50 1
	ret
	.cfi_endproc
.LFE4:
	.size	current_task_stack, .-current_task_stack
	.globl	coredump_regs
	.section	.bss.coredump_regs,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	coredump_regs, @object
	.size	coredump_regs, 12
coredump_regs:
	.zero	12
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./components/utils/coredump/coredump.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1fc
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF19
	.byte	0xc
	.4byte	.LASF20
	.4byte	.LASF21
	.4byte	.Ldebug_ranges0+0x20
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
	.4byte	.LASF22
	.byte	0x8
	.byte	0x4
	.byte	0x6
	.byte	0x8
	.4byte	0xab
	.byte	0x6
	.4byte	.LASF11
	.byte	0x4
	.byte	0x7
	.byte	0xe
	.4byte	0x77
	.byte	0
	.byte	0x7
	.string	"len"
	.byte	0x4
	.byte	0x8
	.byte	0xe
	.4byte	0x77
	.byte	0x4
	.byte	0
	.byte	0x8
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0x9
	.4byte	0x77
	.4byte	0xc4
	.byte	0xa
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.byte	0xb
	.4byte	.LASF13
	.byte	0x1
	.byte	0x8
	.byte	0xa
	.4byte	0xb4
	.byte	0x5
	.byte	0x3
	.4byte	coredump_regs
	.byte	0xc
	.4byte	.LASF14
	.byte	0x1
	.byte	0x9
	.byte	0xe
	.4byte	0xab
	.byte	0xd
	.4byte	.LASF23
	.byte	0x1
	.byte	0xa
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x1f9
	.byte	0xe
	.4byte	.LASF15
	.byte	0x1
	.byte	0xa
	.byte	0x2e
	.4byte	0x1f9
	.4byte	.LLST0
	.byte	0xf
	.string	"n"
	.byte	0x1
	.byte	0xa
	.byte	0x3c
	.4byte	0x25
	.4byte	.LLST1
	.byte	0x10
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x134
	.byte	0x11
	.string	"tmp"
	.byte	0x1
	.byte	0xc
	.byte	0x29
	.4byte	0x62
	.4byte	.LLST2
	.byte	0
	.byte	0x10
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x152
	.byte	0x11
	.string	"tmp"
	.byte	0x1
	.byte	0xd
	.byte	0x29
	.4byte	0x62
	.4byte	.LLST3
	.byte	0
	.byte	0x10
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x170
	.byte	0x11
	.string	"tmp"
	.byte	0x1
	.byte	0xe
	.byte	0x29
	.4byte	0x62
	.4byte	.LLST4
	.byte	0
	.byte	0x12
	.4byte	.Ldebug_ranges0+0
	.4byte	0x1ba
	.byte	0x11
	.string	"i"
	.byte	0x1
	.byte	0x1c
	.byte	0xd
	.4byte	0x25
	.4byte	.LLST5
	.byte	0x13
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x11
	.string	"j"
	.byte	0x1
	.byte	0x1d
	.byte	0x11
	.4byte	0x25
	.4byte	.LLST6
	.byte	0x13
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.byte	0x14
	.4byte	.LASF16
	.byte	0x1
	.byte	0x20
	.byte	0x25
	.4byte	0x83
	.4byte	.LLST7
	.byte	0
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.byte	0x15
	.string	"i"
	.byte	0x1
	.byte	0x28
	.byte	0xd
	.4byte	0x25
	.byte	0x13
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.byte	0x14
	.4byte	.LASF17
	.byte	0x1
	.byte	0x29
	.byte	0x12
	.4byte	0x77
	.4byte	.LLST8
	.byte	0x14
	.4byte	.LASF18
	.byte	0x1
	.byte	0x2a
	.byte	0x12
	.4byte	0x77
	.4byte	.LLST9
	.byte	0
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x4
	.4byte	0x83
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
	.byte	0x6
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
	.byte	0x7
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
	.byte	0x8
	.byte	0xf
	.byte	0
	.byte	0xb
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
	.byte	0xc
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
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x12
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x16
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16
	.4byte	.LFE4
	.2byte	0x3
	.byte	0x7a
	.byte	0x60
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL7
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x5
	.byte	0x3
	.4byte	coredump_regs
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x5
	.byte	0x3
	.4byte	coredump_regs+4
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x5
	.byte	0x3
	.4byte	coredump_regs+8
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL14
	.2byte	0x5
	.byte	0x34
	.byte	0x7d
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x5
	.byte	0x35
	.byte	0x7d
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x5
	.byte	0x34
	.byte	0x7d
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL8
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x5
	.byte	0x5b
	.byte	0x93
	.byte	0x4
	.byte	0x93
	.byte	0x4
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x6
	.byte	0x5b
	.byte	0x93
	.byte	0x4
	.byte	0x56
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x7
	.byte	0x7e
	.byte	0x4
	.byte	0x6
	.byte	0x7c
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x2
	.byte	0x7e
	.byte	0x8
	.4byte	.LVL21
	.4byte	.LFE4
	.2byte	0x2
	.byte	0x7e
	.byte	0
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	0
	.4byte	0
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF7:
	.string	"long long int"
.LASF0:
	.string	"unsigned int"
.LASF16:
	.string	"temp"
.LASF14:
	.string	"pxCurrentTCB"
.LASF17:
	.string	"current_end"
.LASF13:
	.string	"coredump_regs"
.LASF19:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF20:
	.string	"./components/utils/coredump/port_freertos.c"
.LASF6:
	.string	"long unsigned int"
.LASF18:
	.string	"next_start"
.LASF8:
	.string	"long long unsigned int"
.LASF11:
	.string	"addr"
.LASF21:
	.string	"./examples/usb_cam_stream/build_wsl/build_out/components/utils"
.LASF2:
	.string	"unsigned char"
.LASF12:
	.string	"char"
.LASF15:
	.string	"sections"
.LASF10:
	.string	"uint32_t"
.LASF5:
	.string	"long int"
.LASF23:
	.string	"current_task_stack"
.LASF9:
	.string	"__uint32_t"
.LASF4:
	.string	"short unsigned int"
.LASF1:
	.string	"signed char"
.LASF22:
	.string	"dump_section"
.LASF3:
	.string	"short int"
	.ident	"GCC: (GNU) 10.4.0"
