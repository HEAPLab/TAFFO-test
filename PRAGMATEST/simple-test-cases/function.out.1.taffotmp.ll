; ModuleID = './function.c'
source_filename = "./function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@global = dso_local global float 0x4040AA9FC0000000, align 4
@.str = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [13 x i8] c"./function.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [21 x i8] c"target('b') scalar()\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"*******************\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"-------------------\0A\00", align 1
@llvm.global.annotations = appending global [1 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (float* @global to i8*), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 6 }], section "llvm.metadata"

; Function Attrs: noinline nounwind uwtable
define dso_local float @fun(float %x, float %y) #0 {
entry:
  %x.addr = alloca float, align 4
  %y.addr = alloca float, align 4
  %local = alloca float, align 4
  store float %x, float* %x.addr, align 4
  %x.addr1 = bitcast float* %x.addr to i8*
  call void @llvm.var.annotation(i8* %x.addr1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 8)
  store float %y, float* %y.addr, align 4
  %y.addr2 = bitcast float* %y.addr to i8*
  call void @llvm.var.annotation(i8* %y.addr2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 8)
  %0 = load float, float* %x.addr, align 4
  %1 = load float, float* %y.addr, align 4
  %mul = fmul float %0, %1
  %2 = load float, float* @global, align 4
  %add = fadd float %mul, %2
  store float %add, float* %local, align 4
  %3 = load float, float* @global, align 4
  %inc = fadd float %3, 1.000000e+00
  store float %inc, float* @global, align 4
  %4 = load float, float* %local, align 4
  ret float %4
}

; Function Attrs: nounwind willreturn
declare void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @funInt(float %x, float %y) #0 {
entry:
  %x.addr = alloca float, align 4
  %y.addr = alloca float, align 4
  %local = alloca i32, align 4
  store float %x, float* %x.addr, align 4
  %x.addr1 = bitcast float* %x.addr to i8*
  call void @llvm.var.annotation(i8* %x.addr1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 17)
  store float %y, float* %y.addr, align 4
  %y.addr2 = bitcast float* %y.addr to i8*
  call void @llvm.var.annotation(i8* %y.addr2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 17)
  %0 = load float, float* %x.addr, align 4
  %1 = load float, float* %y.addr, align 4
  %mul = fmul float %0, %1
  %2 = load float, float* @global, align 4
  %add = fadd float %mul, %2
  %conv = fptosi float %add to i32
  store i32 %conv, i32* %local, align 4
  %3 = load float, float* @global, align 4
  %conv3 = fpext float %3 to double
  %mul4 = fmul double %conv3, 1.098000e+00
  %conv5 = fptrunc double %mul4 to float
  store float %conv5, float* @global, align 4
  %4 = load i32, i32* %local, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca float, align 4
  %b = alloca float, align 4
  %c = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %a1 = bitcast float* %a to i8*
  call void @llvm.var.annotation(i8* %a1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 28)
  store float 0x402468E8A0000000, float* %a, align 4
  %b2 = bitcast float* %b to i8*
  call void @llvm.var.annotation(i8* %b2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 30)
  store float 0x4024346DC0000000, float* %b, align 4
  store i32 2, i32* %c, align 4
  %0 = load float, float* %b, align 4
  %1 = load float, float* %a, align 4
  %call = call float @fun(float %0, float %1)
  store float %call, float* %a, align 4
  %2 = load float, float* %a, align 4
  %conv = fpext float %2 to double
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv)
  %3 = load float, float* %a, align 4
  %4 = load float, float* %b, align 4
  %call4 = call float @fun(float %3, float %4)
  store float %call4, float* %a, align 4
  %5 = load float, float* %a, align 4
  %conv5 = fpext float %5 to double
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv5)
  %6 = load float, float* %b, align 4
  %7 = load float, float* %b, align 4
  %call7 = call float @fun(float %6, float %7)
  store float %call7, float* %a, align 4
  %8 = load float, float* %a, align 4
  %conv8 = fpext float %8 to double
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv8)
  %9 = load float, float* %a, align 4
  %10 = load float, float* %a, align 4
  %call10 = call float @fun(float %9, float %10)
  store float %call10, float* %a, align 4
  %11 = load float, float* %a, align 4
  %conv11 = fpext float %11 to double
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv11)
  %12 = load float, float* %a, align 4
  %div = fdiv float %12, 4.000000e+03
  store float %div, float* %a, align 4
  %13 = load float, float* %b, align 4
  %14 = load float, float* %b, align 4
  %call13 = call float @fun(float %13, float %14)
  store float %call13, float* %b, align 4
  %15 = load float, float* %b, align 4
  %conv14 = fpext float %15 to double
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv14)
  %16 = load float, float* %a, align 4
  %17 = load float, float* %b, align 4
  %call16 = call float @fun(float %16, float %17)
  store float %call16, float* %b, align 4
  %18 = load float, float* %b, align 4
  %conv17 = fpext float %18 to double
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv17)
  %19 = load float, float* %b, align 4
  %20 = load float, float* %a, align 4
  %call19 = call float @fun(float %19, float %20)
  store float %call19, float* %b, align 4
  %21 = load float, float* %b, align 4
  %conv20 = fpext float %21 to double
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv20)
  %22 = load float, float* %a, align 4
  %23 = load float, float* %a, align 4
  %call22 = call float @fun(float %22, float %23)
  store float %call22, float* %b, align 4
  %24 = load float, float* %b, align 4
  %conv23 = fpext float %24 to double
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv23)
  %25 = load float, float* %a, align 4
  %div25 = fdiv float %25, 4.096000e+03
  store float %div25, float* %b, align 4
  %26 = load float, float* %b, align 4
  %27 = load float, float* %b, align 4
  %call26 = call float @fun(float %26, float %27)
  %conv27 = fptosi float %call26 to i32
  store i32 %conv27, i32* %c, align 4
  %28 = load i32, i32* %c, align 4
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %28)
  %29 = load float, float* %b, align 4
  %30 = load float, float* %b, align 4
  %call29 = call float @fun(float %29, float %30)
  %conv30 = fptosi float %call29 to i32
  store i32 %conv30, i32* %c, align 4
  %31 = load i32, i32* %c, align 4
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %31)
  %32 = load float, float* %b, align 4
  %33 = load float, float* %a, align 4
  %call32 = call float @fun(float %32, float %33)
  %conv33 = fptosi float %call32 to i32
  store i32 %conv33, i32* %c, align 4
  %34 = load i32, i32* %c, align 4
  %call34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %34)
  %35 = load float, float* %a, align 4
  %36 = load float, float* %b, align 4
  %call35 = call float @fun(float %35, float %36)
  %conv36 = fptosi float %call35 to i32
  store i32 %conv36, i32* %c, align 4
  %37 = load i32, i32* %c, align 4
  %call37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %37)
  %call38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  store float 0x40241999A0000000, float* %a, align 4
  %38 = load float, float* %b, align 4
  %39 = load float, float* %b, align 4
  %call39 = call i32 @funInt(float %38, float %39)
  %conv40 = sitofp i32 %call39 to float
  store float %conv40, float* %a, align 4
  %40 = load float, float* %a, align 4
  %conv41 = fpext float %40 to double
  %call42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv41)
  %41 = load float, float* %b, align 4
  %42 = load float, float* %a, align 4
  %call43 = call i32 @funInt(float %41, float %42)
  %conv44 = sitofp i32 %call43 to float
  store float %conv44, float* %a, align 4
  %43 = load float, float* %a, align 4
  %conv45 = fpext float %43 to double
  %call46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv45)
  %44 = load float, float* %a, align 4
  %45 = load float, float* %b, align 4
  %call47 = call i32 @funInt(float %44, float %45)
  %conv48 = sitofp i32 %call47 to float
  store float %conv48, float* %a, align 4
  %46 = load float, float* %a, align 4
  %conv49 = fpext float %46 to double
  %call50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv49)
  %47 = load float, float* %a, align 4
  %48 = load float, float* %a, align 4
  %call51 = call i32 @funInt(float %47, float %48)
  %conv52 = sitofp i32 %call51 to float
  store float %conv52, float* %a, align 4
  %49 = load float, float* %a, align 4
  %conv53 = fpext float %49 to double
  %call54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv53)
  %50 = load float, float* %b, align 4
  %conv55 = fpext float %50 to double
  %call56 = call double @sqrt(double %conv55) #4
  %conv57 = fptrunc double %call56 to float
  store float %conv57, float* %a, align 4
  %51 = load float, float* %a, align 4
  %conv58 = fpext float %51 to double
  %mul = fmul double %conv58, 9.990000e+00
  %call59 = call double @exp(double %mul) #4
  %conv60 = fptrunc double %call59 to float
  store float %conv60, float* %b, align 4
  %52 = load float, float* %a, align 4
  %53 = load float, float* %b, align 4
  %call61 = call i32 @funInt(float %52, float %53)
  %conv62 = sitofp i32 %call61 to float
  store float %conv62, float* %b, align 4
  %54 = load float, float* %b, align 4
  %conv63 = fpext float %54 to double
  %call64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv63)
  %55 = load float, float* %b, align 4
  %56 = load float, float* %a, align 4
  %call65 = call i32 @funInt(float %55, float %56)
  %conv66 = sitofp i32 %call65 to float
  store float %conv66, float* %b, align 4
  %57 = load float, float* %b, align 4
  %conv67 = fpext float %57 to double
  %call68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv67)
  %58 = load float, float* %a, align 4
  %59 = load float, float* %a, align 4
  %call69 = call i32 @funInt(float %58, float %59)
  %conv70 = sitofp i32 %call69 to float
  store float %conv70, float* %b, align 4
  %60 = load float, float* %b, align 4
  %conv71 = fpext float %60 to double
  %call72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv71)
  %61 = load float, float* %b, align 4
  %62 = load float, float* %b, align 4
  %call73 = call i32 @funInt(float %61, float %62)
  %conv74 = sitofp i32 %call73 to float
  store float %conv74, float* %b, align 4
  %63 = load float, float* %b, align 4
  %conv75 = fpext float %63 to double
  %call76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv75)
  %64 = load float, float* %a, align 4
  store float %64, float* %b, align 4
  %65 = load float, float* %b, align 4
  %66 = load float, float* %b, align 4
  %call77 = call i32 @funInt(float %65, float %66)
  store i32 %call77, i32* %c, align 4
  %67 = load i32, i32* %c, align 4
  %call78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %67)
  %68 = load float, float* %a, align 4
  %69 = load float, float* %b, align 4
  %call79 = call i32 @funInt(float %68, float %69)
  store i32 %call79, i32* %c, align 4
  %70 = load i32, i32* %c, align 4
  %call80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %70)
  %71 = load float, float* %a, align 4
  %72 = load float, float* %a, align 4
  %call81 = call i32 @funInt(float %71, float %72)
  store i32 %call81, i32* %c, align 4
  %73 = load i32, i32* %c, align 4
  %call82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %73)
  %74 = load float, float* %b, align 4
  %75 = load float, float* %a, align 4
  %call83 = call i32 @funInt(float %74, float %75)
  store i32 %call83, i32* %c, align 4
  %76 = load i32, i32* %c, align 4
  %call84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %76)
  %call85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #3

; Function Attrs: nounwind
declare dso_local double @exp(double) #3

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
