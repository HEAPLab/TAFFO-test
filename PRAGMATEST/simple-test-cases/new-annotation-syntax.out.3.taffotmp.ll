; ModuleID = './new-annotation-syntax.out.2.taffotmp.ll'
source_filename = "./new-annotation-syntax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"target('test') scalar()\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [26 x i8] c"./new-annotation-syntax.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [22 x i8] c"backtracking scalar()\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [28 x i8] c"backtracking(true) scalar()\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [27 x i8] c"backtracking(yes) scalar()\00", section "llvm.metadata"
@.str.5 = private unnamed_addr constant [29 x i8] c"backtracking(false) scalar()\00", section "llvm.metadata"
@.str.6 = private unnamed_addr constant [26 x i8] c"backtracking(no) scalar()\00", section "llvm.metadata"
@.str.7 = private unnamed_addr constant [37 x i8] c"target('test') backtracking scalar()\00", section "llvm.metadata"
@.str.8 = private unnamed_addr constant [39 x i8] c"target('test quote @' quote') scalar()\00", section "llvm.metadata"
@.str.9 = private unnamed_addr constant [39 x i8] c"target('test quote @@ quote') scalar()\00", section "llvm.metadata"
@.str.10 = private unnamed_addr constant [25 x i8] c"scalar(range(-200, 200))\00", section "llvm.metadata"
@.str.11 = private unnamed_addr constant [26 x i8] c"scalar(type(signed 32 8))\00", section "llvm.metadata"
@.str.12 = private unnamed_addr constant [19 x i8] c"scalar(error(0.5))\00", section "llvm.metadata"
@.str.13 = private unnamed_addr constant [57 x i8] c"scalar(error(0.5) range(-200, 200) type(signed 0x1F 07))\00", section "llvm.metadata"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !taffo.start !2 !taffo.initweight !3 !taffo.funinfo !4 {
entry:
  ret i32 0
}

; Function Attrs: nounwind willreturn
declare !taffo.initweight !5 !taffo.funinfo !6 void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{i1 true}
!3 = !{i32 -1, i32 -1}
!4 = !{i32 0, i1 false, i32 0, i1 false}
!5 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!6 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
