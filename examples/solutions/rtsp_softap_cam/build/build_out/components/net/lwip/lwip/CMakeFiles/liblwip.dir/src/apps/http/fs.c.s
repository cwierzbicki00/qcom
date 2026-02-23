	.file	"fs.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.fs_open,"ax",@progbits
	.align	1
	.globl	fs_open
	.type	fs_open, @function
fs_open:
.LFB4:
	.file 1 ".\\components\\net\\lwip\\lwip\\src\\apps\\http\\fs.c"
	.loc 1 44 1
	.cfi_startproc
.LVL0:
	.loc 1 45 3
	.loc 1 47 3
	.loc 1 47 6 is_stmt 0
	beq	a0,zero,.L5
	.loc 1 44 1 discriminator 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s1,4(sp)
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s2,0(sp)
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	mv	s1,a0
	.loc 1 48 12 discriminator 1
	li	a0,-16
.LVL1:
	.loc 1 47 21 discriminator 1
	beq	a1,zero,.L2
	.loc 1 58 10
	lui	s0,%hi(.LANCHOR0)
	mv	s2,a1
	addi	s0,s0,%lo(.LANCHOR0)
.LVL2:
.L4:
	.loc 1 59 5 is_stmt 1
	.loc 1 59 10 is_stmt 0
	lw	a1,4(s0)
	mv	a0,s2
	call	strcmp
.LVL3:
	.loc 1 59 8
	bne	a0,zero,.L3
	.loc 1 60 7 is_stmt 1
	.loc 1 60 18 is_stmt 0
	lw	a5,8(s0)
	sw	a5,0(s1)
	.loc 1 61 7 is_stmt 1
	.loc 1 61 20 is_stmt 0
	lw	a5,12(s0)
	.loc 1 61 17
	sw	a5,4(s1)
	.loc 1 62 7 is_stmt 1
	.loc 1 62 19 is_stmt 0
	sw	a5,8(s1)
	.loc 1 63 7 is_stmt 1
	.loc 1 63 19 is_stmt 0
	lbu	a5,16(s0)
	sb	a5,12(s1)
	.loc 1 74 7 is_stmt 1
.LVL4:
.L2:
	.loc 1 79 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
.LVL5:
	lw	s2,0(sp)
	.cfi_restore 18
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL6:
.L3:
	.cfi_restore_state
	.loc 1 58 31 is_stmt 1 discriminator 2
	.loc 1 58 33 is_stmt 0 discriminator 2
	lw	s0,0(s0)
.LVL7:
	.loc 1 58 30 is_stmt 1 discriminator 2
	.loc 1 58 3 is_stmt 0 discriminator 2
	bne	s0,zero,.L4
	.loc 1 78 10
	li	a0,-6
	j	.L2
.LVL8:
.L5:
	.cfi_def_cfa_offset 0
	.cfi_restore 1
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 18
	.loc 1 48 12
	li	a0,-16
.LVL9:
	.loc 1 79 1
	ret
	.cfi_endproc
.LFE4:
	.size	fs_open, .-fs_open
	.section	.text.fs_close,"ax",@progbits
	.align	1
	.globl	fs_close
	.type	fs_close, @function
fs_close:
.LFB5:
	.loc 1 84 1 is_stmt 1
	.cfi_startproc
.LVL10:
	.loc 1 93 3
	.loc 1 94 1 is_stmt 0
	ret
	.cfi_endproc
.LFE5:
	.size	fs_close, .-fs_close
	.section	.text.fs_bytes_left,"ax",@progbits
	.align	1
	.globl	fs_bytes_left
	.type	fs_bytes_left, @function
fs_bytes_left:
.LFB6:
	.loc 1 159 1 is_stmt 1
	.cfi_startproc
.LVL11:
	.loc 1 160 3
	.loc 1 160 20 is_stmt 0
	lw	a4,4(a0)
	lw	a0,8(a0)
.LVL12:
	.loc 1 161 1
	sub	a0,a4,a0
	ret
	.cfi_endproc
.LFE6:
	.size	fs_bytes_left, .-fs_bytes_left
	.globl	file__index_html
	.globl	file__404_html
	.globl	file__img_sics_gif
	.section	.rodata.data__404_html,"a"
	.align	2
	.type	data__404_html, @object
	.size	data__404_html, 718
data__404_html:
	.string	"/404.html"
	.string	""
	.string	""
	.ascii	"HTTP/1.0 404 File not found\r\nServer: lwIP/2.0.3d (http://s"
	.ascii	"avannah.nongnu.org/projects/lwip)\r\nContent-Length: 565\r\n"
	.ascii	"Content-Type: text/html\r\n\r\n<html>\r\n<head><title>lwIP -"
	.ascii	" A Lightweight TCP/IP Stack</title></head>\r\n<body bgcolor="
	.ascii	"\"white\" text=\"black\">\r\n\r\n    <table width=\"100%\">\r"
	.ascii	"\n      <tr valign=\"top\"><td width=\"80\">\t  \r\n\t  <a h"
	.ascii	"ref=\"http://www.sics.se/\"><img src=\"/img/sics.gif\"\r\n\t"
	.ascii	"  border=\"0\" alt=\"SICS logo\" title=\"SICS logo\"></a>\r\n"
	.ascii	"\t</td><td width=\"500\">\t  \r\n\t  <h1>lwIP - A Lightweigh"
	.ascii	"t TCP/IP Stack</h1>\r\n\t  <h2>404 - Page not found</h2>\r\n"
	.ascii	"\t  <p>\r\n\t    Sorry, the page you are requesting was not "
	.ascii	"found on this\r\n\t    server. \r\n\t  </p>\r\n\t</td><td>\r"
	.ascii	"\n\t  &nbsp;\r\n\t</td></tr>\r\n      </table>\r\n</body>\r\n"
	.ascii	"</html>\r\n"
	.section	.rodata.data__img_sics_gif,"a"
	.align	2
	.type	data__img_sics_gif, @object
	.size	data__img_sics_gif, 869
data__img_sics_gif:
	.string	"/img/sics.gif"
	.string	""
	.string	""
	.string	"HTTP/1.0 200 OK\r\nServer: lwIP/2.0.3d (http://savannah.nongnu.org/projects/lwip)\r\nContent-Length: 724\r\nContent-Type: image/gif\r\n\r\nGIF89aF"
	.string	"\""
	.string	"\245"
	.string	""
	.string	"\331+9jjj\277\277\277\223\223\223\017\017\017\260\260\260\246\246\246\200\200\200vvv\036\036\036\235\235\235...IIITTT\212\212\212```\306\246\231\275\265\262\302\253\241\331A@\325gU\300\260\252\325^N\326PE\314\223}\310\241\220\316\213v\322{e\321\204m\311\231\206:::"
	.string	""
	.string	""
	.string	"\270\270\270\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377,"
	.string	""
	.string	""
	.string	""
	.string	"F"
	.string	"\""
	.string	""
	.string	"\006\376@\220pH,\032\217\310\244r\311l:\237\320\250tJ\255Z\257\330\254v\251@\004\276\203\342`<P \r\216o"
	.string	"1(\034\r\007\265\303`u$>\370\374\207\021\006\351=F\007\013zz|C\006\036\204x\013\007nQ\001\212\204\b~y\200\207\211\221z\223\n\004\231x\226O\003\236y\001\224\237C\234\243\244\005w\243\240N\230y\013\036\203\244\246\037\226\005\235\252x\001\007\204\004\036\036\273\270Q\204\016C\005\007w\245\177B\261\262\001c\b\r\273\001\fz\rD\016\330\257L\005z\004G\007\007\267\200\242\341}D\005\001\004\001\320\352\207\223O\340\232I\316\330y\004f \025\020\020\021\222)\200\266\300\221\025E\036\220\031qF\250\\\004\016"
	.string	"\"N\350@$\237>\004\006\247X\324\223\240\034\221?\350\360\210\003\261!\242I"
	.string	"\031\206\374RD\340\001\235)!\025%P\367g%\036\006\375N\232\264\220\254\025\372\313RS\036\214\362\370\007\222-\b:M\022I\225I\333\024\004\304\024\205)\252\347\001\b\244I\001\024Q\340S\221\325)\006\032d\002\364\307\201\236\005 \"d\2450\256\253\236\227S\330\271\375P\357\223\002Bt4\350\234 !\311\001hx\346U) VOL@Qq\202\300p!\"\205\276K\034D\005\352\244\001\277\"\265\360\034\006Q8\217\340\"\354\030\2549\"\324\326\223D\0012\202\310\374a\263\001E\f.\2030\320\016\027$\017p\205\224\356\005\005SK2\033?\230\323\035)\201\260\256\036\214~h\340`ZT\217\260xis\006\242"
	.string	"kW\312=\021P\275\0040K:\324\253_\037\233=\023t'\210<%\340\027\276zyE\r\f\260\213\332\220\312\200\006]\027`\034\"L\330W\"\006 "
	.string	"\230\007\b\344V\200\200\034\305\267\305\202\f6\350\340\203\020F(\341\204\024Vh\241\020A"
	.string	""
	.ascii	";"
	.section	.rodata.data__index_html,"a"
	.align	2
	.type	data__index_html, @object
	.size	data__index_html, 1893
data__index_html:
	.string	"/index.html"
	.ascii	"HTTP/1.0 200 OK\r\nServer: lwIP/2.0.3d (http://savannah.nong"
	.ascii	"nu.org/projects/lwip)\r\nContent-Length: 1751\r\nContent-Typ"
	.ascii	"e: text/html\r\n\r\n<html>\r\n<head><title>lwIP - A Lightwei"
	.ascii	"ght TCP/IP Stack</title></head>\r\n<body bgcolor=\"white\" t"
	.ascii	"ext=\"black\">\r\n\r\n    <table width=\"100%\">\r\n      <t"
	.ascii	"r valign=\"top\"><td width=\"80\">\t  \r\n\t  <a href=\"http"
	.ascii	"://www.sics.se/\"><img src=\"/img/sics.gif\"\r\n\t  border=\""
	.ascii	"0\" alt=\"SICS logo\" title=\"SICS logo\"></a>\r\n\t</td><td"
	.ascii	" width=\"500\">\t  \r\n\t  <h1>lwIP - A Lightweight TCP/IP S"
	.ascii	"tack</h1>\r\n\t  <p>\r\n\t    The web page you are watching "
	.ascii	"was served by a simple web\r\n\t    server running on top of"
	.ascii	" the lightweight TCP/IP stack <a\r\n\t    href=\"http://www."
	.ascii	"sics.se/~adam/lwip/\">lwIP</a>.\r\n\t  </p>\r\n\t  <p>\r\n\t"
	.ascii	"    lwIP is an open source implementation of the TCP/IP\r\n\t"
	.ascii	"    protocol suite that was originally written by <a\r\n\t  "
	.ascii	"  href=\"http://www.sics.se/~adam/lwip/\">Adam Dunkels\r\n\t"
	.ascii	"    of the Swedish Institute of Computer Science</a> but now"
	.ascii	" is\r\n\t    being actively developed by a team of developer"
	.ascii	"s\r\n\t    distributed world-wide. Since it's release, lwIP "
	.ascii	"has\r\n\t    spurred a lot of interest and has been ported t"
	.ascii	"o several\r\n\t    platforms and operating systems. lwIP can"
	.ascii	" be used either\r\n\t    with or without an underlying OS.\r"
	.ascii	"\n\t  </p>\r\n\t  <p>\r\n\t    The focus of the lwIP TCP/IP "
	.ascii	"implementation is to reduce\r\n\t    the RAM usage while sti"
	.ascii	"ll having a full scale TCP. This\r\n\t    makes lwIP suitabl"
	.ascii	"e for use in embedded systems with tens\r\n\t    of kilobyte"
	.ascii	"s of free RAM and room for around 40 kilobytes\r\n\t    of c"
	.ascii	"ode ROM.\r\n\t  </p>\r\n\t  <p>\r\n\t    More information ab"
	.ascii	"out lwIP can be found at the lwIP\r\n\t    homepage at <a\r\n"
	.ascii	"\t    href=\"http://savannah.nongnu.org/projects/lwip/\">htt"
	.ascii	"p://savannah.nongnu.org/projects/lwip/</a>\r\n\t    or at th"
	.ascii	"e lwIP wiki at <a\r\n\t    href=\"http://lwip.wikia.com/\">h"
	.ascii	"ttp://lwip.wikia.com/</a>.\r\n\t  </p>\r\n\t</td><td>\r\n\t "
	.ascii	" &nbsp;\r\n\t</td></tr>\r\n      </table>\r\n</body>\r\n</ht"
	.ascii	"ml>\r\n\r\n"
	.section	.rodata.file__404_html,"a"
	.align	2
	.type	file__404_html, @object
	.size	file__404_html, 20
file__404_html:
	.word	file__img_sics_gif
	.word	data__404_html
	.word	data__404_html+12
	.word	706
	.byte	3
	.zero	3
	.section	.rodata.file__img_sics_gif,"a"
	.align	2
	.type	file__img_sics_gif, @object
	.size	file__img_sics_gif, 20
file__img_sics_gif:
	.word	0
	.word	data__img_sics_gif
	.word	data__img_sics_gif+16
	.word	853
	.byte	3
	.zero	3
	.section	.rodata.file__index_html,"a"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	file__index_html, @object
	.size	file__index_html, 20
file__index_html:
	.word	file__404_html
	.word	data__index_html
	.word	data__index_html+12
	.word	1881
	.byte	3
	.zero	3
	.text
.Letext0:
	.file 2 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\machine\\_default_types.h"
	.file 3 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\sys\\_stdint.h"
	.file 4 ".\\components\\net\\lwip\\lwip\\src\\include/lwip/arch.h"
	.file 5 ".\\components\\net\\lwip\\lwip\\src\\include/lwip/err.h"
	.file 6 ".\\components\\net\\lwip\\lwip\\src\\include/lwip/apps/fs.h"
	.file 7 ".\\components\\net\\lwip\\lwip\\src\\apps\\http\\fsdata.c"
	.file 8 "c:\\qccsdk-qcc74x\\toolchain\\windows_x86_64\\riscv64-unknown-elf\\include\\string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x36b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF50
	.byte	0xc
	.4byte	.LASF51
	.4byte	.LASF52
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
	.byte	0x5
	.4byte	0x4b
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.byte	0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.byte	0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x5
	.4byte	0x88
	.byte	0x6
	.byte	0x4
	.4byte	0x8f
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x14
	.byte	0x12
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x3f
	.byte	0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x7d
	.byte	0x11
	.4byte	0xa6
	.byte	0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x7e
	.byte	0x10
	.4byte	0x9a
	.byte	0x7
	.byte	0x5
	.byte	0x1
	.4byte	0x38
	.byte	0x5
	.byte	0x35
	.byte	0xe
	.4byte	0x13f
	.byte	0x8
	.4byte	.LASF16
	.byte	0
	.byte	0x9
	.4byte	.LASF17
	.byte	0x7f
	.byte	0x9
	.4byte	.LASF18
	.byte	0x7e
	.byte	0x9
	.4byte	.LASF19
	.byte	0x7d
	.byte	0x9
	.4byte	.LASF20
	.byte	0x7c
	.byte	0x9
	.4byte	.LASF21
	.byte	0x7b
	.byte	0x9
	.4byte	.LASF22
	.byte	0x7a
	.byte	0x9
	.4byte	.LASF23
	.byte	0x79
	.byte	0x9
	.4byte	.LASF24
	.byte	0x78
	.byte	0x9
	.4byte	.LASF25
	.byte	0x77
	.byte	0x9
	.4byte	.LASF26
	.byte	0x76
	.byte	0x9
	.4byte	.LASF27
	.byte	0x75
	.byte	0x9
	.4byte	.LASF28
	.byte	0x74
	.byte	0x9
	.4byte	.LASF29
	.byte	0x73
	.byte	0x9
	.4byte	.LASF30
	.byte	0x72
	.byte	0x9
	.4byte	.LASF31
	.byte	0x71
	.byte	0x9
	.4byte	.LASF32
	.byte	0x70
	.byte	0
	.byte	0x3
	.4byte	.LASF33
	.byte	0x5
	.byte	0x60
	.byte	0xe
	.4byte	0xbe
	.byte	0xa
	.4byte	.LASF37
	.byte	0x10
	.byte	0x6
	.byte	0x42
	.byte	0x8
	.4byte	0x18d
	.byte	0xb
	.4byte	.LASF34
	.byte	0x6
	.byte	0x43
	.byte	0xf
	.4byte	0x94
	.byte	0
	.byte	0xc
	.string	"len"
	.byte	0x6
	.byte	0x44
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.byte	0xb
	.4byte	.LASF35
	.byte	0x6
	.byte	0x45
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.byte	0xb
	.4byte	.LASF36
	.byte	0x6
	.byte	0x4f
	.byte	0x8
	.4byte	0xb2
	.byte	0xc
	.byte	0
	.byte	0xa
	.4byte	.LASF38
	.byte	0x14
	.byte	0x6
	.byte	0x6e
	.byte	0x8
	.4byte	0x1dc
	.byte	0xb
	.4byte	.LASF39
	.byte	0x6
	.byte	0x6f
	.byte	0x1d
	.4byte	0x1e1
	.byte	0
	.byte	0xb
	.4byte	.LASF40
	.byte	0x6
	.byte	0x70
	.byte	0x18
	.4byte	0x1e7
	.byte	0x4
	.byte	0xb
	.4byte	.LASF34
	.byte	0x6
	.byte	0x71
	.byte	0x18
	.4byte	0x1e7
	.byte	0x8
	.byte	0xc
	.string	"len"
	.byte	0x6
	.byte	0x72
	.byte	0x7
	.4byte	0x25
	.byte	0xc
	.byte	0xb
	.4byte	.LASF36
	.byte	0x6
	.byte	0x73
	.byte	0x8
	.4byte	0xb2
	.byte	0x10
	.byte	0
	.byte	0x5
	.4byte	0x18d
	.byte	0x6
	.byte	0x4
	.4byte	0x1dc
	.byte	0x6
	.byte	0x4
	.4byte	0x52
	.byte	0xd
	.4byte	0x52
	.4byte	0x1fe
	.byte	0xe
	.4byte	0x81
	.2byte	0x364
	.byte	0
	.byte	0x5
	.4byte	0x1ed
	.byte	0xf
	.4byte	.LASF41
	.byte	0x7
	.byte	0x1e
	.byte	0x1c
	.4byte	0x1fe
	.byte	0x5
	.byte	0x3
	.4byte	data__img_sics_gif
	.byte	0xd
	.4byte	0x52
	.4byte	0x226
	.byte	0xe
	.4byte	0x81
	.2byte	0x2cd
	.byte	0
	.byte	0x5
	.4byte	0x215
	.byte	0xf
	.4byte	.LASF42
	.byte	0x7
	.byte	0x6a
	.byte	0x1c
	.4byte	0x226
	.byte	0x5
	.byte	0x3
	.4byte	data__404_html
	.byte	0xd
	.4byte	0x52
	.4byte	0x24e
	.byte	0xe
	.4byte	0x81
	.2byte	0x764
	.byte	0
	.byte	0x5
	.4byte	0x23d
	.byte	0xf
	.4byte	.LASF43
	.byte	0x7
	.byte	0xac
	.byte	0x1c
	.4byte	0x24e
	.byte	0x5
	.byte	0x3
	.4byte	data__index_html
	.byte	0xd
	.4byte	0x1dc
	.4byte	0x275
	.byte	0x10
	.4byte	0x81
	.byte	0
	.byte	0
	.byte	0x5
	.4byte	0x265
	.byte	0x11
	.4byte	.LASF44
	.byte	0x7
	.2byte	0x137
	.byte	0x1a
	.4byte	0x275
	.byte	0x5
	.byte	0x3
	.4byte	file__img_sics_gif
	.byte	0x11
	.4byte	.LASF45
	.byte	0x7
	.2byte	0x13f
	.byte	0x1a
	.4byte	0x275
	.byte	0x5
	.byte	0x3
	.4byte	file__404_html
	.byte	0x11
	.4byte	.LASF46
	.byte	0x7
	.2byte	0x147
	.byte	0x1a
	.4byte	0x275
	.byte	0x5
	.byte	0x3
	.4byte	file__index_html
	.byte	0x12
	.4byte	.LASF48
	.byte	0x1
	.byte	0x9e
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x2de
	.byte	0x13
	.4byte	.LASF47
	.byte	0x1
	.byte	0x9e
	.byte	0x1f
	.4byte	0x2de
	.4byte	.LLST3
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x14b
	.byte	0x14
	.4byte	.LASF53
	.byte	0x1
	.byte	0x53
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x309
	.byte	0x15
	.4byte	.LASF47
	.byte	0x1
	.byte	0x53
	.byte	0x1a
	.4byte	0x2de
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x12
	.4byte	.LASF49
	.byte	0x1
	.byte	0x2b
	.byte	0x1
	.4byte	0x13f
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x362
	.byte	0x13
	.4byte	.LASF47
	.byte	0x1
	.byte	0x2b
	.byte	0x19
	.4byte	0x2de
	.4byte	.LLST0
	.byte	0x13
	.4byte	.LASF40
	.byte	0x1
	.byte	0x2b
	.byte	0x2b
	.4byte	0x94
	.4byte	.LLST1
	.byte	0x16
	.string	"f"
	.byte	0x1
	.byte	0x2d
	.byte	0x1d
	.4byte	0x1e1
	.4byte	.LLST2
	.byte	0x17
	.4byte	.LVL3
	.4byte	0x362
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x8
	.byte	0x24
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
	.byte	0x49
	.byte	0x13
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
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xd
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
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0x5
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
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x16
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
	.byte	0x17
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x19
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
.LLST3:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LFE6
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
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
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
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL8
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF45:
	.string	"file__404_html"
.LASF50:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF1:
	.string	"__int8_t"
.LASF2:
	.string	"__uint8_t"
.LASF39:
	.string	"next"
.LASF52:
	.string	"C:\\\\Users\\\\cwier\\\\Documents\\\\GitHub\\\\qcom\\\\examples\\\\solutions\\\\rtsp_softap_cam\\\\build\\\\build_out\\\\components\\\\net\\\\lwip\\\\lwip"
.LASF41:
	.string	"data__img_sics_gif"
.LASF27:
	.string	"ERR_CONN"
.LASF38:
	.string	"fsdata_file"
.LASF34:
	.string	"data"
.LASF15:
	.string	"s8_t"
.LASF42:
	.string	"data__404_html"
.LASF24:
	.string	"ERR_USE"
.LASF46:
	.string	"file__index_html"
.LASF26:
	.string	"ERR_ISCONN"
.LASF19:
	.string	"ERR_TIMEOUT"
.LASF49:
	.string	"fs_open"
.LASF33:
	.string	"err_t"
.LASF44:
	.string	"file__img_sics_gif"
.LASF3:
	.string	"unsigned char"
.LASF28:
	.string	"ERR_IF"
.LASF17:
	.string	"ERR_MEM"
.LASF7:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF53:
	.string	"fs_close"
.LASF22:
	.string	"ERR_VAL"
.LASF12:
	.string	"int8_t"
.LASF47:
	.string	"file"
.LASF43:
	.string	"data__index_html"
.LASF20:
	.string	"ERR_RTE"
.LASF16:
	.string	"ERR_OK"
.LASF37:
	.string	"fs_file"
.LASF10:
	.string	"unsigned int"
.LASF36:
	.string	"flags"
.LASF9:
	.string	"long long unsigned int"
.LASF13:
	.string	"uint8_t"
.LASF14:
	.string	"u8_t"
.LASF30:
	.string	"ERR_RST"
.LASF31:
	.string	"ERR_CLSD"
.LASF54:
	.string	"strcmp"
.LASF18:
	.string	"ERR_BUF"
.LASF8:
	.string	"long long int"
.LASF40:
	.string	"name"
.LASF35:
	.string	"index"
.LASF32:
	.string	"ERR_ARG"
.LASF4:
	.string	"short int"
.LASF48:
	.string	"fs_bytes_left"
.LASF29:
	.string	"ERR_ABRT"
.LASF21:
	.string	"ERR_INPROGRESS"
.LASF6:
	.string	"long int"
.LASF11:
	.string	"char"
.LASF0:
	.string	"signed char"
.LASF23:
	.string	"ERR_WOULDBLOCK"
.LASF25:
	.string	"ERR_ALREADY"
.LASF51:
	.string	".\\components\\net\\lwip\\lwip\\src\\apps\\http\\fs.c"
	.ident	"GCC: (GNU) 10.4.0"
