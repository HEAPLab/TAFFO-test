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
	subq	$64, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movabsq	$.L.str.2, %rdi
	leaq	-40(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	leaq	-56(%rbp), %rcx
	movb	$0, %al
	callq	__isoc99_scanf
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movss	.LCPI0_2(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	movss	.LCPI0_3(%rip), %xmm3   # xmm3 = mem[0],zero,zero,zero
	movsd	-40(%rbp), %xmm4        # xmm4 = mem[0],zero
	cvtsd2ss	%xmm4, %xmm4
	mulss	%xmm4, %xmm3
	cvttss2si	%xmm3, %r8d
	movl	%r8d, -32(%rbp)
	cvttsd2si	-48(%rbp), %r8d
	movl	%r8d, -28(%rbp)
	movsd	-56(%rbp), %xmm3        # xmm3 = mem[0],zero
	cvtsd2ss	%xmm3, %xmm3
	mulss	%xmm3, %xmm2
	cvttss2si	%xmm2, %r8d
	movl	%r8d, -24(%rbp)
	cvtsi2sdl	-32(%rbp), %xmm2
	divsd	%xmm1, %xmm2
	movl	-28(%rbp), %esi
	cvtsi2sdl	-24(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movabsq	$.L.str.3, %rdi
	movaps	%xmm2, %xmm0
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movb	$2, %al
	callq	printf
	xorl	%esi, %esi
	movl	%eax, -64(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	addq	$64, %rsp
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
	.asciz	"%lf%lf%lf"
	.size	.L.str.2, 10

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%a\n%d\n%a\n"
	.size	.L.str.3, 10

	.ident	"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __isoc99_scanf
	.addrsig_sym printf
