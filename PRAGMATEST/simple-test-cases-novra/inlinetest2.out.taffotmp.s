	.text
	.file	"inlinetest2.c"
	.globl	hello                   # -- Begin function hello
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	20(%rax), %ecx
	addl	$26353590, %ecx         # imm = 0x1921FB6
	movl	%ecx, 20(%rax)
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
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
	subq	$80, %rsp
	movl	$0, -12(%rbp)
	movl	%edi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$0, -68(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$10, -68(%rbp)
	jge	.LBB1_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movslq	-68(%rbp), %rax
	movl	$1031798784, -64(%rbp,%rax,4) # imm = 0x3D800000
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB1_1
.LBB1_4:                                # %for.end
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	leaq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	20(%rax), %ecx
	addl	$26353590, %ecx         # imm = 0x1921FB6
	movl	%ecx, 20(%rax)
	cvtsi2sdl	-44(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movabsq	$.L.str.2, %rdi
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	printf
	xorl	%ecx, %ecx
	movl	%eax, -72(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	addq	$80, %rsp
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
