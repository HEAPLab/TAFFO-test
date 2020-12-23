; ModuleID = './struct_integration_1.c'
source_filename = "./struct_integration_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test = type { float, i32, float }

@.str = private unnamed_addr constant [63 x i8] c"struct[scalar(range(-3000, +3000)),void,scalar(range(-3, +3))]\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [25 x i8] c"./struct_integration_1.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [7 x i8] c"%f%f%f\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%a\0A%d\0A%a\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %z = alloca %struct.test, align 4
  %a = alloca float, align 4
  %b = alloca float, align 4
  %c = alloca float, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %z1 = bitcast %struct.test* %z to i8*
  call void @llvm.var.annotation(i8* %z1, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0), i32 15)
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), float* %a, float* %b, float* %c)
  %0 = load float, float* %a, align 4
  %a2 = getelementptr inbounds %struct.test, %struct.test* %z, i32 0, i32 0
  store float %0, float* %a2, align 4
  %1 = load float, float* %b, align 4
  %conv = fptosi float %1 to i32
  %b3 = getelementptr inbounds %struct.test, %struct.test* %z, i32 0, i32 1
  store i32 %conv, i32* %b3, align 4
  %2 = load float, float* %c, align 4
  %c4 = getelementptr inbounds %struct.test, %struct.test* %z, i32 0, i32 2
  store float %2, float* %c4, align 4
  %a5 = getelementptr inbounds %struct.test, %struct.test* %z, i32 0, i32 0
  %3 = load float, float* %a5, align 4
  %conv6 = fpext float %3 to double
  %b7 = getelementptr inbounds %struct.test, %struct.test* %z, i32 0, i32 1
  %4 = load i32, i32* %b7, align 4
  %c8 = getelementptr inbounds %struct.test, %struct.test* %z, i32 0, i32 2
  %5 = load float, float* %c8, align 4
  %conv9 = fpext float %5 to double
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), double %conv6, i32 %4, double %conv9)
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
