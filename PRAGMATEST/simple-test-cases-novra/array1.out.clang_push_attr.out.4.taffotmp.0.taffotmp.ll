; ModuleID = './clang_push_attr.out.4.taffotmp.ll'
source_filename = "./clang_push_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.3 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !2 !taffo.funinfo !2 {
entry:
  %retval = alloca i32, align 4
  %out = alloca float, align 4
  %a = alloca float, align 4, !taffo.initweight !3, !taffo.info !4
  %b = alloca float, align 4, !taffo.initweight !3, !taffo.info !4
  %c = alloca float, align 4, !taffo.initweight !3, !taffo.info !7
  %d = alloca float, align 4, !taffo.initweight !3, !taffo.info !7
  store i32 0, i32* %retval, align 4
  %a1 = bitcast float* %a to i8*, !taffo.initweight !10, !taffo.info !11
  store float 1.000000e+01, float* %a, align 4, !taffo.initweight !10, !taffo.info !12
  %b2 = bitcast float* %b to i8*, !taffo.initweight !10, !taffo.info !11
  %c3 = bitcast float* %c to i8*, !taffo.initweight !10, !taffo.info !13
  store float 0x4000D1B720000000, float* %c, align 4, !taffo.initweight !10, !taffo.info !14
  %d4 = bitcast float* %d to i8*, !taffo.initweight !10, !taffo.info !13
  %0 = load float, float* %a, align 4, !taffo.initweight !10, !taffo.info !4
  %conv = fpext float %0 to double, !taffo.initweight !15, !taffo.info !4
  %mul = fmul double %conv, 2.102400e-01, !taffo.initweight !16, !taffo.info !4
  %conv5 = fptrunc double %mul to float, !taffo.initweight !17, !taffo.info !4
  store float %conv5, float* %b, align 4, !taffo.initweight !10, !taffo.info !12
  %1 = load float, float* %b, align 4, !taffo.initweight !10, !taffo.info !4
  %div = fdiv float %1, 2.000000e+00, !taffo.initweight !15, !taffo.info !4
  store float %div, float* %b, align 4, !taffo.initweight !10, !taffo.info !12
  %2 = load float, float* %c, align 4, !taffo.initweight !10, !taffo.info !7
  %div6 = fdiv float %2, 2.000000e+00, !taffo.initweight !15, !taffo.info !7
  store float %div6, float* %c, align 4, !taffo.initweight !10, !taffo.info !14
  %3 = load float, float* %b, align 4, !taffo.initweight !10, !taffo.info !4
  %4 = load float, float* %c, align 4, !taffo.initweight !10, !taffo.info !7
  %add = fadd float %3, %4, !taffo.initweight !15, !taffo.info !4
  store float %add, float* %d, align 4, !taffo.initweight !10, !taffo.info !14
  %5 = load float, float* %d, align 4, !taffo.initweight !10, !taffo.info !7
  store float %5, float* %out, align 4, !taffo.initweight !15, !taffo.info !14
  %6 = load float, float* %out, align 4
  %conv7 = fpext float %6 to double
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv7)
  ret i32 0
}

declare !taffo.initweight !18 !taffo.funinfo !19 dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{}
!3 = !{i32 0}
!4 = !{!5, !6, i1 false, i2 1}
!5 = !{!"fixp", i32 -32, i32 19}
!6 = !{double -3.000000e+03, double 3.000000e+03}
!7 = !{!8, !9, i1 false, i2 1}
!8 = !{!"fixp", i32 -32, i32 23}
!9 = !{double -2.550000e+02, double 2.550000e+02}
!10 = !{i32 1}
!11 = !{!5, i1 false, i1 false, i2 1}
!12 = !{i1 false, !6, i1 false, i2 1}
!13 = !{!8, i1 false, i1 false, i2 1}
!14 = !{i1 false, !9, i1 false, i2 1}
!15 = !{i32 2}
!16 = !{i32 3}
!17 = !{i32 4}
!18 = !{i32 -1}
!19 = !{i32 0, i1 false}
