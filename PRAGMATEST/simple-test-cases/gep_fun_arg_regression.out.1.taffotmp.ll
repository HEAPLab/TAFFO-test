; ModuleID = './gep_fun_arg_regression.c'
source_filename = "./gep_fun_arg_regression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"scalar(range( -1024, 1024))\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [27 x i8] c"./gep_fun_arg_regression.c\00", section "llvm.metadata"

; Function Attrs: noinline nounwind uwtable
define dso_local void @idct2(i32 %table, double* %output) #0 {
entry:
  %table.addr = alloca i32, align 4
  %output.addr = alloca double*, align 8
  store i32 %table, i32* %table.addr, align 4
  store double* %output, double** %output.addr, align 8
  %0 = load double*, double** %output.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %0, i64 0
  store double 1.000000e+00, double* %arrayidx, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %colorTables = alloca [1 x double**], align 8
  %colorTables1 = bitcast [1 x double**]* %colorTables to i8*
  call void @llvm.var.annotation(i8* %colorTables1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0), i32 13)
  %call = call noalias i8* @malloc(i64 8) #3
  %0 = bitcast i8* %call to double**
  %arrayidx = getelementptr inbounds [1 x double**], [1 x double**]* %colorTables, i64 0, i64 0
  store double** %0, double*** %arrayidx, align 8
  %call2 = call noalias i8* @malloc(i64 8) #3
  %1 = bitcast i8* %call2 to double*
  %arrayidx3 = getelementptr inbounds [1 x double**], [1 x double**]* %colorTables, i64 0, i64 0
  %2 = load double**, double*** %arrayidx3, align 8
  %arrayidx4 = getelementptr inbounds double*, double** %2, i64 0
  store double* %1, double** %arrayidx4, align 8
  %arrayidx5 = getelementptr inbounds [1 x double**], [1 x double**]* %colorTables, i64 0, i64 0
  %3 = load double**, double*** %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds double*, double** %3, i64 0
  %4 = load double*, double** %arrayidx6, align 8
  call void @idct2(i32 0, double* %4)
  ret i32 0
}

; Function Attrs: nounwind willreturn
declare void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
