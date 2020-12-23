; ModuleID = './constant_globals.out.1.taffotmp.ll'
source_filename = "./constant_globals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%f \00", align 1
@k = internal global [5 x float] [float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00], align 16, !taffo.initweight !0, !taffo.info !1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"(%f, %f) \00", align 1
@kx = internal global [3 x [3 x float]] [[3 x float] [float -1.000000e+00, float -2.000000e+00, float -1.000000e+00], [3 x float] zeroinitializer, [3 x float] [float 1.000000e+00, float 2.000000e+00, float 1.000000e+00]], align 16, !taffo.initweight !0, !taffo.info !1
@ky = internal global [3 x [3 x float]] [[3 x float] [float -1.000000e+00, float 0.000000e+00, float 1.000000e+00], [3 x float] [float -2.000000e+00, float 0.000000e+00, float 2.000000e+00], [3 x float] [float -1.000000e+00, float 0.000000e+00, float 1.000000e+00]], align 16, !taffo.initweight !0, !taffo.info !1
@.str.3 = private unnamed_addr constant [15 x i8] c"range -255 255\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [21 x i8] c"./constant_globals.c\00", section "llvm.metadata"
@llvm.global.annotations = appending global [3 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast ([5 x float]* @k to i8*), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i32 5 }, { i8*, i8*, i8*, i32 } { i8* bitcast ([3 x [3 x float]]* @kx to i8*), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i32 9 }, { i8*, i8*, i8*, i32 } { i8* bitcast ([3 x [3 x float]]* @ky to i8*), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i32 17 }], section "llvm.metadata"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !taffo.initweight !5 !taffo.funinfo !6 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %i2 = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [5 x float], [5 x float]* @k, i64 0, i64 %idxprom, !taffo.initweight !7, !taffo.info !1
  %2 = load float, float* %arrayidx, align 4, !taffo.initweight !8, !taffo.info !1
  %conv = fpext float %2 to double, !taffo.initweight !9, !taffo.info !1
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), double %conv), !taffo.initweight !10, !taffo.info !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %i2, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc26, %for.end
  %4 = load i32, i32* %i2, align 4
  %cmp4 = icmp slt i32 %4, 3
  br i1 %cmp4, label %for.body6, label %for.end28

for.body6:                                        ; preds = %for.cond3
  store i32 0, i32* %j, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc22, %for.body6
  %5 = load i32, i32* %j, align 4
  %cmp8 = icmp slt i32 %5, 3
  br i1 %cmp8, label %for.body10, label %for.end24

for.body10:                                       ; preds = %for.cond7
  %6 = load i32, i32* %i2, align 4
  %idxprom11 = sext i32 %6 to i64
  %arrayidx12 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* @kx, i64 0, i64 %idxprom11, !taffo.initweight !7, !taffo.info !1
  %7 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %7 to i64
  %arrayidx14 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx12, i64 0, i64 %idxprom13, !taffo.initweight !8, !taffo.info !1
  %8 = load float, float* %arrayidx14, align 4, !taffo.initweight !9, !taffo.info !1
  %conv15 = fpext float %8 to double, !taffo.initweight !10, !taffo.info !1
  %9 = load i32, i32* %i2, align 4
  %idxprom16 = sext i32 %9 to i64
  %arrayidx17 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* @ky, i64 0, i64 %idxprom16, !taffo.initweight !7, !taffo.info !1
  %10 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %10 to i64
  %arrayidx19 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx17, i64 0, i64 %idxprom18, !taffo.initweight !8, !taffo.info !1
  %11 = load float, float* %arrayidx19, align 4, !taffo.initweight !9, !taffo.info !1
  %conv20 = fpext float %11 to double, !taffo.initweight !10, !taffo.info !1
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), double %conv15, double %conv20), !taffo.initweight !11, !taffo.info !1
  br label %for.inc22

for.inc22:                                        ; preds = %for.body10
  %12 = load i32, i32* %j, align 4
  %inc23 = add nsw i32 %12, 1
  store i32 %inc23, i32* %j, align 4
  br label %for.cond7

for.end24:                                        ; preds = %for.cond7
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %for.inc26

for.inc26:                                        ; preds = %for.end24
  %13 = load i32, i32* %i2, align 4
  %inc27 = add nsw i32 %13, 1
  store i32 %inc27, i32* %i2, align 4
  br label %for.cond3

for.end28:                                        ; preds = %for.cond3
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare !taffo.initweight !12 !taffo.funinfo !13 dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!3}
!llvm.ident = !{!4}

!0 = !{i32 0}
!1 = !{i1 false, !2, i1 false, i2 1}
!2 = !{double -2.550000e+02, double 2.550000e+02}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!5 = !{i32 -1, i32 -1}
!6 = !{i32 0, i1 false, i32 0, i1 false}
!7 = !{i32 1}
!8 = !{i32 2}
!9 = !{i32 3}
!10 = !{i32 4}
!11 = !{i32 5}
!12 = !{i32 -1}
!13 = !{i32 0, i1 false}
