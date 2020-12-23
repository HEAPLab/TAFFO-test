; ModuleID = './test9.out.4.taffotmp.ll'
source_filename = "./test9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local float @oven(i32 %stuff, i32 %baked, float %cherry) #0 !taffo.initweight !2 !taffo.funinfo !3 {
entry:
  %0 = fmul float 6.553600e+04, %cherry
  %1 = fptosi float %0 to i32
  %add = add nsw i32 %baked, %stuff
  %2 = shl i32 %add, 16
  %add2.s16_16fixp = add i32 %2, %1, !taffo.info !4
  %3 = sitofp i32 %add2.s16_16fixp to float, !taffo.info !4
  %4 = fdiv float %3, 6.553600e+04, !taffo.info !4
  ret float %4, !taffo.initweight !7, !taffo.info !8
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{i32 -1, i32 -1, i32 -1}
!3 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!4 = !{!5, !6, i1 false, i2 1}
!5 = !{!"fixp", i32 -32, i32 16}
!6 = !{double -3.276700e+04, double 3.276700e+04}
!7 = !{i32 3}
!8 = !{i1 false, !6, i1 false, i2 1}
