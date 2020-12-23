; ModuleID = './function-double-indirection.out.5.taffotmp.ll'
source_filename = "./function-double-indirection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.2 = private unnamed_addr constant [3 x i8] c"%f\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @function_1_2(float* %x, i32 %y) #0 !taffo.initweight !2 !taffo.equivalentChild !3 !taffo.funinfo !4 {
entry:
  %x.addr = alloca float*, align 8
  %y.addr = alloca i32, align 4
  store float* %x, float** %x.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  %0 = load float*, float** %x.addr, align 8
  %1 = load float, float* %0, align 4
  %2 = load i32, i32* %y.addr, align 4
  %conv = sitofp i32 %2 to float
  %mul = fmul float %1, %conv
  %3 = load float*, float** %x.addr, align 8
  store float %mul, float* %3, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @function_1_1(float* %x, i32 %y) #0 !taffo.initweight !2 !taffo.equivalentChild !5 !taffo.funinfo !4 {
entry:
  %x.addr = alloca float*, align 8
  %y.addr = alloca i32, align 4
  store float* %x, float** %x.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  %0 = load float*, float** %x.addr, align 8
  %1 = load i32, i32* %y.addr, align 4
  call void @function_1_2(float* %0, i32 %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @function_2_2(float* %x) #0 !taffo.initweight !6 !taffo.equivalentChild !7 !taffo.funinfo !8 {
entry:
  %x.addr = alloca float*, align 8
  store float* %x, float** %x.addr, align 8
  %0 = load float*, float** %x.addr, align 8
  %1 = load float, float* %0, align 4
  %2 = load float*, float** %x.addr, align 8
  %3 = load float, float* %2, align 4
  %mul = fmul float %1, %3
  %4 = load float*, float** %x.addr, align 8
  store float %mul, float* %4, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @function_2_1(float* %y) #0 !taffo.initweight !6 !taffo.equivalentChild !9 !taffo.funinfo !8 {
entry:
  %y.addr = alloca float*, align 8
  %x = alloca float, align 4
  %x2.u4_28fixp = alloca i32, align 4, !taffo.info !10
  store float* %y, float** %y.addr, align 8
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), float* %x)
  %0 = load float, float* %x, align 4
  %1 = fmul float 0x41B0000000000000, %0, !taffo.info !13
  %2 = fptoui float %1 to i32, !taffo.info !13
  store i32 %2, i32* %x2.u4_28fixp, align 4, !taffo.info !13
  call void @function_2_2.1_fixp(i32* %x2.u4_28fixp), !taffo.info !13
  %u4_28fixp = load i32, i32* %x2.u4_28fixp, align 4, !taffo.info !10
  %3 = load float*, float** %y.addr, align 8
  %4 = load float, float* %3, align 4
  %5 = fmul float 0x41B0000000000000, %4, !taffo.info !10
  %6 = fptoui float %5 to i32, !taffo.info !10
  %add.u4_28fixp = add i32 %6, %u4_28fixp, !taffo.info !10
  %7 = uitofp i32 %add.u4_28fixp to float, !taffo.info !10
  %8 = fdiv float %7, 0x41B0000000000000, !taffo.info !10
  store float %8, float* %3, align 4, !taffo.info !13
  ret void
}

declare !taffo.initweight !6 !taffo.funinfo !8 dso_local i32 @__isoc99_scanf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !taffo.initweight !2 !taffo.funinfo !4 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %x.u4_28fixp = alloca i32, align 4, !taffo.info !10
  %y = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1342177280, i32* %x.u4_28fixp, align 4, !taffo.info !13
  store i32 2, i32* %y, align 4
  %0 = load i32, i32* %y, align 4
  call void @function_1_1.3_fixp(i32* %x.u4_28fixp, i32 %0), !taffo.info !13
  %u4_28fixp1 = load i32, i32* %x.u4_28fixp, align 4, !taffo.info !10
  %1 = uitofp i32 %u4_28fixp1 to double, !taffo.info !10
  %2 = fdiv double %1, 0x41B0000000000000, !taffo.info !10
  %call.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), double %2), !taffo.initweight !14, !taffo.info !15
  call void @function_2_1.2_fixp(i32* %x.u4_28fixp), !taffo.info !13
  %u4_28fixp = load i32, i32* %x.u4_28fixp, align 4, !taffo.info !10
  %3 = uitofp i32 %u4_28fixp to double, !taffo.info !10
  %4 = fdiv double %3, 0x41B0000000000000, !taffo.info !10
  %call3.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), double %4), !taffo.initweight !14, !taffo.info !15
  ret i32 0
}

declare !taffo.initweight !6 !taffo.funinfo !8 dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @function_2_2.1_fixp(i32* %x.u4_28fixp) #0 !taffo.initweight !16 !taffo.equivalentChild !17 !taffo.funinfo !18 !taffo.sourceFunction !19 {
entry:
  %x.addr.u4_28fixp = alloca i32*, align 8, !taffo.info !10
  store i32* %x.u4_28fixp, i32** %x.addr.u4_28fixp, align 8, !taffo.info !13
  %u4_28fixp2 = load i32*, i32** %x.addr.u4_28fixp, align 8, !taffo.info !10
  %u4_28fixp4 = load i32, i32* %u4_28fixp2, align 4, !taffo.info !10
  %u4_28fixp1 = load i32*, i32** %x.addr.u4_28fixp, align 8, !taffo.info !10
  %u4_28fixp3 = load i32, i32* %u4_28fixp1, align 4, !taffo.info !10
  %0 = zext i32 %u4_28fixp4 to i64, !taffo.info !10
  %1 = zext i32 %u4_28fixp3 to i64, !taffo.info !10
  %2 = mul i64 %0, %1, !taffo.info !20
  %3 = lshr i64 %2, 28, !taffo.info !20
  %mul.u4_28fixp = trunc i64 %3 to i32, !taffo.info !10
  %u4_28fixp = load i32*, i32** %x.addr.u4_28fixp, align 8, !taffo.info !10
  store i32 %mul.u4_28fixp, i32* %u4_28fixp, align 4, !taffo.info !13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @function_2_1.2_fixp(i32* %y.u4_28fixp) #0 !taffo.initweight !16 !taffo.funinfo !18 !taffo.sourceFunction !22 {
entry:
  %y.addr.u4_28fixp = alloca i32*, align 8, !taffo.info !10
  %x = alloca float, align 4
  %x2.u4_28fixp = alloca i32, align 4, !taffo.info !10
  store i32* %y.u4_28fixp, i32** %y.addr.u4_28fixp, align 8, !taffo.info !13
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), float* %x)
  %0 = load float, float* %x, align 4
  %1 = fmul float 0x41B0000000000000, %0, !taffo.info !13
  %2 = fptoui float %1 to i32, !taffo.info !13
  store i32 %2, i32* %x2.u4_28fixp, align 4, !taffo.info !13
  call void @function_2_2.1.4_fixp(i32* %x2.u4_28fixp), !taffo.info !13
  %u4_28fixp1 = load i32, i32* %x2.u4_28fixp, align 4, !taffo.info !10
  %u4_28fixp = load i32*, i32** %y.addr.u4_28fixp, align 8, !taffo.info !10
  %u4_28fixp2 = load i32, i32* %u4_28fixp, align 4, !taffo.info !10
  %add.u4_28fixp = add i32 %u4_28fixp2, %u4_28fixp1, !taffo.info !10
  store i32 %add.u4_28fixp, i32* %u4_28fixp, align 4, !taffo.info !13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @function_1_1.3_fixp(i32* %x.u4_28fixp, i32 %y) #0 !taffo.initweight !23 !taffo.funinfo !24 !taffo.sourceFunction !25 {
entry:
  %x.addr.u4_28fixp = alloca i32*, align 8, !taffo.info !10
  %y.addr = alloca i32, align 4
  store i32* %x.u4_28fixp, i32** %x.addr.u4_28fixp, align 8, !taffo.info !13
  store i32 %y, i32* %y.addr, align 4
  %u4_28fixp = load i32*, i32** %x.addr.u4_28fixp, align 8, !taffo.info !10
  %0 = load i32, i32* %y.addr, align 4
  call void @function_1_2.5_fixp(i32* %u4_28fixp, i32 %0), !taffo.info !13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @function_2_2.1.4_fixp(i32* %x.u4_28fixp) #0 !taffo.initweight !16 !taffo.funinfo !18 !taffo.sourceFunction !7 {
entry:
  %x.addr.u4_28fixp = alloca i32*, align 8, !taffo.info !10
  store i32* %x.u4_28fixp, i32** %x.addr.u4_28fixp, align 8, !taffo.info !13
  %u4_28fixp2 = load i32*, i32** %x.addr.u4_28fixp, align 8, !taffo.info !10
  %u4_28fixp4 = load i32, i32* %u4_28fixp2, align 4, !taffo.info !10
  %u4_28fixp1 = load i32*, i32** %x.addr.u4_28fixp, align 8, !taffo.info !10
  %u4_28fixp3 = load i32, i32* %u4_28fixp1, align 4, !taffo.info !10
  %0 = zext i32 %u4_28fixp4 to i64, !taffo.info !10
  %1 = zext i32 %u4_28fixp3 to i64, !taffo.info !10
  %2 = mul i64 %0, %1, !taffo.info !20
  %3 = lshr i64 %2, 28, !taffo.info !20
  %mul.u4_28fixp = trunc i64 %3 to i32, !taffo.info !10
  %u4_28fixp = load i32*, i32** %x.addr.u4_28fixp, align 8, !taffo.info !10
  store i32 %mul.u4_28fixp, i32* %u4_28fixp, align 4, !taffo.info !13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @function_1_2.5_fixp(i32* %x.u4_28fixp, i32 %y) #0 !taffo.initweight !26 !taffo.funinfo !24 !taffo.sourceFunction !27 {
entry:
  %x.addr.u4_28fixp = alloca i32*, align 8, !taffo.info !10
  %y.addr = alloca i32, align 4
  store i32* %x.u4_28fixp, i32** %x.addr.u4_28fixp, align 8, !taffo.info !13
  store i32 %y, i32* %y.addr, align 4
  %u4_28fixp1 = load i32*, i32** %x.addr.u4_28fixp, align 8, !taffo.info !10
  %u4_28fixp2 = load i32, i32* %u4_28fixp1, align 4, !taffo.info !10
  %0 = load i32, i32* %y.addr, align 4
  %1 = zext i32 %u4_28fixp2 to i64, !taffo.info !10
  %2 = sext i32 %0 to i64
  %3 = mul i64 %1, %2, !taffo.info !28
  %mul.u4_28fixp = trunc i64 %3 to i32, !taffo.info !10
  %u4_28fixp = load i32*, i32** %x.addr.u4_28fixp, align 8, !taffo.info !10
  store i32 %mul.u4_28fixp, i32* %u4_28fixp, align 4, !taffo.info !13
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{i32 -1, i32 -1}
!3 = distinct !{null}
!4 = !{i32 0, i1 false, i32 0, i1 false}
!5 = distinct !{null}
!6 = !{i32 -1}
!7 = distinct !{null}
!8 = !{i32 0, i1 false}
!9 = distinct !{null}
!10 = !{!11, !12, i1 false, i2 1}
!11 = !{!"fixp", i32 32, i32 28}
!12 = !{double 0.000000e+00, double 1.000000e+01}
!13 = !{i1 false, !12, i1 false, i2 1}
!14 = !{i32 3}
!15 = !{!11, i1 false, i1 false, i2 1}
!16 = !{i32 1}
!17 = distinct !{null}
!18 = !{i32 1, !10}
!19 = !{void (float*)* @function_2_2}
!20 = !{!21, !12, i1 false, i2 1}
!21 = !{!"fixp", i32 64, i32 56}
!22 = !{void (float*)* @function_2_1}
!23 = !{i32 1, i32 -1}
!24 = !{i32 1, !10, i32 0, i1 false}
!25 = !{void (float*, i32)* @function_1_1}
!26 = !{i32 4, i32 -1}
!27 = !{void (float*, i32)* @function_1_2}
!28 = !{!29, !12, i1 false, i2 1}
!29 = !{!"fixp", i32 64, i32 28}
