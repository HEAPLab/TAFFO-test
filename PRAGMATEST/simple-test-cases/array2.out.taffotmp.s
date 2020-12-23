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
	subq	$400032, %rsp           # imm = 0x61AA0
	xorl	%eax, %eax
	movl	%eax, -400004(%rbp)     # 4-byte Spill
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-400004(%rbp), %eax     # 4-byte Reload
	cmpl	$100000, %eax           # imm = 0x186A0
	movl	%eax, -400008(%rbp)     # 4-byte Spill
	jge	.LBB0_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	-400008(%rbp), %ecx     # 4-byte Reload
	movl	%eax, -400012(%rbp)     # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	$3333, %esi             # imm = 0xD05
	idivl	%esi
	cmpl	$0, %edx
	movl	$1, %edx
	movl	-400012(%rbp), %esi     # 4-byte Reload
	cmovnel	%esi, %edx
	shll	$19, %edx
	movslq	%ecx, %rdi
	movl	%edx, -400000(%rbp,%rdi,4)
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-400008(%rbp), %eax     # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -400004(%rbp)     # 4-byte Spill
	jmp	.LBB0_1
.LBB0_4:                                # %for.end
	movl	$576716, -400000(%rbp)  # imm = 0x8CCCC
	movl	$576716, -399996(%rbp)  # imm = 0x8CCCC
	movl	$2, %eax
	movl	%eax, -400016(%rbp)     # 4-byte Spill
.LBB0_5:                                # %for.cond5
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
	movl	-400016(%rbp), %eax     # 4-byte Reload
	cmpl	$100000, %eax           # imm = 0x186A0
	movl	%eax, -400020(%rbp)     # 4-byte Spill
	jge	.LBB0_16
# %bb.6:                                # %for.body8
                                        #   in Loop: Header=BB0_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, -400024(%rbp)     # 4-byte Spill
	jmp	.LBB0_7
.LBB0_7:                                # %for.cond9
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-400024(%rbp), %eax     # 4-byte Reload
	cmpl	$100000, %eax           # imm = 0x186A0
	movl	%eax, -400028(%rbp)     # 4-byte Spill
	jge	.LBB0_14
# %bb.8:                                # %for.body12
                                        #   in Loop: Header=BB0_7 Depth=2
	movl	-400028(%rbp), %eax     # 4-byte Reload
	movl	-400020(%rbp), %ecx     # 4-byte Reload
	cmpl	%ecx, %eax
	jne	.LBB0_10
# %bb.9:                                # %if.then
                                        #   in Loop: Header=BB0_7 Depth=2
	jmp	.LBB0_13
.LBB0_10:                               # %if.end
                                        #   in Loop: Header=BB0_7 Depth=2
	movl	-400028(%rbp), %eax     # 4-byte Reload
	movslq	%eax, %rcx
	movslq	-400000(%rbp,%rcx,4), %rcx
	movq	%rcx, %rax
	cqto
	movl	$10, %ecx
	idivq	%rcx
	shlq	$3, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	-400020(%rbp), %esi     # 4-byte Reload
	movslq	%esi, %rcx
	movl	-400000(%rbp,%rcx,4), %edi
	sarl	$3, %eax
	addl	%eax, %edi
	movl	%edi, -400000(%rbp,%rcx,4)
	movslq	%esi, %rcx
	cmpl	$52428800, -400000(%rbp,%rcx,4) # imm = 0x3200000
	jle	.LBB0_12
# %bb.11:                               # %if.then23
                                        #   in Loop: Header=BB0_7 Depth=2
	movl	-400020(%rbp), %eax     # 4-byte Reload
	movslq	%eax, %rcx
	movl	$52428, -400000(%rbp,%rcx,4) # imm = 0xCCCC
.LBB0_12:                               # %if.end26
                                        #   in Loop: Header=BB0_7 Depth=2
	jmp	.LBB0_13
.LBB0_13:                               # %for.inc27
                                        #   in Loop: Header=BB0_7 Depth=2
	movl	-400028(%rbp), %eax     # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -400024(%rbp)     # 4-byte Spill
	jmp	.LBB0_7
.LBB0_14:                               # %for.end29
                                        #   in Loop: Header=BB0_5 Depth=1
	jmp	.LBB0_15
.LBB0_15:                               # %for.inc30
                                        #   in Loop: Header=BB0_5 Depth=1
	movl	-400020(%rbp), %eax     # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -400016(%rbp)     # 4-byte Spill
	jmp	.LBB0_5
.LBB0_16:                               # %for.end32
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	cvtsi2sdl	-4(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movabsq	$.L.str.2, %rdi
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	printf
	xorl	%ecx, %ecx
	movl	%eax, -400032(%rbp)     # 4-byte Spill
	movl	%ecx, %eax
	addq	$400032, %rsp           # imm = 0x61AA0
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
