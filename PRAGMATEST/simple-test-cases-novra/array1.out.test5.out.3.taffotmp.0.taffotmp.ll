; ModuleID = './test5.out.3.taffotmp.ll'
source_filename = "./test5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"range -32767 32767\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [10 x i8] c"./test5.c\00", section "llvm.metadata"
@llvm.global.annotations = appending global [1 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (float (float, double)* @fpextfptrunc to i8*), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 5 }], section "llvm.metadata"

; Function Attrs: noinline nounwind uwtable
define dso_local float @fpextfptrunc(float %a, double %b) #0 !taffo.initweight !2 !taffo.funinfo !3 {
entry:
  %a.addr = alloca float, align 4, !taffo.initweight !4, !taffo.info !5
  %b.addr = alloca double, align 8, !taffo.initweight !4, !taffo.info !5
  %c = alloca double, align 8
  store float %a, float* %a.addr, align 4, !taffo.initweight !7, !taffo.info !5
  %a.addr1 = bitcast float* %a.addr to i8*, !taffo.initweight !7, !taffo.info !5
  store double %b, double* %b.addr, align 8, !taffo.initweight !7, !taffo.info !5
  %b.addr2 = bitcast double* %b.addr to i8*, !taffo.initweight !7, !taffo.info !5
  store double 1.230000e+02, double* %c, align 8
  %0 = load float, float* %a.addr, align 4, !taffo.initweight !7, !taffo.info !5
  %conv = fpext float %0 to double, !taffo.initweight !8, !taffo.info !5
  %1 = load double, double* %c, align 8
  %add = fadd double %1, %conv, !taffo.initweight !9, !taffo.info !5
  store double %add, double* %c, align 8, !taffo.initweight !10, !taffo.info !5
  %2 = load double, double* %c, align 8
  %conv3 = fptrunc double %2 to float
  %conv4 = fpext float %conv3 to double
  %3 = load double, double* %b.addr, align 8, !taffo.initweight !7, !taffo.info !5
  %add5 = fadd double %conv4, %3, !taffo.initweight !8, !taffo.info !5
  %conv6 = fptrunc double %add5 to float, !taffo.initweight !9, !taffo.info !5
  ret float %conv6, !taffo.initweight !10, !taffo.info !5
}

; Function Attrs: nounwind willreturn
declare !taffo.initweight !11 !taffo.funinfo !12 void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{i32 -1, i32 -1}
!3 = !{i32 0, i1 false, i32 0, i1 false}
!4 = !{i32 0}
!5 = !{i1 false, !6, i1 false, i2 1}
!6 = !{double -3.276700e+04, double 3.276700e+04}
!7 = !{i32 1}
!8 = !{i32 2}
!9 = !{i32 3}
!10 = !{i32 4}
!11 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!12 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
