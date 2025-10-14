; ModuleID = 'program_8.bc'
source_filename = "frame/2/trmv/bli_trmv_unf_var2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scomplex = type { float, float }
%struct.dcomplex = type { double, double }
%struct.func_s = type { [4 x ptr] }
%struct.cntx_s = type { [11 x %struct.blksz_s], [11 x i32], [11 x %struct.blksz_s], [6 x %struct.func_s], [6 x %struct.func_s], [6 x %struct.mbool_s], [12 x ptr], [3 x %struct.blksz_s], [12 x ptr], [11 x %struct.blksz_s], [9 x %struct.func_s], [9 x %struct.mbool_s], [5 x %struct.func_s], [15 x %struct.func_s], [33 x %struct.func_s], [32 x %struct.func_s], i32, i32, i32, i32 }
%struct.mbool_s = type { [4 x i8] }
%struct.blksz_s = type { [4 x i64], [4 x i64] }

; Function Attrs: nounwind uwtable
define hidden void @bli_strmv_unf_var2(i32 noundef %uploa, i32 noundef %transa, i32 noundef %diaga, i64 noundef %m, ptr noundef %alpha, ptr noundef %a, i64 noundef %rs_a, i64 noundef %cs_a, ptr noundef %x, i64 noundef %incx, ptr noundef %cntx) #0 {
entry:
  %uploa.addr = alloca i32, align 4
  %transa.addr = alloca i32, align 4
  %diaga.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %alpha.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %rs_a.addr = alloca i64, align 8
  %cs_a.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %A01 = alloca ptr, align 8
  %A11 = alloca ptr, align 8
  %A21 = alloca ptr, align 8
  %a01 = alloca ptr, align 8
  %alpha11 = alloca ptr, align 8
  %a21 = alloca ptr, align 8
  %x0 = alloca ptr, align 8
  %x1 = alloca ptr, align 8
  %x2 = alloca ptr, align 8
  %x01 = alloca ptr, align 8
  %chi11 = alloca ptr, align 8
  %x21 = alloca ptr, align 8
  %alpha_alpha11_conj = alloca float, align 4
  %alpha_chi11 = alloca float, align 4
  %iter = alloca i64, align 8
  %i = alloca i64, align 8
  %k = alloca i64, align 8
  %j = alloca i64, align 8
  %l = alloca i64, align 8
  %b_fuse = alloca i64, align 8
  %f = alloca i64, align 8
  %n_behind = alloca i64, align 8
  %f_behind = alloca i64, align 8
  %rs_at = alloca i64, align 8
  %cs_at = alloca i64, align 8
  %uploa_trans = alloca i32, align 4
  %conja = alloca i32, align 4
  %kfp_af = alloca ptr, align 8
  store i32 %uploa, ptr %uploa.addr, align 4, !tbaa !4
  store i32 %transa, ptr %transa.addr, align 4, !tbaa !4
  store i32 %diaga, ptr %diaga.addr, align 4, !tbaa !4
  store i64 %m, ptr %m.addr, align 8, !tbaa !7
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !9
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store i64 %rs_a, ptr %rs_a.addr, align 8, !tbaa !7
  store i64 %cs_a, ptr %cs_a.addr, align 8, !tbaa !7
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %incx, ptr %incx.addr, align 8, !tbaa !7
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  store i32 0, ptr %dt, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %A01) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %A11) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %A21) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %a01) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha11) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %a21) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %x0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %x2) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %x01) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi11) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %x21) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %alpha_alpha11_conj) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %alpha_chi11) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %l) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_fuse) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_behind) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %f_behind) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %rs_at) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %cs_at) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %uploa_trans) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %conja) #3
  %0 = load i32, ptr %transa.addr, align 4, !tbaa !4
  %call = call zeroext i1 @bli_does_notrans(i32 noundef %0)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %rs_a.addr, align 8, !tbaa !7
  store i64 %1, ptr %rs_at, align 8, !tbaa !7
  %2 = load i64, ptr %cs_a.addr, align 8, !tbaa !7
  store i64 %2, ptr %cs_at, align 8, !tbaa !7
  %3 = load i32, ptr %uploa.addr, align 4, !tbaa !4
  store i32 %3, ptr %uploa_trans, align 4, !tbaa !4
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i64, ptr %cs_a.addr, align 8, !tbaa !7
  store i64 %4, ptr %rs_at, align 8, !tbaa !7
  %5 = load i64, ptr %rs_a.addr, align 8, !tbaa !7
  store i64 %5, ptr %cs_at, align 8, !tbaa !7
  %6 = load i32, ptr %uploa.addr, align 4, !tbaa !4
  %call1 = call i32 @bli_uplo_toggled(i32 noundef %6)
  store i32 %call1, ptr %uploa_trans, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i32, ptr %transa.addr, align 4, !tbaa !4
  %call2 = call i32 @bli_extract_conj(i32 noundef %7)
  store i32 %call2, ptr %conja, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %kfp_af) #3
  %8 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call3 = call ptr @bli_cntx_get_l1f_ker_dt(i32 noundef 0, i32 noundef 2, ptr noundef %8)
  store ptr %call3, ptr %kfp_af, align 8, !tbaa !9
  %9 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call4 = call i64 @bli_cntx_get_blksz_def_dt(i32 noundef 0, i32 noundef 8, ptr noundef %9)
  store i64 %call4, ptr %b_fuse, align 8, !tbaa !7
  %10 = load i32, ptr %uploa_trans, align 4, !tbaa !4
  %call5 = call zeroext i1 @bli_is_upper(i32 noundef %10)
  br i1 %call5, label %if.then6, label %if.else67

if.then6:                                         ; preds = %if.end
  store i64 0, ptr %iter, align 8, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc65, %if.then6
  %11 = load i64, ptr %iter, align 8, !tbaa !7
  %12 = load i64, ptr %m.addr, align 8, !tbaa !7
  %cmp = icmp slt i64 %11, %12
  br i1 %cmp, label %for.body, label %for.end66

for.body:                                         ; preds = %for.cond
  %13 = load i64, ptr %iter, align 8, !tbaa !7
  %14 = load i64, ptr %m.addr, align 8, !tbaa !7
  %15 = load i64, ptr %b_fuse, align 8, !tbaa !7
  %call7 = call i64 @bli_determine_blocksize_dim_f(i64 noundef %13, i64 noundef %14, i64 noundef %15)
  store i64 %call7, ptr %f, align 8, !tbaa !7
  %16 = load i64, ptr %iter, align 8, !tbaa !7
  store i64 %16, ptr %i, align 8, !tbaa !7
  %17 = load i64, ptr %i, align 8, !tbaa !7
  store i64 %17, ptr %n_behind, align 8, !tbaa !7
  %18 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %19 = load i64, ptr %i, align 8, !tbaa !7
  %20 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul = mul nsw i64 %19, %20
  %add.ptr = getelementptr inbounds float, ptr %18, i64 %mul
  %21 = load i64, ptr %i, align 8, !tbaa !7
  %22 = load i64, ptr %cs_at, align 8, !tbaa !7
  %mul8 = mul nsw i64 %21, %22
  %add.ptr9 = getelementptr inbounds float, ptr %add.ptr, i64 %mul8
  store ptr %add.ptr9, ptr %A11, align 8, !tbaa !9
  %23 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %24 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul10 = mul nsw i64 0, %24
  %add.ptr11 = getelementptr inbounds float, ptr %23, i64 %mul10
  %25 = load i64, ptr %i, align 8, !tbaa !7
  %26 = load i64, ptr %cs_at, align 8, !tbaa !7
  %mul12 = mul nsw i64 %25, %26
  %add.ptr13 = getelementptr inbounds float, ptr %add.ptr11, i64 %mul12
  store ptr %add.ptr13, ptr %A01, align 8, !tbaa !9
  %27 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %28 = load i64, ptr %i, align 8, !tbaa !7
  %29 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul14 = mul nsw i64 %28, %29
  %add.ptr15 = getelementptr inbounds float, ptr %27, i64 %mul14
  store ptr %add.ptr15, ptr %x1, align 8, !tbaa !9
  %30 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %31 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul16 = mul nsw i64 0, %31
  %add.ptr17 = getelementptr inbounds float, ptr %30, i64 %mul16
  store ptr %add.ptr17, ptr %x0, align 8, !tbaa !9
  %32 = load ptr, ptr %kfp_af, align 8, !tbaa !9
  %33 = load i32, ptr %conja, align 4, !tbaa !4
  %34 = load i64, ptr %n_behind, align 8, !tbaa !7
  %35 = load i64, ptr %f, align 8, !tbaa !7
  %36 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %37 = load ptr, ptr %A01, align 8, !tbaa !9
  %38 = load i64, ptr %rs_at, align 8, !tbaa !7
  %39 = load i64, ptr %cs_at, align 8, !tbaa !7
  %40 = load ptr, ptr %x1, align 8, !tbaa !9
  %41 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %42 = load ptr, ptr %x0, align 8, !tbaa !9
  %43 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %44 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %32(i32 noundef %33, i32 noundef 0, i64 noundef %34, i64 noundef %35, ptr noundef %36, ptr noundef %37, i64 noundef %38, i64 noundef %39, ptr noundef %40, i64 noundef %41, ptr noundef %42, i64 noundef %43, ptr noundef %44)
  store i64 0, ptr %k, align 8, !tbaa !7
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc62, %for.body
  %45 = load i64, ptr %k, align 8, !tbaa !7
  %46 = load i64, ptr %f, align 8, !tbaa !7
  %cmp19 = icmp slt i64 %45, %46
  br i1 %cmp19, label %for.body20, label %for.end64

for.body20:                                       ; preds = %for.cond18
  %47 = load i64, ptr %k, align 8, !tbaa !7
  store i64 %47, ptr %l, align 8, !tbaa !7
  %48 = load i64, ptr %l, align 8, !tbaa !7
  store i64 %48, ptr %f_behind, align 8, !tbaa !7
  %49 = load ptr, ptr %A11, align 8, !tbaa !9
  %50 = load i64, ptr %l, align 8, !tbaa !7
  %51 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul21 = mul nsw i64 %50, %51
  %add.ptr22 = getelementptr inbounds float, ptr %49, i64 %mul21
  %52 = load i64, ptr %l, align 8, !tbaa !7
  %53 = load i64, ptr %cs_at, align 8, !tbaa !7
  %mul23 = mul nsw i64 %52, %53
  %add.ptr24 = getelementptr inbounds float, ptr %add.ptr22, i64 %mul23
  store ptr %add.ptr24, ptr %alpha11, align 8, !tbaa !9
  %54 = load ptr, ptr %A11, align 8, !tbaa !9
  %55 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul25 = mul nsw i64 0, %55
  %add.ptr26 = getelementptr inbounds float, ptr %54, i64 %mul25
  %56 = load i64, ptr %l, align 8, !tbaa !7
  %57 = load i64, ptr %cs_at, align 8, !tbaa !7
  %mul27 = mul nsw i64 %56, %57
  %add.ptr28 = getelementptr inbounds float, ptr %add.ptr26, i64 %mul27
  store ptr %add.ptr28, ptr %a01, align 8, !tbaa !9
  %58 = load ptr, ptr %x1, align 8, !tbaa !9
  %59 = load i64, ptr %l, align 8, !tbaa !7
  %60 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul29 = mul nsw i64 %59, %60
  %add.ptr30 = getelementptr inbounds float, ptr %58, i64 %mul29
  store ptr %add.ptr30, ptr %chi11, align 8, !tbaa !9
  %61 = load ptr, ptr %x1, align 8, !tbaa !9
  %62 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul31 = mul nsw i64 0, %62
  %add.ptr32 = getelementptr inbounds float, ptr %61, i64 %mul31
  store ptr %add.ptr32, ptr %x01, align 8, !tbaa !9
  %63 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %64 = load float, ptr %63, align 4, !tbaa !11
  %65 = load ptr, ptr %chi11, align 8, !tbaa !9
  %66 = load float, ptr %65, align 4, !tbaa !11
  %mul33 = fmul float %64, %66
  store float %mul33, ptr %alpha_chi11, align 4, !tbaa !11
  %67 = load i32, ptr %conja, align 4, !tbaa !4
  %call34 = call zeroext i1 @bli_is_conj(i32 noundef %67)
  br i1 %call34, label %if.then35, label %if.else44

if.then35:                                        ; preds = %for.body20
  store i64 0, ptr %j, align 8, !tbaa !7
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc, %if.then35
  %68 = load i64, ptr %j, align 8, !tbaa !7
  %69 = load i64, ptr %f_behind, align 8, !tbaa !7
  %cmp37 = icmp slt i64 %68, %69
  br i1 %cmp37, label %for.body38, label %for.end

for.body38:                                       ; preds = %for.cond36
  %70 = load float, ptr %alpha_chi11, align 4, !tbaa !11
  %71 = load ptr, ptr %a01, align 8, !tbaa !9
  %72 = load i64, ptr %j, align 8, !tbaa !7
  %73 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul39 = mul nsw i64 %72, %73
  %add.ptr40 = getelementptr inbounds float, ptr %71, i64 %mul39
  %74 = load float, ptr %add.ptr40, align 4, !tbaa !11
  %75 = load ptr, ptr %x01, align 8, !tbaa !9
  %76 = load i64, ptr %j, align 8, !tbaa !7
  %77 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul42 = mul nsw i64 %76, %77
  %add.ptr43 = getelementptr inbounds float, ptr %75, i64 %mul42
  %78 = load float, ptr %add.ptr43, align 4, !tbaa !11
  %79 = call float @llvm.fmuladd.f32(float %70, float %74, float %78)
  store float %79, ptr %add.ptr43, align 4, !tbaa !11
  br label %for.inc

for.inc:                                          ; preds = %for.body38
  %80 = load i64, ptr %j, align 8, !tbaa !7
  %inc = add nsw i64 %80, 1
  store i64 %inc, ptr %j, align 8, !tbaa !7
  br label %for.cond36

for.end:                                          ; preds = %for.cond36
  br label %if.end56

if.else44:                                        ; preds = %for.body20
  store i64 0, ptr %j, align 8, !tbaa !7
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc53, %if.else44
  %81 = load i64, ptr %j, align 8, !tbaa !7
  %82 = load i64, ptr %f_behind, align 8, !tbaa !7
  %cmp46 = icmp slt i64 %81, %82
  br i1 %cmp46, label %for.body47, label %for.end55

for.body47:                                       ; preds = %for.cond45
  %83 = load float, ptr %alpha_chi11, align 4, !tbaa !11
  %84 = load ptr, ptr %a01, align 8, !tbaa !9
  %85 = load i64, ptr %j, align 8, !tbaa !7
  %86 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul48 = mul nsw i64 %85, %86
  %add.ptr49 = getelementptr inbounds float, ptr %84, i64 %mul48
  %87 = load float, ptr %add.ptr49, align 4, !tbaa !11
  %88 = load ptr, ptr %x01, align 8, !tbaa !9
  %89 = load i64, ptr %j, align 8, !tbaa !7
  %90 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul51 = mul nsw i64 %89, %90
  %add.ptr52 = getelementptr inbounds float, ptr %88, i64 %mul51
  %91 = load float, ptr %add.ptr52, align 4, !tbaa !11
  %92 = call float @llvm.fmuladd.f32(float %83, float %87, float %91)
  store float %92, ptr %add.ptr52, align 4, !tbaa !11
  br label %for.inc53

for.inc53:                                        ; preds = %for.body47
  %93 = load i64, ptr %j, align 8, !tbaa !7
  %inc54 = add nsw i64 %93, 1
  store i64 %inc54, ptr %j, align 8, !tbaa !7
  br label %for.cond45

for.end55:                                        ; preds = %for.cond45
  br label %if.end56

if.end56:                                         ; preds = %for.end55, %for.end
  %94 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %95 = load float, ptr %94, align 4, !tbaa !11
  store float %95, ptr %alpha_alpha11_conj, align 4, !tbaa !11
  %96 = load i32, ptr %diaga.addr, align 4, !tbaa !4
  %call57 = call zeroext i1 @bli_is_nonunit_diag(i32 noundef %96)
  br i1 %call57, label %if.then58, label %if.end60

if.then58:                                        ; preds = %if.end56
  %97 = load ptr, ptr %alpha11, align 8, !tbaa !9
  %98 = load float, ptr %97, align 4, !tbaa !11
  %99 = load float, ptr %alpha_alpha11_conj, align 4, !tbaa !11
  %mul59 = fmul float %98, %99
  store float %mul59, ptr %alpha_alpha11_conj, align 4, !tbaa !11
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.end56
  %100 = load float, ptr %alpha_alpha11_conj, align 4, !tbaa !11
  %101 = load ptr, ptr %chi11, align 8, !tbaa !9
  %102 = load float, ptr %101, align 4, !tbaa !11
  %mul61 = fmul float %100, %102
  %103 = load ptr, ptr %chi11, align 8, !tbaa !9
  store float %mul61, ptr %103, align 4, !tbaa !11
  br label %for.inc62

for.inc62:                                        ; preds = %if.end60
  %104 = load i64, ptr %k, align 8, !tbaa !7
  %inc63 = add nsw i64 %104, 1
  store i64 %inc63, ptr %k, align 8, !tbaa !7
  br label %for.cond18

for.end64:                                        ; preds = %for.cond18
  br label %for.inc65

for.inc65:                                        ; preds = %for.end64
  %105 = load i64, ptr %f, align 8, !tbaa !7
  %106 = load i64, ptr %iter, align 8, !tbaa !7
  %add = add nsw i64 %106, %105
  store i64 %add, ptr %iter, align 8, !tbaa !7
  br label %for.cond

for.end66:                                        ; preds = %for.cond
  br label %if.end144

if.else67:                                        ; preds = %if.end
  store i64 0, ptr %iter, align 8, !tbaa !7
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc141, %if.else67
  %107 = load i64, ptr %iter, align 8, !tbaa !7
  %108 = load i64, ptr %m.addr, align 8, !tbaa !7
  %cmp69 = icmp slt i64 %107, %108
  br i1 %cmp69, label %for.body70, label %for.end143

for.body70:                                       ; preds = %for.cond68
  %109 = load i64, ptr %iter, align 8, !tbaa !7
  %110 = load i64, ptr %m.addr, align 8, !tbaa !7
  %111 = load i64, ptr %b_fuse, align 8, !tbaa !7
  %call71 = call i64 @bli_determine_blocksize_dim_b(i64 noundef %109, i64 noundef %110, i64 noundef %111)
  store i64 %call71, ptr %f, align 8, !tbaa !7
  %112 = load i64, ptr %m.addr, align 8, !tbaa !7
  %113 = load i64, ptr %iter, align 8, !tbaa !7
  %sub = sub nsw i64 %112, %113
  %114 = load i64, ptr %f, align 8, !tbaa !7
  %sub72 = sub nsw i64 %sub, %114
  store i64 %sub72, ptr %i, align 8, !tbaa !7
  %115 = load i64, ptr %iter, align 8, !tbaa !7
  store i64 %115, ptr %n_behind, align 8, !tbaa !7
  %116 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %117 = load i64, ptr %i, align 8, !tbaa !7
  %118 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul73 = mul nsw i64 %117, %118
  %add.ptr74 = getelementptr inbounds float, ptr %116, i64 %mul73
  %119 = load i64, ptr %i, align 8, !tbaa !7
  %120 = load i64, ptr %cs_at, align 8, !tbaa !7
  %mul75 = mul nsw i64 %119, %120
  %add.ptr76 = getelementptr inbounds float, ptr %add.ptr74, i64 %mul75
  store ptr %add.ptr76, ptr %A11, align 8, !tbaa !9
  %121 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %122 = load i64, ptr %i, align 8, !tbaa !7
  %123 = load i64, ptr %f, align 8, !tbaa !7
  %add77 = add nsw i64 %122, %123
  %124 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul78 = mul nsw i64 %add77, %124
  %add.ptr79 = getelementptr inbounds float, ptr %121, i64 %mul78
  %125 = load i64, ptr %i, align 8, !tbaa !7
  %126 = load i64, ptr %cs_at, align 8, !tbaa !7
  %mul80 = mul nsw i64 %125, %126
  %add.ptr81 = getelementptr inbounds float, ptr %add.ptr79, i64 %mul80
  store ptr %add.ptr81, ptr %A21, align 8, !tbaa !9
  %127 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %128 = load i64, ptr %i, align 8, !tbaa !7
  %129 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul82 = mul nsw i64 %128, %129
  %add.ptr83 = getelementptr inbounds float, ptr %127, i64 %mul82
  store ptr %add.ptr83, ptr %x1, align 8, !tbaa !9
  %130 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %131 = load i64, ptr %i, align 8, !tbaa !7
  %132 = load i64, ptr %f, align 8, !tbaa !7
  %add84 = add nsw i64 %131, %132
  %133 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul85 = mul nsw i64 %add84, %133
  %add.ptr86 = getelementptr inbounds float, ptr %130, i64 %mul85
  store ptr %add.ptr86, ptr %x2, align 8, !tbaa !9
  %134 = load ptr, ptr %kfp_af, align 8, !tbaa !9
  %135 = load i32, ptr %conja, align 4, !tbaa !4
  %136 = load i64, ptr %n_behind, align 8, !tbaa !7
  %137 = load i64, ptr %f, align 8, !tbaa !7
  %138 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %139 = load ptr, ptr %A21, align 8, !tbaa !9
  %140 = load i64, ptr %rs_at, align 8, !tbaa !7
  %141 = load i64, ptr %cs_at, align 8, !tbaa !7
  %142 = load ptr, ptr %x1, align 8, !tbaa !9
  %143 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %144 = load ptr, ptr %x2, align 8, !tbaa !9
  %145 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %146 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %134(i32 noundef %135, i32 noundef 0, i64 noundef %136, i64 noundef %137, ptr noundef %138, ptr noundef %139, i64 noundef %140, i64 noundef %141, ptr noundef %142, i64 noundef %143, ptr noundef %144, i64 noundef %145, ptr noundef %146)
  store i64 0, ptr %k, align 8, !tbaa !7
  br label %for.cond87

for.cond87:                                       ; preds = %for.inc138, %for.body70
  %147 = load i64, ptr %k, align 8, !tbaa !7
  %148 = load i64, ptr %f, align 8, !tbaa !7
  %cmp88 = icmp slt i64 %147, %148
  br i1 %cmp88, label %for.body89, label %for.end140

for.body89:                                       ; preds = %for.cond87
  %149 = load i64, ptr %f, align 8, !tbaa !7
  %150 = load i64, ptr %k, align 8, !tbaa !7
  %sub90 = sub nsw i64 %149, %150
  %sub91 = sub nsw i64 %sub90, 1
  store i64 %sub91, ptr %l, align 8, !tbaa !7
  %151 = load i64, ptr %k, align 8, !tbaa !7
  store i64 %151, ptr %f_behind, align 8, !tbaa !7
  %152 = load ptr, ptr %A11, align 8, !tbaa !9
  %153 = load i64, ptr %l, align 8, !tbaa !7
  %154 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul92 = mul nsw i64 %153, %154
  %add.ptr93 = getelementptr inbounds float, ptr %152, i64 %mul92
  %155 = load i64, ptr %l, align 8, !tbaa !7
  %156 = load i64, ptr %cs_at, align 8, !tbaa !7
  %mul94 = mul nsw i64 %155, %156
  %add.ptr95 = getelementptr inbounds float, ptr %add.ptr93, i64 %mul94
  store ptr %add.ptr95, ptr %alpha11, align 8, !tbaa !9
  %157 = load ptr, ptr %A11, align 8, !tbaa !9
  %158 = load i64, ptr %l, align 8, !tbaa !7
  %add96 = add nsw i64 %158, 1
  %159 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul97 = mul nsw i64 %add96, %159
  %add.ptr98 = getelementptr inbounds float, ptr %157, i64 %mul97
  %160 = load i64, ptr %l, align 8, !tbaa !7
  %161 = load i64, ptr %cs_at, align 8, !tbaa !7
  %mul99 = mul nsw i64 %160, %161
  %add.ptr100 = getelementptr inbounds float, ptr %add.ptr98, i64 %mul99
  store ptr %add.ptr100, ptr %a21, align 8, !tbaa !9
  %162 = load ptr, ptr %x1, align 8, !tbaa !9
  %163 = load i64, ptr %l, align 8, !tbaa !7
  %164 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul101 = mul nsw i64 %163, %164
  %add.ptr102 = getelementptr inbounds float, ptr %162, i64 %mul101
  store ptr %add.ptr102, ptr %chi11, align 8, !tbaa !9
  %165 = load ptr, ptr %x1, align 8, !tbaa !9
  %166 = load i64, ptr %l, align 8, !tbaa !7
  %add103 = add nsw i64 %166, 1
  %167 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul104 = mul nsw i64 %add103, %167
  %add.ptr105 = getelementptr inbounds float, ptr %165, i64 %mul104
  store ptr %add.ptr105, ptr %x21, align 8, !tbaa !9
  %168 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %169 = load float, ptr %168, align 4, !tbaa !11
  %170 = load ptr, ptr %chi11, align 8, !tbaa !9
  %171 = load float, ptr %170, align 4, !tbaa !11
  %mul106 = fmul float %169, %171
  store float %mul106, ptr %alpha_chi11, align 4, !tbaa !11
  %172 = load i32, ptr %conja, align 4, !tbaa !4
  %call107 = call zeroext i1 @bli_is_conj(i32 noundef %172)
  br i1 %call107, label %if.then108, label %if.else120

if.then108:                                       ; preds = %for.body89
  store i64 0, ptr %j, align 8, !tbaa !7
  br label %for.cond109

for.cond109:                                      ; preds = %for.inc117, %if.then108
  %173 = load i64, ptr %j, align 8, !tbaa !7
  %174 = load i64, ptr %f_behind, align 8, !tbaa !7
  %cmp110 = icmp slt i64 %173, %174
  br i1 %cmp110, label %for.body111, label %for.end119

for.body111:                                      ; preds = %for.cond109
  %175 = load float, ptr %alpha_chi11, align 4, !tbaa !11
  %176 = load ptr, ptr %a21, align 8, !tbaa !9
  %177 = load i64, ptr %j, align 8, !tbaa !7
  %178 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul112 = mul nsw i64 %177, %178
  %add.ptr113 = getelementptr inbounds float, ptr %176, i64 %mul112
  %179 = load float, ptr %add.ptr113, align 4, !tbaa !11
  %180 = load ptr, ptr %x21, align 8, !tbaa !9
  %181 = load i64, ptr %j, align 8, !tbaa !7
  %182 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul115 = mul nsw i64 %181, %182
  %add.ptr116 = getelementptr inbounds float, ptr %180, i64 %mul115
  %183 = load float, ptr %add.ptr116, align 4, !tbaa !11
  %184 = call float @llvm.fmuladd.f32(float %175, float %179, float %183)
  store float %184, ptr %add.ptr116, align 4, !tbaa !11
  br label %for.inc117

for.inc117:                                       ; preds = %for.body111
  %185 = load i64, ptr %j, align 8, !tbaa !7
  %inc118 = add nsw i64 %185, 1
  store i64 %inc118, ptr %j, align 8, !tbaa !7
  br label %for.cond109

for.end119:                                       ; preds = %for.cond109
  br label %if.end132

if.else120:                                       ; preds = %for.body89
  store i64 0, ptr %j, align 8, !tbaa !7
  br label %for.cond121

for.cond121:                                      ; preds = %for.inc129, %if.else120
  %186 = load i64, ptr %j, align 8, !tbaa !7
  %187 = load i64, ptr %f_behind, align 8, !tbaa !7
  %cmp122 = icmp slt i64 %186, %187
  br i1 %cmp122, label %for.body123, label %for.end131

for.body123:                                      ; preds = %for.cond121
  %188 = load float, ptr %alpha_chi11, align 4, !tbaa !11
  %189 = load ptr, ptr %a21, align 8, !tbaa !9
  %190 = load i64, ptr %j, align 8, !tbaa !7
  %191 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul124 = mul nsw i64 %190, %191
  %add.ptr125 = getelementptr inbounds float, ptr %189, i64 %mul124
  %192 = load float, ptr %add.ptr125, align 4, !tbaa !11
  %193 = load ptr, ptr %x21, align 8, !tbaa !9
  %194 = load i64, ptr %j, align 8, !tbaa !7
  %195 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul127 = mul nsw i64 %194, %195
  %add.ptr128 = getelementptr inbounds float, ptr %193, i64 %mul127
  %196 = load float, ptr %add.ptr128, align 4, !tbaa !11
  %197 = call float @llvm.fmuladd.f32(float %188, float %192, float %196)
  store float %197, ptr %add.ptr128, align 4, !tbaa !11
  br label %for.inc129

for.inc129:                                       ; preds = %for.body123
  %198 = load i64, ptr %j, align 8, !tbaa !7
  %inc130 = add nsw i64 %198, 1
  store i64 %inc130, ptr %j, align 8, !tbaa !7
  br label %for.cond121

for.end131:                                       ; preds = %for.cond121
  br label %if.end132

if.end132:                                        ; preds = %for.end131, %for.end119
  %199 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %200 = load float, ptr %199, align 4, !tbaa !11
  store float %200, ptr %alpha_alpha11_conj, align 4, !tbaa !11
  %201 = load i32, ptr %diaga.addr, align 4, !tbaa !4
  %call133 = call zeroext i1 @bli_is_nonunit_diag(i32 noundef %201)
  br i1 %call133, label %if.then134, label %if.end136

if.then134:                                       ; preds = %if.end132
  %202 = load ptr, ptr %alpha11, align 8, !tbaa !9
  %203 = load float, ptr %202, align 4, !tbaa !11
  %204 = load float, ptr %alpha_alpha11_conj, align 4, !tbaa !11
  %mul135 = fmul float %203, %204
  store float %mul135, ptr %alpha_alpha11_conj, align 4, !tbaa !11
  br label %if.end136

if.end136:                                        ; preds = %if.then134, %if.end132
  %205 = load float, ptr %alpha_alpha11_conj, align 4, !tbaa !11
  %206 = load ptr, ptr %chi11, align 8, !tbaa !9
  %207 = load float, ptr %206, align 4, !tbaa !11
  %mul137 = fmul float %205, %207
  %208 = load ptr, ptr %chi11, align 8, !tbaa !9
  store float %mul137, ptr %208, align 4, !tbaa !11
  br label %for.inc138

for.inc138:                                       ; preds = %if.end136
  %209 = load i64, ptr %k, align 8, !tbaa !7
  %inc139 = add nsw i64 %209, 1
  store i64 %inc139, ptr %k, align 8, !tbaa !7
  br label %for.cond87

for.end140:                                       ; preds = %for.cond87
  br label %for.inc141

for.inc141:                                       ; preds = %for.end140
  %210 = load i64, ptr %f, align 8, !tbaa !7
  %211 = load i64, ptr %iter, align 8, !tbaa !7
  %add142 = add nsw i64 %211, %210
  store i64 %add142, ptr %iter, align 8, !tbaa !7
  br label %for.cond68

for.end143:                                       ; preds = %for.cond68
  br label %if.end144

if.end144:                                        ; preds = %for.end143, %for.end66
  call void @llvm.lifetime.end.p0(i64 8, ptr %kfp_af) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %conja) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uploa_trans) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %cs_at) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %rs_at) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %f_behind) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_behind) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_fuse) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %l) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %alpha_chi11) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %alpha_alpha11_conj) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x21) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi11) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x01) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x2) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a21) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha11) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a01) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %A21) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %A11) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %A01) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bli_does_notrans(i32 noundef %trans) #0 {
entry:
  %trans.addr = alloca i32, align 4
  store i32 %trans, ptr %trans.addr, align 4, !tbaa !4
  %0 = load i32, ptr %trans.addr, align 4, !tbaa !4
  %not = xor i32 %0, -1
  %and = and i32 %not, 8
  %cmp = icmp eq i32 %and, 8
  ret i1 %cmp
}

; Function Attrs: nounwind uwtable
define internal i32 @bli_uplo_toggled(i32 noundef %uplo) #0 {
entry:
  %uplo.addr = alloca i32, align 4
  store i32 %uplo, ptr %uplo.addr, align 4, !tbaa !4
  %0 = load i32, ptr %uplo.addr, align 4, !tbaa !4
  %call = call zeroext i1 @bli_is_upper_or_lower(i32 noundef %0)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, ptr %uplo.addr, align 4, !tbaa !4
  %xor = xor i32 %1, 128
  %xor1 = xor i32 %xor, 32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, ptr %uplo.addr, align 4, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %xor1, %cond.true ], [ %2, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal i32 @bli_extract_conj(i32 noundef %trans) #0 {
entry:
  %trans.addr = alloca i32, align 4
  store i32 %trans, ptr %trans.addr, align 4, !tbaa !4
  %0 = load i32, ptr %trans.addr, align 4, !tbaa !4
  %and = and i32 %0, 16
  ret i32 %and
}

; Function Attrs: nounwind uwtable
define internal ptr @bli_cntx_get_l1f_ker_dt(i32 noundef %dt, i32 noundef %ker_id, ptr noundef %cntx) #0 {
entry:
  %dt.addr = alloca i32, align 4
  %ker_id.addr = alloca i32, align 4
  %cntx.addr = alloca ptr, align 8
  %func = alloca ptr, align 8
  store i32 %dt, ptr %dt.addr, align 4, !tbaa !4
  store i32 %ker_id, ptr %ker_id.addr, align 4, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %func) #3
  %0 = load i32, ptr %ker_id.addr, align 4, !tbaa !4
  %1 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call = call ptr @bli_cntx_get_l1f_kers(i32 noundef %0, ptr noundef %1)
  store ptr %call, ptr %func, align 8, !tbaa !9
  %2 = load i32, ptr %dt.addr, align 4, !tbaa !4
  %3 = load ptr, ptr %func, align 8, !tbaa !9
  %call1 = call ptr @bli_func_get_dt(i32 noundef %2, ptr noundef %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr %func) #3
  ret ptr %call1
}

; Function Attrs: nounwind uwtable
define internal i64 @bli_cntx_get_blksz_def_dt(i32 noundef %dt, i32 noundef %bs_id, ptr noundef %cntx) #0 {
entry:
  %dt.addr = alloca i32, align 4
  %bs_id.addr = alloca i32, align 4
  %cntx.addr = alloca ptr, align 8
  %blksz = alloca ptr, align 8
  %bs_dt = alloca i64, align 8
  store i32 %dt, ptr %dt.addr, align 4, !tbaa !4
  store i32 %bs_id, ptr %bs_id.addr, align 4, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %blksz) #3
  %0 = load i32, ptr %bs_id.addr, align 4, !tbaa !4
  %1 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call = call ptr @bli_cntx_get_blksz(i32 noundef %0, ptr noundef %1)
  store ptr %call, ptr %blksz, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %bs_dt) #3
  %2 = load i32, ptr %dt.addr, align 4, !tbaa !4
  %3 = load ptr, ptr %blksz, align 8, !tbaa !9
  %call1 = call i64 @bli_blksz_get_def(i32 noundef %2, ptr noundef %3)
  store i64 %call1, ptr %bs_dt, align 8, !tbaa !7
  %4 = load i64, ptr %bs_dt, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 8, ptr %bs_dt) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %blksz) #3
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bli_is_upper(i32 noundef %uplo) #0 {
entry:
  %uplo.addr = alloca i32, align 4
  store i32 %uplo, ptr %uplo.addr, align 4, !tbaa !4
  %0 = load i32, ptr %uplo.addr, align 4, !tbaa !4
  %cmp = icmp eq i32 %0, 96
  ret i1 %cmp
}

; Function Attrs: nounwind uwtable
define internal i64 @bli_determine_blocksize_dim_f(i64 noundef %i, i64 noundef %dim, i64 noundef %b_alg) #0 {
entry:
  %i.addr = alloca i64, align 8
  %dim.addr = alloca i64, align 8
  %b_alg.addr = alloca i64, align 8
  store i64 %i, ptr %i.addr, align 8, !tbaa !7
  store i64 %dim, ptr %dim.addr, align 8, !tbaa !7
  store i64 %b_alg, ptr %b_alg.addr, align 8, !tbaa !7
  %0 = load i64, ptr %b_alg.addr, align 8, !tbaa !7
  %1 = load i64, ptr %dim.addr, align 8, !tbaa !7
  %2 = load i64, ptr %i.addr, align 8, !tbaa !7
  %sub = sub nsw i64 %1, %2
  %cmp = icmp slt i64 %0, %sub
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i64, ptr %b_alg.addr, align 8, !tbaa !7
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %dim.addr, align 8, !tbaa !7
  %5 = load i64, ptr %i.addr, align 8, !tbaa !7
  %sub1 = sub nsw i64 %4, %5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %3, %cond.true ], [ %sub1, %cond.false ]
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bli_is_conj(i32 noundef %conj) #0 {
entry:
  %conj.addr = alloca i32, align 4
  store i32 %conj, ptr %conj.addr, align 4, !tbaa !4
  %0 = load i32, ptr %conj.addr, align 4, !tbaa !4
  %cmp = icmp eq i32 %0, 16
  ret i1 %cmp
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bli_is_nonunit_diag(i32 noundef %diag) #0 {
entry:
  %diag.addr = alloca i32, align 4
  store i32 %diag, ptr %diag.addr, align 4, !tbaa !4
  %0 = load i32, ptr %diag.addr, align 4, !tbaa !4
  %cmp = icmp eq i32 %0, 0
  ret i1 %cmp
}

; Function Attrs: nounwind uwtable
define internal i64 @bli_determine_blocksize_dim_b(i64 noundef %i, i64 noundef %dim, i64 noundef %b_alg) #0 {
entry:
  %i.addr = alloca i64, align 8
  %dim.addr = alloca i64, align 8
  %b_alg.addr = alloca i64, align 8
  store i64 %i, ptr %i.addr, align 8, !tbaa !7
  store i64 %dim, ptr %dim.addr, align 8, !tbaa !7
  store i64 %b_alg, ptr %b_alg.addr, align 8, !tbaa !7
  %0 = load i64, ptr %i.addr, align 8, !tbaa !7
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, ptr %dim.addr, align 8, !tbaa !7
  %2 = load i64, ptr %b_alg.addr, align 8, !tbaa !7
  %rem = srem i64 %1, %2
  %cmp1 = icmp ne i64 %rem, 0
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %3 = load i64, ptr %dim.addr, align 8, !tbaa !7
  %4 = load i64, ptr %b_alg.addr, align 8, !tbaa !7
  %rem2 = srem i64 %3, %4
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  %5 = load i64, ptr %b_alg.addr, align 8, !tbaa !7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %rem2, %cond.true ], [ %5, %cond.false ]
  ret i64 %cond
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden void @bli_dtrmv_unf_var2(i32 noundef %uploa, i32 noundef %transa, i32 noundef %diaga, i64 noundef %m, ptr noundef %alpha, ptr noundef %a, i64 noundef %rs_a, i64 noundef %cs_a, ptr noundef %x, i64 noundef %incx, ptr noundef %cntx) #0 {
entry:
  %uploa.addr = alloca i32, align 4
  %transa.addr = alloca i32, align 4
  %diaga.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %alpha.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %rs_a.addr = alloca i64, align 8
  %cs_a.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %A01 = alloca ptr, align 8
  %A11 = alloca ptr, align 8
  %A21 = alloca ptr, align 8
  %a01 = alloca ptr, align 8
  %alpha11 = alloca ptr, align 8
  %a21 = alloca ptr, align 8
  %x0 = alloca ptr, align 8
  %x1 = alloca ptr, align 8
  %x2 = alloca ptr, align 8
  %x01 = alloca ptr, align 8
  %chi11 = alloca ptr, align 8
  %x21 = alloca ptr, align 8
  %alpha_alpha11_conj = alloca double, align 8
  %alpha_chi11 = alloca double, align 8
  %iter = alloca i64, align 8
  %i = alloca i64, align 8
  %k = alloca i64, align 8
  %j = alloca i64, align 8
  %l = alloca i64, align 8
  %b_fuse = alloca i64, align 8
  %f = alloca i64, align 8
  %n_behind = alloca i64, align 8
  %f_behind = alloca i64, align 8
  %rs_at = alloca i64, align 8
  %cs_at = alloca i64, align 8
  %uploa_trans = alloca i32, align 4
  %conja = alloca i32, align 4
  %kfp_af = alloca ptr, align 8
  store i32 %uploa, ptr %uploa.addr, align 4, !tbaa !4
  store i32 %transa, ptr %transa.addr, align 4, !tbaa !4
  store i32 %diaga, ptr %diaga.addr, align 4, !tbaa !4
  store i64 %m, ptr %m.addr, align 8, !tbaa !7
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !9
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store i64 %rs_a, ptr %rs_a.addr, align 8, !tbaa !7
  store i64 %cs_a, ptr %cs_a.addr, align 8, !tbaa !7
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %incx, ptr %incx.addr, align 8, !tbaa !7
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  store i32 2, ptr %dt, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %A01) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %A11) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %A21) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %a01) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha11) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %a21) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %x0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %x2) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %x01) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi11) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %x21) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha_alpha11_conj) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha_chi11) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %l) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_fuse) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_behind) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %f_behind) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %rs_at) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %cs_at) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %uploa_trans) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %conja) #3
  %0 = load i32, ptr %transa.addr, align 4, !tbaa !4
  %call = call zeroext i1 @bli_does_notrans(i32 noundef %0)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %rs_a.addr, align 8, !tbaa !7
  store i64 %1, ptr %rs_at, align 8, !tbaa !7
  %2 = load i64, ptr %cs_a.addr, align 8, !tbaa !7
  store i64 %2, ptr %cs_at, align 8, !tbaa !7
  %3 = load i32, ptr %uploa.addr, align 4, !tbaa !4
  store i32 %3, ptr %uploa_trans, align 4, !tbaa !4
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i64, ptr %cs_a.addr, align 8, !tbaa !7
  store i64 %4, ptr %rs_at, align 8, !tbaa !7
  %5 = load i64, ptr %rs_a.addr, align 8, !tbaa !7
  store i64 %5, ptr %cs_at, align 8, !tbaa !7
  %6 = load i32, ptr %uploa.addr, align 4, !tbaa !4
  %call1 = call i32 @bli_uplo_toggled(i32 noundef %6)
  store i32 %call1, ptr %uploa_trans, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i32, ptr %transa.addr, align 4, !tbaa !4
  %call2 = call i32 @bli_extract_conj(i32 noundef %7)
  store i32 %call2, ptr %conja, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %kfp_af) #3
  %8 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call3 = call ptr @bli_cntx_get_l1f_ker_dt(i32 noundef 2, i32 noundef 2, ptr noundef %8)
  store ptr %call3, ptr %kfp_af, align 8, !tbaa !9
  %9 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call4 = call i64 @bli_cntx_get_blksz_def_dt(i32 noundef 2, i32 noundef 8, ptr noundef %9)
  store i64 %call4, ptr %b_fuse, align 8, !tbaa !7
  %10 = load i32, ptr %uploa_trans, align 4, !tbaa !4
  %call5 = call zeroext i1 @bli_is_upper(i32 noundef %10)
  br i1 %call5, label %if.then6, label %if.else67

if.then6:                                         ; preds = %if.end
  store i64 0, ptr %iter, align 8, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc65, %if.then6
  %11 = load i64, ptr %iter, align 8, !tbaa !7
  %12 = load i64, ptr %m.addr, align 8, !tbaa !7
  %cmp = icmp slt i64 %11, %12
  br i1 %cmp, label %for.body, label %for.end66

for.body:                                         ; preds = %for.cond
  %13 = load i64, ptr %iter, align 8, !tbaa !7
  %14 = load i64, ptr %m.addr, align 8, !tbaa !7
  %15 = load i64, ptr %b_fuse, align 8, !tbaa !7
  %call7 = call i64 @bli_determine_blocksize_dim_f(i64 noundef %13, i64 noundef %14, i64 noundef %15)
  store i64 %call7, ptr %f, align 8, !tbaa !7
  %16 = load i64, ptr %iter, align 8, !tbaa !7
  store i64 %16, ptr %i, align 8, !tbaa !7
  %17 = load i64, ptr %i, align 8, !tbaa !7
  store i64 %17, ptr %n_behind, align 8, !tbaa !7
  %18 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %19 = load i64, ptr %i, align 8, !tbaa !7
  %20 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul = mul nsw i64 %19, %20
  %add.ptr = getelementptr inbounds double, ptr %18, i64 %mul
  %21 = load i64, ptr %i, align 8, !tbaa !7
  %22 = load i64, ptr %cs_at, align 8, !tbaa !7
  %mul8 = mul nsw i64 %21, %22
  %add.ptr9 = getelementptr inbounds double, ptr %add.ptr, i64 %mul8
  store ptr %add.ptr9, ptr %A11, align 8, !tbaa !9
  %23 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %24 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul10 = mul nsw i64 0, %24
  %add.ptr11 = getelementptr inbounds double, ptr %23, i64 %mul10
  %25 = load i64, ptr %i, align 8, !tbaa !7
  %26 = load i64, ptr %cs_at, align 8, !tbaa !7
  %mul12 = mul nsw i64 %25, %26
  %add.ptr13 = getelementptr inbounds double, ptr %add.ptr11, i64 %mul12
  store ptr %add.ptr13, ptr %A01, align 8, !tbaa !9
  %27 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %28 = load i64, ptr %i, align 8, !tbaa !7
  %29 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul14 = mul nsw i64 %28, %29
  %add.ptr15 = getelementptr inbounds double, ptr %27, i64 %mul14
  store ptr %add.ptr15, ptr %x1, align 8, !tbaa !9
  %30 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %31 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul16 = mul nsw i64 0, %31
  %add.ptr17 = getelementptr inbounds double, ptr %30, i64 %mul16
  store ptr %add.ptr17, ptr %x0, align 8, !tbaa !9
  %32 = load ptr, ptr %kfp_af, align 8, !tbaa !9
  %33 = load i32, ptr %conja, align 4, !tbaa !4
  %34 = load i64, ptr %n_behind, align 8, !tbaa !7
  %35 = load i64, ptr %f, align 8, !tbaa !7
  %36 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %37 = load ptr, ptr %A01, align 8, !tbaa !9
  %38 = load i64, ptr %rs_at, align 8, !tbaa !7
  %39 = load i64, ptr %cs_at, align 8, !tbaa !7
  %40 = load ptr, ptr %x1, align 8, !tbaa !9
  %41 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %42 = load ptr, ptr %x0, align 8, !tbaa !9
  %43 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %44 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %32(i32 noundef %33, i32 noundef 0, i64 noundef %34, i64 noundef %35, ptr noundef %36, ptr noundef %37, i64 noundef %38, i64 noundef %39, ptr noundef %40, i64 noundef %41, ptr noundef %42, i64 noundef %43, ptr noundef %44)
  store i64 0, ptr %k, align 8, !tbaa !7
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc62, %for.body
  %45 = load i64, ptr %k, align 8, !tbaa !7
  %46 = load i64, ptr %f, align 8, !tbaa !7
  %cmp19 = icmp slt i64 %45, %46
  br i1 %cmp19, label %for.body20, label %for.end64

for.body20:                                       ; preds = %for.cond18
  %47 = load i64, ptr %k, align 8, !tbaa !7
  store i64 %47, ptr %l, align 8, !tbaa !7
  %48 = load i64, ptr %l, align 8, !tbaa !7
  store i64 %48, ptr %f_behind, align 8, !tbaa !7
  %49 = load ptr, ptr %A11, align 8, !tbaa !9
  %50 = load i64, ptr %l, align 8, !tbaa !7
  %51 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul21 = mul nsw i64 %50, %51
  %add.ptr22 = getelementptr inbounds double, ptr %49, i64 %mul21
  %52 = load i64, ptr %l, align 8, !tbaa !7
  %53 = load i64, ptr %cs_at, align 8, !tbaa !7
  %mul23 = mul nsw i64 %52, %53
  %add.ptr24 = getelementptr inbounds double, ptr %add.ptr22, i64 %mul23
  store ptr %add.ptr24, ptr %alpha11, align 8, !tbaa !9
  %54 = load ptr, ptr %A11, align 8, !tbaa !9
  %55 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul25 = mul nsw i64 0, %55
  %add.ptr26 = getelementptr inbounds double, ptr %54, i64 %mul25
  %56 = load i64, ptr %l, align 8, !tbaa !7
  %57 = load i64, ptr %cs_at, align 8, !tbaa !7
  %mul27 = mul nsw i64 %56, %57
  %add.ptr28 = getelementptr inbounds double, ptr %add.ptr26, i64 %mul27
  store ptr %add.ptr28, ptr %a01, align 8, !tbaa !9
  %58 = load ptr, ptr %x1, align 8, !tbaa !9
  %59 = load i64, ptr %l, align 8, !tbaa !7
  %60 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul29 = mul nsw i64 %59, %60
  %add.ptr30 = getelementptr inbounds double, ptr %58, i64 %mul29
  store ptr %add.ptr30, ptr %chi11, align 8, !tbaa !9
  %61 = load ptr, ptr %x1, align 8, !tbaa !9
  %62 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul31 = mul nsw i64 0, %62
  %add.ptr32 = getelementptr inbounds double, ptr %61, i64 %mul31
  store ptr %add.ptr32, ptr %x01, align 8, !tbaa !9
  %63 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %64 = load double, ptr %63, align 8, !tbaa !13
  %65 = load ptr, ptr %chi11, align 8, !tbaa !9
  %66 = load double, ptr %65, align 8, !tbaa !13
  %mul33 = fmul double %64, %66
  store double %mul33, ptr %alpha_chi11, align 8, !tbaa !13
  %67 = load i32, ptr %conja, align 4, !tbaa !4
  %call34 = call zeroext i1 @bli_is_conj(i32 noundef %67)
  br i1 %call34, label %if.then35, label %if.else44

if.then35:                                        ; preds = %for.body20
  store i64 0, ptr %j, align 8, !tbaa !7
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc, %if.then35
  %68 = load i64, ptr %j, align 8, !tbaa !7
  %69 = load i64, ptr %f_behind, align 8, !tbaa !7
  %cmp37 = icmp slt i64 %68, %69
  br i1 %cmp37, label %for.body38, label %for.end

for.body38:                                       ; preds = %for.cond36
  %70 = load double, ptr %alpha_chi11, align 8, !tbaa !13
  %71 = load ptr, ptr %a01, align 8, !tbaa !9
  %72 = load i64, ptr %j, align 8, !tbaa !7
  %73 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul39 = mul nsw i64 %72, %73
  %add.ptr40 = getelementptr inbounds double, ptr %71, i64 %mul39
  %74 = load double, ptr %add.ptr40, align 8, !tbaa !13
  %75 = load ptr, ptr %x01, align 8, !tbaa !9
  %76 = load i64, ptr %j, align 8, !tbaa !7
  %77 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul42 = mul nsw i64 %76, %77
  %add.ptr43 = getelementptr inbounds double, ptr %75, i64 %mul42
  %78 = load double, ptr %add.ptr43, align 8, !tbaa !13
  %79 = call double @llvm.fmuladd.f64(double %70, double %74, double %78)
  store double %79, ptr %add.ptr43, align 8, !tbaa !13
  br label %for.inc

for.inc:                                          ; preds = %for.body38
  %80 = load i64, ptr %j, align 8, !tbaa !7
  %inc = add nsw i64 %80, 1
  store i64 %inc, ptr %j, align 8, !tbaa !7
  br label %for.cond36

for.end:                                          ; preds = %for.cond36
  br label %if.end56

if.else44:                                        ; preds = %for.body20
  store i64 0, ptr %j, align 8, !tbaa !7
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc53, %if.else44
  %81 = load i64, ptr %j, align 8, !tbaa !7
  %82 = load i64, ptr %f_behind, align 8, !tbaa !7
  %cmp46 = icmp slt i64 %81, %82
  br i1 %cmp46, label %for.body47, label %for.end55

for.body47:                                       ; preds = %for.cond45
  %83 = load double, ptr %alpha_chi11, align 8, !tbaa !13
  %84 = load ptr, ptr %a01, align 8, !tbaa !9
  %85 = load i64, ptr %j, align 8, !tbaa !7
  %86 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul48 = mul nsw i64 %85, %86
  %add.ptr49 = getelementptr inbounds double, ptr %84, i64 %mul48
  %87 = load double, ptr %add.ptr49, align 8, !tbaa !13
  %88 = load ptr, ptr %x01, align 8, !tbaa !9
  %89 = load i64, ptr %j, align 8, !tbaa !7
  %90 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul51 = mul nsw i64 %89, %90
  %add.ptr52 = getelementptr inbounds double, ptr %88, i64 %mul51
  %91 = load double, ptr %add.ptr52, align 8, !tbaa !13
  %92 = call double @llvm.fmuladd.f64(double %83, double %87, double %91)
  store double %92, ptr %add.ptr52, align 8, !tbaa !13
  br label %for.inc53

for.inc53:                                        ; preds = %for.body47
  %93 = load i64, ptr %j, align 8, !tbaa !7
  %inc54 = add nsw i64 %93, 1
  store i64 %inc54, ptr %j, align 8, !tbaa !7
  br label %for.cond45

for.end55:                                        ; preds = %for.cond45
  br label %if.end56

if.end56:                                         ; preds = %for.end55, %for.end
  %94 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %95 = load double, ptr %94, align 8, !tbaa !13
  store double %95, ptr %alpha_alpha11_conj, align 8, !tbaa !13
  %96 = load i32, ptr %diaga.addr, align 4, !tbaa !4
  %call57 = call zeroext i1 @bli_is_nonunit_diag(i32 noundef %96)
  br i1 %call57, label %if.then58, label %if.end60

if.then58:                                        ; preds = %if.end56
  %97 = load ptr, ptr %alpha11, align 8, !tbaa !9
  %98 = load double, ptr %97, align 8, !tbaa !13
  %99 = load double, ptr %alpha_alpha11_conj, align 8, !tbaa !13
  %mul59 = fmul double %98, %99
  store double %mul59, ptr %alpha_alpha11_conj, align 8, !tbaa !13
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.end56
  %100 = load double, ptr %alpha_alpha11_conj, align 8, !tbaa !13
  %101 = load ptr, ptr %chi11, align 8, !tbaa !9
  %102 = load double, ptr %101, align 8, !tbaa !13
  %mul61 = fmul double %100, %102
  %103 = load ptr, ptr %chi11, align 8, !tbaa !9
  store double %mul61, ptr %103, align 8, !tbaa !13
  br label %for.inc62

for.inc62:                                        ; preds = %if.end60
  %104 = load i64, ptr %k, align 8, !tbaa !7
  %inc63 = add nsw i64 %104, 1
  store i64 %inc63, ptr %k, align 8, !tbaa !7
  br label %for.cond18

for.end64:                                        ; preds = %for.cond18
  br label %for.inc65

for.inc65:                                        ; preds = %for.end64
  %105 = load i64, ptr %f, align 8, !tbaa !7
  %106 = load i64, ptr %iter, align 8, !tbaa !7
  %add = add nsw i64 %106, %105
  store i64 %add, ptr %iter, align 8, !tbaa !7
  br label %for.cond

for.end66:                                        ; preds = %for.cond
  br label %if.end144

if.else67:                                        ; preds = %if.end
  store i64 0, ptr %iter, align 8, !tbaa !7
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc141, %if.else67
  %107 = load i64, ptr %iter, align 8, !tbaa !7
  %108 = load i64, ptr %m.addr, align 8, !tbaa !7
  %cmp69 = icmp slt i64 %107, %108
  br i1 %cmp69, label %for.body70, label %for.end143

for.body70:                                       ; preds = %for.cond68
  %109 = load i64, ptr %iter, align 8, !tbaa !7
  %110 = load i64, ptr %m.addr, align 8, !tbaa !7
  %111 = load i64, ptr %b_fuse, align 8, !tbaa !7
  %call71 = call i64 @bli_determine_blocksize_dim_b(i64 noundef %109, i64 noundef %110, i64 noundef %111)
  store i64 %call71, ptr %f, align 8, !tbaa !7
  %112 = load i64, ptr %m.addr, align 8, !tbaa !7
  %113 = load i64, ptr %iter, align 8, !tbaa !7
  %sub = sub nsw i64 %112, %113
  %114 = load i64, ptr %f, align 8, !tbaa !7
  %sub72 = sub nsw i64 %sub, %114
  store i64 %sub72, ptr %i, align 8, !tbaa !7
  %115 = load i64, ptr %iter, align 8, !tbaa !7
  store i64 %115, ptr %n_behind, align 8, !tbaa !7
  %116 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %117 = load i64, ptr %i, align 8, !tbaa !7
  %118 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul73 = mul nsw i64 %117, %118
  %add.ptr74 = getelementptr inbounds double, ptr %116, i64 %mul73
  %119 = load i64, ptr %i, align 8, !tbaa !7
  %120 = load i64, ptr %cs_at, align 8, !tbaa !7
  %mul75 = mul nsw i64 %119, %120
  %add.ptr76 = getelementptr inbounds double, ptr %add.ptr74, i64 %mul75
  store ptr %add.ptr76, ptr %A11, align 8, !tbaa !9
  %121 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %122 = load i64, ptr %i, align 8, !tbaa !7
  %123 = load i64, ptr %f, align 8, !tbaa !7
  %add77 = add nsw i64 %122, %123
  %124 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul78 = mul nsw i64 %add77, %124
  %add.ptr79 = getelementptr inbounds double, ptr %121, i64 %mul78
  %125 = load i64, ptr %i, align 8, !tbaa !7
  %126 = load i64, ptr %cs_at, align 8, !tbaa !7
  %mul80 = mul nsw i64 %125, %126
  %add.ptr81 = getelementptr inbounds double, ptr %add.ptr79, i64 %mul80
  store ptr %add.ptr81, ptr %A21, align 8, !tbaa !9
  %127 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %128 = load i64, ptr %i, align 8, !tbaa !7
  %129 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul82 = mul nsw i64 %128, %129
  %add.ptr83 = getelementptr inbounds double, ptr %127, i64 %mul82
  store ptr %add.ptr83, ptr %x1, align 8, !tbaa !9
  %130 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %131 = load i64, ptr %i, align 8, !tbaa !7
  %132 = load i64, ptr %f, align 8, !tbaa !7
  %add84 = add nsw i64 %131, %132
  %133 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul85 = mul nsw i64 %add84, %133
  %add.ptr86 = getelementptr inbounds double, ptr %130, i64 %mul85
  store ptr %add.ptr86, ptr %x2, align 8, !tbaa !9
  %134 = load ptr, ptr %kfp_af, align 8, !tbaa !9
  %135 = load i32, ptr %conja, align 4, !tbaa !4
  %136 = load i64, ptr %n_behind, align 8, !tbaa !7
  %137 = load i64, ptr %f, align 8, !tbaa !7
  %138 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %139 = load ptr, ptr %A21, align 8, !tbaa !9
  %140 = load i64, ptr %rs_at, align 8, !tbaa !7
  %141 = load i64, ptr %cs_at, align 8, !tbaa !7
  %142 = load ptr, ptr %x1, align 8, !tbaa !9
  %143 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %144 = load ptr, ptr %x2, align 8, !tbaa !9
  %145 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %146 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %134(i32 noundef %135, i32 noundef 0, i64 noundef %136, i64 noundef %137, ptr noundef %138, ptr noundef %139, i64 noundef %140, i64 noundef %141, ptr noundef %142, i64 noundef %143, ptr noundef %144, i64 noundef %145, ptr noundef %146)
  store i64 0, ptr %k, align 8, !tbaa !7
  br label %for.cond87

for.cond87:                                       ; preds = %for.inc138, %for.body70
  %147 = load i64, ptr %k, align 8, !tbaa !7
  %148 = load i64, ptr %f, align 8, !tbaa !7
  %cmp88 = icmp slt i64 %147, %148
  br i1 %cmp88, label %for.body89, label %for.end140

for.body89:                                       ; preds = %for.cond87
  %149 = load i64, ptr %f, align 8, !tbaa !7
  %150 = load i64, ptr %k, align 8, !tbaa !7
  %sub90 = sub nsw i64 %149, %150
  %sub91 = sub nsw i64 %sub90, 1
  store i64 %sub91, ptr %l, align 8, !tbaa !7
  %151 = load i64, ptr %k, align 8, !tbaa !7
  store i64 %151, ptr %f_behind, align 8, !tbaa !7
  %152 = load ptr, ptr %A11, align 8, !tbaa !9
  %153 = load i64, ptr %l, align 8, !tbaa !7
  %154 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul92 = mul nsw i64 %153, %154
  %add.ptr93 = getelementptr inbounds double, ptr %152, i64 %mul92
  %155 = load i64, ptr %l, align 8, !tbaa !7
  %156 = load i64, ptr %cs_at, align 8, !tbaa !7
  %mul94 = mul nsw i64 %155, %156
  %add.ptr95 = getelementptr inbounds double, ptr %add.ptr93, i64 %mul94
  store ptr %add.ptr95, ptr %alpha11, align 8, !tbaa !9
  %157 = load ptr, ptr %A11, align 8, !tbaa !9
  %158 = load i64, ptr %l, align 8, !tbaa !7
  %add96 = add nsw i64 %158, 1
  %159 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul97 = mul nsw i64 %add96, %159
  %add.ptr98 = getelementptr inbounds double, ptr %157, i64 %mul97
  %160 = load i64, ptr %l, align 8, !tbaa !7
  %161 = load i64, ptr %cs_at, align 8, !tbaa !7
  %mul99 = mul nsw i64 %160, %161
  %add.ptr100 = getelementptr inbounds double, ptr %add.ptr98, i64 %mul99
  store ptr %add.ptr100, ptr %a21, align 8, !tbaa !9
  %162 = load ptr, ptr %x1, align 8, !tbaa !9
  %163 = load i64, ptr %l, align 8, !tbaa !7
  %164 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul101 = mul nsw i64 %163, %164
  %add.ptr102 = getelementptr inbounds double, ptr %162, i64 %mul101
  store ptr %add.ptr102, ptr %chi11, align 8, !tbaa !9
  %165 = load ptr, ptr %x1, align 8, !tbaa !9
  %166 = load i64, ptr %l, align 8, !tbaa !7
  %add103 = add nsw i64 %166, 1
  %167 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul104 = mul nsw i64 %add103, %167
  %add.ptr105 = getelementptr inbounds double, ptr %165, i64 %mul104
  store ptr %add.ptr105, ptr %x21, align 8, !tbaa !9
  %168 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %169 = load double, ptr %168, align 8, !tbaa !13
  %170 = load ptr, ptr %chi11, align 8, !tbaa !9
  %171 = load double, ptr %170, align 8, !tbaa !13
  %mul106 = fmul double %169, %171
  store double %mul106, ptr %alpha_chi11, align 8, !tbaa !13
  %172 = load i32, ptr %conja, align 4, !tbaa !4
  %call107 = call zeroext i1 @bli_is_conj(i32 noundef %172)
  br i1 %call107, label %if.then108, label %if.else120

if.then108:                                       ; preds = %for.body89
  store i64 0, ptr %j, align 8, !tbaa !7
  br label %for.cond109

for.cond109:                                      ; preds = %for.inc117, %if.then108
  %173 = load i64, ptr %j, align 8, !tbaa !7
  %174 = load i64, ptr %f_behind, align 8, !tbaa !7
  %cmp110 = icmp slt i64 %173, %174
  br i1 %cmp110, label %for.body111, label %for.end119

for.body111:                                      ; preds = %for.cond109
  %175 = load double, ptr %alpha_chi11, align 8, !tbaa !13
  %176 = load ptr, ptr %a21, align 8, !tbaa !9
  %177 = load i64, ptr %j, align 8, !tbaa !7
  %178 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul112 = mul nsw i64 %177, %178
  %add.ptr113 = getelementptr inbounds double, ptr %176, i64 %mul112
  %179 = load double, ptr %add.ptr113, align 8, !tbaa !13
  %180 = load ptr, ptr %x21, align 8, !tbaa !9
  %181 = load i64, ptr %j, align 8, !tbaa !7
  %182 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul115 = mul nsw i64 %181, %182
  %add.ptr116 = getelementptr inbounds double, ptr %180, i64 %mul115
  %183 = load double, ptr %add.ptr116, align 8, !tbaa !13
  %184 = call double @llvm.fmuladd.f64(double %175, double %179, double %183)
  store double %184, ptr %add.ptr116, align 8, !tbaa !13
  br label %for.inc117

for.inc117:                                       ; preds = %for.body111
  %185 = load i64, ptr %j, align 8, !tbaa !7
  %inc118 = add nsw i64 %185, 1
  store i64 %inc118, ptr %j, align 8, !tbaa !7
  br label %for.cond109

for.end119:                                       ; preds = %for.cond109
  br label %if.end132

if.else120:                                       ; preds = %for.body89
  store i64 0, ptr %j, align 8, !tbaa !7
  br label %for.cond121

for.cond121:                                      ; preds = %for.inc129, %if.else120
  %186 = load i64, ptr %j, align 8, !tbaa !7
  %187 = load i64, ptr %f_behind, align 8, !tbaa !7
  %cmp122 = icmp slt i64 %186, %187
  br i1 %cmp122, label %for.body123, label %for.end131

for.body123:                                      ; preds = %for.cond121
  %188 = load double, ptr %alpha_chi11, align 8, !tbaa !13
  %189 = load ptr, ptr %a21, align 8, !tbaa !9
  %190 = load i64, ptr %j, align 8, !tbaa !7
  %191 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul124 = mul nsw i64 %190, %191
  %add.ptr125 = getelementptr inbounds double, ptr %189, i64 %mul124
  %192 = load double, ptr %add.ptr125, align 8, !tbaa !13
  %193 = load ptr, ptr %x21, align 8, !tbaa !9
  %194 = load i64, ptr %j, align 8, !tbaa !7
  %195 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul127 = mul nsw i64 %194, %195
  %add.ptr128 = getelementptr inbounds double, ptr %193, i64 %mul127
  %196 = load double, ptr %add.ptr128, align 8, !tbaa !13
  %197 = call double @llvm.fmuladd.f64(double %188, double %192, double %196)
  store double %197, ptr %add.ptr128, align 8, !tbaa !13
  br label %for.inc129

for.inc129:                                       ; preds = %for.body123
  %198 = load i64, ptr %j, align 8, !tbaa !7
  %inc130 = add nsw i64 %198, 1
  store i64 %inc130, ptr %j, align 8, !tbaa !7
  br label %for.cond121

for.end131:                                       ; preds = %for.cond121
  br label %if.end132

if.end132:                                        ; preds = %for.end131, %for.end119
  %199 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %200 = load double, ptr %199, align 8, !tbaa !13
  store double %200, ptr %alpha_alpha11_conj, align 8, !tbaa !13
  %201 = load i32, ptr %diaga.addr, align 4, !tbaa !4
  %call133 = call zeroext i1 @bli_is_nonunit_diag(i32 noundef %201)
  br i1 %call133, label %if.then134, label %if.end136

if.then134:                                       ; preds = %if.end132
  %202 = load ptr, ptr %alpha11, align 8, !tbaa !9
  %203 = load double, ptr %202, align 8, !tbaa !13
  %204 = load double, ptr %alpha_alpha11_conj, align 8, !tbaa !13
  %mul135 = fmul double %203, %204
  store double %mul135, ptr %alpha_alpha11_conj, align 8, !tbaa !13
  br label %if.end136

if.end136:                                        ; preds = %if.then134, %if.end132
  %205 = load double, ptr %alpha_alpha11_conj, align 8, !tbaa !13
  %206 = load ptr, ptr %chi11, align 8, !tbaa !9
  %207 = load double, ptr %206, align 8, !tbaa !13
  %mul137 = fmul double %205, %207
  %208 = load ptr, ptr %chi11, align 8, !tbaa !9
  store double %mul137, ptr %208, align 8, !tbaa !13
  br label %for.inc138

for.inc138:                                       ; preds = %if.end136
  %209 = load i64, ptr %k, align 8, !tbaa !7
  %inc139 = add nsw i64 %209, 1
  store i64 %inc139, ptr %k, align 8, !tbaa !7
  br label %for.cond87

for.end140:                                       ; preds = %for.cond87
  br label %for.inc141

for.inc141:                                       ; preds = %for.end140
  %210 = load i64, ptr %f, align 8, !tbaa !7
  %211 = load i64, ptr %iter, align 8, !tbaa !7
  %add142 = add nsw i64 %211, %210
  store i64 %add142, ptr %iter, align 8, !tbaa !7
  br label %for.cond68

for.end143:                                       ; preds = %for.cond68
  br label %if.end144

if.end144:                                        ; preds = %for.end143, %for.end66
  call void @llvm.lifetime.end.p0(i64 8, ptr %kfp_af) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %conja) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uploa_trans) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %cs_at) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %rs_at) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %f_behind) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_behind) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_fuse) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %l) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha_chi11) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha_alpha11_conj) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x21) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi11) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x01) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x2) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a21) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha11) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a01) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %A21) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %A11) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %A01) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nounwind uwtable
define hidden void @bli_ctrmv_unf_var2(i32 noundef %uploa, i32 noundef %transa, i32 noundef %diaga, i64 noundef %m, ptr noundef %alpha, ptr noundef %a, i64 noundef %rs_a, i64 noundef %cs_a, ptr noundef %x, i64 noundef %incx, ptr noundef %cntx) #0 {
entry:
  %uploa.addr = alloca i32, align 4
  %transa.addr = alloca i32, align 4
  %diaga.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %alpha.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %rs_a.addr = alloca i64, align 8
  %cs_a.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %A01 = alloca ptr, align 8
  %A11 = alloca ptr, align 8
  %A21 = alloca ptr, align 8
  %a01 = alloca ptr, align 8
  %alpha11 = alloca ptr, align 8
  %a21 = alloca ptr, align 8
  %x0 = alloca ptr, align 8
  %x1 = alloca ptr, align 8
  %x2 = alloca ptr, align 8
  %x01 = alloca ptr, align 8
  %chi11 = alloca ptr, align 8
  %x21 = alloca ptr, align 8
  %alpha_alpha11_conj = alloca %struct.scomplex, align 4
  %alpha_chi11 = alloca %struct.scomplex, align 4
  %iter = alloca i64, align 8
  %i = alloca i64, align 8
  %k = alloca i64, align 8
  %j = alloca i64, align 8
  %l = alloca i64, align 8
  %b_fuse = alloca i64, align 8
  %f = alloca i64, align 8
  %n_behind = alloca i64, align 8
  %f_behind = alloca i64, align 8
  %rs_at = alloca i64, align 8
  %cs_at = alloca i64, align 8
  %uploa_trans = alloca i32, align 4
  %conja = alloca i32, align 4
  %kfp_af = alloca ptr, align 8
  %yr = alloca float, align 4
  %yi = alloca float, align 4
  %yr140 = alloca float, align 4
  %yi148 = alloca float, align 4
  %yr159 = alloca float, align 4
  %yi167 = alloca float, align 4
  %yr318 = alloca float, align 4
  %yi327 = alloca float, align 4
  %yr338 = alloca float, align 4
  %yi346 = alloca float, align 4
  %yr357 = alloca float, align 4
  %yi365 = alloca float, align 4
  store i32 %uploa, ptr %uploa.addr, align 4, !tbaa !4
  store i32 %transa, ptr %transa.addr, align 4, !tbaa !4
  store i32 %diaga, ptr %diaga.addr, align 4, !tbaa !4
  store i64 %m, ptr %m.addr, align 8, !tbaa !7
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !9
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store i64 %rs_a, ptr %rs_a.addr, align 8, !tbaa !7
  store i64 %cs_a, ptr %cs_a.addr, align 8, !tbaa !7
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %incx, ptr %incx.addr, align 8, !tbaa !7
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  store i32 1, ptr %dt, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %A01) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %A11) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %A21) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %a01) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha11) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %a21) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %x0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %x2) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %x01) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi11) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %x21) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha_alpha11_conj) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha_chi11) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %l) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_fuse) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_behind) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %f_behind) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %rs_at) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %cs_at) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %uploa_trans) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %conja) #3
  %0 = load i32, ptr %transa.addr, align 4, !tbaa !4
  %call = call zeroext i1 @bli_does_notrans(i32 noundef %0)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %rs_a.addr, align 8, !tbaa !7
  store i64 %1, ptr %rs_at, align 8, !tbaa !7
  %2 = load i64, ptr %cs_a.addr, align 8, !tbaa !7
  store i64 %2, ptr %cs_at, align 8, !tbaa !7
  %3 = load i32, ptr %uploa.addr, align 4, !tbaa !4
  store i32 %3, ptr %uploa_trans, align 4, !tbaa !4
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i64, ptr %cs_a.addr, align 8, !tbaa !7
  store i64 %4, ptr %rs_at, align 8, !tbaa !7
  %5 = load i64, ptr %rs_a.addr, align 8, !tbaa !7
  store i64 %5, ptr %cs_at, align 8, !tbaa !7
  %6 = load i32, ptr %uploa.addr, align 4, !tbaa !4
  %call1 = call i32 @bli_uplo_toggled(i32 noundef %6)
  store i32 %call1, ptr %uploa_trans, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i32, ptr %transa.addr, align 4, !tbaa !4
  %call2 = call i32 @bli_extract_conj(i32 noundef %7)
  store i32 %call2, ptr %conja, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %kfp_af) #3
  %8 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call3 = call ptr @bli_cntx_get_l1f_ker_dt(i32 noundef 1, i32 noundef 2, ptr noundef %8)
  store ptr %call3, ptr %kfp_af, align 8, !tbaa !9
  %9 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call4 = call i64 @bli_cntx_get_blksz_def_dt(i32 noundef 1, i32 noundef 8, ptr noundef %9)
  store i64 %call4, ptr %b_fuse, align 8, !tbaa !7
  %10 = load i32, ptr %uploa_trans, align 4, !tbaa !4
  %call5 = call zeroext i1 @bli_is_upper(i32 noundef %10)
  br i1 %call5, label %if.then6, label %if.else182

if.then6:                                         ; preds = %if.end
  store i64 0, ptr %iter, align 8, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc179, %if.then6
  %11 = load i64, ptr %iter, align 8, !tbaa !7
  %12 = load i64, ptr %m.addr, align 8, !tbaa !7
  %cmp = icmp slt i64 %11, %12
  br i1 %cmp, label %for.body, label %for.end181

for.body:                                         ; preds = %for.cond
  %13 = load i64, ptr %iter, align 8, !tbaa !7
  %14 = load i64, ptr %m.addr, align 8, !tbaa !7
  %15 = load i64, ptr %b_fuse, align 8, !tbaa !7
  %call7 = call i64 @bli_determine_blocksize_dim_f(i64 noundef %13, i64 noundef %14, i64 noundef %15)
  store i64 %call7, ptr %f, align 8, !tbaa !7
  %16 = load i64, ptr %iter, align 8, !tbaa !7
  store i64 %16, ptr %i, align 8, !tbaa !7
  %17 = load i64, ptr %i, align 8, !tbaa !7
  store i64 %17, ptr %n_behind, align 8, !tbaa !7
  %18 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %19 = load i64, ptr %i, align 8, !tbaa !7
  %20 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul = mul nsw i64 %19, %20
  %add.ptr = getelementptr inbounds %struct.scomplex, ptr %18, i64 %mul
  %21 = load i64, ptr %i, align 8, !tbaa !7
  %22 = load i64, ptr %cs_at, align 8, !tbaa !7
  %mul8 = mul nsw i64 %21, %22
  %add.ptr9 = getelementptr inbounds %struct.scomplex, ptr %add.ptr, i64 %mul8
  store ptr %add.ptr9, ptr %A11, align 8, !tbaa !9
  %23 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %24 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul10 = mul nsw i64 0, %24
  %add.ptr11 = getelementptr inbounds %struct.scomplex, ptr %23, i64 %mul10
  %25 = load i64, ptr %i, align 8, !tbaa !7
  %26 = load i64, ptr %cs_at, align 8, !tbaa !7
  %mul12 = mul nsw i64 %25, %26
  %add.ptr13 = getelementptr inbounds %struct.scomplex, ptr %add.ptr11, i64 %mul12
  store ptr %add.ptr13, ptr %A01, align 8, !tbaa !9
  %27 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %28 = load i64, ptr %i, align 8, !tbaa !7
  %29 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul14 = mul nsw i64 %28, %29
  %add.ptr15 = getelementptr inbounds %struct.scomplex, ptr %27, i64 %mul14
  store ptr %add.ptr15, ptr %x1, align 8, !tbaa !9
  %30 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %31 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul16 = mul nsw i64 0, %31
  %add.ptr17 = getelementptr inbounds %struct.scomplex, ptr %30, i64 %mul16
  store ptr %add.ptr17, ptr %x0, align 8, !tbaa !9
  %32 = load ptr, ptr %kfp_af, align 8, !tbaa !9
  %33 = load i32, ptr %conja, align 4, !tbaa !4
  %34 = load i64, ptr %n_behind, align 8, !tbaa !7
  %35 = load i64, ptr %f, align 8, !tbaa !7
  %36 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %37 = load ptr, ptr %A01, align 8, !tbaa !9
  %38 = load i64, ptr %rs_at, align 8, !tbaa !7
  %39 = load i64, ptr %cs_at, align 8, !tbaa !7
  %40 = load ptr, ptr %x1, align 8, !tbaa !9
  %41 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %42 = load ptr, ptr %x0, align 8, !tbaa !9
  %43 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %44 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %32(i32 noundef %33, i32 noundef 0, i64 noundef %34, i64 noundef %35, ptr noundef %36, ptr noundef %37, i64 noundef %38, i64 noundef %39, ptr noundef %40, i64 noundef %41, ptr noundef %42, i64 noundef %43, ptr noundef %44)
  store i64 0, ptr %k, align 8, !tbaa !7
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc176, %for.body
  %45 = load i64, ptr %k, align 8, !tbaa !7
  %46 = load i64, ptr %f, align 8, !tbaa !7
  %cmp19 = icmp slt i64 %45, %46
  br i1 %cmp19, label %for.body20, label %for.end178

for.body20:                                       ; preds = %for.cond18
  %47 = load i64, ptr %k, align 8, !tbaa !7
  store i64 %47, ptr %l, align 8, !tbaa !7
  %48 = load i64, ptr %l, align 8, !tbaa !7
  store i64 %48, ptr %f_behind, align 8, !tbaa !7
  %49 = load ptr, ptr %A11, align 8, !tbaa !9
  %50 = load i64, ptr %l, align 8, !tbaa !7
  %51 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul21 = mul nsw i64 %50, %51
  %add.ptr22 = getelementptr inbounds %struct.scomplex, ptr %49, i64 %mul21
  %52 = load i64, ptr %l, align 8, !tbaa !7
  %53 = load i64, ptr %cs_at, align 8, !tbaa !7
  %mul23 = mul nsw i64 %52, %53
  %add.ptr24 = getelementptr inbounds %struct.scomplex, ptr %add.ptr22, i64 %mul23
  store ptr %add.ptr24, ptr %alpha11, align 8, !tbaa !9
  %54 = load ptr, ptr %A11, align 8, !tbaa !9
  %55 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul25 = mul nsw i64 0, %55
  %add.ptr26 = getelementptr inbounds %struct.scomplex, ptr %54, i64 %mul25
  %56 = load i64, ptr %l, align 8, !tbaa !7
  %57 = load i64, ptr %cs_at, align 8, !tbaa !7
  %mul27 = mul nsw i64 %56, %57
  %add.ptr28 = getelementptr inbounds %struct.scomplex, ptr %add.ptr26, i64 %mul27
  store ptr %add.ptr28, ptr %a01, align 8, !tbaa !9
  %58 = load ptr, ptr %x1, align 8, !tbaa !9
  %59 = load i64, ptr %l, align 8, !tbaa !7
  %60 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul29 = mul nsw i64 %59, %60
  %add.ptr30 = getelementptr inbounds %struct.scomplex, ptr %58, i64 %mul29
  store ptr %add.ptr30, ptr %chi11, align 8, !tbaa !9
  %61 = load ptr, ptr %x1, align 8, !tbaa !9
  %62 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul31 = mul nsw i64 0, %62
  %add.ptr32 = getelementptr inbounds %struct.scomplex, ptr %61, i64 %mul31
  store ptr %add.ptr32, ptr %x01, align 8, !tbaa !9
  %63 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %real = getelementptr inbounds %struct.scomplex, ptr %63, i32 0, i32 0
  %64 = load float, ptr %real, align 4, !tbaa !15
  %65 = load ptr, ptr %chi11, align 8, !tbaa !9
  %real33 = getelementptr inbounds %struct.scomplex, ptr %65, i32 0, i32 0
  %66 = load float, ptr %real33, align 4, !tbaa !15
  %67 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag = getelementptr inbounds %struct.scomplex, ptr %67, i32 0, i32 1
  %68 = load float, ptr %imag, align 4, !tbaa !17
  %69 = load ptr, ptr %chi11, align 8, !tbaa !9
  %imag35 = getelementptr inbounds %struct.scomplex, ptr %69, i32 0, i32 1
  %70 = load float, ptr %imag35, align 4, !tbaa !17
  %mul36 = fmul float %68, %70
  %neg = fneg float %mul36
  %71 = call float @llvm.fmuladd.f32(float %64, float %66, float %neg)
  %real37 = getelementptr inbounds %struct.scomplex, ptr %alpha_chi11, i32 0, i32 0
  store float %71, ptr %real37, align 4, !tbaa !15
  %72 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag38 = getelementptr inbounds %struct.scomplex, ptr %72, i32 0, i32 1
  %73 = load float, ptr %imag38, align 4, !tbaa !17
  %74 = load ptr, ptr %chi11, align 8, !tbaa !9
  %real39 = getelementptr inbounds %struct.scomplex, ptr %74, i32 0, i32 0
  %75 = load float, ptr %real39, align 4, !tbaa !15
  %76 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %real41 = getelementptr inbounds %struct.scomplex, ptr %76, i32 0, i32 0
  %77 = load float, ptr %real41, align 4, !tbaa !15
  %78 = load ptr, ptr %chi11, align 8, !tbaa !9
  %imag42 = getelementptr inbounds %struct.scomplex, ptr %78, i32 0, i32 1
  %79 = load float, ptr %imag42, align 4, !tbaa !17
  %mul43 = fmul float %77, %79
  %80 = call float @llvm.fmuladd.f32(float %73, float %75, float %mul43)
  %imag44 = getelementptr inbounds %struct.scomplex, ptr %alpha_chi11, i32 0, i32 1
  store float %80, ptr %imag44, align 4, !tbaa !17
  %81 = load i32, ptr %conja, align 4, !tbaa !4
  %call45 = call zeroext i1 @bli_is_conj(i32 noundef %81)
  br i1 %call45, label %if.then46, label %if.else78

if.then46:                                        ; preds = %for.body20
  store i64 0, ptr %j, align 8, !tbaa !7
  br label %for.cond47

for.cond47:                                       ; preds = %for.inc, %if.then46
  %82 = load i64, ptr %j, align 8, !tbaa !7
  %83 = load i64, ptr %f_behind, align 8, !tbaa !7
  %cmp48 = icmp slt i64 %82, %83
  br i1 %cmp48, label %for.body49, label %for.end

for.body49:                                       ; preds = %for.cond47
  %real50 = getelementptr inbounds %struct.scomplex, ptr %alpha_chi11, i32 0, i32 0
  %84 = load float, ptr %real50, align 4, !tbaa !15
  %85 = load ptr, ptr %a01, align 8, !tbaa !9
  %86 = load i64, ptr %j, align 8, !tbaa !7
  %87 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul51 = mul nsw i64 %86, %87
  %add.ptr52 = getelementptr inbounds %struct.scomplex, ptr %85, i64 %mul51
  %real53 = getelementptr inbounds %struct.scomplex, ptr %add.ptr52, i32 0, i32 0
  %88 = load float, ptr %real53, align 4, !tbaa !15
  %imag55 = getelementptr inbounds %struct.scomplex, ptr %alpha_chi11, i32 0, i32 1
  %89 = load float, ptr %imag55, align 4, !tbaa !17
  %90 = load ptr, ptr %a01, align 8, !tbaa !9
  %91 = load i64, ptr %j, align 8, !tbaa !7
  %92 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul56 = mul nsw i64 %91, %92
  %add.ptr57 = getelementptr inbounds %struct.scomplex, ptr %90, i64 %mul56
  %imag58 = getelementptr inbounds %struct.scomplex, ptr %add.ptr57, i32 0, i32 1
  %93 = load float, ptr %imag58, align 4, !tbaa !17
  %mul59 = fmul float %89, %93
  %94 = call float @llvm.fmuladd.f32(float %84, float %88, float %mul59)
  %95 = load ptr, ptr %x01, align 8, !tbaa !9
  %96 = load i64, ptr %j, align 8, !tbaa !7
  %97 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul60 = mul nsw i64 %96, %97
  %add.ptr61 = getelementptr inbounds %struct.scomplex, ptr %95, i64 %mul60
  %real62 = getelementptr inbounds %struct.scomplex, ptr %add.ptr61, i32 0, i32 0
  %98 = load float, ptr %real62, align 4, !tbaa !15
  %add = fadd float %98, %94
  store float %add, ptr %real62, align 4, !tbaa !15
  %imag63 = getelementptr inbounds %struct.scomplex, ptr %alpha_chi11, i32 0, i32 1
  %99 = load float, ptr %imag63, align 4, !tbaa !17
  %100 = load ptr, ptr %a01, align 8, !tbaa !9
  %101 = load i64, ptr %j, align 8, !tbaa !7
  %102 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul64 = mul nsw i64 %101, %102
  %add.ptr65 = getelementptr inbounds %struct.scomplex, ptr %100, i64 %mul64
  %real66 = getelementptr inbounds %struct.scomplex, ptr %add.ptr65, i32 0, i32 0
  %103 = load float, ptr %real66, align 4, !tbaa !15
  %real68 = getelementptr inbounds %struct.scomplex, ptr %alpha_chi11, i32 0, i32 0
  %104 = load float, ptr %real68, align 4, !tbaa !15
  %105 = load ptr, ptr %a01, align 8, !tbaa !9
  %106 = load i64, ptr %j, align 8, !tbaa !7
  %107 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul69 = mul nsw i64 %106, %107
  %add.ptr70 = getelementptr inbounds %struct.scomplex, ptr %105, i64 %mul69
  %imag71 = getelementptr inbounds %struct.scomplex, ptr %add.ptr70, i32 0, i32 1
  %108 = load float, ptr %imag71, align 4, !tbaa !17
  %mul72 = fmul float %104, %108
  %neg73 = fneg float %mul72
  %109 = call float @llvm.fmuladd.f32(float %99, float %103, float %neg73)
  %110 = load ptr, ptr %x01, align 8, !tbaa !9
  %111 = load i64, ptr %j, align 8, !tbaa !7
  %112 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul74 = mul nsw i64 %111, %112
  %add.ptr75 = getelementptr inbounds %struct.scomplex, ptr %110, i64 %mul74
  %imag76 = getelementptr inbounds %struct.scomplex, ptr %add.ptr75, i32 0, i32 1
  %113 = load float, ptr %imag76, align 4, !tbaa !17
  %add77 = fadd float %113, %109
  store float %add77, ptr %imag76, align 4, !tbaa !17
  br label %for.inc

for.inc:                                          ; preds = %for.body49
  %114 = load i64, ptr %j, align 8, !tbaa !7
  %inc = add nsw i64 %114, 1
  store i64 %inc, ptr %j, align 8, !tbaa !7
  br label %for.cond47

for.end:                                          ; preds = %for.cond47
  br label %if.end114

if.else78:                                        ; preds = %for.body20
  store i64 0, ptr %j, align 8, !tbaa !7
  br label %for.cond79

for.cond79:                                       ; preds = %for.inc111, %if.else78
  %115 = load i64, ptr %j, align 8, !tbaa !7
  %116 = load i64, ptr %f_behind, align 8, !tbaa !7
  %cmp80 = icmp slt i64 %115, %116
  br i1 %cmp80, label %for.body81, label %for.end113

for.body81:                                       ; preds = %for.cond79
  %real82 = getelementptr inbounds %struct.scomplex, ptr %alpha_chi11, i32 0, i32 0
  %117 = load float, ptr %real82, align 4, !tbaa !15
  %118 = load ptr, ptr %a01, align 8, !tbaa !9
  %119 = load i64, ptr %j, align 8, !tbaa !7
  %120 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul83 = mul nsw i64 %119, %120
  %add.ptr84 = getelementptr inbounds %struct.scomplex, ptr %118, i64 %mul83
  %real85 = getelementptr inbounds %struct.scomplex, ptr %add.ptr84, i32 0, i32 0
  %121 = load float, ptr %real85, align 4, !tbaa !15
  %imag87 = getelementptr inbounds %struct.scomplex, ptr %alpha_chi11, i32 0, i32 1
  %122 = load float, ptr %imag87, align 4, !tbaa !17
  %123 = load ptr, ptr %a01, align 8, !tbaa !9
  %124 = load i64, ptr %j, align 8, !tbaa !7
  %125 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul88 = mul nsw i64 %124, %125
  %add.ptr89 = getelementptr inbounds %struct.scomplex, ptr %123, i64 %mul88
  %imag90 = getelementptr inbounds %struct.scomplex, ptr %add.ptr89, i32 0, i32 1
  %126 = load float, ptr %imag90, align 4, !tbaa !17
  %mul91 = fmul float %122, %126
  %neg92 = fneg float %mul91
  %127 = call float @llvm.fmuladd.f32(float %117, float %121, float %neg92)
  %128 = load ptr, ptr %x01, align 8, !tbaa !9
  %129 = load i64, ptr %j, align 8, !tbaa !7
  %130 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul93 = mul nsw i64 %129, %130
  %add.ptr94 = getelementptr inbounds %struct.scomplex, ptr %128, i64 %mul93
  %real95 = getelementptr inbounds %struct.scomplex, ptr %add.ptr94, i32 0, i32 0
  %131 = load float, ptr %real95, align 4, !tbaa !15
  %add96 = fadd float %131, %127
  store float %add96, ptr %real95, align 4, !tbaa !15
  %imag97 = getelementptr inbounds %struct.scomplex, ptr %alpha_chi11, i32 0, i32 1
  %132 = load float, ptr %imag97, align 4, !tbaa !17
  %133 = load ptr, ptr %a01, align 8, !tbaa !9
  %134 = load i64, ptr %j, align 8, !tbaa !7
  %135 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul98 = mul nsw i64 %134, %135
  %add.ptr99 = getelementptr inbounds %struct.scomplex, ptr %133, i64 %mul98
  %real100 = getelementptr inbounds %struct.scomplex, ptr %add.ptr99, i32 0, i32 0
  %136 = load float, ptr %real100, align 4, !tbaa !15
  %real102 = getelementptr inbounds %struct.scomplex, ptr %alpha_chi11, i32 0, i32 0
  %137 = load float, ptr %real102, align 4, !tbaa !15
  %138 = load ptr, ptr %a01, align 8, !tbaa !9
  %139 = load i64, ptr %j, align 8, !tbaa !7
  %140 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul103 = mul nsw i64 %139, %140
  %add.ptr104 = getelementptr inbounds %struct.scomplex, ptr %138, i64 %mul103
  %imag105 = getelementptr inbounds %struct.scomplex, ptr %add.ptr104, i32 0, i32 1
  %141 = load float, ptr %imag105, align 4, !tbaa !17
  %mul106 = fmul float %137, %141
  %142 = call float @llvm.fmuladd.f32(float %132, float %136, float %mul106)
  %143 = load ptr, ptr %x01, align 8, !tbaa !9
  %144 = load i64, ptr %j, align 8, !tbaa !7
  %145 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul107 = mul nsw i64 %144, %145
  %add.ptr108 = getelementptr inbounds %struct.scomplex, ptr %143, i64 %mul107
  %imag109 = getelementptr inbounds %struct.scomplex, ptr %add.ptr108, i32 0, i32 1
  %146 = load float, ptr %imag109, align 4, !tbaa !17
  %add110 = fadd float %146, %142
  store float %add110, ptr %imag109, align 4, !tbaa !17
  br label %for.inc111

for.inc111:                                       ; preds = %for.body81
  %147 = load i64, ptr %j, align 8, !tbaa !7
  %inc112 = add nsw i64 %147, 1
  store i64 %inc112, ptr %j, align 8, !tbaa !7
  br label %for.cond79

for.end113:                                       ; preds = %for.cond79
  br label %if.end114

if.end114:                                        ; preds = %for.end113, %for.end
  %148 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %real115 = getelementptr inbounds %struct.scomplex, ptr %148, i32 0, i32 0
  %149 = load float, ptr %real115, align 4, !tbaa !15
  %real116 = getelementptr inbounds %struct.scomplex, ptr %alpha_alpha11_conj, i32 0, i32 0
  store float %149, ptr %real116, align 4, !tbaa !15
  %150 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag117 = getelementptr inbounds %struct.scomplex, ptr %150, i32 0, i32 1
  %151 = load float, ptr %imag117, align 4, !tbaa !17
  %imag118 = getelementptr inbounds %struct.scomplex, ptr %alpha_alpha11_conj, i32 0, i32 1
  store float %151, ptr %imag118, align 4, !tbaa !17
  %152 = load i32, ptr %diaga.addr, align 4, !tbaa !4
  %call119 = call zeroext i1 @bli_is_nonunit_diag(i32 noundef %152)
  br i1 %call119, label %if.then120, label %if.end158

if.then120:                                       ; preds = %if.end114
  %153 = load i32, ptr %conja, align 4, !tbaa !4
  %call121 = call zeroext i1 @bli_is_conj(i32 noundef %153)
  br i1 %call121, label %if.then122, label %if.else139

if.then122:                                       ; preds = %if.then120
  call void @llvm.lifetime.start.p0(i64 4, ptr %yr) #3
  %154 = load ptr, ptr %alpha11, align 8, !tbaa !9
  %real123 = getelementptr inbounds %struct.scomplex, ptr %154, i32 0, i32 0
  %155 = load float, ptr %real123, align 4, !tbaa !15
  %real124 = getelementptr inbounds %struct.scomplex, ptr %alpha_alpha11_conj, i32 0, i32 0
  %156 = load float, ptr %real124, align 4, !tbaa !15
  %157 = load ptr, ptr %alpha11, align 8, !tbaa !9
  %imag126 = getelementptr inbounds %struct.scomplex, ptr %157, i32 0, i32 1
  %158 = load float, ptr %imag126, align 4, !tbaa !17
  %fneg = fneg float %158
  %imag127 = getelementptr inbounds %struct.scomplex, ptr %alpha_alpha11_conj, i32 0, i32 1
  %159 = load float, ptr %imag127, align 4, !tbaa !17
  %mul128 = fmul float %fneg, %159
  %neg129 = fneg float %mul128
  %160 = call float @llvm.fmuladd.f32(float %155, float %156, float %neg129)
  store float %160, ptr %yr, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %yi) #3
  %161 = load ptr, ptr %alpha11, align 8, !tbaa !9
  %imag130 = getelementptr inbounds %struct.scomplex, ptr %161, i32 0, i32 1
  %162 = load float, ptr %imag130, align 4, !tbaa !17
  %fneg131 = fneg float %162
  %real132 = getelementptr inbounds %struct.scomplex, ptr %alpha_alpha11_conj, i32 0, i32 0
  %163 = load float, ptr %real132, align 4, !tbaa !15
  %164 = load ptr, ptr %alpha11, align 8, !tbaa !9
  %real134 = getelementptr inbounds %struct.scomplex, ptr %164, i32 0, i32 0
  %165 = load float, ptr %real134, align 4, !tbaa !15
  %imag135 = getelementptr inbounds %struct.scomplex, ptr %alpha_alpha11_conj, i32 0, i32 1
  %166 = load float, ptr %imag135, align 4, !tbaa !17
  %mul136 = fmul float %165, %166
  %167 = call float @llvm.fmuladd.f32(float %fneg131, float %163, float %mul136)
  store float %167, ptr %yi, align 4, !tbaa !11
  %168 = load float, ptr %yr, align 4, !tbaa !11
  %real137 = getelementptr inbounds %struct.scomplex, ptr %alpha_alpha11_conj, i32 0, i32 0
  store float %168, ptr %real137, align 4, !tbaa !15
  %169 = load float, ptr %yi, align 4, !tbaa !11
  %imag138 = getelementptr inbounds %struct.scomplex, ptr %alpha_alpha11_conj, i32 0, i32 1
  store float %169, ptr %imag138, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 4, ptr %yi) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %yr) #3
  br label %if.end157

if.else139:                                       ; preds = %if.then120
  call void @llvm.lifetime.start.p0(i64 4, ptr %yr140) #3
  %170 = load ptr, ptr %alpha11, align 8, !tbaa !9
  %real141 = getelementptr inbounds %struct.scomplex, ptr %170, i32 0, i32 0
  %171 = load float, ptr %real141, align 4, !tbaa !15
  %real142 = getelementptr inbounds %struct.scomplex, ptr %alpha_alpha11_conj, i32 0, i32 0
  %172 = load float, ptr %real142, align 4, !tbaa !15
  %173 = load ptr, ptr %alpha11, align 8, !tbaa !9
  %imag144 = getelementptr inbounds %struct.scomplex, ptr %173, i32 0, i32 1
  %174 = load float, ptr %imag144, align 4, !tbaa !17
  %imag145 = getelementptr inbounds %struct.scomplex, ptr %alpha_alpha11_conj, i32 0, i32 1
  %175 = load float, ptr %imag145, align 4, !tbaa !17
  %mul146 = fmul float %174, %175
  %neg147 = fneg float %mul146
  %176 = call float @llvm.fmuladd.f32(float %171, float %172, float %neg147)
  store float %176, ptr %yr140, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %yi148) #3
  %177 = load ptr, ptr %alpha11, align 8, !tbaa !9
  %imag149 = getelementptr inbounds %struct.scomplex, ptr %177, i32 0, i32 1
  %178 = load float, ptr %imag149, align 4, !tbaa !17
  %real150 = getelementptr inbounds %struct.scomplex, ptr %alpha_alpha11_conj, i32 0, i32 0
  %179 = load float, ptr %real150, align 4, !tbaa !15
  %180 = load ptr, ptr %alpha11, align 8, !tbaa !9
  %real152 = getelementptr inbounds %struct.scomplex, ptr %180, i32 0, i32 0
  %181 = load float, ptr %real152, align 4, !tbaa !15
  %imag153 = getelementptr inbounds %struct.scomplex, ptr %alpha_alpha11_conj, i32 0, i32 1
  %182 = load float, ptr %imag153, align 4, !tbaa !17
  %mul154 = fmul float %181, %182
  %183 = call float @llvm.fmuladd.f32(float %178, float %179, float %mul154)
  store float %183, ptr %yi148, align 4, !tbaa !11
  %184 = load float, ptr %yr140, align 4, !tbaa !11
  %real155 = getelementptr inbounds %struct.scomplex, ptr %alpha_alpha11_conj, i32 0, i32 0
  store float %184, ptr %real155, align 4, !tbaa !15
  %185 = load float, ptr %yi148, align 4, !tbaa !11
  %imag156 = getelementptr inbounds %struct.scomplex, ptr %alpha_alpha11_conj, i32 0, i32 1
  store float %185, ptr %imag156, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 4, ptr %yi148) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %yr140) #3
  br label %if.end157

if.end157:                                        ; preds = %if.else139, %if.then122
  br label %if.end158

if.end158:                                        ; preds = %if.end157, %if.end114
  call void @llvm.lifetime.start.p0(i64 4, ptr %yr159) #3
  %real160 = getelementptr inbounds %struct.scomplex, ptr %alpha_alpha11_conj, i32 0, i32 0
  %186 = load float, ptr %real160, align 4, !tbaa !15
  %187 = load ptr, ptr %chi11, align 8, !tbaa !9
  %real161 = getelementptr inbounds %struct.scomplex, ptr %187, i32 0, i32 0
  %188 = load float, ptr %real161, align 4, !tbaa !15
  %imag163 = getelementptr inbounds %struct.scomplex, ptr %alpha_alpha11_conj, i32 0, i32 1
  %189 = load float, ptr %imag163, align 4, !tbaa !17
  %190 = load ptr, ptr %chi11, align 8, !tbaa !9
  %imag164 = getelementptr inbounds %struct.scomplex, ptr %190, i32 0, i32 1
  %191 = load float, ptr %imag164, align 4, !tbaa !17
  %mul165 = fmul float %189, %191
  %neg166 = fneg float %mul165
  %192 = call float @llvm.fmuladd.f32(float %186, float %188, float %neg166)
  store float %192, ptr %yr159, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %yi167) #3
  %imag168 = getelementptr inbounds %struct.scomplex, ptr %alpha_alpha11_conj, i32 0, i32 1
  %193 = load float, ptr %imag168, align 4, !tbaa !17
  %194 = load ptr, ptr %chi11, align 8, !tbaa !9
  %real169 = getelementptr inbounds %struct.scomplex, ptr %194, i32 0, i32 0
  %195 = load float, ptr %real169, align 4, !tbaa !15
  %real171 = getelementptr inbounds %struct.scomplex, ptr %alpha_alpha11_conj, i32 0, i32 0
  %196 = load float, ptr %real171, align 4, !tbaa !15
  %197 = load ptr, ptr %chi11, align 8, !tbaa !9
  %imag172 = getelementptr inbounds %struct.scomplex, ptr %197, i32 0, i32 1
  %198 = load float, ptr %imag172, align 4, !tbaa !17
  %mul173 = fmul float %196, %198
  %199 = call float @llvm.fmuladd.f32(float %193, float %195, float %mul173)
  store float %199, ptr %yi167, align 4, !tbaa !11
  %200 = load float, ptr %yr159, align 4, !tbaa !11
  %201 = load ptr, ptr %chi11, align 8, !tbaa !9
  %real174 = getelementptr inbounds %struct.scomplex, ptr %201, i32 0, i32 0
  store float %200, ptr %real174, align 4, !tbaa !15
  %202 = load float, ptr %yi167, align 4, !tbaa !11
  %203 = load ptr, ptr %chi11, align 8, !tbaa !9
  %imag175 = getelementptr inbounds %struct.scomplex, ptr %203, i32 0, i32 1
  store float %202, ptr %imag175, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 4, ptr %yi167) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %yr159) #3
  br label %for.inc176

for.inc176:                                       ; preds = %if.end158
  %204 = load i64, ptr %k, align 8, !tbaa !7
  %inc177 = add nsw i64 %204, 1
  store i64 %inc177, ptr %k, align 8, !tbaa !7
  br label %for.cond18

for.end178:                                       ; preds = %for.cond18
  br label %for.inc179

for.inc179:                                       ; preds = %for.end178
  %205 = load i64, ptr %f, align 8, !tbaa !7
  %206 = load i64, ptr %iter, align 8, !tbaa !7
  %add180 = add nsw i64 %206, %205
  store i64 %add180, ptr %iter, align 8, !tbaa !7
  br label %for.cond

for.end181:                                       ; preds = %for.cond
  br label %if.end380

if.else182:                                       ; preds = %if.end
  store i64 0, ptr %iter, align 8, !tbaa !7
  br label %for.cond183

for.cond183:                                      ; preds = %for.inc377, %if.else182
  %207 = load i64, ptr %iter, align 8, !tbaa !7
  %208 = load i64, ptr %m.addr, align 8, !tbaa !7
  %cmp184 = icmp slt i64 %207, %208
  br i1 %cmp184, label %for.body185, label %for.end379

for.body185:                                      ; preds = %for.cond183
  %209 = load i64, ptr %iter, align 8, !tbaa !7
  %210 = load i64, ptr %m.addr, align 8, !tbaa !7
  %211 = load i64, ptr %b_fuse, align 8, !tbaa !7
  %call186 = call i64 @bli_determine_blocksize_dim_b(i64 noundef %209, i64 noundef %210, i64 noundef %211)
  store i64 %call186, ptr %f, align 8, !tbaa !7
  %212 = load i64, ptr %m.addr, align 8, !tbaa !7
  %213 = load i64, ptr %iter, align 8, !tbaa !7
  %sub = sub nsw i64 %212, %213
  %214 = load i64, ptr %f, align 8, !tbaa !7
  %sub187 = sub nsw i64 %sub, %214
  store i64 %sub187, ptr %i, align 8, !tbaa !7
  %215 = load i64, ptr %iter, align 8, !tbaa !7
  store i64 %215, ptr %n_behind, align 8, !tbaa !7
  %216 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %217 = load i64, ptr %i, align 8, !tbaa !7
  %218 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul188 = mul nsw i64 %217, %218
  %add.ptr189 = getelementptr inbounds %struct.scomplex, ptr %216, i64 %mul188
  %219 = load i64, ptr %i, align 8, !tbaa !7
  %220 = load i64, ptr %cs_at, align 8, !tbaa !7
  %mul190 = mul nsw i64 %219, %220
  %add.ptr191 = getelementptr inbounds %struct.scomplex, ptr %add.ptr189, i64 %mul190
  store ptr %add.ptr191, ptr %A11, align 8, !tbaa !9
  %221 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %222 = load i64, ptr %i, align 8, !tbaa !7
  %223 = load i64, ptr %f, align 8, !tbaa !7
  %add192 = add nsw i64 %222, %223
  %224 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul193 = mul nsw i64 %add192, %224
  %add.ptr194 = getelementptr inbounds %struct.scomplex, ptr %221, i64 %mul193
  %225 = load i64, ptr %i, align 8, !tbaa !7
  %226 = load i64, ptr %cs_at, align 8, !tbaa !7
  %mul195 = mul nsw i64 %225, %226
  %add.ptr196 = getelementptr inbounds %struct.scomplex, ptr %add.ptr194, i64 %mul195
  store ptr %add.ptr196, ptr %A21, align 8, !tbaa !9
  %227 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %228 = load i64, ptr %i, align 8, !tbaa !7
  %229 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul197 = mul nsw i64 %228, %229
  %add.ptr198 = getelementptr inbounds %struct.scomplex, ptr %227, i64 %mul197
  store ptr %add.ptr198, ptr %x1, align 8, !tbaa !9
  %230 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %231 = load i64, ptr %i, align 8, !tbaa !7
  %232 = load i64, ptr %f, align 8, !tbaa !7
  %add199 = add nsw i64 %231, %232
  %233 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul200 = mul nsw i64 %add199, %233
  %add.ptr201 = getelementptr inbounds %struct.scomplex, ptr %230, i64 %mul200
  store ptr %add.ptr201, ptr %x2, align 8, !tbaa !9
  %234 = load ptr, ptr %kfp_af, align 8, !tbaa !9
  %235 = load i32, ptr %conja, align 4, !tbaa !4
  %236 = load i64, ptr %n_behind, align 8, !tbaa !7
  %237 = load i64, ptr %f, align 8, !tbaa !7
  %238 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %239 = load ptr, ptr %A21, align 8, !tbaa !9
  %240 = load i64, ptr %rs_at, align 8, !tbaa !7
  %241 = load i64, ptr %cs_at, align 8, !tbaa !7
  %242 = load ptr, ptr %x1, align 8, !tbaa !9
  %243 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %244 = load ptr, ptr %x2, align 8, !tbaa !9
  %245 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %246 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %234(i32 noundef %235, i32 noundef 0, i64 noundef %236, i64 noundef %237, ptr noundef %238, ptr noundef %239, i64 noundef %240, i64 noundef %241, ptr noundef %242, i64 noundef %243, ptr noundef %244, i64 noundef %245, ptr noundef %246)
  store i64 0, ptr %k, align 8, !tbaa !7
  br label %for.cond202

for.cond202:                                      ; preds = %for.inc374, %for.body185
  %247 = load i64, ptr %k, align 8, !tbaa !7
  %248 = load i64, ptr %f, align 8, !tbaa !7
  %cmp203 = icmp slt i64 %247, %248
  br i1 %cmp203, label %for.body204, label %for.end376

for.body204:                                      ; preds = %for.cond202
  %249 = load i64, ptr %f, align 8, !tbaa !7
  %250 = load i64, ptr %k, align 8, !tbaa !7
  %sub205 = sub nsw i64 %249, %250
  %sub206 = sub nsw i64 %sub205, 1
  store i64 %sub206, ptr %l, align 8, !tbaa !7
  %251 = load i64, ptr %k, align 8, !tbaa !7
  store i64 %251, ptr %f_behind, align 8, !tbaa !7
  %252 = load ptr, ptr %A11, align 8, !tbaa !9
  %253 = load i64, ptr %l, align 8, !tbaa !7
  %254 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul207 = mul nsw i64 %253, %254
  %add.ptr208 = getelementptr inbounds %struct.scomplex, ptr %252, i64 %mul207
  %255 = load i64, ptr %l, align 8, !tbaa !7
  %256 = load i64, ptr %cs_at, align 8, !tbaa !7
  %mul209 = mul nsw i64 %255, %256
  %add.ptr210 = getelementptr inbounds %struct.scomplex, ptr %add.ptr208, i64 %mul209
  store ptr %add.ptr210, ptr %alpha11, align 8, !tbaa !9
  %257 = load ptr, ptr %A11, align 8, !tbaa !9
  %258 = load i64, ptr %l, align 8, !tbaa !7
  %add211 = add nsw i64 %258, 1
  %259 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul212 = mul nsw i64 %add211, %259
  %add.ptr213 = getelementptr inbounds %struct.scomplex, ptr %257, i64 %mul212
  %260 = load i64, ptr %l, align 8, !tbaa !7
  %261 = load i64, ptr %cs_at, align 8, !tbaa !7
  %mul214 = mul nsw i64 %260, %261
  %add.ptr215 = getelementptr inbounds %struct.scomplex, ptr %add.ptr213, i64 %mul214
  store ptr %add.ptr215, ptr %a21, align 8, !tbaa !9
  %262 = load ptr, ptr %x1, align 8, !tbaa !9
  %263 = load i64, ptr %l, align 8, !tbaa !7
  %264 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul216 = mul nsw i64 %263, %264
  %add.ptr217 = getelementptr inbounds %struct.scomplex, ptr %262, i64 %mul216
  store ptr %add.ptr217, ptr %chi11, align 8, !tbaa !9
  %265 = load ptr, ptr %x1, align 8, !tbaa !9
  %266 = load i64, ptr %l, align 8, !tbaa !7
  %add218 = add nsw i64 %266, 1
  %267 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul219 = mul nsw i64 %add218, %267
  %add.ptr220 = getelementptr inbounds %struct.scomplex, ptr %265, i64 %mul219
  store ptr %add.ptr220, ptr %x21, align 8, !tbaa !9
  %268 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %real221 = getelementptr inbounds %struct.scomplex, ptr %268, i32 0, i32 0
  %269 = load float, ptr %real221, align 4, !tbaa !15
  %270 = load ptr, ptr %chi11, align 8, !tbaa !9
  %real222 = getelementptr inbounds %struct.scomplex, ptr %270, i32 0, i32 0
  %271 = load float, ptr %real222, align 4, !tbaa !15
  %272 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag224 = getelementptr inbounds %struct.scomplex, ptr %272, i32 0, i32 1
  %273 = load float, ptr %imag224, align 4, !tbaa !17
  %274 = load ptr, ptr %chi11, align 8, !tbaa !9
  %imag225 = getelementptr inbounds %struct.scomplex, ptr %274, i32 0, i32 1
  %275 = load float, ptr %imag225, align 4, !tbaa !17
  %mul226 = fmul float %273, %275
  %neg227 = fneg float %mul226
  %276 = call float @llvm.fmuladd.f32(float %269, float %271, float %neg227)
  %real228 = getelementptr inbounds %struct.scomplex, ptr %alpha_chi11, i32 0, i32 0
  store float %276, ptr %real228, align 4, !tbaa !15
  %277 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag229 = getelementptr inbounds %struct.scomplex, ptr %277, i32 0, i32 1
  %278 = load float, ptr %imag229, align 4, !tbaa !17
  %279 = load ptr, ptr %chi11, align 8, !tbaa !9
  %real230 = getelementptr inbounds %struct.scomplex, ptr %279, i32 0, i32 0
  %280 = load float, ptr %real230, align 4, !tbaa !15
  %281 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %real232 = getelementptr inbounds %struct.scomplex, ptr %281, i32 0, i32 0
  %282 = load float, ptr %real232, align 4, !tbaa !15
  %283 = load ptr, ptr %chi11, align 8, !tbaa !9
  %imag233 = getelementptr inbounds %struct.scomplex, ptr %283, i32 0, i32 1
  %284 = load float, ptr %imag233, align 4, !tbaa !17
  %mul234 = fmul float %282, %284
  %285 = call float @llvm.fmuladd.f32(float %278, float %280, float %mul234)
  %imag235 = getelementptr inbounds %struct.scomplex, ptr %alpha_chi11, i32 0, i32 1
  store float %285, ptr %imag235, align 4, !tbaa !17
  %286 = load i32, ptr %conja, align 4, !tbaa !4
  %call236 = call zeroext i1 @bli_is_conj(i32 noundef %286)
  br i1 %call236, label %if.then237, label %if.else273

if.then237:                                       ; preds = %for.body204
  store i64 0, ptr %j, align 8, !tbaa !7
  br label %for.cond238

for.cond238:                                      ; preds = %for.inc270, %if.then237
  %287 = load i64, ptr %j, align 8, !tbaa !7
  %288 = load i64, ptr %f_behind, align 8, !tbaa !7
  %cmp239 = icmp slt i64 %287, %288
  br i1 %cmp239, label %for.body240, label %for.end272

for.body240:                                      ; preds = %for.cond238
  %real241 = getelementptr inbounds %struct.scomplex, ptr %alpha_chi11, i32 0, i32 0
  %289 = load float, ptr %real241, align 4, !tbaa !15
  %290 = load ptr, ptr %a21, align 8, !tbaa !9
  %291 = load i64, ptr %j, align 8, !tbaa !7
  %292 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul242 = mul nsw i64 %291, %292
  %add.ptr243 = getelementptr inbounds %struct.scomplex, ptr %290, i64 %mul242
  %real244 = getelementptr inbounds %struct.scomplex, ptr %add.ptr243, i32 0, i32 0
  %293 = load float, ptr %real244, align 4, !tbaa !15
  %imag246 = getelementptr inbounds %struct.scomplex, ptr %alpha_chi11, i32 0, i32 1
  %294 = load float, ptr %imag246, align 4, !tbaa !17
  %295 = load ptr, ptr %a21, align 8, !tbaa !9
  %296 = load i64, ptr %j, align 8, !tbaa !7
  %297 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul247 = mul nsw i64 %296, %297
  %add.ptr248 = getelementptr inbounds %struct.scomplex, ptr %295, i64 %mul247
  %imag249 = getelementptr inbounds %struct.scomplex, ptr %add.ptr248, i32 0, i32 1
  %298 = load float, ptr %imag249, align 4, !tbaa !17
  %mul250 = fmul float %294, %298
  %299 = call float @llvm.fmuladd.f32(float %289, float %293, float %mul250)
  %300 = load ptr, ptr %x21, align 8, !tbaa !9
  %301 = load i64, ptr %j, align 8, !tbaa !7
  %302 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul251 = mul nsw i64 %301, %302
  %add.ptr252 = getelementptr inbounds %struct.scomplex, ptr %300, i64 %mul251
  %real253 = getelementptr inbounds %struct.scomplex, ptr %add.ptr252, i32 0, i32 0
  %303 = load float, ptr %real253, align 4, !tbaa !15
  %add254 = fadd float %303, %299
  store float %add254, ptr %real253, align 4, !tbaa !15
  %imag255 = getelementptr inbounds %struct.scomplex, ptr %alpha_chi11, i32 0, i32 1
  %304 = load float, ptr %imag255, align 4, !tbaa !17
  %305 = load ptr, ptr %a21, align 8, !tbaa !9
  %306 = load i64, ptr %j, align 8, !tbaa !7
  %307 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul256 = mul nsw i64 %306, %307
  %add.ptr257 = getelementptr inbounds %struct.scomplex, ptr %305, i64 %mul256
  %real258 = getelementptr inbounds %struct.scomplex, ptr %add.ptr257, i32 0, i32 0
  %308 = load float, ptr %real258, align 4, !tbaa !15
  %real260 = getelementptr inbounds %struct.scomplex, ptr %alpha_chi11, i32 0, i32 0
  %309 = load float, ptr %real260, align 4, !tbaa !15
  %310 = load ptr, ptr %a21, align 8, !tbaa !9
  %311 = load i64, ptr %j, align 8, !tbaa !7
  %312 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul261 = mul nsw i64 %311, %312
  %add.ptr262 = getelementptr inbounds %struct.scomplex, ptr %310, i64 %mul261
  %imag263 = getelementptr inbounds %struct.scomplex, ptr %add.ptr262, i32 0, i32 1
  %313 = load float, ptr %imag263, align 4, !tbaa !17
  %mul264 = fmul float %309, %313
  %neg265 = fneg float %mul264
  %314 = call float @llvm.fmuladd.f32(float %304, float %308, float %neg265)
  %315 = load ptr, ptr %x21, align 8, !tbaa !9
  %316 = load i64, ptr %j, align 8, !tbaa !7
  %317 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul266 = mul nsw i64 %316, %317
  %add.ptr267 = getelementptr inbounds %struct.scomplex, ptr %315, i64 %mul266
  %imag268 = getelementptr inbounds %struct.scomplex, ptr %add.ptr267, i32 0, i32 1
  %318 = load float, ptr %imag268, align 4, !tbaa !17
  %add269 = fadd float %318, %314
  store float %add269, ptr %imag268, align 4, !tbaa !17
  br label %for.inc270

for.inc270:                                       ; preds = %for.body240
  %319 = load i64, ptr %j, align 8, !tbaa !7
  %inc271 = add nsw i64 %319, 1
  store i64 %inc271, ptr %j, align 8, !tbaa !7
  br label %for.cond238

for.end272:                                       ; preds = %for.cond238
  br label %if.end309

if.else273:                                       ; preds = %for.body204
  store i64 0, ptr %j, align 8, !tbaa !7
  br label %for.cond274

for.cond274:                                      ; preds = %for.inc306, %if.else273
  %320 = load i64, ptr %j, align 8, !tbaa !7
  %321 = load i64, ptr %f_behind, align 8, !tbaa !7
  %cmp275 = icmp slt i64 %320, %321
  br i1 %cmp275, label %for.body276, label %for.end308

for.body276:                                      ; preds = %for.cond274
  %real277 = getelementptr inbounds %struct.scomplex, ptr %alpha_chi11, i32 0, i32 0
  %322 = load float, ptr %real277, align 4, !tbaa !15
  %323 = load ptr, ptr %a21, align 8, !tbaa !9
  %324 = load i64, ptr %j, align 8, !tbaa !7
  %325 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul278 = mul nsw i64 %324, %325
  %add.ptr279 = getelementptr inbounds %struct.scomplex, ptr %323, i64 %mul278
  %real280 = getelementptr inbounds %struct.scomplex, ptr %add.ptr279, i32 0, i32 0
  %326 = load float, ptr %real280, align 4, !tbaa !15
  %imag282 = getelementptr inbounds %struct.scomplex, ptr %alpha_chi11, i32 0, i32 1
  %327 = load float, ptr %imag282, align 4, !tbaa !17
  %328 = load ptr, ptr %a21, align 8, !tbaa !9
  %329 = load i64, ptr %j, align 8, !tbaa !7
  %330 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul283 = mul nsw i64 %329, %330
  %add.ptr284 = getelementptr inbounds %struct.scomplex, ptr %328, i64 %mul283
  %imag285 = getelementptr inbounds %struct.scomplex, ptr %add.ptr284, i32 0, i32 1
  %331 = load float, ptr %imag285, align 4, !tbaa !17
  %mul286 = fmul float %327, %331
  %neg287 = fneg float %mul286
  %332 = call float @llvm.fmuladd.f32(float %322, float %326, float %neg287)
  %333 = load ptr, ptr %x21, align 8, !tbaa !9
  %334 = load i64, ptr %j, align 8, !tbaa !7
  %335 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul288 = mul nsw i64 %334, %335
  %add.ptr289 = getelementptr inbounds %struct.scomplex, ptr %333, i64 %mul288
  %real290 = getelementptr inbounds %struct.scomplex, ptr %add.ptr289, i32 0, i32 0
  %336 = load float, ptr %real290, align 4, !tbaa !15
  %add291 = fadd float %336, %332
  store float %add291, ptr %real290, align 4, !tbaa !15
  %imag292 = getelementptr inbounds %struct.scomplex, ptr %alpha_chi11, i32 0, i32 1
  %337 = load float, ptr %imag292, align 4, !tbaa !17
  %338 = load ptr, ptr %a21, align 8, !tbaa !9
  %339 = load i64, ptr %j, align 8, !tbaa !7
  %340 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul293 = mul nsw i64 %339, %340
  %add.ptr294 = getelementptr inbounds %struct.scomplex, ptr %338, i64 %mul293
  %real295 = getelementptr inbounds %struct.scomplex, ptr %add.ptr294, i32 0, i32 0
  %341 = load float, ptr %real295, align 4, !tbaa !15
  %real297 = getelementptr inbounds %struct.scomplex, ptr %alpha_chi11, i32 0, i32 0
  %342 = load float, ptr %real297, align 4, !tbaa !15
  %343 = load ptr, ptr %a21, align 8, !tbaa !9
  %344 = load i64, ptr %j, align 8, !tbaa !7
  %345 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul298 = mul nsw i64 %344, %345
  %add.ptr299 = getelementptr inbounds %struct.scomplex, ptr %343, i64 %mul298
  %imag300 = getelementptr inbounds %struct.scomplex, ptr %add.ptr299, i32 0, i32 1
  %346 = load float, ptr %imag300, align 4, !tbaa !17
  %mul301 = fmul float %342, %346
  %347 = call float @llvm.fmuladd.f32(float %337, float %341, float %mul301)
  %348 = load ptr, ptr %x21, align 8, !tbaa !9
  %349 = load i64, ptr %j, align 8, !tbaa !7
  %350 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul302 = mul nsw i64 %349, %350
  %add.ptr303 = getelementptr inbounds %struct.scomplex, ptr %348, i64 %mul302
  %imag304 = getelementptr inbounds %struct.scomplex, ptr %add.ptr303, i32 0, i32 1
  %351 = load float, ptr %imag304, align 4, !tbaa !17
  %add305 = fadd float %351, %347
  store float %add305, ptr %imag304, align 4, !tbaa !17
  br label %for.inc306

for.inc306:                                       ; preds = %for.body276
  %352 = load i64, ptr %j, align 8, !tbaa !7
  %inc307 = add nsw i64 %352, 1
  store i64 %inc307, ptr %j, align 8, !tbaa !7
  br label %for.cond274

for.end308:                                       ; preds = %for.cond274
  br label %if.end309

if.end309:                                        ; preds = %for.end308, %for.end272
  %353 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %real310 = getelementptr inbounds %struct.scomplex, ptr %353, i32 0, i32 0
  %354 = load float, ptr %real310, align 4, !tbaa !15
  %real311 = getelementptr inbounds %struct.scomplex, ptr %alpha_alpha11_conj, i32 0, i32 0
  store float %354, ptr %real311, align 4, !tbaa !15
  %355 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag312 = getelementptr inbounds %struct.scomplex, ptr %355, i32 0, i32 1
  %356 = load float, ptr %imag312, align 4, !tbaa !17
  %imag313 = getelementptr inbounds %struct.scomplex, ptr %alpha_alpha11_conj, i32 0, i32 1
  store float %356, ptr %imag313, align 4, !tbaa !17
  %357 = load i32, ptr %diaga.addr, align 4, !tbaa !4
  %call314 = call zeroext i1 @bli_is_nonunit_diag(i32 noundef %357)
  br i1 %call314, label %if.then315, label %if.end356

if.then315:                                       ; preds = %if.end309
  %358 = load i32, ptr %conja, align 4, !tbaa !4
  %call316 = call zeroext i1 @bli_is_conj(i32 noundef %358)
  br i1 %call316, label %if.then317, label %if.else337

if.then317:                                       ; preds = %if.then315
  call void @llvm.lifetime.start.p0(i64 4, ptr %yr318) #3
  %359 = load ptr, ptr %alpha11, align 8, !tbaa !9
  %real319 = getelementptr inbounds %struct.scomplex, ptr %359, i32 0, i32 0
  %360 = load float, ptr %real319, align 4, !tbaa !15
  %real320 = getelementptr inbounds %struct.scomplex, ptr %alpha_alpha11_conj, i32 0, i32 0
  %361 = load float, ptr %real320, align 4, !tbaa !15
  %362 = load ptr, ptr %alpha11, align 8, !tbaa !9
  %imag322 = getelementptr inbounds %struct.scomplex, ptr %362, i32 0, i32 1
  %363 = load float, ptr %imag322, align 4, !tbaa !17
  %fneg323 = fneg float %363
  %imag324 = getelementptr inbounds %struct.scomplex, ptr %alpha_alpha11_conj, i32 0, i32 1
  %364 = load float, ptr %imag324, align 4, !tbaa !17
  %mul325 = fmul float %fneg323, %364
  %neg326 = fneg float %mul325
  %365 = call float @llvm.fmuladd.f32(float %360, float %361, float %neg326)
  store float %365, ptr %yr318, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %yi327) #3
  %366 = load ptr, ptr %alpha11, align 8, !tbaa !9
  %imag328 = getelementptr inbounds %struct.scomplex, ptr %366, i32 0, i32 1
  %367 = load float, ptr %imag328, align 4, !tbaa !17
  %fneg329 = fneg float %367
  %real330 = getelementptr inbounds %struct.scomplex, ptr %alpha_alpha11_conj, i32 0, i32 0
  %368 = load float, ptr %real330, align 4, !tbaa !15
  %369 = load ptr, ptr %alpha11, align 8, !tbaa !9
  %real332 = getelementptr inbounds %struct.scomplex, ptr %369, i32 0, i32 0
  %370 = load float, ptr %real332, align 4, !tbaa !15
  %imag333 = getelementptr inbounds %struct.scomplex, ptr %alpha_alpha11_conj, i32 0, i32 1
  %371 = load float, ptr %imag333, align 4, !tbaa !17
  %mul334 = fmul float %370, %371
  %372 = call float @llvm.fmuladd.f32(float %fneg329, float %368, float %mul334)
  store float %372, ptr %yi327, align 4, !tbaa !11
  %373 = load float, ptr %yr318, align 4, !tbaa !11
  %real335 = getelementptr inbounds %struct.scomplex, ptr %alpha_alpha11_conj, i32 0, i32 0
  store float %373, ptr %real335, align 4, !tbaa !15
  %374 = load float, ptr %yi327, align 4, !tbaa !11
  %imag336 = getelementptr inbounds %struct.scomplex, ptr %alpha_alpha11_conj, i32 0, i32 1
  store float %374, ptr %imag336, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 4, ptr %yi327) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %yr318) #3
  br label %if.end355

if.else337:                                       ; preds = %if.then315
  call void @llvm.lifetime.start.p0(i64 4, ptr %yr338) #3
  %375 = load ptr, ptr %alpha11, align 8, !tbaa !9
  %real339 = getelementptr inbounds %struct.scomplex, ptr %375, i32 0, i32 0
  %376 = load float, ptr %real339, align 4, !tbaa !15
  %real340 = getelementptr inbounds %struct.scomplex, ptr %alpha_alpha11_conj, i32 0, i32 0
  %377 = load float, ptr %real340, align 4, !tbaa !15
  %378 = load ptr, ptr %alpha11, align 8, !tbaa !9
  %imag342 = getelementptr inbounds %struct.scomplex, ptr %378, i32 0, i32 1
  %379 = load float, ptr %imag342, align 4, !tbaa !17
  %imag343 = getelementptr inbounds %struct.scomplex, ptr %alpha_alpha11_conj, i32 0, i32 1
  %380 = load float, ptr %imag343, align 4, !tbaa !17
  %mul344 = fmul float %379, %380
  %neg345 = fneg float %mul344
  %381 = call float @llvm.fmuladd.f32(float %376, float %377, float %neg345)
  store float %381, ptr %yr338, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %yi346) #3
  %382 = load ptr, ptr %alpha11, align 8, !tbaa !9
  %imag347 = getelementptr inbounds %struct.scomplex, ptr %382, i32 0, i32 1
  %383 = load float, ptr %imag347, align 4, !tbaa !17
  %real348 = getelementptr inbounds %struct.scomplex, ptr %alpha_alpha11_conj, i32 0, i32 0
  %384 = load float, ptr %real348, align 4, !tbaa !15
  %385 = load ptr, ptr %alpha11, align 8, !tbaa !9
  %real350 = getelementptr inbounds %struct.scomplex, ptr %385, i32 0, i32 0
  %386 = load float, ptr %real350, align 4, !tbaa !15
  %imag351 = getelementptr inbounds %struct.scomplex, ptr %alpha_alpha11_conj, i32 0, i32 1
  %387 = load float, ptr %imag351, align 4, !tbaa !17
  %mul352 = fmul float %386, %387
  %388 = call float @llvm.fmuladd.f32(float %383, float %384, float %mul352)
  store float %388, ptr %yi346, align 4, !tbaa !11
  %389 = load float, ptr %yr338, align 4, !tbaa !11
  %real353 = getelementptr inbounds %struct.scomplex, ptr %alpha_alpha11_conj, i32 0, i32 0
  store float %389, ptr %real353, align 4, !tbaa !15
  %390 = load float, ptr %yi346, align 4, !tbaa !11
  %imag354 = getelementptr inbounds %struct.scomplex, ptr %alpha_alpha11_conj, i32 0, i32 1
  store float %390, ptr %imag354, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 4, ptr %yi346) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %yr338) #3
  br label %if.end355

if.end355:                                        ; preds = %if.else337, %if.then317
  br label %if.end356

if.end356:                                        ; preds = %if.end355, %if.end309
  call void @llvm.lifetime.start.p0(i64 4, ptr %yr357) #3
  %real358 = getelementptr inbounds %struct.scomplex, ptr %alpha_alpha11_conj, i32 0, i32 0
  %391 = load float, ptr %real358, align 4, !tbaa !15
  %392 = load ptr, ptr %chi11, align 8, !tbaa !9
  %real359 = getelementptr inbounds %struct.scomplex, ptr %392, i32 0, i32 0
  %393 = load float, ptr %real359, align 4, !tbaa !15
  %imag361 = getelementptr inbounds %struct.scomplex, ptr %alpha_alpha11_conj, i32 0, i32 1
  %394 = load float, ptr %imag361, align 4, !tbaa !17
  %395 = load ptr, ptr %chi11, align 8, !tbaa !9
  %imag362 = getelementptr inbounds %struct.scomplex, ptr %395, i32 0, i32 1
  %396 = load float, ptr %imag362, align 4, !tbaa !17
  %mul363 = fmul float %394, %396
  %neg364 = fneg float %mul363
  %397 = call float @llvm.fmuladd.f32(float %391, float %393, float %neg364)
  store float %397, ptr %yr357, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %yi365) #3
  %imag366 = getelementptr inbounds %struct.scomplex, ptr %alpha_alpha11_conj, i32 0, i32 1
  %398 = load float, ptr %imag366, align 4, !tbaa !17
  %399 = load ptr, ptr %chi11, align 8, !tbaa !9
  %real367 = getelementptr inbounds %struct.scomplex, ptr %399, i32 0, i32 0
  %400 = load float, ptr %real367, align 4, !tbaa !15
  %real369 = getelementptr inbounds %struct.scomplex, ptr %alpha_alpha11_conj, i32 0, i32 0
  %401 = load float, ptr %real369, align 4, !tbaa !15
  %402 = load ptr, ptr %chi11, align 8, !tbaa !9
  %imag370 = getelementptr inbounds %struct.scomplex, ptr %402, i32 0, i32 1
  %403 = load float, ptr %imag370, align 4, !tbaa !17
  %mul371 = fmul float %401, %403
  %404 = call float @llvm.fmuladd.f32(float %398, float %400, float %mul371)
  store float %404, ptr %yi365, align 4, !tbaa !11
  %405 = load float, ptr %yr357, align 4, !tbaa !11
  %406 = load ptr, ptr %chi11, align 8, !tbaa !9
  %real372 = getelementptr inbounds %struct.scomplex, ptr %406, i32 0, i32 0
  store float %405, ptr %real372, align 4, !tbaa !15
  %407 = load float, ptr %yi365, align 4, !tbaa !11
  %408 = load ptr, ptr %chi11, align 8, !tbaa !9
  %imag373 = getelementptr inbounds %struct.scomplex, ptr %408, i32 0, i32 1
  store float %407, ptr %imag373, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 4, ptr %yi365) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %yr357) #3
  br label %for.inc374

for.inc374:                                       ; preds = %if.end356
  %409 = load i64, ptr %k, align 8, !tbaa !7
  %inc375 = add nsw i64 %409, 1
  store i64 %inc375, ptr %k, align 8, !tbaa !7
  br label %for.cond202

for.end376:                                       ; preds = %for.cond202
  br label %for.inc377

for.inc377:                                       ; preds = %for.end376
  %410 = load i64, ptr %f, align 8, !tbaa !7
  %411 = load i64, ptr %iter, align 8, !tbaa !7
  %add378 = add nsw i64 %411, %410
  store i64 %add378, ptr %iter, align 8, !tbaa !7
  br label %for.cond183

for.end379:                                       ; preds = %for.cond183
  br label %if.end380

if.end380:                                        ; preds = %for.end379, %for.end181
  call void @llvm.lifetime.end.p0(i64 8, ptr %kfp_af) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %conja) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uploa_trans) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %cs_at) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %rs_at) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %f_behind) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_behind) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_fuse) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %l) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha_chi11) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha_alpha11_conj) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x21) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi11) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x01) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x2) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a21) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha11) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a01) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %A21) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %A11) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %A01) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @bli_ztrmv_unf_var2(i32 noundef %uploa, i32 noundef %transa, i32 noundef %diaga, i64 noundef %m, ptr noundef %alpha, ptr noundef %a, i64 noundef %rs_a, i64 noundef %cs_a, ptr noundef %x, i64 noundef %incx, ptr noundef %cntx) #0 {
entry:
  %uploa.addr = alloca i32, align 4
  %transa.addr = alloca i32, align 4
  %diaga.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %alpha.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %rs_a.addr = alloca i64, align 8
  %cs_a.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %A01 = alloca ptr, align 8
  %A11 = alloca ptr, align 8
  %A21 = alloca ptr, align 8
  %a01 = alloca ptr, align 8
  %alpha11 = alloca ptr, align 8
  %a21 = alloca ptr, align 8
  %x0 = alloca ptr, align 8
  %x1 = alloca ptr, align 8
  %x2 = alloca ptr, align 8
  %x01 = alloca ptr, align 8
  %chi11 = alloca ptr, align 8
  %x21 = alloca ptr, align 8
  %alpha_alpha11_conj = alloca %struct.dcomplex, align 8
  %alpha_chi11 = alloca %struct.dcomplex, align 8
  %iter = alloca i64, align 8
  %i = alloca i64, align 8
  %k = alloca i64, align 8
  %j = alloca i64, align 8
  %l = alloca i64, align 8
  %b_fuse = alloca i64, align 8
  %f = alloca i64, align 8
  %n_behind = alloca i64, align 8
  %f_behind = alloca i64, align 8
  %rs_at = alloca i64, align 8
  %cs_at = alloca i64, align 8
  %uploa_trans = alloca i32, align 4
  %conja = alloca i32, align 4
  %kfp_af = alloca ptr, align 8
  %yr = alloca double, align 8
  %yi = alloca double, align 8
  %yr140 = alloca double, align 8
  %yi148 = alloca double, align 8
  %yr159 = alloca double, align 8
  %yi167 = alloca double, align 8
  %yr318 = alloca double, align 8
  %yi327 = alloca double, align 8
  %yr338 = alloca double, align 8
  %yi346 = alloca double, align 8
  %yr357 = alloca double, align 8
  %yi365 = alloca double, align 8
  store i32 %uploa, ptr %uploa.addr, align 4, !tbaa !4
  store i32 %transa, ptr %transa.addr, align 4, !tbaa !4
  store i32 %diaga, ptr %diaga.addr, align 4, !tbaa !4
  store i64 %m, ptr %m.addr, align 8, !tbaa !7
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !9
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store i64 %rs_a, ptr %rs_a.addr, align 8, !tbaa !7
  store i64 %cs_a, ptr %cs_a.addr, align 8, !tbaa !7
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %incx, ptr %incx.addr, align 8, !tbaa !7
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  store i32 3, ptr %dt, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %A01) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %A11) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %A21) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %a01) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha11) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %a21) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %x0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %x2) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %x01) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi11) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %x21) #3
  call void @llvm.lifetime.start.p0(i64 16, ptr %alpha_alpha11_conj) #3
  call void @llvm.lifetime.start.p0(i64 16, ptr %alpha_chi11) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %l) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_fuse) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_behind) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %f_behind) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %rs_at) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %cs_at) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %uploa_trans) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %conja) #3
  %0 = load i32, ptr %transa.addr, align 4, !tbaa !4
  %call = call zeroext i1 @bli_does_notrans(i32 noundef %0)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %rs_a.addr, align 8, !tbaa !7
  store i64 %1, ptr %rs_at, align 8, !tbaa !7
  %2 = load i64, ptr %cs_a.addr, align 8, !tbaa !7
  store i64 %2, ptr %cs_at, align 8, !tbaa !7
  %3 = load i32, ptr %uploa.addr, align 4, !tbaa !4
  store i32 %3, ptr %uploa_trans, align 4, !tbaa !4
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i64, ptr %cs_a.addr, align 8, !tbaa !7
  store i64 %4, ptr %rs_at, align 8, !tbaa !7
  %5 = load i64, ptr %rs_a.addr, align 8, !tbaa !7
  store i64 %5, ptr %cs_at, align 8, !tbaa !7
  %6 = load i32, ptr %uploa.addr, align 4, !tbaa !4
  %call1 = call i32 @bli_uplo_toggled(i32 noundef %6)
  store i32 %call1, ptr %uploa_trans, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i32, ptr %transa.addr, align 4, !tbaa !4
  %call2 = call i32 @bli_extract_conj(i32 noundef %7)
  store i32 %call2, ptr %conja, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %kfp_af) #3
  %8 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call3 = call ptr @bli_cntx_get_l1f_ker_dt(i32 noundef 3, i32 noundef 2, ptr noundef %8)
  store ptr %call3, ptr %kfp_af, align 8, !tbaa !9
  %9 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call4 = call i64 @bli_cntx_get_blksz_def_dt(i32 noundef 3, i32 noundef 8, ptr noundef %9)
  store i64 %call4, ptr %b_fuse, align 8, !tbaa !7
  %10 = load i32, ptr %uploa_trans, align 4, !tbaa !4
  %call5 = call zeroext i1 @bli_is_upper(i32 noundef %10)
  br i1 %call5, label %if.then6, label %if.else182

if.then6:                                         ; preds = %if.end
  store i64 0, ptr %iter, align 8, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc179, %if.then6
  %11 = load i64, ptr %iter, align 8, !tbaa !7
  %12 = load i64, ptr %m.addr, align 8, !tbaa !7
  %cmp = icmp slt i64 %11, %12
  br i1 %cmp, label %for.body, label %for.end181

for.body:                                         ; preds = %for.cond
  %13 = load i64, ptr %iter, align 8, !tbaa !7
  %14 = load i64, ptr %m.addr, align 8, !tbaa !7
  %15 = load i64, ptr %b_fuse, align 8, !tbaa !7
  %call7 = call i64 @bli_determine_blocksize_dim_f(i64 noundef %13, i64 noundef %14, i64 noundef %15)
  store i64 %call7, ptr %f, align 8, !tbaa !7
  %16 = load i64, ptr %iter, align 8, !tbaa !7
  store i64 %16, ptr %i, align 8, !tbaa !7
  %17 = load i64, ptr %i, align 8, !tbaa !7
  store i64 %17, ptr %n_behind, align 8, !tbaa !7
  %18 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %19 = load i64, ptr %i, align 8, !tbaa !7
  %20 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul = mul nsw i64 %19, %20
  %add.ptr = getelementptr inbounds %struct.dcomplex, ptr %18, i64 %mul
  %21 = load i64, ptr %i, align 8, !tbaa !7
  %22 = load i64, ptr %cs_at, align 8, !tbaa !7
  %mul8 = mul nsw i64 %21, %22
  %add.ptr9 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr, i64 %mul8
  store ptr %add.ptr9, ptr %A11, align 8, !tbaa !9
  %23 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %24 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul10 = mul nsw i64 0, %24
  %add.ptr11 = getelementptr inbounds %struct.dcomplex, ptr %23, i64 %mul10
  %25 = load i64, ptr %i, align 8, !tbaa !7
  %26 = load i64, ptr %cs_at, align 8, !tbaa !7
  %mul12 = mul nsw i64 %25, %26
  %add.ptr13 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr11, i64 %mul12
  store ptr %add.ptr13, ptr %A01, align 8, !tbaa !9
  %27 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %28 = load i64, ptr %i, align 8, !tbaa !7
  %29 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul14 = mul nsw i64 %28, %29
  %add.ptr15 = getelementptr inbounds %struct.dcomplex, ptr %27, i64 %mul14
  store ptr %add.ptr15, ptr %x1, align 8, !tbaa !9
  %30 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %31 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul16 = mul nsw i64 0, %31
  %add.ptr17 = getelementptr inbounds %struct.dcomplex, ptr %30, i64 %mul16
  store ptr %add.ptr17, ptr %x0, align 8, !tbaa !9
  %32 = load ptr, ptr %kfp_af, align 8, !tbaa !9
  %33 = load i32, ptr %conja, align 4, !tbaa !4
  %34 = load i64, ptr %n_behind, align 8, !tbaa !7
  %35 = load i64, ptr %f, align 8, !tbaa !7
  %36 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %37 = load ptr, ptr %A01, align 8, !tbaa !9
  %38 = load i64, ptr %rs_at, align 8, !tbaa !7
  %39 = load i64, ptr %cs_at, align 8, !tbaa !7
  %40 = load ptr, ptr %x1, align 8, !tbaa !9
  %41 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %42 = load ptr, ptr %x0, align 8, !tbaa !9
  %43 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %44 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %32(i32 noundef %33, i32 noundef 0, i64 noundef %34, i64 noundef %35, ptr noundef %36, ptr noundef %37, i64 noundef %38, i64 noundef %39, ptr noundef %40, i64 noundef %41, ptr noundef %42, i64 noundef %43, ptr noundef %44)
  store i64 0, ptr %k, align 8, !tbaa !7
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc176, %for.body
  %45 = load i64, ptr %k, align 8, !tbaa !7
  %46 = load i64, ptr %f, align 8, !tbaa !7
  %cmp19 = icmp slt i64 %45, %46
  br i1 %cmp19, label %for.body20, label %for.end178

for.body20:                                       ; preds = %for.cond18
  %47 = load i64, ptr %k, align 8, !tbaa !7
  store i64 %47, ptr %l, align 8, !tbaa !7
  %48 = load i64, ptr %l, align 8, !tbaa !7
  store i64 %48, ptr %f_behind, align 8, !tbaa !7
  %49 = load ptr, ptr %A11, align 8, !tbaa !9
  %50 = load i64, ptr %l, align 8, !tbaa !7
  %51 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul21 = mul nsw i64 %50, %51
  %add.ptr22 = getelementptr inbounds %struct.dcomplex, ptr %49, i64 %mul21
  %52 = load i64, ptr %l, align 8, !tbaa !7
  %53 = load i64, ptr %cs_at, align 8, !tbaa !7
  %mul23 = mul nsw i64 %52, %53
  %add.ptr24 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr22, i64 %mul23
  store ptr %add.ptr24, ptr %alpha11, align 8, !tbaa !9
  %54 = load ptr, ptr %A11, align 8, !tbaa !9
  %55 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul25 = mul nsw i64 0, %55
  %add.ptr26 = getelementptr inbounds %struct.dcomplex, ptr %54, i64 %mul25
  %56 = load i64, ptr %l, align 8, !tbaa !7
  %57 = load i64, ptr %cs_at, align 8, !tbaa !7
  %mul27 = mul nsw i64 %56, %57
  %add.ptr28 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr26, i64 %mul27
  store ptr %add.ptr28, ptr %a01, align 8, !tbaa !9
  %58 = load ptr, ptr %x1, align 8, !tbaa !9
  %59 = load i64, ptr %l, align 8, !tbaa !7
  %60 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul29 = mul nsw i64 %59, %60
  %add.ptr30 = getelementptr inbounds %struct.dcomplex, ptr %58, i64 %mul29
  store ptr %add.ptr30, ptr %chi11, align 8, !tbaa !9
  %61 = load ptr, ptr %x1, align 8, !tbaa !9
  %62 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul31 = mul nsw i64 0, %62
  %add.ptr32 = getelementptr inbounds %struct.dcomplex, ptr %61, i64 %mul31
  store ptr %add.ptr32, ptr %x01, align 8, !tbaa !9
  %63 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %real = getelementptr inbounds %struct.dcomplex, ptr %63, i32 0, i32 0
  %64 = load double, ptr %real, align 8, !tbaa !18
  %65 = load ptr, ptr %chi11, align 8, !tbaa !9
  %real33 = getelementptr inbounds %struct.dcomplex, ptr %65, i32 0, i32 0
  %66 = load double, ptr %real33, align 8, !tbaa !18
  %67 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag = getelementptr inbounds %struct.dcomplex, ptr %67, i32 0, i32 1
  %68 = load double, ptr %imag, align 8, !tbaa !20
  %69 = load ptr, ptr %chi11, align 8, !tbaa !9
  %imag35 = getelementptr inbounds %struct.dcomplex, ptr %69, i32 0, i32 1
  %70 = load double, ptr %imag35, align 8, !tbaa !20
  %mul36 = fmul double %68, %70
  %neg = fneg double %mul36
  %71 = call double @llvm.fmuladd.f64(double %64, double %66, double %neg)
  %real37 = getelementptr inbounds %struct.dcomplex, ptr %alpha_chi11, i32 0, i32 0
  store double %71, ptr %real37, align 8, !tbaa !18
  %72 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag38 = getelementptr inbounds %struct.dcomplex, ptr %72, i32 0, i32 1
  %73 = load double, ptr %imag38, align 8, !tbaa !20
  %74 = load ptr, ptr %chi11, align 8, !tbaa !9
  %real39 = getelementptr inbounds %struct.dcomplex, ptr %74, i32 0, i32 0
  %75 = load double, ptr %real39, align 8, !tbaa !18
  %76 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %real41 = getelementptr inbounds %struct.dcomplex, ptr %76, i32 0, i32 0
  %77 = load double, ptr %real41, align 8, !tbaa !18
  %78 = load ptr, ptr %chi11, align 8, !tbaa !9
  %imag42 = getelementptr inbounds %struct.dcomplex, ptr %78, i32 0, i32 1
  %79 = load double, ptr %imag42, align 8, !tbaa !20
  %mul43 = fmul double %77, %79
  %80 = call double @llvm.fmuladd.f64(double %73, double %75, double %mul43)
  %imag44 = getelementptr inbounds %struct.dcomplex, ptr %alpha_chi11, i32 0, i32 1
  store double %80, ptr %imag44, align 8, !tbaa !20
  %81 = load i32, ptr %conja, align 4, !tbaa !4
  %call45 = call zeroext i1 @bli_is_conj(i32 noundef %81)
  br i1 %call45, label %if.then46, label %if.else78

if.then46:                                        ; preds = %for.body20
  store i64 0, ptr %j, align 8, !tbaa !7
  br label %for.cond47

for.cond47:                                       ; preds = %for.inc, %if.then46
  %82 = load i64, ptr %j, align 8, !tbaa !7
  %83 = load i64, ptr %f_behind, align 8, !tbaa !7
  %cmp48 = icmp slt i64 %82, %83
  br i1 %cmp48, label %for.body49, label %for.end

for.body49:                                       ; preds = %for.cond47
  %real50 = getelementptr inbounds %struct.dcomplex, ptr %alpha_chi11, i32 0, i32 0
  %84 = load double, ptr %real50, align 8, !tbaa !18
  %85 = load ptr, ptr %a01, align 8, !tbaa !9
  %86 = load i64, ptr %j, align 8, !tbaa !7
  %87 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul51 = mul nsw i64 %86, %87
  %add.ptr52 = getelementptr inbounds %struct.dcomplex, ptr %85, i64 %mul51
  %real53 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr52, i32 0, i32 0
  %88 = load double, ptr %real53, align 8, !tbaa !18
  %imag55 = getelementptr inbounds %struct.dcomplex, ptr %alpha_chi11, i32 0, i32 1
  %89 = load double, ptr %imag55, align 8, !tbaa !20
  %90 = load ptr, ptr %a01, align 8, !tbaa !9
  %91 = load i64, ptr %j, align 8, !tbaa !7
  %92 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul56 = mul nsw i64 %91, %92
  %add.ptr57 = getelementptr inbounds %struct.dcomplex, ptr %90, i64 %mul56
  %imag58 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr57, i32 0, i32 1
  %93 = load double, ptr %imag58, align 8, !tbaa !20
  %mul59 = fmul double %89, %93
  %94 = call double @llvm.fmuladd.f64(double %84, double %88, double %mul59)
  %95 = load ptr, ptr %x01, align 8, !tbaa !9
  %96 = load i64, ptr %j, align 8, !tbaa !7
  %97 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul60 = mul nsw i64 %96, %97
  %add.ptr61 = getelementptr inbounds %struct.dcomplex, ptr %95, i64 %mul60
  %real62 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr61, i32 0, i32 0
  %98 = load double, ptr %real62, align 8, !tbaa !18
  %add = fadd double %98, %94
  store double %add, ptr %real62, align 8, !tbaa !18
  %imag63 = getelementptr inbounds %struct.dcomplex, ptr %alpha_chi11, i32 0, i32 1
  %99 = load double, ptr %imag63, align 8, !tbaa !20
  %100 = load ptr, ptr %a01, align 8, !tbaa !9
  %101 = load i64, ptr %j, align 8, !tbaa !7
  %102 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul64 = mul nsw i64 %101, %102
  %add.ptr65 = getelementptr inbounds %struct.dcomplex, ptr %100, i64 %mul64
  %real66 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr65, i32 0, i32 0
  %103 = load double, ptr %real66, align 8, !tbaa !18
  %real68 = getelementptr inbounds %struct.dcomplex, ptr %alpha_chi11, i32 0, i32 0
  %104 = load double, ptr %real68, align 8, !tbaa !18
  %105 = load ptr, ptr %a01, align 8, !tbaa !9
  %106 = load i64, ptr %j, align 8, !tbaa !7
  %107 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul69 = mul nsw i64 %106, %107
  %add.ptr70 = getelementptr inbounds %struct.dcomplex, ptr %105, i64 %mul69
  %imag71 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr70, i32 0, i32 1
  %108 = load double, ptr %imag71, align 8, !tbaa !20
  %mul72 = fmul double %104, %108
  %neg73 = fneg double %mul72
  %109 = call double @llvm.fmuladd.f64(double %99, double %103, double %neg73)
  %110 = load ptr, ptr %x01, align 8, !tbaa !9
  %111 = load i64, ptr %j, align 8, !tbaa !7
  %112 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul74 = mul nsw i64 %111, %112
  %add.ptr75 = getelementptr inbounds %struct.dcomplex, ptr %110, i64 %mul74
  %imag76 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr75, i32 0, i32 1
  %113 = load double, ptr %imag76, align 8, !tbaa !20
  %add77 = fadd double %113, %109
  store double %add77, ptr %imag76, align 8, !tbaa !20
  br label %for.inc

for.inc:                                          ; preds = %for.body49
  %114 = load i64, ptr %j, align 8, !tbaa !7
  %inc = add nsw i64 %114, 1
  store i64 %inc, ptr %j, align 8, !tbaa !7
  br label %for.cond47

for.end:                                          ; preds = %for.cond47
  br label %if.end114

if.else78:                                        ; preds = %for.body20
  store i64 0, ptr %j, align 8, !tbaa !7
  br label %for.cond79

for.cond79:                                       ; preds = %for.inc111, %if.else78
  %115 = load i64, ptr %j, align 8, !tbaa !7
  %116 = load i64, ptr %f_behind, align 8, !tbaa !7
  %cmp80 = icmp slt i64 %115, %116
  br i1 %cmp80, label %for.body81, label %for.end113

for.body81:                                       ; preds = %for.cond79
  %real82 = getelementptr inbounds %struct.dcomplex, ptr %alpha_chi11, i32 0, i32 0
  %117 = load double, ptr %real82, align 8, !tbaa !18
  %118 = load ptr, ptr %a01, align 8, !tbaa !9
  %119 = load i64, ptr %j, align 8, !tbaa !7
  %120 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul83 = mul nsw i64 %119, %120
  %add.ptr84 = getelementptr inbounds %struct.dcomplex, ptr %118, i64 %mul83
  %real85 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr84, i32 0, i32 0
  %121 = load double, ptr %real85, align 8, !tbaa !18
  %imag87 = getelementptr inbounds %struct.dcomplex, ptr %alpha_chi11, i32 0, i32 1
  %122 = load double, ptr %imag87, align 8, !tbaa !20
  %123 = load ptr, ptr %a01, align 8, !tbaa !9
  %124 = load i64, ptr %j, align 8, !tbaa !7
  %125 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul88 = mul nsw i64 %124, %125
  %add.ptr89 = getelementptr inbounds %struct.dcomplex, ptr %123, i64 %mul88
  %imag90 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr89, i32 0, i32 1
  %126 = load double, ptr %imag90, align 8, !tbaa !20
  %mul91 = fmul double %122, %126
  %neg92 = fneg double %mul91
  %127 = call double @llvm.fmuladd.f64(double %117, double %121, double %neg92)
  %128 = load ptr, ptr %x01, align 8, !tbaa !9
  %129 = load i64, ptr %j, align 8, !tbaa !7
  %130 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul93 = mul nsw i64 %129, %130
  %add.ptr94 = getelementptr inbounds %struct.dcomplex, ptr %128, i64 %mul93
  %real95 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr94, i32 0, i32 0
  %131 = load double, ptr %real95, align 8, !tbaa !18
  %add96 = fadd double %131, %127
  store double %add96, ptr %real95, align 8, !tbaa !18
  %imag97 = getelementptr inbounds %struct.dcomplex, ptr %alpha_chi11, i32 0, i32 1
  %132 = load double, ptr %imag97, align 8, !tbaa !20
  %133 = load ptr, ptr %a01, align 8, !tbaa !9
  %134 = load i64, ptr %j, align 8, !tbaa !7
  %135 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul98 = mul nsw i64 %134, %135
  %add.ptr99 = getelementptr inbounds %struct.dcomplex, ptr %133, i64 %mul98
  %real100 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr99, i32 0, i32 0
  %136 = load double, ptr %real100, align 8, !tbaa !18
  %real102 = getelementptr inbounds %struct.dcomplex, ptr %alpha_chi11, i32 0, i32 0
  %137 = load double, ptr %real102, align 8, !tbaa !18
  %138 = load ptr, ptr %a01, align 8, !tbaa !9
  %139 = load i64, ptr %j, align 8, !tbaa !7
  %140 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul103 = mul nsw i64 %139, %140
  %add.ptr104 = getelementptr inbounds %struct.dcomplex, ptr %138, i64 %mul103
  %imag105 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr104, i32 0, i32 1
  %141 = load double, ptr %imag105, align 8, !tbaa !20
  %mul106 = fmul double %137, %141
  %142 = call double @llvm.fmuladd.f64(double %132, double %136, double %mul106)
  %143 = load ptr, ptr %x01, align 8, !tbaa !9
  %144 = load i64, ptr %j, align 8, !tbaa !7
  %145 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul107 = mul nsw i64 %144, %145
  %add.ptr108 = getelementptr inbounds %struct.dcomplex, ptr %143, i64 %mul107
  %imag109 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr108, i32 0, i32 1
  %146 = load double, ptr %imag109, align 8, !tbaa !20
  %add110 = fadd double %146, %142
  store double %add110, ptr %imag109, align 8, !tbaa !20
  br label %for.inc111

for.inc111:                                       ; preds = %for.body81
  %147 = load i64, ptr %j, align 8, !tbaa !7
  %inc112 = add nsw i64 %147, 1
  store i64 %inc112, ptr %j, align 8, !tbaa !7
  br label %for.cond79

for.end113:                                       ; preds = %for.cond79
  br label %if.end114

if.end114:                                        ; preds = %for.end113, %for.end
  %148 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %real115 = getelementptr inbounds %struct.dcomplex, ptr %148, i32 0, i32 0
  %149 = load double, ptr %real115, align 8, !tbaa !18
  %real116 = getelementptr inbounds %struct.dcomplex, ptr %alpha_alpha11_conj, i32 0, i32 0
  store double %149, ptr %real116, align 8, !tbaa !18
  %150 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag117 = getelementptr inbounds %struct.dcomplex, ptr %150, i32 0, i32 1
  %151 = load double, ptr %imag117, align 8, !tbaa !20
  %imag118 = getelementptr inbounds %struct.dcomplex, ptr %alpha_alpha11_conj, i32 0, i32 1
  store double %151, ptr %imag118, align 8, !tbaa !20
  %152 = load i32, ptr %diaga.addr, align 4, !tbaa !4
  %call119 = call zeroext i1 @bli_is_nonunit_diag(i32 noundef %152)
  br i1 %call119, label %if.then120, label %if.end158

if.then120:                                       ; preds = %if.end114
  %153 = load i32, ptr %conja, align 4, !tbaa !4
  %call121 = call zeroext i1 @bli_is_conj(i32 noundef %153)
  br i1 %call121, label %if.then122, label %if.else139

if.then122:                                       ; preds = %if.then120
  call void @llvm.lifetime.start.p0(i64 8, ptr %yr) #3
  %154 = load ptr, ptr %alpha11, align 8, !tbaa !9
  %real123 = getelementptr inbounds %struct.dcomplex, ptr %154, i32 0, i32 0
  %155 = load double, ptr %real123, align 8, !tbaa !18
  %real124 = getelementptr inbounds %struct.dcomplex, ptr %alpha_alpha11_conj, i32 0, i32 0
  %156 = load double, ptr %real124, align 8, !tbaa !18
  %157 = load ptr, ptr %alpha11, align 8, !tbaa !9
  %imag126 = getelementptr inbounds %struct.dcomplex, ptr %157, i32 0, i32 1
  %158 = load double, ptr %imag126, align 8, !tbaa !20
  %fneg = fneg double %158
  %imag127 = getelementptr inbounds %struct.dcomplex, ptr %alpha_alpha11_conj, i32 0, i32 1
  %159 = load double, ptr %imag127, align 8, !tbaa !20
  %mul128 = fmul double %fneg, %159
  %neg129 = fneg double %mul128
  %160 = call double @llvm.fmuladd.f64(double %155, double %156, double %neg129)
  store double %160, ptr %yr, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr %yi) #3
  %161 = load ptr, ptr %alpha11, align 8, !tbaa !9
  %imag130 = getelementptr inbounds %struct.dcomplex, ptr %161, i32 0, i32 1
  %162 = load double, ptr %imag130, align 8, !tbaa !20
  %fneg131 = fneg double %162
  %real132 = getelementptr inbounds %struct.dcomplex, ptr %alpha_alpha11_conj, i32 0, i32 0
  %163 = load double, ptr %real132, align 8, !tbaa !18
  %164 = load ptr, ptr %alpha11, align 8, !tbaa !9
  %real134 = getelementptr inbounds %struct.dcomplex, ptr %164, i32 0, i32 0
  %165 = load double, ptr %real134, align 8, !tbaa !18
  %imag135 = getelementptr inbounds %struct.dcomplex, ptr %alpha_alpha11_conj, i32 0, i32 1
  %166 = load double, ptr %imag135, align 8, !tbaa !20
  %mul136 = fmul double %165, %166
  %167 = call double @llvm.fmuladd.f64(double %fneg131, double %163, double %mul136)
  store double %167, ptr %yi, align 8, !tbaa !13
  %168 = load double, ptr %yr, align 8, !tbaa !13
  %real137 = getelementptr inbounds %struct.dcomplex, ptr %alpha_alpha11_conj, i32 0, i32 0
  store double %168, ptr %real137, align 8, !tbaa !18
  %169 = load double, ptr %yi, align 8, !tbaa !13
  %imag138 = getelementptr inbounds %struct.dcomplex, ptr %alpha_alpha11_conj, i32 0, i32 1
  store double %169, ptr %imag138, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(i64 8, ptr %yi) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %yr) #3
  br label %if.end157

if.else139:                                       ; preds = %if.then120
  call void @llvm.lifetime.start.p0(i64 8, ptr %yr140) #3
  %170 = load ptr, ptr %alpha11, align 8, !tbaa !9
  %real141 = getelementptr inbounds %struct.dcomplex, ptr %170, i32 0, i32 0
  %171 = load double, ptr %real141, align 8, !tbaa !18
  %real142 = getelementptr inbounds %struct.dcomplex, ptr %alpha_alpha11_conj, i32 0, i32 0
  %172 = load double, ptr %real142, align 8, !tbaa !18
  %173 = load ptr, ptr %alpha11, align 8, !tbaa !9
  %imag144 = getelementptr inbounds %struct.dcomplex, ptr %173, i32 0, i32 1
  %174 = load double, ptr %imag144, align 8, !tbaa !20
  %imag145 = getelementptr inbounds %struct.dcomplex, ptr %alpha_alpha11_conj, i32 0, i32 1
  %175 = load double, ptr %imag145, align 8, !tbaa !20
  %mul146 = fmul double %174, %175
  %neg147 = fneg double %mul146
  %176 = call double @llvm.fmuladd.f64(double %171, double %172, double %neg147)
  store double %176, ptr %yr140, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr %yi148) #3
  %177 = load ptr, ptr %alpha11, align 8, !tbaa !9
  %imag149 = getelementptr inbounds %struct.dcomplex, ptr %177, i32 0, i32 1
  %178 = load double, ptr %imag149, align 8, !tbaa !20
  %real150 = getelementptr inbounds %struct.dcomplex, ptr %alpha_alpha11_conj, i32 0, i32 0
  %179 = load double, ptr %real150, align 8, !tbaa !18
  %180 = load ptr, ptr %alpha11, align 8, !tbaa !9
  %real152 = getelementptr inbounds %struct.dcomplex, ptr %180, i32 0, i32 0
  %181 = load double, ptr %real152, align 8, !tbaa !18
  %imag153 = getelementptr inbounds %struct.dcomplex, ptr %alpha_alpha11_conj, i32 0, i32 1
  %182 = load double, ptr %imag153, align 8, !tbaa !20
  %mul154 = fmul double %181, %182
  %183 = call double @llvm.fmuladd.f64(double %178, double %179, double %mul154)
  store double %183, ptr %yi148, align 8, !tbaa !13
  %184 = load double, ptr %yr140, align 8, !tbaa !13
  %real155 = getelementptr inbounds %struct.dcomplex, ptr %alpha_alpha11_conj, i32 0, i32 0
  store double %184, ptr %real155, align 8, !tbaa !18
  %185 = load double, ptr %yi148, align 8, !tbaa !13
  %imag156 = getelementptr inbounds %struct.dcomplex, ptr %alpha_alpha11_conj, i32 0, i32 1
  store double %185, ptr %imag156, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(i64 8, ptr %yi148) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %yr140) #3
  br label %if.end157

if.end157:                                        ; preds = %if.else139, %if.then122
  br label %if.end158

if.end158:                                        ; preds = %if.end157, %if.end114
  call void @llvm.lifetime.start.p0(i64 8, ptr %yr159) #3
  %real160 = getelementptr inbounds %struct.dcomplex, ptr %alpha_alpha11_conj, i32 0, i32 0
  %186 = load double, ptr %real160, align 8, !tbaa !18
  %187 = load ptr, ptr %chi11, align 8, !tbaa !9
  %real161 = getelementptr inbounds %struct.dcomplex, ptr %187, i32 0, i32 0
  %188 = load double, ptr %real161, align 8, !tbaa !18
  %imag163 = getelementptr inbounds %struct.dcomplex, ptr %alpha_alpha11_conj, i32 0, i32 1
  %189 = load double, ptr %imag163, align 8, !tbaa !20
  %190 = load ptr, ptr %chi11, align 8, !tbaa !9
  %imag164 = getelementptr inbounds %struct.dcomplex, ptr %190, i32 0, i32 1
  %191 = load double, ptr %imag164, align 8, !tbaa !20
  %mul165 = fmul double %189, %191
  %neg166 = fneg double %mul165
  %192 = call double @llvm.fmuladd.f64(double %186, double %188, double %neg166)
  store double %192, ptr %yr159, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr %yi167) #3
  %imag168 = getelementptr inbounds %struct.dcomplex, ptr %alpha_alpha11_conj, i32 0, i32 1
  %193 = load double, ptr %imag168, align 8, !tbaa !20
  %194 = load ptr, ptr %chi11, align 8, !tbaa !9
  %real169 = getelementptr inbounds %struct.dcomplex, ptr %194, i32 0, i32 0
  %195 = load double, ptr %real169, align 8, !tbaa !18
  %real171 = getelementptr inbounds %struct.dcomplex, ptr %alpha_alpha11_conj, i32 0, i32 0
  %196 = load double, ptr %real171, align 8, !tbaa !18
  %197 = load ptr, ptr %chi11, align 8, !tbaa !9
  %imag172 = getelementptr inbounds %struct.dcomplex, ptr %197, i32 0, i32 1
  %198 = load double, ptr %imag172, align 8, !tbaa !20
  %mul173 = fmul double %196, %198
  %199 = call double @llvm.fmuladd.f64(double %193, double %195, double %mul173)
  store double %199, ptr %yi167, align 8, !tbaa !13
  %200 = load double, ptr %yr159, align 8, !tbaa !13
  %201 = load ptr, ptr %chi11, align 8, !tbaa !9
  %real174 = getelementptr inbounds %struct.dcomplex, ptr %201, i32 0, i32 0
  store double %200, ptr %real174, align 8, !tbaa !18
  %202 = load double, ptr %yi167, align 8, !tbaa !13
  %203 = load ptr, ptr %chi11, align 8, !tbaa !9
  %imag175 = getelementptr inbounds %struct.dcomplex, ptr %203, i32 0, i32 1
  store double %202, ptr %imag175, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(i64 8, ptr %yi167) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %yr159) #3
  br label %for.inc176

for.inc176:                                       ; preds = %if.end158
  %204 = load i64, ptr %k, align 8, !tbaa !7
  %inc177 = add nsw i64 %204, 1
  store i64 %inc177, ptr %k, align 8, !tbaa !7
  br label %for.cond18

for.end178:                                       ; preds = %for.cond18
  br label %for.inc179

for.inc179:                                       ; preds = %for.end178
  %205 = load i64, ptr %f, align 8, !tbaa !7
  %206 = load i64, ptr %iter, align 8, !tbaa !7
  %add180 = add nsw i64 %206, %205
  store i64 %add180, ptr %iter, align 8, !tbaa !7
  br label %for.cond

for.end181:                                       ; preds = %for.cond
  br label %if.end380

if.else182:                                       ; preds = %if.end
  store i64 0, ptr %iter, align 8, !tbaa !7
  br label %for.cond183

for.cond183:                                      ; preds = %for.inc377, %if.else182
  %207 = load i64, ptr %iter, align 8, !tbaa !7
  %208 = load i64, ptr %m.addr, align 8, !tbaa !7
  %cmp184 = icmp slt i64 %207, %208
  br i1 %cmp184, label %for.body185, label %for.end379

for.body185:                                      ; preds = %for.cond183
  %209 = load i64, ptr %iter, align 8, !tbaa !7
  %210 = load i64, ptr %m.addr, align 8, !tbaa !7
  %211 = load i64, ptr %b_fuse, align 8, !tbaa !7
  %call186 = call i64 @bli_determine_blocksize_dim_b(i64 noundef %209, i64 noundef %210, i64 noundef %211)
  store i64 %call186, ptr %f, align 8, !tbaa !7
  %212 = load i64, ptr %m.addr, align 8, !tbaa !7
  %213 = load i64, ptr %iter, align 8, !tbaa !7
  %sub = sub nsw i64 %212, %213
  %214 = load i64, ptr %f, align 8, !tbaa !7
  %sub187 = sub nsw i64 %sub, %214
  store i64 %sub187, ptr %i, align 8, !tbaa !7
  %215 = load i64, ptr %iter, align 8, !tbaa !7
  store i64 %215, ptr %n_behind, align 8, !tbaa !7
  %216 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %217 = load i64, ptr %i, align 8, !tbaa !7
  %218 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul188 = mul nsw i64 %217, %218
  %add.ptr189 = getelementptr inbounds %struct.dcomplex, ptr %216, i64 %mul188
  %219 = load i64, ptr %i, align 8, !tbaa !7
  %220 = load i64, ptr %cs_at, align 8, !tbaa !7
  %mul190 = mul nsw i64 %219, %220
  %add.ptr191 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr189, i64 %mul190
  store ptr %add.ptr191, ptr %A11, align 8, !tbaa !9
  %221 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %222 = load i64, ptr %i, align 8, !tbaa !7
  %223 = load i64, ptr %f, align 8, !tbaa !7
  %add192 = add nsw i64 %222, %223
  %224 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul193 = mul nsw i64 %add192, %224
  %add.ptr194 = getelementptr inbounds %struct.dcomplex, ptr %221, i64 %mul193
  %225 = load i64, ptr %i, align 8, !tbaa !7
  %226 = load i64, ptr %cs_at, align 8, !tbaa !7
  %mul195 = mul nsw i64 %225, %226
  %add.ptr196 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr194, i64 %mul195
  store ptr %add.ptr196, ptr %A21, align 8, !tbaa !9
  %227 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %228 = load i64, ptr %i, align 8, !tbaa !7
  %229 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul197 = mul nsw i64 %228, %229
  %add.ptr198 = getelementptr inbounds %struct.dcomplex, ptr %227, i64 %mul197
  store ptr %add.ptr198, ptr %x1, align 8, !tbaa !9
  %230 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %231 = load i64, ptr %i, align 8, !tbaa !7
  %232 = load i64, ptr %f, align 8, !tbaa !7
  %add199 = add nsw i64 %231, %232
  %233 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul200 = mul nsw i64 %add199, %233
  %add.ptr201 = getelementptr inbounds %struct.dcomplex, ptr %230, i64 %mul200
  store ptr %add.ptr201, ptr %x2, align 8, !tbaa !9
  %234 = load ptr, ptr %kfp_af, align 8, !tbaa !9
  %235 = load i32, ptr %conja, align 4, !tbaa !4
  %236 = load i64, ptr %n_behind, align 8, !tbaa !7
  %237 = load i64, ptr %f, align 8, !tbaa !7
  %238 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %239 = load ptr, ptr %A21, align 8, !tbaa !9
  %240 = load i64, ptr %rs_at, align 8, !tbaa !7
  %241 = load i64, ptr %cs_at, align 8, !tbaa !7
  %242 = load ptr, ptr %x1, align 8, !tbaa !9
  %243 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %244 = load ptr, ptr %x2, align 8, !tbaa !9
  %245 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %246 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %234(i32 noundef %235, i32 noundef 0, i64 noundef %236, i64 noundef %237, ptr noundef %238, ptr noundef %239, i64 noundef %240, i64 noundef %241, ptr noundef %242, i64 noundef %243, ptr noundef %244, i64 noundef %245, ptr noundef %246)
  store i64 0, ptr %k, align 8, !tbaa !7
  br label %for.cond202

for.cond202:                                      ; preds = %for.inc374, %for.body185
  %247 = load i64, ptr %k, align 8, !tbaa !7
  %248 = load i64, ptr %f, align 8, !tbaa !7
  %cmp203 = icmp slt i64 %247, %248
  br i1 %cmp203, label %for.body204, label %for.end376

for.body204:                                      ; preds = %for.cond202
  %249 = load i64, ptr %f, align 8, !tbaa !7
  %250 = load i64, ptr %k, align 8, !tbaa !7
  %sub205 = sub nsw i64 %249, %250
  %sub206 = sub nsw i64 %sub205, 1
  store i64 %sub206, ptr %l, align 8, !tbaa !7
  %251 = load i64, ptr %k, align 8, !tbaa !7
  store i64 %251, ptr %f_behind, align 8, !tbaa !7
  %252 = load ptr, ptr %A11, align 8, !tbaa !9
  %253 = load i64, ptr %l, align 8, !tbaa !7
  %254 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul207 = mul nsw i64 %253, %254
  %add.ptr208 = getelementptr inbounds %struct.dcomplex, ptr %252, i64 %mul207
  %255 = load i64, ptr %l, align 8, !tbaa !7
  %256 = load i64, ptr %cs_at, align 8, !tbaa !7
  %mul209 = mul nsw i64 %255, %256
  %add.ptr210 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr208, i64 %mul209
  store ptr %add.ptr210, ptr %alpha11, align 8, !tbaa !9
  %257 = load ptr, ptr %A11, align 8, !tbaa !9
  %258 = load i64, ptr %l, align 8, !tbaa !7
  %add211 = add nsw i64 %258, 1
  %259 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul212 = mul nsw i64 %add211, %259
  %add.ptr213 = getelementptr inbounds %struct.dcomplex, ptr %257, i64 %mul212
  %260 = load i64, ptr %l, align 8, !tbaa !7
  %261 = load i64, ptr %cs_at, align 8, !tbaa !7
  %mul214 = mul nsw i64 %260, %261
  %add.ptr215 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr213, i64 %mul214
  store ptr %add.ptr215, ptr %a21, align 8, !tbaa !9
  %262 = load ptr, ptr %x1, align 8, !tbaa !9
  %263 = load i64, ptr %l, align 8, !tbaa !7
  %264 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul216 = mul nsw i64 %263, %264
  %add.ptr217 = getelementptr inbounds %struct.dcomplex, ptr %262, i64 %mul216
  store ptr %add.ptr217, ptr %chi11, align 8, !tbaa !9
  %265 = load ptr, ptr %x1, align 8, !tbaa !9
  %266 = load i64, ptr %l, align 8, !tbaa !7
  %add218 = add nsw i64 %266, 1
  %267 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul219 = mul nsw i64 %add218, %267
  %add.ptr220 = getelementptr inbounds %struct.dcomplex, ptr %265, i64 %mul219
  store ptr %add.ptr220, ptr %x21, align 8, !tbaa !9
  %268 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %real221 = getelementptr inbounds %struct.dcomplex, ptr %268, i32 0, i32 0
  %269 = load double, ptr %real221, align 8, !tbaa !18
  %270 = load ptr, ptr %chi11, align 8, !tbaa !9
  %real222 = getelementptr inbounds %struct.dcomplex, ptr %270, i32 0, i32 0
  %271 = load double, ptr %real222, align 8, !tbaa !18
  %272 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag224 = getelementptr inbounds %struct.dcomplex, ptr %272, i32 0, i32 1
  %273 = load double, ptr %imag224, align 8, !tbaa !20
  %274 = load ptr, ptr %chi11, align 8, !tbaa !9
  %imag225 = getelementptr inbounds %struct.dcomplex, ptr %274, i32 0, i32 1
  %275 = load double, ptr %imag225, align 8, !tbaa !20
  %mul226 = fmul double %273, %275
  %neg227 = fneg double %mul226
  %276 = call double @llvm.fmuladd.f64(double %269, double %271, double %neg227)
  %real228 = getelementptr inbounds %struct.dcomplex, ptr %alpha_chi11, i32 0, i32 0
  store double %276, ptr %real228, align 8, !tbaa !18
  %277 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag229 = getelementptr inbounds %struct.dcomplex, ptr %277, i32 0, i32 1
  %278 = load double, ptr %imag229, align 8, !tbaa !20
  %279 = load ptr, ptr %chi11, align 8, !tbaa !9
  %real230 = getelementptr inbounds %struct.dcomplex, ptr %279, i32 0, i32 0
  %280 = load double, ptr %real230, align 8, !tbaa !18
  %281 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %real232 = getelementptr inbounds %struct.dcomplex, ptr %281, i32 0, i32 0
  %282 = load double, ptr %real232, align 8, !tbaa !18
  %283 = load ptr, ptr %chi11, align 8, !tbaa !9
  %imag233 = getelementptr inbounds %struct.dcomplex, ptr %283, i32 0, i32 1
  %284 = load double, ptr %imag233, align 8, !tbaa !20
  %mul234 = fmul double %282, %284
  %285 = call double @llvm.fmuladd.f64(double %278, double %280, double %mul234)
  %imag235 = getelementptr inbounds %struct.dcomplex, ptr %alpha_chi11, i32 0, i32 1
  store double %285, ptr %imag235, align 8, !tbaa !20
  %286 = load i32, ptr %conja, align 4, !tbaa !4
  %call236 = call zeroext i1 @bli_is_conj(i32 noundef %286)
  br i1 %call236, label %if.then237, label %if.else273

if.then237:                                       ; preds = %for.body204
  store i64 0, ptr %j, align 8, !tbaa !7
  br label %for.cond238

for.cond238:                                      ; preds = %for.inc270, %if.then237
  %287 = load i64, ptr %j, align 8, !tbaa !7
  %288 = load i64, ptr %f_behind, align 8, !tbaa !7
  %cmp239 = icmp slt i64 %287, %288
  br i1 %cmp239, label %for.body240, label %for.end272

for.body240:                                      ; preds = %for.cond238
  %real241 = getelementptr inbounds %struct.dcomplex, ptr %alpha_chi11, i32 0, i32 0
  %289 = load double, ptr %real241, align 8, !tbaa !18
  %290 = load ptr, ptr %a21, align 8, !tbaa !9
  %291 = load i64, ptr %j, align 8, !tbaa !7
  %292 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul242 = mul nsw i64 %291, %292
  %add.ptr243 = getelementptr inbounds %struct.dcomplex, ptr %290, i64 %mul242
  %real244 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr243, i32 0, i32 0
  %293 = load double, ptr %real244, align 8, !tbaa !18
  %imag246 = getelementptr inbounds %struct.dcomplex, ptr %alpha_chi11, i32 0, i32 1
  %294 = load double, ptr %imag246, align 8, !tbaa !20
  %295 = load ptr, ptr %a21, align 8, !tbaa !9
  %296 = load i64, ptr %j, align 8, !tbaa !7
  %297 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul247 = mul nsw i64 %296, %297
  %add.ptr248 = getelementptr inbounds %struct.dcomplex, ptr %295, i64 %mul247
  %imag249 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr248, i32 0, i32 1
  %298 = load double, ptr %imag249, align 8, !tbaa !20
  %mul250 = fmul double %294, %298
  %299 = call double @llvm.fmuladd.f64(double %289, double %293, double %mul250)
  %300 = load ptr, ptr %x21, align 8, !tbaa !9
  %301 = load i64, ptr %j, align 8, !tbaa !7
  %302 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul251 = mul nsw i64 %301, %302
  %add.ptr252 = getelementptr inbounds %struct.dcomplex, ptr %300, i64 %mul251
  %real253 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr252, i32 0, i32 0
  %303 = load double, ptr %real253, align 8, !tbaa !18
  %add254 = fadd double %303, %299
  store double %add254, ptr %real253, align 8, !tbaa !18
  %imag255 = getelementptr inbounds %struct.dcomplex, ptr %alpha_chi11, i32 0, i32 1
  %304 = load double, ptr %imag255, align 8, !tbaa !20
  %305 = load ptr, ptr %a21, align 8, !tbaa !9
  %306 = load i64, ptr %j, align 8, !tbaa !7
  %307 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul256 = mul nsw i64 %306, %307
  %add.ptr257 = getelementptr inbounds %struct.dcomplex, ptr %305, i64 %mul256
  %real258 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr257, i32 0, i32 0
  %308 = load double, ptr %real258, align 8, !tbaa !18
  %real260 = getelementptr inbounds %struct.dcomplex, ptr %alpha_chi11, i32 0, i32 0
  %309 = load double, ptr %real260, align 8, !tbaa !18
  %310 = load ptr, ptr %a21, align 8, !tbaa !9
  %311 = load i64, ptr %j, align 8, !tbaa !7
  %312 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul261 = mul nsw i64 %311, %312
  %add.ptr262 = getelementptr inbounds %struct.dcomplex, ptr %310, i64 %mul261
  %imag263 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr262, i32 0, i32 1
  %313 = load double, ptr %imag263, align 8, !tbaa !20
  %mul264 = fmul double %309, %313
  %neg265 = fneg double %mul264
  %314 = call double @llvm.fmuladd.f64(double %304, double %308, double %neg265)
  %315 = load ptr, ptr %x21, align 8, !tbaa !9
  %316 = load i64, ptr %j, align 8, !tbaa !7
  %317 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul266 = mul nsw i64 %316, %317
  %add.ptr267 = getelementptr inbounds %struct.dcomplex, ptr %315, i64 %mul266
  %imag268 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr267, i32 0, i32 1
  %318 = load double, ptr %imag268, align 8, !tbaa !20
  %add269 = fadd double %318, %314
  store double %add269, ptr %imag268, align 8, !tbaa !20
  br label %for.inc270

for.inc270:                                       ; preds = %for.body240
  %319 = load i64, ptr %j, align 8, !tbaa !7
  %inc271 = add nsw i64 %319, 1
  store i64 %inc271, ptr %j, align 8, !tbaa !7
  br label %for.cond238

for.end272:                                       ; preds = %for.cond238
  br label %if.end309

if.else273:                                       ; preds = %for.body204
  store i64 0, ptr %j, align 8, !tbaa !7
  br label %for.cond274

for.cond274:                                      ; preds = %for.inc306, %if.else273
  %320 = load i64, ptr %j, align 8, !tbaa !7
  %321 = load i64, ptr %f_behind, align 8, !tbaa !7
  %cmp275 = icmp slt i64 %320, %321
  br i1 %cmp275, label %for.body276, label %for.end308

for.body276:                                      ; preds = %for.cond274
  %real277 = getelementptr inbounds %struct.dcomplex, ptr %alpha_chi11, i32 0, i32 0
  %322 = load double, ptr %real277, align 8, !tbaa !18
  %323 = load ptr, ptr %a21, align 8, !tbaa !9
  %324 = load i64, ptr %j, align 8, !tbaa !7
  %325 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul278 = mul nsw i64 %324, %325
  %add.ptr279 = getelementptr inbounds %struct.dcomplex, ptr %323, i64 %mul278
  %real280 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr279, i32 0, i32 0
  %326 = load double, ptr %real280, align 8, !tbaa !18
  %imag282 = getelementptr inbounds %struct.dcomplex, ptr %alpha_chi11, i32 0, i32 1
  %327 = load double, ptr %imag282, align 8, !tbaa !20
  %328 = load ptr, ptr %a21, align 8, !tbaa !9
  %329 = load i64, ptr %j, align 8, !tbaa !7
  %330 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul283 = mul nsw i64 %329, %330
  %add.ptr284 = getelementptr inbounds %struct.dcomplex, ptr %328, i64 %mul283
  %imag285 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr284, i32 0, i32 1
  %331 = load double, ptr %imag285, align 8, !tbaa !20
  %mul286 = fmul double %327, %331
  %neg287 = fneg double %mul286
  %332 = call double @llvm.fmuladd.f64(double %322, double %326, double %neg287)
  %333 = load ptr, ptr %x21, align 8, !tbaa !9
  %334 = load i64, ptr %j, align 8, !tbaa !7
  %335 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul288 = mul nsw i64 %334, %335
  %add.ptr289 = getelementptr inbounds %struct.dcomplex, ptr %333, i64 %mul288
  %real290 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr289, i32 0, i32 0
  %336 = load double, ptr %real290, align 8, !tbaa !18
  %add291 = fadd double %336, %332
  store double %add291, ptr %real290, align 8, !tbaa !18
  %imag292 = getelementptr inbounds %struct.dcomplex, ptr %alpha_chi11, i32 0, i32 1
  %337 = load double, ptr %imag292, align 8, !tbaa !20
  %338 = load ptr, ptr %a21, align 8, !tbaa !9
  %339 = load i64, ptr %j, align 8, !tbaa !7
  %340 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul293 = mul nsw i64 %339, %340
  %add.ptr294 = getelementptr inbounds %struct.dcomplex, ptr %338, i64 %mul293
  %real295 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr294, i32 0, i32 0
  %341 = load double, ptr %real295, align 8, !tbaa !18
  %real297 = getelementptr inbounds %struct.dcomplex, ptr %alpha_chi11, i32 0, i32 0
  %342 = load double, ptr %real297, align 8, !tbaa !18
  %343 = load ptr, ptr %a21, align 8, !tbaa !9
  %344 = load i64, ptr %j, align 8, !tbaa !7
  %345 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul298 = mul nsw i64 %344, %345
  %add.ptr299 = getelementptr inbounds %struct.dcomplex, ptr %343, i64 %mul298
  %imag300 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr299, i32 0, i32 1
  %346 = load double, ptr %imag300, align 8, !tbaa !20
  %mul301 = fmul double %342, %346
  %347 = call double @llvm.fmuladd.f64(double %337, double %341, double %mul301)
  %348 = load ptr, ptr %x21, align 8, !tbaa !9
  %349 = load i64, ptr %j, align 8, !tbaa !7
  %350 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul302 = mul nsw i64 %349, %350
  %add.ptr303 = getelementptr inbounds %struct.dcomplex, ptr %348, i64 %mul302
  %imag304 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr303, i32 0, i32 1
  %351 = load double, ptr %imag304, align 8, !tbaa !20
  %add305 = fadd double %351, %347
  store double %add305, ptr %imag304, align 8, !tbaa !20
  br label %for.inc306

for.inc306:                                       ; preds = %for.body276
  %352 = load i64, ptr %j, align 8, !tbaa !7
  %inc307 = add nsw i64 %352, 1
  store i64 %inc307, ptr %j, align 8, !tbaa !7
  br label %for.cond274

for.end308:                                       ; preds = %for.cond274
  br label %if.end309

if.end309:                                        ; preds = %for.end308, %for.end272
  %353 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %real310 = getelementptr inbounds %struct.dcomplex, ptr %353, i32 0, i32 0
  %354 = load double, ptr %real310, align 8, !tbaa !18
  %real311 = getelementptr inbounds %struct.dcomplex, ptr %alpha_alpha11_conj, i32 0, i32 0
  store double %354, ptr %real311, align 8, !tbaa !18
  %355 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag312 = getelementptr inbounds %struct.dcomplex, ptr %355, i32 0, i32 1
  %356 = load double, ptr %imag312, align 8, !tbaa !20
  %imag313 = getelementptr inbounds %struct.dcomplex, ptr %alpha_alpha11_conj, i32 0, i32 1
  store double %356, ptr %imag313, align 8, !tbaa !20
  %357 = load i32, ptr %diaga.addr, align 4, !tbaa !4
  %call314 = call zeroext i1 @bli_is_nonunit_diag(i32 noundef %357)
  br i1 %call314, label %if.then315, label %if.end356

if.then315:                                       ; preds = %if.end309
  %358 = load i32, ptr %conja, align 4, !tbaa !4
  %call316 = call zeroext i1 @bli_is_conj(i32 noundef %358)
  br i1 %call316, label %if.then317, label %if.else337

if.then317:                                       ; preds = %if.then315
  call void @llvm.lifetime.start.p0(i64 8, ptr %yr318) #3
  %359 = load ptr, ptr %alpha11, align 8, !tbaa !9
  %real319 = getelementptr inbounds %struct.dcomplex, ptr %359, i32 0, i32 0
  %360 = load double, ptr %real319, align 8, !tbaa !18
  %real320 = getelementptr inbounds %struct.dcomplex, ptr %alpha_alpha11_conj, i32 0, i32 0
  %361 = load double, ptr %real320, align 8, !tbaa !18
  %362 = load ptr, ptr %alpha11, align 8, !tbaa !9
  %imag322 = getelementptr inbounds %struct.dcomplex, ptr %362, i32 0, i32 1
  %363 = load double, ptr %imag322, align 8, !tbaa !20
  %fneg323 = fneg double %363
  %imag324 = getelementptr inbounds %struct.dcomplex, ptr %alpha_alpha11_conj, i32 0, i32 1
  %364 = load double, ptr %imag324, align 8, !tbaa !20
  %mul325 = fmul double %fneg323, %364
  %neg326 = fneg double %mul325
  %365 = call double @llvm.fmuladd.f64(double %360, double %361, double %neg326)
  store double %365, ptr %yr318, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr %yi327) #3
  %366 = load ptr, ptr %alpha11, align 8, !tbaa !9
  %imag328 = getelementptr inbounds %struct.dcomplex, ptr %366, i32 0, i32 1
  %367 = load double, ptr %imag328, align 8, !tbaa !20
  %fneg329 = fneg double %367
  %real330 = getelementptr inbounds %struct.dcomplex, ptr %alpha_alpha11_conj, i32 0, i32 0
  %368 = load double, ptr %real330, align 8, !tbaa !18
  %369 = load ptr, ptr %alpha11, align 8, !tbaa !9
  %real332 = getelementptr inbounds %struct.dcomplex, ptr %369, i32 0, i32 0
  %370 = load double, ptr %real332, align 8, !tbaa !18
  %imag333 = getelementptr inbounds %struct.dcomplex, ptr %alpha_alpha11_conj, i32 0, i32 1
  %371 = load double, ptr %imag333, align 8, !tbaa !20
  %mul334 = fmul double %370, %371
  %372 = call double @llvm.fmuladd.f64(double %fneg329, double %368, double %mul334)
  store double %372, ptr %yi327, align 8, !tbaa !13
  %373 = load double, ptr %yr318, align 8, !tbaa !13
  %real335 = getelementptr inbounds %struct.dcomplex, ptr %alpha_alpha11_conj, i32 0, i32 0
  store double %373, ptr %real335, align 8, !tbaa !18
  %374 = load double, ptr %yi327, align 8, !tbaa !13
  %imag336 = getelementptr inbounds %struct.dcomplex, ptr %alpha_alpha11_conj, i32 0, i32 1
  store double %374, ptr %imag336, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(i64 8, ptr %yi327) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %yr318) #3
  br label %if.end355

if.else337:                                       ; preds = %if.then315
  call void @llvm.lifetime.start.p0(i64 8, ptr %yr338) #3
  %375 = load ptr, ptr %alpha11, align 8, !tbaa !9
  %real339 = getelementptr inbounds %struct.dcomplex, ptr %375, i32 0, i32 0
  %376 = load double, ptr %real339, align 8, !tbaa !18
  %real340 = getelementptr inbounds %struct.dcomplex, ptr %alpha_alpha11_conj, i32 0, i32 0
  %377 = load double, ptr %real340, align 8, !tbaa !18
  %378 = load ptr, ptr %alpha11, align 8, !tbaa !9
  %imag342 = getelementptr inbounds %struct.dcomplex, ptr %378, i32 0, i32 1
  %379 = load double, ptr %imag342, align 8, !tbaa !20
  %imag343 = getelementptr inbounds %struct.dcomplex, ptr %alpha_alpha11_conj, i32 0, i32 1
  %380 = load double, ptr %imag343, align 8, !tbaa !20
  %mul344 = fmul double %379, %380
  %neg345 = fneg double %mul344
  %381 = call double @llvm.fmuladd.f64(double %376, double %377, double %neg345)
  store double %381, ptr %yr338, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr %yi346) #3
  %382 = load ptr, ptr %alpha11, align 8, !tbaa !9
  %imag347 = getelementptr inbounds %struct.dcomplex, ptr %382, i32 0, i32 1
  %383 = load double, ptr %imag347, align 8, !tbaa !20
  %real348 = getelementptr inbounds %struct.dcomplex, ptr %alpha_alpha11_conj, i32 0, i32 0
  %384 = load double, ptr %real348, align 8, !tbaa !18
  %385 = load ptr, ptr %alpha11, align 8, !tbaa !9
  %real350 = getelementptr inbounds %struct.dcomplex, ptr %385, i32 0, i32 0
  %386 = load double, ptr %real350, align 8, !tbaa !18
  %imag351 = getelementptr inbounds %struct.dcomplex, ptr %alpha_alpha11_conj, i32 0, i32 1
  %387 = load double, ptr %imag351, align 8, !tbaa !20
  %mul352 = fmul double %386, %387
  %388 = call double @llvm.fmuladd.f64(double %383, double %384, double %mul352)
  store double %388, ptr %yi346, align 8, !tbaa !13
  %389 = load double, ptr %yr338, align 8, !tbaa !13
  %real353 = getelementptr inbounds %struct.dcomplex, ptr %alpha_alpha11_conj, i32 0, i32 0
  store double %389, ptr %real353, align 8, !tbaa !18
  %390 = load double, ptr %yi346, align 8, !tbaa !13
  %imag354 = getelementptr inbounds %struct.dcomplex, ptr %alpha_alpha11_conj, i32 0, i32 1
  store double %390, ptr %imag354, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(i64 8, ptr %yi346) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %yr338) #3
  br label %if.end355

if.end355:                                        ; preds = %if.else337, %if.then317
  br label %if.end356

if.end356:                                        ; preds = %if.end355, %if.end309
  call void @llvm.lifetime.start.p0(i64 8, ptr %yr357) #3
  %real358 = getelementptr inbounds %struct.dcomplex, ptr %alpha_alpha11_conj, i32 0, i32 0
  %391 = load double, ptr %real358, align 8, !tbaa !18
  %392 = load ptr, ptr %chi11, align 8, !tbaa !9
  %real359 = getelementptr inbounds %struct.dcomplex, ptr %392, i32 0, i32 0
  %393 = load double, ptr %real359, align 8, !tbaa !18
  %imag361 = getelementptr inbounds %struct.dcomplex, ptr %alpha_alpha11_conj, i32 0, i32 1
  %394 = load double, ptr %imag361, align 8, !tbaa !20
  %395 = load ptr, ptr %chi11, align 8, !tbaa !9
  %imag362 = getelementptr inbounds %struct.dcomplex, ptr %395, i32 0, i32 1
  %396 = load double, ptr %imag362, align 8, !tbaa !20
  %mul363 = fmul double %394, %396
  %neg364 = fneg double %mul363
  %397 = call double @llvm.fmuladd.f64(double %391, double %393, double %neg364)
  store double %397, ptr %yr357, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr %yi365) #3
  %imag366 = getelementptr inbounds %struct.dcomplex, ptr %alpha_alpha11_conj, i32 0, i32 1
  %398 = load double, ptr %imag366, align 8, !tbaa !20
  %399 = load ptr, ptr %chi11, align 8, !tbaa !9
  %real367 = getelementptr inbounds %struct.dcomplex, ptr %399, i32 0, i32 0
  %400 = load double, ptr %real367, align 8, !tbaa !18
  %real369 = getelementptr inbounds %struct.dcomplex, ptr %alpha_alpha11_conj, i32 0, i32 0
  %401 = load double, ptr %real369, align 8, !tbaa !18
  %402 = load ptr, ptr %chi11, align 8, !tbaa !9
  %imag370 = getelementptr inbounds %struct.dcomplex, ptr %402, i32 0, i32 1
  %403 = load double, ptr %imag370, align 8, !tbaa !20
  %mul371 = fmul double %401, %403
  %404 = call double @llvm.fmuladd.f64(double %398, double %400, double %mul371)
  store double %404, ptr %yi365, align 8, !tbaa !13
  %405 = load double, ptr %yr357, align 8, !tbaa !13
  %406 = load ptr, ptr %chi11, align 8, !tbaa !9
  %real372 = getelementptr inbounds %struct.dcomplex, ptr %406, i32 0, i32 0
  store double %405, ptr %real372, align 8, !tbaa !18
  %407 = load double, ptr %yi365, align 8, !tbaa !13
  %408 = load ptr, ptr %chi11, align 8, !tbaa !9
  %imag373 = getelementptr inbounds %struct.dcomplex, ptr %408, i32 0, i32 1
  store double %407, ptr %imag373, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(i64 8, ptr %yi365) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %yr357) #3
  br label %for.inc374

for.inc374:                                       ; preds = %if.end356
  %409 = load i64, ptr %k, align 8, !tbaa !7
  %inc375 = add nsw i64 %409, 1
  store i64 %inc375, ptr %k, align 8, !tbaa !7
  br label %for.cond202

for.end376:                                       ; preds = %for.cond202
  br label %for.inc377

for.inc377:                                       ; preds = %for.end376
  %410 = load i64, ptr %f, align 8, !tbaa !7
  %411 = load i64, ptr %iter, align 8, !tbaa !7
  %add378 = add nsw i64 %411, %410
  store i64 %add378, ptr %iter, align 8, !tbaa !7
  br label %for.cond183

for.end379:                                       ; preds = %for.cond183
  br label %if.end380

if.end380:                                        ; preds = %for.end379, %for.end181
  call void @llvm.lifetime.end.p0(i64 8, ptr %kfp_af) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %conja) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uploa_trans) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %cs_at) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %rs_at) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %f_behind) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_behind) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_fuse) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %l) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr %alpha_chi11) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr %alpha_alpha11_conj) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x21) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi11) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x01) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x2) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a21) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha11) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a01) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %A21) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %A11) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %A01) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bli_is_upper_or_lower(i32 noundef %uplo) #0 {
entry:
  %uplo.addr = alloca i32, align 4
  store i32 %uplo, ptr %uplo.addr, align 4, !tbaa !4
  %0 = load i32, ptr %uplo.addr, align 4, !tbaa !4
  %call = call zeroext i1 @bli_is_upper(i32 noundef %0)
  br i1 %call, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load i32, ptr %uplo.addr, align 4, !tbaa !4
  %call1 = call zeroext i1 @bli_is_lower(i32 noundef %1)
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %call1, %lor.rhs ]
  ret i1 %2
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bli_is_lower(i32 noundef %uplo) #0 {
entry:
  %uplo.addr = alloca i32, align 4
  store i32 %uplo, ptr %uplo.addr, align 4, !tbaa !4
  %0 = load i32, ptr %uplo.addr, align 4, !tbaa !4
  %cmp = icmp eq i32 %0, 192
  ret i1 %cmp
}

; Function Attrs: nounwind uwtable
define internal ptr @bli_cntx_get_l1f_kers(i32 noundef %ker_id, ptr noundef %cntx) #0 {
entry:
  %ker_id.addr = alloca i32, align 4
  %cntx.addr = alloca ptr, align 8
  %funcs = alloca ptr, align 8
  %func = alloca ptr, align 8
  store i32 %ker_id, ptr %ker_id.addr, align 4, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %funcs) #3
  %0 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call = call ptr @bli_cntx_l1f_kers_buf(ptr noundef %0)
  store ptr %call, ptr %funcs, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %func) #3
  %1 = load ptr, ptr %funcs, align 8, !tbaa !9
  %2 = load i32, ptr %ker_id.addr, align 4, !tbaa !4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.func_s, ptr %1, i64 %idxprom
  store ptr %arrayidx, ptr %func, align 8, !tbaa !9
  %3 = load ptr, ptr %func, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %func) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %funcs) #3
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define internal ptr @bli_func_get_dt(i32 noundef %dt, ptr noundef %func) #0 {
entry:
  %dt.addr = alloca i32, align 4
  %func.addr = alloca ptr, align 8
  store i32 %dt, ptr %dt.addr, align 4, !tbaa !4
  store ptr %func, ptr %func.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %func.addr, align 8, !tbaa !9
  %ptr = getelementptr inbounds %struct.func_s, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %dt.addr, align 4, !tbaa !4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %ptr, i64 0, i64 %idxprom
  %2 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define internal ptr @bli_cntx_l1f_kers_buf(ptr noundef %cntx) #0 {
entry:
  %cntx.addr = alloca ptr, align 8
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %l1f_kers = getelementptr inbounds %struct.cntx_s, ptr %0, i32 0, i32 12
  %arraydecay = getelementptr inbounds [5 x %struct.func_s], ptr %l1f_kers, i64 0, i64 0
  ret ptr %arraydecay
}

; Function Attrs: nounwind uwtable
define internal ptr @bli_cntx_get_blksz(i32 noundef %bs_id, ptr noundef %cntx) #0 {
entry:
  %bs_id.addr = alloca i32, align 4
  %cntx.addr = alloca ptr, align 8
  %blkszs = alloca ptr, align 8
  %blksz = alloca ptr, align 8
  store i32 %bs_id, ptr %bs_id.addr, align 4, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %blkszs) #3
  %0 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call = call ptr @bli_cntx_blkszs_buf(ptr noundef %0)
  store ptr %call, ptr %blkszs, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %blksz) #3
  %1 = load ptr, ptr %blkszs, align 8, !tbaa !9
  %2 = load i32, ptr %bs_id.addr, align 4, !tbaa !4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.blksz_s, ptr %1, i64 %idxprom
  store ptr %arrayidx, ptr %blksz, align 8, !tbaa !9
  %3 = load ptr, ptr %blksz, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %blksz) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %blkszs) #3
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define internal i64 @bli_blksz_get_def(i32 noundef %dt, ptr noundef %b) #0 {
entry:
  %dt.addr = alloca i32, align 4
  %b.addr = alloca ptr, align 8
  store i32 %dt, ptr %dt.addr, align 4, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %v = getelementptr inbounds %struct.blksz_s, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %dt.addr, align 4, !tbaa !4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [4 x i64], ptr %v, i64 0, i64 %idxprom
  %2 = load i64, ptr %arrayidx, align 8, !tbaa !7
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define internal ptr @bli_cntx_blkszs_buf(ptr noundef %cntx) #0 {
entry:
  %cntx.addr = alloca ptr, align 8
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %blkszs = getelementptr inbounds %struct.cntx_s, ptr %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [11 x %struct.blksz_s], ptr %blkszs, i64 0, i64 0
  ret ptr %arraydecay
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"float", !5, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"double", !5, i64 0}
!15 = !{!16, !12, i64 0}
!16 = !{!"", !12, i64 0, !12, i64 4}
!17 = !{!16, !12, i64 4}
!18 = !{!19, !14, i64 0}
!19 = !{!"", !14, i64 0, !14, i64 8}
!20 = !{!19, !14, i64 8}
