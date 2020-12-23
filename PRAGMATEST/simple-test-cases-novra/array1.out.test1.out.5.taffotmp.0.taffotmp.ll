; ModuleID = './test1.out.5.taffotmp.ll'
source_filename = "./test1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@global = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local float @test(float %param, i32 %notafloat) #0 !taffo.initweight !2 !taffo.funinfo !3 {
entry:
  %param.addr = alloca float, align 4
  %notafloat.addr = alloca i32, align 4
  %notafloat2 = alloca i32, align 4
  %local.u3_29fixp = alloca i32, align 4, !taffo.info !4
  store float %param, float* %param.addr, align 4
  store i32 %notafloat, i32* %notafloat.addr, align 4
  store i32 1073741824, i32* %local.u3_29fixp, align 4, !taffo.info !7
  %0 = load float, float* %param.addr, align 4
  %u3_29fixp2 = load i32, i32* %local.u3_29fixp, align 4, !taffo.info !4
  %1 = fmul float 0x41C0000000000000, %0, !taffo.info !4
  %2 = fptoui float %1 to i32, !taffo.info !4
  %3 = zext i32 %u3_29fixp2 to i64, !taffo.info !4
  %4 = zext i32 %2 to i64, !taffo.info !4
  %5 = mul i64 %3, %4, !taffo.info !8
  %6 = lshr i64 %5, 29, !taffo.info !8
  %mul.u3_29fixp = trunc i64 %6 to i32, !taffo.info !4
  store i32 %mul.u3_29fixp, i32* %local.u3_29fixp, align 4, !taffo.info !7
  %7 = load i32, i32* %notafloat.addr, align 4
  %u3_29fixp1 = load i32, i32* %local.u3_29fixp, align 4, !taffo.info !4
  %8 = shl i32 %7, 29
  %add.u3_29fixp = add i32 %u3_29fixp1, %8, !taffo.info !4
  store i32 %add.u3_29fixp, i32* %local.u3_29fixp, align 4, !taffo.info !7
  %u3_29fixp = load i32, i32* %local.u3_29fixp, align 4, !taffo.info !4
  %9 = lshr i32 %u3_29fixp, 29, !taffo.info !10
  store i32 %9, i32* %notafloat2, align 4, !taffo.info !7
  %10 = load i32, i32* %notafloat2, align 4
  %conv3 = sitofp i32 %10 to float
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
!5 = !{!"fixp", i32 32, i32 29}
!6 = !{double 0.000000e+00, double 5.000000e+00}
!7 = !{i1 false, !6, i1 false, i2 1}
!8 = !{!9, !6, i1 false, i2 1}
!9 = !{!"fixp", i32 64, i32 58}
!10 = !{!5, i1 false, i1 false, i2 1}
!11 = !{i32 -1}
!12 = !{i32 0, i1 false}
