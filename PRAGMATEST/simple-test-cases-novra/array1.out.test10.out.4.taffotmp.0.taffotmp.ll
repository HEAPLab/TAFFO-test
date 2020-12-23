; ModuleID = './test10.out.4.taffotmp.ll'
source_filename = "./test10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.3 = private unnamed_addr constant [3 x i8] c"%f\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !taffo.initweight !2 !taffo.funinfo !3 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %a = alloca float, align 4, !taffo.initweight !4, !taffo.info !5
  %b = alloca float, align 4, !taffo.initweight !4, !taffo.info !8
  %c = alloca float, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %a1 = bitcast float* %a to i8*, !taffo.initweight !11, !taffo.info !12
  store float 3.000000e+00, float* %a, align 4, !taffo.initweight !11, !taffo.info !13
  %b2 = bitcast float* %b to i8*, !taffo.initweight !11, !taffo.info !14
  store float 4.000000e+00, float* %b, align 4, !taffo.initweight !11, !taffo.info !15
  %0 = load float, float* %a, align 4, !taffo.initweight !11, !taffo.info !5
  %1 = load float, float* %b, align 4, !taffo.initweight !11, !taffo.info !8
  %mul = fmul float %0, %1, !taffo.initweight !16, !taffo.info !17
  store float %mul, float* %c, align 4, !taffo.initweight !18, !taffo.info !13
  %2 = load float, float* %c, align 4
  %conv = fpext float %2 to double
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), double %conv)
  ret i32 0
}

declare !taffo.initweight !19 !taffo.funinfo !20 dso_local i32 @printf(i8*, ...) #1

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
!6 = !{!"fixp", i32 32, i32 30}
!7 = !{double 0.000000e+00, double 3.000000e+00}
!8 = !{!9, !10, i1 false, i2 1}
!9 = !{!"fixp", i32 32, i32 29}
!10 = !{double 0.000000e+00, double 4.000000e+00}
!11 = !{i32 1}
!12 = !{!6, i1 false, i1 false, i2 1}
!13 = !{i1 false, !7, i1 false, i2 1}
!14 = !{!9, i1 false, i1 false, i2 1}
!15 = !{i1 false, !10, i1 false, i2 1}
!16 = !{i32 2}
!17 = !{!9, !7, i1 false, i2 1}
!18 = !{i32 3}
!19 = !{i32 -1}
!20 = !{i32 0, i1 false}
