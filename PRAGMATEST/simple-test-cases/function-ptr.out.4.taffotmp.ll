; ModuleID = './function-ptr.out.3.taffotmp.ll'
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
  %a = alloca float*, align 8, !taffo.initweight !0, !taffo.info !17, !taffo.target !20
  %b = alloca float, align 4, !taffo.initweight !0, !taffo.info !17
  %a1 = bitcast float** %a to i8*, !taffo.initweight !7, !taffo.info !21, !taffo.target !20
  %b2 = bitcast float* %b to i8*, !taffo.initweight !7, !taffo.info !21
  store float 0x4024333340000000, float* %b, align 4, !taffo.initweight !7, !taffo.info !1, !taffo.constinfo !22
  store float* %b, float** %a, align 8, !taffo.initweight !7, !taffo.info !1, !taffo.target !20
  %call = call noalias i8* @malloc(i64 25) #3, !taffo.info !25, !taffo.constinfo !27
  %0 = bitcast i8* %call to float*, !taffo.info !25
  %arrayidx = getelementptr inbounds float, float* %0, i64 0, !taffo.initweight !8, !taffo.info !28
  store float 0x3FB99999A0000000, float* %arrayidx, align 4, !taffo.initweight !30, !taffo.info !1, !taffo.constinfo !31
  %add.ptr = getelementptr inbounds float, float* %0, i64 1, !taffo.initweight !8, !taffo.info !28
  store float 0x3FF19999A0000000, float* %add.ptr, align 4, !taffo.initweight !30, !taffo.info !1, !taffo.constinfo !34
  %arrayidx5 = getelementptr inbounds float, float* %0, i64 2, !taffo.initweight !8, !taffo.info !28
  store float 0x40019999A0000000, float* %arrayidx5, align 4, !taffo.initweight !30, !taffo.info !1, !taffo.constinfo !37
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !40
  %cmp = icmp slt i32 %i.0, 3, !taffo.info !42
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idx.ext = sext i32 %i.0 to i64, !taffo.info !44
  %add.ptr6 = getelementptr inbounds float, float* %0, i64 %idx.ext, !taffo.initweight !8, !taffo.info !28
  %1 = load float, float* %add.ptr6, align 4, !taffo.initweight !30, !taffo.info !46
  %conv = fpext float %1 to double, !taffo.initweight !49, !taffo.info !46
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %conv), !taffo.initweight !50, !taffo.info !51, !taffo.constinfo !12
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !52, !taffo.constinfo !27
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc16, %for.end
  %i8.0 = phi i32 [ 0, %for.end ], [ %inc17, %for.inc16 ], !taffo.info !54
  %cmp10 = icmp slt i32 %i8.0, 5, !taffo.info !42
  br i1 %cmp10, label %for.body12, label %for.end18

for.body12:                                       ; preds = %for.cond9
  %conv13 = sitofp i32 %i8.0 to float, !taffo.info !25
  %add = add nsw i32 %i8.0, 1, !taffo.info !56, !taffo.constinfo !27
  %conv14 = sitofp i32 %add to float, !taffo.info !56
  %div = fdiv float %conv13, %conv14, !taffo.info !25
  %idxprom = sext i32 %i8.0 to i64, !taffo.info !25
  %arrayidx15 = getelementptr inbounds float, float* %0, i64 %idxprom, !taffo.initweight !8, !taffo.info !28
  store float %div, float* %arrayidx15, align 4, !taffo.initweight !30, !taffo.info !1
  br label %for.inc16

for.inc16:                                        ; preds = %for.body12
  %inc17 = add nsw i32 %i8.0, 1, !taffo.info !56, !taffo.constinfo !27
  br label %for.cond9

for.end18:                                        ; preds = %for.cond9
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc28, %for.end18
  %i19.0 = phi i32 [ 0, %for.end18 ], [ %inc29, %for.inc28 ], !taffo.info !54
  %cmp21 = icmp slt i32 %i19.0, 5, !taffo.info !42
  br i1 %cmp21, label %for.body23, label %for.end30

for.body23:                                       ; preds = %for.cond20
  %idxprom24 = sext i32 %i19.0 to i64, !taffo.info !25
  %arrayidx25 = getelementptr inbounds float, float* %0, i64 %idxprom24, !taffo.initweight !8, !taffo.info !28
  %2 = load float, float* %arrayidx25, align 4, !taffo.initweight !30, !taffo.info !28
  %conv26 = fpext float %2 to double, !taffo.initweight !49, !taffo.info !28
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %conv26), !taffo.initweight !50, !taffo.info !58, !taffo.constinfo !12
  br label %for.inc28

for.inc28:                                        ; preds = %for.body23
  %inc29 = add nsw i32 %i19.0, 1, !taffo.info !56, !taffo.constinfo !27
  br label %for.cond20

for.end30:                                        ; preds = %for.cond20
  %3 = load float*, float** %a, align 8, !taffo.initweight !7, !taffo.info !17, !taffo.target !20
  %4 = load float, float* %3, align 4, !taffo.initweight !8, !taffo.info !59, !taffo.target !20
  %conv31 = fpext float %4 to double, !taffo.initweight !30, !taffo.info !59, !taffo.target !20
  %call32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %conv31), !taffo.initweight !49, !taffo.info !21, !taffo.constinfo !12, !taffo.target !20
  %call33 = call float** @fun.1(float** %a, float* %b), !taffo.initweight !7, !taffo.info !17, !taffo.constinfo !12, !taffo.target !20, !taffo.originalCall !60
  %5 = load float*, float** %a, align 8, !taffo.initweight !7, !taffo.info !17, !taffo.target !20
  %6 = load float, float* %5, align 4, !taffo.initweight !8, !taffo.info !17, !taffo.target !20
  %conv34 = fpext float %6 to double, !taffo.initweight !30, !taffo.info !17, !taffo.target !20
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %conv34), !taffo.initweight !49, !taffo.info !21, !taffo.constinfo !12, !taffo.target !20
  %7 = load float*, float** %call33, align 8, !taffo.initweight !8, !taffo.info !17
  %8 = load float, float* %7, align 4, !taffo.initweight !30, !taffo.info !17
  %conv36 = fpext float %8 to double, !taffo.initweight !49, !taffo.info !17
  %call37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %conv36), !taffo.initweight !50, !taffo.info !21, !taffo.constinfo !12
  %call38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0)), !taffo.constinfo !27
  ret i32 0
}

; Function Attrs: nounwind
declare !taffo.initweight !13 !taffo.funinfo !14 dso_local noalias i8* @malloc(i64) #2

; Function Attrs: noinline nounwind uwtable
define internal float** @fun.1(float** %x, float* %y) #0 !taffo.initweight !61 !taffo.funinfo !62 !taffo.sourceFunction !60 {
entry:
  %0 = load float*, float** %x, align 8, !taffo.initweight !49, !taffo.info !17
  %1 = load float, float* %0, align 4, !taffo.initweight !50, !taffo.info !59
  %2 = load float, float* %y, align 4, !taffo.initweight !49, !taffo.info !59
  %mul = fmul float %1, %2, !taffo.initweight !50, !taffo.info !63
  %3 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %add = fadd float %mul, %3, !taffo.initweight !8, !taffo.info !66
  %4 = load float*, float** %x, align 8, !taffo.initweight !49, !taffo.info !17
  store float 0x4013F34D60000000, float* %4, align 4, !taffo.initweight !50, !taffo.info !1, !taffo.constinfo !9
  %conv = fpext float %add to double
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %conv), !taffo.constinfo !12
  ret float** %x, !taffo.initweight !49, !taffo.info !1
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
!5 = !{float** (float**, float*)* @fun.1}
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
!21 = !{!18, i1 false, i1 false, i2 1}
!22 = !{!23, i1 false}
!23 = !{i1 false, !24, i1 false, i2 0}
!24 = !{double 0x4024333340000000, double 0x4024333340000000}
!25 = !{i1 false, !26, i1 false, i2 0}
!26 = !{double 0.000000e+00, double 5.000000e+00}
!27 = !{i1 false, i1 false}
!28 = !{!29, !26, i1 false, i2 1}
!29 = !{!"fixp", i32 32, i32 29}
!30 = !{i32 3}
!31 = !{!32, i1 false}
!32 = !{i1 false, !33, i1 false, i2 0}
!33 = !{double 0x3FB99999A0000000, double 0x3FB99999A0000000}
!34 = !{!35, i1 false}
!35 = !{i1 false, !36, i1 false, i2 0}
!36 = !{double 0x3FF19999A0000000, double 0x3FF19999A0000000}
!37 = !{!38, i1 false}
!38 = !{i1 false, !39, i1 false, i2 0}
!39 = !{double 0x40019999A0000000, double 0x40019999A0000000}
!40 = !{i1 false, !41, i1 false, i2 0}
!41 = !{double 0.000000e+00, double 4.000000e+00}
!42 = !{i1 false, !43, i1 false, i2 0}
!43 = !{double 0.000000e+00, double 1.000000e+00}
!44 = !{i1 false, !45, i1 false, i2 0}
!45 = !{double 0.000000e+00, double 3.000000e+00}
!46 = !{!47, !48, i1 false, i2 1}
!47 = !{!"fixp", i32 32, i32 30}
!48 = !{double 0x3FB99999A0000000, double 0x40019999A0000000}
!49 = !{i32 4}
!50 = !{i32 5}
!51 = !{!47, i1 false, i1 false, i2 1}
!52 = !{i1 false, !53, i1 false, i2 0}
!53 = !{double 1.000000e+00, double 4.000000e+00}
!54 = !{i1 false, !55, i1 false, i2 0}
!55 = !{double 0.000000e+00, double 6.000000e+00}
!56 = !{i1 false, !57, i1 false, i2 0}
!57 = !{double 1.000000e+00, double 6.000000e+00}
!58 = !{!29, i1 false, i1 false, i2 1}
!59 = !{!18, !24, i1 false, i2 1}
!60 = !{float** (float**, float*)* @fun}
!61 = !{i32 1, i32 1}
!62 = !{i32 1, !17, i32 1, !17}
!63 = !{!64, !65, i1 false, i2 1}
!64 = !{!"fixp", i32 32, i32 25}
!65 = !{double 0x405980A3F75C2900, double 0x405980A3F75C2900}
!66 = !{!64, i1 false, i1 false, i2 1}
