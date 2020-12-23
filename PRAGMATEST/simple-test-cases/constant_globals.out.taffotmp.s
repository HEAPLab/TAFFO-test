	.text
	.file	"constant_globals.c"
	.globl	main                    # -- Begin function main
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
	xorl	%eax, %eax
	movl	%eax, -4(%rbp)          # 4-byte Spill
	jmp	.LBB0_1
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax          # 4-byte Reload
	cmpl	$5, %eax
	movl	%eax, -8(%rbp)          # 4-byte Spill
	jge	.LBB0_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-8(%rbp), %eax          # 4-byte Reload
	movslq	%eax, %rcx
	movss	k(,%rcx,4), %xmm0       # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movabsq	$.L.str, %rdi
	movb	$1, %al
	callq	printf
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-8(%rbp), %eax          # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -4(%rbp)          # 4-byte Spill
	jmp	.LBB0_1
.LBB0_4:                                # %for.end
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf
	xorl	%ecx, %ecx
	movl	%ecx, -12(%rbp)         # 4-byte Spill
.LBB0_5:                                # %for.cond3
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
	movl	-12(%rbp), %eax         # 4-byte Reload
	cmpl	$3, %eax
	movl	%eax, -16(%rbp)         # 4-byte Spill
	jge	.LBB0_12
# %bb.6:                                # %for.body6
                                        #   in Loop: Header=BB0_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, -20(%rbp)         # 4-byte Spill
	jmp	.LBB0_7
.LBB0_7:                                # %for.cond7
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-20(%rbp), %eax         # 4-byte Reload
	cmpl	$3, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	jge	.LBB0_10
# %bb.8:                                # %for.body10
                                        #   in Loop: Header=BB0_7 Depth=2
	movl	-16(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rcx
	imulq	$12, %rcx, %rcx
	movabsq	$kx, %rdx
	addq	%rcx, %rdx
	movl	-24(%rbp), %esi         # 4-byte Reload
	movslq	%esi, %rcx
	movss	(%rdx,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movslq	%eax, %rcx
	imulq	$12, %rcx, %rcx
	movabsq	$ky, %rdx
	addq	%rcx, %rdx
	movslq	%esi, %rcx
	movss	(%rdx,%rcx,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movabsq	$.L.str.2, %rdi
	movb	$2, %al
	callq	printf
# %bb.9:                                # %for.inc22
                                        #   in Loop: Header=BB0_7 Depth=2
	movl	-24(%rbp), %eax         # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -20(%rbp)         # 4-byte Spill
	jmp	.LBB0_7
.LBB0_10:                               # %for.end24
                                        #   in Loop: Header=BB0_5 Depth=1
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf
# %bb.11:                               # %for.inc26
                                        #   in Loop: Header=BB0_5 Depth=1
	movl	-16(%rbp), %eax         # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
	jmp	.LBB0_5
.LBB0_12:                               # %for.end28
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf
	xorl	%ecx, %ecx
	movl	%eax, -28(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%f "
	.size	.L.str, 4

	.type	k,@object               # @k
	.data
	.p2align	4
k:
	.long	1065353216              # float 1
	.long	1073741824              # float 2
	.long	1077936128              # float 3
	.long	1082130432              # float 4
	.long	1084227584              # float 5
	.size	k, 20

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"\n"
	.size	.L.str.1, 2

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"(%f, %f) "
	.size	.L.str.2, 10

	.type	kx,@object              # @kx
	.data
	.p2align	4
kx:
	.long	3212836864              # float -1
	.long	3221225472              # float -2
	.long	3212836864              # float -1
	.zero	12
	.long	1065353216              # float 1
	.long	1073741824              # float 2
	.long	1065353216              # float 1
	.size	kx, 36

	.type	ky,@object              # @ky
	.p2align	4
ky:
	.long	3212836864              # float -1
	.long	0                       # float 0
	.long	1065353216              # float 1
	.long	3221225472              # float -2
	.long	0                       # float 0
	.long	1073741824              # float 2
	.long	3212836864              # float -1
	.long	0                       # float 0
	.long	1065353216              # float 1
	.size	ky, 36

	.ident	"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf
	.addrsig_sym k
	.addrsig_sym kx
	.addrsig_sym ky
