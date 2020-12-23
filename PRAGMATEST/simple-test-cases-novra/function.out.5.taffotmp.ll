; ModuleID = './function.out.4.taffotmp.ll'
source_filename = "./function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@global = dso_local global float 0x4040AA9FC0000000, align 4, !taffo.initweight !0, !taffo.info !1
@.str = private unnamed_addr constant [19 x i8] c"range -20000 20000\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [13 x i8] c"./function.c\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"*******************\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"-------------------\0A\00", align 1
@llvm.global.annotations = appending global [1 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (float* @global to i8*), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 6 }], section "llvm.metadata"
@global.fixp = global i32 2184511, align 4, !taffo.info !1

; Function Attrs: noinline nounwind uwtable
define dso_local float @fun(float %x, float %y) #0 !taffo.initweight !6 !taffo.equivalentChild !7 !taffo.funinfo !8 {
entry:
  %x.addr = alloca float, align 4
  %y.addr = alloca float, align 4
  %local = alloca float, align 4
  store float %x, float* %x.addr, align 4
  store float %y, float* %y.addr, align 4
  %0 = load float, float* %x.addr, align 4
  %1 = load float, float* %y.addr, align 4
  %mul = fmul float %0, %1
  %s16_16fixp1 = load i32, i32* @global.fixp, align 4, !taffo.info !1
  %2 = fmul float 6.553600e+04, %mul, !taffo.info !1
  %3 = fptosi float %2 to i32, !taffo.info !1
  %add.s16_16fixp = add i32 %3, %s16_16fixp1, !taffo.info !1
  %4 = sitofp i32 %add.s16_16fixp to float, !taffo.info !1
  %5 = fdiv float %4, 6.553600e+04, !taffo.info !1
  store float %5, float* %local, align 4, !taffo.info !9
  %s16_16fixp = load i32, i32* @global.fixp, align 4, !taffo.info !1
  %inc.s16_16fixp = add i32 %s16_16fixp, 65536, !taffo.info !1
  store i32 %inc.s16_16fixp, i32* @global.fixp, align 4, !taffo.info !9
  %6 = load float, float* %local, align 4
  ret float %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @funInt(float %x, float %y) #0 !taffo.initweight !6 !taffo.equivalentChild !10 !taffo.funinfo !8 {
entry:
  %x.addr = alloca float, align 4
  %y.addr = alloca float, align 4
  %local = alloca i32, align 4
  store float %x, float* %x.addr, align 4
  store float %y, float* %y.addr, align 4
  %0 = load float, float* %x.addr, align 4
  %1 = load float, float* %y.addr, align 4
  %mul = fmul float %0, %1
  %s16_16fixp1 = load i32, i32* @global.fixp, align 4, !taffo.info !1
  %2 = fmul float 6.553600e+04, %mul, !taffo.info !1
  %3 = fptosi float %2 to i32, !taffo.info !1
  %add.s16_16fixp = add i32 %3, %s16_16fixp1, !taffo.info !1
  %4 = ashr i32 %add.s16_16fixp, 16, !taffo.info !11
  store i32 %4, i32* %local, align 4, !taffo.info !9
  %s16_16fixp = load i32, i32* @global.fixp, align 4, !taffo.info !1
  %5 = sext i32 %s16_16fixp to i64, !taffo.info !1
  %6 = mul i64 %5, 1178968522, !taffo.info !12
  %7 = ashr i64 %6, 30, !taffo.info !12
  %mul2.s16_16fixp = trunc i64 %7 to i32, !taffo.info !1
  store i32 %mul2.s16_16fixp, i32* @global.fixp, align 4, !taffo.info !9
  %8 = load i32, i32* %local, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !14 !taffo.funinfo !14 {
entry:
  %retval = alloca i32, align 4
  %a = alloca float, align 4
  %b.s17_15fixp = alloca i32, align 4, !taffo.info !15
  %c = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store float 0x402468E8A0000000, float* %a, align 4
  store i32 331035, i32* %b.s17_15fixp, align 4, !taffo.info !18
  store i32 2, i32* %c, align 4
  %s17_15fixp34 = load i32, i32* %b.s17_15fixp, align 4, !taffo.info !15
  %0 = load float, float* %a, align 4
  %call.s17_15fixp = call i32 @fun.11_s17_15fixp(i32 %s17_15fixp34, float %0), !taffo.info !15
  %1 = sitofp i32 %call.s17_15fixp to float, !taffo.info !15
  %2 = fdiv float %1, 3.276800e+04, !taffo.info !15
  store float %2, float* %a, align 4, !taffo.info !18
  %3 = load float, float* %a, align 4
  %conv = fpext float %3 to double
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv)
  %4 = load float, float* %a, align 4
  %s17_15fixp33 = load i32, i32* %b.s17_15fixp, align 4, !taffo.info !15
  %call3.s17_15fixp = call i32 @fun.10_s17_15fixp(float %4, i32 %s17_15fixp33), !taffo.info !15
  %5 = sitofp i32 %call3.s17_15fixp to float, !taffo.info !15
  %6 = fdiv float %5, 3.276800e+04, !taffo.info !15
  store float %6, float* %a, align 4, !taffo.info !18
  %7 = load float, float* %a, align 4
  %conv4 = fpext float %7 to double
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv4)
  %s17_15fixp32 = load i32, i32* %b.s17_15fixp, align 4, !taffo.info !15
  %s17_15fixp31 = load i32, i32* %b.s17_15fixp, align 4, !taffo.info !15
  %call6.s17_15fixp = call i32 @fun.12_s17_15fixp(i32 %s17_15fixp32, i32 %s17_15fixp31), !taffo.info !15
  %8 = sitofp i32 %call6.s17_15fixp to float, !taffo.info !15
  %9 = fdiv float %8, 3.276800e+04, !taffo.info !15
  store float %9, float* %a, align 4, !taffo.info !18
  %10 = load float, float* %a, align 4
  %conv7 = fpext float %10 to double
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv7)
  %11 = load float, float* %a, align 4
  %12 = load float, float* %a, align 4
  %call9 = call float @fun(float %11, float %12)
  store float %call9, float* %a, align 4
  %13 = load float, float* %a, align 4
  %conv10 = fpext float %13 to double
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv10)
  %14 = load float, float* %a, align 4
  %div = fdiv float %14, 4.000000e+03
  store float %div, float* %a, align 4
  %s17_15fixp30 = load i32, i32* %b.s17_15fixp, align 4, !taffo.info !15
  %s17_15fixp29 = load i32, i32* %b.s17_15fixp, align 4, !taffo.info !15
  %call12.s17_15fixp = call i32 @fun.12_s17_15fixp(i32 %s17_15fixp30, i32 %s17_15fixp29), !taffo.info !15
  store i32 %call12.s17_15fixp, i32* %b.s17_15fixp, align 4, !taffo.info !18
  %s17_15fixp28 = load i32, i32* %b.s17_15fixp, align 4, !taffo.info !15
  %15 = sitofp i32 %s17_15fixp28 to double, !taffo.info !15
  %16 = fdiv double %15, 3.276800e+04, !taffo.info !15
  %call14.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %16), !taffo.initweight !19, !taffo.info !20
  %17 = load float, float* %a, align 4
  %s17_15fixp27 = load i32, i32* %b.s17_15fixp, align 4, !taffo.info !15
  %call15.s17_15fixp = call i32 @fun.10_s17_15fixp(float %17, i32 %s17_15fixp27), !taffo.info !15
  store i32 %call15.s17_15fixp, i32* %b.s17_15fixp, align 4, !taffo.info !18
  %s17_15fixp26 = load i32, i32* %b.s17_15fixp, align 4, !taffo.info !15
  %18 = sitofp i32 %s17_15fixp26 to double, !taffo.info !15
  %19 = fdiv double %18, 3.276800e+04, !taffo.info !15
  %call17.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %19), !taffo.initweight !19, !taffo.info !20
  %s17_15fixp25 = load i32, i32* %b.s17_15fixp, align 4, !taffo.info !15
  %20 = load float, float* %a, align 4
  %call18.s17_15fixp = call i32 @fun.11_s17_15fixp(i32 %s17_15fixp25, float %20), !taffo.info !15
  store i32 %call18.s17_15fixp, i32* %b.s17_15fixp, align 4, !taffo.info !18
  %s17_15fixp24 = load i32, i32* %b.s17_15fixp, align 4, !taffo.info !15
  %21 = sitofp i32 %s17_15fixp24 to double, !taffo.info !15
  %22 = fdiv double %21, 3.276800e+04, !taffo.info !15
  %call20.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %22), !taffo.initweight !19, !taffo.info !20
  %23 = load float, float* %a, align 4
  %24 = load float, float* %a, align 4
  %call21 = call float @fun(float %23, float %24)
  %25 = fmul float 3.276800e+04, %call21, !taffo.info !18
  %26 = fptosi float %25 to i32, !taffo.info !18
  store i32 %26, i32* %b.s17_15fixp, align 4, !taffo.info !18
  %s17_15fixp23 = load i32, i32* %b.s17_15fixp, align 4, !taffo.info !15
  %27 = sitofp i32 %s17_15fixp23 to double, !taffo.info !15
  %28 = fdiv double %27, 3.276800e+04, !taffo.info !15
  %call23.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %28), !taffo.initweight !19, !taffo.info !20
  %29 = load float, float* %a, align 4
  %div24 = fdiv float %29, 4.096000e+03
  %30 = fmul float 3.276800e+04, %div24, !taffo.info !18
  %31 = fptosi float %30 to i32, !taffo.info !18
  store i32 %31, i32* %b.s17_15fixp, align 4, !taffo.info !18
  %s17_15fixp22 = load i32, i32* %b.s17_15fixp, align 4, !taffo.info !15
  %s17_15fixp21 = load i32, i32* %b.s17_15fixp, align 4, !taffo.info !15
  %call25.s17_15fixp = call i32 @fun.12_s17_15fixp(i32 %s17_15fixp22, i32 %s17_15fixp21), !taffo.info !15
  %32 = ashr i32 %call25.s17_15fixp, 15, !taffo.info !20
  store i32 %32, i32* %c, align 4, !taffo.info !18
  %33 = load i32, i32* %c, align 4
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %33)
  %s17_15fixp20 = load i32, i32* %b.s17_15fixp, align 4, !taffo.info !15
  %s17_15fixp19 = load i32, i32* %b.s17_15fixp, align 4, !taffo.info !15
  %call28.s17_15fixp = call i32 @fun.12_s17_15fixp(i32 %s17_15fixp20, i32 %s17_15fixp19), !taffo.info !15
  %34 = ashr i32 %call28.s17_15fixp, 15, !taffo.info !20
  store i32 %34, i32* %c, align 4, !taffo.info !18
  %35 = load i32, i32* %c, align 4
  %call30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %35)
  %s17_15fixp18 = load i32, i32* %b.s17_15fixp, align 4, !taffo.info !15
  %36 = load float, float* %a, align 4
  %call31.s17_15fixp = call i32 @fun.11_s17_15fixp(i32 %s17_15fixp18, float %36), !taffo.info !15
  %37 = ashr i32 %call31.s17_15fixp, 15, !taffo.info !20
  store i32 %37, i32* %c, align 4, !taffo.info !18
  %38 = load i32, i32* %c, align 4
  %call33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %38)
  %39 = load float, float* %a, align 4
  %s17_15fixp17 = load i32, i32* %b.s17_15fixp, align 4, !taffo.info !15
  %call34.s17_15fixp = call i32 @fun.10_s17_15fixp(float %39, i32 %s17_15fixp17), !taffo.info !15
  %40 = ashr i32 %call34.s17_15fixp, 15, !taffo.info !20
  store i32 %40, i32* %c, align 4, !taffo.info !18
  %41 = load i32, i32* %c, align 4
  %call36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %41)
  %call37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  store float 0x40241999A0000000, float* %a, align 4
  %s17_15fixp16 = load i32, i32* %b.s17_15fixp, align 4, !taffo.info !15
  %s17_15fixp15 = load i32, i32* %b.s17_15fixp, align 4, !taffo.info !15
  %42 = call i32 @funInt.3_fixp(i32 %s17_15fixp16, i32 %s17_15fixp15), !taffo.info !20
  %conv39.s17_15fixp = shl i32 %42, 15, !taffo.info !15
  %43 = sitofp i32 %conv39.s17_15fixp to float, !taffo.info !15
  %44 = fdiv float %43, 3.276800e+04, !taffo.info !15
  store float %44, float* %a, align 4, !taffo.info !18
  %45 = load float, float* %a, align 4
  %conv40 = fpext float %45 to double
  %call41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv40)
  %s17_15fixp14 = load i32, i32* %b.s17_15fixp, align 4, !taffo.info !15
  %46 = load float, float* %a, align 4
  %47 = call i32 @funInt.1_fixp(i32 %s17_15fixp14, float %46), !taffo.info !20
  %conv43.s17_15fixp = shl i32 %47, 15, !taffo.info !15
  %48 = sitofp i32 %conv43.s17_15fixp to float, !taffo.info !15
  %49 = fdiv float %48, 3.276800e+04, !taffo.info !15
  store float %49, float* %a, align 4, !taffo.info !18
  %50 = load float, float* %a, align 4
  %conv44 = fpext float %50 to double
  %call45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv44)
  %51 = load float, float* %a, align 4
  %s17_15fixp13 = load i32, i32* %b.s17_15fixp, align 4, !taffo.info !15
  %52 = call i32 @funInt.2_fixp(float %51, i32 %s17_15fixp13), !taffo.info !20
  %conv47.s17_15fixp = shl i32 %52, 15, !taffo.info !15
  %53 = sitofp i32 %conv47.s17_15fixp to float, !taffo.info !15
  %54 = fdiv float %53, 3.276800e+04, !taffo.info !15
  store float %54, float* %a, align 4, !taffo.info !18
  %55 = load float, float* %a, align 4
  %conv48 = fpext float %55 to double
  %call49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv48)
  %56 = load float, float* %a, align 4
  %57 = load float, float* %a, align 4
  %call50 = call i32 @funInt(float %56, float %57)
  %conv51 = sitofp i32 %call50 to float
  store float %conv51, float* %a, align 4
  %58 = load float, float* %a, align 4
  %conv52 = fpext float %58 to double
  %call53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv52)
  %s17_15fixp12 = load i32, i32* %b.s17_15fixp, align 4, !taffo.info !15
  %59 = sitofp i32 %s17_15fixp12 to double, !taffo.info !15
  %60 = fdiv double %59, 3.276800e+04, !taffo.info !15
  %call55.flt = call double @sqrt(double %60) #3, !taffo.initweight !19, !taffo.info !15
  %61 = fmul double 3.276800e+04, %call55.flt, !taffo.info !15
  %call55.flt.fallback.s17_15fixp = fptosi double %61 to i32, !taffo.info !15
  %62 = sitofp i32 %call55.flt.fallback.s17_15fixp to float, !taffo.info !15
  %63 = fdiv float %62, 3.276800e+04, !taffo.info !15
  store float %63, float* %a, align 4, !taffo.info !18
  %64 = load float, float* %a, align 4
  %conv57 = fpext float %64 to double
  %mul = fmul double %conv57, 9.990000e+00
  %call58 = call double @exp(double %mul) #3
  %conv59 = fptrunc double %call58 to float
  %65 = fmul float 3.276800e+04, %conv59, !taffo.info !18
  %66 = fptosi float %65 to i32, !taffo.info !18
  store i32 %66, i32* %b.s17_15fixp, align 4, !taffo.info !18
  %67 = load float, float* %a, align 4
  %s17_15fixp11 = load i32, i32* %b.s17_15fixp, align 4, !taffo.info !15
  %68 = call i32 @funInt.2_fixp(float %67, i32 %s17_15fixp11), !taffo.info !20
  %conv61.s17_15fixp = shl i32 %68, 15, !taffo.info !15
  store i32 %conv61.s17_15fixp, i32* %b.s17_15fixp, align 4, !taffo.info !18
  %s17_15fixp10 = load i32, i32* %b.s17_15fixp, align 4, !taffo.info !15
  %69 = sitofp i32 %s17_15fixp10 to double, !taffo.info !15
  %70 = fdiv double %69, 3.276800e+04, !taffo.info !15
  %call63.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %70), !taffo.initweight !19, !taffo.info !20
  %s17_15fixp9 = load i32, i32* %b.s17_15fixp, align 4, !taffo.info !15
  %71 = load float, float* %a, align 4
  %72 = call i32 @funInt.1_fixp(i32 %s17_15fixp9, float %71), !taffo.info !20
  %conv65.s17_15fixp = shl i32 %72, 15, !taffo.info !15
  store i32 %conv65.s17_15fixp, i32* %b.s17_15fixp, align 4, !taffo.info !18
  %s17_15fixp8 = load i32, i32* %b.s17_15fixp, align 4, !taffo.info !15
  %73 = sitofp i32 %s17_15fixp8 to double, !taffo.info !15
  %74 = fdiv double %73, 3.276800e+04, !taffo.info !15
  %call67.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %74), !taffo.initweight !19, !taffo.info !20
  %75 = load float, float* %a, align 4
  %76 = load float, float* %a, align 4
  %call68 = call i32 @funInt(float %75, float %76), !taffo.info !18
  %77 = shl i32 %call68, 15, !taffo.info !18
  store i32 %77, i32* %b.s17_15fixp, align 4, !taffo.info !18
  %s17_15fixp7 = load i32, i32* %b.s17_15fixp, align 4, !taffo.info !15
  %78 = sitofp i32 %s17_15fixp7 to double, !taffo.info !15
  %79 = fdiv double %78, 3.276800e+04, !taffo.info !15
  %call71.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %79), !taffo.initweight !19, !taffo.info !20
  %s17_15fixp6 = load i32, i32* %b.s17_15fixp, align 4, !taffo.info !15
  %s17_15fixp5 = load i32, i32* %b.s17_15fixp, align 4, !taffo.info !15
  %80 = call i32 @funInt.3_fixp(i32 %s17_15fixp6, i32 %s17_15fixp5), !taffo.info !20
  %conv73.s17_15fixp = shl i32 %80, 15, !taffo.info !15
  store i32 %conv73.s17_15fixp, i32* %b.s17_15fixp, align 4, !taffo.info !18
  %s17_15fixp4 = load i32, i32* %b.s17_15fixp, align 4, !taffo.info !15
  %81 = sitofp i32 %s17_15fixp4 to double, !taffo.info !15
  %82 = fdiv double %81, 3.276800e+04, !taffo.info !15
  %call75.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %82), !taffo.initweight !19, !taffo.info !20
  %83 = load float, float* %a, align 4
  %84 = fmul float 3.276800e+04, %83, !taffo.info !18
  %85 = fptosi float %84 to i32, !taffo.info !18
  store i32 %85, i32* %b.s17_15fixp, align 4, !taffo.info !18
  %s17_15fixp3 = load i32, i32* %b.s17_15fixp, align 4, !taffo.info !15
  %s17_15fixp2 = load i32, i32* %b.s17_15fixp, align 4, !taffo.info !15
  %86 = call i32 @funInt.3_fixp(i32 %s17_15fixp3, i32 %s17_15fixp2), !taffo.info !20
  store i32 %86, i32* %c, align 4, !taffo.info !18
  %87 = load i32, i32* %c, align 4
  %call77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %87)
  %88 = load float, float* %a, align 4
  %s17_15fixp1 = load i32, i32* %b.s17_15fixp, align 4, !taffo.info !15
  %89 = call i32 @funInt.2_fixp(float %88, i32 %s17_15fixp1), !taffo.info !20
  store i32 %89, i32* %c, align 4, !taffo.info !18
  %90 = load i32, i32* %c, align 4
  %call79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %90)
  %91 = load float, float* %a, align 4
  %92 = load float, float* %a, align 4
  %call80 = call i32 @funInt(float %91, float %92)
  store i32 %call80, i32* %c, align 4
  %93 = load i32, i32* %c, align 4
  %call81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %93)
  %s17_15fixp = load i32, i32* %b.s17_15fixp, align 4, !taffo.info !15
  %94 = load float, float* %a, align 4
  %95 = call i32 @funInt.1_fixp(i32 %s17_15fixp, float %94), !taffo.info !20
  store i32 %95, i32* %c, align 4, !taffo.info !18
  %96 = load i32, i32* %c, align 4
  %call83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %96)
  %call84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  ret i32 0
}

declare !taffo.initweight !21 !taffo.funinfo !22 dso_local i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare !taffo.initweight !21 !taffo.funinfo !22 dso_local double @sqrt(double) #2

; Function Attrs: nounwind
declare !taffo.initweight !21 !taffo.funinfo !22 dso_local double @exp(double) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @funInt.1_fixp(i32 %x.s17_15fixp, float %y) #0 !taffo.initweight !23 !taffo.funinfo !24 !taffo.sourceFunction !25 {
entry:
  %x.addr.s17_15fixp = alloca i32, align 4, !taffo.info !15
  %y.addr = alloca float, align 4
  %local = alloca i32, align 4
  store i32 %x.s17_15fixp, i32* %x.addr.s17_15fixp, align 4, !taffo.info !18
  store float %y, float* %y.addr, align 4
  %s17_15fixp = load i32, i32* %x.addr.s17_15fixp, align 4, !taffo.info !15
  %0 = load float, float* %y.addr, align 4
  %1 = fmul float 3.276800e+04, %0, !taffo.info !15
  %2 = fptosi float %1 to i32, !taffo.info !15
  %3 = sext i32 %s17_15fixp to i64, !taffo.info !15
  %4 = sext i32 %2 to i64, !taffo.info !15
  %5 = mul i64 %3, %4, !taffo.info !26
  %6 = ashr i64 %5, 15, !taffo.info !26
  %mul.s17_15fixp = trunc i64 %6 to i32, !taffo.info !15
  %s16_16fixp1 = load i32, i32* @global.fixp, align 4, !taffo.info !1
  %7 = ashr i32 %s16_16fixp1, 1, !taffo.info !1
  %add.s17_15fixp = add i32 %mul.s17_15fixp, %7, !taffo.info !28
  %8 = ashr i32 %add.s17_15fixp, 15, !taffo.info !11
  store i32 %8, i32* %local, align 4, !taffo.info !9
  %s16_16fixp = load i32, i32* @global.fixp, align 4, !taffo.info !1
  %9 = sext i32 %s16_16fixp to i64, !taffo.info !1
  %10 = mul i64 %9, 1178968522, !taffo.info !12
  %11 = ashr i64 %10, 30, !taffo.info !12
  %mul2.s16_16fixp = trunc i64 %11 to i32, !taffo.info !1
  store i32 %mul2.s16_16fixp, i32* @global.fixp, align 4, !taffo.info !9
  %12 = load i32, i32* %local, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @funInt.2_fixp(float %x, i32 %y.s17_15fixp) #0 !taffo.initweight !29 !taffo.funinfo !30 !taffo.sourceFunction !25 {
entry:
  %x.addr = alloca float, align 4
  %y.addr.s17_15fixp = alloca i32, align 4, !taffo.info !15
  %local = alloca i32, align 4
  store float %x, float* %x.addr, align 4
  store i32 %y.s17_15fixp, i32* %y.addr.s17_15fixp, align 4, !taffo.info !18
  %0 = load float, float* %x.addr, align 4
  %s17_15fixp = load i32, i32* %y.addr.s17_15fixp, align 4, !taffo.info !15
  %1 = fmul float 3.276800e+04, %0, !taffo.info !15
  %2 = fptosi float %1 to i32, !taffo.info !15
  %3 = sext i32 %2 to i64, !taffo.info !15
  %4 = sext i32 %s17_15fixp to i64, !taffo.info !15
  %5 = mul i64 %3, %4, !taffo.info !26
  %6 = ashr i64 %5, 15, !taffo.info !26
  %mul.s17_15fixp = trunc i64 %6 to i32, !taffo.info !15
  %s16_16fixp1 = load i32, i32* @global.fixp, align 4, !taffo.info !1
  %7 = ashr i32 %s16_16fixp1, 1, !taffo.info !1
  %add.s17_15fixp = add i32 %mul.s17_15fixp, %7, !taffo.info !28
  %8 = ashr i32 %add.s17_15fixp, 15, !taffo.info !11
  store i32 %8, i32* %local, align 4, !taffo.info !9
  %s16_16fixp = load i32, i32* @global.fixp, align 4, !taffo.info !1
  %9 = sext i32 %s16_16fixp to i64, !taffo.info !1
  %10 = mul i64 %9, 1178968522, !taffo.info !12
  %11 = ashr i64 %10, 30, !taffo.info !12
  %mul2.s16_16fixp = trunc i64 %11 to i32, !taffo.info !1
  store i32 %mul2.s16_16fixp, i32* @global.fixp, align 4, !taffo.info !9
  %12 = load i32, i32* %local, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @funInt.3_fixp(i32 %x.s17_15fixp, i32 %y.s17_15fixp) #0 !taffo.initweight !31 !taffo.funinfo !32 !taffo.sourceFunction !25 {
entry:
  %x.addr.s17_15fixp = alloca i32, align 4, !taffo.info !15
  %y.addr.s17_15fixp = alloca i32, align 4, !taffo.info !15
  %local = alloca i32, align 4
  store i32 %x.s17_15fixp, i32* %x.addr.s17_15fixp, align 4, !taffo.info !18
  store i32 %y.s17_15fixp, i32* %y.addr.s17_15fixp, align 4, !taffo.info !18
  %s17_15fixp = load i32, i32* %x.addr.s17_15fixp, align 4, !taffo.info !15
  %s17_15fixp2 = load i32, i32* %y.addr.s17_15fixp, align 4, !taffo.info !15
  %0 = sext i32 %s17_15fixp to i64, !taffo.info !15
  %1 = sext i32 %s17_15fixp2 to i64, !taffo.info !15
  %2 = mul i64 %0, %1, !taffo.info !26
  %3 = ashr i64 %2, 15, !taffo.info !26
  %mul.s17_15fixp = trunc i64 %3 to i32, !taffo.info !15
  %s16_16fixp1 = load i32, i32* @global.fixp, align 4, !taffo.info !1
  %4 = ashr i32 %s16_16fixp1, 1, !taffo.info !1
  %add.s17_15fixp = add i32 %mul.s17_15fixp, %4, !taffo.info !28
  %5 = ashr i32 %add.s17_15fixp, 15, !taffo.info !11
  store i32 %5, i32* %local, align 4, !taffo.info !9
  %s16_16fixp = load i32, i32* @global.fixp, align 4, !taffo.info !1
  %6 = sext i32 %s16_16fixp to i64, !taffo.info !1
  %7 = mul i64 %6, 1178968522, !taffo.info !12
  %8 = ashr i64 %7, 30, !taffo.info !12
  %mul2.s16_16fixp = trunc i64 %8 to i32, !taffo.info !1
  store i32 %mul2.s16_16fixp, i32* @global.fixp, align 4, !taffo.info !9
  %9 = load i32, i32* %local, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @fun.10_s17_15fixp(float %x, i32 %y.s17_15fixp) #0 !taffo.initweight !29 !taffo.funinfo !30 !taffo.sourceFunction !33 {
entry:
  %x.addr = alloca float, align 4
  %y.addr.s17_15fixp = alloca i32, align 4, !taffo.info !15
  %local = alloca float, align 4
  store float %x, float* %x.addr, align 4
  store i32 %y.s17_15fixp, i32* %y.addr.s17_15fixp, align 4, !taffo.info !18
  %0 = load float, float* %x.addr, align 4
  %s17_15fixp = load i32, i32* %y.addr.s17_15fixp, align 4, !taffo.info !15
  %1 = fmul float 3.276800e+04, %0, !taffo.info !15
  %2 = fptosi float %1 to i32, !taffo.info !15
  %3 = sext i32 %2 to i64, !taffo.info !15
  %4 = sext i32 %s17_15fixp to i64, !taffo.info !15
  %5 = mul i64 %3, %4, !taffo.info !26
  %6 = ashr i64 %5, 15, !taffo.info !26
  %mul.s17_15fixp = trunc i64 %6 to i32, !taffo.info !15
  %s16_16fixp1 = load i32, i32* @global.fixp, align 4, !taffo.info !1
  %7 = ashr i32 %s16_16fixp1, 1, !taffo.info !1
  %add.s17_15fixp = add i32 %mul.s17_15fixp, %7, !taffo.info !28
  %8 = sitofp i32 %add.s17_15fixp to float, !taffo.info !28
  %9 = fdiv float %8, 3.276800e+04, !taffo.info !28
  store float %9, float* %local, align 4, !taffo.info !9
  %s16_16fixp = load i32, i32* @global.fixp, align 4, !taffo.info !1
  %inc.s16_16fixp = add i32 %s16_16fixp, 65536, !taffo.info !1
  store i32 %inc.s16_16fixp, i32* @global.fixp, align 4, !taffo.info !9
  %10 = load float, float* %local, align 4
  %11 = fmul float 3.276800e+04, %10
  %12 = fptosi float %11 to i32
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @fun.11_s17_15fixp(i32 %x.s17_15fixp, float %y) #0 !taffo.initweight !23 !taffo.funinfo !24 !taffo.sourceFunction !33 {
entry:
  %x.addr.s17_15fixp = alloca i32, align 4, !taffo.info !15
  %y.addr = alloca float, align 4
  %local = alloca float, align 4
  store i32 %x.s17_15fixp, i32* %x.addr.s17_15fixp, align 4, !taffo.info !18
  store float %y, float* %y.addr, align 4
  %s17_15fixp = load i32, i32* %x.addr.s17_15fixp, align 4, !taffo.info !15
  %0 = load float, float* %y.addr, align 4
  %1 = fmul float 3.276800e+04, %0, !taffo.info !15
  %2 = fptosi float %1 to i32, !taffo.info !15
  %3 = sext i32 %s17_15fixp to i64, !taffo.info !15
  %4 = sext i32 %2 to i64, !taffo.info !15
  %5 = mul i64 %3, %4, !taffo.info !26
  %6 = ashr i64 %5, 15, !taffo.info !26
  %mul.s17_15fixp = trunc i64 %6 to i32, !taffo.info !15
  %s16_16fixp1 = load i32, i32* @global.fixp, align 4, !taffo.info !1
  %7 = ashr i32 %s16_16fixp1, 1, !taffo.info !1
  %add.s17_15fixp = add i32 %mul.s17_15fixp, %7, !taffo.info !28
  %8 = sitofp i32 %add.s17_15fixp to float, !taffo.info !28
  %9 = fdiv float %8, 3.276800e+04, !taffo.info !28
  store float %9, float* %local, align 4, !taffo.info !9
  %s16_16fixp = load i32, i32* @global.fixp, align 4, !taffo.info !1
  %inc.s16_16fixp = add i32 %s16_16fixp, 65536, !taffo.info !1
  store i32 %inc.s16_16fixp, i32* @global.fixp, align 4, !taffo.info !9
  %10 = load float, float* %local, align 4
  %11 = fmul float 3.276800e+04, %10
  %12 = fptosi float %11 to i32
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @fun.12_s17_15fixp(i32 %x.s17_15fixp, i32 %y.s17_15fixp) #0 !taffo.initweight !31 !taffo.funinfo !32 !taffo.sourceFunction !33 {
entry:
  %x.addr.s17_15fixp = alloca i32, align 4, !taffo.info !15
  %y.addr.s17_15fixp = alloca i32, align 4, !taffo.info !15
  %local = alloca float, align 4
  store i32 %x.s17_15fixp, i32* %x.addr.s17_15fixp, align 4, !taffo.info !18
  store i32 %y.s17_15fixp, i32* %y.addr.s17_15fixp, align 4, !taffo.info !18
  %s17_15fixp = load i32, i32* %x.addr.s17_15fixp, align 4, !taffo.info !15
  %s17_15fixp2 = load i32, i32* %y.addr.s17_15fixp, align 4, !taffo.info !15
  %0 = sext i32 %s17_15fixp to i64, !taffo.info !15
  %1 = sext i32 %s17_15fixp2 to i64, !taffo.info !15
  %2 = mul i64 %0, %1, !taffo.info !26
  %3 = ashr i64 %2, 15, !taffo.info !26
  %mul.s17_15fixp = trunc i64 %3 to i32, !taffo.info !15
  %s16_16fixp1 = load i32, i32* @global.fixp, align 4, !taffo.info !1
  %4 = ashr i32 %s16_16fixp1, 1, !taffo.info !1
  %add.s17_15fixp = add i32 %mul.s17_15fixp, %4, !taffo.info !28
  %5 = sitofp i32 %add.s17_15fixp to float, !taffo.info !28
  %6 = fdiv float %5, 3.276800e+04, !taffo.info !28
  store float %6, float* %local, align 4, !taffo.info !9
  %s16_16fixp = load i32, i32* @global.fixp, align 4, !taffo.info !1
  %inc.s16_16fixp = add i32 %s16_16fixp, 65536, !taffo.info !1
  store i32 %inc.s16_16fixp, i32* @global.fixp, align 4, !taffo.info !9
  %7 = load float, float* %local, align 4
  %8 = fmul float 3.276800e+04, %7
  %9 = fptosi float %8 to i32
  ret i32 %9
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!4}
!llvm.ident = !{!5}

!0 = !{i32 0}
!1 = !{!2, !3, i1 false, i2 1}
!2 = !{!"fixp", i32 -32, i32 16}
!3 = !{double -2.000000e+04, double 2.000000e+04}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!6 = !{i32 -1, i32 -1}
!7 = distinct !{null, null, null, null, null, null, null, null, null, null}
!8 = !{i32 0, i1 false, i32 0, i1 false}
!9 = !{i1 false, !3, i1 false, i2 1}
!10 = distinct !{null, null, null, null, null, null, null, null, null}
!11 = !{!2, i1 false, i1 false, i2 1}
!12 = !{!13, !3, i1 false, i2 1}
!13 = !{!"fixp", i32 -64, i32 46}
!14 = !{}
!15 = !{!16, !17, i1 false, i2 1}
!16 = !{!"fixp", i32 -32, i32 15}
!17 = !{double -4.000000e+04, double 4.000000e+04}
!18 = !{i1 false, !17, i1 false, i2 1}
!19 = !{i32 3}
!20 = !{!16, i1 false, i1 false, i2 1}
!21 = !{i32 -1}
!22 = !{i32 0, i1 false}
!23 = !{i32 2, i32 -1}
!24 = !{i32 1, !15, i32 0, i1 false}
!25 = !{i32 (float, float)* @funInt}
!26 = !{!27, !17, i1 false, i2 1}
!27 = !{!"fixp", i32 -64, i32 30}
!28 = !{!16, !3, i1 false, i2 1}
!29 = !{i32 -1, i32 2}
!30 = !{i32 0, i1 false, i32 1, !15}
!31 = !{i32 2, i32 2}
!32 = !{i32 1, !15, i32 1, !15}
!33 = !{float (float, float)* @fun}
