; ModuleID = './array1.out.5.taffotmp.ll'
source_filename = "./array1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.3 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"add: %f\0Asub: %f\0Adiv: %f\0Amul: %f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !taffo.initweight !2 !taffo.funinfo !3 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %numbers.s13_19fixp = alloca [30 x i32], align 16, !taffo.info !4
  %n = alloca i32, align 4
  %tmp = alloca float, align 4, !taffo.initweight !7, !taffo.info !8
  %i = alloca i32, align 4
  %add.s13_19fixp = alloca i32, align 4, !taffo.info !4
  %sub.s13_19fixp = alloca i32, align 4, !taffo.info !4
  %div.s13_19fixp = alloca i32, align 4, !taffo.info !4
  %mul.s13_19fixp = alloca i32, align 4, !taffo.info !4
  %i9 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %n, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 30
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), float* %tmp), !taffo.initweight !9, !taffo.info !8
  %cmp3 = icmp slt i32 %call, 1, !taffo.initweight !10, !taffo.info !8
  br i1 %cmp3, label %if.then, label %if.end, !taffo.initweight !11, !taffo.info !8

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %1 = load float, float* %tmp, align 4, !taffo.initweight !9, !taffo.info !8
  %2 = fmul float 5.242880e+05, %1, !taffo.info !8
  %3 = fptosi float %2 to i32, !taffo.info !8
  %4 = load i32, i32* %n, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %n, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx.s13_19fixp = getelementptr inbounds [30 x i32], [30 x i32]* %numbers.s13_19fixp, i64 0, i64 %idxprom, !taffo.info !4
  store i32 %3, i32* %arrayidx.s13_19fixp, align 4, !taffo.info !12
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %i, align 4
  %inc4 = add nsw i32 %5, 1
  store i32 %inc4, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  store i32 0, i32* %add.s13_19fixp, align 4, !taffo.info !12
  store i32 0, i32* %sub.s13_19fixp, align 4, !taffo.info !12
  store i32 524288, i32* %div.s13_19fixp, align 4, !taffo.info !12
  store i32 524288, i32* %mul.s13_19fixp, align 4, !taffo.info !12
  store i32 0, i32* %i9, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc31, %for.end
  %6 = load i32, i32* %i9, align 4
  %7 = load i32, i32* %n, align 4
  %cmp11 = icmp slt i32 %6, %7
  br i1 %cmp11, label %for.body12, label %for.end33

for.body12:                                       ; preds = %for.cond10
  %8 = load i32, i32* %i9, align 4
  %idxprom13 = sext i32 %8 to i64
  %arrayidx14.s13_19fixp = getelementptr inbounds [30 x i32], [30 x i32]* %numbers.s13_19fixp, i64 0, i64 %idxprom13, !taffo.info !4
  %s13_19fixp12 = load i32, i32* %arrayidx14.s13_19fixp, align 4, !taffo.info !4
  %s13_19fixp1 = load i32, i32* %add.s13_19fixp, align 4, !taffo.info !4
  %add15.s13_19fixp = add i32 %s13_19fixp1, %s13_19fixp12, !taffo.info !4
  store i32 %add15.s13_19fixp, i32* %add.s13_19fixp, align 4, !taffo.info !12
  %9 = load i32, i32* %i9, align 4
  %idxprom16 = sext i32 %9 to i64
  %arrayidx17.s13_19fixp = getelementptr inbounds [30 x i32], [30 x i32]* %numbers.s13_19fixp, i64 0, i64 %idxprom16, !taffo.info !4
  %s13_19fixp11 = load i32, i32* %arrayidx17.s13_19fixp, align 4, !taffo.info !4
  %s13_19fixp3 = load i32, i32* %sub.s13_19fixp, align 4, !taffo.info !4
  %sub18.s13_19fixp = sub i32 %s13_19fixp3, %s13_19fixp11, !taffo.info !4
  store i32 %sub18.s13_19fixp, i32* %sub.s13_19fixp, align 4, !taffo.info !12
  %10 = load i32, i32* %i9, align 4
  %idxprom19 = sext i32 %10 to i64
  %arrayidx20.s13_19fixp = getelementptr inbounds [30 x i32], [30 x i32]* %numbers.s13_19fixp, i64 0, i64 %idxprom19, !taffo.info !4
  %s13_19fixp10 = load i32, i32* %arrayidx20.s13_19fixp, align 4, !taffo.info !4
  %11 = icmp ne i32 %s13_19fixp10, 0, !taffo.info !13
  br i1 %11, label %if.then23, label %if.end27, !taffo.initweight !14, !taffo.info !12

if.then23:                                        ; preds = %for.body12
  %12 = load i32, i32* %i9, align 4
  %idxprom24 = sext i32 %12 to i64
  %arrayidx25.s13_19fixp = getelementptr inbounds [30 x i32], [30 x i32]* %numbers.s13_19fixp, i64 0, i64 %idxprom24, !taffo.info !4
  %s13_19fixp9 = load i32, i32* %arrayidx25.s13_19fixp, align 4, !taffo.info !4
  %s13_19fixp5 = load i32, i32* %div.s13_19fixp, align 4, !taffo.info !4
  %13 = sext i32 %s13_19fixp5 to i64, !taffo.info !4
  %14 = shl i64 %13, 19, !taffo.info !4
  %15 = sext i32 %s13_19fixp9 to i64, !taffo.info !4
  %16 = sdiv i64 %14, %15, !taffo.info !15
  %div26.s13_19fixp = trunc i64 %16 to i32, !taffo.info !4
  store i32 %div26.s13_19fixp, i32* %div.s13_19fixp, align 4, !taffo.info !12
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %for.body12
  %17 = load i32, i32* %i9, align 4
  %idxprom28 = sext i32 %17 to i64
  %arrayidx29.s13_19fixp = getelementptr inbounds [30 x i32], [30 x i32]* %numbers.s13_19fixp, i64 0, i64 %idxprom28, !taffo.info !4
  %s13_19fixp8 = load i32, i32* %arrayidx29.s13_19fixp, align 4, !taffo.info !4
  %s13_19fixp7 = load i32, i32* %mul.s13_19fixp, align 4, !taffo.info !4
  %18 = sext i32 %s13_19fixp7 to i64, !taffo.info !4
  %19 = sext i32 %s13_19fixp8 to i64, !taffo.info !4
  %20 = mul i64 %18, %19, !taffo.info !17
  %21 = ashr i64 %20, 19, !taffo.info !17
  %mul30.s13_19fixp = trunc i64 %21 to i32, !taffo.info !4
  store i32 %mul30.s13_19fixp, i32* %mul.s13_19fixp, align 4, !taffo.info !12
  br label %for.inc31

for.inc31:                                        ; preds = %if.end27
  %22 = load i32, i32* %i9, align 4
  %inc32 = add nsw i32 %22, 1
  store i32 %inc32, i32* %i9, align 4
  br label %for.cond10

for.end33:                                        ; preds = %for.cond10
  %s13_19fixp = load i32, i32* %add.s13_19fixp, align 4, !taffo.info !4
  %23 = sitofp i32 %s13_19fixp to double, !taffo.info !4
  %24 = fdiv double %23, 5.242880e+05, !taffo.info !4
  %s13_19fixp2 = load i32, i32* %sub.s13_19fixp, align 4, !taffo.info !4
  %25 = sitofp i32 %s13_19fixp2 to double, !taffo.info !4
  %26 = fdiv double %25, 5.242880e+05, !taffo.info !4
  %s13_19fixp4 = load i32, i32* %div.s13_19fixp, align 4, !taffo.info !4
  %27 = sitofp i32 %s13_19fixp4 to double, !taffo.info !4
  %28 = fdiv double %27, 5.242880e+05, !taffo.info !4
  %s13_19fixp6 = load i32, i32* %mul.s13_19fixp, align 4, !taffo.info !4
  %29 = sitofp i32 %s13_19fixp6 to double, !taffo.info !4
  %30 = fdiv double %29, 5.242880e+05, !taffo.info !4
  %call38.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), double %24, double %26, double %28, double %30), !taffo.initweight !11, !taffo.info !13
  ret i32 0
}

declare !taffo.initweight !19 !taffo.funinfo !20 dso_local i32 @__isoc99_scanf(i8*, ...) #1

declare !taffo.initweight !19 !taffo.funinfo !20 dso_local i32 @printf(i8*, ...) #1

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
!9 = !{i32 1}
!10 = !{i32 2}
!11 = !{i32 3}
!12 = !{i1 false, !6, i1 false, i2 1}
!13 = !{!5, i1 false, i1 false, i2 1}
!14 = !{i32 5}
!15 = !{!16, !6, i1 false, i2 1}
!16 = !{!"fixp", i32 -64, i32 19}
!17 = !{!18, !6, i1 false, i2 1}
!18 = !{!"fixp", i32 -64, i32 38}
!19 = !{i32 -1}
!20 = !{i32 0, i1 false}
