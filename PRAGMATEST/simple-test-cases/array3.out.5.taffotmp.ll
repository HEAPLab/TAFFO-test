; ModuleID = './array3.out.4.taffotmp.ll'
source_filename = "./array3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { %struct.timespec }
%struct.timespec = type { i64, i64 }

@timer_state = common dso_local global %struct.anon zeroinitializer, align 8, !taffo.structinfo !0
@xorshift64star.x = internal global i64 1970835257944453882, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"operation: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"avg time (ns): %lu\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"*\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @timerStart() #0 !taffo.initweight !0 !taffo.funinfo !0 {
entry:
  %call = call i32 @clock_gettime(i32 4, %struct.timespec* getelementptr inbounds (%struct.anon, %struct.anon* @timer_state, i32 0, i32 0)) #3, !taffo.constinfo !3
  ret void
}

; Function Attrs: nounwind
declare !taffo.initweight !4 !taffo.funinfo !5 dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @timerStop() #0 !taffo.initweight !0 !taffo.funinfo !0 {
entry:
  %etime = alloca %struct.timespec, align 8, !taffo.structinfo !0
  %call = call i32 @clock_gettime(i32 4, %struct.timespec* %etime) #3, !taffo.constinfo !3
  %0 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @timer_state, i32 0, i32 0, i32 1), align 8
  %1 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @timer_state, i32 0, i32 0, i32 0), align 8
  %mul = mul nsw i64 %1, 1000000000, !taffo.constinfo !6
  %add = add nsw i64 %0, %mul
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %etime, i32 0, i32 1
  %2 = load i64, i64* %tv_nsec, align 8
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %etime, i32 0, i32 0
  %3 = load i64, i64* %tv_sec, align 8
  %mul1 = mul nsw i64 %3, 1000000000, !taffo.constinfo !6
  %add2 = add nsw i64 %2, %mul1
  %sub = sub i64 %add2, %add
  ret i64 %sub
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @xorshift64star() #0 !taffo.initweight !0 !taffo.funinfo !0 {
entry:
  %0 = load i64, i64* @xorshift64star.x, align 8
  %shr = lshr i64 %0, 12, !taffo.constinfo !6
  %1 = load i64, i64* @xorshift64star.x, align 8
  %xor = xor i64 %1, %shr
  store i64 %xor, i64* @xorshift64star.x, align 8, !taffo.constinfo !6
  %2 = load i64, i64* @xorshift64star.x, align 8
  %shl = shl i64 %2, 25, !taffo.constinfo !6
  %3 = load i64, i64* @xorshift64star.x, align 8
  %xor1 = xor i64 %3, %shl
  store i64 %xor1, i64* @xorshift64star.x, align 8, !taffo.constinfo !6
  %4 = load i64, i64* @xorshift64star.x, align 8
  %shr2 = lshr i64 %4, 27, !taffo.constinfo !6
  %5 = load i64, i64* @xorshift64star.x, align 8
  %xor3 = xor i64 %5, %shr2
  store i64 %xor3, i64* @xorshift64star.x, align 8, !taffo.constinfo !6
  %6 = load i64, i64* @xorshift64star.x, align 8
  %mul = mul i64 %6, 2685821657736338717, !taffo.constinfo !6
  ret i64 %mul
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randomInRange(i32 %a, i32 %b) #0 !taffo.initweight !4 !taffo.funinfo !7 {
entry:
  %sub = sub nsw i32 %b, %a, !taffo.info !10
  %cmp = icmp sle i32 %sub, 0, !taffo.info !12
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %conv = sext i32 %sub to i64, !taffo.info !10
  %rem = urem i64 -1, %conv, !taffo.constinfo !6, !taffo.info !14
  %sub1 = sub i64 -1, %rem, !taffo.constinfo !6, !taffo.info !16
  %call = call i64 @xorshift64star(), !taffo.constinfo !18
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %n.0 = phi i64 [ %call, %if.end ], [ %call4, %while.body ]
  %cmp2 = icmp ugt i64 %n.0, %sub1, !taffo.info !12
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call4 = call i64 @xorshift64star(), !taffo.constinfo !18
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %conv5 = sext i32 %sub to i64, !taffo.info !10
  %rem6 = urem i64 %n.0, %conv5
  %conv7 = sext i32 %a to i64, !taffo.info !8
  %add = add i64 %rem6, %conv7
  %conv8 = trunc i64 %add to i32
  br label %return

return:                                           ; preds = %while.end, %if.then
  %retval.0 = phi i32 [ %a, %if.then ], [ %conv8, %while.end ], !taffo.info !8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !taffo.initweight !4 !taffo.funinfo !5 {
entry:
  %buf.s32_0fixp = alloca [524288 x i32], align 16, !taffo.info !19
  %samples = alloca [1000 x i64], align 16
  %samples74 = alloca [1000 x i64], align 16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !22
  %cmp = icmp slt i32 %i.0, 262144, !taffo.info !24
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @randomInRange(i32 0, i32 256), !taffo.constinfo !3, !taffo.info !8
  %conv = sitofp i32 %call to float, !taffo.info !8
  %conv2 = fpext float %conv to double, !taffo.info !8
  %div = fdiv double %conv2, 3.276800e+04, !taffo.constinfo !26, !taffo.info !8
  %conv3 = fptrunc double %div to float, !taffo.info !8
  %0 = fmul float 1.000000e+00, %conv3, !taffo.info !8
  %1 = fptosi float %0 to i32, !taffo.info !8
  %idxprom = sext i32 %i.0 to i64, !taffo.info !29
  %arrayidx.s32_0fixp = getelementptr inbounds [524288 x i32], [524288 x i32]* %buf.s32_0fixp, i64 0, i64 %idxprom, !taffo.info !19
  store i32 %1, i32* %arrayidx.s32_0fixp, align 4, !taffo.info !31
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !6, !taffo.info !33
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)), !taffo.constinfo !3
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc40, %for.end
  %t.0 = phi i32 [ 0, %for.end ], [ %inc41, %for.inc40 ], !taffo.info !22
  %cmp6 = icmp slt i32 %t.0, 1000, !taffo.info !24
  br i1 %cmp6, label %for.body8, label %for.end42

for.body8:                                        ; preds = %for.cond5
  call void @timerStart(), !taffo.constinfo !18
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc21, %for.body8
  %i9.0 = phi i32 [ 0, %for.body8 ], [ %add22, %for.inc21 ], !taffo.info !35
  %cmp11 = icmp slt i32 %i9.0, 262144, !taffo.info !24
  br i1 %cmp11, label %for.body13, label %for.end23

for.body13:                                       ; preds = %for.cond10
  %idxprom14 = sext i32 %i9.0 to i64, !taffo.info !37
  %arrayidx15.s32_0fixp = getelementptr inbounds [524288 x i32], [524288 x i32]* %buf.s32_0fixp, i64 0, i64 %idxprom14, !taffo.info !19
  %s32_0fixp7 = load i32, i32* %arrayidx15.s32_0fixp, align 4, !taffo.info !39
  %add = add nsw i32 %i9.0, 1, !taffo.constinfo !6, !taffo.info !42
  %idxprom16 = sext i32 %add to i64, !taffo.info !42
  %arrayidx17.s32_0fixp = getelementptr inbounds [524288 x i32], [524288 x i32]* %buf.s32_0fixp, i64 0, i64 %idxprom16, !taffo.info !19
  %s32_0fixp6 = load i32, i32* %arrayidx17.s32_0fixp, align 4, !taffo.info !39
  %2 = sext i32 %s32_0fixp7 to i64, !taffo.info !39
  %3 = sext i32 %s32_0fixp6 to i64, !taffo.info !39
  %add18.s64_0fixp = add i64 %2, %3, !taffo.info !44
  %idxprom19 = sext i32 %i9.0 to i64, !taffo.info !37
  %arrayidx20.s32_0fixp = getelementptr inbounds [524288 x i32], [524288 x i32]* %buf.s32_0fixp, i64 0, i64 %idxprom19, !taffo.info !19
  %4 = trunc i64 %add18.s64_0fixp to i32, !taffo.info !44
  store i32 %4, i32* %arrayidx20.s32_0fixp, align 4, !taffo.info !31
  br label %for.inc21

for.inc21:                                        ; preds = %for.body13
  %add22 = add nsw i32 %i9.0, 2, !taffo.constinfo !6, !taffo.info !46
  br label %for.cond10

for.end23:                                        ; preds = %for.cond10
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc34, %for.end23
  %i26.0 = phi i32 [ 0, %for.end23 ], [ %inc35, %for.inc34 ], !taffo.info !48
  %sync.0.s64_0fixp = phi i64 [ undef, %for.end23 ], [ %add33.s64_0fixp, %for.inc34 ], !taffo.info !50
  %cmp28 = icmp slt i32 %i26.0, 262144, !taffo.info !24
  br i1 %cmp28, label %for.body30, label %for.end36

for.body30:                                       ; preds = %for.cond27
  %idxprom31 = sext i32 %i26.0 to i64, !taffo.info !52
  %arrayidx32.s32_0fixp = getelementptr inbounds [524288 x i32], [524288 x i32]* %buf.s32_0fixp, i64 0, i64 %idxprom31, !taffo.info !19
  %s32_0fixp5 = load i32, i32* %arrayidx32.s32_0fixp, align 4, !taffo.info !44
  %5 = sext i32 %s32_0fixp5 to i64, !taffo.info !44
  %add33.s64_0fixp = add i64 %sync.0.s64_0fixp, %5, !taffo.info !50
  br label %for.inc34

for.inc34:                                        ; preds = %for.body30
  %inc35 = add nsw i32 %i26.0, 1, !taffo.constinfo !6, !taffo.info !54
  br label %for.cond27

for.end36:                                        ; preds = %for.cond27
  %call37 = call i64 @timerStop(), !taffo.constinfo !18
  %idxprom38 = sext i32 %t.0 to i64, !taffo.info !29
  %arrayidx39 = getelementptr inbounds [1000 x i64], [1000 x i64]* %samples, i64 0, i64 %idxprom38
  store i64 %call37, i64* %arrayidx39, align 8
  br label %for.inc40

for.inc40:                                        ; preds = %for.end36
  %inc41 = add nsw i32 %t.0, 1, !taffo.constinfo !6, !taffo.info !33
  br label %for.cond5

for.end42:                                        ; preds = %for.cond5
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc51, %for.end42
  %t43.0 = phi i32 [ 10, %for.end42 ], [ %inc52, %for.inc51 ], !taffo.info !56
  %avg.0 = phi i64 [ 0, %for.end42 ], [ %add50, %for.inc51 ], !taffo.info !8
  %cmp45 = icmp slt i32 %t43.0, 1000, !taffo.info !24
  br i1 %cmp45, label %for.body47, label %for.end53

for.body47:                                       ; preds = %for.cond44
  %idxprom48 = sext i32 %t43.0 to i64, !taffo.info !58
  %arrayidx49 = getelementptr inbounds [1000 x i64], [1000 x i64]* %samples, i64 0, i64 %idxprom48
  %6 = load i64, i64* %arrayidx49, align 8
  %add50 = add i64 %avg.0, %6
  br label %for.inc51

for.inc51:                                        ; preds = %for.body47
  %inc52 = add nsw i32 %t43.0, 1, !taffo.constinfo !6, !taffo.info !60
  br label %for.cond44

for.end53:                                        ; preds = %for.cond44
  %div54 = udiv i64 %avg.0, 990, !taffo.constinfo !6, !taffo.info !8
  %call55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i64 %div54), !taffo.constinfo !3
  br label %for.cond57

for.cond57:                                       ; preds = %for.inc70, %for.end53
  %i56.0 = phi i32 [ 0, %for.end53 ], [ %inc71, %for.inc70 ], !taffo.info !22
  %cmp58 = icmp slt i32 %i56.0, 262144, !taffo.info !24
  br i1 %cmp58, label %for.body60, label %for.end72

for.body60:                                       ; preds = %for.cond57
  %add61 = add nsw i32 %i56.0, 1, !taffo.constinfo !6, !taffo.info !33
  %rem = srem i32 %add61, 4, !taffo.constinfo !6, !taffo.info !62
  %call62 = call i32 @randomInRange(i32 0, i32 %rem), !taffo.constinfo !3
  %conv63 = sitofp i32 %call62 to float
  %conv64 = fpext float %conv63 to double
  %div65 = fdiv double %conv64, 3.276800e+04, !taffo.constinfo !26
  %add66 = fadd double 1.000000e+00, %div65, !taffo.constinfo !64
  %conv67 = fptrunc double %add66 to float
  %7 = fmul float 1.000000e+00, %conv67, !taffo.info !29
  %8 = fptosi float %7 to i32, !taffo.info !29
  %idxprom68 = sext i32 %i56.0 to i64, !taffo.info !29
  %arrayidx69.s32_0fixp = getelementptr inbounds [524288 x i32], [524288 x i32]* %buf.s32_0fixp, i64 0, i64 %idxprom68, !taffo.info !19
  store i32 %8, i32* %arrayidx69.s32_0fixp, align 4, !taffo.info !31
  br label %for.inc70

for.inc70:                                        ; preds = %for.body60
  %inc71 = add nsw i32 %i56.0, 1, !taffo.constinfo !6, !taffo.info !33
  br label %for.cond57

for.end72:                                        ; preds = %for.cond57
  %call73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)), !taffo.constinfo !3
  br label %for.cond76

for.cond76:                                       ; preds = %for.inc112, %for.end72
  %t75.0 = phi i32 [ 0, %for.end72 ], [ %inc113, %for.inc112 ], !taffo.info !22
  %cmp77 = icmp slt i32 %t75.0, 1000, !taffo.info !24
  br i1 %cmp77, label %for.body79, label %for.end114

for.body79:                                       ; preds = %for.cond76
  call void @timerStart(), !taffo.constinfo !18
  br label %for.cond81

for.cond81:                                       ; preds = %for.inc92, %for.body79
  %i80.0 = phi i32 [ 0, %for.body79 ], [ %add93, %for.inc92 ], !taffo.info !35
  %cmp82 = icmp slt i32 %i80.0, 262144, !taffo.info !24
  br i1 %cmp82, label %for.body84, label %for.end94

for.body84:                                       ; preds = %for.cond81
  %idxprom85 = sext i32 %i80.0 to i64, !taffo.info !37
  %arrayidx86.s32_0fixp = getelementptr inbounds [524288 x i32], [524288 x i32]* %buf.s32_0fixp, i64 0, i64 %idxprom85, !taffo.info !19
  %s32_0fixp4 = load i32, i32* %arrayidx86.s32_0fixp, align 4, !taffo.info !19
  %add87 = add nsw i32 %i80.0, 1, !taffo.constinfo !6, !taffo.info !42
  %idxprom88 = sext i32 %add87 to i64, !taffo.info !42
  %arrayidx89.s32_0fixp = getelementptr inbounds [524288 x i32], [524288 x i32]* %buf.s32_0fixp, i64 0, i64 %idxprom88, !taffo.info !19
  %s32_0fixp3 = load i32, i32* %arrayidx89.s32_0fixp, align 4, !taffo.info !19
  %9 = sext i32 %s32_0fixp4 to i64, !taffo.info !19
  %10 = sext i32 %s32_0fixp3 to i64, !taffo.info !19
  %11 = mul i64 %9, %10, !taffo.info !65
  %mul.s32_0fixp = trunc i64 %11 to i32, !taffo.info !19
  %idxprom90 = sext i32 %i80.0 to i64, !taffo.info !37
  %arrayidx91.s32_0fixp = getelementptr inbounds [524288 x i32], [524288 x i32]* %buf.s32_0fixp, i64 0, i64 %idxprom90, !taffo.info !19
  store i32 %mul.s32_0fixp, i32* %arrayidx91.s32_0fixp, align 4, !taffo.info !31
  br label %for.inc92

for.inc92:                                        ; preds = %for.body84
  %add93 = add nsw i32 %i80.0, 2, !taffo.constinfo !6, !taffo.info !46
  br label %for.cond81

for.end94:                                        ; preds = %for.cond81
  br label %for.cond99

for.cond99:                                       ; preds = %for.inc106, %for.end94
  %sync95.0.s32_0fixp = phi i32 [ undef, %for.end94 ], [ %add105.s32_0fixp, %for.inc106 ], !taffo.info !19
  %i98.0 = phi i32 [ 0, %for.end94 ], [ %inc107, %for.inc106 ], !taffo.info !48
  %cmp100 = icmp slt i32 %i98.0, 262144, !taffo.info !24
  br i1 %cmp100, label %for.body102, label %for.end108

for.body102:                                      ; preds = %for.cond99
  %idxprom103 = sext i32 %i98.0 to i64, !taffo.info !52
  %arrayidx104.s32_0fixp = getelementptr inbounds [524288 x i32], [524288 x i32]* %buf.s32_0fixp, i64 0, i64 %idxprom103, !taffo.info !19
  %s32_0fixp = load i32, i32* %arrayidx104.s32_0fixp, align 4, !taffo.info !19
  %add105.s32_0fixp = add i32 %sync95.0.s32_0fixp, %s32_0fixp, !taffo.info !19
  br label %for.inc106

for.inc106:                                       ; preds = %for.body102
  %inc107 = add nsw i32 %i98.0, 1, !taffo.constinfo !6, !taffo.info !54
  br label %for.cond99

for.end108:                                       ; preds = %for.cond99
  %call109 = call i64 @timerStop(), !taffo.constinfo !18
  %idxprom110 = sext i32 %t75.0 to i64, !taffo.info !29
  %arrayidx111 = getelementptr inbounds [1000 x i64], [1000 x i64]* %samples74, i64 0, i64 %idxprom110
  store i64 %call109, i64* %arrayidx111, align 8
  br label %for.inc112

for.inc112:                                       ; preds = %for.end108
  %inc113 = add nsw i32 %t75.0, 1, !taffo.constinfo !6, !taffo.info !33
  br label %for.cond76

for.end114:                                       ; preds = %for.cond76
  br label %for.cond117

for.cond117:                                      ; preds = %for.inc124, %for.end114
  %avg115.0 = phi i64 [ 0, %for.end114 ], [ %add123, %for.inc124 ], !taffo.info !8
  %t116.0 = phi i32 [ 10, %for.end114 ], [ %inc125, %for.inc124 ], !taffo.info !56
  %cmp118 = icmp slt i32 %t116.0, 1000, !taffo.info !24
  br i1 %cmp118, label %for.body120, label %for.end126

for.body120:                                      ; preds = %for.cond117
  %idxprom121 = sext i32 %t116.0 to i64, !taffo.info !58
  %arrayidx122 = getelementptr inbounds [1000 x i64], [1000 x i64]* %samples74, i64 0, i64 %idxprom121
  %12 = load i64, i64* %arrayidx122, align 8
  %add123 = add i64 %avg115.0, %12
  br label %for.inc124

for.inc124:                                       ; preds = %for.body120
  %inc125 = add nsw i32 %t116.0, 1, !taffo.constinfo !6, !taffo.info !60
  br label %for.cond117

for.end126:                                       ; preds = %for.cond117
  %div127 = udiv i64 %avg115.0, 990, !taffo.constinfo !6, !taffo.info !8
  %call128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i64 %div127), !taffo.constinfo !3
  ret i32 0
}

declare !taffo.initweight !66 !taffo.funinfo !67 dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!1}
!llvm.ident = !{!2}

!0 = !{}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{!"clang version 10.0.1 (https://github.com/francescopont/llvm-project 4471d3381d8e0968140f5aa63064626001d2f80d)"}
!3 = !{i1 false, i1 false, i1 false}
!4 = !{i32 -1, i32 -1}
!5 = !{i32 0, i1 false, i32 0, i1 false}
!6 = !{i1 false, i1 false}
!7 = !{i32 1, !8, i32 1, !10}
!8 = !{i1 false, !9, i1 false, i2 0}
!9 = !{double 0.000000e+00, double 0.000000e+00}
!10 = !{i1 false, !11, i1 false, i2 0}
!11 = !{double 2.560000e+02, double 2.560000e+02}
!12 = !{i1 false, !13, i1 false, i2 0}
!13 = !{double 0.000000e+00, double 1.000000e+00}
!14 = !{i1 false, !15, i1 false, i2 0}
!15 = !{double -2.560000e+02, double 0.000000e+00}
!16 = !{i1 false, !17, i1 false, i2 0}
!17 = !{double -1.000000e+00, double 2.550000e+02}
!18 = !{i1 false}
!19 = !{!20, !21, i1 false, i2 1}
!20 = !{!"fixp", i32 -32, i32 0}
!21 = !{double 0xFFF0000000000000, double 0x7FF0000000000000}
!22 = !{i1 false, !23, i1 false, i2 0}
!23 = !{double 0.000000e+00, double 1.000000e+01}
!24 = !{i1 false, !25, i1 false, i2 0}
!25 = !{double 1.000000e+00, double 1.000000e+00}
!26 = !{i1 false, !27}
!27 = !{i1 false, !28, i1 false, i2 0}
!28 = !{double 3.276800e+04, double 3.276800e+04}
!29 = !{i1 false, !30, i1 false, i2 0}
!30 = !{double 0.000000e+00, double 9.000000e+00}
!31 = !{i1 false, !32, i1 false, i2 1}
!32 = !{double -3.000000e+03, double 3.000000e+03}
!33 = !{i1 false, !34, i1 false, i2 0}
!34 = !{double 1.000000e+00, double 1.000000e+01}
!35 = !{i1 false, !36, i1 false, i2 0}
!36 = !{double 0.000000e+00, double 2.000000e+02}
!37 = !{i1 false, !38, i1 false, i2 0}
!38 = !{double 0.000000e+00, double 1.980000e+02}
!39 = !{!40, !41, i1 false, i2 1}
!40 = !{!"fixp", i32 -64, i32 0}
!41 = !{double 0xC6D7700000000000, double 0x46D7700000000000}
!42 = !{i1 false, !43, i1 false, i2 0}
!43 = !{double 1.000000e+00, double 1.990000e+02}
!44 = !{!40, !45, i1 false, i2 1}
!45 = !{double 0xC6E7700000000000, double 0x46E7700000000000}
!46 = !{i1 false, !47, i1 false, i2 0}
!47 = !{double 2.000000e+00, double 2.000000e+02}
!48 = !{i1 false, !49, i1 false, i2 0}
!49 = !{double 0.000000e+00, double 1.000000e+02}
!50 = !{!40, !51, i1 false, i2 1}
!51 = !{double 0xC71D5354D5354D54, double 0x471D5354D5354D54}
!52 = !{i1 false, !53, i1 false, i2 0}
!53 = !{double 0.000000e+00, double 9.900000e+01}
!54 = !{i1 false, !55, i1 false, i2 0}
!55 = !{double 1.000000e+00, double 1.000000e+02}
!56 = !{i1 false, !57, i1 false, i2 0}
!57 = !{double 1.000000e+01, double 2.000000e+01}
!58 = !{i1 false, !59, i1 false, i2 0}
!59 = !{double 1.000000e+01, double 1.900000e+01}
!60 = !{i1 false, !61, i1 false, i2 0}
!61 = !{double 1.100000e+01, double 2.000000e+01}
!62 = !{i1 false, !63, i1 false, i2 0}
!63 = !{double 0.000000e+00, double 4.000000e+00}
!64 = !{!24, i1 false}
!65 = !{!40, !21, i1 false, i2 1}
!66 = !{i32 -1}
!67 = !{i32 0, i1 false}
