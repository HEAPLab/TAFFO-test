; ModuleID = './inlinetest.out.3.taffotmp.ll'
source_filename = "./inlinetest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"range -200 200\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [15 x i8] c"./inlinetest.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [4 x i8] c"%a\0A\00", align 1

; Function Attrs: alwaysinline nounwind uwtable
define dso_local float @hello(float %abc) #0 !taffo.initweight !2 !taffo.funinfo !3 {
entry:
  %abc.addr = alloca float, align 4, !taffo.initweight !4, !taffo.info !5
  store float %abc, float* %abc.addr, align 4, !taffo.initweight !7, !taffo.info !5
  %abc.addr1 = bitcast float* %abc.addr to i8*, !taffo.initweight !7, !taffo.info !5
  %0 = load float, float* %abc.addr, align 4, !taffo.initweight !7, !taffo.info !5
  %add = fadd float %0, 0x400921FB60000000, !taffo.initweight !8, !taffo.info !5
  ret float %add, !taffo.initweight !9, !taffo.info !5
}

; Function Attrs: nounwind willreturn
declare !taffo.initweight !10 !taffo.funinfo !11 void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #2 !taffo.initweight !12 !taffo.funinfo !13 {
entry:
  %abc.addr.i = alloca float, align 4, !taffo.initweight !4, !taffo.info !5
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %test = alloca float, align 4, !taffo.initweight !4, !taffo.info !5
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %test1 = bitcast float* %test to i8*, !taffo.initweight !7, !taffo.info !5
  store float 1.230000e+02, float* %test, align 4, !taffo.initweight !7, !taffo.info !5
  %0 = load float, float* %test, align 4, !taffo.initweight !7, !taffo.info !5
  store float %0, float* %abc.addr.i, align 4, !taffo.initweight !7, !taffo.info !5
  %abc.addr1.i = bitcast float* %abc.addr.i to i8*, !taffo.initweight !7, !taffo.info !5
  %1 = load float, float* %abc.addr.i, align 4, !taffo.initweight !7, !taffo.info !5
  %add.i = fadd float %1, 0x400921FB60000000, !taffo.initweight !8, !taffo.info !5
  store float %add.i, float* %test, align 4, !taffo.initweight !7, !taffo.info !5
  %2 = load float, float* %test, align 4, !taffo.initweight !7, !taffo.info !5
  %conv = fpext float %2 to double, !taffo.initweight !8, !taffo.info !5
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %conv), !taffo.initweight !9, !taffo.info !5
  ret i32 0
}

declare !taffo.initweight !2 !taffo.funinfo !3 dso_local i32 @printf(i8*, ...) #3

attributes #0 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind willreturn }
attributes #2 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{i32 -1}
!3 = !{i32 0, i1 false}
!4 = !{i32 0}
!5 = !{i1 false, !6, i1 false, i2 1}
!6 = !{double -2.000000e+02, double 2.000000e+02}
!7 = !{i32 1}
!8 = !{i32 2}
!9 = !{i32 3}
!10 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!11 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!12 = !{i32 -1, i32 -1}
!13 = !{i32 0, i1 false, i32 0, i1 false}
