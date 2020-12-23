	.text
	.file	"test_cpp11attributes.cpp"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function _Z4oveniif
.LCPI0_0:
	.long	1224736768              # float 524288
	.text
	.globl	_Z4oveniif
	.p2align	4, 0x90
	.type	_Z4oveniif,@function
_Z4oveniif:                             # @_Z4oveniif
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movss	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movl	-8(%rbp), %eax
	addl	-4(%rbp), %eax
	shll	$19, %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	movaps	%xmm1, %xmm0
	mulss	-12(%rbp), %xmm0
	cvttss2si	%xmm0, %ecx
	addl	%ecx, %eax
	cvtsi2ss	%eax, %xmm0
	divss	%xmm1, %xmm0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	_Z4oveniif, .Lfunc_end0-_Z4oveniif
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z4oveniif
