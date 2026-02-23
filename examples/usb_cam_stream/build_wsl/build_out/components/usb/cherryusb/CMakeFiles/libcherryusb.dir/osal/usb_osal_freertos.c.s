	.file	"usb_osal_freertos.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.__usb_timeout,"ax",@progbits
	.align	1
	.type	__usb_timeout, @function
__usb_timeout:
.LFB22:
	.file 1 "./components/usb/cherryusb/osal/usb_osal_freertos.c"
	.loc 1 166 1
	.cfi_startproc
.LVL0:
	.loc 1 167 5
	.loc 1 166 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 167 61
	call	pvTimerGetTimerID
.LVL1:
	.loc 1 169 5 is_stmt 1
	lw	a5,0(a0)
	.loc 1 170 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 169 5
	lw	a0,4(a0)
.LVL2:
	.loc 1 170 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 169 5
	jr	a5
.LVL3:
	.cfi_endproc
.LFE22:
	.size	__usb_timeout, .-__usb_timeout
	.section	.rodata.usb_osal_thread_create.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"\033[31m[E/USB] "
	.align	2
.LC1:
	.string	"Create thread %s failed\r\n"
	.align	2
.LC2:
	.string	"\033[0m"
	.section	.text.usb_osal_thread_create,"ax",@progbits
	.align	1
	.globl	usb_osal_thread_create
	.type	usb_osal_thread_create, @function
usb_osal_thread_create:
.LFB6:
	.loc 1 16 1 is_stmt 1
	.cfi_startproc
.LVL4:
	.loc 1 17 5
	.loc 1 16 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	.cfi_offset 8, -8
	mv	s0,a0
	mv	a0,a3
.LVL5:
	mv	a3,a4
.LVL6:
	.loc 1 19 5
	li	a4,31
.LVL7:
	sub	a4,a4,a2
	addi	a5,sp,12
	extu	a2,a1,2+16-1,2
.LVL8:
	mv	a1,s0
.LVL9:
	.loc 1 16 1
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 17 18
	sw	zero,12(sp)
	.loc 1 18 5 is_stmt 1
.LVL10:
	.loc 1 19 5
	call	xTaskCreate
.LVL11:
	.loc 1 20 5
	.loc 1 20 15 is_stmt 0
	lw	a0,12(sp)
	.loc 1 20 8
	bne	a0,zero,.L3
	.loc 1 21 9 is_stmt 1
	.loc 1 21 14
	lui	a0,%hi(.LC0)
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL12:
	.loc 1 21 60
	lui	a0,%hi(.LC1)
	mv	a1,s0
	addi	a0,a0,%lo(.LC1)
	call	printf
.LVL13:
	.loc 1 21 105
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL14:
.L5:
	.loc 1 21 132 discriminator 1
	.loc 1 22 9 discriminator 1
	.loc 1 23 9 discriminator 1
	.loc 1 22 15 discriminator 1
	j	.L5
.L3:
	.loc 1 26 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL15:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	usb_osal_thread_create, .-usb_osal_thread_create
	.section	.text.usb_osal_thread_delete,"ax",@progbits
	.align	1
	.globl	usb_osal_thread_delete
	.type	usb_osal_thread_delete, @function
usb_osal_thread_delete:
.LFB7:
	.loc 1 29 1 is_stmt 1
	.cfi_startproc
.LVL16:
	.loc 1 30 5
	tail	vTaskDelete
.LVL17:
	.cfi_endproc
.LFE7:
	.size	usb_osal_thread_delete, .-usb_osal_thread_delete
	.section	.text.usb_osal_thread_schedule_other,"ax",@progbits
	.align	1
	.globl	usb_osal_thread_schedule_other
	.type	usb_osal_thread_schedule_other, @function
usb_osal_thread_schedule_other:
.LFB8:
	.loc 1 34 1
	.cfi_startproc
	.loc 1 35 5
	.loc 1 34 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.loc 1 35 33
	call	xTaskGetCurrentTaskHandle
.LVL18:
	mv	s0,a0
.LVL19:
	.loc 1 36 5 is_stmt 1
	.loc 1 36 38 is_stmt 0
	call	uxTaskPriorityGet
.LVL20:
	mv	s1,a0
.LVL21:
	.loc 1 38 5 is_stmt 1
	li	a1,0
	mv	a0,s0
	call	vTaskPrioritySet
.LVL22:
	.loc 1 40 5
 #APP
# 40 "/mnt/c/Users/cwier/documents/github/qcom/components/usb/cherryusb/osal/usb_osal_freertos.c" 1
	ecall
# 0 "" 2
	.loc 1 40 31
	.loc 1 42 5
 #NO_APP
	mv	a0,s0
	.loc 1 43 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
.LVL23:
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 42 5
	mv	a1,s1
	.loc 1 43 1
	lw	s1,4(sp)
	.cfi_restore 9
.LVL24:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 42 5
	tail	vTaskPrioritySet
.LVL25:
	.cfi_endproc
.LFE8:
	.size	usb_osal_thread_schedule_other, .-usb_osal_thread_schedule_other
	.section	.rodata.usb_osal_sem_create.str1.4,"aMS",@progbits,1
	.align	2
.LC3:
	.string	"Create semaphore failed\r\n"
	.section	.text.usb_osal_sem_create,"ax",@progbits
	.align	1
	.globl	usb_osal_sem_create
	.type	usb_osal_sem_create, @function
usb_osal_sem_create:
.LFB9:
	.loc 1 46 1 is_stmt 1
	.cfi_startproc
.LVL26:
	.loc 1 47 5
	.loc 1 46 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	mv	a1,a0
	.loc 1 47 42
	li	a0,1
.LVL27:
	.loc 1 46 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 47 42
	call	xQueueCreateCountingSemaphore
.LVL28:
	.loc 1 48 5 is_stmt 1
	.loc 1 48 8 is_stmt 0
	bne	a0,zero,.L10
	.loc 1 49 9 is_stmt 1
	.loc 1 49 14
	lui	a0,%hi(.LC0)
.LVL29:
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL30:
	.loc 1 49 60
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	call	printf
.LVL31:
	.loc 1 49 99
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL32:
.L12:
	.loc 1 49 126 discriminator 1
	.loc 1 50 9 discriminator 1
	.loc 1 51 9 discriminator 1
	.loc 1 50 15 discriminator 1
	j	.L12
.LVL33:
.L10:
	.loc 1 54 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	usb_osal_sem_create, .-usb_osal_sem_create
	.section	.text.usb_osal_sem_delete,"ax",@progbits
	.align	1
	.globl	usb_osal_sem_delete
	.type	usb_osal_sem_delete, @function
usb_osal_sem_delete:
.LFB10:
	.loc 1 57 1 is_stmt 1
	.cfi_startproc
.LVL34:
	.loc 1 58 5
	tail	vQueueDelete
.LVL35:
	.cfi_endproc
.LFE10:
	.size	usb_osal_sem_delete, .-usb_osal_sem_delete
	.section	.text.usb_osal_sem_take,"ax",@progbits
	.align	1
	.globl	usb_osal_sem_take
	.type	usb_osal_sem_take, @function
usb_osal_sem_take:
.LFB11:
	.loc 1 62 1
	.cfi_startproc
.LVL36:
	.loc 1 63 5
	.loc 1 62 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 63 8
	li	a5,-1
	bne	a1,a5,.L16
.LVL37:
.L22:
	.loc 1 64 9 is_stmt 1
	.loc 1 64 17 is_stmt 0
	call	xQueueSemaphoreTake
.LVL38:
	.loc 1 64 133
	li	a5,1
	bne	a0,a5,.L17
	li	a0,0
.L15:
	.loc 1 68 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L17:
	.cfi_restore_state
	.loc 1 64 133 discriminator 2
	li	a0,-14
	j	.L15
.LVL39:
.L16:
	.loc 1 66 9 is_stmt 1
	.loc 1 66 116 is_stmt 0
	li	a5,1000
	mul	a1,a1,a5
.LVL40:
	.loc 1 66 17
	divu	a1,a1,a5
	j	.L22
	.cfi_endproc
.LFE11:
	.size	usb_osal_sem_take, .-usb_osal_sem_take
	.section	.text.usb_osal_sem_give,"ax",@progbits
	.align	1
	.globl	usb_osal_sem_give
	.type	usb_osal_sem_give, @function
usb_osal_sem_give:
.LFB12:
	.loc 1 71 1 is_stmt 1
	.cfi_startproc
.LVL41:
	.loc 1 72 5
.LBB14:
.LBB15:
	.file 2 "./components/os/freertos/portable/GCC/RISC-V/common/portmacro.h"
	.loc 2 177 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE15:
.LBE14:
	.loc 1 75 8
	lw	a5,%lo(TrapNetCounter)(a5)
	.loc 1 71 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 72 16
	sw	zero,12(sp)
	.loc 1 73 5 is_stmt 1
	.loc 1 75 5
.LBB17:
.LBB16:
	.loc 2 177 5
.LBE16:
.LBE17:
	.loc 1 75 8 is_stmt 0
	beq	a5,zero,.L24
	.loc 1 76 9 is_stmt 1
	.loc 1 76 15 is_stmt 0
	addi	a1,sp,12
	call	xQueueGiveFromISR
.LVL42:
	.loc 1 77 9 is_stmt 1
	.loc 1 77 12 is_stmt 0
	li	a5,1
	bne	a0,a5,.L25
	.loc 1 78 13 is_stmt 1
	.loc 1 78 18
	.loc 1 78 20 is_stmt 0
	lw	a5,12(sp)
	bne	a5,zero,.L26
.LVL43:
.L30:
	.loc 1 84 5 is_stmt 1 discriminator 1
	.loc 1 84 50 is_stmt 0 discriminator 1
	li	a0,0
.LVL44:
.L23:
	.loc 1 85 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL45:
.L26:
	.cfi_restore_state
	.loc 1 78 49 is_stmt 1 discriminator 1
	call	vTaskSwitchContext
.LVL46:
	j	.L30
.LVL47:
.L24:
	.loc 1 81 9
	.loc 1 81 15 is_stmt 0
	li	a3,0
	li	a2,0
	li	a1,0
	call	xQueueGenericSend
.LVL48:
	.loc 1 84 5 is_stmt 1
	.loc 1 84 50 is_stmt 0
	li	a5,1
	beq	a0,a5,.L30
.L25:
	.loc 1 84 50 discriminator 2
	li	a0,-14
.LVL49:
	j	.L23
	.cfi_endproc
.LFE12:
	.size	usb_osal_sem_give, .-usb_osal_sem_give
	.section	.text.usb_osal_sem_reset,"ax",@progbits
	.align	1
	.globl	usb_osal_sem_reset
	.type	usb_osal_sem_reset, @function
usb_osal_sem_reset:
.LFB13:
	.loc 1 88 1 is_stmt 1
	.cfi_startproc
.LVL50:
	.loc 1 89 5
	li	a1,0
	tail	xQueueGenericReset
.LVL51:
	.cfi_endproc
.LFE13:
	.size	usb_osal_sem_reset, .-usb_osal_sem_reset
	.section	.rodata.usb_osal_mutex_create.str1.4,"aMS",@progbits,1
	.align	2
.LC4:
	.string	"Create mutex failed\r\n"
	.section	.text.usb_osal_mutex_create,"ax",@progbits
	.align	1
	.globl	usb_osal_mutex_create
	.type	usb_osal_mutex_create, @function
usb_osal_mutex_create:
.LFB14:
	.loc 1 93 1
	.cfi_startproc
	.loc 1 94 5
	.loc 1 93 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 94 48
	li	a0,1
	.loc 1 93 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 94 48
	call	xQueueCreateMutex
.LVL52:
	.loc 1 95 5 is_stmt 1
	.loc 1 95 8 is_stmt 0
	bne	a0,zero,.L32
	.loc 1 96 9 is_stmt 1
	.loc 1 96 14
	lui	a0,%hi(.LC0)
.LVL53:
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL54:
	.loc 1 96 60
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	call	printf
.LVL55:
	.loc 1 96 95
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL56:
.L34:
	.loc 1 96 122 discriminator 1
	.loc 1 97 9 discriminator 1
	.loc 1 98 9 discriminator 1
	.loc 1 97 15 discriminator 1
	j	.L34
.LVL57:
.L32:
	.loc 1 101 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE14:
	.size	usb_osal_mutex_create, .-usb_osal_mutex_create
	.section	.text.usb_osal_mutex_delete,"ax",@progbits
	.align	1
	.globl	usb_osal_mutex_delete
	.type	usb_osal_mutex_delete, @function
usb_osal_mutex_delete:
.LFB33:
	.cfi_startproc
	tail	vQueueDelete
	.cfi_endproc
.LFE33:
	.size	usb_osal_mutex_delete, .-usb_osal_mutex_delete
	.section	.text.usb_osal_mutex_take,"ax",@progbits
	.align	1
	.globl	usb_osal_mutex_take
	.type	usb_osal_mutex_take, @function
usb_osal_mutex_take:
.LFB16:
	.loc 1 109 1 is_stmt 1
	.cfi_startproc
.LVL58:
	.loc 1 110 5
	.loc 1 109 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 110 13
	li	a1,-1
	.loc 1 109 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 110 13
	call	xQueueSemaphoreTake
.LVL59:
	.loc 1 110 131
	li	a5,1
	beq	a0,a5,.L39
	li	a0,-14
.L37:
	.loc 1 111 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L39:
	.cfi_restore_state
	.loc 1 110 131
	li	a0,0
	j	.L37
	.cfi_endproc
.LFE16:
	.size	usb_osal_mutex_take, .-usb_osal_mutex_take
	.section	.text.usb_osal_mutex_give,"ax",@progbits
	.align	1
	.globl	usb_osal_mutex_give
	.type	usb_osal_mutex_give, @function
usb_osal_mutex_give:
.LFB17:
	.loc 1 114 1 is_stmt 1
	.cfi_startproc
.LVL60:
	.loc 1 115 5
	.loc 1 114 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 115 13
	li	a3,0
	li	a2,0
	li	a1,0
	.loc 1 114 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 115 13
	call	xQueueGenericSend
.LVL61:
	.loc 1 115 93
	li	a5,1
	beq	a0,a5,.L43
	li	a0,-14
.L41:
	.loc 1 116 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L43:
	.cfi_restore_state
	.loc 1 115 93
	li	a0,0
	j	.L41
	.cfi_endproc
.LFE17:
	.size	usb_osal_mutex_give, .-usb_osal_mutex_give
	.section	.text.usb_osal_mq_create,"ax",@progbits
	.align	1
	.globl	usb_osal_mq_create
	.type	usb_osal_mq_create, @function
usb_osal_mq_create:
.LFB18:
	.loc 1 119 1 is_stmt 1
	.cfi_startproc
.LVL62:
	.loc 1 120 5
	.loc 1 120 27 is_stmt 0
	li	a2,0
	li	a1,4
	tail	xQueueGenericCreate
.LVL63:
	.cfi_endproc
.LFE18:
	.size	usb_osal_mq_create, .-usb_osal_mq_create
	.section	.text.usb_osal_mq_delete,"ax",@progbits
	.align	1
	.globl	usb_osal_mq_delete
	.type	usb_osal_mq_delete, @function
usb_osal_mq_delete:
.LFB35:
	.cfi_startproc
	tail	vQueueDelete
	.cfi_endproc
.LFE35:
	.size	usb_osal_mq_delete, .-usb_osal_mq_delete
	.section	.text.usb_osal_mq_send,"ax",@progbits
	.align	1
	.globl	usb_osal_mq_send
	.type	usb_osal_mq_send, @function
usb_osal_mq_send:
.LFB20:
	.loc 1 129 1 is_stmt 1
	.cfi_startproc
.LVL64:
	.loc 1 130 5
.LBB18:
.LBB19:
	.loc 2 177 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE19:
.LBE18:
	.loc 1 133 8
	lw	a5,%lo(TrapNetCounter)(a5)
	.loc 1 129 1
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	.cfi_offset 1, -4
	.loc 1 129 1
	sw	a1,12(sp)
	.loc 1 130 16
	sw	zero,28(sp)
	.loc 1 131 5 is_stmt 1
	.loc 1 133 5
.LBB21:
.LBB20:
	.loc 2 177 5
.LBE20:
.LBE21:
	.loc 1 134 15 is_stmt 0
	li	a3,0
	.loc 1 133 8
	beq	a5,zero,.L48
	.loc 1 134 9 is_stmt 1
	.loc 1 134 15 is_stmt 0
	addi	a2,sp,28
	addi	a1,sp,12
.LVL65:
	call	xQueueGenericSendFromISR
.LVL66:
	.loc 1 135 9 is_stmt 1
	.loc 1 135 12 is_stmt 0
	li	a5,1
	bne	a0,a5,.L49
	.loc 1 136 13 is_stmt 1
	.loc 1 136 18
	.loc 1 136 20 is_stmt 0
	lw	a5,28(sp)
	bne	a5,zero,.L50
.LVL67:
.L54:
	.loc 1 142 5 is_stmt 1 discriminator 1
	.loc 1 142 50 is_stmt 0 discriminator 1
	li	a0,0
.LVL68:
.L47:
	.loc 1 143 1
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL69:
.L50:
	.cfi_restore_state
	.loc 1 136 49 is_stmt 1 discriminator 1
	call	vTaskSwitchContext
.LVL70:
	j	.L54
.LVL71:
.L48:
	.loc 1 139 9
	.loc 1 139 15 is_stmt 0
	li	a2,-1
	addi	a1,sp,12
.LVL72:
	call	xQueueGenericSend
.LVL73:
	.loc 1 142 5 is_stmt 1
	.loc 1 142 50 is_stmt 0
	li	a5,1
	beq	a0,a5,.L54
.L49:
	.loc 1 142 50 discriminator 2
	li	a0,-14
.LVL74:
	j	.L47
	.cfi_endproc
.LFE20:
	.size	usb_osal_mq_send, .-usb_osal_mq_send
	.section	.text.usb_osal_mq_recv,"ax",@progbits
	.align	1
	.globl	usb_osal_mq_recv
	.type	usb_osal_mq_recv, @function
usb_osal_mq_recv:
.LFB21:
	.loc 1 146 1 is_stmt 1
	.cfi_startproc
.LVL75:
	.loc 1 147 5
.LBB22:
.LBB23:
	.loc 2 177 31 is_stmt 0
	lui	a4,%hi(TrapNetCounter)
.LBE23:
.LBE22:
	.loc 1 150 8
	lw	a4,%lo(TrapNetCounter)(a4)
	.loc 1 146 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 147 16
	sw	zero,12(sp)
	.loc 1 148 5 is_stmt 1
	.loc 1 150 5
.LBB25:
.LBB24:
	.loc 2 177 5
.LBE24:
.LBE25:
	.loc 1 150 8 is_stmt 0
	beq	a4,zero,.L56
	.loc 1 151 9 is_stmt 1
	.loc 1 151 15 is_stmt 0
	addi	a2,sp,12
.LVL76:
	call	xQueueReceiveFromISR
.LVL77:
	.loc 1 152 9 is_stmt 1
	.loc 1 152 12 is_stmt 0
	li	a5,1
	bne	a0,a5,.L57
	.loc 1 153 13 is_stmt 1
	.loc 1 153 18
	.loc 1 153 20 is_stmt 0
	lw	a5,12(sp)
	bne	a5,zero,.L58
.LVL78:
.L64:
	.loc 1 155 54 discriminator 1
	li	a0,0
.L55:
	.loc 1 163 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL79:
.L58:
	.cfi_restore_state
	.loc 1 153 49 is_stmt 1 discriminator 1
	call	vTaskSwitchContext
.LVL80:
	j	.L64
.LVL81:
.L56:
	.loc 1 157 12 is_stmt 0
	li	a4,-1
	mv	a5,a2
	.loc 1 157 9 is_stmt 1
	.loc 1 157 12 is_stmt 0
	bne	a2,a4,.L60
.LVL82:
.L63:
	.loc 1 160 21
	call	xQueueReceive
.LVL83:
	.loc 1 160 207
	li	a5,1
	beq	a0,a5,.L64
.L57:
	.loc 1 158 122 discriminator 2
	li	a0,-14
	j	.L55
.LVL84:
.L60:
	.loc 1 160 13 is_stmt 1
	.loc 1 160 108 is_stmt 0
	li	a2,1000
.LVL85:
	mul	a5,a5,a2
.LVL86:
	.loc 1 160 21
	divu	a2,a5,a2
	j	.L63
	.cfi_endproc
.LFE21:
	.size	usb_osal_mq_recv, .-usb_osal_mq_recv
	.section	.rodata.usb_osal_timer_create.str1.4,"aMS",@progbits,1
	.align	2
.LC5:
	.string	"Create usb_osal_timer failed\r\n"
	.align	2
.LC6:
	.string	"usb_tim"
	.align	2
.LC7:
	.string	"Create timer failed\r\n"
	.section	.text.usb_osal_timer_create,"ax",@progbits
	.align	1
	.globl	usb_osal_timer_create
	.type	usb_osal_timer_create, @function
usb_osal_timer_create:
.LFB23:
	.loc 1 173 1 is_stmt 1
	.cfi_startproc
.LVL87:
	.loc 1 174 5
	.loc 1 175 5
	.loc 1 177 5
	.loc 1 173 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 177 13
	li	a0,20
.LVL88:
	.loc 1 173 1
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 173 1
	mv	s1,a1
	mv	s4,a2
	mv	s3,a3
	mv	s2,a4
	.loc 1 177 13
	call	pvPortMalloc
.LVL89:
	.loc 1 179 5 is_stmt 1
	.loc 1 179 8 is_stmt 0
	bne	a0,zero,.L66
	.loc 1 180 9 is_stmt 1
	.loc 1 180 14
	lui	a0,%hi(.LC0)
.LVL90:
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL91:
	.loc 1 180 60
	lui	a0,%hi(.LC5)
	addi	a0,a0,%lo(.LC5)
	call	printf
.LVL92:
	.loc 1 180 104
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL93:
.L67:
	.loc 1 180 131 discriminator 1
	.loc 1 181 9 discriminator 1
	.loc 1 182 9 discriminator 1
	.loc 1 181 15 discriminator 1
	j	.L67
.LVL94:
.L66:
	.loc 1 184 5 is_stmt 0
	li	a2,20
	li	a1,0
	mv	s0,a0
	.loc 1 184 5 is_stmt 1
	call	memset
.LVL95:
	.loc 1 186 5
	.loc 1 189 103 is_stmt 0
	li	a1,1000
	mul	s1,s1,a1
.LVL96:
	.loc 1 189 28
	lui	a4,%hi(__usb_timeout)
	lui	a0,%hi(.LC6)
	.loc 1 186 20
	sw	s4,0(s0)
	.loc 1 187 5 is_stmt 1
	.loc 1 187 21 is_stmt 0
	sw	s3,4(s0)
	.loc 1 189 5 is_stmt 1
	.loc 1 189 28 is_stmt 0
	addi	a4,a4,%lo(__usb_timeout)
	mv	a3,s0
	mv	a2,s2
	addi	a0,a0,%lo(.LC6)
	divu	a1,s1,a1
	call	xTimerCreate
.LVL97:
	.loc 1 189 18
	sw	a0,16(s0)
	.loc 1 190 5 is_stmt 1
	.loc 1 190 8 is_stmt 0
	bne	a0,zero,.L65
	.loc 1 191 9 is_stmt 1
	.loc 1 191 14
	lui	a0,%hi(.LC0)
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL98:
	.loc 1 191 60
	lui	a0,%hi(.LC7)
	addi	a0,a0,%lo(.LC7)
	call	printf
.LVL99:
	.loc 1 191 95
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL100:
.L69:
	.loc 1 191 122 discriminator 2
	.loc 1 192 9 discriminator 2
	.loc 1 193 9 discriminator 2
	.loc 1 192 15 discriminator 2
	j	.L69
.L65:
	.loc 1 196 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	mv	a0,s0
	lw	s0,24(sp)
	.cfi_restore 8
.LVL101:
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
.LVL102:
	lw	s4,8(sp)
	.cfi_restore 20
.LVL103:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE23:
	.size	usb_osal_timer_create, .-usb_osal_timer_create
	.section	.text.usb_osal_timer_delete,"ax",@progbits
	.align	1
	.globl	usb_osal_timer_delete
	.type	usb_osal_timer_delete, @function
usb_osal_timer_delete:
.LFB24:
	.loc 1 199 1 is_stmt 1
	.cfi_startproc
.LVL104:
	.loc 1 200 5
	.loc 1 199 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	mv	s0,a0
	.loc 1 200 5
	lw	a0,16(a0)
.LVL105:
	li	a4,0
	li	a3,0
	li	a2,0
	li	a1,3
	.loc 1 199 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 200 5
	call	xTimerGenericCommand
.LVL106:
	.loc 1 201 5 is_stmt 1
	lw	a0,16(s0)
	li	a4,0
	li	a3,0
	li	a2,0
	li	a1,5
	call	xTimerGenericCommand
.LVL107:
	.loc 1 202 5
	mv	a0,s0
	.loc 1 203 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
.LVL108:
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 202 5
	tail	vPortFree
.LVL109:
	.cfi_endproc
.LFE24:
	.size	usb_osal_timer_delete, .-usb_osal_timer_delete
	.section	.text.usb_osal_timer_start,"ax",@progbits
	.align	1
	.globl	usb_osal_timer_start
	.type	usb_osal_timer_start, @function
usb_osal_timer_start:
.LFB25:
	.loc 1 206 1 is_stmt 1
	.cfi_startproc
.LVL110:
	.loc 1 207 5
.LBB26:
.LBB27:
	.loc 2 177 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE27:
.LBE26:
	.loc 1 210 8
	lw	a5,%lo(TrapNetCounter)(a5)
	.loc 1 206 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 207 16
	sw	zero,12(sp)
	.loc 1 208 5 is_stmt 1
	.loc 1 210 5
.LBB29:
.LBB28:
	.loc 2 177 5
.LBE28:
.LBE29:
	.loc 1 211 44 is_stmt 0
	lw	s0,16(a0)
	.loc 1 210 8
	beq	a5,zero,.L74
	.loc 1 211 9 is_stmt 1
	.loc 1 211 15 is_stmt 0
	call	xTaskGetTickCountFromISR
.LVL111:
	mv	a2,a0
	li	a4,0
	addi	a3,sp,12
	li	a1,6
	mv	a0,s0
	call	xTimerGenericCommand
.LVL112:
	.loc 1 212 9 is_stmt 1
	.loc 1 212 12 is_stmt 0
	li	a5,1
	bne	a0,a5,.L73
	.loc 1 213 13 is_stmt 1
	.loc 1 213 18
	.loc 1 213 20 is_stmt 0
	lw	a5,12(sp)
	beq	a5,zero,.L73
	.loc 1 213 49 is_stmt 1 discriminator 1
	call	vTaskSwitchContext
.LVL113:
.L73:
	.loc 1 218 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL114:
.L74:
	.cfi_restore_state
	.loc 1 216 9 is_stmt 1
	call	xTaskGetTickCount
.LVL115:
	mv	a2,a0
	li	a4,0
	li	a3,0
	li	a1,1
	mv	a0,s0
	call	xTimerGenericCommand
.LVL116:
	.loc 1 218 1 is_stmt 0
	j	.L73
	.cfi_endproc
.LFE25:
	.size	usb_osal_timer_start, .-usb_osal_timer_start
	.section	.text.usb_osal_timer_stop,"ax",@progbits
	.align	1
	.globl	usb_osal_timer_stop
	.type	usb_osal_timer_stop, @function
usb_osal_timer_stop:
.LFB26:
	.loc 1 221 1 is_stmt 1
	.cfi_startproc
.LVL117:
	.loc 1 222 5
	lw	a0,16(a0)
.LVL118:
	li	a4,0
	li	a3,0
	li	a2,0
	li	a1,3
	tail	xTimerGenericCommand
.LVL119:
	.cfi_endproc
.LFE26:
	.size	usb_osal_timer_stop, .-usb_osal_timer_stop
	.section	.text.usb_osal_enter_critical_section,"ax",@progbits
	.align	1
	.globl	usb_osal_enter_critical_section
	.type	usb_osal_enter_critical_section, @function
usb_osal_enter_critical_section:
.LFB27:
	.loc 1 226 1
	.cfi_startproc
	.loc 1 227 5
	.loc 1 229 5
.LBB30:
.LBB31:
	.loc 2 177 5
	.loc 2 177 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE31:
.LBE30:
	.loc 1 229 8
	lw	a5,%lo(TrapNetCounter)(a5)
	bne	a5,zero,.L84
	.loc 1 232 9 is_stmt 1
	.loc 1 226 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 232 9
	call	vTaskEnterCritical
.LVL120:
	.loc 1 233 9 is_stmt 1
	.loc 1 237 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 233 13
	li	a0,1
	.loc 1 237 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL121:
.L84:
	li	a0,0
	ret
	.cfi_endproc
.LFE27:
	.size	usb_osal_enter_critical_section, .-usb_osal_enter_critical_section
	.section	.text.usb_osal_leave_critical_section,"ax",@progbits
	.align	1
	.globl	usb_osal_leave_critical_section
	.type	usb_osal_leave_critical_section, @function
usb_osal_leave_critical_section:
.LFB28:
	.loc 1 240 1 is_stmt 1
	.cfi_startproc
.LVL122:
	.loc 1 241 5
.LBB32:
.LBB33:
	.loc 2 177 5
	.loc 2 177 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE33:
.LBE32:
	.loc 1 241 8
	lw	a5,%lo(TrapNetCounter)(a5)
	bne	a5,zero,.L89
	.loc 1 244 9 is_stmt 1
	tail	vTaskExitCritical
.LVL123:
.L89:
	.loc 1 246 1 is_stmt 0
	ret
	.cfi_endproc
.LFE28:
	.size	usb_osal_leave_critical_section, .-usb_osal_leave_critical_section
	.section	.text.usb_osal_msleep,"ax",@progbits
	.align	1
	.globl	usb_osal_msleep
	.type	usb_osal_msleep, @function
usb_osal_msleep:
.LFB29:
	.loc 1 249 1 is_stmt 1
	.cfi_startproc
.LVL124:
	.loc 1 250 5
	.loc 1 250 62 is_stmt 0
	li	a5,1000
	mul	a0,a0,a5
.LVL125:
	.loc 1 250 5
	divu	a0,a0,a5
	tail	vTaskDelay
.LVL126:
	.cfi_endproc
.LFE29:
	.size	usb_osal_msleep, .-usb_osal_msleep
	.section	.text.usb_osal_malloc,"ax",@progbits
	.align	1
	.globl	usb_osal_malloc
	.type	usb_osal_malloc, @function
usb_osal_malloc:
.LFB30:
	.loc 1 254 1 is_stmt 1
	.cfi_startproc
.LVL127:
	.loc 1 255 5
	.loc 1 255 12 is_stmt 0
	tail	pvPortMalloc
.LVL128:
	.cfi_endproc
.LFE30:
	.size	usb_osal_malloc, .-usb_osal_malloc
	.section	.text.usb_osal_free,"ax",@progbits
	.align	1
	.globl	usb_osal_free
	.type	usb_osal_free, @function
usb_osal_free:
.LFB31:
	.loc 1 259 1 is_stmt 1
	.cfi_startproc
.LVL129:
	.loc 1 260 5
	tail	vPortFree
.LVL130:
	.cfi_endproc
.LFE31:
	.size	usb_osal_free, .-usb_osal_free
	.text
.Letext0:
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 4 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 5 "./toolchain/linux_x86_64/lib/gcc/riscv64-unknown-elf/10.4.0/include/stddef.h"
	.file 6 "./components/usb/cherryusb/common/usb_osal.h"
	.file 7 "./components/os/freertos/include/task.h"
	.file 8 "./components/os/freertos/include/queue.h"
	.file 9 "./components/os/freertos/include/semphr.h"
	.file 10 "./components/os/freertos/include/timers.h"
	.file 11 "./components/os/freertos/include/portable.h"
	.file 12 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/stdio.h"
	.file 13 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xeb7
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF114
	.byte	0xc
	.4byte	.LASF115
	.4byte	.LASF116
	.4byte	.Ldebug_ranges0+0x60
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x3
	.4byte	.LASF5
	.byte	0x3
	.byte	0x2b
	.byte	0x17
	.4byte	0x3f
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.byte	0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x4d
	.byte	0x12
	.4byte	0x60
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.byte	0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x4f
	.byte	0x1b
	.4byte	0x73
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0xe8
	.byte	0x16
	.4byte	0x25
	.byte	0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x33
	.byte	0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x2c
	.byte	0x13
	.4byte	0x54
	.byte	0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x67
	.byte	0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x52
	.byte	0x15
	.4byte	0x8f
	.byte	0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0xd1
	.byte	0x16
	.4byte	0x25
	.byte	0x5
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF18
	.byte	0x6
	.4byte	0xd9
	.byte	0x7
	.byte	0x4
	.4byte	0xe0
	.byte	0x3
	.4byte	.LASF19
	.byte	0x6
	.byte	0x1a
	.byte	0xf
	.4byte	0xd7
	.byte	0x3
	.4byte	.LASF20
	.byte	0x6
	.byte	0x1b
	.byte	0xf
	.4byte	0xd7
	.byte	0x3
	.4byte	.LASF21
	.byte	0x6
	.byte	0x1c
	.byte	0xf
	.4byte	0xd7
	.byte	0x3
	.4byte	.LASF22
	.byte	0x6
	.byte	0x1d
	.byte	0xf
	.4byte	0xd7
	.byte	0x3
	.4byte	.LASF23
	.byte	0x6
	.byte	0x1e
	.byte	0x10
	.4byte	0x127
	.byte	0x7
	.byte	0x4
	.4byte	0x12d
	.byte	0x8
	.4byte	0x138
	.byte	0x9
	.4byte	0xd7
	.byte	0
	.byte	0x3
	.4byte	.LASF24
	.byte	0x6
	.byte	0x1f
	.byte	0x10
	.4byte	0x127
	.byte	0xa
	.4byte	.LASF117
	.byte	0x14
	.byte	0x6
	.byte	0x20
	.byte	0x8
	.4byte	0x193
	.byte	0xb
	.4byte	.LASF25
	.byte	0x6
	.byte	0x21
	.byte	0x19
	.4byte	0x138
	.byte	0
	.byte	0xb
	.4byte	.LASF26
	.byte	0x6
	.byte	0x22
	.byte	0xb
	.4byte	0xd7
	.byte	0x4
	.byte	0xb
	.4byte	.LASF27
	.byte	0x6
	.byte	0x23
	.byte	0x9
	.4byte	0x193
	.byte	0x8
	.byte	0xb
	.4byte	.LASF28
	.byte	0x6
	.byte	0x24
	.byte	0xe
	.4byte	0xb3
	.byte	0xc
	.byte	0xb
	.4byte	.LASF29
	.byte	0x6
	.byte	0x25
	.byte	0xb
	.4byte	0xd7
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF30
	.byte	0x3
	.4byte	.LASF31
	.byte	0x2
	.byte	0x42
	.byte	0x11
	.4byte	0xa7
	.byte	0x3
	.4byte	.LASF32
	.byte	0x2
	.byte	0x43
	.byte	0x12
	.4byte	0xb3
	.byte	0x6
	.4byte	0x1a6
	.byte	0x3
	.4byte	.LASF33
	.byte	0x2
	.byte	0x44
	.byte	0x12
	.4byte	0xb3
	.byte	0xc
	.4byte	.LASF118
	.byte	0x2
	.byte	0xae
	.byte	0x13
	.4byte	0x19a
	.byte	0x3
	.4byte	.LASF34
	.byte	0x7
	.byte	0x5c
	.byte	0x26
	.4byte	0x1db
	.byte	0x7
	.byte	0x4
	.4byte	0x1e1
	.byte	0xd
	.4byte	.LASF36
	.byte	0x3
	.4byte	.LASF35
	.byte	0x8
	.byte	0x33
	.byte	0x22
	.4byte	0x1f2
	.byte	0x7
	.byte	0x4
	.4byte	0x1f8
	.byte	0xd
	.4byte	.LASF37
	.byte	0x3
	.4byte	.LASF38
	.byte	0x9
	.byte	0x26
	.byte	0x17
	.4byte	0x1e6
	.byte	0x3
	.4byte	.LASF39
	.byte	0xa
	.byte	0x50
	.byte	0x22
	.4byte	0x215
	.byte	0x7
	.byte	0x4
	.4byte	0x21b
	.byte	0xd
	.4byte	.LASF40
	.byte	0x3
	.4byte	.LASF41
	.byte	0xa
	.byte	0x55
	.byte	0x11
	.4byte	0x22c
	.byte	0x7
	.byte	0x4
	.4byte	0x232
	.byte	0x8
	.4byte	0x23d
	.byte	0x9
	.4byte	0x209
	.byte	0
	.byte	0xe
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x102
	.byte	0x6
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x1
	.byte	0x9c
	.4byte	0x277
	.byte	0xf
	.string	"ptr"
	.byte	0x1
	.2byte	0x102
	.byte	0x1a
	.4byte	0xd7
	.4byte	.LLST43
	.byte	0x10
	.4byte	.LVL130
	.4byte	0xd48
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LASF48
	.byte	0x1
	.byte	0xfd
	.byte	0x7
	.4byte	0xd7
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x1
	.byte	0x9c
	.4byte	0x2b3
	.byte	0x13
	.4byte	.LASF42
	.byte	0x1
	.byte	0xfd
	.byte	0x1e
	.4byte	0xcb
	.4byte	.LLST42
	.byte	0x10
	.4byte	.LVL128
	.4byte	0xd54
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LASF44
	.byte	0x1
	.byte	0xf8
	.byte	0x6
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x1
	.byte	0x9c
	.4byte	0x2f9
	.byte	0x13
	.4byte	.LASF45
	.byte	0x1
	.byte	0xf8
	.byte	0x1f
	.4byte	0xb3
	.4byte	.LLST41
	.byte	0x10
	.4byte	.LVL126
	.4byte	0xd60
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x11
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xa
	.2byte	0x3e8
	.byte	0x1e
	.byte	0xf7
	.byte	0x25
	.byte	0xa
	.2byte	0x3e8
	.byte	0xf7
	.byte	0x25
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LASF46
	.byte	0x1
	.byte	0xef
	.byte	0x6
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x1
	.byte	0x9c
	.4byte	0x339
	.byte	0x13
	.4byte	.LASF47
	.byte	0x1
	.byte	0xef
	.byte	0x2d
	.4byte	0xcb
	.4byte	.LLST40
	.byte	0x15
	.4byte	0xd0d
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.byte	0x1
	.byte	0xf1
	.byte	0x9
	.byte	0x16
	.4byte	.LVL123
	.4byte	0xd6d
	.byte	0
	.byte	0x12
	.4byte	.LASF49
	.byte	0x1
	.byte	0xe1
	.byte	0x8
	.4byte	0xcb
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x1
	.byte	0x9c
	.4byte	0x37d
	.byte	0x17
	.string	"ret"
	.byte	0x1
	.byte	0xe3
	.byte	0xc
	.4byte	0xcb
	.4byte	.LLST39
	.byte	0x15
	.4byte	0xd0d
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.byte	0x1
	.byte	0xe5
	.byte	0x9
	.byte	0x18
	.4byte	.LVL120
	.4byte	0xd79
	.byte	0
	.byte	0x14
	.4byte	.LASF50
	.byte	0x1
	.byte	0xdc
	.byte	0x6
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x1
	.byte	0x9c
	.4byte	0x3c2
	.byte	0x13
	.4byte	.LASF29
	.byte	0x1
	.byte	0xdc
	.byte	0x31
	.4byte	0x3c2
	.4byte	.LLST38
	.byte	0x10
	.4byte	.LVL119
	.4byte	0xd85
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0x11
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x11
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x144
	.byte	0x14
	.4byte	.LASF51
	.byte	0x1
	.byte	0xcd
	.byte	0x6
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x1
	.byte	0x9c
	.4byte	0x47c
	.byte	0x13
	.4byte	.LASF29
	.byte	0x1
	.byte	0xcd
	.byte	0x32
	.4byte	0x3c2
	.4byte	.LLST36
	.byte	0x19
	.4byte	.LASF52
	.byte	0x1
	.byte	0xcf
	.byte	0x10
	.4byte	0x19a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x17
	.string	"ret"
	.byte	0x1
	.byte	0xd0
	.byte	0x9
	.4byte	0x88
	.4byte	.LLST37
	.byte	0x1a
	.4byte	0xd0d
	.4byte	.LBB26
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0xd2
	.byte	0x9
	.byte	0x18
	.4byte	.LVL111
	.4byte	0xd92
	.byte	0x1b
	.4byte	.LVL112
	.4byte	0xd85
	.4byte	0x44a
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x36
	.byte	0x11
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x11
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x18
	.4byte	.LVL113
	.4byte	0xd9f
	.byte	0x18
	.4byte	.LVL115
	.4byte	0xdac
	.byte	0x1c
	.4byte	.LVL116
	.4byte	0xd85
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x11
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x11
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LASF53
	.byte	0x1
	.byte	0xc6
	.byte	0x6
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x1
	.byte	0x9c
	.4byte	0x4f8
	.byte	0x13
	.4byte	.LASF29
	.byte	0x1
	.byte	0xc6
	.byte	0x33
	.4byte	0x3c2
	.4byte	.LLST35
	.byte	0x1b
	.4byte	.LVL106
	.4byte	0xd85
	.4byte	0x4c4
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0x11
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x11
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1b
	.4byte	.LVL107
	.4byte	0xd85
	.4byte	0x4e6
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x35
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0x11
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x11
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x10
	.4byte	.LVL109
	.4byte	0xd48
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LASF54
	.byte	0x1
	.byte	0xac
	.byte	0x18
	.4byte	0x3c2
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x1
	.byte	0x9c
	.4byte	0x666
	.byte	0x13
	.4byte	.LASF55
	.byte	0x1
	.byte	0xac
	.byte	0x3a
	.4byte	0xe5
	.4byte	.LLST29
	.byte	0x13
	.4byte	.LASF28
	.byte	0x1
	.byte	0xac
	.byte	0x49
	.4byte	0xb3
	.4byte	.LLST30
	.byte	0x13
	.4byte	.LASF25
	.byte	0x1
	.byte	0xac
	.byte	0x69
	.4byte	0x138
	.4byte	.LLST31
	.byte	0x13
	.4byte	.LASF26
	.byte	0x1
	.byte	0xac
	.byte	0x78
	.4byte	0xd7
	.4byte	.LLST32
	.byte	0x13
	.4byte	.LASF27
	.byte	0x1
	.byte	0xac
	.byte	0x86
	.4byte	0x193
	.4byte	.LLST33
	.byte	0x1d
	.4byte	.LASF29
	.byte	0x1
	.byte	0xae
	.byte	0x1c
	.4byte	0x3c2
	.4byte	.LLST34
	.byte	0x1b
	.4byte	.LVL89
	.4byte	0xd54
	.4byte	0x585
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0x1b
	.4byte	.LVL91
	.4byte	0xdb9
	.4byte	0x59c
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x1b
	.4byte	.LVL92
	.4byte	0xdb9
	.4byte	0x5b3
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x1b
	.4byte	.LVL93
	.4byte	0xdb9
	.4byte	0x5ca
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x1b
	.4byte	.LVL95
	.4byte	0xdc5
	.4byte	0x5e8
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0x1b
	.4byte	.LVL97
	.4byte	0xdd1
	.4byte	0x624
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0xc
	.byte	0x79
	.byte	0
	.byte	0xf7
	.byte	0x25
	.byte	0xa
	.2byte	0x3e8
	.byte	0xf7
	.byte	0x25
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5e
	.byte	0x5
	.byte	0x3
	.4byte	__usb_timeout
	.byte	0
	.byte	0x1b
	.4byte	.LVL98
	.4byte	0xdb9
	.4byte	0x63b
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x1b
	.4byte	.LVL99
	.4byte	0xdb9
	.4byte	0x652
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.byte	0x1c
	.4byte	.LVL100
	.4byte	0xdb9
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LASF119
	.byte	0x1
	.byte	0xa5
	.byte	0xd
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x1
	.byte	0x9c
	.4byte	0x6ae
	.byte	0x13
	.4byte	.LASF56
	.byte	0x1
	.byte	0xa5
	.byte	0x2a
	.4byte	0x6ae
	.4byte	.LLST0
	.byte	0x1d
	.4byte	.LASF29
	.byte	0x1
	.byte	0xa7
	.byte	0x1c
	.4byte	0x3c2
	.4byte	.LLST1
	.byte	0x1c
	.4byte	.LVL1
	.4byte	0xddd
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x209
	.byte	0x12
	.4byte	.LASF57
	.byte	0x1
	.byte	0x91
	.byte	0x5
	.4byte	0x88
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x1
	.byte	0x9c
	.4byte	0x761
	.byte	0x1f
	.string	"mq"
	.byte	0x1
	.byte	0x91
	.byte	0x24
	.4byte	0x10f
	.4byte	.LLST25
	.byte	0x13
	.4byte	.LASF58
	.byte	0x1
	.byte	0x91
	.byte	0x33
	.4byte	0x761
	.4byte	.LLST26
	.byte	0x13
	.4byte	.LASF59
	.byte	0x1
	.byte	0x91
	.byte	0x42
	.4byte	0xb3
	.4byte	.LLST27
	.byte	0x19
	.4byte	.LASF52
	.byte	0x1
	.byte	0x93
	.byte	0x10
	.4byte	0x19a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x17
	.string	"ret"
	.byte	0x1
	.byte	0x94
	.byte	0x9
	.4byte	0x88
	.4byte	.LLST28
	.byte	0x1a
	.4byte	0xd0d
	.4byte	.LBB22
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x96
	.byte	0x9
	.byte	0x1b
	.4byte	.LVL77
	.4byte	0xdea
	.4byte	0x74e
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x18
	.4byte	.LVL80
	.4byte	0xd9f
	.byte	0x18
	.4byte	.LVL83
	.4byte	0xdf7
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xbf
	.byte	0x12
	.4byte	.LASF60
	.byte	0x1
	.byte	0x80
	.byte	0x5
	.4byte	0x88
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x1
	.byte	0x9c
	.4byte	0x815
	.byte	0x1f
	.string	"mq"
	.byte	0x1
	.byte	0x80
	.byte	0x24
	.4byte	0x10f
	.4byte	.LLST22
	.byte	0x13
	.4byte	.LASF58
	.byte	0x1
	.byte	0x80
	.byte	0x32
	.4byte	0xbf
	.4byte	.LLST23
	.byte	0x19
	.4byte	.LASF52
	.byte	0x1
	.byte	0x82
	.byte	0x10
	.4byte	0x19a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x17
	.string	"ret"
	.byte	0x1
	.byte	0x83
	.byte	0x9
	.4byte	0x88
	.4byte	.LLST24
	.byte	0x1a
	.4byte	0xd0d
	.4byte	.LBB18
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x85
	.byte	0x9
	.byte	0x1b
	.4byte	.LVL66
	.4byte	0xe04
	.4byte	0x7f5
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x11
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x18
	.4byte	.LVL70
	.4byte	0xd9f
	.byte	0x1c
	.4byte	.LVL73
	.4byte	0xe11
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.byte	0x20
	.4byte	.LASF66
	.byte	0x1
	.byte	0x7b
	.byte	0x6
	.4byte	0x82d
	.byte	0x21
	.string	"mq"
	.byte	0x1
	.byte	0x7b
	.byte	0x27
	.4byte	0x10f
	.byte	0
	.byte	0x12
	.4byte	.LASF61
	.byte	0x1
	.byte	0x76
	.byte	0xf
	.4byte	0x10f
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.4byte	0x873
	.byte	0x13
	.4byte	.LASF62
	.byte	0x1
	.byte	0x76
	.byte	0x2b
	.4byte	0xb3
	.4byte	.LLST21
	.byte	0x10
	.4byte	.LVL63
	.4byte	0xe1e
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x34
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LASF63
	.byte	0x1
	.byte	0x71
	.byte	0x5
	.4byte	0x88
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.4byte	0x8be
	.byte	0x13
	.4byte	.LASF64
	.byte	0x1
	.byte	0x71
	.byte	0x2a
	.4byte	0x103
	.4byte	.LLST20
	.byte	0x1c
	.4byte	.LVL61
	.4byte	0xe11
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0x11
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LASF65
	.byte	0x1
	.byte	0x6c
	.byte	0x5
	.4byte	0x88
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0x900
	.byte	0x13
	.4byte	.LASF64
	.byte	0x1
	.byte	0x6c
	.byte	0x2a
	.4byte	0x103
	.4byte	.LLST19
	.byte	0x1c
	.4byte	.LVL59
	.4byte	0xe2b
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.byte	0x20
	.4byte	.LASF67
	.byte	0x1
	.byte	0x67
	.byte	0x6
	.4byte	0x919
	.byte	0x22
	.4byte	.LASF64
	.byte	0x1
	.byte	0x67
	.byte	0x2d
	.4byte	0x103
	.byte	0
	.byte	0x12
	.4byte	.LASF68
	.byte	0x1
	.byte	0x5c
	.byte	0x12
	.4byte	0x103
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x998
	.byte	0x1d
	.4byte	.LASF64
	.byte	0x1
	.byte	0x5e
	.byte	0x16
	.4byte	0x103
	.4byte	.LLST18
	.byte	0x1b
	.4byte	.LVL52
	.4byte	0xe38
	.4byte	0x956
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x1b
	.4byte	.LVL54
	.4byte	0xdb9
	.4byte	0x96d
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x1b
	.4byte	.LVL55
	.4byte	0xdb9
	.4byte	0x984
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0x1c
	.4byte	.LVL56
	.4byte	0xdb9
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LASF69
	.byte	0x1
	.byte	0x57
	.byte	0x6
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x9d5
	.byte	0x1f
	.string	"sem"
	.byte	0x1
	.byte	0x57
	.byte	0x28
	.4byte	0xf7
	.4byte	.LLST17
	.byte	0x10
	.4byte	.LVL51
	.4byte	0xe45
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LASF70
	.byte	0x1
	.byte	0x46
	.byte	0x5
	.4byte	0x88
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0xa6c
	.byte	0x1f
	.string	"sem"
	.byte	0x1
	.byte	0x46
	.byte	0x26
	.4byte	0xf7
	.4byte	.LLST15
	.byte	0x19
	.4byte	.LASF52
	.byte	0x1
	.byte	0x48
	.byte	0x10
	.4byte	0x19a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x17
	.string	"ret"
	.byte	0x1
	.byte	0x49
	.byte	0x9
	.4byte	0x88
	.4byte	.LLST16
	.byte	0x1a
	.4byte	0xd0d
	.4byte	.LBB14
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x4b
	.byte	0x9
	.byte	0x1b
	.4byte	.LVL42
	.4byte	0xe52
	.4byte	0xa49
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x18
	.4byte	.LVL46
	.4byte	0xd9f
	.byte	0x1c
	.4byte	.LVL48
	.4byte	0xe11
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0x11
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LASF71
	.byte	0x1
	.byte	0x3d
	.byte	0x5
	.4byte	0x88
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0xab0
	.byte	0x1f
	.string	"sem"
	.byte	0x1
	.byte	0x3d
	.byte	0x26
	.4byte	0xf7
	.4byte	.LLST13
	.byte	0x13
	.4byte	.LASF59
	.byte	0x1
	.byte	0x3d
	.byte	0x34
	.4byte	0xb3
	.4byte	.LLST14
	.byte	0x18
	.4byte	.LVL38
	.4byte	0xe2b
	.byte	0
	.byte	0x23
	.4byte	.LASF120
	.byte	0x1
	.byte	0x38
	.byte	0x6
	.byte	0x1
	.4byte	0xaca
	.byte	0x21
	.string	"sem"
	.byte	0x1
	.byte	0x38
	.byte	0x29
	.4byte	0xf7
	.byte	0
	.byte	0x12
	.4byte	.LASF72
	.byte	0x1
	.byte	0x2d
	.byte	0x10
	.4byte	0xf7
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0xb60
	.byte	0x13
	.4byte	.LASF73
	.byte	0x1
	.byte	0x2d
	.byte	0x2d
	.4byte	0xb3
	.4byte	.LLST10
	.byte	0x17
	.string	"sem"
	.byte	0x1
	.byte	0x2f
	.byte	0x14
	.4byte	0xf7
	.4byte	.LLST11
	.byte	0x1b
	.4byte	.LVL28
	.4byte	0xe5f
	.4byte	0xb1e
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x1b
	.4byte	.LVL30
	.4byte	0xdb9
	.4byte	0xb35
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x1b
	.4byte	.LVL31
	.4byte	0xdb9
	.4byte	0xb4c
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x1c
	.4byte	.LVL32
	.4byte	0xdb9
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LASF74
	.byte	0x1
	.byte	0x21
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0xbd6
	.byte	0x1d
	.4byte	.LASF75
	.byte	0x1
	.byte	0x23
	.byte	0x12
	.4byte	0x1cf
	.4byte	.LLST8
	.byte	0x1d
	.4byte	.LASF76
	.byte	0x1
	.byte	0x24
	.byte	0x17
	.4byte	0x1b2
	.4byte	.LLST9
	.byte	0x18
	.4byte	.LVL18
	.4byte	0xe6c
	.byte	0x1b
	.4byte	.LVL20
	.4byte	0xe79
	.4byte	0xbb3
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LVL22
	.4byte	0xe86
	.4byte	0xbcc
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x16
	.4byte	.LVL25
	.4byte	0xe86
	.byte	0
	.byte	0x14
	.4byte	.LASF77
	.byte	0x1
	.byte	0x1c
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0xc0e
	.byte	0x13
	.4byte	.LASF78
	.byte	0x1
	.byte	0x1c
	.byte	0x2f
	.4byte	0xeb
	.4byte	.LLST7
	.byte	0x10
	.4byte	.LVL17
	.4byte	0xe93
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LASF79
	.byte	0x1
	.byte	0xf
	.byte	0x13
	.4byte	0xeb
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0xd0d
	.byte	0x13
	.4byte	.LASF55
	.byte	0x1
	.byte	0xf
	.byte	0x36
	.4byte	0xe5
	.4byte	.LLST2
	.byte	0x13
	.4byte	.LASF80
	.byte	0x1
	.byte	0xf
	.byte	0x45
	.4byte	0xb3
	.4byte	.LLST3
	.byte	0x13
	.4byte	.LASF81
	.byte	0x1
	.byte	0xf
	.byte	0x5a
	.4byte	0xb3
	.4byte	.LLST4
	.byte	0x13
	.4byte	.LASF82
	.byte	0x1
	.byte	0xf
	.byte	0x73
	.4byte	0x11b
	.4byte	.LLST5
	.byte	0x13
	.4byte	.LASF83
	.byte	0x1
	.byte	0xf
	.byte	0x80
	.4byte	0xd7
	.4byte	.LLST6
	.byte	0x19
	.4byte	.LASF84
	.byte	0x1
	.byte	0x11
	.byte	0x12
	.4byte	0x1cf
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x1b
	.4byte	.LVL11
	.4byte	0xea0
	.4byte	0xcc5
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x9
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9
	.byte	0xf2
	.byte	0x24
	.byte	0x9
	.byte	0xf4
	.byte	0x25
	.byte	0x11
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x11
	.byte	0x1
	.byte	0x5e
	.byte	0x5
	.byte	0x4f
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x1c
	.byte	0x11
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x1b
	.4byte	.LVL12
	.4byte	0xdb9
	.4byte	0xcdc
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x1b
	.4byte	.LVL13
	.4byte	0xdb9
	.4byte	0xcf9
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LVL14
	.4byte	0xdb9
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	.LASF121
	.byte	0x2
	.byte	0xaf
	.byte	0x3a
	.4byte	0x19a
	.byte	0x3
	.byte	0x25
	.4byte	0xab0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0xd48
	.byte	0x26
	.4byte	0xabd
	.4byte	.LLST12
	.byte	0x10
	.4byte	.LVL35
	.4byte	0xead
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x27
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0xb
	.byte	0xb4
	.byte	0x6
	.byte	0x27
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0xb
	.byte	0xb1
	.byte	0x8
	.byte	0x28
	.4byte	.LASF87
	.4byte	.LASF87
	.byte	0x7
	.2byte	0x31f
	.byte	0x6
	.byte	0x27
	.4byte	.LASF88
	.4byte	.LASF88
	.byte	0x2
	.byte	0x7e
	.byte	0xd
	.byte	0x27
	.4byte	.LASF89
	.4byte	.LASF89
	.byte	0x2
	.byte	0x7d
	.byte	0xd
	.byte	0x28
	.4byte	.LASF90
	.4byte	.LASF90
	.byte	0xa
	.2byte	0x547
	.byte	0xc
	.byte	0x28
	.4byte	.LASF91
	.4byte	.LASF91
	.byte	0x7
	.2byte	0x5ba
	.byte	0xc
	.byte	0x28
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0x7
	.2byte	0xc2b
	.byte	0x7
	.byte	0x28
	.4byte	.LASF93
	.4byte	.LASF93
	.byte	0x7
	.2byte	0x5a8
	.byte	0xc
	.byte	0x27
	.4byte	.LASF94
	.4byte	.LASF94
	.byte	0xc
	.byte	0xc8
	.byte	0x5
	.byte	0x27
	.4byte	.LASF95
	.4byte	.LASF95
	.byte	0xd
	.byte	0x21
	.byte	0x8
	.byte	0x27
	.4byte	.LASF96
	.4byte	.LASF96
	.byte	0xa
	.byte	0xe8
	.byte	0x13
	.byte	0x28
	.4byte	.LASF97
	.4byte	.LASF97
	.byte	0xa
	.2byte	0x186
	.byte	0x8
	.byte	0x28
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0x8
	.2byte	0x5a6
	.byte	0xc
	.byte	0x28
	.4byte	.LASF99
	.4byte	.LASF99
	.byte	0x8
	.2byte	0x391
	.byte	0xc
	.byte	0x28
	.4byte	.LASF100
	.4byte	.LASF100
	.byte	0x8
	.2byte	0x548
	.byte	0xc
	.byte	0x28
	.4byte	.LASF101
	.4byte	.LASF101
	.byte	0x8
	.2byte	0x2ae
	.byte	0xc
	.byte	0x28
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0x8
	.2byte	0x62a
	.byte	0x13
	.byte	0x28
	.4byte	.LASF103
	.4byte	.LASF103
	.byte	0x8
	.2byte	0x5d5
	.byte	0xc
	.byte	0x28
	.4byte	.LASF104
	.4byte	.LASF104
	.byte	0x8
	.2byte	0x5cd
	.byte	0xf
	.byte	0x28
	.4byte	.LASF105
	.4byte	.LASF105
	.byte	0x8
	.2byte	0x6d5
	.byte	0xc
	.byte	0x28
	.4byte	.LASF106
	.4byte	.LASF106
	.byte	0x8
	.2byte	0x54c
	.byte	0xc
	.byte	0x28
	.4byte	.LASF107
	.4byte	.LASF107
	.byte	0x8
	.2byte	0x5d0
	.byte	0xf
	.byte	0x28
	.4byte	.LASF108
	.4byte	.LASF108
	.byte	0x7
	.2byte	0xc36
	.byte	0xe
	.byte	0x28
	.4byte	.LASF109
	.4byte	.LASF109
	.byte	0x7
	.2byte	0x3be
	.byte	0xd
	.byte	0x28
	.4byte	.LASF110
	.4byte	.LASF110
	.byte	0x7
	.2byte	0x445
	.byte	0x6
	.byte	0x28
	.4byte	.LASF111
	.4byte	.LASF111
	.byte	0x7
	.2byte	0x2e9
	.byte	0x6
	.byte	0x28
	.4byte	.LASF112
	.4byte	.LASF112
	.byte	0x7
	.2byte	0x168
	.byte	0x10
	.byte	0x28
	.4byte	.LASF113
	.4byte	.LASF113
	.byte	0x8
	.2byte	0x3c7
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
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
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
	.byte	0xb
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
	.byte	0xc
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
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x11
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
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
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x16
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
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x1d
	.byte	0
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
	.byte	0x1b
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
	.byte	0x1c
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1f
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
	.byte	0x20
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
	.byte	0x21
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
	.byte	0x22
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
	.byte	0x25
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
	.byte	0x26
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x27
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
	.byte	0x28
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
.LLST43:
	.4byte	.LVL129
	.4byte	.LVL130-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL130-1
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL127
	.4byte	.LVL128-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL128-1
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL125
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL122
	.4byte	.LVL123-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL123-1
	.4byte	.LVL123
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LFE28
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL118
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL110
	.4byte	.LVL111-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL111-1
	.4byte	.LVL114
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL114
	.4byte	.LVL115-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL115-1
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL112
	.4byte	.LVL113-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL105
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL108
	.4byte	.LVL109-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL109-1
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL88
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL87
	.4byte	.LVL89-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL89-1
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL96
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL87
	.4byte	.LVL89-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL89-1
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL103
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL87
	.4byte	.LVL89-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL89-1
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL102
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL87
	.4byte	.LVL89-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL89-1
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL94
	.4byte	.LVL95-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL95-1
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL101
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1-1
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL75
	.4byte	.LVL77-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL77-1
	.4byte	.LVL81
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL83-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL83-1
	.4byte	.LVL84
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL75
	.4byte	.LVL77-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL77-1
	.4byte	.LVL81
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL83-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL83-1
	.4byte	.LVL84
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL76
	.4byte	.LVL81
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL81
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
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL86
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL79
	.4byte	.LVL80-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL64
	.4byte	.LVL66-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL66-1
	.4byte	.LVL71
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL73-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL73-1
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL65
	.4byte	.LVL66-1
	.2byte	0x2
	.byte	0x7b
	.byte	0
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL72
	.4byte	.LVL73-1
	.2byte	0x2
	.byte	0x7b
	.byte	0
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL70-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL62
	.4byte	.LVL63-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL63-1
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL60
	.4byte	.LVL61-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL61-1
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL58
	.4byte	.LVL59-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL59-1
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL57
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL50
	.4byte	.LVL51-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL51-1
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL41
	.4byte	.LVL42-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL42-1
	.4byte	.LVL47
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL48-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL48-1
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL46-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL36
	.4byte	.LVL38-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL38-1
	.4byte	.LVL39
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL40
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL28-1
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL33
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL19
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL23
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL21
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL24
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL16
	.4byte	.LVL17-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17-1
	.4byte	.LFE7
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
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL15
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL4
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL8
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL6
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL7
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL11-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL34
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL35-1
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
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
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
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
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
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
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	0
	.4byte	0
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	.LBB21
	.4byte	.LBE21
	.4byte	0
	.4byte	0
	.4byte	.LBB22
	.4byte	.LBE22
	.4byte	.LBB25
	.4byte	.LBE25
	.4byte	0
	.4byte	0
	.4byte	.LBB26
	.4byte	.LBE26
	.4byte	.LBB29
	.4byte	.LBE29
	.4byte	0
	.4byte	0
	.4byte	.LFB22
	.4byte	.LFE22
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
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
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
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF94:
	.string	"printf"
.LASF100:
	.string	"xQueueGenericSendFromISR"
.LASF69:
	.string	"usb_osal_sem_reset"
.LASF17:
	.string	"size_t"
.LASF16:
	.string	"uintptr_t"
.LASF107:
	.string	"xQueueCreateCountingSemaphore"
.LASF75:
	.string	"xCurrentTask"
.LASF5:
	.string	"__uint8_t"
.LASF66:
	.string	"usb_osal_mq_delete"
.LASF57:
	.string	"usb_osal_mq_recv"
.LASF7:
	.string	"long int"
.LASF68:
	.string	"usb_osal_mutex_create"
.LASF118:
	.string	"TrapNetCounter"
.LASF82:
	.string	"entry"
.LASF11:
	.string	"long long unsigned int"
.LASF24:
	.string	"usb_timer_handler_t"
.LASF58:
	.string	"addr"
.LASF35:
	.string	"QueueHandle_t"
.LASF77:
	.string	"usb_osal_thread_delete"
.LASF46:
	.string	"usb_osal_leave_critical_section"
.LASF119:
	.string	"__usb_timeout"
.LASF10:
	.string	"long long int"
.LASF1:
	.string	"signed char"
.LASF87:
	.string	"vTaskDelay"
.LASF89:
	.string	"vTaskEnterCritical"
.LASF115:
	.string	"./components/usb/cherryusb/osal/usb_osal_freertos.c"
.LASF88:
	.string	"vTaskExitCritical"
.LASF106:
	.string	"xQueueGiveFromISR"
.LASF36:
	.string	"tskTaskControlBlock"
.LASF120:
	.string	"usb_osal_sem_delete"
.LASF40:
	.string	"tmrTimerControl"
.LASF91:
	.string	"xTaskGetTickCountFromISR"
.LASF34:
	.string	"TaskHandle_t"
.LASF78:
	.string	"thread"
.LASF33:
	.string	"TickType_t"
.LASF90:
	.string	"xTimerGenericCommand"
.LASF54:
	.string	"usb_osal_timer_create"
.LASF31:
	.string	"BaseType_t"
.LASF62:
	.string	"max_msgs"
.LASF65:
	.string	"usb_osal_mutex_take"
.LASF117:
	.string	"usb_osal_timer"
.LASF86:
	.string	"pvPortMalloc"
.LASF61:
	.string	"usb_osal_mq_create"
.LASF20:
	.string	"usb_osal_sem_t"
.LASF71:
	.string	"usb_osal_sem_take"
.LASF0:
	.string	"unsigned int"
.LASF48:
	.string	"usb_osal_malloc"
.LASF9:
	.string	"long unsigned int"
.LASF39:
	.string	"TimerHandle_t"
.LASF26:
	.string	"argument"
.LASF59:
	.string	"timeout"
.LASF103:
	.string	"xQueueSemaphoreTake"
.LASF55:
	.string	"name"
.LASF60:
	.string	"usb_osal_mq_send"
.LASF101:
	.string	"xQueueGenericSend"
.LASF42:
	.string	"size"
.LASF4:
	.string	"short unsigned int"
.LASF99:
	.string	"xQueueReceive"
.LASF104:
	.string	"xQueueCreateMutex"
.LASF22:
	.string	"usb_osal_mq_t"
.LASF93:
	.string	"xTaskGetTickCount"
.LASF85:
	.string	"vPortFree"
.LASF98:
	.string	"xQueueReceiveFromISR"
.LASF114:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF23:
	.string	"usb_thread_entry_t"
.LASF25:
	.string	"handler"
.LASF92:
	.string	"vTaskSwitchContext"
.LASF49:
	.string	"usb_osal_enter_critical_section"
.LASF14:
	.string	"int32_t"
.LASF112:
	.string	"xTaskCreate"
.LASF108:
	.string	"xTaskGetCurrentTaskHandle"
.LASF113:
	.string	"vQueueDelete"
.LASF21:
	.string	"usb_osal_mutex_t"
.LASF67:
	.string	"usb_osal_mutex_delete"
.LASF19:
	.string	"usb_osal_thread_t"
.LASF81:
	.string	"prio"
.LASF45:
	.string	"delay"
.LASF116:
	.string	"./examples/usb_cam_stream/build_wsl/build_out/components/usb/cherryusb"
.LASF73:
	.string	"initial_count"
.LASF28:
	.string	"timeout_ms"
.LASF27:
	.string	"is_period"
.LASF64:
	.string	"mutex"
.LASF30:
	.string	"_Bool"
.LASF52:
	.string	"xHigherPriorityTaskWoken"
.LASF2:
	.string	"unsigned char"
.LASF97:
	.string	"pvTimerGetTimerID"
.LASF79:
	.string	"usb_osal_thread_create"
.LASF3:
	.string	"short int"
.LASF121:
	.string	"xPortIsInsideInterrupt"
.LASF47:
	.string	"flag"
.LASF12:
	.string	"__uintptr_t"
.LASF102:
	.string	"xQueueGenericCreate"
.LASF51:
	.string	"usb_osal_timer_start"
.LASF63:
	.string	"usb_osal_mutex_give"
.LASF76:
	.string	"old_priority"
.LASF105:
	.string	"xQueueGenericReset"
.LASF15:
	.string	"uint32_t"
.LASF72:
	.string	"usb_osal_sem_create"
.LASF70:
	.string	"usb_osal_sem_give"
.LASF38:
	.string	"SemaphoreHandle_t"
.LASF18:
	.string	"char"
.LASF44:
	.string	"usb_osal_msleep"
.LASF111:
	.string	"vTaskDelete"
.LASF41:
	.string	"TimerCallbackFunction_t"
.LASF6:
	.string	"__int32_t"
.LASF8:
	.string	"__uint32_t"
.LASF43:
	.string	"usb_osal_free"
.LASF96:
	.string	"xTimerCreate"
.LASF84:
	.string	"htask"
.LASF74:
	.string	"usb_osal_thread_schedule_other"
.LASF95:
	.string	"memset"
.LASF50:
	.string	"usb_osal_timer_stop"
.LASF37:
	.string	"QueueDefinition"
.LASF13:
	.string	"uint8_t"
.LASF29:
	.string	"timer"
.LASF80:
	.string	"stack_size"
.LASF56:
	.string	"handle"
.LASF110:
	.string	"vTaskPrioritySet"
.LASF83:
	.string	"args"
.LASF109:
	.string	"uxTaskPriorityGet"
.LASF32:
	.string	"UBaseType_t"
.LASF53:
	.string	"usb_osal_timer_delete"
	.ident	"GCC: (GNU) 10.4.0"
