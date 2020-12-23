; ModuleID = './test10.out.3.taffotmp.ll'
source_filename = "./test10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.3 = private unnamed_addr constant [3 x i8] c"%f\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !taffo.initweight !2 !taffo.funinfo !3 {
entry:
  %mul = fmul float 3.000000e+00, 4.000000e+00, !taffo.initweight !4, !taffo.info !5, !taffo.constinfo !8
  %conv = fpext float %mul to double, !taffo.info !13
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), double %conv), !taffo.constinfo !14
  ret i32 0
}

declare !taffo.initweight !15 !taffo.funinfo !16 dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{i32 -1, i32 -1}
!3 = !{i32 0, i1 false, i32 0, i1 false}
!4 = !{i32 2}
!5 = !{!6, !7, i1 false, i2 1}
!6 = !{!"fixp", i32 32, i32 28}
!7 = !{double 1.200000e+01, double 1.200000e+01}
!8 = !{!9, !11}
!9 = !{i1 false, !10, i1 false, i2 0}
!10 = !{double 3.000000e+00, double 3.000000e+00}
!11 = !{i1 false, !12, i1 false, i2 0}
!12 = !{double 4.000000e+00, double 4.000000e+00}
!13 = !{i1 false, !7, i1 false, i2 0}
!14 = !{i1 false, i1 false, i1 false}
!15 = !{i32 -1}
!16 = !{i32 0, i1 false}
