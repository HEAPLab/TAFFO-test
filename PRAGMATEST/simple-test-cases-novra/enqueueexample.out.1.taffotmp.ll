; ModuleID = './enqueueexample.c'
source_filename = "./enqueueexample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"range -10 10\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [19 x i8] c"./enqueueexample.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local float @example(float %a, float %b, float %c, float %d) #0 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  %c.addr = alloca float, align 4
  %d.addr = alloca float, align 4
  %x = alloca float, align 4
  %y = alloca float, align 4
  %z = alloca float, align 4
  store float %a, float* %a.addr, align 4
  store float %b, float* %b.addr, align 4
  store float %c, float* %c.addr, align 4
  store float %d, float* %d.addr, align 4
  store float 1.000000e+00, float* %x, align 4
  %y1 = bitcast float* %y to i8*
  call void @llvm.var.annotation(i8* %y1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 9)
  store float 2.000000e+00, float* %y, align 4
  store float 3.000000e+00, float* %z, align 4
  %0 = load float, float* %x, align 4
  %1 = load float, float* %y, align 4
  %2 = load float, float* %z, align 4
  %div = fdiv float %1, %2
  %mul = fmul float %0, %div
  %3 = load float, float* %x, align 4
  %mul2 = fmul float %mul, %3
  ret float %mul2
}

; Function Attrs: nounwind willreturn
declare void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call float @example(float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00)
  %conv = fpext float %call to double
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %conv)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
