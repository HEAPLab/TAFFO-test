; ModuleID = './function-double-indirection.out.1.taffotmp.ll'
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
  %x.addr = alloca float*, align 8, !taffo.initweight !5, !taffo.info !6
  %y.addr = alloca i32, align 4
  store float* %x, float** %x.addr, align 8, !taffo.initweight !7, !taffo.info !6
  %x.addr1 = bitcast float** %x.addr to i8*, !taffo.initweight !7, !taffo.info !6
  store i32 %y, i32* %y.addr, align 4
  %0 = load float*, float** %x.addr, align 8, !taffo.initweight !7, !taffo.info !6
  %1 = load float, float* %0, align 4, !taffo.initweight !8, !taffo.info !6
  %2 = load i32, i32* %y.addr, align 4
  %conv = sitofp i32 %2 to float
  %mul = fmul float %1, %conv, !taffo.initweight !9, !taffo.info !6
  %3 = load float*, float** %x.addr, align 8, !taffo.initweight !7, !taffo.info !6
  store float %mul, float* %3, align 4, !taffo.initweight !8, !taffo.info !6
  ret void
}

; Function Attrs: nounwind willreturn
declare !taffo.initweight !10 !taffo.funinfo !11 void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @function_1_1(float* %x, i32 %y) #0 !taffo.initweight !2 !taffo.equivalentChild !12 !taffo.funinfo !4 {
entry:
  %x.addr = alloca float*, align 8, !taffo.initweight !5, !taffo.info !6
  %y.addr = alloca i32, align 4
  store float* %x, float** %x.addr, align 8, !taffo.initweight !7, !taffo.info !6
  %x.addr1 = bitcast float** %x.addr to i8*, !taffo.initweight !7, !taffo.info !6
  store i32 %y, i32* %y.addr, align 4
  %0 = load float*, float** %x.addr, align 8, !taffo.initweight !7, !taffo.info !6
  %1 = load i32, i32* %y.addr, align 4
  call void @function_1_2.4(float* %0, i32 %1), !taffo.initweight !8, !taffo.info !6, !taffo.originalCall !13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @function_2_2(float* %x) #0 !taffo.initweight !14 !taffo.equivalentChild !15 !taffo.funinfo !16 {
entry:
  %x.addr = alloca float*, align 8, !taffo.initweight !5, !taffo.info !6
  store float* %x, float** %x.addr, align 8, !taffo.initweight !7, !taffo.info !6
  %x.addr1 = bitcast float** %x.addr to i8*, !taffo.initweight !7, !taffo.info !6
  %0 = load float*, float** %x.addr, align 8, !taffo.initweight !7, !taffo.info !6
  %1 = load float, float* %0, align 4, !taffo.initweight !8, !taffo.info !6
  %2 = load float*, float** %x.addr, align 8, !taffo.initweight !7, !taffo.info !6
  %3 = load float, float* %2, align 4, !taffo.initweight !8, !taffo.info !6
  %mul = fmul float %1, %3, !taffo.initweight !9, !taffo.info !6
  %4 = load float*, float** %x.addr, align 8, !taffo.initweight !7, !taffo.info !6
  store float %mul, float* %4, align 4, !taffo.initweight !8, !taffo.info !6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @function_2_1(float* %y) #0 !taffo.initweight !14 !taffo.equivalentChild !17 !taffo.funinfo !16 {
entry:
  %y.addr = alloca float*, align 8, !taffo.initweight !5, !taffo.info !6
  %x = alloca float, align 4, !taffo.initweight !5, !taffo.info !18
  %x2 = alloca float, align 4, !taffo.initweight !5, !taffo.info !6
  store float* %y, float** %y.addr, align 8, !taffo.initweight !7, !taffo.info !6
  %y.addr1 = bitcast float** %y.addr to i8*, !taffo.initweight !7, !taffo.info !6
  %y.addr2 = bitcast float** %y.addr to i8*, !taffo.initweight !7, !taffo.info !6
  %x3 = bitcast float* %x to i8*, !taffo.initweight !7, !taffo.info !18
  %x24 = bitcast float* %x2 to i8*, !taffo.initweight !7, !taffo.info !6
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), float* %x), !taffo.initweight !7, !taffo.info !18
  %0 = load float, float* %x, align 4, !taffo.initweight !7, !taffo.info !18
  store float %0, float* %x2, align 4, !taffo.initweight !7, !taffo.info !6
  call void @function_2_2.1(float* %x2), !taffo.initweight !7, !taffo.info !6, !taffo.originalCall !20
  %1 = load float, float* %x2, align 4, !taffo.initweight !7, !taffo.info !6
  %2 = load float*, float** %y.addr, align 8, !taffo.initweight !7, !taffo.info !6
  %3 = load float, float* %2, align 4, !taffo.initweight !8, !taffo.info !6
  %add = fadd float %3, %1, !taffo.initweight !8, !taffo.info !6
  store float %add, float* %2, align 4, !taffo.initweight !8, !taffo.info !6
  ret void
}

declare !taffo.initweight !14 !taffo.funinfo !16 dso_local i32 @__isoc99_scanf(i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !taffo.start !21 !taffo.initweight !2 !taffo.funinfo !4 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %x = alloca float, align 4, !taffo.initweight !5, !taffo.info !6, !taffo.target !22
  %y = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %x1 = bitcast float* %x to i8*, !taffo.initweight !7, !taffo.info !6, !taffo.target !22
  store float 5.000000e+00, float* %x, align 4, !taffo.initweight !7, !taffo.info !6, !taffo.target !22
  store i32 2, i32* %y, align 4
  %0 = load i32, i32* %y, align 4
  call void @function_1_1.3(float* %x, i32 %0), !taffo.initweight !7, !taffo.info !6, !taffo.target !22, !taffo.originalCall !23
  %1 = load float, float* %x, align 4, !taffo.initweight !7, !taffo.info !6, !taffo.target !22
  %conv = fpext float %1 to double, !taffo.initweight !8, !taffo.info !6, !taffo.target !22
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), double %conv), !taffo.initweight !9, !taffo.info !6, !taffo.target !22
  call void @function_2_1.2(float* %x), !taffo.initweight !7, !taffo.info !6, !taffo.target !22, !taffo.originalCall !24
  %2 = load float, float* %x, align 4, !taffo.initweight !7, !taffo.info !6, !taffo.target !22
  %conv2 = fpext float %2 to double, !taffo.initweight !8, !taffo.info !6, !taffo.target !22
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), double %conv2), !taffo.initweight !9, !taffo.info !6, !taffo.target !22
  ret i32 0
}

declare !taffo.initweight !14 !taffo.funinfo !16 dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @function_2_2.1(float* %x) #0 !taffo.initweight !7 !taffo.equivalentChild !25 !taffo.sourceFunction !20 !taffo.funinfo !26 {
entry:
  %x.addr = alloca float*, align 8, !taffo.initweight !5, !taffo.info !6
  store float* %x, float** %x.addr, align 8, !taffo.initweight !7, !taffo.info !6
  %x.addr1 = bitcast float** %x.addr to i8*, !taffo.initweight !7, !taffo.info !6
  %0 = load float*, float** %x.addr, align 8, !taffo.initweight !7, !taffo.info !6
  %1 = load float, float* %0, align 4, !taffo.initweight !8, !taffo.info !6
  %2 = load float*, float** %x.addr, align 8, !taffo.initweight !7, !taffo.info !6
  %3 = load float, float* %2, align 4, !taffo.initweight !8, !taffo.info !6
  %mul = fmul float %1, %3, !taffo.initweight !9, !taffo.info !6
  %4 = load float*, float** %x.addr, align 8, !taffo.initweight !7, !taffo.info !6
  store float %mul, float* %4, align 4, !taffo.initweight !8, !taffo.info !6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @function_2_1.2(float* %y) #0 !taffo.initweight !7 !taffo.sourceFunction !24 !taffo.funinfo !26 {
entry:
  %y.addr = alloca float*, align 8, !taffo.initweight !5, !taffo.info !6
  %x = alloca float, align 4, !taffo.initweight !5, !taffo.info !18
  %x2 = alloca float, align 4, !taffo.initweight !5, !taffo.info !6
  store float* %y, float** %y.addr, align 8, !taffo.initweight !7, !taffo.info !6
  %y.addr1 = bitcast float** %y.addr to i8*, !taffo.initweight !7, !taffo.info !6
  %y.addr2 = bitcast float** %y.addr to i8*, !taffo.initweight !7, !taffo.info !6
  %x3 = bitcast float* %x to i8*, !taffo.initweight !7, !taffo.info !18
  %x24 = bitcast float* %x2 to i8*, !taffo.initweight !7, !taffo.info !6
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), float* %x), !taffo.initweight !7, !taffo.info !18
  %0 = load float, float* %x, align 4, !taffo.initweight !7, !taffo.info !18
  store float %0, float* %x2, align 4, !taffo.initweight !7, !taffo.info !6
  call void @function_2_2.1.5(float* %x2), !taffo.initweight !7, !taffo.info !6, !taffo.originalCall !15
  %1 = load float, float* %x2, align 4, !taffo.initweight !7, !taffo.info !6
  %2 = load float*, float** %y.addr, align 8, !taffo.initweight !7, !taffo.info !6
  %3 = load float, float* %2, align 4, !taffo.initweight !8, !taffo.info !6
  %add = fadd float %3, %1, !taffo.initweight !8, !taffo.info !6
  store float %add, float* %2, align 4, !taffo.initweight !8, !taffo.info !6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @function_1_1.3(float* %x, i32 %y) #0 !taffo.initweight !27 !taffo.sourceFunction !23 !taffo.funinfo !28 {
entry:
  %x.addr = alloca float*, align 8, !taffo.initweight !5, !taffo.info !6
  %y.addr = alloca i32, align 4
  store float* %x, float** %x.addr, align 8, !taffo.initweight !7, !taffo.info !6
  %x.addr1 = bitcast float** %x.addr to i8*, !taffo.initweight !7, !taffo.info !6
  store i32 %y, i32* %y.addr, align 4
  %0 = load float*, float** %x.addr, align 8, !taffo.initweight !7, !taffo.info !6
  %1 = load i32, i32* %y.addr, align 4
  call void @function_1_2.6(float* %0, i32 %1), !taffo.initweight !8, !taffo.info !6, !taffo.originalCall !13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @function_1_2.4(float* %x, i32 %y) #0 !taffo.initweight !29 !taffo.sourceFunction !13 !taffo.funinfo !28 {
entry:
  %x.addr = alloca float*, align 8, !taffo.initweight !5, !taffo.info !6
  %y.addr = alloca i32, align 4
  store float* %x, float** %x.addr, align 8, !taffo.initweight !7, !taffo.info !6
  %x.addr1 = bitcast float** %x.addr to i8*, !taffo.initweight !7, !taffo.info !6
  store i32 %y, i32* %y.addr, align 4
  %0 = load float*, float** %x.addr, align 8, !taffo.initweight !7, !taffo.info !6
  %1 = load float, float* %0, align 4, !taffo.initweight !8, !taffo.info !6
  %2 = load i32, i32* %y.addr, align 4
  %conv = sitofp i32 %2 to float
  %mul = fmul float %1, %conv, !taffo.initweight !9, !taffo.info !6
  %3 = load float*, float** %x.addr, align 8, !taffo.initweight !7, !taffo.info !6
  store float %mul, float* %3, align 4, !taffo.initweight !8, !taffo.info !6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @function_2_2.1.5(float* %x) #0 !taffo.initweight !7 !taffo.sourceFunction !15 !taffo.funinfo !26 {
entry:
  %x.addr = alloca float*, align 8, !taffo.initweight !5, !taffo.info !6
  store float* %x, float** %x.addr, align 8, !taffo.initweight !7, !taffo.info !6
  %x.addr1 = bitcast float** %x.addr to i8*, !taffo.initweight !7, !taffo.info !6
  %0 = load float*, float** %x.addr, align 8, !taffo.initweight !7, !taffo.info !6
  %1 = load float, float* %0, align 4, !taffo.initweight !8, !taffo.info !6
  %2 = load float*, float** %x.addr, align 8, !taffo.initweight !7, !taffo.info !6
  %3 = load float, float* %2, align 4, !taffo.initweight !8, !taffo.info !6
  %mul = fmul float %1, %3, !taffo.initweight !9, !taffo.info !6
  %4 = load float*, float** %x.addr, align 8, !taffo.initweight !7, !taffo.info !6
  store float %mul, float* %4, align 4, !taffo.initweight !8, !taffo.info !6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @function_1_2.6(float* %x, i32 %y) #0 !taffo.initweight !29 !taffo.sourceFunction !13 !taffo.funinfo !28 {
entry:
  %x.addr = alloca float*, align 8, !taffo.initweight !5, !taffo.info !6
  %y.addr = alloca i32, align 4
  store float* %x, float** %x.addr, align 8, !taffo.initweight !7, !taffo.info !6
  %x.addr1 = bitcast float** %x.addr to i8*, !taffo.initweight !7, !taffo.info !6
  store i32 %y, i32* %y.addr, align 4
  %0 = load float*, float** %x.addr, align 8, !taffo.initweight !7, !taffo.info !6
  %1 = load float, float* %0, align 4, !taffo.initweight !8, !taffo.info !6
  %2 = load i32, i32* %y.addr, align 4
  %conv = sitofp i32 %2 to float
  %mul = fmul float %1, %conv, !taffo.initweight !9, !taffo.info !6
  %3 = load float*, float** %x.addr, align 8, !taffo.initweight !7, !taffo.info !6
  store float %mul, float* %3, align 4, !taffo.initweight !8, !taffo.info !6
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
!5 = !{i32 0}
!6 = !{i1 false, i1 false, i1 false, i2 1}
!7 = !{i32 1}
!8 = !{i32 2}
!9 = !{i32 3}
!10 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!11 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!12 = !{void (float*, i32)* @function_1_1.3}
!13 = !{void (float*, i32)* @function_1_2}
!14 = !{i32 -1}
!15 = !{void (float*)* @function_2_2.1}
!16 = !{i32 0, i1 false}
!17 = !{void (float*)* @function_2_1.2}
!18 = !{i1 false, !19, i1 false, i2 0}
!19 = !{double 0.000000e+00, double 1.000000e+01}
!20 = !{void (float*)* @function_2_2}
!21 = !{i1 true}
!22 = !{!"x"}
!23 = !{void (float*, i32)* @function_1_1}
!24 = !{void (float*)* @function_2_1}
!25 = !{void (float*)* @function_2_2.1.5}
!26 = !{i32 1, !6}
!27 = !{i32 1, i32 -1}
!28 = !{i32 1, !6, i32 0, i1 false}
!29 = !{i32 2, i32 -1}
