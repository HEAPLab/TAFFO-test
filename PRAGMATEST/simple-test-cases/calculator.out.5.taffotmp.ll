; ModuleID = './calculator.out.4.taffotmp.ll'
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
  %stack.s13_19fixp = alloca [32 x i32], align 16, !taffo.info !4
  br label %while.body

while.body:                                       ; preds = %if.end, %entry
  %sp.0 = phi i32 [ 0, %entry ], [ %sp.2, %if.end ], !taffo.info !7
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i64 0, i64 0
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %arraydecay), !taffo.constinfo !9
  %arraydecay2 = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i64 0, i64 0
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), float* %tmp) #3, !taffo.constinfo !10
  %cmp = icmp eq i32 %call3, 1, !taffo.info !11
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %0 = load float, float* %tmp, align 4
  %1 = fmul float 5.242880e+05, %0, !taffo.info !13
  %2 = fptosi float %1 to i32, !taffo.info !13
  %inc = add nsw i32 %sp.0, 1, !taffo.info !13, !taffo.constinfo !15
  %idxprom = sext i32 %sp.0 to i64, !taffo.info !7
  %arrayidx.s13_19fixp = getelementptr inbounds [32 x i32], [32 x i32]* %stack.s13_19fixp, i64 0, i64 %idxprom, !taffo.info !4
  store i32 %2, i32* %arrayidx.s13_19fixp, align 4, !taffo.info !16
  br label %if.end

if.else:                                          ; preds = %while.body
  %arrayidx4 = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i64 0, i64 0
  %3 = load i8, i8* %arrayidx4, align 16
  %conv = sext i8 %3 to i32
  switch i32 %conv, label %sw.epilog [
    i32 43, label %sw.bb
    i32 45, label %sw.bb21
    i32 42, label %sw.bb41
    i32 47, label %sw.bb61
    i32 61, label %sw.bb81
    i32 113, label %sw.bb87
  ]

sw.bb:                                            ; preds = %if.else
  %dec = add nsw i32 %sp.0, -1, !taffo.info !17, !taffo.constinfo !15
  %idxprom13 = sext i32 %dec to i64, !taffo.info !17
  %arrayidx14.s13_19fixp = getelementptr inbounds [32 x i32], [32 x i32]* %stack.s13_19fixp, i64 0, i64 %idxprom13, !taffo.info !4
  %s13_19fixp8 = load i32, i32* %arrayidx14.s13_19fixp, align 4, !taffo.info !4
  %dec15 = add nsw i32 %dec, -1, !taffo.info !19, !taffo.constinfo !15
  %idxprom16 = sext i32 %dec15 to i64, !taffo.info !19
  %arrayidx17.s13_19fixp = getelementptr inbounds [32 x i32], [32 x i32]* %stack.s13_19fixp, i64 0, i64 %idxprom16, !taffo.info !4
  %s13_19fixp7 = load i32, i32* %arrayidx17.s13_19fixp, align 4, !taffo.info !4
  %add.s13_19fixp = add i32 %s13_19fixp7, %s13_19fixp8, !taffo.info !21
  %inc18 = add nsw i32 %dec15, 1, !taffo.info !17, !taffo.constinfo !15
  %idxprom19 = sext i32 %dec15 to i64, !taffo.info !19
  %arrayidx20.s13_19fixp = getelementptr inbounds [32 x i32], [32 x i32]* %stack.s13_19fixp, i64 0, i64 %idxprom19, !taffo.info !4
  store i32 %add.s13_19fixp, i32* %arrayidx20.s13_19fixp, align 4, !taffo.info !16
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.else
  %dec32 = add nsw i32 %sp.0, -1, !taffo.info !17, !taffo.constinfo !15
  %idxprom33 = sext i32 %dec32 to i64, !taffo.info !17
  %arrayidx34.s13_19fixp = getelementptr inbounds [32 x i32], [32 x i32]* %stack.s13_19fixp, i64 0, i64 %idxprom33, !taffo.info !4
  %s13_19fixp6 = load i32, i32* %arrayidx34.s13_19fixp, align 4, !taffo.info !4
  %dec35 = add nsw i32 %dec32, -1, !taffo.info !19, !taffo.constinfo !15
  %idxprom36 = sext i32 %dec35 to i64, !taffo.info !19
  %arrayidx37.s13_19fixp = getelementptr inbounds [32 x i32], [32 x i32]* %stack.s13_19fixp, i64 0, i64 %idxprom36, !taffo.info !4
  %s13_19fixp5 = load i32, i32* %arrayidx37.s13_19fixp, align 4, !taffo.info !4
  %sub.s13_19fixp = sub i32 %s13_19fixp5, %s13_19fixp6, !taffo.info !21
  %inc38 = add nsw i32 %dec35, 1, !taffo.info !17, !taffo.constinfo !15
  %idxprom39 = sext i32 %dec35 to i64, !taffo.info !19
  %arrayidx40.s13_19fixp = getelementptr inbounds [32 x i32], [32 x i32]* %stack.s13_19fixp, i64 0, i64 %idxprom39, !taffo.info !4
  store i32 %sub.s13_19fixp, i32* %arrayidx40.s13_19fixp, align 4, !taffo.info !16
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.else
  %dec52 = add nsw i32 %sp.0, -1, !taffo.info !17, !taffo.constinfo !15
  %idxprom53 = sext i32 %dec52 to i64, !taffo.info !17
  %arrayidx54.s13_19fixp = getelementptr inbounds [32 x i32], [32 x i32]* %stack.s13_19fixp, i64 0, i64 %idxprom53, !taffo.info !4
  %s13_19fixp4 = load i32, i32* %arrayidx54.s13_19fixp, align 4, !taffo.info !4
  %dec55 = add nsw i32 %dec52, -1, !taffo.info !19, !taffo.constinfo !15
  %idxprom56 = sext i32 %dec55 to i64, !taffo.info !19
  %arrayidx57.s13_19fixp = getelementptr inbounds [32 x i32], [32 x i32]* %stack.s13_19fixp, i64 0, i64 %idxprom56, !taffo.info !4
  %s13_19fixp3 = load i32, i32* %arrayidx57.s13_19fixp, align 4, !taffo.info !4
  %4 = sext i32 %s13_19fixp3 to i64, !taffo.info !4
  %5 = sext i32 %s13_19fixp4 to i64, !taffo.info !4
  %6 = mul i64 %4, %5, !taffo.info !22
  %7 = ashr i64 %6, 19, !taffo.info !22
  %mul.s13_19fixp = trunc i64 %7 to i32, !taffo.info !21
  %inc58 = add nsw i32 %dec55, 1, !taffo.info !17, !taffo.constinfo !15
  %idxprom59 = sext i32 %dec55 to i64, !taffo.info !19
  %arrayidx60.s13_19fixp = getelementptr inbounds [32 x i32], [32 x i32]* %stack.s13_19fixp, i64 0, i64 %idxprom59, !taffo.info !4
  store i32 %mul.s13_19fixp, i32* %arrayidx60.s13_19fixp, align 4, !taffo.info !16
  br label %sw.epilog

sw.bb61:                                          ; preds = %if.else
  %dec72 = add nsw i32 %sp.0, -1, !taffo.info !17, !taffo.constinfo !15
  %idxprom73 = sext i32 %dec72 to i64, !taffo.info !17
  %arrayidx74.s13_19fixp = getelementptr inbounds [32 x i32], [32 x i32]* %stack.s13_19fixp, i64 0, i64 %idxprom73, !taffo.info !4
  %s13_19fixp2 = load i32, i32* %arrayidx74.s13_19fixp, align 4, !taffo.info !4
  %dec75 = add nsw i32 %dec72, -1, !taffo.info !19, !taffo.constinfo !15
  %idxprom76 = sext i32 %dec75 to i64, !taffo.info !19
  %arrayidx77.s13_19fixp = getelementptr inbounds [32 x i32], [32 x i32]* %stack.s13_19fixp, i64 0, i64 %idxprom76, !taffo.info !4
  %s13_19fixp1 = load i32, i32* %arrayidx77.s13_19fixp, align 4, !taffo.info !4
  %8 = sext i32 %s13_19fixp1 to i64, !taffo.info !4
  %9 = shl i64 %8, 19, !taffo.info !4
  %10 = sext i32 %s13_19fixp2 to i64, !taffo.info !4
  %11 = sdiv i64 %9, %10, !taffo.info !24
  %div.s13_19fixp = trunc i64 %11 to i32, !taffo.info !21
  %inc78 = add nsw i32 %dec75, 1, !taffo.info !17, !taffo.constinfo !15
  %idxprom79 = sext i32 %dec75 to i64, !taffo.info !19
  %arrayidx80.s13_19fixp = getelementptr inbounds [32 x i32], [32 x i32]* %stack.s13_19fixp, i64 0, i64 %idxprom79, !taffo.info !4
  store i32 %div.s13_19fixp, i32* %arrayidx80.s13_19fixp, align 4, !taffo.info !16
  br label %sw.epilog

sw.bb81:                                          ; preds = %if.else
  %dec82 = add nsw i32 %sp.0, -1, !taffo.info !17, !taffo.constinfo !15
  %idxprom83 = sext i32 %dec82 to i64, !taffo.info !17
  %arrayidx84.s13_19fixp = getelementptr inbounds [32 x i32], [32 x i32]* %stack.s13_19fixp, i64 0, i64 %idxprom83, !taffo.info !4
  %s13_19fixp = load i32, i32* %arrayidx84.s13_19fixp, align 4, !taffo.info !4
  %12 = sitofp i32 %s13_19fixp to double, !taffo.info !4
  %13 = fdiv double %12, 5.242880e+05, !taffo.info !4
  %call86.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), double %13), !taffo.initweight !26, !taffo.info !27, !taffo.constinfo !9
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
!4 = !{!5, !6, i1 false, i2 1}
!5 = !{!"fixp", i32 -32, i32 19}
!6 = !{double -3.000000e+03, double 3.000000e+03}
!7 = !{i1 false, !8, i1 false, i2 0}
!8 = !{double 0.000000e+00, double 0.000000e+00}
!9 = !{i1 false, i1 false, i1 false}
!10 = !{i1 false, i1 false, i1 false, i1 false}
!11 = !{i1 false, !12, i1 false, i2 0}
!12 = !{double 0.000000e+00, double 1.000000e+00}
!13 = !{i1 false, !14, i1 false, i2 0}
!14 = !{double 1.000000e+00, double 1.000000e+00}
!15 = !{i1 false, i1 false}
!16 = !{i1 false, !6, i1 false, i2 1}
!17 = !{i1 false, !18, i1 false, i2 0}
!18 = !{double -1.000000e+00, double -1.000000e+00}
!19 = !{i1 false, !20, i1 false, i2 0}
!20 = !{double -2.000000e+00, double -2.000000e+00}
!21 = !{!5, !6, i1 false, i2 -1}
!22 = !{!23, !6, i1 false, i2 -1}
!23 = !{!"fixp", i32 -64, i32 38}
!24 = !{!25, !6, i1 false, i2 -1}
!25 = !{!"fixp", i32 -64, i32 19}
!26 = !{i32 4}
!27 = !{!5, i1 false, i1 false, i2 1}
!28 = !{i1 false, !29, i1 false, i2 0}
!29 = !{double -1.000000e+00, double 0.000000e+00}
!30 = !{i1 false, !31, i1 false, i2 0}
!31 = !{double -1.000000e+00, double 1.000000e+00}
!32 = !{i32 -1}
!33 = !{i32 0, i1 false}
