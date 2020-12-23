; ModuleID = './test7.out.4.taffotmp.ll'
source_filename = "./test7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local float @test(i32 %a) #0 !taffo.initweight !2 !taffo.funinfo !3 {
entry:
  %c = alloca [10 x float], align 16, !taffo.initweight !4, !taffo.info !5
  %arraydecay = getelementptr inbounds [10 x float], [10 x float]* %c, i64 0, i64 0, !taffo.initweight !6, !taffo.info !5
  %conv.s16_16fixp = shl i32 %a, 16, !taffo.info !7
  %0 = sitofp i32 %conv.s16_16fixp to float, !taffo.info !7
  %1 = fdiv float %0, 6.553600e+04, !taffo.info !7
  %arrayidx.flt.s16_16fixp = getelementptr inbounds float, float* %arraydecay, i64 5, !taffo.initweight !6, !taffo.info !7
  store float %1, float* %arrayidx.flt.s16_16fixp, align 4, !taffo.info !10
  %arrayidx2.flt.s16_16fixp = getelementptr inbounds float, float* %arraydecay, i64 5, !taffo.initweight !6, !taffo.info !7
  %.flt = load float, float* %arrayidx2.flt.s16_16fixp, align 4, !taffo.initweight !4, !taffo.info !7
  %2 = fmul float 6.553600e+04, %.flt, !taffo.info !7
  %.flt.fallback.s16_16fixp = fptosi float %2 to i32, !taffo.info !7
  %3 = sitofp i32 %.flt.fallback.s16_16fixp to float, !taffo.info !7
  %4 = fdiv float %3, 6.553600e+04, !taffo.info !7
  ret float %4, !taffo.initweight !11, !taffo.info !10
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{i32 -1}
!3 = !{i32 0, i1 false}
!4 = !{i32 3}
!5 = !{i1 false, i1 false, i1 false, i2 1}
!6 = !{i32 2}
!7 = !{!8, !9, i1 false, i2 1}
!8 = !{!"fixp", i32 -32, i32 16}
!9 = !{double -3.276700e+04, double 3.276700e+04}
!10 = !{i1 false, !9, i1 false, i2 1}
!11 = !{i32 4}
