; ModuleID = './function-double-indirection.out.4.taffotmp.ll'
source_filename = "./function-double-indirection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.3 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @function_1_2(float* %x, i32 %y) #0 !taffo.initweight !2 !taffo.equivalentChild !3 !taffo.funinfo !4 {
entry:
  %0 = load float, float* %x, align 4, !taffo.initweight !5, !taffo.info !6
  %conv = sitofp i32 %y to float
  %mul = fmul float %0, %conv, !taffo.initweight !7, !taffo.info !6
  store float %mul, float* %x, align 4, !taffo.info !6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @function_1_1(float* %x, i32 %y) #0 !taffo.initweight !2 !taffo.equivalentChild !8 !taffo.funinfo !4 {
entry:
  call void @function_1_2.4_fixp(float* %x, i32 %y), !taffo.info !6, !taffo.constinfo !9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @function_2_2(float* %x) #0 !taffo.initweight !10 !taffo.equivalentChild !11 !taffo.funinfo !12 {
entry:
  %0 = load float, float* %x, align 4, !taffo.initweight !5, !taffo.info !6
  %1 = load float, float* %x, align 4, !taffo.initweight !5, !taffo.info !6
  %mul = fmul float %0, %1, !taffo.initweight !7, !taffo.info !6
  store float %mul, float* %x, align 4, !taffo.info !6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @function_2_1(float* %y) #0 !taffo.initweight !10 !taffo.equivalentChild !13 !taffo.funinfo !12 {
entry:
  %x = alloca float, align 4, !taffo.initweight !14, !taffo.info !15
  %x2 = alloca float, align 4, !taffo.initweight !14, !taffo.info !6
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), float* %x), !taffo.initweight !17, !taffo.info !15, !taffo.constinfo !9
  %0 = load float, float* %x, align 4, !taffo.initweight !17, !taffo.info !15
  store float %0, float* %x2, align 4, !taffo.info !6
  call void @function_2_2.1_fixp(float* %x2), !taffo.info !6, !taffo.constinfo !18
  %1 = load float, float* %x2, align 4, !taffo.initweight !17, !taffo.info !6
  %2 = load float, float* %y, align 4, !taffo.initweight !5, !taffo.info !6
  %add = fadd float %2, %1, !taffo.initweight !5, !taffo.info !6
  store float %add, float* %y, align 4, !taffo.info !6
  ret void
}

declare !taffo.initweight !10 !taffo.funinfo !12 dso_local i32 @__isoc99_scanf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !taffo.initweight !2 !taffo.funinfo !4 !taffo.start !19 {
entry:
  %x.u7_25fixp = alloca i32, align 4, !taffo.info !20, !taffo.target !23
  store i32 167772160, i32* %x.u7_25fixp, align 4, !taffo.info !6, !taffo.constinfo !24, !taffo.target !23
  call void @function_1_1.3_fixp(i32* %x.u7_25fixp, i32 2), !taffo.info !6, !taffo.constinfo !9, !taffo.target !23
  %u7_25fixp1 = load i32, i32* %x.u7_25fixp, align 4, !taffo.info !27, !taffo.target !23
  %conv.u4_28fixp = shl i32 %u7_25fixp1, 3, !taffo.info !27, !taffo.target !23
  %0 = uitofp i32 %conv.u4_28fixp to double, !taffo.info !27, !taffo.target !23
  %1 = fdiv double %0, 0x41B0000000000000, !taffo.info !27, !taffo.target !23
  %call.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), double %1), !taffo.initweight !7, !taffo.info !30, !taffo.constinfo !9, !taffo.target !23
  call void @function_2_1.2_fixp(i32* %x.u7_25fixp), !taffo.info !6, !taffo.constinfo !18, !taffo.target !23
  %u7_25fixp = load i32, i32* %x.u7_25fixp, align 4, !taffo.info !20, !taffo.target !23
  %2 = uitofp i32 %u7_25fixp to double, !taffo.info !20, !taffo.target !23
  %3 = fdiv double %2, 0x4180000000000000, !taffo.info !20, !taffo.target !23
  %call3.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), double %3), !taffo.initweight !7, !taffo.info !31, !taffo.constinfo !9, !taffo.target !23
  ret i32 0
}

declare !taffo.initweight !10 !taffo.funinfo !12 dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @function_1_2.4_fixp(float* %x, i32 %y) #0 !taffo.initweight !32 !taffo.funinfo !33 !taffo.sourceFunction !34 {
entry:
  %0 = load float, float* %x, align 4, !taffo.initweight !5, !taffo.info !6
  %conv = sitofp i32 %y to float
  %mul = fmul float %0, %conv, !taffo.initweight !7, !taffo.info !6
  store float %mul, float* %x, align 4, !taffo.info !6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @function_2_2.1_fixp(float* %x) #0 !taffo.initweight !17 !taffo.equivalentChild !35 !taffo.funinfo !36 !taffo.sourceFunction !37 {
entry:
  %0 = load float, float* %x, align 4, !taffo.initweight !5, !taffo.info !6
  %1 = load float, float* %x, align 4, !taffo.initweight !5, !taffo.info !6
  %mul = fmul float %0, %1, !taffo.initweight !7, !taffo.info !6
  store float %mul, float* %x, align 4, !taffo.info !6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @function_2_1.2_fixp(i32* %y.u7_25fixp) #0 !taffo.initweight !17 !taffo.funinfo !38 !taffo.sourceFunction !39 {
entry:
  %x = alloca float, align 4, !taffo.initweight !14, !taffo.info !15
  %x2.u7_25fixp = alloca i32, align 4, !taffo.info !40
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), float* %x), !taffo.initweight !17, !taffo.info !15, !taffo.constinfo !9
  %0 = load float, float* %x, align 4, !taffo.initweight !17, !taffo.info !15
  %1 = fmul float 0x4180000000000000, %0, !taffo.info !15
  %2 = fptoui float %1 to i32, !taffo.info !15
  store i32 %2, i32* %x2.u7_25fixp, align 4, !taffo.info !6
  call void @function_2_2.1.5_fixp(i32* %x2.u7_25fixp), !taffo.info !6, !taffo.constinfo !18
  %u7_25fixp1 = load i32, i32* %x2.u7_25fixp, align 4, !taffo.info !40
  %u7_25fixp = load i32, i32* %y.u7_25fixp, align 4, !taffo.info !27
  %add.u7_25fixp = add i32 %u7_25fixp, %u7_25fixp1, !taffo.info !20
  store i32 %add.u7_25fixp, i32* %y.u7_25fixp, align 4, !taffo.info !6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @function_1_1.3_fixp(i32* %x.u7_25fixp, i32 %y) #0 !taffo.initweight !42 !taffo.funinfo !43 !taffo.sourceFunction !46 {
entry:
  call void @function_1_2.6_fixp(i32* %x.u7_25fixp, i32 %y), !taffo.info !6, !taffo.constinfo !9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @function_2_2.1.5_fixp(i32* %x.u7_25fixp) #0 !taffo.initweight !17 !taffo.funinfo !47 !taffo.sourceFunction !11 {
entry:
  %u7_25fixp = load i32, i32* %x.u7_25fixp, align 4, !taffo.info !48
  %u7_25fixp1 = load i32, i32* %x.u7_25fixp, align 4, !taffo.info !48
  %0 = zext i32 %u7_25fixp to i64, !taffo.info !48
  %1 = zext i32 %u7_25fixp1 to i64, !taffo.info !48
  %2 = mul i64 %0, %1, !taffo.info !49
  %3 = lshr i64 %2, 25, !taffo.info !49
  %mul.u7_25fixp = trunc i64 %3 to i32, !taffo.info !40
  store i32 %mul.u7_25fixp, i32* %x.u7_25fixp, align 4, !taffo.info !6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @function_1_2.6_fixp(i32* %x.u7_25fixp, i32 %y) #0 !taffo.initweight !32 !taffo.funinfo !43 !taffo.sourceFunction !34 {
entry:
  %u7_25fixp = load i32, i32* %x.u7_25fixp, align 4, !taffo.info !51
  %0 = zext i32 %u7_25fixp to i64, !taffo.info !51
  %1 = sext i32 %y to i64, !taffo.info !44
  %2 = mul i64 %0, %1, !taffo.info !52
  %3 = shl i64 %2, 3, !taffo.info !52
  %mul.u4_28fixp = trunc i64 %3 to i32, !taffo.info !55
  %4 = lshr i32 %mul.u4_28fixp, 3, !taffo.info !55
  store i32 %4, i32* %x.u7_25fixp, align 4, !taffo.info !6
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{i32 -1, i32 -1}
!3 = distinct !{null, null}
!4 = !{i32 0, i1 false, i32 0, i1 false}
!5 = !{i32 2}
!6 = !{i1 false, i1 false, i1 false, i2 1}
!7 = !{i32 3}
!8 = distinct !{null}
!9 = !{i1 false, i1 false, i1 false}
!10 = !{i32 -1}
!11 = distinct !{null}
!12 = !{i32 0, i1 false}
!13 = distinct !{null}
!14 = !{i32 0}
!15 = !{i1 false, !16, i1 false, i2 0}
!16 = !{double 0.000000e+00, double 1.000000e+01}
!17 = !{i32 1}
!18 = !{i1 false, i1 false}
!19 = !{i1 true}
!20 = !{!21, !22, i1 false, i2 1}
!21 = !{!"fixp", i32 32, i32 25}
!22 = !{double 5.000000e+00, double 1.100000e+02}
!23 = !{!"x"}
!24 = !{!25, i1 false}
!25 = !{i1 false, !26, i1 false, i2 0}
!26 = !{double 5.000000e+00, double 5.000000e+00}
!27 = !{!28, !29, i1 false, i2 1}
!28 = !{!"fixp", i32 32, i32 28}
!29 = !{double 5.000000e+00, double 1.000000e+01}
!30 = !{!28, i1 false, i1 false, i2 1}
!31 = !{!21, i1 false, i1 false, i2 1}
!32 = !{i32 2, i32 -1}
!33 = !{i32 1, !6, i32 0, i1 false}
!34 = !{void (float*, i32)* @function_1_2}
!35 = distinct !{null}
!36 = !{i32 1, !6}
!37 = !{void (float*)* @function_2_2}
!38 = !{i32 1, !20}
!39 = !{void (float*)* @function_2_1}
!40 = !{!21, !41, i1 false, i2 1}
!41 = !{double 0.000000e+00, double 1.000000e+02}
!42 = !{i32 1, i32 -1}
!43 = !{i32 1, !20, i32 1, !44}
!44 = !{i1 false, !45, i1 false, i2 0}
!45 = !{double 2.000000e+00, double 2.000000e+00}
!46 = !{void (float*, i32)* @function_1_1}
!47 = !{i32 1, !40}
!48 = !{!28, !16, i1 false, i2 1}
!49 = !{!50, !41, i1 false, i2 1}
!50 = !{!"fixp", i32 64, i32 50}
!51 = !{!28, !26, i1 false, i2 1}
!52 = !{!53, !54, i1 false, i2 1}
!53 = !{!"fixp", i32 64, i32 25}
!54 = !{double 1.000000e+01, double 1.000000e+01}
!55 = !{!28, !54, i1 false, i2 1}
