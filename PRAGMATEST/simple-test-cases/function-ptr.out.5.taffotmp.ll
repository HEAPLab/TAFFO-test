; ModuleID = './function-ptr.out.4.taffotmp.ll'
source_filename = "./function-ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@global = dso_local global float 0x400AA9FBE0000000, align 4, !taffo.initweight !0, !taffo.info !1
@.str = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [17 x i8] c"./function-ptr.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"-------------------\0A\00", align 1
@llvm.global.annotations = appending global [1 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (float* @global to i8*), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 6 }], section "llvm.metadata"

; Function Attrs: noinline nounwind uwtable
define dso_local float** @fun(float** %x, float* %y) #0 !taffo.initweight !4 !taffo.equivalentChild !5 !taffo.funinfo !6 {
entry:
  %0 = load float*, float** %x, align 8
  %1 = load float, float* %0, align 4
  %2 = load float, float* %y, align 4
  %mul = fmul float %1, %2
  %3 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %add = fadd float %mul, %3, !taffo.initweight !8, !taffo.info !1
  %4 = load float*, float** %x, align 8
  store float 0x4013F34D60000000, float* %4, align 4, !taffo.constinfo !9
  %conv = fpext float %add to double
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %conv), !taffo.constinfo !12
  ret float** %x
}

declare !taffo.initweight !13 !taffo.funinfo !14 dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !15 !taffo.funinfo !15 !taffo.start !16 {
entry:
  %a.u4_28fixp = alloca i32*, align 8, !taffo.info !17, !taffo.target !20
  %b.u4_28fixp = alloca i32, align 4, !taffo.info !17
  store i32 -1583769088, i32* %b.u4_28fixp, align 4, !taffo.info !1, !taffo.constinfo !21
  store i32* %b.u4_28fixp, i32** %a.u4_28fixp, align 8, !taffo.info !1, !taffo.target !20
  %call = call noalias i8* @malloc(i64 25) #3, !taffo.info !24, !taffo.constinfo !26
  %0 = bitcast i8* %call to float*, !taffo.info !24
  %arrayidx.flt.u3_29fixp = getelementptr inbounds float, float* %0, i64 0, !taffo.initweight !8, !taffo.info !27
  store float 0x3FB99999A0000000, float* %arrayidx.flt.u3_29fixp, align 4, !taffo.info !1, !taffo.constinfo !29
  %add.ptr.flt.u3_29fixp = getelementptr inbounds float, float* %0, i64 1, !taffo.initweight !8, !taffo.info !27
  store float 0x3FF19999A0000000, float* %add.ptr.flt.u3_29fixp, align 4, !taffo.info !1, !taffo.constinfo !32
  %arrayidx5.flt.u3_29fixp = getelementptr inbounds float, float* %0, i64 2, !taffo.initweight !8, !taffo.info !27
  store float 0x40019999A0000000, float* %arrayidx5.flt.u3_29fixp, align 4, !taffo.info !1, !taffo.constinfo !35
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !38
  %cmp = icmp slt i32 %i.0, 3, !taffo.info !40
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idx.ext = sext i32 %i.0 to i64, !taffo.info !42
  %add.ptr6.flt.u3_29fixp = getelementptr inbounds float, float* %0, i64 %idx.ext, !taffo.initweight !8, !taffo.info !27
  %.flt2 = load float, float* %add.ptr6.flt.u3_29fixp, align 4, !taffo.initweight !44, !taffo.info !45
  %1 = fmul float 0x41D0000000000000, %.flt2, !taffo.info !45
  %.flt2.fallback.u2_30fixp = fptoui float %1 to i32, !taffo.info !45
  %2 = uitofp i32 %.flt2.fallback.u2_30fixp to double, !taffo.info !45
  %3 = fdiv double %2, 0x41D0000000000000, !taffo.info !45
  %call7.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %3), !taffo.initweight !48, !taffo.info !49, !taffo.constinfo !12
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !50, !taffo.constinfo !26
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc16, %for.end
  %i8.0 = phi i32 [ 0, %for.end ], [ %inc17, %for.inc16 ], !taffo.info !52
  %cmp10 = icmp slt i32 %i8.0, 5, !taffo.info !40
  br i1 %cmp10, label %for.body12, label %for.end18

for.body12:                                       ; preds = %for.cond9
  %conv13 = sitofp i32 %i8.0 to float, !taffo.info !24
  %add = add nsw i32 %i8.0, 1, !taffo.info !54, !taffo.constinfo !26
  %conv14 = sitofp i32 %add to float, !taffo.info !54
  %div = fdiv float %conv13, %conv14, !taffo.info !24
  %idxprom = sext i32 %i8.0 to i64, !taffo.info !24
  %arrayidx15.flt.u3_29fixp = getelementptr inbounds float, float* %0, i64 %idxprom, !taffo.initweight !8, !taffo.info !27
  store float %div, float* %arrayidx15.flt.u3_29fixp, align 4, !taffo.info !1
  br label %for.inc16

for.inc16:                                        ; preds = %for.body12
  %inc17 = add nsw i32 %i8.0, 1, !taffo.info !54, !taffo.constinfo !26
  br label %for.cond9

for.end18:                                        ; preds = %for.cond9
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc28, %for.end18
  %i19.0 = phi i32 [ 0, %for.end18 ], [ %inc29, %for.inc28 ], !taffo.info !52
  %cmp21 = icmp slt i32 %i19.0, 5, !taffo.info !40
  br i1 %cmp21, label %for.body23, label %for.end30

for.body23:                                       ; preds = %for.cond20
  %idxprom24 = sext i32 %i19.0 to i64, !taffo.info !24
  %arrayidx25.flt.u3_29fixp = getelementptr inbounds float, float* %0, i64 %idxprom24, !taffo.initweight !8, !taffo.info !27
  %.flt = load float, float* %arrayidx25.flt.u3_29fixp, align 4, !taffo.initweight !44, !taffo.info !27
  %4 = fmul float 0x41C0000000000000, %.flt, !taffo.info !27
  %.flt.fallback.u3_29fixp = fptoui float %4 to i32, !taffo.info !27
  %5 = uitofp i32 %.flt.fallback.u3_29fixp to double, !taffo.info !27
  %6 = fdiv double %5, 0x41C0000000000000, !taffo.info !27
  %call27.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %6), !taffo.initweight !48, !taffo.info !56, !taffo.constinfo !12
  br label %for.inc28

for.inc28:                                        ; preds = %for.body23
  %inc29 = add nsw i32 %i19.0, 1, !taffo.info !54, !taffo.constinfo !26
  br label %for.cond20

for.end30:                                        ; preds = %for.cond20
  %u4_28fixp1 = load i32*, i32** %a.u4_28fixp, align 8, !taffo.info !17, !taffo.target !20
  %u4_28fixp4 = load i32, i32* %u4_28fixp1, align 4, !taffo.info !57, !taffo.target !20
  %7 = uitofp i32 %u4_28fixp4 to double, !taffo.info !57, !taffo.target !20
  %8 = fdiv double %7, 0x41B0000000000000, !taffo.info !57, !taffo.target !20
  %call32.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %8), !taffo.initweight !58, !taffo.info !59, !taffo.constinfo !12, !taffo.target !20
  %call33.u4_28fixp = call i32** @fun.1_u4_28fixp(i32** %a.u4_28fixp, i32* %b.u4_28fixp), !taffo.info !17, !taffo.constinfo !12, !taffo.target !20
  %u4_28fixp = load i32*, i32** %a.u4_28fixp, align 8, !taffo.info !17, !taffo.target !20
  %u4_28fixp3 = load i32, i32* %u4_28fixp, align 4, !taffo.info !17, !taffo.target !20
  %9 = uitofp i32 %u4_28fixp3 to double, !taffo.info !17, !taffo.target !20
  %10 = fdiv double %9, 0x41B0000000000000, !taffo.info !17, !taffo.target !20
  %call35.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %10), !taffo.initweight !58, !taffo.info !59, !taffo.constinfo !12, !taffo.target !20
  %u4_28fixp5 = load i32*, i32** %call33.u4_28fixp, align 8, !taffo.info !17
  %u4_28fixp6 = load i32, i32* %u4_28fixp5, align 4, !taffo.info !17
  %11 = uitofp i32 %u4_28fixp6 to double, !taffo.info !17
  %12 = fdiv double %11, 0x41B0000000000000, !taffo.info !17
  %call37.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %12), !taffo.initweight !48, !taffo.info !59, !taffo.constinfo !12
  %call38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0)), !taffo.constinfo !26
  ret i32 0
}

; Function Attrs: nounwind
declare !taffo.initweight !13 !taffo.funinfo !14 dso_local noalias i8* @malloc(i64) #2

; Function Attrs: noinline nounwind uwtable
define internal i32** @fun.1_u4_28fixp(i32** %x.u4_28fixp, i32* %y.u4_28fixp) #0 !taffo.initweight !60 !taffo.funinfo !61 !taffo.sourceFunction !62 {
entry:
  %u4_28fixp = load i32*, i32** %x.u4_28fixp, align 8, !taffo.info !17
  %u4_28fixp3 = load i32, i32* %u4_28fixp, align 4, !taffo.info !57
  %u4_28fixp2 = load i32, i32* %y.u4_28fixp, align 4, !taffo.info !57
  %0 = zext i32 %u4_28fixp3 to i64, !taffo.info !57
  %1 = zext i32 %u4_28fixp2 to i64, !taffo.info !57
  %2 = mul i64 %0, %1, !taffo.info !63
  %3 = lshr i64 %2, 31, !taffo.info !63
  %mul.u7_25fixp = trunc i64 %3 to i32, !taffo.info !66
  %4 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %5 = fmul float 0x4180000000000000, %4, !taffo.info !1
  %6 = fptoui float %5 to i32, !taffo.info !1
  %add.u7_25fixp = add i32 %mul.u7_25fixp, %6, !taffo.info !68
  %7 = uitofp i32 %add.u7_25fixp to float, !taffo.info !68
  %8 = fdiv float %7, 0x4180000000000000, !taffo.info !68
  %u4_28fixp1 = load i32*, i32** %x.u4_28fixp, align 8, !taffo.info !17
  store i32 1338848640, i32* %u4_28fixp1, align 4, !taffo.info !1, !taffo.constinfo !9
  %conv = fpext float %8 to double
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %conv), !taffo.constinfo !12
  ret i32** %x.u4_28fixp, !taffo.initweight !58, !taffo.info !1
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 0}
!1 = !{i1 false, i1 false, i1 false, i2 1}
!2 = !{i32 1, !"wchar_size", i32 4}
!3 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!4 = !{i32 -1, i32 -1}
!5 = distinct !{null}
!6 = !{i32 0, i1 false, i32 0, i1 false}
!7 = !{i32 1}
!8 = !{i32 2}
!9 = !{!10, i1 false}
!10 = !{i1 false, !11, i1 false, i2 0}
!11 = !{double 0x4013F34D60000000, double 0x4013F34D60000000}
!12 = !{i1 false, i1 false, i1 false}
!13 = !{i32 -1}
!14 = !{i32 0, i1 false}
!15 = !{}
!16 = !{i1 true}
!17 = !{!18, !19, i1 false, i2 1}
!18 = !{!"fixp", i32 32, i32 28}
!19 = !{double 0x4013F34D60000000, double 0x4024333340000000}
!20 = !{!"a"}
!21 = !{!22, i1 false}
!22 = !{i1 false, !23, i1 false, i2 0}
!23 = !{double 0x4024333340000000, double 0x4024333340000000}
!24 = !{i1 false, !25, i1 false, i2 0}
!25 = !{double 0.000000e+00, double 5.000000e+00}
!26 = !{i1 false, i1 false}
!27 = !{!28, !25, i1 false, i2 1}
!28 = !{!"fixp", i32 32, i32 29}
!29 = !{!30, i1 false}
!30 = !{i1 false, !31, i1 false, i2 0}
!31 = !{double 0x3FB99999A0000000, double 0x3FB99999A0000000}
!32 = !{!33, i1 false}
!33 = !{i1 false, !34, i1 false, i2 0}
!34 = !{double 0x3FF19999A0000000, double 0x3FF19999A0000000}
!35 = !{!36, i1 false}
!36 = !{i1 false, !37, i1 false, i2 0}
!37 = !{double 0x40019999A0000000, double 0x40019999A0000000}
!38 = !{i1 false, !39, i1 false, i2 0}
!39 = !{double 0.000000e+00, double 4.000000e+00}
!40 = !{i1 false, !41, i1 false, i2 0}
!41 = !{double 0.000000e+00, double 1.000000e+00}
!42 = !{i1 false, !43, i1 false, i2 0}
!43 = !{double 0.000000e+00, double 3.000000e+00}
!44 = !{i32 3}
!45 = !{!46, !47, i1 false, i2 1}
!46 = !{!"fixp", i32 32, i32 30}
!47 = !{double 0x3FB99999A0000000, double 0x40019999A0000000}
!48 = !{i32 5}
!49 = !{!46, i1 false, i1 false, i2 1}
!50 = !{i1 false, !51, i1 false, i2 0}
!51 = !{double 1.000000e+00, double 4.000000e+00}
!52 = !{i1 false, !53, i1 false, i2 0}
!53 = !{double 0.000000e+00, double 6.000000e+00}
!54 = !{i1 false, !55, i1 false, i2 0}
!55 = !{double 1.000000e+00, double 6.000000e+00}
!56 = !{!28, i1 false, i1 false, i2 1}
!57 = !{!18, !23, i1 false, i2 1}
!58 = !{i32 4}
!59 = !{!18, i1 false, i1 false, i2 1}
!60 = !{i32 1, i32 1}
!61 = !{i32 1, !17, i32 1, !17}
!62 = !{float** (float**, float*)* @fun}
!63 = !{!64, !65, i1 false, i2 1}
!64 = !{!"fixp", i32 64, i32 56}
!65 = !{double 0x405980A3F75C2900, double 0x405980A3F75C2900}
!66 = !{!67, !65, i1 false, i2 1}
!67 = !{!"fixp", i32 32, i32 25}
!68 = !{!67, i1 false, i1 false, i2 1}
