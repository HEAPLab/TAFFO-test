; ModuleID = './test5.out.3.taffotmp.ll'
source_filename = "./test5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local float @fpextfptrunc(float %a, double %b) #0 !taffo.initweight !2 !taffo.funinfo !3 {
entry:
  %conv = fpext float %a to double, !taffo.initweight !4, !taffo.info !5
  %add = fadd double 1.230000e+02, %conv, !taffo.initweight !4, !taffo.info !8, !taffo.constinfo !10
  %conv4 = fptrunc double %add to float, !taffo.initweight !4, !taffo.info !8
  %conv5 = fpext float %conv4 to double, !taffo.initweight !13, !taffo.info !8
  %add6 = fadd double %conv5, %b, !taffo.initweight !4, !taffo.info !5
  %conv7 = fptrunc double %add6 to float, !taffo.initweight !13, !taffo.info !14
  ret float %conv7, !taffo.initweight !16, !taffo.info !17
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{i32 -1, i32 -1}
!3 = !{i32 0, i1 false, i32 0, i1 false}
!4 = !{i32 2}
!5 = !{!6, !7, i1 false, i2 1}
!6 = !{!"fixp", i32 -32, i32 15}
!7 = !{double -3.276700e+04, double 3.276700e+04}
!8 = !{!6, !9, i1 false, i2 1}
!9 = !{double -3.264400e+04, double 3.289000e+04}
!10 = !{!11, i1 false}
!11 = !{i1 false, !12, i1 false, i2 0}
!12 = !{double 1.230000e+02, double 1.230000e+02}
!13 = !{i32 3}
!14 = !{!15, !7, i1 false, i2 1}
!15 = !{!"fixp", i32 -32, i32 16}
!16 = !{i32 4}
!17 = !{i1 false, !7, i1 false, i2 1}
