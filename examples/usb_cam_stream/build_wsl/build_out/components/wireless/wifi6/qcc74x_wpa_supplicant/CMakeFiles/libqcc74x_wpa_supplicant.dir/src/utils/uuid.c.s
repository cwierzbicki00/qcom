	.file	"uuid.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.uuid_str2bin,"ax",@progbits
	.align	1
	.globl	uuid_str2bin
	.type	uuid_str2bin, @function
uuid_str2bin:
.LFB106:
	.file 1 "./components/wireless/wifi6/qcc74x_wpa_supplicant/src/utils/uuid.c"
	.loc 1 16 1
	.cfi_startproc
.LVL0:
	.loc 1 17 2
	.loc 1 18 2
	.loc 1 20 2
	.loc 1 16 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 23 6
	li	a2,4
	.loc 1 16 1
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	ra,28(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.loc 1 16 1
	mv	s0,a0
.LVL1:
	.loc 1 21 2 is_stmt 1
	.loc 1 16 1 is_stmt 0
	mv	s1,a1
.LVL2:
	.loc 1 23 2 is_stmt 1
	.loc 1 23 6 is_stmt 0
	call	hexstr2bin
.LVL3:
	.loc 1 23 5
	beq	a0,zero,.L2
.LVL4:
.L4:
	.loc 1 24 10
	li	a0,-1
.L1:
	.loc 1 47 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL5:
	lw	s1,20(sp)
	.cfi_restore 9
.LVL6:
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL7:
.L2:
	.cfi_restore_state
	.loc 1 25 2 is_stmt 1
	.loc 1 26 2
	.loc 1 28 5 is_stmt 0
	lbu	s2,8(s0)
	li	a5,45
	.loc 1 26 7
	addi	a1,s1,4
.LVL8:
	.loc 1 28 2 is_stmt 1
	.loc 1 28 10 is_stmt 0
	addi	a0,s0,9
.LVL9:
	.loc 1 28 5
	bne	s2,a5,.L4
	.loc 1 28 23 discriminator 1
	li	a2,2
	call	hexstr2bin
.LVL10:
	.loc 1 28 20 discriminator 1
	bne	a0,zero,.L4
	.loc 1 30 2 is_stmt 1
.LVL11:
	.loc 1 31 2
	.loc 1 33 5 is_stmt 0
	lbu	s3,13(s0)
	.loc 1 31 7
	addi	a1,s1,6
.LVL12:
	.loc 1 33 2 is_stmt 1
	.loc 1 33 10 is_stmt 0
	addi	a0,s0,14
.LVL13:
	.loc 1 33 5
	bne	s3,s2,.L4
	.loc 1 33 23 discriminator 1
	li	a2,2
	call	hexstr2bin
.LVL14:
	.loc 1 33 20 discriminator 1
	bne	a0,zero,.L4
	.loc 1 35 2 is_stmt 1
.LVL15:
	.loc 1 36 2
	.loc 1 38 5 is_stmt 0
	lbu	s2,18(s0)
	.loc 1 36 7
	addi	a1,s1,8
.LVL16:
	.loc 1 38 2 is_stmt 1
	.loc 1 38 10 is_stmt 0
	addi	a0,s0,19
.LVL17:
	.loc 1 38 5
	bne	s2,s3,.L4
	.loc 1 38 23 discriminator 1
	li	a2,2
	call	hexstr2bin
.LVL18:
	.loc 1 38 20 discriminator 1
	bne	a0,zero,.L4
	.loc 1 40 2 is_stmt 1
.LVL19:
	.loc 1 41 2
	.loc 1 43 5 is_stmt 0
	lbu	a5,23(s0)
	.loc 1 41 7
	addi	a1,s1,10
.LVL20:
	.loc 1 43 2 is_stmt 1
	.loc 1 43 10 is_stmt 0
	addi	a0,s0,24
.LVL21:
	.loc 1 43 5
	bne	a5,s2,.L4
	.loc 1 43 23 discriminator 1
	li	a2,6
	call	hexstr2bin
.LVL22:
	.loc 1 43 20 discriminator 1
	snez	a0,a0
	neg	a0,a0
	j	.L1
	.cfi_endproc
.LFE106:
	.size	uuid_str2bin, .-uuid_str2bin
	.section	.rodata.uuid_bin2str.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"%02x%02x%02x%02x-%02x%02x-%02x%02x-%02x%02x-%02x%02x%02x%02x%02x%02x"
	.section	.text.uuid_bin2str,"ax",@progbits
	.align	1
	.globl	uuid_bin2str
	.type	uuid_bin2str, @function
uuid_bin2str:
.LFB107:
	.loc 1 51 1 is_stmt 1
	.cfi_startproc
.LVL23:
	.loc 1 52 2
	.loc 1 53 2
	.loc 1 51 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s0,56(sp)
	sw	ra,60(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 51 1
	mv	a3,a0
	.loc 1 53 8
	lbu	a5,15(a3)
	.loc 1 51 1
	mv	s0,a2
	.loc 1 53 8
	lui	a2,%hi(.LC0)
.LVL24:
	sw	a5,40(sp)
	lbu	a5,14(a3)
	.loc 1 51 1
	mv	a0,a1
.LVL25:
	.loc 1 53 8
	addi	a2,a2,%lo(.LC0)
	sw	a5,36(sp)
	lbu	a5,13(a3)
	mv	a1,s0
.LVL26:
	sw	a5,32(sp)
	lbu	a5,12(a3)
	sw	a5,28(sp)
	lbu	a5,11(a3)
	sw	a5,24(sp)
	lbu	a5,10(a3)
	sw	a5,20(sp)
	lbu	a5,9(a3)
	sw	a5,16(sp)
	lbu	a5,8(a3)
	sw	a5,12(sp)
	lbu	a5,7(a3)
	sw	a5,8(sp)
	lbu	a5,6(a3)
	sw	a5,4(sp)
	lbu	a5,5(a3)
	sw	a5,0(sp)
	lbu	a7,4(a3)
	lbu	a6,3(a3)
	lbu	a5,2(a3)
	lbu	a4,1(a3)
	lbu	a3,0(a3)
.LVL27:
	call	os_snprintf
.LVL28:
	.loc 1 59 2 is_stmt 1
.LBB4:
.LBB5:
	.file 2 "./components/wireless/wifi6/qcc74x_wpa_supplicant/src/utils/os.h"
	.loc 2 561 2
	.loc 2 561 17 is_stmt 0
	blt	a0,zero,.L8
	sgtu	a0,s0,a0
.LVL29:
	addi	a0,a0,-1
.LVL30:
.L6:
.LBE5:
.LBE4:
	.loc 1 62 1
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
.LVL31:
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL32:
.L8:
	.cfi_restore_state
	.loc 1 60 10
	li	a0,-1
.LVL33:
	j	.L6
	.cfi_endproc
.LFE107:
	.size	uuid_bin2str, .-uuid_bin2str
	.section	.text.is_nil_uuid,"ax",@progbits
	.align	1
	.globl	is_nil_uuid
	.type	is_nil_uuid, @function
is_nil_uuid:
.LFB108:
	.loc 1 66 1 is_stmt 1
	.cfi_startproc
.LVL34:
	.loc 1 67 2
	.loc 1 68 2
	.loc 1 68 14
	.loc 1 68 9 is_stmt 0
	li	a5,0
	.loc 1 68 2
	li	a4,16
.LVL35:
.L12:
	.loc 1 69 3 is_stmt 1
	.loc 1 69 6 is_stmt 0
	lrbu	a3,a0,a5,0
	bne	a3,zero,.L13
	.loc 1 68 22 is_stmt 1 discriminator 2
	.loc 1 68 23 is_stmt 0 discriminator 2
	addi	a5,a5,1
.LVL36:
	.loc 1 68 14 is_stmt 1 discriminator 2
	.loc 1 68 2 is_stmt 0 discriminator 2
	bne	a5,a4,.L12
	.loc 1 71 9
	li	a0,1
.LVL37:
	ret
.LVL38:
.L13:
	.loc 1 70 11
	li	a0,0
.LVL39:
	.loc 1 72 1
	ret
	.cfi_endproc
.LFE108:
	.size	is_nil_uuid, .-is_nil_uuid
	.section	.text.uuid_random,"ax",@progbits
	.align	1
	.globl	uuid_random
	.type	uuid_random, @function
uuid_random:
.LFB109:
	.loc 1 76 1 is_stmt 1
	.cfi_startproc
.LVL40:
	.loc 1 77 2
	.loc 1 78 2
	.loc 1 82 2
	.loc 1 76 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s0,56(sp)
	.cfi_offset 8, -8
	mv	s0,a0
	.loc 1 82 2
	addi	a0,sp,8
.LVL41:
	.loc 1 76 1
	sw	ra,60(sp)
	.cfi_offset 1, -4
	.loc 1 82 2
	call	os_get_time
.LVL42:
	.loc 1 83 2 is_stmt 1
	.loc 1 83 6 is_stmt 0
	li	a1,16
	mv	a0,s0
	call	os_get_random
.LVL43:
	.loc 1 83 5
	bge	a0,zero,.L16
.L18:
	.loc 1 85 10
	li	a0,-1
.L15:
	.loc 1 96 1
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
.LVL44:
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL45:
.L16:
	.cfi_restore_state
	.loc 1 84 6 discriminator 1
	addi	a4,sp,16
	li	a3,8
	addi	a2,sp,8
	li	a1,16
	mv	a0,s0
	call	hmac_sha256
.LVL46:
	.loc 1 83 34 discriminator 1
	blt	a0,zero,.L18
	.loc 1 87 2 is_stmt 1
	li	a2,16
	addi	a1,sp,16
	mv	a0,s0
	call	os_memcpy
.LVL47:
	.loc 1 90 2
	.loc 1 90 32 is_stmt 0
	lbu	a5,6(s0)
	.loc 1 95 9
	li	a0,0
	.loc 1 90 32
	andi	a5,a5,15
	.loc 1 90 21
	ori	a5,a5,64
	.loc 1 90 10
	sb	a5,6(s0)
	.loc 1 93 2 is_stmt 1
	.loc 1 93 28 is_stmt 0
	lbu	a5,8(s0)
	andi	a5,a5,63
	.loc 1 93 17
	ori	a5,a5,-128
	.loc 1 93 10
	sb	a5,8(s0)
	.loc 1 95 2 is_stmt 1
	.loc 1 95 9 is_stmt 0
	j	.L15
	.cfi_endproc
.LFE109:
	.size	uuid_random, .-uuid_random
	.text
.Letext0:
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 4 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 5 "./toolchain/linux_x86_64/lib/gcc/riscv64-unknown-elf/10.4.0/include/stddef.h"
	.file 6 "./components/wireless/wifi6/qcc74x_wpa_supplicant/src/crypto/sha256.h"
	.file 7 "./components/wireless/wifi6/qcc74x_wpa_supplicant/src/utils/common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x409
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF31
	.byte	0xc
	.4byte	.LASF32
	.4byte	.LASF33
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF9
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
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF11
	.byte	0x5
	.byte	0xd1
	.byte	0x16
	.4byte	0x70
	.byte	0x5
	.byte	0x4
	.4byte	0x95
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0x6
	.4byte	0x95
	.byte	0x5
	.byte	0x4
	.4byte	0x9c
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF13
	.byte	0x3
	.4byte	.LASF14
	.byte	0x2
	.byte	0xc
	.byte	0xe
	.4byte	0x4d
	.byte	0x7
	.4byte	.LASF34
	.byte	0x8
	.byte	0x2
	.byte	0x15
	.byte	0x8
	.4byte	0xe2
	.byte	0x8
	.string	"sec"
	.byte	0x2
	.byte	0x16
	.byte	0xc
	.4byte	0xae
	.byte	0
	.byte	0x9
	.4byte	.LASF15
	.byte	0x2
	.byte	0x17
	.byte	0xc
	.4byte	0xae
	.byte	0x4
	.byte	0
	.byte	0xa
	.string	"u8"
	.byte	0x7
	.byte	0x95
	.byte	0x11
	.4byte	0x77
	.byte	0x6
	.4byte	0xe2
	.byte	0xb
	.4byte	0xe2
	.4byte	0x102
	.byte	0xc
	.4byte	0x70
	.byte	0x1f
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0xe2
	.byte	0xd
	.4byte	.LASF17
	.byte	0x1
	.byte	0x4b
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB109
	.4byte	.LFE109-.LFB109
	.byte	0x1
	.byte	0x9c
	.4byte	0x1c1
	.byte	0xe
	.4byte	.LASF19
	.byte	0x1
	.byte	0x4b
	.byte	0x15
	.4byte	0x102
	.4byte	.LLST12
	.byte	0xf
	.string	"t"
	.byte	0x1
	.byte	0x4d
	.byte	0x11
	.4byte	0xba
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x10
	.4byte	.LASF16
	.byte	0x1
	.byte	0x4e
	.byte	0x5
	.4byte	0xf2
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x11
	.4byte	.LVL42
	.4byte	0x3c1
	.4byte	0x162
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0
	.byte	0x11
	.4byte	.LVL43
	.4byte	0x3cd
	.4byte	0x17b
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x11
	.4byte	.LVL46
	.4byte	0x3d9
	.4byte	0x1a5
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x12
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x38
	.byte	0x12
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0
	.byte	0x13
	.4byte	.LVL47
	.4byte	0x3e5
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
	.byte	0x91
	.byte	0x50
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LASF18
	.byte	0x1
	.byte	0x41
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB108
	.4byte	.LFE108-.LFB108
	.byte	0x1
	.byte	0x9c
	.4byte	0x1fa
	.byte	0xe
	.4byte	.LASF19
	.byte	0x1
	.byte	0x41
	.byte	0x1b
	.4byte	0x1fa
	.4byte	.LLST10
	.byte	0x14
	.string	"i"
	.byte	0x1
	.byte	0x43
	.byte	0x6
	.4byte	0x69
	.4byte	.LLST11
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0xed
	.byte	0xd
	.4byte	.LASF20
	.byte	0x1
	.byte	0x32
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.byte	0x1
	.byte	0x9c
	.4byte	0x2a2
	.byte	0x15
	.string	"bin"
	.byte	0x1
	.byte	0x32
	.byte	0x1c
	.4byte	0x1fa
	.4byte	.LLST4
	.byte	0x15
	.string	"str"
	.byte	0x1
	.byte	0x32
	.byte	0x27
	.4byte	0x8f
	.4byte	.LLST5
	.byte	0xe
	.4byte	.LASF21
	.byte	0x1
	.byte	0x32
	.byte	0x33
	.4byte	0x83
	.4byte	.LLST6
	.byte	0x14
	.string	"len"
	.byte	0x1
	.byte	0x34
	.byte	0x6
	.4byte	0x69
	.4byte	.LLST7
	.byte	0x16
	.4byte	0x394
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0x3b
	.byte	0x6
	.4byte	0x281
	.byte	0x17
	.4byte	0x3b3
	.4byte	.LLST7
	.byte	0x17
	.4byte	0x3a6
	.4byte	.LLST9
	.byte	0
	.byte	0x13
	.4byte	.LVL28
	.4byte	0x3f2
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LASF22
	.byte	0x1
	.byte	0xf
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
	.byte	0x1
	.byte	0x9c
	.4byte	0x394
	.byte	0x15
	.string	"str"
	.byte	0x1
	.byte	0xf
	.byte	0x1e
	.4byte	0xa1
	.4byte	.LLST0
	.byte	0x15
	.string	"bin"
	.byte	0x1
	.byte	0xf
	.byte	0x27
	.4byte	0x102
	.4byte	.LLST1
	.byte	0x14
	.string	"pos"
	.byte	0x1
	.byte	0x11
	.byte	0xe
	.4byte	0xa1
	.4byte	.LLST2
	.byte	0x18
	.4byte	.LASF23
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.4byte	0x102
	.4byte	.LLST3
	.byte	0x11
	.4byte	.LVL3
	.4byte	0x3ff
	.4byte	0x31b
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
	.byte	0x79
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0x11
	.4byte	.LVL10
	.4byte	0x3ff
	.4byte	0x33a
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x9
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0x4
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x11
	.4byte	.LVL14
	.4byte	0x3ff
	.4byte	0x359
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0xe
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0x6
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x11
	.4byte	.LVL18
	.4byte	0x3ff
	.4byte	0x378
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x13
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0x8
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x13
	.4byte	.LVL22
	.4byte	0x3ff
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x18
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0xa
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x36
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LASF35
	.byte	0x2
	.2byte	0x22f
	.byte	0x13
	.4byte	0x69
	.byte	0x3
	.4byte	0x3c1
	.byte	0x1a
	.4byte	.LASF24
	.byte	0x2
	.2byte	0x22f
	.byte	0x2c
	.4byte	0x83
	.byte	0x1b
	.string	"res"
	.byte	0x2
	.2byte	0x22f
	.byte	0x36
	.4byte	0x69
	.byte	0
	.byte	0x1c
	.4byte	.LASF25
	.4byte	.LASF25
	.byte	0x2
	.byte	0x24
	.byte	0x5
	.byte	0x1c
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x2
	.byte	0xa5
	.byte	0x5
	.byte	0x1c
	.4byte	.LASF27
	.4byte	.LASF27
	.byte	0x6
	.byte	0x10
	.byte	0x5
	.byte	0x1d
	.4byte	.LASF28
	.4byte	.LASF28
	.byte	0x2
	.2byte	0x154
	.byte	0x8
	.byte	0x1d
	.4byte	.LASF29
	.4byte	.LASF29
	.byte	0x2
	.2byte	0x1da
	.byte	0x5
	.byte	0x1d
	.4byte	.LASF30
	.4byte	.LASF30
	.byte	0x7
	.2byte	0x1fd
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
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x26
	.byte	0
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
	.byte	0x9
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
	.byte	0xa
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
	.byte	0xb
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
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
	.byte	0x18
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
	.byte	0x15
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
	.byte	0x16
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
	.byte	0x17
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x18
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
	.byte	0x19
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
	.byte	0x49
	.byte	0x13
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x5
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
	.byte	0xb
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST12:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL41
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LFE109
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL34
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL39
	.4byte	.LFE108
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LFE108
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL27
	.4byte	.LFE107
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL26
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28-1
	.4byte	.LFE107
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL24
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LFE107
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3-1
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LFE106
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3-1
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LFE106
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3-1
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x3
	.byte	0x78
	.byte	0x8
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10-1
	.4byte	.LVL11
	.2byte	0x3
	.byte	0x78
	.byte	0x9
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x3
	.byte	0x78
	.byte	0xd
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14-1
	.4byte	.LVL15
	.2byte	0x3
	.byte	0x78
	.byte	0xe
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x3
	.byte	0x78
	.byte	0x12
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18-1
	.4byte	.LVL19
	.2byte	0x3
	.byte	0x78
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x3
	.byte	0x78
	.byte	0x17
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22-1
	.4byte	.LFE106
	.2byte	0x3
	.byte	0x78
	.byte	0x18
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3-1
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL8
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL10-1
	.4byte	.LVL12
	.2byte	0x3
	.byte	0x79
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL14-1
	.4byte	.LVL16
	.2byte	0x3
	.byte	0x79
	.byte	0x6
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL18-1
	.4byte	.LVL20
	.2byte	0x3
	.byte	0x79
	.byte	0x8
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL22-1
	.4byte	.LFE106
	.2byte	0x3
	.byte	0x79
	.byte	0xa
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF31:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF9:
	.string	"__uint8_t"
.LASF11:
	.string	"size_t"
.LASF28:
	.string	"os_memcpy"
.LASF15:
	.string	"usec"
.LASF22:
	.string	"uuid_str2bin"
.LASF18:
	.string	"is_nil_uuid"
.LASF17:
	.string	"uuid_random"
.LASF26:
	.string	"os_get_random"
.LASF1:
	.string	"unsigned char"
.LASF23:
	.string	"opos"
.LASF27:
	.string	"hmac_sha256"
.LASF3:
	.string	"short unsigned int"
.LASF20:
	.string	"uuid_bin2str"
.LASF5:
	.string	"long unsigned int"
.LASF25:
	.string	"os_get_time"
.LASF16:
	.string	"hash"
.LASF21:
	.string	"max_len"
.LASF29:
	.string	"os_snprintf"
.LASF8:
	.string	"unsigned int"
.LASF19:
	.string	"uuid"
.LASF12:
	.string	"char"
.LASF10:
	.string	"uint8_t"
.LASF0:
	.string	"signed char"
.LASF6:
	.string	"long long int"
.LASF34:
	.string	"os_time"
.LASF2:
	.string	"short int"
.LASF14:
	.string	"os_time_t"
.LASF33:
	.string	"./examples/usb_cam_stream/build_wsl/build_out/components/wireless/wifi6/qcc74x_wpa_supplicant"
.LASF32:
	.string	"./components/wireless/wifi6/qcc74x_wpa_supplicant/src/utils/uuid.c"
.LASF35:
	.string	"os_snprintf_error"
.LASF4:
	.string	"long int"
.LASF30:
	.string	"hexstr2bin"
.LASF24:
	.string	"size"
.LASF13:
	.string	"_Bool"
.LASF7:
	.string	"long long unsigned int"
	.ident	"GCC: (GNU) 10.4.0"
