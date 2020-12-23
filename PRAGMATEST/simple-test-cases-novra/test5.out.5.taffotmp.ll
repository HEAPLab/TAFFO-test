; ModuleID = './test5.out.4.taffotmp.ll'
source_filename = "./test5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"range -32767 32767\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [10 x i8] c"./test5.c\00", section "llvm.metadata"
@llvm.global.annotations = appending global [1 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (float (float, double)* @fpextfptrunc to i8*), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 5 }], section "llvm.metadata"

; Function Attrs: noinline nounwind uwtable
define dso_local float @fpextfptrunc(float %a, double %b) #0 !taffo.initweight !2 !taffo.funinfo !3 {
entry:
  %0 = fmul double 6.553600e+04, %b, !taffo.info !4
  %1 = fptosi double %0 to i32, !taffo.info !4
  %2 = fmul float 6.553600e+04, %a, !taffo.info !4
  %3 = fptosi float %2 to i32, !taffo.info !4
  %a.addr.s16_16fixp = alloca i32, align 4, !taffo.info !4
  %b.addr.s16_16fixp = alloca i32, align 8, !taffo.info !4
  %c = alloca double, align 8
  store i32 %3, i32* %a.addr.s16_16fixp, align 4, !taffo.info !7
  store i32 %1, i32* %b.addr.s16_16fixp, align 8, !taffo.info !7
  store double 1.230000e+02, double* %c, align 8
  %s16_16fixp = load i32, i32* %a.addr.s16_16fixp, align 4, !taffo.info !4
  %4 = load double, double* %c, align 8
  %5 = fmul double 6.553600e+04, %4, !taffo.info !4
  %6 = fptosi double %5 to i32, !taffo.info !4
  %add.s16_16fixp = add i32 %6, %s16_16fixp, !taffo.info !4
  %7 = sitofp i32 %add.s16_16fixp to double, !taffo.info !4
  %8 = fdiv double %7, 6.553600e+04, !taffo.info !4
  store double %8, double* %c, align 8, !taffo.info !7
  %9 = load double, double* %c, align 8
  %conv3 = fptrunc double %9 to float
  %conv4 = fpext float %conv3 to double
  %s16_16fixp1 = load i32, i32* %b.addr.s16_16fixp, align 8, !taffo.info !4
  %10 = fmul double 6.553600e+04, %conv4, !taffo.info !4
  %11 = fptosi double %10 to i32, !taffo.info !4
  %add5.s16_16fixp = add i32 %11, %s16_16fixp1, !taffo.info !4
  %12 = sitofp i32 %add5.s16_16fixp to float, !taffo.info !4
  %13 = fdiv float %12, 6.553600e+04, !taffo.info !4
  ret float %13, !taffo.initweight !8, !taffo.info !7
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{i32 -1, i32 -1}
!3 = !{i32 0, i1 false, i32 0, i1 false}
!4 = !{!5, !6, i1 false, i2 1}
!5 = !{!"fixp", i32 -32, i32 16}
!6 = !{double -3.276700e+04, double 3.276700e+04}
!7 = !{i1 false, !6, i1 false, i2 1}
!8 = !{i32 4}
