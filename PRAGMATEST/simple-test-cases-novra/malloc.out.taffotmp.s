	.text
	.file	"malloc.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI0_0:
	.quad	4706261610602168320     # double 4194304
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI0_1:
	.long	1249902592              # float 4194304
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
	subq	$48, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$40, %edi
	callq	malloc
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$10, -28(%rbp)
	jge	.LBB0_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movabsq	$.L.str.2, %rdi
	leaq	-32(%rbp), %rsi
	movb	$0, %al
	callq	scanf
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movss	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	mulss	-32(%rbp), %xmm1
	cvttss2si	%xmm1, %ecx
	movq	-24(%rbp), %rdx
	movslq	-28(%rbp), %rsi
	movl	%ecx, (%rdx,%rsi,4)
	movq	-24(%rbp), %rdx
	movslq	-28(%rbp), %rsi
	cvtsi2sdl	(%rdx,%rsi,4), %xmm1
	divsd	%xmm0, %xmm1
	movabsq	$.L.str.3, %rdi
	movaps	%xmm1, %xmm0
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movb	$1, %al
	callq	printf
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_1
.LBB0_4:                                # %for.end
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"%f"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%a\n"
	.size	.L.str.3, 4

	.ident	"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym malloc
	.addrsig_sym scanf
	.addrsig_sym printf
