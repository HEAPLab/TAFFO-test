; ModuleID = './function.out.1.taffotmp.ll'
source_filename = "./function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@global = dso_local global float 0x4040AA9FC0000000, align 4, !taffo.initweight !0, !taffo.info !1
@.str = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [13 x i8] c"./function.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [21 x i8] c"target('b') scalar()\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"*******************\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"-------------------\0A\00", align 1
@llvm.global.annotations = appending global [1 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (float* @global to i8*), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 6 }], section "llvm.metadata"

; Function Attrs: noinline nounwind uwtable
define dso_local float @fun(float %x, float %y) #0 !taffo.initweight !4 !taffo.equivalentChild !5 !taffo.funinfo !6 {
entry:
  %x.addr = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %y.addr = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %local = alloca float, align 4
  store float %x, float* %x.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %x.addr1 = bitcast float* %x.addr to i8*, !taffo.initweight !7, !taffo.info !1
  store float %y, float* %y.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %y.addr2 = bitcast float* %y.addr to i8*, !taffo.initweight !7, !taffo.info !1
  %0 = load float, float* %x.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %1 = load float, float* %y.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %mul = fmul float %0, %1, !taffo.initweight !8, !taffo.info !1
  %2 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %add = fadd float %mul, %2, !taffo.initweight !8, !taffo.info !1
  store float %add, float* %local, align 4, !taffo.initweight !9, !taffo.info !1
  %3 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %inc = fadd float %3, 1.000000e+00, !taffo.initweight !8, !taffo.info !1
  store float %inc, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %4 = load float, float* %local, align 4
  ret float %4
}

; Function Attrs: nounwind willreturn
declare !taffo.initweight !10 !taffo.funinfo !11 void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @funInt(float %x, float %y) #0 !taffo.initweight !4 !taffo.equivalentChild !12 !taffo.funinfo !6 {
entry:
  %x.addr = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %y.addr = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %local = alloca i32, align 4
  store float %x, float* %x.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %x.addr1 = bitcast float* %x.addr to i8*, !taffo.initweight !7, !taffo.info !1
  store float %y, float* %y.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %y.addr2 = bitcast float* %y.addr to i8*, !taffo.initweight !7, !taffo.info !1
  %0 = load float, float* %x.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %1 = load float, float* %y.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %mul = fmul float %0, %1, !taffo.initweight !8, !taffo.info !1
  %2 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %add = fadd float %mul, %2, !taffo.initweight !8, !taffo.info !1
  %conv = fptosi float %add to i32, !taffo.initweight !9, !taffo.info !1
  store i32 %conv, i32* %local, align 4, !taffo.initweight !13, !taffo.info !1
  %3 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %conv3 = fpext float %3 to double, !taffo.initweight !8, !taffo.info !1
  %mul4 = fmul double %conv3, 1.098000e+00, !taffo.initweight !9, !taffo.info !1
  %conv5 = fptrunc double %mul4 to float, !taffo.initweight !13, !taffo.info !1
  store float %conv5, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %4 = load i32, i32* %local, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.start !14 !taffo.initweight !15 !taffo.funinfo !15 {
entry:
  %retval = alloca i32, align 4
  %a = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %b = alloca float, align 4, !taffo.initweight !0, !taffo.info !1, !taffo.target !16
  %c = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %a1 = bitcast float* %a to i8*, !taffo.initweight !7, !taffo.info !1
  store float 0x402468E8A0000000, float* %a, align 4, !taffo.initweight !7, !taffo.info !1
  %b2 = bitcast float* %b to i8*, !taffo.initweight !7, !taffo.info !1, !taffo.target !16
  store float 0x4024346DC0000000, float* %b, align 4, !taffo.initweight !7, !taffo.info !1, !taffo.target !16
  store i32 2, i32* %c, align 4
  %0 = load float, float* %b, align 4, !taffo.initweight !7, !taffo.info !1, !taffo.target !16
  %1 = load float, float* %a, align 4, !taffo.initweight !7, !taffo.info !1
  %call = call float @fun.24(float %0, float %1), !taffo.initweight !8, !taffo.info !1, !taffo.originalCall !17
  store float %call, float* %a, align 4, !taffo.initweight !7, !taffo.info !1
  %2 = load float, float* %a, align 4, !taffo.initweight !7, !taffo.info !1
  %conv = fpext float %2 to double, !taffo.initweight !8, !taffo.info !1
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv), !taffo.initweight !9, !taffo.info !1
  %3 = load float, float* %a, align 4, !taffo.initweight !7, !taffo.info !1
  %4 = load float, float* %b, align 4, !taffo.initweight !7, !taffo.info !1, !taffo.target !16
  %call4 = call float @fun.23(float %3, float %4), !taffo.initweight !8, !taffo.info !1, !taffo.originalCall !17
  store float %call4, float* %a, align 4, !taffo.initweight !7, !taffo.info !1
  %5 = load float, float* %a, align 4, !taffo.initweight !7, !taffo.info !1
  %conv5 = fpext float %5 to double, !taffo.initweight !8, !taffo.info !1
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv5), !taffo.initweight !9, !taffo.info !1
  %6 = load float, float* %b, align 4, !taffo.initweight !7, !taffo.info !1, !taffo.target !16
  %7 = load float, float* %b, align 4, !taffo.initweight !7, !taffo.info !1, !taffo.target !16
  %call7 = call float @fun.22(float %6, float %7), !taffo.initweight !8, !taffo.info !1, !taffo.target !16, !taffo.originalCall !17
  store float %call7, float* %a, align 4, !taffo.initweight !7, !taffo.info !1
  %8 = load float, float* %a, align 4, !taffo.initweight !7, !taffo.info !1
  %conv8 = fpext float %8 to double, !taffo.initweight !8, !taffo.info !1
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv8), !taffo.initweight !9, !taffo.info !1
  %9 = load float, float* %a, align 4, !taffo.initweight !7, !taffo.info !1
  %10 = load float, float* %a, align 4, !taffo.initweight !7, !taffo.info !1
  %call10 = call float @fun.5(float %9, float %10), !taffo.initweight !8, !taffo.info !1, !taffo.originalCall !17
  store float %call10, float* %a, align 4, !taffo.initweight !7, !taffo.info !1
  %11 = load float, float* %a, align 4, !taffo.initweight !7, !taffo.info !1
  %conv11 = fpext float %11 to double, !taffo.initweight !8, !taffo.info !1
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv11), !taffo.initweight !9, !taffo.info !1
  %12 = load float, float* %a, align 4, !taffo.initweight !7, !taffo.info !1
  %div = fdiv float %12, 4.000000e+03, !taffo.initweight !8, !taffo.info !1
  store float %div, float* %a, align 4, !taffo.initweight !7, !taffo.info !1
  %13 = load float, float* %b, align 4, !taffo.initweight !7, !taffo.info !1, !taffo.target !16
  %14 = load float, float* %b, align 4, !taffo.initweight !7, !taffo.info !1, !taffo.target !16
  %call13 = call float @fun.21(float %13, float %14), !taffo.initweight !8, !taffo.info !1, !taffo.target !16, !taffo.originalCall !17
  store float %call13, float* %b, align 4, !taffo.initweight !7, !taffo.info !1, !taffo.target !16
  %15 = load float, float* %b, align 4, !taffo.initweight !7, !taffo.info !1, !taffo.target !16
  %conv14 = fpext float %15 to double, !taffo.initweight !8, !taffo.info !1, !taffo.target !16
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv14), !taffo.initweight !9, !taffo.info !1, !taffo.target !16
  %16 = load float, float* %a, align 4, !taffo.initweight !7, !taffo.info !1
  %17 = load float, float* %b, align 4, !taffo.initweight !7, !taffo.info !1, !taffo.target !16
  %call16 = call float @fun.20(float %16, float %17), !taffo.initweight !8, !taffo.info !1, !taffo.originalCall !17
  store float %call16, float* %b, align 4, !taffo.initweight !7, !taffo.info !1, !taffo.target !16
  %18 = load float, float* %b, align 4, !taffo.initweight !7, !taffo.info !1, !taffo.target !16
  %conv17 = fpext float %18 to double, !taffo.initweight !8, !taffo.info !1, !taffo.target !16
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv17), !taffo.initweight !9, !taffo.info !1, !taffo.target !16
  %19 = load float, float* %b, align 4, !taffo.initweight !7, !taffo.info !1, !taffo.target !16
  %20 = load float, float* %a, align 4, !taffo.initweight !7, !taffo.info !1
  %call19 = call float @fun.19(float %19, float %20), !taffo.initweight !8, !taffo.info !1, !taffo.originalCall !17
  store float %call19, float* %b, align 4, !taffo.initweight !7, !taffo.info !1, !taffo.target !16
  %21 = load float, float* %b, align 4, !taffo.initweight !7, !taffo.info !1, !taffo.target !16
  %conv20 = fpext float %21 to double, !taffo.initweight !8, !taffo.info !1, !taffo.target !16
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv20), !taffo.initweight !9, !taffo.info !1, !taffo.target !16
  %22 = load float, float* %a, align 4, !taffo.initweight !7, !taffo.info !1
  %23 = load float, float* %a, align 4, !taffo.initweight !7, !taffo.info !1
  %call22 = call float @fun.4(float %22, float %23), !taffo.initweight !8, !taffo.info !1, !taffo.originalCall !17
  store float %call22, float* %b, align 4, !taffo.initweight !7, !taffo.info !1, !taffo.target !16
  %24 = load float, float* %b, align 4, !taffo.initweight !7, !taffo.info !1, !taffo.target !16
  %conv23 = fpext float %24 to double, !taffo.initweight !8, !taffo.info !1, !taffo.target !16
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv23), !taffo.initweight !9, !taffo.info !1, !taffo.target !16
  %25 = load float, float* %a, align 4, !taffo.initweight !7, !taffo.info !1
  %div25 = fdiv float %25, 4.096000e+03, !taffo.initweight !8, !taffo.info !1
  store float %div25, float* %b, align 4, !taffo.initweight !7, !taffo.info !1, !taffo.target !16
  %26 = load float, float* %b, align 4, !taffo.initweight !7, !taffo.info !1, !taffo.target !16
  %27 = load float, float* %b, align 4, !taffo.initweight !7, !taffo.info !1, !taffo.target !16
  %call26 = call float @fun.18(float %26, float %27), !taffo.initweight !8, !taffo.info !1, !taffo.target !16, !taffo.originalCall !17
  %conv27 = fptosi float %call26 to i32, !taffo.initweight !9, !taffo.info !1, !taffo.target !16
  store i32 %conv27, i32* %c, align 4, !taffo.initweight !13, !taffo.info !1, !taffo.target !16
  %28 = load i32, i32* %c, align 4
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %28)
  %29 = load float, float* %b, align 4, !taffo.initweight !7, !taffo.info !1, !taffo.target !16
  %30 = load float, float* %b, align 4, !taffo.initweight !7, !taffo.info !1, !taffo.target !16
  %call29 = call float @fun.17(float %29, float %30), !taffo.initweight !8, !taffo.info !1, !taffo.target !16, !taffo.originalCall !17
  %conv30 = fptosi float %call29 to i32, !taffo.initweight !9, !taffo.info !1, !taffo.target !16
  store i32 %conv30, i32* %c, align 4, !taffo.initweight !13, !taffo.info !1, !taffo.target !16
  %31 = load i32, i32* %c, align 4
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %31)
  %32 = load float, float* %b, align 4, !taffo.initweight !7, !taffo.info !1, !taffo.target !16
  %33 = load float, float* %a, align 4, !taffo.initweight !7, !taffo.info !1
  %call32 = call float @fun.16(float %32, float %33), !taffo.initweight !8, !taffo.info !1, !taffo.originalCall !17
  %conv33 = fptosi float %call32 to i32, !taffo.initweight !9, !taffo.info !1
  store i32 %conv33, i32* %c, align 4, !taffo.initweight !13, !taffo.info !1
  %34 = load i32, i32* %c, align 4
  %call34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %34)
  %35 = load float, float* %a, align 4, !taffo.initweight !7, !taffo.info !1
  %36 = load float, float* %b, align 4, !taffo.initweight !7, !taffo.info !1, !taffo.target !16
  %call35 = call float @fun.15(float %35, float %36), !taffo.initweight !8, !taffo.info !1, !taffo.originalCall !17
  %conv36 = fptosi float %call35 to i32, !taffo.initweight !9, !taffo.info !1
  store i32 %conv36, i32* %c, align 4, !taffo.initweight !13, !taffo.info !1
  %37 = load i32, i32* %c, align 4
  %call37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %37)
  %call38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  store float 0x40241999A0000000, float* %a, align 4, !taffo.initweight !7, !taffo.info !1
  %38 = load float, float* %b, align 4, !taffo.initweight !7, !taffo.info !1, !taffo.target !16
  %39 = load float, float* %b, align 4, !taffo.initweight !7, !taffo.info !1, !taffo.target !16
  %call39 = call i32 @funInt.14(float %38, float %39), !taffo.initweight !8, !taffo.info !1, !taffo.target !16, !taffo.originalCall !18
  %conv40 = sitofp i32 %call39 to float, !taffo.initweight !9, !taffo.info !1, !taffo.target !16
  store float %conv40, float* %a, align 4, !taffo.initweight !7, !taffo.info !1
  %40 = load float, float* %a, align 4, !taffo.initweight !7, !taffo.info !1
  %conv41 = fpext float %40 to double, !taffo.initweight !8, !taffo.info !1
  %call42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv41), !taffo.initweight !9, !taffo.info !1
  %41 = load float, float* %b, align 4, !taffo.initweight !7, !taffo.info !1, !taffo.target !16
  %42 = load float, float* %a, align 4, !taffo.initweight !7, !taffo.info !1
  %call43 = call i32 @funInt.13(float %41, float %42), !taffo.initweight !8, !taffo.info !1, !taffo.originalCall !18
  %conv44 = sitofp i32 %call43 to float, !taffo.initweight !9, !taffo.info !1
  store float %conv44, float* %a, align 4, !taffo.initweight !7, !taffo.info !1
  %43 = load float, float* %a, align 4, !taffo.initweight !7, !taffo.info !1
  %conv45 = fpext float %43 to double, !taffo.initweight !8, !taffo.info !1
  %call46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv45), !taffo.initweight !9, !taffo.info !1
  %44 = load float, float* %a, align 4, !taffo.initweight !7, !taffo.info !1
  %45 = load float, float* %b, align 4, !taffo.initweight !7, !taffo.info !1, !taffo.target !16
  %call47 = call i32 @funInt.12(float %44, float %45), !taffo.initweight !8, !taffo.info !1, !taffo.originalCall !18
  %conv48 = sitofp i32 %call47 to float, !taffo.initweight !9, !taffo.info !1
  store float %conv48, float* %a, align 4, !taffo.initweight !7, !taffo.info !1
  %46 = load float, float* %a, align 4, !taffo.initweight !7, !taffo.info !1
  %conv49 = fpext float %46 to double, !taffo.initweight !8, !taffo.info !1
  %call50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv49), !taffo.initweight !9, !taffo.info !1
  %47 = load float, float* %a, align 4, !taffo.initweight !7, !taffo.info !1
  %48 = load float, float* %a, align 4, !taffo.initweight !7, !taffo.info !1
  %call51 = call i32 @funInt.3(float %47, float %48), !taffo.initweight !8, !taffo.info !1, !taffo.originalCall !18
  %conv52 = sitofp i32 %call51 to float, !taffo.initweight !9, !taffo.info !1
  store float %conv52, float* %a, align 4, !taffo.initweight !7, !taffo.info !1
  %49 = load float, float* %a, align 4, !taffo.initweight !7, !taffo.info !1
  %conv53 = fpext float %49 to double, !taffo.initweight !8, !taffo.info !1
  %call54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv53), !taffo.initweight !9, !taffo.info !1
  %50 = load float, float* %b, align 4, !taffo.initweight !7, !taffo.info !1, !taffo.target !16
  %conv55 = fpext float %50 to double, !taffo.initweight !8, !taffo.info !1, !taffo.target !16
  %call56 = call double @sqrt(double %conv55) #4, !taffo.initweight !9, !taffo.info !1, !taffo.target !16
  %conv57 = fptrunc double %call56 to float, !taffo.initweight !13, !taffo.info !1, !taffo.target !16
  store float %conv57, float* %a, align 4, !taffo.initweight !7, !taffo.info !1
  %51 = load float, float* %a, align 4, !taffo.initweight !7, !taffo.info !1
  %conv58 = fpext float %51 to double, !taffo.initweight !8, !taffo.info !1
  %mul = fmul double %conv58, 9.990000e+00, !taffo.initweight !9, !taffo.info !1
  %call59 = call double @exp(double %mul) #4, !taffo.initweight !13, !taffo.info !1
  %conv60 = fptrunc double %call59 to float, !taffo.initweight !19, !taffo.info !1
  store float %conv60, float* %b, align 4, !taffo.initweight !7, !taffo.info !1, !taffo.target !16
  %52 = load float, float* %a, align 4, !taffo.initweight !7, !taffo.info !1
  %53 = load float, float* %b, align 4, !taffo.initweight !7, !taffo.info !1, !taffo.target !16
  %call61 = call i32 @funInt.11(float %52, float %53), !taffo.initweight !8, !taffo.info !1, !taffo.originalCall !18
  %conv62 = sitofp i32 %call61 to float, !taffo.initweight !9, !taffo.info !1
  store float %conv62, float* %b, align 4, !taffo.initweight !7, !taffo.info !1, !taffo.target !16
  %54 = load float, float* %b, align 4, !taffo.initweight !7, !taffo.info !1, !taffo.target !16
  %conv63 = fpext float %54 to double, !taffo.initweight !8, !taffo.info !1, !taffo.target !16
  %call64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv63), !taffo.initweight !9, !taffo.info !1, !taffo.target !16
  %55 = load float, float* %b, align 4, !taffo.initweight !7, !taffo.info !1, !taffo.target !16
  %56 = load float, float* %a, align 4, !taffo.initweight !7, !taffo.info !1
  %call65 = call i32 @funInt.10(float %55, float %56), !taffo.initweight !8, !taffo.info !1, !taffo.originalCall !18
  %conv66 = sitofp i32 %call65 to float, !taffo.initweight !9, !taffo.info !1
  store float %conv66, float* %b, align 4, !taffo.initweight !7, !taffo.info !1, !taffo.target !16
  %57 = load float, float* %b, align 4, !taffo.initweight !7, !taffo.info !1, !taffo.target !16
  %conv67 = fpext float %57 to double, !taffo.initweight !8, !taffo.info !1, !taffo.target !16
  %call68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv67), !taffo.initweight !9, !taffo.info !1, !taffo.target !16
  %58 = load float, float* %a, align 4, !taffo.initweight !7, !taffo.info !1
  %59 = load float, float* %a, align 4, !taffo.initweight !7, !taffo.info !1
  %call69 = call i32 @funInt.2(float %58, float %59), !taffo.initweight !8, !taffo.info !1, !taffo.originalCall !18
  %conv70 = sitofp i32 %call69 to float, !taffo.initweight !9, !taffo.info !1
  store float %conv70, float* %b, align 4, !taffo.initweight !7, !taffo.info !1, !taffo.target !16
  %60 = load float, float* %b, align 4, !taffo.initweight !7, !taffo.info !1, !taffo.target !16
  %conv71 = fpext float %60 to double, !taffo.initweight !8, !taffo.info !1, !taffo.target !16
  %call72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv71), !taffo.initweight !9, !taffo.info !1, !taffo.target !16
  %61 = load float, float* %b, align 4, !taffo.initweight !7, !taffo.info !1, !taffo.target !16
  %62 = load float, float* %b, align 4, !taffo.initweight !7, !taffo.info !1, !taffo.target !16
  %call73 = call i32 @funInt.9(float %61, float %62), !taffo.initweight !8, !taffo.info !1, !taffo.target !16, !taffo.originalCall !18
  %conv74 = sitofp i32 %call73 to float, !taffo.initweight !9, !taffo.info !1, !taffo.target !16
  store float %conv74, float* %b, align 4, !taffo.initweight !7, !taffo.info !1, !taffo.target !16
  %63 = load float, float* %b, align 4, !taffo.initweight !7, !taffo.info !1, !taffo.target !16
  %conv75 = fpext float %63 to double, !taffo.initweight !8, !taffo.info !1, !taffo.target !16
  %call76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv75), !taffo.initweight !9, !taffo.info !1, !taffo.target !16
  %64 = load float, float* %a, align 4, !taffo.initweight !7, !taffo.info !1
  store float %64, float* %b, align 4, !taffo.initweight !7, !taffo.info !1, !taffo.target !16
  %65 = load float, float* %b, align 4, !taffo.initweight !7, !taffo.info !1, !taffo.target !16
  %66 = load float, float* %b, align 4, !taffo.initweight !7, !taffo.info !1, !taffo.target !16
  %call77 = call i32 @funInt.8(float %65, float %66), !taffo.initweight !8, !taffo.info !1, !taffo.target !16, !taffo.originalCall !18
  store i32 %call77, i32* %c, align 4, !taffo.initweight !9, !taffo.info !1, !taffo.target !16
  %67 = load i32, i32* %c, align 4
  %call78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %67)
  %68 = load float, float* %a, align 4, !taffo.initweight !7, !taffo.info !1
  %69 = load float, float* %b, align 4, !taffo.initweight !7, !taffo.info !1, !taffo.target !16
  %call79 = call i32 @funInt.7(float %68, float %69), !taffo.initweight !8, !taffo.info !1, !taffo.originalCall !18
  store i32 %call79, i32* %c, align 4, !taffo.initweight !9, !taffo.info !1
  %70 = load i32, i32* %c, align 4
  %call80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %70)
  %71 = load float, float* %a, align 4, !taffo.initweight !7, !taffo.info !1
  %72 = load float, float* %a, align 4, !taffo.initweight !7, !taffo.info !1
  %call81 = call i32 @funInt.1(float %71, float %72), !taffo.initweight !8, !taffo.info !1, !taffo.originalCall !18
  store i32 %call81, i32* %c, align 4, !taffo.initweight !9, !taffo.info !1
  %73 = load i32, i32* %c, align 4
  %call82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %73)
  %74 = load float, float* %b, align 4, !taffo.initweight !7, !taffo.info !1, !taffo.target !16
  %75 = load float, float* %a, align 4, !taffo.initweight !7, !taffo.info !1
  %call83 = call i32 @funInt.6(float %74, float %75), !taffo.initweight !8, !taffo.info !1, !taffo.originalCall !18
  store i32 %call83, i32* %c, align 4, !taffo.initweight !9, !taffo.info !1
  %76 = load i32, i32* %c, align 4
  %call84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %76)
  %call85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  ret i32 0
}

declare !taffo.initweight !20 !taffo.funinfo !21 dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare !taffo.initweight !20 !taffo.funinfo !21 dso_local double @sqrt(double) #3

; Function Attrs: nounwind
declare !taffo.initweight !20 !taffo.funinfo !21 dso_local double @exp(double) #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @funInt.1(float %x, float %y) #0 !taffo.initweight !22 !taffo.sourceFunction !18 !taffo.funinfo !23 {
entry:
  %x.addr = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %y.addr = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %local = alloca i32, align 4
  store float %x, float* %x.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %x.addr1 = bitcast float* %x.addr to i8*, !taffo.initweight !7, !taffo.info !1
  store float %y, float* %y.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %y.addr2 = bitcast float* %y.addr to i8*, !taffo.initweight !7, !taffo.info !1
  %0 = load float, float* %x.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %1 = load float, float* %y.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %mul = fmul float %0, %1, !taffo.initweight !8, !taffo.info !1
  %2 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %add = fadd float %mul, %2, !taffo.initweight !8, !taffo.info !1
  %conv = fptosi float %add to i32, !taffo.initweight !9, !taffo.info !1
  store i32 %conv, i32* %local, align 4, !taffo.initweight !13, !taffo.info !1
  %3 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %conv3 = fpext float %3 to double, !taffo.initweight !8, !taffo.info !1
  %mul4 = fmul double %conv3, 1.098000e+00, !taffo.initweight !9, !taffo.info !1
  %conv5 = fptrunc double %mul4 to float, !taffo.initweight !13, !taffo.info !1
  store float %conv5, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %4 = load i32, i32* %local, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @funInt.2(float %x, float %y) #0 !taffo.initweight !22 !taffo.sourceFunction !18 !taffo.funinfo !23 {
entry:
  %x.addr = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %y.addr = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %local = alloca i32, align 4
  store float %x, float* %x.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %x.addr1 = bitcast float* %x.addr to i8*, !taffo.initweight !7, !taffo.info !1
  store float %y, float* %y.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %y.addr2 = bitcast float* %y.addr to i8*, !taffo.initweight !7, !taffo.info !1
  %0 = load float, float* %x.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %1 = load float, float* %y.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %mul = fmul float %0, %1, !taffo.initweight !8, !taffo.info !1
  %2 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %add = fadd float %mul, %2, !taffo.initweight !8, !taffo.info !1
  %conv = fptosi float %add to i32, !taffo.initweight !9, !taffo.info !1
  store i32 %conv, i32* %local, align 4, !taffo.initweight !13, !taffo.info !1
  %3 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %conv3 = fpext float %3 to double, !taffo.initweight !8, !taffo.info !1
  %mul4 = fmul double %conv3, 1.098000e+00, !taffo.initweight !9, !taffo.info !1
  %conv5 = fptrunc double %mul4 to float, !taffo.initweight !13, !taffo.info !1
  store float %conv5, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %4 = load i32, i32* %local, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @funInt.3(float %x, float %y) #0 !taffo.initweight !22 !taffo.sourceFunction !18 !taffo.funinfo !23 {
entry:
  %x.addr = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %y.addr = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %local = alloca i32, align 4
  store float %x, float* %x.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %x.addr1 = bitcast float* %x.addr to i8*, !taffo.initweight !7, !taffo.info !1
  store float %y, float* %y.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %y.addr2 = bitcast float* %y.addr to i8*, !taffo.initweight !7, !taffo.info !1
  %0 = load float, float* %x.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %1 = load float, float* %y.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %mul = fmul float %0, %1, !taffo.initweight !8, !taffo.info !1
  %2 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %add = fadd float %mul, %2, !taffo.initweight !8, !taffo.info !1
  %conv = fptosi float %add to i32, !taffo.initweight !9, !taffo.info !1
  store i32 %conv, i32* %local, align 4, !taffo.initweight !13, !taffo.info !1
  %3 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %conv3 = fpext float %3 to double, !taffo.initweight !8, !taffo.info !1
  %mul4 = fmul double %conv3, 1.098000e+00, !taffo.initweight !9, !taffo.info !1
  %conv5 = fptrunc double %mul4 to float, !taffo.initweight !13, !taffo.info !1
  store float %conv5, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %4 = load i32, i32* %local, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define internal float @fun.4(float %x, float %y) #0 !taffo.initweight !22 !taffo.sourceFunction !17 !taffo.funinfo !23 {
entry:
  %x.addr = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %y.addr = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %local = alloca float, align 4
  store float %x, float* %x.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %x.addr1 = bitcast float* %x.addr to i8*, !taffo.initweight !7, !taffo.info !1
  store float %y, float* %y.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %y.addr2 = bitcast float* %y.addr to i8*, !taffo.initweight !7, !taffo.info !1
  %0 = load float, float* %x.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %1 = load float, float* %y.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %mul = fmul float %0, %1, !taffo.initweight !8, !taffo.info !1
  %2 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %add = fadd float %mul, %2, !taffo.initweight !8, !taffo.info !1
  store float %add, float* %local, align 4, !taffo.initweight !9, !taffo.info !1
  %3 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %inc = fadd float %3, 1.000000e+00, !taffo.initweight !8, !taffo.info !1
  store float %inc, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %4 = load float, float* %local, align 4
  ret float %4
}

; Function Attrs: noinline nounwind uwtable
define internal float @fun.5(float %x, float %y) #0 !taffo.initweight !22 !taffo.sourceFunction !17 !taffo.funinfo !23 {
entry:
  %x.addr = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %y.addr = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %local = alloca float, align 4
  store float %x, float* %x.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %x.addr1 = bitcast float* %x.addr to i8*, !taffo.initweight !7, !taffo.info !1
  store float %y, float* %y.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %y.addr2 = bitcast float* %y.addr to i8*, !taffo.initweight !7, !taffo.info !1
  %0 = load float, float* %x.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %1 = load float, float* %y.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %mul = fmul float %0, %1, !taffo.initweight !8, !taffo.info !1
  %2 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %add = fadd float %mul, %2, !taffo.initweight !8, !taffo.info !1
  store float %add, float* %local, align 4, !taffo.initweight !9, !taffo.info !1
  %3 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %inc = fadd float %3, 1.000000e+00, !taffo.initweight !8, !taffo.info !1
  store float %inc, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %4 = load float, float* %local, align 4
  ret float %4
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @funInt.6(float %x, float %y) #0 !taffo.initweight !22 !taffo.sourceFunction !18 !taffo.funinfo !23 {
entry:
  %x.addr = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %y.addr = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %local = alloca i32, align 4
  store float %x, float* %x.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %x.addr1 = bitcast float* %x.addr to i8*, !taffo.initweight !7, !taffo.info !1
  store float %y, float* %y.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %y.addr2 = bitcast float* %y.addr to i8*, !taffo.initweight !7, !taffo.info !1
  %0 = load float, float* %x.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %1 = load float, float* %y.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %mul = fmul float %0, %1, !taffo.initweight !8, !taffo.info !1
  %2 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %add = fadd float %mul, %2, !taffo.initweight !8, !taffo.info !1
  %conv = fptosi float %add to i32, !taffo.initweight !9, !taffo.info !1
  store i32 %conv, i32* %local, align 4, !taffo.initweight !13, !taffo.info !1
  %3 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %conv3 = fpext float %3 to double, !taffo.initweight !8, !taffo.info !1
  %mul4 = fmul double %conv3, 1.098000e+00, !taffo.initweight !9, !taffo.info !1
  %conv5 = fptrunc double %mul4 to float, !taffo.initweight !13, !taffo.info !1
  store float %conv5, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %4 = load i32, i32* %local, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @funInt.7(float %x, float %y) #0 !taffo.initweight !22 !taffo.sourceFunction !18 !taffo.funinfo !23 {
entry:
  %x.addr = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %y.addr = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %local = alloca i32, align 4
  store float %x, float* %x.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %x.addr1 = bitcast float* %x.addr to i8*, !taffo.initweight !7, !taffo.info !1
  store float %y, float* %y.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %y.addr2 = bitcast float* %y.addr to i8*, !taffo.initweight !7, !taffo.info !1
  %0 = load float, float* %x.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %1 = load float, float* %y.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %mul = fmul float %0, %1, !taffo.initweight !8, !taffo.info !1
  %2 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %add = fadd float %mul, %2, !taffo.initweight !8, !taffo.info !1
  %conv = fptosi float %add to i32, !taffo.initweight !9, !taffo.info !1
  store i32 %conv, i32* %local, align 4, !taffo.initweight !13, !taffo.info !1
  %3 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %conv3 = fpext float %3 to double, !taffo.initweight !8, !taffo.info !1
  %mul4 = fmul double %conv3, 1.098000e+00, !taffo.initweight !9, !taffo.info !1
  %conv5 = fptrunc double %mul4 to float, !taffo.initweight !13, !taffo.info !1
  store float %conv5, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %4 = load i32, i32* %local, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @funInt.8(float %x, float %y) #0 !taffo.initweight !22 !taffo.sourceFunction !18 !taffo.funinfo !23 {
entry:
  %x.addr = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %y.addr = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %local = alloca i32, align 4
  store float %x, float* %x.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %x.addr1 = bitcast float* %x.addr to i8*, !taffo.initweight !7, !taffo.info !1
  store float %y, float* %y.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %y.addr2 = bitcast float* %y.addr to i8*, !taffo.initweight !7, !taffo.info !1
  %0 = load float, float* %x.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %1 = load float, float* %y.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %mul = fmul float %0, %1, !taffo.initweight !8, !taffo.info !1
  %2 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %add = fadd float %mul, %2, !taffo.initweight !8, !taffo.info !1
  %conv = fptosi float %add to i32, !taffo.initweight !9, !taffo.info !1
  store i32 %conv, i32* %local, align 4, !taffo.initweight !13, !taffo.info !1
  %3 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %conv3 = fpext float %3 to double, !taffo.initweight !8, !taffo.info !1
  %mul4 = fmul double %conv3, 1.098000e+00, !taffo.initweight !9, !taffo.info !1
  %conv5 = fptrunc double %mul4 to float, !taffo.initweight !13, !taffo.info !1
  store float %conv5, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %4 = load i32, i32* %local, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @funInt.9(float %x, float %y) #0 !taffo.initweight !22 !taffo.sourceFunction !18 !taffo.funinfo !23 {
entry:
  %x.addr = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %y.addr = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %local = alloca i32, align 4
  store float %x, float* %x.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %x.addr1 = bitcast float* %x.addr to i8*, !taffo.initweight !7, !taffo.info !1
  store float %y, float* %y.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %y.addr2 = bitcast float* %y.addr to i8*, !taffo.initweight !7, !taffo.info !1
  %0 = load float, float* %x.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %1 = load float, float* %y.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %mul = fmul float %0, %1, !taffo.initweight !8, !taffo.info !1
  %2 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %add = fadd float %mul, %2, !taffo.initweight !8, !taffo.info !1
  %conv = fptosi float %add to i32, !taffo.initweight !9, !taffo.info !1
  store i32 %conv, i32* %local, align 4, !taffo.initweight !13, !taffo.info !1
  %3 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %conv3 = fpext float %3 to double, !taffo.initweight !8, !taffo.info !1
  %mul4 = fmul double %conv3, 1.098000e+00, !taffo.initweight !9, !taffo.info !1
  %conv5 = fptrunc double %mul4 to float, !taffo.initweight !13, !taffo.info !1
  store float %conv5, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %4 = load i32, i32* %local, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @funInt.10(float %x, float %y) #0 !taffo.initweight !22 !taffo.sourceFunction !18 !taffo.funinfo !23 {
entry:
  %x.addr = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %y.addr = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %local = alloca i32, align 4
  store float %x, float* %x.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %x.addr1 = bitcast float* %x.addr to i8*, !taffo.initweight !7, !taffo.info !1
  store float %y, float* %y.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %y.addr2 = bitcast float* %y.addr to i8*, !taffo.initweight !7, !taffo.info !1
  %0 = load float, float* %x.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %1 = load float, float* %y.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %mul = fmul float %0, %1, !taffo.initweight !8, !taffo.info !1
  %2 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %add = fadd float %mul, %2, !taffo.initweight !8, !taffo.info !1
  %conv = fptosi float %add to i32, !taffo.initweight !9, !taffo.info !1
  store i32 %conv, i32* %local, align 4, !taffo.initweight !13, !taffo.info !1
  %3 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %conv3 = fpext float %3 to double, !taffo.initweight !8, !taffo.info !1
  %mul4 = fmul double %conv3, 1.098000e+00, !taffo.initweight !9, !taffo.info !1
  %conv5 = fptrunc double %mul4 to float, !taffo.initweight !13, !taffo.info !1
  store float %conv5, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %4 = load i32, i32* %local, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @funInt.11(float %x, float %y) #0 !taffo.initweight !22 !taffo.sourceFunction !18 !taffo.funinfo !23 {
entry:
  %x.addr = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %y.addr = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %local = alloca i32, align 4
  store float %x, float* %x.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %x.addr1 = bitcast float* %x.addr to i8*, !taffo.initweight !7, !taffo.info !1
  store float %y, float* %y.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %y.addr2 = bitcast float* %y.addr to i8*, !taffo.initweight !7, !taffo.info !1
  %0 = load float, float* %x.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %1 = load float, float* %y.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %mul = fmul float %0, %1, !taffo.initweight !8, !taffo.info !1
  %2 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %add = fadd float %mul, %2, !taffo.initweight !8, !taffo.info !1
  %conv = fptosi float %add to i32, !taffo.initweight !9, !taffo.info !1
  store i32 %conv, i32* %local, align 4, !taffo.initweight !13, !taffo.info !1
  %3 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %conv3 = fpext float %3 to double, !taffo.initweight !8, !taffo.info !1
  %mul4 = fmul double %conv3, 1.098000e+00, !taffo.initweight !9, !taffo.info !1
  %conv5 = fptrunc double %mul4 to float, !taffo.initweight !13, !taffo.info !1
  store float %conv5, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %4 = load i32, i32* %local, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @funInt.12(float %x, float %y) #0 !taffo.initweight !22 !taffo.sourceFunction !18 !taffo.funinfo !23 {
entry:
  %x.addr = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %y.addr = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %local = alloca i32, align 4
  store float %x, float* %x.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %x.addr1 = bitcast float* %x.addr to i8*, !taffo.initweight !7, !taffo.info !1
  store float %y, float* %y.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %y.addr2 = bitcast float* %y.addr to i8*, !taffo.initweight !7, !taffo.info !1
  %0 = load float, float* %x.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %1 = load float, float* %y.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %mul = fmul float %0, %1, !taffo.initweight !8, !taffo.info !1
  %2 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %add = fadd float %mul, %2, !taffo.initweight !8, !taffo.info !1
  %conv = fptosi float %add to i32, !taffo.initweight !9, !taffo.info !1
  store i32 %conv, i32* %local, align 4, !taffo.initweight !13, !taffo.info !1
  %3 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %conv3 = fpext float %3 to double, !taffo.initweight !8, !taffo.info !1
  %mul4 = fmul double %conv3, 1.098000e+00, !taffo.initweight !9, !taffo.info !1
  %conv5 = fptrunc double %mul4 to float, !taffo.initweight !13, !taffo.info !1
  store float %conv5, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %4 = load i32, i32* %local, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @funInt.13(float %x, float %y) #0 !taffo.initweight !22 !taffo.sourceFunction !18 !taffo.funinfo !23 {
entry:
  %x.addr = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %y.addr = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %local = alloca i32, align 4
  store float %x, float* %x.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %x.addr1 = bitcast float* %x.addr to i8*, !taffo.initweight !7, !taffo.info !1
  store float %y, float* %y.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %y.addr2 = bitcast float* %y.addr to i8*, !taffo.initweight !7, !taffo.info !1
  %0 = load float, float* %x.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %1 = load float, float* %y.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %mul = fmul float %0, %1, !taffo.initweight !8, !taffo.info !1
  %2 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %add = fadd float %mul, %2, !taffo.initweight !8, !taffo.info !1
  %conv = fptosi float %add to i32, !taffo.initweight !9, !taffo.info !1
  store i32 %conv, i32* %local, align 4, !taffo.initweight !13, !taffo.info !1
  %3 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %conv3 = fpext float %3 to double, !taffo.initweight !8, !taffo.info !1
  %mul4 = fmul double %conv3, 1.098000e+00, !taffo.initweight !9, !taffo.info !1
  %conv5 = fptrunc double %mul4 to float, !taffo.initweight !13, !taffo.info !1
  store float %conv5, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %4 = load i32, i32* %local, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @funInt.14(float %x, float %y) #0 !taffo.initweight !22 !taffo.sourceFunction !18 !taffo.funinfo !23 {
entry:
  %x.addr = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %y.addr = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %local = alloca i32, align 4
  store float %x, float* %x.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %x.addr1 = bitcast float* %x.addr to i8*, !taffo.initweight !7, !taffo.info !1
  store float %y, float* %y.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %y.addr2 = bitcast float* %y.addr to i8*, !taffo.initweight !7, !taffo.info !1
  %0 = load float, float* %x.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %1 = load float, float* %y.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %mul = fmul float %0, %1, !taffo.initweight !8, !taffo.info !1
  %2 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %add = fadd float %mul, %2, !taffo.initweight !8, !taffo.info !1
  %conv = fptosi float %add to i32, !taffo.initweight !9, !taffo.info !1
  store i32 %conv, i32* %local, align 4, !taffo.initweight !13, !taffo.info !1
  %3 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %conv3 = fpext float %3 to double, !taffo.initweight !8, !taffo.info !1
  %mul4 = fmul double %conv3, 1.098000e+00, !taffo.initweight !9, !taffo.info !1
  %conv5 = fptrunc double %mul4 to float, !taffo.initweight !13, !taffo.info !1
  store float %conv5, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %4 = load i32, i32* %local, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define internal float @fun.15(float %x, float %y) #0 !taffo.initweight !22 !taffo.sourceFunction !17 !taffo.funinfo !23 {
entry:
  %x.addr = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %y.addr = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %local = alloca float, align 4
  store float %x, float* %x.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %x.addr1 = bitcast float* %x.addr to i8*, !taffo.initweight !7, !taffo.info !1
  store float %y, float* %y.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %y.addr2 = bitcast float* %y.addr to i8*, !taffo.initweight !7, !taffo.info !1
  %0 = load float, float* %x.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %1 = load float, float* %y.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %mul = fmul float %0, %1, !taffo.initweight !8, !taffo.info !1
  %2 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %add = fadd float %mul, %2, !taffo.initweight !8, !taffo.info !1
  store float %add, float* %local, align 4, !taffo.initweight !9, !taffo.info !1
  %3 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %inc = fadd float %3, 1.000000e+00, !taffo.initweight !8, !taffo.info !1
  store float %inc, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %4 = load float, float* %local, align 4
  ret float %4
}

; Function Attrs: noinline nounwind uwtable
define internal float @fun.16(float %x, float %y) #0 !taffo.initweight !22 !taffo.sourceFunction !17 !taffo.funinfo !23 {
entry:
  %x.addr = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %y.addr = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %local = alloca float, align 4
  store float %x, float* %x.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %x.addr1 = bitcast float* %x.addr to i8*, !taffo.initweight !7, !taffo.info !1
  store float %y, float* %y.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %y.addr2 = bitcast float* %y.addr to i8*, !taffo.initweight !7, !taffo.info !1
  %0 = load float, float* %x.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %1 = load float, float* %y.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %mul = fmul float %0, %1, !taffo.initweight !8, !taffo.info !1
  %2 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %add = fadd float %mul, %2, !taffo.initweight !8, !taffo.info !1
  store float %add, float* %local, align 4, !taffo.initweight !9, !taffo.info !1
  %3 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %inc = fadd float %3, 1.000000e+00, !taffo.initweight !8, !taffo.info !1
  store float %inc, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %4 = load float, float* %local, align 4
  ret float %4
}

; Function Attrs: noinline nounwind uwtable
define internal float @fun.17(float %x, float %y) #0 !taffo.initweight !22 !taffo.sourceFunction !17 !taffo.funinfo !23 {
entry:
  %x.addr = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %y.addr = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %local = alloca float, align 4
  store float %x, float* %x.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %x.addr1 = bitcast float* %x.addr to i8*, !taffo.initweight !7, !taffo.info !1
  store float %y, float* %y.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %y.addr2 = bitcast float* %y.addr to i8*, !taffo.initweight !7, !taffo.info !1
  %0 = load float, float* %x.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %1 = load float, float* %y.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %mul = fmul float %0, %1, !taffo.initweight !8, !taffo.info !1
  %2 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %add = fadd float %mul, %2, !taffo.initweight !8, !taffo.info !1
  store float %add, float* %local, align 4, !taffo.initweight !9, !taffo.info !1
  %3 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %inc = fadd float %3, 1.000000e+00, !taffo.initweight !8, !taffo.info !1
  store float %inc, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %4 = load float, float* %local, align 4
  ret float %4
}

; Function Attrs: noinline nounwind uwtable
define internal float @fun.18(float %x, float %y) #0 !taffo.initweight !22 !taffo.sourceFunction !17 !taffo.funinfo !23 {
entry:
  %x.addr = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %y.addr = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %local = alloca float, align 4
  store float %x, float* %x.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %x.addr1 = bitcast float* %x.addr to i8*, !taffo.initweight !7, !taffo.info !1
  store float %y, float* %y.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %y.addr2 = bitcast float* %y.addr to i8*, !taffo.initweight !7, !taffo.info !1
  %0 = load float, float* %x.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %1 = load float, float* %y.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %mul = fmul float %0, %1, !taffo.initweight !8, !taffo.info !1
  %2 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %add = fadd float %mul, %2, !taffo.initweight !8, !taffo.info !1
  store float %add, float* %local, align 4, !taffo.initweight !9, !taffo.info !1
  %3 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %inc = fadd float %3, 1.000000e+00, !taffo.initweight !8, !taffo.info !1
  store float %inc, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %4 = load float, float* %local, align 4
  ret float %4
}

; Function Attrs: noinline nounwind uwtable
define internal float @fun.19(float %x, float %y) #0 !taffo.initweight !22 !taffo.sourceFunction !17 !taffo.funinfo !23 {
entry:
  %x.addr = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %y.addr = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %local = alloca float, align 4
  store float %x, float* %x.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %x.addr1 = bitcast float* %x.addr to i8*, !taffo.initweight !7, !taffo.info !1
  store float %y, float* %y.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %y.addr2 = bitcast float* %y.addr to i8*, !taffo.initweight !7, !taffo.info !1
  %0 = load float, float* %x.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %1 = load float, float* %y.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %mul = fmul float %0, %1, !taffo.initweight !8, !taffo.info !1
  %2 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %add = fadd float %mul, %2, !taffo.initweight !8, !taffo.info !1
  store float %add, float* %local, align 4, !taffo.initweight !9, !taffo.info !1
  %3 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %inc = fadd float %3, 1.000000e+00, !taffo.initweight !8, !taffo.info !1
  store float %inc, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %4 = load float, float* %local, align 4
  ret float %4
}

; Function Attrs: noinline nounwind uwtable
define internal float @fun.20(float %x, float %y) #0 !taffo.initweight !22 !taffo.sourceFunction !17 !taffo.funinfo !23 {
entry:
  %x.addr = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %y.addr = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %local = alloca float, align 4
  store float %x, float* %x.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %x.addr1 = bitcast float* %x.addr to i8*, !taffo.initweight !7, !taffo.info !1
  store float %y, float* %y.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %y.addr2 = bitcast float* %y.addr to i8*, !taffo.initweight !7, !taffo.info !1
  %0 = load float, float* %x.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %1 = load float, float* %y.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %mul = fmul float %0, %1, !taffo.initweight !8, !taffo.info !1
  %2 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %add = fadd float %mul, %2, !taffo.initweight !8, !taffo.info !1
  store float %add, float* %local, align 4, !taffo.initweight !9, !taffo.info !1
  %3 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %inc = fadd float %3, 1.000000e+00, !taffo.initweight !8, !taffo.info !1
  store float %inc, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %4 = load float, float* %local, align 4
  ret float %4
}

; Function Attrs: noinline nounwind uwtable
define internal float @fun.21(float %x, float %y) #0 !taffo.initweight !22 !taffo.sourceFunction !17 !taffo.funinfo !23 {
entry:
  %x.addr = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %y.addr = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %local = alloca float, align 4
  store float %x, float* %x.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %x.addr1 = bitcast float* %x.addr to i8*, !taffo.initweight !7, !taffo.info !1
  store float %y, float* %y.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %y.addr2 = bitcast float* %y.addr to i8*, !taffo.initweight !7, !taffo.info !1
  %0 = load float, float* %x.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %1 = load float, float* %y.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %mul = fmul float %0, %1, !taffo.initweight !8, !taffo.info !1
  %2 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %add = fadd float %mul, %2, !taffo.initweight !8, !taffo.info !1
  store float %add, float* %local, align 4, !taffo.initweight !9, !taffo.info !1
  %3 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %inc = fadd float %3, 1.000000e+00, !taffo.initweight !8, !taffo.info !1
  store float %inc, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %4 = load float, float* %local, align 4
  ret float %4
}

; Function Attrs: noinline nounwind uwtable
define internal float @fun.22(float %x, float %y) #0 !taffo.initweight !22 !taffo.sourceFunction !17 !taffo.funinfo !23 {
entry:
  %x.addr = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %y.addr = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %local = alloca float, align 4
  store float %x, float* %x.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %x.addr1 = bitcast float* %x.addr to i8*, !taffo.initweight !7, !taffo.info !1
  store float %y, float* %y.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %y.addr2 = bitcast float* %y.addr to i8*, !taffo.initweight !7, !taffo.info !1
  %0 = load float, float* %x.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %1 = load float, float* %y.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %mul = fmul float %0, %1, !taffo.initweight !8, !taffo.info !1
  %2 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %add = fadd float %mul, %2, !taffo.initweight !8, !taffo.info !1
  store float %add, float* %local, align 4, !taffo.initweight !9, !taffo.info !1
  %3 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %inc = fadd float %3, 1.000000e+00, !taffo.initweight !8, !taffo.info !1
  store float %inc, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %4 = load float, float* %local, align 4
  ret float %4
}

; Function Attrs: noinline nounwind uwtable
define internal float @fun.23(float %x, float %y) #0 !taffo.initweight !22 !taffo.sourceFunction !17 !taffo.funinfo !23 {
entry:
  %x.addr = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %y.addr = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %local = alloca float, align 4
  store float %x, float* %x.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %x.addr1 = bitcast float* %x.addr to i8*, !taffo.initweight !7, !taffo.info !1
  store float %y, float* %y.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %y.addr2 = bitcast float* %y.addr to i8*, !taffo.initweight !7, !taffo.info !1
  %0 = load float, float* %x.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %1 = load float, float* %y.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %mul = fmul float %0, %1, !taffo.initweight !8, !taffo.info !1
  %2 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %add = fadd float %mul, %2, !taffo.initweight !8, !taffo.info !1
  store float %add, float* %local, align 4, !taffo.initweight !9, !taffo.info !1
  %3 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %inc = fadd float %3, 1.000000e+00, !taffo.initweight !8, !taffo.info !1
  store float %inc, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %4 = load float, float* %local, align 4
  ret float %4
}

; Function Attrs: noinline nounwind uwtable
define internal float @fun.24(float %x, float %y) #0 !taffo.initweight !22 !taffo.sourceFunction !17 !taffo.funinfo !23 {
entry:
  %x.addr = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %y.addr = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %local = alloca float, align 4
  store float %x, float* %x.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %x.addr1 = bitcast float* %x.addr to i8*, !taffo.initweight !7, !taffo.info !1
  store float %y, float* %y.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %y.addr2 = bitcast float* %y.addr to i8*, !taffo.initweight !7, !taffo.info !1
  %0 = load float, float* %x.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %1 = load float, float* %y.addr, align 4, !taffo.initweight !7, !taffo.info !1
  %mul = fmul float %0, %1, !taffo.initweight !8, !taffo.info !1
  %2 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %add = fadd float %mul, %2, !taffo.initweight !8, !taffo.info !1
  store float %add, float* %local, align 4, !taffo.initweight !9, !taffo.info !1
  %3 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %inc = fadd float %3, 1.000000e+00, !taffo.initweight !8, !taffo.info !1
  store float %inc, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %4 = load float, float* %local, align 4
  ret float %4
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 0}
!1 = !{i1 false, i1 false, i1 false, i2 1}
!2 = !{i32 1, !"wchar_size", i32 4}
!3 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!4 = !{i32 -1, i32 -1}
!5 = !{float (float, float)* @fun.4, float (float, float)* @fun.5, float (float, float)* @fun.15, float (float, float)* @fun.16, float (float, float)* @fun.17, float (float, float)* @fun.18, float (float, float)* @fun.19, float (float, float)* @fun.20, float (float, float)* @fun.21, float (float, float)* @fun.22, float (float, float)* @fun.23, float (float, float)* @fun.24}
!6 = !{i32 0, i1 false, i32 0, i1 false}
!7 = !{i32 1}
!8 = !{i32 2}
!9 = !{i32 3}
!10 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!11 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!12 = !{i32 (float, float)* @funInt.1, i32 (float, float)* @funInt.2, i32 (float, float)* @funInt.3, i32 (float, float)* @funInt.6, i32 (float, float)* @funInt.7, i32 (float, float)* @funInt.8, i32 (float, float)* @funInt.9, i32 (float, float)* @funInt.10, i32 (float, float)* @funInt.11, i32 (float, float)* @funInt.12, i32 (float, float)* @funInt.13, i32 (float, float)* @funInt.14}
!13 = !{i32 4}
!14 = !{i1 true}
!15 = !{}
!16 = !{!"b"}
!17 = !{float (float, float)* @fun}
!18 = !{i32 (float, float)* @funInt}
!19 = !{i32 5}
!20 = !{i32 -1}
!21 = !{i32 0, i1 false}
!22 = !{i32 2, i32 2}
!23 = !{i32 1, !1, i32 1, !1}
