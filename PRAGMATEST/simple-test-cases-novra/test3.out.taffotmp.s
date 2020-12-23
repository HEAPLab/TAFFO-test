	.text
	.file	"test3.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function random
.LCPI0_0:
	.quad	4751297606873776128     # double 4294967295
	.text
	.globl	random
	.p2align	4, 0x90
	.type	random,@function
random:                                 # @random
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	random.seed(%rip), %eax
	imull	$-928963441, %eax, %eax # imm = 0xC8A1248F
	movl	%eax, %ecx
	addl	$42, %ecx
                                        # implicit-def: $rdx
	movl	%eax, %edx
	shrl	%ecx
	movl	%ecx, %esi
	movq	%rsi, %rdi
	shlq	$30, %rdi
	addq	%rdi, %rsi
	shrq	$60, %rsi
                                        # kill: def $esi killed $esi killed $rsi
	andl	$-2, %esi
                                        # implicit-def: $rdi
	movl	%esi, %edi
	leal	42(%rdx,%rdi), %eax
	movl	%eax, random.seed(%rip)
	movl	random.seed(%rip), %eax
	movl	%eax, %edx
	cvtsi2sd	%rdx, %xmm1
	divsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	random, .Lfunc_end0-random
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function test
.LCPI1_0:
	.long	1199570944              # float 65536
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
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movss	%xmm0, -16(%rbp)
	movss	%xmm1, -20(%rbp)
	movss	%xmm2, -24(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB1_2
# %bb.1:                                # %if.then
	movss	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	mulss	-24(%rbp), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB1_3
.LBB1_2:                                # %if.else
	movl	$98304, -28(%rbp)       # imm = 0x18000
.LBB1_3:                                # %if.end
	callq	random
	movss	.LCPI1_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movl	-28(%rbp), %eax
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %ecx
	movslq	%eax, %rdx
	movslq	%ecx, %rsi
	imulq	%rsi, %rdx
	sarq	$16, %rdx
                                        # kill: def $edx killed $edx killed $rdx
	movl	%edx, -28(%rbp)
	cmpl	$0, -8(%rbp)
	je	.LBB1_5
# %bb.4:                                # %if.then3
	movss	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	-16(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movl	-28(%rbp), %eax
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %ecx
	addl	%ecx, %eax
	movl	%eax, -28(%rbp)
	callq	random
	movss	.LCPI1_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movl	-28(%rbp), %eax
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %ecx
	movslq	%eax, %rdx
	movslq	%ecx, %rsi
	imulq	%rsi, %rdx
	sarq	$16, %rdx
                                        # kill: def $edx killed $edx killed $rdx
	movl	%edx, -28(%rbp)
	jmp	.LBB1_6
.LBB1_5:                                # %if.else6
	callq	random
	movss	.LCPI1_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movl	-28(%rbp), %eax
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %ecx
	movslq	%eax, %rdx
	shlq	$16, %rdx
	movslq	%ecx, %rsi
	movq	%rdx, %rax
	cqto
	idivq	%rsi
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -28(%rbp)
.LBB1_6:                                # %if.end8
	movss	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	cvtsi2ssl	-28(%rbp), %xmm1
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	test, .Lfunc_end1-test
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function test2
.LCPI2_0:
	.long	1199570944              # float 65536
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	$0, -8(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB2_2
# %bb.1:                                # %if.then
	callq	random
	movss	.LCPI2_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movl	-8(%rbp), %eax
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %ecx
	addl	%ecx, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB2_3
.LBB2_2:                                # %if.else
	movl	-8(%rbp), %eax
	addl	$131072, %eax           # imm = 0x20000
	movl	%eax, -8(%rbp)
.LBB2_3:                                # %if.end
	callq	random
	movss	.LCPI2_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movl	-8(%rbp), %eax
	movaps	%xmm1, %xmm2
	mulss	%xmm0, %xmm2
	cvttss2si	%xmm2, %ecx
	addl	%ecx, %eax
	movl	%eax, -8(%rbp)
	cvtsi2ssl	-8(%rbp), %xmm0
	divss	%xmm1, %xmm0
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	test2, .Lfunc_end2-test2
	.cfi_endproc
                                        # -- End function
	.type	random.seed,@object     # @random.seed
	.data
	.p2align	2
random.seed:
	.long	123456                  # 0x1e240
	.size	random.seed, 4

	.ident	"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym random
	.addrsig_sym random.seed
