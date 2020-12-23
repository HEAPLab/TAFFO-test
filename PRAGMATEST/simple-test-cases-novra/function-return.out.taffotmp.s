	.text
	.file	"function-return.c"
	.globl	fun                     # -- Begin function fun
	.p2align	4, 0x90
	.type	fun,@function
fun:                                    # @fun
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$.L.str, %rdi
	leaq	-4(%rbp), %rsi
	movb	$0, %al
	callq	__isoc99_scanf
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	fun, .Lfunc_end0-fun
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function main
.LCPI1_0:
	.long	1291845632              # float 134217728
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
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	callq	fun.1_s5_27fixp
	movss	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	cvtsi2ss	%eax, %xmm1
	divss	%xmm0, %xmm1
	movss	%xmm1, -8(%rbp)
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movabsq	$.L.str.3, %rdi
	movb	$1, %al
	callq	printf
	xorl	%ecx, %ecx
	movl	%eax, -12(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function fun.1_s5_27fixp
.LCPI2_0:
	.long	1291845632              # float 134217728
	.text
	.p2align	4, 0x90
	.type	fun.1_s5_27fixp,@function
fun.1_s5_27fixp:                        # @fun.1_s5_27fixp
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$.L.str, %rdi
	leaq	-4(%rbp), %rsi
	movb	$0, %al
	callq	__isoc99_scanf
	movss	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	mulss	-4(%rbp), %xmm0
	cvttss2si	%xmm0, %ecx
	movl	%eax, -8(%rbp)          # 4-byte Spill
	movl	%ecx, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	fun.1_s5_27fixp, .Lfunc_end2-fun.1_s5_27fixp
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%f"
	.size	.L.str, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%f\n"
	.size	.L.str.3, 4

	.ident	"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fun
	.addrsig_sym __isoc99_scanf
	.addrsig_sym printf
	.addrsig_sym fun.1_s5_27fixp
