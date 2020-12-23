; ModuleID = './phi-and-math.out.1.taffotmp.ll'
source_filename = "./phi-and-math.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RGB = type { i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"scalar(range(0,256)) target('r')\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [17 x i8] c"./phi-and-math.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [21 x i8] c"scalar(range(0,256))\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Pixel: %f %f %f\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Pixel: %d %d %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local double @clip_rgb(double %val) #0 !taffo.initweight !2 !taffo.equivalentChild !3 !taffo.funinfo !4 {
entry:
  %val.addr = alloca double, align 8
  store double %val, double* %val.addr, align 8
  %0 = load double, double* %val.addr, align 8
  %cmp = fcmp olt double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store double 0.000000e+00, double* %val.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load double, double* %val.addr, align 8
  %cmp1 = fcmp ogt double %1, 2.550000e+02
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store double 2.550000e+02, double* %val.addr, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %2 = load double, double* %val.addr, align 8
  ret double %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !5 !taffo.funinfo !5 {
entry:
  %retval = alloca i32, align 4
  %r = alloca double, align 8
  %g = alloca double, align 8, !taffo.initweight !6, !taffo.info !7
  %b = alloca double, align 8, !taffo.initweight !6, !taffo.info !7
  %y = alloca i32, align 4
  %cr = alloca i32, align 4
  %cb = alloca i32, align 4
  %pixels = alloca [5 x %struct.RGB], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %r1 = bitcast double* %r to i8*
  call void @llvm.var.annotation(i8* %r1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 22)
  %g2 = bitcast double* %g to i8*, !taffo.initweight !9, !taffo.info !7
  %b3 = bitcast double* %b to i8*, !taffo.initweight !9, !taffo.info !7
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %y)
  %call4 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %cr)
  %call5 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %cb)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc47, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end49

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp7 = icmp slt i32 %1, 5
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %2 = load i32, i32* %y, align 4
  %conv = sitofp i32 %2 to double
  %3 = load i32, i32* %cr, align 4
  %conv9 = sitofp i32 %3 to double
  %mul = fmul double 1.402000e+00, %conv9
  %add = fadd double %conv, %mul
  %add10 = fadd double %add, 1.280000e+02
  store double %add10, double* %r, align 8
  %4 = load i32, i32* %y, align 4
  %conv11 = sitofp i32 %4 to double
  %5 = load i32, i32* %cb, align 4
  %conv12 = sitofp i32 %5 to double
  %mul13 = fmul double 3.441400e-01, %conv12
  %sub = fsub double %conv11, %mul13
  %6 = load i32, i32* %cr, align 4
  %conv14 = sitofp i32 %6 to double
  %mul15 = fmul double 7.141400e-01, %conv14
  %sub16 = fsub double %sub, %mul15
  %add17 = fadd double %sub16, 1.280000e+02
  store double %add17, double* %g, align 8, !taffo.initweight !9, !taffo.info !7
  %7 = load i32, i32* %y, align 4
  %conv18 = sitofp i32 %7 to double
  %8 = load i32, i32* %cb, align 4
  %conv19 = sitofp i32 %8 to double
  %mul20 = fmul double 1.772000e+00, %conv19
  %add21 = fadd double %conv18, %mul20
  %add22 = fadd double %add21, 1.280000e+02
  store double %add22, double* %b, align 8, !taffo.initweight !9, !taffo.info !7
  %9 = load double, double* %r, align 8
  %10 = load double, double* %g, align 8, !taffo.initweight !9, !taffo.info !7
  %11 = load double, double* %b, align 8, !taffo.initweight !9, !taffo.info !7
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), double %9, double %10, double %11), !taffo.initweight !10, !taffo.info !7
  %12 = load double, double* %r, align 8
  %call24 = call double @clip_rgb(double %12)
  store double %call24, double* %r, align 8
  %13 = load double, double* %g, align 8, !taffo.initweight !9, !taffo.info !7
  %call25 = call double @clip_rgb.1(double %13), !taffo.initweight !10, !taffo.info !7, !taffo.originalCall !11
  store double %call25, double* %g, align 8, !taffo.initweight !9, !taffo.info !7
  %14 = load double, double* %b, align 8, !taffo.initweight !9, !taffo.info !7
  %call26 = call double @clip_rgb.2(double %14), !taffo.initweight !10, !taffo.info !7, !taffo.originalCall !11
  store double %call26, double* %b, align 8, !taffo.initweight !9, !taffo.info !7
  %15 = load double, double* %r, align 8
  %conv27 = fptosi double %15 to i32
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds [5 x %struct.RGB], [5 x %struct.RGB]* %pixels, i64 0, i64 %idxprom
  %r28 = getelementptr inbounds %struct.RGB, %struct.RGB* %arrayidx, i32 0, i32 0
  store i32 %conv27, i32* %r28, align 4
  %17 = load double, double* %g, align 8, !taffo.initweight !9, !taffo.info !7
  %conv29 = fptosi double %17 to i32, !taffo.initweight !10, !taffo.info !7
  %18 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %18 to i64
  %arrayidx31 = getelementptr inbounds [5 x %struct.RGB], [5 x %struct.RGB]* %pixels, i64 0, i64 %idxprom30
  %g32 = getelementptr inbounds %struct.RGB, %struct.RGB* %arrayidx31, i32 0, i32 1
  store i32 %conv29, i32* %g32, align 4, !taffo.initweight !12, !taffo.info !7
  %19 = load double, double* %b, align 8, !taffo.initweight !9, !taffo.info !7
  %conv33 = fptosi double %19 to i32, !taffo.initweight !10, !taffo.info !7
  %20 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %20 to i64
  %arrayidx35 = getelementptr inbounds [5 x %struct.RGB], [5 x %struct.RGB]* %pixels, i64 0, i64 %idxprom34
  %b36 = getelementptr inbounds %struct.RGB, %struct.RGB* %arrayidx35, i32 0, i32 2
  store i32 %conv33, i32* %b36, align 4, !taffo.initweight !12, !taffo.info !7
  %21 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %21 to i64
  %arrayidx38 = getelementptr inbounds [5 x %struct.RGB], [5 x %struct.RGB]* %pixels, i64 0, i64 %idxprom37
  %r39 = getelementptr inbounds %struct.RGB, %struct.RGB* %arrayidx38, i32 0, i32 0
  %22 = load i32, i32* %r39, align 4
  %23 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %23 to i64
  %arrayidx41 = getelementptr inbounds [5 x %struct.RGB], [5 x %struct.RGB]* %pixels, i64 0, i64 %idxprom40
  %g42 = getelementptr inbounds %struct.RGB, %struct.RGB* %arrayidx41, i32 0, i32 1
  %24 = load i32, i32* %g42, align 4
  %25 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %25 to i64
  %arrayidx44 = getelementptr inbounds [5 x %struct.RGB], [5 x %struct.RGB]* %pixels, i64 0, i64 %idxprom43
  %b45 = getelementptr inbounds %struct.RGB, %struct.RGB* %arrayidx44, i32 0, i32 2
  %26 = load i32, i32* %b45, align 4
  %call46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %22, i32 %24, i32 %26)
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %27 = load i32, i32* %j, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond6

for.end:                                          ; preds = %for.cond6
  br label %for.inc47

for.inc47:                                        ; preds = %for.end
  %28 = load i32, i32* %i, align 4
  %inc48 = add nsw i32 %28, 1
  store i32 %inc48, i32* %i, align 4
  br label %for.cond

for.end49:                                        ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nounwind willreturn
declare !taffo.initweight !13 !taffo.funinfo !14 void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

declare !taffo.initweight !2 !taffo.funinfo !4 dso_local i32 @__isoc99_scanf(i8*, ...) #2

declare !taffo.initweight !2 !taffo.funinfo !4 dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal double @clip_rgb.1(double %val) #0 !taffo.initweight !10 !taffo.sourceFunction !11 !taffo.funinfo !15 {
entry:
  %val.addr = alloca double, align 8, !taffo.initweight !12, !taffo.info !7
  store double %val, double* %val.addr, align 8, !taffo.initweight !16, !taffo.info !7
  %0 = load double, double* %val.addr, align 8, !taffo.initweight !16, !taffo.info !7
  %cmp = fcmp olt double %0, 0.000000e+00, !taffo.initweight !17, !taffo.info !7
  br i1 %cmp, label %if.then, label %if.end, !taffo.initweight !18, !taffo.info !7

if.then:                                          ; preds = %entry
  store double 0.000000e+00, double* %val.addr, align 8, !taffo.initweight !16, !taffo.info !7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load double, double* %val.addr, align 8, !taffo.initweight !16, !taffo.info !7
  %cmp1 = fcmp ogt double %1, 2.550000e+02, !taffo.initweight !17, !taffo.info !7
  br i1 %cmp1, label %if.then2, label %if.end3, !taffo.initweight !18, !taffo.info !7

if.then2:                                         ; preds = %if.end
  store double 2.550000e+02, double* %val.addr, align 8, !taffo.initweight !16, !taffo.info !7
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %2 = load double, double* %val.addr, align 8, !taffo.initweight !16, !taffo.info !7
  ret double %2, !taffo.initweight !17, !taffo.info !7
}

; Function Attrs: noinline nounwind uwtable
define internal double @clip_rgb.2(double %val) #0 !taffo.initweight !10 !taffo.sourceFunction !11 !taffo.funinfo !15 {
entry:
  %val.addr = alloca double, align 8, !taffo.initweight !12, !taffo.info !7
  store double %val, double* %val.addr, align 8, !taffo.initweight !16, !taffo.info !7
  %0 = load double, double* %val.addr, align 8, !taffo.initweight !16, !taffo.info !7
  %cmp = fcmp olt double %0, 0.000000e+00, !taffo.initweight !17, !taffo.info !7
  br i1 %cmp, label %if.then, label %if.end, !taffo.initweight !18, !taffo.info !7

if.then:                                          ; preds = %entry
  store double 0.000000e+00, double* %val.addr, align 8, !taffo.initweight !16, !taffo.info !7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load double, double* %val.addr, align 8, !taffo.initweight !16, !taffo.info !7
  %cmp1 = fcmp ogt double %1, 2.550000e+02, !taffo.initweight !17, !taffo.info !7
  br i1 %cmp1, label %if.then2, label %if.end3, !taffo.initweight !18, !taffo.info !7

if.then2:                                         ; preds = %if.end
  store double 2.550000e+02, double* %val.addr, align 8, !taffo.initweight !16, !taffo.info !7
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %2 = load double, double* %val.addr, align 8, !taffo.initweight !16, !taffo.info !7
  ret double %2, !taffo.initweight !17, !taffo.info !7
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{i32 -1}
!3 = !{double (double)* @clip_rgb.1, double (double)* @clip_rgb.2}
!4 = !{i32 0, i1 false}
!5 = !{}
!6 = !{i32 0}
!7 = !{i1 false, !8, i1 false, i2 1}
!8 = !{double 0.000000e+00, double 2.560000e+02}
!9 = !{i32 1}
!10 = !{i32 2}
!11 = !{double (double)* @clip_rgb}
!12 = !{i32 3}
!13 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!14 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!15 = !{i32 1, !7}
!16 = !{i32 4}
!17 = !{i32 5}
!18 = !{i32 6}
