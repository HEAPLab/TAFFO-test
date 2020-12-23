	.text
	.file	"function-double-indirection.c"
	.globl	function_1_2            # -- Begin function function_1_2
	.p2align	4, 0x90
	.type	function_1_2,@function
function_1_2:                           # @function_1_2
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtsi2ssl	-12(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, (%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	function_1_2, .Lfunc_end0-function_1_2
	.cfi_endproc
                                        # -- End function
	.globl	function_1_1            # -- Begin function function_1_1
	.p2align	4, 0x90
	.type	function_1_1,@function
function_1_1:                           # @function_1_1
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	function_1_2
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	function_1_1, .Lfunc_end1-function_1_1
	.cfi_endproc
                                        # -- End function
	.globl	function_2_2            # -- Begin function function_2_2
	.p2align	4, 0x90
	.type	function_2_2,@function
function_2_2:                           # @function_2_2
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	mulss	(%rax), %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, (%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	function_2_2, .Lfunc_end2-function_2_2
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function function_2_1
.LCPI3_0:
	.long	1300234240              # float 268435456
	.text
	.globl	function_2_1
	.p2align	4, 0x90
	.type	function_2_1,@function
function_2_1:                           # @function_2_1
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movss	.LCPI3_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movq	%rdi, -8(%rbp)
	movl	$.L.str.2, %edi
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	leaq	-12(%rbp), %rsi
	movss	%xmm0, -20(%rbp)        # 4-byte Spill
	callq	__isoc99_scanf
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI3_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, -16(%rbp)
	leaq	-16(%rbp), %rdi
	movl	%eax, -24(%rbp)         # 4-byte Spill
	movss	%xmm1, -28(%rbp)        # 4-byte Spill
	callq	function_2_2.1_fixp
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rdx
	movss	(%rdx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	-28(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %rsi
                                        # kill: def $esi killed $esi killed $rsi
	addl	%eax, %esi
	movl	%esi, %edi
	cvtsi2ss	%rdi, %xmm0
	movss	-20(%rbp), %xmm2        # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	divss	%xmm2, %xmm0
	movss	%xmm0, (%rdx)
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	function_2_1, .Lfunc_end3-function_2_1
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI4_0:
	.quad	4733283208366391296     # double 268435456
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
	subq	$48, %rsp
	movsd	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1342177280, -20(%rbp)  # imm = 0x50000000
	movl	$2, -24(%rbp)
	movl	-24(%rbp), %esi
	leaq	-20(%rbp), %rax
	movq	%rax, %rdi
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	function_1_1.3_fixp
	movl	-20(%rbp), %ecx
	movl	%ecx, %eax
	cvtsi2sd	%rax, %xmm0
	movsd	.LCPI4_0(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movl	$.L.str.2, %edi
	movb	$1, %al
	callq	printf
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	function_2_1.2_fixp
	movl	-20(%rbp), %eax
	movl	%eax, %edx
	cvtsi2sd	%rdx, %xmm0
	movsd	-32(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movabsq	$.L.str.2, %rdi
	movb	$1, %al
	callq	printf
	xorl	%ecx, %ecx
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	main, .Lfunc_end4-main
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function function_2_2.1_fixp
	.type	function_2_2.1_fixp,@function
function_2_2.1_fixp:                    # @function_2_2.1_fixp
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movl	%edx, %ecx
	movl	%ecx, %esi
	imulq	%rsi, %rax
	shrq	$28, %rax
                                        # kill: def $eax killed $eax killed $rax
	movq	-8(%rbp), %rsi
	movl	%eax, (%rsi)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	function_2_2.1_fixp, .Lfunc_end5-function_2_2.1_fixp
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function function_2_1.2_fixp
.LCPI6_0:
	.long	1300234240              # float 268435456
	.text
	.p2align	4, 0x90
	.type	function_2_1.2_fixp,@function
function_2_1.2_fixp:                    # @function_2_1.2_fixp
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	$.L.str.2, %edi
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	leaq	-12(%rbp), %rsi
	callq	__isoc99_scanf
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI6_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, -16(%rbp)
	leaq	-16(%rbp), %rdi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	function_2_2.1.4_fixp
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rdx
	addl	(%rdx), %eax
	movl	%eax, (%rdx)
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	function_2_1.2_fixp, .Lfunc_end6-function_2_1.2_fixp
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function function_1_1.3_fixp
	.type	function_1_1.3_fixp,@function
function_1_1.3_fixp:                    # @function_1_1.3_fixp
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	function_1_2.5_fixp
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end7:
	.size	function_1_1.3_fixp, .Lfunc_end7-function_1_1.3_fixp
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function function_2_2.1.4_fixp
	.type	function_2_2.1.4_fixp,@function
function_2_2.1.4_fixp:                  # @function_2_2.1.4_fixp
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movl	%edx, %ecx
	movl	%ecx, %esi
	imulq	%rsi, %rax
	shrq	$28, %rax
                                        # kill: def $eax killed $eax killed $rax
	movq	-8(%rbp), %rsi
	movl	%eax, (%rsi)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end8:
	.size	function_2_2.1.4_fixp, .Lfunc_end8-function_2_2.1.4_fixp
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function function_1_2.5_fixp
	.type	function_1_2.5_fixp,@function
function_1_2.5_fixp:                    # @function_1_2.5_fixp
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movl	-12(%rbp), %edx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movslq	%edx, %rdi
	imulq	%rdi, %rax
                                        # kill: def $eax killed $eax killed $rax
	movq	-8(%rbp), %rdi
	movl	%eax, (%rdi)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end9:
	.size	function_1_2.5_fixp, .Lfunc_end9-function_1_2.5_fixp
	.cfi_endproc
                                        # -- End function
	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"%f"
	.size	.L.str.2, 3

	.ident	"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym function_1_2
	.addrsig_sym __isoc99_scanf
	.addrsig_sym printf
	.addrsig_sym function_2_2.1_fixp
	.addrsig_sym function_2_1.2_fixp
	.addrsig_sym function_1_1.3_fixp
	.addrsig_sym function_2_2.1.4_fixp
	.addrsig_sym function_1_2.5_fixp
