; ModuleID = './function.out.3.taffotmp.ll'
source_filename = "./function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@global = dso_local global float 0x4040AA9FC0000000, align 4, !taffo.initweight !0, !taffo.info !1
@.str = private unnamed_addr constant [19 x i8] c"range -20000 20000\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [13 x i8] c"./function.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [19 x i8] c"range -40000 40000\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"*******************\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"-------------------\0A\00", align 1
@llvm.global.annotations = appending global [1 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (float* @global to i8*), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 6 }], section "llvm.metadata"

; Function Attrs: noinline nounwind uwtable
define dso_local float @fun(float %x, float %y) #0 !taffo.initweight !5 !taffo.equivalentChild !6 !taffo.funinfo !7 {
entry:
  %x.addr = alloca float, align 4
  %y.addr = alloca float, align 4
  %local = alloca float, align 4
  store float %x, float* %x.addr, align 4
  store float %y, float* %y.addr, align 4
  %0 = load float, float* %x.addr, align 4
  %1 = load float, float* %y.addr, align 4
  %mul = fmul float %0, %1
  %2 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %add = fadd float %mul, %2, !taffo.initweight !9, !taffo.info !1
  store float %add, float* %local, align 4, !taffo.initweight !10, !taffo.info !1
  %3 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %inc = fadd float %3, 1.000000e+00, !taffo.initweight !9, !taffo.info !1
  store float %inc, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %4 = load float, float* %local, align 4
  ret float %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @funInt(float %x, float %y) #0 !taffo.initweight !5 !taffo.equivalentChild !11 !taffo.funinfo !7 {
entry:
  %x.addr = alloca float, align 4
  %y.addr = alloca float, align 4
  %local = alloca i32, align 4
  store float %x, float* %x.addr, align 4
  store float %y, float* %y.addr, align 4
  %0 = load float, float* %x.addr, align 4
  %1 = load float, float* %y.addr, align 4
  %mul = fmul float %0, %1
  %2 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %add = fadd float %mul, %2, !taffo.initweight !9, !taffo.info !1
  %conv = fptosi float %add to i32, !taffo.initweight !10, !taffo.info !1
  store i32 %conv, i32* %local, align 4, !taffo.initweight !12, !taffo.info !1
  %3 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %conv1 = fpext float %3 to double, !taffo.initweight !9, !taffo.info !1
  %mul2 = fmul double %conv1, 1.098000e+00, !taffo.initweight !10, !taffo.info !1
  %conv3 = fptrunc double %mul2 to float, !taffo.initweight !12, !taffo.info !1
  store float %conv3, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %4 = load i32, i32* %local, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !13 !taffo.funinfo !13 {
entry:
  %retval = alloca i32, align 4
  %a = alloca float, align 4
  %b = alloca float, align 4, !taffo.initweight !0, !taffo.info !14
  %c = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store float 0x402468E8A0000000, float* %a, align 4
  %b1 = bitcast float* %b to i8*, !taffo.initweight !8, !taffo.info !14
  store float 0x4024346DC0000000, float* %b, align 4, !taffo.initweight !8, !taffo.info !14
  store i32 2, i32* %c, align 4
  %0 = load float, float* %b, align 4, !taffo.initweight !8, !taffo.info !14
  %1 = load float, float* %a, align 4
  %call = call float @fun.19(float %0, float %1), !taffo.initweight !9, !taffo.info !14, !taffo.originalCall !16
  store float %call, float* %a, align 4, !taffo.initweight !10, !taffo.info !14
  %2 = load float, float* %a, align 4
  %conv = fpext float %2 to double
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv)
  %3 = load float, float* %a, align 4
  %4 = load float, float* %b, align 4, !taffo.initweight !8, !taffo.info !14
  %call3 = call float @fun.18(float %3, float %4), !taffo.initweight !9, !taffo.info !14, !taffo.originalCall !16
  store float %call3, float* %a, align 4, !taffo.initweight !10, !taffo.info !14
  %5 = load float, float* %a, align 4
  %conv4 = fpext float %5 to double
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv4)
  %6 = load float, float* %b, align 4, !taffo.initweight !8, !taffo.info !14
  %7 = load float, float* %b, align 4, !taffo.initweight !8, !taffo.info !14
  %call6 = call float @fun.17(float %6, float %7), !taffo.initweight !9, !taffo.info !14, !taffo.originalCall !16
  store float %call6, float* %a, align 4, !taffo.initweight !10, !taffo.info !14
  %8 = load float, float* %a, align 4
  %conv7 = fpext float %8 to double
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv7)
  %9 = load float, float* %a, align 4
  %10 = load float, float* %a, align 4
  %call9 = call float @fun(float %9, float %10)
  store float %call9, float* %a, align 4
  %11 = load float, float* %a, align 4
  %conv10 = fpext float %11 to double
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv10)
  %12 = load float, float* %a, align 4
  %div = fdiv float %12, 4.000000e+03
  store float %div, float* %a, align 4
  %13 = load float, float* %b, align 4, !taffo.initweight !8, !taffo.info !14
  %14 = load float, float* %b, align 4, !taffo.initweight !8, !taffo.info !14
  %call12 = call float @fun.16(float %13, float %14), !taffo.initweight !9, !taffo.info !14, !taffo.originalCall !16
  store float %call12, float* %b, align 4, !taffo.initweight !8, !taffo.info !14
  %15 = load float, float* %b, align 4, !taffo.initweight !8, !taffo.info !14
  %conv13 = fpext float %15 to double, !taffo.initweight !9, !taffo.info !14
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv13), !taffo.initweight !10, !taffo.info !14
  %16 = load float, float* %a, align 4
  %17 = load float, float* %b, align 4, !taffo.initweight !8, !taffo.info !14
  %call15 = call float @fun.15(float %16, float %17), !taffo.initweight !9, !taffo.info !14, !taffo.originalCall !16
  store float %call15, float* %b, align 4, !taffo.initweight !8, !taffo.info !14
  %18 = load float, float* %b, align 4, !taffo.initweight !8, !taffo.info !14
  %conv16 = fpext float %18 to double, !taffo.initweight !9, !taffo.info !14
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv16), !taffo.initweight !10, !taffo.info !14
  %19 = load float, float* %b, align 4, !taffo.initweight !8, !taffo.info !14
  %20 = load float, float* %a, align 4
  %call18 = call float @fun.14(float %19, float %20), !taffo.initweight !9, !taffo.info !14, !taffo.originalCall !16
  store float %call18, float* %b, align 4, !taffo.initweight !8, !taffo.info !14
  %21 = load float, float* %b, align 4, !taffo.initweight !8, !taffo.info !14
  %conv19 = fpext float %21 to double, !taffo.initweight !9, !taffo.info !14
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv19), !taffo.initweight !10, !taffo.info !14
  %22 = load float, float* %a, align 4
  %23 = load float, float* %a, align 4
  %call21 = call float @fun(float %22, float %23)
  store float %call21, float* %b, align 4, !taffo.initweight !8, !taffo.info !14
  %24 = load float, float* %b, align 4, !taffo.initweight !8, !taffo.info !14
  %conv22 = fpext float %24 to double, !taffo.initweight !9, !taffo.info !14
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv22), !taffo.initweight !10, !taffo.info !14
  %25 = load float, float* %a, align 4
  %div24 = fdiv float %25, 4.096000e+03
  store float %div24, float* %b, align 4, !taffo.initweight !8, !taffo.info !14
  %26 = load float, float* %b, align 4, !taffo.initweight !8, !taffo.info !14
  %27 = load float, float* %b, align 4, !taffo.initweight !8, !taffo.info !14
  %call25 = call float @fun.13(float %26, float %27), !taffo.initweight !9, !taffo.info !14, !taffo.originalCall !16
  %conv26 = fptosi float %call25 to i32, !taffo.initweight !10, !taffo.info !14
  store i32 %conv26, i32* %c, align 4, !taffo.initweight !12, !taffo.info !14
  %28 = load i32, i32* %c, align 4
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %28)
  %29 = load float, float* %b, align 4, !taffo.initweight !8, !taffo.info !14
  %30 = load float, float* %b, align 4, !taffo.initweight !8, !taffo.info !14
  %call28 = call float @fun.12(float %29, float %30), !taffo.initweight !9, !taffo.info !14, !taffo.originalCall !16
  %conv29 = fptosi float %call28 to i32, !taffo.initweight !10, !taffo.info !14
  store i32 %conv29, i32* %c, align 4, !taffo.initweight !12, !taffo.info !14
  %31 = load i32, i32* %c, align 4
  %call30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %31)
  %32 = load float, float* %b, align 4, !taffo.initweight !8, !taffo.info !14
  %33 = load float, float* %a, align 4
  %call31 = call float @fun.11(float %32, float %33), !taffo.initweight !9, !taffo.info !14, !taffo.originalCall !16
  %conv32 = fptosi float %call31 to i32, !taffo.initweight !10, !taffo.info !14
  store i32 %conv32, i32* %c, align 4, !taffo.initweight !12, !taffo.info !14
  %34 = load i32, i32* %c, align 4
  %call33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %34)
  %35 = load float, float* %a, align 4
  %36 = load float, float* %b, align 4, !taffo.initweight !8, !taffo.info !14
  %call34 = call float @fun.10(float %35, float %36), !taffo.initweight !9, !taffo.info !14, !taffo.originalCall !16
  %conv35 = fptosi float %call34 to i32, !taffo.initweight !10, !taffo.info !14
  store i32 %conv35, i32* %c, align 4, !taffo.initweight !12, !taffo.info !14
  %37 = load i32, i32* %c, align 4
  %call36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %37)
  %call37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  store float 0x40241999A0000000, float* %a, align 4
  %38 = load float, float* %b, align 4, !taffo.initweight !8, !taffo.info !14
  %39 = load float, float* %b, align 4, !taffo.initweight !8, !taffo.info !14
  %call38 = call i32 @funInt.9(float %38, float %39), !taffo.initweight !9, !taffo.info !14, !taffo.originalCall !17
  %conv39 = sitofp i32 %call38 to float, !taffo.initweight !10, !taffo.info !14
  store float %conv39, float* %a, align 4, !taffo.initweight !12, !taffo.info !14
  %40 = load float, float* %a, align 4
  %conv40 = fpext float %40 to double
  %call41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv40)
  %41 = load float, float* %b, align 4, !taffo.initweight !8, !taffo.info !14
  %42 = load float, float* %a, align 4
  %call42 = call i32 @funInt.8(float %41, float %42), !taffo.initweight !9, !taffo.info !14, !taffo.originalCall !17
  %conv43 = sitofp i32 %call42 to float, !taffo.initweight !10, !taffo.info !14
  store float %conv43, float* %a, align 4, !taffo.initweight !12, !taffo.info !14
  %43 = load float, float* %a, align 4
  %conv44 = fpext float %43 to double
  %call45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv44)
  %44 = load float, float* %a, align 4
  %45 = load float, float* %b, align 4, !taffo.initweight !8, !taffo.info !14
  %call46 = call i32 @funInt.7(float %44, float %45), !taffo.initweight !9, !taffo.info !14, !taffo.originalCall !17
  %conv47 = sitofp i32 %call46 to float, !taffo.initweight !10, !taffo.info !14
  store float %conv47, float* %a, align 4, !taffo.initweight !12, !taffo.info !14
  %46 = load float, float* %a, align 4
  %conv48 = fpext float %46 to double
  %call49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv48)
  %47 = load float, float* %a, align 4
  %48 = load float, float* %a, align 4
  %call50 = call i32 @funInt(float %47, float %48)
  %conv51 = sitofp i32 %call50 to float
  store float %conv51, float* %a, align 4
  %49 = load float, float* %a, align 4
  %conv52 = fpext float %49 to double
  %call53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv52)
  %50 = load float, float* %b, align 4, !taffo.initweight !8, !taffo.info !14
  %conv54 = fpext float %50 to double, !taffo.initweight !9, !taffo.info !14
  %call55 = call double @sqrt(double %conv54) #4, !taffo.initweight !10, !taffo.info !14
  %conv56 = fptrunc double %call55 to float, !taffo.initweight !12, !taffo.info !14
  store float %conv56, float* %a, align 4, !taffo.initweight !18, !taffo.info !14
  %51 = load float, float* %a, align 4
  %conv57 = fpext float %51 to double
  %mul = fmul double %conv57, 9.990000e+00
  %call58 = call double @exp(double %mul) #4
  %conv59 = fptrunc double %call58 to float
  store float %conv59, float* %b, align 4, !taffo.initweight !8, !taffo.info !14
  %52 = load float, float* %a, align 4
  %53 = load float, float* %b, align 4, !taffo.initweight !8, !taffo.info !14
  %call60 = call i32 @funInt.6(float %52, float %53), !taffo.initweight !9, !taffo.info !14, !taffo.originalCall !17
  %conv61 = sitofp i32 %call60 to float, !taffo.initweight !10, !taffo.info !14
  store float %conv61, float* %b, align 4, !taffo.initweight !8, !taffo.info !14
  %54 = load float, float* %b, align 4, !taffo.initweight !8, !taffo.info !14
  %conv62 = fpext float %54 to double, !taffo.initweight !9, !taffo.info !14
  %call63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv62), !taffo.initweight !10, !taffo.info !14
  %55 = load float, float* %b, align 4, !taffo.initweight !8, !taffo.info !14
  %56 = load float, float* %a, align 4
  %call64 = call i32 @funInt.5(float %55, float %56), !taffo.initweight !9, !taffo.info !14, !taffo.originalCall !17
  %conv65 = sitofp i32 %call64 to float, !taffo.initweight !10, !taffo.info !14
  store float %conv65, float* %b, align 4, !taffo.initweight !8, !taffo.info !14
  %57 = load float, float* %b, align 4, !taffo.initweight !8, !taffo.info !14
  %conv66 = fpext float %57 to double, !taffo.initweight !9, !taffo.info !14
  %call67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv66), !taffo.initweight !10, !taffo.info !14
  %58 = load float, float* %a, align 4
  %59 = load float, float* %a, align 4
  %call68 = call i32 @funInt(float %58, float %59)
  %conv69 = sitofp i32 %call68 to float
  store float %conv69, float* %b, align 4, !taffo.initweight !8, !taffo.info !14
  %60 = load float, float* %b, align 4, !taffo.initweight !8, !taffo.info !14
  %conv70 = fpext float %60 to double, !taffo.initweight !9, !taffo.info !14
  %call71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv70), !taffo.initweight !10, !taffo.info !14
  %61 = load float, float* %b, align 4, !taffo.initweight !8, !taffo.info !14
  %62 = load float, float* %b, align 4, !taffo.initweight !8, !taffo.info !14
  %call72 = call i32 @funInt.4(float %61, float %62), !taffo.initweight !9, !taffo.info !14, !taffo.originalCall !17
  %conv73 = sitofp i32 %call72 to float, !taffo.initweight !10, !taffo.info !14
  store float %conv73, float* %b, align 4, !taffo.initweight !8, !taffo.info !14
  %63 = load float, float* %b, align 4, !taffo.initweight !8, !taffo.info !14
  %conv74 = fpext float %63 to double, !taffo.initweight !9, !taffo.info !14
  %call75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv74), !taffo.initweight !10, !taffo.info !14
  %64 = load float, float* %a, align 4
  store float %64, float* %b, align 4, !taffo.initweight !8, !taffo.info !14
  %65 = load float, float* %b, align 4, !taffo.initweight !8, !taffo.info !14
  %66 = load float, float* %b, align 4, !taffo.initweight !8, !taffo.info !14
  %call76 = call i32 @funInt.3(float %65, float %66), !taffo.initweight !9, !taffo.info !14, !taffo.originalCall !17
  store i32 %call76, i32* %c, align 4, !taffo.initweight !10, !taffo.info !14
  %67 = load i32, i32* %c, align 4
  %call77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %67)
  %68 = load float, float* %a, align 4
  %69 = load float, float* %b, align 4, !taffo.initweight !8, !taffo.info !14
  %call78 = call i32 @funInt.2(float %68, float %69), !taffo.initweight !9, !taffo.info !14, !taffo.originalCall !17
  store i32 %call78, i32* %c, align 4, !taffo.initweight !10, !taffo.info !14
  %70 = load i32, i32* %c, align 4
  %call79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %70)
  %71 = load float, float* %a, align 4
  %72 = load float, float* %a, align 4
  %call80 = call i32 @funInt(float %71, float %72)
  store i32 %call80, i32* %c, align 4
  %73 = load i32, i32* %c, align 4
  %call81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %73)
  %74 = load float, float* %b, align 4, !taffo.initweight !8, !taffo.info !14
  %75 = load float, float* %a, align 4
  %call82 = call i32 @funInt.1(float %74, float %75), !taffo.initweight !9, !taffo.info !14, !taffo.originalCall !17
  store i32 %call82, i32* %c, align 4, !taffo.initweight !10, !taffo.info !14
  %76 = load i32, i32* %c, align 4
  %call83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %76)
  %call84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind willreturn
declare !taffo.initweight !19 !taffo.funinfo !20 void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

declare !taffo.initweight !21 !taffo.funinfo !22 dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare !taffo.initweight !21 !taffo.funinfo !22 dso_local double @sqrt(double) #3

; Function Attrs: nounwind
declare !taffo.initweight !21 !taffo.funinfo !22 dso_local double @exp(double) #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @funInt.1(float %x, float %y) #0 !taffo.initweight !23 !taffo.funinfo !24 !taffo.sourceFunction !17 {
entry:
  %x.addr = alloca float, align 4, !taffo.initweight !10, !taffo.info !14
  %y.addr = alloca float, align 4
  %local = alloca i32, align 4
  store float %x, float* %x.addr, align 4, !taffo.initweight !12, !taffo.info !14
  store float %y, float* %y.addr, align 4
  %0 = load float, float* %x.addr, align 4, !taffo.initweight !12, !taffo.info !14
  %1 = load float, float* %y.addr, align 4
  %mul = fmul float %0, %1, !taffo.initweight !18, !taffo.info !14
  %2 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %add = fadd float %mul, %2, !taffo.initweight !9, !taffo.info !1
  %conv = fptosi float %add to i32, !taffo.initweight !10, !taffo.info !1
  store i32 %conv, i32* %local, align 4, !taffo.initweight !12, !taffo.info !1
  %3 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %conv1 = fpext float %3 to double, !taffo.initweight !9, !taffo.info !1
  %mul2 = fmul double %conv1, 1.098000e+00, !taffo.initweight !10, !taffo.info !1
  %conv3 = fptrunc double %mul2 to float, !taffo.initweight !12, !taffo.info !1
  store float %conv3, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %4 = load i32, i32* %local, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @funInt.2(float %x, float %y) #0 !taffo.initweight !25 !taffo.funinfo !26 !taffo.sourceFunction !17 {
entry:
  %x.addr = alloca float, align 4
  %y.addr = alloca float, align 4, !taffo.initweight !10, !taffo.info !14
  %local = alloca i32, align 4
  store float %x, float* %x.addr, align 4
  store float %y, float* %y.addr, align 4, !taffo.initweight !12, !taffo.info !14
  %0 = load float, float* %x.addr, align 4
  %1 = load float, float* %y.addr, align 4, !taffo.initweight !12, !taffo.info !14
  %mul = fmul float %0, %1, !taffo.initweight !18, !taffo.info !14
  %2 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %add = fadd float %mul, %2, !taffo.initweight !9, !taffo.info !1
  %conv = fptosi float %add to i32, !taffo.initweight !10, !taffo.info !1
  store i32 %conv, i32* %local, align 4, !taffo.initweight !12, !taffo.info !1
  %3 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %conv1 = fpext float %3 to double, !taffo.initweight !9, !taffo.info !1
  %mul2 = fmul double %conv1, 1.098000e+00, !taffo.initweight !10, !taffo.info !1
  %conv3 = fptrunc double %mul2 to float, !taffo.initweight !12, !taffo.info !1
  store float %conv3, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %4 = load i32, i32* %local, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @funInt.3(float %x, float %y) #0 !taffo.initweight !27 !taffo.funinfo !28 !taffo.sourceFunction !17 {
entry:
  %x.addr = alloca float, align 4, !taffo.initweight !10, !taffo.info !14
  %y.addr = alloca float, align 4, !taffo.initweight !10, !taffo.info !14
  %local = alloca i32, align 4
  store float %x, float* %x.addr, align 4, !taffo.initweight !12, !taffo.info !14
  store float %y, float* %y.addr, align 4, !taffo.initweight !12, !taffo.info !14
  %0 = load float, float* %x.addr, align 4, !taffo.initweight !12, !taffo.info !14
  %1 = load float, float* %y.addr, align 4, !taffo.initweight !12, !taffo.info !14
  %mul = fmul float %0, %1, !taffo.initweight !18, !taffo.info !14
  %2 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %add = fadd float %mul, %2, !taffo.initweight !9, !taffo.info !1
  %conv = fptosi float %add to i32, !taffo.initweight !10, !taffo.info !1
  store i32 %conv, i32* %local, align 4, !taffo.initweight !12, !taffo.info !1
  %3 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %conv1 = fpext float %3 to double, !taffo.initweight !9, !taffo.info !1
  %mul2 = fmul double %conv1, 1.098000e+00, !taffo.initweight !10, !taffo.info !1
  %conv3 = fptrunc double %mul2 to float, !taffo.initweight !12, !taffo.info !1
  store float %conv3, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %4 = load i32, i32* %local, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @funInt.4(float %x, float %y) #0 !taffo.initweight !27 !taffo.funinfo !28 !taffo.sourceFunction !17 {
entry:
  %x.addr = alloca float, align 4, !taffo.initweight !10, !taffo.info !14
  %y.addr = alloca float, align 4, !taffo.initweight !10, !taffo.info !14
  %local = alloca i32, align 4
  store float %x, float* %x.addr, align 4, !taffo.initweight !12, !taffo.info !14
  store float %y, float* %y.addr, align 4, !taffo.initweight !12, !taffo.info !14
  %0 = load float, float* %x.addr, align 4, !taffo.initweight !12, !taffo.info !14
  %1 = load float, float* %y.addr, align 4, !taffo.initweight !12, !taffo.info !14
  %mul = fmul float %0, %1, !taffo.initweight !18, !taffo.info !14
  %2 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %add = fadd float %mul, %2, !taffo.initweight !9, !taffo.info !1
  %conv = fptosi float %add to i32, !taffo.initweight !10, !taffo.info !1
  store i32 %conv, i32* %local, align 4, !taffo.initweight !12, !taffo.info !1
  %3 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %conv1 = fpext float %3 to double, !taffo.initweight !9, !taffo.info !1
  %mul2 = fmul double %conv1, 1.098000e+00, !taffo.initweight !10, !taffo.info !1
  %conv3 = fptrunc double %mul2 to float, !taffo.initweight !12, !taffo.info !1
  store float %conv3, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %4 = load i32, i32* %local, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @funInt.5(float %x, float %y) #0 !taffo.initweight !23 !taffo.funinfo !24 !taffo.sourceFunction !17 {
entry:
  %x.addr = alloca float, align 4, !taffo.initweight !10, !taffo.info !14
  %y.addr = alloca float, align 4
  %local = alloca i32, align 4
  store float %x, float* %x.addr, align 4, !taffo.initweight !12, !taffo.info !14
  store float %y, float* %y.addr, align 4
  %0 = load float, float* %x.addr, align 4, !taffo.initweight !12, !taffo.info !14
  %1 = load float, float* %y.addr, align 4
  %mul = fmul float %0, %1, !taffo.initweight !18, !taffo.info !14
  %2 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %add = fadd float %mul, %2, !taffo.initweight !9, !taffo.info !1
  %conv = fptosi float %add to i32, !taffo.initweight !10, !taffo.info !1
  store i32 %conv, i32* %local, align 4, !taffo.initweight !12, !taffo.info !1
  %3 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %conv1 = fpext float %3 to double, !taffo.initweight !9, !taffo.info !1
  %mul2 = fmul double %conv1, 1.098000e+00, !taffo.initweight !10, !taffo.info !1
  %conv3 = fptrunc double %mul2 to float, !taffo.initweight !12, !taffo.info !1
  store float %conv3, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %4 = load i32, i32* %local, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @funInt.6(float %x, float %y) #0 !taffo.initweight !25 !taffo.funinfo !26 !taffo.sourceFunction !17 {
entry:
  %x.addr = alloca float, align 4
  %y.addr = alloca float, align 4, !taffo.initweight !10, !taffo.info !14
  %local = alloca i32, align 4
  store float %x, float* %x.addr, align 4
  store float %y, float* %y.addr, align 4, !taffo.initweight !12, !taffo.info !14
  %0 = load float, float* %x.addr, align 4
  %1 = load float, float* %y.addr, align 4, !taffo.initweight !12, !taffo.info !14
  %mul = fmul float %0, %1, !taffo.initweight !18, !taffo.info !14
  %2 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %add = fadd float %mul, %2, !taffo.initweight !9, !taffo.info !1
  %conv = fptosi float %add to i32, !taffo.initweight !10, !taffo.info !1
  store i32 %conv, i32* %local, align 4, !taffo.initweight !12, !taffo.info !1
  %3 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %conv1 = fpext float %3 to double, !taffo.initweight !9, !taffo.info !1
  %mul2 = fmul double %conv1, 1.098000e+00, !taffo.initweight !10, !taffo.info !1
  %conv3 = fptrunc double %mul2 to float, !taffo.initweight !12, !taffo.info !1
  store float %conv3, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %4 = load i32, i32* %local, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @funInt.7(float %x, float %y) #0 !taffo.initweight !25 !taffo.funinfo !26 !taffo.sourceFunction !17 {
entry:
  %x.addr = alloca float, align 4
  %y.addr = alloca float, align 4, !taffo.initweight !10, !taffo.info !14
  %local = alloca i32, align 4
  store float %x, float* %x.addr, align 4
  store float %y, float* %y.addr, align 4, !taffo.initweight !12, !taffo.info !14
  %0 = load float, float* %x.addr, align 4
  %1 = load float, float* %y.addr, align 4, !taffo.initweight !12, !taffo.info !14
  %mul = fmul float %0, %1, !taffo.initweight !18, !taffo.info !14
  %2 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %add = fadd float %mul, %2, !taffo.initweight !9, !taffo.info !1
  %conv = fptosi float %add to i32, !taffo.initweight !10, !taffo.info !1
  store i32 %conv, i32* %local, align 4, !taffo.initweight !12, !taffo.info !1
  %3 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %conv1 = fpext float %3 to double, !taffo.initweight !9, !taffo.info !1
  %mul2 = fmul double %conv1, 1.098000e+00, !taffo.initweight !10, !taffo.info !1
  %conv3 = fptrunc double %mul2 to float, !taffo.initweight !12, !taffo.info !1
  store float %conv3, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %4 = load i32, i32* %local, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @funInt.8(float %x, float %y) #0 !taffo.initweight !23 !taffo.funinfo !24 !taffo.sourceFunction !17 {
entry:
  %x.addr = alloca float, align 4, !taffo.initweight !10, !taffo.info !14
  %y.addr = alloca float, align 4
  %local = alloca i32, align 4
  store float %x, float* %x.addr, align 4, !taffo.initweight !12, !taffo.info !14
  store float %y, float* %y.addr, align 4
  %0 = load float, float* %x.addr, align 4, !taffo.initweight !12, !taffo.info !14
  %1 = load float, float* %y.addr, align 4
  %mul = fmul float %0, %1, !taffo.initweight !18, !taffo.info !14
  %2 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %add = fadd float %mul, %2, !taffo.initweight !9, !taffo.info !1
  %conv = fptosi float %add to i32, !taffo.initweight !10, !taffo.info !1
  store i32 %conv, i32* %local, align 4, !taffo.initweight !12, !taffo.info !1
  %3 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %conv1 = fpext float %3 to double, !taffo.initweight !9, !taffo.info !1
  %mul2 = fmul double %conv1, 1.098000e+00, !taffo.initweight !10, !taffo.info !1
  %conv3 = fptrunc double %mul2 to float, !taffo.initweight !12, !taffo.info !1
  store float %conv3, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %4 = load i32, i32* %local, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @funInt.9(float %x, float %y) #0 !taffo.initweight !27 !taffo.funinfo !28 !taffo.sourceFunction !17 {
entry:
  %x.addr = alloca float, align 4, !taffo.initweight !10, !taffo.info !14
  %y.addr = alloca float, align 4, !taffo.initweight !10, !taffo.info !14
  %local = alloca i32, align 4
  store float %x, float* %x.addr, align 4, !taffo.initweight !12, !taffo.info !14
  store float %y, float* %y.addr, align 4, !taffo.initweight !12, !taffo.info !14
  %0 = load float, float* %x.addr, align 4, !taffo.initweight !12, !taffo.info !14
  %1 = load float, float* %y.addr, align 4, !taffo.initweight !12, !taffo.info !14
  %mul = fmul float %0, %1, !taffo.initweight !18, !taffo.info !14
  %2 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %add = fadd float %mul, %2, !taffo.initweight !9, !taffo.info !1
  %conv = fptosi float %add to i32, !taffo.initweight !10, !taffo.info !1
  store i32 %conv, i32* %local, align 4, !taffo.initweight !12, !taffo.info !1
  %3 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %conv1 = fpext float %3 to double, !taffo.initweight !9, !taffo.info !1
  %mul2 = fmul double %conv1, 1.098000e+00, !taffo.initweight !10, !taffo.info !1
  %conv3 = fptrunc double %mul2 to float, !taffo.initweight !12, !taffo.info !1
  store float %conv3, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %4 = load i32, i32* %local, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define internal float @fun.10(float %x, float %y) #0 !taffo.initweight !25 !taffo.funinfo !26 !taffo.sourceFunction !16 {
entry:
  %x.addr = alloca float, align 4
  %y.addr = alloca float, align 4, !taffo.initweight !10, !taffo.info !14
  %local = alloca float, align 4
  store float %x, float* %x.addr, align 4
  store float %y, float* %y.addr, align 4, !taffo.initweight !12, !taffo.info !14
  %0 = load float, float* %x.addr, align 4
  %1 = load float, float* %y.addr, align 4, !taffo.initweight !12, !taffo.info !14
  %mul = fmul float %0, %1, !taffo.initweight !18, !taffo.info !14
  %2 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %add = fadd float %mul, %2, !taffo.initweight !9, !taffo.info !1
  store float %add, float* %local, align 4, !taffo.initweight !10, !taffo.info !1
  %3 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %inc = fadd float %3, 1.000000e+00, !taffo.initweight !9, !taffo.info !1
  store float %inc, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %4 = load float, float* %local, align 4
  ret float %4
}

; Function Attrs: noinline nounwind uwtable
define internal float @fun.11(float %x, float %y) #0 !taffo.initweight !23 !taffo.funinfo !24 !taffo.sourceFunction !16 {
entry:
  %x.addr = alloca float, align 4, !taffo.initweight !10, !taffo.info !14
  %y.addr = alloca float, align 4
  %local = alloca float, align 4
  store float %x, float* %x.addr, align 4, !taffo.initweight !12, !taffo.info !14
  store float %y, float* %y.addr, align 4
  %0 = load float, float* %x.addr, align 4, !taffo.initweight !12, !taffo.info !14
  %1 = load float, float* %y.addr, align 4
  %mul = fmul float %0, %1, !taffo.initweight !18, !taffo.info !14
  %2 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %add = fadd float %mul, %2, !taffo.initweight !9, !taffo.info !1
  store float %add, float* %local, align 4, !taffo.initweight !10, !taffo.info !1
  %3 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %inc = fadd float %3, 1.000000e+00, !taffo.initweight !9, !taffo.info !1
  store float %inc, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %4 = load float, float* %local, align 4
  ret float %4
}

; Function Attrs: noinline nounwind uwtable
define internal float @fun.12(float %x, float %y) #0 !taffo.initweight !27 !taffo.funinfo !28 !taffo.sourceFunction !16 {
entry:
  %x.addr = alloca float, align 4, !taffo.initweight !10, !taffo.info !14
  %y.addr = alloca float, align 4, !taffo.initweight !10, !taffo.info !14
  %local = alloca float, align 4
  store float %x, float* %x.addr, align 4, !taffo.initweight !12, !taffo.info !14
  store float %y, float* %y.addr, align 4, !taffo.initweight !12, !taffo.info !14
  %0 = load float, float* %x.addr, align 4, !taffo.initweight !12, !taffo.info !14
  %1 = load float, float* %y.addr, align 4, !taffo.initweight !12, !taffo.info !14
  %mul = fmul float %0, %1, !taffo.initweight !18, !taffo.info !14
  %2 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %add = fadd float %mul, %2, !taffo.initweight !9, !taffo.info !1
  store float %add, float* %local, align 4, !taffo.initweight !10, !taffo.info !1
  %3 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %inc = fadd float %3, 1.000000e+00, !taffo.initweight !9, !taffo.info !1
  store float %inc, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %4 = load float, float* %local, align 4
  ret float %4
}

; Function Attrs: noinline nounwind uwtable
define internal float @fun.13(float %x, float %y) #0 !taffo.initweight !27 !taffo.funinfo !28 !taffo.sourceFunction !16 {
entry:
  %x.addr = alloca float, align 4, !taffo.initweight !10, !taffo.info !14
  %y.addr = alloca float, align 4, !taffo.initweight !10, !taffo.info !14
  %local = alloca float, align 4
  store float %x, float* %x.addr, align 4, !taffo.initweight !12, !taffo.info !14
  store float %y, float* %y.addr, align 4, !taffo.initweight !12, !taffo.info !14
  %0 = load float, float* %x.addr, align 4, !taffo.initweight !12, !taffo.info !14
  %1 = load float, float* %y.addr, align 4, !taffo.initweight !12, !taffo.info !14
  %mul = fmul float %0, %1, !taffo.initweight !18, !taffo.info !14
  %2 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %add = fadd float %mul, %2, !taffo.initweight !9, !taffo.info !1
  store float %add, float* %local, align 4, !taffo.initweight !10, !taffo.info !1
  %3 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %inc = fadd float %3, 1.000000e+00, !taffo.initweight !9, !taffo.info !1
  store float %inc, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %4 = load float, float* %local, align 4
  ret float %4
}

; Function Attrs: noinline nounwind uwtable
define internal float @fun.14(float %x, float %y) #0 !taffo.initweight !23 !taffo.funinfo !24 !taffo.sourceFunction !16 {
entry:
  %x.addr = alloca float, align 4, !taffo.initweight !10, !taffo.info !14
  %y.addr = alloca float, align 4
  %local = alloca float, align 4
  store float %x, float* %x.addr, align 4, !taffo.initweight !12, !taffo.info !14
  store float %y, float* %y.addr, align 4
  %0 = load float, float* %x.addr, align 4, !taffo.initweight !12, !taffo.info !14
  %1 = load float, float* %y.addr, align 4
  %mul = fmul float %0, %1, !taffo.initweight !18, !taffo.info !14
  %2 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %add = fadd float %mul, %2, !taffo.initweight !9, !taffo.info !1
  store float %add, float* %local, align 4, !taffo.initweight !10, !taffo.info !1
  %3 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %inc = fadd float %3, 1.000000e+00, !taffo.initweight !9, !taffo.info !1
  store float %inc, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %4 = load float, float* %local, align 4
  ret float %4
}

; Function Attrs: noinline nounwind uwtable
define internal float @fun.15(float %x, float %y) #0 !taffo.initweight !25 !taffo.funinfo !26 !taffo.sourceFunction !16 {
entry:
  %x.addr = alloca float, align 4
  %y.addr = alloca float, align 4, !taffo.initweight !10, !taffo.info !14
  %local = alloca float, align 4
  store float %x, float* %x.addr, align 4
  store float %y, float* %y.addr, align 4, !taffo.initweight !12, !taffo.info !14
  %0 = load float, float* %x.addr, align 4
  %1 = load float, float* %y.addr, align 4, !taffo.initweight !12, !taffo.info !14
  %mul = fmul float %0, %1, !taffo.initweight !18, !taffo.info !14
  %2 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %add = fadd float %mul, %2, !taffo.initweight !9, !taffo.info !1
  store float %add, float* %local, align 4, !taffo.initweight !10, !taffo.info !1
  %3 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %inc = fadd float %3, 1.000000e+00, !taffo.initweight !9, !taffo.info !1
  store float %inc, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %4 = load float, float* %local, align 4
  ret float %4
}

; Function Attrs: noinline nounwind uwtable
define internal float @fun.16(float %x, float %y) #0 !taffo.initweight !27 !taffo.funinfo !28 !taffo.sourceFunction !16 {
entry:
  %x.addr = alloca float, align 4, !taffo.initweight !10, !taffo.info !14
  %y.addr = alloca float, align 4, !taffo.initweight !10, !taffo.info !14
  %local = alloca float, align 4
  store float %x, float* %x.addr, align 4, !taffo.initweight !12, !taffo.info !14
  store float %y, float* %y.addr, align 4, !taffo.initweight !12, !taffo.info !14
  %0 = load float, float* %x.addr, align 4, !taffo.initweight !12, !taffo.info !14
  %1 = load float, float* %y.addr, align 4, !taffo.initweight !12, !taffo.info !14
  %mul = fmul float %0, %1, !taffo.initweight !18, !taffo.info !14
  %2 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %add = fadd float %mul, %2, !taffo.initweight !9, !taffo.info !1
  store float %add, float* %local, align 4, !taffo.initweight !10, !taffo.info !1
  %3 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %inc = fadd float %3, 1.000000e+00, !taffo.initweight !9, !taffo.info !1
  store float %inc, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %4 = load float, float* %local, align 4
  ret float %4
}

; Function Attrs: noinline nounwind uwtable
define internal float @fun.17(float %x, float %y) #0 !taffo.initweight !27 !taffo.funinfo !28 !taffo.sourceFunction !16 {
entry:
  %x.addr = alloca float, align 4, !taffo.initweight !10, !taffo.info !14
  %y.addr = alloca float, align 4, !taffo.initweight !10, !taffo.info !14
  %local = alloca float, align 4
  store float %x, float* %x.addr, align 4, !taffo.initweight !12, !taffo.info !14
  store float %y, float* %y.addr, align 4, !taffo.initweight !12, !taffo.info !14
  %0 = load float, float* %x.addr, align 4, !taffo.initweight !12, !taffo.info !14
  %1 = load float, float* %y.addr, align 4, !taffo.initweight !12, !taffo.info !14
  %mul = fmul float %0, %1, !taffo.initweight !18, !taffo.info !14
  %2 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %add = fadd float %mul, %2, !taffo.initweight !9, !taffo.info !1
  store float %add, float* %local, align 4, !taffo.initweight !10, !taffo.info !1
  %3 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %inc = fadd float %3, 1.000000e+00, !taffo.initweight !9, !taffo.info !1
  store float %inc, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %4 = load float, float* %local, align 4
  ret float %4
}

; Function Attrs: noinline nounwind uwtable
define internal float @fun.18(float %x, float %y) #0 !taffo.initweight !25 !taffo.funinfo !26 !taffo.sourceFunction !16 {
entry:
  %x.addr = alloca float, align 4
  %y.addr = alloca float, align 4, !taffo.initweight !10, !taffo.info !14
  %local = alloca float, align 4
  store float %x, float* %x.addr, align 4
  store float %y, float* %y.addr, align 4, !taffo.initweight !12, !taffo.info !14
  %0 = load float, float* %x.addr, align 4
  %1 = load float, float* %y.addr, align 4, !taffo.initweight !12, !taffo.info !14
  %mul = fmul float %0, %1, !taffo.initweight !18, !taffo.info !14
  %2 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %add = fadd float %mul, %2, !taffo.initweight !9, !taffo.info !1
  store float %add, float* %local, align 4, !taffo.initweight !10, !taffo.info !1
  %3 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %inc = fadd float %3, 1.000000e+00, !taffo.initweight !9, !taffo.info !1
  store float %inc, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %4 = load float, float* %local, align 4
  ret float %4
}

; Function Attrs: noinline nounwind uwtable
define internal float @fun.19(float %x, float %y) #0 !taffo.initweight !23 !taffo.funinfo !24 !taffo.sourceFunction !16 {
entry:
  %x.addr = alloca float, align 4, !taffo.initweight !10, !taffo.info !14
  %y.addr = alloca float, align 4
  %local = alloca float, align 4
  store float %x, float* %x.addr, align 4, !taffo.initweight !12, !taffo.info !14
  store float %y, float* %y.addr, align 4
  %0 = load float, float* %x.addr, align 4, !taffo.initweight !12, !taffo.info !14
  %1 = load float, float* %y.addr, align 4
  %mul = fmul float %0, %1, !taffo.initweight !18, !taffo.info !14
  %2 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %add = fadd float %mul, %2, !taffo.initweight !9, !taffo.info !1
  store float %add, float* %local, align 4, !taffo.initweight !10, !taffo.info !1
  %3 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %inc = fadd float %3, 1.000000e+00, !taffo.initweight !9, !taffo.info !1
  store float %inc, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %4 = load float, float* %local, align 4
  ret float %4
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!3}
!llvm.ident = !{!4}

!0 = !{i32 0}
!1 = !{i1 false, !2, i1 false, i2 1}
!2 = !{double -2.000000e+04, double 2.000000e+04}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!5 = !{i32 -1, i32 -1}
!6 = !{float (float, float)* @fun.10, float (float, float)* @fun.11, float (float, float)* @fun.12, float (float, float)* @fun.13, float (float, float)* @fun.14, float (float, float)* @fun.15, float (float, float)* @fun.16, float (float, float)* @fun.17, float (float, float)* @fun.18, float (float, float)* @fun.19}
!7 = !{i32 0, i1 false, i32 0, i1 false}
!8 = !{i32 1}
!9 = !{i32 2}
!10 = !{i32 3}
!11 = !{i32 (float, float)* @funInt.1, i32 (float, float)* @funInt.2, i32 (float, float)* @funInt.3, i32 (float, float)* @funInt.4, i32 (float, float)* @funInt.5, i32 (float, float)* @funInt.6, i32 (float, float)* @funInt.7, i32 (float, float)* @funInt.8, i32 (float, float)* @funInt.9}
!12 = !{i32 4}
!13 = !{}
!14 = !{i1 false, !15, i1 false, i2 1}
!15 = !{double -4.000000e+04, double 4.000000e+04}
!16 = !{float (float, float)* @fun}
!17 = !{i32 (float, float)* @funInt}
!18 = !{i32 5}
!19 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!20 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!21 = !{i32 -1}
!22 = !{i32 0, i1 false}
!23 = !{i32 2, i32 -1}
!24 = !{i32 1, !14, i32 0, i1 false}
!25 = !{i32 -1, i32 2}
!26 = !{i32 0, i1 false, i32 1, !14}
!27 = !{i32 2, i32 2}
!28 = !{i32 1, !14, i32 1, !14}
