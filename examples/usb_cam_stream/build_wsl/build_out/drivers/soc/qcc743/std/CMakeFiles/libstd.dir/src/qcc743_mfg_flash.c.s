	.file	"qcc743_mfg_flash.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.mfg_flash_init,"ax",@progbits
	.align	1
	.globl	mfg_flash_init
	.type	mfg_flash_init, @function
mfg_flash_init:
.LFB6:
	.file 1 "./drivers/soc/qcc743/std/src/qcc743_mfg_flash.c"
	.loc 1 18 1
	.cfi_startproc
.LVL0:
	.loc 1 19 5
	.loc 1 14 5
	.loc 1 20 5
	.loc 1 21 1 is_stmt 0
	li	a0,-1
.LVL1:
	ret
	.cfi_endproc
.LFE6:
	.size	mfg_flash_init, .-mfg_flash_init
	.section	.text.mfg_flash_write_xtal_capcode_pre,"ax",@progbits
	.align	1
	.globl	mfg_flash_write_xtal_capcode_pre
	.type	mfg_flash_write_xtal_capcode_pre, @function
mfg_flash_write_xtal_capcode_pre:
.LFB9:
	.loc 1 34 1 is_stmt 1
	.cfi_startproc
.LVL2:
	.loc 1 35 5
	.loc 1 25 5
	.loc 1 36 5
	.loc 1 37 1 is_stmt 0
	li	a0,0
.LVL3:
	ret
	.cfi_endproc
.LFE9:
	.size	mfg_flash_write_xtal_capcode_pre, .-mfg_flash_write_xtal_capcode_pre
	.section	.text.mfg_flash_write_xtal_capcode,"ax",@progbits
	.align	1
	.globl	mfg_flash_write_xtal_capcode
	.type	mfg_flash_write_xtal_capcode, @function
mfg_flash_write_xtal_capcode:
.LFB10:
	.loc 1 40 1 is_stmt 1
	.cfi_startproc
	.loc 1 41 5
	.loc 1 25 5
	.loc 1 42 1 is_stmt 0
	ret
	.cfi_endproc
.LFE10:
	.size	mfg_flash_write_xtal_capcode, .-mfg_flash_write_xtal_capcode
	.section	.text.mfg_flash_read_xtal_capcode,"ax",@progbits
	.align	1
	.globl	mfg_flash_read_xtal_capcode
	.type	mfg_flash_read_xtal_capcode, @function
mfg_flash_read_xtal_capcode:
.LFB11:
	.loc 1 45 1 is_stmt 1
	.cfi_startproc
.LVL4:
	.loc 1 46 5
	.loc 1 30 5
	.loc 1 47 5
	.loc 1 48 1 is_stmt 0
	li	a0,0
.LVL5:
	ret
	.cfi_endproc
.LFE11:
	.size	mfg_flash_read_xtal_capcode, .-mfg_flash_read_xtal_capcode
	.section	.text.mfg_flash_write_hp_poweroffset_pre,"ax",@progbits
	.align	1
	.globl	mfg_flash_write_hp_poweroffset_pre
	.type	mfg_flash_write_hp_poweroffset_pre, @function
mfg_flash_write_hp_poweroffset_pre:
.LFB25:
	.cfi_startproc
	li	a0,0
	ret
	.cfi_endproc
.LFE25:
	.size	mfg_flash_write_hp_poweroffset_pre, .-mfg_flash_write_hp_poweroffset_pre
	.section	.text.mfg_flash_write_hp_poweroffset,"ax",@progbits
	.align	1
	.globl	mfg_flash_write_hp_poweroffset
	.type	mfg_flash_write_hp_poweroffset, @function
mfg_flash_write_hp_poweroffset:
.LFB41:
	.cfi_startproc
	ret
	.cfi_endproc
.LFE41:
	.size	mfg_flash_write_hp_poweroffset, .-mfg_flash_write_hp_poweroffset
	.section	.text.mfg_flash_read_hp_poweroffset,"ax",@progbits
	.align	1
	.globl	mfg_flash_read_hp_poweroffset
	.type	mfg_flash_read_hp_poweroffset, @function
mfg_flash_read_hp_poweroffset:
.LFB27:
	.cfi_startproc
	li	a0,0
	ret
	.cfi_endproc
.LFE27:
	.size	mfg_flash_read_hp_poweroffset, .-mfg_flash_read_hp_poweroffset
	.section	.text.mfg_flash_write_lp_poweroffset_pre,"ax",@progbits
	.align	1
	.globl	mfg_flash_write_lp_poweroffset_pre
	.type	mfg_flash_write_lp_poweroffset_pre, @function
mfg_flash_write_lp_poweroffset_pre:
.LFB29:
	.cfi_startproc
	li	a0,0
	ret
	.cfi_endproc
.LFE29:
	.size	mfg_flash_write_lp_poweroffset_pre, .-mfg_flash_write_lp_poweroffset_pre
	.section	.text.mfg_flash_write_lp_poweroffset,"ax",@progbits
	.align	1
	.globl	mfg_flash_write_lp_poweroffset
	.type	mfg_flash_write_lp_poweroffset, @function
mfg_flash_write_lp_poweroffset:
.LFB43:
	.cfi_startproc
	ret
	.cfi_endproc
.LFE43:
	.size	mfg_flash_write_lp_poweroffset, .-mfg_flash_write_lp_poweroffset
	.section	.text.mfg_flash_read_lp_poweroffset,"ax",@progbits
	.align	1
	.globl	mfg_flash_read_lp_poweroffset
	.type	mfg_flash_read_lp_poweroffset, @function
mfg_flash_read_lp_poweroffset:
.LFB31:
	.cfi_startproc
	li	a0,0
	ret
	.cfi_endproc
.LFE31:
	.size	mfg_flash_read_lp_poweroffset, .-mfg_flash_read_lp_poweroffset
	.section	.text.mfg_flash_write_macaddr_pre,"ax",@progbits
	.align	1
	.globl	mfg_flash_write_macaddr_pre
	.type	mfg_flash_write_macaddr_pre, @function
mfg_flash_write_macaddr_pre:
.LFB33:
	.cfi_startproc
	li	a0,0
	ret
	.cfi_endproc
.LFE33:
	.size	mfg_flash_write_macaddr_pre, .-mfg_flash_write_macaddr_pre
	.section	.text.mfg_flash_write_macaddr,"ax",@progbits
	.align	1
	.globl	mfg_flash_write_macaddr
	.type	mfg_flash_write_macaddr, @function
mfg_flash_write_macaddr:
.LFB45:
	.cfi_startproc
	ret
	.cfi_endproc
.LFE45:
	.size	mfg_flash_write_macaddr, .-mfg_flash_write_macaddr
	.section	.text.mfg_flash_read_macaddr,"ax",@progbits
	.align	1
	.globl	mfg_flash_read_macaddr
	.type	mfg_flash_read_macaddr, @function
mfg_flash_read_macaddr:
.LFB35:
	.cfi_startproc
	li	a0,0
	ret
	.cfi_endproc
.LFE35:
	.size	mfg_flash_read_macaddr, .-mfg_flash_read_macaddr
	.section	.text.mfg_flash_write_bz_poweroffset_pre,"ax",@progbits
	.align	1
	.globl	mfg_flash_write_bz_poweroffset_pre
	.type	mfg_flash_write_bz_poweroffset_pre, @function
mfg_flash_write_bz_poweroffset_pre:
.LFB37:
	.cfi_startproc
	li	a0,0
	ret
	.cfi_endproc
.LFE37:
	.size	mfg_flash_write_bz_poweroffset_pre, .-mfg_flash_write_bz_poweroffset_pre
	.section	.text.mfg_flash_write_bz_poweroffset,"ax",@progbits
	.align	1
	.globl	mfg_flash_write_bz_poweroffset
	.type	mfg_flash_write_bz_poweroffset, @function
mfg_flash_write_bz_poweroffset:
.LFB47:
	.cfi_startproc
	ret
	.cfi_endproc
.LFE47:
	.size	mfg_flash_write_bz_poweroffset, .-mfg_flash_write_bz_poweroffset
	.section	.text.mfg_flash_read_bz_poweroffset,"ax",@progbits
	.align	1
	.globl	mfg_flash_read_bz_poweroffset
	.type	mfg_flash_read_bz_poweroffset, @function
mfg_flash_read_bz_poweroffset:
.LFB39:
	.cfi_startproc
	li	a0,0
	ret
	.cfi_endproc
.LFE39:
	.size	mfg_flash_read_bz_poweroffset, .-mfg_flash_read_bz_poweroffset
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./drivers/lhal/src/flash/qcc74x_sflash.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x72d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF113
	.byte	0xc
	.4byte	.LASF114
	.4byte	.LASF115
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	.LASF0
	.byte	0x2
	.byte	0x29
	.byte	0x15
	.4byte	0x31
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.byte	0x2
	.4byte	.LASF1
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x44
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.byte	0x2
	.4byte	.LASF5
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x5e
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.byte	0x2
	.4byte	.LASF8
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x78
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.byte	0x2
	.4byte	.LASF13
	.byte	0x3
	.byte	0x14
	.byte	0x12
	.4byte	0x25
	.byte	0x2
	.4byte	.LASF14
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x38
	.byte	0x2
	.4byte	.LASF15
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x52
	.byte	0x2
	.4byte	.LASF16
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x6c
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.byte	0x5
	.byte	0x4
	.4byte	0xa7
	.byte	0x6
	.byte	0x54
	.byte	0x4
	.byte	0x11
	.byte	0x9
	.4byte	0x48a
	.byte	0x7
	.4byte	.LASF18
	.byte	0x4
	.byte	0x13
	.byte	0xd
	.4byte	0xa7
	.byte	0
	.byte	0x7
	.4byte	.LASF19
	.byte	0x4
	.byte	0x14
	.byte	0xd
	.4byte	0xa7
	.byte	0x1
	.byte	0x7
	.4byte	.LASF20
	.byte	0x4
	.byte	0x15
	.byte	0xd
	.4byte	0xa7
	.byte	0x2
	.byte	0x7
	.4byte	.LASF21
	.byte	0x4
	.byte	0x16
	.byte	0xd
	.4byte	0xa7
	.byte	0x3
	.byte	0x7
	.4byte	.LASF22
	.byte	0x4
	.byte	0x17
	.byte	0xd
	.4byte	0xa7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF23
	.byte	0x4
	.byte	0x18
	.byte	0xd
	.4byte	0xa7
	.byte	0x5
	.byte	0x7
	.4byte	.LASF24
	.byte	0x4
	.byte	0x19
	.byte	0xd
	.4byte	0xa7
	.byte	0x6
	.byte	0x7
	.4byte	.LASF25
	.byte	0x4
	.byte	0x1a
	.byte	0xd
	.4byte	0xa7
	.byte	0x7
	.byte	0x7
	.4byte	.LASF26
	.byte	0x4
	.byte	0x1b
	.byte	0xd
	.4byte	0xa7
	.byte	0x8
	.byte	0x7
	.4byte	.LASF27
	.byte	0x4
	.byte	0x1c
	.byte	0xd
	.4byte	0xa7
	.byte	0x9
	.byte	0x7
	.4byte	.LASF28
	.byte	0x4
	.byte	0x21
	.byte	0xd
	.4byte	0xa7
	.byte	0xa
	.byte	0x7
	.4byte	.LASF29
	.byte	0x4
	.byte	0x22
	.byte	0xd
	.4byte	0xa7
	.byte	0xb
	.byte	0x7
	.4byte	.LASF30
	.byte	0x4
	.byte	0x24
	.byte	0xd
	.4byte	0xa7
	.byte	0xc
	.byte	0x8
	.string	"mid"
	.byte	0x4
	.byte	0x25
	.byte	0xd
	.4byte	0xa7
	.byte	0xd
	.byte	0x7
	.4byte	.LASF31
	.byte	0x4
	.byte	0x26
	.byte	0xe
	.4byte	0xb3
	.byte	0xe
	.byte	0x7
	.4byte	.LASF32
	.byte	0x4
	.byte	0x27
	.byte	0xd
	.4byte	0xa7
	.byte	0x10
	.byte	0x7
	.4byte	.LASF33
	.byte	0x4
	.byte	0x28
	.byte	0xd
	.4byte	0xa7
	.byte	0x11
	.byte	0x7
	.4byte	.LASF34
	.byte	0x4
	.byte	0x29
	.byte	0xd
	.4byte	0xa7
	.byte	0x12
	.byte	0x7
	.4byte	.LASF35
	.byte	0x4
	.byte	0x2a
	.byte	0xd
	.4byte	0xa7
	.byte	0x13
	.byte	0x7
	.4byte	.LASF36
	.byte	0x4
	.byte	0x2b
	.byte	0xd
	.4byte	0xa7
	.byte	0x14
	.byte	0x7
	.4byte	.LASF37
	.byte	0x4
	.byte	0x2c
	.byte	0xd
	.4byte	0xa7
	.byte	0x15
	.byte	0x7
	.4byte	.LASF38
	.byte	0x4
	.byte	0x2d
	.byte	0xd
	.4byte	0xa7
	.byte	0x16
	.byte	0x7
	.4byte	.LASF39
	.byte	0x4
	.byte	0x2e
	.byte	0xd
	.4byte	0xa7
	.byte	0x17
	.byte	0x7
	.4byte	.LASF40
	.byte	0x4
	.byte	0x2f
	.byte	0xd
	.4byte	0xa7
	.byte	0x18
	.byte	0x7
	.4byte	.LASF41
	.byte	0x4
	.byte	0x30
	.byte	0xd
	.4byte	0xa7
	.byte	0x19
	.byte	0x7
	.4byte	.LASF42
	.byte	0x4
	.byte	0x31
	.byte	0xd
	.4byte	0xa7
	.byte	0x1a
	.byte	0x7
	.4byte	.LASF43
	.byte	0x4
	.byte	0x32
	.byte	0xd
	.4byte	0xa7
	.byte	0x1b
	.byte	0x7
	.4byte	.LASF44
	.byte	0x4
	.byte	0x33
	.byte	0xd
	.4byte	0xa7
	.byte	0x1c
	.byte	0x7
	.4byte	.LASF45
	.byte	0x4
	.byte	0x34
	.byte	0xd
	.4byte	0xa7
	.byte	0x1d
	.byte	0x7
	.4byte	.LASF46
	.byte	0x4
	.byte	0x35
	.byte	0xd
	.4byte	0xa7
	.byte	0x1e
	.byte	0x7
	.4byte	.LASF47
	.byte	0x4
	.byte	0x36
	.byte	0xd
	.4byte	0xa7
	.byte	0x1f
	.byte	0x7
	.4byte	.LASF48
	.byte	0x4
	.byte	0x37
	.byte	0xd
	.4byte	0xa7
	.byte	0x20
	.byte	0x7
	.4byte	.LASF49
	.byte	0x4
	.byte	0x38
	.byte	0xd
	.4byte	0xa7
	.byte	0x21
	.byte	0x7
	.4byte	.LASF50
	.byte	0x4
	.byte	0x39
	.byte	0xd
	.4byte	0xa7
	.byte	0x22
	.byte	0x7
	.4byte	.LASF51
	.byte	0x4
	.byte	0x3a
	.byte	0xd
	.4byte	0xa7
	.byte	0x23
	.byte	0x7
	.4byte	.LASF52
	.byte	0x4
	.byte	0x3b
	.byte	0xd
	.4byte	0xa7
	.byte	0x24
	.byte	0x7
	.4byte	.LASF53
	.byte	0x4
	.byte	0x3c
	.byte	0xd
	.4byte	0xa7
	.byte	0x25
	.byte	0x7
	.4byte	.LASF54
	.byte	0x4
	.byte	0x3d
	.byte	0xd
	.4byte	0xa7
	.byte	0x26
	.byte	0x7
	.4byte	.LASF55
	.byte	0x4
	.byte	0x3e
	.byte	0xd
	.4byte	0xa7
	.byte	0x27
	.byte	0x7
	.4byte	.LASF56
	.byte	0x4
	.byte	0x3f
	.byte	0xd
	.4byte	0xa7
	.byte	0x28
	.byte	0x7
	.4byte	.LASF57
	.byte	0x4
	.byte	0x40
	.byte	0xd
	.4byte	0xa7
	.byte	0x29
	.byte	0x7
	.4byte	.LASF58
	.byte	0x4
	.byte	0x41
	.byte	0xd
	.4byte	0xa7
	.byte	0x2a
	.byte	0x7
	.4byte	.LASF59
	.byte	0x4
	.byte	0x42
	.byte	0xd
	.4byte	0xa7
	.byte	0x2b
	.byte	0x7
	.4byte	.LASF60
	.byte	0x4
	.byte	0x43
	.byte	0xd
	.4byte	0xa7
	.byte	0x2c
	.byte	0x7
	.4byte	.LASF61
	.byte	0x4
	.byte	0x44
	.byte	0xd
	.4byte	0xa7
	.byte	0x2d
	.byte	0x7
	.4byte	.LASF62
	.byte	0x4
	.byte	0x45
	.byte	0xd
	.4byte	0xa7
	.byte	0x2e
	.byte	0x7
	.4byte	.LASF63
	.byte	0x4
	.byte	0x46
	.byte	0xd
	.4byte	0xa7
	.byte	0x2f
	.byte	0x7
	.4byte	.LASF64
	.byte	0x4
	.byte	0x47
	.byte	0xd
	.4byte	0xa7
	.byte	0x30
	.byte	0x7
	.4byte	.LASF65
	.byte	0x4
	.byte	0x48
	.byte	0xd
	.4byte	0xa7
	.byte	0x31
	.byte	0x7
	.4byte	.LASF66
	.byte	0x4
	.byte	0x49
	.byte	0xd
	.4byte	0xa7
	.byte	0x32
	.byte	0x7
	.4byte	.LASF67
	.byte	0x4
	.byte	0x4a
	.byte	0xd
	.4byte	0xa7
	.byte	0x33
	.byte	0x7
	.4byte	.LASF68
	.byte	0x4
	.byte	0x4b
	.byte	0xd
	.4byte	0x48a
	.byte	0x34
	.byte	0x7
	.4byte	.LASF69
	.byte	0x4
	.byte	0x4c
	.byte	0xd
	.4byte	0x48a
	.byte	0x38
	.byte	0x7
	.4byte	.LASF70
	.byte	0x4
	.byte	0x4d
	.byte	0xd
	.4byte	0xa7
	.byte	0x3c
	.byte	0x7
	.4byte	.LASF71
	.byte	0x4
	.byte	0x4e
	.byte	0xd
	.4byte	0xa7
	.byte	0x3d
	.byte	0x7
	.4byte	.LASF72
	.byte	0x4
	.byte	0x4f
	.byte	0xd
	.4byte	0xa7
	.byte	0x3e
	.byte	0x7
	.4byte	.LASF73
	.byte	0x4
	.byte	0x50
	.byte	0xd
	.4byte	0xa7
	.byte	0x3f
	.byte	0x7
	.4byte	.LASF74
	.byte	0x4
	.byte	0x51
	.byte	0xd
	.4byte	0xa7
	.byte	0x40
	.byte	0x7
	.4byte	.LASF75
	.byte	0x4
	.byte	0x52
	.byte	0xd
	.4byte	0xa7
	.byte	0x41
	.byte	0x7
	.4byte	.LASF76
	.byte	0x4
	.byte	0x53
	.byte	0xd
	.4byte	0xa7
	.byte	0x42
	.byte	0x7
	.4byte	.LASF77
	.byte	0x4
	.byte	0x54
	.byte	0xd
	.4byte	0xa7
	.byte	0x43
	.byte	0x7
	.4byte	.LASF78
	.byte	0x4
	.byte	0x55
	.byte	0xd
	.4byte	0xa7
	.byte	0x44
	.byte	0x7
	.4byte	.LASF79
	.byte	0x4
	.byte	0x56
	.byte	0xd
	.4byte	0xa7
	.byte	0x45
	.byte	0x7
	.4byte	.LASF80
	.byte	0x4
	.byte	0x57
	.byte	0xd
	.4byte	0xa7
	.byte	0x46
	.byte	0x7
	.4byte	.LASF81
	.byte	0x4
	.byte	0x58
	.byte	0xd
	.4byte	0xa7
	.byte	0x47
	.byte	0x7
	.4byte	.LASF82
	.byte	0x4
	.byte	0x59
	.byte	0xe
	.4byte	0xb3
	.byte	0x48
	.byte	0x7
	.4byte	.LASF83
	.byte	0x4
	.byte	0x5a
	.byte	0xe
	.4byte	0xb3
	.byte	0x4a
	.byte	0x7
	.4byte	.LASF84
	.byte	0x4
	.byte	0x5b
	.byte	0xe
	.4byte	0xb3
	.byte	0x4c
	.byte	0x7
	.4byte	.LASF85
	.byte	0x4
	.byte	0x5c
	.byte	0xe
	.4byte	0xb3
	.byte	0x4e
	.byte	0x7
	.4byte	.LASF86
	.byte	0x4
	.byte	0x5d
	.byte	0xe
	.4byte	0xb3
	.byte	0x50
	.byte	0x7
	.4byte	.LASF87
	.byte	0x4
	.byte	0x5e
	.byte	0xd
	.4byte	0xa7
	.byte	0x52
	.byte	0x7
	.4byte	.LASF88
	.byte	0x4
	.byte	0x5f
	.byte	0xd
	.4byte	0xa7
	.byte	0x53
	.byte	0
	.byte	0x9
	.4byte	0xa7
	.4byte	0x49a
	.byte	0xa
	.4byte	0x94
	.byte	0x3
	.byte	0
	.byte	0x2
	.4byte	.LASF89
	.byte	0x4
	.byte	0x60
	.byte	0x1b
	.4byte	0xd8
	.byte	0xb
	.4byte	.LASF92
	.byte	0x1
	.byte	0x70
	.byte	0x5
	.4byte	0x8d
	.4byte	0x4cf
	.byte	0xc
	.4byte	.LASF90
	.byte	0x1
	.byte	0x70
	.byte	0x2a
	.4byte	0x4cf
	.byte	0xc
	.4byte	.LASF91
	.byte	0x1
	.byte	0x70
	.byte	0x40
	.4byte	0xa7
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x9b
	.byte	0xd
	.4byte	.LASF96
	.byte	0x1
	.byte	0x6b
	.byte	0x6
	.byte	0xb
	.4byte	.LASF93
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.4byte	0x8d
	.4byte	0x506
	.byte	0xc
	.4byte	.LASF90
	.byte	0x1
	.byte	0x65
	.byte	0x2f
	.4byte	0x4cf
	.byte	0xc
	.4byte	.LASF94
	.byte	0x1
	.byte	0x65
	.byte	0x45
	.4byte	0xa7
	.byte	0
	.byte	0xb
	.4byte	.LASF95
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.4byte	0x8d
	.4byte	0x52f
	.byte	0xe
	.string	"mac"
	.byte	0x1
	.byte	0x5f
	.byte	0x24
	.4byte	0xd2
	.byte	0xc
	.4byte	.LASF91
	.byte	0x1
	.byte	0x5f
	.byte	0x34
	.4byte	0xa7
	.byte	0
	.byte	0xd
	.4byte	.LASF97
	.byte	0x1
	.byte	0x5a
	.byte	0x6
	.byte	0xb
	.4byte	.LASF98
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.4byte	0x8d
	.4byte	0x560
	.byte	0xe
	.string	"mac"
	.byte	0x1
	.byte	0x54
	.byte	0x29
	.4byte	0xd2
	.byte	0xc
	.4byte	.LASF94
	.byte	0x1
	.byte	0x54
	.byte	0x39
	.4byte	0xa7
	.byte	0
	.byte	0xb
	.4byte	.LASF99
	.byte	0x1
	.byte	0x4e
	.byte	0x5
	.4byte	0x8d
	.4byte	0x589
	.byte	0xc
	.4byte	.LASF90
	.byte	0x1
	.byte	0x4e
	.byte	0x2a
	.4byte	0x4cf
	.byte	0xc
	.4byte	.LASF91
	.byte	0x1
	.byte	0x4e
	.byte	0x41
	.4byte	0xa7
	.byte	0
	.byte	0xd
	.4byte	.LASF100
	.byte	0x1
	.byte	0x49
	.byte	0x6
	.byte	0xb
	.4byte	.LASF101
	.byte	0x1
	.byte	0x43
	.byte	0x5
	.4byte	0x8d
	.4byte	0x5ba
	.byte	0xc
	.4byte	.LASF90
	.byte	0x1
	.byte	0x43
	.byte	0x2f
	.4byte	0x4cf
	.byte	0xc
	.4byte	.LASF94
	.byte	0x1
	.byte	0x43
	.byte	0x46
	.4byte	0xa7
	.byte	0
	.byte	0xb
	.4byte	.LASF102
	.byte	0x1
	.byte	0x3d
	.byte	0x5
	.4byte	0x8d
	.4byte	0x5e3
	.byte	0xc
	.4byte	.LASF90
	.byte	0x1
	.byte	0x3d
	.byte	0x2a
	.4byte	0x4cf
	.byte	0xc
	.4byte	.LASF91
	.byte	0x1
	.byte	0x3d
	.byte	0x41
	.4byte	0xa7
	.byte	0
	.byte	0xd
	.4byte	.LASF103
	.byte	0x1
	.byte	0x38
	.byte	0x6
	.byte	0xb
	.4byte	.LASF104
	.byte	0x1
	.byte	0x32
	.byte	0x5
	.4byte	0x8d
	.4byte	0x614
	.byte	0xc
	.4byte	.LASF90
	.byte	0x1
	.byte	0x32
	.byte	0x2f
	.4byte	0x4cf
	.byte	0xc
	.4byte	.LASF94
	.byte	0x1
	.byte	0x32
	.byte	0x46
	.4byte	0xa7
	.byte	0
	.byte	0xf
	.4byte	.LASF116
	.byte	0x1
	.byte	0x2c
	.byte	0x5
	.4byte	0x8d
	.byte	0x1
	.4byte	0x63e
	.byte	0xc
	.4byte	.LASF105
	.byte	0x1
	.byte	0x2c
	.byte	0x2a
	.4byte	0xd2
	.byte	0xc
	.4byte	.LASF91
	.byte	0x1
	.byte	0x2c
	.byte	0x3b
	.4byte	0xa7
	.byte	0
	.byte	0x10
	.4byte	.LASF117
	.byte	0x1
	.byte	0x27
	.byte	0x6
	.byte	0x1
	.byte	0x11
	.4byte	.LASF108
	.byte	0x1
	.byte	0x21
	.byte	0x5
	.4byte	0x8d
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x680
	.byte	0x12
	.4byte	.LASF105
	.byte	0x1
	.byte	0x21
	.byte	0x2e
	.4byte	0xa7
	.4byte	.LLST1
	.byte	0x13
	.4byte	.LASF94
	.byte	0x1
	.byte	0x21
	.byte	0x3f
	.4byte	0xa7
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0x14
	.4byte	.LASF106
	.byte	0x1
	.byte	0x1c
	.byte	0xc
	.4byte	0x8d
	.byte	0x1
	.byte	0x14
	.4byte	.LASF107
	.byte	0x1
	.byte	0x17
	.byte	0xc
	.4byte	0x8d
	.byte	0x1
	.byte	0x11
	.4byte	.LASF109
	.byte	0x1
	.byte	0x11
	.byte	0x5
	.4byte	0x8d
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x6c5
	.byte	0x12
	.4byte	.LASF110
	.byte	0x1
	.byte	0x11
	.byte	0x28
	.4byte	0x6c5
	.4byte	.LLST0
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x49a
	.byte	0x15
	.4byte	.LASF118
	.byte	0x1
	.byte	0xc
	.byte	0xc
	.4byte	0x8d
	.byte	0x1
	.4byte	0x701
	.byte	0xc
	.4byte	.LASF111
	.byte	0x1
	.byte	0xc
	.byte	0x28
	.4byte	0xbf
	.byte	0xc
	.4byte	.LASF112
	.byte	0x1
	.byte	0xc
	.byte	0x37
	.4byte	0xd2
	.byte	0xe
	.string	"len"
	.byte	0x1
	.byte	0xc
	.byte	0x46
	.4byte	0xbf
	.byte	0
	.byte	0x16
	.4byte	0x63e
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.byte	0x17
	.4byte	0x614
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.byte	0x18
	.4byte	0x625
	.4byte	.LLST2
	.byte	0x19
	.4byte	0x631
	.byte	0x1
	.byte	0x5b
	.byte	0
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
	.byte	0x3
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
	.byte	0x13
	.byte	0x1
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
	.byte	0x7
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
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xb
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
	.byte	0x1
	.byte	0x13
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
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x10
	.byte	0x2e
	.byte	0
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
	.byte	0x20
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x16
	.byte	0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0x17
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
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LFE9
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
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF43:
	.string	"qpi_fr_dmy_clk"
.LASF74:
	.string	"burst_wrap_cmd"
.LASF58:
	.string	"busy_index"
.LASF55:
	.string	"write_vreg_enable_cmd"
.LASF111:
	.string	"addr"
.LASF18:
	.string	"io_mode"
.LASF114:
	.string	"./drivers/soc/qcc743/std/src/qcc743_mfg_flash.c"
.LASF85:
	.string	"time_page_pgm"
.LASF13:
	.string	"int8_t"
.LASF59:
	.string	"wr_enable_bit"
.LASF113:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF32:
	.string	"chip_erase_cmd"
.LASF4:
	.string	"short int"
.LASF31:
	.string	"page_size"
.LASF106:
	.string	"mfg_flash_read"
.LASF40:
	.string	"fast_read_cmd"
.LASF116:
	.string	"mfg_flash_read_xtal_capcode"
.LASF93:
	.string	"mfg_flash_write_bz_poweroffset_pre"
.LASF50:
	.string	"fast_read_qio_cmd"
.LASF51:
	.string	"fr_qio_dmy_clk"
.LASF8:
	.string	"__uint32_t"
.LASF5:
	.string	"__uint16_t"
.LASF57:
	.string	"qe_index"
.LASF36:
	.string	"write_enable_cmd"
.LASF22:
	.string	"reset_en_cmd"
.LASF118:
	.string	"PtTable_Flash_Read"
.LASF110:
	.string	"flashCfg"
.LASF60:
	.string	"qe_bit"
.LASF45:
	.string	"fr_do_dmy_clk"
.LASF37:
	.string	"page_program_cmd"
.LASF105:
	.string	"capcode"
.LASF94:
	.string	"program"
.LASF95:
	.string	"mfg_flash_read_macaddr"
.LASF29:
	.string	"exit_32bits_addr_cmd"
.LASF28:
	.string	"enter_32bits_addr_cmd"
.LASF20:
	.string	"clk_delay"
.LASF2:
	.string	"signed char"
.LASF72:
	.string	"c_read_mode"
.LASF63:
	.string	"wr_enable_read_reg_len"
.LASF21:
	.string	"clk_invert"
.LASF10:
	.string	"long long int"
.LASF73:
	.string	"c_rexit"
.LASF98:
	.string	"mfg_flash_write_macaddr_pre"
.LASF17:
	.string	"char"
.LASF115:
	.string	"./examples/usb_cam_stream/build_wsl/build_out/drivers/soc/qcc743/std"
.LASF64:
	.string	"qe_write_reg_len"
.LASF25:
	.string	"reset_c_read_cmd_size"
.LASF65:
	.string	"qe_read_reg_len"
.LASF87:
	.string	"pd_delay"
.LASF38:
	.string	"qpage_program_cmd"
.LASF107:
	.string	"mfg_flash_program"
.LASF34:
	.string	"blk32_erase_cmd"
.LASF30:
	.string	"sector_size"
.LASF97:
	.string	"mfg_flash_write_macaddr"
.LASF69:
	.string	"write_reg_cmd"
.LASF14:
	.string	"uint8_t"
.LASF76:
	.string	"burst_wrap_data_mode"
.LASF90:
	.string	"pwrOffset"
.LASF3:
	.string	"unsigned char"
.LASF47:
	.string	"fr_dio_dmy_clk"
.LASF61:
	.string	"busy_bit"
.LASF26:
	.string	"jedec_id_cmd"
.LASF11:
	.string	"long long unsigned int"
.LASF16:
	.string	"uint32_t"
.LASF77:
	.string	"burst_wrap_data"
.LASF54:
	.string	"qpi_page_program_cmd"
.LASF12:
	.string	"unsigned int"
.LASF15:
	.string	"uint16_t"
.LASF68:
	.string	"read_reg_cmd"
.LASF9:
	.string	"long unsigned int"
.LASF66:
	.string	"release_powerdown"
.LASF42:
	.string	"qpi_fast_read_cmd"
.LASF78:
	.string	"de_burst_wrap_cmd"
.LASF83:
	.string	"time_e_32k"
.LASF79:
	.string	"de_burst_wrap_cmd_dmy_clk"
.LASF6:
	.string	"short unsigned int"
.LASF0:
	.string	"__int8_t"
.LASF46:
	.string	"fast_read_dio_cmd"
.LASF70:
	.string	"enter_qpi"
.LASF56:
	.string	"wr_enable_index"
.LASF7:
	.string	"long int"
.LASF75:
	.string	"burst_wrap_cmd_dmy_clk"
.LASF62:
	.string	"wr_enable_write_reg_len"
.LASF67:
	.string	"busy_read_reg_len"
.LASF117:
	.string	"mfg_flash_write_xtal_capcode"
.LASF101:
	.string	"mfg_flash_write_lp_poweroffset_pre"
.LASF81:
	.string	"de_burst_wrap_data"
.LASF112:
	.string	"data"
.LASF23:
	.string	"reset_cmd"
.LASF99:
	.string	"mfg_flash_read_lp_poweroffset"
.LASF52:
	.string	"qpi_fast_read_qio_cmd"
.LASF80:
	.string	"de_burst_wrap_data_mode"
.LASF84:
	.string	"time_e_64k"
.LASF100:
	.string	"mfg_flash_write_lp_poweroffset"
.LASF53:
	.string	"qpi_fr_qio_dmy_clk"
.LASF19:
	.string	"c_read_support"
.LASF71:
	.string	"exit_qpi"
.LASF102:
	.string	"mfg_flash_read_hp_poweroffset"
.LASF89:
	.string	"spi_flash_cfg_type"
.LASF44:
	.string	"fast_read_do_cmd"
.LASF24:
	.string	"reset_c_read_cmd"
.LASF27:
	.string	"jedec_id_cmd_dmy_clk"
.LASF82:
	.string	"time_e_sector"
.LASF92:
	.string	"mfg_flash_read_bz_poweroffset"
.LASF48:
	.string	"fast_read_qo_cmd"
.LASF103:
	.string	"mfg_flash_write_hp_poweroffset"
.LASF91:
	.string	"reload"
.LASF33:
	.string	"sector_erase_cmd"
.LASF35:
	.string	"blk64_erase_cmd"
.LASF96:
	.string	"mfg_flash_write_bz_poweroffset"
.LASF109:
	.string	"mfg_flash_init"
.LASF108:
	.string	"mfg_flash_write_xtal_capcode_pre"
.LASF49:
	.string	"fr_qo_dmy_clk"
.LASF86:
	.string	"time_ce"
.LASF39:
	.string	"qpp_addr_mode"
.LASF41:
	.string	"fr_dmy_clk"
.LASF1:
	.string	"__uint8_t"
.LASF88:
	.string	"qe_data"
.LASF104:
	.string	"mfg_flash_write_hp_poweroffset_pre"
	.ident	"GCC: (GNU) 10.4.0"
