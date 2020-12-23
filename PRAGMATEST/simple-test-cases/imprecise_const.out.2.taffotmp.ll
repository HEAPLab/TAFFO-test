; ModuleID = './imprecise_const.out.1.taffotmp.ll'
source_filename = "./imprecise_const.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [20 x i8] c"./imprecise_const.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [4 x i8] c"%a\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !taffo.initweight !2 !taffo.funinfo !3 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %magic = alloca double, align 8, !taffo.initweight !4, !taffo.info !5
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %magic1 = bitcast double* %magic to i8*, !taffo.initweight !6, !taffo.info !5
  store double 0x3FF3C0CA428C59FB, double* %magic, align 8, !taffo.initweight !6, !taffo.info !5
  %0 = load double, double* %magic, align 8, !taffo.initweight !6, !taffo.info !5
  %add = fadd double %0, 0x4002C3F2C52E6BF5, !taffo.initweight !7, !taffo.info !5
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %add), !taffo.initweight !8, !taffo.info !5
  ret i32 0
}

; Function Attrs: nounwind willreturn
declare !taffo.initweight !9 !taffo.funinfo !10 void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

declare !taffo.initweight !11 !taffo.funinfo !12 dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{i32 -1, i32 -1}
!3 = !{i32 0, i1 false, i32 0, i1 false}
!4 = !{i32 0}
!5 = !{i1 false, i1 false, i1 false, i2 1}
!6 = !{i32 1}
!7 = !{i32 2}
!8 = !{i32 3}
!9 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!10 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!11 = !{i32 -1}
!12 = !{i32 0, i1 false}
