	.text
	.file	"difference-example.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function test
.LCPI0_0:
	.quad	4715268809856909312     # double 16777216
.LCPI0_1:
	.quad	4611686018427387904     # double 2
.LCPI0_2:
	.quad	4635118810238550016     # double 77
.LCPI0_3:
	.quad	4636596553866280960     # double 98
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
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI0_2(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	.LCPI0_3(%rip), %xmm3   # xmm3 = mem[0],zero
	movsd	%xmm3, -16(%rbp)
	movsd	%xmm2, -24(%rbp)
	movsd	-16(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-24(%rbp), %xmm2
	movsd	%xmm2, -16(%rbp)
	mulsd	-16(%rbp), %xmm1
	movaps	%xmm0, %xmm2
	mulsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -8(%rbp)
	cvtsi2sdl	-8(%rbp), %xmm1
	divsd	%xmm0, %xmm1
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
	callq	test
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
	.asciz	"%lf\n"
	.size	.L.str.2, 5

	.ident	"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test
	.addrsig_sym printf
