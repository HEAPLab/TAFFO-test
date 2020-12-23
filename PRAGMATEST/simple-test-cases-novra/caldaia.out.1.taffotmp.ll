; ModuleID = './caldaia.c'
source_filename = "./caldaia.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"range -3000 +3000\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [12 x i8] c"./caldaia.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [17 x i8] c"range -3000 3000\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Media picchi: \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"Media totale: \00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %p1 = alloca float, align 4
  %p2 = alloca float, align 4
  %p3 = alloca float, align 4
  %sPeak = alloca float, align 4
  %sAll = alloca float, align 4
  %cPeak = alloca i32, align 4
  %cAll = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %p11 = bitcast float* %p1 to i8*
  call void @llvm.var.annotation(i8* %p11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 15)
  %p22 = bitcast float* %p2 to i8*
  call void @llvm.var.annotation(i8* %p22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 17)
  %sPeak3 = bitcast float* %sPeak to i8*
  call void @llvm.var.annotation(i8* %sPeak3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 20)
  %sAll4 = bitcast float* %sAll to i8*
  call void @llvm.var.annotation(i8* %sAll4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 22)
  store float -1.000000e+00, float* %p1, align 4
  store float -1.000000e+00, float* %p2, align 4
  store float -1.000000e+00, float* %p3, align 4
  store float 0.000000e+00, float* %sAll, align 4
  store float 0.000000e+00, float* %sPeak, align 4
  store i32 0, i32* %cAll, align 4
  store i32 0, i32* %cPeak, align 4
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), float* %p3)
  br label %while.cond

while.cond:                                       ; preds = %if.end13, %entry
  %0 = load float, float* %p3, align 4
  %cmp = fcmp ogt float %0, 0.000000e+00
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load float, float* %p3, align 4
  %cmp5 = fcmp ogt float %1, 0.000000e+00
  br i1 %cmp5, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %while.body
  %2 = load float, float* %p2, align 4
  %cmp6 = fcmp ogt float %2, 0.000000e+00
  br i1 %cmp6, label %land.lhs.true7, label %if.end13

land.lhs.true7:                                   ; preds = %land.lhs.true
  %3 = load float, float* %p1, align 4
  %cmp8 = fcmp ogt float %3, 0.000000e+00
  br i1 %cmp8, label %if.then, label %if.end13

if.then:                                          ; preds = %land.lhs.true7
  %4 = load float, float* %p3, align 4
  %5 = load float, float* %p2, align 4
  %cmp9 = fcmp olt float %4, %5
  br i1 %cmp9, label %land.lhs.true10, label %if.end

land.lhs.true10:                                  ; preds = %if.then
  %6 = load float, float* %p1, align 4
  %7 = load float, float* %p2, align 4
  %cmp11 = fcmp olt float %6, %7
  br i1 %cmp11, label %if.then12, label %if.end

if.then12:                                        ; preds = %land.lhs.true10
  %8 = load float, float* %p2, align 4
  %9 = load float, float* %sPeak, align 4
  %add = fadd float %9, %8
  store float %add, float* %sPeak, align 4
  %10 = load i32, i32* %cPeak, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %cPeak, align 4
  br label %if.end

if.end:                                           ; preds = %if.then12, %land.lhs.true10, %if.then
  br label %if.end13

if.end13:                                         ; preds = %if.end, %land.lhs.true7, %land.lhs.true, %while.body
  %11 = load float, float* %p3, align 4
  %12 = load float, float* %sAll, align 4
  %add14 = fadd float %12, %11
  store float %add14, float* %sAll, align 4
  %13 = load i32, i32* %cAll, align 4
  %inc15 = add nsw i32 %13, 1
  store i32 %inc15, i32* %cAll, align 4
  %14 = load float, float* %p2, align 4
  store float %14, float* %p1, align 4
  %15 = load float, float* %p3, align 4
  store float %15, float* %p2, align 4
  %call16 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), float* %p3)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %16 = load i32, i32* %cPeak, align 4
  %cmp18 = icmp sgt i32 %16, 0
  br i1 %cmp18, label %if.then19, label %if.else

if.then19:                                        ; preds = %while.end
  %17 = load float, float* %sPeak, align 4
  %18 = load i32, i32* %cPeak, align 4
  %conv = sitofp i32 %18 to float
  %div = fdiv float %17, %conv
  %conv20 = fpext float %div to double
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), double %conv20)
  br label %if.end23

if.else:                                          ; preds = %while.end
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then19
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %19 = load i32, i32* %cAll, align 4
  %cmp25 = icmp sgt i32 %19, 0
  br i1 %cmp25, label %if.then27, label %if.else32

if.then27:                                        ; preds = %if.end23
  %20 = load float, float* %sAll, align 4
  %21 = load i32, i32* %cAll, align 4
  %conv28 = sitofp i32 %21 to float
  %div29 = fdiv float %20, %conv28
  %conv30 = fpext float %div29 to double
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), double %conv30)
  br label %if.end34

if.else32:                                        ; preds = %if.end23
  %call33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %if.end34

if.end34:                                         ; preds = %if.else32, %if.then27
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
