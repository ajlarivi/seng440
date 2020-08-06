	.arch armv7-a
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"testEncrypt.c"
	.text
	.global	PRIME_SOURCE_FILE
	.section	.rodata
	.align	2
.LC0:
	.ascii	"primes.txt\000"
	.data
	.align	2
	.type	PRIME_SOURCE_FILE, %object
	.size	PRIME_SOURCE_FILE, 4
PRIME_SOURCE_FILE:
	.word	.LC0
	.section	.rodata
	.align	2
.LC1:
	.ascii	"Private Key:\012 Modulus: %lld\012 Exponent: %lld\012"
	.ascii	"\000"
	.align	2
.LC2:
	.ascii	"Public Key:\012 Modulus: %lld\012 Exponent: %lld\012"
	.ascii	"\000"
	.align	2
.LC4:
	.ascii	"Original:\000"
	.align	2
.LC5:
	.ascii	"%c %lld\012\000"
	.align	2
.LC6:
	.ascii	"Error in encryption!\012\000"
	.align	2
.LC7:
	.ascii	"Encrypted:\000"
	.align	2
.LC3:
	.ascii	"test decrypt\000"
	.text
	.align	2
	.global	main
	.arch armv7-a
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #72
	str	r0, [fp, #-64]
	str	r1, [fp, #-68]
	adr	r3, .L9
	ldrd	r2, [r3]
	strd	r2, [fp, #-28]
	movw	r2, #257
	mov	r3, #0
	strd	r2, [fp, #-20]
	adr	r3, .L9
	ldrd	r2, [r3]
	strd	r2, [fp, #-44]
	adr	r3, .L9+8
	ldrd	r2, [r3]
	strd	r2, [fp, #-36]
	ldrd	r0, [fp, #-44]
	ldrd	r2, [fp, #-36]
	strd	r2, [sp]
	mov	r2, r0
	mov	r3, r1
	movw	r0, #:lower16:.LC1
	movt	r0, #:upper16:.LC1
	bl	printf
	ldrd	r0, [fp, #-28]
	ldrd	r2, [fp, #-20]
	strd	r2, [sp]
	mov	r2, r0
	mov	r3, r1
	movw	r0, #:lower16:.LC2
	movt	r0, #:upper16:.LC2
	bl	printf
	movw	r3, #:lower16:.LC3
	movt	r3, #:upper16:.LC3
	sub	ip, fp, #60
	ldm	r3, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2}
	strb	r3, [ip]
	movw	r0, #:lower16:.LC4
	movt	r0, #:upper16:.LC4
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L2
.L3:
	sub	r2, fp, #60
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	sub	r2, fp, #60
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r2, r3
	mov	r3, #0
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	printf
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L2:
	sub	r3, fp, #60
	mov	r0, r3
	bl	strlen
	mov	r2, r0
	ldr	r3, [fp, #-8]
	cmp	r2, r3
	bhi	.L3
	sub	r2, fp, #28
	sub	r3, fp, #60
	mov	r1, #13
	mov	r0, r3
	bl	rsa_encrypt
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bne	.L4
	movw	r3, #:lower16:stderr
	movt	r3, #:upper16:stderr
	ldr	r3, [r3]
	mov	r2, #21
	mov	r1, #1
	movw	r0, #:lower16:.LC6
	movt	r0, #:upper16:.LC6
	bl	fwrite
	mov	r3, #1
	b	.L8
.L4:
	movw	r0, #:lower16:.LC7
	movt	r0, #:upper16:.LC7
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L6
.L7:
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #3
	ldr	r2, [fp, #-12]
	add	r3, r2, r3
	ldrd	r2, [r3]
	uxtb	r3, r2
	mov	r1, r3
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #3
	ldr	r2, [fp, #-12]
	add	r3, r2, r3
	ldrd	r2, [r3]
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	printf
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L6:
	sub	r3, fp, #60
	mov	r0, r3
	bl	strlen
	mov	r2, r0
	ldr	r3, [fp, #-8]
	cmp	r2, r3
	bhi	.L7
	mov	r0, #10
	bl	putchar
	ldr	r0, [fp, #-12]
	bl	free
	mov	r3, #0
.L8:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L10:
	.align	3
.L9:
	.word	834600463
	.word	0
	.word	172103753
	.word	0
	.size	main, .-main
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
	.section	.note.GNU-stack,"",%progbits
