	.text
	.file	"disabled-propagation.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI0_0:
	.quad	4616189618054758400     # double 4
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
	movabsq	$.L.str.3, %rax
	movl	%edi, -4(%rbp)          # 4-byte Spill
	movq	%rax, %rdi
	xorps	%xmm0, %xmm0
	movb	$1, %al
	movq	%rsi, -16(%rbp)         # 8-byte Spill
	callq	printf
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movabsq	$.L.str.3, %rdi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	movb	$1, %al
	callq	printf
	xorl	%ecx, %ecx
	movl	%eax, -24(%rbp)         # 4-byte Spill
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
