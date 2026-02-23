	.file	"heap_3.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.pvPortMalloc,"ax",@progbits
	.align	1
	.globl	pvPortMalloc
	.type	pvPortMalloc, @function
pvPortMalloc:
.LFB5:
	.file 1 "./components/os/freertos/portable/MemMang/heap_3.c"
	.loc 1 60 1
	.cfi_startproc
.LVL0:
	.loc 1 61 5
	.loc 1 63 5
	.loc 1 60 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 60 1
	sw	a0,12(sp)
	.loc 1 63 5
	call	vTaskSuspendAll
.LVL1:
	.loc 1 65 9 is_stmt 1
	.loc 1 65 20 is_stmt 0
	lw	a0,12(sp)
	li	a1,0
	call	kmalloc
.LVL2:
	mv	s0,a0
.LVL3:
	.loc 1 66 9 is_stmt 1
	.loc 1 68 5
	.loc 1 68 14 is_stmt 0
	call	xTaskResumeAll
.LVL4:
	.loc 1 72 9 is_stmt 1
	.loc 1 72 11 is_stmt 0
	bne	s0,zero,.L1
	.loc 1 74 13 is_stmt 1
	call	vApplicationMallocFailedHook
.LVL5:
	.loc 1 79 5
.L1:
	.loc 1 80 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	mv	a0,s0
	lw	s0,24(sp)
	.cfi_restore 8
.LVL6:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL7:
	jr	ra
	.cfi_endproc
.LFE5:
	.size	pvPortMalloc, .-pvPortMalloc
	.section	.text.vPortFree,"ax",@progbits
	.align	1
	.globl	vPortFree
	.type	vPortFree, @function
vPortFree:
.LFB6:
	.loc 1 84 1 is_stmt 1
	.cfi_startproc
.LVL8:
	.loc 1 85 5
	.loc 1 85 7 is_stmt 0
	beq	a0,zero,.L4
	.loc 1 84 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	.cfi_offset 1, -4
	sw	a0,12(sp)
	.loc 1 87 9 is_stmt 1
	call	vTaskSuspendAll
.LVL9:
	.loc 1 89 13
	lw	a0,12(sp)
	call	kfree
.LVL10:
	.loc 1 90 13
	.loc 1 92 9
	.loc 1 94 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL11:
	.loc 1 92 18
	tail	xTaskResumeAll
.LVL12:
.L4:
	ret
	.cfi_endproc
.LFE6:
	.size	vPortFree, .-vPortFree
	.text
.Letext0:
	.file 2 "./components/os/freertos/include/task.h"
	.file 3 "./components/mm/./mem.h"
	.file 4 "./components/os/freertos/include/portable.h"
	.file 5 "./toolchain/linux_x86_64/lib/gcc/riscv64-unknown-elf/10.4.0/include/stddef.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x178
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF16
	.byte	0xc
	.4byte	.LASF17
	.4byte	.LASF18
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	.LASF19
	.byte	0x5
	.byte	0xd1
	.byte	0x16
	.4byte	0x31
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
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
	.byte	0x5
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x6
	.4byte	.LASF20
	.byte	0x1
	.byte	0x53
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0xcd
	.byte	0x7
	.string	"pv"
	.byte	0x1
	.byte	0x53
	.byte	0x18
	.4byte	0x77
	.4byte	.LLST2
	.byte	0x8
	.4byte	.LVL9
	.4byte	0x13d
	.byte	0x9
	.4byte	.LVL10
	.4byte	0x14a
	.4byte	0xc3
	.byte	0xa
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0
	.byte	0xb
	.4byte	.LVL12
	.4byte	0x156
	.byte	0
	.byte	0xc
	.4byte	.LASF21
	.byte	0x1
	.byte	0x3b
	.byte	0x8
	.4byte	0x77
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x13d
	.byte	0xd
	.4byte	.LASF10
	.byte	0x1
	.byte	0x3b
	.byte	0x1d
	.4byte	0x25
	.4byte	.LLST0
	.byte	0xe
	.4byte	.LASF22
	.byte	0x1
	.byte	0x3d
	.byte	0xc
	.4byte	0x77
	.4byte	.LLST1
	.byte	0x8
	.4byte	.LVL1
	.4byte	0x13d
	.byte	0x9
	.4byte	.LVL2
	.4byte	0x163
	.4byte	0x12a
	.byte	0xa
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0xa
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x8
	.4byte	.LVL4
	.4byte	0x156
	.byte	0x8
	.4byte	.LVL5
	.4byte	0x16f
	.byte	0
	.byte	0xf
	.4byte	.LASF11
	.4byte	.LASF11
	.byte	0x2
	.2byte	0x55f
	.byte	0x6
	.byte	0x10
	.4byte	.LASF12
	.4byte	.LASF12
	.byte	0x3
	.byte	0x9c
	.byte	0x6
	.byte	0xf
	.4byte	.LASF13
	.4byte	.LASF13
	.byte	0x2
	.2byte	0x597
	.byte	0xc
	.byte	0x10
	.4byte	.LASF14
	.4byte	.LASF14
	.byte	0x3
	.byte	0x82
	.byte	0x7
	.byte	0x10
	.4byte	.LASF15
	.4byte	.LASF15
	.byte	0x4
	.byte	0xcb
	.byte	0xa
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
	.byte	0x7
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
	.byte	0x8
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0xa
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xb
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
	.byte	0xc
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
	.byte	0xd
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
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x10
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
.LLST2:
	.4byte	.LVL8
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9-1
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x72
	.byte	0x6c
	.4byte	.LVL12
	.4byte	.LFE6
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
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL7
	.4byte	.LFE5
	.2byte	0x2
	.byte	0x72
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL6
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF7:
	.string	"long long int"
.LASF4:
	.string	"short unsigned int"
.LASF0:
	.string	"unsigned int"
.LASF19:
	.string	"size_t"
.LASF22:
	.string	"pvReturn"
.LASF16:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF6:
	.string	"long unsigned int"
.LASF8:
	.string	"long long unsigned int"
.LASF17:
	.string	"./components/os/freertos/portable/MemMang/heap_3.c"
.LASF11:
	.string	"vTaskSuspendAll"
.LASF2:
	.string	"unsigned char"
.LASF9:
	.string	"char"
.LASF18:
	.string	"./examples/usb_cam_stream/build_wsl/build_out/components/os/freertos"
.LASF5:
	.string	"long int"
.LASF14:
	.string	"kmalloc"
.LASF21:
	.string	"pvPortMalloc"
.LASF15:
	.string	"vApplicationMallocFailedHook"
.LASF10:
	.string	"xWantedSize"
.LASF12:
	.string	"kfree"
.LASF20:
	.string	"vPortFree"
.LASF13:
	.string	"xTaskResumeAll"
.LASF3:
	.string	"short int"
.LASF1:
	.string	"signed char"
	.ident	"GCC: (GNU) 10.4.0"
