; ModuleID = './difference-example.out.3.taffotmp.ll'
source_filename = "./difference-example.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"range -100 100\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [23 x i8] c"./difference-example.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [5 x i8] c"%lf\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local double @test() #0 !taffo.initweight !2 !taffo.funinfo !2 {
entry:
  %a = alloca double, align 8, !taffo.initweight !3, !taffo.info !4
  %b = alloca double, align 8
  %c = alloca double, align 8
  %a1 = bitcast double* %a to i8*, !taffo.initweight !6, !taffo.info !4
  store double 9.800000e+01, double* %b, align 8
  store double 7.700000e+01, double* %c, align 8
  %0 = load double, double* %b, align 8
  %1 = load double, double* %c, align 8
  %sub = fsub double %0, %1
  store double %sub, double* %b, align 8
  %2 = load double, double* %b, align 8
  %mul = fmul double %2, 2.000000e+00
  store double %mul, double* %a, align 8, !taffo.initweight !6, !taffo.info !4
  %3 = load double, double* %a, align 8, !taffo.initweight !6, !taffo.info !4
  ret double %3, !taffo.initweight !7, !taffo.info !4
}

; Function Attrs: nounwind willreturn
declare !taffo.initweight !8 !taffo.funinfo !9 void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !taffo.initweight !10 !taffo.funinfo !11 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call double @test()
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), double %call)
  ret i32 0
}

declare !taffo.initweight !12 !taffo.funinfo !13 dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{}
!3 = !{i32 0}
!4 = !{i1 false, !5, i1 false, i2 1}
!5 = !{double -1.000000e+02, double 1.000000e+02}
!6 = !{i32 1}
!7 = !{i32 2}
!8 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!9 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!10 = !{i32 -1, i32 -1}
!11 = !{i32 0, i1 false, i32 0, i1 false}
!12 = !{i32 -1}
!13 = !{i32 0, i1 false}
