; ModuleID = './test2.out.4.taffotmp.ll'
source_filename = "./test2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@global = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local float @test(float %param, i32 %notafloat) #0 !taffo.initweight !2 !taffo.funinfo !3 {
entry:
  %param.addr = alloca float, align 4
  %notafloat.addr = alloca i32, align 4
  %notafloat2 = alloca i32, align 4
  %local.s31_33fixp = alloca i64, align 4, !taffo.info !4
  store float %param, float* %param.addr, align 4
  store i32 %notafloat, i32* %notafloat.addr, align 4
  store i64 1152921504606846976, i64* %local.s31_33fixp, align 4, !taffo.info !7
  %0 = load float, float* %param.addr, align 4
  %s31_33fixp2 = load i64, i64* %local.s31_33fixp, align 4, !taffo.info !4
  %1 = fmul float 0x4200000000000000, %0, !taffo.info !4
  %2 = fptosi float %1 to i64, !taffo.info !4
  %3 = sext i64 %s31_33fixp2 to i128, !taffo.info !4
  %4 = sext i64 %2 to i128, !taffo.info !4
  %5 = mul i128 %3, %4, !taffo.info !8
  %6 = ashr i128 %5, 33, !taffo.info !8
  %mul.s31_33fixp = trunc i128 %6 to i64, !taffo.info !4
  store i64 %mul.s31_33fixp, i64* %local.s31_33fixp, align 4, !taffo.info !7
  %7 = load i32, i32* %notafloat.addr, align 4
  %s31_33fixp1 = load i64, i64* %local.s31_33fixp, align 4, !taffo.info !4
  %8 = sext i32 %7 to i64
  %9 = shl i64 %8, 33
  %add.s31_33fixp = add i64 %s31_33fixp1, %9, !taffo.info !4
  store i64 %add.s31_33fixp, i64* %local.s31_33fixp, align 4, !taffo.info !7
  %s31_33fixp = load i64, i64* %local.s31_33fixp, align 4, !taffo.info !4
  %10 = ashr i64 %s31_33fixp, 33, !taffo.info !4
  %11 = trunc i64 %10 to i32, !taffo.info !10
  store i32 %11, i32* %notafloat2, align 4, !taffo.info !7
  %12 = load i32, i32* %notafloat2, align 4
  %conv3 = sitofp i32 %12 to float
  ret float %conv3
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test2(i32 %a) #0 !taffo.initweight !11 !taffo.funinfo !12 {
entry:
  %a.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %conv = sitofp i32 %0 to double
  %add = fadd double %conv, 2.000000e+00
  %conv1 = fptosi double %add to i32
  ret i32 %conv1
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{i32 -1, i32 -1}
!3 = !{i32 0, i1 false, i32 0, i1 false}
!4 = !{!5, !6, i1 false, i2 1}
!5 = !{!"fixp", i32 -64, i32 33}
!6 = !{double -1.000000e+09, double 1.000000e+09}
!7 = !{i1 false, !6, i1 false, i2 1}
!8 = !{!9, !6, i1 false, i2 1}
!9 = !{!"fixp", i32 -128, i32 66}
!10 = !{!5, i1 false, i1 false, i2 1}
!11 = !{i32 -1}
!12 = !{i32 0, i1 false}
