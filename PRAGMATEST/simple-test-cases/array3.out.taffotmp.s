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
	subq	$32, %rsp
	movl	$4, %edi
	leaq	-16(%rbp), %rsi
	callq	clock_gettime
	movq	timer_state+8, %rcx
	imulq	$1000000000, timer_state, %rdx # imm = 0x3B9ACA00
	addq	%rdx, %rcx
	movq	-8(%rbp), %rdx
	imulq	$1000000000, -16(%rbp), %rsi # imm = 0x3B9ACA00
	addq	%rsi, %rdx
	subq	%rcx, %rdx
	movl	%eax, -20(%rbp)         # 4-byte Spill
	movq	%rdx, %rax
	addq	$32, %rsp
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
	subl	%edi, %esi
	cmpl	$0, %esi
	movl	%edi, -4(%rbp)          # 4-byte Spill
	movl	%esi, -8(%rbp)          # 4-byte Spill
	jg	.LBB3_2
# %bb.1:                                # %if.then
	movl	-4(%rbp), %eax          # 4-byte Reload
	movl	%eax, -12(%rbp)         # 4-byte Spill
	jmp	.LBB3_6
.LBB3_2:                                # %if.end
	movl	-8(%rbp), %eax          # 4-byte Reload
	movslq	%eax, %rcx
	movq	$-1, %rdx
	movq	%rdx, %rax
	xorl	%esi, %esi
	movq	%rdx, -24(%rbp)         # 8-byte Spill
	movl	%esi, %edx
	divq	%rcx
	movq	-24(%rbp), %rcx         # 8-byte Reload
	subq	%rdx, %rcx
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	callq	xorshift64star
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB3_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rcx, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jbe	.LBB3_5
# %bb.4:                                # %while.body
                                        #   in Loop: Header=BB3_3 Depth=1
	callq	xorshift64star
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB3_3
.LBB3_5:                                # %while.end
	movl	-8(%rbp), %eax          # 4-byte Reload
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	%rdx, %rax
	xorl	%esi, %esi
	movl	%esi, %edx
	divq	%rcx
	movl	-4(%rbp), %esi          # 4-byte Reload
	movslq	%esi, %rcx
	addq	%rcx, %rdx
                                        # kill: def $edx killed $edx killed $rdx
	movl	%edx, -12(%rbp)         # 4-byte Spill
.LBB3_6:                                # %return
	movl	-12(%rbp), %eax         # 4-byte Reload
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
	.long	1065353216              # float 1
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
	subq	$2113344, %rsp          # imm = 0x203F40
	xorl	%eax, %eax
	movl	%eax, -2113156(%rbp)    # 4-byte Spill
.LBB4_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-2113156(%rbp), %eax    # 4-byte Reload
	cmpl	$262144, %eax           # imm = 0x40000
	movl	%eax, -2113160(%rbp)    # 4-byte Spill
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
	movl	-2113160(%rbp), %ecx    # 4-byte Reload
	movslq	%ecx, %rdx
	movl	%eax, -2097152(%rbp,%rdx,4)
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-2113160(%rbp), %eax    # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -2113156(%rbp)    # 4-byte Spill
	jmp	.LBB4_1
.LBB4_4:                                # %for.end
	movabsq	$.L.str.2, %rdi
	movabsq	$.L.str.3, %rsi
	movb	$0, %al
	callq	printf
	xorl	%ecx, %ecx
	movl	%ecx, -2113164(%rbp)    # 4-byte Spill
.LBB4_5:                                # %for.cond5
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_7 Depth 2
                                        #     Child Loop BB4_11 Depth 2
	movl	-2113164(%rbp), %eax    # 4-byte Reload
	cmpl	$1000, %eax             # imm = 0x3E8
	movl	%eax, -2113168(%rbp)    # 4-byte Spill
	jge	.LBB4_16
# %bb.6:                                # %for.body8
                                        #   in Loop: Header=BB4_5 Depth=1
	callq	timerStart
	xorl	%eax, %eax
	movl	%eax, -2113172(%rbp)    # 4-byte Spill
.LBB4_7:                                # %for.cond10
                                        #   Parent Loop BB4_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-2113172(%rbp), %eax    # 4-byte Reload
	cmpl	$262144, %eax           # imm = 0x40000
	movl	%eax, -2113176(%rbp)    # 4-byte Spill
	jge	.LBB4_10
# %bb.8:                                # %for.body13
                                        #   in Loop: Header=BB4_7 Depth=2
	movl	-2113176(%rbp), %eax    # 4-byte Reload
	movslq	%eax, %rcx
	movl	-2097152(%rbp,%rcx,4), %edx
	addl	$1, %eax
	movslq	%eax, %rcx
	movl	-2097152(%rbp,%rcx,4), %eax
	movslq	%edx, %rcx
	movslq	%eax, %rsi
	addq	%rsi, %rcx
	movl	-2113176(%rbp), %eax    # 4-byte Reload
	movslq	%eax, %rsi
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, -2097152(%rbp,%rsi,4)
# %bb.9:                                # %for.inc21
                                        #   in Loop: Header=BB4_7 Depth=2
	movl	-2113176(%rbp), %eax    # 4-byte Reload
	addl	$2, %eax
	movl	%eax, -2113172(%rbp)    # 4-byte Spill
	jmp	.LBB4_7
.LBB4_10:                               # %for.end23
                                        #   in Loop: Header=BB4_5 Depth=1
	xorl	%eax, %eax
                                        # implicit-def: $rcx
	movl	%eax, -2113180(%rbp)    # 4-byte Spill
	movq	%rcx, -2113192(%rbp)    # 8-byte Spill
	jmp	.LBB4_11
.LBB4_11:                               # %for.cond27
                                        #   Parent Loop BB4_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-2113192(%rbp), %rax    # 8-byte Reload
	movl	-2113180(%rbp), %ecx    # 4-byte Reload
	cmpl	$262144, %ecx           # imm = 0x40000
	movq	%rax, -2113200(%rbp)    # 8-byte Spill
	movl	%ecx, -2113204(%rbp)    # 4-byte Spill
	jge	.LBB4_14
# %bb.12:                               # %for.body30
                                        #   in Loop: Header=BB4_11 Depth=2
	movl	-2113204(%rbp), %eax    # 4-byte Reload
	movslq	%eax, %rcx
	movslq	-2097152(%rbp,%rcx,4), %rcx
	movq	-2113200(%rbp), %rdx    # 8-byte Reload
	addq	%rcx, %rdx
	movq	%rdx, -2113216(%rbp)    # 8-byte Spill
# %bb.13:                               # %for.inc34
                                        #   in Loop: Header=BB4_11 Depth=2
	movl	-2113204(%rbp), %eax    # 4-byte Reload
	addl	$1, %eax
	movq	-2113216(%rbp), %rcx    # 8-byte Reload
	movl	%eax, -2113180(%rbp)    # 4-byte Spill
	movq	%rcx, -2113192(%rbp)    # 8-byte Spill
	jmp	.LBB4_11
.LBB4_14:                               # %for.end36
                                        #   in Loop: Header=BB4_5 Depth=1
	callq	timerStop
	movl	-2113168(%rbp), %ecx    # 4-byte Reload
	movslq	%ecx, %rdx
	movq	%rax, -2105152(%rbp,%rdx,8)
# %bb.15:                               # %for.inc40
                                        #   in Loop: Header=BB4_5 Depth=1
	movl	-2113168(%rbp), %eax    # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -2113164(%rbp)    # 4-byte Spill
	jmp	.LBB4_5
.LBB4_16:                               # %for.end42
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	$10, %eax
	movl	%eax, -2113220(%rbp)    # 4-byte Spill
	movq	%rcx, -2113232(%rbp)    # 8-byte Spill
	jmp	.LBB4_17
.LBB4_17:                               # %for.cond44
                                        # =>This Inner Loop Header: Depth=1
	movq	-2113232(%rbp), %rax    # 8-byte Reload
	movl	-2113220(%rbp), %ecx    # 4-byte Reload
	cmpl	$1000, %ecx             # imm = 0x3E8
	movq	%rax, -2113240(%rbp)    # 8-byte Spill
	movl	%ecx, -2113244(%rbp)    # 4-byte Spill
	jge	.LBB4_20
# %bb.18:                               # %for.body47
                                        #   in Loop: Header=BB4_17 Depth=1
	movl	-2113244(%rbp), %eax    # 4-byte Reload
	movslq	%eax, %rcx
	movq	-2113240(%rbp), %rdx    # 8-byte Reload
	addq	-2105152(%rbp,%rcx,8), %rdx
	movq	%rdx, -2113256(%rbp)    # 8-byte Spill
# %bb.19:                               # %for.inc51
                                        #   in Loop: Header=BB4_17 Depth=1
	movl	-2113244(%rbp), %eax    # 4-byte Reload
	addl	$1, %eax
	movq	-2113256(%rbp), %rcx    # 8-byte Reload
	movl	%eax, -2113220(%rbp)    # 4-byte Spill
	movq	%rcx, -2113232(%rbp)    # 8-byte Spill
	jmp	.LBB4_17
.LBB4_20:                               # %for.end53
	movq	-2113240(%rbp), %rax    # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	$990, %esi              # imm = 0x3DE
	divq	%rsi
	movabsq	$.L.str.4, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	printf
	xorl	%ecx, %ecx
	movl	%ecx, -2113260(%rbp)    # 4-byte Spill
.LBB4_21:                               # %for.cond57
                                        # =>This Inner Loop Header: Depth=1
	movl	-2113260(%rbp), %eax    # 4-byte Reload
	cmpl	$262144, %eax           # imm = 0x40000
	movl	%eax, -2113264(%rbp)    # 4-byte Spill
	jge	.LBB4_24
# %bb.22:                               # %for.body60
                                        #   in Loop: Header=BB4_21 Depth=1
	xorl	%edi, %edi
	movl	-2113264(%rbp), %eax    # 4-byte Reload
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
	movl	-2113264(%rbp), %ecx    # 4-byte Reload
	movslq	%ecx, %r8
	movl	%eax, -2097152(%rbp,%r8,4)
# %bb.23:                               # %for.inc70
                                        #   in Loop: Header=BB4_21 Depth=1
	movl	-2113264(%rbp), %eax    # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -2113260(%rbp)    # 4-byte Spill
	jmp	.LBB4_21
.LBB4_24:                               # %for.end72
	movabsq	$.L.str.2, %rdi
	movabsq	$.L.str.5, %rsi
	movb	$0, %al
	callq	printf
	xorl	%ecx, %ecx
	movl	%ecx, -2113268(%rbp)    # 4-byte Spill
.LBB4_25:                               # %for.cond76
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_27 Depth 2
                                        #     Child Loop BB4_31 Depth 2
	movl	-2113268(%rbp), %eax    # 4-byte Reload
	cmpl	$1000, %eax             # imm = 0x3E8
	movl	%eax, -2113272(%rbp)    # 4-byte Spill
	jge	.LBB4_36
# %bb.26:                               # %for.body79
                                        #   in Loop: Header=BB4_25 Depth=1
	callq	timerStart
	xorl	%eax, %eax
	movl	%eax, -2113276(%rbp)    # 4-byte Spill
.LBB4_27:                               # %for.cond81
                                        #   Parent Loop BB4_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-2113276(%rbp), %eax    # 4-byte Reload
	cmpl	$262144, %eax           # imm = 0x40000
	movl	%eax, -2113280(%rbp)    # 4-byte Spill
	jge	.LBB4_30
# %bb.28:                               # %for.body84
                                        #   in Loop: Header=BB4_27 Depth=2
	movl	-2113280(%rbp), %eax    # 4-byte Reload
	movslq	%eax, %rcx
	movl	-2097152(%rbp,%rcx,4), %edx
	addl	$1, %eax
	movslq	%eax, %rcx
	movl	-2097152(%rbp,%rcx,4), %eax
	movslq	%edx, %rcx
	movslq	%eax, %rsi
	imulq	%rsi, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	-2113280(%rbp), %eax    # 4-byte Reload
	movslq	%eax, %rsi
	movl	%ecx, -2097152(%rbp,%rsi,4)
# %bb.29:                               # %for.inc92
                                        #   in Loop: Header=BB4_27 Depth=2
	movl	-2113280(%rbp), %eax    # 4-byte Reload
	addl	$2, %eax
	movl	%eax, -2113276(%rbp)    # 4-byte Spill
	jmp	.LBB4_27
.LBB4_30:                               # %for.end94
                                        #   in Loop: Header=BB4_25 Depth=1
	xorl	%eax, %eax
                                        # implicit-def: $ecx
	movl	%ecx, -2113284(%rbp)    # 4-byte Spill
	movl	%eax, -2113288(%rbp)    # 4-byte Spill
	jmp	.LBB4_31
.LBB4_31:                               # %for.cond99
                                        #   Parent Loop BB4_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-2113288(%rbp), %eax    # 4-byte Reload
	movl	-2113284(%rbp), %ecx    # 4-byte Reload
	cmpl	$262144, %eax           # imm = 0x40000
	movl	%eax, -2113292(%rbp)    # 4-byte Spill
	movl	%ecx, -2113296(%rbp)    # 4-byte Spill
	jge	.LBB4_34
# %bb.32:                               # %for.body102
                                        #   in Loop: Header=BB4_31 Depth=2
	movl	-2113292(%rbp), %eax    # 4-byte Reload
	movslq	%eax, %rcx
	movl	-2113296(%rbp), %edx    # 4-byte Reload
	addl	-2097152(%rbp,%rcx,4), %edx
	movl	%edx, -2113300(%rbp)    # 4-byte Spill
# %bb.33:                               # %for.inc106
                                        #   in Loop: Header=BB4_31 Depth=2
	movl	-2113292(%rbp), %eax    # 4-byte Reload
	addl	$1, %eax
	movl	-2113300(%rbp), %ecx    # 4-byte Reload
	movl	%ecx, -2113284(%rbp)    # 4-byte Spill
	movl	%eax, -2113288(%rbp)    # 4-byte Spill
	jmp	.LBB4_31
.LBB4_34:                               # %for.end108
                                        #   in Loop: Header=BB4_25 Depth=1
	callq	timerStop
	movl	-2113272(%rbp), %ecx    # 4-byte Reload
	movslq	%ecx, %rdx
	movq	%rax, -2113152(%rbp,%rdx,8)
# %bb.35:                               # %for.inc112
                                        #   in Loop: Header=BB4_25 Depth=1
	movl	-2113272(%rbp), %eax    # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -2113268(%rbp)    # 4-byte Spill
	jmp	.LBB4_25
.LBB4_36:                               # %for.end114
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	$10, %eax
	movq	%rcx, -2113312(%rbp)    # 8-byte Spill
	movl	%eax, -2113316(%rbp)    # 4-byte Spill
	jmp	.LBB4_37
.LBB4_37:                               # %for.cond117
                                        # =>This Inner Loop Header: Depth=1
	movl	-2113316(%rbp), %eax    # 4-byte Reload
	movq	-2113312(%rbp), %rcx    # 8-byte Reload
	cmpl	$1000, %eax             # imm = 0x3E8
	movl	%eax, -2113320(%rbp)    # 4-byte Spill
	movq	%rcx, -2113328(%rbp)    # 8-byte Spill
	jge	.LBB4_40
# %bb.38:                               # %for.body120
                                        #   in Loop: Header=BB4_37 Depth=1
	movl	-2113320(%rbp), %eax    # 4-byte Reload
	movslq	%eax, %rcx
	movq	-2113328(%rbp), %rdx    # 8-byte Reload
	addq	-2113152(%rbp,%rcx,8), %rdx
	movq	%rdx, -2113336(%rbp)    # 8-byte Spill
# %bb.39:                               # %for.inc124
                                        #   in Loop: Header=BB4_37 Depth=1
	movl	-2113320(%rbp), %eax    # 4-byte Reload
	addl	$1, %eax
	movq	-2113336(%rbp), %rcx    # 8-byte Reload
	movq	%rcx, -2113312(%rbp)    # 8-byte Spill
	movl	%eax, -2113316(%rbp)    # 4-byte Spill
	jmp	.LBB4_37
.LBB4_40:                               # %for.end126
	movq	-2113328(%rbp), %rax    # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	$990, %esi              # imm = 0x3DE
	divq	%rsi
	movabsq	$.L.str.4, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	printf
	xorl	%ecx, %ecx
	movl	%eax, -2113340(%rbp)    # 4-byte Spill
	movl	%ecx, %eax
	addq	$2113344, %rsp          # imm = 0x203F40
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
