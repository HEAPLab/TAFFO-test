	.text
	.file	"function-return-ptr.c"
	.globl	fun                     # -- Begin function fun
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
	movabsq	$glob.fixp, %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	fun, .Lfunc_end0-fun
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI1_0:
	.quad	4728779608739020800     # double 134217728
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI1_1:
	.long	1291845632              # float 134217728
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
	callq	fun.1_s5_27fixp
	movabsq	$.L.str.4, %rdi
	leaq	-4(%rbp), %rsi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	movb	$0, %al
	callq	__isoc99_scanf
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movss	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	mulss	-4(%rbp), %xmm1
	cvttss2si	%xmm1, %ecx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	%ecx, (%rdx)
	cvtsi2sdl	(%rdx), %xmm1
	divsd	%xmm0, %xmm1
	movabsq	$.L.str.5, %rdi
	movaps	%xmm1, %xmm0
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
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function fun.1_s5_27fixp
	.type	fun.1_s5_27fixp,@function
fun.1_s5_27fixp:                        # @fun.1_s5_27fixp
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movabsq	$glob.fixp.1, %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	fun.1_s5_27fixp, .Lfunc_end2-fun.1_s5_27fixp
	.cfi_endproc
                                        # -- End function
	.type	glob,@object            # @glob
	.comm	glob,4,4
	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"%f"
	.size	.L.str.4, 3

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%f\n"
	.size	.L.str.5, 4

	.type	glob.fixp,@object       # @glob.fixp
	.comm	glob.fixp,4,4
	.type	glob.fixp.1,@object     # @glob.fixp.1
	.comm	glob.fixp.1,4,4
	.ident	"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fun
	.addrsig_sym __isoc99_scanf
	.addrsig_sym printf
	.addrsig_sym fun.1_s5_27fixp
	.addrsig_sym glob
	.addrsig_sym glob.fixp
	.addrsig_sym glob.fixp.1
