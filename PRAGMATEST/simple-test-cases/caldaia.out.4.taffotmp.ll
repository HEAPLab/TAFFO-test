; ModuleID = './caldaia.out.3.taffotmp.ll'
source_filename = "./caldaia.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.3 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Media picchi: \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"Media totale: \00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !taffo.initweight !2 !taffo.funinfo !3 {
entry:
  %p3 = alloca float, align 4, !taffo.initweight !4, !taffo.info !5
  %p33 = bitcast float* %p3 to i8*, !taffo.initweight !7, !taffo.info !5
  store float -1.000000e+00, float* %p3, align 4, !taffo.initweight !7, !taffo.info !5, !taffo.constinfo !8
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), float* %p3), !taffo.initweight !7, !taffo.info !5, !taffo.constinfo !11
  br label %while.cond

while.cond:                                       ; preds = %if.end14, %entry
  %sPeak.0 = phi float [ 0.000000e+00, %entry ], [ %sPeak.2, %if.end14 ], !taffo.info !12
  %p2.0 = phi float [ -1.000000e+00, %entry ], [ %4, %if.end14 ], !taffo.info !15
  %p1.0 = phi float [ -1.000000e+00, %entry ], [ %p2.0, %if.end14 ], !taffo.info !16
  %sAll.0 = phi float [ 0.000000e+00, %entry ], [ %add15, %if.end14 ], !taffo.info !16
  %cPeak.0 = phi i32 [ 0, %entry ], [ %cPeak.2, %if.end14 ], !taffo.info !18
  %cAll.0 = phi i32 [ 0, %entry ], [ %inc16, %if.end14 ], !taffo.info !18
  %0 = load float, float* %p3, align 4, !taffo.initweight !7, !taffo.info !5
  %cmp = fcmp ogt float %0, 0.000000e+00, !taffo.initweight !20, !taffo.info !21
  br i1 %cmp, label %while.body, label %while.end, !taffo.initweight !23, !taffo.info !5

while.body:                                       ; preds = %while.cond
  %1 = load float, float* %p3, align 4, !taffo.initweight !7, !taffo.info !5
  %cmp6 = fcmp ogt float %1, 0.000000e+00, !taffo.initweight !20, !taffo.info !21
  br i1 %cmp6, label %land.lhs.true, label %if.end14, !taffo.initweight !23, !taffo.info !5

land.lhs.true:                                    ; preds = %while.body
  %cmp7 = fcmp ogt float %p2.0, 0.000000e+00, !taffo.initweight !20, !taffo.info !24
  br i1 %cmp7, label %land.lhs.true8, label %if.end14, !taffo.initweight !23, !taffo.info !25

land.lhs.true8:                                   ; preds = %land.lhs.true
  %cmp9 = fcmp ogt float %p1.0, 0.000000e+00, !taffo.initweight !20, !taffo.info !26
  br i1 %cmp9, label %if.then, label %if.end14, !taffo.initweight !23, !taffo.info !25

if.then:                                          ; preds = %land.lhs.true8
  %2 = load float, float* %p3, align 4, !taffo.initweight !7, !taffo.info !5
  %cmp10 = fcmp olt float %2, %p2.0, !taffo.initweight !20, !taffo.info !24
  br i1 %cmp10, label %land.lhs.true11, label %if.end, !taffo.initweight !23, !taffo.info !25

land.lhs.true11:                                  ; preds = %if.then
  %cmp12 = fcmp olt float %p1.0, %p2.0, !taffo.initweight !20, !taffo.info !26
  br i1 %cmp12, label %if.then13, label %if.end, !taffo.initweight !23, !taffo.info !25

if.then13:                                        ; preds = %land.lhs.true11
  %add = fadd float %sPeak.0, %p2.0, !taffo.initweight !20, !taffo.info !12
  %inc = add nsw i32 %cPeak.0, 1, !taffo.info !27, !taffo.constinfo !29
  br label %if.end

if.end:                                           ; preds = %if.then13, %land.lhs.true11, %if.then
  %sPeak.1 = phi float [ %add, %if.then13 ], [ %sPeak.0, %land.lhs.true11 ], [ %sPeak.0, %if.then ], !taffo.info !12
  %cPeak.1 = phi i32 [ %inc, %if.then13 ], [ %cPeak.0, %land.lhs.true11 ], [ %cPeak.0, %if.then ], !taffo.info !18
  br label %if.end14

if.end14:                                         ; preds = %if.end, %land.lhs.true8, %land.lhs.true, %while.body
  %sPeak.2 = phi float [ %sPeak.1, %if.end ], [ %sPeak.0, %land.lhs.true8 ], [ %sPeak.0, %land.lhs.true ], [ %sPeak.0, %while.body ], !taffo.info !12
  %cPeak.2 = phi i32 [ %cPeak.1, %if.end ], [ %cPeak.0, %land.lhs.true8 ], [ %cPeak.0, %land.lhs.true ], [ %cPeak.0, %while.body ], !taffo.info !18
  %3 = load float, float* %p3, align 4, !taffo.initweight !7, !taffo.info !5
  %add15 = fadd float %sAll.0, %3, !taffo.initweight !20, !taffo.info !30
  %inc16 = add nsw i32 %cAll.0, 1, !taffo.info !27, !taffo.constinfo !29
  %4 = load float, float* %p3, align 4, !taffo.initweight !7, !taffo.info !5
  %call17 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), float* %p3), !taffo.initweight !7, !taffo.info !5, !taffo.constinfo !11
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)), !taffo.constinfo !29
  %cmp19 = icmp sgt i32 %cPeak.0, 0, !taffo.info !31
  br i1 %cmp19, label %if.then20, label %if.else

if.then20:                                        ; preds = %while.end
  %conv = sitofp i32 %cPeak.0 to float, !taffo.info !18
  %div = fdiv float %sPeak.0, %conv, !taffo.initweight !20, !taffo.info !32
  %conv21 = fpext float %div to double, !taffo.initweight !23, !taffo.info !32
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), double %conv21), !taffo.initweight !35, !taffo.info !36, !taffo.constinfo !11
  br label %if.end24

if.else:                                          ; preds = %while.end
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)), !taffo.constinfo !29
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then20
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0)), !taffo.constinfo !29
  %cmp26 = icmp sgt i32 %cAll.0, 0, !taffo.info !31
  br i1 %cmp26, label %if.then28, label %if.else33

if.then28:                                        ; preds = %if.end24
  %conv29 = sitofp i32 %cAll.0 to float, !taffo.info !18
  %div30 = fdiv float %sAll.0, %conv29, !taffo.initweight !20, !taffo.info !37
  %conv31 = fpext float %div30 to double, !taffo.initweight !23, !taffo.info !37
  %call32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), double %conv31), !taffo.initweight !35, !taffo.info !40, !taffo.constinfo !11
  br label %if.end35

if.else33:                                        ; preds = %if.end24
  %call34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)), !taffo.constinfo !29
  br label %if.end35

if.end35:                                         ; preds = %if.else33, %if.then28
  ret i32 0
}

declare !taffo.initweight !41 !taffo.funinfo !42 dso_local i32 @__isoc99_scanf(i8*, ...) #1

declare !taffo.initweight !41 !taffo.funinfo !42 dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{i32 -1, i32 -1}
!3 = !{i32 0, i1 false, i32 0, i1 false}
!4 = !{i32 0}
!5 = !{i1 false, !6, i1 false, i2 -2}
!6 = !{double -3.000000e+03, double 3.000000e+03}
!7 = !{i32 1}
!8 = !{!9, i1 false}
!9 = !{i1 false, !10, i1 false, i2 0}
!10 = !{double -1.000000e+00, double -1.000000e+00}
!11 = !{i1 false, i1 false, i1 false}
!12 = !{!13, !14, i1 false, i2 1}
!13 = !{!"fixp", i32 -32, i32 16}
!14 = !{double -2.700100e+04, double 2.700000e+04}
!15 = !{i1 false, !6, i1 false, i2 0}
!16 = !{!17, !6, i1 false, i2 1}
!17 = !{!"fixp", i32 -32, i32 19}
!18 = !{i1 false, !19, i1 false, i2 0}
!19 = !{double 0.000000e+00, double 1.000000e+01}
!20 = !{i32 2}
!21 = !{i1 false, !22, i1 false, i2 -2}
!22 = !{double 0.000000e+00, double 1.000000e+00}
!23 = !{i32 3}
!24 = !{i1 false, !22, i1 false, i2 1}
!25 = !{i1 false, i1 false, i1 false, i2 1}
!26 = !{!17, i1 false, i1 false, i2 1}
!27 = !{i1 false, !28, i1 false, i2 0}
!28 = !{double 1.000000e+00, double 1.000000e+01}
!29 = !{i1 false, i1 false}
!30 = !{!17, !6, i1 false, i2 -1}
!31 = !{i1 false, !22, i1 false, i2 0}
!32 = !{!33, !34, i1 false, i2 1}
!33 = !{!"fixp", i32 -64, i32 21}
!34 = !{double -2.700100e+12, double 2.700000e+12}
!35 = !{i32 4}
!36 = !{!33, i1 false, i1 false, i2 1}
!37 = !{!38, !39, i1 false, i2 1}
!38 = !{!"fixp", i32 -64, i32 24}
!39 = !{double -3.000000e+11, double 3.000000e+11}
!40 = !{!38, i1 false, i1 false, i2 1}
!41 = !{i32 -1}
!42 = !{i32 0, i1 false}
