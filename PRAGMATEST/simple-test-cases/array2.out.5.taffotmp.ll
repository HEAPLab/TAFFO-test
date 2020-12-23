; ModuleID = './array2.out.4.taffotmp.ll'
source_filename = "./array2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.2 = private unnamed_addr constant [9 x i8] c"ris %f \0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !2 !taffo.funinfo !2 {
entry:
  %v.s13_19fixp = alloca [100000 x i32], align 16, !taffo.info !3
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !6
  %cmp = icmp slt i32 %i.0, 100000, !taffo.info !8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 3333, !taffo.info !10, !taffo.constinfo !12
  %tobool = icmp ne i32 %rem, 0, !taffo.info !13
  %cond = select i1 %tobool, i32 0, i32 1, !taffo.info !13
  %0 = shl i32 %cond, 19, !taffo.info !13
  %idxprom = sext i32 %i.0 to i64, !taffo.info !15
  %arrayidx.s13_19fixp = getelementptr inbounds [100000 x i32], [100000 x i32]* %v.s13_19fixp, i64 0, i64 %idxprom, !taffo.info !3
  store i32 %0, i32* %arrayidx.s13_19fixp, align 4, !taffo.info !17
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !18, !taffo.constinfo !12
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arrayidx2.s13_19fixp = getelementptr inbounds [100000 x i32], [100000 x i32]* %v.s13_19fixp, i64 0, i64 0, !taffo.info !3
  store i32 576716, i32* %arrayidx2.s13_19fixp, align 16, !taffo.info !17, !taffo.constinfo !20
  %arrayidx3.s13_19fixp = getelementptr inbounds [100000 x i32], [100000 x i32]* %v.s13_19fixp, i64 0, i64 1, !taffo.info !3
  store i32 576716, i32* %arrayidx3.s13_19fixp, align 4, !taffo.info !17, !taffo.constinfo !20
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc30, %for.end
  %i4.0 = phi i32 [ 2, %for.end ], [ %inc31, %for.inc30 ], !taffo.info !23
  %cmp6 = icmp slt i32 %i4.0, 100000, !taffo.info !8
  br i1 %cmp6, label %for.body8, label %for.end32

for.body8:                                        ; preds = %for.cond5
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc27, %for.body8
  %j.0 = phi i32 [ 0, %for.body8 ], [ %inc28, %for.inc27 ], !taffo.info !25
  %cmp10 = icmp slt i32 %j.0, 100000, !taffo.info !8
  br i1 %cmp10, label %for.body12, label %for.end29

for.body12:                                       ; preds = %for.cond9
  %cmp13 = icmp eq i32 %j.0, %i4.0, !taffo.info !13
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %for.body12
  br label %for.inc27

if.end:                                           ; preds = %for.body12
  %idxprom15 = sext i32 %j.0 to i64, !taffo.info !27
  %arrayidx16.s13_19fixp = getelementptr inbounds [100000 x i32], [100000 x i32]* %v.s13_19fixp, i64 0, i64 %idxprom15, !taffo.info !3
  %s13_19fixp3 = load i32, i32* %arrayidx16.s13_19fixp, align 4, !taffo.info !3
  %1 = sext i32 %s13_19fixp3 to i64, !taffo.info !3
  %2 = sdiv i64 %1, 10, !taffo.info !29, !taffo.constinfo !32
  %3 = shl i64 %2, 3, !taffo.info !29, !taffo.constinfo !32
  %div.s10_22fixp = trunc i64 %3 to i32, !taffo.info !36
  %idxprom17 = sext i32 %i4.0 to i64, !taffo.info !38
  %arrayidx18.s13_19fixp = getelementptr inbounds [100000 x i32], [100000 x i32]* %v.s13_19fixp, i64 0, i64 %idxprom17, !taffo.info !3
  %s13_19fixp2 = load i32, i32* %arrayidx18.s13_19fixp, align 4, !taffo.info !3
  %4 = ashr i32 %div.s10_22fixp, 3, !taffo.info !36
  %add.s13_19fixp = add i32 %s13_19fixp2, %4, !taffo.info !40
  store i32 %add.s13_19fixp, i32* %arrayidx18.s13_19fixp, align 4, !taffo.info !17
  %idxprom19 = sext i32 %i4.0 to i64, !taffo.info !38
  %arrayidx20.s13_19fixp = getelementptr inbounds [100000 x i32], [100000 x i32]* %v.s13_19fixp, i64 0, i64 %idxprom19, !taffo.info !3
  %s13_19fixp1 = load i32, i32* %arrayidx20.s13_19fixp, align 4, !taffo.info !3
  %5 = icmp sgt i32 %s13_19fixp1, 52428800, !taffo.info !42
  br i1 %5, label %if.then23, label %if.end26, !taffo.initweight !43, !taffo.info !17

if.then23:                                        ; preds = %if.end
  %idxprom24 = sext i32 %i4.0 to i64, !taffo.info !38
  %arrayidx25.s13_19fixp = getelementptr inbounds [100000 x i32], [100000 x i32]* %v.s13_19fixp, i64 0, i64 %idxprom24, !taffo.info !3
  store i32 52428, i32* %arrayidx25.s13_19fixp, align 4, !taffo.info !17, !taffo.constinfo !44
  br label %if.end26

if.end26:                                         ; preds = %if.end, %if.then23
  br label %for.inc27

for.inc27:                                        ; preds = %if.end26, %if.then
  %inc28 = add nsw i32 %j.0, 1, !taffo.info !47, !taffo.constinfo !12
  br label %for.cond9

for.end29:                                        ; preds = %for.cond9
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %inc31 = add nsw i32 %i4.0, 1, !taffo.info !49, !taffo.constinfo !12
  br label %for.cond5

for.end32:                                        ; preds = %for.cond5
  %arrayidx33.s13_19fixp = getelementptr inbounds [100000 x i32], [100000 x i32]* %v.s13_19fixp, i64 0, i64 99999, !taffo.info !3
  %s13_19fixp = load i32, i32* %arrayidx33.s13_19fixp, align 4, !taffo.info !3
  %6 = sitofp i32 %s13_19fixp to double, !taffo.info !3
  %7 = fdiv double %6, 5.242880e+05, !taffo.info !3
  %call.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), double %7), !taffo.initweight !43, !taffo.info !42, !taffo.constinfo !51
  ret i32 0
}

declare !taffo.initweight !52 !taffo.funinfo !53 dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{}
!3 = !{!4, !5, i1 false, i2 -1}
!4 = !{!"fixp", i32 -32, i32 19}
!5 = !{double -3.000000e+03, double 3.000000e+03}
!6 = !{i1 false, !7, i1 false, i2 0}
!7 = !{double 0.000000e+00, double 1.000000e+01}
!8 = !{i1 false, !9, i1 false, i2 0}
!9 = !{double 1.000000e+00, double 1.000000e+00}
!10 = !{i1 false, !11, i1 false, i2 0}
!11 = !{double -3.333000e+03, double 3.333000e+03}
!12 = !{i1 false, i1 false}
!13 = !{i1 false, !14, i1 false, i2 0}
!14 = !{double 0.000000e+00, double 1.000000e+00}
!15 = !{i1 false, !16, i1 false, i2 0}
!16 = !{double 0.000000e+00, double 9.000000e+00}
!17 = !{i1 false, !5, i1 false, i2 -1}
!18 = !{i1 false, !19, i1 false, i2 0}
!19 = !{double 1.000000e+00, double 1.000000e+01}
!20 = !{!21, i1 false}
!21 = !{i1 false, !22, i1 false, i2 0}
!22 = !{double 0x3FF19999A0000000, double 0x3FF19999A0000000}
!23 = !{i1 false, !24, i1 false, i2 0}
!24 = !{double 2.000000e+00, double 1.200000e+01}
!25 = !{i1 false, !26, i1 false, i2 0}
!26 = !{double 0.000000e+00, double 1.000000e+02}
!27 = !{i1 false, !28, i1 false, i2 0}
!28 = !{double 0.000000e+00, double 9.900000e+01}
!29 = !{!30, !31, i1 false, i2 -1}
!30 = !{!"fixp", i32 -64, i32 19}
!31 = !{double -3.000000e+02, double 3.000000e+02}
!32 = !{i1 false, !33}
!33 = !{!34, !35, i1 false, i2 0}
!34 = !{!"fixp", i32 32, i32 0}
!35 = !{double 1.000000e+01, double 1.000000e+01}
!36 = !{!37, !31, i1 false, i2 -1}
!37 = !{!"fixp", i32 -32, i32 22}
!38 = !{i1 false, !39, i1 false, i2 0}
!39 = !{double 2.000000e+00, double 1.100000e+01}
!40 = !{!4, !41, i1 false, i2 -1}
!41 = !{double -3.300000e+03, double 3.300000e+03}
!42 = !{!4, i1 false, i1 false, i2 -1}
!43 = !{i32 4}
!44 = !{!45, i1 false}
!45 = !{i1 false, !46, i1 false, i2 0}
!46 = !{double 0x3FB99999A0000000, double 0x3FB99999A0000000}
!47 = !{i1 false, !48, i1 false, i2 0}
!48 = !{double 1.000000e+00, double 1.000000e+02}
!49 = !{i1 false, !50, i1 false, i2 0}
!50 = !{double 3.000000e+00, double 1.200000e+01}
!51 = !{i1 false, i1 false, i1 false}
!52 = !{i32 -1}
!53 = !{i32 0, i1 false}
