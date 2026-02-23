	.file	"shell.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.shell_help.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"\033[32m"
	.align	2
.LC1:
	.string	"shell commands list:\r\n"
	.align	2
.LC2:
	.string	"\033[0m"
	.align	2
.LC3:
	.string	"%s\r\n"
	.align	2
.LC4:
	.string	"\r\n"
	.section	.text.shell_help,"ax",@progbits
	.align	1
	.globl	shell_help
	.type	shell_help, @function
shell_help:
.LFB4:
	.file 1 "./components/shell/shell.c"
	.loc 1 41 1
	.cfi_startproc
.LVL0:
	.loc 1 42 5
	.loc 1 42 10
	.loc 1 41 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	.cfi_offset 8, -8
	.loc 1 42 15
	lui	s0,%hi(.LANCHOR0)
	.loc 1 41 1
	sw	s1,20(sp)
	.cfi_offset 9, -12
	.loc 1 42 15
	addi	s1,s0,%lo(.LANCHOR0)
	lw	a5,0(s1)
	.loc 1 41 1
	sw	s2,16(sp)
	.cfi_offset 18, -16
	.loc 1 42 10
	lui	s2,%hi(.LC0)
	lw	a5,732(a5)
	.loc 1 41 1
	sw	ra,28(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	sw	s5,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.loc 1 42 10
	addi	a0,s2,%lo(.LC0)
.LVL1:
	jalr	a5
.LVL2:
	.loc 1 42 49 is_stmt 1
	.loc 1 42 54 is_stmt 0
	lw	a5,0(s1)
	.loc 1 42 49
	lui	a0,%hi(.LC1)
	addi	a0,a0,%lo(.LC1)
	lw	a5,732(a5)
	addi	s0,s0,%lo(.LANCHOR0)
.LBB10:
	.loc 1 46 50
	lui	s4,%hi(.LANCHOR2)
.LBE10:
	.loc 1 42 49
	jalr	a5
.LVL3:
	.loc 1 42 98 is_stmt 1
	.loc 1 42 103 is_stmt 0
	lw	a5,0(s1)
	.loc 1 42 98
	lui	s1,%hi(.LC2)
	addi	a0,s1,%lo(.LC2)
	lw	a5,732(a5)
.LBB11:
	.loc 1 54 57
	lui	s5,%hi(.LC3)
.LBE11:
	.loc 1 42 98
	jalr	a5
.LVL4:
	.loc 1 42 138 is_stmt 1
.LBB12:
	.loc 1 44 9
	.loc 1 46 9
	.loc 1 46 20 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	lw	s3,%lo(.LANCHOR1)(a5)
.LVL5:
.L2:
	.loc 1 46 44 is_stmt 1 discriminator 1
	.loc 1 54 23 is_stmt 0 discriminator 1
	lw	a5,0(s0)
	.loc 1 46 9 discriminator 1
	lw	a4,%lo(.LANCHOR2)(s4)
	.loc 1 54 18 discriminator 1
	addi	a0,s2,%lo(.LC0)
	.loc 1 54 23 discriminator 1
	lw	a5,732(a5)
	.loc 1 46 9 discriminator 1
	bgtu	a4,s3,.L3
.LBE12:
	.loc 1 58 5 is_stmt 1
	.loc 1 58 10
	jalr	a5
.LVL6:
	.loc 1 58 49
	.loc 1 58 54 is_stmt 0
	lw	a5,0(s0)
	.loc 1 58 49
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	lw	a5,732(a5)
	jalr	a5
.LVL7:
	.loc 1 58 78 is_stmt 1
	.loc 1 58 83 is_stmt 0
	lw	a5,0(s0)
	.loc 1 58 78
	addi	a0,s1,%lo(.LC2)
	lw	a5,732(a5)
	jalr	a5
.LVL8:
	.loc 1 58 118 is_stmt 1
	.loc 1 60 5
	.loc 1 61 1 is_stmt 0
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
.LVL9:
	lw	s4,8(sp)
	.cfi_restore 20
	lw	s5,4(sp)
	.cfi_restore 21
	li	a0,0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL10:
.L3:
	.cfi_restore_state
.LBB13:
	.loc 1 54 13 is_stmt 1 discriminator 3
	.loc 1 54 18 discriminator 3
	jalr	a5
.LVL11:
	.loc 1 54 57 discriminator 3
	.loc 1 54 62 is_stmt 0 discriminator 3
	lw	a5,0(s0)
	.loc 1 54 57 discriminator 3
	lwia	a1,(s3),8,0
.LVL12:
	addi	a0,s5,%lo(.LC3)
	lw	a5,732(a5)
	jalr	a5
.LVL13:
	.loc 1 54 105 is_stmt 1 discriminator 3
	.loc 1 54 110 is_stmt 0 discriminator 3
	lw	a5,0(s0)
	.loc 1 54 105 discriminator 3
	addi	a0,s1,%lo(.LC2)
	lw	a5,732(a5)
	jalr	a5
.LVL14:
	.loc 1 54 145 is_stmt 1 discriminator 3
	.loc 1 46 72 discriminator 3
	j	.L2
.LBE13:
	.cfi_endproc
.LFE4:
	.size	shell_help, .-shell_help
	.section	.text.shell_abort_exec,"ax",@progbits
	.align	1
	.weak	shell_abort_exec
	.type	shell_abort_exec, @function
shell_abort_exec:
.LFB22:
	.loc 1 916 1
	.cfi_startproc
.LVL15:
	.loc 1 917 5
	.loc 1 918 1 is_stmt 0
	ret
	.cfi_endproc
.LFE22:
	.size	shell_abort_exec, .-shell_abort_exec
	.section	.rodata.shell_memtrace.str1.4,"aMS",@progbits,1
	.align	2
.LC5:
	.string	"write memory: 0x42000000 0xabcd 10\r\n"
	.align	2
.LC6:
	.string	"read memory: 0x42000000 10\r\n"
	.align	2
.LC7:
	.string	"0x%08x\r\n"
	.align	2
.LC8:
	.string	"0x%08x "
	.section	.text.shell_memtrace,"ax",@progbits
	.align	1
	.type	shell_memtrace, @function
shell_memtrace:
.LFB5:
	.loc 1 65 1 is_stmt 1
	.cfi_startproc
.LVL16:
	.loc 1 66 5
	.loc 1 67 5
	.loc 1 70 5
	.loc 1 65 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	sw	s6,16(sp)
	sw	s7,12(sp)
	sw	s8,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.loc 1 70 8
	li	a5,1
	bgt	a0,a5,.L7
	.loc 1 71 9 is_stmt 1
	.loc 1 71 14
	.loc 1 71 19 is_stmt 0
	lui	s0,%hi(.LANCHOR0)
	addi	s0,s0,%lo(.LANCHOR0)
	lw	a5,0(s0)
	.loc 1 71 14
	lui	s2,%hi(.LC0)
	addi	a0,s2,%lo(.LC0)
.LVL17:
	lw	a5,732(a5)
	.loc 1 71 116
	lui	s1,%hi(.LC2)
	.loc 1 71 14
	jalr	a5
.LVL18:
	.loc 1 71 53 is_stmt 1
	.loc 1 71 58 is_stmt 0
	lw	a5,0(s0)
	.loc 1 71 53
	lui	a0,%hi(.LC5)
	addi	a0,a0,%lo(.LC5)
	lw	a5,732(a5)
	jalr	a5
.LVL19:
	.loc 1 71 116 is_stmt 1
	.loc 1 71 121 is_stmt 0
	lw	a5,0(s0)
	.loc 1 71 116
	addi	a0,s1,%lo(.LC2)
	lw	a5,732(a5)
	jalr	a5
.LVL20:
	.loc 1 71 156 is_stmt 1
	.loc 1 72 9
	.loc 1 72 14
	.loc 1 72 19 is_stmt 0
	lw	a5,0(s0)
	.loc 1 72 14
	addi	a0,s2,%lo(.LC0)
	lw	a5,732(a5)
	jalr	a5
.LVL21:
	.loc 1 72 53 is_stmt 1
	.loc 1 72 58 is_stmt 0
	lw	a5,0(s0)
	.loc 1 72 53
	lui	a0,%hi(.LC6)
	addi	a0,a0,%lo(.LC6)
	lw	a5,732(a5)
	jalr	a5
.LVL22:
	.loc 1 72 108 is_stmt 1
	.loc 1 72 113 is_stmt 0
	lw	a5,0(s0)
	.loc 1 72 108
	addi	a0,s1,%lo(.LC2)
	lw	a5,732(a5)
.L20:
	.loc 1 81 127
	jalr	a5
.LVL23:
	.loc 1 81 167 is_stmt 1
	.loc 1 82 9
.L8:
	.loc 1 115 1 is_stmt 0
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
	lw	s3,28(sp)
	.cfi_restore 19
	lw	s4,24(sp)
	.cfi_restore 20
	lw	s5,20(sp)
	.cfi_restore 21
	lw	s6,16(sp)
	.cfi_restore 22
	lw	s7,12(sp)
	.cfi_restore 23
	lw	s8,8(sp)
	.cfi_restore 24
	li	a0,0
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL24:
.L7:
	.cfi_restore_state
	mv	s0,a1
	.loc 1 77 5 is_stmt 1
	mv	s1,a0
	.loc 1 77 12 is_stmt 0
	lw	a0,4(s0)
.LVL25:
	li	a2,16
	li	a1,0
.LVL26:
	call	strtoll
.LVL27:
	.loc 1 79 8
	li	a5,2
	.loc 1 77 12
	mv	s2,a0
.LVL28:
	.loc 1 79 5 is_stmt 1
	.loc 1 79 8 is_stmt 0
	bne	s1,a5,.L9
	.loc 1 81 9 is_stmt 1
	.loc 1 81 14
	.loc 1 81 19 is_stmt 0
	lui	s0,%hi(.LANCHOR0)
.LVL29:
	addi	s0,s0,%lo(.LANCHOR0)
	lw	a5,0(s0)
	.loc 1 81 14
	lui	a0,%hi(.LC0)
.LVL30:
	addi	a0,a0,%lo(.LC0)
	lw	a5,732(a5)
	jalr	a5
.LVL31:
	.loc 1 81 53 is_stmt 1
	.loc 1 81 58 is_stmt 0
	lw	a5,0(s0)
	.loc 1 81 53
	lw	a1,0(s2)
	lui	a0,%hi(.LC7)
	lw	a5,732(a5)
	addi	a0,a0,%lo(.LC7)
	jalr	a5
.LVL32:
	.loc 1 81 127 is_stmt 1
	.loc 1 81 132 is_stmt 0
	lw	a5,0(s0)
	.loc 1 81 127
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	lw	a5,732(a5)
	j	.L20
.LVL33:
.L9:
	.loc 1 85 5 is_stmt 1
	.loc 1 85 8 is_stmt 0
	li	a5,3
	bne	s1,a5,.L10
.LBB14:
	.loc 1 86 9 is_stmt 1
	.loc 1 86 26 is_stmt 0
	lw	a0,8(s0)
.LVL34:
	.loc 1 88 23
	lui	s6,%hi(.LANCHOR0)
	.loc 1 87 16
	li	s0,0
.LVL35:
	.loc 1 86 26
	call	atoi
.LVL36:
	.loc 1 87 9 is_stmt 1
	extu	s3,a0,15,0
	.loc 1 88 18 is_stmt 0
	lui	s4,%hi(.LC0)
	.loc 1 88 57
	lui	s7,%hi(.LC8)
	.loc 1 88 121
	lui	s5,%hi(.LC2)
.LVL37:
.L11:
	.loc 1 98 126 is_stmt 1 discriminator 1
	.loc 1 87 21 discriminator 1
	.loc 1 87 9 is_stmt 0 discriminator 1
	bge	s0,s3,.L8
	.loc 1 88 13 is_stmt 1
	.loc 1 88 18
	.loc 1 88 23 is_stmt 0
	addi	s1,s6,%lo(.LANCHOR0)
	lw	a5,0(s1)
	.loc 1 88 18
	addi	a0,s4,%lo(.LC0)
	addi	s8,s0,4
	lw	a5,732(a5)
	jalr	a5
.LVL38:
	.loc 1 88 57 is_stmt 1
	.loc 1 88 62 is_stmt 0
	lw	a5,0(s1)
	.loc 1 88 57
	addsl	a1, s2, s0, 2
	addi	a0,s7,%lo(.LC8)
	lw	a5,732(a5)
	jalr	a5
.LVL39:
	.loc 1 88 121 is_stmt 1
	.loc 1 88 126 is_stmt 0
	lw	a5,0(s1)
	.loc 1 88 121
	addi	a0,s5,%lo(.LC2)
	lw	a5,732(a5)
	jalr	a5
.LVL40:
	.loc 1 88 161 is_stmt 1
	.loc 1 89 13
	.loc 1 89 25
	.loc 1 90 17
.L12:
	.loc 1 92 21 discriminator 2
	.loc 1 92 26 discriminator 2
	.loc 1 92 31 is_stmt 0 discriminator 2
	lw	a5,0(s1)
	.loc 1 92 26 discriminator 2
	addi	a0,s4,%lo(.LC0)
	lw	a5,732(a5)
	jalr	a5
.LVL41:
	.loc 1 92 65 is_stmt 1 discriminator 2
	.loc 1 92 70 is_stmt 0 discriminator 2
	lw	a5,0(s1)
	.loc 1 92 65 discriminator 2
	lrw	a1,s2,s0,2
	addi	a0,s7,%lo(.LC8)
	lw	a5,732(a5)
	.loc 1 96 18 discriminator 2
	addi	s0,s0,1
.LVL42:
	.loc 1 92 65 discriminator 2
	jalr	a5
.LVL43:
	.loc 1 92 162 is_stmt 1 discriminator 2
	.loc 1 92 167 is_stmt 0 discriminator 2
	lw	a5,0(s1)
	.loc 1 92 162 discriminator 2
	addi	a0,s5,%lo(.LC2)
	lw	a5,732(a5)
	jalr	a5
.LVL44:
	.loc 1 92 202 is_stmt 1 discriminator 2
	.loc 1 96 17 discriminator 2
	.loc 1 89 32 discriminator 2
	.loc 1 89 25 discriminator 2
	.loc 1 89 13 is_stmt 0 discriminator 2
	beq	s0,s8,.L13
	.loc 1 90 17 is_stmt 1
	.loc 1 90 20 is_stmt 0
	bne	s3,s0,.L12
.L13:
	.loc 1 98 13 is_stmt 1 discriminator 1
	.loc 1 98 18 discriminator 1
	.loc 1 98 23 is_stmt 0 discriminator 1
	lw	a5,0(s1)
	.loc 1 98 18 discriminator 1
	addi	a0,s4,%lo(.LC0)
	lw	a5,732(a5)
	jalr	a5
.LVL45:
	.loc 1 98 57 is_stmt 1 discriminator 1
	.loc 1 98 62 is_stmt 0 discriminator 1
	lw	a5,0(s1)
	.loc 1 98 57 discriminator 1
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	lw	a5,732(a5)
	jalr	a5
.LVL46:
	.loc 1 98 86 is_stmt 1 discriminator 1
	.loc 1 98 91 is_stmt 0 discriminator 1
	lw	a5,0(s1)
	.loc 1 98 86 discriminator 1
	addi	a0,s5,%lo(.LC2)
	lw	a5,732(a5)
	jalr	a5
.LVL47:
	j	.L11
.LVL48:
.L10:
.LBE14:
	.loc 1 104 5 is_stmt 1
	.loc 1 104 8 is_stmt 0
	li	a5,4
	bne	s1,a5,.L8
.LBB15:
	.loc 1 105 9 is_stmt 1
	.loc 1 105 26 is_stmt 0
	lw	a0,12(s0)
.LVL49:
	call	atoi
.LVL50:
	mv	s1,a0
.LVL51:
	.loc 1 107 9 is_stmt 1
	.loc 1 107 17 is_stmt 0
	lw	a0,8(s0)
	li	a2,16
	li	a1,0
	call	strtoll
.LVL52:
	.loc 1 109 9 is_stmt 1
	.loc 1 109 16 is_stmt 0
	li	a5,0
	.loc 1 109 9
	extu	s1,s1,15,0
.LVL53:
.L17:
	.loc 1 109 21 is_stmt 1 discriminator 1
	.loc 1 109 9 is_stmt 0 discriminator 1
	bge	a5,s1,.L8
	.loc 1 110 13 is_stmt 1 discriminator 3
	.loc 1 110 77 is_stmt 0 discriminator 3
	srw	a0,s2,a5,2
	.loc 1 109 32 is_stmt 1 discriminator 3
	.loc 1 109 33 is_stmt 0 discriminator 3
	addi	a5,a5,1
.LVL54:
	j	.L17
.LBE15:
	.cfi_endproc
.LFE5:
	.size	shell_memtrace, .-shell_memtrace
	.section	.rodata.shell_get_prompt.str1.4,"aMS",@progbits,1
	.align	2
.LC9:
	.string	"[OS]: strlcpy truncated \r\n"
	.align	2
.LC10:
	.string	"qcc74x "
	.align	2
.LC11:
	.string	"/>"
	.align	2
.LC12:
	.string	"[OS]: strlcat truncated \r\n"
	.section	.text.shell_get_prompt,"ax",@progbits
	.align	1
	.type	shell_get_prompt, @function
shell_get_prompt:
.LFB6:
	.loc 1 119 1 is_stmt 1
	.cfi_startproc
	.loc 1 120 5
	.loc 1 122 5
	.loc 1 122 9 is_stmt 0
	lui	a5,%hi(.LANCHOR3)
	lw	a1,%lo(.LANCHOR3)(a5)
	.loc 1 119 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	lui	s0,%hi(.LANCHOR4)
	.loc 1 123 12
	li	a2,129
	.loc 1 122 8
	beq	a1,zero,.L22
.L28:
	.loc 1 123 9 is_stmt 1
	.loc 1 123 12 is_stmt 0
	addi	a0,s0,%lo(.LANCHOR4)
	call	strlcpy
.LVL55:
	.loc 1 123 11
	li	a5,128
	bleu	a0,a5,.L24
	.loc 1 124 13 is_stmt 1
	lui	a0,%hi(.LC9)
	addi	a0,a0,%lo(.LC9)
	call	printf
.LVL56:
.L24:
	.loc 1 135 5
	.loc 1 135 8 is_stmt 0
	lui	a1,%hi(.LC11)
	li	a2,129
	addi	a1,a1,%lo(.LC11)
	addi	a0,s0,%lo(.LANCHOR4)
	call	strlcat
.LVL57:
	.loc 1 135 7
	li	a5,128
	bleu	a0,a5,.L26
	.loc 1 136 9 is_stmt 1
	lui	a0,%hi(.LC12)
	addi	a0,a0,%lo(.LC12)
	call	printf
.LVL58:
.L26:
	.loc 1 138 5
	.loc 1 139 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	a0,s0,%lo(.LANCHOR4)
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L22:
	.cfi_restore_state
	.loc 1 126 2 is_stmt 1
	.loc 1 126 5 is_stmt 0
	lui	a1,%hi(.LC10)
	addi	a1,a1,%lo(.LC10)
	j	.L28
	.cfi_endproc
.LFE6:
	.size	shell_get_prompt, .-shell_get_prompt
	.section	.rodata.shell_handle_history.str1.4,"aMS",@progbits,1
	.align	2
.LC13:
	.string	"\033[2K\r"
	.align	2
.LC14:
	.string	"\033[36m"
	.align	2
.LC15:
	.string	"%s"
	.section	.text.shell_handle_history,"ax",@progbits
	.align	1
	.type	shell_handle_history, @function
shell_handle_history:
.LFB8:
	.loc 1 154 1 is_stmt 1
	.cfi_startproc
.LVL59:
	.loc 1 155 5
	.loc 1 155 10
	.loc 1 154 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	.cfi_offset 8, -8
	.loc 1 155 10
	addi	s0,a0,640
	lw	a5,92(s0)
	.loc 1 154 1
	sw	s1,20(sp)
	.cfi_offset 9, -12
	.loc 1 155 10
	lui	s1,%hi(.LC2)
	.loc 1 154 1
	sw	ra,28(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.loc 1 154 1
	mv	s3,a0
	.loc 1 155 10
	addi	a0,s1,%lo(.LC2)
.LVL60:
	jalr	a5
.LVL61:
	.loc 1 155 48 is_stmt 1
	lw	a5,92(s0)
	lui	a0,%hi(.LC13)
	addi	a0,a0,%lo(.LC13)
	jalr	a5
.LVL62:
	.loc 1 155 82
	lw	a5,92(s0)
	addi	a0,s1,%lo(.LC2)
	.loc 1 156 49 is_stmt 0
	lui	s2,%hi(.LC15)
	.loc 1 155 82
	jalr	a5
.LVL63:
	.loc 1 155 122 is_stmt 1
	.loc 1 156 5
	.loc 1 156 10
	lw	a5,92(s0)
	lui	a0,%hi(.LC14)
	addi	a0,a0,%lo(.LC14)
	jalr	a5
.LVL64:
	.loc 1 156 49
	.loc 1 156 54 is_stmt 0
	lw	s4,92(s0)
	.loc 1 156 49
	call	shell_get_prompt
.LVL65:
	mv	a1,a0
	addi	a0,s2,%lo(.LC15)
	jalr	s4
.LVL66:
	.loc 1 156 96 is_stmt 1
	lw	a5,92(s0)
	addi	a0,s1,%lo(.LC2)
	jalr	a5
.LVL67:
	.loc 1 156 136
	.loc 1 157 5
	.loc 1 157 10
	lw	a5,92(s0)
	addi	a0,s1,%lo(.LC2)
	jalr	a5
.LVL68:
	.loc 1 157 48
	lw	a5,92(s0)
	addi	a0,s2,%lo(.LC15)
	addi	a1,s3,606
	jalr	a5
.LVL69:
	.loc 1 157 88
	lw	a5,92(s0)
	.loc 1 158 1 is_stmt 0
	lw	s0,24(sp)
	.cfi_restore 8
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
.LVL70:
	lw	s4,8(sp)
	.cfi_restore 20
	.loc 1 157 88
	addi	a0,s1,%lo(.LC2)
	.loc 1 158 1
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	.loc 1 157 88
	jr	a5
.LVL71:
	.cfi_endproc
.LFE8:
	.size	shell_handle_history, .-shell_handle_history
	.section	.text.shell_set_prompt,"ax",@progbits
	.align	1
	.globl	shell_set_prompt
	.type	shell_set_prompt, @function
shell_set_prompt:
.LFB18:
	.loc 1 838 1 is_stmt 1
	.cfi_startproc
.LVL72:
	.loc 1 839 5
	.loc 1 838 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s1,4(sp)
	.cfi_offset 9, -12
	.loc 1 839 9
	lui	s1,%hi(.LANCHOR3)
	.loc 1 838 1
	sw	s0,8(sp)
	.cfi_offset 8, -8
	mv	s0,a0
	.loc 1 839 9
	lw	a0,%lo(.LANCHOR3)(s1)
.LVL73:
	.loc 1 838 1
	sw	ra,12(sp)
	sw	s2,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	addi	s1,s1,%lo(.LANCHOR3)
	.loc 1 839 8
	beq	a0,zero,.L32
	.loc 1 840 9 is_stmt 1
	call	free
.LVL74:
	.loc 1 841 9
	.loc 1 841 29 is_stmt 0
	sw	zero,0(s1)
.L32:
	.loc 1 845 5 is_stmt 1
	.loc 1 845 8 is_stmt 0
	beq	s0,zero,.L34
.LVL75:
.LBB18:
.LBB19:
	.loc 1 846 9 is_stmt 1
	.loc 1 846 46 is_stmt 0
	mv	a0,s0
	call	strlen
.LVL76:
	.loc 1 846 39
	addi	a0,a0,1
	call	malloc
.LVL77:
	.loc 1 846 29
	sw	a0,0(s1)
	.loc 1 847 9 is_stmt 1
	.loc 1 846 39 is_stmt 0
	mv	s2,a0
	.loc 1 847 12
	beq	a0,zero,.L34
	.loc 1 848 13 is_stmt 1
	.loc 1 848 53 is_stmt 0
	mv	a0,s0
	call	strlen
.LVL78:
	.loc 1 848 16
	addi	a2,a0,1
	mv	a1,s0
	mv	a0,s2
	call	strlcpy
.LVL79:
	mv	s1,a0
	.loc 1 848 76
	mv	a0,s0
	call	strlen
.LVL80:
	.loc 1 848 91
	addi	a0,a0,1
	.loc 1 848 15
	bltu	s1,a0,.L34
	.loc 1 849 17 is_stmt 1
	lui	a0,%hi(.LC9)
	addi	a0,a0,%lo(.LC9)
	call	printf
.LVL81:
.L34:
.LBE19:
.LBE18:
	.loc 1 853 5
	.loc 1 854 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL82:
	lw	s1,4(sp)
	.cfi_restore 9
	lw	s2,0(sp)
	.cfi_restore 18
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE18:
	.size	shell_set_prompt, .-shell_set_prompt
	.section	.text.shell_set_print,"ax",@progbits
	.align	1
	.globl	shell_set_print
	.type	shell_set_print, @function
shell_set_print:
.LFB19:
	.loc 1 857 1 is_stmt 1
	.cfi_startproc
.LVL83:
	.loc 1 858 5
	.loc 1 858 8 is_stmt 0
	beq	a0,zero,.L45
	.loc 1 859 9 is_stmt 1
	.loc 1 859 29 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	lw	a5,%lo(.LANCHOR0)(a5)
	sw	a0,732(a5)
	.loc 1 860 9 is_stmt 1
	.loc 1 860 16 is_stmt 0
	li	a0,0
.LVL84:
	ret
.LVL85:
.L45:
	.loc 1 862 16
	li	a0,-1
.LVL86:
	.loc 1 863 1
	ret
	.cfi_endproc
.LFE19:
	.size	shell_set_print, .-shell_set_print
	.section	.text.shell_init,"ax",@progbits
	.align	1
	.globl	shell_init
	.type	shell_init, @function
shell_init:
.LFB20:
	.loc 1 871 1 is_stmt 1
	.cfi_startproc
	.loc 1 884 5
	.loc 1 885 5
	.loc 1 886 5
	.loc 1 887 5
	.loc 1 888 5
.LVL87:
.LBB20:
.LBB21:
	.loc 1 827 5
	.loc 1 827 26 is_stmt 0
	lui	a5,%hi(__fsymtab_start)
	lui	a4,%hi(.LANCHOR1)
	addi	a5,a5,%lo(__fsymtab_start)
	sw	a5,%lo(.LANCHOR1)(a4)
	.loc 1 828 5 is_stmt 1
	.loc 1 828 24 is_stmt 0
	lui	a5,%hi(__fsymtab_end)
	lui	a4,%hi(.LANCHOR2)
	addi	a5,a5,%lo(__fsymtab_end)
	sw	a5,%lo(.LANCHOR2)(a4)
.LVL88:
.LBE21:
.LBE20:
	.loc 1 889 5 is_stmt 1
.LBB22:
.LBB23:
	.loc 1 833 5
	.loc 1 833 25 is_stmt 0
	lui	a5,%hi(__vsymtab_start)
	lui	a4,%hi(.LANCHOR5)
	addi	a5,a5,%lo(__vsymtab_start)
	sw	a5,%lo(.LANCHOR5)(a4)
	.loc 1 834 5 is_stmt 1
	.loc 1 834 23 is_stmt 0
	lui	a5,%hi(__vsymtab_end)
.LBE23:
.LBE22:
	.loc 1 871 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
.LBB26:
.LBB24:
	.loc 1 834 23
	lui	a4,%hi(.LANCHOR6)
	addi	a5,a5,%lo(__vsymtab_end)
.LBE24:
.LBE26:
	.loc 1 871 1
	sw	s0,8(sp)
.LBB27:
.LBB25:
	.loc 1 834 23
	sw	a5,%lo(.LANCHOR6)(a4)
.LVL89:
.LBE25:
.LBE27:
	.loc 1 891 5 is_stmt 1
	.cfi_offset 8, -8
	.loc 1 891 11 is_stmt 0
	lui	s0,%hi(.LANCHOR0)
	lui	a5,%hi(.LANCHOR7)
	.loc 1 892 5
	lui	a0,%hi(.LC10)
	.loc 1 891 11
	addi	s0,s0,%lo(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR7)
	.loc 1 892 5
	addi	a0,a0,%lo(.LC10)
	.loc 1 871 1
	sw	ra,12(sp)
	sw	s1,4(sp)
	sw	s2,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 891 11
	sw	a5,0(s0)
	.loc 1 892 5 is_stmt 1
	call	shell_set_prompt
.LVL90:
	.loc 1 893 5
.LBB28:
.LBB29:
	.loc 1 858 5
	.loc 1 859 9
	.loc 1 859 29 is_stmt 0
	lw	a4,0(s0)
	lui	a5,%hi(printf)
	addi	a5,a5,%lo(printf)
.LBE29:
.LBE28:
	.loc 1 894 10
	lui	s1,%hi(.LC2)
.LBB31:
.LBB30:
	.loc 1 859 29
	sw	a5,732(a4)
	.loc 1 860 9 is_stmt 1
.LBE30:
.LBE31:
	.loc 1 894 5
	.loc 1 894 10
	addi	a0,s1,%lo(.LC2)
	call	printf
.LVL91:
	.loc 1 894 48
	.loc 1 894 53 is_stmt 0
	lw	a5,0(s0)
	lw	s2,732(a5)
	.loc 1 894 48
	call	shell_get_prompt
.LVL92:
	jalr	s2
.LVL93:
	.loc 1 894 89 is_stmt 1
	.loc 1 894 94 is_stmt 0
	lw	a5,0(s0)
	.loc 1 895 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s2,0(sp)
	.cfi_restore 18
	.loc 1 894 89
	lw	a5,732(a5)
	addi	a0,s1,%lo(.LC2)
	.loc 1 895 1
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 894 89
	jr	a5
.LVL94:
	.cfi_endproc
.LFE20:
	.size	shell_init, .-shell_init
	.section	.text.shell_signal,"ax",@progbits
	.align	1
	.globl	shell_signal
	.type	shell_signal, @function
shell_signal:
.LFB21:
	.loc 1 898 1 is_stmt 1
	.cfi_startproc
.LVL95:
	.loc 1 899 5
	.loc 1 899 24 is_stmt 0
	lui	a5,%hi(.LANCHOR8)
	addi	a5,a5,%lo(.LANCHOR8)
	lw	a3,0(a5)
.LVL96:
	.loc 1 901 5 is_stmt 1
	.loc 1 901 8 is_stmt 0
	li	a4,1
	bne	a0,a4,.L52
	.loc 1 902 9 is_stmt 1
	.loc 1 902 12 is_stmt 0
	bne	a1,zero,.L50
	.loc 1 903 13 is_stmt 1
	.loc 1 903 28 is_stmt 0
	lui	a4,%hi(shell_abort_exec)
	addi	a4,a4,%lo(shell_abort_exec)
	sw	a4,0(a5)
.LVL97:
.L48:
	.loc 1 913 1
	mv	a0,a3
.LVL98:
	ret
.LVL99:
.L50:
	.loc 1 904 16 is_stmt 1
	.loc 1 904 19 is_stmt 0
	bne	a1,a0,.L51
	.loc 1 905 13 is_stmt 1
	.loc 1 905 28 is_stmt 0
	sw	zero,0(a5)
	j	.L48
.L51:
	.loc 1 907 13 is_stmt 1
	.loc 1 907 28 is_stmt 0
	sw	a1,0(a5)
	j	.L48
.L52:
	.loc 1 912 11
	li	a3,0
.LVL100:
	j	.L48
	.cfi_endproc
.LFE21:
	.size	shell_signal, .-shell_signal
	.section	.text.shell_start_exec,"ax",@progbits
	.align	1
	.weak	shell_start_exec
	.type	shell_start_exec, @function
shell_start_exec:
.LFB23:
	.loc 1 920 1 is_stmt 1
	.cfi_startproc
.LVL101:
	.loc 1 921 5
	.loc 1 920 1 is_stmt 0
	mv	a5,a0
	mv	a0,a1
.LVL102:
	.loc 1 921 12
	mv	a1,a2
.LVL103:
	jr	a5
.LVL104:
	.cfi_endproc
.LFE23:
	.size	shell_start_exec, .-shell_start_exec
	.section	.text.shell_dup_line,"ax",@progbits
	.align	1
	.weak	shell_dup_line
	.type	shell_dup_line, @function
shell_dup_line:
.LFB24:
	.loc 1 924 1 is_stmt 1
	.cfi_startproc
.LVL105:
	.loc 1 925 5
	.loc 1 926 5
	.loc 1 927 1 is_stmt 0
	ret
	.cfi_endproc
.LFE24:
	.size	shell_dup_line, .-shell_dup_line
	.section	.rodata.shell_exec.str1.4,"aMS",@progbits,1
	.align	2
.LC16:
	.string	"\033[31m"
	.align	2
.LC17:
	.string	"Too many args ! We only Use:\r\n"
	.align	2
.LC18:
	.string	"%s "
	.align	2
.LC19:
	.string	"%s: command not found.\r\n"
	.section	.text.shell_exec,"ax",@progbits
	.align	1
	.globl	shell_exec
	.type	shell_exec, @function
shell_exec:
.LFB14:
	.loc 1 579 1 is_stmt 1
	.cfi_startproc
.LVL106:
	.loc 1 580 5
	.loc 1 583 5
	.loc 1 579 1 is_stmt 0
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sw	s0,104(sp)
	sw	ra,108(sp)
	sw	s1,100(sp)
	sw	s2,96(sp)
	sw	s3,92(sp)
	sw	s4,88(sp)
	sw	s5,84(sp)
	sw	s6,80(sp)
	sw	s7,76(sp)
	sw	s8,72(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.loc 1 583 11
	mv	s0,a0
	add	a1,a0,a1
.LVL107:
	li	a3,32
	.loc 1 583 24
	li	a4,9
.LVL108:
.L56:
	.loc 1 583 12
	lbu	a5,0(s0)
	sub	s1,a1,s0
.LVL109:
	.loc 1 583 11 is_stmt 1
	beq	a5,a3,.L57
	.loc 1 583 24 is_stmt 0 discriminator 1
	beq	a5,a4,.L57
	.loc 1 588 5 is_stmt 1
	.loc 1 589 16 is_stmt 0
	li	a0,0
	.loc 1 588 8
	beq	s1,zero,.L55
.LBB41:
.LBB42:
	.loc 1 494 14
	li	s2,0
	.loc 1 502 11
	li	a4,32
	.loc 1 502 35
	li	a3,9
.L59:
.LVL110:
	.loc 1 502 11 is_stmt 1
	.loc 1 502 16 is_stmt 0
	lrbu	a5,s0,s2,0
	.loc 1 502 11
	beq	a5,a4,.L60
	.loc 1 502 35
	beq	a5,a3,.L60
	.loc 1 502 62
	bne	s2,s1,.L61
.L62:
	.loc 1 511 5 is_stmt 1
.LVL111:
.LBB43:
.LBB44:
	.loc 1 473 5
	.loc 1 474 5
	.loc 1 476 5
	.loc 1 476 16 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	lw	s3,%lo(.LANCHOR1)(a5)
.LVL112:
	.loc 1 476 46
	lui	s4,%hi(.LANCHOR2)
.L64:
	.loc 1 476 40 is_stmt 1
	.loc 1 476 5 is_stmt 0
	lw	a5,%lo(.LANCHOR2)(s4)
	bgeu	s3,a5,.L89
	.loc 1 481 9 is_stmt 1
	.loc 1 481 13 is_stmt 0
	lw	a0,0(s3)
	mv	a2,s2
	mv	a1,s0
	call	strncmp
.LVL113:
	.loc 1 481 12
	bne	a0,zero,.L65
	.loc 1 482 24
	lw	a5,0(s3)
	.loc 1 481 54
	lrbu	a5,a5,s2,0
	bne	a5,zero,.L65
	.loc 1 483 13 is_stmt 1
	.loc 1 483 22 is_stmt 0
	lw	s4,4(s3)
.LVL114:
	.loc 1 484 13 is_stmt 1
	.loc 1 488 5
.LBE44:
.LBE43:
	.loc 1 513 5
	.loc 1 513 8 is_stmt 0
	beq	s4,zero,.L89
	.loc 1 518 5 is_stmt 1
	li	a2,64
	li	a1,0
	mv	a0,sp
	call	memset
.LVL115:
	.loc 1 519 5
.LBB46:
.LBB47:
	.loc 1 393 5
	.loc 1 394 5
	.loc 1 395 5
	.loc 1 396 5
	.loc 1 398 5
	.loc 1 399 5
	.loc 1 400 5
	.loc 1 402 5
	.loc 1 402 11
	mv	a3,sp
.LBE47:
.LBE46:
	.loc 1 518 5 is_stmt 0
	mv	a5,s0
.LBB51:
.LBB48:
	.loc 1 399 14
	li	a4,0
	.loc 1 400 10
	li	a1,0
	.loc 1 404 15
	li	a6,32
	.loc 1 404 29
	li	a7,9
	.loc 1 410 12
	li	t1,16
	.loc 1 426 12
	li	a2,34
	.loc 1 434 20
	li	t3,92
.LVL116:
.L88:
	.loc 1 404 15 is_stmt 1
	.loc 1 404 17 is_stmt 0
	lbu	a0,0(a5)
	.loc 1 404 15
	beq	a0,a6,.L70
	.loc 1 404 29
	bne	a0,a7,.L71
.L70:
	.loc 1 404 46
	bltu	a4,s1,.L72
	.loc 1 410 9 is_stmt 1
	.loc 1 410 12 is_stmt 0
	li	a5,16
.LVL117:
	beq	a1,a5,.L91
.L77:
.LVL118:
	.loc 1 468 5 is_stmt 1
.LBE48:
.LBE51:
	.loc 1 521 5
	.loc 1 521 8 is_stmt 0
	beq	a1,zero,.L89
	j	.L92
.LVL119:
.L57:
.LBE42:
.LBE41:
	.loc 1 584 9 is_stmt 1
	.loc 1 584 12 is_stmt 0
	addi	s0,s0,1
.LVL120:
	.loc 1 585 9 is_stmt 1
	j	.L56
.LVL121:
.L61:
.LBB64:
.LBB61:
	.loc 1 504 9
	.loc 1 504 18 is_stmt 0
	addi	s2,s2,1
.LVL122:
	j	.L59
.L60:
	.loc 1 507 5 is_stmt 1
	.loc 1 507 8 is_stmt 0
	bne	s2,zero,.L62
.L89:
.LVL123:
	mv	a5,s0
.L63:
.LVL124:
.LBE61:
.LBE64:
.LBB65:
	.loc 1 622 15 is_stmt 1
	.loc 1 622 29 is_stmt 0
	lbu	a4,0(a5)
	andi	a4,a4,223
	bne	a4,zero,.L90
	.loc 1 626 9 is_stmt 1
.LBE65:
	.loc 1 628 15 is_stmt 0
	lui	s1,%hi(.LANCHOR0)
.LVL125:
	addi	s1,s1,%lo(.LANCHOR0)
.LBB66:
	.loc 1 626 15
	sb	zero,0(a5)
.LBE66:
	.loc 1 628 5 is_stmt 1
	.loc 1 628 10
	.loc 1 628 15 is_stmt 0
	lw	a5,0(s1)
.LVL126:
	.loc 1 628 10
	lui	a0,%hi(.LC16)
	addi	a0,a0,%lo(.LC16)
	lw	a5,732(a5)
	jalr	a5
.LVL127:
	.loc 1 628 49 is_stmt 1
	.loc 1 628 54 is_stmt 0
	lw	a5,0(s1)
	.loc 1 628 49
	lui	a0,%hi(.LC19)
	mv	a1,s0
	lw	a5,732(a5)
	addi	a0,a0,%lo(.LC19)
	jalr	a5
.LVL128:
	.loc 1 628 105 is_stmt 1
	.loc 1 628 110 is_stmt 0
	lw	a5,0(s1)
	.loc 1 628 105
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	lw	a5,732(a5)
	jalr	a5
.LVL129:
	.loc 1 628 145 is_stmt 1
	.loc 1 629 5
	.loc 1 629 12 is_stmt 0
	li	a0,-1
	j	.L55
.LVL130:
.L65:
.LBB67:
.LBB62:
.LBB52:
.LBB45:
	.loc 1 476 68 is_stmt 1
	.loc 1 476 73 is_stmt 0
	addi	s3,s3,8
.LVL131:
	j	.L64
.LVL132:
.L72:
.LBE45:
.LBE52:
.LBB53:
.LBB49:
	.loc 1 405 13 is_stmt 1
	.loc 1 405 18 is_stmt 0
	sbia	zero,(a5),1,0
.LVL133:
	.loc 1 406 13 is_stmt 1
	.loc 1 407 13
	.loc 1 407 21 is_stmt 0
	addi	a4,a4,1
.LVL134:
	j	.L88
.L71:
	.loc 1 410 9 is_stmt 1
	.loc 1 410 12 is_stmt 0
	bne	a1,t1,.L74
.LVL135:
.L91:
	.loc 1 411 13 is_stmt 1
	.loc 1 411 18
	.loc 1 411 23 is_stmt 0
	lui	s2,%hi(.LANCHOR0)
.LVL136:
	addi	s3,s2,%lo(.LANCHOR0)
	lw	a5,0(s3)
	.loc 1 411 18
	lui	s5,%hi(.LC16)
	addi	a0,s5,%lo(.LC16)
	lw	a5,732(a5)
	.loc 1 413 20
	li	s6,0
	addi	s2,s2,%lo(.LANCHOR0)
	.loc 1 411 18
	jalr	a5
.LVL137:
	.loc 1 411 57 is_stmt 1
	.loc 1 411 62 is_stmt 0
	lw	a5,0(s3)
	.loc 1 411 57
	lui	a0,%hi(.LC17)
	addi	a0,a0,%lo(.LC17)
	lw	a5,732(a5)
	.loc 1 414 61
	lui	s8,%hi(.LC18)
	.loc 1 413 13
	li	s7,16
	.loc 1 411 57
	jalr	a5
.LVL138:
	.loc 1 411 114 is_stmt 1
	.loc 1 411 119 is_stmt 0
	lw	a5,0(s3)
	.loc 1 411 114
	lui	s3,%hi(.LC2)
	addi	a0,s3,%lo(.LC2)
	lw	a5,732(a5)
	jalr	a5
.LVL139:
	.loc 1 411 154 is_stmt 1
	.loc 1 413 13
	.loc 1 413 25
.L75:
	.loc 1 414 17
	.loc 1 414 22
	.loc 1 414 27 is_stmt 0
	lw	a5,0(s2)
	.loc 1 414 22
	addi	a0,s5,%lo(.LC16)
	lw	a5,732(a5)
	jalr	a5
.LVL140:
	.loc 1 414 61 is_stmt 1
	.loc 1 414 66 is_stmt 0
	lw	a5,0(s2)
	.loc 1 414 61
	lrw	a1,sp,s6,2
	addi	a0,s8,%lo(.LC18)
	lw	a5,732(a5)
	.loc 1 413 36
	addi	s6,s6,1
.LVL141:
	.loc 1 414 61
	jalr	a5
.LVL142:
	.loc 1 414 98 is_stmt 1
	.loc 1 414 103 is_stmt 0
	lw	a5,0(s2)
	.loc 1 414 98
	addi	a0,s3,%lo(.LC2)
	lw	a5,732(a5)
	jalr	a5
.LVL143:
	.loc 1 414 138 is_stmt 1
	.loc 1 413 35
	.loc 1 413 25
	.loc 1 413 13 is_stmt 0
	bne	s6,s7,.L75
	.loc 1 417 13 is_stmt 1
	.loc 1 417 18
	.loc 1 417 23 is_stmt 0
	lw	a5,0(s2)
	.loc 1 417 18
	addi	a0,s5,%lo(.LC16)
	lw	a5,732(a5)
	jalr	a5
.LVL144:
	.loc 1 417 57 is_stmt 1
	.loc 1 417 62 is_stmt 0
	lw	a5,0(s2)
	.loc 1 417 57
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	lw	a5,732(a5)
	jalr	a5
.LVL145:
	.loc 1 417 86 is_stmt 1
	.loc 1 417 91 is_stmt 0
	lw	a5,0(s2)
	.loc 1 417 86
	addi	a0,s3,%lo(.LC2)
	.loc 1 468 12
	li	s2,16
	.loc 1 417 86
	lw	a5,732(a5)
	jalr	a5
.LVL146:
	.loc 1 417 126 is_stmt 1
	.loc 1 418 13
	.loc 1 468 5
.LBE49:
.LBE53:
	.loc 1 521 5
.L76:
	.loc 1 526 5
.LBB54:
.LBB55:
	.loc 1 899 5
	.loc 1 899 24 is_stmt 0
	lui	a5,%hi(.LANCHOR8)
	addi	a5,a5,%lo(.LANCHOR8)
	lw	a4,0(a5)
	.loc 1 901 5 is_stmt 1
	.loc 1 902 9
	.loc 1 903 13
.LBE55:
.LBE54:
	.loc 1 527 5 is_stmt 0
	mv	a1,s1
.LBB58:
.LBB56:
	.loc 1 903 28
	lui	a4,%hi(shell_abort_exec)
	addi	a4,a4,%lo(shell_abort_exec)
.LBE56:
.LBE58:
	.loc 1 527 5
	mv	a0,s0
.LBB59:
.LBB57:
	.loc 1 903 28
	sw	a4,0(a5)
	.loc 1 909 9 is_stmt 1
.LVL147:
.LBE57:
.LBE59:
	.loc 1 527 5
	call	shell_dup_line
.LVL148:
	.loc 1 528 5
	.loc 1 528 13 is_stmt 0
	mv	a2,sp
	mv	a1,s2
	mv	a0,s4
	call	shell_start_exec
.LVL149:
	.loc 1 530 5 is_stmt 1
.L55:
.LBE62:
.LBE67:
	.loc 1 630 1 is_stmt 0
	lw	ra,108(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,104(sp)
	.cfi_restore 8
.LVL150:
	lw	s1,100(sp)
	.cfi_restore 9
	lw	s2,96(sp)
	.cfi_restore 18
	lw	s3,92(sp)
	.cfi_restore 19
	lw	s4,88(sp)
	.cfi_restore 20
	lw	s5,84(sp)
	.cfi_restore 21
	lw	s6,80(sp)
	.cfi_restore 22
	lw	s7,76(sp)
	.cfi_restore 23
	lw	s8,72(sp)
	.cfi_restore 24
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
.LVL151:
.L74:
	.cfi_restore_state
.LBB68:
.LBB63:
.LBB60:
.LBB50:
	.loc 1 421 9 is_stmt 1
	.loc 1 421 12 is_stmt 0
	bgeu	a4,s1,.L77
	.loc 1 426 9 is_stmt 1
	.loc 1 430 17 is_stmt 0
	addi	a1,a1,1
	.loc 1 426 12
	bne	a0,a2,.L78
	.loc 1 427 13 is_stmt 1
	.loc 1 427 16 is_stmt 0
	addi	a5,a5,1
.LVL152:
	.loc 1 428 13 is_stmt 1
	.loc 1 428 21 is_stmt 0
	addi	a4,a4,1
.LVL153:
	.loc 1 429 13 is_stmt 1
	.loc 1 429 24 is_stmt 0
	sw	a5,0(a3)
	.loc 1 430 13 is_stmt 1
.LVL154:
	.loc 1 433 13
.L79:
	.loc 1 433 19
	.loc 1 433 20 is_stmt 0
	lbu	a0,0(a5)
	.loc 1 433 19
	beq	a0,a2,.L81
	.loc 1 433 32
	bltu	a4,s1,.L82
.LVL155:
.L92:
	.loc 1 468 12
	mv	s2,a1
.LVL156:
	j	.L76
.LVL157:
.L82:
	.loc 1 434 17 is_stmt 1
	.loc 1 435 25 is_stmt 0
	lbu	t4,1(a5)
	.loc 1 434 20
	bne	a0,t3,.L80
	.loc 1 435 21 is_stmt 1
	.loc 1 435 24 is_stmt 0
	bne	t4,a2,.L80
	.loc 1 436 28
	addi	a5,a5,1
.LVL158:
	.loc 1 437 33
	addi	a4,a4,1
.LVL159:
.L80:
	.loc 1 441 17 is_stmt 1
	.loc 1 441 20 is_stmt 0
	addi	a5,a5,1
.LVL160:
	.loc 1 442 17 is_stmt 1
	.loc 1 442 25 is_stmt 0
	addi	a4,a4,1
.LVL161:
	j	.L79
.L81:
	.loc 1 445 13 is_stmt 1
	.loc 1 445 16 is_stmt 0
	bgeu	a4,s1,.L92
	.loc 1 450 13 is_stmt 1
	.loc 1 450 18 is_stmt 0
	sbia	zero,(a5),1,0
.LVL162:
	.loc 1 451 13 is_stmt 1
	.loc 1 452 13
	.loc 1 452 21 is_stmt 0
	addi	a4,a4,1
.LVL163:
	.loc 1 402 11 is_stmt 1
.L86:
	.loc 1 462 13
	.loc 1 462 16 is_stmt 0
	bgeu	a4,s1,.L92
.LVL164:
	addi	a3,a3,4
	j	.L88
.LVL165:
.L78:
	.loc 1 454 13 is_stmt 1
	.loc 1 454 24 is_stmt 0
	sw	a5,0(a3)
	.loc 1 455 13 is_stmt 1
.LVL166:
	.loc 1 457 13
.L85:
	.loc 1 457 19
	.loc 1 457 21 is_stmt 0
	lbu	a0,0(a5)
	.loc 1 457 19
	beq	a0,a6,.L86
	.loc 1 457 33
	beq	a0,a7,.L86
	.loc 1 457 50
	beq	a4,s1,.L92
	.loc 1 458 17 is_stmt 1
	.loc 1 458 20 is_stmt 0
	addi	a5,a5,1
.LVL167:
	.loc 1 459 17 is_stmt 1
	.loc 1 459 25 is_stmt 0
	addi	a4,a4,1
.LVL168:
	j	.L85
.LVL169:
.L90:
.LBE50:
.LBE60:
.LBE63:
.LBE68:
.LBB69:
	.loc 1 623 13 is_stmt 1
	.loc 1 623 17 is_stmt 0
	addi	a5,a5,1
.LVL170:
	j	.L63
.LBE69:
	.cfi_endproc
.LFE14:
	.size	shell_exec, .-shell_exec
	.section	.rodata.shell_handler.str1.4,"aMS",@progbits,1
	.align	2
.LC20:
	.string	"^C"
	.align	2
.LC21:
	.string	"\b"
	.align	2
.LC22:
	.string	"%c"
	.align	2
.LC23:
	.string	"\033[33m"
	.align	2
.LC24:
	.string	"\b%s  \b"
	.align	2
.LC25:
	.string	"\b \b"
	.section	.text.shell_handler,"ax",@progbits
	.align	1
	.globl	shell_handler
	.type	shell_handler, @function
shell_handler:
.LFB15:
	.loc 1 633 1 is_stmt 1
	.cfi_startproc
.LVL171:
	.loc 1 642 5
	.loc 1 633 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	sw	ra,44(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	lui	s0,%hi(.LANCHOR0)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	sw	s6,16(sp)
	sw	s7,12(sp)
	sw	s8,8(sp)
	sw	s9,4(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.loc 1 642 8
	li	a5,3
	addi	s0,s0,%lo(.LANCHOR0)
	bne	a0,a5,.L106
	.loc 1 644 9 is_stmt 1
	.loc 1 644 13 is_stmt 0
	lui	s1,%hi(.LANCHOR8)
	addi	s1,s1,%lo(.LANCHOR8)
	lw	a5,0(s1)
	.loc 1 644 12
	beq	a5,zero,.L107
	.loc 1 645 13 is_stmt 1
	lw	a5,0(s1)
	li	a0,1
.LVL172:
	jalr	a5
.LVL173:
	.loc 1 646 13
	.loc 1 646 28 is_stmt 0
	sw	zero,0(s1)
.L107:
	.loc 1 648 9 is_stmt 1
	.loc 1 648 14
	.loc 1 648 19 is_stmt 0
	lw	a5,0(s0)
	.loc 1 648 14
	lui	s1,%hi(.LC2)
	addi	a0,s1,%lo(.LC2)
	lw	a5,732(a5)
	.loc 1 649 14
	li	s2,13
	.loc 1 648 14
	jalr	a5
.LVL174:
	.loc 1 648 52 is_stmt 1
	.loc 1 648 57 is_stmt 0
	lw	a5,0(s0)
	.loc 1 648 52
	lui	a0,%hi(.LC20)
	addi	a0,a0,%lo(.LC20)
	lw	a5,732(a5)
	jalr	a5
.LVL175:
	.loc 1 648 79 is_stmt 1
	.loc 1 648 84 is_stmt 0
	lw	a5,0(s0)
	.loc 1 648 79
	addi	a0,s1,%lo(.LC2)
	lw	a5,732(a5)
	jalr	a5
.LVL176:
	.loc 1 648 119 is_stmt 1
	.loc 1 649 9
	.loc 1 652 5
.L108:
	.loc 1 655 12
	.loc 1 655 21 is_stmt 0
	lw	s1,0(s0)
	.loc 1 655 15
	li	a4,1
	.loc 1 655 21
	lbu	a5,0(s1)
	.loc 1 655 15
	bne	a5,a4,.L110
	.loc 1 656 9 is_stmt 1
	.loc 1 656 12 is_stmt 0
	li	a5,91
	bne	s2,a5,.L111
	.loc 1 657 13 is_stmt 1
	.loc 1 657 25 is_stmt 0
	li	a5,2
	sb	a5,0(s1)
	.loc 1 658 13 is_stmt 1
	j	.L105
.LVL177:
.L106:
	.loc 1 652 8 is_stmt 0
	li	a5,27
	mv	s2,a0
	.loc 1 652 5 is_stmt 1
	.loc 1 652 8 is_stmt 0
	bne	a0,a5,.L108
	.loc 1 653 9 is_stmt 1
	.loc 1 653 21 is_stmt 0
	lw	a5,0(s0)
	li	a4,1
	sb	a4,0(a5)
	.loc 1 654 9 is_stmt 1
.LVL178:
.L105:
	.loc 1 823 1 is_stmt 0
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
	lw	s3,28(sp)
	.cfi_restore 19
	lw	s4,24(sp)
	.cfi_restore 20
	lw	s5,20(sp)
	.cfi_restore 21
	lw	s6,16(sp)
	.cfi_restore 22
	lw	s7,12(sp)
	.cfi_restore 23
	lw	s8,8(sp)
	.cfi_restore 24
	lw	s9,4(sp)
	.cfi_restore 25
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.L111:
	.cfi_restore_state
	.loc 1 661 9 is_stmt 1
	.loc 1 661 21 is_stmt 0
	sb	zero,0(s1)
.L112:
	.loc 1 721 5 is_stmt 1
	.loc 1 721 24 is_stmt 0
	addi	a5,s2,-1
	.loc 1 721 8
	andi	a5,a5,0xff
	li	a4,253
	bgtu	a5,a4,.L105
	.loc 1 725 10 is_stmt 1
	.loc 1 725 13 is_stmt 0
	li	a5,9
	bne	s2,a5,.L180
.LBB80:
	.loc 1 729 16
	li	s3,0
	lui	s1,%hi(.LC2)
	.loc 1 730 56
	lui	s4,%hi(.LC21)
	j	.L121
.L110:
.LBE80:
	.loc 1 662 12 is_stmt 1
	.loc 1 662 15 is_stmt 0
	li	a4,2
	bne	a5,a4,.L112
	.loc 1 663 9 is_stmt 1
	.loc 1 663 21 is_stmt 0
	sb	zero,0(s1)
	.loc 1 665 9 is_stmt 1
	.loc 1 665 12 is_stmt 0
	li	a5,65
	bne	s2,a5,.L114
	.loc 1 668 13 is_stmt 1
	.loc 1 668 22 is_stmt 0
	lhu	a5,2(s1)
	.loc 1 668 16
	beq	a5,zero,.L105
	.loc 1 669 17 is_stmt 1
	.loc 1 669 39 is_stmt 0
	addi	a5,a5,-1
	extu	a5,a5,15,0
	sh	a5,2(s1)
	.loc 1 676 13 is_stmt 1
	.loc 1 676 33 is_stmt 0
	li	a4,120
.L185:
	.loc 1 696 33
	mv	a1,s1
	mula	a1,a4,a5
	.loc 1 696 13
	li	a2,120
	addi	a0,s1,606
	addi	a1,a1,6
	call	memcpy
.LVL179:
	.loc 1 698 13 is_stmt 1
	.loc 1 698 69 is_stmt 0
	lw	a0,0(s0)
	.loc 1 698 57
	addi	a0,a0,606
	call	strlen
.LVL180:
	mv	a5,a0
	.loc 1 698 39
	lw	a0,0(s0)
	.loc 1 823 1
	lw	s0,40(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
	lw	s3,28(sp)
	.cfi_restore 19
	lw	s4,24(sp)
	.cfi_restore 20
	lw	s5,20(sp)
	.cfi_restore 21
	lw	s6,16(sp)
	.cfi_restore 22
	lw	s7,12(sp)
	.cfi_restore 23
	lw	s8,8(sp)
	.cfi_restore 24
	lw	s9,4(sp)
	.cfi_restore 25
	.loc 1 698 55
	extu	a5,a5,15,0
	sh	a5,726(a0)
	.loc 1 698 32
	sh	a5,728(a0)
	.loc 1 699 13 is_stmt 1
	.loc 1 823 1 is_stmt 0
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	.loc 1 699 13
	tail	shell_handle_history
.LVL181:
.L114:
	.cfi_restore_state
	.loc 1 682 16 is_stmt 1
	.loc 1 682 19 is_stmt 0
	li	a5,66
	bne	s2,a5,.L116
	.loc 1 685 13 is_stmt 1
	.loc 1 685 47 is_stmt 0
	lhu	a3,4(s1)
	.loc 1 685 22
	lhu	a5,2(s1)
	.loc 1 685 63
	addi	a4,a3,-1
	.loc 1 685 16
	bge	a5,a4,.L117
	.loc 1 686 17 is_stmt 1
	.loc 1 686 39 is_stmt 0
	addi	a5,a5,1
	sh	a5,2(s1)
.L118:
	.loc 1 696 13 is_stmt 1
	.loc 1 696 33 is_stmt 0
	lhu	a4,2(s1)
	li	a5,120
	j	.L185
.L117:
	.loc 1 689 17 is_stmt 1
	.loc 1 689 20 is_stmt 0
	beq	a3,zero,.L105
	.loc 1 690 21 is_stmt 1
	.loc 1 690 44 is_stmt 0
	sh	a4,2(s1)
	j	.L118
.L116:
	.loc 1 702 16 is_stmt 1
	.loc 1 702 19 is_stmt 0
	li	a5,68
	bne	s2,a5,.L120
	.loc 1 704 13 is_stmt 1
	.loc 1 704 16 is_stmt 0
	lhu	a5,728(s1)
	beq	a5,zero,.L105
	.loc 1 705 17 is_stmt 1
	.loc 1 705 22
	lw	a5,732(s1)
	lui	s1,%hi(.LC2)
	addi	a0,s1,%lo(.LC2)
	jalr	a5
.LVL182:
	.loc 1 705 60
	.loc 1 705 65 is_stmt 0
	lw	a5,0(s0)
	.loc 1 705 60
	lui	a0,%hi(.LC21)
	addi	a0,a0,%lo(.LC21)
	lw	a5,732(a5)
	jalr	a5
.LVL183:
	.loc 1 705 87 is_stmt 1
	.loc 1 705 92 is_stmt 0
	lw	a5,0(s0)
	.loc 1 705 87
	addi	a0,s1,%lo(.LC2)
	lw	a5,732(a5)
	jalr	a5
.LVL184:
	.loc 1 705 127 is_stmt 1
	.loc 1 706 17
	.loc 1 706 22 is_stmt 0
	lw	a4,0(s0)
	.loc 1 706 35
	lhu	a5,728(a4)
	addi	a5,a5,-1
.L183:
	.loc 1 714 35
	sh	a5,728(a4)
	j	.L105
.L120:
	.loc 1 710 16 is_stmt 1
	.loc 1 710 19 is_stmt 0
	li	a5,67
	bne	s2,a5,.L112
	.loc 1 712 13 is_stmt 1
	.loc 1 712 16 is_stmt 0
	lhu	a4,728(s1)
	lhu	a5,726(s1)
	bgeu	a4,a5,.L105
	.loc 1 713 17 is_stmt 1
	.loc 1 713 22
	lw	a5,732(s1)
	lui	s1,%hi(.LC2)
	addi	a0,s1,%lo(.LC2)
	jalr	a5
.LVL185:
	.loc 1 713 60
	.loc 1 713 65 is_stmt 0
	lw	a4,0(s0)
	.loc 1 713 60
	lui	a0,%hi(.LC22)
	addi	a0,a0,%lo(.LC22)
	.loc 1 713 103
	lhu	a5,728(a4)
	.loc 1 713 97
	add	a5,a4,a5
	.loc 1 713 60
	lbu	a1,606(a5)
	lw	a4,732(a4)
	jalr	a4
.LVL186:
	.loc 1 713 120 is_stmt 1
	.loc 1 713 125 is_stmt 0
	lw	a5,0(s0)
	.loc 1 713 120
	addi	a0,s1,%lo(.LC2)
	lw	a5,732(a5)
	jalr	a5
.LVL187:
	.loc 1 713 160 is_stmt 1
	.loc 1 714 17
	.loc 1 714 22 is_stmt 0
	lw	a4,0(s0)
	.loc 1 714 35
	lhu	a5,728(a4)
	addi	a5,a5,1
	j	.L183
.LVL188:
.L123:
.LBB91:
	.loc 1 730 13 is_stmt 1 discriminator 3
	.loc 1 730 18 discriminator 3
	addi	a0,s1,%lo(.LC2)
	jalr	a5
.LVL189:
	.loc 1 730 56 discriminator 3
	.loc 1 730 61 is_stmt 0 discriminator 3
	lw	a5,0(s0)
	.loc 1 730 56 discriminator 3
	addi	a0,s4,%lo(.LC21)
	.loc 1 729 46 discriminator 3
	addi	s3,s3,1
.LVL190:
	.loc 1 730 56 discriminator 3
	lw	a5,732(a5)
	jalr	a5
.LVL191:
	.loc 1 730 83 is_stmt 1 discriminator 3
	.loc 1 730 88 is_stmt 0 discriminator 3
	lw	a5,0(s0)
	.loc 1 730 83 discriminator 3
	addi	a0,s1,%lo(.LC2)
	lw	a5,732(a5)
	jalr	a5
.LVL192:
	.loc 1 730 123 is_stmt 1 discriminator 3
	.loc 1 729 45 discriminator 3
.L121:
	.loc 1 729 21 discriminator 1
	.loc 1 729 30 is_stmt 0 discriminator 1
	lw	s2,0(s0)
	lhu	a4,728(s2)
	.loc 1 730 23 discriminator 1
	lw	a5,732(s2)
	.loc 1 729 9 discriminator 1
	bgt	a4,s3,.L123
	.loc 1 734 9 is_stmt 1
.LBB81:
.LBB82:
	.loc 1 327 10 is_stmt 0
	addi	a0,s1,%lo(.LC2)
	jalr	a5
.LVL193:
	.loc 1 327 53
	lw	a5,0(s0)
	.loc 1 327 48
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	lw	a5,732(a5)
.LBE82:
.LBE81:
	.loc 1 734 9
	addi	s5,s2,606
.LVL194:
.LBB89:
.LBB87:
	.loc 1 320 5 is_stmt 1
	.loc 1 321 5
	.loc 1 322 5
	.loc 1 324 5
	.loc 1 325 5
	.loc 1 327 5
	.loc 1 327 10
	.loc 1 327 48
	jalr	a5
.LVL195:
	.loc 1 327 77
	.loc 1 327 82 is_stmt 0
	lw	a5,0(s0)
	.loc 1 327 77
	addi	a0,s1,%lo(.LC2)
	lw	a5,732(a5)
	jalr	a5
.LVL196:
	.loc 1 327 117 is_stmt 1
	.loc 1 329 5
	.loc 1 329 8 is_stmt 0
	lbu	a5,606(s2)
	bne	a5,zero,.L124
	.loc 1 330 9 is_stmt 1
	li	a1,0
	li	a0,0
	call	shell_help
.LVL197:
	.loc 1 331 9
.L125:
.LBE87:
.LBE89:
	.loc 1 736 9
	.loc 1 736 65 is_stmt 0
	lw	a0,0(s0)
	.loc 1 736 53
	addi	a0,a0,606
	call	strlen
.LVL198:
	.loc 1 736 35
	lw	a5,0(s0)
	.loc 1 736 51
	extu	a0,a0,15,0
	sh	a0,726(a5)
	.loc 1 736 28
	sh	a0,728(a5)
	.loc 1 738 9 is_stmt 1
	j	.L105
.LVL199:
.L124:
.LBB90:
.LBB88:
	.loc 1 354 9
	.loc 1 354 20 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	lw	s6,%lo(.LANCHOR1)(a5)
.LVL200:
	.loc 1 325 14
	li	s2,0
	.loc 1 324 16
	li	s3,0
.LVL201:
	.loc 1 354 50
	lui	s7,%hi(.LANCHOR2)
	.loc 1 376 22
	lui	s8,%hi(.LC23)
	.loc 1 376 61
	lui	s9,%hi(.LC3)
.LVL202:
.L126:
	.loc 1 354 44 is_stmt 1
	.loc 1 354 9 is_stmt 0
	lw	a5,%lo(.LANCHOR2)(s7)
	bltu	s6,a5,.L132
	.loc 1 382 5 is_stmt 1
	.loc 1 382 8 is_stmt 0
	beq	s2,zero,.L133
	.loc 1 383 9 is_stmt 1
	addi	a2,s3,1
	mv	a1,s2
	mv	a0,s5
	call	strlcpy
.LVL203:
.L133:
	.loc 1 386 5
	.loc 1 386 10
	.loc 1 386 15 is_stmt 0
	lw	a5,0(s0)
	.loc 1 386 10
	lui	a0,%hi(.LC14)
	addi	a0,a0,%lo(.LC14)
	lw	a5,732(a5)
	.loc 1 386 49
	lui	s2,%hi(.LC15)
.LVL204:
	.loc 1 386 10
	jalr	a5
.LVL205:
	.loc 1 386 49 is_stmt 1
	.loc 1 386 54 is_stmt 0
	lw	a5,0(s0)
	lw	s3,732(a5)
.LVL206:
	.loc 1 386 49
	call	shell_get_prompt
.LVL207:
	mv	a1,a0
	addi	a0,s2,%lo(.LC15)
	jalr	s3
.LVL208:
	.loc 1 386 96 is_stmt 1
	.loc 1 386 101 is_stmt 0
	lw	a5,0(s0)
	.loc 1 386 96
	addi	a0,s1,%lo(.LC2)
	lw	a5,732(a5)
	jalr	a5
.LVL209:
	.loc 1 386 136 is_stmt 1
	.loc 1 387 5
	.loc 1 387 10
	.loc 1 387 15 is_stmt 0
	lw	a5,0(s0)
	.loc 1 387 10
	addi	a0,s1,%lo(.LC2)
	lw	a5,732(a5)
	jalr	a5
.LVL210:
	.loc 1 387 48 is_stmt 1
	.loc 1 387 53 is_stmt 0
	lw	a5,0(s0)
	.loc 1 387 48
	addi	a0,s2,%lo(.LC15)
	mv	a1,s5
	lw	a5,732(a5)
	jalr	a5
.LVL211:
	.loc 1 387 83 is_stmt 1
	.loc 1 387 88 is_stmt 0
	lw	a5,0(s0)
	.loc 1 387 83
	addi	a0,s1,%lo(.LC2)
	lw	a5,732(a5)
	jalr	a5
.LVL212:
	.loc 1 387 123 is_stmt 1
	.loc 1 388 5
	j	.L125
.LVL213:
.L132:
	.loc 1 360 13
	.loc 1 360 22 is_stmt 0
	lw	s4,0(s6)
.LVL214:
	.loc 1 362 13 is_stmt 1
	.loc 1 362 17 is_stmt 0
	mv	a0,s5
	call	strlen
.LVL215:
	mv	a2,a0
	mv	a1,s4
	mv	a0,s5
	call	strncmp
.LVL216:
	.loc 1 362 16
	bne	a0,zero,.L127
	.loc 1 363 17 is_stmt 1
	.loc 1 363 20 is_stmt 0
	bne	s3,zero,.L128
	.loc 1 365 21 is_stmt 1
.LVL217:
	.loc 1 367 21
	.loc 1 367 34 is_stmt 0
	mv	a0,s4
	call	strlen
.LVL218:
	mv	s3,a0
.LVL219:
	.loc 1 360 22
	mv	s2,s4
.LVL220:
.L128:
	.loc 1 370 17 is_stmt 1
.LBB83:
.LBB84:
	.loc 1 143 5
	.loc 1 145 5
	.loc 1 145 11 is_stmt 0
	li	a5,0
.LVL221:
.L130:
	.loc 1 145 13
	lrbu	a2,s2,a5,0
	add	a4,s2,a5
.LVL222:
	.loc 1 145 11 is_stmt 1
	beq	a2,zero,.L129
	.loc 1 145 28 is_stmt 0
	lrbu	a3,s4,a5,0
	.loc 1 145 24
	beq	a3,zero,.L129
	.loc 1 145 40
	addi	a5,a5,1
.LVL223:
	beq	a2,a3,.L130
.LVL224:
.L129:
	.loc 1 150 5 is_stmt 1
.LBE84:
.LBE83:
	.loc 1 372 17
.LBB86:
.LBB85:
	.loc 1 150 17 is_stmt 0
	sub	a5,a4,s2
.LVL225:
	sgt	a4,s3,a5
	mvnez	s3, a5, a4
.LVL226:
.LBE85:
.LBE86:
	.loc 1 376 17 is_stmt 1
	.loc 1 376 22
	.loc 1 376 27 is_stmt 0
	lw	a5,0(s0)
.LVL227:
	.loc 1 376 22
	addi	a0,s8,%lo(.LC23)
	lw	a5,732(a5)
	jalr	a5
.LVL228:
	.loc 1 376 61 is_stmt 1
	.loc 1 376 66 is_stmt 0
	lw	a5,0(s0)
	.loc 1 376 61
	addi	a0,s9,%lo(.LC3)
	mv	a1,s4
	lw	a5,732(a5)
	jalr	a5
.LVL229:
	.loc 1 376 102 is_stmt 1
	.loc 1 376 107 is_stmt 0
	lw	a5,0(s0)
	.loc 1 376 102
	addi	a0,s1,%lo(.LC2)
	lw	a5,732(a5)
	jalr	a5
.LVL230:
.L127:
	.loc 1 376 142 is_stmt 1
	.loc 1 354 72
	.loc 1 354 77 is_stmt 0
	addi	s6,s6,8
.LVL231:
	j	.L126
.LVL232:
.L180:
.LBE88:
.LBE90:
.LBE91:
	.loc 1 741 10 is_stmt 1
	.loc 1 741 13 is_stmt 0
	li	a5,127
	beq	s2,a5,.L134
	.loc 1 741 27 discriminator 1
	li	a5,8
	bne	s2,a5,.L135
.L134:
	.loc 1 743 9 is_stmt 1
	.loc 1 743 18 is_stmt 0
	lhu	a1,728(s1)
	.loc 1 743 12
	beq	a1,zero,.L105
	.loc 1 747 9 is_stmt 1
	.loc 1 747 29 is_stmt 0
	lhu	a5,726(s1)
	.loc 1 748 27
	addi	a2,a1,-1
	extu	a2,a2,15,0
	.loc 1 747 29
	addi	a5,a5,-1
	extu	a5,a5,15,0
	sh	a5,726(s1)
	.loc 1 748 9 is_stmt 1
	.loc 1 748 27 is_stmt 0
	sh	a2,728(s1)
	.loc 1 750 9 is_stmt 1
	lui	s2,%hi(.LC2)
	.loc 1 750 12 is_stmt 0
	bleu	a5,a2,.L136
.LBB92:
	.loc 1 751 13 is_stmt 1
	.loc 1 753 13
	.loc 1 753 21 is_stmt 0
	addi	a0,a2,606
	.loc 1 754 21
	addi	a1,a1,606
	.loc 1 753 13
	sub	a2,a5,a2
	add	a1,s1,a1
	add	a0,s1,a0
	call	memmove
.LVL233:
	.loc 1 756 13 is_stmt 1
	.loc 1 756 18 is_stmt 0
	lw	a5,0(s0)
	.loc 1 758 18
	addi	a0,s2,%lo(.LC2)
	.loc 1 762 60
	lui	s3,%hi(.LC21)
	.loc 1 756 30
	lhu	a4,726(a5)
	.loc 1 756 47
	add	a4,a5,a4
	sb	zero,606(a4)
	.loc 1 758 13 is_stmt 1
	.loc 1 758 18
	lw	a5,732(a5)
	jalr	a5
.LVL234:
	.loc 1 758 56
	.loc 1 758 61 is_stmt 0
	lw	a1,0(s0)
	.loc 1 758 56
	lui	a0,%hi(.LC24)
	addi	a0,a0,%lo(.LC24)
	lhu	a5,728(a1)
	lw	a4,732(a1)
	addi	a5,a5,606
	add	a1,a1,a5
	jalr	a4
.LVL235:
	.loc 1 758 123 is_stmt 1
	.loc 1 758 128 is_stmt 0
	lw	a5,0(s0)
	.loc 1 758 123
	addi	a0,s2,%lo(.LC2)
	lw	a5,732(a5)
	jalr	a5
.LVL236:
	.loc 1 758 163 is_stmt 1
	.loc 1 761 13
	.loc 1 761 27 is_stmt 0
	lw	a5,0(s0)
	.loc 1 761 20
	lhu	s1,728(a5)
.LVL237:
.L137:
	.loc 1 761 42 is_stmt 1 discriminator 1
	.loc 1 761 52 is_stmt 0 discriminator 1
	lw	a5,0(s0)
	lhu	a4,726(a5)
	.loc 1 761 13 discriminator 1
	blt	a4,s1,.L105
	.loc 1 762 17 is_stmt 1 discriminator 3
	.loc 1 762 22 discriminator 3
	lw	a5,732(a5)
	addi	a0,s2,%lo(.LC2)
	.loc 1 761 70 is_stmt 0 discriminator 3
	addi	s1,s1,1
.LVL238:
	.loc 1 762 22 discriminator 3
	jalr	a5
.LVL239:
	.loc 1 762 60 is_stmt 1 discriminator 3
	.loc 1 762 65 is_stmt 0 discriminator 3
	lw	a5,0(s0)
	.loc 1 762 60 discriminator 3
	addi	a0,s3,%lo(.LC21)
	lw	a5,732(a5)
	jalr	a5
.LVL240:
	.loc 1 762 87 is_stmt 1 discriminator 3
	.loc 1 762 92 is_stmt 0 discriminator 3
	lw	a5,0(s0)
	.loc 1 762 87 discriminator 3
	addi	a0,s2,%lo(.LC2)
	lw	a5,732(a5)
	jalr	a5
.LVL241:
	.loc 1 762 127 is_stmt 1 discriminator 3
	.loc 1 761 69 discriminator 3
	j	.L137
.LVL242:
.L136:
.LBE92:
	.loc 1 765 13
	.loc 1 765 18
	lw	a5,732(s1)
	addi	a0,s2,%lo(.LC2)
	jalr	a5
.LVL243:
	.loc 1 765 56
	.loc 1 765 61 is_stmt 0
	lw	a5,0(s0)
	.loc 1 765 56
	lui	a0,%hi(.LC25)
	addi	a0,a0,%lo(.LC25)
	lw	a5,732(a5)
	jalr	a5
.LVL244:
	.loc 1 765 86 is_stmt 1
	.loc 1 765 91 is_stmt 0
	lw	a5,0(s0)
	.loc 1 765 86
	addi	a0,s2,%lo(.LC2)
	lw	a5,732(a5)
	jalr	a5
.LVL245:
	.loc 1 765 126 is_stmt 1
	.loc 1 766 13
	.loc 1 766 18 is_stmt 0
	lw	a5,0(s0)
	.loc 1 766 30
	lhu	a4,726(a5)
	.loc 1 766 47
	add	a5,a5,a4
	sb	zero,606(a5)
	j	.L105
.L135:
	.loc 1 773 5 is_stmt 1
	.loc 1 773 8 is_stmt 0
	li	a5,13
	beq	s2,a5,.L139
	.loc 1 773 22 discriminator 1
	li	a5,10
	bne	s2,a5,.L140
.L139:
	.loc 1 774 9 is_stmt 1
.LVL246:
.LBB93:
.LBB94:
	.loc 1 162 5
	.loc 1 162 8 is_stmt 0
	lhu	a5,726(s1)
	beq	a5,zero,.L142
.LBE94:
.LBE93:
	.loc 1 685 47
	lhu	a5,4(s1)
.LBB99:
.LBB96:
	.loc 1 164 9 is_stmt 1
	.loc 1 164 12 is_stmt 0
	li	a4,4
.LBE96:
.LBE99:
	.loc 1 676 25
	addi	s3,s1,606
.LBB100:
.LBB97:
	.loc 1 164 12
	bleu	a5,a4,.L143
	.loc 1 166 13 is_stmt 1
	.loc 1 166 24 is_stmt 0
	addi	s4,s1,486
	.loc 1 166 17
	li	a2,120
	mv	a1,s3
	mv	a0,s4
	call	memcmp
.LVL247:
	.loc 1 166 16
	beq	a0,zero,.L142
	addi	s2,s1,6
.L145:
.LBB95:
	.loc 1 172 21 is_stmt 1
	.loc 1 172 28 is_stmt 0
	mv	a0,s2
	addi	s2,s2,120
	.loc 1 172 21
	li	a2,120
	mv	a1,s2
	call	memcpy
.LVL248:
	.loc 1 171 48 is_stmt 1
	.loc 1 171 33
	.loc 1 171 17 is_stmt 0
	bne	s4,s2,.L145
	.loc 1 176 17 is_stmt 1
	li	a2,120
	li	a1,0
	mv	a0,s4
	call	memset
.LVL249:
	.loc 1 177 17
	lhu	a2,726(s1)
	mv	a1,s3
	mv	a0,s4
	call	memcpy
.LVL250:
	.loc 1 181 17
	.loc 1 181 38 is_stmt 0
	li	a5,5
.L182:
.LBE95:
	.loc 1 194 37
	sh	a5,4(s1)
.L142:
	.loc 1 199 5 is_stmt 1
	.loc 1 199 28 is_stmt 0
	lhu	a5,4(s1)
	sh	a5,2(s1)
.LVL251:
.LBE97:
.LBE100:
	.loc 1 776 9 is_stmt 1
	.loc 1 776 14
	.loc 1 776 19 is_stmt 0
	lw	a5,0(s0)
	.loc 1 776 14
	lui	s1,%hi(.LC2)
	addi	a0,s1,%lo(.LC2)
	lw	a5,732(a5)
	jalr	a5
.LVL252:
	.loc 1 776 52 is_stmt 1
	.loc 1 776 57 is_stmt 0
	lw	a5,0(s0)
	.loc 1 776 52
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	lw	a5,732(a5)
	jalr	a5
.LVL253:
	.loc 1 776 81 is_stmt 1
	.loc 1 776 86 is_stmt 0
	lw	a5,0(s0)
	.loc 1 776 81
	addi	a0,s1,%lo(.LC2)
	lw	a5,732(a5)
	jalr	a5
.LVL254:
	.loc 1 776 121 is_stmt 1
	.loc 1 777 9
	.loc 1 777 25 is_stmt 0
	lw	a0,0(s0)
	.loc 1 777 9
	lhu	a1,726(a0)
	addi	a0,a0,606
	call	shell_exec
.LVL255:
	.loc 1 779 9 is_stmt 1
	.loc 1 779 14
	.loc 1 779 19 is_stmt 0
	lw	a5,0(s0)
	.loc 1 779 14
	lui	a0,%hi(.LC14)
	addi	a0,a0,%lo(.LC14)
	lw	a5,732(a5)
	jalr	a5
.LVL256:
	.loc 1 779 53 is_stmt 1
	.loc 1 779 58 is_stmt 0
	lw	a5,0(s0)
	lw	s2,732(a5)
	.loc 1 779 53
	call	shell_get_prompt
.LVL257:
	jalr	s2
.LVL258:
	.loc 1 779 94 is_stmt 1
	.loc 1 779 99 is_stmt 0
	lw	a5,0(s0)
	.loc 1 779 94
	addi	a0,s1,%lo(.LC2)
	lw	a5,732(a5)
	jalr	a5
.LVL259:
	.loc 1 779 134 is_stmt 1
	.loc 1 780 9
	.loc 1 780 21 is_stmt 0
	lw	a0,0(s0)
	.loc 1 780 9
	li	a2,120
	li	a1,0
	addi	a0,a0,606
	call	memset
.LVL260:
	.loc 1 781 9 is_stmt 1
	.loc 1 781 35 is_stmt 0
	lw	a5,0(s0)
.L184:
	.loc 1 820 9 is_stmt 1
	.loc 1 820 30 is_stmt 0
	sh	zero,726(a5)
	.loc 1 821 9 is_stmt 1
	.loc 1 821 28 is_stmt 0
	sh	zero,728(a5)
	j	.L105
.LVL261:
.L143:
.LBB101:
.LBB98:
	.loc 1 185 13 is_stmt 1
	.loc 1 185 16 is_stmt 0
	bne	a5,zero,.L146
.L147:
	.loc 1 188 17 is_stmt 1
	.loc 1 188 47 is_stmt 0
	lhu	a5,4(s1)
	.loc 1 189 24
	li	s2,120
	mv	a0,s1
	mula	a0,a5,s2
	.loc 1 188 40
	sh	a5,2(s1)
	.loc 1 189 17 is_stmt 1
	li	a2,120
	li	a1,0
	addi	a0,a0,6
	call	memset
.LVL262:
	.loc 1 190 17
	.loc 1 190 24 is_stmt 0
	lhu	a5,4(s1)
	mv	a0,s1
	.loc 1 190 17
	lhu	a2,726(s1)
	.loc 1 190 24
	mula	a0,a5,s2
	.loc 1 190 17
	mv	a1,s3
	addi	a0,a0,6
	call	memcpy
.LVL263:
	.loc 1 194 17 is_stmt 1
	.loc 1 194 37 is_stmt 0
	lhu	a5,4(s1)
	addi	a5,a5,1
	j	.L182
.L146:
	.loc 1 186 65
	addi	a5,a5,-1
	.loc 1 186 24
	li	a4,120
	mv	a0,s1
	mula	a0,a5,a4
	.loc 1 186 17
	li	a2,120
	mv	a1,s3
	addi	a0,a0,6
	call	memcmp
.LVL264:
	.loc 1 185 43
	bne	a0,zero,.L147
	j	.L142
.LVL265:
.L140:
.LBE98:
.LBE101:
	.loc 1 785 5 is_stmt 1
	.loc 1 785 22 is_stmt 0
	addi	a5,s2,-32
	.loc 1 785 7
	andi	a5,a5,0xff
	li	a4,95
	bgtu	a5,a4,.L105
	.loc 1 790 5 is_stmt 1
	.loc 1 790 8 is_stmt 0
	lhu	a4,726(s1)
	li	a5,119
	bleu	a4,a5,.L148
	.loc 1 791 9 is_stmt 1
	.loc 1 791 30 is_stmt 0
	sh	zero,726(s1)
.L148:
	.loc 1 795 5 is_stmt 1
	.loc 1 795 14 is_stmt 0
	lhu	a2,728(s1)
	.loc 1 795 35
	lhu	a5,726(s1)
	lui	s3,%hi(.LC2)
	.loc 1 795 8
	bgeu	a2,a5,.L149
.LBB102:
	.loc 1 796 9 is_stmt 1
	.loc 1 798 9
	.loc 1 799 17 is_stmt 0
	addi	a1,a2,606
	.loc 1 798 17
	addi	a0,a2,607
	.loc 1 798 9
	add	a1,s1,a1
	sub	a2,a5,a2
	add	a0,s1,a0
	call	memmove
.LVL266:
	.loc 1 801 9 is_stmt 1
	.loc 1 801 14 is_stmt 0
	lw	a5,0(s0)
	.loc 1 803 14
	addi	a0,s3,%lo(.LC2)
	.loc 1 801 26
	lhu	a4,728(a5)
	.loc 1 801 41
	add	a4,a5,a4
	sb	s2,606(a4)
	.loc 1 803 9 is_stmt 1
	.loc 1 803 14
	lw	a5,732(a5)
	.loc 1 807 56 is_stmt 0
	lui	s2,%hi(.LC21)
	.loc 1 803 14
	jalr	a5
.LVL267:
	.loc 1 803 52 is_stmt 1
	.loc 1 803 57 is_stmt 0
	lw	a1,0(s0)
	.loc 1 803 52
	lui	a0,%hi(.LC15)
	addi	a0,a0,%lo(.LC15)
	lhu	a5,728(a1)
	lw	a4,732(a1)
	addi	a5,a5,606
	add	a1,a1,a5
	jalr	a4
.LVL268:
	.loc 1 803 113 is_stmt 1
	.loc 1 803 118 is_stmt 0
	lw	a5,0(s0)
	.loc 1 803 113
	addi	a0,s3,%lo(.LC2)
	lw	a5,732(a5)
	jalr	a5
.LVL269:
	.loc 1 803 153 is_stmt 1
	.loc 1 806 9
	.loc 1 806 23 is_stmt 0
	lw	a5,0(s0)
	.loc 1 806 16
	lhu	s1,728(a5)
.LVL270:
.L150:
	.loc 1 806 38 is_stmt 1 discriminator 1
	.loc 1 806 47 is_stmt 0 discriminator 1
	lw	a5,0(s0)
	lhu	a4,726(a5)
	.loc 1 806 9 discriminator 1
	bgt	a4,s1,.L151
.LVL271:
.L152:
.LBE102:
	.loc 1 811 125 is_stmt 1 discriminator 1
	.loc 1 814 5 discriminator 1
	.loc 1 815 5 discriminator 1
	.loc 1 815 10 is_stmt 0 discriminator 1
	lw	a5,0(s0)
	.loc 1 815 25 discriminator 1
	lhu	a4,726(a5)
	.loc 1 816 23 discriminator 1
	lhu	a3,728(a5)
	.loc 1 815 25 discriminator 1
	addi	a4,a4,1
	.loc 1 816 23 discriminator 1
	addi	a3,a3,1
	.loc 1 815 25 discriminator 1
	extu	a4,a4,15,0
	.loc 1 816 23 discriminator 1
	sh	a3,728(a5)
	.loc 1 815 25 discriminator 1
	sh	a4,726(a5)
	.loc 1 816 5 is_stmt 1 discriminator 1
	.loc 1 818 5 discriminator 1
	.loc 1 818 8 is_stmt 0 discriminator 1
	li	a3,119
	bleu	a4,a3,.L105
	j	.L184
.LVL272:
.L151:
.LBB103:
	.loc 1 807 13 is_stmt 1 discriminator 3
	.loc 1 807 18 discriminator 3
	lw	a5,732(a5)
	addi	a0,s3,%lo(.LC2)
	.loc 1 806 65 is_stmt 0 discriminator 3
	addi	s1,s1,1
.LVL273:
	.loc 1 807 18 discriminator 3
	jalr	a5
.LVL274:
	.loc 1 807 56 is_stmt 1 discriminator 3
	.loc 1 807 61 is_stmt 0 discriminator 3
	lw	a5,0(s0)
	.loc 1 807 56 discriminator 3
	addi	a0,s2,%lo(.LC21)
	lw	a5,732(a5)
	jalr	a5
.LVL275:
	.loc 1 807 83 is_stmt 1 discriminator 3
	.loc 1 807 88 is_stmt 0 discriminator 3
	lw	a5,0(s0)
	.loc 1 807 83 discriminator 3
	addi	a0,s3,%lo(.LC2)
	lw	a5,732(a5)
	jalr	a5
.LVL276:
	.loc 1 807 123 is_stmt 1 discriminator 3
	.loc 1 806 64 discriminator 3
	j	.L150
.LVL277:
.L149:
.LBE103:
	.loc 1 810 9
	.loc 1 810 43 is_stmt 0
	add	a5,s1,a5
	sb	s2,606(a5)
	.loc 1 811 9 is_stmt 1
	.loc 1 811 14
	lw	a5,732(s1)
	addi	a0,s3,%lo(.LC2)
	jalr	a5
.LVL278:
	.loc 1 811 52
	.loc 1 811 57 is_stmt 0
	lw	a5,0(s0)
	.loc 1 811 52
	lui	a0,%hi(.LC22)
	mv	a1,s2
	lw	a5,732(a5)
	addi	a0,a0,%lo(.LC22)
	jalr	a5
.LVL279:
	.loc 1 811 85 is_stmt 1
	.loc 1 811 90 is_stmt 0
	lw	a5,0(s0)
	.loc 1 811 85
	addi	a0,s3,%lo(.LC2)
	lw	a5,732(a5)
	jalr	a5
.LVL280:
	j	.L152
	.cfi_endproc
.LFE15:
	.size	shell_handler, .-shell_handler
	.globl	__fsym_memtrace
	.globl	__fsym_memtrace_name
	.globl	__fsym_help
	.globl	__fsym_help_name
	.globl	_shell
	.globl	_sysvar_table_end
	.globl	_sysvar_table_begin
	.globl	_syscall_table_end
	.globl	_syscall_table_begin
	.section	.bss._shell,"aw",@nobits
	.align	2
	.set	.LANCHOR7,. + 0
	.type	_shell, @object
	.size	_shell, 736
_shell:
	.zero	736
	.section	.bss._syscall_table_begin,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	_syscall_table_begin, @object
	.size	_syscall_table_begin, 4
_syscall_table_begin:
	.zero	4
	.section	.bss._syscall_table_end,"aw",@nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	_syscall_table_end, @object
	.size	_syscall_table_end, 4
_syscall_table_end:
	.zero	4
	.section	.bss._sysvar_table_begin,"aw",@nobits
	.align	2
	.set	.LANCHOR5,. + 0
	.type	_sysvar_table_begin, @object
	.size	_sysvar_table_begin, 4
_sysvar_table_begin:
	.zero	4
	.section	.bss._sysvar_table_end,"aw",@nobits
	.align	2
	.set	.LANCHOR6,. + 0
	.type	_sysvar_table_end, @object
	.size	_sysvar_table_end, 4
_sysvar_table_end:
	.zero	4
	.section	.bss.shell,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	shell, @object
	.size	shell, 4
shell:
	.zero	4
	.section	.bss.shell_prompt.0,"aw",@nobits
	.align	2
	.set	.LANCHOR4,. + 0
	.type	shell_prompt.0, @object
	.size	shell_prompt.0, 129
shell_prompt.0:
	.zero	129
	.section	.bss.shell_prompt_custom,"aw",@nobits
	.align	2
	.set	.LANCHOR3,. + 0
	.type	shell_prompt_custom, @object
	.size	shell_prompt_custom, 4
shell_prompt_custom:
	.zero	4
	.section	.bss.shell_sig_func,"aw",@nobits
	.align	2
	.set	.LANCHOR8,. + 0
	.type	shell_sig_func, @object
	.size	shell_sig_func, 4
shell_sig_func:
	.zero	4
	.section	.rodata.__fsym_help_name,"a"
	.align	2
	.type	__fsym_help_name, @object
	.size	__fsym_help_name, 5
__fsym_help_name:
	.string	"help"
	.section	.rodata.__fsym_memtrace_name,"a"
	.align	2
	.type	__fsym_memtrace_name, @object
	.size	__fsym_memtrace_name, 9
__fsym_memtrace_name:
	.string	"memtrace"
	.section	FSymTab,"a"
	.align	2
	.type	__fsym_memtrace, @object
	.size	__fsym_memtrace, 8
__fsym_memtrace:
	.word	__fsym_memtrace_name
	.word	shell_memtrace
	.type	__fsym_help, @object
	.size	__fsym_help, 8
__fsym_help:
	.word	__fsym_help_name
	.word	shell_help
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./components/shell/shell.h"
	.file 5 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/stdio.h"
	.file 6 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/string.h"
	.file 7 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1791
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF111
	.byte	0xc
	.4byte	.LASF112
	.4byte	.LASF113
	.4byte	.Ldebug_ranges0+0x198
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
	.byte	0x5
	.4byte	0x81
	.byte	0x3
	.4byte	.LASF11
	.byte	0x2
	.byte	0xe8
	.byte	0x16
	.4byte	0x99
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
	.byte	0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x52
	.byte	0x15
	.4byte	0x8d
	.byte	0x6
	.byte	0x4
	.byte	0x7
	.byte	0x4
	.4byte	0xd8
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.byte	0x5
	.4byte	0xd8
	.byte	0x7
	.byte	0x4
	.4byte	0xdf
	.byte	0x8
	.4byte	0xf5
	.byte	0x9
	.4byte	0x81
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xea
	.byte	0x7
	.byte	0x4
	.4byte	0x101
	.byte	0xa
	.byte	0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x3e
	.byte	0x10
	.4byte	0xf5
	.byte	0xb
	.4byte	0x102
	.byte	0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x3f
	.byte	0xf
	.4byte	0x11f
	.byte	0x7
	.byte	0x4
	.4byte	0x125
	.byte	0xc
	.4byte	0x81
	.byte	0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x40
	.byte	0xf
	.4byte	0x136
	.byte	0x7
	.byte	0x4
	.4byte	0x13c
	.byte	0xd
	.4byte	0x81
	.4byte	0x150
	.byte	0x9
	.4byte	0x81
	.byte	0x9
	.4byte	0x150
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xd2
	.byte	0xe
	.4byte	.LASF114
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0x4
	.byte	0x42
	.byte	0x6
	.4byte	0x17b
	.byte	0xf
	.4byte	.LASF21
	.byte	0
	.byte	0xf
	.4byte	.LASF22
	.byte	0x1
	.byte	0xf
	.4byte	.LASF23
	.byte	0x2
	.byte	0
	.byte	0x10
	.4byte	.LASF32
	.2byte	0x2e0
	.byte	0x4
	.byte	0x48
	.byte	0x8
	.4byte	0x1f6
	.byte	0x11
	.4byte	.LASF24
	.byte	0x4
	.byte	0x49
	.byte	0x15
	.4byte	0x156
	.byte	0
	.byte	0x11
	.4byte	.LASF25
	.byte	0x4
	.byte	0x4b
	.byte	0xe
	.4byte	0xac
	.byte	0x2
	.byte	0x11
	.4byte	.LASF26
	.byte	0x4
	.byte	0x4c
	.byte	0xe
	.4byte	0xac
	.byte	0x4
	.byte	0x11
	.4byte	.LASF27
	.byte	0x4
	.byte	0x4d
	.byte	0xa
	.4byte	0x1f6
	.byte	0x6
	.byte	0x12
	.4byte	.LASF28
	.byte	0x4
	.byte	0x4f
	.byte	0xa
	.4byte	0x20c
	.2byte	0x25e
	.byte	0x12
	.4byte	.LASF29
	.byte	0x4
	.byte	0x50
	.byte	0xe
	.4byte	0xac
	.2byte	0x2d6
	.byte	0x12
	.4byte	.LASF30
	.byte	0x4
	.byte	0x51
	.byte	0xe
	.4byte	0xac
	.2byte	0x2d8
	.byte	0x12
	.4byte	.LASF31
	.byte	0x4
	.byte	0x5a
	.byte	0xc
	.4byte	0x228
	.2byte	0x2dc
	.byte	0
	.byte	0x13
	.4byte	0xd8
	.4byte	0x20c
	.byte	0x14
	.4byte	0x99
	.byte	0x4
	.byte	0x14
	.4byte	0x99
	.byte	0x77
	.byte	0
	.byte	0x13
	.4byte	0xd8
	.4byte	0x21c
	.byte	0x14
	.4byte	0x99
	.byte	0x77
	.byte	0
	.byte	0x8
	.4byte	0x228
	.byte	0x9
	.4byte	0xd2
	.byte	0x15
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x21c
	.byte	0x16
	.4byte	.LASF33
	.byte	0x8
	.byte	0x4
	.byte	0x5e
	.byte	0x8
	.4byte	0x256
	.byte	0x11
	.4byte	.LASF34
	.byte	0x4
	.byte	0x5f
	.byte	0x11
	.4byte	0xe4
	.byte	0
	.byte	0x11
	.4byte	.LASF35
	.byte	0x4
	.byte	0x63
	.byte	0x12
	.4byte	0x113
	.byte	0x4
	.byte	0
	.byte	0x5
	.4byte	0x22e
	.byte	0x16
	.4byte	.LASF36
	.byte	0xc
	.byte	0x4
	.byte	0x67
	.byte	0x8
	.4byte	0x290
	.byte	0x11
	.4byte	.LASF34
	.byte	0x4
	.byte	0x68
	.byte	0x11
	.4byte	0xe4
	.byte	0
	.byte	0x11
	.4byte	.LASF37
	.byte	0x4
	.byte	0x6c
	.byte	0xd
	.4byte	0xa0
	.byte	0x4
	.byte	0x17
	.string	"var"
	.byte	0x4
	.byte	0x6d
	.byte	0xb
	.4byte	0xd0
	.byte	0x8
	.byte	0
	.byte	0x18
	.4byte	.LASF38
	.byte	0x1
	.byte	0x1a
	.byte	0x17
	.4byte	0x2a2
	.byte	0x5
	.byte	0x3
	.4byte	_syscall_table_begin
	.byte	0x7
	.byte	0x4
	.4byte	0x22e
	.byte	0x18
	.4byte	.LASF39
	.byte	0x1
	.byte	0x1b
	.byte	0x17
	.4byte	0x2a2
	.byte	0x5
	.byte	0x3
	.4byte	_syscall_table_end
	.byte	0x18
	.4byte	.LASF40
	.byte	0x1
	.byte	0x1c
	.byte	0x16
	.4byte	0x2cc
	.byte	0x5
	.byte	0x3
	.4byte	_sysvar_table_begin
	.byte	0x7
	.byte	0x4
	.4byte	0x25b
	.byte	0x18
	.4byte	.LASF41
	.byte	0x1
	.byte	0x1d
	.byte	0x16
	.4byte	0x2cc
	.byte	0x5
	.byte	0x3
	.4byte	_sysvar_table_end
	.byte	0x18
	.4byte	.LASF42
	.byte	0x1
	.byte	0x1f
	.byte	0xe
	.4byte	0x17b
	.byte	0x5
	.byte	0x3
	.4byte	_shell
	.byte	0x19
	.4byte	.LASF32
	.byte	0x1
	.byte	0x20
	.byte	0x16
	.4byte	0x308
	.byte	0x5
	.byte	0x3
	.4byte	shell
	.byte	0x7
	.byte	0x4
	.4byte	0x17b
	.byte	0x19
	.4byte	.LASF43
	.byte	0x1
	.byte	0x21
	.byte	0xe
	.4byte	0xd2
	.byte	0x5
	.byte	0x3
	.4byte	shell_prompt_custom
	.byte	0x19
	.4byte	.LASF44
	.byte	0x1
	.byte	0x26
	.byte	0x24
	.4byte	0x10e
	.byte	0x5
	.byte	0x3
	.4byte	shell_sig_func
	.byte	0x13
	.4byte	0xdf
	.4byte	0x342
	.byte	0x14
	.4byte	0x99
	.byte	0x4
	.byte	0
	.byte	0x5
	.4byte	0x332
	.byte	0x18
	.4byte	.LASF45
	.byte	0x1
	.byte	0x3e
	.byte	0xc
	.4byte	0x342
	.byte	0x5
	.byte	0x3
	.4byte	__fsym_help_name
	.byte	0x18
	.4byte	.LASF46
	.byte	0x1
	.byte	0x3e
	.byte	0x5a
	.4byte	0x256
	.byte	0x5
	.byte	0x3
	.4byte	__fsym_help
	.byte	0x13
	.4byte	0xdf
	.4byte	0x37b
	.byte	0x14
	.4byte	0x99
	.byte	0x8
	.byte	0
	.byte	0x5
	.4byte	0x36b
	.byte	0x18
	.4byte	.LASF47
	.byte	0x1
	.byte	0x74
	.byte	0xc
	.4byte	0x37b
	.byte	0x5
	.byte	0x3
	.4byte	__fsym_memtrace_name
	.byte	0x18
	.4byte	.LASF48
	.byte	0x1
	.byte	0x74
	.byte	0x62
	.4byte	0x256
	.byte	0x5
	.byte	0x3
	.4byte	__fsym_memtrace
	.byte	0x1a
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x39b
	.byte	0x1c
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x1
	.byte	0x9c
	.4byte	0x3da
	.byte	0x1b
	.string	"cmd"
	.byte	0x1
	.2byte	0x39b
	.byte	0x31
	.4byte	0xd2
	.byte	0x1
	.byte	0x5a
	.byte	0x1c
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x39b
	.byte	0x3f
	.4byte	0xb8
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0x1d
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x397
	.byte	0x1b
	.4byte	0x81
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x1
	.byte	0x9c
	.4byte	0x441
	.byte	0x1e
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x397
	.byte	0x3b
	.4byte	0x12a
	.4byte	.LLST15
	.byte	0x1e
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x397
	.byte	0x45
	.4byte	0x81
	.4byte	.LLST16
	.byte	0x1e
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x397
	.byte	0x51
	.4byte	0x150
	.4byte	.LLST17
	.byte	0x1f
	.4byte	.LVL104
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
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
	.byte	0x5c
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x393
	.byte	0x1c
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x1
	.byte	0x9c
	.4byte	0x468
	.byte	0x1b
	.string	"sig"
	.byte	0x1
	.2byte	0x393
	.byte	0x31
	.4byte	0x81
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x21
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x381
	.byte	0x14
	.4byte	0x102
	.byte	0x1
	.4byte	0x4a2
	.byte	0x22
	.string	"sig"
	.byte	0x1
	.2byte	0x381
	.byte	0x25
	.4byte	0x81
	.byte	0x23
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x381
	.byte	0x3d
	.4byte	0x102
	.byte	0x24
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x383
	.byte	0x18
	.4byte	0x102
	.byte	0
	.byte	0x1a
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x366
	.byte	0x6
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x1
	.byte	0x9c
	.4byte	0x597
	.byte	0x25
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x374
	.byte	0x16
	.4byte	0x88
	.byte	0x25
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x375
	.byte	0x16
	.4byte	0x88
	.byte	0x25
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x376
	.byte	0x16
	.4byte	0x88
	.byte	0x25
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x377
	.byte	0x16
	.4byte	0x88
	.byte	0x26
	.4byte	0x600
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0x1
	.2byte	0x378
	.byte	0x5
	.4byte	0x50d
	.byte	0x27
	.4byte	0x61b
	.byte	0x27
	.4byte	0x60e
	.byte	0
	.byte	0x28
	.4byte	0x5d7
	.4byte	.LBB22
	.4byte	.Ldebug_ranges0+0x28
	.byte	0x1
	.2byte	0x379
	.byte	0x5
	.4byte	0x52d
	.byte	0x27
	.4byte	0x5f2
	.byte	0x27
	.4byte	0x5e5
	.byte	0
	.byte	0x28
	.4byte	0x597
	.4byte	.LBB28
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.2byte	0x37d
	.byte	0x5
	.4byte	0x548
	.byte	0x27
	.4byte	0x5a9
	.byte	0
	.byte	0x29
	.4byte	.LVL90
	.4byte	0x5b7
	.4byte	0x55f
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.byte	0x29
	.4byte	.LVL91
	.4byte	0x16f7
	.4byte	0x576
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x2a
	.4byte	.LVL92
	.4byte	0x124d
	.byte	0x2b
	.4byte	.LVL93
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x2c
	.4byte	.LVL94
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x358
	.byte	0x5
	.4byte	0x81
	.byte	0x1
	.4byte	0x5b7
	.byte	0x23
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x358
	.byte	0x1c
	.4byte	0x228
	.byte	0
	.byte	0x21
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x345
	.byte	0x5
	.4byte	0x81
	.byte	0x1
	.4byte	0x5d7
	.byte	0x23
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x345
	.byte	0x22
	.4byte	0xe4
	.byte	0
	.byte	0x2d
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x33f
	.byte	0xd
	.byte	0x1
	.4byte	0x600
	.byte	0x23
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x33f
	.byte	0x28
	.4byte	0xfb
	.byte	0x22
	.string	"end"
	.byte	0x1
	.2byte	0x33f
	.byte	0x3b
	.4byte	0xfb
	.byte	0
	.byte	0x2d
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x339
	.byte	0xd
	.byte	0x1
	.4byte	0x629
	.byte	0x23
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x339
	.byte	0x2d
	.4byte	0xfb
	.byte	0x22
	.string	"end"
	.byte	0x1
	.2byte	0x339
	.byte	0x40
	.4byte	0xfb
	.byte	0
	.byte	0x1a
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x278
	.byte	0x6
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0xca8
	.byte	0x1e
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x278
	.byte	0x1c
	.4byte	0xa0
	.4byte	.LLST37
	.byte	0x2e
	.4byte	.Ldebug_ranges0+0x108
	.4byte	0x8a7
	.byte	0x2f
	.string	"i"
	.byte	0x1
	.2byte	0x2d6
	.byte	0xd
	.4byte	0x81
	.4byte	.LLST38
	.byte	0x28
	.4byte	0x10b1
	.4byte	.LBB81
	.4byte	.Ldebug_ranges0+0x120
	.byte	0x1
	.2byte	0x2de
	.byte	0x9
	.4byte	0x864
	.byte	0x30
	.4byte	0x10bf
	.4byte	.LLST39
	.byte	0x31
	.4byte	.Ldebug_ranges0+0x120
	.byte	0x32
	.4byte	0x10cc
	.4byte	.LLST40
	.byte	0x32
	.4byte	0x10d9
	.4byte	.LLST41
	.byte	0x32
	.4byte	0x10e6
	.4byte	.LLST42
	.byte	0x32
	.4byte	0x10f3
	.4byte	.LLST43
	.byte	0x32
	.4byte	0x1100
	.4byte	.LLST44
	.byte	0x28
	.4byte	0x1217
	.4byte	.LBB83
	.4byte	.Ldebug_ranges0+0x140
	.byte	0x1
	.2byte	0x172
	.byte	0x1a
	.4byte	0x6f0
	.byte	0x30
	.4byte	0x1234
	.4byte	.LLST45
	.byte	0x30
	.4byte	0x1228
	.4byte	.LLST46
	.byte	0x31
	.4byte	.Ldebug_ranges0+0x140
	.byte	0x32
	.4byte	0x1240
	.4byte	.LLST47
	.byte	0
	.byte	0
	.byte	0x33
	.4byte	.LVL193
	.4byte	0x703
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x33
	.4byte	.LVL195
	.4byte	0x716
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0x33
	.4byte	.LVL196
	.4byte	0x729
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x29
	.4byte	.LVL197
	.4byte	0x1511
	.4byte	0x741
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x29
	.4byte	.LVL203
	.4byte	0x1703
	.4byte	0x761
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x83
	.byte	0x1
	.byte	0
	.byte	0x33
	.4byte	.LVL205
	.4byte	0x774
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.byte	0x2a
	.4byte	.LVL207
	.4byte	0x124d
	.byte	0x34
	.4byte	.LVL208
	.byte	0x2
	.byte	0x83
	.byte	0
	.4byte	0x793
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.byte	0x33
	.4byte	.LVL209
	.4byte	0x7a6
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x33
	.4byte	.LVL210
	.4byte	0x7b9
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x33
	.4byte	.LVL211
	.4byte	0x7d2
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0x33
	.4byte	.LVL212
	.4byte	0x7e5
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x29
	.4byte	.LVL215
	.4byte	0x170f
	.4byte	0x7f9
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.LVL216
	.4byte	0x171b
	.4byte	0x813
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.LVL218
	.4byte	0x170f
	.4byte	0x827
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x33
	.4byte	.LVL228
	.4byte	0x83a
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.byte	0x33
	.4byte	.LVL229
	.4byte	0x853
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x35
	.4byte	.LVL230
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.byte	0
	.byte	0x33
	.4byte	.LVL189
	.4byte	0x877
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x33
	.4byte	.LVL191
	.4byte	0x88a
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC21
	.byte	0
	.byte	0x33
	.4byte	.LVL192
	.4byte	0x89d
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x2a
	.4byte	.LVL198
	.4byte	0x170f
	.byte	0
	.byte	0x36
	.4byte	.LBB92
	.4byte	.LBE92-.LBB92
	.4byte	0x93b
	.byte	0x2f
	.string	"i"
	.byte	0x1
	.2byte	0x2ef
	.byte	0x11
	.4byte	0x81
	.4byte	.LLST48
	.byte	0x2a
	.4byte	.LVL233
	.4byte	0x1727
	.byte	0x33
	.4byte	.LVL234
	.4byte	0x8df
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x33
	.4byte	.LVL235
	.4byte	0x8f2
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC24
	.byte	0
	.byte	0x33
	.4byte	.LVL236
	.4byte	0x905
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x33
	.4byte	.LVL239
	.4byte	0x918
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x33
	.4byte	.LVL240
	.4byte	0x92b
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC21
	.byte	0
	.byte	0x35
	.4byte	.LVL241
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.byte	0x2e
	.4byte	.Ldebug_ranges0+0x180
	.4byte	0x9cb
	.byte	0x2f
	.string	"i"
	.byte	0x1
	.2byte	0x31c
	.byte	0xd
	.4byte	0x81
	.4byte	.LLST50
	.byte	0x2a
	.4byte	.LVL266
	.4byte	0x1727
	.byte	0x33
	.4byte	.LVL267
	.4byte	0x96f
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x33
	.4byte	.LVL268
	.4byte	0x982
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.byte	0x33
	.4byte	.LVL269
	.4byte	0x995
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x33
	.4byte	.LVL274
	.4byte	0x9a8
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x33
	.4byte	.LVL275
	.4byte	0x9bb
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC21
	.byte	0
	.byte	0x35
	.4byte	.LVL276
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	0x110e
	.4byte	.LBB93
	.4byte	.Ldebug_ranges0+0x158
	.byte	0x1
	.2byte	0x306
	.byte	0x9
	.4byte	0xaba
	.byte	0x30
	.4byte	0x111b
	.4byte	.LLST49
	.byte	0x37
	.4byte	0x1127
	.4byte	.LBB95
	.4byte	.LBE95-.LBB95
	.4byte	0xa56
	.byte	0x38
	.4byte	0x1128
	.byte	0x29
	.4byte	.LVL248
	.4byte	0x1733
	.4byte	0xa20
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x82
	.byte	0x88,0x7f
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x78
	.byte	0
	.byte	0x29
	.4byte	.LVL249
	.4byte	0x173f
	.4byte	0xa3f
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x78
	.byte	0
	.byte	0x39
	.4byte	.LVL250
	.4byte	0x1733
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.LVL247
	.4byte	0x174b
	.4byte	0xa76
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x78
	.byte	0
	.byte	0x29
	.4byte	.LVL262
	.4byte	0x173f
	.4byte	0xa8f
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.LVL263
	.4byte	0x1733
	.4byte	0xaa3
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x39
	.4byte	.LVL264
	.4byte	0x174b
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x33
	.4byte	.LVL173
	.4byte	0xac9
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x33
	.4byte	.LVL174
	.4byte	0xadc
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x33
	.4byte	.LVL175
	.4byte	0xaef
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC20
	.byte	0
	.byte	0x33
	.4byte	.LVL176
	.4byte	0xb02
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x29
	.4byte	.LVL179
	.4byte	0x1733
	.4byte	0xb1d
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x79
	.byte	0xde,0x4
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x78
	.byte	0
	.byte	0x2a
	.4byte	.LVL180
	.4byte	0x170f
	.byte	0x3a
	.4byte	.LVL181
	.4byte	0x1136
	.byte	0x33
	.4byte	.LVL182
	.4byte	0xb42
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x33
	.4byte	.LVL183
	.4byte	0xb55
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC21
	.byte	0
	.byte	0x33
	.4byte	.LVL184
	.4byte	0xb68
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x33
	.4byte	.LVL185
	.4byte	0xb7b
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x33
	.4byte	.LVL186
	.4byte	0xb8e
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC22
	.byte	0
	.byte	0x33
	.4byte	.LVL187
	.4byte	0xba1
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x33
	.4byte	.LVL243
	.4byte	0xbb4
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x33
	.4byte	.LVL244
	.4byte	0xbc7
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC25
	.byte	0
	.byte	0x33
	.4byte	.LVL245
	.4byte	0xbda
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x33
	.4byte	.LVL252
	.4byte	0xbed
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x33
	.4byte	.LVL253
	.4byte	0xc00
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0x33
	.4byte	.LVL254
	.4byte	0xc13
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x2a
	.4byte	.LVL255
	.4byte	0xca8
	.byte	0x33
	.4byte	.LVL256
	.4byte	0xc2f
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.byte	0x2a
	.4byte	.LVL257
	.4byte	0x124d
	.byte	0x2b
	.4byte	.LVL258
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x33
	.4byte	.LVL259
	.4byte	0xc53
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x29
	.4byte	.LVL260
	.4byte	0x173f
	.4byte	0xc6c
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x78
	.byte	0
	.byte	0x33
	.4byte	.LVL278
	.4byte	0xc7f
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x33
	.4byte	.LVL279
	.4byte	0xc98
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC22
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x35
	.4byte	.LVL280
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x242
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0xf7a
	.byte	0x3b
	.string	"cmd"
	.byte	0x1
	.2byte	0x242
	.byte	0x16
	.4byte	0xd2
	.4byte	.LLST18
	.byte	0x1e
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x242
	.byte	0x24
	.4byte	0xb8
	.4byte	.LLST19
	.byte	0x24
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x244
	.byte	0x9
	.4byte	0x81
	.byte	0x2e
	.4byte	.Ldebug_ranges0+0xe8
	.4byte	0xd0d
	.byte	0x3c
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x26b
	.byte	0xf
	.4byte	0xd2
	.4byte	.LLST36
	.byte	0
	.byte	0x28
	.4byte	0xf7a
	.4byte	.LBB41
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x1
	.2byte	0x254
	.byte	0x9
	.4byte	0xf3e
	.byte	0x27
	.4byte	0xfa6
	.byte	0x27
	.4byte	0xf99
	.byte	0x27
	.4byte	0xf8c
	.byte	0x31
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x32
	.4byte	0xfb3
	.4byte	.LLST20
	.byte	0x32
	.4byte	0xfc0
	.4byte	.LLST21
	.byte	0x32
	.4byte	0xfcd
	.4byte	.LLST22
	.byte	0x3d
	.4byte	0xfda
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7f
	.byte	0x28
	.4byte	0xffe
	.4byte	.LBB43
	.4byte	.Ldebug_ranges0+0x88
	.byte	0x1
	.2byte	0x1ff
	.byte	0x10
	.4byte	0xdb0
	.byte	0x30
	.4byte	0x101d
	.4byte	.LLST23
	.byte	0x30
	.4byte	0x1010
	.4byte	.LLST24
	.byte	0x31
	.4byte	.Ldebug_ranges0+0x88
	.byte	0x32
	.4byte	0x102a
	.4byte	.LLST25
	.byte	0x32
	.4byte	0x1037
	.4byte	.LLST26
	.byte	0x39
	.4byte	.LVL113
	.4byte	0x171b
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	0x1045
	.4byte	.LBB46
	.4byte	.Ldebug_ranges0+0xa0
	.byte	0x1
	.2byte	0x207
	.byte	0xc
	.4byte	0xeb2
	.byte	0x30
	.4byte	0x1071
	.4byte	.LLST27
	.byte	0x30
	.4byte	0x1064
	.4byte	.LLST28
	.byte	0x30
	.4byte	0x1057
	.4byte	.LLST29
	.byte	0x31
	.4byte	.Ldebug_ranges0+0xa0
	.byte	0x32
	.4byte	0x107e
	.4byte	.LLST30
	.byte	0x32
	.4byte	0x108b
	.4byte	.LLST31
	.byte	0x32
	.4byte	0x1098
	.4byte	.LLST32
	.byte	0x32
	.4byte	0x10a5
	.4byte	.LLST33
	.byte	0x33
	.4byte	.LVL137
	.4byte	0xe1c
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0
	.byte	0x33
	.4byte	.LVL138
	.4byte	0xe2f
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.byte	0x33
	.4byte	.LVL139
	.4byte	0xe42
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x33
	.4byte	.LVL140
	.4byte	0xe55
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0
	.byte	0x33
	.4byte	.LVL142
	.4byte	0xe68
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0
	.byte	0x33
	.4byte	.LVL143
	.4byte	0xe7b
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x33
	.4byte	.LVL144
	.4byte	0xe8e
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0
	.byte	0x33
	.4byte	.LVL145
	.4byte	0xea1
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0x35
	.4byte	.LVL146
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	0x468
	.4byte	.LBB54
	.4byte	.Ldebug_ranges0+0xc8
	.byte	0x1
	.2byte	0x20e
	.byte	0x5
	.4byte	0xee7
	.byte	0x30
	.4byte	0x487
	.4byte	.LLST34
	.byte	0x30
	.4byte	0x47a
	.4byte	.LLST35
	.byte	0x31
	.4byte	.Ldebug_ranges0+0xc8
	.byte	0x3d
	.4byte	0x494
	.byte	0x1
	.byte	0x5e
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.LVL115
	.4byte	0x173f
	.4byte	0xf06
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0x29
	.4byte	.LVL148
	.4byte	0x3a4
	.4byte	0xf20
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x39
	.4byte	.LVL149
	.4byte	0x3da
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x33
	.4byte	.LVL127
	.4byte	0xf51
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0
	.byte	0x33
	.4byte	.LVL128
	.4byte	0xf6a
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x35
	.4byte	.LVL129
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.byte	0x3e
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x1eb
	.byte	0xc
	.4byte	0x81
	.byte	0x1
	.4byte	0xfe8
	.byte	0x22
	.string	"cmd"
	.byte	0x1
	.2byte	0x1eb
	.byte	0x21
	.4byte	0xd2
	.byte	0x23
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x1eb
	.byte	0x2f
	.4byte	0xb8
	.byte	0x23
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x1eb
	.byte	0x3c
	.4byte	0xfe8
	.byte	0x24
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x1ed
	.byte	0x9
	.4byte	0x81
	.byte	0x24
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x1ee
	.byte	0xe
	.4byte	0xb8
	.byte	0x24
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x1ef
	.byte	0x14
	.4byte	0x12a
	.byte	0x24
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x1f0
	.byte	0xb
	.4byte	0xfee
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x81
	.byte	0x13
	.4byte	0xd2
	.4byte	0xffe
	.byte	0x14
	.4byte	0x99
	.byte	0xf
	.byte	0
	.byte	0x3e
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x1d7
	.byte	0x17
	.4byte	0x12a
	.byte	0x1
	.4byte	0x1045
	.byte	0x22
	.string	"cmd"
	.byte	0x1
	.2byte	0x1d7
	.byte	0x2b
	.4byte	0xd2
	.byte	0x23
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x1d7
	.byte	0x34
	.4byte	0x81
	.byte	0x24
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x1d9
	.byte	0x1b
	.4byte	0x2a2
	.byte	0x24
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x1da
	.byte	0x14
	.4byte	0x12a
	.byte	0
	.byte	0x3e
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x187
	.byte	0xc
	.4byte	0x81
	.byte	0x1
	.4byte	0x10b1
	.byte	0x22
	.string	"cmd"
	.byte	0x1
	.2byte	0x187
	.byte	0x1e
	.4byte	0xd2
	.byte	0x23
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x187
	.byte	0x2c
	.4byte	0xb8
	.byte	0x23
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x187
	.byte	0x3a
	.4byte	0x150
	.byte	0x3f
	.string	"ptr"
	.byte	0x1
	.2byte	0x189
	.byte	0xb
	.4byte	0xd2
	.byte	0x24
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x18a
	.byte	0xe
	.4byte	0xb8
	.byte	0x24
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x18b
	.byte	0xe
	.4byte	0xb8
	.byte	0x3f
	.string	"i"
	.byte	0x1
	.2byte	0x18c
	.byte	0xe
	.4byte	0xb8
	.byte	0
	.byte	0x2d
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x13e
	.byte	0xd
	.byte	0x1
	.4byte	0x110e
	.byte	0x23
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x13e
	.byte	0x27
	.4byte	0xd2
	.byte	0x24
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x140
	.byte	0x9
	.4byte	0x81
	.byte	0x24
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x140
	.byte	0x11
	.4byte	0x81
	.byte	0x24
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x141
	.byte	0x11
	.4byte	0xe4
	.byte	0x24
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x141
	.byte	0x1c
	.4byte	0xe4
	.byte	0x24
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x142
	.byte	0x1b
	.4byte	0x2a2
	.byte	0
	.byte	0x40
	.4byte	.LASF87
	.byte	0x1
	.byte	0xa0
	.byte	0xd
	.byte	0x1
	.4byte	0x1136
	.byte	0x41
	.4byte	.LASF32
	.byte	0x1
	.byte	0xa0
	.byte	0x2e
	.4byte	0x308
	.byte	0x42
	.byte	0x43
	.4byte	.LASF79
	.byte	0x1
	.byte	0xa9
	.byte	0x15
	.4byte	0x81
	.byte	0
	.byte	0
	.byte	0x44
	.4byte	.LASF115
	.byte	0x1
	.byte	0x99
	.byte	0xd
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x1217
	.byte	0x45
	.4byte	.LASF32
	.byte	0x1
	.byte	0x99
	.byte	0x30
	.4byte	0x308
	.4byte	.LLST9
	.byte	0x33
	.4byte	.LVL61
	.4byte	0x116f
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x33
	.4byte	.LVL62
	.4byte	0x1182
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.byte	0x33
	.4byte	.LVL63
	.4byte	0x1195
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x33
	.4byte	.LVL64
	.4byte	0x11a8
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.byte	0x2a
	.4byte	.LVL65
	.4byte	0x124d
	.byte	0x34
	.4byte	.LVL66
	.byte	0x2
	.byte	0x84
	.byte	0
	.4byte	0x11c7
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.byte	0x33
	.4byte	.LVL67
	.4byte	0x11da
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x33
	.4byte	.LVL68
	.4byte	0x11ed
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x33
	.4byte	.LVL69
	.4byte	0x1207
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x83
	.byte	0xde,0x4
	.byte	0
	.byte	0x2c
	.4byte	.LVL71
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.byte	0x46
	.4byte	.LASF88
	.byte	0x1
	.byte	0x8d
	.byte	0xc
	.4byte	0x81
	.byte	0x1
	.4byte	0x124d
	.byte	0x41
	.4byte	.LASF89
	.byte	0x1
	.byte	0x8d
	.byte	0x23
	.4byte	0xe4
	.byte	0x41
	.4byte	.LASF90
	.byte	0x1
	.byte	0x8d
	.byte	0x35
	.4byte	0xe4
	.byte	0x47
	.string	"str"
	.byte	0x1
	.byte	0x8f
	.byte	0x11
	.4byte	0xe4
	.byte	0
	.byte	0x48
	.4byte	.LASF92
	.byte	0x1
	.byte	0x76
	.byte	0xe
	.4byte	0xd2
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x12e1
	.byte	0x19
	.4byte	.LASF91
	.byte	0x1
	.byte	0x78
	.byte	0x11
	.4byte	0x12e1
	.byte	0x5
	.byte	0x3
	.4byte	shell_prompt.0
	.byte	0x29
	.4byte	.LVL55
	.4byte	0x1703
	.4byte	0x1290
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR4
	.byte	0
	.byte	0x29
	.4byte	.LVL56
	.4byte	0x16f7
	.4byte	0x12a7
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0x29
	.4byte	.LVL57
	.4byte	0x1757
	.4byte	0x12cd
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR4
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x81
	.byte	0
	.byte	0x39
	.4byte	.LVL58
	.4byte	0x16f7
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	0xd8
	.4byte	0x12f1
	.byte	0x14
	.4byte	0x99
	.byte	0x80
	.byte	0
	.byte	0x49
	.4byte	.LASF93
	.byte	0x1
	.byte	0x40
	.byte	0xc
	.4byte	0x81
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x1511
	.byte	0x45
	.4byte	.LASF50
	.byte	0x1
	.byte	0x40
	.byte	0x1f
	.4byte	0x81
	.4byte	.LLST3
	.byte	0x45
	.4byte	.LASF51
	.byte	0x1
	.byte	0x40
	.byte	0x2c
	.4byte	0x150
	.4byte	.LLST4
	.byte	0x4a
	.4byte	.LASF94
	.byte	0x1
	.byte	0x42
	.byte	0xe
	.4byte	0xb8
	.4byte	.LLST5
	.byte	0x19
	.4byte	.LASF95
	.byte	0x1
	.byte	0x42
	.byte	0x14
	.4byte	0xb8
	.byte	0x1
	.byte	0x5a
	.byte	0x4b
	.string	"i"
	.byte	0x1
	.byte	0x43
	.byte	0x9
	.4byte	0x81
	.4byte	.LLST6
	.byte	0x4b
	.string	"j"
	.byte	0x1
	.byte	0x43
	.byte	0xc
	.4byte	0x81
	.4byte	.LLST7
	.byte	0x36
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.4byte	0x143e
	.byte	0x4a
	.4byte	.LASF96
	.byte	0x1
	.byte	0x56
	.byte	0x12
	.4byte	0xac
	.4byte	.LLST8
	.byte	0x2a
	.4byte	.LVL36
	.4byte	0x1763
	.byte	0x33
	.4byte	.LVL38
	.4byte	0x139e
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x33
	.4byte	.LVL39
	.4byte	0x13bc
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x7
	.byte	0x78
	.byte	0
	.byte	0x32
	.byte	0x24
	.byte	0x82
	.byte	0
	.byte	0x22
	.byte	0
	.byte	0x33
	.4byte	.LVL40
	.4byte	0x13cf
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x33
	.4byte	.LVL41
	.4byte	0x13e2
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x33
	.4byte	.LVL43
	.4byte	0x13f5
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.byte	0x33
	.4byte	.LVL44
	.4byte	0x1408
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x33
	.4byte	.LVL45
	.4byte	0x141b
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x33
	.4byte	.LVL46
	.4byte	0x142e
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0x35
	.4byte	.LVL47
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.byte	0x36
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.4byte	0x1477
	.byte	0x19
	.4byte	.LASF96
	.byte	0x1
	.byte	0x69
	.byte	0x12
	.4byte	0xac
	.byte	0x1
	.byte	0x59
	.byte	0x2a
	.4byte	.LVL50
	.4byte	0x1763
	.byte	0x39
	.4byte	.LVL52
	.4byte	0x176f
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0x33
	.4byte	.LVL18
	.4byte	0x148a
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x33
	.4byte	.LVL19
	.4byte	0x149d
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x33
	.4byte	.LVL20
	.4byte	0x14b0
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x33
	.4byte	.LVL21
	.4byte	0x14c3
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x33
	.4byte	.LVL22
	.4byte	0x14d6
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0x29
	.4byte	.LVL27
	.4byte	0x176f
	.4byte	0x14ee
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x33
	.4byte	.LVL31
	.4byte	0x1501
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x35
	.4byte	.LVL32
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.byte	0
	.byte	0x4c
	.4byte	.LASF97
	.byte	0x1
	.byte	0x28
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x15f6
	.byte	0x45
	.4byte	.LASF50
	.byte	0x1
	.byte	0x28
	.byte	0x14
	.4byte	0x81
	.4byte	.LLST0
	.byte	0x45
	.4byte	.LASF51
	.byte	0x1
	.byte	0x28
	.byte	0x21
	.4byte	0x150
	.4byte	.LLST1
	.byte	0x2e
	.4byte	.Ldebug_ranges0+0
	.4byte	0x1587
	.byte	0x4a
	.4byte	.LASF79
	.byte	0x1
	.byte	0x2c
	.byte	0x1f
	.4byte	0x2a2
	.4byte	.LLST2
	.byte	0x33
	.4byte	.LVL13
	.4byte	0x1577
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x35
	.4byte	.LVL14
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.byte	0x33
	.4byte	.LVL2
	.4byte	0x159a
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x33
	.4byte	.LVL3
	.4byte	0x15ad
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0x33
	.4byte	.LVL4
	.4byte	0x15c0
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x33
	.4byte	.LVL6
	.4byte	0x15d3
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x33
	.4byte	.LVL7
	.4byte	0x15e6
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0x35
	.4byte	.LVL8
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.byte	0x4d
	.4byte	0x5b7
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.4byte	0x16ad
	.byte	0x30
	.4byte	0x5c9
	.4byte	.LLST10
	.byte	0x26
	.4byte	0x5b7
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.byte	0x1
	.2byte	0x345
	.byte	0x5
	.4byte	0x16a3
	.byte	0x30
	.4byte	0x5c9
	.4byte	.LLST11
	.byte	0x29
	.4byte	.LVL76
	.4byte	0x170f
	.4byte	0x1644
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x2a
	.4byte	.LVL77
	.4byte	0x177c
	.byte	0x29
	.4byte	.LVL78
	.4byte	0x170f
	.4byte	0x1661
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.LVL79
	.4byte	0x1703
	.4byte	0x167b
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.LVL80
	.4byte	0x170f
	.4byte	0x168f
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x39
	.4byte	.LVL81
	.4byte	0x16f7
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0
	.byte	0x2a
	.4byte	.LVL74
	.4byte	0x1788
	.byte	0
	.byte	0x4d
	.4byte	0x597
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x1
	.byte	0x9c
	.4byte	0x16ca
	.byte	0x30
	.4byte	0x5a9
	.4byte	.LLST12
	.byte	0
	.byte	0x4d
	.4byte	0x468
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x1
	.byte	0x9c
	.4byte	0x16f7
	.byte	0x30
	.4byte	0x47a
	.4byte	.LLST13
	.byte	0x4e
	.4byte	0x487
	.byte	0x1
	.byte	0x5b
	.byte	0x32
	.4byte	0x494
	.4byte	.LLST14
	.byte	0
	.byte	0x4f
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0x5
	.byte	0xc8
	.byte	0x5
	.byte	0x4f
	.4byte	.LASF99
	.4byte	.LASF99
	.byte	0x6
	.byte	0x74
	.byte	0x8
	.byte	0x4f
	.4byte	.LASF100
	.4byte	.LASF100
	.byte	0x6
	.byte	0x29
	.byte	0x8
	.byte	0x4f
	.4byte	.LASF101
	.4byte	.LASF101
	.byte	0x6
	.byte	0x2b
	.byte	0x5
	.byte	0x4f
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0x6
	.byte	0x20
	.byte	0x8
	.byte	0x4f
	.4byte	.LASF103
	.4byte	.LASF103
	.byte	0x6
	.byte	0x1f
	.byte	0x8
	.byte	0x4f
	.4byte	.LASF104
	.4byte	.LASF104
	.byte	0x6
	.byte	0x21
	.byte	0x8
	.byte	0x4f
	.4byte	.LASF105
	.4byte	.LASF105
	.byte	0x6
	.byte	0x1e
	.byte	0x5
	.byte	0x4f
	.4byte	.LASF106
	.4byte	.LASF106
	.byte	0x6
	.byte	0x73
	.byte	0x8
	.byte	0x4f
	.4byte	.LASF107
	.4byte	.LASF107
	.byte	0x7
	.byte	0x51
	.byte	0x5
	.byte	0x50
	.4byte	.LASF108
	.4byte	.LASF108
	.byte	0x7
	.2byte	0x10d
	.byte	0xb
	.byte	0x4f
	.4byte	.LASF109
	.4byte	.LASF109
	.byte	0x7
	.byte	0x6c
	.byte	0x7
	.byte	0x4f
	.4byte	.LASF110
	.4byte	.LASF110
	.byte	0x7
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
	.byte	0x26
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
	.byte	0x26
	.byte	0
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x35
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
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
	.byte	0xe
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
	.byte	0xf
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0x16
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
	.byte	0x17
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
	.byte	0x3f
	.byte	0x19
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
	.byte	0x1b
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
	.byte	0x1c
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1d
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
	.byte	0x1e
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
	.byte	0x1f
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x93,0x42
	.byte	0x18
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x22
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
	.byte	0x23
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
	.byte	0
	.byte	0
	.byte	0x24
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
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x26
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
	.byte	0x27
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x28
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
	.byte	0x29
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
	.byte	0x2a
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2b
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x93,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x2c
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x2d
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
	.byte	0x2e
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2f
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
	.byte	0x30
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x31
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x32
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x33
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x34
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x93,0x42
	.byte	0x18
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x35
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x36
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
	.byte	0x37
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
	.byte	0x38
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x39
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x3a
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
	.byte	0x3b
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
	.byte	0x3c
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
	.byte	0x3d
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x3e
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
	.byte	0x3f
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
	.byte	0x40
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
	.byte	0x41
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
	.byte	0x42
	.byte	0xb
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x43
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
	.byte	0x44
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
	.byte	0x45
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
	.byte	0x46
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
	.byte	0x47
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
	.byte	0x48
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
	.byte	0x49
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
	.byte	0x96,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x4a
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
	.byte	0x4b
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
	.byte	0x4c
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
	.byte	0x96,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x4d
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
	.byte	0x4e
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x4f
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
	.byte	0x50
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
.LLST15:
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL102
	.4byte	.LVL104-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL104-1
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL101
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL103
	.4byte	.LVL104-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL104-1
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL101
	.4byte	.LVL104-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL104-1
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL171
	.4byte	.LVL172
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL172
	.4byte	.LVL176
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL177
	.4byte	.LVL178
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL271
	.4byte	.LVL272
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL188
	.4byte	.LVL190
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL190
	.4byte	.LVL192
	.2byte	0x3
	.byte	0x83
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL192
	.4byte	.LVL197
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL199
	.4byte	.LVL201
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL194
	.4byte	.LVL197
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL199
	.4byte	.LVL232
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL224
	.4byte	.LVL225
	.2byte	0x6
	.byte	0x7e
	.byte	0
	.byte	0x82
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL225
	.4byte	.LVL227
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL194
	.4byte	.LVL197
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL199
	.4byte	.LVL202
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL202
	.4byte	.LVL206
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL213
	.4byte	.LVL219
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL219
	.4byte	.LVL220
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL220
	.4byte	.LVL232
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL194
	.4byte	.LVL197
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL199
	.4byte	.LVL202
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL202
	.4byte	.LVL204
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL213
	.4byte	.LVL217
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL217
	.4byte	.LVL220
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL220
	.4byte	.LVL232
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL214
	.4byte	.LVL232
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL200
	.4byte	.LVL232
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL220
	.4byte	.LVL221
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL222
	.4byte	.LVL223
	.2byte	0x6
	.byte	0x84
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL223
	.4byte	.LVL224
	.2byte	0x8
	.byte	0x84
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL220
	.4byte	.LVL224
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL220
	.4byte	.LVL221
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL222
	.4byte	.LVL224
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL237
	.4byte	.LVL238
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL238
	.4byte	.LVL241
	.2byte	0x3
	.byte	0x79
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL241
	.4byte	.LVL242
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL270
	.4byte	.LVL271
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL272
	.4byte	.LVL273
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL273
	.4byte	.LVL276
	.2byte	0x3
	.byte	0x79
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL276
	.4byte	.LVL277
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL246
	.4byte	.LVL251
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL261
	.4byte	.LVL265
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL106
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL108
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL151
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0xa
	.byte	0x7a
	.byte	0
	.byte	0x78
	.byte	0
	.byte	0x1c
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL121
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL125
	.4byte	.LVL130
	.2byte	0xb
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x78
	.byte	0
	.byte	0x1c
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL130
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL149
	.4byte	.LVL150
	.2byte	0xb
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x78
	.byte	0
	.byte	0x1c
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL151
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL124
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL169
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL146
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL155
	.4byte	.LVL157
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL110
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL121
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL130
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL151
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL157
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL114
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL132
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL151
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL111
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL130
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL111
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL130
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL112
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL130
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL111
	.4byte	.LVL114
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL130
	.4byte	.LVL132
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL115
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL132
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL151
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL157
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL115
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL132
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL151
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL157
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL115
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL132
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL151
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL157
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL132
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL151
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL157
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL158
	.4byte	.LVL159
	.2byte	0x3
	.byte	0x7f
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL159
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL116
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL132
	.4byte	.LVL137-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL151
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL157
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL154
	.4byte	.LVL155
	.2byte	0x3
	.byte	0x7b
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL157
	.4byte	.LVL163
	.2byte	0x3
	.byte	0x7b
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL164
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL166
	.4byte	.LVL169
	.2byte	0x3
	.byte	0x7b
	.byte	0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL139
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL141
	.4byte	.LVL143
	.2byte	0x3
	.byte	0x86
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL143
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL146
	.4byte	.LVL147
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL146
	.4byte	.LVL147
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL60
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL70
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL37
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL51
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL16
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL18-1
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL26
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL29
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL35
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL34
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL49
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x3
	.byte	0x78
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL40
	.4byte	.LVL48
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL37
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
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
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2-1
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x3
	.byte	0x83
	.byte	0x78
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL73
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL82
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL75
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x3
	.byte	0x7f
	.byte	0xdc,0x5
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL86
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL95
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x5d
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	0
	.4byte	0
	.4byte	.LBB22
	.4byte	.LBE22
	.4byte	.LBB26
	.4byte	.LBE26
	.4byte	.LBB27
	.4byte	.LBE27
	.4byte	0
	.4byte	0
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	.LBB31
	.4byte	.LBE31
	.4byte	0
	.4byte	0
	.4byte	.LBB41
	.4byte	.LBE41
	.4byte	.LBB64
	.4byte	.LBE64
	.4byte	.LBB67
	.4byte	.LBE67
	.4byte	.LBB68
	.4byte	.LBE68
	.4byte	0
	.4byte	0
	.4byte	.LBB43
	.4byte	.LBE43
	.4byte	.LBB52
	.4byte	.LBE52
	.4byte	0
	.4byte	0
	.4byte	.LBB46
	.4byte	.LBE46
	.4byte	.LBB51
	.4byte	.LBE51
	.4byte	.LBB53
	.4byte	.LBE53
	.4byte	.LBB60
	.4byte	.LBE60
	.4byte	0
	.4byte	0
	.4byte	.LBB54
	.4byte	.LBE54
	.4byte	.LBB58
	.4byte	.LBE58
	.4byte	.LBB59
	.4byte	.LBE59
	.4byte	0
	.4byte	0
	.4byte	.LBB65
	.4byte	.LBE65
	.4byte	.LBB66
	.4byte	.LBE66
	.4byte	.LBB69
	.4byte	.LBE69
	.4byte	0
	.4byte	0
	.4byte	.LBB80
	.4byte	.LBE80
	.4byte	.LBB91
	.4byte	.LBE91
	.4byte	0
	.4byte	0
	.4byte	.LBB81
	.4byte	.LBE81
	.4byte	.LBB89
	.4byte	.LBE89
	.4byte	.LBB90
	.4byte	.LBE90
	.4byte	0
	.4byte	0
	.4byte	.LBB83
	.4byte	.LBE83
	.4byte	.LBB86
	.4byte	.LBE86
	.4byte	0
	.4byte	0
	.4byte	.LBB93
	.4byte	.LBE93
	.4byte	.LBB99
	.4byte	.LBE99
	.4byte	.LBB100
	.4byte	.LBE100
	.4byte	.LBB101
	.4byte	.LBE101
	.4byte	0
	.4byte	0
	.4byte	.LBB102
	.4byte	.LBE102
	.4byte	.LBB103
	.4byte	.LBE103
	.4byte	0
	.4byte	0
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF18:
	.string	"shell_sig_func_ptr"
.LASF54:
	.string	"shell_init"
.LASF94:
	.string	"addr"
.LASF65:
	.string	"shell_function_init"
.LASF89:
	.string	"str1"
.LASF61:
	.string	"shell_set_prompt"
.LASF108:
	.string	"strtoll"
.LASF46:
	.string	"__fsym_help"
.LASF111:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF114:
	.string	"input_stat"
.LASF21:
	.string	"WAIT_NORMAL"
.LASF115:
	.string	"shell_handle_history"
.LASF59:
	.string	"shell_signal"
.LASF30:
	.string	"line_curpos"
.LASF109:
	.string	"malloc"
.LASF29:
	.string	"line_position"
.LASF63:
	.string	"begin"
.LASF112:
	.string	"./components/shell/shell.c"
.LASF7:
	.string	"__uint32_t"
.LASF38:
	.string	"_syscall_table_begin"
.LASF4:
	.string	"__uint16_t"
.LASF101:
	.string	"strncmp"
.LASF90:
	.string	"str2"
.LASF25:
	.string	"current_history"
.LASF2:
	.string	"short int"
.LASF95:
	.string	"value"
.LASF37:
	.string	"type"
.LASF36:
	.string	"shell_sysvar"
.LASF79:
	.string	"index"
.LASF53:
	.string	"shell_abort_exec"
.LASF16:
	.string	"uintptr_t"
.LASF27:
	.string	"cmd_history"
.LASF28:
	.string	"line"
.LASF110:
	.string	"free"
.LASF103:
	.string	"memcpy"
.LASF88:
	.string	"str_common"
.LASF82:
	.string	"shell_auto_complete"
.LASF0:
	.string	"signed char"
.LASF56:
	.string	"__fsymtab_end"
.LASF35:
	.string	"func"
.LASF9:
	.string	"long long int"
.LASF80:
	.string	"shell_split"
.LASF104:
	.string	"memset"
.LASF77:
	.string	"shell_get_cmd"
.LASF6:
	.string	"long int"
.LASF23:
	.string	"WAIT_FUNC_KEY"
.LASF98:
	.string	"printf"
.LASF71:
	.string	"cmd_ret"
.LASF32:
	.string	"shell"
.LASF83:
	.string	"prefix"
.LASF97:
	.string	"shell_help"
.LASF84:
	.string	"min_length"
.LASF107:
	.string	"atoi"
.LASF19:
	.string	"syscall_func"
.LASF73:
	.string	"retp"
.LASF34:
	.string	"name"
.LASF49:
	.string	"length"
.LASF106:
	.string	"strlcat"
.LASF102:
	.string	"memmove"
.LASF1:
	.string	"unsigned char"
.LASF91:
	.string	"shell_prompt"
.LASF74:
	.string	"cmd0_size"
.LASF99:
	.string	"strlcpy"
.LASF50:
	.string	"argc"
.LASF42:
	.string	"_shell"
.LASF10:
	.string	"long long unsigned int"
.LASF15:
	.string	"uint32_t"
.LASF47:
	.string	"__fsym_memtrace_name"
.LASF12:
	.string	"unsigned int"
.LASF62:
	.string	"prompt"
.LASF20:
	.string	"cmd_function_t"
.LASF51:
	.string	"argv"
.LASF64:
	.string	"shell_var_init"
.LASF5:
	.string	"short unsigned int"
.LASF70:
	.string	"shell_sig_func_prev"
.LASF75:
	.string	"cmd_func"
.LASF87:
	.string	"shell_push_history"
.LASF17:
	.string	"char"
.LASF14:
	.string	"uint16_t"
.LASF100:
	.string	"strlen"
.LASF48:
	.string	"__fsym_memtrace"
.LASF44:
	.string	"shell_sig_func"
.LASF58:
	.string	"__vsymtab_end"
.LASF105:
	.string	"memcmp"
.LASF69:
	.string	"shell_exec"
.LASF66:
	.string	"shell_handler"
.LASF67:
	.string	"data"
.LASF60:
	.string	"shell_set_print"
.LASF92:
	.string	"shell_get_prompt"
.LASF57:
	.string	"__vsymtab_start"
.LASF86:
	.string	"cmd_name"
.LASF43:
	.string	"shell_prompt_custom"
.LASF93:
	.string	"shell_memtrace"
.LASF8:
	.string	"long unsigned int"
.LASF39:
	.string	"_syscall_table_end"
.LASF33:
	.string	"shell_syscall"
.LASF11:
	.string	"__uintptr_t"
.LASF41:
	.string	"_sysvar_table_end"
.LASF78:
	.string	"size"
.LASF72:
	.string	"tcmd"
.LASF68:
	.string	"shell_start_exec"
.LASF96:
	.string	"count"
.LASF45:
	.string	"__fsym_help_name"
.LASF31:
	.string	"shell_printf"
.LASF13:
	.string	"uint8_t"
.LASF22:
	.string	"WAIT_SPEC_KEY"
.LASF76:
	.string	"shell_exec_cmd"
.LASF85:
	.string	"name_ptr"
.LASF26:
	.string	"history_count"
.LASF81:
	.string	"position"
.LASF24:
	.string	"stat"
.LASF113:
	.string	"./examples/usb_cam_stream/build_wsl/build_out/components/shell"
.LASF52:
	.string	"shell_dup_line"
.LASF40:
	.string	"_sysvar_table_begin"
.LASF55:
	.string	"__fsymtab_start"
.LASF3:
	.string	"__uint8_t"
	.ident	"GCC: (GNU) 10.4.0"
