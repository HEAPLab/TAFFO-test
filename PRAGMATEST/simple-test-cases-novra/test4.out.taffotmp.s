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
	callq	random
	movss	.LCPI1_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %eax
	movl	%eax, -16(%rbp)
	callq	random
	movss	.LCPI1_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB1_2
# %bb.1:                                # %if.then
	movl	$65536, -24(%rbp)       # imm = 0x10000
	jmp	.LBB1_3
.LBB1_2:                                # %if.else
	movl	$78643, -24(%rbp)       # imm = 0x13333
.LBB1_3:                                # %if.end
	cmpl	$0, -12(%rbp)
	je	.LBB1_5
# %bb.4:                                # %cond.true
	movl	-16(%rbp), %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jmp	.LBB1_6
.LBB1_5:                                # %cond.false
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB1_6:                                # %cond.end
	movl	-28(%rbp), %eax         # 4-byte Reload
	movslq	-24(%rbp), %rcx
	movslq	%eax, %rdx
	imulq	%rdx, %rcx
	sarq	$16, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, -24(%rbp)
	cmpl	$0, -8(%rbp)
	je	.LBB1_8
# %bb.7:                                # %if.then7
	movl	-24(%rbp), %eax
	addl	$52428, %eax            # imm = 0xCCCC
	movl	%eax, -24(%rbp)
	jmp	.LBB1_9
.LBB1_8:                                # %if.else9
	movl	-24(%rbp), %eax
	addl	$19660, %eax            # imm = 0x4CCC
	movl	%eax, -24(%rbp)
.LBB1_9:                                # %if.end13
	movss	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	cvtsi2ssl	-24(%rbp), %xmm1
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
