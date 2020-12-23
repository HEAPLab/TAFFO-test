; ModuleID = './calculator.c'
source_filename = "./calculator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"range -3000 +3000\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [15 x i8] c"./calculator.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %tmp = alloca float, align 4
  %buffer = alloca [256 x i8], align 16
  %stack = alloca [32 x float], align 16
  %sp = alloca i32, align 4
  %n = alloca i32, align 4
  %tmp1 = alloca float, align 4
  %tmp2 = alloca float, align 4
  %tmp122 = alloca float, align 4
  %tmp227 = alloca float, align 4
  %tmp142 = alloca float, align 4
  %tmp247 = alloca float, align 4
  %tmp162 = alloca float, align 4
  %tmp267 = alloca float, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %stack1 = bitcast [32 x float]* %stack to i8*
  call void @llvm.var.annotation(i8* %stack1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 21)
  store i32 0, i32* %sp, align 4
  br label %while.body

while.body:                                       ; preds = %entry, %if.end
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i64 0, i64 0
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %arraydecay)
  %arraydecay2 = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i64 0, i64 0
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), float* %tmp) #4
  store i32 %call3, i32* %n, align 4
  %0 = load i32, i32* %n, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %1 = load float, float* %tmp, align 4
  %2 = load i32, i32* %sp, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %sp, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [32 x float], [32 x float]* %stack, i64 0, i64 %idxprom
  store float %1, float* %arrayidx, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  %arrayidx4 = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i64 0, i64 0
  %3 = load i8, i8* %arrayidx4, align 16
  %conv = sext i8 %3 to i32
  switch i32 %conv, label %sw.epilog [
    i32 43, label %sw.bb
    i32 45, label %sw.bb21
    i32 42, label %sw.bb41
    i32 47, label %sw.bb61
    i32 61, label %sw.bb81
    i32 113, label %sw.bb87
  ]

sw.bb:                                            ; preds = %if.else
  %tmp15 = bitcast float* %tmp1 to i8*
  call void @llvm.var.annotation(i8* %tmp15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 32)
  %tmp16 = bitcast float* %tmp1 to i8*
  call void @llvm.var.annotation(i8* %tmp16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 32)
  %tmp17 = bitcast float* %tmp1 to i8*
  call void @llvm.var.annotation(i8* %tmp17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 32)
  %tmp18 = bitcast float* %tmp1 to i8*
  call void @llvm.var.annotation(i8* %tmp18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 32)
  %tmp29 = bitcast float* %tmp2 to i8*
  call void @llvm.var.annotation(i8* %tmp29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 32)
  %tmp210 = bitcast float* %tmp2 to i8*
  call void @llvm.var.annotation(i8* %tmp210, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 32)
  %tmp211 = bitcast float* %tmp2 to i8*
  call void @llvm.var.annotation(i8* %tmp211, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 32)
  %tmp212 = bitcast float* %tmp2 to i8*
  call void @llvm.var.annotation(i8* %tmp212, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 32)
  %4 = load i32, i32* %sp, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, i32* %sp, align 4
  %idxprom13 = sext i32 %dec to i64
  %arrayidx14 = getelementptr inbounds [32 x float], [32 x float]* %stack, i64 0, i64 %idxprom13
  %5 = load float, float* %arrayidx14, align 4
  store float %5, float* %tmp2, align 4
  %6 = load i32, i32* %sp, align 4
  %dec15 = add nsw i32 %6, -1
  store i32 %dec15, i32* %sp, align 4
  %idxprom16 = sext i32 %dec15 to i64
  %arrayidx17 = getelementptr inbounds [32 x float], [32 x float]* %stack, i64 0, i64 %idxprom16
  %7 = load float, float* %arrayidx17, align 4
  store float %7, float* %tmp1, align 4
  %8 = load float, float* %tmp1, align 4
  %9 = load float, float* %tmp2, align 4
  %add = fadd float %8, %9
  %10 = load i32, i32* %sp, align 4
  %inc18 = add nsw i32 %10, 1
  store i32 %inc18, i32* %sp, align 4
  %idxprom19 = sext i32 %10 to i64
  %arrayidx20 = getelementptr inbounds [32 x float], [32 x float]* %stack, i64 0, i64 %idxprom19
  store float %add, float* %arrayidx20, align 4
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.else
  %tmp12223 = bitcast float* %tmp122 to i8*
  call void @llvm.var.annotation(i8* %tmp12223, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 35)
  %tmp12224 = bitcast float* %tmp122 to i8*
  call void @llvm.var.annotation(i8* %tmp12224, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 35)
  %tmp12225 = bitcast float* %tmp122 to i8*
  call void @llvm.var.annotation(i8* %tmp12225, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 35)
  %tmp12226 = bitcast float* %tmp122 to i8*
  call void @llvm.var.annotation(i8* %tmp12226, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 35)
  %tmp22728 = bitcast float* %tmp227 to i8*
  call void @llvm.var.annotation(i8* %tmp22728, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 35)
  %tmp22729 = bitcast float* %tmp227 to i8*
  call void @llvm.var.annotation(i8* %tmp22729, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 35)
  %tmp22730 = bitcast float* %tmp227 to i8*
  call void @llvm.var.annotation(i8* %tmp22730, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 35)
  %tmp22731 = bitcast float* %tmp227 to i8*
  call void @llvm.var.annotation(i8* %tmp22731, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 35)
  %11 = load i32, i32* %sp, align 4
  %dec32 = add nsw i32 %11, -1
  store i32 %dec32, i32* %sp, align 4
  %idxprom33 = sext i32 %dec32 to i64
  %arrayidx34 = getelementptr inbounds [32 x float], [32 x float]* %stack, i64 0, i64 %idxprom33
  %12 = load float, float* %arrayidx34, align 4
  store float %12, float* %tmp227, align 4
  %13 = load i32, i32* %sp, align 4
  %dec35 = add nsw i32 %13, -1
  store i32 %dec35, i32* %sp, align 4
  %idxprom36 = sext i32 %dec35 to i64
  %arrayidx37 = getelementptr inbounds [32 x float], [32 x float]* %stack, i64 0, i64 %idxprom36
  %14 = load float, float* %arrayidx37, align 4
  store float %14, float* %tmp122, align 4
  %15 = load float, float* %tmp122, align 4
  %16 = load float, float* %tmp227, align 4
  %sub = fsub float %15, %16
  %17 = load i32, i32* %sp, align 4
  %inc38 = add nsw i32 %17, 1
  store i32 %inc38, i32* %sp, align 4
  %idxprom39 = sext i32 %17 to i64
  %arrayidx40 = getelementptr inbounds [32 x float], [32 x float]* %stack, i64 0, i64 %idxprom39
  store float %sub, float* %arrayidx40, align 4
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.else
  %tmp14243 = bitcast float* %tmp142 to i8*
  call void @llvm.var.annotation(i8* %tmp14243, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 38)
  %tmp14244 = bitcast float* %tmp142 to i8*
  call void @llvm.var.annotation(i8* %tmp14244, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 38)
  %tmp14245 = bitcast float* %tmp142 to i8*
  call void @llvm.var.annotation(i8* %tmp14245, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 38)
  %tmp14246 = bitcast float* %tmp142 to i8*
  call void @llvm.var.annotation(i8* %tmp14246, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 38)
  %tmp24748 = bitcast float* %tmp247 to i8*
  call void @llvm.var.annotation(i8* %tmp24748, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 38)
  %tmp24749 = bitcast float* %tmp247 to i8*
  call void @llvm.var.annotation(i8* %tmp24749, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 38)
  %tmp24750 = bitcast float* %tmp247 to i8*
  call void @llvm.var.annotation(i8* %tmp24750, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 38)
  %tmp24751 = bitcast float* %tmp247 to i8*
  call void @llvm.var.annotation(i8* %tmp24751, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 38)
  %18 = load i32, i32* %sp, align 4
  %dec52 = add nsw i32 %18, -1
  store i32 %dec52, i32* %sp, align 4
  %idxprom53 = sext i32 %dec52 to i64
  %arrayidx54 = getelementptr inbounds [32 x float], [32 x float]* %stack, i64 0, i64 %idxprom53
  %19 = load float, float* %arrayidx54, align 4
  store float %19, float* %tmp247, align 4
  %20 = load i32, i32* %sp, align 4
  %dec55 = add nsw i32 %20, -1
  store i32 %dec55, i32* %sp, align 4
  %idxprom56 = sext i32 %dec55 to i64
  %arrayidx57 = getelementptr inbounds [32 x float], [32 x float]* %stack, i64 0, i64 %idxprom56
  %21 = load float, float* %arrayidx57, align 4
  store float %21, float* %tmp142, align 4
  %22 = load float, float* %tmp142, align 4
  %23 = load float, float* %tmp247, align 4
  %mul = fmul float %22, %23
  %24 = load i32, i32* %sp, align 4
  %inc58 = add nsw i32 %24, 1
  store i32 %inc58, i32* %sp, align 4
  %idxprom59 = sext i32 %24 to i64
  %arrayidx60 = getelementptr inbounds [32 x float], [32 x float]* %stack, i64 0, i64 %idxprom59
  store float %mul, float* %arrayidx60, align 4
  br label %sw.epilog

sw.bb61:                                          ; preds = %if.else
  %tmp16263 = bitcast float* %tmp162 to i8*
  call void @llvm.var.annotation(i8* %tmp16263, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 41)
  %tmp16264 = bitcast float* %tmp162 to i8*
  call void @llvm.var.annotation(i8* %tmp16264, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 41)
  %tmp16265 = bitcast float* %tmp162 to i8*
  call void @llvm.var.annotation(i8* %tmp16265, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 41)
  %tmp16266 = bitcast float* %tmp162 to i8*
  call void @llvm.var.annotation(i8* %tmp16266, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 41)
  %tmp26768 = bitcast float* %tmp267 to i8*
  call void @llvm.var.annotation(i8* %tmp26768, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 41)
  %tmp26769 = bitcast float* %tmp267 to i8*
  call void @llvm.var.annotation(i8* %tmp26769, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 41)
  %tmp26770 = bitcast float* %tmp267 to i8*
  call void @llvm.var.annotation(i8* %tmp26770, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 41)
  %tmp26771 = bitcast float* %tmp267 to i8*
  call void @llvm.var.annotation(i8* %tmp26771, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 41)
  %25 = load i32, i32* %sp, align 4
  %dec72 = add nsw i32 %25, -1
  store i32 %dec72, i32* %sp, align 4
  %idxprom73 = sext i32 %dec72 to i64
  %arrayidx74 = getelementptr inbounds [32 x float], [32 x float]* %stack, i64 0, i64 %idxprom73
  %26 = load float, float* %arrayidx74, align 4
  store float %26, float* %tmp267, align 4
  %27 = load i32, i32* %sp, align 4
  %dec75 = add nsw i32 %27, -1
  store i32 %dec75, i32* %sp, align 4
  %idxprom76 = sext i32 %dec75 to i64
  %arrayidx77 = getelementptr inbounds [32 x float], [32 x float]* %stack, i64 0, i64 %idxprom76
  %28 = load float, float* %arrayidx77, align 4
  store float %28, float* %tmp162, align 4
  %29 = load float, float* %tmp162, align 4
  %30 = load float, float* %tmp267, align 4
  %div = fdiv float %29, %30
  %31 = load i32, i32* %sp, align 4
  %inc78 = add nsw i32 %31, 1
  store i32 %inc78, i32* %sp, align 4
  %idxprom79 = sext i32 %31 to i64
  %arrayidx80 = getelementptr inbounds [32 x float], [32 x float]* %stack, i64 0, i64 %idxprom79
  store float %div, float* %arrayidx80, align 4
  br label %sw.epilog

sw.bb81:                                          ; preds = %if.else
  %32 = load i32, i32* %sp, align 4
  %dec82 = add nsw i32 %32, -1
  store i32 %dec82, i32* %sp, align 4
  %idxprom83 = sext i32 %dec82 to i64
  %arrayidx84 = getelementptr inbounds [32 x float], [32 x float]* %stack, i64 0, i64 %idxprom83
  %33 = load float, float* %arrayidx84, align 4
  %conv85 = fpext float %33 to double
  %call86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), double %conv85)
  br label %sw.epilog

sw.bb87:                                          ; preds = %if.else
  ret i32 0

sw.epilog:                                        ; preds = %if.else, %sw.bb81, %sw.bb61, %sw.bb41, %sw.bb21, %sw.bb
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %if.then
  br label %while.body
}

; Function Attrs: nounwind willreturn
declare void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

declare dso_local i32 @__isoc99_scanf(i8*, ...) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #3

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
