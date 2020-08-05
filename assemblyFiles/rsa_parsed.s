#======================================
#======================================
#473 units of power consumed for this file
#======================================
#======================================

	.file	"rsa.c"
	.comm	buffer,1024,32
	.globl	MAX_DIGITS
	.section	.rodata
	.align 4
	.type	MAX_DIGITS, @object
	.size	MAX_DIGITS, 4
MAX_DIGITS:
	.long	50
	.comm	i,4,4
	.globl	j
	.bss
	.align 4
	.type	j, @object
	.size	j, 4
j:
	.zero	4
	.text
	.globl	gcd
	.type	gcd, @function
gcd:
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#1 units of power consumed
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	#1 units of power consumed
	movq	%rsi, -32(%rbp)	#1 units of power consumed
	jmp	.L2
#------------------------------------
#3 units of power consumed in this block
#------------------------------------

.L3:
	movq	-24(%rbp), %rax	#1 units of power consumed
	movq	%rax, -8(%rbp)	#1 units of power consumed
	movq	-32(%rbp), %rax	#1 units of power consumed
	cqto
	idivq	-24(%rbp)	#6 units of power consumed
	movq	%rdx, -24(%rbp)	#1 units of power consumed
	movq	-8(%rbp), %rax	#1 units of power consumed
	movq	%rax, -32(%rbp)	#1 units of power consumed
#------------------------------------
#12 units of power consumed in this block
#------------------------------------

.L2:
	cmpq	$0, -24(%rbp)
	jne	.L3
	movq	-32(%rbp), %rax	#1 units of power consumed
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
#------------------------------------
#1 units of power consumed in this block
#------------------------------------

.LFE2:
	.size	gcd, .-gcd
	.globl	ExtEuclid
	.type	ExtEuclid, @function
ExtEuclid:
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#1 units of power consumed
	.cfi_def_cfa_register 6
	movq	%rdi, -88(%rbp)	#1 units of power consumed
	movq	%rsi, -96(%rbp)	#1 units of power consumed
	movq	$0, -72(%rbp)	#1 units of power consumed
	movq	$1, -64(%rbp)	#1 units of power consumed
	movq	$1, -56(%rbp)	#1 units of power consumed
	movq	$0, -48(%rbp)	#1 units of power consumed
	movq	-96(%rbp), %rax	#1 units of power consumed
	movq	%rax, -40(%rbp)	#1 units of power consumed
	jmp	.L6
#------------------------------------
#9 units of power consumed in this block
#------------------------------------

.L7:
	movq	-40(%rbp), %rax	#1 units of power consumed
	cqto
	idivq	-88(%rbp)	#6 units of power consumed
	movq	%rax, -32(%rbp)	#1 units of power consumed
	movq	-40(%rbp), %rax	#1 units of power consumed
	cqto
	idivq	-88(%rbp)	#6 units of power consumed
	movq	%rdx, -24(%rbp)	#1 units of power consumed
	movq	-56(%rbp), %rax	#1 units of power consumed
	imulq	-32(%rbp), %rax	#6 units of power consumed
	movq	-72(%rbp), %rdx	#1 units of power consumed
	subq	%rax, %rdx	#3 units of power consumed
	movq	%rdx, %rax	#1 units of power consumed
	movq	%rax, -16(%rbp)	#1 units of power consumed
	movq	-48(%rbp), %rax	#1 units of power consumed
	imulq	-32(%rbp), %rax	#6 units of power consumed
	movq	-64(%rbp), %rdx	#1 units of power consumed
	subq	%rax, %rdx	#3 units of power consumed
	movq	%rdx, %rax	#1 units of power consumed
	movq	%rax, -8(%rbp)	#1 units of power consumed
	movq	-88(%rbp), %rax	#1 units of power consumed
	movq	%rax, -40(%rbp)	#1 units of power consumed
	movq	-24(%rbp), %rax	#1 units of power consumed
	movq	%rax, -88(%rbp)	#1 units of power consumed
	movq	-56(%rbp), %rax	#1 units of power consumed
	movq	%rax, -72(%rbp)	#1 units of power consumed
	movq	-48(%rbp), %rax	#1 units of power consumed
	movq	%rax, -64(%rbp)	#1 units of power consumed
	movq	-16(%rbp), %rax	#1 units of power consumed
	movq	%rax, -56(%rbp)	#1 units of power consumed
	movq	-8(%rbp), %rax	#1 units of power consumed
	movq	%rax, -48(%rbp)	#1 units of power consumed
#------------------------------------
#54 units of power consumed in this block
#------------------------------------

.L6:
	cmpq	$0, -88(%rbp)
	jne	.L7
	movq	-64(%rbp), %rax	#1 units of power consumed
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
#------------------------------------
#1 units of power consumed in this block
#------------------------------------

.LFE3:
	.size	ExtEuclid, .-ExtEuclid
	.globl	rsa_modExp
	.type	rsa_modExp, @function
rsa_modExp:
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#1 units of power consumed
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#3 units of power consumed
	movq	%rdi, -8(%rbp)	#1 units of power consumed
	movq	%rsi, -16(%rbp)	#1 units of power consumed
	movq	%rdx, -24(%rbp)	#1 units of power consumed
	cmpq	$0, -8(%rbp)
	js	.L10
	cmpq	$0, -16(%rbp)
	js	.L10
	cmpq	$0, -24(%rbp)
	jg	.L11
#------------------------------------
#7 units of power consumed in this block
#------------------------------------

.L10:
	movl	$1, %edi	#1 units of power consumed
	call	exit
#------------------------------------
#1 units of power consumed in this block
#------------------------------------

.L11:
	movq	-8(%rbp), %rax	#1 units of power consumed
	cqto
	idivq	-24(%rbp)	#6 units of power consumed
	movq	%rdx, -8(%rbp)	#1 units of power consumed
	cmpq	$0, -16(%rbp)
	jne	.L12
	movl	$1, %eax	#1 units of power consumed
	jmp	.L9
#------------------------------------
#9 units of power consumed in this block
#------------------------------------

.L12:
	cmpq	$1, -16(%rbp)
	jne	.L14
	movq	-8(%rbp), %rax	#1 units of power consumed
	jmp	.L9
#------------------------------------
#1 units of power consumed in this block
#------------------------------------

.L14:
	movq	-16(%rbp), %rax	#1 units of power consumed
	andl	$1, %eax
	testq	%rax, %rax
	jne	.L15
	movq	-16(%rbp), %rax	#1 units of power consumed
	movq	%rax, %rdx	#1 units of power consumed
	shrq	$63, %rdx
	addq	%rdx, %rax	#3 units of power consumed
	sarq	%rax
	movq	%rax, %rsi	#1 units of power consumed
	movq	-8(%rbp), %rax	#1 units of power consumed
	imulq	-8(%rbp), %rax	#6 units of power consumed
	cqto
	idivq	-24(%rbp)	#6 units of power consumed
	movq	%rdx, %rcx	#1 units of power consumed
	movq	-24(%rbp), %rax	#1 units of power consumed
	movq	%rax, %rdx	#1 units of power consumed
	movq	%rcx, %rdi	#1 units of power consumed
	call	rsa_modExp
	cqto
	idivq	-24(%rbp)	#6 units of power consumed
	movq	%rdx, %rax	#1 units of power consumed
	jmp	.L9
#------------------------------------
#31 units of power consumed in this block
#------------------------------------

.L15:
	movq	-16(%rbp), %rax	#1 units of power consumed
	cqto
	shrq	$63, %rdx
	addq	%rdx, %rax	#3 units of power consumed
	andl	$1, %eax
	subq	%rdx, %rax	#3 units of power consumed
	cmpq	$1, %rax
	jne	.L16
	movq	-16(%rbp), %rax	#1 units of power consumed
	leaq	-1(%rax), %rcx
	movq	-24(%rbp), %rdx	#1 units of power consumed
	movq	-8(%rbp), %rax	#1 units of power consumed
	movq	%rcx, %rsi	#1 units of power consumed
	movq	%rax, %rdi	#1 units of power consumed
	call	rsa_modExp
	imulq	-8(%rbp), %rax	#6 units of power consumed
	cqto
	idivq	-24(%rbp)	#6 units of power consumed
	movq	%rdx, %rax	#1 units of power consumed
	jmp	.L9
#------------------------------------
#25 units of power consumed in this block
#------------------------------------

.L16:
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.LFE4:
	.size	rsa_modExp, .-rsa_modExp
	.section	.rodata
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.LC0:
	.string	"r"
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.LC1:
	.string	"Problem reading %s\n"
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.LC3:
	.string	"primes are %lld and %lld\n"
	.text
	.globl	rsa_gen_keys
	.type	rsa_gen_keys, @function
	add 	$1, 1 #dummy instruction test
rsa_gen_keys:
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#1 units of power consumed
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$152, %rsp	#3 units of power consumed
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -168(%rbp)	#1 units of power consumed
	movq	%rsi, -176(%rbp)	#1 units of power consumed
	movq	%rdx, -184(%rbp)	#1 units of power consumed
	movq	%fs:40, %rax	#1 units of power consumed
	movq	%rax, -56(%rbp)	#1 units of power consumed
	xorl	%eax, %eax
	movq	-184(%rbp), %rax	#1 units of power consumed
	movl	$.LC0, %esi	#1 units of power consumed
	movq	%rax, %rdi	#1 units of power consumed
	call	fopen
	movq	%rax, -120(%rbp)	#1 units of power consumed
	cmpq	$0, -120(%rbp)
	jne	.L18
	movq	stderr(%rip), %rax	#1 units of power consumed
	movq	-184(%rbp), %rdx	#1 units of power consumed
	movl	$.LC1, %esi	#1 units of power consumed
	movq	%rax, %rdi	#1 units of power consumed
	movl	$0, %eax	#1 units of power consumed
	call	fprintf
	movl	$1, %edi	#1 units of power consumed
	call	exit
#------------------------------------
#19 units of power consumed in this block
#------------------------------------

.L18:
	movq	$0, -136(%rbp)	#1 units of power consumed
#------------------------------------
#1 units of power consumed in this block
#------------------------------------

.L22:
	movq	-120(%rbp), %rax	#1 units of power consumed
	movq	%rax, %rcx	#1 units of power consumed
	movl	$1023, %edx	#1 units of power consumed
	movl	$1, %esi	#1 units of power consumed
	movl	$buffer, %edi	#1 units of power consumed
	call	fread
	movl	%eax, -148(%rbp)	#1 units of power consumed
	movl	-148(%rbp), %eax	#1 units of power consumed
	cltq
	movb	$0, buffer(%rax)
	movl	$0, i(%rip)	#1 units of power consumed
	jmp	.L19
#------------------------------------
#8 units of power consumed in this block
#------------------------------------

.L21:
	movl	i(%rip), %eax	#1 units of power consumed
	cltq
	movzbl	buffer(%rax), %eax
	cmpb	$10, %al
	jne	.L20
	addq	$1, -136(%rbp)	#3 units of power consumed
#------------------------------------
#4 units of power consumed in this block
#------------------------------------

.L20:
	movl	i(%rip), %eax	#1 units of power consumed
	addl	$1, %eax	#3 units of power consumed
	movl	%eax, i(%rip)	#1 units of power consumed
#------------------------------------
#5 units of power consumed in this block
#------------------------------------

.L19:
	movl	i(%rip), %eax	#1 units of power consumed
	cltq
	movzbl	buffer(%rax), %eax
	testb	%al, %al
	jne	.L21
	movq	-120(%rbp), %rax	#1 units of power consumed
	movq	%rax, %rdi	#1 units of power consumed
	call	feof
	testl	%eax, %eax
	je	.L22
	movq	$0, -112(%rbp)	#1 units of power consumed
	movq	$0, -104(%rbp)	#1 units of power consumed
	movq	$257, -96(%rbp)	#1 units of power consumed
	movq	$0, -128(%rbp)	#1 units of power consumed
	movq	%rsp, %rax	#1 units of power consumed
	movq	%rax, %rbx	#1 units of power consumed
	movl	$50, %eax	#1 units of power consumed
	cltq
	subq	$1, %rax	#3 units of power consumed
	movq	%rax, -88(%rbp)	#1 units of power consumed
	movl	$50, %eax	#1 units of power consumed
	cltq
	movq	%rax, %r14	#1 units of power consumed
	movl	$0, %r15d	#1 units of power consumed
	movl	$50, %eax	#1 units of power consumed
	cltq
	movq	%rax, %r12	#1 units of power consumed
	movl	$0, %r13d	#1 units of power consumed
	movl	$50, %eax	#1 units of power consumed
	cltq
	movl	$16, %edx	#1 units of power consumed
	subq	$1, %rdx	#3 units of power consumed
	addq	%rdx, %rax	#3 units of power consumed
	movl	$16, %ecx	#1 units of power consumed
	movl	$0, %edx	#1 units of power consumed
	divq	%rcx	#6 units of power consumed
	imulq	$16, %rax, %rax	#6 units of power consumed
	subq	%rax, %rsp	#3 units of power consumed
	movq	%rsp, %rax	#1 units of power consumed
	addq	$0, %rax	#3 units of power consumed
	movq	%rax, -80(%rbp)	#1 units of power consumed
	movq	$0, -72(%rbp)	#1 units of power consumed
	movq	$0, -64(%rbp)	#1 units of power consumed
	movl	$0, %edi	#1 units of power consumed
	call	time
	movl	%eax, %edi	#1 units of power consumed
	call	srand
#------------------------------------
#54 units of power consumed in this block
#------------------------------------

.L29:
	call	rand
	pxor	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	movq	-136(%rbp), %rax	#1 units of power consumed
	addq	$1, %rax	#3 units of power consumed
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	.LC2(%rip), %xmm1
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -144(%rbp)	#1 units of power consumed
	call	rand
	pxor	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	movq	-136(%rbp), %rax	#1 units of power consumed
	addq	$1, %rax	#3 units of power consumed
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	.LC2(%rip), %xmm1
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -140(%rbp)	#1 units of power consumed
	movq	-120(%rbp), %rax	#1 units of power consumed
	movq	%rax, %rdi	#1 units of power consumed
	call	rewind
	movl	$0, i(%rip)	#1 units of power consumed
	jmp	.L23
#------------------------------------
#13 units of power consumed in this block
#------------------------------------

.L24:
	movl	$50, %eax	#1 units of power consumed
	subl	$1, %eax	#3 units of power consumed
	movl	%eax, %ecx	#1 units of power consumed
	movq	-80(%rbp), %rax	#1 units of power consumed
	movq	-120(%rbp), %rdx	#1 units of power consumed
	movl	%ecx, %esi	#1 units of power consumed
	movq	%rax, %rdi	#1 units of power consumed
	call	fgets
	movl	i(%rip), %eax	#1 units of power consumed
	addl	$1, %eax	#3 units of power consumed
	movl	%eax, i(%rip)	#1 units of power consumed
#------------------------------------
#14 units of power consumed in this block
#------------------------------------

.L23:
	movl	-144(%rbp), %eax	#1 units of power consumed
	leal	1(%rax), %edx
	movl	i(%rip), %eax	#1 units of power consumed
	cmpl	%eax, %edx
	jg	.L24
	movq	-80(%rbp), %rax	#1 units of power consumed
	movq	%rax, %rdi	#1 units of power consumed
	call	atol
	movq	%rax, -112(%rbp)	#1 units of power consumed
	movq	-120(%rbp), %rax	#1 units of power consumed
	movq	%rax, %rdi	#1 units of power consumed
	call	rewind
	movl	$0, i(%rip)	#1 units of power consumed
	jmp	.L25
#------------------------------------
#8 units of power consumed in this block
#------------------------------------

.L28:
	movl	$0, j(%rip)	#1 units of power consumed
	jmp	.L26
#------------------------------------
#1 units of power consumed in this block
#------------------------------------

.L27:
	movl	j(%rip), %eax	#1 units of power consumed
	movq	-80(%rbp), %rdx	#1 units of power consumed
	cltq
	movb	$0, (%rdx,%rax)
	movl	j(%rip), %eax	#1 units of power consumed
	addl	$1, %eax	#3 units of power consumed
	movl	%eax, j(%rip)	#1 units of power consumed
#------------------------------------
#7 units of power consumed in this block
#------------------------------------

.L26:
	movl	j(%rip), %eax	#1 units of power consumed
	movl	$50, %edx	#1 units of power consumed
	cmpl	%edx, %eax
	jl	.L27
	movl	$50, %eax	#1 units of power consumed
	subl	$1, %eax	#3 units of power consumed
	movl	%eax, %ecx	#1 units of power consumed
	movq	-80(%rbp), %rax	#1 units of power consumed
	movq	-120(%rbp), %rdx	#1 units of power consumed
	movl	%ecx, %esi	#1 units of power consumed
	movq	%rax, %rdi	#1 units of power consumed
	call	fgets
	movl	i(%rip), %eax	#1 units of power consumed
	addl	$1, %eax	#3 units of power consumed
	movl	%eax, i(%rip)	#1 units of power consumed
#------------------------------------
#16 units of power consumed in this block
#------------------------------------

.L25:
	movl	-140(%rbp), %eax	#1 units of power consumed
	leal	1(%rax), %edx
	movl	i(%rip), %eax	#1 units of power consumed
	cmpl	%eax, %edx
	jg	.L28
	movq	-80(%rbp), %rax	#1 units of power consumed
	movq	%rax, %rdi	#1 units of power consumed
	call	atol
	movq	%rax, -104(%rbp)	#1 units of power consumed
	movq	-112(%rbp), %rax	#1 units of power consumed
	imulq	-104(%rbp), %rax	#6 units of power consumed
	movq	%rax, -72(%rbp)	#1 units of power consumed
	movq	-112(%rbp), %rax	#1 units of power consumed
	leaq	-1(%rax), %rdx
	movq	-104(%rbp), %rax	#1 units of power consumed
	subq	$1, %rax	#3 units of power consumed
	imulq	%rdx, %rax	#6 units of power consumed
	movq	%rax, -64(%rbp)	#1 units of power consumed
	cmpq	$0, -112(%rbp)
	je	.L29
	cmpq	$0, -104(%rbp)
	je	.L29
	movq	-112(%rbp), %rax	#1 units of power consumed
	cmpq	-104(%rbp), %rax
	je	.L29
	movq	-96(%rbp), %rdx	#1 units of power consumed
	movq	-64(%rbp), %rax	#1 units of power consumed
	movq	%rdx, %rsi	#1 units of power consumed
	movq	%rax, %rdi	#1 units of power consumed
	call	gcd
	cmpq	$1, %rax
	jne	.L29
	movq	-96(%rbp), %rdx	#1 units of power consumed
	movq	-64(%rbp), %rax	#1 units of power consumed
	movq	%rdx, %rsi	#1 units of power consumed
	movq	%rax, %rdi	#1 units of power consumed
	call	ExtEuclid
	movq	%rax, -128(%rbp)	#1 units of power consumed
	jmp	.L30
#------------------------------------
#35 units of power consumed in this block
#------------------------------------

.L31:
	movq	-64(%rbp), %rax	#1 units of power consumed
	addq	%rax, -128(%rbp)	#3 units of power consumed
#------------------------------------
#4 units of power consumed in this block
#------------------------------------

.L30:
	cmpq	$0, -128(%rbp)
	js	.L31
	movq	-104(%rbp), %rdx	#1 units of power consumed
	movq	-112(%rbp), %rax	#1 units of power consumed
	movq	%rax, %rsi	#1 units of power consumed
	movl	$.LC3, %edi	#1 units of power consumed
	movl	$0, %eax	#1 units of power consumed
	call	printf
	movq	-168(%rbp), %rax	#1 units of power consumed
	movq	-72(%rbp), %rdx	#1 units of power consumed
	movq	%rdx, (%rax)	#1 units of power consumed
	movq	-168(%rbp), %rax	#1 units of power consumed
	movq	-96(%rbp), %rdx	#1 units of power consumed
	movq	%rdx, 8(%rax)	#1 units of power consumed
	movq	-176(%rbp), %rax	#1 units of power consumed
	movq	-72(%rbp), %rdx	#1 units of power consumed
	movq	%rdx, (%rax)	#1 units of power consumed
	movq	-176(%rbp), %rax	#1 units of power consumed
	movq	-128(%rbp), %rdx	#1 units of power consumed
	movq	%rdx, 8(%rax)	#1 units of power consumed
	movq	%rbx, %rsp	#1 units of power consumed
	nop
	movq	-56(%rbp), %rax	#1 units of power consumed
	xorq	%fs:40, %rax
	je	.L32
	call	__stack_chk_fail
#------------------------------------
#19 units of power consumed in this block
#------------------------------------

.L32:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.LFE5:
	.size	rsa_gen_keys, .-rsa_gen_keys
	.section	.rodata
	.align 8
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.LC4:
	.string	"Error: Heap allocation failed.\n"
	.text
	.globl	rsa_encrypt
	.type	rsa_encrypt, @function
rsa_encrypt:
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#1 units of power consumed
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp	#3 units of power consumed
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	#1 units of power consumed
	movq	%rsi, -48(%rbp)	#1 units of power consumed
	movq	%rdx, -56(%rbp)	#1 units of power consumed
	movq	-48(%rbp), %rax	#1 units of power consumed
	salq	$3, %rax
	movq	%rax, %rdi	#1 units of power consumed
	call	malloc
	movq	%rax, -24(%rbp)	#1 units of power consumed
	cmpq	$0, -24(%rbp)
	jne	.L34
	movq	stderr(%rip), %rax	#1 units of power consumed
	movq	%rax, %rcx	#1 units of power consumed
	movl	$31, %edx	#1 units of power consumed
	movl	$1, %esi	#1 units of power consumed
	movl	$.LC4, %edi	#1 units of power consumed
	call	fwrite
	movl	$0, %eax	#1 units of power consumed
	jmp	.L35
#------------------------------------
#16 units of power consumed in this block
#------------------------------------

.L34:
	movq	$0, -32(%rbp)	#1 units of power consumed
	movq	$0, -32(%rbp)	#1 units of power consumed
	jmp	.L36
#------------------------------------
#2 units of power consumed in this block
#------------------------------------

.L37:
	movq	-32(%rbp), %rax	#1 units of power consumed
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax	#1 units of power consumed
	leaq	(%rdx,%rax), %rbx
	movq	-56(%rbp), %rax	#1 units of power consumed
	movq	(%rax), %rdx	#1 units of power consumed
	movq	-56(%rbp), %rax	#1 units of power consumed
	movq	8(%rax), %rcx	#1 units of power consumed
	movq	-32(%rbp), %rsi	#1 units of power consumed
	movq	-40(%rbp), %rax	#1 units of power consumed
	addq	%rsi, %rax	#3 units of power consumed
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	movq	%rcx, %rsi	#1 units of power consumed
	movq	%rax, %rdi	#1 units of power consumed
	call	rsa_modExp
	movq	%rax, (%rbx)	#1 units of power consumed
	addq	$1, -32(%rbp)	#3 units of power consumed
#------------------------------------
#17 units of power consumed in this block
#------------------------------------

.L36:
	movq	-32(%rbp), %rax	#1 units of power consumed
	cmpq	-48(%rbp), %rax
	jb	.L37
	movq	-24(%rbp), %rax	#1 units of power consumed
#------------------------------------
#2 units of power consumed in this block
#------------------------------------

.L35:
	addq	$56, %rsp	#3 units of power consumed
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
#------------------------------------
#3 units of power consumed in this block
#------------------------------------

.LFE6:
	.size	rsa_encrypt, .-rsa_encrypt
	.section	.rodata
	.align 8
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.LC5:
	.string	"Error: message_size is not divisible by %d, so cannot be output of rsa_encrypt\n"
	.text
	.globl	rsa_decrypt
	.type	rsa_decrypt, @function
rsa_decrypt:
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#1 units of power consumed
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp	#3 units of power consumed
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	#1 units of power consumed
	movq	%rsi, -64(%rbp)	#1 units of power consumed
	movq	%rdx, -72(%rbp)	#1 units of power consumed
	movq	-64(%rbp), %rax	#1 units of power consumed
	andl	$7, %eax
	testq	%rax, %rax
	je	.L39
	movq	stderr(%rip), %rax	#1 units of power consumed
	movl	$8, %edx	#1 units of power consumed
	movl	$.LC5, %esi	#1 units of power consumed
	movq	%rax, %rdi	#1 units of power consumed
	movl	$0, %eax	#1 units of power consumed
	call	fprintf
	movl	$0, %eax	#1 units of power consumed
	jmp	.L40
#------------------------------------
#14 units of power consumed in this block
#------------------------------------

.L39:
	movq	-64(%rbp), %rax	#1 units of power consumed
	shrq	$3, %rax
	movq	%rax, %rdi	#1 units of power consumed
	call	malloc
	movq	%rax, -32(%rbp)	#1 units of power consumed
	movq	-64(%rbp), %rax	#1 units of power consumed
	movq	%rax, %rdi	#1 units of power consumed
	call	malloc
	movq	%rax, -24(%rbp)	#1 units of power consumed
	cmpq	$0, -32(%rbp)
	je	.L41
	cmpq	$0, -24(%rbp)
	jne	.L42
#------------------------------------
#6 units of power consumed in this block
#------------------------------------

.L41:
	movq	stderr(%rip), %rax	#1 units of power consumed
	movq	%rax, %rcx	#1 units of power consumed
	movl	$31, %edx	#1 units of power consumed
	movl	$1, %esi	#1 units of power consumed
	movl	$.LC4, %edi	#1 units of power consumed
	call	fwrite
	movl	$0, %eax	#1 units of power consumed
	jmp	.L40
#------------------------------------
#6 units of power consumed in this block
#------------------------------------

.L42:
	movq	$0, -40(%rbp)	#1 units of power consumed
	movq	$0, -40(%rbp)	#1 units of power consumed
	jmp	.L43
#------------------------------------
#2 units of power consumed in this block
#------------------------------------

.L44:
	movq	-40(%rbp), %rdx	#1 units of power consumed
	movq	-24(%rbp), %rax	#1 units of power consumed
	leaq	(%rdx,%rax), %rbx
	movq	-72(%rbp), %rax	#1 units of power consumed
	movq	(%rax), %rdx	#1 units of power consumed
	movq	-72(%rbp), %rax	#1 units of power consumed
	movq	8(%rax), %rcx	#1 units of power consumed
	movq	-40(%rbp), %rax	#1 units of power consumed
	leaq	0(,%rax,8), %rsi
	movq	-56(%rbp), %rax	#1 units of power consumed
	addq	%rsi, %rax	#3 units of power consumed
	movq	(%rax), %rax	#1 units of power consumed
	movq	%rcx, %rsi	#1 units of power consumed
	movq	%rax, %rdi	#1 units of power consumed
	call	rsa_modExp
	movb	%al, (%rbx)
	addq	$1, -40(%rbp)	#3 units of power consumed
#------------------------------------
#17 units of power consumed in this block
#------------------------------------

.L43:
	movq	-64(%rbp), %rax	#1 units of power consumed
	shrq	$3, %rax
	movq	%rax, %rdx	#1 units of power consumed
	movq	-40(%rbp), %rax	#1 units of power consumed
	cmpq	%rax, %rdx
	ja	.L44
	movq	$0, -40(%rbp)	#1 units of power consumed
	jmp	.L45
#------------------------------------
#4 units of power consumed in this block
#------------------------------------

.L46:
	movq	-40(%rbp), %rdx	#1 units of power consumed
	movq	-32(%rbp), %rax	#1 units of power consumed
	addq	%rax, %rdx	#3 units of power consumed
	movq	-40(%rbp), %rcx	#1 units of power consumed
	movq	-24(%rbp), %rax	#1 units of power consumed
	addq	%rcx, %rax	#3 units of power consumed
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addq	$1, -40(%rbp)	#3 units of power consumed
#------------------------------------
#13 units of power consumed in this block
#------------------------------------

.L45:
	movq	-64(%rbp), %rax	#1 units of power consumed
	shrq	$3, %rax
	movq	%rax, %rdx	#1 units of power consumed
	movq	-40(%rbp), %rax	#1 units of power consumed
	cmpq	%rax, %rdx
	ja	.L46
	movq	-24(%rbp), %rax	#1 units of power consumed
	movq	%rax, %rdi	#1 units of power consumed
	call	free
	movq	-32(%rbp), %rax	#1 units of power consumed
#------------------------------------
#6 units of power consumed in this block
#------------------------------------

.L40:
	addq	$72, %rsp	#3 units of power consumed
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
#------------------------------------
#3 units of power consumed in this block
#------------------------------------

.LFE7:
	.size	rsa_decrypt, .-rsa_decrypt
	.section	.rodata
	.align 8
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.LC2:
	.long	0
	.long	1105199104
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.11) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
