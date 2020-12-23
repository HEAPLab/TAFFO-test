; ModuleID = './struct_integration_1.out.1.taffotmp.ll'
source_filename = "./struct_integration_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test = type { float, i32, float }

@.str = private unnamed_addr constant [65 x i8] c"struct[scalar(range(-3000, +3000)), void, scalar(range(-3, +3))]\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [25 x i8] c"./struct_integration_1.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [10 x i8] c"%lf%lf%lf\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%a\0A%d\0A%a\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !taffo.initweight !2 !taffo.funinfo !3 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %z = alloca %struct.test, align 4, !taffo.initweight !4, !taffo.structinfo !5
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %z1 = bitcast %struct.test* %z to i8*, !taffo.initweight !10, !taffo.info !11
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), double* %a, double* %b, double* %c)
  %0 = load double, double* %a, align 8
  %conv = fptrunc double %0 to float
  %a2 = getelementptr inbounds %struct.test, %struct.test* %z, i32 0, i32 0, !taffo.initweight !10, !taffo.info !6
  store float %conv, float* %a2, align 4, !taffo.initweight !12, !taffo.info !6
  %1 = load double, double* %b, align 8
  %conv3 = fptosi double %1 to i32
  %b4 = getelementptr inbounds %struct.test, %struct.test* %z, i32 0, i32 1, !taffo.initweight !10, !taffo.info !11
  store i32 %conv3, i32* %b4, align 4, !taffo.initweight !12, !taffo.info !11
  %2 = load double, double* %c, align 8
  %conv5 = fptrunc double %2 to float
  %c6 = getelementptr inbounds %struct.test, %struct.test* %z, i32 0, i32 2, !taffo.initweight !10, !taffo.info !8
  store float %conv5, float* %c6, align 4, !taffo.initweight !12, !taffo.info !8
  %a7 = getelementptr inbounds %struct.test, %struct.test* %z, i32 0, i32 0, !taffo.initweight !10, !taffo.info !6
  %3 = load float, float* %a7, align 4, !taffo.initweight !12, !taffo.info !6
  %conv8 = fpext float %3 to double, !taffo.initweight !13, !taffo.info !6
  %b9 = getelementptr inbounds %struct.test, %struct.test* %z, i32 0, i32 1, !taffo.initweight !10, !taffo.info !11
  %4 = load i32, i32* %b9, align 4, !taffo.initweight !12, !taffo.info !11
  %c10 = getelementptr inbounds %struct.test, %struct.test* %z, i32 0, i32 2, !taffo.initweight !10, !taffo.info !8
  %5 = load float, float* %c10, align 4, !taffo.initweight !12, !taffo.info !8
  %conv11 = fpext float %5 to double, !taffo.initweight !13, !taffo.info !8
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), double %conv8, i32 %4, double %conv11), !taffo.initweight !13, !taffo.info !11
  ret i32 0
}

; Function Attrs: nounwind willreturn
declare !taffo.initweight !14 !taffo.funinfo !15 void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

declare !taffo.initweight !16 !taffo.funinfo !17 dso_local i32 @__isoc99_scanf(i8*, ...) #2

declare !taffo.initweight !16 !taffo.funinfo !17 dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{i32 -1, i32 -1}
!3 = !{i32 0, i1 false, i32 0, i1 false}
!4 = !{i32 0}
!5 = !{!6, i1 false, !8}
!6 = !{i1 false, !7, i1 false, i2 1}
!7 = !{double -3.000000e+03, double 3.000000e+03}
!8 = !{i1 false, !9, i1 false, i2 1}
!9 = !{double -3.000000e+00, double 3.000000e+00}
!10 = !{i32 1}
!11 = !{i1 false, i1 false, i1 false, i2 1}
!12 = !{i32 2}
!13 = !{i32 3}
!14 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!15 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!16 = !{i32 -1}
!17 = !{i32 0, i1 false}
