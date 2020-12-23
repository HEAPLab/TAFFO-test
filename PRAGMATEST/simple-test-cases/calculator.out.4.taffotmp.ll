; ModuleID = './calculator.out.3.taffotmp.ll'
source_filename = "./calculator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !taffo.initweight !2 !taffo.funinfo !3 {
entry:
  %tmp = alloca float, align 4
  %buffer = alloca [256 x i8], align 16
  %stack = alloca [32 x float], align 16, !taffo.initweight !4, !taffo.info !5
  %stack1 = bitcast [32 x float]* %stack to i8*, !taffo.initweight !8, !taffo.info !9
  br label %while.body

while.body:                                       ; preds = %if.end, %entry
  %sp.0 = phi i32 [ 0, %entry ], [ %sp.2, %if.end ], !taffo.info !10
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i64 0, i64 0
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %arraydecay), !taffo.constinfo !12
  %arraydecay2 = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i64 0, i64 0
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), float* %tmp) #3, !taffo.constinfo !13
  %cmp = icmp eq i32 %call3, 1, !taffo.info !14
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %0 = load float, float* %tmp, align 4
  %inc = add nsw i32 %sp.0, 1, !taffo.info !16, !taffo.constinfo !18
  %idxprom = sext i32 %sp.0 to i64, !taffo.info !10
  %arrayidx = getelementptr inbounds [32 x float], [32 x float]* %stack, i64 0, i64 %idxprom, !taffo.initweight !8, !taffo.info !5
  store float %0, float* %arrayidx, align 4, !taffo.initweight !19, !taffo.info !20
  br label %if.end

if.else:                                          ; preds = %while.body
  %arrayidx4 = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i64 0, i64 0
  %1 = load i8, i8* %arrayidx4, align 16
  %conv = sext i8 %1 to i32
  switch i32 %conv, label %sw.epilog [
    i32 43, label %sw.bb
    i32 45, label %sw.bb21
    i32 42, label %sw.bb41
    i32 47, label %sw.bb61
    i32 61, label %sw.bb81
    i32 113, label %sw.bb87
  ]

sw.bb:                                            ; preds = %if.else
  %dec = add nsw i32 %sp.0, -1, !taffo.info !21, !taffo.constinfo !18
  %idxprom13 = sext i32 %dec to i64, !taffo.info !21
  %arrayidx14 = getelementptr inbounds [32 x float], [32 x float]* %stack, i64 0, i64 %idxprom13, !taffo.initweight !8, !taffo.info !5
  %2 = load float, float* %arrayidx14, align 4, !taffo.initweight !19, !taffo.info !5
  %dec15 = add nsw i32 %dec, -1, !taffo.info !23, !taffo.constinfo !18
  %idxprom16 = sext i32 %dec15 to i64, !taffo.info !23
  %arrayidx17 = getelementptr inbounds [32 x float], [32 x float]* %stack, i64 0, i64 %idxprom16, !taffo.initweight !8, !taffo.info !5
  %3 = load float, float* %arrayidx17, align 4, !taffo.initweight !19, !taffo.info !5
  %add = fadd float %3, %2, !taffo.initweight !19, !taffo.info !25
  %inc18 = add nsw i32 %dec15, 1, !taffo.info !21, !taffo.constinfo !18
  %idxprom19 = sext i32 %dec15 to i64, !taffo.info !23
  %arrayidx20 = getelementptr inbounds [32 x float], [32 x float]* %stack, i64 0, i64 %idxprom19, !taffo.initweight !8, !taffo.info !5
  store float %add, float* %arrayidx20, align 4, !taffo.initweight !19, !taffo.info !20
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.else
  %dec32 = add nsw i32 %sp.0, -1, !taffo.info !21, !taffo.constinfo !18
  %idxprom33 = sext i32 %dec32 to i64, !taffo.info !21
  %arrayidx34 = getelementptr inbounds [32 x float], [32 x float]* %stack, i64 0, i64 %idxprom33, !taffo.initweight !8, !taffo.info !5
  %4 = load float, float* %arrayidx34, align 4, !taffo.initweight !19, !taffo.info !5
  %dec35 = add nsw i32 %dec32, -1, !taffo.info !23, !taffo.constinfo !18
  %idxprom36 = sext i32 %dec35 to i64, !taffo.info !23
  %arrayidx37 = getelementptr inbounds [32 x float], [32 x float]* %stack, i64 0, i64 %idxprom36, !taffo.initweight !8, !taffo.info !5
  %5 = load float, float* %arrayidx37, align 4, !taffo.initweight !19, !taffo.info !5
  %sub = fsub float %5, %4, !taffo.initweight !19, !taffo.info !25
  %inc38 = add nsw i32 %dec35, 1, !taffo.info !21, !taffo.constinfo !18
  %idxprom39 = sext i32 %dec35 to i64, !taffo.info !23
  %arrayidx40 = getelementptr inbounds [32 x float], [32 x float]* %stack, i64 0, i64 %idxprom39, !taffo.initweight !8, !taffo.info !5
  store float %sub, float* %arrayidx40, align 4, !taffo.initweight !19, !taffo.info !20
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.else
  %dec52 = add nsw i32 %sp.0, -1, !taffo.info !21, !taffo.constinfo !18
  %idxprom53 = sext i32 %dec52 to i64, !taffo.info !21
  %arrayidx54 = getelementptr inbounds [32 x float], [32 x float]* %stack, i64 0, i64 %idxprom53, !taffo.initweight !8, !taffo.info !5
  %6 = load float, float* %arrayidx54, align 4, !taffo.initweight !19, !taffo.info !5
  %dec55 = add nsw i32 %dec52, -1, !taffo.info !23, !taffo.constinfo !18
  %idxprom56 = sext i32 %dec55 to i64, !taffo.info !23
  %arrayidx57 = getelementptr inbounds [32 x float], [32 x float]* %stack, i64 0, i64 %idxprom56, !taffo.initweight !8, !taffo.info !5
  %7 = load float, float* %arrayidx57, align 4, !taffo.initweight !19, !taffo.info !5
  %mul = fmul float %7, %6, !taffo.initweight !19, !taffo.info !25
  %inc58 = add nsw i32 %dec55, 1, !taffo.info !21, !taffo.constinfo !18
  %idxprom59 = sext i32 %dec55 to i64, !taffo.info !23
  %arrayidx60 = getelementptr inbounds [32 x float], [32 x float]* %stack, i64 0, i64 %idxprom59, !taffo.initweight !8, !taffo.info !5
  store float %mul, float* %arrayidx60, align 4, !taffo.initweight !19, !taffo.info !20
  br label %sw.epilog

sw.bb61:                                          ; preds = %if.else
  %dec72 = add nsw i32 %sp.0, -1, !taffo.info !21, !taffo.constinfo !18
  %idxprom73 = sext i32 %dec72 to i64, !taffo.info !21
  %arrayidx74 = getelementptr inbounds [32 x float], [32 x float]* %stack, i64 0, i64 %idxprom73, !taffo.initweight !8, !taffo.info !5
  %8 = load float, float* %arrayidx74, align 4, !taffo.initweight !19, !taffo.info !5
  %dec75 = add nsw i32 %dec72, -1, !taffo.info !23, !taffo.constinfo !18
  %idxprom76 = sext i32 %dec75 to i64, !taffo.info !23
  %arrayidx77 = getelementptr inbounds [32 x float], [32 x float]* %stack, i64 0, i64 %idxprom76, !taffo.initweight !8, !taffo.info !5
  %9 = load float, float* %arrayidx77, align 4, !taffo.initweight !19, !taffo.info !5
  %div = fdiv float %9, %8, !taffo.initweight !19, !taffo.info !25
  %inc78 = add nsw i32 %dec75, 1, !taffo.info !21, !taffo.constinfo !18
  %idxprom79 = sext i32 %dec75 to i64, !taffo.info !23
  %arrayidx80 = getelementptr inbounds [32 x float], [32 x float]* %stack, i64 0, i64 %idxprom79, !taffo.initweight !8, !taffo.info !5
  store float %div, float* %arrayidx80, align 4, !taffo.initweight !19, !taffo.info !20
  br label %sw.epilog

sw.bb81:                                          ; preds = %if.else
  %dec82 = add nsw i32 %sp.0, -1, !taffo.info !21, !taffo.constinfo !18
  %idxprom83 = sext i32 %dec82 to i64, !taffo.info !21
  %arrayidx84 = getelementptr inbounds [32 x float], [32 x float]* %stack, i64 0, i64 %idxprom83, !taffo.initweight !8, !taffo.info !5
  %10 = load float, float* %arrayidx84, align 4, !taffo.initweight !19, !taffo.info !5
  %conv85 = fpext float %10 to double, !taffo.initweight !26, !taffo.info !5
  %call86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), double %conv85), !taffo.initweight !27, !taffo.info !9, !taffo.constinfo !12
  br label %sw.epilog

sw.bb87:                                          ; preds = %if.else
  ret i32 0

sw.epilog:                                        ; preds = %sw.bb81, %sw.bb61, %sw.bb41, %sw.bb21, %sw.bb, %if.else
  %sp.1 = phi i32 [ %sp.0, %if.else ], [ %dec82, %sw.bb81 ], [ %inc78, %sw.bb61 ], [ %inc58, %sw.bb41 ], [ %inc38, %sw.bb21 ], [ %inc18, %sw.bb ], !taffo.info !28
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %if.then
  %sp.2 = phi i32 [ %inc, %if.then ], [ %sp.1, %sw.epilog ], !taffo.info !30
  br label %while.body
}

declare !taffo.initweight !32 !taffo.funinfo !33 dso_local i32 @__isoc99_scanf(i8*, ...) #1

; Function Attrs: nounwind
declare !taffo.initweight !2 !taffo.funinfo !3 dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

declare !taffo.initweight !32 !taffo.funinfo !33 dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{i32 -1, i32 -1}
!3 = !{i32 0, i1 false, i32 0, i1 false}
!4 = !{i32 0}
!5 = !{!6, !7, i1 false, i2 1}
!6 = !{!"fixp", i32 -32, i32 19}
!7 = !{double -3.000000e+03, double 3.000000e+03}
!8 = !{i32 1}
!9 = !{!6, i1 false, i1 false, i2 1}
!10 = !{i1 false, !11, i1 false, i2 0}
!11 = !{double 0.000000e+00, double 0.000000e+00}
!12 = !{i1 false, i1 false, i1 false}
!13 = !{i1 false, i1 false, i1 false, i1 false}
!14 = !{i1 false, !15, i1 false, i2 0}
!15 = !{double 0.000000e+00, double 1.000000e+00}
!16 = !{i1 false, !17, i1 false, i2 0}
!17 = !{double 1.000000e+00, double 1.000000e+00}
!18 = !{i1 false, i1 false}
!19 = !{i32 2}
!20 = !{i1 false, !7, i1 false, i2 1}
!21 = !{i1 false, !22, i1 false, i2 0}
!22 = !{double -1.000000e+00, double -1.000000e+00}
!23 = !{i1 false, !24, i1 false, i2 0}
!24 = !{double -2.000000e+00, double -2.000000e+00}
!25 = !{!6, !7, i1 false, i2 -1}
!26 = !{i32 3}
!27 = !{i32 4}
!28 = !{i1 false, !29, i1 false, i2 0}
!29 = !{double -1.000000e+00, double 0.000000e+00}
!30 = !{i1 false, !31, i1 false, i2 0}
!31 = !{double -1.000000e+00, double 1.000000e+00}
!32 = !{i32 -1}
!33 = !{i32 0, i1 false}
