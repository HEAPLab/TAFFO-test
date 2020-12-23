; ModuleID = './caldaia.out.5.taffotmp.ll'
source_filename = "./caldaia.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.3 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Media picchi: \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"Media totale: \00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !taffo.initweight !2 !taffo.funinfo !3 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %p1.s13_19fixp = alloca i32, align 4, !taffo.info !4
  %p2.s13_19fixp = alloca i32, align 4, !taffo.info !4
  %p3 = alloca float, align 4
  %sPeak.s13_19fixp = alloca i32, align 4, !taffo.info !4
  %sAll.s13_19fixp = alloca i32, align 4, !taffo.info !4
  %cPeak = alloca i32, align 4
  %cAll = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 -524288, i32* %p1.s13_19fixp, align 4, !taffo.info !7
  store i32 -524288, i32* %p2.s13_19fixp, align 4, !taffo.info !7
  store float -1.000000e+00, float* %p3, align 4
  store i32 0, i32* %sAll.s13_19fixp, align 4, !taffo.info !7
  store i32 0, i32* %sPeak.s13_19fixp, align 4, !taffo.info !7
  store i32 0, i32* %cAll, align 4
  store i32 0, i32* %cPeak, align 4
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), float* %p3)
  br label %while.cond

while.cond:                                       ; preds = %if.end13, %entry
  %0 = load float, float* %p3, align 4
  %cmp = fcmp ogt float %0, 0.000000e+00
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load float, float* %p3, align 4
  %cmp5 = fcmp ogt float %1, 0.000000e+00
  br i1 %cmp5, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %while.body
  %s13_19fixp10 = load i32, i32* %p2.s13_19fixp, align 4, !taffo.info !4
  %2 = icmp sgt i32 %s13_19fixp10, 0, !taffo.info !8
  br i1 %2, label %land.lhs.true7, label %if.end13, !taffo.initweight !9, !taffo.info !7

land.lhs.true7:                                   ; preds = %land.lhs.true
  %s13_19fixp5 = load i32, i32* %p1.s13_19fixp, align 4, !taffo.info !4
  %3 = icmp sgt i32 %s13_19fixp5, 0, !taffo.info !8
  br i1 %3, label %if.then, label %if.end13, !taffo.initweight !9, !taffo.info !7

if.then:                                          ; preds = %land.lhs.true7
  %4 = load float, float* %p3, align 4
  %s13_19fixp9 = load i32, i32* %p2.s13_19fixp, align 4, !taffo.info !4
  %5 = fmul float 5.242880e+05, %4, !taffo.info !8
  %6 = fptosi float %5 to i32, !taffo.info !8
  %7 = icmp slt i32 %6, %s13_19fixp9, !taffo.info !8
  br i1 %7, label %land.lhs.true10, label %if.end, !taffo.initweight !9, !taffo.info !7

land.lhs.true10:                                  ; preds = %if.then
  %s13_19fixp4 = load i32, i32* %p1.s13_19fixp, align 4, !taffo.info !4
  %s13_19fixp8 = load i32, i32* %p2.s13_19fixp, align 4, !taffo.info !4
  %8 = icmp slt i32 %s13_19fixp4, %s13_19fixp8, !taffo.info !8
  br i1 %8, label %if.then12, label %if.end, !taffo.initweight !9, !taffo.info !7

if.then12:                                        ; preds = %land.lhs.true10
  %s13_19fixp7 = load i32, i32* %p2.s13_19fixp, align 4, !taffo.info !4
  %s13_19fixp1 = load i32, i32* %sPeak.s13_19fixp, align 4, !taffo.info !4
  %add.s13_19fixp = add i32 %s13_19fixp1, %s13_19fixp7, !taffo.info !4
  store i32 %add.s13_19fixp, i32* %sPeak.s13_19fixp, align 4, !taffo.info !7
  %9 = load i32, i32* %cPeak, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %cPeak, align 4
  br label %if.end

if.end:                                           ; preds = %if.then12, %land.lhs.true10, %if.then
  br label %if.end13

if.end13:                                         ; preds = %if.end, %land.lhs.true7, %land.lhs.true, %while.body
  %10 = load float, float* %p3, align 4
  %s13_19fixp3 = load i32, i32* %sAll.s13_19fixp, align 4, !taffo.info !4
  %11 = fmul float 5.242880e+05, %10, !taffo.info !4
  %12 = fptosi float %11 to i32, !taffo.info !4
  %add14.s13_19fixp = add i32 %s13_19fixp3, %12, !taffo.info !4
  store i32 %add14.s13_19fixp, i32* %sAll.s13_19fixp, align 4, !taffo.info !7
  %13 = load i32, i32* %cAll, align 4
  %inc15 = add nsw i32 %13, 1
  store i32 %inc15, i32* %cAll, align 4
  %s13_19fixp6 = load i32, i32* %p2.s13_19fixp, align 4, !taffo.info !4
  store i32 %s13_19fixp6, i32* %p1.s13_19fixp, align 4, !taffo.info !7
  %14 = load float, float* %p3, align 4
  %15 = fmul float 5.242880e+05, %14, !taffo.info !7
  %16 = fptosi float %15 to i32, !taffo.info !7
  store i32 %16, i32* %p2.s13_19fixp, align 4, !taffo.info !7
  %call16 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), float* %p3)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %17 = load i32, i32* %cPeak, align 4
  %cmp18 = icmp sgt i32 %17, 0
  br i1 %cmp18, label %if.then19, label %if.else

if.then19:                                        ; preds = %while.end
  %s13_19fixp = load i32, i32* %sPeak.s13_19fixp, align 4, !taffo.info !4
  %18 = load i32, i32* %cPeak, align 4
  %19 = sext i32 %s13_19fixp to i64, !taffo.info !4
  %20 = sext i32 %18 to i64
  %21 = sdiv i64 %19, %20, !taffo.info !10
  %div.s13_19fixp = trunc i64 %21 to i32, !taffo.info !4
  %22 = sitofp i32 %div.s13_19fixp to double, !taffo.info !4
  %23 = fdiv double %22, 5.242880e+05, !taffo.info !4
  %call21.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), double %23), !taffo.initweight !12, !taffo.info !8
  br label %if.end23

if.else:                                          ; preds = %while.end
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then19
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %24 = load i32, i32* %cAll, align 4
  %cmp25 = icmp sgt i32 %24, 0
  br i1 %cmp25, label %if.then27, label %if.else32

if.then27:                                        ; preds = %if.end23
  %s13_19fixp2 = load i32, i32* %sAll.s13_19fixp, align 4, !taffo.info !4
  %25 = load i32, i32* %cAll, align 4
  %26 = sext i32 %s13_19fixp2 to i64, !taffo.info !4
  %27 = sext i32 %25 to i64
  %28 = sdiv i64 %26, %27, !taffo.info !10
  %div29.s13_19fixp = trunc i64 %28 to i32, !taffo.info !4
  %29 = sitofp i32 %div29.s13_19fixp to double, !taffo.info !4
  %30 = fdiv double %29, 5.242880e+05, !taffo.info !4
  %call31.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), double %30), !taffo.initweight !12, !taffo.info !8
  br label %if.end34

if.else32:                                        ; preds = %if.end23
  %call33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %if.end34

if.end34:                                         ; preds = %if.else32, %if.then27
  ret i32 0
}

declare !taffo.initweight !13 !taffo.funinfo !14 dso_local i32 @__isoc99_scanf(i8*, ...) #1

declare !taffo.initweight !13 !taffo.funinfo !14 dso_local i32 @printf(i8*, ...) #1

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
!7 = !{i1 false, !6, i1 false, i2 1}
!8 = !{!5, i1 false, i1 false, i2 1}
!9 = !{i32 3}
!10 = !{!11, !6, i1 false, i2 1}
!11 = !{!"fixp", i32 -64, i32 19}
!12 = !{i32 4}
!13 = !{i32 -1}
!14 = !{i32 0, i1 false}
