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
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	jmp	.L2
.L3:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	cqto
	idivq	-24(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
.L2:
	cmpq	$0, -24(%rbp)
	jne	.L3
	movq	-32(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	gcd, .-gcd
	.globl	ExtEuclid
	.type	ExtEuclid, @function
ExtEuclid:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	$0, -72(%rbp)
	movq	$1, -64(%rbp)
	movq	$1, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.L6
.L7:
	movq	-40(%rbp), %rax
	cqto
	idivq	-88(%rbp)
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	cqto
	idivq	-88(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-56(%rbp), %rax
	imulq	-32(%rbp), %rax
	movq	-72(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	imulq	-32(%rbp), %rax
	movq	-64(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
.L6:
	cmpq	$0, -88(%rbp)
	jne	.L7
	movq	-64(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	ExtEuclid, .-ExtEuclid
	.globl	rsa_modExp
	.type	rsa_modExp, @function
rsa_modExp:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -8(%rbp)
	js	.L10
	cmpq	$0, -16(%rbp)
	js	.L10
	cmpq	$0, -24(%rbp)
	jg	.L11
.L10:
	movl	$1, %edi
	call	exit
.L11:
	movq	-8(%rbp), %rax
	cqto
	idivq	-24(%rbp)
	movq	%rdx, -8(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L12
	movl	$1, %eax
	jmp	.L9
.L12:
	cmpq	$1, -16(%rbp)
	jne	.L14
	movq	-8(%rbp), %rax
	jmp	.L9
.L14:
	movq	-16(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	jne	.L15
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rdx, %rax
	sarq	%rax
	movq	%rax, %rsi
	movq	-8(%rbp), %rax
	imulq	-8(%rbp), %rax
	cqto
	idivq	-24(%rbp)
	movq	%rdx, %rcx
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	rsa_modExp
	cqto
	idivq	-24(%rbp)
	movq	%rdx, %rax
	jmp	.L9
.L15:
	movq	-16(%rbp), %rax
	cqto
	shrq	$63, %rdx
	addq	%rdx, %rax
	andl	$1, %eax
	subq	%rdx, %rax
	cmpq	$1, %rax
	jne	.L16
	movq	-16(%rbp), %rax
	leaq	-1(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsa_modExp
	imulq	-8(%rbp), %rax
	cqto
	idivq	-24(%rbp)
	movq	%rdx, %rax
	jmp	.L9
.L16:
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	rsa_modExp, .-rsa_modExp
	.section	.rodata
.LC0:
	.string	"r"
.LC1:
	.string	"Problem reading %s\n"
.LC3:
	.string	"primes are %lld and %lld\n"
	.text
	.globl	rsa_gen_keys
	.type	rsa_gen_keys, @function
rsa_gen_keys:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$152, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movq	%rdx, -184(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	movq	-184(%rbp), %rax
	movl	$.LC0, %esi
	movq	%rax, %rdi
	call	fopen
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.L18
	movq	stderr(%rip), %rax
	movq	-184(%rbp), %rdx
	movl	$.LC1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$1, %edi
	call	exit
.L18:
	movq	$0, -136(%rbp)
.L22:
	movq	-120(%rbp), %rax
	movq	%rax, %rcx
	movl	$1023, %edx
	movl	$1, %esi
	movl	$buffer, %edi
	call	fread
	movl	%eax, -148(%rbp)
	movl	-148(%rbp), %eax
	cltq
	movb	$0, buffer(%rax)
	movl	$0, i(%rip)
	jmp	.L19
.L21:
	movl	i(%rip), %eax
	cltq
	movzbl	buffer(%rax), %eax
	cmpb	$10, %al
	jne	.L20
	addq	$1, -136(%rbp)
.L20:
	movl	i(%rip), %eax
	addl	$1, %eax
	movl	%eax, i(%rip)
.L19:
	movl	i(%rip), %eax
	cltq
	movzbl	buffer(%rax), %eax
	testb	%al, %al
	jne	.L21
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	feof
	testl	%eax, %eax
	je	.L22
	movq	$0, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	$257, -96(%rbp)
	movq	$0, -128(%rbp)
	movq	%rsp, %rax
	movq	%rax, %rbx
	movl	$50, %eax
	cltq
	subq	$1, %rax
	movq	%rax, -88(%rbp)
	movl	$50, %eax
	cltq
	movq	%rax, %r14
	movl	$0, %r15d
	movl	$50, %eax
	cltq
	movq	%rax, %r12
	movl	$0, %r13d
	movl	$50, %eax
	cltq
	movl	$16, %edx
	subq	$1, %rdx
	addq	%rdx, %rax
	movl	$16, %ecx
	movl	$0, %edx
	divq	%rcx
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$0, %rax
	movq	%rax, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movl	$0, %edi
	call	time
	movl	%eax, %edi
	call	srand
.L29:
	call	rand
	pxor	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	movq	-136(%rbp), %rax
	addq	$1, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	.LC2(%rip), %xmm1
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -144(%rbp)
	call	rand
	pxor	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	movq	-136(%rbp), %rax
	addq	$1, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	.LC2(%rip), %xmm1
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -140(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	rewind
	movl	$0, i(%rip)
	jmp	.L23
.L24:
	movl	$50, %eax
	subl	$1, %eax
	movl	%eax, %ecx
	movq	-80(%rbp), %rax
	movq	-120(%rbp), %rdx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	fgets
	movl	i(%rip), %eax
	addl	$1, %eax
	movl	%eax, i(%rip)
.L23:
	movl	-144(%rbp), %eax
	leal	1(%rax), %edx
	movl	i(%rip), %eax
	cmpl	%eax, %edx
	jg	.L24
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	atol
	movq	%rax, -112(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	rewind
	movl	$0, i(%rip)
	jmp	.L25
.L28:
	movl	$0, j(%rip)
	jmp	.L26
.L27:
	movl	j(%rip), %eax
	movq	-80(%rbp), %rdx
	cltq
	movb	$0, (%rdx,%rax)
	movl	j(%rip), %eax
	addl	$1, %eax
	movl	%eax, j(%rip)
.L26:
	movl	j(%rip), %eax
	movl	$50, %edx
	cmpl	%edx, %eax
	jl	.L27
	movl	$50, %eax
	subl	$1, %eax
	movl	%eax, %ecx
	movq	-80(%rbp), %rax
	movq	-120(%rbp), %rdx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	fgets
	movl	i(%rip), %eax
	addl	$1, %eax
	movl	%eax, i(%rip)
.L25:
	movl	-140(%rbp), %eax
	leal	1(%rax), %edx
	movl	i(%rip), %eax
	cmpl	%eax, %edx
	jg	.L28
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	atol
	movq	%rax, -104(%rbp)
	movq	-112(%rbp), %rax
	imulq	-104(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-112(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-104(%rbp), %rax
	subq	$1, %rax
	imulq	%rdx, %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, -112(%rbp)
	je	.L29
	cmpq	$0, -104(%rbp)
	je	.L29
	movq	-112(%rbp), %rax
	cmpq	-104(%rbp), %rax
	je	.L29
	movq	-96(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	gcd
	cmpq	$1, %rax
	jne	.L29
	movq	-96(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ExtEuclid
	movq	%rax, -128(%rbp)
	jmp	.L30
.L31:
	movq	-64(%rbp), %rax
	addq	%rax, -128(%rbp)
.L30:
	cmpq	$0, -128(%rbp)
	js	.L31
	movq	-104(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	movq	-168(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-168(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-176(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-176(%rbp), %rax
	movq	-128(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	%rbx, %rsp
	nop
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L32
	call	__stack_chk_fail
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
.LFE5:
	.size	rsa_gen_keys, .-rsa_gen_keys
	.section	.rodata
	.align 8
.LC4:
	.string	"Error: Heap allocation failed.\n"
	.text
	.globl	rsa_encrypt
	.type	rsa_encrypt, @function
rsa_encrypt:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-48(%rbp), %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L34
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$31, %edx
	movl	$1, %esi
	movl	$.LC4, %edi
	call	fwrite
	movl	$0, %eax
	jmp	.L35
.L34:
	movq	$0, -32(%rbp)
	movq	$0, -32(%rbp)
	jmp	.L36
.L37:
	movq	-32(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	addq	%rsi, %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsa_modExp
	movq	%rax, (%rbx)
	addq	$1, -32(%rbp)
.L36:
	movq	-32(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jb	.L37
	movq	-24(%rbp), %rax
.L35:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	rsa_encrypt, .-rsa_encrypt
	.section	.rodata
	.align 8
.LC5:
	.string	"Error: message_size is not divisible by %d, so cannot be output of rsa_encrypt\n"
	.text
	.globl	rsa_decrypt
	.type	rsa_decrypt, @function
rsa_decrypt:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-64(%rbp), %rax
	andl	$7, %eax
	testq	%rax, %rax
	je	.L39
	movq	stderr(%rip), %rax
	movl	$8, %edx
	movl	$.LC5, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$0, %eax
	jmp	.L40
.L39:
	movq	-64(%rbp), %rax
	shrq	$3, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -24(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L41
	cmpq	$0, -24(%rbp)
	jne	.L42
.L41:
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$31, %edx
	movl	$1, %esi
	movl	$.LC4, %edi
	call	fwrite
	movl	$0, %eax
	jmp	.L40
.L42:
	movq	$0, -40(%rbp)
	movq	$0, -40(%rbp)
	jmp	.L43
.L44:
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-72(%rbp), %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-40(%rbp), %rax
	leaq	0(,%rax,8), %rsi
	movq	-56(%rbp), %rax
	addq	%rsi, %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsa_modExp
	movb	%al, (%rbx)
	addq	$1, -40(%rbp)
.L43:
	movq	-64(%rbp), %rax
	shrq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	cmpq	%rax, %rdx
	ja	.L44
	movq	$0, -40(%rbp)
	jmp	.L45
.L46:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addq	$1, -40(%rbp)
.L45:
	movq	-64(%rbp), %rax
	shrq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	cmpq	%rax, %rdx
	ja	.L46
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	-32(%rbp), %rax
.L40:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	rsa_decrypt, .-rsa_decrypt
	.section	.rodata
	.align 8
.LC2:
	.long	0
	.long	1105199104
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.11) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
