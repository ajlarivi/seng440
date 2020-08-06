#======================================
#======================================
#994 units of power consumed for this entire file
#the largest block in this file consumes 49 units of power
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
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"rsa.c"
	.text
	.global	__aeabi_ldivmod
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	mov	r5, r1
	orrs	r1, r4, r5
	mov	r0, r2
	mov	r1, r3
	bne	.L3	#7 units of power consumed
	b	.L8	#7 units of power consumed
#------------------------------------
#14 units of power consumed in this block
#------------------------------------

.L5:
	mov	r4, r2
	mov	r5, r3
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.L3:
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_ldivmod	#7 units of power consumed
	orrs	r1, r2, r3
	mov	r0, r4
	mov	r1, r5
	bne	.L5	#7 units of power consumed
#------------------------------------
#14 units of power consumed in this block
#------------------------------------

.L2:
	mov	r0, r4
	mov	r1, r5
	pop	{r4, r5, r6, pc}
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.L8:
	mov	r4, r2
	mov	r5, r3
	b	.L2	#7 units of power consumed
	.size	gcd, .-gcd
	.align	2
	.global	ExtEuclid
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	ExtEuclid, %function
#------------------------------------
#7 units of power consumed in this block
#------------------------------------

ExtEuclid:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r8, r0
	mov	r9, r1
	orrs	r1, r8, r9
	beq	.L12
	mov	r6, #0
	mov	r0, r2
	mov	r1, r3
	mov	r10, #1
	mov	r7, r6
	mov	fp, r6
	b	.L11	#7 units of power consumed
#------------------------------------
#7 units of power consumed in this block
#------------------------------------

.L13:
	mov	r6, lr
	mov	r7, ip
	mov	r8, r2
	mov	r9, r3
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.L11:
	mov	r2, r8
	mov	r3, r9
	bl	__aeabi_ldivmod	#7 units of power consumed
	mul	ip, r0, r7
	umull	r4, r5, r0, r6
	mla	r1, r6, r1, ip
	subs	lr, r10, r4
	add	r5, r1, r5	#3 units of power consumed
	sbc	ip, fp, r5
	orrs	r1, r2, r3
	mov	r10, r6
	mov	fp, r7
	mov	r0, r8
	mov	r1, r9
	bne	.L13	#7 units of power consumed
#------------------------------------
#17 units of power consumed in this block
#------------------------------------

.L9:
	mov	r0, r6
	mov	r1, r7
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.L12:
	mov	r6, #1
	mov	r7, #0
	b	.L9	#7 units of power consumed
	.size	ExtEuclid, .-ExtEuclid
	.align	2
	.global	rsa_modExp
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	rsa_modExp, %function
#------------------------------------
#7 units of power consumed in this block
#------------------------------------

rsa_modExp:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	sub	sp, sp, #8	#3 units of power consumed
	ldrd	r6, [sp, #40]
	cmp	r6, #1
	sbcs	ip, r7, #0
	mov	r5, r3
	movlt	r3, #1
	movge	r3, #0
	orr	r3, r3, r5, lsr #31
	orrs	r8, r3, r1, lsr #31
	bne	.L26	#7 units of power consumed
	mov	r4, r2
	orrs	r3, r4, r5
	beq	.L20
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_ldivmod	#7 units of power consumed
	cmp	r5, #0
	cmpeq	r4, #1
	mov	r9, r2
	mov	r10, r3
	mov	r0, r2
	mov	r1, r3
	beq	.L15
	mov	r3, r8
	and	r2, r4, #1	#1 units of power consumed
	orrs	r3, r2, r3
	beq	.L27
	mov	r3, r8
	and	r2, r4, #1	#1 units of power consumed
	orrs	r3, r2, r3
	bne	.L28	#7 units of power consumed
#------------------------------------
#26 units of power consumed in this block
#------------------------------------

.L15:
	add	sp, sp, #8	#3 units of power consumed
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
#------------------------------------
#3 units of power consumed in this block
#------------------------------------

.L20:
	mov	r1, r8
	mov	r0, #1
	add	sp, sp, #8	#3 units of power consumed
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
#------------------------------------
#3 units of power consumed in this block
#------------------------------------

.L27:
	umull	r0, r1, r9, r9
	mul	r10, r10, r9
	mov	r2, r6
	add	r1, r1, r10, lsl #1	#3 units of power consumed
	mov	r3, r7
	bl	__aeabi_ldivmod	#7 units of power consumed
	mov	r0, r2
	lsr	r2, r4, #1
	mov	r1, r3
	orr	r2, r2, r5, lsl #31
	asr	r3, r5, #1
	strd	r6, [sp]
	bl	rsa_modExp	#7 units of power consumed
#------------------------------------
#17 units of power consumed in this block
#------------------------------------

.L25:
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_ldivmod	#7 units of power consumed
	mov	r0, r2
	mov	r1, r3
	add	sp, sp, #8	#3 units of power consumed
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
#------------------------------------
#10 units of power consumed in this block
#------------------------------------

.L28:
	subs	r2, r4, #1
	sbc	r3, r5, #0
	strd	r6, [sp]
	bl	rsa_modExp	#7 units of power consumed
	mul	r10, r0, r10
	umull	r2, r3, r0, r9
	mla	r1, r1, r9, r10
	add	r3, r1, r3	#3 units of power consumed
	mov	r0, r2
	mov	r1, r3
	b	.L25	#7 units of power consumed
#------------------------------------
#17 units of power consumed in this block
#------------------------------------

.L26:
	mov	r0, #1
	bl	exit	#7 units of power consumed
	.size	rsa_modExp, .-rsa_modExp
	.global	__aeabi_l2d
	.align	2
	.global	rsa_gen_keys
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	rsa_gen_keys, %function
#------------------------------------
#7 units of power consumed in this block
#------------------------------------

rsa_gen_keys:
	@ args = 0, pretend = 0, frame = 104
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	vpush.64	{d8, d9, d10}
	sub	sp, sp, #116	#3 units of power consumed
	str	r1, [sp, #52]
	movw	r1, #:lower16:.LC0
	str	r0, [sp, #48]
	movt	r1, #:upper16:.LC0
	mov	r0, r2
	mov	r4, r2
	bl	fopen	#7 units of power consumed
	subs	r5, r0, #0
	beq	.L62
	movw	r10, #:lower16:buffer
	mov	r6, #0
	movt	r10, #:upper16:buffer
	movw	r4, #:lower16:i
	mov	fp, r10
	mov	r8, r6
	rsb	r9, r10, #1
	movt	r4, #:upper16:i
#------------------------------------
#10 units of power consumed in this block
#------------------------------------

.L30:
	movw	r0, #:lower16:buffer
	mov	r3, r5
	movw	r2, #1023
	movt	r0, #:upper16:buffer
	mov	r1, #1
	bl	fread	#7 units of power consumed
	mov	r3, #0
	strb	r3, [r10, r0]
	ldrb	r2, [r10]	@ zero_extendqisi2
	str	r3, [r4]
	cmp	r2, r3
	movwne	r3, #:lower16:buffer
	movne	r10, fp
	movtne	r3, #:upper16:buffer
	beq	.L63
#------------------------------------
#7 units of power consumed in this block
#------------------------------------

.L34:
	adds	r7, r6, #1
	adc	r1, r8, #0
	cmp	r2, #10
	bne	.L33	#7 units of power consumed
	adds	r0, r6, #2
	adc	r2, r8, #0
	mov	r6, r7
	mov	r8, r1
	mov	r7, r0
	mov	r1, r2
#------------------------------------
#7 units of power consumed in this block
#------------------------------------

.L33:
	add	r0, r9, r3	#3 units of power consumed
	ldrb	r2, [r3, #1]!	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L34	#7 units of power consumed
	str	r1, [sp, #8]
	str	r0, [r4]
#------------------------------------
#10 units of power consumed in this block
#------------------------------------

.L32:
	mov	r0, r5
	bl	feof	#7 units of power consumed
	cmp	r0, #0
	beq	.L30
	vldr.64	d9, .L64
	str	r7, [sp, #24]
	mov	r0, #0
	ldr	r7, [sp, #8]
	bl	time	#7 units of power consumed
	bl	srand	#7 units of power consumed
	str	r7, [sp, #44]
#------------------------------------
#21 units of power consumed in this block
#------------------------------------

.L56:
	bl	rand	#7 units of power consumed
	ldr	r1, [sp, #44]
	vmov	s16, r0	@ int
	ldr	r0, [sp, #24]
	bl	__aeabi_l2d	#7 units of power consumed
	vcvt.f64.s32	d7, s16
	vmov	d10, r0, r1
	vmul.f64	d7, d7, d10
	vmul.f64	d7, d7, d9
	vcvt.s32.f64	s15, d7
	vmov	r7, s15	@ int
	bl	rand	#7 units of power consumed
	vmov	s15, r0	@ int
	vcvt.f64.s32	d7, s15
	vmul.f64	d7, d7, d10
	vmul.f64	d7, d7, d9
	vcvt.s32.f64	s15, d7
	mov	r0, r5
	vmov	r6, s15	@ int
	bl	rewind	#7 units of power consumed
	mov	r3, #0
	cmp	r7, #0
	str	r3, [r4]
	blt	.L38
#------------------------------------
#28 units of power consumed in this block
#------------------------------------

.L35:
	mov	r2, r5
	mov	r1, #49
	add	r0, sp, #60	#3 units of power consumed
	bl	fgets	#7 units of power consumed
	ldr	r3, [r4]
	add	r3, r3, #1	#3 units of power consumed
	cmp	r3, r7
	str	r3, [r4]
	ble	.L35	#7 units of power consumed
#------------------------------------
#20 units of power consumed in this block
#------------------------------------

.L38:
	mov	r2, #10
	mov	r1, #0
	add	r0, sp, #60	#3 units of power consumed
	bl	strtol	#7 units of power consumed
	mov	r7, r0
	mov	r0, r5
	bl	rewind	#7 units of power consumed
	mov	r3, #0
	mov	r2, r7
	str	r3, [r4]
	cmp	r6, #0
	asr	r3, r7, #31
	strd	r2, [sp, #8]
	blt	.L37
	movw	r8, #:lower16:.LANCHOR0
	mov	r9, #50
	movt	r8, #:upper16:.LANCHOR0
#------------------------------------
#17 units of power consumed in this block
#------------------------------------

.L36:
	mov	r2, #50
	mov	r1, #0
	add	r0, sp, #60	#3 units of power consumed
	bl	memset	#7 units of power consumed
	mov	r2, r5
	mov	r1, #49
	add	r0, sp, #60	#3 units of power consumed
	str	r9, [r8]
	bl	fgets	#7 units of power consumed
	ldr	r3, [r4]
	add	r3, r3, #1	#3 units of power consumed
	cmp	r3, r6
	str	r3, [r4]
	ble	.L36	#7 units of power consumed
#------------------------------------
#30 units of power consumed in this block
#------------------------------------

.L37:
	mov	r2, #10
	mov	r1, #0
	add	r0, sp, #60	#3 units of power consumed
	bl	strtol	#7 units of power consumed
	ldrd	r8, [sp, #8]
	asr	r1, r0, #31
	mov	r2, r1
	cmp	r9, r1
	cmpeq	r8, r0
	moveq	r3, #1
	movne	r3, #0
	orrs	r2, r0, r2
	mov	r2, r9
	moveq	r3, #1
	orrs	r2, r7, r2
	moveq	r3, #1
	cmp	r3, #0
	mov	r6, r0
	strd	r0, [sp, #16]
	bne	.L56	#7 units of power consumed
	subs	r0, r8, #1
	sbc	r3, r9, #0
	ldrd	r8, [sp, #16]
	subs	r1, r8, #1
	sbc	r2, r9, #0
	mul	r2, r0, r2
	mla	r3, r1, r3, r2
	umull	r0, r1, r0, r1
	add	r3, r3, r1	#3 units of power consumed
	strd	r0, [sp, #32]
	str	r3, [sp, #36]
	ldrd	r10, [sp, #32]
	orrs	r3, r10, fp
	beq	.L56
	movw	r0, #257
	mov	r1, #0
	b	.L41	#7 units of power consumed
#------------------------------------
#27 units of power consumed in this block
#------------------------------------

.L46:
	mov	r10, r8
	mov	fp, r9
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.L41:
	mov	r2, r10
	mov	r3, fp
	bl	__aeabi_ldivmod	#7 units of power consumed
	mov	r8, r2
	mov	r9, r3
	orrs	r3, r8, r9
	mov	r0, r10
	mov	r1, fp
	bne	.L46	#7 units of power consumed
	cmp	fp, #0
	cmpeq	r10, #1
	bne	.L56	#7 units of power consumed
	ldrd	r4, [sp, #32]
	movw	r0, #257
	mov	ip, #0
	b	.L42	#7 units of power consumed
#------------------------------------
#28 units of power consumed in this block
#------------------------------------

.L47:
	mov	r8, r2
	mov	r9, r3
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.L42:
	mov	r1, ip
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_ldivmod	#7 units of power consumed
	mov	lr, r0
	mov	ip, r5
	mov	r0, r4
	mov	r5, r3
	mov	r4, r2
	mul	r3, lr, r9
	mla	r1, r1, r8, r3
	umull	r2, r3, lr, r8
	strd	r2, [sp, #24]
	add	r3, r1, r3	#3 units of power consumed
	str	r3, [sp, #28]
	ldr	r3, [sp, #24]
	subs	r2, r10, r3
	ldr	r3, [sp, #28]
	mov	r10, r8
	sbc	r3, fp, r3
	orrs	r1, r4, r5
	mov	fp, r9
	bne	.L47	#7 units of power consumed
	cmp	r8, #0
	sbcs	r3, r9, #0
	bge	.L43	#7 units of power consumed
	ldrd	r2, [sp, #32]
#------------------------------------
#24 units of power consumed in this block
#------------------------------------

.L44:
	adds	r8, r8, r2
	adc	r9, r9, r3
	cmp	r8, #0
	sbcs	r1, r9, #0
	blt	.L44
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.L43:
	ldrd	r2, [sp, #16]
	movw	r0, #:lower16:.LC2
	strd	r2, [sp]
	ldrd	r2, [sp, #8]
	movt	r0, #:upper16:.LC2
	bl	printf	#7 units of power consumed
	movw	r2, #257
	mov	r3, #0
	smull	r6, r7, r7, r6
	ldr	r1, [sp, #48]
	strd	r2, [r1, #8]
	ldr	r3, [sp, #52]
	strd	r6, [r1]
	strd	r6, [r3]
	strd	r8, [r3, #8]
	add	sp, sp, #116	#3 units of power consumed
	@ sp needed
	vldm	sp!, {d8-d10}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
#------------------------------------
#10 units of power consumed in this block
#------------------------------------

.L63:
	adds	r7, r6, #1
	adc	r3, r8, r3
	str	r3, [sp, #8]
	b	.L32	#7 units of power consumed
#------------------------------------
#7 units of power consumed in this block
#------------------------------------

.L62:
	movw	r3, #:lower16:stderr
	movw	r1, #:lower16:.LC1
	movt	r3, #:upper16:stderr
	mov	r2, r4
	ldr	r0, [r3]
	movt	r1, #:upper16:.LC1
	bl	fprintf	#7 units of power consumed
	mov	r0, #1
	bl	exit	#7 units of power consumed
#------------------------------------
#14 units of power consumed in this block
#------------------------------------

.L65:
	.align	3
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.L64:
	.word	0
	.word	1040187392
	.size	rsa_gen_keys, .-rsa_gen_keys
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
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	lsl	r4, r1, #3
	sub	sp, sp, #44	#3 units of power consumed
	mov	r5, r0
	mov	r0, r4
	mov	r8, r1
	mov	r7, r2
	bl	malloc	#7 units of power consumed
	subs	r6, r0, #0
	beq	.L67
	mov	r2, r8
	mov	r3, #0
	strd	r2, [sp, #24]
	orrs	r3, r2, r3
	beq	.L66
	ldrd	r10, [r7]
	ldrd	r2, [r7, #8]
	cmp	r10, #1
	sbcs	r1, fp, #0
	mov	r1, #0
	lsr	ip, r3, #31
	orrlt	ip, ip, #1
	ldrb	r0, [r5]	@ zero_extendqisi2
	cmp	ip, #0
	strd	r0, [sp, #32]
	bne	.L69	#7 units of power consumed
	orrs	r1, r2, r3
	lsr	r7, r2, #1
	and	r1, r2, #1	#1 units of power consumed
	str	r1, [sp, #8]
	str	r1, [sp, #16]
	str	ip, [sp, #12]
	str	ip, [sp, #20]
	orr	r7, r7, r3, lsl #31
	asr	r9, r3, #1
	beq	.L70
	ldrd	r0, [sp, #8]
	orrs	r1, r0, r1
	beq	.L71
	cmp	r3, #0
	cmpeq	r2, #1
	beq	.L72
	ldrd	r0, [sp, #16]
	orrs	r1, r0, r1
	bne	.L73	#7 units of power consumed
	ldrd	r2, [sp, #24]
	cmp	r3, #0
	cmpeq	r2, #1
	mov	r3, #0
	mov	r2, #0
	strd	r2, [r6]
	beq	.L66
	mov	r3, r6
	sub	r4, r4, #8	#3 units of power consumed
	add	r4, r4, r6	#3 units of power consumed
#------------------------------------
#31 units of power consumed in this block
#------------------------------------

.L75:
	mov	r0, #0
	mov	r1, #0
	strd	r0, [r3, #8]!
	cmp	r3, r4
	bne	.L75	#7 units of power consumed
#------------------------------------
#7 units of power consumed in this block
#------------------------------------

.L66:
	mov	r0, r6
	add	sp, sp, #44	#3 units of power consumed
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
#------------------------------------
#3 units of power consumed in this block
#------------------------------------

.L70:
	ldrd	r2, [sp, #24]
	cmp	r3, #0
	cmpeq	r2, #1
	mov	r3, #0
	mov	r2, #1
	strd	r2, [r6]
	beq	.L66
	mov	r1, r3
	mov	r0, r2
	mov	r3, r6
	sub	r4, r4, #8	#3 units of power consumed
	add	r4, r4, r6	#3 units of power consumed
#------------------------------------
#6 units of power consumed in this block
#------------------------------------

.L81:
	strd	r0, [r3, #8]!
	cmp	r3, r4
	bne	.L81	#7 units of power consumed
	mov	r0, r6
	add	sp, sp, #44	#3 units of power consumed
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
#------------------------------------
#10 units of power consumed in this block
#------------------------------------

.L71:
	cmp	r3, #0
	cmpeq	r2, #1
	beq	.L78
	ldrd	r0, [sp, #32]
	sub	r4, r4, #8	#3 units of power consumed
	add	r8, r6, r4	#3 units of power consumed
	sub	r4, r6, #8	#3 units of power consumed
	b	.L79	#7 units of power consumed
#------------------------------------
#16 units of power consumed in this block
#------------------------------------

.L102:
	mov	r1, #0
	ldrb	r0, [r5, #1]!	@ zero_extendqisi2
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.L79:
	mov	r2, r10
	mov	r3, fp
	bl	__aeabi_ldivmod	#7 units of power consumed
	mul	r3, r3, r2
	umull	r0, r1, r2, r2
	mov	r2, r10
	add	r1, r1, r3, lsl #1	#3 units of power consumed
	mov	r3, fp
	bl	__aeabi_ldivmod	#7 units of power consumed
	strd	r10, [sp]
	mov	r0, r2
	mov	r1, r3
	mov	r2, r7
	mov	r3, r9
	bl	rsa_modExp	#7 units of power consumed
	mov	r2, r10
	mov	r3, fp
	bl	__aeabi_ldivmod	#7 units of power consumed
	strd	r2, [r4, #8]!
	cmp	r4, r8
	bne	.L102	#7 units of power consumed
	b	.L66	#7 units of power consumed
#------------------------------------
#45 units of power consumed in this block
#------------------------------------

.L72:
	ldrd	r0, [sp, #32]
	mov	r2, r10
	mov	r3, fp
	bl	__aeabi_ldivmod	#7 units of power consumed
	ldrd	r0, [sp, #24]
	cmp	r1, #0
	cmpeq	r0, #1
	strd	r2, [r6]
	beq	.L66
	mov	r4, r6
	sub	r3, r5, #1	#3 units of power consumed
	add	r8, r3, r8	#3 units of power consumed
#------------------------------------
#13 units of power consumed in this block
#------------------------------------

.L77:
	ldrb	r0, [r5, #1]!	@ zero_extendqisi2
	mov	r2, r10
	mov	r3, fp
	mov	r1, #0
	bl	__aeabi_ldivmod	#7 units of power consumed
	cmp	r5, r8
	strd	r2, [r4, #8]!
	bne	.L77	#7 units of power consumed
	b	.L66	#7 units of power consumed
#------------------------------------
#21 units of power consumed in this block
#------------------------------------

.L67:
	movw	r3, #:lower16:stderr
	movw	r0, #:lower16:.LC3
	movt	r3, #:upper16:stderr
	ldr	r3, [r3]
	mov	r2, #31
	mov	r1, #1
	movt	r0, #:upper16:.LC3
	bl	fwrite	#7 units of power consumed
	b	.L66	#7 units of power consumed
#------------------------------------
#14 units of power consumed in this block
#------------------------------------

.L73:
	subs	r8, r2, #1
	ldrd	r0, [sp, #32]
	sub	r4, r4, #8	#3 units of power consumed
	sbc	r3, r3, #0
	add	r4, r6, r4	#3 units of power consumed
	str	r3, [sp, #8]
	sub	r9, r6, #8	#3 units of power consumed
	str	r6, [sp, #16]
	b	.L76	#7 units of power consumed
#------------------------------------
#16 units of power consumed in this block
#------------------------------------

.L103:
	mov	r1, #0
	ldrb	r0, [r5, #1]!	@ zero_extendqisi2
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.L76:
	mov	r2, r10
	mov	r3, fp
	bl	__aeabi_ldivmod	#7 units of power consumed
	strd	r10, [sp]
	mov	r6, r2
	mov	r7, r3
	mov	r0, r2
	mov	r1, r3
	mov	r2, r8
	ldr	r3, [sp, #8]
	bl	rsa_modExp	#7 units of power consumed
	mov	r3, r0
	mul	r2, r1, r6
	umull	r0, r1, r6, r0
	mla	r7, r3, r7, r2
	mov	r2, r10
	add	r1, r7, r1	#3 units of power consumed
	mov	r3, fp
	bl	__aeabi_ldivmod	#7 units of power consumed
	strd	r2, [r9, #8]!
	cmp	r4, r9
	bne	.L103	#7 units of power consumed
	ldr	r6, [sp, #16]
	b	.L66	#7 units of power consumed
#------------------------------------
#38 units of power consumed in this block
#------------------------------------

.L78:
	ldrd	r0, [sp, #32]
	mov	r2, r10
	mov	r3, fp
	bl	__aeabi_ldivmod	#7 units of power consumed
	ldrd	r0, [sp, #24]
	cmp	r1, #0
	cmpeq	r0, #1
	strd	r2, [r6]
	beq	.L66
	mov	r4, r6
	sub	r3, r5, #1	#3 units of power consumed
	add	r8, r3, r8	#3 units of power consumed
#------------------------------------
#13 units of power consumed in this block
#------------------------------------

.L80:
	ldrb	r0, [r5, #1]!	@ zero_extendqisi2
	mov	r2, r10
	mov	r3, fp
	mov	r1, #0
	bl	__aeabi_ldivmod	#7 units of power consumed
	cmp	r5, r8
	strd	r2, [r4, #8]!
	bne	.L80	#7 units of power consumed
	b	.L66	#7 units of power consumed
#------------------------------------
#21 units of power consumed in this block
#------------------------------------

.L69:
	mov	r0, #1
	bl	exit	#7 units of power consumed
	.size	rsa_encrypt, .-rsa_encrypt
	.align	2
	.global	rsa_decrypt
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	rsa_decrypt, %function
#------------------------------------
#7 units of power consumed in this block
#------------------------------------

rsa_decrypt:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ands	r10, r1, #7
	sub	sp, sp, #52	#3 units of power consumed
	bne	.L134	#7 units of power consumed
	lsr	r6, r1, #3
	mov	r9, r0
	mov	r0, r6
	mov	r4, r1
	mov	r5, r2
	bl	malloc	#7 units of power consumed
	mov	r8, r0
	mov	r0, r4
	bl	malloc	#7 units of power consumed
	cmp	r0, #0
	cmpne	r8, #0
	mov	r7, r0
	beq	.L107
	mov	r2, r6
	mov	r3, #0
	cmp	r6, #0
	strd	r2, [sp, #16]
	beq	.L125
	ldrd	r2, [r5]
	ldrd	r0, [r9]
	cmp	r2, #1
	strd	r2, [sp, #24]
	sbcs	r3, r3, #0
	ldrd	r2, [r5, #8]
	movlt	ip, #1
	movge	ip, #0
	orr	ip, ip, r3, lsr #31
	orrs	ip, ip, r1, lsr #31
	bne	.L111	#7 units of power consumed
	orrs	lr, r2, r3
	lsr	fp, r2, #1
	and	lr, r2, #1	#1 units of power consumed
	str	lr, [sp, #8]
	mov	r4, lr
	str	ip, [sp, #12]
	mov	r5, ip
	orr	fp, fp, r3, lsl #31
	asr	r10, r3, #1
	beq	.L112
	cmp	r3, #0
	cmpeq	r2, #1
	beq	.L113
	orrs	ip, r4, r5
	bne	.L114	#7 units of power consumed
	ldrd	r2, [sp, #8]
	orrs	r3, r2, r3
	beq	.L115
	ldrd	r10, [sp, #16]
	sub	r3, r7, #1	#3 units of power consumed
	b	.L118	#7 units of power consumed
#------------------------------------
#49 units of power consumed in this block
#------------------------------------

.L135:
	ldrd	r0, [r9, #8]!
	cmp	r0, #0
	sbcs	r2, r1, #0
	blt	.L111
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.L118:
	mov	r2, #0
	adds	r4, r4, #1
	adc	r5, r5, #0
	cmp	fp, r5
	cmpeq	r10, r4
	strb	r2, [r3, #1]!
	bne	.L135	#7 units of power consumed
#------------------------------------
#7 units of power consumed in this block
#------------------------------------

.L116:
	mov	r2, r6
	mov	r1, r7
	mov	r0, r8
	bl	memcpy	#7 units of power consumed
#------------------------------------
#7 units of power consumed in this block
#------------------------------------

.L125:
	mov	r0, r7
	bl	free	#7 units of power consumed
#------------------------------------
#7 units of power consumed in this block
#------------------------------------

.L104:
	mov	r0, r8
	add	sp, sp, #52	#3 units of power consumed
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
#------------------------------------
#3 units of power consumed in this block
#------------------------------------

.L112:
	mov	lr, #1
	ldrd	r4, [sp, #16]
	sub	ip, r7, #1	#3 units of power consumed
	b	.L110	#7 units of power consumed
#------------------------------------
#10 units of power consumed in this block
#------------------------------------

.L124:
	ldrd	r0, [r9, #8]!
	cmp	r0, #0
	sbcs	r1, r1, #0
	blt	.L111
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.L110:
	adds	r2, r2, #1
	adc	r3, r3, #0
	cmp	r3, r5
	cmpeq	r2, r4
	strb	lr, [ip, #1]!
	bne	.L124	#7 units of power consumed
	mov	r2, r6
	mov	r1, r7
	mov	r0, r8
	bl	memcpy	#7 units of power consumed
	b	.L125	#7 units of power consumed
#------------------------------------
#21 units of power consumed in this block
#------------------------------------

.L134:
	movw	r3, #:lower16:stderr
	movw	r1, #:lower16:.LC4
	mov	r8, #0
	movt	r3, #:upper16:stderr
	ldr	r0, [r3]
	movt	r1, #:upper16:.LC4
	mov	r2, #8
	bl	fprintf	#7 units of power consumed
	mov	r0, r8
	add	sp, sp, #52	#3 units of power consumed
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
#------------------------------------
#10 units of power consumed in this block
#------------------------------------

.L113:
	sub	r10, r7, #1	#3 units of power consumed
	mov	fp, r6
	str	r8, [sp, #8]
	mov	r4, #0
	mov	r8, r7
	ldrd	r6, [sp, #16]
	mov	r5, #0
	b	.L123	#7 units of power consumed
#------------------------------------
#10 units of power consumed in this block
#------------------------------------

.L136:
	ldrd	r0, [r9, #8]!
	cmp	r0, #0
	sbcs	r3, r1, #0
	blt	.L111
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.L123:
	ldrd	r2, [sp, #24]
	bl	__aeabi_ldivmod	#7 units of power consumed
	adds	r4, r4, #1
	adc	r5, r5, #0
	cmp	r7, r5
	cmpeq	r6, r4
	strb	r2, [r10, #1]!
	bne	.L136	#7 units of power consumed
	mov	r7, r8
	mov	r6, fp
	ldr	r8, [sp, #8]
	b	.L116	#7 units of power consumed
#------------------------------------
#21 units of power consumed in this block
#------------------------------------

.L107:
	movw	r3, #:lower16:stderr
	movw	r0, #:lower16:.LC3
	movt	r3, #:upper16:stderr
	ldr	r3, [r3]
	mov	r2, #31
	mov	r1, #1
	movt	r0, #:upper16:.LC3
	mov	r8, r10
	bl	fwrite	#7 units of power consumed
	b	.L104	#7 units of power consumed
#------------------------------------
#14 units of power consumed in this block
#------------------------------------

.L115:
	mov	r3, r9
	str	r6, [sp, #8]
	sub	r9, r7, #1	#3 units of power consumed
	str	r7, [sp, #32]
	ldrd	r6, [sp, #24]
	str	r8, [sp, #24]
	mov	r8, r3
	b	.L119	#7 units of power consumed
#------------------------------------
#10 units of power consumed in this block
#------------------------------------

.L137:
	ldrd	r0, [r8, #8]!
	cmp	r0, #0
	sbcs	r3, r1, #0
	blt	.L111
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.L119:
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_ldivmod	#7 units of power consumed
	mul	r3, r3, r2
	umull	r0, r1, r2, r2
	mov	r2, r6
	add	r1, r1, r3, lsl #1	#3 units of power consumed
	mov	r3, r7
	bl	__aeabi_ldivmod	#7 units of power consumed
	strd	r6, [sp]
	mov	r0, r2
	mov	r1, r3
	mov	r2, fp
	mov	r3, r10
	bl	rsa_modExp	#7 units of power consumed
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_ldivmod	#7 units of power consumed
	ldrd	r0, [sp, #16]
	adds	r4, r4, #1
	adc	r5, r5, #0
	cmp	r1, r5
	cmpeq	r0, r4
	strb	r2, [r9, #1]!
	bne	.L137	#7 units of power consumed
	ldr	r6, [sp, #8]
	ldr	r7, [sp, #32]
	ldr	r8, [sp, #24]
	b	.L116	#7 units of power consumed
#------------------------------------
#45 units of power consumed in this block
#------------------------------------

.L114:
	ldrd	r4, [sp, #8]
	orrs	ip, r4, r5
	beq	.L120
	subs	fp, r2, #1
	sbc	r3, r3, #0
	strd	r6, [sp, #36]
	sub	r5, r7, #1	#3 units of power consumed
	str	fp, [sp, #32]
	ldrd	r10, [sp, #24]
	str	r3, [sp, #8]
	mov	r6, #0
	mov	r7, #0
	str	r8, [sp, #44]
	b	.L121	#7 units of power consumed
#------------------------------------
#10 units of power consumed in this block
#------------------------------------

.L138:
	ldrd	r0, [r9, #8]!
	cmp	r0, #0
	sbcs	r3, r1, #0
	blt	.L111
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.L121:
	mov	r2, r10
	mov	r3, fp
	bl	__aeabi_ldivmod	#7 units of power consumed
	strd	r10, [sp]
	mov	r4, r2
	mov	r8, r3
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [sp, #32]
	ldr	r3, [sp, #8]
	bl	rsa_modExp	#7 units of power consumed
	mov	r3, r0
	mul	r2, r1, r4
	umull	r0, r1, r4, r0
	mla	r8, r3, r8, r2
	mov	r2, r10
	add	r1, r8, r1	#3 units of power consumed
	mov	r3, fp
	bl	__aeabi_ldivmod	#7 units of power consumed
	ldrd	r0, [sp, #16]
	adds	r6, r6, #1
	adc	r7, r7, #0
	cmp	r1, r7
	cmpeq	r0, r6
	strb	r2, [r5, #1]!
	bne	.L138	#7 units of power consumed
	ldrd	r6, [sp, #36]
	ldr	r8, [sp, #44]
	b	.L116	#7 units of power consumed
#------------------------------------
#38 units of power consumed in this block
#------------------------------------

.L120:
	sub	r3, r7, #1	#3 units of power consumed
	strd	r6, [sp, #32]
	ldrd	r6, [sp, #24]
	str	r3, [sp, #8]
	b	.L122	#7 units of power consumed
#------------------------------------
#10 units of power consumed in this block
#------------------------------------

.L139:
	ldrd	r0, [r9, #8]!
	cmp	r0, #0
	sbcs	r3, r1, #0
	blt	.L111
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.L122:
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_ldivmod	#7 units of power consumed
	mul	r3, r3, r2
	umull	r0, r1, r2, r2
	mov	r2, r6
	add	r1, r1, r3, lsl #1	#3 units of power consumed
	mov	r3, r7
	bl	__aeabi_ldivmod	#7 units of power consumed
	strd	r6, [sp]
	mov	r0, r2
	mov	r1, r3
	mov	r2, fp
	mov	r3, r10
	bl	rsa_modExp	#7 units of power consumed
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_ldivmod	#7 units of power consumed
	ldrd	r0, [sp, #16]
	adds	r4, r4, #1
	ldr	r3, [sp, #8]
	adc	r5, r5, #0
	cmp	r1, r5
	strb	r2, [r3, #1]!
	cmpeq	r0, r4
	str	r3, [sp, #8]
	bne	.L139	#7 units of power consumed
	ldrd	r6, [sp, #32]
	b	.L116	#7 units of power consumed
#------------------------------------
#45 units of power consumed in this block
#------------------------------------

.L111:
	mov	r0, #1
	bl	exit	#7 units of power consumed
	.size	rsa_decrypt, .-rsa_decrypt
	.global	j
	.comm	i,4,4
	.global	MAX_DIGITS
	.comm	buffer,1024,4
	.section	.rodata
	.align	2
	.type	MAX_DIGITS, %object
	.size	MAX_DIGITS, 4
#------------------------------------
#7 units of power consumed in this block
#------------------------------------

MAX_DIGITS:
	.word	50
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	j, %object
	.size	j, 4
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

j:
	.space	4
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.LC0:
	.ascii	"r\000"
	.space	2
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.LC1:
	.ascii	"Problem reading %s\012\000"
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.LC2:
	.ascii	"primes are %lld and %lld\012\000"
	.space	2
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.LC3:
	.ascii	"Error: Heap allocation failed.\012\000"
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.LC4:
	.ascii	"Error: message_size is not divisible by %d, so cann"
	.ascii	"ot be output of rsa_encrypt\012\000"
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
	.section	.note.GNU-stack,"",%progbits
