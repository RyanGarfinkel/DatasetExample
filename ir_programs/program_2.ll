; ModuleID = 'program_2.bc'
source_filename = "providers/implementations/digests/blake2s_prov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blake2s_param_st = type { i8, i8, i8, i8, [4 x i8], [6 x i8], i8, i8, [8 x i8], [8 x i8] }
%struct.blake2s_ctx_st = type { [8 x i32], [2 x i32], [2 x i32], [64 x i8], i64, i64 }

@blake2s_IV = internal constant [8 x i32] [i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534, i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225], align 16
@blake2s_sigma = internal constant [10 x [16 x i8]] [[16 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F", [16 x i8] c"\0E\0A\04\08\09\0F\0D\06\01\0C\00\02\0B\07\05\03", [16 x i8] c"\0B\08\0C\00\05\02\0F\0D\0A\0E\03\06\07\01\09\04", [16 x i8] c"\07\09\03\01\0D\0C\0B\0E\02\06\05\0A\04\00\0F\08", [16 x i8] c"\09\00\05\07\02\04\0A\0F\0E\01\0B\0C\06\08\03\0D", [16 x i8] c"\02\0C\06\0A\00\0B\08\03\04\0D\07\05\0F\0E\01\09", [16 x i8] c"\0C\05\01\0F\0E\0D\04\0A\00\07\06\03\09\02\08\0B", [16 x i8] c"\0D\0B\07\0E\0C\01\03\09\05\00\0F\04\08\06\02\0A", [16 x i8] c"\06\0F\0E\09\0B\03\00\08\0C\02\0D\07\01\04\0A\05", [16 x i8] c"\0A\02\08\04\07\06\01\05\0F\0B\09\0E\03\0C\0D\00"], align 16

; Function Attrs: nounwind uwtable
define void @ossl_blake2s_param_init(ptr noundef %P) #0 {
entry:
  %P.addr = alloca ptr, align 8
  store ptr %P, ptr %P.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %digest_length = getelementptr inbounds %struct.blake2s_param_st, ptr %0, i32 0, i32 0
  store i8 32, ptr %digest_length, align 1, !tbaa !8
  %1 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %key_length = getelementptr inbounds %struct.blake2s_param_st, ptr %1, i32 0, i32 1
  store i8 0, ptr %key_length, align 1, !tbaa !10
  %2 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %fanout = getelementptr inbounds %struct.blake2s_param_st, ptr %2, i32 0, i32 2
  store i8 1, ptr %fanout, align 1, !tbaa !11
  %3 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %depth = getelementptr inbounds %struct.blake2s_param_st, ptr %3, i32 0, i32 3
  store i8 1, ptr %depth, align 1, !tbaa !12
  %4 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %leaf_length = getelementptr inbounds %struct.blake2s_param_st, ptr %4, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], ptr %leaf_length, i64 0, i64 0
  call void @store32(ptr noundef %arraydecay, i32 noundef 0)
  %5 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %node_offset = getelementptr inbounds %struct.blake2s_param_st, ptr %5, i32 0, i32 5
  %arraydecay1 = getelementptr inbounds [6 x i8], ptr %node_offset, i64 0, i64 0
  call void @store48(ptr noundef %arraydecay1, i64 noundef 0)
  %6 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %node_depth = getelementptr inbounds %struct.blake2s_param_st, ptr %6, i32 0, i32 6
  store i8 0, ptr %node_depth, align 1, !tbaa !13
  %7 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %inner_length = getelementptr inbounds %struct.blake2s_param_st, ptr %7, i32 0, i32 7
  store i8 0, ptr %inner_length, align 1, !tbaa !14
  %8 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %salt = getelementptr inbounds %struct.blake2s_param_st, ptr %8, i32 0, i32 8
  %arraydecay2 = getelementptr inbounds [8 x i8], ptr %salt, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 1 %arraydecay2, i8 0, i64 8, i1 false)
  %9 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %personal = getelementptr inbounds %struct.blake2s_param_st, ptr %9, i32 0, i32 9
  %arraydecay3 = getelementptr inbounds [8 x i8], ptr %personal, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 1 %arraydecay3, i8 0, i64 8, i1 false)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @store32(ptr noundef %dst, i32 noundef %w) #1 {
entry:
  %dst.addr = alloca ptr, align 8
  %w.addr = alloca i32, align 4
  %ossl_is_little_endian = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !4
  store i32 %w, ptr %w.addr, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 4, ptr %ossl_is_little_endian) #6
  store i32 1, ptr %ossl_is_little_endian, align 4, !tbaa !15
  %0 = load ptr, ptr %dst.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 4 %w.addr, i64 4, i1 false)
  call void @llvm.lifetime.end.p0(i64 4, ptr %ossl_is_little_endian) #6
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @store48(ptr noundef %dst, i64 noundef %w) #1 {
entry:
  %dst.addr = alloca ptr, align 8
  %w.addr = alloca i64, align 8
  %p = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !4
  store i64 %w, ptr %w.addr, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #6
  %0 = load ptr, ptr %dst.addr, align 8, !tbaa !4
  store ptr %0, ptr %p, align 8, !tbaa !4
  %1 = load i64, ptr %w.addr, align 8, !tbaa !17
  %conv = trunc i64 %1 to i8
  %2 = load ptr, ptr %p, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 0
  store i8 %conv, ptr %arrayidx, align 1, !tbaa !19
  %3 = load i64, ptr %w.addr, align 8, !tbaa !17
  %shr = lshr i64 %3, 8
  %conv1 = trunc i64 %shr to i8
  %4 = load ptr, ptr %p, align 8, !tbaa !4
  %arrayidx2 = getelementptr inbounds i8, ptr %4, i64 1
  store i8 %conv1, ptr %arrayidx2, align 1, !tbaa !19
  %5 = load i64, ptr %w.addr, align 8, !tbaa !17
  %shr3 = lshr i64 %5, 16
  %conv4 = trunc i64 %shr3 to i8
  %6 = load ptr, ptr %p, align 8, !tbaa !4
  %arrayidx5 = getelementptr inbounds i8, ptr %6, i64 2
  store i8 %conv4, ptr %arrayidx5, align 1, !tbaa !19
  %7 = load i64, ptr %w.addr, align 8, !tbaa !17
  %shr6 = lshr i64 %7, 24
  %conv7 = trunc i64 %shr6 to i8
  %8 = load ptr, ptr %p, align 8, !tbaa !4
  %arrayidx8 = getelementptr inbounds i8, ptr %8, i64 3
  store i8 %conv7, ptr %arrayidx8, align 1, !tbaa !19
  %9 = load i64, ptr %w.addr, align 8, !tbaa !17
  %shr9 = lshr i64 %9, 32
  %conv10 = trunc i64 %shr9 to i8
  %10 = load ptr, ptr %p, align 8, !tbaa !4
  %arrayidx11 = getelementptr inbounds i8, ptr %10, i64 4
  store i8 %conv10, ptr %arrayidx11, align 1, !tbaa !19
  %11 = load i64, ptr %w.addr, align 8, !tbaa !17
  %shr12 = lshr i64 %11, 40
  %conv13 = trunc i64 %shr12 to i8
  %12 = load ptr, ptr %p, align 8, !tbaa !4
  %arrayidx14 = getelementptr inbounds i8, ptr %12, i64 5
  store i8 %conv13, ptr %arrayidx14, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #6
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define void @ossl_blake2s_param_set_digest_length(ptr noundef %P, i8 noundef zeroext %outlen) #0 {
entry:
  %P.addr = alloca ptr, align 8
  %outlen.addr = alloca i8, align 1
  store ptr %P, ptr %P.addr, align 8, !tbaa !4
  store i8 %outlen, ptr %outlen.addr, align 1, !tbaa !19
  %0 = load i8, ptr %outlen.addr, align 1, !tbaa !19
  %1 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %digest_length = getelementptr inbounds %struct.blake2s_param_st, ptr %1, i32 0, i32 0
  store i8 %0, ptr %digest_length, align 1, !tbaa !8
  ret void
}

; Function Attrs: nounwind uwtable
define void @ossl_blake2s_param_set_key_length(ptr noundef %P, i8 noundef zeroext %keylen) #0 {
entry:
  %P.addr = alloca ptr, align 8
  %keylen.addr = alloca i8, align 1
  store ptr %P, ptr %P.addr, align 8, !tbaa !4
  store i8 %keylen, ptr %keylen.addr, align 1, !tbaa !19
  %0 = load i8, ptr %keylen.addr, align 1, !tbaa !19
  %1 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %key_length = getelementptr inbounds %struct.blake2s_param_st, ptr %1, i32 0, i32 1
  store i8 %0, ptr %key_length, align 1, !tbaa !10
  ret void
}

; Function Attrs: nounwind uwtable
define void @ossl_blake2s_param_set_personal(ptr noundef %P, ptr noundef %personal, i64 noundef %len) #0 {
entry:
  %P.addr = alloca ptr, align 8
  %personal.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %P, ptr %P.addr, align 8, !tbaa !4
  store ptr %personal, ptr %personal.addr, align 8, !tbaa !4
  store i64 %len, ptr %len.addr, align 8, !tbaa !17
  %0 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %personal1 = getelementptr inbounds %struct.blake2s_param_st, ptr %0, i32 0, i32 9
  %arraydecay = getelementptr inbounds [8 x i8], ptr %personal1, i64 0, i64 0
  %1 = load ptr, ptr %personal.addr, align 8, !tbaa !4
  %2 = load i64, ptr %len.addr, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arraydecay, ptr align 1 %1, i64 %2, i1 false)
  %3 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %personal2 = getelementptr inbounds %struct.blake2s_param_st, ptr %3, i32 0, i32 9
  %arraydecay3 = getelementptr inbounds [8 x i8], ptr %personal2, i64 0, i64 0
  %4 = load i64, ptr %len.addr, align 8, !tbaa !17
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay3, i64 %4
  %5 = load i64, ptr %len.addr, align 8, !tbaa !17
  %sub = sub i64 8, %5
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr, i8 0, i64 %sub, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define void @ossl_blake2s_param_set_salt(ptr noundef %P, ptr noundef %salt, i64 noundef %len) #0 {
entry:
  %P.addr = alloca ptr, align 8
  %salt.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %P, ptr %P.addr, align 8, !tbaa !4
  store ptr %salt, ptr %salt.addr, align 8, !tbaa !4
  store i64 %len, ptr %len.addr, align 8, !tbaa !17
  %0 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %salt1 = getelementptr inbounds %struct.blake2s_param_st, ptr %0, i32 0, i32 8
  %arraydecay = getelementptr inbounds [8 x i8], ptr %salt1, i64 0, i64 0
  %1 = load ptr, ptr %salt.addr, align 8, !tbaa !4
  %2 = load i64, ptr %len.addr, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arraydecay, ptr align 1 %1, i64 %2, i1 false)
  %3 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %salt2 = getelementptr inbounds %struct.blake2s_param_st, ptr %3, i32 0, i32 8
  %arraydecay3 = getelementptr inbounds [8 x i8], ptr %salt2, i64 0, i64 0
  %4 = load i64, ptr %len.addr, align 8, !tbaa !17
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay3, i64 %4
  %5 = load i64, ptr %len.addr, align 8, !tbaa !17
  %sub = sub i64 8, %5
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr, i8 0, i64 %sub, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @ossl_blake2s_init(ptr noundef %c, ptr noundef %P) #0 {
entry:
  %c.addr = alloca ptr, align 8
  %P.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  store ptr %P, ptr %P.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %P.addr, align 8, !tbaa !4
  call void @blake2s_init_param(ptr noundef %0, ptr noundef %1)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @blake2s_init_param(ptr noundef %S, ptr noundef %P) #0 {
entry:
  %S.addr = alloca ptr, align 8
  %P.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %p = alloca ptr, align 8
  store ptr %S, ptr %S.addr, align 8, !tbaa !4
  store ptr %P, ptr %P.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #6
  %0 = load ptr, ptr %P.addr, align 8, !tbaa !4
  store ptr %0, ptr %p, align 8, !tbaa !4
  %1 = load ptr, ptr %S.addr, align 8, !tbaa !4
  call void @blake2s_init0(ptr noundef %1)
  %2 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %digest_length = getelementptr inbounds %struct.blake2s_param_st, ptr %2, i32 0, i32 0
  %3 = load i8, ptr %digest_length, align 1, !tbaa !8
  %conv = zext i8 %3 to i64
  %4 = load ptr, ptr %S.addr, align 8, !tbaa !4
  %outlen = getelementptr inbounds %struct.blake2s_ctx_st, ptr %4, i32 0, i32 5
  store i64 %conv, ptr %outlen, align 8, !tbaa !20
  store i64 0, ptr %i, align 8, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i64, ptr %i, align 8, !tbaa !17
  %cmp = icmp ult i64 %5, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %p, align 8, !tbaa !4
  %7 = load i64, ptr %i, align 8, !tbaa !17
  %mul = mul i64 %7, 4
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 %mul
  %call = call i32 @load32(ptr noundef %arrayidx)
  %8 = load ptr, ptr %S.addr, align 8, !tbaa !4
  %h = getelementptr inbounds %struct.blake2s_ctx_st, ptr %8, i32 0, i32 0
  %9 = load i64, ptr %i, align 8, !tbaa !17
  %arrayidx2 = getelementptr inbounds [8 x i32], ptr %h, i64 0, i64 %9
  %10 = load i32, ptr %arrayidx2, align 4, !tbaa !15
  %xor = xor i32 %10, %call
  store i32 %xor, ptr %arrayidx2, align 4, !tbaa !15
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i64, ptr %i, align 8, !tbaa !17
  %inc = add i64 %11, 1
  store i64 %inc, ptr %i, align 8, !tbaa !17
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #6
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @ossl_blake2s_init_key(ptr noundef %c, ptr noundef %P, ptr noundef %key) #0 {
entry:
  %c.addr = alloca ptr, align 8
  %P.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %block = alloca [64 x i8], align 16
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  store ptr %P, ptr %P.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %P.addr, align 8, !tbaa !4
  call void @blake2s_init_param(ptr noundef %0, ptr noundef %1)
  call void @llvm.lifetime.start.p0(i64 64, ptr %block) #6
  call void @llvm.memset.p0.i64(ptr align 16 %block, i8 0, i64 64, i1 false)
  %arraydecay = getelementptr inbounds [64 x i8], ptr %block, i64 0, i64 0
  %2 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %key_length = getelementptr inbounds %struct.blake2s_param_st, ptr %3, i32 0, i32 1
  %4 = load i8, ptr %key_length, align 1, !tbaa !10
  %conv = zext i8 %4 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arraydecay, ptr align 1 %2, i64 %conv, i1 false)
  %5 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %arraydecay1 = getelementptr inbounds [64 x i8], ptr %block, i64 0, i64 0
  %call = call i32 @ossl_blake2s_update(ptr noundef %5, ptr noundef %arraydecay1, i64 noundef 64)
  %arraydecay2 = getelementptr inbounds [64 x i8], ptr %block, i64 0, i64 0
  call void @OPENSSL_cleanse(ptr noundef %arraydecay2, i64 noundef 64)
  call void @llvm.lifetime.end.p0(i64 64, ptr %block) #6
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #4

; Function Attrs: nounwind uwtable
define i32 @ossl_blake2s_update(ptr noundef %c, ptr noundef %data, i64 noundef %datalen) #0 {
entry:
  %c.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %datalen.addr = alloca i64, align 8
  %in = alloca ptr, align 8
  %fill = alloca i64, align 8
  %stashlen = alloca i64, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  store i64 %datalen, ptr %datalen.addr, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %in) #6
  %0 = load ptr, ptr %data.addr, align 8, !tbaa !4
  store ptr %0, ptr %in, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %fill) #6
  %1 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %buflen = getelementptr inbounds %struct.blake2s_ctx_st, ptr %1, i32 0, i32 4
  %2 = load i64, ptr %buflen, align 8, !tbaa !24
  %sub = sub i64 64, %2
  store i64 %sub, ptr %fill, align 8, !tbaa !17
  %3 = load i64, ptr %datalen.addr, align 8, !tbaa !17
  %4 = load i64, ptr %fill, align 8, !tbaa !17
  %cmp = icmp ugt i64 %3, %4
  br i1 %cmp, label %if.then, label %if.end15

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %buflen1 = getelementptr inbounds %struct.blake2s_ctx_st, ptr %5, i32 0, i32 4
  %6 = load i64, ptr %buflen1, align 8, !tbaa !24
  %tobool = icmp ne i64 %6, 0
  br i1 %tobool, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %7 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %buf = getelementptr inbounds %struct.blake2s_ctx_st, ptr %7, i32 0, i32 3
  %arraydecay = getelementptr inbounds [64 x i8], ptr %buf, i64 0, i64 0
  %8 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %buflen3 = getelementptr inbounds %struct.blake2s_ctx_st, ptr %8, i32 0, i32 4
  %9 = load i64, ptr %buflen3, align 8, !tbaa !24
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay, i64 %9
  %10 = load ptr, ptr %in, align 8, !tbaa !4
  %11 = load i64, ptr %fill, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %10, i64 %11, i1 false)
  %12 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %buf4 = getelementptr inbounds %struct.blake2s_ctx_st, ptr %13, i32 0, i32 3
  %arraydecay5 = getelementptr inbounds [64 x i8], ptr %buf4, i64 0, i64 0
  call void @blake2s_compress(ptr noundef %12, ptr noundef %arraydecay5, i64 noundef 64)
  %14 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %buflen6 = getelementptr inbounds %struct.blake2s_ctx_st, ptr %14, i32 0, i32 4
  store i64 0, ptr %buflen6, align 8, !tbaa !24
  %15 = load i64, ptr %fill, align 8, !tbaa !17
  %16 = load ptr, ptr %in, align 8, !tbaa !4
  %add.ptr7 = getelementptr inbounds i8, ptr %16, i64 %15
  store ptr %add.ptr7, ptr %in, align 8, !tbaa !4
  %17 = load i64, ptr %fill, align 8, !tbaa !17
  %18 = load i64, ptr %datalen.addr, align 8, !tbaa !17
  %sub8 = sub i64 %18, %17
  store i64 %sub8, ptr %datalen.addr, align 8, !tbaa !17
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %19 = load i64, ptr %datalen.addr, align 8, !tbaa !17
  %cmp9 = icmp ugt i64 %19, 64
  br i1 %cmp9, label %if.then10, label %if.end14

if.then10:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %stashlen) #6
  %20 = load i64, ptr %datalen.addr, align 8, !tbaa !17
  %rem = urem i64 %20, 64
  store i64 %rem, ptr %stashlen, align 8, !tbaa !17
  %21 = load i64, ptr %stashlen, align 8, !tbaa !17
  %tobool11 = icmp ne i64 %21, 0
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then10
  %22 = load i64, ptr %stashlen, align 8, !tbaa !17
  br label %cond.end

cond.false:                                       ; preds = %if.then10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %22, %cond.true ], [ 64, %cond.false ]
  store i64 %cond, ptr %stashlen, align 8, !tbaa !17
  %23 = load i64, ptr %stashlen, align 8, !tbaa !17
  %24 = load i64, ptr %datalen.addr, align 8, !tbaa !17
  %sub12 = sub i64 %24, %23
  store i64 %sub12, ptr %datalen.addr, align 8, !tbaa !17
  %25 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %26 = load ptr, ptr %in, align 8, !tbaa !4
  %27 = load i64, ptr %datalen.addr, align 8, !tbaa !17
  call void @blake2s_compress(ptr noundef %25, ptr noundef %26, i64 noundef %27)
  %28 = load i64, ptr %datalen.addr, align 8, !tbaa !17
  %29 = load ptr, ptr %in, align 8, !tbaa !4
  %add.ptr13 = getelementptr inbounds i8, ptr %29, i64 %28
  store ptr %add.ptr13, ptr %in, align 8, !tbaa !4
  %30 = load i64, ptr %stashlen, align 8, !tbaa !17
  store i64 %30, ptr %datalen.addr, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 8, ptr %stashlen) #6
  br label %if.end14

if.end14:                                         ; preds = %cond.end, %if.end
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %entry
  %31 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %buf16 = getelementptr inbounds %struct.blake2s_ctx_st, ptr %31, i32 0, i32 3
  %arraydecay17 = getelementptr inbounds [64 x i8], ptr %buf16, i64 0, i64 0
  %32 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %buflen18 = getelementptr inbounds %struct.blake2s_ctx_st, ptr %32, i32 0, i32 4
  %33 = load i64, ptr %buflen18, align 8, !tbaa !24
  %add.ptr19 = getelementptr inbounds i8, ptr %arraydecay17, i64 %33
  %34 = load ptr, ptr %in, align 8, !tbaa !4
  %35 = load i64, ptr %datalen.addr, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr19, ptr align 1 %34, i64 %35, i1 false)
  %36 = load i64, ptr %datalen.addr, align 8, !tbaa !17
  %37 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %buflen20 = getelementptr inbounds %struct.blake2s_ctx_st, ptr %37, i32 0, i32 4
  %38 = load i64, ptr %buflen20, align 8, !tbaa !24
  %add = add i64 %38, %36
  store i64 %add, ptr %buflen20, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(i64 8, ptr %fill) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %in) #6
  ret i32 1
}

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #4

; Function Attrs: nounwind uwtable
define internal void @blake2s_compress(ptr noundef %S, ptr noundef %blocks, i64 noundef %len) #0 {
entry:
  %S.addr = alloca ptr, align 8
  %blocks.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %m = alloca [16 x i32], align 16
  %v = alloca [16 x i32], align 16
  %i = alloca i64, align 8
  %increment = alloca i64, align 8
  store ptr %S, ptr %S.addr, align 8, !tbaa !4
  store ptr %blocks, ptr %blocks.addr, align 8, !tbaa !4
  store i64 %len, ptr %len.addr, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 64, ptr %m) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr %v) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %increment) #6
  %0 = load i64, ptr %len.addr, align 8, !tbaa !17
  %cmp = icmp ult i64 %0, 64
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i64, ptr %len.addr, align 8, !tbaa !17
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %1, %cond.true ], [ 64, %cond.false ]
  store i64 %cond, ptr %increment, align 8, !tbaa !17
  store i64 0, ptr %i, align 8, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %2 = load i64, ptr %i, align 8, !tbaa !17
  %cmp1 = icmp ult i64 %2, 8
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %S.addr, align 8, !tbaa !4
  %h = getelementptr inbounds %struct.blake2s_ctx_st, ptr %3, i32 0, i32 0
  %4 = load i64, ptr %i, align 8, !tbaa !17
  %arrayidx = getelementptr inbounds [8 x i32], ptr %h, i64 0, i64 %4
  %5 = load i32, ptr %arrayidx, align 4, !tbaa !15
  %6 = load i64, ptr %i, align 8, !tbaa !17
  %arrayidx2 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 %6
  store i32 %5, ptr %arrayidx2, align 4, !tbaa !15
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i64, ptr %i, align 8, !tbaa !17
  %inc = add i64 %7, 1
  store i64 %inc, ptr %i, align 8, !tbaa !17
  br label %for.cond, !llvm.loop !25

for.end:                                          ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %do.cond3682, %for.end
  store i64 0, ptr %i, align 8, !tbaa !17
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc7, %do.body
  %8 = load i64, ptr %i, align 8, !tbaa !17
  %cmp4 = icmp ult i64 %8, 16
  br i1 %cmp4, label %for.body5, label %for.end9

for.body5:                                        ; preds = %for.cond3
  %9 = load ptr, ptr %blocks.addr, align 8, !tbaa !4
  %10 = load i64, ptr %i, align 8, !tbaa !17
  %mul = mul i64 %10, 4
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %mul
  %call = call i32 @load32(ptr noundef %add.ptr)
  %11 = load i64, ptr %i, align 8, !tbaa !17
  %arrayidx6 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %11
  store i32 %call, ptr %arrayidx6, align 4, !tbaa !15
  br label %for.inc7

for.inc7:                                         ; preds = %for.body5
  %12 = load i64, ptr %i, align 8, !tbaa !17
  %inc8 = add i64 %12, 1
  store i64 %inc8, ptr %i, align 8, !tbaa !17
  br label %for.cond3, !llvm.loop !26

for.end9:                                         ; preds = %for.cond3
  %13 = load i64, ptr %increment, align 8, !tbaa !17
  %14 = load ptr, ptr %S.addr, align 8, !tbaa !4
  %t = getelementptr inbounds %struct.blake2s_ctx_st, ptr %14, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [2 x i32], ptr %t, i64 0, i64 0
  %15 = load i32, ptr %arrayidx10, align 8, !tbaa !15
  %conv = zext i32 %15 to i64
  %add = add i64 %conv, %13
  %conv11 = trunc i64 %add to i32
  store i32 %conv11, ptr %arrayidx10, align 8, !tbaa !15
  %16 = load ptr, ptr %S.addr, align 8, !tbaa !4
  %t12 = getelementptr inbounds %struct.blake2s_ctx_st, ptr %16, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [2 x i32], ptr %t12, i64 0, i64 0
  %17 = load i32, ptr %arrayidx13, align 8, !tbaa !15
  %conv14 = zext i32 %17 to i64
  %18 = load i64, ptr %increment, align 8, !tbaa !17
  %cmp15 = icmp ult i64 %conv14, %18
  %conv16 = zext i1 %cmp15 to i32
  %19 = load ptr, ptr %S.addr, align 8, !tbaa !4
  %t17 = getelementptr inbounds %struct.blake2s_ctx_st, ptr %19, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [2 x i32], ptr %t17, i64 0, i64 1
  %20 = load i32, ptr %arrayidx18, align 4, !tbaa !15
  %add19 = add i32 %20, %conv16
  store i32 %add19, ptr %arrayidx18, align 4, !tbaa !15
  %21 = load i32, ptr @blake2s_IV, align 16, !tbaa !15
  %arrayidx20 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  store i32 %21, ptr %arrayidx20, align 16, !tbaa !15
  %22 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @blake2s_IV, i64 0, i64 1), align 4, !tbaa !15
  %arrayidx21 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  store i32 %22, ptr %arrayidx21, align 4, !tbaa !15
  %23 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @blake2s_IV, i64 0, i64 2), align 8, !tbaa !15
  %arrayidx22 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  store i32 %23, ptr %arrayidx22, align 8, !tbaa !15
  %24 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @blake2s_IV, i64 0, i64 3), align 4, !tbaa !15
  %arrayidx23 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  store i32 %24, ptr %arrayidx23, align 4, !tbaa !15
  %25 = load ptr, ptr %S.addr, align 8, !tbaa !4
  %t24 = getelementptr inbounds %struct.blake2s_ctx_st, ptr %25, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [2 x i32], ptr %t24, i64 0, i64 0
  %26 = load i32, ptr %arrayidx25, align 8, !tbaa !15
  %27 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @blake2s_IV, i64 0, i64 4), align 16, !tbaa !15
  %xor = xor i32 %26, %27
  %arrayidx26 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  store i32 %xor, ptr %arrayidx26, align 16, !tbaa !15
  %28 = load ptr, ptr %S.addr, align 8, !tbaa !4
  %t27 = getelementptr inbounds %struct.blake2s_ctx_st, ptr %28, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [2 x i32], ptr %t27, i64 0, i64 1
  %29 = load i32, ptr %arrayidx28, align 4, !tbaa !15
  %30 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @blake2s_IV, i64 0, i64 5), align 4, !tbaa !15
  %xor29 = xor i32 %29, %30
  %arrayidx30 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  store i32 %xor29, ptr %arrayidx30, align 4, !tbaa !15
  %31 = load ptr, ptr %S.addr, align 8, !tbaa !4
  %f = getelementptr inbounds %struct.blake2s_ctx_st, ptr %31, i32 0, i32 2
  %arrayidx31 = getelementptr inbounds [2 x i32], ptr %f, i64 0, i64 0
  %32 = load i32, ptr %arrayidx31, align 8, !tbaa !15
  %33 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @blake2s_IV, i64 0, i64 6), align 8, !tbaa !15
  %xor32 = xor i32 %32, %33
  %arrayidx33 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  store i32 %xor32, ptr %arrayidx33, align 8, !tbaa !15
  %34 = load ptr, ptr %S.addr, align 8, !tbaa !4
  %f34 = getelementptr inbounds %struct.blake2s_ctx_st, ptr %34, i32 0, i32 2
  %arrayidx35 = getelementptr inbounds [2 x i32], ptr %f34, i64 0, i64 1
  %35 = load i32, ptr %arrayidx35, align 4, !tbaa !15
  %36 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @blake2s_IV, i64 0, i64 7), align 4, !tbaa !15
  %xor36 = xor i32 %35, %36
  %arrayidx37 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  store i32 %xor36, ptr %arrayidx37, align 4, !tbaa !15
  br label %do.body38

do.body38:                                        ; preds = %for.end9
  br label %do.body39

do.body39:                                        ; preds = %do.body38
  %arrayidx40 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %37 = load i32, ptr %arrayidx40, align 16, !tbaa !15
  %arrayidx41 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %38 = load i32, ptr %arrayidx41, align 16, !tbaa !15
  %add42 = add i32 %37, %38
  %39 = load i8, ptr @blake2s_sigma, align 16, !tbaa !19
  %idxprom = zext i8 %39 to i64
  %arrayidx43 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom
  %40 = load i32, ptr %arrayidx43, align 4, !tbaa !15
  %add44 = add i32 %add42, %40
  %arrayidx45 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  store i32 %add44, ptr %arrayidx45, align 16, !tbaa !15
  %arrayidx46 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %41 = load i32, ptr %arrayidx46, align 16, !tbaa !15
  %arrayidx47 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %42 = load i32, ptr %arrayidx47, align 16, !tbaa !15
  %xor48 = xor i32 %41, %42
  %call49 = call i32 @rotr32(i32 noundef %xor48, i32 noundef 16)
  %arrayidx50 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  store i32 %call49, ptr %arrayidx50, align 16, !tbaa !15
  %arrayidx51 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %43 = load i32, ptr %arrayidx51, align 16, !tbaa !15
  %arrayidx52 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %44 = load i32, ptr %arrayidx52, align 16, !tbaa !15
  %add53 = add i32 %43, %44
  %arrayidx54 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  store i32 %add53, ptr %arrayidx54, align 16, !tbaa !15
  %arrayidx55 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %45 = load i32, ptr %arrayidx55, align 16, !tbaa !15
  %arrayidx56 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %46 = load i32, ptr %arrayidx56, align 16, !tbaa !15
  %xor57 = xor i32 %45, %46
  %call58 = call i32 @rotr32(i32 noundef %xor57, i32 noundef 12)
  %arrayidx59 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  store i32 %call58, ptr %arrayidx59, align 16, !tbaa !15
  %arrayidx60 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %47 = load i32, ptr %arrayidx60, align 16, !tbaa !15
  %arrayidx61 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %48 = load i32, ptr %arrayidx61, align 16, !tbaa !15
  %add62 = add i32 %47, %48
  %49 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @blake2s_sigma, i64 0, i64 1), align 1, !tbaa !19
  %idxprom63 = zext i8 %49 to i64
  %arrayidx64 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom63
  %50 = load i32, ptr %arrayidx64, align 4, !tbaa !15
  %add65 = add i32 %add62, %50
  %arrayidx66 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  store i32 %add65, ptr %arrayidx66, align 16, !tbaa !15
  %arrayidx67 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %51 = load i32, ptr %arrayidx67, align 16, !tbaa !15
  %arrayidx68 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %52 = load i32, ptr %arrayidx68, align 16, !tbaa !15
  %xor69 = xor i32 %51, %52
  %call70 = call i32 @rotr32(i32 noundef %xor69, i32 noundef 8)
  %arrayidx71 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  store i32 %call70, ptr %arrayidx71, align 16, !tbaa !15
  %arrayidx72 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %53 = load i32, ptr %arrayidx72, align 16, !tbaa !15
  %arrayidx73 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %54 = load i32, ptr %arrayidx73, align 16, !tbaa !15
  %add74 = add i32 %53, %54
  %arrayidx75 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  store i32 %add74, ptr %arrayidx75, align 16, !tbaa !15
  %arrayidx76 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %55 = load i32, ptr %arrayidx76, align 16, !tbaa !15
  %arrayidx77 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %56 = load i32, ptr %arrayidx77, align 16, !tbaa !15
  %xor78 = xor i32 %55, %56
  %call79 = call i32 @rotr32(i32 noundef %xor78, i32 noundef 7)
  %arrayidx80 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  store i32 %call79, ptr %arrayidx80, align 16, !tbaa !15
  br label %do.cond

do.cond:                                          ; preds = %do.body39
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body81

do.body81:                                        ; preds = %do.end
  %arrayidx82 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %57 = load i32, ptr %arrayidx82, align 4, !tbaa !15
  %arrayidx83 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %58 = load i32, ptr %arrayidx83, align 4, !tbaa !15
  %add84 = add i32 %57, %58
  %59 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @blake2s_sigma, i64 0, i64 2), align 2, !tbaa !19
  %idxprom85 = zext i8 %59 to i64
  %arrayidx86 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom85
  %60 = load i32, ptr %arrayidx86, align 4, !tbaa !15
  %add87 = add i32 %add84, %60
  %arrayidx88 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  store i32 %add87, ptr %arrayidx88, align 4, !tbaa !15
  %arrayidx89 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %61 = load i32, ptr %arrayidx89, align 4, !tbaa !15
  %arrayidx90 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %62 = load i32, ptr %arrayidx90, align 4, !tbaa !15
  %xor91 = xor i32 %61, %62
  %call92 = call i32 @rotr32(i32 noundef %xor91, i32 noundef 16)
  %arrayidx93 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  store i32 %call92, ptr %arrayidx93, align 4, !tbaa !15
  %arrayidx94 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %63 = load i32, ptr %arrayidx94, align 4, !tbaa !15
  %arrayidx95 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %64 = load i32, ptr %arrayidx95, align 4, !tbaa !15
  %add96 = add i32 %63, %64
  %arrayidx97 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  store i32 %add96, ptr %arrayidx97, align 4, !tbaa !15
  %arrayidx98 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %65 = load i32, ptr %arrayidx98, align 4, !tbaa !15
  %arrayidx99 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %66 = load i32, ptr %arrayidx99, align 4, !tbaa !15
  %xor100 = xor i32 %65, %66
  %call101 = call i32 @rotr32(i32 noundef %xor100, i32 noundef 12)
  %arrayidx102 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  store i32 %call101, ptr %arrayidx102, align 4, !tbaa !15
  %arrayidx103 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %67 = load i32, ptr %arrayidx103, align 4, !tbaa !15
  %arrayidx104 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %68 = load i32, ptr %arrayidx104, align 4, !tbaa !15
  %add105 = add i32 %67, %68
  %69 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @blake2s_sigma, i64 0, i64 3), align 1, !tbaa !19
  %idxprom106 = zext i8 %69 to i64
  %arrayidx107 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom106
  %70 = load i32, ptr %arrayidx107, align 4, !tbaa !15
  %add108 = add i32 %add105, %70
  %arrayidx109 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  store i32 %add108, ptr %arrayidx109, align 4, !tbaa !15
  %arrayidx110 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %71 = load i32, ptr %arrayidx110, align 4, !tbaa !15
  %arrayidx111 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %72 = load i32, ptr %arrayidx111, align 4, !tbaa !15
  %xor112 = xor i32 %71, %72
  %call113 = call i32 @rotr32(i32 noundef %xor112, i32 noundef 8)
  %arrayidx114 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  store i32 %call113, ptr %arrayidx114, align 4, !tbaa !15
  %arrayidx115 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %73 = load i32, ptr %arrayidx115, align 4, !tbaa !15
  %arrayidx116 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %74 = load i32, ptr %arrayidx116, align 4, !tbaa !15
  %add117 = add i32 %73, %74
  %arrayidx118 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  store i32 %add117, ptr %arrayidx118, align 4, !tbaa !15
  %arrayidx119 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %75 = load i32, ptr %arrayidx119, align 4, !tbaa !15
  %arrayidx120 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %76 = load i32, ptr %arrayidx120, align 4, !tbaa !15
  %xor121 = xor i32 %75, %76
  %call122 = call i32 @rotr32(i32 noundef %xor121, i32 noundef 7)
  %arrayidx123 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  store i32 %call122, ptr %arrayidx123, align 4, !tbaa !15
  br label %do.cond124

do.cond124:                                       ; preds = %do.body81
  br label %do.end125

do.end125:                                        ; preds = %do.cond124
  br label %do.body126

do.body126:                                       ; preds = %do.end125
  %arrayidx127 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %77 = load i32, ptr %arrayidx127, align 8, !tbaa !15
  %arrayidx128 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %78 = load i32, ptr %arrayidx128, align 8, !tbaa !15
  %add129 = add i32 %77, %78
  %79 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @blake2s_sigma, i64 0, i64 4), align 4, !tbaa !19
  %idxprom130 = zext i8 %79 to i64
  %arrayidx131 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom130
  %80 = load i32, ptr %arrayidx131, align 4, !tbaa !15
  %add132 = add i32 %add129, %80
  %arrayidx133 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  store i32 %add132, ptr %arrayidx133, align 8, !tbaa !15
  %arrayidx134 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %81 = load i32, ptr %arrayidx134, align 8, !tbaa !15
  %arrayidx135 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %82 = load i32, ptr %arrayidx135, align 8, !tbaa !15
  %xor136 = xor i32 %81, %82
  %call137 = call i32 @rotr32(i32 noundef %xor136, i32 noundef 16)
  %arrayidx138 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  store i32 %call137, ptr %arrayidx138, align 8, !tbaa !15
  %arrayidx139 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %83 = load i32, ptr %arrayidx139, align 8, !tbaa !15
  %arrayidx140 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %84 = load i32, ptr %arrayidx140, align 8, !tbaa !15
  %add141 = add i32 %83, %84
  %arrayidx142 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  store i32 %add141, ptr %arrayidx142, align 8, !tbaa !15
  %arrayidx143 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %85 = load i32, ptr %arrayidx143, align 8, !tbaa !15
  %arrayidx144 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %86 = load i32, ptr %arrayidx144, align 8, !tbaa !15
  %xor145 = xor i32 %85, %86
  %call146 = call i32 @rotr32(i32 noundef %xor145, i32 noundef 12)
  %arrayidx147 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  store i32 %call146, ptr %arrayidx147, align 8, !tbaa !15
  %arrayidx148 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %87 = load i32, ptr %arrayidx148, align 8, !tbaa !15
  %arrayidx149 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %88 = load i32, ptr %arrayidx149, align 8, !tbaa !15
  %add150 = add i32 %87, %88
  %89 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @blake2s_sigma, i64 0, i64 5), align 1, !tbaa !19
  %idxprom151 = zext i8 %89 to i64
  %arrayidx152 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom151
  %90 = load i32, ptr %arrayidx152, align 4, !tbaa !15
  %add153 = add i32 %add150, %90
  %arrayidx154 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  store i32 %add153, ptr %arrayidx154, align 8, !tbaa !15
  %arrayidx155 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %91 = load i32, ptr %arrayidx155, align 8, !tbaa !15
  %arrayidx156 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %92 = load i32, ptr %arrayidx156, align 8, !tbaa !15
  %xor157 = xor i32 %91, %92
  %call158 = call i32 @rotr32(i32 noundef %xor157, i32 noundef 8)
  %arrayidx159 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  store i32 %call158, ptr %arrayidx159, align 8, !tbaa !15
  %arrayidx160 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %93 = load i32, ptr %arrayidx160, align 8, !tbaa !15
  %arrayidx161 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %94 = load i32, ptr %arrayidx161, align 8, !tbaa !15
  %add162 = add i32 %93, %94
  %arrayidx163 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  store i32 %add162, ptr %arrayidx163, align 8, !tbaa !15
  %arrayidx164 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %95 = load i32, ptr %arrayidx164, align 8, !tbaa !15
  %arrayidx165 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %96 = load i32, ptr %arrayidx165, align 8, !tbaa !15
  %xor166 = xor i32 %95, %96
  %call167 = call i32 @rotr32(i32 noundef %xor166, i32 noundef 7)
  %arrayidx168 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  store i32 %call167, ptr %arrayidx168, align 8, !tbaa !15
  br label %do.cond169

do.cond169:                                       ; preds = %do.body126
  br label %do.end170

do.end170:                                        ; preds = %do.cond169
  br label %do.body171

do.body171:                                       ; preds = %do.end170
  %arrayidx172 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %97 = load i32, ptr %arrayidx172, align 4, !tbaa !15
  %arrayidx173 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %98 = load i32, ptr %arrayidx173, align 4, !tbaa !15
  %add174 = add i32 %97, %98
  %99 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @blake2s_sigma, i64 0, i64 6), align 2, !tbaa !19
  %idxprom175 = zext i8 %99 to i64
  %arrayidx176 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom175
  %100 = load i32, ptr %arrayidx176, align 4, !tbaa !15
  %add177 = add i32 %add174, %100
  %arrayidx178 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  store i32 %add177, ptr %arrayidx178, align 4, !tbaa !15
  %arrayidx179 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %101 = load i32, ptr %arrayidx179, align 4, !tbaa !15
  %arrayidx180 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %102 = load i32, ptr %arrayidx180, align 4, !tbaa !15
  %xor181 = xor i32 %101, %102
  %call182 = call i32 @rotr32(i32 noundef %xor181, i32 noundef 16)
  %arrayidx183 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  store i32 %call182, ptr %arrayidx183, align 4, !tbaa !15
  %arrayidx184 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %103 = load i32, ptr %arrayidx184, align 4, !tbaa !15
  %arrayidx185 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %104 = load i32, ptr %arrayidx185, align 4, !tbaa !15
  %add186 = add i32 %103, %104
  %arrayidx187 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  store i32 %add186, ptr %arrayidx187, align 4, !tbaa !15
  %arrayidx188 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %105 = load i32, ptr %arrayidx188, align 4, !tbaa !15
  %arrayidx189 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %106 = load i32, ptr %arrayidx189, align 4, !tbaa !15
  %xor190 = xor i32 %105, %106
  %call191 = call i32 @rotr32(i32 noundef %xor190, i32 noundef 12)
  %arrayidx192 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  store i32 %call191, ptr %arrayidx192, align 4, !tbaa !15
  %arrayidx193 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %107 = load i32, ptr %arrayidx193, align 4, !tbaa !15
  %arrayidx194 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %108 = load i32, ptr %arrayidx194, align 4, !tbaa !15
  %add195 = add i32 %107, %108
  %109 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @blake2s_sigma, i64 0, i64 7), align 1, !tbaa !19
  %idxprom196 = zext i8 %109 to i64
  %arrayidx197 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom196
  %110 = load i32, ptr %arrayidx197, align 4, !tbaa !15
  %add198 = add i32 %add195, %110
  %arrayidx199 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  store i32 %add198, ptr %arrayidx199, align 4, !tbaa !15
  %arrayidx200 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %111 = load i32, ptr %arrayidx200, align 4, !tbaa !15
  %arrayidx201 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %112 = load i32, ptr %arrayidx201, align 4, !tbaa !15
  %xor202 = xor i32 %111, %112
  %call203 = call i32 @rotr32(i32 noundef %xor202, i32 noundef 8)
  %arrayidx204 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  store i32 %call203, ptr %arrayidx204, align 4, !tbaa !15
  %arrayidx205 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %113 = load i32, ptr %arrayidx205, align 4, !tbaa !15
  %arrayidx206 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %114 = load i32, ptr %arrayidx206, align 4, !tbaa !15
  %add207 = add i32 %113, %114
  %arrayidx208 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  store i32 %add207, ptr %arrayidx208, align 4, !tbaa !15
  %arrayidx209 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %115 = load i32, ptr %arrayidx209, align 4, !tbaa !15
  %arrayidx210 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %116 = load i32, ptr %arrayidx210, align 4, !tbaa !15
  %xor211 = xor i32 %115, %116
  %call212 = call i32 @rotr32(i32 noundef %xor211, i32 noundef 7)
  %arrayidx213 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  store i32 %call212, ptr %arrayidx213, align 4, !tbaa !15
  br label %do.cond214

do.cond214:                                       ; preds = %do.body171
  br label %do.end215

do.end215:                                        ; preds = %do.cond214
  br label %do.body216

do.body216:                                       ; preds = %do.end215
  %arrayidx217 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %117 = load i32, ptr %arrayidx217, align 16, !tbaa !15
  %arrayidx218 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %118 = load i32, ptr %arrayidx218, align 4, !tbaa !15
  %add219 = add i32 %117, %118
  %119 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @blake2s_sigma, i64 0, i64 8), align 8, !tbaa !19
  %idxprom220 = zext i8 %119 to i64
  %arrayidx221 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom220
  %120 = load i32, ptr %arrayidx221, align 4, !tbaa !15
  %add222 = add i32 %add219, %120
  %arrayidx223 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  store i32 %add222, ptr %arrayidx223, align 16, !tbaa !15
  %arrayidx224 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %121 = load i32, ptr %arrayidx224, align 4, !tbaa !15
  %arrayidx225 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %122 = load i32, ptr %arrayidx225, align 16, !tbaa !15
  %xor226 = xor i32 %121, %122
  %call227 = call i32 @rotr32(i32 noundef %xor226, i32 noundef 16)
  %arrayidx228 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  store i32 %call227, ptr %arrayidx228, align 4, !tbaa !15
  %arrayidx229 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %123 = load i32, ptr %arrayidx229, align 8, !tbaa !15
  %arrayidx230 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %124 = load i32, ptr %arrayidx230, align 4, !tbaa !15
  %add231 = add i32 %123, %124
  %arrayidx232 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  store i32 %add231, ptr %arrayidx232, align 8, !tbaa !15
  %arrayidx233 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %125 = load i32, ptr %arrayidx233, align 4, !tbaa !15
  %arrayidx234 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %126 = load i32, ptr %arrayidx234, align 8, !tbaa !15
  %xor235 = xor i32 %125, %126
  %call236 = call i32 @rotr32(i32 noundef %xor235, i32 noundef 12)
  %arrayidx237 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  store i32 %call236, ptr %arrayidx237, align 4, !tbaa !15
  %arrayidx238 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %127 = load i32, ptr %arrayidx238, align 16, !tbaa !15
  %arrayidx239 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %128 = load i32, ptr %arrayidx239, align 4, !tbaa !15
  %add240 = add i32 %127, %128
  %129 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @blake2s_sigma, i64 0, i64 9), align 1, !tbaa !19
  %idxprom241 = zext i8 %129 to i64
  %arrayidx242 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom241
  %130 = load i32, ptr %arrayidx242, align 4, !tbaa !15
  %add243 = add i32 %add240, %130
  %arrayidx244 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  store i32 %add243, ptr %arrayidx244, align 16, !tbaa !15
  %arrayidx245 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %131 = load i32, ptr %arrayidx245, align 4, !tbaa !15
  %arrayidx246 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %132 = load i32, ptr %arrayidx246, align 16, !tbaa !15
  %xor247 = xor i32 %131, %132
  %call248 = call i32 @rotr32(i32 noundef %xor247, i32 noundef 8)
  %arrayidx249 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  store i32 %call248, ptr %arrayidx249, align 4, !tbaa !15
  %arrayidx250 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %133 = load i32, ptr %arrayidx250, align 8, !tbaa !15
  %arrayidx251 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %134 = load i32, ptr %arrayidx251, align 4, !tbaa !15
  %add252 = add i32 %133, %134
  %arrayidx253 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  store i32 %add252, ptr %arrayidx253, align 8, !tbaa !15
  %arrayidx254 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %135 = load i32, ptr %arrayidx254, align 4, !tbaa !15
  %arrayidx255 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %136 = load i32, ptr %arrayidx255, align 8, !tbaa !15
  %xor256 = xor i32 %135, %136
  %call257 = call i32 @rotr32(i32 noundef %xor256, i32 noundef 7)
  %arrayidx258 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  store i32 %call257, ptr %arrayidx258, align 4, !tbaa !15
  br label %do.cond259

do.cond259:                                       ; preds = %do.body216
  br label %do.end260

do.end260:                                        ; preds = %do.cond259
  br label %do.body261

do.body261:                                       ; preds = %do.end260
  %arrayidx262 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %137 = load i32, ptr %arrayidx262, align 4, !tbaa !15
  %arrayidx263 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %138 = load i32, ptr %arrayidx263, align 8, !tbaa !15
  %add264 = add i32 %137, %138
  %139 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @blake2s_sigma, i64 0, i64 10), align 2, !tbaa !19
  %idxprom265 = zext i8 %139 to i64
  %arrayidx266 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom265
  %140 = load i32, ptr %arrayidx266, align 4, !tbaa !15
  %add267 = add i32 %add264, %140
  %arrayidx268 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  store i32 %add267, ptr %arrayidx268, align 4, !tbaa !15
  %arrayidx269 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %141 = load i32, ptr %arrayidx269, align 16, !tbaa !15
  %arrayidx270 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %142 = load i32, ptr %arrayidx270, align 4, !tbaa !15
  %xor271 = xor i32 %141, %142
  %call272 = call i32 @rotr32(i32 noundef %xor271, i32 noundef 16)
  %arrayidx273 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  store i32 %call272, ptr %arrayidx273, align 16, !tbaa !15
  %arrayidx274 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %143 = load i32, ptr %arrayidx274, align 4, !tbaa !15
  %arrayidx275 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %144 = load i32, ptr %arrayidx275, align 16, !tbaa !15
  %add276 = add i32 %143, %144
  %arrayidx277 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  store i32 %add276, ptr %arrayidx277, align 4, !tbaa !15
  %arrayidx278 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %145 = load i32, ptr %arrayidx278, align 8, !tbaa !15
  %arrayidx279 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %146 = load i32, ptr %arrayidx279, align 4, !tbaa !15
  %xor280 = xor i32 %145, %146
  %call281 = call i32 @rotr32(i32 noundef %xor280, i32 noundef 12)
  %arrayidx282 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  store i32 %call281, ptr %arrayidx282, align 8, !tbaa !15
  %arrayidx283 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %147 = load i32, ptr %arrayidx283, align 4, !tbaa !15
  %arrayidx284 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %148 = load i32, ptr %arrayidx284, align 8, !tbaa !15
  %add285 = add i32 %147, %148
  %149 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @blake2s_sigma, i64 0, i64 11), align 1, !tbaa !19
  %idxprom286 = zext i8 %149 to i64
  %arrayidx287 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom286
  %150 = load i32, ptr %arrayidx287, align 4, !tbaa !15
  %add288 = add i32 %add285, %150
  %arrayidx289 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  store i32 %add288, ptr %arrayidx289, align 4, !tbaa !15
  %arrayidx290 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %151 = load i32, ptr %arrayidx290, align 16, !tbaa !15
  %arrayidx291 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %152 = load i32, ptr %arrayidx291, align 4, !tbaa !15
  %xor292 = xor i32 %151, %152
  %call293 = call i32 @rotr32(i32 noundef %xor292, i32 noundef 8)
  %arrayidx294 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  store i32 %call293, ptr %arrayidx294, align 16, !tbaa !15
  %arrayidx295 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %153 = load i32, ptr %arrayidx295, align 4, !tbaa !15
  %arrayidx296 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %154 = load i32, ptr %arrayidx296, align 16, !tbaa !15
  %add297 = add i32 %153, %154
  %arrayidx298 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  store i32 %add297, ptr %arrayidx298, align 4, !tbaa !15
  %arrayidx299 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %155 = load i32, ptr %arrayidx299, align 8, !tbaa !15
  %arrayidx300 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %156 = load i32, ptr %arrayidx300, align 4, !tbaa !15
  %xor301 = xor i32 %155, %156
  %call302 = call i32 @rotr32(i32 noundef %xor301, i32 noundef 7)
  %arrayidx303 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  store i32 %call302, ptr %arrayidx303, align 8, !tbaa !15
  br label %do.cond304

do.cond304:                                       ; preds = %do.body261
  br label %do.end305

do.end305:                                        ; preds = %do.cond304
  br label %do.body306

do.body306:                                       ; preds = %do.end305
  %arrayidx307 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %157 = load i32, ptr %arrayidx307, align 8, !tbaa !15
  %arrayidx308 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %158 = load i32, ptr %arrayidx308, align 4, !tbaa !15
  %add309 = add i32 %157, %158
  %159 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @blake2s_sigma, i64 0, i64 12), align 4, !tbaa !19
  %idxprom310 = zext i8 %159 to i64
  %arrayidx311 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom310
  %160 = load i32, ptr %arrayidx311, align 4, !tbaa !15
  %add312 = add i32 %add309, %160
  %arrayidx313 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  store i32 %add312, ptr %arrayidx313, align 8, !tbaa !15
  %arrayidx314 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %161 = load i32, ptr %arrayidx314, align 4, !tbaa !15
  %arrayidx315 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %162 = load i32, ptr %arrayidx315, align 8, !tbaa !15
  %xor316 = xor i32 %161, %162
  %call317 = call i32 @rotr32(i32 noundef %xor316, i32 noundef 16)
  %arrayidx318 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  store i32 %call317, ptr %arrayidx318, align 4, !tbaa !15
  %arrayidx319 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %163 = load i32, ptr %arrayidx319, align 16, !tbaa !15
  %arrayidx320 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %164 = load i32, ptr %arrayidx320, align 4, !tbaa !15
  %add321 = add i32 %163, %164
  %arrayidx322 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  store i32 %add321, ptr %arrayidx322, align 16, !tbaa !15
  %arrayidx323 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %165 = load i32, ptr %arrayidx323, align 4, !tbaa !15
  %arrayidx324 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %166 = load i32, ptr %arrayidx324, align 16, !tbaa !15
  %xor325 = xor i32 %165, %166
  %call326 = call i32 @rotr32(i32 noundef %xor325, i32 noundef 12)
  %arrayidx327 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  store i32 %call326, ptr %arrayidx327, align 4, !tbaa !15
  %arrayidx328 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %167 = load i32, ptr %arrayidx328, align 8, !tbaa !15
  %arrayidx329 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %168 = load i32, ptr %arrayidx329, align 4, !tbaa !15
  %add330 = add i32 %167, %168
  %169 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @blake2s_sigma, i64 0, i64 13), align 1, !tbaa !19
  %idxprom331 = zext i8 %169 to i64
  %arrayidx332 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom331
  %170 = load i32, ptr %arrayidx332, align 4, !tbaa !15
  %add333 = add i32 %add330, %170
  %arrayidx334 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  store i32 %add333, ptr %arrayidx334, align 8, !tbaa !15
  %arrayidx335 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %171 = load i32, ptr %arrayidx335, align 4, !tbaa !15
  %arrayidx336 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %172 = load i32, ptr %arrayidx336, align 8, !tbaa !15
  %xor337 = xor i32 %171, %172
  %call338 = call i32 @rotr32(i32 noundef %xor337, i32 noundef 8)
  %arrayidx339 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  store i32 %call338, ptr %arrayidx339, align 4, !tbaa !15
  %arrayidx340 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %173 = load i32, ptr %arrayidx340, align 16, !tbaa !15
  %arrayidx341 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %174 = load i32, ptr %arrayidx341, align 4, !tbaa !15
  %add342 = add i32 %173, %174
  %arrayidx343 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  store i32 %add342, ptr %arrayidx343, align 16, !tbaa !15
  %arrayidx344 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %175 = load i32, ptr %arrayidx344, align 4, !tbaa !15
  %arrayidx345 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %176 = load i32, ptr %arrayidx345, align 16, !tbaa !15
  %xor346 = xor i32 %175, %176
  %call347 = call i32 @rotr32(i32 noundef %xor346, i32 noundef 7)
  %arrayidx348 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  store i32 %call347, ptr %arrayidx348, align 4, !tbaa !15
  br label %do.cond349

do.cond349:                                       ; preds = %do.body306
  br label %do.end350

do.end350:                                        ; preds = %do.cond349
  br label %do.body351

do.body351:                                       ; preds = %do.end350
  %arrayidx352 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %177 = load i32, ptr %arrayidx352, align 4, !tbaa !15
  %arrayidx353 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %178 = load i32, ptr %arrayidx353, align 16, !tbaa !15
  %add354 = add i32 %177, %178
  %179 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @blake2s_sigma, i64 0, i64 14), align 2, !tbaa !19
  %idxprom355 = zext i8 %179 to i64
  %arrayidx356 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom355
  %180 = load i32, ptr %arrayidx356, align 4, !tbaa !15
  %add357 = add i32 %add354, %180
  %arrayidx358 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  store i32 %add357, ptr %arrayidx358, align 4, !tbaa !15
  %arrayidx359 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %181 = load i32, ptr %arrayidx359, align 8, !tbaa !15
  %arrayidx360 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %182 = load i32, ptr %arrayidx360, align 4, !tbaa !15
  %xor361 = xor i32 %181, %182
  %call362 = call i32 @rotr32(i32 noundef %xor361, i32 noundef 16)
  %arrayidx363 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  store i32 %call362, ptr %arrayidx363, align 8, !tbaa !15
  %arrayidx364 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %183 = load i32, ptr %arrayidx364, align 4, !tbaa !15
  %arrayidx365 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %184 = load i32, ptr %arrayidx365, align 8, !tbaa !15
  %add366 = add i32 %183, %184
  %arrayidx367 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  store i32 %add366, ptr %arrayidx367, align 4, !tbaa !15
  %arrayidx368 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %185 = load i32, ptr %arrayidx368, align 16, !tbaa !15
  %arrayidx369 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %186 = load i32, ptr %arrayidx369, align 4, !tbaa !15
  %xor370 = xor i32 %185, %186
  %call371 = call i32 @rotr32(i32 noundef %xor370, i32 noundef 12)
  %arrayidx372 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  store i32 %call371, ptr %arrayidx372, align 16, !tbaa !15
  %arrayidx373 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %187 = load i32, ptr %arrayidx373, align 4, !tbaa !15
  %arrayidx374 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %188 = load i32, ptr %arrayidx374, align 16, !tbaa !15
  %add375 = add i32 %187, %188
  %189 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @blake2s_sigma, i64 0, i64 15), align 1, !tbaa !19
  %idxprom376 = zext i8 %189 to i64
  %arrayidx377 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom376
  %190 = load i32, ptr %arrayidx377, align 4, !tbaa !15
  %add378 = add i32 %add375, %190
  %arrayidx379 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  store i32 %add378, ptr %arrayidx379, align 4, !tbaa !15
  %arrayidx380 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %191 = load i32, ptr %arrayidx380, align 8, !tbaa !15
  %arrayidx381 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %192 = load i32, ptr %arrayidx381, align 4, !tbaa !15
  %xor382 = xor i32 %191, %192
  %call383 = call i32 @rotr32(i32 noundef %xor382, i32 noundef 8)
  %arrayidx384 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  store i32 %call383, ptr %arrayidx384, align 8, !tbaa !15
  %arrayidx385 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %193 = load i32, ptr %arrayidx385, align 4, !tbaa !15
  %arrayidx386 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %194 = load i32, ptr %arrayidx386, align 8, !tbaa !15
  %add387 = add i32 %193, %194
  %arrayidx388 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  store i32 %add387, ptr %arrayidx388, align 4, !tbaa !15
  %arrayidx389 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %195 = load i32, ptr %arrayidx389, align 16, !tbaa !15
  %arrayidx390 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %196 = load i32, ptr %arrayidx390, align 4, !tbaa !15
  %xor391 = xor i32 %195, %196
  %call392 = call i32 @rotr32(i32 noundef %xor391, i32 noundef 7)
  %arrayidx393 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  store i32 %call392, ptr %arrayidx393, align 16, !tbaa !15
  br label %do.cond394

do.cond394:                                       ; preds = %do.body351
  br label %do.end395

do.end395:                                        ; preds = %do.cond394
  br label %do.cond396

do.cond396:                                       ; preds = %do.end395
  br label %do.end397

do.end397:                                        ; preds = %do.cond396
  br label %do.body398

do.body398:                                       ; preds = %do.end397
  br label %do.body399

do.body399:                                       ; preds = %do.body398
  %arrayidx400 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %197 = load i32, ptr %arrayidx400, align 16, !tbaa !15
  %arrayidx401 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %198 = load i32, ptr %arrayidx401, align 16, !tbaa !15
  %add402 = add i32 %197, %198
  %199 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 1), align 16, !tbaa !19
  %idxprom403 = zext i8 %199 to i64
  %arrayidx404 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom403
  %200 = load i32, ptr %arrayidx404, align 4, !tbaa !15
  %add405 = add i32 %add402, %200
  %arrayidx406 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  store i32 %add405, ptr %arrayidx406, align 16, !tbaa !15
  %arrayidx407 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %201 = load i32, ptr %arrayidx407, align 16, !tbaa !15
  %arrayidx408 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %202 = load i32, ptr %arrayidx408, align 16, !tbaa !15
  %xor409 = xor i32 %201, %202
  %call410 = call i32 @rotr32(i32 noundef %xor409, i32 noundef 16)
  %arrayidx411 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  store i32 %call410, ptr %arrayidx411, align 16, !tbaa !15
  %arrayidx412 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %203 = load i32, ptr %arrayidx412, align 16, !tbaa !15
  %arrayidx413 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %204 = load i32, ptr %arrayidx413, align 16, !tbaa !15
  %add414 = add i32 %203, %204
  %arrayidx415 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  store i32 %add414, ptr %arrayidx415, align 16, !tbaa !15
  %arrayidx416 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %205 = load i32, ptr %arrayidx416, align 16, !tbaa !15
  %arrayidx417 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %206 = load i32, ptr %arrayidx417, align 16, !tbaa !15
  %xor418 = xor i32 %205, %206
  %call419 = call i32 @rotr32(i32 noundef %xor418, i32 noundef 12)
  %arrayidx420 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  store i32 %call419, ptr %arrayidx420, align 16, !tbaa !15
  %arrayidx421 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %207 = load i32, ptr %arrayidx421, align 16, !tbaa !15
  %arrayidx422 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %208 = load i32, ptr %arrayidx422, align 16, !tbaa !15
  %add423 = add i32 %207, %208
  %209 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 1, i64 1), align 1, !tbaa !19
  %idxprom424 = zext i8 %209 to i64
  %arrayidx425 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom424
  %210 = load i32, ptr %arrayidx425, align 4, !tbaa !15
  %add426 = add i32 %add423, %210
  %arrayidx427 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  store i32 %add426, ptr %arrayidx427, align 16, !tbaa !15
  %arrayidx428 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %211 = load i32, ptr %arrayidx428, align 16, !tbaa !15
  %arrayidx429 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %212 = load i32, ptr %arrayidx429, align 16, !tbaa !15
  %xor430 = xor i32 %211, %212
  %call431 = call i32 @rotr32(i32 noundef %xor430, i32 noundef 8)
  %arrayidx432 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  store i32 %call431, ptr %arrayidx432, align 16, !tbaa !15
  %arrayidx433 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %213 = load i32, ptr %arrayidx433, align 16, !tbaa !15
  %arrayidx434 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %214 = load i32, ptr %arrayidx434, align 16, !tbaa !15
  %add435 = add i32 %213, %214
  %arrayidx436 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  store i32 %add435, ptr %arrayidx436, align 16, !tbaa !15
  %arrayidx437 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %215 = load i32, ptr %arrayidx437, align 16, !tbaa !15
  %arrayidx438 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %216 = load i32, ptr %arrayidx438, align 16, !tbaa !15
  %xor439 = xor i32 %215, %216
  %call440 = call i32 @rotr32(i32 noundef %xor439, i32 noundef 7)
  %arrayidx441 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  store i32 %call440, ptr %arrayidx441, align 16, !tbaa !15
  br label %do.cond442

do.cond442:                                       ; preds = %do.body399
  br label %do.end443

do.end443:                                        ; preds = %do.cond442
  br label %do.body444

do.body444:                                       ; preds = %do.end443
  %arrayidx445 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %217 = load i32, ptr %arrayidx445, align 4, !tbaa !15
  %arrayidx446 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %218 = load i32, ptr %arrayidx446, align 4, !tbaa !15
  %add447 = add i32 %217, %218
  %219 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 1, i64 2), align 2, !tbaa !19
  %idxprom448 = zext i8 %219 to i64
  %arrayidx449 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom448
  %220 = load i32, ptr %arrayidx449, align 4, !tbaa !15
  %add450 = add i32 %add447, %220
  %arrayidx451 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  store i32 %add450, ptr %arrayidx451, align 4, !tbaa !15
  %arrayidx452 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %221 = load i32, ptr %arrayidx452, align 4, !tbaa !15
  %arrayidx453 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %222 = load i32, ptr %arrayidx453, align 4, !tbaa !15
  %xor454 = xor i32 %221, %222
  %call455 = call i32 @rotr32(i32 noundef %xor454, i32 noundef 16)
  %arrayidx456 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  store i32 %call455, ptr %arrayidx456, align 4, !tbaa !15
  %arrayidx457 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %223 = load i32, ptr %arrayidx457, align 4, !tbaa !15
  %arrayidx458 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %224 = load i32, ptr %arrayidx458, align 4, !tbaa !15
  %add459 = add i32 %223, %224
  %arrayidx460 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  store i32 %add459, ptr %arrayidx460, align 4, !tbaa !15
  %arrayidx461 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %225 = load i32, ptr %arrayidx461, align 4, !tbaa !15
  %arrayidx462 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %226 = load i32, ptr %arrayidx462, align 4, !tbaa !15
  %xor463 = xor i32 %225, %226
  %call464 = call i32 @rotr32(i32 noundef %xor463, i32 noundef 12)
  %arrayidx465 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  store i32 %call464, ptr %arrayidx465, align 4, !tbaa !15
  %arrayidx466 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %227 = load i32, ptr %arrayidx466, align 4, !tbaa !15
  %arrayidx467 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %228 = load i32, ptr %arrayidx467, align 4, !tbaa !15
  %add468 = add i32 %227, %228
  %229 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 1, i64 3), align 1, !tbaa !19
  %idxprom469 = zext i8 %229 to i64
  %arrayidx470 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom469
  %230 = load i32, ptr %arrayidx470, align 4, !tbaa !15
  %add471 = add i32 %add468, %230
  %arrayidx472 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  store i32 %add471, ptr %arrayidx472, align 4, !tbaa !15
  %arrayidx473 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %231 = load i32, ptr %arrayidx473, align 4, !tbaa !15
  %arrayidx474 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %232 = load i32, ptr %arrayidx474, align 4, !tbaa !15
  %xor475 = xor i32 %231, %232
  %call476 = call i32 @rotr32(i32 noundef %xor475, i32 noundef 8)
  %arrayidx477 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  store i32 %call476, ptr %arrayidx477, align 4, !tbaa !15
  %arrayidx478 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %233 = load i32, ptr %arrayidx478, align 4, !tbaa !15
  %arrayidx479 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %234 = load i32, ptr %arrayidx479, align 4, !tbaa !15
  %add480 = add i32 %233, %234
  %arrayidx481 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  store i32 %add480, ptr %arrayidx481, align 4, !tbaa !15
  %arrayidx482 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %235 = load i32, ptr %arrayidx482, align 4, !tbaa !15
  %arrayidx483 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %236 = load i32, ptr %arrayidx483, align 4, !tbaa !15
  %xor484 = xor i32 %235, %236
  %call485 = call i32 @rotr32(i32 noundef %xor484, i32 noundef 7)
  %arrayidx486 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  store i32 %call485, ptr %arrayidx486, align 4, !tbaa !15
  br label %do.cond487

do.cond487:                                       ; preds = %do.body444
  br label %do.end488

do.end488:                                        ; preds = %do.cond487
  br label %do.body489

do.body489:                                       ; preds = %do.end488
  %arrayidx490 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %237 = load i32, ptr %arrayidx490, align 8, !tbaa !15
  %arrayidx491 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %238 = load i32, ptr %arrayidx491, align 8, !tbaa !15
  %add492 = add i32 %237, %238
  %239 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 1, i64 4), align 4, !tbaa !19
  %idxprom493 = zext i8 %239 to i64
  %arrayidx494 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom493
  %240 = load i32, ptr %arrayidx494, align 4, !tbaa !15
  %add495 = add i32 %add492, %240
  %arrayidx496 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  store i32 %add495, ptr %arrayidx496, align 8, !tbaa !15
  %arrayidx497 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %241 = load i32, ptr %arrayidx497, align 8, !tbaa !15
  %arrayidx498 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %242 = load i32, ptr %arrayidx498, align 8, !tbaa !15
  %xor499 = xor i32 %241, %242
  %call500 = call i32 @rotr32(i32 noundef %xor499, i32 noundef 16)
  %arrayidx501 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  store i32 %call500, ptr %arrayidx501, align 8, !tbaa !15
  %arrayidx502 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %243 = load i32, ptr %arrayidx502, align 8, !tbaa !15
  %arrayidx503 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %244 = load i32, ptr %arrayidx503, align 8, !tbaa !15
  %add504 = add i32 %243, %244
  %arrayidx505 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  store i32 %add504, ptr %arrayidx505, align 8, !tbaa !15
  %arrayidx506 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %245 = load i32, ptr %arrayidx506, align 8, !tbaa !15
  %arrayidx507 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %246 = load i32, ptr %arrayidx507, align 8, !tbaa !15
  %xor508 = xor i32 %245, %246
  %call509 = call i32 @rotr32(i32 noundef %xor508, i32 noundef 12)
  %arrayidx510 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  store i32 %call509, ptr %arrayidx510, align 8, !tbaa !15
  %arrayidx511 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %247 = load i32, ptr %arrayidx511, align 8, !tbaa !15
  %arrayidx512 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %248 = load i32, ptr %arrayidx512, align 8, !tbaa !15
  %add513 = add i32 %247, %248
  %249 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 1, i64 5), align 1, !tbaa !19
  %idxprom514 = zext i8 %249 to i64
  %arrayidx515 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom514
  %250 = load i32, ptr %arrayidx515, align 4, !tbaa !15
  %add516 = add i32 %add513, %250
  %arrayidx517 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  store i32 %add516, ptr %arrayidx517, align 8, !tbaa !15
  %arrayidx518 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %251 = load i32, ptr %arrayidx518, align 8, !tbaa !15
  %arrayidx519 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %252 = load i32, ptr %arrayidx519, align 8, !tbaa !15
  %xor520 = xor i32 %251, %252
  %call521 = call i32 @rotr32(i32 noundef %xor520, i32 noundef 8)
  %arrayidx522 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  store i32 %call521, ptr %arrayidx522, align 8, !tbaa !15
  %arrayidx523 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %253 = load i32, ptr %arrayidx523, align 8, !tbaa !15
  %arrayidx524 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %254 = load i32, ptr %arrayidx524, align 8, !tbaa !15
  %add525 = add i32 %253, %254
  %arrayidx526 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  store i32 %add525, ptr %arrayidx526, align 8, !tbaa !15
  %arrayidx527 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %255 = load i32, ptr %arrayidx527, align 8, !tbaa !15
  %arrayidx528 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %256 = load i32, ptr %arrayidx528, align 8, !tbaa !15
  %xor529 = xor i32 %255, %256
  %call530 = call i32 @rotr32(i32 noundef %xor529, i32 noundef 7)
  %arrayidx531 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  store i32 %call530, ptr %arrayidx531, align 8, !tbaa !15
  br label %do.cond532

do.cond532:                                       ; preds = %do.body489
  br label %do.end533

do.end533:                                        ; preds = %do.cond532
  br label %do.body534

do.body534:                                       ; preds = %do.end533
  %arrayidx535 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %257 = load i32, ptr %arrayidx535, align 4, !tbaa !15
  %arrayidx536 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %258 = load i32, ptr %arrayidx536, align 4, !tbaa !15
  %add537 = add i32 %257, %258
  %259 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 1, i64 6), align 2, !tbaa !19
  %idxprom538 = zext i8 %259 to i64
  %arrayidx539 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom538
  %260 = load i32, ptr %arrayidx539, align 4, !tbaa !15
  %add540 = add i32 %add537, %260
  %arrayidx541 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  store i32 %add540, ptr %arrayidx541, align 4, !tbaa !15
  %arrayidx542 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %261 = load i32, ptr %arrayidx542, align 4, !tbaa !15
  %arrayidx543 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %262 = load i32, ptr %arrayidx543, align 4, !tbaa !15
  %xor544 = xor i32 %261, %262
  %call545 = call i32 @rotr32(i32 noundef %xor544, i32 noundef 16)
  %arrayidx546 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  store i32 %call545, ptr %arrayidx546, align 4, !tbaa !15
  %arrayidx547 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %263 = load i32, ptr %arrayidx547, align 4, !tbaa !15
  %arrayidx548 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %264 = load i32, ptr %arrayidx548, align 4, !tbaa !15
  %add549 = add i32 %263, %264
  %arrayidx550 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  store i32 %add549, ptr %arrayidx550, align 4, !tbaa !15
  %arrayidx551 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %265 = load i32, ptr %arrayidx551, align 4, !tbaa !15
  %arrayidx552 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %266 = load i32, ptr %arrayidx552, align 4, !tbaa !15
  %xor553 = xor i32 %265, %266
  %call554 = call i32 @rotr32(i32 noundef %xor553, i32 noundef 12)
  %arrayidx555 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  store i32 %call554, ptr %arrayidx555, align 4, !tbaa !15
  %arrayidx556 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %267 = load i32, ptr %arrayidx556, align 4, !tbaa !15
  %arrayidx557 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %268 = load i32, ptr %arrayidx557, align 4, !tbaa !15
  %add558 = add i32 %267, %268
  %269 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 1, i64 7), align 1, !tbaa !19
  %idxprom559 = zext i8 %269 to i64
  %arrayidx560 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom559
  %270 = load i32, ptr %arrayidx560, align 4, !tbaa !15
  %add561 = add i32 %add558, %270
  %arrayidx562 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  store i32 %add561, ptr %arrayidx562, align 4, !tbaa !15
  %arrayidx563 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %271 = load i32, ptr %arrayidx563, align 4, !tbaa !15
  %arrayidx564 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %272 = load i32, ptr %arrayidx564, align 4, !tbaa !15
  %xor565 = xor i32 %271, %272
  %call566 = call i32 @rotr32(i32 noundef %xor565, i32 noundef 8)
  %arrayidx567 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  store i32 %call566, ptr %arrayidx567, align 4, !tbaa !15
  %arrayidx568 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %273 = load i32, ptr %arrayidx568, align 4, !tbaa !15
  %arrayidx569 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %274 = load i32, ptr %arrayidx569, align 4, !tbaa !15
  %add570 = add i32 %273, %274
  %arrayidx571 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  store i32 %add570, ptr %arrayidx571, align 4, !tbaa !15
  %arrayidx572 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %275 = load i32, ptr %arrayidx572, align 4, !tbaa !15
  %arrayidx573 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %276 = load i32, ptr %arrayidx573, align 4, !tbaa !15
  %xor574 = xor i32 %275, %276
  %call575 = call i32 @rotr32(i32 noundef %xor574, i32 noundef 7)
  %arrayidx576 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  store i32 %call575, ptr %arrayidx576, align 4, !tbaa !15
  br label %do.cond577

do.cond577:                                       ; preds = %do.body534
  br label %do.end578

do.end578:                                        ; preds = %do.cond577
  br label %do.body579

do.body579:                                       ; preds = %do.end578
  %arrayidx580 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %277 = load i32, ptr %arrayidx580, align 16, !tbaa !15
  %arrayidx581 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %278 = load i32, ptr %arrayidx581, align 4, !tbaa !15
  %add582 = add i32 %277, %278
  %279 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 1, i64 8), align 8, !tbaa !19
  %idxprom583 = zext i8 %279 to i64
  %arrayidx584 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom583
  %280 = load i32, ptr %arrayidx584, align 4, !tbaa !15
  %add585 = add i32 %add582, %280
  %arrayidx586 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  store i32 %add585, ptr %arrayidx586, align 16, !tbaa !15
  %arrayidx587 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %281 = load i32, ptr %arrayidx587, align 4, !tbaa !15
  %arrayidx588 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %282 = load i32, ptr %arrayidx588, align 16, !tbaa !15
  %xor589 = xor i32 %281, %282
  %call590 = call i32 @rotr32(i32 noundef %xor589, i32 noundef 16)
  %arrayidx591 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  store i32 %call590, ptr %arrayidx591, align 4, !tbaa !15
  %arrayidx592 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %283 = load i32, ptr %arrayidx592, align 8, !tbaa !15
  %arrayidx593 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %284 = load i32, ptr %arrayidx593, align 4, !tbaa !15
  %add594 = add i32 %283, %284
  %arrayidx595 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  store i32 %add594, ptr %arrayidx595, align 8, !tbaa !15
  %arrayidx596 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %285 = load i32, ptr %arrayidx596, align 4, !tbaa !15
  %arrayidx597 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %286 = load i32, ptr %arrayidx597, align 8, !tbaa !15
  %xor598 = xor i32 %285, %286
  %call599 = call i32 @rotr32(i32 noundef %xor598, i32 noundef 12)
  %arrayidx600 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  store i32 %call599, ptr %arrayidx600, align 4, !tbaa !15
  %arrayidx601 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %287 = load i32, ptr %arrayidx601, align 16, !tbaa !15
  %arrayidx602 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %288 = load i32, ptr %arrayidx602, align 4, !tbaa !15
  %add603 = add i32 %287, %288
  %289 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 1, i64 9), align 1, !tbaa !19
  %idxprom604 = zext i8 %289 to i64
  %arrayidx605 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom604
  %290 = load i32, ptr %arrayidx605, align 4, !tbaa !15
  %add606 = add i32 %add603, %290
  %arrayidx607 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  store i32 %add606, ptr %arrayidx607, align 16, !tbaa !15
  %arrayidx608 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %291 = load i32, ptr %arrayidx608, align 4, !tbaa !15
  %arrayidx609 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %292 = load i32, ptr %arrayidx609, align 16, !tbaa !15
  %xor610 = xor i32 %291, %292
  %call611 = call i32 @rotr32(i32 noundef %xor610, i32 noundef 8)
  %arrayidx612 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  store i32 %call611, ptr %arrayidx612, align 4, !tbaa !15
  %arrayidx613 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %293 = load i32, ptr %arrayidx613, align 8, !tbaa !15
  %arrayidx614 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %294 = load i32, ptr %arrayidx614, align 4, !tbaa !15
  %add615 = add i32 %293, %294
  %arrayidx616 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  store i32 %add615, ptr %arrayidx616, align 8, !tbaa !15
  %arrayidx617 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %295 = load i32, ptr %arrayidx617, align 4, !tbaa !15
  %arrayidx618 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %296 = load i32, ptr %arrayidx618, align 8, !tbaa !15
  %xor619 = xor i32 %295, %296
  %call620 = call i32 @rotr32(i32 noundef %xor619, i32 noundef 7)
  %arrayidx621 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  store i32 %call620, ptr %arrayidx621, align 4, !tbaa !15
  br label %do.cond622

do.cond622:                                       ; preds = %do.body579
  br label %do.end623

do.end623:                                        ; preds = %do.cond622
  br label %do.body624

do.body624:                                       ; preds = %do.end623
  %arrayidx625 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %297 = load i32, ptr %arrayidx625, align 4, !tbaa !15
  %arrayidx626 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %298 = load i32, ptr %arrayidx626, align 8, !tbaa !15
  %add627 = add i32 %297, %298
  %299 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 1, i64 10), align 2, !tbaa !19
  %idxprom628 = zext i8 %299 to i64
  %arrayidx629 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom628
  %300 = load i32, ptr %arrayidx629, align 4, !tbaa !15
  %add630 = add i32 %add627, %300
  %arrayidx631 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  store i32 %add630, ptr %arrayidx631, align 4, !tbaa !15
  %arrayidx632 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %301 = load i32, ptr %arrayidx632, align 16, !tbaa !15
  %arrayidx633 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %302 = load i32, ptr %arrayidx633, align 4, !tbaa !15
  %xor634 = xor i32 %301, %302
  %call635 = call i32 @rotr32(i32 noundef %xor634, i32 noundef 16)
  %arrayidx636 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  store i32 %call635, ptr %arrayidx636, align 16, !tbaa !15
  %arrayidx637 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %303 = load i32, ptr %arrayidx637, align 4, !tbaa !15
  %arrayidx638 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %304 = load i32, ptr %arrayidx638, align 16, !tbaa !15
  %add639 = add i32 %303, %304
  %arrayidx640 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  store i32 %add639, ptr %arrayidx640, align 4, !tbaa !15
  %arrayidx641 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %305 = load i32, ptr %arrayidx641, align 8, !tbaa !15
  %arrayidx642 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %306 = load i32, ptr %arrayidx642, align 4, !tbaa !15
  %xor643 = xor i32 %305, %306
  %call644 = call i32 @rotr32(i32 noundef %xor643, i32 noundef 12)
  %arrayidx645 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  store i32 %call644, ptr %arrayidx645, align 8, !tbaa !15
  %arrayidx646 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %307 = load i32, ptr %arrayidx646, align 4, !tbaa !15
  %arrayidx647 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %308 = load i32, ptr %arrayidx647, align 8, !tbaa !15
  %add648 = add i32 %307, %308
  %309 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 1, i64 11), align 1, !tbaa !19
  %idxprom649 = zext i8 %309 to i64
  %arrayidx650 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom649
  %310 = load i32, ptr %arrayidx650, align 4, !tbaa !15
  %add651 = add i32 %add648, %310
  %arrayidx652 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  store i32 %add651, ptr %arrayidx652, align 4, !tbaa !15
  %arrayidx653 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %311 = load i32, ptr %arrayidx653, align 16, !tbaa !15
  %arrayidx654 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %312 = load i32, ptr %arrayidx654, align 4, !tbaa !15
  %xor655 = xor i32 %311, %312
  %call656 = call i32 @rotr32(i32 noundef %xor655, i32 noundef 8)
  %arrayidx657 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  store i32 %call656, ptr %arrayidx657, align 16, !tbaa !15
  %arrayidx658 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %313 = load i32, ptr %arrayidx658, align 4, !tbaa !15
  %arrayidx659 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %314 = load i32, ptr %arrayidx659, align 16, !tbaa !15
  %add660 = add i32 %313, %314
  %arrayidx661 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  store i32 %add660, ptr %arrayidx661, align 4, !tbaa !15
  %arrayidx662 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %315 = load i32, ptr %arrayidx662, align 8, !tbaa !15
  %arrayidx663 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %316 = load i32, ptr %arrayidx663, align 4, !tbaa !15
  %xor664 = xor i32 %315, %316
  %call665 = call i32 @rotr32(i32 noundef %xor664, i32 noundef 7)
  %arrayidx666 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  store i32 %call665, ptr %arrayidx666, align 8, !tbaa !15
  br label %do.cond667

do.cond667:                                       ; preds = %do.body624
  br label %do.end668

do.end668:                                        ; preds = %do.cond667
  br label %do.body669

do.body669:                                       ; preds = %do.end668
  %arrayidx670 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %317 = load i32, ptr %arrayidx670, align 8, !tbaa !15
  %arrayidx671 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %318 = load i32, ptr %arrayidx671, align 4, !tbaa !15
  %add672 = add i32 %317, %318
  %319 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 1, i64 12), align 4, !tbaa !19
  %idxprom673 = zext i8 %319 to i64
  %arrayidx674 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom673
  %320 = load i32, ptr %arrayidx674, align 4, !tbaa !15
  %add675 = add i32 %add672, %320
  %arrayidx676 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  store i32 %add675, ptr %arrayidx676, align 8, !tbaa !15
  %arrayidx677 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %321 = load i32, ptr %arrayidx677, align 4, !tbaa !15
  %arrayidx678 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %322 = load i32, ptr %arrayidx678, align 8, !tbaa !15
  %xor679 = xor i32 %321, %322
  %call680 = call i32 @rotr32(i32 noundef %xor679, i32 noundef 16)
  %arrayidx681 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  store i32 %call680, ptr %arrayidx681, align 4, !tbaa !15
  %arrayidx682 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %323 = load i32, ptr %arrayidx682, align 16, !tbaa !15
  %arrayidx683 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %324 = load i32, ptr %arrayidx683, align 4, !tbaa !15
  %add684 = add i32 %323, %324
  %arrayidx685 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  store i32 %add684, ptr %arrayidx685, align 16, !tbaa !15
  %arrayidx686 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %325 = load i32, ptr %arrayidx686, align 4, !tbaa !15
  %arrayidx687 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %326 = load i32, ptr %arrayidx687, align 16, !tbaa !15
  %xor688 = xor i32 %325, %326
  %call689 = call i32 @rotr32(i32 noundef %xor688, i32 noundef 12)
  %arrayidx690 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  store i32 %call689, ptr %arrayidx690, align 4, !tbaa !15
  %arrayidx691 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %327 = load i32, ptr %arrayidx691, align 8, !tbaa !15
  %arrayidx692 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %328 = load i32, ptr %arrayidx692, align 4, !tbaa !15
  %add693 = add i32 %327, %328
  %329 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 1, i64 13), align 1, !tbaa !19
  %idxprom694 = zext i8 %329 to i64
  %arrayidx695 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom694
  %330 = load i32, ptr %arrayidx695, align 4, !tbaa !15
  %add696 = add i32 %add693, %330
  %arrayidx697 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  store i32 %add696, ptr %arrayidx697, align 8, !tbaa !15
  %arrayidx698 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %331 = load i32, ptr %arrayidx698, align 4, !tbaa !15
  %arrayidx699 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %332 = load i32, ptr %arrayidx699, align 8, !tbaa !15
  %xor700 = xor i32 %331, %332
  %call701 = call i32 @rotr32(i32 noundef %xor700, i32 noundef 8)
  %arrayidx702 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  store i32 %call701, ptr %arrayidx702, align 4, !tbaa !15
  %arrayidx703 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %333 = load i32, ptr %arrayidx703, align 16, !tbaa !15
  %arrayidx704 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %334 = load i32, ptr %arrayidx704, align 4, !tbaa !15
  %add705 = add i32 %333, %334
  %arrayidx706 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  store i32 %add705, ptr %arrayidx706, align 16, !tbaa !15
  %arrayidx707 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %335 = load i32, ptr %arrayidx707, align 4, !tbaa !15
  %arrayidx708 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %336 = load i32, ptr %arrayidx708, align 16, !tbaa !15
  %xor709 = xor i32 %335, %336
  %call710 = call i32 @rotr32(i32 noundef %xor709, i32 noundef 7)
  %arrayidx711 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  store i32 %call710, ptr %arrayidx711, align 4, !tbaa !15
  br label %do.cond712

do.cond712:                                       ; preds = %do.body669
  br label %do.end713

do.end713:                                        ; preds = %do.cond712
  br label %do.body714

do.body714:                                       ; preds = %do.end713
  %arrayidx715 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %337 = load i32, ptr %arrayidx715, align 4, !tbaa !15
  %arrayidx716 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %338 = load i32, ptr %arrayidx716, align 16, !tbaa !15
  %add717 = add i32 %337, %338
  %339 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 1, i64 14), align 2, !tbaa !19
  %idxprom718 = zext i8 %339 to i64
  %arrayidx719 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom718
  %340 = load i32, ptr %arrayidx719, align 4, !tbaa !15
  %add720 = add i32 %add717, %340
  %arrayidx721 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  store i32 %add720, ptr %arrayidx721, align 4, !tbaa !15
  %arrayidx722 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %341 = load i32, ptr %arrayidx722, align 8, !tbaa !15
  %arrayidx723 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %342 = load i32, ptr %arrayidx723, align 4, !tbaa !15
  %xor724 = xor i32 %341, %342
  %call725 = call i32 @rotr32(i32 noundef %xor724, i32 noundef 16)
  %arrayidx726 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  store i32 %call725, ptr %arrayidx726, align 8, !tbaa !15
  %arrayidx727 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %343 = load i32, ptr %arrayidx727, align 4, !tbaa !15
  %arrayidx728 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %344 = load i32, ptr %arrayidx728, align 8, !tbaa !15
  %add729 = add i32 %343, %344
  %arrayidx730 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  store i32 %add729, ptr %arrayidx730, align 4, !tbaa !15
  %arrayidx731 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %345 = load i32, ptr %arrayidx731, align 16, !tbaa !15
  %arrayidx732 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %346 = load i32, ptr %arrayidx732, align 4, !tbaa !15
  %xor733 = xor i32 %345, %346
  %call734 = call i32 @rotr32(i32 noundef %xor733, i32 noundef 12)
  %arrayidx735 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  store i32 %call734, ptr %arrayidx735, align 16, !tbaa !15
  %arrayidx736 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %347 = load i32, ptr %arrayidx736, align 4, !tbaa !15
  %arrayidx737 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %348 = load i32, ptr %arrayidx737, align 16, !tbaa !15
  %add738 = add i32 %347, %348
  %349 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 1, i64 15), align 1, !tbaa !19
  %idxprom739 = zext i8 %349 to i64
  %arrayidx740 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom739
  %350 = load i32, ptr %arrayidx740, align 4, !tbaa !15
  %add741 = add i32 %add738, %350
  %arrayidx742 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  store i32 %add741, ptr %arrayidx742, align 4, !tbaa !15
  %arrayidx743 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %351 = load i32, ptr %arrayidx743, align 8, !tbaa !15
  %arrayidx744 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %352 = load i32, ptr %arrayidx744, align 4, !tbaa !15
  %xor745 = xor i32 %351, %352
  %call746 = call i32 @rotr32(i32 noundef %xor745, i32 noundef 8)
  %arrayidx747 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  store i32 %call746, ptr %arrayidx747, align 8, !tbaa !15
  %arrayidx748 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %353 = load i32, ptr %arrayidx748, align 4, !tbaa !15
  %arrayidx749 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %354 = load i32, ptr %arrayidx749, align 8, !tbaa !15
  %add750 = add i32 %353, %354
  %arrayidx751 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  store i32 %add750, ptr %arrayidx751, align 4, !tbaa !15
  %arrayidx752 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %355 = load i32, ptr %arrayidx752, align 16, !tbaa !15
  %arrayidx753 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %356 = load i32, ptr %arrayidx753, align 4, !tbaa !15
  %xor754 = xor i32 %355, %356
  %call755 = call i32 @rotr32(i32 noundef %xor754, i32 noundef 7)
  %arrayidx756 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  store i32 %call755, ptr %arrayidx756, align 16, !tbaa !15
  br label %do.cond757

do.cond757:                                       ; preds = %do.body714
  br label %do.end758

do.end758:                                        ; preds = %do.cond757
  br label %do.cond759

do.cond759:                                       ; preds = %do.end758
  br label %do.end760

do.end760:                                        ; preds = %do.cond759
  br label %do.body761

do.body761:                                       ; preds = %do.end760
  br label %do.body762

do.body762:                                       ; preds = %do.body761
  %arrayidx763 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %357 = load i32, ptr %arrayidx763, align 16, !tbaa !15
  %arrayidx764 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %358 = load i32, ptr %arrayidx764, align 16, !tbaa !15
  %add765 = add i32 %357, %358
  %359 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 2), align 16, !tbaa !19
  %idxprom766 = zext i8 %359 to i64
  %arrayidx767 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom766
  %360 = load i32, ptr %arrayidx767, align 4, !tbaa !15
  %add768 = add i32 %add765, %360
  %arrayidx769 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  store i32 %add768, ptr %arrayidx769, align 16, !tbaa !15
  %arrayidx770 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %361 = load i32, ptr %arrayidx770, align 16, !tbaa !15
  %arrayidx771 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %362 = load i32, ptr %arrayidx771, align 16, !tbaa !15
  %xor772 = xor i32 %361, %362
  %call773 = call i32 @rotr32(i32 noundef %xor772, i32 noundef 16)
  %arrayidx774 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  store i32 %call773, ptr %arrayidx774, align 16, !tbaa !15
  %arrayidx775 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %363 = load i32, ptr %arrayidx775, align 16, !tbaa !15
  %arrayidx776 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %364 = load i32, ptr %arrayidx776, align 16, !tbaa !15
  %add777 = add i32 %363, %364
  %arrayidx778 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  store i32 %add777, ptr %arrayidx778, align 16, !tbaa !15
  %arrayidx779 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %365 = load i32, ptr %arrayidx779, align 16, !tbaa !15
  %arrayidx780 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %366 = load i32, ptr %arrayidx780, align 16, !tbaa !15
  %xor781 = xor i32 %365, %366
  %call782 = call i32 @rotr32(i32 noundef %xor781, i32 noundef 12)
  %arrayidx783 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  store i32 %call782, ptr %arrayidx783, align 16, !tbaa !15
  %arrayidx784 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %367 = load i32, ptr %arrayidx784, align 16, !tbaa !15
  %arrayidx785 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %368 = load i32, ptr %arrayidx785, align 16, !tbaa !15
  %add786 = add i32 %367, %368
  %369 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 2, i64 1), align 1, !tbaa !19
  %idxprom787 = zext i8 %369 to i64
  %arrayidx788 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom787
  %370 = load i32, ptr %arrayidx788, align 4, !tbaa !15
  %add789 = add i32 %add786, %370
  %arrayidx790 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  store i32 %add789, ptr %arrayidx790, align 16, !tbaa !15
  %arrayidx791 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %371 = load i32, ptr %arrayidx791, align 16, !tbaa !15
  %arrayidx792 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %372 = load i32, ptr %arrayidx792, align 16, !tbaa !15
  %xor793 = xor i32 %371, %372
  %call794 = call i32 @rotr32(i32 noundef %xor793, i32 noundef 8)
  %arrayidx795 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  store i32 %call794, ptr %arrayidx795, align 16, !tbaa !15
  %arrayidx796 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %373 = load i32, ptr %arrayidx796, align 16, !tbaa !15
  %arrayidx797 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %374 = load i32, ptr %arrayidx797, align 16, !tbaa !15
  %add798 = add i32 %373, %374
  %arrayidx799 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  store i32 %add798, ptr %arrayidx799, align 16, !tbaa !15
  %arrayidx800 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %375 = load i32, ptr %arrayidx800, align 16, !tbaa !15
  %arrayidx801 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %376 = load i32, ptr %arrayidx801, align 16, !tbaa !15
  %xor802 = xor i32 %375, %376
  %call803 = call i32 @rotr32(i32 noundef %xor802, i32 noundef 7)
  %arrayidx804 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  store i32 %call803, ptr %arrayidx804, align 16, !tbaa !15
  br label %do.cond805

do.cond805:                                       ; preds = %do.body762
  br label %do.end806

do.end806:                                        ; preds = %do.cond805
  br label %do.body807

do.body807:                                       ; preds = %do.end806
  %arrayidx808 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %377 = load i32, ptr %arrayidx808, align 4, !tbaa !15
  %arrayidx809 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %378 = load i32, ptr %arrayidx809, align 4, !tbaa !15
  %add810 = add i32 %377, %378
  %379 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 2, i64 2), align 2, !tbaa !19
  %idxprom811 = zext i8 %379 to i64
  %arrayidx812 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom811
  %380 = load i32, ptr %arrayidx812, align 4, !tbaa !15
  %add813 = add i32 %add810, %380
  %arrayidx814 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  store i32 %add813, ptr %arrayidx814, align 4, !tbaa !15
  %arrayidx815 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %381 = load i32, ptr %arrayidx815, align 4, !tbaa !15
  %arrayidx816 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %382 = load i32, ptr %arrayidx816, align 4, !tbaa !15
  %xor817 = xor i32 %381, %382
  %call818 = call i32 @rotr32(i32 noundef %xor817, i32 noundef 16)
  %arrayidx819 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  store i32 %call818, ptr %arrayidx819, align 4, !tbaa !15
  %arrayidx820 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %383 = load i32, ptr %arrayidx820, align 4, !tbaa !15
  %arrayidx821 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %384 = load i32, ptr %arrayidx821, align 4, !tbaa !15
  %add822 = add i32 %383, %384
  %arrayidx823 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  store i32 %add822, ptr %arrayidx823, align 4, !tbaa !15
  %arrayidx824 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %385 = load i32, ptr %arrayidx824, align 4, !tbaa !15
  %arrayidx825 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %386 = load i32, ptr %arrayidx825, align 4, !tbaa !15
  %xor826 = xor i32 %385, %386
  %call827 = call i32 @rotr32(i32 noundef %xor826, i32 noundef 12)
  %arrayidx828 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  store i32 %call827, ptr %arrayidx828, align 4, !tbaa !15
  %arrayidx829 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %387 = load i32, ptr %arrayidx829, align 4, !tbaa !15
  %arrayidx830 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %388 = load i32, ptr %arrayidx830, align 4, !tbaa !15
  %add831 = add i32 %387, %388
  %389 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 2, i64 3), align 1, !tbaa !19
  %idxprom832 = zext i8 %389 to i64
  %arrayidx833 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom832
  %390 = load i32, ptr %arrayidx833, align 4, !tbaa !15
  %add834 = add i32 %add831, %390
  %arrayidx835 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  store i32 %add834, ptr %arrayidx835, align 4, !tbaa !15
  %arrayidx836 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %391 = load i32, ptr %arrayidx836, align 4, !tbaa !15
  %arrayidx837 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %392 = load i32, ptr %arrayidx837, align 4, !tbaa !15
  %xor838 = xor i32 %391, %392
  %call839 = call i32 @rotr32(i32 noundef %xor838, i32 noundef 8)
  %arrayidx840 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  store i32 %call839, ptr %arrayidx840, align 4, !tbaa !15
  %arrayidx841 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %393 = load i32, ptr %arrayidx841, align 4, !tbaa !15
  %arrayidx842 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %394 = load i32, ptr %arrayidx842, align 4, !tbaa !15
  %add843 = add i32 %393, %394
  %arrayidx844 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  store i32 %add843, ptr %arrayidx844, align 4, !tbaa !15
  %arrayidx845 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %395 = load i32, ptr %arrayidx845, align 4, !tbaa !15
  %arrayidx846 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %396 = load i32, ptr %arrayidx846, align 4, !tbaa !15
  %xor847 = xor i32 %395, %396
  %call848 = call i32 @rotr32(i32 noundef %xor847, i32 noundef 7)
  %arrayidx849 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  store i32 %call848, ptr %arrayidx849, align 4, !tbaa !15
  br label %do.cond850

do.cond850:                                       ; preds = %do.body807
  br label %do.end851

do.end851:                                        ; preds = %do.cond850
  br label %do.body852

do.body852:                                       ; preds = %do.end851
  %arrayidx853 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %397 = load i32, ptr %arrayidx853, align 8, !tbaa !15
  %arrayidx854 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %398 = load i32, ptr %arrayidx854, align 8, !tbaa !15
  %add855 = add i32 %397, %398
  %399 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 2, i64 4), align 4, !tbaa !19
  %idxprom856 = zext i8 %399 to i64
  %arrayidx857 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom856
  %400 = load i32, ptr %arrayidx857, align 4, !tbaa !15
  %add858 = add i32 %add855, %400
  %arrayidx859 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  store i32 %add858, ptr %arrayidx859, align 8, !tbaa !15
  %arrayidx860 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %401 = load i32, ptr %arrayidx860, align 8, !tbaa !15
  %arrayidx861 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %402 = load i32, ptr %arrayidx861, align 8, !tbaa !15
  %xor862 = xor i32 %401, %402
  %call863 = call i32 @rotr32(i32 noundef %xor862, i32 noundef 16)
  %arrayidx864 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  store i32 %call863, ptr %arrayidx864, align 8, !tbaa !15
  %arrayidx865 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %403 = load i32, ptr %arrayidx865, align 8, !tbaa !15
  %arrayidx866 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %404 = load i32, ptr %arrayidx866, align 8, !tbaa !15
  %add867 = add i32 %403, %404
  %arrayidx868 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  store i32 %add867, ptr %arrayidx868, align 8, !tbaa !15
  %arrayidx869 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %405 = load i32, ptr %arrayidx869, align 8, !tbaa !15
  %arrayidx870 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %406 = load i32, ptr %arrayidx870, align 8, !tbaa !15
  %xor871 = xor i32 %405, %406
  %call872 = call i32 @rotr32(i32 noundef %xor871, i32 noundef 12)
  %arrayidx873 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  store i32 %call872, ptr %arrayidx873, align 8, !tbaa !15
  %arrayidx874 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %407 = load i32, ptr %arrayidx874, align 8, !tbaa !15
  %arrayidx875 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %408 = load i32, ptr %arrayidx875, align 8, !tbaa !15
  %add876 = add i32 %407, %408
  %409 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 2, i64 5), align 1, !tbaa !19
  %idxprom877 = zext i8 %409 to i64
  %arrayidx878 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom877
  %410 = load i32, ptr %arrayidx878, align 4, !tbaa !15
  %add879 = add i32 %add876, %410
  %arrayidx880 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  store i32 %add879, ptr %arrayidx880, align 8, !tbaa !15
  %arrayidx881 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %411 = load i32, ptr %arrayidx881, align 8, !tbaa !15
  %arrayidx882 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %412 = load i32, ptr %arrayidx882, align 8, !tbaa !15
  %xor883 = xor i32 %411, %412
  %call884 = call i32 @rotr32(i32 noundef %xor883, i32 noundef 8)
  %arrayidx885 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  store i32 %call884, ptr %arrayidx885, align 8, !tbaa !15
  %arrayidx886 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %413 = load i32, ptr %arrayidx886, align 8, !tbaa !15
  %arrayidx887 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %414 = load i32, ptr %arrayidx887, align 8, !tbaa !15
  %add888 = add i32 %413, %414
  %arrayidx889 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  store i32 %add888, ptr %arrayidx889, align 8, !tbaa !15
  %arrayidx890 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %415 = load i32, ptr %arrayidx890, align 8, !tbaa !15
  %arrayidx891 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %416 = load i32, ptr %arrayidx891, align 8, !tbaa !15
  %xor892 = xor i32 %415, %416
  %call893 = call i32 @rotr32(i32 noundef %xor892, i32 noundef 7)
  %arrayidx894 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  store i32 %call893, ptr %arrayidx894, align 8, !tbaa !15
  br label %do.cond895

do.cond895:                                       ; preds = %do.body852
  br label %do.end896

do.end896:                                        ; preds = %do.cond895
  br label %do.body897

do.body897:                                       ; preds = %do.end896
  %arrayidx898 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %417 = load i32, ptr %arrayidx898, align 4, !tbaa !15
  %arrayidx899 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %418 = load i32, ptr %arrayidx899, align 4, !tbaa !15
  %add900 = add i32 %417, %418
  %419 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 2, i64 6), align 2, !tbaa !19
  %idxprom901 = zext i8 %419 to i64
  %arrayidx902 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom901
  %420 = load i32, ptr %arrayidx902, align 4, !tbaa !15
  %add903 = add i32 %add900, %420
  %arrayidx904 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  store i32 %add903, ptr %arrayidx904, align 4, !tbaa !15
  %arrayidx905 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %421 = load i32, ptr %arrayidx905, align 4, !tbaa !15
  %arrayidx906 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %422 = load i32, ptr %arrayidx906, align 4, !tbaa !15
  %xor907 = xor i32 %421, %422
  %call908 = call i32 @rotr32(i32 noundef %xor907, i32 noundef 16)
  %arrayidx909 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  store i32 %call908, ptr %arrayidx909, align 4, !tbaa !15
  %arrayidx910 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %423 = load i32, ptr %arrayidx910, align 4, !tbaa !15
  %arrayidx911 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %424 = load i32, ptr %arrayidx911, align 4, !tbaa !15
  %add912 = add i32 %423, %424
  %arrayidx913 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  store i32 %add912, ptr %arrayidx913, align 4, !tbaa !15
  %arrayidx914 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %425 = load i32, ptr %arrayidx914, align 4, !tbaa !15
  %arrayidx915 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %426 = load i32, ptr %arrayidx915, align 4, !tbaa !15
  %xor916 = xor i32 %425, %426
  %call917 = call i32 @rotr32(i32 noundef %xor916, i32 noundef 12)
  %arrayidx918 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  store i32 %call917, ptr %arrayidx918, align 4, !tbaa !15
  %arrayidx919 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %427 = load i32, ptr %arrayidx919, align 4, !tbaa !15
  %arrayidx920 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %428 = load i32, ptr %arrayidx920, align 4, !tbaa !15
  %add921 = add i32 %427, %428
  %429 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 2, i64 7), align 1, !tbaa !19
  %idxprom922 = zext i8 %429 to i64
  %arrayidx923 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom922
  %430 = load i32, ptr %arrayidx923, align 4, !tbaa !15
  %add924 = add i32 %add921, %430
  %arrayidx925 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  store i32 %add924, ptr %arrayidx925, align 4, !tbaa !15
  %arrayidx926 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %431 = load i32, ptr %arrayidx926, align 4, !tbaa !15
  %arrayidx927 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %432 = load i32, ptr %arrayidx927, align 4, !tbaa !15
  %xor928 = xor i32 %431, %432
  %call929 = call i32 @rotr32(i32 noundef %xor928, i32 noundef 8)
  %arrayidx930 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  store i32 %call929, ptr %arrayidx930, align 4, !tbaa !15
  %arrayidx931 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %433 = load i32, ptr %arrayidx931, align 4, !tbaa !15
  %arrayidx932 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %434 = load i32, ptr %arrayidx932, align 4, !tbaa !15
  %add933 = add i32 %433, %434
  %arrayidx934 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  store i32 %add933, ptr %arrayidx934, align 4, !tbaa !15
  %arrayidx935 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %435 = load i32, ptr %arrayidx935, align 4, !tbaa !15
  %arrayidx936 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %436 = load i32, ptr %arrayidx936, align 4, !tbaa !15
  %xor937 = xor i32 %435, %436
  %call938 = call i32 @rotr32(i32 noundef %xor937, i32 noundef 7)
  %arrayidx939 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  store i32 %call938, ptr %arrayidx939, align 4, !tbaa !15
  br label %do.cond940

do.cond940:                                       ; preds = %do.body897
  br label %do.end941

do.end941:                                        ; preds = %do.cond940
  br label %do.body942

do.body942:                                       ; preds = %do.end941
  %arrayidx943 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %437 = load i32, ptr %arrayidx943, align 16, !tbaa !15
  %arrayidx944 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %438 = load i32, ptr %arrayidx944, align 4, !tbaa !15
  %add945 = add i32 %437, %438
  %439 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 2, i64 8), align 8, !tbaa !19
  %idxprom946 = zext i8 %439 to i64
  %arrayidx947 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom946
  %440 = load i32, ptr %arrayidx947, align 4, !tbaa !15
  %add948 = add i32 %add945, %440
  %arrayidx949 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  store i32 %add948, ptr %arrayidx949, align 16, !tbaa !15
  %arrayidx950 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %441 = load i32, ptr %arrayidx950, align 4, !tbaa !15
  %arrayidx951 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %442 = load i32, ptr %arrayidx951, align 16, !tbaa !15
  %xor952 = xor i32 %441, %442
  %call953 = call i32 @rotr32(i32 noundef %xor952, i32 noundef 16)
  %arrayidx954 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  store i32 %call953, ptr %arrayidx954, align 4, !tbaa !15
  %arrayidx955 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %443 = load i32, ptr %arrayidx955, align 8, !tbaa !15
  %arrayidx956 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %444 = load i32, ptr %arrayidx956, align 4, !tbaa !15
  %add957 = add i32 %443, %444
  %arrayidx958 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  store i32 %add957, ptr %arrayidx958, align 8, !tbaa !15
  %arrayidx959 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %445 = load i32, ptr %arrayidx959, align 4, !tbaa !15
  %arrayidx960 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %446 = load i32, ptr %arrayidx960, align 8, !tbaa !15
  %xor961 = xor i32 %445, %446
  %call962 = call i32 @rotr32(i32 noundef %xor961, i32 noundef 12)
  %arrayidx963 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  store i32 %call962, ptr %arrayidx963, align 4, !tbaa !15
  %arrayidx964 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %447 = load i32, ptr %arrayidx964, align 16, !tbaa !15
  %arrayidx965 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %448 = load i32, ptr %arrayidx965, align 4, !tbaa !15
  %add966 = add i32 %447, %448
  %449 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 2, i64 9), align 1, !tbaa !19
  %idxprom967 = zext i8 %449 to i64
  %arrayidx968 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom967
  %450 = load i32, ptr %arrayidx968, align 4, !tbaa !15
  %add969 = add i32 %add966, %450
  %arrayidx970 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  store i32 %add969, ptr %arrayidx970, align 16, !tbaa !15
  %arrayidx971 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %451 = load i32, ptr %arrayidx971, align 4, !tbaa !15
  %arrayidx972 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %452 = load i32, ptr %arrayidx972, align 16, !tbaa !15
  %xor973 = xor i32 %451, %452
  %call974 = call i32 @rotr32(i32 noundef %xor973, i32 noundef 8)
  %arrayidx975 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  store i32 %call974, ptr %arrayidx975, align 4, !tbaa !15
  %arrayidx976 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %453 = load i32, ptr %arrayidx976, align 8, !tbaa !15
  %arrayidx977 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %454 = load i32, ptr %arrayidx977, align 4, !tbaa !15
  %add978 = add i32 %453, %454
  %arrayidx979 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  store i32 %add978, ptr %arrayidx979, align 8, !tbaa !15
  %arrayidx980 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %455 = load i32, ptr %arrayidx980, align 4, !tbaa !15
  %arrayidx981 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %456 = load i32, ptr %arrayidx981, align 8, !tbaa !15
  %xor982 = xor i32 %455, %456
  %call983 = call i32 @rotr32(i32 noundef %xor982, i32 noundef 7)
  %arrayidx984 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  store i32 %call983, ptr %arrayidx984, align 4, !tbaa !15
  br label %do.cond985

do.cond985:                                       ; preds = %do.body942
  br label %do.end986

do.end986:                                        ; preds = %do.cond985
  br label %do.body987

do.body987:                                       ; preds = %do.end986
  %arrayidx988 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %457 = load i32, ptr %arrayidx988, align 4, !tbaa !15
  %arrayidx989 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %458 = load i32, ptr %arrayidx989, align 8, !tbaa !15
  %add990 = add i32 %457, %458
  %459 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 2, i64 10), align 2, !tbaa !19
  %idxprom991 = zext i8 %459 to i64
  %arrayidx992 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom991
  %460 = load i32, ptr %arrayidx992, align 4, !tbaa !15
  %add993 = add i32 %add990, %460
  %arrayidx994 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  store i32 %add993, ptr %arrayidx994, align 4, !tbaa !15
  %arrayidx995 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %461 = load i32, ptr %arrayidx995, align 16, !tbaa !15
  %arrayidx996 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %462 = load i32, ptr %arrayidx996, align 4, !tbaa !15
  %xor997 = xor i32 %461, %462
  %call998 = call i32 @rotr32(i32 noundef %xor997, i32 noundef 16)
  %arrayidx999 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  store i32 %call998, ptr %arrayidx999, align 16, !tbaa !15
  %arrayidx1000 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %463 = load i32, ptr %arrayidx1000, align 4, !tbaa !15
  %arrayidx1001 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %464 = load i32, ptr %arrayidx1001, align 16, !tbaa !15
  %add1002 = add i32 %463, %464
  %arrayidx1003 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  store i32 %add1002, ptr %arrayidx1003, align 4, !tbaa !15
  %arrayidx1004 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %465 = load i32, ptr %arrayidx1004, align 8, !tbaa !15
  %arrayidx1005 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %466 = load i32, ptr %arrayidx1005, align 4, !tbaa !15
  %xor1006 = xor i32 %465, %466
  %call1007 = call i32 @rotr32(i32 noundef %xor1006, i32 noundef 12)
  %arrayidx1008 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  store i32 %call1007, ptr %arrayidx1008, align 8, !tbaa !15
  %arrayidx1009 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %467 = load i32, ptr %arrayidx1009, align 4, !tbaa !15
  %arrayidx1010 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %468 = load i32, ptr %arrayidx1010, align 8, !tbaa !15
  %add1011 = add i32 %467, %468
  %469 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 2, i64 11), align 1, !tbaa !19
  %idxprom1012 = zext i8 %469 to i64
  %arrayidx1013 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom1012
  %470 = load i32, ptr %arrayidx1013, align 4, !tbaa !15
  %add1014 = add i32 %add1011, %470
  %arrayidx1015 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  store i32 %add1014, ptr %arrayidx1015, align 4, !tbaa !15
  %arrayidx1016 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %471 = load i32, ptr %arrayidx1016, align 16, !tbaa !15
  %arrayidx1017 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %472 = load i32, ptr %arrayidx1017, align 4, !tbaa !15
  %xor1018 = xor i32 %471, %472
  %call1019 = call i32 @rotr32(i32 noundef %xor1018, i32 noundef 8)
  %arrayidx1020 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  store i32 %call1019, ptr %arrayidx1020, align 16, !tbaa !15
  %arrayidx1021 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %473 = load i32, ptr %arrayidx1021, align 4, !tbaa !15
  %arrayidx1022 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %474 = load i32, ptr %arrayidx1022, align 16, !tbaa !15
  %add1023 = add i32 %473, %474
  %arrayidx1024 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  store i32 %add1023, ptr %arrayidx1024, align 4, !tbaa !15
  %arrayidx1025 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %475 = load i32, ptr %arrayidx1025, align 8, !tbaa !15
  %arrayidx1026 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %476 = load i32, ptr %arrayidx1026, align 4, !tbaa !15
  %xor1027 = xor i32 %475, %476
  %call1028 = call i32 @rotr32(i32 noundef %xor1027, i32 noundef 7)
  %arrayidx1029 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  store i32 %call1028, ptr %arrayidx1029, align 8, !tbaa !15
  br label %do.cond1030

do.cond1030:                                      ; preds = %do.body987
  br label %do.end1031

do.end1031:                                       ; preds = %do.cond1030
  br label %do.body1032

do.body1032:                                      ; preds = %do.end1031
  %arrayidx1033 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %477 = load i32, ptr %arrayidx1033, align 8, !tbaa !15
  %arrayidx1034 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %478 = load i32, ptr %arrayidx1034, align 4, !tbaa !15
  %add1035 = add i32 %477, %478
  %479 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 2, i64 12), align 4, !tbaa !19
  %idxprom1036 = zext i8 %479 to i64
  %arrayidx1037 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom1036
  %480 = load i32, ptr %arrayidx1037, align 4, !tbaa !15
  %add1038 = add i32 %add1035, %480
  %arrayidx1039 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  store i32 %add1038, ptr %arrayidx1039, align 8, !tbaa !15
  %arrayidx1040 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %481 = load i32, ptr %arrayidx1040, align 4, !tbaa !15
  %arrayidx1041 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %482 = load i32, ptr %arrayidx1041, align 8, !tbaa !15
  %xor1042 = xor i32 %481, %482
  %call1043 = call i32 @rotr32(i32 noundef %xor1042, i32 noundef 16)
  %arrayidx1044 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  store i32 %call1043, ptr %arrayidx1044, align 4, !tbaa !15
  %arrayidx1045 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %483 = load i32, ptr %arrayidx1045, align 16, !tbaa !15
  %arrayidx1046 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %484 = load i32, ptr %arrayidx1046, align 4, !tbaa !15
  %add1047 = add i32 %483, %484
  %arrayidx1048 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  store i32 %add1047, ptr %arrayidx1048, align 16, !tbaa !15
  %arrayidx1049 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %485 = load i32, ptr %arrayidx1049, align 4, !tbaa !15
  %arrayidx1050 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %486 = load i32, ptr %arrayidx1050, align 16, !tbaa !15
  %xor1051 = xor i32 %485, %486
  %call1052 = call i32 @rotr32(i32 noundef %xor1051, i32 noundef 12)
  %arrayidx1053 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  store i32 %call1052, ptr %arrayidx1053, align 4, !tbaa !15
  %arrayidx1054 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %487 = load i32, ptr %arrayidx1054, align 8, !tbaa !15
  %arrayidx1055 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %488 = load i32, ptr %arrayidx1055, align 4, !tbaa !15
  %add1056 = add i32 %487, %488
  %489 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 2, i64 13), align 1, !tbaa !19
  %idxprom1057 = zext i8 %489 to i64
  %arrayidx1058 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom1057
  %490 = load i32, ptr %arrayidx1058, align 4, !tbaa !15
  %add1059 = add i32 %add1056, %490
  %arrayidx1060 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  store i32 %add1059, ptr %arrayidx1060, align 8, !tbaa !15
  %arrayidx1061 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %491 = load i32, ptr %arrayidx1061, align 4, !tbaa !15
  %arrayidx1062 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %492 = load i32, ptr %arrayidx1062, align 8, !tbaa !15
  %xor1063 = xor i32 %491, %492
  %call1064 = call i32 @rotr32(i32 noundef %xor1063, i32 noundef 8)
  %arrayidx1065 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  store i32 %call1064, ptr %arrayidx1065, align 4, !tbaa !15
  %arrayidx1066 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %493 = load i32, ptr %arrayidx1066, align 16, !tbaa !15
  %arrayidx1067 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %494 = load i32, ptr %arrayidx1067, align 4, !tbaa !15
  %add1068 = add i32 %493, %494
  %arrayidx1069 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  store i32 %add1068, ptr %arrayidx1069, align 16, !tbaa !15
  %arrayidx1070 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %495 = load i32, ptr %arrayidx1070, align 4, !tbaa !15
  %arrayidx1071 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %496 = load i32, ptr %arrayidx1071, align 16, !tbaa !15
  %xor1072 = xor i32 %495, %496
  %call1073 = call i32 @rotr32(i32 noundef %xor1072, i32 noundef 7)
  %arrayidx1074 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  store i32 %call1073, ptr %arrayidx1074, align 4, !tbaa !15
  br label %do.cond1075

do.cond1075:                                      ; preds = %do.body1032
  br label %do.end1076

do.end1076:                                       ; preds = %do.cond1075
  br label %do.body1077

do.body1077:                                      ; preds = %do.end1076
  %arrayidx1078 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %497 = load i32, ptr %arrayidx1078, align 4, !tbaa !15
  %arrayidx1079 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %498 = load i32, ptr %arrayidx1079, align 16, !tbaa !15
  %add1080 = add i32 %497, %498
  %499 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 2, i64 14), align 2, !tbaa !19
  %idxprom1081 = zext i8 %499 to i64
  %arrayidx1082 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom1081
  %500 = load i32, ptr %arrayidx1082, align 4, !tbaa !15
  %add1083 = add i32 %add1080, %500
  %arrayidx1084 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  store i32 %add1083, ptr %arrayidx1084, align 4, !tbaa !15
  %arrayidx1085 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %501 = load i32, ptr %arrayidx1085, align 8, !tbaa !15
  %arrayidx1086 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %502 = load i32, ptr %arrayidx1086, align 4, !tbaa !15
  %xor1087 = xor i32 %501, %502
  %call1088 = call i32 @rotr32(i32 noundef %xor1087, i32 noundef 16)
  %arrayidx1089 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  store i32 %call1088, ptr %arrayidx1089, align 8, !tbaa !15
  %arrayidx1090 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %503 = load i32, ptr %arrayidx1090, align 4, !tbaa !15
  %arrayidx1091 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %504 = load i32, ptr %arrayidx1091, align 8, !tbaa !15
  %add1092 = add i32 %503, %504
  %arrayidx1093 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  store i32 %add1092, ptr %arrayidx1093, align 4, !tbaa !15
  %arrayidx1094 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %505 = load i32, ptr %arrayidx1094, align 16, !tbaa !15
  %arrayidx1095 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %506 = load i32, ptr %arrayidx1095, align 4, !tbaa !15
  %xor1096 = xor i32 %505, %506
  %call1097 = call i32 @rotr32(i32 noundef %xor1096, i32 noundef 12)
  %arrayidx1098 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  store i32 %call1097, ptr %arrayidx1098, align 16, !tbaa !15
  %arrayidx1099 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %507 = load i32, ptr %arrayidx1099, align 4, !tbaa !15
  %arrayidx1100 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %508 = load i32, ptr %arrayidx1100, align 16, !tbaa !15
  %add1101 = add i32 %507, %508
  %509 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 2, i64 15), align 1, !tbaa !19
  %idxprom1102 = zext i8 %509 to i64
  %arrayidx1103 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom1102
  %510 = load i32, ptr %arrayidx1103, align 4, !tbaa !15
  %add1104 = add i32 %add1101, %510
  %arrayidx1105 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  store i32 %add1104, ptr %arrayidx1105, align 4, !tbaa !15
  %arrayidx1106 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %511 = load i32, ptr %arrayidx1106, align 8, !tbaa !15
  %arrayidx1107 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %512 = load i32, ptr %arrayidx1107, align 4, !tbaa !15
  %xor1108 = xor i32 %511, %512
  %call1109 = call i32 @rotr32(i32 noundef %xor1108, i32 noundef 8)
  %arrayidx1110 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  store i32 %call1109, ptr %arrayidx1110, align 8, !tbaa !15
  %arrayidx1111 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %513 = load i32, ptr %arrayidx1111, align 4, !tbaa !15
  %arrayidx1112 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %514 = load i32, ptr %arrayidx1112, align 8, !tbaa !15
  %add1113 = add i32 %513, %514
  %arrayidx1114 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  store i32 %add1113, ptr %arrayidx1114, align 4, !tbaa !15
  %arrayidx1115 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %515 = load i32, ptr %arrayidx1115, align 16, !tbaa !15
  %arrayidx1116 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %516 = load i32, ptr %arrayidx1116, align 4, !tbaa !15
  %xor1117 = xor i32 %515, %516
  %call1118 = call i32 @rotr32(i32 noundef %xor1117, i32 noundef 7)
  %arrayidx1119 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  store i32 %call1118, ptr %arrayidx1119, align 16, !tbaa !15
  br label %do.cond1120

do.cond1120:                                      ; preds = %do.body1077
  br label %do.end1121

do.end1121:                                       ; preds = %do.cond1120
  br label %do.cond1122

do.cond1122:                                      ; preds = %do.end1121
  br label %do.end1123

do.end1123:                                       ; preds = %do.cond1122
  br label %do.body1124

do.body1124:                                      ; preds = %do.end1123
  br label %do.body1125

do.body1125:                                      ; preds = %do.body1124
  %arrayidx1126 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %517 = load i32, ptr %arrayidx1126, align 16, !tbaa !15
  %arrayidx1127 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %518 = load i32, ptr %arrayidx1127, align 16, !tbaa !15
  %add1128 = add i32 %517, %518
  %519 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 3), align 16, !tbaa !19
  %idxprom1129 = zext i8 %519 to i64
  %arrayidx1130 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom1129
  %520 = load i32, ptr %arrayidx1130, align 4, !tbaa !15
  %add1131 = add i32 %add1128, %520
  %arrayidx1132 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  store i32 %add1131, ptr %arrayidx1132, align 16, !tbaa !15
  %arrayidx1133 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %521 = load i32, ptr %arrayidx1133, align 16, !tbaa !15
  %arrayidx1134 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %522 = load i32, ptr %arrayidx1134, align 16, !tbaa !15
  %xor1135 = xor i32 %521, %522
  %call1136 = call i32 @rotr32(i32 noundef %xor1135, i32 noundef 16)
  %arrayidx1137 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  store i32 %call1136, ptr %arrayidx1137, align 16, !tbaa !15
  %arrayidx1138 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %523 = load i32, ptr %arrayidx1138, align 16, !tbaa !15
  %arrayidx1139 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %524 = load i32, ptr %arrayidx1139, align 16, !tbaa !15
  %add1140 = add i32 %523, %524
  %arrayidx1141 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  store i32 %add1140, ptr %arrayidx1141, align 16, !tbaa !15
  %arrayidx1142 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %525 = load i32, ptr %arrayidx1142, align 16, !tbaa !15
  %arrayidx1143 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %526 = load i32, ptr %arrayidx1143, align 16, !tbaa !15
  %xor1144 = xor i32 %525, %526
  %call1145 = call i32 @rotr32(i32 noundef %xor1144, i32 noundef 12)
  %arrayidx1146 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  store i32 %call1145, ptr %arrayidx1146, align 16, !tbaa !15
  %arrayidx1147 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %527 = load i32, ptr %arrayidx1147, align 16, !tbaa !15
  %arrayidx1148 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %528 = load i32, ptr %arrayidx1148, align 16, !tbaa !15
  %add1149 = add i32 %527, %528
  %529 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 3, i64 1), align 1, !tbaa !19
  %idxprom1150 = zext i8 %529 to i64
  %arrayidx1151 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom1150
  %530 = load i32, ptr %arrayidx1151, align 4, !tbaa !15
  %add1152 = add i32 %add1149, %530
  %arrayidx1153 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  store i32 %add1152, ptr %arrayidx1153, align 16, !tbaa !15
  %arrayidx1154 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %531 = load i32, ptr %arrayidx1154, align 16, !tbaa !15
  %arrayidx1155 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %532 = load i32, ptr %arrayidx1155, align 16, !tbaa !15
  %xor1156 = xor i32 %531, %532
  %call1157 = call i32 @rotr32(i32 noundef %xor1156, i32 noundef 8)
  %arrayidx1158 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  store i32 %call1157, ptr %arrayidx1158, align 16, !tbaa !15
  %arrayidx1159 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %533 = load i32, ptr %arrayidx1159, align 16, !tbaa !15
  %arrayidx1160 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %534 = load i32, ptr %arrayidx1160, align 16, !tbaa !15
  %add1161 = add i32 %533, %534
  %arrayidx1162 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  store i32 %add1161, ptr %arrayidx1162, align 16, !tbaa !15
  %arrayidx1163 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %535 = load i32, ptr %arrayidx1163, align 16, !tbaa !15
  %arrayidx1164 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %536 = load i32, ptr %arrayidx1164, align 16, !tbaa !15
  %xor1165 = xor i32 %535, %536
  %call1166 = call i32 @rotr32(i32 noundef %xor1165, i32 noundef 7)
  %arrayidx1167 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  store i32 %call1166, ptr %arrayidx1167, align 16, !tbaa !15
  br label %do.cond1168

do.cond1168:                                      ; preds = %do.body1125
  br label %do.end1169

do.end1169:                                       ; preds = %do.cond1168
  br label %do.body1170

do.body1170:                                      ; preds = %do.end1169
  %arrayidx1171 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %537 = load i32, ptr %arrayidx1171, align 4, !tbaa !15
  %arrayidx1172 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %538 = load i32, ptr %arrayidx1172, align 4, !tbaa !15
  %add1173 = add i32 %537, %538
  %539 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 3, i64 2), align 2, !tbaa !19
  %idxprom1174 = zext i8 %539 to i64
  %arrayidx1175 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom1174
  %540 = load i32, ptr %arrayidx1175, align 4, !tbaa !15
  %add1176 = add i32 %add1173, %540
  %arrayidx1177 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  store i32 %add1176, ptr %arrayidx1177, align 4, !tbaa !15
  %arrayidx1178 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %541 = load i32, ptr %arrayidx1178, align 4, !tbaa !15
  %arrayidx1179 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %542 = load i32, ptr %arrayidx1179, align 4, !tbaa !15
  %xor1180 = xor i32 %541, %542
  %call1181 = call i32 @rotr32(i32 noundef %xor1180, i32 noundef 16)
  %arrayidx1182 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  store i32 %call1181, ptr %arrayidx1182, align 4, !tbaa !15
  %arrayidx1183 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %543 = load i32, ptr %arrayidx1183, align 4, !tbaa !15
  %arrayidx1184 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %544 = load i32, ptr %arrayidx1184, align 4, !tbaa !15
  %add1185 = add i32 %543, %544
  %arrayidx1186 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  store i32 %add1185, ptr %arrayidx1186, align 4, !tbaa !15
  %arrayidx1187 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %545 = load i32, ptr %arrayidx1187, align 4, !tbaa !15
  %arrayidx1188 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %546 = load i32, ptr %arrayidx1188, align 4, !tbaa !15
  %xor1189 = xor i32 %545, %546
  %call1190 = call i32 @rotr32(i32 noundef %xor1189, i32 noundef 12)
  %arrayidx1191 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  store i32 %call1190, ptr %arrayidx1191, align 4, !tbaa !15
  %arrayidx1192 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %547 = load i32, ptr %arrayidx1192, align 4, !tbaa !15
  %arrayidx1193 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %548 = load i32, ptr %arrayidx1193, align 4, !tbaa !15
  %add1194 = add i32 %547, %548
  %549 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 3, i64 3), align 1, !tbaa !19
  %idxprom1195 = zext i8 %549 to i64
  %arrayidx1196 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom1195
  %550 = load i32, ptr %arrayidx1196, align 4, !tbaa !15
  %add1197 = add i32 %add1194, %550
  %arrayidx1198 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  store i32 %add1197, ptr %arrayidx1198, align 4, !tbaa !15
  %arrayidx1199 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %551 = load i32, ptr %arrayidx1199, align 4, !tbaa !15
  %arrayidx1200 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %552 = load i32, ptr %arrayidx1200, align 4, !tbaa !15
  %xor1201 = xor i32 %551, %552
  %call1202 = call i32 @rotr32(i32 noundef %xor1201, i32 noundef 8)
  %arrayidx1203 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  store i32 %call1202, ptr %arrayidx1203, align 4, !tbaa !15
  %arrayidx1204 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %553 = load i32, ptr %arrayidx1204, align 4, !tbaa !15
  %arrayidx1205 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %554 = load i32, ptr %arrayidx1205, align 4, !tbaa !15
  %add1206 = add i32 %553, %554
  %arrayidx1207 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  store i32 %add1206, ptr %arrayidx1207, align 4, !tbaa !15
  %arrayidx1208 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %555 = load i32, ptr %arrayidx1208, align 4, !tbaa !15
  %arrayidx1209 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %556 = load i32, ptr %arrayidx1209, align 4, !tbaa !15
  %xor1210 = xor i32 %555, %556
  %call1211 = call i32 @rotr32(i32 noundef %xor1210, i32 noundef 7)
  %arrayidx1212 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  store i32 %call1211, ptr %arrayidx1212, align 4, !tbaa !15
  br label %do.cond1213

do.cond1213:                                      ; preds = %do.body1170
  br label %do.end1214

do.end1214:                                       ; preds = %do.cond1213
  br label %do.body1215

do.body1215:                                      ; preds = %do.end1214
  %arrayidx1216 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %557 = load i32, ptr %arrayidx1216, align 8, !tbaa !15
  %arrayidx1217 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %558 = load i32, ptr %arrayidx1217, align 8, !tbaa !15
  %add1218 = add i32 %557, %558
  %559 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 3, i64 4), align 4, !tbaa !19
  %idxprom1219 = zext i8 %559 to i64
  %arrayidx1220 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom1219
  %560 = load i32, ptr %arrayidx1220, align 4, !tbaa !15
  %add1221 = add i32 %add1218, %560
  %arrayidx1222 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  store i32 %add1221, ptr %arrayidx1222, align 8, !tbaa !15
  %arrayidx1223 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %561 = load i32, ptr %arrayidx1223, align 8, !tbaa !15
  %arrayidx1224 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %562 = load i32, ptr %arrayidx1224, align 8, !tbaa !15
  %xor1225 = xor i32 %561, %562
  %call1226 = call i32 @rotr32(i32 noundef %xor1225, i32 noundef 16)
  %arrayidx1227 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  store i32 %call1226, ptr %arrayidx1227, align 8, !tbaa !15
  %arrayidx1228 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %563 = load i32, ptr %arrayidx1228, align 8, !tbaa !15
  %arrayidx1229 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %564 = load i32, ptr %arrayidx1229, align 8, !tbaa !15
  %add1230 = add i32 %563, %564
  %arrayidx1231 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  store i32 %add1230, ptr %arrayidx1231, align 8, !tbaa !15
  %arrayidx1232 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %565 = load i32, ptr %arrayidx1232, align 8, !tbaa !15
  %arrayidx1233 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %566 = load i32, ptr %arrayidx1233, align 8, !tbaa !15
  %xor1234 = xor i32 %565, %566
  %call1235 = call i32 @rotr32(i32 noundef %xor1234, i32 noundef 12)
  %arrayidx1236 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  store i32 %call1235, ptr %arrayidx1236, align 8, !tbaa !15
  %arrayidx1237 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %567 = load i32, ptr %arrayidx1237, align 8, !tbaa !15
  %arrayidx1238 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %568 = load i32, ptr %arrayidx1238, align 8, !tbaa !15
  %add1239 = add i32 %567, %568
  %569 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 3, i64 5), align 1, !tbaa !19
  %idxprom1240 = zext i8 %569 to i64
  %arrayidx1241 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom1240
  %570 = load i32, ptr %arrayidx1241, align 4, !tbaa !15
  %add1242 = add i32 %add1239, %570
  %arrayidx1243 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  store i32 %add1242, ptr %arrayidx1243, align 8, !tbaa !15
  %arrayidx1244 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %571 = load i32, ptr %arrayidx1244, align 8, !tbaa !15
  %arrayidx1245 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %572 = load i32, ptr %arrayidx1245, align 8, !tbaa !15
  %xor1246 = xor i32 %571, %572
  %call1247 = call i32 @rotr32(i32 noundef %xor1246, i32 noundef 8)
  %arrayidx1248 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  store i32 %call1247, ptr %arrayidx1248, align 8, !tbaa !15
  %arrayidx1249 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %573 = load i32, ptr %arrayidx1249, align 8, !tbaa !15
  %arrayidx1250 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %574 = load i32, ptr %arrayidx1250, align 8, !tbaa !15
  %add1251 = add i32 %573, %574
  %arrayidx1252 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  store i32 %add1251, ptr %arrayidx1252, align 8, !tbaa !15
  %arrayidx1253 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %575 = load i32, ptr %arrayidx1253, align 8, !tbaa !15
  %arrayidx1254 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %576 = load i32, ptr %arrayidx1254, align 8, !tbaa !15
  %xor1255 = xor i32 %575, %576
  %call1256 = call i32 @rotr32(i32 noundef %xor1255, i32 noundef 7)
  %arrayidx1257 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  store i32 %call1256, ptr %arrayidx1257, align 8, !tbaa !15
  br label %do.cond1258

do.cond1258:                                      ; preds = %do.body1215
  br label %do.end1259

do.end1259:                                       ; preds = %do.cond1258
  br label %do.body1260

do.body1260:                                      ; preds = %do.end1259
  %arrayidx1261 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %577 = load i32, ptr %arrayidx1261, align 4, !tbaa !15
  %arrayidx1262 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %578 = load i32, ptr %arrayidx1262, align 4, !tbaa !15
  %add1263 = add i32 %577, %578
  %579 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 3, i64 6), align 2, !tbaa !19
  %idxprom1264 = zext i8 %579 to i64
  %arrayidx1265 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom1264
  %580 = load i32, ptr %arrayidx1265, align 4, !tbaa !15
  %add1266 = add i32 %add1263, %580
  %arrayidx1267 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  store i32 %add1266, ptr %arrayidx1267, align 4, !tbaa !15
  %arrayidx1268 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %581 = load i32, ptr %arrayidx1268, align 4, !tbaa !15
  %arrayidx1269 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %582 = load i32, ptr %arrayidx1269, align 4, !tbaa !15
  %xor1270 = xor i32 %581, %582
  %call1271 = call i32 @rotr32(i32 noundef %xor1270, i32 noundef 16)
  %arrayidx1272 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  store i32 %call1271, ptr %arrayidx1272, align 4, !tbaa !15
  %arrayidx1273 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %583 = load i32, ptr %arrayidx1273, align 4, !tbaa !15
  %arrayidx1274 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %584 = load i32, ptr %arrayidx1274, align 4, !tbaa !15
  %add1275 = add i32 %583, %584
  %arrayidx1276 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  store i32 %add1275, ptr %arrayidx1276, align 4, !tbaa !15
  %arrayidx1277 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %585 = load i32, ptr %arrayidx1277, align 4, !tbaa !15
  %arrayidx1278 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %586 = load i32, ptr %arrayidx1278, align 4, !tbaa !15
  %xor1279 = xor i32 %585, %586
  %call1280 = call i32 @rotr32(i32 noundef %xor1279, i32 noundef 12)
  %arrayidx1281 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  store i32 %call1280, ptr %arrayidx1281, align 4, !tbaa !15
  %arrayidx1282 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %587 = load i32, ptr %arrayidx1282, align 4, !tbaa !15
  %arrayidx1283 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %588 = load i32, ptr %arrayidx1283, align 4, !tbaa !15
  %add1284 = add i32 %587, %588
  %589 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 3, i64 7), align 1, !tbaa !19
  %idxprom1285 = zext i8 %589 to i64
  %arrayidx1286 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom1285
  %590 = load i32, ptr %arrayidx1286, align 4, !tbaa !15
  %add1287 = add i32 %add1284, %590
  %arrayidx1288 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  store i32 %add1287, ptr %arrayidx1288, align 4, !tbaa !15
  %arrayidx1289 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %591 = load i32, ptr %arrayidx1289, align 4, !tbaa !15
  %arrayidx1290 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %592 = load i32, ptr %arrayidx1290, align 4, !tbaa !15
  %xor1291 = xor i32 %591, %592
  %call1292 = call i32 @rotr32(i32 noundef %xor1291, i32 noundef 8)
  %arrayidx1293 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  store i32 %call1292, ptr %arrayidx1293, align 4, !tbaa !15
  %arrayidx1294 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %593 = load i32, ptr %arrayidx1294, align 4, !tbaa !15
  %arrayidx1295 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %594 = load i32, ptr %arrayidx1295, align 4, !tbaa !15
  %add1296 = add i32 %593, %594
  %arrayidx1297 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  store i32 %add1296, ptr %arrayidx1297, align 4, !tbaa !15
  %arrayidx1298 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %595 = load i32, ptr %arrayidx1298, align 4, !tbaa !15
  %arrayidx1299 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %596 = load i32, ptr %arrayidx1299, align 4, !tbaa !15
  %xor1300 = xor i32 %595, %596
  %call1301 = call i32 @rotr32(i32 noundef %xor1300, i32 noundef 7)
  %arrayidx1302 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  store i32 %call1301, ptr %arrayidx1302, align 4, !tbaa !15
  br label %do.cond1303

do.cond1303:                                      ; preds = %do.body1260
  br label %do.end1304

do.end1304:                                       ; preds = %do.cond1303
  br label %do.body1305

do.body1305:                                      ; preds = %do.end1304
  %arrayidx1306 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %597 = load i32, ptr %arrayidx1306, align 16, !tbaa !15
  %arrayidx1307 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %598 = load i32, ptr %arrayidx1307, align 4, !tbaa !15
  %add1308 = add i32 %597, %598
  %599 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 3, i64 8), align 8, !tbaa !19
  %idxprom1309 = zext i8 %599 to i64
  %arrayidx1310 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom1309
  %600 = load i32, ptr %arrayidx1310, align 4, !tbaa !15
  %add1311 = add i32 %add1308, %600
  %arrayidx1312 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  store i32 %add1311, ptr %arrayidx1312, align 16, !tbaa !15
  %arrayidx1313 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %601 = load i32, ptr %arrayidx1313, align 4, !tbaa !15
  %arrayidx1314 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %602 = load i32, ptr %arrayidx1314, align 16, !tbaa !15
  %xor1315 = xor i32 %601, %602
  %call1316 = call i32 @rotr32(i32 noundef %xor1315, i32 noundef 16)
  %arrayidx1317 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  store i32 %call1316, ptr %arrayidx1317, align 4, !tbaa !15
  %arrayidx1318 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %603 = load i32, ptr %arrayidx1318, align 8, !tbaa !15
  %arrayidx1319 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %604 = load i32, ptr %arrayidx1319, align 4, !tbaa !15
  %add1320 = add i32 %603, %604
  %arrayidx1321 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  store i32 %add1320, ptr %arrayidx1321, align 8, !tbaa !15
  %arrayidx1322 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %605 = load i32, ptr %arrayidx1322, align 4, !tbaa !15
  %arrayidx1323 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %606 = load i32, ptr %arrayidx1323, align 8, !tbaa !15
  %xor1324 = xor i32 %605, %606
  %call1325 = call i32 @rotr32(i32 noundef %xor1324, i32 noundef 12)
  %arrayidx1326 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  store i32 %call1325, ptr %arrayidx1326, align 4, !tbaa !15
  %arrayidx1327 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %607 = load i32, ptr %arrayidx1327, align 16, !tbaa !15
  %arrayidx1328 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %608 = load i32, ptr %arrayidx1328, align 4, !tbaa !15
  %add1329 = add i32 %607, %608
  %609 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 3, i64 9), align 1, !tbaa !19
  %idxprom1330 = zext i8 %609 to i64
  %arrayidx1331 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom1330
  %610 = load i32, ptr %arrayidx1331, align 4, !tbaa !15
  %add1332 = add i32 %add1329, %610
  %arrayidx1333 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  store i32 %add1332, ptr %arrayidx1333, align 16, !tbaa !15
  %arrayidx1334 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %611 = load i32, ptr %arrayidx1334, align 4, !tbaa !15
  %arrayidx1335 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %612 = load i32, ptr %arrayidx1335, align 16, !tbaa !15
  %xor1336 = xor i32 %611, %612
  %call1337 = call i32 @rotr32(i32 noundef %xor1336, i32 noundef 8)
  %arrayidx1338 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  store i32 %call1337, ptr %arrayidx1338, align 4, !tbaa !15
  %arrayidx1339 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %613 = load i32, ptr %arrayidx1339, align 8, !tbaa !15
  %arrayidx1340 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %614 = load i32, ptr %arrayidx1340, align 4, !tbaa !15
  %add1341 = add i32 %613, %614
  %arrayidx1342 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  store i32 %add1341, ptr %arrayidx1342, align 8, !tbaa !15
  %arrayidx1343 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %615 = load i32, ptr %arrayidx1343, align 4, !tbaa !15
  %arrayidx1344 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %616 = load i32, ptr %arrayidx1344, align 8, !tbaa !15
  %xor1345 = xor i32 %615, %616
  %call1346 = call i32 @rotr32(i32 noundef %xor1345, i32 noundef 7)
  %arrayidx1347 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  store i32 %call1346, ptr %arrayidx1347, align 4, !tbaa !15
  br label %do.cond1348

do.cond1348:                                      ; preds = %do.body1305
  br label %do.end1349

do.end1349:                                       ; preds = %do.cond1348
  br label %do.body1350

do.body1350:                                      ; preds = %do.end1349
  %arrayidx1351 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %617 = load i32, ptr %arrayidx1351, align 4, !tbaa !15
  %arrayidx1352 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %618 = load i32, ptr %arrayidx1352, align 8, !tbaa !15
  %add1353 = add i32 %617, %618
  %619 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 3, i64 10), align 2, !tbaa !19
  %idxprom1354 = zext i8 %619 to i64
  %arrayidx1355 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom1354
  %620 = load i32, ptr %arrayidx1355, align 4, !tbaa !15
  %add1356 = add i32 %add1353, %620
  %arrayidx1357 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  store i32 %add1356, ptr %arrayidx1357, align 4, !tbaa !15
  %arrayidx1358 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %621 = load i32, ptr %arrayidx1358, align 16, !tbaa !15
  %arrayidx1359 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %622 = load i32, ptr %arrayidx1359, align 4, !tbaa !15
  %xor1360 = xor i32 %621, %622
  %call1361 = call i32 @rotr32(i32 noundef %xor1360, i32 noundef 16)
  %arrayidx1362 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  store i32 %call1361, ptr %arrayidx1362, align 16, !tbaa !15
  %arrayidx1363 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %623 = load i32, ptr %arrayidx1363, align 4, !tbaa !15
  %arrayidx1364 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %624 = load i32, ptr %arrayidx1364, align 16, !tbaa !15
  %add1365 = add i32 %623, %624
  %arrayidx1366 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  store i32 %add1365, ptr %arrayidx1366, align 4, !tbaa !15
  %arrayidx1367 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %625 = load i32, ptr %arrayidx1367, align 8, !tbaa !15
  %arrayidx1368 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %626 = load i32, ptr %arrayidx1368, align 4, !tbaa !15
  %xor1369 = xor i32 %625, %626
  %call1370 = call i32 @rotr32(i32 noundef %xor1369, i32 noundef 12)
  %arrayidx1371 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  store i32 %call1370, ptr %arrayidx1371, align 8, !tbaa !15
  %arrayidx1372 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %627 = load i32, ptr %arrayidx1372, align 4, !tbaa !15
  %arrayidx1373 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %628 = load i32, ptr %arrayidx1373, align 8, !tbaa !15
  %add1374 = add i32 %627, %628
  %629 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 3, i64 11), align 1, !tbaa !19
  %idxprom1375 = zext i8 %629 to i64
  %arrayidx1376 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom1375
  %630 = load i32, ptr %arrayidx1376, align 4, !tbaa !15
  %add1377 = add i32 %add1374, %630
  %arrayidx1378 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  store i32 %add1377, ptr %arrayidx1378, align 4, !tbaa !15
  %arrayidx1379 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %631 = load i32, ptr %arrayidx1379, align 16, !tbaa !15
  %arrayidx1380 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %632 = load i32, ptr %arrayidx1380, align 4, !tbaa !15
  %xor1381 = xor i32 %631, %632
  %call1382 = call i32 @rotr32(i32 noundef %xor1381, i32 noundef 8)
  %arrayidx1383 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  store i32 %call1382, ptr %arrayidx1383, align 16, !tbaa !15
  %arrayidx1384 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %633 = load i32, ptr %arrayidx1384, align 4, !tbaa !15
  %arrayidx1385 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %634 = load i32, ptr %arrayidx1385, align 16, !tbaa !15
  %add1386 = add i32 %633, %634
  %arrayidx1387 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  store i32 %add1386, ptr %arrayidx1387, align 4, !tbaa !15
  %arrayidx1388 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %635 = load i32, ptr %arrayidx1388, align 8, !tbaa !15
  %arrayidx1389 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %636 = load i32, ptr %arrayidx1389, align 4, !tbaa !15
  %xor1390 = xor i32 %635, %636
  %call1391 = call i32 @rotr32(i32 noundef %xor1390, i32 noundef 7)
  %arrayidx1392 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  store i32 %call1391, ptr %arrayidx1392, align 8, !tbaa !15
  br label %do.cond1393

do.cond1393:                                      ; preds = %do.body1350
  br label %do.end1394

do.end1394:                                       ; preds = %do.cond1393
  br label %do.body1395

do.body1395:                                      ; preds = %do.end1394
  %arrayidx1396 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %637 = load i32, ptr %arrayidx1396, align 8, !tbaa !15
  %arrayidx1397 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %638 = load i32, ptr %arrayidx1397, align 4, !tbaa !15
  %add1398 = add i32 %637, %638
  %639 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 3, i64 12), align 4, !tbaa !19
  %idxprom1399 = zext i8 %639 to i64
  %arrayidx1400 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom1399
  %640 = load i32, ptr %arrayidx1400, align 4, !tbaa !15
  %add1401 = add i32 %add1398, %640
  %arrayidx1402 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  store i32 %add1401, ptr %arrayidx1402, align 8, !tbaa !15
  %arrayidx1403 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %641 = load i32, ptr %arrayidx1403, align 4, !tbaa !15
  %arrayidx1404 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %642 = load i32, ptr %arrayidx1404, align 8, !tbaa !15
  %xor1405 = xor i32 %641, %642
  %call1406 = call i32 @rotr32(i32 noundef %xor1405, i32 noundef 16)
  %arrayidx1407 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  store i32 %call1406, ptr %arrayidx1407, align 4, !tbaa !15
  %arrayidx1408 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %643 = load i32, ptr %arrayidx1408, align 16, !tbaa !15
  %arrayidx1409 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %644 = load i32, ptr %arrayidx1409, align 4, !tbaa !15
  %add1410 = add i32 %643, %644
  %arrayidx1411 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  store i32 %add1410, ptr %arrayidx1411, align 16, !tbaa !15
  %arrayidx1412 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %645 = load i32, ptr %arrayidx1412, align 4, !tbaa !15
  %arrayidx1413 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %646 = load i32, ptr %arrayidx1413, align 16, !tbaa !15
  %xor1414 = xor i32 %645, %646
  %call1415 = call i32 @rotr32(i32 noundef %xor1414, i32 noundef 12)
  %arrayidx1416 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  store i32 %call1415, ptr %arrayidx1416, align 4, !tbaa !15
  %arrayidx1417 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %647 = load i32, ptr %arrayidx1417, align 8, !tbaa !15
  %arrayidx1418 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %648 = load i32, ptr %arrayidx1418, align 4, !tbaa !15
  %add1419 = add i32 %647, %648
  %649 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 3, i64 13), align 1, !tbaa !19
  %idxprom1420 = zext i8 %649 to i64
  %arrayidx1421 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom1420
  %650 = load i32, ptr %arrayidx1421, align 4, !tbaa !15
  %add1422 = add i32 %add1419, %650
  %arrayidx1423 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  store i32 %add1422, ptr %arrayidx1423, align 8, !tbaa !15
  %arrayidx1424 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %651 = load i32, ptr %arrayidx1424, align 4, !tbaa !15
  %arrayidx1425 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %652 = load i32, ptr %arrayidx1425, align 8, !tbaa !15
  %xor1426 = xor i32 %651, %652
  %call1427 = call i32 @rotr32(i32 noundef %xor1426, i32 noundef 8)
  %arrayidx1428 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  store i32 %call1427, ptr %arrayidx1428, align 4, !tbaa !15
  %arrayidx1429 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %653 = load i32, ptr %arrayidx1429, align 16, !tbaa !15
  %arrayidx1430 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %654 = load i32, ptr %arrayidx1430, align 4, !tbaa !15
  %add1431 = add i32 %653, %654
  %arrayidx1432 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  store i32 %add1431, ptr %arrayidx1432, align 16, !tbaa !15
  %arrayidx1433 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %655 = load i32, ptr %arrayidx1433, align 4, !tbaa !15
  %arrayidx1434 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %656 = load i32, ptr %arrayidx1434, align 16, !tbaa !15
  %xor1435 = xor i32 %655, %656
  %call1436 = call i32 @rotr32(i32 noundef %xor1435, i32 noundef 7)
  %arrayidx1437 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  store i32 %call1436, ptr %arrayidx1437, align 4, !tbaa !15
  br label %do.cond1438

do.cond1438:                                      ; preds = %do.body1395
  br label %do.end1439

do.end1439:                                       ; preds = %do.cond1438
  br label %do.body1440

do.body1440:                                      ; preds = %do.end1439
  %arrayidx1441 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %657 = load i32, ptr %arrayidx1441, align 4, !tbaa !15
  %arrayidx1442 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %658 = load i32, ptr %arrayidx1442, align 16, !tbaa !15
  %add1443 = add i32 %657, %658
  %659 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 3, i64 14), align 2, !tbaa !19
  %idxprom1444 = zext i8 %659 to i64
  %arrayidx1445 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom1444
  %660 = load i32, ptr %arrayidx1445, align 4, !tbaa !15
  %add1446 = add i32 %add1443, %660
  %arrayidx1447 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  store i32 %add1446, ptr %arrayidx1447, align 4, !tbaa !15
  %arrayidx1448 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %661 = load i32, ptr %arrayidx1448, align 8, !tbaa !15
  %arrayidx1449 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %662 = load i32, ptr %arrayidx1449, align 4, !tbaa !15
  %xor1450 = xor i32 %661, %662
  %call1451 = call i32 @rotr32(i32 noundef %xor1450, i32 noundef 16)
  %arrayidx1452 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  store i32 %call1451, ptr %arrayidx1452, align 8, !tbaa !15
  %arrayidx1453 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %663 = load i32, ptr %arrayidx1453, align 4, !tbaa !15
  %arrayidx1454 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %664 = load i32, ptr %arrayidx1454, align 8, !tbaa !15
  %add1455 = add i32 %663, %664
  %arrayidx1456 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  store i32 %add1455, ptr %arrayidx1456, align 4, !tbaa !15
  %arrayidx1457 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %665 = load i32, ptr %arrayidx1457, align 16, !tbaa !15
  %arrayidx1458 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %666 = load i32, ptr %arrayidx1458, align 4, !tbaa !15
  %xor1459 = xor i32 %665, %666
  %call1460 = call i32 @rotr32(i32 noundef %xor1459, i32 noundef 12)
  %arrayidx1461 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  store i32 %call1460, ptr %arrayidx1461, align 16, !tbaa !15
  %arrayidx1462 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %667 = load i32, ptr %arrayidx1462, align 4, !tbaa !15
  %arrayidx1463 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %668 = load i32, ptr %arrayidx1463, align 16, !tbaa !15
  %add1464 = add i32 %667, %668
  %669 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 3, i64 15), align 1, !tbaa !19
  %idxprom1465 = zext i8 %669 to i64
  %arrayidx1466 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom1465
  %670 = load i32, ptr %arrayidx1466, align 4, !tbaa !15
  %add1467 = add i32 %add1464, %670
  %arrayidx1468 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  store i32 %add1467, ptr %arrayidx1468, align 4, !tbaa !15
  %arrayidx1469 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %671 = load i32, ptr %arrayidx1469, align 8, !tbaa !15
  %arrayidx1470 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %672 = load i32, ptr %arrayidx1470, align 4, !tbaa !15
  %xor1471 = xor i32 %671, %672
  %call1472 = call i32 @rotr32(i32 noundef %xor1471, i32 noundef 8)
  %arrayidx1473 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  store i32 %call1472, ptr %arrayidx1473, align 8, !tbaa !15
  %arrayidx1474 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %673 = load i32, ptr %arrayidx1474, align 4, !tbaa !15
  %arrayidx1475 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %674 = load i32, ptr %arrayidx1475, align 8, !tbaa !15
  %add1476 = add i32 %673, %674
  %arrayidx1477 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  store i32 %add1476, ptr %arrayidx1477, align 4, !tbaa !15
  %arrayidx1478 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %675 = load i32, ptr %arrayidx1478, align 16, !tbaa !15
  %arrayidx1479 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %676 = load i32, ptr %arrayidx1479, align 4, !tbaa !15
  %xor1480 = xor i32 %675, %676
  %call1481 = call i32 @rotr32(i32 noundef %xor1480, i32 noundef 7)
  %arrayidx1482 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  store i32 %call1481, ptr %arrayidx1482, align 16, !tbaa !15
  br label %do.cond1483

do.cond1483:                                      ; preds = %do.body1440
  br label %do.end1484

do.end1484:                                       ; preds = %do.cond1483
  br label %do.cond1485

do.cond1485:                                      ; preds = %do.end1484
  br label %do.end1486

do.end1486:                                       ; preds = %do.cond1485
  br label %do.body1487

do.body1487:                                      ; preds = %do.end1486
  br label %do.body1488

do.body1488:                                      ; preds = %do.body1487
  %arrayidx1489 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %677 = load i32, ptr %arrayidx1489, align 16, !tbaa !15
  %arrayidx1490 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %678 = load i32, ptr %arrayidx1490, align 16, !tbaa !15
  %add1491 = add i32 %677, %678
  %679 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 4), align 16, !tbaa !19
  %idxprom1492 = zext i8 %679 to i64
  %arrayidx1493 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom1492
  %680 = load i32, ptr %arrayidx1493, align 4, !tbaa !15
  %add1494 = add i32 %add1491, %680
  %arrayidx1495 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  store i32 %add1494, ptr %arrayidx1495, align 16, !tbaa !15
  %arrayidx1496 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %681 = load i32, ptr %arrayidx1496, align 16, !tbaa !15
  %arrayidx1497 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %682 = load i32, ptr %arrayidx1497, align 16, !tbaa !15
  %xor1498 = xor i32 %681, %682
  %call1499 = call i32 @rotr32(i32 noundef %xor1498, i32 noundef 16)
  %arrayidx1500 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  store i32 %call1499, ptr %arrayidx1500, align 16, !tbaa !15
  %arrayidx1501 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %683 = load i32, ptr %arrayidx1501, align 16, !tbaa !15
  %arrayidx1502 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %684 = load i32, ptr %arrayidx1502, align 16, !tbaa !15
  %add1503 = add i32 %683, %684
  %arrayidx1504 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  store i32 %add1503, ptr %arrayidx1504, align 16, !tbaa !15
  %arrayidx1505 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %685 = load i32, ptr %arrayidx1505, align 16, !tbaa !15
  %arrayidx1506 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %686 = load i32, ptr %arrayidx1506, align 16, !tbaa !15
  %xor1507 = xor i32 %685, %686
  %call1508 = call i32 @rotr32(i32 noundef %xor1507, i32 noundef 12)
  %arrayidx1509 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  store i32 %call1508, ptr %arrayidx1509, align 16, !tbaa !15
  %arrayidx1510 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %687 = load i32, ptr %arrayidx1510, align 16, !tbaa !15
  %arrayidx1511 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %688 = load i32, ptr %arrayidx1511, align 16, !tbaa !15
  %add1512 = add i32 %687, %688
  %689 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 4, i64 1), align 1, !tbaa !19
  %idxprom1513 = zext i8 %689 to i64
  %arrayidx1514 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom1513
  %690 = load i32, ptr %arrayidx1514, align 4, !tbaa !15
  %add1515 = add i32 %add1512, %690
  %arrayidx1516 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  store i32 %add1515, ptr %arrayidx1516, align 16, !tbaa !15
  %arrayidx1517 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %691 = load i32, ptr %arrayidx1517, align 16, !tbaa !15
  %arrayidx1518 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %692 = load i32, ptr %arrayidx1518, align 16, !tbaa !15
  %xor1519 = xor i32 %691, %692
  %call1520 = call i32 @rotr32(i32 noundef %xor1519, i32 noundef 8)
  %arrayidx1521 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  store i32 %call1520, ptr %arrayidx1521, align 16, !tbaa !15
  %arrayidx1522 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %693 = load i32, ptr %arrayidx1522, align 16, !tbaa !15
  %arrayidx1523 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %694 = load i32, ptr %arrayidx1523, align 16, !tbaa !15
  %add1524 = add i32 %693, %694
  %arrayidx1525 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  store i32 %add1524, ptr %arrayidx1525, align 16, !tbaa !15
  %arrayidx1526 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %695 = load i32, ptr %arrayidx1526, align 16, !tbaa !15
  %arrayidx1527 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %696 = load i32, ptr %arrayidx1527, align 16, !tbaa !15
  %xor1528 = xor i32 %695, %696
  %call1529 = call i32 @rotr32(i32 noundef %xor1528, i32 noundef 7)
  %arrayidx1530 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  store i32 %call1529, ptr %arrayidx1530, align 16, !tbaa !15
  br label %do.cond1531

do.cond1531:                                      ; preds = %do.body1488
  br label %do.end1532

do.end1532:                                       ; preds = %do.cond1531
  br label %do.body1533

do.body1533:                                      ; preds = %do.end1532
  %arrayidx1534 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %697 = load i32, ptr %arrayidx1534, align 4, !tbaa !15
  %arrayidx1535 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %698 = load i32, ptr %arrayidx1535, align 4, !tbaa !15
  %add1536 = add i32 %697, %698
  %699 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 4, i64 2), align 2, !tbaa !19
  %idxprom1537 = zext i8 %699 to i64
  %arrayidx1538 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom1537
  %700 = load i32, ptr %arrayidx1538, align 4, !tbaa !15
  %add1539 = add i32 %add1536, %700
  %arrayidx1540 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  store i32 %add1539, ptr %arrayidx1540, align 4, !tbaa !15
  %arrayidx1541 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %701 = load i32, ptr %arrayidx1541, align 4, !tbaa !15
  %arrayidx1542 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %702 = load i32, ptr %arrayidx1542, align 4, !tbaa !15
  %xor1543 = xor i32 %701, %702
  %call1544 = call i32 @rotr32(i32 noundef %xor1543, i32 noundef 16)
  %arrayidx1545 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  store i32 %call1544, ptr %arrayidx1545, align 4, !tbaa !15
  %arrayidx1546 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %703 = load i32, ptr %arrayidx1546, align 4, !tbaa !15
  %arrayidx1547 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %704 = load i32, ptr %arrayidx1547, align 4, !tbaa !15
  %add1548 = add i32 %703, %704
  %arrayidx1549 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  store i32 %add1548, ptr %arrayidx1549, align 4, !tbaa !15
  %arrayidx1550 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %705 = load i32, ptr %arrayidx1550, align 4, !tbaa !15
  %arrayidx1551 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %706 = load i32, ptr %arrayidx1551, align 4, !tbaa !15
  %xor1552 = xor i32 %705, %706
  %call1553 = call i32 @rotr32(i32 noundef %xor1552, i32 noundef 12)
  %arrayidx1554 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  store i32 %call1553, ptr %arrayidx1554, align 4, !tbaa !15
  %arrayidx1555 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %707 = load i32, ptr %arrayidx1555, align 4, !tbaa !15
  %arrayidx1556 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %708 = load i32, ptr %arrayidx1556, align 4, !tbaa !15
  %add1557 = add i32 %707, %708
  %709 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 4, i64 3), align 1, !tbaa !19
  %idxprom1558 = zext i8 %709 to i64
  %arrayidx1559 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom1558
  %710 = load i32, ptr %arrayidx1559, align 4, !tbaa !15
  %add1560 = add i32 %add1557, %710
  %arrayidx1561 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  store i32 %add1560, ptr %arrayidx1561, align 4, !tbaa !15
  %arrayidx1562 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %711 = load i32, ptr %arrayidx1562, align 4, !tbaa !15
  %arrayidx1563 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %712 = load i32, ptr %arrayidx1563, align 4, !tbaa !15
  %xor1564 = xor i32 %711, %712
  %call1565 = call i32 @rotr32(i32 noundef %xor1564, i32 noundef 8)
  %arrayidx1566 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  store i32 %call1565, ptr %arrayidx1566, align 4, !tbaa !15
  %arrayidx1567 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %713 = load i32, ptr %arrayidx1567, align 4, !tbaa !15
  %arrayidx1568 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %714 = load i32, ptr %arrayidx1568, align 4, !tbaa !15
  %add1569 = add i32 %713, %714
  %arrayidx1570 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  store i32 %add1569, ptr %arrayidx1570, align 4, !tbaa !15
  %arrayidx1571 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %715 = load i32, ptr %arrayidx1571, align 4, !tbaa !15
  %arrayidx1572 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %716 = load i32, ptr %arrayidx1572, align 4, !tbaa !15
  %xor1573 = xor i32 %715, %716
  %call1574 = call i32 @rotr32(i32 noundef %xor1573, i32 noundef 7)
  %arrayidx1575 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  store i32 %call1574, ptr %arrayidx1575, align 4, !tbaa !15
  br label %do.cond1576

do.cond1576:                                      ; preds = %do.body1533
  br label %do.end1577

do.end1577:                                       ; preds = %do.cond1576
  br label %do.body1578

do.body1578:                                      ; preds = %do.end1577
  %arrayidx1579 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %717 = load i32, ptr %arrayidx1579, align 8, !tbaa !15
  %arrayidx1580 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %718 = load i32, ptr %arrayidx1580, align 8, !tbaa !15
  %add1581 = add i32 %717, %718
  %719 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 4, i64 4), align 4, !tbaa !19
  %idxprom1582 = zext i8 %719 to i64
  %arrayidx1583 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom1582
  %720 = load i32, ptr %arrayidx1583, align 4, !tbaa !15
  %add1584 = add i32 %add1581, %720
  %arrayidx1585 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  store i32 %add1584, ptr %arrayidx1585, align 8, !tbaa !15
  %arrayidx1586 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %721 = load i32, ptr %arrayidx1586, align 8, !tbaa !15
  %arrayidx1587 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %722 = load i32, ptr %arrayidx1587, align 8, !tbaa !15
  %xor1588 = xor i32 %721, %722
  %call1589 = call i32 @rotr32(i32 noundef %xor1588, i32 noundef 16)
  %arrayidx1590 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  store i32 %call1589, ptr %arrayidx1590, align 8, !tbaa !15
  %arrayidx1591 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %723 = load i32, ptr %arrayidx1591, align 8, !tbaa !15
  %arrayidx1592 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %724 = load i32, ptr %arrayidx1592, align 8, !tbaa !15
  %add1593 = add i32 %723, %724
  %arrayidx1594 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  store i32 %add1593, ptr %arrayidx1594, align 8, !tbaa !15
  %arrayidx1595 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %725 = load i32, ptr %arrayidx1595, align 8, !tbaa !15
  %arrayidx1596 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %726 = load i32, ptr %arrayidx1596, align 8, !tbaa !15
  %xor1597 = xor i32 %725, %726
  %call1598 = call i32 @rotr32(i32 noundef %xor1597, i32 noundef 12)
  %arrayidx1599 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  store i32 %call1598, ptr %arrayidx1599, align 8, !tbaa !15
  %arrayidx1600 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %727 = load i32, ptr %arrayidx1600, align 8, !tbaa !15
  %arrayidx1601 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %728 = load i32, ptr %arrayidx1601, align 8, !tbaa !15
  %add1602 = add i32 %727, %728
  %729 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 4, i64 5), align 1, !tbaa !19
  %idxprom1603 = zext i8 %729 to i64
  %arrayidx1604 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom1603
  %730 = load i32, ptr %arrayidx1604, align 4, !tbaa !15
  %add1605 = add i32 %add1602, %730
  %arrayidx1606 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  store i32 %add1605, ptr %arrayidx1606, align 8, !tbaa !15
  %arrayidx1607 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %731 = load i32, ptr %arrayidx1607, align 8, !tbaa !15
  %arrayidx1608 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %732 = load i32, ptr %arrayidx1608, align 8, !tbaa !15
  %xor1609 = xor i32 %731, %732
  %call1610 = call i32 @rotr32(i32 noundef %xor1609, i32 noundef 8)
  %arrayidx1611 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  store i32 %call1610, ptr %arrayidx1611, align 8, !tbaa !15
  %arrayidx1612 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %733 = load i32, ptr %arrayidx1612, align 8, !tbaa !15
  %arrayidx1613 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %734 = load i32, ptr %arrayidx1613, align 8, !tbaa !15
  %add1614 = add i32 %733, %734
  %arrayidx1615 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  store i32 %add1614, ptr %arrayidx1615, align 8, !tbaa !15
  %arrayidx1616 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %735 = load i32, ptr %arrayidx1616, align 8, !tbaa !15
  %arrayidx1617 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %736 = load i32, ptr %arrayidx1617, align 8, !tbaa !15
  %xor1618 = xor i32 %735, %736
  %call1619 = call i32 @rotr32(i32 noundef %xor1618, i32 noundef 7)
  %arrayidx1620 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  store i32 %call1619, ptr %arrayidx1620, align 8, !tbaa !15
  br label %do.cond1621

do.cond1621:                                      ; preds = %do.body1578
  br label %do.end1622

do.end1622:                                       ; preds = %do.cond1621
  br label %do.body1623

do.body1623:                                      ; preds = %do.end1622
  %arrayidx1624 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %737 = load i32, ptr %arrayidx1624, align 4, !tbaa !15
  %arrayidx1625 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %738 = load i32, ptr %arrayidx1625, align 4, !tbaa !15
  %add1626 = add i32 %737, %738
  %739 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 4, i64 6), align 2, !tbaa !19
  %idxprom1627 = zext i8 %739 to i64
  %arrayidx1628 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom1627
  %740 = load i32, ptr %arrayidx1628, align 4, !tbaa !15
  %add1629 = add i32 %add1626, %740
  %arrayidx1630 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  store i32 %add1629, ptr %arrayidx1630, align 4, !tbaa !15
  %arrayidx1631 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %741 = load i32, ptr %arrayidx1631, align 4, !tbaa !15
  %arrayidx1632 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %742 = load i32, ptr %arrayidx1632, align 4, !tbaa !15
  %xor1633 = xor i32 %741, %742
  %call1634 = call i32 @rotr32(i32 noundef %xor1633, i32 noundef 16)
  %arrayidx1635 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  store i32 %call1634, ptr %arrayidx1635, align 4, !tbaa !15
  %arrayidx1636 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %743 = load i32, ptr %arrayidx1636, align 4, !tbaa !15
  %arrayidx1637 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %744 = load i32, ptr %arrayidx1637, align 4, !tbaa !15
  %add1638 = add i32 %743, %744
  %arrayidx1639 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  store i32 %add1638, ptr %arrayidx1639, align 4, !tbaa !15
  %arrayidx1640 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %745 = load i32, ptr %arrayidx1640, align 4, !tbaa !15
  %arrayidx1641 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %746 = load i32, ptr %arrayidx1641, align 4, !tbaa !15
  %xor1642 = xor i32 %745, %746
  %call1643 = call i32 @rotr32(i32 noundef %xor1642, i32 noundef 12)
  %arrayidx1644 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  store i32 %call1643, ptr %arrayidx1644, align 4, !tbaa !15
  %arrayidx1645 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %747 = load i32, ptr %arrayidx1645, align 4, !tbaa !15
  %arrayidx1646 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %748 = load i32, ptr %arrayidx1646, align 4, !tbaa !15
  %add1647 = add i32 %747, %748
  %749 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 4, i64 7), align 1, !tbaa !19
  %idxprom1648 = zext i8 %749 to i64
  %arrayidx1649 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom1648
  %750 = load i32, ptr %arrayidx1649, align 4, !tbaa !15
  %add1650 = add i32 %add1647, %750
  %arrayidx1651 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  store i32 %add1650, ptr %arrayidx1651, align 4, !tbaa !15
  %arrayidx1652 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %751 = load i32, ptr %arrayidx1652, align 4, !tbaa !15
  %arrayidx1653 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %752 = load i32, ptr %arrayidx1653, align 4, !tbaa !15
  %xor1654 = xor i32 %751, %752
  %call1655 = call i32 @rotr32(i32 noundef %xor1654, i32 noundef 8)
  %arrayidx1656 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  store i32 %call1655, ptr %arrayidx1656, align 4, !tbaa !15
  %arrayidx1657 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %753 = load i32, ptr %arrayidx1657, align 4, !tbaa !15
  %arrayidx1658 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %754 = load i32, ptr %arrayidx1658, align 4, !tbaa !15
  %add1659 = add i32 %753, %754
  %arrayidx1660 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  store i32 %add1659, ptr %arrayidx1660, align 4, !tbaa !15
  %arrayidx1661 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %755 = load i32, ptr %arrayidx1661, align 4, !tbaa !15
  %arrayidx1662 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %756 = load i32, ptr %arrayidx1662, align 4, !tbaa !15
  %xor1663 = xor i32 %755, %756
  %call1664 = call i32 @rotr32(i32 noundef %xor1663, i32 noundef 7)
  %arrayidx1665 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  store i32 %call1664, ptr %arrayidx1665, align 4, !tbaa !15
  br label %do.cond1666

do.cond1666:                                      ; preds = %do.body1623
  br label %do.end1667

do.end1667:                                       ; preds = %do.cond1666
  br label %do.body1668

do.body1668:                                      ; preds = %do.end1667
  %arrayidx1669 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %757 = load i32, ptr %arrayidx1669, align 16, !tbaa !15
  %arrayidx1670 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %758 = load i32, ptr %arrayidx1670, align 4, !tbaa !15
  %add1671 = add i32 %757, %758
  %759 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 4, i64 8), align 8, !tbaa !19
  %idxprom1672 = zext i8 %759 to i64
  %arrayidx1673 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom1672
  %760 = load i32, ptr %arrayidx1673, align 4, !tbaa !15
  %add1674 = add i32 %add1671, %760
  %arrayidx1675 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  store i32 %add1674, ptr %arrayidx1675, align 16, !tbaa !15
  %arrayidx1676 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %761 = load i32, ptr %arrayidx1676, align 4, !tbaa !15
  %arrayidx1677 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %762 = load i32, ptr %arrayidx1677, align 16, !tbaa !15
  %xor1678 = xor i32 %761, %762
  %call1679 = call i32 @rotr32(i32 noundef %xor1678, i32 noundef 16)
  %arrayidx1680 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  store i32 %call1679, ptr %arrayidx1680, align 4, !tbaa !15
  %arrayidx1681 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %763 = load i32, ptr %arrayidx1681, align 8, !tbaa !15
  %arrayidx1682 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %764 = load i32, ptr %arrayidx1682, align 4, !tbaa !15
  %add1683 = add i32 %763, %764
  %arrayidx1684 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  store i32 %add1683, ptr %arrayidx1684, align 8, !tbaa !15
  %arrayidx1685 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %765 = load i32, ptr %arrayidx1685, align 4, !tbaa !15
  %arrayidx1686 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %766 = load i32, ptr %arrayidx1686, align 8, !tbaa !15
  %xor1687 = xor i32 %765, %766
  %call1688 = call i32 @rotr32(i32 noundef %xor1687, i32 noundef 12)
  %arrayidx1689 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  store i32 %call1688, ptr %arrayidx1689, align 4, !tbaa !15
  %arrayidx1690 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %767 = load i32, ptr %arrayidx1690, align 16, !tbaa !15
  %arrayidx1691 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %768 = load i32, ptr %arrayidx1691, align 4, !tbaa !15
  %add1692 = add i32 %767, %768
  %769 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 4, i64 9), align 1, !tbaa !19
  %idxprom1693 = zext i8 %769 to i64
  %arrayidx1694 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom1693
  %770 = load i32, ptr %arrayidx1694, align 4, !tbaa !15
  %add1695 = add i32 %add1692, %770
  %arrayidx1696 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  store i32 %add1695, ptr %arrayidx1696, align 16, !tbaa !15
  %arrayidx1697 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %771 = load i32, ptr %arrayidx1697, align 4, !tbaa !15
  %arrayidx1698 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %772 = load i32, ptr %arrayidx1698, align 16, !tbaa !15
  %xor1699 = xor i32 %771, %772
  %call1700 = call i32 @rotr32(i32 noundef %xor1699, i32 noundef 8)
  %arrayidx1701 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  store i32 %call1700, ptr %arrayidx1701, align 4, !tbaa !15
  %arrayidx1702 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %773 = load i32, ptr %arrayidx1702, align 8, !tbaa !15
  %arrayidx1703 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %774 = load i32, ptr %arrayidx1703, align 4, !tbaa !15
  %add1704 = add i32 %773, %774
  %arrayidx1705 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  store i32 %add1704, ptr %arrayidx1705, align 8, !tbaa !15
  %arrayidx1706 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %775 = load i32, ptr %arrayidx1706, align 4, !tbaa !15
  %arrayidx1707 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %776 = load i32, ptr %arrayidx1707, align 8, !tbaa !15
  %xor1708 = xor i32 %775, %776
  %call1709 = call i32 @rotr32(i32 noundef %xor1708, i32 noundef 7)
  %arrayidx1710 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  store i32 %call1709, ptr %arrayidx1710, align 4, !tbaa !15
  br label %do.cond1711

do.cond1711:                                      ; preds = %do.body1668
  br label %do.end1712

do.end1712:                                       ; preds = %do.cond1711
  br label %do.body1713

do.body1713:                                      ; preds = %do.end1712
  %arrayidx1714 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %777 = load i32, ptr %arrayidx1714, align 4, !tbaa !15
  %arrayidx1715 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %778 = load i32, ptr %arrayidx1715, align 8, !tbaa !15
  %add1716 = add i32 %777, %778
  %779 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 4, i64 10), align 2, !tbaa !19
  %idxprom1717 = zext i8 %779 to i64
  %arrayidx1718 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom1717
  %780 = load i32, ptr %arrayidx1718, align 4, !tbaa !15
  %add1719 = add i32 %add1716, %780
  %arrayidx1720 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  store i32 %add1719, ptr %arrayidx1720, align 4, !tbaa !15
  %arrayidx1721 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %781 = load i32, ptr %arrayidx1721, align 16, !tbaa !15
  %arrayidx1722 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %782 = load i32, ptr %arrayidx1722, align 4, !tbaa !15
  %xor1723 = xor i32 %781, %782
  %call1724 = call i32 @rotr32(i32 noundef %xor1723, i32 noundef 16)
  %arrayidx1725 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  store i32 %call1724, ptr %arrayidx1725, align 16, !tbaa !15
  %arrayidx1726 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %783 = load i32, ptr %arrayidx1726, align 4, !tbaa !15
  %arrayidx1727 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %784 = load i32, ptr %arrayidx1727, align 16, !tbaa !15
  %add1728 = add i32 %783, %784
  %arrayidx1729 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  store i32 %add1728, ptr %arrayidx1729, align 4, !tbaa !15
  %arrayidx1730 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %785 = load i32, ptr %arrayidx1730, align 8, !tbaa !15
  %arrayidx1731 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %786 = load i32, ptr %arrayidx1731, align 4, !tbaa !15
  %xor1732 = xor i32 %785, %786
  %call1733 = call i32 @rotr32(i32 noundef %xor1732, i32 noundef 12)
  %arrayidx1734 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  store i32 %call1733, ptr %arrayidx1734, align 8, !tbaa !15
  %arrayidx1735 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %787 = load i32, ptr %arrayidx1735, align 4, !tbaa !15
  %arrayidx1736 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %788 = load i32, ptr %arrayidx1736, align 8, !tbaa !15
  %add1737 = add i32 %787, %788
  %789 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 4, i64 11), align 1, !tbaa !19
  %idxprom1738 = zext i8 %789 to i64
  %arrayidx1739 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom1738
  %790 = load i32, ptr %arrayidx1739, align 4, !tbaa !15
  %add1740 = add i32 %add1737, %790
  %arrayidx1741 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  store i32 %add1740, ptr %arrayidx1741, align 4, !tbaa !15
  %arrayidx1742 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %791 = load i32, ptr %arrayidx1742, align 16, !tbaa !15
  %arrayidx1743 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %792 = load i32, ptr %arrayidx1743, align 4, !tbaa !15
  %xor1744 = xor i32 %791, %792
  %call1745 = call i32 @rotr32(i32 noundef %xor1744, i32 noundef 8)
  %arrayidx1746 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  store i32 %call1745, ptr %arrayidx1746, align 16, !tbaa !15
  %arrayidx1747 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %793 = load i32, ptr %arrayidx1747, align 4, !tbaa !15
  %arrayidx1748 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %794 = load i32, ptr %arrayidx1748, align 16, !tbaa !15
  %add1749 = add i32 %793, %794
  %arrayidx1750 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  store i32 %add1749, ptr %arrayidx1750, align 4, !tbaa !15
  %arrayidx1751 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %795 = load i32, ptr %arrayidx1751, align 8, !tbaa !15
  %arrayidx1752 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %796 = load i32, ptr %arrayidx1752, align 4, !tbaa !15
  %xor1753 = xor i32 %795, %796
  %call1754 = call i32 @rotr32(i32 noundef %xor1753, i32 noundef 7)
  %arrayidx1755 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  store i32 %call1754, ptr %arrayidx1755, align 8, !tbaa !15
  br label %do.cond1756

do.cond1756:                                      ; preds = %do.body1713
  br label %do.end1757

do.end1757:                                       ; preds = %do.cond1756
  br label %do.body1758

do.body1758:                                      ; preds = %do.end1757
  %arrayidx1759 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %797 = load i32, ptr %arrayidx1759, align 8, !tbaa !15
  %arrayidx1760 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %798 = load i32, ptr %arrayidx1760, align 4, !tbaa !15
  %add1761 = add i32 %797, %798
  %799 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 4, i64 12), align 4, !tbaa !19
  %idxprom1762 = zext i8 %799 to i64
  %arrayidx1763 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom1762
  %800 = load i32, ptr %arrayidx1763, align 4, !tbaa !15
  %add1764 = add i32 %add1761, %800
  %arrayidx1765 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  store i32 %add1764, ptr %arrayidx1765, align 8, !tbaa !15
  %arrayidx1766 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %801 = load i32, ptr %arrayidx1766, align 4, !tbaa !15
  %arrayidx1767 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %802 = load i32, ptr %arrayidx1767, align 8, !tbaa !15
  %xor1768 = xor i32 %801, %802
  %call1769 = call i32 @rotr32(i32 noundef %xor1768, i32 noundef 16)
  %arrayidx1770 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  store i32 %call1769, ptr %arrayidx1770, align 4, !tbaa !15
  %arrayidx1771 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %803 = load i32, ptr %arrayidx1771, align 16, !tbaa !15
  %arrayidx1772 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %804 = load i32, ptr %arrayidx1772, align 4, !tbaa !15
  %add1773 = add i32 %803, %804
  %arrayidx1774 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  store i32 %add1773, ptr %arrayidx1774, align 16, !tbaa !15
  %arrayidx1775 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %805 = load i32, ptr %arrayidx1775, align 4, !tbaa !15
  %arrayidx1776 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %806 = load i32, ptr %arrayidx1776, align 16, !tbaa !15
  %xor1777 = xor i32 %805, %806
  %call1778 = call i32 @rotr32(i32 noundef %xor1777, i32 noundef 12)
  %arrayidx1779 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  store i32 %call1778, ptr %arrayidx1779, align 4, !tbaa !15
  %arrayidx1780 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %807 = load i32, ptr %arrayidx1780, align 8, !tbaa !15
  %arrayidx1781 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %808 = load i32, ptr %arrayidx1781, align 4, !tbaa !15
  %add1782 = add i32 %807, %808
  %809 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 4, i64 13), align 1, !tbaa !19
  %idxprom1783 = zext i8 %809 to i64
  %arrayidx1784 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom1783
  %810 = load i32, ptr %arrayidx1784, align 4, !tbaa !15
  %add1785 = add i32 %add1782, %810
  %arrayidx1786 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  store i32 %add1785, ptr %arrayidx1786, align 8, !tbaa !15
  %arrayidx1787 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %811 = load i32, ptr %arrayidx1787, align 4, !tbaa !15
  %arrayidx1788 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %812 = load i32, ptr %arrayidx1788, align 8, !tbaa !15
  %xor1789 = xor i32 %811, %812
  %call1790 = call i32 @rotr32(i32 noundef %xor1789, i32 noundef 8)
  %arrayidx1791 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  store i32 %call1790, ptr %arrayidx1791, align 4, !tbaa !15
  %arrayidx1792 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %813 = load i32, ptr %arrayidx1792, align 16, !tbaa !15
  %arrayidx1793 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %814 = load i32, ptr %arrayidx1793, align 4, !tbaa !15
  %add1794 = add i32 %813, %814
  %arrayidx1795 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  store i32 %add1794, ptr %arrayidx1795, align 16, !tbaa !15
  %arrayidx1796 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %815 = load i32, ptr %arrayidx1796, align 4, !tbaa !15
  %arrayidx1797 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %816 = load i32, ptr %arrayidx1797, align 16, !tbaa !15
  %xor1798 = xor i32 %815, %816
  %call1799 = call i32 @rotr32(i32 noundef %xor1798, i32 noundef 7)
  %arrayidx1800 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  store i32 %call1799, ptr %arrayidx1800, align 4, !tbaa !15
  br label %do.cond1801

do.cond1801:                                      ; preds = %do.body1758
  br label %do.end1802

do.end1802:                                       ; preds = %do.cond1801
  br label %do.body1803

do.body1803:                                      ; preds = %do.end1802
  %arrayidx1804 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %817 = load i32, ptr %arrayidx1804, align 4, !tbaa !15
  %arrayidx1805 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %818 = load i32, ptr %arrayidx1805, align 16, !tbaa !15
  %add1806 = add i32 %817, %818
  %819 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 4, i64 14), align 2, !tbaa !19
  %idxprom1807 = zext i8 %819 to i64
  %arrayidx1808 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom1807
  %820 = load i32, ptr %arrayidx1808, align 4, !tbaa !15
  %add1809 = add i32 %add1806, %820
  %arrayidx1810 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  store i32 %add1809, ptr %arrayidx1810, align 4, !tbaa !15
  %arrayidx1811 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %821 = load i32, ptr %arrayidx1811, align 8, !tbaa !15
  %arrayidx1812 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %822 = load i32, ptr %arrayidx1812, align 4, !tbaa !15
  %xor1813 = xor i32 %821, %822
  %call1814 = call i32 @rotr32(i32 noundef %xor1813, i32 noundef 16)
  %arrayidx1815 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  store i32 %call1814, ptr %arrayidx1815, align 8, !tbaa !15
  %arrayidx1816 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %823 = load i32, ptr %arrayidx1816, align 4, !tbaa !15
  %arrayidx1817 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %824 = load i32, ptr %arrayidx1817, align 8, !tbaa !15
  %add1818 = add i32 %823, %824
  %arrayidx1819 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  store i32 %add1818, ptr %arrayidx1819, align 4, !tbaa !15
  %arrayidx1820 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %825 = load i32, ptr %arrayidx1820, align 16, !tbaa !15
  %arrayidx1821 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %826 = load i32, ptr %arrayidx1821, align 4, !tbaa !15
  %xor1822 = xor i32 %825, %826
  %call1823 = call i32 @rotr32(i32 noundef %xor1822, i32 noundef 12)
  %arrayidx1824 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  store i32 %call1823, ptr %arrayidx1824, align 16, !tbaa !15
  %arrayidx1825 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %827 = load i32, ptr %arrayidx1825, align 4, !tbaa !15
  %arrayidx1826 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %828 = load i32, ptr %arrayidx1826, align 16, !tbaa !15
  %add1827 = add i32 %827, %828
  %829 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 4, i64 15), align 1, !tbaa !19
  %idxprom1828 = zext i8 %829 to i64
  %arrayidx1829 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom1828
  %830 = load i32, ptr %arrayidx1829, align 4, !tbaa !15
  %add1830 = add i32 %add1827, %830
  %arrayidx1831 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  store i32 %add1830, ptr %arrayidx1831, align 4, !tbaa !15
  %arrayidx1832 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %831 = load i32, ptr %arrayidx1832, align 8, !tbaa !15
  %arrayidx1833 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %832 = load i32, ptr %arrayidx1833, align 4, !tbaa !15
  %xor1834 = xor i32 %831, %832
  %call1835 = call i32 @rotr32(i32 noundef %xor1834, i32 noundef 8)
  %arrayidx1836 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  store i32 %call1835, ptr %arrayidx1836, align 8, !tbaa !15
  %arrayidx1837 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %833 = load i32, ptr %arrayidx1837, align 4, !tbaa !15
  %arrayidx1838 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %834 = load i32, ptr %arrayidx1838, align 8, !tbaa !15
  %add1839 = add i32 %833, %834
  %arrayidx1840 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  store i32 %add1839, ptr %arrayidx1840, align 4, !tbaa !15
  %arrayidx1841 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %835 = load i32, ptr %arrayidx1841, align 16, !tbaa !15
  %arrayidx1842 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %836 = load i32, ptr %arrayidx1842, align 4, !tbaa !15
  %xor1843 = xor i32 %835, %836
  %call1844 = call i32 @rotr32(i32 noundef %xor1843, i32 noundef 7)
  %arrayidx1845 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  store i32 %call1844, ptr %arrayidx1845, align 16, !tbaa !15
  br label %do.cond1846

do.cond1846:                                      ; preds = %do.body1803
  br label %do.end1847

do.end1847:                                       ; preds = %do.cond1846
  br label %do.cond1848

do.cond1848:                                      ; preds = %do.end1847
  br label %do.end1849

do.end1849:                                       ; preds = %do.cond1848
  br label %do.body1850

do.body1850:                                      ; preds = %do.end1849
  br label %do.body1851

do.body1851:                                      ; preds = %do.body1850
  %arrayidx1852 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %837 = load i32, ptr %arrayidx1852, align 16, !tbaa !15
  %arrayidx1853 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %838 = load i32, ptr %arrayidx1853, align 16, !tbaa !15
  %add1854 = add i32 %837, %838
  %839 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 5), align 16, !tbaa !19
  %idxprom1855 = zext i8 %839 to i64
  %arrayidx1856 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom1855
  %840 = load i32, ptr %arrayidx1856, align 4, !tbaa !15
  %add1857 = add i32 %add1854, %840
  %arrayidx1858 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  store i32 %add1857, ptr %arrayidx1858, align 16, !tbaa !15
  %arrayidx1859 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %841 = load i32, ptr %arrayidx1859, align 16, !tbaa !15
  %arrayidx1860 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %842 = load i32, ptr %arrayidx1860, align 16, !tbaa !15
  %xor1861 = xor i32 %841, %842
  %call1862 = call i32 @rotr32(i32 noundef %xor1861, i32 noundef 16)
  %arrayidx1863 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  store i32 %call1862, ptr %arrayidx1863, align 16, !tbaa !15
  %arrayidx1864 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %843 = load i32, ptr %arrayidx1864, align 16, !tbaa !15
  %arrayidx1865 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %844 = load i32, ptr %arrayidx1865, align 16, !tbaa !15
  %add1866 = add i32 %843, %844
  %arrayidx1867 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  store i32 %add1866, ptr %arrayidx1867, align 16, !tbaa !15
  %arrayidx1868 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %845 = load i32, ptr %arrayidx1868, align 16, !tbaa !15
  %arrayidx1869 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %846 = load i32, ptr %arrayidx1869, align 16, !tbaa !15
  %xor1870 = xor i32 %845, %846
  %call1871 = call i32 @rotr32(i32 noundef %xor1870, i32 noundef 12)
  %arrayidx1872 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  store i32 %call1871, ptr %arrayidx1872, align 16, !tbaa !15
  %arrayidx1873 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %847 = load i32, ptr %arrayidx1873, align 16, !tbaa !15
  %arrayidx1874 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %848 = load i32, ptr %arrayidx1874, align 16, !tbaa !15
  %add1875 = add i32 %847, %848
  %849 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 5, i64 1), align 1, !tbaa !19
  %idxprom1876 = zext i8 %849 to i64
  %arrayidx1877 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom1876
  %850 = load i32, ptr %arrayidx1877, align 4, !tbaa !15
  %add1878 = add i32 %add1875, %850
  %arrayidx1879 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  store i32 %add1878, ptr %arrayidx1879, align 16, !tbaa !15
  %arrayidx1880 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %851 = load i32, ptr %arrayidx1880, align 16, !tbaa !15
  %arrayidx1881 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %852 = load i32, ptr %arrayidx1881, align 16, !tbaa !15
  %xor1882 = xor i32 %851, %852
  %call1883 = call i32 @rotr32(i32 noundef %xor1882, i32 noundef 8)
  %arrayidx1884 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  store i32 %call1883, ptr %arrayidx1884, align 16, !tbaa !15
  %arrayidx1885 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %853 = load i32, ptr %arrayidx1885, align 16, !tbaa !15
  %arrayidx1886 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %854 = load i32, ptr %arrayidx1886, align 16, !tbaa !15
  %add1887 = add i32 %853, %854
  %arrayidx1888 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  store i32 %add1887, ptr %arrayidx1888, align 16, !tbaa !15
  %arrayidx1889 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %855 = load i32, ptr %arrayidx1889, align 16, !tbaa !15
  %arrayidx1890 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %856 = load i32, ptr %arrayidx1890, align 16, !tbaa !15
  %xor1891 = xor i32 %855, %856
  %call1892 = call i32 @rotr32(i32 noundef %xor1891, i32 noundef 7)
  %arrayidx1893 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  store i32 %call1892, ptr %arrayidx1893, align 16, !tbaa !15
  br label %do.cond1894

do.cond1894:                                      ; preds = %do.body1851
  br label %do.end1895

do.end1895:                                       ; preds = %do.cond1894
  br label %do.body1896

do.body1896:                                      ; preds = %do.end1895
  %arrayidx1897 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %857 = load i32, ptr %arrayidx1897, align 4, !tbaa !15
  %arrayidx1898 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %858 = load i32, ptr %arrayidx1898, align 4, !tbaa !15
  %add1899 = add i32 %857, %858
  %859 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 5, i64 2), align 2, !tbaa !19
  %idxprom1900 = zext i8 %859 to i64
  %arrayidx1901 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom1900
  %860 = load i32, ptr %arrayidx1901, align 4, !tbaa !15
  %add1902 = add i32 %add1899, %860
  %arrayidx1903 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  store i32 %add1902, ptr %arrayidx1903, align 4, !tbaa !15
  %arrayidx1904 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %861 = load i32, ptr %arrayidx1904, align 4, !tbaa !15
  %arrayidx1905 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %862 = load i32, ptr %arrayidx1905, align 4, !tbaa !15
  %xor1906 = xor i32 %861, %862
  %call1907 = call i32 @rotr32(i32 noundef %xor1906, i32 noundef 16)
  %arrayidx1908 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  store i32 %call1907, ptr %arrayidx1908, align 4, !tbaa !15
  %arrayidx1909 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %863 = load i32, ptr %arrayidx1909, align 4, !tbaa !15
  %arrayidx1910 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %864 = load i32, ptr %arrayidx1910, align 4, !tbaa !15
  %add1911 = add i32 %863, %864
  %arrayidx1912 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  store i32 %add1911, ptr %arrayidx1912, align 4, !tbaa !15
  %arrayidx1913 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %865 = load i32, ptr %arrayidx1913, align 4, !tbaa !15
  %arrayidx1914 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %866 = load i32, ptr %arrayidx1914, align 4, !tbaa !15
  %xor1915 = xor i32 %865, %866
  %call1916 = call i32 @rotr32(i32 noundef %xor1915, i32 noundef 12)
  %arrayidx1917 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  store i32 %call1916, ptr %arrayidx1917, align 4, !tbaa !15
  %arrayidx1918 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %867 = load i32, ptr %arrayidx1918, align 4, !tbaa !15
  %arrayidx1919 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %868 = load i32, ptr %arrayidx1919, align 4, !tbaa !15
  %add1920 = add i32 %867, %868
  %869 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 5, i64 3), align 1, !tbaa !19
  %idxprom1921 = zext i8 %869 to i64
  %arrayidx1922 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom1921
  %870 = load i32, ptr %arrayidx1922, align 4, !tbaa !15
  %add1923 = add i32 %add1920, %870
  %arrayidx1924 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  store i32 %add1923, ptr %arrayidx1924, align 4, !tbaa !15
  %arrayidx1925 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %871 = load i32, ptr %arrayidx1925, align 4, !tbaa !15
  %arrayidx1926 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %872 = load i32, ptr %arrayidx1926, align 4, !tbaa !15
  %xor1927 = xor i32 %871, %872
  %call1928 = call i32 @rotr32(i32 noundef %xor1927, i32 noundef 8)
  %arrayidx1929 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  store i32 %call1928, ptr %arrayidx1929, align 4, !tbaa !15
  %arrayidx1930 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %873 = load i32, ptr %arrayidx1930, align 4, !tbaa !15
  %arrayidx1931 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %874 = load i32, ptr %arrayidx1931, align 4, !tbaa !15
  %add1932 = add i32 %873, %874
  %arrayidx1933 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  store i32 %add1932, ptr %arrayidx1933, align 4, !tbaa !15
  %arrayidx1934 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %875 = load i32, ptr %arrayidx1934, align 4, !tbaa !15
  %arrayidx1935 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %876 = load i32, ptr %arrayidx1935, align 4, !tbaa !15
  %xor1936 = xor i32 %875, %876
  %call1937 = call i32 @rotr32(i32 noundef %xor1936, i32 noundef 7)
  %arrayidx1938 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  store i32 %call1937, ptr %arrayidx1938, align 4, !tbaa !15
  br label %do.cond1939

do.cond1939:                                      ; preds = %do.body1896
  br label %do.end1940

do.end1940:                                       ; preds = %do.cond1939
  br label %do.body1941

do.body1941:                                      ; preds = %do.end1940
  %arrayidx1942 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %877 = load i32, ptr %arrayidx1942, align 8, !tbaa !15
  %arrayidx1943 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %878 = load i32, ptr %arrayidx1943, align 8, !tbaa !15
  %add1944 = add i32 %877, %878
  %879 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 5, i64 4), align 4, !tbaa !19
  %idxprom1945 = zext i8 %879 to i64
  %arrayidx1946 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom1945
  %880 = load i32, ptr %arrayidx1946, align 4, !tbaa !15
  %add1947 = add i32 %add1944, %880
  %arrayidx1948 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  store i32 %add1947, ptr %arrayidx1948, align 8, !tbaa !15
  %arrayidx1949 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %881 = load i32, ptr %arrayidx1949, align 8, !tbaa !15
  %arrayidx1950 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %882 = load i32, ptr %arrayidx1950, align 8, !tbaa !15
  %xor1951 = xor i32 %881, %882
  %call1952 = call i32 @rotr32(i32 noundef %xor1951, i32 noundef 16)
  %arrayidx1953 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  store i32 %call1952, ptr %arrayidx1953, align 8, !tbaa !15
  %arrayidx1954 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %883 = load i32, ptr %arrayidx1954, align 8, !tbaa !15
  %arrayidx1955 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %884 = load i32, ptr %arrayidx1955, align 8, !tbaa !15
  %add1956 = add i32 %883, %884
  %arrayidx1957 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  store i32 %add1956, ptr %arrayidx1957, align 8, !tbaa !15
  %arrayidx1958 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %885 = load i32, ptr %arrayidx1958, align 8, !tbaa !15
  %arrayidx1959 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %886 = load i32, ptr %arrayidx1959, align 8, !tbaa !15
  %xor1960 = xor i32 %885, %886
  %call1961 = call i32 @rotr32(i32 noundef %xor1960, i32 noundef 12)
  %arrayidx1962 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  store i32 %call1961, ptr %arrayidx1962, align 8, !tbaa !15
  %arrayidx1963 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %887 = load i32, ptr %arrayidx1963, align 8, !tbaa !15
  %arrayidx1964 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %888 = load i32, ptr %arrayidx1964, align 8, !tbaa !15
  %add1965 = add i32 %887, %888
  %889 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 5, i64 5), align 1, !tbaa !19
  %idxprom1966 = zext i8 %889 to i64
  %arrayidx1967 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom1966
  %890 = load i32, ptr %arrayidx1967, align 4, !tbaa !15
  %add1968 = add i32 %add1965, %890
  %arrayidx1969 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  store i32 %add1968, ptr %arrayidx1969, align 8, !tbaa !15
  %arrayidx1970 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %891 = load i32, ptr %arrayidx1970, align 8, !tbaa !15
  %arrayidx1971 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %892 = load i32, ptr %arrayidx1971, align 8, !tbaa !15
  %xor1972 = xor i32 %891, %892
  %call1973 = call i32 @rotr32(i32 noundef %xor1972, i32 noundef 8)
  %arrayidx1974 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  store i32 %call1973, ptr %arrayidx1974, align 8, !tbaa !15
  %arrayidx1975 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %893 = load i32, ptr %arrayidx1975, align 8, !tbaa !15
  %arrayidx1976 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %894 = load i32, ptr %arrayidx1976, align 8, !tbaa !15
  %add1977 = add i32 %893, %894
  %arrayidx1978 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  store i32 %add1977, ptr %arrayidx1978, align 8, !tbaa !15
  %arrayidx1979 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %895 = load i32, ptr %arrayidx1979, align 8, !tbaa !15
  %arrayidx1980 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %896 = load i32, ptr %arrayidx1980, align 8, !tbaa !15
  %xor1981 = xor i32 %895, %896
  %call1982 = call i32 @rotr32(i32 noundef %xor1981, i32 noundef 7)
  %arrayidx1983 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  store i32 %call1982, ptr %arrayidx1983, align 8, !tbaa !15
  br label %do.cond1984

do.cond1984:                                      ; preds = %do.body1941
  br label %do.end1985

do.end1985:                                       ; preds = %do.cond1984
  br label %do.body1986

do.body1986:                                      ; preds = %do.end1985
  %arrayidx1987 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %897 = load i32, ptr %arrayidx1987, align 4, !tbaa !15
  %arrayidx1988 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %898 = load i32, ptr %arrayidx1988, align 4, !tbaa !15
  %add1989 = add i32 %897, %898
  %899 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 5, i64 6), align 2, !tbaa !19
  %idxprom1990 = zext i8 %899 to i64
  %arrayidx1991 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom1990
  %900 = load i32, ptr %arrayidx1991, align 4, !tbaa !15
  %add1992 = add i32 %add1989, %900
  %arrayidx1993 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  store i32 %add1992, ptr %arrayidx1993, align 4, !tbaa !15
  %arrayidx1994 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %901 = load i32, ptr %arrayidx1994, align 4, !tbaa !15
  %arrayidx1995 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %902 = load i32, ptr %arrayidx1995, align 4, !tbaa !15
  %xor1996 = xor i32 %901, %902
  %call1997 = call i32 @rotr32(i32 noundef %xor1996, i32 noundef 16)
  %arrayidx1998 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  store i32 %call1997, ptr %arrayidx1998, align 4, !tbaa !15
  %arrayidx1999 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %903 = load i32, ptr %arrayidx1999, align 4, !tbaa !15
  %arrayidx2000 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %904 = load i32, ptr %arrayidx2000, align 4, !tbaa !15
  %add2001 = add i32 %903, %904
  %arrayidx2002 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  store i32 %add2001, ptr %arrayidx2002, align 4, !tbaa !15
  %arrayidx2003 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %905 = load i32, ptr %arrayidx2003, align 4, !tbaa !15
  %arrayidx2004 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %906 = load i32, ptr %arrayidx2004, align 4, !tbaa !15
  %xor2005 = xor i32 %905, %906
  %call2006 = call i32 @rotr32(i32 noundef %xor2005, i32 noundef 12)
  %arrayidx2007 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  store i32 %call2006, ptr %arrayidx2007, align 4, !tbaa !15
  %arrayidx2008 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %907 = load i32, ptr %arrayidx2008, align 4, !tbaa !15
  %arrayidx2009 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %908 = load i32, ptr %arrayidx2009, align 4, !tbaa !15
  %add2010 = add i32 %907, %908
  %909 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 5, i64 7), align 1, !tbaa !19
  %idxprom2011 = zext i8 %909 to i64
  %arrayidx2012 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom2011
  %910 = load i32, ptr %arrayidx2012, align 4, !tbaa !15
  %add2013 = add i32 %add2010, %910
  %arrayidx2014 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  store i32 %add2013, ptr %arrayidx2014, align 4, !tbaa !15
  %arrayidx2015 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %911 = load i32, ptr %arrayidx2015, align 4, !tbaa !15
  %arrayidx2016 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %912 = load i32, ptr %arrayidx2016, align 4, !tbaa !15
  %xor2017 = xor i32 %911, %912
  %call2018 = call i32 @rotr32(i32 noundef %xor2017, i32 noundef 8)
  %arrayidx2019 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  store i32 %call2018, ptr %arrayidx2019, align 4, !tbaa !15
  %arrayidx2020 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %913 = load i32, ptr %arrayidx2020, align 4, !tbaa !15
  %arrayidx2021 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %914 = load i32, ptr %arrayidx2021, align 4, !tbaa !15
  %add2022 = add i32 %913, %914
  %arrayidx2023 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  store i32 %add2022, ptr %arrayidx2023, align 4, !tbaa !15
  %arrayidx2024 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %915 = load i32, ptr %arrayidx2024, align 4, !tbaa !15
  %arrayidx2025 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %916 = load i32, ptr %arrayidx2025, align 4, !tbaa !15
  %xor2026 = xor i32 %915, %916
  %call2027 = call i32 @rotr32(i32 noundef %xor2026, i32 noundef 7)
  %arrayidx2028 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  store i32 %call2027, ptr %arrayidx2028, align 4, !tbaa !15
  br label %do.cond2029

do.cond2029:                                      ; preds = %do.body1986
  br label %do.end2030

do.end2030:                                       ; preds = %do.cond2029
  br label %do.body2031

do.body2031:                                      ; preds = %do.end2030
  %arrayidx2032 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %917 = load i32, ptr %arrayidx2032, align 16, !tbaa !15
  %arrayidx2033 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %918 = load i32, ptr %arrayidx2033, align 4, !tbaa !15
  %add2034 = add i32 %917, %918
  %919 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 5, i64 8), align 8, !tbaa !19
  %idxprom2035 = zext i8 %919 to i64
  %arrayidx2036 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom2035
  %920 = load i32, ptr %arrayidx2036, align 4, !tbaa !15
  %add2037 = add i32 %add2034, %920
  %arrayidx2038 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  store i32 %add2037, ptr %arrayidx2038, align 16, !tbaa !15
  %arrayidx2039 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %921 = load i32, ptr %arrayidx2039, align 4, !tbaa !15
  %arrayidx2040 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %922 = load i32, ptr %arrayidx2040, align 16, !tbaa !15
  %xor2041 = xor i32 %921, %922
  %call2042 = call i32 @rotr32(i32 noundef %xor2041, i32 noundef 16)
  %arrayidx2043 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  store i32 %call2042, ptr %arrayidx2043, align 4, !tbaa !15
  %arrayidx2044 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %923 = load i32, ptr %arrayidx2044, align 8, !tbaa !15
  %arrayidx2045 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %924 = load i32, ptr %arrayidx2045, align 4, !tbaa !15
  %add2046 = add i32 %923, %924
  %arrayidx2047 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  store i32 %add2046, ptr %arrayidx2047, align 8, !tbaa !15
  %arrayidx2048 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %925 = load i32, ptr %arrayidx2048, align 4, !tbaa !15
  %arrayidx2049 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %926 = load i32, ptr %arrayidx2049, align 8, !tbaa !15
  %xor2050 = xor i32 %925, %926
  %call2051 = call i32 @rotr32(i32 noundef %xor2050, i32 noundef 12)
  %arrayidx2052 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  store i32 %call2051, ptr %arrayidx2052, align 4, !tbaa !15
  %arrayidx2053 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %927 = load i32, ptr %arrayidx2053, align 16, !tbaa !15
  %arrayidx2054 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %928 = load i32, ptr %arrayidx2054, align 4, !tbaa !15
  %add2055 = add i32 %927, %928
  %929 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 5, i64 9), align 1, !tbaa !19
  %idxprom2056 = zext i8 %929 to i64
  %arrayidx2057 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom2056
  %930 = load i32, ptr %arrayidx2057, align 4, !tbaa !15
  %add2058 = add i32 %add2055, %930
  %arrayidx2059 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  store i32 %add2058, ptr %arrayidx2059, align 16, !tbaa !15
  %arrayidx2060 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %931 = load i32, ptr %arrayidx2060, align 4, !tbaa !15
  %arrayidx2061 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %932 = load i32, ptr %arrayidx2061, align 16, !tbaa !15
  %xor2062 = xor i32 %931, %932
  %call2063 = call i32 @rotr32(i32 noundef %xor2062, i32 noundef 8)
  %arrayidx2064 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  store i32 %call2063, ptr %arrayidx2064, align 4, !tbaa !15
  %arrayidx2065 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %933 = load i32, ptr %arrayidx2065, align 8, !tbaa !15
  %arrayidx2066 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %934 = load i32, ptr %arrayidx2066, align 4, !tbaa !15
  %add2067 = add i32 %933, %934
  %arrayidx2068 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  store i32 %add2067, ptr %arrayidx2068, align 8, !tbaa !15
  %arrayidx2069 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %935 = load i32, ptr %arrayidx2069, align 4, !tbaa !15
  %arrayidx2070 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %936 = load i32, ptr %arrayidx2070, align 8, !tbaa !15
  %xor2071 = xor i32 %935, %936
  %call2072 = call i32 @rotr32(i32 noundef %xor2071, i32 noundef 7)
  %arrayidx2073 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  store i32 %call2072, ptr %arrayidx2073, align 4, !tbaa !15
  br label %do.cond2074

do.cond2074:                                      ; preds = %do.body2031
  br label %do.end2075

do.end2075:                                       ; preds = %do.cond2074
  br label %do.body2076

do.body2076:                                      ; preds = %do.end2075
  %arrayidx2077 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %937 = load i32, ptr %arrayidx2077, align 4, !tbaa !15
  %arrayidx2078 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %938 = load i32, ptr %arrayidx2078, align 8, !tbaa !15
  %add2079 = add i32 %937, %938
  %939 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 5, i64 10), align 2, !tbaa !19
  %idxprom2080 = zext i8 %939 to i64
  %arrayidx2081 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom2080
  %940 = load i32, ptr %arrayidx2081, align 4, !tbaa !15
  %add2082 = add i32 %add2079, %940
  %arrayidx2083 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  store i32 %add2082, ptr %arrayidx2083, align 4, !tbaa !15
  %arrayidx2084 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %941 = load i32, ptr %arrayidx2084, align 16, !tbaa !15
  %arrayidx2085 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %942 = load i32, ptr %arrayidx2085, align 4, !tbaa !15
  %xor2086 = xor i32 %941, %942
  %call2087 = call i32 @rotr32(i32 noundef %xor2086, i32 noundef 16)
  %arrayidx2088 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  store i32 %call2087, ptr %arrayidx2088, align 16, !tbaa !15
  %arrayidx2089 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %943 = load i32, ptr %arrayidx2089, align 4, !tbaa !15
  %arrayidx2090 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %944 = load i32, ptr %arrayidx2090, align 16, !tbaa !15
  %add2091 = add i32 %943, %944
  %arrayidx2092 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  store i32 %add2091, ptr %arrayidx2092, align 4, !tbaa !15
  %arrayidx2093 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %945 = load i32, ptr %arrayidx2093, align 8, !tbaa !15
  %arrayidx2094 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %946 = load i32, ptr %arrayidx2094, align 4, !tbaa !15
  %xor2095 = xor i32 %945, %946
  %call2096 = call i32 @rotr32(i32 noundef %xor2095, i32 noundef 12)
  %arrayidx2097 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  store i32 %call2096, ptr %arrayidx2097, align 8, !tbaa !15
  %arrayidx2098 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %947 = load i32, ptr %arrayidx2098, align 4, !tbaa !15
  %arrayidx2099 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %948 = load i32, ptr %arrayidx2099, align 8, !tbaa !15
  %add2100 = add i32 %947, %948
  %949 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 5, i64 11), align 1, !tbaa !19
  %idxprom2101 = zext i8 %949 to i64
  %arrayidx2102 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom2101
  %950 = load i32, ptr %arrayidx2102, align 4, !tbaa !15
  %add2103 = add i32 %add2100, %950
  %arrayidx2104 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  store i32 %add2103, ptr %arrayidx2104, align 4, !tbaa !15
  %arrayidx2105 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %951 = load i32, ptr %arrayidx2105, align 16, !tbaa !15
  %arrayidx2106 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %952 = load i32, ptr %arrayidx2106, align 4, !tbaa !15
  %xor2107 = xor i32 %951, %952
  %call2108 = call i32 @rotr32(i32 noundef %xor2107, i32 noundef 8)
  %arrayidx2109 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  store i32 %call2108, ptr %arrayidx2109, align 16, !tbaa !15
  %arrayidx2110 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %953 = load i32, ptr %arrayidx2110, align 4, !tbaa !15
  %arrayidx2111 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %954 = load i32, ptr %arrayidx2111, align 16, !tbaa !15
  %add2112 = add i32 %953, %954
  %arrayidx2113 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  store i32 %add2112, ptr %arrayidx2113, align 4, !tbaa !15
  %arrayidx2114 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %955 = load i32, ptr %arrayidx2114, align 8, !tbaa !15
  %arrayidx2115 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %956 = load i32, ptr %arrayidx2115, align 4, !tbaa !15
  %xor2116 = xor i32 %955, %956
  %call2117 = call i32 @rotr32(i32 noundef %xor2116, i32 noundef 7)
  %arrayidx2118 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  store i32 %call2117, ptr %arrayidx2118, align 8, !tbaa !15
  br label %do.cond2119

do.cond2119:                                      ; preds = %do.body2076
  br label %do.end2120

do.end2120:                                       ; preds = %do.cond2119
  br label %do.body2121

do.body2121:                                      ; preds = %do.end2120
  %arrayidx2122 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %957 = load i32, ptr %arrayidx2122, align 8, !tbaa !15
  %arrayidx2123 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %958 = load i32, ptr %arrayidx2123, align 4, !tbaa !15
  %add2124 = add i32 %957, %958
  %959 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 5, i64 12), align 4, !tbaa !19
  %idxprom2125 = zext i8 %959 to i64
  %arrayidx2126 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom2125
  %960 = load i32, ptr %arrayidx2126, align 4, !tbaa !15
  %add2127 = add i32 %add2124, %960
  %arrayidx2128 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  store i32 %add2127, ptr %arrayidx2128, align 8, !tbaa !15
  %arrayidx2129 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %961 = load i32, ptr %arrayidx2129, align 4, !tbaa !15
  %arrayidx2130 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %962 = load i32, ptr %arrayidx2130, align 8, !tbaa !15
  %xor2131 = xor i32 %961, %962
  %call2132 = call i32 @rotr32(i32 noundef %xor2131, i32 noundef 16)
  %arrayidx2133 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  store i32 %call2132, ptr %arrayidx2133, align 4, !tbaa !15
  %arrayidx2134 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %963 = load i32, ptr %arrayidx2134, align 16, !tbaa !15
  %arrayidx2135 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %964 = load i32, ptr %arrayidx2135, align 4, !tbaa !15
  %add2136 = add i32 %963, %964
  %arrayidx2137 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  store i32 %add2136, ptr %arrayidx2137, align 16, !tbaa !15
  %arrayidx2138 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %965 = load i32, ptr %arrayidx2138, align 4, !tbaa !15
  %arrayidx2139 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %966 = load i32, ptr %arrayidx2139, align 16, !tbaa !15
  %xor2140 = xor i32 %965, %966
  %call2141 = call i32 @rotr32(i32 noundef %xor2140, i32 noundef 12)
  %arrayidx2142 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  store i32 %call2141, ptr %arrayidx2142, align 4, !tbaa !15
  %arrayidx2143 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %967 = load i32, ptr %arrayidx2143, align 8, !tbaa !15
  %arrayidx2144 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %968 = load i32, ptr %arrayidx2144, align 4, !tbaa !15
  %add2145 = add i32 %967, %968
  %969 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 5, i64 13), align 1, !tbaa !19
  %idxprom2146 = zext i8 %969 to i64
  %arrayidx2147 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom2146
  %970 = load i32, ptr %arrayidx2147, align 4, !tbaa !15
  %add2148 = add i32 %add2145, %970
  %arrayidx2149 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  store i32 %add2148, ptr %arrayidx2149, align 8, !tbaa !15
  %arrayidx2150 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %971 = load i32, ptr %arrayidx2150, align 4, !tbaa !15
  %arrayidx2151 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %972 = load i32, ptr %arrayidx2151, align 8, !tbaa !15
  %xor2152 = xor i32 %971, %972
  %call2153 = call i32 @rotr32(i32 noundef %xor2152, i32 noundef 8)
  %arrayidx2154 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  store i32 %call2153, ptr %arrayidx2154, align 4, !tbaa !15
  %arrayidx2155 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %973 = load i32, ptr %arrayidx2155, align 16, !tbaa !15
  %arrayidx2156 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %974 = load i32, ptr %arrayidx2156, align 4, !tbaa !15
  %add2157 = add i32 %973, %974
  %arrayidx2158 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  store i32 %add2157, ptr %arrayidx2158, align 16, !tbaa !15
  %arrayidx2159 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %975 = load i32, ptr %arrayidx2159, align 4, !tbaa !15
  %arrayidx2160 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %976 = load i32, ptr %arrayidx2160, align 16, !tbaa !15
  %xor2161 = xor i32 %975, %976
  %call2162 = call i32 @rotr32(i32 noundef %xor2161, i32 noundef 7)
  %arrayidx2163 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  store i32 %call2162, ptr %arrayidx2163, align 4, !tbaa !15
  br label %do.cond2164

do.cond2164:                                      ; preds = %do.body2121
  br label %do.end2165

do.end2165:                                       ; preds = %do.cond2164
  br label %do.body2166

do.body2166:                                      ; preds = %do.end2165
  %arrayidx2167 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %977 = load i32, ptr %arrayidx2167, align 4, !tbaa !15
  %arrayidx2168 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %978 = load i32, ptr %arrayidx2168, align 16, !tbaa !15
  %add2169 = add i32 %977, %978
  %979 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 5, i64 14), align 2, !tbaa !19
  %idxprom2170 = zext i8 %979 to i64
  %arrayidx2171 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom2170
  %980 = load i32, ptr %arrayidx2171, align 4, !tbaa !15
  %add2172 = add i32 %add2169, %980
  %arrayidx2173 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  store i32 %add2172, ptr %arrayidx2173, align 4, !tbaa !15
  %arrayidx2174 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %981 = load i32, ptr %arrayidx2174, align 8, !tbaa !15
  %arrayidx2175 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %982 = load i32, ptr %arrayidx2175, align 4, !tbaa !15
  %xor2176 = xor i32 %981, %982
  %call2177 = call i32 @rotr32(i32 noundef %xor2176, i32 noundef 16)
  %arrayidx2178 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  store i32 %call2177, ptr %arrayidx2178, align 8, !tbaa !15
  %arrayidx2179 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %983 = load i32, ptr %arrayidx2179, align 4, !tbaa !15
  %arrayidx2180 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %984 = load i32, ptr %arrayidx2180, align 8, !tbaa !15
  %add2181 = add i32 %983, %984
  %arrayidx2182 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  store i32 %add2181, ptr %arrayidx2182, align 4, !tbaa !15
  %arrayidx2183 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %985 = load i32, ptr %arrayidx2183, align 16, !tbaa !15
  %arrayidx2184 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %986 = load i32, ptr %arrayidx2184, align 4, !tbaa !15
  %xor2185 = xor i32 %985, %986
  %call2186 = call i32 @rotr32(i32 noundef %xor2185, i32 noundef 12)
  %arrayidx2187 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  store i32 %call2186, ptr %arrayidx2187, align 16, !tbaa !15
  %arrayidx2188 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %987 = load i32, ptr %arrayidx2188, align 4, !tbaa !15
  %arrayidx2189 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %988 = load i32, ptr %arrayidx2189, align 16, !tbaa !15
  %add2190 = add i32 %987, %988
  %989 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 5, i64 15), align 1, !tbaa !19
  %idxprom2191 = zext i8 %989 to i64
  %arrayidx2192 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom2191
  %990 = load i32, ptr %arrayidx2192, align 4, !tbaa !15
  %add2193 = add i32 %add2190, %990
  %arrayidx2194 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  store i32 %add2193, ptr %arrayidx2194, align 4, !tbaa !15
  %arrayidx2195 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %991 = load i32, ptr %arrayidx2195, align 8, !tbaa !15
  %arrayidx2196 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %992 = load i32, ptr %arrayidx2196, align 4, !tbaa !15
  %xor2197 = xor i32 %991, %992
  %call2198 = call i32 @rotr32(i32 noundef %xor2197, i32 noundef 8)
  %arrayidx2199 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  store i32 %call2198, ptr %arrayidx2199, align 8, !tbaa !15
  %arrayidx2200 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %993 = load i32, ptr %arrayidx2200, align 4, !tbaa !15
  %arrayidx2201 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %994 = load i32, ptr %arrayidx2201, align 8, !tbaa !15
  %add2202 = add i32 %993, %994
  %arrayidx2203 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  store i32 %add2202, ptr %arrayidx2203, align 4, !tbaa !15
  %arrayidx2204 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %995 = load i32, ptr %arrayidx2204, align 16, !tbaa !15
  %arrayidx2205 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %996 = load i32, ptr %arrayidx2205, align 4, !tbaa !15
  %xor2206 = xor i32 %995, %996
  %call2207 = call i32 @rotr32(i32 noundef %xor2206, i32 noundef 7)
  %arrayidx2208 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  store i32 %call2207, ptr %arrayidx2208, align 16, !tbaa !15
  br label %do.cond2209

do.cond2209:                                      ; preds = %do.body2166
  br label %do.end2210

do.end2210:                                       ; preds = %do.cond2209
  br label %do.cond2211

do.cond2211:                                      ; preds = %do.end2210
  br label %do.end2212

do.end2212:                                       ; preds = %do.cond2211
  br label %do.body2213

do.body2213:                                      ; preds = %do.end2212
  br label %do.body2214

do.body2214:                                      ; preds = %do.body2213
  %arrayidx2215 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %997 = load i32, ptr %arrayidx2215, align 16, !tbaa !15
  %arrayidx2216 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %998 = load i32, ptr %arrayidx2216, align 16, !tbaa !15
  %add2217 = add i32 %997, %998
  %999 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 6), align 16, !tbaa !19
  %idxprom2218 = zext i8 %999 to i64
  %arrayidx2219 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom2218
  %1000 = load i32, ptr %arrayidx2219, align 4, !tbaa !15
  %add2220 = add i32 %add2217, %1000
  %arrayidx2221 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  store i32 %add2220, ptr %arrayidx2221, align 16, !tbaa !15
  %arrayidx2222 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %1001 = load i32, ptr %arrayidx2222, align 16, !tbaa !15
  %arrayidx2223 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %1002 = load i32, ptr %arrayidx2223, align 16, !tbaa !15
  %xor2224 = xor i32 %1001, %1002
  %call2225 = call i32 @rotr32(i32 noundef %xor2224, i32 noundef 16)
  %arrayidx2226 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  store i32 %call2225, ptr %arrayidx2226, align 16, !tbaa !15
  %arrayidx2227 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %1003 = load i32, ptr %arrayidx2227, align 16, !tbaa !15
  %arrayidx2228 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %1004 = load i32, ptr %arrayidx2228, align 16, !tbaa !15
  %add2229 = add i32 %1003, %1004
  %arrayidx2230 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  store i32 %add2229, ptr %arrayidx2230, align 16, !tbaa !15
  %arrayidx2231 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %1005 = load i32, ptr %arrayidx2231, align 16, !tbaa !15
  %arrayidx2232 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %1006 = load i32, ptr %arrayidx2232, align 16, !tbaa !15
  %xor2233 = xor i32 %1005, %1006
  %call2234 = call i32 @rotr32(i32 noundef %xor2233, i32 noundef 12)
  %arrayidx2235 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  store i32 %call2234, ptr %arrayidx2235, align 16, !tbaa !15
  %arrayidx2236 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %1007 = load i32, ptr %arrayidx2236, align 16, !tbaa !15
  %arrayidx2237 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %1008 = load i32, ptr %arrayidx2237, align 16, !tbaa !15
  %add2238 = add i32 %1007, %1008
  %1009 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 6, i64 1), align 1, !tbaa !19
  %idxprom2239 = zext i8 %1009 to i64
  %arrayidx2240 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom2239
  %1010 = load i32, ptr %arrayidx2240, align 4, !tbaa !15
  %add2241 = add i32 %add2238, %1010
  %arrayidx2242 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  store i32 %add2241, ptr %arrayidx2242, align 16, !tbaa !15
  %arrayidx2243 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %1011 = load i32, ptr %arrayidx2243, align 16, !tbaa !15
  %arrayidx2244 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %1012 = load i32, ptr %arrayidx2244, align 16, !tbaa !15
  %xor2245 = xor i32 %1011, %1012
  %call2246 = call i32 @rotr32(i32 noundef %xor2245, i32 noundef 8)
  %arrayidx2247 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  store i32 %call2246, ptr %arrayidx2247, align 16, !tbaa !15
  %arrayidx2248 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %1013 = load i32, ptr %arrayidx2248, align 16, !tbaa !15
  %arrayidx2249 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %1014 = load i32, ptr %arrayidx2249, align 16, !tbaa !15
  %add2250 = add i32 %1013, %1014
  %arrayidx2251 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  store i32 %add2250, ptr %arrayidx2251, align 16, !tbaa !15
  %arrayidx2252 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %1015 = load i32, ptr %arrayidx2252, align 16, !tbaa !15
  %arrayidx2253 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %1016 = load i32, ptr %arrayidx2253, align 16, !tbaa !15
  %xor2254 = xor i32 %1015, %1016
  %call2255 = call i32 @rotr32(i32 noundef %xor2254, i32 noundef 7)
  %arrayidx2256 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  store i32 %call2255, ptr %arrayidx2256, align 16, !tbaa !15
  br label %do.cond2257

do.cond2257:                                      ; preds = %do.body2214
  br label %do.end2258

do.end2258:                                       ; preds = %do.cond2257
  br label %do.body2259

do.body2259:                                      ; preds = %do.end2258
  %arrayidx2260 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %1017 = load i32, ptr %arrayidx2260, align 4, !tbaa !15
  %arrayidx2261 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %1018 = load i32, ptr %arrayidx2261, align 4, !tbaa !15
  %add2262 = add i32 %1017, %1018
  %1019 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 6, i64 2), align 2, !tbaa !19
  %idxprom2263 = zext i8 %1019 to i64
  %arrayidx2264 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom2263
  %1020 = load i32, ptr %arrayidx2264, align 4, !tbaa !15
  %add2265 = add i32 %add2262, %1020
  %arrayidx2266 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  store i32 %add2265, ptr %arrayidx2266, align 4, !tbaa !15
  %arrayidx2267 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %1021 = load i32, ptr %arrayidx2267, align 4, !tbaa !15
  %arrayidx2268 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %1022 = load i32, ptr %arrayidx2268, align 4, !tbaa !15
  %xor2269 = xor i32 %1021, %1022
  %call2270 = call i32 @rotr32(i32 noundef %xor2269, i32 noundef 16)
  %arrayidx2271 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  store i32 %call2270, ptr %arrayidx2271, align 4, !tbaa !15
  %arrayidx2272 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %1023 = load i32, ptr %arrayidx2272, align 4, !tbaa !15
  %arrayidx2273 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %1024 = load i32, ptr %arrayidx2273, align 4, !tbaa !15
  %add2274 = add i32 %1023, %1024
  %arrayidx2275 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  store i32 %add2274, ptr %arrayidx2275, align 4, !tbaa !15
  %arrayidx2276 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %1025 = load i32, ptr %arrayidx2276, align 4, !tbaa !15
  %arrayidx2277 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %1026 = load i32, ptr %arrayidx2277, align 4, !tbaa !15
  %xor2278 = xor i32 %1025, %1026
  %call2279 = call i32 @rotr32(i32 noundef %xor2278, i32 noundef 12)
  %arrayidx2280 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  store i32 %call2279, ptr %arrayidx2280, align 4, !tbaa !15
  %arrayidx2281 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %1027 = load i32, ptr %arrayidx2281, align 4, !tbaa !15
  %arrayidx2282 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %1028 = load i32, ptr %arrayidx2282, align 4, !tbaa !15
  %add2283 = add i32 %1027, %1028
  %1029 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 6, i64 3), align 1, !tbaa !19
  %idxprom2284 = zext i8 %1029 to i64
  %arrayidx2285 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom2284
  %1030 = load i32, ptr %arrayidx2285, align 4, !tbaa !15
  %add2286 = add i32 %add2283, %1030
  %arrayidx2287 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  store i32 %add2286, ptr %arrayidx2287, align 4, !tbaa !15
  %arrayidx2288 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %1031 = load i32, ptr %arrayidx2288, align 4, !tbaa !15
  %arrayidx2289 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %1032 = load i32, ptr %arrayidx2289, align 4, !tbaa !15
  %xor2290 = xor i32 %1031, %1032
  %call2291 = call i32 @rotr32(i32 noundef %xor2290, i32 noundef 8)
  %arrayidx2292 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  store i32 %call2291, ptr %arrayidx2292, align 4, !tbaa !15
  %arrayidx2293 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %1033 = load i32, ptr %arrayidx2293, align 4, !tbaa !15
  %arrayidx2294 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %1034 = load i32, ptr %arrayidx2294, align 4, !tbaa !15
  %add2295 = add i32 %1033, %1034
  %arrayidx2296 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  store i32 %add2295, ptr %arrayidx2296, align 4, !tbaa !15
  %arrayidx2297 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %1035 = load i32, ptr %arrayidx2297, align 4, !tbaa !15
  %arrayidx2298 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %1036 = load i32, ptr %arrayidx2298, align 4, !tbaa !15
  %xor2299 = xor i32 %1035, %1036
  %call2300 = call i32 @rotr32(i32 noundef %xor2299, i32 noundef 7)
  %arrayidx2301 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  store i32 %call2300, ptr %arrayidx2301, align 4, !tbaa !15
  br label %do.cond2302

do.cond2302:                                      ; preds = %do.body2259
  br label %do.end2303

do.end2303:                                       ; preds = %do.cond2302
  br label %do.body2304

do.body2304:                                      ; preds = %do.end2303
  %arrayidx2305 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %1037 = load i32, ptr %arrayidx2305, align 8, !tbaa !15
  %arrayidx2306 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %1038 = load i32, ptr %arrayidx2306, align 8, !tbaa !15
  %add2307 = add i32 %1037, %1038
  %1039 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 6, i64 4), align 4, !tbaa !19
  %idxprom2308 = zext i8 %1039 to i64
  %arrayidx2309 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom2308
  %1040 = load i32, ptr %arrayidx2309, align 4, !tbaa !15
  %add2310 = add i32 %add2307, %1040
  %arrayidx2311 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  store i32 %add2310, ptr %arrayidx2311, align 8, !tbaa !15
  %arrayidx2312 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %1041 = load i32, ptr %arrayidx2312, align 8, !tbaa !15
  %arrayidx2313 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %1042 = load i32, ptr %arrayidx2313, align 8, !tbaa !15
  %xor2314 = xor i32 %1041, %1042
  %call2315 = call i32 @rotr32(i32 noundef %xor2314, i32 noundef 16)
  %arrayidx2316 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  store i32 %call2315, ptr %arrayidx2316, align 8, !tbaa !15
  %arrayidx2317 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %1043 = load i32, ptr %arrayidx2317, align 8, !tbaa !15
  %arrayidx2318 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %1044 = load i32, ptr %arrayidx2318, align 8, !tbaa !15
  %add2319 = add i32 %1043, %1044
  %arrayidx2320 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  store i32 %add2319, ptr %arrayidx2320, align 8, !tbaa !15
  %arrayidx2321 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %1045 = load i32, ptr %arrayidx2321, align 8, !tbaa !15
  %arrayidx2322 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %1046 = load i32, ptr %arrayidx2322, align 8, !tbaa !15
  %xor2323 = xor i32 %1045, %1046
  %call2324 = call i32 @rotr32(i32 noundef %xor2323, i32 noundef 12)
  %arrayidx2325 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  store i32 %call2324, ptr %arrayidx2325, align 8, !tbaa !15
  %arrayidx2326 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %1047 = load i32, ptr %arrayidx2326, align 8, !tbaa !15
  %arrayidx2327 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %1048 = load i32, ptr %arrayidx2327, align 8, !tbaa !15
  %add2328 = add i32 %1047, %1048
  %1049 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 6, i64 5), align 1, !tbaa !19
  %idxprom2329 = zext i8 %1049 to i64
  %arrayidx2330 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom2329
  %1050 = load i32, ptr %arrayidx2330, align 4, !tbaa !15
  %add2331 = add i32 %add2328, %1050
  %arrayidx2332 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  store i32 %add2331, ptr %arrayidx2332, align 8, !tbaa !15
  %arrayidx2333 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %1051 = load i32, ptr %arrayidx2333, align 8, !tbaa !15
  %arrayidx2334 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %1052 = load i32, ptr %arrayidx2334, align 8, !tbaa !15
  %xor2335 = xor i32 %1051, %1052
  %call2336 = call i32 @rotr32(i32 noundef %xor2335, i32 noundef 8)
  %arrayidx2337 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  store i32 %call2336, ptr %arrayidx2337, align 8, !tbaa !15
  %arrayidx2338 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %1053 = load i32, ptr %arrayidx2338, align 8, !tbaa !15
  %arrayidx2339 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %1054 = load i32, ptr %arrayidx2339, align 8, !tbaa !15
  %add2340 = add i32 %1053, %1054
  %arrayidx2341 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  store i32 %add2340, ptr %arrayidx2341, align 8, !tbaa !15
  %arrayidx2342 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %1055 = load i32, ptr %arrayidx2342, align 8, !tbaa !15
  %arrayidx2343 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %1056 = load i32, ptr %arrayidx2343, align 8, !tbaa !15
  %xor2344 = xor i32 %1055, %1056
  %call2345 = call i32 @rotr32(i32 noundef %xor2344, i32 noundef 7)
  %arrayidx2346 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  store i32 %call2345, ptr %arrayidx2346, align 8, !tbaa !15
  br label %do.cond2347

do.cond2347:                                      ; preds = %do.body2304
  br label %do.end2348

do.end2348:                                       ; preds = %do.cond2347
  br label %do.body2349

do.body2349:                                      ; preds = %do.end2348
  %arrayidx2350 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %1057 = load i32, ptr %arrayidx2350, align 4, !tbaa !15
  %arrayidx2351 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %1058 = load i32, ptr %arrayidx2351, align 4, !tbaa !15
  %add2352 = add i32 %1057, %1058
  %1059 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 6, i64 6), align 2, !tbaa !19
  %idxprom2353 = zext i8 %1059 to i64
  %arrayidx2354 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom2353
  %1060 = load i32, ptr %arrayidx2354, align 4, !tbaa !15
  %add2355 = add i32 %add2352, %1060
  %arrayidx2356 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  store i32 %add2355, ptr %arrayidx2356, align 4, !tbaa !15
  %arrayidx2357 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %1061 = load i32, ptr %arrayidx2357, align 4, !tbaa !15
  %arrayidx2358 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %1062 = load i32, ptr %arrayidx2358, align 4, !tbaa !15
  %xor2359 = xor i32 %1061, %1062
  %call2360 = call i32 @rotr32(i32 noundef %xor2359, i32 noundef 16)
  %arrayidx2361 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  store i32 %call2360, ptr %arrayidx2361, align 4, !tbaa !15
  %arrayidx2362 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %1063 = load i32, ptr %arrayidx2362, align 4, !tbaa !15
  %arrayidx2363 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %1064 = load i32, ptr %arrayidx2363, align 4, !tbaa !15
  %add2364 = add i32 %1063, %1064
  %arrayidx2365 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  store i32 %add2364, ptr %arrayidx2365, align 4, !tbaa !15
  %arrayidx2366 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %1065 = load i32, ptr %arrayidx2366, align 4, !tbaa !15
  %arrayidx2367 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %1066 = load i32, ptr %arrayidx2367, align 4, !tbaa !15
  %xor2368 = xor i32 %1065, %1066
  %call2369 = call i32 @rotr32(i32 noundef %xor2368, i32 noundef 12)
  %arrayidx2370 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  store i32 %call2369, ptr %arrayidx2370, align 4, !tbaa !15
  %arrayidx2371 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %1067 = load i32, ptr %arrayidx2371, align 4, !tbaa !15
  %arrayidx2372 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %1068 = load i32, ptr %arrayidx2372, align 4, !tbaa !15
  %add2373 = add i32 %1067, %1068
  %1069 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 6, i64 7), align 1, !tbaa !19
  %idxprom2374 = zext i8 %1069 to i64
  %arrayidx2375 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom2374
  %1070 = load i32, ptr %arrayidx2375, align 4, !tbaa !15
  %add2376 = add i32 %add2373, %1070
  %arrayidx2377 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  store i32 %add2376, ptr %arrayidx2377, align 4, !tbaa !15
  %arrayidx2378 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %1071 = load i32, ptr %arrayidx2378, align 4, !tbaa !15
  %arrayidx2379 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %1072 = load i32, ptr %arrayidx2379, align 4, !tbaa !15
  %xor2380 = xor i32 %1071, %1072
  %call2381 = call i32 @rotr32(i32 noundef %xor2380, i32 noundef 8)
  %arrayidx2382 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  store i32 %call2381, ptr %arrayidx2382, align 4, !tbaa !15
  %arrayidx2383 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %1073 = load i32, ptr %arrayidx2383, align 4, !tbaa !15
  %arrayidx2384 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %1074 = load i32, ptr %arrayidx2384, align 4, !tbaa !15
  %add2385 = add i32 %1073, %1074
  %arrayidx2386 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  store i32 %add2385, ptr %arrayidx2386, align 4, !tbaa !15
  %arrayidx2387 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %1075 = load i32, ptr %arrayidx2387, align 4, !tbaa !15
  %arrayidx2388 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %1076 = load i32, ptr %arrayidx2388, align 4, !tbaa !15
  %xor2389 = xor i32 %1075, %1076
  %call2390 = call i32 @rotr32(i32 noundef %xor2389, i32 noundef 7)
  %arrayidx2391 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  store i32 %call2390, ptr %arrayidx2391, align 4, !tbaa !15
  br label %do.cond2392

do.cond2392:                                      ; preds = %do.body2349
  br label %do.end2393

do.end2393:                                       ; preds = %do.cond2392
  br label %do.body2394

do.body2394:                                      ; preds = %do.end2393
  %arrayidx2395 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %1077 = load i32, ptr %arrayidx2395, align 16, !tbaa !15
  %arrayidx2396 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %1078 = load i32, ptr %arrayidx2396, align 4, !tbaa !15
  %add2397 = add i32 %1077, %1078
  %1079 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 6, i64 8), align 8, !tbaa !19
  %idxprom2398 = zext i8 %1079 to i64
  %arrayidx2399 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom2398
  %1080 = load i32, ptr %arrayidx2399, align 4, !tbaa !15
  %add2400 = add i32 %add2397, %1080
  %arrayidx2401 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  store i32 %add2400, ptr %arrayidx2401, align 16, !tbaa !15
  %arrayidx2402 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %1081 = load i32, ptr %arrayidx2402, align 4, !tbaa !15
  %arrayidx2403 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %1082 = load i32, ptr %arrayidx2403, align 16, !tbaa !15
  %xor2404 = xor i32 %1081, %1082
  %call2405 = call i32 @rotr32(i32 noundef %xor2404, i32 noundef 16)
  %arrayidx2406 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  store i32 %call2405, ptr %arrayidx2406, align 4, !tbaa !15
  %arrayidx2407 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %1083 = load i32, ptr %arrayidx2407, align 8, !tbaa !15
  %arrayidx2408 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %1084 = load i32, ptr %arrayidx2408, align 4, !tbaa !15
  %add2409 = add i32 %1083, %1084
  %arrayidx2410 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  store i32 %add2409, ptr %arrayidx2410, align 8, !tbaa !15
  %arrayidx2411 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %1085 = load i32, ptr %arrayidx2411, align 4, !tbaa !15
  %arrayidx2412 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %1086 = load i32, ptr %arrayidx2412, align 8, !tbaa !15
  %xor2413 = xor i32 %1085, %1086
  %call2414 = call i32 @rotr32(i32 noundef %xor2413, i32 noundef 12)
  %arrayidx2415 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  store i32 %call2414, ptr %arrayidx2415, align 4, !tbaa !15
  %arrayidx2416 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %1087 = load i32, ptr %arrayidx2416, align 16, !tbaa !15
  %arrayidx2417 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %1088 = load i32, ptr %arrayidx2417, align 4, !tbaa !15
  %add2418 = add i32 %1087, %1088
  %1089 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 6, i64 9), align 1, !tbaa !19
  %idxprom2419 = zext i8 %1089 to i64
  %arrayidx2420 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom2419
  %1090 = load i32, ptr %arrayidx2420, align 4, !tbaa !15
  %add2421 = add i32 %add2418, %1090
  %arrayidx2422 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  store i32 %add2421, ptr %arrayidx2422, align 16, !tbaa !15
  %arrayidx2423 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %1091 = load i32, ptr %arrayidx2423, align 4, !tbaa !15
  %arrayidx2424 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %1092 = load i32, ptr %arrayidx2424, align 16, !tbaa !15
  %xor2425 = xor i32 %1091, %1092
  %call2426 = call i32 @rotr32(i32 noundef %xor2425, i32 noundef 8)
  %arrayidx2427 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  store i32 %call2426, ptr %arrayidx2427, align 4, !tbaa !15
  %arrayidx2428 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %1093 = load i32, ptr %arrayidx2428, align 8, !tbaa !15
  %arrayidx2429 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %1094 = load i32, ptr %arrayidx2429, align 4, !tbaa !15
  %add2430 = add i32 %1093, %1094
  %arrayidx2431 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  store i32 %add2430, ptr %arrayidx2431, align 8, !tbaa !15
  %arrayidx2432 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %1095 = load i32, ptr %arrayidx2432, align 4, !tbaa !15
  %arrayidx2433 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %1096 = load i32, ptr %arrayidx2433, align 8, !tbaa !15
  %xor2434 = xor i32 %1095, %1096
  %call2435 = call i32 @rotr32(i32 noundef %xor2434, i32 noundef 7)
  %arrayidx2436 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  store i32 %call2435, ptr %arrayidx2436, align 4, !tbaa !15
  br label %do.cond2437

do.cond2437:                                      ; preds = %do.body2394
  br label %do.end2438

do.end2438:                                       ; preds = %do.cond2437
  br label %do.body2439

do.body2439:                                      ; preds = %do.end2438
  %arrayidx2440 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %1097 = load i32, ptr %arrayidx2440, align 4, !tbaa !15
  %arrayidx2441 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %1098 = load i32, ptr %arrayidx2441, align 8, !tbaa !15
  %add2442 = add i32 %1097, %1098
  %1099 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 6, i64 10), align 2, !tbaa !19
  %idxprom2443 = zext i8 %1099 to i64
  %arrayidx2444 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom2443
  %1100 = load i32, ptr %arrayidx2444, align 4, !tbaa !15
  %add2445 = add i32 %add2442, %1100
  %arrayidx2446 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  store i32 %add2445, ptr %arrayidx2446, align 4, !tbaa !15
  %arrayidx2447 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %1101 = load i32, ptr %arrayidx2447, align 16, !tbaa !15
  %arrayidx2448 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %1102 = load i32, ptr %arrayidx2448, align 4, !tbaa !15
  %xor2449 = xor i32 %1101, %1102
  %call2450 = call i32 @rotr32(i32 noundef %xor2449, i32 noundef 16)
  %arrayidx2451 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  store i32 %call2450, ptr %arrayidx2451, align 16, !tbaa !15
  %arrayidx2452 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %1103 = load i32, ptr %arrayidx2452, align 4, !tbaa !15
  %arrayidx2453 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %1104 = load i32, ptr %arrayidx2453, align 16, !tbaa !15
  %add2454 = add i32 %1103, %1104
  %arrayidx2455 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  store i32 %add2454, ptr %arrayidx2455, align 4, !tbaa !15
  %arrayidx2456 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %1105 = load i32, ptr %arrayidx2456, align 8, !tbaa !15
  %arrayidx2457 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %1106 = load i32, ptr %arrayidx2457, align 4, !tbaa !15
  %xor2458 = xor i32 %1105, %1106
  %call2459 = call i32 @rotr32(i32 noundef %xor2458, i32 noundef 12)
  %arrayidx2460 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  store i32 %call2459, ptr %arrayidx2460, align 8, !tbaa !15
  %arrayidx2461 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %1107 = load i32, ptr %arrayidx2461, align 4, !tbaa !15
  %arrayidx2462 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %1108 = load i32, ptr %arrayidx2462, align 8, !tbaa !15
  %add2463 = add i32 %1107, %1108
  %1109 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 6, i64 11), align 1, !tbaa !19
  %idxprom2464 = zext i8 %1109 to i64
  %arrayidx2465 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom2464
  %1110 = load i32, ptr %arrayidx2465, align 4, !tbaa !15
  %add2466 = add i32 %add2463, %1110
  %arrayidx2467 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  store i32 %add2466, ptr %arrayidx2467, align 4, !tbaa !15
  %arrayidx2468 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %1111 = load i32, ptr %arrayidx2468, align 16, !tbaa !15
  %arrayidx2469 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %1112 = load i32, ptr %arrayidx2469, align 4, !tbaa !15
  %xor2470 = xor i32 %1111, %1112
  %call2471 = call i32 @rotr32(i32 noundef %xor2470, i32 noundef 8)
  %arrayidx2472 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  store i32 %call2471, ptr %arrayidx2472, align 16, !tbaa !15
  %arrayidx2473 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %1113 = load i32, ptr %arrayidx2473, align 4, !tbaa !15
  %arrayidx2474 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %1114 = load i32, ptr %arrayidx2474, align 16, !tbaa !15
  %add2475 = add i32 %1113, %1114
  %arrayidx2476 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  store i32 %add2475, ptr %arrayidx2476, align 4, !tbaa !15
  %arrayidx2477 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %1115 = load i32, ptr %arrayidx2477, align 8, !tbaa !15
  %arrayidx2478 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %1116 = load i32, ptr %arrayidx2478, align 4, !tbaa !15
  %xor2479 = xor i32 %1115, %1116
  %call2480 = call i32 @rotr32(i32 noundef %xor2479, i32 noundef 7)
  %arrayidx2481 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  store i32 %call2480, ptr %arrayidx2481, align 8, !tbaa !15
  br label %do.cond2482

do.cond2482:                                      ; preds = %do.body2439
  br label %do.end2483

do.end2483:                                       ; preds = %do.cond2482
  br label %do.body2484

do.body2484:                                      ; preds = %do.end2483
  %arrayidx2485 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %1117 = load i32, ptr %arrayidx2485, align 8, !tbaa !15
  %arrayidx2486 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %1118 = load i32, ptr %arrayidx2486, align 4, !tbaa !15
  %add2487 = add i32 %1117, %1118
  %1119 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 6, i64 12), align 4, !tbaa !19
  %idxprom2488 = zext i8 %1119 to i64
  %arrayidx2489 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom2488
  %1120 = load i32, ptr %arrayidx2489, align 4, !tbaa !15
  %add2490 = add i32 %add2487, %1120
  %arrayidx2491 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  store i32 %add2490, ptr %arrayidx2491, align 8, !tbaa !15
  %arrayidx2492 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %1121 = load i32, ptr %arrayidx2492, align 4, !tbaa !15
  %arrayidx2493 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %1122 = load i32, ptr %arrayidx2493, align 8, !tbaa !15
  %xor2494 = xor i32 %1121, %1122
  %call2495 = call i32 @rotr32(i32 noundef %xor2494, i32 noundef 16)
  %arrayidx2496 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  store i32 %call2495, ptr %arrayidx2496, align 4, !tbaa !15
  %arrayidx2497 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %1123 = load i32, ptr %arrayidx2497, align 16, !tbaa !15
  %arrayidx2498 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %1124 = load i32, ptr %arrayidx2498, align 4, !tbaa !15
  %add2499 = add i32 %1123, %1124
  %arrayidx2500 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  store i32 %add2499, ptr %arrayidx2500, align 16, !tbaa !15
  %arrayidx2501 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %1125 = load i32, ptr %arrayidx2501, align 4, !tbaa !15
  %arrayidx2502 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %1126 = load i32, ptr %arrayidx2502, align 16, !tbaa !15
  %xor2503 = xor i32 %1125, %1126
  %call2504 = call i32 @rotr32(i32 noundef %xor2503, i32 noundef 12)
  %arrayidx2505 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  store i32 %call2504, ptr %arrayidx2505, align 4, !tbaa !15
  %arrayidx2506 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %1127 = load i32, ptr %arrayidx2506, align 8, !tbaa !15
  %arrayidx2507 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %1128 = load i32, ptr %arrayidx2507, align 4, !tbaa !15
  %add2508 = add i32 %1127, %1128
  %1129 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 6, i64 13), align 1, !tbaa !19
  %idxprom2509 = zext i8 %1129 to i64
  %arrayidx2510 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom2509
  %1130 = load i32, ptr %arrayidx2510, align 4, !tbaa !15
  %add2511 = add i32 %add2508, %1130
  %arrayidx2512 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  store i32 %add2511, ptr %arrayidx2512, align 8, !tbaa !15
  %arrayidx2513 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %1131 = load i32, ptr %arrayidx2513, align 4, !tbaa !15
  %arrayidx2514 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %1132 = load i32, ptr %arrayidx2514, align 8, !tbaa !15
  %xor2515 = xor i32 %1131, %1132
  %call2516 = call i32 @rotr32(i32 noundef %xor2515, i32 noundef 8)
  %arrayidx2517 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  store i32 %call2516, ptr %arrayidx2517, align 4, !tbaa !15
  %arrayidx2518 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %1133 = load i32, ptr %arrayidx2518, align 16, !tbaa !15
  %arrayidx2519 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %1134 = load i32, ptr %arrayidx2519, align 4, !tbaa !15
  %add2520 = add i32 %1133, %1134
  %arrayidx2521 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  store i32 %add2520, ptr %arrayidx2521, align 16, !tbaa !15
  %arrayidx2522 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %1135 = load i32, ptr %arrayidx2522, align 4, !tbaa !15
  %arrayidx2523 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %1136 = load i32, ptr %arrayidx2523, align 16, !tbaa !15
  %xor2524 = xor i32 %1135, %1136
  %call2525 = call i32 @rotr32(i32 noundef %xor2524, i32 noundef 7)
  %arrayidx2526 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  store i32 %call2525, ptr %arrayidx2526, align 4, !tbaa !15
  br label %do.cond2527

do.cond2527:                                      ; preds = %do.body2484
  br label %do.end2528

do.end2528:                                       ; preds = %do.cond2527
  br label %do.body2529

do.body2529:                                      ; preds = %do.end2528
  %arrayidx2530 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %1137 = load i32, ptr %arrayidx2530, align 4, !tbaa !15
  %arrayidx2531 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %1138 = load i32, ptr %arrayidx2531, align 16, !tbaa !15
  %add2532 = add i32 %1137, %1138
  %1139 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 6, i64 14), align 2, !tbaa !19
  %idxprom2533 = zext i8 %1139 to i64
  %arrayidx2534 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom2533
  %1140 = load i32, ptr %arrayidx2534, align 4, !tbaa !15
  %add2535 = add i32 %add2532, %1140
  %arrayidx2536 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  store i32 %add2535, ptr %arrayidx2536, align 4, !tbaa !15
  %arrayidx2537 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %1141 = load i32, ptr %arrayidx2537, align 8, !tbaa !15
  %arrayidx2538 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %1142 = load i32, ptr %arrayidx2538, align 4, !tbaa !15
  %xor2539 = xor i32 %1141, %1142
  %call2540 = call i32 @rotr32(i32 noundef %xor2539, i32 noundef 16)
  %arrayidx2541 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  store i32 %call2540, ptr %arrayidx2541, align 8, !tbaa !15
  %arrayidx2542 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %1143 = load i32, ptr %arrayidx2542, align 4, !tbaa !15
  %arrayidx2543 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %1144 = load i32, ptr %arrayidx2543, align 8, !tbaa !15
  %add2544 = add i32 %1143, %1144
  %arrayidx2545 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  store i32 %add2544, ptr %arrayidx2545, align 4, !tbaa !15
  %arrayidx2546 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %1145 = load i32, ptr %arrayidx2546, align 16, !tbaa !15
  %arrayidx2547 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %1146 = load i32, ptr %arrayidx2547, align 4, !tbaa !15
  %xor2548 = xor i32 %1145, %1146
  %call2549 = call i32 @rotr32(i32 noundef %xor2548, i32 noundef 12)
  %arrayidx2550 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  store i32 %call2549, ptr %arrayidx2550, align 16, !tbaa !15
  %arrayidx2551 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %1147 = load i32, ptr %arrayidx2551, align 4, !tbaa !15
  %arrayidx2552 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %1148 = load i32, ptr %arrayidx2552, align 16, !tbaa !15
  %add2553 = add i32 %1147, %1148
  %1149 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 6, i64 15), align 1, !tbaa !19
  %idxprom2554 = zext i8 %1149 to i64
  %arrayidx2555 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom2554
  %1150 = load i32, ptr %arrayidx2555, align 4, !tbaa !15
  %add2556 = add i32 %add2553, %1150
  %arrayidx2557 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  store i32 %add2556, ptr %arrayidx2557, align 4, !tbaa !15
  %arrayidx2558 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %1151 = load i32, ptr %arrayidx2558, align 8, !tbaa !15
  %arrayidx2559 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %1152 = load i32, ptr %arrayidx2559, align 4, !tbaa !15
  %xor2560 = xor i32 %1151, %1152
  %call2561 = call i32 @rotr32(i32 noundef %xor2560, i32 noundef 8)
  %arrayidx2562 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  store i32 %call2561, ptr %arrayidx2562, align 8, !tbaa !15
  %arrayidx2563 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %1153 = load i32, ptr %arrayidx2563, align 4, !tbaa !15
  %arrayidx2564 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %1154 = load i32, ptr %arrayidx2564, align 8, !tbaa !15
  %add2565 = add i32 %1153, %1154
  %arrayidx2566 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  store i32 %add2565, ptr %arrayidx2566, align 4, !tbaa !15
  %arrayidx2567 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %1155 = load i32, ptr %arrayidx2567, align 16, !tbaa !15
  %arrayidx2568 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %1156 = load i32, ptr %arrayidx2568, align 4, !tbaa !15
  %xor2569 = xor i32 %1155, %1156
  %call2570 = call i32 @rotr32(i32 noundef %xor2569, i32 noundef 7)
  %arrayidx2571 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  store i32 %call2570, ptr %arrayidx2571, align 16, !tbaa !15
  br label %do.cond2572

do.cond2572:                                      ; preds = %do.body2529
  br label %do.end2573

do.end2573:                                       ; preds = %do.cond2572
  br label %do.cond2574

do.cond2574:                                      ; preds = %do.end2573
  br label %do.end2575

do.end2575:                                       ; preds = %do.cond2574
  br label %do.body2576

do.body2576:                                      ; preds = %do.end2575
  br label %do.body2577

do.body2577:                                      ; preds = %do.body2576
  %arrayidx2578 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %1157 = load i32, ptr %arrayidx2578, align 16, !tbaa !15
  %arrayidx2579 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %1158 = load i32, ptr %arrayidx2579, align 16, !tbaa !15
  %add2580 = add i32 %1157, %1158
  %1159 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 7), align 16, !tbaa !19
  %idxprom2581 = zext i8 %1159 to i64
  %arrayidx2582 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom2581
  %1160 = load i32, ptr %arrayidx2582, align 4, !tbaa !15
  %add2583 = add i32 %add2580, %1160
  %arrayidx2584 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  store i32 %add2583, ptr %arrayidx2584, align 16, !tbaa !15
  %arrayidx2585 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %1161 = load i32, ptr %arrayidx2585, align 16, !tbaa !15
  %arrayidx2586 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %1162 = load i32, ptr %arrayidx2586, align 16, !tbaa !15
  %xor2587 = xor i32 %1161, %1162
  %call2588 = call i32 @rotr32(i32 noundef %xor2587, i32 noundef 16)
  %arrayidx2589 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  store i32 %call2588, ptr %arrayidx2589, align 16, !tbaa !15
  %arrayidx2590 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %1163 = load i32, ptr %arrayidx2590, align 16, !tbaa !15
  %arrayidx2591 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %1164 = load i32, ptr %arrayidx2591, align 16, !tbaa !15
  %add2592 = add i32 %1163, %1164
  %arrayidx2593 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  store i32 %add2592, ptr %arrayidx2593, align 16, !tbaa !15
  %arrayidx2594 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %1165 = load i32, ptr %arrayidx2594, align 16, !tbaa !15
  %arrayidx2595 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %1166 = load i32, ptr %arrayidx2595, align 16, !tbaa !15
  %xor2596 = xor i32 %1165, %1166
  %call2597 = call i32 @rotr32(i32 noundef %xor2596, i32 noundef 12)
  %arrayidx2598 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  store i32 %call2597, ptr %arrayidx2598, align 16, !tbaa !15
  %arrayidx2599 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %1167 = load i32, ptr %arrayidx2599, align 16, !tbaa !15
  %arrayidx2600 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %1168 = load i32, ptr %arrayidx2600, align 16, !tbaa !15
  %add2601 = add i32 %1167, %1168
  %1169 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 7, i64 1), align 1, !tbaa !19
  %idxprom2602 = zext i8 %1169 to i64
  %arrayidx2603 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom2602
  %1170 = load i32, ptr %arrayidx2603, align 4, !tbaa !15
  %add2604 = add i32 %add2601, %1170
  %arrayidx2605 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  store i32 %add2604, ptr %arrayidx2605, align 16, !tbaa !15
  %arrayidx2606 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %1171 = load i32, ptr %arrayidx2606, align 16, !tbaa !15
  %arrayidx2607 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %1172 = load i32, ptr %arrayidx2607, align 16, !tbaa !15
  %xor2608 = xor i32 %1171, %1172
  %call2609 = call i32 @rotr32(i32 noundef %xor2608, i32 noundef 8)
  %arrayidx2610 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  store i32 %call2609, ptr %arrayidx2610, align 16, !tbaa !15
  %arrayidx2611 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %1173 = load i32, ptr %arrayidx2611, align 16, !tbaa !15
  %arrayidx2612 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %1174 = load i32, ptr %arrayidx2612, align 16, !tbaa !15
  %add2613 = add i32 %1173, %1174
  %arrayidx2614 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  store i32 %add2613, ptr %arrayidx2614, align 16, !tbaa !15
  %arrayidx2615 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %1175 = load i32, ptr %arrayidx2615, align 16, !tbaa !15
  %arrayidx2616 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %1176 = load i32, ptr %arrayidx2616, align 16, !tbaa !15
  %xor2617 = xor i32 %1175, %1176
  %call2618 = call i32 @rotr32(i32 noundef %xor2617, i32 noundef 7)
  %arrayidx2619 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  store i32 %call2618, ptr %arrayidx2619, align 16, !tbaa !15
  br label %do.cond2620

do.cond2620:                                      ; preds = %do.body2577
  br label %do.end2621

do.end2621:                                       ; preds = %do.cond2620
  br label %do.body2622

do.body2622:                                      ; preds = %do.end2621
  %arrayidx2623 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %1177 = load i32, ptr %arrayidx2623, align 4, !tbaa !15
  %arrayidx2624 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %1178 = load i32, ptr %arrayidx2624, align 4, !tbaa !15
  %add2625 = add i32 %1177, %1178
  %1179 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 7, i64 2), align 2, !tbaa !19
  %idxprom2626 = zext i8 %1179 to i64
  %arrayidx2627 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom2626
  %1180 = load i32, ptr %arrayidx2627, align 4, !tbaa !15
  %add2628 = add i32 %add2625, %1180
  %arrayidx2629 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  store i32 %add2628, ptr %arrayidx2629, align 4, !tbaa !15
  %arrayidx2630 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %1181 = load i32, ptr %arrayidx2630, align 4, !tbaa !15
  %arrayidx2631 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %1182 = load i32, ptr %arrayidx2631, align 4, !tbaa !15
  %xor2632 = xor i32 %1181, %1182
  %call2633 = call i32 @rotr32(i32 noundef %xor2632, i32 noundef 16)
  %arrayidx2634 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  store i32 %call2633, ptr %arrayidx2634, align 4, !tbaa !15
  %arrayidx2635 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %1183 = load i32, ptr %arrayidx2635, align 4, !tbaa !15
  %arrayidx2636 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %1184 = load i32, ptr %arrayidx2636, align 4, !tbaa !15
  %add2637 = add i32 %1183, %1184
  %arrayidx2638 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  store i32 %add2637, ptr %arrayidx2638, align 4, !tbaa !15
  %arrayidx2639 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %1185 = load i32, ptr %arrayidx2639, align 4, !tbaa !15
  %arrayidx2640 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %1186 = load i32, ptr %arrayidx2640, align 4, !tbaa !15
  %xor2641 = xor i32 %1185, %1186
  %call2642 = call i32 @rotr32(i32 noundef %xor2641, i32 noundef 12)
  %arrayidx2643 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  store i32 %call2642, ptr %arrayidx2643, align 4, !tbaa !15
  %arrayidx2644 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %1187 = load i32, ptr %arrayidx2644, align 4, !tbaa !15
  %arrayidx2645 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %1188 = load i32, ptr %arrayidx2645, align 4, !tbaa !15
  %add2646 = add i32 %1187, %1188
  %1189 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 7, i64 3), align 1, !tbaa !19
  %idxprom2647 = zext i8 %1189 to i64
  %arrayidx2648 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom2647
  %1190 = load i32, ptr %arrayidx2648, align 4, !tbaa !15
  %add2649 = add i32 %add2646, %1190
  %arrayidx2650 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  store i32 %add2649, ptr %arrayidx2650, align 4, !tbaa !15
  %arrayidx2651 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %1191 = load i32, ptr %arrayidx2651, align 4, !tbaa !15
  %arrayidx2652 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %1192 = load i32, ptr %arrayidx2652, align 4, !tbaa !15
  %xor2653 = xor i32 %1191, %1192
  %call2654 = call i32 @rotr32(i32 noundef %xor2653, i32 noundef 8)
  %arrayidx2655 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  store i32 %call2654, ptr %arrayidx2655, align 4, !tbaa !15
  %arrayidx2656 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %1193 = load i32, ptr %arrayidx2656, align 4, !tbaa !15
  %arrayidx2657 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %1194 = load i32, ptr %arrayidx2657, align 4, !tbaa !15
  %add2658 = add i32 %1193, %1194
  %arrayidx2659 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  store i32 %add2658, ptr %arrayidx2659, align 4, !tbaa !15
  %arrayidx2660 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %1195 = load i32, ptr %arrayidx2660, align 4, !tbaa !15
  %arrayidx2661 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %1196 = load i32, ptr %arrayidx2661, align 4, !tbaa !15
  %xor2662 = xor i32 %1195, %1196
  %call2663 = call i32 @rotr32(i32 noundef %xor2662, i32 noundef 7)
  %arrayidx2664 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  store i32 %call2663, ptr %arrayidx2664, align 4, !tbaa !15
  br label %do.cond2665

do.cond2665:                                      ; preds = %do.body2622
  br label %do.end2666

do.end2666:                                       ; preds = %do.cond2665
  br label %do.body2667

do.body2667:                                      ; preds = %do.end2666
  %arrayidx2668 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %1197 = load i32, ptr %arrayidx2668, align 8, !tbaa !15
  %arrayidx2669 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %1198 = load i32, ptr %arrayidx2669, align 8, !tbaa !15
  %add2670 = add i32 %1197, %1198
  %1199 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 7, i64 4), align 4, !tbaa !19
  %idxprom2671 = zext i8 %1199 to i64
  %arrayidx2672 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom2671
  %1200 = load i32, ptr %arrayidx2672, align 4, !tbaa !15
  %add2673 = add i32 %add2670, %1200
  %arrayidx2674 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  store i32 %add2673, ptr %arrayidx2674, align 8, !tbaa !15
  %arrayidx2675 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %1201 = load i32, ptr %arrayidx2675, align 8, !tbaa !15
  %arrayidx2676 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %1202 = load i32, ptr %arrayidx2676, align 8, !tbaa !15
  %xor2677 = xor i32 %1201, %1202
  %call2678 = call i32 @rotr32(i32 noundef %xor2677, i32 noundef 16)
  %arrayidx2679 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  store i32 %call2678, ptr %arrayidx2679, align 8, !tbaa !15
  %arrayidx2680 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %1203 = load i32, ptr %arrayidx2680, align 8, !tbaa !15
  %arrayidx2681 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %1204 = load i32, ptr %arrayidx2681, align 8, !tbaa !15
  %add2682 = add i32 %1203, %1204
  %arrayidx2683 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  store i32 %add2682, ptr %arrayidx2683, align 8, !tbaa !15
  %arrayidx2684 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %1205 = load i32, ptr %arrayidx2684, align 8, !tbaa !15
  %arrayidx2685 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %1206 = load i32, ptr %arrayidx2685, align 8, !tbaa !15
  %xor2686 = xor i32 %1205, %1206
  %call2687 = call i32 @rotr32(i32 noundef %xor2686, i32 noundef 12)
  %arrayidx2688 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  store i32 %call2687, ptr %arrayidx2688, align 8, !tbaa !15
  %arrayidx2689 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %1207 = load i32, ptr %arrayidx2689, align 8, !tbaa !15
  %arrayidx2690 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %1208 = load i32, ptr %arrayidx2690, align 8, !tbaa !15
  %add2691 = add i32 %1207, %1208
  %1209 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 7, i64 5), align 1, !tbaa !19
  %idxprom2692 = zext i8 %1209 to i64
  %arrayidx2693 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom2692
  %1210 = load i32, ptr %arrayidx2693, align 4, !tbaa !15
  %add2694 = add i32 %add2691, %1210
  %arrayidx2695 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  store i32 %add2694, ptr %arrayidx2695, align 8, !tbaa !15
  %arrayidx2696 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %1211 = load i32, ptr %arrayidx2696, align 8, !tbaa !15
  %arrayidx2697 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %1212 = load i32, ptr %arrayidx2697, align 8, !tbaa !15
  %xor2698 = xor i32 %1211, %1212
  %call2699 = call i32 @rotr32(i32 noundef %xor2698, i32 noundef 8)
  %arrayidx2700 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  store i32 %call2699, ptr %arrayidx2700, align 8, !tbaa !15
  %arrayidx2701 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %1213 = load i32, ptr %arrayidx2701, align 8, !tbaa !15
  %arrayidx2702 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %1214 = load i32, ptr %arrayidx2702, align 8, !tbaa !15
  %add2703 = add i32 %1213, %1214
  %arrayidx2704 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  store i32 %add2703, ptr %arrayidx2704, align 8, !tbaa !15
  %arrayidx2705 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %1215 = load i32, ptr %arrayidx2705, align 8, !tbaa !15
  %arrayidx2706 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %1216 = load i32, ptr %arrayidx2706, align 8, !tbaa !15
  %xor2707 = xor i32 %1215, %1216
  %call2708 = call i32 @rotr32(i32 noundef %xor2707, i32 noundef 7)
  %arrayidx2709 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  store i32 %call2708, ptr %arrayidx2709, align 8, !tbaa !15
  br label %do.cond2710

do.cond2710:                                      ; preds = %do.body2667
  br label %do.end2711

do.end2711:                                       ; preds = %do.cond2710
  br label %do.body2712

do.body2712:                                      ; preds = %do.end2711
  %arrayidx2713 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %1217 = load i32, ptr %arrayidx2713, align 4, !tbaa !15
  %arrayidx2714 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %1218 = load i32, ptr %arrayidx2714, align 4, !tbaa !15
  %add2715 = add i32 %1217, %1218
  %1219 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 7, i64 6), align 2, !tbaa !19
  %idxprom2716 = zext i8 %1219 to i64
  %arrayidx2717 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom2716
  %1220 = load i32, ptr %arrayidx2717, align 4, !tbaa !15
  %add2718 = add i32 %add2715, %1220
  %arrayidx2719 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  store i32 %add2718, ptr %arrayidx2719, align 4, !tbaa !15
  %arrayidx2720 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %1221 = load i32, ptr %arrayidx2720, align 4, !tbaa !15
  %arrayidx2721 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %1222 = load i32, ptr %arrayidx2721, align 4, !tbaa !15
  %xor2722 = xor i32 %1221, %1222
  %call2723 = call i32 @rotr32(i32 noundef %xor2722, i32 noundef 16)
  %arrayidx2724 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  store i32 %call2723, ptr %arrayidx2724, align 4, !tbaa !15
  %arrayidx2725 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %1223 = load i32, ptr %arrayidx2725, align 4, !tbaa !15
  %arrayidx2726 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %1224 = load i32, ptr %arrayidx2726, align 4, !tbaa !15
  %add2727 = add i32 %1223, %1224
  %arrayidx2728 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  store i32 %add2727, ptr %arrayidx2728, align 4, !tbaa !15
  %arrayidx2729 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %1225 = load i32, ptr %arrayidx2729, align 4, !tbaa !15
  %arrayidx2730 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %1226 = load i32, ptr %arrayidx2730, align 4, !tbaa !15
  %xor2731 = xor i32 %1225, %1226
  %call2732 = call i32 @rotr32(i32 noundef %xor2731, i32 noundef 12)
  %arrayidx2733 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  store i32 %call2732, ptr %arrayidx2733, align 4, !tbaa !15
  %arrayidx2734 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %1227 = load i32, ptr %arrayidx2734, align 4, !tbaa !15
  %arrayidx2735 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %1228 = load i32, ptr %arrayidx2735, align 4, !tbaa !15
  %add2736 = add i32 %1227, %1228
  %1229 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 7, i64 7), align 1, !tbaa !19
  %idxprom2737 = zext i8 %1229 to i64
  %arrayidx2738 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom2737
  %1230 = load i32, ptr %arrayidx2738, align 4, !tbaa !15
  %add2739 = add i32 %add2736, %1230
  %arrayidx2740 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  store i32 %add2739, ptr %arrayidx2740, align 4, !tbaa !15
  %arrayidx2741 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %1231 = load i32, ptr %arrayidx2741, align 4, !tbaa !15
  %arrayidx2742 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %1232 = load i32, ptr %arrayidx2742, align 4, !tbaa !15
  %xor2743 = xor i32 %1231, %1232
  %call2744 = call i32 @rotr32(i32 noundef %xor2743, i32 noundef 8)
  %arrayidx2745 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  store i32 %call2744, ptr %arrayidx2745, align 4, !tbaa !15
  %arrayidx2746 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %1233 = load i32, ptr %arrayidx2746, align 4, !tbaa !15
  %arrayidx2747 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %1234 = load i32, ptr %arrayidx2747, align 4, !tbaa !15
  %add2748 = add i32 %1233, %1234
  %arrayidx2749 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  store i32 %add2748, ptr %arrayidx2749, align 4, !tbaa !15
  %arrayidx2750 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %1235 = load i32, ptr %arrayidx2750, align 4, !tbaa !15
  %arrayidx2751 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %1236 = load i32, ptr %arrayidx2751, align 4, !tbaa !15
  %xor2752 = xor i32 %1235, %1236
  %call2753 = call i32 @rotr32(i32 noundef %xor2752, i32 noundef 7)
  %arrayidx2754 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  store i32 %call2753, ptr %arrayidx2754, align 4, !tbaa !15
  br label %do.cond2755

do.cond2755:                                      ; preds = %do.body2712
  br label %do.end2756

do.end2756:                                       ; preds = %do.cond2755
  br label %do.body2757

do.body2757:                                      ; preds = %do.end2756
  %arrayidx2758 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %1237 = load i32, ptr %arrayidx2758, align 16, !tbaa !15
  %arrayidx2759 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %1238 = load i32, ptr %arrayidx2759, align 4, !tbaa !15
  %add2760 = add i32 %1237, %1238
  %1239 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 7, i64 8), align 8, !tbaa !19
  %idxprom2761 = zext i8 %1239 to i64
  %arrayidx2762 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom2761
  %1240 = load i32, ptr %arrayidx2762, align 4, !tbaa !15
  %add2763 = add i32 %add2760, %1240
  %arrayidx2764 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  store i32 %add2763, ptr %arrayidx2764, align 16, !tbaa !15
  %arrayidx2765 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %1241 = load i32, ptr %arrayidx2765, align 4, !tbaa !15
  %arrayidx2766 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %1242 = load i32, ptr %arrayidx2766, align 16, !tbaa !15
  %xor2767 = xor i32 %1241, %1242
  %call2768 = call i32 @rotr32(i32 noundef %xor2767, i32 noundef 16)
  %arrayidx2769 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  store i32 %call2768, ptr %arrayidx2769, align 4, !tbaa !15
  %arrayidx2770 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %1243 = load i32, ptr %arrayidx2770, align 8, !tbaa !15
  %arrayidx2771 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %1244 = load i32, ptr %arrayidx2771, align 4, !tbaa !15
  %add2772 = add i32 %1243, %1244
  %arrayidx2773 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  store i32 %add2772, ptr %arrayidx2773, align 8, !tbaa !15
  %arrayidx2774 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %1245 = load i32, ptr %arrayidx2774, align 4, !tbaa !15
  %arrayidx2775 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %1246 = load i32, ptr %arrayidx2775, align 8, !tbaa !15
  %xor2776 = xor i32 %1245, %1246
  %call2777 = call i32 @rotr32(i32 noundef %xor2776, i32 noundef 12)
  %arrayidx2778 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  store i32 %call2777, ptr %arrayidx2778, align 4, !tbaa !15
  %arrayidx2779 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %1247 = load i32, ptr %arrayidx2779, align 16, !tbaa !15
  %arrayidx2780 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %1248 = load i32, ptr %arrayidx2780, align 4, !tbaa !15
  %add2781 = add i32 %1247, %1248
  %1249 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 7, i64 9), align 1, !tbaa !19
  %idxprom2782 = zext i8 %1249 to i64
  %arrayidx2783 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom2782
  %1250 = load i32, ptr %arrayidx2783, align 4, !tbaa !15
  %add2784 = add i32 %add2781, %1250
  %arrayidx2785 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  store i32 %add2784, ptr %arrayidx2785, align 16, !tbaa !15
  %arrayidx2786 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %1251 = load i32, ptr %arrayidx2786, align 4, !tbaa !15
  %arrayidx2787 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %1252 = load i32, ptr %arrayidx2787, align 16, !tbaa !15
  %xor2788 = xor i32 %1251, %1252
  %call2789 = call i32 @rotr32(i32 noundef %xor2788, i32 noundef 8)
  %arrayidx2790 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  store i32 %call2789, ptr %arrayidx2790, align 4, !tbaa !15
  %arrayidx2791 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %1253 = load i32, ptr %arrayidx2791, align 8, !tbaa !15
  %arrayidx2792 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %1254 = load i32, ptr %arrayidx2792, align 4, !tbaa !15
  %add2793 = add i32 %1253, %1254
  %arrayidx2794 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  store i32 %add2793, ptr %arrayidx2794, align 8, !tbaa !15
  %arrayidx2795 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %1255 = load i32, ptr %arrayidx2795, align 4, !tbaa !15
  %arrayidx2796 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %1256 = load i32, ptr %arrayidx2796, align 8, !tbaa !15
  %xor2797 = xor i32 %1255, %1256
  %call2798 = call i32 @rotr32(i32 noundef %xor2797, i32 noundef 7)
  %arrayidx2799 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  store i32 %call2798, ptr %arrayidx2799, align 4, !tbaa !15
  br label %do.cond2800

do.cond2800:                                      ; preds = %do.body2757
  br label %do.end2801

do.end2801:                                       ; preds = %do.cond2800
  br label %do.body2802

do.body2802:                                      ; preds = %do.end2801
  %arrayidx2803 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %1257 = load i32, ptr %arrayidx2803, align 4, !tbaa !15
  %arrayidx2804 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %1258 = load i32, ptr %arrayidx2804, align 8, !tbaa !15
  %add2805 = add i32 %1257, %1258
  %1259 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 7, i64 10), align 2, !tbaa !19
  %idxprom2806 = zext i8 %1259 to i64
  %arrayidx2807 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom2806
  %1260 = load i32, ptr %arrayidx2807, align 4, !tbaa !15
  %add2808 = add i32 %add2805, %1260
  %arrayidx2809 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  store i32 %add2808, ptr %arrayidx2809, align 4, !tbaa !15
  %arrayidx2810 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %1261 = load i32, ptr %arrayidx2810, align 16, !tbaa !15
  %arrayidx2811 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %1262 = load i32, ptr %arrayidx2811, align 4, !tbaa !15
  %xor2812 = xor i32 %1261, %1262
  %call2813 = call i32 @rotr32(i32 noundef %xor2812, i32 noundef 16)
  %arrayidx2814 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  store i32 %call2813, ptr %arrayidx2814, align 16, !tbaa !15
  %arrayidx2815 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %1263 = load i32, ptr %arrayidx2815, align 4, !tbaa !15
  %arrayidx2816 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %1264 = load i32, ptr %arrayidx2816, align 16, !tbaa !15
  %add2817 = add i32 %1263, %1264
  %arrayidx2818 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  store i32 %add2817, ptr %arrayidx2818, align 4, !tbaa !15
  %arrayidx2819 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %1265 = load i32, ptr %arrayidx2819, align 8, !tbaa !15
  %arrayidx2820 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %1266 = load i32, ptr %arrayidx2820, align 4, !tbaa !15
  %xor2821 = xor i32 %1265, %1266
  %call2822 = call i32 @rotr32(i32 noundef %xor2821, i32 noundef 12)
  %arrayidx2823 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  store i32 %call2822, ptr %arrayidx2823, align 8, !tbaa !15
  %arrayidx2824 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %1267 = load i32, ptr %arrayidx2824, align 4, !tbaa !15
  %arrayidx2825 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %1268 = load i32, ptr %arrayidx2825, align 8, !tbaa !15
  %add2826 = add i32 %1267, %1268
  %1269 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 7, i64 11), align 1, !tbaa !19
  %idxprom2827 = zext i8 %1269 to i64
  %arrayidx2828 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom2827
  %1270 = load i32, ptr %arrayidx2828, align 4, !tbaa !15
  %add2829 = add i32 %add2826, %1270
  %arrayidx2830 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  store i32 %add2829, ptr %arrayidx2830, align 4, !tbaa !15
  %arrayidx2831 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %1271 = load i32, ptr %arrayidx2831, align 16, !tbaa !15
  %arrayidx2832 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %1272 = load i32, ptr %arrayidx2832, align 4, !tbaa !15
  %xor2833 = xor i32 %1271, %1272
  %call2834 = call i32 @rotr32(i32 noundef %xor2833, i32 noundef 8)
  %arrayidx2835 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  store i32 %call2834, ptr %arrayidx2835, align 16, !tbaa !15
  %arrayidx2836 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %1273 = load i32, ptr %arrayidx2836, align 4, !tbaa !15
  %arrayidx2837 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %1274 = load i32, ptr %arrayidx2837, align 16, !tbaa !15
  %add2838 = add i32 %1273, %1274
  %arrayidx2839 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  store i32 %add2838, ptr %arrayidx2839, align 4, !tbaa !15
  %arrayidx2840 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %1275 = load i32, ptr %arrayidx2840, align 8, !tbaa !15
  %arrayidx2841 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %1276 = load i32, ptr %arrayidx2841, align 4, !tbaa !15
  %xor2842 = xor i32 %1275, %1276
  %call2843 = call i32 @rotr32(i32 noundef %xor2842, i32 noundef 7)
  %arrayidx2844 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  store i32 %call2843, ptr %arrayidx2844, align 8, !tbaa !15
  br label %do.cond2845

do.cond2845:                                      ; preds = %do.body2802
  br label %do.end2846

do.end2846:                                       ; preds = %do.cond2845
  br label %do.body2847

do.body2847:                                      ; preds = %do.end2846
  %arrayidx2848 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %1277 = load i32, ptr %arrayidx2848, align 8, !tbaa !15
  %arrayidx2849 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %1278 = load i32, ptr %arrayidx2849, align 4, !tbaa !15
  %add2850 = add i32 %1277, %1278
  %1279 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 7, i64 12), align 4, !tbaa !19
  %idxprom2851 = zext i8 %1279 to i64
  %arrayidx2852 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom2851
  %1280 = load i32, ptr %arrayidx2852, align 4, !tbaa !15
  %add2853 = add i32 %add2850, %1280
  %arrayidx2854 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  store i32 %add2853, ptr %arrayidx2854, align 8, !tbaa !15
  %arrayidx2855 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %1281 = load i32, ptr %arrayidx2855, align 4, !tbaa !15
  %arrayidx2856 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %1282 = load i32, ptr %arrayidx2856, align 8, !tbaa !15
  %xor2857 = xor i32 %1281, %1282
  %call2858 = call i32 @rotr32(i32 noundef %xor2857, i32 noundef 16)
  %arrayidx2859 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  store i32 %call2858, ptr %arrayidx2859, align 4, !tbaa !15
  %arrayidx2860 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %1283 = load i32, ptr %arrayidx2860, align 16, !tbaa !15
  %arrayidx2861 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %1284 = load i32, ptr %arrayidx2861, align 4, !tbaa !15
  %add2862 = add i32 %1283, %1284
  %arrayidx2863 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  store i32 %add2862, ptr %arrayidx2863, align 16, !tbaa !15
  %arrayidx2864 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %1285 = load i32, ptr %arrayidx2864, align 4, !tbaa !15
  %arrayidx2865 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %1286 = load i32, ptr %arrayidx2865, align 16, !tbaa !15
  %xor2866 = xor i32 %1285, %1286
  %call2867 = call i32 @rotr32(i32 noundef %xor2866, i32 noundef 12)
  %arrayidx2868 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  store i32 %call2867, ptr %arrayidx2868, align 4, !tbaa !15
  %arrayidx2869 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %1287 = load i32, ptr %arrayidx2869, align 8, !tbaa !15
  %arrayidx2870 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %1288 = load i32, ptr %arrayidx2870, align 4, !tbaa !15
  %add2871 = add i32 %1287, %1288
  %1289 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 7, i64 13), align 1, !tbaa !19
  %idxprom2872 = zext i8 %1289 to i64
  %arrayidx2873 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom2872
  %1290 = load i32, ptr %arrayidx2873, align 4, !tbaa !15
  %add2874 = add i32 %add2871, %1290
  %arrayidx2875 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  store i32 %add2874, ptr %arrayidx2875, align 8, !tbaa !15
  %arrayidx2876 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %1291 = load i32, ptr %arrayidx2876, align 4, !tbaa !15
  %arrayidx2877 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %1292 = load i32, ptr %arrayidx2877, align 8, !tbaa !15
  %xor2878 = xor i32 %1291, %1292
  %call2879 = call i32 @rotr32(i32 noundef %xor2878, i32 noundef 8)
  %arrayidx2880 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  store i32 %call2879, ptr %arrayidx2880, align 4, !tbaa !15
  %arrayidx2881 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %1293 = load i32, ptr %arrayidx2881, align 16, !tbaa !15
  %arrayidx2882 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %1294 = load i32, ptr %arrayidx2882, align 4, !tbaa !15
  %add2883 = add i32 %1293, %1294
  %arrayidx2884 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  store i32 %add2883, ptr %arrayidx2884, align 16, !tbaa !15
  %arrayidx2885 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %1295 = load i32, ptr %arrayidx2885, align 4, !tbaa !15
  %arrayidx2886 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %1296 = load i32, ptr %arrayidx2886, align 16, !tbaa !15
  %xor2887 = xor i32 %1295, %1296
  %call2888 = call i32 @rotr32(i32 noundef %xor2887, i32 noundef 7)
  %arrayidx2889 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  store i32 %call2888, ptr %arrayidx2889, align 4, !tbaa !15
  br label %do.cond2890

do.cond2890:                                      ; preds = %do.body2847
  br label %do.end2891

do.end2891:                                       ; preds = %do.cond2890
  br label %do.body2892

do.body2892:                                      ; preds = %do.end2891
  %arrayidx2893 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %1297 = load i32, ptr %arrayidx2893, align 4, !tbaa !15
  %arrayidx2894 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %1298 = load i32, ptr %arrayidx2894, align 16, !tbaa !15
  %add2895 = add i32 %1297, %1298
  %1299 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 7, i64 14), align 2, !tbaa !19
  %idxprom2896 = zext i8 %1299 to i64
  %arrayidx2897 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom2896
  %1300 = load i32, ptr %arrayidx2897, align 4, !tbaa !15
  %add2898 = add i32 %add2895, %1300
  %arrayidx2899 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  store i32 %add2898, ptr %arrayidx2899, align 4, !tbaa !15
  %arrayidx2900 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %1301 = load i32, ptr %arrayidx2900, align 8, !tbaa !15
  %arrayidx2901 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %1302 = load i32, ptr %arrayidx2901, align 4, !tbaa !15
  %xor2902 = xor i32 %1301, %1302
  %call2903 = call i32 @rotr32(i32 noundef %xor2902, i32 noundef 16)
  %arrayidx2904 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  store i32 %call2903, ptr %arrayidx2904, align 8, !tbaa !15
  %arrayidx2905 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %1303 = load i32, ptr %arrayidx2905, align 4, !tbaa !15
  %arrayidx2906 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %1304 = load i32, ptr %arrayidx2906, align 8, !tbaa !15
  %add2907 = add i32 %1303, %1304
  %arrayidx2908 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  store i32 %add2907, ptr %arrayidx2908, align 4, !tbaa !15
  %arrayidx2909 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %1305 = load i32, ptr %arrayidx2909, align 16, !tbaa !15
  %arrayidx2910 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %1306 = load i32, ptr %arrayidx2910, align 4, !tbaa !15
  %xor2911 = xor i32 %1305, %1306
  %call2912 = call i32 @rotr32(i32 noundef %xor2911, i32 noundef 12)
  %arrayidx2913 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  store i32 %call2912, ptr %arrayidx2913, align 16, !tbaa !15
  %arrayidx2914 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %1307 = load i32, ptr %arrayidx2914, align 4, !tbaa !15
  %arrayidx2915 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %1308 = load i32, ptr %arrayidx2915, align 16, !tbaa !15
  %add2916 = add i32 %1307, %1308
  %1309 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 7, i64 15), align 1, !tbaa !19
  %idxprom2917 = zext i8 %1309 to i64
  %arrayidx2918 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom2917
  %1310 = load i32, ptr %arrayidx2918, align 4, !tbaa !15
  %add2919 = add i32 %add2916, %1310
  %arrayidx2920 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  store i32 %add2919, ptr %arrayidx2920, align 4, !tbaa !15
  %arrayidx2921 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %1311 = load i32, ptr %arrayidx2921, align 8, !tbaa !15
  %arrayidx2922 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %1312 = load i32, ptr %arrayidx2922, align 4, !tbaa !15
  %xor2923 = xor i32 %1311, %1312
  %call2924 = call i32 @rotr32(i32 noundef %xor2923, i32 noundef 8)
  %arrayidx2925 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  store i32 %call2924, ptr %arrayidx2925, align 8, !tbaa !15
  %arrayidx2926 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %1313 = load i32, ptr %arrayidx2926, align 4, !tbaa !15
  %arrayidx2927 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %1314 = load i32, ptr %arrayidx2927, align 8, !tbaa !15
  %add2928 = add i32 %1313, %1314
  %arrayidx2929 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  store i32 %add2928, ptr %arrayidx2929, align 4, !tbaa !15
  %arrayidx2930 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %1315 = load i32, ptr %arrayidx2930, align 16, !tbaa !15
  %arrayidx2931 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %1316 = load i32, ptr %arrayidx2931, align 4, !tbaa !15
  %xor2932 = xor i32 %1315, %1316
  %call2933 = call i32 @rotr32(i32 noundef %xor2932, i32 noundef 7)
  %arrayidx2934 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  store i32 %call2933, ptr %arrayidx2934, align 16, !tbaa !15
  br label %do.cond2935

do.cond2935:                                      ; preds = %do.body2892
  br label %do.end2936

do.end2936:                                       ; preds = %do.cond2935
  br label %do.cond2937

do.cond2937:                                      ; preds = %do.end2936
  br label %do.end2938

do.end2938:                                       ; preds = %do.cond2937
  br label %do.body2939

do.body2939:                                      ; preds = %do.end2938
  br label %do.body2940

do.body2940:                                      ; preds = %do.body2939
  %arrayidx2941 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %1317 = load i32, ptr %arrayidx2941, align 16, !tbaa !15
  %arrayidx2942 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %1318 = load i32, ptr %arrayidx2942, align 16, !tbaa !15
  %add2943 = add i32 %1317, %1318
  %1319 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 8), align 16, !tbaa !19
  %idxprom2944 = zext i8 %1319 to i64
  %arrayidx2945 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom2944
  %1320 = load i32, ptr %arrayidx2945, align 4, !tbaa !15
  %add2946 = add i32 %add2943, %1320
  %arrayidx2947 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  store i32 %add2946, ptr %arrayidx2947, align 16, !tbaa !15
  %arrayidx2948 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %1321 = load i32, ptr %arrayidx2948, align 16, !tbaa !15
  %arrayidx2949 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %1322 = load i32, ptr %arrayidx2949, align 16, !tbaa !15
  %xor2950 = xor i32 %1321, %1322
  %call2951 = call i32 @rotr32(i32 noundef %xor2950, i32 noundef 16)
  %arrayidx2952 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  store i32 %call2951, ptr %arrayidx2952, align 16, !tbaa !15
  %arrayidx2953 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %1323 = load i32, ptr %arrayidx2953, align 16, !tbaa !15
  %arrayidx2954 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %1324 = load i32, ptr %arrayidx2954, align 16, !tbaa !15
  %add2955 = add i32 %1323, %1324
  %arrayidx2956 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  store i32 %add2955, ptr %arrayidx2956, align 16, !tbaa !15
  %arrayidx2957 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %1325 = load i32, ptr %arrayidx2957, align 16, !tbaa !15
  %arrayidx2958 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %1326 = load i32, ptr %arrayidx2958, align 16, !tbaa !15
  %xor2959 = xor i32 %1325, %1326
  %call2960 = call i32 @rotr32(i32 noundef %xor2959, i32 noundef 12)
  %arrayidx2961 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  store i32 %call2960, ptr %arrayidx2961, align 16, !tbaa !15
  %arrayidx2962 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %1327 = load i32, ptr %arrayidx2962, align 16, !tbaa !15
  %arrayidx2963 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %1328 = load i32, ptr %arrayidx2963, align 16, !tbaa !15
  %add2964 = add i32 %1327, %1328
  %1329 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 8, i64 1), align 1, !tbaa !19
  %idxprom2965 = zext i8 %1329 to i64
  %arrayidx2966 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom2965
  %1330 = load i32, ptr %arrayidx2966, align 4, !tbaa !15
  %add2967 = add i32 %add2964, %1330
  %arrayidx2968 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  store i32 %add2967, ptr %arrayidx2968, align 16, !tbaa !15
  %arrayidx2969 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %1331 = load i32, ptr %arrayidx2969, align 16, !tbaa !15
  %arrayidx2970 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %1332 = load i32, ptr %arrayidx2970, align 16, !tbaa !15
  %xor2971 = xor i32 %1331, %1332
  %call2972 = call i32 @rotr32(i32 noundef %xor2971, i32 noundef 8)
  %arrayidx2973 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  store i32 %call2972, ptr %arrayidx2973, align 16, !tbaa !15
  %arrayidx2974 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %1333 = load i32, ptr %arrayidx2974, align 16, !tbaa !15
  %arrayidx2975 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %1334 = load i32, ptr %arrayidx2975, align 16, !tbaa !15
  %add2976 = add i32 %1333, %1334
  %arrayidx2977 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  store i32 %add2976, ptr %arrayidx2977, align 16, !tbaa !15
  %arrayidx2978 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %1335 = load i32, ptr %arrayidx2978, align 16, !tbaa !15
  %arrayidx2979 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %1336 = load i32, ptr %arrayidx2979, align 16, !tbaa !15
  %xor2980 = xor i32 %1335, %1336
  %call2981 = call i32 @rotr32(i32 noundef %xor2980, i32 noundef 7)
  %arrayidx2982 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  store i32 %call2981, ptr %arrayidx2982, align 16, !tbaa !15
  br label %do.cond2983

do.cond2983:                                      ; preds = %do.body2940
  br label %do.end2984

do.end2984:                                       ; preds = %do.cond2983
  br label %do.body2985

do.body2985:                                      ; preds = %do.end2984
  %arrayidx2986 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %1337 = load i32, ptr %arrayidx2986, align 4, !tbaa !15
  %arrayidx2987 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %1338 = load i32, ptr %arrayidx2987, align 4, !tbaa !15
  %add2988 = add i32 %1337, %1338
  %1339 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 8, i64 2), align 2, !tbaa !19
  %idxprom2989 = zext i8 %1339 to i64
  %arrayidx2990 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom2989
  %1340 = load i32, ptr %arrayidx2990, align 4, !tbaa !15
  %add2991 = add i32 %add2988, %1340
  %arrayidx2992 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  store i32 %add2991, ptr %arrayidx2992, align 4, !tbaa !15
  %arrayidx2993 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %1341 = load i32, ptr %arrayidx2993, align 4, !tbaa !15
  %arrayidx2994 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %1342 = load i32, ptr %arrayidx2994, align 4, !tbaa !15
  %xor2995 = xor i32 %1341, %1342
  %call2996 = call i32 @rotr32(i32 noundef %xor2995, i32 noundef 16)
  %arrayidx2997 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  store i32 %call2996, ptr %arrayidx2997, align 4, !tbaa !15
  %arrayidx2998 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %1343 = load i32, ptr %arrayidx2998, align 4, !tbaa !15
  %arrayidx2999 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %1344 = load i32, ptr %arrayidx2999, align 4, !tbaa !15
  %add3000 = add i32 %1343, %1344
  %arrayidx3001 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  store i32 %add3000, ptr %arrayidx3001, align 4, !tbaa !15
  %arrayidx3002 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %1345 = load i32, ptr %arrayidx3002, align 4, !tbaa !15
  %arrayidx3003 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %1346 = load i32, ptr %arrayidx3003, align 4, !tbaa !15
  %xor3004 = xor i32 %1345, %1346
  %call3005 = call i32 @rotr32(i32 noundef %xor3004, i32 noundef 12)
  %arrayidx3006 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  store i32 %call3005, ptr %arrayidx3006, align 4, !tbaa !15
  %arrayidx3007 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %1347 = load i32, ptr %arrayidx3007, align 4, !tbaa !15
  %arrayidx3008 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %1348 = load i32, ptr %arrayidx3008, align 4, !tbaa !15
  %add3009 = add i32 %1347, %1348
  %1349 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 8, i64 3), align 1, !tbaa !19
  %idxprom3010 = zext i8 %1349 to i64
  %arrayidx3011 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom3010
  %1350 = load i32, ptr %arrayidx3011, align 4, !tbaa !15
  %add3012 = add i32 %add3009, %1350
  %arrayidx3013 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  store i32 %add3012, ptr %arrayidx3013, align 4, !tbaa !15
  %arrayidx3014 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %1351 = load i32, ptr %arrayidx3014, align 4, !tbaa !15
  %arrayidx3015 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %1352 = load i32, ptr %arrayidx3015, align 4, !tbaa !15
  %xor3016 = xor i32 %1351, %1352
  %call3017 = call i32 @rotr32(i32 noundef %xor3016, i32 noundef 8)
  %arrayidx3018 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  store i32 %call3017, ptr %arrayidx3018, align 4, !tbaa !15
  %arrayidx3019 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %1353 = load i32, ptr %arrayidx3019, align 4, !tbaa !15
  %arrayidx3020 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %1354 = load i32, ptr %arrayidx3020, align 4, !tbaa !15
  %add3021 = add i32 %1353, %1354
  %arrayidx3022 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  store i32 %add3021, ptr %arrayidx3022, align 4, !tbaa !15
  %arrayidx3023 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %1355 = load i32, ptr %arrayidx3023, align 4, !tbaa !15
  %arrayidx3024 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %1356 = load i32, ptr %arrayidx3024, align 4, !tbaa !15
  %xor3025 = xor i32 %1355, %1356
  %call3026 = call i32 @rotr32(i32 noundef %xor3025, i32 noundef 7)
  %arrayidx3027 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  store i32 %call3026, ptr %arrayidx3027, align 4, !tbaa !15
  br label %do.cond3028

do.cond3028:                                      ; preds = %do.body2985
  br label %do.end3029

do.end3029:                                       ; preds = %do.cond3028
  br label %do.body3030

do.body3030:                                      ; preds = %do.end3029
  %arrayidx3031 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %1357 = load i32, ptr %arrayidx3031, align 8, !tbaa !15
  %arrayidx3032 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %1358 = load i32, ptr %arrayidx3032, align 8, !tbaa !15
  %add3033 = add i32 %1357, %1358
  %1359 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 8, i64 4), align 4, !tbaa !19
  %idxprom3034 = zext i8 %1359 to i64
  %arrayidx3035 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom3034
  %1360 = load i32, ptr %arrayidx3035, align 4, !tbaa !15
  %add3036 = add i32 %add3033, %1360
  %arrayidx3037 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  store i32 %add3036, ptr %arrayidx3037, align 8, !tbaa !15
  %arrayidx3038 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %1361 = load i32, ptr %arrayidx3038, align 8, !tbaa !15
  %arrayidx3039 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %1362 = load i32, ptr %arrayidx3039, align 8, !tbaa !15
  %xor3040 = xor i32 %1361, %1362
  %call3041 = call i32 @rotr32(i32 noundef %xor3040, i32 noundef 16)
  %arrayidx3042 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  store i32 %call3041, ptr %arrayidx3042, align 8, !tbaa !15
  %arrayidx3043 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %1363 = load i32, ptr %arrayidx3043, align 8, !tbaa !15
  %arrayidx3044 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %1364 = load i32, ptr %arrayidx3044, align 8, !tbaa !15
  %add3045 = add i32 %1363, %1364
  %arrayidx3046 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  store i32 %add3045, ptr %arrayidx3046, align 8, !tbaa !15
  %arrayidx3047 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %1365 = load i32, ptr %arrayidx3047, align 8, !tbaa !15
  %arrayidx3048 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %1366 = load i32, ptr %arrayidx3048, align 8, !tbaa !15
  %xor3049 = xor i32 %1365, %1366
  %call3050 = call i32 @rotr32(i32 noundef %xor3049, i32 noundef 12)
  %arrayidx3051 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  store i32 %call3050, ptr %arrayidx3051, align 8, !tbaa !15
  %arrayidx3052 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %1367 = load i32, ptr %arrayidx3052, align 8, !tbaa !15
  %arrayidx3053 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %1368 = load i32, ptr %arrayidx3053, align 8, !tbaa !15
  %add3054 = add i32 %1367, %1368
  %1369 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 8, i64 5), align 1, !tbaa !19
  %idxprom3055 = zext i8 %1369 to i64
  %arrayidx3056 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom3055
  %1370 = load i32, ptr %arrayidx3056, align 4, !tbaa !15
  %add3057 = add i32 %add3054, %1370
  %arrayidx3058 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  store i32 %add3057, ptr %arrayidx3058, align 8, !tbaa !15
  %arrayidx3059 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %1371 = load i32, ptr %arrayidx3059, align 8, !tbaa !15
  %arrayidx3060 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %1372 = load i32, ptr %arrayidx3060, align 8, !tbaa !15
  %xor3061 = xor i32 %1371, %1372
  %call3062 = call i32 @rotr32(i32 noundef %xor3061, i32 noundef 8)
  %arrayidx3063 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  store i32 %call3062, ptr %arrayidx3063, align 8, !tbaa !15
  %arrayidx3064 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %1373 = load i32, ptr %arrayidx3064, align 8, !tbaa !15
  %arrayidx3065 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %1374 = load i32, ptr %arrayidx3065, align 8, !tbaa !15
  %add3066 = add i32 %1373, %1374
  %arrayidx3067 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  store i32 %add3066, ptr %arrayidx3067, align 8, !tbaa !15
  %arrayidx3068 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %1375 = load i32, ptr %arrayidx3068, align 8, !tbaa !15
  %arrayidx3069 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %1376 = load i32, ptr %arrayidx3069, align 8, !tbaa !15
  %xor3070 = xor i32 %1375, %1376
  %call3071 = call i32 @rotr32(i32 noundef %xor3070, i32 noundef 7)
  %arrayidx3072 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  store i32 %call3071, ptr %arrayidx3072, align 8, !tbaa !15
  br label %do.cond3073

do.cond3073:                                      ; preds = %do.body3030
  br label %do.end3074

do.end3074:                                       ; preds = %do.cond3073
  br label %do.body3075

do.body3075:                                      ; preds = %do.end3074
  %arrayidx3076 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %1377 = load i32, ptr %arrayidx3076, align 4, !tbaa !15
  %arrayidx3077 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %1378 = load i32, ptr %arrayidx3077, align 4, !tbaa !15
  %add3078 = add i32 %1377, %1378
  %1379 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 8, i64 6), align 2, !tbaa !19
  %idxprom3079 = zext i8 %1379 to i64
  %arrayidx3080 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom3079
  %1380 = load i32, ptr %arrayidx3080, align 4, !tbaa !15
  %add3081 = add i32 %add3078, %1380
  %arrayidx3082 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  store i32 %add3081, ptr %arrayidx3082, align 4, !tbaa !15
  %arrayidx3083 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %1381 = load i32, ptr %arrayidx3083, align 4, !tbaa !15
  %arrayidx3084 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %1382 = load i32, ptr %arrayidx3084, align 4, !tbaa !15
  %xor3085 = xor i32 %1381, %1382
  %call3086 = call i32 @rotr32(i32 noundef %xor3085, i32 noundef 16)
  %arrayidx3087 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  store i32 %call3086, ptr %arrayidx3087, align 4, !tbaa !15
  %arrayidx3088 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %1383 = load i32, ptr %arrayidx3088, align 4, !tbaa !15
  %arrayidx3089 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %1384 = load i32, ptr %arrayidx3089, align 4, !tbaa !15
  %add3090 = add i32 %1383, %1384
  %arrayidx3091 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  store i32 %add3090, ptr %arrayidx3091, align 4, !tbaa !15
  %arrayidx3092 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %1385 = load i32, ptr %arrayidx3092, align 4, !tbaa !15
  %arrayidx3093 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %1386 = load i32, ptr %arrayidx3093, align 4, !tbaa !15
  %xor3094 = xor i32 %1385, %1386
  %call3095 = call i32 @rotr32(i32 noundef %xor3094, i32 noundef 12)
  %arrayidx3096 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  store i32 %call3095, ptr %arrayidx3096, align 4, !tbaa !15
  %arrayidx3097 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %1387 = load i32, ptr %arrayidx3097, align 4, !tbaa !15
  %arrayidx3098 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %1388 = load i32, ptr %arrayidx3098, align 4, !tbaa !15
  %add3099 = add i32 %1387, %1388
  %1389 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 8, i64 7), align 1, !tbaa !19
  %idxprom3100 = zext i8 %1389 to i64
  %arrayidx3101 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom3100
  %1390 = load i32, ptr %arrayidx3101, align 4, !tbaa !15
  %add3102 = add i32 %add3099, %1390
  %arrayidx3103 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  store i32 %add3102, ptr %arrayidx3103, align 4, !tbaa !15
  %arrayidx3104 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %1391 = load i32, ptr %arrayidx3104, align 4, !tbaa !15
  %arrayidx3105 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %1392 = load i32, ptr %arrayidx3105, align 4, !tbaa !15
  %xor3106 = xor i32 %1391, %1392
  %call3107 = call i32 @rotr32(i32 noundef %xor3106, i32 noundef 8)
  %arrayidx3108 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  store i32 %call3107, ptr %arrayidx3108, align 4, !tbaa !15
  %arrayidx3109 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %1393 = load i32, ptr %arrayidx3109, align 4, !tbaa !15
  %arrayidx3110 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %1394 = load i32, ptr %arrayidx3110, align 4, !tbaa !15
  %add3111 = add i32 %1393, %1394
  %arrayidx3112 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  store i32 %add3111, ptr %arrayidx3112, align 4, !tbaa !15
  %arrayidx3113 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %1395 = load i32, ptr %arrayidx3113, align 4, !tbaa !15
  %arrayidx3114 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %1396 = load i32, ptr %arrayidx3114, align 4, !tbaa !15
  %xor3115 = xor i32 %1395, %1396
  %call3116 = call i32 @rotr32(i32 noundef %xor3115, i32 noundef 7)
  %arrayidx3117 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  store i32 %call3116, ptr %arrayidx3117, align 4, !tbaa !15
  br label %do.cond3118

do.cond3118:                                      ; preds = %do.body3075
  br label %do.end3119

do.end3119:                                       ; preds = %do.cond3118
  br label %do.body3120

do.body3120:                                      ; preds = %do.end3119
  %arrayidx3121 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %1397 = load i32, ptr %arrayidx3121, align 16, !tbaa !15
  %arrayidx3122 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %1398 = load i32, ptr %arrayidx3122, align 4, !tbaa !15
  %add3123 = add i32 %1397, %1398
  %1399 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 8, i64 8), align 8, !tbaa !19
  %idxprom3124 = zext i8 %1399 to i64
  %arrayidx3125 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom3124
  %1400 = load i32, ptr %arrayidx3125, align 4, !tbaa !15
  %add3126 = add i32 %add3123, %1400
  %arrayidx3127 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  store i32 %add3126, ptr %arrayidx3127, align 16, !tbaa !15
  %arrayidx3128 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %1401 = load i32, ptr %arrayidx3128, align 4, !tbaa !15
  %arrayidx3129 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %1402 = load i32, ptr %arrayidx3129, align 16, !tbaa !15
  %xor3130 = xor i32 %1401, %1402
  %call3131 = call i32 @rotr32(i32 noundef %xor3130, i32 noundef 16)
  %arrayidx3132 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  store i32 %call3131, ptr %arrayidx3132, align 4, !tbaa !15
  %arrayidx3133 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %1403 = load i32, ptr %arrayidx3133, align 8, !tbaa !15
  %arrayidx3134 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %1404 = load i32, ptr %arrayidx3134, align 4, !tbaa !15
  %add3135 = add i32 %1403, %1404
  %arrayidx3136 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  store i32 %add3135, ptr %arrayidx3136, align 8, !tbaa !15
  %arrayidx3137 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %1405 = load i32, ptr %arrayidx3137, align 4, !tbaa !15
  %arrayidx3138 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %1406 = load i32, ptr %arrayidx3138, align 8, !tbaa !15
  %xor3139 = xor i32 %1405, %1406
  %call3140 = call i32 @rotr32(i32 noundef %xor3139, i32 noundef 12)
  %arrayidx3141 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  store i32 %call3140, ptr %arrayidx3141, align 4, !tbaa !15
  %arrayidx3142 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %1407 = load i32, ptr %arrayidx3142, align 16, !tbaa !15
  %arrayidx3143 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %1408 = load i32, ptr %arrayidx3143, align 4, !tbaa !15
  %add3144 = add i32 %1407, %1408
  %1409 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 8, i64 9), align 1, !tbaa !19
  %idxprom3145 = zext i8 %1409 to i64
  %arrayidx3146 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom3145
  %1410 = load i32, ptr %arrayidx3146, align 4, !tbaa !15
  %add3147 = add i32 %add3144, %1410
  %arrayidx3148 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  store i32 %add3147, ptr %arrayidx3148, align 16, !tbaa !15
  %arrayidx3149 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %1411 = load i32, ptr %arrayidx3149, align 4, !tbaa !15
  %arrayidx3150 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %1412 = load i32, ptr %arrayidx3150, align 16, !tbaa !15
  %xor3151 = xor i32 %1411, %1412
  %call3152 = call i32 @rotr32(i32 noundef %xor3151, i32 noundef 8)
  %arrayidx3153 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  store i32 %call3152, ptr %arrayidx3153, align 4, !tbaa !15
  %arrayidx3154 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %1413 = load i32, ptr %arrayidx3154, align 8, !tbaa !15
  %arrayidx3155 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %1414 = load i32, ptr %arrayidx3155, align 4, !tbaa !15
  %add3156 = add i32 %1413, %1414
  %arrayidx3157 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  store i32 %add3156, ptr %arrayidx3157, align 8, !tbaa !15
  %arrayidx3158 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %1415 = load i32, ptr %arrayidx3158, align 4, !tbaa !15
  %arrayidx3159 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %1416 = load i32, ptr %arrayidx3159, align 8, !tbaa !15
  %xor3160 = xor i32 %1415, %1416
  %call3161 = call i32 @rotr32(i32 noundef %xor3160, i32 noundef 7)
  %arrayidx3162 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  store i32 %call3161, ptr %arrayidx3162, align 4, !tbaa !15
  br label %do.cond3163

do.cond3163:                                      ; preds = %do.body3120
  br label %do.end3164

do.end3164:                                       ; preds = %do.cond3163
  br label %do.body3165

do.body3165:                                      ; preds = %do.end3164
  %arrayidx3166 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %1417 = load i32, ptr %arrayidx3166, align 4, !tbaa !15
  %arrayidx3167 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %1418 = load i32, ptr %arrayidx3167, align 8, !tbaa !15
  %add3168 = add i32 %1417, %1418
  %1419 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 8, i64 10), align 2, !tbaa !19
  %idxprom3169 = zext i8 %1419 to i64
  %arrayidx3170 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom3169
  %1420 = load i32, ptr %arrayidx3170, align 4, !tbaa !15
  %add3171 = add i32 %add3168, %1420
  %arrayidx3172 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  store i32 %add3171, ptr %arrayidx3172, align 4, !tbaa !15
  %arrayidx3173 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %1421 = load i32, ptr %arrayidx3173, align 16, !tbaa !15
  %arrayidx3174 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %1422 = load i32, ptr %arrayidx3174, align 4, !tbaa !15
  %xor3175 = xor i32 %1421, %1422
  %call3176 = call i32 @rotr32(i32 noundef %xor3175, i32 noundef 16)
  %arrayidx3177 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  store i32 %call3176, ptr %arrayidx3177, align 16, !tbaa !15
  %arrayidx3178 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %1423 = load i32, ptr %arrayidx3178, align 4, !tbaa !15
  %arrayidx3179 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %1424 = load i32, ptr %arrayidx3179, align 16, !tbaa !15
  %add3180 = add i32 %1423, %1424
  %arrayidx3181 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  store i32 %add3180, ptr %arrayidx3181, align 4, !tbaa !15
  %arrayidx3182 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %1425 = load i32, ptr %arrayidx3182, align 8, !tbaa !15
  %arrayidx3183 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %1426 = load i32, ptr %arrayidx3183, align 4, !tbaa !15
  %xor3184 = xor i32 %1425, %1426
  %call3185 = call i32 @rotr32(i32 noundef %xor3184, i32 noundef 12)
  %arrayidx3186 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  store i32 %call3185, ptr %arrayidx3186, align 8, !tbaa !15
  %arrayidx3187 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %1427 = load i32, ptr %arrayidx3187, align 4, !tbaa !15
  %arrayidx3188 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %1428 = load i32, ptr %arrayidx3188, align 8, !tbaa !15
  %add3189 = add i32 %1427, %1428
  %1429 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 8, i64 11), align 1, !tbaa !19
  %idxprom3190 = zext i8 %1429 to i64
  %arrayidx3191 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom3190
  %1430 = load i32, ptr %arrayidx3191, align 4, !tbaa !15
  %add3192 = add i32 %add3189, %1430
  %arrayidx3193 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  store i32 %add3192, ptr %arrayidx3193, align 4, !tbaa !15
  %arrayidx3194 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %1431 = load i32, ptr %arrayidx3194, align 16, !tbaa !15
  %arrayidx3195 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %1432 = load i32, ptr %arrayidx3195, align 4, !tbaa !15
  %xor3196 = xor i32 %1431, %1432
  %call3197 = call i32 @rotr32(i32 noundef %xor3196, i32 noundef 8)
  %arrayidx3198 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  store i32 %call3197, ptr %arrayidx3198, align 16, !tbaa !15
  %arrayidx3199 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %1433 = load i32, ptr %arrayidx3199, align 4, !tbaa !15
  %arrayidx3200 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %1434 = load i32, ptr %arrayidx3200, align 16, !tbaa !15
  %add3201 = add i32 %1433, %1434
  %arrayidx3202 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  store i32 %add3201, ptr %arrayidx3202, align 4, !tbaa !15
  %arrayidx3203 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %1435 = load i32, ptr %arrayidx3203, align 8, !tbaa !15
  %arrayidx3204 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %1436 = load i32, ptr %arrayidx3204, align 4, !tbaa !15
  %xor3205 = xor i32 %1435, %1436
  %call3206 = call i32 @rotr32(i32 noundef %xor3205, i32 noundef 7)
  %arrayidx3207 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  store i32 %call3206, ptr %arrayidx3207, align 8, !tbaa !15
  br label %do.cond3208

do.cond3208:                                      ; preds = %do.body3165
  br label %do.end3209

do.end3209:                                       ; preds = %do.cond3208
  br label %do.body3210

do.body3210:                                      ; preds = %do.end3209
  %arrayidx3211 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %1437 = load i32, ptr %arrayidx3211, align 8, !tbaa !15
  %arrayidx3212 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %1438 = load i32, ptr %arrayidx3212, align 4, !tbaa !15
  %add3213 = add i32 %1437, %1438
  %1439 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 8, i64 12), align 4, !tbaa !19
  %idxprom3214 = zext i8 %1439 to i64
  %arrayidx3215 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom3214
  %1440 = load i32, ptr %arrayidx3215, align 4, !tbaa !15
  %add3216 = add i32 %add3213, %1440
  %arrayidx3217 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  store i32 %add3216, ptr %arrayidx3217, align 8, !tbaa !15
  %arrayidx3218 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %1441 = load i32, ptr %arrayidx3218, align 4, !tbaa !15
  %arrayidx3219 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %1442 = load i32, ptr %arrayidx3219, align 8, !tbaa !15
  %xor3220 = xor i32 %1441, %1442
  %call3221 = call i32 @rotr32(i32 noundef %xor3220, i32 noundef 16)
  %arrayidx3222 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  store i32 %call3221, ptr %arrayidx3222, align 4, !tbaa !15
  %arrayidx3223 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %1443 = load i32, ptr %arrayidx3223, align 16, !tbaa !15
  %arrayidx3224 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %1444 = load i32, ptr %arrayidx3224, align 4, !tbaa !15
  %add3225 = add i32 %1443, %1444
  %arrayidx3226 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  store i32 %add3225, ptr %arrayidx3226, align 16, !tbaa !15
  %arrayidx3227 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %1445 = load i32, ptr %arrayidx3227, align 4, !tbaa !15
  %arrayidx3228 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %1446 = load i32, ptr %arrayidx3228, align 16, !tbaa !15
  %xor3229 = xor i32 %1445, %1446
  %call3230 = call i32 @rotr32(i32 noundef %xor3229, i32 noundef 12)
  %arrayidx3231 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  store i32 %call3230, ptr %arrayidx3231, align 4, !tbaa !15
  %arrayidx3232 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %1447 = load i32, ptr %arrayidx3232, align 8, !tbaa !15
  %arrayidx3233 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %1448 = load i32, ptr %arrayidx3233, align 4, !tbaa !15
  %add3234 = add i32 %1447, %1448
  %1449 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 8, i64 13), align 1, !tbaa !19
  %idxprom3235 = zext i8 %1449 to i64
  %arrayidx3236 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom3235
  %1450 = load i32, ptr %arrayidx3236, align 4, !tbaa !15
  %add3237 = add i32 %add3234, %1450
  %arrayidx3238 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  store i32 %add3237, ptr %arrayidx3238, align 8, !tbaa !15
  %arrayidx3239 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %1451 = load i32, ptr %arrayidx3239, align 4, !tbaa !15
  %arrayidx3240 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %1452 = load i32, ptr %arrayidx3240, align 8, !tbaa !15
  %xor3241 = xor i32 %1451, %1452
  %call3242 = call i32 @rotr32(i32 noundef %xor3241, i32 noundef 8)
  %arrayidx3243 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  store i32 %call3242, ptr %arrayidx3243, align 4, !tbaa !15
  %arrayidx3244 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %1453 = load i32, ptr %arrayidx3244, align 16, !tbaa !15
  %arrayidx3245 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %1454 = load i32, ptr %arrayidx3245, align 4, !tbaa !15
  %add3246 = add i32 %1453, %1454
  %arrayidx3247 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  store i32 %add3246, ptr %arrayidx3247, align 16, !tbaa !15
  %arrayidx3248 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %1455 = load i32, ptr %arrayidx3248, align 4, !tbaa !15
  %arrayidx3249 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %1456 = load i32, ptr %arrayidx3249, align 16, !tbaa !15
  %xor3250 = xor i32 %1455, %1456
  %call3251 = call i32 @rotr32(i32 noundef %xor3250, i32 noundef 7)
  %arrayidx3252 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  store i32 %call3251, ptr %arrayidx3252, align 4, !tbaa !15
  br label %do.cond3253

do.cond3253:                                      ; preds = %do.body3210
  br label %do.end3254

do.end3254:                                       ; preds = %do.cond3253
  br label %do.body3255

do.body3255:                                      ; preds = %do.end3254
  %arrayidx3256 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %1457 = load i32, ptr %arrayidx3256, align 4, !tbaa !15
  %arrayidx3257 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %1458 = load i32, ptr %arrayidx3257, align 16, !tbaa !15
  %add3258 = add i32 %1457, %1458
  %1459 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 8, i64 14), align 2, !tbaa !19
  %idxprom3259 = zext i8 %1459 to i64
  %arrayidx3260 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom3259
  %1460 = load i32, ptr %arrayidx3260, align 4, !tbaa !15
  %add3261 = add i32 %add3258, %1460
  %arrayidx3262 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  store i32 %add3261, ptr %arrayidx3262, align 4, !tbaa !15
  %arrayidx3263 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %1461 = load i32, ptr %arrayidx3263, align 8, !tbaa !15
  %arrayidx3264 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %1462 = load i32, ptr %arrayidx3264, align 4, !tbaa !15
  %xor3265 = xor i32 %1461, %1462
  %call3266 = call i32 @rotr32(i32 noundef %xor3265, i32 noundef 16)
  %arrayidx3267 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  store i32 %call3266, ptr %arrayidx3267, align 8, !tbaa !15
  %arrayidx3268 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %1463 = load i32, ptr %arrayidx3268, align 4, !tbaa !15
  %arrayidx3269 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %1464 = load i32, ptr %arrayidx3269, align 8, !tbaa !15
  %add3270 = add i32 %1463, %1464
  %arrayidx3271 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  store i32 %add3270, ptr %arrayidx3271, align 4, !tbaa !15
  %arrayidx3272 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %1465 = load i32, ptr %arrayidx3272, align 16, !tbaa !15
  %arrayidx3273 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %1466 = load i32, ptr %arrayidx3273, align 4, !tbaa !15
  %xor3274 = xor i32 %1465, %1466
  %call3275 = call i32 @rotr32(i32 noundef %xor3274, i32 noundef 12)
  %arrayidx3276 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  store i32 %call3275, ptr %arrayidx3276, align 16, !tbaa !15
  %arrayidx3277 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %1467 = load i32, ptr %arrayidx3277, align 4, !tbaa !15
  %arrayidx3278 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %1468 = load i32, ptr %arrayidx3278, align 16, !tbaa !15
  %add3279 = add i32 %1467, %1468
  %1469 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 8, i64 15), align 1, !tbaa !19
  %idxprom3280 = zext i8 %1469 to i64
  %arrayidx3281 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom3280
  %1470 = load i32, ptr %arrayidx3281, align 4, !tbaa !15
  %add3282 = add i32 %add3279, %1470
  %arrayidx3283 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  store i32 %add3282, ptr %arrayidx3283, align 4, !tbaa !15
  %arrayidx3284 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %1471 = load i32, ptr %arrayidx3284, align 8, !tbaa !15
  %arrayidx3285 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %1472 = load i32, ptr %arrayidx3285, align 4, !tbaa !15
  %xor3286 = xor i32 %1471, %1472
  %call3287 = call i32 @rotr32(i32 noundef %xor3286, i32 noundef 8)
  %arrayidx3288 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  store i32 %call3287, ptr %arrayidx3288, align 8, !tbaa !15
  %arrayidx3289 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %1473 = load i32, ptr %arrayidx3289, align 4, !tbaa !15
  %arrayidx3290 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %1474 = load i32, ptr %arrayidx3290, align 8, !tbaa !15
  %add3291 = add i32 %1473, %1474
  %arrayidx3292 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  store i32 %add3291, ptr %arrayidx3292, align 4, !tbaa !15
  %arrayidx3293 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %1475 = load i32, ptr %arrayidx3293, align 16, !tbaa !15
  %arrayidx3294 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %1476 = load i32, ptr %arrayidx3294, align 4, !tbaa !15
  %xor3295 = xor i32 %1475, %1476
  %call3296 = call i32 @rotr32(i32 noundef %xor3295, i32 noundef 7)
  %arrayidx3297 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  store i32 %call3296, ptr %arrayidx3297, align 16, !tbaa !15
  br label %do.cond3298

do.cond3298:                                      ; preds = %do.body3255
  br label %do.end3299

do.end3299:                                       ; preds = %do.cond3298
  br label %do.cond3300

do.cond3300:                                      ; preds = %do.end3299
  br label %do.end3301

do.end3301:                                       ; preds = %do.cond3300
  br label %do.body3302

do.body3302:                                      ; preds = %do.end3301
  br label %do.body3303

do.body3303:                                      ; preds = %do.body3302
  %arrayidx3304 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %1477 = load i32, ptr %arrayidx3304, align 16, !tbaa !15
  %arrayidx3305 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %1478 = load i32, ptr %arrayidx3305, align 16, !tbaa !15
  %add3306 = add i32 %1477, %1478
  %1479 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 9), align 16, !tbaa !19
  %idxprom3307 = zext i8 %1479 to i64
  %arrayidx3308 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom3307
  %1480 = load i32, ptr %arrayidx3308, align 4, !tbaa !15
  %add3309 = add i32 %add3306, %1480
  %arrayidx3310 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  store i32 %add3309, ptr %arrayidx3310, align 16, !tbaa !15
  %arrayidx3311 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %1481 = load i32, ptr %arrayidx3311, align 16, !tbaa !15
  %arrayidx3312 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %1482 = load i32, ptr %arrayidx3312, align 16, !tbaa !15
  %xor3313 = xor i32 %1481, %1482
  %call3314 = call i32 @rotr32(i32 noundef %xor3313, i32 noundef 16)
  %arrayidx3315 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  store i32 %call3314, ptr %arrayidx3315, align 16, !tbaa !15
  %arrayidx3316 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %1483 = load i32, ptr %arrayidx3316, align 16, !tbaa !15
  %arrayidx3317 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %1484 = load i32, ptr %arrayidx3317, align 16, !tbaa !15
  %add3318 = add i32 %1483, %1484
  %arrayidx3319 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  store i32 %add3318, ptr %arrayidx3319, align 16, !tbaa !15
  %arrayidx3320 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %1485 = load i32, ptr %arrayidx3320, align 16, !tbaa !15
  %arrayidx3321 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %1486 = load i32, ptr %arrayidx3321, align 16, !tbaa !15
  %xor3322 = xor i32 %1485, %1486
  %call3323 = call i32 @rotr32(i32 noundef %xor3322, i32 noundef 12)
  %arrayidx3324 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  store i32 %call3323, ptr %arrayidx3324, align 16, !tbaa !15
  %arrayidx3325 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %1487 = load i32, ptr %arrayidx3325, align 16, !tbaa !15
  %arrayidx3326 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %1488 = load i32, ptr %arrayidx3326, align 16, !tbaa !15
  %add3327 = add i32 %1487, %1488
  %1489 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 9, i64 1), align 1, !tbaa !19
  %idxprom3328 = zext i8 %1489 to i64
  %arrayidx3329 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom3328
  %1490 = load i32, ptr %arrayidx3329, align 4, !tbaa !15
  %add3330 = add i32 %add3327, %1490
  %arrayidx3331 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  store i32 %add3330, ptr %arrayidx3331, align 16, !tbaa !15
  %arrayidx3332 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %1491 = load i32, ptr %arrayidx3332, align 16, !tbaa !15
  %arrayidx3333 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %1492 = load i32, ptr %arrayidx3333, align 16, !tbaa !15
  %xor3334 = xor i32 %1491, %1492
  %call3335 = call i32 @rotr32(i32 noundef %xor3334, i32 noundef 8)
  %arrayidx3336 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  store i32 %call3335, ptr %arrayidx3336, align 16, !tbaa !15
  %arrayidx3337 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %1493 = load i32, ptr %arrayidx3337, align 16, !tbaa !15
  %arrayidx3338 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %1494 = load i32, ptr %arrayidx3338, align 16, !tbaa !15
  %add3339 = add i32 %1493, %1494
  %arrayidx3340 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  store i32 %add3339, ptr %arrayidx3340, align 16, !tbaa !15
  %arrayidx3341 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %1495 = load i32, ptr %arrayidx3341, align 16, !tbaa !15
  %arrayidx3342 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %1496 = load i32, ptr %arrayidx3342, align 16, !tbaa !15
  %xor3343 = xor i32 %1495, %1496
  %call3344 = call i32 @rotr32(i32 noundef %xor3343, i32 noundef 7)
  %arrayidx3345 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  store i32 %call3344, ptr %arrayidx3345, align 16, !tbaa !15
  br label %do.cond3346

do.cond3346:                                      ; preds = %do.body3303
  br label %do.end3347

do.end3347:                                       ; preds = %do.cond3346
  br label %do.body3348

do.body3348:                                      ; preds = %do.end3347
  %arrayidx3349 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %1497 = load i32, ptr %arrayidx3349, align 4, !tbaa !15
  %arrayidx3350 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %1498 = load i32, ptr %arrayidx3350, align 4, !tbaa !15
  %add3351 = add i32 %1497, %1498
  %1499 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 9, i64 2), align 2, !tbaa !19
  %idxprom3352 = zext i8 %1499 to i64
  %arrayidx3353 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom3352
  %1500 = load i32, ptr %arrayidx3353, align 4, !tbaa !15
  %add3354 = add i32 %add3351, %1500
  %arrayidx3355 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  store i32 %add3354, ptr %arrayidx3355, align 4, !tbaa !15
  %arrayidx3356 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %1501 = load i32, ptr %arrayidx3356, align 4, !tbaa !15
  %arrayidx3357 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %1502 = load i32, ptr %arrayidx3357, align 4, !tbaa !15
  %xor3358 = xor i32 %1501, %1502
  %call3359 = call i32 @rotr32(i32 noundef %xor3358, i32 noundef 16)
  %arrayidx3360 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  store i32 %call3359, ptr %arrayidx3360, align 4, !tbaa !15
  %arrayidx3361 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %1503 = load i32, ptr %arrayidx3361, align 4, !tbaa !15
  %arrayidx3362 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %1504 = load i32, ptr %arrayidx3362, align 4, !tbaa !15
  %add3363 = add i32 %1503, %1504
  %arrayidx3364 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  store i32 %add3363, ptr %arrayidx3364, align 4, !tbaa !15
  %arrayidx3365 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %1505 = load i32, ptr %arrayidx3365, align 4, !tbaa !15
  %arrayidx3366 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %1506 = load i32, ptr %arrayidx3366, align 4, !tbaa !15
  %xor3367 = xor i32 %1505, %1506
  %call3368 = call i32 @rotr32(i32 noundef %xor3367, i32 noundef 12)
  %arrayidx3369 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  store i32 %call3368, ptr %arrayidx3369, align 4, !tbaa !15
  %arrayidx3370 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %1507 = load i32, ptr %arrayidx3370, align 4, !tbaa !15
  %arrayidx3371 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %1508 = load i32, ptr %arrayidx3371, align 4, !tbaa !15
  %add3372 = add i32 %1507, %1508
  %1509 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 9, i64 3), align 1, !tbaa !19
  %idxprom3373 = zext i8 %1509 to i64
  %arrayidx3374 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom3373
  %1510 = load i32, ptr %arrayidx3374, align 4, !tbaa !15
  %add3375 = add i32 %add3372, %1510
  %arrayidx3376 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  store i32 %add3375, ptr %arrayidx3376, align 4, !tbaa !15
  %arrayidx3377 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %1511 = load i32, ptr %arrayidx3377, align 4, !tbaa !15
  %arrayidx3378 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %1512 = load i32, ptr %arrayidx3378, align 4, !tbaa !15
  %xor3379 = xor i32 %1511, %1512
  %call3380 = call i32 @rotr32(i32 noundef %xor3379, i32 noundef 8)
  %arrayidx3381 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  store i32 %call3380, ptr %arrayidx3381, align 4, !tbaa !15
  %arrayidx3382 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %1513 = load i32, ptr %arrayidx3382, align 4, !tbaa !15
  %arrayidx3383 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %1514 = load i32, ptr %arrayidx3383, align 4, !tbaa !15
  %add3384 = add i32 %1513, %1514
  %arrayidx3385 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  store i32 %add3384, ptr %arrayidx3385, align 4, !tbaa !15
  %arrayidx3386 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %1515 = load i32, ptr %arrayidx3386, align 4, !tbaa !15
  %arrayidx3387 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %1516 = load i32, ptr %arrayidx3387, align 4, !tbaa !15
  %xor3388 = xor i32 %1515, %1516
  %call3389 = call i32 @rotr32(i32 noundef %xor3388, i32 noundef 7)
  %arrayidx3390 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  store i32 %call3389, ptr %arrayidx3390, align 4, !tbaa !15
  br label %do.cond3391

do.cond3391:                                      ; preds = %do.body3348
  br label %do.end3392

do.end3392:                                       ; preds = %do.cond3391
  br label %do.body3393

do.body3393:                                      ; preds = %do.end3392
  %arrayidx3394 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %1517 = load i32, ptr %arrayidx3394, align 8, !tbaa !15
  %arrayidx3395 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %1518 = load i32, ptr %arrayidx3395, align 8, !tbaa !15
  %add3396 = add i32 %1517, %1518
  %1519 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 9, i64 4), align 4, !tbaa !19
  %idxprom3397 = zext i8 %1519 to i64
  %arrayidx3398 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom3397
  %1520 = load i32, ptr %arrayidx3398, align 4, !tbaa !15
  %add3399 = add i32 %add3396, %1520
  %arrayidx3400 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  store i32 %add3399, ptr %arrayidx3400, align 8, !tbaa !15
  %arrayidx3401 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %1521 = load i32, ptr %arrayidx3401, align 8, !tbaa !15
  %arrayidx3402 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %1522 = load i32, ptr %arrayidx3402, align 8, !tbaa !15
  %xor3403 = xor i32 %1521, %1522
  %call3404 = call i32 @rotr32(i32 noundef %xor3403, i32 noundef 16)
  %arrayidx3405 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  store i32 %call3404, ptr %arrayidx3405, align 8, !tbaa !15
  %arrayidx3406 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %1523 = load i32, ptr %arrayidx3406, align 8, !tbaa !15
  %arrayidx3407 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %1524 = load i32, ptr %arrayidx3407, align 8, !tbaa !15
  %add3408 = add i32 %1523, %1524
  %arrayidx3409 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  store i32 %add3408, ptr %arrayidx3409, align 8, !tbaa !15
  %arrayidx3410 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %1525 = load i32, ptr %arrayidx3410, align 8, !tbaa !15
  %arrayidx3411 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %1526 = load i32, ptr %arrayidx3411, align 8, !tbaa !15
  %xor3412 = xor i32 %1525, %1526
  %call3413 = call i32 @rotr32(i32 noundef %xor3412, i32 noundef 12)
  %arrayidx3414 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  store i32 %call3413, ptr %arrayidx3414, align 8, !tbaa !15
  %arrayidx3415 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %1527 = load i32, ptr %arrayidx3415, align 8, !tbaa !15
  %arrayidx3416 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %1528 = load i32, ptr %arrayidx3416, align 8, !tbaa !15
  %add3417 = add i32 %1527, %1528
  %1529 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 9, i64 5), align 1, !tbaa !19
  %idxprom3418 = zext i8 %1529 to i64
  %arrayidx3419 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom3418
  %1530 = load i32, ptr %arrayidx3419, align 4, !tbaa !15
  %add3420 = add i32 %add3417, %1530
  %arrayidx3421 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  store i32 %add3420, ptr %arrayidx3421, align 8, !tbaa !15
  %arrayidx3422 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %1531 = load i32, ptr %arrayidx3422, align 8, !tbaa !15
  %arrayidx3423 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %1532 = load i32, ptr %arrayidx3423, align 8, !tbaa !15
  %xor3424 = xor i32 %1531, %1532
  %call3425 = call i32 @rotr32(i32 noundef %xor3424, i32 noundef 8)
  %arrayidx3426 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  store i32 %call3425, ptr %arrayidx3426, align 8, !tbaa !15
  %arrayidx3427 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %1533 = load i32, ptr %arrayidx3427, align 8, !tbaa !15
  %arrayidx3428 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %1534 = load i32, ptr %arrayidx3428, align 8, !tbaa !15
  %add3429 = add i32 %1533, %1534
  %arrayidx3430 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  store i32 %add3429, ptr %arrayidx3430, align 8, !tbaa !15
  %arrayidx3431 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %1535 = load i32, ptr %arrayidx3431, align 8, !tbaa !15
  %arrayidx3432 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %1536 = load i32, ptr %arrayidx3432, align 8, !tbaa !15
  %xor3433 = xor i32 %1535, %1536
  %call3434 = call i32 @rotr32(i32 noundef %xor3433, i32 noundef 7)
  %arrayidx3435 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  store i32 %call3434, ptr %arrayidx3435, align 8, !tbaa !15
  br label %do.cond3436

do.cond3436:                                      ; preds = %do.body3393
  br label %do.end3437

do.end3437:                                       ; preds = %do.cond3436
  br label %do.body3438

do.body3438:                                      ; preds = %do.end3437
  %arrayidx3439 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %1537 = load i32, ptr %arrayidx3439, align 4, !tbaa !15
  %arrayidx3440 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %1538 = load i32, ptr %arrayidx3440, align 4, !tbaa !15
  %add3441 = add i32 %1537, %1538
  %1539 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 9, i64 6), align 2, !tbaa !19
  %idxprom3442 = zext i8 %1539 to i64
  %arrayidx3443 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom3442
  %1540 = load i32, ptr %arrayidx3443, align 4, !tbaa !15
  %add3444 = add i32 %add3441, %1540
  %arrayidx3445 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  store i32 %add3444, ptr %arrayidx3445, align 4, !tbaa !15
  %arrayidx3446 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %1541 = load i32, ptr %arrayidx3446, align 4, !tbaa !15
  %arrayidx3447 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %1542 = load i32, ptr %arrayidx3447, align 4, !tbaa !15
  %xor3448 = xor i32 %1541, %1542
  %call3449 = call i32 @rotr32(i32 noundef %xor3448, i32 noundef 16)
  %arrayidx3450 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  store i32 %call3449, ptr %arrayidx3450, align 4, !tbaa !15
  %arrayidx3451 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %1543 = load i32, ptr %arrayidx3451, align 4, !tbaa !15
  %arrayidx3452 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %1544 = load i32, ptr %arrayidx3452, align 4, !tbaa !15
  %add3453 = add i32 %1543, %1544
  %arrayidx3454 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  store i32 %add3453, ptr %arrayidx3454, align 4, !tbaa !15
  %arrayidx3455 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %1545 = load i32, ptr %arrayidx3455, align 4, !tbaa !15
  %arrayidx3456 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %1546 = load i32, ptr %arrayidx3456, align 4, !tbaa !15
  %xor3457 = xor i32 %1545, %1546
  %call3458 = call i32 @rotr32(i32 noundef %xor3457, i32 noundef 12)
  %arrayidx3459 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  store i32 %call3458, ptr %arrayidx3459, align 4, !tbaa !15
  %arrayidx3460 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %1547 = load i32, ptr %arrayidx3460, align 4, !tbaa !15
  %arrayidx3461 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %1548 = load i32, ptr %arrayidx3461, align 4, !tbaa !15
  %add3462 = add i32 %1547, %1548
  %1549 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 9, i64 7), align 1, !tbaa !19
  %idxprom3463 = zext i8 %1549 to i64
  %arrayidx3464 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom3463
  %1550 = load i32, ptr %arrayidx3464, align 4, !tbaa !15
  %add3465 = add i32 %add3462, %1550
  %arrayidx3466 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  store i32 %add3465, ptr %arrayidx3466, align 4, !tbaa !15
  %arrayidx3467 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %1551 = load i32, ptr %arrayidx3467, align 4, !tbaa !15
  %arrayidx3468 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %1552 = load i32, ptr %arrayidx3468, align 4, !tbaa !15
  %xor3469 = xor i32 %1551, %1552
  %call3470 = call i32 @rotr32(i32 noundef %xor3469, i32 noundef 8)
  %arrayidx3471 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  store i32 %call3470, ptr %arrayidx3471, align 4, !tbaa !15
  %arrayidx3472 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %1553 = load i32, ptr %arrayidx3472, align 4, !tbaa !15
  %arrayidx3473 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %1554 = load i32, ptr %arrayidx3473, align 4, !tbaa !15
  %add3474 = add i32 %1553, %1554
  %arrayidx3475 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  store i32 %add3474, ptr %arrayidx3475, align 4, !tbaa !15
  %arrayidx3476 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %1555 = load i32, ptr %arrayidx3476, align 4, !tbaa !15
  %arrayidx3477 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %1556 = load i32, ptr %arrayidx3477, align 4, !tbaa !15
  %xor3478 = xor i32 %1555, %1556
  %call3479 = call i32 @rotr32(i32 noundef %xor3478, i32 noundef 7)
  %arrayidx3480 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  store i32 %call3479, ptr %arrayidx3480, align 4, !tbaa !15
  br label %do.cond3481

do.cond3481:                                      ; preds = %do.body3438
  br label %do.end3482

do.end3482:                                       ; preds = %do.cond3481
  br label %do.body3483

do.body3483:                                      ; preds = %do.end3482
  %arrayidx3484 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %1557 = load i32, ptr %arrayidx3484, align 16, !tbaa !15
  %arrayidx3485 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %1558 = load i32, ptr %arrayidx3485, align 4, !tbaa !15
  %add3486 = add i32 %1557, %1558
  %1559 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 9, i64 8), align 8, !tbaa !19
  %idxprom3487 = zext i8 %1559 to i64
  %arrayidx3488 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom3487
  %1560 = load i32, ptr %arrayidx3488, align 4, !tbaa !15
  %add3489 = add i32 %add3486, %1560
  %arrayidx3490 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  store i32 %add3489, ptr %arrayidx3490, align 16, !tbaa !15
  %arrayidx3491 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %1561 = load i32, ptr %arrayidx3491, align 4, !tbaa !15
  %arrayidx3492 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %1562 = load i32, ptr %arrayidx3492, align 16, !tbaa !15
  %xor3493 = xor i32 %1561, %1562
  %call3494 = call i32 @rotr32(i32 noundef %xor3493, i32 noundef 16)
  %arrayidx3495 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  store i32 %call3494, ptr %arrayidx3495, align 4, !tbaa !15
  %arrayidx3496 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %1563 = load i32, ptr %arrayidx3496, align 8, !tbaa !15
  %arrayidx3497 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %1564 = load i32, ptr %arrayidx3497, align 4, !tbaa !15
  %add3498 = add i32 %1563, %1564
  %arrayidx3499 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  store i32 %add3498, ptr %arrayidx3499, align 8, !tbaa !15
  %arrayidx3500 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %1565 = load i32, ptr %arrayidx3500, align 4, !tbaa !15
  %arrayidx3501 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %1566 = load i32, ptr %arrayidx3501, align 8, !tbaa !15
  %xor3502 = xor i32 %1565, %1566
  %call3503 = call i32 @rotr32(i32 noundef %xor3502, i32 noundef 12)
  %arrayidx3504 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  store i32 %call3503, ptr %arrayidx3504, align 4, !tbaa !15
  %arrayidx3505 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %1567 = load i32, ptr %arrayidx3505, align 16, !tbaa !15
  %arrayidx3506 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %1568 = load i32, ptr %arrayidx3506, align 4, !tbaa !15
  %add3507 = add i32 %1567, %1568
  %1569 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 9, i64 9), align 1, !tbaa !19
  %idxprom3508 = zext i8 %1569 to i64
  %arrayidx3509 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom3508
  %1570 = load i32, ptr %arrayidx3509, align 4, !tbaa !15
  %add3510 = add i32 %add3507, %1570
  %arrayidx3511 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  store i32 %add3510, ptr %arrayidx3511, align 16, !tbaa !15
  %arrayidx3512 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %1571 = load i32, ptr %arrayidx3512, align 4, !tbaa !15
  %arrayidx3513 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 0
  %1572 = load i32, ptr %arrayidx3513, align 16, !tbaa !15
  %xor3514 = xor i32 %1571, %1572
  %call3515 = call i32 @rotr32(i32 noundef %xor3514, i32 noundef 8)
  %arrayidx3516 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  store i32 %call3515, ptr %arrayidx3516, align 4, !tbaa !15
  %arrayidx3517 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %1573 = load i32, ptr %arrayidx3517, align 8, !tbaa !15
  %arrayidx3518 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 15
  %1574 = load i32, ptr %arrayidx3518, align 4, !tbaa !15
  %add3519 = add i32 %1573, %1574
  %arrayidx3520 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  store i32 %add3519, ptr %arrayidx3520, align 8, !tbaa !15
  %arrayidx3521 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  %1575 = load i32, ptr %arrayidx3521, align 4, !tbaa !15
  %arrayidx3522 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 10
  %1576 = load i32, ptr %arrayidx3522, align 8, !tbaa !15
  %xor3523 = xor i32 %1575, %1576
  %call3524 = call i32 @rotr32(i32 noundef %xor3523, i32 noundef 7)
  %arrayidx3525 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 5
  store i32 %call3524, ptr %arrayidx3525, align 4, !tbaa !15
  br label %do.cond3526

do.cond3526:                                      ; preds = %do.body3483
  br label %do.end3527

do.end3527:                                       ; preds = %do.cond3526
  br label %do.body3528

do.body3528:                                      ; preds = %do.end3527
  %arrayidx3529 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %1577 = load i32, ptr %arrayidx3529, align 4, !tbaa !15
  %arrayidx3530 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %1578 = load i32, ptr %arrayidx3530, align 8, !tbaa !15
  %add3531 = add i32 %1577, %1578
  %1579 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 9, i64 10), align 2, !tbaa !19
  %idxprom3532 = zext i8 %1579 to i64
  %arrayidx3533 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom3532
  %1580 = load i32, ptr %arrayidx3533, align 4, !tbaa !15
  %add3534 = add i32 %add3531, %1580
  %arrayidx3535 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  store i32 %add3534, ptr %arrayidx3535, align 4, !tbaa !15
  %arrayidx3536 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %1581 = load i32, ptr %arrayidx3536, align 16, !tbaa !15
  %arrayidx3537 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %1582 = load i32, ptr %arrayidx3537, align 4, !tbaa !15
  %xor3538 = xor i32 %1581, %1582
  %call3539 = call i32 @rotr32(i32 noundef %xor3538, i32 noundef 16)
  %arrayidx3540 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  store i32 %call3539, ptr %arrayidx3540, align 16, !tbaa !15
  %arrayidx3541 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %1583 = load i32, ptr %arrayidx3541, align 4, !tbaa !15
  %arrayidx3542 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %1584 = load i32, ptr %arrayidx3542, align 16, !tbaa !15
  %add3543 = add i32 %1583, %1584
  %arrayidx3544 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  store i32 %add3543, ptr %arrayidx3544, align 4, !tbaa !15
  %arrayidx3545 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %1585 = load i32, ptr %arrayidx3545, align 8, !tbaa !15
  %arrayidx3546 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %1586 = load i32, ptr %arrayidx3546, align 4, !tbaa !15
  %xor3547 = xor i32 %1585, %1586
  %call3548 = call i32 @rotr32(i32 noundef %xor3547, i32 noundef 12)
  %arrayidx3549 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  store i32 %call3548, ptr %arrayidx3549, align 8, !tbaa !15
  %arrayidx3550 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %1587 = load i32, ptr %arrayidx3550, align 4, !tbaa !15
  %arrayidx3551 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %1588 = load i32, ptr %arrayidx3551, align 8, !tbaa !15
  %add3552 = add i32 %1587, %1588
  %1589 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 9, i64 11), align 1, !tbaa !19
  %idxprom3553 = zext i8 %1589 to i64
  %arrayidx3554 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom3553
  %1590 = load i32, ptr %arrayidx3554, align 4, !tbaa !15
  %add3555 = add i32 %add3552, %1590
  %arrayidx3556 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  store i32 %add3555, ptr %arrayidx3556, align 4, !tbaa !15
  %arrayidx3557 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %1591 = load i32, ptr %arrayidx3557, align 16, !tbaa !15
  %arrayidx3558 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 1
  %1592 = load i32, ptr %arrayidx3558, align 4, !tbaa !15
  %xor3559 = xor i32 %1591, %1592
  %call3560 = call i32 @rotr32(i32 noundef %xor3559, i32 noundef 8)
  %arrayidx3561 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  store i32 %call3560, ptr %arrayidx3561, align 16, !tbaa !15
  %arrayidx3562 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %1593 = load i32, ptr %arrayidx3562, align 4, !tbaa !15
  %arrayidx3563 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 12
  %1594 = load i32, ptr %arrayidx3563, align 16, !tbaa !15
  %add3564 = add i32 %1593, %1594
  %arrayidx3565 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  store i32 %add3564, ptr %arrayidx3565, align 4, !tbaa !15
  %arrayidx3566 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  %1595 = load i32, ptr %arrayidx3566, align 8, !tbaa !15
  %arrayidx3567 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 11
  %1596 = load i32, ptr %arrayidx3567, align 4, !tbaa !15
  %xor3568 = xor i32 %1595, %1596
  %call3569 = call i32 @rotr32(i32 noundef %xor3568, i32 noundef 7)
  %arrayidx3570 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 6
  store i32 %call3569, ptr %arrayidx3570, align 8, !tbaa !15
  br label %do.cond3571

do.cond3571:                                      ; preds = %do.body3528
  br label %do.end3572

do.end3572:                                       ; preds = %do.cond3571
  br label %do.body3573

do.body3573:                                      ; preds = %do.end3572
  %arrayidx3574 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %1597 = load i32, ptr %arrayidx3574, align 8, !tbaa !15
  %arrayidx3575 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %1598 = load i32, ptr %arrayidx3575, align 4, !tbaa !15
  %add3576 = add i32 %1597, %1598
  %1599 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 9, i64 12), align 4, !tbaa !19
  %idxprom3577 = zext i8 %1599 to i64
  %arrayidx3578 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom3577
  %1600 = load i32, ptr %arrayidx3578, align 4, !tbaa !15
  %add3579 = add i32 %add3576, %1600
  %arrayidx3580 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  store i32 %add3579, ptr %arrayidx3580, align 8, !tbaa !15
  %arrayidx3581 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %1601 = load i32, ptr %arrayidx3581, align 4, !tbaa !15
  %arrayidx3582 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %1602 = load i32, ptr %arrayidx3582, align 8, !tbaa !15
  %xor3583 = xor i32 %1601, %1602
  %call3584 = call i32 @rotr32(i32 noundef %xor3583, i32 noundef 16)
  %arrayidx3585 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  store i32 %call3584, ptr %arrayidx3585, align 4, !tbaa !15
  %arrayidx3586 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %1603 = load i32, ptr %arrayidx3586, align 16, !tbaa !15
  %arrayidx3587 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %1604 = load i32, ptr %arrayidx3587, align 4, !tbaa !15
  %add3588 = add i32 %1603, %1604
  %arrayidx3589 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  store i32 %add3588, ptr %arrayidx3589, align 16, !tbaa !15
  %arrayidx3590 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %1605 = load i32, ptr %arrayidx3590, align 4, !tbaa !15
  %arrayidx3591 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %1606 = load i32, ptr %arrayidx3591, align 16, !tbaa !15
  %xor3592 = xor i32 %1605, %1606
  %call3593 = call i32 @rotr32(i32 noundef %xor3592, i32 noundef 12)
  %arrayidx3594 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  store i32 %call3593, ptr %arrayidx3594, align 4, !tbaa !15
  %arrayidx3595 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %1607 = load i32, ptr %arrayidx3595, align 8, !tbaa !15
  %arrayidx3596 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %1608 = load i32, ptr %arrayidx3596, align 4, !tbaa !15
  %add3597 = add i32 %1607, %1608
  %1609 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 9, i64 13), align 1, !tbaa !19
  %idxprom3598 = zext i8 %1609 to i64
  %arrayidx3599 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom3598
  %1610 = load i32, ptr %arrayidx3599, align 4, !tbaa !15
  %add3600 = add i32 %add3597, %1610
  %arrayidx3601 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  store i32 %add3600, ptr %arrayidx3601, align 8, !tbaa !15
  %arrayidx3602 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %1611 = load i32, ptr %arrayidx3602, align 4, !tbaa !15
  %arrayidx3603 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 2
  %1612 = load i32, ptr %arrayidx3603, align 8, !tbaa !15
  %xor3604 = xor i32 %1611, %1612
  %call3605 = call i32 @rotr32(i32 noundef %xor3604, i32 noundef 8)
  %arrayidx3606 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  store i32 %call3605, ptr %arrayidx3606, align 4, !tbaa !15
  %arrayidx3607 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %1613 = load i32, ptr %arrayidx3607, align 16, !tbaa !15
  %arrayidx3608 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 13
  %1614 = load i32, ptr %arrayidx3608, align 4, !tbaa !15
  %add3609 = add i32 %1613, %1614
  %arrayidx3610 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  store i32 %add3609, ptr %arrayidx3610, align 16, !tbaa !15
  %arrayidx3611 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  %1615 = load i32, ptr %arrayidx3611, align 4, !tbaa !15
  %arrayidx3612 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 8
  %1616 = load i32, ptr %arrayidx3612, align 16, !tbaa !15
  %xor3613 = xor i32 %1615, %1616
  %call3614 = call i32 @rotr32(i32 noundef %xor3613, i32 noundef 7)
  %arrayidx3615 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 7
  store i32 %call3614, ptr %arrayidx3615, align 4, !tbaa !15
  br label %do.cond3616

do.cond3616:                                      ; preds = %do.body3573
  br label %do.end3617

do.end3617:                                       ; preds = %do.cond3616
  br label %do.body3618

do.body3618:                                      ; preds = %do.end3617
  %arrayidx3619 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %1617 = load i32, ptr %arrayidx3619, align 4, !tbaa !15
  %arrayidx3620 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %1618 = load i32, ptr %arrayidx3620, align 16, !tbaa !15
  %add3621 = add i32 %1617, %1618
  %1619 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 9, i64 14), align 2, !tbaa !19
  %idxprom3622 = zext i8 %1619 to i64
  %arrayidx3623 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom3622
  %1620 = load i32, ptr %arrayidx3623, align 4, !tbaa !15
  %add3624 = add i32 %add3621, %1620
  %arrayidx3625 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  store i32 %add3624, ptr %arrayidx3625, align 4, !tbaa !15
  %arrayidx3626 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %1621 = load i32, ptr %arrayidx3626, align 8, !tbaa !15
  %arrayidx3627 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %1622 = load i32, ptr %arrayidx3627, align 4, !tbaa !15
  %xor3628 = xor i32 %1621, %1622
  %call3629 = call i32 @rotr32(i32 noundef %xor3628, i32 noundef 16)
  %arrayidx3630 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  store i32 %call3629, ptr %arrayidx3630, align 8, !tbaa !15
  %arrayidx3631 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %1623 = load i32, ptr %arrayidx3631, align 4, !tbaa !15
  %arrayidx3632 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %1624 = load i32, ptr %arrayidx3632, align 8, !tbaa !15
  %add3633 = add i32 %1623, %1624
  %arrayidx3634 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  store i32 %add3633, ptr %arrayidx3634, align 4, !tbaa !15
  %arrayidx3635 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %1625 = load i32, ptr %arrayidx3635, align 16, !tbaa !15
  %arrayidx3636 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %1626 = load i32, ptr %arrayidx3636, align 4, !tbaa !15
  %xor3637 = xor i32 %1625, %1626
  %call3638 = call i32 @rotr32(i32 noundef %xor3637, i32 noundef 12)
  %arrayidx3639 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  store i32 %call3638, ptr %arrayidx3639, align 16, !tbaa !15
  %arrayidx3640 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %1627 = load i32, ptr %arrayidx3640, align 4, !tbaa !15
  %arrayidx3641 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %1628 = load i32, ptr %arrayidx3641, align 16, !tbaa !15
  %add3642 = add i32 %1627, %1628
  %1629 = load i8, ptr getelementptr inbounds ([10 x [16 x i8]], ptr @blake2s_sigma, i64 0, i64 9, i64 15), align 1, !tbaa !19
  %idxprom3643 = zext i8 %1629 to i64
  %arrayidx3644 = getelementptr inbounds [16 x i32], ptr %m, i64 0, i64 %idxprom3643
  %1630 = load i32, ptr %arrayidx3644, align 4, !tbaa !15
  %add3645 = add i32 %add3642, %1630
  %arrayidx3646 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  store i32 %add3645, ptr %arrayidx3646, align 4, !tbaa !15
  %arrayidx3647 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %1631 = load i32, ptr %arrayidx3647, align 8, !tbaa !15
  %arrayidx3648 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 3
  %1632 = load i32, ptr %arrayidx3648, align 4, !tbaa !15
  %xor3649 = xor i32 %1631, %1632
  %call3650 = call i32 @rotr32(i32 noundef %xor3649, i32 noundef 8)
  %arrayidx3651 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  store i32 %call3650, ptr %arrayidx3651, align 8, !tbaa !15
  %arrayidx3652 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %1633 = load i32, ptr %arrayidx3652, align 4, !tbaa !15
  %arrayidx3653 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 14
  %1634 = load i32, ptr %arrayidx3653, align 8, !tbaa !15
  %add3654 = add i32 %1633, %1634
  %arrayidx3655 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  store i32 %add3654, ptr %arrayidx3655, align 4, !tbaa !15
  %arrayidx3656 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  %1635 = load i32, ptr %arrayidx3656, align 16, !tbaa !15
  %arrayidx3657 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 9
  %1636 = load i32, ptr %arrayidx3657, align 4, !tbaa !15
  %xor3658 = xor i32 %1635, %1636
  %call3659 = call i32 @rotr32(i32 noundef %xor3658, i32 noundef 7)
  %arrayidx3660 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 4
  store i32 %call3659, ptr %arrayidx3660, align 16, !tbaa !15
  br label %do.cond3661

do.cond3661:                                      ; preds = %do.body3618
  br label %do.end3662

do.end3662:                                       ; preds = %do.cond3661
  br label %do.cond3663

do.cond3663:                                      ; preds = %do.end3662
  br label %do.end3664

do.end3664:                                       ; preds = %do.cond3663
  store i64 0, ptr %i, align 8, !tbaa !17
  br label %for.cond3665

for.cond3665:                                     ; preds = %for.inc3678, %do.end3664
  %1637 = load i64, ptr %i, align 8, !tbaa !17
  %cmp3666 = icmp ult i64 %1637, 8
  br i1 %cmp3666, label %for.body3668, label %for.end3680

for.body3668:                                     ; preds = %for.cond3665
  %1638 = load i64, ptr %i, align 8, !tbaa !17
  %add3669 = add i64 %1638, 8
  %arrayidx3670 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 %add3669
  %1639 = load i32, ptr %arrayidx3670, align 4, !tbaa !15
  %1640 = load ptr, ptr %S.addr, align 8, !tbaa !4
  %h3671 = getelementptr inbounds %struct.blake2s_ctx_st, ptr %1640, i32 0, i32 0
  %1641 = load i64, ptr %i, align 8, !tbaa !17
  %arrayidx3672 = getelementptr inbounds [8 x i32], ptr %h3671, i64 0, i64 %1641
  %1642 = load i32, ptr %arrayidx3672, align 4, !tbaa !15
  %xor3673 = xor i32 %1639, %1642
  %1643 = load i64, ptr %i, align 8, !tbaa !17
  %arrayidx3674 = getelementptr inbounds [16 x i32], ptr %v, i64 0, i64 %1643
  %1644 = load i32, ptr %arrayidx3674, align 4, !tbaa !15
  %xor3675 = xor i32 %1644, %xor3673
  store i32 %xor3675, ptr %arrayidx3674, align 4, !tbaa !15
  %1645 = load ptr, ptr %S.addr, align 8, !tbaa !4
  %h3676 = getelementptr inbounds %struct.blake2s_ctx_st, ptr %1645, i32 0, i32 0
  %1646 = load i64, ptr %i, align 8, !tbaa !17
  %arrayidx3677 = getelementptr inbounds [8 x i32], ptr %h3676, i64 0, i64 %1646
  store i32 %xor3675, ptr %arrayidx3677, align 4, !tbaa !15
  br label %for.inc3678

for.inc3678:                                      ; preds = %for.body3668
  %1647 = load i64, ptr %i, align 8, !tbaa !17
  %inc3679 = add i64 %1647, 1
  store i64 %inc3679, ptr %i, align 8, !tbaa !17
  br label %for.cond3665, !llvm.loop !27

for.end3680:                                      ; preds = %for.cond3665
  %1648 = load i64, ptr %increment, align 8, !tbaa !17
  %1649 = load ptr, ptr %blocks.addr, align 8, !tbaa !4
  %add.ptr3681 = getelementptr inbounds i8, ptr %1649, i64 %1648
  store ptr %add.ptr3681, ptr %blocks.addr, align 8, !tbaa !4
  %1650 = load i64, ptr %increment, align 8, !tbaa !17
  %1651 = load i64, ptr %len.addr, align 8, !tbaa !17
  %sub = sub i64 %1651, %1650
  store i64 %sub, ptr %len.addr, align 8, !tbaa !17
  br label %do.cond3682

do.cond3682:                                      ; preds = %for.end3680
  %1652 = load i64, ptr %len.addr, align 8, !tbaa !17
  %tobool = icmp ne i64 %1652, 0
  br i1 %tobool, label %do.body, label %do.end3683, !llvm.loop !28

do.end3683:                                       ; preds = %do.cond3682
  call void @llvm.lifetime.end.p0(i64 8, ptr %increment) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr %v) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr %m) #6
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @ossl_blake2s_final(ptr noundef %md, ptr noundef %c) #0 {
entry:
  %md.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %outbuffer = alloca [32 x i8], align 16
  %target = alloca ptr, align 8
  %iter = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %md, ptr %md.addr, align 8, !tbaa !4
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 32, ptr %outbuffer) #6
  call void @llvm.memset.p0.i64(ptr align 16 %outbuffer, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %target) #6
  %arraydecay = getelementptr inbounds [32 x i8], ptr %outbuffer, i64 0, i64 0
  store ptr %arraydecay, ptr %target, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %iter) #6
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %outlen = getelementptr inbounds %struct.blake2s_ctx_st, ptr %0, i32 0, i32 5
  %1 = load i64, ptr %outlen, align 8, !tbaa !20
  %add = add i64 %1, 3
  %div = udiv i64 %add, 4
  %conv = trunc i64 %div to i32
  store i32 %conv, ptr %iter, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  %2 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %outlen1 = getelementptr inbounds %struct.blake2s_ctx_st, ptr %2, i32 0, i32 5
  %3 = load i64, ptr %outlen1, align 8, !tbaa !20
  %rem = urem i64 %3, 4
  %cmp = icmp eq i64 %rem, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %md.addr, align 8, !tbaa !4
  store ptr %4, ptr %target, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %c.addr, align 8, !tbaa !4
  call void @blake2s_set_lastblock(ptr noundef %5)
  %6 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %buf = getelementptr inbounds %struct.blake2s_ctx_st, ptr %6, i32 0, i32 3
  %arraydecay3 = getelementptr inbounds [64 x i8], ptr %buf, i64 0, i64 0
  %7 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %buflen = getelementptr inbounds %struct.blake2s_ctx_st, ptr %7, i32 0, i32 4
  %8 = load i64, ptr %buflen, align 8, !tbaa !24
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay3, i64 %8
  %9 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %buflen4 = getelementptr inbounds %struct.blake2s_ctx_st, ptr %9, i32 0, i32 4
  %10 = load i64, ptr %buflen4, align 8, !tbaa !24
  %sub = sub i64 64, %10
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr, i8 0, i64 %sub, i1 false)
  %11 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %buf5 = getelementptr inbounds %struct.blake2s_ctx_st, ptr %12, i32 0, i32 3
  %arraydecay6 = getelementptr inbounds [64 x i8], ptr %buf5, i64 0, i64 0
  %13 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %buflen7 = getelementptr inbounds %struct.blake2s_ctx_st, ptr %13, i32 0, i32 4
  %14 = load i64, ptr %buflen7, align 8, !tbaa !24
  call void @blake2s_compress(ptr noundef %11, ptr noundef %arraydecay6, i64 noundef %14)
  store i32 0, ptr %i, align 4, !tbaa !15
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %15 = load i32, ptr %i, align 4, !tbaa !15
  %16 = load i32, ptr %iter, align 4, !tbaa !15
  %cmp8 = icmp slt i32 %15, %16
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %target, align 8, !tbaa !4
  %18 = load i32, ptr %i, align 4, !tbaa !15
  %conv10 = sext i32 %18 to i64
  %mul = mul i64 4, %conv10
  %add.ptr11 = getelementptr inbounds i8, ptr %17, i64 %mul
  %19 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %h = getelementptr inbounds %struct.blake2s_ctx_st, ptr %19, i32 0, i32 0
  %20 = load i32, ptr %i, align 4, !tbaa !15
  %idxprom = sext i32 %20 to i64
  %arrayidx = getelementptr inbounds [8 x i32], ptr %h, i64 0, i64 %idxprom
  %21 = load i32, ptr %arrayidx, align 4, !tbaa !15
  call void @store32(ptr noundef %add.ptr11, i32 noundef %21)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, ptr %i, align 4, !tbaa !15
  %inc = add nsw i32 %22, 1
  store i32 %inc, ptr %i, align 4, !tbaa !15
  br label %for.cond, !llvm.loop !29

for.end:                                          ; preds = %for.cond
  %23 = load ptr, ptr %target, align 8, !tbaa !4
  %24 = load ptr, ptr %md.addr, align 8, !tbaa !4
  %cmp12 = icmp ne ptr %23, %24
  br i1 %cmp12, label %if.then14, label %if.end16

if.then14:                                        ; preds = %for.end
  %25 = load ptr, ptr %md.addr, align 8, !tbaa !4
  %26 = load ptr, ptr %target, align 8, !tbaa !4
  %27 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %outlen15 = getelementptr inbounds %struct.blake2s_ctx_st, ptr %27, i32 0, i32 5
  %28 = load i64, ptr %outlen15, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %25, ptr align 1 %26, i64 %28, i1 false)
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %for.end
  %29 = load ptr, ptr %c.addr, align 8, !tbaa !4
  call void @OPENSSL_cleanse(ptr noundef %29, i64 noundef 128)
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %iter) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %target) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %outbuffer) #6
  ret i32 1
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @blake2s_set_lastblock(ptr noundef %S) #1 {
entry:
  %S.addr = alloca ptr, align 8
  store ptr %S, ptr %S.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %S.addr, align 8, !tbaa !4
  %f = getelementptr inbounds %struct.blake2s_ctx_st, ptr %0, i32 0, i32 2
  %arrayidx = getelementptr inbounds [2 x i32], ptr %f, i64 0, i64 0
  store i32 -1, ptr %arrayidx, align 8, !tbaa !15
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @blake2s_init0(ptr noundef %S) #1 {
entry:
  %S.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %S, ptr %S.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  %0 = load ptr, ptr %S.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 128, i1 false)
  store i32 0, ptr %i, align 4, !tbaa !15
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !tbaa !15
  %cmp = icmp slt i32 %1, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !15
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], ptr @blake2s_IV, i64 0, i64 %idxprom
  %3 = load i32, ptr %arrayidx, align 4, !tbaa !15
  %4 = load ptr, ptr %S.addr, align 8, !tbaa !4
  %h = getelementptr inbounds %struct.blake2s_ctx_st, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %i, align 4, !tbaa !15
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], ptr %h, i64 0, i64 %idxprom1
  store i32 %3, ptr %arrayidx2, align 4, !tbaa !15
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4, !tbaa !15
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4, !tbaa !15
  br label %for.cond, !llvm.loop !30

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @load32(ptr noundef %src) #1 {
entry:
  %src.addr = alloca ptr, align 8
  %ossl_is_little_endian = alloca i32, align 4
  %w = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ossl_is_little_endian) #6
  store i32 1, ptr %ossl_is_little_endian, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 4, ptr %w) #6
  %0 = load ptr, ptr %src.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %w, ptr align 1 %0, i64 4, i1 false)
  %1 = load i32, ptr %w, align 4, !tbaa !15
  call void @llvm.lifetime.end.p0(i64 4, ptr %w) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %ossl_is_little_endian) #6
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @rotr32(i32 noundef %w, i32 noundef %c) #1 {
entry:
  %w.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  store i32 %w, ptr %w.addr, align 4, !tbaa !15
  store i32 %c, ptr %c.addr, align 4, !tbaa !15
  %0 = load i32, ptr %w.addr, align 4, !tbaa !15
  %1 = load i32, ptr %c.addr, align 4, !tbaa !15
  %shr = lshr i32 %0, %1
  %2 = load i32, ptr %w.addr, align 4, !tbaa !15
  %3 = load i32, ptr %c.addr, align 4, !tbaa !15
  %sub = sub i32 32, %3
  %shl = shl i32 %2, %sub
  %or = or i32 %shr, %shl
  ret i32 %or
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !6, i64 0}
!9 = !{!"blake2s_param_st", !6, i64 0, !6, i64 1, !6, i64 2, !6, i64 3, !6, i64 4, !6, i64 8, !6, i64 14, !6, i64 15, !6, i64 16, !6, i64 24}
!10 = !{!9, !6, i64 1}
!11 = !{!9, !6, i64 2}
!12 = !{!9, !6, i64 3}
!13 = !{!9, !6, i64 14}
!14 = !{!9, !6, i64 15}
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !6, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"long", !6, i64 0}
!19 = !{!6, !6, i64 0}
!20 = !{!21, !18, i64 120}
!21 = !{!"blake2s_ctx_st", !6, i64 0, !6, i64 32, !6, i64 40, !6, i64 48, !18, i64 112, !18, i64 120}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!21, !18, i64 112}
!25 = distinct !{!25, !23}
!26 = distinct !{!26, !23}
!27 = distinct !{!27, !23}
!28 = distinct !{!28, !23}
!29 = distinct !{!29, !23}
!30 = distinct !{!30, !23}
