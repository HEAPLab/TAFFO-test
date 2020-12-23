; ModuleID = './test6.out.5.taffotmp.ll'
source_filename = "./test6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local float @test(i32 %a) #0 !taffo.initweight !2 !taffo.funinfo !3 {
entry:
  %a.addr = alloca i32, align 4
  %c.s16_16fixp = alloca [10 x i32], align 16, !taffo.info !4
  %b.s16_16fixp = alloca i32*, align 8, !taffo.info !4
  store i32 %a, i32* %a.addr, align 4
  %arraydecay.s16_16fixp = getelementptr inbounds [10 x i32], [10 x i32]* %c.s16_16fixp, i64 0, i64 0, !taffo.info !4
  store i32* %arraydecay.s16_16fixp, i32** %b.s16_16fixp, align 8, !taffo.info !7
  %0 = load i32, i32* %a.addr, align 4, !taffo.info !4
  %1 = shl i32 %0, 16, !taffo.info !4
  %s16_16fixp1 = load i32*, i32** %b.s16_16fixp, align 8, !taffo.info !4
  %arrayidx.s16_16fixp = getelementptr inbounds i32, i32* %s16_16fixp1, i64 5, !taffo.info !4
  store i32 %1, i32* %arrayidx.s16_16fixp, align 4, !taffo.info !7
  %s16_16fixp = load i32*, i32** %b.s16_16fixp, align 8, !taffo.info !4
  %arrayidx3.s16_16fixp = getelementptr inbounds i32, i32* %s16_16fixp, i64 5, !taffo.info !4
  %s16_16fixp2 = load i32, i32* %arrayidx3.s16_16fixp, align 4, !taffo.info !4
  %2 = sitofp i32 %s16_16fixp2 to float, !taffo.info !4
  %3 = fdiv float %2, 6.553600e+04, !taffo.info !4
  ret float %3, !taffo.initweight !8, !taffo.info !7
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{i32 -1}
!3 = !{i32 0, i1 false}
!4 = !{!5, !6, i1 false, i2 1}
!5 = !{!"fixp", i32 -32, i32 16}
!6 = !{double -3.276700e+04, double 3.276700e+04}
!7 = !{i1 false, !6, i1 false, i2 1}
!8 = !{i32 4}
