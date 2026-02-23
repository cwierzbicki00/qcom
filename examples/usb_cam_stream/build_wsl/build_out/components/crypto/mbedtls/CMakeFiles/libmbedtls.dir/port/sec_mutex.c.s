	.file	"sec_mutex.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.qcc74x_sec_mutex_init,"ax",@progbits
	.align	1
	.globl	qcc74x_sec_mutex_init
	.type	qcc74x_sec_mutex_init, @function
qcc74x_sec_mutex_init:
.LFB6:
	.file 1 "./components/crypto/mbedtls/port/sec_mutex.c"
	.loc 1 17 1
	.cfi_startproc
	.loc 1 18 5
	.loc 1 18 17 is_stmt 0
	lui	a1,%hi(.LANCHOR0)
	.loc 1 17 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 18 17
	addi	a1,a1,%lo(.LANCHOR0)
	li	a0,1
	.loc 1 17 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 18 17
	call	xQueueCreateMutexStatic
.LVL0:
	.loc 1 18 15
	lui	a5,%hi(.LANCHOR1)
	.loc 1 19 17
	lui	a1,%hi(.LANCHOR2)
	.loc 1 18 15
	sw	a0,%lo(.LANCHOR1)(a5)
	.loc 1 19 5 is_stmt 1
	.loc 1 19 17 is_stmt 0
	addi	a1,a1,%lo(.LANCHOR2)
	li	a0,1
	call	xQueueCreateMutexStatic
.LVL1:
	.loc 1 19 15
	lui	a5,%hi(.LANCHOR3)
	.loc 1 20 17
	lui	a1,%hi(.LANCHOR4)
	.loc 1 19 15
	sw	a0,%lo(.LANCHOR3)(a5)
	.loc 1 20 5 is_stmt 1
	.loc 1 20 17 is_stmt 0
	addi	a1,a1,%lo(.LANCHOR4)
	li	a0,1
	call	xQueueCreateMutexStatic
.LVL2:
	.loc 1 21 1
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 20 15
	lui	a5,%hi(.LANCHOR5)
	sw	a0,%lo(.LANCHOR5)(a5)
	.loc 1 21 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	qcc74x_sec_mutex_init, .-qcc74x_sec_mutex_init
	.section	.text.qcc74x_sec_aes_mutex_take,"ax",@progbits
	.align	1
	.globl	qcc74x_sec_aes_mutex_take
	.type	qcc74x_sec_aes_mutex_take, @function
qcc74x_sec_aes_mutex_take:
.LFB7:
	.loc 1 24 1 is_stmt 1
	.cfi_startproc
	.loc 1 25 5
	.loc 1 25 37 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	lw	a0,%lo(.LANCHOR1)(a5)
	.loc 1 24 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 25 37
	li	a1,-1
	.loc 1 24 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 25 37
	call	xQueueSemaphoreTake
.LVL3:
	.loc 1 29 1
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 25 8
	addi	a0,a0,-1
	snez	a0,a0
	.loc 1 29 1
	neg	a0,a0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	qcc74x_sec_aes_mutex_take, .-qcc74x_sec_aes_mutex_take
	.section	.text.qcc74x_sec_aes_mutex_give,"ax",@progbits
	.align	1
	.globl	qcc74x_sec_aes_mutex_give
	.type	qcc74x_sec_aes_mutex_give, @function
qcc74x_sec_aes_mutex_give:
.LFB8:
	.loc 1 32 1 is_stmt 1
	.cfi_startproc
	.loc 1 33 5
	.loc 1 33 37 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	lw	a0,%lo(.LANCHOR1)(a5)
	.loc 1 32 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 33 37
	li	a3,0
	li	a2,0
	li	a1,0
	.loc 1 32 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 33 37
	call	xQueueGenericSend
.LVL4:
	.loc 1 37 1
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 33 8
	addi	a0,a0,-1
	snez	a0,a0
	.loc 1 37 1
	neg	a0,a0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	qcc74x_sec_aes_mutex_give, .-qcc74x_sec_aes_mutex_give
	.section	.text.qcc74x_sec_sha_mutex_take,"ax",@progbits
	.align	1
	.globl	qcc74x_sec_sha_mutex_take
	.type	qcc74x_sec_sha_mutex_take, @function
qcc74x_sec_sha_mutex_take:
.LFB9:
	.loc 1 40 1 is_stmt 1
	.cfi_startproc
	.loc 1 41 5
	.loc 1 41 37 is_stmt 0
	lui	a5,%hi(.LANCHOR3)
	lw	a0,%lo(.LANCHOR3)(a5)
	.loc 1 40 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 41 37
	li	a1,-1
	.loc 1 40 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 41 37
	call	xQueueSemaphoreTake
.LVL5:
	.loc 1 45 1
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 41 8
	addi	a0,a0,-1
	snez	a0,a0
	.loc 1 45 1
	neg	a0,a0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	qcc74x_sec_sha_mutex_take, .-qcc74x_sec_sha_mutex_take
	.section	.text.qcc74x_sec_sha_mutex_give,"ax",@progbits
	.align	1
	.globl	qcc74x_sec_sha_mutex_give
	.type	qcc74x_sec_sha_mutex_give, @function
qcc74x_sec_sha_mutex_give:
.LFB10:
	.loc 1 48 1 is_stmt 1
	.cfi_startproc
	.loc 1 49 5
	.loc 1 49 37 is_stmt 0
	lui	a5,%hi(.LANCHOR3)
	lw	a0,%lo(.LANCHOR3)(a5)
	.loc 1 48 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 49 37
	li	a3,0
	li	a2,0
	li	a1,0
	.loc 1 48 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 49 37
	call	xQueueGenericSend
.LVL6:
	.loc 1 53 1
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 49 8
	addi	a0,a0,-1
	snez	a0,a0
	.loc 1 53 1
	neg	a0,a0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	qcc74x_sec_sha_mutex_give, .-qcc74x_sec_sha_mutex_give
	.section	.text.qcc74x_sec_pka_mutex_take,"ax",@progbits
	.align	1
	.globl	qcc74x_sec_pka_mutex_take
	.type	qcc74x_sec_pka_mutex_take, @function
qcc74x_sec_pka_mutex_take:
.LFB11:
	.loc 1 56 1 is_stmt 1
	.cfi_startproc
	.loc 1 57 5
	.loc 1 57 37 is_stmt 0
	lui	a5,%hi(.LANCHOR5)
	lw	a0,%lo(.LANCHOR5)(a5)
	.loc 1 56 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 57 37
	li	a1,-1
	.loc 1 56 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 57 37
	call	xQueueSemaphoreTake
.LVL7:
	.loc 1 61 1
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 57 8
	addi	a0,a0,-1
	snez	a0,a0
	.loc 1 61 1
	neg	a0,a0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	qcc74x_sec_pka_mutex_take, .-qcc74x_sec_pka_mutex_take
	.section	.text.qcc74x_sec_pka_mutex_give,"ax",@progbits
	.align	1
	.globl	qcc74x_sec_pka_mutex_give
	.type	qcc74x_sec_pka_mutex_give, @function
qcc74x_sec_pka_mutex_give:
.LFB12:
	.loc 1 64 1 is_stmt 1
	.cfi_startproc
	.loc 1 65 5
	.loc 1 65 37 is_stmt 0
	lui	a5,%hi(.LANCHOR5)
	lw	a0,%lo(.LANCHOR5)(a5)
	.loc 1 64 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 65 37
	li	a3,0
	li	a2,0
	li	a1,0
	.loc 1 64 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 65 37
	call	xQueueGenericSend
.LVL8:
	.loc 1 69 1
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 65 8
	addi	a0,a0,-1
	snez	a0,a0
	.loc 1 69 1
	neg	a0,a0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE12:
	.size	qcc74x_sec_pka_mutex_give, .-qcc74x_sec_pka_mutex_give
	.section	.bss.aes_mutex,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	aes_mutex, @object
	.size	aes_mutex, 4
aes_mutex:
	.zero	4
	.section	.bss.aes_mutex_buf,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	aes_mutex_buf, @object
	.size	aes_mutex_buf, 80
aes_mutex_buf:
	.zero	80
	.section	.bss.pka_mutex,"aw",@nobits
	.align	2
	.set	.LANCHOR5,. + 0
	.type	pka_mutex, @object
	.size	pka_mutex, 4
pka_mutex:
	.zero	4
	.section	.bss.pka_mutex_buf,"aw",@nobits
	.align	2
	.set	.LANCHOR4,. + 0
	.type	pka_mutex_buf, @object
	.size	pka_mutex_buf, 80
pka_mutex_buf:
	.zero	80
	.section	.bss.sha_mutex,"aw",@nobits
	.align	2
	.set	.LANCHOR3,. + 0
	.type	sha_mutex, @object
	.size	sha_mutex, 4
sha_mutex:
	.zero	4
	.section	.bss.sha_mutex_buf,"aw",@nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	sha_mutex_buf, @object
	.size	sha_mutex_buf, 80
sha_mutex_buf:
	.zero	80
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./components/os/freertos/portable/GCC/RISC-V/common/portmacro.h"
	.file 5 "./components/os/freertos/include/FreeRTOS.h"
	.file 6 "./components/os/freertos/include/queue.h"
	.file 7 "./components/os/freertos/include/semphr.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x4a1
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF55
	.byte	0xc
	.4byte	.LASF56
	.4byte	.LASF57
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF4
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
	.byte	0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x4d
	.byte	0x12
	.4byte	0x59
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.byte	0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x6c
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
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
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x2c
	.byte	0x13
	.4byte	0x4d
	.byte	0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x60
	.byte	0x5
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.byte	0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x42
	.byte	0x11
	.4byte	0x9b
	.byte	0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x43
	.byte	0x12
	.4byte	0xa7
	.byte	0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x44
	.byte	0x12
	.4byte	0xa7
	.byte	0x6
	.4byte	.LASF22
	.byte	0xc
	.byte	0x5
	.2byte	0x4db
	.byte	0xc
	.4byte	0x10b
	.byte	0x7
	.4byte	.LASF19
	.byte	0x5
	.2byte	0x4e0
	.byte	0x14
	.4byte	0xd4
	.byte	0
	.byte	0x7
	.4byte	.LASF20
	.byte	0x5
	.2byte	0x4e1
	.byte	0x10
	.4byte	0x10b
	.byte	0x4
	.byte	0
	.byte	0x8
	.4byte	0xb3
	.4byte	0x11b
	.byte	0x9
	.4byte	0x88
	.byte	0x1
	.byte	0
	.byte	0xa
	.4byte	.LASF21
	.byte	0x5
	.2byte	0x4e3
	.byte	0x2b
	.4byte	0xe0
	.byte	0x6
	.4byte	.LASF23
	.byte	0x14
	.byte	0x5
	.2byte	0x4e9
	.byte	0x10
	.4byte	0x161
	.byte	0x7
	.4byte	.LASF24
	.byte	0x5
	.2byte	0x4ee
	.byte	0x11
	.4byte	0xc8
	.byte	0
	.byte	0x7
	.4byte	.LASF20
	.byte	0x5
	.2byte	0x4ef
	.byte	0xc
	.4byte	0xb3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF25
	.byte	0x5
	.2byte	0x4f0
	.byte	0x1a
	.4byte	0x11b
	.byte	0x8
	.byte	0
	.byte	0xa
	.4byte	.LASF26
	.byte	0x5
	.2byte	0x4f4
	.byte	0x3
	.4byte	0x128
	.byte	0xb
	.byte	0x4
	.byte	0x5
	.2byte	0x54d
	.byte	0x5
	.4byte	0x193
	.byte	0xc
	.4byte	.LASF27
	.byte	0x5
	.2byte	0x54f
	.byte	0x10
	.4byte	0xb3
	.byte	0xc
	.4byte	.LASF24
	.byte	0x5
	.2byte	0x550
	.byte	0x15
	.4byte	0xc8
	.byte	0
	.byte	0x6
	.4byte	.LASF28
	.byte	0x50
	.byte	0x5
	.2byte	0x549
	.byte	0x10
	.4byte	0x210
	.byte	0x7
	.4byte	.LASF29
	.byte	0x5
	.2byte	0x54b
	.byte	0xc
	.4byte	0x210
	.byte	0
	.byte	0xd
	.string	"u"
	.byte	0x5
	.2byte	0x551
	.byte	0x7
	.4byte	0x16e
	.byte	0xc
	.byte	0x7
	.4byte	.LASF30
	.byte	0x5
	.2byte	0x553
	.byte	0x12
	.4byte	0x220
	.byte	0x10
	.byte	0x7
	.4byte	.LASF31
	.byte	0x5
	.2byte	0x554
	.byte	0x11
	.4byte	0x230
	.byte	0x38
	.byte	0x7
	.4byte	.LASF32
	.byte	0x5
	.2byte	0x555
	.byte	0xd
	.4byte	0x240
	.byte	0x44
	.byte	0x7
	.4byte	.LASF33
	.byte	0x5
	.2byte	0x558
	.byte	0x11
	.4byte	0x8f
	.byte	0x46
	.byte	0x7
	.4byte	.LASF34
	.byte	0x5
	.2byte	0x560
	.byte	0x15
	.4byte	0xc8
	.byte	0x48
	.byte	0x7
	.4byte	.LASF35
	.byte	0x5
	.2byte	0x561
	.byte	0x11
	.4byte	0x8f
	.byte	0x4c
	.byte	0
	.byte	0x8
	.4byte	0xb3
	.4byte	0x220
	.byte	0x9
	.4byte	0x88
	.byte	0x2
	.byte	0
	.byte	0x8
	.4byte	0x161
	.4byte	0x230
	.byte	0x9
	.4byte	0x88
	.byte	0x1
	.byte	0
	.byte	0x8
	.4byte	0xc8
	.4byte	0x240
	.byte	0x9
	.4byte	0x88
	.byte	0x2
	.byte	0
	.byte	0x8
	.4byte	0x8f
	.4byte	0x250
	.byte	0x9
	.4byte	0x88
	.byte	0x1
	.byte	0
	.byte	0xa
	.4byte	.LASF36
	.byte	0x5
	.2byte	0x563
	.byte	0x3
	.4byte	0x193
	.byte	0xa
	.4byte	.LASF37
	.byte	0x5
	.2byte	0x564
	.byte	0x17
	.4byte	0x250
	.byte	0x3
	.4byte	.LASF38
	.byte	0x6
	.byte	0x33
	.byte	0x22
	.4byte	0x276
	.byte	0xe
	.byte	0x4
	.4byte	0x27c
	.byte	0xf
	.4byte	.LASF58
	.byte	0x3
	.4byte	.LASF39
	.byte	0x7
	.byte	0x26
	.byte	0x17
	.4byte	0x26a
	.byte	0x10
	.4byte	.LASF40
	.byte	0x1
	.byte	0x7
	.byte	0x1a
	.4byte	0x25d
	.byte	0x5
	.byte	0x3
	.4byte	aes_mutex_buf
	.byte	0x10
	.4byte	.LASF41
	.byte	0x1
	.byte	0x8
	.byte	0x1a
	.4byte	0x281
	.byte	0x5
	.byte	0x3
	.4byte	aes_mutex
	.byte	0x10
	.4byte	.LASF42
	.byte	0x1
	.byte	0xa
	.byte	0x1a
	.4byte	0x25d
	.byte	0x5
	.byte	0x3
	.4byte	sha_mutex_buf
	.byte	0x10
	.4byte	.LASF43
	.byte	0x1
	.byte	0xb
	.byte	0x1a
	.4byte	0x281
	.byte	0x5
	.byte	0x3
	.4byte	sha_mutex
	.byte	0x10
	.4byte	.LASF44
	.byte	0x1
	.byte	0xd
	.byte	0x1a
	.4byte	0x25d
	.byte	0x5
	.byte	0x3
	.4byte	pka_mutex_buf
	.byte	0x10
	.4byte	.LASF45
	.byte	0x1
	.byte	0xe
	.byte	0x1a
	.4byte	0x281
	.byte	0x5
	.byte	0x3
	.4byte	pka_mutex
	.byte	0x11
	.4byte	.LASF46
	.byte	0x1
	.byte	0x3f
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x32d
	.byte	0x12
	.4byte	.LVL8
	.4byte	0x47d
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0x13
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LASF47
	.byte	0x1
	.byte	0x37
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x358
	.byte	0x12
	.4byte	.LVL7
	.4byte	0x48a
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LASF48
	.byte	0x1
	.byte	0x2f
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x38c
	.byte	0x12
	.4byte	.LVL6
	.4byte	0x47d
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0x13
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LASF49
	.byte	0x1
	.byte	0x27
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x3b7
	.byte	0x12
	.4byte	.LVL5
	.4byte	0x48a
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LASF50
	.byte	0x1
	.byte	0x1f
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x3eb
	.byte	0x12
	.4byte	.LVL4
	.4byte	0x47d
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0x13
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LASF51
	.byte	0x1
	.byte	0x17
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x416
	.byte	0x12
	.4byte	.LVL3
	.4byte	0x48a
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LASF59
	.byte	0x1
	.byte	0x10
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x47d
	.byte	0x15
	.4byte	.LVL0
	.4byte	0x497
	.4byte	0x448
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0x15
	.4byte	.LVL1
	.4byte	0x497
	.4byte	0x464
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR2
	.byte	0
	.byte	0x12
	.4byte	.LVL2
	.4byte	0x497
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR4
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0x6
	.2byte	0x2ae
	.byte	0xc
	.byte	0x16
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0x6
	.2byte	0x5d5
	.byte	0xc
	.byte	0x16
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x6
	.2byte	0x5ce
	.byte	0xf
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
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0xd
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
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x16
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
	.byte	0xb
	.byte	0x17
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0xd
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
	.byte	0xd
	.byte	0xd
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
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
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
	.byte	0x12
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x14
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
	.section	.debug_aranges,"",@progbits
	.4byte	0x4c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF44:
	.string	"pka_mutex_buf"
.LASF51:
	.string	"qcc74x_sec_aes_mutex_take"
.LASF4:
	.string	"__uint8_t"
.LASF18:
	.string	"TickType_t"
.LASF47:
	.string	"qcc74x_sec_pka_mutex_take"
.LASF5:
	.string	"__int32_t"
.LASF45:
	.string	"pka_mutex"
.LASF38:
	.string	"QueueHandle_t"
.LASF23:
	.string	"xSTATIC_LIST"
.LASF56:
	.string	"./components/crypto/mbedtls/port/sec_mutex.c"
.LASF31:
	.string	"uxDummy4"
.LASF59:
	.string	"qcc74x_sec_mutex_init"
.LASF41:
	.string	"aes_mutex"
.LASF24:
	.string	"uxDummy2"
.LASF58:
	.string	"QueueDefinition"
.LASF57:
	.string	"./examples/usb_cam_stream/build_wsl/build_out/components/crypto/mbedtls"
.LASF34:
	.string	"uxDummy8"
.LASF1:
	.string	"unsigned char"
.LASF55:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF37:
	.string	"StaticSemaphore_t"
.LASF8:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF54:
	.string	"xQueueCreateMutexStatic"
.LASF7:
	.string	"__uint32_t"
.LASF32:
	.string	"ucDummy5"
.LASF33:
	.string	"ucDummy6"
.LASF22:
	.string	"xSTATIC_MINI_LIST_ITEM"
.LASF35:
	.string	"ucDummy9"
.LASF39:
	.string	"SemaphoreHandle_t"
.LASF2:
	.string	"short int"
.LASF48:
	.string	"qcc74x_sec_sha_mutex_give"
.LASF19:
	.string	"xDummy2"
.LASF30:
	.string	"xDummy3"
.LASF11:
	.string	"unsigned int"
.LASF10:
	.string	"long long unsigned int"
.LASF12:
	.string	"uint8_t"
.LASF21:
	.string	"StaticMiniListItem_t"
.LASF28:
	.string	"xSTATIC_QUEUE"
.LASF43:
	.string	"sha_mutex"
.LASF42:
	.string	"sha_mutex_buf"
.LASF13:
	.string	"int32_t"
.LASF40:
	.string	"aes_mutex_buf"
.LASF49:
	.string	"qcc74x_sec_sha_mutex_take"
.LASF9:
	.string	"long long int"
.LASF15:
	.string	"char"
.LASF50:
	.string	"qcc74x_sec_aes_mutex_give"
.LASF36:
	.string	"StaticQueue_t"
.LASF52:
	.string	"xQueueGenericSend"
.LASF14:
	.string	"uint32_t"
.LASF6:
	.string	"long int"
.LASF46:
	.string	"qcc74x_sec_pka_mutex_give"
.LASF0:
	.string	"signed char"
.LASF29:
	.string	"pvDummy1"
.LASF53:
	.string	"xQueueSemaphoreTake"
.LASF20:
	.string	"pvDummy3"
.LASF27:
	.string	"pvDummy2"
.LASF17:
	.string	"UBaseType_t"
.LASF25:
	.string	"xDummy4"
.LASF16:
	.string	"BaseType_t"
.LASF26:
	.string	"StaticList_t"
	.ident	"GCC: (GNU) 10.4.0"
