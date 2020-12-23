; ModuleID = './array2.out.3.taffotmp.ll'
source_filename = "./array2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.2 = private unnamed_addr constant [9 x i8] c"ris %f \0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !2 !taffo.funinfo !2 {
entry:
  %v = alloca [100000 x float], align 16, !taffo.initweight !3, !taffo.info !4
  %v1 = bitcast [100000 x float]* %v to i8*, !taffo.initweight !7, !taffo.info !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !9
  %cmp = icmp slt i32 %i.0, 100000, !taffo.info !11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 3333, !taffo.info !13, !taffo.constinfo !15
  %tobool = icmp ne i32 %rem, 0, !taffo.info !16
  %0 = zext i1 %tobool to i64, !taffo.info !16
  %cond = select i1 %tobool, i32 0, i32 1, !taffo.info !16
  %conv = sitofp i32 %cond to float, !taffo.info !16
  %idxprom = sext i32 %i.0 to i64, !taffo.info !18
  %arrayidx = getelementptr inbounds [100000 x float], [100000 x float]* %v, i64 0, i64 %idxprom, !taffo.initweight !7, !taffo.info !4
  store float %conv, float* %arrayidx, align 4, !taffo.initweight !20, !taffo.info !21
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !22, !taffo.constinfo !15
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arrayidx2 = getelementptr inbounds [100000 x float], [100000 x float]* %v, i64 0, i64 0, !taffo.initweight !7, !taffo.info !4
  store float 0x3FF19999A0000000, float* %arrayidx2, align 16, !taffo.initweight !20, !taffo.info !21, !taffo.constinfo !24
  %arrayidx3 = getelementptr inbounds [100000 x float], [100000 x float]* %v, i64 0, i64 1, !taffo.initweight !7, !taffo.info !4
  store float 0x3FF19999A0000000, float* %arrayidx3, align 4, !taffo.initweight !20, !taffo.info !21, !taffo.constinfo !24
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc30, %for.end
  %i4.0 = phi i32 [ 2, %for.end ], [ %inc31, %for.inc30 ], !taffo.info !27
  %cmp6 = icmp slt i32 %i4.0, 100000, !taffo.info !11
  br i1 %cmp6, label %for.body8, label %for.end32

for.body8:                                        ; preds = %for.cond5
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc27, %for.body8
  %j.0 = phi i32 [ 0, %for.body8 ], [ %inc28, %for.inc27 ], !taffo.info !29
  %cmp10 = icmp slt i32 %j.0, 100000, !taffo.info !11
  br i1 %cmp10, label %for.body12, label %for.end29

for.body12:                                       ; preds = %for.cond9
  %cmp13 = icmp eq i32 %j.0, %i4.0, !taffo.info !16
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %for.body12
  br label %for.inc27

if.end:                                           ; preds = %for.body12
  %idxprom15 = sext i32 %j.0 to i64, !taffo.info !31
  %arrayidx16 = getelementptr inbounds [100000 x float], [100000 x float]* %v, i64 0, i64 %idxprom15, !taffo.initweight !7, !taffo.info !4
  %1 = load float, float* %arrayidx16, align 4, !taffo.initweight !20, !taffo.info !4
  %div = fdiv float %1, 1.000000e+01, !taffo.initweight !33, !taffo.info !34, !taffo.constinfo !37
  %idxprom17 = sext i32 %i4.0 to i64, !taffo.info !40
  %arrayidx18 = getelementptr inbounds [100000 x float], [100000 x float]* %v, i64 0, i64 %idxprom17, !taffo.initweight !7, !taffo.info !4
  %2 = load float, float* %arrayidx18, align 4, !taffo.initweight !20, !taffo.info !4
  %add = fadd float %2, %div, !taffo.initweight !33, !taffo.info !42
  store float %add, float* %arrayidx18, align 4, !taffo.initweight !20, !taffo.info !21
  %idxprom19 = sext i32 %i4.0 to i64, !taffo.info !40
  %arrayidx20 = getelementptr inbounds [100000 x float], [100000 x float]* %v, i64 0, i64 %idxprom19, !taffo.initweight !7, !taffo.info !4
  %3 = load float, float* %arrayidx20, align 4, !taffo.initweight !20, !taffo.info !4
  %cmp21 = fcmp ogt float %3, 1.000000e+02, !taffo.initweight !33, !taffo.info !8
  br i1 %cmp21, label %if.then23, label %if.end26, !taffo.initweight !44, !taffo.info !21

if.then23:                                        ; preds = %if.end
  %idxprom24 = sext i32 %i4.0 to i64, !taffo.info !40
  %arrayidx25 = getelementptr inbounds [100000 x float], [100000 x float]* %v, i64 0, i64 %idxprom24, !taffo.initweight !7, !taffo.info !4
  store float 0x3FB99999A0000000, float* %arrayidx25, align 4, !taffo.initweight !20, !taffo.info !21, !taffo.constinfo !45
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end
  br label %for.inc27

for.inc27:                                        ; preds = %if.end26, %if.then
  %inc28 = add nsw i32 %j.0, 1, !taffo.info !48, !taffo.constinfo !15
  br label %for.cond9

for.end29:                                        ; preds = %for.cond9
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %inc31 = add nsw i32 %i4.0, 1, !taffo.info !50, !taffo.constinfo !15
  br label %for.cond5

for.end32:                                        ; preds = %for.cond5
  %arrayidx33 = getelementptr inbounds [100000 x float], [100000 x float]* %v, i64 0, i64 99999, !taffo.initweight !7, !taffo.info !4
  %4 = load float, float* %arrayidx33, align 4, !taffo.initweight !20, !taffo.info !4
  %conv34 = fpext float %4 to double, !taffo.initweight !33, !taffo.info !4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), double %conv34), !taffo.initweight !44, !taffo.info !8, !taffo.constinfo !52
  ret i32 0
}

declare !taffo.initweight !53 !taffo.funinfo !54 dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{}
!3 = !{i32 0}
!4 = !{!5, !6, i1 false, i2 -1}
!5 = !{!"fixp", i32 -32, i32 19}
!6 = !{double -3.000000e+03, double 3.000000e+03}
!7 = !{i32 1}
!8 = !{!5, i1 false, i1 false, i2 -1}
!9 = !{i1 false, !10, i1 false, i2 0}
!10 = !{double 0.000000e+00, double 1.000000e+01}
!11 = !{i1 false, !12, i1 false, i2 0}
!12 = !{double 1.000000e+00, double 1.000000e+00}
!13 = !{i1 false, !14, i1 false, i2 0}
!14 = !{double -3.333000e+03, double 3.333000e+03}
!15 = !{i1 false, i1 false}
!16 = !{i1 false, !17, i1 false, i2 0}
!17 = !{double 0.000000e+00, double 1.000000e+00}
!18 = !{i1 false, !19, i1 false, i2 0}
!19 = !{double 0.000000e+00, double 9.000000e+00}
!20 = !{i32 2}
!21 = !{i1 false, !6, i1 false, i2 -1}
!22 = !{i1 false, !23, i1 false, i2 0}
!23 = !{double 1.000000e+00, double 1.000000e+01}
!24 = !{!25, i1 false}
!25 = !{i1 false, !26, i1 false, i2 0}
!26 = !{double 0x3FF19999A0000000, double 0x3FF19999A0000000}
!27 = !{i1 false, !28, i1 false, i2 0}
!28 = !{double 2.000000e+00, double 1.200000e+01}
!29 = !{i1 false, !30, i1 false, i2 0}
!30 = !{double 0.000000e+00, double 1.000000e+02}
!31 = !{i1 false, !32, i1 false, i2 0}
!32 = !{double 0.000000e+00, double 9.900000e+01}
!33 = !{i32 3}
!34 = !{!35, !36, i1 false, i2 -1}
!35 = !{!"fixp", i32 -32, i32 22}
!36 = !{double -3.000000e+02, double 3.000000e+02}
!37 = !{i1 false, !38}
!38 = !{i1 false, !39, i1 false, i2 0}
!39 = !{double 1.000000e+01, double 1.000000e+01}
!40 = !{i1 false, !41, i1 false, i2 0}
!41 = !{double 2.000000e+00, double 1.100000e+01}
!42 = !{!5, !43, i1 false, i2 -1}
!43 = !{double -3.300000e+03, double 3.300000e+03}
!44 = !{i32 4}
!45 = !{!46, i1 false}
!46 = !{i1 false, !47, i1 false, i2 0}
!47 = !{double 0x3FB99999A0000000, double 0x3FB99999A0000000}
!48 = !{i1 false, !49, i1 false, i2 0}
!49 = !{double 1.000000e+00, double 1.000000e+02}
!50 = !{i1 false, !51, i1 false, i2 0}
!51 = !{double 3.000000e+00, double 1.200000e+01}
!52 = !{i1 false, i1 false, i1 false}
!53 = !{i32 -1}
!54 = !{i32 0, i1 false}
