	.file	"tx_buffer_copy.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.bc_tx_buf_free.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	".\\components\\wireless\\wifi6\\wifi6_lwip_adapter\\tx_buffer_copy.c"
	.section	.text.bc_tx_buf_free,"ax",@progbits
	.align	1
	.type	bc_tx_buf_free, @function
bc_tx_buf_free:
.LFB63:
	.file 1 ".\\components\\wireless\\wifi6\\wifi6_lwip_adapter\\tx_buffer_copy.c"
	.loc 1 62 1
	.cfi_startproc
.LVL0:
	.loc 1 63 5
	.loc 1 64 5
.LBB7:
	.loc 1 64 36
	.loc 1 64 125
.LBE7:
	.loc 1 66 5
	.loc 1 62 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	.loc 1 66 5
	lui	s0,%hi(.LANCHOR0)
	addi	s0,s0,%lo(.LANCHOR0)
	addi	a1,a0,-4
	addi	a0,s0,8
.LVL1:
	.loc 1 62 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 66 5
	call	co_list_push_back
.LVL2:
	.loc 1 67 5 is_stmt 1
	lw	a5,4(s0)
	.loc 1 68 13 is_stmt 0
	lw	a4,0(s0)
	.loc 1 67 5
	addi	a5,a5,1
	sw	a5,4(s0)
	.loc 1 68 5 is_stmt 1
	.loc 1 68 10
	.loc 1 68 13 is_stmt 0
	bleu	a5,a4,.L1
.LVL3:
.LBB8:
.LBB9:
	.loc 1 68 54 is_stmt 1
.LBE9:
.LBE8:
	.loc 1 69 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	ra,12(sp)
	.cfi_restore 1
.LBB13:
.LBB10:
	.loc 1 68 54
	lui	a0,%hi(.LC0)
.LBE10:
.LBE13:
	.loc 1 69 1
.LBB14:
.LBB11:
	.loc 1 68 54
	li	a1,68
	addi	a0,a0,%lo(.LC0)
.LBE11:
.LBE14:
	.loc 1 69 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
.LBB15:
.LBB12:
	.loc 1 68 54
	tail	dbg_assert_err
.LVL4:
.L1:
	.cfi_restore_state
.LBE12:
.LBE15:
	.loc 1 69 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE63:
	.size	bc_tx_buf_free, .-bc_tx_buf_free
	.section	.text.bc_tx_init_tx_pool,"ax",@progbits
	.align	1
	.globl	bc_tx_init_tx_pool
	.type	bc_tx_init_tx_pool, @function
bc_tx_init_tx_pool:
.LFB62:
	.loc 1 34 1 is_stmt 1
	.cfi_startproc
	.loc 1 35 5
	.loc 1 36 5
.LVL5:
	.loc 1 37 5
	.loc 1 38 5
	.loc 1 39 5
	.loc 1 40 5
	.loc 1 42 5
	.loc 1 34 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	.cfi_offset 8, -8
	.loc 1 42 5
	lui	s0,%hi(.LANCHOR0)
	li	a2,92
	li	a1,0
	addi	a0,s0,%lo(.LANCHOR0)
	.loc 1 34 1
	sw	ra,28(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 42 5
	addi	s1,s0,%lo(.LANCHOR0)
	.loc 1 34 1
	sw	s3,12(sp)
	sw	s4,8(sp)
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.loc 1 42 5
	call	memset
.LVL6:
	.loc 1 43 5 is_stmt 1
	addi	a0,s1,8
	call	co_list_init
.LVL7:
	.loc 1 44 5
	.loc 1 44 17
.LBB16:
	.loc 1 45 9
	.loc 1 46 9
	addi	a0,s1,20
	call	co_list_init
.LVL8:
.LBE16:
	.loc 1 44 30
	.loc 1 44 17
.LBB17:
	.loc 1 45 9
	.loc 1 46 9
	addi	a0,s1,32
	call	co_list_init
.LVL9:
.LBE17:
	.loc 1 44 30
	.loc 1 44 17
.LBB18:
	.loc 1 45 9
	.loc 1 46 9
	addi	a0,s1,44
	call	co_list_init
.LVL10:
.LBE18:
	.loc 1 44 30
	.loc 1 44 17
.LBB19:
	.loc 1 45 9
	.loc 1 46 9
	addi	a0,s1,56
	call	co_list_init
.LVL11:
.LBE19:
	.loc 1 44 30
	.loc 1 44 17
.LBB20:
	.loc 1 45 9
	.loc 1 46 9
	addi	a0,s1,68
	call	co_list_init
.LVL12:
.LBE20:
	.loc 1 44 30
	.loc 1 44 17
.LBB21:
	.loc 1 45 9
	.loc 1 46 9
	addi	a0,s1,80
.LBE21:
	.loc 1 49 66 is_stmt 0
	lui	s1,%hi(_heap_wifi_start+3)
	addi	s1,s1,%lo(_heap_wifi_start+3)
	.loc 1 50 9
	lui	s2,%hi(_heap_wifi_size)
	lui	s3,%hi(.LANCHOR0+8)
.LBB22:
	.loc 1 46 9
	call	co_list_init
.LVL13:
.LBE22:
	.loc 1 44 30 is_stmt 1
	.loc 1 44 17
	.loc 1 49 5
	.loc 1 49 69 is_stmt 0
	andi	s1,s1,-4
.LVL14:
	.loc 1 50 5 is_stmt 1
	.loc 1 50 9 is_stmt 0
	addi	s2,s2,%lo(_heap_wifi_size)
.LVL15:
	.loc 1 51 5 is_stmt 1
	addi	s0,s0,%lo(.LANCHOR0)
	addi	s3,s3,%lo(.LANCHOR0+8)
	.loc 1 51 11 is_stmt 0
	li	s4,1927
.L5:
	.loc 1 51 11 is_stmt 1
	bgtu	s2,s4,.L6
	.loc 1 59 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
.LVL16:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL17:
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL18:
.L6:
	.cfi_restore_state
	.loc 1 52 9 is_stmt 1
	mv	a1,s1
	mv	a0,s3
	call	co_list_push_back
.LVL19:
	.loc 1 53 9
	lw	a5,0(s0)
	.loc 1 55 13 is_stmt 0
	addi	s2,s2,-1928
.LVL20:
	.loc 1 56 9
	addi	s1,s1,1928
.LVL21:
	.loc 1 53 9
	addi	a5,a5,1
	sw	a5,0(s0)
	.loc 1 54 9 is_stmt 1
	lw	a5,4(s0)
	addi	a5,a5,1
	sw	a5,4(s0)
	.loc 1 55 9
.LVL22:
	.loc 1 56 9
	j	.L5
	.cfi_endproc
.LFE62:
	.size	bc_tx_init_tx_pool, .-bc_tx_init_tx_pool
	.section	.text.bc_try_tx_queued_pkts,"ax",@progbits
	.align	1
	.globl	bc_try_tx_queued_pkts
	.type	bc_try_tx_queued_pkts, @function
bc_try_tx_queued_pkts:
.LFB64:
	.loc 1 72 1
	.cfi_startproc
	.loc 1 73 5
.LVL23:
	.loc 1 74 5
	.loc 1 77 5
	.loc 1 72 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s1,52(sp)
	.cfi_offset 9, -12
	.loc 1 77 16
	lui	s1,%hi(.LANCHOR0)
	.loc 1 72 1
	sw	s2,48(sp)
	sw	s3,44(sp)
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 77 16
	addi	s1,s1,%lo(.LANCHOR0)
.LBB23:
	.loc 1 82 9
	li	s2,6
.LBB24:
	.loc 1 87 45
	li	s3,12
.L9:
.LBE24:
.LBE23:
	.loc 1 77 16
	lw	a3,16(s1)
	.loc 1 78 17
	lw	a2,4(s1)
	j	.L13
.L14:
	.loc 1 78 9 is_stmt 1
	.loc 1 78 12 is_stmt 0
	beq	a2,zero,.L8
	mv	a4,s1
.LBB27:
	.loc 1 82 21
	li	a5,0
.L12:
.LVL24:
.LBB25:
	.loc 1 83 13 is_stmt 1
	.loc 1 84 13
	.loc 1 84 16 is_stmt 0
	lw	a1,28(a4)
	bne	a1,zero,.L11
	.loc 1 85 17 is_stmt 1
.LBE25:
	.loc 1 82 41
	addi	a5,a5,1
.LVL25:
	.loc 1 82 28
	.loc 1 82 9 is_stmt 0
	addi	a4,a4,12
	bne	a5,s2,.L12
.LVL26:
.L13:
.LBE27:
	.loc 1 77 11 is_stmt 1
	bne	a3,zero,.L14
.L8:
	.loc 1 95 1 is_stmt 0
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	lw	s1,52(sp)
	.cfi_restore 9
	lw	s2,48(sp)
	.cfi_restore 18
	lw	s3,44(sp)
	.cfi_restore 19
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL27:
.L11:
	.cfi_restore_state
.LBB28:
.LBB26:
	.loc 1 87 13 is_stmt 1
	.loc 1 87 45 is_stmt 0
	mul	s0,a5,s3
	addi	a0,s0,20
	add	a0,s1,a0
	call	co_list_pop_front
.LVL28:
	.loc 1 88 13 is_stmt 1
	add	a5,s1,s0
	lw	a4,28(a5)
	.loc 1 91 13 is_stmt 0
	addi	a1,a0,4
	li	a2,28
	.loc 1 88 13
	addi	a4,a4,-1
	sw	a4,28(a5)
	.loc 1 89 13 is_stmt 1
	lw	a5,16(s1)
	.loc 1 91 13 is_stmt 0
	mv	a0,sp
.LVL29:
	.loc 1 89 13
	addi	a5,a5,-1
	sw	a5,16(s1)
	.loc 1 90 13 is_stmt 1
	.loc 1 90 16
	.loc 1 90 22
	.loc 1 91 13
	call	memcpy
.LVL30:
	mv	a0,sp
	call	net_al_tx_req
.LVL31:
	.loc 1 92 13
	j	.L9
.LBE26:
.LBE28:
	.cfi_endproc
.LFE64:
	.size	bc_try_tx_queued_pkts, .-bc_try_tx_queued_pkts
	.section	.text.bc_tx_buf_alloc,"ax",@progbits
	.align	1
	.globl	bc_tx_buf_alloc
	.type	bc_tx_buf_alloc, @function
bc_tx_buf_alloc:
.LFB65:
	.loc 1 98 1
	.cfi_startproc
	.loc 1 99 5
.LVL32:
	.loc 1 100 5
	.loc 1 102 5
	.loc 1 98 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s1,4(sp)
	.cfi_offset 9, -12
	.loc 1 102 35
	lui	s1,%hi(.LANCHOR0)
	addi	s1,s1,%lo(.LANCHOR0)
	addi	a0,s1,8
	.loc 1 98 1
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 102 35
	call	co_list_pop_front
.LVL33:
	mv	s0,a0
.LVL34:
	.loc 1 104 5 is_stmt 1
	.loc 1 104 8 is_stmt 0
	beq	a0,zero,.L20
	.loc 1 105 9 is_stmt 1
	lw	a5,4(s1)
	addi	a5,a5,-1
	sw	a5,4(s1)
	.loc 1 106 9
	.loc 1 106 14
	.loc 1 106 17 is_stmt 0
	bge	a5,zero,.L22
	.loc 1 106 44 is_stmt 1 discriminator 1
	lui	a0,%hi(.LC0)
	li	a1,106
	addi	a0,a0,%lo(.LC0)
	call	dbg_assert_err
.LVL35:
.L22:
	.loc 1 106 146 discriminator 3
	.loc 1 107 9 discriminator 3
	.loc 1 107 42 is_stmt 0 discriminator 3
	lui	a5,%hi(bc_tx_buf_free)
	addi	a5,a5,%lo(bc_tx_buf_free)
	sw	a5,20(s0)
	.loc 1 108 9 is_stmt 1 discriminator 3
	addi	a4,s0,24
	li	a5,1902
	addi	a3,s0,4
	li	a2,640
	li	a1,1514
	li	a0,388
	call	pbuf_alloced_custom
.LVL36:
	.loc 1 110 5 discriminator 3
.L20:
	.loc 1 111 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	mv	a0,s0
	lw	s0,8(sp)
	.cfi_restore 8
.LVL37:
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE65:
	.size	bc_tx_buf_alloc, .-bc_tx_buf_alloc
	.section	.text.bc_tx_queue_release_sta,"ax",@progbits
	.align	1
	.globl	bc_tx_queue_release_sta
	.type	bc_tx_queue_release_sta, @function
bc_tx_queue_release_sta:
.LFB66:
	.loc 1 114 1 is_stmt 1
	.cfi_startproc
.LVL38:
	.loc 1 115 5
	.loc 1 116 5
	.loc 1 118 5
	.loc 1 118 10
	.loc 1 114 1 is_stmt 0
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
	.loc 1 118 13
	li	a5,5
	.loc 1 114 1
	mv	s0,a0
	mv	s3,a1
	.loc 1 118 13
	bleu	a0,a5,.L28
	.loc 1 118 37 is_stmt 1 discriminator 1
	lui	a0,%hi(.LC0)
.LVL39:
	li	a1,118
.LVL40:
	addi	a0,a0,%lo(.LC0)
	call	dbg_assert_err
.LVL41:
.L28:
	.loc 1 118 139 discriminator 3
	.loc 1 119 5 discriminator 3
	.loc 1 121 5 discriminator 3
.LBB29:
	.loc 1 123 41 is_stmt 0 discriminator 3
	li	a5,12
	mul	s0,s0,a5
.LVL42:
	lui	s1,%hi(.LANCHOR0)
	addi	s2,s1,%lo(.LANCHOR0)
	addi	s1,s1,%lo(.LANCHOR0)
	addi	a5,s0,20
	add	s2,s2,a5
.LBE29:
	.loc 1 121 17 discriminator 3
	add	s0,s1,s0
.L29:
	.loc 1 121 11 is_stmt 1
	lw	a5,28(s0)
	bne	a5,zero,.L30
	.loc 1 128 1 is_stmt 0
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
.LVL43:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL44:
.L30:
	.cfi_restore_state
.LBB30:
	.loc 1 122 9 is_stmt 1
	.loc 1 123 9
	.loc 1 123 41 is_stmt 0
	mv	a0,s2
	call	co_list_pop_front
.LVL45:
	.loc 1 124 9 is_stmt 1
	lw	a5,28(s0)
	.loc 1 126 9 is_stmt 0
	lw	a4,16(a0)
	lw	a3,12(a0)
	.loc 1 124 9
	addi	a5,a5,-1
	sw	a5,28(s0)
	.loc 1 125 9 is_stmt 1
	lw	a5,16(s1)
	.loc 1 126 9 is_stmt 0
	lw	a2,8(a0)
	lw	a0,4(a0)
.LVL46:
	.loc 1 125 9
	addi	a5,a5,-1
	sw	a5,16(s1)
	.loc 1 126 9 is_stmt 1
	li	a1,0
	jalr	s3
.LVL47:
	j	.L29
.LBE30:
	.cfi_endproc
.LFE66:
	.size	bc_tx_queue_release_sta, .-bc_tx_queue_release_sta
	.section	.text.bc_tx_enqueue,"ax",@progbits
	.align	1
	.globl	bc_tx_enqueue
	.type	bc_tx_enqueue, @function
bc_tx_enqueue:
.LFB67:
	.loc 1 131 1
	.cfi_startproc
.LVL48:
	.loc 1 132 9
	.loc 1 133 9
	.loc 1 135 9
	.loc 1 131 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	s2,0(sp)
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	mv	s0,a1
.LVL49:
	.loc 1 137 9 is_stmt 1
	.loc 1 131 1 is_stmt 0
	mv	s2,a0
	mv	a1,a2
.LVL50:
	.loc 1 137 19
	addi	a0,a0,4
.LVL51:
	li	a2,28
	.loc 1 131 1
	sw	ra,12(sp)
	sw	s1,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.loc 1 137 19
	call	memcpy
.LVL52:
	.loc 1 138 9 is_stmt 1
	li	a5,12
	mul	s0,s0,a5
.LVL53:
	lui	s1,%hi(.LANCHOR0)
	addi	s1,s1,%lo(.LANCHOR0)
	mv	a1,s2
	addi	a0,s0,20
	add	a0,s1,a0
	call	co_list_push_back
.LVL54:
	.loc 1 139 9
	add	s0,s1,s0
	lw	a5,28(s0)
	.loc 1 142 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s2,0(sp)
	.cfi_restore 18
.LVL55:
	.loc 1 139 9
	addi	a5,a5,1
	sw	a5,28(s0)
	.loc 1 140 9 is_stmt 1
	lw	a5,16(s1)
	.loc 1 142 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
	.loc 1 140 9
	addi	a5,a5,1
	sw	a5,16(s1)
	.loc 1 141 9 is_stmt 1
	.loc 1 141 12
	.loc 1 141 18
	.loc 1 142 1 is_stmt 0
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE67:
	.size	bc_tx_enqueue, .-bc_tx_enqueue
	.globl	tx_buf_pool
	.section	.bss.tx_buf_pool,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	tx_buf_pool, @object
	.size	tx_buf_pool, 92
tx_buf_pool:
	.zero	92
	.text
.Letext0:
	.file 2 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\lib\\gcc\\riscv64-unknown-elf\\10.4.0\\include\\stddef.h"
	.file 3 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\machine\\_default_types.h"
	.file 4 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\sys\\_stdint.h"
	.file 5 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\sys\\_types.h"
	.file 6 ".\\components\\wireless\\qcc74x_macsw\\include/export/mac/mac_types.h"
	.file 7 ".\\components\\net\\lwip\\lwip\\src\\include/lwip/pbuf.h"
	.file 8 ".\\components\\libc\\sys\\types.h"
	.file 9 ".\\components\\wireless\\qcc74x_macsw\\include/export/common/co_list.h"
	.file 10 ".\\components\\wireless\\qcc74x_macsw\\include/export/ke/ke_msg.h"
	.file 11 ".\\components\\wireless\\qcc74x_macsw\\include/export/ke/ke_task.h"
	.file 12 ".\\components\\wireless\\qcc74x_macsw\\include/export/export_enum.h"
	.file 13 ".\\components\\wireless\\wifi6\\wifi6_lwip_adapter\\include/net_al.h"
	.file 14 ".\\components\\net\\lwip\\lwip\\src\\include/lwip/arch.h"
	.file 15 ".\\components\\net\\lwip\\lwip\\src\\include/lwip/memp.h"
	.file 16 ".\\components\\net\\lwip\\lwip\\src\\include/lwip/netif.h"
	.file 17 ".\\components\\wireless\\wifi6\\wifi6_lwip_adapter\\tx_buffer_copy.h"
	.file 18 ".\\components\\wireless\\qcc74x_macsw\\include/export/dbg/dbg_assert.h"
	.file 19 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\string.h"
	.file 20 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xb1e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF144
	.byte	0xc
	.4byte	.LASF145
	.4byte	.LASF146
	.4byte	.Ldebug_ranges0+0xc0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF2
	.byte	0x2
	.byte	0xd1
	.byte	0x16
	.4byte	0x38
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x3
	.4byte	.LASF3
	.byte	0x3
	.byte	0x2b
	.byte	0x17
	.4byte	0x52
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.byte	0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x39
	.byte	0x1c
	.4byte	0x6c
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.byte	0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0x4f
	.byte	0x1b
	.4byte	0x86
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.byte	0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.byte	0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x46
	.byte	0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x24
	.byte	0x14
	.4byte	0x60
	.byte	0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x7a
	.byte	0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0x93
	.byte	0x14
	.4byte	0x25
	.byte	0x5
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF18
	.byte	0x6
	.4byte	.LASF24
	.byte	0x7
	.byte	0x1
	.4byte	0x52
	.byte	0x6
	.2byte	0x166
	.byte	0x6
	.4byte	0x10d
	.byte	0x7
	.4byte	.LASF19
	.byte	0
	.byte	0x7
	.4byte	.LASF20
	.byte	0x1
	.byte	0x7
	.4byte	.LASF21
	.byte	0x2
	.byte	0x7
	.4byte	.LASF22
	.byte	0x3
	.byte	0x7
	.4byte	.LASF23
	.byte	0x4
	.byte	0
	.byte	0x6
	.4byte	.LASF25
	.byte	0x7
	.byte	0x1
	.4byte	0x52
	.byte	0x6
	.2byte	0x175
	.byte	0x6
	.4byte	0x15d
	.byte	0x7
	.4byte	.LASF26
	.byte	0
	.byte	0x7
	.4byte	.LASF27
	.byte	0x1
	.byte	0x7
	.4byte	.LASF28
	.byte	0x2
	.byte	0x7
	.4byte	.LASF29
	.byte	0x3
	.byte	0x7
	.4byte	.LASF30
	.byte	0x4
	.byte	0x7
	.4byte	.LASF31
	.byte	0x5
	.byte	0x7
	.4byte	.LASF32
	.byte	0x6
	.byte	0x7
	.4byte	.LASF33
	.byte	0x7
	.byte	0x7
	.4byte	.LASF34
	.byte	0x8
	.byte	0x7
	.4byte	.LASF35
	.byte	0x9
	.byte	0
	.byte	0x8
	.4byte	.LASF38
	.byte	0x14
	.byte	0x7
	.byte	0xf5
	.byte	0x8
	.4byte	0x185
	.byte	0x9
	.4byte	.LASF36
	.byte	0x7
	.byte	0xf7
	.byte	0xf
	.4byte	0x18a
	.byte	0
	.byte	0x9
	.4byte	.LASF37
	.byte	0x7
	.byte	0xf9
	.byte	0x17
	.4byte	0x42e
	.byte	0x10
	.byte	0
	.byte	0xa
	.4byte	0x15d
	.byte	0x8
	.4byte	.LASF36
	.byte	0x10
	.byte	0x7
	.byte	0xba
	.byte	0x8
	.4byte	0x200
	.byte	0x9
	.4byte	.LASF39
	.byte	0x7
	.byte	0xbc
	.byte	0x10
	.4byte	0x428
	.byte	0
	.byte	0x9
	.4byte	.LASF40
	.byte	0x7
	.byte	0xbf
	.byte	0x9
	.4byte	0xcb
	.byte	0x4
	.byte	0x9
	.4byte	.LASF41
	.byte	0x7
	.byte	0xc8
	.byte	0x9
	.4byte	0x3c2
	.byte	0x8
	.byte	0xb
	.string	"len"
	.byte	0x7
	.byte	0xcb
	.byte	0x9
	.4byte	0x3c2
	.byte	0xa
	.byte	0x9
	.4byte	.LASF42
	.byte	0x7
	.byte	0xd0
	.byte	0x8
	.4byte	0x3b6
	.byte	0xc
	.byte	0x9
	.4byte	.LASF43
	.byte	0x7
	.byte	0xd3
	.byte	0x8
	.4byte	0x3b6
	.byte	0xd
	.byte	0xb
	.string	"ref"
	.byte	0x7
	.byte	0xda
	.byte	0x8
	.4byte	0x3b6
	.byte	0xe
	.byte	0x9
	.4byte	.LASF44
	.byte	0x7
	.byte	0xdd
	.byte	0x8
	.4byte	0x3b6
	.byte	0xf
	.byte	0
	.byte	0x3
	.4byte	.LASF45
	.byte	0x8
	.byte	0xb8
	.byte	0x12
	.4byte	0xbf
	.byte	0x8
	.4byte	.LASF46
	.byte	0x4
	.byte	0x9
	.byte	0x30
	.byte	0x8
	.4byte	0x227
	.byte	0x9
	.4byte	.LASF39
	.byte	0x9
	.byte	0x33
	.byte	0x19
	.4byte	0x227
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x4
	.4byte	0x20c
	.byte	0x8
	.4byte	.LASF47
	.byte	0x8
	.byte	0x9
	.byte	0x37
	.byte	0x8
	.4byte	0x255
	.byte	0x9
	.4byte	.LASF48
	.byte	0x9
	.byte	0x3a
	.byte	0x19
	.4byte	0x227
	.byte	0
	.byte	0x9
	.4byte	.LASF49
	.byte	0x9
	.byte	0x3c
	.byte	0x19
	.4byte	0x227
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF50
	.byte	0xa
	.byte	0x52
	.byte	0x12
	.4byte	0xa7
	.byte	0xd
	.byte	0x7
	.byte	0x1
	.4byte	0x52
	.byte	0xb
	.byte	0x30
	.byte	0x1
	.4byte	0x2dc
	.byte	0x7
	.4byte	.LASF51
	.byte	0xff
	.byte	0x7
	.4byte	.LASF52
	.byte	0
	.byte	0x7
	.4byte	.LASF53
	.byte	0x1
	.byte	0x7
	.4byte	.LASF54
	.byte	0x2
	.byte	0x7
	.4byte	.LASF55
	.byte	0x3
	.byte	0x7
	.4byte	.LASF56
	.byte	0x4
	.byte	0x7
	.4byte	.LASF57
	.byte	0x5
	.byte	0x7
	.4byte	.LASF58
	.byte	0x6
	.byte	0x7
	.4byte	.LASF59
	.byte	0x7
	.byte	0x7
	.4byte	.LASF60
	.byte	0x8
	.byte	0x7
	.4byte	.LASF61
	.byte	0x9
	.byte	0x7
	.4byte	.LASF62
	.byte	0xa
	.byte	0x7
	.4byte	.LASF63
	.byte	0xb
	.byte	0x7
	.4byte	.LASF64
	.byte	0xc
	.byte	0x7
	.4byte	.LASF65
	.byte	0xd
	.byte	0x7
	.4byte	.LASF66
	.byte	0xd
	.byte	0x7
	.4byte	.LASF67
	.byte	0xe
	.byte	0x7
	.4byte	.LASF68
	.byte	0xf
	.byte	0
	.byte	0xd
	.byte	0x7
	.byte	0x1
	.4byte	0x52
	.byte	0xc
	.byte	0x3
	.byte	0x1
	.4byte	0x303
	.byte	0x7
	.4byte	.LASF69
	.byte	0x4
	.byte	0x7
	.4byte	.LASF70
	.byte	0x5
	.byte	0x7
	.4byte	.LASF71
	.byte	0x6
	.byte	0x7
	.4byte	.LASF72
	.byte	0xff
	.byte	0
	.byte	0x3
	.4byte	.LASF73
	.byte	0xd
	.byte	0x50
	.byte	0x10
	.4byte	0xcb
	.byte	0x3
	.4byte	.LASF74
	.byte	0xd
	.byte	0x52
	.byte	0x10
	.4byte	0xcb
	.byte	0x8
	.4byte	.LASF75
	.byte	0x1c
	.byte	0xd
	.byte	0xeb
	.byte	0x8
	.4byte	0x384
	.byte	0x9
	.4byte	.LASF76
	.byte	0xd
	.byte	0xec
	.byte	0x11
	.4byte	0x30f
	.byte	0
	.byte	0x9
	.4byte	.LASF77
	.byte	0xd
	.byte	0xed
	.byte	0xb
	.4byte	0xcb
	.byte	0x4
	.byte	0x9
	.4byte	.LASF78
	.byte	0xd
	.byte	0xee
	.byte	0xb
	.4byte	0xcb
	.byte	0x8
	.byte	0x9
	.4byte	.LASF79
	.byte	0xd
	.byte	0xef
	.byte	0xb
	.4byte	0xcb
	.byte	0xc
	.byte	0x9
	.4byte	.LASF80
	.byte	0xd
	.byte	0xf0
	.byte	0x11
	.4byte	0x303
	.byte	0x10
	.byte	0x9
	.4byte	.LASF81
	.byte	0xd
	.byte	0xf1
	.byte	0x9
	.4byte	0x25
	.byte	0x14
	.byte	0x9
	.4byte	.LASF82
	.byte	0xd
	.byte	0xf2
	.byte	0x9
	.4byte	0x25
	.byte	0x18
	.byte	0
	.byte	0xe
	.4byte	.LASF83
	.byte	0xd
	.2byte	0x101
	.byte	0x11
	.4byte	0x391
	.byte	0xc
	.byte	0x4
	.4byte	0x397
	.byte	0xf
	.4byte	0x3b6
	.byte	0x10
	.4byte	0x30f
	.byte	0x10
	.4byte	0xb3
	.byte	0x10
	.4byte	0xcb
	.byte	0x10
	.4byte	0xcb
	.byte	0x10
	.4byte	0xcb
	.byte	0
	.byte	0x3
	.4byte	.LASF84
	.byte	0xe
	.byte	0x7d
	.byte	0x11
	.4byte	0x9b
	.byte	0x3
	.4byte	.LASF85
	.byte	0xe
	.byte	0x7f
	.byte	0x12
	.4byte	0xa7
	.byte	0xd
	.byte	0x7
	.byte	0x2
	.4byte	0x6c
	.byte	0x7
	.byte	0x59
	.byte	0xe
	.4byte	0x3ff
	.byte	0x11
	.4byte	.LASF86
	.2byte	0x1ba
	.byte	0x11
	.4byte	.LASF87
	.2byte	0x1a6
	.byte	0x11
	.4byte	.LASF88
	.2byte	0x192
	.byte	0x11
	.4byte	.LASF89
	.2byte	0x184
	.byte	0x7
	.4byte	.LASF90
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x7
	.byte	0x2
	.4byte	0x6c
	.byte	0x7
	.byte	0x91
	.byte	0xe
	.4byte	0x428
	.byte	0x11
	.4byte	.LASF91
	.2byte	0x280
	.byte	0x7
	.4byte	.LASF92
	.byte	0x1
	.byte	0x7
	.4byte	.LASF93
	.byte	0x41
	.byte	0x11
	.4byte	.LASF94
	.2byte	0x182
	.byte	0
	.byte	0xc
	.byte	0x4
	.4byte	0x18a
	.byte	0x3
	.4byte	.LASF95
	.byte	0x7
	.byte	0xf2
	.byte	0x10
	.4byte	0x43a
	.byte	0xc
	.byte	0x4
	.4byte	0x440
	.byte	0xf
	.4byte	0x44b
	.byte	0x10
	.4byte	0x428
	.byte	0
	.byte	0xd
	.byte	0x7
	.byte	0x1
	.4byte	0x52
	.byte	0xf
	.byte	0x34
	.byte	0xe
	.4byte	0x4ae
	.byte	0x7
	.4byte	.LASF96
	.byte	0
	.byte	0x7
	.4byte	.LASF97
	.byte	0x1
	.byte	0x7
	.4byte	.LASF98
	.byte	0x2
	.byte	0x7
	.4byte	.LASF99
	.byte	0x3
	.byte	0x7
	.4byte	.LASF100
	.byte	0x4
	.byte	0x7
	.4byte	.LASF101
	.byte	0x5
	.byte	0x7
	.4byte	.LASF102
	.byte	0x6
	.byte	0x7
	.4byte	.LASF103
	.byte	0x7
	.byte	0x7
	.4byte	.LASF104
	.byte	0x8
	.byte	0x7
	.4byte	.LASF105
	.byte	0x9
	.byte	0x7
	.4byte	.LASF106
	.byte	0xa
	.byte	0x7
	.4byte	.LASF107
	.byte	0xb
	.byte	0x7
	.4byte	.LASF108
	.byte	0xc
	.byte	0x7
	.4byte	.LASF109
	.byte	0xd
	.byte	0
	.byte	0x12
	.4byte	.LASF110
	.byte	0x7
	.byte	0x1
	.4byte	0x52
	.byte	0x10
	.byte	0x71
	.byte	0x6
	.4byte	0x4d3
	.byte	0x7
	.4byte	.LASF111
	.byte	0
	.byte	0x7
	.4byte	.LASF112
	.byte	0x1
	.byte	0x7
	.4byte	.LASF113
	.byte	0x2
	.byte	0
	.byte	0x13
	.4byte	.LASF114
	.2byte	0x788
	.byte	0x11
	.byte	0x9
	.byte	0x8
	.4byte	0x509
	.byte	0xb
	.string	"hdr"
	.byte	0x11
	.byte	0xb
	.byte	0x18
	.4byte	0x20c
	.byte	0
	.byte	0x9
	.4byte	.LASF115
	.byte	0x11
	.byte	0xc
	.byte	0x18
	.4byte	0x15d
	.byte	0x4
	.byte	0x9
	.4byte	.LASF116
	.byte	0x11
	.byte	0xd
	.byte	0xe
	.4byte	0x509
	.byte	0x18
	.byte	0
	.byte	0x14
	.4byte	0xb3
	.4byte	0x51a
	.byte	0x15
	.4byte	0x38
	.2byte	0x1db
	.byte	0
	.byte	0x8
	.4byte	.LASF117
	.byte	0x20
	.byte	0x11
	.byte	0xf
	.byte	0x8
	.4byte	0x542
	.byte	0xb
	.string	"hdr"
	.byte	0x11
	.byte	0x11
	.byte	0x18
	.4byte	0x20c
	.byte	0
	.byte	0xb
	.string	"req"
	.byte	0x11
	.byte	0x12
	.byte	0x1a
	.4byte	0x31b
	.byte	0x4
	.byte	0
	.byte	0x8
	.4byte	.LASF118
	.byte	0xc
	.byte	0x1
	.byte	0x10
	.byte	0x8
	.4byte	0x56a
	.byte	0x9
	.4byte	.LASF119
	.byte	0x1
	.byte	0x12
	.byte	0x14
	.4byte	0x22d
	.byte	0
	.byte	0x9
	.4byte	.LASF120
	.byte	0x1
	.byte	0x13
	.byte	0xd
	.4byte	0x200
	.byte	0x8
	.byte	0
	.byte	0x8
	.4byte	.LASF121
	.byte	0x5c
	.byte	0x1
	.byte	0x16
	.byte	0x8
	.4byte	0x5b9
	.byte	0x9
	.4byte	.LASF122
	.byte	0x1
	.byte	0x18
	.byte	0xc
	.4byte	0x2c
	.byte	0
	.byte	0x9
	.4byte	.LASF123
	.byte	0x1
	.byte	0x19
	.byte	0xd
	.4byte	0x200
	.byte	0x4
	.byte	0x9
	.4byte	.LASF124
	.byte	0x1
	.byte	0x1a
	.byte	0x14
	.4byte	0x22d
	.byte	0x8
	.byte	0x9
	.4byte	.LASF120
	.byte	0x1
	.byte	0x1b
	.byte	0xd
	.4byte	0x200
	.byte	0x10
	.byte	0x9
	.4byte	.LASF125
	.byte	0x1
	.byte	0x1c
	.byte	0x18
	.4byte	0x5b9
	.byte	0x14
	.byte	0
	.byte	0x14
	.4byte	0x542
	.4byte	0x5c9
	.byte	0x16
	.4byte	0x38
	.byte	0x5
	.byte	0
	.byte	0x17
	.4byte	.LASF135
	.byte	0x1
	.byte	0x1f
	.byte	0x17
	.4byte	0x56a
	.byte	0x5
	.byte	0x3
	.4byte	tx_buf_pool
	.byte	0x18
	.4byte	.LASF129
	.byte	0x1
	.byte	0x82
	.byte	0x6
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.byte	0x1
	.byte	0x9c
	.4byte	0x678
	.byte	0x19
	.4byte	.LASF126
	.byte	0x1
	.byte	0x82
	.byte	0x2b
	.4byte	0x678
	.4byte	.LLST16
	.byte	0x19
	.4byte	.LASF127
	.byte	0x1
	.byte	0x82
	.byte	0x39
	.4byte	0x9b
	.4byte	.LLST17
	.byte	0x1a
	.string	"req"
	.byte	0x1
	.byte	0x82
	.byte	0x56
	.4byte	0x31b
	.byte	0x2
	.byte	0x7b
	.byte	0
	.byte	0x1b
	.4byte	.LASF128
	.byte	0x1
	.byte	0x84
	.byte	0x20
	.4byte	0x67e
	.byte	0x6
	.byte	0x3
	.4byte	tx_buf_pool
	.byte	0x9f
	.byte	0x1c
	.4byte	.LASF125
	.byte	0x1
	.byte	0x85
	.byte	0x1d
	.4byte	0x684
	.4byte	.LLST18
	.byte	0x1d
	.4byte	.LVL52
	.4byte	0xac1
	.4byte	0x65c
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0x4
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x4c
	.byte	0
	.byte	0x1f
	.4byte	.LVL54
	.4byte	0xacc
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x7
	.byte	0x79
	.byte	0
	.byte	0x78
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x14
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x4
	.4byte	0x51a
	.byte	0xc
	.byte	0x4
	.4byte	0x56a
	.byte	0xc
	.byte	0x4
	.4byte	0x542
	.byte	0x18
	.4byte	.LASF130
	.byte	0x1
	.byte	0x71
	.byte	0x6
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.byte	0x1
	.byte	0x9c
	.4byte	0x736
	.byte	0x19
	.4byte	.LASF127
	.byte	0x1
	.byte	0x71
	.byte	0x26
	.4byte	0x9b
	.4byte	.LLST12
	.byte	0x19
	.4byte	.LASF131
	.byte	0x1
	.byte	0x71
	.byte	0x3d
	.4byte	0x384
	.4byte	.LLST13
	.byte	0x1b
	.4byte	.LASF128
	.byte	0x1
	.byte	0x73
	.byte	0x1c
	.4byte	0x67e
	.byte	0x6
	.byte	0x3
	.4byte	tx_buf_pool
	.byte	0x9f
	.byte	0x1c
	.4byte	.LASF125
	.byte	0x1
	.byte	0x74
	.byte	0x19
	.4byte	0x684
	.4byte	.LLST14
	.byte	0x20
	.4byte	.Ldebug_ranges0+0xa8
	.4byte	0x71c
	.byte	0x1c
	.4byte	.LASF126
	.byte	0x1
	.byte	0x7a
	.byte	0x20
	.4byte	0x678
	.4byte	.LLST15
	.byte	0x1d
	.4byte	.LVL45
	.4byte	0xad8
	.4byte	0x710
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	.LVL47
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL41
	.4byte	0xae4
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x76
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LASF132
	.byte	0x1
	.byte	0x61
	.byte	0x17
	.4byte	0x7d7
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.byte	0x1
	.byte	0x9c
	.4byte	0x7d7
	.byte	0x1b
	.4byte	.LASF128
	.byte	0x1
	.byte	0x63
	.byte	0x1c
	.4byte	0x67e
	.byte	0x6
	.byte	0x3
	.4byte	tx_buf_pool
	.byte	0x9f
	.byte	0x23
	.string	"buf"
	.byte	0x1
	.byte	0x64
	.byte	0x1b
	.4byte	0x7d7
	.4byte	.LLST11
	.byte	0x1d
	.4byte	.LVL33
	.4byte	0xad8
	.4byte	0x787
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0x8
	.byte	0
	.byte	0x1d
	.4byte	.LVL35
	.4byte	0xae4
	.4byte	0x7a4
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x6a
	.byte	0
	.byte	0x1f
	.4byte	.LVL36
	.4byte	0xaf0
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x184
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xa
	.2byte	0x5ea
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x280
	.byte	0x1e
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x78
	.byte	0x4
	.byte	0x1e
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x78
	.byte	0x18
	.byte	0x1e
	.byte	0x1
	.byte	0x5f
	.byte	0x3
	.byte	0xa
	.2byte	0x76e
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x4
	.4byte	0x4d3
	.byte	0x18
	.4byte	.LASF133
	.byte	0x1
	.byte	0x47
	.byte	0x6
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.byte	0x1
	.byte	0x9c
	.4byte	0x883
	.byte	0x1b
	.4byte	.LASF128
	.byte	0x1
	.byte	0x49
	.byte	0x1c
	.4byte	0x67e
	.byte	0x6
	.byte	0x3
	.4byte	tx_buf_pool
	.byte	0x9f
	.byte	0x1c
	.4byte	.LASF126
	.byte	0x1
	.byte	0x4a
	.byte	0x1c
	.4byte	0x678
	.4byte	.LLST8
	.byte	0x24
	.4byte	.Ldebug_ranges0+0x68
	.byte	0x23
	.string	"i"
	.byte	0x1
	.byte	0x52
	.byte	0x15
	.4byte	0x2c
	.4byte	.LLST9
	.byte	0x24
	.4byte	.Ldebug_ranges0+0x88
	.byte	0x1c
	.4byte	.LASF125
	.byte	0x1
	.byte	0x53
	.byte	0x21
	.4byte	0x684
	.4byte	.LLST10
	.byte	0x1d
	.4byte	.LVL28
	.4byte	0xad8
	.4byte	0x857
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x7
	.byte	0x79
	.byte	0
	.byte	0x78
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x14
	.byte	0
	.byte	0x1d
	.4byte	.LVL30
	.4byte	0xac1
	.4byte	0x870
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x4c
	.byte	0
	.byte	0x1f
	.4byte	.LVL31
	.4byte	0xafd
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x25
	.4byte	.LASF147
	.byte	0x1
	.byte	0x3d
	.byte	0xd
	.byte	0x1
	.4byte	0x8c1
	.byte	0x26
	.string	"p"
	.byte	0x1
	.byte	0x3d
	.byte	0x29
	.4byte	0x428
	.byte	0x27
	.4byte	.LASF128
	.byte	0x1
	.byte	0x3f
	.byte	0x1c
	.4byte	0x67e
	.byte	0x28
	.string	"buf"
	.byte	0x1
	.byte	0x40
	.byte	0x1b
	.4byte	0x7d7
	.byte	0x29
	.byte	0x27
	.4byte	.LASF134
	.byte	0x1
	.byte	0x40
	.byte	0x59
	.4byte	0x8c1
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x4
	.4byte	0x185
	.byte	0x2a
	.4byte	.LASF148
	.byte	0x1
	.byte	0x21
	.byte	0x6
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.byte	0x1
	.byte	0x9c
	.4byte	0xa14
	.byte	0x23
	.string	"i"
	.byte	0x1
	.byte	0x23
	.byte	0xc
	.4byte	0x2c
	.4byte	.LLST4
	.byte	0x1b
	.4byte	.LASF128
	.byte	0x1
	.byte	0x24
	.byte	0x1c
	.4byte	0x67e
	.byte	0x6
	.byte	0x3
	.4byte	tx_buf_pool
	.byte	0x9f
	.byte	0x23
	.string	"buf"
	.byte	0x1
	.byte	0x25
	.byte	0x1b
	.4byte	0x7d7
	.4byte	.LLST5
	.byte	0x23
	.string	"len"
	.byte	0x1
	.byte	0x26
	.byte	0xc
	.4byte	0x2c
	.4byte	.LLST6
	.byte	0x2b
	.4byte	.LASF136
	.byte	0x1
	.byte	0x27
	.byte	0x14
	.4byte	0x9b
	.byte	0x2b
	.4byte	.LASF137
	.byte	0x1
	.byte	0x28
	.byte	0x14
	.4byte	0x9b
	.byte	0x20
	.4byte	.Ldebug_ranges0+0x28
	.4byte	0x9ca
	.byte	0x1c
	.4byte	.LASF125
	.byte	0x1
	.byte	0x2d
	.byte	0x1d
	.4byte	0x684
	.4byte	.LLST7
	.byte	0x1d
	.4byte	.LVL8
	.4byte	0xb09
	.4byte	0x963
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0x14
	.byte	0
	.byte	0x1d
	.4byte	.LVL9
	.4byte	0xb09
	.4byte	0x977
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0x20
	.byte	0
	.byte	0x1d
	.4byte	.LVL10
	.4byte	0xb09
	.4byte	0x98b
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0x2c
	.byte	0
	.byte	0x1d
	.4byte	.LVL11
	.4byte	0xb09
	.4byte	0x99f
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0x38
	.byte	0
	.byte	0x1d
	.4byte	.LVL12
	.4byte	0xb09
	.4byte	0x9b4
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x79
	.byte	0xc4,0
	.byte	0
	.byte	0x1f
	.4byte	.LVL13
	.4byte	0xb09
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x7
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x23
	.byte	0x50
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LVL6
	.4byte	0xb15
	.4byte	0x9e9
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x5c
	.byte	0
	.byte	0x1d
	.4byte	.LVL7
	.4byte	0xb09
	.4byte	0x9fd
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0x8
	.byte	0
	.byte	0x1f
	.4byte	.LVL19
	.4byte	0xacc
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2c
	.4byte	0x883
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.byte	0x1
	.byte	0x9c
	.4byte	0xac1
	.byte	0x2d
	.4byte	0x890
	.4byte	.LLST0
	.byte	0x2e
	.4byte	0x89a
	.byte	0x6
	.byte	0x3
	.4byte	tx_buf_pool
	.byte	0x9f
	.byte	0x2f
	.4byte	0x8a6
	.4byte	.LLST1
	.byte	0x30
	.4byte	0x8b2
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.4byte	0xa60
	.byte	0x2f
	.4byte	0x8b3
	.4byte	.LLST2
	.byte	0
	.byte	0x31
	.4byte	0x883
	.4byte	.LBB8
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x3d
	.byte	0xd
	.4byte	0xaa7
	.byte	0x2d
	.4byte	0x890
	.4byte	.LLST3
	.byte	0x24
	.4byte	.Ldebug_ranges0+0
	.byte	0x32
	.4byte	0x89a
	.byte	0x32
	.4byte	0x8a6
	.byte	0x33
	.4byte	.LVL4
	.4byte	0xae4
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x44
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL2
	.4byte	0xacc
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x8
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x34
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0x34
	.4byte	.LASF149
	.4byte	.LASF150
	.byte	0x14
	.byte	0
	.byte	0x35
	.4byte	.LASF138
	.4byte	.LASF138
	.byte	0x9
	.byte	0x65
	.byte	0x6
	.byte	0x35
	.4byte	.LASF139
	.4byte	.LASF139
	.byte	0x9
	.byte	0x7b
	.byte	0x15
	.byte	0x35
	.4byte	.LASF140
	.4byte	.LASF140
	.byte	0x12
	.byte	0x6a
	.byte	0x6
	.byte	0x36
	.4byte	.LASF141
	.4byte	.LASF141
	.byte	0x7
	.2byte	0x116
	.byte	0xe
	.byte	0x35
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0xd
	.byte	0xf4
	.byte	0x5
	.byte	0x35
	.4byte	.LASF142
	.4byte	.LASF142
	.byte	0x9
	.byte	0x4a
	.byte	0x6
	.byte	0x35
	.4byte	.LASF143
	.4byte	.LASF143
	.byte	0x13
	.byte	0x21
	.byte	0x8
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
	.byte	0x8
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
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0x3e
	.byte	0xb
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
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
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
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
	.byte	0xe
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
	.byte	0xf
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0xe
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
	.byte	0x13
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
	.byte	0x14
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
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
	.byte	0xb
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1b
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
	.byte	0x1c
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
	.byte	0x1d
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
	.byte	0x1e
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1f
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x22
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
	.byte	0x23
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
	.byte	0x24
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x25
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
	.byte	0x26
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
	.byte	0x27
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
	.byte	0x28
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
	.byte	0x29
	.byte	0xb
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x2a
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
	.byte	0x2b
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
	.byte	0x2c
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
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x2f
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x30
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
	.byte	0x31
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
	.byte	0x32
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x33
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
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x35
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
	.byte	0x36
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
.LLST16:
	.4byte	.LVL48
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL51
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL55
	.4byte	.LFE67
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL50
	.4byte	.LFE67
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL49
	.4byte	.LVL53
	.2byte	0xb
	.byte	0x78
	.byte	0
	.byte	0x3c
	.byte	0x1e
	.byte	0x3
	.4byte	tx_buf_pool+20
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL39
	.4byte	.LFE66
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL40
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LFE66
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0xb
	.byte	0x78
	.byte	0
	.byte	0x3c
	.byte	0x1e
	.byte	0x3
	.4byte	tx_buf_pool+20
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL34
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL37
	.4byte	.LFE65
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL29
	.4byte	.LVL30-1
	.2byte	0x3
	.byte	0x7b
	.byte	0x7c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0xb
	.byte	0x7f
	.byte	0
	.byte	0x3c
	.byte	0x1e
	.byte	0x3
	.4byte	tx_buf_pool+20
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0xb
	.byte	0x7f
	.byte	0x7f
	.byte	0x3c
	.byte	0x1e
	.byte	0x3
	.4byte	tx_buf_pool+20
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0xb
	.byte	0x7f
	.byte	0
	.byte	0x3c
	.byte	0x1e
	.byte	0x3
	.4byte	tx_buf_pool+20
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LFE62
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x4
	.byte	0x79
	.byte	0xf8,0x70
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LFE62
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x4
	.byte	0x82
	.byte	0x88,0xf
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LFE62
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x6
	.byte	0x3
	.4byte	tx_buf_pool+20
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x6
	.byte	0x3
	.4byte	tx_buf_pool+32
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x6
	.byte	0x3
	.4byte	tx_buf_pool+44
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x6
	.byte	0x3
	.4byte	tx_buf_pool+56
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x6
	.byte	0x3
	.4byte	tx_buf_pool+68
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LFE62
	.2byte	0x6
	.byte	0x3
	.4byte	tx_buf_pool+80
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL2-1
	.2byte	0x3
	.byte	0x7b
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL2-1
	.4byte	.LFE63
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x3
	.byte	0x7a
	.byte	0x7c
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2-1
	.4byte	.LFE63
	.2byte	0x6
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x34
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL2-1
	.2byte	0x3
	.byte	0x7b
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL2-1
	.4byte	.LFE63
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x44
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	0
	.4byte	0
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	.LBB19
	.4byte	.LBE19
	.4byte	.LBB20
	.4byte	.LBE20
	.4byte	.LBB21
	.4byte	.LBE21
	.4byte	.LBB22
	.4byte	.LBE22
	.4byte	0
	.4byte	0
	.4byte	.LBB23
	.4byte	.LBE23
	.4byte	.LBB27
	.4byte	.LBE27
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	0
	.4byte	0
	.4byte	.LBB24
	.4byte	.LBE24
	.4byte	.LBB25
	.4byte	.LBE25
	.4byte	.LBB26
	.4byte	.LBE26
	.4byte	0
	.4byte	0
	.4byte	.LBB29
	.4byte	.LBE29
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	0
	.4byte	0
	.4byte	.LFB63
	.4byte	.LFE63
	.4byte	.LFB62
	.4byte	.LFE62
	.4byte	.LFB64
	.4byte	.LFE64
	.4byte	.LFB65
	.4byte	.LFE65
	.4byte	.LFB66
	.4byte	.LFE66
	.4byte	.LFB67
	.4byte	.LFE67
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF97:
	.string	"MEMP_UDP_PCB"
.LASF105:
	.string	"MEMP_SYS_TIMEOUT"
.LASF36:
	.string	"pbuf"
.LASF2:
	.string	"size_t"
.LASF106:
	.string	"MEMP_NETDB"
.LASF3:
	.string	"__uint8_t"
.LASF44:
	.string	"if_idx"
.LASF45:
	.string	"ssize_t"
.LASF127:
	.string	"sta_id"
.LASF81:
	.string	"type"
.LASF130:
	.string	"bc_tx_queue_release_sta"
.LASF12:
	.string	"long long unsigned int"
.LASF100:
	.string	"MEMP_TCP_SEG"
.LASF38:
	.string	"pbuf_custom"
.LASF64:
	.string	"TASK_TWT"
.LASF39:
	.string	"next"
.LASF145:
	.string	".\\components\\wireless\\wifi6\\wifi6_lwip_adapter\\tx_buffer_copy.c"
.LASF120:
	.string	"pkt_queued"
.LASF63:
	.string	"TASK_RM"
.LASF1:
	.string	"signed char"
.LASF55:
	.string	"TASK_TDLS"
.LASF115:
	.string	"c_pbuf"
.LASF80:
	.string	"net_if"
.LASF121:
	.string	"bc_tx_buf_pool"
.LASF41:
	.string	"tot_len"
.LASF8:
	.string	"long int"
.LASF87:
	.string	"PBUF_IP"
.LASF94:
	.string	"PBUF_POOL"
.LASF21:
	.string	"AC_VI"
.LASF22:
	.string	"AC_VO"
.LASF149:
	.string	"memcpy"
.LASF53:
	.string	"TASK_DBG"
.LASF11:
	.string	"long long int"
.LASF113:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF14:
	.string	"uint16_t"
.LASF146:
	.string	"C:\\\\Users\\\\cwier\\\\Documents\\\\GitHub\\\\qcom\\\\examples\\\\solutions\\\\rtsp_softap_cam\\\\build\\\\build_out\\\\components\\\\wireless\\\\wifi6\\\\wifi6_lwip_adapter"
.LASF37:
	.string	"custom_free_function"
.LASF65:
	.string	"TASK_FTM"
.LASF132:
	.string	"bc_tx_buf_alloc"
.LASF34:
	.string	"TID_MGT"
.LASF9:
	.string	"__uint32_t"
.LASF139:
	.string	"co_list_pop_front"
.LASF42:
	.string	"type_internal"
.LASF135:
	.string	"tx_buf_pool"
.LASF83:
	.string	"release_buf_cb"
.LASF101:
	.string	"MEMP_REASSDATA"
.LASF133:
	.string	"bc_try_tx_queued_pkts"
.LASF0:
	.string	"unsigned int"
.LASF141:
	.string	"pbuf_alloced_custom"
.LASF58:
	.string	"TASK_SM"
.LASF71:
	.string	"STA_MAX"
.LASF10:
	.string	"long unsigned int"
.LASF129:
	.string	"bc_tx_enqueue"
.LASF125:
	.string	"queue"
.LASF16:
	.string	"_ssize_t"
.LASF98:
	.string	"MEMP_TCP_PCB"
.LASF7:
	.string	"short unsigned int"
.LASF147:
	.string	"bc_tx_buf_free"
.LASF92:
	.string	"PBUF_ROM"
.LASF29:
	.string	"TID_3"
.LASF49:
	.string	"last"
.LASF31:
	.string	"TID_5"
.LASF86:
	.string	"PBUF_TRANSPORT"
.LASF150:
	.string	"__builtin_memcpy"
.LASF138:
	.string	"co_list_push_back"
.LASF114:
	.string	"bc_tx_buf_tag"
.LASF66:
	.string	"TASK_LAST_EMB"
.LASF144:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF60:
	.string	"TASK_BAM"
.LASF109:
	.string	"MEMP_MAX"
.LASF140:
	.string	"dbg_assert_err"
.LASF84:
	.string	"u8_t"
.LASF26:
	.string	"TID_0"
.LASF27:
	.string	"TID_1"
.LASF28:
	.string	"TID_2"
.LASF24:
	.string	"mac_ac"
.LASF30:
	.string	"TID_4"
.LASF23:
	.string	"AC_MAX"
.LASF32:
	.string	"TID_6"
.LASF33:
	.string	"TID_7"
.LASF136:
	.string	"_heap_wifi_start"
.LASF57:
	.string	"TASK_ME"
.LASF40:
	.string	"payload"
.LASF148:
	.string	"bc_tx_init_tx_pool"
.LASF52:
	.string	"TASK_MM"
.LASF118:
	.string	"bc_tx_queue"
.LASF20:
	.string	"AC_BE"
.LASF19:
	.string	"AC_BK"
.LASF56:
	.string	"TASK_SCANU"
.LASF78:
	.string	"cfm_cb_arg"
.LASF88:
	.string	"PBUF_LINK"
.LASF51:
	.string	"TASK_NONE"
.LASF67:
	.string	"TASK_API"
.LASF62:
	.string	"TASK_RXU"
.LASF112:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_ACD"
.LASF117:
	.string	"bc_tx_info_tag"
.LASF50:
	.string	"ke_msg_id_t"
.LASF61:
	.string	"TASK_MESH"
.LASF18:
	.string	"_Bool"
.LASF131:
	.string	"release_buf"
.LASF4:
	.string	"unsigned char"
.LASF5:
	.string	"short int"
.LASF126:
	.string	"info"
.LASF25:
	.string	"mac_tid"
.LASF77:
	.string	"cfm_cb"
.LASF134:
	.string	"__mptr"
.LASF91:
	.string	"PBUF_RAM"
.LASF111:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF90:
	.string	"PBUF_RAW"
.LASF73:
	.string	"net_al_if_t"
.LASF116:
	.string	"payload_buf"
.LASF82:
	.string	"no_cck"
.LASF15:
	.string	"uint32_t"
.LASF93:
	.string	"PBUF_REF"
.LASF48:
	.string	"first"
.LASF104:
	.string	"MEMP_TCPIP_MSG_API"
.LASF17:
	.string	"char"
.LASF102:
	.string	"MEMP_NETBUF"
.LASF6:
	.string	"__uint16_t"
.LASF99:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF103:
	.string	"MEMP_NETCONN"
.LASF79:
	.string	"buf_rx"
.LASF96:
	.string	"MEMP_RAW_PCB"
.LASF108:
	.string	"MEMP_PBUF_POOL"
.LASF35:
	.string	"TID_MAX"
.LASF122:
	.string	"cnt_total"
.LASF137:
	.string	"_heap_wifi_size"
.LASF95:
	.string	"pbuf_free_custom_fn"
.LASF124:
	.string	"free_list"
.LASF119:
	.string	"pending_tx_list"
.LASF85:
	.string	"u16_t"
.LASF123:
	.string	"cnt_free"
.LASF76:
	.string	"net_buf"
.LASF143:
	.string	"memset"
.LASF74:
	.string	"net_al_tx_t"
.LASF110:
	.string	"lwip_internal_netif_client_data_index"
.LASF47:
	.string	"co_list"
.LASF128:
	.string	"pool"
.LASF75:
	.string	"net_al_tx_req"
.LASF13:
	.string	"uint8_t"
.LASF43:
	.string	"flags"
.LASF70:
	.string	"BROADCAST_STA_IDX_MAX"
.LASF59:
	.string	"TASK_APM"
.LASF89:
	.string	"PBUF_RAW_TX"
.LASF68:
	.string	"TASK_MAX"
.LASF46:
	.string	"co_list_hdr"
.LASF142:
	.string	"co_list_init"
.LASF69:
	.string	"BROADCAST_STA_IDX_MIN"
.LASF72:
	.string	"INVALID_STA_IDX"
.LASF107:
	.string	"MEMP_PBUF"
.LASF54:
	.string	"TASK_SCAN"
	.ident	"GCC: (GNU) 10.4.0"
