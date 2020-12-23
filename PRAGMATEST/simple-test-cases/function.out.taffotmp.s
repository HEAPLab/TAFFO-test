	.text
	.file	"function.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function fun
.LCPI0_0:
	.long	1065353216              # float 1
	.text
	.globl	fun
	.p2align	4, 0x90
	.type	fun,@function
fun:                                    # @fun
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movss	.LCPI0_0(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	addss	global, %xmm0
	addss	global, %xmm2
	movss	%xmm2, global
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	fun, .Lfunc_end0-fun
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function funInt
.LCPI1_0:
	.quad	4607623771563499717     # double 1.0980000000000001
	.text
	.globl	funInt
	.p2align	4, 0x90
	.type	funInt,@function
funInt:                                 # @funInt
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movsd	.LCPI1_0(%rip), %xmm2   # xmm2 = mem[0],zero
	mulss	%xmm1, %xmm0
	addss	global, %xmm0
	cvttss2si	%xmm0, %eax
	movss	global, %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm2, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, global
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	funInt, .Lfunc_end1-funInt
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI2_0:
	.quad	4621813488089437307     # double 9.9900000000000002
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI2_1:
	.long	1166016512              # float 4096
.LCPI2_2:
	.long	1092723566              # float 10.1023998
.LCPI2_3:
	.long	1165623296              # float 4000
.LCPI2_4:
	.long	1092831045              # float 10.2048998
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
	subq	$176, %rsp
	movss	.LCPI2_2(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI2_4(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	callq	fun.21
	cvtss2sd	%xmm0, %xmm1
	movabsq	$.L.str.3, %rdi
	movss	%xmm0, -4(%rbp)         # 4-byte Spill
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	printf
	movss	.LCPI2_2(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movss	-4(%rbp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movl	%eax, -8(%rbp)          # 4-byte Spill
	callq	fun.23
	cvtss2sd	%xmm0, %xmm0
	movabsq	$.L.str.3, %rdi
	movb	$1, %al
	callq	printf
	movss	.LCPI2_2(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -12(%rbp)        # 4-byte Spill
	movss	-12(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movl	%eax, -16(%rbp)         # 4-byte Spill
	callq	fun.21
	cvtss2sd	%xmm0, %xmm1
	movabsq	$.L.str.3, %rdi
	movss	%xmm0, -20(%rbp)        # 4-byte Spill
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	printf
	movss	-20(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-20(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movl	%eax, -24(%rbp)         # 4-byte Spill
	callq	fun.4
	cvtss2sd	%xmm0, %xmm1
	movabsq	$.L.str.3, %rdi
	movss	%xmm0, -28(%rbp)        # 4-byte Spill
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	printf
	movss	.LCPI2_2(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI2_3(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movss	-28(%rbp), %xmm2        # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm2
	movss	%xmm0, -32(%rbp)        # 4-byte Spill
	movss	-32(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movss	%xmm2, -40(%rbp)        # 4-byte Spill
	callq	fun.21
	cvtss2sd	%xmm0, %xmm1
	movabsq	$.L.str.3, %rdi
	movss	%xmm0, -44(%rbp)        # 4-byte Spill
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	printf
	movss	-40(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-44(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	fun.4
	cvtss2sd	%xmm0, %xmm1
	movabsq	$.L.str.3, %rdi
	movss	%xmm0, -52(%rbp)        # 4-byte Spill
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	printf
	movss	-52(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-40(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movl	%eax, -56(%rbp)         # 4-byte Spill
	callq	fun.4
	cvtss2sd	%xmm0, %xmm0
	movabsq	$.L.str.3, %rdi
	movb	$1, %al
	callq	printf
	movss	-40(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-40(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	fun.4
	cvtss2sd	%xmm0, %xmm0
	movabsq	$.L.str.3, %rdi
	movb	$1, %al
	callq	printf
	movss	.LCPI2_1(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	-40(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movss	%xmm1, -64(%rbp)        # 4-byte Spill
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	fun.4
	cvttss2si	%xmm0, %esi
	movabsq	$.L.str.4, %rdi
	movb	$0, %al
	callq	printf
	movss	-64(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-64(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movl	%eax, -72(%rbp)         # 4-byte Spill
	callq	fun.4
	cvttss2si	%xmm0, %esi
	movabsq	$.L.str.4, %rdi
	movb	$0, %al
	callq	printf
	movss	-64(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-40(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	fun.4
	cvttss2si	%xmm0, %esi
	movabsq	$.L.str.4, %rdi
	movb	$0, %al
	callq	printf
	movss	-40(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-64(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	fun.4
	cvttss2si	%xmm0, %esi
	movabsq	$.L.str.4, %rdi
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.5, %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movss	-64(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-64(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movl	%eax, -88(%rbp)         # 4-byte Spill
	callq	funInt.1
	cvtsi2ss	%eax, %xmm0
	cvtss2sd	%xmm0, %xmm1
	movabsq	$.L.str.3, %rdi
	movss	%xmm0, -92(%rbp)        # 4-byte Spill
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	printf
	movss	-64(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-92(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	funInt.1
	cvtsi2ss	%eax, %xmm0
	cvtss2sd	%xmm0, %xmm1
	movabsq	$.L.str.3, %rdi
	movss	%xmm0, -100(%rbp)       # 4-byte Spill
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	printf
	movss	-100(%rbp), %xmm0       # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-64(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	funInt.1
	cvtsi2ss	%eax, %xmm0
	cvtss2sd	%xmm0, %xmm1
	movabsq	$.L.str.3, %rdi
	movss	%xmm0, -108(%rbp)       # 4-byte Spill
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	printf
	movss	-108(%rbp), %xmm0       # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-108(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movl	%eax, -112(%rbp)        # 4-byte Spill
	callq	funInt.1
	cvtsi2ss	%eax, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movabsq	$.L.str.3, %rdi
	movb	$1, %al
	callq	printf
	movsd	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movss	-64(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm2
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	sqrt
	cvtsd2ss	%xmm0, %xmm0
	cvtss2sd	%xmm0, %xmm1
	movsd	-120(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	movss	%xmm0, -128(%rbp)       # 4-byte Spill
	movaps	%xmm1, %xmm0
	callq	exp
	cvtsd2ss	%xmm0, %xmm1
	movss	-128(%rbp), %xmm0       # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	funInt.1
	cvtsi2ss	%eax, %xmm0
	cvtss2sd	%xmm0, %xmm1
	movabsq	$.L.str.3, %rdi
	movss	%xmm0, -132(%rbp)       # 4-byte Spill
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	printf
	movss	-132(%rbp), %xmm0       # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-128(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movl	%eax, -136(%rbp)        # 4-byte Spill
	callq	funInt.1
	cvtsi2ss	%eax, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movabsq	$.L.str.3, %rdi
	movb	$1, %al
	callq	printf
	movss	-128(%rbp), %xmm0       # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-128(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	funInt.1
	cvtsi2ss	%eax, %xmm0
	cvtss2sd	%xmm0, %xmm1
	movabsq	$.L.str.3, %rdi
	movss	%xmm0, -144(%rbp)       # 4-byte Spill
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	printf
	movss	-144(%rbp), %xmm0       # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-144(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	funInt.1
	cvtsi2ss	%eax, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movabsq	$.L.str.3, %rdi
	movb	$1, %al
	callq	printf
	movss	-128(%rbp), %xmm0       # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-128(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movl	%eax, -152(%rbp)        # 4-byte Spill
	callq	funInt.1
	movabsq	$.L.str.4, %rdi
	movl	%eax, %esi
	movb	$0, %al
	callq	printf
	movss	-128(%rbp), %xmm0       # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-128(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	funInt.1
	movabsq	$.L.str.4, %rdi
	movl	%eax, %esi
	movb	$0, %al
	callq	printf
	movss	-128(%rbp), %xmm0       # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-128(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movl	%eax, -160(%rbp)        # 4-byte Spill
	callq	funInt.1
	movabsq	$.L.str.4, %rdi
	movl	%eax, %esi
	movb	$0, %al
	callq	printf
	movss	-128(%rbp), %xmm0       # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-128(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	funInt.1
	movabsq	$.L.str.4, %rdi
	movl	%eax, %esi
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.6, %rdi
	movl	%eax, -168(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	xorl	%ecx, %ecx
	movl	%eax, -172(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	addq	$176, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function funInt.1
.LCPI3_0:
	.quad	4607623771563499717     # double 1.0980000000000001
	.text
	.p2align	4, 0x90
	.type	funInt.1,@function
funInt.1:                               # @funInt.1
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movsd	.LCPI3_0(%rip), %xmm2   # xmm2 = mem[0],zero
	mulss	%xmm1, %xmm0
	addss	global, %xmm0
	cvttss2si	%xmm0, %eax
	movss	global, %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm2, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, global
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	funInt.1, .Lfunc_end3-funInt.1
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function fun.4
.LCPI4_0:
	.long	1065353216              # float 1
	.text
	.p2align	4, 0x90
	.type	fun.4,@function
fun.4:                                  # @fun.4
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movss	.LCPI4_0(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	addss	global, %xmm0
	addss	global, %xmm2
	movss	%xmm2, global
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	fun.4, .Lfunc_end4-fun.4
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function fun.21
.LCPI5_0:
	.long	1065353216              # float 1
	.text
	.p2align	4, 0x90
	.type	fun.21,@function
fun.21:                                 # @fun.21
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movss	.LCPI5_0(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	addss	global, %xmm0
	addss	global, %xmm2
	movss	%xmm2, global
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	fun.21, .Lfunc_end5-fun.21
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function fun.23
.LCPI6_0:
	.long	1065353216              # float 1
	.text
	.p2align	4, 0x90
	.type	fun.23,@function
fun.23:                                 # @fun.23
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movss	.LCPI6_0(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	addss	global, %xmm0
	addss	global, %xmm2
	movss	%xmm2, global
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	fun.23, .Lfunc_end6-fun.23
	.cfi_endproc
                                        # -- End function
	.type	global,@object          # @global
	.data
	.globl	global
	.p2align	2
global:
	.long	1107645694              # float 33.3330002
	.size	global, 4

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"%f\n"
	.size	.L.str.3, 4

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%d\n"
	.size	.L.str.4, 4

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"*******************\n"
	.size	.L.str.5, 21

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"-------------------\n"
	.size	.L.str.6, 21

	.ident	"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf
	.addrsig_sym sqrt
	.addrsig_sym exp
	.addrsig_sym funInt.1
	.addrsig_sym fun.4
	.addrsig_sym fun.21
	.addrsig_sym fun.23
	.addrsig_sym global
