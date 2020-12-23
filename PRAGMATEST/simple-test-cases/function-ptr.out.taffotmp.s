	.text
	.file	"function-ptr.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function fun
.LCPI0_0:
	.long	1084201579              # float 4.98759985
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
	subq	$16, %rsp
	movss	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movq	(%rdi), %rax
	movss	(%rax), %xmm1           # xmm1 = mem[0],zero,zero,zero
	mulss	(%rsi), %xmm1
	addss	global, %xmm1
	movq	(%rdi), %rax
	movss	%xmm0, (%rax)
	cvtss2sd	%xmm1, %xmm0
	movabsq	$.L.str.2, %rax
	movq	%rdi, -8(%rbp)          # 8-byte Spill
	movq	%rax, %rdi
	movb	$1, %al
	callq	printf
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%eax, -12(%rbp)         # 4-byte Spill
	movq	%rcx, %rax
	addq	$16, %rsp
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
.LCPI1_1:
	.long	1066192077              # float 1.10000002
.LCPI1_2:
	.long	1036831949              # float 0.100000001
.LCPI1_5:
	.long	1308622848              # float 536870912
.LCPI1_7:
	.long	1317011456              # float 1.07374182E+9
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI1_3:
	.quad	4733283208366391296     # double 268435456
.LCPI1_4:
	.quad	4737786807993761792     # double 536870912
.LCPI1_6:
	.quad	4742290407621132288     # double 1073741824
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
	subq	$112, %rsp
	movl	$-1583769088, -12(%rbp) # imm = 0xA1999A00
	leaq	-12(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$25, %edi
	callq	malloc
	xorl	%ecx, %ecx
	movss	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI1_2(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	movq	%rax, %rdx
	movss	%xmm2, (%rax)
	movss	%xmm1, 4(%rax)
	movss	%xmm0, 8(%rax)
	movq	%rdx, -24(%rbp)         # 8-byte Spill
	movl	%ecx, -28(%rbp)         # 4-byte Spill
.LBB1_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax         # 4-byte Reload
	cmpl	$3, %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
	jge	.LBB1_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movsd	.LCPI1_6(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	-32(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movss	(%rdx,%rcx,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI1_7(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm1
	cvttss2si	%xmm1, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, %ecx
	movl	%ecx, %esi
	cvtsi2sd	%rsi, %xmm1
	divsd	%xmm0, %xmm1
	movabsq	$.L.str.2, %rdi
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	printf
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-32(%rbp), %eax         # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jmp	.LBB1_1
.LBB1_4:                                # %for.end
	xorl	%eax, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB1_5
.LBB1_5:                                # %for.cond9
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax         # 4-byte Reload
	cmpl	$5, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jge	.LBB1_8
# %bb.6:                                # %for.body12
                                        #   in Loop: Header=BB1_5 Depth=1
	movl	-40(%rbp), %eax         # 4-byte Reload
	cvtsi2ss	%eax, %xmm0
	addl	$1, %eax
	cvtsi2ss	%eax, %xmm1
	divss	%xmm1, %xmm0
	movl	-40(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movss	%xmm0, (%rdx,%rcx,4)
# %bb.7:                                # %for.inc16
                                        #   in Loop: Header=BB1_5 Depth=1
	movl	-40(%rbp), %eax         # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB1_5
.LBB1_8:                                # %for.end18
	xorl	%eax, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB1_9
.LBB1_9:                                # %for.cond20
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax         # 4-byte Reload
	cmpl	$5, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jge	.LBB1_12
# %bb.10:                               # %for.body23
                                        #   in Loop: Header=BB1_9 Depth=1
	movsd	.LCPI1_4(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	-48(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movss	(%rdx,%rcx,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI1_5(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm1
	cvttss2si	%xmm1, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, %ecx
	movl	%ecx, %esi
	cvtsi2sd	%rsi, %xmm1
	divsd	%xmm0, %xmm1
	movabsq	$.L.str.2, %rdi
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	printf
# %bb.11:                               # %for.inc28
                                        #   in Loop: Header=BB1_9 Depth=1
	movl	-48(%rbp), %eax         # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB1_9
.LBB1_12:                               # %for.end30
	movsd	.LCPI1_3(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, %eax
	cvtsi2sd	%rax, %xmm1
	movsd	.LCPI1_3(%rip), %xmm2   # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	movl	$.L.str.2, %eax
	movb	$1, %dl
	movq	%rax, %rdi
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movb	%dl, %al
	movsd	%xmm2, -72(%rbp)        # 8-byte Spill
	movb	%dl, -73(%rbp)          # 1-byte Spill
	callq	printf
	leaq	-8(%rbp), %rdi
	leaq	-12(%rbp), %rsi
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	fun.1_u4_28fixp
	movq	-8(%rbp), %rsi
	movl	(%rsi), %ecx
	movl	%ecx, %esi
	cvtsi2sd	%rsi, %xmm0
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movb	-73(%rbp), %dl          # 1-byte Reload
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movb	%dl, %al
	callq	printf
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rdi
	movl	(%rdi), %ecx
	movl	%ecx, %edi
	cvtsi2sd	%rdi, %xmm0
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movabsq	$.L.str.2, %rdi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movb	$1, %al
	callq	printf
	movabsq	$.L.str.4, %rdi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	xorl	%ecx, %ecx
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	addq	$112, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function fun.1_u4_28fixp
.LCPI2_0:
	.long	1275068416              # float 33554432
	.text
	.p2align	4, 0x90
	.type	fun.1_u4_28fixp,@function
fun.1_u4_28fixp:                        # @fun.1_u4_28fixp
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movss	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movq	(%rdi), %rax
	movl	(%rax), %ecx
	movl	%ecx, %eax
	movl	(%rsi), %ecx
	movl	%ecx, %edx
	imulq	%rdx, %rax
	shrq	$31, %rax
                                        # kill: def $eax killed $eax killed $rax
	movss	global(%rip), %xmm1     # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI2_0(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm1
	cvttss2si	%xmm1, %rdx
                                        # kill: def $edx killed $edx killed $rdx
	addl	%edx, %eax
	movl	%eax, %esi
	cvtsi2ss	%rsi, %xmm1
	divss	%xmm0, %xmm1
	movq	(%rdi), %rsi
	movl	$1338848640, (%rsi)     # imm = 0x4FCD3580
	cvtss2sd	%xmm1, %xmm0
	movabsq	$.L.str.2, %rsi
	movq	%rdi, -8(%rbp)          # 8-byte Spill
	movq	%rsi, %rdi
	movb	$1, %al
	callq	printf
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, -12(%rbp)         # 4-byte Spill
	movq	%rsi, %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	fun.1_u4_28fixp, .Lfunc_end2-fun.1_u4_28fixp
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

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"-------------------\n"
	.size	.L.str.4, 21

	.ident	"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf
	.addrsig_sym malloc
	.addrsig_sym fun.1_u4_28fixp
	.addrsig_sym global
