; ModuleID = './disabled-propagation.out.3.taffotmp.ll'
source_filename = "./disabled-propagation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.3 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !taffo.initweight !2 !taffo.funinfo !3 {
entry:
  %conv = sitofp i32 1 to double, !taffo.initweight !4, !taffo.info !5
  %conv3 = fpext float 2.000000e+00 to double, !taffo.initweight !4, !taffo.info !7
  %mul = fmul double %conv3, 2.000000e+00, !taffo.initweight !10, !taffo.info !11, !taffo.constinfo !13
  %div = fdiv double %conv, %mul, !taffo.initweight !10, !taffo.info !15
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %div), !taffo.initweight !17, !taffo.info !18, !taffo.constinfo !20
  %conv4 = fpext float 2.000000e+00 to double, !taffo.initweight !4, !taffo.info !7
  %mul5 = fmul double %conv4, 2.000000e+00, !taffo.initweight !10, !taffo.info !11, !taffo.constinfo !13
  %conv6 = sitofp i32 1 to double, !taffo.initweight !4, !taffo.info !5
  %div7 = fdiv double %mul5, %conv6, !taffo.initweight !10, !taffo.info !11
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %div7), !taffo.initweight !17, !taffo.info !21, !taffo.constinfo !20
  ret i32 0
}

declare !taffo.initweight !22 !taffo.funinfo !23 dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{i32 -1, i32 -1}
!3 = !{i32 0, i1 false, i32 0, i1 false}
!4 = !{i32 2}
!5 = !{i1 false, !6, i1 false, i2 0}
!6 = !{double 1.000000e+00, double 1.000000e+00}
!7 = !{!8, !9, i1 false, i2 1}
!8 = !{!"fixp", i32 32, i32 29}
!9 = !{double 2.000000e+00, double 2.000000e+00}
!10 = !{i32 3}
!11 = !{!8, !12, i1 false, i2 1}
!12 = !{double 4.000000e+00, double 4.000000e+00}
!13 = !{i1 false, !14}
!14 = !{i1 false, !9, i1 false, i2 0}
!15 = !{!8, !16, i1 false, i2 1}
!16 = !{double 2.500000e-01, double 2.500000e-01}
!17 = !{i32 4}
!18 = !{!19, i1 false, i1 false, i2 1}
!19 = !{!"fixp", i32 32, i32 31}
!20 = !{i1 false, i1 false, i1 false}
!21 = !{!8, i1 false, i1 false, i2 1}
!22 = !{i32 -1}
!23 = !{i32 0, i1 false}
