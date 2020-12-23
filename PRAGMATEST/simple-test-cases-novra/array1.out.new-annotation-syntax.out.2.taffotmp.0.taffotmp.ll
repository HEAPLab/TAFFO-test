; ModuleID = './new-annotation-syntax.out.2.taffotmp.ll'
source_filename = "./new-annotation-syntax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abc = type { float, i32, %struct.def }
%struct.def = type { float, i32 }

@.str = private unnamed_addr constant [24 x i8] c"target('test') scalar()\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [26 x i8] c"./new-annotation-syntax.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [22 x i8] c"backtracking scalar()\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [28 x i8] c"backtracking(true) scalar()\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [27 x i8] c"backtracking(yes) scalar()\00", section "llvm.metadata"
@.str.5 = private unnamed_addr constant [29 x i8] c"backtracking(false) scalar()\00", section "llvm.metadata"
@.str.6 = private unnamed_addr constant [26 x i8] c"backtracking(no) scalar()\00", section "llvm.metadata"
@.str.7 = private unnamed_addr constant [37 x i8] c"target('test') backtracking scalar()\00", section "llvm.metadata"
@.str.8 = private unnamed_addr constant [39 x i8] c"target('test quote @' quote') scalar()\00", section "llvm.metadata"
@.str.9 = private unnamed_addr constant [39 x i8] c"target('test quote @@ quote') scalar()\00", section "llvm.metadata"
@.str.10 = private unnamed_addr constant [25 x i8] c"scalar(range(-200, 200))\00", section "llvm.metadata"
@.str.11 = private unnamed_addr constant [26 x i8] c"scalar(type(signed 32 8))\00", section "llvm.metadata"
@.str.12 = private unnamed_addr constant [19 x i8] c"scalar(error(0.5))\00", section "llvm.metadata"
@.str.13 = private unnamed_addr constant [57 x i8] c"scalar(error(0.5) range(-200, 200) type(signed 0x1F 07))\00", section "llvm.metadata"
@.str.14 = private unnamed_addr constant [79 x i8] c"struct[scalar(range(-200, 200)), void, struct[scalar(range(-200, 200)), void]]\00", section "llvm.metadata"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !taffo.start !2 !taffo.initweight !3 !taffo.funinfo !4 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %t1 = alloca float, align 4, !taffo.initweight !5, !taffo.target !6, !taffo.info !7
  %t2 = alloca float, align 4, !taffo.initweight !5, !taffo.info !7
  %t20 = alloca float, align 4, !taffo.initweight !5, !taffo.info !7
  %t21 = alloca float, align 4, !taffo.initweight !5, !taffo.info !7
  %t225 = alloca float, align 4, !taffo.initweight !5, !taffo.info !7
  %t23 = alloca float, align 4, !taffo.initweight !5, !taffo.info !7
  %t3 = alloca float, align 4, !taffo.initweight !5, !taffo.target !6, !taffo.info !7
  %t30 = alloca float, align 4, !taffo.initweight !5, !taffo.target !8, !taffo.info !7
  %t31 = alloca float, align 4, !taffo.initweight !5, !taffo.target !9, !taffo.info !7
  %t4 = alloca float, align 4, !taffo.initweight !5, !taffo.info !10
  %t5 = alloca float, align 4, !taffo.initweight !5, !taffo.info !12
  %t6 = alloca float, align 4, !taffo.initweight !5, !taffo.info !14
  %t7 = alloca float, align 4, !taffo.initweight !5, !taffo.info !16
  %t8 = alloca %struct.abc, align 4, !taffo.initweight !5, !taffo.structinfo !18
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %t11 = bitcast float* %t1 to i8*, !taffo.initweight !20, !taffo.target !6, !taffo.info !7
  store float 1.230000e+02, float* %t1, align 4, !taffo.initweight !20, !taffo.target !6, !taffo.info !7
  %t22 = bitcast float* %t2 to i8*, !taffo.initweight !20, !taffo.info !7
  store float 1.230000e+02, float* %t2, align 4, !taffo.initweight !20, !taffo.info !7
  %t203 = bitcast float* %t20 to i8*, !taffo.initweight !20, !taffo.info !7
  store float 1.230000e+02, float* %t20, align 4, !taffo.initweight !20, !taffo.info !7
  %t214 = bitcast float* %t21 to i8*, !taffo.initweight !20, !taffo.info !7
  store float 1.230000e+02, float* %t21, align 4, !taffo.initweight !20, !taffo.info !7
  %t2256 = bitcast float* %t225 to i8*, !taffo.initweight !20, !taffo.info !7
  store float 1.230000e+02, float* %t225, align 4, !taffo.initweight !20, !taffo.info !7
  %t237 = bitcast float* %t23 to i8*, !taffo.initweight !20, !taffo.info !7
  store float 1.230000e+02, float* %t23, align 4, !taffo.initweight !20, !taffo.info !7
  %t38 = bitcast float* %t3 to i8*, !taffo.initweight !20, !taffo.target !6, !taffo.info !7
  store float 1.230000e+02, float* %t3, align 4, !taffo.initweight !20, !taffo.target !6, !taffo.info !7
  %t309 = bitcast float* %t30 to i8*, !taffo.initweight !20, !taffo.target !8, !taffo.info !7
  store float 1.230000e+02, float* %t30, align 4, !taffo.initweight !20, !taffo.target !8, !taffo.info !7
  %t3110 = bitcast float* %t31 to i8*, !taffo.initweight !20, !taffo.target !9, !taffo.info !7
  store float 1.230000e+02, float* %t31, align 4, !taffo.initweight !20, !taffo.target !9, !taffo.info !7
  %t411 = bitcast float* %t4 to i8*, !taffo.initweight !20, !taffo.info !10
  store float 1.230000e+02, float* %t4, align 4, !taffo.initweight !20, !taffo.info !10
  %t512 = bitcast float* %t5 to i8*, !taffo.initweight !20, !taffo.info !12
  store float 1.230000e+02, float* %t5, align 4, !taffo.initweight !20, !taffo.info !12
  %t613 = bitcast float* %t6 to i8*, !taffo.initweight !20, !taffo.info !14
  store float 1.230000e+02, float* %t6, align 4, !taffo.initweight !20, !taffo.info !14
  %t714 = bitcast float* %t7 to i8*, !taffo.initweight !20, !taffo.info !16
  store float 1.230000e+02, float* %t7, align 4, !taffo.initweight !20, !taffo.info !16
  %t815 = bitcast %struct.abc* %t8 to i8*, !taffo.initweight !20, !taffo.info !7
  ret i32 0
}

; Function Attrs: nounwind willreturn
declare !taffo.initweight !21 !taffo.funinfo !22 void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{i1 true}
!3 = !{i32 -1, i32 -1}
!4 = !{i32 0, i1 false, i32 0, i1 false}
!5 = !{i32 0}
!6 = !{!"test"}
!7 = !{i1 false, i1 false, i1 false, i2 1}
!8 = !{!"test quote ' quote"}
!9 = !{!"test quote @ quote"}
!10 = !{i1 false, !11, i1 false, i2 1}
!11 = !{double -2.000000e+02, double 2.000000e+02}
!12 = !{!13, i1 false, i1 false, i2 1}
!13 = !{!"fixp", i32 -32, i32 8}
!14 = !{i1 false, i1 false, !15, i2 1}
!15 = !{double 5.000000e-01}
!16 = !{!17, !11, !15, i2 1}
!17 = !{!"fixp", i32 -31, i32 7}
!18 = !{!10, i1 false, !19}
!19 = !{!10, i1 false}
!20 = !{i32 1}
!21 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!22 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
