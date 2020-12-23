	.text
	.file	"function-ptr.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function fun
.LCPI0_0:
	.long	1084201579              # float 4.98759985
.LCPI0_1:
	.long	1266679808              # float 16777216
	.text
	.globl	fun
	.p2align	4, 0x90
	.type	fun,@function
fun:                                    # @fun
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movss	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movss	(%rax), %xmm2           # xmm2 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	mulss	(%rax), %xmm2
	movq	global.fixp, %rax
	movaps	%xmm1, %xmm3
	mulss	%xmm2, %xmm3
	cvttss2si	%xmm3, %rcx
	addq	%rax, %rcx
	cvtsi2ss	%rcx, %xmm2
	divss	%xmm1, %xmm2
	movss	%xmm2, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movss	%xmm0, (%rax)
	movss	-20(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movabsq	$.L.str.2, %rdi
	movb	$1, %al
	callq	printf
	movq	-8(%rbp), %rcx
	movl	%eax, -24(%rbp)         # 4-byte Spill
	movq	%rcx, %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	fun, .Lfunc_end0-fun
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function main
.LCPI1_0:
	.long	1074580685              # float 2.20000005
.LCPI1_3:
	.long	1115684864              # float 64
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI1_1:
	.quad	4737786807993761792     # double 536870912
.LCPI1_2:
	.quad	4634204016564240384     # double 64
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
	movss	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movl	$0, -4(%rbp)
	movabsq	$5422396416, %rax       # imm = 0x143333400
	movq	%rax, -24(%rbp)
	movss	%xmm0, -28(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$25, %edi
	callq	malloc
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	$6, (%rax)
	movq	-48(%rbp), %rax
	movl	$70, 4(%rax)
	movq	-48(%rbp), %rax
	movl	$140, 8(%rax)
	movl	$0, -52(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -52(%rbp)
	jge	.LBB1_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movsd	.LCPI1_2(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movslq	-52(%rbp), %rcx
	cvtsi2sdl	(%rax,%rcx,4), %xmm1
	divsd	%xmm0, %xmm1
	movabsq	$.L.str.2, %rdi
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	printf
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB1_1
.LBB1_4:                                # %for.end
	movl	$0, -56(%rbp)
.LBB1_5:                                # %for.cond9
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$5, -56(%rbp)
	jge	.LBB1_8
# %bb.6:                                # %for.body12
                                        #   in Loop: Header=BB1_5 Depth=1
	movss	.LCPI1_3(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	cvtsi2ssl	-56(%rbp), %xmm1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	cvtsi2ss	%eax, %xmm2
	divss	%xmm2, %xmm1
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movq	-48(%rbp), %rcx
	movslq	-56(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.7:                                # %for.inc16
                                        #   in Loop: Header=BB1_5 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB1_5
.LBB1_8:                                # %for.end18
	movl	$0, -60(%rbp)
.LBB1_9:                                # %for.cond20
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$5, -60(%rbp)
	jge	.LBB1_12
# %bb.10:                               # %for.body23
                                        #   in Loop: Header=BB1_9 Depth=1
	movsd	.LCPI1_2(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movslq	-60(%rbp), %rcx
	cvtsi2sdl	(%rax,%rcx,4), %xmm1
	divsd	%xmm0, %xmm1
	movabsq	$.L.str.2, %rdi
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	printf
# %bb.11:                               # %for.inc28
                                        #   in Loop: Header=BB1_9 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB1_9
.LBB1_12:                               # %for.end30
	movsd	.LCPI1_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	cvtsi2sdq	(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movabsq	$.L.str.2, %rdi
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	printf
	leaq	-16(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	movl	%eax, -64(%rbp)         # 4-byte Spill
	callq	fun.1_s35_29fixp
	movsd	.LCPI1_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	cvtsi2sdq	(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movabsq	$.L.str.2, %rdi
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	printf
	movsd	.LCPI1_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	cvtsi2sdq	(%rcx), %xmm1
	divsd	%xmm0, %xmm1
	movabsq	$.L.str.2, %rdi
	movaps	%xmm1, %xmm0
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movb	$1, %al
	callq	printf
	movabsq	$.L.str.5, %rdi
	movl	%eax, -72(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	xorl	%edx, %edx
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	addq	$80, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function fun.1_s35_29fixp
.LCPI2_0:
	.long	1266679808              # float 16777216
	.text
	.p2align	4, 0x90
	.type	fun.1_s35_29fixp,@function
fun.1_s35_29fixp:                       # @fun.1_s35_29fixp
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movss	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	imulq	%rcx
	shldq	$35, %rax, %rdx
	movq	global.fixp, %rax
	sarq	$5, %rdx
	addq	%rax, %rdx
	cvtsi2ss	%rdx, %xmm1
	divss	%xmm0, %xmm1
	movss	%xmm1, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$2677697280, %ecx       # imm = 0x9F9A6B00
	movq	%rcx, (%rax)
	movss	-20(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movabsq	$.L.str.2, %rdi
	movb	$1, %al
	callq	printf
	movq	-8(%rbp), %rcx
	movl	%eax, -24(%rbp)         # 4-byte Spill
	movq	%rcx, %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	fun.1_s35_29fixp, .Lfunc_end2-fun.1_s35_29fixp
	.cfi_endproc
                                        # -- End function
	.type	global,@object          # @global
	.data
	.globl	global
	.p2align	2
global:
	.long	1079332831              # float 3.33299994
	.size	global, 4

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"%f\n"
	.size	.L.str.2, 4

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"-------------------\n"
	.size	.L.str.5, 21

	.type	global.fixp,@object     # @global.fixp
	.data
	.globl	global.fixp
	.p2align	3
global.fixp:
	.quad	55918460                # 0x3553f7c
	.size	global.fixp, 8

	.ident	"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf
	.addrsig_sym malloc
	.addrsig_sym fun.1_s35_29fixp
	.addrsig_sym global
	.addrsig_sym global.fixp
