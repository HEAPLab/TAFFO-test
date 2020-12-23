; ModuleID = './clang_push_attr.out.1.taffotmp.ll'
source_filename = "./clang_push_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"range -3000 3000\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [20 x i8] c"./clang_push_attr.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [15 x i8] c"range -255 255\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !2 !taffo.funinfo !2 {
entry:
  %retval = alloca i32, align 4
  %out = alloca float, align 4
  %a = alloca float, align 4, !taffo.initweight !3, !taffo.info !4
  %b = alloca float, align 4, !taffo.initweight !3, !taffo.info !4
  %c = alloca float, align 4, !taffo.initweight !3, !taffo.info !6
  %d = alloca float, align 4, !taffo.initweight !3, !taffo.info !6
  store i32 0, i32* %retval, align 4
  %a1 = bitcast float* %a to i8*, !taffo.initweight !8, !taffo.info !4
  store float 1.000000e+01, float* %a, align 4, !taffo.initweight !8, !taffo.info !4
  %b2 = bitcast float* %b to i8*, !taffo.initweight !8, !taffo.info !4
  %c3 = bitcast float* %c to i8*, !taffo.initweight !8, !taffo.info !6
  store float 0x4000D1B720000000, float* %c, align 4, !taffo.initweight !8, !taffo.info !6
  %d4 = bitcast float* %d to i8*, !taffo.initweight !8, !taffo.info !6
  %0 = load float, float* %a, align 4, !taffo.initweight !8, !taffo.info !4
  %conv = fpext float %0 to double, !taffo.initweight !9, !taffo.info !4
  %mul = fmul double %conv, 2.102400e-01, !taffo.initweight !10, !taffo.info !4
  %conv5 = fptrunc double %mul to float, !taffo.initweight !11, !taffo.info !4
  store float %conv5, float* %b, align 4, !taffo.initweight !8, !taffo.info !4
  %1 = load float, float* %b, align 4, !taffo.initweight !8, !taffo.info !4
  %div = fdiv float %1, 2.000000e+00, !taffo.initweight !9, !taffo.info !4
  store float %div, float* %b, align 4, !taffo.initweight !8, !taffo.info !4
  %2 = load float, float* %c, align 4, !taffo.initweight !8, !taffo.info !6
  %div6 = fdiv float %2, 2.000000e+00, !taffo.initweight !9, !taffo.info !6
  store float %div6, float* %c, align 4, !taffo.initweight !8, !taffo.info !6
  %3 = load float, float* %b, align 4, !taffo.initweight !8, !taffo.info !4
  %4 = load float, float* %c, align 4, !taffo.initweight !8, !taffo.info !6
  %add = fadd float %3, %4, !taffo.initweight !9, !taffo.info !4
  store float %add, float* %d, align 4, !taffo.initweight !8, !taffo.info !6
  %5 = load float, float* %d, align 4, !taffo.initweight !8, !taffo.info !6
  store float %5, float* %out, align 4, !taffo.initweight !9, !taffo.info !6
  %6 = load float, float* %out, align 4
  %conv7 = fpext float %6 to double
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv7)
  ret i32 0
}

; Function Attrs: nounwind willreturn
declare !taffo.initweight !12 !taffo.funinfo !13 void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

declare !taffo.initweight !14 !taffo.funinfo !15 dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{}
!3 = !{i32 0}
!4 = !{i1 false, !5, i1 false, i2 1}
!5 = !{double -3.000000e+03, double 3.000000e+03}
!6 = !{i1 false, !7, i1 false, i2 1}
!7 = !{double -2.550000e+02, double 2.550000e+02}
!8 = !{i32 1}
!9 = !{i32 2}
!10 = !{i32 3}
!11 = !{i32 4}
!12 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!13 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!14 = !{i32 -1}
!15 = !{i32 0, i1 false}
