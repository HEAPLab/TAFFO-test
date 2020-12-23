	.text
	.file	"caldaia.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function main
.LCPI0_0:
	.long	3212836864              # float -1
.LCPI0_3:
	.long	1224736768              # float 524288
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI0_1:
	.quad	4701758010974797824     # double 2097152
.LCPI0_2:
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
	subq	$112, %rsp
	movss	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
	movabsq	$.L.str.3, %rax
	movl	%edi, -8(%rbp)          # 4-byte Spill
	movq	%rax, %rdi
	leaq	-4(%rbp), %rax
	movq	%rsi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movb	$0, %al
	callq	__isoc99_scanf
	xorl	%ecx, %ecx
	movss	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movl	$4294443008, %edx       # imm = 0xFFF80000
	movl	%ecx, %r8d
	movl	%ecx, %r9d
	movl	%ecx, %r10d
	movl	%r8d, -20(%rbp)         # 4-byte Spill
	movss	%xmm0, -24(%rbp)        # 4-byte Spill
	movl	%edx, -28(%rbp)         # 4-byte Spill
	movl	%r9d, -32(%rbp)         # 4-byte Spill
	movl	%r10d, -36(%rbp)        # 4-byte Spill
	movl	%ecx, -40(%rbp)         # 4-byte Spill
.LBB0_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax         # 4-byte Reload
	movl	-36(%rbp), %ecx         # 4-byte Reload
	movl	-32(%rbp), %edx         # 4-byte Reload
	movl	-28(%rbp), %esi         # 4-byte Reload
	movss	-24(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movl	-20(%rbp), %edi         # 4-byte Reload
	movss	-4(%rbp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm1
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	movl	%edx, -52(%rbp)         # 4-byte Spill
	movl	%esi, -56(%rbp)         # 4-byte Spill
	movss	%xmm0, -60(%rbp)        # 4-byte Spill
	movl	%edi, -64(%rbp)         # 4-byte Spill
	jbe	.LBB0_10
# %bb.2:                                # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	movl	-64(%rbp), %eax         # 4-byte Reload
	movl	-48(%rbp), %ecx         # 4-byte Reload
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movl	%ecx, -72(%rbp)         # 4-byte Spill
	jbe	.LBB0_9
# %bb.3:                                # %land.lhs.true
                                        #   in Loop: Header=BB0_1 Depth=1
	xorps	%xmm0, %xmm0
	movss	-60(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	movl	-64(%rbp), %eax         # 4-byte Reload
	movl	-48(%rbp), %ecx         # 4-byte Reload
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movl	%ecx, -72(%rbp)         # 4-byte Spill
	jbe	.LBB0_9
# %bb.4:                                # %land.lhs.true8
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-56(%rbp), %eax         # 4-byte Reload
	cmpl	$0, %eax
	movl	-64(%rbp), %ecx         # 4-byte Reload
	movl	-48(%rbp), %edx         # 4-byte Reload
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	movl	%edx, -72(%rbp)         # 4-byte Spill
	jle	.LBB0_9
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB0_1 Depth=1
	movss	-60(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	ucomiss	-4(%rbp), %xmm0
	movl	-64(%rbp), %eax         # 4-byte Reload
	movl	-48(%rbp), %ecx         # 4-byte Reload
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movl	%ecx, -80(%rbp)         # 4-byte Spill
	jbe	.LBB0_8
# %bb.6:                                # %land.lhs.true11
                                        #   in Loop: Header=BB0_1 Depth=1
	movss	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	-60(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movl	-56(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	movl	-64(%rbp), %eax         # 4-byte Reload
	movl	-48(%rbp), %edx         # 4-byte Reload
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movl	%edx, -80(%rbp)         # 4-byte Spill
	jge	.LBB0_8
# %bb.7:                                # %if.then13
                                        #   in Loop: Header=BB0_1 Depth=1
	movss	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	-60(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	sarl	$3, %eax
	movl	-64(%rbp), %ecx         # 4-byte Reload
	addl	%eax, %ecx
	movl	-48(%rbp), %eax         # 4-byte Reload
	addl	$1, %eax
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB0_8:                                # %if.end
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-80(%rbp), %eax         # 4-byte Reload
	movl	-76(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB0_9:                                # %if.end14
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	-68(%rbp), %ecx         # 4-byte Reload
	movss	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	mulss	-4(%rbp), %xmm0
	cvttss2si	%xmm0, %edx
	movl	-52(%rbp), %esi         # 4-byte Reload
	addl	%edx, %esi
	movl	-44(%rbp), %edx         # 4-byte Reload
	addl	$1, %edx
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movabsq	$.L.str.3, %rdi
	leaq	-4(%rbp), %r8
	movl	%esi, -84(%rbp)         # 4-byte Spill
	movq	%r8, %rsi
	movl	%eax, -88(%rbp)         # 4-byte Spill
	movb	$0, %al
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	movl	%edx, -96(%rbp)         # 4-byte Spill
	movss	%xmm0, -100(%rbp)       # 4-byte Spill
	callq	__isoc99_scanf
	movss	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	-60(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %ecx
	movl	-92(%rbp), %edx         # 4-byte Reload
	movss	-100(%rbp), %xmm0       # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movl	-84(%rbp), %r9d         # 4-byte Reload
	movl	-88(%rbp), %r10d        # 4-byte Reload
	movl	-96(%rbp), %r11d        # 4-byte Reload
	movl	%edx, -20(%rbp)         # 4-byte Spill
	movss	%xmm0, -24(%rbp)        # 4-byte Spill
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	movl	%r9d, -32(%rbp)         # 4-byte Spill
	movl	%r10d, -36(%rbp)        # 4-byte Spill
	movl	%r11d, -40(%rbp)        # 4-byte Spill
	jmp	.LBB0_1
.LBB0_10:                               # %while.end
	movabsq	$.L.str.4, %rdi
	movb	$0, %al
	callq	printf
	movl	-48(%rbp), %ecx         # 4-byte Reload
	cmpl	$0, %ecx
	jle	.LBB0_12
# %bb.11:                               # %if.then20
	movsd	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	-64(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rcx
	movl	-48(%rbp), %edx         # 4-byte Reload
	movslq	%edx, %rsi
	movq	%rcx, %rax
	cqto
	idivq	%rsi
	shlq	$5, %rax
	cvtsi2sd	%rax, %xmm1
	divsd	%xmm0, %xmm1
	movabsq	$.L.str.5, %rdi
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	printf
	jmp	.LBB0_13
.LBB0_12:                               # %if.else
	movabsq	$.L.str.6, %rdi
	movb	$0, %al
	callq	printf
.LBB0_13:                               # %if.end24
	movabsq	$.L.str.7, %rdi
	movb	$0, %al
	callq	printf
	movl	-44(%rbp), %ecx         # 4-byte Reload
	cmpl	$0, %ecx
	jle	.LBB0_15
# %bb.14:                               # %if.then28
	movsd	.LCPI0_2(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	-52(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rcx
	movl	-44(%rbp), %edx         # 4-byte Reload
	movslq	%edx, %rsi
	movq	%rcx, %rax
	cqto
	idivq	%rsi
	shlq	$5, %rax
	cvtsi2sd	%rax, %xmm1
	divsd	%xmm0, %xmm1
	movabsq	$.L.str.5, %rdi
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	printf
	jmp	.LBB0_16
.LBB0_15:                               # %if.else33
	movabsq	$.L.str.6, %rdi
	movb	$0, %al
	callq	printf
.LBB0_16:                               # %if.end35
	xorl	%eax, %eax
	addq	$112, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"%f"
	.size	.L.str.3, 3

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Media picchi: "
	.size	.L.str.4, 15

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%f\n"
	.size	.L.str.5, 4

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"-\n"
	.size	.L.str.6, 3

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Media totale: "
	.size	.L.str.7, 15

	.ident	"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __isoc99_scanf
	.addrsig_sym printf
