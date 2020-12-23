; ModuleID = './phi-and-math.out.3.taffotmp.ll'
source_filename = "./phi-and-math.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RGB = type { i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"scalar(range(0,256)) target('r')\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [17 x i8] c"./phi-and-math.c\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Pixel: %f %f %f\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Pixel: %d %d %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local double @clip_rgb(double %val) #0 !taffo.initweight !2 !taffo.equivalentChild !3 !taffo.funinfo !4 {
entry:
  %cmp = fcmp olt double %val, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %val.addr.0 = phi double [ 0.000000e+00, %if.then ], [ %val, %entry ]
  %cmp1 = fcmp ogt double %val.addr.0, 2.550000e+02
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %val.addr.1 = phi double [ 2.550000e+02, %if.then2 ], [ %val.addr.0, %if.end ]
  ret double %val.addr.1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !5 !taffo.funinfo !5 {
entry:
  %r = alloca double, align 8
  %y = alloca i32, align 4
  %cr = alloca i32, align 4
  %cb = alloca i32, align 4
  %pixels = alloca [5 x %struct.RGB], align 16
  %r1 = bitcast double* %r to i8*
  call void @llvm.var.annotation(i8* %r1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 22), !taffo.constinfo !6
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %y), !taffo.constinfo !7
  %call4 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %cr), !taffo.constinfo !7
  %call5 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %cb), !taffo.constinfo !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc47, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc48, %for.inc47 ]
  %cmp = icmp slt i32 %i.0, 5
  br i1 %cmp, label %for.body, label %for.end49

for.body:                                         ; preds = %for.cond
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %cmp7 = icmp slt i32 %j.0, 5
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %0 = load i32, i32* %y, align 4
  %conv = sitofp i32 %0 to double
  %1 = load i32, i32* %cr, align 4
  %conv9 = sitofp i32 %1 to double
  %mul = fmul double 1.402000e+00, %conv9, !taffo.constinfo !8
  %add = fadd double %conv, %mul
  %add10 = fadd double %add, 1.280000e+02, !taffo.constinfo !11
  store double %add10, double* %r, align 8
  %2 = load i32, i32* %y, align 4
  %conv11 = sitofp i32 %2 to double
  %3 = load i32, i32* %cb, align 4
  %conv12 = sitofp i32 %3 to double
  %mul13 = fmul double 3.441400e-01, %conv12, !taffo.constinfo !14
  %sub = fsub double %conv11, %mul13
  %4 = load i32, i32* %cr, align 4
  %conv14 = sitofp i32 %4 to double
  %mul15 = fmul double 7.141400e-01, %conv14, !taffo.constinfo !17
  %sub16 = fsub double %sub, %mul15
  %add17 = fadd double %sub16, 1.280000e+02, !taffo.constinfo !11
  %5 = load i32, i32* %y, align 4
  %conv18 = sitofp i32 %5 to double
  %6 = load i32, i32* %cb, align 4
  %conv19 = sitofp i32 %6 to double
  %mul20 = fmul double 1.772000e+00, %conv19, !taffo.constinfo !20
  %add21 = fadd double %conv18, %mul20
  %add22 = fadd double %add21, 1.280000e+02, !taffo.constinfo !11
  %7 = load double, double* %r, align 8
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), double %7, double %add17, double %add22), !taffo.initweight !23, !taffo.constinfo !6, !taffo.info !24
  %8 = load double, double* %r, align 8
  %call24 = call double @clip_rgb(double %8), !taffo.constinfo !26
  store double %call24, double* %r, align 8
  %call25 = call double @clip_rgb.1(double %add17), !taffo.initweight !23, !taffo.constinfo !26, !taffo.info !27, !taffo.originalCall !29
  %call26 = call double @clip_rgb.1(double %add22), !taffo.initweight !23, !taffo.constinfo !26, !taffo.info !27, !taffo.originalCall !29
  %9 = load double, double* %r, align 8
  %conv27 = fptosi double %9 to i32
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [5 x %struct.RGB], [5 x %struct.RGB]* %pixels, i64 0, i64 %idxprom
  %r28 = getelementptr inbounds %struct.RGB, %struct.RGB* %arrayidx, i32 0, i32 0
  store i32 %conv27, i32* %r28, align 4
  %conv29 = fptosi double %call25 to i32, !taffo.initweight !23, !taffo.info !30
  %idxprom30 = sext i32 %i.0 to i64
  %arrayidx31 = getelementptr inbounds [5 x %struct.RGB], [5 x %struct.RGB]* %pixels, i64 0, i64 %idxprom30
  %g32 = getelementptr inbounds %struct.RGB, %struct.RGB* %arrayidx31, i32 0, i32 1
  store i32 %conv29, i32* %g32, align 4, !taffo.initweight !31, !taffo.info !24
  %conv33 = fptosi double %call26 to i32, !taffo.initweight !23, !taffo.info !30
  %idxprom34 = sext i32 %i.0 to i64
  %arrayidx35 = getelementptr inbounds [5 x %struct.RGB], [5 x %struct.RGB]* %pixels, i64 0, i64 %idxprom34
  %b36 = getelementptr inbounds %struct.RGB, %struct.RGB* %arrayidx35, i32 0, i32 2
  store i32 %conv33, i32* %b36, align 4, !taffo.initweight !31, !taffo.info !24
  %idxprom37 = sext i32 %i.0 to i64
  %arrayidx38 = getelementptr inbounds [5 x %struct.RGB], [5 x %struct.RGB]* %pixels, i64 0, i64 %idxprom37
  %r39 = getelementptr inbounds %struct.RGB, %struct.RGB* %arrayidx38, i32 0, i32 0
  %10 = load i32, i32* %r39, align 4
  %idxprom40 = sext i32 %i.0 to i64
  %arrayidx41 = getelementptr inbounds [5 x %struct.RGB], [5 x %struct.RGB]* %pixels, i64 0, i64 %idxprom40
  %g42 = getelementptr inbounds %struct.RGB, %struct.RGB* %arrayidx41, i32 0, i32 1
  %11 = load i32, i32* %g42, align 4
  %idxprom43 = sext i32 %i.0 to i64
  %arrayidx44 = getelementptr inbounds [5 x %struct.RGB], [5 x %struct.RGB]* %pixels, i64 0, i64 %idxprom43
  %b45 = getelementptr inbounds %struct.RGB, %struct.RGB* %arrayidx44, i32 0, i32 2
  %12 = load i32, i32* %b45, align 4
  %call46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %10, i32 %11, i32 %12), !taffo.constinfo !6
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %inc = add nsw i32 %j.0, 1, !taffo.constinfo !26
  br label %for.cond6

for.end:                                          ; preds = %for.cond6
  br label %for.inc47

for.inc47:                                        ; preds = %for.end
  %inc48 = add nsw i32 %i.0, 1, !taffo.constinfo !26
  br label %for.cond

for.end49:                                        ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nounwind willreturn
declare !taffo.initweight !32 !taffo.funinfo !33 void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

declare !taffo.initweight !2 !taffo.funinfo !4 dso_local i32 @__isoc99_scanf(i8*, ...) #2

declare !taffo.initweight !2 !taffo.funinfo !4 dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal double @clip_rgb.1(double %val) #0 !taffo.initweight !23 !taffo.funinfo !34 !taffo.sourceFunction !29 {
entry:
  %cmp = fcmp olt double %val, 0.000000e+00, !taffo.initweight !35, !taffo.info !30
  br i1 %cmp, label %if.then, label %if.end, !taffo.initweight !36, !taffo.info !24

if.then:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %val.addr.0 = phi double [ 0.000000e+00, %if.then ], [ %val, %entry ], !taffo.info !30
  %cmp1 = fcmp ogt double %val.addr.0, 2.550000e+02, !taffo.initweight !35, !taffo.info !30
  br i1 %cmp1, label %if.then2, label %if.end3, !taffo.initweight !36, !taffo.info !24

if.then2:                                         ; preds = %if.end
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %val.addr.1 = phi double [ 2.550000e+02, %if.then2 ], [ %val.addr.0, %if.end ], !taffo.info !30
  ret double %val.addr.1, !taffo.initweight !35, !taffo.info !24
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{i32 -1}
!3 = !{double (double)* @clip_rgb.1, double (double)* @clip_rgb.1}
!4 = !{i32 0, i1 false}
!5 = !{}
!6 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!7 = !{i1 false, i1 false, i1 false}
!8 = !{!9, i1 false}
!9 = !{i1 false, !10, i1 false, i2 0}
!10 = !{double 1.402000e+00, double 1.402000e+00}
!11 = !{i1 false, !12}
!12 = !{i1 false, !13, i1 false, i2 0}
!13 = !{double 1.280000e+02, double 1.280000e+02}
!14 = !{!15, i1 false}
!15 = !{i1 false, !16, i1 false, i2 0}
!16 = !{double 3.441400e-01, double 3.441400e-01}
!17 = !{!18, i1 false}
!18 = !{i1 false, !19, i1 false, i2 0}
!19 = !{double 7.141400e-01, double 7.141400e-01}
!20 = !{!21, i1 false}
!21 = !{i1 false, !22, i1 false, i2 0}
!22 = !{double 1.772000e+00, double 1.772000e+00}
!23 = !{i32 2}
!24 = !{i1 false, !25, i1 false, i2 1}
!25 = !{double 0.000000e+00, double 2.560000e+02}
!26 = !{i1 false, i1 false}
!27 = !{!28, !25, i1 false, i2 1}
!28 = !{!"fixp", i32 32, i32 23}
!29 = !{double (double)* @clip_rgb}
!30 = !{!28, i1 false, i1 false, i2 1}
!31 = !{i32 3}
!32 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!33 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!34 = !{i32 1, !27}
!35 = !{i32 5}
!36 = !{i32 6}
