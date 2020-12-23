; ModuleID = './test3.out.2.taffotmp.ll'
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
  %tobool = icmp ne i32 %p1, 0, !taffo.info !9
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %phi.0 = phi float [ %num3, %if.then ], [ 1.500000e+00, %if.else ], !taffo.info !11
  %call = call float @random(), !taffo.constinfo !13
  %mul = fmul float %phi.0, %call, !taffo.initweight !14, !taffo.info !15
  %tobool2 = icmp ne i32 %p2, 0, !taffo.info !9
  br i1 %tobool2, label %if.then3, label %if.else6

if.then3:                                         ; preds = %if.end
  %add = fadd float %mul, %num1, !taffo.initweight !14, !taffo.info !15
  %call4 = call float @random(), !taffo.constinfo !13
  %mul5 = fmul float %add, %call4, !taffo.initweight !14, !taffo.info !15
  br label %if.end8

if.else6:                                         ; preds = %if.end
  %call7 = call float @random(), !taffo.constinfo !13
  %div = fdiv float %mul, %call7, !taffo.initweight !14, !taffo.info !15
  br label %if.end8

if.end8:                                          ; preds = %if.else6, %if.then3
  %phi.1 = phi float [ %mul5, %if.then3 ], [ %div, %if.else6 ]
  ret float %phi.1, !taffo.initweight !14, !taffo.info !15
}

; Function Attrs: nounwind willreturn
declare !taffo.initweight !17 !taffo.funinfo !18 void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local float @test2(i32 %p1) #0 !taffo.initweight !19 !taffo.funinfo !20 {
entry:
  %tobool = icmp ne i32 %p1, 0, !taffo.info !9
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call float @random(), !taffo.constinfo !13
  %add = fadd float 0.000000e+00, %call, !taffo.initweight !14, !taffo.info !15, !taffo.constinfo !21
  br label %if.end

if.else:                                          ; preds = %entry
  %conv = fpext float 0.000000e+00 to double, !taffo.initweight !14, !taffo.info !24
  %add2 = fadd double %conv, 2.000000e+00, !taffo.initweight !25, !taffo.info !26, !taffo.constinfo !28
  %conv3 = fptrunc double %add2 to float, !taffo.initweight !30, !taffo.info !26
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %phi.0 = phi float [ %add, %if.then ], [ %conv3, %if.else ], !taffo.info !29
  %call4 = call float @random(), !taffo.constinfo !13
  %add5 = fadd float %phi.0, %call4, !taffo.initweight !14, !taffo.info !15
  ret float %add5, !taffo.initweight !14, !taffo.info !15
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind willreturn }

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
!14 = !{i32 2}
!15 = !{i1 false, !16, i1 false, i2 1}
!16 = !{double -3.276700e+04, double 3.276700e+04}
!17 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!18 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!19 = !{i32 -1}
!20 = !{i32 0, i1 false}
!21 = !{!22, i1 false}
!22 = !{i1 false, !23, i1 false, i2 0}
!23 = !{double 0.000000e+00, double 0.000000e+00}
!24 = !{i1 false, !23, i1 false, i2 1}
!25 = !{i32 3}
!26 = !{i1 false, !27, i1 false, i2 1}
!27 = !{double 2.000000e+00, double 2.000000e+00}
!28 = !{i1 false, !29}
!29 = !{i1 false, !27, i1 false, i2 0}
!30 = !{i32 4}
