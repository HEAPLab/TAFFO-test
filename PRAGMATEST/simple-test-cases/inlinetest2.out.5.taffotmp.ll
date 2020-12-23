; ModuleID = './inlinetest2.out.4.taffotmp.ll'
source_filename = "./inlinetest2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.2 = private unnamed_addr constant [4 x i8] c"%a\0A\00", align 1

; Function Attrs: alwaysinline nounwind uwtable
define dso_local float @hello(float* %abc) #0 !taffo.initweight !2 !taffo.funinfo !3 {
entry:
  %arrayidx = getelementptr inbounds float, float* %abc, i64 5, !taffo.initweight !4, !taffo.info !5
  %0 = load float, float* %arrayidx, align 4, !taffo.initweight !6, !taffo.info !5
  %add = fadd float %0, 5.000000e+00, !taffo.initweight !7, !taffo.info !5, !taffo.constinfo !8
  store float %add, float* %arrayidx, align 4, !taffo.info !5
  ret float undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #1 !taffo.initweight !11 !taffo.funinfo !12 {
entry:
  %test.u8_24fixp = alloca [10 x i32], align 16, !taffo.info !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !16
  %cmp = icmp slt i32 %i.0, 10, !taffo.info !18
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !taffo.info !20
  %arrayidx.u8_24fixp = getelementptr inbounds [10 x i32], [10 x i32]* %test.u8_24fixp, i64 0, i64 %idxprom, !taffo.info !13
  store i32 2063597568, i32* %arrayidx.u8_24fixp, align 4, !taffo.info !5, !taffo.constinfo !22
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !25, !taffo.constinfo !27
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay.u8_24fixp = getelementptr inbounds [10 x i32], [10 x i32]* %test.u8_24fixp, i64 0, i64 0, !taffo.info !13
  %arrayidx.i.u8_24fixp = getelementptr inbounds i32, i32* %arraydecay.u8_24fixp, i64 5, !taffo.info !13
  %u8_24fixp1 = load i32, i32* %arrayidx.i.u8_24fixp, align 4, !taffo.info !28
  %add.i.u8_24fixp = add i32 %u8_24fixp1, 83886080, !taffo.info !29, !taffo.constinfo !8
  store i32 %add.i.u8_24fixp, i32* %arrayidx.i.u8_24fixp, align 4, !taffo.info !5
  %arrayidx2.u8_24fixp = getelementptr inbounds [10 x i32], [10 x i32]* %test.u8_24fixp, i64 0, i64 5, !taffo.info !13
  %u8_24fixp = load i32, i32* %arrayidx2.u8_24fixp, align 4, !taffo.info !13
  %0 = uitofp i32 %u8_24fixp to double, !taffo.info !13
  %1 = fdiv double %0, 0x4170000000000000, !taffo.info !13
  %call3.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %1), !taffo.initweight !7, !taffo.info !31, !taffo.constinfo !32
  ret i32 0
}

declare !taffo.initweight !2 !taffo.funinfo !3 dso_local i32 @printf(i8*, ...) #2

attributes #0 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{i32 -1}
!3 = !{i32 0, i1 false}
!4 = !{i32 2}
!5 = !{i1 false, i1 false, i1 false, i2 1}
!6 = !{i32 3}
!7 = !{i32 4}
!8 = !{i1 false, !9}
!9 = !{i1 false, !10, i1 false, i2 0}
!10 = !{double 5.000000e+00, double 5.000000e+00}
!11 = !{i32 -1, i32 -1}
!12 = !{i32 0, i1 false, i32 0, i1 false}
!13 = !{!14, !15, i1 false, i2 1}
!14 = !{!"fixp", i32 32, i32 24}
!15 = !{double 1.230000e+02, double 1.280000e+02}
!16 = !{i1 false, !17, i1 false, i2 0}
!17 = !{double 0.000000e+00, double 1.100000e+01}
!18 = !{i1 false, !19, i1 false, i2 0}
!19 = !{double 0.000000e+00, double 1.000000e+00}
!20 = !{i1 false, !21, i1 false, i2 0}
!21 = !{double 0.000000e+00, double 1.000000e+01}
!22 = !{!23, i1 false}
!23 = !{i1 false, !24, i1 false, i2 0}
!24 = !{double 1.230000e+02, double 1.230000e+02}
!25 = !{i1 false, !26, i1 false, i2 0}
!26 = !{double 1.000000e+00, double 1.100000e+01}
!27 = !{i1 false, i1 false}
!28 = !{!14, !24, i1 false, i2 1}
!29 = !{!14, !30, i1 false, i2 1}
!30 = !{double 1.280000e+02, double 1.280000e+02}
!31 = !{!14, i1 false, i1 false, i2 1}
!32 = !{i1 false, i1 false, i1 false}
