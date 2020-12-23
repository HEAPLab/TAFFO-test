	.text
	.file	"array1.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function main
.LCPI0_0:
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
	subq	$192, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -148(%rbp)
	movl	$0, -156(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$30, -156(%rbp)
	jge	.LBB0_6
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movabsq	$.L.str.3, %rdi
	leaq	-152(%rbp), %rsi
	movb	$0, %al
	callq	__isoc99_scanf
	cmpl	$1, %eax
	jge	.LBB0_4
# %bb.3:                                # %if.then
	jmp	.LBB0_6
.LBB0_4:                                # %if.end
                                        #   in Loop: Header=BB0_1 Depth=1
	movss	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	mulss	-152(%rbp), %xmm0
	cvttss2si	%xmm0, %eax
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -148(%rbp)
	movslq	%ecx, %rsi
	movl	%eax, -144(%rbp,%rsi,4)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-156(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -156(%rbp)
	jmp	.LBB0_1
.LBB0_6:                                # %for.end
	movl	$0, -160(%rbp)
	movl	$0, -164(%rbp)
	movl	$524288, -168(%rbp)     # imm = 0x80000
	movl	$524288, -172(%rbp)     # imm = 0x80000
	movl	$0, -176(%rbp)
.LBB0_7:                                # %for.cond10
                                        # =>This Inner Loop Header: Depth=1
	movl	-176(%rbp), %eax
	cmpl	-148(%rbp), %eax
	jge	.LBB0_12
# %bb.8:                                # %for.body12
                                        #   in Loop: Header=BB0_7 Depth=1
	movslq	-176(%rbp), %rax
	movl	-144(%rbp,%rax,4), %ecx
	addl	-160(%rbp), %ecx
	movl	%ecx, -160(%rbp)
	movslq	-176(%rbp), %rax
	movl	-144(%rbp,%rax,4), %ecx
	movl	-164(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -164(%rbp)
	movslq	-176(%rbp), %rax
	cmpl	$0, -144(%rbp,%rax,4)
	je	.LBB0_10
# %bb.9:                                # %if.then23
                                        #   in Loop: Header=BB0_7 Depth=1
	movslq	-176(%rbp), %rax
	movl	-144(%rbp,%rax,4), %ecx
	movslq	-168(%rbp), %rax
	shlq	$19, %rax
	movslq	%ecx, %rdx
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	cqto
	movq	-184(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -168(%rbp)
.LBB0_10:                               # %if.end27
                                        #   in Loop: Header=BB0_7 Depth=1
	movslq	-176(%rbp), %rax
	movl	-144(%rbp,%rax,4), %ecx
	movslq	-172(%rbp), %rax
	movslq	%ecx, %rdx
	imulq	%rdx, %rax
	sarq	$19, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -172(%rbp)
# %bb.11:                               # %for.inc31
                                        #   in Loop: Header=BB0_7 Depth=1
	movl	-176(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -176(%rbp)
	jmp	.LBB0_7
.LBB0_12:                               # %for.end33
	movsd	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero
	cvtsi2sdl	-160(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	cvtsi2sdl	-164(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	cvtsi2sdl	-168(%rbp), %xmm3
	divsd	%xmm0, %xmm3
	cvtsi2sdl	-172(%rbp), %xmm4
	divsd	%xmm0, %xmm4
	movabsq	$.L.str.4, %rdi
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	movaps	%xmm4, %xmm3
	movb	$4, %al
	callq	printf
	xorl	%ecx, %ecx
	movl	%eax, -188(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	addq	$192, %rsp
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
	.asciz	"add: %f\nsub: %f\ndiv: %f\nmul: %f\n"
	.size	.L.str.4, 33

	.ident	"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __isoc99_scanf
	.addrsig_sym printf
