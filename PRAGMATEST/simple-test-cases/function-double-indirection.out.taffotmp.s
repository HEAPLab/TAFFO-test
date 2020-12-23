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
	movss	(%rdi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtsi2ss	%esi, %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, (%rdi)
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
	callq	function_1_2.4_fixp
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
	movss	(%rdi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	(%rdi), %xmm0
	movss	%xmm0, (%rdi)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	function_2_2, .Lfunc_end2-function_2_2
	.cfi_endproc
                                        # -- End function
	.globl	function_2_1            # -- Begin function function_2_1
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
	movabsq	$.L.str.3, %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	leaq	-4(%rbp), %rsi
	movb	$0, %al
	callq	__isoc99_scanf
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -8(%rbp)
	leaq	-8(%rbp), %rdi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	function_2_2.1_fixp
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rcx         # 8-byte Reload
	addss	(%rcx), %xmm0
	movss	%xmm0, (%rcx)
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
	.quad	4719772409484279808     # double 33554432
.LCPI4_1:
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
	movl	$167772160, -4(%rbp)    # imm = 0xA000000
	leaq	-4(%rbp), %rax
	movl	$2, %ecx
	movl	%edi, -8(%rbp)          # 4-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -16(%rbp)         # 8-byte Spill
	movl	%ecx, %esi
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	function_1_1.3_fixp
	movl	-4(%rbp), %ecx
	shll	$3, %ecx
	movl	%ecx, %eax
	cvtsi2sd	%rax, %xmm0
	movsd	.LCPI4_1(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movl	$.L.str.5, %edi
	movb	$1, %al
	callq	printf
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	function_2_1.2_fixp
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	cvtsi2sd	%rdx, %xmm0
	movsd	-24(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movabsq	$.L.str.5, %rdi
	movb	$1, %al
	callq	printf
	xorl	%ecx, %ecx
	movl	%eax, -40(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	main, .Lfunc_end4-main
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function function_1_2.4_fixp
	.type	function_1_2.4_fixp,@function
function_1_2.4_fixp:                    # @function_1_2.4_fixp
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movss	(%rdi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtsi2ss	%esi, %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, (%rdi)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	function_1_2.4_fixp, .Lfunc_end5-function_1_2.4_fixp
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
	movss	(%rdi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	(%rdi), %xmm0
	movss	%xmm0, (%rdi)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	function_2_2.1_fixp, .Lfunc_end6-function_2_2.1_fixp
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function function_2_1.2_fixp
.LCPI7_0:
	.long	1275068416              # float 33554432
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
	movl	$.L.str.3, %eax
	xorl	%ecx, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	leaq	-4(%rbp), %rsi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movb	%cl, %al
	callq	__isoc99_scanf
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI7_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %rdx
                                        # kill: def $edx killed $edx killed $rdx
	movl	%edx, -8(%rbp)
	leaq	-8(%rbp), %rdi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	function_2_2.1.5_fixp
	movl	-8(%rbp), %eax
	movq	-16(%rbp), %rsi         # 8-byte Reload
	addl	(%rsi), %eax
	movl	%eax, (%rsi)
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end7:
	.size	function_2_1.2_fixp, .Lfunc_end7-function_2_1.2_fixp
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
	callq	function_1_2.6_fixp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end8:
	.size	function_1_1.3_fixp, .Lfunc_end8-function_1_1.3_fixp
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function function_2_2.1.5_fixp
	.type	function_2_2.1.5_fixp,@function
function_2_2.1.5_fixp:                  # @function_2_2.1.5_fixp
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	(%rdi), %eax
	movl	(%rdi), %ecx
	movl	%eax, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	movl	%eax, %esi
	imulq	%rsi, %rdx
	shrq	$25, %rdx
                                        # kill: def $edx killed $edx killed $rdx
	movl	%edx, (%rdi)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end9:
	.size	function_2_2.1.5_fixp, .Lfunc_end9-function_2_2.1.5_fixp
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function function_1_2.6_fixp
	.type	function_1_2.6_fixp,@function
function_1_2.6_fixp:                    # @function_1_2.6_fixp
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	(%rdi), %eax
	movl	%eax, %ecx
	movslq	%esi, %rdx
	imulq	%rdx, %rcx
	shlq	$3, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	shrl	$3, %ecx
	movl	%ecx, (%rdi)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end10:
	.size	function_1_2.6_fixp, .Lfunc_end10-function_1_2.6_fixp
	.cfi_endproc
                                        # -- End function
	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"%f"
	.size	.L.str.3, 3

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%f\n"
	.size	.L.str.5, 4

	.ident	"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __isoc99_scanf
	.addrsig_sym printf
	.addrsig_sym function_1_2.4_fixp
	.addrsig_sym function_2_2.1_fixp
	.addrsig_sym function_2_1.2_fixp
	.addrsig_sym function_1_1.3_fixp
	.addrsig_sym function_2_2.1.5_fixp
	.addrsig_sym function_1_2.6_fixp
