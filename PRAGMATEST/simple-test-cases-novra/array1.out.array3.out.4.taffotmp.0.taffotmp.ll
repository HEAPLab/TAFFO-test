; ModuleID = './array3.out.4.taffotmp.ll'
source_filename = "./array3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { %struct.timespec }
%struct.timespec = type { i64, i64 }

@timer_state = common dso_local global %struct.anon zeroinitializer, align 8
@xorshift64star.x = internal global i64 1970835257944453882, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"operation: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"avg time (ns): %lu\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"*\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @timerStart() #0 !taffo.initweight !2 !taffo.funinfo !2 {
entry:
  %call = call i32 @clock_gettime(i32 4, %struct.timespec* getelementptr inbounds (%struct.anon, %struct.anon* @timer_state, i32 0, i32 0)) #3
  ret void
}

; Function Attrs: nounwind
declare !taffo.initweight !3 !taffo.funinfo !4 dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @timerStop() #0 !taffo.initweight !2 !taffo.funinfo !2 {
entry:
  %diff = alloca i64, align 8
  %etime = alloca %struct.timespec, align 8
  %t0 = alloca i64, align 8
  %t1 = alloca i64, align 8
  %call = call i32 @clock_gettime(i32 4, %struct.timespec* %etime) #3
  %0 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @timer_state, i32 0, i32 0, i32 1), align 8
  %1 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @timer_state, i32 0, i32 0, i32 0), align 8
  %mul = mul nsw i64 %1, 1000000000
  %add = add nsw i64 %0, %mul
  store i64 %add, i64* %t0, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %etime, i32 0, i32 1
  %2 = load i64, i64* %tv_nsec, align 8
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %etime, i32 0, i32 0
  %3 = load i64, i64* %tv_sec, align 8
  %mul1 = mul nsw i64 %3, 1000000000
  %add2 = add nsw i64 %2, %mul1
  store i64 %add2, i64* %t1, align 8
  %4 = load i64, i64* %t1, align 8
  %5 = load i64, i64* %t0, align 8
  %sub = sub i64 %4, %5
  store i64 %sub, i64* %diff, align 8
  %6 = load i64, i64* %diff, align 8
  ret i64 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @xorshift64star() #0 !taffo.initweight !2 !taffo.funinfo !2 {
entry:
  %0 = load i64, i64* @xorshift64star.x, align 8
  %shr = lshr i64 %0, 12
  %1 = load i64, i64* @xorshift64star.x, align 8
  %xor = xor i64 %1, %shr
  store i64 %xor, i64* @xorshift64star.x, align 8
  %2 = load i64, i64* @xorshift64star.x, align 8
  %shl = shl i64 %2, 25
  %3 = load i64, i64* @xorshift64star.x, align 8
  %xor1 = xor i64 %3, %shl
  store i64 %xor1, i64* @xorshift64star.x, align 8
  %4 = load i64, i64* @xorshift64star.x, align 8
  %shr2 = lshr i64 %4, 27
  %5 = load i64, i64* @xorshift64star.x, align 8
  %xor3 = xor i64 %5, %shr2
  store i64 %xor3, i64* @xorshift64star.x, align 8
  %6 = load i64, i64* @xorshift64star.x, align 8
  %mul = mul i64 %6, 2685821657736338717
  ret i64 %mul
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randomInRange(i32 %a, i32 %b) #0 !taffo.initweight !3 !taffo.funinfo !4 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %d = alloca i32, align 4
  %m = alloca i64, align 8
  %n = alloca i64, align 8
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %b.addr, align 4
  %1 = load i32, i32* %a.addr, align 4
  %sub = sub nsw i32 %0, %1
  store i32 %sub, i32* %d, align 4
  %2 = load i32, i32* %d, align 4
  %cmp = icmp sle i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %a.addr, align 4
  store i32 %3, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %d, align 4
  %conv = sext i32 %4 to i64
  %rem = urem i64 -1, %conv
  %sub1 = sub i64 -1, %rem
  store i64 %sub1, i64* %m, align 8
  %call = call i64 @xorshift64star()
  store i64 %call, i64* %n, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %5 = load i64, i64* %n, align 8
  %6 = load i64, i64* %m, align 8
  %cmp2 = icmp ugt i64 %5, %6
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call4 = call i64 @xorshift64star()
  store i64 %call4, i64* %n, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load i64, i64* %n, align 8
  %8 = load i32, i32* %d, align 4
  %conv5 = sext i32 %8 to i64
  %rem6 = urem i64 %7, %conv5
  %9 = load i32, i32* %a.addr, align 4
  %conv7 = sext i32 %9 to i64
  %add = add i64 %rem6, %conv7
  %conv8 = trunc i64 %add to i32
  store i32 %conv8, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !taffo.initweight !3 !taffo.funinfo !4 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %buf = alloca [524288 x float], align 16, !taffo.initweight !5, !taffo.info !6
  %i = alloca i32, align 4
  %samples = alloca [1000 x i64], align 16
  %t = alloca i32, align 4
  %i9 = alloca i32, align 4
  %sync = alloca float, align 4, !taffo.initweight !5, !taffo.info !6
  %i26 = alloca i32, align 4
  %avg = alloca i64, align 8
  %t43 = alloca i32, align 4
  %i56 = alloca i32, align 4
  %samples74 = alloca [1000 x i64], align 16
  %t75 = alloca i32, align 4
  %i80 = alloca i32, align 4
  %sync95 = alloca float, align 4, !taffo.initweight !5, !taffo.info !6
  %i98 = alloca i32, align 4
  %avg115 = alloca i64, align 8
  %t116 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %buf1 = bitcast [524288 x float]* %buf to i8*, !taffo.initweight !9, !taffo.info !10
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 262144
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @randomInRange(i32 0, i32 256)
  %conv = sitofp i32 %call to float
  %conv2 = fpext float %conv to double
  %div = fdiv double %conv2, 3.276800e+04
  %conv3 = fptrunc double %div to float
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [524288 x float], [524288 x float]* %buf, i64 0, i64 %idxprom, !taffo.initweight !9, !taffo.info !6
  store float %conv3, float* %arrayidx, align 4, !taffo.initweight !11, !taffo.info !12
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %t, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc40, %for.end
  %3 = load i32, i32* %t, align 4
  %cmp6 = icmp slt i32 %3, 1000
  br i1 %cmp6, label %for.body8, label %for.end42

for.body8:                                        ; preds = %for.cond5
  call void @timerStart()
  store i32 0, i32* %i9, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc21, %for.body8
  %4 = load i32, i32* %i9, align 4
  %cmp11 = icmp slt i32 %4, 262144
  br i1 %cmp11, label %for.body13, label %for.end23

for.body13:                                       ; preds = %for.cond10
  %5 = load i32, i32* %i9, align 4
  %idxprom14 = sext i32 %5 to i64
  %arrayidx15 = getelementptr inbounds [524288 x float], [524288 x float]* %buf, i64 0, i64 %idxprom14, !taffo.initweight !9, !taffo.info !6
  %6 = load float, float* %arrayidx15, align 4, !taffo.initweight !11, !taffo.info !6
  %7 = load i32, i32* %i9, align 4
  %add = add nsw i32 %7, 1
  %idxprom16 = sext i32 %add to i64
  %arrayidx17 = getelementptr inbounds [524288 x float], [524288 x float]* %buf, i64 0, i64 %idxprom16, !taffo.initweight !9, !taffo.info !6
  %8 = load float, float* %arrayidx17, align 4, !taffo.initweight !11, !taffo.info !6
  %add18 = fadd float %6, %8, !taffo.initweight !13, !taffo.info !6
  %9 = load i32, i32* %i9, align 4
  %idxprom19 = sext i32 %9 to i64
  %arrayidx20 = getelementptr inbounds [524288 x float], [524288 x float]* %buf, i64 0, i64 %idxprom19, !taffo.initweight !9, !taffo.info !6
  store float %add18, float* %arrayidx20, align 4, !taffo.initweight !11, !taffo.info !12
  br label %for.inc21

for.inc21:                                        ; preds = %for.body13
  %10 = load i32, i32* %i9, align 4
  %add22 = add nsw i32 %10, 2
  store i32 %add22, i32* %i9, align 4
  br label %for.cond10

for.end23:                                        ; preds = %for.cond10
  %sync24 = bitcast float* %sync to i8*, !taffo.initweight !9, !taffo.info !10
  %sync25 = bitcast float* %sync to i8*, !taffo.initweight !9, !taffo.info !10
  store float 0.000000e+00, float* %sync, align 4, !taffo.initweight !9, !taffo.info !12
  store i32 0, i32* %i26, align 4
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc34, %for.end23
  %11 = load i32, i32* %i26, align 4
  %cmp28 = icmp slt i32 %11, 262144
  br i1 %cmp28, label %for.body30, label %for.end36

for.body30:                                       ; preds = %for.cond27
  %12 = load i32, i32* %i26, align 4
  %idxprom31 = sext i32 %12 to i64
  %arrayidx32 = getelementptr inbounds [524288 x float], [524288 x float]* %buf, i64 0, i64 %idxprom31, !taffo.initweight !9, !taffo.info !6
  %13 = load float, float* %arrayidx32, align 4, !taffo.initweight !11, !taffo.info !6
  %14 = load float, float* %sync, align 4, !taffo.initweight !9, !taffo.info !6
  %add33 = fadd float %14, %13, !taffo.initweight !11, !taffo.info !6
  store float %add33, float* %sync, align 4, !taffo.initweight !9, !taffo.info !12
  br label %for.inc34

for.inc34:                                        ; preds = %for.body30
  %15 = load i32, i32* %i26, align 4
  %inc35 = add nsw i32 %15, 1
  store i32 %inc35, i32* %i26, align 4
  br label %for.cond27

for.end36:                                        ; preds = %for.cond27
  %call37 = call i64 @timerStop()
  %16 = load i32, i32* %t, align 4
  %idxprom38 = sext i32 %16 to i64
  %arrayidx39 = getelementptr inbounds [1000 x i64], [1000 x i64]* %samples, i64 0, i64 %idxprom38
  store i64 %call37, i64* %arrayidx39, align 8
  br label %for.inc40

for.inc40:                                        ; preds = %for.end36
  %17 = load i32, i32* %t, align 4
  %inc41 = add nsw i32 %17, 1
  store i32 %inc41, i32* %t, align 4
  br label %for.cond5

for.end42:                                        ; preds = %for.cond5
  store i64 0, i64* %avg, align 8
  store i32 10, i32* %t43, align 4
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc51, %for.end42
  %18 = load i32, i32* %t43, align 4
  %cmp45 = icmp slt i32 %18, 1000
  br i1 %cmp45, label %for.body47, label %for.end53

for.body47:                                       ; preds = %for.cond44
  %19 = load i32, i32* %t43, align 4
  %idxprom48 = sext i32 %19 to i64
  %arrayidx49 = getelementptr inbounds [1000 x i64], [1000 x i64]* %samples, i64 0, i64 %idxprom48
  %20 = load i64, i64* %arrayidx49, align 8
  %21 = load i64, i64* %avg, align 8
  %add50 = add i64 %21, %20
  store i64 %add50, i64* %avg, align 8
  br label %for.inc51

for.inc51:                                        ; preds = %for.body47
  %22 = load i32, i32* %t43, align 4
  %inc52 = add nsw i32 %22, 1
  store i32 %inc52, i32* %t43, align 4
  br label %for.cond44

for.end53:                                        ; preds = %for.cond44
  %23 = load i64, i64* %avg, align 8
  %div54 = udiv i64 %23, 990
  store i64 %div54, i64* %avg, align 8
  %24 = load i64, i64* %avg, align 8
  %call55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i64 %24)
  store i32 0, i32* %i56, align 4
  br label %for.cond57

for.cond57:                                       ; preds = %for.inc70, %for.end53
  %25 = load i32, i32* %i56, align 4
  %cmp58 = icmp slt i32 %25, 262144
  br i1 %cmp58, label %for.body60, label %for.end72

for.body60:                                       ; preds = %for.cond57
  %26 = load i32, i32* %i56, align 4
  %add61 = add nsw i32 %26, 1
  %rem = srem i32 %add61, 4
  %call62 = call i32 @randomInRange(i32 0, i32 %rem)
  %conv63 = sitofp i32 %call62 to float
  %conv64 = fpext float %conv63 to double
  %div65 = fdiv double %conv64, 3.276800e+04
  %add66 = fadd double 1.000000e+00, %div65
  %conv67 = fptrunc double %add66 to float
  %27 = load i32, i32* %i56, align 4
  %idxprom68 = sext i32 %27 to i64
  %arrayidx69 = getelementptr inbounds [524288 x float], [524288 x float]* %buf, i64 0, i64 %idxprom68, !taffo.initweight !9, !taffo.info !6
  store float %conv67, float* %arrayidx69, align 4, !taffo.initweight !11, !taffo.info !12
  br label %for.inc70

for.inc70:                                        ; preds = %for.body60
  %28 = load i32, i32* %i56, align 4
  %inc71 = add nsw i32 %28, 1
  store i32 %inc71, i32* %i56, align 4
  br label %for.cond57

for.end72:                                        ; preds = %for.cond57
  %call73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %t75, align 4
  br label %for.cond76

for.cond76:                                       ; preds = %for.inc112, %for.end72
  %29 = load i32, i32* %t75, align 4
  %cmp77 = icmp slt i32 %29, 1000
  br i1 %cmp77, label %for.body79, label %for.end114

for.body79:                                       ; preds = %for.cond76
  call void @timerStart()
  store i32 0, i32* %i80, align 4
  br label %for.cond81

for.cond81:                                       ; preds = %for.inc92, %for.body79
  %30 = load i32, i32* %i80, align 4
  %cmp82 = icmp slt i32 %30, 262144
  br i1 %cmp82, label %for.body84, label %for.end94

for.body84:                                       ; preds = %for.cond81
  %31 = load i32, i32* %i80, align 4
  %idxprom85 = sext i32 %31 to i64
  %arrayidx86 = getelementptr inbounds [524288 x float], [524288 x float]* %buf, i64 0, i64 %idxprom85, !taffo.initweight !9, !taffo.info !6
  %32 = load float, float* %arrayidx86, align 4, !taffo.initweight !11, !taffo.info !6
  %33 = load i32, i32* %i80, align 4
  %add87 = add nsw i32 %33, 1
  %idxprom88 = sext i32 %add87 to i64
  %arrayidx89 = getelementptr inbounds [524288 x float], [524288 x float]* %buf, i64 0, i64 %idxprom88, !taffo.initweight !9, !taffo.info !6
  %34 = load float, float* %arrayidx89, align 4, !taffo.initweight !11, !taffo.info !6
  %mul = fmul float %32, %34, !taffo.initweight !13, !taffo.info !6
  %35 = load i32, i32* %i80, align 4
  %idxprom90 = sext i32 %35 to i64
  %arrayidx91 = getelementptr inbounds [524288 x float], [524288 x float]* %buf, i64 0, i64 %idxprom90, !taffo.initweight !9, !taffo.info !6
  store float %mul, float* %arrayidx91, align 4, !taffo.initweight !11, !taffo.info !12
  br label %for.inc92

for.inc92:                                        ; preds = %for.body84
  %36 = load i32, i32* %i80, align 4
  %add93 = add nsw i32 %36, 2
  store i32 %add93, i32* %i80, align 4
  br label %for.cond81

for.end94:                                        ; preds = %for.cond81
  %sync9596 = bitcast float* %sync95 to i8*, !taffo.initweight !9, !taffo.info !10
  %sync9597 = bitcast float* %sync95 to i8*, !taffo.initweight !9, !taffo.info !10
  store float 0.000000e+00, float* %sync95, align 4, !taffo.initweight !9, !taffo.info !12
  store i32 0, i32* %i98, align 4
  br label %for.cond99

for.cond99:                                       ; preds = %for.inc106, %for.end94
  %37 = load i32, i32* %i98, align 4
  %cmp100 = icmp slt i32 %37, 262144
  br i1 %cmp100, label %for.body102, label %for.end108

for.body102:                                      ; preds = %for.cond99
  %38 = load i32, i32* %i98, align 4
  %idxprom103 = sext i32 %38 to i64
  %arrayidx104 = getelementptr inbounds [524288 x float], [524288 x float]* %buf, i64 0, i64 %idxprom103, !taffo.initweight !9, !taffo.info !6
  %39 = load float, float* %arrayidx104, align 4, !taffo.initweight !11, !taffo.info !6
  %40 = load float, float* %sync95, align 4, !taffo.initweight !9, !taffo.info !6
  %add105 = fadd float %40, %39, !taffo.initweight !11, !taffo.info !6
  store float %add105, float* %sync95, align 4, !taffo.initweight !9, !taffo.info !12
  br label %for.inc106

for.inc106:                                       ; preds = %for.body102
  %41 = load i32, i32* %i98, align 4
  %inc107 = add nsw i32 %41, 1
  store i32 %inc107, i32* %i98, align 4
  br label %for.cond99

for.end108:                                       ; preds = %for.cond99
  %call109 = call i64 @timerStop()
  %42 = load i32, i32* %t75, align 4
  %idxprom110 = sext i32 %42 to i64
  %arrayidx111 = getelementptr inbounds [1000 x i64], [1000 x i64]* %samples74, i64 0, i64 %idxprom110
  store i64 %call109, i64* %arrayidx111, align 8
  br label %for.inc112

for.inc112:                                       ; preds = %for.end108
  %43 = load i32, i32* %t75, align 4
  %inc113 = add nsw i32 %43, 1
  store i32 %inc113, i32* %t75, align 4
  br label %for.cond76

for.end114:                                       ; preds = %for.cond76
  store i64 0, i64* %avg115, align 8
  store i32 10, i32* %t116, align 4
  br label %for.cond117

for.cond117:                                      ; preds = %for.inc124, %for.end114
  %44 = load i32, i32* %t116, align 4
  %cmp118 = icmp slt i32 %44, 1000
  br i1 %cmp118, label %for.body120, label %for.end126

for.body120:                                      ; preds = %for.cond117
  %45 = load i32, i32* %t116, align 4
  %idxprom121 = sext i32 %45 to i64
  %arrayidx122 = getelementptr inbounds [1000 x i64], [1000 x i64]* %samples74, i64 0, i64 %idxprom121
  %46 = load i64, i64* %arrayidx122, align 8
  %47 = load i64, i64* %avg115, align 8
  %add123 = add i64 %47, %46
  store i64 %add123, i64* %avg115, align 8
  br label %for.inc124

for.inc124:                                       ; preds = %for.body120
  %48 = load i32, i32* %t116, align 4
  %inc125 = add nsw i32 %48, 1
  store i32 %inc125, i32* %t116, align 4
  br label %for.cond117

for.end126:                                       ; preds = %for.cond117
  %49 = load i64, i64* %avg115, align 8
  %div127 = udiv i64 %49, 990
  store i64 %div127, i64* %avg115, align 8
  %50 = load i64, i64* %avg115, align 8
  %call128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i64 %50)
  ret i32 0
}

declare !taffo.initweight !14 !taffo.funinfo !15 dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!2 = !{}
!3 = !{i32 -1, i32 -1}
!4 = !{i32 0, i1 false, i32 0, i1 false}
!5 = !{i32 0}
!6 = !{!7, !8, i1 false, i2 1}
!7 = !{!"fixp", i32 -32, i32 19}
!8 = !{double -3.000000e+03, double 3.000000e+03}
!9 = !{i32 1}
!10 = !{!7, i1 false, i1 false, i2 1}
!11 = !{i32 2}
!12 = !{i1 false, !8, i1 false, i2 1}
!13 = !{i32 3}
!14 = !{i32 -1}
!15 = !{i32 0, i1 false}
