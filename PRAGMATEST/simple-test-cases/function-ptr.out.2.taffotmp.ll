; ModuleID = './function-ptr.out.1.taffotmp.ll'
source_filename = "./function-ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@global = dso_local global float 0x400AA9FBE0000000, align 4, !taffo.initweight !0, !taffo.info !1
@.str = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [17 x i8] c"./function-ptr.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"target('a') scalar()\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [21 x i8] c"-------------------\0A\00", align 1
@llvm.global.annotations = appending global [1 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (float* @global to i8*), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 6 }], section "llvm.metadata"

; Function Attrs: noinline nounwind uwtable
define dso_local float** @fun(float** %x, float* %y) #0 !taffo.initweight !4 !taffo.equivalentChild !5 !taffo.funinfo !6 {
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
  %5 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %add = fadd float %mul, %5, !taffo.initweight !8, !taffo.info !1
  store float %add, float* %local, align 4, !taffo.initweight !9, !taffo.info !1
  %6 = load float**, float*** %x.addr, align 8
  %7 = load float*, float** %6, align 8
  store float 0x4013F34D60000000, float* %7, align 4
  %8 = load float, float* %local, align 4
  %conv = fpext float %8 to double
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %conv)
  %9 = load float**, float*** %x.addr, align 8
  ret float** %9
}

declare !taffo.initweight !10 !taffo.funinfo !11 dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.start !12 !taffo.initweight !13 !taffo.funinfo !13 {
entry:
  %retval = alloca i32, align 4
  %a = alloca float*, align 8, !taffo.initweight !0, !taffo.info !1, !taffo.target !14
  %b = alloca float, align 4, !taffo.initweight !0, !taffo.info !1
  %c = alloca float, align 4
  %k = alloca float**, align 8, !taffo.initweight !0, !taffo.info !1
  %mall = alloca float*, align 8, !taffo.initweight !0, !taffo.info !1
  %i = alloca i32, align 4
  %i8 = alloca i32, align 4
  %i19 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %a1 = bitcast float** %a to i8*, !taffo.initweight !7, !taffo.info !1, !taffo.target !14
  %b2 = bitcast float* %b to i8*, !taffo.initweight !7, !taffo.info !1
  store float 0x4024333340000000, float* %b, align 4, !taffo.initweight !7, !taffo.info !1
  store float 0x40019999A0000000, float* %c, align 4
  store float* %b, float** %a, align 8, !taffo.initweight !7, !taffo.info !1, !taffo.target !14
  %k3 = bitcast float*** %k to i8*, !taffo.initweight !7, !taffo.info !1
  %mall4 = bitcast float** %mall to i8*, !taffo.initweight !7, !taffo.info !1
  %call = call noalias i8* @malloc(i64 25) #4
  %0 = bitcast i8* %call to float*
  store float* %0, float** %mall, align 8, !taffo.initweight !7, !taffo.info !1
  %1 = load float*, float** %mall, align 8, !taffo.initweight !7, !taffo.info !1
  %arrayidx = getelementptr inbounds float, float* %1, i64 0, !taffo.initweight !8, !taffo.info !1
  store float 0x3FB99999A0000000, float* %arrayidx, align 4, !taffo.initweight !9, !taffo.info !1
  %2 = load float*, float** %mall, align 8, !taffo.initweight !7, !taffo.info !1
  %add.ptr = getelementptr inbounds float, float* %2, i64 1, !taffo.initweight !8, !taffo.info !1
  store float 0x3FF19999A0000000, float* %add.ptr, align 4, !taffo.initweight !9, !taffo.info !1
  %3 = load float*, float** %mall, align 8, !taffo.initweight !7, !taffo.info !1
  %arrayidx5 = getelementptr inbounds float, float* %3, i64 2, !taffo.initweight !8, !taffo.info !1
  store float 0x40019999A0000000, float* %arrayidx5, align 4, !taffo.initweight !9, !taffo.info !1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %4, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load float*, float** %mall, align 8, !taffo.initweight !7, !taffo.info !1
  %6 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %6 to i64
  %add.ptr6 = getelementptr inbounds float, float* %5, i64 %idx.ext, !taffo.initweight !8, !taffo.info !1
  %7 = load float, float* %add.ptr6, align 4, !taffo.initweight !9, !taffo.info !1
  %conv = fpext float %7 to double, !taffo.initweight !15, !taffo.info !1
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %conv), !taffo.initweight !16, !taffo.info !1
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
  %12 = load float*, float** %mall, align 8, !taffo.initweight !7, !taffo.info !1
  %13 = load i32, i32* %i8, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx15 = getelementptr inbounds float, float* %12, i64 %idxprom, !taffo.initweight !8, !taffo.info !1
  store float %div, float* %arrayidx15, align 4, !taffo.initweight !9, !taffo.info !1
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
  %16 = load float*, float** %mall, align 8, !taffo.initweight !7, !taffo.info !1
  %17 = load i32, i32* %i19, align 4
  %idxprom24 = sext i32 %17 to i64
  %arrayidx25 = getelementptr inbounds float, float* %16, i64 %idxprom24, !taffo.initweight !8, !taffo.info !1
  %18 = load float, float* %arrayidx25, align 4, !taffo.initweight !9, !taffo.info !1
  %conv26 = fpext float %18 to double, !taffo.initweight !15, !taffo.info !1
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %conv26), !taffo.initweight !16, !taffo.info !1
  br label %for.inc28

for.inc28:                                        ; preds = %for.body23
  %19 = load i32, i32* %i19, align 4
  %inc29 = add nsw i32 %19, 1
  store i32 %inc29, i32* %i19, align 4
  br label %for.cond20

for.end30:                                        ; preds = %for.cond20
  %20 = load float*, float** %a, align 8, !taffo.initweight !7, !taffo.info !1, !taffo.target !14
  %21 = load float, float* %20, align 4, !taffo.initweight !8, !taffo.info !1, !taffo.target !14
  %conv31 = fpext float %21 to double, !taffo.initweight !9, !taffo.info !1, !taffo.target !14
  %call32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %conv31), !taffo.initweight !15, !taffo.info !1, !taffo.target !14
  %call33 = call float** @fun.1(float** %a, float* %b), !taffo.initweight !7, !taffo.info !1, !taffo.target !14, !taffo.originalCall !17
  store float** %call33, float*** %k, align 8, !taffo.initweight !7, !taffo.info !1
  %22 = load float*, float** %a, align 8, !taffo.initweight !7, !taffo.info !1, !taffo.target !14
  %23 = load float, float* %22, align 4, !taffo.initweight !8, !taffo.info !1, !taffo.target !14
  %conv34 = fpext float %23 to double, !taffo.initweight !9, !taffo.info !1, !taffo.target !14
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %conv34), !taffo.initweight !15, !taffo.info !1, !taffo.target !14
  %24 = load float**, float*** %k, align 8, !taffo.initweight !7, !taffo.info !1
  %25 = load float*, float** %24, align 8, !taffo.initweight !8, !taffo.info !1
  %26 = load float, float* %25, align 4, !taffo.initweight !9, !taffo.info !1
  %conv36 = fpext float %26 to double, !taffo.initweight !15, !taffo.info !1
  %call37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %conv36), !taffo.initweight !16, !taffo.info !1
  %call38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind willreturn
declare !taffo.initweight !18 !taffo.funinfo !19 void @llvm.var.annotation(i8*, i8*, i8*, i32) #2

; Function Attrs: nounwind
declare !taffo.initweight !10 !taffo.funinfo !11 dso_local noalias i8* @malloc(i64) #3

; Function Attrs: noinline nounwind uwtable
define internal float** @fun.1(float** %x, float* %y) #0 !taffo.initweight !20 !taffo.sourceFunction !17 !taffo.funinfo !21 {
entry:
  %x.addr = alloca float**, align 8, !taffo.initweight !8, !taffo.info !1
  %y.addr = alloca float*, align 8, !taffo.initweight !8, !taffo.info !1
  %local = alloca float, align 4
  store float** %x, float*** %x.addr, align 8, !taffo.initweight !9, !taffo.info !1
  store float* %y, float** %y.addr, align 8, !taffo.initweight !9, !taffo.info !1
  %0 = load float**, float*** %x.addr, align 8, !taffo.initweight !9, !taffo.info !1
  %1 = load float*, float** %0, align 8, !taffo.initweight !15, !taffo.info !1
  %2 = load float, float* %1, align 4, !taffo.initweight !16, !taffo.info !1
  %3 = load float*, float** %y.addr, align 8, !taffo.initweight !9, !taffo.info !1
  %4 = load float, float* %3, align 4, !taffo.initweight !15, !taffo.info !1
  %mul = fmul float %2, %4, !taffo.initweight !16, !taffo.info !1
  %5 = load float, float* @global, align 4, !taffo.initweight !7, !taffo.info !1
  %add = fadd float %mul, %5, !taffo.initweight !8, !taffo.info !1
  store float %add, float* %local, align 4, !taffo.initweight !9, !taffo.info !1
  %6 = load float**, float*** %x.addr, align 8, !taffo.initweight !9, !taffo.info !1
  %7 = load float*, float** %6, align 8, !taffo.initweight !15, !taffo.info !1
  store float 0x4013F34D60000000, float* %7, align 4, !taffo.initweight !16, !taffo.info !1
  %8 = load float, float* %local, align 4
  %conv = fpext float %8 to double
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %conv)
  %9 = load float**, float*** %x.addr, align 8, !taffo.initweight !9, !taffo.info !1
  ret float** %9, !taffo.initweight !15, !taffo.info !1
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind willreturn }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

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
!9 = !{i32 3}
!10 = !{i32 -1}
!11 = !{i32 0, i1 false}
!12 = !{i1 true}
!13 = !{}
!14 = !{!"a"}
!15 = !{i32 4}
!16 = !{i32 5}
!17 = !{float** (float**, float*)* @fun}
!18 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!19 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!20 = !{i32 1, i32 1}
!21 = !{i32 1, !1, i32 1, !1}
