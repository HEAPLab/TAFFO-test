; ModuleID = './function.out.2.taffotmp.ll'
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
  %mul = fmul float %x, %y, !taffo.initweight !7, !taffo.info !1
  %0 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %add = fadd float %mul, %0, !taffo.initweight !7, !taffo.info !1
  %1 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %inc = fadd float %1, 1.000000e+00, !taffo.initweight !7, !taffo.info !1, !taffo.constinfo !9
  store float %inc, float* @global, align 4, !taffo.initweight !8, !taffo.info !1, !taffo.constinfo !12
  ret float %add
}

; Function Attrs: nounwind willreturn
declare !taffo.initweight !13 !taffo.funinfo !14 void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @funInt(float %x, float %y) #0 !taffo.initweight !4 !taffo.equivalentChild !15 !taffo.funinfo !6 {
entry:
  %mul = fmul float %x, %y, !taffo.initweight !7, !taffo.info !1
  %0 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %add = fadd float %mul, %0, !taffo.initweight !7, !taffo.info !1
  %conv = fptosi float %add to i32, !taffo.initweight !16, !taffo.info !1
  %1 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %conv3 = fpext float %1 to double, !taffo.initweight !7, !taffo.info !1
  %mul4 = fmul double %conv3, 1.098000e+00, !taffo.initweight !16, !taffo.info !1, !taffo.constinfo !17
  %conv5 = fptrunc double %mul4 to float, !taffo.initweight !20, !taffo.info !1
  store float %conv5, float* @global, align 4, !taffo.initweight !8, !taffo.info !1, !taffo.constinfo !12
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !21 !taffo.funinfo !21 !taffo.start !22 {
entry:
  %call = call float @fun.24(float 0x4024346DC0000000, float 0x402468E8A0000000), !taffo.initweight !7, !taffo.info !1, !taffo.originalCall !23, !taffo.constinfo !24
  %conv = fpext float %call to double, !taffo.initweight !7, !taffo.info !1
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv), !taffo.initweight !16, !taffo.info !1, !taffo.constinfo !29
  %call4 = call float @fun.23(float %call, float 0x4024346DC0000000), !taffo.initweight !7, !taffo.info !1, !taffo.originalCall !23, !taffo.constinfo !30
  %conv5 = fpext float %call4 to double, !taffo.initweight !7, !taffo.info !1
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv5), !taffo.initweight !16, !taffo.info !1, !taffo.constinfo !29
  %call7 = call float @fun.22(float 0x4024346DC0000000, float 0x4024346DC0000000), !taffo.initweight !7, !taffo.info !1, !taffo.target !31, !taffo.originalCall !23, !taffo.constinfo !32
  %conv8 = fpext float %call7 to double, !taffo.initweight !7, !taffo.info !1
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv8), !taffo.initweight !16, !taffo.info !1, !taffo.constinfo !29
  %call10 = call float @fun.5(float %call7, float %call7), !taffo.initweight !7, !taffo.info !1, !taffo.originalCall !23, !taffo.constinfo !29
  %conv11 = fpext float %call10 to double, !taffo.initweight !7, !taffo.info !1
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv11), !taffo.initweight !16, !taffo.info !1, !taffo.constinfo !29
  %div = fdiv float %call10, 4.000000e+03, !taffo.initweight !7, !taffo.info !1, !taffo.constinfo !33
  %call13 = call float @fun.21(float 0x4024346DC0000000, float 0x4024346DC0000000), !taffo.initweight !7, !taffo.info !1, !taffo.target !31, !taffo.originalCall !23, !taffo.constinfo !32
  %conv14 = fpext float %call13 to double, !taffo.initweight !7, !taffo.info !1, !taffo.target !31
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv14), !taffo.initweight !16, !taffo.info !1, !taffo.target !31, !taffo.constinfo !29
  %call16 = call float @fun.20(float %div, float %call13), !taffo.initweight !7, !taffo.info !1, !taffo.originalCall !23, !taffo.constinfo !29
  %conv17 = fpext float %call16 to double, !taffo.initweight !7, !taffo.info !1, !taffo.target !31
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv17), !taffo.initweight !16, !taffo.info !1, !taffo.target !31, !taffo.constinfo !29
  %call19 = call float @fun.19(float %call16, float %div), !taffo.initweight !7, !taffo.info !1, !taffo.originalCall !23, !taffo.constinfo !29
  %conv20 = fpext float %call19 to double, !taffo.initweight !7, !taffo.info !1, !taffo.target !31
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv20), !taffo.initweight !16, !taffo.info !1, !taffo.target !31, !taffo.constinfo !29
  %call22 = call float @fun.4(float %div, float %div), !taffo.initweight !7, !taffo.info !1, !taffo.originalCall !23, !taffo.constinfo !29
  %conv23 = fpext float %call22 to double, !taffo.initweight !7, !taffo.info !1, !taffo.target !31
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv23), !taffo.initweight !16, !taffo.info !1, !taffo.target !31, !taffo.constinfo !29
  %div25 = fdiv float %div, 4.096000e+03, !taffo.initweight !7, !taffo.info !1, !taffo.constinfo !36
  %call26 = call float @fun.18(float %div25, float %div25), !taffo.initweight !7, !taffo.info !1, !taffo.target !31, !taffo.originalCall !23, !taffo.constinfo !29
  %conv27 = fptosi float %call26 to i32, !taffo.initweight !16, !taffo.info !1, !taffo.target !31
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %conv27), !taffo.constinfo !29
  %call29 = call float @fun.17(float %div25, float %div25), !taffo.initweight !7, !taffo.info !1, !taffo.target !31, !taffo.originalCall !23, !taffo.constinfo !29
  %conv30 = fptosi float %call29 to i32, !taffo.initweight !16, !taffo.info !1, !taffo.target !31
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %conv30), !taffo.constinfo !29
  %call32 = call float @fun.16(float %div25, float %div), !taffo.initweight !7, !taffo.info !1, !taffo.originalCall !23, !taffo.constinfo !29
  %conv33 = fptosi float %call32 to i32, !taffo.initweight !16, !taffo.info !1
  %call34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %conv33), !taffo.constinfo !29
  %call35 = call float @fun.15(float %div, float %div25), !taffo.initweight !7, !taffo.info !1, !taffo.originalCall !23, !taffo.constinfo !29
  %conv36 = fptosi float %call35 to i32, !taffo.initweight !16, !taffo.info !1
  %call37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %conv36), !taffo.constinfo !29
  %call38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0)), !taffo.constinfo !12
  %call39 = call i32 @funInt.14(float %div25, float %div25), !taffo.initweight !7, !taffo.info !1, !taffo.target !31, !taffo.originalCall !39, !taffo.constinfo !29
  %conv40 = sitofp i32 %call39 to float, !taffo.initweight !16, !taffo.info !1, !taffo.target !31
  %conv41 = fpext float %conv40 to double, !taffo.initweight !7, !taffo.info !1
  %call42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv41), !taffo.initweight !16, !taffo.info !1, !taffo.constinfo !29
  %call43 = call i32 @funInt.13(float %div25, float %conv40), !taffo.initweight !7, !taffo.info !1, !taffo.originalCall !39, !taffo.constinfo !29
  %conv44 = sitofp i32 %call43 to float, !taffo.initweight !16, !taffo.info !1
  %conv45 = fpext float %conv44 to double, !taffo.initweight !7, !taffo.info !1
  %call46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv45), !taffo.initweight !16, !taffo.info !1, !taffo.constinfo !29
  %call47 = call i32 @funInt.12(float %conv44, float %div25), !taffo.initweight !7, !taffo.info !1, !taffo.originalCall !39, !taffo.constinfo !29
  %conv48 = sitofp i32 %call47 to float, !taffo.initweight !16, !taffo.info !1
  %conv49 = fpext float %conv48 to double, !taffo.initweight !7, !taffo.info !1
  %call50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv49), !taffo.initweight !16, !taffo.info !1, !taffo.constinfo !29
  %call51 = call i32 @funInt.3(float %conv48, float %conv48), !taffo.initweight !7, !taffo.info !1, !taffo.originalCall !39, !taffo.constinfo !29
  %conv52 = sitofp i32 %call51 to float, !taffo.initweight !16, !taffo.info !1
  %conv53 = fpext float %conv52 to double, !taffo.initweight !7, !taffo.info !1
  %call54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv53), !taffo.initweight !16, !taffo.info !1, !taffo.constinfo !29
  %conv55 = fpext float %div25 to double, !taffo.initweight !7, !taffo.info !1, !taffo.target !31
  %call56 = call double @sqrt(double %conv55) #4, !taffo.initweight !16, !taffo.info !1, !taffo.target !31, !taffo.constinfo !12
  %conv57 = fptrunc double %call56 to float, !taffo.initweight !20, !taffo.info !1, !taffo.target !31
  %conv58 = fpext float %conv57 to double, !taffo.initweight !7, !taffo.info !1
  %mul = fmul double %conv58, 9.990000e+00, !taffo.initweight !16, !taffo.info !1, !taffo.constinfo !40
  %call59 = call double @exp(double %mul) #4, !taffo.initweight !20, !taffo.info !1, !taffo.constinfo !12
  %conv60 = fptrunc double %call59 to float, !taffo.initweight !43, !taffo.info !1
  %call61 = call i32 @funInt.11(float %conv57, float %conv60), !taffo.initweight !7, !taffo.info !1, !taffo.originalCall !39, !taffo.constinfo !29
  %conv62 = sitofp i32 %call61 to float, !taffo.initweight !16, !taffo.info !1
  %conv63 = fpext float %conv62 to double, !taffo.initweight !7, !taffo.info !1, !taffo.target !31
  %call64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv63), !taffo.initweight !16, !taffo.info !1, !taffo.target !31, !taffo.constinfo !29
  %call65 = call i32 @funInt.10(float %conv62, float %conv57), !taffo.initweight !7, !taffo.info !1, !taffo.originalCall !39, !taffo.constinfo !29
  %conv66 = sitofp i32 %call65 to float, !taffo.initweight !16, !taffo.info !1
  %conv67 = fpext float %conv66 to double, !taffo.initweight !7, !taffo.info !1, !taffo.target !31
  %call68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv67), !taffo.initweight !16, !taffo.info !1, !taffo.target !31, !taffo.constinfo !29
  %call69 = call i32 @funInt.2(float %conv57, float %conv57), !taffo.initweight !7, !taffo.info !1, !taffo.originalCall !39, !taffo.constinfo !29
  %conv70 = sitofp i32 %call69 to float, !taffo.initweight !16, !taffo.info !1
  %conv71 = fpext float %conv70 to double, !taffo.initweight !7, !taffo.info !1, !taffo.target !31
  %call72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv71), !taffo.initweight !16, !taffo.info !1, !taffo.target !31, !taffo.constinfo !29
  %call73 = call i32 @funInt.9(float %conv70, float %conv70), !taffo.initweight !7, !taffo.info !1, !taffo.target !31, !taffo.originalCall !39, !taffo.constinfo !29
  %conv74 = sitofp i32 %call73 to float, !taffo.initweight !16, !taffo.info !1, !taffo.target !31
  %conv75 = fpext float %conv74 to double, !taffo.initweight !7, !taffo.info !1, !taffo.target !31
  %call76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv75), !taffo.initweight !16, !taffo.info !1, !taffo.target !31, !taffo.constinfo !29
  %call77 = call i32 @funInt.8(float %conv57, float %conv57), !taffo.initweight !7, !taffo.info !1, !taffo.target !31, !taffo.originalCall !39, !taffo.constinfo !29
  %call78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %call77), !taffo.constinfo !29
  %call79 = call i32 @funInt.7(float %conv57, float %conv57), !taffo.initweight !7, !taffo.info !1, !taffo.originalCall !39, !taffo.constinfo !29
  %call80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %call79), !taffo.constinfo !29
  %call81 = call i32 @funInt.1(float %conv57, float %conv57), !taffo.initweight !7, !taffo.info !1, !taffo.originalCall !39, !taffo.constinfo !29
  %call82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %call81), !taffo.constinfo !29
  %call83 = call i32 @funInt.6(float %conv57, float %conv57), !taffo.initweight !7, !taffo.info !1, !taffo.originalCall !39, !taffo.constinfo !29
  %call84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %call83), !taffo.constinfo !29
  %call85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0)), !taffo.constinfo !12
  ret i32 0
}

declare !taffo.initweight !44 !taffo.funinfo !45 dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare !taffo.initweight !44 !taffo.funinfo !45 dso_local double @sqrt(double) #3

; Function Attrs: nounwind
declare !taffo.initweight !44 !taffo.funinfo !45 dso_local double @exp(double) #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @funInt.1(float %x, float %y) #0 !taffo.initweight !46 !taffo.funinfo !47 !taffo.sourceFunction !39 {
entry:
  %mul = fmul float %x, %y, !taffo.initweight !7, !taffo.info !1
  %0 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %add = fadd float %mul, %0, !taffo.initweight !7, !taffo.info !1
  %conv = fptosi float %add to i32, !taffo.initweight !16, !taffo.info !1
  %1 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %conv3 = fpext float %1 to double, !taffo.initweight !7, !taffo.info !1
  %mul4 = fmul double %conv3, 1.098000e+00, !taffo.initweight !16, !taffo.info !1, !taffo.constinfo !17
  %conv5 = fptrunc double %mul4 to float, !taffo.initweight !20, !taffo.info !1
  store float %conv5, float* @global, align 4, !taffo.initweight !8, !taffo.info !1, !taffo.constinfo !12
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @funInt.2(float %x, float %y) #0 !taffo.initweight !46 !taffo.funinfo !47 !taffo.sourceFunction !39 {
entry:
  %mul = fmul float %x, %y, !taffo.initweight !7, !taffo.info !1
  %0 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %add = fadd float %mul, %0, !taffo.initweight !7, !taffo.info !1
  %conv = fptosi float %add to i32, !taffo.initweight !16, !taffo.info !1
  %1 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %conv3 = fpext float %1 to double, !taffo.initweight !7, !taffo.info !1
  %mul4 = fmul double %conv3, 1.098000e+00, !taffo.initweight !16, !taffo.info !1, !taffo.constinfo !17
  %conv5 = fptrunc double %mul4 to float, !taffo.initweight !20, !taffo.info !1
  store float %conv5, float* @global, align 4, !taffo.initweight !8, !taffo.info !1, !taffo.constinfo !12
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @funInt.3(float %x, float %y) #0 !taffo.initweight !46 !taffo.funinfo !47 !taffo.sourceFunction !39 {
entry:
  %mul = fmul float %x, %y, !taffo.initweight !7, !taffo.info !1
  %0 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %add = fadd float %mul, %0, !taffo.initweight !7, !taffo.info !1
  %conv = fptosi float %add to i32, !taffo.initweight !16, !taffo.info !1
  %1 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %conv3 = fpext float %1 to double, !taffo.initweight !7, !taffo.info !1
  %mul4 = fmul double %conv3, 1.098000e+00, !taffo.initweight !16, !taffo.info !1, !taffo.constinfo !17
  %conv5 = fptrunc double %mul4 to float, !taffo.initweight !20, !taffo.info !1
  store float %conv5, float* @global, align 4, !taffo.initweight !8, !taffo.info !1, !taffo.constinfo !12
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define internal float @fun.4(float %x, float %y) #0 !taffo.initweight !46 !taffo.funinfo !47 !taffo.sourceFunction !23 {
entry:
  %mul = fmul float %x, %y, !taffo.initweight !7, !taffo.info !1
  %0 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %add = fadd float %mul, %0, !taffo.initweight !7, !taffo.info !1
  %1 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %inc = fadd float %1, 1.000000e+00, !taffo.initweight !7, !taffo.info !1, !taffo.constinfo !9
  store float %inc, float* @global, align 4, !taffo.initweight !8, !taffo.info !1, !taffo.constinfo !12
  ret float %add
}

; Function Attrs: noinline nounwind uwtable
define internal float @fun.5(float %x, float %y) #0 !taffo.initweight !46 !taffo.funinfo !47 !taffo.sourceFunction !23 {
entry:
  %mul = fmul float %x, %y, !taffo.initweight !7, !taffo.info !1
  %0 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %add = fadd float %mul, %0, !taffo.initweight !7, !taffo.info !1
  %1 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %inc = fadd float %1, 1.000000e+00, !taffo.initweight !7, !taffo.info !1, !taffo.constinfo !9
  store float %inc, float* @global, align 4, !taffo.initweight !8, !taffo.info !1, !taffo.constinfo !12
  ret float %add
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @funInt.6(float %x, float %y) #0 !taffo.initweight !46 !taffo.funinfo !47 !taffo.sourceFunction !39 {
entry:
  %mul = fmul float %x, %y, !taffo.initweight !7, !taffo.info !1
  %0 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %add = fadd float %mul, %0, !taffo.initweight !7, !taffo.info !1
  %conv = fptosi float %add to i32, !taffo.initweight !16, !taffo.info !1
  %1 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %conv3 = fpext float %1 to double, !taffo.initweight !7, !taffo.info !1
  %mul4 = fmul double %conv3, 1.098000e+00, !taffo.initweight !16, !taffo.info !1, !taffo.constinfo !17
  %conv5 = fptrunc double %mul4 to float, !taffo.initweight !20, !taffo.info !1
  store float %conv5, float* @global, align 4, !taffo.initweight !8, !taffo.info !1, !taffo.constinfo !12
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @funInt.7(float %x, float %y) #0 !taffo.initweight !46 !taffo.funinfo !47 !taffo.sourceFunction !39 {
entry:
  %mul = fmul float %x, %y, !taffo.initweight !7, !taffo.info !1
  %0 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %add = fadd float %mul, %0, !taffo.initweight !7, !taffo.info !1
  %conv = fptosi float %add to i32, !taffo.initweight !16, !taffo.info !1
  %1 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %conv3 = fpext float %1 to double, !taffo.initweight !7, !taffo.info !1
  %mul4 = fmul double %conv3, 1.098000e+00, !taffo.initweight !16, !taffo.info !1, !taffo.constinfo !17
  %conv5 = fptrunc double %mul4 to float, !taffo.initweight !20, !taffo.info !1
  store float %conv5, float* @global, align 4, !taffo.initweight !8, !taffo.info !1, !taffo.constinfo !12
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @funInt.8(float %x, float %y) #0 !taffo.initweight !46 !taffo.funinfo !47 !taffo.sourceFunction !39 {
entry:
  %mul = fmul float %x, %y, !taffo.initweight !7, !taffo.info !1
  %0 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %add = fadd float %mul, %0, !taffo.initweight !7, !taffo.info !1
  %conv = fptosi float %add to i32, !taffo.initweight !16, !taffo.info !1
  %1 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %conv3 = fpext float %1 to double, !taffo.initweight !7, !taffo.info !1
  %mul4 = fmul double %conv3, 1.098000e+00, !taffo.initweight !16, !taffo.info !1, !taffo.constinfo !17
  %conv5 = fptrunc double %mul4 to float, !taffo.initweight !20, !taffo.info !1
  store float %conv5, float* @global, align 4, !taffo.initweight !8, !taffo.info !1, !taffo.constinfo !12
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @funInt.9(float %x, float %y) #0 !taffo.initweight !46 !taffo.funinfo !47 !taffo.sourceFunction !39 {
entry:
  %mul = fmul float %x, %y, !taffo.initweight !7, !taffo.info !1
  %0 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %add = fadd float %mul, %0, !taffo.initweight !7, !taffo.info !1
  %conv = fptosi float %add to i32, !taffo.initweight !16, !taffo.info !1
  %1 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %conv3 = fpext float %1 to double, !taffo.initweight !7, !taffo.info !1
  %mul4 = fmul double %conv3, 1.098000e+00, !taffo.initweight !16, !taffo.info !1, !taffo.constinfo !17
  %conv5 = fptrunc double %mul4 to float, !taffo.initweight !20, !taffo.info !1
  store float %conv5, float* @global, align 4, !taffo.initweight !8, !taffo.info !1, !taffo.constinfo !12
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @funInt.10(float %x, float %y) #0 !taffo.initweight !46 !taffo.funinfo !47 !taffo.sourceFunction !39 {
entry:
  %mul = fmul float %x, %y, !taffo.initweight !7, !taffo.info !1
  %0 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %add = fadd float %mul, %0, !taffo.initweight !7, !taffo.info !1
  %conv = fptosi float %add to i32, !taffo.initweight !16, !taffo.info !1
  %1 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %conv3 = fpext float %1 to double, !taffo.initweight !7, !taffo.info !1
  %mul4 = fmul double %conv3, 1.098000e+00, !taffo.initweight !16, !taffo.info !1, !taffo.constinfo !17
  %conv5 = fptrunc double %mul4 to float, !taffo.initweight !20, !taffo.info !1
  store float %conv5, float* @global, align 4, !taffo.initweight !8, !taffo.info !1, !taffo.constinfo !12
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @funInt.11(float %x, float %y) #0 !taffo.initweight !46 !taffo.funinfo !47 !taffo.sourceFunction !39 {
entry:
  %mul = fmul float %x, %y, !taffo.initweight !7, !taffo.info !1
  %0 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %add = fadd float %mul, %0, !taffo.initweight !7, !taffo.info !1
  %conv = fptosi float %add to i32, !taffo.initweight !16, !taffo.info !1
  %1 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %conv3 = fpext float %1 to double, !taffo.initweight !7, !taffo.info !1
  %mul4 = fmul double %conv3, 1.098000e+00, !taffo.initweight !16, !taffo.info !1, !taffo.constinfo !17
  %conv5 = fptrunc double %mul4 to float, !taffo.initweight !20, !taffo.info !1
  store float %conv5, float* @global, align 4, !taffo.initweight !8, !taffo.info !1, !taffo.constinfo !12
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @funInt.12(float %x, float %y) #0 !taffo.initweight !46 !taffo.funinfo !47 !taffo.sourceFunction !39 {
entry:
  %mul = fmul float %x, %y, !taffo.initweight !7, !taffo.info !1
  %0 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %add = fadd float %mul, %0, !taffo.initweight !7, !taffo.info !1
  %conv = fptosi float %add to i32, !taffo.initweight !16, !taffo.info !1
  %1 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %conv3 = fpext float %1 to double, !taffo.initweight !7, !taffo.info !1
  %mul4 = fmul double %conv3, 1.098000e+00, !taffo.initweight !16, !taffo.info !1, !taffo.constinfo !17
  %conv5 = fptrunc double %mul4 to float, !taffo.initweight !20, !taffo.info !1
  store float %conv5, float* @global, align 4, !taffo.initweight !8, !taffo.info !1, !taffo.constinfo !12
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @funInt.13(float %x, float %y) #0 !taffo.initweight !46 !taffo.funinfo !47 !taffo.sourceFunction !39 {
entry:
  %mul = fmul float %x, %y, !taffo.initweight !7, !taffo.info !1
  %0 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %add = fadd float %mul, %0, !taffo.initweight !7, !taffo.info !1
  %conv = fptosi float %add to i32, !taffo.initweight !16, !taffo.info !1
  %1 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %conv3 = fpext float %1 to double, !taffo.initweight !7, !taffo.info !1
  %mul4 = fmul double %conv3, 1.098000e+00, !taffo.initweight !16, !taffo.info !1, !taffo.constinfo !17
  %conv5 = fptrunc double %mul4 to float, !taffo.initweight !20, !taffo.info !1
  store float %conv5, float* @global, align 4, !taffo.initweight !8, !taffo.info !1, !taffo.constinfo !12
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @funInt.14(float %x, float %y) #0 !taffo.initweight !46 !taffo.funinfo !47 !taffo.sourceFunction !39 {
entry:
  %mul = fmul float %x, %y, !taffo.initweight !7, !taffo.info !1
  %0 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %add = fadd float %mul, %0, !taffo.initweight !7, !taffo.info !1
  %conv = fptosi float %add to i32, !taffo.initweight !16, !taffo.info !1
  %1 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %conv3 = fpext float %1 to double, !taffo.initweight !7, !taffo.info !1
  %mul4 = fmul double %conv3, 1.098000e+00, !taffo.initweight !16, !taffo.info !1, !taffo.constinfo !17
  %conv5 = fptrunc double %mul4 to float, !taffo.initweight !20, !taffo.info !1
  store float %conv5, float* @global, align 4, !taffo.initweight !8, !taffo.info !1, !taffo.constinfo !12
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define internal float @fun.15(float %x, float %y) #0 !taffo.initweight !46 !taffo.funinfo !47 !taffo.sourceFunction !23 {
entry:
  %mul = fmul float %x, %y, !taffo.initweight !7, !taffo.info !1
  %0 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %add = fadd float %mul, %0, !taffo.initweight !7, !taffo.info !1
  %1 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %inc = fadd float %1, 1.000000e+00, !taffo.initweight !7, !taffo.info !1, !taffo.constinfo !9
  store float %inc, float* @global, align 4, !taffo.initweight !8, !taffo.info !1, !taffo.constinfo !12
  ret float %add
}

; Function Attrs: noinline nounwind uwtable
define internal float @fun.16(float %x, float %y) #0 !taffo.initweight !46 !taffo.funinfo !47 !taffo.sourceFunction !23 {
entry:
  %mul = fmul float %x, %y, !taffo.initweight !7, !taffo.info !1
  %0 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %add = fadd float %mul, %0, !taffo.initweight !7, !taffo.info !1
  %1 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %inc = fadd float %1, 1.000000e+00, !taffo.initweight !7, !taffo.info !1, !taffo.constinfo !9
  store float %inc, float* @global, align 4, !taffo.initweight !8, !taffo.info !1, !taffo.constinfo !12
  ret float %add
}

; Function Attrs: noinline nounwind uwtable
define internal float @fun.17(float %x, float %y) #0 !taffo.initweight !46 !taffo.funinfo !47 !taffo.sourceFunction !23 {
entry:
  %mul = fmul float %x, %y, !taffo.initweight !7, !taffo.info !1
  %0 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %add = fadd float %mul, %0, !taffo.initweight !7, !taffo.info !1
  %1 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %inc = fadd float %1, 1.000000e+00, !taffo.initweight !7, !taffo.info !1, !taffo.constinfo !9
  store float %inc, float* @global, align 4, !taffo.initweight !8, !taffo.info !1, !taffo.constinfo !12
  ret float %add
}

; Function Attrs: noinline nounwind uwtable
define internal float @fun.18(float %x, float %y) #0 !taffo.initweight !46 !taffo.funinfo !47 !taffo.sourceFunction !23 {
entry:
  %mul = fmul float %x, %y, !taffo.initweight !7, !taffo.info !1
  %0 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %add = fadd float %mul, %0, !taffo.initweight !7, !taffo.info !1
  %1 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %inc = fadd float %1, 1.000000e+00, !taffo.initweight !7, !taffo.info !1, !taffo.constinfo !9
  store float %inc, float* @global, align 4, !taffo.initweight !8, !taffo.info !1, !taffo.constinfo !12
  ret float %add
}

; Function Attrs: noinline nounwind uwtable
define internal float @fun.19(float %x, float %y) #0 !taffo.initweight !46 !taffo.funinfo !47 !taffo.sourceFunction !23 {
entry:
  %mul = fmul float %x, %y, !taffo.initweight !7, !taffo.info !1
  %0 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %add = fadd float %mul, %0, !taffo.initweight !7, !taffo.info !1
  %1 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %inc = fadd float %1, 1.000000e+00, !taffo.initweight !7, !taffo.info !1, !taffo.constinfo !9
  store float %inc, float* @global, align 4, !taffo.initweight !8, !taffo.info !1, !taffo.constinfo !12
  ret float %add
}

; Function Attrs: noinline nounwind uwtable
define internal float @fun.20(float %x, float %y) #0 !taffo.initweight !46 !taffo.funinfo !47 !taffo.sourceFunction !23 {
entry:
  %mul = fmul float %x, %y, !taffo.initweight !7, !taffo.info !1
  %0 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %add = fadd float %mul, %0, !taffo.initweight !7, !taffo.info !1
  %1 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %inc = fadd float %1, 1.000000e+00, !taffo.initweight !7, !taffo.info !1, !taffo.constinfo !9
  store float %inc, float* @global, align 4, !taffo.initweight !8, !taffo.info !1, !taffo.constinfo !12
  ret float %add
}

; Function Attrs: noinline nounwind uwtable
define internal float @fun.21(float %x, float %y) #0 !taffo.initweight !46 !taffo.funinfo !48 !taffo.sourceFunction !23 {
entry:
  %mul = fmul float %x, %y, !taffo.initweight !7, !taffo.info !50
  %0 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %add = fadd float %mul, %0, !taffo.initweight !7, !taffo.info !1
  %1 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %inc = fadd float %1, 1.000000e+00, !taffo.initweight !7, !taffo.info !1, !taffo.constinfo !9
  store float %inc, float* @global, align 4, !taffo.initweight !8, !taffo.info !1, !taffo.constinfo !12
  ret float %add
}

; Function Attrs: noinline nounwind uwtable
define internal float @fun.22(float %x, float %y) #0 !taffo.initweight !46 !taffo.funinfo !48 !taffo.sourceFunction !23 {
entry:
  %mul = fmul float %x, %y, !taffo.initweight !7, !taffo.info !50
  %0 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %add = fadd float %mul, %0, !taffo.initweight !7, !taffo.info !1
  %1 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %inc = fadd float %1, 1.000000e+00, !taffo.initweight !7, !taffo.info !1, !taffo.constinfo !9
  store float %inc, float* @global, align 4, !taffo.initweight !8, !taffo.info !1, !taffo.constinfo !12
  ret float %add
}

; Function Attrs: noinline nounwind uwtable
define internal float @fun.23(float %x, float %y) #0 !taffo.initweight !46 !taffo.funinfo !52 !taffo.sourceFunction !23 {
entry:
  %mul = fmul float %x, %y, !taffo.initweight !7, !taffo.info !1
  %0 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %add = fadd float %mul, %0, !taffo.initweight !7, !taffo.info !1
  %1 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %inc = fadd float %1, 1.000000e+00, !taffo.initweight !7, !taffo.info !1, !taffo.constinfo !9
  store float %inc, float* @global, align 4, !taffo.initweight !8, !taffo.info !1, !taffo.constinfo !12
  ret float %add
}

; Function Attrs: noinline nounwind uwtable
define internal float @fun.24(float %x, float %y) #0 !taffo.initweight !46 !taffo.funinfo !53 !taffo.sourceFunction !23 {
entry:
  %mul = fmul float %x, %y, !taffo.initweight !7, !taffo.info !55
  %0 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %add = fadd float %mul, %0, !taffo.initweight !7, !taffo.info !1
  %1 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %inc = fadd float %1, 1.000000e+00, !taffo.initweight !7, !taffo.info !1, !taffo.constinfo !9
  store float %inc, float* @global, align 4, !taffo.initweight !8, !taffo.info !1, !taffo.constinfo !12
  ret float %add
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
!7 = !{i32 2}
!8 = !{i32 1}
!9 = !{i1 false, !10}
!10 = !{i1 false, !11, i1 false, i2 0}
!11 = !{double 1.000000e+00, double 1.000000e+00}
!12 = !{i1 false, i1 false}
!13 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!14 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!15 = !{i32 (float, float)* @funInt.1, i32 (float, float)* @funInt.2, i32 (float, float)* @funInt.3, i32 (float, float)* @funInt.6, i32 (float, float)* @funInt.7, i32 (float, float)* @funInt.8, i32 (float, float)* @funInt.9, i32 (float, float)* @funInt.10, i32 (float, float)* @funInt.11, i32 (float, float)* @funInt.12, i32 (float, float)* @funInt.13, i32 (float, float)* @funInt.14}
!16 = !{i32 3}
!17 = !{i1 false, !18}
!18 = !{i1 false, !19, i1 false, i2 0}
!19 = !{double 1.098000e+00, double 1.098000e+00}
!20 = !{i32 4}
!21 = !{}
!22 = !{i1 true}
!23 = !{float (float, float)* @fun}
!24 = !{!25, !27, i1 false}
!25 = !{i1 false, !26, i1 false, i2 0}
!26 = !{double 0x4024346DC0000000, double 0x4024346DC0000000}
!27 = !{i1 false, !28, i1 false, i2 0}
!28 = !{double 0x402468E8A0000000, double 0x402468E8A0000000}
!29 = !{i1 false, i1 false, i1 false}
!30 = !{i1 false, !25, i1 false}
!31 = !{!"b"}
!32 = !{!25, !25, i1 false}
!33 = !{i1 false, !34}
!34 = !{i1 false, !35, i1 false, i2 0}
!35 = !{double 4.000000e+03, double 4.000000e+03}
!36 = !{i1 false, !37}
!37 = !{i1 false, !38, i1 false, i2 0}
!38 = !{double 4.096000e+03, double 4.096000e+03}
!39 = !{i32 (float, float)* @funInt}
!40 = !{i1 false, !41}
!41 = !{i1 false, !42, i1 false, i2 0}
!42 = !{double 9.990000e+00, double 9.990000e+00}
!43 = !{i32 5}
!44 = !{i32 -1}
!45 = !{i32 0, i1 false}
!46 = !{i32 2, i32 2}
!47 = !{i32 1, !1, i32 1, !1}
!48 = !{i32 1, !49, i32 1, !49}
!49 = !{i1 false, !26, i1 false, i2 1}
!50 = !{i1 false, !51, i1 false, i2 1}
!51 = !{double 0x405983BE2C50D100, double 0x405983BE2C50D100}
!52 = !{i32 1, !1, i32 1, !49}
!53 = !{i32 1, !49, i32 1, !54}
!54 = !{i1 false, !28, i1 false, i2 1}
!55 = !{i1 false, !56, i1 false, i2 1}
!56 = !{double 0x4059C603BBA3A980, double 0x4059C603BBA3A980}
