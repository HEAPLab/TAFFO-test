; ModuleID = './test_cpp11attributes.out.3.taffotmp.ll'
source_filename = "./test_cpp11attributes.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"range -3000 3000\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [27 x i8] c"./test_cpp11attributes.cpp\00", section "llvm.metadata"
@llvm.global.annotations = appending global [1 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (float (i32, i32, float)* @_Z4oveniif to i8*), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0), i32 5 }], section "llvm.metadata"

; Function Attrs: noinline nounwind uwtable
define dso_local float @_Z4oveniif(i32 %stuff, i32 %baked, float %cherry) #0 !taffo.initweight !2 !taffo.funinfo !3 {
entry:
  %stuff.addr = alloca i32, align 4, !taffo.initweight !4, !taffo.info !5
  %baked.addr = alloca i32, align 4
  %cherry.addr = alloca float, align 4
  %cake = alloca float, align 4, !taffo.initweight !4, !taffo.info !7
  store i32 %stuff, i32* %stuff.addr, align 4, !taffo.initweight !9, !taffo.info !5
  %stuff.addr1 = bitcast i32* %stuff.addr to i8*, !taffo.initweight !9, !taffo.info !5
  store i32 %baked, i32* %baked.addr, align 4
  store float %cherry, float* %cherry.addr, align 4
  %cake2 = bitcast float* %cake to i8*, !taffo.initweight !9, !taffo.info !10
  %0 = load i32, i32* %baked.addr, align 4
  %1 = load i32, i32* %stuff.addr, align 4, !taffo.initweight !9, !taffo.info !5
  %add = add nsw i32 %0, %1, !taffo.initweight !11, !taffo.info !5
  %conv = sitofp i32 %add to float, !taffo.initweight !12, !taffo.info !7
  store float %conv, float* %cake, align 4, !taffo.initweight !9, !taffo.info !5
  %2 = load float, float* %cake, align 4, !taffo.initweight !9, !taffo.info !7
  %3 = load float, float* %cherry.addr, align 4
  %add3 = fadd float %2, %3, !taffo.initweight !11, !taffo.info !7
  ret float %add3, !taffo.initweight !12, !taffo.info !5
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{i32 -1, i32 -1, i32 -1}
!3 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!4 = !{i32 0}
!5 = !{i1 false, !6, i1 false, i2 1}
!6 = !{double -3.000000e+03, double 3.000000e+03}
!7 = !{!8, !6, i1 false, i2 1}
!8 = !{!"fixp", i32 -32, i32 19}
!9 = !{i32 1}
!10 = !{!8, i1 false, i1 false, i2 1}
!11 = !{i32 2}
!12 = !{i32 3}
