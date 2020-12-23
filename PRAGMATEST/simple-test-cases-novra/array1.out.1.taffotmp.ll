; ModuleID = './array1.c'
source_filename = "./array1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"range -3000 3000\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [11 x i8] c"./array1.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [36 x i8] c"scalar(disabled range(-3000, 3000))\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"add: %f\0Asub: %f\0Adiv: %f\0Amul: %f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %numbers = alloca [30 x float], align 16
  %n = alloca i32, align 4
  %tmp = alloca float, align 4
  %i = alloca i32, align 4
  %add = alloca float, align 4
  %sub = alloca float, align 4
  %div = alloca float, align 4
  %mul = alloca float, align 4
  %i9 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %numbers1 = bitcast [30 x float]* %numbers to i8*
  call void @llvm.var.annotation(i8* %numbers1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 10)
  store i32 0, i32* %n, align 4
  %tmp2 = bitcast float* %tmp to i8*
  call void @llvm.var.annotation(i8* %tmp2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 13)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 30
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), float* %tmp)
  %cmp3 = icmp slt i32 %call, 1
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %1 = load float, float* %tmp, align 4
  %2 = load i32, i32* %n, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %n, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [30 x float], [30 x float]* %numbers, i64 0, i64 %idxprom
  store float %1, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %3 = load i32, i32* %i, align 4
  %inc4 = add nsw i32 %3, 1
  store i32 %inc4, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %add5 = bitcast float* %add to i8*
  call void @llvm.var.annotation(i8* %add5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 22)
  store float 0.000000e+00, float* %add, align 4
  %sub6 = bitcast float* %sub to i8*
  call void @llvm.var.annotation(i8* %sub6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 24)
  store float 0.000000e+00, float* %sub, align 4
  %div7 = bitcast float* %div to i8*
  call void @llvm.var.annotation(i8* %div7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 26)
  store float 1.000000e+00, float* %div, align 4
  %mul8 = bitcast float* %mul to i8*
  call void @llvm.var.annotation(i8* %mul8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 28)
  store float 1.000000e+00, float* %mul, align 4
  store i32 0, i32* %i9, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc31, %for.end
  %4 = load i32, i32* %i9, align 4
  %5 = load i32, i32* %n, align 4
  %cmp11 = icmp slt i32 %4, %5
  br i1 %cmp11, label %for.body12, label %for.end33

for.body12:                                       ; preds = %for.cond10
  %6 = load i32, i32* %i9, align 4
  %idxprom13 = sext i32 %6 to i64
  %arrayidx14 = getelementptr inbounds [30 x float], [30 x float]* %numbers, i64 0, i64 %idxprom13
  %7 = load float, float* %arrayidx14, align 4
  %8 = load float, float* %add, align 4
  %add15 = fadd float %8, %7
  store float %add15, float* %add, align 4
  %9 = load i32, i32* %i9, align 4
  %idxprom16 = sext i32 %9 to i64
  %arrayidx17 = getelementptr inbounds [30 x float], [30 x float]* %numbers, i64 0, i64 %idxprom16
  %10 = load float, float* %arrayidx17, align 4
  %11 = load float, float* %sub, align 4
  %sub18 = fsub float %11, %10
  store float %sub18, float* %sub, align 4
  %12 = load i32, i32* %i9, align 4
  %idxprom19 = sext i32 %12 to i64
  %arrayidx20 = getelementptr inbounds [30 x float], [30 x float]* %numbers, i64 0, i64 %idxprom19
  %13 = load float, float* %arrayidx20, align 4
  %conv = fpext float %13 to double
  %cmp21 = fcmp une double %conv, 0.000000e+00
  br i1 %cmp21, label %if.then23, label %if.end27

if.then23:                                        ; preds = %for.body12
  %14 = load i32, i32* %i9, align 4
  %idxprom24 = sext i32 %14 to i64
  %arrayidx25 = getelementptr inbounds [30 x float], [30 x float]* %numbers, i64 0, i64 %idxprom24
  %15 = load float, float* %arrayidx25, align 4
  %16 = load float, float* %div, align 4
  %div26 = fdiv float %16, %15
  store float %div26, float* %div, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %for.body12
  %17 = load i32, i32* %i9, align 4
  %idxprom28 = sext i32 %17 to i64
  %arrayidx29 = getelementptr inbounds [30 x float], [30 x float]* %numbers, i64 0, i64 %idxprom28
  %18 = load float, float* %arrayidx29, align 4
  %19 = load float, float* %mul, align 4
  %mul30 = fmul float %19, %18
  store float %mul30, float* %mul, align 4
  br label %for.inc31

for.inc31:                                        ; preds = %if.end27
  %20 = load i32, i32* %i9, align 4
  %inc32 = add nsw i32 %20, 1
  store i32 %inc32, i32* %i9, align 4
  br label %for.cond10

for.end33:                                        ; preds = %for.cond10
  %21 = load float, float* %add, align 4
  %conv34 = fpext float %21 to double
  %22 = load float, float* %sub, align 4
  %conv35 = fpext float %22 to double
  %23 = load float, float* %div, align 4
  %conv36 = fpext float %23 to double
  %24 = load float, float* %mul, align 4
  %conv37 = fpext float %24 to double
  %call38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), double %conv34, double %conv35, double %conv36, double %conv37)
  ret i32 0
}

; Function Attrs: nounwind willreturn
declare void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

declare dso_local i32 @__isoc99_scanf(i8*, ...) #2

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
