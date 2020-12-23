	.text
	.file	"struct_integration_1.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI0_0:
	.quad	4737786807993761792     # double 536870912
.LCPI0_1:
	.quad	4692750811720056832     # double 524288
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI0_2:
	.long	1308622848              # float 536870912
.LCPI0_3:
	.long	1224736768              # float 524288
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
	movabsq	$.L.str.2, %rax
	movl	%edi, -32(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	leaq	-20(%rbp), %rax
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	leaq	-24(%rbp), %rdx
	leaq	-28(%rbp), %rcx
	movb	$0, %al
	callq	__isoc99_scanf
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movss	.LCPI0_2(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	movss	.LCPI0_3(%rip), %xmm3   # xmm3 = mem[0],zero,zero,zero
	mulss	-20(%rbp), %xmm3
	cvttss2si	%xmm3, %r8d
	movl	%r8d, -16(%rbp)
	cvttss2si	-24(%rbp), %r8d
	movl	%r8d, -12(%rbp)
	mulss	-28(%rbp), %xmm2
	cvttss2si	%xmm2, %r8d
	movl	%r8d, -8(%rbp)
	cvtsi2sdl	-16(%rbp), %xmm2
	divsd	%xmm1, %xmm2
	movl	-12(%rbp), %esi
	cvtsi2sdl	-8(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movabsq	$.L.str.3, %rdi
	movaps	%xmm2, %xmm0
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movb	$2, %al
	callq	printf
	xorl	%esi, %esi
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movl	%esi, %eax
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
	.asciz	"%f%f%f"
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%a\n%d\n%a\n"
	.size	.L.str.3, 10

	.ident	"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __isoc99_scanf
	.addrsig_sym printf
