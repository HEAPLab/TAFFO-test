	.text
	.file	"test4.c"
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
	.long	1067030938              # float 1.20000005
.LCPI1_1:
	.long	1065353216              # float 1
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI1_2:
	.quad	4599075939470750515     # double 0.29999999999999999
.LCPI1_3:
	.quad	4605380978949069210     # double 0.80000000000000004
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
	movl	%edi, -16(%rbp)         # 4-byte Spill
	movl	%esi, -20(%rbp)         # 4-byte Spill
	movl	%edx, -24(%rbp)         # 4-byte Spill
	callq	random
	movss	%xmm0, -4(%rbp)
	callq	random
	movss	%xmm0, -8(%rbp)
	movl	-16(%rbp), %eax         # 4-byte Reload
	cmpl	$0, %eax
	je	.LBB1_2
# %bb.1:                                # %if.then
	movss	.LCPI1_1(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -12(%rbp)
	jmp	.LBB1_3
.LBB1_2:                                # %if.else
	movss	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -12(%rbp)
.LBB1_3:                                # %if.end
	movl	-24(%rbp), %eax         # 4-byte Reload
	cmpl	$0, %eax
	je	.LBB1_5
# %bb.4:                                # %cond.true
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -28(%rbp)        # 4-byte Spill
	jmp	.LBB1_6
.LBB1_5:                                # %cond.false
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -28(%rbp)        # 4-byte Spill
.LBB1_6:                                # %cond.end
	movss	-28(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	mulss	-12(%rbp), %xmm0
	movss	%xmm0, -12(%rbp)
	movl	-20(%rbp), %eax         # 4-byte Reload
	cmpl	$0, %eax
	je	.LBB1_8
# %bb.7:                                # %if.then7
	movsd	.LCPI1_3(%rip), %xmm0   # xmm0 = mem[0],zero
	movss	-12(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	addsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	jmp	.LBB1_9
.LBB1_8:                                # %if.else9
	movsd	.LCPI1_2(%rip), %xmm0   # xmm0 = mem[0],zero
	movss	-12(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	addsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
.LBB1_9:                                # %if.end13
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	test, .Lfunc_end1-test
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
