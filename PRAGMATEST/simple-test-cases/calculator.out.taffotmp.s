	.text
	.file	"calculator.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI0_0:
	.quad	4692750811720056832     # double 524288
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI0_1:
	.long	1224736768              # float 524288
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
	subq	$432, %rsp              # imm = 0x1B0
	xorl	%eax, %eax
	movl	%eax, -404(%rbp)        # 4-byte Spill
.LBB0_1:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-404(%rbp), %eax        # 4-byte Reload
	leaq	-272(%rbp), %rsi
	movabsq	$.L.str.2, %rdi
	movl	%eax, -408(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	__isoc99_scanf
	leaq	-272(%rbp), %rdi
	movabsq	$.L.str.3, %rsi
	leaq	-4(%rbp), %rdx
	movl	%eax, -412(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	__isoc99_sscanf
	cmpl	$1, %eax
	jne	.LBB0_3
# %bb.2:                                # %if.then
                                        #   in Loop: Header=BB0_1 Depth=1
	movss	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	mulss	-4(%rbp), %xmm0
	cvttss2si	%xmm0, %eax
	movl	-408(%rbp), %ecx        # 4-byte Reload
	addl	$1, %ecx
	movl	-408(%rbp), %edx        # 4-byte Reload
	movslq	%edx, %rsi
	movl	%eax, -400(%rbp,%rsi,4)
	movl	%ecx, -416(%rbp)        # 4-byte Spill
	jmp	.LBB0_11
.LBB0_3:                                # %if.else
                                        #   in Loop: Header=BB0_1 Depth=1
	movsbl	-272(%rbp), %eax
	movl	%eax, %ecx
	subl	$42, %ecx
	movl	%eax, -420(%rbp)        # 4-byte Spill
	je	.LBB0_6
	jmp	.LBB0_12
.LBB0_12:                               # %if.else
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-420(%rbp), %eax        # 4-byte Reload
	subl	$43, %eax
	je	.LBB0_4
	jmp	.LBB0_13
.LBB0_13:                               # %if.else
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-420(%rbp), %eax        # 4-byte Reload
	subl	$45, %eax
	je	.LBB0_5
	jmp	.LBB0_14
.LBB0_14:                               # %if.else
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-420(%rbp), %eax        # 4-byte Reload
	subl	$47, %eax
	je	.LBB0_7
	jmp	.LBB0_15
.LBB0_15:                               # %if.else
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-420(%rbp), %eax        # 4-byte Reload
	subl	$61, %eax
	je	.LBB0_8
	jmp	.LBB0_16
.LBB0_16:                               # %if.else
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-420(%rbp), %eax        # 4-byte Reload
	subl	$113, %eax
	movl	-408(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, -424(%rbp)        # 4-byte Spill
	je	.LBB0_9
	jmp	.LBB0_10
.LBB0_4:                                # %sw.bb
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-408(%rbp), %eax        # 4-byte Reload
	addl	$-1, %eax
	movslq	%eax, %rcx
	movl	-400(%rbp,%rcx,4), %edx
	addl	$-1, %eax
	movslq	%eax, %rcx
	addl	-400(%rbp,%rcx,4), %edx
	movl	%eax, %esi
	addl	$1, %esi
	movslq	%eax, %rcx
	movl	%edx, -400(%rbp,%rcx,4)
	movl	%esi, -424(%rbp)        # 4-byte Spill
	jmp	.LBB0_10
.LBB0_5:                                # %sw.bb21
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-408(%rbp), %eax        # 4-byte Reload
	addl	$-1, %eax
	movslq	%eax, %rcx
	movl	-400(%rbp,%rcx,4), %edx
	addl	$-1, %eax
	movslq	%eax, %rcx
	movl	-400(%rbp,%rcx,4), %esi
	subl	%edx, %esi
	movl	%eax, %edx
	addl	$1, %edx
	movslq	%eax, %rcx
	movl	%esi, -400(%rbp,%rcx,4)
	movl	%edx, -424(%rbp)        # 4-byte Spill
	jmp	.LBB0_10
.LBB0_6:                                # %sw.bb41
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-408(%rbp), %eax        # 4-byte Reload
	addl	$-1, %eax
	movslq	%eax, %rcx
	movl	-400(%rbp,%rcx,4), %edx
	addl	$-1, %eax
	movslq	%eax, %rcx
	movslq	-400(%rbp,%rcx,4), %rcx
	movslq	%edx, %rsi
	imulq	%rsi, %rcx
	sarq	$19, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%eax, %edx
	addl	$1, %edx
	movslq	%eax, %rsi
	movl	%ecx, -400(%rbp,%rsi,4)
	movl	%edx, -424(%rbp)        # 4-byte Spill
	jmp	.LBB0_10
.LBB0_7:                                # %sw.bb61
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-408(%rbp), %eax        # 4-byte Reload
	addl	$-1, %eax
	movslq	%eax, %rcx
	movl	-400(%rbp,%rcx,4), %edx
	addl	$-1, %eax
	movslq	%eax, %rcx
	movslq	-400(%rbp,%rcx,4), %rcx
	shlq	$19, %rcx
	movslq	%edx, %rsi
	movl	%eax, -428(%rbp)        # 4-byte Spill
	movq	%rcx, %rax
	cqto
	idivq	%rsi
                                        # kill: def $eax killed $eax killed $rax
	movl	-428(%rbp), %edi        # 4-byte Reload
	addl	$1, %edi
	movl	-428(%rbp), %r8d        # 4-byte Reload
	movslq	%r8d, %rcx
	movl	%eax, -400(%rbp,%rcx,4)
	movl	%edi, -424(%rbp)        # 4-byte Spill
	jmp	.LBB0_10
.LBB0_8:                                # %sw.bb81
                                        #   in Loop: Header=BB0_1 Depth=1
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	-408(%rbp), %eax        # 4-byte Reload
	addl	$-1, %eax
	movslq	%eax, %rcx
	cvtsi2sdl	-400(%rbp,%rcx,4), %xmm1
	divsd	%xmm0, %xmm1
	movabsq	$.L.str.5, %rdi
	movaps	%xmm1, %xmm0
	movl	%eax, -432(%rbp)        # 4-byte Spill
	movb	$1, %al
	callq	printf
	movl	-432(%rbp), %edx        # 4-byte Reload
	movl	%edx, -424(%rbp)        # 4-byte Spill
	jmp	.LBB0_10
.LBB0_9:                                # %sw.bb87
	xorl	%eax, %eax
	addq	$432, %rsp              # imm = 0x1B0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB0_10:                               # %sw.epilog
                                        #   in Loop: Header=BB0_1 Depth=1
	.cfi_def_cfa %rbp, 16
	movl	-424(%rbp), %eax        # 4-byte Reload
	movl	%eax, -416(%rbp)        # 4-byte Spill
.LBB0_11:                               # %if.end
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-416(%rbp), %eax        # 4-byte Reload
	movl	%eax, -404(%rbp)        # 4-byte Spill
	jmp	.LBB0_1
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"%s"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%f"
	.size	.L.str.3, 3

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%f\n"
	.size	.L.str.5, 4

	.ident	"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __isoc99_scanf
	.addrsig_sym __isoc99_sscanf
	.addrsig_sym printf
