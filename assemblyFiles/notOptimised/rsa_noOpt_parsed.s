#======================================
#======================================
#646 units of power consumed for this entire file
#the largest block in this file consumes 54 units of power
#======================================
#======================================

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
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

MAX_DIGITS:
	.word	50
	.comm	i,4,4
	.global	j
	.bss
	.align	2
	.type	j, %object
	.size	j, 4
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

j:
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
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

gcd:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4	#3 units of power consumed
	sub	sp, sp, #24	#3 units of power consumedencrypt
	strd	r0, [fp, #-20]
	strd	r2, [fp, #-28]
	b	.L2	#7 units of power consumed
#------------------------------------
#13 units of power consumed in this block
#------------------------------------

.L3:
	ldrd	r2, [fp, #-20]
	strd	r2, [fp, #-12]
	ldrd	r0, [fp, #-28]
	ldrd	r2, [fp, #-20]
	bl	__aeabi_ldivmod	#7 units of power consumed
	strd	r2, [fp, #-20]
	ldrd	r2, [fp, #-12]
	strd	r2, [fp, #-28]
#------------------------------------
#7 units of power consumed in this block
#------------------------------------

.L2:
	ldrd	r2, [fp, #-20]
	orrs	r3, r2, r3
	bne	.L3	#7 units of power consumed
	ldrd	r2, [fp, #-28]
	mov	r0, r2
	mov	r1, r3
	sub	sp, fp, #4	#3 units of power consumed
	@ sp needed
	pop	{fp, pc}
	.size	gcd, .-gcd
	.align	2
	.global	ExtEuclid
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	ExtEuclid, %function
#------------------------------------
#10 units of power consumed in this block
#------------------------------------

ExtEuclid:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, fp, lr}
	add	fp, sp, #20	#3 units of power consumed
	sub	sp, sp, #88	#3 units of power consumed
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
	b	.L6	#7 units of power consumed
#------------------------------------
#13 units of power consumed in this block
#------------------------------------

.L7:
	ldrd	r2, [fp, #-100]
	ldrd	r0, [fp, #-60]
	bl	__aeabi_ldivmod	#7 units of power consumed
	mov	r2, r0
	mov	r3, r1
	strd	r2, [fp, #-68]
	ldrd	r0, [fp, #-60]
	ldrd	r2, [fp, #-100]
	bl	__aeabi_ldivmod	#7 units of power consumed
	strd	r2, [fp, #-76]
	ldr	r3, [fp, #-40]
	ldr	r2, [fp, #-68]
	mul	r2, r2, r3
	ldr	r3, [fp, #-64]
	ldr	r1, [fp, #-44]
	mul	r3, r1, r3
	add	r1, r2, r3	#3 units of power consumed
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-68]
	umull	r2, r3, r2, r3
	add	r1, r1, r3	#3 units of power consumed
	mov	r3, r1
	ldrd	r0, [fp, #-28]
	subs	r4, r0, r2
	sbc	r5, r1, r3
	strd	r4, [fp, #-84]
	ldr	r3, [fp, #-48]
	ldr	r2, [fp, #-68]
	mul	r2, r2, r3
	ldr	r3, [fp, #-64]
	ldr	r1, [fp, #-52]
	mul	r3, r1, r3
	add	r1, r2, r3	#3 units of power consumed
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-68]
	umull	r2, r3, r2, r3
	add	r1, r1, r3	#3 units of power consumed
	mov	r3, r1
	ldrd	r0, [fp, #-36]
	subs	r6, r0, r2
	sbc	r7, r1, r3
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
#------------------------------------
#26 units of power consumed in this block
#------------------------------------

.L6:
	ldrd	r2, [fp, #-100]
	orrs	r3, r2, r3
	bne	.L7	#7 units of power consumed
	ldrd	r2, [fp, #-36]
	mov	r0, r2
	mov	r1, r3
	sub	sp, fp, #20	#3 units of power consumed
	@ sp needed
	pop	{r4, r5, r6, r7, fp, pc}
	.size	ExtEuclid, .-ExtEuclid
	.align	2
	.global	rsa_modExp
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	rsa_modExp, %function
#------------------------------------
#10 units of power consumed in this block
#------------------------------------

rsa_modExp:
	@ args = 8, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, fp, lr}
	add	fp, sp, #28	#3 units of power consumed
	sub	sp, sp, #64	#3 units of power consumed
	strd	r0, [fp, #-36]
	strd	r2, [fp, #-44]
	ldrd	r2, [fp, #-36]
	cmp	r2, #0
	sbcs	r3, r3, #0
	blt	.L10
	ldrd	r2, [fp, #-44]
	cmp	r2, #0
	sbcs	r3, r3, #0
	blt	.L10
	ldrd	r2, [fp, #4]
	cmp	r2, #1
	sbcs	r3, r3, #0
	bge	.L11	#7 units of power consumed
#------------------------------------
#13 units of power consumed in this block
#------------------------------------

.L10:
	mov	r0, #1
	bl	exit	#7 units of power consumed
#------------------------------------
#7 units of power consumed in this block
#------------------------------------

.L11:
	ldrd	r0, [fp, #-36]
	ldrd	r2, [fp, #4]
	bl	__aeabi_ldivmod	#7 units of power consumed
	strd	r2, [fp, #-36]
	ldrd	r2, [fp, #-44]
	orrs	r3, r2, r3
	bne	.L12	#7 units of power consumed
	mov	r2, #1
	mov	r3, #0
	b	.L9	#7 units of power consumed
#------------------------------------
#21 units of power consumed in this block
#------------------------------------

.L12:
	ldrd	r2, [fp, #-44]
	cmp	r3, #0
	cmpeq	r2, #1
	bne	.L14	#7 units of power consumed
	ldrd	r2, [fp, #-36]
	b	.L9	#7 units of power consumed
#------------------------------------
#14 units of power consumed in this block
#------------------------------------

.L14:
	ldrd	r0, [fp, #-44]
	mov	r2, #1
	mov	r3, #0
	and	ip, r0, r2	#1 units of power consumed
	str	ip, [fp, #-52]
	and	r3, r1, r3	#1 units of power consumed
	str	r3, [fp, #-48]
	ldrd	r2, [fp, #-52]
	orrs	r3, r2, r3
	bne	.L15	#7 units of power consumed
	ldr	r3, [fp, #-32]
	ldr	r2, [fp, #-36]
	mul	r2, r2, r3
	ldr	r3, [fp, #-32]
	ldr	r1, [fp, #-36]
	mul	r3, r1, r3
	add	r3, r2, r3	#3 units of power consumed
	ldr	r1, [fp, #-36]
	ldr	r2, [fp, #-36]
	umull	r0, r1, r1, r2
	add	r3, r3, r1	#3 units of power consumed
	mov	r1, r3
	ldrd	r2, [fp, #4]
	bl	__aeabi_ldivmod	#7 units of power consumed
	mov	r4, r2
	mov	r5, r3
	ldrd	r2, [fp, #-44]
	lsr	r1, r3, #31
	mov	r0, r1
	mov	r1, #0
	adds	r6, r0, r2
	adc	r7, r1, r3
	mov	r2, #0
	mov	r3, #0
	lsr	r2, r6, #1
	orr	r2, r2, r7, lsl #31
	asr	r3, r7, #1
	mov	r0, r2
	mov	r1, r3
	ldrd	r2, [fp, #4]
	strd	r2, [sp]
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	rsa_modExp	#7 units of power consumed
	ldrd	r2, [fp, #4]
	bl	__aeabi_ldivmod	#7 units of power consumed
	b	.L9	#7 units of power consumed
#------------------------------------
#43 units of power consumed in this block
#------------------------------------

.L15:
	ldrd	r0, [fp, #-44]
	asr	r3, r1, #31
	mov	r2, r3
	asr	r3, r2, #31
	eor	r4, r0, r2
	eor	r5, r1, r3
	subs	r1, r4, r2
	str	r1, [fp, #-68]
	sbc	r1, r5, r3
	str	r1, [fp, #-64]
	mov	r0, #1
	mov	r1, #0
	ldrd	r4, [fp, #-68]
	mov	ip, r4
	and	ip, ip, r0	#1 units of power consumed
	str	ip, [fp, #-76]
	mov	ip, r5
	and	ip, ip, r1	#1 units of power consumed
	str	ip, [fp, #-72]
	ldrd	r0, [fp, #-76]
	mov	ip, r0
	eor	r8, ip, r2
	eor	r1, r1, r3
	mov	r9, r1
	subs	r1, r8, r2
	str	r1, [fp, #-84]
	sbc	r3, r9, r3
	str	r3, [fp, #-80]
	ldrd	r2, [fp, #-84]
	cmp	r3, #0
	cmpeq	r2, #1
	bne	.L16	#7 units of power consumed
	ldrd	r2, [fp, #-44]
	subs	r1, r2, #1
	str	r1, [fp, #-60]
	sbc	r3, r3, #0
	str	r3, [fp, #-56]
	ldrd	r2, [fp, #4]
	strd	r2, [sp]
	ldrd	r2, [fp, #-60]
	ldrd	r0, [fp, #-36]
	bl	rsa_modExp	#7 units of power consumed
	mov	r2, r0
	mov	r3, r1
	ldr	r1, [fp, #-36]
	mul	r0, r3, r1
	ldr	r1, [fp, #-32]
	mul	r1, r2, r1
	add	ip, r0, r1	#3 units of power consumed
	ldr	r1, [fp, #-36]
	umull	r0, r1, r1, r2
	add	r3, ip, r1	#3 units of power consumed
	mov	r1, r3
	ldrd	r2, [fp, #4]
	bl	__aeabi_ldivmod	#7 units of power consumed
	b	.L9	#7 units of power consumed
#------------------------------------
#36 units of power consumed in this block
#------------------------------------

.L16:
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.L9:
	mov	r0, r2
	mov	r1, r3
	sub	sp, fp, #28	#3 units of power consumed
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, fp, pc}
	.size	rsa_modExp, .-rsa_modExp
	.section	.rodata
	.align	2
#------------------------------------
#3 units of power consumed in this block
#------------------------------------

.LC0:
	.ascii	"r\000"
	.align	2
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.LC1:
	.ascii	"Problem reading %s\012\000"
	.global	__aeabi_l2d
	.align	2
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.LC2:
	.ascii	"primes are %lld and %lld\012\000"
	.text
	.align	2
	.global	rsa_gen_keys
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	rsa_gen_keys, %function
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

rsa_gen_keys:
	@ args = 0, pretend = 0, frame = 120
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, fp, lr}
	vpush.64	{d8}
	add	fp, sp, #36	#3 units of power consumed
	sub	sp, sp, #128	#3 units of power consumed
	str	r0, [fp, #-120]
	str	r1, [fp, #-124]
	str	r2, [fp, #-128]
	movw	r1, #:lower16:.LC0
	movt	r1, #:upper16:.LC0
	ldr	r0, [fp, #-128]
	bl	fopen	#7 units of power consumed
	str	r0, [fp, #-56]
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bne	.L18	#7 units of power consumed
	movw	r3, #:lower16:stderr
	movt	r3, #:upper16:stderr
	ldr	r3, [r3]
	ldr	r2, [fp, #-128]
	movw	r1, #:lower16:.LC1
	movt	r1, #:upper16:.LC1
	mov	r0, r3
	bl	fprintf	#7 units of power consumed
	mov	r0, #1
	bl	exit	#7 units of power consumed
#------------------------------------
#34 units of power consumed in this block
#------------------------------------

.L18:
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #-52]
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.L22:
	ldr	r3, [fp, #-56]
	movw	r2, #1023
	mov	r1, #1
	movw	r0, #:lower16:buffer
	movt	r0, #:upper16:buffer
	bl	fread	#7 units of power consumed
	mov	r3, r0
	str	r3, [fp, #-60]
	movw	r3, #:lower16:buffer
	movt	r3, #:upper16:buffer
	ldr	r2, [fp, #-60]
	add	r2, r3, r2	#3 units of power consumed
	mov	r3, #0
	strb	r3, [r2]
	movw	r3, #:lower16:i
	movt	r3, #:upper16:i
	mov	r2, #0
	str	r2, [r3]
	b	.L19	#7 units of power consumed
#------------------------------------
#17 units of power consumed in this block
#------------------------------------

.L21:
	movw	r3, #:lower16:i
	movt	r3, #:upper16:i
	ldr	r2, [r3]
	movw	r3, #:lower16:buffer
	movt	r3, #:upper16:buffer
	ldrb	r3, [r3, r2]	@ zero_extendqisi2
	cmp	r3, #10
	bne	.L20	#7 units of power consumed
	ldrd	r2, [fp, #-52]
	adds	r8, r2, #1
	adc	r9, r3, #0
	strd	r8, [fp, #-52]
#------------------------------------
#7 units of power consumed in this block
#------------------------------------

.L20:
	movw	r3, #:lower16:i
	movt	r3, #:upper16:i
	ldr	r3, [r3]
	add	r2, r3, #1	#3 units of power consumed
	movw	r3, #:lower16:i
	movt	r3, #:upper16:i
	str	r2, [r3]
#------------------------------------
#3 units of power consumed in this block
#------------------------------------

.L19:
	movw	r3, #:lower16:i
	movt	r3, #:upper16:i
	ldr	r2, [r3]
	movw	r3, #:lower16:buffer
	movt	r3, #:upper16:buffer
	ldrb	r3, [r3, r2]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L21	#7 units of power consumed
	ldr	r0, [fp, #-56]
	bl	feof	#7 units of power consumed
	mov	r3, r0
	cmp	r3, #0
	beq	.L22
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
	sub	r3, r3, #1	#3 units of power consumed
	str	r3, [fp, #-88]
	mov	r3, #50
	mov	r2, r3
	mov	r3, #0
	mov	r0, #0
	mov	r1, #0
	lsl	r1, r3, #3
	orr	r1, r1, r2, lsr #29
	lsl	r0, r2, #3
	mov	r3, #50
	mov	r2, r3
	mov	r3, #0
	mov	r0, #0
	mov	r1, #0
	lsl	r1, r3, #3
	orr	r1, r1, r2, lsr #29
	lsl	r0, r2, #3
	mov	r3, #50
	add	r3, r3, #7	#3 units of power consumed
	lsr	r3, r3, #3
	lsl	r3, r3, #3
	sub	sp, sp, r3	#3 units of power consumed
	add	r3, sp, #8	#3 units of power consumed
	add	r3, r3, #0	#3 units of power consumed
	str	r3, [fp, #-92]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #-100]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #-108]
	mov	r0, #0
	bl	time	#7 units of power consumed
	mov	r3, r0
	mov	r0, r3
	bl	srand	#7 units of power consumed
#------------------------------------
#43 units of power consumed in this block
#------------------------------------

.L29:
	bl	rand	#7 units of power consumed
	vmov	s15, r0	@ int
	vcvt.f64.s32	d8, s15
	ldrd	r2, [fp, #-52]
	adds	r1, r2, #1
	str	r1, [fp, #-140]
	adc	r3, r3, #0
	str	r3, [fp, #-136]
	ldrd	r0, [fp, #-140]
	bl	__aeabi_l2d	#7 units of power consumed
	vmov	d7, r0, r1
	vmul.f64	d6, d8, d7
	vldr.64	d5, .L32
	vdiv.f64	d7, d6, d5
	vcvt.s32.f64	s15, d7
	vmov	r3, s15	@ int
	str	r3, [fp, #-112]
	bl	rand	#7 units of power consumed
	vmov	s15, r0	@ int
	vcvt.f64.s32	d8, s15
	ldrd	r2, [fp, #-52]
	adds	r1, r2, #1
	str	r1, [fp, #-148]
	adc	r3, r3, #0
	str	r3, [fp, #-144]
	ldrd	r0, [fp, #-148]
	bl	__aeabi_l2d	#7 units of power consumed
	vmov	d7, r0, r1
	vmul.f64	d6, d8, d7
	vldr.64	d5, .L32
	vdiv.f64	d7, d6, d5
	vcvt.s32.f64	s15, d7
	vmov	r3, s15	@ int
	str	r3, [fp, #-116]
	ldr	r0, [fp, #-56]
	bl	rewind	#7 units of power consumed
	movw	r3, #:lower16:i
	movt	r3, #:upper16:i
	mov	r2, #0
	str	r2, [r3]
	b	.L23	#7 units of power consumed
#------------------------------------
#42 units of power consumed in this block
#------------------------------------

.L24:
	ldr	r0, [fp, #-92]
	mov	r3, #50
	sub	r3, r3, #1	#3 units of power consumed
	ldr	r2, [fp, #-56]
	mov	r1, r3
	bl	fgets	#7 units of power consumed
	movw	r3, #:lower16:i
	movt	r3, #:upper16:i
	ldr	r3, [r3]
	add	r2, r3, #1	#3 units of power consumed
	movw	r3, #:lower16:i
	movt	r3, #:upper16:i
	str	r2, [r3]
#------------------------------------
#13 units of power consumed in this block
#------------------------------------

.L23:
	movw	r3, #:lower16:i
	movt	r3, #:upper16:i
	ldr	r3, [r3]
	ldr	r2, [fp, #-112]
	cmp	r2, r3
	bge	.L24	#7 units of power consumed
	ldr	r3, [fp, #-92]
	mov	r0, r3
	bl	atol	#7 units of power consumed
	mov	r3, r0
	mov	r2, r3
	asr	r3, r2, #31
	strd	r2, [fp, #-68]
	ldr	r0, [fp, #-56]
	bl	rewind	#7 units of power consumed
	movw	r3, #:lower16:i
	movt	r3, #:upper16:i
	mov	r2, #0
	str	r2, [r3]
	b	.L25	#7 units of power consumed
#------------------------------------
#28 units of power consumed in this block
#------------------------------------

.L28:
	movw	r3, #:lower16:j
	movt	r3, #:upper16:j
	mov	r2, #0
	str	r2, [r3]
	b	.L26	#7 units of power consumed
#------------------------------------
#7 units of power consumed in this block
#------------------------------------

.L27:
	movw	r3, #:lower16:j
	movt	r3, #:upper16:j
	ldr	r2, [r3]
	ldr	r1, [fp, #-92]
	mov	r3, #0
	strb	r3, [r1, r2]
	movw	r3, #:lower16:j
	movt	r3, #:upper16:j
	ldr	r3, [r3]
	add	r2, r3, #1	#3 units of power consumed
	movw	r3, #:lower16:j
	movt	r3, #:upper16:j
	str	r2, [r3]
#------------------------------------
#3 units of power consumed in this block
#------------------------------------

.L26:
	movw	r3, #:lower16:j
	movt	r3, #:upper16:j
	ldr	r3, [r3]
	mov	r2, #50
	cmp	r3, r2
	blt	.L27
	ldr	r0, [fp, #-92]
	mov	r3, #50
	sub	r3, r3, #1	#3 units of power consumed
	ldr	r2, [fp, #-56]
	mov	r1, r3
	bl	fgets	#7 units of power consumed
	movw	r3, #:lower16:i
	movt	r3, #:upper16:i
	ldr	r3, [r3]
	add	r2, r3, #1	#3 units of power consumed
	movw	r3, #:lower16:i
	movt	r3, #:upper16:i
	str	r2, [r3]
#------------------------------------
#13 units of power consumed in this block
#------------------------------------

.L25:
	movw	r3, #:lower16:i
	movt	r3, #:upper16:i
	ldr	r3, [r3]
	ldr	r2, [fp, #-116]
	cmp	r2, r3
	bge	.L28	#7 units of power consumed
	ldr	r3, [fp, #-92]
	mov	r0, r3
	bl	atol	#7 units of power consumed
	mov	r3, r0
	mov	r2, r3
	asr	r3, r2, #31
	strd	r2, [fp, #-76]
	ldr	r3, [fp, #-64]
	ldr	r2, [fp, #-76]
	mul	r2, r2, r3
	ldr	r3, [fp, #-72]
	ldr	r1, [fp, #-68]
	mul	r3, r1, r3
	add	r1, r2, r3	#3 units of power consumed
	ldr	r2, [fp, #-68]
	ldr	r3, [fp, #-76]
	umull	r2, r3, r2, r3
	add	r1, r1, r3	#3 units of power consumed
	mov	r3, r1
	strd	r2, [fp, #-100]
	strd	r2, [fp, #-100]
	ldrd	r2, [fp, #-68]
	subs	r4, r2, #1
	sbc	r5, r3, #0
	ldrd	r2, [fp, #-76]
	subs	r6, r2, #1
	sbc	r7, r3, #0
	mul	r2, r6, r5
	mul	r3, r4, r7
	add	r1, r2, r3	#3 units of power consumed
	umull	r2, r3, r4, r6
	add	r1, r1, r3	#3 units of power consumed
	mov	r3, r1
	strd	r2, [fp, #-108]
	strd	r2, [fp, #-108]
	ldrd	r2, [fp, #-68]
	orrs	r3, r2, r3
	beq	.L29
	ldrd	r2, [fp, #-76]
	orrs	r3, r2, r3
	beq	.L29
	ldrd	r0, [fp, #-68]
	ldrd	r2, [fp, #-76]
	cmp	r1, r3
	cmpeq	r0, r2
	beq	.L29
	ldrd	r2, [fp, #-84]
	ldrd	r0, [fp, #-108]
	bl	gcd	#7 units of power consumed
	mov	r2, r0
	mov	r3, r1
	cmp	r3, #0
	cmpeq	r2, #1
	bne	.L29	#7 units of power consumed
	ldrd	r2, [fp, #-84]
	ldrd	r0, [fp, #-108]
	bl	ExtEuclid	#7 units of power consumed
	strd	r0, [fp, #-44]
	b	.L30	#7 units of power consumed
#------------------------------------
#54 units of power consumed in this block
#------------------------------------

.L31:
	ldrd	r0, [fp, #-44]
	ldrd	r2, [fp, #-108]
	adds	ip, r0, r2
	str	ip, [fp, #-156]
	adc	r3, r1, r3
	str	r3, [fp, #-152]
	ldrd	r2, [fp, #-156]
	strd	r2, [fp, #-44]
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.L30:
	ldrd	r2, [fp, #-44]
	cmp	r2, #0
	sbcs	r3, r3, #0
	blt	.L31
	ldrd	r2, [fp, #-76]
	strd	r2, [sp]
	ldrd	r2, [fp, #-68]
	movw	r0, #:lower16:.LC2
	movt	r0, #:upper16:.LC2
	bl	printf	#7 units of power consumed
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
	sub	sp, fp, #36	#3 units of power consumed
	@ sp needed
	vldm	sp!, {d8}
	pop	{r4, r5, r6, r7, r8, r9, fp, pc}
#------------------------------------
#10 units of power consumed in this block
#------------------------------------

.L33:
	.align	3
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.L32:
	.word	0
	.word	1105199104
	.size	rsa_gen_keys, .-rsa_gen_keys
	.section	.rodata
	.align	2
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.LC3:
	.ascii	"Error: Heap allocation failed.\012\000"
	.text
	.align	2
	.global	rsa_encrypt
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	rsa_encrypt, %function
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

rsa_encrypt:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, fp, lr}
	add	fp, sp, #24	#3 units of power consumed
	sub	sp, sp, #44	#3 units of power consumed
	str	r0, [fp, #-48]
	str	r1, [fp, #-52]
	str	r2, [fp, #-56]
	ldr	r3, [fp, #-52]
	lsl	r3, r3, #3
	mov	r0, r3
	bl	malloc	#7 units of power consumed
	mov	r3, r0
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-40]
	cmp	r3, #0
	bne	.L35	#7 units of power consumed
	movw	r3, #:lower16:stderr
	movt	r3, #:upper16:stderr
	ldr	r3, [r3]
	mov	r2, #31
	mov	r1, #1
	movw	r0, #:lower16:.LC3
	movt	r0, #:upper16:.LC3
	bl	fwrite	#7 units of power consumed
	mov	r3, #0
	b	.L36	#7 units of power consumed
#------------------------------------
#34 units of power consumed in this block
#------------------------------------

.L35:
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #-36]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #-36]
	b	.L37	#7 units of power consumed
#------------------------------------
#7 units of power consumed in this block
#------------------------------------

.L38:
	ldr	r3, [fp, #-36]
	ldr	r2, [fp, #-48]
	add	r3, r2, r3	#3 units of power consumed
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r0, r3
	mov	r1, #0
	ldr	r3, [fp, #-56]
	ldrd	r6, [r3, #8]
	ldr	r3, [fp, #-56]
	ldrd	r2, [r3]
	ldr	ip, [fp, #-36]
	lsl	ip, ip, #3
	ldr	lr, [fp, #-40]
	add	r8, lr, ip	#3 units of power consumed
	strd	r2, [sp]
	mov	r2, r6
	mov	r3, r7
	bl	rsa_modExp	#7 units of power consumed
	mov	r2, r0
	mov	r3, r1
	strd	r2, [r8]
	ldrd	r2, [fp, #-36]
	adds	r4, r2, #1
	adc	r5, r3, #0
	strd	r4, [fp, #-36]
#------------------------------------
#13 units of power consumed in this block
#------------------------------------

.L37:
	ldr	r3, [fp, #-52]
	mov	r2, r3
	mov	r3, #0
	ldrd	r0, [fp, #-36]
	cmp	r0, r2
	sbcs	r3, r1, r3
	blt	.L38
	ldr	r3, [fp, #-40]
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.L36:
	mov	r0, r3
	sub	sp, fp, #24	#3 units of power consumed
	@ sp needed
	pop	{r4, r5, r6, r7, r8, fp, pc}
	.size	rsa_encrypt, .-rsa_encrypt
	.section	.rodata
	.align	2
#------------------------------------
#3 units of power consumed in this block
#------------------------------------

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
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

rsa_decrypt:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, fp, lr}
	add	fp, sp, #28	#3 units of power consumed
	sub	sp, sp, #40	#3 units of power consumed
	str	r0, [fp, #-48]
	str	r1, [fp, #-52]
	str	r2, [fp, #-56]
	ldr	r3, [fp, #-52]
	and	r3, r3, #7	#1 units of power consumed
	cmp	r3, #0
	beq	.L40
	movw	r3, #:lower16:stderr
	movt	r3, #:upper16:stderr
	ldr	r3, [r3]
	mov	r2, #8
	movw	r1, #:lower16:.LC4
	movt	r1, #:upper16:.LC4
	mov	r0, r3
	bl	fprintf	#7 units of power consumed
	mov	r3, #0
	b	.L41	#7 units of power consumed
#------------------------------------
#21 units of power consumed in this block
#------------------------------------

.L40:
	ldr	r3, [fp, #-52]
	lsr	r3, r3, #3
	mov	r0, r3
	bl	malloc	#7 units of power consumed
	mov	r3, r0
	str	r3, [fp, #-40]
	ldr	r0, [fp, #-52]
	bl	malloc	#7 units of power consumed
	mov	r3, r0
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-40]
	cmp	r3, #0
	beq	.L42
	ldr	r3, [fp, #-44]
	cmp	r3, #0
	bne	.L43	#7 units of power consumed
#------------------------------------
#21 units of power consumed in this block
#------------------------------------

.L42:
	movw	r3, #:lower16:stderr
	movt	r3, #:upper16:stderr
	ldr	r3, [r3]
	mov	r2, #31
	mov	r1, #1
	movw	r0, #:lower16:.LC3
	movt	r0, #:upper16:.LC3
	bl	fwrite	#7 units of power consumed
	mov	r3, #0
	b	.L41	#7 units of power consumed
#------------------------------------
#14 units of power consumed in this block
#------------------------------------

.L43:
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #-36]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #-36]
	b	.L44	#7 units of power consumed
#------------------------------------
#7 units of power consumed in this block
#------------------------------------

.L45:
	ldr	r3, [fp, #-36]
	lsl	r3, r3, #3
	ldr	r2, [fp, #-48]
	add	r3, r2, r3	#3 units of power consumed
	ldrd	r0, [r3]
	ldr	r3, [fp, #-56]
	ldrd	r8, [r3, #8]
	ldr	r3, [fp, #-56]
	ldrd	r2, [r3]
	strd	r2, [sp]
	mov	r2, r8
	mov	r3, r9
	bl	rsa_modExp	#7 units of power consumed
	ldr	r3, [fp, #-36]
	ldr	r2, [fp, #-44]
	add	r3, r2, r3	#3 units of power consumed
	uxtb	r2, r0
	strb	r2, [r3]
	ldrd	r2, [fp, #-36]
	adds	r6, r2, #1
	adc	r7, r3, #0
	strd	r6, [fp, #-36]
#------------------------------------
#13 units of power consumed in this block
#------------------------------------

.L44:
	ldr	r3, [fp, #-52]
	lsr	r3, r3, #3
	mov	r2, r3
	mov	r3, #0
	ldrd	r0, [fp, #-36]
	cmp	r0, r2
	sbcs	r3, r1, r3
	blt	.L45
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #-36]
	b	.L46	#7 units of power consumed
#------------------------------------
#7 units of power consumed in this block
#------------------------------------

.L47:
	ldr	r3, [fp, #-36]
	ldr	r2, [fp, #-44]
	add	r2, r2, r3	#3 units of power consumed
	ldr	r3, [fp, #-36]
	ldr	r1, [fp, #-40]
	add	r3, r1, r3	#3 units of power consumed
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldrd	r2, [fp, #-36]
	adds	r4, r2, #1
	adc	r5, r3, #0
	strd	r4, [fp, #-36]
#------------------------------------
#6 units of power consumed in this block
#------------------------------------

.L46:
	ldr	r3, [fp, #-52]
	lsr	r3, r3, #3
	mov	r2, r3
	mov	r3, #0
	ldrd	r0, [fp, #-36]
	cmp	r0, r2
	sbcs	r3, r1, r3
	blt	.L47
	ldr	r0, [fp, #-44]
	bl	free	#7 units of power consumed
	ldr	r3, [fp, #-40]
#------------------------------------
#7 units of power consumed in this block
#------------------------------------

.L41:
	mov	r0, r3
	sub	sp, fp, #28	#3 units of power consumed
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, fp, pc}
	.size	rsa_decrypt, .-rsa_decrypt
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
	.section	.note.GNU-stack,"",%progbits
