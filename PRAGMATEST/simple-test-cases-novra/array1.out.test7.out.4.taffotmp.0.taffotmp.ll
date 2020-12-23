; ModuleID = './test7.out.4.taffotmp.ll'
source_filename = "./test7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local float @test(i32 %a) #0 !taffo.initweight !2 !taffo.funinfo !3 {
entry:
  %a.addr = alloca i32, align 4
  %c = alloca [10 x float], align 16, !taffo.initweight !4, !taffo.info !5
  %b = alloca float*, align 8, !taffo.initweight !6, !taffo.info !7
  store i32 %a, i32* %a.addr, align 4
  %b1 = bitcast float** %b to i8*, !taffo.initweight !10, !taffo.info !11
  %arraydecay = getelementptr inbounds [10 x float], [10 x float]* %c, i64 0, i64 0, !taffo.initweight !12, !taffo.info !5
  store float* %arraydecay, float** %b, align 8, !taffo.initweight !10, !taffo.info !13
  %0 = load i32, i32* %a.addr, align 4
  %conv = sitofp i32 %0 to float, !taffo.initweight !14, !taffo.info !7
  %1 = load float*, float** %b, align 8, !taffo.initweight !10, !taffo.info !7
  %arrayidx = getelementptr inbounds float, float* %1, i64 5, !taffo.initweight !12, !taffo.info !7
  store float %conv, float* %arrayidx, align 4, !taffo.initweight !4, !taffo.info !13
  %2 = load float*, float** %b, align 8, !taffo.initweight !10, !taffo.info !7
  %arrayidx2 = getelementptr inbounds float, float* %2, i64 5, !taffo.initweight !12, !taffo.info !7
  %3 = load float, float* %arrayidx2, align 4, !taffo.initweight !4, !taffo.info !7
  ret float %3, !taffo.initweight !14, !taffo.info !13
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{i32 -1}
!3 = !{i32 0, i1 false}
!4 = !{i32 3}
!5 = !{i1 false, i1 false, i1 false, i2 1}
!6 = !{i32 0}
!7 = !{!8, !9, i1 false, i2 1}
!8 = !{!"fixp", i32 -32, i32 16}
!9 = !{double -3.276700e+04, double 3.276700e+04}
!10 = !{i32 1}
!11 = !{!8, i1 false, i1 false, i2 1}
!12 = !{i32 2}
!13 = !{i1 false, !9, i1 false, i2 1}
!14 = !{i32 4}
