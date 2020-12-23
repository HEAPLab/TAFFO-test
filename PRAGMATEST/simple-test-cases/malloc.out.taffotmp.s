	.text
	.file	"malloc.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI0_0:
	.quad	4742290407621132288     # double 1073741824
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI0_1:
	.long	1317011456              # float 1.07374182E+9
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
	movl	$40, %eax
	movl	%edi, -8(%rbp)          # 4-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -16(%rbp)         # 8-byte Spill
	callq	malloc
	xorl	%ecx, %ecx
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movl	%ecx, -28(%rbp)         # 4-byte Spill
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax         # 4-byte Reload
	cmpl	$10, %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
	jge	.LBB0_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movabsq	$.L.str.2, %rdi
	leaq	-4(%rbp), %rsi
	movb	$0, %al
	callq	__isoc99_scanf
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movss	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movss	-4(%rbp), %xmm2         # xmm2 = mem[0],zero,zero,zero
	movl	-32(%rbp), %ecx         # 4-byte Reload
	movslq	%ecx, %rdx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movss	%xmm2, (%rsi,%rdx,4)
	movslq	%ecx, %rdx
	mulss	(%rsi,%rdx,4), %xmm1
	cvttss2si	%xmm1, %r8d
	cvtsi2sd	%r8d, %xmm1
	divsd	%xmm0, %xmm1
	movabsq	$.L.str.3, %rdi
	movaps	%xmm1, %xmm0
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movb	$1, %al
	callq	printf
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-32(%rbp), %eax         # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
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
	.addrsig_sym __isoc99_scanf
	.addrsig_sym printf
