; ModuleID = './test3.out.3.taffotmp.ll'
source_filename = "./test3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@random.seed = internal global i32 123456, align 4
@.str = private unnamed_addr constant [19 x i8] c"range -32767 32767\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [10 x i8] c"./test3.c\00", section "llvm.metadata"

; Function Attrs: noinline nounwind uwtable
define dso_local float @random() #0 !taffo.initweight !2 !taffo.funinfo !2 {
entry:
  %0 = load i32, i32* @random.seed, align 4
  %mul = mul i32 %0, -928963441
  %add = add i32 %mul, 42
  %rem = urem i32 %add, -2
  store i32 %rem, i32* @random.seed, align 4
  %1 = load i32, i32* @random.seed, align 4
  %conv = uitofp i32 %1 to double
  %div = fdiv double %conv, 0x41EFFFFFFFE00000
  %conv1 = fptrunc double %div to float
  ret float %conv1
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @test(i32 %p1, i32 %p2, i32 %p3, float %num1, float %num2, float %num3) #0 !taffo.initweight !3 !taffo.funinfo !4 {
entry:
  %p1.addr = alloca i32, align 4
  %p2.addr = alloca i32, align 4
  %p3.addr = alloca i32, align 4
  %num1.addr = alloca float, align 4
  %num2.addr = alloca float, align 4
  %num3.addr = alloca float, align 4
  %phi = alloca float, align 4, !taffo.initweight !5, !taffo.info !6
  store i32 %p1, i32* %p1.addr, align 4
  store i32 %p2, i32* %p2.addr, align 4
  store i32 %p3, i32* %p3.addr, align 4
  store float %num1, float* %num1.addr, align 4
  store float %num2, float* %num2.addr, align 4
  store float %num3, float* %num3.addr, align 4
  %phi1 = bitcast float* %phi to i8*, !taffo.initweight !8, !taffo.info !6
  %0 = load i32, i32* %p1.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load float, float* %num3.addr, align 4
  store float %1, float* %phi, align 4, !taffo.initweight !8, !taffo.info !6
  br label %if.end

if.else:                                          ; preds = %entry
  store float 1.500000e+00, float* %phi, align 4, !taffo.initweight !8, !taffo.info !6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call = call float @random()
  %2 = load float, float* %phi, align 4, !taffo.initweight !8, !taffo.info !6
  %mul = fmul float %2, %call, !taffo.initweight !9, !taffo.info !6
  store float %mul, float* %phi, align 4, !taffo.initweight !8, !taffo.info !6
  %3 = load i32, i32* %p2.addr, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %if.then3, label %if.else6

if.then3:                                         ; preds = %if.end
  %4 = load float, float* %num1.addr, align 4
  %5 = load float, float* %phi, align 4, !taffo.initweight !8, !taffo.info !6
  %add = fadd float %5, %4, !taffo.initweight !9, !taffo.info !6
  store float %add, float* %phi, align 4, !taffo.initweight !8, !taffo.info !6
  %call4 = call float @random()
  %6 = load float, float* %phi, align 4, !taffo.initweight !8, !taffo.info !6
  %mul5 = fmul float %6, %call4, !taffo.initweight !9, !taffo.info !6
  store float %mul5, float* %phi, align 4, !taffo.initweight !8, !taffo.info !6
  br label %if.end8

if.else6:                                         ; preds = %if.end
  %call7 = call float @random()
  %7 = load float, float* %phi, align 4, !taffo.initweight !8, !taffo.info !6
  %div = fdiv float %7, %call7, !taffo.initweight !9, !taffo.info !6
  store float %div, float* %phi, align 4, !taffo.initweight !8, !taffo.info !6
  br label %if.end8

if.end8:                                          ; preds = %if.else6, %if.then3
  %8 = load float, float* %phi, align 4, !taffo.initweight !8, !taffo.info !6
  ret float %8, !taffo.initweight !9, !taffo.info !6
}

; Function Attrs: nounwind willreturn
declare !taffo.initweight !10 !taffo.funinfo !11 void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local float @test2(i32 %p1) #0 !taffo.initweight !12 !taffo.funinfo !13 {
entry:
  %p1.addr = alloca i32, align 4
  %phi = alloca float, align 4, !taffo.initweight !5, !taffo.info !6
  store i32 %p1, i32* %p1.addr, align 4
  %phi1 = bitcast float* %phi to i8*, !taffo.initweight !8, !taffo.info !6
  store float 0.000000e+00, float* %phi, align 4, !taffo.initweight !8, !taffo.info !6
  %0 = load i32, i32* %p1.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call float @random()
  %1 = load float, float* %phi, align 4, !taffo.initweight !8, !taffo.info !6
  %add = fadd float %1, %call, !taffo.initweight !9, !taffo.info !6
  store float %add, float* %phi, align 4, !taffo.initweight !8, !taffo.info !6
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load float, float* %phi, align 4, !taffo.initweight !8, !taffo.info !6
  %conv = fpext float %2 to double, !taffo.initweight !9, !taffo.info !6
  %add2 = fadd double %conv, 2.000000e+00, !taffo.initweight !14, !taffo.info !6
  %conv3 = fptrunc double %add2 to float, !taffo.initweight !15, !taffo.info !6
  store float %conv3, float* %phi, align 4, !taffo.initweight !8, !taffo.info !6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call4 = call float @random()
  %3 = load float, float* %phi, align 4, !taffo.initweight !8, !taffo.info !6
  %add5 = fadd float %3, %call4, !taffo.initweight !9, !taffo.info !6
  store float %add5, float* %phi, align 4, !taffo.initweight !8, !taffo.info !6
  %4 = load float, float* %phi, align 4, !taffo.initweight !8, !taffo.info !6
  ret float %4, !taffo.initweight !9, !taffo.info !6
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{}
!3 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!4 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!5 = !{i32 0}
!6 = !{i1 false, !7, i1 false, i2 1}
!7 = !{double -3.276700e+04, double 3.276700e+04}
!8 = !{i32 1}
!9 = !{i32 2}
!10 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!11 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!12 = !{i32 -1}
!13 = !{i32 0, i1 false}
!14 = !{i32 3}
!15 = !{i32 4}
