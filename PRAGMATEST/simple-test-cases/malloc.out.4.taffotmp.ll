; ModuleID = './malloc.out.3.taffotmp.ll'
source_filename = "./malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.2 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%a\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !taffo.initweight !2 !taffo.funinfo !3 {
entry:
  %tmp = alloca float, align 4
  %call = call noalias i8* @malloc(i64 40) #3, !taffo.constinfo !4
  %0 = bitcast i8* %call to float*
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !5
  %cmp = icmp slt i32 %i.0, 10, !taffo.info !7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), float* %tmp), !taffo.constinfo !9
  %1 = load float, float* %tmp, align 4
  %idxprom = sext i32 %i.0 to i64, !taffo.info !10
  %arrayidx = getelementptr inbounds float, float* %0, i64 %idxprom, !taffo.initweight !12, !taffo.info !13
  store float %1, float* %arrayidx, align 4, !taffo.initweight !16, !taffo.info !17
  %idxprom3 = sext i32 %i.0 to i64, !taffo.info !10
  %arrayidx4 = getelementptr inbounds float, float* %0, i64 %idxprom3, !taffo.initweight !12, !taffo.info !13
  %2 = load float, float* %arrayidx4, align 4, !taffo.initweight !16, !taffo.info !13
  %conv = fpext float %2 to double, !taffo.initweight !18, !taffo.info !13
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %conv), !taffo.initweight !19, !taffo.constinfo !9, !taffo.info !20
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !4, !taffo.info !21
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nounwind
declare !taffo.initweight !23 !taffo.funinfo !24 dso_local noalias i8* @malloc(i64) #1

declare !taffo.initweight !23 !taffo.funinfo !24 dso_local i32 @__isoc99_scanf(i8*, ...) #2

declare !taffo.initweight !23 !taffo.funinfo !24 dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{i32 -1, i32 -1}
!3 = !{i32 0, i1 false, i32 0, i1 false}
!4 = !{i1 false, i1 false}
!5 = !{i1 false, !6, i1 false, i2 0}
!6 = !{double 0.000000e+00, double 1.100000e+01}
!7 = !{i1 false, !8, i1 false, i2 0}
!8 = !{double 0.000000e+00, double 1.000000e+00}
!9 = !{i1 false, i1 false, i1 false}
!10 = !{i1 false, !11, i1 false, i2 0}
!11 = !{double 0.000000e+00, double 1.000000e+01}
!12 = !{i32 2}
!13 = !{!14, !15, i1 false, i2 1}
!14 = !{!"fixp", i32 -32, i32 30}
!15 = !{double -1.000000e+00, double 1.000000e+00}
!16 = !{i32 3}
!17 = !{i1 false, !15, i1 false, i2 1}
!18 = !{i32 4}
!19 = !{i32 5}
!20 = !{!14, i1 false, i1 false, i2 1}
!21 = !{i1 false, !22, i1 false, i2 0}
!22 = !{double 1.000000e+00, double 1.100000e+01}
!23 = !{i32 -1}
!24 = !{i32 0, i1 false}
