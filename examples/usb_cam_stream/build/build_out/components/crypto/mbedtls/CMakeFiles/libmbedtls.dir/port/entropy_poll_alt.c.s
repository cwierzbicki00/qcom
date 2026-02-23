	.file	"entropy_poll_alt.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.mbedtls_hardware_poll,"ax",@progbits
	.align	1
	.globl	mbedtls_hardware_poll
	.type	mbedtls_hardware_poll, @function
mbedtls_hardware_poll:
.LFB7:
	.file 1 ".\\components\\crypto\\mbedtls\\port\\entropy_poll_alt.c"
	.loc 1 10 1
	.cfi_startproc
.LVL0:
	.loc 1 11 5
	.loc 1 12 5
	.loc 1 10 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 10 1
	mv	s0,a2
	mv	s2,a1
	sw	a3,12(sp)
	.loc 1 12 12
	call	qcc74x_irq_save
.LVL1:
	mv	s1,a0
.LVL2:
	.loc 1 13 5 is_stmt 1
	mv	a1,s0
	mv	a0,s2
	call	qcc74x_trng_readlen
.LVL3:
	.loc 1 15 5
	.loc 1 15 11 is_stmt 0
	lw	a3,12(sp)
	.loc 1 16 5
	mv	a0,s1
	.loc 1 15 11
	sw	s0,0(a3)
	.loc 1 16 5 is_stmt 1
	call	qcc74x_irq_restore
.LVL4:
	.loc 1 17 5
	.loc 1 18 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL5:
	lw	s1,20(sp)
	.cfi_restore 9
.LVL6:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL7:
	li	a0,0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL8:
	jr	ra
	.cfi_endproc
.LFE7:
	.size	mbedtls_hardware_poll, .-mbedtls_hardware_poll
	.text
.Letext0:
	.file 2 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\machine\\_default_types.h"
	.file 3 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\lib\\gcc\\riscv64-unknown-elf\\10.4.0\\include\\stddef.h"
	.file 4 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\sys\\_stdint.h"
	.file 5 ".\\drivers\\lhal\\include/qcc74x_irq.h"
	.file 6 ".\\drivers\\lhal\\include/qcc74x_sec_trng.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x163
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF19
	.byte	0xc
	.4byte	.LASF20
	.4byte	.LASF21
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
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x4
	.4byte	.LASF9
	.byte	0x2
	.byte	0xe8
	.byte	0x16
	.4byte	0x70
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x4
	.4byte	.LASF10
	.byte	0x3
	.byte	0xd1
	.byte	0x16
	.4byte	0x70
	.byte	0x4
	.4byte	.LASF11
	.byte	0x4
	.byte	0x52
	.byte	0x15
	.4byte	0x64
	.byte	0x5
	.byte	0x4
	.byte	0x6
	.byte	0x4
	.4byte	0x2c
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0x7
	.4byte	.LASF22
	.byte	0x1
	.byte	0x8
	.byte	0x5
	.4byte	0x5d
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x13c
	.byte	0x8
	.4byte	.LASF13
	.byte	0x1
	.byte	0x8
	.byte	0x22
	.4byte	0x8f
	.4byte	.LLST0
	.byte	0x8
	.4byte	.LASF14
	.byte	0x1
	.byte	0x9
	.byte	0x2b
	.4byte	0x91
	.4byte	.LLST1
	.byte	0x9
	.string	"len"
	.byte	0x1
	.byte	0x9
	.byte	0x3a
	.4byte	0x77
	.4byte	.LLST2
	.byte	0x8
	.4byte	.LASF15
	.byte	0x1
	.byte	0x9
	.byte	0x47
	.4byte	0x13c
	.4byte	.LLST3
	.byte	0xa
	.4byte	.LASF23
	.byte	0x1
	.byte	0xb
	.byte	0xf
	.4byte	0x83
	.4byte	.LLST4
	.byte	0xb
	.4byte	.LVL1
	.4byte	0x142
	.byte	0xc
	.4byte	.LVL3
	.4byte	0x14e
	.4byte	0x12b
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0xd
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LVL4
	.4byte	0x15a
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x77
	.byte	0xf
	.4byte	.LASF16
	.4byte	.LASF16
	.byte	0x5
	.byte	0x2e
	.byte	0xb
	.byte	0xf
	.4byte	.LASF17
	.4byte	.LASF17
	.byte	0x6
	.byte	0x22
	.byte	0x5
	.byte	0xf
	.4byte	.LASF18
	.4byte	.LASF18
	.byte	0x5
	.byte	0x35
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
	.byte	0x8
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
	.byte	0x9
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
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
	.byte	0xd
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1-1
	.4byte	.LFE7
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
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL7
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL1-1
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL5
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL1-1
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL8
	.4byte	.LFE7
	.2byte	0x2
	.byte	0x72
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL2
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x59
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
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF6:
	.string	"long long int"
.LASF10:
	.string	"size_t"
.LASF20:
	.string	".\\components\\crypto\\mbedtls\\port\\entropy_poll_alt.c"
.LASF19:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF22:
	.string	"mbedtls_hardware_poll"
.LASF11:
	.string	"uintptr_t"
.LASF5:
	.string	"long unsigned int"
.LASF7:
	.string	"long long unsigned int"
.LASF17:
	.string	"qcc74x_trng_readlen"
.LASF18:
	.string	"qcc74x_irq_restore"
.LASF9:
	.string	"__uintptr_t"
.LASF16:
	.string	"qcc74x_irq_save"
.LASF1:
	.string	"unsigned char"
.LASF13:
	.string	"data"
.LASF4:
	.string	"long int"
.LASF21:
	.string	"C:\\\\Users\\\\cwier\\\\Documents\\\\GitHub\\\\qcom\\\\examples\\\\usb_cam_stream\\\\build\\\\build_out\\\\components\\\\crypto\\\\mbedtls"
.LASF15:
	.string	"olen"
.LASF3:
	.string	"short unsigned int"
.LASF0:
	.string	"signed char"
.LASF14:
	.string	"output"
.LASF2:
	.string	"short int"
.LASF8:
	.string	"unsigned int"
.LASF23:
	.string	"flag"
.LASF12:
	.string	"char"
	.ident	"GCC: (GNU) 10.4.0"
