; ModuleID = './array1.out.4.taffotmp.ll'
source_filename = "./array1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.3 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"add: %f\0Asub: %f\0Adiv: %f\0Amul: %f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !taffo.initweight !2 !taffo.funinfo !3 {
entry:
  %numbers.s13_19fixp = alloca [30 x i32], align 16, !taffo.info !4
  %tmp = alloca float, align 4, !taffo.initweight !7, !taffo.info !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc4, %for.inc ], !taffo.info !9
  %n.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !9
  %cmp = icmp slt i32 %i.0, 30, !taffo.info !11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), float* %tmp), !taffo.initweight !13, !taffo.info !8, !taffo.constinfo !14
  %cmp3 = icmp slt i32 %call, 1, !taffo.initweight !15, !taffo.info !9
  br i1 %cmp3, label %if.then, label %if.end, !taffo.initweight !16, !taffo.info !8

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %0 = load float, float* %tmp, align 4, !taffo.initweight !13, !taffo.info !8
  %1 = fmul float 5.242880e+05, %0, !taffo.info !8
  %2 = fptosi float %1 to i32, !taffo.info !8
  %inc = add nsw i32 %n.0, 1, !taffo.info !11, !taffo.constinfo !17
  %idxprom = sext i32 %n.0 to i64, !taffo.info !18
  %arrayidx.s13_19fixp = getelementptr inbounds [30 x i32], [30 x i32]* %numbers.s13_19fixp, i64 0, i64 %idxprom, !taffo.info !4
  store i32 %2, i32* %arrayidx.s13_19fixp, align 4, !taffo.info !20
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc4 = add nsw i32 %i.0, 1, !taffo.info !11, !taffo.constinfo !17
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc31, %for.end
  %sub.0.s13_19fixp = phi i32 [ 0, %for.end ], [ %sub18.s13_19fixp, %for.inc31 ], !taffo.info !4
  %add.0.s13_19fixp = phi i32 [ 0, %for.end ], [ %add15.s13_19fixp, %for.inc31 ], !taffo.info !4
  %div.0.s13_19fixp = phi i32 [ 524288, %for.end ], [ %div.1.s13_19fixp, %for.inc31 ], !taffo.info !4
  %mul.0.s13_19fixp = phi i32 [ 524288, %for.end ], [ %mul30.s13_19fixp, %for.inc31 ], !taffo.info !4
  %i9.0 = phi i32 [ 0, %for.end ], [ %inc32, %for.inc31 ], !taffo.info !9
  %3 = sitofp i32 %mul.0.s13_19fixp to double, !taffo.info !4
  %4 = fdiv double %3, 5.242880e+05, !taffo.info !4
  %5 = sitofp i32 %div.0.s13_19fixp to double, !taffo.info !21
  %6 = fdiv double %5, 5.242880e+05, !taffo.info !21
  %7 = sitofp i32 %add.0.s13_19fixp to double, !taffo.info !4
  %8 = fdiv double %7, 5.242880e+05, !taffo.info !4
  %9 = sitofp i32 %sub.0.s13_19fixp to double, !taffo.info !4
  %10 = fdiv double %9, 5.242880e+05, !taffo.info !4
  %cmp11 = icmp slt i32 %i9.0, %n.0, !taffo.info !9
  br i1 %cmp11, label %for.body12, label %for.end33

for.body12:                                       ; preds = %for.cond10
  %idxprom13 = sext i32 %i9.0 to i64, !taffo.info !18
  %arrayidx14.s13_19fixp = getelementptr inbounds [30 x i32], [30 x i32]* %numbers.s13_19fixp, i64 0, i64 %idxprom13, !taffo.info !4
  %s13_19fixp12 = load i32, i32* %arrayidx14.s13_19fixp, align 4, !taffo.info !4
  %add15.s13_19fixp = add i32 %add.0.s13_19fixp, %s13_19fixp12, !taffo.info !4
  %idxprom16 = sext i32 %i9.0 to i64, !taffo.info !18
  %arrayidx17.s13_19fixp = getelementptr inbounds [30 x i32], [30 x i32]* %numbers.s13_19fixp, i64 0, i64 %idxprom16, !taffo.info !4
  %s13_19fixp11 = load i32, i32* %arrayidx17.s13_19fixp, align 4, !taffo.info !4
  %sub18.s13_19fixp = sub i32 %sub.0.s13_19fixp, %s13_19fixp11, !taffo.info !4
  %idxprom19 = sext i32 %i9.0 to i64, !taffo.info !18
  %arrayidx20.s13_19fixp = getelementptr inbounds [30 x i32], [30 x i32]* %numbers.s13_19fixp, i64 0, i64 %idxprom19, !taffo.info !4
  %s13_19fixp10 = load i32, i32* %arrayidx20.s13_19fixp, align 4, !taffo.info !4
  %11 = icmp ne i32 %s13_19fixp10, 0, !taffo.info !22
  br i1 %11, label %if.then23, label %if.end27, !taffo.initweight !23, !taffo.info !20

if.then23:                                        ; preds = %for.body12
  %idxprom24 = sext i32 %i9.0 to i64, !taffo.info !18
  %arrayidx25.s13_19fixp = getelementptr inbounds [30 x i32], [30 x i32]* %numbers.s13_19fixp, i64 0, i64 %idxprom24, !taffo.info !4
  %s13_19fixp9 = load i32, i32* %arrayidx25.s13_19fixp, align 4, !taffo.info !4
  %12 = sext i32 %div.0.s13_19fixp to i64, !taffo.info !21
  %13 = shl i64 %12, 19, !taffo.info !21
  %14 = sext i32 %s13_19fixp9 to i64, !taffo.info !4
  %15 = sdiv i64 %13, %14, !taffo.info !24
  %div26.s13_19fixp = trunc i64 %15 to i32, !taffo.info !21
  br label %if.end27

if.end27:                                         ; preds = %for.body12, %if.then23
  %div.1.s13_19fixp = phi i32 [ %div26.s13_19fixp, %if.then23 ], [ %div.0.s13_19fixp, %for.body12 ], !taffo.info !4
  %idxprom28 = sext i32 %i9.0 to i64, !taffo.info !18
  %arrayidx29.s13_19fixp = getelementptr inbounds [30 x i32], [30 x i32]* %numbers.s13_19fixp, i64 0, i64 %idxprom28, !taffo.info !4
  %s13_19fixp = load i32, i32* %arrayidx29.s13_19fixp, align 4, !taffo.info !4
  %16 = sext i32 %mul.0.s13_19fixp to i64, !taffo.info !4
  %17 = sext i32 %s13_19fixp to i64, !taffo.info !4
  %18 = mul i64 %16, %17, !taffo.info !26
  %19 = ashr i64 %18, 19, !taffo.info !26
  %mul30.s13_19fixp = trunc i64 %19 to i32, !taffo.info !4
  br label %for.inc31

for.inc31:                                        ; preds = %if.end27
  %inc32 = add nsw i32 %i9.0, 1, !taffo.info !11, !taffo.constinfo !17
  br label %for.cond10

for.end33:                                        ; preds = %for.cond10
  %call38.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), double %8, double %10, double %6, double %4), !taffo.initweight !16, !taffo.info !22, !taffo.constinfo !28
  ret i32 0
}

declare !taffo.initweight !29 !taffo.funinfo !30 dso_local i32 @__isoc99_scanf(i8*, ...) #1

declare !taffo.initweight !29 !taffo.funinfo !30 dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{i32 -1, i32 -1}
!3 = !{i32 0, i1 false, i32 0, i1 false}
!4 = !{!5, !6, i1 false, i2 1}
!5 = !{!"fixp", i32 -32, i32 19}
!6 = !{double -3.000000e+03, double 3.000000e+03}
!7 = !{i32 0}
!8 = !{i1 false, !6, i1 false, i2 0}
!9 = !{i1 false, !10, i1 false, i2 0}
!10 = !{double 0.000000e+00, double 1.000000e+00}
!11 = !{i1 false, !12, i1 false, i2 0}
!12 = !{double 1.000000e+00, double 1.000000e+00}
!13 = !{i32 1}
!14 = !{i1 false, i1 false, i1 false}
!15 = !{i32 2}
!16 = !{i32 3}
!17 = !{i1 false, i1 false}
!18 = !{i1 false, !19, i1 false, i2 0}
!19 = !{double 0.000000e+00, double 0.000000e+00}
!20 = !{i1 false, i1 false, i1 false, i2 1}
!21 = !{!5, !6, i1 false, i2 -1}
!22 = !{!5, i1 false, i1 false, i2 1}
!23 = !{i32 5}
!24 = !{!25, !6, i1 false, i2 -1}
!25 = !{!"fixp", i32 -64, i32 19}
!26 = !{!27, !6, i1 false, i2 1}
!27 = !{!"fixp", i32 -64, i32 38}
!28 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!29 = !{i32 -1}
!30 = !{i32 0, i1 false}
