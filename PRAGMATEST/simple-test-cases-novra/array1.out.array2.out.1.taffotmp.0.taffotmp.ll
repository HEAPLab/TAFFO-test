; ModuleID = './array2.out.1.taffotmp.ll'
source_filename = "./array2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"range -3000 3000\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [11 x i8] c"./array2.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [9 x i8] c"ris %f \0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %v = alloca [100000 x float], align 16
  %i = alloca i32, align 4
  %i4 = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %v1 = bitcast [100000 x float]* %v to i8*
  call void @llvm.var.annotation(i8* %v1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 12)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 100000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %rem = srem i32 %1, 3333
  %tobool = icmp ne i32 %rem, 0
  %2 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 0, i32 1
  %conv = sitofp i32 %cond to float
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [100000 x float], [100000 x float]* %v, i64 0, i64 %idxprom
  store float %conv, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arrayidx2 = getelementptr inbounds [100000 x float], [100000 x float]* %v, i64 0, i64 0
  store float 0x3FF19999A0000000, float* %arrayidx2, align 16
  %arrayidx3 = getelementptr inbounds [100000 x float], [100000 x float]* %v, i64 0, i64 1
  store float 0x3FF19999A0000000, float* %arrayidx3, align 4
  store i32 2, i32* %i4, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc30, %for.end
  %5 = load i32, i32* %i4, align 4
  %cmp6 = icmp slt i32 %5, 100000
  br i1 %cmp6, label %for.body8, label %for.end32

for.body8:                                        ; preds = %for.cond5
  store i32 0, i32* %j, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc27, %for.body8
  %6 = load i32, i32* %j, align 4
  %cmp10 = icmp slt i32 %6, 100000
  br i1 %cmp10, label %for.body12, label %for.end29

for.body12:                                       ; preds = %for.cond9
  %7 = load i32, i32* %j, align 4
  %8 = load i32, i32* %i4, align 4
  %cmp13 = icmp eq i32 %7, %8
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %for.body12
  br label %for.inc27

if.end:                                           ; preds = %for.body12
  %9 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %9 to i64
  %arrayidx16 = getelementptr inbounds [100000 x float], [100000 x float]* %v, i64 0, i64 %idxprom15
  %10 = load float, float* %arrayidx16, align 4
  %div = fdiv float %10, 1.000000e+01
  %11 = load i32, i32* %i4, align 4
  %idxprom17 = sext i32 %11 to i64
  %arrayidx18 = getelementptr inbounds [100000 x float], [100000 x float]* %v, i64 0, i64 %idxprom17
  %12 = load float, float* %arrayidx18, align 4
  %add = fadd float %12, %div
  store float %add, float* %arrayidx18, align 4
  %13 = load i32, i32* %i4, align 4
  %idxprom19 = sext i32 %13 to i64
  %arrayidx20 = getelementptr inbounds [100000 x float], [100000 x float]* %v, i64 0, i64 %idxprom19
  %14 = load float, float* %arrayidx20, align 4
  %cmp21 = fcmp ogt float %14, 1.000000e+02
  br i1 %cmp21, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end
  %15 = load i32, i32* %i4, align 4
  %idxprom24 = sext i32 %15 to i64
  %arrayidx25 = getelementptr inbounds [100000 x float], [100000 x float]* %v, i64 0, i64 %idxprom24
  store float 0x3FB99999A0000000, float* %arrayidx25, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end
  br label %for.inc27

for.inc27:                                        ; preds = %if.end26, %if.then
  %16 = load i32, i32* %j, align 4
  %inc28 = add nsw i32 %16, 1
  store i32 %inc28, i32* %j, align 4
  br label %for.cond9

for.end29:                                        ; preds = %for.cond9
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %17 = load i32, i32* %i4, align 4
  %inc31 = add nsw i32 %17, 1
  store i32 %inc31, i32* %i4, align 4
  br label %for.cond5

for.end32:                                        ; preds = %for.cond5
  %arrayidx33 = getelementptr inbounds [100000 x float], [100000 x float]* %v, i64 0, i64 99999
  %18 = load float, float* %arrayidx33, align 4
  %conv34 = fpext float %18 to double
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), double %conv34)
  ret i32 0
}

; Function Attrs: nounwind willreturn
declare void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
