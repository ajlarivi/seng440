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
	.file	"testBench.c"
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
.LC3:
	.ascii	"Original:\000"
	.align	2
.LC4:
	.ascii	"%c %lld\012\000"
	.align	2
.LC5:
	.ascii	"Error in encryption!\012\000"
	.align	2
.LC6:
	.ascii	"Encrypted:\000"
	.align	2
.LC7:
	.ascii	"Error in decryption!\012\000"
	.align	2
.LC8:
	.ascii	"Decrypted:\000"
	.text
	.align	2
	.global	test
	.arch armv7-a
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	test, %function
test:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, fp, lr}
	add	fp, sp, #12
	sub	sp, sp, #72
	str	r0, [fp, #-72]
	str	r1, [fp, #-76]
	mov	r3, sp
	mov	r5, r3
	movw	r3, #:lower16:PRIME_SOURCE_FILE
	movt	r3, #:upper16:PRIME_SOURCE_FILE
	ldr	r2, [r3]
	sub	r1, fp, #68
	sub	r3, fp, #52
	mov	r0, r3
	bl	rsa_gen_keys
	ldrd	r0, [fp, #-68]
	ldrd	r2, [fp, #-60]
	strd	r2, [sp]
	mov	r2, r0
	mov	r3, r1
	movw	r0, #:lower16:.LC1
	movt	r0, #:upper16:.LC1
	bl	printf
	ldrd	r0, [fp, #-52]
	ldrd	r2, [fp, #-44]
	strd	r2, [sp]
	mov	r2, r0
	mov	r3, r1
	movw	r0, #:lower16:.LC2
	movt	r0, #:upper16:.LC2
	bl	printf
	ldr	r3, [fp, #-76]
	add	r4, r3, #1
	sub	r3, r4, #1
	str	r3, [fp, #-20]
	mov	r3, r4
	mov	r0, r3
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0
	lsl	r3, r1, #3
	orr	r3, r3, r0, lsr #29
	lsl	r2, r0, #3
	mov	r3, r4
	mov	r0, r3
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0
	lsl	r3, r1, #3
	orr	r3, r3, r0, lsr #29
	lsl	r2, r0, #3
	mov	r3, r4
	add	r3, r3, #7
	lsr	r3, r3, #3
	lsl	r3, r3, #3
	sub	sp, sp, r3
	add	r3, sp, #8
	add	r3, r3, #0
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	ldr	r1, [fp, #-72]
	mov	r0, r3
	bl	strcpy
	movw	r0, #:lower16:.LC3
	movt	r0, #:upper16:.LC3
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L2
.L3:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r2, r3
	mov	r3, #0
	movw	r0, #:lower16:.LC4
	movt	r0, #:upper16:.LC4
	bl	printf
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L2:
	ldr	r3, [fp, #-24]
	mov	r0, r3
	bl	strlen
	mov	r2, r0
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	bhi	.L3
	ldr	r3, [fp, #-24]
	mov	r1, r4
	sub	r2, fp, #52
	mov	r0, r3
	bl	rsa_encrypt
	str	r0, [fp, #-28]
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	bne	.L4
	movw	r3, #:lower16:stderr
	movt	r3, #:upper16:stderr
	ldr	r3, [r3]
	mov	r2, #21
	mov	r1, #1
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	fwrite
	mov	r3, #1
	b	.L5
.L4:
	movw	r0, #:lower16:.LC6
	movt	r0, #:upper16:.LC6
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L6
.L7:
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #3
	ldr	r2, [fp, #-28]
	add	r3, r2, r3
	ldrd	r2, [r3]
	uxtb	r3, r2
	mov	r1, r3
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #3
	ldr	r2, [fp, #-28]
	add	r3, r2, r3
	ldrd	r2, [r3]
	movw	r0, #:lower16:.LC4
	movt	r0, #:upper16:.LC4
	bl	printf
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L6:
	ldr	r3, [fp, #-24]
	mov	r0, r3
	bl	strlen
	mov	r2, r0
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	bhi	.L7
	mov	r3, r4
	lsl	r1, r3, #3
	sub	r3, fp, #52
	sub	r2, fp, #68
	ldr	r0, [fp, #-28]
	bl	rsa_decrypt
	str	r0, [fp, #-32]
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	bne	.L8
	movw	r3, #:lower16:stderr
	movt	r3, #:upper16:stderr
	ldr	r3, [r3]
	mov	r2, #21
	mov	r1, #1
	movw	r0, #:lower16:.LC7
	movt	r0, #:upper16:.LC7
	bl	fwrite
	mov	r3, #1
	b	.L5
.L8:
	movw	r0, #:lower16:.LC8
	movt	r0, #:upper16:.LC8
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L9
.L10:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r2, r3
	mov	r3, #0
	movw	r0, #:lower16:.LC4
	movt	r0, #:upper16:.LC4
	bl	printf
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L9:
	ldr	r3, [fp, #-24]
	mov	r0, r3
	bl	strlen
	mov	r2, r0
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	bhi	.L10
	mov	r0, #10
	bl	putchar
	ldr	r0, [fp, #-28]
	bl	free
	ldr	r0, [fp, #-32]
	bl	free
	mov	r3, #0
.L5:
	mov	sp, r5
	mov	r0, r3
	sub	sp, fp, #12
	@ sp needed
	pop	{r4, r5, fp, pc}
	.size	test, .-test
	.section	.rodata
	.align	2
.LC9:
	.ascii	"a\000"
	.align	2
.LC10:
	.ascii	"asdf\000"
	.align	2
.LC11:
	.ascii	"test\000"
	.align	2
.LC12:
	.ascii	"hello there\000"
	.align	2
.LC13:
	.ascii	"this is a longer message\000"
	.align	2
.LC14:
	.ascii	"there and back again\000"
	.align	2
.LC15:
	.ascii	"#*($)# 098 ,.! testing\000"
	.align	2
.LC16:
	.ascii	"The quick brown fox jumps over the lazy dog\000"
	.align	2
.LC17:
	.ascii	"TEST CASE %d\012\000"
	.align	2
.LC18:
	.ascii	"==================================================\000"
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #52
	str	r0, [fp, #-56]
	str	r1, [fp, #-60]
	mov	r0, #0
	bl	time
	mov	r3, r0
	mov	r0, r3
	bl	srand
	movw	r3, #:lower16:.LC9
	movt	r3, #:upper16:.LC9
	str	r3, [fp, #-48]
	movw	r3, #:lower16:.LC10
	movt	r3, #:upper16:.LC10
	str	r3, [fp, #-44]
	movw	r3, #:lower16:.LC11
	movt	r3, #:upper16:.LC11
	str	r3, [fp, #-40]
	movw	r3, #:lower16:.LC12
	movt	r3, #:upper16:.LC12
	str	r3, [fp, #-36]
	movw	r3, #:lower16:.LC13
	movt	r3, #:upper16:.LC13
	str	r3, [fp, #-32]
	movw	r3, #:lower16:.LC14
	movt	r3, #:upper16:.LC14
	str	r3, [fp, #-28]
	movw	r3, #:lower16:.LC15
	movt	r3, #:upper16:.LC15
	str	r3, [fp, #-24]
	movw	r3, #:lower16:.LC16
	movt	r3, #:upper16:.LC16
	str	r3, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L13
.L14:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	mov	r1, r3
	movw	r0, #:lower16:.LC17
	movt	r0, #:upper16:.LC17
	bl	printf
	movw	r0, #:lower16:.LC18
	movt	r0, #:upper16:.LC18
	bl	puts
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #2
	sub	r2, fp, #12
	add	r3, r2, r3
	ldr	r4, [r3, #-36]
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #2
	sub	r2, fp, #12
	add	r3, r2, r3
	ldr	r3, [r3, #-36]
	mov	r0, r3
	bl	strlen
	mov	r3, r0
	mov	r1, r3
	mov	r0, r4
	bl	test
	mov	r0, #10
	bl	putchar
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L13:
	ldr	r3, [fp, #-16]
	cmp	r3, #7
	ble	.L14
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
	.size	main, .-main
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
	.section	.note.GNU-stack,"",%progbits
