; ModuleID = './function-double-indirection.out.3.taffotmp.ll'
source_filename = "./function-double-indirection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.3 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @function_1_2(float* %x, i32 %y) #0 !taffo.initweight !2 !taffo.equivalentChild !3 !taffo.funinfo !4 {
entry:
  %0 = load float, float* %x, align 4, !taffo.initweight !5, !taffo.info !6
  %conv = sitofp i32 %y to float
  %mul = fmul float %0, %conv, !taffo.initweight !7, !taffo.info !6
  store float %mul, float* %x, align 4, !taffo.initweight !5, !taffo.info !6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @function_1_1(float* %x, i32 %y) #0 !taffo.initweight !2 !taffo.equivalentChild !8 !taffo.funinfo !4 {
entry:
  call void @function_1_2.4(float* %x, i32 %y), !taffo.initweight !5, !taffo.info !6, !taffo.originalCall !9, !taffo.constinfo !10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @function_2_2(float* %x) #0 !taffo.initweight !11 !taffo.equivalentChild !12 !taffo.funinfo !13 {
entry:
  %0 = load float, float* %x, align 4, !taffo.initweight !5, !taffo.info !6
  %1 = load float, float* %x, align 4, !taffo.initweight !5, !taffo.info !6
  %mul = fmul float %0, %1, !taffo.initweight !7, !taffo.info !6
  store float %mul, float* %x, align 4, !taffo.initweight !5, !taffo.info !6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @function_2_1(float* %y) #0 !taffo.initweight !11 !taffo.equivalentChild !14 !taffo.funinfo !13 {
entry:
  %x = alloca float, align 4, !taffo.initweight !15, !taffo.info !16
  %x2 = alloca float, align 4, !taffo.initweight !15, !taffo.info !6
  %x3 = bitcast float* %x to i8*, !taffo.initweight !18, !taffo.info !16
  %x24 = bitcast float* %x2 to i8*, !taffo.initweight !18, !taffo.info !6
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), float* %x), !taffo.initweight !18, !taffo.info !16, !taffo.constinfo !10
  %0 = load float, float* %x, align 4, !taffo.initweight !18, !taffo.info !16
  store float %0, float* %x2, align 4, !taffo.initweight !18, !taffo.info !6
  call void @function_2_2.1(float* %x2), !taffo.initweight !18, !taffo.info !6, !taffo.originalCall !19, !taffo.constinfo !20
  %1 = load float, float* %x2, align 4, !taffo.initweight !18, !taffo.info !6
  %2 = load float, float* %y, align 4, !taffo.initweight !5, !taffo.info !6
  %add = fadd float %2, %1, !taffo.initweight !5, !taffo.info !6
  store float %add, float* %y, align 4, !taffo.initweight !5, !taffo.info !6
  ret void
}

declare !taffo.initweight !11 !taffo.funinfo !13 dso_local i32 @__isoc99_scanf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !taffo.initweight !2 !taffo.funinfo !4 !taffo.start !21 {
entry:
  %x = alloca float, align 4, !taffo.initweight !15, !taffo.info !22, !taffo.target !25
  %x1 = bitcast float* %x to i8*, !taffo.initweight !18, !taffo.info !26, !taffo.target !25
  store float 5.000000e+00, float* %x, align 4, !taffo.initweight !18, !taffo.info !6, !taffo.constinfo !27, !taffo.target !25
  call void @function_1_1.3(float* %x, i32 2), !taffo.initweight !18, !taffo.info !6, !taffo.originalCall !30, !taffo.constinfo !10, !taffo.target !25
  %0 = load float, float* %x, align 4, !taffo.initweight !18, !taffo.info !31, !taffo.target !25
  %conv = fpext float %0 to double, !taffo.initweight !5, !taffo.info !31, !taffo.target !25
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), double %conv), !taffo.initweight !7, !taffo.info !34, !taffo.constinfo !10, !taffo.target !25
  call void @function_2_1.2(float* %x), !taffo.initweight !18, !taffo.info !6, !taffo.originalCall !35, !taffo.constinfo !20, !taffo.target !25
  %1 = load float, float* %x, align 4, !taffo.initweight !18, !taffo.info !22, !taffo.target !25
  %conv2 = fpext float %1 to double, !taffo.initweight !5, !taffo.info !22, !taffo.target !25
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), double %conv2), !taffo.initweight !7, !taffo.info !26, !taffo.constinfo !10, !taffo.target !25
  ret i32 0
}

declare !taffo.initweight !11 !taffo.funinfo !13 dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @function_2_2.1(float* %x) #0 !taffo.initweight !18 !taffo.equivalentChild !36 !taffo.funinfo !37 !taffo.sourceFunction !19 {
entry:
  %0 = load float, float* %x, align 4, !taffo.initweight !5, !taffo.info !6
  %1 = load float, float* %x, align 4, !taffo.initweight !5, !taffo.info !6
  %mul = fmul float %0, %1, !taffo.initweight !7, !taffo.info !6
  store float %mul, float* %x, align 4, !taffo.initweight !5, !taffo.info !6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @function_2_1.2(float* %y) #0 !taffo.initweight !18 !taffo.funinfo !38 !taffo.sourceFunction !35 {
entry:
  %x = alloca float, align 4, !taffo.initweight !15, !taffo.info !16
  %x2 = alloca float, align 4, !taffo.initweight !15, !taffo.info !39
  %x3 = bitcast float* %x to i8*, !taffo.initweight !18, !taffo.info !16
  %x24 = bitcast float* %x2 to i8*, !taffo.initweight !18, !taffo.info !26
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), float* %x), !taffo.initweight !18, !taffo.info !16, !taffo.constinfo !10
  %0 = load float, float* %x, align 4, !taffo.initweight !18, !taffo.info !16
  store float %0, float* %x2, align 4, !taffo.initweight !18, !taffo.info !6
  call void @function_2_2.1.5(float* %x2), !taffo.initweight !18, !taffo.info !6, !taffo.originalCall !12, !taffo.constinfo !20
  %1 = load float, float* %x2, align 4, !taffo.initweight !18, !taffo.info !39
  %2 = load float, float* %y, align 4, !taffo.initweight !5, !taffo.info !31
  %add = fadd float %2, %1, !taffo.initweight !5, !taffo.info !22
  store float %add, float* %y, align 4, !taffo.initweight !5, !taffo.info !6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @function_1_1.3(float* %x, i32 %y) #0 !taffo.initweight !41 !taffo.funinfo !42 !taffo.sourceFunction !30 {
entry:
  call void @function_1_2.6(float* %x, i32 %y), !taffo.initweight !5, !taffo.info !6, !taffo.originalCall !9, !taffo.constinfo !10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @function_1_2.4(float* %x, i32 %y) #0 !taffo.initweight !45 !taffo.funinfo !46 !taffo.sourceFunction !9 {
entry:
  %0 = load float, float* %x, align 4, !taffo.initweight !5, !taffo.info !6
  %conv = sitofp i32 %y to float
  %mul = fmul float %0, %conv, !taffo.initweight !7, !taffo.info !6
  store float %mul, float* %x, align 4, !taffo.initweight !5, !taffo.info !6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @function_2_2.1.5(float* %x) #0 !taffo.initweight !18 !taffo.funinfo !47 !taffo.sourceFunction !12 {
entry:
  %0 = load float, float* %x, align 4, !taffo.initweight !5, !taffo.info !48
  %1 = load float, float* %x, align 4, !taffo.initweight !5, !taffo.info !48
  %mul = fmul float %0, %1, !taffo.initweight !7, !taffo.info !39
  store float %mul, float* %x, align 4, !taffo.initweight !5, !taffo.info !6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @function_1_2.6(float* %x, i32 %y) #0 !taffo.initweight !45 !taffo.funinfo !42 !taffo.sourceFunction !9 {
entry:
  %0 = load float, float* %x, align 4, !taffo.initweight !5, !taffo.info !49
  %conv = sitofp i32 %y to float, !taffo.info !43
  %mul = fmul float %0, %conv, !taffo.initweight !7, !taffo.info !50
  store float %mul, float* %x, align 4, !taffo.initweight !5, !taffo.info !6
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{i32 -1, i32 -1}
!3 = !{void (float*, i32)* @function_1_2.4, void (float*, i32)* @function_1_2.6}
!4 = !{i32 0, i1 false, i32 0, i1 false}
!5 = !{i32 2}
!6 = !{i1 false, i1 false, i1 false, i2 1}
!7 = !{i32 3}
!8 = !{void (float*, i32)* @function_1_1.3}
!9 = !{void (float*, i32)* @function_1_2}
!10 = !{i1 false, i1 false, i1 false}
!11 = !{i32 -1}
!12 = !{void (float*)* @function_2_2.1}
!13 = !{i32 0, i1 false}
!14 = !{void (float*)* @function_2_1.2}
!15 = !{i32 0}
!16 = !{i1 false, !17, i1 false, i2 0}
!17 = !{double 0.000000e+00, double 1.000000e+01}
!18 = !{i32 1}
!19 = !{void (float*)* @function_2_2}
!20 = !{i1 false, i1 false}
!21 = !{i1 true}
!22 = !{!23, !24, i1 false, i2 1}
!23 = !{!"fixp", i32 32, i32 25}
!24 = !{double 5.000000e+00, double 1.100000e+02}
!25 = !{!"x"}
!26 = !{!23, i1 false, i1 false, i2 1}
!27 = !{!28, i1 false}
!28 = !{i1 false, !29, i1 false, i2 0}
!29 = !{double 5.000000e+00, double 5.000000e+00}
!30 = !{void (float*, i32)* @function_1_1}
!31 = !{!32, !33, i1 false, i2 1}
!32 = !{!"fixp", i32 32, i32 28}
!33 = !{double 5.000000e+00, double 1.000000e+01}
!34 = !{!32, i1 false, i1 false, i2 1}
!35 = !{void (float*)* @function_2_1}
!36 = !{void (float*)* @function_2_2.1.5}
!37 = !{i32 1, !6}
!38 = !{i32 1, !22}
!39 = !{!23, !40, i1 false, i2 1}
!40 = !{double 0.000000e+00, double 1.000000e+02}
!41 = !{i32 1, i32 -1}
!42 = !{i32 1, !22, i32 1, !43}
!43 = !{i1 false, !44, i1 false, i2 0}
!44 = !{double 2.000000e+00, double 2.000000e+00}
!45 = !{i32 2, i32 -1}
!46 = !{i32 1, !6, i32 0, i1 false}
!47 = !{i32 1, !39}
!48 = !{!32, !17, i1 false, i2 1}
!49 = !{!32, !29, i1 false, i2 1}
!50 = !{!32, !51, i1 false, i2 1}
!51 = !{double 1.000000e+01, double 1.000000e+01}
