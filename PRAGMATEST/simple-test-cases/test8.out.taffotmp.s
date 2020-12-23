	.text
	.file	"test8.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function cast
.LCPI0_0:
	.long	1199570944              # float 65536
.LCPI0_1:
	.long	1182793728              # float 16384
.LCPI0_2:
	.long	1191182336              # float 32768
	.text
	.globl	cast
	.p2align	4, 0x90
	.type	cast,@function
cast:                                   # @cast
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movss	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI0_2(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	movl	4(%rdi), %eax
	movl	4(%rsi), %ecx
	subl	%eax, %ecx
	movl	%ecx, 4(%rsi)
	movaps	%xmm2, %xmm3
	mulss	(%rdi), %xmm3
	cvttss2si	%xmm3, %eax
	mulss	8(%rdx), %xmm2
	cvttss2si	%xmm2, %ecx
	sarl	$1, %eax
	sarl	$1, %ecx
	subl	%ecx, %eax
	movaps	%xmm1, %xmm2
	mulss	(%rdx), %xmm2
	cvttss2si	%xmm2, %ecx
	subl	%eax, %ecx
	cvtsi2ss	%ecx, %xmm2
	divss	%xmm1, %xmm2
	movss	%xmm2, (%rdx)
	movaps	%xmm0, %xmm1
	mulss	(%rdx), %xmm1
	cvttss2si	%xmm1, %eax
	cvtsi2ss	%eax, %xmm1
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	cast, .Lfunc_end0-cast
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
