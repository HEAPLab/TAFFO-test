; ModuleID = './difference-example.out.2.taffotmp.ll'
source_filename = "./difference-example.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [23 x i8] c"./difference-example.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [5 x i8] c"%lf\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local double @test() #0 !taffo.initweight !2 !taffo.funinfo !2 {
entry:
  %sub = fsub double 9.800000e+01, 7.700000e+01, !taffo.info !3, !taffo.constinfo !5
  %mul = fmul double %sub, 2.000000e+00, !taffo.info !10, !taffo.constinfo !12
  ret double %mul, !taffo.initweight !15, !taffo.info !16
}

; Function Attrs: nounwind willreturn
declare !taffo.initweight !17 !taffo.funinfo !18 void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !taffo.initweight !19 !taffo.funinfo !20 {
entry:
  %call = call double @test(), !taffo.info !10, !taffo.constinfo !21
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), double %call), !taffo.constinfo !22
  ret i32 0
}

declare !taffo.initweight !23 !taffo.funinfo !24 dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{}
!3 = !{i1 false, !4, i1 false, i2 0}
!4 = !{double 2.100000e+01, double 2.100000e+01}
!5 = !{!6, !8}
!6 = !{i1 false, !7, i1 false, i2 0}
!7 = !{double 9.800000e+01, double 9.800000e+01}
!8 = !{i1 false, !9, i1 false, i2 0}
!9 = !{double 7.700000e+01, double 7.700000e+01}
!10 = !{i1 false, !11, i1 false, i2 0}
!11 = !{double 4.200000e+01, double 4.200000e+01}
!12 = !{i1 false, !13}
!13 = !{i1 false, !14, i1 false, i2 0}
!14 = !{double 2.000000e+00, double 2.000000e+00}
!15 = !{i32 2}
!16 = !{i1 false, i1 false, i1 false, i2 1}
!17 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!18 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!19 = !{i32 -1, i32 -1}
!20 = !{i32 0, i1 false, i32 0, i1 false}
!21 = !{i1 false}
!22 = !{i1 false, i1 false, i1 false}
!23 = !{i32 -1}
!24 = !{i32 0, i1 false}
