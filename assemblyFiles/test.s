	.file	"test.c"
	.globl	PRIME_SOURCE_FILE
	.section	.rodata
.LC0:
	.string	"primes.txt"
	.data
	.align 8
	.type	PRIME_SOURCE_FILE, @object
	.size	PRIME_SOURCE_FILE, 8
PRIME_SOURCE_FILE:
	.quad	.LC0
	.section	.rodata
	.align 8
.LC1:
	.string	"Private Key:\n Modulus: %lld\n Exponent: %lld\n"
	.align 8
.LC2:
	.string	"Public Key:\n Modulus: %lld\n Exponent: %lld\n"
.LC3:
	.string	"Original:"
.LC4:
	.string	"%c %lld\n"
.LC5:
	.string	"Error in encryption!\n"
.LC6:
	.string	"Encrypted:"
.LC7:
	.string	"Error in decryption!\n"
.LC8:
	.string	"Decrypted:"
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
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movl	%edi, -116(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	PRIME_SOURCE_FILE(%rip), %rdx
	leaq	-64(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsa_gen_keys
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	movabsq	$7944666837741299796, %rax
	movq	%rax, -48(%rbp)
	movabsq	$4692868886297714788, %rax
	movq	%rax, -40(%rbp)
	movl	$1852399975, -32(%rbp)
	movb	$0, -28(%rbp)
	movl	$.LC3, %edi
	call	puts
	movl	$0, -100(%rbp)
	jmp	.L2
.L3:
	movl	-100(%rbp), %eax
	cltq
	movzbl	-48(%rbp,%rax), %eax
	movsbq	%al, %rdx
	movl	-100(%rbp), %eax
	cltq
	movzbl	-48(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -100(%rbp)
.L2:
	movl	-100(%rbp), %eax
	movslq	%eax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	%rax, %rbx
	jb	.L3
	leaq	-80(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movl	$21, %esi
	movq	%rax, %rdi
	call	rsa_encrypt
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.L4
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$21, %edx
	movl	$1, %esi
	movl	$.LC5, %edi
	call	fwrite
	movl	$1, %eax
	jmp	.L11
.L4:
	movl	$.LC6, %edi
	call	puts
	movl	$0, -100(%rbp)
	jmp	.L6
.L7:
	movl	-100(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-100(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-96(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -100(%rbp)
.L6:
	movl	-100(%rbp), %eax
	movslq	%eax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	%rax, %rbx
	jb	.L7
	leaq	-64(%rbp), %rdx
	movq	-96(%rbp), %rax
	movl	$168, %esi
	movq	%rax, %rdi
	call	rsa_decrypt
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L8
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$21, %edx
	movl	$1, %esi
	movl	$.LC7, %edi
	call	fwrite
	movl	$1, %eax
	jmp	.L11
.L8:
	movl	$.LC8, %edi
	call	puts
	movl	$0, -100(%rbp)
	jmp	.L9
.L10:
	movl	-100(%rbp), %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rdx
	movl	-100(%rbp), %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -100(%rbp)
.L9:
	movl	-100(%rbp), %eax
	movslq	%eax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	%rax, %rbx
	jb	.L10
	movl	$10, %edi
	call	putchar
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movl	$0, %eax
.L11:
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L12
	call	__stack_chk_fail
.L12:
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.11) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
