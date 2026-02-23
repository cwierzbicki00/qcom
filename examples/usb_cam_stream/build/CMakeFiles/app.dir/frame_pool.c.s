	.file	"frame_pool.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.pool_sem_put,"ax",@progbits
	.align	1
	.type	pool_sem_put, @function
pool_sem_put:
.LFB82:
	.file 1 ".\\examples\\usb_cam_stream\\frame_pool.c"
	.loc 1 62 1
	.cfi_startproc
	.loc 1 63 5
	lui	a5,%hi(.LANCHOR0)
	lw	a0,%lo(.LANCHOR0)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	tail	xQueueGenericSend
.LVL0:
	.cfi_endproc
.LFE82:
	.size	pool_sem_put, .-pool_sem_put
	.section	.text.pool_mtx_put,"ax",@progbits
	.align	1
	.type	pool_mtx_put, @function
pool_mtx_put:
.LFB80:
	.loc 1 52 1
	.cfi_startproc
	.loc 1 53 5
	lui	a5,%hi(.LANCHOR1)
	lw	a0,%lo(.LANCHOR1)(a5)
	li	a3,0
	li	a2,0
	li	a1,0
	tail	xQueueGenericSend
.LVL1:
	.cfi_endproc
.LFE80:
	.size	pool_mtx_put, .-pool_mtx_put
	.section	.text.pool_sem_get,"ax",@progbits
	.align	1
	.type	pool_sem_get, @function
pool_sem_get:
.LFB81:
	.loc 1 57 1
	.cfi_startproc
.LVL2:
	.loc 1 58 5
	.loc 1 58 13 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	.loc 1 57 1
	mv	a1,a0
	.loc 1 58 13
	lw	a0,%lo(.LANCHOR0)(a5)
.LVL3:
	.loc 1 57 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 58 13
	call	xQueueSemaphoreTake
.LVL4:
	.loc 1 59 1
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 58 100
	addi	a0,a0,-1
	snez	a0,a0
	.loc 1 59 1
	neg	a0,a0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE81:
	.size	pool_sem_get, .-pool_sem_get
	.section	.text.pool_mtx_get,"ax",@progbits
	.align	1
	.type	pool_mtx_get, @function
pool_mtx_get:
.LFB79:
	.loc 1 47 1 is_stmt 1
	.cfi_startproc
.LVL5:
	.loc 1 48 5
	.loc 1 48 13 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	.loc 1 47 1
	mv	a1,a0
	.loc 1 48 13
	lw	a0,%lo(.LANCHOR1)(a5)
.LVL6:
	.loc 1 47 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 48 13
	call	xQueueSemaphoreTake
.LVL7:
	.loc 1 49 1
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 48 100
	addi	a0,a0,-1
	snez	a0,a0
	.loc 1 49 1
	neg	a0,a0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE79:
	.size	pool_mtx_get, .-pool_mtx_get
	.section	.rodata.frame_pool_init.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"\033[0;31m[E][FPOOL] mutex create failed\r\n"
	.align	2
.LC1:
	.string	"\033[0;31m[E][FPOOL] semaphore create failed\r\n"
	.align	2
.LC2:
	.string	"\033[0;31m[E][FPOOL] block pool create failed (%d)\r\n"
	.align	2
.LC3:
	.string	"\033[0m[I][FPOOL] frame pool: %u blocks x %u KB in PSRAM (free %u)\r\n"
	.align	2
.LC4:
	.string	"\033[0;31m[E][FPOOL] frame queue create failed\r\n"
	.section	.text.frame_pool_init,"ax",@progbits
	.align	1
	.globl	frame_pool_init
	.type	frame_pool_init, @function
frame_pool_init:
.LFB83:
	.loc 1 71 1 is_stmt 1
	.cfi_startproc
	.loc 1 72 5
	.loc 1 71 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s1,20(sp)
	.cfi_offset 9, -12
	.loc 1 72 9
	lui	s1,%hi(.LANCHOR2)
	addi	s1,s1,%lo(.LANCHOR2)
	lbu	a5,0(s1)
	.loc 1 71 1
	sw	s0,24(sp)
	sw	ra,28(sp)
	sw	s2,16(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	.loc 1 72 9
	andi	a5,a5,0xff
	.loc 1 73 16
	li	s0,0
	.loc 1 72 8
	bne	a5,zero,.L7
	.loc 1 77 5 is_stmt 1
	.loc 1 77 16 is_stmt 0
	li	a0,1
	call	xQueueCreateMutex
.LVL8:
	.loc 1 77 14
	lui	a5,%hi(.LANCHOR1)
	sw	a0,%lo(.LANCHOR1)(a5)
	.loc 1 78 5 is_stmt 1
	.loc 1 78 8 is_stmt 0
	bne	a0,zero,.L9
	.loc 1 79 9 is_stmt 1
	lui	a0,%hi(.LC0)
	addi	a0,a0,%lo(.LC0)
.L15:
	.loc 1 85 9 is_stmt 0
	call	printf
.LVL9:
.L16:
	.loc 1 86 9 is_stmt 1
	.loc 1 86 16 is_stmt 0
	li	s0,-1
.L7:
	.loc 1 117 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,s0
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.L9:
	.cfi_restore_state
	.loc 1 83 5 is_stmt 1
	.loc 1 83 16 is_stmt 0
	li	a1,4
	li	a0,4
	call	xQueueCreateCountingSemaphore
.LVL10:
	.loc 1 83 14
	lui	a5,%hi(.LANCHOR0)
	sw	a0,%lo(.LANCHOR0)(a5)
	.loc 1 84 5 is_stmt 1
	.loc 1 84 8 is_stmt 0
	bne	a0,zero,.L10
	.loc 1 85 9 is_stmt 1
	lui	a0,%hi(.LC1)
	addi	a0,a0,%lo(.LC1)
	j	.L15
.L10:
	.loc 1 90 5
	.loc 1 90 15 is_stmt 0
	lui	s2,%hi(.LANCHOR3)
	li	a4,1310720
	lui	a3,%hi(pool_memory)
	addi	a4,a4,144
	addi	a3,a3,%lo(pool_memory)
	li	a2,6
	li	a1,327680
	addi	a0,s2,%lo(.LANCHOR3)
	call	qcc74x_block_pool_create
.LVL11:
	mv	s0,a0
.LVL12:
	.loc 1 93 5 is_stmt 1
	.loc 1 93 8 is_stmt 0
	beq	a0,zero,.L11
	.loc 1 94 9 is_stmt 1
	mv	a1,a0
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL13:
	.loc 1 95 9
	j	.L16
.L11:
	.loc 1 99 5
	lui	a2,%hi(pool_mtx_put)
	lui	a1,%hi(pool_mtx_get)
	addi	a2,a2,%lo(pool_mtx_put)
	addi	a1,a1,%lo(pool_mtx_get)
	addi	a0,s2,%lo(.LANCHOR3)
	call	qcc74x_block_pool_add_mtx
.LVL14:
	.loc 1 100 5
	lui	a2,%hi(pool_sem_put)
	lui	a1,%hi(pool_sem_get)
	addi	a2,a2,%lo(pool_sem_put)
	addi	a1,a1,%lo(pool_sem_get)
	addi	a0,s2,%lo(.LANCHOR3)
	call	qcc74x_block_pool_add_sem
.LVL15:
	.loc 1 102 5
	.loc 1 103 5
	addi	a2,sp,12
	addi	a1,sp,8
	addi	a0,s2,%lo(.LANCHOR3)
	call	qcc74x_block_pool_info_get
.LVL16:
	.loc 1 104 5
	lw	a3,12(sp)
	lw	a1,8(sp)
	lui	a0,%hi(.LC3)
	li	a2,320
	addi	a0,a0,%lo(.LC3)
	call	printf
.LVL17:
	.loc 1 108 5
	.loc 1 108 19 is_stmt 0
	li	a2,0
	li	a1,12
	li	a0,1
	call	xQueueGenericCreate
.LVL18:
	.loc 1 108 17
	lui	a5,%hi(.LANCHOR4)
	sw	a0,%lo(.LANCHOR4)(a5)
	.loc 1 109 5 is_stmt 1
	.loc 1 109 8 is_stmt 0
	bne	a0,zero,.L12
	.loc 1 110 9 is_stmt 1
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	j	.L15
.L12:
	.loc 1 114 5
	.loc 1 114 22 is_stmt 0
	lui	a5,%hi(.LANCHOR5)
	sw	zero,%lo(.LANCHOR5)(a5)
	.loc 1 115 5 is_stmt 1
	.loc 1 115 17 is_stmt 0
	li	a5,1
	sb	a5,0(s1)
	.loc 1 116 5 is_stmt 1
	.loc 1 116 12 is_stmt 0
	j	.L7
	.cfi_endproc
.LFE83:
	.size	frame_pool_init, .-frame_pool_init
	.section	.rodata.frame_alloc.str1.4,"aMS",@progbits,1
	.align	2
.LC5:
	.string	".\\examples\\usb_cam_stream\\frame_pool.c"
	.align	2
.LC6:
	.string	"file [%s]\r\n"
	.align	2
.LC7:
	.string	"func [%s]\r\n"
	.align	2
.LC8:
	.string	"line [%d]\r\n"
	.align	2
.LC9:
	.string	"initialised"
	.align	2
.LC10:
	.string	"%s\r\n"
	.align	2
.LC11:
	.string	"frame != NULL"
	.section	.text.frame_alloc,"ax",@progbits
	.align	1
	.globl	frame_alloc
	.type	frame_alloc, @function
frame_alloc:
.LFB84:
	.loc 1 120 1 is_stmt 1
	.cfi_startproc
.LVL19:
	.loc 1 121 5
	.loc 1 123 23 is_stmt 0
	lui	a5,%hi(.LANCHOR2)
	lbu	a5,%lo(.LANCHOR2)(a5)
	.loc 1 120 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 121 11
	sw	zero,12(sp)
	.loc 1 123 5 is_stmt 1
	.loc 1 123 23 is_stmt 0
	andi	a5,a5,0xff
	.loc 1 120 1
	mv	s0,a0
	.loc 1 123 8
	bne	a5,zero,.L18
	.loc 1 123 31 is_stmt 1 discriminator 1
	lui	a1,%hi(.LC5)
	lui	a0,%hi(.LC6)
.LVL20:
	addi	a1,a1,%lo(.LC5)
	addi	a0,a0,%lo(.LC6)
	call	printf
.LVL21:
	.loc 1 123 101 discriminator 1
	lui	a1,%hi(.LANCHOR6)
	lui	a0,%hi(.LC7)
	addi	a1,a1,%lo(.LANCHOR6)
	addi	a0,a0,%lo(.LC7)
	call	printf
.LVL22:
	.loc 1 123 140 discriminator 1
	lui	a0,%hi(.LC8)
	li	a1,123
	addi	a0,a0,%lo(.LC8)
	call	printf
.LVL23:
	.loc 1 123 170 discriminator 1
	lui	a1,%hi(.LC9)
	lui	a0,%hi(.LC10)
	addi	a1,a1,%lo(.LC9)
	addi	a0,a0,%lo(.LC10)
	call	printf
.LVL24:
	.loc 1 123 219 discriminator 1
	call	vAssertCalled
.LVL25:
.L18:
	.loc 1 123 237 discriminator 3
	.loc 1 124 5 discriminator 3
	.loc 1 124 8 is_stmt 0 discriminator 3
	bne	s0,zero,.L19
	.loc 1 124 14 is_stmt 1 discriminator 1
	lui	a1,%hi(.LC5)
	lui	a0,%hi(.LC6)
	addi	a1,a1,%lo(.LC5)
	addi	a0,a0,%lo(.LC6)
	call	printf
.LVL26:
	.loc 1 124 84 discriminator 1
	lui	a1,%hi(.LANCHOR6)
	lui	a0,%hi(.LC7)
	addi	a1,a1,%lo(.LANCHOR6)
	addi	a0,a0,%lo(.LC7)
	call	printf
.LVL27:
	.loc 1 124 123 discriminator 1
	lui	a0,%hi(.LC8)
	li	a1,124
	addi	a0,a0,%lo(.LC8)
	call	printf
.LVL28:
	.loc 1 124 153 discriminator 1
	lui	a1,%hi(.LC11)
	lui	a0,%hi(.LC10)
	addi	a1,a1,%lo(.LC11)
	addi	a0,a0,%lo(.LC10)
	call	printf
.LVL29:
	.loc 1 124 204 discriminator 1
	call	vAssertCalled
.LVL30:
.L19:
	.loc 1 124 222 discriminator 3
	.loc 1 127 5 discriminator 3
	.loc 1 127 9 is_stmt 0 discriminator 3
	lui	a0,%hi(.LANCHOR3)
	li	a2,0
	addi	a1,sp,12
	addi	a0,a0,%lo(.LANCHOR3)
	call	qcc74x_block_pool_alloc
.LVL31:
	.loc 1 127 8 discriminator 3
	bne	a0,zero,.L21
	.loc 1 131 5 is_stmt 1
	.loc 1 131 17 is_stmt 0
	lw	a5,12(sp)
	.loc 1 132 16
	sw	zero,4(s0)
	.loc 1 133 25
	sw	zero,8(s0)
	.loc 1 131 17
	sw	a5,0(s0)
	.loc 1 132 5 is_stmt 1
	.loc 1 133 5
	.loc 1 134 5
.L17:
	.loc 1 135 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL32:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL33:
.L21:
	.cfi_restore_state
	.loc 1 128 16
	li	a0,-1
	j	.L17
	.cfi_endproc
.LFE84:
	.size	frame_alloc, .-frame_alloc
	.section	.text.frame_free,"ax",@progbits
	.align	1
	.globl	frame_free
	.type	frame_free, @function
frame_free:
.LFB85:
	.loc 1 138 1 is_stmt 1
	.cfi_startproc
.LVL34:
	.loc 1 139 5
	.loc 1 139 8 is_stmt 0
	beq	a0,zero,.L32
	.loc 1 139 23 discriminator 1
	lw	a1,0(a0)
	.loc 1 139 15 discriminator 1
	beq	a1,zero,.L32
	.loc 1 138 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	mv	s0,a0
	.loc 1 140 9 is_stmt 1
	lui	a0,%hi(.LANCHOR3)
.LVL35:
	addi	a0,a0,%lo(.LANCHOR3)
	.loc 1 138 1 is_stmt 0
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 140 9
	call	qcc74x_block_pool_free
.LVL36:
	.loc 1 141 9 is_stmt 1
	.loc 1 144 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 141 21
	sw	zero,0(s0)
	.loc 1 142 9 is_stmt 1
	.loc 1 142 20 is_stmt 0
	sw	zero,4(s0)
	.loc 1 144 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL37:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL38:
.L32:
	ret
	.cfi_endproc
.LFE85:
	.size	frame_free, .-frame_free
	.section	.rodata.frame_queue_push.str1.4,"aMS",@progbits,1
	.align	2
.LC12:
	.string	"\033[0;31m[E][FPOOL] frame queue push failed\r\n"
	.section	.text.frame_queue_push,"ax",@progbits
	.align	1
	.globl	frame_queue_push
	.type	frame_queue_push, @function
frame_queue_push:
.LFB86:
	.loc 1 147 1 is_stmt 1
	.cfi_startproc
.LVL39:
	.loc 1 149 5
	.loc 1 150 5
	.loc 1 151 5
	.loc 1 147 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	sw	s3,44(sp)
	sw	ra,60(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.loc 1 147 1
	mv	s1,a0
	.loc 1 150 14
	li	s0,0
	.loc 1 151 12
	lui	s2,%hi(.LANCHOR4)
	.loc 1 151 11
	li	s3,1
.LVL40:
.L36:
	.loc 1 151 11 is_stmt 1
	.loc 1 151 12 is_stmt 0
	lw	a0,%lo(.LANCHOR4)(s2)
	li	a2,0
	addi	a1,sp,8
	call	xQueueReceive
.LVL41:
	addi	a6,s2,%lo(.LANCHOR4)
	.loc 1 151 11
	beq	a0,s3,.L37
	.loc 1 155 5 is_stmt 1
	.loc 1 155 8 is_stmt 0
	beq	s0,zero,.L38
	.loc 1 156 9 is_stmt 1
	.loc 1 156 26 is_stmt 0
	lui	a5,%hi(.LANCHOR5)
	addi	a5,a5,%lo(.LANCHOR5)
	lw	a4,0(a5)
	add	s0,a4,s0
.LVL42:
	sw	s0,0(a5)
.L38:
	.loc 1 159 5 is_stmt 1
	.loc 1 159 9 is_stmt 0
	lw	a0,0(a6)
	li	a3,0
	li	a2,0
	mv	a1,s1
	call	xQueueGenericSend
.LVL43:
	.loc 1 159 8
	li	a5,1
	beq	a0,a5,.L35
.LBB2:
	.loc 1 161 9 is_stmt 1
	.loc 1 161 17 is_stmt 0
	li	a2,12
	mv	a1,s1
	addi	a0,sp,20
	call	memcpy
.LVL44:
	.loc 1 162 9 is_stmt 1
	addi	a0,sp,20
	call	frame_free
.LVL45:
	.loc 1 163 9
	lui	a0,%hi(.LC12)
	addi	a0,a0,%lo(.LC12)
	call	printf
.LVL46:
.L35:
.LBE2:
	.loc 1 165 1 is_stmt 0
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	lw	s1,52(sp)
	.cfi_restore 9
.LVL47:
	lw	s2,48(sp)
	.cfi_restore 18
	lw	s3,44(sp)
	.cfi_restore 19
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL48:
.L37:
	.cfi_restore_state
	.loc 1 152 9 is_stmt 1
	addi	a0,sp,8
	call	frame_free
.LVL49:
	.loc 1 153 9
	.loc 1 153 16 is_stmt 0
	addi	s0,s0,1
.LVL50:
	j	.L36
	.cfi_endproc
.LFE86:
	.size	frame_queue_push, .-frame_queue_push
	.section	.text.frame_queue_pop,"ax",@progbits
	.align	1
	.globl	frame_queue_pop
	.type	frame_queue_pop, @function
frame_queue_pop:
.LFB87:
	.loc 1 168 1 is_stmt 1
	.cfi_startproc
.LVL51:
	.loc 1 169 5
	.loc 1 168 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 168 1
	mv	a2,a1
	.loc 1 169 46
	beq	a1,zero,.L45
	.loc 1 169 99 discriminator 1
	li	a5,1000
	mul	a2,a1,a5
	.loc 1 169 46 discriminator 1
	divu	a2,a2,a5
.L45:
.LVL52:
	.loc 1 171 5 is_stmt 1 discriminator 4
	.loc 1 171 9 is_stmt 0 discriminator 4
	lui	a5,%hi(.LANCHOR4)
	mv	a1,a0
.LVL53:
	lw	a0,%lo(.LANCHOR4)(a5)
.LVL54:
	call	xQueueReceive
.LVL55:
	.loc 1 175 1 discriminator 4
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 171 8 discriminator 4
	addi	a0,a0,-1
	snez	a0,a0
	.loc 1 175 1 discriminator 4
	neg	a0,a0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE87:
	.size	frame_queue_pop, .-frame_queue_pop
	.section	.rodata.frame_queue_pop_latest.str1.4,"aMS",@progbits,1
	.align	2
.LC13:
	.string	"\033[0;33m[W][FPOOL] dropped %u stale queued frames (total=%u)\r\n"
	.section	.text.frame_queue_pop_latest,"ax",@progbits
	.align	1
	.globl	frame_queue_pop_latest
	.type	frame_queue_pop_latest, @function
frame_queue_pop_latest:
.LFB88:
	.loc 1 178 1 is_stmt 1
	.cfi_startproc
.LVL56:
	.loc 1 179 5
	.loc 1 178 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s2,32(sp)
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s3,28(sp)
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	.loc 1 178 1
	mv	s2,a0
	mv	a2,a1
	.loc 1 179 46
	beq	a1,zero,.L51
	.loc 1 179 99 discriminator 1
	li	a5,1000
	mul	a2,a1,a5
	.loc 1 179 46 discriminator 1
	divu	a2,a2,a5
.L51:
.LVL57:
	.loc 1 180 5 is_stmt 1 discriminator 4
	.loc 1 181 5 discriminator 4
	.loc 1 183 5 discriminator 4
	.loc 1 183 9 is_stmt 0 discriminator 4
	lui	s1,%hi(.LANCHOR4)
	lw	a0,%lo(.LANCHOR4)(s1)
.LVL58:
	mv	a1,s2
.LVL59:
	addi	s1,s1,%lo(.LANCHOR4)
	call	xQueueReceive
.LVL60:
	.loc 1 183 8 discriminator 4
	li	a4,1
	.loc 1 184 16 discriminator 4
	li	a5,-1
	.loc 1 183 8 discriminator 4
	bne	a0,a4,.L50
	.loc 1 181 14
	li	s0,0
	.loc 1 187 11
	li	s3,1
.LVL61:
.L53:
	.loc 1 187 11 is_stmt 1
	.loc 1 187 12 is_stmt 0
	lw	a0,0(s1)
	li	a2,0
	addi	a1,sp,4
	call	xQueueReceive
.LVL62:
	.loc 1 187 11
	beq	a0,s3,.L54
	.loc 1 193 5 is_stmt 1
	.loc 1 193 8 is_stmt 0
	bne	s0,zero,.L55
.L62:
	.loc 1 201 12
	li	a5,0
.LVL63:
.L50:
	.loc 1 202 1
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
.LVL64:
	lw	s3,28(sp)
	.cfi_restore 19
	mv	a0,a5
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL65:
.L54:
	.cfi_restore_state
	.loc 1 188 9 is_stmt 1
	mv	a0,s2
	call	frame_free
.LVL66:
	.loc 1 189 9
	.loc 1 189 16 is_stmt 0
	li	a2,12
	addi	a1,sp,4
	mv	a0,s2
	call	memcpy
.LVL67:
	.loc 1 190 9 is_stmt 1
	.loc 1 190 16 is_stmt 0
	addi	s0,s0,1
.LVL68:
	j	.L53
.L55:
	.loc 1 194 9 is_stmt 1
	.loc 1 194 26 is_stmt 0
	lui	a5,%hi(.LANCHOR5)
	addi	a5,a5,%lo(.LANCHOR5)
	lw	a4,0(a5)
	add	a4,a4,s0
	sw	a4,0(a5)
	.loc 1 195 9 is_stmt 1
	.loc 1 195 31 is_stmt 0
	lw	a4,0(a5)
	andi	a4,a4,63
	.loc 1 195 12
	bne	a4,zero,.L62
	.loc 1 196 13 is_stmt 1
	lw	a2,0(a5)
	lui	a0,%hi(.LC13)
	mv	a1,s0
	addi	a0,a0,%lo(.LC13)
	call	printf
.LVL69:
	j	.L62
	.cfi_endproc
.LFE88:
	.size	frame_queue_pop_latest, .-frame_queue_pop_latest
	.section	.rodata.frame_queue_drain.str1.4,"aMS",@progbits,1
	.align	2
.LC14:
	.string	"\033[0m[I][FPOOL] drained %u queued frames\r\n"
	.section	.text.frame_queue_drain,"ax",@progbits
	.align	1
	.globl	frame_queue_drain
	.type	frame_queue_drain, @function
frame_queue_drain:
.LFB89:
	.loc 1 205 1
	.cfi_startproc
	.loc 1 206 5
	.loc 1 207 5
.LVL70:
	.loc 1 209 5
	.loc 1 205 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.loc 1 207 14
	li	s0,0
	.loc 1 209 12
	lui	s2,%hi(.LANCHOR4)
	.loc 1 209 11
	li	s1,1
.LVL71:
.L64:
	.loc 1 209 11 is_stmt 1
	.loc 1 209 12 is_stmt 0
	lw	a0,%lo(.LANCHOR4)(s2)
	li	a2,0
	addi	a1,sp,4
	call	xQueueReceive
.LVL72:
	.loc 1 209 11
	beq	a0,s1,.L65
	.loc 1 214 5 is_stmt 1
	.loc 1 214 8 is_stmt 0
	beq	s0,zero,.L63
	.loc 1 215 9 is_stmt 1
	lui	a0,%hi(.LC14)
	mv	a1,s0
	addi	a0,a0,%lo(.LC14)
	call	printf
.LVL73:
.L63:
	.loc 1 217 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL74:
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL75:
.L65:
	.cfi_restore_state
	.loc 1 210 9 is_stmt 1
	addi	a0,sp,4
	call	frame_free
.LVL76:
	.loc 1 211 9
	.loc 1 211 16 is_stmt 0
	addi	s0,s0,1
.LVL77:
	j	.L64
	.cfi_endproc
.LFE89:
	.size	frame_queue_drain, .-frame_queue_drain
	.section	.text.frame_queue_drop_oldest,"ax",@progbits
	.align	1
	.globl	frame_queue_drop_oldest
	.type	frame_queue_drop_oldest, @function
frame_queue_drop_oldest:
.LFB90:
	.loc 1 220 1 is_stmt 1
	.cfi_startproc
	.loc 1 221 5
	.loc 1 223 5
	.loc 1 223 9 is_stmt 0
	lui	a5,%hi(.LANCHOR4)
	lw	a0,%lo(.LANCHOR4)(a5)
	.loc 1 223 8
	bne	a0,zero,.L72
	.loc 1 224 15
	li	a0,0
	.loc 1 233 1
	ret
.L74:
	.cfi_def_cfa_offset 32
	.cfi_offset 1, -4
	.loc 1 224 15
	li	a0,0
.L73:
	.loc 1 233 1
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.L72:
	.loc 1 227 5 is_stmt 1
	.loc 1 220 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 227 9
	li	a2,0
	addi	a1,sp,4
	.loc 1 220 1
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 227 9
	call	xQueueReceive
.LVL78:
	.loc 1 227 8
	li	a5,1
	bne	a0,a5,.L74
	.loc 1 231 5 is_stmt 1
	addi	a0,sp,4
	call	frame_free
.LVL79:
	.loc 1 232 5
	.loc 1 232 11 is_stmt 0
	li	a0,1
	j	.L73
	.cfi_endproc
.LFE90:
	.size	frame_queue_drop_oldest, .-frame_queue_drop_oldest
	.section	.text.frame_pool_stats,"ax",@progbits
	.align	1
	.globl	frame_pool_stats
	.type	frame_pool_stats, @function
frame_pool_stats:
.LFB91:
	.loc 1 237 1 is_stmt 1
	.cfi_startproc
.LVL80:
	.loc 1 238 5
	.loc 1 237 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.loc 1 237 1
	mv	s1,a0
	mv	s0,a1
	mv	s2,a2
	.loc 1 238 8
	bne	a0,zero,.L79
	.loc 1 238 15 discriminator 1
	beq	a1,zero,.L80
.L79:
.LBB3:
	.loc 1 239 9 is_stmt 1
	.loc 1 240 9 is_stmt 0
	lui	a0,%hi(.LANCHOR3)
.LVL81:
	addi	a2,sp,12
.LVL82:
	addi	a1,sp,8
.LVL83:
	addi	a0,a0,%lo(.LANCHOR3)
	.loc 1 239 18
	sw	zero,8(sp)
	.loc 1 239 25
	sw	zero,12(sp)
	.loc 1 240 9 is_stmt 1
	call	qcc74x_block_pool_info_get
.LVL84:
	.loc 1 241 9
	.loc 1 241 12 is_stmt 0
	beq	s1,zero,.L81
	.loc 1 241 20 is_stmt 1 discriminator 1
	.loc 1 241 27 is_stmt 0 discriminator 1
	lw	a5,8(sp)
	sw	a5,0(s1)
.L81:
	.loc 1 242 9 is_stmt 1
	.loc 1 242 12 is_stmt 0
	beq	s0,zero,.L80
	.loc 1 242 25 is_stmt 1 discriminator 1
	.loc 1 242 37 is_stmt 0 discriminator 1
	lw	a5,12(sp)
	sw	a5,0(s0)
.L80:
.LBE3:
	.loc 1 245 5 is_stmt 1
	.loc 1 245 8 is_stmt 0
	beq	s2,zero,.L78
	.loc 1 246 9 is_stmt 1
	.loc 1 246 29 is_stmt 0
	lui	a5,%hi(.LANCHOR4)
	lw	a0,%lo(.LANCHOR4)(a5)
	call	uxQueueMessagesWaiting
.LVL85:
	.loc 1 246 17
	sw	a0,0(s2)
.L78:
	.loc 1 248 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL86:
	lw	s1,20(sp)
	.cfi_restore 9
.LVL87:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL88:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE91:
	.size	frame_pool_stats, .-frame_pool_stats
	.section	.bss.blk_pool,"aw",@nobits
	.align	2
	.set	.LANCHOR3,. + 0
	.type	blk_pool, @object
	.size	blk_pool, 44
blk_pool:
	.zero	44
	.section	.bss.frame_queue,"aw",@nobits
	.align	2
	.set	.LANCHOR4,. + 0
	.type	frame_queue, @object
	.size	frame_queue, 4
frame_queue:
	.zero	4
	.section	.bss.initialised,"aw",@nobits
	.set	.LANCHOR2,. + 0
	.type	initialised, @object
	.size	initialised, 1
initialised:
	.zero	1
	.section	.bss.pool_mtx,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	pool_mtx, @object
	.size	pool_mtx, 4
pool_mtx:
	.zero	4
	.section	.bss.pool_sem,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	pool_sem, @object
	.size	pool_sem, 4
pool_sem:
	.zero	4
	.section	.bss.stale_drop_total,"aw",@nobits
	.align	2
	.set	.LANCHOR5,. + 0
	.type	stale_drop_total, @object
	.size	stale_drop_total, 4
stale_drop_total:
	.zero	4
	.section	.psram_noinit,"aw"
	.align	6
	.type	pool_memory, @object
	.size	pool_memory, 1310864
pool_memory:
	.zero	1310864
	.section	.rodata.__FUNCTION__.0,"a"
	.align	2
	.set	.LANCHOR6,. + 0
	.type	__FUNCTION__.0, @object
	.size	__FUNCTION__.0, 12
__FUNCTION__.0:
	.string	"frame_alloc"
	.text
.Letext0:
	.file 2 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\machine\\_default_types.h"
	.file 3 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\sys\\_stdint.h"
	.file 4 ".\\examples\\usb_cam_stream\\frame_pool.h"
	.file 5 ".\\components\\os\\freertos\\portable\\GCC\\RISC-V\\common/portmacro.h"
	.file 6 ".\\components\\os\\freertos\\include/queue.h"
	.file 7 ".\\components\\os\\freertos\\include/semphr.h"
	.file 8 ".\\components\\utils\\qcc74x_block_pool/qcc74x_block_pool.h"
	.file 9 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\stdio.h"
	.file 10 ".\\examples\\usb_cam_stream\\freertosconfig.h"
	.file 11 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xb25
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF83
	.byte	0xc
	.4byte	.LASF84
	.4byte	.LASF85
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
	.4byte	0xa7
	.byte	0x6
	.byte	0xc
	.byte	0x4
	.byte	0x14
	.byte	0x9
	.4byte	0xe9
	.byte	0x7
	.4byte	.LASF15
	.byte	0x4
	.byte	0x15
	.byte	0xe
	.4byte	0xe9
	.byte	0
	.byte	0x8
	.string	"len"
	.byte	0x4
	.byte	0x16
	.byte	0xe
	.4byte	0xa7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.byte	0x4
	.byte	0x17
	.byte	0xe
	.4byte	0xa7
	.byte	0x8
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0x8f
	.byte	0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x18
	.byte	0x3
	.4byte	0xb8
	.byte	0xa
	.4byte	0xef
	.byte	0xb
	.byte	0x4
	.byte	0x9
	.byte	0x4
	.4byte	0x108
	.byte	0xc
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF18
	.byte	0xa
	.4byte	0x109
	.byte	0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x42
	.byte	0x11
	.4byte	0x9b
	.byte	0x3
	.4byte	.LASF20
	.byte	0x5
	.byte	0x44
	.byte	0x12
	.4byte	0xa7
	.byte	0x3
	.4byte	.LASF21
	.byte	0x6
	.byte	0x33
	.byte	0x22
	.4byte	0x139
	.byte	0x9
	.byte	0x4
	.4byte	0x13f
	.byte	0xd
	.4byte	.LASF86
	.byte	0x3
	.4byte	.LASF22
	.byte	0x7
	.byte	0x26
	.byte	0x17
	.4byte	0x12d
	.byte	0x6
	.byte	0x2c
	.byte	0x8
	.byte	0x13
	.byte	0x9
	.4byte	0x1e9
	.byte	0x7
	.4byte	.LASF23
	.byte	0x8
	.byte	0x14
	.byte	0xb
	.4byte	0x100
	.byte	0
	.byte	0x7
	.4byte	.LASF24
	.byte	0x8
	.byte	0x15
	.byte	0xb
	.4byte	0x100
	.byte	0x4
	.byte	0x7
	.4byte	.LASF25
	.byte	0x8
	.byte	0x16
	.byte	0xb
	.4byte	0x100
	.byte	0x8
	.byte	0x7
	.4byte	.LASF26
	.byte	0x8
	.byte	0x17
	.byte	0xe
	.4byte	0xa7
	.byte	0xc
	.byte	0x7
	.4byte	.LASF27
	.byte	0x8
	.byte	0x18
	.byte	0xe
	.4byte	0xa7
	.byte	0x10
	.byte	0x7
	.4byte	.LASF28
	.byte	0x8
	.byte	0x19
	.byte	0xe
	.4byte	0xa7
	.byte	0x14
	.byte	0x7
	.4byte	.LASF29
	.byte	0x8
	.byte	0x1a
	.byte	0xe
	.4byte	0xa7
	.byte	0x18
	.byte	0x7
	.4byte	.LASF30
	.byte	0x8
	.byte	0x1c
	.byte	0xb
	.4byte	0x1f8
	.byte	0x1c
	.byte	0x7
	.4byte	.LASF31
	.byte	0x8
	.byte	0x1d
	.byte	0xc
	.4byte	0x102
	.byte	0x20
	.byte	0x7
	.4byte	.LASF32
	.byte	0x8
	.byte	0x1e
	.byte	0xb
	.4byte	0x1f8
	.byte	0x24
	.byte	0x7
	.4byte	.LASF33
	.byte	0x8
	.byte	0x1f
	.byte	0xc
	.4byte	0x102
	.byte	0x28
	.byte	0
	.byte	0xe
	.4byte	0x81
	.4byte	0x1f8
	.byte	0xf
	.4byte	0xa7
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0x1e9
	.byte	0x3
	.4byte	.LASF34
	.byte	0x8
	.byte	0x20
	.byte	0x3
	.4byte	0x150
	.byte	0x10
	.4byte	0x8f
	.4byte	0x21d
	.byte	0x11
	.4byte	0x88
	.4byte	0x14008f
	.byte	0
	.byte	0x12
	.4byte	.LASF87
	.byte	0x1
	.byte	0x1b
	.byte	0x10
	.4byte	0x20a
	.byte	0x40
	.byte	0x5
	.byte	0x3
	.4byte	pool_memory
	.byte	0x13
	.4byte	.LASF35
	.byte	0x1
	.byte	0x22
	.byte	0x1c
	.4byte	0x1fe
	.byte	0x5
	.byte	0x3
	.4byte	blk_pool
	.byte	0x13
	.4byte	.LASF36
	.byte	0x1
	.byte	0x23
	.byte	0x16
	.4byte	0x12d
	.byte	0x5
	.byte	0x3
	.4byte	frame_queue
	.byte	0x13
	.4byte	.LASF37
	.byte	0x1
	.byte	0x24
	.byte	0x1a
	.4byte	0x144
	.byte	0x5
	.byte	0x3
	.4byte	pool_mtx
	.byte	0x13
	.4byte	.LASF38
	.byte	0x1
	.byte	0x25
	.byte	0x1a
	.4byte	0x144
	.byte	0x5
	.byte	0x3
	.4byte	pool_sem
	.byte	0x13
	.4byte	.LASF39
	.byte	0x1
	.byte	0x26
	.byte	0x1a
	.4byte	0xb3
	.byte	0x5
	.byte	0x3
	.4byte	stale_drop_total
	.byte	0x13
	.4byte	.LASF40
	.byte	0x1
	.byte	0x28
	.byte	0x1d
	.4byte	0x2a3
	.byte	0x5
	.byte	0x3
	.4byte	initialised
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF41
	.byte	0x5
	.4byte	0x29c
	.byte	0x14
	.4byte	.LASF46
	.byte	0x1
	.byte	0xeb
	.byte	0x6
	.4byte	.LFB91
	.4byte	.LFE91-.LFB91
	.byte	0x1
	.byte	0x9c
	.4byte	0x33f
	.byte	0x15
	.4byte	.LASF42
	.byte	0x1
	.byte	0xeb
	.byte	0x21
	.4byte	0x33f
	.4byte	.LLST14
	.byte	0x15
	.4byte	.LASF43
	.byte	0x1
	.byte	0xeb
	.byte	0x32
	.4byte	0x33f
	.4byte	.LLST15
	.byte	0x15
	.4byte	.LASF44
	.byte	0x1
	.byte	0xec
	.byte	0x21
	.4byte	0x33f
	.4byte	.LLST16
	.byte	0x16
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x335
	.byte	0x17
	.string	"t"
	.byte	0x1
	.byte	0xef
	.byte	0x12
	.4byte	0xa7
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x17
	.string	"f"
	.byte	0x1
	.byte	0xef
	.byte	0x19
	.4byte	0xa7
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x18
	.4byte	.LVL84
	.4byte	0xa62
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR3
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL85
	.4byte	0xa6e
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0xa7
	.byte	0x1b
	.4byte	.LASF50
	.byte	0x1
	.byte	0xdb
	.byte	0x5
	.4byte	0x29c
	.4byte	.LFB90
	.4byte	.LFE90-.LFB90
	.byte	0x1
	.byte	0x9c
	.4byte	0x398
	.byte	0x13
	.4byte	.LASF45
	.byte	0x1
	.byte	0xdd
	.byte	0xd
	.4byte	0xef
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x1c
	.4byte	.LVL78
	.4byte	0xa7b
	.4byte	0x387
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x18
	.4byte	.LVL79
	.4byte	0x64f
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LASF47
	.byte	0x1
	.byte	0xcc
	.byte	0x6
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.byte	0x1
	.byte	0x9c
	.4byte	0x414
	.byte	0x13
	.4byte	.LASF48
	.byte	0x1
	.byte	0xce
	.byte	0xd
	.4byte	0xef
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x1d
	.4byte	.LASF49
	.byte	0x1
	.byte	0xcf
	.byte	0xe
	.4byte	0xa7
	.4byte	.LLST13
	.byte	0x1c
	.4byte	.LVL72
	.4byte	0xa7b
	.4byte	0x3e6
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1c
	.4byte	.LVL73
	.4byte	0xa88
	.4byte	0x403
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL76
	.4byte	0x64f
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LASF51
	.byte	0x1
	.byte	0xb1
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.byte	0x1
	.byte	0x9c
	.4byte	0x4f7
	.byte	0x15
	.4byte	.LASF48
	.byte	0x1
	.byte	0xb1
	.byte	0x25
	.4byte	0x4f7
	.4byte	.LLST9
	.byte	0x15
	.4byte	.LASF52
	.byte	0x1
	.byte	0xb1
	.byte	0x35
	.4byte	0xa7
	.4byte	.LLST10
	.byte	0x1d
	.4byte	.LASF53
	.byte	0x1
	.byte	0xb3
	.byte	0x10
	.4byte	0x121
	.4byte	.LLST11
	.byte	0x13
	.4byte	.LASF54
	.byte	0x1
	.byte	0xb4
	.byte	0xd
	.4byte	0xef
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x1d
	.4byte	.LASF55
	.byte	0x1
	.byte	0xb5
	.byte	0xe
	.4byte	0xa7
	.4byte	.LLST12
	.byte	0x1c
	.4byte	.LVL60
	.4byte	0xa7b
	.4byte	0x491
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LVL62
	.4byte	0xa7b
	.4byte	0x4aa
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1c
	.4byte	.LVL66
	.4byte	0x64f
	.4byte	0x4be
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LVL67
	.4byte	0xa94
	.4byte	0x4dd
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x18
	.4byte	.LVL69
	.4byte	0xa88
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0xef
	.byte	0x1b
	.4byte	.LASF56
	.byte	0x1
	.byte	0xa7
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.byte	0x1
	.byte	0x9c
	.4byte	0x559
	.byte	0x15
	.4byte	.LASF48
	.byte	0x1
	.byte	0xa7
	.byte	0x1e
	.4byte	0x4f7
	.4byte	.LLST6
	.byte	0x15
	.4byte	.LASF52
	.byte	0x1
	.byte	0xa7
	.byte	0x2e
	.4byte	0xa7
	.4byte	.LLST7
	.byte	0x1d
	.4byte	.LASF53
	.byte	0x1
	.byte	0xa9
	.byte	0x10
	.4byte	0x121
	.4byte	.LLST8
	.byte	0x18
	.4byte	.LVL55
	.4byte	0xa7b
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LASF57
	.byte	0x1
	.byte	0x92
	.byte	0x6
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.byte	0x1
	.byte	0x9c
	.4byte	0x649
	.byte	0x15
	.4byte	.LASF48
	.byte	0x1
	.byte	0x92
	.byte	0x26
	.4byte	0x649
	.4byte	.LLST4
	.byte	0x13
	.4byte	.LASF58
	.byte	0x1
	.byte	0x95
	.byte	0xd
	.4byte	0xef
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x1d
	.4byte	.LASF55
	.byte	0x1
	.byte	0x96
	.byte	0xe
	.4byte	0xa7
	.4byte	.LLST5
	.byte	0x16
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x601
	.byte	0x17
	.string	"tmp"
	.byte	0x1
	.byte	0xa1
	.byte	0x11
	.4byte	0xef
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x1c
	.4byte	.LVL44
	.4byte	0xa94
	.4byte	0x5d9
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x1c
	.4byte	.LVL45
	.4byte	0x64f
	.4byte	0x5ed
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0
	.byte	0x18
	.4byte	.LVL46
	.4byte	0xa88
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LVL41
	.4byte	0xa7b
	.4byte	0x61a
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1c
	.4byte	.LVL43
	.4byte	0xa9f
	.4byte	0x638
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0x19
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x18
	.4byte	.LVL49
	.4byte	0x64f
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0xfb
	.byte	0x14
	.4byte	.LASF59
	.byte	0x1
	.byte	0x89
	.byte	0x6
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.byte	0x1
	.byte	0x9c
	.4byte	0x689
	.byte	0x15
	.4byte	.LASF48
	.byte	0x1
	.byte	0x89
	.byte	0x1a
	.4byte	0x4f7
	.4byte	.LLST3
	.byte	0x18
	.4byte	.LVL36
	.4byte	0xaac
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR3
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LASF60
	.byte	0x1
	.byte	0x77
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.byte	0x1
	.byte	0x9c
	.4byte	0x7fc
	.byte	0x15
	.4byte	.LASF48
	.byte	0x1
	.byte	0x77
	.byte	0x1a
	.4byte	0x4f7
	.4byte	.LLST2
	.byte	0x17
	.string	"blk"
	.byte	0x1
	.byte	0x79
	.byte	0xb
	.4byte	0x100
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x1e
	.4byte	.LASF88
	.4byte	0x80c
	.byte	0x5
	.byte	0x3
	.4byte	__FUNCTION__.0
	.byte	0x1c
	.4byte	.LVL21
	.4byte	0xa88
	.4byte	0x6f1
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x1c
	.4byte	.LVL22
	.4byte	0xa88
	.4byte	0x711
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR6
	.byte	0
	.byte	0x1c
	.4byte	.LVL23
	.4byte	0xa88
	.4byte	0x72e
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x7b
	.byte	0
	.byte	0x1c
	.4byte	.LVL24
	.4byte	0xa88
	.4byte	0x74e
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0x1a
	.4byte	.LVL25
	.4byte	0xab8
	.byte	0x1c
	.4byte	.LVL26
	.4byte	0xa88
	.4byte	0x777
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x1c
	.4byte	.LVL27
	.4byte	0xa88
	.4byte	0x797
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR6
	.byte	0
	.byte	0x1c
	.4byte	.LVL28
	.4byte	0xa88
	.4byte	0x7b4
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x7c
	.byte	0
	.byte	0x1c
	.4byte	.LVL29
	.4byte	0xa88
	.4byte	0x7d4
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.byte	0x1a
	.4byte	.LVL30
	.4byte	0xab8
	.byte	0x18
	.4byte	.LVL31
	.4byte	0xac4
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR3
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	0x110
	.4byte	0x80c
	.byte	0x1f
	.4byte	0x88
	.byte	0xb
	.byte	0
	.byte	0xa
	.4byte	0x7fc
	.byte	0x1b
	.4byte	.LASF61
	.byte	0x1
	.byte	0x46
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.byte	0x1
	.byte	0x9c
	.4byte	0x98a
	.byte	0x17
	.string	"ret"
	.byte	0x1
	.byte	0x5a
	.byte	0x9
	.4byte	0x81
	.byte	0x1
	.byte	0x58
	.byte	0x13
	.4byte	.LASF42
	.byte	0x1
	.byte	0x66
	.byte	0xe
	.4byte	0xa7
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x13
	.4byte	.LASF62
	.byte	0x1
	.byte	0x66
	.byte	0x15
	.4byte	0xa7
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x1c
	.4byte	.LVL8
	.4byte	0xad0
	.4byte	0x86a
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x1a
	.4byte	.LVL9
	.4byte	0xa88
	.byte	0x1c
	.4byte	.LVL10
	.4byte	0xadd
	.4byte	0x88b
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x34
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0x1c
	.4byte	.LVL11
	.4byte	0xaea
	.4byte	0x8c0
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR3
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x44
	.byte	0x3e
	.byte	0x24
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x36
	.byte	0x19
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	pool_memory
	.byte	0x19
	.byte	0x1
	.byte	0x5e
	.byte	0x5
	.byte	0xc
	.4byte	0x140090
	.byte	0
	.byte	0x1c
	.4byte	.LVL13
	.4byte	0xa88
	.4byte	0x8dd
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LVL14
	.4byte	0xaf6
	.4byte	0x906
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR3
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	pool_mtx_get
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	pool_mtx_put
	.byte	0
	.byte	0x1c
	.4byte	.LVL15
	.4byte	0xb02
	.4byte	0x92f
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR3
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	pool_sem_get
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	pool_sem_put
	.byte	0
	.byte	0x1c
	.4byte	.LVL16
	.4byte	0xa62
	.4byte	0x952
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR3
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x1c
	.4byte	.LVL17
	.4byte	0xa88
	.4byte	0x970
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x140
	.byte	0
	.byte	0x18
	.4byte	.LVL18
	.4byte	0xb0e
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x3c
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x20
	.4byte	.LASF64
	.byte	0x1
	.byte	0x3d
	.byte	0xd
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.byte	0x1
	.byte	0x9c
	.4byte	0x9ba
	.byte	0x21
	.4byte	.LVL0
	.4byte	0xa9f
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
	.byte	0x19
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LASF66
	.byte	0x1
	.byte	0x38
	.byte	0xc
	.4byte	0x81
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.byte	0x1
	.byte	0x9c
	.4byte	0x9f6
	.byte	0x15
	.4byte	.LASF63
	.byte	0x1
	.byte	0x38
	.byte	0x22
	.4byte	0xa7
	.4byte	.LLST0
	.byte	0x18
	.4byte	.LVL4
	.4byte	0xb1b
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x20
	.4byte	.LASF65
	.byte	0x1
	.byte	0x33
	.byte	0xd
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.byte	0x1
	.byte	0x9c
	.4byte	0xa26
	.byte	0x21
	.4byte	.LVL1
	.4byte	0xa9f
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
	.byte	0x19
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LASF67
	.byte	0x1
	.byte	0x2e
	.byte	0xc
	.4byte	0x81
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.byte	0x1
	.byte	0x9c
	.4byte	0xa62
	.byte	0x15
	.4byte	.LASF63
	.byte	0x1
	.byte	0x2e
	.byte	0x22
	.4byte	0xa7
	.4byte	.LLST1
	.byte	0x18
	.4byte	.LVL7
	.4byte	0xb1b
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	.LASF68
	.4byte	.LASF68
	.byte	0x8
	.byte	0x2b
	.byte	0xd
	.byte	0x24
	.4byte	.LASF69
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x3a4
	.byte	0xd
	.byte	0x24
	.4byte	.LASF70
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x391
	.byte	0xc
	.byte	0x23
	.4byte	.LASF71
	.4byte	.LASF71
	.byte	0x9
	.byte	0xc8
	.byte	0x5
	.byte	0x25
	.4byte	.LASF89
	.4byte	.LASF90
	.byte	0xb
	.byte	0
	.byte	0x24
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x2ae
	.byte	0xc
	.byte	0x23
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0x8
	.byte	0x29
	.byte	0xc
	.byte	0x23
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0xa
	.byte	0x64
	.byte	0x6
	.byte	0x23
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0x8
	.byte	0x28
	.byte	0xc
	.byte	0x24
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x5cd
	.byte	0xf
	.byte	0x24
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x5d0
	.byte	0xf
	.byte	0x23
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0x8
	.byte	0x22
	.byte	0xc
	.byte	0x23
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0x8
	.byte	0x25
	.byte	0xc
	.byte	0x23
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x8
	.byte	0x26
	.byte	0xc
	.byte	0x24
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0x6
	.2byte	0x62a
	.byte	0x13
	.byte	0x24
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0x6
	.2byte	0x5d5
	.byte	0xc
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
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
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0xf
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0x6
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
	.byte	0x88,0x1
	.byte	0xb
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x13
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
	.byte	0x18
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
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
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
	.byte	0x1c
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1e
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x49
	.byte	0x13
	.byte	0x34
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1f
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x20
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
	.byte	0x21
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
	.byte	0x22
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
.LLST14:
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL81
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL87
	.4byte	.LFE91
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL80
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL83
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL86
	.4byte	.LFE91
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL82
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL88
	.4byte	.LFE91
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL75
	.4byte	.LFE89
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL58
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LFE88
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL56
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL59
	.4byte	.LFE88
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL57
	.4byte	.LVL60-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL57
	.4byte	.LVL61
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL65
	.4byte	.LFE88
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL51
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL54
	.4byte	.LVL55-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL55-1
	.4byte	.LFE87
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL53
	.4byte	.LFE87
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL52
	.4byte	.LVL55-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL40
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LFE86
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL48
	.4byte	.LFE86
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LFE85
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LFE84
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL4-1
	.4byte	.LFE81
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL7-1
	.4byte	.LFE79
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x7c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.4byte	.LFB90
	.4byte	.LFE90-.LFB90
	.4byte	.LFB91
	.4byte	.LFE91-.LFB91
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB82
	.4byte	.LFE82
	.4byte	.LFB80
	.4byte	.LFE80
	.4byte	.LFB81
	.4byte	.LFE81
	.4byte	.LFB79
	.4byte	.LFE79
	.4byte	.LFB83
	.4byte	.LFE83
	.4byte	.LFB84
	.4byte	.LFE84
	.4byte	.LFB85
	.4byte	.LFE85
	.4byte	.LFB86
	.4byte	.LFE86
	.4byte	.LFB87
	.4byte	.LFE87
	.4byte	.LFB88
	.4byte	.LFE88
	.4byte	.LFB89
	.4byte	.LFE89
	.4byte	.LFB90
	.4byte	.LFE90
	.4byte	.LFB91
	.4byte	.LFE91
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF53:
	.string	"ticks"
.LASF68:
	.string	"qcc74x_block_pool_info_get"
.LASF90:
	.string	"__builtin_memcpy"
.LASF87:
	.string	"pool_memory"
.LASF67:
	.string	"pool_mtx_get"
.LASF70:
	.string	"xQueueReceive"
.LASF30:
	.string	"mtx_get"
.LASF32:
	.string	"sem_get"
.LASF74:
	.string	"vAssertCalled"
.LASF2:
	.string	"short int"
.LASF29:
	.string	"blk_free"
.LASF61:
	.string	"frame_pool_init"
.LASF26:
	.string	"blk_size"
.LASF7:
	.string	"__uint32_t"
.LASF69:
	.string	"uxQueueMessagesWaiting"
.LASF78:
	.string	"qcc74x_block_pool_create"
.LASF89:
	.string	"memcpy"
.LASF50:
	.string	"frame_queue_drop_oldest"
.LASF38:
	.string	"pool_sem"
.LASF46:
	.string	"frame_pool_stats"
.LASF12:
	.string	"uint8_t"
.LASF25:
	.string	"blk_addr"
.LASF63:
	.string	"wait"
.LASF65:
	.string	"pool_mtx_put"
.LASF31:
	.string	"mtx_put"
.LASF72:
	.string	"xQueueGenericSend"
.LASF45:
	.string	"oldest"
.LASF9:
	.string	"long long int"
.LASF20:
	.string	"TickType_t"
.LASF49:
	.string	"drained"
.LASF76:
	.string	"xQueueCreateMutex"
.LASF6:
	.string	"long int"
.LASF39:
	.string	"stale_drop_total"
.LASF19:
	.string	"BaseType_t"
.LASF71:
	.string	"printf"
.LASF34:
	.string	"qcc74x_block_pool_t"
.LASF88:
	.string	"__FUNCTION__"
.LASF48:
	.string	"frame"
.LASF21:
	.string	"QueueHandle_t"
.LASF54:
	.string	"newer"
.LASF27:
	.string	"blk_align"
.LASF81:
	.string	"xQueueGenericCreate"
.LASF22:
	.string	"SemaphoreHandle_t"
.LASF1:
	.string	"unsigned char"
.LASF59:
	.string	"frame_free"
.LASF0:
	.string	"signed char"
.LASF10:
	.string	"long long unsigned int"
.LASF14:
	.string	"uint32_t"
.LASF66:
	.string	"pool_sem_get"
.LASF11:
	.string	"unsigned int"
.LASF82:
	.string	"xQueueSemaphoreTake"
.LASF51:
	.string	"frame_queue_pop_latest"
.LASF28:
	.string	"blk_total"
.LASF57:
	.string	"frame_queue_push"
.LASF86:
	.string	"QueueDefinition"
.LASF3:
	.string	"short unsigned int"
.LASF16:
	.string	"timestamp_ms"
.LASF44:
	.string	"queued"
.LASF56:
	.string	"frame_queue_pop"
.LASF77:
	.string	"xQueueCreateCountingSemaphore"
.LASF18:
	.string	"char"
.LASF79:
	.string	"qcc74x_block_pool_add_mtx"
.LASF13:
	.string	"int32_t"
.LASF84:
	.string	".\\examples\\usb_cam_stream\\frame_pool.c"
.LASF41:
	.string	"_Bool"
.LASF60:
	.string	"frame_alloc"
.LASF15:
	.string	"data"
.LASF52:
	.string	"timeout_ms"
.LASF83:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF8:
	.string	"long unsigned int"
.LASF40:
	.string	"initialised"
.LASF35:
	.string	"blk_pool"
.LASF64:
	.string	"pool_sem_put"
.LASF33:
	.string	"sem_put"
.LASF36:
	.string	"frame_queue"
.LASF24:
	.string	"pool_addr"
.LASF5:
	.string	"__int32_t"
.LASF55:
	.string	"dropped"
.LASF47:
	.string	"frame_queue_drain"
.LASF85:
	.string	"C:\\\\Users\\\\cwier\\\\documents\\\\github\\\\qcom\\\\examples\\\\usb_cam_stream\\\\build"
.LASF75:
	.string	"qcc74x_block_pool_alloc"
.LASF23:
	.string	"free_list"
.LASF42:
	.string	"total"
.LASF80:
	.string	"qcc74x_block_pool_add_sem"
.LASF43:
	.string	"free_count"
.LASF73:
	.string	"qcc74x_block_pool_free"
.LASF58:
	.string	"stale"
.LASF37:
	.string	"pool_mtx"
.LASF17:
	.string	"frame_t"
.LASF62:
	.string	"free_cnt"
.LASF4:
	.string	"__uint8_t"
	.ident	"GCC: (GNU) 10.4.0"
