	.text
	.file	"disabled-propagation.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI0_0:
	.quad	4742290407621132288     # double 1073741824
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
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1, -20(%rbp)
	movl	$2147483647, -24(%rbp)  # imm = 0x7FFFFFFF
	movl	-20(%rbp), %eax
	movslq	-24(%rbp), %rcx
	shlq	$1, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	movslq	%eax, %rdx
	shlq	$30, %rdx
	movslq	%ecx, %rsi
	movq	%rdx, %rax
	cqto
	idivq	%rsi
	shlq	$30, %rax
                                        # kill: def $eax killed $eax killed $rax
	cvtsi2sd	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movabsq	$.L.str.3, %rdi
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	printf
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movslq	-24(%rbp), %rsi
	shlq	$1, %rsi
                                        # kill: def $esi killed $esi killed $rsi
	movl	-20(%rbp), %ecx
	movslq	%esi, %rdi
	movslq	%ecx, %r8
	movl	%eax, -28(%rbp)         # 4-byte Spill
	movq	%rdi, %rax
	cqto
	idivq	%r8
                                        # kill: def $eax killed $eax killed $rax
	cvtsi2sd	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movabsq	$.L.str.3, %rdi
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	printf
	xorl	%ecx, %ecx
	movl	%eax, -32(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	addq	$32, %rsp
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
	.asciz	"%f\n"
	.size	.L.str.3, 4

	.ident	"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf
