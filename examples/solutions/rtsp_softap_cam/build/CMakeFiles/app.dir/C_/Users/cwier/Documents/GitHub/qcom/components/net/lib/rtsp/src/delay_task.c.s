	.file	"delay_task.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.sync_delay_time,"ax",@progbits
	.align	1
	.type	sync_delay_time, @function
sync_delay_time:
.LFB40:
	.file 1 ".\\components\\net\\lib\\rtsp\\src\\delay_task.c"
	.loc 1 34 1
	.cfi_startproc
	.loc 1 35 5
.LVL0:
	.loc 1 36 5
	.loc 1 37 5
	.loc 1 40 5
.LBB35:
.LBB36:
	.loc 1 25 5
.LBE36:
.LBE35:
	.loc 1 34 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LBB39:
.LBB37:
	.loc 1 25 12
	call	xTaskGetTickCount
.LVL1:
	.loc 1 25 31
	li	a5,1000
	mul	a0,a0,a5
.LBE37:
.LBE39:
	.loc 1 41 13
	lui	a2,%hi(.LANCHOR0)
	lw	a7,%lo(.LANCHOR0+4)(a2)
	lw	a6,%lo(.LANCHOR0)(a2)
	addi	a2,a2,%lo(.LANCHOR0)
.LBB40:
.LBB38:
	.loc 1 25 31
	srai	a3,a0,31
	mv	a4,a0
	mv	a5,a3
.LVL2:
.LBE38:
.LBE40:
	.loc 1 41 5 is_stmt 1
	.loc 1 41 8 is_stmt 0
	bgtu	a7,a3,.L9
	bne	a7,a3,.L2
	bgeu	a0,a6,.L2
.LVL3:
.L9:
	.loc 1 59 5 is_stmt 1
	.loc 1 61 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	.loc 1 59 20
	sw	a4,0(a2)
	sw	a5,4(a2)
	.loc 1 60 5 is_stmt 1
	.loc 1 61 1 is_stmt 0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL4:
.L2:
	.cfi_restore_state
	.loc 1 47 5 is_stmt 1
	.loc 1 47 20 is_stmt 0
	sub64	t1,a4,a6
	.loc 1 47 13
	bne	t2,zero,.L11
	li	a3,-2147483648
	xori	a3,a3,-2
	.loc 1 47 63
	sub	a0,a0,a6
	.loc 1 47 13
	bgeu	a3,t1,.L5
.L11:
	li	a0,0
.L5:
.LVL5:
	.loc 1 48 5 is_stmt 1 discriminator 4
.LBB41:
	.loc 1 48 19 discriminator 4
	.loc 1 48 61 is_stmt 0 discriminator 4
	lui	a3,%hi(rtsp_srv+36)
	lw	a3,%lo(rtsp_srv+36)(a3)
.LVL6:
	.loc 1 48 108 is_stmt 1 discriminator 4
.LBE41:
	.loc 1 48 5 is_stmt 0 discriminator 4
	lui	a6,%hi(rtsp_srv+36)
	addi	a6,a6,%lo(rtsp_srv+36)
.LVL7:
.L7:
	.loc 1 48 11 is_stmt 1 discriminator 1
	.loc 1 48 5 is_stmt 0 discriminator 1
	beq	a3,a6,.L9
	.loc 1 49 9 is_stmt 1
	.loc 1 49 16 is_stmt 0
	lw	a1,8(a3)
	.loc 1 49 12
	bgt	a1,a0,.L8
	.loc 1 50 13 is_stmt 1
	.loc 1 51 29 is_stmt 0
	sw	zero,8(a3)
	.loc 1 50 21
	sub	a0,a0,a1
.LVL8:
	.loc 1 51 13 is_stmt 1
	.loc 1 52 13
	.loc 1 48 56
.LBB42:
	.loc 1 48 65
	.loc 1 48 107 is_stmt 0
	lw	a3,0(a3)
.LVL9:
	.loc 1 48 135 is_stmt 1
	j	.L7
.LVL10:
.L8:
.LBE42:
	.loc 1 54 13
	.loc 1 54 29 is_stmt 0
	sub	a0,a1,a0
.LVL11:
	sw	a0,8(a3)
	.loc 1 55 13 is_stmt 1
	j	.L9
	.cfi_endproc
.LFE40:
	.size	sync_delay_time, .-sync_delay_time
	.section	.text.add_delay_task,"ax",@progbits
	.align	1
	.type	add_delay_task, @function
add_delay_task:
.LFB42:
	.loc 1 81 1
	.cfi_startproc
.LVL12:
	.loc 1 82 5
	.loc 1 83 5
	.loc 1 86 5
	.loc 1 81 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	a0,12(sp)
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 86 5
	call	sync_delay_time
.LVL13:
	.loc 1 89 5 is_stmt 1
	.loc 1 90 5
.LBB43:
	.loc 1 90 19
	.loc 1 90 61 is_stmt 0
	lui	a5,%hi(rtsp_srv+36)
	lw	a5,%lo(rtsp_srv+36)(a5)
.LVL14:
	.loc 1 90 108 is_stmt 1
.LBE43:
	.loc 1 90 5 is_stmt 0
	lw	a0,12(sp)
	lui	a2,%hi(rtsp_srv+36)
	addi	a2,a2,%lo(rtsp_srv+36)
.LVL15:
.L16:
	.loc 1 90 11 is_stmt 1 discriminator 1
	.loc 1 90 5 is_stmt 0 discriminator 1
	beq	a5,a2,.L18
	.loc 1 91 9 is_stmt 1
	.loc 1 91 16 is_stmt 0
	lw	a3,8(a5)
	.loc 1 91 34
	lw	a4,8(a0)
	.loc 1 91 12
	ble	a3,a4,.L17
	.loc 1 92 13 is_stmt 1
	.loc 1 92 29 is_stmt 0
	sub	a4,a3,a4
	sw	a4,8(a5)
	.loc 1 93 13 is_stmt 1
.LVL16:
	.loc 1 94 13
.L18:
	.loc 1 101 5
.LBB44:
.LBB45:
	.file 2 ".\\components\\net\\lib\\rtsp\\src\\list.h"
	.loc 2 97 2
	lw	a4,4(a5)
.LVL17:
.LBB46:
.LBB47:
	.loc 2 68 2
.LBE47:
.LBE46:
.LBE45:
.LBE44:
	.loc 1 103 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
.LBB51:
.LBB50:
.LBB49:
.LBB48:
	.loc 2 68 13
	sw	a0,4(a5)
	.loc 2 69 2 is_stmt 1
	.loc 2 69 12 is_stmt 0
	sw	a5,0(a0)
.LVL18:
	.loc 2 70 2 is_stmt 1
	.loc 2 70 12 is_stmt 0
	sw	a4,4(a0)
	.loc 2 71 2 is_stmt 1
	.loc 2 71 13 is_stmt 0
	sw	a0,0(a4)
.LVL19:
.LBE48:
.LBE49:
.LBE50:
.LBE51:
	.loc 1 102 5 is_stmt 1
	.loc 1 103 1 is_stmt 0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL20:
	jr	ra
.LVL21:
.L17:
	.cfi_restore_state
	.loc 1 96 13 is_stmt 1 discriminator 2
	.loc 1 96 29 is_stmt 0 discriminator 2
	sub	a4,a4,a3
.LBB52:
	.loc 1 90 107 discriminator 2
	lw	a5,0(a5)
.LVL22:
.LBE52:
	.loc 1 96 29 discriminator 2
	sw	a4,8(a0)
	.loc 1 90 56 is_stmt 1 discriminator 2
.LBB53:
	.loc 1 90 65 discriminator 2
.LVL23:
	.loc 1 90 135 discriminator 2
	j	.L16
.LBE53:
	.cfi_endproc
.LFE42:
	.size	add_delay_task, .-add_delay_task
	.section	.text.del_delay_task,"ax",@progbits
	.align	1
	.type	del_delay_task, @function
del_delay_task:
.LFB43:
	.loc 1 106 1
	.cfi_startproc
.LVL24:
	.loc 1 107 5
	.loc 1 109 5
.LBB65:
.LBB66:
	.loc 2 204 2
	.loc 2 204 13 is_stmt 0
	lui	a4,%hi(rtsp_srv)
	addi	a4,a4,%lo(rtsp_srv)
	lw	a2,36(a4)
.LVL25:
.LBE66:
.LBE65:
	.loc 1 109 8
	lui	a3,%hi(rtsp_srv+36)
	addi	a3,a3,%lo(rtsp_srv+36)
.LBB67:
	.loc 1 111 70
	lw	a5,0(a0)
.LBE67:
	.loc 1 109 8
	beq	a2,a3,.L22
.LVL26:
.LBB68:
.LBB69:
	.loc 2 246 2 is_stmt 1
.LBE69:
.LBE68:
	.loc 2 204 2
.LBB71:
.LBB70:
	.loc 2 246 27 is_stmt 0
	lw	a4,40(a4)
	beq	a2,a4,.L22
.LVL27:
.LBE70:
.LBE71:
	.loc 1 111 9 is_stmt 1
.LBB72:
	.loc 1 111 23
	.loc 1 111 98
.LBE72:
	.loc 1 112 9
	.loc 1 112 30 is_stmt 0
	lw	a4,8(a5)
	lw	a3,8(a0)
	add	a4,a4,a3
	sw	a4,8(a5)
.LVL28:
.L22:
	.loc 1 115 5 is_stmt 1
.LBB73:
.LBB74:
	.loc 2 126 2
	lw	a4,4(a0)
.LVL29:
.LBB75:
.LBB76:
	.loc 2 109 2
	.loc 2 109 13 is_stmt 0
	sw	a4,4(a5)
	.loc 2 110 2 is_stmt 1
	.loc 2 110 13 is_stmt 0
	sw	a5,0(a4)
.LVL30:
.LBE76:
.LBE75:
	.loc 2 127 2 is_stmt 1
	.loc 2 127 14 is_stmt 0
	li	a5,1048576
	addi	a5,a5,256
	sw	a5,0(a0)
	.loc 2 128 2 is_stmt 1
	.loc 2 128 14 is_stmt 0
	li	a5,2097152
	addi	a5,a5,512
	sw	a5,4(a0)
.LVL31:
.LBE74:
.LBE73:
	.loc 1 117 5 is_stmt 1
	.loc 1 118 1 is_stmt 0
	ret
	.cfi_endproc
.LFE43:
	.size	del_delay_task, .-del_delay_task
	.section	.text.get_min_delay_time,"ax",@progbits
	.align	1
	.globl	get_min_delay_time
	.type	get_min_delay_time, @function
get_min_delay_time:
.LFB41:
	.loc 1 69 1 is_stmt 1
	.cfi_startproc
	.loc 1 70 5
.LVL32:
	.loc 1 72 5
.LBB77:
.LBB78:
	.loc 2 204 2
.LBE78:
.LBE77:
	.loc 1 69 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
.LBB81:
.LBB79:
	.loc 2 204 13
	lui	a5,%hi(rtsp_srv+36)
.LBE79:
.LBE81:
	.loc 1 69 1
	sw	s0,8(sp)
	.cfi_offset 8, -8
.LBB82:
.LBB80:
	.loc 2 204 13
	lw	s0,%lo(rtsp_srv+36)(a5)
.LVL33:
.LBE80:
.LBE82:
	.loc 1 69 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 72 8
	addi	a5,a5,%lo(rtsp_srv+36)
	li	a0,-1
	beq	s0,a5,.L23
	.loc 1 73 9 is_stmt 1
	.loc 1 73 18
.LVL34:
	.loc 1 73 112
	.loc 1 74 9
	call	sync_delay_time
.LVL35:
	.loc 1 75 9
	.loc 1 75 19 is_stmt 0
	lw	a0,8(s0)
.LVL36:
.L23:
	.loc 1 78 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE41:
	.size	get_min_delay_time, .-get_min_delay_time
	.section	.rodata.create_delay_task.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"<3>Allocate memory for struct delay_task failed!\n"
	.section	.text.create_delay_task,"ax",@progbits
	.align	1
	.globl	create_delay_task
	.type	create_delay_task, @function
create_delay_task:
.LFB44:
	.loc 1 121 1 is_stmt 1
	.cfi_startproc
.LVL37:
	.loc 1 122 5
	.loc 1 124 5
.LBB83:
	.loc 1 124 14
.LBE83:
	.loc 1 121 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s2,16(sp)
	.cfi_offset 18, -16
	mv	s2,a0
.LBB84:
	.loc 1 124 26
	li	a0,20
.LVL38:
.LBE84:
	.loc 1 121 1
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s3,12(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.loc 1 121 1
	mv	s3,a1
	mv	s1,a2
.LBB85:
	.loc 1 124 26
	call	malloc
.LVL39:
	mv	s0,a0
.LVL40:
	.loc 1 124 48 is_stmt 1
	.loc 1 124 51 is_stmt 0
	beq	a0,zero,.L29
	.loc 1 124 59 is_stmt 1 discriminator 1
	li	a2,20
	li	a1,0
	call	memset
.LVL41:
	.loc 1 124 91 discriminator 1
.LBE85:
	.loc 1 125 5 discriminator 1
	.loc 1 129 5 discriminator 1
	.loc 1 134 5 is_stmt 0 discriminator 1
	mv	a0,s0
	.loc 1 129 14 discriminator 1
	sw	s3,12(s0)
	.loc 1 130 5 is_stmt 1 discriminator 1
	.loc 1 130 15 is_stmt 0 discriminator 1
	sw	s2,16(s0)
	.loc 1 131 5 is_stmt 1 discriminator 1
	.loc 1 131 21 is_stmt 0 discriminator 1
	sw	s1,8(s0)
	.loc 1 134 5 is_stmt 1 discriminator 1
	call	add_delay_task
.LVL42:
	.loc 1 136 5 discriminator 1
.L28:
	.loc 1 137 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,s0
	lw	s0,24(sp)
	.cfi_restore 8
.LVL43:
	lw	s1,20(sp)
	.cfi_restore 9
.LVL44:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL45:
	lw	s3,12(sp)
	.cfi_restore 19
.LVL46:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL47:
.L29:
	.cfi_restore_state
.LBB86:
	.loc 1 124 91 is_stmt 1
.LBE86:
	.loc 1 125 5
	.loc 1 126 9
	lui	a0,%hi(.LC0)
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL48:
	.loc 1 127 9
	.loc 1 127 15 is_stmt 0
	j	.L28
	.cfi_endproc
.LFE44:
	.size	create_delay_task, .-create_delay_task
	.section	.text.destroy_delay_task,"ax",@progbits
	.align	1
	.globl	destroy_delay_task
	.type	destroy_delay_task, @function
destroy_delay_task:
.LFB45:
	.loc 1 140 1 is_stmt 1
	.cfi_startproc
.LVL49:
	.loc 1 141 5
	.loc 1 144 5
.LBB93:
	.loc 1 144 19
.LBE93:
	.loc 1 140 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
.LBB94:
	.loc 1 144 61
	lui	a5,%hi(rtsp_srv+36)
.LBE94:
	.loc 1 140 1
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
.LBB95:
	.loc 1 144 61
	lw	s0,%lo(rtsp_srv+36)(a5)
.LVL50:
	.loc 1 144 108 is_stmt 1
.LBE95:
	.loc 1 144 5 is_stmt 0
	addi	a5,a5,%lo(rtsp_srv+36)
.LVL51:
.L33:
	.loc 1 144 11 is_stmt 1 discriminator 1
	.loc 1 144 5 is_stmt 0 discriminator 1
	bne	s0,a5,.L37
.LVL52:
.L32:
	.loc 1 152 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL53:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL54:
.L37:
	.cfi_restore_state
	.loc 1 145 9 is_stmt 1
	.loc 1 145 12 is_stmt 0
	bne	s0,a0,.L34
.LVL55:
.LBB96:
.LBB97:
	.loc 1 146 13 is_stmt 1
	mv	a0,s0
.LVL56:
	call	del_delay_task
.LVL57:
	.loc 1 147 13
	.loc 1 147 19 is_stmt 0
	beq	s0,zero,.L32
	.loc 1 147 27 is_stmt 1
	mv	a0,s0
.LBE97:
.LBE96:
	.loc 1 152 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL58:
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
.LBB99:
.LBB98:
	.loc 1 147 27
	tail	free
.LVL59:
.L34:
	.cfi_restore_state
.LBE98:
.LBE99:
	.loc 1 144 56 is_stmt 1 discriminator 2
.LBB100:
	.loc 1 144 65 discriminator 2
	.loc 1 144 107 is_stmt 0 discriminator 2
	lw	s0,0(s0)
.LVL60:
	.loc 1 144 135 is_stmt 1 discriminator 2
	j	.L33
.LBE100:
	.cfi_endproc
.LFE45:
	.size	destroy_delay_task, .-destroy_delay_task
	.section	.text.update_delay_time,"ax",@progbits
	.align	1
	.globl	update_delay_time
	.type	update_delay_time, @function
update_delay_time:
.LFB46:
	.loc 1 155 1
	.cfi_startproc
.LVL61:
	.loc 1 156 5
	.loc 1 155 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 155 1
	sw	a0,12(sp)
	sw	a1,8(sp)
	.loc 1 156 5
	call	del_delay_task
.LVL62:
	.loc 1 157 5 is_stmt 1
	.loc 1 157 21 is_stmt 0
	lw	a1,8(sp)
	lw	a0,12(sp)
	.loc 1 160 1
	lw	ra,28(sp)
	.cfi_restore 1
	.loc 1 157 21
	sw	a1,8(a0)
	.loc 1 158 5 is_stmt 1
	.loc 1 160 1 is_stmt 0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL63:
	.loc 1 158 5
	tail	add_delay_task
.LVL64:
	.cfi_endproc
.LFE46:
	.size	update_delay_time, .-update_delay_time
	.section	.text.do_delay_task,"ax",@progbits
	.align	1
	.globl	do_delay_task
	.type	do_delay_task, @function
do_delay_task:
.LFB47:
	.loc 1 163 1 is_stmt 1
	.cfi_startproc
	.loc 1 164 5
.LVL65:
	.loc 1 165 5
	.loc 1 168 5
.LBB101:
.LBB102:
	.loc 2 204 2
.LBE102:
.LBE101:
	.loc 1 163 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
.LBB105:
.LBB103:
	.loc 2 204 13
	lui	a5,%hi(rtsp_srv+36)
.LBE103:
.LBE105:
	.loc 1 163 1
	sw	s0,8(sp)
	.cfi_offset 8, -8
.LBB106:
.LBB104:
	.loc 2 204 13
	lw	s0,%lo(rtsp_srv+36)(a5)
.LVL66:
.LBE104:
.LBE106:
	.loc 1 163 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 168 8
	addi	a5,a5,%lo(rtsp_srv+36)
	beq	s0,a5,.L42
	.loc 1 169 9 is_stmt 1
	.loc 1 169 18
.LVL67:
	.loc 1 169 112
	.loc 1 171 9
	.loc 1 171 12 is_stmt 0
	lw	a5,8(s0)
	bne	a5,zero,.L45
.L48:
	.loc 1 183 13 is_stmt 1
	.loc 1 183 26 is_stmt 0
	lw	a5,16(s0)
	lw	a0,12(s0)
	jalr	a5
.LVL68:
	mv	a1,a0
.LVL69:
	.loc 1 184 13 is_stmt 1
	.loc 1 184 16 is_stmt 0
	bge	a0,zero,.L46
	.loc 1 187 17 is_stmt 1
	mv	a0,s0
.LVL70:
	.loc 1 192 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL71:
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 187 17
	tail	destroy_delay_task
.LVL72:
.L45:
	.cfi_restore_state
	.loc 1 172 13 is_stmt 1
	call	sync_delay_time
.LVL73:
	.loc 1 175 9
	.loc 1 175 12 is_stmt 0
	lw	a5,8(s0)
	beq	a5,zero,.L48
.LVL74:
.L42:
	.loc 1 192 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL75:
.L46:
	.cfi_restore_state
	.loc 1 185 17 is_stmt 1
	mv	a0,s0
.LVL76:
	.loc 1 192 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
.LVL77:
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 185 17
	tail	update_delay_time
.LVL78:
	.cfi_endproc
.LFE47:
	.size	do_delay_task, .-do_delay_task
	.section	.text.destroy_sess_task,"ax",@progbits
	.align	1
	.globl	destroy_sess_task
	.type	destroy_sess_task, @function
destroy_sess_task:
.LFB48:
	.loc 1 199 1 is_stmt 1
	.cfi_startproc
.LVL79:
	.loc 1 200 5
	.loc 1 201 5
	.loc 1 203 5
.LBB107:
	.loc 1 203 19
.LBE107:
	.loc 1 199 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
.LBB108:
	.loc 1 203 61
	lui	a5,%hi(rtsp_srv+36)
.LBE108:
	.loc 1 199 1
	sw	s2,0(sp)
	.cfi_offset 18, -16
	mv	s2,a0
.LBB109:
	.loc 1 203 61
	lw	a0,%lo(rtsp_srv+36)(a5)
.LVL80:
	.loc 1 203 108 is_stmt 1
.LBE109:
.LBB110:
	.loc 1 203 20
.LBE110:
	.loc 1 199 1 is_stmt 0
	sw	s1,4(sp)
	sw	s0,8(sp)
	.cfi_offset 9, -12
	.cfi_offset 8, -8
.LBB111:
	.loc 1 203 62
	lw	s1,0(a0)
.LVL81:
	.loc 1 203 90 is_stmt 1
.LBE111:
	.loc 1 199 1 is_stmt 0
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 203 5
	addi	s0,a5,%lo(rtsp_srv+36)
.LVL82:
.L56:
	.loc 1 203 11 is_stmt 1 discriminator 1
	.loc 1 203 5 is_stmt 0 discriminator 1
	bne	a0,s0,.L58
	.loc 1 209 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
.LVL83:
	lw	s2,0(sp)
	.cfi_restore 18
.LVL84:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL85:
.L58:
	.cfi_restore_state
	.loc 1 204 9 is_stmt 1
	.loc 1 204 12 is_stmt 0
	lw	a5,12(a0)
	bne	a5,s2,.L57
	.loc 1 205 13 is_stmt 1
	call	destroy_delay_task
.LVL86:
.L57:
	.loc 1 203 56 discriminator 2
.LBB112:
	.loc 1 203 76 discriminator 2
	.loc 1 203 146 discriminator 2
	.loc 1 203 118 is_stmt 0 discriminator 2
	mv	a0,s1
.LBE112:
	.loc 1 203 71 discriminator 2
	lw	s1,0(s1)
.LVL87:
	j	.L56
	.cfi_endproc
.LFE48:
	.size	destroy_sess_task, .-destroy_sess_task
	.section	.text.init_delay_task_queue,"ax",@progbits
	.align	1
	.globl	init_delay_task_queue
	.type	init_delay_task_queue, @function
init_delay_task_queue:
.LFB49:
	.loc 1 212 1 is_stmt 1
	.cfi_startproc
	.loc 1 213 5
.LVL88:
.LBB113:
.LBB114:
	.loc 2 54 2
.LBE114:
.LBE113:
	.loc 1 212 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
.LBB117:
.LBB115:
	.loc 2 54 13
	lui	a5,%hi(rtsp_srv)
	lui	a4,%hi(rtsp_srv+36)
.LBE115:
.LBE117:
	.loc 1 212 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LBB118:
.LBB116:
	.loc 2 54 13
	addi	a5,a5,%lo(rtsp_srv)
	addi	a4,a4,%lo(rtsp_srv+36)
	sw	a4,36(a5)
	.loc 2 55 2 is_stmt 1
	.loc 2 55 13 is_stmt 0
	sw	a4,40(a5)
.LVL89:
.LBE116:
.LBE118:
	.loc 1 214 5 is_stmt 1
.LBB119:
.LBB120:
	.loc 1 25 5
	.loc 1 25 12 is_stmt 0
	call	xTaskGetTickCount
.LVL90:
	.loc 1 25 31
	li	a4,1000
	mul	a0,a0,a4
.LBE120:
.LBE119:
	.loc 1 214 20
	lui	a5,%hi(.LANCHOR0)
	.loc 1 216 1
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 214 20
	addi	a5,a5,%lo(.LANCHOR0)
.LBB122:
.LBB121:
	.loc 1 25 31
	sw	a0,0(a5)
	srai	a0,a0,31
	sw	a0,4(a5)
.LBE121:
.LBE122:
	.loc 1 215 5 is_stmt 1
	.loc 1 216 1 is_stmt 0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE49:
	.size	init_delay_task_queue, .-init_delay_task_queue
	.section	.text.deinit_delay_task_queue,"ax",@progbits
	.align	1
	.globl	deinit_delay_task_queue
	.type	deinit_delay_task_queue, @function
deinit_delay_task_queue:
.LFB50:
	.loc 1 219 1 is_stmt 1
	.cfi_startproc
	.loc 1 220 5
	.loc 1 221 1 is_stmt 0
	ret
	.cfi_endproc
.LFE50:
	.size	deinit_delay_task_queue, .-deinit_delay_task_queue
	.section	.bss.last_sync_time,"aw",@nobits
	.align	3
	.set	.LANCHOR0,. + 0
	.type	last_sync_time, @object
	.size	last_sync_time, 8
last_sync_time:
	.zero	8
	.text
.Letext0:
	.file 3 ".\\components\\net\\lib\\rtsp\\src\\rtsp_srv.h"
	.file 4 ".\\components\\net\\lib\\rtsp\\src\\delay_task.h"
	.file 5 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\stdlib.h"
	.file 6 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\string.h"
	.file 7 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x921
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF57
	.byte	0xc
	.4byte	.LASF58
	.4byte	.LASF59
	.4byte	.Ldebug_ranges0+0x1a8
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	.LASF12
	.byte	0x8
	.byte	0x2
	.byte	0x2b
	.byte	0x8
	.4byte	0x4d
	.byte	0x3
	.4byte	.LASF0
	.byte	0x2
	.byte	0x2c
	.byte	0x14
	.4byte	0x52
	.byte	0
	.byte	0x3
	.4byte	.LASF1
	.byte	0x2
	.byte	0x2c
	.byte	0x1b
	.4byte	0x52
	.byte	0x4
	.byte	0
	.byte	0x4
	.4byte	0x25
	.byte	0x5
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.byte	0x7
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x6
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.byte	0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0x6
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.byte	0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x6
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.byte	0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x6
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.byte	0x6
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x8
	.byte	0x4
	.byte	0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x2
	.4byte	.LASF13
	.byte	0x2c
	.byte	0x3
	.byte	0x3c
	.byte	0x8
	.4byte	0x12a
	.byte	0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x3d
	.byte	0xb
	.4byte	0x9e
	.byte	0
	.byte	0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x3e
	.byte	0x9
	.4byte	0x5f
	.byte	0x4
	.byte	0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x3f
	.byte	0x9
	.4byte	0x5f
	.byte	0x8
	.byte	0x3
	.4byte	.LASF17
	.byte	0x3
	.byte	0x40
	.byte	0x14
	.4byte	0x7b
	.byte	0xc
	.byte	0x3
	.4byte	.LASF18
	.byte	0x3
	.byte	0x41
	.byte	0x14
	.4byte	0x7b
	.byte	0xe
	.byte	0x3
	.4byte	.LASF19
	.byte	0x3
	.byte	0x42
	.byte	0xa
	.4byte	0xa0
	.byte	0x10
	.byte	0x3
	.4byte	.LASF20
	.byte	0x3
	.byte	0x43
	.byte	0x16
	.4byte	0x25
	.byte	0x14
	.byte	0x3
	.4byte	.LASF21
	.byte	0x3
	.byte	0x44
	.byte	0x16
	.4byte	0x25
	.byte	0x1c
	.byte	0x3
	.4byte	.LASF22
	.byte	0x3
	.byte	0x45
	.byte	0x16
	.4byte	0x25
	.byte	0x24
	.byte	0
	.byte	0x9
	.4byte	.LASF13
	.byte	0x3
	.byte	0x5b
	.byte	0x18
	.4byte	0xa7
	.byte	0xa
	.4byte	.LASF60
	.byte	0x4
	.byte	0x9
	.byte	0xf
	.4byte	0x142
	.byte	0x5
	.byte	0x4
	.4byte	0x148
	.byte	0xb
	.4byte	0x5f
	.4byte	0x157
	.byte	0xc
	.4byte	0x9e
	.byte	0
	.byte	0x2
	.4byte	.LASF23
	.byte	0x14
	.byte	0x4
	.byte	0xf
	.byte	0x8
	.4byte	0x199
	.byte	0x3
	.4byte	.LASF24
	.byte	0x4
	.byte	0x10
	.byte	0x16
	.4byte	0x25
	.byte	0
	.byte	0x3
	.4byte	.LASF25
	.byte	0x4
	.byte	0x11
	.byte	0x9
	.4byte	0x5f
	.byte	0x8
	.byte	0xd
	.string	"arg"
	.byte	0x4
	.byte	0x12
	.byte	0xb
	.4byte	0x9e
	.byte	0xc
	.byte	0x3
	.4byte	.LASF26
	.byte	0x4
	.byte	0x13
	.byte	0x17
	.4byte	0x136
	.byte	0x10
	.byte	0
	.byte	0xe
	.4byte	.LASF29
	.byte	0x1
	.byte	0xd
	.byte	0x1b
	.4byte	0x97
	.byte	0x5
	.byte	0x3
	.4byte	last_sync_time
	.byte	0xf
	.4byte	.LASF61
	.byte	0x1
	.byte	0xda
	.byte	0x6
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.byte	0x1
	.byte	0x9c
	.byte	0x10
	.4byte	.LASF27
	.byte	0x1
	.byte	0xd3
	.byte	0x6
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x1
	.byte	0x9c
	.4byte	0x20e
	.byte	0x11
	.4byte	0x836
	.4byte	.LBB113
	.4byte	.Ldebug_ranges0+0x170
	.byte	0x1
	.byte	0xd5
	.byte	0x5
	.4byte	0x1ed
	.byte	0x12
	.4byte	0x843
	.byte	0
	.byte	0x13
	.4byte	0x742
	.4byte	.LBB119
	.4byte	.Ldebug_ranges0+0x190
	.byte	0x1
	.byte	0xd6
	.byte	0x16
	.byte	0x14
	.4byte	.Ldebug_ranges0+0x190
	.byte	0x15
	.4byte	.LVL90
	.4byte	0x8e8
	.byte	0
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LASF28
	.byte	0x1
	.byte	0xc6
	.byte	0x6
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x1
	.byte	0x9c
	.4byte	0x2b0
	.byte	0x16
	.string	"arg"
	.byte	0x1
	.byte	0xc6
	.byte	0x1e
	.4byte	0x9e
	.4byte	.LLST33
	.byte	0x17
	.string	"dtp"
	.byte	0x1
	.byte	0xc8
	.byte	0x18
	.4byte	0x2b0
	.4byte	.LLST34
	.byte	0x17
	.string	"tmp"
	.byte	0x1
	.byte	0xc9
	.byte	0x18
	.4byte	0x2b0
	.4byte	.LLST35
	.byte	0x18
	.4byte	.Ldebug_ranges0+0x138
	.4byte	0x26e
	.byte	0x19
	.4byte	.LASF30
	.byte	0x1
	.byte	0xcb
	.byte	0x3d
	.4byte	0x2b6
	.4byte	.LLST36
	.byte	0
	.byte	0x18
	.4byte	.Ldebug_ranges0+0x158
	.4byte	0x288
	.byte	0x19
	.4byte	.LASF30
	.byte	0x1
	.byte	0xcb
	.byte	0x3e
	.4byte	0x2b6
	.4byte	.LLST37
	.byte	0
	.byte	0x1a
	.4byte	.LBB112
	.4byte	.LBE112-.LBB112
	.4byte	0x2a6
	.byte	0x19
	.4byte	.LASF30
	.byte	0x1
	.byte	0xcb
	.byte	0x76
	.4byte	0x2b6
	.4byte	.LLST38
	.byte	0
	.byte	0x15
	.4byte	.LVL86
	.4byte	0x397
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x157
	.byte	0x5
	.byte	0x4
	.4byte	0x4d
	.byte	0x1b
	.4byte	.LASF31
	.byte	0x1
	.byte	0xa2
	.byte	0x6
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x1
	.byte	0x9c
	.4byte	0x33a
	.byte	0x17
	.string	"dtp"
	.byte	0x1
	.byte	0xa4
	.byte	0x18
	.4byte	0x2b0
	.4byte	.LLST31
	.byte	0x19
	.4byte	.LASF32
	.byte	0x1
	.byte	0xa5
	.byte	0x9
	.4byte	0x5f
	.4byte	.LLST32
	.byte	0x1c
	.4byte	0x304
	.byte	0x1d
	.4byte	.LASF30
	.byte	0x1
	.byte	0xa9
	.byte	0x41
	.4byte	0x2b6
	.byte	0
	.byte	0x11
	.4byte	0x780
	.4byte	.LBB101
	.4byte	.Ldebug_ranges0+0x118
	.byte	0x1
	.byte	0xa8
	.byte	0xa
	.4byte	0x31e
	.byte	0x12
	.4byte	0x791
	.byte	0
	.byte	0x1e
	.4byte	.LVL72
	.4byte	0x397
	.byte	0x15
	.4byte	.LVL73
	.4byte	0x69f
	.byte	0x1e
	.4byte	.LVL78
	.4byte	0x33a
	.byte	0
	.byte	0x10
	.4byte	.LASF33
	.byte	0x1
	.byte	0x9a
	.byte	0x6
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x1
	.byte	0x9c
	.4byte	0x397
	.byte	0x16
	.string	"dtp"
	.byte	0x1
	.byte	0x9a
	.byte	0x2b
	.4byte	0x2b0
	.4byte	.LLST29
	.byte	0x1f
	.4byte	.LASF34
	.byte	0x1
	.byte	0x9a
	.byte	0x34
	.4byte	0x5f
	.4byte	.LLST30
	.byte	0x20
	.4byte	.LVL62
	.4byte	0x4a6
	.4byte	0x385
	.byte	0x21
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0
	.byte	0x22
	.4byte	.LVL64
	.4byte	0x566
	.byte	0x21
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x72
	.byte	0x6c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	.LASF62
	.byte	0x1
	.byte	0x8b
	.byte	0x6
	.byte	0x1
	.4byte	0x3dd
	.byte	0x24
	.string	"dtp"
	.byte	0x1
	.byte	0x8b
	.byte	0x2c
	.4byte	0x2b0
	.byte	0x25
	.string	"tmp"
	.byte	0x1
	.byte	0x8d
	.byte	0x18
	.4byte	0x2b0
	.byte	0x1c
	.4byte	0x3ce
	.byte	0x1d
	.4byte	.LASF30
	.byte	0x1
	.byte	0x90
	.byte	0x3d
	.4byte	0x2b6
	.byte	0
	.byte	0x26
	.byte	0x1d
	.4byte	.LASF30
	.byte	0x1
	.byte	0x90
	.byte	0x6b
	.4byte	0x2b6
	.byte	0
	.byte	0
	.byte	0x27
	.4byte	.LASF38
	.byte	0x1
	.byte	0x78
	.byte	0x14
	.4byte	0x2b0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x1
	.byte	0x9c
	.4byte	0x4a6
	.byte	0x1f
	.4byte	.LASF26
	.byte	0x1
	.byte	0x78
	.byte	0x38
	.4byte	0x136
	.4byte	.LLST20
	.byte	0x16
	.string	"arg"
	.byte	0x1
	.byte	0x78
	.byte	0x44
	.4byte	0x9e
	.4byte	.LLST21
	.byte	0x1f
	.4byte	.LASF34
	.byte	0x1
	.byte	0x78
	.byte	0x4d
	.4byte	0x5f
	.4byte	.LLST22
	.byte	0x17
	.string	"dtp"
	.byte	0x1
	.byte	0x7a
	.byte	0x18
	.4byte	0x2b0
	.4byte	.LLST23
	.byte	0x18
	.4byte	.Ldebug_ranges0+0xb8
	.4byte	0x47e
	.byte	0x17
	.string	"ptr"
	.byte	0x1
	.byte	0x7c
	.byte	0x14
	.4byte	0x9e
	.4byte	.LLST24
	.byte	0x20
	.4byte	.LVL39
	.4byte	0x8f4
	.4byte	0x463
	.byte	0x21
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0x28
	.4byte	.LVL41
	.4byte	0x900
	.byte	0x21
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x21
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x21
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0
	.byte	0x20
	.4byte	.LVL42
	.4byte	0x566
	.4byte	0x492
	.byte	0x21
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	.LVL48
	.4byte	0x90c
	.byte	0x21
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.LASF36
	.byte	0x1
	.byte	0x69
	.byte	0xd
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x1
	.byte	0x9c
	.4byte	0x566
	.byte	0x2a
	.string	"dtp"
	.byte	0x1
	.byte	0x69
	.byte	0x2f
	.4byte	0x2b0
	.byte	0x1
	.byte	0x5a
	.byte	0x19
	.4byte	.LASF35
	.byte	0x1
	.byte	0x6b
	.byte	0x18
	.4byte	0x2b0
	.4byte	.LLST14
	.byte	0x18
	.4byte	.Ldebug_ranges0+0x68
	.4byte	0x4f4
	.byte	0x19
	.4byte	.LASF30
	.byte	0x1
	.byte	0x6f
	.byte	0x46
	.4byte	0x2b6
	.4byte	.LLST15
	.byte	0
	.byte	0x2b
	.4byte	0x780
	.4byte	.LBB65
	.4byte	.LBE65-.LBB65
	.byte	0x1
	.byte	0x6d
	.byte	0xa
	.4byte	0x50e
	.byte	0x12
	.4byte	0x791
	.byte	0
	.byte	0x11
	.4byte	0x762
	.4byte	.LBB68
	.4byte	.Ldebug_ranges0+0x80
	.byte	0x1
	.byte	0x6e
	.byte	0xa
	.4byte	0x528
	.byte	0x12
	.4byte	0x773
	.byte	0
	.byte	0x2c
	.4byte	0x79e
	.4byte	.LBB73
	.4byte	.LBE73-.LBB73
	.byte	0x1
	.byte	0x73
	.byte	0x5
	.byte	0x2d
	.4byte	0x7ab
	.4byte	.LLST16
	.byte	0x2c
	.4byte	0x7b8
	.4byte	.LBB75
	.4byte	.LBE75-.LBB75
	.byte	0x2
	.byte	0x7e
	.byte	0x2
	.byte	0x2d
	.4byte	0x7d1
	.4byte	.LLST17
	.byte	0x2d
	.4byte	0x7c5
	.4byte	.LLST18
	.byte	0
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.LASF37
	.byte	0x1
	.byte	0x50
	.byte	0xd
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x1
	.byte	0x9c
	.4byte	0x63f
	.byte	0x16
	.string	"dtp"
	.byte	0x1
	.byte	0x50
	.byte	0x2f
	.4byte	0x2b0
	.4byte	.LLST5
	.byte	0x17
	.string	"pos"
	.byte	0x1
	.byte	0x52
	.byte	0x17
	.4byte	0x52
	.4byte	.LLST6
	.byte	0x17
	.string	"tmp"
	.byte	0x1
	.byte	0x53
	.byte	0x18
	.4byte	0x2b0
	.4byte	.LLST7
	.byte	0x1a
	.4byte	.LBB43
	.4byte	.LBE43-.LBB43
	.4byte	0x5ca
	.byte	0x19
	.4byte	.LASF30
	.byte	0x1
	.byte	0x5a
	.byte	0x3d
	.4byte	0x2b6
	.4byte	.LLST8
	.byte	0
	.byte	0x18
	.4byte	.Ldebug_ranges0+0x50
	.4byte	0x5e2
	.byte	0xe
	.4byte	.LASF30
	.byte	0x1
	.byte	0x5a
	.byte	0x6b
	.4byte	0x2b6
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0x11
	.4byte	0x7de
	.4byte	.LBB44
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.4byte	0x635
	.byte	0x2d
	.4byte	0x7f7
	.4byte	.LLST9
	.byte	0x2d
	.4byte	0x7eb
	.4byte	.LLST10
	.byte	0x13
	.4byte	0x804
	.4byte	.LBB46
	.4byte	.Ldebug_ranges0+0x38
	.byte	0x2
	.byte	0x61
	.byte	0x2
	.byte	0x2d
	.4byte	0x829
	.4byte	.LLST11
	.byte	0x2d
	.4byte	0x81d
	.4byte	.LLST12
	.byte	0x2d
	.4byte	0x811
	.4byte	.LLST13
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL13
	.4byte	0x69f
	.byte	0
	.byte	0x27
	.4byte	.LASF39
	.byte	0x1
	.byte	0x44
	.byte	0x5
	.4byte	0x5f
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x1
	.byte	0x9c
	.4byte	0x69f
	.byte	0x17
	.string	"dtp"
	.byte	0x1
	.byte	0x46
	.byte	0x18
	.4byte	0x2b0
	.4byte	.LLST19
	.byte	0x1c
	.4byte	0x67b
	.byte	0x1d
	.4byte	.LASF30
	.byte	0x1
	.byte	0x49
	.byte	0x41
	.4byte	0x2b6
	.byte	0
	.byte	0x11
	.4byte	0x780
	.4byte	.LBB77
	.4byte	.Ldebug_ranges0+0x98
	.byte	0x1
	.byte	0x48
	.byte	0xa
	.4byte	0x695
	.byte	0x12
	.4byte	0x791
	.byte	0
	.byte	0x15
	.4byte	.LVL35
	.4byte	0x69f
	.byte	0
	.byte	0x29
	.4byte	.LASF40
	.byte	0x1
	.byte	0x21
	.byte	0xd
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x1
	.byte	0x9c
	.4byte	0x742
	.byte	0x19
	.4byte	.LASF41
	.byte	0x1
	.byte	0x23
	.byte	0x9
	.4byte	0x5f
	.4byte	.LLST0
	.byte	0x17
	.string	"now"
	.byte	0x1
	.byte	0x24
	.byte	0x18
	.4byte	0x97
	.4byte	.LLST1
	.byte	0x17
	.string	"dtp"
	.byte	0x1
	.byte	0x25
	.byte	0x18
	.4byte	0x2b0
	.4byte	.LLST2
	.byte	0x1a
	.4byte	.LBB41
	.4byte	.LBE41-.LBB41
	.4byte	0x703
	.byte	0x19
	.4byte	.LASF30
	.byte	0x1
	.byte	0x30
	.byte	0x3d
	.4byte	0x2b6
	.4byte	.LLST3
	.byte	0
	.byte	0x1a
	.4byte	.LBB42
	.4byte	.LBE42-.LBB42
	.4byte	0x721
	.byte	0x19
	.4byte	.LASF30
	.byte	0x1
	.byte	0x30
	.byte	0x6b
	.4byte	0x2b6
	.4byte	.LLST4
	.byte	0
	.byte	0x13
	.4byte	0x742
	.4byte	.LBB35
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x28
	.byte	0xb
	.byte	0x14
	.4byte	.Ldebug_ranges0+0
	.byte	0x15
	.4byte	.LVL1
	.4byte	0x8e8
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2e
	.4byte	.LASF42
	.byte	0x1
	.byte	0x10
	.byte	0x1b
	.4byte	0x97
	.byte	0x1
	.4byte	0x762
	.byte	0x2f
	.4byte	.LASF52
	.byte	0x1
	.byte	0x19
	.byte	0xc
	.4byte	0x5f
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x2e
	.4byte	.LASF43
	.byte	0x2
	.byte	0xf4
	.byte	0x13
	.4byte	0x5f
	.byte	0x3
	.4byte	0x780
	.byte	0x31
	.4byte	.LASF44
	.byte	0x2
	.byte	0xf4
	.byte	0x3c
	.4byte	0x2b6
	.byte	0
	.byte	0x2e
	.4byte	.LASF45
	.byte	0x2
	.byte	0xca
	.byte	0x13
	.4byte	0x5f
	.byte	0x3
	.4byte	0x79e
	.byte	0x31
	.4byte	.LASF44
	.byte	0x2
	.byte	0xca
	.byte	0x36
	.4byte	0x2b6
	.byte	0
	.byte	0x32
	.4byte	.LASF46
	.byte	0x2
	.byte	0x7c
	.byte	0x14
	.byte	0x3
	.4byte	0x7b8
	.byte	0x31
	.4byte	.LASF24
	.byte	0x2
	.byte	0x7c
	.byte	0x2f
	.4byte	0x52
	.byte	0
	.byte	0x32
	.4byte	.LASF47
	.byte	0x2
	.byte	0x6b
	.byte	0x14
	.byte	0x3
	.4byte	0x7de
	.byte	0x31
	.4byte	.LASF1
	.byte	0x2
	.byte	0x6b
	.byte	0x32
	.4byte	0x52
	.byte	0x31
	.4byte	.LASF0
	.byte	0x2
	.byte	0x6b
	.byte	0x4b
	.4byte	0x52
	.byte	0
	.byte	0x32
	.4byte	.LASF48
	.byte	0x2
	.byte	0x5f
	.byte	0x14
	.byte	0x3
	.4byte	0x804
	.byte	0x24
	.string	"new"
	.byte	0x2
	.byte	0x5f
	.byte	0x34
	.4byte	0x52
	.byte	0x31
	.4byte	.LASF44
	.byte	0x2
	.byte	0x5f
	.byte	0x4b
	.4byte	0x52
	.byte	0
	.byte	0x32
	.4byte	.LASF49
	.byte	0x2
	.byte	0x40
	.byte	0x14
	.byte	0x3
	.4byte	0x836
	.byte	0x24
	.string	"new"
	.byte	0x2
	.byte	0x40
	.byte	0x31
	.4byte	0x52
	.byte	0x31
	.4byte	.LASF1
	.byte	0x2
	.byte	0x41
	.byte	0x1c
	.4byte	0x52
	.byte	0x31
	.4byte	.LASF0
	.byte	0x2
	.byte	0x42
	.byte	0x1c
	.4byte	0x52
	.byte	0
	.byte	0x32
	.4byte	.LASF50
	.byte	0x2
	.byte	0x34
	.byte	0x14
	.byte	0x3
	.4byte	0x850
	.byte	0x31
	.4byte	.LASF51
	.byte	0x2
	.byte	0x34
	.byte	0x35
	.4byte	0x52
	.byte	0
	.byte	0x33
	.4byte	0x397
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x1
	.byte	0x9c
	.4byte	0x8e8
	.byte	0x2d
	.4byte	0x3a4
	.4byte	.LLST25
	.byte	0x34
	.4byte	0x3b0
	.4byte	.LLST26
	.byte	0x35
	.4byte	0x3bc
	.4byte	.Ldebug_ranges0+0xe0
	.4byte	0x88c
	.byte	0x34
	.4byte	0x3c1
	.4byte	.LLST27
	.byte	0
	.byte	0x11
	.4byte	0x397
	.4byte	.LBB96
	.4byte	.Ldebug_ranges0+0x100
	.byte	0x1
	.byte	0x8b
	.byte	0x6
	.4byte	0x8d2
	.byte	0x2d
	.4byte	0x3a4
	.4byte	.LLST28
	.byte	0x14
	.4byte	.Ldebug_ranges0+0x100
	.byte	0x36
	.4byte	0x3b0
	.byte	0x20
	.4byte	.LVL57
	.4byte	0x4a6
	.4byte	0x8c7
	.byte	0x21
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LVL59
	.4byte	0x918
	.byte	0
	.byte	0
	.byte	0x37
	.4byte	0x3ce
	.4byte	.LBB100
	.4byte	.LBE100-.LBB100
	.byte	0x38
	.4byte	0x3cf
	.byte	0x1
	.byte	0x58
	.byte	0
	.byte	0
	.byte	0x39
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0x1
	.byte	0x19
	.byte	0xc
	.byte	0x39
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0x5
	.byte	0x6c
	.byte	0x7
	.byte	0x39
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x6
	.byte	0x21
	.byte	0x8
	.byte	0x39
	.4byte	.LASF55
	.4byte	.LASF55
	.byte	0x7
	.byte	0xc8
	.byte	0x5
	.byte	0x39
	.4byte	.LASF56
	.4byte	.LASF56
	.byte	0x5
	.byte	0x5e
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
	.byte	0x3
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
	.byte	0x4
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0x7
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
	.byte	0x8
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0xa
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
	.byte	0xb
	.byte	0x15
	.byte	0x1
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
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
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
	.byte	0x14
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1a
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
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x96,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0xb
	.byte	0x1
	.byte	0x1
	.byte	0x13
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
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
	.byte	0x20
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
	.byte	0x21
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x22
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
	.byte	0x24
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
	.byte	0x25
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
	.byte	0x26
	.byte	0xb
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x27
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
	.byte	0x28
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x29
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
	.byte	0x2a
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
	.byte	0x2b
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
	.byte	0x2c
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
	.byte	0x2d
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2e
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
	.byte	0x2f
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
	.byte	0x49
	.byte	0x13
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x30
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0x31
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
	.byte	0x32
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
	.byte	0x33
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
	.byte	0x34
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x35
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
	.byte	0x36
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x37
	.byte	0xb
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x38
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x39
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
.LLST33:
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL80
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LFE48
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL86-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL87
	.4byte	.LFE48
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL79
	.4byte	.LVL81
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x2
	.byte	0x79
	.byte	0
	.4byte	.LVL87
	.4byte	.LFE48
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x2
	.byte	0x79
	.byte	0
	.4byte	.LVL87
	.4byte	.LFE48
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL65
	.4byte	.LVL67
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL71
	.4byte	.LVL72-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL77
	.4byte	.LVL78-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL65
	.4byte	.LVL69
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL70
	.4byte	.LVL72-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL72
	.4byte	.LVL75
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL76
	.4byte	.LVL78-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL61
	.4byte	.LVL62-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL62-1
	.4byte	.LVL63
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL63
	.4byte	.LFE46
	.2byte	0x2
	.byte	0x72
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL61
	.4byte	.LVL62-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL62-1
	.4byte	.LVL63
	.2byte	0x2
	.byte	0x91
	.byte	0x68
	.4byte	.LVL63
	.4byte	.LFE46
	.2byte	0x2
	.byte	0x72
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL38
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LFE44
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL37
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL39-1
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LFE44
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL37
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL39-1
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL44
	.4byte	.LVL47
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LFE44
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL37
	.4byte	.LVL41
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL47
	.4byte	.LFE44
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL40
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL43
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL47
	.4byte	.LFE44
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL24
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x7a
	.byte	0
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13-1
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x2
	.byte	0x72
	.byte	0x6c
	.4byte	.LVL21
	.4byte	.LFE42
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL23
	.4byte	.LFE42
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL15
	.4byte	.LVL18
	.2byte	0x2
	.byte	0x7c
	.byte	0
	.4byte	.LVL21
	.4byte	.LFE42
	.2byte	0x2
	.byte	0x7c
	.byte	0
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0xa
	.byte	0x9e
	.byte	0x8
	.8byte	0
	.4byte	.LVL2
	.4byte	.LFE40
	.2byte	0x6
	.byte	0x5e
	.byte	0x93
	.byte	0x4
	.byte	0x5f
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LFE40
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL7
	.4byte	.LFE40
	.2byte	0x2
	.byte	0x80
	.byte	0
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL49
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL56
	.4byte	.LVL59
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LFE45
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL54
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL58
	.4byte	.LVL59-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL59
	.4byte	.LFE45
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.4byte	.LVL54
	.4byte	.LVL57-1
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.4byte	.LVL59
	.4byte	.LFE45
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL55
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL58
	.4byte	.LVL59-1
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB35
	.4byte	.LBE35
	.4byte	.LBB39
	.4byte	.LBE39
	.4byte	.LBB40
	.4byte	.LBE40
	.4byte	0
	.4byte	0
	.4byte	.LBB44
	.4byte	.LBE44
	.4byte	.LBB51
	.4byte	.LBE51
	.4byte	0
	.4byte	0
	.4byte	.LBB46
	.4byte	.LBE46
	.4byte	.LBB49
	.4byte	.LBE49
	.4byte	0
	.4byte	0
	.4byte	.LBB52
	.4byte	.LBE52
	.4byte	.LBB53
	.4byte	.LBE53
	.4byte	0
	.4byte	0
	.4byte	.LBB67
	.4byte	.LBE67
	.4byte	.LBB72
	.4byte	.LBE72
	.4byte	0
	.4byte	0
	.4byte	.LBB68
	.4byte	.LBE68
	.4byte	.LBB71
	.4byte	.LBE71
	.4byte	0
	.4byte	0
	.4byte	.LBB77
	.4byte	.LBE77
	.4byte	.LBB81
	.4byte	.LBE81
	.4byte	.LBB82
	.4byte	.LBE82
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
	.4byte	.LBB93
	.4byte	.LBE93
	.4byte	.LBB94
	.4byte	.LBE94
	.4byte	.LBB95
	.4byte	.LBE95
	.4byte	0
	.4byte	0
	.4byte	.LBB96
	.4byte	.LBE96
	.4byte	.LBB99
	.4byte	.LBE99
	.4byte	0
	.4byte	0
	.4byte	.LBB101
	.4byte	.LBE101
	.4byte	.LBB105
	.4byte	.LBE105
	.4byte	.LBB106
	.4byte	.LBE106
	.4byte	0
	.4byte	0
	.4byte	.LBB107
	.4byte	.LBE107
	.4byte	.LBB108
	.4byte	.LBE108
	.4byte	.LBB109
	.4byte	.LBE109
	.4byte	0
	.4byte	0
	.4byte	.LBB110
	.4byte	.LBE110
	.4byte	.LBB111
	.4byte	.LBE111
	.4byte	0
	.4byte	0
	.4byte	.LBB113
	.4byte	.LBE113
	.4byte	.LBB117
	.4byte	.LBE117
	.4byte	.LBB118
	.4byte	.LBE118
	.4byte	0
	.4byte	0
	.4byte	.LBB119
	.4byte	.LBE119
	.4byte	.LBB122
	.4byte	.LBE122
	.4byte	0
	.4byte	0
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF12:
	.string	"list_head"
.LASF29:
	.string	"last_sync_time"
.LASF16:
	.string	"http_lsn_sd"
.LASF5:
	.string	"short int"
.LASF35:
	.string	"next_dtp"
.LASF53:
	.string	"malloc"
.LASF60:
	.string	"delay_task_proc_t"
.LASF25:
	.string	"delta_time"
.LASF41:
	.string	"elapsed"
.LASF38:
	.string	"create_delay_task"
.LASF58:
	.string	".\\components\\net\\lib\\rtsp\\src\\delay_task.c"
.LASF23:
	.string	"delay_task"
.LASF44:
	.string	"head"
.LASF34:
	.string	"delay"
.LASF49:
	.string	"__list_add"
.LASF56:
	.string	"free"
.LASF9:
	.string	"long long int"
.LASF45:
	.string	"list_empty"
.LASF54:
	.string	"memset"
.LASF47:
	.string	"__list_del"
.LASF37:
	.string	"add_delay_task"
.LASF55:
	.string	"printf"
.LASF33:
	.string	"update_delay_time"
.LASF39:
	.string	"get_min_delay_time"
.LASF52:
	.string	"xTaskGetTickCount"
.LASF14:
	.string	"rtsp_srv_tid"
.LASF48:
	.string	"list_add_tail"
.LASF24:
	.string	"entry"
.LASF20:
	.string	"rtsp_sess_list"
.LASF36:
	.string	"del_delay_task"
.LASF40:
	.string	"sync_delay_time"
.LASF4:
	.string	"unsigned char"
.LASF3:
	.string	"signed char"
.LASF26:
	.string	"proc"
.LASF10:
	.string	"long long unsigned int"
.LASF43:
	.string	"list_is_singular"
.LASF2:
	.string	"unsigned int"
.LASF15:
	.string	"rtsp_lsn_sd"
.LASF19:
	.string	"thrd_running"
.LASF27:
	.string	"init_delay_task_queue"
.LASF6:
	.string	"short unsigned int"
.LASF62:
	.string	"destroy_delay_task"
.LASF11:
	.string	"char"
.LASF7:
	.string	"long int"
.LASF51:
	.string	"list"
.LASF42:
	.string	"time_now"
.LASF32:
	.string	"next_delay"
.LASF30:
	.string	"__mptr"
.LASF17:
	.string	"rtsp_port"
.LASF57:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF8:
	.string	"long unsigned int"
.LASF18:
	.string	"http_port"
.LASF21:
	.string	"sd_handler_list"
.LASF22:
	.string	"delay_task_queue"
.LASF59:
	.string	"C:\\\\Users\\\\cwier\\\\documents\\\\github\\\\qcom\\\\examples\\\\solutions\\\\rtsp_softap_cam\\\\build"
.LASF31:
	.string	"do_delay_task"
.LASF1:
	.string	"prev"
.LASF61:
	.string	"deinit_delay_task_queue"
.LASF50:
	.string	"INIT_LIST_HEAD"
.LASF28:
	.string	"destroy_sess_task"
.LASF46:
	.string	"list_del"
.LASF0:
	.string	"next"
.LASF13:
	.string	"rtsp_srv"
	.ident	"GCC: (GNU) 10.4.0"
