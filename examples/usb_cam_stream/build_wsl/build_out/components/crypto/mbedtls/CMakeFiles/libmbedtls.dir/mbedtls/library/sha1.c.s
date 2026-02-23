	.file	"sha1.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.mbedtls_sha1_ret,"ax",@progbits
	.align	1
	.globl	mbedtls_sha1_ret
	.type	mbedtls_sha1_ret, @function
mbedtls_sha1_ret:
.LFB8:
	.file 1 "./components/crypto/mbedtls/mbedtls/library/sha1.c"
	.loc 1 405 1
	.cfi_startproc
.LVL0:
	.loc 1 406 5
	.loc 1 407 5
	.loc 1 409 5
	.loc 1 409 10
	.loc 1 409 18
	.loc 1 410 5
	.loc 1 410 10
	.loc 1 410 18
	.loc 1 412 5
	.loc 1 405 1 is_stmt 0
	addi	sp,sp,-368
	.cfi_def_cfa_offset 368
	sw	s0,360(sp)
	.cfi_offset 8, -8
	addi	s0,sp,47
	andi	s0,s0,-32
	sw	s3,348(sp)
	.cfi_offset 19, -20
	mv	s3,a0
	.loc 1 412 5
	mv	a0,s0
.LVL1:
	.loc 1 405 1
	sw	ra,364(sp)
	sw	s1,356(sp)
	sw	s2,352(sp)
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 405 1
	sw	a1,12(sp)
	mv	s2,a2
	.loc 1 412 5
	call	mbedtls_sha1_init
.LVL2:
	.loc 1 414 5 is_stmt 1
	.loc 1 414 16 is_stmt 0
	mv	a0,s0
	call	mbedtls_sha1_starts_ret
.LVL3:
	mv	s1,a0
.LVL4:
	.loc 1 414 8
	bne	a0,zero,.L2
	.loc 1 418 5 is_stmt 1
	.loc 1 418 16 is_stmt 0
	lw	a1,12(sp)
	mv	a0,s0
	mv	a2,a1
	mv	a1,s3
	call	mbedtls_sha1_update_ret
.LVL5:
	mv	s1,a0
.LVL6:
	.loc 1 418 8
	bne	a0,zero,.L2
	.loc 1 422 5 is_stmt 1
	.loc 1 422 16 is_stmt 0
	mv	a1,s2
	mv	a0,s0
	call	mbedtls_sha1_finish_ret
.LVL7:
	mv	s1,a0
.LVL8:
.L2:
	.loc 1 427 5 is_stmt 1
	mv	a0,s0
	call	mbedtls_sha1_free
.LVL9:
	.loc 1 429 5
	.loc 1 430 1 is_stmt 0
	lw	ra,364(sp)
	.cfi_restore 1
	lw	s0,360(sp)
	.cfi_restore 8
	lw	s2,352(sp)
	.cfi_restore 18
.LVL10:
	lw	s3,348(sp)
	.cfi_restore 19
.LVL11:
	mv	a0,s1
	lw	s1,356(sp)
	.cfi_restore 9
.LVL12:
	addi	sp,sp,368
	.cfi_def_cfa_offset 0
.LVL13:
	jr	ra
	.cfi_endproc
.LFE8:
	.size	mbedtls_sha1_ret, .-mbedtls_sha1_ret
	.section	.text.mbedtls_sha1,"ax",@progbits
	.align	1
	.globl	mbedtls_sha1
	.type	mbedtls_sha1, @function
mbedtls_sha1:
.LFB9:
	.loc 1 436 1 is_stmt 1
	.cfi_startproc
.LVL14:
	.loc 1 437 5
	tail	mbedtls_sha1_ret
.LVL15:
	.cfi_endproc
.LFE9:
	.size	mbedtls_sha1, .-mbedtls_sha1
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/lib/gcc/riscv64-unknown-elf/10.4.0/include/stddef.h"
	.file 4 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 5 "./drivers/lhal/include/qcc74x_core.h"
	.file 6 "./drivers/lhal/include/qcc74x_sec_sha.h"
	.file 7 "./components/crypto/mbedtls/port/hw_acc/sha1_alt.h"
	.file 8 "./components/crypto/mbedtls/mbedtls/include/mbedtls/sha1.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x412
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF47
	.byte	0xc
	.4byte	.LASF48
	.4byte	.LASF49
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF5
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
	.byte	0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x65
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
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0xd1
	.byte	0x16
	.4byte	0x81
	.byte	0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x59
	.byte	0x6
	.byte	0x4
	.byte	0x7
	.byte	0x4
	.4byte	0x38
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0x4
	.4byte	0xb4
	.byte	0x7
	.byte	0x4
	.4byte	0xbb
	.byte	0x8
	.4byte	.LASF21
	.byte	0x10
	.byte	0x5
	.byte	0x67
	.byte	0x8
	.4byte	0x12f
	.byte	0x9
	.4byte	.LASF15
	.byte	0x5
	.byte	0x68
	.byte	0x11
	.4byte	0xc0
	.byte	0
	.byte	0x9
	.4byte	.LASF16
	.byte	0x5
	.byte	0x69
	.byte	0xe
	.4byte	0xa0
	.byte	0x4
	.byte	0x9
	.4byte	.LASF17
	.byte	0x5
	.byte	0x6a
	.byte	0xd
	.4byte	0x94
	.byte	0x8
	.byte	0xa
	.string	"idx"
	.byte	0x5
	.byte	0x6b
	.byte	0xd
	.4byte	0x94
	.byte	0x9
	.byte	0x9
	.4byte	.LASF18
	.byte	0x5
	.byte	0x6c
	.byte	0xd
	.4byte	0x94
	.byte	0xa
	.byte	0x9
	.4byte	.LASF19
	.byte	0x5
	.byte	0x6d
	.byte	0xd
	.4byte	0x94
	.byte	0xb
	.byte	0x9
	.4byte	.LASF20
	.byte	0x5
	.byte	0x6e
	.byte	0xb
	.4byte	0xac
	.byte	0xc
	.byte	0
	.byte	0xb
	.4byte	0xa0
	.4byte	0x13f
	.byte	0xc
	.4byte	0x81
	.byte	0x1
	.byte	0
	.byte	0xb
	.4byte	0x94
	.4byte	0x14f
	.byte	0xc
	.4byte	0x81
	.byte	0x3f
	.byte	0
	.byte	0x8
	.4byte	.LASF22
	.byte	0x48
	.byte	0x6
	.byte	0x2d
	.byte	0x8
	.4byte	0x1d7
	.byte	0xd
	.4byte	.LASF23
	.byte	0x6
	.byte	0x2f
	.byte	0xe
	.4byte	0xa0
	.byte	0x4
	.byte	0x3
	.byte	0x1b
	.byte	0
	.byte	0xd
	.4byte	.LASF24
	.byte	0x6
	.byte	0x31
	.byte	0xe
	.4byte	0xa0
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.byte	0xd
	.4byte	.LASF25
	.byte	0x6
	.byte	0x33
	.byte	0xe
	.4byte	0xa0
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.byte	0xd
	.4byte	.LASF26
	.byte	0x6
	.byte	0x34
	.byte	0xe
	.4byte	0xa0
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.byte	0xd
	.4byte	.LASF27
	.byte	0x6
	.byte	0x36
	.byte	0xe
	.4byte	0xa0
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0
	.byte	0xd
	.4byte	.LASF28
	.byte	0x6
	.byte	0x38
	.byte	0xe
	.4byte	0xa0
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0x9
	.4byte	.LASF29
	.byte	0x6
	.byte	0x39
	.byte	0xe
	.4byte	0xa0
	.byte	0x4
	.byte	0x9
	.4byte	.LASF30
	.byte	0x6
	.byte	0x3a
	.byte	0xe
	.4byte	0x1d7
	.byte	0x8
	.byte	0
	.byte	0xb
	.4byte	0xa0
	.4byte	0x1e7
	.byte	0xc
	.4byte	0x81
	.byte	0xf
	.byte	0
	.byte	0xe
	.4byte	.LASF36
	.2byte	0x100
	.byte	0x20
	.byte	0x6
	.byte	0x3d
	.byte	0x8
	.4byte	0x23a
	.byte	0x9
	.4byte	.LASF31
	.byte	0x6
	.byte	0x3e
	.byte	0xe
	.4byte	0x12f
	.byte	0
	.byte	0xf
	.4byte	.LASF32
	.byte	0x6
	.byte	0x3f
	.byte	0x2a
	.4byte	0x13f
	.byte	0x20
	.byte	0x20
	.byte	0xf
	.4byte	.LASF33
	.byte	0x6
	.byte	0x40
	.byte	0x2a
	.4byte	0x13f
	.byte	0x20
	.byte	0x60
	.byte	0x9
	.4byte	.LASF34
	.byte	0x6
	.byte	0x41
	.byte	0xe
	.4byte	0xa0
	.byte	0xa0
	.byte	0x9
	.4byte	.LASF35
	.byte	0x6
	.byte	0x42
	.byte	0x1e
	.4byte	0x14f
	.byte	0xa4
	.byte	0
	.byte	0xe
	.4byte	.LASF37
	.2byte	0x120
	.byte	0x20
	.byte	0x7
	.byte	0xe
	.byte	0x10
	.4byte	0x265
	.byte	0xa
	.string	"sha"
	.byte	0x7
	.byte	0x10
	.byte	0x1d
	.4byte	0x265
	.byte	0
	.byte	0xf
	.4byte	.LASF38
	.byte	0x7
	.byte	0x11
	.byte	0x23
	.4byte	0x1e7
	.byte	0x20
	.byte	0x20
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xc6
	.byte	0x10
	.4byte	.LASF37
	.byte	0x7
	.byte	0x13
	.byte	0x1
	.4byte	0x23a
	.byte	0x20
	.byte	0x11
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x1b1
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x2e2
	.byte	0x12
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x1b1
	.byte	0x28
	.4byte	0x2e2
	.4byte	.LLST4
	.byte	0x12
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x1b2
	.byte	0x1a
	.4byte	0x88
	.4byte	.LLST5
	.byte	0x12
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x1b3
	.byte	0x21
	.4byte	0xae
	.4byte	.LLST6
	.byte	0x13
	.4byte	.LVL15
	.4byte	0x2e8
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x3f
	.byte	0x15
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x192
	.byte	0x5
	.4byte	0x7a
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x3d9
	.byte	0x12
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x192
	.byte	0x2b
	.4byte	0x2e2
	.4byte	.LLST0
	.byte	0x12
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x193
	.byte	0x1d
	.4byte	0x88
	.4byte	.LLST1
	.byte	0x12
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x194
	.byte	0x24
	.4byte	0xae
	.4byte	.LLST2
	.byte	0x16
	.string	"ret"
	.byte	0x1
	.2byte	0x196
	.byte	0x9
	.4byte	0x7a
	.4byte	.LLST3
	.byte	0x17
	.string	"ctx"
	.byte	0x1
	.2byte	0x197
	.byte	0x1a
	.4byte	0x26b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x18
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x1aa
	.byte	0x1
	.4byte	.L2
	.byte	0x19
	.4byte	.LVL2
	.4byte	0x3d9
	.4byte	0x378
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LVL3
	.4byte	0x3e5
	.4byte	0x38c
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LVL5
	.4byte	0x3f1
	.4byte	0x3ae
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x4
	.byte	0x91
	.byte	0x9c,0x7d
	.byte	0x6
	.byte	0
	.byte	0x19
	.4byte	.LVL7
	.4byte	0x3fd
	.4byte	0x3c8
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL9
	.4byte	0x409
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x8
	.byte	0x49
	.byte	0x6
	.byte	0x1b
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x8
	.byte	0x75
	.byte	0x5
	.byte	0x1b
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x8
	.byte	0x88
	.byte	0x5
	.byte	0x1b
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0x8
	.byte	0x9c
	.byte	0x5
	.byte	0x1b
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0x8
	.byte	0x58
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
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
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
	.byte	0xb
	.byte	0xb
	.byte	0xd
	.byte	0xb
	.byte	0xc
	.byte	0xb
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0x5
	.byte	0x88,0x1
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
	.byte	0xf
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
	.byte	0x88,0x1
	.byte	0xb
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x88,0x1
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
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
	.byte	0x12
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
	.byte	0x2
	.byte	0x17
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
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
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
	.byte	0x16
	.byte	0x34
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0xa
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x11
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x1a
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1b
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
.LLST4:
	.4byte	.LVL14
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15-1
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL14
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL15-1
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL14
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL15-1
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL11
	.4byte	.LFE8
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
	.4byte	.LVL13
	.2byte	0x3
	.byte	0x91
	.byte	0x9c,0x7d
	.4byte	.LVL13
	.4byte	.LFE8
	.2byte	0x3
	.byte	0x72
	.byte	0x9c,0x7d
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL2-1
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL10
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x3
	.byte	0x9
	.byte	0x92
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL12
	.4byte	.LFE8
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
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF23:
	.string	"sha_mode"
.LASF47:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF41:
	.string	"output"
.LASF5:
	.string	"__uint8_t"
.LASF11:
	.string	"size_t"
.LASF52:
	.string	"exit"
.LASF43:
	.string	"mbedtls_sha1_starts_ret"
.LASF36:
	.string	"qcc74x_sha1_link_ctx_s"
.LASF12:
	.string	"uint8_t"
.LASF50:
	.string	"mbedtls_sha1"
.LASF29:
	.string	"sha_srcaddr"
.LASF49:
	.string	"./examples/usb_cam_stream/build_wsl/build_out/components/crypto/mbedtls"
.LASF20:
	.string	"user_data"
.LASF1:
	.string	"unsigned char"
.LASF39:
	.string	"input"
.LASF40:
	.string	"ilen"
.LASF7:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF44:
	.string	"mbedtls_sha1_update_ret"
.LASF48:
	.string	"./components/crypto/mbedtls/mbedtls/library/sha1.c"
.LASF34:
	.string	"link_addr"
.LASF19:
	.string	"dev_type"
.LASF18:
	.string	"sub_idx"
.LASF45:
	.string	"mbedtls_sha1_finish_ret"
.LASF13:
	.string	"uint32_t"
.LASF24:
	.string	"sha_newhash_dis"
.LASF32:
	.string	"sha_buf"
.LASF6:
	.string	"__uint32_t"
.LASF26:
	.string	"sha_intset"
.LASF21:
	.string	"qcc74x_device_s"
.LASF10:
	.string	"unsigned int"
.LASF9:
	.string	"long long unsigned int"
.LASF51:
	.string	"mbedtls_sha1_ret"
.LASF30:
	.string	"result"
.LASF33:
	.string	"sha_padding"
.LASF25:
	.string	"sha_intclr"
.LASF16:
	.string	"reg_base"
.LASF22:
	.string	"qcc74x_sha_link_s"
.LASF46:
	.string	"mbedtls_sha1_free"
.LASF8:
	.string	"long long int"
.LASF15:
	.string	"name"
.LASF28:
	.string	"sha_msglen"
.LASF2:
	.string	"short int"
.LASF42:
	.string	"mbedtls_sha1_init"
.LASF35:
	.string	"link_cfg"
.LASF31:
	.string	"total"
.LASF4:
	.string	"long int"
.LASF14:
	.string	"char"
.LASF27:
	.string	"sha_mode_ext"
.LASF0:
	.string	"signed char"
.LASF38:
	.string	"link_ctx"
.LASF17:
	.string	"irq_num"
.LASF37:
	.string	"mbedtls_sha1_context"
	.ident	"GCC: (GNU) 10.4.0"
