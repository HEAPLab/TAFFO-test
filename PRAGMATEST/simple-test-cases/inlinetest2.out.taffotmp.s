	.text
	.file	"inlinetest2.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function hello
.LCPI0_0:
	.long	1084227584              # float 5
	.text
	.globl	hello
	.p2align	4, 0x90
	.type	hello,@function
hello:                                  # @hello
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movss	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	addss	20(%rdi), %xmm0
	movss	%xmm0, 20(%rdi)
                                        # implicit-def: $xmm0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	hello, .Lfunc_end0-hello
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI1_0:
	.quad	4715268809856909312     # double 16777216
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
	subq	$64, %rsp
	xorl	%eax, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB1_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax         # 4-byte Reload
	cmpl	$10, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jge	.LBB1_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rcx
	movl	$2063597568, -48(%rbp,%rcx,4) # imm = 0x7B000000
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax         # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB1_1
.LBB1_4:                                # %for.end
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	-28(%rbp), %eax
	addl	$83886080, %eax         # imm = 0x5000000
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sd	%rcx, %xmm1
	divsd	%xmm0, %xmm1
	movabsq	$.L.str.2, %rdi
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	printf
	xorl	%edx, %edx
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"%a\n"
	.size	.L.str.2, 4

	.ident	"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf
