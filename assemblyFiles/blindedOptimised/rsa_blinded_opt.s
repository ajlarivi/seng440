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
	.file	"rsa_blinded.c"
	.text
	.global	__aeabi_ldivmod
	.align	2
	.global	gcd
	.arch armv7-a
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	gcd, %function
gcd:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	mov	r5, r1
	orrs	r1, r4, r5
	mov	r0, r2
	mov	r1, r3
	bne	.L3
	b	.L8
.L5:
	mov	r4, r2
	mov	r5, r3
.L3:
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_ldivmod
	orrs	r1, r2, r3
	mov	r0, r4
	mov	r1, r5
	bne	.L5
.L2:
	mov	r0, r4
	mov	r1, r5
	pop	{r4, r5, r6, pc}
.L8:
	mov	r4, r2
	mov	r5, r3
	b	.L2
	.size	gcd, .-gcd
	.align	2
	.global	ExtEuclid
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	ExtEuclid, %function
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
	b	.L11
.L13:
	mov	r6, lr
	mov	r7, ip
	mov	r8, r2
	mov	r9, r3
.L11:
	mov	r2, r8
	mov	r3, r9
	bl	__aeabi_ldivmod
	mul	ip, r0, r7
	umull	r4, r5, r0, r6
	mla	r1, r6, r1, ip
	subs	lr, r10, r4
	add	r5, r1, r5
	sbc	ip, fp, r5
	orrs	r1, r2, r3
	mov	r10, r6
	mov	fp, r7
	mov	r0, r8
	mov	r1, r9
	bne	.L13
.L9:
	mov	r0, r6
	mov	r1, r7
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L12:
	mov	r6, #1
	mov	r7, #0
	b	.L9
	.size	ExtEuclid, .-ExtEuclid
	.align	2
	.global	rsa_modExp
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	rsa_modExp, %function
rsa_modExp:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	sub	sp, sp, #8
	ldrd	r6, [sp, #40]
	cmp	r6, #1
	sbcs	ip, r7, #0
	mov	r5, r3
	movlt	r3, #1
	movge	r3, #0
	orr	r3, r3, r5, lsr #31
	orrs	r8, r3, r1, lsr #31
	bne	.L26
	mov	r4, r2
	orrs	r3, r4, r5
	beq	.L20
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_ldivmod
	cmp	r5, #0
	cmpeq	r4, #1
	mov	r9, r2
	mov	r10, r3
	mov	r0, r2
	mov	r1, r3
	beq	.L15
	mov	r3, r8
	and	r2, r4, #1
	orrs	r3, r2, r3
	beq	.L27
	mov	r3, r8
	and	r2, r4, #1
	orrs	r3, r2, r3
	bne	.L28
.L15:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L20:
	mov	r1, r8
	mov	r0, #1
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L27:
	umull	r0, r1, r9, r9
	mul	r10, r10, r9
	mov	r2, r6
	add	r1, r1, r10, lsl #1
	mov	r3, r7
	bl	__aeabi_ldivmod
	mov	r0, r2
	lsr	r2, r4, #1
	mov	r1, r3
	orr	r2, r2, r5, lsl #31
	asr	r3, r5, #1
	strd	r6, [sp]
	bl	rsa_modExp
.L25:
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_ldivmod
	mov	r0, r2
	mov	r1, r3
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L28:
	subs	r2, r4, #1
	sbc	r3, r5, #0
	strd	r6, [sp]
	bl	rsa_modExp
	mul	r10, r0, r10
	umull	r2, r3, r0, r9
	mla	r1, r1, r9, r10
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	b	.L25
.L26:
	mov	r0, #1
	bl	exit
	.size	rsa_modExp, .-rsa_modExp
	.global	__aeabi_l2d
	.align	2
	.global	rsa_gen_keys
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	rsa_gen_keys, %function
rsa_gen_keys:
	@ args = 0, pretend = 0, frame = 104
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	vpush.64	{d8, d9, d10}
	sub	sp, sp, #116
	str	r1, [sp, #52]
	movw	r1, #:lower16:.LC0
	str	r0, [sp, #48]
	movt	r1, #:upper16:.LC0
	mov	r0, r2
	mov	r4, r2
	bl	fopen
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
.L30:
	movw	r0, #:lower16:buffer
	mov	r3, r5
	movw	r2, #1023
	movt	r0, #:upper16:buffer
	mov	r1, #1
	bl	fread
	mov	r3, #0
	strb	r3, [r10, r0]
	ldrb	r2, [r10]	@ zero_extendqisi2
	str	r3, [r4]
	cmp	r2, r3
	movwne	r3, #:lower16:buffer
	movne	r10, fp
	movtne	r3, #:upper16:buffer
	beq	.L63
.L34:
	adds	r7, r6, #1
	adc	r1, r8, #0
	cmp	r2, #10
	bne	.L33
	adds	r0, r6, #2
	adc	r2, r8, #0
	mov	r6, r7
	mov	r8, r1
	mov	r7, r0
	mov	r1, r2
.L33:
	add	r0, r9, r3
	ldrb	r2, [r3, #1]!	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L34
	str	r1, [sp, #8]
	str	r0, [r4]
.L32:
	mov	r0, r5
	bl	feof
	cmp	r0, #0
	beq	.L30
	vldr.64	d9, .L64
	str	r7, [sp, #24]
	ldr	r7, [sp, #8]
	str	r7, [sp, #44]
.L56:
	bl	rand
	ldr	r1, [sp, #44]
	vmov	s16, r0	@ int
	ldr	r0, [sp, #24]
	bl	__aeabi_l2d
	vcvt.f64.s32	d7, s16
	vmov	d10, r0, r1
	vmul.f64	d7, d7, d10
	vmul.f64	d7, d7, d9
	vcvt.s32.f64	s15, d7
	vmov	r7, s15	@ int
	bl	rand
	vmov	s15, r0	@ int
	vcvt.f64.s32	d7, s15
	vmul.f64	d7, d7, d10
	vmul.f64	d7, d7, d9
	vcvt.s32.f64	s15, d7
	mov	r0, r5
	vmov	r6, s15	@ int
	bl	rewind
	mov	r3, #0
	cmp	r7, #0
	str	r3, [r4]
	blt	.L38
.L35:
	mov	r2, r5
	mov	r1, #49
	add	r0, sp, #60
	bl	fgets
	ldr	r3, [r4]
	add	r3, r3, #1
	cmp	r3, r7
	str	r3, [r4]
	ble	.L35
.L38:
	mov	r2, #10
	mov	r1, #0
	add	r0, sp, #60
	bl	strtol
	mov	r7, r0
	mov	r0, r5
	bl	rewind
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
.L36:
	mov	r2, #50
	mov	r1, #0
	add	r0, sp, #60
	bl	memset
	mov	r2, r5
	mov	r1, #49
	add	r0, sp, #60
	str	r9, [r8]
	bl	fgets
	ldr	r3, [r4]
	add	r3, r3, #1
	cmp	r3, r6
	str	r3, [r4]
	ble	.L36
.L37:
	mov	r2, #10
	mov	r1, #0
	add	r0, sp, #60
	bl	strtol
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
	bne	.L56
	subs	r0, r8, #1
	sbc	r3, r9, #0
	ldrd	r8, [sp, #16]
	subs	r1, r8, #1
	sbc	r2, r9, #0
	mul	r2, r0, r2
	mla	r3, r1, r3, r2
	umull	r0, r1, r0, r1
	add	r3, r3, r1
	strd	r0, [sp, #32]
	str	r3, [sp, #36]
	ldrd	r10, [sp, #32]
	orrs	r3, r10, fp
	beq	.L56
	movw	r0, #257
	mov	r1, #0
	b	.L41
.L46:
	mov	r10, r8
	mov	fp, r9
.L41:
	mov	r2, r10
	mov	r3, fp
	bl	__aeabi_ldivmod
	mov	r8, r2
	mov	r9, r3
	orrs	r3, r8, r9
	mov	r0, r10
	mov	r1, fp
	bne	.L46
	cmp	fp, #0
	cmpeq	r10, #1
	bne	.L56
	ldrd	r4, [sp, #32]
	movw	r0, #257
	mov	ip, #0
	b	.L42
.L47:
	mov	r8, r2
	mov	r9, r3
.L42:
	mov	r1, ip
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_ldivmod
	mov	lr, r0
	mov	ip, r5
	mov	r0, r4
	mov	r5, r3
	mov	r4, r2
	mul	r3, lr, r9
	mla	r1, r1, r8, r3
	umull	r2, r3, lr, r8
	strd	r2, [sp, #24]
	add	r3, r1, r3
	str	r3, [sp, #28]
	ldr	r3, [sp, #24]
	subs	r2, r10, r3
	ldr	r3, [sp, #28]
	mov	r10, r8
	sbc	r3, fp, r3
	orrs	r1, r4, r5
	mov	fp, r9
	bne	.L47
	cmp	r8, #0
	sbcs	r3, r9, #0
	bge	.L43
	ldrd	r2, [sp, #32]
.L44:
	adds	r8, r8, r2
	adc	r9, r9, r3
	cmp	r8, #0
	sbcs	r1, r9, #0
	blt	.L44
.L43:
	ldrd	r2, [sp, #16]
	movw	r0, #:lower16:.LC2
	strd	r2, [sp]
	ldrd	r2, [sp, #8]
	movt	r0, #:upper16:.LC2
	bl	printf
	movw	r2, #257
	mov	r3, #0
	smull	r6, r7, r7, r6
	ldr	r1, [sp, #48]
	strd	r2, [r1, #8]
	ldr	r3, [sp, #52]
	strd	r6, [r1]
	strd	r6, [r3]
	strd	r8, [r3, #8]
	add	sp, sp, #116
	@ sp needed
	vldm	sp!, {d8-d10}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L63:
	adds	r7, r6, #1
	adc	r3, r8, r3
	str	r3, [sp, #8]
	b	.L32
.L62:
	movw	r3, #:lower16:stderr
	movw	r1, #:lower16:.LC1
	movt	r3, #:upper16:stderr
	mov	r2, r4
	ldr	r0, [r3]
	movt	r1, #:upper16:.LC1
	bl	fprintf
	mov	r0, #1
	bl	exit
.L65:
	.align	3
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
rsa_encrypt:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	lsl	r4, r1, #3
	sub	sp, sp, #44
	mov	r5, r0
	mov	r0, r4
	mov	r8, r1
	mov	r7, r2
	bl	malloc
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
	bne	.L69
	orrs	r1, r2, r3
	lsr	r7, r2, #1
	and	r1, r2, #1
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
	bne	.L73
	ldrd	r2, [sp, #24]
	cmp	r3, #0
	cmpeq	r2, #1
	mov	r3, #0
	mov	r2, #0
	strd	r2, [r6]
	beq	.L66
	mov	r3, r6
	sub	r4, r4, #8
	add	r4, r4, r6
.L75:
	mov	r0, #0
	mov	r1, #0
	strd	r0, [r3, #8]!
	cmp	r3, r4
	bne	.L75
.L66:
	mov	r0, r6
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
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
	sub	r4, r4, #8
	add	r4, r4, r6
.L81:
	strd	r0, [r3, #8]!
	cmp	r3, r4
	bne	.L81
	mov	r0, r6
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L71:
	cmp	r3, #0
	cmpeq	r2, #1
	beq	.L78
	ldrd	r0, [sp, #32]
	sub	r4, r4, #8
	add	r8, r6, r4
	sub	r4, r6, #8
	b	.L79
.L102:
	mov	r1, #0
	ldrb	r0, [r5, #1]!	@ zero_extendqisi2
.L79:
	mov	r2, r10
	mov	r3, fp
	bl	__aeabi_ldivmod
	mul	r3, r3, r2
	umull	r0, r1, r2, r2
	mov	r2, r10
	add	r1, r1, r3, lsl #1
	mov	r3, fp
	bl	__aeabi_ldivmod
	strd	r10, [sp]
	mov	r0, r2
	mov	r1, r3
	mov	r2, r7
	mov	r3, r9
	bl	rsa_modExp
	mov	r2, r10
	mov	r3, fp
	bl	__aeabi_ldivmod
	strd	r2, [r4, #8]!
	cmp	r4, r8
	bne	.L102
	b	.L66
.L72:
	ldrd	r0, [sp, #32]
	mov	r2, r10
	mov	r3, fp
	bl	__aeabi_ldivmod
	ldrd	r0, [sp, #24]
	cmp	r1, #0
	cmpeq	r0, #1
	strd	r2, [r6]
	beq	.L66
	mov	r4, r6
	sub	r3, r5, #1
	add	r8, r3, r8
.L77:
	ldrb	r0, [r5, #1]!	@ zero_extendqisi2
	mov	r2, r10
	mov	r3, fp
	mov	r1, #0
	bl	__aeabi_ldivmod
	cmp	r5, r8
	strd	r2, [r4, #8]!
	bne	.L77
	b	.L66
.L67:
	movw	r3, #:lower16:stderr
	movw	r0, #:lower16:.LC3
	movt	r3, #:upper16:stderr
	ldr	r3, [r3]
	mov	r2, #31
	mov	r1, #1
	movt	r0, #:upper16:.LC3
	bl	fwrite
	b	.L66
.L73:
	subs	r8, r2, #1
	ldrd	r0, [sp, #32]
	sub	r4, r4, #8
	sbc	r3, r3, #0
	add	r4, r6, r4
	str	r3, [sp, #8]
	sub	r9, r6, #8
	str	r6, [sp, #16]
	b	.L76
.L103:
	mov	r1, #0
	ldrb	r0, [r5, #1]!	@ zero_extendqisi2
.L76:
	mov	r2, r10
	mov	r3, fp
	bl	__aeabi_ldivmod
	strd	r10, [sp]
	mov	r6, r2
	mov	r7, r3
	mov	r0, r2
	mov	r1, r3
	mov	r2, r8
	ldr	r3, [sp, #8]
	bl	rsa_modExp
	mov	r3, r0
	mul	r2, r1, r6
	umull	r0, r1, r6, r0
	mla	r7, r3, r7, r2
	mov	r2, r10
	add	r1, r7, r1
	mov	r3, fp
	bl	__aeabi_ldivmod
	strd	r2, [r9, #8]!
	cmp	r4, r9
	bne	.L103
	ldr	r6, [sp, #16]
	b	.L66
.L78:
	ldrd	r0, [sp, #32]
	mov	r2, r10
	mov	r3, fp
	bl	__aeabi_ldivmod
	ldrd	r0, [sp, #24]
	cmp	r1, #0
	cmpeq	r0, #1
	strd	r2, [r6]
	beq	.L66
	mov	r4, r6
	sub	r3, r5, #1
	add	r8, r3, r8
.L80:
	ldrb	r0, [r5, #1]!	@ zero_extendqisi2
	mov	r2, r10
	mov	r3, fp
	mov	r1, #0
	bl	__aeabi_ldivmod
	cmp	r5, r8
	strd	r2, [r4, #8]!
	bne	.L80
	b	.L66
.L69:
	mov	r0, #1
	bl	exit
	.size	rsa_encrypt, .-rsa_encrypt
	.align	2
	.global	getRandom
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	getRandom, %function
getRandom:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r5, r0
	mov	r4, r2
	mov	r7, r1
	mov	r6, r3
	bl	rand
	subs	r2, r4, r5
	sbc	r3, r6, r7
	adds	r2, r2, #1
	adc	r3, r3, #0
	asr	r1, r0, #31
	bl	__aeabi_ldivmod
	adds	r0, r2, r5
	adc	r1, r3, r7
	pop	{r4, r5, r6, r7, r8, pc}
	.size	getRandom, .-getRandom
	.align	2
	.global	rsa_decrypt
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	rsa_decrypt, %function
rsa_decrypt:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ands	r4, r1, #7
	sub	sp, sp, #76
	str	r2, [sp, #16]
	str	r3, [sp, #56]
	bne	.L124
	lsr	r5, r1, #3
	mov	fp, r0
	mov	r0, r5
	mov	r6, r1
	str	r5, [sp, #68]
	bl	malloc
	mov	r7, r0
	str	r0, [sp, #64]
	mov	r0, r6
	bl	malloc
	cmp	r0, #0
	cmpne	r7, #0
	str	r0, [sp, #60]
	beq	.L109
	mov	r2, r5
	mov	r3, #0
	cmp	r5, #0
	strd	r2, [sp, #48]
	beq	.L111
	mov	r3, #0
	mov	r2, #0
	strd	r2, [sp, #8]
	ldr	r3, [sp, #60]
	sub	fp, fp, #8
	sub	r3, r3, #1
	str	r3, [sp, #20]
	mov	r8, fp
	b	.L115
.L129:
	mov	r2, r10
	mov	r3, fp
	mov	r0, r9
	mov	r1, r5
	bl	__aeabi_ldivmod
	cmp	r7, #0
	cmpeq	r6, #1
	mov	r1, r2
	mov	ip, r3
	beq	.L117
	and	r3, r6, #1
	str	r3, [sp, #32]
	str	r4, [sp, #36]
	ldrd	r2, [sp, #32]
	orrs	r3, r2, r3
	beq	.L125
	and	r3, r6, #1
	str	r3, [sp, #40]
	str	r4, [sp, #44]
	ldrd	r2, [sp, #40]
	orrs	r3, r2, r3
	bne	.L126
.L113:
	ldr	r0, [r8, #8]!
	ldr	r1, [sp, #24]
	ldr	ip, [r8, #4]
	ldr	lr, [sp, #28]
	mul	ip, r1, ip
	mla	ip, lr, r0, ip
	umull	r0, r1, r0, r1
	ldr	lr, [sp, #16]
	add	r1, ip, r1
	mov	r2, r10
	ldrd	r6, [lr, #8]
	mov	r3, fp
	bl	__aeabi_ldivmod
	strd	r10, [sp]
	mov	r0, r2
	mov	r1, r3
	mov	r2, r6
	mov	r3, r7
	bl	rsa_modExp
	mov	r3, r5
	mov	r2, r9
	bl	__aeabi_ldivmod
	mov	r2, r10
	mov	r3, fp
	bl	__aeabi_ldivmod
	ldrd	r4, [sp, #48]
	ldr	r3, [sp, #8]
	adds	r3, r3, #1
	str	r3, [sp, #8]
	ldr	r3, [sp, #12]
	adc	r3, r3, #0
	str	r3, [sp, #12]
	ldr	r3, [sp, #20]
	ldrd	r0, [sp, #8]
	cmp	r1, r5
	strb	r2, [r3, #1]!
	cmpeq	r0, r4
	str	r3, [sp, #20]
	beq	.L127
.L115:
	bl	rand
	movw	r2, #5000
	mov	r3, #0
	asr	r1, r0, #31
	bl	__aeabi_ldivmod
	ldr	r1, [sp, #16]
	adds	r9, r2, #1
	ldrd	r10, [r1]
	adc	r5, r3, #0
	cmp	r10, #1
	sbcs	r3, fp, #0
	movlt	r4, #1
	movge	r4, #0
	ldr	r1, [sp, #56]
	ldrd	r6, [r1, #8]
	orr	r4, r4, r7, lsr #31
	orrs	r4, r4, r5, lsr #31
	bne	.L128
	orrs	r3, r6, r7
	bne	.L129
	mov	r3, #1
	str	r4, [sp, #28]
	str	r3, [sp, #24]
	b	.L113
.L117:
	str	r2, [sp, #24]
	str	ip, [sp, #28]
	b	.L113
.L127:
	ldr	r2, [sp, #68]
	ldr	r1, [sp, #60]
	ldr	r0, [sp, #64]
	bl	memcpy
.L111:
	ldr	r0, [sp, #60]
	bl	free
.L106:
	ldr	r0, [sp, #64]
	add	sp, sp, #76
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L125:
	mul	r3, ip, r1
	umull	r0, r1, r1, r1
	mov	r2, r10
	add	r1, r1, r3, lsl #1
	mov	r3, fp
	bl	__aeabi_ldivmod
	mov	r0, r2
	lsr	r2, r6, #1
	mov	r1, r3
	orr	r2, r2, r7, lsl #31
	asr	r3, r7, #1
	strd	r10, [sp]
	bl	rsa_modExp
.L123:
	mov	r2, r10
	mov	r3, fp
	bl	__aeabi_ldivmod
	strd	r2, [sp, #24]
	b	.L113
.L126:
	subs	r2, r6, #1
	mov	r4, r1
	sbc	r3, r7, #0
	mov	r0, r1
	strd	r10, [sp]
	mov	r1, ip
	mov	r6, ip
	bl	rsa_modExp
	mov	r3, r0
	mul	r2, r1, r4
	umull	r0, r1, r4, r3
	mla	r3, r3, r6, r2
	add	r1, r3, r1
	b	.L123
.L124:
	movw	r3, #:lower16:stderr
	movw	r1, #:lower16:.LC4
	movt	r3, #:upper16:stderr
	ldr	r0, [r3]
	movt	r1, #:upper16:.LC4
	mov	r2, #8
	bl	fprintf
	mov	r3, #0
	str	r3, [sp, #64]
	ldr	r0, [sp, #64]
	add	sp, sp, #76
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L109:
	movw	r3, #:lower16:stderr
	movw	r0, #:lower16:.LC3
	movt	r3, #:upper16:stderr
	ldr	r3, [r3]
	mov	r2, #31
	mov	r1, #1
	movt	r0, #:upper16:.LC3
	str	r4, [sp, #64]
	bl	fwrite
	b	.L106
.L128:
	mov	r0, #1
	bl	exit
	.size	rsa_decrypt, .-rsa_decrypt
	.global	j
	.comm	i,4,4
	.global	MAX_DIGITS
	.comm	buffer,1024,4
	.section	.rodata
	.align	2
	.type	MAX_DIGITS, %object
	.size	MAX_DIGITS, 4
MAX_DIGITS:
	.word	50
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	j, %object
	.size	j, 4
j:
	.space	4
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"r\000"
	.space	2
.LC1:
	.ascii	"Problem reading %s\012\000"
.LC2:
	.ascii	"primes are %lld and %lld\012\000"
	.space	2
.LC3:
	.ascii	"Error: Heap allocation failed.\012\000"
.LC4:
	.ascii	"Error: message_size is not divisible by %d, so cann"
	.ascii	"ot be output of rsa_encrypt\012\000"
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
	.section	.note.GNU-stack,"",%progbits
