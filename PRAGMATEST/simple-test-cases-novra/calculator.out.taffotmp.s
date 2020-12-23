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
	subq	$464, %rsp              # imm = 0x1D0
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -420(%rbp)
.LBB0_1:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	leaq	-288(%rbp), %rsi
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	__isoc99_scanf
	leaq	-288(%rbp), %rdi
	movabsq	$.L.str.3, %rsi
	leaq	-20(%rbp), %rdx
	movl	%eax, -460(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	__isoc99_sscanf
	movl	%eax, -424(%rbp)
	cmpl	$1, -424(%rbp)
	jne	.LBB0_3
# %bb.2:                                # %if.then
                                        #   in Loop: Header=BB0_1 Depth=1
	movss	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	mulss	-20(%rbp), %xmm0
	cvttss2si	%xmm0, %eax
	movl	-420(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -420(%rbp)
	movslq	%ecx, %rsi
	movl	%eax, -416(%rbp,%rsi,4)
	jmp	.LBB0_11
.LBB0_3:                                # %if.else
                                        #   in Loop: Header=BB0_1 Depth=1
	movsbl	-288(%rbp), %eax
	movl	%eax, %ecx
	subl	$42, %ecx
	movl	%eax, -464(%rbp)        # 4-byte Spill
	je	.LBB0_6
	jmp	.LBB0_12
.LBB0_12:                               # %if.else
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-464(%rbp), %eax        # 4-byte Reload
	subl	$43, %eax
	je	.LBB0_4
	jmp	.LBB0_13
.LBB0_13:                               # %if.else
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-464(%rbp), %eax        # 4-byte Reload
	subl	$45, %eax
	je	.LBB0_5
	jmp	.LBB0_14
.LBB0_14:                               # %if.else
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-464(%rbp), %eax        # 4-byte Reload
	subl	$47, %eax
	je	.LBB0_7
	jmp	.LBB0_15
.LBB0_15:                               # %if.else
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-464(%rbp), %eax        # 4-byte Reload
	subl	$61, %eax
	je	.LBB0_8
	jmp	.LBB0_16
.LBB0_16:                               # %if.else
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-464(%rbp), %eax        # 4-byte Reload
	subl	$113, %eax
	je	.LBB0_9
	jmp	.LBB0_10
.LBB0_4:                                # %sw.bb
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-420(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -420(%rbp)
	movslq	%eax, %rcx
	movl	-416(%rbp,%rcx,4), %eax
	movl	%eax, -432(%rbp)
	movl	-420(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -420(%rbp)
	movslq	%eax, %rcx
	movl	-416(%rbp,%rcx,4), %eax
	movl	%eax, -428(%rbp)
	movl	-428(%rbp), %eax
	addl	-432(%rbp), %eax
	movl	-420(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -420(%rbp)
	movslq	%edx, %rcx
	movl	%eax, -416(%rbp,%rcx,4)
	jmp	.LBB0_10
.LBB0_5:                                # %sw.bb21
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-420(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -420(%rbp)
	movslq	%eax, %rcx
	movl	-416(%rbp,%rcx,4), %eax
	movl	%eax, -440(%rbp)
	movl	-420(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -420(%rbp)
	movslq	%eax, %rcx
	movl	-416(%rbp,%rcx,4), %eax
	movl	%eax, -436(%rbp)
	movl	-436(%rbp), %eax
	subl	-440(%rbp), %eax
	movl	-420(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -420(%rbp)
	movslq	%edx, %rcx
	movl	%eax, -416(%rbp,%rcx,4)
	jmp	.LBB0_10
.LBB0_6:                                # %sw.bb41
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-420(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -420(%rbp)
	movslq	%eax, %rcx
	movl	-416(%rbp,%rcx,4), %eax
	movl	%eax, -448(%rbp)
	movl	-420(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -420(%rbp)
	movslq	%eax, %rcx
	movl	-416(%rbp,%rcx,4), %eax
	movl	%eax, -444(%rbp)
	movl	-444(%rbp), %eax
	movl	-448(%rbp), %edx
	movslq	%eax, %rcx
	movslq	%edx, %rsi
	imulq	%rsi, %rcx
	sarq	$19, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	-420(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -420(%rbp)
	movslq	%eax, %rsi
	movl	%ecx, -416(%rbp,%rsi,4)
	jmp	.LBB0_10
.LBB0_7:                                # %sw.bb61
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-420(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -420(%rbp)
	movslq	%eax, %rcx
	movl	-416(%rbp,%rcx,4), %eax
	movl	%eax, -456(%rbp)
	movl	-420(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -420(%rbp)
	movslq	%eax, %rcx
	movl	-416(%rbp,%rcx,4), %eax
	movl	%eax, -452(%rbp)
	movl	-452(%rbp), %eax
	movl	-456(%rbp), %edx
	movslq	%eax, %rcx
	shlq	$19, %rcx
	movslq	%edx, %rsi
	movq	%rcx, %rax
	cqto
	idivq	%rsi
                                        # kill: def $eax killed $eax killed $rax
	movl	-420(%rbp), %edi
	movl	%edi, %r8d
	addl	$1, %r8d
	movl	%r8d, -420(%rbp)
	movslq	%edi, %rcx
	movl	%eax, -416(%rbp,%rcx,4)
	jmp	.LBB0_10
.LBB0_8:                                # %sw.bb81
                                        #   in Loop: Header=BB0_1 Depth=1
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	-420(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -420(%rbp)
	movslq	%eax, %rcx
	cvtsi2sdl	-416(%rbp,%rcx,4), %xmm1
	divsd	%xmm0, %xmm1
	movabsq	$.L.str.4, %rdi
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	printf
	jmp	.LBB0_10
.LBB0_9:                                # %sw.bb87
	xorl	%eax, %eax
	addq	$464, %rsp              # imm = 0x1D0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB0_10:                               # %sw.epilog
                                        #   in Loop: Header=BB0_1 Depth=1
	.cfi_def_cfa %rbp, 16
	jmp	.LBB0_11
.LBB0_11:                               # %if.end
                                        #   in Loop: Header=BB0_1 Depth=1
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

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%f\n"
	.size	.L.str.4, 4

	.ident	"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __isoc99_scanf
	.addrsig_sym __isoc99_sscanf
	.addrsig_sym printf
