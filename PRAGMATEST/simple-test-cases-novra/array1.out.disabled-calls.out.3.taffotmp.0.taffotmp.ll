; ModuleID = './disabled-calls.out.3.taffotmp.ll'
source_filename = "./disabled-calls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [46 x i8] c"target('a') scalar(range(-128, 128) disabled)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [19 x i8] c"./disabled-calls.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local float @test(float %a) #0 !taffo.initweight !2 !taffo.equivalentChild !3 !taffo.funinfo !4 {
entry:
  %a.addr = alloca float, align 4
  store float %a, float* %a.addr, align 4
  %0 = load float, float* %a.addr, align 4
  %mul = fmul float %0, 2.000000e+00
  ret float %mul
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !taffo.initweight !5 !taffo.funinfo !6 !taffo.start !7 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %a = alloca float, align 4, !taffo.initweight !8, !taffo.target !9, !taffo.info !10
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %a1 = bitcast float* %a to i8*, !taffo.initweight !12, !taffo.target !9, !taffo.info !10
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), float* %a), !taffo.initweight !12, !taffo.target !9, !taffo.info !10
  %0 = load float, float* %a, align 4, !taffo.initweight !12, !taffo.target !9, !taffo.info !10
  %call2 = call float @test.1(float %0), !taffo.initweight !13, !taffo.target !9, !taffo.info !10, !taffo.originalCall !14
  %conv = fpext float %call2 to double, !taffo.initweight !15, !taffo.target !9, !taffo.info !10
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv), !taffo.initweight !16, !taffo.target !9, !taffo.info !10
  ret i32 0
}

; Function Attrs: nounwind willreturn
declare !taffo.initweight !17 !taffo.funinfo !18 void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

declare !taffo.initweight !2 !taffo.funinfo !4 dso_local i32 @__isoc99_scanf(i8*, ...) #2

declare !taffo.initweight !2 !taffo.funinfo !4 dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal float @test.1(float %a) #0 !taffo.initweight !13 !taffo.funinfo !19 !taffo.sourceFunction !14 {
entry:
  %a.addr = alloca float, align 4, !taffo.initweight !15, !taffo.info !10
  store float %a, float* %a.addr, align 4, !taffo.initweight !16, !taffo.info !10
  %0 = load float, float* %a.addr, align 4, !taffo.initweight !16, !taffo.info !10
  %mul = fmul float %0, 2.000000e+00, !taffo.initweight !20, !taffo.info !10
  ret float %mul, !taffo.initweight !21, !taffo.info !10
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{i32 -1}
!3 = !{float (float)* @test.1}
!4 = !{i32 0, i1 false}
!5 = !{i32 -1, i32 -1}
!6 = !{i32 0, i1 false, i32 0, i1 false}
!7 = !{i1 true}
!8 = !{i32 0}
!9 = !{!"a"}
!10 = !{i1 false, !11, i1 false, i2 0}
!11 = !{double -1.280000e+02, double 1.280000e+02}
!12 = !{i32 1}
!13 = !{i32 2}
!14 = !{float (float)* @test}
!15 = !{i32 3}
!16 = !{i32 4}
!17 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!18 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!19 = !{i32 1, !10}
!20 = !{i32 5}
!21 = !{i32 6}
