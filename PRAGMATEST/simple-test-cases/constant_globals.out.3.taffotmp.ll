; ModuleID = './constant_globals.out.2.taffotmp.ll'
source_filename = "./constant_globals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%f \00", align 1
@k = internal global [5 x float] [float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00], align 16, !taffo.initweight !0, !taffo.info !1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"(%f, %f) \00", align 1
@kx = internal global [3 x [3 x float]] [[3 x float] [float -1.000000e+00, float -2.000000e+00, float -1.000000e+00], [3 x float] zeroinitializer, [3 x float] [float 1.000000e+00, float 2.000000e+00, float 1.000000e+00]], align 16, !taffo.initweight !0, !taffo.info !1
@ky = internal global [3 x [3 x float]] [[3 x float] [float -1.000000e+00, float 0.000000e+00, float 1.000000e+00], [3 x float] [float -2.000000e+00, float 0.000000e+00, float 2.000000e+00], [3 x float] [float -1.000000e+00, float 0.000000e+00, float 1.000000e+00]], align 16, !taffo.initweight !0, !taffo.info !1
@.str.3 = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [21 x i8] c"./constant_globals.c\00", section "llvm.metadata"
@llvm.global.annotations = appending global [3 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast ([5 x float]* @k to i8*), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i32 5 }, { i8*, i8*, i8*, i32 } { i8* bitcast ([3 x [3 x float]]* @kx to i8*), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i32 9 }, { i8*, i8*, i8*, i32 } { i8* bitcast ([3 x [3 x float]]* @ky to i8*), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i32 17 }], section "llvm.metadata"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !taffo.initweight !4 !taffo.funinfo !5 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !6
  %cmp = icmp slt i32 %i.0, 5, !taffo.info !8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !taffo.info !10
  %arrayidx = getelementptr inbounds [5 x float], [5 x float]* @k, i64 0, i64 %idxprom, !taffo.initweight !12, !taffo.info !1
  %0 = load float, float* %arrayidx, align 4, !taffo.initweight !13, !taffo.info !1
  %conv = fpext float %0 to double, !taffo.initweight !14, !taffo.info !1
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), double %conv), !taffo.initweight !15, !taffo.info !1, !taffo.constinfo !16
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !17, !taffo.constinfo !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !taffo.constinfo !19
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc26, %for.end
  %i2.0 = phi i32 [ 0, %for.end ], [ %inc27, %for.inc26 ], !taffo.info !20
  %cmp4 = icmp slt i32 %i2.0, 3, !taffo.info !8
  br i1 %cmp4, label %for.body6, label %for.end28

for.body6:                                        ; preds = %for.cond3
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc22, %for.body6
  %j.0 = phi i32 [ 0, %for.body6 ], [ %inc23, %for.inc22 ], !taffo.info !22
  %cmp8 = icmp slt i32 %j.0, 3, !taffo.info !8
  br i1 %cmp8, label %for.body10, label %for.end24

for.body10:                                       ; preds = %for.cond7
  %idxprom11 = sext i32 %i2.0 to i64, !taffo.info !24
  %arrayidx12 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* @kx, i64 0, i64 %idxprom11, !taffo.initweight !12, !taffo.info !1
  %idxprom13 = sext i32 %j.0 to i64, !taffo.info !26
  %arrayidx14 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx12, i64 0, i64 %idxprom13, !taffo.initweight !13, !taffo.info !1
  %1 = load float, float* %arrayidx14, align 4, !taffo.initweight !14, !taffo.info !1
  %conv15 = fpext float %1 to double, !taffo.initweight !15, !taffo.info !1
  %idxprom16 = sext i32 %i2.0 to i64, !taffo.info !24
  %arrayidx17 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* @ky, i64 0, i64 %idxprom16, !taffo.initweight !12, !taffo.info !1
  %idxprom18 = sext i32 %j.0 to i64, !taffo.info !26
  %arrayidx19 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx17, i64 0, i64 %idxprom18, !taffo.initweight !13, !taffo.info !1
  %2 = load float, float* %arrayidx19, align 4, !taffo.initweight !14, !taffo.info !1
  %conv20 = fpext float %2 to double, !taffo.initweight !15, !taffo.info !1
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), double %conv15, double %conv20), !taffo.initweight !28, !taffo.info !1, !taffo.constinfo !29
  br label %for.inc22

for.inc22:                                        ; preds = %for.body10
  %inc23 = add nsw i32 %j.0, 1, !taffo.info !30, !taffo.constinfo !19
  br label %for.cond7

for.end24:                                        ; preds = %for.cond7
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !taffo.constinfo !19
  br label %for.inc26

for.inc26:                                        ; preds = %for.end24
  %inc27 = add nsw i32 %i2.0, 1, !taffo.info !32, !taffo.constinfo !19
  br label %for.cond3

for.end28:                                        ; preds = %for.cond3
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !taffo.constinfo !19
  ret i32 0
}

declare !taffo.initweight !34 !taffo.funinfo !35 dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 0}
!1 = !{i1 false, i1 false, i1 false, i2 1}
!2 = !{i32 1, !"wchar_size", i32 4}
!3 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!4 = !{i32 -1, i32 -1}
!5 = !{i32 0, i1 false, i32 0, i1 false}
!6 = !{i1 false, !7, i1 false, i2 0}
!7 = !{double 0.000000e+00, double 6.000000e+00}
!8 = !{i1 false, !9, i1 false, i2 0}
!9 = !{double 0.000000e+00, double 1.000000e+00}
!10 = !{i1 false, !11, i1 false, i2 0}
!11 = !{double 0.000000e+00, double 5.000000e+00}
!12 = !{i32 1}
!13 = !{i32 2}
!14 = !{i32 3}
!15 = !{i32 4}
!16 = !{i1 false, i1 false, i1 false}
!17 = !{i1 false, !18, i1 false, i2 0}
!18 = !{double 1.000000e+00, double 6.000000e+00}
!19 = !{i1 false, i1 false}
!20 = !{i1 false, !21, i1 false, i2 0}
!21 = !{double 0.000000e+00, double 4.000000e+00}
!22 = !{i1 false, !23, i1 false, i2 0}
!23 = !{double 0.000000e+00, double 1.600000e+01}
!24 = !{i1 false, !25, i1 false, i2 0}
!25 = !{double 0.000000e+00, double 3.000000e+00}
!26 = !{i1 false, !27, i1 false, i2 0}
!27 = !{double 0.000000e+00, double 1.500000e+01}
!28 = !{i32 5}
!29 = !{i1 false, i1 false, i1 false, i1 false}
!30 = !{i1 false, !31, i1 false, i2 0}
!31 = !{double 1.000000e+00, double 1.600000e+01}
!32 = !{i1 false, !33, i1 false, i2 0}
!33 = !{double 1.000000e+00, double 4.000000e+00}
!34 = !{i32 -1}
!35 = !{i32 0, i1 false}
