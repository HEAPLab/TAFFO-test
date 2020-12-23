	.text
	.file	"phi-and-math.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function clip_rgb
.LCPI0_0:
	.quad	4643176031446892544     # double 255
	.text
	.globl	clip_rgb
	.p2align	4, 0x90
	.type	clip_rgb,@function
clip_rgb:                               # @clip_rgb
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorps	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	movsd	%xmm0, -8(%rbp)         # 8-byte Spill
	jbe	.LBB0_2
# %bb.1:                                # %if.then
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)         # 8-byte Spill
	jmp	.LBB0_2
.LBB0_2:                                # %if.end
	movsd	-8(%rbp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	jbe	.LBB0_4
# %bb.3:                                # %if.then2
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	jmp	.LBB0_4
.LBB0_4:                                # %if.end3
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	clip_rgb, .Lfunc_end0-clip_rgb
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI1_0:
	.quad	4608992865850220347     # double 1.4019999999999999
.LCPI1_1:
	.quad	4638707616191610880     # double 128
.LCPI1_2:
	.quad	-4623500941833816758    # double -0.34414
.LCPI1_3:
	.quad	-4618764416033718660    # double -0.71414
.LCPI1_4:
	.quad	4610659197712347431     # double 1.772
.LCPI1_5:
	.quad	4710765210229538816     # double 8388608
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
	subq	$144, %rsp
	movabsq	$.L.str.3, %rdi
	leaq	-12(%rbp), %rsi
	movb	$0, %al
	callq	__isoc99_scanf
	movabsq	$.L.str.3, %rdi
	leaq	-16(%rbp), %rsi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	__isoc99_scanf
	movabsq	$.L.str.3, %rdi
	leaq	-20(%rbp), %rsi
	movl	%eax, -88(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	__isoc99_scanf
	xorl	%ecx, %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
.LBB1_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
	movl	-92(%rbp), %eax         # 4-byte Reload
	cmpl	$5, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jge	.LBB1_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB1_3
.LBB1_3:                                # %for.cond6
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-100(%rbp), %eax        # 4-byte Reload
	cmpl	$5, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jge	.LBB1_6
# %bb.4:                                # %for.body8
                                        #   in Loop: Header=BB1_3 Depth=2
	cvtsi2sdl	-12(%rbp), %xmm0
	cvtsi2sdl	-16(%rbp), %xmm1
	movsd	.LCPI1_0(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	cvtsi2sdl	-12(%rbp), %xmm0
	cvtsi2sdl	-20(%rbp), %xmm2
	movsd	.LCPI1_2(%rip), %xmm3   # xmm3 = mem[0],zero
	movaps	%xmm2, %xmm4
	mulsd	%xmm3, %xmm4
	movaps	%xmm0, %xmm3
	addsd	%xmm4, %xmm3
	cvtsi2sdl	-16(%rbp), %xmm4
	movsd	.LCPI1_3(%rip), %xmm5   # xmm5 = mem[0],zero
	mulsd	%xmm5, %xmm4
	addsd	%xmm4, %xmm3
	addsd	%xmm1, %xmm3
	movsd	.LCPI1_4(%rip), %xmm4   # xmm4 = mem[0],zero
	mulsd	%xmm4, %xmm2
	addsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	movl	$.L.str.4, %edi
	movb	$3, %al
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm3, %xmm1
	movsd	-112(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm3, -120(%rbp)       # 8-byte Spill
	callq	printf
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	clip_rgb
	movsd	%xmm0, -8(%rbp)
	movsd	.LCPI1_5(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	-120(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, %edi
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	callq	clip_rgb.1_u9_23fixp
	movsd	-112(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %rdx
                                        # kill: def $edx killed $edx killed $rdx
	movl	%edx, %edi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	clip_rgb.1_u9_23fixp
	cvttsd2si	-8(%rbp), %ecx
	movl	-96(%rbp), %edx         # 4-byte Reload
	movslq	%edx, %rsi
	imulq	$12, %rsi, %rsi
	leaq	-80(%rbp), %r8
	movq	%r8, %r9
	addq	%rsi, %r9
	movl	%ecx, (%r9)
	movl	-140(%rbp), %ecx        # 4-byte Reload
	shrl	$23, %ecx
	movslq	%edx, %rsi
	imulq	$12, %rsi, %rsi
	movq	%r8, %r9
	addq	%rsi, %r9
	movl	%ecx, 4(%r9)
	shrl	$23, %eax
	movslq	%edx, %rsi
	imulq	$12, %rsi, %rsi
	movq	%r8, %r9
	addq	%rsi, %r9
	movl	%eax, 8(%r9)
	movslq	%edx, %rsi
	imulq	$12, %rsi, %rsi
	movq	%r8, %r9
	addq	%rsi, %r9
	movl	(%r9), %esi
	movslq	%edx, %r9
	imulq	$12, %r9, %r9
	movq	%r8, %r10
	addq	%r9, %r10
	movl	4(%r10), %edx
	movl	-96(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %r9
	imulq	$12, %r9, %r9
	addq	%r9, %r8
	movl	8(%r8), %ecx
	movabsq	$.L.str.5, %rdi
	movb	$0, %al
	callq	printf
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB1_3 Depth=2
	movl	-104(%rbp), %eax        # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB1_3
.LBB1_6:                                # %for.end
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_7
.LBB1_7:                                # %for.inc47
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-96(%rbp), %eax         # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB1_1
.LBB1_8:                                # %for.end49
	xorl	%eax, %eax
	addq	$144, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function clip_rgb.1_u9_23fixp
	.type	clip_rgb.1_u9_23fixp,@function
clip_rgb.1_u9_23fixp:                   # @clip_rgb.1_u9_23fixp
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	$1, %al
	testb	%al, %al
	movl	%edi, -4(%rbp)          # 4-byte Spill
	jne	.LBB2_2
	jmp	.LBB2_1
.LBB2_1:                                # %if.then
	xorl	%eax, %eax
	movl	%eax, -4(%rbp)          # 4-byte Spill
	jmp	.LBB2_2
.LBB2_2:                                # %if.end
	movl	-4(%rbp), %eax          # 4-byte Reload
	movl	%eax, %ecx
	movl	%ecx, %edx
	subq	$2139095041, %rdx       # imm = 0x7F800001
	movl	%eax, -8(%rbp)          # 4-byte Spill
	jl	.LBB2_4
	jmp	.LBB2_3
.LBB2_3:                                # %if.then2
	movl	$2139095040, %eax       # imm = 0x7F800000
	movl	%eax, -8(%rbp)          # 4-byte Spill
	jmp	.LBB2_4
.LBB2_4:                                # %if.end3
	movl	-8(%rbp), %eax          # 4-byte Reload
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	clip_rgb.1_u9_23fixp, .Lfunc_end2-clip_rgb.1_u9_23fixp
	.cfi_endproc
                                        # -- End function
	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"%d"
	.size	.L.str.3, 3

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Pixel: %f %f %f\n"
	.size	.L.str.4, 17

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Pixel: %d %d %d\n"
	.size	.L.str.5, 17

	.ident	"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym clip_rgb
	.addrsig_sym __isoc99_scanf
	.addrsig_sym printf
	.addrsig_sym clip_rgb.1_u9_23fixp
