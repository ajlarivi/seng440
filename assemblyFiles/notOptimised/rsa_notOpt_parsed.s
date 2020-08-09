/*======================================*/
/*======================================*/
/*682 units of power consumed for this entire file (before dummy instructions)*/
/*the largest block in this file consumes 98 units of power (before dummy instructions)*/
/*======================================*/
/*======================================*/
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
	.file	"rsa.c"
	.text
	.comm	buffer,1024,4
	.global	MAX_DIGITS
	.section	.rodata
	.align	2
	.type	MAX_DIGITS, %object
	.size	MAX_DIGITS, 4
/*------------------------------------*/
/*0 units of power consumed in this block (before dummy instructions)*/
/*------------------------------------*/

MAX_DIGITS:
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	.word	50
	.comm	i,4,4
	.global	j
	.bss
	.align	2
	.type	j, %object
	.size	j, 4
/*------------------------------------*/
/*0 units of power consumed in this block (before dummy instructions)*/
/*------------------------------------*/

j:
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	.space	4
	.global	__aeabi_ldivmod
	.text
	.align	2
	.global	gcd
	.arch armv7-a
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	gcd, %function
/*------------------------------------*/
/*0 units of power consumed in this block (before dummy instructions)*/
/*------------------------------------*/

gcd:
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4	/*3 units of power consumed*/
	sub	sp, sp, #24	/*3 units of power consumed*/
	strd	r0, [fp, #-20]
	strd	r2, [fp, #-28]
	b	.L2	/*7 units of power consumed*/
/*------------------------------------*/
/*13 units of power consumed in this block (before dummy instructions)*/
/*------------------------------------*/

.L3:
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	ldrd	r2, [fp, #-20]
	strd	r2, [fp, #-12]
	ldrd	r0, [fp, #-28]
	ldrd	r2, [fp, #-20]
	bl	__aeabi_ldivmod
	strd	r2, [fp, #-20]
	ldrd	r2, [fp, #-12]
	strd	r2, [fp, #-28]
/*------------------------------------*/
/*0 units of power consumed in this block (before dummy instructions)*/
/*------------------------------------*/

.L2:
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	add r15, r15 /*dummy operation, 3 units of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	ldrd	r2, [fp, #-20]
	orrs	r3, r2, r3
	bne	.L3	/*7 units of power consumed*/
	ldrd	r2, [fp, #-28]
	mov	r0, r2
	mov	r1, r3
	sub	sp, fp, #4	/*3 units of power consumed*/
	@ sp needed
	pop	{fp, pc}
	.size	gcd, .-gcd
	.align	2
	.global	ExtEuclid
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	ExtEuclid, %function
/*------------------------------------*/
/*10 units of power consumed in this block (before dummy instructions)*/
/*------------------------------------*/

ExtEuclid:
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, fp, lr}
	add	fp, sp, #20	/*3 units of power consumed*/
	sub	sp, sp, #88	/*3 units of power consumed*/
	strd	r0, [fp, #-100]
	strd	r2, [fp, #-108]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #-28]
	mov	r2, #1
	mov	r3, #0
	strd	r2, [fp, #-36]
	mov	r2, #1
	mov	r3, #0
	strd	r2, [fp, #-44]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #-52]
	ldrd	r2, [fp, #-108]
	strd	r2, [fp, #-60]
	b	.L6	/*7 units of power consumed*/
/*------------------------------------*/
/*13 units of power consumed in this block (before dummy instructions)*/
/*------------------------------------*/

.L7:
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	ldrd	r2, [fp, #-100]
	ldrd	r0, [fp, #-60]
	bl	__aeabi_ldivmod
	mov	r2, r0
	mov	r3, r1
	strd	r2, [fp, #-68]
	ldrd	r0, [fp, #-60]
	ldrd	r2, [fp, #-100]
	bl	__aeabi_ldivmod
	strd	r2, [fp, #-76]
	ldr	r3, [fp, #-40]
	ldr	r2, [fp, #-68]
	mul	r2, r2, r3	/*6 units of power consumed*/
	ldr	r3, [fp, #-64]
	ldr	r1, [fp, #-44]
	mul	r3, r1, r3	/*6 units of power consumed*/
	add	r1, r2, r3	/*3 units of power consumed*/
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-68]
	umull	r2, r3, r2, r3	/*6 units of power consumed*/
	add	r1, r1, r3	/*3 units of power consumed*/
	mov	r3, r1
	ldrd	r0, [fp, #-28]
	subs	r4, r0, r2
	sbc	r5, r1, r3	/*3 units of power consumed*/
	strd	r4, [fp, #-84]
	ldr	r3, [fp, #-48]
	ldr	r2, [fp, #-68]
	mul	r2, r2, r3	/*6 units of power consumed*/
	ldr	r3, [fp, #-64]
	ldr	r1, [fp, #-52]
	mul	r3, r1, r3	/*6 units of power consumed*/
	add	r1, r2, r3	/*3 units of power consumed*/
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-68]
	umull	r2, r3, r2, r3	/*6 units of power consumed*/
	add	r1, r1, r3	/*3 units of power consumed*/
	mov	r3, r1
	ldrd	r0, [fp, #-36]
	subs	r6, r0, r2
	sbc	r7, r1, r3	/*3 units of power consumed*/
	strd	r6, [fp, #-92]
	ldrd	r2, [fp, #-100]
	strd	r2, [fp, #-60]
	ldrd	r2, [fp, #-76]
	strd	r2, [fp, #-100]
	ldrd	r2, [fp, #-44]
	strd	r2, [fp, #-28]
	ldrd	r2, [fp, #-52]
	strd	r2, [fp, #-36]
	ldrd	r2, [fp, #-84]
	strd	r2, [fp, #-44]
	ldrd	r2, [fp, #-92]
	strd	r2, [fp, #-52]
/*------------------------------------*/
/*54 units of power consumed in this block (before dummy instructions)*/
/*------------------------------------*/

.L6:
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	add r15, r15 /*dummy operation, 3 units of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	ldrd	r2, [fp, #-100]
	orrs	r3, r2, r3
	bne	.L7	/*7 units of power consumed*/
	ldrd	r2, [fp, #-36]
	mov	r0, r2
	mov	r1, r3
	sub	sp, fp, #20	/*3 units of power consumed*/
	@ sp needed
	pop	{r4, r5, r6, r7, fp, pc}
	.size	ExtEuclid, .-ExtEuclid
	.align	2
	.global	rsa_modExp
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	rsa_modExp, %function
/*------------------------------------*/
/*10 units of power consumed in this block (before dummy instructions)*/
/*------------------------------------*/

rsa_modExp:
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	add r15, r15 /*dummy operation, 3 units of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	@ args = 8, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, fp, lr}
	add	fp, sp, #28	/*3 units of power consumed*/
	sub	sp, sp, #64	/*3 units of power consumed*/
	strd	r0, [fp, #-36]
	strd	r2, [fp, #-44]
	ldrd	r2, [fp, #-36]
	cmp	r2, #0
	sbcs	r3, r3, #0
	blt	.L10	/*7 units of power consumed*/
	ldrd	r2, [fp, #-44]
	cmp	r2, #0
	sbcs	r3, r3, #0
	blt	.L10	/*7 units of power consumed*/
	ldrd	r2, [fp, #4]
	cmp	r2, #1
	sbcs	r3, r3, #0
	bge	.L11	/*7 units of power consumed*/
/*------------------------------------*/
/*27 units of power consumed in this block (before dummy instructions)*/
/*------------------------------------*/

.L10:
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	mov	r0, #1
	bl	exit
/*------------------------------------*/
/*0 units of power consumed in this block (before dummy instructions)*/
/*------------------------------------*/

.L11:
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	ldrd	r0, [fp, #-36]
	ldrd	r2, [fp, #4]
	bl	__aeabi_ldivmod
	strd	r2, [fp, #-36]
	ldrd	r2, [fp, #-44]
	orrs	r3, r2, r3
	bne	.L12	/*7 units of power consumed*/
	mov	r2, #1
	mov	r3, #0
	b	.L9	/*7 units of power consumed*/
/*------------------------------------*/
/*14 units of power consumed in this block (before dummy instructions)*/
/*------------------------------------*/

.L12:
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	ldrd	r2, [fp, #-44]
	cmp	r3, #0
	cmpeq	r2, #1
	bne	.L14	/*7 units of power consumed*/
	ldrd	r2, [fp, #-36]
	b	.L9	/*7 units of power consumed*/
/*------------------------------------*/
/*14 units of power consumed in this block (before dummy instructions)*/
/*------------------------------------*/

.L14:
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	ldrd	r0, [fp, #-44]
	mov	r2, #1
	mov	r3, #0
	and	ip, r0, r2	/*1 units of power consumed*/
	str	ip, [fp, #-52]
	and	r3, r1, r3	/*1 units of power consumed*/
	str	r3, [fp, #-48]
	ldrd	r2, [fp, #-52]
	orrs	r3, r2, r3
	bne	.L15	/*7 units of power consumed*/
	ldr	r3, [fp, #-32]
	ldr	r2, [fp, #-36]
	mul	r2, r2, r3	/*6 units of power consumed*/
	ldr	r3, [fp, #-32]
	ldr	r1, [fp, #-36]
	mul	r3, r1, r3	/*6 units of power consumed*/
	add	r3, r2, r3	/*3 units of power consumed*/
	ldr	r1, [fp, #-36]
	ldr	r2, [fp, #-36]
	umull	r0, r1, r1, r2	/*6 units of power consumed*/
	add	r3, r3, r1	/*3 units of power consumed*/
	mov	r1, r3
	ldrd	r2, [fp, #4]
	bl	__aeabi_ldivmod
	mov	r4, r2
	mov	r5, r3
	ldrd	r2, [fp, #-44]
	lsr	r1, r3, #31	/*2 units of power consumed*/
	mov	r0, r1
	mov	r1, #0
	adds	r6, r0, r2
	adc	r7, r1, r3	/*3 units of power consumed*/
	mov	r2, #0
	mov	r3, #0
	lsr	r2, r6, #1	/*2 units of power consumed*/
	orr	r2, r2, r7, lsl #31	/*1 units of power consumed*/
	asr	r3, r7, #1	/*2 units of power consumed*/
	mov	r0, r2
	mov	r1, r3
	ldrd	r2, [fp, #4]
	strd	r2, [sp]
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	rsa_modExp
	ldrd	r2, [fp, #4]
	bl	__aeabi_ldivmod
	b	.L9	/*7 units of power consumed*/
/*------------------------------------*/
/*50 units of power consumed in this block (before dummy instructions)*/
/*------------------------------------*/

.L15:
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	add r15, r15 /*dummy operation, 3 units of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	ldrd	r0, [fp, #-44]
	asr	r3, r1, #31	/*2 units of power consumed*/
	mov	r2, r3
	asr	r3, r2, #31	/*2 units of power consumed*/
	eor	r4, r0, r2	/*1 units of power consumed*/
	eor	r5, r1, r3	/*1 units of power consumed*/
	subs	r1, r4, r2
	str	r1, [fp, #-68]
	sbc	r1, r5, r3	/*3 units of power consumed*/
	str	r1, [fp, #-64]
	mov	r0, #1
	mov	r1, #0
	ldrd	r4, [fp, #-68]
	mov	ip, r4
	and	ip, ip, r0	/*1 units of power consumed*/
	str	ip, [fp, #-76]
	mov	ip, r5
	and	ip, ip, r1	/*1 units of power consumed*/
	str	ip, [fp, #-72]
	ldrd	r0, [fp, #-76]
	mov	ip, r0
	eor	r8, ip, r2	/*1 units of power consumed*/
	eor	r1, r1, r3	/*1 units of power consumed*/
	mov	r9, r1
	subs	r1, r8, r2
	str	r1, [fp, #-84]
	sbc	r3, r9, r3	/*3 units of power consumed*/
	str	r3, [fp, #-80]
	ldrd	r2, [fp, #-84]
	cmp	r3, #0
	cmpeq	r2, #1
	bne	.L16	/*7 units of power consumed*/
	ldrd	r2, [fp, #-44]
	subs	r1, r2, #1
	str	r1, [fp, #-60]
	sbc	r3, r3, #0	/*3 units of power consumed*/
	str	r3, [fp, #-56]
	ldrd	r2, [fp, #4]
	strd	r2, [sp]
	ldrd	r2, [fp, #-60]
	ldrd	r0, [fp, #-36]
	bl	rsa_modExp
	mov	r2, r0
	mov	r3, r1
	ldr	r1, [fp, #-36]
	mul	r0, r3, r1	/*6 units of power consumed*/
	ldr	r1, [fp, #-32]
	mul	r1, r2, r1	/*6 units of power consumed*/
	add	ip, r0, r1	/*3 units of power consumed*/
	ldr	r1, [fp, #-36]
	umull	r0, r1, r1, r2	/*6 units of power consumed*/
	add	r3, ip, r1	/*3 units of power consumed*/
	mov	r1, r3
	ldrd	r2, [fp, #4]
	bl	__aeabi_ldivmod
	b	.L9	/*7 units of power consumed*/
/*------------------------------------*/
/*57 units of power consumed in this block (before dummy instructions)*/
/*------------------------------------*/

.L16:
/*------------------------------------*/
/*0 units of power consumed in this block (before dummy instructions)*/
/*------------------------------------*/

.L9:
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	add r15, r15 /*dummy operation, 3 units of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	mov	r0, r2
	mov	r1, r3
	sub	sp, fp, #28	/*3 units of power consumed*/
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, fp, pc}
	.size	rsa_modExp, .-rsa_modExp
	.section	.rodata
	.align	2
/*------------------------------------*/
/*3 units of power consumed in this block (before dummy instructions)*/
/*------------------------------------*/

.LC0:
	.ascii	"r\000"
	.align	2
/*------------------------------------*/
/*0 units of power consumed in this block (before dummy instructions)*/
/*------------------------------------*/

.LC1:
	.ascii	"Problem reading %s\012\000"
	.global	__aeabi_l2d
	.align	2
/*------------------------------------*/
/*0 units of power consumed in this block (before dummy instructions)*/
/*------------------------------------*/

.LC2:
	.ascii	"primes are %lld and %lld\012\000"
	.text
	.align	2
	.global	rsa_gen_keys
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	rsa_gen_keys, %function
/*------------------------------------*/
/*0 units of power consumed in this block (before dummy instructions)*/
/*------------------------------------*/

rsa_gen_keys:
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	@ args = 0, pretend = 0, frame = 120
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, fp, lr}
	vpush.64	{d8}
	add	fp, sp, #36	/*3 units of power consumed*/
	sub	sp, sp, #128	/*3 units of power consumed*/
	str	r0, [fp, #-120]
	str	r1, [fp, #-124]
	str	r2, [fp, #-128]
	movw	r1, #:lower16:.LC0
	movt	r1, #:upper16:.LC0
	ldr	r0, [fp, #-128]
	bl	fopen
	str	r0, [fp, #-56]
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bne	.L18	/*7 units of power consumed*/
	movw	r3, #:lower16:stderr
	movt	r3, #:upper16:stderr
	ldr	r3, [r3]
	ldr	r2, [fp, #-128]
	movw	r1, #:lower16:.LC1
	movt	r1, #:upper16:.LC1
	mov	r0, r3
	bl	fprintf
	mov	r0, #1
	bl	exit
/*------------------------------------*/
/*13 units of power consumed in this block (before dummy instructions)*/
/*------------------------------------*/

.L18:
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #-52]
/*------------------------------------*/
/*0 units of power consumed in this block (before dummy instructions)*/
/*------------------------------------*/

.L22:
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	add r15, r15 /*dummy operation, 3 units of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	ldr	r3, [fp, #-56]
	movw	r2, #1023
	mov	r1, #1
	movw	r0, #:lower16:buffer
	movt	r0, #:upper16:buffer
	bl	fread
	mov	r3, r0
	str	r3, [fp, #-60]
	movw	r3, #:lower16:buffer
	movt	r3, #:upper16:buffer
	ldr	r2, [fp, #-60]
	add	r2, r3, r2	/*3 units of power consumed*/
	mov	r3, #0
	strb	r3, [r2]
	movw	r3, #:lower16:i
	movt	r3, #:upper16:i
	mov	r2, #0
	str	r2, [r3]
	b	.L19	/*7 units of power consumed*/
/*------------------------------------*/
/*10 units of power consumed in this block (before dummy instructions)*/
/*------------------------------------*/

.L21:
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	add r15, r15 /*dummy operation, 3 units of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	movw	r3, #:lower16:i
	movt	r3, #:upper16:i
	ldr	r2, [r3]
	movw	r3, #:lower16:buffer
	movt	r3, #:upper16:buffer
	ldrb	r3, [r3, r2]	@ zero_extendqisi2
	cmp	r3, #10
	bne	.L20	/*7 units of power consumed*/
	ldrd	r2, [fp, #-52]
	adds	r8, r2, #1
	adc	r9, r3, #0	/*3 units of power consumed*/
	strd	r8, [fp, #-52]
/*------------------------------------*/
/*10 units of power consumed in this block (before dummy instructions)*/
/*------------------------------------*/

.L20:
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	add r15, r15 /*dummy operation, 3 units of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	movw	r3, #:lower16:i
	movt	r3, #:upper16:i
	ldr	r3, [r3]
	add	r2, r3, #1	/*3 units of power consumed*/
	movw	r3, #:lower16:i
	movt	r3, #:upper16:i
	str	r2, [r3]
/*------------------------------------*/
/*3 units of power consumed in this block (before dummy instructions)*/
/*------------------------------------*/

.L19:
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	movw	r3, #:lower16:i
	movt	r3, #:upper16:i
	ldr	r2, [r3]
	movw	r3, #:lower16:buffer
	movt	r3, #:upper16:buffer
	ldrb	r3, [r3, r2]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L21	/*7 units of power consumed*/
	ldr	r0, [fp, #-56]
	bl	feof
	mov	r3, r0
	cmp	r3, #0
	beq	.L22	/*7 units of power consumed*/
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #-68]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #-76]
	movw	r2, #257
	mov	r3, #0
	strd	r2, [fp, #-84]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #-44]
	mov	r3, sp
	mov	r8, r3
	mov	r3, #50
	sub	r3, r3, #1	/*3 units of power consumed*/
	str	r3, [fp, #-88]
	mov	r3, #50
	mov	r2, r3
	mov	r3, #0
	mov	r0, #0
	mov	r1, #0
	lsl	r1, r3, #3	/*2 units of power consumed*/
	orr	r1, r1, r2, lsr #29	/*1 units of power consumed*/
	lsl	r0, r2, #3	/*2 units of power consumed*/
	mov	r3, #50
	mov	r2, r3
	mov	r3, #0
	mov	r0, #0
	mov	r1, #0
	lsl	r1, r3, #3	/*2 units of power consumed*/
	orr	r1, r1, r2, lsr #29	/*1 units of power consumed*/
	lsl	r0, r2, #3	/*2 units of power consumed*/
	mov	r3, #50
	add	r3, r3, #7	/*3 units of power consumed*/
	lsr	r3, r3, #3	/*2 units of power consumed*/
	lsl	r3, r3, #3	/*2 units of power consumed*/
	sub	sp, sp, r3	/*3 units of power consumed*/
	add	r3, sp, #8	/*3 units of power consumed*/
	add	r3, r3, #0	/*3 units of power consumed*/
	str	r3, [fp, #-92]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #-100]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #-108]
/*------------------------------------*/
/*43 units of power consumed in this block (before dummy instructions)*/
/*------------------------------------*/

.L29:
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	bl	rand
	vmov	s15, r0	@ int
	vcvt.f64.s32	d8, s15
	ldrd	r2, [fp, #-52]
	adds	r1, r2, #1
	str	r1, [fp, #-140]
	adc	r3, r3, #0	/*3 units of power consumed*/
	str	r3, [fp, #-136]
	ldrd	r0, [fp, #-140]
	bl	__aeabi_l2d
	vmov	d7, r0, r1
	vmul.f64	d6, d8, d7
	vldr.64	d5, .L32
	vdiv.f64	d7, d6, d5
	vcvt.s32.f64	s15, d7
	vmov	r3, s15	@ int
	str	r3, [fp, #-112]
	bl	rand
	vmov	s15, r0	@ int
	vcvt.f64.s32	d8, s15
	ldrd	r2, [fp, #-52]
	adds	r1, r2, #1
	str	r1, [fp, #-148]
	adc	r3, r3, #0	/*3 units of power consumed*/
	str	r3, [fp, #-144]
	ldrd	r0, [fp, #-148]
	bl	__aeabi_l2d
	vmov	d7, r0, r1
	vmul.f64	d6, d8, d7
	vldr.64	d5, .L32
	vdiv.f64	d7, d6, d5
	vcvt.s32.f64	s15, d7
	vmov	r3, s15	@ int
	str	r3, [fp, #-116]
	ldr	r0, [fp, #-56]
	bl	rewind
	movw	r3, #:lower16:i
	movt	r3, #:upper16:i
	mov	r2, #0
	str	r2, [r3]
	b	.L23	/*7 units of power consumed*/
/*------------------------------------*/
/*13 units of power consumed in this block (before dummy instructions)*/
/*------------------------------------*/

.L24:
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	ldr	r0, [fp, #-92]
	mov	r3, #50
	sub	r3, r3, #1	/*3 units of power consumed*/
	ldr	r2, [fp, #-56]
	mov	r1, r3
	bl	fgets
	movw	r3, #:lower16:i
	movt	r3, #:upper16:i
	ldr	r3, [r3]
	add	r2, r3, #1	/*3 units of power consumed*/
	movw	r3, #:lower16:i
	movt	r3, #:upper16:i
	str	r2, [r3]
/*------------------------------------*/
/*6 units of power consumed in this block (before dummy instructions)*/
/*------------------------------------*/

.L23:
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	add r15, r15 /*dummy operation, 3 units of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	movw	r3, #:lower16:i
	movt	r3, #:upper16:i
	ldr	r3, [r3]
	ldr	r2, [fp, #-112]
	cmp	r2, r3
	bge	.L24	/*7 units of power consumed*/
	ldr	r3, [fp, #-92]
	mov	r0, r3
	bl	atol
	mov	r3, r0
	mov	r2, r3
	asr	r3, r2, #31	/*2 units of power consumed*/
	strd	r2, [fp, #-68]
	ldr	r0, [fp, #-56]
	bl	rewind
	movw	r3, #:lower16:i
	movt	r3, #:upper16:i
	mov	r2, #0
	str	r2, [r3]
	b	.L25	/*7 units of power consumed*/
/*------------------------------------*/
/*16 units of power consumed in this block (before dummy instructions)*/
/*------------------------------------*/

.L28:
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	movw	r3, #:lower16:j
	movt	r3, #:upper16:j
	mov	r2, #0
	str	r2, [r3]
	b	.L26	/*7 units of power consumed*/
/*------------------------------------*/
/*7 units of power consumed in this block (before dummy instructions)*/
/*------------------------------------*/

.L27:
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	add r15, r15 /*dummy operation, 3 units of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	movw	r3, #:lower16:j
	movt	r3, #:upper16:j
	ldr	r2, [r3]
	ldr	r1, [fp, #-92]
	mov	r3, #0
	strb	r3, [r1, r2]
	movw	r3, #:lower16:j
	movt	r3, #:upper16:j
	ldr	r3, [r3]
	add	r2, r3, #1	/*3 units of power consumed*/
	movw	r3, #:lower16:j
	movt	r3, #:upper16:j
	str	r2, [r3]
/*------------------------------------*/
/*3 units of power consumed in this block (before dummy instructions)*/
/*------------------------------------*/

.L26:
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	movw	r3, #:lower16:j
	movt	r3, #:upper16:j
	ldr	r3, [r3]
	mov	r2, #50
	cmp	r3, r2
	blt	.L27	/*7 units of power consumed*/
	ldr	r0, [fp, #-92]
	mov	r3, #50
	sub	r3, r3, #1	/*3 units of power consumed*/
	ldr	r2, [fp, #-56]
	mov	r1, r3
	bl	fgets
	movw	r3, #:lower16:i
	movt	r3, #:upper16:i
	ldr	r3, [r3]
	add	r2, r3, #1	/*3 units of power consumed*/
	movw	r3, #:lower16:i
	movt	r3, #:upper16:i
	str	r2, [r3]
/*------------------------------------*/
/*13 units of power consumed in this block (before dummy instructions)*/
/*------------------------------------*/

.L25:
	movw	r3, #:lower16:i
	movt	r3, #:upper16:i
	ldr	r3, [r3]
	ldr	r2, [fp, #-116]
	cmp	r2, r3
	bge	.L28	/*7 units of power consumed*/
	ldr	r3, [fp, #-92]
	mov	r0, r3
	bl	atol
	mov	r3, r0
	mov	r2, r3
	asr	r3, r2, #31	/*2 units of power consumed*/
	strd	r2, [fp, #-76]
	ldr	r3, [fp, #-64]
	ldr	r2, [fp, #-76]
	mul	r2, r2, r3	/*6 units of power consumed*/
	ldr	r3, [fp, #-72]
	ldr	r1, [fp, #-68]
	mul	r3, r1, r3	/*6 units of power consumed*/
	add	r1, r2, r3	/*3 units of power consumed*/
	ldr	r2, [fp, #-68]
	ldr	r3, [fp, #-76]
	umull	r2, r3, r2, r3	/*6 units of power consumed*/
	add	r1, r1, r3	/*3 units of power consumed*/
	mov	r3, r1
	strd	r2, [fp, #-100]
	strd	r2, [fp, #-100]
	ldrd	r2, [fp, #-68]
	subs	r4, r2, #1
	sbc	r5, r3, #0	/*3 units of power consumed*/
	ldrd	r2, [fp, #-76]
	subs	r6, r2, #1
	sbc	r7, r3, #0	/*3 units of power consumed*/
	mul	r2, r6, r5	/*6 units of power consumed*/
	mul	r3, r4, r7	/*6 units of power consumed*/
	add	r1, r2, r3	/*3 units of power consumed*/
	umull	r2, r3, r4, r6	/*6 units of power consumed*/
	add	r1, r1, r3	/*3 units of power consumed*/
	mov	r3, r1
	strd	r2, [fp, #-108]
	strd	r2, [fp, #-108]
	ldrd	r2, [fp, #-68]
	orrs	r3, r2, r3
	beq	.L29	/*7 units of power consumed*/
	ldrd	r2, [fp, #-76]
	orrs	r3, r2, r3
	beq	.L29	/*7 units of power consumed*/
	ldrd	r0, [fp, #-68]
	ldrd	r2, [fp, #-76]
	cmp	r1, r3
	cmpeq	r0, r2
	beq	.L29	/*7 units of power consumed*/
	ldrd	r2, [fp, #-84]
	ldrd	r0, [fp, #-108]
	bl	gcd
	mov	r2, r0
	mov	r3, r1
	cmp	r3, #0
	cmpeq	r2, #1
	bne	.L29	/*7 units of power consumed*/
	ldrd	r2, [fp, #-84]
	ldrd	r0, [fp, #-108]
	bl	ExtEuclid
	strd	r0, [fp, #-44]
	b	.L30	/*7 units of power consumed*/
/*------------------------------------*/
/*98 units of power consumed in this block (before dummy instructions)*/
/*------------------------------------*/

.L31:
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	add r15, r15 /*dummy operation, 3 units of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	ldrd	r0, [fp, #-44]
	ldrd	r2, [fp, #-108]
	adds	ip, r0, r2
	str	ip, [fp, #-156]
	adc	r3, r1, r3	/*3 units of power consumed*/
	str	r3, [fp, #-152]
	ldrd	r2, [fp, #-156]
	strd	r2, [fp, #-44]
/*------------------------------------*/
/*3 units of power consumed in this block (before dummy instructions)*/
/*------------------------------------*/

.L30:
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	add r15, r15 /*dummy operation, 3 units of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	ldrd	r2, [fp, #-44]
	cmp	r2, #0
	sbcs	r3, r3, #0
	blt	.L31	/*7 units of power consumed*/
	ldrd	r2, [fp, #-76]
	strd	r2, [sp]
	ldrd	r2, [fp, #-68]
	movw	r0, #:lower16:.LC2
	movt	r0, #:upper16:.LC2
	bl	printf
	ldr	r1, [fp, #-120]
	ldrd	r2, [fp, #-100]
	strd	r2, [r1]
	ldr	r1, [fp, #-120]
	ldrd	r2, [fp, #-84]
	strd	r2, [r1, #8]
	ldr	r1, [fp, #-124]
	ldrd	r2, [fp, #-100]
	strd	r2, [r1]
	ldr	r1, [fp, #-124]
	ldrd	r2, [fp, #-44]
	strd	r2, [r1, #8]
	mov	sp, r8
	nop
	sub	sp, fp, #36	/*3 units of power consumed*/
	@ sp needed
	vldm	sp!, {d8}
	pop	{r4, r5, r6, r7, r8, r9, fp, pc}
/*------------------------------------*/
/*10 units of power consumed in this block (before dummy instructions)*/
/*------------------------------------*/

.L33:
	.align	3
/*------------------------------------*/
/*0 units of power consumed in this block (before dummy instructions)*/
/*------------------------------------*/

.L32:
	.word	0
	.word	1105199104
	.size	rsa_gen_keys, .-rsa_gen_keys
	.section	.rodata
	.align	2
/*------------------------------------*/
/*0 units of power consumed in this block (before dummy instructions)*/
/*------------------------------------*/

.LC3:
	.ascii	"Error: Heap allocation failed.\012\000"
	.text
	.align	2
	.global	rsa_encrypt
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	rsa_encrypt, %function
/*------------------------------------*/
/*0 units of power consumed in this block (before dummy instructions)*/
/*------------------------------------*/

rsa_encrypt:
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	add r15, r15 /*dummy operation, 3 units of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, fp, lr}
	add	fp, sp, #24	/*3 units of power consumed*/
	sub	sp, sp, #44	/*3 units of power consumed*/
	str	r0, [fp, #-48]
	str	r1, [fp, #-52]
	str	r2, [fp, #-56]
	ldr	r3, [fp, #-52]
	lsl	r3, r3, #3	/*2 units of power consumed*/
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-40]
	cmp	r3, #0
	bne	.L35	/*7 units of power consumed*/
	movw	r3, #:lower16:stderr
	movt	r3, #:upper16:stderr
	ldr	r3, [r3]
	mov	r2, #31
	mov	r1, #1
	movw	r0, #:lower16:.LC3
	movt	r0, #:upper16:.LC3
	bl	fwrite
	mov	r3, #0
	b	.L36	/*7 units of power consumed*/
/*------------------------------------*/
/*22 units of power consumed in this block (before dummy instructions)*/
/*------------------------------------*/

.L35:
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #-36]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #-36]
	b	.L37	/*7 units of power consumed*/
/*------------------------------------*/
/*7 units of power consumed in this block (before dummy instructions)*/
/*------------------------------------*/

.L38:
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	add r15, r15 /*dummy operation, 3 units of power consumed*/
	ldr	r3, [fp, #-36]
	ldr	r2, [fp, #-48]
	add	r3, r2, r3	/*3 units of power consumed*/
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r0, r3
	mov	r1, #0
	ldr	r3, [fp, #-56]
	ldrd	r6, [r3, #8]
	ldr	r3, [fp, #-56]
	ldrd	r2, [r3]
	ldr	ip, [fp, #-36]
	lsl	ip, ip, #3	/*2 units of power consumed*/
	ldr	lr, [fp, #-40]
	add	r8, lr, ip	/*3 units of power consumed*/
	strd	r2, [sp]
	mov	r2, r6
	mov	r3, r7
	bl	rsa_modExp
	mov	r2, r0
	mov	r3, r1
	strd	r2, [r8]
	ldrd	r2, [fp, #-36]
	adds	r4, r2, #1
	adc	r5, r3, #0	/*3 units of power consumed*/
	strd	r4, [fp, #-36]
/*------------------------------------*/
/*11 units of power consumed in this block (before dummy instructions)*/
/*------------------------------------*/

.L37:
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	ldr	r3, [fp, #-52]
	mov	r2, r3
	mov	r3, #0
	ldrd	r0, [fp, #-36]
	cmp	r0, r2
	sbcs	r3, r1, r3
	blt	.L38	/*7 units of power consumed*/
	ldr	r3, [fp, #-40]
/*------------------------------------*/
/*7 units of power consumed in this block (before dummy instructions)*/
/*------------------------------------*/

.L36:
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	add r15, r15 /*dummy operation, 3 units of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	mov	r0, r3
	sub	sp, fp, #24	/*3 units of power consumed*/
	@ sp needed
	pop	{r4, r5, r6, r7, r8, fp, pc}
	.size	rsa_encrypt, .-rsa_encrypt
	.align	2
	.global	getRandom
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	getRandom, %function
/*------------------------------------*/
/*3 units of power consumed in this block (before dummy instructions)*/
/*------------------------------------*/

getRandom:
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, fp, lr}
	add	fp, sp, #28	/*3 units of power consumed*/
	sub	sp, sp, #32	/*3 units of power consumed*/
	strd	r0, [fp, #-44]
	strd	r2, [fp, #-52]
	bl	rand
	mov	r3, r0
	mov	r0, r3
	asr	r1, r0, #31	/*2 units of power consumed*/
	strd	r0, [fp, #-60]
	ldrd	r0, [fp, #-52]
	ldrd	r2, [fp, #-44]
	subs	r4, r0, r2
	sbc	r5, r1, r3	/*3 units of power consumed*/
	adds	r8, r4, #1
	adc	r9, r5, #0	/*3 units of power consumed*/
	mov	r2, r8
	mov	r3, r9
	ldrd	r0, [fp, #-60]
	bl	__aeabi_ldivmod
	mov	r0, r2
	mov	r1, r3
	ldrd	r2, [fp, #-44]
	adds	r6, r2, r0
	adc	r7, r3, r1	/*3 units of power consumed*/
	strd	r6, [fp, #-36]
	ldrd	r2, [fp, #-36]
	mov	r0, r2
	mov	r1, r3
	sub	sp, fp, #28	/*3 units of power consumed*/
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, fp, pc}
	.size	getRandom, .-getRandom
	.section	.rodata
	.align	2
/*------------------------------------*/
/*20 units of power consumed in this block (before dummy instructions)*/
/*------------------------------------*/

.LC4:
	.ascii	"Error: message_size is not divisible by %d, so cann"
	.ascii	"ot be output of rsa_encrypt\012\000"
	.text
	.align	2
	.global	rsa_decrypt
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	rsa_decrypt, %function
/*------------------------------------*/
/*0 units of power consumed in this block (before dummy instructions)*/
/*------------------------------------*/

rsa_decrypt:
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	add r15, r15 /*dummy operation, 3 units of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, fp, lr}
	add	fp, sp, #28	/*3 units of power consumed*/
	sub	sp, sp, #40	/*3 units of power consumed*/
	str	r0, [fp, #-48]
	str	r1, [fp, #-52]
	str	r2, [fp, #-56]
	str	r3, [fp, #-60]
	ldr	r3, [fp, #-52]
	and	r3, r3, #7	/*1 units of power consumed*/
	cmp	r3, #0
	beq	.L42	/*7 units of power consumed*/
	movw	r3, #:lower16:stderr
	movt	r3, #:upper16:stderr
	ldr	r3, [r3]
	mov	r2, #8
	movw	r1, #:lower16:.LC4
	movt	r1, #:upper16:.LC4
	mov	r0, r3
	bl	fprintf
	mov	r3, #0
	b	.L43	/*7 units of power consumed*/
/*------------------------------------*/
/*21 units of power consumed in this block (before dummy instructions)*/
/*------------------------------------*/

.L42:
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	add r15, r15 /*dummy operation, 3 units of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	ldr	r3, [fp, #-52]
	lsr	r3, r3, #3	/*2 units of power consumed*/
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-40]
	ldr	r0, [fp, #-52]
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-40]
	cmp	r3, #0
	beq	.L44	/*7 units of power consumed*/
	ldr	r3, [fp, #-44]
	cmp	r3, #0
	bne	.L45	/*7 units of power consumed*/
/*------------------------------------*/
/*16 units of power consumed in this block (before dummy instructions)*/
/*------------------------------------*/

.L44:
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	movw	r3, #:lower16:stderr
	movt	r3, #:upper16:stderr
	ldr	r3, [r3]
	mov	r2, #31
	mov	r1, #1
	movw	r0, #:lower16:.LC3
	movt	r0, #:upper16:.LC3
	bl	fwrite
	mov	r3, #0
	b	.L43	/*7 units of power consumed*/
/*------------------------------------*/
/*7 units of power consumed in this block (before dummy instructions)*/
/*------------------------------------*/

.L45:
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #-36]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #-36]
	b	.L46	/*7 units of power consumed*/
/*------------------------------------*/
/*7 units of power consumed in this block (before dummy instructions)*/
/*------------------------------------*/

.L47:
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	add r15, r15 /*dummy operation, 3 units of power consumed*/
	ldr	r3, [fp, #-36]
	lsl	r3, r3, #3	/*2 units of power consumed*/
	ldr	r2, [fp, #-48]
	add	r3, r2, r3	/*3 units of power consumed*/
	ldrd	r0, [r3]
	ldr	r3, [fp, #-56]
	ldrd	r8, [r3, #8]
	ldr	r3, [fp, #-56]
	ldrd	r2, [r3]
	strd	r2, [sp]
	mov	r2, r8
	mov	r3, r9
	bl	rsa_modExp
	ldr	r3, [fp, #-36]
	ldr	r2, [fp, #-44]
	add	r3, r2, r3	/*3 units of power consumed*/
	uxtb	r2, r0
	strb	r2, [r3]
	ldrd	r2, [fp, #-36]
	adds	r6, r2, #1
	adc	r7, r3, #0	/*3 units of power consumed*/
	strd	r6, [fp, #-36]
/*------------------------------------*/
/*11 units of power consumed in this block (before dummy instructions)*/
/*------------------------------------*/

.L46:
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	add r15, r15 /*dummy operation, 3 units of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	ldr	r3, [fp, #-52]
	lsr	r3, r3, #3	/*2 units of power consumed*/
	mov	r2, r3
	mov	r3, #0
	ldrd	r0, [fp, #-36]
	cmp	r0, r2
	sbcs	r3, r1, r3
	blt	.L47	/*7 units of power consumed*/
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #-36]
	b	.L48	/*7 units of power consumed*/
/*------------------------------------*/
/*16 units of power consumed in this block (before dummy instructions)*/
/*------------------------------------*/

.L49:
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	add r15, r15 /*dummy operation, 3 units of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	ldr	r3, [fp, #-36]
	ldr	r2, [fp, #-44]
	add	r2, r2, r3	/*3 units of power consumed*/
	ldr	r3, [fp, #-36]
	ldr	r1, [fp, #-40]
	add	r3, r1, r3	/*3 units of power consumed*/
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldrd	r2, [fp, #-36]
	adds	r4, r2, #1
	adc	r5, r3, #0	/*3 units of power consumed*/
	strd	r4, [fp, #-36]
/*------------------------------------*/
/*9 units of power consumed in this block (before dummy instructions)*/
/*------------------------------------*/

.L48:
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	mul r14, r14 /*dummy operation, 6 units of power consumed*/
	add r15, r15 /*dummy operation, 3 units of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	and r15, r15 /*dummy operation, 1 unit of power consumed*/
	ldr	r3, [fp, #-52]
	lsr	r3, r3, #3	/*2 units of power consumed*/
	mov	r2, r3
	mov	r3, #0
	ldrd	r0, [fp, #-36]
	cmp	r0, r2
	sbcs	r3, r1, r3
	blt	.L49	/*7 units of power consumed*/
	ldr	r0, [fp, #-44]
	bl	free
	ldr	r3, [fp, #-40]
/*------------------------------------*/
/*9 units of power consumed in this block (before dummy instructions)*/
/*------------------------------------*/

.L43:
	mov	r0, r3
	sub	sp, fp, #28	/*3 units of power consumed*/
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, fp, pc}
	.size	rsa_decrypt, .-rsa_decrypt
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
	.section	.note.GNU-stack,"",%progbits
