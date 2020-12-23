; ModuleID = './enqueueexample.out.2.taffotmp.ll'
source_filename = "./enqueueexample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"scalar(range(-10, 10)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [19 x i8] c"./enqueueexample.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local float @example(float %a, float %b, float %c, float %d) #0 !taffo.funinfo !2 !taffo.initweight !11 {
entry:
  %y = alloca float, align 4, !taffo.info !5
  %y1 = bitcast float* %y to i8*, !taffo.info !5
  call void @llvm.var.annotation(i8* %y1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 9), !taffo.constinfo !12
  store float 2.000000e+00, float* %y, align 4, !taffo.constinfo !13
  %0 = load float, float* %y, align 4, !taffo.info !5
  %div = fdiv float %0, 3.000000e+00, !taffo.info !14, !taffo.constinfo !16
  %mul = fmul float 1.000000e+00, %div, !taffo.info !14, !taffo.constinfo !17
  %mul2 = fmul float %mul, 1.000000e+00, !taffo.info !14, !taffo.constinfo !18
  ret float %mul2
}

; Function Attrs: nounwind willreturn
declare !taffo.funinfo !19 !taffo.initweight !11 void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !taffo.funinfo !20 !taffo.initweight !21 {
entry:
  %call = call float @example(float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00), !taffo.info !14, !taffo.constinfo !22
  %conv = fpext float %call to double, !taffo.info !14
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %conv), !taffo.constinfo !23
  ret i32 0
}

declare !taffo.funinfo !24 !taffo.initweight !25 dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{i32 1, !3, i32 1, !5, i32 1, !7, i32 1, !9}
!3 = !{i1 false, !4, i1 false, i2 0}
!4 = !{double 1.000000e+00, double 1.000000e+00}
!5 = !{i1 false, !6, i1 false, i2 0}
!6 = !{double 2.000000e+00, double 2.000000e+00}
!7 = !{i1 false, !8, i1 false, i2 0}
!8 = !{double 3.000000e+00, double 3.000000e+00}
!9 = !{i1 false, !10, i1 false, i2 0}
!10 = !{double 4.000000e+00, double 4.000000e+00}
!11 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!12 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!13 = !{!5, i1 false}
!14 = !{i1 false, !15, i1 false, i2 0}
!15 = !{double 0x3FE5555555555555, double 0x3FE5555555555555}
!16 = !{i1 false, !7}
!17 = !{!3, i1 false}
!18 = !{i1 false, !3}
!19 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!20 = !{i32 0, i1 false, i32 0, i1 false}
!21 = !{i32 -1, i32 -1}
!22 = !{!3, !5, !7, !9, i1 false}
!23 = !{i1 false, i1 false, i1 false}
!24 = !{i32 0, i1 false}
!25 = !{i32 -1}
