; ModuleID = './struct_integration_1.out.3.taffotmp.ll'
source_filename = "./struct_integration_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test = type { float, i32, float }

@.str.2 = private unnamed_addr constant [7 x i8] c"%f%f%f\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%a\0A%d\0A%a\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !taffo.initweight !2 !taffo.funinfo !3 {
entry:
  %z = alloca %struct.test, align 4, !taffo.initweight !4, !taffo.structinfo !5
  %a = alloca float, align 4
  %b = alloca float, align 4
  %c = alloca float, align 4
  %z1 = bitcast %struct.test* %z to i8*, !taffo.initweight !12, !taffo.info !13
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), float* %a, float* %b, float* %c), !taffo.constinfo !14
  %0 = load float, float* %a, align 4
  %a2 = getelementptr inbounds %struct.test, %struct.test* %z, i32 0, i32 0, !taffo.initweight !12, !taffo.info !6
  store float %0, float* %a2, align 4, !taffo.initweight !15, !taffo.info !16
  %1 = load float, float* %b, align 4
  %conv = fptosi float %1 to i32
  %b3 = getelementptr inbounds %struct.test, %struct.test* %z, i32 0, i32 1, !taffo.initweight !12, !taffo.info !13
  store i32 %conv, i32* %b3, align 4, !taffo.initweight !15, !taffo.info !17
  %2 = load float, float* %c, align 4
  %c4 = getelementptr inbounds %struct.test, %struct.test* %z, i32 0, i32 2, !taffo.initweight !12, !taffo.info !9
  store float %2, float* %c4, align 4, !taffo.initweight !15, !taffo.info !18
  %a5 = getelementptr inbounds %struct.test, %struct.test* %z, i32 0, i32 0, !taffo.initweight !12, !taffo.info !6
  %3 = load float, float* %a5, align 4, !taffo.initweight !15, !taffo.info !6
  %conv6 = fpext float %3 to double, !taffo.initweight !19, !taffo.info !6
  %b7 = getelementptr inbounds %struct.test, %struct.test* %z, i32 0, i32 1, !taffo.initweight !12, !taffo.info !13
  %4 = load i32, i32* %b7, align 4, !taffo.initweight !15, !taffo.info !13
  %c8 = getelementptr inbounds %struct.test, %struct.test* %z, i32 0, i32 2, !taffo.initweight !12, !taffo.info !9
  %5 = load float, float* %c8, align 4, !taffo.initweight !15, !taffo.info !9
  %conv9 = fpext float %5 to double, !taffo.initweight !19, !taffo.info !9
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), double %conv6, i32 %4, double %conv9), !taffo.initweight !19, !taffo.info !20, !taffo.constinfo !14
  ret i32 0
}

declare !taffo.initweight !21 !taffo.funinfo !22 dso_local i32 @__isoc99_scanf(i8*, ...) #1

declare !taffo.initweight !21 !taffo.funinfo !22 dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{i32 -1, i32 -1}
!3 = !{i32 0, i1 false, i32 0, i1 false}
!4 = !{i32 0}
!5 = !{!6, i1 false, !9}
!6 = !{!7, !8, i1 false, i2 1}
!7 = !{!"fixp", i32 -32, i32 19}
!8 = !{double -3.000000e+03, double 3.000000e+03}
!9 = !{!10, !11, i1 false, i2 1}
!10 = !{!"fixp", i32 -32, i32 29}
!11 = !{double -3.000000e+00, double 3.000000e+00}
!12 = !{i32 1}
!13 = !{i1 false, i1 false, i1 false, i2 0}
!14 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!15 = !{i32 2}
!16 = !{i1 false, !8, i1 false, i2 1}
!17 = !{i1 false, i1 false, i1 false, i2 1}
!18 = !{i1 false, !11, i1 false, i2 1}
!19 = !{i32 3}
!20 = !{!7, i1 false, i1 false, i2 1}
!21 = !{i32 -1}
!22 = !{i32 0, i1 false}
