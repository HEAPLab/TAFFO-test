; ModuleID = './test4.out.3.taffotmp.ll'
source_filename = "./test4.c"
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
define dso_local float @test(i32 %p1, i32 %p2, i32 %p3) #0 !taffo.initweight !3 !taffo.funinfo !4 {
entry:
  %p1.addr = alloca i32, align 4
  %p2.addr = alloca i32, align 4
  %p3.addr = alloca i32, align 4
  %f1 = alloca float, align 4, !taffo.initweight !5, !taffo.info !6
  %f2 = alloca float, align 4, !taffo.initweight !5, !taffo.info !6
  %phi = alloca float, align 4, !taffo.initweight !5, !taffo.info !6
  store i32 %p1, i32* %p1.addr, align 4
  store i32 %p2, i32* %p2.addr, align 4
  store i32 %p3, i32* %p3.addr, align 4
  %f11 = bitcast float* %f1 to i8*, !taffo.initweight !9, !taffo.info !10
  %call = call float @random()
  store float %call, float* %f1, align 4, !taffo.initweight !9, !taffo.info !11
  %f22 = bitcast float* %f2 to i8*, !taffo.initweight !9, !taffo.info !10
  %call3 = call float @random()
  store float %call3, float* %f2, align 4, !taffo.initweight !9, !taffo.info !11
  %phi4 = bitcast float* %phi to i8*, !taffo.initweight !9, !taffo.info !10
  %0 = load i32, i32* %p1.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store float 1.000000e+00, float* %phi, align 4, !taffo.initweight !9, !taffo.info !11
  br label %if.end

if.else:                                          ; preds = %entry
  store float 0x3FF3333340000000, float* %phi, align 4, !taffo.initweight !9, !taffo.info !11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i32, i32* %p3.addr, align 4
  %tobool5 = icmp ne i32 %1, 0
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %2 = load float, float* %f1, align 4, !taffo.initweight !9, !taffo.info !6
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %3 = load float, float* %f2, align 4, !taffo.initweight !9, !taffo.info !6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %2, %cond.true ], [ %3, %cond.false ], !taffo.initweight !12, !taffo.info !6
  %4 = load float, float* %phi, align 4, !taffo.initweight !9, !taffo.info !6
  %mul = fmul float %4, %cond, !taffo.initweight !12, !taffo.info !6
  store float %mul, float* %phi, align 4, !taffo.initweight !9, !taffo.info !11
  %5 = load i32, i32* %p2.addr, align 4
  %tobool6 = icmp ne i32 %5, 0
  br i1 %tobool6, label %if.then7, label %if.else9

if.then7:                                         ; preds = %cond.end
  %6 = load float, float* %phi, align 4, !taffo.initweight !9, !taffo.info !6
  %conv = fpext float %6 to double, !taffo.initweight !12, !taffo.info !6
  %add = fadd double %conv, 8.000000e-01, !taffo.initweight !13, !taffo.info !6
  %conv8 = fptrunc double %add to float, !taffo.initweight !14, !taffo.info !6
  store float %conv8, float* %phi, align 4, !taffo.initweight !9, !taffo.info !11
  br label %if.end13

if.else9:                                         ; preds = %cond.end
  %7 = load float, float* %phi, align 4, !taffo.initweight !9, !taffo.info !6
  %conv10 = fpext float %7 to double, !taffo.initweight !12, !taffo.info !6
  %add11 = fadd double %conv10, 3.000000e-01, !taffo.initweight !13, !taffo.info !6
  %conv12 = fptrunc double %add11 to float, !taffo.initweight !14, !taffo.info !6
  store float %conv12, float* %phi, align 4, !taffo.initweight !9, !taffo.info !11
  br label %if.end13

if.end13:                                         ; preds = %if.else9, %if.then7
  %8 = load float, float* %phi, align 4, !taffo.initweight !9, !taffo.info !6
  ret float %8, !taffo.initweight !12, !taffo.info !11
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{}
!3 = !{i32 -1, i32 -1, i32 -1}
!4 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!5 = !{i32 0}
!6 = !{!7, !8, i1 false, i2 1}
!7 = !{!"fixp", i32 -32, i32 16}
!8 = !{double -3.276700e+04, double 3.276700e+04}
!9 = !{i32 1}
!10 = !{!7, i1 false, i1 false, i2 1}
!11 = !{i1 false, !8, i1 false, i2 1}
!12 = !{i32 2}
!13 = !{i32 3}
!14 = !{i32 4}
