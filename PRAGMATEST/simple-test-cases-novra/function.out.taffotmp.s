	.text
	.file	"function.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function fun
.LCPI0_0:
	.long	1199570944              # float 65536
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
	movss	%xmm0, -4(%rbp)
	movss	%xmm1, -8(%rbp)
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	mulss	-8(%rbp), %xmm0
	movl	global.fixp, %eax
	movaps	%xmm2, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %ecx
	addl	%eax, %ecx
	cvtsi2ss	%ecx, %xmm0
	divss	%xmm2, %xmm0
	movss	%xmm0, -12(%rbp)
	movl	global.fixp, %eax
	addl	$65536, %eax            # imm = 0x10000
	movl	%eax, global.fixp
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	fun, .Lfunc_end0-fun
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function funInt
.LCPI1_0:
	.long	1199570944              # float 65536
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
	movss	.LCPI1_0(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
	movss	%xmm1, -8(%rbp)
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	mulss	-8(%rbp), %xmm0
	movl	global.fixp, %eax
	mulss	%xmm0, %xmm2
	cvttss2si	%xmm2, %ecx
	addl	%eax, %ecx
	sarl	$16, %ecx
	movl	%ecx, -12(%rbp)
	movslq	global.fixp, %rdx
	imulq	$1178968522, %rdx, %rdx # imm = 0x4645A1CA
	sarq	$30, %rdx
                                        # kill: def $edx killed $edx killed $rdx
	movl	%edx, global.fixp
	movl	-12(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	funInt, .Lfunc_end1-funInt
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function main
.LCPI2_0:
	.long	1191182336              # float 32768
.LCPI2_3:
	.long	1092668621              # float 10.0500002
.LCPI2_4:
	.long	1166016512              # float 4096
.LCPI2_5:
	.long	1165623296              # float 4000
.LCPI2_6:
	.long	1092831045              # float 10.2048998
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI2_1:
	.quad	4674736413210574848     # double 32768
.LCPI2_2:
	.quad	4621813488089437307     # double 9.9900000000000002
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
	movss	.LCPI2_6(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movl	$0, -4(%rbp)
	movss	%xmm0, -8(%rbp)
	movl	$331035, -12(%rbp)      # imm = 0x50D1B
	movl	$2, -16(%rbp)
	movl	-12(%rbp), %edi
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	callq	fun.11_s17_15fixp
	movss	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	cvtsi2ss	%eax, %xmm1
	divss	%xmm0, %xmm1
	movss	%xmm1, -8(%rbp)
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movabsq	$.L.str.3, %rdi
	movb	$1, %al
	callq	printf
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movl	-12(%rbp), %edi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	fun.10_s17_15fixp
	movss	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	cvtsi2ss	%eax, %xmm1
	divss	%xmm0, %xmm1
	movss	%xmm1, -8(%rbp)
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movabsq	$.L.str.3, %rdi
	movb	$1, %al
	callq	printf
	movl	-12(%rbp), %edi
	movl	-12(%rbp), %esi
	movl	%eax, -24(%rbp)         # 4-byte Spill
	callq	fun.12_s17_15fixp
	movss	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	cvtsi2ss	%eax, %xmm1
	divss	%xmm0, %xmm1
	movss	%xmm1, -8(%rbp)
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movabsq	$.L.str.3, %rdi
	movb	$1, %al
	callq	printf
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	-8(%rbp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	fun
	movss	%xmm0, -8(%rbp)
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movabsq	$.L.str.3, %rdi
	movb	$1, %al
	callq	printf
	movss	.LCPI2_5(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	-8(%rbp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm1
	movss	%xmm1, -8(%rbp)
	movl	-12(%rbp), %edi
	movl	-12(%rbp), %esi
	movl	%eax, -32(%rbp)         # 4-byte Spill
	callq	fun.12_s17_15fixp
	movsd	.LCPI2_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	%eax, -12(%rbp)
	cvtsi2sdl	-12(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movabsq	$.L.str.3, %rdi
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	printf
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movl	-12(%rbp), %edi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	fun.10_s17_15fixp
	movsd	.LCPI2_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	%eax, -12(%rbp)
	cvtsi2sdl	-12(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movabsq	$.L.str.3, %rdi
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	printf
	movl	-12(%rbp), %edi
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movl	%eax, -40(%rbp)         # 4-byte Spill
	callq	fun.11_s17_15fixp
	movsd	.LCPI2_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	%eax, -12(%rbp)
	cvtsi2sdl	-12(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movabsq	$.L.str.3, %rdi
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	printf
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	-8(%rbp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	fun
	movsd	.LCPI2_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movss	.LCPI2_0(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm2
	cvttss2si	%xmm2, %eax
	movl	%eax, -12(%rbp)
	cvtsi2sdl	-12(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movabsq	$.L.str.3, %rdi
	movb	$1, %al
	callq	printf
	movss	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI2_4(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movss	-8(%rbp), %xmm2         # xmm2 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm2
	mulss	%xmm2, %xmm0
	cvttss2si	%xmm0, %ecx
	movl	%ecx, -12(%rbp)
	movl	-12(%rbp), %edi
	movl	-12(%rbp), %esi
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	fun.12_s17_15fixp
	sarl	$15, %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %esi
	movabsq	$.L.str.4, %rdi
	movb	$0, %al
	callq	printf
	movl	-12(%rbp), %edi
	movl	-12(%rbp), %esi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	fun.12_s17_15fixp
	sarl	$15, %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %esi
	movabsq	$.L.str.4, %rdi
	movb	$0, %al
	callq	printf
	movl	-12(%rbp), %edi
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movl	%eax, -56(%rbp)         # 4-byte Spill
	callq	fun.11_s17_15fixp
	sarl	$15, %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %esi
	movabsq	$.L.str.4, %rdi
	movb	$0, %al
	callq	printf
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movl	-12(%rbp), %edi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	fun.10_s17_15fixp
	sarl	$15, %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %esi
	movabsq	$.L.str.4, %rdi
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.5, %rdi
	movl	%eax, -64(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movss	.LCPI2_3(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -8(%rbp)
	movl	-12(%rbp), %edi
	movl	-12(%rbp), %esi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	funInt.3_fixp
	movss	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	shll	$15, %eax
	cvtsi2ss	%eax, %xmm1
	divss	%xmm0, %xmm1
	movss	%xmm1, -8(%rbp)
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movabsq	$.L.str.3, %rdi
	movb	$1, %al
	callq	printf
	movl	-12(%rbp), %edi
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movl	%eax, -72(%rbp)         # 4-byte Spill
	callq	funInt.1_fixp
	movss	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	shll	$15, %eax
	cvtsi2ss	%eax, %xmm1
	divss	%xmm0, %xmm1
	movss	%xmm1, -8(%rbp)
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movabsq	$.L.str.3, %rdi
	movb	$1, %al
	callq	printf
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movl	-12(%rbp), %edi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	funInt.2_fixp
	movss	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	shll	$15, %eax
	cvtsi2ss	%eax, %xmm1
	divss	%xmm0, %xmm1
	movss	%xmm1, -8(%rbp)
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movabsq	$.L.str.3, %rdi
	movb	$1, %al
	callq	printf
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	-8(%rbp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	funInt
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movabsq	$.L.str.3, %rdi
	movb	$1, %al
	callq	printf
	movsd	.LCPI2_2(%rip), %xmm0   # xmm0 = mem[0],zero
	movss	.LCPI2_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movsd	.LCPI2_1(%rip), %xmm2   # xmm2 = mem[0],zero
	cvtsi2sdl	-12(%rbp), %xmm3
	divsd	%xmm2, %xmm3
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	movaps	%xmm3, %xmm0
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movss	%xmm1, -96(%rbp)        # 4-byte Spill
	movsd	%xmm2, -104(%rbp)       # 8-byte Spill
	callq	sqrt
	movsd	-104(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	cvtsi2ss	%eax, %xmm0
	movss	-96(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	-88(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	callq	exp
	movss	.LCPI2_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	cvtsd2ss	%xmm0, %xmm0
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %eax
	movl	%eax, -12(%rbp)
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movl	-12(%rbp), %edi
	callq	funInt.2_fixp
	movsd	.LCPI2_1(%rip), %xmm0   # xmm0 = mem[0],zero
	shll	$15, %eax
	movl	%eax, -12(%rbp)
	cvtsi2sdl	-12(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movabsq	$.L.str.3, %rdi
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	printf
	movl	-12(%rbp), %edi
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	funInt.1_fixp
	movsd	.LCPI2_1(%rip), %xmm0   # xmm0 = mem[0],zero
	shll	$15, %eax
	movl	%eax, -12(%rbp)
	cvtsi2sdl	-12(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movabsq	$.L.str.3, %rdi
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	printf
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	-8(%rbp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	%eax, -112(%rbp)        # 4-byte Spill
	callq	funInt
	movsd	.LCPI2_1(%rip), %xmm0   # xmm0 = mem[0],zero
	shll	$15, %eax
	movl	%eax, -12(%rbp)
	cvtsi2sdl	-12(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movabsq	$.L.str.3, %rdi
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	printf
	movl	-12(%rbp), %edi
	movl	-12(%rbp), %esi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	funInt.3_fixp
	movsd	.LCPI2_1(%rip), %xmm0   # xmm0 = mem[0],zero
	shll	$15, %eax
	movl	%eax, -12(%rbp)
	cvtsi2sdl	-12(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movabsq	$.L.str.3, %rdi
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	printf
	movss	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	mulss	-8(%rbp), %xmm0
	cvttss2si	%xmm0, %ecx
	movl	%ecx, -12(%rbp)
	movl	-12(%rbp), %edi
	movl	-12(%rbp), %esi
	movl	%eax, -120(%rbp)        # 4-byte Spill
	callq	funInt.3_fixp
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %esi
	movabsq	$.L.str.4, %rdi
	movb	$0, %al
	callq	printf
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movl	-12(%rbp), %edi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	funInt.2_fixp
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %esi
	movabsq	$.L.str.4, %rdi
	movb	$0, %al
	callq	printf
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	-8(%rbp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	%eax, -128(%rbp)        # 4-byte Spill
	callq	funInt
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %esi
	movabsq	$.L.str.4, %rdi
	movb	$0, %al
	callq	printf
	movl	-12(%rbp), %edi
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	funInt.1_fixp
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %esi
	movabsq	$.L.str.4, %rdi
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.6, %rdi
	movl	%eax, -136(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	xorl	%ecx, %ecx
	movl	%eax, -140(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	addq	$144, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function funInt.1_fixp
.LCPI3_0:
	.long	1191182336              # float 32768
	.text
	.p2align	4, 0x90
	.type	funInt.1_fixp,@function
funInt.1_fixp:                          # @funInt.1_fixp
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movss	.LCPI3_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movl	%edi, -4(%rbp)
	movss	%xmm0, -8(%rbp)
	movl	-4(%rbp), %eax
	mulss	-8(%rbp), %xmm1
	cvttss2si	%xmm1, %ecx
	movslq	%eax, %rdx
	movslq	%ecx, %rsi
	imulq	%rsi, %rdx
	sarq	$15, %rdx
                                        # kill: def $edx killed $edx killed $rdx
	movl	global.fixp, %eax
	sarl	$1, %eax
	addl	%eax, %edx
	sarl	$15, %edx
	movl	%edx, -12(%rbp)
	movslq	global.fixp, %rsi
	imulq	$1178968522, %rsi, %rsi # imm = 0x4645A1CA
	sarq	$30, %rsi
                                        # kill: def $esi killed $esi killed $rsi
	movl	%esi, global.fixp
	movl	-12(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	funInt.1_fixp, .Lfunc_end3-funInt.1_fixp
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function funInt.2_fixp
.LCPI4_0:
	.long	1191182336              # float 32768
	.text
	.p2align	4, 0x90
	.type	funInt.2_fixp,@function
funInt.2_fixp:                          # @funInt.2_fixp
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movss	.LCPI4_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movl	-8(%rbp), %eax
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %ecx
	movslq	%ecx, %rdx
	movslq	%eax, %rsi
	imulq	%rsi, %rdx
	sarq	$15, %rdx
                                        # kill: def $edx killed $edx killed $rdx
	movl	global.fixp, %eax
	sarl	$1, %eax
	addl	%eax, %edx
	sarl	$15, %edx
	movl	%edx, -12(%rbp)
	movslq	global.fixp, %rsi
	imulq	$1178968522, %rsi, %rsi # imm = 0x4645A1CA
	sarq	$30, %rsi
                                        # kill: def $esi killed $esi killed $rsi
	movl	%esi, global.fixp
	movl	-12(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	funInt.2_fixp, .Lfunc_end4-funInt.2_fixp
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function funInt.3_fixp
	.type	funInt.3_fixp,@function
funInt.3_fixp:                          # @funInt.3_fixp
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	movl	-8(%rbp), %ecx
	movslq	%eax, %rdx
	movslq	%ecx, %r8
	imulq	%r8, %rdx
	sarq	$15, %rdx
                                        # kill: def $edx killed $edx killed $rdx
	movl	global.fixp, %eax
	sarl	$1, %eax
	addl	%eax, %edx
	sarl	$15, %edx
	movl	%edx, -12(%rbp)
	movslq	global.fixp, %r8
	imulq	$1178968522, %r8, %r8   # imm = 0x4645A1CA
	sarq	$30, %r8
                                        # kill: def $r8d killed $r8d killed $r8
	movl	%r8d, global.fixp
	movl	-12(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	funInt.3_fixp, .Lfunc_end5-funInt.3_fixp
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function fun.10_s17_15fixp
.LCPI6_0:
	.long	1191182336              # float 32768
	.text
	.p2align	4, 0x90
	.type	fun.10_s17_15fixp,@function
fun.10_s17_15fixp:                      # @fun.10_s17_15fixp
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movss	.LCPI6_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movl	-8(%rbp), %eax
	movaps	%xmm1, %xmm2
	mulss	%xmm0, %xmm2
	cvttss2si	%xmm2, %ecx
	movslq	%ecx, %rdx
	movslq	%eax, %rsi
	imulq	%rsi, %rdx
	sarq	$15, %rdx
                                        # kill: def $edx killed $edx killed $rdx
	movl	global.fixp, %eax
	sarl	$1, %eax
	addl	%eax, %edx
	cvtsi2ss	%edx, %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	movl	global.fixp, %eax
	addl	$65536, %eax            # imm = 0x10000
	movl	%eax, global.fixp
	mulss	-12(%rbp), %xmm1
	cvttss2si	%xmm1, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	fun.10_s17_15fixp, .Lfunc_end6-fun.10_s17_15fixp
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function fun.11_s17_15fixp
.LCPI7_0:
	.long	1191182336              # float 32768
	.text
	.p2align	4, 0x90
	.type	fun.11_s17_15fixp,@function
fun.11_s17_15fixp:                      # @fun.11_s17_15fixp
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movss	.LCPI7_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movl	%edi, -4(%rbp)
	movss	%xmm0, -8(%rbp)
	movl	-4(%rbp), %eax
	movaps	%xmm1, %xmm0
	mulss	-8(%rbp), %xmm0
	cvttss2si	%xmm0, %ecx
	movslq	%eax, %rdx
	movslq	%ecx, %rsi
	imulq	%rsi, %rdx
	sarq	$15, %rdx
                                        # kill: def $edx killed $edx killed $rdx
	movl	global.fixp, %eax
	sarl	$1, %eax
	addl	%eax, %edx
	cvtsi2ss	%edx, %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	movl	global.fixp, %eax
	addl	$65536, %eax            # imm = 0x10000
	movl	%eax, global.fixp
	mulss	-12(%rbp), %xmm1
	cvttss2si	%xmm1, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end7:
	.size	fun.11_s17_15fixp, .Lfunc_end7-fun.11_s17_15fixp
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function fun.12_s17_15fixp
.LCPI8_0:
	.long	1191182336              # float 32768
	.text
	.p2align	4, 0x90
	.type	fun.12_s17_15fixp,@function
fun.12_s17_15fixp:                      # @fun.12_s17_15fixp
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movss	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	movl	-8(%rbp), %ecx
	movslq	%eax, %rdx
	movslq	%ecx, %r8
	imulq	%r8, %rdx
	sarq	$15, %rdx
                                        # kill: def $edx killed $edx killed $rdx
	movl	global.fixp, %eax
	sarl	$1, %eax
	addl	%eax, %edx
	cvtsi2ss	%edx, %xmm1
	divss	%xmm0, %xmm1
	movss	%xmm1, -12(%rbp)
	movl	global.fixp, %eax
	addl	$65536, %eax            # imm = 0x10000
	movl	%eax, global.fixp
	mulss	-12(%rbp), %xmm0
	cvttss2si	%xmm0, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end8:
	.size	fun.12_s17_15fixp, .Lfunc_end8-fun.12_s17_15fixp
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

	.type	global.fixp,@object     # @global.fixp
	.data
	.globl	global.fixp
	.p2align	2
global.fixp:
	.long	2184511                 # 0x21553f
	.size	global.fixp, 4

	.ident	"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fun
	.addrsig_sym funInt
	.addrsig_sym printf
	.addrsig_sym sqrt
	.addrsig_sym exp
	.addrsig_sym funInt.1_fixp
	.addrsig_sym funInt.2_fixp
	.addrsig_sym funInt.3_fixp
	.addrsig_sym fun.10_s17_15fixp
	.addrsig_sym fun.11_s17_15fixp
	.addrsig_sym fun.12_s17_15fixp
	.addrsig_sym global
	.addrsig_sym global.fixp
