; ModuleID = './function.out.3.taffotmp.ll'
source_filename = "./function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@global = dso_local global float 0x4040AA9FC0000000, align 4, !taffo.initweight !0, !taffo.info !1
@.str = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [13 x i8] c"./function.c\00", section "llvm.metadata"
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

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @funInt(float %x, float %y) #0 !taffo.initweight !4 !taffo.equivalentChild !13 !taffo.funinfo !6 {
entry:
  %mul = fmul float %x, %y, !taffo.initweight !7, !taffo.info !1
  %0 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %add = fadd float %mul, %0, !taffo.initweight !7, !taffo.info !1
  %conv = fptosi float %add to i32, !taffo.initweight !14, !taffo.info !1
  %1 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %conv3 = fpext float %1 to double, !taffo.initweight !7, !taffo.info !1
  %mul4 = fmul double %conv3, 1.098000e+00, !taffo.initweight !14, !taffo.info !1, !taffo.constinfo !15
  %conv5 = fptrunc double %mul4 to float, !taffo.initweight !18, !taffo.info !1
  store float %conv5, float* @global, align 4, !taffo.initweight !8, !taffo.info !1, !taffo.constinfo !12
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !19 !taffo.funinfo !19 !taffo.start !20 {
entry:
  %call = call float @fun.21(float 0x4024346DC0000000, float 0x402468E8A0000000), !taffo.initweight !7, !taffo.info !1, !taffo.constinfo !21, !taffo.originalCall !26
  %conv = fpext float %call to double, !taffo.initweight !7, !taffo.info !1
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv), !taffo.initweight !14, !taffo.info !1, !taffo.constinfo !27
  %call4 = call float @fun.23(float %call, float 0x4024346DC0000000), !taffo.initweight !7, !taffo.info !1, !taffo.constinfo !28, !taffo.originalCall !26
  %conv5 = fpext float %call4 to double, !taffo.initweight !7, !taffo.info !1
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv5), !taffo.initweight !14, !taffo.info !1, !taffo.constinfo !27
  %call7 = call float @fun.21(float 0x4024346DC0000000, float 0x4024346DC0000000), !taffo.initweight !7, !taffo.info !1, !taffo.constinfo !29, !taffo.originalCall !26, !taffo.target !30
  %conv8 = fpext float %call7 to double, !taffo.initweight !7, !taffo.info !1
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv8), !taffo.initweight !14, !taffo.info !1, !taffo.constinfo !27
  %call10 = call float @fun.4(float %call7, float %call7), !taffo.initweight !7, !taffo.info !1, !taffo.constinfo !27, !taffo.originalCall !26
  %conv11 = fpext float %call10 to double, !taffo.initweight !7, !taffo.info !1
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv11), !taffo.initweight !14, !taffo.info !1, !taffo.constinfo !27
  %div = fdiv float %call10, 4.000000e+03, !taffo.initweight !7, !taffo.info !1, !taffo.constinfo !31
  %call13 = call float @fun.21(float 0x4024346DC0000000, float 0x4024346DC0000000), !taffo.initweight !7, !taffo.info !1, !taffo.constinfo !29, !taffo.originalCall !26, !taffo.target !30
  %conv14 = fpext float %call13 to double, !taffo.initweight !7, !taffo.info !1, !taffo.target !30
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv14), !taffo.initweight !14, !taffo.info !1, !taffo.constinfo !27, !taffo.target !30
  %call16 = call float @fun.4(float %div, float %call13), !taffo.initweight !7, !taffo.info !1, !taffo.constinfo !27, !taffo.originalCall !26
  %conv17 = fpext float %call16 to double, !taffo.initweight !7, !taffo.info !1, !taffo.target !30
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv17), !taffo.initweight !14, !taffo.info !1, !taffo.constinfo !27, !taffo.target !30
  %call19 = call float @fun.4(float %call16, float %div), !taffo.initweight !7, !taffo.info !1, !taffo.constinfo !27, !taffo.originalCall !26
  %conv20 = fpext float %call19 to double, !taffo.initweight !7, !taffo.info !1, !taffo.target !30
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv20), !taffo.initweight !14, !taffo.info !1, !taffo.constinfo !27, !taffo.target !30
  %call22 = call float @fun.4(float %div, float %div), !taffo.initweight !7, !taffo.info !1, !taffo.constinfo !27, !taffo.originalCall !26
  %conv23 = fpext float %call22 to double, !taffo.initweight !7, !taffo.info !1, !taffo.target !30
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv23), !taffo.initweight !14, !taffo.info !1, !taffo.constinfo !27, !taffo.target !30
  %div25 = fdiv float %div, 4.096000e+03, !taffo.initweight !7, !taffo.info !1, !taffo.constinfo !34
  %call26 = call float @fun.4(float %div25, float %div25), !taffo.initweight !7, !taffo.info !1, !taffo.constinfo !27, !taffo.originalCall !26, !taffo.target !30
  %conv27 = fptosi float %call26 to i32, !taffo.initweight !14, !taffo.info !1, !taffo.target !30
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %conv27), !taffo.constinfo !27
  %call29 = call float @fun.4(float %div25, float %div25), !taffo.initweight !7, !taffo.info !1, !taffo.constinfo !27, !taffo.originalCall !26, !taffo.target !30
  %conv30 = fptosi float %call29 to i32, !taffo.initweight !14, !taffo.info !1, !taffo.target !30
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %conv30), !taffo.constinfo !27
  %call32 = call float @fun.4(float %div25, float %div), !taffo.initweight !7, !taffo.info !1, !taffo.constinfo !27, !taffo.originalCall !26
  %conv33 = fptosi float %call32 to i32, !taffo.initweight !14, !taffo.info !1
  %call34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %conv33), !taffo.constinfo !27
  %call35 = call float @fun.4(float %div, float %div25), !taffo.initweight !7, !taffo.info !1, !taffo.constinfo !27, !taffo.originalCall !26
  %conv36 = fptosi float %call35 to i32, !taffo.initweight !14, !taffo.info !1
  %call37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %conv36), !taffo.constinfo !27
  %call38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0)), !taffo.constinfo !12
  %call39 = call i32 @funInt.1(float %div25, float %div25), !taffo.initweight !7, !taffo.info !1, !taffo.constinfo !27, !taffo.originalCall !37, !taffo.target !30
  %conv40 = sitofp i32 %call39 to float, !taffo.initweight !14, !taffo.info !1, !taffo.target !30
  %conv41 = fpext float %conv40 to double, !taffo.initweight !7, !taffo.info !1
  %call42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv41), !taffo.initweight !14, !taffo.info !1, !taffo.constinfo !27
  %call43 = call i32 @funInt.1(float %div25, float %conv40), !taffo.initweight !7, !taffo.info !1, !taffo.constinfo !27, !taffo.originalCall !37
  %conv44 = sitofp i32 %call43 to float, !taffo.initweight !14, !taffo.info !1
  %conv45 = fpext float %conv44 to double, !taffo.initweight !7, !taffo.info !1
  %call46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv45), !taffo.initweight !14, !taffo.info !1, !taffo.constinfo !27
  %call47 = call i32 @funInt.1(float %conv44, float %div25), !taffo.initweight !7, !taffo.info !1, !taffo.constinfo !27, !taffo.originalCall !37
  %conv48 = sitofp i32 %call47 to float, !taffo.initweight !14, !taffo.info !1
  %conv49 = fpext float %conv48 to double, !taffo.initweight !7, !taffo.info !1
  %call50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv49), !taffo.initweight !14, !taffo.info !1, !taffo.constinfo !27
  %call51 = call i32 @funInt.1(float %conv48, float %conv48), !taffo.initweight !7, !taffo.info !1, !taffo.constinfo !27, !taffo.originalCall !37
  %conv52 = sitofp i32 %call51 to float, !taffo.initweight !14, !taffo.info !1
  %conv53 = fpext float %conv52 to double, !taffo.initweight !7, !taffo.info !1
  %call54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv53), !taffo.initweight !14, !taffo.info !1, !taffo.constinfo !27
  %conv55 = fpext float %div25 to double, !taffo.initweight !7, !taffo.info !1, !taffo.target !30
  %call56 = call double @sqrt(double %conv55) #3, !taffo.initweight !14, !taffo.info !1, !taffo.constinfo !12, !taffo.target !30
  %conv57 = fptrunc double %call56 to float, !taffo.initweight !18, !taffo.info !1, !taffo.target !30
  %conv58 = fpext float %conv57 to double, !taffo.initweight !7, !taffo.info !1
  %mul = fmul double %conv58, 9.990000e+00, !taffo.initweight !14, !taffo.info !1, !taffo.constinfo !38
  %call59 = call double @exp(double %mul) #3, !taffo.initweight !18, !taffo.info !1, !taffo.constinfo !12
  %conv60 = fptrunc double %call59 to float, !taffo.initweight !41, !taffo.info !1
  %call61 = call i32 @funInt.1(float %conv57, float %conv60), !taffo.initweight !7, !taffo.info !1, !taffo.constinfo !27, !taffo.originalCall !37
  %conv62 = sitofp i32 %call61 to float, !taffo.initweight !14, !taffo.info !1
  %conv63 = fpext float %conv62 to double, !taffo.initweight !7, !taffo.info !1, !taffo.target !30
  %call64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv63), !taffo.initweight !14, !taffo.info !1, !taffo.constinfo !27, !taffo.target !30
  %call65 = call i32 @funInt.1(float %conv62, float %conv57), !taffo.initweight !7, !taffo.info !1, !taffo.constinfo !27, !taffo.originalCall !37
  %conv66 = sitofp i32 %call65 to float, !taffo.initweight !14, !taffo.info !1
  %conv67 = fpext float %conv66 to double, !taffo.initweight !7, !taffo.info !1, !taffo.target !30
  %call68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv67), !taffo.initweight !14, !taffo.info !1, !taffo.constinfo !27, !taffo.target !30
  %call69 = call i32 @funInt.1(float %conv57, float %conv57), !taffo.initweight !7, !taffo.info !1, !taffo.constinfo !27, !taffo.originalCall !37
  %conv70 = sitofp i32 %call69 to float, !taffo.initweight !14, !taffo.info !1
  %conv71 = fpext float %conv70 to double, !taffo.initweight !7, !taffo.info !1, !taffo.target !30
  %call72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv71), !taffo.initweight !14, !taffo.info !1, !taffo.constinfo !27, !taffo.target !30
  %call73 = call i32 @funInt.1(float %conv70, float %conv70), !taffo.initweight !7, !taffo.info !1, !taffo.constinfo !27, !taffo.originalCall !37, !taffo.target !30
  %conv74 = sitofp i32 %call73 to float, !taffo.initweight !14, !taffo.info !1, !taffo.target !30
  %conv75 = fpext float %conv74 to double, !taffo.initweight !7, !taffo.info !1, !taffo.target !30
  %call76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv75), !taffo.initweight !14, !taffo.info !1, !taffo.constinfo !27, !taffo.target !30
  %call77 = call i32 @funInt.1(float %conv57, float %conv57), !taffo.initweight !7, !taffo.info !1, !taffo.constinfo !27, !taffo.originalCall !37, !taffo.target !30
  %call78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %call77), !taffo.constinfo !27
  %call79 = call i32 @funInt.1(float %conv57, float %conv57), !taffo.initweight !7, !taffo.info !1, !taffo.constinfo !27, !taffo.originalCall !37
  %call80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %call79), !taffo.constinfo !27
  %call81 = call i32 @funInt.1(float %conv57, float %conv57), !taffo.initweight !7, !taffo.info !1, !taffo.constinfo !27, !taffo.originalCall !37
  %call82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %call81), !taffo.constinfo !27
  %call83 = call i32 @funInt.1(float %conv57, float %conv57), !taffo.initweight !7, !taffo.info !1, !taffo.constinfo !27, !taffo.originalCall !37
  %call84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %call83), !taffo.constinfo !27
  %call85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0)), !taffo.constinfo !12
  ret i32 0
}

declare !taffo.initweight !42 !taffo.funinfo !43 dso_local i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare !taffo.initweight !42 !taffo.funinfo !43 dso_local double @sqrt(double) #2

; Function Attrs: nounwind
declare !taffo.initweight !42 !taffo.funinfo !43 dso_local double @exp(double) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @funInt.1(float %x, float %y) #0 !taffo.initweight !44 !taffo.funinfo !45 !taffo.sourceFunction !37 {
entry:
  %mul = fmul float %x, %y, !taffo.initweight !7, !taffo.info !1
  %0 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %add = fadd float %mul, %0, !taffo.initweight !7, !taffo.info !1
  %conv = fptosi float %add to i32, !taffo.initweight !14, !taffo.info !1
  %1 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %conv3 = fpext float %1 to double, !taffo.initweight !7, !taffo.info !1
  %mul4 = fmul double %conv3, 1.098000e+00, !taffo.initweight !14, !taffo.info !1, !taffo.constinfo !15
  %conv5 = fptrunc double %mul4 to float, !taffo.initweight !18, !taffo.info !1
  store float %conv5, float* @global, align 4, !taffo.initweight !8, !taffo.info !1, !taffo.constinfo !12
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define internal float @fun.4(float %x, float %y) #0 !taffo.initweight !44 !taffo.funinfo !45 !taffo.sourceFunction !26 {
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
define internal float @fun.21(float %x, float %y) #0 !taffo.initweight !44 !taffo.funinfo !46 !taffo.sourceFunction !26 {
entry:
  %mul = fmul float %x, %y, !taffo.initweight !7, !taffo.info !49
  %0 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %add = fadd float %mul, %0, !taffo.initweight !7, !taffo.info !52
  %1 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %inc = fadd float %1, 1.000000e+00, !taffo.initweight !7, !taffo.info !1, !taffo.constinfo !9
  store float %inc, float* @global, align 4, !taffo.initweight !8, !taffo.info !1, !taffo.constinfo !12
  ret float %add
}

; Function Attrs: noinline nounwind uwtable
define internal float @fun.23(float %x, float %y) #0 !taffo.initweight !44 !taffo.funinfo !53 !taffo.sourceFunction !26 {
entry:
  %mul = fmul float %x, %y, !taffo.initweight !7, !taffo.info !54
  %0 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %add = fadd float %mul, %0, !taffo.initweight !7, !taffo.info !54
  %1 = load float, float* @global, align 4, !taffo.initweight !8, !taffo.info !1
  %inc = fadd float %1, 1.000000e+00, !taffo.initweight !7, !taffo.info !1, !taffo.constinfo !9
  store float %inc, float* @global, align 4, !taffo.initweight !8, !taffo.info !1, !taffo.constinfo !12
  ret float %add
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 0}
!1 = !{i1 false, i1 false, i1 false, i2 1}
!2 = !{i32 1, !"wchar_size", i32 4}
!3 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!4 = !{i32 -1, i32 -1}
!5 = !{float (float, float)* @fun.4, float (float, float)* @fun.4, float (float, float)* @fun.4, float (float, float)* @fun.4, float (float, float)* @fun.4, float (float, float)* @fun.4, float (float, float)* @fun.4, float (float, float)* @fun.4, float (float, float)* @fun.21, float (float, float)* @fun.21, float (float, float)* @fun.23, float (float, float)* @fun.21}
!6 = !{i32 0, i1 false, i32 0, i1 false}
!7 = !{i32 2}
!8 = !{i32 1}
!9 = !{i1 false, !10}
!10 = !{i1 false, !11, i1 false, i2 0}
!11 = !{double 1.000000e+00, double 1.000000e+00}
!12 = !{i1 false, i1 false}
!13 = !{i32 (float, float)* @funInt.1, i32 (float, float)* @funInt.1, i32 (float, float)* @funInt.1, i32 (float, float)* @funInt.1, i32 (float, float)* @funInt.1, i32 (float, float)* @funInt.1, i32 (float, float)* @funInt.1, i32 (float, float)* @funInt.1, i32 (float, float)* @funInt.1, i32 (float, float)* @funInt.1, i32 (float, float)* @funInt.1, i32 (float, float)* @funInt.1}
!14 = !{i32 3}
!15 = !{i1 false, !16}
!16 = !{i1 false, !17, i1 false, i2 0}
!17 = !{double 1.098000e+00, double 1.098000e+00}
!18 = !{i32 4}
!19 = !{}
!20 = !{i1 true}
!21 = !{!22, !24, i1 false}
!22 = !{i1 false, !23, i1 false, i2 0}
!23 = !{double 0x4024346DC0000000, double 0x4024346DC0000000}
!24 = !{i1 false, !25, i1 false, i2 0}
!25 = !{double 0x402468E8A0000000, double 0x402468E8A0000000}
!26 = !{float (float, float)* @fun}
!27 = !{i1 false, i1 false, i1 false}
!28 = !{i1 false, !22, i1 false}
!29 = !{!22, !22, i1 false}
!30 = !{!"b"}
!31 = !{i1 false, !32}
!32 = !{i1 false, !33, i1 false, i2 0}
!33 = !{double 4.000000e+03, double 4.000000e+03}
!34 = !{i1 false, !35}
!35 = !{i1 false, !36, i1 false, i2 0}
!36 = !{double 4.096000e+03, double 4.096000e+03}
!37 = !{i32 (float, float)* @funInt}
!38 = !{i1 false, !39}
!39 = !{i1 false, !40, i1 false, i2 0}
!40 = !{double 9.990000e+00, double 9.990000e+00}
!41 = !{i32 5}
!42 = !{i32 -1}
!43 = !{i32 0, i1 false}
!44 = !{i32 2, i32 2}
!45 = !{i32 1, !1, i32 1, !1}
!46 = !{i32 1, !47, i32 1, !47}
!47 = !{!48, !23, i1 false, i2 1}
!48 = !{!"fixp", i32 32, i32 28}
!49 = !{!50, !51, i1 false, i2 1}
!50 = !{!"fixp", i32 32, i32 25}
!51 = !{double 0x405983BE2C50D100, double 0x405983BE2C50D100}
!52 = !{!50, i1 false, i1 false, i2 1}
!53 = !{i32 1, !1, i32 1, !47}
!54 = !{!48, i1 false, i1 false, i2 1}
