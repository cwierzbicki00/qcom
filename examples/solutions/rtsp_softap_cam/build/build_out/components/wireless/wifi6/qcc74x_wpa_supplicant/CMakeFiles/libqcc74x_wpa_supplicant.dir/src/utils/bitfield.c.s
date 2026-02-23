	.file	"bitfield.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.bitfield_alloc,"ax",@progbits
	.align	1
	.globl	bitfield_alloc
	.type	bitfield_alloc, @function
bitfield_alloc:
.LFB106:
	.file 1 ".\\components\\wireless\\wifi6\\qcc74x_wpa_supplicant\\src\\utils\\bitfield.c"
	.loc 1 22 1
	.cfi_startproc
.LVL0:
	.loc 1 23 2
	.loc 1 25 2
	.loc 1 22 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	mv	s0,a0
	.loc 1 25 41
	addi	a0,a0,7
.LVL1:
	.loc 1 25 46
	srli	a0,a0,3
	.loc 1 25 7
	addi	a0,a0,8
	.loc 1 22 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 25 7
	call	os_zalloc
.LVL2:
	.loc 1 26 2 is_stmt 1
	.loc 1 26 5 is_stmt 0
	beq	a0,zero,.L1
	.loc 1 28 2 is_stmt 1
	.loc 1 28 24 is_stmt 0
	addi	a5,a0,8
	.loc 1 28 11
	sw	a5,0(a0)
	.loc 1 29 2 is_stmt 1
	.loc 1 29 15 is_stmt 0
	sw	s0,4(a0)
	.loc 1 30 2 is_stmt 1
.L1:
	.loc 1 31 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL3:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE106:
	.size	bitfield_alloc, .-bitfield_alloc
	.section	.text.bitfield_free,"ax",@progbits
	.align	1
	.globl	bitfield_free
	.type	bitfield_free, @function
bitfield_free:
.LFB107:
	.loc 1 35 1 is_stmt 1
	.cfi_startproc
.LVL4:
	.loc 1 36 2
	tail	os_free
.LVL5:
	.cfi_endproc
.LFE107:
	.size	bitfield_free, .-bitfield_free
	.section	.text.bitfield_set,"ax",@progbits
	.align	1
	.globl	bitfield_set
	.type	bitfield_set, @function
bitfield_set:
.LFB108:
	.loc 1 41 1
	.cfi_startproc
.LVL6:
	.loc 1 42 2
	.loc 1 42 5 is_stmt 0
	lw	a5,4(a0)
	bleu	a5,a1,.L8
	.loc 1 44 2 is_stmt 1
	.loc 1 44 20 is_stmt 0
	lw	a3,0(a0)
	.loc 1 44 15
	srli	a4,a1,3
	.loc 1 44 35
	andi	a5,a1,7
	.loc 1 44 27
	li	a1,1
.LVL7:
	sll	a1,a1,a5
	.loc 1 44 20
	lrbu	a5,a3,a4,0
	or	a1,a1,a5
	srb	a1,a3,a4,0
.L8:
	.loc 1 45 1
	ret
	.cfi_endproc
.LFE108:
	.size	bitfield_set, .-bitfield_set
	.section	.text.bitfield_clear,"ax",@progbits
	.align	1
	.globl	bitfield_clear
	.type	bitfield_clear, @function
bitfield_clear:
.LFB109:
	.loc 1 49 1 is_stmt 1
	.cfi_startproc
.LVL8:
	.loc 1 50 2
	.loc 1 50 5 is_stmt 0
	lw	a5,4(a0)
	bleu	a5,a1,.L10
	.loc 1 52 2 is_stmt 1
	.loc 1 52 20 is_stmt 0
	lw	a3,0(a0)
	.loc 1 52 15
	srli	a4,a1,3
	.loc 1 52 28
	li	a5,1
	.loc 1 52 20
	lrbu	a2,a3,a4,0
	.loc 1 52 36
	andi	a1,a1,7
.LVL9:
	.loc 1 52 28
	sll	a5,a5,a1
	.loc 1 52 20
	not	a5,a5
	and	a5,a5,a2
	srb	a5,a3,a4,0
.L10:
	.loc 1 53 1
	ret
	.cfi_endproc
.LFE109:
	.size	bitfield_clear, .-bitfield_clear
	.section	.text.bitfield_is_set,"ax",@progbits
	.align	1
	.globl	bitfield_is_set
	.type	bitfield_is_set, @function
bitfield_is_set:
.LFB110:
	.loc 1 57 1 is_stmt 1
	.cfi_startproc
.LVL10:
	.loc 1 58 2
	.loc 1 58 5 is_stmt 0
	lw	a5,4(a0)
	bleu	a5,a1,.L14
	.loc 1 60 2 is_stmt 1
	.loc 1 60 20 is_stmt 0
	lw	a4,0(a0)
	.loc 1 60 25
	srli	a5,a1,3
	.loc 1 60 44
	andi	a1,a1,7
.LVL11:
	.loc 1 60 20
	lrbu	a0,a4,a5,0
.LVL12:
	.loc 1 60 9
	srl	a0,a0,a1
	andi	a0,a0,1
	ret
.LVL13:
.L14:
	.loc 1 59 10
	li	a0,0
.LVL14:
	.loc 1 61 1
	ret
	.cfi_endproc
.LFE110:
	.size	bitfield_is_set, .-bitfield_is_set
	.section	.text.bitfield_get_first_zero,"ax",@progbits
	.align	1
	.globl	bitfield_get_first_zero
	.type	bitfield_get_first_zero, @function
bitfield_get_first_zero:
.LFB112:
	.loc 1 77 1 is_stmt 1
	.cfi_startproc
.LVL15:
	.loc 1 78 2
	.loc 1 79 2
	.loc 1 79 21 is_stmt 0
	lw	a3,4(a0)
	.loc 1 79 9
	li	a5,0
	.loc 1 80 6
	li	a1,255
	.loc 1 79 32
	addi	a4,a3,7
	.loc 1 79 37
	srli	a4,a4,3
.LVL16:
.L16:
	.loc 1 79 14 is_stmt 1 discriminator 1
	.loc 1 79 2 is_stmt 0 discriminator 1
	bne	a4,a5,.L19
	.loc 1 84 10
	li	a0,-1
.LVL17:
	ret
.LVL18:
.L19:
	.loc 1 80 3 is_stmt 1
	.loc 1 80 15 is_stmt 0
	lw	a2,0(a0)
	lrbu	a2,a2,a5,0
	.loc 1 80 6
	beq	a2,a1,.L17
	.loc 1 85 2 is_stmt 1
	.loc 1 85 8 is_stmt 0
	slli	a4,a5,3
.LVL19:
.LBB4:
.LBB5:
	.loc 1 66 2 is_stmt 1
	.loc 1 67 2
	.loc 1 67 14
	.loc 1 67 2 is_stmt 0
	li	a1,8
	.loc 1 67 9
	li	a5,0
.LVL20:
.L18:
	.loc 1 68 3 is_stmt 1
	.loc 1 68 6 is_stmt 0
	andi	a0,a2,1
	beq	a0,zero,.L21
	.loc 1 70 3 is_stmt 1
	.loc 1 67 22 is_stmt 0
	addi	a5,a5,1
.LVL21:
	.loc 1 70 7
	srli	a2,a2,1
.LVL22:
	.loc 1 67 21 is_stmt 1
	.loc 1 67 14
	.loc 1 67 2 is_stmt 0
	bne	a5,a1,.L18
	.loc 1 72 9
	li	a5,-1
.LVL23:
.L21:
.LBE5:
.LBE4:
	.loc 1 85 4
	add	a5,a5,a4
.LVL24:
	.loc 1 86 2 is_stmt 1
	.loc 1 88 9 is_stmt 0
	sgtu	a3,a3,a5
	.loc 1 84 10
	li	a0,-1
	.loc 1 88 9
	mvnez	a0, a5, a3
	.loc 1 89 1
	ret
.LVL25:
.L17:
	.loc 1 79 42 is_stmt 1 discriminator 2
	.loc 1 79 43 is_stmt 0 discriminator 2
	addi	a5,a5,1
.LVL26:
	j	.L16
	.cfi_endproc
.LFE112:
	.size	bitfield_get_first_zero, .-bitfield_get_first_zero
	.text
.Letext0:
	.file 2 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\machine\\_default_types.h"
	.file 3 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\sys\\_stdint.h"
	.file 4 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\lib\\gcc\\riscv64-unknown-elf\\10.4.0\\include\\stddef.h"
	.file 5 ".\\components\\wireless\\wifi6\\qcc74x_wpa_supplicant\\src\\utils\\os.h"
	.file 6 ".\\components\\wireless\\wifi6\\qcc74x_wpa_supplicant\\src\\utils\\common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x29b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF24
	.byte	0xc
	.4byte	.LASF25
	.4byte	.LASF26
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
	.byte	0x4
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
	.4byte	0x70
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF13
	.byte	0x5
	.string	"u8"
	.byte	0x6
	.byte	0x95
	.byte	0x11
	.4byte	0x77
	.byte	0x6
	.byte	0x4
	.4byte	0x9d
	.byte	0x7
	.4byte	.LASF27
	.byte	0x8
	.byte	0x1
	.byte	0xf
	.byte	0x8
	.4byte	0xd6
	.byte	0x8
	.4byte	.LASF14
	.byte	0x1
	.byte	0x10
	.byte	0x6
	.4byte	0xa8
	.byte	0
	.byte	0x8
	.4byte	.LASF15
	.byte	0x1
	.byte	0x11
	.byte	0x9
	.4byte	0x83
	.byte	0x4
	.byte	0
	.byte	0x9
	.4byte	.LASF16
	.byte	0x1
	.byte	0x4c
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.byte	0x1
	.byte	0x9c
	.4byte	0x131
	.byte	0xa
	.string	"bf"
	.byte	0x1
	.byte	0x4c
	.byte	0x2e
	.4byte	0x131
	.4byte	.LLST6
	.byte	0xb
	.string	"i"
	.byte	0x1
	.byte	0x4e
	.byte	0x9
	.4byte	0x83
	.4byte	.LLST7
	.byte	0xc
	.4byte	0x137
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0x55
	.byte	0xe
	.byte	0xd
	.4byte	0x148
	.4byte	.LLST8
	.byte	0xe
	.4byte	0x154
	.4byte	.LLST9
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xae
	.byte	0xf
	.4byte	.LASF28
	.byte	0x1
	.byte	0x40
	.byte	0xc
	.4byte	0x69
	.byte	0x1
	.4byte	0x15f
	.byte	0x10
	.string	"val"
	.byte	0x1
	.byte	0x40
	.byte	0x1a
	.4byte	0x9d
	.byte	0x11
	.string	"i"
	.byte	0x1
	.byte	0x42
	.byte	0x6
	.4byte	0x69
	.byte	0
	.byte	0x9
	.4byte	.LASF17
	.byte	0x1
	.byte	0x38
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.byte	0x1
	.byte	0x9c
	.4byte	0x199
	.byte	0xa
	.string	"bf"
	.byte	0x1
	.byte	0x38
	.byte	0x26
	.4byte	0x131
	.4byte	.LLST4
	.byte	0xa
	.string	"bit"
	.byte	0x1
	.byte	0x38
	.byte	0x31
	.4byte	0x83
	.4byte	.LLST5
	.byte	0
	.byte	0x12
	.4byte	.LASF18
	.byte	0x1
	.byte	0x30
	.byte	0x6
	.4byte	.LFB109
	.4byte	.LFE109-.LFB109
	.byte	0x1
	.byte	0x9c
	.4byte	0x1cd
	.byte	0x13
	.string	"bf"
	.byte	0x1
	.byte	0x30
	.byte	0x26
	.4byte	0x131
	.byte	0x1
	.byte	0x5a
	.byte	0xa
	.string	"bit"
	.byte	0x1
	.byte	0x30
	.byte	0x31
	.4byte	0x83
	.4byte	.LLST3
	.byte	0
	.byte	0x12
	.4byte	.LASF19
	.byte	0x1
	.byte	0x28
	.byte	0x6
	.4byte	.LFB108
	.4byte	.LFE108-.LFB108
	.byte	0x1
	.byte	0x9c
	.4byte	0x201
	.byte	0x13
	.string	"bf"
	.byte	0x1
	.byte	0x28
	.byte	0x24
	.4byte	0x131
	.byte	0x1
	.byte	0x5a
	.byte	0xa
	.string	"bit"
	.byte	0x1
	.byte	0x28
	.byte	0x2f
	.4byte	0x83
	.4byte	.LLST2
	.byte	0
	.byte	0x12
	.4byte	.LASF20
	.byte	0x1
	.byte	0x22
	.byte	0x6
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.byte	0x1
	.byte	0x9c
	.4byte	0x238
	.byte	0xa
	.string	"bf"
	.byte	0x1
	.byte	0x22
	.byte	0x25
	.4byte	0x131
	.4byte	.LLST1
	.byte	0x14
	.4byte	.LVL5
	.4byte	0x284
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x9
	.4byte	.LASF21
	.byte	0x1
	.byte	0x15
	.byte	0x13
	.4byte	0x131
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
	.byte	0x1
	.byte	0x9c
	.4byte	0x284
	.byte	0x16
	.4byte	.LASF15
	.byte	0x1
	.byte	0x15
	.byte	0x29
	.4byte	0x83
	.4byte	.LLST0
	.byte	0x17
	.string	"bf"
	.byte	0x1
	.byte	0x17
	.byte	0x13
	.4byte	0x131
	.byte	0x1
	.byte	0x5a
	.byte	0x18
	.4byte	.LVL2
	.4byte	0x291
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x6
	.byte	0x78
	.byte	0x7
	.byte	0x33
	.byte	0x25
	.byte	0x23
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LASF22
	.4byte	.LASF22
	.byte	0x5
	.2byte	0x148
	.byte	0x6
	.byte	0x19
	.4byte	.LASF23
	.4byte	.LASF23
	.byte	0x5
	.2byte	0x107
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
	.byte	0xb
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0xa
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
	.byte	0xb
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
	.byte	0xc
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
	.byte	0xd
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0x49
	.byte	0x13
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x18
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST6:
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LFE112
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL24
	.4byte	.LFE112
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL19
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x3
	.byte	0x7f
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LFE110
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LFE110
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL9
	.4byte	.LFE109
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL7
	.4byte	.LFE108
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5-1
	.4byte	.LFE107
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
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL3
	.4byte	.LFE106
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x44
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.4byte	.LFB108
	.4byte	.LFE108-.LFB108
	.4byte	.LFB109
	.4byte	.LFE109-.LFB109
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB106
	.4byte	.LFE106
	.4byte	.LFB107
	.4byte	.LFE107
	.4byte	.LFB108
	.4byte	.LFE108
	.4byte	.LFB109
	.4byte	.LFE109
	.4byte	.LFB110
	.4byte	.LFE110
	.4byte	.LFB112
	.4byte	.LFE112
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF24:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF9:
	.string	"__uint8_t"
.LASF11:
	.string	"size_t"
.LASF21:
	.string	"bitfield_alloc"
.LASF16:
	.string	"bitfield_get_first_zero"
.LASF4:
	.string	"long int"
.LASF28:
	.string	"first_zero"
.LASF7:
	.string	"long long unsigned int"
.LASF25:
	.string	".\\components\\wireless\\wifi6\\qcc74x_wpa_supplicant\\src\\utils\\bitfield.c"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF23:
	.string	"os_zalloc"
.LASF19:
	.string	"bitfield_set"
.LASF17:
	.string	"bitfield_is_set"
.LASF26:
	.string	"C:\\\\Users\\\\cwier\\\\Documents\\\\GitHub\\\\qcom\\\\examples\\\\solutions\\\\rtsp_softap_cam\\\\build\\\\build_out\\\\components\\\\wireless\\\\wifi6\\\\qcc74x_wpa_supplicant"
.LASF8:
	.string	"unsigned int"
.LASF12:
	.string	"char"
.LASF10:
	.string	"uint8_t"
.LASF22:
	.string	"os_free"
.LASF6:
	.string	"long long int"
.LASF20:
	.string	"bitfield_free"
.LASF14:
	.string	"bits"
.LASF2:
	.string	"short int"
.LASF18:
	.string	"bitfield_clear"
.LASF27:
	.string	"bitfield"
.LASF15:
	.string	"max_bits"
.LASF0:
	.string	"signed char"
.LASF13:
	.string	"_Bool"
	.ident	"GCC: (GNU) 10.4.0"
