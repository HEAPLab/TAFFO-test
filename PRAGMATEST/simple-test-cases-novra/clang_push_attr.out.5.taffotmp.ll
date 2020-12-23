; ModuleID = './clang_push_attr.out.4.taffotmp.ll'
source_filename = "./clang_push_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.3 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !2 !taffo.funinfo !2 {
entry:
  %retval = alloca i32, align 4
  %out = alloca float, align 4
  %a.s13_19fixp = alloca i32, align 4, !taffo.info !3
  %b.s13_19fixp = alloca i32, align 4, !taffo.info !3
  %c.s9_23fixp = alloca i32, align 4, !taffo.info !6
  %d.s9_23fixp = alloca i32, align 4, !taffo.info !6
  store i32 0, i32* %retval, align 4
  store i32 5242880, i32* %a.s13_19fixp, align 4, !taffo.info !9
  store i32 17636210, i32* %c.s9_23fixp, align 4, !taffo.info !10
  %s13_19fixp = load i32, i32* %a.s13_19fixp, align 4, !taffo.info !3
  %0 = sext i32 %s13_19fixp to i64, !taffo.info !3
  %1 = mul i64 %0, 451486962, !taffo.info !11
  %2 = ashr i64 %1, 31, !taffo.info !11
  %mul.s13_19fixp = trunc i64 %2 to i32, !taffo.info !3
  store i32 %mul.s13_19fixp, i32* %b.s13_19fixp, align 4, !taffo.info !9
  %s13_19fixp2 = load i32, i32* %b.s13_19fixp, align 4, !taffo.info !3
  %3 = sext i32 %s13_19fixp2 to i64, !taffo.info !3
  %4 = sdiv i64 %3, 2, !taffo.info !13
  %div.s13_19fixp = trunc i64 %4 to i32, !taffo.info !3
  store i32 %div.s13_19fixp, i32* %b.s13_19fixp, align 4, !taffo.info !9
  %s9_23fixp3 = load i32, i32* %c.s9_23fixp, align 4, !taffo.info !6
  %5 = sext i32 %s9_23fixp3 to i64, !taffo.info !6
  %6 = sdiv i64 %5, 2, !taffo.info !15
  %div6.s9_23fixp = trunc i64 %6 to i32, !taffo.info !6
  store i32 %div6.s9_23fixp, i32* %c.s9_23fixp, align 4, !taffo.info !10
  %s13_19fixp1 = load i32, i32* %b.s13_19fixp, align 4, !taffo.info !3
  %s9_23fixp = load i32, i32* %c.s9_23fixp, align 4, !taffo.info !6
  %7 = ashr i32 %s9_23fixp, 4, !taffo.info !6
  %add.s13_19fixp = add i32 %s13_19fixp1, %7, !taffo.info !3
  %8 = shl i32 %add.s13_19fixp, 4, !taffo.info !3
  store i32 %8, i32* %d.s9_23fixp, align 4, !taffo.info !10
  %s9_23fixp4 = load i32, i32* %d.s9_23fixp, align 4, !taffo.info !6
  %9 = sitofp i32 %s9_23fixp4 to float, !taffo.info !6
  %10 = fdiv float %9, 0x4160000000000000, !taffo.info !6
  store float %10, float* %out, align 4, !taffo.info !10
  %11 = load float, float* %out, align 4
  %conv7 = fpext float %11 to double
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv7)
  ret i32 0
}

declare !taffo.initweight !17 !taffo.funinfo !18 dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{}
!3 = !{!4, !5, i1 false, i2 1}
!4 = !{!"fixp", i32 -32, i32 19}
!5 = !{double -3.000000e+03, double 3.000000e+03}
!6 = !{!7, !8, i1 false, i2 1}
!7 = !{!"fixp", i32 -32, i32 23}
!8 = !{double -2.550000e+02, double 2.550000e+02}
!9 = !{i1 false, !5, i1 false, i2 1}
!10 = !{i1 false, !8, i1 false, i2 1}
!11 = !{!12, !5, i1 false, i2 1}
!12 = !{!"fixp", i32 -64, i32 50}
!13 = !{!14, !5, i1 false, i2 1}
!14 = !{!"fixp", i32 -64, i32 19}
!15 = !{!16, !8, i1 false, i2 1}
!16 = !{!"fixp", i32 -64, i32 23}
!17 = !{i32 -1}
!18 = !{i32 0, i1 false}
