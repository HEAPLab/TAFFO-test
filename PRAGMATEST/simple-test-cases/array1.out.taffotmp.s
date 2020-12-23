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
	subq	$256, %rsp              # imm = 0x100
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	%ecx, -136(%rbp)        # 4-byte Spill
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	-136(%rbp), %ecx        # 4-byte Reload
	cmpl	$30, %ecx
	movl	%eax, -144(%rbp)        # 4-byte Spill
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	jge	.LBB0_6
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movabsq	$.L.str.3, %rdi
	leaq	-132(%rbp), %rsi
	movb	$0, %al
	callq	__isoc99_scanf
	cmpl	$1, %eax
	jge	.LBB0_4
# %bb.3:                                # %if.then
	jmp	.LBB0_6
.LBB0_4:                                # %if.end
                                        #   in Loop: Header=BB0_1 Depth=1
	movss	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	mulss	-132(%rbp), %xmm0
	cvttss2si	%xmm0, %eax
	movl	-144(%rbp), %ecx        # 4-byte Reload
	addl	$1, %ecx
	movl	-144(%rbp), %edx        # 4-byte Reload
	movslq	%edx, %rsi
	movl	%eax, -128(%rbp,%rsi,4)
	movl	%ecx, -152(%rbp)        # 4-byte Spill
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-148(%rbp), %eax        # 4-byte Reload
	addl	$1, %eax
	movl	-152(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -136(%rbp)        # 4-byte Spill
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	jmp	.LBB0_1
.LBB0_6:                                # %for.end
	xorl	%eax, %eax
	movl	$524288, %ecx           # imm = 0x80000
	movl	%eax, %edx
	movl	%eax, %esi
	movl	%ecx, %edi
	movl	%edx, -156(%rbp)        # 4-byte Spill
	movl	%esi, -160(%rbp)        # 4-byte Spill
	movl	%edi, -164(%rbp)        # 4-byte Spill
	movl	%ecx, -168(%rbp)        # 4-byte Spill
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB0_7
.LBB0_7:                                # %for.cond10
                                        # =>This Inner Loop Header: Depth=1
	movl	-172(%rbp), %eax        # 4-byte Reload
	movl	-168(%rbp), %ecx        # 4-byte Reload
	movl	-164(%rbp), %edx        # 4-byte Reload
	movl	-160(%rbp), %esi        # 4-byte Reload
	movl	-156(%rbp), %edi        # 4-byte Reload
	movsd	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero
	cvtsi2sd	%ecx, %xmm1
	divsd	%xmm0, %xmm1
	cvtsi2sd	%edx, %xmm2
	divsd	%xmm0, %xmm2
	cvtsi2sd	%esi, %xmm3
	divsd	%xmm0, %xmm3
	cvtsi2sd	%edi, %xmm4
	divsd	%xmm0, %xmm4
	movl	-144(%rbp), %r8d        # 4-byte Reload
	cmpl	%r8d, %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	movl	%edx, -184(%rbp)        # 4-byte Spill
	movl	%esi, -188(%rbp)        # 4-byte Spill
	movl	%edi, -192(%rbp)        # 4-byte Spill
	movsd	%xmm1, -200(%rbp)       # 8-byte Spill
	movsd	%xmm2, -208(%rbp)       # 8-byte Spill
	movsd	%xmm3, -216(%rbp)       # 8-byte Spill
	movsd	%xmm4, -224(%rbp)       # 8-byte Spill
	jge	.LBB0_12
# %bb.8:                                # %for.body12
                                        #   in Loop: Header=BB0_7 Depth=1
	movl	-176(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movl	-188(%rbp), %edx        # 4-byte Reload
	addl	-128(%rbp,%rcx,4), %edx
	movslq	%eax, %rcx
	movl	-192(%rbp), %esi        # 4-byte Reload
	subl	-128(%rbp,%rcx,4), %esi
	movslq	%eax, %rcx
	cmpl	$0, -128(%rbp,%rcx,4)
	movl	-184(%rbp), %edi        # 4-byte Reload
	movl	%edx, -228(%rbp)        # 4-byte Spill
	movl	%esi, -232(%rbp)        # 4-byte Spill
	movl	%edi, -236(%rbp)        # 4-byte Spill
	je	.LBB0_10
# %bb.9:                                # %if.then23
                                        #   in Loop: Header=BB0_7 Depth=1
	movl	-176(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movl	-128(%rbp,%rcx,4), %edx
	movl	-184(%rbp), %esi        # 4-byte Reload
	movslq	%esi, %rcx
	shlq	$19, %rcx
	movslq	%edx, %rdi
	movq	%rcx, %rax
	cqto
	idivq	%rdi
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -236(%rbp)        # 4-byte Spill
.LBB0_10:                               # %if.end27
                                        #   in Loop: Header=BB0_7 Depth=1
	movl	-236(%rbp), %eax        # 4-byte Reload
	movl	-176(%rbp), %ecx        # 4-byte Reload
	movslq	%ecx, %rdx
	movl	-128(%rbp,%rdx,4), %esi
	movl	-180(%rbp), %edi        # 4-byte Reload
	movslq	%edi, %rdx
	movslq	%esi, %r8
	imulq	%r8, %rdx
	sarq	$19, %rdx
                                        # kill: def $edx killed $edx killed $rdx
	movl	%eax, -240(%rbp)        # 4-byte Spill
	movl	%edx, -244(%rbp)        # 4-byte Spill
# %bb.11:                               # %for.inc31
                                        #   in Loop: Header=BB0_7 Depth=1
	movl	-176(%rbp), %eax        # 4-byte Reload
	addl	$1, %eax
	movl	-232(%rbp), %ecx        # 4-byte Reload
	movl	-228(%rbp), %edx        # 4-byte Reload
	movl	-240(%rbp), %esi        # 4-byte Reload
	movl	-244(%rbp), %edi        # 4-byte Reload
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	movl	%edx, -160(%rbp)        # 4-byte Spill
	movl	%esi, -164(%rbp)        # 4-byte Spill
	movl	%edi, -168(%rbp)        # 4-byte Spill
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB0_7
.LBB0_12:                               # %for.end33
	movabsq	$.L.str.5, %rdi
	movsd	-216(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-224(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-208(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-200(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movb	$4, %al
	callq	printf
	xorl	%ecx, %ecx
	movl	%eax, -248(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	addq	$256, %rsp              # imm = 0x100
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

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"add: %f\nsub: %f\ndiv: %f\nmul: %f\n"
	.size	.L.str.5, 33

	.ident	"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __isoc99_scanf
	.addrsig_sym printf
