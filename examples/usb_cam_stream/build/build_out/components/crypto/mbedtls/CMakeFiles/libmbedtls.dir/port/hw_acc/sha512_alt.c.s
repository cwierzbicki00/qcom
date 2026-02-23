	.file	"sha512_alt.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.mbedtls_sha512_init.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"sha"
	.section	.text.mbedtls_sha512_init,"ax",@progbits
	.align	1
	.globl	mbedtls_sha512_init
	.type	mbedtls_sha512_init, @function
mbedtls_sha512_init:
.LFB8:
	.file 1 ".\\components\\crypto\\mbedtls\\port\\hw_acc\\sha512_alt.c"
	.loc 1 43 1
	.cfi_startproc
.LVL0:
	.loc 1 44 5
	.loc 1 44 10
	.loc 1 44 18
	.loc 1 46 5
	.loc 1 48 5
	.loc 1 43 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s1,4(sp)
	.cfi_offset 9, -12
	mv	s1,a0
	.loc 1 48 11
	lui	a0,%hi(.LC0)
.LVL1:
	addi	a0,a0,%lo(.LC0)
	.loc 1 43 1
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 48 11
	call	qcc74x_device_get_by_name
.LVL2:
	mv	s0,a0
.LVL3:
	.loc 1 50 5 is_stmt 1
	li	a1,416
	mv	a0,s1
	call	mbedtls_platform_zeroize
.LVL4:
	.loc 1 51 5
	.loc 1 53 5 is_stmt 0
	mv	a0,s0
	.loc 1 51 14
	sw	s0,0(s1)
	.loc 1 53 5 is_stmt 1
	call	qcc74x_group0_request_sha_access
.LVL5:
	.loc 1 54 5
	mv	a0,s0
	.loc 1 55 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
.LVL6:
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
.LVL7:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 54 5
	tail	qcc74x_sha_link_init
.LVL8:
	.cfi_endproc
.LFE8:
	.size	mbedtls_sha512_init, .-mbedtls_sha512_init
	.section	.text.mbedtls_sha512_free,"ax",@progbits
	.align	1
	.globl	mbedtls_sha512_free
	.type	mbedtls_sha512_free, @function
mbedtls_sha512_free:
.LFB9:
	.loc 1 58 1 is_stmt 1
	.cfi_startproc
.LVL9:
	.loc 1 59 5
	.loc 1 59 7 is_stmt 0
	beq	a0,zero,.L3
	.loc 1 62 5 is_stmt 1
	li	a1,416
	tail	mbedtls_platform_zeroize
.LVL10:
.L3:
	.loc 1 63 1 is_stmt 0
	ret
	.cfi_endproc
.LFE9:
	.size	mbedtls_sha512_free, .-mbedtls_sha512_free
	.section	.text.mbedtls_sha512_clone,"ax",@progbits
	.align	1
	.globl	mbedtls_sha512_clone
	.type	mbedtls_sha512_clone, @function
mbedtls_sha512_clone:
.LFB10:
	.loc 1 67 1 is_stmt 1
	.cfi_startproc
.LVL11:
	.loc 1 68 5
	.loc 1 68 10
	.loc 1 68 18
	.loc 1 69 5
	.loc 1 69 10
	.loc 1 69 18
	.loc 1 71 5
	.loc 1 67 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 71 10
	li	a2,416
	.loc 1 67 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 71 10
	call	memcpy
.LVL12:
	.loc 1 72 1
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	mbedtls_sha512_clone, .-mbedtls_sha512_clone
	.section	.text.mbedtls_sha512_starts_ret,"ax",@progbits
	.align	1
	.globl	mbedtls_sha512_starts_ret
	.type	mbedtls_sha512_starts_ret, @function
mbedtls_sha512_starts_ret:
.LFB11:
	.loc 1 78 1 is_stmt 1
	.cfi_startproc
.LVL13:
	.loc 1 79 5
	.loc 1 79 10
	.loc 1 79 18
	.loc 1 81 5
	.loc 1 81 10
	.loc 1 81 18
	.loc 1 85 5
	.loc 1 85 7 is_stmt 0
	lw	a5,0(a0)
	.loc 1 78 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s3,12(sp)
	sw	ra,28(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	.cfi_offset 8, -8
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 78 1
	mv	s0,a0
	mv	s3,a1
	.loc 1 85 7
	bne	a5,zero,.L8
	.loc 1 87 9 is_stmt 1
	.loc 1 87 20 is_stmt 0
	lui	a0,%hi(.LC0)
.LVL14:
	addi	a0,a0,%lo(.LC0)
	call	qcc74x_device_get_by_name
.LVL15:
	.loc 1 87 18
	sw	a0,0(s0)
.L8:
	.loc 1 90 5 is_stmt 1
	call	qcc74x_sec_sha_mutex_take
.LVL16:
	.loc 1 91 5
	.loc 1 91 28 is_stmt 0
	addi	s2,s0,32
	.loc 1 91 5
	lui	s1,%hi(.LANCHOR0)
	mv	a1,s2
	li	a2,384
	addi	a0,s1,%lo(.LANCHOR0)
	call	memcpy
.LVL17:
	.loc 1 92 5 is_stmt 1
	lw	a0,0(s0)
	mv	a2,s3
	addi	a1,s1,%lo(.LANCHOR0)
	call	qcc74x_sha512_link_start
.LVL18:
	.loc 1 93 5
	addi	a1,s1,%lo(.LANCHOR0)
	li	a2,384
	mv	a0,s2
	call	memcpy
.LVL19:
	.loc 1 94 5
	call	qcc74x_sec_sha_mutex_give
.LVL20:
	.loc 1 95 5
	.loc 1 96 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL21:
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
.LVL22:
	lw	s3,12(sp)
	.cfi_restore 19
.LVL23:
	li	a0,0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	mbedtls_sha512_starts_ret, .-mbedtls_sha512_starts_ret
	.section	.text.mbedtls_sha512_starts,"ax",@progbits
	.align	1
	.globl	mbedtls_sha512_starts
	.type	mbedtls_sha512_starts, @function
mbedtls_sha512_starts:
.LFB12:
	.loc 1 101 1 is_stmt 1
	.cfi_startproc
.LVL24:
	.loc 1 102 5
	tail	mbedtls_sha512_starts_ret
.LVL25:
	.cfi_endproc
.LFE12:
	.size	mbedtls_sha512_starts, .-mbedtls_sha512_starts
	.section	.text.mbedtls_sha512_update_ret,"ax",@progbits
	.align	1
	.globl	mbedtls_sha512_update_ret
	.type	mbedtls_sha512_update_ret, @function
mbedtls_sha512_update_ret:
.LFB13:
	.loc 1 112 1
	.cfi_startproc
.LVL26:
	.loc 1 115 5
	.loc 1 115 10
	.loc 1 115 18
	.loc 1 116 5
	.loc 1 116 10
	.loc 1 116 18
	.loc 1 118 5
	.loc 1 118 7 is_stmt 0
	beq	a2,zero,.L17
	.loc 1 112 1
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s1,36(sp)
	.cfi_offset 9, -12
	mv	s1,a1
	sw	s0,40(sp)
.LBB4:
.LBB5:
	.loc 1 121 5
	mv	a1,a2
.LVL27:
	.cfi_offset 8, -8
	mv	s0,a0
.LVL28:
	.loc 1 121 5 is_stmt 1
	mv	a0,s1
.LVL29:
.LBE5:
.LBE4:
	.loc 1 112 1 is_stmt 0
	sw	ra,44(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	.cfi_offset 19, -20
.LBB7:
.LBB6:
	.loc 1 121 5
	sw	a2,12(sp)
	call	qcc74x_l1c_dcache_clean_range
.LVL30:
	.loc 1 122 5 is_stmt 1
	call	qcc74x_sec_sha_mutex_take
.LVL31:
	.loc 1 123 5
	.loc 1 123 28 is_stmt 0
	addi	s3,s0,32
	.loc 1 123 5
	lui	s2,%hi(.LANCHOR0)
	mv	a1,s3
	li	a2,384
	addi	a0,s2,%lo(.LANCHOR0)
	call	memcpy
.LVL32:
	.loc 1 124 5 is_stmt 1
	lw	a3,12(sp)
	lw	a0,0(s0)
	li	a4,0
	mv	a2,s1
	addi	a1,s2,%lo(.LANCHOR0)
	call	qcc74x_sha512_link_update
.LVL33:
	.loc 1 125 5
	addi	a1,s2,%lo(.LANCHOR0)
	li	a2,384
	mv	a0,s3
	call	memcpy
.LVL34:
	.loc 1 126 5
	call	qcc74x_sec_sha_mutex_give
.LVL35:
	.loc 1 127 5
.LBE6:
.LBE7:
	.loc 1 128 1 is_stmt 0
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
.LVL36:
	lw	s1,36(sp)
	.cfi_restore 9
.LVL37:
	lw	s2,32(sp)
	.cfi_restore 18
	lw	s3,28(sp)
	.cfi_restore 19
.LVL38:
	li	a0,0
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
.LVL39:
	jr	ra
.LVL40:
.L17:
	li	a0,0
.LVL41:
	ret
	.cfi_endproc
.LFE13:
	.size	mbedtls_sha512_update_ret, .-mbedtls_sha512_update_ret
	.section	.text.mbedtls_sha512_update,"ax",@progbits
	.align	1
	.globl	mbedtls_sha512_update
	.type	mbedtls_sha512_update, @function
mbedtls_sha512_update:
.LFB14:
	.loc 1 134 1 is_stmt 1
	.cfi_startproc
.LVL42:
	.loc 1 135 5
	tail	mbedtls_sha512_update_ret
.LVL43:
	.cfi_endproc
.LFE14:
	.size	mbedtls_sha512_update, .-mbedtls_sha512_update
	.section	.text.mbedtls_sha512_finish_ret,"ax",@progbits
	.align	1
	.globl	mbedtls_sha512_finish_ret
	.type	mbedtls_sha512_finish_ret, @function
mbedtls_sha512_finish_ret:
.LFB15:
	.loc 1 144 1
	.cfi_startproc
.LVL44:
	.loc 1 147 5
	.loc 1 147 10
	.loc 1 147 18
	.loc 1 148 5
	.loc 1 148 10
	.loc 1 148 18
	.loc 1 150 5
	.loc 1 144 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	s2,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 144 1
	mv	s0,a0
	mv	s2,a1
	.loc 1 151 5
	lui	s1,%hi(.LANCHOR0)
	.loc 1 150 5
	call	qcc74x_sec_sha_mutex_take
.LVL45:
	.loc 1 151 5 is_stmt 1
	addi	a1,s0,32
	li	a2,384
	addi	a0,s1,%lo(.LANCHOR0)
	call	memcpy
.LVL46:
	.loc 1 152 5
	lw	a0,0(s0)
	mv	a2,s2
	addi	a1,s1,%lo(.LANCHOR0)
	call	qcc74x_sha512_link_finish
.LVL47:
	.loc 1 153 5
	call	qcc74x_sec_sha_mutex_give
.LVL48:
	.loc 1 154 5
	.loc 1 155 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL49:
	lw	s1,4(sp)
	.cfi_restore 9
	lw	s2,0(sp)
	.cfi_restore 18
.LVL50:
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE15:
	.size	mbedtls_sha512_finish_ret, .-mbedtls_sha512_finish_ret
	.section	.text.mbedtls_sha512_finish,"ax",@progbits
	.align	1
	.globl	mbedtls_sha512_finish
	.type	mbedtls_sha512_finish, @function
mbedtls_sha512_finish:
.LFB16:
	.loc 1 160 1 is_stmt 1
	.cfi_startproc
.LVL51:
	.loc 1 161 5
	tail	mbedtls_sha512_finish_ret
.LVL52:
	.cfi_endproc
.LFE16:
	.size	mbedtls_sha512_finish, .-mbedtls_sha512_finish
	.section	.nocache_noinit_ram,"aw"
	.align	5
	.set	.LANCHOR0,. + 0
	.type	link_ctx_temp, @object
	.size	link_ctx_temp, 384
link_ctx_temp:
	.zero	384
	.text
.Letext0:
	.file 2 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\machine\\_default_types.h"
	.file 3 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\lib\\gcc\\riscv64-unknown-elf\\10.4.0\\include\\stddef.h"
	.file 4 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\sys\\_stdint.h"
	.file 5 ".\\drivers\\lhal\\include/qcc74x_core.h"
	.file 6 ".\\drivers\\lhal\\include/qcc74x_sec_sha.h"
	.file 7 ".\\components\\crypto\\mbedtls\\port\\hw_acc/sha512_alt.h"
	.file 8 ".\\components\\crypto\\mbedtls\\port/sec_mutex.h"
	.file 9 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\string.h"
	.file 10 ".\\components\\crypto\\mbedtls\\mbedtls\\include/mbedtls/platform_util.h"
	.file 11 ".\\drivers\\lhal\\include/qcc74x_l1c.h"
	.file 12 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x7e3
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF65
	.byte	0xc
	.4byte	.LASF66
	.4byte	.LASF67
	.4byte	.Ldebug_ranges0+0x18
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
	.byte	0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x69
	.byte	0x20
	.4byte	0x7f
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0xd1
	.byte	0x16
	.4byte	0x8d
	.byte	0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x59
	.byte	0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x3c
	.byte	0x14
	.4byte	0x73
	.byte	0x6
	.byte	0x4
	.byte	0x7
	.byte	0x4
	.4byte	0x38
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.byte	0x4
	.4byte	0xcc
	.byte	0x7
	.byte	0x4
	.4byte	0xd3
	.byte	0x8
	.4byte	.LASF23
	.byte	0x10
	.byte	0x5
	.byte	0x67
	.byte	0x8
	.4byte	0x147
	.byte	0x9
	.4byte	.LASF17
	.byte	0x5
	.byte	0x68
	.byte	0x11
	.4byte	0xd8
	.byte	0
	.byte	0x9
	.4byte	.LASF18
	.byte	0x5
	.byte	0x69
	.byte	0xe
	.4byte	0xac
	.byte	0x4
	.byte	0x9
	.4byte	.LASF19
	.byte	0x5
	.byte	0x6a
	.byte	0xd
	.4byte	0xa0
	.byte	0x8
	.byte	0xa
	.string	"idx"
	.byte	0x5
	.byte	0x6b
	.byte	0xd
	.4byte	0xa0
	.byte	0x9
	.byte	0x9
	.4byte	.LASF20
	.byte	0x5
	.byte	0x6c
	.byte	0xd
	.4byte	0xa0
	.byte	0xa
	.byte	0x9
	.4byte	.LASF21
	.byte	0x5
	.byte	0x6d
	.byte	0xd
	.4byte	0xa0
	.byte	0xb
	.byte	0x9
	.4byte	.LASF22
	.byte	0x5
	.byte	0x6e
	.byte	0xb
	.4byte	0xc4
	.byte	0xc
	.byte	0
	.byte	0xb
	.4byte	0xb8
	.4byte	0x157
	.byte	0xc
	.4byte	0x8d
	.byte	0x1
	.byte	0
	.byte	0xb
	.4byte	0xa0
	.4byte	0x167
	.byte	0xc
	.4byte	0x8d
	.byte	0x7f
	.byte	0
	.byte	0x8
	.4byte	.LASF24
	.byte	0x48
	.byte	0x6
	.byte	0x2d
	.byte	0x8
	.4byte	0x1ef
	.byte	0xd
	.4byte	.LASF25
	.byte	0x6
	.byte	0x2f
	.byte	0xe
	.4byte	0xac
	.byte	0x4
	.byte	0x3
	.byte	0x1b
	.byte	0
	.byte	0xd
	.4byte	.LASF26
	.byte	0x6
	.byte	0x31
	.byte	0xe
	.4byte	0xac
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.byte	0xd
	.4byte	.LASF27
	.byte	0x6
	.byte	0x33
	.byte	0xe
	.4byte	0xac
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.byte	0xd
	.4byte	.LASF28
	.byte	0x6
	.byte	0x34
	.byte	0xe
	.4byte	0xac
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.byte	0xd
	.4byte	.LASF29
	.byte	0x6
	.byte	0x36
	.byte	0xe
	.4byte	0xac
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0
	.byte	0xd
	.4byte	.LASF30
	.byte	0x6
	.byte	0x38
	.byte	0xe
	.4byte	0xac
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0x9
	.4byte	.LASF31
	.byte	0x6
	.byte	0x39
	.byte	0xe
	.4byte	0xac
	.byte	0x4
	.byte	0x9
	.4byte	.LASF32
	.byte	0x6
	.byte	0x3a
	.byte	0xe
	.4byte	0x1ef
	.byte	0x8
	.byte	0
	.byte	0xb
	.4byte	0xac
	.4byte	0x1ff
	.byte	0xc
	.4byte	0x8d
	.byte	0xf
	.byte	0
	.byte	0xe
	.4byte	.LASF38
	.2byte	0x180
	.byte	0x20
	.byte	0x6
	.byte	0x4d
	.byte	0x8
	.4byte	0x254
	.byte	0x9
	.4byte	.LASF33
	.byte	0x6
	.byte	0x4e
	.byte	0xe
	.4byte	0x147
	.byte	0
	.byte	0xf
	.4byte	.LASF34
	.byte	0x6
	.byte	0x4f
	.byte	0x2a
	.4byte	0x157
	.byte	0x20
	.byte	0x20
	.byte	0xf
	.4byte	.LASF35
	.byte	0x6
	.byte	0x50
	.byte	0x2a
	.4byte	0x157
	.byte	0x20
	.byte	0xa0
	.byte	0x10
	.4byte	.LASF36
	.byte	0x6
	.byte	0x51
	.byte	0xe
	.4byte	0xac
	.2byte	0x120
	.byte	0x10
	.4byte	.LASF37
	.byte	0x6
	.byte	0x52
	.byte	0x1e
	.4byte	0x167
	.2byte	0x124
	.byte	0
	.byte	0xe
	.4byte	.LASF39
	.2byte	0x1a0
	.byte	0x20
	.byte	0x7
	.byte	0xe
	.byte	0x10
	.4byte	0x27f
	.byte	0xa
	.string	"sha"
	.byte	0x7
	.byte	0x10
	.byte	0x1d
	.4byte	0x27f
	.byte	0
	.byte	0xf
	.4byte	.LASF40
	.byte	0x7
	.byte	0x11
	.byte	0x25
	.4byte	0x1ff
	.byte	0x20
	.byte	0x20
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xde
	.byte	0x11
	.4byte	.LASF39
	.byte	0x7
	.byte	0x13
	.byte	0x1
	.4byte	0x254
	.byte	0x20
	.byte	0x4
	.4byte	0x285
	.byte	0x12
	.4byte	.LASF53
	.byte	0x1
	.byte	0x28
	.byte	0x58
	.4byte	0x1ff
	.byte	0x5
	.byte	0x3
	.4byte	link_ctx_temp
	.byte	0x13
	.4byte	.LASF42
	.byte	0x1
	.byte	0x9e
	.byte	0x6
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0x2f8
	.byte	0x14
	.string	"ctx"
	.byte	0x1
	.byte	0x9e
	.byte	0x35
	.4byte	0x2f8
	.4byte	.LLST20
	.byte	0x15
	.4byte	.LASF41
	.byte	0x1
	.byte	0x9f
	.byte	0x2b
	.4byte	0xc6
	.4byte	.LLST21
	.byte	0x16
	.4byte	.LVL52
	.4byte	0x2fe
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
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x285
	.byte	0x18
	.4byte	.LASF48
	.byte	0x1
	.byte	0x8e
	.byte	0x5
	.4byte	0x86
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x38c
	.byte	0x14
	.string	"ctx"
	.byte	0x1
	.byte	0x8e
	.byte	0x38
	.4byte	0x2f8
	.4byte	.LLST18
	.byte	0x15
	.4byte	.LASF41
	.byte	0x1
	.byte	0x8f
	.byte	0x2e
	.4byte	0xc6
	.4byte	.LLST19
	.byte	0x19
	.4byte	.LVL45
	.4byte	0x754
	.byte	0x1a
	.4byte	.LVL46
	.4byte	0x760
	.4byte	0x365
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x20
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x180
	.byte	0
	.byte	0x1a
	.4byte	.LVL47
	.4byte	0x76c
	.4byte	0x382
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LVL48
	.4byte	0x779
	.byte	0
	.byte	0x13
	.4byte	.LASF43
	.byte	0x1
	.byte	0x83
	.byte	0x6
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x3f2
	.byte	0x14
	.string	"ctx"
	.byte	0x1
	.byte	0x83
	.byte	0x35
	.4byte	0x2f8
	.4byte	.LLST15
	.byte	0x15
	.4byte	.LASF44
	.byte	0x1
	.byte	0x84
	.byte	0x32
	.4byte	0x3f2
	.4byte	.LLST16
	.byte	0x15
	.4byte	.LASF45
	.byte	0x1
	.byte	0x85
	.byte	0x24
	.4byte	0x94
	.4byte	.LLST17
	.byte	0x16
	.4byte	.LVL43
	.4byte	0x3f8
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
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x3f
	.byte	0x1b
	.4byte	.LASF68
	.byte	0x1
	.byte	0x6d
	.byte	0x5
	.4byte	0x86
	.byte	0x1
	.4byte	0x42e
	.byte	0x1c
	.string	"ctx"
	.byte	0x1
	.byte	0x6d
	.byte	0x38
	.4byte	0x2f8
	.byte	0x1d
	.4byte	.LASF44
	.byte	0x1
	.byte	0x6e
	.byte	0x35
	.4byte	0x3f2
	.byte	0x1d
	.4byte	.LASF45
	.byte	0x1
	.byte	0x6f
	.byte	0x27
	.4byte	0x94
	.byte	0
	.byte	0x13
	.4byte	.LASF46
	.byte	0x1
	.byte	0x63
	.byte	0x6
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x47d
	.byte	0x14
	.string	"ctx"
	.byte	0x1
	.byte	0x63
	.byte	0x35
	.4byte	0x2f8
	.4byte	.LLST7
	.byte	0x15
	.4byte	.LASF47
	.byte	0x1
	.byte	0x64
	.byte	0x21
	.4byte	0x86
	.4byte	.LLST8
	.byte	0x16
	.4byte	.LVL25
	.4byte	0x47d
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
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LASF49
	.byte	0x1
	.byte	0x4d
	.byte	0x5
	.4byte	0x86
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x546
	.byte	0x14
	.string	"ctx"
	.byte	0x1
	.byte	0x4d
	.byte	0x38
	.4byte	0x2f8
	.4byte	.LLST5
	.byte	0x15
	.4byte	.LASF47
	.byte	0x1
	.byte	0x4d
	.byte	0x41
	.4byte	0x86
	.4byte	.LLST6
	.byte	0x1a
	.4byte	.LVL15
	.4byte	0x785
	.4byte	0x4ce
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x19
	.4byte	.LVL16
	.4byte	0x754
	.byte	0x1a
	.4byte	.LVL17
	.4byte	0x760
	.4byte	0x4fb
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x180
	.byte	0
	.byte	0x1a
	.4byte	.LVL18
	.4byte	0x791
	.4byte	0x518
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL19
	.4byte	0x760
	.4byte	0x53c
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x180
	.byte	0
	.byte	0x19
	.4byte	.LVL20
	.4byte	0x779
	.byte	0
	.byte	0x13
	.4byte	.LASF50
	.byte	0x1
	.byte	0x41
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x59c
	.byte	0x14
	.string	"dst"
	.byte	0x1
	.byte	0x41
	.byte	0x34
	.4byte	0x2f8
	.4byte	.LLST3
	.byte	0x14
	.string	"src"
	.byte	0x1
	.byte	0x42
	.byte	0x3a
	.4byte	0x59c
	.4byte	.LLST4
	.byte	0x1e
	.4byte	.LVL12
	.4byte	0x79d
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
	.byte	0xa
	.2byte	0x1a0
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x292
	.byte	0x13
	.4byte	.LASF51
	.byte	0x1
	.byte	0x39
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x5e1
	.byte	0x14
	.string	"ctx"
	.byte	0x1
	.byte	0x39
	.byte	0x33
	.4byte	0x2f8
	.4byte	.LLST2
	.byte	0x16
	.4byte	.LVL10
	.4byte	0x7a8
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
	.byte	0xa
	.2byte	0x1a0
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LASF52
	.byte	0x1
	.byte	0x2a
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x667
	.byte	0x14
	.string	"ctx"
	.byte	0x1
	.byte	0x2a
	.byte	0x33
	.4byte	0x2f8
	.4byte	.LLST0
	.byte	0x1f
	.string	"sha"
	.byte	0x1
	.byte	0x2e
	.byte	0x1d
	.4byte	0x27f
	.4byte	.LLST1
	.byte	0x1a
	.4byte	.LVL2
	.4byte	0x785
	.4byte	0x62e
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x1a
	.4byte	.LVL4
	.4byte	0x7a8
	.4byte	0x649
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xa
	.2byte	0x1a0
	.byte	0
	.byte	0x1a
	.4byte	.LVL5
	.4byte	0x7b4
	.4byte	0x65d
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x20
	.4byte	.LVL8
	.4byte	0x7c1
	.byte	0
	.byte	0x21
	.4byte	0x3f8
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x754
	.byte	0x22
	.4byte	0x409
	.4byte	.LLST9
	.byte	0x22
	.4byte	0x415
	.4byte	.LLST10
	.byte	0x22
	.4byte	0x421
	.4byte	.LLST11
	.byte	0x23
	.4byte	0x3f8
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x6d
	.byte	0x5
	.byte	0x22
	.4byte	0x421
	.4byte	.LLST12
	.byte	0x22
	.4byte	0x415
	.4byte	.LLST13
	.byte	0x22
	.4byte	0x409
	.4byte	.LLST14
	.byte	0x1a
	.4byte	.LVL30
	.4byte	0x7cd
	.4byte	0x6db
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x5c
	.byte	0x6
	.byte	0
	.byte	0x19
	.4byte	.LVL31
	.4byte	0x754
	.byte	0x1a
	.4byte	.LVL32
	.4byte	0x760
	.4byte	0x708
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x180
	.byte	0
	.byte	0x1a
	.4byte	.LVL33
	.4byte	0x7d9
	.4byte	0x725
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL34
	.4byte	0x760
	.4byte	0x749
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x180
	.byte	0
	.byte	0x19
	.4byte	.LVL35
	.4byte	0x779
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x8
	.byte	0x9
	.byte	0x5
	.byte	0x24
	.4byte	.LASF55
	.4byte	.LASF55
	.byte	0x9
	.byte	0x1f
	.byte	0x8
	.byte	0x25
	.4byte	.LASF56
	.4byte	.LASF56
	.byte	0x6
	.2byte	0x13b
	.byte	0x6
	.byte	0x24
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0x8
	.byte	0xa
	.byte	0x5
	.byte	0x24
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0x5
	.byte	0x7b
	.byte	0x19
	.byte	0x24
	.4byte	.LASF59
	.4byte	.LASF59
	.byte	0x6
	.byte	0xf2
	.byte	0x6
	.byte	0x26
	.4byte	.LASF55
	.4byte	.LASF69
	.byte	0xc
	.byte	0
	.byte	0x24
	.4byte	.LASF60
	.4byte	.LASF60
	.byte	0xa
	.byte	0xef
	.byte	0x6
	.byte	0x25
	.4byte	.LASF61
	.4byte	.LASF61
	.byte	0x6
	.2byte	0x144
	.byte	0x6
	.byte	0x24
	.4byte	.LASF62
	.4byte	.LASF62
	.byte	0x6
	.byte	0xd0
	.byte	0x6
	.byte	0x24
	.4byte	.LASF63
	.4byte	.LASF63
	.byte	0xb
	.byte	0x4c
	.byte	0x6
	.byte	0x25
	.4byte	.LASF64
	.4byte	.LASF64
	.byte	0x6
	.2byte	0x119
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
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x14
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
	.byte	0x15
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
	.byte	0x16
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
	.byte	0x19
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1b
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
	.byte	0x1c
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
	.byte	0x1d
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
	.byte	0x1e
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1f
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
	.byte	0x20
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
	.byte	0x21
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
	.byte	0x22
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x23
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
	.byte	0
	.byte	0
	.byte	0x24
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
	.byte	0x25
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
	.byte	0x26
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST20:
	.4byte	.LVL51
	.4byte	.LVL52-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL52-1
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL51
	.4byte	.LVL52-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL52-1
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL44
	.4byte	.LVL45-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL45-1
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL49
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL44
	.4byte	.LVL45-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL45-1
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL50
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL42
	.4byte	.LVL43-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL43-1
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL42
	.4byte	.LVL43-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL43-1
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL42
	.4byte	.LVL43-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL43-1
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL24
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25-1
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL24
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL25-1
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x3
	.byte	0x82
	.byte	0x60
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL13
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL15-1
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL23
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL11
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12-1
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL11
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL12-1
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10-1
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL7
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL6
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL26
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL29
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x3
	.byte	0x83
	.byte	0x60
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL41
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL27
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL37
	.4byte	.LVL40
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL26
	.4byte	.LVL30-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL30-1
	.4byte	.LVL39
	.2byte	0x2
	.byte	0x91
	.byte	0x5c
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x72
	.byte	0x5c
	.4byte	.LVL40
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL28
	.4byte	.LVL30-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL30-1
	.4byte	.LVL35
	.2byte	0x2
	.byte	0x91
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL28
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL29
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x5c
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
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0
	.4byte	0
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF22:
	.string	"user_data"
.LASF12:
	.string	"size_t"
.LASF47:
	.string	"is384"
.LASF15:
	.string	"uint64_t"
.LASF5:
	.string	"__uint8_t"
.LASF43:
	.string	"mbedtls_sha512_update"
.LASF24:
	.string	"qcc74x_sha_link_s"
.LASF10:
	.string	"long long unsigned int"
.LASF27:
	.string	"sha_intclr"
.LASF20:
	.string	"sub_idx"
.LASF48:
	.string	"mbedtls_sha512_finish_ret"
.LASF8:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF34:
	.string	"sha_buf"
.LASF4:
	.string	"long int"
.LASF55:
	.string	"memcpy"
.LASF54:
	.string	"qcc74x_sec_sha_mutex_take"
.LASF40:
	.string	"link_ctx"
.LASF36:
	.string	"link_addr"
.LASF6:
	.string	"__uint32_t"
.LASF38:
	.string	"qcc74x_sha512_link_ctx_s"
.LASF28:
	.string	"sha_intset"
.LASF11:
	.string	"unsigned int"
.LASF46:
	.string	"mbedtls_sha512_starts"
.LASF64:
	.string	"qcc74x_sha512_link_update"
.LASF7:
	.string	"long unsigned int"
.LASF31:
	.string	"sha_srcaddr"
.LASF17:
	.string	"name"
.LASF3:
	.string	"short unsigned int"
.LASF26:
	.string	"sha_newhash_dis"
.LASF37:
	.string	"link_cfg"
.LASF53:
	.string	"link_ctx_temp"
.LASF69:
	.string	"__builtin_memcpy"
.LASF51:
	.string	"mbedtls_sha512_free"
.LASF33:
	.string	"total"
.LASF65:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF50:
	.string	"mbedtls_sha512_clone"
.LASF68:
	.string	"mbedtls_sha512_update_ret"
.LASF41:
	.string	"output"
.LASF52:
	.string	"mbedtls_sha512_init"
.LASF18:
	.string	"reg_base"
.LASF9:
	.string	"__uint64_t"
.LASF67:
	.string	"C:\\\\Users\\\\cwier\\\\Documents\\\\GitHub\\\\qcom\\\\examples\\\\usb_cam_stream\\\\build\\\\build_out\\\\components\\\\crypto\\\\mbedtls"
.LASF66:
	.string	".\\components\\crypto\\mbedtls\\port\\hw_acc\\sha512_alt.c"
.LASF1:
	.string	"unsigned char"
.LASF57:
	.string	"qcc74x_sec_sha_mutex_give"
.LASF2:
	.string	"short int"
.LASF42:
	.string	"mbedtls_sha512_finish"
.LASF59:
	.string	"qcc74x_sha512_link_start"
.LASF44:
	.string	"input"
.LASF58:
	.string	"qcc74x_device_get_by_name"
.LASF14:
	.string	"uint32_t"
.LASF19:
	.string	"irq_num"
.LASF25:
	.string	"sha_mode"
.LASF16:
	.string	"char"
.LASF61:
	.string	"qcc74x_group0_request_sha_access"
.LASF60:
	.string	"mbedtls_platform_zeroize"
.LASF21:
	.string	"dev_type"
.LASF49:
	.string	"mbedtls_sha512_starts_ret"
.LASF62:
	.string	"qcc74x_sha_link_init"
.LASF23:
	.string	"qcc74x_device_s"
.LASF39:
	.string	"mbedtls_sha512_context"
.LASF63:
	.string	"qcc74x_l1c_dcache_clean_range"
.LASF45:
	.string	"ilen"
.LASF13:
	.string	"uint8_t"
.LASF30:
	.string	"sha_msglen"
.LASF35:
	.string	"sha_padding"
.LASF56:
	.string	"qcc74x_sha512_link_finish"
.LASF29:
	.string	"sha_mode_ext"
.LASF32:
	.string	"result"
	.ident	"GCC: (GNU) 10.4.0"
