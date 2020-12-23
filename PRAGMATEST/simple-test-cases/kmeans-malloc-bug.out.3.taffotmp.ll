; ModuleID = './kmeans-malloc-bug.out.2.taffotmp.ll'
source_filename = "kmeans-malloc-bug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RgbImage = type { i32, i32, %struct.RgbPixel** }
%struct.RgbPixel = type { float, float, float, i32, float }

@.str = private unnamed_addr constant [115 x i8] c"struct[void,void, struct[scalar(range(0,255)),scalar(range(0,255)),scalar(range(0,255)),void,scalar(range(0,1))] ]\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [20 x i8] c"kmeans-malloc-bug.c\00", section "llvm.metadata"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !taffo.initweight !2 !taffo.funinfo !3 {
entry:
  %image = alloca %struct.RgbImage, align 8, !taffo.initweight !4, !taffo.structinfo !5
  %image1 = bitcast %struct.RgbImage* %image to i8*, !taffo.initweight !11, !taffo.info !12
  %w = getelementptr inbounds %struct.RgbImage, %struct.RgbImage* %image, i32 0, i32 0, !taffo.initweight !11, !taffo.info !12
  store i32 10, i32* %w, align 8, !taffo.initweight !13, !taffo.info !12, !taffo.constinfo !14
  %h = getelementptr inbounds %struct.RgbImage, %struct.RgbImage* %image, i32 0, i32 1, !taffo.initweight !11, !taffo.info !12
  store i32 20, i32* %h, align 4, !taffo.initweight !13, !taffo.info !12, !taffo.constinfo !14
  %h2 = getelementptr inbounds %struct.RgbImage, %struct.RgbImage* %image, i32 0, i32 1, !taffo.initweight !11, !taffo.info !12
  %0 = load i32, i32* %h2, align 4, !taffo.initweight !13, !taffo.info !12
  %conv = sext i32 %0 to i64, !taffo.initweight !15, !taffo.info !12
  %mul = mul i64 %conv, 8, !taffo.initweight !16, !taffo.info !12, !taffo.constinfo !14
  %call = call noalias i8* @malloc(i64 %mul) #3, !taffo.initweight !17, !taffo.info !12, !taffo.constinfo !14
  %1 = bitcast i8* %call to %struct.RgbPixel**, !taffo.initweight !18, !taffo.structinfo !19
  %pixels = getelementptr inbounds %struct.RgbImage, %struct.RgbImage* %image, i32 0, i32 2, !taffo.initweight !11, !taffo.structinfo !6
  store %struct.RgbPixel** %1, %struct.RgbPixel*** %pixels, align 8, !taffo.initweight !13, !taffo.structinfo !6
  ret i32 0
}

; Function Attrs: nounwind willreturn
declare !taffo.initweight !20 !taffo.funinfo !21 void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind
declare !taffo.initweight !22 !taffo.funinfo !23 dso_local noalias i8* @malloc(i64) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{i32 -1, i32 -1}
!3 = !{i32 0, i1 false, i32 0, i1 false}
!4 = !{i32 0}
!5 = !{i1 false, i1 false, !6}
!6 = !{!7, !7, !7, i1 false, !9}
!7 = !{i1 false, !8, i1 false, i2 1}
!8 = !{double 0.000000e+00, double 2.550000e+02}
!9 = !{i1 false, !10, i1 false, i2 1}
!10 = !{double 0.000000e+00, double 1.000000e+00}
!11 = !{i32 1}
!12 = !{i1 false, i1 false, i1 false, i2 1}
!13 = !{i32 2}
!14 = !{i1 false, i1 false}
!15 = !{i32 3}
!16 = !{i32 4}
!17 = !{i32 5}
!18 = !{i32 6}
!19 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!20 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!21 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!22 = !{i32 -1}
!23 = !{i32 0, i1 false}
