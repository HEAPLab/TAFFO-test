; ModuleID = './array1.out.4.taffotmp.ll'
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
  %numbers = alloca [30 x float], align 16, !taffo.initweight !4, !taffo.info !5
  %n = alloca i32, align 4
  %tmp = alloca float, align 4, !taffo.initweight !4, !taffo.info !8
  %i = alloca i32, align 4
  %add = alloca float, align 4, !taffo.initweight !4, !taffo.info !5
  %sub = alloca float, align 4, !taffo.initweight !4, !taffo.info !5
  %div = alloca float, align 4, !taffo.initweight !4, !taffo.info !5
  %mul = alloca float, align 4, !taffo.initweight !4, !taffo.info !5
  %i9 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %numbers1 = bitcast [30 x float]* %numbers to i8*, !taffo.initweight !9, !taffo.info !10
  store i32 0, i32* %n, align 4
  %tmp2 = bitcast float* %tmp to i8*, !taffo.initweight !9, !taffo.info !8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 30
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), float* %tmp), !taffo.initweight !9, !taffo.info !8
  %cmp3 = icmp slt i32 %call, 1, !taffo.initweight !11, !taffo.info !8
  br i1 %cmp3, label %if.then, label %if.end, !taffo.initweight !12, !taffo.info !8

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %1 = load float, float* %tmp, align 4, !taffo.initweight !9, !taffo.info !8
  %2 = load i32, i32* %n, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %n, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [30 x float], [30 x float]* %numbers, i64 0, i64 %idxprom, !taffo.initweight !9, !taffo.info !5
  store float %1, float* %arrayidx, align 4, !taffo.initweight !11, !taffo.info !13
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %3 = load i32, i32* %i, align 4
  %inc4 = add nsw i32 %3, 1
  store i32 %inc4, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %add5 = bitcast float* %add to i8*, !taffo.initweight !9, !taffo.info !10
  store float 0.000000e+00, float* %add, align 4, !taffo.initweight !9, !taffo.info !13
  %sub6 = bitcast float* %sub to i8*, !taffo.initweight !9, !taffo.info !10
  store float 0.000000e+00, float* %sub, align 4, !taffo.initweight !9, !taffo.info !13
  %div7 = bitcast float* %div to i8*, !taffo.initweight !9, !taffo.info !10
  store float 1.000000e+00, float* %div, align 4, !taffo.initweight !9, !taffo.info !13
  %mul8 = bitcast float* %mul to i8*, !taffo.initweight !9, !taffo.info !10
  store float 1.000000e+00, float* %mul, align 4, !taffo.initweight !9, !taffo.info !13
  store i32 0, i32* %i9, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc31, %for.end
  %4 = load i32, i32* %i9, align 4
  %5 = load i32, i32* %n, align 4
  %cmp11 = icmp slt i32 %4, %5
  br i1 %cmp11, label %for.body12, label %for.end33

for.body12:                                       ; preds = %for.cond10
  %6 = load i32, i32* %i9, align 4
  %idxprom13 = sext i32 %6 to i64
  %arrayidx14 = getelementptr inbounds [30 x float], [30 x float]* %numbers, i64 0, i64 %idxprom13, !taffo.initweight !9, !taffo.info !5
  %7 = load float, float* %arrayidx14, align 4, !taffo.initweight !11, !taffo.info !5
  %8 = load float, float* %add, align 4, !taffo.initweight !9, !taffo.info !5
  %add15 = fadd float %8, %7, !taffo.initweight !11, !taffo.info !5
  store float %add15, float* %add, align 4, !taffo.initweight !9, !taffo.info !13
  %9 = load i32, i32* %i9, align 4
  %idxprom16 = sext i32 %9 to i64
  %arrayidx17 = getelementptr inbounds [30 x float], [30 x float]* %numbers, i64 0, i64 %idxprom16, !taffo.initweight !9, !taffo.info !5
  %10 = load float, float* %arrayidx17, align 4, !taffo.initweight !11, !taffo.info !5
  %11 = load float, float* %sub, align 4, !taffo.initweight !9, !taffo.info !5
  %sub18 = fsub float %11, %10, !taffo.initweight !11, !taffo.info !5
  store float %sub18, float* %sub, align 4, !taffo.initweight !9, !taffo.info !13
  %12 = load i32, i32* %i9, align 4
  %idxprom19 = sext i32 %12 to i64
  %arrayidx20 = getelementptr inbounds [30 x float], [30 x float]* %numbers, i64 0, i64 %idxprom19, !taffo.initweight !9, !taffo.info !5
  %13 = load float, float* %arrayidx20, align 4, !taffo.initweight !11, !taffo.info !5
  %conv = fpext float %13 to double, !taffo.initweight !12, !taffo.info !5
  %cmp21 = fcmp une double %conv, 0.000000e+00, !taffo.initweight !14, !taffo.info !10
  br i1 %cmp21, label %if.then23, label %if.end27, !taffo.initweight !15, !taffo.info !13

if.then23:                                        ; preds = %for.body12
  %14 = load i32, i32* %i9, align 4
  %idxprom24 = sext i32 %14 to i64
  %arrayidx25 = getelementptr inbounds [30 x float], [30 x float]* %numbers, i64 0, i64 %idxprom24, !taffo.initweight !9, !taffo.info !5
  %15 = load float, float* %arrayidx25, align 4, !taffo.initweight !11, !taffo.info !5
  %16 = load float, float* %div, align 4, !taffo.initweight !9, !taffo.info !5
  %div26 = fdiv float %16, %15, !taffo.initweight !11, !taffo.info !5
  store float %div26, float* %div, align 4, !taffo.initweight !9, !taffo.info !13
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %for.body12
  %17 = load i32, i32* %i9, align 4
  %idxprom28 = sext i32 %17 to i64
  %arrayidx29 = getelementptr inbounds [30 x float], [30 x float]* %numbers, i64 0, i64 %idxprom28, !taffo.initweight !9, !taffo.info !5
  %18 = load float, float* %arrayidx29, align 4, !taffo.initweight !11, !taffo.info !5
  %19 = load float, float* %mul, align 4, !taffo.initweight !9, !taffo.info !5
  %mul30 = fmul float %19, %18, !taffo.initweight !11, !taffo.info !5
  store float %mul30, float* %mul, align 4, !taffo.initweight !9, !taffo.info !13
  br label %for.inc31

for.inc31:                                        ; preds = %if.end27
  %20 = load i32, i32* %i9, align 4
  %inc32 = add nsw i32 %20, 1
  store i32 %inc32, i32* %i9, align 4
  br label %for.cond10

for.end33:                                        ; preds = %for.cond10
  %21 = load float, float* %add, align 4, !taffo.initweight !9, !taffo.info !5
  %conv34 = fpext float %21 to double, !taffo.initweight !11, !taffo.info !5
  %22 = load float, float* %sub, align 4, !taffo.initweight !9, !taffo.info !5
  %conv35 = fpext float %22 to double, !taffo.initweight !11, !taffo.info !5
  %23 = load float, float* %div, align 4, !taffo.initweight !9, !taffo.info !5
  %conv36 = fpext float %23 to double, !taffo.initweight !11, !taffo.info !5
  %24 = load float, float* %mul, align 4, !taffo.initweight !9, !taffo.info !5
  %conv37 = fpext float %24 to double, !taffo.initweight !11, !taffo.info !5
  %call38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), double %conv34, double %conv35, double %conv36, double %conv37), !taffo.initweight !12, !taffo.info !10
  ret i32 0
}

declare !taffo.initweight !16 !taffo.funinfo !17 dso_local i32 @__isoc99_scanf(i8*, ...) #1

declare !taffo.initweight !16 !taffo.funinfo !17 dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

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
!8 = !{i1 false, !7, i1 false, i2 0}
!9 = !{i32 1}
!10 = !{!6, i1 false, i1 false, i2 1}
!11 = !{i32 2}
!12 = !{i32 3}
!13 = !{i1 false, !7, i1 false, i2 1}
!14 = !{i32 4}
!15 = !{i32 5}
!16 = !{i32 -1}
!17 = !{i32 0, i1 false}
