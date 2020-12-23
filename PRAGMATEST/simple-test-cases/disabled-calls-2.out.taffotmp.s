	.text
	.file	"disabled-calls-2.c"
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
	mulss	%xmm1, %xmm0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	test, .Lfunc_end0-test
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI1_0:
	.quad	4701758010974797824     # double 2097152
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI1_1:
	.long	1249902592              # float 4194304
.LCPI1_2:
	.long	1073741824              # float 2
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
	movabsq	$.L.str.2, %rax
	movl	%edi, -8(%rbp)          # 4-byte Spill
	movq	%rax, %rdi
	leaq	-4(%rbp), %rax
	movq	%rsi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movb	$0, %al
	callq	__isoc99_scanf
	movss	.LCPI1_1(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI1_2(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	mulss	-4(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %ecx
	sarl	$1, %ecx
	movl	%ecx, %edi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	test.1_s11_21fixp
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	cvtsi2sd	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movabsq	$.L.str.4, %rdi
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	printf
	xorl	%ecx, %ecx
	movl	%eax, -24(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function test.1_s11_21fixp
	.type	test.1_s11_21fixp,@function
test.1_s11_21fixp:                      # @test.1_s11_21fixp
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movslq	%edi, %rax
	shlq	$1, %rax
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	test.1_s11_21fixp, .Lfunc_end2-test.1_s11_21fixp
	.cfi_endproc
                                        # -- End function
	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"%f"
	.size	.L.str.2, 3

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%f\n"
	.size	.L.str.4, 4

	.ident	"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __isoc99_scanf
	.addrsig_sym printf
	.addrsig_sym test.1_s11_21fixp
