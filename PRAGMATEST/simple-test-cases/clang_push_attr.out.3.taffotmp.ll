; ModuleID = './clang_push_attr.out.2.taffotmp.ll'
source_filename = "./clang_push_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"scalar(range(-3000, 3000) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [20 x i8] c"./clang_push_attr.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [31 x i8] c"scalar(range(-255, 255) final)\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !2 !taffo.funinfo !2 {
entry:
  %conv = fpext float 1.000000e+01 to double, !taffo.initweight !3, !taffo.info !4
  %mul = fmul double %conv, 2.102400e-01, !taffo.initweight !6, !taffo.info !7, !taffo.constinfo !9
  %conv5 = fptrunc double %mul to float, !taffo.initweight !12, !taffo.info !13
  %div = fdiv float %conv5, 2.000000e+00, !taffo.initweight !3, !taffo.info !4, !taffo.constinfo !15
  %div6 = fdiv float 0x4000D1B720000000, 2.000000e+00, !taffo.initweight !3, !taffo.info !18, !taffo.constinfo !20
  %add = fadd float %div, %div6, !taffo.initweight !3, !taffo.info !4
  %conv7 = fpext float %add to double, !taffo.info !23
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv7), !taffo.constinfo !24
  ret i32 0
}

; Function Attrs: nounwind willreturn
declare !taffo.initweight !25 !taffo.funinfo !26 void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

declare !taffo.initweight !27 !taffo.funinfo !28 dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{}
!3 = !{i32 2}
!4 = !{i1 false, !5, i1 false, i2 -1}
!5 = !{double -3.000000e+03, double 3.000000e+03}
!6 = !{i32 3}
!7 = !{i1 false, !8, i1 false, i2 -1}
!8 = !{double -6.307200e+02, double 6.307200e+02}
!9 = !{i1 false, !10}
!10 = !{i1 false, !11, i1 false, i2 0}
!11 = !{double 2.102400e-01, double 2.102400e-01}
!12 = !{i32 4}
!13 = !{i1 false, !14, i1 false, i2 -1}
!14 = !{double 0xC083B5C2A0000000, double 0x4083B5C2A0000000}
!15 = !{i1 false, !16}
!16 = !{i1 false, !17, i1 false, i2 0}
!17 = !{double 2.000000e+00, double 2.000000e+00}
!18 = !{i1 false, !19, i1 false, i2 -1}
!19 = !{double -2.550000e+02, double 2.550000e+02}
!20 = !{!21, !16}
!21 = !{i1 false, !22, i1 false, i2 0}
!22 = !{double 0x4000D1B720000000, double 0x4000D1B720000000}
!23 = !{i1 false, !5, i1 false, i2 0}
!24 = !{i1 false, i1 false, i1 false}
!25 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!26 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!27 = !{i32 -1}
!28 = !{i32 0, i1 false}
