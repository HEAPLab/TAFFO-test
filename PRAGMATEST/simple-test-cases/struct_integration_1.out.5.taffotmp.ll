; ModuleID = './struct_integration_1.out.4.taffotmp.ll'
source_filename = "./struct_integration_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.2 = private unnamed_addr constant [7 x i8] c"%f%f%f\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%a\0A%d\0A%a\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !taffo.initweight !2 !taffo.funinfo !3 {
entry:
  %0 = alloca { i32, i32, i32 }, align 4
  %a = alloca float, align 4
  %b = alloca float, align 4
  %c = alloca float, align 4
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), float* %a, float* %b, float* %c), !taffo.constinfo !4
  %1 = load float, float* %a, align 4
  %2 = fmul float 5.242880e+05, %1, !taffo.info !5
  %3 = fptosi float %2 to i32, !taffo.info !5
  %a2.s13_19fixp = getelementptr inbounds { i32, i32, i32 }, { i32, i32, i32 }* %0, i32 0, i32 0, !taffo.info !5
  store i32 %3, i32* %a2.s13_19fixp, align 4, !taffo.info !8
  %4 = load float, float* %b, align 4
  %conv = fptosi float %4 to i32
  %b3.matchop = getelementptr inbounds { i32, i32, i32 }, { i32, i32, i32 }* %0, i32 0, i32 1, !taffo.info !9
  store i32 %conv, i32* %b3.matchop, align 4, !taffo.info !10
  %5 = load float, float* %c, align 4
  %6 = fmul float 0x41C0000000000000, %5, !taffo.info !11
  %7 = fptosi float %6 to i32, !taffo.info !11
  %c4.s3_29fixp = getelementptr inbounds { i32, i32, i32 }, { i32, i32, i32 }* %0, i32 0, i32 2, !taffo.info !11
  store i32 %7, i32* %c4.s3_29fixp, align 4, !taffo.info !14
  %a5.s13_19fixp = getelementptr inbounds { i32, i32, i32 }, { i32, i32, i32 }* %0, i32 0, i32 0, !taffo.info !5
  %s13_19fixp = load i32, i32* %a5.s13_19fixp, align 4, !taffo.info !5
  %8 = sitofp i32 %s13_19fixp to double, !taffo.info !5
  %9 = fdiv double %8, 5.242880e+05, !taffo.info !5
  %b7.matchop = getelementptr inbounds { i32, i32, i32 }, { i32, i32, i32 }* %0, i32 0, i32 1, !taffo.info !9
  %10 = load i32, i32* %b7.matchop, align 4, !taffo.initweight !15, !taffo.info !9
  %c8.s3_29fixp = getelementptr inbounds { i32, i32, i32 }, { i32, i32, i32 }* %0, i32 0, i32 2, !taffo.info !11
  %s3_29fixp = load i32, i32* %c8.s3_29fixp, align 4, !taffo.info !11
  %11 = sitofp i32 %s3_29fixp to double, !taffo.info !11
  %12 = fdiv double %11, 0x41C0000000000000, !taffo.info !11
  %call10.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), double %9, i32 %10, double %12), !taffo.initweight !16, !taffo.info !17, !taffo.constinfo !4
  ret i32 0
}

declare !taffo.initweight !18 !taffo.funinfo !19 dso_local i32 @__isoc99_scanf(i8*, ...) #1

declare !taffo.initweight !18 !taffo.funinfo !19 dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{i32 -1, i32 -1}
!3 = !{i32 0, i1 false, i32 0, i1 false}
!4 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!5 = !{!6, !7, i1 false, i2 1}
!6 = !{!"fixp", i32 -32, i32 19}
!7 = !{double -3.000000e+03, double 3.000000e+03}
!8 = !{i1 false, !7, i1 false, i2 1}
!9 = !{i1 false, i1 false, i1 false, i2 0}
!10 = !{i1 false, i1 false, i1 false, i2 1}
!11 = !{!12, !13, i1 false, i2 1}
!12 = !{!"fixp", i32 -32, i32 29}
!13 = !{double -3.000000e+00, double 3.000000e+00}
!14 = !{i1 false, !13, i1 false, i2 1}
!15 = !{i32 2}
!16 = !{i32 3}
!17 = !{!6, i1 false, i1 false, i2 1}
!18 = !{i32 -1}
!19 = !{i32 0, i1 false}
