	.file	"sha256-kdf.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.hmac_sha256_kdf.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	""
	.section	.text.hmac_sha256_kdf,"ax",@progbits
	.align	1
	.globl	hmac_sha256_kdf
	.type	hmac_sha256_kdf, @function
hmac_sha256_kdf:
.LFB106:
	.file 1 ".\\components\\wireless\\wifi6\\qcc74x_wpa_supplicant\\src\\crypto\\sha256-kdf.c"
	.loc 1 35 1
	.cfi_startproc
.LVL0:
	.loc 1 36 2
	.loc 1 37 2
	.loc 1 35 1 is_stmt 0
	addi	sp,sp,-144
	.cfi_def_cfa_offset 144
	sw	s4,120(sp)
	.cfi_offset 20, -24
	mv	s4,a5
	.loc 1 37 5
	li	a5,1
.LVL1:
	.loc 1 35 1
	sw	s0,136(sp)
	.loc 1 37 5
	sb	a5,31(sp)
	.loc 1 38 2 is_stmt 1
	.loc 1 39 2
	.loc 1 40 2
	.loc 1 42 2
	.cfi_offset 8, -8
	.loc 1 42 10 is_stmt 0
	addi	s0,sp,64
	.loc 1 43 9
	li	a5,32
	.loc 1 35 1
	sw	s3,124(sp)
	sw	s5,116(sp)
	sw	s6,112(sp)
	sw	ra,140(sp)
	sw	s1,132(sp)
	sw	s2,128(sp)
	sw	s7,108(sp)
	sw	s8,104(sp)
	.cfi_offset 19, -20
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.loc 1 42 10
	sw	s0,32(sp)
	.loc 1 43 2 is_stmt 1
	.loc 1 43 9 is_stmt 0
	sw	a5,48(sp)
	.loc 1 44 2 is_stmt 1
	.loc 1 35 1 is_stmt 0
	mv	s5,a0
	mv	s6,a1
	mv	s3,a6
	.loc 1 44 5
	beq	a2,zero,.L2
	.loc 1 46 12
	mv	a0,a2
.LVL2:
	sw	a4,12(sp)
	sw	a3,8(sp)
	.loc 1 45 3 is_stmt 1
	.loc 1 45 11 is_stmt 0
	sw	a2,36(sp)
	.loc 1 46 3 is_stmt 1
	.loc 1 46 12 is_stmt 0
	call	os_strlen
.LVL3:
	lw	a3,8(sp)
	lw	a4,12(sp)
	.loc 1 46 29
	addi	a0,a0,1
	.loc 1 46 10
	sw	a0,52(sp)
.LVL4:
.L3:
	.loc 1 51 2 is_stmt 1
	.loc 1 53 10 is_stmt 0
	addi	a5,sp,31
	sw	a5,44(sp)
	.loc 1 54 9
	li	a5,1
	.loc 1 51 10
	sw	a3,40(sp)
	.loc 1 52 2 is_stmt 1
	.loc 1 52 9 is_stmt 0
	sw	a4,56(sp)
	.loc 1 53 2 is_stmt 1
	.loc 1 54 2
	.loc 1 54 9 is_stmt 0
	sw	a5,60(sp)
	.loc 1 56 2 is_stmt 1
	.loc 1 56 6 is_stmt 0
	addi	a4,sp,52
	mv	a5,s0
	addi	a3,sp,36
	li	a2,3
	mv	a1,s6
	mv	a0,s5
	call	hmac_sha256_vector
.LVL5:
	.loc 1 57 10
	li	a5,-1
	.loc 1 56 5
	blt	a0,zero,.L1
	.loc 1 59 6
	li	s1,0
	li	s7,32
	.loc 1 70 6
	li	s8,255
.L9:
.LVL6:
	.loc 1 60 2 is_stmt 1
	.loc 1 61 3
	.loc 1 61 8 is_stmt 0
	sub	s2,s3,s1
	.loc 1 62 3 is_stmt 1
	bleu	s2,s7,.L5
	li	s2,32
.L5:
.LVL7:
	.loc 1 64 3
	add	a0,s4,s1
	mv	a2,s2
	mv	a1,s0
	.loc 1 65 7 is_stmt 0
	add	s1,s1,s2
.LVL8:
	.loc 1 64 3
	call	os_memcpy
.LVL9:
	.loc 1 65 3 is_stmt 1
	.loc 1 67 3
	.loc 1 67 6 is_stmt 0
	beq	s3,s1,.L6
	.loc 1 70 3 is_stmt 1
	.loc 1 70 12 is_stmt 0
	lbu	a5,31(sp)
	.loc 1 70 6
	bne	a5,s8,.L7
.L8:
	.loc 1 71 4 is_stmt 1
	mv	a2,s3
	li	a1,0
	mv	a0,s4
	call	os_memset
.LVL10:
	.loc 1 72 4
	li	a1,32
	mv	a0,s0
	call	forced_memzero
.LVL11:
	.loc 1 73 4
	.loc 1 73 11 is_stmt 0
	li	a5,-1
.LVL12:
.L1:
	.loc 1 87 1
	lw	ra,140(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,136(sp)
	.cfi_restore 8
	lw	s1,132(sp)
	.cfi_restore 9
	lw	s2,128(sp)
	.cfi_restore 18
	lw	s3,124(sp)
	.cfi_restore 19
.LVL13:
	lw	s4,120(sp)
	.cfi_restore 20
.LVL14:
	lw	s5,116(sp)
	.cfi_restore 21
.LVL15:
	lw	s6,112(sp)
	.cfi_restore 22
.LVL16:
	lw	s7,108(sp)
	.cfi_restore 23
	lw	s8,104(sp)
	.cfi_restore 24
	mv	a0,a5
	addi	sp,sp,144
	.cfi_def_cfa_offset 0
	jr	ra
.LVL17:
.L2:
	.cfi_restore_state
	.loc 1 48 3 is_stmt 1
	.loc 1 48 11 is_stmt 0
	lui	a5,%hi(.LC0)
	addi	a5,a5,%lo(.LC0)
	sw	a5,36(sp)
	.loc 1 49 3 is_stmt 1
	.loc 1 49 10 is_stmt 0
	sw	zero,52(sp)
	j	.L3
.LVL18:
.L7:
	.loc 1 75 3 is_stmt 1
	.loc 1 75 7 is_stmt 0
	addi	a5,a5,1
	sb	a5,31(sp)
	.loc 1 77 3 is_stmt 1
	.loc 1 77 7 is_stmt 0
	addi	a4,sp,48
	mv	a5,s0
	addi	a3,sp,32
	li	a2,4
	mv	a1,s6
	mv	a0,s5
	call	hmac_sha256_vector
.LVL19:
	.loc 1 77 6
	bge	a0,zero,.L9
	j	.L8
.L6:
	.loc 1 85 2 is_stmt 1
	li	a1,32
	mv	a0,s0
	call	forced_memzero
.LVL20:
	.loc 1 86 2
	.loc 1 86 9 is_stmt 0
	li	a5,0
	j	.L1
	.cfi_endproc
.LFE106:
	.size	hmac_sha256_kdf, .-hmac_sha256_kdf
	.text
.Letext0:
	.file 2 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\machine\\_default_types.h"
	.file 3 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\sys\\_stdint.h"
	.file 4 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\lib\\gcc\\riscv64-unknown-elf\\10.4.0\\include\\stddef.h"
	.file 5 ".\\components\\wireless\\wifi6\\qcc74x_wpa_supplicant\\src\\utils/os.h"
	.file 6 ".\\components\\wireless\\wifi6\\qcc74x_wpa_supplicant\\src\\crypto\\sha256.h"
	.file 7 ".\\components\\wireless\\wifi6\\qcc74x_wpa_supplicant\\src\\utils/common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x309
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF28
	.byte	0xc
	.4byte	.LASF29
	.4byte	.LASF30
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x38
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.byte	0x4
	.4byte	0x38
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
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0xd1
	.byte	0x16
	.4byte	0x75
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0x4
	.4byte	0x94
	.byte	0x6
	.byte	0x4
	.4byte	0x9b
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF13
	.byte	0x7
	.4byte	0x88
	.4byte	0xbd
	.byte	0x8
	.4byte	0x75
	.byte	0x3
	.byte	0
	.byte	0x9
	.string	"u8"
	.byte	0x7
	.byte	0x95
	.byte	0x11
	.4byte	0x7c
	.byte	0x4
	.4byte	0xbd
	.byte	0x7
	.4byte	0xbd
	.4byte	0xdd
	.byte	0x8
	.4byte	0x75
	.byte	0x1f
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xbd
	.byte	0xa
	.4byte	.LASF31
	.byte	0x1
	.byte	0x20
	.byte	0x5
	.4byte	0x6e
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
	.byte	0x1
	.byte	0x9c
	.4byte	0x2b0
	.byte	0xb
	.4byte	.LASF14
	.byte	0x1
	.byte	0x20
	.byte	0x1f
	.4byte	0x2b0
	.4byte	.LLST0
	.byte	0xb
	.4byte	.LASF15
	.byte	0x1
	.byte	0x20
	.byte	0x2e
	.4byte	0x88
	.4byte	.LLST1
	.byte	0xb
	.4byte	.LASF16
	.byte	0x1
	.byte	0x21
	.byte	0x13
	.4byte	0xa0
	.4byte	.LLST2
	.byte	0xb
	.4byte	.LASF17
	.byte	0x1
	.byte	0x21
	.byte	0x24
	.4byte	0x2b0
	.4byte	.LLST3
	.byte	0xb
	.4byte	.LASF18
	.byte	0x1
	.byte	0x21
	.byte	0x31
	.4byte	0x88
	.4byte	.LLST4
	.byte	0xc
	.string	"out"
	.byte	0x1
	.byte	0x22
	.byte	0xb
	.4byte	0xdd
	.4byte	.LLST5
	.byte	0xb
	.4byte	.LASF19
	.byte	0x1
	.byte	0x22
	.byte	0x17
	.4byte	0x88
	.4byte	.LLST6
	.byte	0xd
	.string	"T"
	.byte	0x1
	.byte	0x24
	.byte	0x5
	.4byte	0xcd
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0xe
	.4byte	.LASF20
	.byte	0x1
	.byte	0x25
	.byte	0x5
	.4byte	0xbd
	.byte	0x3
	.byte	0x91
	.byte	0x8f,0x7f
	.byte	0xe
	.4byte	.LASF21
	.byte	0x1
	.byte	0x26
	.byte	0x17
	.4byte	0x2b6
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7f
	.byte	0xd
	.string	"len"
	.byte	0x1
	.byte	0x27
	.byte	0x9
	.4byte	0xad
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x7f
	.byte	0xf
	.string	"pos"
	.byte	0x1
	.byte	0x28
	.byte	0x9
	.4byte	0x88
	.4byte	.LLST7
	.byte	0x10
	.4byte	.LASF22
	.byte	0x1
	.byte	0x28
	.byte	0xe
	.4byte	0x88
	.4byte	.LLST8
	.byte	0x11
	.4byte	.LVL3
	.4byte	0x2cc
	.4byte	0x1e0
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0x11
	.4byte	.LVL5
	.4byte	0x2d9
	.4byte	0x213
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x33
	.byte	0x12
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x91
	.byte	0x94,0x7f
	.byte	0x12
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0x91
	.byte	0xa4,0x7f
	.byte	0x12
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LVL9
	.4byte	0x2e5
	.4byte	0x22d
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LVL10
	.4byte	0x2f2
	.4byte	0x24c
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LVL11
	.4byte	0x2ff
	.4byte	0x266
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LVL19
	.4byte	0x2d9
	.4byte	0x299
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x34
	.byte	0x12
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7f
	.byte	0x12
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x7f
	.byte	0x12
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LVL20
	.4byte	0x2ff
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xc8
	.byte	0x7
	.4byte	0x2c6
	.4byte	0x2c6
	.byte	0x8
	.4byte	0x75
	.byte	0x3
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x3f
	.byte	0x14
	.4byte	.LASF23
	.4byte	.LASF23
	.byte	0x5
	.2byte	0x183
	.byte	0x8
	.byte	0x15
	.4byte	.LASF24
	.4byte	.LASF24
	.byte	0x6
	.byte	0xe
	.byte	0x5
	.byte	0x14
	.4byte	.LASF25
	.4byte	.LASF25
	.byte	0x5
	.2byte	0x154
	.byte	0x8
	.byte	0x14
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x5
	.2byte	0x168
	.byte	0x8
	.byte	0x14
	.4byte	.LASF27
	.4byte	.LASF27
	.byte	0x7
	.2byte	0x25d
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
	.byte	0x8
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
	.byte	0x16
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
	.byte	0xd
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x12
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
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
	.byte	0x15
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
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18
	.4byte	.LFE106
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3-1
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL18
	.4byte	.LFE106
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL3-1
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL18
	.4byte	.LFE106
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL3-1
	.4byte	.LVL4
	.2byte	0x3
	.byte	0x91
	.byte	0xf8,0x7e
	.4byte	.LVL4
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL18
	.4byte	.LFE106
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL3-1
	.4byte	.LVL4
	.2byte	0x3
	.byte	0x91
	.byte	0xfc,0x7e
	.4byte	.LVL4
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL18
	.4byte	.LFE106
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL1
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LFE106
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL0
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL3-1
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL13
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x60
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL18
	.4byte	.LFE106
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL9
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL18
	.4byte	.LFE106
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL7
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL18
	.4byte	.LFE106
	.2byte	0x1
	.byte	0x62
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
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB106
	.4byte	.LFE106
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF28:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF9:
	.string	"__uint8_t"
.LASF31:
	.string	"hmac_sha256_kdf"
.LASF25:
	.string	"os_memcpy"
.LASF22:
	.string	"clen"
.LASF4:
	.string	"long int"
.LASF20:
	.string	"iter"
.LASF3:
	.string	"short unsigned int"
.LASF24:
	.string	"hmac_sha256_vector"
.LASF8:
	.string	"unsigned int"
.LASF0:
	.string	"signed char"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"long unsigned int"
.LASF21:
	.string	"addr"
.LASF11:
	.string	"size_t"
.LASF30:
	.string	"C:\\\\Users\\\\cwier\\\\Documents\\\\GitHub\\\\qcom\\\\examples\\\\solutions\\\\rtsp_softap_cam\\\\build\\\\build_out\\\\components\\\\wireless\\\\wifi6\\\\qcc74x_wpa_supplicant"
.LASF12:
	.string	"char"
.LASF10:
	.string	"uint8_t"
.LASF7:
	.string	"long long unsigned int"
.LASF6:
	.string	"long long int"
.LASF26:
	.string	"os_memset"
.LASF27:
	.string	"forced_memzero"
.LASF2:
	.string	"short int"
.LASF18:
	.string	"seed_len"
.LASF17:
	.string	"seed"
.LASF14:
	.string	"secret"
.LASF23:
	.string	"os_strlen"
.LASF15:
	.string	"secret_len"
.LASF16:
	.string	"label"
.LASF19:
	.string	"outlen"
.LASF13:
	.string	"_Bool"
.LASF29:
	.string	".\\components\\wireless\\wifi6\\qcc74x_wpa_supplicant\\src\\crypto\\sha256-kdf.c"
	.ident	"GCC: (GNU) 10.4.0"
