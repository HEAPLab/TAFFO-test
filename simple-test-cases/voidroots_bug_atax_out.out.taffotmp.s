	.text
	.file	"atax.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI0_0:
	.quad	4674736413210574848     # double 32768
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$644600, %rsp           # imm = 0x9D5F8
	.cfi_def_cfa_offset 644608
	leaq	3216(%rsp), %rax
	leaq	4864(%rsp), %rcx
	movl	$0, 644484(%rsp)
	movl	%edi, 644480(%rsp)
	movq	%rsi, 644472(%rsp)
	movl	$390, 644468(%rsp)      # imm = 0x186
	movl	$410, 644464(%rsp)      # imm = 0x19A
	movl	644468(%rsp), %edx
	movl	644464(%rsp), %edi
	movl	%edx, 644528(%rsp)
	movl	%edi, 644524(%rsp)
	movq	%rcx, 644512(%rsp)
	movq	%rax, 644504(%rsp)
	movl	644524(%rsp), %edx
	shll	$15, %edx
	movl	%edx, 644488(%rsp)
	movl	$0, 644500(%rsp)
.LBB0_1:                                # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movl	644500(%rsp), %eax
	cmpl	644524(%rsp), %eax
	jge	.LBB0_3
# %bb.2:                                # %for.body.i
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	644500(%rsp), %eax
	movl	644488(%rsp), %ecx
	movslq	%eax, %rdx
	shlq	$15, %rdx
	movslq	%ecx, %rsi
	movq	%rdx, %rax
	cqto
	idivq	%rsi
	shlq	$15, %rax
                                        # kill: def $eax killed $eax killed $rax
	addl	$32768, %eax            # imm = 0x8000
	movq	644504(%rsp), %rsi
	movslq	644500(%rsp), %rdi
	movl	%eax, (%rsi,%rdi,4)
	movl	644500(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 644500(%rsp)
	jmp	.LBB0_1
.LBB0_3:                                # %for.end.i
	movl	$0, 644500(%rsp)
.LBB0_4:                                # %for.cond6.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
	movl	644500(%rsp), %eax
	cmpl	644528(%rsp), %eax
	jge	.LBB0_9
# %bb.5:                                # %for.body9.i
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	$0, 644496(%rsp)
.LBB0_6:                                # %for.cond10.i
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	644496(%rsp), %eax
	cmpl	644524(%rsp), %eax
	jge	.LBB0_8
# %bb.7:                                # %for.body13.i
                                        #   in Loop: Header=BB0_6 Depth=2
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	644500(%rsp), %eax
	addl	644496(%rsp), %eax
	cltd
	idivl	644524(%rsp)
	cvtsi2sd	%edx, %xmm1
	imull	$5, 644528(%rsp), %ecx
	cvtsi2sd	%ecx, %xmm2
	divsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movq	644512(%rsp), %rsi
	movslq	644500(%rsp), %rdi
	imulq	$1640, %rdi, %rdi       # imm = 0x668
	addq	%rdi, %rsi
	movslq	644496(%rsp), %rdi
	movl	%ecx, (%rsi,%rdi,4)
	movl	644496(%rsp), %ecx
	addl	$1, %ecx
	movl	%ecx, 644496(%rsp)
	jmp	.LBB0_6
.LBB0_8:                                # %for.end24.i
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	644500(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 644500(%rsp)
	jmp	.LBB0_4
.LBB0_9:                                # %init_array.exit
	movb	$0, %al
	callq	polybench_timer_start
	movq	%rsp, %rcx
	leaq	1568(%rsp), %rdx
	leaq	3216(%rsp), %rsi
	leaq	4864(%rsp), %rdi
	movl	644468(%rsp), %r8d
	movl	644464(%rsp), %r9d
	movl	%r8d, 644596(%rsp)
	movl	%r9d, 644592(%rsp)
	movq	%rdi, 644584(%rsp)
	movq	%rsi, 644576(%rsp)
	movq	%rdx, 644568(%rsp)
	movq	%rcx, 644560(%rsp)
	movl	$0, 644556(%rsp)
.LBB0_10:                               # %for.cond.i31
                                        # =>This Inner Loop Header: Depth=1
	movl	644556(%rsp), %eax
	cmpl	644592(%rsp), %eax
	jge	.LBB0_12
# %bb.11:                               # %for.body.i34
                                        #   in Loop: Header=BB0_10 Depth=1
	movq	644568(%rsp), %rax
	movslq	644556(%rsp), %rcx
	movl	$0, (%rax,%rcx,4)
	movl	644556(%rsp), %edx
	addl	$1, %edx
	movl	%edx, 644556(%rsp)
	jmp	.LBB0_10
.LBB0_12:                               # %for.end.i36
	movl	$0, 644556(%rsp)
.LBB0_13:                               # %for.cond7.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #     Child Loop BB0_18 Depth 2
	movl	644556(%rsp), %eax
	cmpl	644596(%rsp), %eax
	jge	.LBB0_21
# %bb.14:                               # %for.body9.i37
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	644560(%rsp), %rax
	movslq	644556(%rsp), %rcx
	movl	$0, (%rax,%rcx,4)
	movl	$0, 644552(%rsp)
.LBB0_15:                               # %for.cond12.i
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	644552(%rsp), %eax
	cmpl	644592(%rsp), %eax
	jge	.LBB0_17
# %bb.16:                               # %for.body14.i
                                        #   in Loop: Header=BB0_15 Depth=2
	movq	644560(%rsp), %rax
	movslq	644556(%rsp), %rcx
	movl	(%rax,%rcx,4), %edx
	movq	644584(%rsp), %rax
	movslq	644556(%rsp), %rcx
	imulq	$1640, %rcx, %rcx       # imm = 0x668
	addq	%rcx, %rax
	movslq	644552(%rsp), %rcx
	movl	(%rax,%rcx,4), %esi
	movq	644576(%rsp), %rax
	movslq	644552(%rsp), %rcx
	movl	(%rax,%rcx,4), %edi
	movslq	%esi, %rax
	movslq	%edi, %rcx
	imulq	%rcx, %rax
	sarq	$15, %rax
                                        # kill: def $eax killed $eax killed $rax
	addl	%eax, %edx
	movq	644560(%rsp), %rcx
	movslq	644556(%rsp), %r8
	movl	%edx, (%rcx,%r8,4)
	movl	644552(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 644552(%rsp)
	jmp	.LBB0_15
.LBB0_17:                               # %for.end27.i
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$0, 644552(%rsp)
.LBB0_18:                               # %for.cond28.i
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	644552(%rsp), %eax
	cmpl	644592(%rsp), %eax
	jge	.LBB0_20
# %bb.19:                               # %for.body30.i
                                        #   in Loop: Header=BB0_18 Depth=2
	movq	644568(%rsp), %rax
	movslq	644552(%rsp), %rcx
	movl	(%rax,%rcx,4), %edx
	movq	644584(%rsp), %rax
	movslq	644556(%rsp), %rcx
	imulq	$1640, %rcx, %rcx       # imm = 0x668
	addq	%rcx, %rax
	movslq	644552(%rsp), %rcx
	movl	(%rax,%rcx,4), %esi
	movq	644560(%rsp), %rax
	movslq	644556(%rsp), %rcx
	movl	(%rax,%rcx,4), %edi
	movslq	%esi, %rax
	movslq	%edi, %rcx
	imulq	%rcx, %rax
	sarq	$15, %rax
                                        # kill: def $eax killed $eax killed $rax
	addl	%eax, %edx
	movq	644568(%rsp), %rcx
	movslq	644552(%rsp), %r8
	movl	%edx, (%rcx,%r8,4)
	movl	644552(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 644552(%rsp)
	jmp	.LBB0_18
.LBB0_20:                               # %for.end45.i
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	644556(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 644556(%rsp)
	jmp	.LBB0_13
.LBB0_21:                               # %kernel_atax.exit
	movb	$0, %al
	callq	polybench_timer_stop
	movb	$0, %al
	callq	polybench_timer_print
	leaq	1568(%rsp), %rcx
	movl	644464(%rsp), %edx
	movl	%edx, 644548(%rsp)
	movq	%rcx, 644536(%rsp)
	movl	$0, 644532(%rsp)
.LBB0_22:                               # %for.cond.i14
                                        # =>This Inner Loop Header: Depth=1
	movl	644532(%rsp), %eax
	cmpl	644548(%rsp), %eax
	jge	.LBB0_26
# %bb.23:                               # %for.body.i16
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	644532(%rsp), %eax
	cltd
	movl	$20, %ecx
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB0_25
# %bb.24:                               # %if.then.i
                                        #   in Loop: Header=BB0_22 Depth=1
	movq	__stderrp, %rdi
	movabsq	$.L.str.2, %rsi
	movb	$0, %al
	callq	fprintf
.LBB0_25:                               # %if.end.i
                                        #   in Loop: Header=BB0_22 Depth=1
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	__stderrp, %rdi
	movq	644536(%rsp), %rax
	movslq	644532(%rsp), %rcx
	cvtsi2sdl	(%rax,%rcx,4), %xmm1
	divsd	%xmm0, %xmm1
	movabsq	$.L.str.3, %rsi
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	fprintf
	movl	644532(%rsp), %edx
	addl	$1, %edx
	movl	%edx, 644532(%rsp)
	jmp	.LBB0_22
.LBB0_26:                               # %print_array.exit
	xorl	%eax, %eax
	addq	$644600, %rsp           # imm = 0x9D5F8
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"\n"
	.size	.L.str.2, 2

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%0.16lf "
	.size	.L.str.3, 9

	.ident	"clang version 4.0.0 (tags/RELEASE_400/final)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym polybench_timer_start
	.addrsig_sym polybench_timer_stop
	.addrsig_sym polybench_timer_print
	.addrsig_sym fprintf
	.addrsig_sym __stderrp
