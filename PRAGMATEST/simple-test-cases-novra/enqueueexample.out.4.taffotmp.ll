; ModuleID = './enqueueexample.out.3.taffotmp.ll'
source_filename = "./enqueueexample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.2 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local float @example(float %a, float %b, float %c, float %d) #0 !taffo.initweight !2 !taffo.funinfo !3 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  %c.addr = alloca float, align 4
  %d.addr = alloca float, align 4
  %x = alloca float, align 4
  %y = alloca float, align 4, !taffo.initweight !4, !taffo.info !5
  %z = alloca float, align 4
  store float %a, float* %a.addr, align 4
  store float %b, float* %b.addr, align 4
  store float %c, float* %c.addr, align 4
  store float %d, float* %d.addr, align 4
  store float 1.000000e+00, float* %x, align 4
  %y1 = bitcast float* %y to i8*, !taffo.initweight !8, !taffo.info !9
  store float 2.000000e+00, float* %y, align 4, !taffo.initweight !8, !taffo.info !10
  store float 3.000000e+00, float* %z, align 4
  %0 = load float, float* %x, align 4
  %1 = load float, float* %y, align 4, !taffo.initweight !8, !taffo.info !5
  %2 = load float, float* %z, align 4
  %div = fdiv float %1, %2, !taffo.initweight !11, !taffo.info !5
  %mul = fmul float %0, %div, !taffo.initweight !12, !taffo.info !5
  %3 = load float, float* %x, align 4
  %mul2 = fmul float %mul, %3, !taffo.initweight !13, !taffo.info !5
  ret float %mul2, !taffo.initweight !14, !taffo.info !10
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !taffo.initweight !15 !taffo.funinfo !16 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call float @example(float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00)
  %conv = fpext float %call to double
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %conv)
  ret i32 0
}

declare !taffo.initweight !17 !taffo.funinfo !18 dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!3 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!4 = !{i32 0}
!5 = !{!6, !7, i1 false, i2 1}
!6 = !{!"fixp", i32 -32, i32 27}
!7 = !{double -1.000000e+01, double 1.000000e+01}
!8 = !{i32 1}
!9 = !{!6, i1 false, i1 false, i2 1}
!10 = !{i1 false, !7, i1 false, i2 1}
!11 = !{i32 2}
!12 = !{i32 3}
!13 = !{i32 4}
!14 = !{i32 5}
!15 = !{i32 -1, i32 -1}
!16 = !{i32 0, i1 false, i32 0, i1 false}
!17 = !{i32 -1}
!18 = !{i32 0, i1 false}
