	.file	"board.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.sclock_rlt_code..\bsp\board\qcc74xdk\board.c53,"ax",@progbits
	.align	1
	.type	system_clock_init, @function
system_clock_init:
.LFB242:
	.file 1 ".\\bsp\\board\\qcc74xdk\\board.c"
	.loc 1 54 1
	.cfi_startproc
	.loc 1 57 5
	.loc 1 54 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 57 5
	li	a1,3
	li	a0,4
	.loc 1 54 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 57 5
	call	GLB_Power_On_XTAL_And_PLL_CLK
.LVL0:
	.loc 1 58 5 is_stmt 1
	li	a0,5
	call	GLB_Set_MCU_System_CLK
.LVL1:
	.loc 1 59 5
	li	a0,1
	call	HBN_Set_MCU_XCLK_Sel
.LVL2:
	.loc 1 67 5
	.loc 1 67 69 is_stmt 0
	li	a0,5
	call	Clock_System_Clock_Get
.LVL3:
	.loc 1 67 118
	li	a2,999424
	addi	a2,a2,576
	divu	a2,a0,a2
	.loc 1 74 1
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 67 5
	li	a1,0
	.loc 1 74 1
	.loc 1 67 5
	li	a0,1
	.loc 1 74 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 67 5
	addi	a2,a2,-1
	extu	a2,a2,15,0
	tail	CPU_Set_MTimer_CLK
.LVL4:
	.cfi_endproc
.LFE242:
	.size	system_clock_init, .-system_clock_init
	.section	.text.reboot_cmd,"ax",@progbits
	.align	1
	.type	reboot_cmd, @function
reboot_cmd:
.LFB251:
	.loc 1 521 1 is_stmt 1
	.cfi_startproc
.LVL5:
	.loc 1 522 5
	tail	qcc74x_sys_reset_por
.LVL6:
	.cfi_endproc
.LFE251:
	.size	reboot_cmd, .-reboot_cmd
	.section	.text.mfg_cmd,"ax",@progbits
	.align	1
	.type	mfg_cmd, @function
mfg_cmd:
.LFB253:
	.loc 1 542 1
	.cfi_startproc
.LVL7:
	.loc 1 543 5
.LBB4:
.LBB5:
	.loc 1 531 5
	.loc 1 538 5
	.loc 1 538 42 is_stmt 0
	li	a5,1734766592
	li	a4,536932352
	addi	a5,a5,-720
	sw	a5,256(a4)
.LVL8:
.LBE5:
.LBE4:
	.loc 1 544 5 is_stmt 1
	tail	qcc74x_sys_reset_por
.LVL9:
	.cfi_endproc
.LFE253:
	.size	mfg_cmd, .-mfg_cmd
	.section	.rodata.qcc74x_show_log.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"\r\n"
	.align	2
.LC1:
	.string	"Feb 11 2026"
	.align	2
.LC2:
	.string	"21:20:11"
	.align	2
.LC3:
	.string	"Build:%s,%s\r\n"
	.section	.text.qcc74x_show_log,"ax",@progbits
	.align	1
	.globl	qcc74x_show_log
	.type	qcc74x_show_log, @function
qcc74x_show_log:
.LFB244:
	.loc 1 263 1
	.cfi_startproc
	.loc 1 264 5
	.loc 1 263 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	.loc 1 264 5
	lui	s0,%hi(.LC0)
	addi	a0,s0,%lo(.LC0)
	.loc 1 263 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 264 5
	call	printf
.LVL10:
	.loc 1 265 5 is_stmt 1
	addi	a0,s0,%lo(.LC0)
	call	printf
.LVL11:
	.loc 1 266 5
	.loc 1 267 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 266 5
	lui	a2,%hi(.LC1)
	lui	a1,%hi(.LC2)
	lui	a0,%hi(.LC3)
	.loc 1 267 1
	.loc 1 266 5
	addi	a2,a2,%lo(.LC1)
	addi	a1,a1,%lo(.LC2)
	addi	a0,a0,%lo(.LC3)
	.loc 1 267 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 266 5
	tail	printf
.LVL12:
	.cfi_endproc
.LFE244:
	.size	qcc74x_show_log, .-qcc74x_show_log
	.section	.text.qcc74x_sys_version,"ax",@progbits
	.align	1
	.globl	qcc74x_sys_version
	.type	qcc74x_sys_version, @function
qcc74x_sys_version:
.LFB245:
	.loc 1 270 1 is_stmt 1
	.cfi_startproc
.LVL13:
	.loc 1 271 5
	.loc 1 272 5
	.loc 1 273 5
	.loc 1 274 5
	.loc 1 275 5
	.loc 1 278 5
	.loc 1 278 8 is_stmt 0
	lw	a5,0(a0)
	.loc 1 270 1
	mv	a4,a0
	.loc 1 278 8
	bne	a5,zero,.L8
	.loc 1 279 9 is_stmt 1
	.loc 1 279 16 is_stmt 0
	lui	a5,%hi(_version_info_section_start)
	addi	a5,a5,%lo(_version_info_section_start)
	sw	a5,0(a0)
.L8:
	.loc 1 282 5 is_stmt 1
	.loc 1 282 33 is_stmt 0
	lw	a5,0(a4)
	.loc 1 282 8
	lui	a3,%hi(_version_info_section_end)
	addi	a3,a3,%lo(_version_info_section_end)
	.loc 1 283 15
	li	a0,0
.LVL14:
	.loc 1 282 8
	beq	a5,a3,.L7
	.loc 1 285 5 is_stmt 1
	.loc 1 285 17 is_stmt 0
	lwia	a0,(a5),4,0
.LVL15:
	.loc 1 286 5 is_stmt 1
	.loc 1 286 10 is_stmt 0
	sw	a5,0(a4)
	.loc 1 287 5 is_stmt 1
.LVL16:
.L7:
	.loc 1 288 1 is_stmt 0
	ret
	.cfi_endproc
.LFE245:
	.size	qcc74x_sys_version, .-qcc74x_sys_version
	.section	.rodata.qcc74x_show_component_version.str1.4,"aMS",@progbits,1
	.align	2
.LC4:
	.string	"Version of used components:\r\n"
	.align	2
.LC5:
	.string	"\tVersion: "
	.section	.text.qcc74x_show_component_version,"ax",@progbits
	.align	1
	.globl	qcc74x_show_component_version
	.type	qcc74x_show_component_version, @function
qcc74x_show_component_version:
.LFB246:
	.loc 1 291 1 is_stmt 1
	.cfi_startproc
	.loc 1 292 5
	.loc 1 295 5 is_stmt 0
	lui	a0,%hi(.LC4)
	.loc 1 291 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 295 5
	addi	a0,a0,%lo(.LC4)
	.loc 1 291 1
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 292 18
	sw	zero,12(sp)
	.loc 1 293 5 is_stmt 1
	.loc 1 295 5
	.loc 1 297 9 is_stmt 0
	lui	s1,%hi(.LC5)
	.loc 1 295 5
	call	puts
.LVL17:
	.loc 1 296 5 is_stmt 1
	.loc 1 299 9 is_stmt 0
	lui	s2,%hi(.LC0)
.L12:
	.loc 1 296 11 is_stmt 1
	.loc 1 296 27 is_stmt 0
	addi	a0,sp,12
	call	qcc74x_sys_version
.LVL18:
	mv	s0,a0
.LVL19:
	.loc 1 296 11
	bne	a0,zero,.L13
	.loc 1 301 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL20:
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL21:
.L13:
	.cfi_restore_state
	.loc 1 297 9 is_stmt 1
	addi	a0,s1,%lo(.LC5)
	call	puts
.LVL22:
	.loc 1 298 9
	mv	a0,s0
	call	puts
.LVL23:
	.loc 1 299 9
	addi	a0,s2,%lo(.LC0)
	call	puts
.LVL24:
	j	.L12
	.cfi_endproc
.LFE246:
	.size	qcc74x_show_component_version, .-qcc74x_show_component_version
	.section	.text.show_sys_versoin_cmd,"ax",@progbits
	.align	1
	.type	show_sys_versoin_cmd, @function
show_sys_versoin_cmd:
.LFB250:
	.loc 1 513 1
	.cfi_startproc
.LVL25:
	.loc 1 514 5
	tail	qcc74x_show_component_version
.LVL26:
	.cfi_endproc
.LFE250:
	.size	show_sys_versoin_cmd, .-show_sys_versoin_cmd
	.section	.rodata.qcc74x_show_chipinfo.str1.4,"aMS",@progbits,1
	.align	2
.LC6:
	.string	"======== chip info ========\r\n"
	.align	2
.LC7:
	.string	"package          %s\r\n"
	.align	2
.LC8:
	.string	"flash_info       %s\r\n"
	.align	2
.LC9:
	.string	"psram_info       %s\r\n"
	.align	2
.LC10:
	.string	"version          A%d\r\n"
	.section	.text.qcc74x_show_chipinfo,"ax",@progbits
	.align	1
	.globl	qcc74x_show_chipinfo
	.type	qcc74x_show_chipinfo, @function
qcc74x_show_chipinfo:
.LFB247:
	.loc 1 304 1
	.cfi_startproc
	.loc 1 305 5
	.loc 1 306 5
	.loc 1 304 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	.loc 1 306 5
	addi	a0,sp,12
	.loc 1 304 1
	sw	ra,60(sp)
	.cfi_offset 1, -4
	.loc 1 306 5
	call	qcc74x_efuse_get_device_info
.LVL27:
	.loc 1 308 5 is_stmt 1
	lui	a0,%hi(.LC6)
	addi	a0,a0,%lo(.LC6)
	call	printf
.LVL28:
	.loc 1 309 5
	lw	a1,20(sp)
	lui	a0,%hi(.LC7)
	addi	a0,a0,%lo(.LC7)
	call	printf
.LVL29:
	.loc 1 310 5
	lw	a1,24(sp)
	lui	a0,%hi(.LC8)
	addi	a0,a0,%lo(.LC8)
	call	printf
.LVL30:
	.loc 1 311 5
	lw	a1,28(sp)
	lui	a0,%hi(.LC9)
	addi	a0,a0,%lo(.LC9)
	call	printf
.LVL31:
	.loc 1 312 5
	lbu	a1,15(sp)
	lui	a0,%hi(.LC10)
	addi	a0,a0,%lo(.LC10)
	call	printf
.LVL32:
	.loc 1 313 1 is_stmt 0
	lw	ra,60(sp)
	.cfi_restore 1
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE247:
	.size	qcc74x_show_chipinfo, .-qcc74x_show_chipinfo
	.section	.rodata.board_init.str1.4,"aMS",@progbits,1
	.align	2
.LC11:
	.string	"oscillator"
	.align	2
.LC12:
	.string	"crystal"
	.align	2
.LC13:
	.string	"gpio"
	.align	2
.LC14:
	.string	"uart0"
	.align	2
.LC15:
	.string	"dynamic memory init success, ocram heap size = %d Kbyte, psram heap size = %d Kbyte\r\n"
	.align	2
.LC16:
	.string	"flash init fail!!!\r\n"
	.align	2
.LC17:
	.string	"dynamic memory init success, ocram heap size = %d Kbyte \r\n"
	.align	2
.LC18:
	.string	"uart  sig1:%08x, sig2:%08x\r\n"
	.align	2
.LC19:
	.string	"clock gen1:%08x, gen2:%08x\r\n"
	.align	2
.LC20:
	.string	"xtal:%dHz(%s)\r\n"
	.align	2
.LC21:
	.string	"board init done\r\n"
	.align	2
.LC22:
	.string	"===========================\r\n"
	.section	.text.board_init,"ax",@progbits
	.align	1
	.globl	board_init
	.type	board_init, @function
board_init:
.LFB249:
	.loc 1 366 1 is_stmt 1
	.cfi_startproc
	.loc 1 367 5
.LVL33:
	.loc 1 368 5
	.loc 1 369 5
	.loc 1 370 5
	.loc 1 366 1 is_stmt 0
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sw	ra,124(sp)
	sw	s0,120(sp)
	sw	s1,116(sp)
	sw	s2,112(sp)
	sw	s3,108(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.loc 1 370 14
	sw	zero,20(sp)
	.loc 1 372 5 is_stmt 1
	.loc 1 372 12 is_stmt 0
	call	qcc74x_irq_save
.LVL34:
	mv	s2,a0
.LVL35:
	.loc 1 375 5 is_stmt 1
	.loc 1 375 11 is_stmt 0
	call	qcc74x_flash_init
.LVL36:
	mv	s3,a0
.LVL37:
	.loc 1 378 5 is_stmt 1
	call	system_clock_init
.LVL38:
	.loc 1 381 5
.LBB25:
.LBB26:
	.loc 1 104 5
.LBB27:
	.loc 1 104 10
	.loc 1 104 38 is_stmt 0
	li	a5,536870912
	addi	a5,a5,1408
	lw	a4,4(a5)
.LBE27:
.LBB28:
	.loc 1 106 103
	li	a3,4096
.LBE28:
.LBB29:
	.loc 1 107 103
	li	s0,65536
.LBE29:
.LBB30:
	.loc 1 104 28
	sw	a4,24(sp)
	.loc 1 104 96 is_stmt 1
	.loc 1 104 103 is_stmt 0
	lw	a4,24(sp)
.LBE30:
.LBB31:
	.loc 1 112 103
	li	a2,2097152
.LBE31:
	.loc 1 120 5
	li	a1,2
.LBB32:
	.loc 1 104 103
	ori	a4,a4,4
	sw	a4,24(sp)
	.loc 1 104 116 is_stmt 1
	.loc 1 104 173 is_stmt 0
	lw	a4,24(sp)
.LBE32:
	.loc 1 120 5
	li	a0,1
.LBE26:
.LBE25:
	.loc 1 409 14
	lui	s1,%hi(__psram_limit)
.LBB64:
.LBB61:
.LBB33:
	.loc 1 104 173
	sw	a4,4(a5)
.LBE33:
	.loc 1 104 194 is_stmt 1
	.loc 1 105 5
.LBB34:
	.loc 1 105 10
	.loc 1 105 38 is_stmt 0
	lw	a4,4(a5)
.LBE34:
.LBE61:
.LBE64:
	.loc 1 409 14
	addi	s1,s1,%lo(__psram_limit)
.LBB65:
.LBB62:
.LBB35:
	.loc 1 105 28
	sw	a4,28(sp)
	.loc 1 105 96 is_stmt 1
	.loc 1 105 103 is_stmt 0
	lw	a4,28(sp)
	ori	a4,a4,8
	sw	a4,28(sp)
	.loc 1 105 116 is_stmt 1
	.loc 1 105 123 is_stmt 0
	lw	a4,28(sp)
	ori	a4,a4,16
	sw	a4,28(sp)
	.loc 1 105 136 is_stmt 1
	.loc 1 105 193 is_stmt 0
	lw	a4,28(sp)
	sw	a4,4(a5)
.LBE35:
	.loc 1 105 214 is_stmt 1
	.loc 1 106 5
.LBB36:
	.loc 1 106 10
	.loc 1 106 38 is_stmt 0
	lw	a4,4(a5)
	.loc 1 106 28
	sw	a4,32(sp)
	.loc 1 106 96 is_stmt 1
	.loc 1 106 103 is_stmt 0
	lw	a4,32(sp)
	or	a4,a4,a3
	sw	a4,32(sp)
	.loc 1 106 117 is_stmt 1
	.loc 1 106 174 is_stmt 0
	lw	a4,32(sp)
.LBE36:
.LBB37:
	.loc 1 108 103
	li	a3,131072
.LBE37:
.LBB38:
	.loc 1 106 174
	sw	a4,4(a5)
.LBE38:
	.loc 1 106 195 is_stmt 1
	.loc 1 107 5
.LBB39:
	.loc 1 107 10
	.loc 1 107 38 is_stmt 0
	lw	a4,4(a5)
	.loc 1 107 28
	sw	a4,36(sp)
	.loc 1 107 96 is_stmt 1
	.loc 1 107 103 is_stmt 0
	lw	a4,36(sp)
	or	a4,a4,s0
	sw	a4,36(sp)
	.loc 1 107 117 is_stmt 1
	.loc 1 107 174 is_stmt 0
	lw	a4,36(sp)
.LBE39:
.LBE62:
.LBE65:
.LBB66:
.LBB67:
	.loc 1 334 33
	addi	s0,s0,768
.LBE67:
.LBE66:
.LBB70:
.LBB63:
.LBB40:
	.loc 1 107 174
	sw	a4,4(a5)
.LBE40:
	.loc 1 107 195 is_stmt 1
	.loc 1 108 5
.LBB41:
	.loc 1 108 10
	.loc 1 108 38 is_stmt 0
	lw	a4,4(a5)
	.loc 1 108 28
	sw	a4,40(sp)
	.loc 1 108 96 is_stmt 1
	.loc 1 108 103 is_stmt 0
	lw	a4,40(sp)
	or	a4,a4,a3
	sw	a4,40(sp)
	.loc 1 108 117 is_stmt 1
	.loc 1 108 174 is_stmt 0
	lw	a4,40(sp)
.LBE41:
.LBB42:
	.loc 1 109 103
	li	a3,262144
.LBE42:
.LBB43:
	.loc 1 108 174
	sw	a4,4(a5)
.LBE43:
	.loc 1 108 195 is_stmt 1
	.loc 1 109 5
.LBB44:
	.loc 1 109 10
	.loc 1 109 38 is_stmt 0
	lw	a4,4(a5)
	.loc 1 109 28
	sw	a4,44(sp)
	.loc 1 109 96 is_stmt 1
	.loc 1 109 103 is_stmt 0
	lw	a4,44(sp)
	or	a4,a4,a3
	sw	a4,44(sp)
	.loc 1 109 117 is_stmt 1
	.loc 1 109 174 is_stmt 0
	lw	a4,44(sp)
.LBE44:
.LBB45:
	.loc 1 110 103
	li	a3,524288
.LBE45:
.LBB46:
	.loc 1 109 174
	sw	a4,4(a5)
.LBE46:
	.loc 1 109 195 is_stmt 1
	.loc 1 110 5
.LBB47:
	.loc 1 110 10
	.loc 1 110 38 is_stmt 0
	lw	a4,4(a5)
	.loc 1 110 28
	sw	a4,48(sp)
	.loc 1 110 96 is_stmt 1
	.loc 1 110 103 is_stmt 0
	lw	a4,48(sp)
	or	a4,a4,a3
	sw	a4,48(sp)
	.loc 1 110 117 is_stmt 1
	.loc 1 110 174 is_stmt 0
	lw	a4,48(sp)
.LBE47:
.LBB48:
	.loc 1 111 103
	li	a3,1048576
.LBE48:
.LBB49:
	.loc 1 110 174
	sw	a4,4(a5)
.LBE49:
	.loc 1 110 195 is_stmt 1
	.loc 1 111 5
.LBB50:
	.loc 1 111 10
	.loc 1 111 38 is_stmt 0
	lw	a4,4(a5)
	.loc 1 111 28
	sw	a4,52(sp)
	.loc 1 111 96 is_stmt 1
	.loc 1 111 103 is_stmt 0
	lw	a4,52(sp)
	or	a4,a4,a3
	sw	a4,52(sp)
	.loc 1 111 117 is_stmt 1
	.loc 1 111 174 is_stmt 0
	lw	a4,52(sp)
	sw	a4,4(a5)
.LBE50:
	.loc 1 111 195 is_stmt 1
	.loc 1 112 5
.LBB51:
	.loc 1 112 10
	.loc 1 112 38 is_stmt 0
	lw	a4,4(a5)
	.loc 1 112 28
	sw	a4,56(sp)
	.loc 1 112 96 is_stmt 1
	.loc 1 112 103 is_stmt 0
	lw	a3,56(sp)
	or	a3,a3,a2
	sw	a3,56(sp)
	.loc 1 112 117 is_stmt 1
	.loc 1 112 174 is_stmt 0
	lw	a4,56(sp)
	sw	a4,4(a5)
.LBE51:
	.loc 1 112 195 is_stmt 1
	.loc 1 113 5
.LBB52:
	.loc 1 113 10
	.loc 1 113 38 is_stmt 0
	lw	a4,4(a5)
	.loc 1 113 28
	sw	a4,60(sp)
	.loc 1 113 96 is_stmt 1
	.loc 1 113 103 is_stmt 0
	lw	a3,60(sp)
	li	a4,4194304
	or	a3,a3,a4
	sw	a3,60(sp)
	.loc 1 113 117 is_stmt 1
	.loc 1 113 174 is_stmt 0
	lw	a4,60(sp)
	sw	a4,4(a5)
.LBE52:
	.loc 1 113 195 is_stmt 1
	.loc 1 114 5
.LBB53:
	.loc 1 114 10
	.loc 1 114 38 is_stmt 0
	lw	a4,4(a5)
	.loc 1 114 28
	sw	a4,64(sp)
	.loc 1 114 96 is_stmt 1
	.loc 1 114 103 is_stmt 0
	lw	a3,64(sp)
	li	a4,134217728
	or	a3,a3,a4
	sw	a3,64(sp)
	.loc 1 114 117 is_stmt 1
	.loc 1 114 174 is_stmt 0
	lw	a4,64(sp)
	sw	a4,4(a5)
.LBE53:
	.loc 1 114 195 is_stmt 1
	.loc 1 115 5
.LBB54:
	.loc 1 115 10
	.loc 1 115 38 is_stmt 0
	lw	a4,4(a5)
	.loc 1 115 28
	sw	a4,68(sp)
	.loc 1 115 96 is_stmt 1
	.loc 1 115 103 is_stmt 0
	lw	a3,68(sp)
	li	a4,8192
	or	a3,a3,a4
	sw	a3,68(sp)
	.loc 1 115 117 is_stmt 1
	.loc 1 115 174 is_stmt 0
	lw	a4,68(sp)
	sw	a4,4(a5)
.LBE54:
	.loc 1 115 195 is_stmt 1
	.loc 1 116 5
.LBB55:
	.loc 1 116 10
	.loc 1 116 38 is_stmt 0
	lw	a4,4(a5)
	.loc 1 116 28
	sw	a4,72(sp)
	.loc 1 116 96 is_stmt 1
	.loc 1 116 103 is_stmt 0
	lw	a3,72(sp)
	li	a4,67108864
	or	a3,a3,a4
	sw	a3,72(sp)
	.loc 1 116 117 is_stmt 1
	.loc 1 116 174 is_stmt 0
	lw	a4,72(sp)
.LBE55:
.LBB56:
	.loc 1 118 103
	li	a3,8388608
.LBE56:
.LBB57:
	.loc 1 116 174
	sw	a4,4(a5)
.LBE57:
	.loc 1 116 195 is_stmt 1
	.loc 1 117 5
.LBB58:
	.loc 1 117 10
	.loc 1 117 38 is_stmt 0
	lw	a4,8(a5)
	.loc 1 117 28
	sw	a4,76(sp)
	.loc 1 117 96 is_stmt 1
	.loc 1 117 103 is_stmt 0
	lw	a4,76(sp)
	or	a4,a4,a2
	sw	a4,76(sp)
	.loc 1 117 117 is_stmt 1
	.loc 1 117 174 is_stmt 0
	lw	a4,76(sp)
.LBE58:
	.loc 1 120 5
	li	a2,0
.LBB59:
	.loc 1 117 174
	sw	a4,8(a5)
.LBE59:
	.loc 1 117 195 is_stmt 1
	.loc 1 118 5
.LBB60:
	.loc 1 118 10
	.loc 1 118 38 is_stmt 0
	lw	a4,4(a5)
	.loc 1 118 28
	sw	a4,80(sp)
	.loc 1 118 96 is_stmt 1
	.loc 1 118 103 is_stmt 0
	lw	a4,80(sp)
	or	a4,a4,a3
	sw	a4,80(sp)
	.loc 1 118 117 is_stmt 1
	.loc 1 118 174 is_stmt 0
	lw	a4,80(sp)
	sw	a4,4(a5)
.LBE60:
	.loc 1 118 195 is_stmt 1
	.loc 1 120 5
	call	GLB_Set_UART_CLK
.LVL39:
	.loc 1 121 5
	li	a2,0
	li	a1,0
	li	a0,1
	call	GLB_Set_SPI_CLK
.LVL40:
	.loc 1 122 5
	li	a2,0
	li	a1,0
	li	a0,1
	call	GLB_Set_DBI_CLK
.LVL41:
	.loc 1 123 5
	li	a2,0
	li	a1,1
	li	a0,1
	call	GLB_Set_I2C_CLK
.LVL42:
	.loc 1 124 5
	li	a2,1
	li	a1,1
	li	a0,1
	call	GLB_Set_ADC_CLK
.LVL43:
	.loc 1 125 5
	li	a0,1
	call	GLB_Set_DIG_CLK_Sel
.LVL44:
	.loc 1 126 5
	li	a2,78
	li	a1,1
	li	a0,1
	call	GLB_Set_DIG_512K_CLK
.LVL45:
	.loc 1 127 5
	li	a0,0
	call	GLB_Set_PWM1_IO_Sel
.LVL46:
	.loc 1 128 5
	li	a2,19
	li	a1,0
	li	a0,1
	call	GLB_Set_IR_CLK
.LVL47:
	.loc 1 129 5
	li	a2,3
	li	a1,1
	li	a0,1
	call	GLB_Set_CAM_CLK
.LVL48:
	.loc 1 131 5
	li	a0,1
	call	GLB_Set_PKA_CLK_Sel
.LVL49:
	.loc 1 137 5
	li	a0,1
	call	GLB_Set_USB_CLK_From_WIFIPLL
.LVL50:
	.loc 1 138 5
	li	a0,0
	call	GLB_Swap_MCU_SPI_0_MOSI_With_MISO
.LVL51:
.LBE63:
.LBE70:
	.loc 1 386 5
	call	qcc74x_irq_initialize
.LVL52:
	.loc 1 393 5
.LBB71:
.LBB68:
	.loc 1 328 5
	.loc 1 330 5
	.loc 1 330 12 is_stmt 0
	lui	a0,%hi(.LC13)
	addi	a0,a0,%lo(.LC13)
	call	qcc74x_device_get_by_name
.LVL53:
	.loc 1 331 5
	li	a2,2
	li	a1,21
	.loc 1 330 12
	sw	a0,12(sp)
.LVL54:
	.loc 1 331 5 is_stmt 1
	call	qcc74x_gpio_uart_init
.LVL55:
	.loc 1 332 5
	lw	a0,12(sp)
	li	a2,3
	li	a1,22
	call	qcc74x_gpio_uart_init
.LVL56:
	.loc 1 334 5
	.loc 1 335 5
	.loc 1 336 5
	.loc 1 337 5
	.loc 1 338 5
	.loc 1 339 5
	.loc 1 340 5
	.loc 1 341 5
	.loc 1 335 18 is_stmt 0
	li	a5,1998848
	addi	a5,a5,1152
	.loc 1 344 13
	lui	a0,%hi(.LC14)
	.loc 1 335 18
	sw	a5,84(sp)
	.loc 1 344 13
	addi	a0,a0,%lo(.LC14)
	.loc 1 334 33
	li	a5,117899264
	sw	a5,92(sp)
	.loc 1 342 5 is_stmt 1
	.loc 1 344 5
	.loc 1 334 33 is_stmt 0
	sw	s0,88(sp)
	.loc 1 344 13
	call	qcc74x_device_get_by_name
.LVL57:
	.loc 1 344 11
	lui	s0,%hi(.LANCHOR0)
	addi	s0,s0,%lo(.LANCHOR0)
	.loc 1 346 5
	addi	a1,sp,84
	.loc 1 344 11
	sw	a0,0(s0)
	.loc 1 346 5 is_stmt 1
	call	qcc74x_uart_init
.LVL58:
	.loc 1 347 5
	lw	a0,0(s0)
.LBE68:
.LBE71:
	.loc 1 395 14 is_stmt 0
	lui	s0,%hi(__HeapLimit)
	addi	s0,s0,%lo(__HeapLimit)
.LBB72:
.LBB69:
	.loc 1 347 5
	call	qcc74x_uart_set_console
.LVL59:
.LBE69:
.LBE72:
	.loc 1 395 5 is_stmt 1
	.loc 1 395 14 is_stmt 0
	lui	a0,%hi(__HeapBase)
	addi	a1,a0,%lo(__HeapBase)
	sub	s0,s0,a1
.LVL60:
	.loc 1 396 5 is_stmt 1
	mv	a1,s0
	addi	a0,a0,%lo(__HeapBase)
	call	kmem_init
.LVL61:
	.loc 1 398 5
	call	qcc74x_show_log
.LVL62:
	.loc 1 399 5
	call	qcc74x_show_component_version
.LVL63:
	.loc 1 407 5
	call	board_psram_x8_init
.LVL64:
	.loc 1 409 5
	.loc 1 409 14 is_stmt 0
	lui	a0,%hi(__psram_heap_base)
	addi	a2,a0,%lo(__psram_heap_base)
	sub	s1,s1,a2
.LVL65:
	.loc 1 410 5 is_stmt 1
	mv	a1,s1
	addi	a0,a0,%lo(__psram_heap_base)
	call	pmem_init
.LVL66:
	.loc 1 413 5
	srli	s0,s0,10
	lui	a0,%hi(.LC15)
	srli	a2,s1,10
	mv	a1,s0
	addi	a0,a0,%lo(.LC15)
	call	printf
.LVL67:
	.loc 1 429 5
	call	qcc74x_show_chipinfo
.LVL68:
	.loc 1 431 5
	.loc 1 431 8 is_stmt 0
	beq	s3,zero,.L19
	.loc 1 432 9 is_stmt 1
	lui	a0,%hi(.LC16)
	addi	a0,a0,%lo(.LC16)
	call	printf
.LVL69:
.L19:
	.loc 1 434 5
	lui	a0,%hi(.LC17)
	mv	a1,s0
	addi	a0,a0,%lo(.LC17)
	call	printf
.LVL70:
	.loc 1 436 5
	li	s0,536870912
	addi	a5,s0,256
	lw	a1,84(a5)
	lw	a2,88(a5)
	lui	a0,%hi(.LC18)
	addi	a0,a0,%lo(.LC18)
	call	printf
.LVL71:
	.loc 1 437 5
	addi	s0,s0,1408
	lw	a1,4(s0)
	lw	a2,8(s0)
	lui	a0,%hi(.LC19)
	addi	a0,a0,%lo(.LC19)
	call	printf
.LVL72:
	.loc 1 439 5
	addi	a0,sp,20
	call	HBN_Get_Xtal_Value
.LVL73:
	.loc 1 440 5
	.loc 1 440 48 is_stmt 0
	li	a5,536936448
	lw	a5,-1916(a5)
	.loc 1 440 5
	lw	a1,20(sp)
	.loc 1 440 123
	extu	a5,a5,3+1-1,3
	.loc 1 440 5
	bne	a5,zero,.L21
	lui	a2,%hi(.LC12)
	addi	a2,a2,%lo(.LC12)
.L20:
	.loc 1 440 5 discriminator 4
	lui	a0,%hi(.LC20)
	addi	a0,a0,%lo(.LC20)
	call	printf
.LVL74:
	.loc 1 442 5 is_stmt 1 discriminator 4
	call	log_start
.LVL75:
	.loc 1 449 5 discriminator 4
	.loc 1 450 5 discriminator 4
	call	qcc74x_sec_mutex_init
.LVL76:
	.loc 1 452 5 discriminator 4
	mv	a0,s2
	call	qcc74x_irq_restore
.LVL77:
	.loc 1 454 5 discriminator 4
	lui	a0,%hi(.LC21)
	addi	a0,a0,%lo(.LC21)
	call	printf
.LVL78:
	.loc 1 455 5 discriminator 4
	lui	a0,%hi(.LC22)
	addi	a0,a0,%lo(.LC22)
	call	printf
.LVL79:
	.loc 1 456 1 is_stmt 0 discriminator 4
	lw	ra,124(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,120(sp)
	.cfi_restore 8
	lw	s1,116(sp)
	.cfi_restore 9
.LVL80:
	lw	s2,112(sp)
	.cfi_restore 18
.LVL81:
	lw	s3,108(sp)
	.cfi_restore 19
.LVL82:
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
	jr	ra
.LVL83:
.L21:
	.cfi_restore_state
	.loc 1 440 5
	lui	a2,%hi(.LC11)
	addi	a2,a2,%lo(.LC11)
	j	.L20
	.cfi_endproc
.LFE249:
	.size	board_init, .-board_init
	.section	.text.mfg_config,"ax",@progbits
	.align	1
	.globl	mfg_config
	.type	mfg_config, @function
mfg_config:
.LFB252:
	.loc 1 530 1 is_stmt 1
	.cfi_startproc
	.loc 1 531 5
.LVL84:
	.loc 1 538 5
	.loc 1 538 42 is_stmt 0
	li	a5,1734766592
	li	a4,536932352
	addi	a5,a5,-720
	sw	a5,256(a4)
.LVL85:
	.loc 1 539 1
	ret
	.cfi_endproc
.LFE252:
	.size	mfg_config, .-mfg_config
	.section	.text.board_device_info_version,"ax",@progbits
	.align	1
	.globl	board_device_info_version
	.type	board_device_info_version, @function
board_device_info_version:
.LFB254:
	.loc 1 778 1 is_stmt 1
	.cfi_startproc
	.loc 1 779 5
	.loc 1 780 5
	.loc 1 781 5
	.loc 1 782 9
	.loc 1 778 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 782 9
	lui	a0,%hi(.LANCHOR1)
	.loc 1 778 1
	sw	s0,8(sp)
	.cfi_offset 8, -8
	.loc 1 782 9
	addi	s0,a0,%lo(.LANCHOR1)
	addi	a0,a0,%lo(.LANCHOR1)
	.loc 1 778 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 782 9
	call	qcc74x_efuse_get_device_info
.LVL86:
	.loc 1 784 5 is_stmt 1
	.loc 1 785 1 is_stmt 0
	lbu	a0,3(s0)
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE254:
	.size	board_device_info_version, .-board_device_info_version
	.globl	__fsym_mfg
	.globl	__fsym_mfg_name
	.globl	__fsym_reboot
	.globl	__fsym_reboot_name
	.globl	__fsym_sysver
	.globl	__fsym_sysver_name
	.section	.bss.device_info.0,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	device_info.0, @object
	.size	device_info.0, 36
device_info.0:
	.zero	36
	.section	.bss.uart0,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	uart0, @object
	.size	uart0, 4
uart0:
	.zero	4
	.section	.rodata.__fsym_mfg_name,"a"
	.align	2
	.type	__fsym_mfg_name, @object
	.size	__fsym_mfg_name, 4
__fsym_mfg_name:
	.string	"mfg"
	.section	.rodata.__fsym_reboot_name,"a"
	.align	2
	.type	__fsym_reboot_name, @object
	.size	__fsym_reboot_name, 7
__fsym_reboot_name:
	.string	"reboot"
	.section	.rodata.__fsym_sysver_name,"a"
	.align	2
	.type	__fsym_sysver_name, @object
	.size	__fsym_sysver_name, 7
__fsym_sysver_name:
	.string	"sysver"
	.section	FSymTab,"a"
	.align	2
	.type	__fsym_mfg, @object
	.size	__fsym_mfg, 8
__fsym_mfg:
	.word	__fsym_mfg_name
	.word	mfg_cmd
	.type	__fsym_reboot, @object
	.size	__fsym_reboot, 8
__fsym_reboot:
	.word	__fsym_reboot_name
	.word	reboot_cmd
	.type	__fsym_sysver, @object
	.size	__fsym_sysver, 8
__fsym_sysver:
	.word	__fsym_sysver_name
	.word	show_sys_versoin_cmd
	.text
.Letext0:
	.file 2 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\machine\\_default_types.h"
	.file 3 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\sys\\_stdint.h"
	.file 4 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\lib\\gcc\\riscv64-unknown-elf\\10.4.0\\include\\stddef.h"
	.file 5 ".\\drivers\\lhal\\include/qcc74x_core.h"
	.file 6 ".\\drivers\\lhal\\include/qcc74x_uart.h"
	.file 7 ".\\drivers\\lhal\\include/qcc74x_efuse.h"
	.file 8 ".\\drivers\\soc\\qcc743\\std\\include\\hardware/qcc743.h"
	.file 9 ".\\drivers\\soc\\qcc743\\std\\include/qcc743_common.h"
	.file 10 ".\\drivers\\soc\\qcc743\\std\\include/qcc743_clock.h"
	.file 11 ".\\components\\shell\\shell.h"
	.file 12 ".\\drivers\\sys\\qcc743/qcc743_sys.h"
	.file 13 ".\\drivers\\soc\\qcc743\\std\\include/qcc743_glb.h"
	.file 14 ".\\drivers\\lhal\\include/qcc74x_gpio.h"
	.file 15 ".\\drivers\\lhal\\include/qcc74x_irq.h"
	.file 16 ".\\drivers\\lhal\\include/qcc74x_flash.h"
	.file 17 ".\\components\\mm\\mem.h"
	.file 18 ".\\bsp\\board\\qcc74xdk\\board_flash_psram.h"
	.file 19 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\stdio.h"
	.file 20 ".\\drivers\\soc\\qcc743\\std\\include/qcc743_hbn.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x11ba
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF171
	.byte	0xc
	.4byte	.LASF172
	.4byte	.LASF173
	.4byte	.Ldebug_ranges0+0x1a0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF3
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
	.byte	0x3
	.4byte	.LASF4
	.byte	0x2
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
	.byte	0x3
	.4byte	.LASF11
	.byte	0x2
	.byte	0xe8
	.byte	0x16
	.4byte	0x94
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x46
	.byte	0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x60
	.byte	0x5
	.4byte	0xb3
	.byte	0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x52
	.byte	0x15
	.4byte	0x88
	.byte	0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0xd1
	.byte	0x16
	.4byte	0x94
	.byte	0x6
	.byte	0x4
	.byte	0x7
	.byte	0x4
	.4byte	0xe4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF18
	.byte	0x8
	.4byte	0xe4
	.byte	0x7
	.byte	0x4
	.4byte	0xeb
	.byte	0x9
	.4byte	.LASF26
	.byte	0x10
	.byte	0x5
	.byte	0x67
	.byte	0x8
	.4byte	0x15f
	.byte	0xa
	.4byte	.LASF19
	.byte	0x5
	.byte	0x68
	.byte	0x11
	.4byte	0xf0
	.byte	0
	.byte	0xa
	.4byte	.LASF20
	.byte	0x5
	.byte	0x69
	.byte	0xe
	.4byte	0xb3
	.byte	0x4
	.byte	0xa
	.4byte	.LASF21
	.byte	0x5
	.byte	0x6a
	.byte	0xd
	.4byte	0x9b
	.byte	0x8
	.byte	0xb
	.string	"idx"
	.byte	0x5
	.byte	0x6b
	.byte	0xd
	.4byte	0x9b
	.byte	0x9
	.byte	0xa
	.4byte	.LASF22
	.byte	0x5
	.byte	0x6c
	.byte	0xd
	.4byte	0x9b
	.byte	0xa
	.byte	0xa
	.4byte	.LASF23
	.byte	0x5
	.byte	0x6d
	.byte	0xd
	.4byte	0x9b
	.byte	0xb
	.byte	0xa
	.4byte	.LASF24
	.byte	0x5
	.byte	0x6e
	.byte	0xb
	.4byte	0xdc
	.byte	0xc
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF25
	.byte	0x9
	.4byte	.LASF27
	.byte	0xc
	.byte	0x6
	.byte	0xe5
	.byte	0x8
	.4byte	0x1e9
	.byte	0xa
	.4byte	.LASF28
	.byte	0x6
	.byte	0xe6
	.byte	0xe
	.4byte	0xb3
	.byte	0
	.byte	0xa
	.4byte	.LASF29
	.byte	0x6
	.byte	0xe7
	.byte	0xd
	.4byte	0x9b
	.byte	0x4
	.byte	0xa
	.4byte	.LASF30
	.byte	0x6
	.byte	0xe8
	.byte	0xd
	.4byte	0x9b
	.byte	0x5
	.byte	0xa
	.4byte	.LASF31
	.byte	0x6
	.byte	0xe9
	.byte	0xd
	.4byte	0x9b
	.byte	0x6
	.byte	0xa
	.4byte	.LASF32
	.byte	0x6
	.byte	0xea
	.byte	0xd
	.4byte	0x9b
	.byte	0x7
	.byte	0xa
	.4byte	.LASF33
	.byte	0x6
	.byte	0xeb
	.byte	0xd
	.4byte	0x9b
	.byte	0x8
	.byte	0xa
	.4byte	.LASF34
	.byte	0x6
	.byte	0xec
	.byte	0xd
	.4byte	0x9b
	.byte	0x9
	.byte	0xa
	.4byte	.LASF35
	.byte	0x6
	.byte	0xed
	.byte	0xd
	.4byte	0x9b
	.byte	0xa
	.byte	0xa
	.4byte	.LASF36
	.byte	0x6
	.byte	0xee
	.byte	0xd
	.4byte	0x9b
	.byte	0xb
	.byte	0
	.byte	0xc
	.byte	0x24
	.byte	0x7
	.byte	0xa
	.byte	0x9
	.4byte	0x268
	.byte	0xa
	.4byte	.LASF37
	.byte	0x7
	.byte	0xc
	.byte	0xd
	.4byte	0x9b
	.byte	0
	.byte	0xa
	.4byte	.LASF38
	.byte	0x7
	.byte	0xd
	.byte	0xd
	.4byte	0x9b
	.byte	0x1
	.byte	0xa
	.4byte	.LASF39
	.byte	0x7
	.byte	0x12
	.byte	0xd
	.4byte	0x9b
	.byte	0x2
	.byte	0xa
	.4byte	.LASF40
	.byte	0x7
	.byte	0x17
	.byte	0xd
	.4byte	0x9b
	.byte	0x3
	.byte	0xa
	.4byte	.LASF41
	.byte	0x7
	.byte	0x1a
	.byte	0xe
	.4byte	0xa7
	.byte	0x4
	.byte	0xa
	.4byte	.LASF42
	.byte	0x7
	.byte	0x1c
	.byte	0x11
	.4byte	0xf0
	.byte	0x8
	.byte	0xa
	.4byte	.LASF43
	.byte	0x7
	.byte	0x1d
	.byte	0x11
	.4byte	0xf0
	.byte	0xc
	.byte	0xa
	.4byte	.LASF44
	.byte	0x7
	.byte	0x20
	.byte	0x11
	.4byte	0xf0
	.byte	0x10
	.byte	0xa
	.4byte	.LASF45
	.byte	0x7
	.byte	0x23
	.byte	0xa
	.4byte	0x268
	.byte	0x14
	.byte	0
	.byte	0xd
	.4byte	0xe4
	.4byte	0x278
	.byte	0xe
	.4byte	0x94
	.byte	0xf
	.byte	0
	.byte	0x3
	.4byte	.LASF46
	.byte	0x7
	.byte	0x25
	.byte	0x3
	.4byte	0x1e9
	.byte	0xf
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0x8
	.byte	0xed
	.byte	0xe
	.4byte	0x371
	.byte	0x10
	.4byte	.LASF47
	.byte	0
	.byte	0x10
	.4byte	.LASF48
	.byte	0x1
	.byte	0x10
	.4byte	.LASF49
	.byte	0x2
	.byte	0x10
	.4byte	.LASF50
	.byte	0x3
	.byte	0x10
	.4byte	.LASF51
	.byte	0x4
	.byte	0x10
	.4byte	.LASF52
	.byte	0x5
	.byte	0x10
	.4byte	.LASF53
	.byte	0x6
	.byte	0x10
	.4byte	.LASF54
	.byte	0x7
	.byte	0x10
	.4byte	.LASF55
	.byte	0x8
	.byte	0x10
	.4byte	.LASF56
	.byte	0x9
	.byte	0x10
	.4byte	.LASF57
	.byte	0xa
	.byte	0x10
	.4byte	.LASF58
	.byte	0xb
	.byte	0x10
	.4byte	.LASF59
	.byte	0xc
	.byte	0x10
	.4byte	.LASF60
	.byte	0xd
	.byte	0x10
	.4byte	.LASF61
	.byte	0xe
	.byte	0x10
	.4byte	.LASF62
	.byte	0xf
	.byte	0x10
	.4byte	.LASF63
	.byte	0x10
	.byte	0x10
	.4byte	.LASF64
	.byte	0x11
	.byte	0x10
	.4byte	.LASF65
	.byte	0x12
	.byte	0x10
	.4byte	.LASF66
	.byte	0x13
	.byte	0x10
	.4byte	.LASF67
	.byte	0x14
	.byte	0x10
	.4byte	.LASF68
	.byte	0x15
	.byte	0x10
	.4byte	.LASF69
	.byte	0x16
	.byte	0x10
	.4byte	.LASF70
	.byte	0x17
	.byte	0x10
	.4byte	.LASF71
	.byte	0x18
	.byte	0x10
	.4byte	.LASF72
	.byte	0x19
	.byte	0x10
	.4byte	.LASF73
	.byte	0x1a
	.byte	0x10
	.4byte	.LASF74
	.byte	0x1b
	.byte	0x10
	.4byte	.LASF75
	.byte	0x1c
	.byte	0x10
	.4byte	.LASF76
	.byte	0x1d
	.byte	0x10
	.4byte	.LASF77
	.byte	0x1e
	.byte	0x10
	.4byte	.LASF78
	.byte	0x1f
	.byte	0x10
	.4byte	.LASF79
	.byte	0x20
	.byte	0x10
	.4byte	.LASF80
	.byte	0x21
	.byte	0x10
	.4byte	.LASF81
	.byte	0x22
	.byte	0x10
	.4byte	.LASF82
	.byte	0x23
	.byte	0x10
	.4byte	.LASF83
	.byte	0x24
	.byte	0
	.byte	0xf
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0x9
	.byte	0x58
	.byte	0xe
	.4byte	0x38c
	.byte	0x10
	.4byte	.LASF84
	.byte	0
	.byte	0x10
	.4byte	.LASF85
	.byte	0x1
	.byte	0
	.byte	0xd
	.4byte	0x9b
	.4byte	0x39c
	.byte	0xe
	.4byte	0x94
	.byte	0x3
	.byte	0
	.byte	0xf
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0xa
	.byte	0x1e
	.byte	0xe
	.4byte	0x3db
	.byte	0x10
	.4byte	.LASF86
	.byte	0
	.byte	0x10
	.4byte	.LASF87
	.byte	0x1
	.byte	0x10
	.4byte	.LASF88
	.byte	0x2
	.byte	0x10
	.4byte	.LASF89
	.byte	0x3
	.byte	0x10
	.4byte	.LASF90
	.byte	0x4
	.byte	0x10
	.4byte	.LASF91
	.byte	0x5
	.byte	0x10
	.4byte	.LASF92
	.byte	0x6
	.byte	0x10
	.4byte	.LASF93
	.byte	0x7
	.byte	0
	.byte	0xf
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0xa
	.byte	0x29
	.byte	0xe
	.4byte	0x3f6
	.byte	0x10
	.4byte	.LASF94
	.byte	0
	.byte	0x10
	.4byte	.LASF95
	.byte	0x1
	.byte	0
	.byte	0x11
	.4byte	.LASF96
	.byte	0x1
	.byte	0x21
	.byte	0x11
	.4byte	0xb3
	.byte	0x11
	.4byte	.LASF97
	.byte	0x1
	.byte	0x22
	.byte	0x11
	.4byte	0xb3
	.byte	0x11
	.4byte	.LASF98
	.byte	0x1
	.byte	0x23
	.byte	0x11
	.4byte	0xb3
	.byte	0x11
	.4byte	.LASF99
	.byte	0x1
	.byte	0x24
	.byte	0x11
	.4byte	0xb3
	.byte	0x12
	.4byte	.LASF109
	.byte	0x1
	.byte	0x2e
	.byte	0x20
	.4byte	0x438
	.byte	0x5
	.byte	0x3
	.4byte	uart0
	.byte	0x7
	.byte	0x4
	.4byte	0xf6
	.byte	0x3
	.4byte	.LASF100
	.byte	0xb
	.byte	0x3f
	.byte	0xf
	.4byte	0x44a
	.byte	0x7
	.byte	0x4
	.4byte	0x450
	.byte	0x13
	.4byte	0x81
	.byte	0x7
	.byte	0x4
	.4byte	0xde
	.byte	0x9
	.4byte	.LASF101
	.byte	0x8
	.byte	0xb
	.byte	0x5e
	.byte	0x8
	.4byte	0x483
	.byte	0xa
	.4byte	.LASF19
	.byte	0xb
	.byte	0x5f
	.byte	0x11
	.4byte	0xf0
	.byte	0
	.byte	0xa
	.4byte	.LASF102
	.byte	0xb
	.byte	0x63
	.byte	0x12
	.4byte	0x43e
	.byte	0x4
	.byte	0
	.byte	0x8
	.4byte	0x45b
	.byte	0xd
	.4byte	0xeb
	.4byte	0x498
	.byte	0xe
	.4byte	0x94
	.byte	0x6
	.byte	0
	.byte	0x8
	.4byte	0x488
	.byte	0x14
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x204
	.byte	0xc
	.4byte	0x498
	.byte	0x5
	.byte	0x3
	.4byte	__fsym_sysver_name
	.byte	0x14
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x204
	.byte	0x5e
	.4byte	0x483
	.byte	0x5
	.byte	0x3
	.4byte	__fsym_sysver
	.byte	0x14
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x20c
	.byte	0xc
	.4byte	0x498
	.byte	0x5
	.byte	0x3
	.4byte	__fsym_reboot_name
	.byte	0x14
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x20c
	.byte	0x5e
	.4byte	0x483
	.byte	0x5
	.byte	0x3
	.4byte	__fsym_reboot
	.byte	0xd
	.4byte	0xeb
	.4byte	0x4f9
	.byte	0xe
	.4byte	0x94
	.byte	0x3
	.byte	0
	.byte	0x8
	.4byte	0x4e9
	.byte	0x14
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x222
	.byte	0xc
	.4byte	0x4f9
	.byte	0x5
	.byte	0x3
	.4byte	__fsym_mfg_name
	.byte	0x14
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x222
	.byte	0x58
	.4byte	0x483
	.byte	0x5
	.byte	0x3
	.4byte	__fsym_mfg
	.byte	0x15
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x309
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB254
	.4byte	.LFE254-.LFB254
	.byte	0x1
	.byte	0x9c
	.4byte	0x571
	.byte	0x16
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x30b
	.byte	0x2a
	.4byte	0x278
	.byte	0x5
	.byte	0x3
	.4byte	device_info.0
	.byte	0x17
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x30c
	.byte	0x10
	.4byte	0x81
	.byte	0
	.byte	0x18
	.4byte	.LVL86
	.4byte	0xff9
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x21d
	.byte	0xd
	.4byte	.LFB253
	.4byte	.LFE253-.LFB253
	.byte	0x1
	.byte	0x9c
	.4byte	0x5cf
	.byte	0x1b
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x21d
	.byte	0x19
	.4byte	0x81
	.4byte	.LLST2
	.byte	0x1b
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x21d
	.byte	0x26
	.4byte	0x455
	.4byte	.LLST3
	.byte	0x1c
	.4byte	0x5cf
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.2byte	0x21f
	.byte	0x5
	.4byte	0x5c5
	.byte	0x1d
	.4byte	0x606
	.byte	0
	.byte	0x1e
	.4byte	.LVL9
	.4byte	0x1005
	.byte	0
	.byte	0x1f
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x211
	.byte	0x6
	.byte	0x1
	.4byte	0x614
	.byte	0x20
	.4byte	.LASF175
	.byte	0x4
	.byte	0x1
	.2byte	0x213
	.byte	0xb
	.4byte	0x606
	.byte	0x21
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x214
	.byte	0x11
	.4byte	0x38c
	.byte	0x21
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x215
	.byte	0x12
	.4byte	0xb3
	.byte	0
	.byte	0x22
	.string	"mfg"
	.byte	0x1
	.2byte	0x216
	.byte	0x7
	.4byte	0x5dd
	.byte	0
	.byte	0x1a
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x208
	.byte	0xd
	.4byte	.LFB251
	.4byte	.LFE251-.LFB251
	.byte	0x1
	.byte	0x9c
	.4byte	0x657
	.byte	0x1b
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x208
	.byte	0x1c
	.4byte	0x81
	.4byte	.LLST0
	.byte	0x1b
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x208
	.byte	0x29
	.4byte	0x455
	.4byte	.LLST1
	.byte	0x1e
	.4byte	.LVL6
	.4byte	0x1005
	.byte	0
	.byte	0x1a
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x200
	.byte	0xd
	.4byte	.LFB250
	.4byte	.LFE250-.LFB250
	.byte	0x1
	.byte	0x9c
	.4byte	0x69a
	.byte	0x1b
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x200
	.byte	0x26
	.4byte	0x81
	.4byte	.LLST7
	.byte	0x1b
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x200
	.byte	0x33
	.4byte	0x455
	.4byte	.LLST8
	.byte	0x1e
	.4byte	.LVL26
	.4byte	0xcb8
	.byte	0
	.byte	0x23
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x16d
	.byte	0x6
	.4byte	.LFB249
	.4byte	.LFE249-.LFB249
	.byte	0x1
	.byte	0x9c
	.4byte	0xbe4
	.byte	0x24
	.string	"ret"
	.byte	0x1
	.2byte	0x16f
	.byte	0x9
	.4byte	0x81
	.4byte	.LLST9
	.byte	0x25
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x170
	.byte	0xf
	.4byte	0xc4
	.4byte	.LLST10
	.byte	0x25
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x171
	.byte	0xc
	.4byte	0xd0
	.4byte	.LLST11
	.byte	0x16
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x172
	.byte	0xe
	.4byte	0xb3
	.byte	0x3
	.byte	0x91
	.byte	0x94,0x7f
	.byte	0x26
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x1c1
	.byte	0x11
	.byte	0x27
	.4byte	0xe48
	.4byte	.LBB25
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x17d
	.byte	0x5
	.4byte	0x9b8
	.byte	0x28
	.4byte	0xe55
	.4byte	.Ldebug_ranges0+0x28
	.4byte	0x72a
	.byte	0x29
	.4byte	0xe5a
	.byte	0x3
	.byte	0x91
	.byte	0x98,0x7f
	.byte	0
	.byte	0x28
	.4byte	0xe79
	.4byte	.Ldebug_ranges0+0x50
	.4byte	0x741
	.byte	0x29
	.4byte	0xe7e
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x7f
	.byte	0
	.byte	0x28
	.4byte	0xe8b
	.4byte	.Ldebug_ranges0+0x70
	.4byte	0x758
	.byte	0x29
	.4byte	0xe90
	.byte	0x3
	.byte	0x91
	.byte	0xa4,0x7f
	.byte	0
	.byte	0x28
	.4byte	0xee5
	.4byte	.Ldebug_ranges0+0x90
	.4byte	0x76f
	.byte	0x29
	.4byte	0xeea
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0
	.byte	0x28
	.4byte	0xe67
	.4byte	.Ldebug_ranges0+0xa8
	.4byte	0x786
	.byte	0x29
	.4byte	0xe6c
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0
	.byte	0x28
	.4byte	0xe9d
	.4byte	.Ldebug_ranges0+0xc0
	.4byte	0x79d
	.byte	0x29
	.4byte	0xea2
	.byte	0x3
	.byte	0x91
	.byte	0xa8,0x7f
	.byte	0
	.byte	0x28
	.4byte	0xeaf
	.4byte	.Ldebug_ranges0+0xe0
	.4byte	0x7b4
	.byte	0x29
	.4byte	0xeb4
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0
	.byte	0x28
	.4byte	0xec1
	.4byte	.Ldebug_ranges0+0x100
	.4byte	0x7cb
	.byte	0x29
	.4byte	0xec6
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0
	.byte	0x28
	.4byte	0xed3
	.4byte	.Ldebug_ranges0+0x120
	.4byte	0x7e2
	.byte	0x29
	.4byte	0xed8
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0
	.byte	0x2a
	.4byte	0xef7
	.4byte	.LBB52
	.4byte	.LBE52-.LBB52
	.4byte	0x7fd
	.byte	0x29
	.4byte	0xefc
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0
	.byte	0x2a
	.4byte	0xf09
	.4byte	.LBB53
	.4byte	.LBE53-.LBB53
	.4byte	0x817
	.byte	0x29
	.4byte	0xf0e
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0
	.byte	0x2a
	.4byte	0xf1b
	.4byte	.LBB54
	.4byte	.LBE54-.LBB54
	.4byte	0x831
	.byte	0x29
	.4byte	0xf20
	.byte	0x2
	.byte	0x91
	.byte	0x44
	.byte	0
	.byte	0x28
	.4byte	0xf2d
	.4byte	.Ldebug_ranges0+0x138
	.4byte	0x847
	.byte	0x29
	.4byte	0xf32
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0
	.byte	0x28
	.4byte	0xf51
	.4byte	.Ldebug_ranges0+0x150
	.4byte	0x85d
	.byte	0x29
	.4byte	0xf52
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0
	.byte	0x28
	.4byte	0xf3f
	.4byte	.Ldebug_ranges0+0x168
	.4byte	0x873
	.byte	0x29
	.4byte	0xf44
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0
	.byte	0x2b
	.4byte	.LVL39
	.4byte	0x1011
	.4byte	0x890
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x2b
	.4byte	.LVL40
	.4byte	0x101e
	.4byte	0x8ad
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x2b
	.4byte	.LVL41
	.4byte	0x102b
	.4byte	0x8ca
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x2b
	.4byte	.LVL42
	.4byte	0x1038
	.4byte	0x8e7
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x2b
	.4byte	.LVL43
	.4byte	0x1045
	.4byte	0x904
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x2b
	.4byte	.LVL44
	.4byte	0x1052
	.4byte	0x917
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x2b
	.4byte	.LVL45
	.4byte	0x105f
	.4byte	0x935
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x4e
	.byte	0
	.byte	0x2b
	.4byte	.LVL46
	.4byte	0x106c
	.4byte	0x948
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x2b
	.4byte	.LVL47
	.4byte	0x1079
	.4byte	0x965
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x43
	.byte	0
	.byte	0x2b
	.4byte	.LVL48
	.4byte	0x1086
	.4byte	0x982
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x2b
	.4byte	.LVL49
	.4byte	0x1093
	.4byte	0x995
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x2b
	.4byte	.LVL50
	.4byte	0x10a0
	.4byte	0x9a8
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x18
	.4byte	.LVL51
	.4byte	0x10ad
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x27
	.4byte	0xbe4
	.4byte	.LBB66
	.4byte	.Ldebug_ranges0+0x180
	.byte	0x1
	.2byte	0x189
	.byte	0x5
	.4byte	0xa70
	.byte	0x2c
	.4byte	.Ldebug_ranges0+0x180
	.byte	0x2d
	.4byte	0xbf2
	.4byte	.LLST12
	.byte	0x29
	.4byte	0xbff
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x2b
	.4byte	.LVL53
	.4byte	0x10ba
	.4byte	0x9fa
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.byte	0x2b
	.4byte	.LVL55
	.4byte	0x10c6
	.4byte	0xa1a
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x4
	.byte	0x91
	.byte	0x8c,0x7f
	.byte	0x6
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x45
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x2b
	.4byte	.LVL56
	.4byte	0x10c6
	.4byte	0xa3a
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x4
	.byte	0x91
	.byte	0x8c,0x7f
	.byte	0x6
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x46
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x2b
	.4byte	.LVL57
	.4byte	0x10ba
	.4byte	0xa51
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.byte	0x2b
	.4byte	.LVL58
	.4byte	0x10d3
	.4byte	0xa65
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0
	.byte	0x2e
	.4byte	.LVL59
	.4byte	0x10df
	.byte	0
	.byte	0
	.byte	0x2e
	.4byte	.LVL34
	.4byte	0x10ec
	.byte	0x2e
	.4byte	.LVL36
	.4byte	0x10f8
	.byte	0x2e
	.4byte	.LVL38
	.4byte	0xf60
	.byte	0x2e
	.4byte	.LVL52
	.4byte	0x1104
	.byte	0x2b
	.4byte	.LVL61
	.4byte	0x1110
	.4byte	0xaa8
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x2e
	.4byte	.LVL62
	.4byte	0xddd
	.byte	0x2e
	.4byte	.LVL63
	.4byte	0xcb8
	.byte	0x2e
	.4byte	.LVL64
	.4byte	0x111c
	.byte	0x2b
	.4byte	.LVL66
	.4byte	0x1128
	.4byte	0xad7
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x2b
	.4byte	.LVL67
	.4byte	0x1134
	.4byte	0xafc
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x4
	.byte	0x79
	.byte	0
	.byte	0x3a
	.byte	0x25
	.byte	0
	.byte	0x2e
	.4byte	.LVL68
	.4byte	0xc0d
	.byte	0x2b
	.4byte	.LVL69
	.4byte	0x1134
	.4byte	0xb1c
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0
	.byte	0x2b
	.4byte	.LVL70
	.4byte	0x1134
	.4byte	0xb39
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x2b
	.4byte	.LVL71
	.4byte	0x1134
	.4byte	0xb50
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0
	.byte	0x2b
	.4byte	.LVL72
	.4byte	0x1134
	.4byte	0xb67
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0
	.byte	0x2b
	.4byte	.LVL73
	.4byte	0x1140
	.4byte	0xb7c
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x94,0x7f
	.byte	0
	.byte	0x2b
	.4byte	.LVL74
	.4byte	0x1134
	.4byte	0xb93
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC20
	.byte	0
	.byte	0x2e
	.4byte	.LVL75
	.4byte	0x114d
	.byte	0x2e
	.4byte	.LVL76
	.4byte	0x1159
	.byte	0x2b
	.4byte	.LVL77
	.4byte	0x1166
	.4byte	0xbb9
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x2b
	.4byte	.LVL78
	.4byte	0x1134
	.4byte	0xbd0
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC21
	.byte	0
	.byte	0x18
	.4byte	.LVL79
	.4byte	0x1134
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC22
	.byte	0
	.byte	0
	.byte	0x2f
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x141
	.byte	0xd
	.byte	0x1
	.4byte	0xc0d
	.byte	0x30
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x148
	.byte	0x1d
	.4byte	0x438
	.byte	0x22
	.string	"cfg"
	.byte	0x1
	.2byte	0x14e
	.byte	0x21
	.4byte	0x166
	.byte	0
	.byte	0x23
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x12f
	.byte	0x6
	.4byte	.LFB247
	.4byte	.LFE247-.LFB247
	.byte	0x1
	.byte	0x9c
	.4byte	0xcb8
	.byte	0x16
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x131
	.byte	0x23
	.4byte	0x278
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x2b
	.4byte	.LVL27
	.4byte	0xff9
	.4byte	0xc48
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0
	.byte	0x2b
	.4byte	.LVL28
	.4byte	0x1134
	.4byte	0xc5f
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0x2b
	.4byte	.LVL29
	.4byte	0x1134
	.4byte	0xc76
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.byte	0x2b
	.4byte	.LVL30
	.4byte	0x1134
	.4byte	0xc8d
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.byte	0x2b
	.4byte	.LVL31
	.4byte	0x1134
	.4byte	0xca4
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0x18
	.4byte	.LVL32
	.4byte	0x1134
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x122
	.byte	0x6
	.4byte	.LFB246
	.4byte	.LFE246-.LFB246
	.byte	0x1
	.byte	0x9c
	.4byte	0xd5a
	.byte	0x31
	.string	"ctx"
	.byte	0x1
	.2byte	0x124
	.byte	0x12
	.4byte	0xd5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x25
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x125
	.byte	0x11
	.4byte	0xf0
	.4byte	.LLST6
	.byte	0x2b
	.4byte	.LVL17
	.4byte	0x1172
	.4byte	0xd07
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0x2b
	.4byte	.LVL18
	.4byte	0xd65
	.4byte	0xd1b
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x2b
	.4byte	.LVL22
	.4byte	0x1172
	.4byte	0xd32
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x2b
	.4byte	.LVL23
	.4byte	0x1172
	.4byte	0xd46
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL24
	.4byte	0x1172
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xf0
	.byte	0x8
	.4byte	0xd5a
	.byte	0x32
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x10d
	.byte	0xd
	.4byte	0xf0
	.4byte	.LFB245
	.4byte	.LFE245-.LFB245
	.byte	0x1
	.byte	0x9c
	.4byte	0xdd7
	.byte	0x33
	.string	"ctx"
	.byte	0x1
	.2byte	0x10d
	.byte	0x2e
	.4byte	0xdd7
	.4byte	.LLST4
	.byte	0x34
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x10f
	.byte	0x14
	.4byte	0x9b
	.byte	0x34
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x110
	.byte	0x14
	.4byte	0x9b
	.byte	0x30
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x111
	.byte	0x19
	.4byte	0xd60
	.byte	0x30
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x112
	.byte	0x19
	.4byte	0xd60
	.byte	0x25
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x113
	.byte	0x11
	.4byte	0xf0
	.4byte	.LLST5
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xd5a
	.byte	0x23
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x106
	.byte	0x6
	.4byte	.LFB244
	.4byte	.LFE244-.LFB244
	.byte	0x1
	.byte	0x9c
	.4byte	0xe48
	.byte	0x2b
	.4byte	.LVL10
	.4byte	0x1134
	.4byte	0xe0b
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x2b
	.4byte	.LVL11
	.4byte	0x1134
	.4byte	0xe22
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x35
	.4byte	.LVL12
	.4byte	0x1134
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.byte	0x36
	.4byte	.LASF178
	.byte	0x1
	.byte	0x66
	.byte	0xd
	.byte	0x1
	.4byte	0xf60
	.byte	0x37
	.4byte	0xe67
	.byte	0x38
	.4byte	.LASF133
	.byte	0x1
	.byte	0x68
	.byte	0x1c
	.4byte	0xbf
	.byte	0
	.byte	0x37
	.4byte	0xe79
	.byte	0x38
	.4byte	.LASF133
	.byte	0x1
	.byte	0x69
	.byte	0x1c
	.4byte	0xbf
	.byte	0
	.byte	0x37
	.4byte	0xe8b
	.byte	0x38
	.4byte	.LASF133
	.byte	0x1
	.byte	0x6a
	.byte	0x1c
	.4byte	0xbf
	.byte	0
	.byte	0x37
	.4byte	0xe9d
	.byte	0x38
	.4byte	.LASF133
	.byte	0x1
	.byte	0x6b
	.byte	0x1c
	.4byte	0xbf
	.byte	0
	.byte	0x37
	.4byte	0xeaf
	.byte	0x38
	.4byte	.LASF133
	.byte	0x1
	.byte	0x6c
	.byte	0x1c
	.4byte	0xbf
	.byte	0
	.byte	0x37
	.4byte	0xec1
	.byte	0x38
	.4byte	.LASF133
	.byte	0x1
	.byte	0x6d
	.byte	0x1c
	.4byte	0xbf
	.byte	0
	.byte	0x37
	.4byte	0xed3
	.byte	0x38
	.4byte	.LASF133
	.byte	0x1
	.byte	0x6e
	.byte	0x1c
	.4byte	0xbf
	.byte	0
	.byte	0x37
	.4byte	0xee5
	.byte	0x38
	.4byte	.LASF133
	.byte	0x1
	.byte	0x6f
	.byte	0x1c
	.4byte	0xbf
	.byte	0
	.byte	0x37
	.4byte	0xef7
	.byte	0x38
	.4byte	.LASF133
	.byte	0x1
	.byte	0x70
	.byte	0x1c
	.4byte	0xbf
	.byte	0
	.byte	0x37
	.4byte	0xf09
	.byte	0x38
	.4byte	.LASF133
	.byte	0x1
	.byte	0x71
	.byte	0x1c
	.4byte	0xbf
	.byte	0
	.byte	0x37
	.4byte	0xf1b
	.byte	0x38
	.4byte	.LASF133
	.byte	0x1
	.byte	0x72
	.byte	0x1c
	.4byte	0xbf
	.byte	0
	.byte	0x37
	.4byte	0xf2d
	.byte	0x38
	.4byte	.LASF133
	.byte	0x1
	.byte	0x73
	.byte	0x1c
	.4byte	0xbf
	.byte	0
	.byte	0x37
	.4byte	0xf3f
	.byte	0x38
	.4byte	.LASF133
	.byte	0x1
	.byte	0x74
	.byte	0x1c
	.4byte	0xbf
	.byte	0
	.byte	0x37
	.4byte	0xf51
	.byte	0x38
	.4byte	.LASF133
	.byte	0x1
	.byte	0x75
	.byte	0x1c
	.4byte	0xbf
	.byte	0
	.byte	0x39
	.byte	0x38
	.4byte	.LASF133
	.byte	0x1
	.byte	0x76
	.byte	0x1c
	.4byte	0xbf
	.byte	0
	.byte	0
	.byte	0x3a
	.4byte	.LASF134
	.byte	0x1
	.byte	0x35
	.byte	0x7d
	.4byte	.LFB242
	.4byte	.LFE242-.LFB242
	.byte	0x1
	.byte	0x9c
	.4byte	0xfdc
	.byte	0x2b
	.4byte	.LVL0
	.4byte	0x117e
	.4byte	0xf8e
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x34
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x2b
	.4byte	.LVL1
	.4byte	0x118b
	.4byte	0xfa1
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x35
	.byte	0
	.byte	0x2b
	.4byte	.LVL2
	.4byte	0x1198
	.4byte	0xfb4
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x2b
	.4byte	.LVL3
	.4byte	0x11a5
	.4byte	0xfc7
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x35
	.byte	0
	.byte	0x35
	.4byte	.LVL4
	.4byte	0x11b1
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x3b
	.4byte	0x5cf
	.4byte	.LFB252
	.4byte	.LFE252-.LFB252
	.byte	0x1
	.byte	0x9c
	.4byte	0xff9
	.byte	0x2d
	.4byte	0x606
	.4byte	.LLST13
	.byte	0
	.byte	0x3c
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0x7
	.byte	0x3d
	.byte	0x6
	.byte	0x3c
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0xc
	.byte	0x17
	.byte	0x5
	.byte	0x3d
	.4byte	.LASF137
	.4byte	.LASF137
	.byte	0xd
	.2byte	0x660
	.byte	0x11
	.byte	0x3d
	.4byte	.LASF138
	.4byte	.LASF138
	.byte	0xd
	.2byte	0x665
	.byte	0x11
	.byte	0x3d
	.4byte	.LASF139
	.4byte	.LASF139
	.byte	0xd
	.2byte	0x669
	.byte	0x11
	.byte	0x3d
	.4byte	.LASF140
	.4byte	.LASF140
	.byte	0xd
	.2byte	0x663
	.byte	0x11
	.byte	0x3d
	.4byte	.LASF141
	.4byte	.LASF141
	.byte	0xd
	.2byte	0x65b
	.byte	0x11
	.byte	0x3d
	.4byte	.LASF142
	.4byte	.LASF142
	.byte	0xd
	.2byte	0x66b
	.byte	0x11
	.byte	0x3d
	.4byte	.LASF143
	.4byte	.LASF143
	.byte	0xd
	.2byte	0x66c
	.byte	0x11
	.byte	0x3d
	.4byte	.LASF144
	.4byte	.LASF144
	.byte	0xd
	.2byte	0x667
	.byte	0x11
	.byte	0x3d
	.4byte	.LASF145
	.4byte	.LASF145
	.byte	0xd
	.2byte	0x65e
	.byte	0x11
	.byte	0x3d
	.4byte	.LASF146
	.4byte	.LASF146
	.byte	0xd
	.2byte	0x684
	.byte	0x11
	.byte	0x3d
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0xd
	.2byte	0x699
	.byte	0x11
	.byte	0x3d
	.4byte	.LASF148
	.4byte	.LASF148
	.byte	0xd
	.2byte	0x64f
	.byte	0x11
	.byte	0x3d
	.4byte	.LASF149
	.4byte	.LASF149
	.byte	0xd
	.2byte	0x68c
	.byte	0x11
	.byte	0x3c
	.4byte	.LASF150
	.4byte	.LASF150
	.byte	0x5
	.byte	0x7b
	.byte	0x19
	.byte	0x3d
	.4byte	.LASF151
	.4byte	.LASF151
	.byte	0xe
	.2byte	0x252
	.byte	0x6
	.byte	0x3c
	.4byte	.LASF152
	.4byte	.LASF152
	.byte	0x6
	.byte	0xfb
	.byte	0x6
	.byte	0x3d
	.4byte	.LASF153
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x13e
	.byte	0xd
	.byte	0x3c
	.4byte	.LASF154
	.4byte	.LASF154
	.byte	0xf
	.byte	0x2e
	.byte	0xb
	.byte	0x3c
	.4byte	.LASF155
	.4byte	.LASF155
	.byte	0x10
	.byte	0x43
	.byte	0x5
	.byte	0x3c
	.4byte	.LASF156
	.4byte	.LASF156
	.byte	0xf
	.byte	0x27
	.byte	0x6
	.byte	0x3c
	.4byte	.LASF157
	.4byte	.LASF157
	.byte	0x11
	.byte	0x6c
	.byte	0x6
	.byte	0x3c
	.4byte	.LASF158
	.4byte	.LASF158
	.byte	0x12
	.byte	0xb
	.byte	0xa
	.byte	0x3c
	.4byte	.LASF159
	.4byte	.LASF159
	.byte	0x11
	.byte	0xa7
	.byte	0x6
	.byte	0x3c
	.4byte	.LASF160
	.4byte	.LASF160
	.byte	0x13
	.byte	0xc8
	.byte	0x5
	.byte	0x3d
	.4byte	.LASF161
	.4byte	.LASF161
	.byte	0x14
	.2byte	0x267
	.byte	0x11
	.byte	0x3c
	.4byte	.LASF162
	.4byte	.LASF162
	.byte	0x1
	.byte	0x1f
	.byte	0xd
	.byte	0x3d
	.4byte	.LASF163
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x1c1
	.byte	0x11
	.byte	0x3c
	.4byte	.LASF164
	.4byte	.LASF164
	.byte	0xf
	.byte	0x35
	.byte	0x6
	.byte	0x3c
	.4byte	.LASF165
	.4byte	.LASF165
	.byte	0x13
	.byte	0xdd
	.byte	0x5
	.byte	0x3d
	.4byte	.LASF166
	.4byte	.LASF166
	.byte	0xd
	.2byte	0x648
	.byte	0x11
	.byte	0x3d
	.4byte	.LASF167
	.4byte	.LASF167
	.byte	0xd
	.2byte	0x654
	.byte	0x11
	.byte	0x3d
	.4byte	.LASF168
	.4byte	.LASF168
	.byte	0x14
	.2byte	0x252
	.byte	0x11
	.byte	0x3c
	.4byte	.LASF169
	.4byte	.LASF169
	.byte	0xa
	.byte	0x85
	.byte	0xa
	.byte	0x3c
	.4byte	.LASF170
	.4byte	.LASF170
	.byte	0xa
	.byte	0x8e
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
	.byte	0x35
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0xa
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
	.byte	0xb
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
	.byte	0xc
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
	.byte	0xd
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x4
	.byte	0x1
	.byte	0x3e
	.byte	0xb
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
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
	.byte	0x10
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
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
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
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
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x34
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
	.byte	0x3f
	.byte	0x19
	.byte	0x2
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x34
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
	.byte	0x1c
	.byte	0xb
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
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
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
	.byte	0x1b
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
	.byte	0x1c
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
	.byte	0x5
	.byte	0x57
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1d
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1e
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
	.byte	0x1f
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x20
	.byte	0x17
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
	.byte	0x21
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
	.byte	0x22
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
	.byte	0
	.byte	0
	.byte	0x23
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
	.byte	0x24
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
	.byte	0x25
	.byte	0x34
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
	.byte	0x26
	.byte	0x2e
	.byte	0
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
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x27
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
	.byte	0x5
	.byte	0x57
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x28
	.byte	0xb
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x29
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x2a
	.byte	0xb
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2b
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
	.byte	0x2c
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2d
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2e
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2f
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x30
	.byte	0x34
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
	.byte	0x31
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
	.byte	0x32
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
	.byte	0x33
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x34
	.byte	0x34
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
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x35
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
	.byte	0x36
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x37
	.byte	0xb
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x38
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
	.byte	0
	.byte	0
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x3a
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
	.byte	0x3b
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
	.byte	0x3c
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
	.byte	0x3d
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
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9-1
	.4byte	.LFE253
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL9-1
	.4byte	.LFE253
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6-1
	.4byte	.LFE251
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL6-1
	.4byte	.LFE251
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL25
	.4byte	.LVL26-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26-1
	.4byte	.LFE250
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL25
	.4byte	.LVL26-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL26-1
	.4byte	.LFE250
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL33
	.4byte	.LVL37
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL38-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL38-1
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL83
	.4byte	.LFE249
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL35
	.4byte	.LVL36-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL36-1
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL83
	.4byte	.LFE249
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL60
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL65
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL83
	.4byte	.LFE249
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL54
	.4byte	.LVL55-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL55-1
	.4byte	.LVL59
	.2byte	0x3
	.byte	0x91
	.byte	0x8c,0x7f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21
	.4byte	.LFE246
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LFE245
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x8
	.byte	0xc
	.4byte	0x67666d30
	.byte	0x9f
	.byte	0x93
	.byte	0x4
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
	.4byte	.LFB242
	.4byte	.LFE242-.LFB242
	.4byte	.LFB251
	.4byte	.LFE251-.LFB251
	.4byte	.LFB253
	.4byte	.LFE253-.LFB253
	.4byte	.LFB244
	.4byte	.LFE244-.LFB244
	.4byte	.LFB245
	.4byte	.LFE245-.LFB245
	.4byte	.LFB246
	.4byte	.LFE246-.LFB246
	.4byte	.LFB250
	.4byte	.LFE250-.LFB250
	.4byte	.LFB247
	.4byte	.LFE247-.LFB247
	.4byte	.LFB249
	.4byte	.LFE249-.LFB249
	.4byte	.LFB252
	.4byte	.LFE252-.LFB252
	.4byte	.LFB254
	.4byte	.LFE254-.LFB254
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB25
	.4byte	.LBE25
	.4byte	.LBB64
	.4byte	.LBE64
	.4byte	.LBB65
	.4byte	.LBE65
	.4byte	.LBB70
	.4byte	.LBE70
	.4byte	0
	.4byte	0
	.4byte	.LBB27
	.4byte	.LBE27
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	.LBB32
	.4byte	.LBE32
	.4byte	.LBB33
	.4byte	.LBE33
	.4byte	0
	.4byte	0
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	.LBB36
	.4byte	.LBE36
	.4byte	.LBB38
	.4byte	.LBE38
	.4byte	0
	.4byte	0
	.4byte	.LBB29
	.4byte	.LBE29
	.4byte	.LBB39
	.4byte	.LBE39
	.4byte	.LBB40
	.4byte	.LBE40
	.4byte	0
	.4byte	0
	.4byte	.LBB31
	.4byte	.LBE31
	.4byte	.LBB51
	.4byte	.LBE51
	.4byte	0
	.4byte	0
	.4byte	.LBB34
	.4byte	.LBE34
	.4byte	.LBB35
	.4byte	.LBE35
	.4byte	0
	.4byte	0
	.4byte	.LBB37
	.4byte	.LBE37
	.4byte	.LBB41
	.4byte	.LBE41
	.4byte	.LBB43
	.4byte	.LBE43
	.4byte	0
	.4byte	0
	.4byte	.LBB42
	.4byte	.LBE42
	.4byte	.LBB44
	.4byte	.LBE44
	.4byte	.LBB46
	.4byte	.LBE46
	.4byte	0
	.4byte	0
	.4byte	.LBB45
	.4byte	.LBE45
	.4byte	.LBB47
	.4byte	.LBE47
	.4byte	.LBB49
	.4byte	.LBE49
	.4byte	0
	.4byte	0
	.4byte	.LBB48
	.4byte	.LBE48
	.4byte	.LBB50
	.4byte	.LBE50
	.4byte	0
	.4byte	0
	.4byte	.LBB55
	.4byte	.LBE55
	.4byte	.LBB57
	.4byte	.LBE57
	.4byte	0
	.4byte	0
	.4byte	.LBB56
	.4byte	.LBE56
	.4byte	.LBB60
	.4byte	.LBE60
	.4byte	0
	.4byte	0
	.4byte	.LBB58
	.4byte	.LBE58
	.4byte	.LBB59
	.4byte	.LBE59
	.4byte	0
	.4byte	0
	.4byte	.LBB66
	.4byte	.LBE66
	.4byte	.LBB71
	.4byte	.LBE71
	.4byte	.LBB72
	.4byte	.LBE72
	.4byte	0
	.4byte	0
	.4byte	.LFB242
	.4byte	.LFE242
	.4byte	.LFB251
	.4byte	.LFE251
	.4byte	.LFB253
	.4byte	.LFE253
	.4byte	.LFB244
	.4byte	.LFE244
	.4byte	.LFB245
	.4byte	.LFE245
	.4byte	.LFB246
	.4byte	.LFE246
	.4byte	.LFB250
	.4byte	.LFE250
	.4byte	.LFB247
	.4byte	.LFE247
	.4byte	.LFB249
	.4byte	.LFE249
	.4byte	.LFB252
	.4byte	.LFE252
	.4byte	.LFB254
	.4byte	.LFE254
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF160:
	.string	"printf"
.LASF143:
	.string	"GLB_Set_DIG_512K_CLK"
.LASF39:
	.string	"psram_info"
.LASF61:
	.string	"QCC74x_AHB_SLAVE1_PDS"
.LASF80:
	.string	"QCC74x_AHB_SLAVE1_GPADC"
.LASF17:
	.string	"size_t"
.LASF16:
	.string	"uintptr_t"
.LASF51:
	.string	"QCC74x_AHB_SLAVE1_SEC_ENG"
.LASF65:
	.string	"QCC74x_AHB_SLAVE1_SPI"
.LASF99:
	.string	"__psram_limit"
.LASF127:
	.string	"version_str"
.LASF169:
	.string	"Clock_System_Clock_Get"
.LASF3:
	.string	"__uint8_t"
.LASF116:
	.string	"mfg_cmd"
.LASF29:
	.string	"direction"
.LASF95:
	.string	"QCC74x_MTIMER_SOURCE_CLOCK_MCU_CLK"
.LASF111:
	.string	"init"
.LASF36:
	.string	"rx_fifo_threshold"
.LASF42:
	.string	"package_name"
.LASF84:
	.string	"DISABLE"
.LASF149:
	.string	"GLB_Swap_MCU_SPI_0_MOSI_With_MISO"
.LASF100:
	.string	"syscall_func"
.LASF94:
	.string	"QCC74x_MTIMER_SOURCE_CLOCK_MCU_XCLK"
.LASF75:
	.string	"QCC74x_AHB_SLAVE1_RSVD28"
.LASF79:
	.string	"QCC74x_AHB_SLAVE1_MAX"
.LASF31:
	.string	"stop_bits"
.LASF22:
	.string	"sub_idx"
.LASF145:
	.string	"GLB_Set_IR_CLK"
.LASF69:
	.string	"QCC74x_AHB_SLAVE1_IRR"
.LASF37:
	.string	"package"
.LASF56:
	.string	"QCC74x_AHB_SLAVE1_L1C"
.LASF123:
	.string	"xtal_value"
.LASF9:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF24:
	.string	"user_data"
.LASF152:
	.string	"qcc74x_uart_init"
.LASF10:
	.string	"long long unsigned int"
.LASF28:
	.string	"baudrate"
.LASF89:
	.string	"QCC74x_SYSTEM_CLOCK_MCU_PBCLK"
.LASF173:
	.string	"C:\\\\Users\\\\cwier\\\\documents\\\\github\\\\qcom\\\\examples\\\\usb_cam_stream\\\\build"
.LASF71:
	.string	"QCC74x_AHB_SLAVE1_QDEC"
.LASF154:
	.string	"qcc74x_irq_save"
.LASF97:
	.string	"__HeapLimit"
.LASF43:
	.string	"flash_info_name"
.LASF44:
	.string	"psram_info_name"
.LASF126:
	.string	"qcc74x_show_component_version"
.LASF140:
	.string	"GLB_Set_I2C_CLK"
.LASF137:
	.string	"GLB_Set_UART_CLK"
.LASF85:
	.string	"ENABLE"
.LASF55:
	.string	"QCC74x_AHB_SLAVE1_CCI"
.LASF177:
	.string	"qcc74x_sys_version"
.LASF14:
	.string	"uint16_t"
.LASF101:
	.string	"shell_syscall"
.LASF68:
	.string	"QCC74x_AHB_SLAVE1_TIMER"
.LASF144:
	.string	"GLB_Set_PWM1_IO_Sel"
.LASF41:
	.string	"process_corner"
.LASF134:
	.string	"system_clock_init"
.LASF164:
	.string	"qcc74x_irq_restore"
.LASF174:
	.string	"mfg_config"
.LASF156:
	.string	"qcc74x_irq_initialize"
.LASF114:
	.string	"byte"
.LASF7:
	.string	"__uint32_t"
.LASF53:
	.string	"QCC74x_AHB_SLAVE1_RSVD6"
.LASF70:
	.string	"QCC74x_AHB_SLAVE1_CKS"
.LASF176:
	.string	"console_init"
.LASF46:
	.string	"qcc74x_efuse_device_info_type"
.LASF166:
	.string	"GLB_Power_On_XTAL_And_PLL_CLK"
.LASF147:
	.string	"GLB_Set_PKA_CLK_Sel"
.LASF12:
	.string	"unsigned int"
.LASF125:
	.string	"qcc74x_show_chipinfo"
.LASF78:
	.string	"QCC74x_AHB_SLAVE1_RSVD31"
.LASF104:
	.string	"__fsym_sysver"
.LASF142:
	.string	"GLB_Set_DIG_CLK_Sel"
.LASF59:
	.string	"QCC74x_AHB_SLAVE1_DMA"
.LASF106:
	.string	"__fsym_reboot"
.LASF158:
	.string	"board_psram_x8_init"
.LASF8:
	.string	"long unsigned int"
.LASF162:
	.string	"log_start"
.LASF107:
	.string	"__fsym_mfg_name"
.LASF109:
	.string	"uart0"
.LASF19:
	.string	"name"
.LASF129:
	.string	"_version_info_section_end"
.LASF175:
	.string	"_reg_t"
.LASF5:
	.string	"short unsigned int"
.LASF178:
	.string	"peripheral_clock_init"
.LASF117:
	.string	"reboot_cmd"
.LASF38:
	.string	"flash_info"
.LASF96:
	.string	"__HeapBase"
.LASF88:
	.string	"QCC74x_SYSTEM_CLOCK_MCU_BCLK"
.LASF130:
	.string	"version_section_start"
.LASF45:
	.string	"process_corner_name"
.LASF54:
	.string	"QCC74x_AHB_SLAVE1_EF_CTRL"
.LASF153:
	.string	"qcc74x_uart_set_console"
.LASF165:
	.string	"puts"
.LASF60:
	.string	"QCC74x_AHB_SLAVE1_SDU"
.LASF40:
	.string	"version"
.LASF32:
	.string	"parity"
.LASF118:
	.string	"show_sys_versoin_cmd"
.LASF163:
	.string	"qcc74x_sec_mutex_init"
.LASF67:
	.string	"QCC74x_AHB_SLAVE1_PWM"
.LASF48:
	.string	"QCC74x_AHB_SLAVE1_RF_TOP"
.LASF135:
	.string	"qcc74x_efuse_get_device_info"
.LASF168:
	.string	"HBN_Set_MCU_XCLK_Sel"
.LASF159:
	.string	"pmem_init"
.LASF90:
	.string	"QCC74x_SYSTEM_CLOCK_F32K"
.LASF30:
	.string	"data_bits"
.LASF20:
	.string	"reg_base"
.LASF110:
	.string	"device_info"
.LASF98:
	.string	"__psram_heap_base"
.LASF172:
	.string	".\\bsp\\board\\qcc74xdk\\board.c"
.LASF103:
	.string	"__fsym_sysver_name"
.LASF151:
	.string	"qcc74x_gpio_uart_init"
.LASF81:
	.string	"QCC74x_AHB_SLAVE1_GPDAC"
.LASF92:
	.string	"QCC74x_SYSTEM_CLOCK_XTAL"
.LASF171:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF119:
	.string	"board_device_info_version"
.LASF108:
	.string	"__fsym_mfg"
.LASF105:
	.string	"__fsym_reboot_name"
.LASF27:
	.string	"qcc74x_uart_config_s"
.LASF25:
	.string	"_Bool"
.LASF1:
	.string	"unsigned char"
.LASF50:
	.string	"QCC74x_AHB_SLAVE1_SEC_DBG"
.LASF133:
	.string	"regval"
.LASF49:
	.string	"QCC74x_AHB_SLAVE1_GPIP"
.LASF2:
	.string	"short int"
.LASF47:
	.string	"QCC74x_AHB_SLAVE1_GLB"
.LASF34:
	.string	"flow_ctrl"
.LASF86:
	.string	"QCC74x_SYSTEM_CLOCK_MCU_ROOT_CLK"
.LASF121:
	.string	"flag"
.LASF11:
	.string	"__uintptr_t"
.LASF72:
	.string	"QCC74x_AHB_SLAVE1_KYS"
.LASF74:
	.string	"QCC74x_AHB_SLAVE1_RSVD27"
.LASF132:
	.string	"qcc74x_show_log"
.LASF76:
	.string	"QCC74x_AHB_SLAVE1_RSVD29"
.LASF122:
	.string	"heap_len"
.LASF35:
	.string	"tx_fifo_threshold"
.LASF167:
	.string	"GLB_Set_MCU_System_CLK"
.LASF150:
	.string	"qcc74x_device_get_by_name"
.LASF15:
	.string	"uint32_t"
.LASF21:
	.string	"irq_num"
.LASF18:
	.string	"char"
.LASF102:
	.string	"func"
.LASF4:
	.string	"__uint16_t"
.LASF155:
	.string	"qcc74x_flash_init"
.LASF91:
	.string	"QCC74x_SYSTEM_CLOCK_XCLK"
.LASF131:
	.string	"version_section_end"
.LASF128:
	.string	"_version_info_section_start"
.LASF157:
	.string	"kmem_init"
.LASF146:
	.string	"GLB_Set_CAM_CLK"
.LASF57:
	.string	"QCC74x_AHB_SLAVE1_RSVD10"
.LASF115:
	.string	"word"
.LASF170:
	.string	"CPU_Set_MTimer_CLK"
.LASF138:
	.string	"GLB_Set_SPI_CLK"
.LASF23:
	.string	"dev_type"
.LASF33:
	.string	"bit_order"
.LASF77:
	.string	"QCC74x_AHB_SLAVE1_RSVD30"
.LASF62:
	.string	"QCC74x_AHB_SLAVE1_RSVD15"
.LASF26:
	.string	"qcc74x_device_s"
.LASF141:
	.string	"GLB_Set_ADC_CLK"
.LASF139:
	.string	"GLB_Set_DBI_CLK"
.LASF148:
	.string	"GLB_Set_USB_CLK_From_WIFIPLL"
.LASF66:
	.string	"QCC74x_AHB_SLAVE1_I2C"
.LASF52:
	.string	"QCC74x_AHB_SLAVE1_TZ"
.LASF13:
	.string	"uint8_t"
.LASF93:
	.string	"QCC74x_SYSTEM_CLOCK_MAX"
.LASF82:
	.string	"QCC74x_AHB_SLAVE1_I2S"
.LASF124:
	.string	"gpio"
.LASF112:
	.string	"argc"
.LASF161:
	.string	"HBN_Get_Xtal_Value"
.LASF6:
	.string	"long int"
.LASF120:
	.string	"board_init"
.LASF63:
	.string	"QCC74x_AHB_SLAVE1_UART0"
.LASF83:
	.string	"QCC74x_AHB_SLAVE1_CAM"
.LASF73:
	.string	"QCC74x_AHB_SLAVE1_UART2"
.LASF113:
	.string	"argv"
.LASF58:
	.string	"QCC74x_AHB_SLAVE1_SF_CTRL"
.LASF64:
	.string	"QCC74x_AHB_SLAVE1_UART1"
.LASF87:
	.string	"QCC74x_SYSTEM_CLOCK_MCU_CLK"
.LASF136:
	.string	"qcc74x_sys_reset_por"
	.ident	"GCC: (GNU) 10.4.0"
