	.text
	.file	"enqueueexample.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function example
.LCPI0_0:
	.long	1065353216              # float 1
.LCPI0_1:
	.long	1077936128              # float 3
.LCPI0_2:
	.long	1073741824              # float 2
	.text
	.globl	example
	.p2align	4, 0x90
	.type	example,@function
example:                                # @example
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movss	.LCPI0_0(%rip), %xmm4   # xmm4 = mem[0],zero,zero,zero
	movss	.LCPI0_1(%rip), %xmm5   # xmm5 = mem[0],zero,zero,zero
	movss	.LCPI0_2(%rip), %xmm6   # xmm6 = mem[0],zero,zero,zero
	movss	%xmm6, -4(%rbp)
	movss	-4(%rbp), %xmm6         # xmm6 = mem[0],zero,zero,zero
	divss	%xmm5, %xmm6
	movaps	%xmm4, %xmm5
	mulss	%xmm6, %xmm5
	mulss	%xmm4, %xmm5
	movss	%xmm0, -8(%rbp)         # 4-byte Spill
	movaps	%xmm5, %xmm0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	example, .Lfunc_end0-example
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function main
.LCPI1_0:
	.long	1065353216              # float 1
.LCPI1_1:
	.long	1073741824              # float 2
.LCPI1_2:
	.long	1077936128              # float 3
.LCPI1_3:
	.long	1082130432              # float 4
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
	movss	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI1_2(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	movss	.LCPI1_3(%rip), %xmm3   # xmm3 = mem[0],zero,zero,zero
	movl	%edi, -4(%rbp)          # 4-byte Spill
	movq	%rsi, -16(%rbp)         # 8-byte Spill
	callq	example
	cvtss2sd	%xmm0, %xmm0
	movabsq	$.L.str.2, %rdi
	movb	$1, %al
	callq	printf
	xorl	%ecx, %ecx
	movl	%eax, -20(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"%f\n"
	.size	.L.str.2, 4

	.ident	"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym example
	.addrsig_sym printf
