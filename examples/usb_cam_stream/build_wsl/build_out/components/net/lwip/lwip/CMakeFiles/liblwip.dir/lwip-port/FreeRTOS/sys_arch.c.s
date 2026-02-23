	.file	"sys_arch.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.sys_mbox_new,"ax",@progbits
	.align	1
	.globl	sys_mbox_new
	.type	sys_mbox_new, @function
sys_mbox_new:
.LFB4:
	.file 1 "./components/net/lwip/lwip/lwip-port/FreeRTOS/sys_arch.c"
	.loc 1 53 1
	.cfi_startproc
.LVL0:
	.loc 1 54 2
	.loc 1 53 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.loc 1 54 10
	li	a2,0
	.cfi_offset 8, -8
	.loc 1 53 1
	mv	s0,a0
	mv	a0,a1
.LVL1:
	.loc 1 54 10
	li	a1,4
.LVL2:
	.loc 1 53 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 54 10
	call	xQueueGenericCreate
.LVL3:
	.loc 1 57 28
	lui	a4,%hi(lwip_stats)
	addi	a4,a4,%lo(lwip_stats)
	.loc 1 57 7
	lhu	a5,248(a4)
	.loc 1 58 10
	lhu	a3,250(a4)
	.loc 1 54 8
	sw	a0,0(s0)
	.loc 1 57 7 is_stmt 1
	addi	a5,a5,1
	extu	a5,a5,15,0
	sh	a5,248(a4)
	.loc 1 58 7
	.loc 1 58 10 is_stmt 0
	bgeu	a3,a5,.L2
	.loc 1 59 10 is_stmt 1
	.loc 1 59 34 is_stmt 0
	sh	a5,250(a4)
.L2:
	.loc 1 62 2 is_stmt 1
	.loc 1 66 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL4:
	.loc 1 62 5
	seqz	a0,a0
	.loc 1 66 1
	neg	a0,a0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	sys_mbox_new, .-sys_mbox_new
	.section	.text.sys_mbox_free,"ax",@progbits
	.align	1
	.globl	sys_mbox_free
	.type	sys_mbox_free, @function
sys_mbox_free:
.LFB5:
	.loc 1 75 1 is_stmt 1
	.cfi_startproc
.LVL5:
	.loc 1 76 2
	.loc 1 75 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s1,4(sp)
	.cfi_offset 9, -12
	mv	s1,a0
	.loc 1 76 6
	lw	a0,0(a0)
.LVL6:
	.loc 1 75 1
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	lui	s0,%hi(lwip_stats)
	.loc 1 76 6
	call	uxQueueMessagesWaiting
.LVL7:
	addi	s0,s0,%lo(lwip_stats)
	.loc 1 76 4
	beq	a0,zero,.L5
	.loc 1 79 3 is_stmt 1
 #APP
# 79 "/mnt/c/Users/cwier/documents/github/qcom/components/net/lwip/lwip/lwip-port/FreeRTOS/sys_arch.c" 1
	 nop 
# 0 "" 2
	.loc 1 81 6
	.loc 1 81 29 is_stmt 0
 #NO_APP
	lhu	a5,252(s0)
	addi	a5,a5,1
	sh	a5,252(s0)
.L5:
	.loc 1 87 2 is_stmt 1
	lw	a0,0(s1)
	call	vQueueDelete
.LVL8:
	.loc 1 90 6
	lhu	a5,248(s0)
	.loc 1 92 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
.LVL9:
	.loc 1 90 6
	addi	a5,a5,-1
	sh	a5,248(s0)
	.loc 1 92 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	sys_mbox_free, .-sys_mbox_free
	.section	.text.sys_mbox_post,"ax",@progbits
	.align	1
	.globl	sys_mbox_post
	.type	sys_mbox_post, @function
sys_mbox_post:
.LFB6:
	.loc 1 97 1 is_stmt 1
	.cfi_startproc
.LVL10:
	.loc 1 98 2
	.loc 1 97 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.loc 1 97 1
	mv	s1,a0
	sw	a1,12(sp)
	.loc 1 98 8
	li	s0,1
.LVL11:
.L11:
	.loc 1 98 133 is_stmt 1 discriminator 1
	.loc 1 98 8 discriminator 1
	.loc 1 98 10 is_stmt 0 discriminator 1
	lw	a0,0(s1)
	li	a3,0
	li	a2,-1
	addi	a1,sp,12
	call	xQueueGenericSend
.LVL12:
	.loc 1 98 8 discriminator 1
	bne	a0,s0,.L11
	.loc 1 99 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
.LVL13:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	sys_mbox_post, .-sys_mbox_post
	.section	.text.sys_mbox_trypost,"ax",@progbits
	.align	1
	.globl	sys_mbox_trypost
	.type	sys_mbox_trypost, @function
sys_mbox_trypost:
.LFB7:
	.loc 1 105 1 is_stmt 1
	.cfi_startproc
.LVL14:
	.loc 1 106 1
	.loc 1 108 4
	.loc 1 108 9 is_stmt 0
	lw	a0,0(a0)
.LVL15:
	.loc 1 105 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	a1,12(sp)
	.loc 1 108 9
	li	a3,0
	li	a2,0
	addi	a1,sp,12
.LVL16:
	.loc 1 105 1
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 108 9
	call	xQueueGenericSend
.LVL17:
	.loc 1 108 7
	li	a5,1
	beq	a0,a5,.L16
	.loc 1 114 7 is_stmt 1
.LVL18:
	.loc 1 117 7
	.loc 1 117 30 is_stmt 0
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a4,252(a5)
	.loc 1 114 14
	li	a0,-1
	.loc 1 117 30
	addi	a4,a4,1
	sh	a4,252(a5)
.LVL19:
.L15:
	.loc 1 122 4 is_stmt 1
	.loc 1 123 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL20:
.L16:
	.cfi_restore_state
	.loc 1 110 14
	li	a0,0
	j	.L15
	.cfi_endproc
.LFE7:
	.size	sys_mbox_trypost, .-sys_mbox_trypost
	.section	.text.sys_arch_mbox_fetch,"ax",@progbits
	.align	1
	.globl	sys_arch_mbox_fetch
	.type	sys_arch_mbox_fetch, @function
sys_arch_mbox_fetch:
.LFB8:
	.loc 1 142 1 is_stmt 1
	.cfi_startproc
.LVL21:
	.loc 1 143 1
	.loc 1 144 1
	.loc 1 146 2
	.loc 1 142 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	sw	a2,12(sp)
	sw	ra,60(sp)
	sw	s3,44(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.cfi_offset 19, -20
	.loc 1 142 1
	mv	s2,a0
	mv	s1,a1
	.loc 1 146 14
	call	xTaskGetTickCount
.LVL22:
	.loc 1 148 5
	lw	a2,12(sp)
	.loc 1 146 14
	mv	s0,a0
.LVL23:
	.loc 1 148 2 is_stmt 1
	.loc 1 148 5 is_stmt 0
	bne	s1,zero,.L19
	.loc 1 150 7
	addi	s1,sp,28
.LVL24:
.L19:
	.loc 1 153 2 is_stmt 1
	.loc 1 171 8 is_stmt 0
	li	s3,1
	.loc 1 153 5
	beq	a2,zero,.L20
	.loc 1 155 3 is_stmt 1
	.loc 1 155 32 is_stmt 0
	lw	a0,0(s2)
	mv	a1,s1
	call	xQueueReceive
.LVL25:
	.loc 1 155 6
	li	a5,1
	bne	a0,a5,.L21
.L27:
	.loc 1 172 3 is_stmt 1
	.loc 1 172 13 is_stmt 0
	call	xTaskGetTickCount
.LVL26:
	.loc 1 173 3 is_stmt 1
	.loc 1 173 11 is_stmt 0
	sub	a0,a0,s0
.LVL27:
	.loc 1 175 3 is_stmt 1
	.loc 1 175 10 is_stmt 0
	j	.L18
.LVL28:
.L21:
	.loc 1 164 4 is_stmt 1
	.loc 1 164 9 is_stmt 0
	sw	zero,0(s1)
	.loc 1 166 4 is_stmt 1
	.loc 1 166 11 is_stmt 0
	li	a0,-1
.L18:
	.loc 1 177 1
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
.LVL29:
	lw	s1,52(sp)
	.cfi_restore 9
.LVL30:
	lw	s2,48(sp)
	.cfi_restore 18
.LVL31:
	lw	s3,44(sp)
	.cfi_restore 19
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
.LVL32:
	jr	ra
.LVL33:
.L20:
	.cfi_restore_state
	.loc 1 171 97 is_stmt 1 discriminator 1
	.loc 1 171 8 discriminator 1
	.loc 1 171 34 is_stmt 0 discriminator 1
	lw	a0,0(s2)
	li	a2,-1
	mv	a1,s1
	call	xQueueReceive
.LVL34:
	.loc 1 171 8 discriminator 1
	bne	a0,s3,.L20
	j	.L27
	.cfi_endproc
.LFE8:
	.size	sys_arch_mbox_fetch, .-sys_arch_mbox_fetch
	.section	.text.sys_arch_mbox_tryfetch,"ax",@progbits
	.align	1
	.globl	sys_arch_mbox_tryfetch
	.type	sys_arch_mbox_tryfetch, @function
sys_arch_mbox_tryfetch:
.LFB9:
	.loc 1 185 1 is_stmt 1
	.cfi_startproc
.LVL35:
	.loc 1 186 1
	.loc 1 188 2
	.loc 1 185 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 188 5
	bne	a1,zero,.L29
	.loc 1 190 7
	addi	a1,sp,12
.LVL36:
.L29:
	.loc 1 193 4 is_stmt 1
	.loc 1 193 33 is_stmt 0
	lw	a0,0(a0)
.LVL37:
	li	a2,0
	call	xQueueReceive
.LVL38:
	.loc 1 201 1
	lw	ra,28(sp)
	.cfi_restore 1
	.loc 1 193 7
	addi	a0,a0,-1
	snez	a0,a0
	.loc 1 201 1
	neg	a0,a0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	sys_arch_mbox_tryfetch, .-sys_arch_mbox_tryfetch
	.section	.text.sys_mbox_valid,"ax",@progbits
	.align	1
	.globl	sys_mbox_valid
	.type	sys_mbox_valid, @function
sys_mbox_valid:
.LFB34:
	.cfi_startproc
	lw	a0,0(a0)
	snez	a0,a0
	ret
	.cfi_endproc
.LFE34:
	.size	sys_mbox_valid, .-sys_mbox_valid
	.section	.text.sys_mbox_set_invalid,"ax",@progbits
	.align	1
	.globl	sys_mbox_set_invalid
	.type	sys_mbox_set_invalid, @function
sys_mbox_set_invalid:
.LFB36:
	.cfi_startproc
	sw	zero,0(a0)
	ret
	.cfi_endproc
.LFE36:
	.size	sys_mbox_set_invalid, .-sys_mbox_set_invalid
	.section	.text.sys_sem_new,"ax",@progbits
	.align	1
	.globl	sys_sem_new
	.type	sys_sem_new, @function
sys_sem_new:
.LFB12:
	.loc 1 220 1 is_stmt 1
	.cfi_startproc
.LVL39:
	.loc 1 221 2
	.loc 1 221 7
	.loc 1 220 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	s1,4(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a0
	mv	s1,a1
	.loc 1 221 18
	li	a2,3
	li	a1,0
.LVL40:
	li	a0,1
.LVL41:
	.loc 1 220 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 221 18
	call	xQueueGenericCreate
.LVL42:
	.loc 1 221 16
	sw	a0,0(s0)
	.loc 1 221 100 is_stmt 1
	.loc 1 221 102 is_stmt 0
	beq	a0,zero,.L34
	.loc 1 221 5 is_stmt 1 discriminator 1
	.loc 1 221 14 is_stmt 0 discriminator 1
	li	a3,0
	li	a2,0
	li	a1,0
	call	xQueueGenericSend
.LVL43:
.L34:
	.loc 1 221 59 is_stmt 1 discriminator 3
	.loc 1 222 2 discriminator 3
	.loc 1 222 5 is_stmt 0 discriminator 3
	lw	a0,0(s0)
	lui	s0,%hi(lwip_stats)
.LVL44:
	addi	s0,s0,%lo(lwip_stats)
	.loc 1 222 4 discriminator 3
	bne	a0,zero,.L35
	.loc 1 225 7 is_stmt 1
	lhu	a5,240(s0)
	.loc 1 227 10 is_stmt 0
	li	a0,-1
	.loc 1 225 7
	addi	a5,a5,1
	sh	a5,240(s0)
	.loc 1 227 3 is_stmt 1
.L36:
	.loc 1 243 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L35:
	.cfi_restore_state
	.loc 1 230 2 is_stmt 1
	.loc 1 230 4 is_stmt 0
	bne	s1,zero,.L37
	.loc 1 232 3 is_stmt 1
	li	a1,1
	call	xQueueSemaphoreTake
.LVL45:
.L37:
	.loc 1 236 2
	lhu	a5,236(s0)
	.loc 1 237 6 is_stmt 0
	lhu	a4,238(s0)
	.loc 1 242 9
	li	a0,0
	.loc 1 236 2
	addi	a5,a5,1
	extu	a5,a5,15,0
	sh	a5,236(s0)
	.loc 1 237 3 is_stmt 1
	.loc 1 237 6 is_stmt 0
	bgeu	a4,a5,.L36
	.loc 1 238 3 is_stmt 1
	.loc 1 238 26 is_stmt 0
	sh	a5,238(s0)
	j	.L36
	.cfi_endproc
.LFE12:
	.size	sys_sem_new, .-sys_sem_new
	.section	.text.sys_arch_sem_wait,"ax",@progbits
	.align	1
	.globl	sys_arch_sem_wait
	.type	sys_arch_sem_wait, @function
sys_arch_sem_wait:
.LFB13:
	.loc 1 262 1 is_stmt 1
	.cfi_startproc
.LVL46:
	.loc 1 263 1
	.loc 1 265 2
	.loc 1 262 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	a1,12(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.loc 1 262 1
	mv	s1,a0
	.loc 1 265 14
	call	xTaskGetTickCount
.LVL47:
	.loc 1 267 4
	lw	a1,12(sp)
	.loc 1 265 14
	mv	s0,a0
.LVL48:
	.loc 1 267 2 is_stmt 1
	li	s2,1
	.loc 1 267 4 is_stmt 0
	beq	a1,zero,.L44
	.loc 1 269 3 is_stmt 1
	.loc 1 269 7 is_stmt 0
	lw	a0,0(s1)
	call	xQueueSemaphoreTake
.LVL49:
	mv	a4,a0
	.loc 1 269 5
	li	a5,1
	.loc 1 278 11
	li	a0,-1
	.loc 1 269 5
	bne	a4,a5,.L43
.L52:
	.loc 1 284 3 is_stmt 1
	.loc 1 284 13 is_stmt 0
	call	xTaskGetTickCount
.LVL50:
	.loc 1 285 3 is_stmt 1
	.loc 1 285 11 is_stmt 0
	sub	a0,a0,s0
.LVL51:
	.loc 1 287 3 is_stmt 1
.L43:
	.loc 1 290 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL52:
	lw	s1,20(sp)
	.cfi_restore 9
.LVL53:
	lw	s2,16(sp)
	.cfi_restore 18
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL54:
	jr	ra
.LVL55:
.L44:
	.cfi_restore_state
	.loc 1 283 100 is_stmt 1 discriminator 1
	.loc 1 283 8 discriminator 1
	.loc 1 283 10 is_stmt 0 discriminator 1
	lw	a0,0(s1)
	li	a1,-1
	call	xQueueSemaphoreTake
.LVL56:
	.loc 1 283 8 discriminator 1
	bne	a0,s2,.L44
	j	.L52
	.cfi_endproc
.LFE13:
	.size	sys_arch_sem_wait, .-sys_arch_sem_wait
	.section	.text.sys_sem_free,"ax",@progbits
	.align	1
	.globl	sys_sem_free
	.type	sys_sem_free, @function
sys_sem_free:
.LFB15:
	.loc 1 302 1 is_stmt 1
	.cfi_startproc
.LVL57:
	.loc 1 304 7
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a4,236(a5)
	.loc 1 307 2 is_stmt 0
	lw	a0,0(a0)
.LVL58:
	.loc 1 304 7
	addi	a4,a4,-1
	sh	a4,236(a5)
	.loc 1 307 2 is_stmt 1
	tail	vQueueDelete
.LVL59:
	.cfi_endproc
.LFE15:
	.size	sys_sem_free, .-sys_sem_free
	.section	.text.sys_sem_valid,"ax",@progbits
	.align	1
	.globl	sys_sem_valid
	.type	sys_sem_valid, @function
sys_sem_valid:
.LFB16:
	.loc 1 311 1
	.cfi_startproc
.LVL60:
	.loc 1 312 3
	.loc 1 312 6 is_stmt 0
	lw	a0,0(a0)
.LVL61:
	.loc 1 316 1
	snez	a0,a0
	ret
	.cfi_endproc
.LFE16:
	.size	sys_sem_valid, .-sys_sem_valid
	.section	.text.sys_sem_set_invalid,"ax",@progbits
	.align	1
	.globl	sys_sem_set_invalid
	.type	sys_sem_set_invalid, @function
sys_sem_set_invalid:
.LFB17:
	.loc 1 320 1 is_stmt 1
	.cfi_startproc
.LVL62:
	.loc 1 321 3
	.loc 1 321 8 is_stmt 0
	sw	zero,0(a0)
	.loc 1 322 1
	ret
	.cfi_endproc
.LFE17:
	.size	sys_sem_set_invalid, .-sys_sem_set_invalid
	.section	.text.sys_init,"ax",@progbits
	.align	1
	.globl	sys_init
	.type	sys_init, @function
sys_init:
.LFB18:
	.loc 1 327 1 is_stmt 1
	.cfi_startproc
	.loc 1 329 2
	.loc 1 329 15 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	sh	zero,%lo(.LANCHOR0)(a5)
	.loc 1 330 1
	ret
	.cfi_endproc
.LFE18:
	.size	sys_init, .-sys_init
	.section	.text.sys_mutex_new,"ax",@progbits
	.align	1
	.globl	sys_mutex_new
	.type	sys_mutex_new, @function
sys_mutex_new:
.LFB19:
	.loc 1 337 41 is_stmt 1
	.cfi_startproc
.LVL63:
	.loc 1 339 3
	.loc 1 337 41 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	mv	s0,a0
	.loc 1 339 12
	li	a0,1
.LVL64:
	.loc 1 337 41
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 339 12
	call	xQueueCreateMutex
.LVL65:
	lui	a5,%hi(lwip_stats)
	.loc 1 339 10
	sw	a0,0(s0)
	.loc 1 340 3 is_stmt 1
	addi	a5,a5,%lo(lwip_stats)
	.loc 1 340 5 is_stmt 0
	bne	a0,zero,.L58
	.loc 1 343 7 is_stmt 1
	lhu	a4,246(a5)
	.loc 1 345 10 is_stmt 0
	li	a0,-1
	.loc 1 343 7
	addi	a4,a4,1
	sh	a4,246(a5)
	.loc 1 345 3 is_stmt 1
.L59:
	.loc 1 355 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL66:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL67:
.L58:
	.cfi_restore_state
	.loc 1 349 2 is_stmt 1
	lhu	a4,242(a5)
	.loc 1 350 6 is_stmt 0
	lhu	a3,244(a5)
	.loc 1 354 16
	li	a0,0
	.loc 1 349 2
	addi	a4,a4,1
	extu	a4,a4,15,0
	sh	a4,242(a5)
	.loc 1 350 3 is_stmt 1
	.loc 1 350 6 is_stmt 0
	bgeu	a3,a4,.L59
	.loc 1 351 3 is_stmt 1
	.loc 1 351 28 is_stmt 0
	sh	a4,244(a5)
	j	.L59
	.cfi_endproc
.LFE19:
	.size	sys_mutex_new, .-sys_mutex_new
	.section	.text.sys_mutex_free,"ax",@progbits
	.align	1
	.globl	sys_mutex_free
	.type	sys_mutex_free, @function
sys_mutex_free:
.LFB20:
	.loc 1 359 1 is_stmt 1
	.cfi_startproc
.LVL68:
	.loc 1 361 7
	lui	a5,%hi(lwip_stats)
	addi	a5,a5,%lo(lwip_stats)
	lhu	a4,242(a5)
	.loc 1 364 2 is_stmt 0
	lw	a0,0(a0)
.LVL69:
	.loc 1 361 7
	addi	a4,a4,-1
	sh	a4,242(a5)
	.loc 1 364 2 is_stmt 1
	tail	vQueueDelete
.LVL70:
	.cfi_endproc
.LFE20:
	.size	sys_mutex_free, .-sys_mutex_free
	.section	.text.sys_mutex_lock,"ax",@progbits
	.align	1
	.globl	sys_mutex_lock
	.type	sys_mutex_lock, @function
sys_mutex_lock:
.LFB21:
	.loc 1 369 1
	.cfi_startproc
.LVL71:
	.loc 1 370 2
	li	a1,0
	tail	sys_arch_sem_wait
.LVL72:
	.cfi_endproc
.LFE21:
	.size	sys_mutex_lock, .-sys_mutex_lock
	.section	.text.sys_mutex_unlock,"ax",@progbits
	.align	1
	.globl	sys_mutex_unlock
	.type	sys_mutex_unlock, @function
sys_mutex_unlock:
.LFB22:
	.loc 1 376 1
	.cfi_startproc
.LVL73:
	.loc 1 377 2
	lw	a0,0(a0)
.LVL74:
	li	a3,0
	li	a2,0
	li	a1,0
	tail	xQueueGenericSend
.LVL75:
	.cfi_endproc
.LFE22:
	.size	sys_mutex_unlock, .-sys_mutex_unlock
	.section	.text.sys_sem_signal,"ax",@progbits
	.align	1
	.globl	sys_sem_signal
	.type	sys_sem_signal, @function
sys_sem_signal:
.LFB32:
	.cfi_startproc
	tail	sys_mutex_unlock
	.cfi_endproc
.LFE32:
	.size	sys_sem_signal, .-sys_sem_signal
	.section	.text.sys_mutex_is_locked,"ax",@progbits
	.align	1
	.globl	sys_mutex_is_locked
	.type	sys_mutex_is_locked, @function
sys_mutex_is_locked:
.LFB23:
	.loc 1 382 1
	.cfi_startproc
.LVL76:
	.loc 1 383 9
	.loc 1 383 16 is_stmt 0
	lw	a0,0(a0)
.LVL77:
	.loc 1 382 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 383 16
	call	uxQueueMessagesWaiting
.LVL78:
	.loc 1 384 1
	lw	ra,12(sp)
	.cfi_restore 1
	seqz	a0,a0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE23:
	.size	sys_mutex_is_locked, .-sys_mutex_is_locked
	.section	.text.sys_is_inside_interrupt,"ax",@progbits
	.align	1
	.globl	sys_is_inside_interrupt
	.type	sys_is_inside_interrupt, @function
sys_is_inside_interrupt:
.LFB24:
	.loc 1 388 1 is_stmt 1
	.cfi_startproc
	.loc 1 389 9
.LBB4:
.LBB5:
	.file 2 "./components/os/freertos/portable/GCC/RISC-V/common/portmacro.h"
	.loc 2 177 5
	.loc 2 177 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
	lw	a0,%lo(TrapNetCounter)(a5)
.LBE5:
.LBE4:
	.loc 1 390 1
	snez	a0,a0
	ret
	.cfi_endproc
.LFE24:
	.size	sys_is_inside_interrupt, .-sys_is_inside_interrupt
	.section	.text.sys_current_is_tcpip,"ax",@progbits
	.align	1
	.globl	sys_current_is_tcpip
	.type	sys_current_is_tcpip, @function
sys_current_is_tcpip:
.LFB25:
	.loc 1 403 1 is_stmt 1
	.cfi_startproc
	.loc 1 404 9
	.loc 1 403 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 404 29
	call	xTaskGetCurrentTaskHandle
.LVL79:
	.loc 1 404 26
	lui	a5,%hi(.LANCHOR1)
	lw	a5,%lo(.LANCHOR1)(a5)
	.loc 1 405 1
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 404 26
	sub	a0,a5,a0
	.loc 1 405 1
	seqz	a0,a0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE25:
	.size	sys_current_is_tcpip, .-sys_current_is_tcpip
	.section	.text.sys_thread_new,"ax",@progbits
	.align	1
	.globl	sys_thread_new
	.type	sys_thread_new, @function
sys_thread_new:
.LFB26:
	.loc 1 407 1 is_stmt 1
	.cfi_startproc
.LVL80:
	.loc 1 408 1
	.loc 1 409 1
	.loc 1 411 4
	.loc 1 411 7 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	lhu	a6,%lo(.LANCHOR0)(a5)
	li	a5,5
	bleu	a6,a5,.L72
	.loc 1 431 13
	li	a0,0
.LVL81:
	.loc 1 433 1
	ret
.LVL82:
.L74:
	.cfi_def_cfa_offset 32
	.cfi_offset 1, -4
	.loc 1 431 13
	li	a0,0
.LVL83:
.L71:
	.loc 1 433 1
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL84:
.L72:
	.loc 1 407 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	mv	a7,a3
	mv	a6,a1
	mv	a3,a2
.LVL85:
	mv	a1,a0
.LVL86:
	.loc 1 413 7 is_stmt 1
	.loc 1 413 16 is_stmt 0
	addi	a5,sp,12
	extu	a2,a7,15,0
.LVL87:
	mv	a0,a6
.LVL88:
	.loc 1 407 1
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 413 16
	call	xTaskCreate
.LVL89:
	.loc 1 419 5 is_stmt 1
	.loc 1 419 7 is_stmt 0
	li	a5,1
	bne	a0,a5,.L74
	.loc 1 421 6 is_stmt 1
	.loc 1 421 16 is_stmt 0
	lw	a0,12(sp)
.LVL90:
	lui	a5,%hi(.LANCHOR1)
	sw	a0,%lo(.LANCHOR1)(a5)
	.loc 1 422 6 is_stmt 1
	.loc 1 422 13 is_stmt 0
	j	.L71
	.cfi_endproc
.LFE26:
	.size	sys_thread_new, .-sys_thread_new
	.section	.text.sys_arch_protect,"ax",@progbits
	.align	1
	.globl	sys_arch_protect
	.type	sys_arch_protect, @function
sys_arch_protect:
.LFB27:
	.loc 1 449 1 is_stmt 1
	.cfi_startproc
	.loc 1 450 2
	.loc 1 449 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 450 2
	call	vTaskEnterCritical
.LVL91:
	.loc 1 451 2 is_stmt 1
	.loc 1 452 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE27:
	.size	sys_arch_protect, .-sys_arch_protect
	.section	.text.sys_arch_unprotect,"ax",@progbits
	.align	1
	.globl	sys_arch_unprotect
	.type	sys_arch_unprotect, @function
sys_arch_unprotect:
.LFB28:
	.loc 1 461 1 is_stmt 1
	.cfi_startproc
.LVL92:
	.loc 1 462 2
	.loc 1 463 2
	tail	vTaskExitCritical
.LVL93:
	.cfi_endproc
.LFE28:
	.size	sys_arch_unprotect, .-sys_arch_unprotect
	.section	.rodata.sys_assert.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"[LWIP] sys_assert %s\r\n"
	.section	.text.sys_assert,"ax",@progbits
	.align	1
	.globl	sys_assert
	.type	sys_assert, @function
sys_assert:
.LFB29:
	.loc 1 470 1
	.cfi_startproc
.LVL94:
	.loc 1 471 2
	.loc 1 476 5
	.loc 1 470 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	a0,12(sp)
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 476 5
	call	vTaskEnterCritical
.LVL95:
	.loc 1 477 5 is_stmt 1
	lw	a1,12(sp)
	lui	a0,%hi(.LC0)
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL96:
.L82:
	.loc 1 478 5 discriminator 1
	.loc 1 479 5 discriminator 1
	.loc 1 478 10 discriminator 1
	j	.L82
	.cfi_endproc
.LFE29:
	.size	sys_assert, .-sys_assert
	.section	.text.sys_now,"ax",@progbits
	.align	1
	.globl	sys_now
	.type	sys_now, @function
sys_now:
.LFB30:
	.loc 1 483 1
	.cfi_startproc
	.loc 1 485 5
	.loc 1 485 12 is_stmt 0
	tail	xTaskGetTickCount
.LVL97:
	.cfi_endproc
.LFE30:
	.size	sys_now, .-sys_now
	.globl	TcpipTask
	.section	.bss.TcpipTask,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	TcpipTask, @object
	.size	TcpipTask, 4
TcpipTask:
	.zero	4
	.section	.bss.s_nextthread,"aw",@nobits
	.align	1
	.set	.LANCHOR0,. + 0
	.type	s_nextthread, @object
	.size	s_nextthread, 2
s_nextthread:
	.zero	2
	.text
.Letext0:
	.file 3 "./components/net/lwip/lwip/lwip-port/arch/cc.h"
	.file 4 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 5 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 6 "./components/net/lwip/lwip/src/include/lwip/arch.h"
	.file 7 "./components/net/lwip/lwip/src/include/lwip/err.h"
	.file 8 "./components/os/freertos/include/task.h"
	.file 9 "./components/os/freertos/include/queue.h"
	.file 10 "./components/os/freertos/include/semphr.h"
	.file 11 "./components/net/lwip/lwip/lwip-port/arch/sys_arch.h"
	.file 12 "./components/net/lwip/lwip/src/include/lwip/sys.h"
	.file 13 "./components/net/lwip/lwip/src/include/lwip/mem.h"
	.file 14 "./components/net/lwip/lwip/src/include/lwip/memp.h"
	.file 15 "./components/net/lwip/lwip/src/include/lwip/stats.h"
	.file 16 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xd5c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF153
	.byte	0xc
	.4byte	.LASF154
	.4byte	.LASF155
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	.LASF0
	.byte	0x3
	.byte	0x25
	.byte	0xd
	.4byte	0x31
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.4byte	.LASF1
	.byte	0x4
	.byte	0x29
	.byte	0x15
	.4byte	0x44
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.byte	0x2
	.4byte	.LASF3
	.byte	0x4
	.byte	0x2b
	.byte	0x17
	.4byte	0x57
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.byte	0x2
	.4byte	.LASF6
	.byte	0x4
	.byte	0x39
	.byte	0x1c
	.4byte	0x71
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.byte	0x2
	.4byte	.LASF8
	.byte	0x4
	.byte	0x4d
	.byte	0x12
	.4byte	0x84
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.byte	0x2
	.4byte	.LASF10
	.byte	0x4
	.byte	0x4f
	.byte	0x1b
	.4byte	0x97
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF12
	.byte	0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF13
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
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
	.byte	0x14
	.byte	0x12
	.4byte	0x38
	.byte	0x2
	.4byte	.LASF17
	.byte	0x5
	.byte	0x18
	.byte	0x13
	.4byte	0x4b
	.byte	0x2
	.4byte	.LASF18
	.byte	0x5
	.byte	0x24
	.byte	0x14
	.4byte	0x65
	.byte	0x2
	.4byte	.LASF19
	.byte	0x5
	.byte	0x2c
	.byte	0x13
	.4byte	0x78
	.byte	0x2
	.4byte	.LASF20
	.byte	0x5
	.byte	0x30
	.byte	0x14
	.4byte	0x8b
	.byte	0x2
	.4byte	.LASF21
	.byte	0x6
	.byte	0x7d
	.byte	0x11
	.4byte	0xd3
	.byte	0x2
	.4byte	.LASF22
	.byte	0x6
	.byte	0x7e
	.byte	0x10
	.4byte	0xc7
	.byte	0x2
	.4byte	.LASF23
	.byte	0x6
	.byte	0x7f
	.byte	0x12
	.4byte	0xdf
	.byte	0x2
	.4byte	.LASF24
	.byte	0x6
	.byte	0x81
	.byte	0x12
	.4byte	0xf7
	.byte	0x8
	.byte	0x5
	.byte	0x1
	.4byte	0x44
	.byte	0x7
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
	.byte	0x7
	.byte	0x60
	.byte	0xe
	.4byte	0x10f
	.byte	0x7
	.byte	0x4
	.4byte	0x1ba
	.byte	0xb
	.4byte	0x1c5
	.byte	0xc
	.4byte	0xb3
	.byte	0
	.byte	0x2
	.4byte	.LASF43
	.byte	0x2
	.byte	0x42
	.byte	0x11
	.4byte	0xeb
	.byte	0x2
	.4byte	.LASF44
	.byte	0x2
	.byte	0x43
	.byte	0x12
	.4byte	0xf7
	.byte	0x2
	.4byte	.LASF45
	.byte	0x2
	.byte	0x44
	.byte	0x12
	.4byte	0xf7
	.byte	0xd
	.4byte	.LASF97
	.byte	0x2
	.byte	0xae
	.byte	0x13
	.4byte	0x1c5
	.byte	0x2
	.4byte	.LASF46
	.byte	0x8
	.byte	0x5c
	.byte	0x26
	.4byte	0x201
	.byte	0x7
	.byte	0x4
	.4byte	0x207
	.byte	0xe
	.4byte	.LASF48
	.byte	0x2
	.4byte	.LASF47
	.byte	0x9
	.byte	0x33
	.byte	0x22
	.4byte	0x218
	.byte	0x7
	.byte	0x4
	.4byte	0x21e
	.byte	0xe
	.4byte	.LASF49
	.byte	0x2
	.4byte	.LASF50
	.byte	0xa
	.byte	0x26
	.byte	0x17
	.4byte	0x20c
	.byte	0x2
	.4byte	.LASF51
	.byte	0xb
	.byte	0x2c
	.byte	0x1b
	.4byte	0x223
	.byte	0x2
	.4byte	.LASF52
	.byte	0xb
	.byte	0x2d
	.byte	0x1b
	.4byte	0x223
	.byte	0x2
	.4byte	.LASF53
	.byte	0xb
	.byte	0x2e
	.byte	0x17
	.4byte	0x20c
	.byte	0x2
	.4byte	.LASF54
	.byte	0xb
	.byte	0x2f
	.byte	0x16
	.4byte	0x1f5
	.byte	0x2
	.4byte	.LASF55
	.byte	0xc
	.byte	0x62
	.byte	0x10
	.4byte	0x1b4
	.byte	0x2
	.4byte	.LASF56
	.byte	0xd
	.byte	0x43
	.byte	0xf
	.4byte	0x11b
	.byte	0x8
	.byte	0x7
	.byte	0x1
	.4byte	0x57
	.byte	0xe
	.byte	0x34
	.byte	0xe
	.4byte	0x2da
	.byte	0x9
	.4byte	.LASF57
	.byte	0
	.byte	0x9
	.4byte	.LASF58
	.byte	0x1
	.byte	0x9
	.4byte	.LASF59
	.byte	0x2
	.byte	0x9
	.4byte	.LASF60
	.byte	0x3
	.byte	0x9
	.4byte	.LASF61
	.byte	0x4
	.byte	0x9
	.4byte	.LASF62
	.byte	0x5
	.byte	0x9
	.4byte	.LASF63
	.byte	0x6
	.byte	0x9
	.4byte	.LASF64
	.byte	0x7
	.byte	0x9
	.4byte	.LASF65
	.byte	0x8
	.byte	0x9
	.4byte	.LASF66
	.byte	0x9
	.byte	0x9
	.4byte	.LASF67
	.byte	0xa
	.byte	0x9
	.4byte	.LASF68
	.byte	0xb
	.byte	0x9
	.4byte	.LASF69
	.byte	0xc
	.byte	0x9
	.4byte	.LASF70
	.byte	0xd
	.byte	0
	.byte	0xf
	.4byte	.LASF75
	.byte	0x10
	.byte	0xf
	.byte	0x62
	.byte	0x8
	.4byte	0x336
	.byte	0x10
	.4byte	.LASF71
	.byte	0xf
	.byte	0x64
	.byte	0xf
	.4byte	0xc1
	.byte	0
	.byte	0x11
	.string	"err"
	.byte	0xf
	.byte	0x66
	.byte	0x9
	.4byte	0x11b
	.byte	0x4
	.byte	0x10
	.4byte	.LASF72
	.byte	0xf
	.byte	0x67
	.byte	0xe
	.4byte	0x26b
	.byte	0x6
	.byte	0x10
	.4byte	.LASF73
	.byte	0xf
	.byte	0x68
	.byte	0xe
	.4byte	0x26b
	.byte	0x8
	.byte	0x11
	.string	"max"
	.byte	0xf
	.byte	0x69
	.byte	0xe
	.4byte	0x26b
	.byte	0xa
	.byte	0x10
	.4byte	.LASF74
	.byte	0xf
	.byte	0x6a
	.byte	0x9
	.4byte	0x11b
	.byte	0xc
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x2da
	.byte	0xf
	.4byte	.LASF76
	.byte	0x18
	.byte	0xf
	.byte	0x40
	.byte	0x8
	.4byte	0x3e5
	.byte	0x10
	.4byte	.LASF77
	.byte	0xf
	.byte	0x41
	.byte	0x9
	.4byte	0x11b
	.byte	0
	.byte	0x10
	.4byte	.LASF78
	.byte	0xf
	.byte	0x42
	.byte	0x9
	.4byte	0x11b
	.byte	0x2
	.byte	0x11
	.string	"fw"
	.byte	0xf
	.byte	0x43
	.byte	0x9
	.4byte	0x11b
	.byte	0x4
	.byte	0x10
	.4byte	.LASF79
	.byte	0xf
	.byte	0x44
	.byte	0x9
	.4byte	0x11b
	.byte	0x6
	.byte	0x10
	.4byte	.LASF80
	.byte	0xf
	.byte	0x45
	.byte	0x9
	.4byte	0x11b
	.byte	0x8
	.byte	0x10
	.4byte	.LASF81
	.byte	0xf
	.byte	0x46
	.byte	0x9
	.4byte	0x11b
	.byte	0xa
	.byte	0x10
	.4byte	.LASF82
	.byte	0xf
	.byte	0x47
	.byte	0x9
	.4byte	0x11b
	.byte	0xc
	.byte	0x10
	.4byte	.LASF83
	.byte	0xf
	.byte	0x48
	.byte	0x9
	.4byte	0x11b
	.byte	0xe
	.byte	0x10
	.4byte	.LASF84
	.byte	0xf
	.byte	0x49
	.byte	0x9
	.4byte	0x11b
	.byte	0x10
	.byte	0x10
	.4byte	.LASF85
	.byte	0xf
	.byte	0x4a
	.byte	0x9
	.4byte	0x11b
	.byte	0x12
	.byte	0x11
	.string	"err"
	.byte	0xf
	.byte	0x4b
	.byte	0x9
	.4byte	0x11b
	.byte	0x14
	.byte	0x10
	.4byte	.LASF86
	.byte	0xf
	.byte	0x4c
	.byte	0x9
	.4byte	0x11b
	.byte	0x16
	.byte	0
	.byte	0xf
	.4byte	.LASF87
	.byte	0x6
	.byte	0xf
	.byte	0x6e
	.byte	0x8
	.4byte	0x41a
	.byte	0x10
	.4byte	.LASF73
	.byte	0xf
	.byte	0x6f
	.byte	0x9
	.4byte	0x11b
	.byte	0
	.byte	0x11
	.string	"max"
	.byte	0xf
	.byte	0x70
	.byte	0x9
	.4byte	0x11b
	.byte	0x2
	.byte	0x11
	.string	"err"
	.byte	0xf
	.byte	0x71
	.byte	0x9
	.4byte	0x11b
	.byte	0x4
	.byte	0
	.byte	0xf
	.4byte	.LASF88
	.byte	0x12
	.byte	0xf
	.byte	0x75
	.byte	0x8
	.4byte	0x44f
	.byte	0x11
	.string	"sem"
	.byte	0xf
	.byte	0x76
	.byte	0x18
	.4byte	0x3e5
	.byte	0
	.byte	0x10
	.4byte	.LASF89
	.byte	0xf
	.byte	0x77
	.byte	0x18
	.4byte	0x3e5
	.byte	0x6
	.byte	0x10
	.4byte	.LASF90
	.byte	0xf
	.byte	0x78
	.byte	0x18
	.4byte	0x3e5
	.byte	0xc
	.byte	0
	.byte	0x12
	.4byte	.LASF91
	.2byte	0x100
	.byte	0xf
	.byte	0xf4
	.byte	0x8
	.4byte	0x4e6
	.byte	0x10
	.4byte	.LASF92
	.byte	0xf
	.byte	0xf7
	.byte	0x16
	.4byte	0x33c
	.byte	0
	.byte	0x10
	.4byte	.LASF93
	.byte	0xf
	.byte	0xfb
	.byte	0x16
	.4byte	0x33c
	.byte	0x18
	.byte	0x10
	.4byte	.LASF94
	.byte	0xf
	.byte	0xff
	.byte	0x16
	.4byte	0x33c
	.byte	0x30
	.byte	0x13
	.string	"ip"
	.byte	0xf
	.2byte	0x103
	.byte	0x16
	.4byte	0x33c
	.byte	0x48
	.byte	0x14
	.4byte	.LASF95
	.byte	0xf
	.2byte	0x107
	.byte	0x16
	.4byte	0x33c
	.byte	0x60
	.byte	0x13
	.string	"udp"
	.byte	0xf
	.2byte	0x10f
	.byte	0x16
	.4byte	0x33c
	.byte	0x78
	.byte	0x13
	.string	"tcp"
	.byte	0xf
	.2byte	0x113
	.byte	0x16
	.4byte	0x33c
	.byte	0x90
	.byte	0x13
	.string	"mem"
	.byte	0xf
	.2byte	0x117
	.byte	0x14
	.4byte	0x2da
	.byte	0xa8
	.byte	0x14
	.4byte	.LASF96
	.byte	0xf
	.2byte	0x11b
	.byte	0x15
	.4byte	0x4e6
	.byte	0xb8
	.byte	0x13
	.string	"sys"
	.byte	0xf
	.2byte	0x11f
	.byte	0x14
	.4byte	0x41a
	.byte	0xec
	.byte	0
	.byte	0x15
	.4byte	0x336
	.4byte	0x4f6
	.byte	0x16
	.4byte	0xac
	.byte	0xc
	.byte	0
	.byte	0x17
	.4byte	.LASF98
	.byte	0xf
	.2byte	0x141
	.byte	0x16
	.4byte	0x44f
	.byte	0x18
	.4byte	.LASF109
	.byte	0x1
	.byte	0x2f
	.byte	0xe
	.4byte	0x11b
	.byte	0x5
	.byte	0x3
	.4byte	s_nextthread
	.byte	0x19
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x191
	.byte	0xe
	.4byte	0x1f5
	.byte	0x5
	.byte	0x3
	.4byte	TcpipTask
	.byte	0x1a
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x1e2
	.byte	0x7
	.4byte	0x127
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x1
	.byte	0x9c
	.4byte	0x54d
	.byte	0x1b
	.4byte	.LVL97
	.4byte	0xcba
	.byte	0
	.byte	0x1c
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x1d5
	.byte	0x6
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x1
	.byte	0x9c
	.4byte	0x599
	.byte	0x1d
	.string	"msg"
	.byte	0x1
	.2byte	0x1d5
	.byte	0x1e
	.4byte	0xc1
	.4byte	.LLST36
	.byte	0x1e
	.4byte	.LVL95
	.4byte	0xcc7
	.byte	0x1f
	.4byte	.LVL96
	.4byte	0xcd3
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x1cc
	.byte	0x6
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x1
	.byte	0x9c
	.4byte	0x5cb
	.byte	0x21
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x1cc
	.byte	0x24
	.4byte	0x25
	.4byte	.LLST35
	.byte	0x1b
	.4byte	.LVL93
	.4byte	0xcdf
	.byte	0
	.byte	0x1a
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x1c0
	.byte	0xc
	.4byte	0x25
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x1
	.byte	0x9c
	.4byte	0x5f0
	.byte	0x1e
	.4byte	.LVL91
	.4byte	0xcc7
	.byte	0
	.byte	0x1a
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x196
	.byte	0xe
	.4byte	0x253
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x1
	.byte	0x9c
	.4byte	0x6a7
	.byte	0x21
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x196
	.byte	0x29
	.4byte	0xc1
	.4byte	.LLST29
	.byte	0x21
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x196
	.byte	0x3e
	.4byte	0x25f
	.4byte	.LLST30
	.byte	0x1d
	.string	"arg"
	.byte	0x1
	.2byte	0x196
	.byte	0x4d
	.4byte	0xb3
	.4byte	.LLST31
	.byte	0x21
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x196
	.byte	0x56
	.4byte	0x31
	.4byte	.LLST32
	.byte	0x21
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x196
	.byte	0x65
	.4byte	0x31
	.4byte	.LLST33
	.byte	0x22
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x198
	.byte	0xe
	.4byte	0x1f5
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x23
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x199
	.byte	0x5
	.4byte	0x31
	.4byte	.LLST34
	.byte	0x1f
	.4byte	.LVL89
	.4byte	0xceb
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x20
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x20
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x192
	.byte	0x5
	.4byte	0x31
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x1
	.byte	0x9c
	.4byte	0x6cc
	.byte	0x1e
	.4byte	.LVL79
	.4byte	0xcf8
	.byte	0
	.byte	0x1a
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x183
	.byte	0x5
	.4byte	0x31
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x1
	.byte	0x9c
	.4byte	0x6f9
	.byte	0x24
	.4byte	0xcad
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.2byte	0x185
	.byte	0x10
	.byte	0
	.byte	0x1a
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x17d
	.byte	0x5
	.4byte	0x31
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x1
	.byte	0x9c
	.4byte	0x72f
	.byte	0x21
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x17d
	.byte	0x26
	.4byte	0x72f
	.4byte	.LLST28
	.byte	0x1e
	.4byte	.LVL78
	.4byte	0xd04
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x23b
	.byte	0x1c
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x177
	.byte	0x6
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x1
	.byte	0x9c
	.4byte	0x777
	.byte	0x21
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x177
	.byte	0x24
	.4byte	0x72f
	.4byte	.LLST27
	.byte	0x25
	.4byte	.LVL75
	.4byte	0xd11
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0x20
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x170
	.byte	0x6
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x1
	.byte	0x9c
	.4byte	0x7b6
	.byte	0x21
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x170
	.byte	0x22
	.4byte	0x72f
	.4byte	.LLST26
	.byte	0x25
	.4byte	.LVL72
	.4byte	0x8de
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x166
	.byte	0x6
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x1
	.byte	0x9c
	.4byte	0x7e8
	.byte	0x21
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x166
	.byte	0x22
	.4byte	0x72f
	.4byte	.LLST25
	.byte	0x1b
	.4byte	.LVL70
	.4byte	0xd1e
	.byte	0
	.byte	0x1a
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x151
	.byte	0x7
	.4byte	0x1a8
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x1
	.byte	0x9c
	.4byte	0x824
	.byte	0x21
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x151
	.byte	0x22
	.4byte	0x72f
	.4byte	.LLST24
	.byte	0x1f
	.4byte	.LVL65
	.4byte	0xd2b
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x146
	.byte	0x6
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.byte	0x1c
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x13f
	.byte	0x6
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.4byte	0x85e
	.byte	0x27
	.string	"sem"
	.byte	0x1
	.2byte	0x13f
	.byte	0x25
	.4byte	0x85e
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x22f
	.byte	0x1a
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x136
	.byte	0x5
	.4byte	0x31
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0x891
	.byte	0x1d
	.string	"sem"
	.byte	0x1
	.2byte	0x136
	.byte	0x1e
	.4byte	0x85e
	.4byte	.LLST23
	.byte	0
	.byte	0x1c
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x12d
	.byte	0x6
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x8c3
	.byte	0x1d
	.string	"sem"
	.byte	0x1
	.2byte	0x12d
	.byte	0x1e
	.4byte	0x85e
	.4byte	.LLST22
	.byte	0x1b
	.4byte	.LVL59
	.4byte	0xd1e
	.byte	0
	.byte	0x28
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x126
	.byte	0x6
	.4byte	0x8de
	.byte	0x29
	.string	"sem"
	.byte	0x1
	.2byte	0x126
	.byte	0x20
	.4byte	0x85e
	.byte	0
	.byte	0x1a
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x105
	.byte	0x7
	.4byte	0x127
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x982
	.byte	0x1d
	.string	"sem"
	.byte	0x1
	.2byte	0x105
	.byte	0x24
	.4byte	0x85e
	.4byte	.LLST18
	.byte	0x21
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x105
	.byte	0x2f
	.4byte	0x127
	.4byte	.LLST19
	.byte	0x23
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x107
	.byte	0xc
	.4byte	0x1dd
	.4byte	.LLST20
	.byte	0x23
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x107
	.byte	0x17
	.4byte	0x1dd
	.4byte	.LLST21
	.byte	0x2a
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x107
	.byte	0x20
	.4byte	0x1dd
	.byte	0x1e
	.4byte	.LVL47
	.4byte	0xcba
	.byte	0x2b
	.4byte	.LVL49
	.4byte	0xd38
	.4byte	0x968
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0
	.byte	0x1e
	.4byte	.LVL50
	.4byte	0xcba
	.byte	0x1f
	.4byte	.LVL56
	.4byte	0xd38
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.byte	0x2c
	.4byte	.LASF126
	.byte	0x1
	.byte	0xdb
	.byte	0x7
	.4byte	0x1a8
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0xa06
	.byte	0x2d
	.string	"sem"
	.byte	0x1
	.byte	0xdb
	.byte	0x1e
	.4byte	0x85e
	.4byte	.LLST16
	.byte	0x2e
	.4byte	.LASF127
	.byte	0x1
	.byte	0xdb
	.byte	0x28
	.4byte	0x103
	.4byte	.LLST17
	.byte	0x2b
	.4byte	.LVL42
	.4byte	0xd45
	.4byte	0x9d9
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x2b
	.4byte	.LVL43
	.4byte	0xd11
	.4byte	0x9f6
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0x20
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1f
	.4byte	.LVL45
	.4byte	0xd38
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x2f
	.4byte	.LASF129
	.byte	0x1
	.byte	0xd3
	.byte	0x6
	.4byte	0xa1f
	.byte	0x30
	.4byte	.LASF90
	.byte	0x1
	.byte	0xd3
	.byte	0x27
	.4byte	0xa1f
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x247
	.byte	0x31
	.4byte	.LASF157
	.byte	0x1
	.byte	0xcb
	.byte	0x5
	.4byte	0x31
	.4byte	0xa42
	.byte	0x30
	.4byte	.LASF90
	.byte	0x1
	.byte	0xcb
	.byte	0x20
	.4byte	0xa1f
	.byte	0
	.byte	0x2c
	.4byte	.LASF130
	.byte	0x1
	.byte	0xb8
	.byte	0x7
	.4byte	0x127
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0xa9b
	.byte	0x2e
	.4byte	.LASF90
	.byte	0x1
	.byte	0xb8
	.byte	0x2a
	.4byte	0xa1f
	.4byte	.LLST14
	.byte	0x2d
	.string	"msg"
	.byte	0x1
	.byte	0xb8
	.byte	0x37
	.4byte	0xa9b
	.4byte	.LLST15
	.byte	0x18
	.4byte	.LASF131
	.byte	0x1
	.byte	0xba
	.byte	0x7
	.4byte	0xb3
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x1f
	.4byte	.LVL38
	.4byte	0xd52
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xb3
	.byte	0x2c
	.4byte	.LASF132
	.byte	0x1
	.byte	0x8d
	.byte	0x7
	.4byte	0x127
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0xb67
	.byte	0x2e
	.4byte	.LASF90
	.byte	0x1
	.byte	0x8d
	.byte	0x27
	.4byte	0xa1f
	.4byte	.LLST8
	.byte	0x2d
	.string	"msg"
	.byte	0x1
	.byte	0x8d
	.byte	0x34
	.4byte	0xa9b
	.4byte	.LLST9
	.byte	0x2e
	.4byte	.LASF123
	.byte	0x1
	.byte	0x8d
	.byte	0x3f
	.4byte	0x127
	.4byte	.LLST10
	.byte	0x18
	.4byte	.LASF131
	.byte	0x1
	.byte	0x8f
	.byte	0x7
	.4byte	0xb3
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x32
	.4byte	.LASF124
	.byte	0x1
	.byte	0x90
	.byte	0xc
	.4byte	0x1dd
	.4byte	.LLST11
	.byte	0x32
	.4byte	.LASF125
	.byte	0x1
	.byte	0x90
	.byte	0x17
	.4byte	0x1dd
	.4byte	.LLST12
	.byte	0x32
	.4byte	.LASF133
	.byte	0x1
	.byte	0x90
	.byte	0x20
	.4byte	0x1dd
	.4byte	.LLST13
	.byte	0x1e
	.4byte	.LVL22
	.4byte	0xcba
	.byte	0x2b
	.4byte	.LVL25
	.4byte	0xd52
	.4byte	0xb47
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LVL26
	.4byte	0xcba
	.byte	0x1f
	.4byte	.LVL34
	.4byte	0xd52
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.byte	0x2c
	.4byte	.LASF134
	.byte	0x1
	.byte	0x68
	.byte	0x7
	.4byte	0x1a8
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0xbcc
	.byte	0x2e
	.4byte	.LASF90
	.byte	0x1
	.byte	0x68
	.byte	0x24
	.4byte	0xa1f
	.4byte	.LLST5
	.byte	0x2d
	.string	"msg"
	.byte	0x1
	.byte	0x68
	.byte	0x30
	.4byte	0xb3
	.4byte	.LLST6
	.byte	0x32
	.4byte	.LASF111
	.byte	0x1
	.byte	0x6a
	.byte	0x7
	.4byte	0x1a8
	.4byte	.LLST7
	.byte	0x1f
	.4byte	.LVL17
	.4byte	0xd11
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0x20
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x33
	.4byte	.LASF135
	.byte	0x1
	.byte	0x60
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0xc1e
	.byte	0x2e
	.4byte	.LASF90
	.byte	0x1
	.byte	0x60
	.byte	0x20
	.4byte	0xa1f
	.4byte	.LLST3
	.byte	0x2e
	.4byte	.LASF136
	.byte	0x1
	.byte	0x60
	.byte	0x2c
	.4byte	0xb3
	.4byte	.LLST4
	.byte	0x1f
	.4byte	.LVL12
	.4byte	0xd11
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0x20
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x33
	.4byte	.LASF137
	.byte	0x1
	.byte	0x4a
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0xc57
	.byte	0x2e
	.4byte	.LASF90
	.byte	0x1
	.byte	0x4a
	.byte	0x20
	.4byte	0xa1f
	.4byte	.LLST2
	.byte	0x1e
	.4byte	.LVL7
	.4byte	0xd04
	.byte	0x1e
	.4byte	.LVL8
	.4byte	0xd1e
	.byte	0
	.byte	0x2c
	.4byte	.LASF138
	.byte	0x1
	.byte	0x34
	.byte	0x7
	.4byte	0x1a8
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0xcad
	.byte	0x2e
	.4byte	.LASF90
	.byte	0x1
	.byte	0x34
	.byte	0x20
	.4byte	0xa1f
	.4byte	.LLST0
	.byte	0x2e
	.4byte	.LASF139
	.byte	0x1
	.byte	0x34
	.byte	0x2a
	.4byte	0x31
	.4byte	.LLST1
	.byte	0x1f
	.4byte	.LVL3
	.4byte	0xd45
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x34
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x34
	.4byte	.LASF158
	.byte	0x2
	.byte	0xaf
	.byte	0x3a
	.4byte	0x1c5
	.byte	0x3
	.byte	0x35
	.4byte	.LASF140
	.4byte	.LASF140
	.byte	0x8
	.2byte	0x5a8
	.byte	0xc
	.byte	0x36
	.4byte	.LASF141
	.4byte	.LASF141
	.byte	0x2
	.byte	0x7d
	.byte	0xd
	.byte	0x36
	.4byte	.LASF142
	.4byte	.LASF142
	.byte	0x10
	.byte	0xc8
	.byte	0x5
	.byte	0x36
	.4byte	.LASF143
	.4byte	.LASF143
	.byte	0x2
	.byte	0x7e
	.byte	0xd
	.byte	0x35
	.4byte	.LASF144
	.4byte	.LASF144
	.byte	0x8
	.2byte	0x168
	.byte	0x10
	.byte	0x36
	.4byte	.LASF145
	.4byte	.LASF145
	.byte	0x1
	.byte	0x2a
	.byte	0xe
	.byte	0x35
	.4byte	.LASF146
	.4byte	.LASF146
	.byte	0x9
	.2byte	0x3a4
	.byte	0xd
	.byte	0x35
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0x9
	.2byte	0x2ae
	.byte	0xc
	.byte	0x35
	.4byte	.LASF148
	.4byte	.LASF148
	.byte	0x9
	.2byte	0x3c7
	.byte	0x6
	.byte	0x35
	.4byte	.LASF149
	.4byte	.LASF149
	.byte	0x9
	.2byte	0x5cd
	.byte	0xf
	.byte	0x35
	.4byte	.LASF150
	.4byte	.LASF150
	.byte	0x9
	.2byte	0x5d5
	.byte	0xc
	.byte	0x35
	.4byte	.LASF151
	.4byte	.LASF151
	.byte	0x9
	.2byte	0x62a
	.byte	0x13
	.byte	0x35
	.4byte	.LASF152
	.4byte	.LASF152
	.byte	0x9
	.2byte	0x391
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
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
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
	.byte	0xe
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x14
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
	.byte	0x15
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
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
	.byte	0x18
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
	.byte	0x3f
	.byte	0x19
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
	.byte	0x1c
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
	.byte	0x1d
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
	.byte	0x1e
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x21
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
	.byte	0x22
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
	.byte	0x23
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
	.byte	0x24
	.byte	0x1d
	.byte	0
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
	.byte	0x25
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
	.byte	0x27
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x28
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x29
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
	.byte	0x2a
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
	.byte	0x2d
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
	.byte	0x2e
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
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x30
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
	.byte	0x31
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
	.byte	0x32
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
	.byte	0x33
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
	.byte	0x34
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
	.byte	0x5
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST36:
	.4byte	.LVL94
	.4byte	.LVL95-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL95-1
	.4byte	.LFE29
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL92
	.4byte	.LVL93-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL93-1
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL81
	.4byte	.LVL84
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL88
	.4byte	.LVL89-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL89-1
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL82
	.4byte	.LVL84
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL86
	.4byte	.LVL89-1
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL89-1
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL82
	.4byte	.LVL84
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL87
	.4byte	.LVL89-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL89-1
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL82
	.4byte	.LVL84
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL85
	.4byte	.LVL89-1
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL89-1
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL82
	.4byte	.LVL84
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LVL89-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL89-1
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL77
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL74
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL71
	.4byte	.LVL72-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL72-1
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL69
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL64
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL61
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL58
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL46
	.4byte	.LVL47-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL47-1
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL46
	.4byte	.LVL47-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL47-1
	.4byte	.LVL54
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x2
	.byte	0x72
	.byte	0x6c
	.4byte	.LVL55
	.4byte	.LFE13
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL48
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL55
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL41
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL44
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL40
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL37
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL36
	.4byte	.LVL38-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL21
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22-1
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL21
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL22-1
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL33
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL21
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL22-1
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x91
	.byte	0x4c
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x2
	.byte	0x72
	.byte	0x4c
	.4byte	.LVL33
	.4byte	.LFE8
	.2byte	0x2
	.byte	0x91
	.byte	0x4c
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL23
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL33
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL16
	.4byte	.LVL17-1
	.2byte	0x2
	.byte	0x7b
	.byte	0
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL13
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL9
	.4byte	.LFE5
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
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL4
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3-1
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xd4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF150:
	.string	"xQueueSemaphoreTake"
.LASF137:
	.string	"sys_mbox_free"
.LASF124:
	.string	"StartTime"
.LASF54:
	.string	"sys_thread_t"
.LASF60:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF125:
	.string	"EndTime"
.LASF48:
	.string	"tskTaskControlBlock"
.LASF154:
	.string	"./components/net/lwip/lwip/lwip-port/FreeRTOS/sys_arch.c"
.LASF40:
	.string	"ERR_CLSD"
.LASF152:
	.string	"xQueueReceive"
.LASF33:
	.string	"ERR_USE"
.LASF41:
	.string	"ERR_ARG"
.LASF129:
	.string	"sys_mbox_set_invalid"
.LASF14:
	.string	"unsigned int"
.LASF105:
	.string	"sys_thread_new"
.LASF42:
	.string	"err_t"
.LASF148:
	.string	"vQueueDelete"
.LASF8:
	.string	"__int32_t"
.LASF23:
	.string	"u16_t"
.LASF115:
	.string	"sys_mutex_unlock"
.LASF118:
	.string	"sys_mutex_new"
.LASF75:
	.string	"stats_mem"
.LASF69:
	.string	"MEMP_PBUF_POOL"
.LASF98:
	.string	"lwip_stats"
.LASF39:
	.string	"ERR_RST"
.LASF117:
	.string	"sys_mutex_free"
.LASF34:
	.string	"ERR_ALREADY"
.LASF87:
	.string	"stats_syselem"
.LASF101:
	.string	"sys_arch_unprotect"
.LASF20:
	.string	"uint32_t"
.LASF16:
	.string	"int8_t"
.LASF65:
	.string	"MEMP_TCPIP_MSG_API"
.LASF85:
	.string	"opterr"
.LASF89:
	.string	"mutex"
.LASF94:
	.string	"ip_frag"
.LASF49:
	.string	"QueueDefinition"
.LASF127:
	.string	"count"
.LASF74:
	.string	"illegal"
.LASF111:
	.string	"result"
.LASF93:
	.string	"etharp"
.LASF13:
	.string	"long long unsigned int"
.LASF113:
	.string	"sys_is_inside_interrupt"
.LASF6:
	.string	"__uint16_t"
.LASF55:
	.string	"lwip_thread_fn"
.LASF31:
	.string	"ERR_VAL"
.LASF120:
	.string	"sys_sem_valid"
.LASF143:
	.string	"vTaskExitCritical"
.LASF128:
	.string	"sys_sem_signal"
.LASF73:
	.string	"used"
.LASF114:
	.string	"sys_mutex_is_locked"
.LASF91:
	.string	"stats_"
.LASF157:
	.string	"sys_mbox_valid"
.LASF97:
	.string	"TrapNetCounter"
.LASF51:
	.string	"sys_sem_t"
.LASF145:
	.string	"xTaskGetCurrentTaskHandle"
.LASF70:
	.string	"MEMP_MAX"
.LASF155:
	.string	"./examples/usb_cam_stream/build_wsl/build_out/components/net/lwip/lwip"
.LASF22:
	.string	"s8_t"
.LASF147:
	.string	"xQueueGenericSend"
.LASF64:
	.string	"MEMP_NETCONN"
.LASF119:
	.string	"sys_sem_set_invalid"
.LASF156:
	.string	"sys_init"
.LASF32:
	.string	"ERR_WOULDBLOCK"
.LASF28:
	.string	"ERR_TIMEOUT"
.LASF108:
	.string	"prio"
.LASF68:
	.string	"MEMP_PBUF"
.LASF112:
	.string	"sys_current_is_tcpip"
.LASF15:
	.string	"char"
.LASF56:
	.string	"mem_size_t"
.LASF44:
	.string	"UBaseType_t"
.LASF76:
	.string	"stats_proto"
.LASF0:
	.string	"sys_prot_t"
.LASF136:
	.string	"data"
.LASF47:
	.string	"QueueHandle_t"
.LASF144:
	.string	"xTaskCreate"
.LASF17:
	.string	"uint8_t"
.LASF102:
	.string	"pval"
.LASF107:
	.string	"stacksize"
.LASF151:
	.string	"xQueueGenericCreate"
.LASF149:
	.string	"xQueueCreateMutex"
.LASF140:
	.string	"xTaskGetTickCount"
.LASF63:
	.string	"MEMP_NETBUF"
.LASF12:
	.string	"long long int"
.LASF132:
	.string	"sys_arch_mbox_fetch"
.LASF52:
	.string	"sys_mutex_t"
.LASF142:
	.string	"printf"
.LASF37:
	.string	"ERR_IF"
.LASF134:
	.string	"sys_mbox_trypost"
.LASF133:
	.string	"Elapsed"
.LASF59:
	.string	"MEMP_TCP_PCB"
.LASF96:
	.string	"memp"
.LASF21:
	.string	"u8_t"
.LASF43:
	.string	"BaseType_t"
.LASF130:
	.string	"sys_arch_mbox_tryfetch"
.LASF139:
	.string	"size"
.LASF80:
	.string	"chkerr"
.LASF46:
	.string	"TaskHandle_t"
.LASF62:
	.string	"MEMP_REASSDATA"
.LASF158:
	.string	"xPortIsInsideInterrupt"
.LASF45:
	.string	"TickType_t"
.LASF1:
	.string	"__int8_t"
.LASF109:
	.string	"s_nextthread"
.LASF18:
	.string	"uint16_t"
.LASF100:
	.string	"sys_assert"
.LASF126:
	.string	"sys_sem_new"
.LASF123:
	.string	"timeout"
.LASF27:
	.string	"ERR_BUF"
.LASF24:
	.string	"u32_t"
.LASF5:
	.string	"short int"
.LASF95:
	.string	"icmp"
.LASF99:
	.string	"TcpipTask"
.LASF9:
	.string	"long int"
.LASF83:
	.string	"rterr"
.LASF72:
	.string	"avail"
.LASF50:
	.string	"SemaphoreHandle_t"
.LASF66:
	.string	"MEMP_SYS_TIMEOUT"
.LASF58:
	.string	"MEMP_UDP_PCB"
.LASF90:
	.string	"mbox"
.LASF122:
	.string	"sys_arch_sem_wait"
.LASF30:
	.string	"ERR_INPROGRESS"
.LASF146:
	.string	"uxQueueMessagesWaiting"
.LASF3:
	.string	"__uint8_t"
.LASF35:
	.string	"ERR_ISCONN"
.LASF86:
	.string	"cachehit"
.LASF71:
	.string	"name"
.LASF104:
	.string	"sys_arch_protect"
.LASF121:
	.string	"sys_sem_free"
.LASF57:
	.string	"MEMP_RAW_PCB"
.LASF81:
	.string	"lenerr"
.LASF53:
	.string	"sys_mbox_t"
.LASF11:
	.string	"long unsigned int"
.LASF19:
	.string	"int32_t"
.LASF106:
	.string	"thread"
.LASF84:
	.string	"proterr"
.LASF135:
	.string	"sys_mbox_post"
.LASF88:
	.string	"stats_sys"
.LASF4:
	.string	"unsigned char"
.LASF10:
	.string	"__uint32_t"
.LASF82:
	.string	"memerr"
.LASF61:
	.string	"MEMP_TCP_SEG"
.LASF92:
	.string	"link"
.LASF153:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF77:
	.string	"xmit"
.LASF79:
	.string	"drop"
.LASF116:
	.string	"sys_mutex_lock"
.LASF141:
	.string	"vTaskEnterCritical"
.LASF38:
	.string	"ERR_ABRT"
.LASF138:
	.string	"sys_mbox_new"
.LASF25:
	.string	"ERR_OK"
.LASF78:
	.string	"recv"
.LASF2:
	.string	"signed char"
.LASF7:
	.string	"short unsigned int"
.LASF36:
	.string	"ERR_CONN"
.LASF29:
	.string	"ERR_RTE"
.LASF67:
	.string	"MEMP_NETDB"
.LASF131:
	.string	"dummyptr"
.LASF26:
	.string	"ERR_MEM"
.LASF103:
	.string	"sys_now"
.LASF110:
	.string	"CreatedTask"
	.ident	"GCC: (GNU) 10.4.0"
