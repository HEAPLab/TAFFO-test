	.text
	.file	"test8.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function cast
.LCPI0_0:
	.long	1199570944              # float 65536
	.text
	.globl	cast
	.p2align	4, 0x90
	.type	cast,@function
cast:                                   # @cast
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movss	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	4(%rax), %r8d
	subl	%ecx, %r8d
	movl	%r8d, 4(%rax)
	movq	-8(%rbp), %rax
	movaps	%xmm0, %xmm1
	mulss	(%rax), %xmm1
	cvttss2si	%xmm1, %ecx
	movl	%ecx, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movaps	%xmm0, %xmm1
	mulss	8(%rax), %xmm1
	cvttss2si	%xmm1, %r8d
	subl	%r8d, %ecx
	movq	-40(%rbp), %rax
	movl	(%rax), %r8d
	subl	%ecx, %r8d
	movl	%r8d, (%rax)
	movq	-40(%rbp), %rax
	cvtsi2ssl	(%rax), %xmm1
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	cast, .Lfunc_end0-cast
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
