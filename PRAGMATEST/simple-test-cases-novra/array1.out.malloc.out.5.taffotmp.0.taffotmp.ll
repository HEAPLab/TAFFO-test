; ModuleID = './malloc.out.5.taffotmp.ll'
source_filename = "./malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.2 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%a\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !taffo.initweight !2 !taffo.funinfo !3 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %test.s10_22fixp = alloca i32*, align 8, !taffo.info !4
  %i = alloca i32, align 4
  %tmp = alloca float, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call noalias i8* @malloc(i64 40) #3
  %s10_22fixp = bitcast i8* %call to i32*, !taffo.info !4
  store i32* %s10_22fixp, i32** %test.s10_22fixp, align 8, !taffo.info !7
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), float* %tmp)
  %1 = load float, float* %tmp, align 4
  %2 = fmul float 0x4150000000000000, %1, !taffo.info !4
  %3 = fptosi float %2 to i32, !taffo.info !4
  %s10_22fixp2 = load i32*, i32** %test.s10_22fixp, align 8, !taffo.info !4
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx.s10_22fixp = getelementptr inbounds i32, i32* %s10_22fixp2, i64 %idxprom, !taffo.info !4
  store i32 %3, i32* %arrayidx.s10_22fixp, align 4, !taffo.info !7
  %s10_22fixp1 = load i32*, i32** %test.s10_22fixp, align 8, !taffo.info !4
  %5 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4.s10_22fixp = getelementptr inbounds i32, i32* %s10_22fixp1, i64 %idxprom3, !taffo.info !4
  %s10_22fixp3 = load i32, i32* %arrayidx4.s10_22fixp, align 4, !taffo.info !4
  %6 = sitofp i32 %s10_22fixp3 to double, !taffo.info !4
  %7 = fdiv double %6, 0x4150000000000000, !taffo.info !4
  %call5.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %7), !taffo.initweight !8, !taffo.info !9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nounwind
declare !taffo.initweight !10 !taffo.funinfo !11 dso_local noalias i8* @malloc(i64) #1

declare !taffo.initweight !10 !taffo.funinfo !11 dso_local i32 @scanf(i8*, ...) #2

declare !taffo.initweight !10 !taffo.funinfo !11 dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{i32 -1, i32 -1}
!3 = !{i32 0, i1 false, i32 0, i1 false}
!4 = !{!5, !6, i1 false, i2 1}
!5 = !{!"fixp", i32 -32, i32 22}
!6 = !{double -5.000000e+02, double 5.000000e+02}
!7 = !{i1 false, !6, i1 false, i2 1}
!8 = !{i32 5}
!9 = !{!5, i1 false, i1 false, i2 1}
!10 = !{i32 -1}
!11 = !{i32 0, i1 false}
