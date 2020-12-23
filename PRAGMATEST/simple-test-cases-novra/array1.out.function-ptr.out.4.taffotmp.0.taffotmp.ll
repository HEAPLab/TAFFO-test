; ModuleID = './function-ptr.out.4.taffotmp.ll'
source_filename = "./function-ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@global = dso_local global float 0x400AA9FBE0000000, align 4, !taffo.initweight !0, !taffo.info !1
@.str = private unnamed_addr constant [33 x i8] c"range -540000000000 540000000000\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [17 x i8] c"./function-ptr.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"-------------------\0A\00", align 1
@llvm.global.annotations = appending global [1 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (float* @global to i8*), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 3 }], section "llvm.metadata"

; Function Attrs: noinline nounwind uwtable
define dso_local float** @fun(float** %x, float* %y) #0 !taffo.initweight !6 !taffo.equivalentChild !7 !taffo.funinfo !8 {
entry:
  %x.addr = alloca float**, align 8
  %y.addr = alloca float*, align 8
  %local = alloca float, align 4
  store float** %x, float*** %x.addr, align 8
  store float* %y, float** %y.addr, align 8
  %0 = load float**, float*** %x.addr, align 8
  %1 = load float*, float** %0, align 8
  %2 = load float, float* %1, align 4
  %3 = load float*, float** %y.addr, align 8
  %4 = load float, float* %3, align 4
  %mul = fmul float %2, %4
  %5 = load float, float* @global, align 4, !taffo.initweight !9, !taffo.info !1
  %add = fadd float %mul, %5, !taffo.initweight !10, !taffo.info !1
  store float %add, float* %local, align 4, !taffo.initweight !11, !taffo.info !12
  %6 = load float**, float*** %x.addr, align 8
  %7 = load float*, float** %6, align 8
  store float 0x4013F34D60000000, float* %7, align 4
  %8 = load float, float* %local, align 4
  %conv = fpext float %8 to double
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %conv)
  %9 = load float**, float*** %x.addr, align 8
  ret float** %9
}

declare !taffo.initweight !13 !taffo.funinfo !14 dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !15 !taffo.funinfo !15 {
entry:
  %retval = alloca i32, align 4
  %a = alloca float*, align 8, !taffo.initweight !0, !taffo.info !16
  %b = alloca float, align 4, !taffo.initweight !0, !taffo.info !16
  %c = alloca float, align 4
  %k = alloca float**, align 8, !taffo.initweight !0, !taffo.info !16
  %mall = alloca float*, align 8, !taffo.initweight !0, !taffo.info !19
  %i = alloca i32, align 4
  %i8 = alloca i32, align 4
  %i19 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %a1 = bitcast float** %a to i8*, !taffo.initweight !9, !taffo.info !22
  %b2 = bitcast float* %b to i8*, !taffo.initweight !9, !taffo.info !22
  store float 0x4024333340000000, float* %b, align 4, !taffo.initweight !9, !taffo.info !23
  store float 0x40019999A0000000, float* %c, align 4
  store float* %b, float** %a, align 8, !taffo.initweight !9, !taffo.info !23
  %k3 = bitcast float*** %k to i8*, !taffo.initweight !9, !taffo.info !22
  %mall4 = bitcast float** %mall to i8*, !taffo.initweight !9, !taffo.info !24
  %call = call i8* @malloc(i64 25)
  %0 = bitcast i8* %call to float*
  store float* %0, float** %mall, align 8, !taffo.initweight !9, !taffo.info !25
  %1 = load float*, float** %mall, align 8, !taffo.initweight !9, !taffo.info !19
  %arrayidx = getelementptr inbounds float, float* %1, i64 0, !taffo.initweight !10, !taffo.info !19
  store float 0x3FB99999A0000000, float* %arrayidx, align 4, !taffo.initweight !11, !taffo.info !25
  %2 = load float*, float** %mall, align 8, !taffo.initweight !9, !taffo.info !19
  %add.ptr = getelementptr inbounds float, float* %2, i64 1, !taffo.initweight !10, !taffo.info !19
  store float 0x3FF19999A0000000, float* %add.ptr, align 4, !taffo.initweight !11, !taffo.info !25
  %3 = load float*, float** %mall, align 8, !taffo.initweight !9, !taffo.info !19
  %arrayidx5 = getelementptr inbounds float, float* %3, i64 2, !taffo.initweight !10, !taffo.info !19
  store float 0x40019999A0000000, float* %arrayidx5, align 4, !taffo.initweight !11, !taffo.info !25
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %4, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load float*, float** %mall, align 8, !taffo.initweight !9, !taffo.info !19
  %6 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %6 to i64
  %add.ptr6 = getelementptr inbounds float, float* %5, i64 %idx.ext, !taffo.initweight !10, !taffo.info !19
  %7 = load float, float* %add.ptr6, align 4, !taffo.initweight !11, !taffo.info !19
  %conv = fpext float %7 to double, !taffo.initweight !26, !taffo.info !19
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %conv), !taffo.initweight !27, !taffo.info !24
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i8, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc16, %for.end
  %9 = load i32, i32* %i8, align 4
  %cmp10 = icmp slt i32 %9, 5
  br i1 %cmp10, label %for.body12, label %for.end18

for.body12:                                       ; preds = %for.cond9
  %10 = load i32, i32* %i8, align 4
  %conv13 = sitofp i32 %10 to float
  %11 = load i32, i32* %i8, align 4
  %add = add nsw i32 %11, 1
  %conv14 = sitofp i32 %add to float
  %div = fdiv float %conv13, %conv14
  %12 = load float*, float** %mall, align 8, !taffo.initweight !9, !taffo.info !19
  %13 = load i32, i32* %i8, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx15 = getelementptr inbounds float, float* %12, i64 %idxprom, !taffo.initweight !10, !taffo.info !19
  store float %div, float* %arrayidx15, align 4, !taffo.initweight !11, !taffo.info !25
  br label %for.inc16

for.inc16:                                        ; preds = %for.body12
  %14 = load i32, i32* %i8, align 4
  %inc17 = add nsw i32 %14, 1
  store i32 %inc17, i32* %i8, align 4
  br label %for.cond9

for.end18:                                        ; preds = %for.cond9
  store i32 0, i32* %i19, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc28, %for.end18
  %15 = load i32, i32* %i19, align 4
  %cmp21 = icmp slt i32 %15, 5
  br i1 %cmp21, label %for.body23, label %for.end30

for.body23:                                       ; preds = %for.cond20
  %16 = load float*, float** %mall, align 8, !taffo.initweight !9, !taffo.info !19
  %17 = load i32, i32* %i19, align 4
  %idxprom24 = sext i32 %17 to i64
  %arrayidx25 = getelementptr inbounds float, float* %16, i64 %idxprom24, !taffo.initweight !10, !taffo.info !19
  %18 = load float, float* %arrayidx25, align 4, !taffo.initweight !11, !taffo.info !19
  %conv26 = fpext float %18 to double, !taffo.initweight !26, !taffo.info !19
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %conv26), !taffo.initweight !27, !taffo.info !24
  br label %for.inc28

for.inc28:                                        ; preds = %for.body23
  %19 = load i32, i32* %i19, align 4
  %inc29 = add nsw i32 %19, 1
  store i32 %inc29, i32* %i19, align 4
  br label %for.cond20

for.end30:                                        ; preds = %for.cond20
  %20 = load float*, float** %a, align 8, !taffo.initweight !9, !taffo.info !16
  %21 = load float, float* %20, align 4, !taffo.initweight !10, !taffo.info !16
  %conv31 = fpext float %21 to double, !taffo.initweight !11, !taffo.info !16
  %call32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %conv31), !taffo.initweight !26, !taffo.info !22
  %call33 = call float** @fun.1(float** %a, float* %b), !taffo.initweight !9, !taffo.info !16, !taffo.originalCall !28
  store float** %call33, float*** %k, align 8, !taffo.initweight !9, !taffo.info !23
  %22 = load float*, float** %a, align 8, !taffo.initweight !9, !taffo.info !16
  %23 = load float, float* %22, align 4, !taffo.initweight !10, !taffo.info !16
  %conv34 = fpext float %23 to double, !taffo.initweight !11, !taffo.info !16
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %conv34), !taffo.initweight !26, !taffo.info !22
  %24 = load float**, float*** %k, align 8, !taffo.initweight !9, !taffo.info !16
  %25 = load float*, float** %24, align 8, !taffo.initweight !10, !taffo.info !16
  %26 = load float, float* %25, align 4, !taffo.initweight !11, !taffo.info !16
  %conv36 = fpext float %26 to double, !taffo.initweight !26, !taffo.info !16
  %call37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %conv36), !taffo.initweight !27, !taffo.info !22
  %call38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  ret i32 0
}

declare !taffo.initweight !13 !taffo.funinfo !14 dso_local i8* @malloc(i64) #1

; Function Attrs: noinline nounwind uwtable
define internal float** @fun.1(float** %x, float* %y) #0 !taffo.initweight !29 !taffo.funinfo !30 !taffo.sourceFunction !28 {
entry:
  %x.addr = alloca float**, align 8, !taffo.initweight !10, !taffo.info !16
  %y.addr = alloca float*, align 8, !taffo.initweight !10, !taffo.info !16
  %local = alloca float, align 4
  store float** %x, float*** %x.addr, align 8, !taffo.initweight !11, !taffo.info !23
  store float* %y, float** %y.addr, align 8, !taffo.initweight !11, !taffo.info !23
  %0 = load float**, float*** %x.addr, align 8, !taffo.initweight !11, !taffo.info !16
  %1 = load float*, float** %0, align 8, !taffo.initweight !26, !taffo.info !16
  %2 = load float, float* %1, align 4, !taffo.initweight !27, !taffo.info !16
  %3 = load float*, float** %y.addr, align 8, !taffo.initweight !11, !taffo.info !16
  %4 = load float, float* %3, align 4, !taffo.initweight !26, !taffo.info !16
  %mul = fmul float %2, %4, !taffo.initweight !27, !taffo.info !16
  %5 = load float, float* @global, align 4, !taffo.initweight !9, !taffo.info !1
  %add = fadd float %mul, %5, !taffo.initweight !10, !taffo.info !1
  store float %add, float* %local, align 4, !taffo.initweight !11, !taffo.info !12
  %6 = load float**, float*** %x.addr, align 8, !taffo.initweight !11, !taffo.info !16
  %7 = load float*, float** %6, align 8, !taffo.initweight !26, !taffo.info !16
  store float 0x4013F34D60000000, float* %7, align 4, !taffo.initweight !27, !taffo.info !23
  %8 = load float, float* %local, align 4
  %conv = fpext float %8 to double
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %conv)
  %9 = load float**, float*** %x.addr, align 8, !taffo.initweight !11, !taffo.info !16
  ret float** %9, !taffo.initweight !26, !taffo.info !23
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!4}
!llvm.ident = !{!5}

!0 = !{i32 0}
!1 = !{!2, !3, i1 false, i2 1}
!2 = !{!"fixp", i32 -64, i32 24}
!3 = !{double -5.400000e+11, double 5.400000e+11}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!6 = !{i32 -1, i32 -1}
!7 = !{float** (float**, float*)* @fun.1}
!8 = !{i32 0, i1 false, i32 0, i1 false}
!9 = !{i32 1}
!10 = !{i32 2}
!11 = !{i32 3}
!12 = !{i1 false, !3, i1 false, i2 1}
!13 = !{i32 -1}
!14 = !{i32 0, i1 false}
!15 = !{}
!16 = !{!17, !18, i1 false, i2 1}
!17 = !{!"fixp", i32 -64, i32 29}
!18 = !{double -1.350000e+10, double 1.350000e+10}
!19 = !{!20, !21, i1 false, i2 1}
!20 = !{!"fixp", i32 -32, i32 6}
!21 = !{double -2.000000e+07, double 2.000000e+07}
!22 = !{!17, i1 false, i1 false, i2 1}
!23 = !{i1 false, !18, i1 false, i2 1}
!24 = !{!20, i1 false, i1 false, i2 1}
!25 = !{i1 false, !21, i1 false, i2 1}
!26 = !{i32 4}
!27 = !{i32 5}
!28 = !{float** (float**, float*)* @fun}
!29 = !{i32 1, i32 1}
!30 = !{i32 1, !16, i32 1, !16}
