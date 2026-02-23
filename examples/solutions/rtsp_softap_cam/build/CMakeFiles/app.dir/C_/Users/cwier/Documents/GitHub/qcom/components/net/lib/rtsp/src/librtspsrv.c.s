	.file	"librtspsrv.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.rtsp_set_video_fps,"ax",@progbits
	.align	1
	.globl	rtsp_set_video_fps
	.type	rtsp_set_video_fps, @function
rtsp_set_video_fps:
.LFB39:
	.file 1 ".\\components\\net\\lib\\rtsp\\src\\librtspsrv.c"
	.loc 1 17 1
	.cfi_startproc
.LVL0:
	.loc 1 18 5
	.loc 1 18 16 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	sw	a0,%lo(.LANCHOR0)(a5)
	.loc 1 19 1
	ret
	.cfi_endproc
.LFE39:
	.size	rtsp_set_video_fps, .-rtsp_set_video_fps
	.section	.text.rtsp_get_video_fps,"ax",@progbits
	.align	1
	.globl	rtsp_get_video_fps
	.type	rtsp_get_video_fps, @function
rtsp_get_video_fps:
.LFB40:
	.loc 1 22 1 is_stmt 1
	.cfi_startproc
	.loc 1 23 5
	.loc 1 24 1 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	lw	a0,%lo(.LANCHOR0)(a5)
	ret
	.cfi_endproc
.LFE40:
	.size	rtsp_get_video_fps, .-rtsp_get_video_fps
	.section	.text.set_strm_cb,"ax",@progbits
	.align	1
	.globl	set_strm_cb
	.type	set_strm_cb, @function
set_strm_cb:
.LFB41:
	.loc 1 27 1 is_stmt 1
	.cfi_startproc
.LVL1:
	.loc 1 28 5
	.loc 1 28 13 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	sw	a0,%lo(.LANCHOR1)(a5)
	.loc 1 29 5 is_stmt 1
	.loc 1 30 1 is_stmt 0
	ret
	.cfi_endproc
.LFE41:
	.size	set_strm_cb, .-set_strm_cb
	.section	.text.rtsp_set_strm_report_cb,"ax",@progbits
	.align	1
	.globl	rtsp_set_strm_report_cb
	.type	rtsp_set_strm_report_cb, @function
rtsp_set_strm_report_cb:
.LFB42:
	.loc 1 33 1 is_stmt 1
	.cfi_startproc
.LVL2:
	.loc 1 34 5
	.loc 1 34 15 is_stmt 0
	lui	a5,%hi(.LANCHOR2)
	sw	a0,%lo(.LANCHOR2)(a5)
	.loc 1 35 1
	ret
	.cfi_endproc
.LFE42:
	.size	rtsp_set_strm_report_cb, .-rtsp_set_strm_report_cb
	.section	.text.get_strm_cb,"ax",@progbits
	.align	1
	.globl	get_strm_cb
	.type	get_strm_cb, @function
get_strm_cb:
.LFB43:
	.loc 1 38 1 is_stmt 1
	.cfi_startproc
.LVL3:
	.loc 1 39 5
	.loc 1 39 8 is_stmt 0
	beq	a0,zero,.L5
	.loc 1 40 9 is_stmt 1
	.loc 1 40 14 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	lw	a5,%lo(.LANCHOR1)(a5)
	sw	a5,0(a0)
	.loc 1 42 5 is_stmt 1
.L5:
	.loc 1 43 1 is_stmt 0
	ret
	.cfi_endproc
.LFE43:
	.size	get_strm_cb, .-get_strm_cb
	.section	.text.rtsp_strm_report_cb,"ax",@progbits
	.align	1
	.globl	rtsp_strm_report_cb
	.type	rtsp_strm_report_cb, @function
rtsp_strm_report_cb:
.LFB44:
	.loc 1 46 1 is_stmt 1
	.cfi_startproc
.LVL4:
	.loc 1 47 5
	.loc 1 47 9 is_stmt 0
	lui	a5,%hi(.LANCHOR2)
	lw	a5,%lo(.LANCHOR2)(a5)
	.loc 1 47 8
	beq	a5,zero,.L10
	.loc 1 48 9 is_stmt 1
	jr	a5
.LVL5:
.L10:
	.loc 1 51 1 is_stmt 0
	ret
	.cfi_endproc
.LFE44:
	.size	rtsp_strm_report_cb, .-rtsp_strm_report_cb
	.section	.text.rtsp_set_audioFmt,"ax",@progbits
	.align	1
	.globl	rtsp_set_audioFmt
	.type	rtsp_set_audioFmt, @function
rtsp_set_audioFmt:
.LFB45:
	.loc 1 55 1 is_stmt 1
	.cfi_startproc
.LVL6:
	.loc 1 56 5
	.loc 1 56 8 is_stmt 0
	bne	a0,zero,.L13
	.loc 1 57 9 is_stmt 1
	.loc 1 57 19 is_stmt 0
	lui	a5,%hi(.LANCHOR3)
	li	a4,97
.L17:
	.loc 1 63 19
	sw	a4,%lo(.LANCHOR3)(a5)
.L12:
	.loc 1 64 1
	ret
.L13:
	.loc 1 58 10 is_stmt 1
	.loc 1 58 13 is_stmt 0
	li	a5,1
	bne	a0,a5,.L15
	.loc 1 59 9 is_stmt 1
	.loc 1 59 19 is_stmt 0
	lui	a5,%hi(.LANCHOR3)
	li	a4,8
	j	.L17
.L15:
	.loc 1 60 10 is_stmt 1
	.loc 1 60 13 is_stmt 0
	li	a5,2
	bne	a0,a5,.L16
	.loc 1 61 9 is_stmt 1
	.loc 1 61 19 is_stmt 0
	lui	a5,%hi(.LANCHOR3)
	sw	zero,%lo(.LANCHOR3)(a5)
	ret
.L16:
	.loc 1 62 10 is_stmt 1
	.loc 1 62 13 is_stmt 0
	li	a5,3
	bne	a0,a5,.L12
	.loc 1 63 9 is_stmt 1
	.loc 1 63 19 is_stmt 0
	lui	a5,%hi(.LANCHOR3)
	li	a4,101
	j	.L17
	.cfi_endproc
.LFE45:
	.size	rtsp_set_audioFmt, .-rtsp_set_audioFmt
	.section	.text.rtsp_set_videoFmt,"ax",@progbits
	.align	1
	.globl	rtsp_set_videoFmt
	.type	rtsp_set_videoFmt, @function
rtsp_set_videoFmt:
.LFB46:
	.loc 1 67 1 is_stmt 1
	.cfi_startproc
.LVL7:
	.loc 1 68 5
	.loc 1 68 8 is_stmt 0
	li	a5,1
	bne	a0,a5,.L19
	.loc 1 69 9 is_stmt 1
	.loc 1 69 19 is_stmt 0
	lui	a5,%hi(.LANCHOR4)
	li	a4,96
.L21:
	.loc 1 71 19
	sw	a4,%lo(.LANCHOR4)(a5)
.L18:
	.loc 1 73 1
	ret
.L19:
	.loc 1 70 10 is_stmt 1
	.loc 1 70 13 is_stmt 0
	bne	a0,zero,.L18
	.loc 1 71 9 is_stmt 1
	.loc 1 71 19 is_stmt 0
	lui	a5,%hi(.LANCHOR4)
	li	a4,26
	j	.L21
	.cfi_endproc
.LFE46:
	.size	rtsp_set_videoFmt, .-rtsp_set_videoFmt
	.section	.text.rtsp_get_videoFmt,"ax",@progbits
	.align	1
	.globl	rtsp_get_videoFmt
	.type	rtsp_get_videoFmt, @function
rtsp_get_videoFmt:
.LFB47:
	.loc 1 76 1 is_stmt 1
	.cfi_startproc
	.loc 1 77 5
	.loc 1 78 1 is_stmt 0
	lui	a5,%hi(.LANCHOR4)
	lw	a0,%lo(.LANCHOR4)(a5)
	ret
	.cfi_endproc
.LFE47:
	.size	rtsp_get_videoFmt, .-rtsp_get_videoFmt
	.section	.text.rtsp_get_audioFmt,"ax",@progbits
	.align	1
	.globl	rtsp_get_audioFmt
	.type	rtsp_get_audioFmt, @function
rtsp_get_audioFmt:
.LFB48:
	.loc 1 81 1 is_stmt 1
	.cfi_startproc
	.loc 1 82 5
	.loc 1 83 1 is_stmt 0
	lui	a5,%hi(.LANCHOR3)
	lw	a0,%lo(.LANCHOR3)(a5)
	ret
	.cfi_endproc
.LFE48:
	.size	rtsp_get_audioFmt, .-rtsp_get_audioFmt
	.section	.text.rtsp_get_audio_en,"ax",@progbits
	.align	1
	.globl	rtsp_get_audio_en
	.type	rtsp_get_audio_en, @function
rtsp_get_audio_en:
.LFB49:
	.loc 1 86 1 is_stmt 1
	.cfi_startproc
	.loc 1 87 5
	.loc 1 88 1 is_stmt 0
	lui	a5,%hi(.LANCHOR5)
	lw	a0,%lo(.LANCHOR5)(a5)
	ret
	.cfi_endproc
.LFE49:
	.size	rtsp_get_audio_en, .-rtsp_get_audio_en
	.section	.text.rtsp_get_video_en,"ax",@progbits
	.align	1
	.globl	rtsp_get_video_en
	.type	rtsp_get_video_en, @function
rtsp_get_video_en:
.LFB50:
	.loc 1 91 1 is_stmt 1
	.cfi_startproc
	.loc 1 92 5
	.loc 1 93 1 is_stmt 0
	lui	a5,%hi(.LANCHOR6)
	lw	a0,%lo(.LANCHOR6)(a5)
	ret
	.cfi_endproc
.LFE50:
	.size	rtsp_get_video_en, .-rtsp_get_video_en
	.section	.text.rtsp_set_video_en,"ax",@progbits
	.align	1
	.globl	rtsp_set_video_en
	.type	rtsp_set_video_en, @function
rtsp_set_video_en:
.LFB51:
	.loc 1 96 1 is_stmt 1
	.cfi_startproc
.LVL8:
	.loc 1 97 5
	.loc 1 97 15 is_stmt 0
	lui	a5,%hi(.LANCHOR6)
	sw	a0,%lo(.LANCHOR6)(a5)
	.loc 1 98 1
	ret
	.cfi_endproc
.LFE51:
	.size	rtsp_set_video_en, .-rtsp_set_video_en
	.section	.text.rtsp_set_audio_en,"ax",@progbits
	.align	1
	.globl	rtsp_set_audio_en
	.type	rtsp_set_audio_en, @function
rtsp_set_audio_en:
.LFB52:
	.loc 1 101 1 is_stmt 1
	.cfi_startproc
.LVL9:
	.loc 1 102 5
	.loc 1 102 15 is_stmt 0
	lui	a5,%hi(.LANCHOR5)
	sw	a0,%lo(.LANCHOR5)(a5)
	.loc 1 103 1
	ret
	.cfi_endproc
.LFE52:
	.size	rtsp_set_audio_en, .-rtsp_set_audio_en
	.section	.rodata.rtsp_init_lib.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"*** RTSP stream callback MUST be set properly!\r\n"
	.section	.text.rtsp_init_lib,"ax",@progbits
	.align	1
	.globl	rtsp_init_lib
	.type	rtsp_init_lib, @function
rtsp_init_lib:
.LFB53:
	.loc 1 106 1 is_stmt 1
	.cfi_startproc
	.loc 1 107 5
	.loc 1 107 8 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	lw	a5,%lo(.LANCHOR1)(a5)
	.loc 1 106 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 107 8
	bne	a5,zero,.L29
	.loc 1 108 9 is_stmt 1
	lui	a0,%hi(.LC0)
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL10:
	.loc 1 109 9
	.loc 1 109 16 is_stmt 0
	li	a0,-1
.L28:
	.loc 1 113 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L29:
	.cfi_restore_state
	.loc 1 111 5 is_stmt 1
	call	start_rtsp_srv
.LVL11:
	.loc 1 112 5
	.loc 1 112 12 is_stmt 0
	li	a0,0
	j	.L28
	.cfi_endproc
.LFE53:
	.size	rtsp_init_lib, .-rtsp_init_lib
	.section	.text.rtsp_deinit_lib,"ax",@progbits
	.align	1
	.globl	rtsp_deinit_lib
	.type	rtsp_deinit_lib, @function
rtsp_deinit_lib:
.LFB54:
	.loc 1 116 1 is_stmt 1
	.cfi_startproc
	.loc 1 117 5
	.loc 1 116 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 117 5
	call	stop_rtsp_srv
.LVL12:
	.loc 1 118 5 is_stmt 1
	.loc 1 119 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE54:
	.size	rtsp_deinit_lib, .-rtsp_deinit_lib
	.section	.bss.gAudio_en,"aw",@nobits
	.align	2
	.set	.LANCHOR5,. + 0
	.type	gAudio_en, @object
	.size	gAudio_en, 4
gAudio_en:
	.zero	4
	.section	.bss.get_frm,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	get_frm, @object
	.size	get_frm, 4
get_frm:
	.zero	4
	.section	.bss.report_fn,"aw",@nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	report_fn, @object
	.size	report_fn, 4
report_fn:
	.zero	4
	.section	.data.gAudioFmt,"aw"
	.align	2
	.set	.LANCHOR3,. + 0
	.type	gAudioFmt, @object
	.size	gAudioFmt, 4
gAudioFmt:
	.word	97
	.section	.data.gVideoFmt,"aw"
	.align	2
	.set	.LANCHOR4,. + 0
	.type	gVideoFmt, @object
	.size	gVideoFmt, 4
gVideoFmt:
	.word	26
	.section	.data.gVideo_en,"aw"
	.align	2
	.set	.LANCHOR6,. + 0
	.type	gVideo_en, @object
	.size	gVideo_en, 4
gVideo_en:
	.word	1
	.section	.data.gVideo_fps,"aw"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	gVideo_fps, @object
	.size	gVideo_fps, 4
gVideo_fps:
	.word	25
	.text
.Letext0:
	.file 2 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\machine\\_default_types.h"
	.file 3 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\sys\\_stdint.h"
	.file 4 ".\\components\\net\\lib\\rtsp\\inc\\librtspsrv.h"
	.file 5 ".\\components\\net\\lib\\rtsp\\src\\rtp.h"
	.file 6 ".\\components\\net\\lib\\rtsp\\src\\rtsp_srv.h"
	.file 7 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x4fb
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF73
	.byte	0xc
	.4byte	.LASF74
	.4byte	.LASF75
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
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
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x54
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x48
	.byte	0x5
	.4byte	.LASF17
	.byte	0x7
	.byte	0x1
	.4byte	0x2c
	.byte	0x4
	.byte	0x1c
	.byte	0x6
	.4byte	0xba
	.byte	0x6
	.4byte	.LASF11
	.byte	0x1
	.byte	0x6
	.4byte	.LASF12
	.byte	0x2
	.byte	0x6
	.4byte	.LASF13
	.byte	0x3
	.byte	0x6
	.4byte	.LASF14
	.byte	0x4
	.byte	0x6
	.4byte	.LASF15
	.byte	0x5
	.byte	0x6
	.4byte	.LASF16
	.byte	0x6
	.byte	0
	.byte	0x5
	.4byte	.LASF18
	.byte	0x7
	.byte	0x1
	.4byte	0x2c
	.byte	0x4
	.byte	0x25
	.byte	0x6
	.4byte	0xd9
	.byte	0x6
	.4byte	.LASF19
	.byte	0
	.byte	0x6
	.4byte	.LASF20
	.byte	0x1
	.byte	0
	.byte	0x7
	.byte	0x7
	.byte	0x1
	.4byte	0x2c
	.byte	0x4
	.byte	0x2a
	.byte	0x6
	.4byte	0x100
	.byte	0x6
	.4byte	.LASF21
	.byte	0
	.byte	0x6
	.4byte	.LASF22
	.byte	0x1
	.byte	0x6
	.4byte	.LASF23
	.byte	0x2
	.byte	0x6
	.4byte	.LASF24
	.byte	0x3
	.byte	0
	.byte	0x7
	.byte	0x7
	.byte	0x1
	.4byte	0x2c
	.byte	0x4
	.byte	0x31
	.byte	0x6
	.4byte	0x11b
	.byte	0x6
	.4byte	.LASF25
	.byte	0
	.byte	0x6
	.4byte	.LASF26
	.byte	0x1
	.byte	0
	.byte	0x8
	.4byte	.LASF31
	.byte	0x10
	.byte	0x4
	.byte	0x37
	.byte	0x8
	.4byte	0x15d
	.byte	0x9
	.4byte	.LASF27
	.byte	0x4
	.byte	0x38
	.byte	0x9
	.4byte	0x69
	.byte	0
	.byte	0x9
	.4byte	.LASF18
	.byte	0x4
	.byte	0x39
	.byte	0x13
	.4byte	0xba
	.byte	0x4
	.byte	0x9
	.4byte	.LASF28
	.byte	0x4
	.byte	0x3a
	.byte	0xb
	.4byte	0x15d
	.byte	0x8
	.byte	0x9
	.4byte	.LASF29
	.byte	0x4
	.byte	0x3b
	.byte	0xb
	.4byte	0x16a
	.byte	0xc
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x163
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF30
	.byte	0xb
	.byte	0x4
	.byte	0x8
	.4byte	.LASF32
	.byte	0x10
	.byte	0x4
	.byte	0x3f
	.byte	0x8
	.4byte	0x1ae
	.byte	0x9
	.4byte	.LASF33
	.byte	0x4
	.byte	0x40
	.byte	0x12
	.4byte	0x70
	.byte	0
	.byte	0x9
	.4byte	.LASF17
	.byte	0x4
	.byte	0x41
	.byte	0x13
	.4byte	0x83
	.byte	0x4
	.byte	0x9
	.4byte	.LASF34
	.byte	0x4
	.byte	0x42
	.byte	0xb
	.4byte	0x15d
	.byte	0x8
	.byte	0x9
	.4byte	.LASF35
	.byte	0x4
	.byte	0x43
	.byte	0xe
	.4byte	0x77
	.byte	0xc
	.byte	0
	.byte	0x3
	.4byte	.LASF36
	.byte	0x4
	.byte	0x49
	.byte	0xf
	.4byte	0x1ba
	.byte	0xa
	.byte	0x4
	.4byte	0x1c0
	.byte	0xc
	.4byte	0x69
	.4byte	0x1d4
	.byte	0xd
	.4byte	0x1d4
	.byte	0xd
	.4byte	0x1da
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x11b
	.byte	0xa
	.byte	0x4
	.4byte	0x16c
	.byte	0x3
	.4byte	.LASF37
	.byte	0x4
	.byte	0x4b
	.byte	0x10
	.4byte	0x1ec
	.byte	0xa
	.byte	0x4
	.4byte	0x1f2
	.byte	0xe
	.4byte	0x1fd
	.byte	0xd
	.4byte	0x69
	.byte	0
	.byte	0x7
	.byte	0x7
	.byte	0x1
	.4byte	0x2c
	.byte	0x5
	.byte	0x12
	.byte	0x6
	.4byte	0x230
	.byte	0x6
	.4byte	.LASF38
	.byte	0x1a
	.byte	0x6
	.4byte	.LASF39
	.byte	0x60
	.byte	0x6
	.4byte	.LASF40
	.byte	0
	.byte	0x6
	.4byte	.LASF41
	.byte	0x8
	.byte	0x6
	.4byte	.LASF42
	.byte	0x61
	.byte	0x6
	.4byte	.LASF43
	.byte	0x65
	.byte	0
	.byte	0xf
	.4byte	.LASF44
	.byte	0x1
	.byte	0x8
	.byte	0x12
	.4byte	0x1ae
	.byte	0x5
	.byte	0x3
	.4byte	get_frm
	.byte	0xf
	.4byte	.LASF45
	.byte	0x1
	.byte	0x9
	.byte	0x19
	.4byte	0x1e0
	.byte	0x5
	.byte	0x3
	.4byte	report_fn
	.byte	0xf
	.4byte	.LASF46
	.byte	0x1
	.byte	0xa
	.byte	0xc
	.4byte	0x69
	.byte	0x5
	.byte	0x3
	.4byte	gAudio_en
	.byte	0xf
	.4byte	.LASF47
	.byte	0x1
	.byte	0xb
	.byte	0xc
	.4byte	0x69
	.byte	0x5
	.byte	0x3
	.4byte	gVideo_en
	.byte	0xf
	.4byte	.LASF48
	.byte	0x1
	.byte	0xc
	.byte	0xc
	.4byte	0x69
	.byte	0x5
	.byte	0x3
	.4byte	gVideo_fps
	.byte	0xf
	.4byte	.LASF49
	.byte	0x1
	.byte	0xd
	.byte	0xc
	.4byte	0x69
	.byte	0x5
	.byte	0x3
	.4byte	gAudioFmt
	.byte	0xf
	.4byte	.LASF50
	.byte	0x1
	.byte	0xe
	.byte	0xc
	.4byte	0x69
	.byte	0x5
	.byte	0x3
	.4byte	gVideoFmt
	.byte	0x10
	.4byte	.LASF51
	.byte	0x1
	.byte	0x73
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.byte	0x1
	.byte	0x9c
	.4byte	0x2d2
	.byte	0x11
	.4byte	.LVL12
	.4byte	0x4da
	.byte	0
	.byte	0x10
	.4byte	.LASF52
	.byte	0x1
	.byte	0x69
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.byte	0x1
	.byte	0x9c
	.4byte	0x30d
	.byte	0x12
	.4byte	.LVL10
	.4byte	0x4e6
	.4byte	0x303
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x11
	.4byte	.LVL11
	.4byte	0x4f2
	.byte	0
	.byte	0x14
	.4byte	.LASF53
	.byte	0x1
	.byte	0x64
	.byte	0x6
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.byte	0x1
	.byte	0x9c
	.4byte	0x331
	.byte	0x15
	.string	"en"
	.byte	0x1
	.byte	0x64
	.byte	0x1c
	.4byte	0x69
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x14
	.4byte	.LASF54
	.byte	0x1
	.byte	0x5f
	.byte	0x6
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.byte	0x1
	.byte	0x9c
	.4byte	0x355
	.byte	0x15
	.string	"en"
	.byte	0x1
	.byte	0x5f
	.byte	0x1c
	.4byte	0x69
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x16
	.4byte	.LASF55
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.byte	0x1
	.byte	0x9c
	.byte	0x16
	.4byte	.LASF56
	.byte	0x1
	.byte	0x55
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x1
	.byte	0x9c
	.byte	0x16
	.4byte	.LASF57
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x1
	.byte	0x9c
	.byte	0x16
	.4byte	.LASF58
	.byte	0x1
	.byte	0x4b
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x1
	.byte	0x9c
	.byte	0x14
	.4byte	.LASF59
	.byte	0x1
	.byte	0x42
	.byte	0x6
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x1
	.byte	0x9c
	.4byte	0x3d2
	.byte	0x17
	.4byte	.LASF60
	.byte	0x1
	.byte	0x42
	.byte	0x1c
	.4byte	0x69
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x14
	.4byte	.LASF61
	.byte	0x1
	.byte	0x36
	.byte	0x6
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x1
	.byte	0x9c
	.4byte	0x3f7
	.byte	0x17
	.4byte	.LASF62
	.byte	0x1
	.byte	0x36
	.byte	0x1c
	.4byte	0x69
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x14
	.4byte	.LASF63
	.byte	0x1
	.byte	0x2d
	.byte	0x6
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x1
	.byte	0x9c
	.4byte	0x42b
	.byte	0x18
	.4byte	.LASF64
	.byte	0x1
	.byte	0x2d
	.byte	0x1e
	.4byte	0x69
	.4byte	.LLST0
	.byte	0x19
	.4byte	.LVL5
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LASF65
	.byte	0x1
	.byte	0x25
	.byte	0x6
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x1
	.byte	0x9c
	.4byte	0x450
	.byte	0x15
	.string	"get"
	.byte	0x1
	.byte	0x25
	.byte	0x1d
	.4byte	0x450
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x1ae
	.byte	0x14
	.4byte	.LASF66
	.byte	0x1
	.byte	0x20
	.byte	0x6
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x1
	.byte	0x9c
	.4byte	0x47a
	.byte	0x15
	.string	"fn"
	.byte	0x1
	.byte	0x20
	.byte	0x2f
	.4byte	0x1e0
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x14
	.4byte	.LASF67
	.byte	0x1
	.byte	0x1a
	.byte	0x6
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x1
	.byte	0x9c
	.4byte	0x49f
	.byte	0x15
	.string	"get"
	.byte	0x1
	.byte	0x1a
	.byte	0x1c
	.4byte	0x1ae
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x16
	.4byte	.LASF68
	.byte	0x1
	.byte	0x15
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x1
	.byte	0x9c
	.byte	0x14
	.4byte	.LASF69
	.byte	0x1
	.byte	0x10
	.byte	0x6
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x1
	.byte	0x9c
	.4byte	0x4da
	.byte	0x15
	.string	"fps"
	.byte	0x1
	.byte	0x10
	.byte	0x1d
	.4byte	0x69
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x1a
	.4byte	.LASF70
	.4byte	.LASF70
	.byte	0x6
	.byte	0x5e
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF71
	.4byte	.LASF71
	.byte	0x7
	.byte	0xc8
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0x6
	.byte	0x5d
	.byte	0x5
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
	.byte	0x6
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x7
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
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
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0x11
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0x16
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
	.byte	0
	.byte	0
	.byte	0x17
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
	.byte	0x18
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
	.byte	0x19
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x1a
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
.LLST0:
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5-1
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LFE44
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x94
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
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
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB43
	.4byte	.LFE43
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
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	.LFB53
	.4byte	.LFE53
	.4byte	.LFB54
	.4byte	.LFE54
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF40:
	.string	"RTP_PT_PCMU"
.LASF35:
	.string	"timestamp"
.LASF18:
	.string	"chn_type"
.LASF67:
	.string	"set_strm_cb"
.LASF11:
	.string	"FRM_TYPE_I"
.LASF73:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF2:
	.string	"short int"
.LASF60:
	.string	"vdofmt"
.LASF59:
	.string	"rtsp_set_videoFmt"
.LASF15:
	.string	"FRM_TYPE_M"
.LASF25:
	.string	"RTSP_VIDEOFMT_MJPEG"
.LASF45:
	.string	"report_fn"
.LASF22:
	.string	"RTSP_AUDIOFMT_PCMA"
.LASF9:
	.string	"__uint32_t"
.LASF31:
	.string	"strm_info"
.LASF26:
	.string	"RTSP_VIDEOFMT_H264"
.LASF65:
	.string	"get_strm_cb"
.LASF23:
	.string	"RTSP_AUDIOFMT_PCMU"
.LASF32:
	.string	"frm_info"
.LASF16:
	.string	"FRM_TYPE_MAX"
.LASF6:
	.string	"long long int"
.LASF56:
	.string	"rtsp_get_audio_en"
.LASF64:
	.string	"action"
.LASF62:
	.string	"audfmt"
.LASF4:
	.string	"long int"
.LASF43:
	.string	"RTP_PT_OPUS"
.LASF71:
	.string	"printf"
.LASF5:
	.string	"long unsigned int"
.LASF57:
	.string	"rtsp_get_audioFmt"
.LASF72:
	.string	"start_rtsp_srv"
.LASF44:
	.string	"get_frm"
.LASF46:
	.string	"gAudio_en"
.LASF74:
	.string	".\\components\\net\\lib\\rtsp\\src\\librtspsrv.c"
.LASF48:
	.string	"gVideo_fps"
.LASF66:
	.string	"rtsp_set_strm_report_cb"
.LASF49:
	.string	"gAudioFmt"
.LASF1:
	.string	"unsigned char"
.LASF17:
	.string	"frm_type"
.LASF0:
	.string	"signed char"
.LASF7:
	.string	"long long unsigned int"
.LASF33:
	.string	"frm_sz"
.LASF10:
	.string	"uint32_t"
.LASF8:
	.string	"unsigned int"
.LASF52:
	.string	"rtsp_init_lib"
.LASF29:
	.string	"usr_data"
.LASF20:
	.string	"CHN_TYPE_MINOR"
.LASF24:
	.string	"RTSP_AUDIOFMT_OPUS"
.LASF54:
	.string	"rtsp_set_video_en"
.LASF3:
	.string	"short unsigned int"
.LASF39:
	.string	"RTP_PT_H264"
.LASF30:
	.string	"char"
.LASF68:
	.string	"rtsp_get_video_fps"
.LASF55:
	.string	"rtsp_get_video_en"
.LASF58:
	.string	"rtsp_get_videoFmt"
.LASF34:
	.string	"frm_buf"
.LASF42:
	.string	"RTP_PT_AAC"
.LASF47:
	.string	"gVideo_en"
.LASF19:
	.string	"CHN_TYPE_MAIN"
.LASF53:
	.string	"rtsp_set_audio_en"
.LASF38:
	.string	"RTP_PT_JPEG"
.LASF70:
	.string	"stop_rtsp_srv"
.LASF50:
	.string	"gVideoFmt"
.LASF61:
	.string	"rtsp_set_audioFmt"
.LASF14:
	.string	"FRM_TYPE_A"
.LASF12:
	.string	"FRM_TYPE_B"
.LASF36:
	.string	"get_frm_t"
.LASF51:
	.string	"rtsp_deinit_lib"
.LASF63:
	.string	"rtsp_strm_report_cb"
.LASF28:
	.string	"file_name"
.LASF13:
	.string	"FRM_TYPE_P"
.LASF21:
	.string	"RTSP_AUDIOFMT_AAC"
.LASF75:
	.string	"C:\\\\Users\\\\cwier\\\\documents\\\\github\\\\qcom\\\\examples\\\\solutions\\\\rtsp_softap_cam\\\\build"
.LASF41:
	.string	"RTP_PT_PCMA"
.LASF27:
	.string	"chn_no"
.LASF69:
	.string	"rtsp_set_video_fps"
.LASF37:
	.string	"rtsp_report_fn_t"
	.ident	"GCC: (GNU) 10.4.0"
