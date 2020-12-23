; ModuleID = './constant_globals.out.4.taffotmp.ll'
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
@k.fixp = internal global [5 x i32] [i32 8388608, i32 16777216, i32 25165824, i32 33554432, i32 41943040], align 16, !taffo.info !1
@kx.fixp = internal global [3 x [3 x i32]] [[3 x i32] [i32 -8388608, i32 -16777216, i32 -8388608], [3 x i32] zeroinitializer, [3 x i32] [i32 8388608, i32 16777216, i32 8388608]], align 16, !taffo.info !1
@ky.fixp = internal global [3 x [3 x i32]] [[3 x i32] [i32 -8388608, i32 0, i32 8388608], [3 x i32] [i32 -16777216, i32 0, i32 16777216], [3 x i32] [i32 -8388608, i32 0, i32 8388608]], align 16, !taffo.info !1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !taffo.initweight !6 !taffo.funinfo !7 {
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
  %arrayidx.s9_23fixp = getelementptr inbounds [5 x i32], [5 x i32]* @k.fixp, i64 0, i64 %idxprom, !taffo.info !1
  %s9_23fixp = load i32, i32* %arrayidx.s9_23fixp, align 4, !taffo.info !1
  %2 = sitofp i32 %s9_23fixp to double, !taffo.info !1
  %3 = fdiv double %2, 0x4160000000000000, !taffo.info !1
  %call.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), double %3), !taffo.initweight !8, !taffo.info !9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %i2, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc26, %for.end
  %5 = load i32, i32* %i2, align 4
  %cmp4 = icmp slt i32 %5, 3
  br i1 %cmp4, label %for.body6, label %for.end28

for.body6:                                        ; preds = %for.cond3
  store i32 0, i32* %j, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc22, %for.body6
  %6 = load i32, i32* %j, align 4
  %cmp8 = icmp slt i32 %6, 3
  br i1 %cmp8, label %for.body10, label %for.end24

for.body10:                                       ; preds = %for.cond7
  %7 = load i32, i32* %i2, align 4
  %idxprom11 = sext i32 %7 to i64
  %arrayidx12.s9_23fixp = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* @kx.fixp, i64 0, i64 %idxprom11, !taffo.info !1
  %8 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %8 to i64
  %arrayidx14.s9_23fixp = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx12.s9_23fixp, i64 0, i64 %idxprom13, !taffo.info !1
  %s9_23fixp1 = load i32, i32* %arrayidx14.s9_23fixp, align 4, !taffo.info !1
  %9 = sitofp i32 %s9_23fixp1 to double, !taffo.info !1
  %10 = fdiv double %9, 0x4160000000000000, !taffo.info !1
  %11 = load i32, i32* %i2, align 4
  %idxprom16 = sext i32 %11 to i64
  %arrayidx17.s9_23fixp = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* @ky.fixp, i64 0, i64 %idxprom16, !taffo.info !1
  %12 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %12 to i64
  %arrayidx19.s9_23fixp = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx17.s9_23fixp, i64 0, i64 %idxprom18, !taffo.info !1
  %s9_23fixp2 = load i32, i32* %arrayidx19.s9_23fixp, align 4, !taffo.info !1
  %13 = sitofp i32 %s9_23fixp2 to double, !taffo.info !1
  %14 = fdiv double %13, 0x4160000000000000, !taffo.info !1
  %call21.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), double %10, double %14), !taffo.initweight !10, !taffo.info !9
  br label %for.inc22

for.inc22:                                        ; preds = %for.body10
  %15 = load i32, i32* %j, align 4
  %inc23 = add nsw i32 %15, 1
  store i32 %inc23, i32* %j, align 4
  br label %for.cond7

for.end24:                                        ; preds = %for.cond7
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %for.inc26

for.inc26:                                        ; preds = %for.end24
  %16 = load i32, i32* %i2, align 4
  %inc27 = add nsw i32 %16, 1
  store i32 %inc27, i32* %i2, align 4
  br label %for.cond3

for.end28:                                        ; preds = %for.cond3
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare !taffo.initweight !11 !taffo.funinfo !12 dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!4}
!llvm.ident = !{!5}

!0 = !{i32 0}
!1 = !{!2, !3, i1 false, i2 1}
!2 = !{!"fixp", i32 -32, i32 23}
!3 = !{double -2.550000e+02, double 2.550000e+02}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!6 = !{i32 -1, i32 -1}
!7 = !{i32 0, i1 false, i32 0, i1 false}
!8 = !{i32 4}
!9 = !{!2, i1 false, i1 false, i2 1}
!10 = !{i32 5}
!11 = !{i32 -1}
!12 = !{i32 0, i1 false}
