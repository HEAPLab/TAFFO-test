; ModuleID = './test8.out.4.taffotmp.ll'
source_filename = "./test8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spell = type { float, i32 }
%struct.chara = type { float, i32, float }

; Function Attrs: noinline nounwind uwtable
define dso_local float @cast(%struct.spell* %spell, %struct.chara* %caster, %struct.chara* %enemy) #0 !taffo.initweight !2 !taffo.funinfo !3 {
entry:
  %spell.addr = alloca %struct.spell*, align 8
  %caster.addr = alloca %struct.chara*, align 8
  %enemy.addr = alloca %struct.chara*, align 8
  %might.s16_16fixp = alloca i32, align 4, !taffo.info !4
  %ehp.s16_16fixp = alloca i32*, align 8, !taffo.info !4
  store %struct.spell* %spell, %struct.spell** %spell.addr, align 8
  store %struct.chara* %caster, %struct.chara** %caster.addr, align 8
  store %struct.chara* %enemy, %struct.chara** %enemy.addr, align 8
  %0 = load %struct.spell*, %struct.spell** %spell.addr, align 8
  %mpcost = getelementptr inbounds %struct.spell, %struct.spell* %0, i32 0, i32 1
  %1 = load i32, i32* %mpcost, align 4
  %2 = load %struct.chara*, %struct.chara** %caster.addr, align 8
  %mp = getelementptr inbounds %struct.chara, %struct.chara* %2, i32 0, i32 1
  %3 = load i32, i32* %mp, align 4
  %sub = sub nsw i32 %3, %1
  store i32 %sub, i32* %mp, align 4
  %4 = load %struct.spell*, %struct.spell** %spell.addr, align 8
  %might2 = getelementptr inbounds %struct.spell, %struct.spell* %4, i32 0, i32 0, !taffo.initweight !7, !taffo.info !8
  %.flt = load float, float* %might2, align 4, !taffo.initweight !9, !taffo.info !4
  %5 = fmul float 6.553600e+04, %.flt, !taffo.info !4
  %.flt.fallback.s16_16fixp = fptosi float %5 to i32, !taffo.info !4
  store i32 %.flt.fallback.s16_16fixp, i32* %might.s16_16fixp, align 4, !taffo.info !10
  %6 = load %struct.chara*, %struct.chara** %enemy.addr, align 8
  %hp = getelementptr inbounds %struct.chara, %struct.chara* %6, i32 0, i32 0, !taffo.initweight !9, !taffo.info !8
  %7 = bitcast float* %hp to i32*, !taffo.info !8
  store i32* %7, i32** %ehp.s16_16fixp, align 8, !taffo.info !10
  %s16_16fixp = load i32, i32* %might.s16_16fixp, align 4, !taffo.info !4
  %8 = load %struct.chara*, %struct.chara** %enemy.addr, align 8
  %mdef = getelementptr inbounds %struct.chara, %struct.chara* %8, i32 0, i32 2, !taffo.initweight !11, !taffo.info !8
  %.flt1 = load float, float* %mdef, align 4, !taffo.initweight !7, !taffo.info !4
  %9 = fmul float 6.553600e+04, %.flt1, !taffo.info !4
  %.flt1.fallback.s16_16fixp = fptosi float %9 to i32, !taffo.info !4
  %sub4.s16_16fixp = sub i32 %s16_16fixp, %.flt1.fallback.s16_16fixp, !taffo.info !4
  %s16_16fixp3 = load i32*, i32** %ehp.s16_16fixp, align 8, !taffo.info !4
  %s16_16fixp5 = load i32, i32* %s16_16fixp3, align 4, !taffo.info !4
  %sub5.s16_16fixp = sub i32 %s16_16fixp5, %sub4.s16_16fixp, !taffo.info !4
  store i32 %sub5.s16_16fixp, i32* %s16_16fixp3, align 4, !taffo.info !10
  %s16_16fixp2 = load i32*, i32** %ehp.s16_16fixp, align 8, !taffo.info !4
  %s16_16fixp4 = load i32, i32* %s16_16fixp2, align 4, !taffo.info !4
  %10 = sitofp i32 %s16_16fixp4 to float, !taffo.info !4
  %11 = fdiv float %10, 6.553600e+04, !taffo.info !4
  ret float %11, !taffo.initweight !7, !taffo.info !10
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{i32 -1, i32 -1, i32 -1}
!3 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!4 = !{!5, !6, i1 false, i2 1}
!5 = !{!"fixp", i32 -32, i32 16}
!6 = !{double -3.276700e+04, double 3.276700e+04}
!7 = !{i32 3}
!8 = !{i1 false, i1 false, i1 false, i2 1}
!9 = !{i32 2}
!10 = !{i1 false, !6, i1 false, i2 1}
!11 = !{i32 4}
