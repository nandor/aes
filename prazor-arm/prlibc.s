	.arch armv7-a
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"prlibc.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.global	stdout
	.section	.tbss,"awT",%nobits
	.align	2
	.type	stdout, %object
	.size	stdout, 4
stdout:
	.space	4
	.global	stdin
	.align	2
	.type	stdin, %object
	.size	stdin, 4
stdin:
	.space	4
	.global	errno
	.align	2
	.type	errno, %object
	.size	errno, 4
errno:
	.space	4
	.global	stderr
	.bss
	.align	2
	.type	stderr, %object
	.size	stderr, 4
stderr:
	.space	4
	.comm	_dl_hwcap,4,4
	.local	nextchar
	.comm	nextchar,4,4
	.global	optind
	.align	2
	.type	optind, %object
	.size	optind, 4
optind:
	.space	4
	.global	opterr
	.data
	.align	2
	.type	opterr, %object
	.size	opterr, 4
opterr:
	.word	1
	.global	optopt
	.align	2
	.type	optopt, %object
	.size	optopt, 4
optopt:
	.word	63
	.global	optarg
	.bss
	.align	2
	.type	optarg, %object
	.size	optarg, 4
optarg:
	.space	4
	.global	stdin_addr
	.data
	.align	2
	.type	stdin_addr, %object
	.size	stdin_addr, 4
stdin_addr:
	.word	-195840
	.comm	__prlibc_drand48_data,24,8
	.global	powten
	.align	3
	.type	powten, %object
	.size	powten, 616
powten:
	.word	2645194980
	.word	940259579
	.word	1116375951
	.word	943784861
	.word	2469211762
	.word	947209348
	.word	3086514703
	.word	950703525
	.word	2465942601
	.word	954244487
	.word	2008686428
	.word	957662441
	.word	3584599859
	.word	961148451
	.word	1703504000
	.word	964704726
	.word	4276863648
	.word	968116299
	.word	4272337735
	.word	971594334
	.word	3192938521
	.word	975155446
	.word	921844752
	.word	978570906
	.word	3299789588
	.word	982041152
	.word	4124736985
	.word	985592528
	.word	2577960615
	.word	989026242
	.word	1074967121
	.word	992488883
	.word	269967078
	.word	996030752
	.word	168729423
	.word	999482292
	.word	210911779
	.word	1002937505
	.word	1337381548
	.word	1006470089
	.word	3520218028
	.word	1009939037
	.word	1179047063
	.word	1013386997
	.word	2547550652
	.word	1016910514
	.word	2665960982
	.word	1020396463
	.word	2258709403
	.word	1023837339
	.word	1749644930
	.word	1027352002
	.word	2167269905
	.word	1030854553
	.word	3782829205
	.word	1034288511
	.word	3654794683
	.word	1037794527
	.word	3894859413
	.word	1041313291
	.word	3794832442
	.word	1044740494
	.word	2596056904
	.word	1048238066
	.word	2696277389
	.word	1051772663
	.word	2296604913
	.word	1055193269
	.word	3944497965
	.word	1058682594
	.word	3539053052
	.word	1062232653
	.word	1202590843
	.word	1065646817
	.word	2576980378
	.word	1069128089
	.word	0
	.word	1072693248
	.word	0
	.word	1076101120
	.word	0
	.word	1079574528
	.word	0
	.word	1083129856
	.word	0
	.word	1086556160
	.word	0
	.word	1090021888
	.word	0
	.word	1093567616
	.word	0
	.word	1097011920
	.word	0
	.word	1100470148
	.word	0
	.word	1104006501
	.word	536870912
	.word	1107468383
	.word	3892314112
	.word	1110919286
	.word	2717908992
	.word	1114446484
	.word	3846176768
	.word	1117925532
	.word	512753664
	.word	1121369284
	.word	640942080
	.word	1124887541
	.word	937459712
	.word	1128383353
	.word	2245566464
	.word	1131820119
	.word	1733216256
	.word	1135329645
	.word	1620131072
	.word	1138841828
	.word	2025163840
	.word	1142271773
	.word	3605196624
	.word	1145772772
	.word	105764242
	.word	1149300943
	.word	3353430774
	.word	1152724226
	.word	2044304820
	.word	1156216899
	.word	740819601
	.word	1159760682
	.word	3073508149
	.word	1163177460
	.word	3841885186
	.word	1166662001
	.word	790565505
	.word	1170221031
	.word	4209432353
	.word	1173631456
	.word	966823146
	.word	1177108057
	.word	2282270756
	.word	1180667375
	.word	3037031959
	.word	1184086197
	.word	575064476
	.word	1187555043
	.word	3940056067
	.word	1191104667
	.word	1925664130
	.word	1194541665
	.word	3480821987
	.word	1198002937
	.word	1129802011
	.word	1201543096
	.word	706126257
	.word	1204997843
	.text
	.align	2
	.global	_argv_main
	.syntax unified
	.thumb
	.thumb_func
	.type	_argv_main, %function
_argv_main:
.LFB0:
	.file 1 "/home/dtc34/Documents/P35/pvp11/vhls/src/crt/prlibc/prlibc.c"
	.loc 1 59 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 61 0
	mvn	r3, #207
	ldr	r3, [r3]
	str	r3, [r7, #4]
	.loc 1 62 0
	mvn	r3, #239
	ldr	r3, [r3]
	str	r3, [r7, #8]
	.loc 1 67 0
	movs	r3, #0
	movt	r3, 65534
	str	r3, [r7, #12]
	.loc 1 77 0
	ldr	r1, [r7, #12]
	ldr	r0, [r7, #4]
	bl	main
	mov	r3, r0
	.loc 1 78 0
	mov	r0, r3
	adds	r7, r7, #16
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE0:
	.size	_argv_main, .-_argv_main
	.align	2
	.global	putchar
	.syntax unified
	.thumb
	.thumb_func
	.type	putchar, %function
putchar:
.LFB1:
	.loc 1 135 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 139 0
	ldr	r3, [r7, #4]
	uxtb	r3, r3
	mov	r0, r3
	bl	craft_wrch
	.loc 1 140 0
	nop
	.loc 1 148 0
	ldr	r3, [r7, #4]
	.loc 1 149 0
	mov	r0, r3
	adds	r7, r7, #8
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE1:
	.size	putchar, .-putchar
	.align	2
	.global	exit
	.syntax unified
	.thumb
	.thumb_func
	.type	exit, %function
exit:
.LFB2:
	.loc 1 156 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 158 0
	bl	getpid
	mov	r3, r0
	cmp	r3, #0
	bne	.L6
	.loc 1 158 0 is_stmt 0 discriminator 1
	bl	_kill_sim
.L6:
	.loc 1 159 0 is_stmt 1 discriminator 1
	bl	_core_pause
	b	.L6
	.cfi_endproc
.LFE2:
	.size	exit, .-exit
	.align	2
	.global	strstr
	.syntax unified
	.thumb
	.thumb_func
	.type	strstr, %function
strstr:
.LFB3:
	.loc 1 166 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 167 0
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L10
	.loc 1 167 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	b	.L9
.L13:
.LBB2:
	.loc 1 170 0 is_stmt 1
	ldr	r3, [r7, #4]
	str	r3, [r7, #8]
	ldr	r3, [r7]
	str	r3, [r7, #12]
.L12:
	.loc 1 172 0
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L11
	.loc 1 172 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	b	.L9
.L11:
	.loc 1 173 0 is_stmt 1
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #12]
	adds	r1, r3, #1
	str	r1, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L12
	.loc 1 174 0
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
.L10:
.LBE2:
	.loc 1 168 0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L13
	.loc 1 176 0
	movs	r3, #0
.L9:
	.loc 1 177 0
	mov	r0, r3
	adds	r7, r7, #20
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE3:
	.size	strstr, .-strstr
	.global	__aeabi_idivmod
	.global	__aeabi_idiv
	.align	2
	.global	memset
	.syntax unified
	.thumb
	.thumb_func
	.type	memset, %function
memset:
.LFB4:
	.loc 1 182 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #32
	.cfi_def_cfa_offset 40
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 1 183 0
	ldr	r3, [r7, #12]
	str	r3, [r7, #16]
	.loc 1 184 0
	movs	r3, #4
	str	r3, [r7, #28]
	.loc 1 185 0
	ldr	r3, [r7, #4]
	cmp	r3, #7
	ble	.L23
.LBB3:
	.loc 1 189 0
	ldr	r3, [r7, #8]
	uxtb	r3, r3
	str	r3, [r7, #24]
	.loc 1 190 0
	ldr	r3, [r7, #24]
	lsls	r3, r3, #8
	ldr	r2, [r7, #24]
	orrs	r3, r3, r2
	str	r3, [r7, #24]
	.loc 1 191 0
	ldr	r3, [r7, #24]
	lsls	r3, r3, #16
	ldr	r2, [r7, #24]
	orrs	r3, r3, r2
	str	r3, [r7, #24]
	.loc 1 192 0
	ldr	r3, [r7, #28]
	cmp	r3, #4
	.loc 1 197 0
	b	.L17
.L18:
	.loc 1 198 0
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #8]
	uxtb	r2, r2
	strb	r2, [r3]
	.loc 1 199 0
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
	.loc 1 200 0
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	str	r3, [r7, #4]
.L17:
	.loc 1 197 0
	ldr	r3, [r7, #16]
	ldr	r1, [r7, #28]
	mov	r0, r3
	bl	__aeabi_idivmod
	mov	r3, r1
	cmp	r3, #0
	bne	.L18
	.loc 1 204 0
	ldr	r3, [r7, #28]
	lsls	r3, r3, #3
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [r7, #20]
	.loc 1 205 0
	b	.L19
.L20:
	.loc 1 206 0
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #24]
	str	r2, [r3]
	.loc 1 207 0
	ldr	r3, [r7, #16]
	adds	r3, r3, #4
	mov	r2, r3
	ldr	r3, [r7, #24]
	str	r3, [r2]
	.loc 1 208 0
	ldr	r3, [r7, #16]
	adds	r3, r3, #8
	mov	r2, r3
	ldr	r3, [r7, #24]
	str	r3, [r2]
	.loc 1 209 0
	ldr	r3, [r7, #16]
	adds	r3, r3, #12
	mov	r2, r3
	ldr	r3, [r7, #24]
	str	r3, [r2]
	.loc 1 210 0
	ldr	r3, [r7, #16]
	adds	r3, r3, #16
	mov	r2, r3
	ldr	r3, [r7, #24]
	str	r3, [r2]
	.loc 1 211 0
	ldr	r3, [r7, #16]
	adds	r3, r3, #20
	mov	r2, r3
	ldr	r3, [r7, #24]
	str	r3, [r2]
	.loc 1 212 0
	ldr	r3, [r7, #16]
	adds	r3, r3, #24
	mov	r2, r3
	ldr	r3, [r7, #24]
	str	r3, [r2]
	.loc 1 213 0
	ldr	r3, [r7, #16]
	adds	r3, r3, #28
	mov	r2, r3
	ldr	r3, [r7, #24]
	str	r3, [r2]
	.loc 1 214 0
	ldr	r3, [r7, #28]
	lsls	r3, r3, #3
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	str	r3, [r7, #16]
	.loc 1 215 0
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	str	r3, [r7, #20]
.L19:
	.loc 1 205 0
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bgt	.L20
	.loc 1 217 0
	ldr	r3, [r7, #28]
	lsls	r2, r3, #3
	ldr	r3, [r7, #4]
	mov	r1, r2
	mov	r0, r3
	bl	__aeabi_idivmod
	mov	r3, r1
	str	r3, [r7, #4]
	.loc 1 220 0
	ldr	r1, [r7, #28]
	ldr	r0, [r7, #4]
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [r7, #20]
	.loc 1 221 0
	b	.L21
.L22:
	.loc 1 222 0
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #24]
	str	r2, [r3]
	.loc 1 223 0
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #16]
	.loc 1 224 0
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	str	r3, [r7, #20]
.L21:
	.loc 1 221 0
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bgt	.L22
	.loc 1 226 0
	ldr	r3, [r7, #4]
	ldr	r1, [r7, #28]
	mov	r0, r3
	bl	__aeabi_idivmod
	mov	r3, r1
	str	r3, [r7, #4]
.LBE3:
	.loc 1 230 0
	b	.L23
.L24:
	.loc 1 231 0
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #8]
	uxtb	r2, r2
	strb	r2, [r3]
	.loc 1 232 0
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
	.loc 1 233 0
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	str	r3, [r7, #4]
.L23:
	.loc 1 230 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bgt	.L24
	.loc 1 236 0
	ldr	r3, [r7, #12]
	.loc 1 237 0
	mov	r0, r3
	adds	r7, r7, #32
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE4:
	.size	memset, .-memset
	.align	2
	.global	memchr
	.syntax unified
	.thumb
	.thumb_func
	.type	memchr, %function
memchr:
.LFB5:
	.loc 1 239 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r7}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 7, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 1 240 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L27
.LBB4:
	.loc 1 241 0
	ldr	r4, [r7, #12]
.L30:
	.loc 1 244 0
	mov	r3, r4
	adds	r4, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bne	.L28
	.loc 1 245 0
	subs	r3, r4, #1
	b	.L29
.L28:
	.loc 1 246 0
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L30
.L27:
.LBE4:
	.loc 1 248 0
	movs	r3, #0
.L29:
	.loc 1 249 0
	mov	r0, r3
	adds	r7, r7, #16
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r7}
	.cfi_restore 7
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE5:
	.size	memchr, .-memchr
	.align	2
	.global	memcpy
	.syntax unified
	.thumb
	.thumb_func
	.type	memcpy, %function
memcpy:
.LFB6:
	.loc 1 252 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #28
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 1 253 0
	ldr	r3, [r7, #12]
	str	r3, [r7, #16]
	.loc 1 254 0
	ldr	r3, [r7, #8]
	str	r3, [r7, #20]
	.loc 1 255 0
	b	.L32
.L33:
	.loc 1 255 0 is_stmt 0 discriminator 2
	ldr	r3, [r7, #16]
	adds	r2, r3, #1
	str	r2, [r7, #16]
	ldr	r2, [r7, #20]
	adds	r1, r2, #1
	str	r1, [r7, #20]
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
.L32:
	.loc 1 255 0 discriminator 1
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bge	.L33
	.loc 1 256 0 is_stmt 1
	ldr	r3, [r7, #12]
	.loc 1 257 0
	mov	r0, r3
	adds	r7, r7, #28
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE6:
	.size	memcpy, .-memcpy
	.align	2
	.global	bcopy
	.syntax unified
	.thumb
	.thumb_func
	.type	bcopy, %function
bcopy:
.LFB7:
	.loc 1 262 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 1 263 0
	b	.L36
.L37:
	.loc 1 263 0 is_stmt 0 discriminator 2
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	ldr	r2, [r7, #12]
	adds	r1, r2, #1
	str	r1, [r7, #12]
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
.L36:
	.loc 1 263 0 discriminator 1
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bge	.L37
	.loc 1 264 0 is_stmt 1
	nop
	adds	r7, r7, #20
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE7:
	.size	bcopy, .-bcopy
	.align	2
	.global	bcmp
	.syntax unified
	.thumb
	.thumb_func
	.type	bcmp, %function
bcmp:
.LFB8:
	.loc 1 267 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 1 268 0
	b	.L39
.L41:
	.loc 1 268 0 is_stmt 0 discriminator 3
	ldr	r3, [r7, #12]
	adds	r2, r3, #1
	str	r2, [r7, #12]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #8]
	adds	r1, r3, #1
	str	r1, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L39
	.loc 1 268 0 discriminator 1
	movs	r3, #1
	b	.L40
.L39:
	.loc 1 268 0 discriminator 2
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bge	.L41
	.loc 1 269 0 is_stmt 1
	movs	r3, #0
.L40:
	.loc 1 270 0
	mov	r0, r3
	adds	r7, r7, #20
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE8:
	.size	bcmp, .-bcmp
	.align	2
	.global	bzero
	.syntax unified
	.thumb
	.thumb_func
	.type	bzero, %function
bzero:
.LFB9:
	.loc 1 273 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 274 0
	b	.L43
.L44:
	.loc 1 274 0 is_stmt 0 discriminator 2
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	movs	r2, #0
	strb	r2, [r3]
.L43:
	.loc 1 274 0 discriminator 1
	ldr	r3, [r7]
	subs	r3, r3, #1
	str	r3, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	bge	.L44
	.loc 1 275 0 is_stmt 1
	nop
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE9:
	.size	bzero, .-bzero
	.local	spf
	.comm	spf,4,4
	.local	fspf
	.comm	fspf,4,4
	.local	ffile
	.comm	ffile,4,4
	.align	2
	.global	__sflush
	.syntax unified
	.thumb
	.thumb_func
	.type	__sflush, %function
__sflush:
.LFB10:
	.loc 1 290 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 291 0
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #8]
	mov	r0, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	mov	r2, #1024
	mov	r1, r3
	bl	_syscall_flush
	str	r0, [r7, #12]
	.loc 1 292 0
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	mov	r1, #1024
	mov	r0, r3
	bl	bzero
	.loc 1 293 0
	ldr	r3, [r7, #4]
	mov	r2, #1024
	str	r2, [r3]
	.loc 1 294 0
	ldr	r3, [r7, #4]
	add	r2, r3, #12
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	.loc 1 296 0
	ldr	r3, [r7, #12]
	.loc 1 297 0
	mov	r0, r3
	adds	r7, r7, #16
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE10:
	.size	__sflush, .-__sflush
	.align	2
	.global	pfputc
	.syntax unified
	.thumb
	.thumb_func
	.type	pfputc, %function
pfputc:
.LFB11:
	.loc 1 299 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 300 0
	movw	r3, #:lower16:ffile
	movt	r3, #:upper16:ffile
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L48
	.loc 1 301 0
	movw	r3, #:lower16:fspf
	movt	r3, #:upper16:fspf
	ldr	r3, [r3]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L49
	.loc 1 302 0
	movw	r3, #:lower16:fspf
	movt	r3, #:upper16:fspf
	ldr	r3, [r3]
	mov	r0, r3
	bl	__sflush
.L49:
	.loc 1 304 0
	movw	r3, #:lower16:fspf
	movt	r3, #:upper16:fspf
	ldr	r2, [r3]
	ldr	r3, [r2, #4]
	adds	r1, r3, #1
	str	r1, [r2, #4]
	ldr	r2, [r7, #4]
	uxtb	r2, r2
	strb	r2, [r3]
	.loc 1 305 0
	movw	r3, #:lower16:fspf
	movt	r3, #:upper16:fspf
	ldr	r3, [r3]
	ldr	r2, [r3]
	subs	r2, r2, #1
	str	r2, [r3]
	.loc 1 311 0
	b	.L52
.L48:
	.loc 1 306 0
	movw	r3, #:lower16:ffile
	movt	r3, #:upper16:ffile
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L51
	.loc 1 306 0 is_stmt 0 discriminator 1
	movw	r3, #:lower16:spf
	movt	r3, #:upper16:spf
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L51
	.loc 1 307 0 is_stmt 1
	movw	r3, #:lower16:spf
	movt	r3, #:upper16:spf
	ldr	r2, [r3]
	adds	r1, r2, #1
	movw	r3, #:lower16:spf
	movt	r3, #:upper16:spf
	str	r1, [r3]
	ldr	r3, [r7, #4]
	uxtb	r3, r3
	strb	r3, [r2]
	.loc 1 311 0
	b	.L52
.L51:
	.loc 1 309 0
	ldr	r0, [r7, #4]
	bl	putchar
.L52:
	.loc 1 311 0
	nop
	adds	r7, r7, #8
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE11:
	.size	pfputc, .-pfputc
	.align	2
	.global	fprintf
	.syntax unified
	.thumb
	.thumb_func
	.type	fprintf, %function
fprintf:
.LFB12:
	.loc 1 314 0
	.cfi_startproc
	@ args = 4, pretend = 12, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 1
	push	{r1, r2, r3}
	.cfi_def_cfa_offset 12
	.cfi_offset 1, -12
	.cfi_offset 2, -8
	.cfi_offset 3, -4
	push	{r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 7, -20
	.cfi_offset 14, -16
	sub	sp, sp, #20
	.cfi_def_cfa_offset 40
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	ldr	r3, [r7, #28]
	str	r3, [r7]
	.loc 1 314 0
	movw	r3, #:lower16:__stack_chk_guard
	movt	r3, #:upper16:__stack_chk_guard
	ldr	r3, [r3]
	str	r3, [r7, #12]
	.loc 1 315 0
	movw	r3, #:lower16:ffile
	movt	r3, #:upper16:ffile
	movs	r2, #0
	str	r2, [r3]
	.loc 1 316 0
	movw	r3, #:lower16:spf
	movt	r3, #:upper16:spf
	movs	r2, #0
	str	r2, [r3]
	.loc 1 317 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L54
	.loc 1 318 0
	movw	r3, #:lower16:ffile
	movt	r3, #:upper16:ffile
	movs	r2, #1
	str	r2, [r3]
	.loc 1 319 0
	movw	r3, #:lower16:fspf
	movt	r3, #:upper16:fspf
	ldr	r2, [r7, #4]
	str	r2, [r3]
.L54:
	.loc 1 322 0
	add	r3, r7, #32
	str	r3, [r7, #8]
	.loc 1 324 0
	ldr	r1, [r7, #8]
	ldr	r0, [r7]
	bl	locked_printf
	.loc 1 326 0
	movs	r3, #0
	.loc 1 327 0
	mov	r0, r3
	movw	r3, #:lower16:__stack_chk_guard
	movt	r3, #:upper16:__stack_chk_guard
	ldr	r2, [r7, #12]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L56
	bl	__stack_chk_fail
.L56:
	adds	r7, r7, #20
	.cfi_def_cfa_offset 20
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, lr}
	.cfi_restore 14
	.cfi_restore 7
	.cfi_def_cfa_offset 12
	add	sp, sp, #12
	.cfi_restore 3
	.cfi_restore 2
	.cfi_restore 1
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE12:
	.size	fprintf, .-fprintf
	.align	2
	.global	vfprintf
	.syntax unified
	.thumb
	.thumb_func
	.type	vfprintf, %function
vfprintf:
.LFB13:
	.loc 1 329 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 1 330 0
	ldr	r1, [r7, #4]
	ldr	r0, [r7, #8]
	bl	locked_printf
	.loc 1 332 0
	movs	r3, #0
	.loc 1 333 0
	mov	r0, r3
	adds	r7, r7, #16
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE13:
	.size	vfprintf, .-vfprintf
	.align	2
	.global	getpid
	.syntax unified
	.thumb
	.thumb_func
	.type	getpid, %function
getpid:
.LFB14:
	.loc 1 336 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 337 0
	mvn	r3, #239
	ldr	r3, [r3]
	.loc 1 338 0
	mov	r0, r3
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE14:
	.size	getpid, .-getpid
	.align	2
	.global	get_core_id
	.syntax unified
	.thumb
	.thumb_func
	.type	get_core_id, %function
get_core_id:
.LFB15:
	.loc 1 341 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 342 0
	mvn	r3, #239
	ldr	r3, [r3]
	.loc 1 343 0
	mov	r0, r3
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE15:
	.size	get_core_id, .-get_core_id
	.global	printf_q
	.data
	.align	2
	.type	printf_q, %object
	.size	printf_q, 4
printf_q:
	.word	12345678
	.text
	.align	2
	.global	prstring
	.syntax unified
	.thumb
	.thumb_func
	.type	prstring, %function
prstring:
.LFB16:
	.loc 1 368 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 1 369 0
	ldr	r3, [r7, #8]
	cmp	r3, #0
	blt	.L71
	.loc 1 371 0
	b	.L65
.L67:
	.loc 1 373 0
	ldr	r3, [r7, #12]
	adds	r2, r3, #1
	str	r2, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	pfputc
	.loc 1 374 0
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	str	r3, [r7, #4]
	.loc 1 375 0
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	str	r3, [r7, #8]
.L65:
	.loc 1 371 0
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L68
	.loc 1 371 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bgt	.L67
	.loc 1 377 0 is_stmt 1
	b	.L68
.L69:
	.loc 1 379 0
	movs	r0, #32
	bl	pfputc
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	str	r3, [r7, #8]
.L68:
	.loc 1 377 0
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bgt	.L69
	.loc 1 393 0
	b	.L75
.L72:
	.loc 1 386 0
	ldr	r3, [r7, #12]
	adds	r2, r3, #1
	str	r2, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	pfputc
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	str	r3, [r7, #4]
.L71:
	.loc 1 384 0
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L72
	.loc 1 388 0
	b	.L73
.L74:
	.loc 1 390 0
	movs	r0, #32
	bl	pfputc
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	str	r3, [r7, #4]
.L73:
	.loc 1 388 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bgt	.L74
.L75:
	.loc 1 393 0
	nop
	adds	r7, r7, #16
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE16:
	.size	prstring, .-prstring
	.align	2
	.global	locked_printf
	.syntax unified
	.thumb
	.thumb_func
	.type	locked_printf, %function
locked_printf:
.LFB17:
	.loc 1 396 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #76
	.cfi_def_cfa_offset 88
	add	r7, sp, #8
	.cfi_def_cfa 7, 80
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 397 0
	movs	r3, #0
	str	r3, [r7, #12]
	.loc 1 398 0
	movs	r3, #0
	str	r3, [r7, #16]
	.loc 1 399 0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]
	strb	r3, [r7, #9]
	.loc 1 400 0
	movs	r3, #0
	str	r3, [r7, #28]
	.loc 1 405 0
	b	.L77
.L104:
	.loc 1 407 0
	ldrb	r3, [r7, #9]	@ zero_extendqisi2
	cmp	r3, #37
	beq	.L78
	.loc 1 409 0
	ldrb	r3, [r7, #9]	@ zero_extendqisi2
	mov	r0, r3
	bl	pfputc
	.loc 1 410 0
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #9]
	.loc 1 411 0
	b	.L77
.L78:
	.loc 1 413 0
	movs	r3, #0
	str	r3, [r7, #24]
	.loc 1 414 0
	mov	r3, #-1
	str	r3, [r7, #20]
	.loc 1 415 0
	movs	r3, #0
	strb	r3, [r7, #10]
.L79:
.LBB5:
	.loc 1 421 0
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #11]
	.loc 1 422 0
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	cmp	r3, #96
	bls	.L80
	.loc 1 422 0 is_stmt 0 discriminator 1
	ldrb	r3, [r7, #11]
	subs	r3, r3, #32
	strb	r3, [r7, #11]
.L80:
	.loc 1 424 0 is_stmt 1
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	cmp	r3, #37
	bne	.L81
	.loc 1 426 0
	movs	r0, #37
	bl	pfputc
	b	.L77
.L81:
	.loc 1 429 0
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	subs	r3, r3, #42
	cmp	r3, #46
	bhi	.L82
	adr	r2, .L84
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L84:
	.word	.L83+1
	.word	.L82+1
	.word	.L82+1
	.word	.L82+1
	.word	.L85+1
	.word	.L82+1
	.word	.L86+1
	.word	.L87+1
	.word	.L87+1
	.word	.L87+1
	.word	.L87+1
	.word	.L87+1
	.word	.L87+1
	.word	.L87+1
	.word	.L87+1
	.word	.L87+1
	.word	.L82+1
	.word	.L82+1
	.word	.L82+1
	.word	.L82+1
	.word	.L82+1
	.word	.L82+1
	.word	.L82+1
	.word	.L82+1
	.word	.L82+1
	.word	.L88+1
	.word	.L89+1
	.word	.L90+1
	.word	.L91+1
	.word	.L82+1
	.word	.L82+1
	.word	.L89+1
	.word	.L82+1
	.word	.L82+1
	.word	.L92+1
	.word	.L82+1
	.word	.L82+1
	.word	.L82+1
	.word	.L93+1
	.word	.L82+1
	.word	.L82+1
	.word	.L94+1
	.word	.L82+1
	.word	.L95+1
	.word	.L82+1
	.word	.L82+1
	.word	.L96+1
	.p2align 1
.L92:
.LBB6:
	.loc 1 431 0
	ldrb	r3, [r7, #10]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [r7, #10]
	b	.L79
.L88:
	.loc 1 433 0
	ldr	r3, [r7]
	adds	r2, r3, #4
	str	r2, [r7]
	ldr	r3, [r3]
	str	r3, [r7, #32]
	ldr	r0, [r7, #32]
	bl	pfputc
	.loc 1 434 0
	b	.L97
.L94:
.LBB7:
	.loc 1 438 0
	ldr	r3, [r7]
	adds	r2, r3, #4
	str	r2, [r7]
	ldr	r3, [r3]
	str	r3, [r7, #36]
	.loc 1 440 0
	ldr	r2, [r7, #24]
	ldr	r1, [r7, #20]
	ldr	r0, [r7, #36]
	bl	prstring
.LBE7:
	.loc 1 442 0
	b	.L97
.L91:
.LBB8:
	.loc 1 446 0
	ldr	r3, [r7]
	adds	r3, r3, #7
	bic	r3, r3, #7
	add	r2, r3, #8
	str	r2, [r7]
	ldrd	r3, [r3]
	strd	r3, [r7, #48]
	.loc 1 447 0
	ldr	r3, [r7, #24]
	str	r3, [sp]
	ldrd	r2, [r7, #48]
	movs	r0, #0
	bl	putdouble
	.loc 1 448 0
	b	.L97
.L90:
.LBE8:
.LBB9:
	.loc 1 452 0
	ldr	r3, [r7]
	adds	r3, r3, #7
	bic	r3, r3, #7
	add	r2, r3, #8
	str	r2, [r7]
	ldrd	r3, [r3]
	strd	r3, [r7, #56]
	.loc 1 453 0
	ldr	r3, [r7, #24]
	str	r3, [sp]
	ldrd	r2, [r7, #56]
	movs	r0, #1
	bl	putdouble
	.loc 1 454 0
	b	.L97
.L96:
.LBE9:
	.loc 1 457 0
	ldrb	r3, [r7, #10]	@ zero_extendqisi2
	cmp	r3, #1
	bls	.L98
	.loc 1 458 0
	ldr	r3, [r7]
	adds	r3, r3, #7
	bic	r3, r3, #7
	add	r2, r3, #8
	str	r2, [r7]
	ldrd	r3, [r3]
	mov	r1, r3
	mov	r2, r4
	ldr	r3, [r7, #24]
	str	r3, [sp]
	mov	r3, r2
	mov	r2, r1
	ldr	r0, [r7, #16]
	bl	puthex64
	.loc 1 460 0
	b	.L97
.L98:
	.loc 1 459 0
	ldr	r3, [r7]
	adds	r2, r3, #4
	str	r2, [r7]
	ldr	r3, [r3]
	ldr	r2, [r7, #24]
	mov	r1, r3
	ldr	r0, [r7, #16]
	bl	puthex32
	.loc 1 460 0
	b	.L97
.L93:
	.loc 1 463 0
	movs	r0, #48
	bl	pfputc
	movs	r0, #120
	bl	pfputc
	.loc 1 464 0
	ldr	r3, [r7]
	adds	r2, r3, #4
	str	r2, [r7]
	ldr	r3, [r3]
	str	r3, [r7, #40]
	.loc 1 468 0
	movs	r2, #1
	ldr	r1, [r7, #40]
	movs	r0, #0
	bl	puthex32
	.loc 1 469 0
	b	.L97
.L83:
	.loc 1 471 0
	ldr	r3, [r7]
	adds	r2, r3, #4
	str	r2, [r7]
	ldr	r3, [r3]
	str	r3, [r7, #24]
	b	.L79
.L89:
	.loc 1 475 0
	ldrb	r3, [r7, #10]	@ zero_extendqisi2
	cmp	r3, #1
	bls	.L100
	.loc 1 475 0 is_stmt 0 discriminator 1
	ldr	r3, [r7]
	adds	r3, r3, #7
	bic	r3, r3, #7
	add	r2, r3, #8
	str	r2, [r7]
	ldrd	r3, [r3]
	mov	r1, r3
	mov	r2, r4
	ldr	r3, [r7, #24]
	str	r3, [sp]
	mov	r3, r2
	mov	r2, r1
	movs	r1, #1
	ldr	r0, [r7, #16]
	bl	putdec64
	.loc 1 481 0 is_stmt 1 discriminator 1
	b	.L97
.L100:
.LBB10:
	.loc 1 478 0
	ldr	r3, [r7]
	adds	r2, r3, #4
	str	r2, [r7]
	ldr	r3, [r3]
	str	r3, [r7, #44]
	.loc 1 479 0
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #24]
	movs	r1, #1
	ldr	r0, [r7, #16]
	bl	putdec32
.LBE10:
	.loc 1 481 0
	b	.L97
.L95:
	.loc 1 493 0
	ldrb	r3, [r7, #10]	@ zero_extendqisi2
	cmp	r3, #1
	bls	.L102
	.loc 1 493 0 is_stmt 0 discriminator 1
	ldr	r3, [r7]
	adds	r3, r3, #7
	bic	r3, r3, #7
	add	r2, r3, #8
	str	r2, [r7]
	ldrd	r3, [r3]
	ldr	r2, [r7, #24]
	str	r2, [sp]
	mov	r2, r3
	mov	r3, r4
	movs	r1, #0
	ldr	r0, [r7, #16]
	bl	putdec64
	.loc 1 495 0 is_stmt 1 discriminator 1
	b	.L97
.L102:
	.loc 1 494 0
	ldr	r3, [r7]
	adds	r2, r3, #4
	str	r2, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #24]
	movs	r1, #0
	ldr	r0, [r7, #16]
	bl	putdec32
	.loc 1 495 0
	b	.L97
.L86:
	.loc 1 498 0
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L87
	.loc 1 498 0 is_stmt 0 discriminator 1
	movs	r3, #1
	str	r3, [r7, #16]
.L87:
	.loc 1 501 0 is_stmt 1
	ldr	r3, [r7, #24]
	movs	r2, #10
	mul	r2, r2, r3
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	add	r3, r3, r2
	subs	r3, r3, #48
	str	r3, [r7, #24]
	.loc 1 502 0
	b	.L79
.L85:
	.loc 1 504 0
	ldr	r3, [r7, #24]
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #24]
	b	.L79
.L82:
	.loc 1 507 0
	movs	r0, #63
	bl	pfputc
	movs	r0, #63
	bl	pfputc
	.loc 1 508 0
	nop
.L97:
.LBE6:
	.loc 1 512 0
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #9]
.L77:
.LBE5:
	.loc 1 405 0
	ldrb	r3, [r7, #9]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L104
	.loc 1 516 0
	nop
	adds	r7, r7, #68
	.cfi_def_cfa_offset 12
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r7, pc}
	.cfi_endproc
.LFE17:
	.size	locked_printf, .-locked_printf
	.global	dof_mutex_spacer
	.bss
	.align	2
	.type	dof_mutex_spacer, %object
	.size	dof_mutex_spacer, 4
dof_mutex_spacer:
	.space	4
	.global	dof_mutex
	.align	2
	.type	dof_mutex, %object
	.size	dof_mutex, 4
dof_mutex:
	.space	4
	.text
	.align	2
	.global	printf
	.syntax unified
	.thumb
	.thumb_func
	.type	printf, %function
printf:
.LFB18:
	.loc 1 523 0
	.cfi_startproc
	@ args = 4, pretend = 16, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 1
	push	{r0, r1, r2, r3}
	.cfi_def_cfa_offset 16
	.cfi_offset 0, -16
	.cfi_offset 1, -12
	.cfi_offset 2, -8
	.cfi_offset 3, -4
	push	{r7, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 7, -24
	.cfi_offset 14, -20
	sub	sp, sp, #16
	.cfi_def_cfa_offset 40
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	ldr	r3, [r7, #24]
	str	r3, [r7, #4]
	.loc 1 523 0
	movw	r3, #:lower16:__stack_chk_guard
	movt	r3, #:upper16:__stack_chk_guard
	ldr	r3, [r3]
	str	r3, [r7, #12]
	.loc 1 524 0
	b	.L106
.L107:
	.loc 1 524 0 is_stmt 0 discriminator 2
	bl	get_core_id
	mov	r3, r0
	mov	r0, r3
	bl	_core_pause
.L106:
	.loc 1 524 0 discriminator 1
	movs	r1, #1
	movw	r0, #:lower16:dof_mutex
	movt	r0, #:upper16:dof_mutex
	bl	_archglue_test_and_set
	mov	r3, r0
	cmp	r3, #0
	bne	.L107
	.loc 1 525 0 is_stmt 1
	movw	r3, #:lower16:ffile
	movt	r3, #:upper16:ffile
	movs	r2, #0
	str	r2, [r3]
	.loc 1 526 0
	movw	r3, #:lower16:spf
	movt	r3, #:upper16:spf
	movs	r2, #0
	str	r2, [r3]
	.loc 1 528 0
	add	r3, r7, #28
	str	r3, [r7, #8]
	.loc 1 529 0
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #4]
	bl	locked_printf
	.loc 1 530 0
	movs	r1, #0
	movw	r0, #:lower16:dof_mutex
	movt	r0, #:upper16:dof_mutex
	bl	_archglue_test_and_set
	.loc 1 531 0
	movs	r3, #0
	.loc 1 532 0
	mov	r0, r3
	movw	r3, #:lower16:__stack_chk_guard
	movt	r3, #:upper16:__stack_chk_guard
	ldr	r2, [r7, #12]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L109
	bl	__stack_chk_fail
.L109:
	adds	r7, r7, #16
	.cfi_def_cfa_offset 24
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, lr}
	.cfi_restore 14
	.cfi_restore 7
	.cfi_def_cfa_offset 16
	add	sp, sp, #16
	.cfi_restore 3
	.cfi_restore 2
	.cfi_restore 1
	.cfi_restore 0
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE18:
	.size	printf, .-printf
	.align	2
	.global	vsnprintf
	.syntax unified
	.thumb
	.thumb_func
	.type	vsnprintf, %function
vsnprintf:
.LFB19:
	.loc 1 535 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	.loc 1 536 0
	b	.L111
.L112:
	.loc 1 536 0 is_stmt 0 discriminator 2
	bl	get_core_id
	mov	r3, r0
	mov	r0, r3
	bl	_core_pause
.L111:
	.loc 1 536 0 discriminator 1
	movs	r1, #1
	movw	r0, #:lower16:dof_mutex
	movt	r0, #:upper16:dof_mutex
	bl	_archglue_test_and_set
	mov	r3, r0
	cmp	r3, #0
	bne	.L112
	.loc 1 537 0 is_stmt 1
	movw	r3, #:lower16:ffile
	movt	r3, #:upper16:ffile
	movs	r2, #0
	str	r2, [r3]
	.loc 1 538 0
	movw	r3, #:lower16:spf
	movt	r3, #:upper16:spf
	ldr	r2, [r7, #12]
	str	r2, [r3]
	.loc 1 539 0
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	locked_printf
	.loc 1 540 0
	movw	r3, #:lower16:spf
	movt	r3, #:upper16:spf
	ldr	r3, [r3]
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 541 0
	movs	r1, #0
	movw	r0, #:lower16:dof_mutex
	movt	r0, #:upper16:dof_mutex
	bl	_archglue_test_and_set
	.loc 1 542 0
	movs	r3, #0
	.loc 1 543 0
	mov	r0, r3
	adds	r7, r7, #16
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE19:
	.size	vsnprintf, .-vsnprintf
	.align	2
	.global	sprintf
	.syntax unified
	.thumb
	.thumb_func
	.type	sprintf, %function
sprintf:
.LFB20:
	.loc 1 546 0
	.cfi_startproc
	@ args = 4, pretend = 12, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 1
	push	{r1, r2, r3}
	.cfi_def_cfa_offset 12
	.cfi_offset 1, -12
	.cfi_offset 2, -8
	.cfi_offset 3, -4
	push	{r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 7, -20
	.cfi_offset 14, -16
	sub	sp, sp, #20
	.cfi_def_cfa_offset 40
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	ldr	r3, [r7, #28]
	str	r3, [r7]
	.loc 1 546 0
	movw	r3, #:lower16:__stack_chk_guard
	movt	r3, #:upper16:__stack_chk_guard
	ldr	r3, [r3]
	str	r3, [r7, #12]
	.loc 1 547 0
	b	.L115
.L116:
	.loc 1 547 0 is_stmt 0 discriminator 2
	bl	get_core_id
	mov	r3, r0
	mov	r0, r3
	bl	_core_pause
.L115:
	.loc 1 547 0 discriminator 1
	movs	r1, #1
	movw	r0, #:lower16:dof_mutex
	movt	r0, #:upper16:dof_mutex
	bl	_archglue_test_and_set
	mov	r3, r0
	cmp	r3, #0
	bne	.L116
	.loc 1 548 0 is_stmt 1
	movw	r3, #:lower16:ffile
	movt	r3, #:upper16:ffile
	movs	r2, #0
	str	r2, [r3]
	.loc 1 549 0
	movw	r3, #:lower16:spf
	movt	r3, #:upper16:spf
	ldr	r2, [r7, #4]
	str	r2, [r3]
	.loc 1 551 0
	add	r3, r7, #32
	str	r3, [r7, #8]
	.loc 1 552 0
	ldr	r1, [r7, #8]
	ldr	r0, [r7]
	bl	locked_printf
	.loc 1 553 0
	movw	r3, #:lower16:spf
	movt	r3, #:upper16:spf
	ldr	r3, [r3]
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 554 0
	movs	r1, #0
	movw	r0, #:lower16:dof_mutex
	movt	r0, #:upper16:dof_mutex
	bl	_archglue_test_and_set
	.loc 1 555 0
	movs	r3, #0
	.loc 1 556 0
	mov	r0, r3
	movw	r3, #:lower16:__stack_chk_guard
	movt	r3, #:upper16:__stack_chk_guard
	ldr	r2, [r7, #12]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L118
	bl	__stack_chk_fail
.L118:
	adds	r7, r7, #20
	.cfi_def_cfa_offset 20
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, lr}
	.cfi_restore 14
	.cfi_restore 7
	.cfi_def_cfa_offset 12
	add	sp, sp, #12
	.cfi_restore 3
	.cfi_restore 2
	.cfi_restore 1
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE20:
	.size	sprintf, .-sprintf
	.align	2
	.global	snprintf
	.syntax unified
	.thumb
	.thumb_func
	.type	snprintf, %function
snprintf:
.LFB21:
	.loc 1 559 0
	.cfi_startproc
	@ args = 4, pretend = 8, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 1
	push	{r2, r3}
	.cfi_def_cfa_offset 8
	.cfi_offset 2, -8
	.cfi_offset 3, -4
	push	{r7, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 7, -16
	.cfi_offset 14, -12
	sub	sp, sp, #24
	.cfi_def_cfa_offset 40
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	ldr	r3, [r7, #32]
	str	r3, [r7, #4]
	.loc 1 559 0
	movw	r3, #:lower16:__stack_chk_guard
	movt	r3, #:upper16:__stack_chk_guard
	ldr	r3, [r3]
	str	r3, [r7, #20]
	.loc 1 560 0
	b	.L120
.L121:
	.loc 1 560 0 is_stmt 0 discriminator 2
	bl	get_core_id
	mov	r3, r0
	mov	r0, r3
	bl	_core_pause
.L120:
	.loc 1 560 0 discriminator 1
	movs	r1, #1
	movw	r0, #:lower16:dof_mutex
	movt	r0, #:upper16:dof_mutex
	bl	_archglue_test_and_set
	mov	r3, r0
	cmp	r3, #0
	bne	.L121
	.loc 1 561 0 is_stmt 1
	movw	r3, #:lower16:ffile
	movt	r3, #:upper16:ffile
	movs	r2, #0
	str	r2, [r3]
	.loc 1 562 0
	movw	r3, #:lower16:spf
	movt	r3, #:upper16:spf
	ldr	r2, [r7, #12]
	str	r2, [r3]
	.loc 1 564 0
	add	r3, r7, #36
	str	r3, [r7, #16]
	.loc 1 565 0
	ldr	r1, [r7, #16]
	ldr	r0, [r7, #4]
	bl	locked_printf
	.loc 1 566 0
	movw	r3, #:lower16:spf
	movt	r3, #:upper16:spf
	ldr	r3, [r3]
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 567 0
	movs	r1, #0
	movw	r0, #:lower16:dof_mutex
	movt	r0, #:upper16:dof_mutex
	bl	_archglue_test_and_set
	.loc 1 568 0
	movs	r3, #0
	.loc 1 569 0
	mov	r0, r3
	movw	r3, #:lower16:__stack_chk_guard
	movt	r3, #:upper16:__stack_chk_guard
	ldr	r2, [r7, #20]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L123
	bl	__stack_chk_fail
.L123:
	adds	r7, r7, #24
	.cfi_def_cfa_offset 16
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, lr}
	.cfi_restore 14
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	add	sp, sp, #8
	.cfi_restore 3
	.cfi_restore 2
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE21:
	.size	snprintf, .-snprintf
	.comm	printi_zeroflag,1,1
	.align	2
	.global	hex1
	.syntax unified
	.thumb
	.thumb_func
	.type	hex1, %function
hex1:
.LFB22:
	.loc 1 577 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 578 0
	ldr	r3, [r7, #4]
	and	r3, r3, #15
	str	r3, [r7, #4]
	.loc 1 579 0
	ldr	r3, [r7, #4]
	cmp	r3, #9
	ble	.L125
	.loc 1 579 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	adds	r3, r3, #55
	b	.L126
.L125:
	.loc 1 579 0 discriminator 2
	ldr	r3, [r7, #4]
	adds	r3, r3, #48
.L126:
	.loc 1 579 0 discriminator 4
	mov	r0, r3
	bl	pfputc
	.loc 1 580 0 is_stmt 1 discriminator 4
	nop
	adds	r7, r7, #8
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE22:
	.size	hex1, .-hex1
	.align	2
	.global	hex2
	.syntax unified
	.thumb
	.thumb_func
	.type	hex2, %function
hex2:
.LFB23:
	.loc 1 583 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 584 0
	ldr	r3, [r7, #4]
	uxtb	r3, r3
	str	r3, [r7, #4]
	.loc 1 585 0
	ldr	r3, [r7, #4]
	asrs	r3, r3, #4
	mov	r0, r3
	bl	hex1
	.loc 1 586 0
	ldr	r0, [r7, #4]
	bl	hex1
	.loc 1 587 0
	nop
	adds	r7, r7, #8
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE23:
	.size	hex2, .-hex2
	.align	2
	.global	debhex8
	.syntax unified
	.thumb
	.thumb_func
	.type	debhex8, %function
debhex8:
.LFB24:
	.loc 1 591 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 592 0
	ldr	r3, [r7, #4]
	asrs	r3, r3, #24
	mov	r0, r3
	bl	hex2
	.loc 1 593 0
	ldr	r3, [r7, #4]
	asrs	r3, r3, #16
	mov	r0, r3
	bl	hex2
	.loc 1 594 0
	ldr	r3, [r7, #4]
	asrs	r3, r3, #8
	mov	r0, r3
	bl	hex2
	.loc 1 595 0
	ldr	r0, [r7, #4]
	bl	hex2
	.loc 1 596 0
	movs	r0, #32
	bl	pfputc
	.loc 1 597 0
	nop
	adds	r7, r7, #8
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE24:
	.size	debhex8, .-debhex8
	.align	2
	.global	isupper
	.syntax unified
	.thumb
	.thumb_func
	.type	isupper, %function
isupper:
.LFB25:
	.loc 1 601 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 602 0
	ldr	r3, [r7, #4]
	cmp	r3, #64
	ble	.L130
	.loc 1 602 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	cmp	r3, #90
	bgt	.L130
	.loc 1 602 0 discriminator 2
	movs	r3, #1
	b	.L131
.L130:
	.loc 1 603 0 is_stmt 1
	movs	r3, #0
.L131:
	.loc 1 604 0
	mov	r0, r3
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE25:
	.size	isupper, .-isupper
	.align	2
	.global	isdigit
	.syntax unified
	.thumb
	.thumb_func
	.type	isdigit, %function
isdigit:
.LFB26:
	.loc 1 607 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 608 0
	ldr	r3, [r7, #4]
	cmp	r3, #47
	ble	.L133
	.loc 1 608 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	cmp	r3, #57
	bgt	.L133
	.loc 1 608 0 discriminator 2
	movs	r3, #1
	b	.L134
.L133:
	.loc 1 609 0 is_stmt 1
	movs	r3, #0
.L134:
	.loc 1 610 0
	mov	r0, r3
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE26:
	.size	isdigit, .-isdigit
	.align	2
	.global	isprint
	.syntax unified
	.thumb
	.thumb_func
	.type	isprint, %function
isprint:
.LFB27:
	.loc 1 613 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 614 0
	ldr	r3, [r7, #4]
	cmp	r3, #31
	ble	.L136
	.loc 1 614 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	cmp	r3, #126
	bgt	.L136
	.loc 1 614 0 discriminator 2
	movs	r3, #1
	b	.L137
.L136:
	.loc 1 615 0 is_stmt 1
	movs	r3, #0
.L137:
	.loc 1 616 0
	mov	r0, r3
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE27:
	.size	isprint, .-isprint
	.align	2
	.global	tolower
	.syntax unified
	.thumb
	.thumb_func
	.type	tolower, %function
tolower:
.LFB28:
	.loc 1 621 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 621 0
	ldr	r3, [r7, #4]
	cmp	r3, #64
	ble	.L139
	.loc 1 621 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	cmp	r3, #90
	bgt	.L139
	.loc 1 621 0 discriminator 2
	ldr	r3, [r7, #4]
	adds	r3, r3, #32
	b	.L140
.L139:
	.loc 1 622 0 is_stmt 1
	ldr	r3, [r7, #4]
.L140:
	.loc 1 623 0
	mov	r0, r3
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE28:
	.size	tolower, .-tolower
	.align	2
	.global	toupper
	.syntax unified
	.thumb
	.thumb_func
	.type	toupper, %function
toupper:
.LFB29:
	.loc 1 626 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 627 0
	ldr	r3, [r7, #4]
	cmp	r3, #96
	ble	.L142
	.loc 1 627 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	cmp	r3, #122
	bgt	.L142
	.loc 1 627 0 discriminator 2
	ldr	r3, [r7, #4]
	subs	r3, r3, #32
	b	.L143
.L142:
	.loc 1 628 0 is_stmt 1
	ldr	r3, [r7, #4]
.L143:
	.loc 1 629 0
	mov	r0, r3
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE29:
	.size	toupper, .-toupper
	.align	2
	.global	islower
	.syntax unified
	.thumb
	.thumb_func
	.type	islower, %function
islower:
.LFB30:
	.loc 1 632 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 632 0
	ldr	r3, [r7, #4]
	cmp	r3, #96
	ble	.L145
	.loc 1 632 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	cmp	r3, #122
	bgt	.L145
	.loc 1 632 0 discriminator 2
	movs	r3, #1
	b	.L146
.L145:
	.loc 1 633 0 is_stmt 1
	movs	r3, #0
.L146:
	.loc 1 634 0
	mov	r0, r3
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE30:
	.size	islower, .-islower
	.align	2
	.global	isalnum
	.syntax unified
	.thumb
	.thumb_func
	.type	isalnum, %function
isalnum:
.LFB31:
	.loc 1 637 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 638 0
	ldr	r3, [r7, #4]
	cmp	r3, #96
	ble	.L148
	.loc 1 638 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	cmp	r3, #122
	bgt	.L148
	.loc 1 638 0 discriminator 2
	movs	r3, #1
	b	.L149
.L148:
	.loc 1 639 0 is_stmt 1
	ldr	r3, [r7, #4]
	cmp	r3, #64
	ble	.L150
	.loc 1 639 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	cmp	r3, #90
	bgt	.L150
	.loc 1 639 0 discriminator 2
	movs	r3, #1
	b	.L149
.L150:
	.loc 1 640 0 is_stmt 1
	ldr	r3, [r7, #4]
	cmp	r3, #47
	ble	.L151
	.loc 1 640 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	cmp	r3, #57
	bgt	.L151
	.loc 1 640 0 discriminator 2
	movs	r3, #1
	b	.L149
.L151:
	.loc 1 641 0 is_stmt 1
	movs	r3, #0
.L149:
	.loc 1 642 0
	mov	r0, r3
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE31:
	.size	isalnum, .-isalnum
	.align	2
	.global	isalpha
	.syntax unified
	.thumb
	.thumb_func
	.type	isalpha, %function
isalpha:
.LFB32:
	.loc 1 645 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 646 0
	ldr	r3, [r7, #4]
	cmp	r3, #96
	ble	.L153
	.loc 1 646 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	cmp	r3, #122
	bgt	.L153
	.loc 1 646 0 discriminator 2
	movs	r3, #1
	b	.L154
.L153:
	.loc 1 647 0 is_stmt 1
	ldr	r3, [r7, #4]
	cmp	r3, #64
	ble	.L155
	.loc 1 647 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	cmp	r3, #90
	bgt	.L155
	.loc 1 647 0 discriminator 2
	movs	r3, #1
	b	.L154
.L155:
	.loc 1 648 0 is_stmt 1
	movs	r3, #0
.L154:
	.loc 1 649 0
	mov	r0, r3
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE32:
	.size	isalpha, .-isalpha
	.align	2
	.global	strlen
	.syntax unified
	.thumb
	.thumb_func
	.type	strlen, %function
strlen:
.LFB33:
	.loc 1 652 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 653 0
	movs	r3, #0
	str	r3, [r7, #12]
	.loc 1 654 0
	b	.L157
.L158:
	.loc 1 654 0 is_stmt 0 discriminator 2
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L157:
	.loc 1 654 0 discriminator 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L158
	.loc 1 655 0 is_stmt 1
	ldr	r3, [r7, #12]
	.loc 1 656 0
	mov	r0, r3
	adds	r7, r7, #20
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE33:
	.size	strlen, .-strlen
	.align	2
	.global	strcpy
	.syntax unified
	.thumb
	.thumb_func
	.type	strcpy, %function
strcpy:
.LFB34:
	.loc 1 661 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 662 0
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	.loc 1 663 0
	b	.L161
.L162:
	.loc 1 663 0 is_stmt 0 discriminator 2
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	ldr	r2, [r7]
	adds	r1, r2, #1
	str	r1, [r7]
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
.L161:
	.loc 1 663 0 discriminator 1
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L162
	.loc 1 664 0 is_stmt 1
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 665 0
	ldr	r3, [r7, #12]
	.loc 1 666 0
	mov	r0, r3
	adds	r7, r7, #20
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE34:
	.size	strcpy, .-strcpy
	.align	2
	.global	strdup
	.syntax unified
	.thumb
	.thumb_func
	.type	strdup, %function
strdup:
.LFB35:
	.loc 1 669 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 670 0
	ldr	r0, [r7, #4]
	bl	strlen
	mov	r3, r0
	adds	r3, r3, #1
	mov	r0, r3
	bl	malloc
	str	r0, [r7, #12]
	.loc 1 671 0
	ldr	r1, [r7, #4]
	ldr	r0, [r7, #12]
	bl	strcpy
	.loc 1 672 0
	ldr	r3, [r7, #12]
	.loc 1 673 0
	mov	r0, r3
	adds	r7, r7, #16
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE35:
	.size	strdup, .-strdup
	.align	2
	.global	strcat
	.syntax unified
	.thumb
	.thumb_func
	.type	strcat, %function
strcat:
.LFB36:
	.loc 1 675 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 676 0
	ldr	r0, [r7, #4]
	bl	strlen
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	ldr	r1, [r7]
	mov	r0, r3
	bl	strcpy
	.loc 1 677 0
	ldr	r3, [r7, #4]
	.loc 1 678 0
	mov	r0, r3
	adds	r7, r7, #8
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE36:
	.size	strcat, .-strcat
	.align	2
	.global	strncpy
	.syntax unified
	.thumb
	.thumb_func
	.type	strncpy, %function
strncpy:
.LFB37:
	.loc 1 681 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #28
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 1 684 0
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L169
.L171:
	.loc 1 685 0 discriminator 4
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldr	r2, [r7, #20]
	ldr	r1, [r7, #8]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	.loc 1 684 0 discriminator 4
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L169:
	.loc 1 684 0 is_stmt 0 discriminator 1
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bge	.L172
	.loc 1 684 0 discriminator 3
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L171
	.loc 1 686 0 is_stmt 1
	b	.L172
.L173:
	.loc 1 687 0 discriminator 2
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 686 0 discriminator 2
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L172:
	.loc 1 686 0 is_stmt 0 discriminator 1
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	blt	.L173
	.loc 1 689 0 is_stmt 1
	ldr	r3, [r7, #12]
	.loc 1 690 0
	mov	r0, r3
	adds	r7, r7, #28
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE37:
	.size	strncpy, .-strncpy
	.align	2
	.global	strcmp
	.syntax unified
	.thumb
	.thumb_func
	.type	strcmp, %function
strcmp:
.LFB38:
	.loc 1 694 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
.L180:
.LBB11:
	.loc 1 697 0
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	ldrb	r3, [r3]
	strb	r3, [r7, #14]
	.loc 1 698 0
	ldr	r3, [r7]
	adds	r2, r3, #1
	str	r2, [r7]
	ldrb	r3, [r3]
	strb	r3, [r7, #15]
	.loc 1 700 0
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L176
	.loc 1 700 0 is_stmt 0 discriminator 1
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L176
	.loc 1 700 0 discriminator 2
	movs	r3, #0
	b	.L177
.L176:
	.loc 1 701 0 is_stmt 1
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L178
	.loc 1 701 0 is_stmt 0 discriminator 2
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L178
	.loc 1 701 0 discriminator 4
	ldrb	r2, [r7, #14]	@ zero_extendqisi2
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L180
.L178:
	.loc 1 701 0 discriminator 5
	ldrb	r2, [r7, #14]	@ zero_extendqisi2
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	subs	r3, r2, r3
.L177:
.LBE11:
	.loc 1 703 0 is_stmt 1
	mov	r0, r3
	adds	r7, r7, #20
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE38:
	.size	strcmp, .-strcmp
	.align	2
	.global	strcasecmp
	.syntax unified
	.thumb
	.thumb_func
	.type	strcasecmp, %function
strcasecmp:
.LFB39:
	.loc 1 706 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
.L186:
.LBB12:
	.loc 1 709 0
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	toupper
	mov	r3, r0
	strb	r3, [r7, #14]
	.loc 1 710 0
	ldr	r3, [r7]
	adds	r2, r3, #1
	str	r2, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	toupper
	mov	r3, r0
	strb	r3, [r7, #15]
	.loc 1 711 0
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L182
	.loc 1 711 0 is_stmt 0 discriminator 1
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L182
	.loc 1 711 0 discriminator 2
	movs	r3, #0
	b	.L183
.L182:
	.loc 1 712 0 is_stmt 1
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L184
	.loc 1 712 0 is_stmt 0 discriminator 2
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L184
	.loc 1 712 0 discriminator 4
	ldrb	r2, [r7, #14]	@ zero_extendqisi2
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L186
.L184:
	.loc 1 712 0 discriminator 5
	ldrb	r2, [r7, #14]	@ zero_extendqisi2
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	subs	r3, r2, r3
.L183:
.LBE12:
	.loc 1 714 0 is_stmt 1
	mov	r0, r3
	adds	r7, r7, #16
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE39:
	.size	strcasecmp, .-strcasecmp
	.align	2
	.global	strncmp
	.syntax unified
	.thumb
	.thumb_func
	.type	strncmp, %function
strncmp:
.LFB40:
	.loc 1 717 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #28
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
.L193:
.LBB13:
	.loc 1 720 0
	ldr	r3, [r7, #4]
	subs	r2, r3, #1
	str	r2, [r7, #4]
	cmp	r3, #0
	bne	.L188
	.loc 1 720 0 is_stmt 0 discriminator 1
	movs	r3, #0
	b	.L189
.L188:
	.loc 1 721 0 is_stmt 1
	ldr	r3, [r7, #12]
	adds	r2, r3, #1
	str	r2, [r7, #12]
	ldrb	r3, [r3]
	strb	r3, [r7, #22]
	.loc 1 722 0
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	ldrb	r3, [r3]
	strb	r3, [r7, #23]
	.loc 1 723 0
	ldrb	r3, [r7, #22]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L190
	.loc 1 723 0 is_stmt 0 discriminator 1
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L190
	.loc 1 723 0 discriminator 2
	movs	r3, #0
	b	.L189
.L190:
	.loc 1 724 0 is_stmt 1
	ldrb	r3, [r7, #22]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L191
	.loc 1 724 0 is_stmt 0 discriminator 2
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L191
	.loc 1 724 0 discriminator 4
	ldrb	r2, [r7, #22]	@ zero_extendqisi2
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L193
.L191:
	.loc 1 724 0 discriminator 5
	ldrb	r2, [r7, #22]	@ zero_extendqisi2
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	subs	r3, r2, r3
.L189:
.LBE13:
	.loc 1 727 0 is_stmt 1
	mov	r0, r3
	adds	r7, r7, #28
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE40:
	.size	strncmp, .-strncmp
	.align	2
	.global	strncasecmp
	.syntax unified
	.thumb
	.thumb_func
	.type	strncasecmp, %function
strncasecmp:
.LFB41:
	.loc 1 730 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
.L200:
.LBB14:
	.loc 1 733 0
	ldr	r3, [r7, #4]
	subs	r2, r3, #1
	str	r2, [r7, #4]
	cmp	r3, #0
	bne	.L195
	.loc 1 733 0 is_stmt 0 discriminator 1
	movs	r3, #0
	b	.L196
.L195:
	.loc 1 734 0 is_stmt 1
	ldr	r3, [r7, #12]
	adds	r2, r3, #1
	str	r2, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	toupper
	mov	r3, r0
	strb	r3, [r7, #22]
	.loc 1 735 0
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	toupper
	mov	r3, r0
	strb	r3, [r7, #23]
	.loc 1 736 0
	ldrb	r3, [r7, #22]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L197
	.loc 1 736 0 is_stmt 0 discriminator 1
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L197
	.loc 1 736 0 discriminator 2
	movs	r3, #0
	b	.L196
.L197:
	.loc 1 737 0 is_stmt 1
	ldrb	r3, [r7, #22]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L198
	.loc 1 737 0 is_stmt 0 discriminator 2
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L198
	.loc 1 737 0 discriminator 4
	ldrb	r2, [r7, #22]	@ zero_extendqisi2
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L200
.L198:
	.loc 1 737 0 discriminator 5
	ldrb	r2, [r7, #22]	@ zero_extendqisi2
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	subs	r3, r2, r3
.L196:
.LBE14:
	.loc 1 740 0 is_stmt 1
	mov	r0, r3
	adds	r7, r7, #24
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE41:
	.size	strncasecmp, .-strncasecmp
	.align	2
	.global	strchr
	.syntax unified
	.thumb
	.thumb_func
	.type	strchr, %function
strchr:
.LFB42:
	.loc 1 742 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 743 0
	b	.L202
.L205:
	.loc 1 744 0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7]
	cmp	r2, r3
	bne	.L203
	.loc 1 745 0
	ldr	r3, [r7, #4]
	b	.L204
.L203:
	.loc 1 746 0
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
.L202:
	.loc 1 743 0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L205
	.loc 1 749 0
	movs	r3, #0
.L204:
	.loc 1 750 0
	mov	r0, r3
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE42:
	.size	strchr, .-strchr
	.align	2
	.global	atoi
	.syntax unified
	.thumb
	.thumb_func
	.type	atoi, %function
atoi:
.LFB43:
	.loc 1 753 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #28
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 754 0
	movs	r3, #0
	str	r3, [r7, #16]
	.loc 1 755 0
	movs	r3, #10
	str	r3, [r7, #20]
	.loc 1 756 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L209
	.loc 1 756 0 is_stmt 0 discriminator 1
	movs	r3, #0
	b	.L208
.L210:
	.loc 1 757 0 is_stmt 1 discriminator 4
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
.L209:
	.loc 1 757 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L210
	.loc 1 757 0 discriminator 3
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L210
.L217:
.LBB15:
	.loc 1 759 0 is_stmt 1
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	ldrb	r3, [r3]
	strb	r3, [r7, #15]
	.loc 1 760 0
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L211
	.loc 1 760 0 is_stmt 0 discriminator 1
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L211
	.loc 1 761 0 is_stmt 1
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #20]
	mul	r2, r2, r3
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	subs	r3, r3, #48
	str	r3, [r7, #16]
	.loc 1 762 0
	b	.L212
.L211:
	.loc 1 764 0
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #96
	bls	.L213
	.loc 1 764 0 is_stmt 0 discriminator 1
	ldrb	r3, [r7, #15]
	subs	r3, r3, #32
	strb	r3, [r7, #15]
.L213:
	.loc 1 765 0 is_stmt 1
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #88
	bne	.L214
	.loc 1 766 0
	movs	r3, #16
	str	r3, [r7, #20]
	.loc 1 767 0
	b	.L212
.L214:
	.loc 1 769 0
	ldr	r3, [r7, #20]
	cmp	r3, #9
	ble	.L218
	.loc 1 769 0 is_stmt 0 discriminator 1
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #64
	bls	.L218
	.loc 1 769 0 discriminator 2
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #70
	bhi	.L218
	.loc 1 771 0 is_stmt 1
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #20]
	mul	r2, r2, r3
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	subs	r3, r3, #55
	str	r3, [r7, #16]
	.loc 1 772 0
	nop
.L212:
.LBE15:
	.loc 1 775 0
	b	.L217
.L218:
.LBB16:
	.loc 1 774 0
	nop
.LBE16:
	.loc 1 776 0
	ldr	r3, [r7, #16]
.L208:
	.loc 1 777 0
	mov	r0, r3
	adds	r7, r7, #28
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE43:
	.size	atoi, .-atoi
	.align	2
	.global	atol
	.syntax unified
	.thumb
	.thumb_func
	.type	atol, %function
atol:
.LFB44:
	.loc 1 779 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #28
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 780 0
	movs	r3, #0
	str	r3, [r7, #16]
	.loc 1 781 0
	movs	r3, #10
	str	r3, [r7, #20]
	.loc 1 782 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L222
	.loc 1 782 0 is_stmt 0 discriminator 1
	movs	r3, #0
	b	.L221
.L223:
	.loc 1 783 0 is_stmt 1 discriminator 4
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
.L222:
	.loc 1 783 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L223
	.loc 1 783 0 discriminator 3
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L223
.L231:
.LBB17:
	.loc 1 785 0 is_stmt 1
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	ldrb	r3, [r3]
	strb	r3, [r7, #15]
	.loc 1 786 0
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L224
	.loc 1 786 0 is_stmt 0 discriminator 1
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L224
	.loc 1 787 0 is_stmt 1
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #20]
	mul	r2, r2, r3
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	subs	r3, r3, #48
	str	r3, [r7, #16]
	.loc 1 788 0
	b	.L225
.L224:
	.loc 1 790 0
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #96
	bls	.L226
	.loc 1 791 0
	ldrb	r3, [r7, #15]
	subs	r3, r3, #32
	strb	r3, [r7, #15]
.L226:
	.loc 1 792 0
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #88
	beq	.L227
	.loc 1 792 0 is_stmt 0 discriminator 1
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #120
	bne	.L228
.L227:
	.loc 1 793 0 is_stmt 1
	movs	r3, #16
	str	r3, [r7, #20]
	.loc 1 794 0
	b	.L225
.L228:
	.loc 1 797 0
	ldr	r3, [r7, #20]
	cmp	r3, #9
	ble	.L232
	.loc 1 797 0 is_stmt 0 discriminator 1
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #64
	bls	.L232
	.loc 1 797 0 discriminator 2
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #70
	bhi	.L232
	.loc 1 798 0 is_stmt 1
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #20]
	mul	r2, r2, r3
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	subs	r3, r3, #55
	str	r3, [r7, #16]
	.loc 1 799 0
	nop
.L225:
.LBE17:
	.loc 1 802 0
	b	.L231
.L232:
.LBB18:
	.loc 1 801 0
	nop
.LBE18:
	.loc 1 804 0
	ldr	r3, [r7, #16]
.L221:
	.loc 1 805 0
	mov	r0, r3
	adds	r7, r7, #28
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE44:
	.size	atol, .-atol
	.align	2
	.global	fwrite
	.syntax unified
	.thumb
	.thumb_func
	.type	fwrite, %function
fwrite:
.LFB45:
	.loc 1 821 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	.loc 1 822 0
	b	.L234
.L235:
	.loc 1 824 0
	ldr	r3, [r7, #12]
	adds	r2, r3, #1
	str	r2, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	craft_wrch
.L234:
	.loc 1 822 0
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L235
	.loc 1 826 0
	movs	r3, #0
	.loc 1 827 0
	mov	r0, r3
	adds	r7, r7, #16
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE45:
	.size	fwrite, .-fwrite
	.align	2
	.global	sa_write
	.syntax unified
	.thumb
	.thumb_func
	.type	sa_write, %function
sa_write:
.LFB46:
	.loc 1 832 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 833 0
	movs	r3, #79
	strb	r3, [r7, #14]
	.loc 1 835 0
	b	.L238
.L240:
.LBB19:
	.loc 1 837 0
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	ldrb	r3, [r3]
	strb	r3, [r7, #15]
	.loc 1 838 0
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #10
	bne	.L239
	.loc 1 840 0
	movs	r0, #13
	bl	craft_wrch
.L239:
	.loc 1 842 0
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	bl	craft_wrch
	.loc 1 843 0
	ldr	r3, [r7]
	subs	r3, r3, #1
	str	r3, [r7]
.L238:
.LBE19:
	.loc 1 835 0
	ldr	r3, [r7]
	cmp	r3, #0
	bgt	.L240
	.loc 1 850 0
	movs	r3, #0
	.loc 1 851 0
	mov	r0, r3
	adds	r7, r7, #16
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE46:
	.size	sa_write, .-sa_write
	.align	2
	.global	getchar
	.syntax unified
	.thumb
	.thumb_func
	.type	getchar, %function
getchar:
.LFB47:
	.loc 1 865 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 866 0
	movs	r0, #0
	bl	craft_rdch
	mov	r3, r0
	.loc 1 867 0
	mov	r0, r3
	pop	{r7, pc}
	.cfi_endproc
.LFE47:
	.size	getchar, .-getchar
	.align	2
	.global	puts
	.syntax unified
	.thumb
	.thumb_func
	.type	puts, %function
puts:
.LFB48:
	.loc 1 872 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 873 0
	b	.L245
.L246:
	.loc 1 873 0 is_stmt 0 discriminator 2
	bl	get_core_id
	mov	r3, r0
	mov	r0, r3
	bl	_core_pause
.L245:
	.loc 1 873 0 discriminator 1
	movs	r1, #1
	movw	r0, #:lower16:dof_mutex
	movt	r0, #:upper16:dof_mutex
	bl	_archglue_test_and_set
	mov	r3, r0
	cmp	r3, #0
	bne	.L246
	.loc 1 874 0 is_stmt 1
	b	.L247
.L248:
.LBB20:
	.loc 1 876 0
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	ldrb	r3, [r3]
	strb	r3, [r7, #15]
	.loc 1 877 0
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	bl	putchar
.L247:
.LBE20:
	.loc 1 874 0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L248
	.loc 1 879 0
	movs	r0, #10
	bl	putchar
	.loc 1 880 0
	movs	r1, #0
	movw	r0, #:lower16:dof_mutex
	movt	r0, #:upper16:dof_mutex
	bl	_archglue_test_and_set
	.loc 1 881 0
	nop
	mov	r0, r3
	adds	r7, r7, #16
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE48:
	.size	puts, .-puts
	.align	2
	.global	writes
	.syntax unified
	.thumb
	.thumb_func
	.type	writes, %function
writes:
.LFB49:
	.loc 1 885 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 886 0
	b	.L250
.L252:
	.loc 1 888 0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L251
	.loc 1 888 0 is_stmt 0 discriminator 1
	movs	r0, #33
	bl	craft_wrch
.L251:
	.loc 1 889 0 is_stmt 1
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	craft_wrch
.L250:
	.loc 1 886 0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L252
	.loc 1 891 0
	nop
	adds	r7, r7, #8
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE49:
	.size	writes, .-writes
	.global	malloc_mutex
	.bss
	.align	2
	.type	malloc_mutex, %object
	.size	malloc_mutex, 4
malloc_mutex:
	.space	4
	.global	heapbase
	.data
	.align	2
	.type	heapbase, %object
	.size	heapbase, 4
heapbase:
	.word	268435456
	.section	.rodata
	.align	2
.LC0:
	.ascii	"prlibc: Ran out of heap memory!\012\000"
	.text
	.align	2
	.global	malloc
	.syntax unified
	.thumb
	.thumb_func
	.type	malloc, %function
malloc:
.LFB50:
	.loc 1 899 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 900 0
	b	.L254
.L255:
	.loc 1 900 0 is_stmt 0 discriminator 2
	bl	get_core_id
	mov	r3, r0
	mov	r0, r3
	bl	_core_pause
.L254:
	.loc 1 900 0 discriminator 1
	movs	r1, #1
	movw	r0, #:lower16:malloc_mutex
	movt	r0, #:upper16:malloc_mutex
	bl	_archglue_test_and_set
	mov	r3, r0
	cmp	r3, #0
	bne	.L255
	.loc 1 901 0 is_stmt 1
	ldr	r3, [r7, #4]
	adds	r3, r3, #3
	bic	r3, r3, #3
	str	r3, [r7, #4]
	.loc 1 902 0
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	str	r3, [r7, #4]
	.loc 1 904 0
	movw	r3, #:lower16:heapbase
	movt	r3, #:upper16:heapbase
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	subs	r2, r2, #4
	str	r2, [r3]
	.loc 1 905 0
	movw	r3, #:lower16:heapbase
	movt	r3, #:upper16:heapbase
	ldr	r3, [r3]
	adds	r3, r3, #4
	str	r3, [r7, #12]
	.loc 1 906 0
	ldr	r2, [r7, #12]
	movs	r3, #0
	movt	r3, 32752
	cmp	r2, r3
	bls	.L256
	.loc 1 908 0
	movw	r0, #:lower16:.LC0
	movt	r0, #:upper16:.LC0
	bl	printf
	.loc 1 909 0
	movs	r0, #1
	bl	exit
	.loc 1 910 0
	movs	r3, #0
	b	.L257
.L256:
	.loc 1 912 0
	movw	r3, #:lower16:heapbase
	movt	r3, #:upper16:heapbase
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	add	r2, r2, r3
	movw	r3, #:lower16:heapbase
	movt	r3, #:upper16:heapbase
	str	r2, [r3]
	.loc 1 913 0
	movs	r1, #0
	movw	r0, #:lower16:malloc_mutex
	movt	r0, #:upper16:malloc_mutex
	bl	_archglue_test_and_set
	.loc 1 914 0
	ldr	r3, [r7, #12]
.L257:
	.loc 1 915 0
	mov	r0, r3
	adds	r7, r7, #16
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE50:
	.size	malloc, .-malloc
	.align	2
	.global	calloc
	.syntax unified
	.thumb
	.thumb_func
	.type	calloc, %function
calloc:
.LFB51:
	.loc 1 917 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 918 0
	movs	r3, #0
	str	r3, [r7, #8]
	.loc 1 919 0
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	mul	r3, r2, r3
	mov	r0, r3
	bl	malloc
	str	r0, [r7, #12]
	.loc 1 920 0
	movs	r3, #0
	str	r3, [r7, #8]
	b	.L259
.L260:
	.loc 1 921 0 discriminator 3
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 920 0 discriminator 3
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L259:
	.loc 1 920 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	mul	r2, r2, r3
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bgt	.L260
	.loc 1 924 0 is_stmt 1
	ldr	r3, [r7, #12]
	.loc 1 926 0
	mov	r0, r3
	adds	r7, r7, #16
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE51:
	.size	calloc, .-calloc
	.align	2
	.global	realloc
	.syntax unified
	.thumb
	.thumb_func
	.type	realloc, %function
realloc:
.LFB52:
	.loc 1 928 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 932 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L263
	.loc 1 933 0
	ldr	r0, [r7]
	bl	malloc
	mov	r3, r0
	b	.L264
.L263:
	.loc 1 935 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #-4]
	str	r3, [r7, #8]
	.loc 1 936 0
	ldr	r2, [r7, #8]
	ldr	r3, [r7]
	cmp	r2, r3
	bgt	.L265
	.loc 1 937 0
	ldr	r3, [r7, #4]
	b	.L264
.L265:
	.loc 1 939 0
	ldr	r0, [r7]
	bl	malloc
	str	r0, [r7, #12]
	.loc 1 940 0
	ldr	r2, [r7, #8]
	ldr	r1, [r7, #12]
	ldr	r0, [r7, #4]
	bl	bcopy
	.loc 1 941 0
	ldr	r0, [r7, #4]
	bl	free
	.loc 1 943 0
	ldr	r3, [r7, #12]
.L264:
	.loc 1 944 0
	mov	r0, r3
	adds	r7, r7, #16
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE52:
	.size	realloc, .-realloc
	.align	2
	.global	free
	.syntax unified
	.thumb
	.thumb_func
	.type	free, %function
free:
.LFB53:
	.loc 1 947 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 949 0
	nop
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE53:
	.size	free, .-free
	.align	2
	.global	getpagesize
	.syntax unified
	.thumb
	.thumb_func
	.type	getpagesize, %function
getpagesize:
.LFB54:
	.loc 1 952 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 953 0
	mov	r3, #4096
	.loc 1 954 0
	mov	r0, r3
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE54:
	.size	getpagesize, .-getpagesize
	.align	2
	.global	_assert_failed
	.syntax unified
	.thumb
	.thumb_func
	.type	_assert_failed, %function
_assert_failed:
.LFB55:
	.loc 1 958 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 1 959 0
	movs	r0, #126
	bl	exit
	.loc 1 960 0
	nop
	adds	r7, r7, #16
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE55:
	.size	_assert_failed, .-_assert_failed
	.global	__aeabi_i2d
	.global	__aeabi_dmul
	.global	__aeabi_dadd
	.global	__aeabi_dcmplt
	.align	2
	.global	atof
	.syntax unified
	.thumb
	.thumb_func
	.type	atof, %function
atof:
.LFB56:
	.loc 1 967 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #48
	.cfi_def_cfa_offset 64
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 973 0
	movs	r3, #0
	str	r3, [r7, #8]
	b	.L271
.L272:
	.loc 1 973 0 is_stmt 0 discriminator 7
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L271:
	.loc 1 973 0 discriminator 1
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L272
	.loc 1 973 0 discriminator 4
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L272
	.loc 1 973 0 discriminator 6
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #9
	beq	.L272
	.loc 1 975 0 is_stmt 1
	movs	r3, #1
	str	r3, [r7, #16]
	.loc 1 976 0
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #43
	beq	.L273
	.loc 1 976 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #45
	bne	.L274
.L273:
	.loc 1 977 0 is_stmt 1
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	mov	r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #43
	bne	.L275
	.loc 1 977 0 is_stmt 0 discriminator 1
	movs	r3, #1
	b	.L276
.L275:
	.loc 1 977 0 discriminator 2
	mov	r3, #-1
.L276:
	.loc 1 977 0 discriminator 4
	str	r3, [r7, #16]
.L274:
	.loc 1 979 0 is_stmt 1
	movs	r3, #37
	str	r3, [r7, #24]
	.loc 1 980 0
	mov	r3, #0
	mov	r4, #0
	strd	r3, [r7, #32]
	movs	r3, #38
	str	r3, [r7, #12]
	b	.L277
.L280:
	.loc 1 981 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	blt	.L278
	.loc 1 982 0
	movw	r3, #:lower16:powten
	movt	r3, #:upper16:powten
	ldr	r2, [r7, #12]
	lsls	r2, r2, #3
	add	r3, r3, r2
	ldrd	r4, [r3]
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #48
	mov	r0, r3
	bl	__aeabi_i2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dmul
	mov	r3, r0
	mov	r4, r1
	mov	r2, r3
	mov	r3, r4
	ldrd	r0, [r7, #32]
	bl	__aeabi_dadd
	mov	r3, r0
	mov	r4, r1
	strd	r3, [r7, #32]
.L278:
	.loc 1 983 0 discriminator 2
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	str	r3, [r7, #12]
	.loc 1 984 0 discriminator 2
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
	.loc 1 980 0 discriminator 2
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L277:
	.loc 1 980 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L279
	.loc 1 980 0 discriminator 3
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #57
	bls	.L280
.L279:
	.loc 1 988 0 is_stmt 1
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #46
	bne	.L282
	.loc 1 989 0
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
	.loc 1 991 0
	b	.L282
.L285:
	.loc 1 992 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	blt	.L283
	.loc 1 993 0
	movw	r3, #:lower16:powten
	movt	r3, #:upper16:powten
	ldr	r2, [r7, #12]
	lsls	r2, r2, #3
	add	r3, r3, r2
	ldrd	r4, [r3]
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #48
	mov	r0, r3
	bl	__aeabi_i2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dmul
	mov	r3, r0
	mov	r4, r1
	mov	r2, r3
	mov	r3, r4
	ldrd	r0, [r7, #32]
	bl	__aeabi_dadd
	mov	r3, r0
	mov	r4, r1
	strd	r3, [r7, #32]
.L283:
	.loc 1 994 0
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	str	r3, [r7, #12]
	.loc 1 991 0
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L282:
	.loc 1 991 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L284
	.loc 1 991 0 discriminator 2
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #57
	bls	.L285
.L284:
	.loc 1 997 0 is_stmt 1
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #101
	beq	.L286
	.loc 1 997 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #69
	beq	.L286
	.loc 1 997 0 discriminator 2
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #100
	beq	.L286
	.loc 1 997 0 discriminator 3
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #68
	bne	.L287
.L286:
	.loc 1 998 0 is_stmt 1
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
	.loc 1 999 0
	movs	r3, #1
	str	r3, [r7, #20]
	.loc 1 1001 0
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #43
	beq	.L288
	.loc 1 1001 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #45
	bne	.L289
.L288:
	.loc 1 1002 0 is_stmt 1
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	mov	r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #43
	bne	.L290
	.loc 1 1002 0 is_stmt 0 discriminator 1
	movs	r3, #1
	b	.L291
.L290:
	.loc 1 1002 0 discriminator 2
	mov	r3, #-1
.L291:
	.loc 1 1002 0 discriminator 4
	str	r3, [r7, #20]
.L289:
	.loc 1 1003 0 is_stmt 1
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L292
.L294:
	.loc 1 1004 0 discriminator 4
	ldr	r3, [r7, #28]
	movs	r2, #10
	mul	r3, r2, r3
	ldr	r2, [r7, #8]
	ldr	r1, [r7, #4]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	add	r3, r3, r2
	subs	r3, r3, #48
	str	r3, [r7, #28]
	.loc 1 1003 0 discriminator 4
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L292:
	.loc 1 1003 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L293
	.loc 1 1003 0 discriminator 3
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #57
	bls	.L294
.L293:
	.loc 1 1005 0 is_stmt 1
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #20]
	mul	r3, r2, r3
	ldr	r2, [r7, #24]
	add	r3, r3, r2
	str	r3, [r7, #24]
.L287:
	.loc 1 1008 0
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bge	.L295
	.loc 1 1009 0
	mov	r3, #0
	mov	r4, #0
	strd	r3, [r7, #32]
	b	.L296
.L295:
	.loc 1 1010 0
	ldr	r3, [r7, #24]
	cmp	r3, #75
	ble	.L297
	.loc 1 1010 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #24]
	cmp	r3, #76
	bne	.L298
	.loc 1 1010 0 discriminator 2
	adr	r3, .L301
	ldrd	r2, [r3]
	ldrd	r0, [r7, #32]
	bl	__aeabi_dcmplt
	mov	r3, r0
	cmp	r3, #0
	beq	.L298
.L297:
	.loc 1 1011 0 is_stmt 1
	movw	r3, #:lower16:powten
	movt	r3, #:upper16:powten
	ldr	r2, [r7, #24]
	lsls	r2, r2, #3
	add	r3, r3, r2
	ldrd	r3, [r3]
	mov	r2, r3
	mov	r3, r4
	ldrd	r0, [r7, #32]
	bl	__aeabi_dmul
	mov	r3, r0
	mov	r4, r1
	strd	r3, [r7, #32]
	b	.L296
.L298:
	.loc 1 1013 0
	mov	r3, #-536870912
	movw	r4, #65535
	movt	r4, 18415
	strd	r3, [r7, #32]
.L296:
	.loc 1 1016 0
	ldr	r0, [r7, #16]
	bl	__aeabi_i2d
	ldrd	r2, [r7, #32]
	bl	__aeabi_dmul
	mov	r3, r0
	mov	r4, r1
	strd	r3, [r7, #40]
	.loc 1 1017 0
	ldr	r0, [r7, #16]
	bl	__aeabi_i2d
	ldrd	r2, [r7, #32]
	bl	__aeabi_dmul
	mov	r3, r0
	mov	r4, r1
	.loc 1 1018 0
	mov	r0, r3
	mov	r1, r4
	adds	r7, r7, #48
	.cfi_def_cfa_offset 16
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r5, r7, pc}
.L302:
	.align	3
.L301:
	.word	2645194980
	.word	1073428731
	.cfi_endproc
.LFE56:
	.size	atof, .-atof
	.section	.rodata
	.align	2
.LC1:
	.ascii	"perror missing\000"
	.text
	.align	2
	.global	perror
	.syntax unified
	.thumb
	.thumb_func
	.type	perror, %function
perror:
.LFB57:
	.loc 1 1021 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 1022 0
	movw	r3, #:lower16:.LC1
	movt	r3, #:upper16:.LC1
	.loc 1 1023 0
	mov	r0, r3
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE57:
	.size	perror, .-perror
	.align	2
	.global	creat
	.syntax unified
	.thumb
	.thumb_func
	.type	creat, %function
creat:
.LFB58:
	.loc 1 1027 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 1028 0
	mov	r3, #-1
	.loc 1 1029 0
	mov	r0, r3
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE58:
	.size	creat, .-creat
	.align	2
	.global	open
	.syntax unified
	.thumb
	.thumb_func
	.type	open, %function
open:
.LFB59:
	.loc 1 1032 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 1033 0
	mov	r3, #-1
	.loc 1 1034 0
	mov	r0, r3
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE59:
	.size	open, .-open
	.align	2
	.global	fstat
	.syntax unified
	.thumb
	.thumb_func
	.type	fstat, %function
fstat:
.LFB60:
	.loc 1 1036 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 1037 0
	mov	r3, #-1
	.loc 1 1038 0
	mov	r0, r3
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE60:
	.size	fstat, .-fstat
	.align	2
	.global	close
	.syntax unified
	.thumb
	.thumb_func
	.type	close, %function
close:
.LFB61:
	.loc 1 1041 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 1042 0
	mov	r3, #-1
	.loc 1 1043 0
	mov	r0, r3
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE61:
	.size	close, .-close
	.align	2
	.global	fsync
	.syntax unified
	.thumb
	.thumb_func
	.type	fsync, %function
fsync:
.LFB62:
	.loc 1 1046 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 1048 0
	nop
	mov	r0, r3
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE62:
	.size	fsync, .-fsync
	.align	2
	.global	mmap
	.syntax unified
	.thumb
	.thumb_func
	.type	mmap, %function
mmap:
.LFB63:
	.loc 1 1050 0
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	.loc 1 1051 0
	mov	r3, #-1
	.loc 1 1052 0
	mov	r0, r3
	adds	r7, r7, #20
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE63:
	.size	mmap, .-mmap
	.align	2
	.global	munmap
	.syntax unified
	.thumb
	.thumb_func
	.type	munmap, %function
munmap:
.LFB64:
	.loc 1 1054 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 1055 0
	mov	r3, #-1
	.loc 1 1056 0
	mov	r0, r3
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE64:
	.size	munmap, .-munmap
	.data
	.align	2
	.type	m_z, %object
	.size	m_z, 4
m_z:
	.word	23423342
	.align	2
	.type	m_w, %object
	.size	m_w, 4
m_w:
	.word	3232342
	.text
	.align	2
	.global	srand
	.syntax unified
	.thumb
	.thumb_func
	.type	srand, %function
srand:
.LFB65:
	.loc 1 1060 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 1061 0
	movw	r3, #:lower16:m_z
	movt	r3, #:upper16:m_z
	ldr	r2, [r7, #4]
	str	r2, [r3]
	.loc 1 1062 0
	movw	r3, #:lower16:m_w
	movt	r3, #:upper16:m_w
	movs	r2, #3
	str	r2, [r3]
	.loc 1 1063 0
	nop
	mov	r0, r3
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE65:
	.size	srand, .-srand
	.align	2
	.global	sysconf
	.syntax unified
	.thumb
	.thumb_func
	.type	sysconf, %function
sysconf:
.LFB66:
	.loc 1 1066 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 1068 0
	mvn	r3, #1
	.loc 1 1069 0
	mov	r0, r3
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE66:
	.size	sysconf, .-sysconf
	.align	2
	.global	rand
	.syntax unified
	.thumb
	.thumb_func
	.type	rand, %function
rand:
.LFB67:
	.loc 1 1072 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 1073 0
	movw	r3, #:lower16:m_z
	movt	r3, #:upper16:m_z
	ldr	r3, [r3]
	uxth	r3, r3
	movw	r2, #36969
	mul	r2, r2, r3
	movw	r3, #:lower16:m_z
	movt	r3, #:upper16:m_z
	ldr	r3, [r3]
	asrs	r3, r3, #16
	add	r2, r2, r3
	movw	r3, #:lower16:m_z
	movt	r3, #:upper16:m_z
	str	r2, [r3]
	.loc 1 1074 0
	movw	r3, #:lower16:m_w
	movt	r3, #:upper16:m_w
	ldr	r3, [r3]
	uxth	r3, r3
	movw	r2, #18000
	mul	r2, r2, r3
	movw	r3, #:lower16:m_w
	movt	r3, #:upper16:m_w
	ldr	r3, [r3]
	asrs	r3, r3, #16
	add	r2, r2, r3
	movw	r3, #:lower16:m_w
	movt	r3, #:upper16:m_w
	str	r2, [r3]
	.loc 1 1075 0
	movw	r3, #:lower16:m_z
	movt	r3, #:upper16:m_z
	ldr	r3, [r3]
	lsls	r2, r3, #16
	movw	r3, #:lower16:m_w
	movt	r3, #:upper16:m_w
	ldr	r3, [r3]
	add	r3, r3, r2
	str	r3, [r7, #4]
	.loc 1 1076 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bge	.L322
	.loc 1 1077 0
	ldr	r3, [r7, #4]
	negs	r3, r3
	str	r3, [r7, #4]
.L322:
	.loc 1 1079 0
	ldr	r3, [r7, #4]
	.loc 1 1080 0
	mov	r0, r3
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE67:
	.size	rand, .-rand
	.align	2
	.global	write
	.syntax unified
	.thumb
	.thumb_func
	.type	write, %function
write:
.LFB68:
	.loc 1 1084 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 1 1085 0
	movs	r3, #0
	.loc 1 1086 0
	mov	r0, r3
	adds	r7, r7, #20
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE68:
	.size	write, .-write
	.align	2
	.global	read
	.syntax unified
	.thumb
	.thumb_func
	.type	read, %function
read:
.LFB69:
	.loc 1 1090 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 1 1091 0
	movs	r3, #0
	.loc 1 1092 0
	mov	r0, r3
	adds	r7, r7, #20
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE69:
	.size	read, .-read
	.align	2
	.global	lseek
	.syntax unified
	.thumb
	.thumb_func
	.type	lseek, %function
lseek:
.LFB70:
	.loc 1 1095 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 1096 0
	movs	r3, #0
	.loc 1 1097 0
	mov	r0, r3
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE70:
	.size	lseek, .-lseek
	.align	2
	.global	__assert_fail
	.syntax unified
	.thumb
	.thumb_func
	.type	__assert_fail, %function
__assert_fail:
.LFB71:
	.loc 1 1100 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 1 1101 0
	movs	r0, #126
	bl	exit
	.loc 1 1102 0
	nop
	adds	r7, r7, #16
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE71:
	.size	__assert_fail, .-__assert_fail
	.align	2
	.global	__assert_func
	.syntax unified
	.thumb
	.thumb_func
	.type	__assert_func, %function
__assert_func:
.LFB72:
	.loc 1 1105 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 1 1106 0
	movs	r0, #126
	bl	exit
	.loc 1 1107 0
	nop
	adds	r7, r7, #16
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE72:
	.size	__assert_func, .-__assert_func
	.global	hex32_table
	.section	.rodata
	.align	2
	.type	hex32_table, %object
	.size	hex32_table, 32
hex32_table:
	.word	1
	.word	16
	.word	256
	.word	4096
	.word	65536
	.word	1048576
	.word	16777216
	.word	268435456
	.global	hex64_table
	.align	3
	.type	hex64_table, %object
	.size	hex64_table, 128
hex64_table:
	.word	1
	.word	0
	.word	16
	.word	0
	.word	256
	.word	0
	.word	4096
	.word	0
	.word	65536
	.word	0
	.word	1048576
	.word	0
	.word	16777216
	.word	0
	.word	268435456
	.word	0
	.word	0
	.word	1
	.word	0
	.word	16
	.word	0
	.word	256
	.word	0
	.word	4096
	.word	0
	.word	65536
	.word	0
	.word	1048576
	.word	0
	.word	16777216
	.word	0
	.word	268435456
	.global	dec32_table
	.align	2
	.type	dec32_table, %object
	.size	dec32_table, 40
dec32_table:
	.word	1
	.word	10
	.word	100
	.word	1000
	.word	10000
	.word	100000
	.word	1000000
	.word	10000000
	.word	100000000
	.word	1000000000
	.global	dec64_table
	.align	3
	.type	dec64_table, %object
	.size	dec64_table, 160
dec64_table:
	.word	1
	.word	0
	.word	10
	.word	0
	.word	100
	.word	0
	.word	1000
	.word	0
	.word	10000
	.word	0
	.word	100000
	.word	0
	.word	1000000
	.word	0
	.word	10000000
	.word	0
	.word	100000000
	.word	0
	.word	1000000000
	.word	0
	.word	1410065408
	.word	2
	.word	1215752192
	.word	23
	.word	-727379968
	.word	232
	.word	1316134912
	.word	2328
	.word	276447232
	.word	23283
	.word	-1530494976
	.word	232830
	.word	1874919424
	.word	2328306
	.word	1569325056
	.word	23283064
	.word	-1486618624
	.word	232830643
	.word	-1981284352
	.word	-1966660860
	.align	3
	.type	bin_exponents_table, %object
	.size	bin_exponents_table, 48
bin_exponents_table:
	.word	0
	.word	1076101120
	.word	0
	.word	1079574528
	.word	0
	.word	1086556160
	.word	0
	.word	1100470148
	.word	937459712
	.word	1128383353
	.word	3037031959
	.word	1184086197
	.align	3
	.type	bin_fracs_table, %object
	.size	bin_fracs_table, 48
bin_fracs_table:
	.word	2576980378
	.word	1069128089
	.word	1202590843
	.word	1065646817
	.word	3944497965
	.word	1058682594
	.word	3794832442
	.word	1044740494
	.word	2547550652
	.word	1016910514
	.word	3584599859
	.word	961148451
	.global	__aeabi_dcmpgt
	.global	__aeabi_dcmple
	.global	__aeabi_d2iz
	.text
	.align	2
	.global	putdouble
	.syntax unified
	.thumb
	.thumb_func
	.type	putdouble, %function
putdouble:
.LFB73:
	.loc 1 1195 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #92
	.cfi_def_cfa_offset 112
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	strd	r2, [r7]
	.loc 1 1196 0
	mov	r2, #0
	mov	r3, #0
	ldrd	r0, [r7]
	bl	__aeabi_dcmplt
	mov	r3, r0
	cmp	r3, #0
	beq	.L333
	.loc 1 1198 0
	ldr	r3, [r7]
	str	r3, [r7]
	ldr	r3, [r7, #4]
	eor	r3, r3, #-2147483648
	str	r3, [r7, #4]
	.loc 1 1199 0
	movs	r0, #45
	bl	pfputc
.L333:
	.loc 1 1206 0
	ldrd	r3, [r7]
	strd	r3, [r7, #64]
	.loc 1 1207 0
	ldrd	r3, [r7, #64]
	lsrs	r5, r4, #20
	movs	r6, #0
	mov	r3, r5
	ubfx	r3, r3, #0, #11
	str	r3, [r7, #44]
	.loc 1 1208 0
	ldrd	r3, [r7, #64]
	str	r3, [r7, #48]
	.loc 1 1211 0
	ldr	r3, [r7, #44]
	movw	r2, #2047
	cmp	r3, r2
	bne	.L335
	.loc 1 1213 0
	ldr	r3, [r7, #48]
	cmp	r3, #0
	bne	.L336
	.loc 1 1215 0
	movs	r0, #73
	bl	pfputc
	.loc 1 1216 0
	movs	r0, #110
	bl	pfputc
	.loc 1 1217 0
	movs	r0, #102
	bl	pfputc
	.loc 1 1225 0
	b	.L332
.L336:
	.loc 1 1221 0
	movs	r0, #78
	bl	pfputc
	.loc 1 1222 0
	movs	r0, #97
	bl	pfputc
	.loc 1 1223 0
	movs	r0, #78
	bl	pfputc
	.loc 1 1225 0
	b	.L332
.L335:
	.loc 1 1228 0
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.L339
	.loc 1 1230 0
	movs	r0, #48
	bl	pfputc
	.loc 1 1231 0
	movs	r0, #46
	bl	pfputc
	.loc 1 1232 0
	movs	r0, #48
	bl	pfputc
	.loc 1 1233 0
	b	.L332
.L339:
	.loc 1 1236 0
	movs	r3, #0
	str	r3, [r7, #16]
	.loc 1 1237 0
	movs	r3, #32
	str	r3, [r7, #24]
	.loc 1 1238 0
	movs	r3, #7
	str	r3, [r7, #52]
	.loc 1 1239 0
	movw	r3, #:lower16:dec32_table
	movt	r3, #:upper16:dec32_table
	ldr	r2, [r7, #52]
	ldr	r3, [r3, r2, lsl #2]
	str	r3, [r7, #56]
	.loc 1 1240 0
	ldr	r3, [r7, #52]
	adds	r2, r3, #1
	movw	r3, #:lower16:dec32_table
	movt	r3, #:upper16:dec32_table
	ldr	r3, [r3, r2, lsl #2]
	str	r3, [r7, #60]
	.loc 1 1241 0
	ldr	r0, [r7, #56]
	bl	__aeabi_i2d
	ldrd	r2, [r7]
	bl	__aeabi_dcmpgt
	mov	r3, r0
	cmp	r3, #0
	beq	.L368
	.loc 1 1243 0
	movs	r3, #5
	str	r3, [r7, #20]
	movs	r3, #32
	str	r3, [r7, #24]
	b	.L342
.L345:
.LBB21:
	.loc 1 1245 0
	movw	r3, #:lower16:bin_exponents_table
	movt	r3, #:upper16:bin_exponents_table
	ldr	r2, [r7, #20]
	lsls	r2, r2, #3
	add	r3, r3, r2
	ldrd	r0, [r3]
	ldrd	r2, [r7]
	bl	__aeabi_dmul
	mov	r3, r0
	mov	r4, r1
	strd	r3, [r7, #72]
	.loc 1 1246 0
	ldr	r0, [r7, #60]
	bl	__aeabi_i2d
	ldrd	r2, [r7, #72]
	bl	__aeabi_dcmpgt
	mov	r3, r0
	cmp	r3, #0
	beq	.L343
	.loc 1 1248 0
	ldrd	r3, [r7, #72]
	strd	r3, [r7]
	.loc 1 1249 0
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #24]
	subs	r3, r2, r3
	str	r3, [r7, #16]
.L343:
.LBE21:
	.loc 1 1243 0 discriminator 2
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	str	r3, [r7, #20]
	ldr	r3, [r7, #24]
	lsrs	r3, r3, #1
	str	r3, [r7, #24]
.L342:
	.loc 1 1243 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L345
	b	.L346
.L368:
	.loc 1 1255 0 is_stmt 1
	movs	r3, #5
	str	r3, [r7, #20]
	movs	r3, #32
	str	r3, [r7, #24]
	b	.L347
.L350:
.LBB22:
	.loc 1 1257 0
	movw	r3, #:lower16:bin_fracs_table
	movt	r3, #:upper16:bin_fracs_table
	ldr	r2, [r7, #20]
	lsls	r2, r2, #3
	add	r3, r3, r2
	ldrd	r0, [r3]
	ldrd	r2, [r7]
	bl	__aeabi_dmul
	mov	r3, r0
	mov	r4, r1
	strd	r3, [r7, #80]
	.loc 1 1258 0
	ldr	r0, [r7, #56]
	bl	__aeabi_i2d
	ldrd	r2, [r7, #80]
	bl	__aeabi_dcmple
	mov	r3, r0
	cmp	r3, #0
	beq	.L348
	.loc 1 1260 0
	ldrd	r3, [r7, #80]
	strd	r3, [r7]
	.loc 1 1261 0
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	str	r3, [r7, #16]
.L348:
.LBE22:
	.loc 1 1255 0 discriminator 2
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	str	r3, [r7, #20]
	ldr	r3, [r7, #24]
	lsrs	r3, r3, #1
	str	r3, [r7, #24]
.L347:
	.loc 1 1255 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L350
.L346:
	.loc 1 1265 0 is_stmt 1
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #16]
	.loc 1 1266 0
	ldrd	r0, [r7]
	bl	__aeabi_d2iz
	mov	r3, r0
	str	r3, [r7, #28]
	.loc 1 1269 0
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bgt	.L351
	.loc 1 1269 0 is_stmt 0 discriminator 2
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bge	.L352
.L351:
	.loc 1 1269 0 discriminator 3
	movs	r3, #1
	str	r3, [r7, #12]
.L352:
	.loc 1 1271 0 is_stmt 1
	ldr	r3, [r7, #52]
	str	r3, [r7, #32]
	.loc 1 1272 0
	movs	r3, #0
	str	r3, [r7, #36]
	.loc 1 1273 0
	ldr	r3, [r7, #52]
	str	r3, [r7, #32]
	b	.L353
.L361:
.LBB23:
	.loc 1 1275 0
	movs	r3, #0
	str	r3, [r7, #40]
	.loc 1 1276 0
	b	.L354
.L355:
	.loc 1 1278 0
	movw	r3, #:lower16:dec32_table
	movt	r3, #:upper16:dec32_table
	ldr	r2, [r7, #32]
	ldr	r3, [r3, r2, lsl #2]
	ldr	r2, [r7, #28]
	subs	r3, r2, r3
	str	r3, [r7, #28]
	.loc 1 1279 0
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #40]
.L354:
	.loc 1 1276 0
	movw	r3, #:lower16:dec32_table
	movt	r3, #:upper16:dec32_table
	ldr	r2, [r7, #32]
	ldr	r2, [r3, r2, lsl #2]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	ble	.L355
	.loc 1 1281 0
	ldr	r3, [r7, #40]
	adds	r3, r3, #48
	mov	r0, r3
	bl	pfputc
	.loc 1 1282 0
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L356
	.loc 1 1282 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L369
.L356:
	.loc 1 1283 0 is_stmt 1
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L358
	.loc 1 1283 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #16]
	negs	r3, r3
	b	.L359
.L358:
	.loc 1 1283 0 discriminator 2
	movs	r3, #0
.L359:
	.loc 1 1283 0 discriminator 4
	ldr	r2, [r7, #52]
	add	r2, r2, r3
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bne	.L360
	.loc 1 1285 0 is_stmt 1
	movs	r0, #46
	bl	pfputc
	.loc 1 1286 0
	movs	r3, #1
	str	r3, [r7, #36]
.L360:
.LBE23:
	.loc 1 1273 0 discriminator 2
	ldr	r3, [r7, #32]
	subs	r3, r3, #1
	str	r3, [r7, #32]
.L353:
	.loc 1 1273 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bge	.L361
	b	.L357
.L369:
.LBB24:
	.loc 1 1282 0 is_stmt 1
	nop
.L357:
.LBE24:
	.loc 1 1289 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L332
	.loc 1 1291 0
	movs	r0, #101
	bl	pfputc
	.loc 1 1292 0
	ldr	r2, [r7, #16]
	movs	r3, #1
	movs	r1, #1
	movs	r0, #0
	bl	putdec32
.L332:
	.loc 1 1294 0
	adds	r7, r7, #92
	.cfi_def_cfa_offset 20
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
	.cfi_endproc
.LFE73:
	.size	putdouble, .-putdouble
	.align	2
	.global	putdec64
	.syntax unified
	.thumb
	.thumb_func
	.type	putdec64, %function
putdec64:
.LFB74:
	.loc 1 1298 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #36
	.cfi_def_cfa_offset 48
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	strd	r2, [r7]
	.loc 1 1300 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L371
	.loc 1 1300 0 is_stmt 0 discriminator 1
	movs	r3, #48
	b	.L372
.L371:
	.loc 1 1300 0 discriminator 2
	movs	r3, #32
.L372:
	.loc 1 1300 0 discriminator 4
	strb	r3, [r7, #22]
	.loc 1 1301 0 is_stmt 1 discriminator 4
	movs	r3, #0
	strb	r3, [r7, #21]
	.loc 1 1302 0 discriminator 4
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L373
	.loc 1 1302 0 is_stmt 0 discriminator 1
	ldrd	r3, [r7]
	cmp	r3, #0
	sbcs	r3, r4, #0
	bge	.L373
	.loc 1 1304 0 is_stmt 1
	movs	r0, #45
	bl	pfputc
	.loc 1 1305 0
	ldr	r3, [r7, #48]
	subs	r3, r3, #1
	str	r3, [r7, #48]
	.loc 1 1306 0
	ldrd	r3, [r7]
	rsbs	r3, r3, #0
	sbc	r4, r4, r4, lsl #1
	strd	r3, [r7]
.L373:
	.loc 1 1308 0
	movs	r3, #0
	str	r3, [r7, #24]
.L377:
	.loc 1 1310 0
	ldr	r3, [r7, #24]
	cmp	r3, #19
	beq	.L389
	.loc 1 1311 0
	movw	r3, #:lower16:dec64_table
	movt	r3, #:upper16:dec64_table
	ldr	r2, [r7, #24]
	lsls	r2, r2, #3
	add	r3, r3, r2
	ldrd	r3, [r3]
	ldrd	r1, [r7]
	cmp	r2, r4
	it	eq
	cmpeq	r1, r3
	bcs	.L376
	.loc 1 1311 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #24]
	subs	r3, r3, #1
	str	r3, [r7, #24]
	b	.L375
.L376:
	.loc 1 1308 0 is_stmt 1
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
	.loc 1 1312 0
	b	.L377
.L389:
	.loc 1 1310 0
	nop
.L375:
	.loc 1 1313 0
	ldr	r3, [r7, #48]
	subs	r3, r3, #1
	str	r3, [r7, #48]
	.loc 1 1314 0
	b	.L378
.L379:
	.loc 1 1314 0 is_stmt 0 discriminator 2
	ldrb	r3, [r7, #22]	@ zero_extendqisi2
	mov	r0, r3
	bl	pfputc
	ldr	r3, [r7, #48]
	subs	r3, r3, #1
	str	r3, [r7, #48]
.L378:
	.loc 1 1314 0 discriminator 1
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bgt	.L379
	.loc 1 1315 0 is_stmt 1
	b	.L380
.L388:
.LBB25:
	.loc 1 1317 0
	movs	r3, #0
	str	r3, [r7, #28]
	.loc 1 1318 0
	b	.L381
.L382:
	.loc 1 1320 0
	movw	r3, #:lower16:dec64_table
	movt	r3, #:upper16:dec64_table
	ldr	r2, [r7, #24]
	lsls	r2, r2, #3
	add	r3, r3, r2
	ldrd	r3, [r3]
	ldrd	r1, [r7]
	subs	r3, r1, r3
	sbc	r4, r2, r4
	strd	r3, [r7]
	.loc 1 1321 0
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L381:
	.loc 1 1318 0
	movw	r3, #:lower16:dec64_table
	movt	r3, #:upper16:dec64_table
	ldr	r2, [r7, #24]
	lsls	r2, r2, #3
	add	r3, r3, r2
	ldrd	r3, [r3]
	ldrd	r1, [r7]
	cmp	r2, r4
	it	eq
	cmpeq	r1, r3
	bcs	.L382
	.loc 1 1323 0
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L383
	.loc 1 1323 0 is_stmt 0 discriminator 1
	movs	r3, #1
	strb	r3, [r7, #21]
.L383:
	.loc 1 1324 0 is_stmt 1
	ldrb	r3, [r7, #21]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L384
	.loc 1 1324 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L385
.L384:
.LBB26:
	.loc 1 1326 0 is_stmt 1
	ldr	r3, [r7, #28]
	cmp	r3, #9
	ble	.L386
	.loc 1 1326 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #28]
	uxtb	r3, r3
	adds	r3, r3, #55
	uxtb	r3, r3
	b	.L387
.L386:
	.loc 1 1326 0 discriminator 2
	ldr	r3, [r7, #28]
	uxtb	r3, r3
	adds	r3, r3, #48
	uxtb	r3, r3
.L387:
	.loc 1 1326 0 discriminator 4
	strb	r3, [r7, #23]
	.loc 1 1327 0 is_stmt 1 discriminator 4
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	mov	r0, r3
	bl	pfputc
.L385:
.LBE26:
	.loc 1 1329 0
	ldr	r3, [r7, #24]
	subs	r3, r3, #1
	str	r3, [r7, #24]
.L380:
.LBE25:
	.loc 1 1315 0
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bge	.L388
	.loc 1 1331 0
	nop
	adds	r7, r7, #36
	.cfi_def_cfa_offset 12
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r7, pc}
	.cfi_endproc
.LFE74:
	.size	putdec64, .-putdec64
	.align	2
	.global	puthex64
	.syntax unified
	.thumb
	.thumb_func
	.type	puthex64, %function
puthex64:
.LFB75:
	.loc 1 1334 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #36
	.cfi_def_cfa_offset 48
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	strd	r2, [r7]
	.loc 1 1336 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L391
	.loc 1 1336 0 is_stmt 0 discriminator 1
	movs	r3, #48
	b	.L392
.L391:
	.loc 1 1336 0 discriminator 2
	movs	r3, #32
.L392:
	.loc 1 1336 0 discriminator 4
	strb	r3, [r7, #22]
	.loc 1 1337 0 is_stmt 1 discriminator 4
	movs	r3, #0
	strb	r3, [r7, #21]
	.loc 1 1338 0 discriminator 4
	movs	r3, #0
	str	r3, [r7, #24]
.L396:
	.loc 1 1340 0
	ldr	r3, [r7, #24]
	cmp	r3, #15
	beq	.L408
	.loc 1 1341 0
	movw	r3, #:lower16:hex64_table
	movt	r3, #:upper16:hex64_table
	ldr	r2, [r7, #24]
	lsls	r2, r2, #3
	add	r3, r3, r2
	ldrd	r3, [r3]
	ldrd	r1, [r7]
	cmp	r2, r4
	it	eq
	cmpeq	r1, r3
	bcs	.L395
	.loc 1 1341 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #24]
	subs	r3, r3, #1
	str	r3, [r7, #24]
	b	.L394
.L395:
	.loc 1 1338 0 is_stmt 1
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
	.loc 1 1342 0
	b	.L396
.L408:
	.loc 1 1340 0
	nop
.L394:
	.loc 1 1343 0
	ldr	r3, [r7, #48]
	subs	r3, r3, #1
	str	r3, [r7, #48]
	.loc 1 1344 0
	b	.L397
.L398:
	.loc 1 1344 0 is_stmt 0 discriminator 2
	ldrb	r3, [r7, #22]	@ zero_extendqisi2
	mov	r0, r3
	bl	pfputc
	ldr	r3, [r7, #48]
	subs	r3, r3, #1
	str	r3, [r7, #48]
.L397:
	.loc 1 1344 0 discriminator 1
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bgt	.L398
	.loc 1 1345 0 is_stmt 1
	b	.L399
.L407:
.LBB27:
	.loc 1 1347 0
	movs	r3, #0
	str	r3, [r7, #28]
	.loc 1 1348 0
	b	.L400
.L401:
	.loc 1 1350 0
	movw	r3, #:lower16:hex64_table
	movt	r3, #:upper16:hex64_table
	ldr	r2, [r7, #24]
	lsls	r2, r2, #3
	add	r3, r3, r2
	ldrd	r3, [r3]
	ldrd	r1, [r7]
	subs	r3, r1, r3
	sbc	r4, r2, r4
	strd	r3, [r7]
	.loc 1 1351 0
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L400:
	.loc 1 1348 0
	movw	r3, #:lower16:hex64_table
	movt	r3, #:upper16:hex64_table
	ldr	r2, [r7, #24]
	lsls	r2, r2, #3
	add	r3, r3, r2
	ldrd	r3, [r3]
	ldrd	r1, [r7]
	cmp	r2, r4
	it	eq
	cmpeq	r1, r3
	bcs	.L401
	.loc 1 1353 0
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L402
	.loc 1 1353 0 is_stmt 0 discriminator 1
	movs	r3, #1
	strb	r3, [r7, #21]
.L402:
	.loc 1 1354 0 is_stmt 1
	ldrb	r3, [r7, #21]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L403
	.loc 1 1354 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L404
.L403:
.LBB28:
	.loc 1 1356 0 is_stmt 1
	ldr	r3, [r7, #28]
	cmp	r3, #9
	ble	.L405
	.loc 1 1356 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #28]
	uxtb	r3, r3
	adds	r3, r3, #55
	uxtb	r3, r3
	b	.L406
.L405:
	.loc 1 1356 0 discriminator 2
	ldr	r3, [r7, #28]
	uxtb	r3, r3
	adds	r3, r3, #48
	uxtb	r3, r3
.L406:
	.loc 1 1356 0 discriminator 4
	strb	r3, [r7, #23]
	.loc 1 1357 0 is_stmt 1 discriminator 4
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	mov	r0, r3
	bl	pfputc
.L404:
.LBE28:
.LBE27:
	.loc 1 1345 0
	ldr	r3, [r7, #24]
	subs	r3, r3, #1
	str	r3, [r7, #24]
.L399:
	.loc 1 1345 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bge	.L407
	.loc 1 1360 0 is_stmt 1
	nop
	adds	r7, r7, #36
	.cfi_def_cfa_offset 12
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r7, pc}
	.cfi_endproc
.LFE75:
	.size	puthex64, .-puthex64
	.align	2
	.global	putdec32
	.syntax unified
	.thumb
	.thumb_func
	.type	putdec32, %function
putdec32:
.LFB76:
	.loc 1 1363 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #32
	.cfi_def_cfa_offset 40
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	.loc 1 1365 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L410
	.loc 1 1365 0 is_stmt 0 discriminator 1
	movs	r3, #48
	b	.L411
.L410:
	.loc 1 1365 0 discriminator 2
	movs	r3, #32
.L411:
	.loc 1 1365 0 discriminator 4
	strb	r3, [r7, #22]
	.loc 1 1366 0 is_stmt 1 discriminator 4
	movs	r3, #0
	strb	r3, [r7, #21]
	.loc 1 1367 0 discriminator 4
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L412
	.loc 1 1367 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bge	.L412
	.loc 1 1369 0 is_stmt 1
	movs	r0, #45
	bl	pfputc
	.loc 1 1370 0
	ldr	r3, [r7]
	subs	r3, r3, #1
	str	r3, [r7]
	.loc 1 1371 0
	ldr	r3, [r7, #4]
	negs	r3, r3
	str	r3, [r7, #4]
.L412:
	.loc 1 1373 0
	movs	r3, #0
	str	r3, [r7, #24]
.L417:
	.loc 1 1375 0
	ldr	r3, [r7, #24]
	cmp	r3, #9
	beq	.L429
	.loc 1 1376 0
	movw	r3, #:lower16:dec32_table
	movt	r3, #:upper16:dec32_table
	ldr	r2, [r7, #24]
	ldr	r3, [r3, r2, lsl #2]
	mov	r2, r3
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L415
	.loc 1 1376 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #24]
	cmp	r3, #0
	ble	.L430
	.loc 1 1376 0 discriminator 2
	ldr	r3, [r7, #24]
	subs	r3, r3, #1
	str	r3, [r7, #24]
	b	.L430
.L415:
	.loc 1 1373 0 is_stmt 1
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
	.loc 1 1377 0
	b	.L417
.L429:
	.loc 1 1375 0
	nop
	b	.L414
.L430:
	.loc 1 1376 0
	nop
.L414:
	.loc 1 1378 0
	ldr	r3, [r7]
	subs	r3, r3, #1
	str	r3, [r7]
	.loc 1 1379 0
	b	.L418
.L419:
	.loc 1 1379 0 is_stmt 0 discriminator 2
	ldrb	r3, [r7, #22]	@ zero_extendqisi2
	mov	r0, r3
	bl	pfputc
	ldr	r3, [r7]
	subs	r3, r3, #1
	str	r3, [r7]
.L418:
	.loc 1 1379 0 discriminator 1
	ldr	r2, [r7]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bgt	.L419
	.loc 1 1380 0 is_stmt 1
	b	.L420
.L428:
.LBB29:
	.loc 1 1382 0
	movs	r3, #0
	str	r3, [r7, #28]
	.loc 1 1383 0
	b	.L421
.L422:
	.loc 1 1385 0
	movw	r3, #:lower16:dec32_table
	movt	r3, #:upper16:dec32_table
	ldr	r2, [r7, #24]
	ldr	r3, [r3, r2, lsl #2]
	mov	r2, r3
	ldr	r3, [r7, #4]
	subs	r3, r3, r2
	str	r3, [r7, #4]
	.loc 1 1386 0
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L421:
	.loc 1 1383 0
	movw	r3, #:lower16:dec32_table
	movt	r3, #:upper16:dec32_table
	ldr	r2, [r7, #24]
	ldr	r3, [r3, r2, lsl #2]
	mov	r2, r3
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L422
	.loc 1 1388 0
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L423
	.loc 1 1388 0 is_stmt 0 discriminator 1
	movs	r3, #1
	strb	r3, [r7, #21]
.L423:
	.loc 1 1389 0 is_stmt 1
	ldrb	r3, [r7, #21]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L424
	.loc 1 1389 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L425
.L424:
.LBB30:
	.loc 1 1391 0 is_stmt 1
	ldr	r3, [r7, #28]
	cmp	r3, #9
	ble	.L426
	.loc 1 1391 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #28]
	uxtb	r3, r3
	adds	r3, r3, #55
	uxtb	r3, r3
	b	.L427
.L426:
	.loc 1 1391 0 discriminator 2
	ldr	r3, [r7, #28]
	uxtb	r3, r3
	adds	r3, r3, #48
	uxtb	r3, r3
.L427:
	.loc 1 1391 0 discriminator 4
	strb	r3, [r7, #23]
	.loc 1 1392 0 is_stmt 1 discriminator 4
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	mov	r0, r3
	bl	pfputc
.L425:
.LBE30:
.LBE29:
	.loc 1 1380 0
	ldr	r3, [r7, #24]
	subs	r3, r3, #1
	str	r3, [r7, #24]
.L420:
	.loc 1 1380 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bge	.L428
	.loc 1 1395 0 is_stmt 1
	nop
	adds	r7, r7, #32
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE76:
	.size	putdec32, .-putdec32
	.align	2
	.global	puthex32
	.syntax unified
	.thumb
	.thumb_func
	.type	puthex32, %function
puthex32:
.LFB77:
	.loc 1 1398 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #32
	.cfi_def_cfa_offset 40
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 1 1400 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L432
	.loc 1 1400 0 is_stmt 0 discriminator 1
	movs	r3, #48
	b	.L433
.L432:
	.loc 1 1400 0 discriminator 2
	movs	r3, #32
.L433:
	.loc 1 1400 0 discriminator 4
	strb	r3, [r7, #22]
	.loc 1 1401 0 is_stmt 1 discriminator 4
	movs	r3, #0
	strb	r3, [r7, #21]
	.loc 1 1402 0 discriminator 4
	movs	r3, #0
	str	r3, [r7, #24]
.L437:
	.loc 1 1404 0
	ldr	r3, [r7, #24]
	cmp	r3, #7
	beq	.L449
	.loc 1 1405 0
	movw	r3, #:lower16:hex32_table
	movt	r3, #:upper16:hex32_table
	ldr	r2, [r7, #24]
	ldr	r2, [r3, r2, lsl #2]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bls	.L436
	.loc 1 1405 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #24]
	subs	r3, r3, #1
	str	r3, [r7, #24]
	b	.L435
.L436:
	.loc 1 1402 0 is_stmt 1
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
	.loc 1 1406 0
	b	.L437
.L449:
	.loc 1 1404 0
	nop
.L435:
	.loc 1 1407 0
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	str	r3, [r7, #4]
	.loc 1 1408 0
	b	.L438
.L439:
	.loc 1 1408 0 is_stmt 0 discriminator 2
	ldrb	r3, [r7, #22]	@ zero_extendqisi2
	mov	r0, r3
	bl	pfputc
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	str	r3, [r7, #4]
.L438:
	.loc 1 1408 0 discriminator 1
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bgt	.L439
	.loc 1 1409 0 is_stmt 1
	b	.L440
.L448:
.LBB31:
	.loc 1 1411 0
	movs	r3, #0
	str	r3, [r7, #28]
	.loc 1 1412 0
	b	.L441
.L442:
	.loc 1 1414 0
	movw	r3, #:lower16:hex32_table
	movt	r3, #:upper16:hex32_table
	ldr	r2, [r7, #24]
	ldr	r3, [r3, r2, lsl #2]
	ldr	r2, [r7, #8]
	subs	r3, r2, r3
	str	r3, [r7, #8]
	.loc 1 1415 0
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L441:
	.loc 1 1412 0
	movw	r3, #:lower16:hex32_table
	movt	r3, #:upper16:hex32_table
	ldr	r2, [r7, #24]
	ldr	r2, [r3, r2, lsl #2]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bls	.L442
	.loc 1 1417 0
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L443
	.loc 1 1417 0 is_stmt 0 discriminator 1
	movs	r3, #1
	strb	r3, [r7, #21]
.L443:
	.loc 1 1418 0 is_stmt 1
	ldrb	r3, [r7, #21]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L444
	.loc 1 1418 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L445
.L444:
.LBB32:
	.loc 1 1420 0 is_stmt 1
	ldr	r3, [r7, #28]
	cmp	r3, #9
	ble	.L446
	.loc 1 1420 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #28]
	uxtb	r3, r3
	adds	r3, r3, #55
	uxtb	r3, r3
	b	.L447
.L446:
	.loc 1 1420 0 discriminator 2
	ldr	r3, [r7, #28]
	uxtb	r3, r3
	adds	r3, r3, #48
	uxtb	r3, r3
.L447:
	.loc 1 1420 0 discriminator 4
	strb	r3, [r7, #23]
	.loc 1 1421 0 is_stmt 1 discriminator 4
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	mov	r0, r3
	bl	pfputc
.L445:
.LBE32:
.LBE31:
	.loc 1 1409 0
	ldr	r3, [r7, #24]
	subs	r3, r3, #1
	str	r3, [r7, #24]
.L440:
	.loc 1 1409 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bge	.L448
	.loc 1 1424 0 is_stmt 1
	nop
	adds	r7, r7, #32
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE77:
	.size	puthex32, .-puthex32
	.align	2
	.syntax unified
	.thumb
	.thumb_func
	.type	_getopt_initialize, %function
_getopt_initialize:
.LFB78:
	.loc 1 1426 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 1427 0
	movw	r3, #:lower16:optind
	movt	r3, #:upper16:optind
	movs	r2, #1
	str	r2, [r3]
	.loc 1 1429 0
	movw	r3, #:lower16:nextchar
	movt	r3, #:upper16:nextchar
	movs	r2, #0
	str	r2, [r3]
	.loc 1 1431 0
	ldr	r3, [r7, #4]
	.loc 1 1432 0
	mov	r0, r3
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE78:
	.size	_getopt_initialize, .-_getopt_initialize
	.section	.rodata
	.align	2
.LC2:
	.ascii	"%s: invalid option %c\012\000"
	.align	2
.LC3:
	.ascii	"%s: option requires an argument -- %c\012\000"
	.text
	.align	2
	.global	getopt
	.syntax unified
	.thumb
	.thumb_func
	.type	getopt, %function
getopt:
.LFB79:
	.loc 1 1434 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 1 1435 0
	movw	r3, #:lower16:optarg
	movt	r3, #:upper16:optarg
	movs	r2, #0
	str	r2, [r3]
	.loc 1 1436 0
	movw	r3, #:lower16:optind
	movt	r3, #:upper16:optind
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L453
	.loc 1 1437 0
	ldr	r0, [r7, #4]
	bl	_getopt_initialize
	str	r0, [r7, #4]
.L453:
	.loc 1 1439 0
	movw	r3, #:lower16:nextchar
	movt	r3, #:upper16:nextchar
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L454
	.loc 1 1439 0 is_stmt 0 discriminator 1
	movw	r3, #:lower16:nextchar
	movt	r3, #:upper16:nextchar
	ldr	r3, [r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L455
.L454:
	.loc 1 1440 0 is_stmt 1
	movw	r3, #:lower16:optind
	movt	r3, #:upper16:optind
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bne	.L456
	.loc 1 1441 0
	mov	r3, #-1
	b	.L457
.L456:
	.loc 1 1444 0
	movw	r3, #:lower16:optind
	movt	r3, #:upper16:optind
	ldr	r3, [r3]
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #45
	bne	.L458
	.loc 1 1444 0 is_stmt 0 discriminator 1
	movw	r3, #:lower16:optind
	movt	r3, #:upper16:optind
	ldr	r3, [r3]
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L459
.L458:
	.loc 1 1445 0 is_stmt 1
	movw	r3, #:lower16:optind
	movt	r3, #:upper16:optind
	ldr	r2, [r3]
	adds	r1, r2, #1
	movw	r3, #:lower16:optind
	movt	r3, #:upper16:optind
	str	r1, [r3]
	mov	r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r2, [r3]
	movw	r3, #:lower16:optarg
	movt	r3, #:upper16:optarg
	str	r2, [r3]
	.loc 1 1446 0
	movs	r3, #1
	b	.L457
.L459:
	.loc 1 1449 0
	movw	r3, #:lower16:optind
	movt	r3, #:upper16:optind
	ldr	r3, [r3]
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	adds	r2, r3, #1
	movw	r3, #:lower16:nextchar
	movt	r3, #:upper16:nextchar
	str	r2, [r3]
.L455:
.LBB33:
	.loc 1 1455 0
	movw	r3, #:lower16:nextchar
	movt	r3, #:upper16:nextchar
	ldr	r2, [r3]
	adds	r1, r2, #1
	movw	r3, #:lower16:nextchar
	movt	r3, #:upper16:nextchar
	str	r1, [r3]
	ldrb	r3, [r2]
	strb	r3, [r7, #19]
	.loc 1 1456 0
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	strchr
	str	r0, [r7, #20]
	.loc 1 1458 0
	movw	r3, #:lower16:nextchar
	movt	r3, #:upper16:nextchar
	ldr	r3, [r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L460
	.loc 1 1459 0
	movw	r3, #:lower16:optind
	movt	r3, #:upper16:optind
	ldr	r3, [r3]
	adds	r2, r3, #1
	movw	r3, #:lower16:optind
	movt	r3, #:upper16:optind
	str	r2, [r3]
.L460:
	.loc 1 1461 0
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L461
	.loc 1 1461 0 is_stmt 0 discriminator 1
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	cmp	r3, #58
	bne	.L462
.L461:
	.loc 1 1462 0 is_stmt 1
	movw	r3, #:lower16:opterr
	movt	r3, #:upper16:opterr
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L463
	.loc 1 1463 0
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	ldrb	r2, [r7, #19]	@ zero_extendqisi2
	mov	r1, r3
	movw	r0, #:lower16:.LC2
	movt	r0, #:upper16:.LC2
	bl	printf
.L463:
	.loc 1 1464 0
	ldrb	r2, [r7, #19]	@ zero_extendqisi2
	movw	r3, #:lower16:optopt
	movt	r3, #:upper16:optopt
	str	r2, [r3]
	.loc 1 1465 0
	movs	r3, #63
	b	.L457
.L462:
	.loc 1 1468 0
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #58
	bne	.L464
	.loc 1 1469 0
	ldr	r3, [r7, #20]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #58
	bne	.L465
	.loc 1 1470 0
	movw	r3, #:lower16:nextchar
	movt	r3, #:upper16:nextchar
	ldr	r3, [r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L466
	.loc 1 1471 0
	movw	r3, #:lower16:nextchar
	movt	r3, #:upper16:nextchar
	ldr	r2, [r3]
	movw	r3, #:lower16:optarg
	movt	r3, #:upper16:optarg
	str	r2, [r3]
	.loc 1 1472 0
	movw	r3, #:lower16:optind
	movt	r3, #:upper16:optind
	ldr	r3, [r3]
	adds	r2, r3, #1
	movw	r3, #:lower16:optind
	movt	r3, #:upper16:optind
	str	r2, [r3]
	b	.L467
.L466:
	.loc 1 1475 0
	movw	r3, #:lower16:optarg
	movt	r3, #:upper16:optarg
	movs	r2, #0
	str	r2, [r3]
.L467:
	.loc 1 1476 0
	movw	r3, #:lower16:nextchar
	movt	r3, #:upper16:nextchar
	movs	r2, #0
	str	r2, [r3]
	b	.L464
.L465:
	.loc 1 1479 0
	movw	r3, #:lower16:nextchar
	movt	r3, #:upper16:nextchar
	ldr	r3, [r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L468
	.loc 1 1480 0
	movw	r3, #:lower16:nextchar
	movt	r3, #:upper16:nextchar
	ldr	r2, [r3]
	movw	r3, #:lower16:optarg
	movt	r3, #:upper16:optarg
	str	r2, [r3]
	.loc 1 1481 0
	movw	r3, #:lower16:optind
	movt	r3, #:upper16:optind
	ldr	r3, [r3]
	adds	r2, r3, #1
	movw	r3, #:lower16:optind
	movt	r3, #:upper16:optind
	str	r2, [r3]
	b	.L469
.L468:
	.loc 1 1483 0
	movw	r3, #:lower16:optind
	movt	r3, #:upper16:optind
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bne	.L470
	.loc 1 1484 0
	movw	r3, #:lower16:opterr
	movt	r3, #:upper16:opterr
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L471
	.loc 1 1485 0
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	ldrb	r2, [r7, #19]	@ zero_extendqisi2
	mov	r1, r3
	movw	r0, #:lower16:.LC3
	movt	r0, #:upper16:.LC3
	bl	printf
.L471:
	.loc 1 1487 0
	ldrb	r2, [r7, #19]	@ zero_extendqisi2
	movw	r3, #:lower16:optopt
	movt	r3, #:upper16:optopt
	str	r2, [r3]
	.loc 1 1488 0
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #58
	bne	.L472
	.loc 1 1489 0
	movs	r3, #58
	strb	r3, [r7, #19]
	b	.L469
.L472:
	.loc 1 1491 0
	movs	r3, #63
	strb	r3, [r7, #19]
	b	.L469
.L470:
	.loc 1 1494 0
	movw	r3, #:lower16:optind
	movt	r3, #:upper16:optind
	ldr	r2, [r3]
	adds	r1, r2, #1
	movw	r3, #:lower16:optind
	movt	r3, #:upper16:optind
	str	r1, [r3]
	mov	r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r2, [r3]
	movw	r3, #:lower16:optarg
	movt	r3, #:upper16:optarg
	str	r2, [r3]
.L469:
	.loc 1 1495 0
	movw	r3, #:lower16:nextchar
	movt	r3, #:upper16:nextchar
	movs	r2, #0
	str	r2, [r3]
.L464:
	.loc 1 1498 0
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
.L457:
.LBE33:
	.loc 1 1500 0
	mov	r0, r3
	adds	r7, r7, #24
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE79:
	.size	getopt, .-getopt
	.align	2
	.global	fputs
	.syntax unified
	.thumb
	.thumb_func
	.type	fputs, %function
fputs:
.LFB80:
	.loc 1 1503 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 1505 0
	movs	r3, #0
	str	r3, [r7, #12]
	.loc 1 1507 0
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L477
	.loc 1 1508 0
	mov	r3, #-1
	b	.L476
.L479:
	.loc 1 1511 0
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L478
	.loc 1 1512 0
	ldr	r0, [r7]
	bl	__sflush
.L478:
	.loc 1 1514 0
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	adds	r1, r3, #1
	ldr	r2, [r7]
	str	r1, [r2, #4]
	ldrb	r2, [r7, #11]
	strb	r2, [r3]
	.loc 1 1515 0
	ldr	r3, [r7]
	ldr	r3, [r3]
	subs	r2, r3, #1
	ldr	r3, [r7]
	str	r2, [r3]
	.loc 1 1516 0
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L477:
	.loc 1 1510 0
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	ldrb	r3, [r3]
	strb	r3, [r7, #11]
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L479
	.loc 1 1519 0
	ldr	r3, [r7, #12]
.L476:
	.loc 1 1520 0
	mov	r0, r3
	adds	r7, r7, #16
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE80:
	.size	fputs, .-fputs
	.align	2
	.global	fflush
	.syntax unified
	.thumb
	.thumb_func
	.type	fflush, %function
fflush:
.LFB81:
	.loc 1 1522 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 1525 0
	nop
	mov	r0, r3
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE81:
	.size	fflush, .-fflush
	.align	2
	.global	gets
	.syntax unified
	.thumb
	.thumb_func
	.type	gets, %function
gets:
.LFB82:
	.loc 1 1527 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 1528 0
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	.loc 1 1530 0
	b	.L482
.L483:
	.loc 1 1531 0
	ldr	r2, [r7, #12]
	adds	r3, r2, #1
	str	r3, [r7, #12]
	movw	r3, #:lower16:stdin_addr
	movt	r3, #:upper16:stdin_addr
	ldr	r1, [r3]
	adds	r0, r1, #1
	movw	r3, #:lower16:stdin_addr
	movt	r3, #:upper16:stdin_addr
	str	r0, [r3]
	ldrb	r3, [r1]	@ zero_extendqisi2
	strb	r3, [r2]
.L482:
	.loc 1 1530 0
	movw	r3, #:lower16:stdin_addr
	movt	r3, #:upper16:stdin_addr
	ldr	r3, [r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #10
	bne	.L483
	.loc 1 1533 0
	movw	r3, #:lower16:stdin_addr
	movt	r3, #:upper16:stdin_addr
	ldr	r3, [r3]
	adds	r2, r3, #1
	movw	r3, #:lower16:stdin_addr
	movt	r3, #:upper16:stdin_addr
	str	r2, [r3]
	.loc 1 1534 0
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 1536 0
	ldr	r3, [r7, #4]
	.loc 1 1537 0
	mov	r0, r3
	adds	r7, r7, #20
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE82:
	.size	gets, .-gets
	.align	2
	.global	__srefill
	.syntax unified
	.thumb
	.thumb_func
	.type	__srefill, %function
__srefill:
.LFB83:
	.loc 1 1539 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 1540 0
	ldr	r3, [r7, #4]
	add	r2, r3, #12
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	.loc 1 1541 0
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #8]
	mov	r0, r3
	ldr	r1, [r7, #4]
	ldr	r3, [r7, #4]
	add	r2, r3, #12
	mov	r3, #1024
	bl	_syscall_refill
	mov	r3, r0
	.loc 1 1542 0
	mov	r0, r3
	adds	r7, r7, #8
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE83:
	.size	__srefill, .-__srefill
	.align	2
	.global	fgets
	.syntax unified
	.thumb
	.thumb_func
	.type	fgets, %function
fgets:
.LFB84:
	.loc 1 1544 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 40
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 1 1549 0
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L488
	.loc 1 1550 0
	movs	r3, #0
	b	.L489
.L488:
	.loc 1 1552 0
	ldr	r5, [r7, #12]
	.loc 1 1553 0
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	str	r3, [r7, #8]
	.loc 1 1554 0
	b	.L490
.L497:
	.loc 1 1558 0
	ldr	r3, [r7, #4]
	ldr	r4, [r3]
	cmp	r4, #0
	bgt	.L491
	.loc 1 1559 0
	ldr	r0, [r7, #4]
	bl	__srefill
	mov	r3, r0
	cmp	r3, #0
	beq	.L492
	.loc 1 1561 0
	ldr	r3, [r7, #12]
	cmp	r5, r3
	bne	.L498
	.loc 1 1562 0
	movs	r3, #0
	b	.L489
.L492:
	.loc 1 1565 0
	ldr	r3, [r7, #4]
	ldr	r4, [r3]
.L491:
	.loc 1 1567 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7]
	.loc 1 1575 0
	ldr	r3, [r7, #8]
	cmp	r4, r3
	ble	.L495
	.loc 1 1576 0
	ldr	r4, [r7, #8]
.L495:
	.loc 1 1577 0
	mov	r2, r4
	movs	r1, #10
	ldr	r0, [r7]
	bl	memchr
	mov	r6, r0
	.loc 1 1578 0
	cmp	r6, #0
	beq	.L496
	.loc 1 1579 0
	adds	r6, r6, #1
	mov	r2, r6
	ldr	r1, [r7]
	mov	r3, r1
	subs	r4, r2, r3
	.loc 1 1580 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	subs	r2, r3, r4
	ldr	r3, [r7, #4]
	str	r2, [r3]
	.loc 1 1581 0
	ldr	r3, [r7, #4]
	str	r6, [r3, #4]
	.loc 1 1582 0
	mov	r2, r4
	mov	r0, r5
	bl	memcpy
	.loc 1 1583 0
	mov	r3, r4
	add	r3, r3, r5
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 1584 0
	ldr	r3, [r7, #12]
	b	.L489
.L496:
	.loc 1 1586 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	subs	r2, r3, r4
	ldr	r3, [r7, #4]
	str	r2, [r3]
	.loc 1 1587 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r2, r4
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	.loc 1 1588 0
	mov	r2, r4
	ldr	r1, [r7]
	mov	r0, r5
	bl	memcpy
	.loc 1 1589 0
	mov	r3, r4
	add	r5, r5, r3
	.loc 1 1590 0
	ldr	r3, [r7, #8]
	subs	r3, r3, r4
	str	r3, [r7, #8]
.L490:
	.loc 1 1554 0
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L497
	b	.L494
.L498:
	.loc 1 1563 0
	nop
.L494:
	.loc 1 1592 0
	movs	r3, #0
	strb	r3, [r5]
	.loc 1 1593 0
	ldr	r3, [r7, #12]
.L489:
	.loc 1 1594 0
	mov	r0, r3
	adds	r7, r7, #20
	.cfi_def_cfa_offset 20
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
	.cfi_endproc
.LFE84:
	.size	fgets, .-fgets
	.align	2
	.global	fgetc
	.syntax unified
	.thumb
	.thumb_func
	.type	fgetc, %function
fgetc:
.LFB85:
	.loc 1 1596 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 1597 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L500
	.loc 1 1598 0
	ldr	r0, [r7, #4]
	bl	__srefill
.L500:
	.loc 1 1600 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	adds	r1, r3, #1
	ldr	r2, [r7, #4]
	str	r1, [r2, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #12]
	.loc 1 1601 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	subs	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3]
	.loc 1 1603 0
	ldr	r3, [r7, #12]
	.loc 1 1604 0
	mov	r0, r3
	adds	r7, r7, #16
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE85:
	.size	fgetc, .-fgetc
	.align	2
	.global	getc
	.syntax unified
	.thumb
	.thumb_func
	.type	getc, %function
getc:
.LFB86:
	.loc 1 1606 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 1607 0
	ldr	r0, [r7, #4]
	bl	fgetc
	mov	r3, r0
	.loc 1 1608 0
	mov	r0, r3
	adds	r7, r7, #8
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE86:
	.size	getc, .-getc
	.section	.rodata
	.align	2
.LC4:
	.ascii	"r\000"
	.align	2
.LC5:
	.ascii	"w\000"
	.align	2
.LC6:
	.ascii	"Only r and w modes are supported\012\000"
	.text
	.align	2
	.global	fopen
	.syntax unified
	.thumb
	.thumb_func
	.type	fopen, %function
fopen:
.LFB87:
	.loc 1 1611 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 1616 0
	movw	r1, #:lower16:.LC4
	movt	r1, #:upper16:.LC4
	ldr	r0, [r7]
	bl	strcmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L505
	.loc 1 1617 0
	movs	r3, #1
	strh	r3, [r7, #14]	@ movhi
	b	.L506
.L505:
	.loc 1 1618 0
	movw	r1, #:lower16:.LC5
	movt	r1, #:upper16:.LC5
	ldr	r0, [r7]
	bl	strcmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L507
	.loc 1 1619 0
	movs	r3, #2
	strh	r3, [r7, #14]	@ movhi
	b	.L506
.L507:
	.loc 1 1622 0
	movw	r0, #:lower16:.LC6
	movt	r0, #:upper16:.LC6
	bl	printf
	.loc 1 1623 0
	movs	r3, #0
	b	.L508
.L506:
	.loc 1 1626 0
	movw	r0, #1036
	bl	malloc
	str	r0, [r7, #16]
	.loc 1 1628 0
	ldr	r3, [r7, #16]
	movs	r2, #0
	str	r2, [r3]
	.loc 1 1629 0
	ldr	r3, [r7, #16]
	add	r2, r3, #12
	ldr	r3, [r7, #16]
	str	r2, [r3, #4]
	.loc 1 1630 0
	ldr	r3, [r7, #16]
	ldrh	r2, [r7, #14]	@ movhi
	strh	r2, [r3, #10]	@ movhi
	.loc 1 1631 0
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	_syscall_fopen
	str	r0, [r7, #20]
	.loc 1 1632 0
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bge	.L509
	.loc 1 1633 0
	ldr	r0, [r7, #16]
	bl	free
	.loc 1 1634 0
	movs	r3, #0
	b	.L508
.L509:
	.loc 1 1636 0
	ldr	r3, [r7, #20]
	uxth	r2, r3
	ldr	r3, [r7, #16]
	strh	r2, [r3, #8]	@ movhi
	.loc 1 1638 0
	ldr	r3, [r7, #16]
	ldrsh	r3, [r3, #10]
	cmp	r3, #1
	bne	.L510
	.loc 1 1639 0
	ldr	r0, [r7, #16]
	bl	__srefill
	b	.L511
.L510:
	.loc 1 1640 0
	ldr	r3, [r7, #16]
	ldrsh	r3, [r3, #10]
	cmp	r3, #2
	bne	.L511
	.loc 1 1641 0
	ldr	r3, [r7, #16]
	adds	r3, r3, #12
	mov	r1, #1024
	mov	r0, r3
	bl	bzero
	.loc 1 1642 0
	ldr	r3, [r7, #16]
	mov	r2, #1024
	str	r2, [r3]
.L511:
	.loc 1 1645 0
	ldr	r3, [r7, #16]
.L508:
	.loc 1 1646 0
	mov	r0, r3
	adds	r7, r7, #24
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE87:
	.size	fopen, .-fopen
	.align	2
	.global	fclose
	.syntax unified
	.thumb
	.thumb_func
	.type	fclose, %function
fclose:
.LFB88:
	.loc 1 1648 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 1652 0
	ldr	r0, [r7, #4]
	bl	__sflush
	.loc 1 1654 0
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #8]
	mov	r0, r3
	bl	_syscall_fclose
	str	r0, [r7, #12]
	.loc 1 1655 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L513
	.loc 1 1656 0
	ldr	r0, [r7, #4]
	bl	free
.L513:
	.loc 1 1658 0
	ldr	r3, [r7, #12]
	.loc 1 1659 0
	mov	r0, r3
	adds	r7, r7, #16
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE88:
	.size	fclose, .-fclose
	.align	2
	.syntax unified
	.thumb
	.thumb_func
	.type	__sccl, %function
__sccl:
.LFB89:
	.loc 1 1667 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6, r7}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 7, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	mov	r2, r0
	mov	r3, r1
	.loc 1 1672 0
	mov	r1, r3
	adds	r3, r1, #1
	ldrb	r1, [r1]	@ zero_extendqisi2
	mov	r5, r1
	.loc 1 1673 0
	cmp	r5, #94
	bne	.L516
	.loc 1 1674 0
	movs	r6, #1
	.loc 1 1675 0
	mov	r1, r3
	adds	r3, r1, #1
	ldrb	r1, [r1]	@ zero_extendqisi2
	mov	r5, r1
	b	.L517
.L516:
	.loc 1 1677 0
	movs	r6, #0
.L517:
	.loc 1 1679 0
	movs	r4, #0
	b	.L518
.L519:
	.loc 1 1680 0 discriminator 3
	mov	r1, r4
	add	r1, r1, r2
	uxtb	r0, r6
	strb	r0, [r1]
	.loc 1 1679 0 discriminator 3
	adds	r4, r4, #1
.L518:
	.loc 1 1679 0 is_stmt 0 discriminator 1
	cmp	r4, #255
	ble	.L519
	.loc 1 1681 0 is_stmt 1
	cmp	r5, #0
	bne	.L520
	.loc 1 1682 0
	subs	r3, r3, #1
	b	.L521
.L520:
	.loc 1 1691 0
	rsb	r6, r6, #1
.L531:
	.loc 1 1693 0
	mov	r1, r5
	add	r1, r1, r2
	uxtb	r0, r6
	strb	r0, [r1]
.L522:
	.loc 1 1695 0
	mov	r1, r3
	adds	r3, r1, #1
	ldrb	r1, [r1]	@ zero_extendqisi2
	mov	r4, r1
	.loc 1 1696 0
	cmp	r4, #45
	beq	.L524
	cmp	r4, #93
	beq	.L521
	cmp	r4, #0
	bne	.L532
	.loc 1 1698 0
	subs	r3, r3, #1
	b	.L521
.L524:
	.loc 1 1719 0
	ldrb	r1, [r3]	@ zero_extendqisi2
	mov	r4, r1
	.loc 1 1720 0
	cmp	r4, #93
	beq	.L527
	.loc 1 1720 0 is_stmt 0 discriminator 1
	cmp	r4, r5
	bge	.L528
.L527:
	.loc 1 1721 0 is_stmt 1
	movs	r5, #45
	.loc 1 1722 0
	b	.L529
.L528:
	.loc 1 1724 0
	adds	r3, r3, #1
.L530:
	.loc 1 1726 0 discriminator 1
	adds	r5, r5, #1
	mov	r1, r5
	add	r1, r1, r2
	uxtb	r0, r6
	strb	r0, [r1]
	.loc 1 1727 0 discriminator 1
	cmp	r5, r4
	blt	.L530
	.loc 1 1734 0
	b	.L522
.L532:
	.loc 1 1748 0
	mov	r5, r4
	.loc 1 1749 0
	nop
.L529:
	.loc 1 1751 0
	b	.L531
.L521:
	.loc 1 1753 0
	mov	r0, r3
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r5, r6, r7}
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE89:
	.size	__sccl, .-__sccl
	.align	2
	.global	ungetc
	.syntax unified
	.thumb
	.thumb_func
	.type	ungetc, %function
ungetc:
.LFB90:
	.loc 1 1755 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 1756 0
	ldr	r3, [r7, #4]
	uxtb	r3, r3
	str	r3, [r7, #4]
	.loc 1 1757 0
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	subs	r2, r3, #1
	ldr	r3, [r7]
	str	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #4]
	uxtb	r2, r2
	strb	r2, [r3]
	.loc 1 1758 0
	ldr	r3, [r7]
	ldr	r3, [r3]
	adds	r2, r3, #1
	ldr	r3, [r7]
	str	r2, [r3]
	.loc 1 1760 0
	ldr	r3, [r7, #4]
	.loc 1 1761 0
	mov	r0, r3
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE90:
	.size	ungetc, .-ungetc
	.align	2
	.global	fread
	.syntax unified
	.thumb
	.thumb_func
	.type	fread, %function
fread:
.LFB91:
	.loc 1 1763 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #28
	.cfi_def_cfa_offset 48
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	mov	r4, r3
	.loc 1 1769 0
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #8]
	mul	r5, r2, r3
	cmp	r5, #0
	bne	.L536
	.loc 1 1770 0
	movs	r3, #0
	b	.L537
.L536:
	.loc 1 1771 0
	ldr	r3, [r4]
	cmp	r3, #0
	bge	.L538
	.loc 1 1772 0
	movs	r3, #0
	str	r3, [r4]
.L538:
	.loc 1 1773 0
	str	r5, [r7, #20]
	.loc 1 1774 0
	ldr	r3, [r7, #12]
	str	r3, [r7]
	.loc 1 1775 0
	b	.L539
.L540:
	.loc 1 1776 0
	ldr	r3, [r4, #4]
	mov	r2, r6
	mov	r1, r3
	ldr	r0, [r7]
	bl	memcpy
	.loc 1 1777 0
	ldr	r3, [r4, #4]
	mov	r2, r6
	add	r3, r3, r2
	str	r3, [r4, #4]
	.loc 1 1779 0
	mov	r3, r6
	ldr	r2, [r7]
	add	r2, r2, r3
	str	r2, [r7]
	.loc 1 1780 0
	subs	r5, r5, r6
	.loc 1 1781 0
	mov	r0, r4
	bl	__srefill
	mov	r3, r0
	cmp	r3, #0
	beq	.L539
	.loc 1 1783 0
	ldr	r3, [r7, #20]
	subs	r3, r3, r5
	ldr	r1, [r7, #8]
	mov	r0, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L537
.L539:
	.loc 1 1775 0
	ldr	r6, [r4]
	cmp	r6, r5
	blt	.L540
	.loc 1 1786 0
	ldr	r3, [r4, #4]
	mov	r2, r5
	mov	r1, r3
	ldr	r0, [r7]
	bl	memcpy
	.loc 1 1787 0
	ldr	r3, [r4]
	subs	r3, r3, r5
	str	r3, [r4]
	.loc 1 1788 0
	ldr	r3, [r4, #4]
	mov	r2, r5
	add	r3, r3, r2
	str	r3, [r4, #4]
	.loc 1 1789 0
	ldr	r3, [r7, #4]
.L537:
	.loc 1 1790 0
	mov	r0, r3
	adds	r7, r7, #28
	.cfi_def_cfa_offset 20
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
	.cfi_endproc
.LFE91:
	.size	fread, .-fread
	.align	2
	.global	isspace
	.syntax unified
	.thumb
	.thumb_func
	.type	isspace, %function
isspace:
.LFB92:
	.file 2 "/home/dtc34/Documents/P35/pvp11/vhls/src/crt/prlibc/strtol.c"
	.loc 2 5 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	mov	r3, r0
	strb	r3, [r7, #7]
	.loc 2 6 0
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L542
	.loc 2 6 0 is_stmt 0 discriminator 2
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #9
	beq	.L542
	.loc 2 6 0 discriminator 4
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L542
	.loc 2 6 0 discriminator 6
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #10
	bne	.L543
.L542:
	.loc 2 6 0 discriminator 7
	movs	r3, #1
	b	.L544
.L543:
	.loc 2 6 0 discriminator 8
	movs	r3, #0
.L544:
	.loc 2 7 0 is_stmt 1 discriminator 10
	mov	r0, r3
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE92:
	.size	isspace, .-isspace
	.global	__aeabi_uidivmod
	.global	__aeabi_uidiv
	.align	2
	.global	strtol
	.syntax unified
	.thumb
	.thumb_func
	.type	strtol, %function
strtol:
.LFB93:
	.loc 2 15 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 56
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r8, r2
	.loc 2 16 0
	ldr	r4, [r7, #12]
	.loc 2 20 0
	mov	r10, #0
.L547:
	.loc 2 28 0 discriminator 1
	mov	r3, r4
	adds	r4, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r5, r3
	.loc 2 29 0 discriminator 1
	uxtb	r3, r5
	mov	r0, r3
	bl	isspace
	mov	r3, r0
	cmp	r3, #0
	bne	.L547
	.loc 2 30 0
	cmp	r5, #45
	bne	.L548
	.loc 2 31 0
	mov	r10, #1
	.loc 2 32 0
	mov	r3, r4
	adds	r4, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r5, r3
	b	.L549
.L548:
	.loc 2 33 0
	cmp	r5, #43
	bne	.L549
	.loc 2 34 0
	mov	r3, r4
	adds	r4, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r5, r3
.L549:
	.loc 2 35 0
	cmp	r8, #0
	beq	.L550
	.loc 2 35 0 is_stmt 0 discriminator 2
	cmp	r8, #16
	bne	.L551
.L550:
	.loc 2 35 0 discriminator 3
	cmp	r5, #48
	bne	.L551
	.loc 2 36 0 is_stmt 1
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #120
	beq	.L552
	.loc 2 36 0 is_stmt 0 discriminator 1
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #88
	bne	.L551
.L552:
	.loc 2 37 0 is_stmt 1
	adds	r3, r4, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r5, r3
	.loc 2 38 0
	adds	r4, r4, #2
	.loc 2 39 0
	mov	r8, #16
	b	.L553
.L551:
	.loc 2 40 0
	cmp	r8, #0
	beq	.L554
	.loc 2 40 0 is_stmt 0 discriminator 2
	cmp	r8, #2
	bne	.L553
.L554:
	.loc 2 40 0 discriminator 3
	cmp	r5, #48
	bne	.L553
	.loc 2 41 0 is_stmt 1
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #98
	beq	.L555
	.loc 2 41 0 is_stmt 0 discriminator 1
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #66
	bne	.L553
.L555:
	.loc 2 42 0 is_stmt 1
	adds	r3, r4, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r5, r3
	.loc 2 43 0
	adds	r4, r4, #2
	.loc 2 44 0
	mov	r8, #2
.L553:
	.loc 2 46 0
	cmp	r8, #0
	bne	.L556
	.loc 2 47 0
	cmp	r5, #48
	bne	.L557
	.loc 2 47 0 is_stmt 0 discriminator 1
	movs	r3, #8
	b	.L558
.L557:
	.loc 2 47 0 discriminator 2
	movs	r3, #10
.L558:
	.loc 2 47 0 discriminator 4
	mov	r8, r3
.L556:
	.loc 2 66 0 is_stmt 1
	cmp	r10, #0
	beq	.L559
	.loc 2 66 0 is_stmt 0 discriminator 1
	mov	r3, #-2147483648
	b	.L560
.L559:
	.loc 2 66 0 discriminator 2
	mvn	r3, #-2147483648
.L560:
	.loc 2 66 0 discriminator 4
	mov	fp, r3
	.loc 2 67 0 is_stmt 1 discriminator 4
	mov	r3, r8
	mov	r1, r3
	mov	r0, fp
	bl	__aeabi_uidivmod
	mov	r3, r1
	str	r3, [r7, #4]
	.loc 2 68 0 discriminator 4
	mov	r3, r8
	mov	r1, r3
	mov	r0, fp
	bl	__aeabi_uidiv
	mov	r3, r0
	mov	fp, r3
	.loc 2 69 0 discriminator 4
	movs	r6, #0
	mov	r9, #0
.L571:
	.loc 2 70 0
	mov	r0, r5
	bl	isdigit
	mov	r3, r0
	cmp	r3, #0
	beq	.L561
	.loc 2 71 0
	subs	r5, r5, #48
	b	.L562
.L561:
	.loc 2 72 0
	mov	r0, r5
	bl	isalpha
	mov	r3, r0
	cmp	r3, #0
	beq	.L580
	.loc 2 73 0
	mov	r0, r5
	bl	isupper
	mov	r3, r0
	cmp	r3, #0
	beq	.L564
	.loc 2 73 0 is_stmt 0 discriminator 1
	movs	r3, #55
	b	.L565
.L564:
	.loc 2 73 0 discriminator 2
	movs	r3, #87
.L565:
	.loc 2 73 0 discriminator 4
	subs	r5, r5, r3
.L562:
	.loc 2 76 0 is_stmt 1
	cmp	r5, r8
	bge	.L581
	.loc 2 78 0
	cmp	r9, #0
	blt	.L568
	.loc 2 78 0 is_stmt 0 discriminator 1
	cmp	r6, fp
	bhi	.L568
	.loc 2 78 0 discriminator 2
	cmp	r6, fp
	bne	.L569
	.loc 2 78 0 discriminator 3
	ldr	r3, [r7, #4]
	cmp	r5, r3
	ble	.L569
.L568:
	.loc 2 79 0 is_stmt 1
	mov	r9, #-1
	b	.L570
.L569:
	.loc 2 81 0
	mov	r9, #1
	.loc 2 82 0
	mov	r3, r8
	mul	r6, r3, r6
	.loc 2 83 0
	mov	r3, r5
	add	r6, r6, r3
.L570:
	.loc 2 69 0
	mov	r3, r4
	adds	r4, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r5, r3
	.loc 2 85 0
	b	.L571
.L580:
	.loc 2 75 0
	nop
	b	.L566
.L581:
	.loc 2 77 0
	nop
.L566:
	.loc 2 86 0
	cmp	r9, #0
	bge	.L572
	.loc 2 87 0
	cmp	r10, #0
	beq	.L573
	.loc 2 87 0 is_stmt 0 discriminator 1
	mov	r3, #-2147483648
	b	.L574
.L573:
	.loc 2 87 0 discriminator 2
	mvn	r3, #-2147483648
.L574:
	.loc 2 87 0 discriminator 4
	mov	r6, r3
	b	.L575
.L572:
	.loc 2 89 0 is_stmt 1
	cmp	r10, #0
	beq	.L575
	.loc 2 90 0
	negs	r6, r6
.L575:
	.loc 2 91 0
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L576
	.loc 2 92 0
	cmp	r9, #0
	beq	.L577
	.loc 2 92 0 is_stmt 0 discriminator 1
	subs	r3, r4, #1
	b	.L578
.L577:
	.loc 2 92 0 discriminator 2
	ldr	r3, [r7, #12]
.L578:
	.loc 2 92 0 discriminator 4
	ldr	r2, [r7, #8]
	str	r3, [r2]
.L576:
	.loc 2 93 0 is_stmt 1
	mov	r3, r6
	.loc 2 94 0
	mov	r0, r3
	adds	r7, r7, #20
	.cfi_def_cfa_offset 36
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.cfi_endproc
.LFE93:
	.size	strtol, .-strtol
	.align	2
	.global	strtoul
	.syntax unified
	.thumb
	.thumb_func
	.type	strtoul, %function
strtoul:
.LFB94:
	.loc 2 102 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 56
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r8, r2
	.loc 2 103 0
	ldr	r4, [r7, #12]
	.loc 2 107 0
	mov	fp, #0
.L583:
	.loc 2 113 0 discriminator 1
	mov	r3, r4
	adds	r4, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r5, r3
	.loc 2 114 0 discriminator 1
	uxtb	r3, r5
	mov	r0, r3
	bl	isspace
	mov	r3, r0
	cmp	r3, #0
	bne	.L583
	.loc 2 115 0
	cmp	r5, #45
	bne	.L584
	.loc 2 116 0
	mov	fp, #1
	.loc 2 117 0
	mov	r3, r4
	adds	r4, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r5, r3
	b	.L585
.L584:
	.loc 2 118 0
	cmp	r5, #43
	bne	.L585
	.loc 2 119 0
	mov	r3, r4
	adds	r4, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r5, r3
.L585:
	.loc 2 120 0
	cmp	r8, #0
	beq	.L586
	.loc 2 120 0 is_stmt 0 discriminator 2
	cmp	r8, #16
	bne	.L587
.L586:
	.loc 2 120 0 discriminator 3
	cmp	r5, #48
	bne	.L587
	.loc 2 121 0 is_stmt 1
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #120
	beq	.L588
	.loc 2 121 0 is_stmt 0 discriminator 1
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #88
	bne	.L587
.L588:
	.loc 2 122 0 is_stmt 1
	adds	r3, r4, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r5, r3
	.loc 2 123 0
	adds	r4, r4, #2
	.loc 2 124 0
	mov	r8, #16
	b	.L589
.L587:
	.loc 2 125 0
	cmp	r8, #0
	beq	.L590
	.loc 2 125 0 is_stmt 0 discriminator 2
	cmp	r8, #2
	bne	.L589
.L590:
	.loc 2 125 0 discriminator 3
	cmp	r5, #48
	bne	.L589
	.loc 2 126 0 is_stmt 1
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #98
	beq	.L591
	.loc 2 126 0 is_stmt 0 discriminator 1
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #66
	bne	.L589
.L591:
	.loc 2 127 0 is_stmt 1
	adds	r3, r4, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r5, r3
	.loc 2 128 0
	adds	r4, r4, #2
	.loc 2 129 0
	mov	r8, #2
.L589:
	.loc 2 131 0
	cmp	r8, #0
	bne	.L592
	.loc 2 132 0
	cmp	r5, #48
	bne	.L593
	.loc 2 132 0 is_stmt 0 discriminator 1
	movs	r3, #8
	b	.L594
.L593:
	.loc 2 132 0 discriminator 2
	movs	r3, #10
.L594:
	.loc 2 132 0 discriminator 4
	mov	r8, r3
.L592:
	.loc 2 133 0 is_stmt 1
	mov	r3, r8
	mov	r1, r3
	mov	r0, #-1
	bl	__aeabi_uidiv
	mov	r3, r0
	mov	r10, r3
	.loc 2 134 0
	mov	r2, r8
	mov	r3, #-1
	mov	r1, r2
	mov	r0, r3
	bl	__aeabi_uidivmod
	mov	r3, r1
	str	r3, [r7, #4]
	.loc 2 135 0
	movs	r6, #0
	mov	r9, #0
.L605:
	.loc 2 136 0
	mov	r0, r5
	bl	isdigit
	mov	r3, r0
	cmp	r3, #0
	beq	.L595
	.loc 2 137 0
	subs	r5, r5, #48
	b	.L596
.L595:
	.loc 2 138 0
	mov	r0, r5
	bl	isalpha
	mov	r3, r0
	cmp	r3, #0
	beq	.L612
	.loc 2 139 0
	mov	r0, r5
	bl	isupper
	mov	r3, r0
	cmp	r3, #0
	beq	.L598
	.loc 2 139 0 is_stmt 0 discriminator 1
	movs	r3, #55
	b	.L599
.L598:
	.loc 2 139 0 discriminator 2
	movs	r3, #87
.L599:
	.loc 2 139 0 discriminator 4
	subs	r5, r5, r3
.L596:
	.loc 2 142 0 is_stmt 1
	cmp	r5, r8
	bge	.L613
	.loc 2 144 0
	cmp	r9, #0
	blt	.L602
	.loc 2 144 0 is_stmt 0 discriminator 1
	cmp	r6, r10
	bhi	.L602
	.loc 2 144 0 discriminator 2
	cmp	r6, r10
	bne	.L603
	.loc 2 144 0 discriminator 3
	ldr	r3, [r7, #4]
	cmp	r5, r3
	ble	.L603
.L602:
	.loc 2 145 0 is_stmt 1
	mov	r9, #-1
	b	.L604
.L603:
	.loc 2 147 0
	mov	r9, #1
	.loc 2 148 0
	mov	r3, r8
	mul	r6, r3, r6
	.loc 2 149 0
	mov	r3, r5
	add	r6, r6, r3
.L604:
	.loc 2 135 0
	mov	r3, r4
	adds	r4, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r5, r3
	.loc 2 151 0
	b	.L605
.L612:
	.loc 2 141 0
	nop
	b	.L600
.L613:
	.loc 2 143 0
	nop
.L600:
	.loc 2 152 0
	cmp	r9, #0
	bge	.L606
	.loc 2 153 0
	mov	r6, #-1
	b	.L607
.L606:
	.loc 2 155 0
	cmp	fp, #0
	beq	.L607
	.loc 2 156 0
	negs	r6, r6
.L607:
	.loc 2 157 0
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L608
	.loc 2 158 0
	cmp	r9, #0
	beq	.L609
	.loc 2 158 0 is_stmt 0 discriminator 1
	subs	r3, r4, #1
	b	.L610
.L609:
	.loc 2 158 0 discriminator 2
	ldr	r3, [r7, #12]
.L610:
	.loc 2 158 0 discriminator 4
	ldr	r2, [r7, #8]
	str	r3, [r2]
.L608:
	.loc 2 159 0 is_stmt 1
	mov	r3, r6
	.loc 2 160 0
	mov	r0, r3
	adds	r7, r7, #20
	.cfi_def_cfa_offset 36
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.cfi_endproc
.LFE94:
	.size	strtoul, .-strtoul
	.data
	.align	2
	.type	maxExponent, %object
	.size	maxExponent, 4
maxExponent:
	.word	511
	.align	3
	.type	powersOf10, %object
	.size	powersOf10, 72
powersOf10:
	.word	0
	.word	1076101120
	.word	0
	.word	1079574528
	.word	0
	.word	1086556160
	.word	0
	.word	1100470148
	.word	937459712
	.word	1128383353
	.word	3037031959
	.word	1184086197
	.word	3913284085
	.word	1295535875
	.word	4180679986
	.word	1518499656
	.word	2138292028
	.word	1964330973
	.global	__aeabi_ddiv
	.text
	.align	2
	.global	strtod
	.syntax unified
	.thumb
	.thumb_func
	.type	strtod, %function
strtod:
.LFB95:
	.file 3 "/home/dtc34/Documents/P35/pvp11/vhls/src/crt/prlibc/strtod.c"
	.loc 3 51 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #72
	.cfi_def_cfa_offset 88
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	.loc 3 52 0
	movs	r3, #0
	str	r3, [r7, #20]
	.loc 3 56 0
	movs	r3, #0
	str	r3, [r7, #28]
	.loc 3 57 0
	movs	r3, #0
	str	r3, [r7, #32]
	.loc 3 76 0
	ldr	r4, [r7, #12]
	.loc 3 77 0
	b	.L615
.L616:
	.loc 3 78 0
	adds	r4, r4, #1
.L615:
	.loc 3 77 0
	ldrb	r3, [r4]	@ zero_extendqisi2
	mov	r0, r3
	bl	isspace
	mov	r3, r0
	cmp	r3, #0
	bne	.L616
	.loc 3 80 0
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #45
	bne	.L617
	.loc 3 81 0
	movs	r3, #1
	str	r3, [r7, #16]
	.loc 3 82 0
	adds	r4, r4, #1
	b	.L618
.L617:
	.loc 3 84 0
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #43
	bne	.L619
	.loc 3 85 0
	adds	r4, r4, #1
.L619:
	.loc 3 87 0
	movs	r3, #0
	str	r3, [r7, #16]
.L618:
	.loc 3 95 0
	mov	r3, #-1
	str	r3, [r7, #40]
	.loc 3 96 0
	movs	r3, #0
	str	r3, [r7, #36]
.L622:
	.loc 3 98 0
	ldrb	r3, [r4]	@ zero_extendqisi2
	mov	r5, r3
	.loc 3 99 0
	mov	r0, r5
	bl	isdigit
	mov	r3, r0
	cmp	r3, #0
	bne	.L620
	.loc 3 100 0
	cmp	r5, #46
	bne	.L621
	.loc 3 100 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #40]
	cmp	r3, #0
	bge	.L621
	.loc 3 103 0 is_stmt 1
	ldr	r3, [r7, #36]
	str	r3, [r7, #40]
.L620:
	.loc 3 105 0
	adds	r4, r4, #1
	.loc 3 96 0
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
	.loc 3 106 0
	b	.L622
.L621:
	.loc 3 115 0
	str	r4, [r7, #52]
	.loc 3 116 0
	ldr	r3, [r7, #36]
	negs	r3, r3
	add	r4, r4, r3
	.loc 3 117 0
	ldr	r3, [r7, #40]
	cmp	r3, #0
	bge	.L623
	.loc 3 118 0
	ldr	r3, [r7, #36]
	str	r3, [r7, #40]
	b	.L624
.L623:
	.loc 3 120 0
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	str	r3, [r7, #36]
.L624:
	.loc 3 122 0
	ldr	r3, [r7, #36]
	cmp	r3, #18
	ble	.L625
	.loc 3 123 0
	ldr	r3, [r7, #40]
	subs	r3, r3, #18
	str	r3, [r7, #32]
	.loc 3 124 0
	movs	r3, #18
	str	r3, [r7, #36]
	b	.L626
.L625:
	.loc 3 126 0
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #36]
	subs	r3, r2, r3
	str	r3, [r7, #32]
.L626:
	.loc 3 128 0
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L627
	.loc 3 129 0
	mov	r3, #0
	mov	r4, #0
	strd	r3, [r7, #56]
	.loc 3 130 0
	ldr	r4, [r7, #12]
	.loc 3 131 0
	b	.L628
.L627:
.LBB34:
	.loc 3 134 0
	movs	r3, #0
	str	r3, [r7, #44]
	.loc 3 135 0
	b	.L629
.L631:
	.loc 3 137 0
	ldrb	r3, [r4]	@ zero_extendqisi2
	mov	r5, r3
	.loc 3 138 0
	adds	r4, r4, #1
	.loc 3 139 0
	cmp	r5, #46
	bne	.L630
	.loc 3 140 0
	ldrb	r3, [r4]	@ zero_extendqisi2
	mov	r5, r3
	.loc 3 141 0
	adds	r4, r4, #1
.L630:
	.loc 3 143 0
	ldr	r3, [r7, #44]
	movs	r2, #10
	mul	r2, r2, r3
	sub	r3, r5, #48
	add	r3, r3, r2
	str	r3, [r7, #44]
	.loc 3 135 0
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	str	r3, [r7, #36]
.L629:
	.loc 3 135 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #36]
	cmp	r3, #9
	bgt	.L631
	.loc 3 145 0 is_stmt 1
	movs	r3, #0
	str	r3, [r7, #48]
	.loc 3 146 0
	b	.L632
.L634:
	.loc 3 148 0
	ldrb	r3, [r4]	@ zero_extendqisi2
	mov	r5, r3
	.loc 3 149 0
	adds	r4, r4, #1
	.loc 3 150 0
	cmp	r5, #46
	bne	.L633
	.loc 3 151 0
	ldrb	r3, [r4]	@ zero_extendqisi2
	mov	r5, r3
	.loc 3 152 0
	adds	r4, r4, #1
.L633:
	.loc 3 154 0
	ldr	r3, [r7, #48]
	movs	r2, #10
	mul	r2, r2, r3
	sub	r3, r5, #48
	add	r3, r3, r2
	str	r3, [r7, #48]
	.loc 3 146 0
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	str	r3, [r7, #36]
.L632:
	.loc 3 146 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bgt	.L634
	.loc 3 156 0 is_stmt 1
	ldr	r0, [r7, #44]
	bl	__aeabi_i2d
	adr	r3, .L655
	ldrd	r2, [r3]
	bl	__aeabi_dmul
	mov	r3, r0
	mov	r4, r1
	mov	r5, r4
	mov	r4, r3
	ldr	r0, [r7, #48]
	bl	__aeabi_i2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	mov	r3, r0
	mov	r4, r1
	strd	r3, [r7, #56]
.LBE34:
	.loc 3 163 0
	ldr	r4, [r7, #52]
	.loc 3 164 0
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #69
	beq	.L635
	.loc 3 164 0 is_stmt 0 discriminator 1
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #101
	bne	.L636
.L635:
	.loc 3 165 0 is_stmt 1
	adds	r4, r4, #1
	.loc 3 166 0
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #45
	bne	.L637
	.loc 3 167 0
	movs	r3, #1
	str	r3, [r7, #20]
	.loc 3 168 0
	adds	r4, r4, #1
	b	.L638
.L637:
	.loc 3 170 0
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #43
	bne	.L639
	.loc 3 171 0
	adds	r4, r4, #1
.L639:
	.loc 3 173 0
	movs	r3, #0
	str	r3, [r7, #20]
.L638:
	.loc 3 175 0
	ldrb	r3, [r4]	@ zero_extendqisi2
	mov	r0, r3
	bl	isdigit
	mov	r3, r0
	cmp	r3, #0
	bne	.L641
	.loc 3 176 0
	ldr	r4, [r7, #52]
	.loc 3 177 0
	b	.L628
.L642:
	.loc 3 180 0
	ldr	r3, [r7, #28]
	movs	r2, #10
	mul	r2, r2, r3
	ldrb	r3, [r4]	@ zero_extendqisi2
	subs	r3, r3, #48
	add	r3, r3, r2
	str	r3, [r7, #28]
	.loc 3 181 0
	adds	r4, r4, #1
.L641:
	.loc 3 179 0
	ldrb	r3, [r4]	@ zero_extendqisi2
	mov	r0, r3
	bl	isdigit
	mov	r3, r0
	cmp	r3, #0
	bne	.L642
.L636:
	.loc 3 184 0
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L643
	.loc 3 185 0
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #28]
	subs	r3, r2, r3
	str	r3, [r7, #28]
	b	.L644
.L643:
	.loc 3 187 0
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	str	r3, [r7, #28]
.L644:
	.loc 3 197 0
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bge	.L645
	.loc 3 198 0
	movs	r3, #1
	str	r3, [r7, #20]
	.loc 3 199 0
	ldr	r3, [r7, #28]
	negs	r3, r3
	str	r3, [r7, #28]
	b	.L646
.L645:
	.loc 3 201 0
	movs	r3, #0
	str	r3, [r7, #20]
.L646:
	.loc 3 203 0
	movw	r3, #:lower16:maxExponent
	movt	r3, #:upper16:maxExponent
	ldr	r3, [r3]
	ldr	r2, [r7, #28]
	cmp	r2, r3
	ble	.L647
	.loc 3 204 0
	movw	r3, #:lower16:maxExponent
	movt	r3, #:upper16:maxExponent
	ldr	r3, [r3]
	str	r3, [r7, #28]
	.loc 3 205 0
	mrc	p15, 0, r3, c13, c0, 3	@ load_tp_hard
	ldr	r2, .L655+8
	movs	r1, #34
	str	r1, [r3, r2]
.L647:
	.loc 3 207 0
	mov	r2, #0
	mov	r3, #0
	movt	r3, 16368
	strd	r2, [r7, #64]
	.loc 3 208 0
	movw	r3, #:lower16:powersOf10
	movt	r3, #:upper16:powersOf10
	str	r3, [r7, #24]
	b	.L648
.L650:
	.loc 3 209 0
	ldr	r3, [r7, #28]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L649
	.loc 3 210 0
	ldr	r3, [r7, #24]
	ldrd	r2, [r3]
	ldrd	r0, [r7, #64]
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	strd	r2, [r7, #64]
.L649:
	.loc 3 208 0 discriminator 2
	ldr	r3, [r7, #28]
	asrs	r3, r3, #1
	str	r3, [r7, #28]
	ldr	r3, [r7, #24]
	adds	r3, r3, #8
	str	r3, [r7, #24]
.L648:
	.loc 3 208 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L650
	.loc 3 213 0 is_stmt 1
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L651
	.loc 3 214 0
	ldrd	r2, [r7, #64]
	ldrd	r0, [r7, #56]
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	strd	r2, [r7, #56]
	b	.L628
.L651:
	.loc 3 216 0
	ldrd	r2, [r7, #64]
	ldrd	r0, [r7, #56]
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	strd	r2, [r7, #56]
.L628:
	.loc 3 220 0
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L652
	.loc 3 221 0
	ldr	r3, [r7, #8]
	str	r4, [r3]
.L652:
	.loc 3 224 0
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L653
	.loc 3 225 0
	ldr	r3, [r7, #56]
	str	r3, [r7]
	ldr	r3, [r7, #60]
	eor	r3, r3, #-2147483648
	str	r3, [r7, #4]
	b	.L654
.L653:
	.loc 3 227 0
	ldrd	r3, [r7, #56]
	strd	r3, [r7]
.L654:
	ldrd	r3, [r7]
	.loc 3 228 0
	mov	r0, r3
	mov	r1, r4
	adds	r7, r7, #72
	.cfi_def_cfa_offset 16
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r5, r7, pc}
.L656:
	.align	3
.L655:
	.word	0
	.word	1104006501
	.word	errno(tpoff)
	.cfi_endproc
.LFE95:
	.size	strtod, .-strtod
	.global	__aeabi_d2f
	.align	2
	.global	vfscanf
	.syntax unified
	.thumb
	.thumb_func
	.type	vfscanf, %function
vfscanf:
.LFB96:
	.loc 1 1795 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 832
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	sub	sp, sp, #832
	.cfi_def_cfa_offset 856
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	add	r3, r7, #12
	str	r0, [r3]
	add	r3, r7, #8
	str	r1, [r3]
	adds	r3, r7, #4
	str	r2, [r3]
	.loc 1 1795 0
	movw	r3, #:lower16:__stack_chk_guard
	movt	r3, #:upper16:__stack_chk_guard
	ldr	r3, [r3]
	str	r3, [r7, #828]
	.loc 1 1796 0
	add	r3, r7, #8
	ldr	r3, [r3]
	str	r3, [r7]
	.loc 1 1814 0
	add	r3, r7, #20
	movs	r2, #0
	str	r2, [r3]
	.loc 1 1815 0
	add	r3, r7, #24
	movs	r2, #0
	str	r2, [r3]
	.loc 1 1816 0
	add	r3, r7, #28
	movs	r2, #0
	str	r2, [r3]
	.loc 1 1817 0
	add	r3, r7, #32
	movs	r2, #0
	str	r2, [r3]
.L802:
	.loc 1 1819 0
	ldr	r3, [r7]
	adds	r2, r3, #1
	str	r2, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r8, r3
	.loc 1 1820 0
	cmp	r8, #0
	bne	.L658
	.loc 1 1821 0
	add	r3, r7, #20
	ldr	r3, [r3]
	b	.L805
.L658:
	.loc 1 1822 0
	uxtb	r3, r8
	mov	r0, r3
	bl	isspace
	mov	r3, r0
	cmp	r3, #0
	beq	.L660
.L664:
	.loc 1 1824 0
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3]
	cmp	r3, #0
	bgt	.L661
	.loc 1 1824 0 is_stmt 0 discriminator 1
	add	r3, r7, #12
	ldr	r0, [r3]
	bl	__srefill
	mov	r3, r0
	cmp	r3, #0
	beq	.L661
	.loc 1 1825 0 is_stmt 1
	add	r3, r7, #20
	ldr	r3, [r3]
	b	.L805
.L661:
	.loc 1 1826 0
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	isspace
	mov	r3, r0
	cmp	r3, #0
	beq	.L808
	.loc 1 1828 0
	add	r3, r7, #24
	add	r2, r7, #24
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3]
	subs	r2, r3, #1
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	adds	r2, r3, #1
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #4]
	.loc 1 1829 0
	b	.L664
.L808:
	.loc 1 1827 0
	nop
	.loc 1 1830 0
	b	.L665
.L660:
	.loc 1 1832 0
	cmp	r8, #37
	bne	.L809
	.loc 1 1834 0
	movs	r5, #0
	.loc 1 1835 0
	movs	r4, #0
.L668:
	.loc 1 1841 0
	ldr	r3, [r7]
	adds	r2, r3, #1
	str	r2, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r8, r3
	.loc 1 1842 0
	cmp	r8, #120
	bhi	.L669
	adr	r3, .L671
	ldr	pc, [r3, r8, lsl #2]
	.p2align 2
.L671:
	.word	.L670+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L667+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L672+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L673+1
	.word	.L673+1
	.word	.L673+1
	.word	.L673+1
	.word	.L673+1
	.word	.L673+1
	.word	.L673+1
	.word	.L673+1
	.word	.L673+1
	.word	.L673+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L674+1
	.word	.L675+1
	.word	.L675+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L676+1
	.word	.L669+1
	.word	.L669+1
	.word	.L677+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L678+1
	.word	.L669+1
	.word	.L669+1
	.word	.L679+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L669+1
	.word	.L680+1
	.word	.L681+1
	.word	.L682+1
	.word	.L682+1
	.word	.L682+1
	.word	.L683+1
	.word	.L684+1
	.word	.L669+1
	.word	.L669+1
	.word	.L685+1
	.word	.L669+1
	.word	.L686+1
	.word	.L687+1
	.word	.L688+1
	.word	.L669+1
	.word	.L669+1
	.word	.L689+1
	.word	.L669+1
	.word	.L690+1
	.word	.L669+1
	.word	.L669+1
	.word	.L691+1
	.p2align 1
.L809:
	.loc 1 1833 0
	nop
.L667:
	.loc 1 1845 0
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3]
	cmp	r3, #0
	bgt	.L692
	.loc 1 1845 0 is_stmt 0 discriminator 1
	add	r3, r7, #12
	ldr	r0, [r3]
	bl	__srefill
	mov	r3, r0
	cmp	r3, #0
	bne	.L810
.L692:
	.loc 1 1847 0 is_stmt 1
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, r8
	bne	.L811
	.loc 1 1849 0
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3]
	subs	r2, r3, #1
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	adds	r2, r3, #1
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #4]
	.loc 1 1850 0
	add	r3, r7, #24
	add	r2, r7, #24
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
	.loc 1 1851 0
	b	.L665
.L672:
	.loc 1 1854 0
	orr	r4, r4, #8
	.loc 1 1855 0
	b	.L668
.L685:
	.loc 1 1858 0
	orr	r4, r4, #1
	.loc 1 1859 0
	b	.L668
.L676:
	.loc 1 1862 0
	orr	r4, r4, #2
	.loc 1 1863 0
	b	.L668
.L683:
	.loc 1 1866 0
	orr	r4, r4, #4
	.loc 1 1867 0
	b	.L668
.L673:
	.loc 1 1871 0
	movs	r3, #10
	mul	r3, r3, r5
	add	r3, r3, r8
	sub	r5, r3, #48
	.loc 1 1872 0
	b	.L668
.L674:
	.loc 1 1882 0
	orr	r4, r4, #1
.L681:
	.loc 1 1885 0
	mov	r8, #3
	.loc 1 1886 0
	add	r2, r7, #32
	movw	r3, #:lower16:strtol
	movt	r3, #:upper16:strtol
	str	r3, [r2]
	.loc 1 1887 0
	add	r3, r7, #28
	movs	r2, #10
	str	r2, [r3]
	.loc 1 1888 0
	b	.L696
.L684:
	.loc 1 1891 0
	mov	r8, #3
	.loc 1 1892 0
	add	r2, r7, #32
	movw	r3, #:lower16:strtol
	movt	r3, #:upper16:strtol
	str	r3, [r2]
	.loc 1 1893 0
	add	r3, r7, #28
	movs	r2, #0
	str	r2, [r3]
	.loc 1 1894 0
	b	.L696
.L677:
	.loc 1 1897 0
	orr	r4, r4, #1
.L687:
	.loc 1 1901 0
	mov	r8, #3
	.loc 1 1902 0
	add	r2, r7, #32
	movw	r3, #:lower16:strtoul
	movt	r3, #:upper16:strtoul
	str	r3, [r2]
	.loc 1 1903 0
	add	r3, r7, #28
	movs	r2, #8
	str	r2, [r3]
	.loc 1 1904 0
	b	.L696
.L690:
	.loc 1 1907 0
	mov	r8, #3
	.loc 1 1908 0
	add	r2, r7, #32
	movw	r3, #:lower16:strtoul
	movt	r3, #:upper16:strtoul
	str	r3, [r2]
	.loc 1 1909 0
	add	r3, r7, #28
	movs	r2, #10
	str	r2, [r3]
	.loc 1 1910 0
	b	.L696
.L678:
	.loc 1 1913 0
	orr	r4, r4, #1
.L691:
	.loc 1 1916 0
	orr	r4, r4, #256
	.loc 1 1917 0
	mov	r8, #3
	.loc 1 1918 0
	add	r2, r7, #32
	movw	r3, #:lower16:strtoul
	movt	r3, #:upper16:strtoul
	str	r3, [r2]
	.loc 1 1919 0
	add	r3, r7, #28
	movs	r2, #16
	str	r2, [r3]
	.loc 1 1920 0
	b	.L696
.L675:
	.loc 1 1925 0
	orr	r4, r4, #1
.L682:
	.loc 1 1929 0
	mov	r8, #4
	.loc 1 1930 0
	b	.L696
.L689:
	.loc 1 1934 0
	mov	r8, #2
	.loc 1 1935 0
	b	.L696
.L679:
	.loc 1 1938 0
	add	r3, r7, #56
	ldr	r1, [r7]
	mov	r0, r3
	bl	__sccl
	str	r0, [r7]
	.loc 1 1939 0
	orr	r4, r4, #32
	.loc 1 1940 0
	mov	r8, #1
	.loc 1 1941 0
	b	.L696
.L680:
	.loc 1 1944 0
	orr	r4, r4, #32
	.loc 1 1945 0
	mov	r8, #0
	.loc 1 1946 0
	b	.L696
.L688:
	.loc 1 1949 0
	orr	r4, r4, #272
	.loc 1 1950 0
	mov	r8, #3
	.loc 1 1951 0
	add	r2, r7, #32
	movw	r3, #:lower16:strtoul
	movt	r3, #:upper16:strtoul
	str	r3, [r2]
	.loc 1 1952 0
	add	r3, r7, #28
	movs	r2, #16
	str	r2, [r3]
	.loc 1 1953 0
	b	.L696
.L686:
	.loc 1 1956 0
	and	r3, r4, #8
	cmp	r3, #0
	bne	.L812
	.loc 1 1958 0
	and	r3, r4, #4
	cmp	r3, #0
	beq	.L698
	.loc 1 1959 0
	adds	r3, r7, #4
	ldr	r3, [r3]
	adds	r1, r3, #4
	adds	r2, r7, #4
	str	r1, [r2]
	ldr	r3, [r3]
	add	r2, r7, #24
	ldr	r2, [r2]
	sxth	r2, r2
	strh	r2, [r3]	@ movhi
	.loc 1 1964 0
	b	.L665
.L698:
	.loc 1 1960 0
	and	r3, r4, #1
	cmp	r3, #0
	beq	.L700
	.loc 1 1961 0
	adds	r3, r7, #4
	ldr	r3, [r3]
	adds	r1, r3, #4
	adds	r2, r7, #4
	str	r1, [r2]
	ldr	r3, [r3]
	add	r2, r7, #24
	ldr	r2, [r2]
	str	r2, [r3]
	.loc 1 1964 0
	b	.L665
.L700:
	.loc 1 1963 0
	adds	r3, r7, #4
	ldr	r3, [r3]
	adds	r1, r3, #4
	adds	r2, r7, #4
	str	r1, [r2]
	ldr	r3, [r3]
	add	r2, r7, #24
	ldr	r2, [r2]
	str	r2, [r3]
	.loc 1 1964 0
	b	.L665
.L670:
	.loc 1 1970 0
	mov	r3, #-1
	b	.L805
.L669:
	.loc 1 1973 0
	mov	r0, r8
	bl	isupper
	mov	r3, r0
	cmp	r3, #0
	beq	.L701
	.loc 1 1974 0
	orr	r4, r4, #1
.L701:
	.loc 1 1975 0
	mov	r8, #3
	.loc 1 1976 0
	add	r2, r7, #32
	movw	r3, #:lower16:strtol
	movt	r3, #:upper16:strtol
	str	r3, [r2]
	.loc 1 1977 0
	add	r3, r7, #28
	movs	r2, #10
	str	r2, [r3]
	.loc 1 1978 0
	nop
.L696:
	.loc 1 1984 0
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3]
	cmp	r3, #0
	bgt	.L702
	.loc 1 1984 0 is_stmt 0 discriminator 1
	add	r3, r7, #12
	ldr	r0, [r3]
	bl	__srefill
	mov	r3, r0
	cmp	r3, #0
	bne	.L813
.L702:
	.loc 1 1991 0 is_stmt 1
	and	r3, r4, #32
	cmp	r3, #0
	bne	.L703
	.loc 1 1992 0
	b	.L704
.L706:
	.loc 1 1993 0
	add	r3, r7, #24
	add	r2, r7, #24
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
	.loc 1 1994 0
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3]
	subs	r2, r3, #1
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L705
	.loc 1 1995 0
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	adds	r2, r3, #1
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #4]
	b	.L704
.L705:
	.loc 1 1996 0
	add	r3, r7, #12
	ldr	r0, [r3]
	bl	__srefill
	mov	r3, r0
	cmp	r3, #0
	bne	.L814
.L704:
	.loc 1 1992 0
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	isspace
	mov	r3, r0
	cmp	r3, #0
	bne	.L706
.L703:
	.loc 1 2009 0
	cmp	r8, #4
	bhi	.L802
	adr	r3, .L708
	ldr	pc, [r3, r8, lsl #2]
	.p2align 2
.L708:
	.word	.L707+1
	.word	.L709+1
	.word	.L710+1
	.word	.L711+1
	.word	.L712+1
	.p2align 1
.L707:
	.loc 1 2013 0
	cmp	r5, #0
	bne	.L713
	.loc 1 2014 0
	movs	r5, #1
.L713:
	.loc 1 2015 0
	and	r3, r4, #8
	cmp	r3, #0
	beq	.L714
.LBB35:
	.loc 1 2016 0
	add	r3, r7, #36
	movs	r2, #0
	str	r2, [r3]
.L719:
	.loc 1 2018 0
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r4, [r3]
	cmp	r4, r5
	bge	.L715
	.loc 1 2019 0
	add	r3, r7, #36
	add	r2, r7, #36
	ldr	r2, [r2]
	add	r2, r2, r4
	str	r2, [r3]
	.loc 1 2020 0
	subs	r5, r5, r4
	.loc 1 2021 0
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	mov	r2, r4
	add	r2, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #4]
	.loc 1 2022 0
	add	r3, r7, #12
	ldr	r0, [r3]
	bl	__srefill
	mov	r3, r0
	cmp	r3, #0
	beq	.L719
	.loc 1 2023 0
	add	r3, r7, #36
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L815
	.loc 1 2024 0
	b	.L693
.L715:
	.loc 1 2028 0
	add	r3, r7, #36
	add	r2, r7, #36
	ldr	r2, [r2]
	add	r2, r2, r5
	str	r2, [r3]
	.loc 1 2029 0
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3]
	subs	r2, r3, r5
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3]
	.loc 1 2030 0
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	mov	r2, r5
	add	r2, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #4]
	.loc 1 2031 0
	b	.L718
.L815:
	.loc 1 2025 0
	nop
.L718:
	.loc 1 2034 0
	add	r3, r7, #24
	add	r1, r7, #24
	add	r2, r7, #36
	ldr	r1, [r1]
	ldr	r2, [r2]
	add	r2, r2, r1
	str	r2, [r3]
.LBE35:
	.loc 1 2044 0
	b	.L665
.L714:
.LBB36:
	.loc 1 2036 0
	adds	r3, r7, #4
	ldr	r3, [r3]
	adds	r1, r3, #4
	adds	r2, r7, #4
	str	r1, [r2]
	ldr	r0, [r3]
	add	r4, r7, #40
	add	r3, r7, #12
	ldr	r3, [r3]
	mov	r2, r5
	movs	r1, #1
	bl	fread
	str	r0, [r4]
	.loc 1 2039 0
	add	r3, r7, #40
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L816
	.loc 1 2041 0
	add	r3, r7, #24
	add	r1, r7, #24
	add	r2, r7, #40
	ldr	r1, [r1]
	ldr	r2, [r2]
	add	r2, r2, r1
	str	r2, [r3]
	.loc 1 2042 0
	add	r3, r7, #20
	add	r2, r7, #20
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
.LBE36:
	.loc 1 2044 0
	b	.L665
.L709:
	.loc 1 2048 0
	cmp	r5, #0
	bne	.L722
	.loc 1 2049 0
	mov	r5, #-1
.L722:
	.loc 1 2051 0
	and	r3, r4, #8
	cmp	r3, #0
	beq	.L723
	.loc 1 2052 0
	movs	r4, #0
	.loc 1 2053 0
	b	.L724
.L728:
	.loc 1 2054 0
	adds	r4, r4, #1
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3]
	subs	r2, r3, #1
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	adds	r2, r3, #1
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #4]
	.loc 1 2055 0
	subs	r5, r5, #1
	cmp	r5, #0
	beq	.L817
	.loc 1 2057 0
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3]
	cmp	r3, #0
	bgt	.L724
	.loc 1 2057 0 is_stmt 0 discriminator 1
	add	r3, r7, #12
	ldr	r0, [r3]
	bl	__srefill
	mov	r3, r0
	cmp	r3, #0
	beq	.L724
	.loc 1 2058 0 is_stmt 1
	cmp	r4, #0
	bne	.L818
	.loc 1 2059 0
	b	.L693
.L724:
	.loc 1 2053 0
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	add	r3, r7, #56
	ldrb	r3, [r3, r2]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L728
	b	.L726
.L817:
	.loc 1 2056 0
	nop
	b	.L726
.L818:
	.loc 1 2060 0
	nop
.L726:
	.loc 1 2063 0
	cmp	r4, #0
	bne	.L729
	.loc 1 2064 0
	b	.L695
.L723:
	.loc 1 2066 0
	adds	r3, r7, #4
	ldr	r3, [r3]
	adds	r1, r3, #4
	adds	r2, r7, #4
	str	r1, [r2]
	ldr	r6, [r3]
	mov	r4, r6
	.loc 1 2067 0
	b	.L730
.L734:
	.loc 1 2068 0
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3]
	subs	r2, r3, #1
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3]
	.loc 1 2069 0
	mov	r2, r6
	adds	r6, r2, #1
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	adds	r0, r3, #1
	add	r1, r7, #12
	ldr	r1, [r1]
	str	r0, [r1, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	strb	r3, [r2]
	.loc 1 2070 0
	subs	r5, r5, #1
	cmp	r5, #0
	beq	.L819
	.loc 1 2072 0
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3]
	cmp	r3, #0
	bgt	.L730
	.loc 1 2072 0 is_stmt 0 discriminator 1
	add	r3, r7, #12
	ldr	r0, [r3]
	bl	__srefill
	mov	r3, r0
	cmp	r3, #0
	beq	.L730
	.loc 1 2073 0 is_stmt 1
	cmp	r6, r4
	bne	.L820
	.loc 1 2074 0
	b	.L693
.L730:
	.loc 1 2067 0
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	add	r3, r7, #56
	ldrb	r3, [r3, r2]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L734
	b	.L732
.L819:
	.loc 1 2071 0
	nop
	b	.L732
.L820:
	.loc 1 2075 0
	nop
.L732:
	.loc 1 2078 0
	mov	r2, r6
	mov	r3, r4
	subs	r4, r2, r3
	.loc 1 2079 0
	cmp	r4, #0
	beq	.L821
	.loc 1 2081 0
	movs	r3, #0
	strb	r3, [r6]
	.loc 1 2082 0
	add	r3, r7, #20
	add	r2, r7, #20
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
.L729:
	.loc 1 2084 0
	add	r3, r7, #24
	add	r2, r7, #24
	ldr	r2, [r2]
	add	r2, r2, r4
	str	r2, [r3]
	.loc 1 2085 0
	b	.L665
.L710:
	.loc 1 2089 0
	cmp	r5, #0
	bne	.L736
	.loc 1 2090 0
	mov	r5, #-1
.L736:
	.loc 1 2091 0
	and	r3, r4, #8
	cmp	r3, #0
	beq	.L737
	.loc 1 2092 0
	movs	r4, #0
	.loc 1 2093 0
	b	.L738
.L741:
	.loc 1 2094 0
	adds	r4, r4, #1
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3]
	subs	r2, r3, #1
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	adds	r2, r3, #1
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #4]
	.loc 1 2095 0
	subs	r5, r5, #1
	cmp	r5, #0
	beq	.L822
	.loc 1 2097 0
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3]
	cmp	r3, #0
	bgt	.L738
	.loc 1 2097 0 is_stmt 0 discriminator 1
	add	r3, r7, #12
	ldr	r0, [r3]
	bl	__srefill
	mov	r3, r0
	cmp	r3, #0
	bne	.L823
.L738:
	.loc 1 2093 0 is_stmt 1
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	isspace
	mov	r3, r0
	cmp	r3, #0
	beq	.L741
	b	.L740
.L822:
	.loc 1 2096 0
	nop
	b	.L740
.L823:
	.loc 1 2098 0
	nop
.L740:
	.loc 1 2100 0
	add	r3, r7, #24
	add	r2, r7, #24
	ldr	r2, [r2]
	add	r2, r2, r4
	str	r2, [r3]
	.loc 1 2115 0
	b	.L665
.L737:
	.loc 1 2102 0
	adds	r3, r7, #4
	ldr	r3, [r3]
	adds	r1, r3, #4
	adds	r2, r7, #4
	str	r1, [r2]
	ldr	r6, [r3]
	mov	r4, r6
	.loc 1 2103 0
	b	.L743
.L746:
	.loc 1 2104 0
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3]
	subs	r2, r3, #1
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3]
	.loc 1 2105 0
	mov	r2, r6
	adds	r6, r2, #1
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	adds	r0, r3, #1
	add	r1, r7, #12
	ldr	r1, [r1]
	str	r0, [r1, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	strb	r3, [r2]
	.loc 1 2106 0
	subs	r5, r5, #1
	cmp	r5, #0
	beq	.L824
	.loc 1 2108 0
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3]
	cmp	r3, #0
	bgt	.L743
	.loc 1 2108 0 is_stmt 0 discriminator 1
	add	r3, r7, #12
	ldr	r0, [r3]
	bl	__srefill
	mov	r3, r0
	cmp	r3, #0
	bne	.L825
.L743:
	.loc 1 2103 0 is_stmt 1
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	isspace
	mov	r3, r0
	cmp	r3, #0
	beq	.L746
	b	.L745
.L824:
	.loc 1 2107 0
	nop
	b	.L745
.L825:
	.loc 1 2109 0
	nop
.L745:
	.loc 1 2111 0
	movs	r3, #0
	strb	r3, [r6]
	.loc 1 2112 0
	mov	r2, r6
	mov	r3, r4
	subs	r1, r2, r3
	add	r3, r7, #24
	add	r2, r7, #24
	ldr	r2, [r2]
	add	r2, r2, r1
	str	r2, [r3]
	.loc 1 2113 0
	add	r3, r7, #20
	add	r2, r7, #20
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
	.loc 1 2115 0
	b	.L665
.L711:
	.loc 1 2124 0
	subs	r5, r5, #1
	mov	r3, r5
	cmp	r3, #512
	bcc	.L747
	.loc 1 2125 0
	movw	r5, #511
.L747:
	.loc 1 2126 0
	adds	r5, r5, #1
	.loc 1 2128 0
	orr	r4, r4, #704
	.loc 1 2129 0
	add	r6, r7, #312
	b	.L748
.L768:
	.loc 1 2130 0
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r8, r3
	.loc 1 2135 0
	sub	r3, r8, #43
	cmp	r3, #77
	bhi	.L826
	adr	r2, .L751
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L751:
	.word	.L750+1
	.word	.L826+1
	.word	.L750+1
	.word	.L826+1
	.word	.L826+1
	.word	.L752+1
	.word	.L753+1
	.word	.L753+1
	.word	.L753+1
	.word	.L753+1
	.word	.L753+1
	.word	.L753+1
	.word	.L753+1
	.word	.L754+1
	.word	.L754+1
	.word	.L826+1
	.word	.L826+1
	.word	.L826+1
	.word	.L826+1
	.word	.L826+1
	.word	.L826+1
	.word	.L826+1
	.word	.L755+1
	.word	.L755+1
	.word	.L755+1
	.word	.L755+1
	.word	.L755+1
	.word	.L755+1
	.word	.L826+1
	.word	.L826+1
	.word	.L826+1
	.word	.L826+1
	.word	.L826+1
	.word	.L826+1
	.word	.L826+1
	.word	.L826+1
	.word	.L826+1
	.word	.L826+1
	.word	.L826+1
	.word	.L826+1
	.word	.L826+1
	.word	.L826+1
	.word	.L826+1
	.word	.L826+1
	.word	.L826+1
	.word	.L756+1
	.word	.L826+1
	.word	.L826+1
	.word	.L826+1
	.word	.L826+1
	.word	.L826+1
	.word	.L826+1
	.word	.L826+1
	.word	.L826+1
	.word	.L755+1
	.word	.L755+1
	.word	.L755+1
	.word	.L755+1
	.word	.L755+1
	.word	.L755+1
	.word	.L826+1
	.word	.L826+1
	.word	.L826+1
	.word	.L826+1
	.word	.L826+1
	.word	.L826+1
	.word	.L826+1
	.word	.L826+1
	.word	.L826+1
	.word	.L826+1
	.word	.L826+1
	.word	.L826+1
	.word	.L826+1
	.word	.L826+1
	.word	.L826+1
	.word	.L826+1
	.word	.L826+1
	.word	.L756+1
	.p2align 1
.L752:
	.loc 1 2150 0
	add	r3, r7, #28
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L757
	.loc 1 2151 0
	add	r3, r7, #28
	movs	r2, #8
	str	r2, [r3]
	.loc 1 2152 0
	orr	r4, r4, #256
.L757:
	.loc 1 2154 0
	and	r3, r4, #512
	cmp	r3, #0
	beq	.L758
	.loc 1 2155 0
	bic	r4, r4, #704
	.loc 1 2158 0
	b	.L760
.L758:
	.loc 1 2157 0
	bic	r4, r4, #448
	.loc 1 2158 0
	b	.L760
.L753:
	.loc 1 2163 0
	movw	r3, #:lower16:basefix.4758
	movt	r3, #:upper16:basefix.4758
	add	r2, r7, #28
	ldr	r2, [r2]
	ldrsh	r2, [r3, r2, lsl #1]
	add	r3, r7, #28
	str	r2, [r3]
	.loc 1 2164 0
	bic	r4, r4, #448
	.loc 1 2165 0
	b	.L760
.L754:
	.loc 1 2169 0
	movw	r3, #:lower16:basefix.4758
	movt	r3, #:upper16:basefix.4758
	add	r2, r7, #28
	ldr	r2, [r2]
	ldrsh	r2, [r3, r2, lsl #1]
	add	r3, r7, #28
	str	r2, [r3]
	.loc 1 2170 0
	add	r3, r7, #28
	ldr	r3, [r3]
	cmp	r3, #8
	ble	.L827
	.loc 1 2172 0
	bic	r4, r4, #448
	.loc 1 2173 0
	b	.L760
.L755:
	.loc 1 2181 0
	add	r3, r7, #28
	ldr	r3, [r3]
	cmp	r3, #10
	ble	.L828
	.loc 1 2183 0
	bic	r4, r4, #448
	.loc 1 2184 0
	b	.L760
.L750:
	.loc 1 2188 0
	and	r3, r4, #64
	cmp	r3, #0
	beq	.L829
	.loc 1 2189 0
	bic	r4, r4, #64
	.loc 1 2190 0
	b	.L760
.L756:
	.loc 1 2196 0
	and	r3, r4, #256
	cmp	r3, #0
	beq	.L830
	.loc 1 2196 0 is_stmt 0 discriminator 1
	add	r3, r7, #312
	adds	r3, r3, #1
	cmp	r3, r6
	bne	.L830
	.loc 1 2197 0 is_stmt 1
	add	r3, r7, #28
	movs	r2, #16
	str	r2, [r3]
	.loc 1 2198 0
	bic	r4, r4, #256
	.loc 1 2199 0
	b	.L760
.L827:
	.loc 1 2171 0
	nop
	b	.L826
.L828:
	.loc 1 2182 0
	nop
	b	.L826
.L829:
	.loc 1 2192 0
	nop
	b	.L826
.L830:
	.loc 1 2201 0
	nop
	.loc 1 2208 0
	b	.L826
.L760:
	.loc 1 2213 0
	mov	r3, r6
	adds	r6, r3, #1
	uxtb	r2, r8
	strb	r2, [r3]
	.loc 1 2214 0
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3]
	subs	r2, r3, #1
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L766
	.loc 1 2215 0
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	adds	r2, r3, #1
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #4]
	b	.L767
.L766:
	.loc 1 2216 0
	add	r3, r7, #12
	ldr	r0, [r3]
	bl	__srefill
	mov	r3, r0
	cmp	r3, #0
	bne	.L831
.L767:
	.loc 1 2129 0 discriminator 2
	subs	r5, r5, #1
.L748:
	.loc 1 2129 0 is_stmt 0 discriminator 1
	cmp	r5, #0
	bne	.L768
	b	.L765
.L826:
	.loc 1 2208 0 is_stmt 1
	nop
	b	.L765
.L831:
	.loc 1 2217 0
	nop
.L765:
	.loc 1 2225 0
	and	r3, r4, #128
	cmp	r3, #0
	beq	.L769
	.loc 1 2226 0
	add	r3, r7, #312
	cmp	r6, r3
	bls	.L832
	.loc 1 2227 0
	subs	r6, r6, #1
	ldrb	r3, [r6]	@ zero_extendqisi2
	mov	r2, r3
	add	r3, r7, #12
	ldr	r1, [r3]
	mov	r0, r2
	bl	ungetc
	.loc 1 2228 0
	b	.L832
.L769:
	.loc 1 2230 0
	subs	r3, r6, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r8, r3
	.loc 1 2231 0
	cmp	r8, #120
	beq	.L771
	.loc 1 2231 0 is_stmt 0 discriminator 1
	cmp	r8, #88
	bne	.L772
.L771:
	.loc 1 2232 0 is_stmt 1
	subs	r6, r6, #1
	.loc 1 2233 0
	add	r3, r7, #12
	ldr	r1, [r3]
	mov	r0, r8
	bl	ungetc
.L772:
	.loc 1 2235 0
	and	r3, r4, #8
	cmp	r3, #0
	bne	.L773
.LBB37:
	.loc 1 2238 0
	movs	r3, #0
	strb	r3, [r6]
	.loc 1 2239 0
	add	r5, r7, #44
	add	r2, r7, #28
	add	r0, r7, #312
	add	r3, r7, #32
	ldr	r3, [r3]
	ldr	r2, [r2]
	movs	r1, #0
	blx	r3
	str	r0, [r5]
	.loc 1 2240 0
	and	r3, r4, #16
	cmp	r3, #0
	beq	.L774
	.loc 1 2241 0
	adds	r3, r7, #4
	ldr	r3, [r3]
	adds	r1, r3, #4
	adds	r2, r7, #4
	str	r1, [r2]
	ldr	r3, [r3]
	add	r2, r7, #44
	ldr	r2, [r2]
	str	r2, [r3]
	b	.L775
.L774:
	.loc 1 2242 0
	and	r3, r4, #4
	cmp	r3, #0
	beq	.L776
	.loc 1 2243 0
	adds	r3, r7, #4
	ldr	r3, [r3]
	adds	r1, r3, #4
	adds	r2, r7, #4
	str	r1, [r2]
	ldr	r3, [r3]
	add	r2, r7, #44
	ldr	r2, [r2]
	sxth	r2, r2
	strh	r2, [r3]	@ movhi
	b	.L775
.L776:
	.loc 1 2244 0
	and	r3, r4, #1
	cmp	r3, #0
	beq	.L777
	.loc 1 2245 0
	adds	r3, r7, #4
	ldr	r3, [r3]
	adds	r1, r3, #4
	adds	r2, r7, #4
	str	r1, [r2]
	ldr	r3, [r3]
	add	r2, r7, #44
	ldr	r2, [r2]
	str	r2, [r3]
	b	.L775
.L777:
	.loc 1 2247 0
	adds	r3, r7, #4
	ldr	r3, [r3]
	adds	r1, r3, #4
	adds	r2, r7, #4
	str	r1, [r2]
	ldr	r3, [r3]
	add	r2, r7, #44
	ldr	r2, [r2]
	str	r2, [r3]
.L775:
	.loc 1 2248 0
	add	r3, r7, #20
	add	r2, r7, #20
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
.L773:
.LBE37:
	.loc 1 2250 0
	mov	r2, r6
	add	r3, r7, #312
	subs	r1, r2, r3
	add	r3, r7, #24
	add	r2, r7, #24
	ldr	r2, [r2]
	add	r2, r2, r1
	str	r2, [r3]
	.loc 1 2251 0
	b	.L665
.L712:
	.loc 1 2261 0
	subs	r5, r5, #1
	mov	r3, r5
	cmp	r3, #512
	bcc	.L778
	.loc 1 2262 0
	movw	r5, #511
.L778:
	.loc 1 2263 0
	adds	r5, r5, #1
	.loc 1 2265 0
	orr	r4, r4, #960
	.loc 1 2266 0
	add	r6, r7, #312
	b	.L779
.L793:
	.loc 1 2267 0
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r8, r3
	.loc 1 2272 0
	sub	r3, r8, #43
	cmp	r3, #58
	bhi	.L833
	adr	r2, .L782
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L782:
	.word	.L781+1
	.word	.L833+1
	.word	.L781+1
	.word	.L783+1
	.word	.L833+1
	.word	.L784+1
	.word	.L784+1
	.word	.L784+1
	.word	.L784+1
	.word	.L784+1
	.word	.L784+1
	.word	.L784+1
	.word	.L784+1
	.word	.L784+1
	.word	.L784+1
	.word	.L833+1
	.word	.L833+1
	.word	.L833+1
	.word	.L833+1
	.word	.L833+1
	.word	.L833+1
	.word	.L833+1
	.word	.L833+1
	.word	.L833+1
	.word	.L833+1
	.word	.L833+1
	.word	.L785+1
	.word	.L833+1
	.word	.L833+1
	.word	.L833+1
	.word	.L833+1
	.word	.L833+1
	.word	.L833+1
	.word	.L833+1
	.word	.L833+1
	.word	.L833+1
	.word	.L833+1
	.word	.L833+1
	.word	.L833+1
	.word	.L833+1
	.word	.L833+1
	.word	.L833+1
	.word	.L833+1
	.word	.L833+1
	.word	.L833+1
	.word	.L833+1
	.word	.L833+1
	.word	.L833+1
	.word	.L833+1
	.word	.L833+1
	.word	.L833+1
	.word	.L833+1
	.word	.L833+1
	.word	.L833+1
	.word	.L833+1
	.word	.L833+1
	.word	.L833+1
	.word	.L833+1
	.word	.L785+1
	.p2align 1
.L784:
	.loc 1 2277 0
	bic	r4, r4, #192
	.loc 1 2278 0
	b	.L786
.L781:
	.loc 1 2281 0
	and	r3, r4, #64
	cmp	r3, #0
	beq	.L834
	.loc 1 2282 0
	bic	r4, r4, #64
	.loc 1 2283 0
	b	.L786
.L783:
	.loc 1 2287 0
	and	r3, r4, #256
	cmp	r3, #0
	beq	.L835
	.loc 1 2288 0
	bic	r4, r4, #320
	.loc 1 2289 0
	b	.L786
.L785:
	.loc 1 2294 0
	and	r3, r4, #640
	cmp	r3, #512
	bne	.L836
	.loc 1 2297 0
	bic	r3, r4, #960
	.loc 1 2295 0
	orr	r4, r3, #192
	.loc 1 2298 0
	b	.L786
.L834:
	.loc 1 2285 0
	nop
	b	.L833
.L835:
	.loc 1 2291 0
	nop
	b	.L833
.L836:
	.loc 1 2300 0
	nop
	.loc 1 2302 0
	b	.L833
.L786:
	.loc 1 2304 0
	mov	r3, r6
	adds	r6, r3, #1
	uxtb	r2, r8
	strb	r2, [r3]
	.loc 1 2305 0
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3]
	subs	r2, r3, #1
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L791
	.loc 1 2306 0
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	adds	r2, r3, #1
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #4]
	b	.L792
.L791:
	.loc 1 2307 0
	add	r3, r7, #12
	ldr	r0, [r3]
	bl	__srefill
	mov	r3, r0
	cmp	r3, #0
	bne	.L837
.L792:
	.loc 1 2266 0 discriminator 2
	subs	r5, r5, #1
.L779:
	.loc 1 2266 0 is_stmt 0 discriminator 1
	cmp	r5, #0
	bne	.L793
	b	.L790
.L833:
	.loc 1 2302 0 is_stmt 1
	nop
	b	.L790
.L837:
	.loc 1 2308 0
	nop
.L790:
	.loc 1 2315 0
	and	r3, r4, #128
	cmp	r3, #0
	beq	.L794
	.loc 1 2316 0
	and	r3, r4, #512
	cmp	r3, #0
	beq	.L795
	.loc 1 2318 0
	b	.L796
.L797:
	.loc 1 2319 0
	subs	r6, r6, #1
	ldrb	r3, [r6]	@ zero_extendqisi2
	mov	r2, r3
	add	r3, r7, #12
	ldr	r1, [r3]
	mov	r0, r2
	bl	ungetc
.L796:
	.loc 1 2318 0
	add	r3, r7, #312
	cmp	r6, r3
	bhi	.L797
	.loc 1 2320 0
	b	.L695
.L795:
	.loc 1 2323 0
	subs	r6, r6, #1
	ldrb	r3, [r6]	@ zero_extendqisi2
	mov	r8, r3
	.loc 1 2324 0
	cmp	r8, #101
	beq	.L798
	.loc 1 2324 0 is_stmt 0 discriminator 1
	cmp	r8, #69
	beq	.L798
	.loc 1 2325 0 is_stmt 1
	add	r3, r7, #12
	ldr	r1, [r3]
	mov	r0, r8
	bl	ungetc
	.loc 1 2326 0
	subs	r6, r6, #1
	ldrb	r3, [r6]	@ zero_extendqisi2
	mov	r8, r3
.L798:
	.loc 1 2328 0
	add	r3, r7, #12
	ldr	r1, [r3]
	mov	r0, r8
	bl	ungetc
.L794:
	.loc 1 2330 0
	and	r3, r4, #8
	cmp	r3, #0
	bne	.L799
.LBB38:
	.loc 1 2333 0
	movs	r3, #0
	strb	r3, [r6]
	.loc 1 2334 0
	add	r5, r7, #48
	add	r3, r7, #312
	movs	r1, #0
	mov	r0, r3
	bl	strtod
	strd	r0, [r5]
	.loc 1 2335 0
	and	r3, r4, #1
	cmp	r3, #0
	beq	.L800
	.loc 1 2336 0
	adds	r3, r7, #4
	ldr	r3, [r3]
	adds	r1, r3, #4
	adds	r2, r7, #4
	str	r1, [r2]
	ldr	r2, [r3]
	add	r3, r7, #48
	ldrd	r3, [r3]
	strd	r3, [r2]
	b	.L801
.L800:
	.loc 1 2338 0
	adds	r3, r7, #4
	ldr	r3, [r3]
	adds	r1, r3, #4
	adds	r2, r7, #4
	str	r1, [r2]
	ldr	r4, [r3]
	add	r3, r7, #48
	ldrd	r0, [r3]
	bl	__aeabi_d2f
	mov	r3, r0
	str	r3, [r4]	@ float
.L801:
	.loc 1 2339 0
	add	r3, r7, #20
	add	r2, r7, #20
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
.L799:
.LBE38:
	.loc 1 2341 0
	mov	r2, r6
	add	r3, r7, #312
	subs	r1, r2, r3
	add	r3, r7, #24
	add	r2, r7, #24
	ldr	r2, [r2]
	add	r2, r2, r1
	str	r2, [r3]
	.loc 1 2342 0
	b	.L665
.L812:
	.loc 1 1957 0
	nop
.L665:
	.loc 1 2345 0 discriminator 2
	b	.L802
.L810:
	.loc 1 1846 0
	nop
	b	.L693
.L813:
	.loc 1 1985 0
	nop
	b	.L693
.L814:
	.loc 1 1997 0
	nop
	b	.L693
.L816:
.LBB39:
	.loc 1 2040 0
	nop
.L693:
.LBE39:
	.loc 1 2347 0
	add	r3, r7, #20
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L803
	.loc 1 2347 0 is_stmt 0 discriminator 1
	add	r3, r7, #20
	ldr	r3, [r3]
	b	.L805
.L803:
	.loc 1 2347 0 discriminator 2
	mov	r3, #-1
	b	.L805
.L811:
	.loc 1 1848 0 is_stmt 1
	nop
	b	.L695
.L821:
	.loc 1 2080 0
	nop
	b	.L695
.L832:
	.loc 1 2228 0
	nop
.L695:
	.loc 1 2349 0
	add	r3, r7, #20
	ldr	r3, [r3]
.L805:
	.loc 1 2350 0 discriminator 10
	mov	r0, r3
	movw	r3, #:lower16:__stack_chk_guard
	movt	r3, #:upper16:__stack_chk_guard
	ldr	r2, [r7, #828]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L806
	.loc 1 2350 0 is_stmt 0
	bl	__stack_chk_fail
.L806:
	add	r7, r7, #832
	.cfi_def_cfa_offset 24
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
	.cfi_endproc
.LFE96:
	.size	vfscanf, .-vfscanf
	.align	2
	.global	fscanf
	.syntax unified
	.thumb
	.thumb_func
	.type	fscanf, %function
fscanf:
.LFB97:
	.loc 1 2352 0 is_stmt 1
	.cfi_startproc
	@ args = 4, pretend = 12, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 1
	push	{r1, r2, r3}
	.cfi_def_cfa_offset 12
	.cfi_offset 1, -12
	.cfi_offset 2, -8
	.cfi_offset 3, -4
	push	{r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 7, -20
	.cfi_offset 14, -16
	sub	sp, sp, #20
	.cfi_def_cfa_offset 40
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	ldr	r3, [r7, #28]
	str	r3, [r7]
	.loc 1 2352 0
	movw	r3, #:lower16:__stack_chk_guard
	movt	r3, #:upper16:__stack_chk_guard
	ldr	r3, [r3]
	str	r3, [r7, #12]
	.loc 1 2354 0
	add	r3, r7, #32
	str	r3, [r7, #8]
	.loc 1 2356 0
	ldr	r2, [r7, #8]
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	vfscanf
	mov	r3, r0
	.loc 1 2357 0
	mov	r0, r3
	movw	r3, #:lower16:__stack_chk_guard
	movt	r3, #:upper16:__stack_chk_guard
	ldr	r2, [r7, #12]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L840
	bl	__stack_chk_fail
.L840:
	adds	r7, r7, #20
	.cfi_def_cfa_offset 20
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, lr}
	.cfi_restore 14
	.cfi_restore 7
	.cfi_def_cfa_offset 12
	add	sp, sp, #12
	.cfi_restore 3
	.cfi_restore 2
	.cfi_restore 1
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE97:
	.size	fscanf, .-fscanf
	.align	2
	.global	__isoc99_fscanf
	.syntax unified
	.thumb
	.thumb_func
	.type	__isoc99_fscanf, %function
__isoc99_fscanf:
.LFB98:
	.loc 1 2359 0
	.cfi_startproc
	@ args = 4, pretend = 12, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 1
	push	{r1, r2, r3}
	.cfi_def_cfa_offset 12
	.cfi_offset 1, -12
	.cfi_offset 2, -8
	.cfi_offset 3, -4
	push	{r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 7, -20
	.cfi_offset 14, -16
	sub	sp, sp, #20
	.cfi_def_cfa_offset 40
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	ldr	r3, [r7, #28]
	str	r3, [r7]
	.loc 1 2359 0
	movw	r3, #:lower16:__stack_chk_guard
	movt	r3, #:upper16:__stack_chk_guard
	ldr	r3, [r3]
	str	r3, [r7, #12]
	.loc 1 2361 0
	add	r3, r7, #32
	str	r3, [r7, #8]
	.loc 1 2363 0
	ldr	r2, [r7, #8]
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	vfscanf
	mov	r3, r0
	.loc 1 2364 0
	mov	r0, r3
	movw	r3, #:lower16:__stack_chk_guard
	movt	r3, #:upper16:__stack_chk_guard
	ldr	r2, [r7, #12]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L843
	bl	__stack_chk_fail
.L843:
	adds	r7, r7, #20
	.cfi_def_cfa_offset 20
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, lr}
	.cfi_restore 14
	.cfi_restore 7
	.cfi_def_cfa_offset 12
	add	sp, sp, #12
	.cfi_restore 3
	.cfi_restore 2
	.cfi_restore 1
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE98:
	.size	__isoc99_fscanf, .-__isoc99_fscanf
	.global	__aeabi_uldivmod
	.align	2
	.global	strtoq
	.syntax unified
	.thumb
	.thumb_func
	.type	strtoq, %function
strtoq:
.LFB99:
	.file 4 "/home/dtc34/Documents/P35/pvp11/vhls/src/crt/prlibc/scanf.c"
	.loc 4 45 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	sub	sp, sp, #36
	.cfi_def_cfa_offset 72
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #28]
	str	r1, [r7, #24]
	mov	r10, r2
	.loc 4 57 0
	ldr	r3, [r7, #28]
	str	r3, [r7, #20]
.L845:
	.loc 4 59 0 discriminator 1
	ldr	r3, [r7, #20]
	adds	r2, r3, #1
	str	r2, [r7, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r6, r3
	.loc 4 60 0 discriminator 1
	uxtb	r3, r6
	mov	r0, r3
	bl	isspace
	mov	r3, r0
	cmp	r3, #0
	bne	.L845
	.loc 4 61 0
	cmp	r6, #45
	bne	.L846
	.loc 4 62 0
	movs	r3, #1
	str	r3, [r7, #16]
	.loc 4 63 0
	ldr	r3, [r7, #20]
	adds	r2, r3, #1
	str	r2, [r7, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r6, r3
	b	.L847
.L846:
	.loc 4 65 0
	movs	r3, #0
	str	r3, [r7, #16]
	.loc 4 66 0
	cmp	r6, #43
	bne	.L847
	.loc 4 67 0
	ldr	r3, [r7, #20]
	adds	r2, r3, #1
	str	r2, [r7, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r6, r3
.L847:
	.loc 4 69 0
	cmp	r10, #0
	beq	.L848
	.loc 4 69 0 is_stmt 0 discriminator 2
	cmp	r10, #16
	bne	.L849
.L848:
	.loc 4 69 0 discriminator 3
	cmp	r6, #48
	bne	.L849
	.loc 4 70 0 is_stmt 1
	ldr	r3, [r7, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #120
	beq	.L850
	.loc 4 70 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #88
	bne	.L849
.L850:
	.loc 4 71 0 is_stmt 1
	ldr	r2, [r7, #20]
	mov	r3, r2
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r6, r3
	.loc 4 72 0
	mov	r3, r2
	adds	r3, r3, #2
	str	r3, [r7, #20]
	.loc 4 73 0
	mov	r10, #16
.L849:
	.loc 4 75 0
	cmp	r10, #0
	bne	.L851
	.loc 4 76 0
	cmp	r6, #48
	bne	.L852
	.loc 4 76 0 is_stmt 0 discriminator 1
	movs	r3, #8
	b	.L853
.L852:
	.loc 4 76 0 discriminator 2
	movs	r3, #10
.L853:
	.loc 4 76 0 discriminator 4
	mov	r10, r3
.L851:
	.loc 4 96 0 is_stmt 1
	mov	r3, r10
	mov	r8, r3
	mov	r9, #0
	.loc 4 97 0
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L854
	.loc 4 97 0 is_stmt 0 discriminator 1
	mov	r3, #0
	mov	r4, #-2147483648
	b	.L855
.L854:
	.loc 4 97 0 discriminator 2
	mov	r3, #-1
	mvn	r4, #-2147483648
.L855:
	.loc 4 97 0 discriminator 4
	mov	r0, r3
	mov	r1, r4
	.loc 4 98 0 is_stmt 1 discriminator 4
	mov	r2, r8
	mov	r3, r9
	strd	r0, [r7, #8]
	bl	__aeabi_uldivmod
	mov	r4, r3
	mov	r3, r2
	str	r3, [r7, #4]
	.loc 4 99 0 discriminator 4
	mov	r2, r8
	mov	r3, r9
	ldrd	r0, [r7, #8]
	bl	__aeabi_uldivmod
	mov	r3, r0
	mov	r4, r1
	strd	r3, [r7, #8]
	.loc 4 100 0 discriminator 4
	mov	r4, #0
	mov	r5, #0
	mov	fp, #0
.L866:
	.loc 4 101 0
	mov	r0, r6
	bl	isdigit
	mov	r3, r0
	cmp	r3, #0
	beq	.L856
	.loc 4 102 0
	subs	r6, r6, #48
	b	.L857
.L856:
	.loc 4 103 0
	mov	r0, r6
	bl	isalpha
	mov	r3, r0
	cmp	r3, #0
	beq	.L875
	.loc 4 104 0
	mov	r0, r6
	bl	isupper
	mov	r3, r0
	cmp	r3, #0
	beq	.L859
	.loc 4 104 0 is_stmt 0 discriminator 1
	movs	r3, #55
	b	.L860
.L859:
	.loc 4 104 0 discriminator 2
	movs	r3, #87
.L860:
	.loc 4 104 0 discriminator 4
	subs	r6, r6, r3
.L857:
	.loc 4 107 0 is_stmt 1
	cmp	r6, r10
	bge	.L876
	.loc 4 109 0
	cmp	fp, #0
	blt	.L863
	.loc 4 109 0 is_stmt 0 discriminator 1
	ldrd	r2, [r7, #8]
	cmp	r3, r5
	it	eq
	cmpeq	r2, r4
	bcc	.L863
	.loc 4 109 0 discriminator 2
	ldrd	r2, [r7, #8]
	cmp	r5, r3
	it	eq
	cmpeq	r4, r2
	bne	.L864
	.loc 4 109 0 discriminator 3
	ldr	r3, [r7, #4]
	cmp	r6, r3
	ble	.L864
.L863:
	.loc 4 110 0 is_stmt 1
	mov	fp, #-1
	b	.L865
.L864:
	.loc 4 112 0
	mov	fp, #1
	.loc 4 113 0
	mul	r2, r8, r5
	mul	r3, r4, r9
	add	r3, r3, r2
	umull	r4, r5, r4, r8
	add	r3, r3, r5
	mov	r5, r3
	.loc 4 114 0
	mov	r2, r6
	asr	r3, r2, #31
	adds	r4, r4, r2
	adc	r5, r5, r3
.L865:
	.loc 4 100 0
	ldr	r3, [r7, #20]
	adds	r2, r3, #1
	str	r2, [r7, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r6, r3
	.loc 4 116 0
	b	.L866
.L875:
	.loc 4 106 0
	nop
	b	.L861
.L876:
	.loc 4 108 0
	nop
.L861:
	.loc 4 117 0
	cmp	fp, #0
	bge	.L867
	.loc 4 118 0
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L868
	.loc 4 118 0 is_stmt 0 discriminator 1
	mov	r3, #0
	mov	r4, #-2147483648
	b	.L869
.L868:
	.loc 4 118 0 discriminator 2
	mov	r3, #-1
	mvn	r4, #-2147483648
.L869:
	.loc 4 118 0 discriminator 4
	mov	r5, r4
	mov	r4, r3
	.loc 4 119 0 is_stmt 1 discriminator 4
	mrc	p15, 0, r3, c13, c0, 3	@ load_tp_hard
	ldr	r2, .L877
	movs	r1, #34
	str	r1, [r3, r2]
	b	.L870
.L867:
	.loc 4 120 0
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L870
	.loc 4 121 0
	rsbs	r4, r4, #0
	sbc	r5, r5, r5, lsl #1
.L870:
	.loc 4 122 0
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L871
	.loc 4 123 0
	cmp	fp, #0
	beq	.L872
	.loc 4 123 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	b	.L873
.L872:
	.loc 4 123 0 discriminator 2
	ldr	r3, [r7, #28]
.L873:
	.loc 4 123 0 discriminator 4
	ldr	r2, [r7, #24]
	str	r3, [r2]
.L871:
	.loc 4 124 0 is_stmt 1
	mov	r3, r4
	mov	r4, r5
	.loc 4 125 0
	mov	r0, r3
	mov	r1, r4
	adds	r7, r7, #36
	.cfi_def_cfa_offset 36
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L878:
	.align	2
.L877:
	.word	errno(tpoff)
	.cfi_endproc
.LFE99:
	.size	strtoq, .-strtoq
	.align	2
	.global	strtouq
	.syntax unified
	.thumb
	.thumb_func
	.type	strtouq, %function
strtouq:
.LFB100:
	.loc 4 127 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	sub	sp, sp, #36
	.cfi_def_cfa_offset 72
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #28]
	str	r1, [r7, #24]
	mov	fp, r2
	.loc 4 128 0
	ldr	r6, [r7, #28]
	.loc 4 137 0
	ldr	r6, [r7, #28]
.L880:
	.loc 4 139 0 discriminator 1
	mov	r3, r6
	adds	r6, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r8, r3
	.loc 4 140 0 discriminator 1
	uxtb	r3, r8
	mov	r0, r3
	bl	isspace
	mov	r3, r0
	cmp	r3, #0
	bne	.L880
	.loc 4 141 0
	cmp	r8, #45
	bne	.L881
	.loc 4 142 0
	movs	r3, #1
	str	r3, [r7, #16]
	.loc 4 143 0
	mov	r3, r6
	adds	r6, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r8, r3
	b	.L882
.L881:
	.loc 4 145 0
	movs	r3, #0
	str	r3, [r7, #16]
	.loc 4 146 0
	cmp	r8, #43
	bne	.L882
	.loc 4 147 0
	mov	r3, r6
	adds	r6, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r8, r3
.L882:
	.loc 4 149 0
	cmp	fp, #0
	beq	.L883
	.loc 4 149 0 is_stmt 0 discriminator 2
	cmp	fp, #16
	bne	.L884
.L883:
	.loc 4 149 0 discriminator 3
	cmp	r8, #48
	bne	.L884
	.loc 4 150 0 is_stmt 1
	ldrb	r3, [r6]	@ zero_extendqisi2
	cmp	r3, #120
	beq	.L885
	.loc 4 150 0 is_stmt 0 discriminator 1
	ldrb	r3, [r6]	@ zero_extendqisi2
	cmp	r3, #88
	bne	.L884
.L885:
	.loc 4 151 0 is_stmt 1
	adds	r3, r6, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r8, r3
	.loc 4 152 0
	adds	r6, r6, #2
	.loc 4 153 0
	mov	fp, #16
.L884:
	.loc 4 155 0
	cmp	fp, #0
	bne	.L886
	.loc 4 156 0
	cmp	r8, #48
	bne	.L887
	.loc 4 156 0 is_stmt 0 discriminator 1
	movs	r3, #8
	b	.L888
.L887:
	.loc 4 156 0 discriminator 2
	movs	r3, #10
.L888:
	.loc 4 156 0 discriminator 4
	mov	fp, r3
.L886:
	.loc 4 157 0 is_stmt 1
	mov	r3, fp
	mov	r9, r3
	mov	r10, #0
	.loc 4 158 0
	mov	r2, r9
	mov	r3, r10
	mov	r0, #-1
	mov	r1, #-1
	bl	__aeabi_uldivmod
	mov	r3, r0
	mov	r4, r1
	strd	r3, [r7, #8]
	.loc 4 159 0
	mov	r0, #-1
	mov	r1, #-1
	mov	r2, r9
	mov	r3, r10
	bl	__aeabi_uldivmod
	mov	r4, r3
	mov	r3, r2
	str	r3, [r7, #4]
	.loc 4 160 0
	mov	r4, #0
	mov	r5, #0
	movs	r3, #0
	str	r3, [r7, #20]
.L899:
	.loc 4 161 0
	mov	r0, r8
	bl	isdigit
	mov	r3, r0
	cmp	r3, #0
	beq	.L889
	.loc 4 162 0
	sub	r8, r8, #48
	b	.L890
.L889:
	.loc 4 163 0
	mov	r0, r8
	bl	isalpha
	mov	r3, r0
	cmp	r3, #0
	beq	.L906
	.loc 4 164 0
	mov	r0, r8
	bl	isupper
	mov	r3, r0
	cmp	r3, #0
	beq	.L892
	.loc 4 164 0 is_stmt 0 discriminator 1
	movs	r3, #55
	b	.L893
.L892:
	.loc 4 164 0 discriminator 2
	movs	r3, #87
.L893:
	.loc 4 164 0 discriminator 4
	sub	r8, r8, r3
.L890:
	.loc 4 167 0 is_stmt 1
	cmp	r8, fp
	bge	.L907
	.loc 4 169 0
	ldr	r3, [r7, #20]
	cmp	r3, #0
	blt	.L896
	.loc 4 169 0 is_stmt 0 discriminator 1
	ldrd	r2, [r7, #8]
	cmp	r3, r5
	it	eq
	cmpeq	r2, r4
	bcc	.L896
	.loc 4 169 0 discriminator 2
	ldrd	r2, [r7, #8]
	cmp	r5, r3
	it	eq
	cmpeq	r4, r2
	bne	.L897
	.loc 4 169 0 discriminator 3
	ldr	r3, [r7, #4]
	cmp	r8, r3
	ble	.L897
.L896:
	.loc 4 170 0 is_stmt 1
	mov	r3, #-1
	str	r3, [r7, #20]
	b	.L898
.L897:
	.loc 4 172 0
	movs	r3, #1
	str	r3, [r7, #20]
	.loc 4 173 0
	mul	r2, r9, r5
	mul	r3, r4, r10
	add	r3, r3, r2
	umull	r4, r5, r4, r9
	add	r3, r3, r5
	mov	r5, r3
	.loc 4 174 0
	mov	r2, r8
	asr	r3, r2, #31
	adds	r4, r4, r2
	adc	r5, r5, r3
.L898:
	.loc 4 160 0
	mov	r3, r6
	adds	r6, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r8, r3
	.loc 4 176 0
	b	.L899
.L906:
	.loc 4 166 0
	nop
	b	.L894
.L907:
	.loc 4 168 0
	nop
.L894:
	.loc 4 177 0
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bge	.L900
	.loc 4 178 0
	mov	r4, #-1
	mov	r5, #-1
	.loc 4 179 0
	mrc	p15, 0, r3, c13, c0, 3	@ load_tp_hard
	ldr	r2, .L908
	movs	r1, #34
	str	r1, [r3, r2]
	b	.L901
.L900:
	.loc 4 180 0
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L901
	.loc 4 181 0
	rsbs	r4, r4, #0
	sbc	r5, r5, r5, lsl #1
.L901:
	.loc 4 182 0
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L902
	.loc 4 183 0
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L903
	.loc 4 183 0 is_stmt 0 discriminator 1
	subs	r3, r6, #1
	b	.L904
.L903:
	.loc 4 183 0 discriminator 2
	ldr	r3, [r7, #28]
.L904:
	.loc 4 183 0 discriminator 4
	ldr	r2, [r7, #24]
	str	r3, [r2]
.L902:
	.loc 4 184 0 is_stmt 1
	mov	r3, r4
	mov	r4, r5
	.loc 4 185 0
	mov	r0, r3
	mov	r1, r4
	adds	r7, r7, #36
	.cfi_def_cfa_offset 36
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L909:
	.align	2
.L908:
	.word	errno(tpoff)
	.cfi_endproc
.LFE100:
	.size	strtouq, .-strtouq
	.align	2
	.global	vsscanf
	.syntax unified
	.thumb
	.thumb_func
	.type	vsscanf, %function
vsscanf:
.LFB101:
	.loc 4 187 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 376
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #380
	.cfi_def_cfa_offset 392
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	add	r3, r7, #12
	str	r0, [r3]
	add	r3, r7, #8
	str	r1, [r3]
	adds	r3, r7, #4
	str	r2, [r3]
	.loc 4 187 0
	movw	r3, #:lower16:__stack_chk_guard
	movt	r3, #:upper16:__stack_chk_guard
	ldr	r3, [r3]
	str	r3, [r7, #372]
	.loc 4 189 0
	add	r3, r7, #24
	add	r2, r7, #8
	ldr	r2, [r2]
	str	r2, [r3]
	.loc 4 207 0
	add	r4, r7, #20
	add	r3, r7, #12
	ldr	r0, [r3]
	bl	strlen
	str	r0, [r4]
	.loc 4 209 0
	add	r3, r7, #48
	movs	r2, #0
	str	r2, [r3]
	.loc 4 210 0
	add	r3, r7, #52
	movs	r2, #0
	str	r2, [r3]
	.loc 4 211 0
	add	r3, r7, #56
	movs	r2, #0
	str	r2, [r3]
	.loc 4 212 0
	add	r3, r7, #60
	movs	r2, #0
	str	r2, [r3]
.L1028:
	.loc 4 214 0
	add	r3, r7, #24
	ldr	r3, [r3]
	add	r2, r7, #24
	adds	r1, r3, #1
	str	r1, [r2]
	ldrb	r2, [r3]	@ zero_extendqisi2
	add	r3, r7, #28
	str	r2, [r3]
	.loc 4 215 0
	add	r3, r7, #28
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L911
	.loc 4 216 0
	add	r3, r7, #48
	ldr	r3, [r3]
	b	.L1031
.L911:
	.loc 4 217 0
	add	r3, r7, #28
	ldr	r3, [r3]
	uxtb	r3, r3
	mov	r0, r3
	bl	isspace
	mov	r3, r0
	cmp	r3, #0
	beq	.L913
	.loc 4 218 0
	b	.L914
.L916:
	.loc 4 219 0
	add	r3, r7, #56
	add	r2, r7, #56
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
	add	r3, r7, #20
	add	r2, r7, #20
	ldr	r2, [r2]
	subs	r2, r2, #1
	str	r2, [r3]
	add	r3, r7, #12
	add	r2, r7, #12
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
.L914:
	.loc 4 218 0
	add	r3, r7, #20
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L1033
	.loc 4 218 0 is_stmt 0 discriminator 1
	add	r3, r7, #12
	ldr	r3, [r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	isspace
	mov	r3, r0
	cmp	r3, #0
	bne	.L916
	.loc 4 220 0 is_stmt 1
	b	.L1033
.L913:
	.loc 4 222 0
	add	r3, r7, #28
	ldr	r3, [r3]
	cmp	r3, #37
	bne	.L1034
	.loc 4 224 0
	add	r3, r7, #32
	movs	r2, #0
	str	r2, [r3]
	.loc 4 225 0
	add	r3, r7, #44
	movs	r2, #0
	str	r2, [r3]
.L920:
	.loc 4 230 0
	add	r3, r7, #24
	ldr	r3, [r3]
	add	r2, r7, #24
	adds	r1, r3, #1
	str	r1, [r2]
	ldrb	r2, [r3]	@ zero_extendqisi2
	add	r3, r7, #28
	str	r2, [r3]
	.loc 4 231 0
	add	r3, r7, #28
	ldr	r3, [r3]
	subs	r3, r3, #37
	cmp	r3, #83
	bhi	.L921
	adr	r2, .L922
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L922:
	.word	.L919+1
	.word	.L921+1
	.word	.L921+1
	.word	.L921+1
	.word	.L921+1
	.word	.L923+1
	.word	.L921+1
	.word	.L921+1
	.word	.L921+1
	.word	.L921+1
	.word	.L921+1
	.word	.L924+1
	.word	.L924+1
	.word	.L924+1
	.word	.L924+1
	.word	.L924+1
	.word	.L924+1
	.word	.L924+1
	.word	.L924+1
	.word	.L924+1
	.word	.L924+1
	.word	.L921+1
	.word	.L921+1
	.word	.L921+1
	.word	.L921+1
	.word	.L921+1
	.word	.L921+1
	.word	.L921+1
	.word	.L921+1
	.word	.L921+1
	.word	.L921+1
	.word	.L921+1
	.word	.L921+1
	.word	.L921+1
	.word	.L921+1
	.word	.L921+1
	.word	.L921+1
	.word	.L921+1
	.word	.L921+1
	.word	.L921+1
	.word	.L921+1
	.word	.L921+1
	.word	.L921+1
	.word	.L921+1
	.word	.L921+1
	.word	.L921+1
	.word	.L921+1
	.word	.L921+1
	.word	.L921+1
	.word	.L921+1
	.word	.L921+1
	.word	.L925+1
	.word	.L921+1
	.word	.L921+1
	.word	.L926+1
	.word	.L921+1
	.word	.L921+1
	.word	.L921+1
	.word	.L921+1
	.word	.L921+1
	.word	.L921+1
	.word	.L921+1
	.word	.L927+1
	.word	.L928+1
	.word	.L921+1
	.word	.L921+1
	.word	.L921+1
	.word	.L929+1
	.word	.L930+1
	.word	.L921+1
	.word	.L921+1
	.word	.L931+1
	.word	.L921+1
	.word	.L932+1
	.word	.L933+1
	.word	.L934+1
	.word	.L935+1
	.word	.L921+1
	.word	.L936+1
	.word	.L921+1
	.word	.L937+1
	.word	.L921+1
	.word	.L921+1
	.word	.L925+1
	.p2align 1
.L1034:
	.loc 4 223 0
	nop
.L919:
	.loc 4 234 0
	add	r3, r7, #20
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L1035
	.loc 4 236 0
	add	r3, r7, #12
	ldr	r3, [r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	add	r3, r7, #28
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L1036
	.loc 4 238 0
	add	r3, r7, #20
	add	r2, r7, #20
	ldr	r2, [r2]
	subs	r2, r2, #1
	str	r2, [r3]
	add	r3, r7, #12
	add	r2, r7, #12
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
	.loc 4 239 0
	add	r3, r7, #56
	add	r2, r7, #56
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
	.loc 4 240 0
	b	.L917
.L923:
	.loc 4 243 0
	add	r3, r7, #44
	add	r2, r7, #44
	ldr	r2, [r2]
	orr	r2, r2, #8
	str	r2, [r3]
	add	r3, r7, #32
	add	r2, r7, #32
	ldr	r2, [r2]
	str	r2, [r3]
	.loc 4 244 0
	b	.L920
.L931:
	.loc 4 246 0
	add	r3, r7, #44
	ldr	r3, [r3]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L942
	.loc 4 247 0
	add	r3, r7, #44
	add	r2, r7, #44
	ldr	r2, [r2]
	bic	r2, r2, #1
	str	r2, [r3]
	.loc 4 248 0
	add	r3, r7, #44
	add	r2, r7, #44
	ldr	r2, [r2]
	orr	r2, r2, #1024
	str	r2, [r3]
	b	.L943
.L942:
	.loc 4 250 0
	add	r3, r7, #44
	add	r2, r7, #44
	ldr	r2, [r2]
	orr	r2, r2, #1
	str	r2, [r3]
.L943:
	add	r3, r7, #32
	add	r2, r7, #32
	ldr	r2, [r2]
	str	r2, [r3]
	.loc 4 251 0
	b	.L920
.L935:
	.loc 4 253 0
	add	r3, r7, #44
	add	r2, r7, #44
	ldr	r2, [r2]
	orr	r2, r2, #1024
	str	r2, [r3]
	add	r3, r7, #32
	add	r2, r7, #32
	ldr	r2, [r2]
	str	r2, [r3]
	.loc 4 254 0
	b	.L920
.L929:
	.loc 4 256 0
	add	r3, r7, #44
	ldr	r3, [r3]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L944
	.loc 4 257 0
	add	r3, r7, #44
	add	r2, r7, #44
	ldr	r2, [r2]
	bic	r2, r2, #4
	str	r2, [r3]
	.loc 4 258 0
	add	r3, r7, #44
	add	r2, r7, #44
	ldr	r2, [r2]
	orr	r2, r2, #16384
	str	r2, [r3]
	b	.L945
.L944:
	.loc 4 260 0
	add	r3, r7, #44
	add	r2, r7, #44
	ldr	r2, [r2]
	orr	r2, r2, #4
	str	r2, [r3]
.L945:
	add	r3, r7, #32
	add	r2, r7, #32
	ldr	r2, [r2]
	str	r2, [r3]
	.loc 4 261 0
	b	.L920
.L924:
	.loc 4 265 0
	add	r3, r7, #32
	ldr	r3, [r3]
	movs	r2, #10
	mul	r2, r2, r3
	add	r3, r7, #28
	ldr	r3, [r3]
	add	r2, r2, r3
	add	r3, r7, #32
	subs	r2, r2, #48
	str	r2, [r3]
	add	r3, r7, #44
	add	r2, r7, #44
	ldr	r2, [r2]
	str	r2, [r3]
	.loc 4 266 0
	b	.L920
.L928:
	.loc 4 272 0
	add	r3, r7, #28
	movs	r2, #3
	str	r2, [r3]
	.loc 4 273 0
	add	r3, r7, #60
	movs	r2, #10
	str	r2, [r3]
	.loc 4 274 0
	b	.L921
.L930:
	.loc 4 277 0
	add	r3, r7, #28
	movs	r2, #3
	str	r2, [r3]
	.loc 4 278 0
	add	r3, r7, #60
	movs	r2, #0
	str	r2, [r3]
	.loc 4 279 0
	b	.L921
.L933:
	.loc 4 282 0
	add	r3, r7, #28
	movs	r2, #3
	str	r2, [r3]
	.loc 4 283 0
	add	r3, r7, #44
	add	r2, r7, #44
	ldr	r2, [r2]
	orr	r2, r2, #32768
	str	r2, [r3]
	.loc 4 284 0
	add	r3, r7, #60
	movs	r2, #8
	str	r2, [r3]
	.loc 4 285 0
	b	.L921
.L937:
	.loc 4 288 0
	add	r3, r7, #28
	movs	r2, #3
	str	r2, [r3]
	.loc 4 289 0
	add	r3, r7, #44
	add	r2, r7, #44
	ldr	r2, [r2]
	orr	r2, r2, #32768
	str	r2, [r3]
	.loc 4 290 0
	add	r3, r7, #60
	movs	r2, #10
	str	r2, [r3]
	.loc 4 291 0
	b	.L921
.L925:
	.loc 4 295 0
	add	r3, r7, #44
	add	r2, r7, #44
	ldr	r2, [r2]
	orr	r2, r2, #256
	str	r2, [r3]
	.loc 4 296 0
	add	r3, r7, #28
	movs	r2, #3
	str	r2, [r3]
	.loc 4 297 0
	add	r3, r7, #44
	add	r2, r7, #44
	ldr	r2, [r2]
	orr	r2, r2, #32768
	str	r2, [r3]
	.loc 4 298 0
	add	r3, r7, #60
	movs	r2, #16
	str	r2, [r3]
	.loc 4 299 0
	b	.L921
.L936:
	.loc 4 302 0
	add	r3, r7, #28
	movs	r2, #2
	str	r2, [r3]
	.loc 4 303 0
	b	.L921
.L926:
	.loc 4 306 0
	add	r4, r7, #24
	add	r3, r7, #24
	add	r2, r7, #116
	ldr	r1, [r3]
	mov	r0, r2
	bl	__sccl
	str	r0, [r4]
	.loc 4 307 0
	add	r3, r7, #44
	add	r2, r7, #44
	ldr	r2, [r2]
	orr	r2, r2, #32
	str	r2, [r3]
	.loc 4 308 0
	add	r3, r7, #28
	movs	r2, #1
	str	r2, [r3]
	.loc 4 309 0
	b	.L921
.L927:
	.loc 4 312 0
	add	r3, r7, #44
	add	r2, r7, #44
	ldr	r2, [r2]
	orr	r2, r2, #32
	str	r2, [r3]
	.loc 4 313 0
	add	r3, r7, #28
	movs	r2, #0
	str	r2, [r3]
	.loc 4 314 0
	b	.L921
.L934:
	.loc 4 317 0
	add	r3, r7, #44
	add	r2, r7, #44
	ldr	r2, [r2]
	orr	r2, r2, #272
	str	r2, [r3]
	.loc 4 318 0
	add	r3, r7, #28
	movs	r2, #3
	str	r2, [r3]
	.loc 4 319 0
	add	r3, r7, #44
	add	r2, r7, #44
	ldr	r2, [r2]
	orr	r2, r2, #32768
	str	r2, [r3]
	.loc 4 320 0
	add	r3, r7, #60
	movs	r2, #16
	str	r2, [r3]
	.loc 4 321 0
	b	.L921
.L932:
	.loc 4 324 0
	add	r3, r7, #52
	add	r2, r7, #52
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
	.loc 4 325 0
	add	r3, r7, #44
	ldr	r3, [r3]
	and	r3, r3, #8
	cmp	r3, #0
	bne	.L1037
	.loc 4 327 0
	add	r3, r7, #44
	ldr	r3, [r3]
	and	r3, r3, #16384
	cmp	r3, #0
	beq	.L947
	.loc 4 328 0
	adds	r3, r7, #4
	ldr	r3, [r3]
	adds	r1, r3, #4
	adds	r2, r7, #4
	str	r1, [r2]
	ldr	r3, [r3]
	add	r2, r7, #56
	ldr	r2, [r2]
	uxtb	r2, r2
	strb	r2, [r3]
	.loc 4 337 0
	b	.L917
.L947:
	.loc 4 329 0
	add	r3, r7, #44
	ldr	r3, [r3]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L949
	.loc 4 330 0
	adds	r3, r7, #4
	ldr	r3, [r3]
	adds	r1, r3, #4
	adds	r2, r7, #4
	str	r1, [r2]
	ldr	r3, [r3]
	add	r2, r7, #56
	ldr	r2, [r2]
	sxth	r2, r2
	strh	r2, [r3]	@ movhi
	.loc 4 337 0
	b	.L917
.L949:
	.loc 4 331 0
	add	r3, r7, #44
	ldr	r3, [r3]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L950
	.loc 4 332 0
	adds	r3, r7, #4
	ldr	r3, [r3]
	adds	r1, r3, #4
	adds	r2, r7, #4
	str	r1, [r2]
	ldr	r3, [r3]
	add	r2, r7, #56
	ldr	r2, [r2]
	str	r2, [r3]
	.loc 4 337 0
	b	.L917
.L950:
	.loc 4 333 0
	add	r3, r7, #44
	ldr	r3, [r3]
	and	r3, r3, #1024
	cmp	r3, #0
	beq	.L951
	.loc 4 334 0
	adds	r3, r7, #4
	ldr	r3, [r3]
	adds	r1, r3, #4
	adds	r2, r7, #4
	str	r1, [r2]
	ldr	r2, [r3]
	add	r3, r7, #56
	ldr	r3, [r3]
	asr	r4, r3, #31
	strd	r3, [r2]
	.loc 4 337 0
	b	.L917
.L951:
	.loc 4 336 0
	adds	r3, r7, #4
	ldr	r3, [r3]
	adds	r1, r3, #4
	adds	r2, r7, #4
	str	r1, [r2]
	ldr	r3, [r3]
	add	r2, r7, #56
	ldr	r2, [r2]
	str	r2, [r3]
	.loc 4 337 0
	b	.L917
.L921:
	.loc 4 343 0
	add	r3, r7, #20
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L1038
	.loc 4 350 0
	add	r3, r7, #44
	ldr	r3, [r3]
	and	r3, r3, #32
	cmp	r3, #0
	bne	.L953
	.loc 4 351 0
	b	.L954
.L956:
	.loc 4 352 0
	add	r3, r7, #56
	add	r2, r7, #56
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
	.loc 4 353 0
	add	r3, r7, #20
	add	r2, r7, #20
	ldr	r2, [r2]
	subs	r2, r2, #1
	str	r2, [r3]
	add	r3, r7, #20
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L1039
	.loc 4 354 0
	add	r3, r7, #12
	add	r2, r7, #12
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
.L954:
	.loc 4 351 0
	add	r3, r7, #12
	ldr	r3, [r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	isspace
	mov	r3, r0
	cmp	r3, #0
	bne	.L956
.L953:
	.loc 4 368 0
	add	r3, r7, #28
	ldr	r3, [r3]
	cmp	r3, #3
	bhi	.L1028
	adr	r2, .L958
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L958:
	.word	.L957+1
	.word	.L959+1
	.word	.L960+1
	.word	.L961+1
	.p2align 1
.L957:
	.loc 4 372 0
	add	r3, r7, #32
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L962
	.loc 4 373 0
	add	r3, r7, #32
	movs	r2, #1
	str	r2, [r3]
.L962:
	.loc 4 374 0
	add	r3, r7, #44
	ldr	r3, [r3]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L963
.LBB40:
	.loc 4 375 0
	add	r3, r7, #64
	movs	r2, #0
	str	r2, [r3]
	.loc 4 377 0
	add	r3, r7, #40
	add	r2, r7, #20
	ldr	r2, [r2]
	str	r2, [r3]
	add	r2, r7, #40
	add	r3, r7, #32
	ldr	r2, [r2]
	ldr	r3, [r3]
	cmp	r2, r3
	bge	.L964
	.loc 4 378 0
	add	r3, r7, #64
	add	r1, r7, #64
	add	r2, r7, #40
	ldr	r1, [r1]
	ldr	r2, [r2]
	add	r2, r2, r1
	str	r2, [r3]
	.loc 4 379 0
	add	r3, r7, #32
	add	r1, r7, #32
	add	r2, r7, #40
	ldr	r1, [r1]
	ldr	r2, [r2]
	subs	r2, r1, r2
	str	r2, [r3]
	.loc 4 380 0
	add	r3, r7, #40
	ldr	r2, [r3]
	add	r3, r7, #12
	add	r1, r7, #12
	ldr	r1, [r1]
	add	r2, r2, r1
	str	r2, [r3]
	.loc 4 381 0
	add	r3, r7, #64
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L1040
	.loc 4 382 0
	b	.L939
.L964:
	.loc 4 385 0
	add	r3, r7, #64
	add	r1, r7, #64
	add	r2, r7, #32
	ldr	r1, [r1]
	ldr	r2, [r2]
	add	r2, r2, r1
	str	r2, [r3]
	.loc 4 386 0
	add	r3, r7, #20
	add	r1, r7, #20
	add	r2, r7, #32
	ldr	r1, [r1]
	ldr	r2, [r2]
	subs	r2, r1, r2
	str	r2, [r3]
	.loc 4 387 0
	add	r3, r7, #32
	ldr	r2, [r3]
	add	r3, r7, #12
	add	r1, r7, #12
	ldr	r1, [r1]
	add	r2, r2, r1
	str	r2, [r3]
	.loc 4 388 0
	b	.L966
.L1040:
	.loc 4 383 0
	nop
.L966:
	.loc 4 391 0
	add	r3, r7, #56
	add	r1, r7, #56
	add	r2, r7, #64
	ldr	r1, [r1]
	ldr	r2, [r2]
	add	r2, r2, r1
	str	r2, [r3]
.LBE40:
	b	.L967
.L963:
	.loc 4 393 0
	adds	r3, r7, #4
	ldr	r3, [r3]
	adds	r1, r3, #4
	adds	r2, r7, #4
	str	r1, [r2]
	ldr	r1, [r3]
	add	r2, r7, #32
	add	r3, r7, #12
	ldr	r2, [r2]
	ldr	r0, [r3]
	bl	bcopy
	.loc 4 394 0
	add	r3, r7, #20
	add	r1, r7, #20
	add	r2, r7, #32
	ldr	r1, [r1]
	ldr	r2, [r2]
	subs	r2, r1, r2
	str	r2, [r3]
	.loc 4 395 0
	add	r3, r7, #32
	ldr	r2, [r3]
	add	r3, r7, #12
	add	r1, r7, #12
	ldr	r1, [r1]
	add	r2, r2, r1
	str	r2, [r3]
	.loc 4 396 0
	add	r3, r7, #56
	add	r1, r7, #56
	add	r2, r7, #32
	ldr	r1, [r1]
	ldr	r2, [r2]
	add	r2, r2, r1
	str	r2, [r3]
	.loc 4 397 0
	add	r3, r7, #48
	add	r2, r7, #48
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
.L967:
	.loc 4 399 0
	add	r3, r7, #52
	add	r2, r7, #52
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
	.loc 4 400 0
	b	.L917
.L959:
	.loc 4 404 0
	add	r3, r7, #32
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L968
	.loc 4 405 0
	add	r3, r7, #32
	mov	r2, #-1
	str	r2, [r3]
.L968:
	.loc 4 407 0
	add	r3, r7, #44
	ldr	r3, [r3]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L969
	.loc 4 408 0
	add	r3, r7, #40
	movs	r2, #0
	str	r2, [r3]
	.loc 4 409 0
	b	.L970
.L974:
	.loc 4 410 0
	add	r3, r7, #40
	add	r2, r7, #40
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
	add	r3, r7, #20
	add	r2, r7, #20
	ldr	r2, [r2]
	subs	r2, r2, #1
	str	r2, [r3]
	add	r3, r7, #12
	add	r2, r7, #12
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
	.loc 4 411 0
	add	r3, r7, #32
	add	r2, r7, #32
	ldr	r2, [r2]
	subs	r2, r2, #1
	str	r2, [r3]
	add	r3, r7, #32
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L1041
	.loc 4 413 0
	add	r3, r7, #20
	ldr	r3, [r3]
	cmp	r3, #0
	bgt	.L970
	.loc 4 414 0
	add	r3, r7, #40
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L1042
	.loc 4 415 0
	b	.L939
.L970:
	.loc 4 409 0
	add	r3, r7, #12
	ldr	r3, [r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	add	r3, r7, #116
	ldrb	r3, [r3, r2]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L974
	b	.L972
.L1041:
	.loc 4 412 0
	nop
	b	.L972
.L1042:
	.loc 4 416 0
	nop
.L972:
	.loc 4 419 0
	add	r3, r7, #40
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L975
	.loc 4 420 0
	b	.L941
.L969:
	.loc 4 422 0
	adds	r3, r7, #4
	ldr	r3, [r3]
	adds	r1, r3, #4
	adds	r2, r7, #4
	str	r1, [r2]
	add	r2, r7, #36
	ldr	r3, [r3]
	str	r3, [r2]
	add	r3, r7, #68
	add	r2, r7, #36
	ldr	r2, [r2]
	str	r2, [r3]
	.loc 4 423 0
	b	.L976
.L980:
	.loc 4 424 0
	add	r3, r7, #20
	add	r2, r7, #20
	ldr	r2, [r2]
	subs	r2, r2, #1
	str	r2, [r3]
	.loc 4 425 0
	add	r3, r7, #36
	ldr	r3, [r3]
	add	r2, r7, #36
	adds	r1, r3, #1
	str	r1, [r2]
	add	r2, r7, #12
	ldr	r2, [r2]
	add	r1, r7, #12
	adds	r0, r2, #1
	str	r0, [r1]
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	.loc 4 426 0
	add	r3, r7, #32
	add	r2, r7, #32
	ldr	r2, [r2]
	subs	r2, r2, #1
	str	r2, [r3]
	add	r3, r7, #32
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L1043
	.loc 4 428 0
	add	r3, r7, #20
	ldr	r3, [r3]
	cmp	r3, #0
	bgt	.L976
	.loc 4 429 0
	add	r2, r7, #36
	add	r3, r7, #68
	ldr	r2, [r2]
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L1044
	.loc 4 430 0
	b	.L939
.L976:
	.loc 4 423 0
	add	r3, r7, #12
	ldr	r3, [r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	add	r3, r7, #116
	ldrb	r3, [r3, r2]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L980
	b	.L978
.L1043:
	.loc 4 427 0
	nop
	b	.L978
.L1044:
	.loc 4 431 0
	nop
.L978:
	.loc 4 434 0
	add	r3, r7, #36
	ldr	r1, [r3]
	add	r3, r7, #68
	ldr	r2, [r3]
	add	r3, r7, #40
	subs	r2, r1, r2
	str	r2, [r3]
	.loc 4 435 0
	add	r3, r7, #40
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L1045
	.loc 4 437 0
	add	r3, r7, #36
	ldr	r3, [r3]
	movs	r2, #0
	strb	r2, [r3]
	.loc 4 438 0
	add	r3, r7, #48
	add	r2, r7, #48
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
.L975:
	.loc 4 440 0
	add	r3, r7, #56
	add	r1, r7, #56
	add	r2, r7, #40
	ldr	r1, [r1]
	ldr	r2, [r2]
	add	r2, r2, r1
	str	r2, [r3]
	.loc 4 441 0
	add	r3, r7, #52
	add	r2, r7, #52
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
	.loc 4 442 0
	b	.L917
.L960:
	.loc 4 446 0
	add	r3, r7, #32
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L982
	.loc 4 447 0
	add	r3, r7, #32
	mov	r2, #-1
	str	r2, [r3]
.L982:
	.loc 4 448 0
	add	r3, r7, #44
	ldr	r3, [r3]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L983
	.loc 4 449 0
	add	r3, r7, #40
	movs	r2, #0
	str	r2, [r3]
	.loc 4 450 0
	b	.L984
.L987:
	.loc 4 451 0
	add	r3, r7, #40
	add	r2, r7, #40
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
	add	r3, r7, #20
	add	r2, r7, #20
	ldr	r2, [r2]
	subs	r2, r2, #1
	str	r2, [r3]
	add	r3, r7, #12
	add	r2, r7, #12
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
	.loc 4 452 0
	add	r3, r7, #32
	add	r2, r7, #32
	ldr	r2, [r2]
	subs	r2, r2, #1
	str	r2, [r3]
	add	r3, r7, #32
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L1046
	.loc 4 454 0
	add	r3, r7, #20
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L1047
.L984:
	.loc 4 450 0
	add	r3, r7, #12
	ldr	r3, [r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	isspace
	mov	r3, r0
	cmp	r3, #0
	beq	.L987
	b	.L986
.L1046:
	.loc 4 453 0
	nop
	b	.L986
.L1047:
	.loc 4 455 0
	nop
.L986:
	.loc 4 457 0
	add	r3, r7, #56
	add	r1, r7, #56
	add	r2, r7, #40
	ldr	r1, [r1]
	ldr	r2, [r2]
	add	r2, r2, r1
	str	r2, [r3]
	b	.L988
.L983:
	.loc 4 459 0
	adds	r3, r7, #4
	ldr	r3, [r3]
	adds	r1, r3, #4
	adds	r2, r7, #4
	str	r1, [r2]
	add	r2, r7, #36
	ldr	r3, [r3]
	str	r3, [r2]
	add	r3, r7, #68
	add	r2, r7, #36
	ldr	r2, [r2]
	str	r2, [r3]
	.loc 4 460 0
	b	.L989
.L992:
	.loc 4 461 0
	add	r3, r7, #20
	add	r2, r7, #20
	ldr	r2, [r2]
	subs	r2, r2, #1
	str	r2, [r3]
	.loc 4 462 0
	add	r3, r7, #36
	ldr	r3, [r3]
	add	r2, r7, #36
	adds	r1, r3, #1
	str	r1, [r2]
	add	r2, r7, #12
	ldr	r2, [r2]
	add	r1, r7, #12
	adds	r0, r2, #1
	str	r0, [r1]
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	.loc 4 463 0
	add	r3, r7, #32
	add	r2, r7, #32
	ldr	r2, [r2]
	subs	r2, r2, #1
	str	r2, [r3]
	add	r3, r7, #32
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L1048
	.loc 4 465 0
	add	r3, r7, #20
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L1049
.L989:
	.loc 4 460 0
	add	r3, r7, #12
	ldr	r3, [r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	isspace
	mov	r3, r0
	cmp	r3, #0
	beq	.L992
	b	.L991
.L1048:
	.loc 4 464 0
	nop
	b	.L991
.L1049:
	.loc 4 466 0
	nop
.L991:
	.loc 4 468 0
	add	r3, r7, #36
	ldr	r3, [r3]
	movs	r2, #0
	strb	r2, [r3]
	.loc 4 469 0
	add	r3, r7, #36
	ldr	r2, [r3]
	add	r3, r7, #68
	ldr	r3, [r3]
	subs	r1, r2, r3
	add	r3, r7, #56
	add	r2, r7, #56
	ldr	r2, [r2]
	add	r2, r2, r1
	str	r2, [r3]
	.loc 4 470 0
	add	r3, r7, #48
	add	r2, r7, #48
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
.L988:
	.loc 4 472 0
	add	r3, r7, #52
	add	r2, r7, #52
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
	.loc 4 473 0
	b	.L917
.L961:
	.loc 4 482 0
	add	r3, r7, #32
	add	r2, r7, #32
	ldr	r2, [r2]
	subs	r2, r2, #1
	str	r2, [r3]
	add	r3, r7, #32
	ldr	r3, [r3]
	cmp	r3, #30
	bls	.L993
	.loc 4 483 0
	add	r3, r7, #32
	movs	r2, #30
	str	r2, [r3]
.L993:
	.loc 4 484 0
	add	r3, r7, #32
	add	r2, r7, #32
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
	.loc 4 486 0
	add	r3, r7, #44
	add	r2, r7, #44
	ldr	r2, [r2]
	orr	r2, r2, #704
	str	r2, [r3]
	.loc 4 487 0
	add	r3, r7, #36
	add	r2, r7, #84
	str	r2, [r3]
	b	.L994
.L1014:
	.loc 4 488 0
	add	r3, r7, #12
	ldr	r3, [r3]
	ldrb	r2, [r3]	@ zero_extendqisi2
	add	r3, r7, #28
	str	r2, [r3]
	.loc 4 493 0
	add	r3, r7, #28
	ldr	r3, [r3]
	subs	r3, r3, #43
	cmp	r3, #77
	bhi	.L1050
	adr	r2, .L997
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L997:
	.word	.L996+1
	.word	.L1050+1
	.word	.L996+1
	.word	.L1050+1
	.word	.L1050+1
	.word	.L998+1
	.word	.L999+1
	.word	.L999+1
	.word	.L999+1
	.word	.L999+1
	.word	.L999+1
	.word	.L999+1
	.word	.L999+1
	.word	.L1000+1
	.word	.L1000+1
	.word	.L1050+1
	.word	.L1050+1
	.word	.L1050+1
	.word	.L1050+1
	.word	.L1050+1
	.word	.L1050+1
	.word	.L1050+1
	.word	.L1001+1
	.word	.L1001+1
	.word	.L1001+1
	.word	.L1001+1
	.word	.L1001+1
	.word	.L1001+1
	.word	.L1050+1
	.word	.L1050+1
	.word	.L1050+1
	.word	.L1050+1
	.word	.L1050+1
	.word	.L1050+1
	.word	.L1050+1
	.word	.L1050+1
	.word	.L1050+1
	.word	.L1050+1
	.word	.L1050+1
	.word	.L1050+1
	.word	.L1050+1
	.word	.L1050+1
	.word	.L1050+1
	.word	.L1050+1
	.word	.L1050+1
	.word	.L1002+1
	.word	.L1050+1
	.word	.L1050+1
	.word	.L1050+1
	.word	.L1050+1
	.word	.L1050+1
	.word	.L1050+1
	.word	.L1050+1
	.word	.L1050+1
	.word	.L1001+1
	.word	.L1001+1
	.word	.L1001+1
	.word	.L1001+1
	.word	.L1001+1
	.word	.L1001+1
	.word	.L1050+1
	.word	.L1050+1
	.word	.L1050+1
	.word	.L1050+1
	.word	.L1050+1
	.word	.L1050+1
	.word	.L1050+1
	.word	.L1050+1
	.word	.L1050+1
	.word	.L1050+1
	.word	.L1050+1
	.word	.L1050+1
	.word	.L1050+1
	.word	.L1050+1
	.word	.L1050+1
	.word	.L1050+1
	.word	.L1050+1
	.word	.L1002+1
	.p2align 1
.L998:
	.loc 4 508 0
	add	r3, r7, #60
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L1003
	.loc 4 509 0
	add	r3, r7, #60
	movs	r2, #8
	str	r2, [r3]
	.loc 4 510 0
	add	r3, r7, #44
	add	r2, r7, #44
	ldr	r2, [r2]
	orr	r2, r2, #256
	str	r2, [r3]
.L1003:
	.loc 4 512 0
	add	r3, r7, #44
	ldr	r3, [r3]
	and	r3, r3, #512
	cmp	r3, #0
	beq	.L1004
	.loc 4 513 0
	add	r3, r7, #44
	add	r2, r7, #44
	ldr	r2, [r2]
	bic	r2, r2, #704
	str	r2, [r3]
	.loc 4 516 0
	b	.L1006
.L1004:
	.loc 4 515 0
	add	r3, r7, #44
	add	r2, r7, #44
	ldr	r2, [r2]
	bic	r2, r2, #448
	str	r2, [r3]
	.loc 4 516 0
	b	.L1006
.L999:
	.loc 4 521 0
	movw	r3, #:lower16:basefix.4949
	movt	r3, #:upper16:basefix.4949
	add	r2, r7, #60
	ldr	r2, [r2]
	ldrsh	r2, [r3, r2, lsl #1]
	add	r3, r7, #60
	str	r2, [r3]
	.loc 4 522 0
	add	r3, r7, #44
	add	r2, r7, #44
	ldr	r2, [r2]
	bic	r2, r2, #448
	str	r2, [r3]
	.loc 4 523 0
	b	.L1006
.L1000:
	.loc 4 527 0
	movw	r3, #:lower16:basefix.4949
	movt	r3, #:upper16:basefix.4949
	add	r2, r7, #60
	ldr	r2, [r2]
	ldrsh	r2, [r3, r2, lsl #1]
	add	r3, r7, #60
	str	r2, [r3]
	.loc 4 528 0
	add	r3, r7, #60
	ldr	r3, [r3]
	cmp	r3, #8
	ble	.L1051
	.loc 4 530 0
	add	r3, r7, #44
	add	r2, r7, #44
	ldr	r2, [r2]
	bic	r2, r2, #448
	str	r2, [r3]
	.loc 4 531 0
	b	.L1006
.L1001:
	.loc 4 539 0
	add	r3, r7, #60
	ldr	r3, [r3]
	cmp	r3, #10
	ble	.L1052
	.loc 4 541 0
	add	r3, r7, #44
	add	r2, r7, #44
	ldr	r2, [r2]
	bic	r2, r2, #448
	str	r2, [r3]
	.loc 4 542 0
	b	.L1006
.L996:
	.loc 4 546 0
	add	r3, r7, #44
	ldr	r3, [r3]
	and	r3, r3, #64
	cmp	r3, #0
	beq	.L1053
	.loc 4 547 0
	add	r3, r7, #44
	add	r2, r7, #44
	ldr	r2, [r2]
	bic	r2, r2, #64
	str	r2, [r3]
	.loc 4 548 0
	b	.L1006
.L1002:
	.loc 4 554 0
	add	r3, r7, #44
	ldr	r3, [r3]
	and	r3, r3, #256
	cmp	r3, #0
	beq	.L1054
	.loc 4 554 0 is_stmt 0 discriminator 1
	add	r3, r7, #84
	adds	r3, r3, #1
	add	r2, r7, #36
	ldr	r2, [r2]
	cmp	r3, r2
	bne	.L1054
	.loc 4 555 0 is_stmt 1
	add	r3, r7, #60
	movs	r2, #16
	str	r2, [r3]
	.loc 4 556 0
	add	r3, r7, #44
	add	r2, r7, #44
	ldr	r2, [r2]
	bic	r2, r2, #256
	str	r2, [r3]
	.loc 4 557 0
	b	.L1006
.L1051:
	.loc 4 529 0
	nop
	b	.L1050
.L1052:
	.loc 4 540 0
	nop
	b	.L1050
.L1053:
	.loc 4 550 0
	nop
	b	.L1050
.L1054:
	.loc 4 559 0
	nop
	.loc 4 566 0
	b	.L1050
.L1006:
	.loc 4 571 0
	add	r3, r7, #36
	ldr	r3, [r3]
	add	r2, r7, #36
	adds	r1, r3, #1
	str	r1, [r2]
	add	r2, r7, #28
	ldr	r2, [r2]
	uxtb	r2, r2
	strb	r2, [r3]
	.loc 4 572 0
	add	r3, r7, #20
	add	r2, r7, #20
	ldr	r2, [r2]
	subs	r2, r2, #1
	str	r2, [r3]
	add	r3, r7, #20
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L1055
	.loc 4 573 0
	add	r3, r7, #12
	add	r2, r7, #12
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
	.loc 4 487 0
	add	r3, r7, #32
	add	r2, r7, #32
	ldr	r2, [r2]
	subs	r2, r2, #1
	str	r2, [r3]
.L994:
	.loc 4 487 0 is_stmt 0 discriminator 1
	add	r3, r7, #32
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L1014
	b	.L1011
.L1050:
	.loc 4 566 0 is_stmt 1
	nop
	b	.L1011
.L1055:
	.loc 4 575 0
	nop
.L1011:
	.loc 4 583 0
	add	r3, r7, #44
	ldr	r3, [r3]
	and	r3, r3, #128
	cmp	r3, #0
	beq	.L1015
	.loc 4 584 0
	add	r3, r7, #84
	add	r2, r7, #36
	ldr	r2, [r2]
	cmp	r2, r3
	bls	.L1056
	.loc 4 585 0
	add	r3, r7, #12
	add	r2, r7, #12
	ldr	r2, [r2]
	subs	r2, r2, #1
	str	r2, [r3]
	.loc 4 586 0
	add	r3, r7, #20
	add	r2, r7, #20
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
	.loc 4 588 0
	b	.L1056
.L1015:
	.loc 4 590 0
	add	r3, r7, #36
	ldr	r3, [r3]
	subs	r3, r3, #1
	ldrb	r2, [r3]	@ zero_extendqisi2
	add	r3, r7, #28
	str	r2, [r3]
	.loc 4 591 0
	add	r3, r7, #28
	ldr	r3, [r3]
	cmp	r3, #120
	beq	.L1017
	.loc 4 591 0 is_stmt 0 discriminator 1
	add	r3, r7, #28
	ldr	r3, [r3]
	cmp	r3, #88
	bne	.L1018
.L1017:
	.loc 4 592 0 is_stmt 1
	add	r3, r7, #36
	add	r2, r7, #36
	ldr	r2, [r2]
	subs	r2, r2, #1
	str	r2, [r3]
	.loc 4 593 0
	add	r3, r7, #12
	add	r2, r7, #12
	ldr	r2, [r2]
	subs	r2, r2, #1
	str	r2, [r3]
	.loc 4 594 0
	add	r3, r7, #20
	add	r2, r7, #20
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
.L1018:
	.loc 4 596 0
	add	r3, r7, #44
	ldr	r3, [r3]
	and	r3, r3, #8
	cmp	r3, #0
	bne	.L1019
.LBB41:
	.loc 4 599 0
	add	r3, r7, #36
	ldr	r3, [r3]
	movs	r2, #0
	strb	r2, [r3]
	.loc 4 600 0
	add	r3, r7, #44
	ldr	r3, [r3]
	and	r3, r3, #32768
	cmp	r3, #0
	bne	.L1020
	.loc 4 601 0
	add	r3, r7, #60
	add	r0, r7, #84
	ldr	r2, [r3]
	movs	r1, #0
	bl	strtoq
	mov	r3, r0
	mov	r4, r1
	add	r2, r7, #72
	strd	r3, [r2]
	b	.L1021
.L1020:
	.loc 4 603 0
	add	r4, r7, #72
	add	r3, r7, #60
	add	r0, r7, #84
	ldr	r2, [r3]
	movs	r1, #0
	bl	strtouq
	strd	r0, [r4]
.L1021:
	.loc 4 604 0
	add	r3, r7, #44
	ldr	r3, [r3]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L1022
	.loc 4 605 0
	adds	r3, r7, #4
	ldr	r3, [r3]
	adds	r1, r3, #4
	adds	r2, r7, #4
	str	r1, [r2]
	ldr	r3, [r3]
	.loc 4 606 0
	add	r2, r7, #72
	ldr	r2, [r2]
	.loc 4 605 0
	str	r2, [r3]
	b	.L1023
.L1022:
	.loc 4 607 0
	add	r3, r7, #44
	ldr	r3, [r3]
	and	r3, r3, #16384
	cmp	r3, #0
	beq	.L1024
	.loc 4 608 0
	adds	r3, r7, #4
	ldr	r3, [r3]
	adds	r1, r3, #4
	adds	r2, r7, #4
	str	r1, [r2]
	ldr	r3, [r3]
	add	r2, r7, #72
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	b	.L1023
.L1024:
	.loc 4 609 0
	add	r3, r7, #44
	ldr	r3, [r3]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L1025
	.loc 4 610 0
	adds	r3, r7, #4
	ldr	r3, [r3]
	adds	r1, r3, #4
	adds	r2, r7, #4
	str	r1, [r2]
	ldr	r3, [r3]
	add	r2, r7, #72
	ldrsh	r2, [r2]
	strh	r2, [r3]	@ movhi
	b	.L1023
.L1025:
	.loc 4 611 0
	add	r3, r7, #44
	ldr	r3, [r3]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L1026
	.loc 4 612 0
	adds	r3, r7, #4
	ldr	r3, [r3]
	adds	r1, r3, #4
	adds	r2, r7, #4
	str	r1, [r2]
	ldr	r3, [r3]
	add	r2, r7, #72
	ldr	r2, [r2]
	str	r2, [r3]
	b	.L1023
.L1026:
	.loc 4 613 0
	add	r3, r7, #44
	ldr	r3, [r3]
	and	r3, r3, #1024
	cmp	r3, #0
	beq	.L1027
	.loc 4 614 0
	adds	r3, r7, #4
	ldr	r3, [r3]
	adds	r1, r3, #4
	adds	r2, r7, #4
	str	r1, [r2]
	ldr	r2, [r3]
	add	r3, r7, #72
	ldrd	r3, [r3]
	strd	r3, [r2]
	b	.L1023
.L1027:
	.loc 4 616 0
	adds	r3, r7, #4
	ldr	r3, [r3]
	adds	r1, r3, #4
	adds	r2, r7, #4
	str	r1, [r2]
	ldr	r3, [r3]
	add	r2, r7, #72
	ldr	r2, [r2]
	str	r2, [r3]
.L1023:
	.loc 4 617 0
	add	r3, r7, #48
	add	r2, r7, #48
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
.L1019:
.LBE41:
	.loc 4 619 0
	add	r3, r7, #36
	ldr	r2, [r3]
	add	r3, r7, #84
	subs	r1, r2, r3
	add	r3, r7, #56
	add	r2, r7, #56
	ldr	r2, [r2]
	add	r2, r2, r1
	str	r2, [r3]
	.loc 4 620 0
	add	r3, r7, #52
	add	r2, r7, #52
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
	.loc 4 621 0
	b	.L917
.L1033:
	.loc 4 220 0
	nop
	b	.L1028
.L1037:
	.loc 4 326 0
	nop
.L917:
	.loc 4 624 0
	b	.L1028
.L1035:
	.loc 4 235 0
	nop
	b	.L939
.L1038:
	.loc 4 344 0
	nop
	b	.L939
.L1039:
	.loc 4 356 0
	nop
.L939:
	.loc 4 626 0
	add	r3, r7, #52
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L1029
	.loc 4 626 0 is_stmt 0 discriminator 1
	add	r3, r7, #48
	ldr	r3, [r3]
	b	.L1031
.L1029:
	.loc 4 626 0 discriminator 2
	mov	r3, #-1
	b	.L1031
.L1036:
	.loc 4 237 0 is_stmt 1
	nop
	b	.L941
.L1045:
	.loc 4 436 0
	nop
	b	.L941
.L1056:
	.loc 4 588 0
	nop
.L941:
	.loc 4 628 0
	add	r3, r7, #48
	ldr	r3, [r3]
.L1031:
	.loc 4 629 0 discriminator 5
	mov	r0, r3
	movw	r3, #:lower16:__stack_chk_guard
	movt	r3, #:upper16:__stack_chk_guard
	ldr	r2, [r7, #372]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L1032
	.loc 4 629 0 is_stmt 0
	bl	__stack_chk_fail
.L1032:
	add	r7, r7, #380
	.cfi_def_cfa_offset 12
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r7, pc}
	.cfi_endproc
.LFE101:
	.size	vsscanf, .-vsscanf
	.align	2
	.global	scanf
	.syntax unified
	.thumb
	.thumb_func
	.type	scanf, %function
scanf:
.LFB102:
	.loc 1 2368 0 is_stmt 1
	.cfi_startproc
	@ args = 4, pretend = 16, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 1
	push	{r0, r1, r2, r3}
	.cfi_def_cfa_offset 16
	.cfi_offset 0, -16
	.cfi_offset 1, -12
	.cfi_offset 2, -8
	.cfi_offset 3, -4
	push	{r7, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 7, -24
	.cfi_offset 14, -20
	sub	sp, sp, #16
	.cfi_def_cfa_offset 40
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	ldr	r3, [r7, #24]
	str	r3, [r7, #4]
	.loc 1 2368 0
	movw	r3, #:lower16:__stack_chk_guard
	movt	r3, #:upper16:__stack_chk_guard
	ldr	r3, [r3]
	str	r3, [r7, #12]
	.loc 1 2370 0
	add	r3, r7, #28
	str	r3, [r7, #8]
	.loc 1 2372 0
	movw	r3, #:lower16:stdin_addr
	movt	r3, #:upper16:stdin_addr
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	ldr	r1, [r7, #4]
	mov	r0, r3
	bl	vsscanf
	mov	r3, r0
	.loc 1 2373 0
	mov	r0, r3
	movw	r3, #:lower16:__stack_chk_guard
	movt	r3, #:upper16:__stack_chk_guard
	ldr	r2, [r7, #12]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L1059
	bl	__stack_chk_fail
.L1059:
	adds	r7, r7, #16
	.cfi_def_cfa_offset 24
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, lr}
	.cfi_restore 14
	.cfi_restore 7
	.cfi_def_cfa_offset 16
	add	sp, sp, #16
	.cfi_restore 3
	.cfi_restore 2
	.cfi_restore 1
	.cfi_restore 0
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE102:
	.size	scanf, .-scanf
	.align	2
	.global	sscanf
	.syntax unified
	.thumb
	.thumb_func
	.type	sscanf, %function
sscanf:
.LFB103:
	.loc 1 2375 0
	.cfi_startproc
	@ args = 4, pretend = 12, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 1
	push	{r1, r2, r3}
	.cfi_def_cfa_offset 12
	.cfi_offset 1, -12
	.cfi_offset 2, -8
	.cfi_offset 3, -4
	push	{r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 7, -20
	.cfi_offset 14, -16
	sub	sp, sp, #20
	.cfi_def_cfa_offset 40
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	ldr	r3, [r7, #28]
	str	r3, [r7]
	.loc 1 2375 0
	movw	r3, #:lower16:__stack_chk_guard
	movt	r3, #:upper16:__stack_chk_guard
	ldr	r3, [r3]
	str	r3, [r7, #12]
	.loc 1 2377 0
	add	r3, r7, #32
	str	r3, [r7, #8]
	.loc 1 2379 0
	ldr	r2, [r7, #8]
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	vsscanf
	mov	r3, r0
	.loc 1 2380 0
	mov	r0, r3
	movw	r3, #:lower16:__stack_chk_guard
	movt	r3, #:upper16:__stack_chk_guard
	ldr	r2, [r7, #12]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L1062
	bl	__stack_chk_fail
.L1062:
	adds	r7, r7, #20
	.cfi_def_cfa_offset 20
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, lr}
	.cfi_restore 14
	.cfi_restore 7
	.cfi_def_cfa_offset 12
	add	sp, sp, #12
	.cfi_restore 3
	.cfi_restore 2
	.cfi_restore 1
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE103:
	.size	sscanf, .-sscanf
	.align	2
	.global	__isoc99_sscanf
	.syntax unified
	.thumb
	.thumb_func
	.type	__isoc99_sscanf, %function
__isoc99_sscanf:
.LFB104:
	.loc 1 2382 0
	.cfi_startproc
	@ args = 4, pretend = 12, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 1
	push	{r1, r2, r3}
	.cfi_def_cfa_offset 12
	.cfi_offset 1, -12
	.cfi_offset 2, -8
	.cfi_offset 3, -4
	push	{r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 7, -20
	.cfi_offset 14, -16
	sub	sp, sp, #20
	.cfi_def_cfa_offset 40
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	ldr	r3, [r7, #28]
	str	r3, [r7]
	.loc 1 2382 0
	movw	r3, #:lower16:__stack_chk_guard
	movt	r3, #:upper16:__stack_chk_guard
	ldr	r3, [r3]
	str	r3, [r7, #12]
	.loc 1 2384 0
	add	r3, r7, #32
	str	r3, [r7, #8]
	.loc 1 2386 0
	ldr	r2, [r7, #8]
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	vsscanf
	mov	r3, r0
	.loc 1 2387 0
	mov	r0, r3
	movw	r3, #:lower16:__stack_chk_guard
	movt	r3, #:upper16:__stack_chk_guard
	ldr	r2, [r7, #12]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L1065
	bl	__stack_chk_fail
.L1065:
	adds	r7, r7, #20
	.cfi_def_cfa_offset 20
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, lr}
	.cfi_restore 14
	.cfi_restore 7
	.cfi_def_cfa_offset 12
	add	sp, sp, #12
	.cfi_restore 3
	.cfi_restore 2
	.cfi_restore 1
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE104:
	.size	__isoc99_sscanf, .-__isoc99_sscanf
	.align	2
	.global	__drand48_iterate
	.syntax unified
	.thumb
	.thumb_func
	.type	__drand48_iterate, %function
__drand48_iterate:
.LFB105:
	.loc 1 2390 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6, r7, r8, r9}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 9, -4
	sub	sp, sp, #24
	.cfi_def_cfa_offset 48
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 2395 0
	ldr	r2, [r7]
	ldrh	r2, [r2, #14]
	cmp	r2, #0
	bne	.L1067
	.loc 1 2397 0
	ldr	r0, [r7]
	adr	r2, .L1069
	ldrd	r1, [r2]
	strd	r1, [r0, #16]
	.loc 1 2398 0
	ldr	r2, [r7]
	movs	r1, #11
	strh	r1, [r2, #12]	@ movhi
	.loc 1 2399 0
	ldr	r2, [r7]
	movs	r1, #1
	strh	r1, [r2, #14]	@ movhi
.L1067:
	.loc 1 2406 0
	ldr	r2, [r7, #4]
	adds	r2, r2, #4
	ldrh	r2, [r2]
	uxth	r1, r2
	mov	r2, #0
	movs	r6, r1
	movs	r5, #0
	ldr	r2, [r7, #4]
	adds	r2, r2, #2
	ldrh	r2, [r2]
	lsls	r2, r2, #16
	mov	r1, r2
	asr	r2, r1, #31
	orr	r5, r5, r1
	orr	r6, r6, r2
	ldr	r2, [r7, #4]
	ldrh	r2, [r2]
	uxth	r1, r2
	mov	r2, #0
	orr	r1, r1, r5
	orr	r2, r2, r6
	strd	r1, [r7, #8]
	.loc 1 2408 0
	ldr	r2, [r7]
	ldrd	r1, [r2, #16]
	ldr	r0, [r7, #8]
	mul	r5, r2, r0
	ldr	r0, [r7, #12]
	mul	r0, r1, r0
	add	r0, r0, r5
	ldr	r5, [r7, #8]
	umull	r1, r2, r5, r1
	add	r0, r0, r2
	mov	r2, r0
	ldr	r0, [r7]
	ldrh	r0, [r0, #12]
	uxth	r5, r0
	mov	r6, #0
	adds	r1, r1, r5
	adc	r2, r2, r6
	strd	r1, [r7, #16]
	.loc 1 2410 0
	ldrh	r1, [r7, #16]
	ldr	r2, [r7, #4]
	strh	r1, [r2]	@ movhi
	.loc 1 2411 0
	ldr	r2, [r7, #4]
	adds	r0, r2, #2
	ldrd	r1, [r7, #16]
	lsrs	r3, r1, #16
	orr	r3, r3, r2, lsl #16
	lsrs	r4, r2, #16
	uxth	r3, r3
	strh	r3, [r0]	@ movhi
	.loc 1 2412 0
	ldr	r3, [r7, #4]
	adds	r2, r3, #4
	ldrd	r3, [r7, #16]
	mov	r8, r4
	mov	r9, #0
	uxth	r3, r8
	strh	r3, [r2]	@ movhi
	.loc 1 2414 0
	movs	r3, #0
	.loc 1 2415 0
	mov	r0, r3
	adds	r7, r7, #24
	.cfi_def_cfa_offset 24
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9}
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
.L1070:
	.align	3
.L1069:
	.word	-554899859
	.word	5
	.cfi_endproc
.LFE105:
	.size	__drand48_iterate, .-__drand48_iterate
	.global	__aeabi_dsub
	.align	2
	.global	__erand48_r
	.syntax unified
	.thumb
	.thumb_func
	.type	__erand48_r, %function
__erand48_r:
.LFB106:
	.loc 1 2419 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #28
	.cfi_def_cfa_offset 40
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 1 2423 0
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #12]
	bl	__drand48_iterate
	mov	r3, r0
	cmp	r3, #0
	bge	.L1072
	.loc 1 2424 0
	mov	r3, #-1
	b	.L1071
.L1072:
	.loc 1 2426 0
	ldrb	r3, [r7, #23]
	bfc	r3, #7, #1
	strb	r3, [r7, #23]
	.loc 1 2427 0
	ldrh	r3, [r7, #22]	@ movhi
	movw	r2, #1023
	bfi	r3, r2, #4, #11
	strh	r3, [r7, #22]	@ movhi
	.loc 1 2428 0
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	ldrh	r3, [r3]
	lsls	r3, r3, #4
	ldr	r2, [r7, #12]
	adds	r2, r2, #2
	ldrh	r2, [r2]
	lsrs	r2, r2, #12
	uxth	r2, r2
	orrs	r3, r3, r2
	ubfx	r2, r3, #0, #20
	ldr	r3, [r7, #20]
	bfi	r3, r2, #0, #20
	str	r3, [r7, #20]
	.loc 1 2429 0
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	ldrh	r3, [r3]
	lsls	r2, r3, #20
	ldr	r3, [r7, #12]
	ldrh	r3, [r3]
	lsls	r3, r3, #4
	orrs	r3, r3, r2
	str	r3, [r7, #16]
	.loc 1 2431 0
	ldrd	r0, [r7, #16]
	mov	r2, #0
	mov	r3, #0
	movt	r3, 16368
	bl	__aeabi_dsub
	mov	r3, r0
	mov	r4, r1
	ldr	r2, [r7, #4]
	strd	r3, [r2]
.L1071:
	.loc 1 2432 0
	mov	r0, r3
	adds	r7, r7, #28
	.cfi_def_cfa_offset 12
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r7, pc}
	.cfi_endproc
.LFE106:
	.size	__erand48_r, .-__erand48_r
	.align	2
	.global	drand48
	.syntax unified
	.thumb
	.thumb_func
	.type	drand48, %function
drand48:
.LFB107:
	.loc 1 2434 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 2434 0
	movw	r3, #:lower16:__stack_chk_guard
	movt	r3, #:upper16:__stack_chk_guard
	ldr	r3, [r3]
	str	r3, [r7, #12]
	.loc 1 2437 0
	mov	r3, r7
	mov	r2, r3
	movw	r1, #:lower16:__prlibc_drand48_data
	movt	r1, #:upper16:__prlibc_drand48_data
	movw	r0, #:lower16:__prlibc_drand48_data
	movt	r0, #:upper16:__prlibc_drand48_data
	bl	__erand48_r
	.loc 1 2439 0
	ldrd	r3, [r7]
	.loc 1 2440 0
	mov	r0, r3
	mov	r1, r4
	movw	r3, #:lower16:__stack_chk_guard
	movt	r3, #:upper16:__stack_chk_guard
	ldr	r2, [r7, #12]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L1076
	bl	__stack_chk_fail
.L1076:
	adds	r7, r7, #20
	.cfi_def_cfa_offset 12
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r7, pc}
	.cfi_endproc
.LFE107:
	.size	drand48, .-drand48
	.align	2
	.global	__srand48_r
	.syntax unified
	.thumb
	.thumb_func
	.type	__srand48_r, %function
__srand48_r:
.LFB108:
	.loc 1 2443 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r7}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 7, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 2448 0
	ldr	r3, [r7, #4]
	asrs	r3, r3, #16
	uxth	r2, r3
	ldr	r3, [r7]
	strh	r2, [r3, #4]	@ movhi
	.loc 1 2449 0
	ldr	r3, [r7, #4]
	uxth	r2, r3
	ldr	r3, [r7]
	strh	r2, [r3, #2]	@ movhi
	.loc 1 2450 0
	ldr	r3, [r7]
	movw	r2, #13070
	strh	r2, [r3]	@ movhi
	.loc 1 2452 0
	ldr	r2, [r7]
	adr	r4, .L1079
	ldrd	r3, [r4]
	strd	r3, [r2, #16]
	.loc 1 2453 0
	ldr	r3, [r7]
	movs	r2, #11
	strh	r2, [r3, #12]	@ movhi
	.loc 1 2454 0
	ldr	r3, [r7]
	movs	r2, #1
	strh	r2, [r3, #14]	@ movhi
	.loc 1 2456 0
	movs	r3, #0
	.loc 1 2457 0
	mov	r0, r3
	adds	r7, r7, #8
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r7}
	.cfi_restore 7
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
.L1080:
	.align	3
.L1079:
	.word	-554899859
	.word	5
	.cfi_endproc
.LFE108:
	.size	__srand48_r, .-__srand48_r
	.align	2
	.global	__nrand48_r
	.syntax unified
	.thumb
	.thumb_func
	.type	__nrand48_r, %function
__nrand48_r:
.LFB109:
	.loc 1 2461 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 1 2463 0
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #12]
	bl	__drand48_iterate
	mov	r3, r0
	cmp	r3, #0
	bge	.L1082
	.loc 1 2464 0
	mov	r3, #-1
	b	.L1083
.L1082:
	.loc 1 2468 0
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	ldrh	r3, [r3]
	lsls	r3, r3, #15
	ldr	r2, [r7, #12]
	adds	r2, r2, #2
	ldrh	r2, [r2]
	lsrs	r2, r2, #1
	uxth	r2, r2
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	.loc 1 2472 0
	movs	r3, #0
.L1083:
	.loc 1 2473 0
	mov	r0, r3
	adds	r7, r7, #16
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE109:
	.size	__nrand48_r, .-__nrand48_r
	.align	2
	.global	lrand48
	.syntax unified
	.thumb
	.thumb_func
	.type	lrand48, %function
lrand48:
.LFB110:
	.loc 1 2475 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 2475 0
	movw	r3, #:lower16:__stack_chk_guard
	movt	r3, #:upper16:__stack_chk_guard
	ldr	r3, [r3]
	str	r3, [r7, #4]
	.loc 1 2478 0
	mov	r3, r7
	mov	r2, r3
	movw	r1, #:lower16:__prlibc_drand48_data
	movt	r1, #:upper16:__prlibc_drand48_data
	movw	r0, #:lower16:__prlibc_drand48_data
	movt	r0, #:upper16:__prlibc_drand48_data
	bl	__nrand48_r
	.loc 1 2482 0
	ldr	r3, [r7]
	.loc 1 2483 0
	mov	r0, r3
	movw	r3, #:lower16:__stack_chk_guard
	movt	r3, #:upper16:__stack_chk_guard
	ldr	r2, [r7, #4]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L1086
	bl	__stack_chk_fail
.L1086:
	adds	r7, r7, #8
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE110:
	.size	lrand48, .-lrand48
	.align	2
	.global	srand48
	.syntax unified
	.thumb
	.thumb_func
	.type	srand48, %function
srand48:
.LFB111:
	.loc 1 2485 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 2486 0
	movw	r1, #:lower16:__prlibc_drand48_data
	movt	r1, #:upper16:__prlibc_drand48_data
	ldr	r0, [r7, #4]
	bl	__srand48_r
	.loc 1 2487 0
	nop
	adds	r7, r7, #8
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE111:
	.size	srand48, .-srand48
	.align	2
	.global	gettimeofday
	.syntax unified
	.thumb
	.thumb_func
	.type	gettimeofday, %function
gettimeofday:
.LFB112:
	.loc 1 2489 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 2489 0
	movw	r3, #:lower16:__stack_chk_guard
	movt	r3, #:upper16:__stack_chk_guard
	ldr	r3, [r3]
	str	r3, [r7, #20]
	.loc 1 2493 0
	add	r2, r7, #12
	add	r3, r7, #8
	mov	r1, r2
	mov	r0, r3
	bl	_syscall_time
	mov	r3, r0
	str	r3, [r7, #16]
	.loc 1 2494 0
	ldr	r3, [r7, #8]
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	.loc 1 2495 0
	ldr	r3, [r7, #12]
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	.loc 1 2497 0
	movs	r3, #0
	.loc 1 2498 0
	mov	r0, r3
	movw	r3, #:lower16:__stack_chk_guard
	movt	r3, #:upper16:__stack_chk_guard
	ldr	r2, [r7, #20]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L1090
	bl	__stack_chk_fail
.L1090:
	adds	r7, r7, #24
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE112:
	.size	gettimeofday, .-gettimeofday
	.data
	.align	2
	.type	basefix.4758, %object
	.size	basefix.4758, 34
basefix.4758:
	.short	10
	.short	1
	.short	2
	.short	3
	.short	4
	.short	5
	.short	6
	.short	7
	.short	8
	.short	9
	.short	10
	.short	11
	.short	12
	.short	13
	.short	14
	.short	15
	.short	16
	.align	2
	.type	basefix.4949, %object
	.size	basefix.4949, 34
basefix.4949:
	.short	10
	.short	1
	.short	2
	.short	3
	.short	4
	.short	5
	.short	6
	.short	7
	.short	8
	.short	9
	.short	10
	.short	11
	.short	12
	.short	13
	.short	14
	.short	15
	.short	16
	.text
.Letext0:
	.file 5 "/home/dtc34/Documents/P35/pvp11/vhls/src/crt/prlibc/prstdio.h"
	.file 6 "/home/dtc34/Documents/P35/pvp11/vhls/src/crt/prlibc/ARM32/archglue.h"
	.file 7 "<built-in>"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x2bfb
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF286
	.byte	0xc
	.4byte	.LASF287
	.4byte	.LASF288
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x5
	.byte	0xf
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x5
	.byte	0x29
	.4byte	0x42
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.byte	0x5b
	.4byte	0x8e
	.uleb128 0x6
	.4byte	.LASF3
	.byte	0x5
	.byte	0x65
	.4byte	0x42
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF4
	.byte	0x5
	.byte	0x66
	.4byte	0x42
	.byte	0x4
	.byte	0x14
	.byte	0xc
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF5
	.byte	0x5
	.byte	0x67
	.4byte	0x42
	.byte	0x4
	.byte	0xb
	.byte	0x1
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF6
	.byte	0x5
	.byte	0x68
	.4byte	0x42
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.byte	0x6d
	.4byte	0xe2
	.uleb128 0x6
	.4byte	.LASF3
	.byte	0x5
	.byte	0x78
	.4byte	0x42
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF4
	.byte	0x5
	.byte	0x79
	.4byte	0x42
	.byte	0x4
	.byte	0x13
	.byte	0xd
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF7
	.byte	0x5
	.byte	0x7a
	.4byte	0x42
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF5
	.byte	0x5
	.byte	0x7b
	.4byte	0x42
	.byte	0x4
	.byte	0xb
	.byte	0x1
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF6
	.byte	0x5
	.byte	0x7c
	.4byte	0x42
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.4byte	.LASF164
	.byte	0x8
	.byte	0x5
	.byte	0x56
	.4byte	0x10e
	.uleb128 0x8
	.ascii	"d\000"
	.byte	0x5
	.byte	0x58
	.4byte	0x10e
	.uleb128 0x9
	.4byte	.LASF8
	.byte	0x5
	.byte	0x6a
	.4byte	0x49
	.uleb128 0x9
	.4byte	.LASF9
	.byte	0x5
	.byte	0x7e
	.4byte	0x8e
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.4byte	.LASF10
	.uleb128 0xa
	.4byte	.LASF289
	.byte	0x4
	.4byte	0x42
	.byte	0x5
	.byte	0xbb
	.4byte	0x14a
	.uleb128 0xb
	.4byte	.LASF11
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF12
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF13
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF14
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF15
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0x40
	.byte	0
	.uleb128 0xc
	.4byte	.LASF25
	.2byte	0x40c
	.byte	0x5
	.byte	0xd6
	.4byte	0x192
	.uleb128 0xd
	.ascii	"_r\000"
	.byte	0x5
	.byte	0xd8
	.4byte	0x30
	.byte	0
	.uleb128 0xd
	.ascii	"_p\000"
	.byte	0x5
	.byte	0xd9
	.4byte	0x192
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF17
	.byte	0x5
	.byte	0xda
	.4byte	0x19f
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF18
	.byte	0x5
	.byte	0xdb
	.4byte	0x1a6
	.byte	0xa
	.uleb128 0xe
	.4byte	.LASF19
	.byte	0x5
	.byte	0xdc
	.4byte	0x1ad
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x198
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF20
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF21
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF22
	.uleb128 0x10
	.4byte	0x198
	.4byte	0x1be
	.uleb128 0x11
	.4byte	0x1be
	.2byte	0x3ff
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF23
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0x5
	.byte	0xdd
	.4byte	0x14a
	.uleb128 0x12
	.4byte	.LASF26
	.byte	0x4
	.byte	0x5
	.byte	0xf6
	.4byte	0x1e9
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0x5
	.byte	0xf7
	.4byte	0x1e9
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF28
	.uleb128 0x12
	.4byte	.LASF29
	.byte	0x8
	.byte	0x5
	.byte	0xfa
	.4byte	0x215
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0x5
	.byte	0xfb
	.4byte	0x215
	.byte	0
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x5
	.byte	0xfc
	.4byte	0x215
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF32
	.uleb128 0x12
	.4byte	.LASF33
	.byte	0x8
	.byte	0x5
	.byte	0xff
	.4byte	0x243
	.uleb128 0x13
	.4byte	.LASF34
	.byte	0x5
	.2byte	0x100
	.4byte	0x30
	.byte	0
	.uleb128 0x13
	.4byte	.LASF35
	.byte	0x5
	.2byte	0x101
	.4byte	0x30
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF36
	.byte	0x6
	.byte	0x7
	.4byte	0x24e
	.uleb128 0x14
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF37
	.byte	0x6
	.byte	0xa
	.4byte	0x25e
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF38
	.uleb128 0x2
	.4byte	.LASF39
	.byte	0x6
	.byte	0xb
	.4byte	0x1e9
	.uleb128 0x12
	.4byte	.LASF40
	.byte	0x18
	.byte	0x1
	.byte	0x25
	.4byte	0x2b9
	.uleb128 0xd
	.ascii	"__x\000"
	.byte	0x1
	.byte	0x26
	.4byte	0x2b9
	.byte	0
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x1
	.byte	0x27
	.4byte	0x2b9
	.byte	0x6
	.uleb128 0xd
	.ascii	"__c\000"
	.byte	0x1
	.byte	0x28
	.4byte	0x19f
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0x1
	.byte	0x29
	.4byte	0x19f
	.byte	0xe
	.uleb128 0xd
	.ascii	"__a\000"
	.byte	0x1
	.byte	0x2a
	.4byte	0x253
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.4byte	0x19f
	.4byte	0x2c9
	.uleb128 0x15
	.4byte	0x1be
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF43
	.byte	0x1
	.byte	0xb4
	.4byte	0x2d4
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF44
	.uleb128 0x2
	.4byte	.LASF45
	.byte	0x4
	.byte	0x25
	.4byte	0x2e6
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF46
	.uleb128 0x2
	.4byte	.LASF47
	.byte	0x4
	.byte	0x26
	.4byte	0x25e
	.uleb128 0x16
	.4byte	.LASF51
	.byte	0x1
	.byte	0x3a
	.4byte	0x30
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x349
	.uleb128 0x17
	.4byte	.LASF48
	.byte	0x1
	.byte	0x3d
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.4byte	.LASF49
	.byte	0x1
	.byte	0x3e
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x17
	.4byte	.LASF50
	.byte	0x1
	.byte	0x43
	.4byte	0x192
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x18
	.4byte	.LASF290
	.byte	0x1
	.byte	0x4d
	.4byte	0x30
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF53
	.byte	0x1
	.byte	0x86
	.4byte	0x30
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x36f
	.uleb128 0x1b
	.ascii	"c\000"
	.byte	0x1
	.byte	0x86
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF52
	.byte	0x1
	.byte	0x9b
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x391
	.uleb128 0x1b
	.ascii	"c\000"
	.byte	0x1
	.byte	0x9b
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF54
	.byte	0x1
	.byte	0xa5
	.4byte	0x3eb
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3eb
	.uleb128 0x1e
	.4byte	.LASF55
	.byte	0x1
	.byte	0xa5
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1e
	.4byte	.LASF56
	.byte	0x1
	.byte	0xa5
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x20
	.ascii	"bp\000"
	.byte	0x1
	.byte	0xaa
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x20
	.ascii	"sp\000"
	.byte	0x1
	.byte	0xaa
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x3f1
	.uleb128 0x21
	.4byte	0x198
	.uleb128 0x1a
	.4byte	.LASF57
	.byte	0x1
	.byte	0xb5
	.4byte	0x47a
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x47a
	.uleb128 0x1e
	.4byte	.LASF58
	.byte	0x1
	.byte	0xb5
	.4byte	0x47a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1b
	.ascii	"c\000"
	.byte	0x1
	.byte	0xb5
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1b
	.ascii	"len\000"
	.byte	0x1
	.byte	0xb5
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x17
	.4byte	.LASF59
	.byte	0x1
	.byte	0xb7
	.4byte	0x1e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.4byte	.LASF60
	.byte	0x1
	.byte	0xb8
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1f
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x17
	.4byte	.LASF61
	.byte	0x1
	.byte	0xba
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.4byte	.LASF62
	.byte	0x1
	.byte	0xbb
	.4byte	0x215
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x4
	.uleb128 0x1d
	.4byte	.LASF63
	.byte	0x1
	.byte	0xef
	.4byte	0x47a
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4cf
	.uleb128 0x1b
	.ascii	"s\000"
	.byte	0x1
	.byte	0xef
	.4byte	0x4cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1b
	.ascii	"c\000"
	.byte	0x1
	.byte	0xef
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1b
	.ascii	"n\000"
	.byte	0x1
	.byte	0xef
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1f
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x20
	.ascii	"p\000"
	.byte	0x1
	.byte	0xf1
	.4byte	0x4d6
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x4d5
	.uleb128 0x23
	.uleb128 0xf
	.byte	0x4
	.4byte	0x4dc
	.uleb128 0x21
	.4byte	0x2d4
	.uleb128 0x1d
	.4byte	.LASF64
	.byte	0x1
	.byte	0xfb
	.4byte	0x47a
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x53d
	.uleb128 0x1e
	.4byte	.LASF65
	.byte	0x1
	.byte	0xfb
	.4byte	0x47a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.ascii	"src\000"
	.byte	0x1
	.byte	0xfb
	.4byte	0x4cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.4byte	.LASF66
	.byte	0x1
	.byte	0xfb
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x20
	.ascii	"d\000"
	.byte	0x1
	.byte	0xfd
	.4byte	0x192
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x20
	.ascii	"s\000"
	.byte	0x1
	.byte	0xfe
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x24
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x105
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x581
	.uleb128 0x25
	.ascii	"src\000"
	.byte	0x1
	.2byte	0x105
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x26
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x105
	.4byte	0x192
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x26
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x105
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x27
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x10a
	.4byte	0x30
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5c7
	.uleb128 0x25
	.ascii	"b1\000"
	.byte	0x1
	.2byte	0x10a
	.4byte	0x192
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x25
	.ascii	"b2\000"
	.byte	0x1
	.2byte	0x10a
	.4byte	0x192
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x26
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x10a
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x24
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x110
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5fb
	.uleb128 0x25
	.ascii	"b1\000"
	.byte	0x1
	.2byte	0x110
	.4byte	0x192
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x26
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x110
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x28
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x122
	.4byte	0x30
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x631
	.uleb128 0x25
	.ascii	"fp\000"
	.byte	0x1
	.2byte	0x122
	.4byte	0x631
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x29
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x123
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1c5
	.uleb128 0x2a
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x12b
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x65b
	.uleb128 0x25
	.ascii	"X\000"
	.byte	0x1
	.2byte	0x12b
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x28
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x139
	.4byte	0x30
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6a0
	.uleb128 0x25
	.ascii	"f\000"
	.byte	0x1
	.2byte	0x139
	.4byte	0x631
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.ascii	"s\000"
	.byte	0x1
	.2byte	0x139
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.uleb128 0x29
	.ascii	"poi\000"
	.byte	0x1
	.2byte	0x141
	.4byte	0x6a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x12
	.4byte	.LASF73
	.byte	0x4
	.byte	0x7
	.byte	0
	.4byte	0x6b7
	.uleb128 0x2b
	.4byte	.LASF74
	.4byte	0x47a
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x149
	.4byte	0x30
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6fb
	.uleb128 0x25
	.ascii	"f\000"
	.byte	0x1
	.2byte	0x149
	.4byte	0x631
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x25
	.ascii	"s\000"
	.byte	0x1
	.2byte	0x149
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x25
	.ascii	"poi\000"
	.byte	0x1
	.2byte	0x149
	.4byte	0x6a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF291
	.byte	0x1
	.2byte	0x14f
	.4byte	0x30
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2d
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x154
	.4byte	0x30
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x16f
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x769
	.uleb128 0x25
	.ascii	"s\000"
	.byte	0x1
	.2byte	0x16f
	.4byte	0x192
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x26
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x16f
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x26
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x16f
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x18b
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8c7
	.uleb128 0x26
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x18b
	.4byte	0x8c7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x25
	.ascii	"poi\000"
	.byte	0x1
	.2byte	0x18b
	.4byte	0x6a0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x29
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x18d
	.4byte	0x30
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2e
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x18e
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x18f
	.4byte	0x198
	.uleb128 0x3
	.byte	0x91
	.sleb128 -71
	.uleb128 0x2e
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x190
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2e
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x191
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2e
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x192
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x193
	.4byte	0x198
	.uleb128 0x3
	.byte	0x91
	.sleb128 -70
	.uleb128 0x2f
	.ascii	"sol\000"
	.byte	0x1
	.2byte	0x1a0
	.4byte	.L79
	.uleb128 0x1f
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x30
	.ascii	"t1\000"
	.byte	0x1
	.2byte	0x1a2
	.4byte	0x2d4
	.uleb128 0x29
	.ascii	"t\000"
	.byte	0x1
	.2byte	0x1a2
	.4byte	0x2d4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -69
	.uleb128 0x29
	.ascii	"tc\000"
	.byte	0x1
	.2byte	0x1a3
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x2e
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x1d0
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.4byte	0x876
	.uleb128 0x29
	.ascii	"s\000"
	.byte	0x1
	.2byte	0x1b6
	.4byte	0x192
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x31
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.4byte	0x891
	.uleb128 0x29
	.ascii	"f\000"
	.byte	0x1
	.2byte	0x1be
	.4byte	0x10e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x31
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.4byte	0x8ac
	.uleb128 0x29
	.ascii	"f\000"
	.byte	0x1
	.2byte	0x1c4
	.4byte	0x10e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1f
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.uleb128 0x29
	.ascii	"vv\000"
	.byte	0x1
	.2byte	0x1de
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	0x3eb
	.uleb128 0x28
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x20a
	.4byte	0x30
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x906
	.uleb128 0x26
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x20a
	.4byte	0x8c7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x19
	.uleb128 0x29
	.ascii	"poi\000"
	.byte	0x1
	.2byte	0x20f
	.4byte	0x6a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x28
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x216
	.4byte	0x30
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x95d
	.uleb128 0x25
	.ascii	"str\000"
	.byte	0x1
	.2byte	0x216
	.4byte	0x192
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x26
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x216
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x26
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x216
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.ascii	"poi\000"
	.byte	0x1
	.2byte	0x216
	.4byte	0x6a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x28
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x221
	.4byte	0x30
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9a4
	.uleb128 0x26
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x221
	.4byte	0x192
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.ascii	"s\000"
	.byte	0x1
	.2byte	0x221
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.uleb128 0x29
	.ascii	"poi\000"
	.byte	0x1
	.2byte	0x226
	.4byte	0x6a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x28
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x22e
	.4byte	0x30
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9fa
	.uleb128 0x26
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x22e
	.4byte	0x192
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x22e
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.ascii	"s\000"
	.byte	0x1
	.2byte	0x22e
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x19
	.uleb128 0x29
	.ascii	"poi\000"
	.byte	0x1
	.2byte	0x233
	.4byte	0x6a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x240
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa1e
	.uleb128 0x25
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x240
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x246
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa42
	.uleb128 0x25
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x246
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x24e
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa66
	.uleb128 0x25
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x24e
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x27
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x258
	.4byte	0x30
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa8e
	.uleb128 0x25
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x258
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x27
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x25e
	.4byte	0x30
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xab6
	.uleb128 0x25
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x25e
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x27
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x264
	.4byte	0x30
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xade
	.uleb128 0x25
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x264
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x27
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x26c
	.4byte	0x30
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb06
	.uleb128 0x25
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x26c
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x27
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x271
	.4byte	0x30
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb2e
	.uleb128 0x25
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x271
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x27
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x277
	.4byte	0x30
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb56
	.uleb128 0x25
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x277
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x27
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x27c
	.4byte	0x30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb7e
	.uleb128 0x25
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x27c
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x27
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x284
	.4byte	0x30
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xba6
	.uleb128 0x25
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x284
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x27
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x28b
	.4byte	0x30
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbdb
	.uleb128 0x25
	.ascii	"s\000"
	.byte	0x1
	.2byte	0x28b
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x29
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x28d
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x27
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x294
	.4byte	0x192
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc1f
	.uleb128 0x25
	.ascii	"s1\000"
	.byte	0x1
	.2byte	0x294
	.4byte	0x192
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.ascii	"s2\000"
	.byte	0x1
	.2byte	0x294
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x296
	.4byte	0x192
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x28
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x29c
	.4byte	0x192
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc54
	.uleb128 0x25
	.ascii	"s\000"
	.byte	0x1
	.2byte	0x29c
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x29
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x29e
	.4byte	0x192
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x28
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x2a3
	.4byte	0x192
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc8b
	.uleb128 0x25
	.ascii	"s1\000"
	.byte	0x1
	.2byte	0x2a3
	.4byte	0x192
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x25
	.ascii	"s2\000"
	.byte	0x1
	.2byte	0x2a3
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x27
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x2a8
	.4byte	0x192
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcde
	.uleb128 0x26
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x2a8
	.4byte	0x192
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.ascii	"src\000"
	.byte	0x1
	.2byte	0x2a8
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.ascii	"n\000"
	.byte	0x1
	.2byte	0x2a8
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x2aa
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x27
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x2b5
	.4byte	0x30
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd39
	.uleb128 0x25
	.ascii	"s1\000"
	.byte	0x1
	.2byte	0x2b5
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.ascii	"s2\000"
	.byte	0x1
	.2byte	0x2b5
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0x29
	.ascii	"a\000"
	.byte	0x1
	.2byte	0x2b9
	.4byte	0x198
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x29
	.ascii	"b\000"
	.byte	0x1
	.2byte	0x2ba
	.4byte	0x198
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x2c1
	.4byte	0x30
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd94
	.uleb128 0x25
	.ascii	"s1\000"
	.byte	0x1
	.2byte	0x2c1
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.ascii	"s2\000"
	.byte	0x1
	.2byte	0x2c1
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.uleb128 0x29
	.ascii	"a\000"
	.byte	0x1
	.2byte	0x2c5
	.4byte	0x198
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x29
	.ascii	"b\000"
	.byte	0x1
	.2byte	0x2c6
	.4byte	0x198
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x2cc
	.4byte	0x30
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdfc
	.uleb128 0x25
	.ascii	"s1\000"
	.byte	0x1
	.2byte	0x2cc
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.ascii	"s2\000"
	.byte	0x1
	.2byte	0x2cc
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.ascii	"n\000"
	.byte	0x1
	.2byte	0x2cc
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.uleb128 0x29
	.ascii	"a\000"
	.byte	0x1
	.2byte	0x2d1
	.4byte	0x198
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x29
	.ascii	"b\000"
	.byte	0x1
	.2byte	0x2d2
	.4byte	0x198
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x2d9
	.4byte	0x30
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe64
	.uleb128 0x25
	.ascii	"s1\000"
	.byte	0x1
	.2byte	0x2d9
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.ascii	"s2\000"
	.byte	0x1
	.2byte	0x2d9
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.ascii	"n\000"
	.byte	0x1
	.2byte	0x2d9
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.uleb128 0x29
	.ascii	"a\000"
	.byte	0x1
	.2byte	0x2de
	.4byte	0x198
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x29
	.ascii	"b\000"
	.byte	0x1
	.2byte	0x2df
	.4byte	0x198
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x2e6
	.4byte	0x192
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe9d
	.uleb128 0x25
	.ascii	"src\000"
	.byte	0x1
	.2byte	0x2e6
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x25
	.ascii	"chr\000"
	.byte	0x1
	.2byte	0x2e6
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x27
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x2f0
	.4byte	0x30
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xef4
	.uleb128 0x25
	.ascii	"s\000"
	.byte	0x1
	.2byte	0x2f0
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x2f2
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2e
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x2f3
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x33
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x29
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x2f7
	.4byte	0x198
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x30b
	.4byte	0x1e9
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf4b
	.uleb128 0x25
	.ascii	"s\000"
	.byte	0x1
	.2byte	0x30b
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x30c
	.4byte	0x1e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2e
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x30d
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x33
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x29
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x311
	.4byte	0x198
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x334
	.4byte	0x30
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfa2
	.uleb128 0x25
	.ascii	"buf\000"
	.byte	0x1
	.2byte	0x334
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x26
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x334
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x26
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x334
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x334
	.4byte	0x631
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x28
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x33f
	.4byte	0x30
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1001
	.uleb128 0x25
	.ascii	"buf\000"
	.byte	0x1
	.2byte	0x33f
	.4byte	0x192
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.ascii	"len\000"
	.byte	0x1
	.2byte	0x33f
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x341
	.4byte	0x2d4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x1f
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.uleb128 0x29
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x345
	.4byte	0x198
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x360
	.4byte	0x198
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x367
	.4byte	0x30
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1056
	.uleb128 0x25
	.ascii	"s\000"
	.byte	0x1
	.2byte	0x367
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1f
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.uleb128 0x29
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x36c
	.4byte	0x198
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x374
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x107a
	.uleb128 0x25
	.ascii	"s\000"
	.byte	0x1
	.2byte	0x374
	.4byte	0x192
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x28
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x382
	.4byte	0x47a
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10b1
	.uleb128 0x26
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x382
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x29
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x389
	.4byte	0x47a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x28
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x395
	.4byte	0x47a
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1104
	.uleb128 0x25
	.ascii	"num\000"
	.byte	0x1
	.2byte	0x395
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x395
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x396
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x29
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x397
	.4byte	0x1104
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x110a
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF127
	.uleb128 0x28
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x3a0
	.4byte	0x47a
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1168
	.uleb128 0x25
	.ascii	"ptr\000"
	.byte	0x1
	.2byte	0x3a0
	.4byte	0x47a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x3a0
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.ascii	"cur\000"
	.byte	0x1
	.2byte	0x3a1
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2e
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x3a2
	.4byte	0x192
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x24
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x3b2
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x118c
	.uleb128 0x25
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x3b2
	.4byte	0x47a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x3b7
	.4byte	0x30
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x3bd
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11e6
	.uleb128 0x26
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x3bd
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x26
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x3bd
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x26
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x3bd
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x28
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x3c6
	.4byte	0x10e
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x128b
	.uleb128 0x25
	.ascii	"s\000"
	.byte	0x1
	.2byte	0x3c6
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x35
	.4byte	.LASF264
	.byte	0x1
	.2byte	0x3c8
	.4byte	0x128b
	.uleb128 0x29
	.ascii	"val\000"
	.byte	0x1
	.2byte	0x3c9
	.4byte	0x10e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x3ca
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.ascii	"j\000"
	.byte	0x1
	.2byte	0x3ca
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2e
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x3ca
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x3ca
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.ascii	"ex\000"
	.byte	0x1
	.2byte	0x3ca
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.ascii	"ex1\000"
	.byte	0x1
	.2byte	0x3ca
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.ascii	"n\000"
	.byte	0x1
	.2byte	0x3f8
	.4byte	0x10e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x10
	.4byte	0x10e
	.4byte	0x129b
	.uleb128 0x15
	.4byte	0x1be
	.byte	0x4c
	.byte	0
	.uleb128 0x27
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x3fc
	.4byte	0x3eb
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12c3
	.uleb128 0x25
	.ascii	"n\000"
	.byte	0x1
	.2byte	0x3fc
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x27
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x403
	.4byte	0x30
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12fc
	.uleb128 0x26
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x403
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x26
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x403
	.4byte	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x27
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x407
	.4byte	0x30
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1334
	.uleb128 0x25
	.ascii	"fn\000"
	.byte	0x1
	.2byte	0x407
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x26
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x407
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x27
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x40c
	.4byte	0x30
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x136c
	.uleb128 0x25
	.ascii	"fd\000"
	.byte	0x1
	.2byte	0x40c
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x25
	.ascii	"buf\000"
	.byte	0x1
	.2byte	0x40c
	.4byte	0x136c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1d0
	.uleb128 0x27
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x410
	.4byte	0x30
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x139b
	.uleb128 0x25
	.ascii	"fd\000"
	.byte	0x1
	.2byte	0x410
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x415
	.4byte	0x30
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x27
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x41a
	.4byte	0x47a
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1425
	.uleb128 0x26
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x41a
	.4byte	0x47a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x26
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x41a
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x26
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x41a
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x41a
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.ascii	"fd\000"
	.byte	0x1
	.2byte	0x41a
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x41a
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x27
	.4byte	.LASF151
	.byte	0x1
	.2byte	0x41e
	.4byte	0x30
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x145e
	.uleb128 0x26
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x41e
	.4byte	0x47a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x26
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x41e
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x27
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x423
	.4byte	0x30
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1486
	.uleb128 0x25
	.ascii	"m\000"
	.byte	0x1
	.2byte	0x423
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x27
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x429
	.4byte	0x30
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14b0
	.uleb128 0x25
	.ascii	"arg\000"
	.byte	0x1
	.2byte	0x429
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x36
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x42f
	.4byte	0x30
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14d8
	.uleb128 0x29
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x433
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x27
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x43b
	.4byte	0x30
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x151f
	.uleb128 0x25
	.ascii	"fd\000"
	.byte	0x1
	.2byte	0x43b
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x26
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x43b
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x25
	.ascii	"len\000"
	.byte	0x1
	.2byte	0x43b
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x27
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x441
	.4byte	0x30
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1566
	.uleb128 0x25
	.ascii	"fd\000"
	.byte	0x1
	.2byte	0x441
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x26
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x441
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x25
	.ascii	"len\000"
	.byte	0x1
	.2byte	0x441
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x27
	.4byte	.LASF158
	.byte	0x1
	.2byte	0x446
	.4byte	0x30
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x159e
	.uleb128 0x25
	.ascii	"fd\000"
	.byte	0x1
	.2byte	0x446
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x26
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x446
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x44b
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15e2
	.uleb128 0x26
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x44b
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x26
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x44b
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x26
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x44b
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x450
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1626
	.uleb128 0x26
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x450
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x26
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x450
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x26
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x450
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x4aa
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x178d
	.uleb128 0x26
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x4aa
	.4byte	0x30
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x25
	.ascii	"d0\000"
	.byte	0x1
	.2byte	0x4aa
	.4byte	0x10e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x25
	.ascii	"f\000"
	.byte	0x1
	.2byte	0x4aa
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.4byte	.LASF165
	.byte	0x8
	.byte	0x1
	.2byte	0x4b1
	.4byte	0x168c
	.uleb128 0x38
	.ascii	"df\000"
	.byte	0x1
	.2byte	0x4b3
	.4byte	0x10e
	.uleb128 0x38
	.ascii	"di\000"
	.byte	0x1
	.2byte	0x4b4
	.4byte	0x25e
	.byte	0
	.uleb128 0x29
	.ascii	"to\000"
	.byte	0x1
	.2byte	0x4b5
	.4byte	0x1668
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x4b7
	.4byte	0x30
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2e
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x4b8
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.4byte	.LASF5
	.byte	0x1
	.2byte	0x4d4
	.4byte	0x30
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x29
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x4d5
	.4byte	0x42
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2e
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x4d5
	.4byte	0x42
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2e
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x4d6
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2e
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x4d7
	.4byte	0x178d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x4d8
	.4byte	0x178d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2e
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x4f2
	.4byte	0x30
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x29
	.ascii	"p\000"
	.byte	0x1
	.2byte	0x4f7
	.4byte	0x30
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2e
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x4f8
	.4byte	0x30
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x31
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.4byte	0x175d
	.uleb128 0x29
	.ascii	"q\000"
	.byte	0x1
	.2byte	0x4dd
	.4byte	0x10e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x31
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.4byte	0x1778
	.uleb128 0x29
	.ascii	"q\000"
	.byte	0x1
	.2byte	0x4e9
	.4byte	0x10e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x33
	.4byte	.Ldebug_ranges0+0x30
	.uleb128 0x29
	.ascii	"d\000"
	.byte	0x1
	.2byte	0x4fb
	.4byte	0x30
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	0x30
	.uleb128 0x2a
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x511
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x183b
	.uleb128 0x26
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x511
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x511
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.ascii	"d0\000"
	.byte	0x1
	.2byte	0x511
	.4byte	0x25e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.ascii	"f\000"
	.byte	0x1
	.2byte	0x511
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.ascii	"p\000"
	.byte	0x1
	.2byte	0x513
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x514
	.4byte	0x198
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x29
	.ascii	"lzf\000"
	.byte	0x1
	.2byte	0x515
	.4byte	0x198
	.uleb128 0x2
	.byte	0x91
	.sleb128 -27
	.uleb128 0x1f
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.uleb128 0x29
	.ascii	"d\000"
	.byte	0x1
	.2byte	0x525
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1f
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.uleb128 0x29
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x52e
	.4byte	0x198
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x535
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18d5
	.uleb128 0x26
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x535
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.ascii	"d0\000"
	.byte	0x1
	.2byte	0x535
	.4byte	0x25e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.ascii	"f\000"
	.byte	0x1
	.2byte	0x535
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.ascii	"p\000"
	.byte	0x1
	.2byte	0x537
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x538
	.4byte	0x198
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x29
	.ascii	"lzf\000"
	.byte	0x1
	.2byte	0x539
	.4byte	0x198
	.uleb128 0x2
	.byte	0x91
	.sleb128 -27
	.uleb128 0x1f
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.uleb128 0x29
	.ascii	"d\000"
	.byte	0x1
	.2byte	0x543
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1f
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.uleb128 0x29
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x54c
	.4byte	0x198
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x552
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x197e
	.uleb128 0x26
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x552
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x552
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.ascii	"d0\000"
	.byte	0x1
	.2byte	0x552
	.4byte	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.ascii	"f\000"
	.byte	0x1
	.2byte	0x552
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.ascii	"p\000"
	.byte	0x1
	.2byte	0x554
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2e
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x555
	.4byte	0x198
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x29
	.ascii	"lzf\000"
	.byte	0x1
	.2byte	0x556
	.4byte	0x198
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.uleb128 0x1f
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.uleb128 0x29
	.ascii	"d\000"
	.byte	0x1
	.2byte	0x566
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1f
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.uleb128 0x29
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x56f
	.4byte	0x198
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x575
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a18
	.uleb128 0x26
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x575
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x25
	.ascii	"d0\000"
	.byte	0x1
	.2byte	0x575
	.4byte	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.ascii	"f\000"
	.byte	0x1
	.2byte	0x575
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.ascii	"p\000"
	.byte	0x1
	.2byte	0x577
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2e
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x578
	.4byte	0x198
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x29
	.ascii	"lzf\000"
	.byte	0x1
	.2byte	0x579
	.4byte	0x198
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.uleb128 0x1f
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.uleb128 0x29
	.ascii	"d\000"
	.byte	0x1
	.2byte	0x583
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1f
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.uleb128 0x29
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x58c
	.4byte	0x198
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x592
	.4byte	0x3eb
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a42
	.uleb128 0x26
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x592
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x28
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x59a
	.4byte	0x30
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ab0
	.uleb128 0x26
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x59a
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x59a
	.4byte	0x1ab0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x59a
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.uleb128 0x29
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x5af
	.4byte	0x198
	.uleb128 0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x2e
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x5b0
	.4byte	0x192
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1ab6
	.uleb128 0x21
	.4byte	0x192
	.uleb128 0x28
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x5df
	.4byte	0x30
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b0e
	.uleb128 0x25
	.ascii	"str\000"
	.byte	0x1
	.2byte	0x5df
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x5df
	.4byte	0x631
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x5e0
	.4byte	0x198
	.uleb128 0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x29
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x5e1
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x27
	.4byte	.LASF185
	.byte	0x1
	.2byte	0x5f2
	.4byte	0x30
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b38
	.uleb128 0x26
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x5f2
	.4byte	0x631
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x27
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x5f7
	.4byte	0x192
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b71
	.uleb128 0x25
	.ascii	"str\000"
	.byte	0x1
	.2byte	0x5f7
	.4byte	0x192
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x5f8
	.4byte	0x192
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x28
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x603
	.4byte	0x30
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b9a
	.uleb128 0x25
	.ascii	"fp\000"
	.byte	0x1
	.2byte	0x603
	.4byte	0x631
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x28
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x608
	.4byte	0x192
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c0f
	.uleb128 0x25
	.ascii	"buf\000"
	.byte	0x1
	.2byte	0x608
	.4byte	0x192
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x25
	.ascii	"n\000"
	.byte	0x1
	.2byte	0x608
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.ascii	"fp\000"
	.byte	0x1
	.2byte	0x608
	.4byte	0x631
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.ascii	"len\000"
	.byte	0x1
	.2byte	0x609
	.4byte	0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x29
	.ascii	"s\000"
	.byte	0x1
	.2byte	0x60a
	.4byte	0x192
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x30
	.ascii	"p\000"
	.byte	0x1
	.2byte	0x60b
	.4byte	0x1c0f
	.uleb128 0x29
	.ascii	"t\000"
	.byte	0x1
	.2byte	0x60b
	.4byte	0x1c0f
	.uleb128 0x1
	.byte	0x56
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2d4
	.uleb128 0x28
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x63c
	.4byte	0x30
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c4b
	.uleb128 0x25
	.ascii	"fp\000"
	.byte	0x1
	.2byte	0x63c
	.4byte	0x631
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x29
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x640
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x28
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x646
	.4byte	0x30
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c74
	.uleb128 0x25
	.ascii	"fp\000"
	.byte	0x1
	.2byte	0x646
	.4byte	0x631
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x28
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x64b
	.4byte	0x631
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ce2
	.uleb128 0x26
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x64b
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x64b
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.ascii	"fid\000"
	.byte	0x1
	.2byte	0x64c
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x30
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x64d
	.4byte	0x30
	.uleb128 0x2e
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x64f
	.4byte	0x1a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x29
	.ascii	"f\000"
	.byte	0x1
	.2byte	0x65a
	.4byte	0x631
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x28
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x670
	.4byte	0x30
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d18
	.uleb128 0x25
	.ascii	"fp\000"
	.byte	0x1
	.2byte	0x670
	.4byte	0x631
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x29
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x671
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x39
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x683
	.4byte	0x4d6
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d7f
	.uleb128 0x25
	.ascii	"tab\000"
	.byte	0x1
	.2byte	0x683
	.4byte	0x192
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x25
	.ascii	"fmt\000"
	.byte	0x1
	.2byte	0x683
	.4byte	0x4d6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x685
	.4byte	0x30
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x29
	.ascii	"n\000"
	.byte	0x1
	.2byte	0x685
	.4byte	0x30
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x29
	.ascii	"v\000"
	.byte	0x1
	.2byte	0x685
	.4byte	0x30
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x3a
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x69e
	.4byte	.L522
	.byte	0
	.uleb128 0x27
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x6db
	.4byte	0x30
	.4byte	.LFB90
	.4byte	.LFE90-.LFB90
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1db5
	.uleb128 0x25
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x6db
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x25
	.ascii	"fp\000"
	.byte	0x1
	.2byte	0x6db
	.4byte	0x631
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x28
	.4byte	.LASF198
	.byte	0x1
	.2byte	0x6e3
	.4byte	0x25
	.4byte	.LFB91
	.4byte	.LFE91-.LFB91
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e3d
	.uleb128 0x25
	.ascii	"buf\000"
	.byte	0x1
	.2byte	0x6e3
	.4byte	0x47a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x6e3
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x6e3
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x25
	.ascii	"fp\000"
	.byte	0x1
	.2byte	0x6e3
	.4byte	0x631
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2e
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x6e4
	.4byte	0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x30
	.ascii	"p\000"
	.byte	0x1
	.2byte	0x6e5
	.4byte	0x192
	.uleb128 0x29
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x6e6
	.4byte	0x30
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x2e
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x6e7
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF202
	.byte	0x2
	.byte	0x5
	.4byte	0x30
	.4byte	.LFB92
	.4byte	.LFE92-.LFB92
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e63
	.uleb128 0x1b
	.ascii	"c\000"
	.byte	0x2
	.byte	0x5
	.4byte	0x198
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF203
	.byte	0x2
	.byte	0xf
	.4byte	0x1e9
	.4byte	.LFB93
	.4byte	.LFE93-.LFB93
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1efb
	.uleb128 0x1e
	.4byte	.LASF204
	.byte	0x2
	.byte	0xf
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1e
	.4byte	.LASF205
	.byte	0x2
	.byte	0xf
	.4byte	0x1efb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.4byte	.LASF114
	.byte	0x2
	.byte	0xf
	.4byte	0x30
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x20
	.ascii	"s\000"
	.byte	0x2
	.byte	0x10
	.4byte	0x3eb
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x20
	.ascii	"acc\000"
	.byte	0x2
	.byte	0x11
	.4byte	0x215
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x20
	.ascii	"c\000"
	.byte	0x2
	.byte	0x12
	.4byte	0x30
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x17
	.4byte	.LASF206
	.byte	0x2
	.byte	0x13
	.4byte	0x215
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x20
	.ascii	"neg\000"
	.byte	0x2
	.byte	0x14
	.4byte	0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x20
	.ascii	"any\000"
	.byte	0x2
	.byte	0x14
	.4byte	0x30
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x3b
	.4byte	.LASF207
	.byte	0x2
	.byte	0x14
	.4byte	0x30
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x192
	.uleb128 0x1a
	.4byte	.LASF208
	.byte	0x2
	.byte	0x66
	.4byte	0x215
	.4byte	.LFB94
	.4byte	.LFE94-.LFB94
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f99
	.uleb128 0x1e
	.4byte	.LASF204
	.byte	0x2
	.byte	0x66
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1e
	.4byte	.LASF205
	.byte	0x2
	.byte	0x66
	.4byte	0x1efb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.4byte	.LASF114
	.byte	0x2
	.byte	0x66
	.4byte	0x30
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x20
	.ascii	"s\000"
	.byte	0x2
	.byte	0x67
	.4byte	0x3eb
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x20
	.ascii	"acc\000"
	.byte	0x2
	.byte	0x68
	.4byte	0x215
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x20
	.ascii	"c\000"
	.byte	0x2
	.byte	0x69
	.4byte	0x30
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x17
	.4byte	.LASF206
	.byte	0x2
	.byte	0x6a
	.4byte	0x215
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x20
	.ascii	"neg\000"
	.byte	0x2
	.byte	0x6b
	.4byte	0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x20
	.ascii	"any\000"
	.byte	0x2
	.byte	0x6b
	.4byte	0x30
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x3b
	.4byte	.LASF207
	.byte	0x2
	.byte	0x6b
	.4byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF209
	.byte	0x3
	.byte	0x33
	.4byte	0x10e
	.4byte	.LFB95
	.4byte	.LFE95-.LFB95
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x20a4
	.uleb128 0x1e
	.4byte	.LASF89
	.byte	0x3
	.byte	0x33
	.4byte	0x3eb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1e
	.4byte	.LASF210
	.byte	0x3
	.byte	0x33
	.4byte	0x1efb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x17
	.4byte	.LASF137
	.byte	0x3
	.byte	0x34
	.4byte	0x30
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x17
	.4byte	.LASF211
	.byte	0x3
	.byte	0x34
	.4byte	0x30
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x17
	.4byte	.LASF212
	.byte	0x3
	.byte	0x35
	.4byte	0x10e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.4byte	.LASF213
	.byte	0x3
	.byte	0x35
	.4byte	0x10e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.ascii	"d\000"
	.byte	0x3
	.byte	0x35
	.4byte	0x20a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.ascii	"p\000"
	.byte	0x3
	.byte	0x36
	.4byte	0x3eb
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x20
	.ascii	"c\000"
	.byte	0x3
	.byte	0x37
	.4byte	0x30
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x20
	.ascii	"exp\000"
	.byte	0x3
	.byte	0x38
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x17
	.4byte	.LASF214
	.byte	0x3
	.byte	0x39
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.4byte	.LASF215
	.byte	0x3
	.byte	0x42
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x17
	.4byte	.LASF216
	.byte	0x3
	.byte	0x43
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.4byte	.LASF217
	.byte	0x3
	.byte	0x45
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3c
	.4byte	.LASF218
	.byte	0x3
	.byte	0xdb
	.4byte	.L628
	.uleb128 0x1f
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.uleb128 0x17
	.4byte	.LASF219
	.byte	0x3
	.byte	0x85
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x17
	.4byte	.LASF220
	.byte	0x3
	.byte	0x85
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x10e
	.uleb128 0x28
	.4byte	.LASF221
	.byte	0x1
	.2byte	0x703
	.4byte	0x30
	.4byte	.LFB96
	.4byte	.LFE96-.LFB96
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2273
	.uleb128 0x25
	.ascii	"fp\000"
	.byte	0x1
	.2byte	0x703
	.4byte	0x631
	.uleb128 0x3
	.byte	0x91
	.sleb128 -844
	.uleb128 0x26
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x703
	.4byte	0x3eb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -848
	.uleb128 0x25
	.ascii	"ap\000"
	.byte	0x1
	.2byte	0x703
	.4byte	0x6a0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -852
	.uleb128 0x30
	.ascii	"fmt\000"
	.byte	0x1
	.2byte	0x704
	.4byte	0x4d6
	.uleb128 0x29
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x705
	.4byte	0x30
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2e
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x706
	.4byte	0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x29
	.ascii	"p\000"
	.byte	0x1
	.2byte	0x707
	.4byte	0x192
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x29
	.ascii	"n\000"
	.byte	0x1
	.2byte	0x708
	.4byte	0x30
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2e
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x709
	.4byte	0x30
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x29
	.ascii	"p0\000"
	.byte	0x1
	.2byte	0x70a
	.4byte	0x192
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2e
	.4byte	.LASF224
	.byte	0x1
	.2byte	0x70b
	.4byte	0x30
	.uleb128 0x3
	.byte	0x91
	.sleb128 -836
	.uleb128 0x2e
	.4byte	.LASF225
	.byte	0x1
	.2byte	0x70c
	.4byte	0x30
	.uleb128 0x3
	.byte	0x91
	.sleb128 -832
	.uleb128 0x2e
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x70d
	.4byte	0x30
	.uleb128 0x3
	.byte	0x91
	.sleb128 -828
	.uleb128 0x2e
	.4byte	.LASF226
	.byte	0x1
	.2byte	0x70e
	.4byte	0x227e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -824
	.uleb128 0x2e
	.4byte	.LASF227
	.byte	0x1
	.2byte	0x70f
	.4byte	0x2284
	.uleb128 0x3
	.byte	0x91
	.sleb128 -800
	.uleb128 0x29
	.ascii	"buf\000"
	.byte	0x1
	.2byte	0x710
	.4byte	0x2294
	.uleb128 0x3
	.byte	0x91
	.sleb128 -544
	.uleb128 0x2e
	.4byte	.LASF228
	.byte	0x1
	.2byte	0x713
	.4byte	0x22a5
	.uleb128 0x5
	.byte	0x3
	.4byte	basefix.4758
	.uleb128 0x3a
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x734
	.4byte	.L667
	.uleb128 0x3a
	.4byte	.LASF230
	.byte	0x1
	.2byte	0x730
	.4byte	.L668
	.uleb128 0x3a
	.4byte	.LASF231
	.byte	0x1
	.2byte	0x92a
	.4byte	.L693
	.uleb128 0x3a
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x92c
	.4byte	.L695
	.uleb128 0x2f
	.ascii	"ok\000"
	.byte	0x1
	.2byte	0x8a1
	.4byte	.L760
	.uleb128 0x2f
	.ascii	"fok\000"
	.byte	0x1
	.2byte	0x8ff
	.4byte	.L786
	.uleb128 0x31
	.4byte	.LBB35
	.4byte	.LBE35-.LBB35
	.4byte	0x2222
	.uleb128 0x29
	.ascii	"sum\000"
	.byte	0x1
	.2byte	0x7e0
	.4byte	0x25
	.uleb128 0x3
	.byte	0x91
	.sleb128 -820
	.byte	0
	.uleb128 0x3d
	.4byte	.Ldebug_ranges0+0x48
	.4byte	0x223a
	.uleb128 0x29
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x7f4
	.4byte	0x25
	.uleb128 0x3
	.byte	0x91
	.sleb128 -816
	.byte	0
	.uleb128 0x31
	.4byte	.LBB37
	.4byte	.LBE37-.LBB37
	.4byte	0x2258
	.uleb128 0x29
	.ascii	"res\000"
	.byte	0x1
	.2byte	0x8bc
	.4byte	0x215
	.uleb128 0x3
	.byte	0x91
	.sleb128 -812
	.byte	0
	.uleb128 0x1f
	.4byte	.LBB38
	.4byte	.LBE38-.LBB38
	.uleb128 0x29
	.ascii	"res\000"
	.byte	0x1
	.2byte	0x91b
	.4byte	0x10e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -808
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	0x215
	.4byte	0x227e
	.uleb128 0x19
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2273
	.uleb128 0x10
	.4byte	0x198
	.4byte	0x2294
	.uleb128 0x15
	.4byte	0x1be
	.byte	0xff
	.byte	0
	.uleb128 0x10
	.4byte	0x198
	.4byte	0x22a5
	.uleb128 0x11
	.4byte	0x1be
	.2byte	0x200
	.byte	0
	.uleb128 0x10
	.4byte	0x1a6
	.4byte	0x22b5
	.uleb128 0x15
	.4byte	0x1be
	.byte	0x10
	.byte	0
	.uleb128 0x28
	.4byte	.LASF233
	.byte	0x1
	.2byte	0x930
	.4byte	0x30
	.4byte	.LFB97
	.4byte	.LFE97-.LFB97
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x22fe
	.uleb128 0x26
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x930
	.4byte	0x631
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x930
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.uleb128 0x2e
	.4byte	.LASF234
	.byte	0x1
	.2byte	0x931
	.4byte	0x6a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x28
	.4byte	.LASF235
	.byte	0x1
	.2byte	0x937
	.4byte	0x30
	.4byte	.LFB98
	.4byte	.LFE98-.LFB98
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2347
	.uleb128 0x26
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x937
	.4byte	0x631
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x937
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.uleb128 0x2e
	.4byte	.LASF234
	.byte	0x1
	.2byte	0x938
	.4byte	0x6a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF236
	.byte	0x4
	.byte	0x2d
	.4byte	0x2db
	.4byte	.LFB99
	.4byte	.LFE99-.LFB99
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x23f0
	.uleb128 0x1e
	.4byte	.LASF204
	.byte	0x4
	.byte	0x2d
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1e
	.4byte	.LASF205
	.byte	0x4
	.byte	0x2d
	.4byte	0x1efb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.4byte	.LASF114
	.byte	0x4
	.byte	0x2d
	.4byte	0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3f
	.ascii	"s\000"
	.byte	0x4
	.byte	0x2e
	.4byte	0x3eb
	.uleb128 0x20
	.ascii	"acc\000"
	.byte	0x4
	.byte	0x2f
	.4byte	0x2ed
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x20
	.ascii	"c\000"
	.byte	0x4
	.byte	0x30
	.4byte	0x30
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x17
	.4byte	.LASF237
	.byte	0x4
	.byte	0x31
	.4byte	0x2ed
	.uleb128 0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x3b
	.4byte	.LASF206
	.byte	0x4
	.byte	0x31
	.4byte	0x2ed
	.uleb128 0x3f
	.ascii	"neg\000"
	.byte	0x4
	.byte	0x32
	.4byte	0x30
	.uleb128 0x20
	.ascii	"any\000"
	.byte	0x4
	.byte	0x32
	.4byte	0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3b
	.4byte	.LASF207
	.byte	0x4
	.byte	0x32
	.4byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF238
	.byte	0x4
	.byte	0x7f
	.4byte	0x2ed
	.4byte	.LFB100
	.4byte	.LFE100-.LFB100
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2499
	.uleb128 0x1e
	.4byte	.LASF204
	.byte	0x4
	.byte	0x7f
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1e
	.4byte	.LASF205
	.byte	0x4
	.byte	0x7f
	.4byte	0x1efb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.4byte	.LASF114
	.byte	0x4
	.byte	0x7f
	.4byte	0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x20
	.ascii	"s\000"
	.byte	0x4
	.byte	0x80
	.4byte	0x3eb
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x20
	.ascii	"acc\000"
	.byte	0x4
	.byte	0x81
	.4byte	0x2ed
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x20
	.ascii	"c\000"
	.byte	0x4
	.byte	0x82
	.4byte	0x30
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x17
	.4byte	.LASF237
	.byte	0x4
	.byte	0x83
	.4byte	0x2ed
	.uleb128 0x6
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x3b
	.4byte	.LASF206
	.byte	0x4
	.byte	0x83
	.4byte	0x2ed
	.uleb128 0x3f
	.ascii	"neg\000"
	.byte	0x4
	.byte	0x84
	.4byte	0x30
	.uleb128 0x3f
	.ascii	"any\000"
	.byte	0x4
	.byte	0x84
	.4byte	0x30
	.uleb128 0x3b
	.4byte	.LASF207
	.byte	0x4
	.byte	0x84
	.4byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF239
	.byte	0x4
	.byte	0xbb
	.4byte	0x30
	.4byte	.LFB101
	.4byte	.LFE101-.LFB101
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x262c
	.uleb128 0x1b
	.ascii	"inp\000"
	.byte	0x4
	.byte	0xbb
	.4byte	0x3eb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -380
	.uleb128 0x1e
	.4byte	.LASF222
	.byte	0x4
	.byte	0xbb
	.4byte	0x3eb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x1b
	.ascii	"ap\000"
	.byte	0x4
	.byte	0xbb
	.4byte	0x6a0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -388
	.uleb128 0x20
	.ascii	"inr\000"
	.byte	0x4
	.byte	0xbc
	.4byte	0x30
	.uleb128 0x3
	.byte	0x91
	.sleb128 -372
	.uleb128 0x20
	.ascii	"fmt\000"
	.byte	0x4
	.byte	0xbd
	.4byte	0x4d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x20
	.ascii	"c\000"
	.byte	0x4
	.byte	0xbe
	.4byte	0x30
	.uleb128 0x3
	.byte	0x91
	.sleb128 -364
	.uleb128 0x17
	.4byte	.LASF223
	.byte	0x4
	.byte	0xbf
	.4byte	0x25
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x20
	.ascii	"p\000"
	.byte	0x4
	.byte	0xc0
	.4byte	0x192
	.uleb128 0x3
	.byte	0x91
	.sleb128 -356
	.uleb128 0x20
	.ascii	"n\000"
	.byte	0x4
	.byte	0xc1
	.4byte	0x30
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x17
	.4byte	.LASF18
	.byte	0x4
	.byte	0xc2
	.4byte	0x30
	.uleb128 0x3
	.byte	0x91
	.sleb128 -348
	.uleb128 0x20
	.ascii	"p0\000"
	.byte	0x4
	.byte	0xc3
	.4byte	0x192
	.uleb128 0x3
	.byte	0x91
	.sleb128 -324
	.uleb128 0x17
	.4byte	.LASF224
	.byte	0x4
	.byte	0xc4
	.4byte	0x30
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x17
	.4byte	.LASF240
	.byte	0x4
	.byte	0xc5
	.4byte	0x30
	.uleb128 0x3
	.byte	0x91
	.sleb128 -340
	.uleb128 0x17
	.4byte	.LASF225
	.byte	0x4
	.byte	0xc6
	.4byte	0x30
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x17
	.4byte	.LASF114
	.byte	0x4
	.byte	0xc7
	.4byte	0x30
	.uleb128 0x3
	.byte	0x91
	.sleb128 -332
	.uleb128 0x17
	.4byte	.LASF227
	.byte	0x4
	.byte	0xc8
	.4byte	0x2284
	.uleb128 0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x20
	.ascii	"buf\000"
	.byte	0x4
	.byte	0xc9
	.4byte	0x262c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -308
	.uleb128 0x17
	.4byte	.LASF228
	.byte	0x4
	.byte	0xcc
	.4byte	0x22a5
	.uleb128 0x5
	.byte	0x3
	.4byte	basefix.4949
	.uleb128 0x3c
	.4byte	.LASF229
	.byte	0x4
	.byte	0xe9
	.4byte	.L919
	.uleb128 0x3c
	.4byte	.LASF230
	.byte	0x4
	.byte	0xe6
	.4byte	.L920
	.uleb128 0x3a
	.4byte	.LASF231
	.byte	0x4
	.2byte	0x271
	.4byte	.L939
	.uleb128 0x3a
	.4byte	.LASF232
	.byte	0x4
	.2byte	0x273
	.4byte	.L941
	.uleb128 0x2f
	.ascii	"ok\000"
	.byte	0x4
	.2byte	0x237
	.4byte	.L1006
	.uleb128 0x31
	.4byte	.LBB40
	.4byte	.LBE40-.LBB40
	.4byte	0x2611
	.uleb128 0x29
	.ascii	"sum\000"
	.byte	0x4
	.2byte	0x177
	.4byte	0x25
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.byte	0
	.uleb128 0x1f
	.4byte	.LBB41
	.4byte	.LBE41-.LBB41
	.uleb128 0x29
	.ascii	"res\000"
	.byte	0x4
	.2byte	0x255
	.4byte	0x2ed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	0x198
	.4byte	0x263c
	.uleb128 0x15
	.4byte	0x1be
	.byte	0x1f
	.byte	0
	.uleb128 0x28
	.4byte	.LASF241
	.byte	0x1
	.2byte	0x940
	.4byte	0x30
	.4byte	.LFB102
	.4byte	.LFE102-.LFB102
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2676
	.uleb128 0x26
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x940
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x19
	.uleb128 0x2e
	.4byte	.LASF234
	.byte	0x1
	.2byte	0x941
	.4byte	0x6a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x28
	.4byte	.LASF242
	.byte	0x1
	.2byte	0x947
	.4byte	0x30
	.4byte	.LFB103
	.4byte	.LFE103-.LFB103
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x26bd
	.uleb128 0x25
	.ascii	"s\000"
	.byte	0x1
	.2byte	0x947
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x947
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.uleb128 0x2e
	.4byte	.LASF234
	.byte	0x1
	.2byte	0x948
	.4byte	0x6a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x28
	.4byte	.LASF243
	.byte	0x1
	.2byte	0x94e
	.4byte	0x30
	.4byte	.LFB104
	.4byte	.LFE104-.LFB104
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2706
	.uleb128 0x26
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x94e
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x94e
	.4byte	0x3eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.uleb128 0x2e
	.4byte	.LASF234
	.byte	0x1
	.2byte	0x94f
	.4byte	0x6a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x27
	.4byte	.LASF244
	.byte	0x1
	.2byte	0x955
	.4byte	0x30
	.4byte	.LFB105
	.4byte	.LFE105-.LFB105
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x275b
	.uleb128 0x26
	.4byte	.LASF245
	.byte	0x1
	.2byte	0x955
	.4byte	0x275b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x26
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x956
	.4byte	0x2761
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.ascii	"X\000"
	.byte	0x1
	.2byte	0x957
	.4byte	0x253
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.4byte	.LASF246
	.byte	0x1
	.2byte	0x958
	.4byte	0x253
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x19f
	.uleb128 0xf
	.byte	0x4
	.4byte	0x270
	.uleb128 0x28
	.4byte	.LASF247
	.byte	0x1
	.2byte	0x971
	.4byte	0x30
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x27be
	.uleb128 0x26
	.4byte	.LASF245
	.byte	0x1
	.2byte	0x971
	.4byte	0x275b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x972
	.4byte	0x2761
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.4byte	.LASF246
	.byte	0x1
	.2byte	0x973
	.4byte	0x20a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x975
	.4byte	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x28
	.4byte	.LASF248
	.byte	0x1
	.2byte	0x982
	.4byte	0x10e
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x27e8
	.uleb128 0x2e
	.4byte	.LASF246
	.byte	0x1
	.2byte	0x983
	.4byte	0x10e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x27
	.4byte	.LASF249
	.byte	0x1
	.2byte	0x98b
	.4byte	0x30
	.4byte	.LFB108
	.4byte	.LFE108-.LFB108
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2821
	.uleb128 0x26
	.4byte	.LASF250
	.byte	0x1
	.2byte	0x98b
	.4byte	0x1e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x26
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x98b
	.4byte	0x2761
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x28
	.4byte	.LASF251
	.byte	0x1
	.2byte	0x99b
	.4byte	0x30
	.4byte	.LFB109
	.4byte	.LFE109-.LFB109
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2869
	.uleb128 0x26
	.4byte	.LASF245
	.byte	0x1
	.2byte	0x99b
	.4byte	0x275b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x26
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x99c
	.4byte	0x2761
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x26
	.4byte	.LASF246
	.byte	0x1
	.2byte	0x99d
	.4byte	0x2869
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1e9
	.uleb128 0x40
	.4byte	.LASF252
	.byte	0x1
	.2byte	0x9ab
	.4byte	0x1e9
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2899
	.uleb128 0x2e
	.4byte	.LASF246
	.byte	0x1
	.2byte	0x9ac
	.4byte	0x1e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF253
	.byte	0x1
	.2byte	0x9b5
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x28bf
	.uleb128 0x26
	.4byte	.LASF250
	.byte	0x1
	.2byte	0x9b5
	.4byte	0x1e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x28
	.4byte	.LASF254
	.byte	0x1
	.2byte	0x9b9
	.4byte	0x30
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2920
	.uleb128 0x25
	.ascii	"tv\000"
	.byte	0x1
	.2byte	0x9b9
	.4byte	0x2920
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x25
	.ascii	"tz\000"
	.byte	0x1
	.2byte	0x9b9
	.4byte	0x2926
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.ascii	"s\000"
	.byte	0x1
	.2byte	0x9ba
	.4byte	0x1e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.ascii	"us\000"
	.byte	0x1
	.2byte	0x9bb
	.4byte	0x1e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.4byte	.LASF255
	.byte	0x1
	.2byte	0x9bd
	.4byte	0x1e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1f0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x21c
	.uleb128 0x17
	.4byte	.LASF256
	.byte	0x1
	.byte	0x1d
	.4byte	0x192
	.uleb128 0x5
	.byte	0x3
	.4byte	nextchar
	.uleb128 0x29
	.ascii	"spf\000"
	.byte	0x1
	.2byte	0x117
	.4byte	0x192
	.uleb128 0x5
	.byte	0x3
	.4byte	spf
	.uleb128 0x2e
	.4byte	.LASF257
	.byte	0x1
	.2byte	0x118
	.4byte	0x631
	.uleb128 0x5
	.byte	0x3
	.4byte	fspf
	.uleb128 0x2e
	.4byte	.LASF258
	.byte	0x1
	.2byte	0x119
	.4byte	0x30
	.uleb128 0x5
	.byte	0x3
	.4byte	ffile
	.uleb128 0x29
	.ascii	"m_z\000"
	.byte	0x1
	.2byte	0x422
	.4byte	0x30
	.uleb128 0x5
	.byte	0x3
	.4byte	m_z
	.uleb128 0x29
	.ascii	"m_w\000"
	.byte	0x1
	.2byte	0x422
	.4byte	0x30
	.uleb128 0x5
	.byte	0x3
	.4byte	m_w
	.uleb128 0x10
	.4byte	0x29ae
	.4byte	0x29a7
	.uleb128 0x15
	.4byte	0x1be
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.4byte	.LASF259
	.uleb128 0x21
	.4byte	0x29a7
	.uleb128 0x2e
	.4byte	.LASF260
	.byte	0x1
	.2byte	0x4a2
	.4byte	0x29c5
	.uleb128 0x5
	.byte	0x3
	.4byte	bin_exponents_table
	.uleb128 0x21
	.4byte	0x2997
	.uleb128 0x2e
	.4byte	.LASF261
	.byte	0x1
	.2byte	0x4a4
	.4byte	0x29dc
	.uleb128 0x5
	.byte	0x3
	.4byte	bin_fracs_table
	.uleb128 0x21
	.4byte	0x2997
	.uleb128 0x17
	.4byte	.LASF262
	.byte	0x3
	.byte	0xd
	.4byte	0x30
	.uleb128 0x5
	.byte	0x3
	.4byte	maxExponent
	.uleb128 0x10
	.4byte	0x10e
	.4byte	0x2a02
	.uleb128 0x15
	.4byte	0x1be
	.byte	0x8
	.byte	0
	.uleb128 0x17
	.4byte	.LASF263
	.byte	0x3
	.byte	0x12
	.4byte	0x29f2
	.uleb128 0x5
	.byte	0x3
	.4byte	powersOf10
	.uleb128 0x41
	.4byte	.LASF265
	.byte	0x1
	.byte	0x16
	.4byte	0x631
	.uleb128 0x5
	.byte	0x3
	.4byte	stderr
	.uleb128 0x41
	.4byte	.LASF266
	.byte	0x1
	.byte	0x17
	.4byte	0x631
	.uleb128 0x6
	.byte	0xc
	.word	stdout(tlsldo)
	.byte	0xe0
	.uleb128 0x41
	.4byte	.LASF267
	.byte	0x1
	.byte	0x18
	.4byte	0x631
	.uleb128 0x6
	.byte	0xc
	.word	stdin(tlsldo)
	.byte	0xe0
	.uleb128 0x41
	.4byte	.LASF268
	.byte	0x1
	.byte	0x19
	.4byte	0x30
	.uleb128 0x6
	.byte	0xc
	.word	errno(tlsldo)
	.byte	0xe0
	.uleb128 0x41
	.4byte	.LASF269
	.byte	0x1
	.byte	0x21
	.4byte	0x192
	.uleb128 0x5
	.byte	0x3
	.4byte	optarg
	.uleb128 0x41
	.4byte	.LASF270
	.byte	0x1
	.byte	0x1a
	.4byte	0x42
	.uleb128 0x5
	.byte	0x3
	.4byte	_dl_hwcap
	.uleb128 0x41
	.4byte	.LASF271
	.byte	0x1
	.byte	0x1e
	.4byte	0x30
	.uleb128 0x5
	.byte	0x3
	.4byte	optind
	.uleb128 0x41
	.4byte	.LASF272
	.byte	0x1
	.byte	0x1f
	.4byte	0x30
	.uleb128 0x5
	.byte	0x3
	.4byte	opterr
	.uleb128 0x41
	.4byte	.LASF273
	.byte	0x1
	.byte	0x20
	.4byte	0x30
	.uleb128 0x5
	.byte	0x3
	.4byte	optopt
	.uleb128 0x41
	.4byte	.LASF274
	.byte	0x1
	.byte	0x23
	.4byte	0x192
	.uleb128 0x5
	.byte	0x3
	.4byte	stdin_addr
	.uleb128 0x41
	.4byte	.LASF275
	.byte	0x1
	.byte	0x2d
	.4byte	0x270
	.uleb128 0x5
	.byte	0x3
	.4byte	__prlibc_drand48_data
	.uleb128 0x41
	.4byte	.LASF264
	.byte	0x1
	.byte	0x2f
	.4byte	0x128b
	.uleb128 0x5
	.byte	0x3
	.4byte	powten
	.uleb128 0x42
	.4byte	.LASF276
	.byte	0x1
	.2byte	0x16d
	.4byte	0x30
	.uleb128 0x5
	.byte	0x3
	.4byte	printf_q
	.uleb128 0x42
	.4byte	.LASF277
	.byte	0x1
	.2byte	0x207
	.4byte	0x2b06
	.uleb128 0x5
	.byte	0x3
	.4byte	dof_mutex_spacer
	.uleb128 0x14
	.4byte	0x1e9
	.uleb128 0x42
	.4byte	.LASF278
	.byte	0x1
	.2byte	0x208
	.4byte	0x243
	.uleb128 0x5
	.byte	0x3
	.4byte	dof_mutex
	.uleb128 0x42
	.4byte	.LASF279
	.byte	0x1
	.2byte	0x23e
	.4byte	0x198
	.uleb128 0x5
	.byte	0x3
	.4byte	printi_zeroflag
	.uleb128 0x42
	.4byte	.LASF280
	.byte	0x1
	.2byte	0x37e
	.4byte	0x243
	.uleb128 0x5
	.byte	0x3
	.4byte	malloc_mutex
	.uleb128 0x42
	.4byte	.LASF281
	.byte	0x1
	.2byte	0x380
	.4byte	0x1c0f
	.uleb128 0x5
	.byte	0x3
	.4byte	heapbase
	.uleb128 0x10
	.4byte	0x2b63
	.4byte	0x2b63
	.uleb128 0x15
	.4byte	0x1be
	.byte	0x7
	.byte	0
	.uleb128 0x21
	.4byte	0x42
	.uleb128 0x42
	.4byte	.LASF282
	.byte	0x1
	.2byte	0x455
	.4byte	0x2b7a
	.uleb128 0x5
	.byte	0x3
	.4byte	hex32_table
	.uleb128 0x21
	.4byte	0x2b53
	.uleb128 0x10
	.4byte	0x2b8f
	.4byte	0x2b8f
	.uleb128 0x15
	.4byte	0x1be
	.byte	0xf
	.byte	0
	.uleb128 0x21
	.4byte	0x253
	.uleb128 0x42
	.4byte	.LASF283
	.byte	0x1
	.2byte	0x461
	.4byte	0x2ba6
	.uleb128 0x5
	.byte	0x3
	.4byte	hex64_table
	.uleb128 0x21
	.4byte	0x2b7f
	.uleb128 0x10
	.4byte	0x2bbb
	.4byte	0x2bbb
	.uleb128 0x15
	.4byte	0x1be
	.byte	0x9
	.byte	0
	.uleb128 0x21
	.4byte	0x265
	.uleb128 0x42
	.4byte	.LASF284
	.byte	0x1
	.2byte	0x475
	.4byte	0x2bd2
	.uleb128 0x5
	.byte	0x3
	.4byte	dec32_table
	.uleb128 0x21
	.4byte	0x2bab
	.uleb128 0x10
	.4byte	0x2b8f
	.4byte	0x2be7
	.uleb128 0x15
	.4byte	0x1be
	.byte	0x13
	.byte	0
	.uleb128 0x42
	.4byte	.LASF285
	.byte	0x1
	.2byte	0x483
	.4byte	0x2bf9
	.uleb128 0x5
	.byte	0x3
	.4byte	dec64_table
	.uleb128 0x21
	.4byte	0x2bd7
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB15-.Ltext0
	.4byte	.LBE15-.Ltext0
	.4byte	.LBB16-.Ltext0
	.4byte	.LBE16-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB17-.Ltext0
	.4byte	.LBE17-.Ltext0
	.4byte	.LBB18-.Ltext0
	.4byte	.LBE18-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB23-.Ltext0
	.4byte	.LBE23-.Ltext0
	.4byte	.LBB24-.Ltext0
	.4byte	.LBE24-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB36-.Ltext0
	.4byte	.LBE36-.Ltext0
	.4byte	.LBB39-.Ltext0
	.4byte	.LBE39-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF85:
	.ascii	"printf\000"
.LASF44:
	.ascii	"unsigned char\000"
.LASF125:
	.ascii	"malloc\000"
.LASF108:
	.ascii	"strcmp\000"
.LASF262:
	.ascii	"maxExponent\000"
.LASF0:
	.ascii	"size_t\000"
.LASF282:
	.ascii	"hex32_table\000"
.LASF1:
	.ascii	"uintptr_t\000"
.LASF216:
	.ascii	"decPt\000"
.LASF120:
	.ascii	"checksum\000"
.LASF228:
	.ascii	"basefix\000"
.LASF145:
	.ascii	"close\000"
.LASF42:
	.ascii	"__init\000"
.LASF67:
	.ascii	"bcopy\000"
.LASF54:
	.ascii	"strstr\000"
.LASF138:
	.ascii	"esign\000"
.LASF49:
	.ascii	"proc_id\000"
.LASF107:
	.ascii	"strncpy\000"
.LASF76:
	.ascii	"prstring\000"
.LASF118:
	.ascii	"stream\000"
.LASF38:
	.ascii	"long long unsigned int\000"
.LASF173:
	.ascii	"enable_tz_supress\000"
.LASF148:
	.ascii	"addr\000"
.LASF16:
	.ascii	"_F_BIN\000"
.LASF266:
	.ascii	"stdout\000"
.LASF286:
	.ascii	"GNU C11 5.4.0 20160609 -mthumb -mthumb-interwork -m"
	.ascii	"arch=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -g "
	.ascii	"-fno-builtin -fno-reorder-functions -fno-toplevel-r"
	.ascii	"eorder -fstack-protector-strong\000"
.LASF252:
	.ascii	"lrand48\000"
.LASF130:
	.ascii	"free\000"
.LASF236:
	.ascii	"strtoq\000"
.LASF239:
	.ascii	"vsscanf\000"
.LASF195:
	.ascii	"__sccl\000"
.LASF233:
	.ascii	"fscanf\000"
.LASF26:
	.ascii	"stat\000"
.LASF180:
	.ascii	"puthex32\000"
.LASF8:
	.ascii	"ieee\000"
.LASF127:
	.ascii	"signed char\000"
.LASF78:
	.ascii	"field\000"
.LASF63:
	.ascii	"memchr\000"
.LASF283:
	.ascii	"hex64_table\000"
.LASF172:
	.ascii	"imant\000"
.LASF59:
	.ascii	"dstp\000"
.LASF276:
	.ascii	"printf_q\000"
.LASF270:
	.ascii	"_dl_hwcap\000"
.LASF212:
	.ascii	"fraction\000"
.LASF251:
	.ascii	"__nrand48_r\000"
.LASF80:
	.ascii	"format\000"
.LASF160:
	.ascii	"__assert_fail\000"
.LASF215:
	.ascii	"mantSize\000"
.LASF182:
	.ascii	"getopt\000"
.LASF209:
	.ascii	"strtod\000"
.LASF79:
	.ascii	"locked_printf\000"
.LASF28:
	.ascii	"long int\000"
.LASF186:
	.ascii	"gets\000"
.LASF263:
	.ascii	"powersOf10\000"
.LASF203:
	.ascii	"strtol\000"
.LASF243:
	.ascii	"__isoc99_sscanf\000"
.LASF133:
	.ascii	"code\000"
.LASF73:
	.ascii	"__va_list\000"
.LASF161:
	.ascii	"__assert_func\000"
.LASF64:
	.ascii	"memcpy\000"
.LASF25:
	.ascii	"stdio\000"
.LASF168:
	.ascii	"bitpos\000"
.LASF53:
	.ascii	"putchar\000"
.LASF46:
	.ascii	"long long int\000"
.LASF210:
	.ascii	"endPtr\000"
.LASF10:
	.ascii	"double\000"
.LASF231:
	.ascii	"input_failure\000"
.LASF289:
	.ascii	"FileFlags\000"
.LASF290:
	.ascii	"main\000"
.LASF219:
	.ascii	"frac1\000"
.LASF176:
	.ascii	"signedf\000"
.LASF196:
	.ascii	"doswitch\000"
.LASF45:
	.ascii	"quad_t\000"
.LASF227:
	.ascii	"ccltab\000"
.LASF199:
	.ascii	"count\000"
.LASF244:
	.ascii	"__drand48_iterate\000"
.LASF43:
	.ascii	"byte\000"
.LASF250:
	.ascii	"seedval\000"
.LASF33:
	.ascii	"timezone\000"
.LASF281:
	.ascii	"heapbase\000"
.LASF7:
	.ascii	"quiet_nan\000"
.LASF153:
	.ascii	"sysconf\000"
.LASF166:
	.ascii	"in_exp\000"
.LASF134:
	.ascii	"filename\000"
.LASF183:
	.ascii	"temp\000"
.LASF226:
	.ascii	"ccfn\000"
.LASF69:
	.ascii	"bzero\000"
.LASF2:
	.ascii	"unsigned int\000"
.LASF119:
	.ascii	"sa_write\000"
.LASF15:
	.ascii	"_F_EOF\000"
.LASF191:
	.ascii	"getc\000"
.LASF72:
	.ascii	"fprintf\000"
.LASF122:
	.ascii	"getchar\000"
.LASF273:
	.ascii	"optopt\000"
.LASF275:
	.ascii	"__prlibc_drand48_data\000"
.LASF68:
	.ascii	"bcmp\000"
.LASF32:
	.ascii	"long unsigned int\000"
.LASF256:
	.ascii	"nextchar\000"
.LASF5:
	.ascii	"exponent\000"
.LASF154:
	.ascii	"rand\000"
.LASF149:
	.ascii	"prot\000"
.LASF159:
	.ascii	"whence\000"
.LASF86:
	.ascii	"vsnprintf\000"
.LASF223:
	.ascii	"width\000"
.LASF19:
	.ascii	"data\000"
.LASF132:
	.ascii	"_assert_failed\000"
.LASF87:
	.ascii	"size\000"
.LASF21:
	.ascii	"short unsigned int\000"
.LASF158:
	.ascii	"lseek\000"
.LASF40:
	.ascii	"drand48_data\000"
.LASF205:
	.ascii	"endptr\000"
.LASF103:
	.ascii	"strlen\000"
.LASF181:
	.ascii	"optstring\000"
.LASF89:
	.ascii	"string\000"
.LASF98:
	.ascii	"tolower\000"
.LASF71:
	.ascii	"pfputc\000"
.LASF268:
	.ascii	"errno\000"
.LASF190:
	.ascii	"fgetc\000"
.LASF280:
	.ascii	"malloc_mutex\000"
.LASF171:
	.ascii	"upper_bound\000"
.LASF124:
	.ascii	"writes\000"
.LASF55:
	.ascii	"haystack\000"
.LASF111:
	.ascii	"strncasecmp\000"
.LASF34:
	.ascii	"tz_minuteswest\000"
.LASF104:
	.ascii	"strcpy\000"
.LASF121:
	.ascii	"get_core_id\000"
.LASF242:
	.ascii	"sscanf\000"
.LASF88:
	.ascii	"sprintf\000"
.LASF97:
	.ascii	"isprint\000"
.LASF29:
	.ascii	"timeval\000"
.LASF106:
	.ascii	"strcat\000"
.LASF229:
	.ascii	"literal\000"
.LASF222:
	.ascii	"fmt0\000"
.LASF255:
	.ascii	"ctime\000"
.LASF91:
	.ascii	"ignored_\000"
.LASF27:
	.ascii	"st_size\000"
.LASF245:
	.ascii	"xsubi\000"
.LASF257:
	.ascii	"fspf\000"
.LASF56:
	.ascii	"needle\000"
.LASF82:
	.ascii	"argsused\000"
.LASF114:
	.ascii	"base\000"
.LASF47:
	.ascii	"u_quad_t\000"
.LASF60:
	.ascii	"OPSIZ\000"
.LASF202:
	.ascii	"isspace\000"
.LASF131:
	.ascii	"getpagesize\000"
.LASF81:
	.ascii	"zeropad\000"
.LASF269:
	.ascii	"optarg\000"
.LASF189:
	.ascii	"fgets\000"
.LASF23:
	.ascii	"sizetype\000"
.LASF279:
	.ascii	"printi_zeroflag\000"
.LASF177:
	.ascii	"lzchar\000"
.LASF200:
	.ascii	"resid\000"
.LASF214:
	.ascii	"fracExp\000"
.LASF143:
	.ascii	"open\000"
.LASF178:
	.ascii	"puthex64\000"
.LASF84:
	.ascii	"address\000"
.LASF30:
	.ascii	"tv_sec\000"
.LASF264:
	.ascii	"powten\000"
.LASF175:
	.ascii	"leadingz\000"
.LASF77:
	.ascii	"prefield\000"
.LASF278:
	.ascii	"dof_mutex\000"
.LASF99:
	.ascii	"toupper\000"
.LASF100:
	.ascii	"islower\000"
.LASF151:
	.ascii	"munmap\000"
.LASF61:
	.ascii	"xlen\000"
.LASF65:
	.ascii	"dest\000"
.LASF184:
	.ascii	"fputs\000"
.LASF230:
	.ascii	"again\000"
.LASF135:
	.ascii	"linno\000"
.LASF102:
	.ascii	"isalpha\000"
.LASF265:
	.ascii	"stderr\000"
.LASF96:
	.ascii	"isdigit\000"
.LASF11:
	.ascii	"_F_READ\000"
.LASF248:
	.ascii	"drand48\000"
.LASF165:
	.ascii	"tobits\000"
.LASF204:
	.ascii	"nptr\000"
.LASF185:
	.ascii	"fflush\000"
.LASF155:
	.ascii	"write\000"
.LASF4:
	.ascii	"mantissa0\000"
.LASF3:
	.ascii	"mantissa1\000"
.LASF152:
	.ascii	"srand\000"
.LASF287:
	.ascii	"/home/dtc34/Documents/P35/pvp11/vhls/src/crt/prlibc"
	.ascii	"/prlibc.c\000"
.LASF58:
	.ascii	"dstpp\000"
.LASF136:
	.ascii	"atof\000"
.LASF237:
	.ascii	"qbase\000"
.LASF141:
	.ascii	"pathname\000"
.LASF113:
	.ascii	"atoi\000"
.LASF232:
	.ascii	"match_failure\000"
.LASF167:
	.ascii	"mant\000"
.LASF115:
	.ascii	"atol\000"
.LASF164:
	.ascii	"ieee754_double\000"
.LASF260:
	.ascii	"bin_exponents_table\000"
.LASF92:
	.ascii	"hex1\000"
.LASF93:
	.ascii	"hex2\000"
.LASF253:
	.ascii	"srand48\000"
.LASF110:
	.ascii	"strncmp\000"
.LASF22:
	.ascii	"short int\000"
.LASF37:
	.ascii	"u64_t\000"
.LASF70:
	.ascii	"__sflush\000"
.LASF101:
	.ascii	"isalnum\000"
.LASF217:
	.ascii	"pExp\000"
.LASF170:
	.ascii	"lower_bound\000"
.LASF39:
	.ascii	"u32_t\000"
.LASF6:
	.ascii	"negative\000"
.LASF146:
	.ascii	"fsync\000"
.LASF241:
	.ascii	"scanf\000"
.LASF24:
	.ascii	"FILE\000"
.LASF13:
	.ascii	"_F_RDWR\000"
.LASF52:
	.ascii	"exit\000"
.LASF198:
	.ascii	"fread\000"
.LASF41:
	.ascii	"__old_x\000"
.LASF271:
	.ascii	"optind\000"
.LASF95:
	.ascii	"isupper\000"
.LASF112:
	.ascii	"strchr\000"
.LASF162:
	.ascii	"putdouble\000"
.LASF163:
	.ascii	"scientific_form\000"
.LASF240:
	.ascii	"nconversions\000"
.LASF31:
	.ascii	"tv_usec\000"
.LASF218:
	.ascii	"done\000"
.LASF221:
	.ascii	"vfscanf\000"
.LASF225:
	.ascii	"nread\000"
.LASF234:
	.ascii	"args\000"
.LASF188:
	.ascii	"__srefill\000"
.LASF14:
	.ascii	"_F_ERR\000"
.LASF147:
	.ascii	"mmap\000"
.LASF66:
	.ascii	"length\000"
.LASF20:
	.ascii	"char\000"
.LASF109:
	.ascii	"strcasecmp\000"
.LASF142:
	.ascii	"mode\000"
.LASF197:
	.ascii	"ungetc\000"
.LASF211:
	.ascii	"expSign\000"
.LASF169:
	.ascii	"precision\000"
.LASF274:
	.ascii	"stdin_addr\000"
.LASF12:
	.ascii	"_F_WRIT\000"
.LASF259:
	.ascii	"long double\000"
.LASF192:
	.ascii	"fopen\000"
.LASF249:
	.ascii	"__srand48_r\000"
.LASF156:
	.ascii	"buffer\000"
.LASF272:
	.ascii	"opterr\000"
.LASF291:
	.ascii	"getpid\000"
.LASF284:
	.ascii	"dec32_table\000"
.LASF207:
	.ascii	"cutlim\000"
.LASF206:
	.ascii	"cutoff\000"
.LASF150:
	.ascii	"offset\000"
.LASF267:
	.ascii	"stdin\000"
.LASF174:
	.ascii	"putdec64\000"
.LASF74:
	.ascii	"__ap\000"
.LASF75:
	.ascii	"vfprintf\000"
.LASF288:
	.ascii	"/home/dtc34/Documents/P35/aes/prazor-arm\000"
.LASF247:
	.ascii	"__erand48_r\000"
.LASF9:
	.ascii	"ieee_nan\000"
.LASF144:
	.ascii	"fstat\000"
.LASF201:
	.ascii	"total\000"
.LASF90:
	.ascii	"snprintf\000"
.LASF51:
	.ascii	"_argv_main\000"
.LASF140:
	.ascii	"creat\000"
.LASF62:
	.ascii	"cccc\000"
.LASF179:
	.ascii	"putdec32\000"
.LASF117:
	.ascii	"nmemb\000"
.LASF57:
	.ascii	"memset\000"
.LASF94:
	.ascii	"debhex8\000"
.LASF208:
	.ascii	"strtoul\000"
.LASF277:
	.ascii	"dof_mutex_spacer\000"
.LASF194:
	.ascii	"_getopt_initialize\000"
.LASF238:
	.ascii	"strtouq\000"
.LASF126:
	.ascii	"calloc\000"
.LASF258:
	.ascii	"ffile\000"
.LASF105:
	.ascii	"strdup\000"
.LASF213:
	.ascii	"dblExp\000"
.LASF35:
	.ascii	"tz_dsttime\000"
.LASF137:
	.ascii	"sign\000"
.LASF18:
	.ascii	"flags\000"
.LASF254:
	.ascii	"gettimeofday\000"
.LASF139:
	.ascii	"perror\000"
.LASF220:
	.ascii	"frac2\000"
.LASF285:
	.ascii	"dec64_table\000"
.LASF157:
	.ascii	"read\000"
.LASF116:
	.ascii	"fwrite\000"
.LASF48:
	.ascii	"argc\000"
.LASF17:
	.ascii	"handle\000"
.LASF128:
	.ascii	"realloc\000"
.LASF261:
	.ascii	"bin_fracs_table\000"
.LASF187:
	.ascii	"begin\000"
.LASF123:
	.ascii	"puts\000"
.LASF50:
	.ascii	"argv\000"
.LASF83:
	.ascii	"longf\000"
.LASF246:
	.ascii	"result\000"
.LASF129:
	.ascii	"newp\000"
.LASF193:
	.ascii	"fclose\000"
.LASF224:
	.ascii	"nassigned\000"
.LASF36:
	.ascii	"prlibc_mutex_t\000"
.LASF235:
	.ascii	"__isoc99_fscanf\000"
	.ident	"GCC: (Ubuntu/Linaro 5.4.0-6ubuntu1~16.04.9) 5.4.0 20160609"
	.section	.note.GNU-stack,"",%progbits
