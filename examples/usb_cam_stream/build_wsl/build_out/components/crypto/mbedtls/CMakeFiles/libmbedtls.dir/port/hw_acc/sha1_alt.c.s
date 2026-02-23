	.file	"sha1_alt.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.mbedtls_sha1_init.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"sha"
	.section	.text.mbedtls_sha1_init,"ax",@progbits
	.align	1
	.globl	mbedtls_sha1_init
	.type	mbedtls_sha1_init, @function
mbedtls_sha1_init:
.LFB8:
	.file 1 "./components/crypto/mbedtls/port/hw_acc/sha1_alt.c"
	.loc 1 46 1
	.cfi_startproc
.LVL0:
	.loc 1 47 5
	.loc 1 47 10
	.loc 1 47 18
	.loc 1 49 5
	.loc 1 51 5
	.loc 1 46 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s1,4(sp)
	.cfi_offset 9, -12
	mv	s1,a0
	.loc 1 51 11
	lui	a0,%hi(.LC0)
.LVL1:
	addi	a0,a0,%lo(.LC0)
	.loc 1 46 1
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 51 11
	call	qcc74x_device_get_by_name
.LVL2:
	mv	s0,a0
.LVL3:
	.loc 1 53 5 is_stmt 1
	li	a1,288
	mv	a0,s1
	call	mbedtls_platform_zeroize
.LVL4:
	.loc 1 54 5
	.loc 1 56 5 is_stmt 0
	mv	a0,s0
	.loc 1 54 14
	sw	s0,0(s1)
	.loc 1 56 5 is_stmt 1
	call	qcc74x_group0_request_sha_access
.LVL5:
	.loc 1 57 5
	mv	a0,s0
	.loc 1 58 1 is_stmt 0
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
	.loc 1 57 5
	tail	qcc74x_sha_link_init
.LVL8:
	.cfi_endproc
.LFE8:
	.size	mbedtls_sha1_init, .-mbedtls_sha1_init
	.section	.text.mbedtls_sha1_free,"ax",@progbits
	.align	1
	.globl	mbedtls_sha1_free
	.type	mbedtls_sha1_free, @function
mbedtls_sha1_free:
.LFB9:
	.loc 1 61 1 is_stmt 1
	.cfi_startproc
.LVL9:
	.loc 1 62 5
	.loc 1 62 7 is_stmt 0
	beq	a0,zero,.L3
	.loc 1 65 5 is_stmt 1
	li	a1,288
	tail	mbedtls_platform_zeroize
.LVL10:
.L3:
	.loc 1 66 1 is_stmt 0
	ret
	.cfi_endproc
.LFE9:
	.size	mbedtls_sha1_free, .-mbedtls_sha1_free
	.section	.text.mbedtls_sha1_clone,"ax",@progbits
	.align	1
	.globl	mbedtls_sha1_clone
	.type	mbedtls_sha1_clone, @function
mbedtls_sha1_clone:
.LFB10:
	.loc 1 70 1 is_stmt 1
	.cfi_startproc
.LVL11:
	.loc 1 71 5
	.loc 1 71 10
	.loc 1 71 18
	.loc 1 72 5
	.loc 1 72 10
	.loc 1 72 18
	.loc 1 74 5
	.loc 1 70 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 74 10
	li	a2,288
	.loc 1 70 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 74 10
	call	memcpy
.LVL12:
	.loc 1 75 1
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	mbedtls_sha1_clone, .-mbedtls_sha1_clone
	.section	.text.mbedtls_sha1_starts_ret,"ax",@progbits
	.align	1
	.globl	mbedtls_sha1_starts_ret
	.type	mbedtls_sha1_starts_ret, @function
mbedtls_sha1_starts_ret:
.LFB11:
	.loc 1 81 1 is_stmt 1
	.cfi_startproc
.LVL13:
	.loc 1 82 5
	.loc 1 82 10
	.loc 1 82 18
	.loc 1 84 5
	.loc 1 84 7 is_stmt 0
	lw	a5,0(a0)
	.loc 1 81 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	sw	s1,4(sp)
	sw	s2,0(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 81 1
	mv	s0,a0
	.loc 1 84 7
	bne	a5,zero,.L8
	.loc 1 86 9 is_stmt 1
	.loc 1 86 20 is_stmt 0
	lui	a0,%hi(.LC0)
.LVL14:
	addi	a0,a0,%lo(.LC0)
	call	qcc74x_device_get_by_name
.LVL15:
	.loc 1 86 18
	sw	a0,0(s0)
.L8:
	.loc 1 89 5 is_stmt 1
	call	qcc74x_sec_sha_mutex_take
.LVL16:
	.loc 1 90 5
	.loc 1 90 28 is_stmt 0
	addi	s2,s0,32
	.loc 1 90 5
	lui	s1,%hi(.LANCHOR0)
	li	a2,256
	mv	a1,s2
	addi	a0,s1,%lo(.LANCHOR0)
	call	memcpy
.LVL17:
	.loc 1 91 5 is_stmt 1
	lw	a0,0(s0)
	addi	a1,s1,%lo(.LANCHOR0)
	call	qcc74x_sha1_link_start
.LVL18:
	.loc 1 92 5
	addi	a1,s1,%lo(.LANCHOR0)
	li	a2,256
	mv	a0,s2
	call	memcpy
.LVL19:
	.loc 1 93 5
	call	qcc74x_sec_sha_mutex_give
.LVL20:
	.loc 1 94 5
	.loc 1 95 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL21:
	lw	s1,4(sp)
	.cfi_restore 9
	lw	s2,0(sp)
	.cfi_restore 18
.LVL22:
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	mbedtls_sha1_starts_ret, .-mbedtls_sha1_starts_ret
	.section	.text.mbedtls_sha1_starts,"ax",@progbits
	.align	1
	.globl	mbedtls_sha1_starts
	.type	mbedtls_sha1_starts, @function
mbedtls_sha1_starts:
.LFB12:
	.loc 1 99 1 is_stmt 1
	.cfi_startproc
.LVL23:
	.loc 1 100 5
	tail	mbedtls_sha1_starts_ret
.LVL24:
	.cfi_endproc
.LFE12:
	.size	mbedtls_sha1_starts, .-mbedtls_sha1_starts
	.section	.text.mbedtls_sha1_update_ret,"ax",@progbits
	.align	1
	.globl	mbedtls_sha1_update_ret
	.type	mbedtls_sha1_update_ret, @function
mbedtls_sha1_update_ret:
.LFB13:
	.loc 1 110 1
	.cfi_startproc
.LVL25:
	.loc 1 112 5
	.loc 1 112 10
	.loc 1 112 18
	.loc 1 113 5
	.loc 1 113 10
	.loc 1 113 18
	.loc 1 115 5
	.loc 1 115 7 is_stmt 0
	beq	a2,zero,.L17
	.loc 1 110 1
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s1,36(sp)
	.cfi_offset 9, -12
	mv	s1,a1
	sw	s0,40(sp)
.LBB4:
.LBB5:
	.loc 1 118 5
	mv	a1,a2
.LVL26:
	.cfi_offset 8, -8
	mv	s0,a0
.LVL27:
	.loc 1 118 5 is_stmt 1
	mv	a0,s1
.LVL28:
.LBE5:
.LBE4:
	.loc 1 110 1 is_stmt 0
	sw	ra,44(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	.cfi_offset 19, -20
.LBB7:
.LBB6:
	.loc 1 118 5
	sw	a2,12(sp)
	call	qcc74x_l1c_dcache_clean_range
.LVL29:
	.loc 1 119 5 is_stmt 1
	call	qcc74x_sec_sha_mutex_take
.LVL30:
	.loc 1 120 5
	.loc 1 120 28 is_stmt 0
	addi	s3,s0,32
	.loc 1 120 5
	lui	s2,%hi(.LANCHOR0)
	mv	a1,s3
	li	a2,256
	addi	a0,s2,%lo(.LANCHOR0)
	call	memcpy
.LVL31:
	.loc 1 121 5 is_stmt 1
	lw	a3,12(sp)
	lw	a0,0(s0)
	mv	a2,s1
	addi	a1,s2,%lo(.LANCHOR0)
	call	qcc74x_sha1_link_update
.LVL32:
	.loc 1 122 5
	addi	a1,s2,%lo(.LANCHOR0)
	li	a2,256
	mv	a0,s3
	call	memcpy
.LVL33:
	.loc 1 123 5
	call	qcc74x_sec_sha_mutex_give
.LVL34:
	.loc 1 124 5
.LBE6:
.LBE7:
	.loc 1 125 1 is_stmt 0
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
.LVL35:
	lw	s1,36(sp)
	.cfi_restore 9
.LVL36:
	lw	s2,32(sp)
	.cfi_restore 18
	lw	s3,28(sp)
	.cfi_restore 19
.LVL37:
	li	a0,0
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
.LVL38:
	jr	ra
.LVL39:
.L17:
	li	a0,0
.LVL40:
	ret
	.cfi_endproc
.LFE13:
	.size	mbedtls_sha1_update_ret, .-mbedtls_sha1_update_ret
	.section	.text.mbedtls_sha1_update,"ax",@progbits
	.align	1
	.globl	mbedtls_sha1_update
	.type	mbedtls_sha1_update, @function
mbedtls_sha1_update:
.LFB14:
	.loc 1 131 1 is_stmt 1
	.cfi_startproc
.LVL41:
	.loc 1 132 5
	tail	mbedtls_sha1_update_ret
.LVL42:
	.cfi_endproc
.LFE14:
	.size	mbedtls_sha1_update, .-mbedtls_sha1_update
	.section	.text.mbedtls_sha1_finish_ret,"ax",@progbits
	.align	1
	.globl	mbedtls_sha1_finish_ret
	.type	mbedtls_sha1_finish_ret, @function
mbedtls_sha1_finish_ret:
.LFB15:
	.loc 1 141 1
	.cfi_startproc
.LVL43:
	.loc 1 144 5
	.loc 1 144 10
	.loc 1 144 18
	.loc 1 145 5
	.loc 1 145 10
	.loc 1 145 18
	.loc 1 147 5
	.loc 1 141 1 is_stmt 0
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
	.loc 1 141 1
	mv	s0,a0
	mv	s2,a1
	.loc 1 148 5
	lui	s1,%hi(.LANCHOR0)
	.loc 1 147 5
	call	qcc74x_sec_sha_mutex_take
.LVL44:
	.loc 1 148 5 is_stmt 1
	addi	a1,s0,32
	li	a2,256
	addi	a0,s1,%lo(.LANCHOR0)
	call	memcpy
.LVL45:
	.loc 1 149 5
	lw	a0,0(s0)
	mv	a2,s2
	addi	a1,s1,%lo(.LANCHOR0)
	call	qcc74x_sha1_link_finish
.LVL46:
	.loc 1 150 5
	call	qcc74x_sec_sha_mutex_give
.LVL47:
	.loc 1 151 5
	.loc 1 152 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL48:
	lw	s1,4(sp)
	.cfi_restore 9
	lw	s2,0(sp)
	.cfi_restore 18
.LVL49:
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE15:
	.size	mbedtls_sha1_finish_ret, .-mbedtls_sha1_finish_ret
	.section	.text.mbedtls_sha1_finish,"ax",@progbits
	.align	1
	.globl	mbedtls_sha1_finish
	.type	mbedtls_sha1_finish, @function
mbedtls_sha1_finish:
.LFB16:
	.loc 1 157 1 is_stmt 1
	.cfi_startproc
.LVL50:
	.loc 1 158 5
	tail	mbedtls_sha1_finish_ret
.LVL51:
	.cfi_endproc
.LFE16:
	.size	mbedtls_sha1_finish, .-mbedtls_sha1_finish
	.section	.text.mbedtls_sha1_once_padded_init,"ax",@progbits
	.align	1
	.globl	mbedtls_sha1_once_padded_init
	.type	mbedtls_sha1_once_padded_init, @function
mbedtls_sha1_once_padded_init:
.LFB17:
	.loc 1 163 1
	.cfi_startproc
	.loc 1 164 5
	.loc 1 165 5
	.loc 1 165 11 is_stmt 0
	lui	a0,%hi(.LC0)
	.loc 1 163 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 165 11
	addi	a0,a0,%lo(.LC0)
	.loc 1 163 1
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 165 11
	call	qcc74x_device_get_by_name
.LVL52:
	sw	a0,12(sp)
.LVL53:
	.loc 1 166 5 is_stmt 1
	call	qcc74x_group0_request_sha_access
.LVL54:
	.loc 1 168 5
	lw	a0,12(sp)
	call	qcc74x_sha_link_deinit
.LVL55:
	.loc 1 169 5
	lw	a0,12(sp)
	.loc 1 170 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	.loc 1 169 5
	li	a1,2
	.loc 1 170 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL56:
	.loc 1 169 5
	tail	qcc74x_sha_init
.LVL57:
	.cfi_endproc
.LFE17:
	.size	mbedtls_sha1_once_padded_init, .-mbedtls_sha1_once_padded_init
	.section	.text.mbedtls_sha1_once_padded,"ax",@progbits
	.align	1
	.globl	mbedtls_sha1_once_padded
	.type	mbedtls_sha1_once_padded, @function
mbedtls_sha1_once_padded:
.LFB18:
	.loc 1 173 1 is_stmt 1
	.cfi_startproc
.LVL58:
	.loc 1 174 5
	.loc 1 175 5
	.loc 1 173 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	.cfi_offset 8, -8
	mv	s0,a0
	.loc 1 175 11
	lui	a0,%hi(.LC0)
.LVL59:
	addi	a0,a0,%lo(.LC0)
	.loc 1 173 1
	sw	ra,28(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.loc 1 173 1
	mv	s1,a2
	mv	s3,a1
	.loc 1 175 11
	call	qcc74x_device_get_by_name
.LVL60:
	.loc 1 176 5
	slli	a1,s1,6
	.loc 1 175 11
	mv	s2,a0
.LVL61:
	.loc 1 176 5 is_stmt 1
	mv	a0,s0
.LVL62:
	call	qcc74x_l1c_dcache_clean_range
.LVL63:
	.loc 1 177 5
	call	qcc74x_sec_sha_mutex_take
.LVL64:
	.loc 1 178 5
	.loc 1 178 63 is_stmt 0
	li	a1,268435456
	addi	a1,a1,-1
	and	s0,s0,a1
.LVL65:
	.loc 1 178 5
	li	a1,536870912
	mv	a3,s1
	mv	a2,s3
	or	a1,s0,a1
	mv	a0,s2
	call	qcc74x_sha1_once_padded
.LVL66:
	.loc 1 179 5 is_stmt 1
	call	qcc74x_sec_sha_mutex_give
.LVL67:
	.loc 1 180 5
	.loc 1 181 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
.LVL68:
	lw	s3,12(sp)
	.cfi_restore 19
.LVL69:
	li	a0,0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE18:
	.size	mbedtls_sha1_once_padded, .-mbedtls_sha1_once_padded
	.section	.nocache_noinit_ram,"aw"
	.align	5
	.set	.LANCHOR0,. + 0
	.type	link_ctx_temp, @object
	.size	link_ctx_temp, 256
link_ctx_temp:
	.zero	256
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/lib/gcc/riscv64-unknown-elf/10.4.0/include/stddef.h"
	.file 4 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 5 "./drivers/lhal/include/qcc74x_core.h"
	.file 6 "./drivers/lhal/include/qcc74x_sec_sha.h"
	.file 7 "./components/crypto/mbedtls/port/hw_acc/sha1_alt.h"
	.file 8 "./drivers/lhal/include/qcc74x_l1c.h"
	.file 9 "./components/crypto/mbedtls/port/sec_mutex.h"
	.file 10 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/string.h"
	.file 11 "./components/crypto/mbedtls/mbedtls/include/mbedtls/platform_util.h"
	.file 12 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x90f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF68
	.byte	0xc
	.4byte	.LASF69
	.4byte	.LASF70
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
	.byte	0x4
	.4byte	0x26b
	.byte	0x11
	.4byte	.LASF42
	.byte	0x1
	.byte	0x2b
	.byte	0x56
	.4byte	0x1e7
	.byte	0x5
	.byte	0x3
	.4byte	link_ctx_temp
	.byte	0x12
	.4byte	.LASF45
	.byte	0x1
	.byte	0xac
	.byte	0x5
	.4byte	0x7a
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.4byte	0x359
	.byte	0x13
	.4byte	.LASF39
	.byte	0x1
	.byte	0xac
	.byte	0x33
	.4byte	0x359
	.4byte	.LLST21
	.byte	0x13
	.4byte	.LASF40
	.byte	0x1
	.byte	0xac
	.byte	0x49
	.4byte	0xae
	.4byte	.LLST22
	.byte	0x13
	.4byte	.LASF41
	.byte	0x1
	.byte	0xac
	.byte	0x5f
	.4byte	0x38
	.4byte	.LLST23
	.byte	0x14
	.string	"sha"
	.byte	0x1
	.byte	0xae
	.byte	0x1d
	.4byte	0x265
	.4byte	.LLST24
	.byte	0x15
	.4byte	.LVL60
	.4byte	0x85c
	.4byte	0x300
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x15
	.4byte	.LVL63
	.4byte	0x868
	.4byte	0x31c
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x4
	.byte	0x79
	.byte	0
	.byte	0x36
	.byte	0x24
	.byte	0
	.byte	0x17
	.4byte	.LVL64
	.4byte	0x874
	.byte	0x15
	.4byte	.LVL66
	.4byte	0x880
	.4byte	0x34f
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x6
	.byte	0x78
	.byte	0
	.byte	0x40
	.byte	0x49
	.byte	0x24
	.byte	0x21
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.LVL67
	.4byte	0x88d
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x3f
	.byte	0x18
	.4byte	.LASF43
	.byte	0x1
	.byte	0xa2
	.byte	0x6
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.4byte	0x3dd
	.byte	0x14
	.string	"sha"
	.byte	0x1
	.byte	0xa4
	.byte	0x1d
	.4byte	0x265
	.4byte	.LLST20
	.byte	0x15
	.4byte	.LVL52
	.4byte	0x85c
	.4byte	0x39c
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x15
	.4byte	.LVL54
	.4byte	0x899
	.4byte	0x3b1
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0
	.byte	0x15
	.4byte	.LVL55
	.4byte	0x8a6
	.4byte	0x3c6
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0
	.byte	0x19
	.4byte	.LVL57
	.4byte	0x8b2
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x72
	.byte	0x6c
	.byte	0x6
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LASF44
	.byte	0x1
	.byte	0x9b
	.byte	0x6
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0x42c
	.byte	0x1a
	.string	"ctx"
	.byte	0x1
	.byte	0x9b
	.byte	0x31
	.4byte	0x42c
	.4byte	.LLST18
	.byte	0x13
	.4byte	.LASF40
	.byte	0x1
	.byte	0x9c
	.byte	0x29
	.4byte	0xae
	.4byte	.LLST19
	.byte	0x19
	.4byte	.LVL51
	.4byte	0x432
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x16
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
	.4byte	0x26b
	.byte	0x12
	.4byte	.LASF46
	.byte	0x1
	.byte	0x8b
	.byte	0x5
	.4byte	0x7a
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x4c0
	.byte	0x1a
	.string	"ctx"
	.byte	0x1
	.byte	0x8b
	.byte	0x34
	.4byte	0x42c
	.4byte	.LLST16
	.byte	0x13
	.4byte	.LASF40
	.byte	0x1
	.byte	0x8c
	.byte	0x2c
	.4byte	0xae
	.4byte	.LLST17
	.byte	0x17
	.4byte	.LVL44
	.4byte	0x874
	.byte	0x15
	.4byte	.LVL45
	.4byte	0x8be
	.4byte	0x499
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x20
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.byte	0x15
	.4byte	.LVL46
	.4byte	0x8ca
	.4byte	0x4b6
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.LVL47
	.4byte	0x88d
	.byte	0
	.byte	0x18
	.4byte	.LASF47
	.byte	0x1
	.byte	0x80
	.byte	0x6
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x526
	.byte	0x1a
	.string	"ctx"
	.byte	0x1
	.byte	0x80
	.byte	0x31
	.4byte	0x42c
	.4byte	.LLST13
	.byte	0x13
	.4byte	.LASF39
	.byte	0x1
	.byte	0x81
	.byte	0x30
	.4byte	0x359
	.4byte	.LLST14
	.byte	0x13
	.4byte	.LASF48
	.byte	0x1
	.byte	0x82
	.byte	0x22
	.4byte	0x88
	.4byte	.LLST15
	.byte	0x19
	.4byte	.LVL42
	.4byte	0x526
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LASF71
	.byte	0x1
	.byte	0x6b
	.byte	0x5
	.4byte	0x7a
	.byte	0x1
	.4byte	0x55c
	.byte	0x1c
	.string	"ctx"
	.byte	0x1
	.byte	0x6b
	.byte	0x34
	.4byte	0x42c
	.byte	0x1d
	.4byte	.LASF39
	.byte	0x1
	.byte	0x6c
	.byte	0x33
	.4byte	0x359
	.byte	0x1d
	.4byte	.LASF48
	.byte	0x1
	.byte	0x6d
	.byte	0x25
	.4byte	0x88
	.byte	0
	.byte	0x18
	.4byte	.LASF49
	.byte	0x1
	.byte	0x62
	.byte	0x6
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x594
	.byte	0x1a
	.string	"ctx"
	.byte	0x1
	.byte	0x62
	.byte	0x31
	.4byte	0x42c
	.4byte	.LLST6
	.byte	0x19
	.4byte	.LVL24
	.4byte	0x594
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LASF50
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.4byte	0x7a
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x647
	.byte	0x1a
	.string	"ctx"
	.byte	0x1
	.byte	0x50
	.byte	0x34
	.4byte	0x42c
	.4byte	.LLST5
	.byte	0x15
	.4byte	.LVL15
	.4byte	0x85c
	.4byte	0x5d5
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x17
	.4byte	.LVL16
	.4byte	0x874
	.byte	0x15
	.4byte	.LVL17
	.4byte	0x8be
	.4byte	0x602
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.byte	0x15
	.4byte	.LVL18
	.4byte	0x8d7
	.4byte	0x619
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0x15
	.4byte	.LVL19
	.4byte	0x8be
	.4byte	0x63d
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.byte	0x17
	.4byte	.LVL20
	.4byte	0x88d
	.byte	0
	.byte	0x18
	.4byte	.LASF51
	.byte	0x1
	.byte	0x44
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x69d
	.byte	0x1a
	.string	"dst"
	.byte	0x1
	.byte	0x44
	.byte	0x30
	.4byte	0x42c
	.4byte	.LLST3
	.byte	0x1a
	.string	"src"
	.byte	0x1
	.byte	0x45
	.byte	0x36
	.4byte	0x69d
	.4byte	.LLST4
	.byte	0x1e
	.4byte	.LVL12
	.4byte	0x8e3
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x120
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x278
	.byte	0x18
	.4byte	.LASF52
	.byte	0x1
	.byte	0x3c
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x6e2
	.byte	0x1a
	.string	"ctx"
	.byte	0x1
	.byte	0x3c
	.byte	0x2f
	.4byte	0x42c
	.4byte	.LLST2
	.byte	0x19
	.4byte	.LVL10
	.4byte	0x8ee
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xa
	.2byte	0x120
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LASF53
	.byte	0x1
	.byte	0x2d
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x768
	.byte	0x1a
	.string	"ctx"
	.byte	0x1
	.byte	0x2d
	.byte	0x2f
	.4byte	0x42c
	.4byte	.LLST0
	.byte	0x14
	.string	"sha"
	.byte	0x1
	.byte	0x31
	.byte	0x1d
	.4byte	0x265
	.4byte	.LLST1
	.byte	0x15
	.4byte	.LVL2
	.4byte	0x85c
	.4byte	0x72f
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x15
	.4byte	.LVL4
	.4byte	0x8ee
	.4byte	0x74a
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xa
	.2byte	0x120
	.byte	0
	.byte	0x15
	.4byte	.LVL5
	.4byte	0x899
	.4byte	0x75e
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL8
	.4byte	0x8fa
	.byte	0
	.byte	0x20
	.4byte	0x526
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x85c
	.byte	0x21
	.4byte	0x537
	.4byte	.LLST7
	.byte	0x21
	.4byte	0x543
	.4byte	.LLST8
	.byte	0x21
	.4byte	0x54f
	.4byte	.LLST9
	.byte	0x22
	.4byte	0x526
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x6b
	.byte	0x5
	.byte	0x21
	.4byte	0x54f
	.4byte	.LLST10
	.byte	0x21
	.4byte	0x543
	.4byte	.LLST11
	.byte	0x21
	.4byte	0x537
	.4byte	.LLST12
	.byte	0x15
	.4byte	.LVL29
	.4byte	0x868
	.4byte	0x7dc
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x5c
	.byte	0x6
	.byte	0
	.byte	0x17
	.4byte	.LVL30
	.4byte	0x874
	.byte	0x15
	.4byte	.LVL31
	.4byte	0x8be
	.4byte	0x809
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.byte	0x15
	.4byte	.LVL32
	.4byte	0x906
	.4byte	0x82d
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x91
	.byte	0x5c
	.byte	0x6
	.byte	0
	.byte	0x15
	.4byte	.LVL33
	.4byte	0x8be
	.4byte	0x851
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.byte	0x17
	.4byte	.LVL34
	.4byte	0x88d
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x5
	.byte	0x7b
	.byte	0x19
	.byte	0x23
	.4byte	.LASF55
	.4byte	.LASF55
	.byte	0x8
	.byte	0x4c
	.byte	0x6
	.byte	0x23
	.4byte	.LASF56
	.4byte	.LASF56
	.byte	0x9
	.byte	0x9
	.byte	0x5
	.byte	0x24
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0x6
	.2byte	0x160
	.byte	0x5
	.byte	0x23
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0x9
	.byte	0xa
	.byte	0x5
	.byte	0x24
	.4byte	.LASF59
	.4byte	.LASF59
	.byte	0x6
	.2byte	0x144
	.byte	0x6
	.byte	0x23
	.4byte	.LASF60
	.4byte	.LASF60
	.byte	0x6
	.byte	0xd7
	.byte	0x6
	.byte	0x23
	.4byte	.LASF61
	.4byte	.LASF61
	.byte	0x6
	.byte	0x75
	.byte	0x6
	.byte	0x23
	.4byte	.LASF62
	.4byte	.LASF62
	.byte	0xa
	.byte	0x1f
	.byte	0x8
	.byte	0x24
	.4byte	.LASF63
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x125
	.byte	0x6
	.byte	0x23
	.4byte	.LASF64
	.4byte	.LASF64
	.byte	0x6
	.byte	0xe0
	.byte	0x6
	.byte	0x25
	.4byte	.LASF62
	.4byte	.LASF72
	.byte	0xc
	.byte	0
	.byte	0x23
	.4byte	.LASF65
	.4byte	.LASF65
	.byte	0xb
	.byte	0xef
	.byte	0x6
	.byte	0x23
	.4byte	.LASF66
	.4byte	.LASF66
	.byte	0x6
	.byte	0xd0
	.byte	0x6
	.byte	0x23
	.4byte	.LASF67
	.4byte	.LASF67
	.byte	0x6
	.byte	0xfd
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
	.byte	0x13
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
	.byte	0x16
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
	.byte	0x20
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
	.byte	0x21
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x22
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
	.byte	0x23
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
	.byte	0x5
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
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST21:
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL59
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL65
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL58
	.4byte	.LVL60-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL60-1
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL69
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL58
	.4byte	.LVL60-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL60-1
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL62
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL53
	.4byte	.LVL54-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL54-1
	.4byte	.LVL56
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL56
	.4byte	.LFE17
	.2byte	0x2
	.byte	0x72
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL50
	.4byte	.LVL51-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL51-1
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL50
	.4byte	.LVL51-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL51-1
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL43
	.4byte	.LVL44-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL44-1
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL48
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL43
	.4byte	.LVL44-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL44-1
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL49
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL41
	.4byte	.LVL42-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL42-1
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL41
	.4byte	.LVL42-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL42-1
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL41
	.4byte	.LVL42-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL42-1
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL23
	.4byte	.LVL24-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24-1
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
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
.LLST7:
	.4byte	.LVL25
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x3
	.byte	0x83
	.byte	0x60
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL40
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL26
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL36
	.4byte	.LVL39
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL25
	.4byte	.LVL29-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL29-1
	.4byte	.LVL38
	.2byte	0x2
	.byte	0x91
	.byte	0x5c
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x2
	.byte	0x72
	.byte	0x5c
	.4byte	.LVL39
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL27
	.4byte	.LVL29-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL29-1
	.4byte	.LVL34
	.2byte	0x2
	.byte	0x91
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL27
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x6c
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
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
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
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF20:
	.string	"user_data"
.LASF64:
	.string	"qcc74x_sha1_link_start"
.LASF11:
	.string	"size_t"
.LASF52:
	.string	"mbedtls_sha1_free"
.LASF5:
	.string	"__uint8_t"
.LASF60:
	.string	"qcc74x_sha_link_deinit"
.LASF22:
	.string	"qcc74x_sha_link_s"
.LASF9:
	.string	"long long unsigned int"
.LASF59:
	.string	"qcc74x_group0_request_sha_access"
.LASF67:
	.string	"qcc74x_sha1_link_update"
.LASF25:
	.string	"sha_intclr"
.LASF18:
	.string	"sub_idx"
.LASF8:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF32:
	.string	"sha_buf"
.LASF4:
	.string	"long int"
.LASF71:
	.string	"mbedtls_sha1_update_ret"
.LASF62:
	.string	"memcpy"
.LASF56:
	.string	"qcc74x_sec_sha_mutex_take"
.LASF37:
	.string	"mbedtls_sha1_context"
.LASF50:
	.string	"mbedtls_sha1_starts_ret"
.LASF38:
	.string	"link_ctx"
.LASF34:
	.string	"link_addr"
.LASF6:
	.string	"__uint32_t"
.LASF36:
	.string	"qcc74x_sha1_link_ctx_s"
.LASF26:
	.string	"sha_intset"
.LASF10:
	.string	"unsigned int"
.LASF7:
	.string	"long unsigned int"
.LASF29:
	.string	"sha_srcaddr"
.LASF15:
	.string	"name"
.LASF3:
	.string	"short unsigned int"
.LASF24:
	.string	"sha_newhash_dis"
.LASF35:
	.string	"link_cfg"
.LASF47:
	.string	"mbedtls_sha1_update"
.LASF42:
	.string	"link_ctx_temp"
.LASF72:
	.string	"__builtin_memcpy"
.LASF31:
	.string	"total"
.LASF68:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF57:
	.string	"qcc74x_sha1_once_padded"
.LASF40:
	.string	"output"
.LASF61:
	.string	"qcc74x_sha_init"
.LASF16:
	.string	"reg_base"
.LASF43:
	.string	"mbedtls_sha1_once_padded_init"
.LASF49:
	.string	"mbedtls_sha1_starts"
.LASF1:
	.string	"unsigned char"
.LASF41:
	.string	"nblock"
.LASF58:
	.string	"qcc74x_sec_sha_mutex_give"
.LASF69:
	.string	"./components/crypto/mbedtls/port/hw_acc/sha1_alt.c"
.LASF2:
	.string	"short int"
.LASF63:
	.string	"qcc74x_sha1_link_finish"
.LASF70:
	.string	"./examples/usb_cam_stream/build_wsl/build_out/components/crypto/mbedtls"
.LASF39:
	.string	"input"
.LASF54:
	.string	"qcc74x_device_get_by_name"
.LASF13:
	.string	"uint32_t"
.LASF17:
	.string	"irq_num"
.LASF23:
	.string	"sha_mode"
.LASF14:
	.string	"char"
.LASF51:
	.string	"mbedtls_sha1_clone"
.LASF65:
	.string	"mbedtls_platform_zeroize"
.LASF45:
	.string	"mbedtls_sha1_once_padded"
.LASF19:
	.string	"dev_type"
.LASF66:
	.string	"qcc74x_sha_link_init"
.LASF21:
	.string	"qcc74x_device_s"
.LASF55:
	.string	"qcc74x_l1c_dcache_clean_range"
.LASF46:
	.string	"mbedtls_sha1_finish_ret"
.LASF48:
	.string	"ilen"
.LASF12:
	.string	"uint8_t"
.LASF28:
	.string	"sha_msglen"
.LASF33:
	.string	"sha_padding"
.LASF27:
	.string	"sha_mode_ext"
.LASF30:
	.string	"result"
.LASF44:
	.string	"mbedtls_sha1_finish"
.LASF53:
	.string	"mbedtls_sha1_init"
	.ident	"GCC: (GNU) 10.4.0"
