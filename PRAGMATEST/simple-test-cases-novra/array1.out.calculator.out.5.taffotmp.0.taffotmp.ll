; ModuleID = './calculator.out.5.taffotmp.ll'
source_filename = "./calculator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !taffo.initweight !2 !taffo.funinfo !3 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %tmp = alloca float, align 4
  %buffer = alloca [256 x i8], align 16
  %stack.s13_19fixp = alloca [32 x i32], align 16, !taffo.info !4
  %sp = alloca i32, align 4
  %n = alloca i32, align 4
  %tmp1.s13_19fixp = alloca i32, align 4, !taffo.info !4
  %tmp2.s13_19fixp = alloca i32, align 4, !taffo.info !4
  %tmp122.s13_19fixp = alloca i32, align 4, !taffo.info !4
  %tmp227.s13_19fixp = alloca i32, align 4, !taffo.info !4
  %tmp142.s13_19fixp = alloca i32, align 4, !taffo.info !4
  %tmp247.s13_19fixp = alloca i32, align 4, !taffo.info !4
  %tmp162.s13_19fixp = alloca i32, align 4, !taffo.info !4
  %tmp267.s13_19fixp = alloca i32, align 4, !taffo.info !4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %sp, align 4
  br label %while.body

while.body:                                       ; preds = %if.end, %entry
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i64 0, i64 0
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %arraydecay)
  %arraydecay2 = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i64 0, i64 0
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), float* %tmp) #3
  store i32 %call3, i32* %n, align 4
  %0 = load i32, i32* %n, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %1 = load float, float* %tmp, align 4
  %2 = fmul float 5.242880e+05, %1
  %3 = fptosi float %2 to i32
  %4 = load i32, i32* %sp, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %sp, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx.s13_19fixp = getelementptr inbounds [32 x i32], [32 x i32]* %stack.s13_19fixp, i64 0, i64 %idxprom, !taffo.info !4
  store i32 %3, i32* %arrayidx.s13_19fixp, align 4, !taffo.info !7
  br label %if.end

if.else:                                          ; preds = %while.body
  %arrayidx4 = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i64 0, i64 0
  %5 = load i8, i8* %arrayidx4, align 16
  %conv = sext i8 %5 to i32
  switch i32 %conv, label %sw.epilog [
    i32 43, label %sw.bb
    i32 45, label %sw.bb21
    i32 42, label %sw.bb41
    i32 47, label %sw.bb61
    i32 61, label %sw.bb81
    i32 113, label %sw.bb87
  ]

sw.bb:                                            ; preds = %if.else
  %6 = load i32, i32* %sp, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %sp, align 4
  %idxprom13 = sext i32 %dec to i64
  %arrayidx14.s13_19fixp = getelementptr inbounds [32 x i32], [32 x i32]* %stack.s13_19fixp, i64 0, i64 %idxprom13, !taffo.info !4
  %s13_19fixp16 = load i32, i32* %arrayidx14.s13_19fixp, align 4, !taffo.info !4
  store i32 %s13_19fixp16, i32* %tmp2.s13_19fixp, align 4, !taffo.info !7
  %7 = load i32, i32* %sp, align 4
  %dec15 = add nsw i32 %7, -1
  store i32 %dec15, i32* %sp, align 4
  %idxprom16 = sext i32 %dec15 to i64
  %arrayidx17.s13_19fixp = getelementptr inbounds [32 x i32], [32 x i32]* %stack.s13_19fixp, i64 0, i64 %idxprom16, !taffo.info !4
  %s13_19fixp15 = load i32, i32* %arrayidx17.s13_19fixp, align 4, !taffo.info !4
  store i32 %s13_19fixp15, i32* %tmp1.s13_19fixp, align 4, !taffo.info !7
  %s13_19fixp = load i32, i32* %tmp1.s13_19fixp, align 4, !taffo.info !4
  %s13_19fixp7 = load i32, i32* %tmp2.s13_19fixp, align 4, !taffo.info !4
  %add.s13_19fixp = add i32 %s13_19fixp, %s13_19fixp7, !taffo.info !4
  %8 = load i32, i32* %sp, align 4
  %inc18 = add nsw i32 %8, 1
  store i32 %inc18, i32* %sp, align 4
  %idxprom19 = sext i32 %8 to i64
  %arrayidx20.s13_19fixp = getelementptr inbounds [32 x i32], [32 x i32]* %stack.s13_19fixp, i64 0, i64 %idxprom19, !taffo.info !4
  store i32 %add.s13_19fixp, i32* %arrayidx20.s13_19fixp, align 4, !taffo.info !7
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.else
  %9 = load i32, i32* %sp, align 4
  %dec32 = add nsw i32 %9, -1
  store i32 %dec32, i32* %sp, align 4
  %idxprom33 = sext i32 %dec32 to i64
  %arrayidx34.s13_19fixp = getelementptr inbounds [32 x i32], [32 x i32]* %stack.s13_19fixp, i64 0, i64 %idxprom33, !taffo.info !4
  %s13_19fixp14 = load i32, i32* %arrayidx34.s13_19fixp, align 4, !taffo.info !4
  store i32 %s13_19fixp14, i32* %tmp227.s13_19fixp, align 4, !taffo.info !7
  %10 = load i32, i32* %sp, align 4
  %dec35 = add nsw i32 %10, -1
  store i32 %dec35, i32* %sp, align 4
  %idxprom36 = sext i32 %dec35 to i64
  %arrayidx37.s13_19fixp = getelementptr inbounds [32 x i32], [32 x i32]* %stack.s13_19fixp, i64 0, i64 %idxprom36, !taffo.info !4
  %s13_19fixp13 = load i32, i32* %arrayidx37.s13_19fixp, align 4, !taffo.info !4
  store i32 %s13_19fixp13, i32* %tmp122.s13_19fixp, align 4, !taffo.info !7
  %s13_19fixp5 = load i32, i32* %tmp122.s13_19fixp, align 4, !taffo.info !4
  %s13_19fixp6 = load i32, i32* %tmp227.s13_19fixp, align 4, !taffo.info !4
  %sub.s13_19fixp = sub i32 %s13_19fixp5, %s13_19fixp6, !taffo.info !4
  %11 = load i32, i32* %sp, align 4
  %inc38 = add nsw i32 %11, 1
  store i32 %inc38, i32* %sp, align 4
  %idxprom39 = sext i32 %11 to i64
  %arrayidx40.s13_19fixp = getelementptr inbounds [32 x i32], [32 x i32]* %stack.s13_19fixp, i64 0, i64 %idxprom39, !taffo.info !4
  store i32 %sub.s13_19fixp, i32* %arrayidx40.s13_19fixp, align 4, !taffo.info !7
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.else
  %12 = load i32, i32* %sp, align 4
  %dec52 = add nsw i32 %12, -1
  store i32 %dec52, i32* %sp, align 4
  %idxprom53 = sext i32 %dec52 to i64
  %arrayidx54.s13_19fixp = getelementptr inbounds [32 x i32], [32 x i32]* %stack.s13_19fixp, i64 0, i64 %idxprom53, !taffo.info !4
  %s13_19fixp12 = load i32, i32* %arrayidx54.s13_19fixp, align 4, !taffo.info !4
  store i32 %s13_19fixp12, i32* %tmp247.s13_19fixp, align 4, !taffo.info !7
  %13 = load i32, i32* %sp, align 4
  %dec55 = add nsw i32 %13, -1
  store i32 %dec55, i32* %sp, align 4
  %idxprom56 = sext i32 %dec55 to i64
  %arrayidx57.s13_19fixp = getelementptr inbounds [32 x i32], [32 x i32]* %stack.s13_19fixp, i64 0, i64 %idxprom56, !taffo.info !4
  %s13_19fixp11 = load i32, i32* %arrayidx57.s13_19fixp, align 4, !taffo.info !4
  store i32 %s13_19fixp11, i32* %tmp142.s13_19fixp, align 4, !taffo.info !7
  %s13_19fixp3 = load i32, i32* %tmp142.s13_19fixp, align 4, !taffo.info !4
  %s13_19fixp4 = load i32, i32* %tmp247.s13_19fixp, align 4, !taffo.info !4
  %14 = sext i32 %s13_19fixp3 to i64, !taffo.info !4
  %15 = sext i32 %s13_19fixp4 to i64, !taffo.info !4
  %16 = mul i64 %14, %15, !taffo.info !8
  %17 = ashr i64 %16, 19, !taffo.info !8
  %mul.s13_19fixp = trunc i64 %17 to i32, !taffo.info !4
  %18 = load i32, i32* %sp, align 4
  %inc58 = add nsw i32 %18, 1
  store i32 %inc58, i32* %sp, align 4
  %idxprom59 = sext i32 %18 to i64
  %arrayidx60.s13_19fixp = getelementptr inbounds [32 x i32], [32 x i32]* %stack.s13_19fixp, i64 0, i64 %idxprom59, !taffo.info !4
  store i32 %mul.s13_19fixp, i32* %arrayidx60.s13_19fixp, align 4, !taffo.info !7
  br label %sw.epilog

sw.bb61:                                          ; preds = %if.else
  %19 = load i32, i32* %sp, align 4
  %dec72 = add nsw i32 %19, -1
  store i32 %dec72, i32* %sp, align 4
  %idxprom73 = sext i32 %dec72 to i64
  %arrayidx74.s13_19fixp = getelementptr inbounds [32 x i32], [32 x i32]* %stack.s13_19fixp, i64 0, i64 %idxprom73, !taffo.info !4
  %s13_19fixp10 = load i32, i32* %arrayidx74.s13_19fixp, align 4, !taffo.info !4
  store i32 %s13_19fixp10, i32* %tmp267.s13_19fixp, align 4, !taffo.info !7
  %20 = load i32, i32* %sp, align 4
  %dec75 = add nsw i32 %20, -1
  store i32 %dec75, i32* %sp, align 4
  %idxprom76 = sext i32 %dec75 to i64
  %arrayidx77.s13_19fixp = getelementptr inbounds [32 x i32], [32 x i32]* %stack.s13_19fixp, i64 0, i64 %idxprom76, !taffo.info !4
  %s13_19fixp9 = load i32, i32* %arrayidx77.s13_19fixp, align 4, !taffo.info !4
  store i32 %s13_19fixp9, i32* %tmp162.s13_19fixp, align 4, !taffo.info !7
  %s13_19fixp1 = load i32, i32* %tmp162.s13_19fixp, align 4, !taffo.info !4
  %s13_19fixp2 = load i32, i32* %tmp267.s13_19fixp, align 4, !taffo.info !4
  %21 = sext i32 %s13_19fixp1 to i64, !taffo.info !4
  %22 = shl i64 %21, 19, !taffo.info !4
  %23 = sext i32 %s13_19fixp2 to i64, !taffo.info !4
  %24 = sdiv i64 %22, %23, !taffo.info !10
  %div.s13_19fixp = trunc i64 %24 to i32, !taffo.info !4
  %25 = load i32, i32* %sp, align 4
  %inc78 = add nsw i32 %25, 1
  store i32 %inc78, i32* %sp, align 4
  %idxprom79 = sext i32 %25 to i64
  %arrayidx80.s13_19fixp = getelementptr inbounds [32 x i32], [32 x i32]* %stack.s13_19fixp, i64 0, i64 %idxprom79, !taffo.info !4
  store i32 %div.s13_19fixp, i32* %arrayidx80.s13_19fixp, align 4, !taffo.info !7
  br label %sw.epilog

sw.bb81:                                          ; preds = %if.else
  %26 = load i32, i32* %sp, align 4
  %dec82 = add nsw i32 %26, -1
  store i32 %dec82, i32* %sp, align 4
  %idxprom83 = sext i32 %dec82 to i64
  %arrayidx84.s13_19fixp = getelementptr inbounds [32 x i32], [32 x i32]* %stack.s13_19fixp, i64 0, i64 %idxprom83, !taffo.info !4
  %s13_19fixp8 = load i32, i32* %arrayidx84.s13_19fixp, align 4, !taffo.info !4
  %27 = sitofp i32 %s13_19fixp8 to double, !taffo.info !4
  %28 = fdiv double %27, 5.242880e+05, !taffo.info !4
  %call86.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), double %28), !taffo.initweight !12, !taffo.info !13
  br label %sw.epilog

sw.bb87:                                          ; preds = %if.else
  ret i32 0

sw.epilog:                                        ; preds = %sw.bb81, %sw.bb61, %sw.bb41, %sw.bb21, %sw.bb, %if.else
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %if.then
  br label %while.body
}

declare !taffo.initweight !14 !taffo.funinfo !15 dso_local i32 @__isoc99_scanf(i8*, ...) #1

; Function Attrs: nounwind
declare !taffo.initweight !2 !taffo.funinfo !3 dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

declare !taffo.initweight !14 !taffo.funinfo !15 dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{i32 -1, i32 -1}
!3 = !{i32 0, i1 false, i32 0, i1 false}
!4 = !{!5, !6, i1 false, i2 1}
!5 = !{!"fixp", i32 -32, i32 19}
!6 = !{double -3.000000e+03, double 3.000000e+03}
!7 = !{i1 false, !6, i1 false, i2 1}
!8 = !{!9, !6, i1 false, i2 1}
!9 = !{!"fixp", i32 -64, i32 38}
!10 = !{!11, !6, i1 false, i2 1}
!11 = !{!"fixp", i32 -64, i32 19}
!12 = !{i32 4}
!13 = !{!5, i1 false, i1 false, i2 1}
!14 = !{i32 -1}
!15 = !{i32 0, i1 false}
