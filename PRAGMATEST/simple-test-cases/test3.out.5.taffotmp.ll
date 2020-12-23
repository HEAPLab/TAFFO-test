; ModuleID = './test3.out.4.taffotmp.ll'
source_filename = "./test3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@random.seed = internal global i32 123456, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local float @random() #0 !taffo.initweight !2 !taffo.funinfo !2 {
entry:
  %0 = load i32, i32* @random.seed, align 4
  %mul = mul i32 %0, -928963441, !taffo.constinfo !3
  %add = add i32 %mul, 42, !taffo.constinfo !3
  %rem = urem i32 %add, -2, !taffo.constinfo !3
  store i32 %rem, i32* @random.seed, align 4, !taffo.constinfo !3
  %1 = load i32, i32* @random.seed, align 4
  %conv = uitofp i32 %1 to double
  %div = fdiv double %conv, 0x41EFFFFFFFE00000, !taffo.constinfo !4
  %conv1 = fptrunc double %div to float
  ret float %conv1
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @test(i32 %p1, i32 %p2, i32 %p3, float %num1, float %num2, float %num3) #0 !taffo.initweight !7 !taffo.funinfo !8 {
entry:
  %0 = fmul float 6.553600e+04, %num1, !taffo.info !9
  %1 = fptosi float %0 to i32, !taffo.info !9
  %tobool = icmp ne i32 %p1, 0, !taffo.info !9
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %phi.0 = phi float [ %num3, %if.then ], [ 1.500000e+00, %if.else ], !taffo.info !11
  %call = call float @random(), !taffo.constinfo !13
  %2 = fmul float 0x41D0000000000000, %phi.0, !taffo.info !11
  %3 = fptoui float %2 to i32, !taffo.info !11
  %4 = fmul float 6.553600e+04, %call, !taffo.info !14
  %5 = fptosi float %4 to i32, !taffo.constinfo !13, !taffo.info !14
  %6 = zext i32 %3 to i64, !taffo.info !11
  %7 = sext i32 %5 to i64, !taffo.constinfo !13, !taffo.info !14
  %8 = mul i64 %6, %7, !taffo.info !17
  %9 = ashr i64 %8, 30, !taffo.info !17
  %mul.s16_16fixp = trunc i64 %9 to i32, !taffo.info !14
  %tobool2 = icmp ne i32 %p2, 0, !taffo.info !9
  br i1 %tobool2, label %if.then3, label %if.else6

if.then3:                                         ; preds = %if.end
  %add.s16_16fixp = add i32 %mul.s16_16fixp, %1, !taffo.info !14
  %call4 = call float @random(), !taffo.constinfo !13
  %10 = fmul float 6.553600e+04, %call4, !taffo.info !14
  %11 = fptosi float %10 to i32, !taffo.constinfo !13, !taffo.info !14
  %12 = sext i32 %add.s16_16fixp to i64, !taffo.info !14
  %13 = sext i32 %11 to i64, !taffo.constinfo !13, !taffo.info !14
  %14 = mul i64 %12, %13, !taffo.info !19
  %15 = ashr i64 %14, 16, !taffo.info !19
  %mul5.s16_16fixp = trunc i64 %15 to i32, !taffo.info !14
  br label %if.end8

if.else6:                                         ; preds = %if.end
  %call7 = call float @random(), !taffo.constinfo !13
  %16 = fmul float 6.553600e+04, %call7, !taffo.info !14
  %17 = fptosi float %16 to i32, !taffo.constinfo !13, !taffo.info !14
  %18 = sext i32 %mul.s16_16fixp to i64, !taffo.info !14
  %19 = shl i64 %18, 16, !taffo.info !14
  %20 = sext i32 %17 to i64, !taffo.constinfo !13, !taffo.info !14
  %21 = sdiv i64 %19, %20, !taffo.info !21
  %div.s16_16fixp = trunc i64 %21 to i32, !taffo.info !14
  br label %if.end8

if.end8:                                          ; preds = %if.else6, %if.then3
  %phi.1.s16_16fixp = phi i32 [ %mul5.s16_16fixp, %if.then3 ], [ %div.s16_16fixp, %if.else6 ], !taffo.info !23
  %22 = sitofp i32 %phi.1.s16_16fixp to float, !taffo.info !23
  %23 = fdiv float %22, 6.553600e+04, !taffo.info !23
  ret float %23, !taffo.initweight !24, !taffo.info !25
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @test2(i32 %p1) #0 !taffo.initweight !26 !taffo.funinfo !27 {
entry:
  %tobool = icmp ne i32 %p1, 0, !taffo.info !9
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call float @random(), !taffo.constinfo !13
  %0 = fmul float 6.553600e+04, %call, !taffo.info !14
  %1 = fptosi float %0 to i32, !taffo.constinfo !13, !taffo.info !14
  %add.s16_16fixp = add i32 0, %1, !taffo.constinfo !28, !taffo.info !14
  %2 = shl i32 %add.s16_16fixp, 14, !taffo.constinfo !28, !taffo.info !14
  br label %if.end

if.else:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %phi.0.u2_30fixp = phi i32 [ %2, %if.then ], [ -2147483648, %if.else ], !taffo.info !31
  %call4 = call float @random(), !taffo.constinfo !13
  %3 = lshr i32 %phi.0.u2_30fixp, 14, !taffo.info !31
  %4 = fmul float 6.553600e+04, %call4, !taffo.info !14
  %5 = fptosi float %4 to i32, !taffo.constinfo !13, !taffo.info !14
  %add5.s16_16fixp = add i32 %3, %5, !taffo.info !14
  %6 = sitofp i32 %add5.s16_16fixp to float, !taffo.info !14
  %7 = fdiv float %6, 6.553600e+04, !taffo.info !14
  ret float %7, !taffo.initweight !24, !taffo.info !25
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{}
!3 = !{i1 false, i1 false}
!4 = !{i1 false, !5}
!5 = !{i1 false, !6, i1 false, i2 0}
!6 = !{double 0x41EFFFFFFFE00000, double 0x41EFFFFFFFE00000}
!7 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!8 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!9 = !{i1 false, !10, i1 false, i2 0}
!10 = !{double 0.000000e+00, double 1.000000e+00}
!11 = !{i1 false, !12, i1 false, i2 0}
!12 = !{double 1.500000e+00, double 1.500000e+00}
!13 = !{i1 false}
!14 = !{!15, !16, i1 false, i2 1}
!15 = !{!"fixp", i32 -32, i32 16}
!16 = !{double -3.276700e+04, double 3.276700e+04}
!17 = !{!18, !16, i1 false, i2 1}
!18 = !{!"fixp", i32 -64, i32 46}
!19 = !{!20, !16, i1 false, i2 1}
!20 = !{!"fixp", i32 -64, i32 32}
!21 = !{!22, !16, i1 false, i2 1}
!22 = !{!"fixp", i32 -64, i32 16}
!23 = !{!15, i1 false, i1 false, i2 1}
!24 = !{i32 2}
!25 = !{i1 false, !16, i1 false, i2 1}
!26 = !{i32 -1}
!27 = !{i32 0, i1 false}
!28 = !{!29, i1 false}
!29 = !{i1 false, !30, i1 false, i2 0}
!30 = !{double 0.000000e+00, double 0.000000e+00}
!31 = !{!32, !33, i1 false, i2 1}
!32 = !{!"fixp", i32 32, i32 30}
!33 = !{double 2.000000e+00, double 2.000000e+00}
