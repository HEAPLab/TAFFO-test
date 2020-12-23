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
	movss	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, %eax
	movl	%eax, %ecx
	shlq	$1, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	shll	$29, %edi
	addl	%edi, %ecx
	shrl	$29, %ecx
	cvtsi2ss	%ecx, %xmm0
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
	cvtsi2sd	%edi, %xmm1
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
