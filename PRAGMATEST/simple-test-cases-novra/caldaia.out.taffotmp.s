	.text
	.file	"caldaia.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function main
.LCPI0_0:
	.long	3212836864              # float -1
.LCPI0_2:
	.long	1224736768              # float 524288
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI0_1:
	.quad	4692750811720056832     # double 524288
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
	subq	$64, %rsp
	movss	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$-524288, -20(%rbp)     # imm = 0xFFF80000
	movl	$-524288, -24(%rbp)     # imm = 0xFFF80000
	movss	%xmm0, -28(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -40(%rbp)
	movabsq	$.L.str.3, %rdi
	leaq	-28(%rbp), %rsi
	movb	$0, %al
	callq	__isoc99_scanf
.LBB0_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.LBB0_10
# %bb.2:                                # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.LBB0_9
# %bb.3:                                # %land.lhs.true
                                        #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -24(%rbp)
	jle	.LBB0_9
# %bb.4:                                # %land.lhs.true7
                                        #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -20(%rbp)
	jle	.LBB0_9
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB0_1 Depth=1
	movss	.LCPI0_2(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	-28(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movl	-24(%rbp), %eax
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %ecx
	cmpl	%eax, %ecx
	jge	.LBB0_8
# %bb.6:                                # %land.lhs.true10
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB0_8
# %bb.7:                                # %if.then12
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-24(%rbp), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
.LBB0_8:                                # %if.end
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_9
.LBB0_9:                                # %if.end13
                                        #   in Loop: Header=BB0_1 Depth=1
	movss	.LCPI0_2(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	-28(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movl	-36(%rbp), %eax
	movaps	%xmm0, %xmm2
	mulss	%xmm1, %xmm2
	cvttss2si	%xmm2, %ecx
	addl	%ecx, %eax
	movl	%eax, -36(%rbp)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
	mulss	-28(%rbp), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -24(%rbp)
	movabsq	$.L.str.3, %rdi
	leaq	-28(%rbp), %rsi
	movb	$0, %al
	callq	__isoc99_scanf
	jmp	.LBB0_1
.LBB0_10:                               # %while.end
	movabsq	$.L.str.4, %rdi
	movb	$0, %al
	callq	printf
	cmpl	$0, -40(%rbp)
	jle	.LBB0_12
# %bb.11:                               # %if.then19
	movsd	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	-32(%rbp), %eax
	movl	-40(%rbp), %ecx
	cltq
	movslq	%ecx, %rdx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	cqto
	movq	-56(%rbp), %rsi         # 8-byte Reload
	idivq	%rsi
                                        # kill: def $eax killed $eax killed $rax
	cvtsi2sd	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movabsq	$.L.str.5, %rdi
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	printf
	jmp	.LBB0_13
.LBB0_12:                               # %if.else
	movabsq	$.L.str.6, %rdi
	movb	$0, %al
	callq	printf
.LBB0_13:                               # %if.end23
	movabsq	$.L.str.7, %rdi
	movb	$0, %al
	callq	printf
	cmpl	$0, -44(%rbp)
	jle	.LBB0_15
# %bb.14:                               # %if.then27
	movsd	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	-36(%rbp), %eax
	movl	-44(%rbp), %ecx
	cltq
	movslq	%ecx, %rdx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	cqto
	movq	-64(%rbp), %rsi         # 8-byte Reload
	idivq	%rsi
                                        # kill: def $eax killed $eax killed $rax
	cvtsi2sd	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movabsq	$.L.str.5, %rdi
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	printf
	jmp	.LBB0_16
.LBB0_15:                               # %if.else32
	movabsq	$.L.str.6, %rdi
	movb	$0, %al
	callq	printf
.LBB0_16:                               # %if.end34
	xorl	%eax, %eax
	addq	$64, %rsp
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
	.asciz	"%f"
	.size	.L.str.3, 3

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Media picchi: "
	.size	.L.str.4, 15

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%f\n"
	.size	.L.str.5, 4

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"-\n"
	.size	.L.str.6, 3

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Media totale: "
	.size	.L.str.7, 15

	.ident	"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __isoc99_scanf
	.addrsig_sym printf
