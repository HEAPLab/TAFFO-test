; ModuleID = './disabled-calls-2.out.4.taffotmp.ll'
source_filename = "./disabled-calls-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.2 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local float @test(float %a) #0 !taffo.initweight !2 !taffo.equivalentChild !3 !taffo.funinfo !4 {
entry:
  %mul = fmul float %a, 2.000000e+00, !taffo.constinfo !5
  ret float %mul
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !taffo.initweight !8 !taffo.funinfo !9 !taffo.start !10 {
entry:
  %a = alloca float, align 4, !taffo.initweight !11, !taffo.target !12, !taffo.info !13
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), float* %a), !taffo.initweight !15, !taffo.constinfo !16, !taffo.target !12, !taffo.info !13
  %0 = load float, float* %a, align 4, !taffo.initweight !15, !taffo.target !12, !taffo.info !13
  %mul = fmul float %0, 2.000000e+00, !taffo.initweight !17, !taffo.constinfo !5, !taffo.target !12, !taffo.info !18
  %1 = fmul float 0x4150000000000000, %mul, !taffo.constinfo !5, !taffo.target !12, !taffo.info !18
  %2 = fptosi float %1 to i32, !taffo.target !12, !taffo.info !18
  %3 = ashr i32 %2, 1, !taffo.target !12, !taffo.info !18
  %call3.s11_21fixp = call i32 @test.1_s11_21fixp(i32 %3), !taffo.constinfo !20, !taffo.target !12, !taffo.info !21
  %4 = sitofp i32 %call3.s11_21fixp to double, !taffo.target !12, !taffo.info !21
  %5 = fdiv double %4, 0x4140000000000000, !taffo.constinfo !20, !taffo.target !12, !taffo.info !21
  %call4.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), double %5), !taffo.initweight !24, !taffo.constinfo !16, !taffo.target !12, !taffo.info !25
  ret i32 0
}

declare !taffo.initweight !2 !taffo.funinfo !4 dso_local i32 @__isoc99_scanf(i8*, ...) #1

declare !taffo.initweight !2 !taffo.funinfo !4 dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test.1_s11_21fixp(i32 %a.s11_21fixp) #0 !taffo.initweight !17 !taffo.funinfo !26 !taffo.sourceFunction !28 {
entry:
  %0 = sext i32 %a.s11_21fixp to i64, !taffo.info !27
  %1 = mul i64 %0, 2, !taffo.constinfo !29, !taffo.info !32
  %mul.s11_21fixp = trunc i64 %1 to i32, !taffo.info !21
  ret i32 %mul.s11_21fixp, !taffo.initweight !34, !taffo.info !35
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{i32 -1}
!3 = distinct !{null}
!4 = !{i32 0, i1 false}
!5 = !{i1 false, !6}
!6 = !{i1 false, !7, i1 false, i2 0}
!7 = !{double 2.000000e+00, double 2.000000e+00}
!8 = !{i32 -1, i32 -1}
!9 = !{i32 0, i1 false, i32 0, i1 false}
!10 = !{i1 true}
!11 = !{i32 0}
!12 = !{!"a"}
!13 = !{i1 false, !14, i1 false, i2 0}
!14 = !{double -1.280000e+02, double 1.280000e+02}
!15 = !{i32 1}
!16 = !{i1 false, i1 false, i1 false}
!17 = !{i32 2}
!18 = !{i1 false, !19, i1 false, i2 0}
!19 = !{double -2.560000e+02, double 2.560000e+02}
!20 = !{i1 false, i1 false}
!21 = !{!22, !23, i1 false, i2 1}
!22 = !{!"fixp", i32 -32, i32 21}
!23 = !{double -5.120000e+02, double 5.120000e+02}
!24 = !{i32 4}
!25 = !{!22, i1 false, i1 false, i2 1}
!26 = !{i32 1, !27}
!27 = !{!22, !19, i1 false, i2 1}
!28 = !{float (float)* @test}
!29 = !{i1 false, !30}
!30 = !{!31, !7, i1 false, i2 0}
!31 = !{!"fixp", i32 32, i32 0}
!32 = !{!33, !23, i1 false, i2 1}
!33 = !{!"fixp", i32 -64, i32 21}
!34 = !{i32 6}
!35 = !{i1 false, i1 false, i1 false, i2 1}
