	.file	"err.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.err_to_errno,"ax",@progbits
	.align	1
	.globl	err_to_errno
	.type	err_to_errno, @function
err_to_errno:
.LFB4:
	.file 1 ".\\components\\net\\lwip\\lwip\\src\\api\\err.c"
	.loc 1 70 1
	.cfi_startproc
.LVL0:
	.loc 1 71 3
	.loc 1 71 17 is_stmt 0
	addi	a5,a0,16
	.loc 1 71 6
	andi	a5,a5,0xff
	li	a4,16
	bgtu	a5,a4,.L3
	.loc 1 74 3 is_stmt 1
	.loc 1 74 28 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	.loc 1 74 29
	neg	a0,a0
.LVL1:
	.loc 1 74 28
	lrw	a0,a5,a0,2
	ret
.LVL2:
.L3:
	.loc 1 72 11
	li	a0,5
.LVL3:
	.loc 1 75 1
	ret
	.cfi_endproc
.LFE4:
	.size	err_to_errno, .-err_to_errno
	.section	.rodata.lwip_strerr.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"Unknown error."
	.section	.text.lwip_strerr,"ax",@progbits
	.align	1
	.globl	lwip_strerr
	.type	lwip_strerr, @function
lwip_strerr:
.LFB5:
	.loc 1 108 1 is_stmt 1
	.cfi_startproc
.LVL4:
	.loc 1 109 3
	.loc 1 109 17 is_stmt 0
	addi	a5,a0,16
	.loc 1 109 6
	andi	a5,a5,0xff
	li	a4,16
	bgtu	a5,a4,.L6
	.loc 1 112 3 is_stmt 1
	.loc 1 112 20 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	addi	a5,a5,%lo(.LANCHOR1)
	.loc 1 112 21
	neg	a0,a0
.LVL5:
	.loc 1 112 20
	lrw	a0,a5,a0,2
	ret
.LVL6:
.L6:
	.loc 1 110 12
	lui	a0,%hi(.LC0)
.LVL7:
	addi	a0,a0,%lo(.LC0)
	.loc 1 113 1
	ret
	.cfi_endproc
.LFE5:
	.size	lwip_strerr, .-lwip_strerr
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"Ok."
	.align	2
.LC2:
	.string	"Out of memory error."
	.align	2
.LC3:
	.string	"Buffer error."
	.align	2
.LC4:
	.string	"Timeout."
	.align	2
.LC5:
	.string	"Routing problem."
	.align	2
.LC6:
	.string	"Operation in progress."
	.align	2
.LC7:
	.string	"Illegal value."
	.align	2
.LC8:
	.string	"Operation would block."
	.align	2
.LC9:
	.string	"Address in use."
	.align	2
.LC10:
	.string	"Already connecting."
	.align	2
.LC11:
	.string	"Already connected."
	.align	2
.LC12:
	.string	"Not connected."
	.align	2
.LC13:
	.string	"Low-level netif error."
	.align	2
.LC14:
	.string	"Connection aborted."
	.align	2
.LC15:
	.string	"Connection reset."
	.align	2
.LC16:
	.string	"Connection closed."
	.align	2
.LC17:
	.string	"Illegal argument."
	.section	.rodata.err_strerr,"a"
	.align	2
	.set	.LANCHOR1,. + 0
	.type	err_strerr, @object
	.size	err_strerr, 68
err_strerr:
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.word	.LC12
	.word	.LC13
	.word	.LC14
	.word	.LC15
	.word	.LC16
	.word	.LC17
	.section	.rodata.err_to_errno_table,"a"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	err_to_errno_table, @object
	.size	err_to_errno_table, 68
err_to_errno_table:
	.word	0
	.word	12
	.word	105
	.word	11
	.word	118
	.word	119
	.word	22
	.word	11
	.word	112
	.word	120
	.word	127
	.word	128
	.word	-1
	.word	113
	.word	104
	.word	128
	.word	5
	.text
.Letext0:
	.file 2 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\machine\\_default_types.h"
	.file 3 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\sys\\_stdint.h"
	.file 4 ".\\components\\net\\lwip\\lwip\\src\\include/lwip/arch.h"
	.file 5 ".\\components\\net\\lwip\\lwip\\src\\include/lwip/err.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x14a
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
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	0x25
	.byte	0x4
	.4byte	.LASF10
	.byte	0x2
	.byte	0x29
	.byte	0x15
	.4byte	0x3d
	.byte	0x5
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.byte	0x5
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x5
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.byte	0x5
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.byte	0x5
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.byte	0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x3
	.4byte	0x7c
	.byte	0x6
	.byte	0x4
	.4byte	0x83
	.byte	0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x14
	.byte	0x12
	.4byte	0x31
	.byte	0x4
	.4byte	.LASF12
	.byte	0x4
	.byte	0x7e
	.byte	0x10
	.4byte	0x8e
	.byte	0x4
	.4byte	.LASF13
	.byte	0x5
	.byte	0x60
	.byte	0xe
	.4byte	0x9a
	.byte	0x7
	.4byte	0x2c
	.4byte	0xc2
	.byte	0x8
	.4byte	0x75
	.byte	0x10
	.byte	0
	.byte	0x3
	.4byte	0xb2
	.byte	0x9
	.4byte	.LASF14
	.byte	0x1
	.byte	0x30
	.byte	0x12
	.4byte	0xc2
	.byte	0x5
	.byte	0x3
	.4byte	err_to_errno_table
	.byte	0x7
	.4byte	0x88
	.4byte	0xe9
	.byte	0x8
	.4byte	0x75
	.byte	0x10
	.byte	0
	.byte	0x9
	.4byte	.LASF15
	.byte	0x1
	.byte	0x50
	.byte	0x14
	.4byte	0xd9
	.byte	0x5
	.byte	0x3
	.4byte	err_strerr
	.byte	0xa
	.4byte	.LASF19
	.byte	0x1
	.byte	0x6b
	.byte	0x1
	.4byte	0x88
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x126
	.byte	0xb
	.string	"err"
	.byte	0x1
	.byte	0x6b
	.byte	0x13
	.4byte	0xa6
	.4byte	.LLST1
	.byte	0
	.byte	0xc
	.4byte	.LASF20
	.byte	0x1
	.byte	0x45
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.byte	0xb
	.string	"err"
	.byte	0x1
	.byte	0x45
	.byte	0x14
	.4byte	0xa6
	.4byte	.LLST0
	.byte	0
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0xa
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
	.byte	0xb
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF6:
	.string	"long long int"
.LASF8:
	.string	"unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF15:
	.string	"err_strerr"
.LASF16:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF5:
	.string	"long unsigned int"
.LASF7:
	.string	"long long unsigned int"
.LASF18:
	.string	"C:\\\\Users\\\\cwier\\\\Documents\\\\GitHub\\\\qcom\\\\examples\\\\solutions\\\\rtsp_softap_cam\\\\build\\\\build_out\\\\components\\\\net\\\\lwip\\\\lwip"
.LASF13:
	.string	"err_t"
.LASF19:
	.string	"lwip_strerr"
.LASF14:
	.string	"err_to_errno_table"
.LASF9:
	.string	"char"
.LASF11:
	.string	"int8_t"
.LASF4:
	.string	"long int"
.LASF10:
	.string	"__int8_t"
.LASF3:
	.string	"short unsigned int"
.LASF12:
	.string	"s8_t"
.LASF20:
	.string	"err_to_errno"
.LASF17:
	.string	".\\components\\net\\lwip\\lwip\\src\\api\\err.c"
.LASF2:
	.string	"short int"
.LASF0:
	.string	"signed char"
	.ident	"GCC: (GNU) 10.4.0"
