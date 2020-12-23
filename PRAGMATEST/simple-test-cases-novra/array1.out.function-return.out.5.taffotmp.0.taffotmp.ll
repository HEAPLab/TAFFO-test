; ModuleID = './function-return.out.5.taffotmp.ll'
source_filename = "./function-return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"scalar(range(-10, 10))\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [20 x i8] c"./function-return.c\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@llvm.global.annotations = appending global [1 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (float ()* @fun to i8*), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i32 6 }], section "llvm.metadata"

; Function Attrs: noinline nounwind uwtable
define dso_local float @fun() #0 !taffo.initweight !2 !taffo.equivalentChild !3 !taffo.funinfo !2 {
entry:
  %t = alloca float, align 4
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), float* %t)
  %0 = load float, float* %t, align 4
  ret float %0
}

declare !taffo.initweight !4 !taffo.funinfo !5 dso_local i32 @__isoc99_scanf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !2 !taffo.funinfo !2 {
entry:
  %retval = alloca i32, align 4
  %x = alloca float, align 4
  store i32 0, i32* %retval, align 4
  %call.s5_27fixp = call i32 @fun.1_s5_27fixp(), !taffo.info !6
  %0 = sitofp i32 %call.s5_27fixp to float, !taffo.info !6
  %1 = fdiv float %0, 0x41A0000000000000, !taffo.info !6
  store float %1, float* %x, align 4, !taffo.info !9
  %2 = load float, float* %x, align 4
  %conv = fpext float %2 to double
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv)
  ret i32 0
}

declare !taffo.initweight !4 !taffo.funinfo !5 dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @fun.1_s5_27fixp() #0 !taffo.initweight !2 !taffo.funinfo !2 !taffo.sourceFunction !10 {
entry:
  %t = alloca float, align 4
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), float* %t)
  %0 = load float, float* %t, align 4
  %1 = fmul float 0x41A0000000000000, %0
  %2 = fptosi float %1 to i32
  ret i32 %2
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{}
!3 = distinct !{null}
!4 = !{i32 -1}
!5 = !{i32 0, i1 false}
!6 = !{!7, !8, i1 false, i2 1}
!7 = !{!"fixp", i32 -32, i32 27}
!8 = !{double -1.000000e+01, double 1.000000e+01}
!9 = !{i1 false, !8, i1 false, i2 1}
!10 = !{float ()* @fun}
