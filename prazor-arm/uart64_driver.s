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
	.file	"uart64_driver.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.comm	console_flags,4,4
	.align	2
	.syntax unified
	.thumb
	.thumb_func
	.type	local_wait, %function
local_wait:
.LFB0:
	.file 1 "/home/dtc34/Documents/P35/pvp11/vhls/src/devicedrivers/uart64_cbg/uart64_driver.c"
	.loc 1 17 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 26 0
	nop
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE0:
	.size	local_wait, .-local_wait
	.align	2
	.global	uart_polled_read
	.syntax unified
	.thumb
	.thumb_func
	.type	uart_polled_read, %function
uart_polled_read:
.LFB1:
	.loc 1 30 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 31 0
	b	.L3
.L4:
	.loc 1 31 0 is_stmt 0 discriminator 2
	bl	local_wait
.L3:
	.loc 1 31 0 discriminator 1
	movw	r3, #4140
	movt	r3, 57344
	ldrb	r3, [r3]
	uxtb	r3, r3
	and	r3, r3, #2
	cmp	r3, #0
	bne	.L4
	.loc 1 32 0 is_stmt 1
	movw	r3, #4144
	movt	r3, 57344
	ldrb	r3, [r3]
	uxtb	r3, r3
	.loc 1 33 0
	mov	r0, r3
	pop	{r7, pc}
	.cfi_endproc
.LFE1:
	.size	uart_polled_read, .-uart_polled_read
	.align	2
	.global	uart_polled_write
	.syntax unified
	.thumb
	.thumb_func
	.type	uart_polled_write, %function
uart_polled_write:
.LFB2:
	.loc 1 37 0
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
	mov	r3, r0
	strb	r3, [r7, #7]
	.loc 1 38 0
	b	.L7
.L8:
	.loc 1 39 0
	bl	local_wait
.L7:
	.loc 1 38 0
	movw	r3, #4140
	movt	r3, 57344
	ldrb	r3, [r3]
	uxtb	r3, r3
	and	r3, r3, #16
	cmp	r3, #0
	bne	.L8
	.loc 1 40 0
	movw	r3, #4144
	movt	r3, 57344
	ldrb	r2, [r7, #7]
	strb	r2, [r3]
	.loc 1 41 0
	nop
	adds	r7, r7, #8
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE2:
	.size	uart_polled_write, .-uart_polled_write
	.comm	rx_buffer,256,4
	.comm	tx_buffer,256,4
	.comm	rx_inptr,4,4
	.comm	rx_outptr,4,4
	.comm	tx_inptr,4,4
	.comm	tx_outptr,4,4
	.global	interrupts_enabled
	.bss
	.align	2
	.type	interrupts_enabled, %object
	.size	interrupts_enabled, 4
interrupts_enabled:
	.space	4
	.text
	.align	2
	.global	uart_reset_and_enable
	.syntax unified
	.thumb
	.thumb_func
	.type	uart_reset_and_enable, %function
uart_reset_and_enable:
.LFB3:
	.loc 1 54 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 55 0
	movw	r3, #:lower16:rx_inptr
	movt	r3, #:upper16:rx_inptr
	movs	r2, #0
	str	r2, [r3]
	.loc 1 56 0
	movw	r3, #:lower16:rx_outptr
	movt	r3, #:upper16:rx_outptr
	movs	r2, #0
	str	r2, [r3]
	.loc 1 57 0
	movw	r3, #:lower16:tx_inptr
	movt	r3, #:upper16:tx_inptr
	movs	r2, #0
	str	r2, [r3]
	.loc 1 58 0
	movw	r3, #:lower16:tx_outptr
	movt	r3, #:upper16:tx_outptr
	movs	r2, #0
	str	r2, [r3]
	.loc 1 59 0
	movw	r3, #:lower16:interrupts_enabled
	movt	r3, #:upper16:interrupts_enabled
	movs	r2, #1
	str	r2, [r3]
	.loc 1 60 0
	movw	r3, #4104
	movt	r3, 57344
	movs	r2, #2
	strb	r2, [r3]
	.loc 1 61 0
	nop
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE3:
	.size	uart_reset_and_enable, .-uart_reset_and_enable
	.align	2
	.global	uart_read_char
	.syntax unified
	.thumb
	.thumb_func
	.type	uart_read_char, %function
uart_read_char:
.LFB4:
	.loc 1 65 0
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
	.loc 1 66 0
	b	.L11
.L12:
	.loc 1 66 0 is_stmt 0 discriminator 2
	bl	local_wait
.L11:
	.loc 1 66 0 discriminator 1
	movw	r3, #:lower16:rx_inptr
	movt	r3, #:upper16:rx_inptr
	ldr	r2, [r3]
	movw	r3, #:lower16:rx_outptr
	movt	r3, #:upper16:rx_outptr
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L12
	.loc 1 67 0 is_stmt 1
	movw	r3, #:lower16:rx_outptr
	movt	r3, #:upper16:rx_outptr
	ldr	r2, [r3]
	movw	r3, #:lower16:rx_buffer
	movt	r3, #:upper16:rx_buffer
	ldrb	r3, [r3, r2]
	strb	r3, [r7, #7]
	.loc 1 68 0
	movw	r3, #:lower16:rx_outptr
	movt	r3, #:upper16:rx_outptr
	ldr	r3, [r3]
	adds	r3, r3, #1
	uxtb	r2, r3
	movw	r3, #:lower16:rx_outptr
	movt	r3, #:upper16:rx_outptr
	str	r2, [r3]
	.loc 1 69 0
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	.loc 1 70 0
	mov	r0, r3
	adds	r7, r7, #8
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE4:
	.size	uart_read_char, .-uart_read_char
	.align	2
	.syntax unified
	.thumb
	.thumb_func
	.type	uart_rx_isr, %function
uart_rx_isr:
.LFB5:
	.loc 1 73 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 74 0
	movw	r3, #4140
	movt	r3, 57344
	ldrb	r3, [r3]
	uxtb	r3, r3
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L15
	.loc 1 74 0 is_stmt 0 discriminator 1
	movs	r3, #0
	b	.L16
.L15:
	.loc 1 75 0 is_stmt 1
	movw	r3, #:lower16:rx_inptr
	movt	r3, #:upper16:rx_inptr
	ldr	r2, [r3]
	movw	r3, #4144
	movt	r3, 57344
	ldrb	r3, [r3]
	uxtb	r1, r3
	movw	r3, #:lower16:rx_buffer
	movt	r3, #:upper16:rx_buffer
	strb	r1, [r3, r2]
	.loc 1 76 0
	movw	r3, #:lower16:rx_inptr
	movt	r3, #:upper16:rx_inptr
	ldr	r3, [r3]
	adds	r3, r3, #1
	uxtb	r2, r3
	movw	r3, #:lower16:rx_inptr
	movt	r3, #:upper16:rx_inptr
	str	r2, [r3]
	.loc 1 77 0
	movs	r3, #1
.L16:
	.loc 1 78 0
	mov	r0, r3
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE5:
	.size	uart_rx_isr, .-uart_rx_isr
	.align	2
	.global	uart_write_char
	.syntax unified
	.thumb
	.thumb_func
	.type	uart_write_char, %function
uart_write_char:
.LFB6:
	.loc 1 86 0
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
	mov	r3, r0
	strb	r3, [r7, #7]
	.loc 1 87 0
	b	.L18
.L19:
	.loc 1 87 0 is_stmt 0 discriminator 2
	bl	local_wait
.L18:
	.loc 1 87 0 discriminator 1
	movw	r3, #:lower16:tx_inptr
	movt	r3, #:upper16:tx_inptr
	ldr	r3, [r3]
	adds	r3, r3, #1
	uxtb	r2, r3
	movw	r3, #:lower16:tx_outptr
	movt	r3, #:upper16:tx_outptr
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L19
	.loc 1 88 0 is_stmt 1
	movw	r3, #:lower16:tx_inptr
	movt	r3, #:upper16:tx_inptr
	ldr	r2, [r3]
	movw	r3, #:lower16:tx_buffer
	movt	r3, #:upper16:tx_buffer
	ldrb	r1, [r7, #7]
	strb	r1, [r3, r2]
	.loc 1 89 0
	movw	r3, #:lower16:tx_inptr
	movt	r3, #:upper16:tx_inptr
	ldr	r3, [r3]
	adds	r3, r3, #1
	uxtb	r2, r3
	movw	r3, #:lower16:tx_inptr
	movt	r3, #:upper16:tx_inptr
	str	r2, [r3]
	.loc 1 91 0
	movw	r3, #4104
	movt	r3, 57344
	movs	r2, #8
	strb	r2, [r3]
	.loc 1 92 0
	nop
	adds	r7, r7, #8
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE6:
	.size	uart_write_char, .-uart_write_char
	.align	2
	.syntax unified
	.thumb
	.thumb_func
	.type	uart_tx_isr, %function
uart_tx_isr:
.LFB7:
	.loc 1 95 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 96 0
	movw	r3, #:lower16:tx_inptr
	movt	r3, #:upper16:tx_inptr
	ldr	r2, [r3]
	movw	r3, #:lower16:tx_outptr
	movt	r3, #:upper16:tx_outptr
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L21
	.loc 1 98 0
	movw	r3, #4108
	movt	r3, 57344
	movs	r2, #8
	strb	r2, [r3]
	.loc 1 99 0
	movs	r3, #0
	b	.L22
.L21:
	.loc 1 101 0
	movw	r3, #4140
	movt	r3, 57344
	ldrb	r3, [r3]
	uxtb	r3, r3
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L23
	.loc 1 101 0 is_stmt 0 discriminator 1
	movs	r3, #0
	b	.L22
.L23:
	.loc 1 102 0 is_stmt 1
	movw	r3, #4144
	movt	r3, 57344
	movw	r2, #:lower16:tx_outptr
	movt	r2, #:upper16:tx_outptr
	ldr	r1, [r2]
	movw	r2, #:lower16:tx_buffer
	movt	r2, #:upper16:tx_buffer
	ldrb	r2, [r2, r1]	@ zero_extendqisi2
	strb	r2, [r3]
	.loc 1 103 0
	movw	r3, #:lower16:tx_outptr
	movt	r3, #:upper16:tx_outptr
	ldr	r3, [r3]
	adds	r3, r3, #1
	uxtb	r2, r3
	movw	r3, #:lower16:tx_outptr
	movt	r3, #:upper16:tx_outptr
	str	r2, [r3]
	.loc 1 104 0
	movs	r3, #1
.L22:
	.loc 1 105 0
	mov	r0, r3
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7}
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE7:
	.size	uart_tx_isr, .-uart_tx_isr
	.align	2
	.global	uart_isr_routine
	.syntax unified
	.thumb
	.thumb_func
	.type	uart_isr_routine, %function
uart_isr_routine:
.LFB8:
	.loc 1 114 0
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
.L27:
.LBB2:
	.loc 1 117 0
	movs	r3, #0
	str	r3, [r7, #4]
	.loc 1 118 0
	bl	uart_rx_isr
	mov	r2, r0
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r7, #4]
	.loc 1 119 0
	bl	uart_tx_isr
	mov	r2, r0
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r7, #4]
	.loc 1 120 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L29
.LBE2:
	.loc 1 121 0
	b	.L27
.L29:
.LBB3:
	.loc 1 120 0
	nop
.LBE3:
	.loc 1 122 0
	nop
	adds	r7, r7, #8
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE8:
	.size	uart_isr_routine, .-uart_isr_routine
	.align	2
	.global	uart_start
	.syntax unified
	.thumb
	.thumb_func
	.type	uart_start, %function
uart_start:
.LFB9:
	.loc 1 127 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 128 0
	movw	r3, #:lower16:console_flags
	movt	r3, #:upper16:console_flags
	movs	r2, #0
	str	r2, [r3]
	.loc 1 130 0
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
.LFE9:
	.size	uart_start, .-uart_start
	.align	2
	.global	craft_rdch
	.syntax unified
	.thumb
	.thumb_func
	.type	craft_rdch, %function
craft_rdch:
.LFB10:
	.loc 1 133 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 134 0
	bl	uart_polled_read
	mov	r3, r0
	.loc 1 135 0
	mov	r0, r3
	pop	{r7, pc}
	.cfi_endproc
.LFE10:
	.size	craft_rdch, .-craft_rdch
	.align	2
	.syntax unified
	.thumb
	.thumb_func
	.type	dispatching_wrch, %function
dispatching_wrch:
.LFB11:
	.loc 1 139 0
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
	mov	r3, r0
	strb	r3, [r7, #7]
	.loc 1 140 0
	movw	r3, #:lower16:interrupts_enabled
	movt	r3, #:upper16:interrupts_enabled
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L34
	.loc 1 142 0
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	mov	r0, r3
	bl	uart_write_char
	.loc 1 148 0
	b	.L36
.L34:
	.loc 1 146 0
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	mov	r0, r3
	bl	uart_polled_write
.L36:
	.loc 1 148 0
	nop
	adds	r7, r7, #8
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE11:
	.size	dispatching_wrch, .-dispatching_wrch
	.align	2
	.global	craft_wrch
	.syntax unified
	.thumb
	.thumb_func
	.type	craft_wrch, %function
craft_wrch:
.LFB12:
	.loc 1 152 0
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
	mov	r3, r0
	strb	r3, [r7, #7]
	.loc 1 153 0
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	mov	r0, r3
	bl	dispatching_wrch
	.loc 1 154 0
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #10
	bne	.L39
	.loc 1 157 0
	movs	r0, #13
	bl	dispatching_wrch
.L39:
	.loc 1 159 0
	nop
	adds	r7, r7, #8
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE12:
	.size	craft_wrch, .-craft_wrch
.Letext0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x230
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0xc
	.4byte	.LASF20
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x1
	.byte	0x10
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x1
	.byte	0x1d
	.4byte	0x47
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF0
	.uleb128 0x5
	.4byte	.LASF1
	.byte	0x1
	.byte	0x24
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x70
	.uleb128 0x6
	.ascii	"d\000"
	.byte	0x1
	.byte	0x24
	.4byte	0x47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x7
	.4byte	.LASF6
	.byte	0x1
	.byte	0x35
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x1
	.byte	0x40
	.4byte	0x47
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa7
	.uleb128 0x9
	.ascii	"r\000"
	.byte	0x1
	.byte	0x43
	.4byte	0x47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0xa
	.4byte	.LASF3
	.byte	0x1
	.byte	0x48
	.4byte	0xbc
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x5
	.4byte	.LASF2
	.byte	0x1
	.byte	0x55
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe5
	.uleb128 0x6
	.ascii	"c\000"
	.byte	0x1
	.byte	0x55
	.4byte	0x47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0xa
	.4byte	.LASF4
	.byte	0x1
	.byte	0x5e
	.4byte	0xbc
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x1
	.byte	0x71
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x124
	.uleb128 0xd
	.4byte	.Ldebug_ranges0+0
	.uleb128 0xe
	.4byte	.LASF5
	.byte	0x1
	.byte	0x75
	.4byte	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF7
	.byte	0x1
	.byte	0x7e
	.4byte	0xbc
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x10
	.4byte	.LASF8
	.byte	0x1
	.byte	0x84
	.4byte	0x47
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.4byte	.LASF25
	.byte	0x1
	.byte	0x8a
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x171
	.uleb128 0x6
	.ascii	"ch\000"
	.byte	0x1
	.byte	0x8a
	.4byte	0x47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x5
	.4byte	.LASF9
	.byte	0x1
	.byte	0x97
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x194
	.uleb128 0x6
	.ascii	"ch\000"
	.byte	0x1
	.byte	0x97
	.4byte	0x47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x12
	.4byte	.LASF11
	.byte	0x1
	.byte	0xb
	.4byte	0xbc
	.uleb128 0x5
	.byte	0x3
	.4byte	console_flags
	.uleb128 0x13
	.4byte	0x47
	.4byte	0x1b5
	.uleb128 0x14
	.4byte	0x1b5
	.byte	0xff
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x12
	.4byte	.LASF12
	.byte	0x1
	.byte	0x31
	.4byte	0x1a5
	.uleb128 0x5
	.byte	0x3
	.4byte	rx_buffer
	.uleb128 0x12
	.4byte	.LASF13
	.byte	0x1
	.byte	0x31
	.4byte	0x1a5
	.uleb128 0x5
	.byte	0x3
	.4byte	tx_buffer
	.uleb128 0x12
	.4byte	.LASF14
	.byte	0x1
	.byte	0x32
	.4byte	0xbc
	.uleb128 0x5
	.byte	0x3
	.4byte	rx_inptr
	.uleb128 0x12
	.4byte	.LASF15
	.byte	0x1
	.byte	0x32
	.4byte	0xbc
	.uleb128 0x5
	.byte	0x3
	.4byte	rx_outptr
	.uleb128 0x12
	.4byte	.LASF16
	.byte	0x1
	.byte	0x32
	.4byte	0xbc
	.uleb128 0x5
	.byte	0x3
	.4byte	tx_inptr
	.uleb128 0x12
	.4byte	.LASF17
	.byte	0x1
	.byte	0x32
	.4byte	0xbc
	.uleb128 0x5
	.byte	0x3
	.4byte	tx_outptr
	.uleb128 0x12
	.4byte	.LASF18
	.byte	0x1
	.byte	0x33
	.4byte	0xbc
	.uleb128 0x5
	.byte	0x3
	.4byte	interrupts_enabled
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
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.4byte	.LBB2-.Ltext0
	.4byte	.LBE2-.Ltext0
	.4byte	.LBB3-.Ltext0
	.4byte	.LBE3-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF23:
	.ascii	"uart_read_char\000"
.LASF6:
	.ascii	"uart_reset_and_enable\000"
.LASF18:
	.ascii	"interrupts_enabled\000"
.LASF7:
	.ascii	"uart_start\000"
.LASF20:
	.ascii	"/home/dtc34/Documents/P35/pvp11/vhls/src/devicedriv"
	.ascii	"ers/uart64_cbg/uart64_driver.c\000"
.LASF19:
	.ascii	"GNU C11 5.4.0 20160609 -mthumb -mthumb-interwork -m"
	.ascii	"arch=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -g "
	.ascii	"-fno-builtin -fno-reorder-functions -fno-toplevel-r"
	.ascii	"eorder -fstack-protector-strong\000"
.LASF13:
	.ascii	"tx_buffer\000"
.LASF24:
	.ascii	"uart_isr_routine\000"
.LASF14:
	.ascii	"rx_inptr\000"
.LASF0:
	.ascii	"char\000"
.LASF9:
	.ascii	"craft_wrch\000"
.LASF11:
	.ascii	"console_flags\000"
.LASF8:
	.ascii	"craft_rdch\000"
.LASF22:
	.ascii	"uart_polled_read\000"
.LASF12:
	.ascii	"rx_buffer\000"
.LASF25:
	.ascii	"dispatching_wrch\000"
.LASF1:
	.ascii	"uart_polled_write\000"
.LASF17:
	.ascii	"tx_outptr\000"
.LASF16:
	.ascii	"tx_inptr\000"
.LASF15:
	.ascii	"rx_outptr\000"
.LASF21:
	.ascii	"local_wait\000"
.LASF2:
	.ascii	"uart_write_char\000"
.LASF4:
	.ascii	"uart_tx_isr\000"
.LASF5:
	.ascii	"work_done\000"
.LASF10:
	.ascii	"sizetype\000"
.LASF3:
	.ascii	"uart_rx_isr\000"
	.ident	"GCC: (Ubuntu/Linaro 5.4.0-6ubuntu1~16.04.9) 5.4.0 20160609"
	.section	.note.GNU-stack,"",%progbits
