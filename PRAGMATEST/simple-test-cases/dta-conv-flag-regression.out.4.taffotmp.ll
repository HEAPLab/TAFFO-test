; ModuleID = './dta-conv-flag-regression.out.3.taffotmp.ll'
source_filename = "./dta-conv-flag-regression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cosTable = dso_local global [5 x double] [double 1.000000e+00, double 0x3FEFFFFEF390876C, double 0x3FEFFFFBCE422F47, double 0x3FEFFFF690152C59, double 0x3FEFFFEF3909D697], align 16
@.str = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%lf\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local double @normalizeRadiantForCosine(double %angle) #0 !taffo.initweight !2 !taffo.equivalentChild !3 !taffo.funinfo !4 {
entry:
  %cmp = fcmp olt double %angle, 0.000000e+00, !taffo.info !5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %fneg = fneg double %angle
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %angle.addr.0 = phi double [ %fneg, %if.then ], [ %angle, %entry ]
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %angle.addr.1 = phi double [ %angle.addr.0, %if.end ], [ %sub, %while.body ]
  %cmp1 = fcmp oge double %angle.addr.1, 0x401921FB54442D18, !taffo.info !5
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %sub = fsub double %angle.addr.1, 0x401921FB54442D18, !taffo.constinfo !7
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret double %angle.addr.1
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @cos2(double %angle) #0 !taffo.initweight !2 !taffo.equivalentChild !10 !taffo.funinfo !4 {
entry:
  %call = call double @normalizeRadiantForCosine(double %angle), !taffo.constinfo !11
  %mul = fmul double %call, 1.000000e+03, !taffo.constinfo !12
  %add = fadd double %mul, 5.555000e-01, !taffo.constinfo !15
  %conv = fptosi double %add to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds [5 x double], [5 x double]* @cosTable, i64 0, i64 %idxprom
  %0 = load double, double* %arrayidx, align 8
  ret double %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !18 !taffo.funinfo !18 {
entry:
  %angle = alloca double, align 8
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), double* %angle), !taffo.constinfo !19
  %0 = load double, double* %angle, align 8
  %call2 = call double @cos2.1(double %0), !taffo.initweight !20, !taffo.info !21, !taffo.constinfo !11, !taffo.originalCall !24
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), double %call2), !taffo.initweight !25, !taffo.info !26, !taffo.constinfo !19
  ret i32 0
}

declare !taffo.initweight !2 !taffo.funinfo !4 dso_local i32 @__isoc99_scanf(i8*, ...) #1

declare !taffo.initweight !2 !taffo.funinfo !4 dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal double @cos2.1(double %angle) #0 !taffo.initweight !20 !taffo.funinfo !27 !taffo.sourceFunction !24 {
entry:
  %call = call double @normalizeRadiantForCosine.2(double %angle), !taffo.initweight !28, !taffo.info !21, !taffo.constinfo !11, !taffo.originalCall !29
  %mul = fmul double %call, 1.000000e+03, !taffo.initweight !30, !taffo.info !21, !taffo.constinfo !12
  %add = fadd double %mul, 5.555000e-01, !taffo.initweight !31, !taffo.info !21, !taffo.constinfo !15
  %conv = fptosi double %add to i32, !taffo.initweight !32, !taffo.info !26
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds [5 x double], [5 x double]* @cosTable, i64 0, i64 %idxprom
  %0 = load double, double* %arrayidx, align 8
  ret double %0
}

; Function Attrs: noinline nounwind uwtable
define internal double @normalizeRadiantForCosine.2(double %angle) #0 !taffo.initweight !28 !taffo.funinfo !27 !taffo.sourceFunction !29 {
entry:
  %cmp = fcmp olt double %angle, 0.000000e+00, !taffo.initweight !32, !taffo.info !26
  br i1 %cmp, label %if.then, label %if.end, !taffo.initweight !33, !taffo.info !34

if.then:                                          ; preds = %entry
  %fneg = fneg double %angle, !taffo.initweight !32, !taffo.info !21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %angle.addr.0 = phi double [ %fneg, %if.then ], [ %angle, %entry ], !taffo.info !26
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %angle.addr.1 = phi double [ %angle.addr.0, %if.end ], [ %sub, %while.body ], !taffo.info !26
  %cmp1 = fcmp oge double %angle.addr.1, 0x401921FB54442D18, !taffo.initweight !32, !taffo.info !26
  br i1 %cmp1, label %while.body, label %while.end, !taffo.initweight !33, !taffo.info !34

while.body:                                       ; preds = %while.cond
  %sub = fsub double %angle.addr.1, 0x401921FB54442D18, !taffo.initweight !32, !taffo.info !21, !taffo.constinfo !7
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret double %angle.addr.1, !taffo.initweight !32, !taffo.info !34
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{i32 -1}
!3 = !{double (double)* @normalizeRadiantForCosine.2}
!4 = !{i32 0, i1 false}
!5 = !{i1 false, !6, i1 false, i2 0}
!6 = !{double 0.000000e+00, double 1.000000e+00}
!7 = !{i1 false, !8}
!8 = !{i1 false, !9, i1 false, i2 0}
!9 = !{double 0x401921FB54442D18, double 0x401921FB54442D18}
!10 = !{double (double)* @cos2.1}
!11 = !{i1 false, i1 false}
!12 = !{i1 false, !13}
!13 = !{i1 false, !14, i1 false, i2 0}
!14 = !{double 1.000000e+03, double 1.000000e+03}
!15 = !{i1 false, !16}
!16 = !{i1 false, !17, i1 false, i2 0}
!17 = !{double 5.555000e-01, double 5.555000e-01}
!18 = !{}
!19 = !{i1 false, i1 false, i1 false}
!20 = !{i32 2}
!21 = !{!22, !23, i1 false, i2 1}
!22 = !{!"fixp", i32 -32, i32 26}
!23 = !{double -2.000000e+01, double 2.000000e+01}
!24 = !{double (double)* @cos2}
!25 = !{i32 3}
!26 = !{!22, i1 false, i1 false, i2 1}
!27 = !{i32 1, !21}
!28 = !{i32 5}
!29 = !{double (double)* @normalizeRadiantForCosine}
!30 = !{i32 6}
!31 = !{i32 7}
!32 = !{i32 8}
!33 = !{i32 9}
!34 = !{i1 false, !23, i1 false, i2 1}
