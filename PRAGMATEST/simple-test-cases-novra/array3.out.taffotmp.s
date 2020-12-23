	.text
	.file	"array3.c"
	.globl	timerStart              # -- Begin function timerStart
	.p2align	4, 0x90
	.type	timerStart,@function
timerStart:                             # @timerStart
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$4, %edi
	movabsq	$timer_state, %rsi
	callq	clock_gettime
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	timerStart, .Lfunc_end0-timerStart
	.cfi_endproc
                                        # -- End function
	.globl	timerStop               # -- Begin function timerStop
	.p2align	4, 0x90
	.type	timerStop,@function
timerStop:                              # @timerStop
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$4, %edi
	leaq	-24(%rbp), %rsi
	callq	clock_gettime
	movq	timer_state+8, %rcx
	imulq	$1000000000, timer_state, %rdx # imm = 0x3B9ACA00
	addq	%rdx, %rcx
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rcx
	imulq	$1000000000, -24(%rbp), %rdx # imm = 0x3B9ACA00
	addq	%rdx, %rcx
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	subq	-32(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	movq	-8(%rbp), %rcx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movq	%rcx, %rax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	timerStop, .Lfunc_end1-timerStop
	.cfi_endproc
                                        # -- End function
	.globl	xorshift64star          # -- Begin function xorshift64star
	.p2align	4, 0x90
	.type	xorshift64star,@function
xorshift64star:                         # @xorshift64star
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	xorshift64star.x, %rax
	shrq	$12, %rax
	xorq	xorshift64star.x, %rax
	movq	%rax, xorshift64star.x
	movq	xorshift64star.x, %rax
	shlq	$25, %rax
	xorq	xorshift64star.x, %rax
	movq	%rax, xorshift64star.x
	movq	xorshift64star.x, %rax
	shrq	$27, %rax
	xorq	xorshift64star.x, %rax
	movq	%rax, xorshift64star.x
	movabsq	$2685821657736338717, %rax # imm = 0x2545F4914F6CDD1D
	imulq	xorshift64star.x, %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	xorshift64star, .Lfunc_end2-xorshift64star
	.cfi_endproc
                                        # -- End function
	.globl	randomInRange           # -- Begin function randomInRange
	.p2align	4, 0x90
	.type	randomInRange,@function
randomInRange:                          # @randomInRange
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	subl	-8(%rbp), %eax
	movl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	jg	.LBB3_2
# %bb.1:                                # %if.then
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB3_6
.LBB3_2:                                # %if.end
	movslq	-16(%rbp), %rax
	movq	$-1, %rcx
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rcx, %rax
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	movq	-40(%rbp), %rsi         # 8-byte Reload
	divq	%rsi
	subq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	callq	xorshift64star
	movq	%rax, -32(%rbp)
.LBB3_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jbe	.LBB3_5
# %bb.4:                                # %while.body
                                        #   in Loop: Header=BB3_3 Depth=1
	callq	xorshift64star
	movq	%rax, -32(%rbp)
	jmp	.LBB3_3
.LBB3_5:                                # %while.end
	movq	-32(%rbp), %rax
	movslq	-16(%rbp), %rcx
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	divq	%rcx
	movslq	-8(%rbp), %rcx
	addq	%rcx, %rdx
                                        # kill: def $edx killed $edx killed $rdx
	movl	%edx, -4(%rbp)
.LBB3_6:                                # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	randomInRange, .Lfunc_end3-randomInRange
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function main
.LCPI4_0:
	.long	1224736768              # float 524288
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI4_1:
	.quad	4607182418800017408     # double 1
.LCPI4_2:
	.quad	4674736413210574848     # double 32768
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
	subq	$2113248, %rsp          # imm = 0x203EE0
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -2097172(%rbp)
.LBB4_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$262144, -2097172(%rbp) # imm = 0x40000
	jge	.LBB4_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	xorl	%edi, %edi
	movl	$256, %esi              # imm = 0x100
	callq	randomInRange
	movss	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movsd	.LCPI4_2(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2ss	%eax, %xmm2
	cvtss2sd	%xmm2, %xmm2
	divsd	%xmm1, %xmm2
	cvtsd2ss	%xmm2, %xmm1
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movslq	-2097172(%rbp), %rcx
	movl	%eax, -2097168(%rbp,%rcx,4)
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-2097172(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -2097172(%rbp)
	jmp	.LBB4_1
.LBB4_4:                                # %for.end
	movabsq	$.L.str.2, %rdi
	movabsq	$.L.str.3, %rsi
	movb	$0, %al
	callq	printf
	movl	$0, -2105188(%rbp)
.LBB4_5:                                # %for.cond5
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_7 Depth 2
                                        #     Child Loop BB4_11 Depth 2
	cmpl	$1000, -2105188(%rbp)   # imm = 0x3E8
	jge	.LBB4_16
# %bb.6:                                # %for.body8
                                        #   in Loop: Header=BB4_5 Depth=1
	callq	timerStart
	movl	$0, -2105192(%rbp)
.LBB4_7:                                # %for.cond10
                                        #   Parent Loop BB4_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$262144, -2105192(%rbp) # imm = 0x40000
	jge	.LBB4_10
# %bb.8:                                # %for.body13
                                        #   in Loop: Header=BB4_7 Depth=2
	movslq	-2105192(%rbp), %rax
	movl	-2097168(%rbp,%rax,4), %ecx
	movl	-2105192(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	addl	-2097168(%rbp,%rax,4), %ecx
	movslq	-2105192(%rbp), %rax
	movl	%ecx, -2097168(%rbp,%rax,4)
# %bb.9:                                # %for.inc21
                                        #   in Loop: Header=BB4_7 Depth=2
	movl	-2105192(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -2105192(%rbp)
	jmp	.LBB4_7
.LBB4_10:                               # %for.end23
                                        #   in Loop: Header=BB4_5 Depth=1
	movl	$0, -2105196(%rbp)
	movl	$0, -2105200(%rbp)
.LBB4_11:                               # %for.cond27
                                        #   Parent Loop BB4_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$262144, -2105200(%rbp) # imm = 0x40000
	jge	.LBB4_14
# %bb.12:                               # %for.body30
                                        #   in Loop: Header=BB4_11 Depth=2
	movslq	-2105200(%rbp), %rax
	movl	-2097168(%rbp,%rax,4), %ecx
	addl	-2105196(%rbp), %ecx
	movl	%ecx, -2105196(%rbp)
# %bb.13:                               # %for.inc34
                                        #   in Loop: Header=BB4_11 Depth=2
	movl	-2105200(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -2105200(%rbp)
	jmp	.LBB4_11
.LBB4_14:                               # %for.end36
                                        #   in Loop: Header=BB4_5 Depth=1
	callq	timerStop
	movslq	-2105188(%rbp), %rcx
	movq	%rax, -2105184(%rbp,%rcx,8)
# %bb.15:                               # %for.inc40
                                        #   in Loop: Header=BB4_5 Depth=1
	movl	-2105188(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -2105188(%rbp)
	jmp	.LBB4_5
.LBB4_16:                               # %for.end42
	movq	$0, -2105208(%rbp)
	movl	$10, -2105212(%rbp)
.LBB4_17:                               # %for.cond44
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$1000, -2105212(%rbp)   # imm = 0x3E8
	jge	.LBB4_20
# %bb.18:                               # %for.body47
                                        #   in Loop: Header=BB4_17 Depth=1
	movslq	-2105212(%rbp), %rax
	movq	-2105184(%rbp,%rax,8), %rax
	addq	-2105208(%rbp), %rax
	movq	%rax, -2105208(%rbp)
# %bb.19:                               # %for.inc51
                                        #   in Loop: Header=BB4_17 Depth=1
	movl	-2105212(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -2105212(%rbp)
	jmp	.LBB4_17
.LBB4_20:                               # %for.end53
	movq	-2105208(%rbp), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	$990, %esi              # imm = 0x3DE
	divq	%rsi
	movq	%rax, -2105208(%rbp)
	movq	-2105208(%rbp), %rsi
	movabsq	$.L.str.4, %rdi
	movb	$0, %al
	callq	printf
	movl	$0, -2105216(%rbp)
.LBB4_21:                               # %for.cond57
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$262144, -2105216(%rbp) # imm = 0x40000
	jge	.LBB4_24
# %bb.22:                               # %for.body60
                                        #   in Loop: Header=BB4_21 Depth=1
	xorl	%edi, %edi
	movl	-2105216(%rbp), %eax
	addl	$1, %eax
	cltd
	movl	$4, %ecx
	idivl	%ecx
	movl	%edx, %esi
	callq	randomInRange
	movss	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movsd	.LCPI4_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI4_2(%rip), %xmm2   # xmm2 = mem[0],zero
	cvtsi2ss	%eax, %xmm3
	cvtss2sd	%xmm3, %xmm3
	divsd	%xmm2, %xmm3
	addsd	%xmm3, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movslq	-2105216(%rbp), %r8
	movl	%eax, -2097168(%rbp,%r8,4)
# %bb.23:                               # %for.inc70
                                        #   in Loop: Header=BB4_21 Depth=1
	movl	-2105216(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -2105216(%rbp)
	jmp	.LBB4_21
.LBB4_24:                               # %for.end72
	movabsq	$.L.str.2, %rdi
	movabsq	$.L.str.5, %rsi
	movb	$0, %al
	callq	printf
	movl	$0, -2113220(%rbp)
.LBB4_25:                               # %for.cond76
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_27 Depth 2
                                        #     Child Loop BB4_31 Depth 2
	cmpl	$1000, -2113220(%rbp)   # imm = 0x3E8
	jge	.LBB4_36
# %bb.26:                               # %for.body79
                                        #   in Loop: Header=BB4_25 Depth=1
	callq	timerStart
	movl	$0, -2113224(%rbp)
.LBB4_27:                               # %for.cond81
                                        #   Parent Loop BB4_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$262144, -2113224(%rbp) # imm = 0x40000
	jge	.LBB4_30
# %bb.28:                               # %for.body84
                                        #   in Loop: Header=BB4_27 Depth=2
	movslq	-2113224(%rbp), %rax
	movl	-2097168(%rbp,%rax,4), %ecx
	movl	-2113224(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movl	-2097168(%rbp,%rax,4), %edx
	movslq	%ecx, %rax
	movslq	%edx, %rsi
	imulq	%rsi, %rax
	sarq	$19, %rax
                                        # kill: def $eax killed $eax killed $rax
	movslq	-2113224(%rbp), %rsi
	movl	%eax, -2097168(%rbp,%rsi,4)
# %bb.29:                               # %for.inc92
                                        #   in Loop: Header=BB4_27 Depth=2
	movl	-2113224(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -2113224(%rbp)
	jmp	.LBB4_27
.LBB4_30:                               # %for.end94
                                        #   in Loop: Header=BB4_25 Depth=1
	movl	$0, -2113228(%rbp)
	movl	$0, -2113232(%rbp)
.LBB4_31:                               # %for.cond99
                                        #   Parent Loop BB4_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$262144, -2113232(%rbp) # imm = 0x40000
	jge	.LBB4_34
# %bb.32:                               # %for.body102
                                        #   in Loop: Header=BB4_31 Depth=2
	movslq	-2113232(%rbp), %rax
	movl	-2097168(%rbp,%rax,4), %ecx
	addl	-2113228(%rbp), %ecx
	movl	%ecx, -2113228(%rbp)
# %bb.33:                               # %for.inc106
                                        #   in Loop: Header=BB4_31 Depth=2
	movl	-2113232(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -2113232(%rbp)
	jmp	.LBB4_31
.LBB4_34:                               # %for.end108
                                        #   in Loop: Header=BB4_25 Depth=1
	callq	timerStop
	movslq	-2113220(%rbp), %rcx
	movq	%rax, -2113216(%rbp,%rcx,8)
# %bb.35:                               # %for.inc112
                                        #   in Loop: Header=BB4_25 Depth=1
	movl	-2113220(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -2113220(%rbp)
	jmp	.LBB4_25
.LBB4_36:                               # %for.end114
	movq	$0, -2113240(%rbp)
	movl	$10, -2113244(%rbp)
.LBB4_37:                               # %for.cond117
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$1000, -2113244(%rbp)   # imm = 0x3E8
	jge	.LBB4_40
# %bb.38:                               # %for.body120
                                        #   in Loop: Header=BB4_37 Depth=1
	movslq	-2113244(%rbp), %rax
	movq	-2113216(%rbp,%rax,8), %rax
	addq	-2113240(%rbp), %rax
	movq	%rax, -2113240(%rbp)
# %bb.39:                               # %for.inc124
                                        #   in Loop: Header=BB4_37 Depth=1
	movl	-2113244(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -2113244(%rbp)
	jmp	.LBB4_37
.LBB4_40:                               # %for.end126
	movq	-2113240(%rbp), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	$990, %esi              # imm = 0x3DE
	divq	%rsi
	movq	%rax, -2113240(%rbp)
	movq	-2113240(%rbp), %rsi
	movabsq	$.L.str.4, %rdi
	movb	$0, %al
	callq	printf
	xorl	%ecx, %ecx
	movl	%eax, -2113248(%rbp)    # 4-byte Spill
	movl	%ecx, %eax
	addq	$2113248, %rsp          # imm = 0x203EE0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	main, .Lfunc_end4-main
	.cfi_endproc
                                        # -- End function
	.type	timer_state,@object     # @timer_state
	.comm	timer_state,16,8
	.type	xorshift64star.x,@object # @xorshift64star.x
	.data
	.p2align	3
xorshift64star.x:
	.quad	1970835257944453882     # 0x1b59d039a49832fa
	.size	xorshift64star.x, 8

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"operation: %s\n"
	.size	.L.str.2, 15

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"+"
	.size	.L.str.3, 2

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"avg time (ns): %lu\n"
	.size	.L.str.4, 20

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"*"
	.size	.L.str.5, 2

	.ident	"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym timerStart
	.addrsig_sym clock_gettime
	.addrsig_sym timerStop
	.addrsig_sym xorshift64star
	.addrsig_sym randomInRange
	.addrsig_sym printf
	.addrsig_sym timer_state
	.addrsig_sym xorshift64star.x
