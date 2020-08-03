#======================================
#======================================
#135 units of power consumed for this file
#======================================
#======================================

	.file	"test2.c"
	.text
	.globl	exponentiation
	.type	exponentiation, @function
exponentiation:
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#1 units of power consumed
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#3 units of power consumed
	movq	%rdi, -24(%rbp)	#1 units of power consumed
	movq	%rsi, -32(%rbp) 	#1 units of power consumed
	cmpq	$0, -32(%rbp)
	jne	.L2
	movl	$1, %eax	#1 units of power consumed
	jmp	.L3
#------------------------------------
#7 units of power consumed in this block
#------------------------------------

.L2:
	cmpq	$1, -32(%rbp)
	jne	.L4
	movq	-24(%rbp), %rax	#1 units of power consumed
	jmp	.L3
#------------------------------------
#1 units of power consumed in this block
#------------------------------------

.L4:
	movq	-32(%rbp), %rax	#1 units of power consumed
	movq	%rax, %rdx	#1 units of power consumed
	shrq	$63, %rdx
	addq	%rdx, %rax	#3 units of power consumed
	sarq	%rax
	movq	%rax, %rdx	#1 units of power consumed
	movq	-24(%rbp), %rax	#1 units of power consumed
	movq	%rdx, %rsi	#1 units of power consumed
	movq	%rax, %rdi	#1 units of power consumed
	call	exponentiation
	cltq
	movq	%rax, -8(%rbp)	#1 units of power consumed
	movq	-8(%rbp), %rax	#1 units of power consumed
	imulq	-8(%rbp), %rax	#6 units of power consumed
	movq	%rax, -8(%rbp)	#1 units of power consumed
	movq	-32(%rbp), %rax	#1 units of power consumed
	andl	$1, %eax
	testq	%rax, %rax
	jne	.L5
	movq	-8(%rbp), %rax	#1 units of power consumed
	jmp	.L3
#------------------------------------
#20 units of power consumed in this block
#------------------------------------

.L5:
	movq	-24(%rbp), %rax	#1 units of power consumed
	movl	%eax, %edx	#1 units of power consumed
	movq	-8(%rbp), %rax	#1 units of power consumed
	imull	%edx, %eax
#------------------------------------
#3 units of power consumed in this block
#------------------------------------

.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.LFE0:
	.size	exponentiation, .-exponentiation
	.globl	gcd
	.type	gcd, @function
gcd:
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#1 units of power consumed
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	#1 units of power consumed
	movl	%esi, -24(%rbp)	#1 units of power consumed
#------------------------------------
#3 units of power consumed in this block
#------------------------------------

.L9:
	movl	-20(%rbp), %eax	#1 units of power consumed
	cltd
	idivl	-24(%rbp)
	movl	%edx, -4(%rbp)	#1 units of power consumed
	cmpl	$0, -4(%rbp)
	jne	.L7
	movl	-24(%rbp), %eax	#1 units of power consumed
	jmp	.L10
#------------------------------------
#3 units of power consumed in this block
#------------------------------------

.L7:
	movl	-24(%rbp), %eax	#1 units of power consumed
	movl	%eax, -20(%rbp)	#1 units of power consumed
	movl	-4(%rbp), %eax	#1 units of power consumed
	movl	%eax, -24(%rbp)	#1 units of power consumed
	jmp	.L9
#------------------------------------
#4 units of power consumed in this block
#------------------------------------

.L10:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.LFE1:
	.size	gcd, .-gcd
	.section	.rodata
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.LC0:
	.string	"test: %d\n"
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.LC2:
	.string	"dd: %lf\n"
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.LC3:
	.string	"d: %ld\n"
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.LC4:
	.string	"Message data = %ld"
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.LC5:
	.string	"\np = %ld"
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.LC6:
	.string	"\nq = %ld"
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.LC7:
	.string	"\nn = pq = %ld"
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.LC8:
	.string	"\ntotient = %ld"
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.LC9:
	.string	"\ne = %ld"
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.LC10:
	.string	"\nd = %ld"
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.LC11:
	.string	"\nEncrypted data = %ld"
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.LC12:
	.string	"\nOriginal Message Sent = %ld\n"
	.text
	.globl	main
	.type	main, @function
main:
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
	subq	$112, %rsp	#3 units of power consumed
	movq	$3, -88(%rbp)	#1 units of power consumed
	movq	$7, -80(%rbp)	#1 units of power consumed
	movq	-88(%rbp), %rax	#1 units of power consumed
	imulq	-80(%rbp), %rax	#6 units of power consumed
	movq	%rax, -72(%rbp)	#1 units of power consumed
	movq	-88(%rbp), %rax	#1 units of power consumed
	leaq	-1(%rax), %rdx
	movq	-80(%rbp), %rax	#1 units of power consumed
	subq	$1, %rax	#3 units of power consumed
	imulq	%rdx, %rax	#6 units of power consumed
	movq	%rax, -64(%rbp)	#1 units of power consumed
	movl	$5, %esi	#1 units of power consumed
	movl	$3, %edi	#1 units of power consumed
	call	exponentiation
	movl	%eax, %esi	#1 units of power consumed
	movl	$.LC0, %edi	#1 units of power consumed
	movl	$0, %eax	#1 units of power consumed
	call	printf
	movq	$2, -96(%rbp)	#1 units of power consumed
	jmp	.L12
#------------------------------------
#32 units of power consumed in this block
#------------------------------------

.L15:
	movq	-64(%rbp), %rax	#1 units of power consumed
	movl	%eax, %edx	#1 units of power consumed
	movq	-96(%rbp), %rax	#1 units of power consumed
	movl	%edx, %esi	#1 units of power consumed
	movl	%eax, %edi	#1 units of power consumed
	call	gcd
	cltq
	movq	%rax, -56(%rbp)	#1 units of power consumed
	cmpq	$1, -56(%rbp)
	je	.L17
	addq	$1, -96(%rbp)	#3 units of power consumed
#------------------------------------
#9 units of power consumed in this block
#------------------------------------

.L12:
	movq	-96(%rbp), %rax	#1 units of power consumed
	cmpq	-64(%rbp), %rax
	jl	.L15
	jmp	.L14
#------------------------------------
#1 units of power consumed in this block
#------------------------------------

.L17:
	nop
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.L14:
	movq	$2, -48(%rbp)	#1 units of power consumed
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
	movq	%rax, -32(%rbp)	#1 units of power consumed
	movq	-40(%rbp), %rax	#1 units of power consumed
	movq	%rax, -104(%rbp)	#1 units of power consumed
	movsd	-104(%rbp), %xmm0
	movl	$.LC2, %edi	#1 units of power consumed
	movl	$1, %eax	#1 units of power consumed
	call	printf
	movq	-32(%rbp), %rax	#1 units of power consumed
	movq	%rax, %rsi	#1 units of power consumed
	movl	$.LC3, %edi	#1 units of power consumed
	movl	$0, %eax	#1 units of power consumed
	call	printf
	movq	$12, -24(%rbp)	#1 units of power consumed
	pxor	%xmm1, %xmm1
	cvtsi2sdq	-96(%rbp), %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sdq	-24(%rbp), %xmm0
	call	pow
	cvttsd2siq	%xmm0, %rax
	movq	%rax, -16(%rbp)	#1 units of power consumed
	pxor	%xmm1, %xmm1
	cvtsi2sdq	-32(%rbp), %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sdq	-16(%rbp), %xmm0
	call	pow
	cvttsd2siq	%xmm0, %rax
	movq	%rax, -8(%rbp)	#1 units of power consumed
	pxor	%xmm1, %xmm1
	cvtsi2sdq	-72(%rbp), %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sdq	-16(%rbp), %xmm0
	call	fmod
	cvttsd2siq	%xmm0, %rax
	movq	%rax, -16(%rbp)	#1 units of power consumed
	pxor	%xmm1, %xmm1
	cvtsi2sdq	-72(%rbp), %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sdq	-8(%rbp), %xmm0
	call	fmod
	cvttsd2siq	%xmm0, %rax
	movq	%rax, -8(%rbp)	#1 units of power consumed
	movq	-24(%rbp), %rax	#1 units of power consumed
	movq	%rax, %rsi	#1 units of power consumed
	movl	$.LC4, %edi	#1 units of power consumed
	movl	$0, %eax	#1 units of power consumed
	call	printf
	movq	-88(%rbp), %rax	#1 units of power consumed
	movq	%rax, %rsi	#1 units of power consumed
	movl	$.LC5, %edi	#1 units of power consumed
	movl	$0, %eax	#1 units of power consumed
	call	printf
	movq	-80(%rbp), %rax	#1 units of power consumed
	movq	%rax, %rsi	#1 units of power consumed
	movl	$.LC6, %edi	#1 units of power consumed
	movl	$0, %eax	#1 units of power consumed
	call	printf
	movq	-72(%rbp), %rax	#1 units of power consumed
	movq	%rax, %rsi	#1 units of power consumed
	movl	$.LC7, %edi	#1 units of power consumed
	movl	$0, %eax	#1 units of power consumed
	call	printf
	movq	-64(%rbp), %rax	#1 units of power consumed
	movq	%rax, %rsi	#1 units of power consumed
	movl	$.LC8, %edi	#1 units of power consumed
	movl	$0, %eax	#1 units of power consumed
	call	printf
	movq	-96(%rbp), %rax	#1 units of power consumed
	movq	%rax, %rsi	#1 units of power consumed
	movl	$.LC9, %edi	#1 units of power consumed
	movl	$0, %eax	#1 units of power consumed
	call	printf
	movq	-32(%rbp), %rax	#1 units of power consumed
	movq	%rax, %rsi	#1 units of power consumed
	movl	$.LC10, %edi	#1 units of power consumed
	movl	$0, %eax	#1 units of power consumed
	call	printf
	movq	-16(%rbp), %rax	#1 units of power consumed
	movq	%rax, %rsi	#1 units of power consumed
	movl	$.LC11, %edi	#1 units of power consumed
	movl	$0, %eax	#1 units of power consumed
	call	printf
	movq	-8(%rbp), %rax	#1 units of power consumed
	movq	%rax, %rsi	#1 units of power consumed
	movl	$.LC12, %edi	#1 units of power consumed
	movl	$0, %eax	#1 units of power consumed
	call	printf
	movl	$0, %eax	#1 units of power consumed
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
#------------------------------------
#52 units of power consumed in this block
#------------------------------------

.LFE2:
	.size	main, .-main
	.section	.rodata
	.align 8
#------------------------------------
#0 units of power consumed in this block
#------------------------------------

.LC1:
	.long	0
	.long	1072693248
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.11) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
