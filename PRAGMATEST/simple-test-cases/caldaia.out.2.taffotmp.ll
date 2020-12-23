; ModuleID = './caldaia.out.1.taffotmp.ll'
source_filename = "./caldaia.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [12 x i8] c"./caldaia.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [42 x i8] c"scalar(range(-3000, 3000) disabled final)\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Media picchi: \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"Media totale: \00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !taffo.initweight !2 !taffo.funinfo !3 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %p1 = alloca float, align 4, !taffo.initweight !4, !taffo.info !5
  %p2 = alloca float, align 4, !taffo.initweight !4, !taffo.info !5
  %p3 = alloca float, align 4, !taffo.initweight !4, !taffo.info !6
  %sPeak = alloca float, align 4, !taffo.initweight !4, !taffo.info !5
  %sAll = alloca float, align 4, !taffo.initweight !4, !taffo.info !5
  %cPeak = alloca i32, align 4
  %cAll = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %p11 = bitcast float* %p1 to i8*, !taffo.initweight !8, !taffo.info !5
  %p22 = bitcast float* %p2 to i8*, !taffo.initweight !8, !taffo.info !5
  %p33 = bitcast float* %p3 to i8*, !taffo.initweight !8, !taffo.info !6
  %sPeak4 = bitcast float* %sPeak to i8*, !taffo.initweight !8, !taffo.info !5
  %sAll5 = bitcast float* %sAll to i8*, !taffo.initweight !8, !taffo.info !5
  store float -1.000000e+00, float* %p1, align 4, !taffo.initweight !8, !taffo.info !5
  store float -1.000000e+00, float* %p2, align 4, !taffo.initweight !8, !taffo.info !5
  store float -1.000000e+00, float* %p3, align 4, !taffo.initweight !8, !taffo.info !6
  store float 0.000000e+00, float* %sAll, align 4, !taffo.initweight !8, !taffo.info !5
  store float 0.000000e+00, float* %sPeak, align 4, !taffo.initweight !8, !taffo.info !5
  store i32 0, i32* %cAll, align 4
  store i32 0, i32* %cPeak, align 4
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), float* %p3), !taffo.initweight !8, !taffo.info !6
  br label %while.cond

while.cond:                                       ; preds = %if.end14, %entry
  %0 = load float, float* %p3, align 4, !taffo.initweight !8, !taffo.info !6
  %cmp = fcmp ogt float %0, 0.000000e+00, !taffo.initweight !9, !taffo.info !6
  br i1 %cmp, label %while.body, label %while.end, !taffo.initweight !10, !taffo.info !6

while.body:                                       ; preds = %while.cond
  %1 = load float, float* %p3, align 4, !taffo.initweight !8, !taffo.info !6
  %cmp6 = fcmp ogt float %1, 0.000000e+00, !taffo.initweight !9, !taffo.info !6
  br i1 %cmp6, label %land.lhs.true, label %if.end14, !taffo.initweight !10, !taffo.info !6

land.lhs.true:                                    ; preds = %while.body
  %2 = load float, float* %p2, align 4, !taffo.initweight !8, !taffo.info !5
  %cmp7 = fcmp ogt float %2, 0.000000e+00, !taffo.initweight !9, !taffo.info !5
  br i1 %cmp7, label %land.lhs.true8, label %if.end14, !taffo.initweight !10, !taffo.info !5

land.lhs.true8:                                   ; preds = %land.lhs.true
  %3 = load float, float* %p1, align 4, !taffo.initweight !8, !taffo.info !5
  %cmp9 = fcmp ogt float %3, 0.000000e+00, !taffo.initweight !9, !taffo.info !5
  br i1 %cmp9, label %if.then, label %if.end14, !taffo.initweight !10, !taffo.info !5

if.then:                                          ; preds = %land.lhs.true8
  %4 = load float, float* %p3, align 4, !taffo.initweight !8, !taffo.info !6
  %5 = load float, float* %p2, align 4, !taffo.initweight !8, !taffo.info !5
  %cmp10 = fcmp olt float %4, %5, !taffo.initweight !9, !taffo.info !5
  br i1 %cmp10, label %land.lhs.true11, label %if.end, !taffo.initweight !10, !taffo.info !5

land.lhs.true11:                                  ; preds = %if.then
  %6 = load float, float* %p1, align 4, !taffo.initweight !8, !taffo.info !5
  %7 = load float, float* %p2, align 4, !taffo.initweight !8, !taffo.info !5
  %cmp12 = fcmp olt float %6, %7, !taffo.initweight !9, !taffo.info !5
  br i1 %cmp12, label %if.then13, label %if.end, !taffo.initweight !10, !taffo.info !5

if.then13:                                        ; preds = %land.lhs.true11
  %8 = load float, float* %p2, align 4, !taffo.initweight !8, !taffo.info !5
  %9 = load float, float* %sPeak, align 4, !taffo.initweight !8, !taffo.info !5
  %add = fadd float %9, %8, !taffo.initweight !9, !taffo.info !5
  store float %add, float* %sPeak, align 4, !taffo.initweight !8, !taffo.info !5
  %10 = load i32, i32* %cPeak, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %cPeak, align 4
  br label %if.end

if.end:                                           ; preds = %if.then13, %land.lhs.true11, %if.then
  br label %if.end14

if.end14:                                         ; preds = %if.end, %land.lhs.true8, %land.lhs.true, %while.body
  %11 = load float, float* %p3, align 4, !taffo.initweight !8, !taffo.info !6
  %12 = load float, float* %sAll, align 4, !taffo.initweight !8, !taffo.info !5
  %add15 = fadd float %12, %11, !taffo.initweight !9, !taffo.info !11
  store float %add15, float* %sAll, align 4, !taffo.initweight !8, !taffo.info !5
  %13 = load i32, i32* %cAll, align 4
  %inc16 = add nsw i32 %13, 1
  store i32 %inc16, i32* %cAll, align 4
  %14 = load float, float* %p2, align 4, !taffo.initweight !8, !taffo.info !5
  store float %14, float* %p1, align 4, !taffo.initweight !8, !taffo.info !5
  %15 = load float, float* %p3, align 4, !taffo.initweight !8, !taffo.info !6
  store float %15, float* %p2, align 4, !taffo.initweight !8, !taffo.info !5
  %call17 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), float* %p3), !taffo.initweight !8, !taffo.info !6
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %16 = load i32, i32* %cPeak, align 4
  %cmp19 = icmp sgt i32 %16, 0
  br i1 %cmp19, label %if.then20, label %if.else

if.then20:                                        ; preds = %while.end
  %17 = load float, float* %sPeak, align 4, !taffo.initweight !8, !taffo.info !5
  %18 = load i32, i32* %cPeak, align 4
  %conv = sitofp i32 %18 to float
  %div = fdiv float %17, %conv, !taffo.initweight !9, !taffo.info !5
  %conv21 = fpext float %div to double, !taffo.initweight !10, !taffo.info !5
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), double %conv21), !taffo.initweight !12, !taffo.info !5
  br label %if.end24

if.else:                                          ; preds = %while.end
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then20
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %19 = load i32, i32* %cAll, align 4
  %cmp26 = icmp sgt i32 %19, 0
  br i1 %cmp26, label %if.then28, label %if.else33

if.then28:                                        ; preds = %if.end24
  %20 = load float, float* %sAll, align 4, !taffo.initweight !8, !taffo.info !5
  %21 = load i32, i32* %cAll, align 4
  %conv29 = sitofp i32 %21 to float
  %div30 = fdiv float %20, %conv29, !taffo.initweight !9, !taffo.info !5
  %conv31 = fpext float %div30 to double, !taffo.initweight !10, !taffo.info !5
  %call32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), double %conv31), !taffo.initweight !12, !taffo.info !5
  br label %if.end35

if.else33:                                        ; preds = %if.end24
  %call34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %if.end35

if.end35:                                         ; preds = %if.else33, %if.then28
  ret i32 0
}

; Function Attrs: nounwind willreturn
declare !taffo.initweight !13 !taffo.funinfo !14 void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

declare !taffo.initweight !15 !taffo.funinfo !16 dso_local i32 @__isoc99_scanf(i8*, ...) #2

declare !taffo.initweight !15 !taffo.funinfo !16 dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{i32 -1, i32 -1}
!3 = !{i32 0, i1 false, i32 0, i1 false}
!4 = !{i32 0}
!5 = !{i1 false, i1 false, i1 false, i2 1}
!6 = !{i1 false, !7, i1 false, i2 -2}
!7 = !{double -3.000000e+03, double 3.000000e+03}
!8 = !{i32 1}
!9 = !{i32 2}
!10 = !{i32 3}
!11 = !{i1 false, !7, i1 false, i2 -1}
!12 = !{i32 4}
!13 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!14 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!15 = !{i32 -1}
!16 = !{i32 0, i1 false}
