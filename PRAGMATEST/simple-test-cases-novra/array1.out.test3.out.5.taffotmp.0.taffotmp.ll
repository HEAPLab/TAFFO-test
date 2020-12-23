; ModuleID = './test3.out.5.taffotmp.ll'
source_filename = "./test3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@random.seed = internal global i32 123456, align 4

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
  %phi.s16_16fixp = alloca i32, align 4, !taffo.info !5
  store i32 %p1, i32* %p1.addr, align 4
  store i32 %p2, i32* %p2.addr, align 4
  store i32 %p3, i32* %p3.addr, align 4
  store float %num1, float* %num1.addr, align 4
  store float %num2, float* %num2.addr, align 4
  store float %num3, float* %num3.addr, align 4
  %0 = load i32, i32* %p1.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load float, float* %num3.addr, align 4
  %2 = fmul float 6.553600e+04, %1, !taffo.info !8
  %3 = fptosi float %2 to i32, !taffo.info !8
  store i32 %3, i32* %phi.s16_16fixp, align 4, !taffo.info !8
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 98304, i32* %phi.s16_16fixp, align 4, !taffo.info !8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call = call float @random()
  %s16_16fixp4 = load i32, i32* %phi.s16_16fixp, align 4, !taffo.info !5
  %4 = fmul float 6.553600e+04, %call, !taffo.info !5
  %5 = fptosi float %4 to i32, !taffo.info !5
  %6 = sext i32 %s16_16fixp4 to i64, !taffo.info !5
  %7 = sext i32 %5 to i64, !taffo.info !5
  %8 = mul i64 %6, %7, !taffo.info !9
  %9 = ashr i64 %8, 16, !taffo.info !9
  %mul.s16_16fixp = trunc i64 %9 to i32, !taffo.info !5
  store i32 %mul.s16_16fixp, i32* %phi.s16_16fixp, align 4, !taffo.info !8
  %10 = load i32, i32* %p2.addr, align 4
  %tobool2 = icmp ne i32 %10, 0
  br i1 %tobool2, label %if.then3, label %if.else6

if.then3:                                         ; preds = %if.end
  %11 = load float, float* %num1.addr, align 4
  %s16_16fixp3 = load i32, i32* %phi.s16_16fixp, align 4, !taffo.info !5
  %12 = fmul float 6.553600e+04, %11, !taffo.info !5
  %13 = fptosi float %12 to i32, !taffo.info !5
  %add.s16_16fixp = add i32 %s16_16fixp3, %13, !taffo.info !5
  store i32 %add.s16_16fixp, i32* %phi.s16_16fixp, align 4, !taffo.info !8
  %call4 = call float @random()
  %s16_16fixp2 = load i32, i32* %phi.s16_16fixp, align 4, !taffo.info !5
  %14 = fmul float 6.553600e+04, %call4, !taffo.info !5
  %15 = fptosi float %14 to i32, !taffo.info !5
  %16 = sext i32 %s16_16fixp2 to i64, !taffo.info !5
  %17 = sext i32 %15 to i64, !taffo.info !5
  %18 = mul i64 %16, %17, !taffo.info !9
  %19 = ashr i64 %18, 16, !taffo.info !9
  %mul5.s16_16fixp = trunc i64 %19 to i32, !taffo.info !5
  store i32 %mul5.s16_16fixp, i32* %phi.s16_16fixp, align 4, !taffo.info !8
  br label %if.end8

if.else6:                                         ; preds = %if.end
  %call7 = call float @random()
  %s16_16fixp1 = load i32, i32* %phi.s16_16fixp, align 4, !taffo.info !5
  %20 = fmul float 6.553600e+04, %call7, !taffo.info !5
  %21 = fptosi float %20 to i32, !taffo.info !5
  %22 = sext i32 %s16_16fixp1 to i64, !taffo.info !5
  %23 = shl i64 %22, 16, !taffo.info !5
  %24 = sext i32 %21 to i64, !taffo.info !5
  %25 = sdiv i64 %23, %24, !taffo.info !11
  %div.s16_16fixp = trunc i64 %25 to i32, !taffo.info !5
  store i32 %div.s16_16fixp, i32* %phi.s16_16fixp, align 4, !taffo.info !8
  br label %if.end8

if.end8:                                          ; preds = %if.else6, %if.then3
  %s16_16fixp = load i32, i32* %phi.s16_16fixp, align 4, !taffo.info !5
  %26 = sitofp i32 %s16_16fixp to float, !taffo.info !5
  %27 = fdiv float %26, 6.553600e+04, !taffo.info !5
  ret float %27, !taffo.initweight !13, !taffo.info !8
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @test2(i32 %p1) #0 !taffo.initweight !14 !taffo.funinfo !15 {
entry:
  %p1.addr = alloca i32, align 4
  %phi.s16_16fixp = alloca i32, align 4, !taffo.info !5
  store i32 %p1, i32* %p1.addr, align 4
  store i32 0, i32* %phi.s16_16fixp, align 4, !taffo.info !8
  %0 = load i32, i32* %p1.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call float @random()
  %s16_16fixp3 = load i32, i32* %phi.s16_16fixp, align 4, !taffo.info !5
  %1 = fmul float 6.553600e+04, %call, !taffo.info !5
  %2 = fptosi float %1 to i32, !taffo.info !5
  %add.s16_16fixp = add i32 %s16_16fixp3, %2, !taffo.info !5
  store i32 %add.s16_16fixp, i32* %phi.s16_16fixp, align 4, !taffo.info !8
  br label %if.end

if.else:                                          ; preds = %entry
  %s16_16fixp2 = load i32, i32* %phi.s16_16fixp, align 4, !taffo.info !5
  %add2.s16_16fixp = add i32 %s16_16fixp2, 131072, !taffo.info !5
  store i32 %add2.s16_16fixp, i32* %phi.s16_16fixp, align 4, !taffo.info !8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call4 = call float @random()
  %s16_16fixp1 = load i32, i32* %phi.s16_16fixp, align 4, !taffo.info !5
  %3 = fmul float 6.553600e+04, %call4, !taffo.info !5
  %4 = fptosi float %3 to i32, !taffo.info !5
  %add5.s16_16fixp = add i32 %s16_16fixp1, %4, !taffo.info !5
  store i32 %add5.s16_16fixp, i32* %phi.s16_16fixp, align 4, !taffo.info !8
  %s16_16fixp = load i32, i32* %phi.s16_16fixp, align 4, !taffo.info !5
  %5 = sitofp i32 %s16_16fixp to float, !taffo.info !5
  %6 = fdiv float %5, 6.553600e+04, !taffo.info !5
  ret float %6, !taffo.initweight !13, !taffo.info !8
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{}
!3 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!4 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!5 = !{!6, !7, i1 false, i2 1}
!6 = !{!"fixp", i32 -32, i32 16}
!7 = !{double -3.276700e+04, double 3.276700e+04}
!8 = !{i1 false, !7, i1 false, i2 1}
!9 = !{!10, !7, i1 false, i2 1}
!10 = !{!"fixp", i32 -64, i32 32}
!11 = !{!12, !7, i1 false, i2 1}
!12 = !{!"fixp", i32 -64, i32 16}
!13 = !{i32 2}
!14 = !{i32 -1}
!15 = !{i32 0, i1 false}
