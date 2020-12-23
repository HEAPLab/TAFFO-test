; ModuleID = './test5.out.2.taffotmp.ll'
source_filename = "./test5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"scalar(range(-32767, 32767))\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [10 x i8] c"./test5.c\00", section "llvm.metadata"

; Function Attrs: noinline nounwind uwtable
define dso_local float @fpextfptrunc(float %a, double %b) #0 !taffo.initweight !2 !taffo.funinfo !3 {
entry:
  %conv = fpext float %a to double, !taffo.initweight !4, !taffo.info !5
  %add = fadd double 1.230000e+02, %conv, !taffo.initweight !4, !taffo.info !7, !taffo.constinfo !9
  %conv4 = fptrunc double %add to float, !taffo.initweight !4, !taffo.info !7
  %conv5 = fpext float %conv4 to double, !taffo.initweight !12, !taffo.info !7
  %add6 = fadd double %conv5, %b, !taffo.initweight !4, !taffo.info !5
  %conv7 = fptrunc double %add6 to float, !taffo.initweight !12, !taffo.info !5
  ret float %conv7, !taffo.initweight !13, !taffo.info !5
}

; Function Attrs: nounwind willreturn
declare !taffo.initweight !14 !taffo.funinfo !15 void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{i32 -1, i32 -1}
!3 = !{i32 0, i1 false, i32 0, i1 false}
!4 = !{i32 2}
!5 = !{i1 false, !6, i1 false, i2 1}
!6 = !{double -3.276700e+04, double 3.276700e+04}
!7 = !{i1 false, !8, i1 false, i2 1}
!8 = !{double -3.264400e+04, double 3.289000e+04}
!9 = !{!10, i1 false}
!10 = !{i1 false, !11, i1 false, i2 0}
!11 = !{double 1.230000e+02, double 1.230000e+02}
!12 = !{i32 3}
!13 = !{i32 4}
!14 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!15 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
