	.file	"memp.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.do_memp_malloc_pool,"ax",@progbits
	.align	1
	.type	do_memp_malloc_pool, @function
do_memp_malloc_pool:
.LFB7:
	.file 1 ".\\components\\net\\lwip\\lwip\\src\\core\\memp.c"
	.loc 1 249 1
	.cfi_startproc
.LVL0:
	.loc 1 250 3
	.loc 1 251 3
	.loc 1 257 3
	.loc 1 249 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.loc 1 249 1
	mv	s1,a0
	.loc 1 257 15
	call	sys_arch_protect
.LVL1:
	.loc 1 259 3 is_stmt 1
	.loc 1 259 15 is_stmt 0
	lw	a5,16(s1)
	lw	a4,4(s1)
	.loc 1 259 8
	lw	s0,0(a5)
.LVL2:
	.loc 1 262 3 is_stmt 1
	.loc 1 262 6 is_stmt 0
	beq	s0,zero,.L2
	.loc 1 268 5 is_stmt 1
	.loc 1 268 22 is_stmt 0
	lw	a3,0(s0)
	.loc 1 268 16
	sw	a3,0(a5)
	.loc 1 281 56 is_stmt 1
	.loc 1 283 5
	.loc 1 283 22 is_stmt 0
	lhu	a5,8(a4)
	.loc 1 284 8
	lhu	a3,10(a4)
	.loc 1 283 22
	addi	a5,a5,1
	extu	a5,a5,15,0
	sh	a5,8(a4)
	.loc 1 284 5 is_stmt 1
	.loc 1 284 8 is_stmt 0
	bgeu	a3,a5,.L6
	.loc 1 285 7 is_stmt 1
	.loc 1 285 24 is_stmt 0
	sh	a5,10(a4)
	.loc 1 288 5 is_stmt 1
.L6:
	.loc 1 295 5
	call	sys_arch_unprotect
.LVL3:
	.loc 1 296 5
	.loc 1 296 10
	.loc 1 296 246
	.loc 1 299 3
	.loc 1 300 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,s0
	lw	s0,8(sp)
	.cfi_restore 8
.LVL4:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL5:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL6:
.L2:
	.cfi_restore_state
	.loc 1 293 5 is_stmt 1
	.loc 1 293 21 is_stmt 0
	lhu	a5,4(a4)
	addi	a5,a5,1
	sh	a5,4(a4)
	j	.L6
	.cfi_endproc
.LFE7:
	.size	do_memp_malloc_pool, .-do_memp_malloc_pool
	.section	.text.do_memp_free_pool,"ax",@progbits
	.align	1
	.type	do_memp_free_pool, @function
do_memp_free_pool:
.LFB10:
	.loc 1 360 1 is_stmt 1
	.cfi_startproc
.LVL7:
	.loc 1 361 3
	.loc 1 362 3
	.loc 1 365 53
	.loc 1 368 3
	.loc 1 360 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
.LVL8:
	.loc 1 370 3 is_stmt 1
	.loc 1 360 1 is_stmt 0
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 360 1
	mv	s0,a0
	sw	a1,12(sp)
.LVL9:
	.loc 1 370 15
	call	sys_arch_protect
.LVL10:
	.loc 1 377 3 is_stmt 1
	.loc 1 377 7 is_stmt 0
	lw	a4,4(s0)
	.loc 1 385 14
	lw	a1,12(sp)
	.loc 1 394 1
	lw	ra,28(sp)
	.cfi_restore 1
	.loc 1 377 20
	lhu	a5,8(a4)
	addi	a5,a5,-1
	sh	a5,8(a4)
	.loc 1 385 3 is_stmt 1
	.loc 1 385 21 is_stmt 0
	lw	a5,16(s0)
	.loc 1 394 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL11:
	.loc 1 385 16
	lw	a4,0(a5)
	.loc 1 385 14
	sw	a4,0(a1)
	.loc 1 386 3 is_stmt 1
	.loc 1 386 14 is_stmt 0
	sw	a1,0(a5)
	.loc 1 392 3 is_stmt 1
	.loc 1 394 1 is_stmt 0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL12:
	.loc 1 392 3
	tail	sys_arch_unprotect
.LVL13:
	.cfi_endproc
.LFE10:
	.size	do_memp_free_pool, .-do_memp_free_pool
	.section	.text.memp_init_pool,"ax",@progbits
	.align	1
	.globl	memp_init_pool
	.type	memp_init_pool, @function
memp_init_pool:
.LFB5:
	.loc 1 176 1 is_stmt 1
	.cfi_startproc
.LVL14:
	.loc 1 180 3
	.loc 1 181 3
	.loc 1 183 3
	.loc 1 184 64 is_stmt 0
	lw	a5,12(a0)
	.loc 1 183 8
	lw	a3,16(a0)
	.loc 1 194 23
	lhu	a2,10(a0)
	.loc 1 184 64
	addi	a5,a5,3
	.loc 1 183 14
	sw	zero,0(a3)
	.loc 1 184 3 is_stmt 1
	.loc 1 184 69 is_stmt 0
	andi	a5,a5,-4
.LVL15:
	.loc 1 194 3 is_stmt 1
	.loc 1 194 10 is_stmt 0
	li	a4,0
.LVL16:
.L10:
	.loc 1 194 15 is_stmt 1 discriminator 1
	.loc 1 194 3 is_stmt 0 discriminator 1
	bgt	a2,a4,.L11
	.loc 1 208 3 is_stmt 1
	.loc 1 208 7 is_stmt 0
	lw	a5,4(a0)
.LVL17:
	.loc 1 213 21
	lw	a4,0(a0)
.LVL18:
	.loc 1 208 22
	sh	a2,6(a5)
	.loc 1 213 3 is_stmt 1
	.loc 1 213 21 is_stmt 0
	sw	a4,0(a5)
	.loc 1 215 1
	ret
.LVL19:
.L11:
	.loc 1 195 5 is_stmt 1 discriminator 3
	.loc 1 195 18 is_stmt 0 discriminator 3
	lw	a1,0(a3)
	.loc 1 194 30 discriminator 3
	addi	a4,a4,1
.LVL20:
	.loc 1 195 16 discriminator 3
	sw	a1,0(a5)
	.loc 1 196 5 is_stmt 1 discriminator 3
	.loc 1 201 59 is_stmt 0 discriminator 3
	lhu	a1,8(a0)
	.loc 1 196 16 discriminator 3
	sw	a5,0(a3)
	.loc 1 201 5 is_stmt 1 discriminator 3
	.loc 1 201 10 is_stmt 0 discriminator 3
	add	a5,a5,a1
.LVL21:
	.loc 1 194 30 is_stmt 1 discriminator 3
	j	.L10
	.cfi_endproc
.LFE5:
	.size	memp_init_pool, .-memp_init_pool
	.section	.text.memp_init,"ax",@progbits
	.align	1
	.globl	memp_init
	.type	memp_init, @function
memp_init:
.LFB6:
	.loc 1 225 1
	.cfi_startproc
	.loc 1 226 3
	.loc 1 229 3
.LVL22:
	.loc 1 229 15
	.loc 1 225 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s1,20(sp)
	sw	s2,16(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 233 24
	lui	s1,%hi(lwip_stats+184)
	.loc 1 230 5
	lui	s2,%hi(.LANCHOR0)
	.loc 1 225 1
	sw	s0,24(sp)
	sw	s4,8(sp)
	sw	ra,28(sp)
	sw	s3,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 20, -24
	.cfi_offset 1, -4
	.cfi_offset 19, -20
	.loc 1 225 1
	li	s0,0
	.loc 1 230 5
	addi	s2,s2,%lo(.LANCHOR0)
	.loc 1 233 24
	addi	s1,s1,%lo(lwip_stats+184)
	.loc 1 229 3
	li	s4,52
.LVL23:
.L13:
	.loc 1 230 5 is_stmt 1 discriminator 3
	lrw	s3,s0,s2,0
	mv	a0,s3
	call	memp_init_pool
.LVL24:
	.loc 1 233 5 discriminator 3
	.loc 1 233 39 is_stmt 0 discriminator 3
	lw	a5,4(s3)
	.loc 1 233 24 discriminator 3
	srw	a5,s0,s1,0
	.loc 1 229 65 is_stmt 1 discriminator 3
.LVL25:
	.loc 1 229 15 discriminator 3
	.loc 1 229 3 is_stmt 0 discriminator 3
	addi	s0,s0,4
.LVL26:
	bne	s0,s4,.L13
	.loc 1 241 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL27:
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	memp_init, .-memp_init
	.section	.text.memp_malloc_pool,"ax",@progbits
	.align	1
	.globl	memp_malloc_pool
	.type	memp_malloc_pool, @function
memp_malloc_pool:
.LFB8:
	.loc 1 315 1 is_stmt 1
	.cfi_startproc
.LVL28:
	.loc 1 316 3
	.loc 1 317 3
	.loc 1 317 6 is_stmt 0
	beq	a0,zero,.L17
	.loc 1 322 3 is_stmt 1
	.loc 1 322 10 is_stmt 0
	tail	do_memp_malloc_pool
.LVL29:
.L17:
	.loc 1 326 1
	ret
	.cfi_endproc
.LFE8:
	.size	memp_malloc_pool, .-memp_malloc_pool
	.section	.rodata.memp_malloc.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"memp_malloc: type < MEMP_MAX"
	.section	.text.memp_malloc,"ax",@progbits
	.align	1
	.globl	memp_malloc
	.type	memp_malloc, @function
memp_malloc:
.LFB9:
	.loc 1 341 1 is_stmt 1
	.cfi_startproc
.LVL30:
	.loc 1 342 3
	.loc 1 343 3
	.loc 1 343 8
	.loc 1 343 11 is_stmt 0
	li	a5,12
	bgtu	a0,a5,.L22
	.loc 1 343 3 is_stmt 1 discriminator 2
	.loc 1 343 12 discriminator 2
	.loc 1 350 3 discriminator 2
	.loc 1 350 10 is_stmt 0 discriminator 2
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	lrw	a0,a5,a0,2
.LVL31:
	tail	do_memp_malloc_pool
.LVL32:
.L22:
	.loc 1 343 36 is_stmt 1 discriminator 1
	.loc 1 343 40 discriminator 1
	lui	a0,%hi(.LC0)
.LVL33:
	.loc 1 341 1 is_stmt 0 discriminator 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 343 40 discriminator 1
	addi	a0,a0,%lo(.LC0)
	.loc 1 341 1 discriminator 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 343 40 discriminator 1
	call	printf
.LVL34:
	.loc 1 343 87 is_stmt 1 discriminator 1
	.loc 1 343 92 discriminator 1
	.loc 1 356 1 is_stmt 0 discriminator 1
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	memp_malloc, .-memp_malloc
	.section	.text.memp_free_pool,"ax",@progbits
	.align	1
	.globl	memp_free_pool
	.type	memp_free_pool, @function
memp_free_pool:
.LFB11:
	.loc 1 404 1 is_stmt 1
	.cfi_startproc
.LVL35:
	.loc 1 405 3
	.loc 1 406 3
	.loc 1 406 6 is_stmt 0
	beq	a0,zero,.L25
	.loc 1 406 21 discriminator 1
	beq	a1,zero,.L25
	.loc 1 410 3 is_stmt 1
	tail	do_memp_free_pool
.LVL36:
.L25:
	.loc 1 411 1 is_stmt 0
	ret
	.cfi_endproc
.LFE11:
	.size	memp_free_pool, .-memp_free_pool
	.section	.rodata.memp_free.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"memp_free: type < MEMP_MAX"
	.section	.text.memp_free,"ax",@progbits
	.align	1
	.globl	memp_free
	.type	memp_free, @function
memp_free:
.LFB12:
	.loc 1 421 1 is_stmt 1
	.cfi_startproc
.LVL37:
	.loc 1 426 3
	.loc 1 426 8
	.loc 1 426 11 is_stmt 0
	li	a4,12
	bleu	a0,a4,.L34
	.loc 1 426 36 is_stmt 1 discriminator 1
	.loc 1 426 40 discriminator 1
	lui	a0,%hi(.LC1)
.LVL38:
	addi	a0,a0,%lo(.LC1)
	tail	printf
.LVL39:
.L34:
	.loc 1 426 97 discriminator 2
	.loc 1 426 106 discriminator 2
	.loc 1 428 3 discriminator 2
	.loc 1 428 6 is_stmt 0 discriminator 2
	beq	a1,zero,.L33
	.loc 1 440 3 is_stmt 1
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	lrw	a0,a5,a0,2
.LVL40:
	tail	do_memp_free_pool
.LVL41:
.L33:
	.loc 1 447 1 is_stmt 0
	ret
	.cfi_endproc
.LFE12:
	.size	memp_free, .-memp_free
	.globl	memp_pools
	.globl	memp_PBUF_POOL
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC2:
	.string	"PBUF_POOL"
	.globl	memp_memory_PBUF_POOL_base
	.globl	memp_PBUF
	.align	2
.LC3:
	.string	"PBUF_REF/ROM"
	.globl	memp_memory_PBUF_base
	.globl	memp_NETDB
	.align	2
.LC4:
	.string	"NETDB"
	.globl	memp_memory_NETDB_base
	.globl	memp_SYS_TIMEOUT
	.align	2
.LC5:
	.string	"SYS_TIMEOUT"
	.globl	memp_memory_SYS_TIMEOUT_base
	.globl	memp_TCPIP_MSG_API
	.align	2
.LC6:
	.string	"TCPIP_MSG_API"
	.globl	memp_memory_TCPIP_MSG_API_base
	.globl	memp_NETCONN
	.align	2
.LC7:
	.string	"NETCONN"
	.globl	memp_memory_NETCONN_base
	.globl	memp_NETBUF
	.align	2
.LC8:
	.string	"NETBUF"
	.globl	memp_memory_NETBUF_base
	.globl	memp_REASSDATA
	.align	2
.LC9:
	.string	"REASSDATA"
	.globl	memp_memory_REASSDATA_base
	.globl	memp_TCP_SEG
	.align	2
.LC10:
	.string	"TCP_SEG"
	.globl	memp_memory_TCP_SEG_base
	.globl	memp_TCP_PCB_LISTEN
	.align	2
.LC11:
	.string	"TCP_PCB_LISTEN"
	.globl	memp_memory_TCP_PCB_LISTEN_base
	.globl	memp_TCP_PCB
	.align	2
.LC12:
	.string	"TCP_PCB"
	.globl	memp_memory_TCP_PCB_base
	.globl	memp_UDP_PCB
	.align	2
.LC13:
	.string	"UDP_PCB"
	.globl	memp_memory_UDP_PCB_base
	.globl	memp_RAW_PCB
	.align	2
.LC14:
	.string	"RAW_PCB"
	.globl	memp_memory_RAW_PCB_base
	.section	.bss.memp_stats_NETBUF,"aw",@nobits
	.align	2
	.type	memp_stats_NETBUF, @object
	.size	memp_stats_NETBUF, 16
memp_stats_NETBUF:
	.zero	16
	.section	.bss.memp_stats_NETCONN,"aw",@nobits
	.align	2
	.type	memp_stats_NETCONN, @object
	.size	memp_stats_NETCONN, 16
memp_stats_NETCONN:
	.zero	16
	.section	.bss.memp_stats_NETDB,"aw",@nobits
	.align	2
	.type	memp_stats_NETDB, @object
	.size	memp_stats_NETDB, 16
memp_stats_NETDB:
	.zero	16
	.section	.bss.memp_stats_PBUF,"aw",@nobits
	.align	2
	.type	memp_stats_PBUF, @object
	.size	memp_stats_PBUF, 16
memp_stats_PBUF:
	.zero	16
	.section	.bss.memp_stats_PBUF_POOL,"aw",@nobits
	.align	2
	.type	memp_stats_PBUF_POOL, @object
	.size	memp_stats_PBUF_POOL, 16
memp_stats_PBUF_POOL:
	.zero	16
	.section	.bss.memp_stats_RAW_PCB,"aw",@nobits
	.align	2
	.type	memp_stats_RAW_PCB, @object
	.size	memp_stats_RAW_PCB, 16
memp_stats_RAW_PCB:
	.zero	16
	.section	.bss.memp_stats_REASSDATA,"aw",@nobits
	.align	2
	.type	memp_stats_REASSDATA, @object
	.size	memp_stats_REASSDATA, 16
memp_stats_REASSDATA:
	.zero	16
	.section	.bss.memp_stats_SYS_TIMEOUT,"aw",@nobits
	.align	2
	.type	memp_stats_SYS_TIMEOUT, @object
	.size	memp_stats_SYS_TIMEOUT, 16
memp_stats_SYS_TIMEOUT:
	.zero	16
	.section	.bss.memp_stats_TCPIP_MSG_API,"aw",@nobits
	.align	2
	.type	memp_stats_TCPIP_MSG_API, @object
	.size	memp_stats_TCPIP_MSG_API, 16
memp_stats_TCPIP_MSG_API:
	.zero	16
	.section	.bss.memp_stats_TCP_PCB,"aw",@nobits
	.align	2
	.type	memp_stats_TCP_PCB, @object
	.size	memp_stats_TCP_PCB, 16
memp_stats_TCP_PCB:
	.zero	16
	.section	.bss.memp_stats_TCP_PCB_LISTEN,"aw",@nobits
	.align	2
	.type	memp_stats_TCP_PCB_LISTEN, @object
	.size	memp_stats_TCP_PCB_LISTEN, 16
memp_stats_TCP_PCB_LISTEN:
	.zero	16
	.section	.bss.memp_stats_TCP_SEG,"aw",@nobits
	.align	2
	.type	memp_stats_TCP_SEG, @object
	.size	memp_stats_TCP_SEG, 16
memp_stats_TCP_SEG:
	.zero	16
	.section	.bss.memp_stats_UDP_PCB,"aw",@nobits
	.align	2
	.type	memp_stats_UDP_PCB, @object
	.size	memp_stats_UDP_PCB, 16
memp_stats_UDP_PCB:
	.zero	16
	.section	.bss.memp_tab_NETBUF,"aw",@nobits
	.align	2
	.type	memp_tab_NETBUF, @object
	.size	memp_tab_NETBUF, 4
memp_tab_NETBUF:
	.zero	4
	.section	.bss.memp_tab_NETCONN,"aw",@nobits
	.align	2
	.type	memp_tab_NETCONN, @object
	.size	memp_tab_NETCONN, 4
memp_tab_NETCONN:
	.zero	4
	.section	.bss.memp_tab_NETDB,"aw",@nobits
	.align	2
	.type	memp_tab_NETDB, @object
	.size	memp_tab_NETDB, 4
memp_tab_NETDB:
	.zero	4
	.section	.bss.memp_tab_PBUF,"aw",@nobits
	.align	2
	.type	memp_tab_PBUF, @object
	.size	memp_tab_PBUF, 4
memp_tab_PBUF:
	.zero	4
	.section	.bss.memp_tab_PBUF_POOL,"aw",@nobits
	.align	2
	.type	memp_tab_PBUF_POOL, @object
	.size	memp_tab_PBUF_POOL, 4
memp_tab_PBUF_POOL:
	.zero	4
	.section	.bss.memp_tab_RAW_PCB,"aw",@nobits
	.align	2
	.type	memp_tab_RAW_PCB, @object
	.size	memp_tab_RAW_PCB, 4
memp_tab_RAW_PCB:
	.zero	4
	.section	.bss.memp_tab_REASSDATA,"aw",@nobits
	.align	2
	.type	memp_tab_REASSDATA, @object
	.size	memp_tab_REASSDATA, 4
memp_tab_REASSDATA:
	.zero	4
	.section	.bss.memp_tab_SYS_TIMEOUT,"aw",@nobits
	.align	2
	.type	memp_tab_SYS_TIMEOUT, @object
	.size	memp_tab_SYS_TIMEOUT, 4
memp_tab_SYS_TIMEOUT:
	.zero	4
	.section	.bss.memp_tab_TCPIP_MSG_API,"aw",@nobits
	.align	2
	.type	memp_tab_TCPIP_MSG_API, @object
	.size	memp_tab_TCPIP_MSG_API, 4
memp_tab_TCPIP_MSG_API:
	.zero	4
	.section	.bss.memp_tab_TCP_PCB,"aw",@nobits
	.align	2
	.type	memp_tab_TCP_PCB, @object
	.size	memp_tab_TCP_PCB, 4
memp_tab_TCP_PCB:
	.zero	4
	.section	.bss.memp_tab_TCP_PCB_LISTEN,"aw",@nobits
	.align	2
	.type	memp_tab_TCP_PCB_LISTEN, @object
	.size	memp_tab_TCP_PCB_LISTEN, 4
memp_tab_TCP_PCB_LISTEN:
	.zero	4
	.section	.bss.memp_tab_TCP_SEG,"aw",@nobits
	.align	2
	.type	memp_tab_TCP_SEG, @object
	.size	memp_tab_TCP_SEG, 4
memp_tab_TCP_SEG:
	.zero	4
	.section	.bss.memp_tab_UDP_PCB,"aw",@nobits
	.align	2
	.type	memp_tab_UDP_PCB, @object
	.size	memp_tab_UDP_PCB, 4
memp_tab_UDP_PCB:
	.zero	4
	.section	.rodata.memp_NETBUF,"a"
	.align	2
	.type	memp_NETBUF, @object
	.size	memp_NETBUF, 20
memp_NETBUF:
	.word	.LC8
	.word	memp_stats_NETBUF
	.half	16
	.half	32
	.word	memp_memory_NETBUF_base
	.word	memp_tab_NETBUF
	.section	.rodata.memp_NETCONN,"a"
	.align	2
	.type	memp_NETCONN, @object
	.size	memp_NETCONN, 20
memp_NETCONN:
	.word	.LC7
	.word	memp_stats_NETCONN
	.half	56
	.half	16
	.word	memp_memory_NETCONN_base
	.word	memp_tab_NETCONN
	.section	.rodata.memp_NETDB,"a"
	.align	2
	.type	memp_NETDB, @object
	.size	memp_NETDB, 20
memp_NETDB:
	.word	.LC4
	.word	memp_stats_NETDB
	.half	308
	.half	1
	.word	memp_memory_NETDB_base
	.word	memp_tab_NETDB
	.section	.rodata.memp_PBUF,"a"
	.align	2
	.type	memp_PBUF, @object
	.size	memp_PBUF, 20
memp_PBUF:
	.word	.LC3
	.word	memp_stats_PBUF
	.half	16
	.half	128
	.word	memp_memory_PBUF_base
	.word	memp_tab_PBUF
	.section	.rodata.memp_PBUF_POOL,"a"
	.align	2
	.type	memp_PBUF_POOL, @object
	.size	memp_PBUF_POOL, 20
memp_PBUF_POOL:
	.word	.LC2
	.word	memp_stats_PBUF_POOL
	.half	1920
	.half	0
	.word	memp_memory_PBUF_POOL_base
	.word	memp_tab_PBUF_POOL
	.section	.rodata.memp_RAW_PCB,"a"
	.align	2
	.type	memp_RAW_PCB, @object
	.size	memp_RAW_PCB, 20
memp_RAW_PCB:
	.word	.LC14
	.word	memp_stats_RAW_PCB
	.half	28
	.half	4
	.word	memp_memory_RAW_PCB_base
	.word	memp_tab_RAW_PCB
	.section	.rodata.memp_REASSDATA,"a"
	.align	2
	.type	memp_REASSDATA, @object
	.size	memp_REASSDATA, 20
memp_REASSDATA:
	.word	.LC9
	.word	memp_stats_REASSDATA
	.half	32
	.half	5
	.word	memp_memory_REASSDATA_base
	.word	memp_tab_REASSDATA
	.section	.rodata.memp_SYS_TIMEOUT,"a"
	.align	2
	.type	memp_SYS_TIMEOUT, @object
	.size	memp_SYS_TIMEOUT, 20
memp_SYS_TIMEOUT:
	.word	.LC5
	.word	memp_stats_SYS_TIMEOUT
	.half	16
	.half	18
	.word	memp_memory_SYS_TIMEOUT_base
	.word	memp_tab_SYS_TIMEOUT
	.section	.rodata.memp_TCPIP_MSG_API,"a"
	.align	2
	.type	memp_TCPIP_MSG_API, @object
	.size	memp_TCPIP_MSG_API, 20
memp_TCPIP_MSG_API:
	.word	.LC6
	.word	memp_stats_TCPIP_MSG_API
	.half	12
	.half	8
	.word	memp_memory_TCPIP_MSG_API_base
	.word	memp_tab_TCPIP_MSG_API
	.section	.rodata.memp_TCP_PCB,"a"
	.align	2
	.type	memp_TCP_PCB, @object
	.size	memp_TCP_PCB, 20
memp_TCP_PCB:
	.word	.LC12
	.word	memp_stats_TCP_PCB
	.half	184
	.half	5
	.word	memp_memory_TCP_PCB_base
	.word	memp_tab_TCP_PCB
	.section	.rodata.memp_TCP_PCB_LISTEN,"a"
	.align	2
	.type	memp_TCP_PCB_LISTEN, @object
	.size	memp_TCP_PCB_LISTEN, 20
memp_TCP_PCB_LISTEN:
	.word	.LC11
	.word	memp_stats_TCP_PCB_LISTEN
	.half	28
	.half	8
	.word	memp_memory_TCP_PCB_LISTEN_base
	.word	memp_tab_TCP_PCB_LISTEN
	.section	.rodata.memp_TCP_SEG,"a"
	.align	2
	.type	memp_TCP_SEG, @object
	.size	memp_TCP_SEG, 20
memp_TCP_SEG:
	.word	.LC10
	.word	memp_stats_TCP_SEG
	.half	20
	.half	512
	.word	memp_memory_TCP_SEG_base
	.word	memp_tab_TCP_SEG
	.section	.rodata.memp_UDP_PCB,"a"
	.align	2
	.type	memp_UDP_PCB, @object
	.size	memp_UDP_PCB, 20
memp_UDP_PCB:
	.word	.LC13
	.word	memp_stats_UDP_PCB
	.half	40
	.half	16
	.word	memp_memory_UDP_PCB_base
	.word	memp_tab_UDP_PCB
	.section	.rodata.memp_pools,"a"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	memp_pools, @object
	.size	memp_pools, 52
memp_pools:
	.word	memp_RAW_PCB
	.word	memp_UDP_PCB
	.word	memp_TCP_PCB
	.word	memp_TCP_PCB_LISTEN
	.word	memp_TCP_SEG
	.word	memp_REASSDATA
	.word	memp_NETBUF
	.word	memp_NETCONN
	.word	memp_TCPIP_MSG_API
	.word	memp_SYS_TIMEOUT
	.word	memp_NETDB
	.word	memp_PBUF
	.word	memp_PBUF_POOL
	.section	SHAREDRAM,"aw"
	.align	2
	.type	memp_memory_PBUF_POOL_base, @object
	.size	memp_memory_PBUF_POOL_base, 3
memp_memory_PBUF_POOL_base:
	.zero	3
	.zero	1
	.type	memp_memory_PBUF_base, @object
	.size	memp_memory_PBUF_base, 2051
memp_memory_PBUF_base:
	.zero	2051
	.zero	1
	.type	memp_memory_NETDB_base, @object
	.size	memp_memory_NETDB_base, 311
memp_memory_NETDB_base:
	.zero	311
	.zero	1
	.type	memp_memory_SYS_TIMEOUT_base, @object
	.size	memp_memory_SYS_TIMEOUT_base, 291
memp_memory_SYS_TIMEOUT_base:
	.zero	291
	.zero	1
	.type	memp_memory_TCPIP_MSG_API_base, @object
	.size	memp_memory_TCPIP_MSG_API_base, 99
memp_memory_TCPIP_MSG_API_base:
	.zero	99
	.zero	1
	.type	memp_memory_NETCONN_base, @object
	.size	memp_memory_NETCONN_base, 899
memp_memory_NETCONN_base:
	.zero	899
	.zero	1
	.type	memp_memory_NETBUF_base, @object
	.size	memp_memory_NETBUF_base, 515
memp_memory_NETBUF_base:
	.zero	515
	.zero	1
	.type	memp_memory_REASSDATA_base, @object
	.size	memp_memory_REASSDATA_base, 163
memp_memory_REASSDATA_base:
	.zero	163
	.zero	1
	.type	memp_memory_TCP_SEG_base, @object
	.size	memp_memory_TCP_SEG_base, 10243
memp_memory_TCP_SEG_base:
	.zero	10243
	.zero	1
	.type	memp_memory_TCP_PCB_LISTEN_base, @object
	.size	memp_memory_TCP_PCB_LISTEN_base, 227
memp_memory_TCP_PCB_LISTEN_base:
	.zero	227
	.zero	1
	.type	memp_memory_TCP_PCB_base, @object
	.size	memp_memory_TCP_PCB_base, 923
memp_memory_TCP_PCB_base:
	.zero	923
	.zero	1
	.type	memp_memory_UDP_PCB_base, @object
	.size	memp_memory_UDP_PCB_base, 643
memp_memory_UDP_PCB_base:
	.zero	643
	.zero	1
	.type	memp_memory_RAW_PCB_base, @object
	.size	memp_memory_RAW_PCB_base, 115
memp_memory_RAW_PCB_base:
	.zero	115
	.text
.Letext0:
	.file 2 ".\\components\\net\\lwip\\lwip\\lwip-port/arch/cc.h"
	.file 3 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\machine\\_default_types.h"
	.file 4 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\sys\\_stdint.h"
	.file 5 ".\\components\\net\\lwip\\lwip\\src\\include/lwip/arch.h"
	.file 6 ".\\components\\net\\lwip\\lwip\\src\\include/lwip/memp.h"
	.file 7 ".\\components\\net\\lwip\\lwip\\src\\include/lwip/mem.h"
	.file 8 ".\\components\\net\\lwip\\lwip\\src\\include/lwip/priv/memp_priv.h"
	.file 9 ".\\components\\net\\lwip\\lwip\\src\\include/lwip/stats.h"
	.file 10 ".\\components\\net\\lwip\\lwip\\src\\include/lwip/priv/memp_std.h"
	.file 11 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\stdio.h"
	.file 12 ".\\components\\net\\lwip\\lwip\\src\\include/lwip/sys.h"
	.file 13 ".\\components\\net\\lwip\\lwip\\src\\include/lwip/netif.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xbe4
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF139
	.byte	0xc
	.4byte	.LASF140
	.4byte	.LASF141
	.4byte	.Ldebug_ranges0+0
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
	.byte	0x5
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0x6
	.4byte	0xa9
	.byte	0x7
	.byte	0x4
	.4byte	0xb0
	.byte	0x2
	.4byte	.LASF15
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x3f
	.byte	0x2
	.4byte	.LASF16
	.byte	0x4
	.byte	0x20
	.byte	0x13
	.4byte	0x52
	.byte	0x2
	.4byte	.LASF17
	.byte	0x4
	.byte	0x24
	.byte	0x14
	.4byte	0x65
	.byte	0x2
	.4byte	.LASF18
	.byte	0x4
	.byte	0x52
	.byte	0x15
	.4byte	0x94
	.byte	0x2
	.4byte	.LASF19
	.byte	0x5
	.byte	0x7d
	.byte	0x11
	.4byte	0xbb
	.byte	0x2
	.4byte	.LASF20
	.byte	0x5
	.byte	0x7f
	.byte	0x12
	.4byte	0xd3
	.byte	0x2
	.4byte	.LASF21
	.byte	0x5
	.byte	0x80
	.byte	0x11
	.4byte	0xc7
	.byte	0x2
	.4byte	.LASF22
	.byte	0x5
	.byte	0x87
	.byte	0x13
	.4byte	0xdf
	.byte	0x8
	.byte	0x7
	.byte	0x1
	.4byte	0x4b
	.byte	0x6
	.byte	0x34
	.byte	0xe
	.4byte	0x17e
	.byte	0x9
	.4byte	.LASF23
	.byte	0
	.byte	0x9
	.4byte	.LASF24
	.byte	0x1
	.byte	0x9
	.4byte	.LASF25
	.byte	0x2
	.byte	0x9
	.4byte	.LASF26
	.byte	0x3
	.byte	0x9
	.4byte	.LASF27
	.byte	0x4
	.byte	0x9
	.4byte	.LASF28
	.byte	0x5
	.byte	0x9
	.4byte	.LASF29
	.byte	0x6
	.byte	0x9
	.4byte	.LASF30
	.byte	0x7
	.byte	0x9
	.4byte	.LASF31
	.byte	0x8
	.byte	0x9
	.4byte	.LASF32
	.byte	0x9
	.byte	0x9
	.4byte	.LASF33
	.byte	0xa
	.byte	0x9
	.4byte	.LASF34
	.byte	0xb
	.byte	0x9
	.4byte	.LASF35
	.byte	0xc
	.byte	0x9
	.4byte	.LASF36
	.byte	0xd
	.byte	0
	.byte	0x2
	.4byte	.LASF37
	.byte	0x6
	.byte	0x38
	.byte	0x3
	.4byte	0x11b
	.byte	0x2
	.4byte	.LASF38
	.byte	0x7
	.byte	0x43
	.byte	0xf
	.4byte	0xf7
	.byte	0xa
	.4byte	.LASF39
	.byte	0x4
	.byte	0x8
	.byte	0x45
	.byte	0x8
	.4byte	0x1b1
	.byte	0xb
	.4byte	.LASF41
	.byte	0x8
	.byte	0x46
	.byte	0x10
	.4byte	0x1b1
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x196
	.byte	0xa
	.4byte	.LASF40
	.byte	0x14
	.byte	0x8
	.byte	0x6c
	.byte	0x8
	.4byte	0x213
	.byte	0xb
	.4byte	.LASF42
	.byte	0x8
	.byte	0x6f
	.byte	0xf
	.4byte	0xb5
	.byte	0
	.byte	0xb
	.4byte	.LASF43
	.byte	0x8
	.byte	0x73
	.byte	0x15
	.4byte	0x274
	.byte	0x4
	.byte	0xb
	.4byte	.LASF44
	.byte	0x8
	.byte	0x77
	.byte	0x9
	.4byte	0xf7
	.byte	0x8
	.byte	0xc
	.string	"num"
	.byte	0x8
	.byte	0x7b
	.byte	0x9
	.4byte	0xf7
	.byte	0xa
	.byte	0xb
	.4byte	.LASF45
	.byte	0x8
	.byte	0x7e
	.byte	0x9
	.4byte	0x27a
	.byte	0xc
	.byte	0xc
	.string	"tab"
	.byte	0x8
	.byte	0x81
	.byte	0x11
	.4byte	0x280
	.byte	0x10
	.byte	0
	.byte	0x6
	.4byte	0x1b7
	.byte	0xa
	.4byte	.LASF46
	.byte	0x10
	.byte	0x9
	.byte	0x62
	.byte	0x8
	.4byte	0x274
	.byte	0xb
	.4byte	.LASF47
	.byte	0x9
	.byte	0x64
	.byte	0xf
	.4byte	0xb5
	.byte	0
	.byte	0xc
	.string	"err"
	.byte	0x9
	.byte	0x66
	.byte	0x9
	.4byte	0xf7
	.byte	0x4
	.byte	0xb
	.4byte	.LASF48
	.byte	0x9
	.byte	0x67
	.byte	0xe
	.4byte	0x18a
	.byte	0x6
	.byte	0xb
	.4byte	.LASF49
	.byte	0x9
	.byte	0x68
	.byte	0xe
	.4byte	0x18a
	.byte	0x8
	.byte	0xc
	.string	"max"
	.byte	0x9
	.byte	0x69
	.byte	0xe
	.4byte	0x18a
	.byte	0xa
	.byte	0xb
	.4byte	.LASF50
	.byte	0x9
	.byte	0x6a
	.byte	0x9
	.4byte	0xf7
	.byte	0xc
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x218
	.byte	0x7
	.byte	0x4
	.4byte	0xeb
	.byte	0x7
	.byte	0x4
	.4byte	0x1b1
	.byte	0xa
	.4byte	.LASF51
	.byte	0x18
	.byte	0x9
	.byte	0x40
	.byte	0x8
	.4byte	0x32f
	.byte	0xb
	.4byte	.LASF52
	.byte	0x9
	.byte	0x41
	.byte	0x9
	.4byte	0xf7
	.byte	0
	.byte	0xb
	.4byte	.LASF53
	.byte	0x9
	.byte	0x42
	.byte	0x9
	.4byte	0xf7
	.byte	0x2
	.byte	0xc
	.string	"fw"
	.byte	0x9
	.byte	0x43
	.byte	0x9
	.4byte	0xf7
	.byte	0x4
	.byte	0xb
	.4byte	.LASF54
	.byte	0x9
	.byte	0x44
	.byte	0x9
	.4byte	0xf7
	.byte	0x6
	.byte	0xb
	.4byte	.LASF55
	.byte	0x9
	.byte	0x45
	.byte	0x9
	.4byte	0xf7
	.byte	0x8
	.byte	0xb
	.4byte	.LASF56
	.byte	0x9
	.byte	0x46
	.byte	0x9
	.4byte	0xf7
	.byte	0xa
	.byte	0xb
	.4byte	.LASF57
	.byte	0x9
	.byte	0x47
	.byte	0x9
	.4byte	0xf7
	.byte	0xc
	.byte	0xb
	.4byte	.LASF58
	.byte	0x9
	.byte	0x48
	.byte	0x9
	.4byte	0xf7
	.byte	0xe
	.byte	0xb
	.4byte	.LASF59
	.byte	0x9
	.byte	0x49
	.byte	0x9
	.4byte	0xf7
	.byte	0x10
	.byte	0xb
	.4byte	.LASF60
	.byte	0x9
	.byte	0x4a
	.byte	0x9
	.4byte	0xf7
	.byte	0x12
	.byte	0xc
	.string	"err"
	.byte	0x9
	.byte	0x4b
	.byte	0x9
	.4byte	0xf7
	.byte	0x14
	.byte	0xb
	.4byte	.LASF61
	.byte	0x9
	.byte	0x4c
	.byte	0x9
	.4byte	0xf7
	.byte	0x16
	.byte	0
	.byte	0xa
	.4byte	.LASF62
	.byte	0x6
	.byte	0x9
	.byte	0x6e
	.byte	0x8
	.4byte	0x364
	.byte	0xb
	.4byte	.LASF49
	.byte	0x9
	.byte	0x6f
	.byte	0x9
	.4byte	0xf7
	.byte	0
	.byte	0xc
	.string	"max"
	.byte	0x9
	.byte	0x70
	.byte	0x9
	.4byte	0xf7
	.byte	0x2
	.byte	0xc
	.string	"err"
	.byte	0x9
	.byte	0x71
	.byte	0x9
	.4byte	0xf7
	.byte	0x4
	.byte	0
	.byte	0xa
	.4byte	.LASF63
	.byte	0x12
	.byte	0x9
	.byte	0x75
	.byte	0x8
	.4byte	0x399
	.byte	0xc
	.string	"sem"
	.byte	0x9
	.byte	0x76
	.byte	0x18
	.4byte	0x32f
	.byte	0
	.byte	0xb
	.4byte	.LASF64
	.byte	0x9
	.byte	0x77
	.byte	0x18
	.4byte	0x32f
	.byte	0x6
	.byte	0xb
	.4byte	.LASF65
	.byte	0x9
	.byte	0x78
	.byte	0x18
	.4byte	0x32f
	.byte	0xc
	.byte	0
	.byte	0xd
	.4byte	.LASF66
	.2byte	0x100
	.byte	0x9
	.byte	0xf4
	.byte	0x8
	.4byte	0x430
	.byte	0xb
	.4byte	.LASF67
	.byte	0x9
	.byte	0xf7
	.byte	0x16
	.4byte	0x286
	.byte	0
	.byte	0xb
	.4byte	.LASF68
	.byte	0x9
	.byte	0xfb
	.byte	0x16
	.4byte	0x286
	.byte	0x18
	.byte	0xb
	.4byte	.LASF69
	.byte	0x9
	.byte	0xff
	.byte	0x16
	.4byte	0x286
	.byte	0x30
	.byte	0xe
	.string	"ip"
	.byte	0x9
	.2byte	0x103
	.byte	0x16
	.4byte	0x286
	.byte	0x48
	.byte	0xf
	.4byte	.LASF70
	.byte	0x9
	.2byte	0x107
	.byte	0x16
	.4byte	0x286
	.byte	0x60
	.byte	0xe
	.string	"udp"
	.byte	0x9
	.2byte	0x10f
	.byte	0x16
	.4byte	0x286
	.byte	0x78
	.byte	0xe
	.string	"tcp"
	.byte	0x9
	.2byte	0x113
	.byte	0x16
	.4byte	0x286
	.byte	0x90
	.byte	0xe
	.string	"mem"
	.byte	0x9
	.2byte	0x117
	.byte	0x14
	.4byte	0x218
	.byte	0xa8
	.byte	0xf
	.4byte	.LASF39
	.byte	0x9
	.2byte	0x11b
	.byte	0x15
	.4byte	0x430
	.byte	0xb8
	.byte	0xe
	.string	"sys"
	.byte	0x9
	.2byte	0x11f
	.byte	0x14
	.4byte	0x364
	.byte	0xec
	.byte	0
	.byte	0x10
	.4byte	0x274
	.4byte	0x440
	.byte	0x11
	.4byte	0xa0
	.byte	0xc
	.byte	0
	.byte	0x12
	.4byte	.LASF71
	.byte	0x9
	.2byte	0x141
	.byte	0x16
	.4byte	0x399
	.byte	0x10
	.4byte	0x468
	.4byte	0x45d
	.byte	0x11
	.4byte	0xa0
	.byte	0xc
	.byte	0
	.byte	0x6
	.4byte	0x44d
	.byte	0x7
	.byte	0x4
	.4byte	0x213
	.byte	0x6
	.4byte	0x462
	.byte	0x13
	.4byte	.LASF72
	.byte	0x6
	.byte	0x3d
	.byte	0x26
	.4byte	0x45d
	.byte	0x14
	.4byte	.LASF142
	.byte	0x7
	.byte	0x1
	.4byte	0x4b
	.byte	0xd
	.byte	0x71
	.byte	0x6
	.4byte	0x49e
	.byte	0x9
	.4byte	.LASF73
	.byte	0
	.byte	0x9
	.4byte	.LASF74
	.byte	0x1
	.byte	0x9
	.4byte	.LASF75
	.byte	0x2
	.byte	0
	.byte	0x10
	.4byte	0xeb
	.4byte	0x4ae
	.byte	0x11
	.4byte	0xa0
	.byte	0x72
	.byte	0
	.byte	0x15
	.4byte	.LASF76
	.byte	0xa
	.byte	0x2a
	.byte	0x6
	.4byte	0x49e
	.byte	0x5
	.byte	0x3
	.4byte	memp_memory_RAW_PCB_base
	.byte	0x16
	.4byte	.LASF77
	.byte	0xa
	.byte	0x2a
	.byte	0xaf
	.4byte	0x218
	.byte	0x5
	.byte	0x3
	.4byte	memp_stats_RAW_PCB
	.byte	0x16
	.4byte	.LASF78
	.byte	0xa
	.byte	0x2a
	.byte	0xd7
	.4byte	0x1b1
	.byte	0x5
	.byte	0x3
	.4byte	memp_tab_RAW_PCB
	.byte	0x17
	.4byte	.LASF79
	.byte	0xa
	.byte	0x2a
	.2byte	0x100
	.4byte	0x213
	.byte	0x5
	.byte	0x3
	.4byte	memp_RAW_PCB
	.byte	0x10
	.4byte	0xeb
	.4byte	0x508
	.byte	0x18
	.4byte	0xa0
	.2byte	0x282
	.byte	0
	.byte	0x15
	.4byte	.LASF80
	.byte	0xa
	.byte	0x2e
	.byte	0x6
	.4byte	0x4f7
	.byte	0x5
	.byte	0x3
	.4byte	memp_memory_UDP_PCB_base
	.byte	0x16
	.4byte	.LASF81
	.byte	0xa
	.byte	0x2e
	.byte	0xb0
	.4byte	0x218
	.byte	0x5
	.byte	0x3
	.4byte	memp_stats_UDP_PCB
	.byte	0x16
	.4byte	.LASF82
	.byte	0xa
	.byte	0x2e
	.byte	0xd8
	.4byte	0x1b1
	.byte	0x5
	.byte	0x3
	.4byte	memp_tab_UDP_PCB
	.byte	0x17
	.4byte	.LASF83
	.byte	0xa
	.byte	0x2e
	.2byte	0x101
	.4byte	0x213
	.byte	0x5
	.byte	0x3
	.4byte	memp_UDP_PCB
	.byte	0x10
	.4byte	0xeb
	.4byte	0x562
	.byte	0x18
	.4byte	0xa0
	.2byte	0x39a
	.byte	0
	.byte	0x15
	.4byte	.LASF84
	.byte	0xa
	.byte	0x32
	.byte	0x6
	.4byte	0x551
	.byte	0x5
	.byte	0x3
	.4byte	memp_memory_TCP_PCB_base
	.byte	0x16
	.4byte	.LASF85
	.byte	0xa
	.byte	0x32
	.byte	0xaf
	.4byte	0x218
	.byte	0x5
	.byte	0x3
	.4byte	memp_stats_TCP_PCB
	.byte	0x16
	.4byte	.LASF86
	.byte	0xa
	.byte	0x32
	.byte	0xd7
	.4byte	0x1b1
	.byte	0x5
	.byte	0x3
	.4byte	memp_tab_TCP_PCB
	.byte	0x17
	.4byte	.LASF87
	.byte	0xa
	.byte	0x32
	.2byte	0x100
	.4byte	0x213
	.byte	0x5
	.byte	0x3
	.4byte	memp_TCP_PCB
	.byte	0x10
	.4byte	0xeb
	.4byte	0x5bb
	.byte	0x11
	.4byte	0xa0
	.byte	0xe2
	.byte	0
	.byte	0x15
	.4byte	.LASF88
	.byte	0xa
	.byte	0x33
	.byte	0x6
	.4byte	0x5ab
	.byte	0x5
	.byte	0x3
	.4byte	memp_memory_TCP_PCB_LISTEN_base
	.byte	0x16
	.4byte	.LASF89
	.byte	0xa
	.byte	0x33
	.byte	0xbd
	.4byte	0x218
	.byte	0x5
	.byte	0x3
	.4byte	memp_stats_TCP_PCB_LISTEN
	.byte	0x16
	.4byte	.LASF90
	.byte	0xa
	.byte	0x33
	.byte	0xec
	.4byte	0x1b1
	.byte	0x5
	.byte	0x3
	.4byte	memp_tab_TCP_PCB_LISTEN
	.byte	0x17
	.4byte	.LASF91
	.byte	0xa
	.byte	0x33
	.2byte	0x11c
	.4byte	0x213
	.byte	0x5
	.byte	0x3
	.4byte	memp_TCP_PCB_LISTEN
	.byte	0x10
	.4byte	0xeb
	.4byte	0x615
	.byte	0x18
	.4byte	0xa0
	.2byte	0x2802
	.byte	0
	.byte	0x15
	.4byte	.LASF92
	.byte	0xa
	.byte	0x34
	.byte	0x6
	.4byte	0x604
	.byte	0x5
	.byte	0x3
	.4byte	memp_memory_TCP_SEG_base
	.byte	0x16
	.4byte	.LASF93
	.byte	0xa
	.byte	0x34
	.byte	0xcc
	.4byte	0x218
	.byte	0x5
	.byte	0x3
	.4byte	memp_stats_TCP_SEG
	.byte	0x16
	.4byte	.LASF94
	.byte	0xa
	.byte	0x34
	.byte	0xf4
	.4byte	0x1b1
	.byte	0x5
	.byte	0x3
	.4byte	memp_tab_TCP_SEG
	.byte	0x17
	.4byte	.LASF95
	.byte	0xa
	.byte	0x34
	.2byte	0x11d
	.4byte	0x213
	.byte	0x5
	.byte	0x3
	.4byte	memp_TCP_SEG
	.byte	0x10
	.4byte	0xeb
	.4byte	0x66e
	.byte	0x11
	.4byte	0xa0
	.byte	0xa2
	.byte	0
	.byte	0x15
	.4byte	.LASF96
	.byte	0xa
	.byte	0x3c
	.byte	0x6
	.4byte	0x65e
	.byte	0x5
	.byte	0x3
	.4byte	memp_memory_REASSDATA_base
	.byte	0x16
	.4byte	.LASF97
	.byte	0xa
	.byte	0x3c
	.byte	0xd8
	.4byte	0x218
	.byte	0x5
	.byte	0x3
	.4byte	memp_stats_REASSDATA
	.byte	0x19
	.4byte	.LASF98
	.byte	0xa
	.byte	0x3c
	.2byte	0x102
	.4byte	0x1b1
	.byte	0x5
	.byte	0x3
	.4byte	memp_tab_REASSDATA
	.byte	0x17
	.4byte	.LASF99
	.byte	0xa
	.byte	0x3c
	.2byte	0x12d
	.4byte	0x213
	.byte	0x5
	.byte	0x3
	.4byte	memp_REASSDATA
	.byte	0x10
	.4byte	0xeb
	.4byte	0x6c9
	.byte	0x18
	.4byte	0xa0
	.2byte	0x202
	.byte	0
	.byte	0x15
	.4byte	.LASF100
	.byte	0xa
	.byte	0x43
	.byte	0x6
	.4byte	0x6b8
	.byte	0x5
	.byte	0x3
	.4byte	memp_memory_NETBUF_base
	.byte	0x16
	.4byte	.LASF101
	.byte	0xa
	.byte	0x43
	.byte	0xae
	.4byte	0x218
	.byte	0x5
	.byte	0x3
	.4byte	memp_stats_NETBUF
	.byte	0x16
	.4byte	.LASF102
	.byte	0xa
	.byte	0x43
	.byte	0xd5
	.4byte	0x1b1
	.byte	0x5
	.byte	0x3
	.4byte	memp_tab_NETBUF
	.byte	0x15
	.4byte	.LASF103
	.byte	0xa
	.byte	0x43
	.byte	0xfd
	.4byte	0x213
	.byte	0x5
	.byte	0x3
	.4byte	memp_NETBUF
	.byte	0x10
	.4byte	0xeb
	.4byte	0x722
	.byte	0x18
	.4byte	0xa0
	.2byte	0x382
	.byte	0
	.byte	0x15
	.4byte	.LASF104
	.byte	0xa
	.byte	0x44
	.byte	0x6
	.4byte	0x711
	.byte	0x5
	.byte	0x3
	.4byte	memp_memory_NETCONN_base
	.byte	0x16
	.4byte	.LASF105
	.byte	0xa
	.byte	0x44
	.byte	0xb0
	.4byte	0x218
	.byte	0x5
	.byte	0x3
	.4byte	memp_stats_NETCONN
	.byte	0x16
	.4byte	.LASF106
	.byte	0xa
	.byte	0x44
	.byte	0xd8
	.4byte	0x1b1
	.byte	0x5
	.byte	0x3
	.4byte	memp_tab_NETCONN
	.byte	0x17
	.4byte	.LASF107
	.byte	0xa
	.byte	0x44
	.2byte	0x101
	.4byte	0x213
	.byte	0x5
	.byte	0x3
	.4byte	memp_NETCONN
	.byte	0x10
	.4byte	0xeb
	.4byte	0x77b
	.byte	0x11
	.4byte	0xa0
	.byte	0x62
	.byte	0
	.byte	0x15
	.4byte	.LASF108
	.byte	0xa
	.byte	0x48
	.byte	0x6
	.4byte	0x76b
	.byte	0x5
	.byte	0x3
	.4byte	memp_memory_TCPIP_MSG_API_base
	.byte	0x16
	.4byte	.LASF109
	.byte	0xa
	.byte	0x48
	.byte	0xb7
	.4byte	0x218
	.byte	0x5
	.byte	0x3
	.4byte	memp_stats_TCPIP_MSG_API
	.byte	0x16
	.4byte	.LASF110
	.byte	0xa
	.byte	0x48
	.byte	0xe5
	.4byte	0x1b1
	.byte	0x5
	.byte	0x3
	.4byte	memp_tab_TCPIP_MSG_API
	.byte	0x17
	.4byte	.LASF111
	.byte	0xa
	.byte	0x48
	.2byte	0x114
	.4byte	0x213
	.byte	0x5
	.byte	0x3
	.4byte	memp_TCPIP_MSG_API
	.byte	0x10
	.4byte	0xeb
	.4byte	0x7d5
	.byte	0x18
	.4byte	0xa0
	.2byte	0x122
	.byte	0
	.byte	0x15
	.4byte	.LASF112
	.byte	0xa
	.byte	0x66
	.byte	0x6
	.4byte	0x7c4
	.byte	0x5
	.byte	0x3
	.4byte	memp_memory_SYS_TIMEOUT_base
	.byte	0x19
	.4byte	.LASF113
	.byte	0xa
	.byte	0x66
	.2byte	0x100
	.4byte	0x218
	.byte	0x5
	.byte	0x3
	.4byte	memp_stats_SYS_TIMEOUT
	.byte	0x19
	.4byte	.LASF114
	.byte	0xa
	.byte	0x66
	.2byte	0x12c
	.4byte	0x1b1
	.byte	0x5
	.byte	0x3
	.4byte	memp_tab_SYS_TIMEOUT
	.byte	0x17
	.4byte	.LASF115
	.byte	0xa
	.byte	0x66
	.2byte	0x159
	.4byte	0x213
	.byte	0x5
	.byte	0x3
	.4byte	memp_SYS_TIMEOUT
	.byte	0x10
	.4byte	0xeb
	.4byte	0x831
	.byte	0x18
	.4byte	0xa0
	.2byte	0x136
	.byte	0
	.byte	0x15
	.4byte	.LASF116
	.byte	0xa
	.byte	0x6a
	.byte	0x6
	.4byte	0x820
	.byte	0x5
	.byte	0x3
	.4byte	memp_memory_NETDB_base
	.byte	0x16
	.4byte	.LASF117
	.byte	0xa
	.byte	0x6a
	.byte	0xdc
	.4byte	0x218
	.byte	0x5
	.byte	0x3
	.4byte	memp_stats_NETDB
	.byte	0x19
	.4byte	.LASF118
	.byte	0xa
	.byte	0x6a
	.2byte	0x102
	.4byte	0x1b1
	.byte	0x5
	.byte	0x3
	.4byte	memp_tab_NETDB
	.byte	0x17
	.4byte	.LASF119
	.byte	0xa
	.byte	0x6a
	.2byte	0x129
	.4byte	0x213
	.byte	0x5
	.byte	0x3
	.4byte	memp_NETDB
	.byte	0x10
	.4byte	0xeb
	.4byte	0x88c
	.byte	0x18
	.4byte	0xa0
	.2byte	0x802
	.byte	0
	.byte	0x15
	.4byte	.LASF120
	.byte	0xa
	.byte	0x85
	.byte	0x6
	.4byte	0x87b
	.byte	0x5
	.byte	0x3
	.4byte	memp_memory_PBUF_base
	.byte	0x16
	.4byte	.LASF121
	.byte	0xa
	.byte	0x85
	.byte	0xc0
	.4byte	0x218
	.byte	0x5
	.byte	0x3
	.4byte	memp_stats_PBUF
	.byte	0x16
	.4byte	.LASF122
	.byte	0xa
	.byte	0x85
	.byte	0xe5
	.4byte	0x1b1
	.byte	0x5
	.byte	0x3
	.4byte	memp_tab_PBUF
	.byte	0x17
	.4byte	.LASF123
	.byte	0xa
	.byte	0x85
	.2byte	0x10b
	.4byte	0x213
	.byte	0x5
	.byte	0x3
	.4byte	memp_PBUF
	.byte	0x10
	.4byte	0xeb
	.4byte	0x8e5
	.byte	0x11
	.4byte	0xa0
	.byte	0x2
	.byte	0
	.byte	0x15
	.4byte	.LASF124
	.byte	0xa
	.byte	0x86
	.byte	0x6
	.4byte	0x8d5
	.byte	0x5
	.byte	0x3
	.4byte	memp_memory_PBUF_POOL_base
	.byte	0x19
	.4byte	.LASF125
	.byte	0xa
	.byte	0x86
	.2byte	0x11c
	.4byte	0x218
	.byte	0x5
	.byte	0x3
	.4byte	memp_stats_PBUF_POOL
	.byte	0x19
	.4byte	.LASF126
	.byte	0xa
	.byte	0x86
	.2byte	0x146
	.4byte	0x1b1
	.byte	0x5
	.byte	0x3
	.4byte	memp_tab_PBUF_POOL
	.byte	0x17
	.4byte	.LASF127
	.byte	0xa
	.byte	0x86
	.2byte	0x171
	.4byte	0x213
	.byte	0x5
	.byte	0x3
	.4byte	memp_PBUF_POOL
	.byte	0x1a
	.4byte	0x46d
	.byte	0x1
	.byte	0x51
	.byte	0x1f
	.byte	0x5
	.byte	0x3
	.4byte	memp_pools
	.byte	0x1b
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x1a4
	.byte	0x1
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x998
	.byte	0x1c
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x1a4
	.byte	0x12
	.4byte	0x17e
	.4byte	.LLST14
	.byte	0x1d
	.string	"mem"
	.byte	0x1
	.2byte	0x1a4
	.byte	0x1e
	.4byte	0xa7
	.4byte	.LLST15
	.byte	0x1e
	.4byte	.LVL39
	.4byte	0xbc1
	.4byte	0x98e
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0x20
	.4byte	.LVL41
	.4byte	0x9ea
	.byte	0
	.byte	0x1b
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x193
	.byte	0x1
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x9ea
	.byte	0x1c
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x193
	.byte	0x28
	.4byte	0x462
	.4byte	.LLST12
	.byte	0x1d
	.string	"mem"
	.byte	0x1
	.2byte	0x193
	.byte	0x34
	.4byte	0xa7
	.4byte	.LLST13
	.byte	0x21
	.4byte	.LVL36
	.4byte	0x9ea
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x167
	.byte	0x1
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0xa58
	.byte	0x1c
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x167
	.byte	0x2b
	.4byte	0x462
	.4byte	.LLST3
	.byte	0x1d
	.string	"mem"
	.byte	0x1
	.2byte	0x167
	.byte	0x37
	.4byte	0xa7
	.4byte	.LLST4
	.byte	0x23
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x169
	.byte	0x10
	.4byte	0x1b1
	.4byte	.LLST5
	.byte	0x23
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x16a
	.byte	0xe
	.4byte	0x25
	.4byte	.LLST6
	.byte	0x24
	.4byte	.LVL10
	.4byte	0xbcd
	.byte	0x20
	.4byte	.LVL13
	.4byte	0xbda
	.byte	0
	.byte	0x25
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x151
	.byte	0x1
	.4byte	0xa7
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0xaae
	.byte	0x1c
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x151
	.byte	0x14
	.4byte	0x17e
	.4byte	.LLST11
	.byte	0x26
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x156
	.byte	0x9
	.4byte	0xa7
	.byte	0x20
	.4byte	.LVL32
	.4byte	0xaec
	.byte	0x27
	.4byte	.LVL34
	.4byte	0xbc1
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.byte	0x25
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x137
	.byte	0x1
	.4byte	0xa7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0xaec
	.byte	0x1c
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x137
	.byte	0x2a
	.4byte	0x462
	.4byte	.LLST10
	.byte	0x21
	.4byte	.LVL29
	.4byte	0xaec
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	.LASF144
	.byte	0x1
	.byte	0xf5
	.byte	0x1
	.4byte	0xa7
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0xb49
	.byte	0x29
	.4byte	.LASF42
	.byte	0x1
	.byte	0xf5
	.byte	0x2d
	.4byte	0x462
	.4byte	.LLST0
	.byte	0x2a
	.4byte	.LASF39
	.byte	0x1
	.byte	0xfa
	.byte	0x10
	.4byte	0x1b1
	.4byte	.LLST1
	.byte	0x2a
	.4byte	.LASF131
	.byte	0x1
	.byte	0xfb
	.byte	0xe
	.4byte	0x25
	.4byte	.LLST2
	.byte	0x24
	.4byte	.LVL1
	.4byte	0xbcd
	.byte	0x24
	.4byte	.LVL3
	.4byte	0xbda
	.byte	0
	.byte	0x2b
	.4byte	.LASF134
	.byte	0x1
	.byte	0xe0
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0xb7e
	.byte	0x2c
	.string	"i"
	.byte	0x1
	.byte	0xe2
	.byte	0x9
	.4byte	0xf7
	.4byte	.LLST9
	.byte	0x27
	.4byte	.LVL24
	.4byte	0xb7e
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2b
	.4byte	.LASF135
	.byte	0x1
	.byte	0xaf
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0xbc1
	.byte	0x2d
	.4byte	.LASF42
	.byte	0x1
	.byte	0xaf
	.byte	0x28
	.4byte	0x462
	.byte	0x1
	.byte	0x5a
	.byte	0x2c
	.string	"i"
	.byte	0x1
	.byte	0xb4
	.byte	0x7
	.4byte	0x31
	.4byte	.LLST7
	.byte	0x2a
	.4byte	.LASF39
	.byte	0x1
	.byte	0xb5
	.byte	0x10
	.4byte	0x1b1
	.4byte	.LLST8
	.byte	0
	.byte	0x2e
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0xb
	.byte	0xc8
	.byte	0x5
	.byte	0x2f
	.4byte	.LASF137
	.4byte	.LASF137
	.byte	0xc
	.2byte	0x20f
	.byte	0xc
	.byte	0x2f
	.4byte	.LASF138
	.4byte	.LASF138
	.byte	0xc
	.2byte	0x210
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
	.byte	0xd
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
	.byte	0xe
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
	.byte	0xf
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
	.byte	0xb
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
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x14
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
	.byte	0x15
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
	.byte	0x16
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
	.byte	0x5
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0x5
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
	.byte	0x5
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x34
	.byte	0
	.byte	0x47
	.byte	0x13
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x2
	.byte	0x18
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
	.byte	0x17
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
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
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
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x25
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
	.byte	0x26
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
	.byte	0x27
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x28
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
	.byte	0x29
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
	.byte	0x2a
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
	.byte	0x2b
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
	.byte	0x2c
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
	.byte	0x2d
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
	.byte	0x2e
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
	.byte	0x2f
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
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL37
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL39-1
	.4byte	.LVL39
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL41-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL41-1
	.4byte	.LVL41
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL35
	.4byte	.LVL36-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL36-1
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL35
	.4byte	.LVL36-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL36-1
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10-1
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL11
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL10-1
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL12
	.4byte	.LFE10
	.2byte	0x2
	.byte	0x72
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL10
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
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
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL28
	.4byte	.LVL29-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL29-1
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LFE8
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
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x5
	.byte	0x78
	.byte	0
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x7
	.byte	0x78
	.byte	0
	.byte	0x32
	.byte	0x25
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x7
	.byte	0x78
	.byte	0x7c
	.byte	0x32
	.byte	0x25
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x3
	.byte	0x7e
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL19
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x54
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF134:
	.string	"memp_init"
.LASF107:
	.string	"memp_NETCONN"
.LASF32:
	.string	"MEMP_SYS_TIMEOUT"
.LASF78:
	.string	"memp_tab_RAW_PCB"
.LASF117:
	.string	"memp_stats_NETDB"
.LASF26:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF80:
	.string	"memp_memory_UDP_PCB_base"
.LASF18:
	.string	"uintptr_t"
.LASF95:
	.string	"memp_TCP_SEG"
.LASF69:
	.string	"ip_frag"
.LASF2:
	.string	"__uint8_t"
.LASF129:
	.string	"memp_free"
.LASF114:
	.string	"memp_tab_SYS_TIMEOUT"
.LASF128:
	.string	"type"
.LASF136:
	.string	"printf"
.LASF55:
	.string	"chkerr"
.LASF11:
	.string	"long long unsigned int"
.LASF101:
	.string	"memp_stats_NETBUF"
.LASF112:
	.string	"memp_memory_SYS_TIMEOUT_base"
.LASF57:
	.string	"memerr"
.LASF27:
	.string	"MEMP_TCP_SEG"
.LASF33:
	.string	"MEMP_NETDB"
.LASF61:
	.string	"cachehit"
.LASF41:
	.string	"next"
.LASF121:
	.string	"memp_stats_PBUF"
.LASF141:
	.string	"C:\\\\Users\\\\cwier\\\\Documents\\\\GitHub\\\\qcom\\\\examples\\\\solutions\\\\rtsp_softap_cam\\\\build\\\\build_out\\\\components\\\\net\\\\lwip\\\\lwip"
.LASF10:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF137:
	.string	"sys_arch_protect"
.LASF133:
	.string	"memp_malloc_pool"
.LASF72:
	.string	"memp_pools"
.LASF28:
	.string	"MEMP_REASSDATA"
.LASF104:
	.string	"memp_memory_NETCONN_base"
.LASF8:
	.string	"long int"
.LASF86:
	.string	"memp_tab_TCP_PCB"
.LASF23:
	.string	"MEMP_RAW_PCB"
.LASF91:
	.string	"memp_TCP_PCB_LISTEN"
.LASF43:
	.string	"stats"
.LASF68:
	.string	"etharp"
.LASF75:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF17:
	.string	"uint16_t"
.LASF50:
	.string	"illegal"
.LASF83:
	.string	"memp_UDP_PCB"
.LASF127:
	.string	"memp_PBUF_POOL"
.LASF67:
	.string	"link"
.LASF4:
	.string	"__int16_t"
.LASF21:
	.string	"s16_t"
.LASF88:
	.string	"memp_memory_TCP_PCB_LISTEN_base"
.LASF87:
	.string	"memp_TCP_PCB"
.LASF132:
	.string	"memp_malloc"
.LASF59:
	.string	"proterr"
.LASF13:
	.string	"unsigned int"
.LASF9:
	.string	"long unsigned int"
.LASF53:
	.string	"recv"
.LASF47:
	.string	"name"
.LASF25:
	.string	"MEMP_TCP_PCB"
.LASF81:
	.string	"memp_stats_UDP_PCB"
.LASF44:
	.string	"size"
.LASF7:
	.string	"short unsigned int"
.LASF119:
	.string	"memp_NETDB"
.LASF122:
	.string	"memp_tab_PBUF"
.LASF84:
	.string	"memp_memory_TCP_PCB_base"
.LASF140:
	.string	".\\components\\net\\lwip\\lwip\\src\\core\\memp.c"
.LASF143:
	.string	"do_memp_free_pool"
.LASF79:
	.string	"memp_RAW_PCB"
.LASF98:
	.string	"memp_tab_REASSDATA"
.LASF89:
	.string	"memp_stats_TCP_PCB_LISTEN"
.LASF63:
	.string	"stats_sys"
.LASF139:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF40:
	.string	"memp_desc"
.LASF130:
	.string	"memp_free_pool"
.LASF93:
	.string	"memp_stats_TCP_SEG"
.LASF120:
	.string	"memp_memory_PBUF_base"
.LASF45:
	.string	"base"
.LASF24:
	.string	"MEMP_UDP_PCB"
.LASF36:
	.string	"MEMP_MAX"
.LASF65:
	.string	"mbox"
.LASF19:
	.string	"u8_t"
.LASF76:
	.string	"memp_memory_RAW_PCB_base"
.LASF37:
	.string	"memp_t"
.LASF42:
	.string	"desc"
.LASF131:
	.string	"old_level"
.LASF1:
	.string	"sys_prot_t"
.LASF105:
	.string	"memp_stats_NETCONN"
.LASF62:
	.string	"stats_syselem"
.LASF77:
	.string	"memp_stats_RAW_PCB"
.LASF66:
	.string	"stats_"
.LASF70:
	.string	"icmp"
.LASF49:
	.string	"used"
.LASF106:
	.string	"memp_tab_NETCONN"
.LASF58:
	.string	"rterr"
.LASF100:
	.string	"memp_memory_NETBUF_base"
.LASF110:
	.string	"memp_tab_TCPIP_MSG_API"
.LASF115:
	.string	"memp_SYS_TIMEOUT"
.LASF74:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_ACD"
.LASF113:
	.string	"memp_stats_SYS_TIMEOUT"
.LASF64:
	.string	"mutex"
.LASF144:
	.string	"do_memp_malloc_pool"
.LASF124:
	.string	"memp_memory_PBUF_POOL_base"
.LASF3:
	.string	"unsigned char"
.LASF103:
	.string	"memp_NETBUF"
.LASF5:
	.string	"short int"
.LASF54:
	.string	"drop"
.LASF125:
	.string	"memp_stats_PBUF_POOL"
.LASF12:
	.string	"__uintptr_t"
.LASF51:
	.string	"stats_proto"
.LASF73:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF96:
	.string	"memp_memory_REASSDATA_base"
.LASF85:
	.string	"memp_stats_TCP_PCB"
.LASF92:
	.string	"memp_memory_TCP_SEG_base"
.LASF31:
	.string	"MEMP_TCPIP_MSG_API"
.LASF14:
	.string	"char"
.LASF118:
	.string	"memp_tab_NETDB"
.LASF29:
	.string	"MEMP_NETBUF"
.LASF6:
	.string	"__uint16_t"
.LASF39:
	.string	"memp"
.LASF30:
	.string	"MEMP_NETCONN"
.LASF90:
	.string	"memp_tab_TCP_PCB_LISTEN"
.LASF99:
	.string	"memp_REASSDATA"
.LASF35:
	.string	"MEMP_PBUF_POOL"
.LASF60:
	.string	"opterr"
.LASF82:
	.string	"memp_tab_UDP_PCB"
.LASF97:
	.string	"memp_stats_REASSDATA"
.LASF116:
	.string	"memp_memory_NETDB_base"
.LASF109:
	.string	"memp_stats_TCPIP_MSG_API"
.LASF20:
	.string	"u16_t"
.LASF22:
	.string	"mem_ptr_t"
.LASF71:
	.string	"lwip_stats"
.LASF38:
	.string	"mem_size_t"
.LASF142:
	.string	"lwip_internal_netif_client_data_index"
.LASF56:
	.string	"lenerr"
.LASF111:
	.string	"memp_TCPIP_MSG_API"
.LASF46:
	.string	"stats_mem"
.LASF15:
	.string	"uint8_t"
.LASF52:
	.string	"xmit"
.LASF126:
	.string	"memp_tab_PBUF_POOL"
.LASF48:
	.string	"avail"
.LASF94:
	.string	"memp_tab_TCP_SEG"
.LASF108:
	.string	"memp_memory_TCPIP_MSG_API_base"
.LASF138:
	.string	"sys_arch_unprotect"
.LASF135:
	.string	"memp_init_pool"
.LASF102:
	.string	"memp_tab_NETBUF"
.LASF16:
	.string	"int16_t"
.LASF34:
	.string	"MEMP_PBUF"
.LASF123:
	.string	"memp_PBUF"
	.ident	"GCC: (GNU) 10.4.0"
