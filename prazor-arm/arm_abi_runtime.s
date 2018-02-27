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
	.file	"arm_abi_runtime.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata
	.align	2
.LC0:
	.ascii	"GCC Runtime Raise 3\012\012\000"
	.text
	.align	2
	.global	__aeabi_unwind_cpp_pr0
	.syntax unified
	.thumb
	.thumb_func
	.type	__aeabi_unwind_cpp_pr0, %function
__aeabi_unwind_cpp_pr0:
.LFB0:
	.file 1 "/home/dtc34/Documents/P35/pvp11/vhls/images/arm_abi_runtime.c"
	.loc 1 13 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 14 0
	movw	r0, #:lower16:.LC0
	movt	r0, #:upper16:.LC0
	bl	printf
	.loc 1 15 0
	nop
	pop	{r7, pc}
	.cfi_endproc
.LFE0:
	.size	__aeabi_unwind_cpp_pr0, .-__aeabi_unwind_cpp_pr0
	.section	.rodata
	.align	2
.LC1:
	.ascii	"GCC Runtime Raise 2\012\012\000"
	.text
	.align	2
	.global	__stack_chk_guard
	.syntax unified
	.thumb
	.thumb_func
	.type	__stack_chk_guard, %function
__stack_chk_guard:
.LFB1:
	.loc 1 17 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 18 0
	movw	r0, #:lower16:.LC1
	movt	r0, #:upper16:.LC1
	bl	printf
	.loc 1 19 0
	nop
	pop	{r7, pc}
	.cfi_endproc
.LFE1:
	.size	__stack_chk_guard, .-__stack_chk_guard
	.section	.rodata
	.align	2
.LC2:
	.ascii	"GCC Runtime Raise 1\012\012\000"
	.text
	.align	2
	.global	__stack_chk_fail
	.syntax unified
	.thumb
	.thumb_func
	.type	__stack_chk_fail, %function
__stack_chk_fail:
.LFB2:
	.loc 1 21 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 22 0
	movw	r0, #:lower16:.LC2
	movt	r0, #:upper16:.LC2
	bl	printf
	.loc 1 23 0
	nop
	pop	{r7, pc}
	.cfi_endproc
.LFE2:
	.size	__stack_chk_fail, .-__stack_chk_fail
	.section	.rodata
	.align	2
.LC3:
	.ascii	"GCC Runtime Raise 0\012\012\000"
	.text
	.align	2
	.global	raise
	.syntax unified
	.thumb
	.thumb_func
	.type	raise, %function
raise:
.LFB3:
	.loc 1 27 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 28 0
	movw	r0, #:lower16:.LC3
	movt	r0, #:upper16:.LC3
	bl	printf
	.loc 1 29 0
	nop
	pop	{r7, pc}
	.cfi_endproc
.LFE3:
	.size	raise, .-raise
.Letext0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xa1
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF12
	.byte	0xc
	.4byte	.LASF13
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x1
	.byte	0xc
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x1
	.byte	0x10
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x1
	.byte	0x14
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x1
	.byte	0x1a
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
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
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF13:
	.ascii	"/home/dtc34/Documents/P35/pvp11/vhls/images/arm_abi"
	.ascii	"_runtime.c\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF11:
	.ascii	"raise\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF4:
	.ascii	"short int\000"
.LASF1:
	.ascii	"double\000"
.LASF2:
	.ascii	"char\000"
.LASF5:
	.ascii	"sizetype\000"
.LASF6:
	.ascii	"long int\000"
.LASF9:
	.ascii	"__stack_chk_guard\000"
.LASF8:
	.ascii	"__aeabi_unwind_cpp_pr0\000"
.LASF10:
	.ascii	"__stack_chk_fail\000"
.LASF12:
	.ascii	"GNU C11 5.4.0 20160609 -mthumb -mthumb-interwork -m"
	.ascii	"arch=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -g "
	.ascii	"-fno-builtin -fno-reorder-functions -fno-toplevel-r"
	.ascii	"eorder -fstack-protector-strong\000"
	.ident	"GCC: (Ubuntu/Linaro 5.4.0-6ubuntu1~16.04.9) 5.4.0 20160609"
	.section	.note.GNU-stack,"",%progbits
