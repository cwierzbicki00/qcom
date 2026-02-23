	.file	"rfparam_rftlv.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.rfparam_tlv_valid,"ax",@progbits
	.align	1
	.globl	rfparam_tlv_valid
	.type	rfparam_tlv_valid, @function
rfparam_tlv_valid:
.LFB4:
	.file 1 ".\\drivers\\rfparam\\Src\\rfparam_rftlv.c"
	.loc 1 8 1
	.cfi_startproc
.LVL0:
	.loc 1 9 5
	.loc 1 9 8 is_stmt 0
	lw	a4,0(a0)
	li	a5,1179799552
	addi	a5,a5,-958
	bne	a4,a5,.L3
	lw	a4,4(a0)
	li	a5,1095909376
	addi	a5,a5,336
	bne	a4,a5,.L3
.LVL1:
.LBB4:
.LBB5:
	.loc 1 9 61
	lw	a5,8(a0)
	li	a4,1799630848
	lw	a0,12(a0)
.LVL2:
	addi	a4,a4,1615
	xor	a5,a5,a4
	li	a4,1798397952
	addi	a4,a4,600
	xor	a0,a0,a4
	or	a0,a5,a0
	seqz	a0,a0
	ret
.LVL3:
.L3:
.LBE5:
.LBE4:
	.loc 1 13 12
	li	a0,0
.LVL4:
	.loc 1 14 1
	ret
	.cfi_endproc
.LFE4:
	.size	rfparam_tlv_valid, .-rfparam_tlv_valid
	.section	.text.rfparam_tlv_get,"ax",@progbits
	.align	1
	.globl	rfparam_tlv_get
	.type	rfparam_tlv_get, @function
rfparam_tlv_get:
.LFB5:
	.loc 1 24 1 is_stmt 1
	.cfi_startproc
.LVL5:
	.loc 1 25 5
	.loc 1 26 5
	.loc 1 27 5
	.loc 1 28 5
	.loc 1 24 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s6,16(sp)
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 22, -32
	.loc 1 24 1
	mv	s4,a0
	mv	s5,a1
	mv	s3,a2
	mv	s2,a3
	.loc 1 28 13
	call	rfparam_tlv_valid
.LVL6:
	.loc 1 28 7
	li	a5,1
	beq	a0,a5,.L5
.L7:
	.loc 1 29 16
	li	s1,-1
.L4:
	.loc 1 61 1
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s2,32(sp)
	.cfi_restore 18
.LVL7:
	lw	s3,28(sp)
	.cfi_restore 19
.LVL8:
	lw	s4,24(sp)
	.cfi_restore 20
.LVL9:
	lw	s5,20(sp)
	.cfi_restore 21
	lw	s6,16(sp)
	.cfi_restore 22
	mv	a0,s1
	lw	s1,36(sp)
	.cfi_restore 9
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL10:
.L5:
	.cfi_restore_state
	mv	s1,a0
	.loc 1 32 5 is_stmt 1
	mv	a2,s3
	li	a1,0
	mv	a0,s2
	call	memset
.LVL11:
	.loc 1 33 5
	.loc 1 35 5
	.loc 1 35 8 is_stmt 0
	beq	s5,zero,.L7
	.loc 1 35 26 discriminator 1
	beq	s2,zero,.L7
	.loc 1 33 14
	addi	s0,s4,16
.LVL12:
	.loc 1 40 12
	li	s6,2043
.L9:
	.loc 1 39 5 is_stmt 1
	.loc 1 40 9
	.loc 1 40 23 is_stmt 0
	sub	a5,s0,s4
	.loc 1 40 12
	bgtu	a5,s6,.L7
	.loc 1 44 9 is_stmt 1
	.loc 1 44 10 is_stmt 0
	li	a2,2
	mv	a1,s0
	addi	a0,sp,12
	call	memcpy
.LVL13:
	.loc 1 45 9 is_stmt 1
	.loc 1 45 10 is_stmt 0
	li	a2,2
	addi	a1,s0,2
	addi	a0,sp,14
	call	memcpy
.LVL14:
	.loc 1 46 9 is_stmt 1
	.loc 1 46 22 is_stmt 0
	lhu	a5,12(sp)
	.loc 1 46 12
	beq	a5,zero,.L7
	.loc 1 48 16 is_stmt 1
	.loc 1 49 22 is_stmt 0
	lhu	a2,14(sp)
	.loc 1 48 19
	beq	a5,s5,.L8
	.loc 1 49 13 is_stmt 1
	.loc 1 49 22 is_stmt 0
	addi	a2,a2,4
	add	s0,s0,a2
.LVL15:
	.loc 1 50 13 is_stmt 1
	.loc 1 39 11
	.loc 1 40 12 is_stmt 0
	j	.L9
.L8:
	.loc 1 52 9 is_stmt 1
	.loc 1 52 12 is_stmt 0
	bltu	s3,a2,.L10
	.loc 1 57 9 is_stmt 1
	.loc 1 57 10 is_stmt 0
	addi	a1,s0,4
	mv	a0,s2
	call	memcpy
.LVL16:
	.loc 1 58 9 is_stmt 1
	.loc 1 58 16 is_stmt 0
	j	.L4
.L10:
	.loc 1 53 20
	li	s1,0
	j	.L4
	.cfi_endproc
.LFE5:
	.size	rfparam_tlv_get, .-rfparam_tlv_get
	.text
.Letext0:
	.file 2 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\machine\\_default_types.h"
	.file 3 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\sys\\_stdint.h"
	.file 4 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x236
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF25
	.byte	0xc
	.4byte	.LASF26
	.4byte	.LASF27
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
	.byte	0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x46
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
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
	.byte	0x5
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x3a
	.byte	0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x54
	.byte	0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x3c
	.byte	0x14
	.4byte	0x6e
	.byte	0x6
	.4byte	.LASF28
	.byte	0x1
	.byte	0x17
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x1cc
	.byte	0x7
	.4byte	.LASF16
	.byte	0x1
	.byte	0x17
	.byte	0x1e
	.4byte	0xa4
	.4byte	.LLST2
	.byte	0x7
	.4byte	.LASF17
	.byte	0x1
	.byte	0x17
	.byte	0x31
	.4byte	0x98
	.4byte	.LLST3
	.byte	0x7
	.4byte	.LASF18
	.byte	0x1
	.byte	0x17
	.byte	0x40
	.4byte	0xa4
	.4byte	.LLST4
	.byte	0x7
	.4byte	.LASF19
	.byte	0x1
	.byte	0x17
	.byte	0x51
	.4byte	0x8f
	.4byte	.LLST5
	.byte	0x8
	.4byte	.LASF20
	.byte	0x1
	.byte	0x19
	.byte	0xe
	.4byte	0x98
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x8
	.4byte	.LASF21
	.byte	0x1
	.byte	0x1a
	.byte	0xe
	.4byte	0x98
	.byte	0x2
	.byte	0x91
	.byte	0x5e
	.byte	0x9
	.4byte	.LASF22
	.byte	0x1
	.byte	0x1b
	.byte	0xe
	.4byte	0xa4
	.4byte	.LLST6
	.byte	0xa
	.4byte	.LVL6
	.4byte	0x1cc
	.4byte	0x158
	.byte	0xb
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0xa
	.4byte	.LVL11
	.4byte	0x221
	.4byte	0x177
	.byte	0xb
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0xb
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0xb
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0xa
	.4byte	.LVL13
	.4byte	0x22d
	.4byte	0x196
	.byte	0xb
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0xb
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xb
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0xa
	.4byte	.LVL14
	.4byte	0x22d
	.4byte	0x1b5
	.byte	0xb
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x5e
	.byte	0xb
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x2
	.byte	0xb
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0xc
	.4byte	.LVL16
	.4byte	0x22d
	.byte	0xb
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0xb
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LASF29
	.byte	0x1
	.byte	0x7
	.byte	0x5
	.4byte	0x81
	.byte	0x1
	.4byte	0x1ea
	.byte	0xe
	.4byte	.LASF16
	.byte	0x1
	.byte	0x7
	.byte	0x20
	.4byte	0xa4
	.byte	0
	.byte	0xf
	.4byte	0x1cc
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x221
	.byte	0x10
	.4byte	0x1dd
	.4byte	.LLST0
	.byte	0x11
	.4byte	0x1cc
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0x7
	.byte	0x5
	.byte	0x10
	.4byte	0x1dd
	.4byte	.LLST1
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LASF23
	.4byte	.LASF23
	.byte	0x4
	.byte	0x21
	.byte	0x8
	.byte	0x12
	.4byte	.LASF24
	.4byte	.LASF24
	.byte	0x4
	.byte	0x1f
	.byte	0x8
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
	.byte	0x7
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
	.byte	0x8
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xa
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
	.byte	0xb
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
	.byte	0x49
	.byte	0x13
	.byte	0x20
	.byte	0xb
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
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x2e
	.byte	0x1
	.byte	0x31
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
	.byte	0x10
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x1d
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x58
	.byte	0xb
	.byte	0x59
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x12
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
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6-1
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL6-1
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL6-1
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL6-1
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x3
	.byte	0x84
	.byte	0x10
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
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
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LVL3
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
.LASF25:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF20:
	.string	"type_tmp"
.LASF18:
	.string	"value_len"
.LASF19:
	.string	"value"
.LASF22:
	.string	"addr_tmp"
.LASF15:
	.string	"uint64_t"
.LASF1:
	.string	"unsigned char"
.LASF7:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF23:
	.string	"memset"
.LASF5:
	.string	"__uint16_t"
.LASF26:
	.string	".\\drivers\\rfparam\\Src\\rfparam_rftlv.c"
.LASF28:
	.string	"rfparam_tlv_get"
.LASF6:
	.string	"__uint32_t"
.LASF16:
	.string	"tlv_addr"
.LASF11:
	.string	"unsigned int"
.LASF10:
	.string	"long long unsigned int"
.LASF21:
	.string	"length_tmp"
.LASF8:
	.string	"long long int"
.LASF24:
	.string	"memcpy"
.LASF17:
	.string	"type"
.LASF2:
	.string	"short int"
.LASF9:
	.string	"__uint64_t"
.LASF13:
	.string	"uint16_t"
.LASF14:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF12:
	.string	"char"
.LASF0:
	.string	"signed char"
.LASF27:
	.string	"C:\\\\Users\\\\cwier\\\\Documents\\\\GitHub\\\\qcom\\\\examples\\\\solutions\\\\rtsp_softap_cam\\\\build\\\\build_out\\\\drivers\\\\rfparam"
.LASF29:
	.string	"rfparam_tlv_valid"
	.ident	"GCC: (GNU) 10.4.0"
