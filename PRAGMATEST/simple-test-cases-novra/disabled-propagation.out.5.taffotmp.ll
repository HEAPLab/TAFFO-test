; ModuleID = './disabled-propagation.out.4.taffotmp.ll'
source_filename = "./disabled-propagation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.3 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !taffo.initweight !2 !taffo.funinfo !3 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %a = alloca i32, align 4, !taffo.initweight !4, !taffo.info !5
  %b.s2_30fixp = alloca i32, align 4, !taffo.info !6
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1, i32* %a, align 4, !taffo.initweight !9, !taffo.info !5
  store i32 2147483647, i32* %b.s2_30fixp, align 4, !taffo.info !10
  %0 = load i32, i32* %a, align 4, !taffo.initweight !9, !taffo.info !5
  %s2_30fixp1 = load i32, i32* %b.s2_30fixp, align 4, !taffo.info !6
  %1 = sext i32 %s2_30fixp1 to i64, !taffo.info !6
  %2 = mul i64 %1, 2, !taffo.info !11
  %mul.s2_30fixp = trunc i64 %2 to i32, !taffo.info !6
  %3 = sext i32 %0 to i64, !taffo.info !5
  %4 = shl i64 %3, 30, !taffo.info !5
  %5 = sext i32 %mul.s2_30fixp to i64, !taffo.info !6
  %6 = sdiv i64 %4, %5, !taffo.info !13
  %7 = shl i64 %6, 30, !taffo.info !13
  %div.s2_30fixp = trunc i64 %7 to i32, !taffo.info !15
  %8 = sitofp i32 %div.s2_30fixp to double, !taffo.info !15
  %9 = fdiv double %8, 0x41D0000000000000, !taffo.info !15
  %call.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %9), !taffo.initweight !16, !taffo.info !15
  %s2_30fixp = load i32, i32* %b.s2_30fixp, align 4, !taffo.info !6
  %10 = sext i32 %s2_30fixp to i64, !taffo.info !6
  %11 = mul i64 %10, 2, !taffo.info !11
  %mul5.s2_30fixp = trunc i64 %11 to i32, !taffo.info !6
  %12 = load i32, i32* %a, align 4, !taffo.initweight !9, !taffo.info !5
  %13 = sext i32 %mul5.s2_30fixp to i64, !taffo.info !6
  %14 = sext i32 %12 to i64, !taffo.info !5
  %15 = sdiv i64 %13, %14, !taffo.info !17
  %div7.s2_30fixp = trunc i64 %15 to i32, !taffo.info !15
  %16 = sitofp i32 %div7.s2_30fixp to double, !taffo.info !15
  %17 = fdiv double %16, 0x41D0000000000000, !taffo.info !15
  %call8.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %17), !taffo.initweight !16, !taffo.info !15
  ret i32 0
}

declare !taffo.initweight !18 !taffo.funinfo !19 dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{i32 -1, i32 -1}
!3 = !{i32 0, i1 false, i32 0, i1 false}
!4 = !{i32 0}
!5 = !{i1 false, i1 false, i1 false, i2 0}
!6 = !{!7, !8, i1 false, i2 1}
!7 = !{!"fixp", i32 -32, i32 30}
!8 = !{double -1.000000e+00, double 1.000000e+00}
!9 = !{i32 1}
!10 = !{i1 false, !8, i1 false, i2 1}
!11 = !{!12, !8, i1 false, i2 1}
!12 = !{!"fixp", i32 -64, i32 30}
!13 = !{!14, i1 false, i1 false, i2 1}
!14 = !{!"fixp", i32 -64, i32 0}
!15 = !{!7, i1 false, i1 false, i2 1}
!16 = !{i32 4}
!17 = !{!12, i1 false, i1 false, i2 1}
!18 = !{i32 -1}
!19 = !{i32 0, i1 false}
