	.file	"netbuf.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.netbuf_new,"ax",@progbits
	.align	1
	.globl	netbuf_new
	.type	netbuf_new, @function
netbuf_new:
.LFB4:
	.file 1 ".\\components\\net\\lwip\\lwip\\src\\api\\netbuf.c"
	.loc 1 64 1
	.cfi_startproc
	.loc 1 65 3
	.loc 1 67 3
	.loc 1 64 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 67 26
	li	a0,6
	.loc 1 64 1
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 67 26
	call	memp_malloc
.LVL0:
	mv	s0,a0
.LVL1:
	.loc 1 68 3 is_stmt 1
	.loc 1 68 6 is_stmt 0
	beq	a0,zero,.L1
	.loc 1 69 5 is_stmt 1
	li	a2,16
	li	a1,0
	call	memset
.LVL2:
	.loc 1 71 3
.L1:
	.loc 1 72 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	mv	a0,s0
	lw	s0,8(sp)
	.cfi_restore 8
.LVL3:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	netbuf_new, .-netbuf_new
	.section	.text.netbuf_delete,"ax",@progbits
	.align	1
	.globl	netbuf_delete
	.type	netbuf_delete, @function
netbuf_delete:
.LFB5:
	.loc 1 82 1 is_stmt 1
	.cfi_startproc
.LVL4:
	.loc 1 83 3
	.loc 1 83 6 is_stmt 0
	beq	a0,zero,.L7
	mv	a1,a0
	.loc 1 84 5 is_stmt 1
	.loc 1 84 12 is_stmt 0
	lw	a0,0(a0)
.LVL5:
	.loc 1 84 8
	beq	a0,zero,.L14
	.loc 1 82 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	.cfi_offset 1, -4
	sw	a1,12(sp)
	.loc 1 85 7 is_stmt 1
	call	pbuf_free
.LVL6:
	.loc 1 86 7
	.loc 1 86 25 is_stmt 0
	lw	a1,12(sp)
	.loc 1 90 1
	lw	ra,28(sp)
	.cfi_restore 1
	.loc 1 88 5
	li	a0,6
	.loc 1 86 25
	sw	zero,4(a1)
	.loc 1 86 14
	sw	zero,0(a1)
	.loc 1 88 5 is_stmt 1
	.loc 1 90 1 is_stmt 0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL7:
.L17:
	.loc 1 88 5
	tail	memp_free
.LVL8:
.L7:
	ret
.LVL9:
.L14:
	.loc 1 88 5 is_stmt 1
	li	a0,6
	j	.L17
	.cfi_endproc
.LFE5:
	.size	netbuf_delete, .-netbuf_delete
	.section	.rodata.netbuf_alloc.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"netbuf_alloc: invalid buf"
	.section	.text.netbuf_alloc,"ax",@progbits
	.align	1
	.globl	netbuf_alloc
	.type	netbuf_alloc, @function
netbuf_alloc:
.LFB6:
	.loc 1 103 1
	.cfi_startproc
.LVL10:
	.loc 1 104 3
	.loc 1 104 8
	.loc 1 103 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 104 11
	bne	a0,zero,.L19
	.loc 1 104 8 is_stmt 1 discriminator 1
	.loc 1 104 12 discriminator 1
	lui	a0,%hi(.LC0)
.LVL11:
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL12:
	.loc 1 104 56 discriminator 1
	.loc 1 104 61 discriminator 1
	.loc 1 104 2 is_stmt 0 discriminator 1
	li	a0,0
.L18:
	.loc 1 118 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL13:
.L19:
	.cfi_restore_state
	mv	s0,a0
	.loc 1 104 3 is_stmt 1 discriminator 2
	.loc 1 104 12 discriminator 2
	.loc 1 107 3 discriminator 2
	.loc 1 107 10 is_stmt 0 discriminator 2
	lw	a0,0(a0)
.LVL14:
	.loc 1 107 6 discriminator 2
	beq	a0,zero,.L21
	sw	a1,12(sp)
	.loc 1 108 5 is_stmt 1
	call	pbuf_free
.LVL15:
	lw	a1,12(sp)
.L21:
	.loc 1 110 3
	.loc 1 110 12 is_stmt 0
	li	a2,640
	li	a0,442
	call	pbuf_alloc
.LVL16:
	.loc 1 110 10
	sw	a0,0(s0)
	.loc 1 111 3 is_stmt 1
	.loc 1 111 6 is_stmt 0
	beq	a0,zero,.L18
	.loc 1 115 37 is_stmt 1
	.loc 1 116 3
	.loc 1 116 12 is_stmt 0
	sw	a0,4(s0)
	.loc 1 117 3 is_stmt 1
	.loc 1 117 16 is_stmt 0
	lw	a0,4(a0)
	j	.L18
	.cfi_endproc
.LFE6:
	.size	netbuf_alloc, .-netbuf_alloc
	.section	.rodata.netbuf_free.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"netbuf_free: invalid buf"
	.section	.text.netbuf_free,"ax",@progbits
	.align	1
	.globl	netbuf_free
	.type	netbuf_free, @function
netbuf_free:
.LFB7:
	.loc 1 128 1 is_stmt 1
	.cfi_startproc
.LVL17:
	.loc 1 129 3
	.loc 1 129 8
	.loc 1 129 11 is_stmt 0
	bne	a0,zero,.L30
	.loc 1 129 8 is_stmt 1 discriminator 1
	.loc 1 129 12 discriminator 1
	lui	a0,%hi(.LC1)
.LVL18:
	addi	a0,a0,%lo(.LC1)
	tail	printf
.LVL19:
.L30:
	.loc 1 128 1 is_stmt 0 discriminator 2
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	mv	s0,a0
	.loc 1 129 67 is_stmt 1 discriminator 2
	.loc 1 129 76 discriminator 2
	.loc 1 130 3 discriminator 2
	.loc 1 130 10 is_stmt 0 discriminator 2
	lw	a0,0(a0)
.LVL20:
	.loc 1 128 1 discriminator 2
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 130 6 discriminator 2
	beq	a0,zero,.L31
	.loc 1 131 5 is_stmt 1
	call	pbuf_free
.LVL21:
.L31:
	.loc 1 133 3
	.loc 1 138 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 133 21
	sw	zero,4(s0)
	.loc 1 133 10
	sw	zero,0(s0)
	.loc 1 138 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL22:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	netbuf_free, .-netbuf_free
	.section	.rodata.netbuf_ref.str1.4,"aMS",@progbits,1
	.align	2
.LC2:
	.string	"netbuf_ref: invalid buf"
	.section	.text.netbuf_ref,"ax",@progbits
	.align	1
	.globl	netbuf_ref
	.type	netbuf_ref, @function
netbuf_ref:
.LFB8:
	.loc 1 152 1 is_stmt 1
	.cfi_startproc
.LVL23:
	.loc 1 153 3
	.loc 1 153 8
	.loc 1 152 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	s2,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 153 11
	bne	a0,zero,.L38
	.loc 1 153 8 is_stmt 1 discriminator 1
	.loc 1 153 12 discriminator 1
	lui	a0,%hi(.LC2)
.LVL24:
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL25:
	.loc 1 153 54 discriminator 1
	.loc 1 153 59 discriminator 1
	.loc 1 153 66 is_stmt 0 discriminator 1
	li	a0,-16
.L39:
	.loc 1 166 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
	lw	s2,0(sp)
	.cfi_restore 18
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL26:
.L38:
	.cfi_restore_state
	mv	s0,a0
	.loc 1 154 10 discriminator 2
	lw	a0,0(a0)
.LVL27:
	mv	s2,a1
	mv	s1,a2
	.loc 1 153 74 is_stmt 1 discriminator 2
	.loc 1 153 83 discriminator 2
	.loc 1 154 3 discriminator 2
	.loc 1 154 6 is_stmt 0 discriminator 2
	beq	a0,zero,.L40
	.loc 1 155 5 is_stmt 1
	call	pbuf_free
.LVL28:
.L40:
	.loc 1 157 3
	.loc 1 157 12 is_stmt 0
	li	a2,65
	li	a1,0
	li	a0,442
	call	pbuf_alloc
.LVL29:
	.loc 1 157 10
	sw	a0,0(s0)
	.loc 1 158 3 is_stmt 1
	.loc 1 158 6 is_stmt 0
	bne	a0,zero,.L41
	.loc 1 159 5 is_stmt 1
	.loc 1 159 14 is_stmt 0
	sw	zero,4(s0)
	.loc 1 160 5 is_stmt 1
	.loc 1 160 12 is_stmt 0
	li	a0,-1
	j	.L39
.L41:
	.loc 1 162 3 is_stmt 1
	.loc 1 162 40 is_stmt 0
	sw	s2,4(a0)
	.loc 1 163 3 is_stmt 1
	.loc 1 163 33 is_stmt 0
	sh	s1,8(a0)
	.loc 1 163 15
	sh	s1,10(a0)
	.loc 1 164 3 is_stmt 1
	.loc 1 164 12 is_stmt 0
	sw	a0,4(s0)
	.loc 1 165 3 is_stmt 1
	.loc 1 165 10 is_stmt 0
	li	a0,0
	j	.L39
	.cfi_endproc
.LFE8:
	.size	netbuf_ref, .-netbuf_ref
	.section	.rodata.netbuf_chain.str1.4,"aMS",@progbits,1
	.align	2
.LC3:
	.string	"netbuf_chain: invalid head"
	.align	2
.LC4:
	.string	"netbuf_chain: invalid tail"
	.section	.text.netbuf_chain,"ax",@progbits
	.align	1
	.globl	netbuf_chain
	.type	netbuf_chain, @function
netbuf_chain:
.LFB9:
	.loc 1 177 1 is_stmt 1
	.cfi_startproc
.LVL30:
	.loc 1 178 3
	.loc 1 178 8
	.loc 1 178 11 is_stmt 0
	bne	a0,zero,.L47
	.loc 1 178 8 is_stmt 1 discriminator 1
	.loc 1 178 12 discriminator 1
	lui	a0,%hi(.LC3)
.LVL31:
	addi	a0,a0,%lo(.LC3)
.L51:
	.loc 1 179 12 is_stmt 0 discriminator 1
	tail	printf
.LVL32:
.L47:
	.loc 1 178 69 is_stmt 1 discriminator 2
	.loc 1 178 78 discriminator 2
	.loc 1 179 3 discriminator 2
	.loc 1 179 8 discriminator 2
	.loc 1 179 11 is_stmt 0 discriminator 2
	bne	a1,zero,.L48
	.loc 1 179 8 is_stmt 1 discriminator 1
	.loc 1 179 12 discriminator 1
	lui	a0,%hi(.LC4)
.LVL33:
	addi	a0,a0,%lo(.LC4)
	j	.L51
.LVL34:
.L48:
	.loc 1 177 1 is_stmt 0 discriminator 2
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	s1,4(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a0
	.loc 1 179 69 is_stmt 1 discriminator 2
	.loc 1 179 78 discriminator 2
	.loc 1 180 3 discriminator 2
	mv	s1,a1
	lw	a0,0(a0)
.LVL35:
	lw	a1,0(a1)
.LVL36:
	.loc 1 177 1 is_stmt 0 discriminator 2
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 180 3 discriminator 2
	call	pbuf_cat
.LVL37:
	.loc 1 181 3 is_stmt 1 discriminator 2
	.loc 1 181 13 is_stmt 0 discriminator 2
	lw	a5,0(s0)
	.loc 1 183 1 discriminator 2
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 182 3 discriminator 2
	mv	a1,s1
	.loc 1 181 13 discriminator 2
	sw	a5,4(s0)
	.loc 1 182 3 is_stmt 1 discriminator 2
	.loc 1 183 1 is_stmt 0 discriminator 2
	lw	s0,8(sp)
	.cfi_restore 8
.LVL38:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL39:
	.loc 1 182 3 discriminator 2
	li	a0,6
	.loc 1 183 1 discriminator 2
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 182 3 discriminator 2
	tail	memp_free
.LVL40:
	.cfi_endproc
.LFE9:
	.size	netbuf_chain, .-netbuf_chain
	.section	.rodata.netbuf_data.str1.4,"aMS",@progbits,1
	.align	2
.LC5:
	.string	"netbuf_data: invalid buf"
	.align	2
.LC6:
	.string	"netbuf_data: invalid dataptr"
	.align	2
.LC7:
	.string	"netbuf_data: invalid len"
	.section	.text.netbuf_data,"ax",@progbits
	.align	1
	.globl	netbuf_data
	.type	netbuf_data, @function
netbuf_data:
.LFB10:
	.loc 1 197 1 is_stmt 1
	.cfi_startproc
.LVL41:
	.loc 1 198 3
	.loc 1 198 8
	.loc 1 197 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 198 11
	bne	a0,zero,.L53
	.loc 1 198 8 is_stmt 1 discriminator 1
	.loc 1 198 12 discriminator 1
	lui	a0,%hi(.LC5)
.LVL42:
	addi	a0,a0,%lo(.LC5)
.L59:
	.loc 1 199 12 is_stmt 0 discriminator 1
	call	printf
.LVL43:
	.loc 1 199 59 is_stmt 1 discriminator 1
	.loc 1 199 64 discriminator 1
	.loc 1 199 71 is_stmt 0 discriminator 1
	li	a5,-16
.L54:
	.loc 1 208 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL44:
.L53:
	.cfi_restore_state
	.loc 1 198 75 is_stmt 1 discriminator 2
	.loc 1 198 84 discriminator 2
	.loc 1 199 3 discriminator 2
	.loc 1 199 8 discriminator 2
	.loc 1 199 11 is_stmt 0 discriminator 2
	bne	a1,zero,.L55
	.loc 1 199 8 is_stmt 1 discriminator 1
	.loc 1 199 12 discriminator 1
	lui	a0,%hi(.LC6)
.LVL45:
	addi	a0,a0,%lo(.LC6)
	j	.L59
.LVL46:
.L55:
	.loc 1 199 79 discriminator 2
	.loc 1 199 88 discriminator 2
	.loc 1 200 3 discriminator 2
	.loc 1 200 8 discriminator 2
	.loc 1 200 11 is_stmt 0 discriminator 2
	bne	a2,zero,.L56
	.loc 1 200 8 is_stmt 1 discriminator 1
	.loc 1 200 12 discriminator 1
	lui	a0,%hi(.LC7)
.LVL47:
	addi	a0,a0,%lo(.LC7)
	j	.L59
.LVL48:
.L56:
	.loc 1 200 75 discriminator 2
	.loc 1 200 84 discriminator 2
	.loc 1 202 3 discriminator 2
	.loc 1 202 10 is_stmt 0 discriminator 2
	lw	a4,4(a0)
	.loc 1 203 12 discriminator 2
	li	a5,-2
	.loc 1 202 6 discriminator 2
	beq	a4,zero,.L54
	.loc 1 205 3 is_stmt 1
	.loc 1 205 22 is_stmt 0
	lw	a5,4(a4)
	.loc 1 205 12
	sw	a5,0(a1)
	.loc 1 206 3 is_stmt 1
	.loc 1 206 18 is_stmt 0
	lw	a5,4(a0)
	lhu	a5,10(a5)
	.loc 1 206 8
	sh	a5,0(a2)
	.loc 1 207 3 is_stmt 1
	.loc 1 207 10 is_stmt 0
	li	a5,0
	j	.L54
	.cfi_endproc
.LFE10:
	.size	netbuf_data, .-netbuf_data
	.section	.rodata.netbuf_next.str1.4,"aMS",@progbits,1
	.align	2
.LC8:
	.string	"netbuf_next: invalid buf"
	.section	.text.netbuf_next,"ax",@progbits
	.align	1
	.globl	netbuf_next
	.type	netbuf_next, @function
netbuf_next:
.LFB11:
	.loc 1 223 1 is_stmt 1
	.cfi_startproc
.LVL49:
	.loc 1 224 3
	.loc 1 224 8
	.loc 1 224 11 is_stmt 0
	bne	a0,zero,.L61
	.loc 1 224 8 is_stmt 1 discriminator 1
	.loc 1 224 12 discriminator 1
	lui	a0,%hi(.LC8)
.LVL50:
	.loc 1 223 1 is_stmt 0 discriminator 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 224 12 discriminator 1
	addi	a0,a0,%lo(.LC8)
	.loc 1 223 1 discriminator 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 224 12 discriminator 1
	call	printf
.LVL51:
	.loc 1 224 55 is_stmt 1 discriminator 1
	.loc 1 224 60 discriminator 1
	.loc 1 233 1 is_stmt 0 discriminator 1
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 224 67 discriminator 1
	li	a5,-1
	.loc 1 233 1 discriminator 1
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL52:
.L61:
	.loc 1 224 70 is_stmt 1 discriminator 2
	.loc 1 224 79 discriminator 2
	.loc 1 225 3 discriminator 2
	.loc 1 225 15 is_stmt 0 discriminator 2
	lw	a5,4(a0)
	lw	a4,0(a5)
	.loc 1 226 12 discriminator 2
	li	a5,-1
	.loc 1 225 6 discriminator 2
	beq	a4,zero,.L65
	.loc 1 228 3 is_stmt 1
	.loc 1 229 6 is_stmt 0
	lw	a5,0(a4)
	.loc 1 228 12
	sw	a4,4(a0)
	.loc 1 229 3 is_stmt 1
	.loc 1 224 67 is_stmt 0
	seqz	a5,a5
.L65:
	.loc 1 233 1
	mv	a0,a5
.LVL53:
	ret
	.cfi_endproc
.LFE11:
	.size	netbuf_next, .-netbuf_next
	.section	.rodata.netbuf_first.str1.4,"aMS",@progbits,1
	.align	2
.LC9:
	.string	"netbuf_first: invalid buf"
	.section	.text.netbuf_first,"ax",@progbits
	.align	1
	.globl	netbuf_first
	.type	netbuf_first, @function
netbuf_first:
.LFB12:
	.loc 1 245 1 is_stmt 1
	.cfi_startproc
.LVL54:
	.loc 1 246 3
	.loc 1 246 8
	.loc 1 246 11 is_stmt 0
	bne	a0,zero,.L69
	.loc 1 246 8 is_stmt 1 discriminator 1
	.loc 1 246 12 discriminator 1
	lui	a0,%hi(.LC9)
.LVL55:
	addi	a0,a0,%lo(.LC9)
	tail	printf
.LVL56:
.L69:
	.loc 1 246 68 discriminator 2
	.loc 1 246 77 discriminator 2
	.loc 1 247 3 discriminator 2
	.loc 1 247 12 is_stmt 0 discriminator 2
	lw	a5,0(a0)
	sw	a5,4(a0)
	.loc 1 248 1 discriminator 2
	ret
	.cfi_endproc
.LFE12:
	.size	netbuf_first, .-netbuf_first
	.text
.Letext0:
	.file 2 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\machine\\_default_types.h"
	.file 3 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\sys\\_stdint.h"
	.file 4 ".\\components\\net\\lwip\\lwip\\src\\include/lwip/arch.h"
	.file 5 ".\\components\\net\\lwip\\lwip\\src\\include/lwip/err.h"
	.file 6 ".\\components\\net\\lwip\\lwip\\src\\include/lwip/pbuf.h"
	.file 7 ".\\components\\net\\lwip\\lwip\\src\\include/lwip/ip4_addr.h"
	.file 8 ".\\components\\net\\lwip\\lwip\\src\\include/lwip/ip_addr.h"
	.file 9 ".\\components\\net\\lwip\\lwip\\src\\include/lwip/netbuf.h"
	.file 10 ".\\components\\net\\lwip\\lwip\\src\\include/lwip/memp.h"
	.file 11 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\stdio.h"
	.file 12 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x6c4
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF97
	.byte	0xc
	.4byte	.LASF98
	.4byte	.LASF99
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF1
	.byte	0x2
	.byte	0x29
	.byte	0x15
	.4byte	0x38
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x4b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.byte	0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x65
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.byte	0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x7f
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
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.byte	0x5
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.byte	0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x14
	.byte	0x12
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x3f
	.byte	0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x59
	.byte	0x3
	.4byte	.LASF17
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x73
	.byte	0x6
	.byte	0x4
	.4byte	0xda
	.byte	0x7
	.byte	0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x7d
	.byte	0x11
	.4byte	0xb0
	.byte	0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x7e
	.byte	0x10
	.4byte	0xa4
	.byte	0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x7f
	.byte	0x12
	.4byte	0xbc
	.byte	0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0x81
	.byte	0x12
	.4byte	0xc8
	.byte	0x8
	.byte	0x5
	.byte	0x1
	.4byte	0x38
	.byte	0x5
	.byte	0x35
	.byte	0xe
	.4byte	0x180
	.byte	0x9
	.4byte	.LASF22
	.byte	0
	.byte	0xa
	.4byte	.LASF23
	.byte	0x7f
	.byte	0xa
	.4byte	.LASF24
	.byte	0x7e
	.byte	0xa
	.4byte	.LASF25
	.byte	0x7d
	.byte	0xa
	.4byte	.LASF26
	.byte	0x7c
	.byte	0xa
	.4byte	.LASF27
	.byte	0x7b
	.byte	0xa
	.4byte	.LASF28
	.byte	0x7a
	.byte	0xa
	.4byte	.LASF29
	.byte	0x79
	.byte	0xa
	.4byte	.LASF30
	.byte	0x78
	.byte	0xa
	.4byte	.LASF31
	.byte	0x77
	.byte	0xa
	.4byte	.LASF32
	.byte	0x76
	.byte	0xa
	.4byte	.LASF33
	.byte	0x75
	.byte	0xa
	.4byte	.LASF34
	.byte	0x74
	.byte	0xa
	.4byte	.LASF35
	.byte	0x73
	.byte	0xa
	.4byte	.LASF36
	.byte	0x72
	.byte	0xa
	.4byte	.LASF37
	.byte	0x71
	.byte	0xa
	.4byte	.LASF38
	.byte	0x70
	.byte	0
	.byte	0x3
	.4byte	.LASF39
	.byte	0x5
	.byte	0x60
	.byte	0xe
	.4byte	0xe7
	.byte	0x8
	.byte	0x7
	.byte	0x2
	.4byte	0x65
	.byte	0x6
	.byte	0x59
	.byte	0xe
	.4byte	0x1bd
	.byte	0xb
	.4byte	.LASF40
	.2byte	0x1ba
	.byte	0xb
	.4byte	.LASF41
	.2byte	0x1a6
	.byte	0xb
	.4byte	.LASF42
	.2byte	0x192
	.byte	0xb
	.4byte	.LASF43
	.2byte	0x184
	.byte	0x9
	.4byte	.LASF44
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x7
	.byte	0x2
	.4byte	0x65
	.byte	0x6
	.byte	0x91
	.byte	0xe
	.4byte	0x1e6
	.byte	0xb
	.4byte	.LASF45
	.2byte	0x280
	.byte	0x9
	.4byte	.LASF46
	.byte	0x1
	.byte	0x9
	.4byte	.LASF47
	.byte	0x41
	.byte	0xb
	.4byte	.LASF48
	.2byte	0x182
	.byte	0
	.byte	0xc
	.4byte	.LASF55
	.byte	0x10
	.byte	0x6
	.byte	0xba
	.byte	0x8
	.4byte	0x25c
	.byte	0xd
	.4byte	.LASF49
	.byte	0x6
	.byte	0xbc
	.byte	0x10
	.4byte	0x25c
	.byte	0
	.byte	0xd
	.4byte	.LASF50
	.byte	0x6
	.byte	0xbf
	.byte	0x9
	.4byte	0x9b
	.byte	0x4
	.byte	0xd
	.4byte	.LASF51
	.byte	0x6
	.byte	0xc8
	.byte	0x9
	.4byte	0xf3
	.byte	0x8
	.byte	0xe
	.string	"len"
	.byte	0x6
	.byte	0xcb
	.byte	0x9
	.4byte	0xf3
	.byte	0xa
	.byte	0xd
	.4byte	.LASF52
	.byte	0x6
	.byte	0xd0
	.byte	0x8
	.4byte	0xdb
	.byte	0xc
	.byte	0xd
	.4byte	.LASF53
	.byte	0x6
	.byte	0xd3
	.byte	0x8
	.4byte	0xdb
	.byte	0xd
	.byte	0xe
	.string	"ref"
	.byte	0x6
	.byte	0xda
	.byte	0x8
	.4byte	0xdb
	.byte	0xe
	.byte	0xd
	.4byte	.LASF54
	.byte	0x6
	.byte	0xdd
	.byte	0x8
	.4byte	0xdb
	.byte	0xf
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x1e6
	.byte	0xc
	.4byte	.LASF56
	.byte	0x8
	.byte	0x6
	.byte	0xe8
	.byte	0x8
	.4byte	0x28a
	.byte	0xd
	.4byte	.LASF49
	.byte	0x6
	.byte	0xea
	.byte	0x10
	.4byte	0x25c
	.byte	0
	.byte	0xd
	.4byte	.LASF50
	.byte	0x6
	.byte	0xed
	.byte	0xf
	.4byte	0xd4
	.byte	0x4
	.byte	0
	.byte	0xc
	.4byte	.LASF57
	.byte	0x4
	.byte	0x7
	.byte	0x33
	.byte	0x8
	.4byte	0x2a5
	.byte	0xd
	.4byte	.LASF58
	.byte	0x7
	.byte	0x34
	.byte	0x9
	.4byte	0xff
	.byte	0
	.byte	0
	.byte	0x3
	.4byte	.LASF59
	.byte	0x7
	.byte	0x39
	.byte	0x19
	.4byte	0x28a
	.byte	0xf
	.4byte	.LASF60
	.byte	0x8
	.2byte	0x126
	.byte	0x14
	.4byte	0x2a5
	.byte	0xc
	.4byte	.LASF61
	.byte	0x10
	.byte	0x9
	.byte	0x3c
	.byte	0x8
	.4byte	0x2fe
	.byte	0xe
	.string	"p"
	.byte	0x9
	.byte	0x3d
	.byte	0x10
	.4byte	0x25c
	.byte	0
	.byte	0xe
	.string	"ptr"
	.byte	0x9
	.byte	0x3d
	.byte	0x14
	.4byte	0x25c
	.byte	0x4
	.byte	0xd
	.4byte	.LASF58
	.byte	0x9
	.byte	0x3e
	.byte	0xd
	.4byte	0x2b1
	.byte	0x8
	.byte	0xd
	.4byte	.LASF62
	.byte	0x9
	.byte	0x3f
	.byte	0x9
	.4byte	0xf3
	.byte	0xc
	.byte	0
	.byte	0x8
	.byte	0x7
	.byte	0x1
	.4byte	0x4b
	.byte	0xa
	.byte	0x34
	.byte	0xe
	.4byte	0x361
	.byte	0x9
	.4byte	.LASF63
	.byte	0
	.byte	0x9
	.4byte	.LASF64
	.byte	0x1
	.byte	0x9
	.4byte	.LASF65
	.byte	0x2
	.byte	0x9
	.4byte	.LASF66
	.byte	0x3
	.byte	0x9
	.4byte	.LASF67
	.byte	0x4
	.byte	0x9
	.4byte	.LASF68
	.byte	0x5
	.byte	0x9
	.4byte	.LASF69
	.byte	0x6
	.byte	0x9
	.4byte	.LASF70
	.byte	0x7
	.byte	0x9
	.4byte	.LASF71
	.byte	0x8
	.byte	0x9
	.4byte	.LASF72
	.byte	0x9
	.byte	0x9
	.4byte	.LASF73
	.byte	0xa
	.byte	0x9
	.4byte	.LASF74
	.byte	0xb
	.byte	0x9
	.4byte	.LASF75
	.byte	0xc
	.byte	0x9
	.4byte	.LASF76
	.byte	0xd
	.byte	0
	.byte	0x10
	.4byte	.LASF80
	.byte	0x1
	.byte	0xf4
	.byte	0x1
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x39b
	.byte	0x11
	.string	"buf"
	.byte	0x1
	.byte	0xf4
	.byte	0x1d
	.4byte	0x39b
	.4byte	.LLST14
	.byte	0x12
	.4byte	.LVL56
	.4byte	0x670
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x2be
	.byte	0x14
	.4byte	.LASF77
	.byte	0x1
	.byte	0xde
	.byte	0x1
	.4byte	0xe7
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x3df
	.byte	0x11
	.string	"buf"
	.byte	0x1
	.byte	0xde
	.byte	0x1c
	.4byte	0x39b
	.4byte	.LLST13
	.byte	0x15
	.4byte	.LVL51
	.4byte	0x670
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LASF78
	.byte	0x1
	.byte	0xc4
	.byte	0x1
	.4byte	0x180
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x433
	.byte	0x11
	.string	"buf"
	.byte	0x1
	.byte	0xc4
	.byte	0x1c
	.4byte	0x39b
	.4byte	.LLST10
	.byte	0x16
	.4byte	.LASF79
	.byte	0x1
	.byte	0xc4
	.byte	0x28
	.4byte	0x433
	.4byte	.LLST11
	.byte	0x11
	.string	"len"
	.byte	0x1
	.byte	0xc4
	.byte	0x38
	.4byte	0x439
	.4byte	.LLST12
	.byte	0x17
	.4byte	.LVL43
	.4byte	0x670
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x9b
	.byte	0x6
	.byte	0x4
	.4byte	0xf3
	.byte	0x10
	.4byte	.LASF81
	.byte	0x1
	.byte	0xb0
	.byte	0x1
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x49e
	.byte	0x16
	.4byte	.LASF82
	.byte	0x1
	.byte	0xb0
	.byte	0x1d
	.4byte	0x39b
	.4byte	.LLST8
	.byte	0x16
	.4byte	.LASF83
	.byte	0x1
	.byte	0xb0
	.byte	0x32
	.4byte	0x39b
	.4byte	.LLST9
	.byte	0x18
	.4byte	.LVL32
	.4byte	0x670
	.byte	0x17
	.4byte	.LVL37
	.4byte	0x67c
	.byte	0x12
	.4byte	.LVL40
	.4byte	0x689
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x36
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LASF84
	.byte	0x1
	.byte	0x97
	.byte	0x1
	.4byte	0x180
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x525
	.byte	0x11
	.string	"buf"
	.byte	0x1
	.byte	0x97
	.byte	0x1b
	.4byte	0x39b
	.4byte	.LLST5
	.byte	0x16
	.4byte	.LASF79
	.byte	0x1
	.byte	0x97
	.byte	0x2c
	.4byte	0xd4
	.4byte	.LLST6
	.byte	0x16
	.4byte	.LASF85
	.byte	0x1
	.byte	0x97
	.byte	0x3b
	.4byte	0xf3
	.4byte	.LLST7
	.byte	0x19
	.4byte	.LVL25
	.4byte	0x670
	.4byte	0x4ff
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x17
	.4byte	.LVL28
	.4byte	0x695
	.byte	0x15
	.4byte	.LVL29
	.4byte	0x6a2
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x1ba
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x41
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LASF86
	.byte	0x1
	.byte	0x7f
	.byte	0x1
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x56c
	.byte	0x11
	.string	"buf"
	.byte	0x1
	.byte	0x7f
	.byte	0x1c
	.4byte	0x39b
	.4byte	.LLST4
	.byte	0x1a
	.4byte	.LVL19
	.4byte	0x670
	.4byte	0x562
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0x17
	.4byte	.LVL21
	.4byte	0x695
	.byte	0
	.byte	0x14
	.4byte	.LASF87
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.4byte	0x9b
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x5df
	.byte	0x11
	.string	"buf"
	.byte	0x1
	.byte	0x66
	.byte	0x1d
	.4byte	0x39b
	.4byte	.LLST2
	.byte	0x16
	.4byte	.LASF85
	.byte	0x1
	.byte	0x66
	.byte	0x28
	.4byte	0xf3
	.4byte	.LLST3
	.byte	0x19
	.4byte	.LVL12
	.4byte	0x670
	.4byte	0x5bd
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x17
	.4byte	.LVL15
	.4byte	0x695
	.byte	0x15
	.4byte	.LVL16
	.4byte	0x6a2
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x1ba
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x280
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LASF88
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x618
	.byte	0x11
	.string	"buf"
	.byte	0x1
	.byte	0x51
	.byte	0x1e
	.4byte	0x39b
	.4byte	.LLST1
	.byte	0x17
	.4byte	.LVL6
	.4byte	0x695
	.byte	0x18
	.4byte	.LVL8
	.4byte	0x689
	.byte	0
	.byte	0x14
	.4byte	.LASF89
	.byte	0x1
	.byte	0x3f
	.byte	0x9
	.4byte	0x39b
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x670
	.byte	0x1b
	.string	"buf"
	.byte	0x1
	.byte	0x41
	.byte	0x12
	.4byte	0x39b
	.4byte	.LLST0
	.byte	0x19
	.4byte	.LVL0
	.4byte	0x6af
	.4byte	0x655
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x36
	.byte	0
	.byte	0x15
	.4byte	.LVL2
	.4byte	0x6bb
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LASF90
	.4byte	.LASF90
	.byte	0xb
	.byte	0xc8
	.byte	0x5
	.byte	0x1d
	.4byte	.LASF91
	.4byte	.LASF91
	.byte	0x6
	.2byte	0x127
	.byte	0x6
	.byte	0x1c
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0xa
	.byte	0x95
	.byte	0x6
	.byte	0x1d
	.4byte	.LASF93
	.4byte	.LASF93
	.byte	0x6
	.2byte	0x125
	.byte	0x6
	.byte	0x1d
	.4byte	.LASF94
	.4byte	.LASF94
	.byte	0x6
	.2byte	0x113
	.byte	0xe
	.byte	0x1c
	.4byte	.LASF95
	.4byte	.LASF95
	.byte	0xa
	.byte	0x93
	.byte	0x7
	.byte	0x1c
	.4byte	.LASF96
	.4byte	.LASF96
	.byte	0xc
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x26
	.byte	0
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
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0x5
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
	.byte	0x12
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
	.byte	0x15
	.byte	0x89,0x82,0x1
	.byte	0x1
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
	.byte	0x17
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
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
	.byte	0x19
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
	.byte	0x1a
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1b
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
	.byte	0x1c
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
	.byte	0x1d
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
.LLST14:
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL53
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL41
	.4byte	.LVL43-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL43-1
	.4byte	.LVL44
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL41
	.4byte	.LVL43-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL43-1
	.4byte	.LVL44
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL35
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL38
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL30
	.4byte	.LVL32-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL32-1
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL36
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL39
	.4byte	.LVL40-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL40-1
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL27
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL23
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL25-1
	.4byte	.LVL26
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL28-1
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL23
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL25-1
	.4byte	.LVL26
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL28-1
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL22
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL10
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL12-1
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL15-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL6-1
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL3
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x5c
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
.LASF74:
	.string	"MEMP_PBUF"
.LASF93:
	.string	"pbuf_free"
.LASF58:
	.string	"addr"
.LASF92:
	.string	"memp_free"
.LASF78:
	.string	"netbuf_data"
.LASF14:
	.string	"int8_t"
.LASF87:
	.string	"netbuf_alloc"
.LASF35:
	.string	"ERR_ABRT"
.LASF23:
	.string	"ERR_MEM"
.LASF32:
	.string	"ERR_ISCONN"
.LASF4:
	.string	"short int"
.LASF69:
	.string	"MEMP_NETBUF"
.LASF67:
	.string	"MEMP_TCP_SEG"
.LASF37:
	.string	"ERR_CLSD"
.LASF8:
	.string	"__uint32_t"
.LASF5:
	.string	"__uint16_t"
.LASF72:
	.string	"MEMP_SYS_TIMEOUT"
.LASF82:
	.string	"head"
.LASF45:
	.string	"PBUF_RAM"
.LASF66:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF36:
	.string	"ERR_RST"
.LASF44:
	.string	"PBUF_RAW"
.LASF27:
	.string	"ERR_INPROGRESS"
.LASF73:
	.string	"MEMP_NETDB"
.LASF56:
	.string	"pbuf_rom"
.LASF19:
	.string	"s8_t"
.LASF10:
	.string	"long long int"
.LASF77:
	.string	"netbuf_next"
.LASF84:
	.string	"netbuf_ref"
.LASF61:
	.string	"netbuf"
.LASF96:
	.string	"memset"
.LASF25:
	.string	"ERR_TIMEOUT"
.LASF7:
	.string	"long int"
.LASF60:
	.string	"ip_addr_t"
.LASF90:
	.string	"printf"
.LASF31:
	.string	"ERR_ALREADY"
.LASF52:
	.string	"type_internal"
.LASF91:
	.string	"pbuf_cat"
.LASF3:
	.string	"unsigned char"
.LASF83:
	.string	"tail"
.LASF26:
	.string	"ERR_RTE"
.LASF33:
	.string	"ERR_CONN"
.LASF76:
	.string	"MEMP_MAX"
.LASF54:
	.string	"if_idx"
.LASF0:
	.string	"signed char"
.LASF53:
	.string	"flags"
.LASF11:
	.string	"long long unsigned int"
.LASF17:
	.string	"uint32_t"
.LASF12:
	.string	"unsigned int"
.LASF16:
	.string	"uint16_t"
.LASF34:
	.string	"ERR_IF"
.LASF24:
	.string	"ERR_BUF"
.LASF99:
	.string	"C:\\\\Users\\\\cwier\\\\Documents\\\\GitHub\\\\qcom\\\\examples\\\\solutions\\\\rtsp_softap_cam\\\\build\\\\build_out\\\\components\\\\net\\\\lwip\\\\lwip"
.LASF48:
	.string	"PBUF_POOL"
.LASF68:
	.string	"MEMP_REASSDATA"
.LASF1:
	.string	"__int8_t"
.LASF86:
	.string	"netbuf_free"
.LASF39:
	.string	"err_t"
.LASF13:
	.string	"char"
.LASF43:
	.string	"PBUF_RAW_TX"
.LASF71:
	.string	"MEMP_TCPIP_MSG_API"
.LASF6:
	.string	"short unsigned int"
.LASF94:
	.string	"pbuf_alloc"
.LASF57:
	.string	"ip4_addr"
.LASF29:
	.string	"ERR_WOULDBLOCK"
.LASF81:
	.string	"netbuf_chain"
.LASF40:
	.string	"PBUF_TRANSPORT"
.LASF41:
	.string	"PBUF_IP"
.LASF62:
	.string	"port"
.LASF97:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF80:
	.string	"netbuf_first"
.LASF9:
	.string	"long unsigned int"
.LASF63:
	.string	"MEMP_RAW_PCB"
.LASF59:
	.string	"ip4_addr_t"
.LASF85:
	.string	"size"
.LASF88:
	.string	"netbuf_delete"
.LASF22:
	.string	"ERR_OK"
.LASF18:
	.string	"u8_t"
.LASF21:
	.string	"u32_t"
.LASF15:
	.string	"uint8_t"
.LASF20:
	.string	"u16_t"
.LASF75:
	.string	"MEMP_PBUF_POOL"
.LASF30:
	.string	"ERR_USE"
.LASF89:
	.string	"netbuf_new"
.LASF70:
	.string	"MEMP_NETCONN"
.LASF79:
	.string	"dataptr"
.LASF51:
	.string	"tot_len"
.LASF65:
	.string	"MEMP_TCP_PCB"
.LASF38:
	.string	"ERR_ARG"
.LASF95:
	.string	"memp_malloc"
.LASF64:
	.string	"MEMP_UDP_PCB"
.LASF47:
	.string	"PBUF_REF"
.LASF98:
	.string	".\\components\\net\\lwip\\lwip\\src\\api\\netbuf.c"
.LASF28:
	.string	"ERR_VAL"
.LASF46:
	.string	"PBUF_ROM"
.LASF50:
	.string	"payload"
.LASF49:
	.string	"next"
.LASF2:
	.string	"__uint8_t"
.LASF55:
	.string	"pbuf"
.LASF42:
	.string	"PBUF_LINK"
	.ident	"GCC: (GNU) 10.4.0"
