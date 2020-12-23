; ModuleID = './new-annotation-syntax.c'
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
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %t1 = alloca float, align 4
  %t2 = alloca float, align 4
  %t20 = alloca float, align 4
  %t21 = alloca float, align 4
  %t225 = alloca float, align 4
  %t23 = alloca float, align 4
  %t3 = alloca float, align 4
  %t30 = alloca float, align 4
  %t31 = alloca float, align 4
  %t4 = alloca float, align 4
  %t5 = alloca float, align 4
  %t6 = alloca float, align 4
  %t7 = alloca float, align 4
  %t8 = alloca %struct.abc, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %t11 = bitcast float* %t1 to i8*
  call void @llvm.var.annotation(i8* %t11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i32 17)
  store float 1.230000e+02, float* %t1, align 4
  %t22 = bitcast float* %t2 to i8*
  call void @llvm.var.annotation(i8* %t22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i32 19)
  store float 1.230000e+02, float* %t2, align 4
  %t203 = bitcast float* %t20 to i8*
  call void @llvm.var.annotation(i8* %t203, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i32 21)
  store float 1.230000e+02, float* %t20, align 4
  %t214 = bitcast float* %t21 to i8*
  call void @llvm.var.annotation(i8* %t214, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i32 23)
  store float 1.230000e+02, float* %t21, align 4
  %t2256 = bitcast float* %t225 to i8*
  call void @llvm.var.annotation(i8* %t2256, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i32 25)
  store float 1.230000e+02, float* %t225, align 4
  %t237 = bitcast float* %t23 to i8*
  call void @llvm.var.annotation(i8* %t237, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i32 27)
  store float 1.230000e+02, float* %t23, align 4
  %t38 = bitcast float* %t3 to i8*
  call void @llvm.var.annotation(i8* %t38, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i32 29)
  store float 1.230000e+02, float* %t3, align 4
  %t309 = bitcast float* %t30 to i8*
  call void @llvm.var.annotation(i8* %t309, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i32 31)
  store float 1.230000e+02, float* %t30, align 4
  %t3110 = bitcast float* %t31 to i8*
  call void @llvm.var.annotation(i8* %t3110, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i32 33)
  store float 1.230000e+02, float* %t31, align 4
  %t411 = bitcast float* %t4 to i8*
  call void @llvm.var.annotation(i8* %t411, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i32 35)
  store float 1.230000e+02, float* %t4, align 4
  %t512 = bitcast float* %t5 to i8*
  call void @llvm.var.annotation(i8* %t512, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i32 37)
  store float 1.230000e+02, float* %t5, align 4
  %t613 = bitcast float* %t6 to i8*
  call void @llvm.var.annotation(i8* %t613, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i32 39)
  store float 1.230000e+02, float* %t6, align 4
  %t714 = bitcast float* %t7 to i8*
  call void @llvm.var.annotation(i8* %t714, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i32 41)
  store float 1.230000e+02, float* %t7, align 4
  %t815 = bitcast %struct.abc* %t8 to i8*
  call void @llvm.var.annotation(i8* %t815, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i32 43)
  ret i32 0
}

; Function Attrs: nounwind willreturn
declare void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
