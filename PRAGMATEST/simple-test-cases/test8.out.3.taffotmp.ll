; ModuleID = './test8.out.2.taffotmp.ll'
source_filename = "./test8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spell = type { float, i32 }
%struct.chara = type { float, i32, float }

@.str = private unnamed_addr constant [34 x i8] c"force_no_float range -32767 32767\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [10 x i8] c"./test8.c\00", section "llvm.metadata"

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
  %2 = load float, float* %might2, align 4, !taffo.initweight !6, !taffo.info !7
  %hp = getelementptr inbounds %struct.chara, %struct.chara* %enemy, i32 0, i32 0, !taffo.initweight !6, !taffo.info !5
  %mdef = getelementptr inbounds %struct.chara, %struct.chara* %enemy, i32 0, i32 2, !taffo.initweight !9, !taffo.info !5
  %3 = load float, float* %mdef, align 4, !taffo.initweight !4, !taffo.info !7
  %sub4 = fsub float %2, %3, !taffo.initweight !6, !taffo.info !10
  %4 = load float, float* %hp, align 4, !taffo.initweight !6, !taffo.info !7
  %sub5 = fsub float %4, %sub4, !taffo.initweight !4, !taffo.info !12
  store float %sub5, float* %hp, align 4, !taffo.initweight !6, !taffo.info !7
  %5 = load float, float* %hp, align 4, !taffo.initweight !6, !taffo.info !7
  ret float %5, !taffo.initweight !4, !taffo.info !7
}

; Function Attrs: nounwind willreturn
declare !taffo.initweight !14 !taffo.funinfo !15 void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{i32 -1, i32 -1, i32 -1}
!3 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!4 = !{i32 3}
!5 = !{i1 false, i1 false, i1 false, i2 1}
!6 = !{i32 2}
!7 = !{i1 false, !8, i1 false, i2 1}
!8 = !{double -3.276700e+04, double 3.276700e+04}
!9 = !{i32 4}
!10 = !{i1 false, !11, i1 false, i2 1}
!11 = !{double -6.553400e+04, double 6.553400e+04}
!12 = !{i1 false, !13, i1 false, i2 1}
!13 = !{double -9.830100e+04, double 9.830100e+04}
!14 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!15 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
