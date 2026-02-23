	.file	"dh_group5.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.dh5_init,"ax",@progbits
	.align	1
	.globl	dh5_init
	.type	dh5_init, @function
dh5_init:
.LFB106:
	.file 1 "./components/wireless/wifi6/qcc74x_wpa_supplicant/src/crypto/dh_group5.c"
	.loc 1 17 1
	.cfi_startproc
.LVL0:
	.loc 1 18 2
	.loc 1 17 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s1,4(sp)
	.cfi_offset 9, -12
	mv	s1,a0
	.loc 1 18 2
	lw	a0,0(a1)
.LVL1:
	.loc 1 17 1
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 17 1
	mv	s0,a1
	.loc 1 18 2
	call	wpabuf_free
.LVL2:
	.loc 1 19 2 is_stmt 1
	.loc 1 19 10 is_stmt 0
	li	a0,5
	call	dh_groups_get
.LVL3:
	mv	a1,s1
	call	dh_init
.LVL4:
	.loc 1 19 8
	sw	a0,0(s0)
	.loc 1 20 2 is_stmt 1
	.loc 1 23 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL5:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL6:
	snez	a0,a0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE106:
	.size	dh5_init, .-dh5_init
	.section	.text.dh5_init_fixed,"ax",@progbits
	.align	1
	.globl	dh5_init_fixed
	.type	dh5_init_fixed, @function
dh5_init_fixed:
.LFB107:
	.loc 1 27 1 is_stmt 1
	.cfi_startproc
.LVL7:
	.loc 1 28 2
	.loc 1 29 1 is_stmt 0
	li	a0,1
.LVL8:
	ret
	.cfi_endproc
.LFE107:
	.size	dh5_init_fixed, .-dh5_init_fixed
	.section	.text.dh5_derive_shared,"ax",@progbits
	.align	1
	.globl	dh5_derive_shared
	.type	dh5_derive_shared, @function
dh5_derive_shared:
.LFB108:
	.loc 1 34 1 is_stmt 1
	.cfi_startproc
.LVL9:
	.loc 1 35 2
	.loc 1 34 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 35 9
	li	a0,5
.LVL10:
	.loc 1 34 1
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 34 1
	mv	s0,a1
	sw	a2,12(sp)
	.loc 1 35 9
	call	dh_groups_get
.LVL11:
	mv	a2,a0
	mv	a0,s0
	.loc 1 36 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL12:
	.loc 1 35 9
	lw	a1,12(sp)
	.loc 1 36 1
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL13:
	.loc 1 35 9
	tail	dh_derive_shared
.LVL14:
	.cfi_endproc
.LFE108:
	.size	dh5_derive_shared, .-dh5_derive_shared
	.section	.text.dh5_free,"ax",@progbits
	.align	1
	.globl	dh5_free
	.type	dh5_free, @function
dh5_free:
.LFB109:
	.loc 1 40 1 is_stmt 1
	.cfi_startproc
.LVL15:
	.loc 1 41 1
	ret
	.cfi_endproc
.LFE109:
	.size	dh5_free, .-dh5_free
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./toolchain/linux_x86_64/lib/gcc/riscv64-unknown-elf/10.4.0/include/stddef.h"
	.file 5 "./components/wireless/wifi6/qcc74x_wpa_supplicant/src/utils/wpabuf.h"
	.file 6 "./components/wireless/wifi6/qcc74x_wpa_supplicant/src/crypto/dh_groups.h"
	.file 7 "./components/wireless/wifi6/qcc74x_wpa_supplicant/src/utils/common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x271
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
	.byte	0x5
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF13
	.byte	0x6
	.string	"u8"
	.byte	0x7
	.byte	0x95
	.byte	0x11
	.4byte	0x77
	.byte	0x7
	.4byte	.LASF31
	.byte	0x10
	.byte	0x5
	.byte	0x14
	.byte	0x8
	.4byte	0xec
	.byte	0x8
	.4byte	.LASF14
	.byte	0x5
	.byte	0x15
	.byte	0x9
	.4byte	0x83
	.byte	0
	.byte	0x8
	.4byte	.LASF15
	.byte	0x5
	.byte	0x16
	.byte	0x9
	.4byte	0x83
	.byte	0x4
	.byte	0x9
	.string	"buf"
	.byte	0x5
	.byte	0x17
	.byte	0x6
	.4byte	0xf1
	.byte	0x8
	.byte	0x8
	.4byte	.LASF16
	.byte	0x5
	.byte	0x18
	.byte	0xf
	.4byte	0x70
	.byte	0xc
	.byte	0
	.byte	0xa
	.4byte	0xaa
	.byte	0xb
	.byte	0x4
	.4byte	0x9f
	.byte	0xc
	.4byte	.LASF32
	.byte	0x1
	.byte	0x27
	.byte	0x6
	.4byte	.LFB109
	.4byte	.LFE109-.LFB109
	.byte	0x1
	.byte	0x9c
	.4byte	0x11c
	.byte	0xd
	.string	"ctx"
	.byte	0x1
	.byte	0x27
	.byte	0x15
	.4byte	0x8f
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0xe
	.4byte	.LASF19
	.byte	0x1
	.byte	0x20
	.byte	0x11
	.4byte	0x192
	.4byte	.LFB108
	.4byte	.LFE108-.LFB108
	.byte	0x1
	.byte	0x9c
	.4byte	0x192
	.byte	0xf
	.string	"ctx"
	.byte	0x1
	.byte	0x20
	.byte	0x29
	.4byte	0x8f
	.4byte	.LLST3
	.byte	0x10
	.4byte	.LASF17
	.byte	0x1
	.byte	0x20
	.byte	0x43
	.4byte	0x198
	.4byte	.LLST4
	.byte	0x10
	.4byte	.LASF18
	.byte	0x1
	.byte	0x21
	.byte	0x1c
	.4byte	0x198
	.4byte	.LLST5
	.byte	0x11
	.4byte	.LVL11
	.4byte	0x244
	.4byte	0x179
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x35
	.byte	0
	.byte	0x13
	.4byte	.LVL14
	.4byte	0x250
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
	.byte	0x3
	.byte	0x72
	.byte	0x6c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x4
	.4byte	0xaa
	.byte	0xb
	.byte	0x4
	.4byte	0xec
	.byte	0xe
	.4byte	.LASF20
	.byte	0x1
	.byte	0x1a
	.byte	0x8
	.4byte	0x8f
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.byte	0x1
	.byte	0x9c
	.4byte	0x1d7
	.byte	0x10
	.4byte	.LASF21
	.byte	0x1
	.byte	0x1a
	.byte	0x2c
	.4byte	0x198
	.4byte	.LLST2
	.byte	0x14
	.4byte	.LASF22
	.byte	0x1
	.byte	0x1a
	.byte	0x47
	.4byte	0x198
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0xe
	.4byte	.LASF23
	.byte	0x1
	.byte	0x10
	.byte	0x8
	.4byte	0x8f
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
	.byte	0x1
	.byte	0x9c
	.4byte	0x23e
	.byte	0x10
	.4byte	.LASF21
	.byte	0x1
	.byte	0x10
	.byte	0x21
	.4byte	0x23e
	.4byte	.LLST0
	.byte	0x10
	.4byte	.LASF22
	.byte	0x1
	.byte	0x10
	.byte	0x37
	.4byte	0x23e
	.4byte	.LLST1
	.byte	0x15
	.4byte	.LVL2
	.4byte	0x25c
	.byte	0x11
	.4byte	.LVL3
	.4byte	0x244
	.4byte	0x22d
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x35
	.byte	0
	.byte	0x16
	.4byte	.LVL4
	.4byte	0x268
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x4
	.4byte	0x192
	.byte	0x17
	.4byte	.LASF24
	.4byte	.LASF24
	.byte	0x6
	.byte	0x17
	.byte	0x19
	.byte	0x17
	.4byte	.LASF25
	.4byte	.LASF25
	.byte	0x6
	.byte	0x19
	.byte	0x11
	.byte	0x17
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x5
	.byte	0x22
	.byte	0x6
	.byte	0x17
	.4byte	.LASF27
	.4byte	.LASF27
	.byte	0x6
	.byte	0x18
	.byte	0x11
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
	.byte	0xa
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0xd
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
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
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
	.byte	0
	.byte	0
	.byte	0x17
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
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LFE108
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL11-1
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL12
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14-1
	.4byte	.LFE108
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL11-1
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL13
	.4byte	.LFE108
	.2byte	0x2
	.byte	0x72
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
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
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL6
	.4byte	.LFE106
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2-1
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL5
	.4byte	.LFE106
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
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
.LASF28:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF9:
	.string	"__uint8_t"
.LASF11:
	.string	"size_t"
.LASF17:
	.string	"peer_public"
.LASF21:
	.string	"priv"
.LASF32:
	.string	"dh5_free"
.LASF15:
	.string	"used"
.LASF26:
	.string	"wpabuf_free"
.LASF31:
	.string	"wpabuf"
.LASF0:
	.string	"signed char"
.LASF1:
	.string	"unsigned char"
.LASF22:
	.string	"publ"
.LASF5:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF18:
	.string	"own_private"
.LASF30:
	.string	"./examples/usb_cam_stream/build_wsl/build_out/components/wireless/wifi6/qcc74x_wpa_supplicant"
.LASF20:
	.string	"dh5_init_fixed"
.LASF8:
	.string	"unsigned int"
.LASF16:
	.string	"flags"
.LASF23:
	.string	"dh5_init"
.LASF25:
	.string	"dh_derive_shared"
.LASF10:
	.string	"uint8_t"
.LASF6:
	.string	"long long int"
.LASF19:
	.string	"dh5_derive_shared"
.LASF12:
	.string	"char"
.LASF27:
	.string	"dh_init"
.LASF29:
	.string	"./components/wireless/wifi6/qcc74x_wpa_supplicant/src/crypto/dh_group5.c"
.LASF24:
	.string	"dh_groups_get"
.LASF2:
	.string	"short int"
.LASF4:
	.string	"long int"
.LASF14:
	.string	"size"
.LASF13:
	.string	"_Bool"
.LASF7:
	.string	"long long unsigned int"
	.ident	"GCC: (GNU) 10.4.0"
