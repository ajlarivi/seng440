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
	.file	"testBench.c"
	.text
	.align	2
	.global	test
	.arch armv7-a
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	test, %function
test:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, fp, lr}
	movw	r3, #:lower16:.LANCHOR0
	add	fp, sp, #28
	sub	sp, sp, #40
	movt	r3, #:upper16:.LANCHOR0
	mov	r6, r0
	mov	r7, r1
	ldr	r2, [r3]
	sub	r1, fp, #44
	sub	r0, fp, #60
	bl	rsa_gen_keys
	ldrd	r4, [fp, #-36]
	ldrd	r2, [fp, #-44]
	movw	r0, #:lower16:.LC0
	strd	r4, [sp]
	movt	r0, #:upper16:.LC0
	bl	printf
	ldrd	r4, [fp, #-52]
	ldrd	r2, [fp, #-60]
	movw	r0, #:lower16:.LC1
	strd	r4, [sp]
	movt	r0, #:upper16:.LC1
	bl	printf
	add	r3, r7, #8
	bic	r3, r3, #7
	sub	sp, sp, r3
	add	r4, sp, #8
	mov	r1, r6
	mov	r0, r4
	bl	strcpy
	movw	r0, #:lower16:.LC2
	movw	r6, #:lower16:.LC3
	movt	r0, #:upper16:.LC2
	add	r7, r7, #1
	bl	puts
	rsb	r8, r4, #1
	add	r5, sp, #7
	movt	r6, #:upper16:.LC3
	b	.L2
.L3:
	ldrb	r1, [r5, #1]!	@ zero_extendqisi2
	mov	r0, r6
	mov	r2, r1
	mov	r3, #0
	bl	printf
.L2:
	mov	r0, r4
	bl	strlen
	add	r3, r8, r5
	cmp	r0, r3
	bhi	.L3
	sub	r2, fp, #60
	mov	r1, r7
	mov	r0, r4
	bl	rsa_encrypt
	subs	r8, r0, #0
	beq	.L13
	movw	r0, #:lower16:.LC5
	movw	r9, #:lower16:.LC3
	movt	r0, #:upper16:.LC5
	bl	puts
	movt	r9, #:upper16:.LC3
	sub	r6, r8, #8
	mov	r5, #0
	b	.L6
.L7:
	ldr	r2, [r6, #8]!
	mov	r0, r9
	uxtb	r1, r2
	ldr	r3, [r6, #4]
	bl	printf
	add	r5, r5, #1
.L6:
	mov	r0, r4
	bl	strlen
	cmp	r0, r5
	bhi	.L7
	sub	r3, fp, #60
	sub	r2, fp, #44
	lsl	r1, r7, #3
	mov	r0, r8
	bl	rsa_decrypt
	subs	r9, r0, #0
	beq	.L14
	movw	r0, #:lower16:.LC7
	movw	r6, #:lower16:.LC3
	movt	r0, #:upper16:.LC7
	bl	puts
	movt	r6, #:upper16:.LC3
	sub	r5, r9, #1
	rsb	r7, r9, #1
	b	.L9
.L10:
	ldrb	r1, [r5, #1]!	@ zero_extendqisi2
	mov	r0, r6
	mov	r2, r1
	mov	r3, #0
	bl	printf
.L9:
	mov	r0, r4
	bl	strlen
	add	r3, r7, r5
	cmp	r0, r3
	bhi	.L10
	mov	r0, #10
	bl	putchar
	mov	r0, r8
	bl	free
	mov	r0, r9
	bl	free
	mov	r0, #0
	sub	sp, fp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, fp, pc}
.L13:
	movw	r3, #:lower16:stderr
	movw	r0, #:lower16:.LC4
	movt	r3, #:upper16:stderr
	ldr	r3, [r3]
	mov	r2, #21
	mov	r1, #1
	movt	r0, #:upper16:.LC4
	bl	fwrite
	mov	r0, #1
	sub	sp, fp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, fp, pc}
.L14:
	movw	r3, #:lower16:stderr
	movw	r0, #:lower16:.LC6
	movt	r3, #:upper16:stderr
	ldr	r3, [r3]
	mov	r2, #21
	mov	r1, #1
	movt	r0, #:upper16:.LC6
	bl	fwrite
	mov	r0, #1
	sub	sp, fp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, fp, pc}
	.size	test, .-test
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	movw	r6, #:lower16:.LC9
	sub	sp, sp, #44
	mov	r0, #0
	bl	time
	bl	srand
	movw	r0, #:lower16:.LC13
	movw	r1, #:lower16:.LC14
	movw	r2, #:lower16:.LC15
	movw	r3, #:lower16:.LC16
	movw	r9, #:lower16:.LC8
	movw	r5, #:lower16:.LC10
	movw	lr, #:lower16:.LC11
	movw	ip, #:lower16:.LC12
	movt	r6, #:upper16:.LC9
	movw	r8, #:lower16:.LC17
	movw	r7, #:lower16:.LC18
	str	r6, [sp, #8]
	mov	r4, #0
	mov	r6, sp
	movt	r0, #:upper16:.LC13
	movt	r1, #:upper16:.LC14
	movt	r2, #:upper16:.LC15
	movt	r3, #:upper16:.LC16
	strd	r0, [sp, #24]
	strd	r2, [sp, #32]
	movt	r9, #:upper16:.LC8
	movt	r5, #:upper16:.LC10
	movt	lr, #:upper16:.LC11
	movt	ip, #:upper16:.LC12
	str	r9, [sp, #4]
	str	r5, [sp, #12]
	str	lr, [sp, #16]
	str	ip, [sp, #20]
	movt	r8, #:upper16:.LC17
	movt	r7, #:upper16:.LC18
.L16:
	add	r4, r4, #1
	mov	r1, r4
	mov	r0, r8
	bl	printf
	mov	r0, r7
	bl	puts
	ldr	r5, [r6, #4]!
	mov	r0, r5
	bl	strlen
	mov	r1, r0
	mov	r0, r5
	bl	test
	mov	r0, #10
	bl	putchar
	cmp	r4, #9
	bne	.L16
	mov	r0, #0
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
	.size	main, .-main
	.global	PRIME_SOURCE_FILE
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	PRIME_SOURCE_FILE, %object
	.size	PRIME_SOURCE_FILE, 4
PRIME_SOURCE_FILE:
	.word	.LC19
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Private Key:\012 Modulus: %lld\012 Exponent: %lld\012"
	.ascii	"\000"
	.space	3
.LC1:
	.ascii	"Public Key:\012 Modulus: %lld\012 Exponent: %lld\012"
	.ascii	"\000"
.LC2:
	.ascii	"Original:\000"
	.space	2
.LC3:
	.ascii	"%c %lld\012\000"
	.space	3
.LC4:
	.ascii	"Error in encryption!\012\000"
	.space	2
.LC5:
	.ascii	"Encrypted:\000"
	.space	1
.LC6:
	.ascii	"Error in decryption!\012\000"
	.space	2
.LC7:
	.ascii	"Decrypted:\000"
	.space	1
.LC8:
	.ascii	"a\000"
	.space	2
.LC9:
	.ascii	"asdf\000"
	.space	3
.LC10:
	.ascii	"test\000"
	.space	3
.LC11:
	.ascii	"hello there\000"
.LC12:
	.ascii	"this is a longer message\000"
	.space	3
.LC13:
	.ascii	"there and back again\000"
	.space	3
.LC14:
	.ascii	"#*($)# 098 ,.! testing\000"
	.space	1
.LC15:
	.ascii	"The quick brown fox jumps over the lazy dog\000"
.LC16:
	.ascii	"This is a string of length 256. This is a string of"
	.ascii	" length 256. This is a string of length 256. This i"
	.ascii	"s a string of length 256. This is a string of lengt"
	.ascii	"h 256. This is a string of length 256. This is a st"
	.ascii	"ring of length 256. This is a string of length 256."
	.ascii	"!\000"
	.space	3
.LC17:
	.ascii	"TEST CASE %d\012\000"
	.space	2
.LC18:
	.ascii	"==================================================\000"
	.space	1
.LC19:
	.ascii	"primes.txt\000"
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
	.section	.note.GNU-stack,"",%progbits
