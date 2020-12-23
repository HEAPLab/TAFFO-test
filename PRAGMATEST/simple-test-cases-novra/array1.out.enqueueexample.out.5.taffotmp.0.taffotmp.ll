; ModuleID = './enqueueexample.out.5.taffotmp.ll'
source_filename = "./enqueueexample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.2 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local float @example(float %a, float %b, float %c, float %d) #0 !taffo.initweight !2 !taffo.funinfo !3 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  %c.addr = alloca float, align 4
  %d.addr = alloca float, align 4
  %x = alloca float, align 4
  %y.s5_27fixp = alloca i32, align 4, !taffo.info !4
  %z = alloca float, align 4
  store float %a, float* %a.addr, align 4
  store float %b, float* %b.addr, align 4
  store float %c, float* %c.addr, align 4
  store float %d, float* %d.addr, align 4
  store float 1.000000e+00, float* %x, align 4
  store i32 268435456, i32* %y.s5_27fixp, align 4, !taffo.info !7
  store float 3.000000e+00, float* %z, align 4
  %0 = load float, float* %x, align 4
  %s5_27fixp = load i32, i32* %y.s5_27fixp, align 4, !taffo.info !4
  %1 = load float, float* %z, align 4
  %2 = fmul float 0x41A0000000000000, %1, !taffo.info !4
  %3 = fptosi float %2 to i32, !taffo.info !4
  %4 = sext i32 %s5_27fixp to i64, !taffo.info !4
  %5 = shl i64 %4, 27, !taffo.info !4
  %6 = sext i32 %3 to i64, !taffo.info !4
  %7 = sdiv i64 %5, %6, !taffo.info !8
  %div.s5_27fixp = trunc i64 %7 to i32, !taffo.info !4
  %8 = fmul float 0x41A0000000000000, %0, !taffo.info !4
  %9 = fptosi float %8 to i32, !taffo.info !4
  %10 = sext i32 %9 to i64, !taffo.info !4
  %11 = sext i32 %div.s5_27fixp to i64, !taffo.info !4
  %12 = mul i64 %10, %11, !taffo.info !10
  %13 = ashr i64 %12, 27, !taffo.info !10
  %mul.s5_27fixp = trunc i64 %13 to i32, !taffo.info !4
  %14 = load float, float* %x, align 4
  %15 = fmul float 0x41A0000000000000, %14, !taffo.info !4
  %16 = fptosi float %15 to i32, !taffo.info !4
  %17 = sext i32 %mul.s5_27fixp to i64, !taffo.info !4
  %18 = sext i32 %16 to i64, !taffo.info !4
  %19 = mul i64 %17, %18, !taffo.info !10
  %20 = ashr i64 %19, 27, !taffo.info !10
  %mul2.s5_27fixp = trunc i64 %20 to i32, !taffo.info !4
  %21 = sitofp i32 %mul2.s5_27fixp to float, !taffo.info !4
  %22 = fdiv float %21, 0x41A0000000000000, !taffo.info !4
  ret float %22, !taffo.initweight !12, !taffo.info !7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !taffo.initweight !13 !taffo.funinfo !14 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call float @example(float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00)
  %conv = fpext float %call to double
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %conv)
  ret i32 0
}

declare !taffo.initweight !15 !taffo.funinfo !16 dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!3 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!4 = !{!5, !6, i1 false, i2 1}
!5 = !{!"fixp", i32 -32, i32 27}
!6 = !{double -1.000000e+01, double 1.000000e+01}
!7 = !{i1 false, !6, i1 false, i2 1}
!8 = !{!9, !6, i1 false, i2 1}
!9 = !{!"fixp", i32 -64, i32 27}
!10 = !{!11, !6, i1 false, i2 1}
!11 = !{!"fixp", i32 -64, i32 54}
!12 = !{i32 5}
!13 = !{i32 -1, i32 -1}
!14 = !{i32 0, i1 false, i32 0, i1 false}
!15 = !{i32 -1}
!16 = !{i32 0, i1 false}
