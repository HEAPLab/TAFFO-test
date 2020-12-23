; ModuleID = './inlinetest.out.2.taffotmp.ll'
source_filename = "./inlinetest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [15 x i8] c"./inlinetest.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [4 x i8] c"%a\0A\00", align 1

; Function Attrs: alwaysinline nounwind uwtable
define dso_local float @hello(float %abc) #0 !taffo.initweight !2 !taffo.funinfo !3 {
entry:
  %add = fadd float %abc, 5.000000e+00, !taffo.initweight !4, !taffo.info !5, !taffo.constinfo !6
  ret float %add, !taffo.initweight !9, !taffo.info !5
}

; Function Attrs: nounwind willreturn
declare !taffo.initweight !10 !taffo.funinfo !11 void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #2 !taffo.initweight !12 !taffo.funinfo !13 {
entry:
  %add.i = fadd float 1.230000e+02, 5.000000e+00, !taffo.initweight !4, !taffo.info !14, !taffo.constinfo !16
  %conv = fpext float %add.i to double, !taffo.initweight !4, !taffo.info !14
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %conv), !taffo.initweight !9, !taffo.info !5, !taffo.constinfo !19
  ret i32 0
}

declare !taffo.initweight !2 !taffo.funinfo !3 dso_local i32 @printf(i8*, ...) #3

attributes #0 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind willreturn }
attributes #2 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{i32 -1}
!3 = !{i32 0, i1 false}
!4 = !{i32 2}
!5 = !{i1 false, i1 false, i1 false, i2 1}
!6 = !{i1 false, !7}
!7 = !{i1 false, !8, i1 false, i2 0}
!8 = !{double 5.000000e+00, double 5.000000e+00}
!9 = !{i32 3}
!10 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!11 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!12 = !{i32 -1, i32 -1}
!13 = !{i32 0, i1 false, i32 0, i1 false}
!14 = !{i1 false, !15, i1 false, i2 1}
!15 = !{double 1.280000e+02, double 1.280000e+02}
!16 = !{!17, !7}
!17 = !{i1 false, !18, i1 false, i2 0}
!18 = !{double 1.230000e+02, double 1.230000e+02}
!19 = !{i1 false, i1 false, i1 false}
