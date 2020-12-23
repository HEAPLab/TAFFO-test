	.text
	.file	"test5.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function fpextfptrunc
.LCPI0_0:
	.long	1199570944              # float 65536
.LCPI0_1:
	.long	1191182336              # float 32768
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI0_2:
	.quad	4674736413210574848     # double 32768
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
	movss	.LCPI0_1(%rip), %xmm3   # xmm3 = mem[0],zero,zero,zero
	movsd	.LCPI0_2(%rip), %xmm4   # xmm4 = mem[0],zero
	mulsd	%xmm1, %xmm4
	cvttsd2si	%xmm4, %eax
	mulss	%xmm0, %xmm3
	cvttss2si	%xmm3, %ecx
	addl	$4030464, %ecx          # imm = 0x3D8000
	addl	%eax, %ecx
	shll	$1, %ecx
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
