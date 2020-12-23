	.text
	.file	"enqueueexample.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function example
.LCPI0_0:
	.long	1291845632              # float 134217728
.LCPI0_1:
	.long	1077936128              # float 3
.LCPI0_2:
	.long	1065353216              # float 1
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
	movss	%xmm0, -4(%rbp)
	movss	%xmm1, -8(%rbp)
	movss	%xmm2, -12(%rbp)
	movss	%xmm3, -16(%rbp)
	movss	%xmm6, -20(%rbp)
	movl	$268435456, -24(%rbp)   # imm = 0x10000000
	movss	%xmm5, -28(%rbp)
	movss	-20(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movl	-24(%rbp), %eax
	movaps	%xmm4, %xmm1
	mulss	-28(%rbp), %xmm1
	cvttss2si	%xmm1, %ecx
	movslq	%eax, %rdx
	shlq	$27, %rdx
	movslq	%ecx, %rsi
	movq	%rdx, %rax
	cqto
	idivq	%rsi
                                        # kill: def $eax killed $eax killed $rax
	movaps	%xmm4, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %ecx
	movslq	%ecx, %rsi
	movslq	%eax, %rdi
	imulq	%rdi, %rsi
	sarq	$27, %rsi
                                        # kill: def $esi killed $esi killed $rsi
	movaps	%xmm4, %xmm0
	mulss	-20(%rbp), %xmm0
	cvttss2si	%xmm0, %eax
	movslq	%esi, %rdi
	movslq	%eax, %r8
	imulq	%r8, %rdi
	sarq	$27, %rdi
                                        # kill: def $edi killed $edi killed $rdi
	cvtsi2ss	%edi, %xmm0
	divss	%xmm4, %xmm0
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
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
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
