; ModuleID = './test4.out.4.taffotmp.ll'
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
  %f1.s16_16fixp = alloca i32, align 4, !taffo.info !5
  %f2.s16_16fixp = alloca i32, align 4, !taffo.info !5
  %phi.s16_16fixp = alloca i32, align 4, !taffo.info !5
  store i32 %p1, i32* %p1.addr, align 4
  store i32 %p2, i32* %p2.addr, align 4
  store i32 %p3, i32* %p3.addr, align 4
  %call = call float @random()
  %0 = fmul float 6.553600e+04, %call, !taffo.info !8
  %1 = fptosi float %0 to i32, !taffo.info !8
  store i32 %1, i32* %f1.s16_16fixp, align 4, !taffo.info !8
  %call3 = call float @random()
  %2 = fmul float 6.553600e+04, %call3, !taffo.info !8
  %3 = fptosi float %2 to i32, !taffo.info !8
  store i32 %3, i32* %f2.s16_16fixp, align 4, !taffo.info !8
  %4 = load i32, i32* %p1.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 65536, i32* %phi.s16_16fixp, align 4, !taffo.info !8
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 78643, i32* %phi.s16_16fixp, align 4, !taffo.info !8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %p3.addr, align 4
  %tobool5 = icmp ne i32 %5, 0
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %s16_16fixp = load i32, i32* %f1.s16_16fixp, align 4, !taffo.info !5
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %s16_16fixp1 = load i32, i32* %f2.s16_16fixp, align 4, !taffo.info !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.s16_16fixp = phi i32 [ %s16_16fixp, %cond.true ], [ %s16_16fixp1, %cond.false ], !taffo.info !5
  %s16_16fixp5 = load i32, i32* %phi.s16_16fixp, align 4, !taffo.info !5
  %6 = sext i32 %s16_16fixp5 to i64, !taffo.info !5
  %7 = sext i32 %cond.s16_16fixp to i64, !taffo.info !5
  %8 = mul i64 %6, %7, !taffo.info !9
  %9 = ashr i64 %8, 16, !taffo.info !9
  %mul.s16_16fixp = trunc i64 %9 to i32, !taffo.info !5
  store i32 %mul.s16_16fixp, i32* %phi.s16_16fixp, align 4, !taffo.info !8
  %10 = load i32, i32* %p2.addr, align 4
  %tobool6 = icmp ne i32 %10, 0
  br i1 %tobool6, label %if.then7, label %if.else9

if.then7:                                         ; preds = %cond.end
  %s16_16fixp4 = load i32, i32* %phi.s16_16fixp, align 4, !taffo.info !5
  %add.s16_16fixp = add i32 %s16_16fixp4, 52428, !taffo.info !5
  store i32 %add.s16_16fixp, i32* %phi.s16_16fixp, align 4, !taffo.info !8
  br label %if.end13

if.else9:                                         ; preds = %cond.end
  %s16_16fixp3 = load i32, i32* %phi.s16_16fixp, align 4, !taffo.info !5
  %add11.s16_16fixp = add i32 %s16_16fixp3, 19660, !taffo.info !5
  store i32 %add11.s16_16fixp, i32* %phi.s16_16fixp, align 4, !taffo.info !8
  br label %if.end13

if.end13:                                         ; preds = %if.else9, %if.then7
  %s16_16fixp2 = load i32, i32* %phi.s16_16fixp, align 4, !taffo.info !5
  %11 = sitofp i32 %s16_16fixp2 to float, !taffo.info !5
  %12 = fdiv float %11, 6.553600e+04, !taffo.info !5
  ret float %12, !taffo.initweight !11, !taffo.info !8
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{}
!3 = !{i32 -1, i32 -1, i32 -1}
!4 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!5 = !{!6, !7, i1 false, i2 1}
!6 = !{!"fixp", i32 -32, i32 16}
!7 = !{double -3.276700e+04, double 3.276700e+04}
!8 = !{i1 false, !7, i1 false, i2 1}
!9 = !{!10, !7, i1 false, i2 1}
!10 = !{!"fixp", i32 -64, i32 32}
!11 = !{i32 2}
