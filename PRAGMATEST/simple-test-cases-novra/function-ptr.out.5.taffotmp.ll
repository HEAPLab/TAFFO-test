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
@global.fixp = global i64 55918460, align 4, !taffo.info !1

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
  %s40_24fixp = load i64, i64* @global.fixp, align 4, !taffo.info !1
  %5 = fmul float 0x4170000000000000, %mul, !taffo.info !1
  %6 = fptosi float %5 to i64, !taffo.info !1
  %add.s40_24fixp = add i64 %6, %s40_24fixp, !taffo.info !1
  %7 = sitofp i64 %add.s40_24fixp to float, !taffo.info !1
  %8 = fdiv float %7, 0x4170000000000000, !taffo.info !1
  store float %8, float* %local, align 4, !taffo.info !9
  %9 = load float**, float*** %x.addr, align 8
  %10 = load float*, float** %9, align 8
  store float 0x4013F34D60000000, float* %10, align 4
  %11 = load float, float* %local, align 4
  %conv = fpext float %11 to double
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %conv)
  %12 = load float**, float*** %x.addr, align 8
  ret float** %12
}

declare !taffo.initweight !10 !taffo.funinfo !11 dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !12 !taffo.funinfo !12 {
entry:
  %retval = alloca i32, align 4
  %a.s35_29fixp = alloca i64*, align 8, !taffo.info !13
  %b.s35_29fixp = alloca i64, align 4, !taffo.info !13
  %c = alloca float, align 4
  %k.s35_29fixp = alloca i64**, align 8, !taffo.info !13
  %mall.s26_6fixp = alloca i32*, align 8, !taffo.info !16
  %i = alloca i32, align 4
  %i8 = alloca i32, align 4
  %i19 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i64 5422396416, i64* %b.s35_29fixp, align 4, !taffo.info !19
  store float 0x40019999A0000000, float* %c, align 4
  store i64* %b.s35_29fixp, i64** %a.s35_29fixp, align 8, !taffo.info !19
  %call = call i8* @malloc(i64 25)
  %0 = bitcast i8* %call to float*
  %1 = bitcast float* %0 to i32*
  store i32* %1, i32** %mall.s26_6fixp, align 8, !taffo.info !20
  %s26_6fixp7 = load i32*, i32** %mall.s26_6fixp, align 8, !taffo.info !16
  %arrayidx.s26_6fixp = getelementptr inbounds i32, i32* %s26_6fixp7, i64 0, !taffo.info !16
  store i32 6, i32* %arrayidx.s26_6fixp, align 4, !taffo.info !20
  %s26_6fixp6 = load i32*, i32** %mall.s26_6fixp, align 8, !taffo.info !16
  %add.ptr.s26_6fixp = getelementptr inbounds i32, i32* %s26_6fixp6, i64 1, !taffo.info !16
  store i32 70, i32* %add.ptr.s26_6fixp, align 4, !taffo.info !20
  %s26_6fixp5 = load i32*, i32** %mall.s26_6fixp, align 8, !taffo.info !16
  %arrayidx5.s26_6fixp = getelementptr inbounds i32, i32* %s26_6fixp5, i64 2, !taffo.info !16
  store i32 140, i32* %arrayidx5.s26_6fixp, align 4, !taffo.info !20
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %s26_6fixp4 = load i32*, i32** %mall.s26_6fixp, align 8, !taffo.info !16
  %3 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr6.s26_6fixp = getelementptr inbounds i32, i32* %s26_6fixp4, i64 %idx.ext, !taffo.info !16
  %s26_6fixp13 = load i32, i32* %add.ptr6.s26_6fixp, align 4, !taffo.info !16
  %4 = sitofp i32 %s26_6fixp13 to double, !taffo.info !16
  %5 = fdiv double %4, 6.400000e+01, !taffo.info !16
  %call7.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %5), !taffo.initweight !21, !taffo.info !22
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i8, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc16, %for.end
  %7 = load i32, i32* %i8, align 4
  %cmp10 = icmp slt i32 %7, 5
  br i1 %cmp10, label %for.body12, label %for.end18

for.body12:                                       ; preds = %for.cond9
  %8 = load i32, i32* %i8, align 4
  %conv13 = sitofp i32 %8 to float
  %9 = load i32, i32* %i8, align 4
  %add = add nsw i32 %9, 1
  %conv14 = sitofp i32 %add to float
  %div = fdiv float %conv13, %conv14
  %10 = fmul float 6.400000e+01, %div, !taffo.info !16
  %11 = fptosi float %10 to i32, !taffo.info !16
  %s26_6fixp3 = load i32*, i32** %mall.s26_6fixp, align 8, !taffo.info !16
  %12 = load i32, i32* %i8, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx15.s26_6fixp = getelementptr inbounds i32, i32* %s26_6fixp3, i64 %idxprom, !taffo.info !16
  store i32 %11, i32* %arrayidx15.s26_6fixp, align 4, !taffo.info !20
  br label %for.inc16

for.inc16:                                        ; preds = %for.body12
  %13 = load i32, i32* %i8, align 4
  %inc17 = add nsw i32 %13, 1
  store i32 %inc17, i32* %i8, align 4
  br label %for.cond9

for.end18:                                        ; preds = %for.cond9
  store i32 0, i32* %i19, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc28, %for.end18
  %14 = load i32, i32* %i19, align 4
  %cmp21 = icmp slt i32 %14, 5
  br i1 %cmp21, label %for.body23, label %for.end30

for.body23:                                       ; preds = %for.cond20
  %s26_6fixp = load i32*, i32** %mall.s26_6fixp, align 8, !taffo.info !16
  %15 = load i32, i32* %i19, align 4
  %idxprom24 = sext i32 %15 to i64
  %arrayidx25.s26_6fixp = getelementptr inbounds i32, i32* %s26_6fixp, i64 %idxprom24, !taffo.info !16
  %s26_6fixp12 = load i32, i32* %arrayidx25.s26_6fixp, align 4, !taffo.info !16
  %16 = sitofp i32 %s26_6fixp12 to double, !taffo.info !16
  %17 = fdiv double %16, 6.400000e+01, !taffo.info !16
  %call27.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %17), !taffo.initweight !21, !taffo.info !22
  br label %for.inc28

for.inc28:                                        ; preds = %for.body23
  %18 = load i32, i32* %i19, align 4
  %inc29 = add nsw i32 %18, 1
  store i32 %inc29, i32* %i19, align 4
  br label %for.cond20

for.end30:                                        ; preds = %for.cond20
  %s35_29fixp2 = load i64*, i64** %a.s35_29fixp, align 8, !taffo.info !13
  %s35_29fixp10 = load i64, i64* %s35_29fixp2, align 4, !taffo.info !13
  %19 = sitofp i64 %s35_29fixp10 to double, !taffo.info !13
  %20 = fdiv double %19, 0x41C0000000000000, !taffo.info !13
  %call32.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %20), !taffo.initweight !23, !taffo.info !24
  %call33.s35_29fixp = call i64** @fun.1_s35_29fixp(i64** %a.s35_29fixp, i64* %b.s35_29fixp), !taffo.info !13
  store i64** %call33.s35_29fixp, i64*** %k.s35_29fixp, align 8, !taffo.info !19
  %s35_29fixp1 = load i64*, i64** %a.s35_29fixp, align 8, !taffo.info !13
  %s35_29fixp9 = load i64, i64* %s35_29fixp1, align 4, !taffo.info !13
  %21 = sitofp i64 %s35_29fixp9 to double, !taffo.info !13
  %22 = fdiv double %21, 0x41C0000000000000, !taffo.info !13
  %call35.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %22), !taffo.initweight !23, !taffo.info !24
  %s35_29fixp = load i64**, i64*** %k.s35_29fixp, align 8, !taffo.info !13
  %s35_29fixp8 = load i64*, i64** %s35_29fixp, align 8, !taffo.info !13
  %s35_29fixp11 = load i64, i64* %s35_29fixp8, align 4, !taffo.info !13
  %23 = sitofp i64 %s35_29fixp11 to double, !taffo.info !13
  %24 = fdiv double %23, 0x41C0000000000000, !taffo.info !13
  %call37.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %24), !taffo.initweight !21, !taffo.info !24
  %call38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  ret i32 0
}

declare !taffo.initweight !10 !taffo.funinfo !11 dso_local i8* @malloc(i64) #1

; Function Attrs: noinline nounwind uwtable
define internal i64** @fun.1_s35_29fixp(i64** %x.s35_29fixp, i64* %y.s35_29fixp) #0 !taffo.initweight !25 !taffo.funinfo !26 !taffo.sourceFunction !27 {
entry:
  %x.addr.s35_29fixp = alloca i64**, align 8, !taffo.info !13
  %y.addr.s35_29fixp = alloca i64*, align 8, !taffo.info !13
  %local = alloca float, align 4
  store i64** %x.s35_29fixp, i64*** %x.addr.s35_29fixp, align 8, !taffo.info !19
  store i64* %y.s35_29fixp, i64** %y.addr.s35_29fixp, align 8, !taffo.info !19
  %s35_29fixp2 = load i64**, i64*** %x.addr.s35_29fixp, align 8, !taffo.info !13
  %s35_29fixp5 = load i64*, i64** %s35_29fixp2, align 8, !taffo.info !13
  %s35_29fixp7 = load i64, i64* %s35_29fixp5, align 4, !taffo.info !13
  %s35_29fixp3 = load i64*, i64** %y.addr.s35_29fixp, align 8, !taffo.info !13
  %s35_29fixp6 = load i64, i64* %s35_29fixp3, align 4, !taffo.info !13
  %0 = sext i64 %s35_29fixp7 to i128, !taffo.info !13
  %1 = sext i64 %s35_29fixp6 to i128, !taffo.info !13
  %2 = mul i128 %0, %1, !taffo.info !28
  %3 = ashr i128 %2, 29, !taffo.info !28
  %mul.s35_29fixp = trunc i128 %3 to i64, !taffo.info !13
  %s40_24fixp = load i64, i64* @global.fixp, align 4, !taffo.info !1
  %4 = ashr i64 %mul.s35_29fixp, 5, !taffo.info !13
  %add.s40_24fixp = add i64 %4, %s40_24fixp, !taffo.info !1
  %5 = sitofp i64 %add.s40_24fixp to float, !taffo.info !1
  %6 = fdiv float %5, 0x4170000000000000, !taffo.info !1
  store float %6, float* %local, align 4, !taffo.info !9
  %s35_29fixp1 = load i64**, i64*** %x.addr.s35_29fixp, align 8, !taffo.info !13
  %s35_29fixp4 = load i64*, i64** %s35_29fixp1, align 8, !taffo.info !13
  store i64 2677697280, i64* %s35_29fixp4, align 4, !taffo.info !19
  %7 = load float, float* %local, align 4
  %conv = fpext float %7 to double
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %conv)
  %s35_29fixp = load i64**, i64*** %x.addr.s35_29fixp, align 8, !taffo.info !13
  ret i64** %s35_29fixp, !taffo.initweight !23, !taffo.info !19
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
!7 = distinct !{null}
!8 = !{i32 0, i1 false, i32 0, i1 false}
!9 = !{i1 false, !3, i1 false, i2 1}
!10 = !{i32 -1}
!11 = !{i32 0, i1 false}
!12 = !{}
!13 = !{!14, !15, i1 false, i2 1}
!14 = !{!"fixp", i32 -64, i32 29}
!15 = !{double -1.350000e+10, double 1.350000e+10}
!16 = !{!17, !18, i1 false, i2 1}
!17 = !{!"fixp", i32 -32, i32 6}
!18 = !{double -2.000000e+07, double 2.000000e+07}
!19 = !{i1 false, !15, i1 false, i2 1}
!20 = !{i1 false, !18, i1 false, i2 1}
!21 = !{i32 5}
!22 = !{!17, i1 false, i1 false, i2 1}
!23 = !{i32 4}
!24 = !{!14, i1 false, i1 false, i2 1}
!25 = !{i32 1, i32 1}
!26 = !{i32 1, !13, i32 1, !13}
!27 = !{float** (float**, float*)* @fun}
!28 = !{!29, !15, i1 false, i2 1}
!29 = !{!"fixp", i32 -128, i32 58}
