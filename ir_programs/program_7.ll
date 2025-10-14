; ModuleID = 'program_7.bc'
source_filename = "/local-ssd/proj-vvgwbgdlkvmllv7sgmjr4ouw3sqrvbvy-build/aidengro/spack-stage-proj-5.2.0-vvgwbgdlkvmllv7sgmjr4ouw3sqrvbvy/spack-src/src/proj_mdist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MDIST = type { i32, double, double, [1 x double] }

; Function Attrs: nounwind uwtable
define ptr @proj_mdist_ini(double noundef %es) #0 {
entry:
  %retval = alloca ptr, align 8
  %es.addr = alloca double, align 8
  %numf = alloca double, align 8
  %numfi = alloca double, align 8
  %twon1 = alloca double, align 8
  %denf = alloca double, align 8
  %denfi = alloca double, align 8
  %ens = alloca double, align 8
  %T = alloca double, align 8
  %twon = alloca double, align 8
  %den = alloca double, align 8
  %El = alloca double, align 8
  %Es = alloca double, align 8
  %E = alloca [20 x double], align 16
  %b = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store double %es, ptr %es.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %numf) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %numfi) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %twon1) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %denf) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %denfi) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %ens) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %T) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %twon) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %den) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %El) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %Es) #6
  call void @llvm.lifetime.start.p0(i64 160, ptr %E) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #6
  %0 = load double, ptr %es.addr, align 8, !tbaa !4
  store double %0, ptr %ens, align 8, !tbaa !4
  store double 1.000000e+00, ptr %denfi, align 8, !tbaa !4
  store double 1.000000e+00, ptr %twon1, align 8, !tbaa !4
  store double 1.000000e+00, ptr %numf, align 8, !tbaa !4
  store double 1.000000e+00, ptr %denf, align 8, !tbaa !4
  store double 4.000000e+00, ptr %twon, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds [20 x double], ptr %E, i64 0, i64 0
  store double 1.000000e+00, ptr %arrayidx, align 16, !tbaa !4
  store double 1.000000e+00, ptr %El, align 8, !tbaa !4
  store double 1.000000e+00, ptr %Es, align 8, !tbaa !4
  store i32 1, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !tbaa !8
  %cmp = icmp slt i32 %1, 20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load double, ptr %twon1, align 8, !tbaa !4
  %3 = load double, ptr %twon1, align 8, !tbaa !4
  %mul = fmul double %2, %3
  %4 = load double, ptr %numf, align 8, !tbaa !4
  %mul1 = fmul double %4, %mul
  store double %mul1, ptr %numf, align 8, !tbaa !4
  %5 = load double, ptr %twon, align 8, !tbaa !4
  %6 = load double, ptr %denf, align 8, !tbaa !4
  %mul2 = fmul double %5, %6
  %7 = load double, ptr %denf, align 8, !tbaa !4
  %mul3 = fmul double %mul2, %7
  %8 = load double, ptr %twon1, align 8, !tbaa !4
  %mul4 = fmul double %mul3, %8
  store double %mul4, ptr %den, align 8, !tbaa !4
  %9 = load double, ptr %numf, align 8, !tbaa !4
  %10 = load double, ptr %den, align 8, !tbaa !4
  %div = fdiv double %9, %10
  store double %div, ptr %T, align 8, !tbaa !4
  %11 = load double, ptr %T, align 8, !tbaa !4
  %12 = load double, ptr %ens, align 8, !tbaa !4
  %mul5 = fmul double %11, %12
  %13 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %13 to i64
  %arrayidx6 = getelementptr inbounds [20 x double], ptr %E, i64 0, i64 %idxprom
  store double %mul5, ptr %arrayidx6, align 8, !tbaa !4
  %14 = load double, ptr %Es, align 8, !tbaa !4
  %sub = fsub double %14, %mul5
  store double %sub, ptr %Es, align 8, !tbaa !4
  %15 = load double, ptr %es.addr, align 8, !tbaa !4
  %16 = load double, ptr %ens, align 8, !tbaa !4
  %mul7 = fmul double %16, %15
  store double %mul7, ptr %ens, align 8, !tbaa !4
  %17 = load double, ptr %twon, align 8, !tbaa !4
  %mul8 = fmul double %17, 4.000000e+00
  store double %mul8, ptr %twon, align 8, !tbaa !4
  %18 = load double, ptr %denfi, align 8, !tbaa !4
  %inc = fadd double %18, 1.000000e+00
  store double %inc, ptr %denfi, align 8, !tbaa !4
  %19 = load double, ptr %denf, align 8, !tbaa !4
  %mul9 = fmul double %19, %inc
  store double %mul9, ptr %denf, align 8, !tbaa !4
  %20 = load double, ptr %twon1, align 8, !tbaa !4
  %add = fadd double %20, 2.000000e+00
  store double %add, ptr %twon1, align 8, !tbaa !4
  %21 = load double, ptr %Es, align 8, !tbaa !4
  %22 = load double, ptr %El, align 8, !tbaa !4
  %cmp10 = fcmp oeq double %21, %22
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %23 = load double, ptr %Es, align 8, !tbaa !4
  store double %23, ptr %El, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %24 = load i32, ptr %i, align 4, !tbaa !8
  %inc11 = add nsw i32 %24, 1
  store i32 %inc11, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %if.then, %for.cond
  %25 = load i32, ptr %i, align 4, !tbaa !8
  %conv = sext i32 %25 to i64
  %mul12 = mul i64 %conv, 8
  %add13 = add i64 32, %mul12
  %call = call noalias ptr @malloc(i64 noundef %add13) #7
  store ptr %call, ptr %b, align 8, !tbaa !12
  %cmp14 = icmp eq ptr %call, null
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %for.end
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end17:                                         ; preds = %for.end
  %26 = load i32, ptr %i, align 4, !tbaa !8
  %sub18 = sub nsw i32 %26, 1
  %27 = load ptr, ptr %b, align 8, !tbaa !12
  %nb = getelementptr inbounds %struct.MDIST, ptr %27, i32 0, i32 0
  store i32 %sub18, ptr %nb, align 8, !tbaa !14
  %28 = load double, ptr %es.addr, align 8, !tbaa !4
  %29 = load ptr, ptr %b, align 8, !tbaa !12
  %es19 = getelementptr inbounds %struct.MDIST, ptr %29, i32 0, i32 1
  store double %28, ptr %es19, align 8, !tbaa !16
  %30 = load double, ptr %Es, align 8, !tbaa !4
  %31 = load ptr, ptr %b, align 8, !tbaa !12
  %E20 = getelementptr inbounds %struct.MDIST, ptr %31, i32 0, i32 2
  store double %30, ptr %E20, align 8, !tbaa !17
  %32 = load double, ptr %Es, align 8, !tbaa !4
  %sub21 = fsub double 1.000000e+00, %32
  store double %sub21, ptr %Es, align 8, !tbaa !4
  %33 = load ptr, ptr %b, align 8, !tbaa !12
  %b22 = getelementptr inbounds %struct.MDIST, ptr %33, i32 0, i32 3
  %arrayidx23 = getelementptr inbounds [1 x double], ptr %b22, i64 0, i64 0
  store double %sub21, ptr %arrayidx23, align 8, !tbaa !4
  store double 1.000000e+00, ptr %denf, align 8, !tbaa !4
  store double 1.000000e+00, ptr %numf, align 8, !tbaa !4
  store double 2.000000e+00, ptr %numfi, align 8, !tbaa !4
  store double 3.000000e+00, ptr %denfi, align 8, !tbaa !4
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc40, %if.end17
  %34 = load i32, ptr %j, align 4, !tbaa !8
  %35 = load i32, ptr %i, align 4, !tbaa !8
  %cmp25 = icmp slt i32 %34, %35
  br i1 %cmp25, label %for.body27, label %for.end42

for.body27:                                       ; preds = %for.cond24
  %36 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom28 = sext i32 %36 to i64
  %arrayidx29 = getelementptr inbounds [20 x double], ptr %E, i64 0, i64 %idxprom28
  %37 = load double, ptr %arrayidx29, align 8, !tbaa !4
  %38 = load double, ptr %Es, align 8, !tbaa !4
  %sub30 = fsub double %38, %37
  store double %sub30, ptr %Es, align 8, !tbaa !4
  %39 = load double, ptr %numfi, align 8, !tbaa !4
  %40 = load double, ptr %numf, align 8, !tbaa !4
  %mul31 = fmul double %40, %39
  store double %mul31, ptr %numf, align 8, !tbaa !4
  %41 = load double, ptr %denfi, align 8, !tbaa !4
  %42 = load double, ptr %denf, align 8, !tbaa !4
  %mul32 = fmul double %42, %41
  store double %mul32, ptr %denf, align 8, !tbaa !4
  %43 = load double, ptr %Es, align 8, !tbaa !4
  %44 = load double, ptr %numf, align 8, !tbaa !4
  %mul33 = fmul double %43, %44
  %45 = load double, ptr %denf, align 8, !tbaa !4
  %div34 = fdiv double %mul33, %45
  %46 = load ptr, ptr %b, align 8, !tbaa !12
  %b35 = getelementptr inbounds %struct.MDIST, ptr %46, i32 0, i32 3
  %47 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom36 = sext i32 %47 to i64
  %arrayidx37 = getelementptr inbounds [1 x double], ptr %b35, i64 0, i64 %idxprom36
  store double %div34, ptr %arrayidx37, align 8, !tbaa !4
  %48 = load double, ptr %numfi, align 8, !tbaa !4
  %add38 = fadd double %48, 2.000000e+00
  store double %add38, ptr %numfi, align 8, !tbaa !4
  %49 = load double, ptr %denfi, align 8, !tbaa !4
  %add39 = fadd double %49, 2.000000e+00
  store double %add39, ptr %denfi, align 8, !tbaa !4
  br label %for.inc40

for.inc40:                                        ; preds = %for.body27
  %50 = load i32, ptr %j, align 4, !tbaa !8
  %inc41 = add nsw i32 %50, 1
  store i32 %inc41, ptr %j, align 4, !tbaa !8
  br label %for.cond24, !llvm.loop !18

for.end42:                                        ; preds = %for.cond24
  %51 = load ptr, ptr %b, align 8, !tbaa !12
  store ptr %51, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end42, %if.then16
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #6
  call void @llvm.lifetime.end.p0(i64 160, ptr %E) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %Es) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %El) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %den) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %twon) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %T) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %ens) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %denfi) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %denf) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %twon1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %numfi) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %numf) #6
  %52 = load ptr, ptr %retval, align 8
  ret ptr %52
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define double @proj_mdist(double noundef %phi, double noundef %sphi, double noundef %cphi, ptr noundef %data) #0 {
entry:
  %phi.addr = alloca double, align 8
  %sphi.addr = alloca double, align 8
  %cphi.addr = alloca double, align 8
  %data.addr = alloca ptr, align 8
  %b = alloca ptr, align 8
  %sc = alloca double, align 8
  %sum = alloca double, align 8
  %sphi2 = alloca double, align 8
  %D = alloca double, align 8
  %i = alloca i32, align 4
  store double %phi, ptr %phi.addr, align 8, !tbaa !4
  store double %sphi, ptr %sphi.addr, align 8, !tbaa !4
  store double %cphi, ptr %cphi.addr, align 8, !tbaa !4
  store ptr %data, ptr %data.addr, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #6
  %0 = load ptr, ptr %data.addr, align 8, !tbaa !12
  store ptr %0, ptr %b, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr %sc) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %sum) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %sphi2) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %D) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  %1 = load double, ptr %sphi.addr, align 8, !tbaa !4
  %2 = load double, ptr %cphi.addr, align 8, !tbaa !4
  %mul = fmul double %1, %2
  store double %mul, ptr %sc, align 8, !tbaa !4
  %3 = load double, ptr %sphi.addr, align 8, !tbaa !4
  %4 = load double, ptr %sphi.addr, align 8, !tbaa !4
  %mul1 = fmul double %3, %4
  store double %mul1, ptr %sphi2, align 8, !tbaa !4
  %5 = load double, ptr %phi.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %b, align 8, !tbaa !12
  %E = getelementptr inbounds %struct.MDIST, ptr %6, i32 0, i32 2
  %7 = load double, ptr %E, align 8, !tbaa !17
  %8 = load ptr, ptr %b, align 8, !tbaa !12
  %es = getelementptr inbounds %struct.MDIST, ptr %8, i32 0, i32 1
  %9 = load double, ptr %es, align 8, !tbaa !16
  %10 = load double, ptr %sc, align 8, !tbaa !4
  %mul3 = fmul double %9, %10
  %11 = load ptr, ptr %b, align 8, !tbaa !12
  %es4 = getelementptr inbounds %struct.MDIST, ptr %11, i32 0, i32 1
  %12 = load double, ptr %es4, align 8, !tbaa !16
  %13 = load double, ptr %sphi2, align 8, !tbaa !4
  %neg = fneg double %12
  %14 = call double @llvm.fmuladd.f64(double %neg, double %13, double 1.000000e+00)
  %call = call double @sqrt(double noundef %14) #6
  %div = fdiv double %mul3, %call
  %neg6 = fneg double %div
  %15 = call double @llvm.fmuladd.f64(double %5, double %7, double %neg6)
  store double %15, ptr %D, align 8, !tbaa !4
  %16 = load ptr, ptr %b, align 8, !tbaa !12
  %b7 = getelementptr inbounds %struct.MDIST, ptr %16, i32 0, i32 3
  %17 = load ptr, ptr %b, align 8, !tbaa !12
  %nb = getelementptr inbounds %struct.MDIST, ptr %17, i32 0, i32 0
  %18 = load i32, ptr %nb, align 8, !tbaa !14
  store i32 %18, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %18 to i64
  %arrayidx = getelementptr inbounds [1 x double], ptr %b7, i64 0, i64 %idxprom
  %19 = load double, ptr %arrayidx, align 8, !tbaa !4
  store double %19, ptr %sum, align 8, !tbaa !4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %20 = load i32, ptr %i, align 4, !tbaa !8
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load ptr, ptr %b, align 8, !tbaa !12
  %b8 = getelementptr inbounds %struct.MDIST, ptr %21, i32 0, i32 3
  %22 = load i32, ptr %i, align 4, !tbaa !8
  %dec = add nsw i32 %22, -1
  store i32 %dec, ptr %i, align 4, !tbaa !8
  %idxprom9 = sext i32 %dec to i64
  %arrayidx10 = getelementptr inbounds [1 x double], ptr %b8, i64 0, i64 %idxprom9
  %23 = load double, ptr %arrayidx10, align 8, !tbaa !4
  %24 = load double, ptr %sphi2, align 8, !tbaa !4
  %25 = load double, ptr %sum, align 8, !tbaa !4
  %26 = call double @llvm.fmuladd.f64(double %24, double %25, double %23)
  store double %26, ptr %sum, align 8, !tbaa !4
  br label %while.cond, !llvm.loop !19

while.end:                                        ; preds = %while.cond
  %27 = load double, ptr %D, align 8, !tbaa !4
  %28 = load double, ptr %sc, align 8, !tbaa !4
  %29 = load double, ptr %sum, align 8, !tbaa !4
  %30 = call double @llvm.fmuladd.f64(double %28, double %29, double %27)
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %D) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %sphi2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %sum) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %sc) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #6
  ret double %30
}

; Function Attrs: nounwind
declare double @sqrt(double noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nounwind uwtable
define double @proj_inv_mdist(ptr noundef %ctx, double noundef %dist, ptr noundef %data) #0 {
entry:
  %retval = alloca double, align 8
  %ctx.addr = alloca ptr, align 8
  %dist.addr = alloca double, align 8
  %data.addr = alloca ptr, align 8
  %b = alloca ptr, align 8
  %s = alloca double, align 8
  %t = alloca double, align 8
  %phi = alloca double, align 8
  %k = alloca double, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !12
  store double %dist, ptr %dist.addr, align 8, !tbaa !4
  store ptr %data, ptr %data.addr, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #6
  %0 = load ptr, ptr %data.addr, align 8, !tbaa !12
  store ptr %0, ptr %b, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %phi) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  %1 = load ptr, ptr %b, align 8, !tbaa !12
  %es = getelementptr inbounds %struct.MDIST, ptr %1, i32 0, i32 1
  %2 = load double, ptr %es, align 8, !tbaa !16
  %sub = fsub double 1.000000e+00, %2
  %div = fdiv double 1.000000e+00, %sub
  store double %div, ptr %k, align 8, !tbaa !4
  store i32 20, ptr %i, align 4, !tbaa !8
  %3 = load double, ptr %dist.addr, align 8, !tbaa !4
  store double %3, ptr %phi, align 8, !tbaa !4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %4 = load i32, ptr %i, align 4, !tbaa !8
  %dec = add nsw i32 %4, -1
  store i32 %dec, ptr %i, align 4, !tbaa !8
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load double, ptr %phi, align 8, !tbaa !4
  %call = call double @sin(double noundef %5) #6
  store double %call, ptr %s, align 8, !tbaa !4
  %6 = load ptr, ptr %b, align 8, !tbaa !12
  %es1 = getelementptr inbounds %struct.MDIST, ptr %6, i32 0, i32 1
  %7 = load double, ptr %es1, align 8, !tbaa !16
  %8 = load double, ptr %s, align 8, !tbaa !4
  %mul = fmul double %7, %8
  %9 = load double, ptr %s, align 8, !tbaa !4
  %neg = fneg double %mul
  %10 = call double @llvm.fmuladd.f64(double %neg, double %9, double 1.000000e+00)
  store double %10, ptr %t, align 8, !tbaa !4
  %11 = load double, ptr %phi, align 8, !tbaa !4
  %12 = load double, ptr %s, align 8, !tbaa !4
  %13 = load double, ptr %phi, align 8, !tbaa !4
  %call3 = call double @cos(double noundef %13) #6
  %14 = load ptr, ptr %b, align 8, !tbaa !12
  %call4 = call double @proj_mdist(double noundef %11, double noundef %12, double noundef %call3, ptr noundef %14)
  %15 = load double, ptr %dist.addr, align 8, !tbaa !4
  %sub5 = fsub double %call4, %15
  %16 = load double, ptr %t, align 8, !tbaa !4
  %17 = load double, ptr %t, align 8, !tbaa !4
  %call6 = call double @sqrt(double noundef %17) #6
  %mul7 = fmul double %16, %call6
  %mul8 = fmul double %sub5, %mul7
  %18 = load double, ptr %k, align 8, !tbaa !4
  %mul9 = fmul double %mul8, %18
  store double %mul9, ptr %t, align 8, !tbaa !4
  %19 = load double, ptr %phi, align 8, !tbaa !4
  %sub10 = fsub double %19, %mul9
  store double %sub10, ptr %phi, align 8, !tbaa !4
  %20 = load double, ptr %t, align 8, !tbaa !4
  %21 = call double @llvm.fabs.f64(double %20)
  %cmp = fcmp olt double %21, 0x3D06849B86A12B9B
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %22 = load double, ptr %phi, align 8, !tbaa !4
  store double %22, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %while.body
  br label %while.cond, !llvm.loop !20

while.end:                                        ; preds = %while.cond
  %23 = load ptr, ptr %ctx.addr, align 8, !tbaa !12
  call void @pj_ctx_set_errno(ptr noundef %23, i32 noundef -17)
  %24 = load double, ptr %phi, align 8, !tbaa !4
  store double %24, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %phi) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #6
  %25 = load double, ptr %retval, align 8
  ret double %25
}

; Function Attrs: nounwind
declare double @sin(double noundef) #3

; Function Attrs: nounwind
declare double @cos(double noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

declare void @pj_ctx_set_errno(ptr noundef, i32 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"double", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!15, !9, i64 0}
!15 = !{!"MDIST", !9, i64 0, !5, i64 8, !5, i64 16, !6, i64 24}
!16 = !{!15, !5, i64 8}
!17 = !{!15, !5, i64 16}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
