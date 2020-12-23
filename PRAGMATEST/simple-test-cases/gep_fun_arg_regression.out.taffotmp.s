	.text
	.file	"gep_fun_arg_regression.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function idct2
.LCPI0_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	idct2
	.p2align	4, 0x90
	.type	idct2,@function
idct2:                                  # @idct2
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, (%rsi)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	idct2, .Lfunc_end0-idct2
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
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
	subq	$16, %rsp
	movl	$8, %edi
	callq	malloc
	movq	%rax, -8(%rbp)
	movl	$8, %edi
	callq	malloc
	xorl	%edi, %edi
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rsi
	callq	idct2.1_fixp
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function idct2.1_fixp
	.type	idct2.1_fixp,@function
idct2.1_fixp:                           # @idct2.1_fixp
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$1048576, (%rsi)        # imm = 0x100000
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	idct2.1_fixp, .Lfunc_end2-idct2.1_fixp
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym malloc
	.addrsig_sym idct2.1_fixp
