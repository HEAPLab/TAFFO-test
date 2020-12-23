; ModuleID = './test8.out.4.taffotmp.ll'
source_filename = "./test8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spell = type { float, i32 }
%struct.chara = type { float, i32, float }

; Function Attrs: noinline nounwind uwtable
define dso_local float @cast(%struct.spell* %spell, %struct.chara* %caster, %struct.chara* %enemy) #0 !taffo.initweight !2 !taffo.funinfo !3 {
entry:
  %mpcost = getelementptr inbounds %struct.spell, %struct.spell* %spell, i32 0, i32 1
  %0 = load i32, i32* %mpcost, align 4
  %mp = getelementptr inbounds %struct.chara, %struct.chara* %caster, i32 0, i32 1
  %1 = load i32, i32* %mp, align 4
  %sub = sub nsw i32 %1, %0
  store i32 %sub, i32* %mp, align 4
  %might2 = getelementptr inbounds %struct.spell, %struct.spell* %spell, i32 0, i32 0, !taffo.initweight !4, !taffo.info !5
  %.flt = load float, float* %might2, align 4, !taffo.initweight !6, !taffo.info !7
  %2 = fmul float 3.276800e+04, %.flt, !taffo.info !7
  %.flt.fallback.s17_15fixp = fptosi float %2 to i32, !taffo.info !7
  %hp = getelementptr inbounds %struct.chara, %struct.chara* %enemy, i32 0, i32 0, !taffo.initweight !6, !taffo.info !5
  %mdef = getelementptr inbounds %struct.chara, %struct.chara* %enemy, i32 0, i32 2, !taffo.initweight !10, !taffo.info !5
  %.flt1 = load float, float* %mdef, align 4, !taffo.initweight !4, !taffo.info !7
  %3 = fmul float 3.276800e+04, %.flt1, !taffo.info !7
  %.flt1.fallback.s17_15fixp = fptosi float %3 to i32, !taffo.info !7
  %4 = ashr i32 %.flt.fallback.s17_15fixp, 1, !taffo.info !7
  %5 = ashr i32 %.flt1.fallback.s17_15fixp, 1, !taffo.info !7
  %sub4.s18_14fixp = sub i32 %4, %5, !taffo.info !11
  %.flt2 = load float, float* %hp, align 4, !taffo.initweight !6, !taffo.info !14
  %6 = fmul float 1.638400e+04, %.flt2, !taffo.info !14
  %.flt2.fallback.s18_14fixp = fptosi float %6 to i32, !taffo.info !14
  %sub5.s18_14fixp = sub i32 %.flt2.fallback.s18_14fixp, %sub4.s18_14fixp, !taffo.info !15
  %7 = sitofp i32 %sub5.s18_14fixp to float, !taffo.info !15
  %8 = fdiv float %7, 1.638400e+04, !taffo.info !15
  store float %8, float* %hp, align 4, !taffo.info !17
  %.flt3 = load float, float* %hp, align 4, !taffo.initweight !6, !taffo.info !18
  %9 = fmul float 6.553600e+04, %.flt3, !taffo.info !18
  %.flt3.fallback.s16_16fixp = fptosi float %9 to i32, !taffo.info !18
  %10 = sitofp i32 %.flt3.fallback.s16_16fixp to float, !taffo.info !18
  %11 = fdiv float %10, 6.553600e+04, !taffo.info !18
  ret float %11, !taffo.initweight !4, !taffo.info !17
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{i32 -1, i32 -1, i32 -1}
!3 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!4 = !{i32 3}
!5 = !{i1 false, i1 false, i1 false, i2 1}
!6 = !{i32 2}
!7 = !{!8, !9, i1 false, i2 1}
!8 = !{!"fixp", i32 -32, i32 15}
!9 = !{double -3.276700e+04, double 3.276700e+04}
!10 = !{i32 4}
!11 = !{!12, !13, i1 false, i2 1}
!12 = !{!"fixp", i32 -32, i32 14}
!13 = !{double -6.553400e+04, double 6.553400e+04}
!14 = !{!12, !9, i1 false, i2 1}
!15 = !{!12, !16, i1 false, i2 1}
!16 = !{double -9.830100e+04, double 9.830100e+04}
!17 = !{i1 false, !9, i1 false, i2 1}
!18 = !{!19, !9, i1 false, i2 1}
!19 = !{!"fixp", i32 -32, i32 16}
