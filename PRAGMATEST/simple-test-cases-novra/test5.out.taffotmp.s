	.text
	.file	"test5.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function fpextfptrunc
.LCPI0_0:
	.long	1199570944              # float 65536
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI0_1:
	.quad	4679240012837945344     # double 65536
.LCPI0_2:
	.quad	4638355772470722560     # double 123
	.text
	.globl	fpextfptrunc
	.p2align	4, 0x90
	.type	fpextfptrunc,@function
fpextfptrunc:                           # @fpextfptrunc
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movss	.LCPI0_0(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	movsd	.LCPI0_1(%rip), %xmm3   # xmm3 = mem[0],zero
	movsd	.LCPI0_2(%rip), %xmm4   # xmm4 = mem[0],zero
	movaps	%xmm3, %xmm5
	mulsd	%xmm1, %xmm5
	cvttsd2si	%xmm5, %eax
	movaps	%xmm2, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %ecx
	movl	%ecx, -4(%rbp)
	movl	%eax, -8(%rbp)
	movsd	%xmm4, -16(%rbp)
	movl	-4(%rbp), %eax
	movaps	%xmm3, %xmm0
	mulsd	-16(%rbp), %xmm0
	cvttsd2si	%xmm0, %ecx
	addl	%eax, %ecx
	cvtsi2sd	%ecx, %xmm0
	divsd	%xmm3, %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	-8(%rbp), %eax
	mulsd	%xmm0, %xmm3
	cvttsd2si	%xmm3, %ecx
	addl	%eax, %ecx
	cvtsi2ss	%ecx, %xmm0
	divss	%xmm2, %xmm0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	fpextfptrunc, .Lfunc_end0-fpextfptrunc
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fpextfptrunc
