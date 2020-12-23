; ModuleID = './test2.out.3.taffotmp.ll'
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
  %local = alloca float, align 4, !taffo.initweight !4, !taffo.info !5
  store float %param, float* %param.addr, align 4
  store i32 %notafloat, i32* %notafloat.addr, align 4
  %local1 = bitcast float* %local to i8*, !taffo.initweight !8, !taffo.info !9
  store float 0x41A0000000000000, float* %local, align 4, !taffo.initweight !8, !taffo.info !10
  %0 = load float, float* %param.addr, align 4
  %1 = load float, float* %local, align 4, !taffo.initweight !8, !taffo.info !5
  %mul = fmul float %1, %0, !taffo.initweight !11, !taffo.info !5
  store float %mul, float* %local, align 4, !taffo.initweight !8, !taffo.info !10
  %2 = load i32, i32* %notafloat.addr, align 4
  %conv = sitofp i32 %2 to float
  %3 = load float, float* %local, align 4, !taffo.initweight !8, !taffo.info !5
  %add = fadd float %3, %conv, !taffo.initweight !11, !taffo.info !5
  store float %add, float* %local, align 4, !taffo.initweight !8, !taffo.info !10
  %4 = load float, float* %local, align 4, !taffo.initweight !8, !taffo.info !5
  %conv2 = fptosi float %4 to i32, !taffo.initweight !11, !taffo.info !9
  store i32 %conv2, i32* %notafloat2, align 4, !taffo.initweight !12, !taffo.info !10
  %5 = load i32, i32* %notafloat2, align 4
  %conv3 = sitofp i32 %5 to float
  ret float %conv3
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test2(i32 %a) #0 !taffo.initweight !13 !taffo.funinfo !14 {
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
!4 = !{i32 0}
!5 = !{!6, !7, i1 false, i2 1}
!6 = !{!"fixp", i32 -64, i32 33}
!7 = !{double -1.000000e+09, double 1.000000e+09}
!8 = !{i32 1}
!9 = !{!6, i1 false, i1 false, i2 1}
!10 = !{i1 false, !7, i1 false, i2 1}
!11 = !{i32 2}
!12 = !{i32 3}
!13 = !{i32 -1}
!14 = !{i32 0, i1 false}
