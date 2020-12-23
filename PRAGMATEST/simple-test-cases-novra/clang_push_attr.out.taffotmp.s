	.text
	.file	"clang_push_attr.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function main
.LCPI0_0:
	.long	1258291200              # float 8388608
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
	movl	$5242880, -12(%rbp)     # imm = 0x500000
	movl	$17636210, -20(%rbp)    # imm = 0x10D1B72
	movslq	-12(%rbp), %rax
	imulq	$451486962, %rax, %rax  # imm = 0x1AE924F2
	sarq	$31, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -16(%rbp)
	movslq	-16(%rbp), %rax
	cqto
	movl	$2, %ecx
	idivq	%rcx
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -16(%rbp)
	movslq	-20(%rbp), %rax
	cqto
	idivq	%rcx
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -20(%rbp)
	movl	-16(%rbp), %eax
	movl	-20(%rbp), %esi
	sarl	$4, %esi
	addl	%esi, %eax
	shll	$4, %eax
	movl	%eax, -24(%rbp)
	cvtsi2ssl	-24(%rbp), %xmm1
	divss	%xmm0, %xmm1
	movss	%xmm1, -8(%rbp)
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movabsq	$.L.str.3, %rdi
	movb	$1, %al
	callq	printf
	xorl	%esi, %esi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	movl	%esi, %eax
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
	.asciz	"%f\n"
	.size	.L.str.3, 4

	.ident	"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf
