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
  %might1 = bitcast float* %might to i8*, !taffo.initweight !7, !taffo.info !5
  %4 = load %struct.spell*, %struct.spell** %spell.addr, align 8
  %might2 = getelementptr inbounds %struct.spell, %struct.spell* %4, i32 0, i32 0, !taffo.initweight !8, !taffo.info !9
  %5 = load float, float* %might2, align 4, !taffo.initweight !10, !taffo.info !5
  store float %5, float* %might, align 4, !taffo.initweight !7, !taffo.info !5
  %ehp3 = bitcast float** %ehp to i8*, !taffo.initweight !7, !taffo.info !5
  %6 = load %struct.chara*, %struct.chara** %enemy.addr, align 8
  %hp = getelementptr inbounds %struct.chara, %struct.chara* %6, i32 0, i32 0, !taffo.initweight !10, !taffo.info !9
  store float* %hp, float** %ehp, align 8, !taffo.initweight !7, !taffo.info !5
  %7 = load float, float* %might, align 4, !taffo.initweight !7, !taffo.info !5
  %8 = load %struct.chara*, %struct.chara** %enemy.addr, align 8
  %mdef = getelementptr inbounds %struct.chara, %struct.chara* %8, i32 0, i32 2, !taffo.initweight !11, !taffo.info !9
  %9 = load float, float* %mdef, align 4, !taffo.initweight !8, !taffo.info !5
  %sub4 = fsub float %7, %9, !taffo.initweight !10, !taffo.info !5
  %10 = load float*, float** %ehp, align 8, !taffo.initweight !7, !taffo.info !5
  %11 = load float, float* %10, align 4, !taffo.initweight !10, !taffo.info !5
  %sub5 = fsub float %11, %sub4, !taffo.initweight !8, !taffo.info !5
  store float %sub5, float* %10, align 4, !taffo.initweight !10, !taffo.info !5
  %12 = load float*, float** %ehp, align 8, !taffo.initweight !7, !taffo.info !5
  %13 = load float, float* %12, align 4, !taffo.initweight !10, !taffo.info !5
  ret float %13, !taffo.initweight !8, !taffo.info !5
}

; Function Attrs: nounwind willreturn
declare !taffo.initweight !12 !taffo.funinfo !13 void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{i32 -1, i32 -1, i32 -1}
!3 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!4 = !{i32 0}
!5 = !{i1 false, !6, i1 false, i2 1}
!6 = !{double -3.276700e+04, double 3.276700e+04}
!7 = !{i32 1}
!8 = !{i32 3}
!9 = !{i1 false, i1 false, i1 false, i2 1}
!10 = !{i32 2}
!11 = !{i32 4}
!12 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!13 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
