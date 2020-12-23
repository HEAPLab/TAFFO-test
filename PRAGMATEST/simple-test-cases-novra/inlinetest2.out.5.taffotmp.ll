; ModuleID = './inlinetest2.out.4.taffotmp.ll'
source_filename = "./inlinetest2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.2 = private unnamed_addr constant [4 x i8] c"%a\0A\00", align 1

; Function Attrs: alwaysinline nounwind uwtable
define dso_local float @hello(float* %abc) #0 !taffo.initweight !2 !taffo.funinfo !3 {
entry:
  %retval = alloca float, align 4
  %abc.addr.s9_23fixp = alloca i32*, align 8, !taffo.info !4
  %0 = bitcast float* %abc to i32*
  store i32* %0, i32** %abc.addr.s9_23fixp, align 8, !taffo.info !7
  %s9_23fixp = load i32*, i32** %abc.addr.s9_23fixp, align 8, !taffo.info !4
  %arrayidx.s9_23fixp = getelementptr inbounds i32, i32* %s9_23fixp, i64 5, !taffo.info !4
  %s9_23fixp1 = load i32, i32* %arrayidx.s9_23fixp, align 4, !taffo.info !4
  %add.s9_23fixp = add i32 %s9_23fixp1, 26353590, !taffo.info !4
  store i32 %add.s9_23fixp, i32* %arrayidx.s9_23fixp, align 4, !taffo.info !7
  %1 = load float, float* %retval, align 4
  ret float %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #1 !taffo.initweight !8 !taffo.funinfo !9 {
entry:
  %abc.addr.i.s9_23fixp = alloca i32*, align 8, !taffo.info !4
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %test.s9_23fixp = alloca [10 x i32], align 16, !taffo.info !4
  %i = alloca i32, align 4
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
  %idxprom = sext i32 %1 to i64
  %arrayidx.s9_23fixp = getelementptr inbounds [10 x i32], [10 x i32]* %test.s9_23fixp, i64 0, i64 %idxprom, !taffo.info !4
  store i32 1031798784, i32* %arrayidx.s9_23fixp, align 4, !taffo.info !7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay.s9_23fixp = getelementptr inbounds [10 x i32], [10 x i32]* %test.s9_23fixp, i64 0, i64 0, !taffo.info !4
  store i32* %arraydecay.s9_23fixp, i32** %abc.addr.i.s9_23fixp, align 8, !taffo.info !7
  %s9_23fixp = load i32*, i32** %abc.addr.i.s9_23fixp, align 8, !taffo.info !4
  %arrayidx.i.s9_23fixp = getelementptr inbounds i32, i32* %s9_23fixp, i64 5, !taffo.info !4
  %s9_23fixp2 = load i32, i32* %arrayidx.i.s9_23fixp, align 4, !taffo.info !4
  %add.i.s9_23fixp = add i32 %s9_23fixp2, 26353590, !taffo.info !4
  store i32 %add.i.s9_23fixp, i32* %arrayidx.i.s9_23fixp, align 4, !taffo.info !7
  %arrayidx2.s9_23fixp = getelementptr inbounds [10 x i32], [10 x i32]* %test.s9_23fixp, i64 0, i64 5, !taffo.info !4
  %s9_23fixp1 = load i32, i32* %arrayidx2.s9_23fixp, align 4, !taffo.info !4
  %3 = sitofp i32 %s9_23fixp1 to double, !taffo.info !4
  %4 = fdiv double %3, 0x4160000000000000, !taffo.info !4
  %call3.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %4), !taffo.initweight !10, !taffo.info !11
  ret i32 0
}

declare !taffo.initweight !2 !taffo.funinfo !3 dso_local i32 @printf(i8*, ...) #2

attributes #0 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{i32 -1}
!3 = !{i32 0, i1 false}
!4 = !{!5, !6, i1 false, i2 1}
!5 = !{!"fixp", i32 -32, i32 23}
!6 = !{double -2.000000e+02, double 2.000000e+02}
!7 = !{i1 false, !6, i1 false, i2 1}
!8 = !{i32 -1, i32 -1}
!9 = !{i32 0, i1 false, i32 0, i1 false}
!10 = !{i32 4}
!11 = !{!5, i1 false, i1 false, i2 1}
