	.text
	.file	"global.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI0_0:
	.quad	4679240012837945344     # double 65536
.LCPI0_1:
	.quad	4614256656552045848     # double 3.1415926535897931
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
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$10, -20(%rbp)
	jge	.LBB0_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sdl	-20(%rbp), %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movslq	-20(%rbp), %rcx
	movl	%eax, vec.fixp(,%rcx,4)
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_1
.LBB0_4:                                # %for.end
	movl	$327680, scal.fixp      # imm = 0x50000
	movl	$0, -24(%rbp)
.LBB0_5:                                # %for.cond2
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$10, -24(%rbp)
	jge	.LBB0_8
# %bb.6:                                # %for.body5
                                        #   in Loop: Header=BB0_5 Depth=1
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movslq	-24(%rbp), %rax
	movl	vec.fixp(,%rax,4), %ecx
	movl	scal.fixp, %edx
	movslq	%ecx, %rax
	movslq	%edx, %rsi
	imulq	%rsi, %rax
	sarq	$16, %rax
                                        # kill: def $eax killed $eax killed $rax
	cvtsi2sd	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movabsq	$.L.str, %rdi
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	printf
# %bb.7:                                # %for.inc8
                                        #   in Loop: Header=BB0_5 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_5
.LBB0_8:                                # %for.end10
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	vec,@object             # @vec
	.comm	vec,80,16
	.type	scal,@object            # @scal
	.comm	scal,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%f\n"
	.size	.L.str, 4

	.type	vec.fixp,@object        # @vec.fixp
	.comm	vec.fixp,40,16
	.type	scal.fixp,@object       # @scal.fixp
	.comm	scal.fixp,4,8
	.ident	"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf
	.addrsig_sym vec
	.addrsig_sym scal
	.addrsig_sym vec.fixp
	.addrsig_sym scal.fixp
