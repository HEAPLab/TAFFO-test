	.text
	.file	"inlinetest.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function hello
.LCPI0_0:
	.long	1258291200              # float 8388608
	.text
	.globl	hello
	.p2align	4, 0x90
	.type	hello,@function
hello:                                  # @hello
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movss	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm1, %xmm2
	mulss	%xmm0, %xmm2
	cvttss2si	%xmm2, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	addl	$26353590, %eax         # imm = 0x1921FB6
	cvtsi2ss	%eax, %xmm0
	divss	%xmm1, %xmm0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	hello, .Lfunc_end0-hello
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI1_0:
	.quad	4710765210229538816     # double 8388608
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
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	$0, -8(%rbp)
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$1031798784, -28(%rbp)  # imm = 0x3D800000
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	addl	$26353590, %eax         # imm = 0x1921FB6
	movl	%eax, -28(%rbp)
	cvtsi2sdl	-28(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movabsq	$.L.str.2, %rdi
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
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"%a\n"
	.size	.L.str.2, 4

	.ident	"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf
