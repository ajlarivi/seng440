	.file	"test2.c"
	.text
	.globl	exponentiation
	.type	exponentiation, @function
exponentiation:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp) 
	cmpq	$0, -32(%rbp)
	jne	.L2
	movl	$1, %eax
	jmp	.L3
.L2:
	cmpq	$1, -32(%rbp)
	jne	.L4
	movq	-24(%rbp), %rax
	jmp	.L3
.L4:
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rdx, %rax
	sarq	%rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	exponentiation
	cltq
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	imulq	-8(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	jne	.L5
	movq	-8(%rbp), %rax
	jmp	.L3
.L5:
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	imull	%edx, %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	exponentiation, .-exponentiation
	.globl	gcd
	.type	gcd, @function
gcd:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
.L9:
	movl	-20(%rbp), %eax
	cltd
	idivl	-24(%rbp)
	movl	%edx, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L7
	movl	-24(%rbp), %eax
	jmp	.L10
.L7:
	movl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)
	jmp	.L9
.L10:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	gcd, .-gcd
	.section	.rodata
.LC0:
	.string	"test: %d\n"
.LC2:
	.string	"dd: %lf\n"
.LC3:
	.string	"d: %ld\n"
.LC4:
	.string	"Message data = %ld"
.LC5:
	.string	"\np = %ld"
.LC6:
	.string	"\nq = %ld"
.LC7:
	.string	"\nn = pq = %ld"
.LC8:
	.string	"\ntotient = %ld"
.LC9:
	.string	"\ne = %ld"
.LC10:
	.string	"\nd = %ld"
.LC11:
	.string	"\nEncrypted data = %ld"
.LC12:
	.string	"\nOriginal Message Sent = %ld\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	$3, -88(%rbp)
	movq	$7, -80(%rbp)
	movq	-88(%rbp), %rax
	imulq	-80(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-88(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-80(%rbp), %rax
	subq	$1, %rax
	imulq	%rdx, %rax
	movq	%rax, -64(%rbp)
	movl	$5, %esi
	movl	$3, %edi
	call	exponentiation
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movq	$2, -96(%rbp)
	jmp	.L12
.L15:
	movq	-64(%rbp), %rax
	movl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, %esi
	movl	%eax, %edi
	call	gcd
	cltq
	movq	%rax, -56(%rbp)
	cmpq	$1, -56(%rbp)
	je	.L17
	addq	$1, -96(%rbp)
.L12:
	movq	-96(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jl	.L15
	jmp	.L14
.L17:
	nop
.L14:
	movq	$2, -48(%rbp)
	pxor	%xmm1, %xmm1
	cvtsi2sdq	-48(%rbp), %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sdq	-64(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	.LC1(%rip), %xmm1
	addsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdq	-96(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-40(%rbp), %xmm0
	cvttsd2siq	%xmm0, %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)
	movsd	-104(%rbp), %xmm0
	movl	$.LC2, %edi
	movl	$1, %eax
	call	printf
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	movq	$12, -24(%rbp)
	pxor	%xmm1, %xmm1
	cvtsi2sdq	-96(%rbp), %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sdq	-24(%rbp), %xmm0
	call	pow
	cvttsd2siq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	pxor	%xmm1, %xmm1
	cvtsi2sdq	-32(%rbp), %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sdq	-16(%rbp), %xmm0
	call	pow
	cvttsd2siq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	pxor	%xmm1, %xmm1
	cvtsi2sdq	-72(%rbp), %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sdq	-16(%rbp), %xmm0
	call	fmod
	cvttsd2siq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	pxor	%xmm1, %xmm1
	cvtsi2sdq	-72(%rbp), %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sdq	-8(%rbp), %xmm0
	call	fmod
	cvttsd2siq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC6, %edi
	movl	$0, %eax
	call	printf
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC7, %edi
	movl	$0, %eax
	call	printf
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC8, %edi
	movl	$0, %eax
	call	printf
	movq	-96(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC9, %edi
	movl	$0, %eax
	call	printf
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	printf
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC11, %edi
	movl	$0, %eax
	call	printf
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC12, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1072693248
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.11) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
