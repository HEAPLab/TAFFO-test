; ModuleID = './array1.out.2.taffotmp.ll'
source_filename = "./array1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [11 x i8] c"./array1.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [36 x i8] c"scalar(disabled range(-3000, 3000))\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"scalar(range(-3000, 3000) final)\00", section "llvm.metadata"
@.str.5 = private unnamed_addr constant [33 x i8] c"add: %f\0Asub: %f\0Adiv: %f\0Amul: %f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !taffo.initweight !2 !taffo.funinfo !3 {
entry:
  %numbers = alloca [30 x float], align 16, !taffo.initweight !4, !taffo.info !5
  %tmp = alloca float, align 4, !taffo.initweight !4, !taffo.info !7
  %numbers1 = bitcast [30 x float]* %numbers to i8*, !taffo.initweight !8, !taffo.info !5
  %tmp2 = bitcast float* %tmp to i8*, !taffo.initweight !8, !taffo.info !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc4, %for.inc ], !taffo.info !9
  %n.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !9
  %cmp = icmp slt i32 %i.0, 30, !taffo.info !11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), float* %tmp), !taffo.initweight !8, !taffo.info !7, !taffo.constinfo !13
  %cmp3 = icmp slt i32 %call, 1, !taffo.initweight !14, !taffo.info !9
  br i1 %cmp3, label %if.then, label %if.end, !taffo.initweight !15, !taffo.info !7

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %0 = load float, float* %tmp, align 4, !taffo.initweight !8, !taffo.info !7
  %inc = add nsw i32 %n.0, 1, !taffo.info !11, !taffo.constinfo !16
  %idxprom = sext i32 %n.0 to i64, !taffo.info !17
  %arrayidx = getelementptr inbounds [30 x float], [30 x float]* %numbers, i64 0, i64 %idxprom, !taffo.initweight !8, !taffo.info !5
  store float %0, float* %arrayidx, align 4, !taffo.initweight !14, !taffo.info !19
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc4 = add nsw i32 %i.0, 1, !taffo.info !11, !taffo.constinfo !16
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc31, %for.end
  %sub.0 = phi float [ 0.000000e+00, %for.end ], [ %sub18, %for.inc31 ], !taffo.info !7
  %add.0 = phi float [ 0.000000e+00, %for.end ], [ %add15, %for.inc31 ], !taffo.info !7
  %div.0 = phi float [ 1.000000e+00, %for.end ], [ %div.1, %for.inc31 ], !taffo.info !7
  %mul.0 = phi float [ 1.000000e+00, %for.end ], [ %mul30, %for.inc31 ], !taffo.info !7
  %i9.0 = phi i32 [ 0, %for.end ], [ %inc32, %for.inc31 ], !taffo.info !9
  %cmp11 = icmp slt i32 %i9.0, %n.0, !taffo.info !9
  br i1 %cmp11, label %for.body12, label %for.end33

for.body12:                                       ; preds = %for.cond10
  %idxprom13 = sext i32 %i9.0 to i64, !taffo.info !17
  %arrayidx14 = getelementptr inbounds [30 x float], [30 x float]* %numbers, i64 0, i64 %idxprom13, !taffo.initweight !8, !taffo.info !5
  %1 = load float, float* %arrayidx14, align 4, !taffo.initweight !14, !taffo.info !5
  %add15 = fadd float %add.0, %1, !taffo.initweight !14, !taffo.info !5
  %idxprom16 = sext i32 %i9.0 to i64, !taffo.info !17
  %arrayidx17 = getelementptr inbounds [30 x float], [30 x float]* %numbers, i64 0, i64 %idxprom16, !taffo.initweight !8, !taffo.info !5
  %2 = load float, float* %arrayidx17, align 4, !taffo.initweight !14, !taffo.info !5
  %sub18 = fsub float %sub.0, %2, !taffo.initweight !14, !taffo.info !5
  %idxprom19 = sext i32 %i9.0 to i64, !taffo.info !17
  %arrayidx20 = getelementptr inbounds [30 x float], [30 x float]* %numbers, i64 0, i64 %idxprom19, !taffo.initweight !8, !taffo.info !5
  %3 = load float, float* %arrayidx20, align 4, !taffo.initweight !14, !taffo.info !5
  %conv = fpext float %3 to double, !taffo.initweight !15, !taffo.info !5
  %cmp21 = fcmp une double %conv, 0.000000e+00, !taffo.initweight !20, !taffo.info !21
  br i1 %cmp21, label %if.then23, label %if.end27, !taffo.initweight !22, !taffo.info !19

if.then23:                                        ; preds = %for.body12
  %idxprom24 = sext i32 %i9.0 to i64, !taffo.info !17
  %arrayidx25 = getelementptr inbounds [30 x float], [30 x float]* %numbers, i64 0, i64 %idxprom24, !taffo.initweight !8, !taffo.info !5
  %4 = load float, float* %arrayidx25, align 4, !taffo.initweight !14, !taffo.info !5
  %div26 = fdiv float %div.0, %4, !taffo.initweight !14, !taffo.info !23
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %for.body12
  %div.1 = phi float [ %div26, %if.then23 ], [ %div.0, %for.body12 ], !taffo.info !7
  %idxprom28 = sext i32 %i9.0 to i64, !taffo.info !17
  %arrayidx29 = getelementptr inbounds [30 x float], [30 x float]* %numbers, i64 0, i64 %idxprom28, !taffo.initweight !8, !taffo.info !5
  %5 = load float, float* %arrayidx29, align 4, !taffo.initweight !14, !taffo.info !5
  %mul30 = fmul float %mul.0, %5, !taffo.initweight !14, !taffo.info !5
  br label %for.inc31

for.inc31:                                        ; preds = %if.end27
  %inc32 = add nsw i32 %i9.0, 1, !taffo.info !11, !taffo.constinfo !16
  br label %for.cond10

for.end33:                                        ; preds = %for.cond10
  %conv34 = fpext float %add.0 to double, !taffo.initweight !14, !taffo.info !5
  %conv35 = fpext float %sub.0 to double, !taffo.initweight !14, !taffo.info !5
  %conv36 = fpext float %div.0 to double, !taffo.initweight !14, !taffo.info !23
  %conv37 = fpext float %mul.0 to double, !taffo.initweight !14, !taffo.info !5
  %call38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), double %conv34, double %conv35, double %conv36, double %conv37), !taffo.initweight !15, !taffo.info !19, !taffo.constinfo !24
  ret i32 0
}

; Function Attrs: nounwind willreturn
declare !taffo.initweight !25 !taffo.funinfo !26 void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

declare !taffo.initweight !27 !taffo.funinfo !28 dso_local i32 @__isoc99_scanf(i8*, ...) #2

declare !taffo.initweight !27 !taffo.funinfo !28 dso_local i32 @printf(i8*, ...) #2

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
!5 = !{i1 false, !6, i1 false, i2 1}
!6 = !{double -3.000000e+03, double 3.000000e+03}
!7 = !{i1 false, !6, i1 false, i2 0}
!8 = !{i32 1}
!9 = !{i1 false, !10, i1 false, i2 0}
!10 = !{double 0.000000e+00, double 1.000000e+00}
!11 = !{i1 false, !12, i1 false, i2 0}
!12 = !{double 1.000000e+00, double 1.000000e+00}
!13 = !{i1 false, i1 false, i1 false}
!14 = !{i32 2}
!15 = !{i32 3}
!16 = !{i1 false, i1 false}
!17 = !{i1 false, !18, i1 false, i2 0}
!18 = !{double 0.000000e+00, double 0.000000e+00}
!19 = !{i1 false, i1 false, i1 false, i2 1}
!20 = !{i32 4}
!21 = !{i1 false, !10, i1 false, i2 1}
!22 = !{i32 5}
!23 = !{i1 false, !6, i1 false, i2 -1}
!24 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!25 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!26 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!27 = !{i32 -1}
!28 = !{i32 0, i1 false}
