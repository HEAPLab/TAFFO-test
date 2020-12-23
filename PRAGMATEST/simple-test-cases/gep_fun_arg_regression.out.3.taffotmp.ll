; ModuleID = './gep_fun_arg_regression.out.2.taffotmp.ll'
source_filename = "./gep_fun_arg_regression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"scalar(range( -1024, 1024))\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [27 x i8] c"./gep_fun_arg_regression.c\00", section "llvm.metadata"

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
  %colorTables1 = bitcast [1 x double**]* %colorTables to i8*, !taffo.initweight !12, !taffo.info !10
  %call = call noalias i8* @malloc(i64 8) #3, !taffo.constinfo !13
  %0 = bitcast i8* %call to double**
  %arrayidx = getelementptr inbounds [1 x double**], [1 x double**]* %colorTables, i64 0, i64 0, !taffo.initweight !12, !taffo.info !10
  store double** %0, double*** %arrayidx, align 8, !taffo.initweight !14, !taffo.info !10
  %call2 = call noalias i8* @malloc(i64 8) #3, !taffo.constinfo !13
  %1 = bitcast i8* %call2 to double*
  %arrayidx3 = getelementptr inbounds [1 x double**], [1 x double**]* %colorTables, i64 0, i64 0, !taffo.initweight !12, !taffo.info !10
  %2 = load double**, double*** %arrayidx3, align 8, !taffo.initweight !14, !taffo.info !10
  %arrayidx4 = getelementptr inbounds double*, double** %2, i64 0, !taffo.initweight !15, !taffo.info !10
  store double* %1, double** %arrayidx4, align 8, !taffo.initweight !16, !taffo.info !10
  %arrayidx5 = getelementptr inbounds [1 x double**], [1 x double**]* %colorTables, i64 0, i64 0, !taffo.initweight !12, !taffo.info !10
  %3 = load double**, double*** %arrayidx5, align 8, !taffo.initweight !14, !taffo.info !10
  %arrayidx6 = getelementptr inbounds double*, double** %3, i64 0, !taffo.initweight !15, !taffo.info !10
  %4 = load double*, double** %arrayidx6, align 8, !taffo.initweight !16, !taffo.info !10
  call void @idct2.1(i32 0, double* %4), !taffo.initweight !17, !taffo.info !10, !taffo.originalCall !18, !taffo.constinfo !19
  ret i32 0
}

; Function Attrs: nounwind willreturn
declare !taffo.initweight !20 !taffo.funinfo !21 void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind
declare !taffo.initweight !22 !taffo.funinfo !23 dso_local noalias i8* @malloc(i64) #2

; Function Attrs: noinline nounwind uwtable
define internal void @idct2.1(i32 %table, double* %output) #0 !taffo.initweight !24 !taffo.funinfo !25 !taffo.sourceFunction !18 {
entry:
  %arrayidx = getelementptr inbounds double, double* %output, i64 0, !taffo.initweight !26, !taffo.info !10
  store double 1.000000e+00, double* %arrayidx, align 8, !taffo.initweight !27, !taffo.info !10, !taffo.constinfo !5
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

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
!10 = !{i1 false, !11, i1 false, i2 1}
!11 = !{double -1.024000e+03, double 1.024000e+03}
!12 = !{i32 1}
!13 = !{i1 false, i1 false}
!14 = !{i32 2}
!15 = !{i32 3}
!16 = !{i32 4}
!17 = !{i32 5}
!18 = !{void (i32, double*)* @idct2}
!19 = !{i1 false, i1 false, i1 false}
!20 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!21 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!22 = !{i32 -1}
!23 = !{i32 0, i1 false}
!24 = !{i32 -1, i32 5}
!25 = !{i32 0, i1 false, i32 1, !10}
!26 = !{i32 8}
!27 = !{i32 9}
