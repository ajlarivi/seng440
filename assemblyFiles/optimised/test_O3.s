	.arch armv7-a
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"test.c"
	.text
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.arch armv7-a
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:.LANCHOR0
	push	{r4, r5, r6, r7, r8, lr}
	movt	r3, #:upper16:.LANCHOR0
	sub	sp, sp, #64
	add	r1, sp, #24
	ldr	r2, [r3]
	add	r0, sp, #8
	bl	rsa_gen_keys
	ldrd	r4, [sp, #32]
	ldrd	r2, [sp, #24]
	movw	r0, #:lower16:.LC0
	strd	r4, [sp]
	movt	r0, #:upper16:.LC0
	bl	printf
	ldrd	r4, [sp, #16]
	ldrd	r2, [sp, #8]
	movw	r0, #:lower16:.LC1
	strd	r4, [sp]
	movt	r0, #:upper16:.LC1
	bl	printf
	movw	ip, #:lower16:.LC2
	add	lr, sp, #40
	movt	ip, #:upper16:.LC2
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	str	r0, [lr], #4
	movw	r0, #:lower16:.LC3
	movw	r6, #:lower16:.LC4
	movt	r0, #:upper16:.LC3
	strb	r1, [lr]
	movt	r6, #:upper16:.LC4
	bl	puts
	add	r5, sp, #40
	mov	r4, #0
	b	.L2
.L3:
	ldrb	r1, [r5], #1	@ zero_extendqisi2
	mov	r0, r6
	mov	r2, r1
	mov	r3, #0
	bl	printf
	add	r4, r4, #1
.L2:
	add	r0, sp, #40
	bl	strlen
	cmp	r0, r4
	bhi	.L3
	add	r2, sp, #8
	mov	r1, #21
	add	r0, sp, #40
	bl	rsa_encrypt
	subs	r7, r0, #0
	beq	.L13
	movw	r0, #:lower16:.LC6
	movw	r6, #:lower16:.LC4
	movt	r0, #:upper16:.LC6
	bl	puts
	movt	r6, #:upper16:.LC4
	sub	r5, r7, #8
	mov	r4, #0
	b	.L6
.L7:
	ldr	r2, [r5, #8]!
	mov	r0, r6
	uxtb	r1, r2
	ldr	r3, [r5, #4]
	bl	printf
	add	r4, r4, #1
.L6:
	add	r0, sp, #40
	bl	strlen
	cmp	r0, r4
	bhi	.L7
	add	r2, sp, #24
	mov	r1, #168
	mov	r0, r7
	bl	rsa_decrypt
	subs	r8, r0, #0
	beq	.L14
	movw	r0, #:lower16:.LC8
	movw	r5, #:lower16:.LC4
	movt	r0, #:upper16:.LC8
	bl	puts
	movt	r5, #:upper16:.LC4
	sub	r4, r8, #1
	rsb	r6, r8, #1
	b	.L9
.L10:
	ldrb	r1, [r4, #1]!	@ zero_extendqisi2
	mov	r0, r5
	mov	r2, r1
	mov	r3, #0
	bl	printf
.L9:
	add	r0, sp, #40
	bl	strlen
	add	r3, r6, r4
	cmp	r0, r3
	bhi	.L10
	mov	r0, #10
	bl	putchar
	mov	r0, r7
	bl	free
	mov	r0, r8
	bl	free
	mov	r0, #0
.L1:
	add	sp, sp, #64
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L13:
	movw	r3, #:lower16:stderr
	movw	r0, #:lower16:.LC5
	movt	r3, #:upper16:stderr
	ldr	r3, [r3]
	movt	r0, #:upper16:.LC5
	mov	r2, #21
	mov	r1, #1
	bl	fwrite
	mov	r0, #1
	b	.L1
.L14:
	movw	r3, #:lower16:stderr
	movw	r0, #:lower16:.LC7
	movt	r3, #:upper16:stderr
	ldr	r3, [r3]
	movt	r0, #:upper16:.LC7
	mov	r2, #21
	mov	r1, #1
	bl	fwrite
	mov	r0, #1
	b	.L1
	.size	main, .-main
	.global	PRIME_SOURCE_FILE
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	PRIME_SOURCE_FILE, %object
	.size	PRIME_SOURCE_FILE, 4
PRIME_SOURCE_FILE:
	.word	.LC9
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Private Key:\012 Modulus: %lld\012 Exponent: %lld\012"
	.ascii	"\000"
	.space	3
.LC1:
	.ascii	"Public Key:\012 Modulus: %lld\012 Exponent: %lld\012"
	.ascii	"\000"
.LC3:
	.ascii	"Original:\000"
	.space	2
.LC4:
	.ascii	"%c %lld\012\000"
	.space	3
.LC5:
	.ascii	"Error in encryption!\012\000"
	.space	2
.LC6:
	.ascii	"Encrypted:\000"
	.space	1
.LC7:
	.ascii	"Error in decryption!\012\000"
	.space	2
.LC8:
	.ascii	"Decrypted:\000"
	.space	1
.LC2:
	.ascii	"There And Back Again\000"
	.space	3
.LC9:
	.ascii	"primes.txt\000"
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
	.section	.note.GNU-stack,"",%progbits
