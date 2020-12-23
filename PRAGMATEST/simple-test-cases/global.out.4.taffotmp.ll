; ModuleID = './global.out.3.taffotmp.ll'
source_filename = "./global.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vec = common dso_local global [10 x double] zeroinitializer, align 16, !taffo.initweight !0, !taffo.info !1
@scal = common dso_local global double 0.000000e+00, align 8, !taffo.initweight !0, !taffo.info !4
@.str = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [11 x i8] c"./global.c\00", section "llvm.metadata"
@llvm.global.annotations = appending global [2 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast ([10 x double]* @vec to i8*), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 6 }, { i8*, i8*, i8*, i32 } { i8* bitcast (double* @scal to i8*), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 7 }], section "llvm.metadata"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !taffo.initweight !8 !taffo.funinfo !9 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !10
  %cmp = icmp slt i32 %i.0, 10, !taffo.info !12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %conv = sitofp i32 %i.0 to double, !taffo.info !14
  %div = fdiv double %conv, 2.000000e+00, !taffo.info !16, !taffo.constinfo !17
  %idxprom = sext i32 %i.0 to i64, !taffo.info !14
  %arrayidx = getelementptr inbounds [10 x double], [10 x double]* @vec, i64 0, i64 %idxprom, !taffo.initweight !20, !taffo.info !1
  store double %div, double* %arrayidx, align 8, !taffo.initweight !21, !taffo.info !22
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !23, !taffo.constinfo !25
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store double 5.000000e+00, double* @scal, align 8, !taffo.initweight !20, !taffo.info !22, !taffo.constinfo !26
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc8, %for.end
  %i1.0 = phi i32 [ 0, %for.end ], [ %inc9, %for.inc8 ], !taffo.info !10
  %cmp3 = icmp slt i32 %i1.0, 10, !taffo.info !12
  br i1 %cmp3, label %for.body5, label %for.end10

for.body5:                                        ; preds = %for.cond2
  %idxprom6 = sext i32 %i1.0 to i64, !taffo.info !14
  %arrayidx7 = getelementptr inbounds [10 x double], [10 x double]* @vec, i64 0, i64 %idxprom6, !taffo.initweight !20, !taffo.info !1
  %0 = load double, double* %arrayidx7, align 8, !taffo.initweight !21, !taffo.info !28
  %1 = load double, double* @scal, align 8, !taffo.initweight !20, !taffo.info !30
  %mul = fmul double %0, %1, !taffo.initweight !21, !taffo.info !31
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), double %mul), !taffo.initweight !33, !taffo.info !34, !taffo.constinfo !35
  br label %for.inc8

for.inc8:                                         ; preds = %for.body5
  %inc9 = add nsw i32 %i1.0, 1, !taffo.info !23, !taffo.constinfo !25
  br label %for.cond2

for.end10:                                        ; preds = %for.cond2
  ret i32 0
}

declare !taffo.initweight !36 !taffo.funinfo !37 dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!6}
!llvm.ident = !{!7}

!0 = !{i32 0}
!1 = !{!2, !3, i1 false, i2 1}
!2 = !{!"fixp", i32 32, i32 29}
!3 = !{double 0.000000e+00, double 5.000000e+00}
!4 = !{!2, !5, i1 false, i2 1}
!5 = !{double 5.000000e+00, double 5.000000e+00}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!8 = !{i32 -1, i32 -1}
!9 = !{i32 0, i1 false, i32 0, i1 false}
!10 = !{i1 false, !11, i1 false, i2 0}
!11 = !{double 0.000000e+00, double 1.100000e+01}
!12 = !{i1 false, !13, i1 false, i2 0}
!13 = !{double 0.000000e+00, double 1.000000e+00}
!14 = !{i1 false, !15, i1 false, i2 0}
!15 = !{double 0.000000e+00, double 1.000000e+01}
!16 = !{i1 false, !3, i1 false, i2 0}
!17 = !{i1 false, !18}
!18 = !{i1 false, !19, i1 false, i2 0}
!19 = !{double 2.000000e+00, double 2.000000e+00}
!20 = !{i32 1}
!21 = !{i32 2}
!22 = !{i1 false, i1 false, i1 false, i2 1}
!23 = !{i1 false, !24, i1 false, i2 0}
!24 = !{double 1.000000e+00, double 1.100000e+01}
!25 = !{i1 false, i1 false}
!26 = !{!27, i1 false}
!27 = !{i1 false, !5, i1 false, i2 0}
!28 = !{!29, !3, i1 false, i2 1}
!29 = !{!"fixp", i32 32, i32 27}
!30 = !{!29, !5, i1 false, i2 1}
!31 = !{!29, !32, i1 false, i2 1}
!32 = !{double 0.000000e+00, double 2.500000e+01}
!33 = !{i32 3}
!34 = !{!29, i1 false, i1 false, i2 1}
!35 = !{i1 false, i1 false, i1 false}
!36 = !{i32 -1}
!37 = !{i32 0, i1 false}
