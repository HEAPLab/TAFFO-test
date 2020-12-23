; ModuleID = './function-return-ptr.out.1.taffotmp.ll'
source_filename = "./function-return-ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@glob = common dso_local global float 0.000000e+00, align 4
@.str = private unnamed_addr constant [23 x i8] c"scalar(range(-10, 10))\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [24 x i8] c"./function-return-ptr.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@llvm.global.annotations = appending global [2 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (float* ()* @fun to i8*), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 11 }, { i8*, i8*, i8*, i32 } { i8* bitcast (float* @glob to i8*), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 7 }], section "llvm.metadata"

; Function Attrs: noinline nounwind uwtable
define dso_local float* @fun() #0 {
entry:
  ret float* @glob
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca float*, align 8
  %t = alloca float, align 4
  store i32 0, i32* %retval, align 4
  %x1 = bitcast float** %x to i8*
  call void @llvm.var.annotation(i8* %x1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 20)
  %call = call float* @fun()
  store float* %call, float** %x, align 8
  %call2 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), float* %t)
  %0 = load float, float* %t, align 4
  %1 = load float*, float** %x, align 8
  store float %0, float* %1, align 4
  %2 = load float*, float** %x, align 8
  %3 = load float, float* %2, align 4
  %conv = fpext float %3 to double
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv)
  ret i32 0
}

; Function Attrs: nounwind willreturn
declare void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

declare dso_local i32 @__isoc99_scanf(i8*, ...) #2

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
