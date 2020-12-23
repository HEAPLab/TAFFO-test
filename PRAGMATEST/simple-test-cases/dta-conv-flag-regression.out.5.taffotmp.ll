; ModuleID = './dta-conv-flag-regression.out.4.taffotmp.ll'
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
  %1 = fmul double 0x4190000000000000, %0, !taffo.info !20
  %2 = fptosi double %1 to i32, !taffo.info !20
  %call2.s6_26fixp = call i32 @cos2.1_s6_26fixp(i32 %2), !taffo.info !20, !taffo.constinfo !11
  %3 = sitofp i32 %call2.s6_26fixp to double, !taffo.info !20
  %4 = fdiv double %3, 0x4190000000000000, !taffo.info !20, !taffo.constinfo !11
  %call3.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), double %4), !taffo.initweight !23, !taffo.info !24, !taffo.constinfo !19
  ret i32 0
}

declare !taffo.initweight !2 !taffo.funinfo !4 dso_local i32 @__isoc99_scanf(i8*, ...) #1

declare !taffo.initweight !2 !taffo.funinfo !4 dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @cos2.1_s6_26fixp(i32 %angle.s6_26fixp) #0 !taffo.initweight !25 !taffo.funinfo !26 !taffo.sourceFunction !27 {
entry:
  %call.s6_26fixp = call i32 @normalizeRadiantForCosine.2_s6_26fixp(i32 %angle.s6_26fixp), !taffo.info !20, !taffo.constinfo !11
  %0 = sext i32 %call.s6_26fixp to i64, !taffo.info !20
  %1 = mul i64 %0, 1000, !taffo.info !28, !taffo.constinfo !30
  %mul.s6_26fixp = trunc i64 %1 to i32, !taffo.info !20
  %add.s6_26fixp = add i32 %mul.s6_26fixp, 37278973, !taffo.info !20, !taffo.constinfo !15
  %2 = ashr i32 %add.s6_26fixp, 26, !taffo.info !24, !taffo.constinfo !15
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [5 x double], [5 x double]* @cosTable, i64 0, i64 %idxprom
  %3 = load double, double* %arrayidx, align 8
  %4 = fmul double 0x4190000000000000, %3
  %5 = fptosi double %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @normalizeRadiantForCosine.2_s6_26fixp(i32 %angle.s6_26fixp) #0 !taffo.initweight !33 !taffo.funinfo !26 !taffo.sourceFunction !34 {
entry:
  %0 = sitofp i32 %angle.s6_26fixp to double, !taffo.info !20
  %1 = fdiv double %0, 0x4190000000000000, !taffo.info !20
  %2 = icmp slt i32 %angle.s6_26fixp, 0, !taffo.info !24
  br i1 %2, label %if.then, label %if.end, !taffo.initweight !35, !taffo.info !36

if.then:                                          ; preds = %entry
  %fneg.flt = fneg double %1, !taffo.initweight !37, !taffo.info !20
  %3 = fmul double 0x4190000000000000, %fneg.flt, !taffo.info !20
  %fneg.flt.fallback.s6_26fixp = fptosi double %3 to i32, !taffo.info !20
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %angle.addr.0.s6_26fixp = phi i32 [ %fneg.flt.fallback.s6_26fixp, %if.then ], [ %angle.s6_26fixp, %entry ], !taffo.info !24
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %angle.addr.1.s6_26fixp = phi i32 [ %angle.addr.0.s6_26fixp, %if.end ], [ %sub.s6_26fixp, %while.body ], !taffo.info !24
  %4 = icmp sge i32 %angle.addr.1.s6_26fixp, 421657428, !taffo.info !24
  br i1 %4, label %while.body, label %while.end, !taffo.initweight !35, !taffo.info !36

while.body:                                       ; preds = %while.cond
  %sub.s6_26fixp = sub i32 %angle.addr.1.s6_26fixp, 421657428, !taffo.info !20, !taffo.constinfo !7
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret i32 %angle.addr.1.s6_26fixp, !taffo.initweight !37, !taffo.info !36
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{i32 -1}
!3 = distinct !{null}
!4 = !{i32 0, i1 false}
!5 = !{i1 false, !6, i1 false, i2 0}
!6 = !{double 0.000000e+00, double 1.000000e+00}
!7 = !{i1 false, !8}
!8 = !{i1 false, !9, i1 false, i2 0}
!9 = !{double 0x401921FB54442D18, double 0x401921FB54442D18}
!10 = distinct !{null}
!11 = !{i1 false, i1 false}
!12 = !{i1 false, !13}
!13 = !{i1 false, !14, i1 false, i2 0}
!14 = !{double 1.000000e+03, double 1.000000e+03}
!15 = !{i1 false, !16}
!16 = !{i1 false, !17, i1 false, i2 0}
!17 = !{double 5.555000e-01, double 5.555000e-01}
!18 = !{}
!19 = !{i1 false, i1 false, i1 false}
!20 = !{!21, !22, i1 false, i2 1}
!21 = !{!"fixp", i32 -32, i32 26}
!22 = !{double -2.000000e+01, double 2.000000e+01}
!23 = !{i32 3}
!24 = !{!21, i1 false, i1 false, i2 1}
!25 = !{i32 2}
!26 = !{i32 1, !20}
!27 = !{double (double)* @cos2}
!28 = !{!29, !22, i1 false, i2 1}
!29 = !{!"fixp", i32 -64, i32 26}
!30 = !{i1 false, !31}
!31 = !{!32, !14, i1 false, i2 0}
!32 = !{!"fixp", i32 32, i32 0}
!33 = !{i32 5}
!34 = !{double (double)* @normalizeRadiantForCosine}
!35 = !{i32 9}
!36 = !{i1 false, !22, i1 false, i2 1}
!37 = !{i32 8}
