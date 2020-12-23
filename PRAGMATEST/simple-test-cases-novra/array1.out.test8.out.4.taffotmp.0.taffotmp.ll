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
  %might = alloca float, align 4, !taffo.initweight !4, !taffo.info !5
  %ehp = alloca float*, align 8, !taffo.initweight !4, !taffo.info !5
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
  %might1 = bitcast float* %might to i8*, !taffo.initweight !8, !taffo.info !9
  %4 = load %struct.spell*, %struct.spell** %spell.addr, align 8
  %might2 = getelementptr inbounds %struct.spell, %struct.spell* %4, i32 0, i32 0, !taffo.initweight !10, !taffo.info !11
  %5 = load float, float* %might2, align 4, !taffo.initweight !12, !taffo.info !5
  store float %5, float* %might, align 4, !taffo.initweight !8, !taffo.info !13
  %ehp3 = bitcast float** %ehp to i8*, !taffo.initweight !8, !taffo.info !9
  %6 = load %struct.chara*, %struct.chara** %enemy.addr, align 8
  %hp = getelementptr inbounds %struct.chara, %struct.chara* %6, i32 0, i32 0, !taffo.initweight !12, !taffo.info !11
  store float* %hp, float** %ehp, align 8, !taffo.initweight !8, !taffo.info !13
  %7 = load float, float* %might, align 4, !taffo.initweight !8, !taffo.info !5
  %8 = load %struct.chara*, %struct.chara** %enemy.addr, align 8
  %mdef = getelementptr inbounds %struct.chara, %struct.chara* %8, i32 0, i32 2, !taffo.initweight !14, !taffo.info !11
  %9 = load float, float* %mdef, align 4, !taffo.initweight !10, !taffo.info !5
  %sub4 = fsub float %7, %9, !taffo.initweight !12, !taffo.info !5
  %10 = load float*, float** %ehp, align 8, !taffo.initweight !8, !taffo.info !5
  %11 = load float, float* %10, align 4, !taffo.initweight !12, !taffo.info !5
  %sub5 = fsub float %11, %sub4, !taffo.initweight !10, !taffo.info !5
  store float %sub5, float* %10, align 4, !taffo.initweight !12, !taffo.info !13
  %12 = load float*, float** %ehp, align 8, !taffo.initweight !8, !taffo.info !5
  %13 = load float, float* %12, align 4, !taffo.initweight !12, !taffo.info !5
  ret float %13, !taffo.initweight !10, !taffo.info !13
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{i32 -1, i32 -1, i32 -1}
!3 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!4 = !{i32 0}
!5 = !{!6, !7, i1 false, i2 1}
!6 = !{!"fixp", i32 -32, i32 16}
!7 = !{double -3.276700e+04, double 3.276700e+04}
!8 = !{i32 1}
!9 = !{!6, i1 false, i1 false, i2 1}
!10 = !{i32 3}
!11 = !{i1 false, i1 false, i1 false, i2 1}
!12 = !{i32 2}
!13 = !{i1 false, !7, i1 false, i2 1}
!14 = !{i32 4}
