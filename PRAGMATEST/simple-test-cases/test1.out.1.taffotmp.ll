; ModuleID = './test1.c'
source_filename = "./test1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"scalar(range(0, 5.0))\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [10 x i8] c"./test1.c\00", section "llvm.metadata"
@global = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local float @test(float %param, i32 %notafloat) #0 {
entry:
  %param.addr = alloca float, align 4
  %notafloat.addr = alloca i32, align 4
  %notafloat2 = alloca i32, align 4
  %local = alloca float, align 4
  store float %param, float* %param.addr, align 4
  store i32 %notafloat, i32* %notafloat.addr, align 4
  %local1 = bitcast float* %local to i8*
  call void @llvm.var.annotation(i8* %local1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 10)
  store float 2.000000e+00, float* %local, align 4
  %0 = load float, float* %param.addr, align 4
  %1 = load float, float* %local, align 4
  %mul = fmul float %1, %0
  store float %mul, float* %local, align 4
  %2 = load i32, i32* %notafloat.addr, align 4
  %conv = sitofp i32 %2 to float
  %3 = load float, float* %local, align 4
  %add = fadd float %3, %conv
  store float %add, float* %local, align 4
  %4 = load float, float* %local, align 4
  %conv2 = fptosi float %4 to i32
  store i32 %conv2, i32* %notafloat2, align 4
  %5 = load i32, i32* %notafloat2, align 4
  %conv3 = sitofp i32 %5 to float
  ret float %conv3
}

; Function Attrs: nounwind willreturn
declare void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test2(i32 %a) #0 {
entry:
  %a.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %conv = sitofp i32 %0 to double
  %add = fadd double %conv, 2.000000e+00
  %conv1 = fptosi double %add to i32
  ret i32 %conv1
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
