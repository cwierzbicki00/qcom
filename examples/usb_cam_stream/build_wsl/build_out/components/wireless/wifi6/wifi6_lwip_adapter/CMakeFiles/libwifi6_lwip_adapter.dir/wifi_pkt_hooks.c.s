	.file	"wifi_pkt_hooks.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.qcc74x_pkt_eth_input_hook_register,"ax",@progbits
	.align	1
	.globl	qcc74x_pkt_eth_input_hook_register
	.type	qcc74x_pkt_eth_input_hook_register, @function
qcc74x_pkt_eth_input_hook_register:
.LFB3:
	.file 1 "./components/wireless/wifi6/wifi6_lwip_adapter/wifi_pkt_hooks.c"
	.loc 1 9 1
	.cfi_startproc
.LVL0:
	.loc 1 10 5
	.loc 1 10 36 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	sw	a0,%lo(.LANCHOR0)(a5)
	.loc 1 11 5 is_stmt 1
	.loc 1 11 40 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	sw	a1,%lo(.LANCHOR1)(a5)
	.loc 1 12 1
	ret
	.cfi_endproc
.LFE3:
	.size	qcc74x_pkt_eth_input_hook_register, .-qcc74x_pkt_eth_input_hook_register
	.section	.text.qcc74x_pkt_eth_input_hook_unregister,"ax",@progbits
	.align	1
	.globl	qcc74x_pkt_eth_input_hook_unregister
	.type	qcc74x_pkt_eth_input_hook_unregister, @function
qcc74x_pkt_eth_input_hook_unregister:
.LFB4:
	.loc 1 15 1 is_stmt 1
	.cfi_startproc
	.loc 1 16 5
	.loc 1 16 36 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	sw	zero,%lo(.LANCHOR0)(a5)
	.loc 1 17 5 is_stmt 1
	.loc 1 17 40 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	sw	zero,%lo(.LANCHOR1)(a5)
	.loc 1 18 1
	ret
	.cfi_endproc
.LFE4:
	.size	qcc74x_pkt_eth_input_hook_unregister, .-qcc74x_pkt_eth_input_hook_unregister
	.section	.text.qcc74x_pkt_eth_output_hook_register,"ax",@progbits
	.align	1
	.globl	qcc74x_pkt_eth_output_hook_register
	.type	qcc74x_pkt_eth_output_hook_register, @function
qcc74x_pkt_eth_output_hook_register:
.LFB5:
	.loc 1 24 1 is_stmt 1
	.cfi_startproc
.LVL1:
	.loc 1 25 5
	.loc 1 25 37 is_stmt 0
	lui	a5,%hi(.LANCHOR2)
	sw	a0,%lo(.LANCHOR2)(a5)
	.loc 1 26 5 is_stmt 1
	.loc 1 26 41 is_stmt 0
	lui	a5,%hi(.LANCHOR3)
	sw	a1,%lo(.LANCHOR3)(a5)
	.loc 1 27 1
	ret
	.cfi_endproc
.LFE5:
	.size	qcc74x_pkt_eth_output_hook_register, .-qcc74x_pkt_eth_output_hook_register
	.section	.text.qcc74x_pkt_eth_output_hook_unregister,"ax",@progbits
	.align	1
	.globl	qcc74x_pkt_eth_output_hook_unregister
	.type	qcc74x_pkt_eth_output_hook_unregister, @function
qcc74x_pkt_eth_output_hook_unregister:
.LFB6:
	.loc 1 30 1 is_stmt 1
	.cfi_startproc
	.loc 1 31 5
	.loc 1 31 37 is_stmt 0
	lui	a5,%hi(.LANCHOR2)
	sw	zero,%lo(.LANCHOR2)(a5)
	.loc 1 32 5 is_stmt 1
	.loc 1 32 41 is_stmt 0
	lui	a5,%hi(.LANCHOR3)
	sw	zero,%lo(.LANCHOR3)(a5)
	.loc 1 33 1
	ret
	.cfi_endproc
.LFE6:
	.size	qcc74x_pkt_eth_output_hook_unregister, .-qcc74x_pkt_eth_output_hook_unregister
	.globl	qcc74x_wifi_pkt_eth_output_hook_arg
	.globl	qcc74x_wifi_pkt_eth_output_hook
	.globl	qcc74x_wifi_pkt_eth_input_hook_arg
	.globl	qcc74x_wifi_pkt_eth_input_hook
	.section	.bss.qcc74x_wifi_pkt_eth_input_hook,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	qcc74x_wifi_pkt_eth_input_hook, @object
	.size	qcc74x_wifi_pkt_eth_input_hook, 4
qcc74x_wifi_pkt_eth_input_hook:
	.zero	4
	.section	.bss.qcc74x_wifi_pkt_eth_input_hook_arg,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	qcc74x_wifi_pkt_eth_input_hook_arg, @object
	.size	qcc74x_wifi_pkt_eth_input_hook_arg, 4
qcc74x_wifi_pkt_eth_input_hook_arg:
	.zero	4
	.section	.bss.qcc74x_wifi_pkt_eth_output_hook,"aw",@nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	qcc74x_wifi_pkt_eth_output_hook, @object
	.size	qcc74x_wifi_pkt_eth_output_hook, 4
qcc74x_wifi_pkt_eth_output_hook:
	.zero	4
	.section	.bss.qcc74x_wifi_pkt_eth_output_hook_arg,"aw",@nobits
	.align	2
	.set	.LANCHOR3,. + 0
	.type	qcc74x_wifi_pkt_eth_output_hook_arg, @object
	.size	qcc74x_wifi_pkt_eth_output_hook_arg, 4
qcc74x_wifi_pkt_eth_output_hook_arg:
	.zero	4
	.text
.Letext0:
	.file 2 "./components/wireless/wifi6/wifi6_lwip_adapter/./wifi_pkt_hooks.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x19b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF20
	.byte	0xc
	.4byte	.LASF21
	.4byte	.LASF22
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	.LASF2
	.byte	0x2
	.byte	0x5
	.byte	0x11
	.4byte	0x31
	.byte	0x3
	.byte	0x4
	.4byte	0x37
	.byte	0x4
	.4byte	0x50
	.4byte	0x50
	.byte	0x5
	.4byte	0x52
	.byte	0x5
	.4byte	0x50
	.byte	0x5
	.4byte	0x50
	.byte	0
	.byte	0x6
	.byte	0x4
	.byte	0x7
	.byte	0x1
	.byte	0x2
	.4byte	.LASF6
	.byte	0x8
	.4byte	.LASF0
	.byte	0x2
	.byte	0x7
	.byte	0x27
	.4byte	0x25
	.byte	0x8
	.4byte	.LASF1
	.byte	0x2
	.byte	0x8
	.byte	0xe
	.4byte	0x50
	.byte	0x2
	.4byte	.LASF3
	.byte	0x2
	.byte	0x1a
	.byte	0x11
	.4byte	0x31
	.byte	0x8
	.4byte	.LASF4
	.byte	0x2
	.byte	0x1c
	.byte	0x28
	.4byte	0x71
	.byte	0x8
	.4byte	.LASF5
	.byte	0x2
	.byte	0x1d
	.byte	0xe
	.4byte	0x50
	.byte	0x7
	.byte	0x1
	.byte	0x6
	.4byte	.LASF7
	.byte	0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.byte	0x7
	.byte	0x2
	.byte	0x5
	.4byte	.LASF9
	.byte	0x7
	.byte	0x2
	.byte	0x7
	.4byte	.LASF10
	.byte	0x7
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.byte	0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.byte	0x7
	.byte	0x8
	.byte	0x5
	.4byte	.LASF13
	.byte	0x7
	.byte	0x8
	.byte	0x7
	.4byte	.LASF14
	.byte	0x9
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.byte	0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.byte	0xa
	.4byte	0x59
	.byte	0x1
	.byte	0x5
	.byte	0x20
	.byte	0x5
	.byte	0x3
	.4byte	qcc74x_wifi_pkt_eth_input_hook
	.byte	0xa
	.4byte	0x65
	.byte	0x1
	.byte	0x6
	.byte	0x7
	.byte	0x5
	.byte	0x3
	.4byte	qcc74x_wifi_pkt_eth_input_hook_arg
	.byte	0xa
	.4byte	0x7d
	.byte	0x1
	.byte	0x14
	.byte	0x21
	.byte	0x5
	.byte	0x3
	.4byte	qcc74x_wifi_pkt_eth_output_hook
	.byte	0xa
	.4byte	0x89
	.byte	0x1
	.byte	0x15
	.byte	0x7
	.byte	0x5
	.byte	0x3
	.4byte	qcc74x_wifi_pkt_eth_output_hook_arg
	.byte	0xb
	.4byte	.LASF18
	.byte	0x1
	.byte	0x1d
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.byte	0xc
	.4byte	.LASF23
	.byte	0x1
	.byte	0x17
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x15e
	.byte	0xd
	.string	"cb"
	.byte	0x1
	.byte	0x17
	.byte	0x4a
	.4byte	0x71
	.byte	0x1
	.byte	0x5a
	.byte	0xe
	.4byte	.LASF17
	.byte	0x1
	.byte	0x17
	.byte	0x54
	.4byte	0x50
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0xb
	.4byte	.LASF19
	.byte	0x1
	.byte	0xe
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.byte	0xf
	.4byte	.LASF24
	.byte	0x1
	.byte	0x8
	.byte	0x6
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.byte	0xd
	.string	"cb"
	.byte	0x1
	.byte	0x8
	.byte	0x48
	.4byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0xe
	.4byte	.LASF17
	.byte	0x1
	.byte	0x8
	.byte	0x52
	.4byte	0x50
	.byte	0x1
	.byte	0x5b
	.byte	0
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x4
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
	.byte	0x5
	.byte	0x5
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
	.byte	0x8
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
	.byte	0x9
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
	.byte	0xa
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
	.byte	0xb
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
	.byte	0xc
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
	.byte	0xd
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
	.byte	0xe
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
	.byte	0xf
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
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
	.4byte	.LFB3
	.4byte	.LFE3
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
.LASF13:
	.string	"long long int"
.LASF15:
	.string	"unsigned int"
.LASF17:
	.string	"cb_arg"
.LASF19:
	.string	"qcc74x_pkt_eth_input_hook_unregister"
.LASF3:
	.string	"qcc74x_pkt_eth_output_hook_cb_t"
.LASF22:
	.string	"./examples/usb_cam_stream/build_wsl/build_out/components/wireless/wifi6/wifi6_lwip_adapter"
.LASF20:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF23:
	.string	"qcc74x_pkt_eth_output_hook_register"
.LASF12:
	.string	"long unsigned int"
.LASF14:
	.string	"long long unsigned int"
.LASF2:
	.string	"qcc74x_pkt_eth_input_hook_cb_t"
.LASF8:
	.string	"unsigned char"
.LASF16:
	.string	"char"
.LASF11:
	.string	"long int"
.LASF9:
	.string	"short int"
.LASF6:
	.string	"_Bool"
.LASF24:
	.string	"qcc74x_pkt_eth_input_hook_register"
.LASF18:
	.string	"qcc74x_pkt_eth_output_hook_unregister"
.LASF5:
	.string	"qcc74x_wifi_pkt_eth_output_hook_arg"
.LASF10:
	.string	"short unsigned int"
.LASF7:
	.string	"signed char"
.LASF1:
	.string	"qcc74x_wifi_pkt_eth_input_hook_arg"
.LASF21:
	.string	"./components/wireless/wifi6/wifi6_lwip_adapter/wifi_pkt_hooks.c"
.LASF0:
	.string	"qcc74x_wifi_pkt_eth_input_hook"
.LASF4:
	.string	"qcc74x_wifi_pkt_eth_output_hook"
	.ident	"GCC: (GNU) 10.4.0"
