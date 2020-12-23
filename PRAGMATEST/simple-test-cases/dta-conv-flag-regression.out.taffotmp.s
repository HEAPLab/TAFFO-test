	.text
	.file	"dta-conv-flag-regression.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function normalizeRadiantForCosine
.LCPI0_0:
	.quad	4618760256179416344     # double 6.2831853071795862
	.text
	.globl	normalizeRadiantForCosine
	.p2align	4, 0x90
	.type	normalizeRadiantForCosine,@function
normalizeRadiantForCosine:              # @normalizeRadiantForCosine
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorps	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	movaps	%xmm0, %xmm1
	movsd	%xmm0, -8(%rbp)         # 8-byte Spill
	movsd	%xmm1, -16(%rbp)        # 8-byte Spill
	jbe	.LBB0_2
# %bb.1:                                # %if.then
	movsd	-8(%rbp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movq	%rax, %xmm1
	movsd	%xmm1, -16(%rbp)        # 8-byte Spill
.LBB0_2:                                # %if.end
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
.LBB0_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	jb	.LBB0_5
# %bb.4:                                # %while.body
                                        #   in Loop: Header=BB0_3 Depth=1
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -24(%rbp)        # 8-byte Spill
	jmp	.LBB0_3
.LBB0_5:                                # %while.end
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	normalizeRadiantForCosine, .Lfunc_end0-normalizeRadiantForCosine
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function cos2
.LCPI1_0:
	.quad	4603178718731285037     # double 0.55549999999999999
.LCPI1_1:
	.quad	4652007308841189376     # double 1000
	.text
	.globl	cos2
	.p2align	4, 0x90
	.type	cos2,@function
cos2:                                   # @cos2
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	normalizeRadiantForCosine
	movsd	.LCPI1_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movslq	%eax, %rcx
	movsd	cosTable(,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	cos2, .Lfunc_end1-cos2
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI2_0:
	.quad	4724276009111650304     # double 67108864
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
	movabsq	$.L.str, %rdi
	leaq	-8(%rbp), %rsi
	movb	$0, %al
	callq	__isoc99_scanf
	movsd	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero
	mulsd	-8(%rbp), %xmm0
	cvttsd2si	%xmm0, %edi
	movl	%eax, -12(%rbp)         # 4-byte Spill
	callq	cos2.1_s6_26fixp
	movsd	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero
	cvtsi2sd	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movabsq	$.L.str.3, %rdi
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	printf
	xorl	%ecx, %ecx
	movl	%eax, -16(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function cos2.1_s6_26fixp
.LCPI3_0:
	.quad	4724276009111650304     # double 67108864
	.text
	.p2align	4, 0x90
	.type	cos2.1_s6_26fixp,@function
cos2.1_s6_26fixp:                       # @cos2.1_s6_26fixp
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	normalizeRadiantForCosine.2_s6_26fixp
	movsd	.LCPI3_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movslq	%eax, %rcx
	imulq	$1000, %rcx, %rcx       # imm = 0x3E8
                                        # kill: def $ecx killed $ecx killed $rcx
	addl	$37278973, %ecx         # imm = 0x238D4FD
	sarl	$26, %ecx
	movslq	%ecx, %rdx
	mulsd	cosTable(,%rdx,8), %xmm0
	cvttsd2si	%xmm0, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	cos2.1_s6_26fixp, .Lfunc_end3-cos2.1_s6_26fixp
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function normalizeRadiantForCosine.2_s6_26fixp
.LCPI4_0:
	.quad	4724276009111650304     # double 67108864
	.text
	.p2align	4, 0x90
	.type	normalizeRadiantForCosine.2_s6_26fixp,@function
normalizeRadiantForCosine.2_s6_26fixp:  # @normalizeRadiantForCosine.2_s6_26fixp
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movsd	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero
	cvtsi2sd	%edi, %xmm1
	divsd	%xmm0, %xmm1
	cmpl	$0, %edi
	movsd	%xmm1, -8(%rbp)         # 8-byte Spill
	movl	%edi, -12(%rbp)         # 4-byte Spill
	jge	.LBB4_2
# %bb.1:                                # %if.then
	movsd	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movq	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movq	%rax, %xmm2
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %edx
	movl	%edx, -12(%rbp)         # 4-byte Spill
.LBB4_2:                                # %if.end
	movl	-12(%rbp), %eax         # 4-byte Reload
	movl	%eax, -16(%rbp)         # 4-byte Spill
.LBB4_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax         # 4-byte Reload
	cmpl	$421657428, %eax        # imm = 0x1921FB54
	movl	%eax, -20(%rbp)         # 4-byte Spill
	jl	.LBB4_5
# %bb.4:                                # %while.body
                                        #   in Loop: Header=BB4_3 Depth=1
	movl	-20(%rbp), %eax         # 4-byte Reload
	subl	$421657428, %eax        # imm = 0x1921FB54
	movl	%eax, -16(%rbp)         # 4-byte Spill
	jmp	.LBB4_3
.LBB4_5:                                # %while.end
	movl	-20(%rbp), %eax         # 4-byte Reload
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	normalizeRadiantForCosine.2_s6_26fixp, .Lfunc_end4-normalizeRadiantForCosine.2_s6_26fixp
	.cfi_endproc
                                        # -- End function
	.type	cosTable,@object        # @cosTable
	.data
	.globl	cosTable
	.p2align	4
cosTable:
	.quad	4607182418800017408     # double 1
	.quad	4607182414296418156     # double 0.99999950000004167
	.quad	4607182400785624903     # double 0.99999800000066663
	.quad	4607182378267651161     # double 0.999995500003375
	.quad	4607182346742519447     # double 0.99999200001066668
	.size	cosTable, 40

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%lf"
	.size	.L.str, 4

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%lf\n"
	.size	.L.str.3, 5

	.ident	"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym normalizeRadiantForCosine
	.addrsig_sym __isoc99_scanf
	.addrsig_sym printf
	.addrsig_sym cos2.1_s6_26fixp
	.addrsig_sym normalizeRadiantForCosine.2_s6_26fixp
	.addrsig_sym cosTable
