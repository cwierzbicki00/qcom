	.file	"main.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.app_task,"ax",@progbits
	.align	1
	.type	app_task, @function
app_task:
.LFB357:
	.file 1 "./examples/usb_cam_stream/main.c"
	.loc 1 80 1
	.cfi_startproc
.LVL0:
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	ra,44(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 1, -4
	.loc 1 85 13 is_stmt 0
	lui	s2,%hi(.LANCHOR0)
	.loc 1 85 12
	li	s0,1
	.loc 1 86 13
	li	s1,11
	li	s3,12
	li	s4,2
.LVL1:
.L2:
	.loc 1 81 5 is_stmt 1
	.loc 1 82 5
	.loc 1 84 5
	.loc 1 85 9
	.loc 1 85 13 is_stmt 0
	lw	a0,%lo(.LANCHOR0)(s2)
	li	a2,-1
	addi	a1,sp,12
	call	xQueueReceive
.LVL2:
	.loc 1 85 12
	bne	a0,s0,.L2
	.loc 1 86 13 is_stmt 1
	lw	a0,12(sp)
	beq	a0,s1,.L4
	bgtu	a0,s1,.L5
	bne	a0,s4,.L2
	.loc 1 88 21
	call	wifi_ap_start
.LVL3:
	.loc 1 89 21
	j	.L2
.L5:
	.loc 1 86 13 is_stmt 0
	beq	a0,s3,.L7
	addi	a5,a0,-21
	bgtu	a5,s0,.L2
.L7:
	.loc 1 100 21 is_stmt 1
	call	wifi_ap_event_handler
.LVL4:
	.loc 1 101 21
	j	.L2
.L4:
	.loc 1 92 21
	li	a0,11
	call	wifi_ap_event_handler
.LVL5:
	.loc 1 93 21
	call	http_server_start
.LVL6:
	.loc 1 94 21
	call	metrics_init
.LVL7:
	.loc 1 95 21
	j	.L2
	.cfi_endproc
.LFE357:
	.size	app_task, .-app_task
	.section	.rodata.wifi_start_firmware_task.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"\033[0m[I][MAIN] Starting wifi ...\r\n"
	.align	2
.LC1:
	.string	"fw"
	.align	2
.LC2:
	.string	"\033[0;31m[E][MAIN] wifi fw task create failed\r\n"
	.section	.text.wifi_start_firmware_task,"ax",@progbits
	.align	1
	.globl	wifi_start_firmware_task
	.type	wifi_start_firmware_task, @function
wifi_start_firmware_task:
.LFB356:
	.loc 1 51 1
	.cfi_startproc
	.loc 1 52 5
	lui	a0,%hi(.LC0)
	.loc 1 51 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 52 5
	addi	a0,a0,%lo(.LC0)
	.loc 1 51 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 52 5
	call	printf
.LVL8:
	.loc 1 54 5 is_stmt 1
	li	a1,0
	li	a0,51
	call	GLB_PER_Clock_UnGate
.LVL9:
	.loc 1 57 5
	li	a0,4
	call	GLB_AHB_MCU_Software_Reset
.LVL10:
	.loc 1 59 5
	.loc 1 60 5
	lui	a1,%hi(interrupt0_handler)
	li	a2,0
	addi	a1,a1,%lo(interrupt0_handler)
	li	a0,70
	call	qcc74x_irq_attach
.LVL11:
	.loc 1 61 5
	li	a0,70
	call	qcc74x_irq_enable
.LVL12:
	.loc 1 63 5
	.loc 1 63 9 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	lui	a1,%hi(.LC1)
	lui	a0,%hi(wifi_main)
	addi	a5,a5,%lo(.LANCHOR1)
	li	a4,16
	li	a3,0
	li	a2,1536
	addi	a1,a1,%lo(.LC1)
	addi	a0,a0,%lo(wifi_main)
	call	xTaskCreate
.LVL13:
	.loc 1 63 8
	li	a4,1
	li	a5,0
	beq	a0,a4,.L9
	.loc 1 65 9 is_stmt 1
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL14:
	.loc 1 66 9
	.loc 1 66 16 is_stmt 0
	li	a5,-1
.L9:
	.loc 1 70 1
	lw	ra,12(sp)
	.cfi_restore 1
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE356:
	.size	wifi_start_firmware_task, .-wifi_start_firmware_task
	.section	.rodata.wifi_event_handler.str1.4,"aMS",@progbits,1
	.align	2
.LC3:
	.string	"\033[0m[I][MAIN] [APP] [EVT] WIFI_ON_INIT_DONE\r\n"
	.align	2
.LC4:
	.string	"\033[0m[I][MAIN] [APP] [EVT] WIFI_ON_SCAN_DONE\r\n"
	.align	2
.LC5:
	.string	"\033[0m[I][MAIN] [APP] [EVT] WIFI_ON_CONNECTED\r\n"
	.align	2
.LC6:
	.string	"\033[0m[I][MAIN] [APP] [EVT] WIFI_ON_GOT_IP\r\n"
	.align	2
.LC7:
	.string	"\033[0m[I][MAIN] [SYS] Memory left is %d Bytes\r\n"
	.align	2
.LC8:
	.string	"\033[0m[I][MAIN] [APP] [EVT] WIFI_ON_DISCONNECT\r\n"
	.align	2
.LC9:
	.string	"\033[0m[I][MAIN] [APP] [EVT] WIFI_ON_MGMR_DONE\r\n"
	.align	2
.LC10:
	.string	"\033[0m[I][MAIN] [APP] [EVT] Unknown code %u\r\n"
	.section	.text.wifi_event_handler,"ax",@progbits
	.align	1
	.globl	wifi_event_handler
	.type	wifi_event_handler, @function
wifi_event_handler:
.LFB358:
	.loc 1 111 1 is_stmt 1
	.cfi_startproc
.LVL15:
	.loc 1 112 5
	.loc 1 111 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 111 1
	sw	a0,12(sp)
	.loc 1 112 5
	li	a5,5
	beq	a0,a5,.L15
	mv	a1,a0
	bgtu	a0,a5,.L16
	li	a5,2
	beq	a0,a5,.L17
	li	a5,4
	beq	a0,a5,.L18
	li	a5,1
	beq	a0,a5,.L19
.L20:
	.loc 1 149 13 is_stmt 1
	lui	a0,%hi(.LC10)
.LVL16:
	addi	a0,a0,%lo(.LC10)
	j	.L29
.LVL17:
.L16:
	.loc 1 112 5 is_stmt 0
	li	a5,9
	beq	a0,a5,.L21
	bgtu	a0,a5,.L22
	li	a5,7
	bne	a0,a5,.L20
	.loc 1 127 13 is_stmt 1
	lui	a0,%hi(.LC6)
.LVL18:
	addi	a0,a0,%lo(.LC6)
	call	printf
.LVL19:
	.loc 1 128 13
	call	kfree_size
.LVL20:
	mv	a1,a0
	lui	a0,%hi(.LC7)
	addi	a0,a0,%lo(.LC7)
.L29:
	.loc 1 149 13 is_stmt 0
	call	printf
.LVL21:
	.loc 1 150 13 is_stmt 1
	.loc 1 152 1 is_stmt 0
	j	.L14
.LVL22:
.L22:
	.loc 1 112 5
	li	a5,12
	bgtu	a0,a5,.L24
	li	a5,10
	beq	a0,a5,.L20
.LVL23:
.L25:
	.loc 1 145 13 is_stmt 1
	lui	a5,%hi(.LANCHOR0)
	lw	a0,%lo(.LANCHOR0)(a5)
	li	a3,0
	li	a2,0
	addi	a1,sp,12
	call	xQueueGenericSend
.LVL24:
	.loc 1 146 13
	j	.L14
.LVL25:
.L24:
	.loc 1 112 5 is_stmt 0
	addi	a5,a0,-21
	li	a4,1
	bleu	a5,a4,.L25
	j	.L20
.L19:
	.loc 1 114 13 is_stmt 1
	lui	a0,%hi(.LC3)
.LVL26:
	addi	a0,a0,%lo(.LC3)
	call	printf
.LVL27:
	.loc 1 115 13
	call	wifi_mgmr_init
.LVL28:
	.loc 1 116 13
.L14:
	.loc 1 152 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL29:
.L21:
	.cfi_restore_state
	.loc 1 119 13 is_stmt 1
	lui	a0,%hi(.LC4)
.LVL30:
	addi	a0,a0,%lo(.LC4)
.LVL31:
.L28:
	.loc 1 123 13 is_stmt 0
	call	printf
.LVL32:
	.loc 1 124 13 is_stmt 1
	j	.L14
.LVL33:
.L18:
	.loc 1 123 13
	lui	a0,%hi(.LC5)
.LVL34:
	addi	a0,a0,%lo(.LC5)
	j	.L28
.LVL35:
.L15:
	.loc 1 132 13
	lui	a0,%hi(.LC8)
.LVL36:
	addi	a0,a0,%lo(.LC8)
	j	.L28
.LVL37:
.L17:
	.loc 1 137 13
	lui	a0,%hi(.LC9)
.LVL38:
	addi	a0,a0,%lo(.LC9)
	call	printf
.LVL39:
	.loc 1 138 13
	j	.L25
	.cfi_endproc
.LFE358:
	.size	wifi_event_handler, .-wifi_event_handler
	.section	.rodata.main.str1.4,"aMS",@progbits,1
	.align	2
.LC11:
	.string	"?"
	.align	2
.LC12:
	.string	"12:06:27"
	.align	2
.LC13:
	.string	"Feb  9 2026"
	.align	2
.LC14:
	.string	"\033[0m[I][MAIN] FW: usb-cam-stream v0.1.0 (unknown) built %s %s\r\n"
	.align	2
.LC15:
	.string	"\033[0m[I][MAIN] Board: qcc744dk  Chip: %s  PSRAM: %s  Flash: %s  Rev: A%d\r\n"
	.align	2
.LC16:
	.string	"\033[0m[I][MAIN] SRAM heap: %u bytes  PSRAM heap: %u bytes\r\n"
	.align	2
.LC17:
	.string	"uart0"
	.align	2
.LC18:
	.string	"\033[0;31m[E][MAIN] PHY RF init failed!\r\n"
	.align	2
.LC19:
	.string	"\033[0m[I][MAIN] PHY RF init success!\r\n"
	.align	2
.LC20:
	.string	"\033[0;31m[E][MAIN] app event queue create failed\r\n"
	.align	2
.LC21:
	.string	"app"
	.align	2
.LC22:
	.string	"\033[0;31m[E][MAIN] app task create failed\r\n"
	.align	2
.LC23:
	.string	"\033[0;31m[E][MAIN] frame pool init failed\r\n"
	.align	2
.LC24:
	.string	"\033[0m[I][MAIN] Camera: not attached (USB enumeration pending)\r\n"
	.section	.text.startup.main,"ax",@progbits
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB359:
	.loc 1 155 1
	.cfi_startproc
	.loc 1 156 5
	.loc 1 155 1 is_stmt 0
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	.cfi_offset 1, -4
	.loc 1 156 5
	call	board_init
.LVL40:
	.loc 1 158 5 is_stmt 1
	lui	a2,%hi(.LC12)
	lui	a1,%hi(.LC13)
	lui	a0,%hi(.LC14)
	addi	a1,a1,%lo(.LC13)
	addi	a2,a2,%lo(.LC12)
	addi	a0,a0,%lo(.LC14)
	call	printf
.LVL41:
.LBB2:
	.loc 1 163 9
	.loc 1 164 9
	addi	a0,sp,28
	call	qcc74x_efuse_get_device_info
.LVL42:
	.loc 1 165 9
	.loc 1 165 115 is_stmt 0
	lw	a1,36(sp)
	.loc 1 165 9
	bne	a1,zero,.L31
	lui	a1,%hi(.LC11)
	addi	a1,a1,%lo(.LC11)
.L31:
	.loc 1 165 168 discriminator 4
	lw	a2,44(sp)
	.loc 1 165 9 discriminator 4
	bne	a2,zero,.L32
	.loc 1 165 9
	lui	a2,%hi(.LC11)
	addi	a2,a2,%lo(.LC11)
.L32:
	.loc 1 165 227 discriminator 8
	lw	a3,40(sp)
	.loc 1 165 9 discriminator 8
	bne	a3,zero,.L33
	.loc 1 165 9
	lui	a3,%hi(.LC11)
	addi	a3,a3,%lo(.LC11)
.L33:
	.loc 1 165 9 discriminator 12
	lbu	a4,31(sp)
	lui	a0,%hi(.LC15)
	addi	a0,a0,%lo(.LC15)
	call	printf
.LVL43:
	.loc 1 170 9 is_stmt 1 discriminator 12
	.loc 1 170 101 is_stmt 0 discriminator 12
	call	kfree_size
.LVL44:
	sw	a0,12(sp)
	.loc 1 170 125 discriminator 12
	call	pfree_size
.LVL45:
	.loc 1 170 9 discriminator 12
	lw	a1,12(sp)
	.loc 1 170 125 discriminator 12
	mv	a2,a0
	.loc 1 170 9 discriminator 12
	lui	a0,%hi(.LC16)
	addi	a0,a0,%lo(.LC16)
	call	printf
.LVL46:
.LBE2:
	.loc 1 174 5 is_stmt 1 discriminator 12
	.loc 1 174 13 is_stmt 0 discriminator 12
	lui	a0,%hi(.LC17)
	addi	a0,a0,%lo(.LC17)
	call	qcc74x_device_get_by_name
.LVL47:
	.loc 1 175 5 is_stmt 1 discriminator 12
	call	shell_init_with_task
.LVL48:
	.loc 1 177 5 discriminator 12
	.loc 1 177 14 is_stmt 0 discriminator 12
	li	a2,0
	li	a1,0
	li	a0,0
	call	rfparam_init
.LVL49:
	.loc 1 177 8 discriminator 12
	beq	a0,zero,.L34
	.loc 1 178 9 is_stmt 1
	lui	a0,%hi(.LC18)
	addi	a0,a0,%lo(.LC18)
.L44:
	.loc 1 185 9 is_stmt 0
	call	printf
.LVL50:
	.loc 1 186 9 is_stmt 1
.L35:
	.loc 1 212 1 is_stmt 0
	lw	ra,76(sp)
	.cfi_remember_state
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
.L34:
	.cfi_restore_state
	.loc 1 181 5 is_stmt 1
	lui	a0,%hi(.LC19)
	addi	a0,a0,%lo(.LC19)
	call	printf
.LVL51:
	.loc 1 183 5
	.loc 1 183 21 is_stmt 0
	li	a2,0
	li	a1,4
	li	a0,8
	call	xQueueGenericCreate
.LVL52:
	.loc 1 183 19
	lui	a5,%hi(.LANCHOR0)
	sw	a0,%lo(.LANCHOR0)(a5)
	.loc 1 184 5 is_stmt 1
	.loc 1 184 8 is_stmt 0
	bne	a0,zero,.L36
	.loc 1 185 9 is_stmt 1
	lui	a0,%hi(.LC20)
	addi	a0,a0,%lo(.LC20)
	j	.L44
.L36:
	.loc 1 189 5
	.loc 1 189 9 is_stmt 0
	lui	a1,%hi(.LC21)
	lui	a0,%hi(app_task)
	li	a5,0
	li	a4,15
	li	a3,0
	li	a2,1024
	addi	a1,a1,%lo(.LC21)
	addi	a0,a0,%lo(app_task)
	call	xTaskCreate
.LVL53:
	.loc 1 189 8
	li	a5,1
	beq	a0,a5,.L37
	.loc 1 191 9 is_stmt 1
	lui	a0,%hi(.LC22)
	addi	a0,a0,%lo(.LC22)
	j	.L44
.L37:
	.loc 1 195 5
	.loc 1 195 9 is_stmt 0
	call	frame_pool_init
.LVL54:
	.loc 1 195 8
	beq	a0,zero,.L38
	.loc 1 196 9 is_stmt 1
	lui	a0,%hi(.LC23)
	addi	a0,a0,%lo(.LC23)
	j	.L44
.L38:
	.loc 1 200 5
	li	a1,0
	call	tcpip_init
.LVL55:
	.loc 1 201 5
	.loc 1 201 9 is_stmt 0
	call	wifi_start_firmware_task
.LVL56:
	.loc 1 201 8
	bne	a0,zero,.L35
	.loc 1 205 5 is_stmt 1
	call	uvc_capture_init
.LVL57:
	.loc 1 206 5
	lui	a0,%hi(.LC24)
	addi	a0,a0,%lo(.LC24)
	call	printf
.LVL58:
	.loc 1 208 5
	call	vTaskStartScheduler
.LVL59:
.L39:
	.loc 1 210 5 discriminator 1
	.loc 1 211 5 discriminator 1
	.loc 1 210 11 discriminator 1
	j	.L39
	.cfi_endproc
.LFE359:
	.size	main, .-main
	.section	.bss.app_evt_queue,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	app_evt_queue, @object
	.size	app_evt_queue, 4
app_evt_queue:
	.zero	4
	.section	.bss.wifi_fw_task,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	wifi_fw_task, @object
	.size	wifi_fw_task, 4
wifi_fw_task:
	.zero	4
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./components/os/freertos/portable/GCC/RISC-V/common/portmacro.h"
	.file 5 "./components/os/freertos/include/task.h"
	.file 6 "./components/os/freertos/include/queue.h"
	.file 7 "./components/net/lwip/lwip/src/include/lwip/netif.h"
	.file 8 "./components/wireless/qcc74x_macsw/include/export/mac/mac_types.h"
	.file 9 "./drivers/lhal/include/qcc74x_irq.h"
	.file 10 "./drivers/lhal/include/qcc74x_core.h"
	.file 11 "./components/net/lwip/lwip/src/include/lwip/memp.h"
	.file 12 "./drivers/soc/qcc743/std/include/hardware/qcc743.h"
	.file 13 "./drivers/soc/qcc743/std/include/qcc743_clock.h"
	.file 14 "./drivers/lhal/include/qcc74x_efuse.h"
	.file 15 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/stdio.h"
	.file 16 "./components/mm/./mem.h"
	.file 17 "./bsp/board/qcc74xdk/./board.h"
	.file 18 "./drivers/rfparam/Inc/rfparam_adapter.h"
	.file 19 "./examples/usb_cam_stream/frame_pool.h"
	.file 20 "./components/net/lwip/lwip/src/include/lwip/tcpip.h"
	.file 21 "./examples/usb_cam_stream/uvc_capture.h"
	.file 22 "./components/wireless/wifi6/qcc74x_fhost/include/wifi_mgmr.h"
	.file 23 "./examples/usb_cam_stream/wifi_ap.h"
	.file 24 "./examples/usb_cam_stream/http_server.h"
	.file 25 "./examples/usb_cam_stream/metrics.h"
	.file 26 "./drivers/soc/qcc743/std/include/qcc743_glb.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xb66
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF225
	.byte	0xc
	.4byte	.LASF226
	.4byte	.LASF227
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x4
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x46
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x60
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4d
	.byte	0x12
	.4byte	0x73
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.byte	0x4
	.4byte	.LASF9
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x86
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.byte	0x4
	.4byte	.LASF13
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x3a
	.byte	0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x54
	.byte	0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x2c
	.byte	0x13
	.4byte	0x67
	.byte	0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x7a
	.byte	0x5
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.byte	0x6
	.4byte	0xcd
	.byte	0x7
	.byte	0x4
	.4byte	0xd4
	.byte	0x4
	.4byte	.LASF18
	.byte	0x4
	.byte	0x42
	.byte	0x11
	.4byte	0xb3
	.byte	0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0x44
	.byte	0x12
	.4byte	0xbf
	.byte	0x4
	.4byte	.LASF20
	.byte	0x5
	.byte	0x5c
	.byte	0x26
	.4byte	0x103
	.byte	0x7
	.byte	0x4
	.4byte	0x109
	.byte	0x8
	.4byte	.LASF22
	.byte	0x7
	.byte	0x4
	.4byte	0x114
	.byte	0x9
	.4byte	0x124
	.byte	0xa
	.4byte	0x25
	.byte	0xa
	.4byte	0xcb
	.byte	0
	.byte	0x4
	.4byte	.LASF21
	.byte	0x6
	.byte	0x33
	.byte	0x22
	.4byte	0x130
	.byte	0x7
	.byte	0x4
	.4byte	0x136
	.byte	0x8
	.4byte	.LASF23
	.byte	0xb
	.4byte	0xcd
	.4byte	0x14b
	.byte	0xc
	.4byte	0x2c
	.byte	0xf
	.byte	0
	.byte	0xd
	.byte	0x7
	.byte	0x1
	.4byte	0x46
	.byte	0xb
	.byte	0x34
	.byte	0xe
	.4byte	0x1ae
	.byte	0xe
	.4byte	.LASF24
	.byte	0
	.byte	0xe
	.4byte	.LASF25
	.byte	0x1
	.byte	0xe
	.4byte	.LASF26
	.byte	0x2
	.byte	0xe
	.4byte	.LASF27
	.byte	0x3
	.byte	0xe
	.4byte	.LASF28
	.byte	0x4
	.byte	0xe
	.4byte	.LASF29
	.byte	0x5
	.byte	0xe
	.4byte	.LASF30
	.byte	0x6
	.byte	0xe
	.4byte	.LASF31
	.byte	0x7
	.byte	0xe
	.4byte	.LASF32
	.byte	0x8
	.byte	0xe
	.4byte	.LASF33
	.byte	0x9
	.byte	0xe
	.4byte	.LASF34
	.byte	0xa
	.byte	0xe
	.4byte	.LASF35
	.byte	0xb
	.byte	0xe
	.4byte	.LASF36
	.byte	0xc
	.byte	0xe
	.4byte	.LASF37
	.byte	0xd
	.byte	0
	.byte	0xf
	.4byte	.LASF42
	.byte	0x7
	.byte	0x1
	.4byte	0x46
	.byte	0x7
	.byte	0x71
	.byte	0x6
	.4byte	0x1d3
	.byte	0xe
	.4byte	.LASF38
	.byte	0
	.byte	0xe
	.4byte	.LASF39
	.byte	0x1
	.byte	0xe
	.4byte	.LASF40
	.byte	0x2
	.byte	0
	.byte	0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF41
	.byte	0x10
	.4byte	.LASF43
	.byte	0x7
	.byte	0x1
	.4byte	0x46
	.byte	0x8
	.2byte	0x166
	.byte	0x6
	.4byte	0x20c
	.byte	0xe
	.4byte	.LASF44
	.byte	0
	.byte	0xe
	.4byte	.LASF45
	.byte	0x1
	.byte	0xe
	.4byte	.LASF46
	.byte	0x2
	.byte	0xe
	.4byte	.LASF47
	.byte	0x3
	.byte	0xe
	.4byte	.LASF48
	.byte	0x4
	.byte	0
	.byte	0x10
	.4byte	.LASF49
	.byte	0x7
	.byte	0x1
	.4byte	0x46
	.byte	0x8
	.2byte	0x175
	.byte	0x6
	.4byte	0x25c
	.byte	0xe
	.4byte	.LASF50
	.byte	0
	.byte	0xe
	.4byte	.LASF51
	.byte	0x1
	.byte	0xe
	.4byte	.LASF52
	.byte	0x2
	.byte	0xe
	.4byte	.LASF53
	.byte	0x3
	.byte	0xe
	.4byte	.LASF54
	.byte	0x4
	.byte	0xe
	.4byte	.LASF55
	.byte	0x5
	.byte	0xe
	.4byte	.LASF56
	.byte	0x6
	.byte	0xe
	.4byte	.LASF57
	.byte	0x7
	.byte	0xe
	.4byte	.LASF58
	.byte	0x8
	.byte	0xe
	.4byte	.LASF59
	.byte	0x9
	.byte	0
	.byte	0x4
	.4byte	.LASF60
	.byte	0x9
	.byte	0xf
	.byte	0x10
	.4byte	0x10e
	.byte	0x11
	.4byte	.LASF228
	.byte	0x10
	.byte	0xa
	.byte	0x67
	.byte	0x8
	.4byte	0x2d1
	.byte	0x12
	.4byte	.LASF61
	.byte	0xa
	.byte	0x68
	.byte	0x11
	.4byte	0xd9
	.byte	0
	.byte	0x12
	.4byte	.LASF62
	.byte	0xa
	.byte	0x69
	.byte	0xe
	.4byte	0xbf
	.byte	0x4
	.byte	0x12
	.4byte	.LASF63
	.byte	0xa
	.byte	0x6a
	.byte	0xd
	.4byte	0x9b
	.byte	0x8
	.byte	0x13
	.string	"idx"
	.byte	0xa
	.byte	0x6b
	.byte	0xd
	.4byte	0x9b
	.byte	0x9
	.byte	0x12
	.4byte	.LASF64
	.byte	0xa
	.byte	0x6c
	.byte	0xd
	.4byte	0x9b
	.byte	0xa
	.byte	0x12
	.4byte	.LASF65
	.byte	0xa
	.byte	0x6d
	.byte	0xd
	.4byte	0x9b
	.byte	0xb
	.byte	0x12
	.4byte	.LASF66
	.byte	0xa
	.byte	0x6e
	.byte	0xb
	.4byte	0xcb
	.byte	0xc
	.byte	0
	.byte	0xd
	.byte	0x7
	.byte	0x1
	.4byte	0x46
	.byte	0xc
	.byte	0x29
	.byte	0xe
	.4byte	0x490
	.byte	0xe
	.4byte	.LASF67
	.byte	0x1
	.byte	0xe
	.4byte	.LASF68
	.byte	0x3
	.byte	0xe
	.4byte	.LASF69
	.byte	0x5
	.byte	0xe
	.4byte	.LASF70
	.byte	0x7
	.byte	0xe
	.4byte	.LASF71
	.byte	0x9
	.byte	0xe
	.4byte	.LASF72
	.byte	0xb
	.byte	0xe
	.4byte	.LASF73
	.byte	0xc
	.byte	0xe
	.4byte	.LASF74
	.byte	0x10
	.byte	0xe
	.4byte	.LASF75
	.byte	0x11
	.byte	0xe
	.4byte	.LASF76
	.byte	0x12
	.byte	0xe
	.4byte	.LASF77
	.byte	0x13
	.byte	0xe
	.4byte	.LASF78
	.byte	0x14
	.byte	0xe
	.4byte	.LASF79
	.byte	0x15
	.byte	0xe
	.4byte	.LASF80
	.byte	0x16
	.byte	0xe
	.4byte	.LASF81
	.byte	0x17
	.byte	0xe
	.4byte	.LASF82
	.byte	0x18
	.byte	0xe
	.4byte	.LASF83
	.byte	0x19
	.byte	0xe
	.4byte	.LASF84
	.byte	0x1a
	.byte	0xe
	.4byte	.LASF85
	.byte	0x1b
	.byte	0xe
	.4byte	.LASF86
	.byte	0x1c
	.byte	0xe
	.4byte	.LASF87
	.byte	0x1d
	.byte	0xe
	.4byte	.LASF88
	.byte	0x1e
	.byte	0xe
	.4byte	.LASF89
	.byte	0x1f
	.byte	0xe
	.4byte	.LASF90
	.byte	0x20
	.byte	0xe
	.4byte	.LASF91
	.byte	0x21
	.byte	0xe
	.4byte	.LASF92
	.byte	0x22
	.byte	0xe
	.4byte	.LASF93
	.byte	0x23
	.byte	0xe
	.4byte	.LASF94
	.byte	0x24
	.byte	0xe
	.4byte	.LASF95
	.byte	0x25
	.byte	0xe
	.4byte	.LASF96
	.byte	0x26
	.byte	0xe
	.4byte	.LASF97
	.byte	0x27
	.byte	0xe
	.4byte	.LASF98
	.byte	0x28
	.byte	0xe
	.4byte	.LASF99
	.byte	0x29
	.byte	0xe
	.4byte	.LASF100
	.byte	0x2a
	.byte	0xe
	.4byte	.LASF101
	.byte	0x2b
	.byte	0xe
	.4byte	.LASF102
	.byte	0x2c
	.byte	0xe
	.4byte	.LASF103
	.byte	0x2d
	.byte	0xe
	.4byte	.LASF104
	.byte	0x2e
	.byte	0xe
	.4byte	.LASF105
	.byte	0x2f
	.byte	0xe
	.4byte	.LASF106
	.byte	0x30
	.byte	0xe
	.4byte	.LASF107
	.byte	0x31
	.byte	0xe
	.4byte	.LASF108
	.byte	0x32
	.byte	0xe
	.4byte	.LASF109
	.byte	0x33
	.byte	0xe
	.4byte	.LASF110
	.byte	0x34
	.byte	0xe
	.4byte	.LASF111
	.byte	0x35
	.byte	0xe
	.4byte	.LASF112
	.byte	0x36
	.byte	0xe
	.4byte	.LASF113
	.byte	0x37
	.byte	0xe
	.4byte	.LASF114
	.byte	0x38
	.byte	0xe
	.4byte	.LASF115
	.byte	0x39
	.byte	0xe
	.4byte	.LASF116
	.byte	0x3a
	.byte	0xe
	.4byte	.LASF117
	.byte	0x3b
	.byte	0xe
	.4byte	.LASF118
	.byte	0x3c
	.byte	0xe
	.4byte	.LASF119
	.byte	0x3d
	.byte	0xe
	.4byte	.LASF120
	.byte	0x3e
	.byte	0xe
	.4byte	.LASF121
	.byte	0x3f
	.byte	0xe
	.4byte	.LASF122
	.byte	0x40
	.byte	0xe
	.4byte	.LASF123
	.byte	0x41
	.byte	0xe
	.4byte	.LASF124
	.byte	0x42
	.byte	0xe
	.4byte	.LASF125
	.byte	0x43
	.byte	0xe
	.4byte	.LASF126
	.byte	0x44
	.byte	0xe
	.4byte	.LASF127
	.byte	0x45
	.byte	0xe
	.4byte	.LASF128
	.byte	0x46
	.byte	0xe
	.4byte	.LASF129
	.byte	0x47
	.byte	0xe
	.4byte	.LASF130
	.byte	0x48
	.byte	0xe
	.4byte	.LASF131
	.byte	0x49
	.byte	0xe
	.4byte	.LASF132
	.byte	0x4a
	.byte	0xe
	.4byte	.LASF133
	.byte	0x4b
	.byte	0xe
	.4byte	.LASF134
	.byte	0x4c
	.byte	0xe
	.4byte	.LASF135
	.byte	0x4d
	.byte	0xe
	.4byte	.LASF136
	.byte	0x4e
	.byte	0xe
	.4byte	.LASF137
	.byte	0x4f
	.byte	0xe
	.4byte	.LASF138
	.byte	0x50
	.byte	0
	.byte	0xd
	.byte	0x7
	.byte	0x1
	.4byte	0x46
	.byte	0xc
	.byte	0xed
	.byte	0xe
	.4byte	0x57d
	.byte	0xe
	.4byte	.LASF139
	.byte	0
	.byte	0xe
	.4byte	.LASF140
	.byte	0x1
	.byte	0xe
	.4byte	.LASF141
	.byte	0x2
	.byte	0xe
	.4byte	.LASF142
	.byte	0x3
	.byte	0xe
	.4byte	.LASF143
	.byte	0x4
	.byte	0xe
	.4byte	.LASF144
	.byte	0x5
	.byte	0xe
	.4byte	.LASF145
	.byte	0x6
	.byte	0xe
	.4byte	.LASF146
	.byte	0x7
	.byte	0xe
	.4byte	.LASF147
	.byte	0x8
	.byte	0xe
	.4byte	.LASF148
	.byte	0x9
	.byte	0xe
	.4byte	.LASF149
	.byte	0xa
	.byte	0xe
	.4byte	.LASF150
	.byte	0xb
	.byte	0xe
	.4byte	.LASF151
	.byte	0xc
	.byte	0xe
	.4byte	.LASF152
	.byte	0xd
	.byte	0xe
	.4byte	.LASF153
	.byte	0xe
	.byte	0xe
	.4byte	.LASF154
	.byte	0xf
	.byte	0xe
	.4byte	.LASF155
	.byte	0x10
	.byte	0xe
	.4byte	.LASF156
	.byte	0x11
	.byte	0xe
	.4byte	.LASF157
	.byte	0x12
	.byte	0xe
	.4byte	.LASF158
	.byte	0x13
	.byte	0xe
	.4byte	.LASF159
	.byte	0x14
	.byte	0xe
	.4byte	.LASF160
	.byte	0x15
	.byte	0xe
	.4byte	.LASF161
	.byte	0x16
	.byte	0xe
	.4byte	.LASF162
	.byte	0x17
	.byte	0xe
	.4byte	.LASF163
	.byte	0x18
	.byte	0xe
	.4byte	.LASF164
	.byte	0x19
	.byte	0xe
	.4byte	.LASF165
	.byte	0x1a
	.byte	0xe
	.4byte	.LASF166
	.byte	0x1b
	.byte	0xe
	.4byte	.LASF167
	.byte	0x1c
	.byte	0xe
	.4byte	.LASF168
	.byte	0x1d
	.byte	0xe
	.4byte	.LASF169
	.byte	0x1e
	.byte	0xe
	.4byte	.LASF170
	.byte	0x1f
	.byte	0xe
	.4byte	.LASF171
	.byte	0x20
	.byte	0xe
	.4byte	.LASF172
	.byte	0x21
	.byte	0xe
	.4byte	.LASF173
	.byte	0x22
	.byte	0xe
	.4byte	.LASF174
	.byte	0x23
	.byte	0xe
	.4byte	.LASF175
	.byte	0x24
	.byte	0
	.byte	0xd
	.byte	0x7
	.byte	0x1
	.4byte	0x46
	.byte	0xd
	.byte	0x1e
	.byte	0xe
	.4byte	0x5bc
	.byte	0xe
	.4byte	.LASF176
	.byte	0
	.byte	0xe
	.4byte	.LASF177
	.byte	0x1
	.byte	0xe
	.4byte	.LASF178
	.byte	0x2
	.byte	0xe
	.4byte	.LASF179
	.byte	0x3
	.byte	0xe
	.4byte	.LASF180
	.byte	0x4
	.byte	0xe
	.4byte	.LASF181
	.byte	0x5
	.byte	0xe
	.4byte	.LASF182
	.byte	0x6
	.byte	0xe
	.4byte	.LASF183
	.byte	0x7
	.byte	0
	.byte	0x14
	.byte	0x24
	.byte	0xe
	.byte	0xa
	.byte	0x9
	.4byte	0x63b
	.byte	0x12
	.4byte	.LASF184
	.byte	0xe
	.byte	0xc
	.byte	0xd
	.4byte	0x9b
	.byte	0
	.byte	0x12
	.4byte	.LASF185
	.byte	0xe
	.byte	0xd
	.byte	0xd
	.4byte	0x9b
	.byte	0x1
	.byte	0x12
	.4byte	.LASF186
	.byte	0xe
	.byte	0x12
	.byte	0xd
	.4byte	0x9b
	.byte	0x2
	.byte	0x12
	.4byte	.LASF187
	.byte	0xe
	.byte	0x17
	.byte	0xd
	.4byte	0x9b
	.byte	0x3
	.byte	0x12
	.4byte	.LASF188
	.byte	0xe
	.byte	0x1a
	.byte	0xe
	.4byte	0xa7
	.byte	0x4
	.byte	0x12
	.4byte	.LASF189
	.byte	0xe
	.byte	0x1c
	.byte	0x11
	.4byte	0xd9
	.byte	0x8
	.byte	0x12
	.4byte	.LASF190
	.byte	0xe
	.byte	0x1d
	.byte	0x11
	.4byte	0xd9
	.byte	0xc
	.byte	0x12
	.4byte	.LASF191
	.byte	0xe
	.byte	0x20
	.byte	0x11
	.4byte	0xd9
	.byte	0x10
	.byte	0x12
	.4byte	.LASF192
	.byte	0xe
	.byte	0x23
	.byte	0xa
	.4byte	0x13b
	.byte	0x14
	.byte	0
	.byte	0x4
	.4byte	.LASF193
	.byte	0xe
	.byte	0x25
	.byte	0x3
	.4byte	0x5bc
	.byte	0x15
	.4byte	.LASF229
	.byte	0x1
	.byte	0x2c
	.byte	0x20
	.4byte	0x653
	.byte	0x7
	.byte	0x4
	.4byte	0x268
	.byte	0x16
	.4byte	.LASF194
	.byte	0x1
	.byte	0x2d
	.byte	0x15
	.4byte	0xf7
	.byte	0x5
	.byte	0x3
	.4byte	wifi_fw_task
	.byte	0x16
	.4byte	.LASF195
	.byte	0x1
	.byte	0x2e
	.byte	0x16
	.4byte	0x124
	.byte	0x5
	.byte	0x3
	.4byte	app_evt_queue
	.byte	0x17
	.4byte	.LASF198
	.byte	0x1
	.byte	0x9a
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB359
	.4byte	.LFE359-.LFB359
	.byte	0x1
	.byte	0x9c
	.4byte	0x83d
	.byte	0x18
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x70c
	.byte	0x16
	.4byte	.LASF196
	.byte	0x1
	.byte	0xa3
	.byte	0x27
	.4byte	0x63b
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x19
	.4byte	.LVL42
	.4byte	0xa36
	.4byte	0x6c7
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0
	.byte	0x19
	.4byte	.LVL43
	.4byte	0xa42
	.4byte	0x6de
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.byte	0x1b
	.4byte	.LVL44
	.4byte	0xa4e
	.byte	0x1b
	.4byte	.LVL45
	.4byte	0xa5a
	.byte	0x1c
	.4byte	.LVL46
	.4byte	0xa42
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x4
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LVL40
	.4byte	0xa66
	.byte	0x19
	.4byte	.LVL41
	.4byte	0xa42
	.4byte	0x73e
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0x1a
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.byte	0x19
	.4byte	.LVL47
	.4byte	0xa72
	.4byte	0x755
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.byte	0x1b
	.4byte	.LVL48
	.4byte	0xa7e
	.byte	0x19
	.4byte	.LVL49
	.4byte	0xa8a
	.4byte	0x77b
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x1a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1b
	.4byte	.LVL50
	.4byte	0xa42
	.byte	0x19
	.4byte	.LVL51
	.4byte	0xa42
	.4byte	0x79b
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0
	.byte	0x19
	.4byte	.LVL52
	.4byte	0xa96
	.4byte	0x7b8
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x38
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x34
	.byte	0x1a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x19
	.4byte	.LVL53
	.4byte	0xaa3
	.4byte	0x7ee
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	app_task
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC21
	.byte	0x1a
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x400
	.byte	0x1a
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x1a
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x3f
	.byte	0x1a
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1b
	.4byte	.LVL54
	.4byte	0xab0
	.byte	0x19
	.4byte	.LVL55
	.4byte	0xabc
	.4byte	0x80a
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1b
	.4byte	.LVL56
	.4byte	0x96f
	.byte	0x1b
	.4byte	.LVL57
	.4byte	0xac8
	.byte	0x19
	.4byte	.LVL58
	.4byte	0xa42
	.4byte	0x833
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC24
	.byte	0
	.byte	0x1b
	.4byte	.LVL59
	.4byte	0xad4
	.byte	0
	.byte	0x1d
	.4byte	.LASF230
	.byte	0x1
	.byte	0x6e
	.byte	0x6
	.4byte	.LFB358
	.4byte	.LFE358-.LFB358
	.byte	0x1
	.byte	0x9c
	.4byte	0x8e7
	.byte	0x1e
	.4byte	.LASF197
	.byte	0x1
	.byte	0x6e
	.byte	0x22
	.4byte	0xbf
	.4byte	.LLST1
	.byte	0x19
	.4byte	.LVL19
	.4byte	0xa42
	.4byte	0x87a
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0x1b
	.4byte	.LVL20
	.4byte	0xa4e
	.byte	0x1b
	.4byte	.LVL21
	.4byte	0xa42
	.byte	0x19
	.4byte	.LVL24
	.4byte	0xae1
	.4byte	0x8aa
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x1a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0x1a
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x19
	.4byte	.LVL27
	.4byte	0xa42
	.4byte	0x8c1
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x1b
	.4byte	.LVL28
	.4byte	0xaee
	.byte	0x1b
	.4byte	.LVL32
	.4byte	0xa42
	.byte	0x1c
	.4byte	.LVL39
	.4byte	0xa42
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LASF231
	.byte	0x1
	.byte	0x4f
	.byte	0xd
	.4byte	.LFB357
	.4byte	.LFE357-.LFB357
	.byte	0x1
	.byte	0x9c
	.4byte	0x96f
	.byte	0x20
	.string	"arg"
	.byte	0x1
	.byte	0x4f
	.byte	0x1c
	.4byte	0xcb
	.4byte	.LLST0
	.byte	0x16
	.4byte	.LASF197
	.byte	0x1
	.byte	0x52
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x19
	.4byte	.LVL2
	.4byte	0xafa
	.4byte	0x936
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x1a
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0x1b
	.4byte	.LVL3
	.4byte	0xb07
	.byte	0x1b
	.4byte	.LVL4
	.4byte	0xb13
	.byte	0x19
	.4byte	.LVL5
	.4byte	0xb13
	.4byte	0x95c
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LVL6
	.4byte	0xb1f
	.byte	0x1b
	.4byte	.LVL7
	.4byte	0xb2b
	.byte	0
	.byte	0x17
	.4byte	.LASF199
	.byte	0x1
	.byte	0x32
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB356
	.4byte	.LFE356-.LFB356
	.byte	0x1
	.byte	0x9c
	.4byte	0xa36
	.byte	0x21
	.4byte	.LASF232
	.byte	0x1
	.byte	0x3b
	.byte	0x11
	.byte	0x19
	.4byte	.LVL8
	.4byte	0xa42
	.4byte	0x9a8
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x1b
	.4byte	.LVL9
	.4byte	0xb37
	.byte	0x19
	.4byte	.LVL10
	.4byte	0xb44
	.4byte	0x9c4
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0x19
	.4byte	.LVL11
	.4byte	0xb51
	.4byte	0x9dd
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x46
	.byte	0x1a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x19
	.4byte	.LVL12
	.4byte	0xb5d
	.4byte	0x9f1
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x46
	.byte	0
	.byte	0x19
	.4byte	.LVL13
	.4byte	0xaa3
	.4byte	0xa22
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x1a
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x600
	.byte	0x1a
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x1a
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x40
	.byte	0x1a
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0
	.byte	0x1c
	.4byte	.LVL14
	.4byte	0xa42
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LASF200
	.4byte	.LASF200
	.byte	0xe
	.byte	0x3d
	.byte	0x6
	.byte	0x22
	.4byte	.LASF201
	.4byte	.LASF201
	.byte	0xf
	.byte	0xc8
	.byte	0x5
	.byte	0x22
	.4byte	.LASF202
	.4byte	.LASF202
	.byte	0x10
	.byte	0xa5
	.byte	0xa
	.byte	0x22
	.4byte	.LASF203
	.4byte	.LASF203
	.byte	0x10
	.byte	0xa8
	.byte	0xa
	.byte	0x22
	.4byte	.LASF204
	.4byte	.LASF204
	.byte	0x11
	.byte	0x4
	.byte	0x6
	.byte	0x22
	.4byte	.LASF205
	.4byte	.LASF205
	.byte	0xa
	.byte	0x7b
	.byte	0x19
	.byte	0x22
	.4byte	.LASF206
	.4byte	.LASF206
	.byte	0x1
	.byte	0x30
	.byte	0xd
	.byte	0x22
	.4byte	.LASF207
	.4byte	.LASF207
	.byte	0x12
	.byte	0x44
	.byte	0x9
	.byte	0x23
	.4byte	.LASF208
	.4byte	.LASF208
	.byte	0x6
	.2byte	0x62a
	.byte	0x13
	.byte	0x23
	.4byte	.LASF209
	.4byte	.LASF209
	.byte	0x5
	.2byte	0x168
	.byte	0x10
	.byte	0x22
	.4byte	.LASF210
	.4byte	.LASF210
	.byte	0x13
	.byte	0x19
	.byte	0x5
	.byte	0x22
	.4byte	.LASF211
	.4byte	.LASF211
	.byte	0x14
	.byte	0x4d
	.byte	0x6
	.byte	0x22
	.4byte	.LASF212
	.4byte	.LASF212
	.byte	0x15
	.byte	0x20
	.byte	0x6
	.byte	0x23
	.4byte	.LASF213
	.4byte	.LASF213
	.byte	0x5
	.2byte	0x4f0
	.byte	0x6
	.byte	0x23
	.4byte	.LASF214
	.4byte	.LASF214
	.byte	0x6
	.2byte	0x2ae
	.byte	0xc
	.byte	0x22
	.4byte	.LASF215
	.4byte	.LASF215
	.byte	0x16
	.byte	0x6c
	.byte	0x5
	.byte	0x23
	.4byte	.LASF216
	.4byte	.LASF216
	.byte	0x6
	.2byte	0x391
	.byte	0xc
	.byte	0x22
	.4byte	.LASF217
	.4byte	.LASF217
	.byte	0x17
	.byte	0x2b
	.byte	0x6
	.byte	0x22
	.4byte	.LASF218
	.4byte	.LASF218
	.byte	0x17
	.byte	0x2d
	.byte	0x6
	.byte	0x22
	.4byte	.LASF219
	.4byte	.LASF219
	.byte	0x18
	.byte	0x19
	.byte	0x6
	.byte	0x22
	.4byte	.LASF220
	.4byte	.LASF220
	.byte	0x19
	.byte	0xa
	.byte	0x6
	.byte	0x23
	.4byte	.LASF221
	.4byte	.LASF221
	.byte	0x1a
	.2byte	0x696
	.byte	0x11
	.byte	0x23
	.4byte	.LASF222
	.4byte	.LASF222
	.byte	0x1a
	.2byte	0x694
	.byte	0x11
	.byte	0x22
	.4byte	.LASF223
	.4byte	.LASF223
	.byte	0x9
	.byte	0x3f
	.byte	0x5
	.byte	0x22
	.4byte	.LASF224
	.4byte	.LASF224
	.byte	0x9
	.byte	0x4e
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
	.byte	0x8
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
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x4
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
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
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
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x11
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
	.byte	0xb
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x14
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
	.byte	0x18
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
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
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
	.byte	0x1e
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
	.byte	0x1f
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
	.byte	0x20
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
	.byte	0x21
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
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x22
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST1:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18
	.4byte	.LVL19-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26
	.4byte	.LVL27-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL31
	.4byte	.LVL32-1
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL38
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LFE357
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB357
	.4byte	.LFE357-.LFB357
	.4byte	.LFB356
	.4byte	.LFE356-.LFB356
	.4byte	.LFB358
	.4byte	.LFE358-.LFB358
	.4byte	.LFB359
	.4byte	.LFE359-.LFB359
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB357
	.4byte	.LFE357
	.4byte	.LFB356
	.4byte	.LFE356
	.4byte	.LFB358
	.4byte	.LFE358
	.4byte	.LFB359
	.4byte	.LFE359
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF201:
	.string	"printf"
.LASF66:
	.string	"user_data"
.LASF90:
	.string	"DVP2BUS_INT0_IRQn"
.LASF25:
	.string	"MEMP_UDP_PCB"
.LASF186:
	.string	"psram_info"
.LASF33:
	.string	"MEMP_SYS_TIMEOUT"
.LASF117:
	.string	"XTAL_RDY_SCAN_IRQn"
.LASF153:
	.string	"QCC74x_AHB_SLAVE1_PDS"
.LASF209:
	.string	"xTaskCreate"
.LASF225:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF143:
	.string	"QCC74x_AHB_SLAVE1_SEC_ENG"
.LASF157:
	.string	"QCC74x_AHB_SLAVE1_SPI"
.LASF85:
	.string	"SEC_ENG_ID1_CDET_IRQn"
.LASF127:
	.string	"BOD_IRQn"
.LASF4:
	.string	"__uint8_t"
.LASF71:
	.string	"SEXT_IRQn"
.LASF87:
	.string	"SF_CTRL_ID1_IRQn"
.LASF7:
	.string	"__int32_t"
.LASF189:
	.string	"package_name"
.LASF104:
	.string	"RESERVED01_IRQn"
.LASF12:
	.string	"long long unsigned int"
.LASF53:
	.string	"TID_3"
.LASF166:
	.string	"QCC74x_AHB_SLAVE1_RSVD27"
.LASF167:
	.string	"QCC74x_AHB_SLAVE1_RSVD28"
.LASF105:
	.string	"GPIO_DMA_IRQn"
.LASF34:
	.string	"MEMP_NETDB"
.LASF21:
	.string	"QueueHandle_t"
.LASF64:
	.string	"sub_idx"
.LASF81:
	.string	"SDIO_IRQn"
.LASF227:
	.string	"./examples/usb_cam_stream/build_wsl"
.LASF161:
	.string	"QCC74x_AHB_SLAVE1_IRR"
.LASF184:
	.string	"package"
.LASF148:
	.string	"QCC74x_AHB_SLAVE1_L1C"
.LASF126:
	.string	"HBN_OUT1_IRQn"
.LASF11:
	.string	"long long int"
.LASF1:
	.string	"signed char"
.LASF210:
	.string	"frame_pool_init"
.LASF72:
	.string	"MEXT_IRQn"
.LASF179:
	.string	"QCC74x_SYSTEM_CLOCK_MCU_PBCLK"
.LASF194:
	.string	"wifi_fw_task"
.LASF163:
	.string	"QCC74x_AHB_SLAVE1_QDEC"
.LASF171:
	.string	"QCC74x_AHB_SLAVE1_MAX"
.LASF131:
	.string	"MAC_INT_TIMER_IRQn"
.LASF8:
	.string	"long int"
.LASF22:
	.string	"tskTaskControlBlock"
.LASF232:
	.string	"interrupt0_handler"
.LASF191:
	.string	"psram_info_name"
.LASF46:
	.string	"AC_VI"
.LASF89:
	.string	"DMA0_ALL_IRQn"
.LASF226:
	.string	"./examples/usb_cam_stream/main.c"
.LASF118:
	.string	"GPIO_INT0_IRQn"
.LASF93:
	.string	"WIFI_TBTT_WAKEUP_IRQn"
.LASF20:
	.string	"TaskHandle_t"
.LASF147:
	.string	"QCC74x_AHB_SLAVE1_CCI"
.LASF193:
	.string	"qcc74x_efuse_device_info_type"
.LASF3:
	.string	"short int"
.LASF40:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF14:
	.string	"uint16_t"
.LASF121:
	.string	"M154_REQ_ACK_IRQn"
.LASF99:
	.string	"GPADC_DMA_IRQn"
.LASF18:
	.string	"BaseType_t"
.LASF77:
	.string	"SDU_SOFT_RST_IRQn"
.LASF198:
	.string	"main"
.LASF188:
	.string	"process_corner"
.LASF219:
	.string	"http_server_start"
.LASF173:
	.string	"QCC74x_AHB_SLAVE1_GPDAC"
.LASF67:
	.string	"SSOFT_IRQn"
.LASF207:
	.string	"rfparam_init"
.LASF58:
	.string	"TID_MGT"
.LASF9:
	.string	"__uint32_t"
.LASF145:
	.string	"QCC74x_AHB_SLAVE1_RSVD6"
.LASF79:
	.string	"RF_TOP_INT0_IRQn"
.LASF213:
	.string	"vTaskStartScheduler"
.LASF74:
	.string	"BMX_MCU_BUS_ERR_IRQn"
.LASF162:
	.string	"QCC74x_AHB_SLAVE1_CKS"
.LASF101:
	.string	"SPI0_IRQn"
.LASF96:
	.string	"AUPDM_IRQn"
.LASF212:
	.string	"uvc_capture_init"
.LASF29:
	.string	"MEMP_REASSDATA"
.LASF57:
	.string	"TID_7"
.LASF0:
	.string	"unsigned int"
.LASF220:
	.string	"metrics_init"
.LASF128:
	.string	"WIFI_IRQn"
.LASF170:
	.string	"QCC74x_AHB_SLAVE1_RSVD31"
.LASF91:
	.string	"SDH_IRQn"
.LASF151:
	.string	"QCC74x_AHB_SLAVE1_DMA"
.LASF124:
	.string	"PDS_WAKEUP_IRQn"
.LASF10:
	.string	"long unsigned int"
.LASF176:
	.string	"QCC74x_SYSTEM_CLOCK_MCU_ROOT_CLK"
.LASF229:
	.string	"uart0"
.LASF112:
	.string	"TIMER0_WDT_IRQn"
.LASF61:
	.string	"name"
.LASF26:
	.string	"MEMP_TCP_PCB"
.LASF113:
	.string	"I2C1_IRQn"
.LASF214:
	.string	"xQueueGenericSend"
.LASF119:
	.string	"DM_IRQn"
.LASF6:
	.string	"short unsigned int"
.LASF50:
	.string	"TID_0"
.LASF83:
	.string	"SEC_ENG_ID1_SHA_AES_TRNG_PKA_GMAC_IRQn"
.LASF216:
	.string	"xQueueReceive"
.LASF80:
	.string	"RF_TOP_INT1_IRQn"
.LASF195:
	.string	"app_evt_queue"
.LASF133:
	.string	"MAC_INT_RX_TRIGGER_IRQn"
.LASF55:
	.string	"TID_5"
.LASF111:
	.string	"TIMER0_CH1_IRQn"
.LASF95:
	.string	"USB_IRQn"
.LASF185:
	.string	"flash_info"
.LASF92:
	.string	"DVP2BUS_INT1_IRQn"
.LASF202:
	.string	"kfree_size"
.LASF211:
	.string	"tcpip_init"
.LASF78:
	.string	"AUDIO_IRQn"
.LASF178:
	.string	"QCC74x_SYSTEM_CLOCK_MCU_BCLK"
.LASF160:
	.string	"QCC74x_AHB_SLAVE1_TIMER"
.LASF48:
	.string	"AC_MAX"
.LASF115:
	.string	"ANA_OCP_OUT_TO_CPU_0_IRQn"
.LASF192:
	.string	"process_corner_name"
.LASF146:
	.string	"QCC74x_AHB_SLAVE1_EF_CTRL"
.LASF102:
	.string	"UART0_IRQn"
.LASF37:
	.string	"MEMP_MAX"
.LASF69:
	.string	"STIME_IRQn"
.LASF187:
	.string	"version"
.LASF59:
	.string	"TID_MAX"
.LASF47:
	.string	"AC_VO"
.LASF206:
	.string	"shell_init_with_task"
.LASF51:
	.string	"TID_1"
.LASF52:
	.string	"TID_2"
.LASF43:
	.string	"mac_ac"
.LASF54:
	.string	"TID_4"
.LASF159:
	.string	"QCC74x_AHB_SLAVE1_PWM"
.LASF56:
	.string	"TID_6"
.LASF140:
	.string	"QCC74x_AHB_SLAVE1_RF_TOP"
.LASF200:
	.string	"qcc74x_efuse_get_device_info"
.LASF19:
	.string	"TickType_t"
.LASF68:
	.string	"MSOFT_IRQn"
.LASF172:
	.string	"QCC74x_AHB_SLAVE1_GPADC"
.LASF107:
	.string	"PWM_IRQn"
.LASF97:
	.string	"MJPEG_IRQn"
.LASF180:
	.string	"QCC74x_SYSTEM_CLOCK_F32K"
.LASF62:
	.string	"reg_base"
.LASF197:
	.string	"code"
.LASF45:
	.string	"AC_BE"
.LASF132:
	.string	"MAC_INT_MISC_IRQn"
.LASF154:
	.string	"QCC74x_AHB_SLAVE1_RSVD15"
.LASF44:
	.string	"AC_BK"
.LASF116:
	.string	"ANA_OCP_OUT_TO_CPU_1_IRQn"
.LASF182:
	.string	"QCC74x_SYSTEM_CLOCK_XTAL"
.LASF106:
	.string	"I2C0_IRQn"
.LASF13:
	.string	"uint8_t"
.LASF122:
	.string	"M154_INT_IRQn"
.LASF39:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_ACD"
.LASF223:
	.string	"qcc74x_irq_attach"
.LASF103:
	.string	"UART1_IRQn"
.LASF130:
	.string	"BLE_IRQn"
.LASF135:
	.string	"MAC_INT_GEN_IRQn"
.LASF23:
	.string	"QueueDefinition"
.LASF94:
	.string	"IRRX_IRQn"
.LASF41:
	.string	"_Bool"
.LASF15:
	.string	"int32_t"
.LASF2:
	.string	"unsigned char"
.LASF75:
	.string	"BMX_MCU_TO_IRQn"
.LASF142:
	.string	"QCC74x_AHB_SLAVE1_SEC_DBG"
.LASF141:
	.string	"QCC74x_AHB_SLAVE1_GPIP"
.LASF84:
	.string	"SEC_ENG_ID0_SHA_AES_TRNG_PKA_GMAC_IRQn"
.LASF76:
	.string	"DBI_IRQn"
.LASF139:
	.string	"QCC74x_AHB_SLAVE1_GLB"
.LASF49:
	.string	"mac_tid"
.LASF164:
	.string	"QCC74x_AHB_SLAVE1_KYS"
.LASF208:
	.string	"xQueueGenericCreate"
.LASF100:
	.string	"EFUSE_IRQn"
.LASF134:
	.string	"MAC_INT_TX_TRIGGER_IRQn"
.LASF168:
	.string	"QCC74x_AHB_SLAVE1_RSVD29"
.LASF38:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF196:
	.string	"dev_info"
.LASF108:
	.string	"RESERVED0_IRQn"
.LASF205:
	.string	"qcc74x_device_get_by_name"
.LASF224:
	.string	"qcc74x_irq_enable"
.LASF16:
	.string	"uint32_t"
.LASF222:
	.string	"GLB_AHB_MCU_Software_Reset"
.LASF114:
	.string	"I2S_IRQn"
.LASF63:
	.string	"irq_num"
.LASF32:
	.string	"MEMP_TCPIP_MSG_API"
.LASF17:
	.string	"char"
.LASF70:
	.string	"MTIME_IRQn"
.LASF215:
	.string	"wifi_mgmr_init"
.LASF82:
	.string	"WIFI_TBTT_SLEEP_IRQn"
.LASF30:
	.string	"MEMP_NETBUF"
.LASF5:
	.string	"__uint16_t"
.LASF27:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF31:
	.string	"MEMP_NETCONN"
.LASF181:
	.string	"QCC74x_SYSTEM_CLOCK_XCLK"
.LASF24:
	.string	"MEMP_RAW_PCB"
.LASF36:
	.string	"MEMP_PBUF_POOL"
.LASF231:
	.string	"app_task"
.LASF136:
	.string	"MAC_INT_PROT_TRIGGER_IRQn"
.LASF149:
	.string	"QCC74x_AHB_SLAVE1_RSVD10"
.LASF120:
	.string	"BT_IRQn"
.LASF65:
	.string	"dev_type"
.LASF129:
	.string	"BZ_PHY_INT_IRQn"
.LASF28:
	.string	"MEMP_TCP_SEG"
.LASF169:
	.string	"QCC74x_AHB_SLAVE1_RSVD30"
.LASF98:
	.string	"EMAC_IRQn"
.LASF137:
	.string	"WIFI_IPC_IRQn"
.LASF125:
	.string	"HBN_OUT0_IRQn"
.LASF109:
	.string	"RESERVED1_IRQn"
.LASF228:
	.string	"qcc74x_device_s"
.LASF110:
	.string	"TIMER0_CH0_IRQn"
.LASF60:
	.string	"irq_callback"
.LASF158:
	.string	"QCC74x_AHB_SLAVE1_I2C"
.LASF42:
	.string	"lwip_internal_netif_client_data_index"
.LASF138:
	.string	"IRQn_LAST"
.LASF217:
	.string	"wifi_ap_start"
.LASF144:
	.string	"QCC74x_AHB_SLAVE1_TZ"
.LASF230:
	.string	"wifi_event_handler"
.LASF183:
	.string	"QCC74x_SYSTEM_CLOCK_MAX"
.LASF123:
	.string	"M154_AES_IRQn"
.LASF73:
	.string	"CLIC_SOFT_PEND_IRQn"
.LASF174:
	.string	"QCC74x_AHB_SLAVE1_I2S"
.LASF86:
	.string	"SEC_ENG_ID0_CDET_IRQn"
.LASF218:
	.string	"wifi_ap_event_handler"
.LASF152:
	.string	"QCC74x_AHB_SLAVE1_SDU"
.LASF88:
	.string	"SF_CTRL_ID0_IRQn"
.LASF204:
	.string	"board_init"
.LASF190:
	.string	"flash_info_name"
.LASF155:
	.string	"QCC74x_AHB_SLAVE1_UART0"
.LASF175:
	.string	"QCC74x_AHB_SLAVE1_CAM"
.LASF165:
	.string	"QCC74x_AHB_SLAVE1_UART2"
.LASF203:
	.string	"pfree_size"
.LASF150:
	.string	"QCC74x_AHB_SLAVE1_SF_CTRL"
.LASF156:
	.string	"QCC74x_AHB_SLAVE1_UART1"
.LASF35:
	.string	"MEMP_PBUF"
.LASF177:
	.string	"QCC74x_SYSTEM_CLOCK_MCU_CLK"
.LASF199:
	.string	"wifi_start_firmware_task"
.LASF221:
	.string	"GLB_PER_Clock_UnGate"
	.ident	"GCC: (GNU) 10.4.0"
