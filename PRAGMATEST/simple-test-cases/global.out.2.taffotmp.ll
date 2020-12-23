; ModuleID = './global.out.1.taffotmp.ll'
source_filename = "./global.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vec = common dso_local global [10 x double] zeroinitializer, align 16, !taffo.initweight !0, !taffo.info !1
@scal = common dso_local global double 0.000000e+00, align 8, !taffo.initweight !0, !taffo.info !1
@.str = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [11 x i8] c"./global.c\00", section "llvm.metadata"
@llvm.global.annotations = appending global [2 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast ([10 x double]* @vec to i8*), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 6 }, { i8*, i8*, i8*, i32 } { i8* bitcast (double* @scal to i8*), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 7 }], section "llvm.metadata"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !taffo.initweight !4 !taffo.funinfo !5 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %conv = sitofp i32 %1 to double
  %div = fdiv double %conv, 2.000000e+00
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [10 x double], [10 x double]* @vec, i64 0, i64 %idxprom, !taffo.initweight !6, !taffo.info !1
  store double %div, double* %arrayidx, align 8, !taffo.initweight !7, !taffo.info !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store double 5.000000e+00, double* @scal, align 8, !taffo.initweight !6, !taffo.info !1
  store i32 0, i32* %i1, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc8, %for.end
  %4 = load i32, i32* %i1, align 4
  %cmp3 = icmp slt i32 %4, 10
  br i1 %cmp3, label %for.body5, label %for.end10

for.body5:                                        ; preds = %for.cond2
  %5 = load i32, i32* %i1, align 4
  %idxprom6 = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds [10 x double], [10 x double]* @vec, i64 0, i64 %idxprom6, !taffo.initweight !6, !taffo.info !1
  %6 = load double, double* %arrayidx7, align 8, !taffo.initweight !7, !taffo.info !1
  %7 = load double, double* @scal, align 8, !taffo.initweight !6, !taffo.info !1
  %mul = fmul double %6, %7, !taffo.initweight !7, !taffo.info !1
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), double %mul), !taffo.initweight !8, !taffo.info !1
  br label %for.inc8

for.inc8:                                         ; preds = %for.body5
  %8 = load i32, i32* %i1, align 4
  %inc9 = add nsw i32 %8, 1
  store i32 %inc9, i32* %i1, align 4
  br label %for.cond2

for.end10:                                        ; preds = %for.cond2
  ret i32 0
}

declare !taffo.initweight !9 !taffo.funinfo !10 dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 0}
!1 = !{i1 false, i1 false, i1 false, i2 1}
!2 = !{i32 1, !"wchar_size", i32 4}
!3 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!4 = !{i32 -1, i32 -1}
!5 = !{i32 0, i1 false, i32 0, i1 false}
!6 = !{i32 1}
!7 = !{i32 2}
!8 = !{i32 3}
!9 = !{i32 -1}
!10 = !{i32 0, i1 false}
