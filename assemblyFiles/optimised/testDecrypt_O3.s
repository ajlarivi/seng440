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
	.file	"testDecrypt.c"
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
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r0, #:lower16:.LC0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	adr	r5, .L11
	ldrd	r4, [r5]
	adr	r7, .L11+8
	ldrd	r6, [r7]
	adr	r9, .L11+16
	ldrd	r8, [r9]
	adr	fp, .L11+24
	ldrd	r10, [fp]
	sub	sp, sp, #44
	mov	r2, r4
	mov	r3, r5
	strd	r6, [sp]
	movt	r0, #:upper16:.LC0
	strd	r4, [sp, #24]
	strd	r6, [sp, #32]
	bl	printf
	movw	r6, #257
	mov	r7, #0
	movw	r0, #:lower16:.LC1
	mov	r2, r4
	mov	r3, r5
	strd	r6, [sp]
	adr	r7, .L11+32
	ldrd	r6, [r7]
	movt	r0, #:upper16:.LC1
	bl	printf
	movw	r3, #:lower16:.LC2
	add	ip, sp, #8
	movt	r3, #:upper16:.LC2
	ldm	r3, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2}
	mov	r0, #104
	strb	r3, [ip]
	bl	malloc
	adr	r3, .L11+40
	ldrd	r2, [r3]
	mov	r4, r0
	movw	r0, #:lower16:.LC3
	movw	r5, #:lower16:.LC4
	strd	r6, [r4, #8]
	strd	r6, [r4, #48]
	strd	r8, [r4, #16]
	adr	r9, .L11+48
	ldrd	r8, [r9]
	movt	r0, #:upper16:.LC3
	strd	r8, [r4, #40]
	adr	r9, .L11+56
	ldrd	r8, [r9]
	strd	r10, [r4, #32]
	strd	r8, [r4, #56]
	adr	r9, .L11+64
	ldrd	r8, [r9]
	strd	r2, [r4]
	strd	r8, [r4, #64]
	adr	r9, .L11+72
	ldrd	r8, [r9]
	strd	r2, [r4, #24]
	strd	r8, [r4, #72]
	adr	r9, .L11+80
	ldrd	r8, [r9]
	strd	r2, [r4, #88]
	strd	r8, [r4, #80]
	sub	r7, r4, #8
	bl	puts
	movt	r5, #:upper16:.LC4
	mov	r6, #0
	b	.L2
.L3:
	ldr	r2, [r7, #8]!
	mov	r0, r5
	uxtb	r1, r2
	ldr	r3, [r7, #4]
	bl	printf
	add	r6, r6, #1
.L2:
	cmp	r6, #12
	bne	.L3
	add	r2, sp, #24
	mov	r1, #104
	mov	r0, r4
	bl	rsa_decrypt
	subs	r8, r0, #0
	beq	.L10
	movw	r0, #:lower16:.LC6
	movw	r6, #:lower16:.LC4
	movt	r0, #:upper16:.LC6
	bl	puts
	movt	r6, #:upper16:.LC4
	sub	r5, r8, #1
	rsb	r7, r8, #1
	b	.L6
.L7:
	ldrb	r1, [r5, #1]!	@ zero_extendqisi2
	mov	r0, r6
	mov	r2, r1
	mov	r3, #0
	bl	printf
.L6:
	add	r3, r7, r5
	cmp	r3, #11
	bls	.L7
	mov	r0, #10
	bl	putchar
	mov	r0, r4
	bl	free
	mov	r0, r8
	bl	free
	mov	r0, #0
.L1:
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L10:
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
.L12:
	.align	3
.L11:
	.word	834600463
	.word	0
	.word	172103753
	.word	0
	.word	578074704
	.word	0
	.word	228506422
	.word	0
	.word	617640602
	.word	0
	.word	29726693
	.word	0
	.word	110329244
	.word	0
	.word	40483209
	.word	0
	.word	696941132
	.word	0
	.word	540719795
	.word	0
	.word	47424872
	.word	0
	.size	main, .-main
	.global	PRIME_SOURCE_FILE
	.data
	.align	2
	.type	PRIME_SOURCE_FILE, %object
	.size	PRIME_SOURCE_FILE, 4
PRIME_SOURCE_FILE:
	.word	.LC7
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
	.ascii	"Encrypted:\000"
	.space	1
.LC4:
	.ascii	"%c %lld\012\000"
	.space	3
.LC5:
	.ascii	"Error in decryption!\012\000"
	.space	2
.LC6:
	.ascii	"Decrypted:\000"
	.space	1
.LC2:
	.ascii	"test decrypt\000"
	.space	3
.LC7:
	.ascii	"primes.txt\000"
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
	.section	.note.GNU-stack,"",%progbits
