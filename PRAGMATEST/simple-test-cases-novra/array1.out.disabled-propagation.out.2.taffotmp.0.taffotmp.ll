; ModuleID = './disabled-propagation.out.2.taffotmp.ll'
source_filename = "./disabled-propagation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"scalar(disabled)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [25 x i8] c"./disabled-propagation.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [20 x i8] c"scalar(range(-1,1))\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !taffo.initweight !2 !taffo.funinfo !3 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %a = alloca i32, align 4, !taffo.initweight !4, !taffo.info !5
  %b = alloca float, align 4, !taffo.initweight !4, !taffo.info !6
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %a1 = bitcast i32* %a to i8*, !taffo.initweight !8, !taffo.info !5
  %b2 = bitcast float* %b to i8*, !taffo.initweight !8, !taffo.info !6
  store i32 1, i32* %a, align 4, !taffo.initweight !8, !taffo.info !5
  store float 2.000000e+00, float* %b, align 4, !taffo.initweight !8, !taffo.info !6
  %0 = load i32, i32* %a, align 4, !taffo.initweight !8, !taffo.info !5
  %conv = sitofp i32 %0 to double, !taffo.initweight !9, !taffo.info !5
  %1 = load float, float* %b, align 4, !taffo.initweight !8, !taffo.info !6
  %conv3 = fpext float %1 to double, !taffo.initweight !9, !taffo.info !6
  %mul = fmul double %conv3, 2.000000e+00, !taffo.initweight !10, !taffo.info !6
  %div = fdiv double %conv, %mul, !taffo.initweight !10, !taffo.info !11
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %div), !taffo.initweight !12, !taffo.info !11
  %2 = load float, float* %b, align 4, !taffo.initweight !8, !taffo.info !6
  %conv4 = fpext float %2 to double, !taffo.initweight !9, !taffo.info !6
  %mul5 = fmul double %conv4, 2.000000e+00, !taffo.initweight !10, !taffo.info !6
  %3 = load i32, i32* %a, align 4, !taffo.initweight !8, !taffo.info !5
  %conv6 = sitofp i32 %3 to double, !taffo.initweight !9, !taffo.info !5
  %div7 = fdiv double %mul5, %conv6, !taffo.initweight !10, !taffo.info !11
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %div7), !taffo.initweight !12, !taffo.info !11
  ret i32 0
}

; Function Attrs: nounwind willreturn
declare !taffo.initweight !13 !taffo.funinfo !14 void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

declare !taffo.initweight !15 !taffo.funinfo !16 dso_local i32 @printf(i8*, ...) #2

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
!5 = !{i1 false, i1 false, i1 false, i2 0}
!6 = !{i1 false, !7, i1 false, i2 1}
!7 = !{double -1.000000e+00, double 1.000000e+00}
!8 = !{i32 1}
!9 = !{i32 2}
!10 = !{i32 3}
!11 = !{i1 false, i1 false, i1 false, i2 1}
!12 = !{i32 4}
!13 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!14 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!15 = !{i32 -1}
!16 = !{i32 0, i1 false}
