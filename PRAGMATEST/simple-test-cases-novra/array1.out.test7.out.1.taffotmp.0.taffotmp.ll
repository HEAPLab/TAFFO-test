; ModuleID = './test7.out.1.taffotmp.ll'
source_filename = "./test7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"force_no_float range -32767 32767\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [10 x i8] c"./test7.c\00", section "llvm.metadata"

; Function Attrs: noinline nounwind uwtable
define dso_local float @test(i32 %a) #0 {
entry:
  %a.addr = alloca i32, align 4
  %c = alloca [10 x float], align 16
  %b = alloca float*, align 8
  store i32 %a, i32* %a.addr, align 4
  %b1 = bitcast float** %b to i8*
  call void @llvm.var.annotation(i8* %b1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 7)
  %arraydecay = getelementptr inbounds [10 x float], [10 x float]* %c, i64 0, i64 0
  store float* %arraydecay, float** %b, align 8
  %0 = load i32, i32* %a.addr, align 4
  %conv = sitofp i32 %0 to float
  %1 = load float*, float** %b, align 8
  %arrayidx = getelementptr inbounds float, float* %1, i64 5
  store float %conv, float* %arrayidx, align 4
  %2 = load float*, float** %b, align 8
  %arrayidx2 = getelementptr inbounds float, float* %2, i64 5
  %3 = load float, float* %arrayidx2, align 4
  ret float %3
}

; Function Attrs: nounwind willreturn
declare void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
