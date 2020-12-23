; ModuleID = './disabled-propagation.out.2.taffotmp.ll'
source_filename = "./disabled-propagation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"scalar(disabled)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [25 x i8] c"./disabled-propagation.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [20 x i8] c"scalar(range(-2,2))\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !taffo.initweight !2 !taffo.funinfo !3 {
entry:
  %conv = sitofp i32 1 to double, !taffo.initweight !4, !taffo.info !5
  %conv3 = fpext float 2.000000e+00 to double, !taffo.initweight !4, !taffo.info !7
  %mul = fmul double %conv3, 2.000000e+00, !taffo.initweight !9, !taffo.info !10, !taffo.constinfo !12
  %div = fdiv double %conv, %mul, !taffo.initweight !9, !taffo.info !14
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %div), !taffo.initweight !16, !taffo.info !17, !taffo.constinfo !18
  %conv4 = fpext float 2.000000e+00 to double, !taffo.initweight !4, !taffo.info !7
  %mul5 = fmul double %conv4, 2.000000e+00, !taffo.initweight !9, !taffo.info !10, !taffo.constinfo !12
  %conv6 = sitofp i32 1 to double, !taffo.initweight !4, !taffo.info !5
  %div7 = fdiv double %mul5, %conv6, !taffo.initweight !9, !taffo.info !10
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %div7), !taffo.initweight !16, !taffo.info !17, !taffo.constinfo !18
  ret i32 0
}

; Function Attrs: nounwind willreturn
declare !taffo.initweight !19 !taffo.funinfo !20 void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

declare !taffo.initweight !21 !taffo.funinfo !22 dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{i32 -1, i32 -1}
!3 = !{i32 0, i1 false, i32 0, i1 false}
!4 = !{i32 2}
!5 = !{i1 false, !6, i1 false, i2 0}
!6 = !{double 1.000000e+00, double 1.000000e+00}
!7 = !{i1 false, !8, i1 false, i2 1}
!8 = !{double 2.000000e+00, double 2.000000e+00}
!9 = !{i32 3}
!10 = !{i1 false, !11, i1 false, i2 1}
!11 = !{double 4.000000e+00, double 4.000000e+00}
!12 = !{i1 false, !13}
!13 = !{i1 false, !8, i1 false, i2 0}
!14 = !{i1 false, !15, i1 false, i2 1}
!15 = !{double 2.500000e-01, double 2.500000e-01}
!16 = !{i32 4}
!17 = !{i1 false, i1 false, i1 false, i2 1}
!18 = !{i1 false, i1 false, i1 false}
!19 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!20 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!21 = !{i32 -1}
!22 = !{i32 0, i1 false}
