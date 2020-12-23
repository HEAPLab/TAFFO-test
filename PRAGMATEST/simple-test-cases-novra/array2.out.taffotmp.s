	.text
	.file	"array2.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI0_0:
	.quad	4692750811720056832     # double 524288
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
	subq	$400048, %rsp           # imm = 0x61AB0
	movl	$0, -4(%rbp)
	movl	$0, -400020(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$100000, -400020(%rbp)  # imm = 0x186A0
	jge	.LBB0_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	-400020(%rbp), %ecx
	movl	%eax, -400032(%rbp)     # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	$3333, %ecx             # imm = 0xD05
	idivl	%ecx
	cmpl	$0, %edx
	movl	$1, %ecx
	movl	-400032(%rbp), %edx     # 4-byte Reload
	cmovnel	%edx, %ecx
	shll	$19, %ecx
	movslq	-400020(%rbp), %rsi
	movl	%ecx, -400016(%rbp,%rsi,4)
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-400020(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -400020(%rbp)
	jmp	.LBB0_1
.LBB0_4:                                # %for.end
	movl	$576716, -400016(%rbp)  # imm = 0x8CCCC
	movl	$576716, -400012(%rbp)  # imm = 0x8CCCC
	movl	$2, -400024(%rbp)
.LBB0_5:                                # %for.cond5
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
	cmpl	$100000, -400024(%rbp)  # imm = 0x186A0
	jge	.LBB0_16
# %bb.6:                                # %for.body8
                                        #   in Loop: Header=BB0_5 Depth=1
	movl	$0, -400028(%rbp)
.LBB0_7:                                # %for.cond9
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$100000, -400028(%rbp)  # imm = 0x186A0
	jge	.LBB0_14
# %bb.8:                                # %for.body12
                                        #   in Loop: Header=BB0_7 Depth=2
	movl	-400028(%rbp), %eax
	cmpl	-400024(%rbp), %eax
	jne	.LBB0_10
# %bb.9:                                # %if.then
                                        #   in Loop: Header=BB0_7 Depth=2
	jmp	.LBB0_13
.LBB0_10:                               # %if.end
                                        #   in Loop: Header=BB0_7 Depth=2
	movslq	-400028(%rbp), %rax
	movslq	-400016(%rbp,%rax,4), %rax
	cqto
	movl	$10, %ecx
	idivq	%rcx
                                        # kill: def $eax killed $eax killed $rax
	movslq	-400024(%rbp), %rcx
	addl	-400016(%rbp,%rcx,4), %eax
	movl	%eax, -400016(%rbp,%rcx,4)
	movslq	-400024(%rbp), %rcx
	cmpl	$52428800, -400016(%rbp,%rcx,4) # imm = 0x3200000
	jle	.LBB0_12
# %bb.11:                               # %if.then23
                                        #   in Loop: Header=BB0_7 Depth=2
	movslq	-400024(%rbp), %rax
	movl	$52428, -400016(%rbp,%rax,4) # imm = 0xCCCC
.LBB0_12:                               # %if.end26
                                        #   in Loop: Header=BB0_7 Depth=2
	jmp	.LBB0_13
.LBB0_13:                               # %for.inc27
                                        #   in Loop: Header=BB0_7 Depth=2
	movl	-400028(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -400028(%rbp)
	jmp	.LBB0_7
.LBB0_14:                               # %for.end29
                                        #   in Loop: Header=BB0_5 Depth=1
	jmp	.LBB0_15
.LBB0_15:                               # %for.inc30
                                        #   in Loop: Header=BB0_5 Depth=1
	movl	-400024(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -400024(%rbp)
	jmp	.LBB0_5
.LBB0_16:                               # %for.end32
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	cvtsi2sdl	-20(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movabsq	$.L.str.2, %rdi
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	printf
	xorl	%ecx, %ecx
	movl	%eax, -400036(%rbp)     # 4-byte Spill
	movl	%ecx, %eax
	addq	$400048, %rsp           # imm = 0x61AB0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"ris %f \n"
	.size	.L.str.2, 9

	.ident	"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf
