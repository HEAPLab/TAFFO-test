; ModuleID = './function-return-ptr.out.4.taffotmp.ll'
source_filename = "./function-return-ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@glob = common dso_local global float 0.000000e+00, align 4, !taffo.initweight !0, !taffo.info !1
@.str = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [24 x i8] c"./function-return-ptr.c\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@llvm.global.annotations = appending global [2 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (float* ()* @fun to i8*), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 8 }, { i8*, i8*, i8*, i32 } { i8* bitcast (float* @glob to i8*), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 5 }], section "llvm.metadata"
@glob.fixp = common global i32 0, align 4, !taffo.info !1
@glob.fixp.1 = common global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local float* @fun() #0 !taffo.initweight !6 !taffo.equivalentChild !7 !taffo.funinfo !6 {
entry:
  %0 = bitcast i32* @glob.fixp to float*, !taffo.info !1
  ret float* %0, !taffo.initweight !8, !taffo.info !9
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !6 !taffo.funinfo !6 !taffo.start !10 {
entry:
  %t = alloca float, align 4, !taffo.initweight !0, !taffo.info !11
  %call.s5_27fixp = call i32* @fun.1_s5_27fixp(), !taffo.info !1, !taffo.constinfo !12
  %call3 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), float* %t), !taffo.initweight !8, !taffo.info !11, !taffo.constinfo !13
  %0 = load float, float* %t, align 4, !taffo.initweight !8, !taffo.info !11
  %1 = fmul float 0x41A0000000000000, %0, !taffo.info !11
  %2 = fptosi float %1 to i32, !taffo.info !11
  store i32 %2, i32* %call.s5_27fixp, align 4, !taffo.info !9, !taffo.target !14
  %s5_27fixp = load i32, i32* %call.s5_27fixp, align 4, !taffo.info !1, !taffo.target !14
  %3 = sitofp i32 %s5_27fixp to double, !taffo.info !1, !taffo.target !14
  %4 = fdiv double %3, 0x41A0000000000000, !taffo.info !1, !taffo.target !14
  %call4.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), double %4), !taffo.initweight !15, !taffo.info !16, !taffo.constinfo !13, !taffo.target !14
  ret i32 0
}

declare !taffo.initweight !17 !taffo.funinfo !18 dso_local i32 @__isoc99_scanf(i8*, ...) #1

declare !taffo.initweight !17 !taffo.funinfo !18 dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal i32* @fun.1_s5_27fixp() #0 !taffo.initweight !6 !taffo.funinfo !6 !taffo.sourceFunction !19 {
entry:
  ret i32* @glob.fixp.1, !taffo.initweight !8, !taffo.info !9
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!4}
!llvm.ident = !{!5}

!0 = !{i32 0}
!1 = !{!2, !3, i1 false, i2 1}
!2 = !{!"fixp", i32 -32, i32 27}
!3 = !{double -1.000000e+01, double 1.000000e+01}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!6 = !{}
!7 = distinct !{null}
!8 = !{i32 1}
!9 = !{i1 false, i1 false, i1 false, i2 1}
!10 = !{i1 true}
!11 = !{i1 false, !3, i1 false, i2 0}
!12 = !{i1 false}
!13 = !{i1 false, i1 false, i1 false}
!14 = !{!"x"}
!15 = !{i32 4}
!16 = !{!2, i1 false, i1 false, i2 1}
!17 = !{i32 -1}
!18 = !{i32 0, i1 false}
!19 = !{float* ()* @fun}
