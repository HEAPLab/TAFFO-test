; ModuleID = './test4.out.3.taffotmp.ll'
source_filename = "./test4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@random.seed = internal global i32 123456, align 4
@.str = private unnamed_addr constant [28 x i8] c"scalar(range(-32767, 32767)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [10 x i8] c"./test4.c\00", section "llvm.metadata"

; Function Attrs: noinline nounwind uwtable
define dso_local float @random() #0 !taffo.funinfo !2 !taffo.initweight !2 {
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
define dso_local float @test(i32 %p1, i32 %p2, i32 %p3) #0 !taffo.funinfo !7 !taffo.initweight !8 {
entry:
  %f1 = alloca float, align 4
  %f2 = alloca float, align 4
  %phi = alloca float, align 4, !taffo.info !9
  %f11 = bitcast float* %f1 to i8*
  call void @llvm.var.annotation(i8* %f11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 18), !taffo.constinfo !11
  %call = call float @random(), !taffo.constinfo !12
  store float %call, float* %f1, align 4
  %f22 = bitcast float* %f2 to i8*
  call void @llvm.var.annotation(i8* %f22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 20), !taffo.constinfo !11
  %call3 = call float @random(), !taffo.constinfo !12
  store float %call3, float* %f2, align 4
  %phi4 = bitcast float* %phi to i8*, !taffo.info !9
  call void @llvm.var.annotation(i8* %phi4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 22), !taffo.constinfo !11
  %tobool = icmp ne i32 %p1, 0, !taffo.info !13
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store float 1.000000e+00, float* %phi, align 4, !taffo.constinfo !15
  br label %if.end

if.else:                                          ; preds = %entry
  store float 0x3FF3333340000000, float* %phi, align 4, !taffo.constinfo !18
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tobool5 = icmp ne i32 %p3, 0, !taffo.info !13
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %0 = load float, float* %f1, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %1 = load float, float* %f2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %0, %cond.true ], [ %1, %cond.false ]
  %2 = load float, float* %phi, align 4, !taffo.info !21
  %mul = fmul float %2, %cond
  store float %mul, float* %phi, align 4
  %tobool6 = icmp ne i32 %p2, 0, !taffo.info !13
  br i1 %tobool6, label %if.then7, label %if.else9

if.then7:                                         ; preds = %cond.end
  %3 = load float, float* %phi, align 4, !taffo.info !23
  %conv = fpext float %3 to double, !taffo.info !23
  %add = fadd double %conv, 8.000000e-01, !taffo.constinfo !25, !taffo.info !28
  %conv8 = fptrunc double %add to float, !taffo.info !30
  store float %conv8, float* %phi, align 4
  br label %if.end13

if.else9:                                         ; preds = %cond.end
  %4 = load float, float* %phi, align 4, !taffo.info !21
  %conv10 = fpext float %4 to double, !taffo.info !21
  %add11 = fadd double %conv10, 3.000000e-01, !taffo.constinfo !32, !taffo.info !35
  %conv12 = fptrunc double %add11 to float, !taffo.info !37
  store float %conv12, float* %phi, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.else9, %if.then7
  %5 = load float, float* %phi, align 4, !taffo.info !9
  ret float %5
}

; Function Attrs: nounwind willreturn
declare !taffo.funinfo !39 !taffo.initweight !40 void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

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
!7 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!8 = !{i32 -1, i32 -1, i32 -1}
!9 = !{i1 false, !10, i1 false, i2 0}
!10 = !{double 1.000000e+00, double 0x4002666680000000}
!11 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!12 = !{i1 false}
!13 = !{i1 false, !14, i1 false, i2 0}
!14 = !{double 0.000000e+00, double 1.000000e+00}
!15 = !{!16, i1 false}
!16 = !{i1 false, !17, i1 false, i2 0}
!17 = !{double 1.000000e+00, double 1.000000e+00}
!18 = !{!19, i1 false}
!19 = !{i1 false, !20, i1 false, i2 0}
!20 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!21 = !{i1 false, !22, i1 false, i2 0}
!22 = !{double 1.000000e+00, double 0x3FF3333340000000}
!23 = !{i1 false, !24, i1 false, i2 0}
!24 = !{double 1.000000e+00, double 0x3FF8000020000000}
!25 = !{i1 false, !26}
!26 = !{i1 false, !27, i1 false, i2 0}
!27 = !{double 8.000000e-01, double 8.000000e-01}
!28 = !{i1 false, !29, i1 false, i2 0}
!29 = !{double 1.800000e+00, double 0x4002666676666666}
!30 = !{i1 false, !31, i1 false, i2 0}
!31 = !{double 0x3FFCCCCCC0000000, double 0x4002666680000000}
!32 = !{i1 false, !33}
!33 = !{i1 false, !34, i1 false, i2 0}
!34 = !{double 3.000000e-01, double 3.000000e-01}
!35 = !{i1 false, !36, i1 false, i2 0}
!36 = !{double 1.300000e+00, double 0x3FF800000CCCCCCD}
!37 = !{i1 false, !38, i1 false, i2 0}
!38 = !{double 0x3FF4CCCCC0000000, double 0x3FF8000020000000}
!39 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!40 = !{i32 -1, i32 -1, i32 -1, i32 -1}
