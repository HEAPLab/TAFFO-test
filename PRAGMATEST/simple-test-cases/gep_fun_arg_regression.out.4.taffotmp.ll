; ModuleID = './gep_fun_arg_regression.out.3.taffotmp.ll'
source_filename = "./gep_fun_arg_regression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @idct2(i32 %table, double* %output) #0 !taffo.initweight !2 !taffo.equivalentChild !3 !taffo.funinfo !4 {
entry:
  %arrayidx = getelementptr inbounds double, double* %output, i64 0
  store double 1.000000e+00, double* %arrayidx, align 8, !taffo.constinfo !5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !8 !taffo.funinfo !8 {
entry:
  %colorTables = alloca [1 x double**], align 8, !taffo.initweight !9, !taffo.info !10
  %colorTables1 = bitcast [1 x double**]* %colorTables to i8*, !taffo.initweight !13, !taffo.info !14
  %call = call noalias i8* @malloc(i64 8) #2, !taffo.constinfo !15
  %0 = bitcast i8* %call to double**
  %arrayidx = getelementptr inbounds [1 x double**], [1 x double**]* %colorTables, i64 0, i64 0, !taffo.initweight !13, !taffo.info !10
  store double** %0, double*** %arrayidx, align 8, !taffo.initweight !16, !taffo.info !17
  %call2 = call noalias i8* @malloc(i64 8) #2, !taffo.constinfo !15
  %1 = bitcast i8* %call2 to double*
  %arrayidx3 = getelementptr inbounds [1 x double**], [1 x double**]* %colorTables, i64 0, i64 0, !taffo.initweight !13, !taffo.info !10
  %2 = load double**, double*** %arrayidx3, align 8, !taffo.initweight !16, !taffo.info !10
  %arrayidx4 = getelementptr inbounds double*, double** %2, i64 0, !taffo.initweight !18, !taffo.info !10
  store double* %1, double** %arrayidx4, align 8, !taffo.initweight !19, !taffo.info !17
  %arrayidx5 = getelementptr inbounds [1 x double**], [1 x double**]* %colorTables, i64 0, i64 0, !taffo.initweight !13, !taffo.info !10
  %3 = load double**, double*** %arrayidx5, align 8, !taffo.initweight !16, !taffo.info !10
  %arrayidx6 = getelementptr inbounds double*, double** %3, i64 0, !taffo.initweight !18, !taffo.info !10
  %4 = load double*, double** %arrayidx6, align 8, !taffo.initweight !19, !taffo.info !10
  call void @idct2.1(i32 0, double* %4), !taffo.initweight !20, !taffo.constinfo !21, !taffo.info !17, !taffo.originalCall !22
  ret i32 0
}

; Function Attrs: nounwind
declare !taffo.initweight !23 !taffo.funinfo !24 dso_local noalias i8* @malloc(i64) #1

; Function Attrs: noinline nounwind uwtable
define internal void @idct2.1(i32 %table, double* %output) #0 !taffo.initweight !25 !taffo.funinfo !26 !taffo.sourceFunction !22 {
entry:
  %arrayidx = getelementptr inbounds double, double* %output, i64 0, !taffo.initweight !27, !taffo.info !10
  store double 1.000000e+00, double* %arrayidx, align 8, !taffo.initweight !28, !taffo.constinfo !5, !taffo.info !17
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{i32 -1, i32 -1}
!3 = !{void (i32, double*)* @idct2.1}
!4 = !{i32 0, i1 false, i32 0, i1 false}
!5 = !{!6, i1 false}
!6 = !{i1 false, !7, i1 false, i2 0}
!7 = !{double 1.000000e+00, double 1.000000e+00}
!8 = !{}
!9 = !{i32 0}
!10 = !{!11, !12, i1 false, i2 1}
!11 = !{!"fixp", i32 -32, i32 20}
!12 = !{double -1.024000e+03, double 1.024000e+03}
!13 = !{i32 1}
!14 = !{!11, i1 false, i1 false, i2 1}
!15 = !{i1 false, i1 false}
!16 = !{i32 2}
!17 = !{i1 false, !12, i1 false, i2 1}
!18 = !{i32 3}
!19 = !{i32 4}
!20 = !{i32 5}
!21 = !{i1 false, i1 false, i1 false}
!22 = !{void (i32, double*)* @idct2}
!23 = !{i32 -1}
!24 = !{i32 0, i1 false}
!25 = !{i32 -1, i32 5}
!26 = !{i32 0, i1 false, i32 1, !10}
!27 = !{i32 8}
!28 = !{i32 9}
