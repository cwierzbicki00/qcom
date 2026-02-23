	.file	"crc32.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.crc32,"ax",@progbits
	.align	1
	.globl	crc32
	.type	crc32, @function
crc32:
.LFB106:
	.file 1 "./components/wireless/wifi6/qcc74x_wpa_supplicant/src/utils/crc32.c"
	.loc 1 77 1
	.cfi_startproc
.LVL0:
	.loc 1 78 2
	.loc 1 79 2
	.loc 1 81 2
	.loc 1 82 2
	.loc 1 83 20 is_stmt 0
	lui	a2,%hi(.LANCHOR0)
	.loc 1 81 6
	li	a5,-1
	.loc 1 82 9
	li	a3,0
	.loc 1 83 20
	addi	a2,a2,%lo(.LANCHOR0)
.LVL1:
.L2:
	.loc 1 82 14 is_stmt 1 discriminator 1
	.loc 1 82 2 is_stmt 0 discriminator 1
	bne	a3,a1,.L3
	.loc 1 85 2 is_stmt 1
	.loc 1 86 1 is_stmt 0
	not	a0,a5
.LVL2:
	ret
.LVL3:
.L3:
	.loc 1 83 3 is_stmt 1 discriminator 3
	.loc 1 83 33 is_stmt 0 discriminator 3
	lrbu	a4,a0,a3,0
	.loc 1 82 30 discriminator 3
	addi	a3,a3,1
.LVL4:
	.loc 1 83 26 discriminator 3
	xor	a4,a4,a5
	.loc 1 83 38 discriminator 3
	andi	a4,a4,255
	.loc 1 83 20 discriminator 3
	lrw	a4,a2,a4,2
	.loc 1 83 53 discriminator 3
	srli	a5,a5,8
.LVL5:
	.loc 1 83 7 discriminator 3
	xor	a5,a4,a5
.LVL6:
	.loc 1 82 29 is_stmt 1 discriminator 3
	j	.L2
	.cfi_endproc
.LFE106:
	.size	crc32, .-crc32
	.section	.rodata.crc32_table,"a"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	crc32_table, @object
	.size	crc32_table, 1024
crc32_table:
	.word	0
	.word	1996959894
	.word	-301047508
	.word	-1727442502
	.word	124634137
	.word	1886057615
	.word	-379345611
	.word	-1637575261
	.word	249268274
	.word	2044508324
	.word	-522852066
	.word	-1747789432
	.word	162941995
	.word	2125561021
	.word	-407360249
	.word	-1866523247
	.word	498536548
	.word	1789927666
	.word	-205950648
	.word	-2067906082
	.word	450548861
	.word	1843258603
	.word	-187386543
	.word	-2083289657
	.word	325883990
	.word	1684777152
	.word	-43845254
	.word	-1973040660
	.word	335633487
	.word	1661365465
	.word	-99664541
	.word	-1928851979
	.word	997073096
	.word	1281953886
	.word	-715111964
	.word	-1570279054
	.word	1006888145
	.word	1258607687
	.word	-770865667
	.word	-1526024853
	.word	901097722
	.word	1119000684
	.word	-608450090
	.word	-1396901568
	.word	853044451
	.word	1172266101
	.word	-589951537
	.word	-1412350631
	.word	651767980
	.word	1373503546
	.word	-925412992
	.word	-1076862698
	.word	565507253
	.word	1454621731
	.word	-809855591
	.word	-1195530993
	.word	671266974
	.word	1594198024
	.word	-972236366
	.word	-1324619484
	.word	795835527
	.word	1483230225
	.word	-1050600021
	.word	-1234817731
	.word	1994146192
	.word	31158534
	.word	-1731059524
	.word	-271249366
	.word	1907459465
	.word	112637215
	.word	-1614814043
	.word	-390540237
	.word	2013776290
	.word	251722036
	.word	-1777751922
	.word	-519137256
	.word	2137656763
	.word	141376813
	.word	-1855689577
	.word	-429695999
	.word	1802195444
	.word	476864866
	.word	-2056965928
	.word	-228458418
	.word	1812370925
	.word	453092731
	.word	-2113342271
	.word	-183516073
	.word	1706088902
	.word	314042704
	.word	-1950435094
	.word	-54949764
	.word	1658658271
	.word	366619977
	.word	-1932296973
	.word	-69972891
	.word	1303535960
	.word	984961486
	.word	-1547960204
	.word	-725929758
	.word	1256170817
	.word	1037604311
	.word	-1529756563
	.word	-740887301
	.word	1131014506
	.word	879679996
	.word	-1385723834
	.word	-631195440
	.word	1141124467
	.word	855842277
	.word	-1442165665
	.word	-586318647
	.word	1342533948
	.word	654459306
	.word	-1106571248
	.word	-921952122
	.word	1466479909
	.word	544179635
	.word	-1184443383
	.word	-832445281
	.word	1591671054
	.word	702138776
	.word	-1328506846
	.word	-942167884
	.word	1504918807
	.word	783551873
	.word	-1212326853
	.word	-1061524307
	.word	-306674912
	.word	-1698712650
	.word	62317068
	.word	1957810842
	.word	-355121351
	.word	-1647151185
	.word	81470997
	.word	1943803523
	.word	-480048366
	.word	-1805370492
	.word	225274430
	.word	2053790376
	.word	-468791541
	.word	-1828061283
	.word	167816743
	.word	2097651377
	.word	-267414716
	.word	-2029476910
	.word	503444072
	.word	1762050814
	.word	-144550051
	.word	-2140837941
	.word	426522225
	.word	1852507879
	.word	-19653770
	.word	-1982649376
	.word	282753626
	.word	1742555852
	.word	-105259153
	.word	-1900089351
	.word	397917763
	.word	1622183637
	.word	-690576408
	.word	-1580100738
	.word	953729732
	.word	1340076626
	.word	-776247311
	.word	-1497606297
	.word	1068828381
	.word	1219638859
	.word	-670225446
	.word	-1358292148
	.word	906185462
	.word	1090812512
	.word	-547295293
	.word	-1469587627
	.word	829329135
	.word	1181335161
	.word	-882789492
	.word	-1134132454
	.word	628085408
	.word	1382605366
	.word	-871598187
	.word	-1156888829
	.word	570562233
	.word	1426400815
	.word	-977650754
	.word	-1296233688
	.word	733239954
	.word	1555261956
	.word	-1026031705
	.word	-1244606671
	.word	752459403
	.word	1541320221
	.word	-1687895376
	.word	-328994266
	.word	1969922972
	.word	40735498
	.word	-1677130071
	.word	-351390145
	.word	1913087877
	.word	83908371
	.word	-1782625662
	.word	-491226604
	.word	2075208622
	.word	213261112
	.word	-1831694693
	.word	-438977011
	.word	2094854071
	.word	198958881
	.word	-2032938284
	.word	-237706686
	.word	1759359992
	.word	534414190
	.word	-2118248755
	.word	-155638181
	.word	1873836001
	.word	414664567
	.word	-2012718362
	.word	-15766928
	.word	1711684554
	.word	285281116
	.word	-1889165569
	.word	-127750551
	.word	1634467795
	.word	376229701
	.word	-1609899400
	.word	-686959890
	.word	1308918612
	.word	956543938
	.word	-1486412191
	.word	-799009033
	.word	1231636301
	.word	1047427035
	.word	-1362007478
	.word	-640263460
	.word	1088359270
	.word	936918000
	.word	-1447252397
	.word	-558129467
	.word	1202900863
	.word	817233897
	.word	-1111625188
	.word	-893730166
	.word	1404277552
	.word	615818150
	.word	-1160759803
	.word	-841546093
	.word	1423857449
	.word	601450431
	.word	-1285129682
	.word	-1000256840
	.word	1567103746
	.word	711928724
	.word	-1274298825
	.word	-1022587231
	.word	1510334235
	.word	755167117
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./toolchain/linux_x86_64/lib/gcc/riscv64-unknown-elf/10.4.0/include/stddef.h"
	.file 5 "./components/wireless/qcc74x_macsw/include/export/mac/mac_types.h"
	.file 6 "./components/wireless/qcc74x_macsw/include/export/dbg/trace_compo.h"
	.file 7 "./components/wireless/qcc74x_macsw/include/export/ke/ke_msg.h"
	.file 8 "./components/wireless/qcc74x_macsw/include/export/ke/ke_task.h"
	.file 9 "./components/net/lwip/lwip/src/include/lwip/memp.h"
	.file 10 "./components/net/lwip/lwip/src/include/lwip/netif.h"
	.file 11 "./components/wireless/wifi6/qcc74x_wpa_supplicant/src/utils/common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x355
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF89
	.byte	0xc
	.4byte	.LASF90
	.4byte	.LASF91
	.4byte	.Ldebug_ranges0+0
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
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x46
	.byte	0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0xd1
	.byte	0x16
	.4byte	0x7c
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF15
	.byte	0x5
	.4byte	.LASF21
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0x5
	.2byte	0x166
	.byte	0x6
	.4byte	0xe7
	.byte	0x6
	.4byte	.LASF16
	.byte	0
	.byte	0x6
	.4byte	.LASF17
	.byte	0x1
	.byte	0x6
	.4byte	.LASF18
	.byte	0x2
	.byte	0x6
	.4byte	.LASF19
	.byte	0x3
	.byte	0x6
	.4byte	.LASF20
	.byte	0x4
	.byte	0
	.byte	0x5
	.4byte	.LASF22
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0x5
	.2byte	0x175
	.byte	0x6
	.4byte	0x137
	.byte	0x6
	.4byte	.LASF23
	.byte	0
	.byte	0x6
	.4byte	.LASF24
	.byte	0x1
	.byte	0x6
	.4byte	.LASF25
	.byte	0x2
	.byte	0x6
	.4byte	.LASF26
	.byte	0x3
	.byte	0x6
	.4byte	.LASF27
	.byte	0x4
	.byte	0x6
	.4byte	.LASF28
	.byte	0x5
	.byte	0x6
	.4byte	.LASF29
	.byte	0x6
	.byte	0x6
	.4byte	.LASF30
	.byte	0x7
	.byte	0x6
	.4byte	.LASF31
	.byte	0x8
	.byte	0x6
	.4byte	.LASF32
	.byte	0x9
	.byte	0
	.byte	0x7
	.4byte	.LASF33
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0x6
	.byte	0x38
	.byte	0x6
	.4byte	0x1a4
	.byte	0x6
	.4byte	.LASF34
	.byte	0
	.byte	0x6
	.4byte	.LASF35
	.byte	0x1
	.byte	0x6
	.4byte	.LASF36
	.byte	0x2
	.byte	0x6
	.4byte	.LASF37
	.byte	0x3
	.byte	0x6
	.4byte	.LASF38
	.byte	0x4
	.byte	0x6
	.4byte	.LASF39
	.byte	0x5
	.byte	0x6
	.4byte	.LASF40
	.byte	0x6
	.byte	0x6
	.4byte	.LASF41
	.byte	0x7
	.byte	0x6
	.4byte	.LASF42
	.byte	0x8
	.byte	0x6
	.4byte	.LASF43
	.byte	0x9
	.byte	0x6
	.4byte	.LASF44
	.byte	0xa
	.byte	0x6
	.4byte	.LASF45
	.byte	0xb
	.byte	0x6
	.4byte	.LASF46
	.byte	0xc
	.byte	0x6
	.4byte	.LASF47
	.byte	0xd
	.byte	0x6
	.4byte	.LASF48
	.byte	0xe
	.byte	0
	.byte	0x3
	.4byte	.LASF49
	.byte	0x7
	.byte	0x52
	.byte	0x12
	.4byte	0x8f
	.byte	0x8
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0x8
	.byte	0x30
	.byte	0x1
	.4byte	0x22b
	.byte	0x6
	.4byte	.LASF50
	.byte	0xff
	.byte	0x6
	.4byte	.LASF51
	.byte	0
	.byte	0x6
	.4byte	.LASF52
	.byte	0x1
	.byte	0x6
	.4byte	.LASF53
	.byte	0x2
	.byte	0x6
	.4byte	.LASF54
	.byte	0x3
	.byte	0x6
	.4byte	.LASF55
	.byte	0x4
	.byte	0x6
	.4byte	.LASF56
	.byte	0x5
	.byte	0x6
	.4byte	.LASF57
	.byte	0x6
	.byte	0x6
	.4byte	.LASF58
	.byte	0x7
	.byte	0x6
	.4byte	.LASF59
	.byte	0x8
	.byte	0x6
	.4byte	.LASF60
	.byte	0x9
	.byte	0x6
	.4byte	.LASF61
	.byte	0xa
	.byte	0x6
	.4byte	.LASF62
	.byte	0xb
	.byte	0x6
	.4byte	.LASF63
	.byte	0xc
	.byte	0x6
	.4byte	.LASF64
	.byte	0xd
	.byte	0x6
	.4byte	.LASF65
	.byte	0xd
	.byte	0x6
	.4byte	.LASF66
	.byte	0xe
	.byte	0x6
	.4byte	.LASF67
	.byte	0xf
	.byte	0
	.byte	0x8
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0x9
	.byte	0x34
	.byte	0xe
	.4byte	0x28e
	.byte	0x6
	.4byte	.LASF68
	.byte	0
	.byte	0x6
	.4byte	.LASF69
	.byte	0x1
	.byte	0x6
	.4byte	.LASF70
	.byte	0x2
	.byte	0x6
	.4byte	.LASF71
	.byte	0x3
	.byte	0x6
	.4byte	.LASF72
	.byte	0x4
	.byte	0x6
	.4byte	.LASF73
	.byte	0x5
	.byte	0x6
	.4byte	.LASF74
	.byte	0x6
	.byte	0x6
	.4byte	.LASF75
	.byte	0x7
	.byte	0x6
	.4byte	.LASF76
	.byte	0x8
	.byte	0x6
	.4byte	.LASF77
	.byte	0x9
	.byte	0x6
	.4byte	.LASF78
	.byte	0xa
	.byte	0x6
	.4byte	.LASF79
	.byte	0xb
	.byte	0x6
	.4byte	.LASF80
	.byte	0xc
	.byte	0x6
	.4byte	.LASF81
	.byte	0xd
	.byte	0
	.byte	0x7
	.4byte	.LASF82
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0xa
	.byte	0x71
	.byte	0x6
	.4byte	0x2b3
	.byte	0x6
	.4byte	.LASF83
	.byte	0
	.byte	0x6
	.4byte	.LASF84
	.byte	0x1
	.byte	0x6
	.4byte	.LASF85
	.byte	0x2
	.byte	0
	.byte	0x9
	.string	"u32"
	.byte	0xb
	.byte	0x93
	.byte	0x16
	.4byte	0x7c
	.byte	0xa
	.4byte	0x2b3
	.byte	0x9
	.string	"u8"
	.byte	0xb
	.byte	0x95
	.byte	0x11
	.4byte	0x83
	.byte	0xa
	.4byte	0x2c4
	.byte	0xb
	.4byte	0x2bf
	.4byte	0x2e4
	.byte	0xc
	.4byte	0x7c
	.byte	0xff
	.byte	0
	.byte	0xa
	.4byte	0x2d4
	.byte	0xd
	.4byte	.LASF88
	.byte	0x1
	.byte	0x14
	.byte	0x12
	.4byte	0x2e4
	.byte	0x5
	.byte	0x3
	.4byte	crc32_table
	.byte	0xe
	.4byte	.LASF92
	.byte	0x1
	.byte	0x4c
	.byte	0x5
	.4byte	0x2b3
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
	.byte	0x1
	.byte	0x9c
	.4byte	0x352
	.byte	0xf
	.4byte	.LASF86
	.byte	0x1
	.byte	0x4c
	.byte	0x15
	.4byte	0x352
	.4byte	.LLST0
	.byte	0x10
	.4byte	.LASF87
	.byte	0x1
	.byte	0x4c
	.byte	0x23
	.4byte	0x9b
	.byte	0x1
	.byte	0x5b
	.byte	0x11
	.string	"i"
	.byte	0x1
	.byte	0x4e
	.byte	0x9
	.4byte	0x9b
	.4byte	.LLST1
	.byte	0x11
	.string	"crc"
	.byte	0x1
	.byte	0x4f
	.byte	0x6
	.4byte	0x2b3
	.4byte	.LLST2
	.byte	0
	.byte	0x12
	.byte	0x4
	.4byte	0x2cf
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
	.byte	0x5
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
	.byte	0x16
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
	.byte	0xa
	.byte	0x26
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
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x12
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LFE106
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x3
	.byte	0x7d
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LFE106
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL6
	.4byte	.LFE106
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB106
	.4byte	.LFE106
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF57:
	.string	"TASK_SM"
.LASF82:
	.string	"lwip_internal_netif_client_data_index"
.LASF0:
	.string	"signed char"
.LASF84:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_ACD"
.LASF37:
	.string	"TRACE_COMPO_STA"
.LASF41:
	.string	"TRACE_COMPO_TDLS"
.LASF33:
	.string	"trace_compo"
.LASF2:
	.string	"short int"
.LASF13:
	.string	"size_t"
.LASF24:
	.string	"TID_1"
.LASF25:
	.string	"TID_2"
.LASF26:
	.string	"TID_3"
.LASF27:
	.string	"TID_4"
.LASF28:
	.string	"TID_5"
.LASF29:
	.string	"TID_6"
.LASF30:
	.string	"TID_7"
.LASF16:
	.string	"AC_BK"
.LASF88:
	.string	"crc32_table"
.LASF45:
	.string	"TRACE_COMPO_APP"
.LASF59:
	.string	"TASK_BAM"
.LASF4:
	.string	"__uint16_t"
.LASF52:
	.string	"TASK_DBG"
.LASF90:
	.string	"./components/wireless/wifi6/qcc74x_wpa_supplicant/src/utils/crc32.c"
.LASF42:
	.string	"TRACE_COMPO_RM"
.LASF85:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF71:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF36:
	.string	"TRACE_COMPO_CHAN"
.LASF66:
	.string	"TASK_API"
.LASF87:
	.string	"frame_len"
.LASF78:
	.string	"MEMP_NETDB"
.LASF58:
	.string	"TASK_APM"
.LASF23:
	.string	"TID_0"
.LASF8:
	.string	"long long int"
.LASF17:
	.string	"AC_BE"
.LASF53:
	.string	"TASK_SCAN"
.LASF6:
	.string	"long int"
.LASF3:
	.string	"__uint8_t"
.LASF86:
	.string	"frame"
.LASF39:
	.string	"TRACE_COMPO_P2P"
.LASF31:
	.string	"TID_MGT"
.LASF83:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF18:
	.string	"AC_VI"
.LASF1:
	.string	"unsigned char"
.LASF50:
	.string	"TASK_NONE"
.LASF55:
	.string	"TASK_SCANU"
.LASF19:
	.string	"AC_VO"
.LASF61:
	.string	"TASK_RXU"
.LASF81:
	.string	"MEMP_MAX"
.LASF43:
	.string	"TRACE_COMPO_RTOS"
.LASF9:
	.string	"long long unsigned int"
.LASF65:
	.string	"TASK_LAST_EMB"
.LASF10:
	.string	"unsigned int"
.LASF51:
	.string	"TASK_MM"
.LASF12:
	.string	"uint16_t"
.LASF7:
	.string	"long unsigned int"
.LASF49:
	.string	"ke_msg_id_t"
.LASF73:
	.string	"MEMP_REASSDATA"
.LASF38:
	.string	"TRACE_COMPO_AP"
.LASF47:
	.string	"TRACE_COMPO_FTM"
.LASF14:
	.string	"char"
.LASF91:
	.string	"./examples/usb_cam_stream/build_wsl/build_out/components/wireless/wifi6/qcc74x_wpa_supplicant"
.LASF92:
	.string	"crc32"
.LASF76:
	.string	"MEMP_TCPIP_MSG_API"
.LASF5:
	.string	"short unsigned int"
.LASF32:
	.string	"TID_MAX"
.LASF15:
	.string	"_Bool"
.LASF21:
	.string	"mac_ac"
.LASF79:
	.string	"MEMP_PBUF"
.LASF77:
	.string	"MEMP_SYS_TIMEOUT"
.LASF60:
	.string	"TASK_MESH"
.LASF44:
	.string	"TRACE_COMPO_FHOST"
.LASF34:
	.string	"TRACE_COMPO_KERNEL"
.LASF89:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF56:
	.string	"TASK_ME"
.LASF20:
	.string	"AC_MAX"
.LASF68:
	.string	"MEMP_RAW_PCB"
.LASF64:
	.string	"TASK_FTM"
.LASF48:
	.string	"TRACE_COMPO_MAX"
.LASF54:
	.string	"TASK_TDLS"
.LASF22:
	.string	"mac_tid"
.LASF11:
	.string	"uint8_t"
.LASF80:
	.string	"MEMP_PBUF_POOL"
.LASF72:
	.string	"MEMP_TCP_SEG"
.LASF75:
	.string	"MEMP_NETCONN"
.LASF62:
	.string	"TASK_RM"
.LASF70:
	.string	"MEMP_TCP_PCB"
.LASF69:
	.string	"MEMP_UDP_PCB"
.LASF46:
	.string	"TRACE_COMPO_TWT"
.LASF67:
	.string	"TASK_MAX"
.LASF35:
	.string	"TRACE_COMPO_LMAC"
.LASF40:
	.string	"TRACE_COMPO_MESH"
.LASF74:
	.string	"MEMP_NETBUF"
.LASF63:
	.string	"TASK_TWT"
	.ident	"GCC: (GNU) 10.4.0"
