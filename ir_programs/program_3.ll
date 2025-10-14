; ModuleID = 'program_3.bc'
source_filename = "/local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/aws-c-auth/source/signing_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aws_signing_result = type { ptr, %struct.aws_hash_table, %struct.aws_hash_table }
%struct.aws_hash_table = type { ptr }
%struct.aws_signing_result_property = type { ptr, ptr }
%struct.aws_array_list = type { ptr, i64, i64, i64, ptr }
%struct.aws_byte_cursor = type { i64, ptr }
%struct.aws_hash_element = type { ptr, ptr }

@.str = private unnamed_addr constant [19 x i8] c"list != ((void*)0)\00", align 1
@.str.1 = private unnamed_addr constant [214 x i8] c"/local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/aws-c-common/include/aws/common/array_list.inl\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"alloc != ((void*)0)\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"item_size > 0\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"list->current_size == 0 || list->data\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"list->data\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"!list->length || list->data\00", align 1

; Function Attrs: nounwind uwtable
define i32 @aws_signing_result_init(ptr noundef %result, ptr noundef %allocator) #0 {
entry:
  %retval = alloca i32, align 4
  %result.addr = alloca ptr, align 8
  %allocator.addr = alloca ptr, align 8
  store ptr %result, ptr %result.addr, align 8, !tbaa !4
  store ptr %allocator, ptr %allocator.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %result.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 24, i1 false)
  br label %do.end

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %result.addr, align 8, !tbaa !4
  %allocator1 = getelementptr inbounds %struct.aws_signing_result, ptr %2, i32 0, i32 0
  store ptr %1, ptr %allocator1, align 8, !tbaa !8
  %3 = load ptr, ptr %result.addr, align 8, !tbaa !4
  %properties = getelementptr inbounds %struct.aws_signing_result, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call = call i32 @aws_hash_table_init(ptr noundef %properties, ptr noundef %4, i64 noundef 10, ptr noundef @aws_hash_string, ptr noundef @aws_hash_callback_string_eq, ptr noundef @aws_hash_callback_string_destroy, ptr noundef @aws_hash_callback_string_destroy)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %5 = load ptr, ptr %result.addr, align 8, !tbaa !4
  %property_lists = getelementptr inbounds %struct.aws_signing_result, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %allocator.addr, align 8, !tbaa !4
  %call2 = call i32 @aws_hash_table_init(ptr noundef %property_lists, ptr noundef %6, i64 noundef 10, ptr noundef @aws_hash_string, ptr noundef @aws_hash_callback_string_eq, ptr noundef @aws_hash_callback_string_destroy, ptr noundef @s_aws_hash_callback_property_list_destroy)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.end
  br label %on_error

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, ptr %retval, align 4
  br label %return

on_error:                                         ; preds = %if.then
  %7 = load ptr, ptr %result.addr, align 8, !tbaa !4
  call void @aws_signing_result_clean_up(ptr noundef %7)
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %on_error, %if.end
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

declare i32 @aws_hash_table_init(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i64 @aws_hash_string(ptr noundef) #2

declare zeroext i1 @aws_hash_callback_string_eq(ptr noundef, ptr noundef) #2

declare void @aws_hash_callback_string_destroy(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @s_aws_hash_callback_property_list_destroy(ptr noundef %value) #0 {
entry:
  %value.addr = alloca ptr, align 8
  %property_list = alloca ptr, align 8
  %property_count = alloca i64, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %property = alloca %struct.aws_signing_result_property, align 8
  %allocator = alloca ptr, align 8
  store ptr %value, ptr %value.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %property_list) #8
  %0 = load ptr, ptr %value.addr, align 8, !tbaa !4
  store ptr %0, ptr %property_list, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %property_count) #8
  %1 = load ptr, ptr %property_list, align 8, !tbaa !4
  %call = call i64 @aws_array_list_length(ptr noundef %1)
  store i64 %call, ptr %property_count, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #8
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %3 = load i64, ptr %property_count, align 8, !tbaa !11
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #8
  br label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %property) #8
  br label %do.body

do.body:                                          ; preds = %for.body
  call void @llvm.memset.p0.i64(ptr align 8 %property, i8 0, i64 16, i1 false)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %4 = load ptr, ptr %property_list, align 8, !tbaa !4
  %5 = load i64, ptr %i, align 8, !tbaa !11
  %call1 = call i32 @aws_array_list_get_at(ptr noundef %4, ptr noundef %property, i64 noundef %5)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.end
  call void @s_aws_signing_result_property_clean_up(ptr noundef %property)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %property) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %6, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.end:                                          ; preds = %for.cond.cleanup
  call void @llvm.lifetime.start.p0(i64 8, ptr %allocator) #8
  %7 = load ptr, ptr %property_list, align 8, !tbaa !4
  %alloc = getelementptr inbounds %struct.aws_array_list, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %alloc, align 8, !tbaa !13
  store ptr %8, ptr %allocator, align 8, !tbaa !4
  %9 = load ptr, ptr %property_list, align 8, !tbaa !4
  call void @aws_array_list_clean_up(ptr noundef %9)
  %10 = load ptr, ptr %allocator, align 8, !tbaa !4
  %11 = load ptr, ptr %property_list, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %10, ptr noundef %11)
  call void @llvm.lifetime.end.p0(i64 8, ptr %allocator) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %property_count) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %property_list) #8
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define void @aws_signing_result_clean_up(ptr noundef %result) #0 {
entry:
  %result.addr = alloca ptr, align 8
  store ptr %result, ptr %result.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %result.addr, align 8, !tbaa !4
  %properties = getelementptr inbounds %struct.aws_signing_result, ptr %0, i32 0, i32 1
  call void @aws_hash_table_clean_up(ptr noundef %properties)
  %1 = load ptr, ptr %result.addr, align 8, !tbaa !4
  %property_lists = getelementptr inbounds %struct.aws_signing_result, ptr %1, i32 0, i32 2
  call void @aws_hash_table_clean_up(ptr noundef %property_lists)
  ret void
}

declare void @aws_hash_table_clean_up(ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @aws_signing_result_set_property(ptr noundef %result, ptr noundef %property_name, ptr noundef %property_value) #0 {
entry:
  %retval = alloca i32, align 4
  %result.addr = alloca ptr, align 8
  %property_name.addr = alloca ptr, align 8
  %property_value.addr = alloca ptr, align 8
  %name = alloca ptr, align 8
  %value = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %result, ptr %result.addr, align 8, !tbaa !4
  store ptr %property_name, ptr %property_name.addr, align 8, !tbaa !4
  store ptr %property_value, ptr %property_value.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #8
  store ptr null, ptr %name, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #8
  store ptr null, ptr %value, align 8, !tbaa !4
  %0 = load ptr, ptr %result.addr, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_signing_result, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %allocator, align 8, !tbaa !8
  %2 = load ptr, ptr %property_name.addr, align 8, !tbaa !4
  %call = call ptr @aws_string_new_from_string(ptr noundef %1, ptr noundef %2)
  store ptr %call, ptr %name, align 8, !tbaa !4
  %3 = load ptr, ptr %result.addr, align 8, !tbaa !4
  %allocator1 = getelementptr inbounds %struct.aws_signing_result, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %allocator1, align 8, !tbaa !8
  %5 = load ptr, ptr %property_value.addr, align 8, !tbaa !4
  %ptr = getelementptr inbounds %struct.aws_byte_cursor, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %ptr, align 8, !tbaa !15
  %7 = load ptr, ptr %property_value.addr, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.aws_byte_cursor, ptr %7, i32 0, i32 0
  %8 = load i64, ptr %len, align 8, !tbaa !17
  %call2 = call ptr @aws_string_new_from_array(ptr noundef %4, ptr noundef %6, i64 noundef %8)
  store ptr %call2, ptr %value, align 8, !tbaa !4
  %9 = load ptr, ptr %name, align 8, !tbaa !4
  %cmp = icmp eq ptr %9, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %10 = load ptr, ptr %value, align 8, !tbaa !4
  %cmp3 = icmp eq ptr %10, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %on_error

if.end:                                           ; preds = %lor.lhs.false
  %11 = load ptr, ptr %result.addr, align 8, !tbaa !4
  %properties = getelementptr inbounds %struct.aws_signing_result, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %name, align 8, !tbaa !4
  %13 = load ptr, ptr %value, align 8, !tbaa !4
  %call4 = call i32 @aws_hash_table_put(ptr noundef %properties, ptr noundef %12, ptr noundef %13, ptr noundef null)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  br label %on_error

if.end6:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

on_error:                                         ; preds = %if.then5, %if.then
  %14 = load ptr, ptr %name, align 8, !tbaa !4
  call void @aws_string_destroy(ptr noundef %14)
  %15 = load ptr, ptr %value, align 8, !tbaa !4
  call void @aws_string_destroy(ptr noundef %15)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %on_error, %if.end6
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #8
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #3

declare ptr @aws_string_new_from_string(ptr noundef, ptr noundef) #2

declare ptr @aws_string_new_from_array(ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @aws_hash_table_put(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @aws_string_destroy(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define i32 @aws_signing_result_get_property(ptr noundef %result, ptr noundef %property_name, ptr noundef %out_property_value) #0 {
entry:
  %result.addr = alloca ptr, align 8
  %property_name.addr = alloca ptr, align 8
  %out_property_value.addr = alloca ptr, align 8
  %element = alloca ptr, align 8
  store ptr %result, ptr %result.addr, align 8, !tbaa !4
  store ptr %property_name, ptr %property_name.addr, align 8, !tbaa !4
  store ptr %out_property_value, ptr %out_property_value.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %element) #8
  store ptr null, ptr %element, align 8, !tbaa !4
  %0 = load ptr, ptr %result.addr, align 8, !tbaa !4
  %properties = getelementptr inbounds %struct.aws_signing_result, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %property_name.addr, align 8, !tbaa !4
  %call = call i32 @aws_hash_table_find(ptr noundef %properties, ptr noundef %1, ptr noundef %element)
  %2 = load ptr, ptr %out_property_value.addr, align 8, !tbaa !4
  store ptr null, ptr %2, align 8, !tbaa !4
  %3 = load ptr, ptr %element, align 8, !tbaa !4
  %cmp = icmp ne ptr %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %element, align 8, !tbaa !4
  %value = getelementptr inbounds %struct.aws_hash_element, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %value, align 8, !tbaa !18
  %6 = load ptr, ptr %out_property_value.addr, align 8, !tbaa !4
  store ptr %5, ptr %6, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %element) #8
  ret i32 0
}

declare i32 @aws_hash_table_find(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @aws_signing_result_append_property_list(ptr noundef %result, ptr noundef %list_name, ptr noundef %property_name, ptr noundef %property_value) #0 {
entry:
  %retval = alloca i32, align 4
  %result.addr = alloca ptr, align 8
  %list_name.addr = alloca ptr, align 8
  %property_name.addr = alloca ptr, align 8
  %property_value.addr = alloca ptr, align 8
  %properties = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %name = alloca ptr, align 8
  %value = alloca ptr, align 8
  %property = alloca %struct.aws_signing_result_property, align 8
  store ptr %result, ptr %result.addr, align 8, !tbaa !4
  store ptr %list_name, ptr %list_name.addr, align 8, !tbaa !4
  store ptr %property_name, ptr %property_name.addr, align 8, !tbaa !4
  store ptr %property_value, ptr %property_value.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %properties) #8
  %0 = load ptr, ptr %result.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %list_name.addr, align 8, !tbaa !4
  %call = call ptr @s_get_or_create_property_list(ptr noundef %0, ptr noundef %1)
  store ptr %call, ptr %properties, align 8, !tbaa !4
  %2 = load ptr, ptr %properties, align 8, !tbaa !4
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup13

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #8
  store ptr null, ptr %name, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #8
  store ptr null, ptr %value, align 8, !tbaa !4
  %3 = load ptr, ptr %result.addr, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_signing_result, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %allocator, align 8, !tbaa !8
  %5 = load ptr, ptr %property_name.addr, align 8, !tbaa !4
  %ptr = getelementptr inbounds %struct.aws_byte_cursor, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %ptr, align 8, !tbaa !15
  %7 = load ptr, ptr %property_name.addr, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.aws_byte_cursor, ptr %7, i32 0, i32 0
  %8 = load i64, ptr %len, align 8, !tbaa !17
  %call1 = call ptr @aws_string_new_from_array(ptr noundef %4, ptr noundef %6, i64 noundef %8)
  store ptr %call1, ptr %name, align 8, !tbaa !4
  %9 = load ptr, ptr %result.addr, align 8, !tbaa !4
  %allocator2 = getelementptr inbounds %struct.aws_signing_result, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %allocator2, align 8, !tbaa !8
  %11 = load ptr, ptr %property_value.addr, align 8, !tbaa !4
  %ptr3 = getelementptr inbounds %struct.aws_byte_cursor, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %ptr3, align 8, !tbaa !15
  %13 = load ptr, ptr %property_value.addr, align 8, !tbaa !4
  %len4 = getelementptr inbounds %struct.aws_byte_cursor, ptr %13, i32 0, i32 0
  %14 = load i64, ptr %len4, align 8, !tbaa !17
  %call5 = call ptr @aws_string_new_from_array(ptr noundef %10, ptr noundef %12, i64 noundef %14)
  store ptr %call5, ptr %value, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 16, ptr %property) #8
  %15 = load ptr, ptr %name, align 8, !tbaa !4
  %name6 = getelementptr inbounds %struct.aws_signing_result_property, ptr %property, i32 0, i32 0
  store ptr %15, ptr %name6, align 8, !tbaa !20
  %16 = load ptr, ptr %value, align 8, !tbaa !4
  %value7 = getelementptr inbounds %struct.aws_signing_result_property, ptr %property, i32 0, i32 1
  store ptr %16, ptr %value7, align 8, !tbaa !22
  %17 = load ptr, ptr %properties, align 8, !tbaa !4
  %call8 = call i32 @aws_array_list_push_back(ptr noundef %17, ptr noundef %property)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  br label %on_error

if.end10:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

on_error:                                         ; preds = %if.then9
  %18 = load ptr, ptr %name, align 8, !tbaa !4
  call void @aws_string_destroy(ptr noundef %18)
  %19 = load ptr, ptr %value, align 8, !tbaa !4
  call void @aws_string_destroy(ptr noundef %19)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %on_error, %if.end10
  call void @llvm.lifetime.end.p0(i64 16, ptr %property) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #8
  br label %cleanup13

cleanup13:                                        ; preds = %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %properties) #8
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal ptr @s_get_or_create_property_list(ptr noundef %result, ptr noundef %list_name) #0 {
entry:
  %retval = alloca ptr, align 8
  %result.addr = alloca ptr, align 8
  %list_name.addr = alloca ptr, align 8
  %element = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %properties = alloca ptr, align 8
  %name_copy = alloca ptr, align 8
  store ptr %result, ptr %result.addr, align 8, !tbaa !4
  store ptr %list_name, ptr %list_name.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %element) #8
  store ptr null, ptr %element, align 8, !tbaa !4
  %0 = load ptr, ptr %result.addr, align 8, !tbaa !4
  %property_lists = getelementptr inbounds %struct.aws_signing_result, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %list_name.addr, align 8, !tbaa !4
  %call = call i32 @aws_hash_table_find(ptr noundef %property_lists, ptr noundef %1, ptr noundef %element)
  %2 = load ptr, ptr %element, align 8, !tbaa !4
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %element, align 8, !tbaa !4
  %value = getelementptr inbounds %struct.aws_hash_element, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %value, align 8, !tbaa !18
  store ptr %4, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup21

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %properties) #8
  %5 = load ptr, ptr %result.addr, align 8, !tbaa !4
  %allocator = getelementptr inbounds %struct.aws_signing_result, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %allocator, align 8, !tbaa !8
  %call1 = call ptr @aws_mem_acquire(ptr noundef %6, i64 noundef 40)
  store ptr %call1, ptr %properties, align 8, !tbaa !4
  %7 = load ptr, ptr %properties, align 8, !tbaa !4
  %cmp2 = icmp eq ptr %7, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup20

if.end4:                                          ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end4
  %8 = load ptr, ptr %properties, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %8, i8 0, i64 40, i1 false)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %name_copy) #8
  %9 = load ptr, ptr %result.addr, align 8, !tbaa !4
  %allocator5 = getelementptr inbounds %struct.aws_signing_result, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %allocator5, align 8, !tbaa !8
  %11 = load ptr, ptr %list_name.addr, align 8, !tbaa !4
  %call6 = call ptr @aws_string_new_from_string(ptr noundef %10, ptr noundef %11)
  store ptr %call6, ptr %name_copy, align 8, !tbaa !4
  %12 = load ptr, ptr %name_copy, align 8, !tbaa !4
  %cmp7 = icmp eq ptr %12, null
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %do.end
  br label %on_error

if.end9:                                          ; preds = %do.end
  %13 = load ptr, ptr %properties, align 8, !tbaa !4
  %14 = load ptr, ptr %result.addr, align 8, !tbaa !4
  %allocator10 = getelementptr inbounds %struct.aws_signing_result, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %allocator10, align 8, !tbaa !8
  %call11 = call i32 @aws_array_list_init_dynamic(ptr noundef %13, ptr noundef %15, i64 noundef 10, i64 noundef 16)
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  br label %on_error

if.end13:                                         ; preds = %if.end9
  %16 = load ptr, ptr %result.addr, align 8, !tbaa !4
  %property_lists14 = getelementptr inbounds %struct.aws_signing_result, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %name_copy, align 8, !tbaa !4
  %18 = load ptr, ptr %properties, align 8, !tbaa !4
  %call15 = call i32 @aws_hash_table_put(ptr noundef %property_lists14, ptr noundef %17, ptr noundef %18, ptr noundef null)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end13
  br label %on_error

if.end18:                                         ; preds = %if.end13
  %19 = load ptr, ptr %properties, align 8, !tbaa !4
  store ptr %19, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

on_error:                                         ; preds = %if.then17, %if.then12, %if.then8
  %20 = load ptr, ptr %name_copy, align 8, !tbaa !4
  call void @aws_string_destroy(ptr noundef %20)
  %21 = load ptr, ptr %properties, align 8, !tbaa !4
  call void @aws_array_list_clean_up(ptr noundef %21)
  %22 = load ptr, ptr %result.addr, align 8, !tbaa !4
  %allocator19 = getelementptr inbounds %struct.aws_signing_result, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %allocator19, align 8, !tbaa !8
  %24 = load ptr, ptr %properties, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %23, ptr noundef %24)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %on_error, %if.end18
  call void @llvm.lifetime.end.p0(i64 8, ptr %name_copy) #8
  br label %cleanup20

cleanup20:                                        ; preds = %cleanup, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %properties) #8
  br label %cleanup21

cleanup21:                                        ; preds = %cleanup20, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %element) #8
  %25 = load ptr, ptr %retval, align 8
  ret ptr %25
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_array_list_push_back(ptr noalias noundef %list, ptr noundef %val) #4 {
entry:
  %retval = alloca i32, align 4
  %list.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %err_code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %list, ptr %list.addr, align 8, !tbaa !4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %err_code) #8
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %val.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %call = call i64 @aws_array_list_length(ptr noundef %2)
  %call1 = call i32 @aws_array_list_set_at(ptr noundef %0, ptr noundef %1, i64 noundef %call)
  store i32 %call1, ptr %err_code, align 4, !tbaa !23
  %3 = load i32, ptr %err_code, align 4, !tbaa !23
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call2 = call i32 @aws_last_error()
  %cmp = icmp eq i32 %call2, 10
  br i1 %cmp, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %alloc = getelementptr inbounds %struct.aws_array_list, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %alloc, align 8, !tbaa !13
  %tobool4 = icmp ne ptr %5, null
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true3
  %call5 = call i32 @aws_raise_error(i32 noundef 27)
  store i32 %call5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true3, %land.lhs.true, %entry
  %6 = load i32, ptr %err_code, align 4, !tbaa !23
  store i32 %6, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err_code) #8
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define void @aws_signing_result_get_property_list(ptr noundef %result, ptr noundef %list_name, ptr noundef %out_list) #0 {
entry:
  %result.addr = alloca ptr, align 8
  %list_name.addr = alloca ptr, align 8
  %out_list.addr = alloca ptr, align 8
  %element = alloca ptr, align 8
  store ptr %result, ptr %result.addr, align 8, !tbaa !4
  store ptr %list_name, ptr %list_name.addr, align 8, !tbaa !4
  store ptr %out_list, ptr %out_list.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %out_list.addr, align 8, !tbaa !4
  store ptr null, ptr %0, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %element) #8
  store ptr null, ptr %element, align 8, !tbaa !4
  %1 = load ptr, ptr %result.addr, align 8, !tbaa !4
  %property_lists = getelementptr inbounds %struct.aws_signing_result, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %list_name.addr, align 8, !tbaa !4
  %call = call i32 @aws_hash_table_find(ptr noundef %property_lists, ptr noundef %2, ptr noundef %element)
  %3 = load ptr, ptr %element, align 8, !tbaa !4
  %cmp = icmp ne ptr %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %element, align 8, !tbaa !4
  %value = getelementptr inbounds %struct.aws_hash_element, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %value, align 8, !tbaa !18
  %6 = load ptr, ptr %out_list.addr, align 8, !tbaa !4
  store ptr %5, ptr %6, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %element) #8
  ret void
}

; Function Attrs: nounwind uwtable
define void @aws_signing_result_get_property_value_in_property_list(ptr noundef %result, ptr noundef %list_name, ptr noundef %property_name, ptr noundef %out_value) #0 {
entry:
  %result.addr = alloca ptr, align 8
  %list_name.addr = alloca ptr, align 8
  %property_name.addr = alloca ptr, align 8
  %out_value.addr = alloca ptr, align 8
  %property_list = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %pair_count = alloca i64, align 8
  %i = alloca i64, align 8
  %pair = alloca %struct.aws_signing_result_property, align 8
  store ptr %result, ptr %result.addr, align 8, !tbaa !4
  store ptr %list_name, ptr %list_name.addr, align 8, !tbaa !4
  store ptr %property_name, ptr %property_name.addr, align 8, !tbaa !4
  store ptr %out_value, ptr %out_value.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %out_value.addr, align 8, !tbaa !4
  store ptr null, ptr %0, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %property_list) #8
  store ptr null, ptr %property_list, align 8, !tbaa !4
  %1 = load ptr, ptr %result.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %list_name.addr, align 8, !tbaa !4
  call void @aws_signing_result_get_property_list(ptr noundef %1, ptr noundef %2, ptr noundef %property_list)
  %3 = load ptr, ptr %property_list, align 8, !tbaa !4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup13

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %pair_count) #8
  %4 = load ptr, ptr %property_list, align 8, !tbaa !4
  %call = call i64 @aws_array_list_length(ptr noundef %4)
  store i64 %call, ptr %pair_count, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #8
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i64, ptr %i, align 8, !tbaa !11
  %6 = load i64, ptr %pair_count, align 8, !tbaa !11
  %cmp1 = icmp ult i64 %5, %6
  br i1 %cmp1, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup12

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %pair) #8
  br label %do.body

do.body:                                          ; preds = %for.body
  call void @llvm.memset.p0.i64(ptr align 8 %pair, i8 0, i64 16, i1 false)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %7 = load ptr, ptr %property_list, align 8, !tbaa !4
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %call2 = call i32 @aws_array_list_get_at(ptr noundef %7, ptr noundef %pair, i64 noundef %8)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then3, label %if.end4

if.then3:                                         ; preds = %do.end
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %do.end
  %name = getelementptr inbounds %struct.aws_signing_result_property, ptr %pair, i32 0, i32 0
  %9 = load ptr, ptr %name, align 8, !tbaa !20
  %cmp5 = icmp eq ptr %9, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %10 = load ptr, ptr %property_name.addr, align 8, !tbaa !4
  %name8 = getelementptr inbounds %struct.aws_signing_result_property, ptr %pair, i32 0, i32 0
  %11 = load ptr, ptr %name8, align 8, !tbaa !20
  %call9 = call zeroext i1 @aws_string_eq_ignore_case(ptr noundef %10, ptr noundef %11)
  br i1 %call9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  %value = getelementptr inbounds %struct.aws_signing_result_property, ptr %pair, i32 0, i32 1
  %12 = load ptr, ptr %value, align 8, !tbaa !22
  %13 = load ptr, ptr %out_value.addr, align 8, !tbaa !4
  store ptr %12, ptr %13, align 8, !tbaa !4
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then10, %if.then6, %if.then3
  call void @llvm.lifetime.end.p0(i64 16, ptr %pair) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup12 [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %14 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %14, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup12:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #8
  br label %for.end

for.end:                                          ; preds = %cleanup12
  call void @llvm.lifetime.end.p0(i64 8, ptr %pair_count) #8
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup13

cleanup13:                                        ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %property_list) #8
  %cleanup.dest14 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest14, label %unreachable [
    i32 0, label %cleanup.cont15
    i32 1, label %cleanup.cont15
  ]

cleanup.cont15:                                   ; preds = %cleanup13, %cleanup13
  ret void

unreachable:                                      ; preds = %cleanup13
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @aws_array_list_length(ptr noalias noundef %list) #4 {
entry:
  %list.addr = alloca ptr, align 8
  %len = alloca i64, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.aws_array_list, ptr %0, i32 0, i32 2
  %1 = load i64, ptr %length, align 8, !tbaa !25
  %tobool = icmp ne i64 %1, 0
  br i1 %tobool, label %lor.lhs.false, label %if.end

lor.lhs.false:                                    ; preds = %do.body
  %2 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.aws_array_list, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %data, align 8, !tbaa !26
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  call void @aws_fatal_assert(ptr noundef @.str.6, ptr noundef @.str.1, i32 noundef 342) #9
  unreachable

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #8
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %length2 = getelementptr inbounds %struct.aws_array_list, ptr %4, i32 0, i32 2
  %5 = load i64, ptr %length2, align 8, !tbaa !25
  store i64 %5, ptr %len, align 8, !tbaa !11
  %6 = load i64, ptr %len, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #8
  ret i64 %6
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_array_list_get_at(ptr noalias noundef %list, ptr noundef %val, i64 noundef %index) #4 {
entry:
  %retval = alloca i32, align 4
  %list.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %index.addr = alloca i64, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  store i64 %index, ptr %index.addr, align 8, !tbaa !11
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %call = call i64 @aws_array_list_length(ptr noundef %0)
  %1 = load i64, ptr %index.addr, align 8, !tbaa !11
  %cmp = icmp ugt i64 %call, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %val.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.aws_array_list, ptr %3, i32 0, i32 4
  %4 = load ptr, ptr %data, align 8, !tbaa !26
  %5 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %item_size = getelementptr inbounds %struct.aws_array_list, ptr %5, i32 0, i32 3
  %6 = load i64, ptr %item_size, align 8, !tbaa !27
  %7 = load i64, ptr %index.addr, align 8, !tbaa !11
  %mul = mul i64 %6, %7
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 %mul
  %8 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %item_size1 = getelementptr inbounds %struct.aws_array_list, ptr %8, i32 0, i32 3
  %9 = load i64, ptr %item_size1, align 8, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %add.ptr, i64 %9, i1 false)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i32 @aws_raise_error(i32 noundef 10)
  store i32 %call2, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

declare zeroext i1 @aws_string_eq_ignore_case(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @s_aws_signing_result_property_clean_up(ptr noundef %pair) #0 {
entry:
  %pair.addr = alloca ptr, align 8
  store ptr %pair, ptr %pair.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %pair.addr, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.aws_signing_result_property, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %name, align 8, !tbaa !20
  call void @aws_string_destroy(ptr noundef %1)
  %2 = load ptr, ptr %pair.addr, align 8, !tbaa !4
  %value = getelementptr inbounds %struct.aws_signing_result_property, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %value, align 8, !tbaa !22
  call void @aws_string_destroy(ptr noundef %3)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @aws_array_list_clean_up(ptr noalias noundef %list) #4 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %alloc = getelementptr inbounds %struct.aws_array_list, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %alloc, align 8, !tbaa !13
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.aws_array_list, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %data, align 8, !tbaa !26
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %alloc2 = getelementptr inbounds %struct.aws_array_list, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %alloc2, align 8, !tbaa !13
  %6 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data3 = getelementptr inbounds %struct.aws_array_list, ptr %6, i32 0, i32 4
  %7 = load ptr, ptr %data3, align 8, !tbaa !26
  call void @aws_mem_release(ptr noundef %5, ptr noundef %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %8 = load ptr, ptr %list.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %8, i8 0, i64 40, i1 false)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

declare void @aws_mem_release(ptr noundef, ptr noundef) #2

declare ptr @aws_mem_acquire(ptr noundef, i64 noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_array_list_init_dynamic(ptr noalias noundef %list, ptr noundef %alloc, i64 noundef %initial_item_allocation, i64 noundef %item_size) #4 {
entry:
  %retval = alloca i32, align 4
  %list.addr = alloca ptr, align 8
  %alloc.addr = alloca ptr, align 8
  %initial_item_allocation.addr = alloca i64, align 8
  %item_size.addr = alloca i64, align 8
  %allocation_size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %list, ptr %list.addr, align 8, !tbaa !4
  store ptr %alloc, ptr %alloc.addr, align 8, !tbaa !4
  store i64 %initial_item_allocation, ptr %initial_item_allocation.addr, align 8, !tbaa !11
  store i64 %item_size, ptr %item_size.addr, align 8, !tbaa !11
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  call void @aws_fatal_assert(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 24) #9
  unreachable

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body1

do.body1:                                         ; preds = %do.end
  %1 = load ptr, ptr %alloc.addr, align 8, !tbaa !4
  %cmp2 = icmp ne ptr %1, null
  br i1 %cmp2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %do.body1
  call void @aws_fatal_assert(ptr noundef @.str.2, ptr noundef @.str.1, i32 noundef 25) #9
  unreachable

if.end4:                                          ; preds = %do.body1
  br label %do.end5

do.end5:                                          ; preds = %if.end4
  br label %do.body6

do.body6:                                         ; preds = %do.end5
  %2 = load i64, ptr %item_size.addr, align 8, !tbaa !11
  %cmp7 = icmp ugt i64 %2, 0
  br i1 %cmp7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %do.body6
  call void @aws_fatal_assert(ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 26) #9
  unreachable

if.end9:                                          ; preds = %do.body6
  br label %do.end10

do.end10:                                         ; preds = %if.end9
  br label %do.body11

do.body11:                                        ; preds = %do.end10
  %3 = load ptr, ptr %list.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 40, i1 false)
  br label %do.end12

do.end12:                                         ; preds = %do.body11
  call void @llvm.lifetime.start.p0(i64 8, ptr %allocation_size) #8
  store i64 0, ptr %allocation_size, align 8, !tbaa !11
  %4 = load i64, ptr %initial_item_allocation.addr, align 8, !tbaa !11
  %5 = load i64, ptr %item_size.addr, align 8, !tbaa !11
  %call = call i32 @aws_mul_size_checked(i64 noundef %4, i64 noundef %5, ptr noundef %allocation_size)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then13, label %if.end14

if.then13:                                        ; preds = %do.end12
  br label %error

if.end14:                                         ; preds = %do.end12
  %6 = load i64, ptr %allocation_size, align 8, !tbaa !11
  %cmp15 = icmp ugt i64 %6, 0
  br i1 %cmp15, label %if.then16, label %if.end22

if.then16:                                        ; preds = %if.end14
  %7 = load ptr, ptr %alloc.addr, align 8, !tbaa !4
  %8 = load i64, ptr %allocation_size, align 8, !tbaa !11
  %call17 = call ptr @aws_mem_acquire(ptr noundef %7, i64 noundef %8)
  %9 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.aws_array_list, ptr %9, i32 0, i32 4
  store ptr %call17, ptr %data, align 8, !tbaa !26
  %10 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data18 = getelementptr inbounds %struct.aws_array_list, ptr %10, i32 0, i32 4
  %11 = load ptr, ptr %data18, align 8, !tbaa !26
  %tobool19 = icmp ne ptr %11, null
  br i1 %tobool19, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.then16
  br label %error

if.end21:                                         ; preds = %if.then16
  %12 = load i64, ptr %allocation_size, align 8, !tbaa !11
  %13 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %current_size = getelementptr inbounds %struct.aws_array_list, ptr %13, i32 0, i32 1
  store i64 %12, ptr %current_size, align 8, !tbaa !28
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.end14
  %14 = load i64, ptr %item_size.addr, align 8, !tbaa !11
  %15 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %item_size23 = getelementptr inbounds %struct.aws_array_list, ptr %15, i32 0, i32 3
  store i64 %14, ptr %item_size23, align 8, !tbaa !27
  %16 = load ptr, ptr %alloc.addr, align 8, !tbaa !4
  %17 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %alloc24 = getelementptr inbounds %struct.aws_array_list, ptr %17, i32 0, i32 0
  store ptr %16, ptr %alloc24, align 8, !tbaa !13
  br label %do.body25

do.body25:                                        ; preds = %if.end22
  %18 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %current_size26 = getelementptr inbounds %struct.aws_array_list, ptr %18, i32 0, i32 1
  %19 = load i64, ptr %current_size26, align 8, !tbaa !28
  %cmp27 = icmp eq i64 %19, 0
  br i1 %cmp27, label %if.end31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body25
  %20 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data28 = getelementptr inbounds %struct.aws_array_list, ptr %20, i32 0, i32 4
  %21 = load ptr, ptr %data28, align 8, !tbaa !26
  %tobool29 = icmp ne ptr %21, null
  br i1 %tobool29, label %if.end31, label %if.then30

if.then30:                                        ; preds = %lor.lhs.false
  call void @aws_fatal_assert(ptr noundef @.str.4, ptr noundef @.str.1, i32 noundef 49) #9
  unreachable

if.end31:                                         ; preds = %lor.lhs.false, %do.body25
  br label %do.cond

do.cond:                                          ; preds = %if.end31
  br label %do.end32

do.end32:                                         ; preds = %do.cond
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

error:                                            ; preds = %if.then20, %if.then13
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %error, %do.end32
  call void @llvm.lifetime.end.p0(i64 8, ptr %allocation_size) #8
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

; Function Attrs: noreturn
declare void @aws_fatal_assert(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_mul_size_checked(i64 noundef %a, i64 noundef %b, ptr noundef %r) #4 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !11
  store i64 %b, ptr %b.addr, align 8, !tbaa !11
  store ptr %r, ptr %r.addr, align 8, !tbaa !4
  %0 = load i64, ptr %a.addr, align 8, !tbaa !11
  %1 = load i64, ptr %b.addr, align 8, !tbaa !11
  %2 = load ptr, ptr %r.addr, align 8, !tbaa !4
  %call = call i32 @aws_mul_u64_checked(i64 noundef %0, i64 noundef %1, ptr noundef %2)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_mul_u64_checked(i64 noundef %a, i64 noundef %b, ptr noundef %r) #4 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !11
  store i64 %b, ptr %b.addr, align 8, !tbaa !11
  store ptr %r, ptr %r.addr, align 8, !tbaa !4
  %0 = load i64, ptr %a.addr, align 8, !tbaa !11
  %1 = load i64, ptr %b.addr, align 8, !tbaa !11
  %2 = load ptr, ptr %r.addr, align 8, !tbaa !4
  %3 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1)
  %4 = extractvalue { i64, i1 } %3, 1
  %5 = extractvalue { i64, i1 } %3, 0
  store i64 %5, ptr %2, align 8
  br i1 %4, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @aws_raise_error(i32 noundef 5)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #6

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_raise_error(i32 noundef %err) #4 {
entry:
  %err.addr = alloca i32, align 4
  store i32 %err, ptr %err.addr, align 4, !tbaa !23
  %0 = load i32, ptr %err.addr, align 4, !tbaa !23
  call void @aws_raise_error_private(i32 noundef %0)
  ret i32 -1
}

declare void @aws_raise_error_private(i32 noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_array_list_set_at(ptr noalias noundef %list, ptr noundef %val, i64 noundef %index) #4 {
entry:
  %retval = alloca i32, align 4
  %list.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %index.addr = alloca i64, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  store i64 %index, ptr %index.addr, align 8, !tbaa !11
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %1 = load i64, ptr %index.addr, align 8, !tbaa !11
  %call = call i32 @aws_array_list_ensure_capacity(ptr noundef %0, i64 noundef %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %2 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.aws_array_list, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %data, align 8, !tbaa !26
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %do.body
  call void @aws_fatal_assert(ptr noundef @.str.5, ptr noundef @.str.1, i32 noundef 389) #9
  unreachable

if.end3:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end3
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %data4 = getelementptr inbounds %struct.aws_array_list, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %data4, align 8, !tbaa !26
  %6 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %item_size = getelementptr inbounds %struct.aws_array_list, ptr %6, i32 0, i32 3
  %7 = load i64, ptr %item_size, align 8, !tbaa !27
  %8 = load i64, ptr %index.addr, align 8, !tbaa !11
  %mul = mul i64 %7, %8
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 %mul
  %9 = load ptr, ptr %val.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %item_size5 = getelementptr inbounds %struct.aws_array_list, ptr %10, i32 0, i32 3
  %11 = load i64, ptr %item_size5, align 8, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %9, i64 %11, i1 false)
  %12 = load i64, ptr %index.addr, align 8, !tbaa !11
  %13 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %call6 = call i64 @aws_array_list_length(ptr noundef %13)
  %cmp = icmp uge i64 %12, %call6
  br i1 %cmp, label %if.then7, label %if.end12

if.then7:                                         ; preds = %do.end
  %14 = load i64, ptr %index.addr, align 8, !tbaa !11
  %15 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.aws_array_list, ptr %15, i32 0, i32 2
  %call8 = call i32 @aws_add_size_checked(i64 noundef %14, i64 noundef 1, ptr noundef %length)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.then7
  store i32 -1, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.then7
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %do.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end12, %if.then10, %if.then
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

declare i32 @aws_last_error() #2

declare i32 @aws_array_list_ensure_capacity(ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_add_size_checked(i64 noundef %a, i64 noundef %b, ptr noundef %r) #4 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !11
  store i64 %b, ptr %b.addr, align 8, !tbaa !11
  store ptr %r, ptr %r.addr, align 8, !tbaa !4
  %0 = load i64, ptr %a.addr, align 8, !tbaa !11
  %1 = load i64, ptr %b.addr, align 8, !tbaa !11
  %2 = load ptr, ptr %r.addr, align 8, !tbaa !4
  %call = call i32 @aws_add_u64_checked(i64 noundef %0, i64 noundef %1, ptr noundef %2)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_add_u64_checked(i64 noundef %a, i64 noundef %b, ptr noundef %r) #4 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !11
  store i64 %b, ptr %b.addr, align 8, !tbaa !11
  store ptr %r, ptr %r.addr, align 8, !tbaa !4
  %0 = load i64, ptr %a.addr, align 8, !tbaa !11
  %1 = load i64, ptr %b.addr, align 8, !tbaa !11
  %2 = load ptr, ptr %r.addr, align 8, !tbaa !4
  %3 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %0, i64 %1)
  %4 = extractvalue { i64, i1 } %3, 1
  %5 = extractvalue { i64, i1 } %3, 0
  store i64 %5, ptr %2, align 8
  br i1 %4, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @aws_raise_error(i32 noundef 5)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind }
attributes #9 = { noreturn }

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
!8 = !{!9, !5, i64 0}
!9 = !{!"aws_signing_result", !5, i64 0, !10, i64 8, !10, i64 16}
!10 = !{!"aws_hash_table", !5, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!14, !5, i64 0}
!14 = !{!"aws_array_list", !5, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !5, i64 32}
!15 = !{!16, !5, i64 8}
!16 = !{!"aws_byte_cursor", !12, i64 0, !5, i64 8}
!17 = !{!16, !12, i64 0}
!18 = !{!19, !5, i64 8}
!19 = !{!"aws_hash_element", !5, i64 0, !5, i64 8}
!20 = !{!21, !5, i64 0}
!21 = !{!"aws_signing_result_property", !5, i64 0, !5, i64 8}
!22 = !{!21, !5, i64 8}
!23 = !{!24, !24, i64 0}
!24 = !{!"int", !6, i64 0}
!25 = !{!14, !12, i64 16}
!26 = !{!14, !5, i64 32}
!27 = !{!14, !12, i64 24}
!28 = !{!14, !12, i64 8}
