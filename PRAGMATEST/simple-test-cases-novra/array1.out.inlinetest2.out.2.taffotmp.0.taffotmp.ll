; ModuleID = './inlinetest2.out.2.taffotmp.ll'
source_filename = "./inlinetest2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"range -200 200\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [16 x i8] c"./inlinetest2.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [4 x i8] c"%a\0A\00", align 1

; Function Attrs: alwaysinline nounwind uwtable
define dso_local float @hello(float* %abc) #0 !taffo.initweight !2 !taffo.funinfo !3 {
entry:
  %retval = alloca float, align 4
  %abc.addr = alloca float*, align 8, !taffo.initweight !4, !taffo.info !5
  store float* %abc, float** %abc.addr, align 8, !taffo.initweight !7, !taffo.info !5
  %abc.addr1 = bitcast float** %abc.addr to i8*, !taffo.initweight !7, !taffo.info !5
  %0 = load float*, float** %abc.addr, align 8, !taffo.initweight !7, !taffo.info !5
  %arrayidx = getelementptr inbounds float, float* %0, i64 5, !taffo.initweight !8, !taffo.info !5
  %1 = load float, float* %arrayidx, align 4, !taffo.initweight !9, !taffo.info !5
  %add = fadd float %1, 0x400921FB60000000, !taffo.initweight !10, !taffo.info !5
  store float %add, float* %arrayidx, align 4, !taffo.initweight !9, !taffo.info !5
  %2 = load float, float* %retval, align 4
  ret float %2
}

; Function Attrs: nounwind willreturn
declare !taffo.initweight !11 !taffo.funinfo !12 void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #2 !taffo.initweight !13 !taffo.funinfo !14 {
entry:
  %retval.i = alloca float, align 4
  %abc.addr.i = alloca float*, align 8, !taffo.initweight !4, !taffo.info !5
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %test = alloca [10 x float], align 16, !taffo.initweight !4, !taffo.info !5
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %test1 = bitcast [10 x float]* %test to i8*, !taffo.initweight !7, !taffo.info !5
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %test, i64 0, i64 %idxprom, !taffo.initweight !7, !taffo.info !5
  store float 1.230000e+02, float* %arrayidx, align 4, !taffo.initweight !8, !taffo.info !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [10 x float], [10 x float]* %test, i64 0, i64 0, !taffo.initweight !7, !taffo.info !5
  store float* %arraydecay, float** %abc.addr.i, align 8, !taffo.initweight !7, !taffo.info !5
  %abc.addr1.i = bitcast float** %abc.addr.i to i8*, !taffo.initweight !7, !taffo.info !5
  %3 = load float*, float** %abc.addr.i, align 8, !taffo.initweight !7, !taffo.info !5
  %arrayidx.i = getelementptr inbounds float, float* %3, i64 5, !taffo.initweight !8, !taffo.info !5
  %4 = load float, float* %arrayidx.i, align 4, !taffo.initweight !9, !taffo.info !5
  %add.i = fadd float %4, 0x400921FB60000000, !taffo.initweight !10, !taffo.info !5
  store float %add.i, float* %arrayidx.i, align 4, !taffo.initweight !9, !taffo.info !5
  %5 = load float, float* %retval.i, align 4
  %arrayidx2 = getelementptr inbounds [10 x float], [10 x float]* %test, i64 0, i64 5, !taffo.initweight !7, !taffo.info !5
  %6 = load float, float* %arrayidx2, align 4, !taffo.initweight !8, !taffo.info !5
  %conv = fpext float %6 to double, !taffo.initweight !9, !taffo.info !5
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %conv), !taffo.initweight !10, !taffo.info !5
  ret i32 0
}

declare !taffo.initweight !2 !taffo.funinfo !3 dso_local i32 @printf(i8*, ...) #3

attributes #0 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind willreturn }
attributes #2 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{i32 -1}
!3 = !{i32 0, i1 false}
!4 = !{i32 0}
!5 = !{i1 false, !6, i1 false, i2 1}
!6 = !{double -2.000000e+02, double 2.000000e+02}
!7 = !{i32 1}
!8 = !{i32 2}
!9 = !{i32 3}
!10 = !{i32 4}
!11 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!12 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!13 = !{i32 -1, i32 -1}
!14 = !{i32 0, i1 false, i32 0, i1 false}
