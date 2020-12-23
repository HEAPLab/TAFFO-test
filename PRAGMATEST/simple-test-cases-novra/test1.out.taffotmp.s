	.text
	.file	"test1.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function test
.LCPI0_0:
	.long	1308622848              # float 536870912
	.text
	.globl	test
	.p2align	4, 0x90
	.type	test,@function
test:                                   # @test
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movss	%xmm0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movl	$1073741824, -16(%rbp)  # imm = 0x40000000
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movl	-16(%rbp), %eax
	movss	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%eax, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	movl	%eax, %esi
	imulq	%rsi, %rdx
	shrq	$29, %rdx
                                        # kill: def $edx killed $edx killed $rdx
	movl	%edx, -16(%rbp)
	movl	-8(%rbp), %eax
	movl	-16(%rbp), %ecx
	shll	$29, %eax
	addl	%eax, %ecx
	movl	%ecx, -16(%rbp)
	movl	-16(%rbp), %eax
	shrl	$29, %eax
	movl	%eax, -12(%rbp)
	cvtsi2ssl	-12(%rbp), %xmm0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	test, .Lfunc_end0-test
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function test2
.LCPI1_0:
	.quad	4611686018427387904     # double 2
	.text
	.globl	test2
	.p2align	4, 0x90
	.type	test2,@function
test2:                                  # @test2
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	%edi, -4(%rbp)
	cvtsi2sdl	-4(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	test2, .Lfunc_end1-test2
	.cfi_endproc
                                        # -- End function
	.type	global,@object          # @global
	.comm	global,4,4
	.ident	"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
