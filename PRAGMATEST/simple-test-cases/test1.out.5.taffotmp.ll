; ModuleID = './test1.out.4.taffotmp.ll'
source_filename = "./test1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@global = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local float @test(float %param, i32 %notafloat) #0 !taffo.initweight !2 !taffo.funinfo !3 {
entry:
  %0 = fmul float 0x41C0000000000000, %param, !taffo.info !4
  %1 = fptoui float %0 to i32, !taffo.info !4
  %2 = zext i32 %1 to i64, !taffo.info !4
  %3 = mul i64 2, %2, !taffo.info !7, !taffo.constinfo !9
  %mul.u3_29fixp = trunc i64 %3 to i32, !taffo.info !4
  %4 = shl i32 %notafloat, 29
  %add.u3_29fixp = add i32 %mul.u3_29fixp, %4, !taffo.info !4
  %5 = lshr i32 %add.u3_29fixp, 29, !taffo.info !13
  %conv3 = sitofp i32 %5 to float, !taffo.info !14
  ret float %conv3
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test2(i32 %a) #0 !taffo.initweight !15 !taffo.funinfo !16 {
entry:
  %conv = sitofp i32 %a to double
  %add = fadd double %conv, 2.000000e+00, !taffo.constinfo !17
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
!7 = !{!8, !6, i1 false, i2 1}
!8 = !{!"fixp", i32 64, i32 29}
!9 = !{!10, i1 false}
!10 = !{!11, !12, i1 false, i2 0}
!11 = !{!"fixp", i32 32, i32 0}
!12 = !{double 2.000000e+00, double 2.000000e+00}
!13 = !{!5, i1 false, i1 false, i2 1}
!14 = !{i1 false, !6, i1 false, i2 0}
!15 = !{i32 -1}
!16 = !{i32 0, i1 false}
!17 = !{i1 false, !18}
!18 = !{i1 false, !12, i1 false, i2 0}
