; ModuleID = './function-double-indirection.out.2.taffotmp.ll'
source_filename = "./function-double-indirection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [32 x i8] c"./function-double-indirection.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [30 x i8] c"scalar(range(0, 10) disabled)\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"target('x') scalar()\00", section "llvm.metadata"
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

; Function Attrs: nounwind willreturn
declare !taffo.initweight !8 !taffo.funinfo !9 void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @function_1_1(float* %x, i32 %y) #0 !taffo.initweight !2 !taffo.equivalentChild !10 !taffo.funinfo !4 {
entry:
  call void @function_1_2.4(float* %x, i32 %y), !taffo.initweight !5, !taffo.info !6, !taffo.originalCall !11, !taffo.constinfo !12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @function_2_2(float* %x) #0 !taffo.initweight !13 !taffo.equivalentChild !14 !taffo.funinfo !15 {
entry:
  %0 = load float, float* %x, align 4, !taffo.initweight !5, !taffo.info !6
  %1 = load float, float* %x, align 4, !taffo.initweight !5, !taffo.info !6
  %mul = fmul float %0, %1, !taffo.initweight !7, !taffo.info !6
  store float %mul, float* %x, align 4, !taffo.initweight !5, !taffo.info !6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @function_2_1(float* %y) #0 !taffo.initweight !13 !taffo.equivalentChild !16 !taffo.funinfo !15 {
entry:
  %x = alloca float, align 4, !taffo.initweight !17, !taffo.info !18
  %x2 = alloca float, align 4, !taffo.initweight !17, !taffo.info !6
  %x3 = bitcast float* %x to i8*, !taffo.initweight !20, !taffo.info !18
  %x24 = bitcast float* %x2 to i8*, !taffo.initweight !20, !taffo.info !6
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), float* %x), !taffo.initweight !20, !taffo.info !18, !taffo.constinfo !12
  %0 = load float, float* %x, align 4, !taffo.initweight !20, !taffo.info !18
  store float %0, float* %x2, align 4, !taffo.initweight !20, !taffo.info !6
  call void @function_2_2.1(float* %x2), !taffo.initweight !20, !taffo.info !6, !taffo.originalCall !21, !taffo.constinfo !22
  %1 = load float, float* %x2, align 4, !taffo.initweight !20, !taffo.info !6
  %2 = load float, float* %y, align 4, !taffo.initweight !5, !taffo.info !6
  %add = fadd float %2, %1, !taffo.initweight !5, !taffo.info !6
  store float %add, float* %y, align 4, !taffo.initweight !5, !taffo.info !6
  ret void
}

declare !taffo.initweight !13 !taffo.funinfo !15 dso_local i32 @__isoc99_scanf(i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !taffo.initweight !2 !taffo.funinfo !4 !taffo.start !23 {
entry:
  %x = alloca float, align 4, !taffo.initweight !17, !taffo.info !24, !taffo.target !26
  %x1 = bitcast float* %x to i8*, !taffo.initweight !20, !taffo.info !24, !taffo.target !26
  store float 5.000000e+00, float* %x, align 4, !taffo.initweight !20, !taffo.info !6, !taffo.target !26, !taffo.constinfo !27
  call void @function_1_1.3(float* %x, i32 2), !taffo.initweight !20, !taffo.info !6, !taffo.originalCall !30, !taffo.target !26, !taffo.constinfo !12
  %0 = load float, float* %x, align 4, !taffo.initweight !20, !taffo.info !31, !taffo.target !26
  %conv = fpext float %0 to double, !taffo.initweight !5, !taffo.info !31, !taffo.target !26
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), double %conv), !taffo.initweight !7, !taffo.info !6, !taffo.target !26, !taffo.constinfo !12
  call void @function_2_1.2(float* %x), !taffo.initweight !20, !taffo.info !6, !taffo.originalCall !33, !taffo.target !26, !taffo.constinfo !22
  %1 = load float, float* %x, align 4, !taffo.initweight !20, !taffo.info !24, !taffo.target !26
  %conv2 = fpext float %1 to double, !taffo.initweight !5, !taffo.info !24, !taffo.target !26
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), double %conv2), !taffo.initweight !7, !taffo.info !6, !taffo.target !26, !taffo.constinfo !12
  ret i32 0
}

declare !taffo.initweight !13 !taffo.funinfo !15 dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @function_2_2.1(float* %x) #0 !taffo.initweight !20 !taffo.equivalentChild !34 !taffo.funinfo !35 !taffo.sourceFunction !21 {
entry:
  %0 = load float, float* %x, align 4, !taffo.initweight !5, !taffo.info !6
  %1 = load float, float* %x, align 4, !taffo.initweight !5, !taffo.info !6
  %mul = fmul float %0, %1, !taffo.initweight !7, !taffo.info !6
  store float %mul, float* %x, align 4, !taffo.initweight !5, !taffo.info !6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @function_2_1.2(float* %y) #0 !taffo.initweight !20 !taffo.funinfo !36 !taffo.sourceFunction !33 {
entry:
  %x = alloca float, align 4, !taffo.initweight !17, !taffo.info !18
  %x2 = alloca float, align 4, !taffo.initweight !17, !taffo.info !37
  %x3 = bitcast float* %x to i8*, !taffo.initweight !20, !taffo.info !18
  %x24 = bitcast float* %x2 to i8*, !taffo.initweight !20, !taffo.info !37
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), float* %x), !taffo.initweight !20, !taffo.info !18, !taffo.constinfo !12
  %0 = load float, float* %x, align 4, !taffo.initweight !20, !taffo.info !18
  store float %0, float* %x2, align 4, !taffo.initweight !20, !taffo.info !6
  call void @function_2_2.1.5(float* %x2), !taffo.initweight !20, !taffo.info !6, !taffo.originalCall !14, !taffo.constinfo !22
  %1 = load float, float* %x2, align 4, !taffo.initweight !20, !taffo.info !37
  %2 = load float, float* %y, align 4, !taffo.initweight !5, !taffo.info !31
  %add = fadd float %2, %1, !taffo.initweight !5, !taffo.info !24
  store float %add, float* %y, align 4, !taffo.initweight !5, !taffo.info !6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @function_1_1.3(float* %x, i32 %y) #0 !taffo.initweight !39 !taffo.funinfo !40 !taffo.sourceFunction !30 {
entry:
  call void @function_1_2.6(float* %x, i32 %y), !taffo.initweight !5, !taffo.info !6, !taffo.originalCall !11, !taffo.constinfo !12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @function_1_2.4(float* %x, i32 %y) #0 !taffo.initweight !43 !taffo.funinfo !44 !taffo.sourceFunction !11 {
entry:
  %0 = load float, float* %x, align 4, !taffo.initweight !5, !taffo.info !6
  %conv = sitofp i32 %y to float
  %mul = fmul float %0, %conv, !taffo.initweight !7, !taffo.info !6
  store float %mul, float* %x, align 4, !taffo.initweight !5, !taffo.info !6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @function_2_2.1.5(float* %x) #0 !taffo.initweight !20 !taffo.funinfo !45 !taffo.sourceFunction !14 {
entry:
  %0 = load float, float* %x, align 4, !taffo.initweight !5, !taffo.info !46
  %1 = load float, float* %x, align 4, !taffo.initweight !5, !taffo.info !46
  %mul = fmul float %0, %1, !taffo.initweight !7, !taffo.info !37
  store float %mul, float* %x, align 4, !taffo.initweight !5, !taffo.info !6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @function_1_2.6(float* %x, i32 %y) #0 !taffo.initweight !43 !taffo.funinfo !40 !taffo.sourceFunction !11 {
entry:
  %0 = load float, float* %x, align 4, !taffo.initweight !5, !taffo.info !47
  %conv = sitofp i32 %y to float, !taffo.info !41
  %mul = fmul float %0, %conv, !taffo.initweight !7, !taffo.info !48
  store float %mul, float* %x, align 4, !taffo.initweight !5, !taffo.info !6
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

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
!8 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!9 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!10 = !{void (float*, i32)* @function_1_1.3}
!11 = !{void (float*, i32)* @function_1_2}
!12 = !{i1 false, i1 false, i1 false}
!13 = !{i32 -1}
!14 = !{void (float*)* @function_2_2.1}
!15 = !{i32 0, i1 false}
!16 = !{void (float*)* @function_2_1.2}
!17 = !{i32 0}
!18 = !{i1 false, !19, i1 false, i2 0}
!19 = !{double 0.000000e+00, double 1.000000e+01}
!20 = !{i32 1}
!21 = !{void (float*)* @function_2_2}
!22 = !{i1 false, i1 false}
!23 = !{i1 true}
!24 = !{i1 false, !25, i1 false, i2 1}
!25 = !{double 5.000000e+00, double 1.100000e+02}
!26 = !{!"x"}
!27 = !{!28, i1 false}
!28 = !{i1 false, !29, i1 false, i2 0}
!29 = !{double 5.000000e+00, double 5.000000e+00}
!30 = !{void (float*, i32)* @function_1_1}
!31 = !{i1 false, !32, i1 false, i2 1}
!32 = !{double 5.000000e+00, double 1.000000e+01}
!33 = !{void (float*)* @function_2_1}
!34 = !{void (float*)* @function_2_2.1.5}
!35 = !{i32 1, !6}
!36 = !{i32 1, !24}
!37 = !{i1 false, !38, i1 false, i2 1}
!38 = !{double 0.000000e+00, double 1.000000e+02}
!39 = !{i32 1, i32 -1}
!40 = !{i32 1, !24, i32 1, !41}
!41 = !{i1 false, !42, i1 false, i2 0}
!42 = !{double 2.000000e+00, double 2.000000e+00}
!43 = !{i32 2, i32 -1}
!44 = !{i32 1, !6, i32 0, i1 false}
!45 = !{i32 1, !37}
!46 = !{i1 false, !19, i1 false, i2 1}
!47 = !{i1 false, !29, i1 false, i2 1}
!48 = !{i1 false, !49, i1 false, i2 1}
!49 = !{double 1.000000e+01, double 1.000000e+01}
