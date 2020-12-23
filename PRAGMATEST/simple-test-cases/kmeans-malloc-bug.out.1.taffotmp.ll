; ModuleID = './kmeans-malloc-bug.ll'
source_filename = "kmeans-malloc-bug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RgbImage = type { i32, i32, %struct.RgbPixel** }
%struct.RgbPixel = type { float, float, float, i32, float }

@.str = private unnamed_addr constant [115 x i8] c"struct[void,void, struct[scalar(range(0,255)),scalar(range(0,255)),scalar(range(0,255)),void,scalar(range(0,1))] ]\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [20 x i8] c"kmeans-malloc-bug.c\00", section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %image = alloca %struct.RgbImage, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %image1 = bitcast %struct.RgbImage* %image to i8*
  call void @llvm.var.annotation(i8* %image1, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 33)
  %w = getelementptr inbounds %struct.RgbImage, %struct.RgbImage* %image, i32 0, i32 0
  store i32 10, i32* %w, align 8
  %h = getelementptr inbounds %struct.RgbImage, %struct.RgbImage* %image, i32 0, i32 1
  store i32 20, i32* %h, align 4
  %h2 = getelementptr inbounds %struct.RgbImage, %struct.RgbImage* %image, i32 0, i32 1
  %0 = load i32, i32* %h2, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 8
  %call = call noalias i8* @malloc(i64 %mul) #3
  %1 = bitcast i8* %call to %struct.RgbPixel**
  %pixels = getelementptr inbounds %struct.RgbImage, %struct.RgbImage* %image, i32 0, i32 2
  store %struct.RgbPixel** %1, %struct.RgbPixel*** %pixels, align 8
  ret i32 0
}

; Function Attrs: nounwind willreturn
declare void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
