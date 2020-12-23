	.text
	.file	"constant_globals.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI0_0:
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
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$5, -20(%rbp)
	jge	.LBB0_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movslq	-20(%rbp), %rax
	cvtsi2sdl	k.fixp(,%rax,4), %xmm1
	divsd	%xmm0, %xmm1
	movabsq	$.L.str, %rdi
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	printf
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_1
.LBB0_4:                                # %for.end
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf
	movl	$0, -24(%rbp)
.LBB0_5:                                # %for.cond3
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
	cmpl	$3, -24(%rbp)
	jge	.LBB0_12
# %bb.6:                                # %for.body6
                                        #   in Loop: Header=BB0_5 Depth=1
	movl	$0, -28(%rbp)
.LBB0_7:                                # %for.cond7
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -28(%rbp)
	jge	.LBB0_10
# %bb.8:                                # %for.body10
                                        #   in Loop: Header=BB0_7 Depth=2
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movslq	-24(%rbp), %rax
	imulq	$12, %rax, %rax
	movabsq	$kx.fixp, %rcx
	addq	%rax, %rcx
	movslq	-28(%rbp), %rax
	cvtsi2sdl	(%rcx,%rax,4), %xmm1
	divsd	%xmm0, %xmm1
	movslq	-24(%rbp), %rax
	imulq	$12, %rax, %rax
	movabsq	$ky.fixp, %rcx
	addq	%rax, %rcx
	movslq	-28(%rbp), %rax
	cvtsi2sdl	(%rcx,%rax,4), %xmm2
	divsd	%xmm0, %xmm2
	movabsq	$.L.str.2, %rdi
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movb	$2, %al
	callq	printf
# %bb.9:                                # %for.inc22
                                        #   in Loop: Header=BB0_7 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_7
.LBB0_10:                               # %for.end24
                                        #   in Loop: Header=BB0_5 Depth=1
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf
# %bb.11:                               # %for.inc26
                                        #   in Loop: Header=BB0_5 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_5
.LBB0_12:                               # %for.end28
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf
	xorl	%ecx, %ecx
	movl	%eax, -32(%rbp)         # 4-byte Spill
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

	.type	k.fixp,@object          # @k.fixp
	.p2align	4
k.fixp:
	.long	8388608                 # 0x800000
	.long	16777216                # 0x1000000
	.long	25165824                # 0x1800000
	.long	33554432                # 0x2000000
	.long	41943040                # 0x2800000
	.size	k.fixp, 20

	.type	kx.fixp,@object         # @kx.fixp
	.p2align	4
kx.fixp:
	.long	4286578688              # 0xff800000
	.long	4278190080              # 0xff000000
	.long	4286578688              # 0xff800000
	.zero	12
	.long	8388608                 # 0x800000
	.long	16777216                # 0x1000000
	.long	8388608                 # 0x800000
	.size	kx.fixp, 36

	.type	ky.fixp,@object         # @ky.fixp
	.p2align	4
ky.fixp:
	.long	4286578688              # 0xff800000
	.long	0                       # 0x0
	.long	8388608                 # 0x800000
	.long	4278190080              # 0xff000000
	.long	0                       # 0x0
	.long	16777216                # 0x1000000
	.long	4286578688              # 0xff800000
	.long	0                       # 0x0
	.long	8388608                 # 0x800000
	.size	ky.fixp, 36

	.ident	"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf
	.addrsig_sym k
	.addrsig_sym kx
	.addrsig_sym ky
	.addrsig_sym k.fixp
	.addrsig_sym kx.fixp
	.addrsig_sym ky.fixp
