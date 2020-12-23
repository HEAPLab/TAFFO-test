	.text
	.file	"global.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI0_0:
	.quad	4728779608739020800     # double 134217728
.LCPI0_1:
	.quad	4611686018427387904     # double 2
.LCPI0_2:
	.quad	4737786807993761792     # double 536870912
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
	subq	$16, %rsp
	xorl	%eax, %eax
	movl	%eax, -4(%rbp)          # 4-byte Spill
	jmp	.LBB0_1
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax          # 4-byte Reload
	cmpl	$10, %eax
	movl	%eax, -8(%rbp)          # 4-byte Spill
	jge	.LBB0_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-8(%rbp), %eax          # 4-byte Reload
	cvtsi2sd	%eax, %xmm0
	movsd	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	.LCPI0_2(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	movslq	%eax, %rdx
	movl	%ecx, vec.fixp(,%rdx,4)
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-8(%rbp), %eax          # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -4(%rbp)          # 4-byte Spill
	jmp	.LBB0_1
.LBB0_4:                                # %for.end
	xorl	%eax, %eax
	movl	$-1610612736, scal.fixp # imm = 0xA0000000
	movl	%eax, -12(%rbp)         # 4-byte Spill
.LBB0_5:                                # %for.cond2
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax         # 4-byte Reload
	cmpl	$10, %eax
	movl	%eax, -16(%rbp)         # 4-byte Spill
	jge	.LBB0_8
# %bb.6:                                # %for.body5
                                        #   in Loop: Header=BB0_5 Depth=1
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	-16(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rcx
	movl	vec.fixp(,%rcx,4), %edx
	movl	%edx, %ecx
	movl	scal.fixp(%rip), %edx
	movl	%edx, %esi
	imulq	%rsi, %rcx
	shrq	$31, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, %ecx
	movl	%ecx, %esi
	cvtsi2sd	%rsi, %xmm1
	divsd	%xmm0, %xmm1
	movabsq	$.L.str, %rdi
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	printf
# %bb.7:                                # %for.inc8
                                        #   in Loop: Header=BB0_5 Depth=1
	movl	-16(%rbp), %eax         # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
	jmp	.LBB0_5
.LBB0_8:                                # %for.end10
	xorl	%eax, %eax
	addq	$16, %rsp
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
