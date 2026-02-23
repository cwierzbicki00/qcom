	.file	"mem.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.mem_init,"ax",@progbits
	.align	1
	.globl	mem_init
	.type	mem_init, @function
mem_init:
.LFB8:
	.file 1 "./components/net/lwip/lwip/src/core/mem.c"
	.loc 1 517 1
	.cfi_startproc
	.loc 1 518 3
	.loc 1 521 62
	.loc 1 524 3
	.loc 1 524 54 is_stmt 0
	lui	a5,%hi(ram_heap+3)
	addi	a5,a5,%lo(ram_heap+3)
	.loc 1 524 59
	andi	a5,a5,-4
	.loc 1 524 7
	lui	a4,%hi(.LANCHOR0)
	sw	a5,%lo(.LANCHOR0)(a4)
	.loc 1 526 3 is_stmt 1
.LVL0:
	.loc 1 527 3
	.loc 1 528 3
	.loc 1 529 3
	.loc 1 527 13 is_stmt 0
	li	a4,61440
.LBB53:
.LBB54:
	.loc 1 453 10
	add	a3,a5,a4
.LBE54:
.LBE53:
	.loc 1 531 11
	lui	a2,%hi(.LANCHOR1)
	.loc 1 527 13
	sw	a4,0(a5)
	.loc 1 529 13
	sb	zero,4(a5)
	.loc 1 531 3 is_stmt 1
.LVL1:
.LBB56:
.LBB55:
	.loc 1 453 3
.LBE55:
.LBE56:
	.loc 1 531 11 is_stmt 0
	sw	a3,%lo(.LANCHOR1)(a2)
	.loc 1 532 3 is_stmt 1
	.loc 1 533 3
	.loc 1 534 3
	.loc 1 533 17 is_stmt 0
	li	a2,-268374016
	srw	a2,a5,a4,0
	.loc 1 532 17
	li	a4,1
	sb	a4,4(a3)
	.loc 1 535 3 is_stmt 1
	.loc 1 538 3
	.loc 1 542 7 is_stmt 0
	lui	a0,%hi(.LANCHOR3)
	.loc 1 538 9
	lui	a4,%hi(.LANCHOR2)
	sw	a5,%lo(.LANCHOR2)(a4)
	.loc 1 540 3 is_stmt 1
	.loc 1 542 7 is_stmt 0
	addi	a0,a0,%lo(.LANCHOR3)
	.loc 1 540 24
	lui	a5,%hi(lwip_stats+174)
.LVL2:
	li	a4,-4096
	sh	a4,%lo(lwip_stats+174)(a5)
	.loc 1 542 3 is_stmt 1
	.loc 1 542 7 is_stmt 0
	tail	sys_mutex_new
.LVL3:
	.cfi_endproc
.LFE8:
	.size	mem_init, .-mem_init
	.section	.text.mem_free,"ax",@progbits
	.align	1
	.globl	mem_free
	.type	mem_free, @function
mem_free:
.LFB10:
	.loc 1 618 1 is_stmt 1
	.cfi_startproc
.LVL4:
	.loc 1 619 3
	.loc 1 620 3
	.loc 1 622 3
	.loc 1 622 6 is_stmt 0
	beq	a0,zero,.L2
	.loc 1 618 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s2,16(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	lui	s2,%hi(lwip_stats)
	sw	s1,20(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	sw	s5,4(sp)
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.loc 1 626 26
	andi	a5,a0,3
	mv	s0,a0
	.loc 1 626 3 is_stmt 1
	addi	s2,s2,%lo(lwip_stats)
	.loc 1 626 6 is_stmt 0
	beq	a5,zero,.L4
.LVL5:
.L22:
	.loc 1 654 5 is_stmt 1
	.loc 1 654 10
	.loc 1 654 235
	.loc 1 656 5
.LBB83:
	.loc 1 656 10
	.loc 1 656 32
	.loc 1 656 44 is_stmt 0
	call	sys_arch_protect
.LVL6:
	.loc 1 656 64 is_stmt 1
	lhu	a5,180(s2)
.LBE83:
	.loc 1 686 1 is_stmt 0
	lw	s0,24(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL7:
	lw	ra,28(sp)
	.cfi_restore 1
.LBB84:
	.loc 1 656 64
	addi	a5,a5,1
.LBE84:
	.loc 1 686 1
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
	lw	s5,4(sp)
	.cfi_restore 21
.LBB85:
	.loc 1 656 64
	sh	a5,180(s2)
	.loc 1 656 90 is_stmt 1
.LBE85:
	.loc 1 686 1 is_stmt 0
	lw	s2,16(sp)
	.cfi_restore 18
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LBB86:
	.loc 1 656 90
	tail	sys_arch_unprotect
.LVL8:
.L4:
	.cfi_restore_state
.LBE86:
	.loc 1 636 3 is_stmt 1
	.loc 1 638 19 is_stmt 0
	lui	s4,%hi(.LANCHOR0)
	addi	s4,s4,%lo(.LANCHOR0)
	.loc 1 638 6
	lw	a5,0(s4)
	.loc 1 636 7
	addi	s1,a0,-8
.LVL9:
	.loc 1 638 3 is_stmt 1
	.loc 1 638 6 is_stmt 0
	bgtu	a5,s1,.L22
	.loc 1 638 74 discriminator 1
	lui	a5,%hi(.LANCHOR1)
	.loc 1 638 25 discriminator 1
	lw	a3,%lo(.LANCHOR1)(a5)
	.loc 1 638 41 discriminator 1
	addi	a4,a0,12
	addi	s3,a5,%lo(.LANCHOR1)
	.loc 1 638 25 discriminator 1
	bltu	a3,a4,.L22
	.loc 1 649 3 is_stmt 1
	lui	s5,%hi(.LANCHOR3)
	addi	a0,s5,%lo(.LANCHOR3)
	call	sys_mutex_lock
.LVL10:
	.loc 1 651 3
	.loc 1 651 6 is_stmt 0
	lbu	a5,-4(s0)
	bne	a5,zero,.L6
.L7:
	.loc 1 652 5 is_stmt 1
	.loc 1 653 5
	addi	a0,s5,%lo(.LANCHOR3)
	call	sys_mutex_unlock
.LVL11:
	j	.L22
.L6:
	.loc 1 660 3
.LVL12:
.LBB87:
.LBB88:
	.loc 1 553 3
	.loc 1 554 3
	.loc 1 555 3
.LBB89:
.LBB90:
	.loc 1 459 3
.LBE90:
.LBE89:
	.loc 1 556 3
	.loc 1 556 10 is_stmt 0
	lhu	a1,-8(s0)
.LVL13:
.LBB92:
.LBB93:
	.loc 1 453 3 is_stmt 1
.LBE93:
.LBE92:
	.loc 1 557 3
.LBB95:
.LBB96:
	.loc 1 453 3
.LBE96:
.LBE95:
	.loc 1 558 3
	.loc 1 558 6 is_stmt 0
	li	a5,61440
	bgtu	a1,a5,.L7
	.loc 1 557 10
	lhu	a4,-6(s0)
	.loc 1 558 59
	bgtu	a4,a5,.L7
.LBB97:
.LBB91:
	.loc 1 459 35
	lw	a5,0(s4)
	sub	a3,s1,a5
	.loc 1 459 10
	extu	a3,a3,15,0
.LBE91:
.LBE97:
	.loc 1 558 114
	beq	a3,a4,.L8
	.loc 1 559 32
	lrhu	a4,a5,a4,0
	bne	a4,a3,.L7
.L8:
	.loc 1 560 14
	lw	a7,0(s3)
.LBB98:
.LBB94:
	.loc 1 453 10
	add	a2,a5,a1
.LBE94:
.LBE98:
	.loc 1 559 61
	beq	a2,a7,.L9
	.loc 1 560 26
	lhu	a4,2(a2)
	bne	a4,a3,.L7
.L9:
.LVL14:
.LBE88:
.LBE87:
	.loc 1 670 3 is_stmt 1
	.loc 1 672 11 is_stmt 0
	lui	a4,%hi(.LANCHOR2)
	.loc 1 672 6
	lw	a0,%lo(.LANCHOR2)(a4)
	.loc 1 670 13
	sb	zero,-4(s0)
	.loc 1 672 3 is_stmt 1
	addi	a4,a4,%lo(.LANCHOR2)
	.loc 1 672 6 is_stmt 0
	bleu	a0,s1,.L10
	.loc 1 674 5 is_stmt 1
	.loc 1 674 11 is_stmt 0
	sw	s1,0(a4)
.L10:
	.loc 1 677 3 is_stmt 1
	.loc 1 677 25 is_stmt 0
	lhu	a6,176(s2)
	sub	a6,a6,a1
	add	a6,a3,a6
	.loc 1 677 23
	sh	a6,176(s2)
	.loc 1 680 3 is_stmt 1
.LVL15:
.LBB99:
.LBB100:
	.loc 1 476 3
	.loc 1 477 3
	.loc 1 479 3
	.loc 1 480 3
	.loc 1 481 3
	.loc 1 484 3
	.loc 1 486 3
.LBE100:
.LBE99:
	.loc 1 453 3
.LBB110:
.LBB107:
	.loc 1 487 3
	.loc 1 487 6 is_stmt 0
	beq	s1,a2,.L12
	.loc 1 487 19
	lbu	a0,4(a2)
	bne	a0,zero,.L12
	.loc 1 487 38
	beq	a2,a7,.L12
	.loc 1 489 5 is_stmt 1
	.loc 1 489 8 is_stmt 0
	lw	a0,0(a4)
	bne	a2,a0,.L14
	.loc 1 490 7 is_stmt 1
	.loc 1 490 13 is_stmt 0
	sw	s1,0(a4)
.L14:
	.loc 1 492 5 is_stmt 1
	.loc 1 492 21 is_stmt 0
	lrhu	a2,a5,a1,0
	.loc 1 492 15
	sh	a2,-8(s0)
	.loc 1 493 5 is_stmt 1
	.loc 1 493 13 is_stmt 0
	lrhu	a2,a5,a1,0
	.loc 1 493 8
	li	a1,61440
.LVL16:
	beq	a2,a1,.L12
	.loc 1 494 7 is_stmt 1
.LVL17:
.LBB101:
.LBB102:
	.loc 1 453 3
.LBE102:
.LBE101:
.LBE107:
.LBE110:
	.loc 1 459 3
.LBB111:
.LBB108:
	.loc 1 494 36 is_stmt 0
	add	a2,a5,a2
	sh	a3,2(a2)
.LVL18:
.L12:
	.loc 1 499 3 is_stmt 1
	.loc 1 499 10 is_stmt 0
	lhu	a3,-6(s0)
.LVL19:
.LBB103:
.LBB104:
	.loc 1 453 3 is_stmt 1
	.loc 1 453 10 is_stmt 0
	add	a2,a5,a3
.LVL20:
.LBE104:
.LBE103:
	.loc 1 500 3 is_stmt 1
	.loc 1 500 6 is_stmt 0
	beq	s1,a2,.L16
	.loc 1 500 19
	lbu	a1,4(a2)
	bne	a1,zero,.L16
	.loc 1 502 5 is_stmt 1
	.loc 1 502 8 is_stmt 0
	lw	a1,0(a4)
	bne	s1,a1,.L18
	.loc 1 503 7 is_stmt 1
	.loc 1 503 13 is_stmt 0
	sw	a2,0(a4)
.L18:
	.loc 1 505 5 is_stmt 1
	.loc 1 505 21 is_stmt 0
	lhu	a4,-8(s0)
	.loc 1 506 8
	li	a2,61440
.LVL21:
	.loc 1 505 16
	srh	a4,a5,a3,0
	.loc 1 506 5 is_stmt 1
	.loc 1 506 12 is_stmt 0
	lhu	a4,-8(s0)
	.loc 1 506 8
	beq	a4,a2,.L16
	.loc 1 507 7 is_stmt 1
.LVL22:
.LBB105:
.LBB106:
	.loc 1 453 3
.LBE106:
.LBE105:
.LBE108:
.LBE111:
	.loc 1 459 3
.LBB112:
.LBB109:
	.loc 1 507 35 is_stmt 0
	add	a5,a5,a4
.LVL23:
	sh	a3,2(a5)
.L16:
.LVL24:
.LBE109:
.LBE112:
	.loc 1 681 3 is_stmt 1
	.loc 1 685 3
	.loc 1 686 1 is_stmt 0
	lw	s0,24(sp)
	.cfi_restore 8
.LVL25:
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s1,20(sp)
	.cfi_restore 9
.LVL26:
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
	.loc 1 685 3
	addi	a0,s5,%lo(.LANCHOR3)
	.loc 1 686 1
	lw	s5,4(sp)
	.cfi_restore 21
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	.loc 1 685 3
	tail	sys_mutex_unlock
.LVL27:
.L2:
	ret
	.cfi_endproc
.LFE10:
	.size	mem_free, .-mem_free
	.section	.text.mem_trim,"ax",@progbits
	.align	1
	.globl	mem_trim
	.type	mem_trim, @function
mem_trim:
.LFB11:
	.loc 1 700 1 is_stmt 1
	.cfi_startproc
.LVL28:
	.loc 1 701 3
	.loc 1 702 3
	.loc 1 703 3
	.loc 1 705 3
	.loc 1 709 3
	.loc 1 700 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	.cfi_offset 8, -8
	.loc 1 709 42
	addi	s0,a1,3
	.loc 1 709 11
	andi	s0,s0,-4
	.loc 1 700 1
	sw	s4,8(sp)
	sw	ra,28(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s5,4(sp)
	sw	s6,0(sp)
	.cfi_offset 20, -24
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.loc 1 709 11
	extu	s0,s0,15,0
.LVL29:
	.loc 1 710 3 is_stmt 1
	.loc 1 710 6 is_stmt 0
	li	a5,11
	.loc 1 700 1
	mv	s4,a0
	.loc 1 710 6
	bleu	s0,a5,.L34
	.loc 1 717 3 is_stmt 1
	.loc 1 717 6 is_stmt 0
	li	a5,61440
	bleu	s0,a5,.L24
.LVL30:
.L37:
	.loc 1 718 11
	li	s4,0
	j	.L25
.LVL31:
.L34:
	.loc 1 712 13
	li	s0,12
.LVL32:
.L24:
	.loc 1 717 57 discriminator 1
	bgtu	a1,s0,.L37
	.loc 1 722 46 is_stmt 1
	.loc 1 724 3
	.loc 1 724 20 is_stmt 0
	lui	s5,%hi(.LANCHOR0)
	addi	s5,s5,%lo(.LANCHOR0)
	lw	a5,0(s5)
	.loc 1 724 6
	bgtu	a5,s4,.L26
	.loc 1 724 34 discriminator 1
	lui	a4,%hi(.LANCHOR1)
	lw	a4,%lo(.LANCHOR1)(a4)
	bgtu	a4,s4,.L27
.L26:
	.loc 1 725 5 is_stmt 1 discriminator 4
	.loc 1 725 10 discriminator 4
	.loc 1 725 221 discriminator 4
	.loc 1 727 5 discriminator 4
.LBB113:
	.loc 1 727 10 discriminator 4
	.loc 1 727 32 discriminator 4
	.loc 1 727 44 is_stmt 0 discriminator 4
	call	sys_arch_protect
.LVL33:
	.loc 1 727 64 is_stmt 1 discriminator 4
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a4,180(a5)
	addi	a4,a4,1
	sh	a4,180(a5)
	.loc 1 727 90 discriminator 4
	call	sys_arch_unprotect
.LVL34:
.LBE113:
	.loc 1 727 128 discriminator 4
	.loc 1 728 5 discriminator 4
.L25:
	.loc 1 820 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s5,4(sp)
	.cfi_restore 21
	lw	s6,0(sp)
	.cfi_restore 22
	mv	a0,s4
	lw	s4,8(sp)
	.cfi_restore 20
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL35:
.L27:
	.cfi_restore_state
	.loc 1 732 3 is_stmt 1
	.loc 1 737 3
.LBB114:
.LBB115:
	.loc 1 459 3
	lhu	s2,-8(s4)
.LBE115:
.LBE114:
	.loc 1 732 7 is_stmt 0
	addi	s1,s4,-8
.LVL36:
.LBB117:
.LBB116:
	.loc 1 459 35
	sub	s1,s1,a5
.LVL37:
	addi	s2,s2,-8
	.loc 1 459 10
	extu	s1,s1,15,0
.LVL38:
.LBE116:
.LBE117:
	.loc 1 739 3 is_stmt 1
	extu	s2,s2,15,0
	.loc 1 739 8 is_stmt 0
	sub	s3,s2,s1
	extu	s3,s3,15,0
.LVL39:
	.loc 1 740 3 is_stmt 1
	.loc 1 741 3
	.loc 1 741 6 is_stmt 0
	bltu	s3,s0,.L37
	.loc 1 745 3 is_stmt 1
	.loc 1 745 6 is_stmt 0
	beq	s3,s0,.L25
	.loc 1 751 3 is_stmt 1
	lui	s6,%hi(.LANCHOR3)
	addi	a0,s6,%lo(.LANCHOR3)
.LVL40:
	call	sys_mutex_lock
.LVL41:
	.loc 1 753 3
	.loc 1 753 10 is_stmt 0
	lhu	a1,-8(s4)
.LVL42:
.LBB118:
.LBB119:
	.loc 1 453 3 is_stmt 1
	.loc 1 453 32 is_stmt 0
	lw	a5,0(s5)
	.loc 1 453 10
	add	a6,a5,a1
.LVL43:
.LBE119:
.LBE118:
	.loc 1 754 3 is_stmt 1
	.loc 1 754 6 is_stmt 0
	lbu	a4,4(a6)
	bne	a4,zero,.L28
.LBB120:
	.loc 1 756 5 is_stmt 1
	.loc 1 757 5
	.loc 1 759 5
	.loc 1 762 15 is_stmt 0
	lui	a3,%hi(.LANCHOR2)
	addi	a3,a3,%lo(.LANCHOR2)
	.loc 1 761 10
	addi	a4,s1,8
	.loc 1 762 8
	lw	a7,0(a3)
	.loc 1 761 10
	add	a4,s0,a4
	extu	a4,a4,15,0
	.loc 1 759 10
	lrhu	a1,a5,a1,0
.LVL44:
	.loc 1 761 5 is_stmt 1
	.loc 1 762 5
.LBB121:
.LBB122:
	.loc 1 453 10 is_stmt 0
	add	a2,a5,a4
.LBE122:
.LBE121:
	.loc 1 762 8
	bne	a7,a6,.L29
	.loc 1 763 7 is_stmt 1
.LVL45:
.LBB124:
.LBB123:
	.loc 1 453 3
.LBE123:
.LBE124:
	.loc 1 763 13 is_stmt 0
	sw	a2,0(a3)
.L29:
	.loc 1 765 5 is_stmt 1
.LVL46:
.LBE120:
	.loc 1 453 3
.LBB127:
	.loc 1 766 5
	.loc 1 766 16 is_stmt 0
	sb	zero,4(a2)
	.loc 1 768 5 is_stmt 1
	.loc 1 768 16 is_stmt 0
	srh	a1,a5,a4,0
	.loc 1 770 5 is_stmt 1
	.loc 1 770 16 is_stmt 0
	sh	s1,2(a2)
	.loc 1 772 5 is_stmt 1
	.loc 1 772 15 is_stmt 0
	sh	a4,-8(s4)
	.loc 1 776 5 is_stmt 1
	.loc 1 776 13 is_stmt 0
	lrhu	a3,a5,a4,0
	.loc 1 776 8
	li	a2,61440
	beq	a3,a2,.L30
	.loc 1 777 7 is_stmt 1
.LVL47:
.LBB125:
.LBB126:
	.loc 1 453 3
.LBE126:
.LBE125:
	.loc 1 777 36 is_stmt 0
	add	a5,a5,a3
.LVL48:
	sh	a4,2(a5)
.L30:
	.loc 1 779 5 is_stmt 1
	.loc 1 779 25 is_stmt 0
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	.loc 1 779 27
	sub	s2,s1,s2
	lhu	s1,176(a5)
.LVL49:
	add	s2,s2,s1
	add	s0,s0,s2
.LVL50:
.L39:
.LBE127:
	.loc 1 802 25
	sh	s0,176(a5)
.LVL51:
.L31:
	.loc 1 814 3 is_stmt 1
	.loc 1 818 3
	addi	a0,s6,%lo(.LANCHOR3)
	call	sys_mutex_unlock
.LVL52:
	.loc 1 819 3
	.loc 1 819 10 is_stmt 0
	j	.L25
.LVL53:
.L28:
	.loc 1 781 10 is_stmt 1
	.loc 1 781 13 is_stmt 0
	addi	a4,s0,20
	extu	a4,a4,15,0
	bltu	s3,a4,.L31
	.loc 1 789 5 is_stmt 1
	.loc 1 792 14 is_stmt 0
	lui	a2,%hi(.LANCHOR2)
	.loc 1 789 10
	addi	a4,s1,8
	.loc 1 792 14
	addi	a2,a2,%lo(.LANCHOR2)
	.loc 1 789 10
	add	a4,s0,a4
	.loc 1 792 8
	lw	a6,0(a2)
.LVL54:
	.loc 1 789 10
	extu	a4,a4,15,0
.LVL55:
	.loc 1 790 5 is_stmt 1
	.loc 1 791 5
.LBB128:
.LBB129:
	.loc 1 453 3
	.loc 1 453 10 is_stmt 0
	add	a3,a5,a4
.LVL56:
.LBE129:
.LBE128:
	.loc 1 792 5 is_stmt 1
	.loc 1 792 8 is_stmt 0
	bleu	a6,a3,.L32
	.loc 1 793 7 is_stmt 1
	.loc 1 793 13 is_stmt 0
	sw	a3,0(a2)
.L32:
	.loc 1 795 5 is_stmt 1
	.loc 1 795 16 is_stmt 0
	sb	zero,4(a3)
	.loc 1 796 5 is_stmt 1
	.loc 1 796 16 is_stmt 0
	srh	a1,a5,a4,0
	.loc 1 797 5 is_stmt 1
	.loc 1 797 16 is_stmt 0
	sh	s1,2(a3)
	.loc 1 798 5 is_stmt 1
	.loc 1 798 15 is_stmt 0
	sh	a4,-8(s4)
	.loc 1 799 5 is_stmt 1
	.loc 1 799 13 is_stmt 0
	lrhu	a3,a5,a4,0
.LVL57:
	.loc 1 799 8
	li	a2,61440
	beq	a3,a2,.L33
	.loc 1 800 7 is_stmt 1
.LVL58:
.LBB130:
.LBB131:
	.loc 1 453 3
.LBE131:
.LBE130:
	.loc 1 800 36 is_stmt 0
	add	a5,a5,a3
.LVL59:
	sh	a4,2(a5)
.L33:
	.loc 1 802 5 is_stmt 1
	.loc 1 802 25 is_stmt 0
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	.loc 1 802 27
	sub	s1,s1,s2
.LVL60:
	lhu	s2,176(a5)
	add	s1,s1,s2
	add	s0,s0,s1
	j	.L39
	.cfi_endproc
.LFE11:
	.size	mem_trim, .-mem_trim
	.section	.text.mem_malloc,"ax",@progbits
	.align	1
	.globl	mem_malloc
	.type	mem_malloc, @function
mem_malloc:
.LFB12:
	.loc 1 832 1 is_stmt 1
	.cfi_startproc
.LVL61:
	.loc 1 833 3
	.loc 1 834 3
	.loc 1 838 3
	.loc 1 840 3
	.loc 1 832 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.loc 1 840 6
	beq	a0,zero,.L54
	.loc 1 846 3 is_stmt 1
	.loc 1 846 38 is_stmt 0
	addi	s0,a0,3
	.loc 1 846 8
	andi	s0,s0,-4
	extu	s0,s0,15,0
.LVL62:
	.loc 1 847 3 is_stmt 1
	.loc 1 847 6 is_stmt 0
	li	a5,11
	bleu	s0,a5,.L55
	.loc 1 854 3 is_stmt 1
	.loc 1 854 6 is_stmt 0
	li	a4,61440
	.loc 1 841 11
	li	s1,0
	.loc 1 854 6
	bleu	s0,a4,.L42
.LVL63:
.L40:
	.loc 1 976 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	mv	a0,s1
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL64:
.L55:
	.cfi_restore_state
	.loc 1 849 10
	li	s0,12
.LVL65:
.L42:
	.loc 1 841 11 discriminator 1
	li	s1,0
	.loc 1 854 54 discriminator 1
	bgtu	a0,s0,.L40
	.loc 1 859 3 is_stmt 1
	lui	s1,%hi(.LANCHOR3)
	addi	a0,s1,%lo(.LANCHOR3)
.LVL66:
	call	sys_mutex_lock
.LVL67:
	.loc 1 860 3
	.loc 1 870 5
	.loc 1 870 16 is_stmt 0
	lui	t4,%hi(.LANCHOR2)
.LBB132:
.LBB133:
	.loc 1 459 35
	lui	a5,%hi(.LANCHOR0)
.LBE133:
.LBE132:
	.loc 1 870 16
	lw	t1,%lo(.LANCHOR2)(t4)
.LVL68:
.LBB136:
.LBB134:
	.loc 1 459 3 is_stmt 1
	.loc 1 459 35 is_stmt 0
	lw	t3,%lo(.LANCHOR0)(a5)
.LBE134:
.LBE136:
	.loc 1 870 79
	li	t5,61440
	mv	a0,s1
.LBB137:
.LBB135:
	.loc 1 459 35
	sub	a5,t1,t3
	.loc 1 459 10
	extu	a4,a5,15,0
.LVL69:
	addi	t4,t4,%lo(.LANCHOR2)
.LBE135:
.LBE137:
	.loc 1 870 79
	sub	a3,t5,s0
	.loc 1 887 22
	li	a2,-8
.LVL70:
.L63:
	.loc 1 870 35 is_stmt 1 discriminator 1
	.loc 1 870 5 is_stmt 0 discriminator 1
	bltu	a4,a3,.L53
	.loc 1 971 3 is_stmt 1
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a4,172(a5)
.LVL71:
	.loc 1 973 3 is_stmt 0
	addi	a0,a0,%lo(.LANCHOR3)
	.loc 1 971 3
	addi	a4,a4,1
	sh	a4,172(a5)
	.loc 1 972 3 is_stmt 1
	.loc 1 973 3
	call	sys_mutex_unlock
.LVL72:
	.loc 1 974 3
	.loc 1 974 8
	.loc 1 974 93
	.loc 1 975 3
.L54:
	.loc 1 841 11 is_stmt 0
	li	s1,0
	j	.L40
.LVL73:
.L53:
	.loc 1 872 7 is_stmt 1
.LBB138:
.LBB139:
	.loc 1 453 3
	.loc 1 453 10 is_stmt 0
	add	s1,t3,a4
.LVL74:
.LBE139:
.LBE138:
	.loc 1 886 7 is_stmt 1
	.loc 1 886 10 is_stmt 0
	lbu	a1,4(s1)
	.loc 1 887 15
	lrhu	a5,t3,a4,0
	.loc 1 886 10
	bne	a1,zero,.L59
	.loc 1 887 22 discriminator 1
	sub	a6,a2,a4
	add	a6,a6,a5
	.loc 1 886 24 discriminator 1
	bltu	a6,s0,.L59
	.loc 1 891 9 is_stmt 1
	.loc 1 916 65 is_stmt 0
	lui	a1,%hi(lwip_stats)
	.loc 1 891 134
	addi	a7,s0,20
	.loc 1 916 65
	addi	a2,a1,%lo(lwip_stats)
	.loc 1 891 134
	extu	a7,a7,15,0
	.loc 1 916 65
	lhu	a3,176(a2)
	.loc 1 916 147
	lhu	t6,178(a2)
	addi	a1,a1,%lo(lwip_stats)
	.loc 1 891 12
	bltu	a6,a7,.L44
	.loc 1 902 11 is_stmt 1
	.loc 1 902 16 is_stmt 0
	addi	a2,s0,8
	add	a2,a4,a2
	extu	a2,a2,15,0
.LVL75:
	.loc 1 903 11 is_stmt 1
	.loc 1 905 11
.LBB140:
.LBB141:
	.loc 1 453 3
	.loc 1 453 10 is_stmt 0
	add	a6,t3,a2
.LVL76:
.LBE141:
.LBE140:
	.loc 1 906 11 is_stmt 1
	.loc 1 906 22 is_stmt 0
	sb	zero,4(a6)
	.loc 1 907 11 is_stmt 1
	.loc 1 907 22 is_stmt 0
	srh	a5,t3,a2,0
	.loc 1 908 11 is_stmt 1
	.loc 1 908 22 is_stmt 0
	sh	a4,2(a6)
	.loc 1 910 11 is_stmt 1
	.loc 1 911 21 is_stmt 0
	li	a5,1
	.loc 1 910 21
	sh	a2,0(s1)
	.loc 1 911 11 is_stmt 1
	.loc 1 911 21 is_stmt 0
	sb	a5,4(s1)
	.loc 1 913 11 is_stmt 1
	.loc 1 913 19 is_stmt 0
	lrhu	a4,t3,a2,0
.LVL77:
	.loc 1 913 14
	beq	a4,t5,.L45
	.loc 1 914 13 is_stmt 1
.LVL78:
.LBB142:
.LBB143:
	.loc 1 453 3
.LBE143:
.LBE142:
	.loc 1 914 42 is_stmt 0
	add	a4,t3,a4
	sh	a2,2(a4)
.L45:
	.loc 1 916 11 is_stmt 1
	.loc 1 916 16
	.loc 1 916 38 is_stmt 0
	addi	a3,a3,8
	add	s0,s0,a3
	extu	s0,s0,15,0
	.loc 1 916 36
	sh	s0,176(a1)
	.loc 1 916 129 is_stmt 1
	.loc 1 916 132 is_stmt 0
	bgeu	t6,s0,.L47
	.loc 1 916 177 is_stmt 1 discriminator 1
	.loc 1 916 196 is_stmt 0 discriminator 1
	sh	s0,178(a1)
.LVL79:
.L47:
	.loc 1 926 202 is_stmt 1 discriminator 3
	.loc 1 931 9 discriminator 3
	.loc 1 931 12 is_stmt 0 discriminator 3
	bne	t1,s1,.L49
.LBB144:
	.loc 1 934 35
	lui	a5,%hi(.LANCHOR1)
	lw	a5,%lo(.LANCHOR1)(a5)
.L50:
.LVL80:
	.loc 1 934 17 is_stmt 1
	lbu	a4,4(t1)
	beq	a4,zero,.L51
	.loc 1 934 28 is_stmt 0 discriminator 1
	bne	a5,t1,.L52
.L51:
	.loc 1 948 11 is_stmt 1
	.loc 1 948 17 is_stmt 0
	sw	t1,0(t4)
.LVL81:
.L49:
	.loc 1 949 11 is_stmt 1
.LBE144:
	.loc 1 951 9
	.loc 1 952 9
	addi	a0,a0,%lo(.LANCHOR3)
	call	sys_mutex_unlock
.LVL82:
	.loc 1 954 85
	.loc 1 956 79
	.loc 1 958 67
	.loc 1 963 9
	.loc 1 964 9
	.loc 1 964 75 is_stmt 0
	addi	s1,s1,8
.LVL83:
	j	.L40
.LVL84:
.L44:
	.loc 1 925 11 is_stmt 1
	.loc 1 926 38 is_stmt 0
	add	a5,a5,a3
	.loc 1 925 21
	li	a1,1
	.loc 1 926 38
	sub	a5,a5,a4
	.loc 1 925 21
	sb	a1,4(s1)
	.loc 1 926 11 is_stmt 1
	.loc 1 926 16
.LVL85:
	.loc 1 459 3
	.loc 1 926 38 is_stmt 0
	extu	a5,a5,15,0
	.loc 1 926 36
	sh	a5,176(a2)
	.loc 1 926 103 is_stmt 1
	.loc 1 926 106 is_stmt 0
	bgeu	t6,a5,.L47
	.loc 1 926 151 is_stmt 1 discriminator 1
	.loc 1 926 170 is_stmt 0 discriminator 1
	sh	a5,178(a2)
	j	.L47
.LVL86:
.L52:
.LBB147:
	.loc 1 946 13 is_stmt 1
.LBB145:
.LBB146:
	.loc 1 453 3
	.loc 1 453 32 is_stmt 0
	lhu	t1,0(t1)
.LVL87:
	.loc 1 453 10
	add	t1,t3,t1
.LVL88:
	j	.L50
.LVL89:
.L59:
.LBE146:
.LBE145:
.LBE147:
	mv	a4,a5
.LVL90:
	j	.L63
	.cfi_endproc
.LFE12:
	.size	mem_malloc, .-mem_malloc
	.section	.text.mem_calloc,"ax",@progbits
	.align	1
	.globl	mem_calloc
	.type	mem_calloc, @function
mem_calloc:
.LFB13:
	.loc 1 1000 1 is_stmt 1
	.cfi_startproc
.LVL91:
	.loc 1 1001 3
	.loc 1 1002 3
	.loc 1 1002 10 is_stmt 0
	mul	a2,a0,a1
.LVL92:
	.loc 1 1004 3 is_stmt 1
	.loc 1 1000 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 1006 11
	li	s0,0
	.loc 1 1004 6
	extu	a5,a2,15,0
	bne	a2,a5,.L65
	.loc 1 1010 3 is_stmt 1
	.loc 1 1010 7 is_stmt 0
	mv	a0,a5
.LVL93:
	sw	a2,12(sp)
	call	mem_malloc
.LVL94:
	mv	s0,a0
.LVL95:
	.loc 1 1011 3 is_stmt 1
	.loc 1 1011 6 is_stmt 0
	beq	a0,zero,.L65
	.loc 1 1013 5 is_stmt 1
	lw	a2,12(sp)
	li	a1,0
	call	memset
.LVL96:
.L65:
	.loc 1 1016 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	mv	a0,s0
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE13:
	.size	mem_calloc, .-mem_calloc
	.globl	ram_heap
	.section	.bss.lfree,"aw",@nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	lfree, @object
	.size	lfree, 4
lfree:
	.zero	4
	.section	.bss.mem_mutex,"aw",@nobits
	.align	2
	.set	.LANCHOR3,. + 0
	.type	mem_mutex, @object
	.size	mem_mutex, 4
mem_mutex:
	.zero	4
	.section	.bss.ram,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	ram, @object
	.size	ram, 4
ram:
	.zero	4
	.section	.bss.ram_end,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	ram_end, @object
	.size	ram_end, 4
ram_end:
	.zero	4
	.section	SHAREDRAM,"aw"
	.align	2
	.type	ram_heap, @object
	.size	ram_heap, 61459
ram_heap:
	.zero	61459
	.text
.Letext0:
	.file 2 "./components/net/lwip/lwip/lwip-port/arch/cc.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 4 "./toolchain/linux_x86_64/lib/gcc/riscv64-unknown-elf/10.4.0/include/stddef.h"
	.file 5 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 6 "./components/net/lwip/lwip/src/include/lwip/arch.h"
	.file 7 "./components/net/lwip/lwip/src/include/lwip/mem.h"
	.file 8 "./components/os/freertos/include/queue.h"
	.file 9 "./components/os/freertos/include/semphr.h"
	.file 10 "./components/net/lwip/lwip/lwip-port/arch/sys_arch.h"
	.file 11 "./components/net/lwip/lwip/src/include/lwip/err.h"
	.file 12 "./components/net/lwip/lwip/src/include/lwip/memp.h"
	.file 13 "./components/net/lwip/lwip/src/include/lwip/stats.h"
	.file 14 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/string.h"
	.file 15 "./components/net/lwip/lwip/src/include/lwip/sys.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xc26
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF119
	.byte	0xc
	.4byte	.LASF120
	.4byte	.LASF121
	.4byte	.Ldebug_ranges0+0x118
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	.LASF1
	.byte	0x2
	.byte	0x25
	.byte	0xd
	.4byte	0x31
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x2
	.4byte	.LASF2
	.byte	0x3
	.byte	0x2b
	.byte	0x17
	.4byte	0x4b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.byte	0x2
	.4byte	.LASF4
	.byte	0x3
	.byte	0x37
	.byte	0x13
	.4byte	0x5e
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.byte	0x2
	.4byte	.LASF6
	.byte	0x3
	.byte	0x39
	.byte	0x1c
	.4byte	0x71
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.byte	0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.byte	0x2
	.4byte	.LASF12
	.byte	0x3
	.byte	0xe8
	.byte	0x16
	.4byte	0xa0
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.byte	0x2
	.4byte	.LASF14
	.byte	0x4
	.byte	0xd1
	.byte	0x16
	.4byte	0xa0
	.byte	0x5
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.byte	0x6
	.4byte	0xb5
	.byte	0x7
	.byte	0x4
	.4byte	0xbc
	.byte	0x2
	.4byte	.LASF16
	.byte	0x5
	.byte	0x18
	.byte	0x13
	.4byte	0x3f
	.byte	0x2
	.4byte	.LASF17
	.byte	0x5
	.byte	0x20
	.byte	0x13
	.4byte	0x52
	.byte	0x2
	.4byte	.LASF18
	.byte	0x5
	.byte	0x24
	.byte	0x14
	.4byte	0x65
	.byte	0x2
	.4byte	.LASF19
	.byte	0x5
	.byte	0x52
	.byte	0x15
	.4byte	0x94
	.byte	0x2
	.4byte	.LASF20
	.byte	0x6
	.byte	0x7d
	.byte	0x11
	.4byte	0xc7
	.byte	0x2
	.4byte	.LASF21
	.byte	0x6
	.byte	0x7f
	.byte	0x12
	.4byte	0xdf
	.byte	0x2
	.4byte	.LASF22
	.byte	0x6
	.byte	0x80
	.byte	0x11
	.4byte	0xd3
	.byte	0x2
	.4byte	.LASF23
	.byte	0x6
	.byte	0x87
	.byte	0x13
	.4byte	0xeb
	.byte	0x2
	.4byte	.LASF24
	.byte	0x7
	.byte	0x43
	.byte	0xf
	.4byte	0x103
	.byte	0x8
	.byte	0x5
	.byte	0x1
	.4byte	0x38
	.byte	0xb
	.byte	0x35
	.byte	0xe
	.4byte	0x1a8
	.byte	0x9
	.4byte	.LASF25
	.byte	0
	.byte	0xa
	.4byte	.LASF26
	.byte	0x7f
	.byte	0xa
	.4byte	.LASF27
	.byte	0x7e
	.byte	0xa
	.4byte	.LASF28
	.byte	0x7d
	.byte	0xa
	.4byte	.LASF29
	.byte	0x7c
	.byte	0xa
	.4byte	.LASF30
	.byte	0x7b
	.byte	0xa
	.4byte	.LASF31
	.byte	0x7a
	.byte	0xa
	.4byte	.LASF32
	.byte	0x79
	.byte	0xa
	.4byte	.LASF33
	.byte	0x78
	.byte	0xa
	.4byte	.LASF34
	.byte	0x77
	.byte	0xa
	.4byte	.LASF35
	.byte	0x76
	.byte	0xa
	.4byte	.LASF36
	.byte	0x75
	.byte	0xa
	.4byte	.LASF37
	.byte	0x74
	.byte	0xa
	.4byte	.LASF38
	.byte	0x73
	.byte	0xa
	.4byte	.LASF39
	.byte	0x72
	.byte	0xa
	.4byte	.LASF40
	.byte	0x71
	.byte	0xa
	.4byte	.LASF41
	.byte	0x70
	.byte	0
	.byte	0x2
	.4byte	.LASF42
	.byte	0x8
	.byte	0x33
	.byte	0x22
	.4byte	0x1b4
	.byte	0x7
	.byte	0x4
	.4byte	0x1ba
	.byte	0xb
	.4byte	.LASF122
	.byte	0x2
	.4byte	.LASF43
	.byte	0x9
	.byte	0x26
	.byte	0x17
	.4byte	0x1a8
	.byte	0x2
	.4byte	.LASF44
	.byte	0xa
	.byte	0x2d
	.byte	0x1b
	.4byte	0x1bf
	.byte	0x8
	.byte	0x7
	.byte	0x1
	.4byte	0x4b
	.byte	0xc
	.byte	0x34
	.byte	0xe
	.4byte	0x23a
	.byte	0x9
	.4byte	.LASF45
	.byte	0
	.byte	0x9
	.4byte	.LASF46
	.byte	0x1
	.byte	0x9
	.4byte	.LASF47
	.byte	0x2
	.byte	0x9
	.4byte	.LASF48
	.byte	0x3
	.byte	0x9
	.4byte	.LASF49
	.byte	0x4
	.byte	0x9
	.4byte	.LASF50
	.byte	0x5
	.byte	0x9
	.4byte	.LASF51
	.byte	0x6
	.byte	0x9
	.4byte	.LASF52
	.byte	0x7
	.byte	0x9
	.4byte	.LASF53
	.byte	0x8
	.byte	0x9
	.4byte	.LASF54
	.byte	0x9
	.byte	0x9
	.4byte	.LASF55
	.byte	0xa
	.byte	0x9
	.4byte	.LASF56
	.byte	0xb
	.byte	0x9
	.4byte	.LASF57
	.byte	0xc
	.byte	0x9
	.4byte	.LASF58
	.byte	0xd
	.byte	0
	.byte	0xc
	.4byte	.LASF63
	.byte	0x10
	.byte	0xd
	.byte	0x62
	.byte	0x8
	.4byte	0x296
	.byte	0xd
	.4byte	.LASF59
	.byte	0xd
	.byte	0x64
	.byte	0xf
	.4byte	0xc1
	.byte	0
	.byte	0xe
	.string	"err"
	.byte	0xd
	.byte	0x66
	.byte	0x9
	.4byte	0x103
	.byte	0x4
	.byte	0xd
	.4byte	.LASF60
	.byte	0xd
	.byte	0x67
	.byte	0xe
	.4byte	0x127
	.byte	0x6
	.byte	0xd
	.4byte	.LASF61
	.byte	0xd
	.byte	0x68
	.byte	0xe
	.4byte	0x127
	.byte	0x8
	.byte	0xe
	.string	"max"
	.byte	0xd
	.byte	0x69
	.byte	0xe
	.4byte	0x127
	.byte	0xa
	.byte	0xd
	.4byte	.LASF62
	.byte	0xd
	.byte	0x6a
	.byte	0x9
	.4byte	0x103
	.byte	0xc
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x23a
	.byte	0x7
	.byte	0x4
	.4byte	0xf7
	.byte	0xc
	.4byte	.LASF64
	.byte	0x18
	.byte	0xd
	.byte	0x40
	.byte	0x8
	.4byte	0x34b
	.byte	0xd
	.4byte	.LASF65
	.byte	0xd
	.byte	0x41
	.byte	0x9
	.4byte	0x103
	.byte	0
	.byte	0xd
	.4byte	.LASF66
	.byte	0xd
	.byte	0x42
	.byte	0x9
	.4byte	0x103
	.byte	0x2
	.byte	0xe
	.string	"fw"
	.byte	0xd
	.byte	0x43
	.byte	0x9
	.4byte	0x103
	.byte	0x4
	.byte	0xd
	.4byte	.LASF67
	.byte	0xd
	.byte	0x44
	.byte	0x9
	.4byte	0x103
	.byte	0x6
	.byte	0xd
	.4byte	.LASF68
	.byte	0xd
	.byte	0x45
	.byte	0x9
	.4byte	0x103
	.byte	0x8
	.byte	0xd
	.4byte	.LASF69
	.byte	0xd
	.byte	0x46
	.byte	0x9
	.4byte	0x103
	.byte	0xa
	.byte	0xd
	.4byte	.LASF70
	.byte	0xd
	.byte	0x47
	.byte	0x9
	.4byte	0x103
	.byte	0xc
	.byte	0xd
	.4byte	.LASF71
	.byte	0xd
	.byte	0x48
	.byte	0x9
	.4byte	0x103
	.byte	0xe
	.byte	0xd
	.4byte	.LASF72
	.byte	0xd
	.byte	0x49
	.byte	0x9
	.4byte	0x103
	.byte	0x10
	.byte	0xd
	.4byte	.LASF73
	.byte	0xd
	.byte	0x4a
	.byte	0x9
	.4byte	0x103
	.byte	0x12
	.byte	0xe
	.string	"err"
	.byte	0xd
	.byte	0x4b
	.byte	0x9
	.4byte	0x103
	.byte	0x14
	.byte	0xd
	.4byte	.LASF74
	.byte	0xd
	.byte	0x4c
	.byte	0x9
	.4byte	0x103
	.byte	0x16
	.byte	0
	.byte	0xc
	.4byte	.LASF75
	.byte	0x6
	.byte	0xd
	.byte	0x6e
	.byte	0x8
	.4byte	0x380
	.byte	0xd
	.4byte	.LASF61
	.byte	0xd
	.byte	0x6f
	.byte	0x9
	.4byte	0x103
	.byte	0
	.byte	0xe
	.string	"max"
	.byte	0xd
	.byte	0x70
	.byte	0x9
	.4byte	0x103
	.byte	0x2
	.byte	0xe
	.string	"err"
	.byte	0xd
	.byte	0x71
	.byte	0x9
	.4byte	0x103
	.byte	0x4
	.byte	0
	.byte	0xc
	.4byte	.LASF76
	.byte	0x12
	.byte	0xd
	.byte	0x75
	.byte	0x8
	.4byte	0x3b5
	.byte	0xe
	.string	"sem"
	.byte	0xd
	.byte	0x76
	.byte	0x18
	.4byte	0x34b
	.byte	0
	.byte	0xd
	.4byte	.LASF77
	.byte	0xd
	.byte	0x77
	.byte	0x18
	.4byte	0x34b
	.byte	0x6
	.byte	0xd
	.4byte	.LASF78
	.byte	0xd
	.byte	0x78
	.byte	0x18
	.4byte	0x34b
	.byte	0xc
	.byte	0
	.byte	0xf
	.4byte	.LASF79
	.2byte	0x100
	.byte	0xd
	.byte	0xf4
	.byte	0x8
	.4byte	0x44c
	.byte	0xd
	.4byte	.LASF80
	.byte	0xd
	.byte	0xf7
	.byte	0x16
	.4byte	0x2a2
	.byte	0
	.byte	0xd
	.4byte	.LASF81
	.byte	0xd
	.byte	0xfb
	.byte	0x16
	.4byte	0x2a2
	.byte	0x18
	.byte	0xd
	.4byte	.LASF82
	.byte	0xd
	.byte	0xff
	.byte	0x16
	.4byte	0x2a2
	.byte	0x30
	.byte	0x10
	.string	"ip"
	.byte	0xd
	.2byte	0x103
	.byte	0x16
	.4byte	0x2a2
	.byte	0x48
	.byte	0x11
	.4byte	.LASF83
	.byte	0xd
	.2byte	0x107
	.byte	0x16
	.4byte	0x2a2
	.byte	0x60
	.byte	0x10
	.string	"udp"
	.byte	0xd
	.2byte	0x10f
	.byte	0x16
	.4byte	0x2a2
	.byte	0x78
	.byte	0x10
	.string	"tcp"
	.byte	0xd
	.2byte	0x113
	.byte	0x16
	.4byte	0x2a2
	.byte	0x90
	.byte	0x10
	.string	"mem"
	.byte	0xd
	.2byte	0x117
	.byte	0x14
	.4byte	0x23a
	.byte	0xa8
	.byte	0x11
	.4byte	.LASF84
	.byte	0xd
	.2byte	0x11b
	.byte	0x15
	.4byte	0x44c
	.byte	0xb8
	.byte	0x10
	.string	"sys"
	.byte	0xd
	.2byte	0x11f
	.byte	0x14
	.4byte	0x380
	.byte	0xec
	.byte	0
	.byte	0x12
	.4byte	0x296
	.4byte	0x45c
	.byte	0x13
	.4byte	0xa0
	.byte	0xc
	.byte	0
	.byte	0x14
	.4byte	.LASF87
	.byte	0xd
	.2byte	0x141
	.byte	0x16
	.4byte	0x3b5
	.byte	0x15
	.string	"mem"
	.byte	0x6
	.byte	0x1
	.2byte	0x15d
	.byte	0x8
	.4byte	0x4a2
	.byte	0x11
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x15f
	.byte	0xe
	.4byte	0x127
	.byte	0
	.byte	0x11
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x161
	.byte	0xe
	.4byte	0x127
	.byte	0x2
	.byte	0x11
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x163
	.byte	0x8
	.4byte	0xf7
	.byte	0x4
	.byte	0
	.byte	0x12
	.4byte	0xf7
	.4byte	0x4b3
	.byte	0x16
	.4byte	0xa0
	.2byte	0xf012
	.byte	0
	.byte	0x17
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x17b
	.byte	0x6
	.4byte	0x4a2
	.byte	0x5
	.byte	0x3
	.4byte	ram_heap
	.byte	0x18
	.string	"ram"
	.byte	0x1
	.2byte	0x180
	.byte	0xe
	.4byte	0x29c
	.byte	0x5
	.byte	0x3
	.4byte	ram
	.byte	0x19
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x182
	.byte	0x14
	.4byte	0x4ec
	.byte	0x5
	.byte	0x3
	.4byte	ram_end
	.byte	0x7
	.byte	0x4
	.4byte	0x469
	.byte	0x19
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x186
	.byte	0x14
	.4byte	0x1cb
	.byte	0x5
	.byte	0x3
	.4byte	mem_mutex
	.byte	0x19
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x1a5
	.byte	0x15
	.4byte	0x4ec
	.byte	0x5
	.byte	0x3
	.4byte	lfree
	.byte	0x1a
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x3e7
	.byte	0x1
	.4byte	0xb3
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x5a8
	.byte	0x1b
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x3e7
	.byte	0x17
	.4byte	0x127
	.4byte	.LLST35
	.byte	0x1b
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x3e7
	.byte	0x29
	.4byte	0x127
	.4byte	.LLST36
	.byte	0x1c
	.string	"p"
	.byte	0x1
	.2byte	0x3e9
	.byte	0x9
	.4byte	0xb3
	.4byte	.LLST37
	.byte	0x1d
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x3ea
	.byte	0xa
	.4byte	0xa7
	.4byte	.LLST38
	.byte	0x1e
	.4byte	.LVL94
	.4byte	0x5a8
	.4byte	0x58b
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x4
	.byte	0x91
	.byte	0x6c
	.byte	0x94
	.byte	0x2
	.byte	0
	.byte	0x20
	.4byte	.LVL96
	.4byte	0xbdf
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x1f
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x33f
	.byte	0x1
	.4byte	0xb3
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x719
	.byte	0x1b
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x33f
	.byte	0x17
	.4byte	0x127
	.4byte	.LLST24
	.byte	0x1c
	.string	"ptr"
	.byte	0x1
	.2byte	0x341
	.byte	0xe
	.4byte	0x127
	.4byte	.LLST25
	.byte	0x1d
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x341
	.byte	0x13
	.4byte	0x127
	.4byte	.LLST26
	.byte	0x1d
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x341
	.byte	0x19
	.4byte	0x127
	.4byte	.LLST27
	.byte	0x1c
	.string	"mem"
	.byte	0x1
	.2byte	0x342
	.byte	0xf
	.4byte	0x4ec
	.4byte	.LLST28
	.byte	0x1d
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x342
	.byte	0x15
	.4byte	0x4ec
	.4byte	.LLST29
	.byte	0x21
	.4byte	.Ldebug_ranges0+0x100
	.4byte	0x65f
	.byte	0x1c
	.string	"cur"
	.byte	0x1
	.2byte	0x3a4
	.byte	0x17
	.4byte	0x4ec
	.4byte	.LLST33
	.byte	0x22
	.4byte	0xbbf
	.4byte	.LBB145
	.4byte	.LBE145-.LBB145
	.byte	0x1
	.2byte	0x3b2
	.byte	0x13
	.byte	0x23
	.4byte	0xbd1
	.4byte	.LLST34
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	0xb9f
	.4byte	.LBB132
	.4byte	.Ldebug_ranges0+0xe0
	.byte	0x1
	.2byte	0x366
	.byte	0x10
	.4byte	0x67e
	.byte	0x23
	.4byte	0xbb1
	.4byte	.LLST30
	.byte	0
	.byte	0x25
	.4byte	0xbbf
	.4byte	.LBB138
	.4byte	.LBE138-.LBB138
	.byte	0x1
	.2byte	0x368
	.byte	0xd
	.4byte	0x69d
	.byte	0x23
	.4byte	0xbd1
	.4byte	.LLST31
	.byte	0
	.byte	0x25
	.4byte	0xbbf
	.4byte	.LBB140
	.4byte	.LBE140-.LBB140
	.byte	0x1
	.2byte	0x389
	.byte	0x12
	.4byte	0x6bc
	.byte	0x23
	.4byte	0xbd1
	.4byte	.LLST32
	.byte	0
	.byte	0x25
	.4byte	0xbbf
	.4byte	.LBB142
	.4byte	.LBE142-.LBB142
	.byte	0x1
	.2byte	0x392
	.byte	0xd
	.4byte	0x6d7
	.byte	0x26
	.4byte	0xbd1
	.byte	0
	.byte	0x1e
	.4byte	.LVL67
	.4byte	0xbeb
	.4byte	0x6ee
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR3
	.byte	0
	.byte	0x1e
	.4byte	.LVL72
	.4byte	0xbf7
	.4byte	0x705
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR3
	.byte	0
	.byte	0x20
	.4byte	.LVL82
	.4byte	0xbf7
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR3
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x2bb
	.byte	0x1
	.4byte	0xb3
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x8db
	.byte	0x1b
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x2bb
	.byte	0x10
	.4byte	0xb3
	.4byte	.LLST12
	.byte	0x1b
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x2bb
	.byte	0x21
	.4byte	0x127
	.4byte	.LLST13
	.byte	0x19
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x2bd
	.byte	0xe
	.4byte	0x127
	.byte	0x1
	.byte	0x63
	.byte	0x1d
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x2bd
	.byte	0x14
	.4byte	0x127
	.4byte	.LLST14
	.byte	0x1c
	.string	"ptr"
	.byte	0x1
	.2byte	0x2be
	.byte	0xe
	.4byte	0x127
	.4byte	.LLST15
	.byte	0x1d
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x2be
	.byte	0x13
	.4byte	0x127
	.4byte	.LLST16
	.byte	0x1c
	.string	"mem"
	.byte	0x1
	.2byte	0x2bf
	.byte	0xf
	.4byte	0x4ec
	.4byte	.LLST17
	.byte	0x1d
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x2bf
	.byte	0x15
	.4byte	0x4ec
	.4byte	.LLST18
	.byte	0x27
	.4byte	.LBB113
	.4byte	.LBE113-.LBB113
	.4byte	0x7eb
	.byte	0x1d
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x2d7
	.byte	0x15
	.4byte	0x25
	.4byte	.LLST19
	.byte	0x28
	.4byte	.LVL33
	.4byte	0xc03
	.byte	0x28
	.4byte	.LVL34
	.4byte	0xc10
	.byte	0
	.byte	0x21
	.4byte	.Ldebug_ranges0+0xb0
	.4byte	0x838
	.byte	0x1d
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x2f4
	.byte	0x10
	.4byte	0x127
	.4byte	.LLST22
	.byte	0x24
	.4byte	0xbbf
	.4byte	.LBB121
	.4byte	.Ldebug_ranges0+0xc8
	.byte	0x1
	.2byte	0x2fb
	.byte	0xf
	.4byte	0x820
	.byte	0x26
	.4byte	0xbd1
	.byte	0
	.byte	0x22
	.4byte	0xbbf
	.4byte	.LBB125
	.4byte	.LBE125-.LBB125
	.byte	0x1
	.2byte	0x309
	.byte	0x7
	.byte	0x26
	.4byte	0xbd1
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	0xb9f
	.4byte	.LBB114
	.4byte	.Ldebug_ranges0+0x98
	.byte	0x1
	.2byte	0x2e1
	.byte	0x9
	.4byte	0x857
	.byte	0x23
	.4byte	0xbb1
	.4byte	.LLST20
	.byte	0
	.byte	0x25
	.4byte	0xbbf
	.4byte	.LBB118
	.4byte	.LBE118-.LBB118
	.byte	0x1
	.2byte	0x2f1
	.byte	0xa
	.4byte	0x876
	.byte	0x23
	.4byte	0xbd1
	.4byte	.LLST21
	.byte	0
	.byte	0x25
	.4byte	0xbbf
	.4byte	.LBB128
	.4byte	.LBE128-.LBB128
	.byte	0x1
	.2byte	0x317
	.byte	0xc
	.4byte	0x895
	.byte	0x23
	.4byte	0xbd1
	.4byte	.LLST23
	.byte	0
	.byte	0x25
	.4byte	0xbbf
	.4byte	.LBB130
	.4byte	.LBE130-.LBB130
	.byte	0x1
	.2byte	0x320
	.byte	0x7
	.4byte	0x8b0
	.byte	0x26
	.4byte	0xbd1
	.byte	0
	.byte	0x1e
	.4byte	.LVL41
	.4byte	0xbeb
	.4byte	0x8c7
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR3
	.byte	0
	.byte	0x20
	.4byte	.LVL52
	.4byte	0xbf7
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR3
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x269
	.byte	0x1
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0xacb
	.byte	0x1b
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x269
	.byte	0x10
	.4byte	0xb3
	.4byte	.LLST1
	.byte	0x1c
	.string	"mem"
	.byte	0x1
	.2byte	0x26b
	.byte	0xf
	.4byte	0x4ec
	.4byte	.LLST2
	.byte	0x2a
	.4byte	0x927
	.byte	0x2b
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x276
	.byte	0x15
	.4byte	0x25
	.byte	0
	.byte	0x2a
	.4byte	0x93a
	.byte	0x2b
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x282
	.byte	0x15
	.4byte	0x25
	.byte	0
	.byte	0x21
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x967
	.byte	0x1d
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x290
	.byte	0x15
	.4byte	0x25
	.4byte	.LLST3
	.byte	0x28
	.4byte	.LVL6
	.4byte	0xc03
	.byte	0x2c
	.4byte	.LVL8
	.4byte	0xc10
	.byte	0
	.byte	0x2a
	.4byte	0x97a
	.byte	0x2b
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x299
	.byte	0x15
	.4byte	0x25
	.byte	0
	.byte	0x25
	.4byte	0xacb
	.4byte	.LBB87
	.4byte	.LBE87-.LBB87
	.byte	0x1
	.2byte	0x294
	.byte	0x8
	.4byte	0xa01
	.byte	0x23
	.4byte	0xadd
	.4byte	.LLST4
	.byte	0x2d
	.4byte	0xaea
	.4byte	.LLST5
	.byte	0x2d
	.4byte	0xaf7
	.4byte	.LLST6
	.byte	0x2d
	.4byte	0xb04
	.4byte	.LLST7
	.byte	0x24
	.4byte	0xb9f
	.4byte	.LBB89
	.4byte	.Ldebug_ranges0+0x40
	.byte	0x1
	.2byte	0x22b
	.byte	0xe
	.4byte	0x9ce
	.byte	0x26
	.4byte	0xbb1
	.byte	0
	.byte	0x24
	.4byte	0xbbf
	.4byte	.LBB92
	.4byte	.Ldebug_ranges0+0x58
	.byte	0x1
	.2byte	0x22c
	.byte	0xa
	.4byte	0x9e9
	.byte	0x26
	.4byte	0xbd1
	.byte	0
	.byte	0x22
	.4byte	0xbbf
	.4byte	.LBB95
	.4byte	.LBE95-.LBB95
	.byte	0x1
	.2byte	0x22d
	.byte	0xa
	.byte	0x26
	.4byte	0xbd1
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	0xb69
	.4byte	.LBB99
	.4byte	.Ldebug_ranges0+0x70
	.byte	0x1
	.2byte	0x2a8
	.byte	0x3
	.4byte	0xa89
	.byte	0x23
	.4byte	0xb77
	.4byte	.LLST8
	.byte	0x2e
	.4byte	.Ldebug_ranges0+0x70
	.byte	0x2d
	.4byte	0xb84
	.4byte	.LLST9
	.byte	0x2d
	.4byte	0xb91
	.4byte	.LLST10
	.byte	0x25
	.4byte	0xbbf
	.4byte	.LBB101
	.4byte	.LBE101-.LBB101
	.byte	0x1
	.2byte	0x1ee
	.byte	0x7
	.4byte	0xa51
	.byte	0x26
	.4byte	0xbd1
	.byte	0
	.byte	0x25
	.4byte	0xbbf
	.4byte	.LBB103
	.4byte	.LBE103-.LBB103
	.byte	0x1
	.2byte	0x1f3
	.byte	0xa
	.4byte	0xa70
	.byte	0x23
	.4byte	0xbd1
	.4byte	.LLST11
	.byte	0
	.byte	0x22
	.4byte	0xbbf
	.4byte	.LBB105
	.4byte	.LBE105-.LBB105
	.byte	0x1
	.2byte	0x1fb
	.byte	0x7
	.byte	0x26
	.4byte	0xbd1
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LVL10
	.4byte	0xbeb
	.4byte	0xaa0
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR3
	.byte	0
	.byte	0x1e
	.4byte	.LVL11
	.4byte	0xbf7
	.4byte	0xab7
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR3
	.byte	0
	.byte	0x2f
	.4byte	.LVL27
	.4byte	0xbf7
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR3
	.byte	0
	.byte	0
	.byte	0x30
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x227
	.byte	0x1
	.4byte	0x31
	.byte	0x1
	.4byte	0xb12
	.byte	0x31
	.string	"mem"
	.byte	0x1
	.2byte	0x227
	.byte	0x1c
	.4byte	0x4ec
	.byte	0x2b
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x229
	.byte	0xf
	.4byte	0x4ec
	.byte	0x2b
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x229
	.byte	0x16
	.4byte	0x4ec
	.byte	0x2b
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x22a
	.byte	0xe
	.4byte	0x127
	.byte	0
	.byte	0x29
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x204
	.byte	0x1
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0xb69
	.byte	0x1c
	.string	"mem"
	.byte	0x1
	.2byte	0x206
	.byte	0xf
	.4byte	0x4ec
	.4byte	.LLST0
	.byte	0x24
	.4byte	0xbbf
	.4byte	.LBB53
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x213
	.byte	0xd
	.4byte	0xb55
	.byte	0x26
	.4byte	0xbd1
	.byte	0
	.byte	0x2f
	.4byte	.LVL3
	.4byte	0xc1d
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR3
	.byte	0
	.byte	0
	.byte	0x32
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x1da
	.byte	0x1
	.byte	0x1
	.4byte	0xb9f
	.byte	0x31
	.string	"mem"
	.byte	0x1
	.2byte	0x1da
	.byte	0x18
	.4byte	0x4ec
	.byte	0x2b
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x1dc
	.byte	0xf
	.4byte	0x4ec
	.byte	0x2b
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x1dd
	.byte	0xf
	.4byte	0x4ec
	.byte	0
	.byte	0x30
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x1c9
	.byte	0x1
	.4byte	0x127
	.byte	0x1
	.4byte	0xbbf
	.byte	0x31
	.string	"mem"
	.byte	0x1
	.2byte	0x1c9
	.byte	0x12
	.4byte	0xb3
	.byte	0
	.byte	0x30
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x1c3
	.byte	0x1
	.4byte	0x4ec
	.byte	0x1
	.4byte	0xbdf
	.byte	0x31
	.string	"ptr"
	.byte	0x1
	.2byte	0x1c3
	.byte	0x17
	.4byte	0x127
	.byte	0
	.byte	0x33
	.4byte	.LASF113
	.4byte	.LASF113
	.byte	0xe
	.byte	0x21
	.byte	0x8
	.byte	0x33
	.4byte	.LASF114
	.4byte	.LASF114
	.byte	0xf
	.byte	0x9d
	.byte	0x6
	.byte	0x33
	.4byte	.LASF115
	.4byte	.LASF115
	.byte	0xf
	.byte	0xa3
	.byte	0x6
	.byte	0x34
	.4byte	.LASF116
	.4byte	.LASF116
	.byte	0xf
	.2byte	0x20f
	.byte	0xc
	.byte	0x34
	.4byte	.LASF117
	.4byte	.LASF117
	.byte	0xf
	.2byte	0x210
	.byte	0x6
	.byte	0x33
	.4byte	.LASF118
	.4byte	.LASF118
	.byte	0xf
	.byte	0x97
	.byte	0x7
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
	.byte	0x8
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
	.byte	0xe
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0x9
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xd
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0xc
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
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0xf
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0x5
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
	.byte	0x11
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
	.byte	0x12
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
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
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0x8
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
	.byte	0x16
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0x5
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
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x18
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
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0x1d
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
	.byte	0x1e
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
	.byte	0x1f
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x20
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x22
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
	.byte	0
	.byte	0
	.byte	0x23
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x24
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
	.byte	0x25
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
	.byte	0x26
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x27
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
	.byte	0x28
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x29
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
	.byte	0x2a
	.byte	0xb
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2b
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
	.byte	0x2c
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
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2f
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
	.byte	0x30
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
	.byte	0x31
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
	.byte	0x32
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
	.byte	0x33
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
	.byte	0x34
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
.LLST35:
	.4byte	.LVL91
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL93
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL91
	.4byte	.LVL94-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL94-1
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL92
	.4byte	.LVL94-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL94-1
	.4byte	.LVL96
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL66
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL73
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL84
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL75
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL74
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x3
	.byte	0x79
	.byte	0x78
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL76
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x2
	.byte	0x76
	.byte	0
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL28
	.4byte	.LVL33-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL33-1
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL40
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL28
	.4byte	.LVL33-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL33-1
	.4byte	.LVL35
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL41-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL41-1
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL38
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL53
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL44
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL55
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x3
	.byte	0x7a
	.byte	0x78
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL37
	.4byte	.LVL40
	.2byte	0x3
	.byte	0x7a
	.byte	0x78
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LFE11
	.2byte	0x3
	.byte	0x84
	.byte	0x78
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL43
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0xa
	.byte	0x7e
	.byte	0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0xe
	.byte	0x7e
	.byte	0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x3
	.4byte	ram
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x7b
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL57
	.4byte	.LVL59
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x7e
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LFE11
	.2byte	0xa
	.byte	0x3
	.4byte	ram
	.byte	0x6
	.byte	0x7e
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL33
	.4byte	.LVL34-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL44
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x3
	.byte	0x7a
	.byte	0x78
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x3
	.byte	0x7a
	.byte	0x78
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x3
	.byte	0x79
	.byte	0x8
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL9
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x6
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL13
	.4byte	.LVL16
	.2byte	0xe
	.byte	0x7b
	.byte	0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x3
	.4byte	ram
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL13
	.4byte	.LVL18
	.2byte	0x10
	.byte	0x78
	.byte	0x7a
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x3
	.4byte	ram
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL12
	.4byte	.LVL18
	.2byte	0xa
	.byte	0x79
	.byte	0
	.byte	0x3
	.4byte	ram
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL23
	.2byte	0x6
	.byte	0x79
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0xa
	.byte	0x79
	.byte	0
	.byte	0x3
	.4byte	ram
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27-1
	.2byte	0xd
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.4byte	ram
	.byte	0x6
	.byte	0x1c
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL15
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0xe
	.byte	0x7b
	.byte	0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x3
	.4byte	ram
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL27-1
	.2byte	0xa
	.byte	0x3
	.4byte	ram
	.byte	0x6
	.byte	0x7d
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x5
	.byte	0x3
	.4byte	ram
	.4byte	.LVL3-1
	.4byte	.LFE8
	.2byte	0x9
	.byte	0x3
	.4byte	ram_heap+3
	.byte	0x9
	.byte	0xfc
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB53
	.4byte	.LBE53
	.4byte	.LBB56
	.4byte	.LBE56
	.4byte	0
	.4byte	0
	.4byte	.LBB83
	.4byte	.LBE83
	.4byte	.LBB84
	.4byte	.LBE84
	.4byte	.LBB85
	.4byte	.LBE85
	.4byte	.LBB86
	.4byte	.LBE86
	.4byte	0
	.4byte	0
	.4byte	.LBB89
	.4byte	.LBE89
	.4byte	.LBB97
	.4byte	.LBE97
	.4byte	0
	.4byte	0
	.4byte	.LBB92
	.4byte	.LBE92
	.4byte	.LBB98
	.4byte	.LBE98
	.4byte	0
	.4byte	0
	.4byte	.LBB99
	.4byte	.LBE99
	.4byte	.LBB110
	.4byte	.LBE110
	.4byte	.LBB111
	.4byte	.LBE111
	.4byte	.LBB112
	.4byte	.LBE112
	.4byte	0
	.4byte	0
	.4byte	.LBB114
	.4byte	.LBE114
	.4byte	.LBB117
	.4byte	.LBE117
	.4byte	0
	.4byte	0
	.4byte	.LBB120
	.4byte	.LBE120
	.4byte	.LBB127
	.4byte	.LBE127
	.4byte	0
	.4byte	0
	.4byte	.LBB121
	.4byte	.LBE121
	.4byte	.LBB124
	.4byte	.LBE124
	.4byte	0
	.4byte	0
	.4byte	.LBB132
	.4byte	.LBE132
	.4byte	.LBB136
	.4byte	.LBE136
	.4byte	.LBB137
	.4byte	.LBE137
	.4byte	0
	.4byte	0
	.4byte	.LBB144
	.4byte	.LBE144
	.4byte	.LBB147
	.4byte	.LBE147
	.4byte	0
	.4byte	0
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF108:
	.string	"mem_free"
.LASF48:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF40:
	.string	"ERR_CLSD"
.LASF33:
	.string	"ERR_USE"
.LASF41:
	.string	"ERR_ARG"
.LASF13:
	.string	"unsigned int"
.LASF85:
	.string	"next"
.LASF91:
	.string	"lfree"
.LASF21:
	.string	"u16_t"
.LASF115:
	.string	"sys_mutex_unlock"
.LASF118:
	.string	"sys_mutex_new"
.LASF111:
	.string	"mem_to_ptr"
.LASF63:
	.string	"stats_mem"
.LASF86:
	.string	"prev"
.LASF57:
	.string	"MEMP_PBUF_POOL"
.LASF106:
	.string	"pmem"
.LASF87:
	.string	"lwip_stats"
.LASF39:
	.string	"ERR_RST"
.LASF120:
	.string	"./components/net/lwip/lwip/src/core/mem.c"
.LASF34:
	.string	"ERR_ALREADY"
.LASF75:
	.string	"stats_syselem"
.LASF117:
	.string	"sys_arch_unprotect"
.LASF52:
	.string	"MEMP_NETCONN"
.LASF101:
	.string	"rmem"
.LASF53:
	.string	"MEMP_TCPIP_MSG_API"
.LASF73:
	.string	"opterr"
.LASF77:
	.string	"mutex"
.LASF82:
	.string	"ip_frag"
.LASF122:
	.string	"QueueDefinition"
.LASF92:
	.string	"count"
.LASF62:
	.string	"illegal"
.LASF107:
	.string	"rmem_idx"
.LASF17:
	.string	"int16_t"
.LASF81:
	.string	"etharp"
.LASF11:
	.string	"long long unsigned int"
.LASF95:
	.string	"mem_calloc"
.LASF6:
	.string	"__uint16_t"
.LASF31:
	.string	"ERR_VAL"
.LASF61:
	.string	"used"
.LASF79:
	.string	"stats_"
.LASF114:
	.string	"sys_mutex_lock"
.LASF14:
	.string	"size_t"
.LASF96:
	.string	"mem_malloc"
.LASF58:
	.string	"MEMP_MAX"
.LASF121:
	.string	"./examples/usb_cam_stream/build_wsl/build_out/components/net/lwip/lwip"
.LASF35:
	.string	"ERR_ISCONN"
.LASF100:
	.string	"mem_trim"
.LASF88:
	.string	"ram_heap"
.LASF32:
	.string	"ERR_WOULDBLOCK"
.LASF28:
	.string	"ERR_TIMEOUT"
.LASF56:
	.string	"MEMP_PBUF"
.LASF15:
	.string	"char"
.LASF24:
	.string	"mem_size_t"
.LASF64:
	.string	"stats_proto"
.LASF1:
	.string	"sys_prot_t"
.LASF109:
	.string	"mem_init"
.LASF42:
	.string	"QueueHandle_t"
.LASF16:
	.string	"uint8_t"
.LASF51:
	.string	"MEMP_NETBUF"
.LASF10:
	.string	"long long int"
.LASF44:
	.string	"sys_mutex_t"
.LASF37:
	.string	"ERR_IF"
.LASF47:
	.string	"MEMP_TCP_PCB"
.LASF84:
	.string	"memp"
.LASF20:
	.string	"u8_t"
.LASF4:
	.string	"__int16_t"
.LASF103:
	.string	"newsize"
.LASF113:
	.string	"memset"
.LASF89:
	.string	"ram_end"
.LASF123:
	.string	"plug_holes"
.LASF90:
	.string	"mem_mutex"
.LASF93:
	.string	"size"
.LASF68:
	.string	"chkerr"
.LASF50:
	.string	"MEMP_REASSDATA"
.LASF97:
	.string	"size_in"
.LASF18:
	.string	"uint16_t"
.LASF12:
	.string	"__uintptr_t"
.LASF27:
	.string	"ERR_BUF"
.LASF110:
	.string	"mem_link_valid"
.LASF5:
	.string	"short int"
.LASF83:
	.string	"icmp"
.LASF8:
	.string	"long int"
.LASF71:
	.string	"rterr"
.LASF60:
	.string	"avail"
.LASF43:
	.string	"SemaphoreHandle_t"
.LASF112:
	.string	"ptr_to_mem"
.LASF54:
	.string	"MEMP_SYS_TIMEOUT"
.LASF99:
	.string	"mem2"
.LASF46:
	.string	"MEMP_UDP_PCB"
.LASF98:
	.string	"ptr2"
.LASF78:
	.string	"mbox"
.LASF30:
	.string	"ERR_INPROGRESS"
.LASF23:
	.string	"mem_ptr_t"
.LASF2:
	.string	"__uint8_t"
.LASF74:
	.string	"cachehit"
.LASF59:
	.string	"name"
.LASF102:
	.string	"new_size"
.LASF19:
	.string	"uintptr_t"
.LASF45:
	.string	"MEMP_RAW_PCB"
.LASF69:
	.string	"lenerr"
.LASF9:
	.string	"long unsigned int"
.LASF22:
	.string	"s16_t"
.LASF72:
	.string	"proterr"
.LASF104:
	.string	"old_level"
.LASF76:
	.string	"stats_sys"
.LASF3:
	.string	"unsigned char"
.LASF70:
	.string	"memerr"
.LASF49:
	.string	"MEMP_TCP_SEG"
.LASF80:
	.string	"link"
.LASF119:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF65:
	.string	"xmit"
.LASF67:
	.string	"drop"
.LASF38:
	.string	"ERR_ABRT"
.LASF25:
	.string	"ERR_OK"
.LASF66:
	.string	"recv"
.LASF0:
	.string	"signed char"
.LASF7:
	.string	"short unsigned int"
.LASF36:
	.string	"ERR_CONN"
.LASF29:
	.string	"ERR_RTE"
.LASF55:
	.string	"MEMP_NETDB"
.LASF94:
	.string	"alloc_size"
.LASF26:
	.string	"ERR_MEM"
.LASF116:
	.string	"sys_arch_protect"
.LASF105:
	.string	"nmem"
	.ident	"GCC: (GNU) 10.4.0"
