; ModuleID = './inlinetest2.out.3.taffotmp.ll'
source_filename = "./inlinetest2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.2 = private unnamed_addr constant [4 x i8] c"%a\0A\00", align 1

; Function Attrs: alwaysinline nounwind uwtable
define dso_local float @hello(float* %abc) #0 !taffo.initweight !2 !taffo.funinfo !3 {
entry:
  %arrayidx = getelementptr inbounds float, float* %abc, i64 5, !taffo.initweight !4, !taffo.info !5
  %0 = load float, float* %arrayidx, align 4, !taffo.initweight !6, !taffo.info !5
  %add = fadd float %0, 5.000000e+00, !taffo.initweight !7, !taffo.info !5, !taffo.constinfo !8
  store float %add, float* %arrayidx, align 4, !taffo.initweight !6, !taffo.info !5
  ret float undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #1 !taffo.initweight !11 !taffo.funinfo !12 {
entry:
  %test = alloca [10 x float], align 16, !taffo.initweight !13, !taffo.info !14
  %test1 = bitcast [10 x float]* %test to i8*, !taffo.initweight !17, !taffo.info !18
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !19
  %cmp = icmp slt i32 %i.0, 10, !taffo.info !21
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !taffo.info !23
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %test, i64 0, i64 %idxprom, !taffo.initweight !17, !taffo.info !14
  store float 1.230000e+02, float* %arrayidx, align 4, !taffo.initweight !4, !taffo.info !5, !taffo.constinfo !25
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !28, !taffo.constinfo !30
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [10 x float], [10 x float]* %test, i64 0, i64 0, !taffo.initweight !17, !taffo.info !14
  %arrayidx.i = getelementptr inbounds float, float* %arraydecay, i64 5, !taffo.initweight !4, !taffo.info !14
  %0 = load float, float* %arrayidx.i, align 4, !taffo.initweight !6, !taffo.info !31
  %add.i = fadd float %0, 5.000000e+00, !taffo.initweight !7, !taffo.info !32, !taffo.constinfo !8
  store float %add.i, float* %arrayidx.i, align 4, !taffo.initweight !6, !taffo.info !5
  %arrayidx2 = getelementptr inbounds [10 x float], [10 x float]* %test, i64 0, i64 5, !taffo.initweight !17, !taffo.info !14
  %1 = load float, float* %arrayidx2, align 4, !taffo.initweight !4, !taffo.info !14
  %conv = fpext float %1 to double, !taffo.initweight !6, !taffo.info !14
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %conv), !taffo.initweight !7, !taffo.info !18, !taffo.constinfo !34
  ret i32 0
}

declare !taffo.initweight !2 !taffo.funinfo !3 dso_local i32 @printf(i8*, ...) #2

attributes #0 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{i32 -1}
!3 = !{i32 0, i1 false}
!4 = !{i32 2}
!5 = !{i1 false, i1 false, i1 false, i2 1}
!6 = !{i32 3}
!7 = !{i32 4}
!8 = !{i1 false, !9}
!9 = !{i1 false, !10, i1 false, i2 0}
!10 = !{double 5.000000e+00, double 5.000000e+00}
!11 = !{i32 -1, i32 -1}
!12 = !{i32 0, i1 false, i32 0, i1 false}
!13 = !{i32 0}
!14 = !{!15, !16, i1 false, i2 1}
!15 = !{!"fixp", i32 32, i32 24}
!16 = !{double 1.230000e+02, double 1.280000e+02}
!17 = !{i32 1}
!18 = !{!15, i1 false, i1 false, i2 1}
!19 = !{i1 false, !20, i1 false, i2 0}
!20 = !{double 0.000000e+00, double 1.100000e+01}
!21 = !{i1 false, !22, i1 false, i2 0}
!22 = !{double 0.000000e+00, double 1.000000e+00}
!23 = !{i1 false, !24, i1 false, i2 0}
!24 = !{double 0.000000e+00, double 1.000000e+01}
!25 = !{!26, i1 false}
!26 = !{i1 false, !27, i1 false, i2 0}
!27 = !{double 1.230000e+02, double 1.230000e+02}
!28 = !{i1 false, !29, i1 false, i2 0}
!29 = !{double 1.000000e+00, double 1.100000e+01}
!30 = !{i1 false, i1 false}
!31 = !{!15, !27, i1 false, i2 1}
!32 = !{!15, !33, i1 false, i2 1}
!33 = !{double 1.280000e+02, double 1.280000e+02}
!34 = !{i1 false, i1 false, i1 false}
