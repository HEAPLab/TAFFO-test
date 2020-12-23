; ModuleID = './function-double-indirection.out.3.taffotmp.ll'
source_filename = "./function-double-indirection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.2 = private unnamed_addr constant [3 x i8] c"%f\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @function_1_2(float* %x, i32 %y) #0 !taffo.initweight !2 !taffo.equivalentChild !3 !taffo.funinfo !4 {
entry:
  %x.addr = alloca float*, align 8
  %y.addr = alloca i32, align 4
  store float* %x, float** %x.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  %0 = load float*, float** %x.addr, align 8
  %1 = load float, float* %0, align 4
  %2 = load i32, i32* %y.addr, align 4
  %conv = sitofp i32 %2 to float
  %mul = fmul float %1, %conv
  %3 = load float*, float** %x.addr, align 8
  store float %mul, float* %3, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @function_1_1(float* %x, i32 %y) #0 !taffo.initweight !2 !taffo.equivalentChild !5 !taffo.funinfo !4 {
entry:
  %x.addr = alloca float*, align 8
  %y.addr = alloca i32, align 4
  store float* %x, float** %x.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  %0 = load float*, float** %x.addr, align 8
  %1 = load i32, i32* %y.addr, align 4
  call void @function_1_2(float* %0, i32 %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @function_2_2(float* %x) #0 !taffo.initweight !6 !taffo.equivalentChild !7 !taffo.funinfo !8 {
entry:
  %x.addr = alloca float*, align 8
  store float* %x, float** %x.addr, align 8
  %0 = load float*, float** %x.addr, align 8
  %1 = load float, float* %0, align 4
  %2 = load float*, float** %x.addr, align 8
  %3 = load float, float* %2, align 4
  %mul = fmul float %1, %3
  %4 = load float*, float** %x.addr, align 8
  store float %mul, float* %4, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @function_2_1(float* %y) #0 !taffo.initweight !6 !taffo.equivalentChild !9 !taffo.funinfo !8 {
entry:
  %y.addr = alloca float*, align 8
  %x = alloca float, align 4
  %x2 = alloca float, align 4, !taffo.initweight !10, !taffo.info !11
  store float* %y, float** %y.addr, align 8
  %x21 = bitcast float* %x2 to i8*, !taffo.initweight !14, !taffo.info !15
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), float* %x)
  %0 = load float, float* %x, align 4
  store float %0, float* %x2, align 4, !taffo.initweight !14, !taffo.info !16
  call void @function_2_2.1(float* %x2), !taffo.initweight !14, !taffo.info !16, !taffo.originalCall !17
  %1 = load float, float* %x2, align 4, !taffo.initweight !14, !taffo.info !11
  %2 = load float*, float** %y.addr, align 8
  %3 = load float, float* %2, align 4
  %add = fadd float %3, %1, !taffo.initweight !18, !taffo.info !11
  store float %add, float* %2, align 4, !taffo.initweight !19, !taffo.info !16
  ret void
}

declare !taffo.initweight !6 !taffo.funinfo !8 dso_local i32 @__isoc99_scanf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !taffo.initweight !2 !taffo.funinfo !4 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %x = alloca float, align 4, !taffo.initweight !10, !taffo.info !11
  %y = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %x1 = bitcast float* %x to i8*, !taffo.initweight !14, !taffo.info !15
  store float 5.000000e+00, float* %x, align 4, !taffo.initweight !14, !taffo.info !16
  store i32 2, i32* %y, align 4
  %0 = load i32, i32* %y, align 4
  call void @function_1_1.3(float* %x, i32 %0), !taffo.initweight !14, !taffo.info !16, !taffo.originalCall !20
  %1 = load float, float* %x, align 4, !taffo.initweight !14, !taffo.info !11
  %conv = fpext float %1 to double, !taffo.initweight !18, !taffo.info !11
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), double %conv), !taffo.initweight !19, !taffo.info !15
  call void @function_2_1.2(float* %x), !taffo.initweight !14, !taffo.info !16, !taffo.originalCall !21
  %2 = load float, float* %x, align 4, !taffo.initweight !14, !taffo.info !11
  %conv2 = fpext float %2 to double, !taffo.initweight !18, !taffo.info !11
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), double %conv2), !taffo.initweight !19, !taffo.info !15
  ret i32 0
}

declare !taffo.initweight !6 !taffo.funinfo !8 dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @function_2_2.1(float* %x) #0 !taffo.initweight !14 !taffo.equivalentChild !22 !taffo.funinfo !23 !taffo.sourceFunction !17 {
entry:
  %x.addr = alloca float*, align 8, !taffo.initweight !18, !taffo.info !11
  store float* %x, float** %x.addr, align 8, !taffo.initweight !19, !taffo.info !16
  %0 = load float*, float** %x.addr, align 8, !taffo.initweight !19, !taffo.info !11
  %1 = load float, float* %0, align 4, !taffo.initweight !24, !taffo.info !11
  %2 = load float*, float** %x.addr, align 8, !taffo.initweight !19, !taffo.info !11
  %3 = load float, float* %2, align 4, !taffo.initweight !24, !taffo.info !11
  %mul = fmul float %1, %3, !taffo.initweight !25, !taffo.info !11
  %4 = load float*, float** %x.addr, align 8, !taffo.initweight !19, !taffo.info !11
  store float %mul, float* %4, align 4, !taffo.initweight !24, !taffo.info !16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @function_2_1.2(float* %y) #0 !taffo.initweight !14 !taffo.funinfo !23 !taffo.sourceFunction !21 {
entry:
  %y.addr = alloca float*, align 8, !taffo.initweight !18, !taffo.info !11
  %x = alloca float, align 4
  %x2 = alloca float, align 4, !taffo.initweight !10, !taffo.info !11
  store float* %y, float** %y.addr, align 8, !taffo.initweight !19, !taffo.info !16
  %x21 = bitcast float* %x2 to i8*, !taffo.initweight !14, !taffo.info !15
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), float* %x)
  %0 = load float, float* %x, align 4
  store float %0, float* %x2, align 4, !taffo.initweight !14, !taffo.info !16
  call void @function_2_2.1.4(float* %x2), !taffo.initweight !14, !taffo.info !16, !taffo.originalCall !7
  %1 = load float, float* %x2, align 4, !taffo.initweight !14, !taffo.info !11
  %2 = load float*, float** %y.addr, align 8, !taffo.initweight !19, !taffo.info !11
  %3 = load float, float* %2, align 4, !taffo.initweight !24, !taffo.info !11
  %add = fadd float %3, %1, !taffo.initweight !18, !taffo.info !11
  store float %add, float* %2, align 4, !taffo.initweight !19, !taffo.info !16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @function_1_1.3(float* %x, i32 %y) #0 !taffo.initweight !26 !taffo.funinfo !27 !taffo.sourceFunction !20 {
entry:
  %x.addr = alloca float*, align 8, !taffo.initweight !18, !taffo.info !11
  %y.addr = alloca i32, align 4
  store float* %x, float** %x.addr, align 8, !taffo.initweight !19, !taffo.info !16
  store i32 %y, i32* %y.addr, align 4
  %0 = load float*, float** %x.addr, align 8, !taffo.initweight !19, !taffo.info !11
  %1 = load i32, i32* %y.addr, align 4
  call void @function_1_2.5(float* %0, i32 %1), !taffo.initweight !24, !taffo.info !16, !taffo.originalCall !28
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @function_2_2.1.4(float* %x) #0 !taffo.initweight !14 !taffo.funinfo !23 !taffo.sourceFunction !7 {
entry:
  %x.addr = alloca float*, align 8, !taffo.initweight !18, !taffo.info !11
  store float* %x, float** %x.addr, align 8, !taffo.initweight !19, !taffo.info !16
  %0 = load float*, float** %x.addr, align 8, !taffo.initweight !19, !taffo.info !11
  %1 = load float, float* %0, align 4, !taffo.initweight !24, !taffo.info !11
  %2 = load float*, float** %x.addr, align 8, !taffo.initweight !19, !taffo.info !11
  %3 = load float, float* %2, align 4, !taffo.initweight !24, !taffo.info !11
  %mul = fmul float %1, %3, !taffo.initweight !25, !taffo.info !11
  %4 = load float*, float** %x.addr, align 8, !taffo.initweight !19, !taffo.info !11
  store float %mul, float* %4, align 4, !taffo.initweight !24, !taffo.info !16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @function_1_2.5(float* %x, i32 %y) #0 !taffo.initweight !29 !taffo.funinfo !27 !taffo.sourceFunction !28 {
entry:
  %x.addr = alloca float*, align 8, !taffo.initweight !25, !taffo.info !11
  %y.addr = alloca i32, align 4
  store float* %x, float** %x.addr, align 8, !taffo.initweight !30, !taffo.info !16
  store i32 %y, i32* %y.addr, align 4
  %0 = load float*, float** %x.addr, align 8, !taffo.initweight !30, !taffo.info !11
  %1 = load float, float* %0, align 4, !taffo.initweight !31, !taffo.info !11
  %2 = load i32, i32* %y.addr, align 4
  %conv = sitofp i32 %2 to float
  %mul = fmul float %1, %conv, !taffo.initweight !32, !taffo.info !11
  %3 = load float*, float** %x.addr, align 8, !taffo.initweight !30, !taffo.info !11
  store float %mul, float* %3, align 4, !taffo.initweight !31, !taffo.info !16
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{i32 -1, i32 -1}
!3 = !{void (float*, i32)* @function_1_2.5}
!4 = !{i32 0, i1 false, i32 0, i1 false}
!5 = !{void (float*, i32)* @function_1_1.3}
!6 = !{i32 -1}
!7 = !{void (float*)* @function_2_2.1}
!8 = !{i32 0, i1 false}
!9 = !{void (float*)* @function_2_1.2}
!10 = !{i32 0}
!11 = !{!12, !13, i1 false, i2 1}
!12 = !{!"fixp", i32 32, i32 28}
!13 = !{double 0.000000e+00, double 1.000000e+01}
!14 = !{i32 1}
!15 = !{!12, i1 false, i1 false, i2 1}
!16 = !{i1 false, !13, i1 false, i2 1}
!17 = !{void (float*)* @function_2_2}
!18 = !{i32 2}
!19 = !{i32 3}
!20 = !{void (float*, i32)* @function_1_1}
!21 = !{void (float*)* @function_2_1}
!22 = !{void (float*)* @function_2_2.1.4}
!23 = !{i32 1, !11}
!24 = !{i32 4}
!25 = !{i32 5}
!26 = !{i32 1, i32 -1}
!27 = !{i32 1, !11, i32 0, i1 false}
!28 = !{void (float*, i32)* @function_1_2}
!29 = !{i32 4, i32 -1}
!30 = !{i32 6}
!31 = !{i32 7}
!32 = !{i32 8}
