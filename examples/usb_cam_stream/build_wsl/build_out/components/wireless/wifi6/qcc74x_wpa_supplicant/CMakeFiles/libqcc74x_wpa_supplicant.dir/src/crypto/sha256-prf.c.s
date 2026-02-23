	.file	"sha256-prf.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.sha256_prf_bits,"ax",@progbits
	.align	1
	.globl	sha256_prf_bits
	.type	sha256_prf_bits, @function
sha256_prf_bits:
.LFB107:
	.file 1 "./components/wireless/wifi6/qcc74x_wpa_supplicant/src/crypto/sha256-prf.c"
	.loc 1 57 1
	.cfi_startproc
.LVL0:
	.loc 1 58 2
	.loc 1 59 2
	.loc 1 60 2
	.loc 1 61 2
	.loc 1 62 2
	.loc 1 63 2
	.loc 1 64 2
	.loc 1 57 1 is_stmt 0
	addi	sp,sp,-144
	.cfi_def_cfa_offset 144
	sw	s0,136(sp)
	sw	s4,120(sp)
	.cfi_offset 8, -8
	.cfi_offset 20, -24
	.loc 1 67 9
	li	s0,2
	.loc 1 57 1
	sw	s5,116(sp)
	mv	s4,a5
	.cfi_offset 21, -28
	mv	s5,a0
	.loc 1 66 10
	addi	a5,sp,24
.LVL1:
	.loc 1 69 11
	mv	a0,a2
.LVL2:
	.loc 1 57 1
	sw	s1,132(sp)
	sw	s2,128(sp)
	sw	s3,124(sp)
	sw	s6,112(sp)
	sw	a1,12(sp)
	sw	a3,8(sp)
	sw	a4,4(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 22, -32
	mv	s1,a6
	.loc 1 64 33
	addi	s2,a6,7
	.loc 1 66 10
	sw	a5,32(sp)
	.loc 1 67 9
	sw	s0,48(sp)
	.loc 1 57 1
	sw	ra,140(sp)
	sw	s7,108(sp)
	.cfi_offset 1, -4
	.cfi_offset 23, -36
	.loc 1 68 10
	sw	a2,36(sp)
	.loc 1 69 11
	call	os_strlen
.LVL3:
	.loc 1 70 10
	lw	a3,8(sp)
	.loc 1 71 9
	lw	a4,4(sp)
	.loc 1 77 8
	lw	a1,12(sp)
	.loc 1 64 9
	srli	s2,s2,3
.LVL4:
	.loc 1 66 2 is_stmt 1
	.loc 1 67 2
	.loc 1 68 2
	.loc 1 69 2
	.loc 1 72 10 is_stmt 0
	addi	a5,sp,28
	.loc 1 73 9
	sw	s0,60(sp)
	.loc 1 69 9
	sw	a0,52(sp)
	.loc 1 70 2 is_stmt 1
	.loc 1 70 10 is_stmt 0
	sw	a3,40(sp)
	.loc 1 71 2 is_stmt 1
	.loc 1 71 9 is_stmt 0
	sw	a4,56(sp)
	.loc 1 72 2 is_stmt 1
	.loc 1 72 10 is_stmt 0
	sw	a5,44(sp)
	.loc 1 73 2 is_stmt 1
	.loc 1 75 2
.LVL5:
.LBB7:
.LBB8:
	.file 2 "./components/wireless/wifi6/qcc74x_wpa_supplicant/src/utils/common.h"
	.loc 2 259 2
	.loc 2 260 2
	.loc 2 260 7 is_stmt 0
	sh	s1,28(sp)
.LVL6:
.LBE8:
.LBE7:
	.loc 1 76 2 is_stmt 1
	.loc 1 77 2
	andi	s6,s2,-32
	.loc 1 76 6 is_stmt 0
	li	s0,0
	.loc 1 58 6
	li	s3,1
.LVL7:
.L2:
	.loc 1 77 8 is_stmt 1
	bgeu	s0,s2,.L7
	.loc 1 78 3
.LBB9:
.LBB10:
	.loc 2 260 7 is_stmt 0
	sh	s3,24(sp)
	sub	s7,s2,s0
.LVL8:
.LBE10:
.LBE9:
	.loc 1 79 3 is_stmt 1
.LBB12:
.LBB11:
	.loc 2 259 2
	.loc 2 260 2
.LBE11:
.LBE12:
	.loc 1 80 3
	.loc 1 80 6 is_stmt 0
	beq	s0,s6,.L3
	.loc 1 81 4 is_stmt 1
	.loc 1 81 8 is_stmt 0
	add	a5,s4,s0
	addi	a4,sp,48
	addi	a3,sp,32
	li	a2,4
	mv	a0,s5
	sw	a1,4(sp)
	call	hmac_sha256_vector
.LVL9:
	.loc 1 81 7
	lw	a1,4(sp)
	bge	a0,zero,.L4
.L6:
	.loc 1 83 12
	li	a0,-1
.LVL10:
.L1:
	.loc 1 108 1
	lw	ra,140(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,136(sp)
	.cfi_restore 8
	lw	s1,132(sp)
	.cfi_restore 9
	lw	s2,128(sp)
	.cfi_restore 18
.LVL11:
	lw	s3,124(sp)
	.cfi_restore 19
.LVL12:
	lw	s4,120(sp)
	.cfi_restore 20
.LVL13:
	lw	s5,116(sp)
	.cfi_restore 21
.LVL14:
	lw	s6,112(sp)
	.cfi_restore 22
	lw	s7,108(sp)
	.cfi_restore 23
	addi	sp,sp,144
	.cfi_def_cfa_offset 0
.LVL15:
	jr	ra
.LVL16:
.L4:
	.cfi_restore_state
	.loc 1 84 4 is_stmt 1
	.loc 1 93 10 is_stmt 0
	addi	s3,s3,1
.LVL17:
	.loc 1 84 8
	addi	s0,s0,32
.LVL18:
	.loc 1 93 3 is_stmt 1
	.loc 1 93 10 is_stmt 0
	extu	s3,s3,15,0
.LVL19:
	j	.L2
.L3:
	.loc 1 86 4 is_stmt 1
	.loc 1 86 8 is_stmt 0
	addi	a5,sp,64
	addi	a4,sp,48
	addi	a3,sp,32
	li	a2,4
	mv	a0,s5
	call	hmac_sha256_vector
.LVL20:
	.loc 1 86 7
	blt	a0,zero,.L6
	.loc 1 89 4 is_stmt 1
	add	a0,s4,s0
	mv	a2,s7
	addi	a1,sp,64
	call	os_memcpy
.LVL21:
	.loc 1 90 4
	.loc 1 91 4
	mv	s0,s2
.LVL22:
.L7:
	.loc 1 100 2
	.loc 1 100 19 is_stmt 0
	andi	s1,s1,7
.LVL23:
	.loc 1 100 5
	beq	s1,zero,.L9
.LBB13:
	.loc 1 101 3 is_stmt 1
.LVL24:
	.loc 1 102 3
	.loc 1 101 24 is_stmt 0
	li	a5,8
	sub	a5,a5,s1
	.loc 1 102 16
	addi	s0,s0,-1
.LVL25:
	.loc 1 101 18
	li	s1,255
.LVL26:
	sll	s1,s1,a5
	.loc 1 102 16
	lrbu	a5,s4,s0,0
	and	s1,s1,a5
	srb	s1,s4,s0,0
.LVL27:
.L9:
.LBE13:
	.loc 1 105 2 is_stmt 1
	addi	a0,sp,64
	li	a1,32
	call	forced_memzero
.LVL28:
	.loc 1 107 2
	.loc 1 107 9 is_stmt 0
	li	a0,0
	j	.L1
	.cfi_endproc
.LFE107:
	.size	sha256_prf_bits, .-sha256_prf_bits
	.section	.text.sha256_prf,"ax",@progbits
	.align	1
	.globl	sha256_prf
	.type	sha256_prf, @function
sha256_prf:
.LFB106:
	.loc 1 32 1 is_stmt 1
	.cfi_startproc
.LVL29:
	.loc 1 33 2
	.loc 1 33 9 is_stmt 0
	slli	a6,a6,3
.LVL30:
	tail	sha256_prf_bits
.LVL31:
	.cfi_endproc
.LFE106:
	.size	sha256_prf, .-sha256_prf
	.text
.Letext0:
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 4 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 5 "./toolchain/linux_x86_64/lib/gcc/riscv64-unknown-elf/10.4.0/include/stddef.h"
	.file 6 "./components/wireless/wifi6/qcc74x_wpa_supplicant/src/utils/os.h"
	.file 7 "./components/wireless/wifi6/qcc74x_wpa_supplicant/src/crypto/sha256.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x47c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF35
	.byte	0xc
	.4byte	.LASF36
	.4byte	.LASF37
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF3
	.byte	0x3
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
	.byte	0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x39
	.byte	0x1c
	.4byte	0x52
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x24
	.byte	0x14
	.4byte	0x46
	.byte	0x3
	.4byte	.LASF13
	.byte	0x5
	.byte	0xd1
	.byte	0x16
	.4byte	0x7c
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0x5
	.4byte	0xa7
	.byte	0x6
	.byte	0x4
	.4byte	0xae
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF15
	.byte	0x7
	.4byte	0x9b
	.4byte	0xd0
	.byte	0x8
	.4byte	0x7c
	.byte	0x3
	.byte	0
	.byte	0x9
	.string	"u16"
	.byte	0x2
	.byte	0x94
	.byte	0x12
	.4byte	0x8f
	.byte	0x9
	.string	"u8"
	.byte	0x2
	.byte	0x95
	.byte	0x11
	.4byte	0x83
	.byte	0x5
	.4byte	0xdc
	.byte	0x7
	.4byte	0xdc
	.4byte	0xfc
	.byte	0x8
	.4byte	0x7c
	.byte	0x1f
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xdc
	.byte	0xa
	.4byte	.LASF29
	.byte	0x1
	.byte	0x36
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.byte	0x1
	.byte	0x9c
	.4byte	0x337
	.byte	0xb
	.string	"key"
	.byte	0x1
	.byte	0x36
	.byte	0x1f
	.4byte	0x337
	.4byte	.LLST0
	.byte	0xc
	.4byte	.LASF16
	.byte	0x1
	.byte	0x36
	.byte	0x2b
	.4byte	0x9b
	.4byte	.LLST1
	.byte	0xc
	.4byte	.LASF17
	.byte	0x1
	.byte	0x36
	.byte	0x40
	.4byte	0xb3
	.4byte	.LLST2
	.byte	0xc
	.4byte	.LASF18
	.byte	0x1
	.byte	0x37
	.byte	0x11
	.4byte	0x337
	.4byte	.LLST3
	.byte	0xc
	.4byte	.LASF19
	.byte	0x1
	.byte	0x37
	.byte	0x1e
	.4byte	0x9b
	.4byte	.LLST4
	.byte	0xb
	.string	"buf"
	.byte	0x1
	.byte	0x37
	.byte	0x2c
	.4byte	0xfc
	.4byte	.LLST5
	.byte	0xc
	.4byte	.LASF20
	.byte	0x1
	.byte	0x38
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST6
	.byte	0xd
	.4byte	.LASF21
	.byte	0x1
	.byte	0x3a
	.byte	0x6
	.4byte	0xd0
	.4byte	.LLST7
	.byte	0xe
	.string	"pos"
	.byte	0x1
	.byte	0x3b
	.byte	0x9
	.4byte	0x9b
	.4byte	.LLST8
	.byte	0xd
	.4byte	.LASF22
	.byte	0x1
	.byte	0x3b
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST9
	.byte	0xf
	.4byte	.LASF23
	.byte	0x1
	.byte	0x3c
	.byte	0x5
	.4byte	0xec
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0xf
	.4byte	.LASF24
	.byte	0x1
	.byte	0x3d
	.byte	0xc
	.4byte	0x33d
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7f
	.byte	0x10
	.string	"len"
	.byte	0x1
	.byte	0x3e
	.byte	0x9
	.4byte	0xc0
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x7f
	.byte	0xf
	.4byte	.LASF25
	.byte	0x1
	.byte	0x3f
	.byte	0x5
	.4byte	0x34d
	.byte	0x3
	.byte	0x91
	.byte	0x88,0x7f
	.byte	0xf
	.4byte	.LASF26
	.byte	0x1
	.byte	0x3f
	.byte	0x14
	.4byte	0x34d
	.byte	0x3
	.byte	0x91
	.byte	0x8c,0x7f
	.byte	0xd
	.4byte	.LASF27
	.byte	0x1
	.byte	0x40
	.byte	0x9
	.4byte	0x9b
	.4byte	.LLST10
	.byte	0x11
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.4byte	0x23a
	.byte	0xd
	.4byte	.LASF28
	.byte	0x1
	.byte	0x65
	.byte	0x6
	.4byte	0xdc
	.4byte	.LLST13
	.byte	0
	.byte	0x12
	.4byte	0x425
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.byte	0x1
	.byte	0x4b
	.byte	0x2
	.4byte	0x261
	.byte	0x13
	.4byte	0x43e
	.4byte	.LLST11
	.byte	0x13
	.4byte	0x433
	.4byte	.LLST12
	.byte	0
	.byte	0x14
	.4byte	0x425
	.4byte	.LBB9
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x4f
	.byte	0x3
	.4byte	0x280
	.byte	0x15
	.4byte	0x43e
	.byte	0x15
	.4byte	0x433
	.byte	0
	.byte	0x16
	.4byte	.LVL3
	.4byte	0x44c
	.4byte	0x295
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0x16
	.4byte	.LVL9
	.4byte	0x459
	.4byte	0x2cd
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x4
	.byte	0x91
	.byte	0xf4,0x7e
	.byte	0x6
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x34
	.byte	0x17
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7f
	.byte	0x17
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x7f
	.byte	0x17
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.byte	0x84
	.byte	0
	.byte	0x78
	.byte	0
	.byte	0x22
	.byte	0
	.byte	0x16
	.4byte	.LVL20
	.4byte	0x459
	.4byte	0x2fb
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x34
	.byte	0x17
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7f
	.byte	0x17
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x7f
	.byte	0x17
	.byte	0x1
	.byte	0x5f
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0
	.byte	0x16
	.4byte	.LVL21
	.4byte	0x465
	.4byte	0x31f
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x84
	.byte	0
	.byte	0x78
	.byte	0
	.byte	0x22
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL28
	.4byte	0x472
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xe7
	.byte	0x7
	.4byte	0x337
	.4byte	0x34d
	.byte	0x8
	.4byte	0x7c
	.byte	0x3
	.byte	0
	.byte	0x7
	.4byte	0xdc
	.4byte	0x35d
	.byte	0x8
	.4byte	0x7c
	.byte	0x1
	.byte	0
	.byte	0xa
	.4byte	.LASF30
	.byte	0x1
	.byte	0x1e
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
	.byte	0x1
	.byte	0x9c
	.4byte	0x425
	.byte	0xb
	.string	"key"
	.byte	0x1
	.byte	0x1e
	.byte	0x1a
	.4byte	0x337
	.4byte	.LLST14
	.byte	0xc
	.4byte	.LASF16
	.byte	0x1
	.byte	0x1e
	.byte	0x26
	.4byte	0x9b
	.4byte	.LLST15
	.byte	0xc
	.4byte	.LASF17
	.byte	0x1
	.byte	0x1e
	.byte	0x3b
	.4byte	0xb3
	.4byte	.LLST16
	.byte	0xc
	.4byte	.LASF18
	.byte	0x1
	.byte	0x1f
	.byte	0xd
	.4byte	0x337
	.4byte	.LLST17
	.byte	0xc
	.4byte	.LASF19
	.byte	0x1
	.byte	0x1f
	.byte	0x1a
	.4byte	0x9b
	.4byte	.LLST18
	.byte	0xb
	.string	"buf"
	.byte	0x1
	.byte	0x1f
	.byte	0x28
	.4byte	0xfc
	.4byte	.LLST19
	.byte	0xc
	.4byte	.LASF27
	.byte	0x1
	.byte	0x1f
	.byte	0x34
	.4byte	0x9b
	.4byte	.LLST20
	.byte	0x19
	.4byte	.LVL31
	.4byte	0x102
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x17
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x17
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x17
	.byte	0x1
	.byte	0x5f
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x17
	.byte	0x1
	.byte	0x60
	.byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x60
	.byte	0x33
	.byte	0x24
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LASF38
	.byte	0x2
	.2byte	0x101
	.byte	0x14
	.byte	0x3
	.4byte	0x44c
	.byte	0x1b
	.string	"a"
	.byte	0x2
	.2byte	0x101
	.byte	0x25
	.4byte	0xfc
	.byte	0x1b
	.string	"val"
	.byte	0x2
	.2byte	0x101
	.byte	0x2c
	.4byte	0xd0
	.byte	0
	.byte	0x1c
	.4byte	.LASF31
	.4byte	.LASF31
	.byte	0x6
	.2byte	0x183
	.byte	0x8
	.byte	0x1d
	.4byte	.LASF32
	.4byte	.LASF32
	.byte	0x7
	.byte	0xe
	.byte	0x5
	.byte	0x1c
	.4byte	.LASF33
	.4byte	.LASF33
	.byte	0x6
	.2byte	0x154
	.byte	0x8
	.byte	0x1c
	.4byte	.LASF34
	.4byte	.LASF34
	.byte	0x2
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x1d
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x52
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x58
	.byte	0xb
	.byte	0x59
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
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
	.byte	0x17
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x1a
	.byte	0x2e
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
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
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LFE107
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
	.4byte	.LVL15
	.2byte	0x3
	.byte	0x91
	.byte	0xfc,0x7e
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x3
	.byte	0x72
	.byte	0xfc,0x7e
	.4byte	.LVL16
	.4byte	.LFE107
	.2byte	0x3
	.byte	0x91
	.byte	0xfc,0x7e
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL3-1
	.4byte	.LFE107
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
	.4byte	.LVL15
	.2byte	0x3
	.byte	0x91
	.byte	0xf8,0x7e
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x3
	.byte	0x72
	.byte	0xf8,0x7e
	.4byte	.LVL16
	.4byte	.LFE107
	.2byte	0x3
	.byte	0x91
	.byte	0xf8,0x7e
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL3-1
	.4byte	.LVL7
	.2byte	0x3
	.byte	0x91
	.byte	0xf4,0x7e
	.4byte	.LVL7
	.4byte	.LFE107
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
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL13
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LFE107
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
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL10
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x60
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL23
	.4byte	.LFE107
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x60
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL0
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL19
	.4byte	.LFE107
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL16
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x3
	.byte	0x78
	.byte	0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL16
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL4
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL11
	.4byte	.LVL16
	.2byte	0x8
	.byte	0xf3
	.byte	0x1
	.byte	0x60
	.byte	0x23
	.byte	0x7
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LFE107
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x8
	.byte	0x9
	.byte	0xff
	.byte	0x38
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0xb
	.byte	0x9
	.byte	0xff
	.byte	0x38
	.byte	0xf3
	.byte	0x1
	.byte	0x60
	.byte	0x37
	.byte	0x1a
	.byte	0x1c
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL29
	.4byte	.LVL31-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL31-1
	.4byte	.LFE106
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL29
	.4byte	.LVL31-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL31-1
	.4byte	.LFE106
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL29
	.4byte	.LVL31-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL31-1
	.4byte	.LFE106
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL29
	.4byte	.LVL31-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL31-1
	.4byte	.LFE106
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL29
	.4byte	.LVL31-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL31-1
	.4byte	.LFE106
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL29
	.4byte	.LVL31-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL31-1
	.4byte	.LFE106
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL30
	.4byte	.LFE106
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x60
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
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	0
	.4byte	0
	.4byte	.LFB107
	.4byte	.LFE107
	.4byte	.LFB106
	.4byte	.LFE106
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF35:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF3:
	.string	"__uint8_t"
.LASF13:
	.string	"size_t"
.LASF33:
	.string	"os_memcpy"
.LASF22:
	.string	"plen"
.LASF6:
	.string	"long int"
.LASF5:
	.string	"short unsigned int"
.LASF18:
	.string	"data"
.LASF29:
	.string	"sha256_prf_bits"
.LASF19:
	.string	"data_len"
.LASF21:
	.string	"counter"
.LASF36:
	.string	"./components/wireless/wifi6/qcc74x_wpa_supplicant/src/crypto/sha256-prf.c"
.LASF38:
	.string	"WPA_PUT_LE16"
.LASF1:
	.string	"unsigned char"
.LASF7:
	.string	"long unsigned int"
.LASF24:
	.string	"addr"
.LASF27:
	.string	"buf_len"
.LASF4:
	.string	"__uint16_t"
.LASF25:
	.string	"counter_le"
.LASF37:
	.string	"./examples/usb_cam_stream/build_wsl/build_out/components/wireless/wifi6/qcc74x_wpa_supplicant"
.LASF10:
	.string	"unsigned int"
.LASF14:
	.string	"char"
.LASF11:
	.string	"uint8_t"
.LASF23:
	.string	"hash"
.LASF8:
	.string	"long long int"
.LASF28:
	.string	"mask"
.LASF34:
	.string	"forced_memzero"
.LASF26:
	.string	"length_le"
.LASF12:
	.string	"uint16_t"
.LASF32:
	.string	"hmac_sha256_vector"
.LASF16:
	.string	"key_len"
.LASF2:
	.string	"short int"
.LASF31:
	.string	"os_strlen"
.LASF0:
	.string	"signed char"
.LASF30:
	.string	"sha256_prf"
.LASF17:
	.string	"label"
.LASF15:
	.string	"_Bool"
.LASF9:
	.string	"long long unsigned int"
.LASF20:
	.string	"buf_len_bits"
	.ident	"GCC: (GNU) 10.4.0"
