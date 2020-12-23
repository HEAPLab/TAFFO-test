; ModuleID = './dta-conv-flag-regression.c'
source_filename = "./dta-conv-flag-regression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cosTable = dso_local global [5 x double] [double 1.000000e+00, double 0x3FEFFFFEF390876C, double 0x3FEFFFFBCE422F47, double 0x3FEFFFF690152C59, double 0x3FEFFFEF3909D697], align 16
@.str = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"scalar(range(-20, 20))\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [29 x i8] c"./dta-conv-flag-regression.c\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [5 x i8] c"%lf\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local double @normalizeRadiantForCosine(double %angle) #0 {
entry:
  %angle.addr = alloca double, align 8
  store double %angle, double* %angle.addr, align 8
  %0 = load double, double* %angle.addr, align 8
  %cmp = fcmp olt double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load double, double* %angle.addr, align 8
  %fneg = fneg double %1
  store double %fneg, double* %angle.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %2 = load double, double* %angle.addr, align 8
  %cmp1 = fcmp oge double %2, 0x401921FB54442D18
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load double, double* %angle.addr, align 8
  %sub = fsub double %3, 0x401921FB54442D18
  store double %sub, double* %angle.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load double, double* %angle.addr, align 8
  ret double %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @cos2(double %angle) #0 {
entry:
  %angle.addr = alloca double, align 8
  %index = alloca i32, align 4
  store double %angle, double* %angle.addr, align 8
  %0 = load double, double* %angle.addr, align 8
  %call = call double @normalizeRadiantForCosine(double %0)
  %mul = fmul double %call, 1.000000e+03
  %add = fadd double %mul, 5.555000e-01
  %conv = fptosi double %add to i32
  store i32 %conv, i32* %index, align 4
  %1 = load i32, i32* %index, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [5 x double], [5 x double]* @cosTable, i64 0, i64 %idxprom
  %2 = load double, double* %arrayidx, align 8
  ret double %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %angle = alloca double, align 8
  %taffo_angle = alloca double, align 8
  store i32 0, i32* %retval, align 4
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), double* %angle)
  %taffo_angle1 = bitcast double* %taffo_angle to i8*
  call void @llvm.var.annotation(i8* %taffo_angle1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 25)
  %0 = load double, double* %angle, align 8
  store double %0, double* %taffo_angle, align 8
  %1 = load double, double* %taffo_angle, align 8
  %call2 = call double @cos2(double %1)
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), double %call2)
  ret i32 0
}

declare dso_local i32 @__isoc99_scanf(i8*, ...) #1

; Function Attrs: nounwind willreturn
declare void @llvm.var.annotation(i8*, i8*, i8*, i32) #2

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
