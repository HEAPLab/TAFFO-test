	.text
	.file	"test10.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function main
.LCPI0_0:
	.long	1308622848              # float 536870912
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movss	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$-1073741824, -20(%rbp) # imm = 0xC0000000
	movl	$-2147483648, -24(%rbp) # imm = 0x80000000
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movl	-24(%rbp), %eax
	movl	%eax, %edx
	imulq	%rdx, %rcx
	shrq	$30, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, %eax
	movl	%eax, %edx
	cvtsi2ss	%rdx, %xmm1
	divss	%xmm0, %xmm1
	movss	%xmm1, -28(%rbp)
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movabsq	$.L.str.3, %rdi
	movb	$1, %al
	callq	printf
	xorl	%ecx, %ecx
	movl	%eax, -32(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"%f"
	.size	.L.str.3, 3

	.ident	"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf
