	.text
	.file	"disabled-calls.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function test
.LCPI0_0:
	.long	1073741824              # float 2
	.text
	.globl	test
	.p2align	4, 0x90
	.type	test,@function
test:                                   # @test
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movss	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
	mulss	-4(%rbp), %xmm1
	movaps	%xmm1, %xmm0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	test, .Lfunc_end0-test
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
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movabsq	$.L.str.2, %rdi
	leaq	-20(%rbp), %rsi
	movb	$0, %al
	callq	__isoc99_scanf
	movss	-20(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movl	%eax, -24(%rbp)         # 4-byte Spill
	callq	test.1
	cvtss2sd	%xmm0, %xmm0
	movabsq	$.L.str.3, %rdi
	movb	$1, %al
	callq	printf
	xorl	%ecx, %ecx
	movl	%eax, -28(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function test.1
.LCPI2_0:
	.long	1073741824              # float 2
	.text
	.p2align	4, 0x90
	.type	test.1,@function
test.1:                                 # @test.1
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movss	.LCPI2_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
	mulss	-4(%rbp), %xmm1
	movaps	%xmm1, %xmm0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	test.1, .Lfunc_end2-test.1
	.cfi_endproc
                                        # -- End function
	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"%f"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%f\n"
	.size	.L.str.3, 4

	.ident	"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __isoc99_scanf
	.addrsig_sym printf
	.addrsig_sym test.1
