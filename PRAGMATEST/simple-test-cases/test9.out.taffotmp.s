	.text
	.file	"test9.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function oven
.LCPI0_0:
	.long	1199570944              # float 65536
	.text
	.globl	oven
	.p2align	4, 0x90
	.type	oven,@function
oven:                                   # @oven
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movss	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm1, %xmm2
	mulss	%xmm0, %xmm2
	cvttss2si	%xmm2, %eax
	addl	%edi, %esi
	shll	$16, %esi
	addl	%eax, %esi
	cvtsi2ss	%esi, %xmm0
	divss	%xmm1, %xmm0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	oven, .Lfunc_end0-oven
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
