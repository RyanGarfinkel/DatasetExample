; ModuleID = 'program_5.bc'
source_filename = "../ngx_lua-0.10.15/src/ngx_http_lua_ssl_session_storeby.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngx_module_s = type { i64, i64, ptr, i64, i64, i64, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ngx_http_request_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ngx_http_headers_in_t, %struct.ngx_http_headers_out_t, ptr, i64, i64, i64, i64, i64, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr, i112, i64, i64, i64, [32 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.ngx_http_headers_in_t = type { %struct.ngx_list_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ngx_array_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_array_t, %struct.ngx_str_t, i64, i64, i16 }
%struct.ngx_list_t = type { ptr, %struct.ngx_list_part_s, i64, i64, ptr }
%struct.ngx_list_part_s = type { ptr, i64, ptr }
%struct.ngx_array_t = type { ptr, i64, i64, i64, ptr }
%struct.ngx_http_headers_out_t = type { %struct.ngx_list_t, %struct.ngx_list_t, i64, %struct.ngx_str_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, %struct.ngx_str_t, %struct.ngx_str_t, ptr, i64, %struct.ngx_array_t, %struct.ngx_array_t, i64, i64, i64, i64 }
%struct.ngx_str_t = type { i64, ptr }
%struct.ngx_connection_s = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, i32, ptr, i32, %struct.ngx_str_t, %struct.ngx_str_t, i16, ptr, ptr, ptr, i32, ptr, %struct.ngx_queue_s, i64, i64, i32 }
%struct.ngx_queue_s = type { ptr, ptr }
%struct.anon = type { ptr, %struct.ngx_str_t, ptr, ptr, %struct.ngx_str_t, ptr, ptr, %struct.ngx_str_t, ptr }
%struct.ngx_http_lua_ctx_s = type <{ ptr, ptr, ptr, ptr, ptr, %struct.ngx_http_lua_co_ctx_s, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ngx_str_t, %struct.ngx_str_t, i64, ptr, i64, ptr, i32, i16, i24, [6 x i8] }>
%struct.ngx_http_lua_co_ctx_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.ngx_event_s, %struct.ngx_queue_s, i32, i8 }
%struct.ngx_event_s = type { ptr, i24, ptr, i64, ptr, %struct.ngx_rbtree_node_s, %struct.ngx_queue_s }
%struct.ngx_rbtree_node_s = type { i64, ptr, ptr, ptr, i8, i8 }
%struct.ngx_log_s = type { i64, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ngx_conf_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr }
%struct.ngx_command_s = type { %struct.ngx_str_t, i64, ptr, i64, i64, ptr }
%struct.ngx_ssl_connection_s = type <{ ptr, ptr, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, i8, i16, [5 x i8] }>
%struct.ngx_http_connection_t = type { ptr, ptr, ptr, ptr, i64, ptr, i8 }
%struct.ngx_http_conf_ctx_t = type { ptr, ptr, ptr }
%struct.ngx_http_core_loc_conf_s = type { %struct.ngx_str_t, i16, ptr, ptr, i32, ptr, ptr, i64, %struct.ngx_str_t, %struct.ngx_str_t, ptr, ptr, ptr, %struct.ngx_hash_t, %struct.ngx_str_t, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr, i64, i64, i64, i64, ptr, i64, i64, ptr }
%struct.ngx_hash_t = type { ptr, i64 }
%struct.ngx_http_lua_ssl_ctx_t = type { ptr, ptr, ptr, ptr, %struct.ngx_str_t, i32, i8 }
%struct.ngx_listening_s = type { i32, ptr, i32, i64, %struct.ngx_str_t, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.ngx_log_s, ptr, i64, i64, i64, ptr, ptr, %struct.ngx_rbtree_s, %struct.ngx_rbtree_node_s, i64, i24, i32 }
%struct.ngx_rbtree_s = type { ptr, ptr, ptr }
%struct.ngx_http_lua_vm_state_t = type { ptr, i64 }
%struct.ngx_http_lua_main_conf_s = type { ptr, ptr, %struct.ngx_str_t, %struct.ngx_str_t, ptr, ptr, i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr, i64, i64, ptr, %struct.ngx_str_t, ptr, %struct.ngx_str_t, ptr, ptr, ptr, i64, i64, ptr, i64, i64, ptr, i64, i64, i64, i8 }
%struct.ngx_http_lua_loc_conf_t = type { ptr, i64, %struct.ngx_str_t, i64, %struct.ngx_str_t, %struct.ngx_str_t, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ngx_http_complex_value_t, ptr, ptr, %struct.ngx_http_complex_value_t, ptr, ptr, %struct.ngx_http_complex_value_t, ptr, ptr, %struct.ngx_http_complex_value_t, ptr, %struct.ngx_http_complex_value_t, ptr, %struct.ngx_http_complex_value_t, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ngx_http_complex_value_t = type { %struct.ngx_str_t, ptr, ptr, ptr }
%struct.ngx_pool_cleanup_s = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [32 x i8] c"=ssl_session_store_by_lua_block\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [6 x i8] c"nhlf_\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [25 x i8] c"ssl_session_store_by_lua\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [6 x i8] c"nhli_\00", align 1, !dbg !22
@ngx_ssl_connection_index = external global i32, align 4
@ngx_http_lua_ssl_ctx_index = external global i32, align 4
@ngx_http_core_module = external global %struct.ngx_module_s, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"SSL_set_ex_data() failed\00", align 1, !dbg !24
@ngx_http_lua_module = external global %struct.ngx_module_s, align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"storing SSL session by lua\00", align 1, !dbg !26
@.str.7 = private unnamed_addr constant [16 x i8] c"SSL handshaking\00", align 1, !dbg !31
@.str.8 = private unnamed_addr constant [12 x i8] c"bad request\00", align 1, !dbg !36
@.str.9 = private unnamed_addr constant [13 x i8] c"bad ssl conn\00", align 1, !dbg !41
@.str.10 = private unnamed_addr constant [16 x i8] c"bad lua context\00", align 1, !dbg !43
@.str.11 = private unnamed_addr constant [27 x i8] c"bad session in lua context\00", align 1, !dbg !45
@.str.12 = private unnamed_addr constant [25 x i8] c"i2d_SSL_SESSION() failed\00", align 1, !dbg !47
@.str.13 = private unnamed_addr constant [40 x i8] c"uninitialized session id in lua context\00", align 1, !dbg !49
@.str.14 = private unnamed_addr constant [44 x i8] c"uninitialized session id len in lua context\00", align 1, !dbg !54
@.str.15 = private unnamed_addr constant [10 x i8] c" while %s\00", align 1, !dbg !59
@.str.16 = private unnamed_addr constant [37 x i8] c", context: ssl_session_store_by_lua*\00", align 1, !dbg !64
@.str.17 = private unnamed_addr constant [13 x i8] c", client: %V\00", align 1, !dbg !69
@.str.18 = private unnamed_addr constant [13 x i8] c", server: %V\00", align 1, !dbg !71
@.str.19 = private unnamed_addr constant [15 x i8] c"unknown reason\00", align 1, !dbg !73
@.str.20 = private unnamed_addr constant [41 x i8] c"failed to run session_store_by_lua*: %*s\00", align 1, !dbg !78
@.str.21 = private unnamed_addr constant [28 x i8] c"failed to initialize Lua VM\00", align 1, !dbg !83

; Function Attrs: nounwind uwtable
define dso_local i64 @ngx_http_lua_ssl_sess_store_handler_file(ptr noundef %r, ptr noundef %lscf, ptr noundef %L) #0 !dbg !2001 {
entry:
  %retval = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  %lscf.addr = alloca ptr, align 8
  %L.addr = alloca ptr, align 8
  %rc = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !2007
    #dbg_declare(ptr %r.addr, !2003, !DIExpression(), !2011)
  store ptr %lscf, ptr %lscf.addr, align 8, !tbaa !2007
    #dbg_declare(ptr %lscf.addr, !2004, !DIExpression(), !2012)
  store ptr %L, ptr %L.addr, align 8, !tbaa !2007
    #dbg_declare(ptr %L.addr, !2005, !DIExpression(), !2013)
  call void @llvm.lifetime.start.p0(i64 8, ptr %rc) #7, !dbg !2014
    #dbg_declare(ptr %rc, !2006, !DIExpression(), !2015)
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2016, !tbaa !2007
  %connection = getelementptr inbounds %struct.ngx_http_request_s, ptr %0, i32 0, i32 1, !dbg !2017
  %1 = load ptr, ptr %connection, align 8, !dbg !2017, !tbaa !2018
  %log = getelementptr inbounds %struct.ngx_connection_s, ptr %1, i32 0, i32 10, !dbg !2028
  %2 = load ptr, ptr %log, align 8, !dbg !2028, !tbaa !2029
  %3 = load ptr, ptr %L.addr, align 8, !dbg !2033, !tbaa !2007
  %4 = load ptr, ptr %lscf.addr, align 8, !dbg !2034, !tbaa !2007
  %ssl_sess_store_src = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 4, !dbg !2035
  %data = getelementptr inbounds %struct.ngx_str_t, ptr %ssl_sess_store_src, i32 0, i32 1, !dbg !2036
  %5 = load ptr, ptr %data, align 8, !dbg !2036, !tbaa !2037
  %6 = load ptr, ptr %lscf.addr, align 8, !dbg !2038, !tbaa !2007
  %ssl_sess_store_src_key = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 5, !dbg !2039
  %7 = load ptr, ptr %ssl_sess_store_src_key, align 8, !dbg !2039, !tbaa !2037
  %call = call i64 @ngx_http_lua_cache_loadfile(ptr noundef %2, ptr noundef %3, ptr noundef %5, ptr noundef %7), !dbg !2040
  store i64 %call, ptr %rc, align 8, !dbg !2041, !tbaa !2042
  %8 = load i64, ptr %rc, align 8, !dbg !2043, !tbaa !2042
  %cmp = icmp ne i64 %8, 0, !dbg !2045
  br i1 %cmp, label %if.then, label %if.end, !dbg !2046

if.then:                                          ; preds = %entry
  %9 = load i64, ptr %rc, align 8, !dbg !2047, !tbaa !2042
  store i64 %9, ptr %retval, align 8, !dbg !2049
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2049

if.end:                                           ; preds = %entry
  %10 = load ptr, ptr %L.addr, align 8, !dbg !2050, !tbaa !2007
  %11 = load ptr, ptr %r.addr, align 8, !dbg !2051, !tbaa !2007
  %call1 = call i64 @ngx_http_lua_ssl_sess_store_by_chunk(ptr noundef %10, ptr noundef %11), !dbg !2052
  store i64 %call1, ptr %retval, align 8, !dbg !2053
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2053

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %rc) #7, !dbg !2054
  %12 = load i64, ptr %retval, align 8, !dbg !2054
  ret i64 %12, !dbg !2054
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare !dbg !2055 i64 @ngx_http_lua_cache_loadfile(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i64 @ngx_http_lua_ssl_sess_store_by_chunk(ptr noundef %L, ptr noundef %r) #0 !dbg !2061 {
entry:
  %retval = alloca i64, align 8
  %L.addr = alloca ptr, align 8
  %r.addr = alloca ptr, align 8
  %len = alloca i64, align 8
  %err_msg = alloca ptr, align 8
  %rc = alloca i64, align 8
  %ctx = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %L, ptr %L.addr, align 8, !tbaa !2007
    #dbg_declare(ptr %L.addr, !2065, !DIExpression(), !2161)
  store ptr %r, ptr %r.addr, align 8, !tbaa !2007
    #dbg_declare(ptr %r.addr, !2066, !DIExpression(), !2162)
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #7, !dbg !2163
    #dbg_declare(ptr %len, !2067, !DIExpression(), !2164)
  call void @llvm.lifetime.start.p0(i64 8, ptr %err_msg) #7, !dbg !2165
    #dbg_declare(ptr %err_msg, !2068, !DIExpression(), !2166)
  call void @llvm.lifetime.start.p0(i64 8, ptr %rc) #7, !dbg !2167
    #dbg_declare(ptr %rc, !2069, !DIExpression(), !2168)
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #7, !dbg !2169
    #dbg_declare(ptr %ctx, !2070, !DIExpression(), !2170)
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2171, !tbaa !2007
  %ctx1 = getelementptr inbounds %struct.ngx_http_request_s, ptr %0, i32 0, i32 2, !dbg !2171
  %1 = load ptr, ptr %ctx1, align 8, !dbg !2171, !tbaa !2172
  %2 = load i64, ptr @ngx_http_lua_module, align 8, !dbg !2171, !tbaa !2173
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %2, !dbg !2171
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !2171, !tbaa !2007
  store ptr %3, ptr %ctx, align 8, !dbg !2175, !tbaa !2007
  %4 = load ptr, ptr %ctx, align 8, !dbg !2176, !tbaa !2007
  %cmp = icmp eq ptr %4, null, !dbg !2178
  br i1 %cmp, label %if.then, label %if.else, !dbg !2179

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %r.addr, align 8, !dbg !2180, !tbaa !2007
  %call = call ptr @ngx_http_lua_create_ctx(ptr noundef %5), !dbg !2182
  store ptr %call, ptr %ctx, align 8, !dbg !2183, !tbaa !2007
  %6 = load ptr, ptr %ctx, align 8, !dbg !2184, !tbaa !2007
  %cmp2 = icmp eq ptr %6, null, !dbg !2186
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !2187

if.then3:                                         ; preds = %if.then
  store i64 -1, ptr %rc, align 8, !dbg !2188, !tbaa !2042
  %7 = load ptr, ptr %r.addr, align 8, !dbg !2190, !tbaa !2007
  %8 = load i64, ptr %rc, align 8, !dbg !2191, !tbaa !2042
  call void @ngx_http_lua_finalize_request(ptr noundef %7, i64 noundef %8), !dbg !2192
  %9 = load i64, ptr %rc, align 8, !dbg !2193, !tbaa !2042
  store i64 %9, ptr %retval, align 8, !dbg !2194
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2194

if.end:                                           ; preds = %if.then
  br label %if.end4, !dbg !2195

if.else:                                          ; preds = %entry
  %10 = load ptr, ptr %r.addr, align 8, !dbg !2196, !tbaa !2007
  %11 = load ptr, ptr %L.addr, align 8, !dbg !2198, !tbaa !2007
  %12 = load ptr, ptr %ctx, align 8, !dbg !2199, !tbaa !2007
  call void @ngx_http_lua_reset_ctx(ptr noundef %10, ptr noundef %11, ptr noundef %12), !dbg !2200
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.end
  %13 = load ptr, ptr %ctx, align 8, !dbg !2201, !tbaa !2007
  %entered_content_phase = getelementptr inbounds %struct.ngx_http_lua_ctx_s, ptr %13, i32 0, i32 25, !dbg !2202
  %bf.load = load i32, ptr %entered_content_phase, align 2, !dbg !2203
  %bf.clear = and i32 %bf.load, -4097, !dbg !2203
  %bf.set = or i32 %bf.clear, 4096, !dbg !2203
  store i32 %bf.set, ptr %entered_content_phase, align 2, !dbg !2203
  %14 = load ptr, ptr %ctx, align 8, !dbg !2204, !tbaa !2007
  %context = getelementptr inbounds %struct.ngx_http_lua_ctx_s, ptr %14, i32 0, i32 24, !dbg !2205
  store i16 2048, ptr %context, align 4, !dbg !2206, !tbaa !2207
  %15 = load ptr, ptr %L.addr, align 8, !dbg !2212, !tbaa !2007
  %16 = load ptr, ptr %r.addr, align 8, !dbg !2213, !tbaa !2007
  call void @ngx_http_lua_set_req(ptr noundef %15, ptr noundef %16), !dbg !2214
  %17 = load ptr, ptr %L.addr, align 8, !dbg !2215, !tbaa !2007
  call void @lua_pushcclosure(ptr noundef %17, ptr noundef @ngx_http_lua_traceback, i32 noundef 0), !dbg !2215
  %18 = load ptr, ptr %L.addr, align 8, !dbg !2216, !tbaa !2007
  call void @lua_insert(ptr noundef %18, i32 noundef 1), !dbg !2217
  %19 = load ptr, ptr %L.addr, align 8, !dbg !2218, !tbaa !2007
  %call5 = call i32 @lua_pcall(ptr noundef %19, i32 noundef 0, i32 noundef 1, i32 noundef 1), !dbg !2219
  %conv = sext i32 %call5 to i64, !dbg !2219
  store i64 %conv, ptr %rc, align 8, !dbg !2220, !tbaa !2042
  %20 = load ptr, ptr %L.addr, align 8, !dbg !2221, !tbaa !2007
  call void @lua_remove(ptr noundef %20, i32 noundef 1), !dbg !2222
  %21 = load i64, ptr %rc, align 8, !dbg !2223, !tbaa !2042
  %cmp6 = icmp ne i64 %21, 0, !dbg !2225
  br i1 %cmp6, label %if.then8, label %if.end20, !dbg !2226

if.then8:                                         ; preds = %if.end4
  %22 = load ptr, ptr %L.addr, align 8, !dbg !2227, !tbaa !2007
  %call9 = call ptr @lua_tolstring(ptr noundef %22, i32 noundef -1, ptr noundef %len), !dbg !2229
  store ptr %call9, ptr %err_msg, align 8, !dbg !2230, !tbaa !2007
  %23 = load ptr, ptr %err_msg, align 8, !dbg !2231, !tbaa !2007
  %cmp10 = icmp eq ptr %23, null, !dbg !2233
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !2234

if.then12:                                        ; preds = %if.then8
  store ptr @.str.19, ptr %err_msg, align 8, !dbg !2235, !tbaa !2007
  store i64 14, ptr %len, align 8, !dbg !2237, !tbaa !2042
  br label %if.end13, !dbg !2238

if.end13:                                         ; preds = %if.then12, %if.then8
  %24 = load ptr, ptr %r.addr, align 8, !dbg !2239, !tbaa !2007
  %connection = getelementptr inbounds %struct.ngx_http_request_s, ptr %24, i32 0, i32 1, !dbg !2239
  %25 = load ptr, ptr %connection, align 8, !dbg !2239, !tbaa !2018
  %log = getelementptr inbounds %struct.ngx_connection_s, ptr %25, i32 0, i32 10, !dbg !2239
  %26 = load ptr, ptr %log, align 8, !dbg !2239, !tbaa !2029
  %log_level = getelementptr inbounds %struct.ngx_log_s, ptr %26, i32 0, i32 0, !dbg !2239
  %27 = load i64, ptr %log_level, align 8, !dbg !2239, !tbaa !2241
  %cmp14 = icmp uge i64 %27, 4, !dbg !2239
  br i1 %cmp14, label %if.then16, label %if.end19, !dbg !2243

if.then16:                                        ; preds = %if.end13
  %28 = load ptr, ptr %r.addr, align 8, !dbg !2239, !tbaa !2007
  %connection17 = getelementptr inbounds %struct.ngx_http_request_s, ptr %28, i32 0, i32 1, !dbg !2239
  %29 = load ptr, ptr %connection17, align 8, !dbg !2239, !tbaa !2018
  %log18 = getelementptr inbounds %struct.ngx_connection_s, ptr %29, i32 0, i32 10, !dbg !2239
  %30 = load ptr, ptr %log18, align 8, !dbg !2239, !tbaa !2029
  %31 = load i64, ptr %len, align 8, !dbg !2239, !tbaa !2042
  %32 = load ptr, ptr %err_msg, align 8, !dbg !2239, !tbaa !2007
  call void (i64, ptr, i32, ptr, ...) @ngx_log_error_core(i64 noundef 4, ptr noundef %30, i32 noundef 0, ptr noundef @.str.20, i64 noundef %31, ptr noundef %32), !dbg !2239
  br label %if.end19, !dbg !2239

if.end19:                                         ; preds = %if.then16, %if.end13
  %33 = load ptr, ptr %L.addr, align 8, !dbg !2244, !tbaa !2007
  call void @lua_settop(ptr noundef %33, i32 noundef 0), !dbg !2245
  %34 = load ptr, ptr %r.addr, align 8, !dbg !2246, !tbaa !2007
  %35 = load i64, ptr %rc, align 8, !dbg !2247, !tbaa !2042
  call void @ngx_http_lua_finalize_request(ptr noundef %34, i64 noundef %35), !dbg !2248
  store i64 -1, ptr %retval, align 8, !dbg !2249
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2249

if.end20:                                         ; preds = %if.end4
  %36 = load ptr, ptr %L.addr, align 8, !dbg !2250, !tbaa !2007
  call void @lua_settop(ptr noundef %36, i32 noundef 0), !dbg !2251
  %37 = load ptr, ptr %r.addr, align 8, !dbg !2252, !tbaa !2007
  %38 = load i64, ptr %rc, align 8, !dbg !2253, !tbaa !2042
  call void @ngx_http_lua_finalize_request(ptr noundef %37, i64 noundef %38), !dbg !2254
  %39 = load i64, ptr %rc, align 8, !dbg !2255, !tbaa !2042
  store i64 %39, ptr %retval, align 8, !dbg !2256
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2256

cleanup:                                          ; preds = %if.end20, %if.end19, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #7, !dbg !2257
  call void @llvm.lifetime.end.p0(i64 8, ptr %rc) #7, !dbg !2257
  call void @llvm.lifetime.end.p0(i64 8, ptr %err_msg) #7, !dbg !2257
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #7, !dbg !2257
  %40 = load i64, ptr %retval, align 8, !dbg !2257
  ret i64 %40, !dbg !2257
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local i64 @ngx_http_lua_ssl_sess_store_handler_inline(ptr noundef %r, ptr noundef %lscf, ptr noundef %L) #0 !dbg !2258 {
entry:
  %retval = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  %lscf.addr = alloca ptr, align 8
  %L.addr = alloca ptr, align 8
  %rc = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !2007
    #dbg_declare(ptr %r.addr, !2260, !DIExpression(), !2264)
  store ptr %lscf, ptr %lscf.addr, align 8, !tbaa !2007
    #dbg_declare(ptr %lscf.addr, !2261, !DIExpression(), !2265)
  store ptr %L, ptr %L.addr, align 8, !tbaa !2007
    #dbg_declare(ptr %L.addr, !2262, !DIExpression(), !2266)
  call void @llvm.lifetime.start.p0(i64 8, ptr %rc) #7, !dbg !2267
    #dbg_declare(ptr %rc, !2263, !DIExpression(), !2268)
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2269, !tbaa !2007
  %connection = getelementptr inbounds %struct.ngx_http_request_s, ptr %0, i32 0, i32 1, !dbg !2270
  %1 = load ptr, ptr %connection, align 8, !dbg !2270, !tbaa !2018
  %log = getelementptr inbounds %struct.ngx_connection_s, ptr %1, i32 0, i32 10, !dbg !2271
  %2 = load ptr, ptr %log, align 8, !dbg !2271, !tbaa !2029
  %3 = load ptr, ptr %L.addr, align 8, !dbg !2272, !tbaa !2007
  %4 = load ptr, ptr %lscf.addr, align 8, !dbg !2273, !tbaa !2007
  %ssl_sess_store_src = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 4, !dbg !2274
  %data = getelementptr inbounds %struct.ngx_str_t, ptr %ssl_sess_store_src, i32 0, i32 1, !dbg !2275
  %5 = load ptr, ptr %data, align 8, !dbg !2275, !tbaa !2037
  %6 = load ptr, ptr %lscf.addr, align 8, !dbg !2276, !tbaa !2007
  %ssl_sess_store_src1 = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 4, !dbg !2277
  %len = getelementptr inbounds %struct.ngx_str_t, ptr %ssl_sess_store_src1, i32 0, i32 0, !dbg !2278
  %7 = load i64, ptr %len, align 8, !dbg !2278, !tbaa !2037
  %8 = load ptr, ptr %lscf.addr, align 8, !dbg !2279, !tbaa !2007
  %ssl_sess_store_src_key = getelementptr inbounds %struct.anon, ptr %8, i32 0, i32 5, !dbg !2280
  %9 = load ptr, ptr %ssl_sess_store_src_key, align 8, !dbg !2280, !tbaa !2037
  %call = call i64 @ngx_http_lua_cache_loadbuffer(ptr noundef %2, ptr noundef %3, ptr noundef %5, i64 noundef %7, ptr noundef %9, ptr noundef @.str), !dbg !2281
  store i64 %call, ptr %rc, align 8, !dbg !2282, !tbaa !2042
  %10 = load i64, ptr %rc, align 8, !dbg !2283, !tbaa !2042
  %cmp = icmp ne i64 %10, 0, !dbg !2285
  br i1 %cmp, label %if.then, label %if.end, !dbg !2286

if.then:                                          ; preds = %entry
  %11 = load i64, ptr %rc, align 8, !dbg !2287, !tbaa !2042
  store i64 %11, ptr %retval, align 8, !dbg !2289
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2289

if.end:                                           ; preds = %entry
  %12 = load ptr, ptr %L.addr, align 8, !dbg !2290, !tbaa !2007
  %13 = load ptr, ptr %r.addr, align 8, !dbg !2291, !tbaa !2007
  %call2 = call i64 @ngx_http_lua_ssl_sess_store_by_chunk(ptr noundef %12, ptr noundef %13), !dbg !2292
  store i64 %call2, ptr %retval, align 8, !dbg !2293
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2293

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %rc) #7, !dbg !2294
  %14 = load i64, ptr %retval, align 8, !dbg !2294
  ret i64 %14, !dbg !2294
}

declare !dbg !2295 i64 @ngx_http_lua_cache_loadbuffer(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @ngx_http_lua_ssl_sess_store_by_lua_block(ptr noundef %cf, ptr noundef %cmd, ptr noundef %conf) #0 !dbg !2298 {
entry:
  %cf.addr = alloca ptr, align 8
  %cmd.addr = alloca ptr, align 8
  %conf.addr = alloca ptr, align 8
  %rv = alloca ptr, align 8
  %save = alloca %struct.ngx_conf_s, align 8
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !2007
    #dbg_declare(ptr %cf.addr, !2300, !DIExpression(), !2305)
  store ptr %cmd, ptr %cmd.addr, align 8, !tbaa !2007
    #dbg_declare(ptr %cmd.addr, !2301, !DIExpression(), !2306)
  store ptr %conf, ptr %conf.addr, align 8, !tbaa !2007
    #dbg_declare(ptr %conf.addr, !2302, !DIExpression(), !2307)
  call void @llvm.lifetime.start.p0(i64 8, ptr %rv) #7, !dbg !2308
    #dbg_declare(ptr %rv, !2303, !DIExpression(), !2309)
  call void @llvm.lifetime.start.p0(i64 96, ptr %save) #7, !dbg !2310
    #dbg_declare(ptr %save, !2304, !DIExpression(), !2311)
  %0 = load ptr, ptr %cf.addr, align 8, !dbg !2312, !tbaa !2007
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %save, ptr align 8 %0, i64 96, i1 false), !dbg !2313, !tbaa.struct !2314
  %1 = load ptr, ptr %cf.addr, align 8, !dbg !2315, !tbaa !2007
  %handler = getelementptr inbounds %struct.ngx_conf_s, ptr %1, i32 0, i32 10, !dbg !2316
  store ptr @ngx_http_lua_ssl_sess_store_by_lua, ptr %handler, align 8, !dbg !2317, !tbaa !2318
  %2 = load ptr, ptr %conf.addr, align 8, !dbg !2320, !tbaa !2007
  %3 = load ptr, ptr %cf.addr, align 8, !dbg !2321, !tbaa !2007
  %handler_conf = getelementptr inbounds %struct.ngx_conf_s, ptr %3, i32 0, i32 11, !dbg !2322
  store ptr %2, ptr %handler_conf, align 8, !dbg !2323, !tbaa !2324
  %4 = load ptr, ptr %cf.addr, align 8, !dbg !2325, !tbaa !2007
  %5 = load ptr, ptr %cmd.addr, align 8, !dbg !2326, !tbaa !2007
  %call = call ptr @ngx_http_lua_conf_lua_block_parse(ptr noundef %4, ptr noundef %5), !dbg !2327
  store ptr %call, ptr %rv, align 8, !dbg !2328, !tbaa !2007
  %6 = load ptr, ptr %cf.addr, align 8, !dbg !2329, !tbaa !2007
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %save, i64 96, i1 false), !dbg !2330, !tbaa.struct !2314
  %7 = load ptr, ptr %rv, align 8, !dbg !2331, !tbaa !2007
  call void @llvm.lifetime.end.p0(i64 96, ptr %save) #7, !dbg !2332
  call void @llvm.lifetime.end.p0(i64 8, ptr %rv) #7, !dbg !2332
  ret ptr %7, !dbg !2333
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local ptr @ngx_http_lua_ssl_sess_store_by_lua(ptr noundef %cf, ptr noundef %cmd, ptr noundef %conf) #0 !dbg !2334 {
entry:
  %retval = alloca ptr, align 8
  %cf.addr = alloca ptr, align 8
  %cmd.addr = alloca ptr, align 8
  %conf.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %name = alloca ptr, align 8
  %value = alloca ptr, align 8
  %lscf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !2007
    #dbg_declare(ptr %cf.addr, !2336, !DIExpression(), !2343)
  store ptr %cmd, ptr %cmd.addr, align 8, !tbaa !2007
    #dbg_declare(ptr %cmd.addr, !2337, !DIExpression(), !2344)
  store ptr %conf, ptr %conf.addr, align 8, !tbaa !2007
    #dbg_declare(ptr %conf.addr, !2338, !DIExpression(), !2345)
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #7, !dbg !2346
    #dbg_declare(ptr %p, !2339, !DIExpression(), !2347)
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #7, !dbg !2348
    #dbg_declare(ptr %name, !2340, !DIExpression(), !2349)
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #7, !dbg !2350
    #dbg_declare(ptr %value, !2341, !DIExpression(), !2351)
  call void @llvm.lifetime.start.p0(i64 8, ptr %lscf) #7, !dbg !2352
    #dbg_declare(ptr %lscf, !2342, !DIExpression(), !2353)
  %0 = load ptr, ptr %conf.addr, align 8, !dbg !2354, !tbaa !2007
  store ptr %0, ptr %lscf, align 8, !dbg !2353, !tbaa !2007
  %1 = load ptr, ptr %cmd.addr, align 8, !dbg !2355, !tbaa !2007
  %post = getelementptr inbounds %struct.ngx_command_s, ptr %1, i32 0, i32 5, !dbg !2357
  %2 = load ptr, ptr %post, align 8, !dbg !2357, !tbaa !2358
  %cmp = icmp eq ptr %2, null, !dbg !2360
  br i1 %cmp, label %if.then, label %if.end, !dbg !2361

if.then:                                          ; preds = %entry
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !2362
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2362

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %lscf, align 8, !dbg !2364, !tbaa !2007
  %ssl_sess_store_handler = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 3, !dbg !2366
  %4 = load ptr, ptr %ssl_sess_store_handler, align 8, !dbg !2366, !tbaa !2037
  %tobool = icmp ne ptr %4, null, !dbg !2364
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !2367

if.then1:                                         ; preds = %if.end
  store ptr @.str.1, ptr %retval, align 8, !dbg !2368
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2368

if.end2:                                          ; preds = %if.end
  %5 = load ptr, ptr %cf.addr, align 8, !dbg !2370, !tbaa !2007
  %log = getelementptr inbounds %struct.ngx_conf_s, ptr %5, i32 0, i32 6, !dbg !2372
  %6 = load ptr, ptr %log, align 8, !dbg !2372, !tbaa !2373
  %call = call i64 @ngx_http_lua_ssl_init(ptr noundef %6), !dbg !2374
  %cmp3 = icmp ne i64 %call, 0, !dbg !2375
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !2376

if.then4:                                         ; preds = %if.end2
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !2377
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2377

if.end5:                                          ; preds = %if.end2
  %7 = load ptr, ptr %cf.addr, align 8, !dbg !2379, !tbaa !2007
  %args = getelementptr inbounds %struct.ngx_conf_s, ptr %7, i32 0, i32 1, !dbg !2380
  %8 = load ptr, ptr %args, align 8, !dbg !2380, !tbaa !2381
  %elts = getelementptr inbounds %struct.ngx_array_t, ptr %8, i32 0, i32 0, !dbg !2382
  %9 = load ptr, ptr %elts, align 8, !dbg !2382, !tbaa !2383
  store ptr %9, ptr %value, align 8, !dbg !2384, !tbaa !2007
  %10 = load ptr, ptr %cmd.addr, align 8, !dbg !2385, !tbaa !2007
  %post6 = getelementptr inbounds %struct.ngx_command_s, ptr %10, i32 0, i32 5, !dbg !2386
  %11 = load ptr, ptr %post6, align 8, !dbg !2386, !tbaa !2358
  %12 = load ptr, ptr %lscf, align 8, !dbg !2387, !tbaa !2007
  %ssl_sess_store_handler7 = getelementptr inbounds %struct.anon, ptr %12, i32 0, i32 3, !dbg !2388
  store ptr %11, ptr %ssl_sess_store_handler7, align 8, !dbg !2389, !tbaa !2037
  %13 = load ptr, ptr %cmd.addr, align 8, !dbg !2390, !tbaa !2007
  %post8 = getelementptr inbounds %struct.ngx_command_s, ptr %13, i32 0, i32 5, !dbg !2392
  %14 = load ptr, ptr %post8, align 8, !dbg !2392, !tbaa !2358
  %cmp9 = icmp eq ptr %14, @ngx_http_lua_ssl_sess_store_handler_file, !dbg !2393
  br i1 %cmp9, label %if.then10, label %if.else, !dbg !2394

if.then10:                                        ; preds = %if.end5
  %15 = load ptr, ptr %cf.addr, align 8, !dbg !2395, !tbaa !2007
  %pool = getelementptr inbounds %struct.ngx_conf_s, ptr %15, i32 0, i32 3, !dbg !2397
  %16 = load ptr, ptr %pool, align 8, !dbg !2397, !tbaa !2398
  %17 = load ptr, ptr %value, align 8, !dbg !2399, !tbaa !2007
  %arrayidx = getelementptr inbounds %struct.ngx_str_t, ptr %17, i64 1, !dbg !2399
  %data = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx, i32 0, i32 1, !dbg !2400
  %18 = load ptr, ptr %data, align 8, !dbg !2400, !tbaa !2401
  %19 = load ptr, ptr %value, align 8, !dbg !2402, !tbaa !2007
  %arrayidx11 = getelementptr inbounds %struct.ngx_str_t, ptr %19, i64 1, !dbg !2402
  %len = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx11, i32 0, i32 0, !dbg !2403
  %20 = load i64, ptr %len, align 8, !dbg !2403, !tbaa !2404
  %call12 = call ptr @ngx_http_lua_rebase_path(ptr noundef %16, ptr noundef %18, i64 noundef %20), !dbg !2405
  store ptr %call12, ptr %name, align 8, !dbg !2406, !tbaa !2007
  %21 = load ptr, ptr %name, align 8, !dbg !2407, !tbaa !2007
  %cmp13 = icmp eq ptr %21, null, !dbg !2409
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !2410

if.then14:                                        ; preds = %if.then10
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !2411
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2411

if.end15:                                         ; preds = %if.then10
  %22 = load ptr, ptr %name, align 8, !dbg !2413, !tbaa !2007
  %23 = load ptr, ptr %lscf, align 8, !dbg !2414, !tbaa !2007
  %ssl_sess_store_src = getelementptr inbounds %struct.anon, ptr %23, i32 0, i32 4, !dbg !2415
  %data16 = getelementptr inbounds %struct.ngx_str_t, ptr %ssl_sess_store_src, i32 0, i32 1, !dbg !2416
  store ptr %22, ptr %data16, align 8, !dbg !2417, !tbaa !2037
  %24 = load ptr, ptr %name, align 8, !dbg !2418, !tbaa !2007
  %call17 = call i64 @strlen(ptr noundef %24) #8, !dbg !2418
  %25 = load ptr, ptr %lscf, align 8, !dbg !2419, !tbaa !2007
  %ssl_sess_store_src18 = getelementptr inbounds %struct.anon, ptr %25, i32 0, i32 4, !dbg !2420
  %len19 = getelementptr inbounds %struct.ngx_str_t, ptr %ssl_sess_store_src18, i32 0, i32 0, !dbg !2421
  store i64 %call17, ptr %len19, align 8, !dbg !2422, !tbaa !2037
  %26 = load ptr, ptr %cf.addr, align 8, !dbg !2423, !tbaa !2007
  %pool20 = getelementptr inbounds %struct.ngx_conf_s, ptr %26, i32 0, i32 3, !dbg !2424
  %27 = load ptr, ptr %pool20, align 8, !dbg !2424, !tbaa !2398
  %call21 = call ptr @ngx_palloc(ptr noundef %27, i64 noundef 38), !dbg !2425
  store ptr %call21, ptr %p, align 8, !dbg !2426, !tbaa !2007
  %28 = load ptr, ptr %p, align 8, !dbg !2427, !tbaa !2007
  %cmp22 = icmp eq ptr %28, null, !dbg !2429
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !2430

if.then23:                                        ; preds = %if.end15
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !2431
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2431

if.end24:                                         ; preds = %if.end15
  %29 = load ptr, ptr %p, align 8, !dbg !2433, !tbaa !2007
  %30 = load ptr, ptr %lscf, align 8, !dbg !2434, !tbaa !2007
  %ssl_sess_store_src_key = getelementptr inbounds %struct.anon, ptr %30, i32 0, i32 5, !dbg !2435
  store ptr %29, ptr %ssl_sess_store_src_key, align 8, !dbg !2436, !tbaa !2037
  %31 = load ptr, ptr %p, align 8, !dbg !2437, !tbaa !2007
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %31, ptr align 1 @.str.2, i64 5, i1 false), !dbg !2437
  %add.ptr = getelementptr inbounds i8, ptr %31, i64 5, !dbg !2437
  store ptr %add.ptr, ptr %p, align 8, !dbg !2438, !tbaa !2007
  %32 = load ptr, ptr %p, align 8, !dbg !2439, !tbaa !2007
  %33 = load ptr, ptr %value, align 8, !dbg !2440, !tbaa !2007
  %arrayidx25 = getelementptr inbounds %struct.ngx_str_t, ptr %33, i64 1, !dbg !2440
  %data26 = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx25, i32 0, i32 1, !dbg !2441
  %34 = load ptr, ptr %data26, align 8, !dbg !2441, !tbaa !2401
  %35 = load ptr, ptr %value, align 8, !dbg !2442, !tbaa !2007
  %arrayidx27 = getelementptr inbounds %struct.ngx_str_t, ptr %35, i64 1, !dbg !2442
  %len28 = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx27, i32 0, i32 0, !dbg !2443
  %36 = load i64, ptr %len28, align 8, !dbg !2443, !tbaa !2404
  %conv = trunc i64 %36 to i32, !dbg !2442
  %call29 = call ptr @ngx_http_lua_digest_hex(ptr noundef %32, ptr noundef %34, i32 noundef %conv), !dbg !2444
  store ptr %call29, ptr %p, align 8, !dbg !2445, !tbaa !2007
  %37 = load ptr, ptr %p, align 8, !dbg !2446, !tbaa !2007
  store i8 0, ptr %37, align 1, !dbg !2447, !tbaa !2037
  br label %if.end47, !dbg !2448

if.else:                                          ; preds = %if.end5
  %38 = load ptr, ptr %lscf, align 8, !dbg !2449, !tbaa !2007
  %ssl_sess_store_src30 = getelementptr inbounds %struct.anon, ptr %38, i32 0, i32 4, !dbg !2451
  %39 = load ptr, ptr %value, align 8, !dbg !2452, !tbaa !2007
  %arrayidx31 = getelementptr inbounds %struct.ngx_str_t, ptr %39, i64 1, !dbg !2452
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %ssl_sess_store_src30, ptr align 8 %arrayidx31, i64 16, i1 false), !dbg !2452, !tbaa.struct !2453
  %40 = load ptr, ptr %cf.addr, align 8, !dbg !2454, !tbaa !2007
  %pool32 = getelementptr inbounds %struct.ngx_conf_s, ptr %40, i32 0, i32 3, !dbg !2455
  %41 = load ptr, ptr %pool32, align 8, !dbg !2455, !tbaa !2398
  %call33 = call ptr @ngx_palloc(ptr noundef %41, i64 noundef 62), !dbg !2456
  store ptr %call33, ptr %p, align 8, !dbg !2457, !tbaa !2007
  %42 = load ptr, ptr %p, align 8, !dbg !2458, !tbaa !2007
  %cmp34 = icmp eq ptr %42, null, !dbg !2460
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !2461

if.then36:                                        ; preds = %if.else
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !2462
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2462

if.end37:                                         ; preds = %if.else
  %43 = load ptr, ptr %p, align 8, !dbg !2464, !tbaa !2007
  %44 = load ptr, ptr %lscf, align 8, !dbg !2465, !tbaa !2007
  %ssl_sess_store_src_key38 = getelementptr inbounds %struct.anon, ptr %44, i32 0, i32 5, !dbg !2466
  store ptr %43, ptr %ssl_sess_store_src_key38, align 8, !dbg !2467, !tbaa !2037
  %45 = load ptr, ptr %p, align 8, !dbg !2468, !tbaa !2007
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %45, ptr align 1 @.str.3, i64 24, i1 false), !dbg !2468
  %add.ptr39 = getelementptr inbounds i8, ptr %45, i64 24, !dbg !2468
  store ptr %add.ptr39, ptr %p, align 8, !dbg !2469, !tbaa !2007
  %46 = load ptr, ptr %p, align 8, !dbg !2470, !tbaa !2007
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %46, ptr align 1 @.str.4, i64 5, i1 false), !dbg !2470
  %add.ptr40 = getelementptr inbounds i8, ptr %46, i64 5, !dbg !2470
  store ptr %add.ptr40, ptr %p, align 8, !dbg !2471, !tbaa !2007
  %47 = load ptr, ptr %p, align 8, !dbg !2472, !tbaa !2007
  %48 = load ptr, ptr %value, align 8, !dbg !2473, !tbaa !2007
  %arrayidx41 = getelementptr inbounds %struct.ngx_str_t, ptr %48, i64 1, !dbg !2473
  %data42 = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx41, i32 0, i32 1, !dbg !2474
  %49 = load ptr, ptr %data42, align 8, !dbg !2474, !tbaa !2401
  %50 = load ptr, ptr %value, align 8, !dbg !2475, !tbaa !2007
  %arrayidx43 = getelementptr inbounds %struct.ngx_str_t, ptr %50, i64 1, !dbg !2475
  %len44 = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx43, i32 0, i32 0, !dbg !2476
  %51 = load i64, ptr %len44, align 8, !dbg !2476, !tbaa !2404
  %conv45 = trunc i64 %51 to i32, !dbg !2475
  %call46 = call ptr @ngx_http_lua_digest_hex(ptr noundef %47, ptr noundef %49, i32 noundef %conv45), !dbg !2477
  store ptr %call46, ptr %p, align 8, !dbg !2478, !tbaa !2007
  %52 = load ptr, ptr %p, align 8, !dbg !2479, !tbaa !2007
  store i8 0, ptr %52, align 1, !dbg !2480, !tbaa !2037
  br label %if.end47

if.end47:                                         ; preds = %if.end37, %if.end24
  store ptr null, ptr %retval, align 8, !dbg !2481
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2481

cleanup:                                          ; preds = %if.end47, %if.then36, %if.then23, %if.then14, %if.then4, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %lscf) #7, !dbg !2482
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #7, !dbg !2482
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #7, !dbg !2482
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #7, !dbg !2482
  %53 = load ptr, ptr %retval, align 8, !dbg !2482
  ret ptr %53, !dbg !2482
}

declare !dbg !2483 ptr @ngx_http_lua_conf_lua_block_parse(ptr noundef, ptr noundef) #2

declare !dbg !2487 i64 @ngx_http_lua_ssl_init(ptr noundef) #2

declare !dbg !2489 ptr @ngx_http_lua_rebase_path(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !2492 i64 @strlen(ptr noundef) #4

declare !dbg !2496 ptr @ngx_palloc(ptr noundef, i64 noundef) #2

declare !dbg !2499 ptr @ngx_http_lua_digest_hex(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @ngx_http_lua_ssl_sess_store_handler(ptr noundef %ssl_conn, ptr noundef %sess) #0 !dbg !2502 {
entry:
  %retval = alloca i32, align 4
  %ssl_conn.addr = alloca ptr, align 8
  %sess.addr = alloca ptr, align 8
  %sess_id = alloca ptr, align 8
  %sess_id_len = alloca i32, align 4
  %L = alloca ptr, align 8
  %rc = alloca i64, align 8
  %c = alloca ptr, align 8
  %fc = alloca ptr, align 8
  %r = alloca ptr, align 8
  %hc = alloca ptr, align 8
  %cctx = alloca ptr, align 8
  %lscf = alloca ptr, align 8
  %clcf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ssl_conn, ptr %ssl_conn.addr, align 8, !tbaa !2007
    #dbg_declare(ptr %ssl_conn.addr, !2506, !DIExpression(), !2535)
  store ptr %sess, ptr %sess.addr, align 8, !tbaa !2007
    #dbg_declare(ptr %sess.addr, !2507, !DIExpression(), !2536)
  call void @llvm.lifetime.start.p0(i64 8, ptr %sess_id) #7, !dbg !2537
    #dbg_declare(ptr %sess_id, !2508, !DIExpression(), !2538)
  call void @llvm.lifetime.start.p0(i64 4, ptr %sess_id_len) #7, !dbg !2539
    #dbg_declare(ptr %sess_id_len, !2509, !DIExpression(), !2540)
  call void @llvm.lifetime.start.p0(i64 8, ptr %L) #7, !dbg !2541
    #dbg_declare(ptr %L, !2510, !DIExpression(), !2542)
  call void @llvm.lifetime.start.p0(i64 8, ptr %rc) #7, !dbg !2543
    #dbg_declare(ptr %rc, !2511, !DIExpression(), !2544)
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #7, !dbg !2545
    #dbg_declare(ptr %c, !2512, !DIExpression(), !2546)
  call void @llvm.lifetime.start.p0(i64 8, ptr %fc) #7, !dbg !2545
    #dbg_declare(ptr %fc, !2513, !DIExpression(), !2547)
  store ptr null, ptr %fc, align 8, !dbg !2547, !tbaa !2007
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #7, !dbg !2548
    #dbg_declare(ptr %r, !2514, !DIExpression(), !2549)
  store ptr null, ptr %r, align 8, !dbg !2549, !tbaa !2007
  call void @llvm.lifetime.start.p0(i64 8, ptr %hc) #7, !dbg !2550
    #dbg_declare(ptr %hc, !2515, !DIExpression(), !2551)
  call void @llvm.lifetime.start.p0(i64 8, ptr %cctx) #7, !dbg !2552
    #dbg_declare(ptr %cctx, !2516, !DIExpression(), !2553)
  call void @llvm.lifetime.start.p0(i64 8, ptr %lscf) #7, !dbg !2554
    #dbg_declare(ptr %lscf, !2532, !DIExpression(), !2555)
  call void @llvm.lifetime.start.p0(i64 8, ptr %clcf) #7, !dbg !2556
    #dbg_declare(ptr %clcf, !2533, !DIExpression(), !2557)
  %0 = load ptr, ptr %ssl_conn.addr, align 8, !dbg !2558, !tbaa !2007
  %1 = load i32, ptr @ngx_ssl_connection_index, align 4, !dbg !2558, !tbaa !2559
  %call = call ptr @SSL_get_ex_data(ptr noundef %0, i32 noundef %1), !dbg !2558
  store ptr %call, ptr %c, align 8, !dbg !2560, !tbaa !2007
  %2 = load ptr, ptr %c, align 8, !dbg !2561, !tbaa !2007
  %ssl = getelementptr inbounds %struct.ngx_connection_s, ptr %2, i32 0, i32 18, !dbg !2561
  %3 = load ptr, ptr %ssl, align 8, !dbg !2561, !tbaa !2562
  %connection = getelementptr inbounds %struct.ngx_ssl_connection_s, ptr %3, i32 0, i32 0, !dbg !2561
  %4 = load ptr, ptr %connection, align 8, !dbg !2561, !tbaa !2563
  %5 = load i32, ptr @ngx_http_lua_ssl_ctx_index, align 4, !dbg !2561, !tbaa !2559
  %call1 = call ptr @SSL_get_ex_data(ptr noundef %4, i32 noundef %5), !dbg !2561
  store ptr %call1, ptr %cctx, align 8, !dbg !2565, !tbaa !2007
  %6 = load ptr, ptr %c, align 8, !dbg !2566, !tbaa !2007
  %data = getelementptr inbounds %struct.ngx_connection_s, ptr %6, i32 0, i32 0, !dbg !2567
  %7 = load ptr, ptr %data, align 8, !dbg !2567, !tbaa !2568
  store ptr %7, ptr %hc, align 8, !dbg !2569, !tbaa !2007
  %call2 = call ptr @ngx_http_lua_create_fake_connection(ptr noundef null), !dbg !2570
  store ptr %call2, ptr %fc, align 8, !dbg !2571, !tbaa !2007
  %8 = load ptr, ptr %fc, align 8, !dbg !2572, !tbaa !2007
  %cmp = icmp eq ptr %8, null, !dbg !2574
  br i1 %cmp, label %if.then, label %if.end, !dbg !2575

if.then:                                          ; preds = %entry
  br label %failed, !dbg !2576

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr %fc, align 8, !dbg !2578, !tbaa !2007
  %log = getelementptr inbounds %struct.ngx_connection_s, ptr %9, i32 0, i32 10, !dbg !2579
  %10 = load ptr, ptr %log, align 8, !dbg !2579, !tbaa !2029
  %handler = getelementptr inbounds %struct.ngx_log_s, ptr %10, i32 0, i32 4, !dbg !2580
  store ptr @ngx_http_lua_log_ssl_sess_store_error, ptr %handler, align 8, !dbg !2581, !tbaa !2582
  %11 = load ptr, ptr %fc, align 8, !dbg !2583, !tbaa !2007
  %12 = load ptr, ptr %fc, align 8, !dbg !2584, !tbaa !2007
  %log3 = getelementptr inbounds %struct.ngx_connection_s, ptr %12, i32 0, i32 10, !dbg !2585
  %13 = load ptr, ptr %log3, align 8, !dbg !2585, !tbaa !2029
  %data4 = getelementptr inbounds %struct.ngx_log_s, ptr %13, i32 0, i32 5, !dbg !2586
  store ptr %11, ptr %data4, align 8, !dbg !2587, !tbaa !2588
  %14 = load ptr, ptr %fc, align 8, !dbg !2589, !tbaa !2007
  %addr_text = getelementptr inbounds %struct.ngx_connection_s, ptr %14, i32 0, i32 15, !dbg !2590
  %15 = load ptr, ptr %c, align 8, !dbg !2591, !tbaa !2007
  %addr_text5 = getelementptr inbounds %struct.ngx_connection_s, ptr %15, i32 0, i32 15, !dbg !2592
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %addr_text, ptr align 8 %addr_text5, i64 16, i1 false), !dbg !2592, !tbaa.struct !2453
  %16 = load ptr, ptr %c, align 8, !dbg !2593, !tbaa !2007
  %listening = getelementptr inbounds %struct.ngx_connection_s, ptr %16, i32 0, i32 8, !dbg !2594
  %17 = load ptr, ptr %listening, align 8, !dbg !2594, !tbaa !2595
  %18 = load ptr, ptr %fc, align 8, !dbg !2596, !tbaa !2007
  %listening6 = getelementptr inbounds %struct.ngx_connection_s, ptr %18, i32 0, i32 8, !dbg !2597
  store ptr %17, ptr %listening6, align 8, !dbg !2598, !tbaa !2595
  %19 = load ptr, ptr %fc, align 8, !dbg !2599, !tbaa !2007
  %call7 = call ptr @ngx_http_lua_create_fake_request(ptr noundef %19), !dbg !2600
  store ptr %call7, ptr %r, align 8, !dbg !2601, !tbaa !2007
  %20 = load ptr, ptr %r, align 8, !dbg !2602, !tbaa !2007
  %cmp8 = icmp eq ptr %20, null, !dbg !2604
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !2605

if.then9:                                         ; preds = %if.end
  br label %failed, !dbg !2606

if.end10:                                         ; preds = %if.end
  %21 = load ptr, ptr %hc, align 8, !dbg !2608, !tbaa !2007
  %conf_ctx = getelementptr inbounds %struct.ngx_http_connection_t, ptr %21, i32 0, i32 1, !dbg !2609
  %22 = load ptr, ptr %conf_ctx, align 8, !dbg !2609, !tbaa !2610
  %main_conf = getelementptr inbounds %struct.ngx_http_conf_ctx_t, ptr %22, i32 0, i32 0, !dbg !2612
  %23 = load ptr, ptr %main_conf, align 8, !dbg !2612, !tbaa !2613
  %24 = load ptr, ptr %r, align 8, !dbg !2615, !tbaa !2007
  %main_conf11 = getelementptr inbounds %struct.ngx_http_request_s, ptr %24, i32 0, i32 3, !dbg !2616
  store ptr %23, ptr %main_conf11, align 8, !dbg !2617, !tbaa !2618
  %25 = load ptr, ptr %hc, align 8, !dbg !2619, !tbaa !2007
  %conf_ctx12 = getelementptr inbounds %struct.ngx_http_connection_t, ptr %25, i32 0, i32 1, !dbg !2620
  %26 = load ptr, ptr %conf_ctx12, align 8, !dbg !2620, !tbaa !2610
  %srv_conf = getelementptr inbounds %struct.ngx_http_conf_ctx_t, ptr %26, i32 0, i32 1, !dbg !2621
  %27 = load ptr, ptr %srv_conf, align 8, !dbg !2621, !tbaa !2622
  %28 = load ptr, ptr %r, align 8, !dbg !2623, !tbaa !2007
  %srv_conf13 = getelementptr inbounds %struct.ngx_http_request_s, ptr %28, i32 0, i32 4, !dbg !2624
  store ptr %27, ptr %srv_conf13, align 8, !dbg !2625, !tbaa !2626
  %29 = load ptr, ptr %hc, align 8, !dbg !2627, !tbaa !2007
  %conf_ctx14 = getelementptr inbounds %struct.ngx_http_connection_t, ptr %29, i32 0, i32 1, !dbg !2628
  %30 = load ptr, ptr %conf_ctx14, align 8, !dbg !2628, !tbaa !2610
  %loc_conf = getelementptr inbounds %struct.ngx_http_conf_ctx_t, ptr %30, i32 0, i32 2, !dbg !2629
  %31 = load ptr, ptr %loc_conf, align 8, !dbg !2629, !tbaa !2630
  %32 = load ptr, ptr %r, align 8, !dbg !2631, !tbaa !2007
  %loc_conf15 = getelementptr inbounds %struct.ngx_http_request_s, ptr %32, i32 0, i32 5, !dbg !2632
  store ptr %31, ptr %loc_conf15, align 8, !dbg !2633, !tbaa !2634
  %33 = load ptr, ptr %c, align 8, !dbg !2635, !tbaa !2007
  %log16 = getelementptr inbounds %struct.ngx_connection_s, ptr %33, i32 0, i32 10, !dbg !2636
  %34 = load ptr, ptr %log16, align 8, !dbg !2636, !tbaa !2029
  %file = getelementptr inbounds %struct.ngx_log_s, ptr %34, i32 0, i32 1, !dbg !2637
  %35 = load ptr, ptr %file, align 8, !dbg !2637, !tbaa !2638
  %36 = load ptr, ptr %fc, align 8, !dbg !2639, !tbaa !2007
  %log17 = getelementptr inbounds %struct.ngx_connection_s, ptr %36, i32 0, i32 10, !dbg !2640
  %37 = load ptr, ptr %log17, align 8, !dbg !2640, !tbaa !2029
  %file18 = getelementptr inbounds %struct.ngx_log_s, ptr %37, i32 0, i32 1, !dbg !2641
  store ptr %35, ptr %file18, align 8, !dbg !2642, !tbaa !2638
  %38 = load ptr, ptr %c, align 8, !dbg !2643, !tbaa !2007
  %log19 = getelementptr inbounds %struct.ngx_connection_s, ptr %38, i32 0, i32 10, !dbg !2644
  %39 = load ptr, ptr %log19, align 8, !dbg !2644, !tbaa !2029
  %log_level = getelementptr inbounds %struct.ngx_log_s, ptr %39, i32 0, i32 0, !dbg !2645
  %40 = load i64, ptr %log_level, align 8, !dbg !2645, !tbaa !2241
  %41 = load ptr, ptr %fc, align 8, !dbg !2646, !tbaa !2007
  %log20 = getelementptr inbounds %struct.ngx_connection_s, ptr %41, i32 0, i32 10, !dbg !2647
  %42 = load ptr, ptr %log20, align 8, !dbg !2647, !tbaa !2029
  %log_level21 = getelementptr inbounds %struct.ngx_log_s, ptr %42, i32 0, i32 0, !dbg !2648
  store i64 %40, ptr %log_level21, align 8, !dbg !2649, !tbaa !2241
  %43 = load ptr, ptr %c, align 8, !dbg !2650, !tbaa !2007
  %ssl22 = getelementptr inbounds %struct.ngx_connection_s, ptr %43, i32 0, i32 18, !dbg !2651
  %44 = load ptr, ptr %ssl22, align 8, !dbg !2651, !tbaa !2562
  %45 = load ptr, ptr %fc, align 8, !dbg !2652, !tbaa !2007
  %ssl23 = getelementptr inbounds %struct.ngx_connection_s, ptr %45, i32 0, i32 18, !dbg !2653
  store ptr %44, ptr %ssl23, align 8, !dbg !2654, !tbaa !2562
  %46 = load ptr, ptr %r, align 8, !dbg !2655, !tbaa !2007
  %loc_conf24 = getelementptr inbounds %struct.ngx_http_request_s, ptr %46, i32 0, i32 5, !dbg !2655
  %47 = load ptr, ptr %loc_conf24, align 8, !dbg !2655, !tbaa !2634
  %48 = load i64, ptr @ngx_http_core_module, align 8, !dbg !2655, !tbaa !2173
  %arrayidx = getelementptr inbounds ptr, ptr %47, i64 %48, !dbg !2655
  %49 = load ptr, ptr %arrayidx, align 8, !dbg !2655, !tbaa !2007
  store ptr %49, ptr %clcf, align 8, !dbg !2656, !tbaa !2007
  %50 = load ptr, ptr %clcf, align 8, !dbg !2657, !tbaa !2007
  %error_log = getelementptr inbounds %struct.ngx_http_core_loc_conf_s, ptr %50, i32 0, i32 72, !dbg !2657
  %51 = load ptr, ptr %error_log, align 8, !dbg !2657, !tbaa !2658
  %file25 = getelementptr inbounds %struct.ngx_log_s, ptr %51, i32 0, i32 1, !dbg !2657
  %52 = load ptr, ptr %file25, align 8, !dbg !2657, !tbaa !2638
  %53 = load ptr, ptr %fc, align 8, !dbg !2657, !tbaa !2007
  %log26 = getelementptr inbounds %struct.ngx_connection_s, ptr %53, i32 0, i32 10, !dbg !2657
  %54 = load ptr, ptr %log26, align 8, !dbg !2657, !tbaa !2029
  %file27 = getelementptr inbounds %struct.ngx_log_s, ptr %54, i32 0, i32 1, !dbg !2657
  store ptr %52, ptr %file27, align 8, !dbg !2657, !tbaa !2638
  %55 = load ptr, ptr %clcf, align 8, !dbg !2657, !tbaa !2007
  %error_log28 = getelementptr inbounds %struct.ngx_http_core_loc_conf_s, ptr %55, i32 0, i32 72, !dbg !2657
  %56 = load ptr, ptr %error_log28, align 8, !dbg !2657, !tbaa !2658
  %next = getelementptr inbounds %struct.ngx_log_s, ptr %56, i32 0, i32 9, !dbg !2657
  %57 = load ptr, ptr %next, align 8, !dbg !2657, !tbaa !2661
  %58 = load ptr, ptr %fc, align 8, !dbg !2657, !tbaa !2007
  %log29 = getelementptr inbounds %struct.ngx_connection_s, ptr %58, i32 0, i32 10, !dbg !2657
  %59 = load ptr, ptr %log29, align 8, !dbg !2657, !tbaa !2029
  %next30 = getelementptr inbounds %struct.ngx_log_s, ptr %59, i32 0, i32 9, !dbg !2657
  store ptr %57, ptr %next30, align 8, !dbg !2657, !tbaa !2661
  %60 = load ptr, ptr %clcf, align 8, !dbg !2657, !tbaa !2007
  %error_log31 = getelementptr inbounds %struct.ngx_http_core_loc_conf_s, ptr %60, i32 0, i32 72, !dbg !2657
  %61 = load ptr, ptr %error_log31, align 8, !dbg !2657, !tbaa !2658
  %writer = getelementptr inbounds %struct.ngx_log_s, ptr %61, i32 0, i32 6, !dbg !2657
  %62 = load ptr, ptr %writer, align 8, !dbg !2657, !tbaa !2662
  %63 = load ptr, ptr %fc, align 8, !dbg !2657, !tbaa !2007
  %log32 = getelementptr inbounds %struct.ngx_connection_s, ptr %63, i32 0, i32 10, !dbg !2657
  %64 = load ptr, ptr %log32, align 8, !dbg !2657, !tbaa !2029
  %writer33 = getelementptr inbounds %struct.ngx_log_s, ptr %64, i32 0, i32 6, !dbg !2657
  store ptr %62, ptr %writer33, align 8, !dbg !2657, !tbaa !2662
  %65 = load ptr, ptr %clcf, align 8, !dbg !2657, !tbaa !2007
  %error_log34 = getelementptr inbounds %struct.ngx_http_core_loc_conf_s, ptr %65, i32 0, i32 72, !dbg !2657
  %66 = load ptr, ptr %error_log34, align 8, !dbg !2657, !tbaa !2658
  %wdata = getelementptr inbounds %struct.ngx_log_s, ptr %66, i32 0, i32 7, !dbg !2657
  %67 = load ptr, ptr %wdata, align 8, !dbg !2657, !tbaa !2663
  %68 = load ptr, ptr %fc, align 8, !dbg !2657, !tbaa !2007
  %log35 = getelementptr inbounds %struct.ngx_connection_s, ptr %68, i32 0, i32 10, !dbg !2657
  %69 = load ptr, ptr %log35, align 8, !dbg !2657, !tbaa !2029
  %wdata36 = getelementptr inbounds %struct.ngx_log_s, ptr %69, i32 0, i32 7, !dbg !2657
  store ptr %67, ptr %wdata36, align 8, !dbg !2657, !tbaa !2663
  %70 = load ptr, ptr %fc, align 8, !dbg !2664, !tbaa !2007
  %log37 = getelementptr inbounds %struct.ngx_connection_s, ptr %70, i32 0, i32 10, !dbg !2664
  %71 = load ptr, ptr %log37, align 8, !dbg !2664, !tbaa !2029
  %log_level38 = getelementptr inbounds %struct.ngx_log_s, ptr %71, i32 0, i32 0, !dbg !2664
  %72 = load i64, ptr %log_level38, align 8, !dbg !2664, !tbaa !2241
  %and = and i64 %72, 2147483648, !dbg !2664
  %tobool = icmp ne i64 %and, 0, !dbg !2664
  br i1 %tobool, label %if.end44, label %if.then39, !dbg !2657

if.then39:                                        ; preds = %if.end10
  %73 = load ptr, ptr %clcf, align 8, !dbg !2666, !tbaa !2007
  %error_log40 = getelementptr inbounds %struct.ngx_http_core_loc_conf_s, ptr %73, i32 0, i32 72, !dbg !2666
  %74 = load ptr, ptr %error_log40, align 8, !dbg !2666, !tbaa !2658
  %log_level41 = getelementptr inbounds %struct.ngx_log_s, ptr %74, i32 0, i32 0, !dbg !2666
  %75 = load i64, ptr %log_level41, align 8, !dbg !2666, !tbaa !2241
  %76 = load ptr, ptr %fc, align 8, !dbg !2666, !tbaa !2007
  %log42 = getelementptr inbounds %struct.ngx_connection_s, ptr %76, i32 0, i32 10, !dbg !2666
  %77 = load ptr, ptr %log42, align 8, !dbg !2666, !tbaa !2029
  %log_level43 = getelementptr inbounds %struct.ngx_log_s, ptr %77, i32 0, i32 0, !dbg !2666
  store i64 %75, ptr %log_level43, align 8, !dbg !2666, !tbaa !2241
  br label %if.end44, !dbg !2666

if.end44:                                         ; preds = %if.then39, %if.end10
  %78 = load ptr, ptr %cctx, align 8, !dbg !2668, !tbaa !2007
  %cmp45 = icmp eq ptr %78, null, !dbg !2670
  br i1 %cmp45, label %if.then46, label %if.end51, !dbg !2671

if.then46:                                        ; preds = %if.end44
  %79 = load ptr, ptr %c, align 8, !dbg !2672, !tbaa !2007
  %pool = getelementptr inbounds %struct.ngx_connection_s, ptr %79, i32 0, i32 11, !dbg !2674
  %80 = load ptr, ptr %pool, align 8, !dbg !2674, !tbaa !2675
  %call47 = call ptr @ngx_pcalloc(ptr noundef %80, i64 noundef 56), !dbg !2676
  store ptr %call47, ptr %cctx, align 8, !dbg !2677, !tbaa !2007
  %81 = load ptr, ptr %cctx, align 8, !dbg !2678, !tbaa !2007
  %cmp48 = icmp eq ptr %81, null, !dbg !2680
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !2681

if.then49:                                        ; preds = %if.then46
  br label %failed, !dbg !2682

if.end50:                                         ; preds = %if.then46
  br label %if.end51, !dbg !2684

if.end51:                                         ; preds = %if.end50, %if.end44
  %82 = load ptr, ptr %sess.addr, align 8, !dbg !2685, !tbaa !2007
  %call52 = call ptr @SSL_SESSION_get_id(ptr noundef %82, ptr noundef %sess_id_len), !dbg !2686
  store ptr %call52, ptr %sess_id, align 8, !dbg !2687, !tbaa !2007
  %83 = load ptr, ptr %c, align 8, !dbg !2688, !tbaa !2007
  %84 = load ptr, ptr %cctx, align 8, !dbg !2689, !tbaa !2007
  %connection53 = getelementptr inbounds %struct.ngx_http_lua_ssl_ctx_t, ptr %84, i32 0, i32 0, !dbg !2690
  store ptr %83, ptr %connection53, align 8, !dbg !2691, !tbaa !2692
  %85 = load ptr, ptr %r, align 8, !dbg !2694, !tbaa !2007
  %86 = load ptr, ptr %cctx, align 8, !dbg !2695, !tbaa !2007
  %request = getelementptr inbounds %struct.ngx_http_lua_ssl_ctx_t, ptr %86, i32 0, i32 1, !dbg !2696
  store ptr %85, ptr %request, align 8, !dbg !2697, !tbaa !2698
  %87 = load ptr, ptr %sess.addr, align 8, !dbg !2699, !tbaa !2007
  %88 = load ptr, ptr %cctx, align 8, !dbg !2700, !tbaa !2007
  %session = getelementptr inbounds %struct.ngx_http_lua_ssl_ctx_t, ptr %88, i32 0, i32 3, !dbg !2701
  store ptr %87, ptr %session, align 8, !dbg !2702, !tbaa !2703
  %89 = load ptr, ptr %sess_id, align 8, !dbg !2704, !tbaa !2007
  %90 = load ptr, ptr %cctx, align 8, !dbg !2705, !tbaa !2007
  %session_id = getelementptr inbounds %struct.ngx_http_lua_ssl_ctx_t, ptr %90, i32 0, i32 4, !dbg !2706
  %data54 = getelementptr inbounds %struct.ngx_str_t, ptr %session_id, i32 0, i32 1, !dbg !2707
  store ptr %89, ptr %data54, align 8, !dbg !2708, !tbaa !2709
  %91 = load i32, ptr %sess_id_len, align 4, !dbg !2710, !tbaa !2559
  %conv = zext i32 %91 to i64, !dbg !2710
  %92 = load ptr, ptr %cctx, align 8, !dbg !2711, !tbaa !2007
  %session_id55 = getelementptr inbounds %struct.ngx_http_lua_ssl_ctx_t, ptr %92, i32 0, i32 4, !dbg !2712
  %len = getelementptr inbounds %struct.ngx_str_t, ptr %session_id55, i32 0, i32 0, !dbg !2713
  store i64 %conv, ptr %len, align 8, !dbg !2714, !tbaa !2715
  %93 = load ptr, ptr %cctx, align 8, !dbg !2716, !tbaa !2007
  %done = getelementptr inbounds %struct.ngx_http_lua_ssl_ctx_t, ptr %93, i32 0, i32 6, !dbg !2717
  %bf.load = load i8, ptr %done, align 4, !dbg !2718
  %bf.clear = and i8 %bf.load, -2, !dbg !2718
  %bf.set = or i8 %bf.clear, 0, !dbg !2718
  store i8 %bf.set, ptr %done, align 4, !dbg !2718
  %94 = load ptr, ptr %c, align 8, !dbg !2719, !tbaa !2007
  %ssl56 = getelementptr inbounds %struct.ngx_connection_s, ptr %94, i32 0, i32 18, !dbg !2721
  %95 = load ptr, ptr %ssl56, align 8, !dbg !2721, !tbaa !2562
  %connection57 = getelementptr inbounds %struct.ngx_ssl_connection_s, ptr %95, i32 0, i32 0, !dbg !2722
  %96 = load ptr, ptr %connection57, align 8, !dbg !2722, !tbaa !2563
  %97 = load i32, ptr @ngx_http_lua_ssl_ctx_index, align 4, !dbg !2723, !tbaa !2559
  %98 = load ptr, ptr %cctx, align 8, !dbg !2724, !tbaa !2007
  %call58 = call i32 @SSL_set_ex_data(ptr noundef %96, i32 noundef %97, ptr noundef %98), !dbg !2725
  %cmp59 = icmp eq i32 %call58, 0, !dbg !2726
  br i1 %cmp59, label %if.then61, label %if.end63, !dbg !2727

if.then61:                                        ; preds = %if.end51
  %99 = load ptr, ptr %c, align 8, !dbg !2728, !tbaa !2007
  %log62 = getelementptr inbounds %struct.ngx_connection_s, ptr %99, i32 0, i32 10, !dbg !2730
  %100 = load ptr, ptr %log62, align 8, !dbg !2730, !tbaa !2029
  call void (i64, ptr, i32, ptr, ...) @ngx_ssl_error(i64 noundef 2, ptr noundef %100, i32 noundef 0, ptr noundef @.str.5), !dbg !2731
  br label %failed, !dbg !2732

if.end63:                                         ; preds = %if.end51
  %101 = load ptr, ptr %r, align 8, !dbg !2733, !tbaa !2007
  %srv_conf64 = getelementptr inbounds %struct.ngx_http_request_s, ptr %101, i32 0, i32 4, !dbg !2733
  %102 = load ptr, ptr %srv_conf64, align 8, !dbg !2733, !tbaa !2626
  %103 = load i64, ptr @ngx_http_lua_module, align 8, !dbg !2733, !tbaa !2173
  %arrayidx65 = getelementptr inbounds ptr, ptr %102, i64 %103, !dbg !2733
  %104 = load ptr, ptr %arrayidx65, align 8, !dbg !2733, !tbaa !2007
  store ptr %104, ptr %lscf, align 8, !dbg !2734, !tbaa !2007
  %105 = load ptr, ptr %r, align 8, !dbg !2735, !tbaa !2007
  %call66 = call ptr @ngx_http_lua_get_lua_vm(ptr noundef %105, ptr noundef null), !dbg !2736
  store ptr %call66, ptr %L, align 8, !dbg !2737, !tbaa !2007
  %106 = load ptr, ptr %c, align 8, !dbg !2738, !tbaa !2007
  %log67 = getelementptr inbounds %struct.ngx_connection_s, ptr %106, i32 0, i32 10, !dbg !2739
  %107 = load ptr, ptr %log67, align 8, !dbg !2739, !tbaa !2029
  %action = getelementptr inbounds %struct.ngx_log_s, ptr %107, i32 0, i32 8, !dbg !2740
  store ptr @.str.6, ptr %action, align 8, !dbg !2741, !tbaa !2742
  %108 = load ptr, ptr %lscf, align 8, !dbg !2743, !tbaa !2007
  %ssl_sess_store_handler = getelementptr inbounds %struct.anon, ptr %108, i32 0, i32 3, !dbg !2744
  %109 = load ptr, ptr %ssl_sess_store_handler, align 8, !dbg !2744, !tbaa !2037
  %110 = load ptr, ptr %r, align 8, !dbg !2745, !tbaa !2007
  %111 = load ptr, ptr %lscf, align 8, !dbg !2746, !tbaa !2007
  %112 = load ptr, ptr %L, align 8, !dbg !2747, !tbaa !2007
  %call68 = call i64 %109(ptr noundef %110, ptr noundef %111, ptr noundef %112), !dbg !2743
  store i64 %call68, ptr %rc, align 8, !dbg !2748, !tbaa !2042
  %113 = load i64, ptr %rc, align 8, !dbg !2749, !tbaa !2042
  %cmp69 = icmp sge i64 %113, 0, !dbg !2751
  br i1 %cmp69, label %if.then73, label %lor.lhs.false, !dbg !2752

lor.lhs.false:                                    ; preds = %if.end63
  %114 = load i64, ptr %rc, align 8, !dbg !2753, !tbaa !2042
  %cmp71 = icmp eq i64 %114, -1, !dbg !2754
  br i1 %cmp71, label %if.then73, label %if.end80, !dbg !2755

if.then73:                                        ; preds = %lor.lhs.false, %if.end63
  %115 = load ptr, ptr %cctx, align 8, !dbg !2756, !tbaa !2007
  %done74 = getelementptr inbounds %struct.ngx_http_lua_ssl_ctx_t, ptr %115, i32 0, i32 6, !dbg !2758
  %bf.load75 = load i8, ptr %done74, align 4, !dbg !2759
  %bf.clear76 = and i8 %bf.load75, -2, !dbg !2759
  %bf.set77 = or i8 %bf.clear76, 1, !dbg !2759
  store i8 %bf.set77, ptr %done74, align 4, !dbg !2759
  %116 = load ptr, ptr %c, align 8, !dbg !2760, !tbaa !2007
  %log78 = getelementptr inbounds %struct.ngx_connection_s, ptr %116, i32 0, i32 10, !dbg !2761
  %117 = load ptr, ptr %log78, align 8, !dbg !2761, !tbaa !2029
  %action79 = getelementptr inbounds %struct.ngx_log_s, ptr %117, i32 0, i32 8, !dbg !2762
  store ptr @.str.7, ptr %action79, align 8, !dbg !2763, !tbaa !2742
  store i32 0, ptr %retval, align 4, !dbg !2764
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2764

if.end80:                                         ; preds = %lor.lhs.false
  br label %failed, !dbg !2765

failed:                                           ; preds = %if.end80, %if.then61, %if.then49, %if.then9, %if.then
    #dbg_label(!2534, !2766)
  %118 = load ptr, ptr %r, align 8, !dbg !2767, !tbaa !2007
  %tobool81 = icmp ne ptr %118, null, !dbg !2767
  br i1 %tobool81, label %land.lhs.true, label %if.end85, !dbg !2769

land.lhs.true:                                    ; preds = %failed
  %119 = load ptr, ptr %r, align 8, !dbg !2770, !tbaa !2007
  %pool82 = getelementptr inbounds %struct.ngx_http_request_s, ptr %119, i32 0, i32 11, !dbg !2771
  %120 = load ptr, ptr %pool82, align 8, !dbg !2771, !tbaa !2772
  %tobool83 = icmp ne ptr %120, null, !dbg !2770
  br i1 %tobool83, label %if.then84, label %if.end85, !dbg !2773

if.then84:                                        ; preds = %land.lhs.true
  %121 = load ptr, ptr %r, align 8, !dbg !2774, !tbaa !2007
  call void @ngx_http_lua_free_fake_request(ptr noundef %121), !dbg !2776
  br label %if.end85, !dbg !2777

if.end85:                                         ; preds = %if.then84, %land.lhs.true, %failed
  %122 = load ptr, ptr %fc, align 8, !dbg !2778, !tbaa !2007
  %tobool86 = icmp ne ptr %122, null, !dbg !2778
  br i1 %tobool86, label %if.then87, label %if.end88, !dbg !2780

if.then87:                                        ; preds = %if.end85
  %123 = load ptr, ptr %fc, align 8, !dbg !2781, !tbaa !2007
  call void @ngx_http_lua_close_fake_connection(ptr noundef %123), !dbg !2783
  br label %if.end88, !dbg !2784

if.end88:                                         ; preds = %if.then87, %if.end85
  store i32 0, ptr %retval, align 4, !dbg !2785
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2785

cleanup:                                          ; preds = %if.end88, %if.then73
  call void @llvm.lifetime.end.p0(i64 8, ptr %clcf) #7, !dbg !2786
  call void @llvm.lifetime.end.p0(i64 8, ptr %lscf) #7, !dbg !2786
  call void @llvm.lifetime.end.p0(i64 8, ptr %cctx) #7, !dbg !2786
  call void @llvm.lifetime.end.p0(i64 8, ptr %hc) #7, !dbg !2786
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #7, !dbg !2786
  call void @llvm.lifetime.end.p0(i64 8, ptr %fc) #7, !dbg !2786
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #7, !dbg !2786
  call void @llvm.lifetime.end.p0(i64 8, ptr %rc) #7, !dbg !2786
  call void @llvm.lifetime.end.p0(i64 8, ptr %L) #7, !dbg !2786
  call void @llvm.lifetime.end.p0(i64 4, ptr %sess_id_len) #7, !dbg !2786
  call void @llvm.lifetime.end.p0(i64 8, ptr %sess_id) #7, !dbg !2786
  %124 = load i32, ptr %retval, align 4, !dbg !2786
  ret i32 %124, !dbg !2786
}

declare !dbg !2787 ptr @SSL_get_ex_data(ptr noundef, i32 noundef) #2

declare !dbg !2792 ptr @ngx_http_lua_create_fake_connection(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @ngx_http_lua_log_ssl_sess_store_error(ptr noundef %log, ptr noundef %buf, i64 noundef %len) #0 !dbg !2795 {
entry:
  %log.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %p = alloca ptr, align 8
  %c = alloca ptr, align 8
  store ptr %log, ptr %log.addr, align 8, !tbaa !2007
    #dbg_declare(ptr %log.addr, !2797, !DIExpression(), !2802)
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !2007
    #dbg_declare(ptr %buf.addr, !2798, !DIExpression(), !2803)
  store i64 %len, ptr %len.addr, align 8, !tbaa !2042
    #dbg_declare(ptr %len.addr, !2799, !DIExpression(), !2804)
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #7, !dbg !2805
    #dbg_declare(ptr %p, !2800, !DIExpression(), !2806)
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #7, !dbg !2807
    #dbg_declare(ptr %c, !2801, !DIExpression(), !2808)
  %0 = load ptr, ptr %log.addr, align 8, !dbg !2809, !tbaa !2007
  %action = getelementptr inbounds %struct.ngx_log_s, ptr %0, i32 0, i32 8, !dbg !2811
  %1 = load ptr, ptr %action, align 8, !dbg !2811, !tbaa !2742
  %tobool = icmp ne ptr %1, null, !dbg !2809
  br i1 %tobool, label %if.then, label %if.end, !dbg !2812

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !2813, !tbaa !2007
  %3 = load i64, ptr %len.addr, align 8, !dbg !2815, !tbaa !2042
  %4 = load ptr, ptr %log.addr, align 8, !dbg !2816, !tbaa !2007
  %action1 = getelementptr inbounds %struct.ngx_log_s, ptr %4, i32 0, i32 8, !dbg !2817
  %5 = load ptr, ptr %action1, align 8, !dbg !2817, !tbaa !2742
  %call = call ptr (ptr, i64, ptr, ...) @ngx_snprintf(ptr noundef %2, i64 noundef %3, ptr noundef @.str.15, ptr noundef %5), !dbg !2818
  store ptr %call, ptr %p, align 8, !dbg !2819, !tbaa !2007
  %6 = load ptr, ptr %p, align 8, !dbg !2820, !tbaa !2007
  %7 = load ptr, ptr %buf.addr, align 8, !dbg !2821, !tbaa !2007
  %sub.ptr.lhs.cast = ptrtoint ptr %6 to i64, !dbg !2822
  %sub.ptr.rhs.cast = ptrtoint ptr %7 to i64, !dbg !2822
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2822
  %8 = load i64, ptr %len.addr, align 8, !dbg !2823, !tbaa !2042
  %sub = sub i64 %8, %sub.ptr.sub, !dbg !2823
  store i64 %sub, ptr %len.addr, align 8, !dbg !2823, !tbaa !2042
  %9 = load ptr, ptr %p, align 8, !dbg !2824, !tbaa !2007
  store ptr %9, ptr %buf.addr, align 8, !dbg !2825, !tbaa !2007
  br label %if.end, !dbg !2826

if.end:                                           ; preds = %if.then, %entry
  %10 = load ptr, ptr %buf.addr, align 8, !dbg !2827, !tbaa !2007
  %11 = load i64, ptr %len.addr, align 8, !dbg !2828, !tbaa !2042
  %call2 = call ptr (ptr, i64, ptr, ...) @ngx_snprintf(ptr noundef %10, i64 noundef %11, ptr noundef @.str.16), !dbg !2829
  store ptr %call2, ptr %p, align 8, !dbg !2830, !tbaa !2007
  %12 = load ptr, ptr %p, align 8, !dbg !2831, !tbaa !2007
  %13 = load ptr, ptr %buf.addr, align 8, !dbg !2832, !tbaa !2007
  %sub.ptr.lhs.cast3 = ptrtoint ptr %12 to i64, !dbg !2833
  %sub.ptr.rhs.cast4 = ptrtoint ptr %13 to i64, !dbg !2833
  %sub.ptr.sub5 = sub i64 %sub.ptr.lhs.cast3, %sub.ptr.rhs.cast4, !dbg !2833
  %14 = load i64, ptr %len.addr, align 8, !dbg !2834, !tbaa !2042
  %sub6 = sub i64 %14, %sub.ptr.sub5, !dbg !2834
  store i64 %sub6, ptr %len.addr, align 8, !dbg !2834, !tbaa !2042
  %15 = load ptr, ptr %p, align 8, !dbg !2835, !tbaa !2007
  store ptr %15, ptr %buf.addr, align 8, !dbg !2836, !tbaa !2007
  %16 = load ptr, ptr %log.addr, align 8, !dbg !2837, !tbaa !2007
  %data = getelementptr inbounds %struct.ngx_log_s, ptr %16, i32 0, i32 5, !dbg !2838
  %17 = load ptr, ptr %data, align 8, !dbg !2838, !tbaa !2588
  store ptr %17, ptr %c, align 8, !dbg !2839, !tbaa !2007
  %18 = load ptr, ptr %c, align 8, !dbg !2840, !tbaa !2007
  %addr_text = getelementptr inbounds %struct.ngx_connection_s, ptr %18, i32 0, i32 15, !dbg !2842
  %len7 = getelementptr inbounds %struct.ngx_str_t, ptr %addr_text, i32 0, i32 0, !dbg !2843
  %19 = load i64, ptr %len7, align 8, !dbg !2843, !tbaa !2844
  %tobool8 = icmp ne i64 %19, 0, !dbg !2840
  br i1 %tobool8, label %if.then9, label %if.end16, !dbg !2845

if.then9:                                         ; preds = %if.end
  %20 = load ptr, ptr %buf.addr, align 8, !dbg !2846, !tbaa !2007
  %21 = load i64, ptr %len.addr, align 8, !dbg !2848, !tbaa !2042
  %22 = load ptr, ptr %c, align 8, !dbg !2849, !tbaa !2007
  %addr_text10 = getelementptr inbounds %struct.ngx_connection_s, ptr %22, i32 0, i32 15, !dbg !2850
  %call11 = call ptr (ptr, i64, ptr, ...) @ngx_snprintf(ptr noundef %20, i64 noundef %21, ptr noundef @.str.17, ptr noundef %addr_text10), !dbg !2851
  store ptr %call11, ptr %p, align 8, !dbg !2852, !tbaa !2007
  %23 = load ptr, ptr %p, align 8, !dbg !2853, !tbaa !2007
  %24 = load ptr, ptr %buf.addr, align 8, !dbg !2854, !tbaa !2007
  %sub.ptr.lhs.cast12 = ptrtoint ptr %23 to i64, !dbg !2855
  %sub.ptr.rhs.cast13 = ptrtoint ptr %24 to i64, !dbg !2855
  %sub.ptr.sub14 = sub i64 %sub.ptr.lhs.cast12, %sub.ptr.rhs.cast13, !dbg !2855
  %25 = load i64, ptr %len.addr, align 8, !dbg !2856, !tbaa !2042
  %sub15 = sub i64 %25, %sub.ptr.sub14, !dbg !2856
  store i64 %sub15, ptr %len.addr, align 8, !dbg !2856, !tbaa !2042
  %26 = load ptr, ptr %p, align 8, !dbg !2857, !tbaa !2007
  store ptr %26, ptr %buf.addr, align 8, !dbg !2858, !tbaa !2007
  br label %if.end16, !dbg !2859

if.end16:                                         ; preds = %if.then9, %if.end
  %27 = load ptr, ptr %c, align 8, !dbg !2860, !tbaa !2007
  %tobool17 = icmp ne ptr %27, null, !dbg !2860
  br i1 %tobool17, label %land.lhs.true, label %if.end28, !dbg !2862

land.lhs.true:                                    ; preds = %if.end16
  %28 = load ptr, ptr %c, align 8, !dbg !2863, !tbaa !2007
  %listening = getelementptr inbounds %struct.ngx_connection_s, ptr %28, i32 0, i32 8, !dbg !2864
  %29 = load ptr, ptr %listening, align 8, !dbg !2864, !tbaa !2595
  %tobool18 = icmp ne ptr %29, null, !dbg !2863
  br i1 %tobool18, label %land.lhs.true19, label %if.end28, !dbg !2865

land.lhs.true19:                                  ; preds = %land.lhs.true
  %30 = load ptr, ptr %c, align 8, !dbg !2866, !tbaa !2007
  %listening20 = getelementptr inbounds %struct.ngx_connection_s, ptr %30, i32 0, i32 8, !dbg !2867
  %31 = load ptr, ptr %listening20, align 8, !dbg !2867, !tbaa !2595
  %addr_text21 = getelementptr inbounds %struct.ngx_listening_s, ptr %31, i32 0, i32 4, !dbg !2868
  %len22 = getelementptr inbounds %struct.ngx_str_t, ptr %addr_text21, i32 0, i32 0, !dbg !2869
  %32 = load i64, ptr %len22, align 8, !dbg !2869, !tbaa !2870
  %tobool23 = icmp ne i64 %32, 0, !dbg !2866
  br i1 %tobool23, label %if.then24, label %if.end28, !dbg !2873

if.then24:                                        ; preds = %land.lhs.true19
  %33 = load ptr, ptr %buf.addr, align 8, !dbg !2874, !tbaa !2007
  %34 = load i64, ptr %len.addr, align 8, !dbg !2876, !tbaa !2042
  %35 = load ptr, ptr %c, align 8, !dbg !2877, !tbaa !2007
  %listening25 = getelementptr inbounds %struct.ngx_connection_s, ptr %35, i32 0, i32 8, !dbg !2878
  %36 = load ptr, ptr %listening25, align 8, !dbg !2878, !tbaa !2595
  %addr_text26 = getelementptr inbounds %struct.ngx_listening_s, ptr %36, i32 0, i32 4, !dbg !2879
  %call27 = call ptr (ptr, i64, ptr, ...) @ngx_snprintf(ptr noundef %33, i64 noundef %34, ptr noundef @.str.18, ptr noundef %addr_text26), !dbg !2880
  store ptr %call27, ptr %p, align 8, !dbg !2881, !tbaa !2007
  %37 = load ptr, ptr %p, align 8, !dbg !2882, !tbaa !2007
  store ptr %37, ptr %buf.addr, align 8, !dbg !2883, !tbaa !2007
  br label %if.end28, !dbg !2884

if.end28:                                         ; preds = %if.then24, %land.lhs.true19, %land.lhs.true, %if.end16
  %38 = load ptr, ptr %buf.addr, align 8, !dbg !2885, !tbaa !2007
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #7, !dbg !2886
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #7, !dbg !2886
  ret ptr %38, !dbg !2887
}

declare !dbg !2888 ptr @ngx_http_lua_create_fake_request(ptr noundef) #2

declare !dbg !2891 ptr @ngx_pcalloc(ptr noundef, i64 noundef) #2

declare !dbg !2892 ptr @SSL_SESSION_get_id(ptr noundef, ptr noundef) #2

declare !dbg !2900 i32 @SSL_set_ex_data(ptr noundef, i32 noundef, ptr noundef) #2

declare !dbg !2903 void @ngx_ssl_error(i64 noundef, ptr noundef, i32 noundef, ptr noundef, ...) #2

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @ngx_http_lua_get_lua_vm(ptr noundef %r, ptr noundef %ctx) #5 !dbg !2908 {
entry:
  %retval = alloca ptr, align 8
  %r.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %lmcf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !2007
    #dbg_declare(ptr %r.addr, !2912, !DIExpression(), !2971)
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !2007
    #dbg_declare(ptr %ctx.addr, !2913, !DIExpression(), !2972)
  call void @llvm.lifetime.start.p0(i64 8, ptr %lmcf) #7, !dbg !2973
    #dbg_declare(ptr %lmcf, !2914, !DIExpression(), !2974)
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !2975, !tbaa !2007
  %cmp = icmp eq ptr %0, null, !dbg !2977
  br i1 %cmp, label %if.then, label %if.end, !dbg !2978

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %r.addr, align 8, !dbg !2979, !tbaa !2007
  %ctx1 = getelementptr inbounds %struct.ngx_http_request_s, ptr %1, i32 0, i32 2, !dbg !2979
  %2 = load ptr, ptr %ctx1, align 8, !dbg !2979, !tbaa !2172
  %3 = load i64, ptr @ngx_http_lua_module, align 8, !dbg !2979, !tbaa !2173
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %3, !dbg !2979
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !2979, !tbaa !2007
  store ptr %4, ptr %ctx.addr, align 8, !dbg !2981, !tbaa !2007
  br label %if.end, !dbg !2982

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %ctx.addr, align 8, !dbg !2983, !tbaa !2007
  %tobool = icmp ne ptr %5, null, !dbg !2983
  br i1 %tobool, label %land.lhs.true, label %if.end5, !dbg !2985

land.lhs.true:                                    ; preds = %if.end
  %6 = load ptr, ptr %ctx.addr, align 8, !dbg !2986, !tbaa !2007
  %vm_state = getelementptr inbounds %struct.ngx_http_lua_ctx_s, ptr %6, i32 0, i32 0, !dbg !2987
  %7 = load ptr, ptr %vm_state, align 8, !dbg !2987, !tbaa !2988
  %tobool2 = icmp ne ptr %7, null, !dbg !2986
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !2989

if.then3:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %ctx.addr, align 8, !dbg !2990, !tbaa !2007
  %vm_state4 = getelementptr inbounds %struct.ngx_http_lua_ctx_s, ptr %8, i32 0, i32 0, !dbg !2992
  %9 = load ptr, ptr %vm_state4, align 8, !dbg !2992, !tbaa !2988
  %vm = getelementptr inbounds %struct.ngx_http_lua_vm_state_t, ptr %9, i32 0, i32 0, !dbg !2993
  %10 = load ptr, ptr %vm, align 8, !dbg !2993, !tbaa !2994
  store ptr %10, ptr %retval, align 8, !dbg !2995
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2995

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !2996, !tbaa !2007
  %main_conf = getelementptr inbounds %struct.ngx_http_request_s, ptr %11, i32 0, i32 3, !dbg !2996
  %12 = load ptr, ptr %main_conf, align 8, !dbg !2996, !tbaa !2618
  %13 = load i64, ptr @ngx_http_lua_module, align 8, !dbg !2996, !tbaa !2173
  %arrayidx6 = getelementptr inbounds ptr, ptr %12, i64 %13, !dbg !2996
  %14 = load ptr, ptr %arrayidx6, align 8, !dbg !2996, !tbaa !2007
  store ptr %14, ptr %lmcf, align 8, !dbg !2997, !tbaa !2007
  %15 = load ptr, ptr %lmcf, align 8, !dbg !2998, !tbaa !2007
  %lua = getelementptr inbounds %struct.ngx_http_lua_main_conf_s, ptr %15, i32 0, i32 0, !dbg !2999
  %16 = load ptr, ptr %lua, align 8, !dbg !2999, !tbaa !3000
  store ptr %16, ptr %retval, align 8, !dbg !3002
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3002

cleanup:                                          ; preds = %if.end5, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %lmcf) #7, !dbg !3003
  %17 = load ptr, ptr %retval, align 8, !dbg !3003
  ret ptr %17, !dbg !3003
}

declare !dbg !3004 void @ngx_http_lua_free_fake_request(ptr noundef) #2

declare !dbg !3005 void @ngx_http_lua_close_fake_connection(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @ngx_http_lua_ffi_ssl_get_serialized_session(ptr noundef %r, ptr noundef %buf, ptr noundef %err) #0 !dbg !3006 {
entry:
  %retval = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %ssl_conn = alloca ptr, align 8
  %c = alloca ptr, align 8
  %session = alloca ptr, align 8
  %cctx = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !2007
    #dbg_declare(ptr %r.addr, !3011, !DIExpression(), !3018)
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !2007
    #dbg_declare(ptr %buf.addr, !3012, !DIExpression(), !3019)
  store ptr %err, ptr %err.addr, align 8, !tbaa !2007
    #dbg_declare(ptr %err.addr, !3013, !DIExpression(), !3020)
  call void @llvm.lifetime.start.p0(i64 8, ptr %ssl_conn) #7, !dbg !3021
    #dbg_declare(ptr %ssl_conn, !3014, !DIExpression(), !3022)
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #7, !dbg !3023
    #dbg_declare(ptr %c, !3015, !DIExpression(), !3024)
  call void @llvm.lifetime.start.p0(i64 8, ptr %session) #7, !dbg !3025
    #dbg_declare(ptr %session, !3016, !DIExpression(), !3026)
  call void @llvm.lifetime.start.p0(i64 8, ptr %cctx) #7, !dbg !3027
    #dbg_declare(ptr %cctx, !3017, !DIExpression(), !3028)
  %0 = load ptr, ptr %r.addr, align 8, !dbg !3029, !tbaa !2007
  %connection = getelementptr inbounds %struct.ngx_http_request_s, ptr %0, i32 0, i32 1, !dbg !3030
  %1 = load ptr, ptr %connection, align 8, !dbg !3030, !tbaa !2018
  store ptr %1, ptr %c, align 8, !dbg !3031, !tbaa !2007
  %2 = load ptr, ptr %c, align 8, !dbg !3032, !tbaa !2007
  %cmp = icmp eq ptr %2, null, !dbg !3034
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3035

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %c, align 8, !dbg !3036, !tbaa !2007
  %ssl = getelementptr inbounds %struct.ngx_connection_s, ptr %3, i32 0, i32 18, !dbg !3037
  %4 = load ptr, ptr %ssl, align 8, !dbg !3037, !tbaa !2562
  %cmp1 = icmp eq ptr %4, null, !dbg !3038
  br i1 %cmp1, label %if.then, label %if.end, !dbg !3039

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load ptr, ptr %err.addr, align 8, !dbg !3040, !tbaa !2007
  store ptr @.str.8, ptr %5, align 8, !dbg !3042, !tbaa !2007
  store i32 -1, ptr %retval, align 4, !dbg !3043
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3043

if.end:                                           ; preds = %lor.lhs.false
  %6 = load ptr, ptr %c, align 8, !dbg !3044, !tbaa !2007
  %ssl2 = getelementptr inbounds %struct.ngx_connection_s, ptr %6, i32 0, i32 18, !dbg !3045
  %7 = load ptr, ptr %ssl2, align 8, !dbg !3045, !tbaa !2562
  %connection3 = getelementptr inbounds %struct.ngx_ssl_connection_s, ptr %7, i32 0, i32 0, !dbg !3046
  %8 = load ptr, ptr %connection3, align 8, !dbg !3046, !tbaa !2563
  store ptr %8, ptr %ssl_conn, align 8, !dbg !3047, !tbaa !2007
  %9 = load ptr, ptr %ssl_conn, align 8, !dbg !3048, !tbaa !2007
  %cmp4 = icmp eq ptr %9, null, !dbg !3050
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !3051

if.then5:                                         ; preds = %if.end
  %10 = load ptr, ptr %err.addr, align 8, !dbg !3052, !tbaa !2007
  store ptr @.str.9, ptr %10, align 8, !dbg !3054, !tbaa !2007
  store i32 -1, ptr %retval, align 4, !dbg !3055
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3055

if.end6:                                          ; preds = %if.end
  %11 = load ptr, ptr %c, align 8, !dbg !3056, !tbaa !2007
  %ssl7 = getelementptr inbounds %struct.ngx_connection_s, ptr %11, i32 0, i32 18, !dbg !3056
  %12 = load ptr, ptr %ssl7, align 8, !dbg !3056, !tbaa !2562
  %connection8 = getelementptr inbounds %struct.ngx_ssl_connection_s, ptr %12, i32 0, i32 0, !dbg !3056
  %13 = load ptr, ptr %connection8, align 8, !dbg !3056, !tbaa !2563
  %14 = load i32, ptr @ngx_http_lua_ssl_ctx_index, align 4, !dbg !3056, !tbaa !2559
  %call = call ptr @SSL_get_ex_data(ptr noundef %13, i32 noundef %14), !dbg !3056
  store ptr %call, ptr %cctx, align 8, !dbg !3057, !tbaa !2007
  %15 = load ptr, ptr %cctx, align 8, !dbg !3058, !tbaa !2007
  %cmp9 = icmp eq ptr %15, null, !dbg !3060
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !3061

if.then10:                                        ; preds = %if.end6
  %16 = load ptr, ptr %err.addr, align 8, !dbg !3062, !tbaa !2007
  store ptr @.str.10, ptr %16, align 8, !dbg !3064, !tbaa !2007
  store i32 -1, ptr %retval, align 4, !dbg !3065
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3065

if.end11:                                         ; preds = %if.end6
  %17 = load ptr, ptr %cctx, align 8, !dbg !3066, !tbaa !2007
  %session12 = getelementptr inbounds %struct.ngx_http_lua_ssl_ctx_t, ptr %17, i32 0, i32 3, !dbg !3067
  %18 = load ptr, ptr %session12, align 8, !dbg !3067, !tbaa !2703
  store ptr %18, ptr %session, align 8, !dbg !3068, !tbaa !2007
  %19 = load ptr, ptr %session, align 8, !dbg !3069, !tbaa !2007
  %cmp13 = icmp eq ptr %19, null, !dbg !3071
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !3072

if.then14:                                        ; preds = %if.end11
  %20 = load ptr, ptr %err.addr, align 8, !dbg !3073, !tbaa !2007
  store ptr @.str.11, ptr %20, align 8, !dbg !3075, !tbaa !2007
  store i32 -1, ptr %retval, align 4, !dbg !3076
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3076

if.end15:                                         ; preds = %if.end11
  %21 = load ptr, ptr %session, align 8, !dbg !3077, !tbaa !2007
  %call16 = call i32 @i2d_SSL_SESSION(ptr noundef %21, ptr noundef %buf.addr), !dbg !3079
  %cmp17 = icmp eq i32 %call16, 0, !dbg !3080
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !3081

if.then18:                                        ; preds = %if.end15
  %22 = load ptr, ptr %err.addr, align 8, !dbg !3082, !tbaa !2007
  store ptr @.str.12, ptr %22, align 8, !dbg !3084, !tbaa !2007
  store i32 -1, ptr %retval, align 4, !dbg !3085
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3085

if.end19:                                         ; preds = %if.end15
  store i32 0, ptr %retval, align 4, !dbg !3086
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3086

cleanup:                                          ; preds = %if.end19, %if.then18, %if.then14, %if.then10, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cctx) #7, !dbg !3087
  call void @llvm.lifetime.end.p0(i64 8, ptr %session) #7, !dbg !3087
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #7, !dbg !3087
  call void @llvm.lifetime.end.p0(i64 8, ptr %ssl_conn) #7, !dbg !3087
  %23 = load i32, ptr %retval, align 4, !dbg !3087
  ret i32 %23, !dbg !3087
}

declare !dbg !3088 i32 @i2d_SSL_SESSION(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @ngx_http_lua_ffi_ssl_get_serialized_session_size(ptr noundef %r, ptr noundef %err) #0 !dbg !3093 {
entry:
  %retval = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  %ssl_conn = alloca ptr, align 8
  %c = alloca ptr, align 8
  %session = alloca ptr, align 8
  %cctx = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !2007
    #dbg_declare(ptr %r.addr, !3097, !DIExpression(), !3104)
  store ptr %err, ptr %err.addr, align 8, !tbaa !2007
    #dbg_declare(ptr %err.addr, !3098, !DIExpression(), !3105)
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #7, !dbg !3106
    #dbg_declare(ptr %len, !3099, !DIExpression(), !3107)
  call void @llvm.lifetime.start.p0(i64 8, ptr %ssl_conn) #7, !dbg !3108
    #dbg_declare(ptr %ssl_conn, !3100, !DIExpression(), !3109)
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #7, !dbg !3110
    #dbg_declare(ptr %c, !3101, !DIExpression(), !3111)
  call void @llvm.lifetime.start.p0(i64 8, ptr %session) #7, !dbg !3112
    #dbg_declare(ptr %session, !3102, !DIExpression(), !3113)
  call void @llvm.lifetime.start.p0(i64 8, ptr %cctx) #7, !dbg !3114
    #dbg_declare(ptr %cctx, !3103, !DIExpression(), !3115)
  %0 = load ptr, ptr %r.addr, align 8, !dbg !3116, !tbaa !2007
  %connection = getelementptr inbounds %struct.ngx_http_request_s, ptr %0, i32 0, i32 1, !dbg !3117
  %1 = load ptr, ptr %connection, align 8, !dbg !3117, !tbaa !2018
  store ptr %1, ptr %c, align 8, !dbg !3118, !tbaa !2007
  %2 = load ptr, ptr %c, align 8, !dbg !3119, !tbaa !2007
  %cmp = icmp eq ptr %2, null, !dbg !3121
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3122

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %c, align 8, !dbg !3123, !tbaa !2007
  %ssl = getelementptr inbounds %struct.ngx_connection_s, ptr %3, i32 0, i32 18, !dbg !3124
  %4 = load ptr, ptr %ssl, align 8, !dbg !3124, !tbaa !2562
  %cmp1 = icmp eq ptr %4, null, !dbg !3125
  br i1 %cmp1, label %if.then, label %if.end, !dbg !3126

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load ptr, ptr %err.addr, align 8, !dbg !3127, !tbaa !2007
  store ptr @.str.8, ptr %5, align 8, !dbg !3129, !tbaa !2007
  store i32 -1, ptr %retval, align 4, !dbg !3130
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3130

if.end:                                           ; preds = %lor.lhs.false
  %6 = load ptr, ptr %c, align 8, !dbg !3131, !tbaa !2007
  %ssl2 = getelementptr inbounds %struct.ngx_connection_s, ptr %6, i32 0, i32 18, !dbg !3132
  %7 = load ptr, ptr %ssl2, align 8, !dbg !3132, !tbaa !2562
  %connection3 = getelementptr inbounds %struct.ngx_ssl_connection_s, ptr %7, i32 0, i32 0, !dbg !3133
  %8 = load ptr, ptr %connection3, align 8, !dbg !3133, !tbaa !2563
  store ptr %8, ptr %ssl_conn, align 8, !dbg !3134, !tbaa !2007
  %9 = load ptr, ptr %ssl_conn, align 8, !dbg !3135, !tbaa !2007
  %cmp4 = icmp eq ptr %9, null, !dbg !3137
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !3138

if.then5:                                         ; preds = %if.end
  %10 = load ptr, ptr %err.addr, align 8, !dbg !3139, !tbaa !2007
  store ptr @.str.9, ptr %10, align 8, !dbg !3141, !tbaa !2007
  store i32 -1, ptr %retval, align 4, !dbg !3142
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3142

if.end6:                                          ; preds = %if.end
  %11 = load ptr, ptr %c, align 8, !dbg !3143, !tbaa !2007
  %ssl7 = getelementptr inbounds %struct.ngx_connection_s, ptr %11, i32 0, i32 18, !dbg !3143
  %12 = load ptr, ptr %ssl7, align 8, !dbg !3143, !tbaa !2562
  %connection8 = getelementptr inbounds %struct.ngx_ssl_connection_s, ptr %12, i32 0, i32 0, !dbg !3143
  %13 = load ptr, ptr %connection8, align 8, !dbg !3143, !tbaa !2563
  %14 = load i32, ptr @ngx_http_lua_ssl_ctx_index, align 4, !dbg !3143, !tbaa !2559
  %call = call ptr @SSL_get_ex_data(ptr noundef %13, i32 noundef %14), !dbg !3143
  store ptr %call, ptr %cctx, align 8, !dbg !3144, !tbaa !2007
  %15 = load ptr, ptr %cctx, align 8, !dbg !3145, !tbaa !2007
  %cmp9 = icmp eq ptr %15, null, !dbg !3147
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !3148

if.then10:                                        ; preds = %if.end6
  %16 = load ptr, ptr %err.addr, align 8, !dbg !3149, !tbaa !2007
  store ptr @.str.10, ptr %16, align 8, !dbg !3151, !tbaa !2007
  store i32 -1, ptr %retval, align 4, !dbg !3152
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3152

if.end11:                                         ; preds = %if.end6
  %17 = load ptr, ptr %cctx, align 8, !dbg !3153, !tbaa !2007
  %session12 = getelementptr inbounds %struct.ngx_http_lua_ssl_ctx_t, ptr %17, i32 0, i32 3, !dbg !3154
  %18 = load ptr, ptr %session12, align 8, !dbg !3154, !tbaa !2703
  store ptr %18, ptr %session, align 8, !dbg !3155, !tbaa !2007
  %19 = load ptr, ptr %session, align 8, !dbg !3156, !tbaa !2007
  %cmp13 = icmp eq ptr %19, null, !dbg !3158
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !3159

if.then14:                                        ; preds = %if.end11
  %20 = load ptr, ptr %err.addr, align 8, !dbg !3160, !tbaa !2007
  store ptr @.str.11, ptr %20, align 8, !dbg !3162, !tbaa !2007
  store i32 -1, ptr %retval, align 4, !dbg !3163
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3163

if.end15:                                         ; preds = %if.end11
  %21 = load ptr, ptr %session, align 8, !dbg !3164, !tbaa !2007
  %call16 = call i32 @i2d_SSL_SESSION(ptr noundef %21, ptr noundef null), !dbg !3165
  store i32 %call16, ptr %len, align 4, !dbg !3166, !tbaa !2559
  %22 = load i32, ptr %len, align 4, !dbg !3167, !tbaa !2559
  %cmp17 = icmp eq i32 %22, 0, !dbg !3169
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !3170

if.then18:                                        ; preds = %if.end15
  %23 = load ptr, ptr %err.addr, align 8, !dbg !3171, !tbaa !2007
  store ptr @.str.12, ptr %23, align 8, !dbg !3173, !tbaa !2007
  store i32 -1, ptr %retval, align 4, !dbg !3174
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3174

if.end19:                                         ; preds = %if.end15
  %24 = load i32, ptr %len, align 4, !dbg !3175, !tbaa !2559
  store i32 %24, ptr %retval, align 4, !dbg !3176
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3176

cleanup:                                          ; preds = %if.end19, %if.then18, %if.then14, %if.then10, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cctx) #7, !dbg !3177
  call void @llvm.lifetime.end.p0(i64 8, ptr %session) #7, !dbg !3177
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #7, !dbg !3177
  call void @llvm.lifetime.end.p0(i64 8, ptr %ssl_conn) #7, !dbg !3177
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #7, !dbg !3177
  %25 = load i32, ptr %retval, align 4, !dbg !3177
  ret i32 %25, !dbg !3177
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ngx_http_lua_ffi_ssl_get_session_id(ptr noundef %r, ptr noundef %buf, ptr noundef %err) #0 !dbg !3178 {
entry:
  %retval = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %id_len = alloca i32, align 4
  %id = alloca ptr, align 8
  %ssl_conn = alloca ptr, align 8
  %c = alloca ptr, align 8
  %cctx = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !2007
    #dbg_declare(ptr %r.addr, !3180, !DIExpression(), !3188)
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !2007
    #dbg_declare(ptr %buf.addr, !3181, !DIExpression(), !3189)
  store ptr %err, ptr %err.addr, align 8, !tbaa !2007
    #dbg_declare(ptr %err.addr, !3182, !DIExpression(), !3190)
  call void @llvm.lifetime.start.p0(i64 4, ptr %id_len) #7, !dbg !3191
    #dbg_declare(ptr %id_len, !3183, !DIExpression(), !3192)
  call void @llvm.lifetime.start.p0(i64 8, ptr %id) #7, !dbg !3193
    #dbg_declare(ptr %id, !3184, !DIExpression(), !3194)
  call void @llvm.lifetime.start.p0(i64 8, ptr %ssl_conn) #7, !dbg !3195
    #dbg_declare(ptr %ssl_conn, !3185, !DIExpression(), !3196)
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #7, !dbg !3197
    #dbg_declare(ptr %c, !3186, !DIExpression(), !3198)
  call void @llvm.lifetime.start.p0(i64 8, ptr %cctx) #7, !dbg !3199
    #dbg_declare(ptr %cctx, !3187, !DIExpression(), !3200)
  %0 = load ptr, ptr %r.addr, align 8, !dbg !3201, !tbaa !2007
  %connection = getelementptr inbounds %struct.ngx_http_request_s, ptr %0, i32 0, i32 1, !dbg !3202
  %1 = load ptr, ptr %connection, align 8, !dbg !3202, !tbaa !2018
  store ptr %1, ptr %c, align 8, !dbg !3203, !tbaa !2007
  %2 = load ptr, ptr %c, align 8, !dbg !3204, !tbaa !2007
  %cmp = icmp eq ptr %2, null, !dbg !3206
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3207

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %c, align 8, !dbg !3208, !tbaa !2007
  %ssl = getelementptr inbounds %struct.ngx_connection_s, ptr %3, i32 0, i32 18, !dbg !3209
  %4 = load ptr, ptr %ssl, align 8, !dbg !3209, !tbaa !2562
  %cmp1 = icmp eq ptr %4, null, !dbg !3210
  br i1 %cmp1, label %if.then, label %if.end, !dbg !3211

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load ptr, ptr %err.addr, align 8, !dbg !3212, !tbaa !2007
  store ptr @.str.8, ptr %5, align 8, !dbg !3214, !tbaa !2007
  store i32 -1, ptr %retval, align 4, !dbg !3215
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3215

if.end:                                           ; preds = %lor.lhs.false
  %6 = load ptr, ptr %c, align 8, !dbg !3216, !tbaa !2007
  %ssl2 = getelementptr inbounds %struct.ngx_connection_s, ptr %6, i32 0, i32 18, !dbg !3217
  %7 = load ptr, ptr %ssl2, align 8, !dbg !3217, !tbaa !2562
  %connection3 = getelementptr inbounds %struct.ngx_ssl_connection_s, ptr %7, i32 0, i32 0, !dbg !3218
  %8 = load ptr, ptr %connection3, align 8, !dbg !3218, !tbaa !2563
  store ptr %8, ptr %ssl_conn, align 8, !dbg !3219, !tbaa !2007
  %9 = load ptr, ptr %ssl_conn, align 8, !dbg !3220, !tbaa !2007
  %cmp4 = icmp eq ptr %9, null, !dbg !3222
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !3223

if.then5:                                         ; preds = %if.end
  %10 = load ptr, ptr %err.addr, align 8, !dbg !3224, !tbaa !2007
  store ptr @.str.9, ptr %10, align 8, !dbg !3226, !tbaa !2007
  store i32 -1, ptr %retval, align 4, !dbg !3227
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3227

if.end6:                                          ; preds = %if.end
  %11 = load ptr, ptr %c, align 8, !dbg !3228, !tbaa !2007
  %ssl7 = getelementptr inbounds %struct.ngx_connection_s, ptr %11, i32 0, i32 18, !dbg !3228
  %12 = load ptr, ptr %ssl7, align 8, !dbg !3228, !tbaa !2562
  %connection8 = getelementptr inbounds %struct.ngx_ssl_connection_s, ptr %12, i32 0, i32 0, !dbg !3228
  %13 = load ptr, ptr %connection8, align 8, !dbg !3228, !tbaa !2563
  %14 = load i32, ptr @ngx_http_lua_ssl_ctx_index, align 4, !dbg !3228, !tbaa !2559
  %call = call ptr @SSL_get_ex_data(ptr noundef %13, i32 noundef %14), !dbg !3228
  store ptr %call, ptr %cctx, align 8, !dbg !3229, !tbaa !2007
  %15 = load ptr, ptr %cctx, align 8, !dbg !3230, !tbaa !2007
  %cmp9 = icmp eq ptr %15, null, !dbg !3232
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !3233

if.then10:                                        ; preds = %if.end6
  %16 = load ptr, ptr %err.addr, align 8, !dbg !3234, !tbaa !2007
  store ptr @.str.10, ptr %16, align 8, !dbg !3236, !tbaa !2007
  store i32 -1, ptr %retval, align 4, !dbg !3237
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3237

if.end11:                                         ; preds = %if.end6
  %17 = load ptr, ptr %cctx, align 8, !dbg !3238, !tbaa !2007
  %session_id = getelementptr inbounds %struct.ngx_http_lua_ssl_ctx_t, ptr %17, i32 0, i32 4, !dbg !3239
  %data = getelementptr inbounds %struct.ngx_str_t, ptr %session_id, i32 0, i32 1, !dbg !3240
  %18 = load ptr, ptr %data, align 8, !dbg !3240, !tbaa !2709
  store ptr %18, ptr %id, align 8, !dbg !3241, !tbaa !2007
  %19 = load ptr, ptr %id, align 8, !dbg !3242, !tbaa !2007
  %cmp12 = icmp eq ptr %19, null, !dbg !3244
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !3245

if.then13:                                        ; preds = %if.end11
  %20 = load ptr, ptr %err.addr, align 8, !dbg !3246, !tbaa !2007
  store ptr @.str.13, ptr %20, align 8, !dbg !3248, !tbaa !2007
  store i32 -1, ptr %retval, align 4, !dbg !3249
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3249

if.end14:                                         ; preds = %if.end11
  %21 = load ptr, ptr %cctx, align 8, !dbg !3250, !tbaa !2007
  %session_id15 = getelementptr inbounds %struct.ngx_http_lua_ssl_ctx_t, ptr %21, i32 0, i32 4, !dbg !3251
  %len = getelementptr inbounds %struct.ngx_str_t, ptr %session_id15, i32 0, i32 0, !dbg !3252
  %22 = load i64, ptr %len, align 8, !dbg !3252, !tbaa !2715
  %conv = trunc i64 %22 to i32, !dbg !3250
  store i32 %conv, ptr %id_len, align 4, !dbg !3253, !tbaa !2559
  %23 = load i32, ptr %id_len, align 4, !dbg !3254, !tbaa !2559
  %cmp16 = icmp eq i32 %23, 0, !dbg !3256
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !3257

if.then18:                                        ; preds = %if.end14
  %24 = load ptr, ptr %err.addr, align 8, !dbg !3258, !tbaa !2007
  store ptr @.str.14, ptr %24, align 8, !dbg !3260, !tbaa !2007
  store i32 -1, ptr %retval, align 4, !dbg !3261
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3261

if.end19:                                         ; preds = %if.end14
  %25 = load ptr, ptr %buf.addr, align 8, !dbg !3262, !tbaa !2007
  %26 = load ptr, ptr %id, align 8, !dbg !3263, !tbaa !2007
  %27 = load i32, ptr %id_len, align 4, !dbg !3264, !tbaa !2559
  %conv20 = sext i32 %27 to i64, !dbg !3264
  %call21 = call ptr @ngx_hex_dump(ptr noundef %25, ptr noundef %26, i64 noundef %conv20), !dbg !3265
  store i32 0, ptr %retval, align 4, !dbg !3266
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3266

cleanup:                                          ; preds = %if.end19, %if.then18, %if.then13, %if.then10, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cctx) #7, !dbg !3267
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #7, !dbg !3267
  call void @llvm.lifetime.end.p0(i64 8, ptr %ssl_conn) #7, !dbg !3267
  call void @llvm.lifetime.end.p0(i64 8, ptr %id) #7, !dbg !3267
  call void @llvm.lifetime.end.p0(i64 4, ptr %id_len) #7, !dbg !3267
  %28 = load i32, ptr %retval, align 4, !dbg !3267
  ret i32 %28, !dbg !3267
}

declare !dbg !3268 ptr @ngx_hex_dump(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @ngx_http_lua_ffi_ssl_get_session_id_size(ptr noundef %r, ptr noundef %err) #0 !dbg !3271 {
entry:
  %retval = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %ssl_conn = alloca ptr, align 8
  %c = alloca ptr, align 8
  %cctx = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !2007
    #dbg_declare(ptr %r.addr, !3273, !DIExpression(), !3278)
  store ptr %err, ptr %err.addr, align 8, !tbaa !2007
    #dbg_declare(ptr %err.addr, !3274, !DIExpression(), !3279)
  call void @llvm.lifetime.start.p0(i64 8, ptr %ssl_conn) #7, !dbg !3280
    #dbg_declare(ptr %ssl_conn, !3275, !DIExpression(), !3281)
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #7, !dbg !3282
    #dbg_declare(ptr %c, !3276, !DIExpression(), !3283)
  call void @llvm.lifetime.start.p0(i64 8, ptr %cctx) #7, !dbg !3284
    #dbg_declare(ptr %cctx, !3277, !DIExpression(), !3285)
  %0 = load ptr, ptr %r.addr, align 8, !dbg !3286, !tbaa !2007
  %connection = getelementptr inbounds %struct.ngx_http_request_s, ptr %0, i32 0, i32 1, !dbg !3287
  %1 = load ptr, ptr %connection, align 8, !dbg !3287, !tbaa !2018
  store ptr %1, ptr %c, align 8, !dbg !3288, !tbaa !2007
  %2 = load ptr, ptr %c, align 8, !dbg !3289, !tbaa !2007
  %cmp = icmp eq ptr %2, null, !dbg !3291
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3292

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %c, align 8, !dbg !3293, !tbaa !2007
  %ssl = getelementptr inbounds %struct.ngx_connection_s, ptr %3, i32 0, i32 18, !dbg !3294
  %4 = load ptr, ptr %ssl, align 8, !dbg !3294, !tbaa !2562
  %cmp1 = icmp eq ptr %4, null, !dbg !3295
  br i1 %cmp1, label %if.then, label %if.end, !dbg !3296

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load ptr, ptr %err.addr, align 8, !dbg !3297, !tbaa !2007
  store ptr @.str.8, ptr %5, align 8, !dbg !3299, !tbaa !2007
  store i32 -1, ptr %retval, align 4, !dbg !3300
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3300

if.end:                                           ; preds = %lor.lhs.false
  %6 = load ptr, ptr %c, align 8, !dbg !3301, !tbaa !2007
  %ssl2 = getelementptr inbounds %struct.ngx_connection_s, ptr %6, i32 0, i32 18, !dbg !3302
  %7 = load ptr, ptr %ssl2, align 8, !dbg !3302, !tbaa !2562
  %connection3 = getelementptr inbounds %struct.ngx_ssl_connection_s, ptr %7, i32 0, i32 0, !dbg !3303
  %8 = load ptr, ptr %connection3, align 8, !dbg !3303, !tbaa !2563
  store ptr %8, ptr %ssl_conn, align 8, !dbg !3304, !tbaa !2007
  %9 = load ptr, ptr %ssl_conn, align 8, !dbg !3305, !tbaa !2007
  %cmp4 = icmp eq ptr %9, null, !dbg !3307
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !3308

if.then5:                                         ; preds = %if.end
  %10 = load ptr, ptr %err.addr, align 8, !dbg !3309, !tbaa !2007
  store ptr @.str.9, ptr %10, align 8, !dbg !3311, !tbaa !2007
  store i32 -1, ptr %retval, align 4, !dbg !3312
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3312

if.end6:                                          ; preds = %if.end
  %11 = load ptr, ptr %c, align 8, !dbg !3313, !tbaa !2007
  %ssl7 = getelementptr inbounds %struct.ngx_connection_s, ptr %11, i32 0, i32 18, !dbg !3313
  %12 = load ptr, ptr %ssl7, align 8, !dbg !3313, !tbaa !2562
  %connection8 = getelementptr inbounds %struct.ngx_ssl_connection_s, ptr %12, i32 0, i32 0, !dbg !3313
  %13 = load ptr, ptr %connection8, align 8, !dbg !3313, !tbaa !2563
  %14 = load i32, ptr @ngx_http_lua_ssl_ctx_index, align 4, !dbg !3313, !tbaa !2559
  %call = call ptr @SSL_get_ex_data(ptr noundef %13, i32 noundef %14), !dbg !3313
  store ptr %call, ptr %cctx, align 8, !dbg !3314, !tbaa !2007
  %15 = load ptr, ptr %cctx, align 8, !dbg !3315, !tbaa !2007
  %cmp9 = icmp eq ptr %15, null, !dbg !3317
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !3318

if.then10:                                        ; preds = %if.end6
  %16 = load ptr, ptr %err.addr, align 8, !dbg !3319, !tbaa !2007
  store ptr @.str.10, ptr %16, align 8, !dbg !3321, !tbaa !2007
  store i32 -1, ptr %retval, align 4, !dbg !3322
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3322

if.end11:                                         ; preds = %if.end6
  %17 = load ptr, ptr %cctx, align 8, !dbg !3323, !tbaa !2007
  %session_id = getelementptr inbounds %struct.ngx_http_lua_ssl_ctx_t, ptr %17, i32 0, i32 4, !dbg !3325
  %len = getelementptr inbounds %struct.ngx_str_t, ptr %session_id, i32 0, i32 0, !dbg !3326
  %18 = load i64, ptr %len, align 8, !dbg !3326, !tbaa !2715
  %cmp12 = icmp eq i64 %18, 0, !dbg !3327
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !3328

if.then13:                                        ; preds = %if.end11
  %19 = load ptr, ptr %err.addr, align 8, !dbg !3329, !tbaa !2007
  store ptr @.str.14, ptr %19, align 8, !dbg !3331, !tbaa !2007
  store i32 -1, ptr %retval, align 4, !dbg !3332
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3332

if.end14:                                         ; preds = %if.end11
  %20 = load ptr, ptr %cctx, align 8, !dbg !3333, !tbaa !2007
  %session_id15 = getelementptr inbounds %struct.ngx_http_lua_ssl_ctx_t, ptr %20, i32 0, i32 4, !dbg !3334
  %len16 = getelementptr inbounds %struct.ngx_str_t, ptr %session_id15, i32 0, i32 0, !dbg !3335
  %21 = load i64, ptr %len16, align 8, !dbg !3335, !tbaa !2715
  %mul = mul i64 2, %21, !dbg !3336
  %conv = trunc i64 %mul to i32, !dbg !3337
  store i32 %conv, ptr %retval, align 4, !dbg !3338
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3338

cleanup:                                          ; preds = %if.end14, %if.then13, %if.then10, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cctx) #7, !dbg !3339
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #7, !dbg !3339
  call void @llvm.lifetime.end.p0(i64 8, ptr %ssl_conn) #7, !dbg !3339
  %22 = load i32, ptr %retval, align 4, !dbg !3339
  ret i32 %22, !dbg !3339
}

declare !dbg !3340 ptr @ngx_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #2

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @ngx_http_lua_create_ctx(ptr noundef %r) #5 !dbg !3343 {
entry:
  %retval = alloca ptr, align 8
  %r.addr = alloca ptr, align 8
  %L = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %cln = alloca ptr, align 8
  %llcf = alloca ptr, align 8
  %lmcf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !2007
    #dbg_declare(ptr %r.addr, !3347, !DIExpression(), !3403)
  call void @llvm.lifetime.start.p0(i64 8, ptr %L) #7, !dbg !3404
    #dbg_declare(ptr %L, !3348, !DIExpression(), !3405)
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #7, !dbg !3406
    #dbg_declare(ptr %ctx, !3349, !DIExpression(), !3407)
  call void @llvm.lifetime.start.p0(i64 8, ptr %cln) #7, !dbg !3408
    #dbg_declare(ptr %cln, !3350, !DIExpression(), !3409)
  call void @llvm.lifetime.start.p0(i64 8, ptr %llcf) #7, !dbg !3410
    #dbg_declare(ptr %llcf, !3351, !DIExpression(), !3411)
  call void @llvm.lifetime.start.p0(i64 8, ptr %lmcf) #7, !dbg !3412
    #dbg_declare(ptr %lmcf, !3402, !DIExpression(), !3413)
  %0 = load ptr, ptr %r.addr, align 8, !dbg !3414, !tbaa !2007
  %pool = getelementptr inbounds %struct.ngx_http_request_s, ptr %0, i32 0, i32 11, !dbg !3415
  %1 = load ptr, ptr %pool, align 8, !dbg !3415, !tbaa !2772
  %call = call ptr @ngx_palloc(ptr noundef %1, i64 noundef 400), !dbg !3416
  store ptr %call, ptr %ctx, align 8, !dbg !3417, !tbaa !2007
  %2 = load ptr, ptr %ctx, align 8, !dbg !3418, !tbaa !2007
  %cmp = icmp eq ptr %2, null, !dbg !3420
  br i1 %cmp, label %if.then, label %if.end, !dbg !3421

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !3422
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3422

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %r.addr, align 8, !dbg !3424, !tbaa !2007
  %4 = load ptr, ptr %ctx, align 8, !dbg !3425, !tbaa !2007
  call void @ngx_http_lua_init_ctx(ptr noundef %3, ptr noundef %4), !dbg !3426
  %5 = load ptr, ptr %ctx, align 8, !dbg !3427, !tbaa !2007
  %6 = load ptr, ptr %r.addr, align 8, !dbg !3427, !tbaa !2007
  %ctx1 = getelementptr inbounds %struct.ngx_http_request_s, ptr %6, i32 0, i32 2, !dbg !3427
  %7 = load ptr, ptr %ctx1, align 8, !dbg !3427, !tbaa !2172
  %8 = load i64, ptr @ngx_http_lua_module, align 8, !dbg !3427, !tbaa !2173
  %arrayidx = getelementptr inbounds ptr, ptr %7, i64 %8, !dbg !3427
  store ptr %5, ptr %arrayidx, align 8, !dbg !3427, !tbaa !2007
  %9 = load ptr, ptr %r.addr, align 8, !dbg !3428, !tbaa !2007
  %loc_conf = getelementptr inbounds %struct.ngx_http_request_s, ptr %9, i32 0, i32 5, !dbg !3428
  %10 = load ptr, ptr %loc_conf, align 8, !dbg !3428, !tbaa !2634
  %11 = load i64, ptr @ngx_http_lua_module, align 8, !dbg !3428, !tbaa !2173
  %arrayidx2 = getelementptr inbounds ptr, ptr %10, i64 %11, !dbg !3428
  %12 = load ptr, ptr %arrayidx2, align 8, !dbg !3428, !tbaa !2007
  store ptr %12, ptr %llcf, align 8, !dbg !3429, !tbaa !2007
  %13 = load ptr, ptr %llcf, align 8, !dbg !3430, !tbaa !2007
  %enable_code_cache = getelementptr inbounds %struct.ngx_http_lua_loc_conf_t, ptr %13, i32 0, i32 7, !dbg !3432
  %14 = load i64, ptr %enable_code_cache, align 8, !dbg !3432, !tbaa !3433
  %tobool = icmp ne i64 %14, 0, !dbg !3430
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !3436

land.lhs.true:                                    ; preds = %if.end
  %15 = load ptr, ptr %r.addr, align 8, !dbg !3437, !tbaa !2007
  %connection = getelementptr inbounds %struct.ngx_http_request_s, ptr %15, i32 0, i32 1, !dbg !3438
  %16 = load ptr, ptr %connection, align 8, !dbg !3438, !tbaa !2018
  %fd = getelementptr inbounds %struct.ngx_connection_s, ptr %16, i32 0, i32 3, !dbg !3439
  %17 = load i32, ptr %fd, align 8, !dbg !3439, !tbaa !3440
  %cmp3 = icmp ne i32 %17, -1, !dbg !3441
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !3442

if.then4:                                         ; preds = %land.lhs.true
  %18 = load ptr, ptr %r.addr, align 8, !dbg !3443, !tbaa !2007
  %main_conf = getelementptr inbounds %struct.ngx_http_request_s, ptr %18, i32 0, i32 3, !dbg !3443
  %19 = load ptr, ptr %main_conf, align 8, !dbg !3443, !tbaa !2618
  %20 = load i64, ptr @ngx_http_lua_module, align 8, !dbg !3443, !tbaa !2173
  %arrayidx5 = getelementptr inbounds ptr, ptr %19, i64 %20, !dbg !3443
  %21 = load ptr, ptr %arrayidx5, align 8, !dbg !3443, !tbaa !2007
  store ptr %21, ptr %lmcf, align 8, !dbg !3445, !tbaa !2007
  %22 = load ptr, ptr %lmcf, align 8, !dbg !3446, !tbaa !2007
  %lua = getelementptr inbounds %struct.ngx_http_lua_main_conf_s, ptr %22, i32 0, i32 0, !dbg !3447
  %23 = load ptr, ptr %lua, align 8, !dbg !3447, !tbaa !3000
  %24 = load ptr, ptr %lmcf, align 8, !dbg !3448, !tbaa !2007
  %cycle = getelementptr inbounds %struct.ngx_http_lua_main_conf_s, ptr %24, i32 0, i32 4, !dbg !3449
  %25 = load ptr, ptr %cycle, align 8, !dbg !3449, !tbaa !3450
  %26 = load ptr, ptr %r.addr, align 8, !dbg !3451, !tbaa !2007
  %pool6 = getelementptr inbounds %struct.ngx_http_request_s, ptr %26, i32 0, i32 11, !dbg !3452
  %27 = load ptr, ptr %pool6, align 8, !dbg !3452, !tbaa !2772
  %28 = load ptr, ptr %lmcf, align 8, !dbg !3453, !tbaa !2007
  %29 = load ptr, ptr %r.addr, align 8, !dbg !3454, !tbaa !2007
  %connection7 = getelementptr inbounds %struct.ngx_http_request_s, ptr %29, i32 0, i32 1, !dbg !3455
  %30 = load ptr, ptr %connection7, align 8, !dbg !3455, !tbaa !2018
  %log = getelementptr inbounds %struct.ngx_connection_s, ptr %30, i32 0, i32 10, !dbg !3456
  %31 = load ptr, ptr %log, align 8, !dbg !3456, !tbaa !2029
  %call8 = call ptr @ngx_http_lua_init_vm(ptr noundef %23, ptr noundef %25, ptr noundef %27, ptr noundef %28, ptr noundef %31, ptr noundef %cln), !dbg !3457
  store ptr %call8, ptr %L, align 8, !dbg !3458, !tbaa !2007
  %32 = load ptr, ptr %L, align 8, !dbg !3459, !tbaa !2007
  %cmp9 = icmp eq ptr %32, null, !dbg !3461
  br i1 %cmp9, label %if.then10, label %if.end18, !dbg !3462

if.then10:                                        ; preds = %if.then4
  %33 = load ptr, ptr %r.addr, align 8, !dbg !3463, !tbaa !2007
  %connection11 = getelementptr inbounds %struct.ngx_http_request_s, ptr %33, i32 0, i32 1, !dbg !3463
  %34 = load ptr, ptr %connection11, align 8, !dbg !3463, !tbaa !2018
  %log12 = getelementptr inbounds %struct.ngx_connection_s, ptr %34, i32 0, i32 10, !dbg !3463
  %35 = load ptr, ptr %log12, align 8, !dbg !3463, !tbaa !2029
  %log_level = getelementptr inbounds %struct.ngx_log_s, ptr %35, i32 0, i32 0, !dbg !3463
  %36 = load i64, ptr %log_level, align 8, !dbg !3463, !tbaa !2241
  %cmp13 = icmp uge i64 %36, 4, !dbg !3463
  br i1 %cmp13, label %if.then14, label %if.end17, !dbg !3466

if.then14:                                        ; preds = %if.then10
  %37 = load ptr, ptr %r.addr, align 8, !dbg !3463, !tbaa !2007
  %connection15 = getelementptr inbounds %struct.ngx_http_request_s, ptr %37, i32 0, i32 1, !dbg !3463
  %38 = load ptr, ptr %connection15, align 8, !dbg !3463, !tbaa !2018
  %log16 = getelementptr inbounds %struct.ngx_connection_s, ptr %38, i32 0, i32 10, !dbg !3463
  %39 = load ptr, ptr %log16, align 8, !dbg !3463, !tbaa !2029
  call void (i64, ptr, i32, ptr, ...) @ngx_log_error_core(i64 noundef 4, ptr noundef %39, i32 noundef 0, ptr noundef @.str.21), !dbg !3463
  br label %if.end17, !dbg !3463

if.end17:                                         ; preds = %if.then14, %if.then10
  store ptr null, ptr %retval, align 8, !dbg !3467
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3467

if.end18:                                         ; preds = %if.then4
  %40 = load ptr, ptr %lmcf, align 8, !dbg !3468, !tbaa !2007
  %init_handler = getelementptr inbounds %struct.ngx_http_lua_main_conf_s, ptr %40, i32 0, i32 17, !dbg !3470
  %41 = load ptr, ptr %init_handler, align 8, !dbg !3470, !tbaa !3471
  %tobool19 = icmp ne ptr %41, null, !dbg !3468
  br i1 %tobool19, label %if.then20, label %if.end28, !dbg !3472

if.then20:                                        ; preds = %if.end18
  %42 = load ptr, ptr %lmcf, align 8, !dbg !3473, !tbaa !2007
  %init_handler21 = getelementptr inbounds %struct.ngx_http_lua_main_conf_s, ptr %42, i32 0, i32 17, !dbg !3476
  %43 = load ptr, ptr %init_handler21, align 8, !dbg !3476, !tbaa !3471
  %44 = load ptr, ptr %r.addr, align 8, !dbg !3477, !tbaa !2007
  %connection22 = getelementptr inbounds %struct.ngx_http_request_s, ptr %44, i32 0, i32 1, !dbg !3478
  %45 = load ptr, ptr %connection22, align 8, !dbg !3478, !tbaa !2018
  %log23 = getelementptr inbounds %struct.ngx_connection_s, ptr %45, i32 0, i32 10, !dbg !3479
  %46 = load ptr, ptr %log23, align 8, !dbg !3479, !tbaa !2029
  %47 = load ptr, ptr %lmcf, align 8, !dbg !3480, !tbaa !2007
  %48 = load ptr, ptr %L, align 8, !dbg !3481, !tbaa !2007
  %call24 = call i64 %43(ptr noundef %46, ptr noundef %47, ptr noundef %48), !dbg !3473
  %cmp25 = icmp ne i64 %call24, 0, !dbg !3482
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !3483

if.then26:                                        ; preds = %if.then20
  store ptr null, ptr %retval, align 8, !dbg !3484
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3484

if.end27:                                         ; preds = %if.then20
  br label %if.end28, !dbg !3486

if.end28:                                         ; preds = %if.end27, %if.end18
  %49 = load ptr, ptr %cln, align 8, !dbg !3487, !tbaa !2007
  %data = getelementptr inbounds %struct.ngx_pool_cleanup_s, ptr %49, i32 0, i32 1, !dbg !3488
  %50 = load ptr, ptr %data, align 8, !dbg !3488, !tbaa !3489
  %51 = load ptr, ptr %ctx, align 8, !dbg !3491, !tbaa !2007
  %vm_state = getelementptr inbounds %struct.ngx_http_lua_ctx_s, ptr %51, i32 0, i32 0, !dbg !3492
  store ptr %50, ptr %vm_state, align 8, !dbg !3493, !tbaa !2988
  br label %if.end30, !dbg !3494

if.else:                                          ; preds = %land.lhs.true, %if.end
  %52 = load ptr, ptr %ctx, align 8, !dbg !3495, !tbaa !2007
  %vm_state29 = getelementptr inbounds %struct.ngx_http_lua_ctx_s, ptr %52, i32 0, i32 0, !dbg !3497
  store ptr null, ptr %vm_state29, align 8, !dbg !3498, !tbaa !2988
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.end28
  %53 = load ptr, ptr %ctx, align 8, !dbg !3499, !tbaa !2007
  store ptr %53, ptr %retval, align 8, !dbg !3500
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3500

cleanup:                                          ; preds = %if.end30, %if.then26, %if.end17, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %lmcf) #7, !dbg !3501
  call void @llvm.lifetime.end.p0(i64 8, ptr %llcf) #7, !dbg !3501
  call void @llvm.lifetime.end.p0(i64 8, ptr %cln) #7, !dbg !3501
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #7, !dbg !3501
  call void @llvm.lifetime.end.p0(i64 8, ptr %L) #7, !dbg !3501
  %54 = load ptr, ptr %retval, align 8, !dbg !3501
  ret ptr %54, !dbg !3501
}

declare !dbg !3502 void @ngx_http_lua_finalize_request(ptr noundef, i64 noundef) #2

declare !dbg !3503 void @ngx_http_lua_reset_ctx(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @ngx_http_lua_set_req(ptr noundef %L, ptr noundef %r) #5 !dbg !3506 {
entry:
  %L.addr = alloca ptr, align 8
  %r.addr = alloca ptr, align 8
  store ptr %L, ptr %L.addr, align 8, !tbaa !2007
    #dbg_declare(ptr %L.addr, !3510, !DIExpression(), !3512)
  store ptr %r, ptr %r.addr, align 8, !tbaa !2007
    #dbg_declare(ptr %r.addr, !3511, !DIExpression(), !3513)
  %0 = load ptr, ptr %L.addr, align 8, !dbg !3514, !tbaa !2007
  %1 = load ptr, ptr %r.addr, align 8, !dbg !3515, !tbaa !2007
  call void @lua_setexdata(ptr noundef %0, ptr noundef %1), !dbg !3516
  ret void, !dbg !3517
}

declare !dbg !3518 void @lua_pushcclosure(ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @ngx_http_lua_traceback(ptr noundef) #2

declare !dbg !3525 void @lua_insert(ptr noundef, i32 noundef) #2

declare !dbg !3528 i32 @lua_pcall(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare !dbg !3531 void @lua_remove(ptr noundef, i32 noundef) #2

declare !dbg !3532 ptr @lua_tolstring(ptr noundef, i32 noundef, ptr noundef) #2

declare !dbg !3536 void @ngx_log_error_core(i64 noundef, ptr noundef, i32 noundef, ptr noundef, ...) #2

declare !dbg !3539 void @lua_settop(ptr noundef, i32 noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @ngx_http_lua_init_ctx(ptr noundef %r, ptr noundef %ctx) #5 !dbg !3540 {
entry:
  %r.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8, !tbaa !2007
    #dbg_declare(ptr %r.addr, !3544, !DIExpression(), !3546)
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !2007
    #dbg_declare(ptr %ctx.addr, !3545, !DIExpression(), !3547)
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !3548, !tbaa !2007
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 400, i1 false), !dbg !3548
  %1 = load ptr, ptr %ctx.addr, align 8, !dbg !3549, !tbaa !2007
  %ctx_ref = getelementptr inbounds %struct.ngx_http_lua_ctx_s, ptr %1, i32 0, i32 7, !dbg !3550
  store i32 -2, ptr %ctx_ref, align 8, !dbg !3551, !tbaa !3552
  %2 = load ptr, ptr %ctx.addr, align 8, !dbg !3553, !tbaa !2007
  %entry_co_ctx = getelementptr inbounds %struct.ngx_http_lua_ctx_s, ptr %2, i32 0, i32 5, !dbg !3554
  %co_ref = getelementptr inbounds %struct.ngx_http_lua_co_ctx_s, ptr %entry_co_ctx, i32 0, i32 13, !dbg !3555
  store i32 -2, ptr %co_ref, align 8, !dbg !3556, !tbaa !3557
  %3 = load ptr, ptr %ctx.addr, align 8, !dbg !3558, !tbaa !2007
  %resume_handler = getelementptr inbounds %struct.ngx_http_lua_ctx_s, ptr %3, i32 0, i32 2, !dbg !3559
  store ptr @ngx_http_lua_wev_handler, ptr %resume_handler, align 8, !dbg !3560, !tbaa !3561
  %4 = load ptr, ptr %r.addr, align 8, !dbg !3562, !tbaa !2007
  %5 = load ptr, ptr %ctx.addr, align 8, !dbg !3563, !tbaa !2007
  %request = getelementptr inbounds %struct.ngx_http_lua_ctx_s, ptr %5, i32 0, i32 1, !dbg !3564
  store ptr %4, ptr %request, align 8, !dbg !3565, !tbaa !3566
  ret void, !dbg !3567
}

declare !dbg !3568 ptr @ngx_http_lua_init_vm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare i64 @ngx_http_lua_wev_handler(ptr noundef) #2

declare !dbg !3572 void @lua_setexdata(ptr noundef, ptr noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!89}
!llvm.module.flags = !{!1994, !1995, !1996, !1997, !1998, !1999}
!llvm.ident = !{!2000}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "../ngx_lua-0.10.15/src/ngx_http_lua_ssl_session_storeby.c", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "03628573c4c70e85f4ed175cba7fc45e")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 32)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 114, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 13)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 145, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 6)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 163, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 25)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 165, type: !14, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 275, type: !19, isLocal: true, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(scope: null, file: !2, line: 284, type: !28, isLocal: true, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 27)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !2, line: 295, type: !33, isLocal: true, isDefinition: true)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 16)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(scope: null, file: !2, line: 447, type: !38, isLocal: true, isDefinition: true)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 12)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(scope: null, file: !2, line: 453, type: !9, isLocal: true, isDefinition: true)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 461, type: !33, isLocal: true, isDefinition: true)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(scope: null, file: !2, line: 467, type: !28, isLocal: true, isDefinition: true)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 472, type: !19, isLocal: true, isDefinition: true)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !2, line: 561, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 40)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !2, line: 567, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 44)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !2, line: 328, type: !61, isLocal: true, isDefinition: true)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 10)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !2, line: 333, type: !66, isLocal: true, isDefinition: true)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 37)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !2, line: 340, type: !9, isLocal: true, isDefinition: true)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(scope: null, file: !2, line: 346, type: !9, isLocal: true, isDefinition: true)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(scope: null, file: !2, line: 412, type: !75, isLocal: true, isDefinition: true)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 15)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(scope: null, file: !2, line: 416, type: !80, isLocal: true, isDefinition: true)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 41)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(scope: null, file: !85, line: 302, type: !86, isLocal: true, isDefinition: true)
!85 = !DIFile(filename: "../ngx_lua-0.10.15/src/ngx_http_lua_util.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "263bda79d27023d44c17ea175243cd3d")
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 28)
!89 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !90, globals: !1993, splitDebugInlining: false, nameTableKind: None)
!90 = !{!91, !92, !999, !188, !243}
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_lua_srv_conf_handler_pt", file: !93, line: 165, baseType: !94)
!93 = !DIFile(filename: "../ngx_lua-0.10.15/src/ngx_http_lua_common.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "24448ae47d4689905dbf6863a08ccbf0")
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DISubroutineType(types: !96)
!96 = !{!97, !104, !1967, !1989}
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_int_t", file: !98, line: 78, baseType: !99)
!98 = !DIFile(filename: "src/core/ngx_config.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "1030e66de4bc6fae79f292da1593286a")
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !100, line: 267, baseType: !101)
!100 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intptr_t", file: !102, line: 207, baseType: !103)
!102 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!103 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_request_t", file: !106, line: 16, baseType: !107)
!106 = !DIFile(filename: "src/http/ngx_http.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "936639e5730ac898b9486f4f53b5f2f5")
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_request_s", file: !108, line: 371, size: 11456, elements: !109)
!108 = !DIFile(filename: "src/http/ngx_http_request.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "1757f93ddb5cd3c545713a957f23192d")
!109 = !{!110, !115, !539, !541, !542, !543, !544, !549, !550, !771, !1511, !1512, !1513, !1514, !1556, !1588, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1634, !1645, !1652, !1653, !1655, !1656, !1669, !1670, !1671, !1672, !1673, !1674, !1860, !1864, !1869, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !107, file: !108, line: 372, baseType: !111, size: 32)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !112, line: 26, baseType: !113)
!112 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !102, line: 42, baseType: !114)
!114 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !107, file: !108, line: 374, baseType: !116, size: 64, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_connection_t", file: !118, line: 26, baseType: !119)
!118 = !DIFile(filename: "src/core/ngx_core.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "1c4d8383f329aa1de050d17038ecb169")
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_connection_s", file: !120, line: 124, size: 1920, elements: !121)
!120 = !DIFile(filename: "src/core/ngx_connection.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "bf513a87e959064e14502903e9282b0e")
!121 = !{!122, !123, !241, !242, !245, !253, !255, !345, !350, !428, !429, !430, !467, !468, !469, !470, !471, !472, !477, !515, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !119, file: !120, line: 125, baseType: !91, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !119, file: !120, line: 126, baseType: !124, size: 64, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_t", file: !118, line: 24, baseType: !126)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_event_s", file: !127, line: 30, size: 768, elements: !128)
!127 = !DIFile(filename: "src/event/ngx_event.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "c79f651cc4aca504d9d912404beb8bf3")
!128 = !{!129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !157, !162, !220, !233}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !126, file: !127, line: 31, baseType: !91, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !126, file: !127, line: 33, baseType: !114, size: 1, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !126, file: !127, line: 35, baseType: !114, size: 1, offset: 65, flags: DIFlagBitField, extraData: i64 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "instance", scope: !126, file: !127, line: 38, baseType: !114, size: 1, offset: 66, flags: DIFlagBitField, extraData: i64 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !126, file: !127, line: 44, baseType: !114, size: 1, offset: 67, flags: DIFlagBitField, extraData: i64 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !126, file: !127, line: 46, baseType: !114, size: 1, offset: 68, flags: DIFlagBitField, extraData: i64 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !126, file: !127, line: 49, baseType: !114, size: 1, offset: 69, flags: DIFlagBitField, extraData: i64 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "oneshot", scope: !126, file: !127, line: 51, baseType: !114, size: 1, offset: 70, flags: DIFlagBitField, extraData: i64 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !126, file: !127, line: 54, baseType: !114, size: 1, offset: 71, flags: DIFlagBitField, extraData: i64 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "eof", scope: !126, file: !127, line: 56, baseType: !114, size: 1, offset: 72, flags: DIFlagBitField, extraData: i64 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !126, file: !127, line: 57, baseType: !114, size: 1, offset: 73, flags: DIFlagBitField, extraData: i64 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "timedout", scope: !126, file: !127, line: 59, baseType: !114, size: 1, offset: 74, flags: DIFlagBitField, extraData: i64 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "timer_set", scope: !126, file: !127, line: 60, baseType: !114, size: 1, offset: 75, flags: DIFlagBitField, extraData: i64 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "delayed", scope: !126, file: !127, line: 62, baseType: !114, size: 1, offset: 76, flags: DIFlagBitField, extraData: i64 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_accept", scope: !126, file: !127, line: 64, baseType: !114, size: 1, offset: 77, flags: DIFlagBitField, extraData: i64 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "pending_eof", scope: !126, file: !127, line: 67, baseType: !114, size: 1, offset: 78, flags: DIFlagBitField, extraData: i64 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "posted", scope: !126, file: !127, line: 69, baseType: !114, size: 1, offset: 79, flags: DIFlagBitField, extraData: i64 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "closed", scope: !126, file: !127, line: 71, baseType: !114, size: 1, offset: 80, flags: DIFlagBitField, extraData: i64 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !126, file: !127, line: 74, baseType: !114, size: 1, offset: 81, flags: DIFlagBitField, extraData: i64 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "resolver", scope: !126, file: !127, line: 75, baseType: !114, size: 1, offset: 82, flags: DIFlagBitField, extraData: i64 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "skip_socket_leak_check", scope: !126, file: !127, line: 77, baseType: !114, size: 1, offset: 83, flags: DIFlagBitField, extraData: i64 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "cancelable", scope: !126, file: !127, line: 80, baseType: !114, size: 1, offset: 84, flags: DIFlagBitField, extraData: i64 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !126, file: !127, line: 110, baseType: !114, size: 1, offset: 85, flags: DIFlagBitField, extraData: i64 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !126, file: !127, line: 113, baseType: !153, size: 64, offset: 128)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_handler_pt", file: !118, line: 32, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DISubroutineType(types: !156)
!156 = !{null, !124}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !126, file: !127, line: 120, baseType: !158, size: 64, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_uint_t", file: !98, line: 79, baseType: !159)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !160, line: 90, baseType: !161)
!160 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!161 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !126, file: !127, line: 122, baseType: !163, size: 64, offset: 256)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_log_t", file: !118, line: 20, baseType: !165)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_log_s", file: !166, line: 50, size: 640, elements: !167)
!166 = !DIFile(filename: "src/core/ngx_log.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "f35895306f847777914ce99ffeccfabd")
!167 = !{!168, !169, !198, !201, !205, !210, !211, !216, !217, !219}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "log_level", scope: !165, file: !166, line: 51, baseType: !158, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !165, file: !166, line: 52, baseType: !170, size: 64, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_open_file_t", file: !118, line: 21, baseType: !172)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_open_file_s", file: !173, line: 89, size: 320, elements: !174)
!173 = !DIFile(filename: "src/core/ngx_conf_file.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "6ae6b72e2fd6bbb6ecc9de2e6386072c")
!174 = !{!175, !179, !193, !197}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !172, file: !173, line: 90, baseType: !176, size: 32)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_fd_t", file: !177, line: 16, baseType: !178)
!177 = !DIFile(filename: "src/os/unix/ngx_files.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "7b9a751e8c1ad1afef5467d60ed94e69")
!178 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !172, file: !173, line: 91, baseType: !180, size: 128, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_str_t", file: !181, line: 19, baseType: !182)
!181 = !DIFile(filename: "src/core/ngx_string.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "aecf67ab89c624000ba2e2684dbcfdc8")
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !181, line: 16, size: 128, elements: !183)
!183 = !{!184, !187}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !182, file: !181, line: 17, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !186, line: 29, baseType: !161)
!186 = !DIFile(filename: "/usr/include/glob.h", directory: "", checksumkind: CSK_MD5, checksum: "fe493b50b1dc220fe9bcfb4d648abdef")
!187 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !182, file: !181, line: 18, baseType: !188, size: 64, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !190, line: 33, baseType: !191)
!190 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !102, line: 31, baseType: !192)
!192 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !172, file: !173, line: 93, baseType: !194, size: 64, offset: 192)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{null, !170, !163}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !172, file: !173, line: 94, baseType: !91, size: 64, offset: 256)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !165, file: !166, line: 54, baseType: !199, size: 64, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_atomic_uint_t", file: !200, line: 98, baseType: !161)
!200 = !DIFile(filename: "src/os/unix/ngx_atomic.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "eac8f0294f941da9268c3a72c9fca0e1")
!201 = !DIDerivedType(tag: DW_TAG_member, name: "disk_full_time", scope: !165, file: !166, line: 56, baseType: !202, size: 64, offset: 192)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !203, line: 10, baseType: !204)
!203 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !102, line: 160, baseType: !103)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !165, file: !166, line: 58, baseType: !206, size: 64, offset: 256)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_log_handler_pt", file: !166, line: 45, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{!188, !163, !188, !185}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !165, file: !166, line: 59, baseType: !91, size: 64, offset: 320)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !165, file: !166, line: 61, baseType: !212, size: 64, offset: 384)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_log_writer_pt", file: !166, line: 46, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{null, !163, !158, !188, !185}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "wdata", scope: !165, file: !166, line: 62, baseType: !91, size: 64, offset: 448)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !165, file: !166, line: 70, baseType: !218, size: 64, offset: 512)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !165, file: !166, line: 72, baseType: !163, size: 64, offset: 576)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !126, file: !127, line: 124, baseType: !221, size: 320, offset: 320)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_rbtree_node_t", file: !222, line: 20, baseType: !223)
!222 = !DIFile(filename: "src/core/ngx_rbtree.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "ee5b3151c1c48b156833d321f8e1946a")
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_rbtree_node_s", file: !222, line: 22, size: 320, elements: !224)
!224 = !{!225, !227, !229, !230, !231, !232}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !223, file: !222, line: 23, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_rbtree_key_t", file: !222, line: 16, baseType: !158)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !223, file: !222, line: 24, baseType: !228, size: 64, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !223, file: !222, line: 25, baseType: !228, size: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !223, file: !222, line: 26, baseType: !228, size: 64, offset: 192)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !223, file: !222, line: 27, baseType: !189, size: 8, offset: 256)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !223, file: !222, line: 28, baseType: !189, size: 8, offset: 264)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !126, file: !127, line: 127, baseType: !234, size: 128, offset: 640)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_queue_t", file: !235, line: 16, baseType: !236)
!235 = !DIFile(filename: "src/core/ngx_queue.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "2c59b395537893ba5e88100999d73c03")
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_queue_s", file: !235, line: 18, size: 128, elements: !237)
!237 = !{!238, !240}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !236, file: !235, line: 19, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !236, file: !235, line: 20, baseType: !239, size: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !119, file: !120, line: 127, baseType: !124, size: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !119, file: !120, line: 129, baseType: !243, size: 32, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_socket_t", file: !244, line: 17, baseType: !178)
!244 = !DIFile(filename: "src/os/unix/ngx_socket.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "ad64fd7b9f2b4876e8c9dcdeeb2305ce")
!245 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !119, file: !120, line: 131, baseType: !246, size: 64, offset: 256)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_recv_pt", file: !247, line: 19, baseType: !248)
!247 = !DIFile(filename: "src/os/unix/ngx_os.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "f9335bbb6e5d9856f7d75990ec765c0d")
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{!251, !116, !188, !185}
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !190, line: 108, baseType: !252)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !102, line: 194, baseType: !103)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "send", scope: !119, file: !120, line: 132, baseType: !254, size: 64, offset: 320)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_send_pt", file: !247, line: 22, baseType: !248)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "recv_chain", scope: !119, file: !120, line: 133, baseType: !256, size: 64, offset: 384)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_recv_chain_pt", file: !247, line: 20, baseType: !257)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{!251, !116, !260, !273}
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_chain_t", file: !118, line: 19, baseType: !262)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_chain_s", file: !263, line: 59, size: 128, elements: !264)
!263 = !DIFile(filename: "src/core/ngx_buf.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "6fc45f3cccbbf41b239dcfa9e2c5b7b1")
!264 = !{!265, !344}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !262, file: !263, line: 60, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_buf_t", file: !263, line: 18, baseType: !268)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_buf_s", file: !263, line: 20, size: 640, elements: !269)
!269 = !{!270, !271, !272, !275, !276, !277, !278, !280, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !268, file: !263, line: 21, baseType: !188, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !268, file: !263, line: 22, baseType: !188, size: 64, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "file_pos", scope: !268, file: !263, line: 23, baseType: !273, size: 64, offset: 128)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !190, line: 87, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !102, line: 153, baseType: !103)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "file_last", scope: !268, file: !263, line: 24, baseType: !273, size: 64, offset: 192)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !268, file: !263, line: 26, baseType: !188, size: 64, offset: 256)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !268, file: !263, line: 27, baseType: !188, size: 64, offset: 320)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !268, file: !263, line: 28, baseType: !279, size: 64, offset: 384)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_buf_tag_t", file: !263, line: 16, baseType: !91)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !268, file: !263, line: 29, baseType: !281, size: 64, offset: 448)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_file_t", file: !118, line: 23, baseType: !283)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_file_s", file: !284, line: 16, size: 1600, elements: !285)
!284 = !DIFile(filename: "src/core/ngx_file.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "25b6ae7999feb045abc19bb7a7bd4ab8")
!285 = !{!286, !287, !288, !326, !327, !328, !329, !330}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !283, file: !284, line: 17, baseType: !176, size: 32)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !283, file: !284, line: 18, baseType: !180, size: 128, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !283, file: !284, line: 19, baseType: !289, size: 1152, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_file_info_t", file: !177, line: 17, baseType: !290)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !291, line: 26, size: 1152, elements: !292)
!291 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!292 = !{!293, !295, !297, !299, !301, !303, !305, !306, !307, !309, !311, !313, !320, !321, !322}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !290, file: !291, line: 31, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !102, line: 145, baseType: !161)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !290, file: !291, line: 36, baseType: !296, size: 64, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !102, line: 148, baseType: !161)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !290, file: !291, line: 44, baseType: !298, size: 64, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !102, line: 151, baseType: !161)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !290, file: !291, line: 45, baseType: !300, size: 32, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !102, line: 150, baseType: !114)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !290, file: !291, line: 47, baseType: !302, size: 32, offset: 224)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !102, line: 146, baseType: !114)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !290, file: !291, line: 48, baseType: !304, size: 32, offset: 256)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !102, line: 147, baseType: !114)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !290, file: !291, line: 50, baseType: !178, size: 32, offset: 288)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !290, file: !291, line: 52, baseType: !294, size: 64, offset: 320)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !290, file: !291, line: 57, baseType: !308, size: 64, offset: 384)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !102, line: 152, baseType: !103)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !290, file: !291, line: 61, baseType: !310, size: 64, offset: 448)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !102, line: 175, baseType: !103)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !290, file: !291, line: 63, baseType: !312, size: 64, offset: 512)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !102, line: 180, baseType: !103)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !290, file: !291, line: 74, baseType: !314, size: 128, offset: 576)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !315, line: 11, size: 128, elements: !316)
!315 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!316 = !{!317, !318}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !314, file: !315, line: 16, baseType: !204, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !314, file: !315, line: 21, baseType: !319, size: 64, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !102, line: 197, baseType: !103)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !290, file: !291, line: 75, baseType: !314, size: 128, offset: 704)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !290, file: !291, line: 76, baseType: !314, size: 128, offset: 832)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !290, file: !291, line: 89, baseType: !323, size: 192, offset: 960)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 192, elements: !324)
!324 = !{!325}
!325 = !DISubrange(count: 3)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !283, file: !284, line: 21, baseType: !273, size: 64, offset: 1344)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "sys_offset", scope: !283, file: !284, line: 22, baseType: !273, size: 64, offset: 1408)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !283, file: !284, line: 24, baseType: !163, size: 64, offset: 1472)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "valid_info", scope: !283, file: !284, line: 37, baseType: !114, size: 1, offset: 1536, flags: DIFlagBitField, extraData: i64 1536)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "directio", scope: !283, file: !284, line: 38, baseType: !114, size: 1, offset: 1537, flags: DIFlagBitField, extraData: i64 1536)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "shadow", scope: !268, file: !263, line: 30, baseType: !266, size: 64, offset: 512)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "temporary", scope: !268, file: !263, line: 34, baseType: !114, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "memory", scope: !268, file: !263, line: 40, baseType: !114, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !268, file: !263, line: 43, baseType: !114, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "recycled", scope: !268, file: !263, line: 45, baseType: !114, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "in_file", scope: !268, file: !263, line: 46, baseType: !114, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !268, file: !263, line: 47, baseType: !114, size: 1, offset: 581, flags: DIFlagBitField, extraData: i64 576)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !268, file: !263, line: 48, baseType: !114, size: 1, offset: 582, flags: DIFlagBitField, extraData: i64 576)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "last_buf", scope: !268, file: !263, line: 49, baseType: !114, size: 1, offset: 583, flags: DIFlagBitField, extraData: i64 576)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "last_in_chain", scope: !268, file: !263, line: 50, baseType: !114, size: 1, offset: 584, flags: DIFlagBitField, extraData: i64 576)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "last_shadow", scope: !268, file: !263, line: 52, baseType: !114, size: 1, offset: 585, flags: DIFlagBitField, extraData: i64 576)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file", scope: !268, file: !263, line: 53, baseType: !114, size: 1, offset: 586, flags: DIFlagBitField, extraData: i64 576)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !268, file: !263, line: 55, baseType: !178, size: 32, offset: 608)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !262, file: !263, line: 61, baseType: !260, size: 64, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "send_chain", scope: !119, file: !120, line: 134, baseType: !346, size: 64, offset: 448)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_send_chain_pt", file: !247, line: 23, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{!260, !116, !260, !273}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "listening", scope: !119, file: !120, line: 136, baseType: !351, size: 64, offset: 512)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_listening_t", file: !120, line: 16, baseType: !353)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_listening_s", file: !120, line: 18, size: 2432, elements: !354)
!354 = !{!355, !356, !369, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !386, !387, !388, !389, !390, !391, !394, !395, !396, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !353, file: !120, line: 19, baseType: !243, size: 32)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !353, file: !120, line: 21, baseType: !357, size: 64, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !359, line: 180, size: 128, elements: !360)
!359 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!360 = !{!361, !365}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !358, file: !359, line: 182, baseType: !362, size: 16)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !363, line: 28, baseType: !364)
!363 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!364 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !358, file: !359, line: 183, baseType: !366, size: 112, offset: 16)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !367)
!367 = !{!368}
!368 = !DISubrange(count: 14)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !353, file: !120, line: 22, baseType: !370, size: 32, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !100, line: 274, baseType: !371)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !102, line: 210, baseType: !114)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "addr_text_max_len", scope: !353, file: !120, line: 23, baseType: !185, size: 64, offset: 192)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "addr_text", scope: !353, file: !120, line: 24, baseType: !180, size: 128, offset: 256)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !353, file: !120, line: 26, baseType: !178, size: 32, offset: 384)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "backlog", scope: !353, file: !120, line: 28, baseType: !178, size: 32, offset: 416)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "rcvbuf", scope: !353, file: !120, line: 29, baseType: !178, size: 32, offset: 448)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "sndbuf", scope: !353, file: !120, line: 30, baseType: !178, size: 32, offset: 480)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "keepidle", scope: !353, file: !120, line: 32, baseType: !178, size: 32, offset: 512)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "keepintvl", scope: !353, file: !120, line: 33, baseType: !178, size: 32, offset: 544)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "keepcnt", scope: !353, file: !120, line: 34, baseType: !178, size: 32, offset: 576)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !353, file: !120, line: 38, baseType: !382, size: 64, offset: 640)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_connection_handler_pt", file: !118, line: 33, baseType: !383)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DISubroutineType(types: !385)
!385 = !{null, !116}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "servers", scope: !353, file: !120, line: 40, baseType: !91, size: 64, offset: 704)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !353, file: !120, line: 42, baseType: !164, size: 640, offset: 768)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "logp", scope: !353, file: !120, line: 43, baseType: !163, size: 64, offset: 1408)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "pool_size", scope: !353, file: !120, line: 45, baseType: !185, size: 64, offset: 1472)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "post_accept_buffer_size", scope: !353, file: !120, line: 47, baseType: !185, size: 64, offset: 1536)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "post_accept_timeout", scope: !353, file: !120, line: 49, baseType: !392, size: 64, offset: 1600)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_msec_t", file: !393, line: 16, baseType: !226)
!393 = !DIFile(filename: "src/os/unix/ngx_time.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "dcb54d32e6c10d0319e2777a5d39953b")
!394 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !353, file: !120, line: 51, baseType: !351, size: 64, offset: 1664)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !353, file: !120, line: 52, baseType: !116, size: 64, offset: 1728)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "rbtree", scope: !353, file: !120, line: 54, baseType: !397, size: 192, offset: 1792)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_rbtree_t", file: !222, line: 32, baseType: !398)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_rbtree_s", file: !222, line: 37, size: 192, elements: !399)
!399 = !{!400, !401, !402}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !398, file: !222, line: 38, baseType: !228, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !398, file: !222, line: 39, baseType: !228, size: 64, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "insert", scope: !398, file: !222, line: 40, baseType: !403, size: 64, offset: 128)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_rbtree_insert_pt", file: !222, line: 34, baseType: !404)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DISubroutineType(types: !406)
!406 = !{null, !228, !228, !228}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !353, file: !120, line: 55, baseType: !221, size: 320, offset: 1984)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !353, file: !120, line: 57, baseType: !158, size: 64, offset: 2304)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !353, file: !120, line: 59, baseType: !114, size: 1, offset: 2368, flags: DIFlagBitField, extraData: i64 2368)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "remain", scope: !353, file: !120, line: 60, baseType: !114, size: 1, offset: 2369, flags: DIFlagBitField, extraData: i64 2368)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "ignore", scope: !353, file: !120, line: 61, baseType: !114, size: 1, offset: 2370, flags: DIFlagBitField, extraData: i64 2368)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !353, file: !120, line: 63, baseType: !114, size: 1, offset: 2371, flags: DIFlagBitField, extraData: i64 2368)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "inherited", scope: !353, file: !120, line: 64, baseType: !114, size: 1, offset: 2372, flags: DIFlagBitField, extraData: i64 2368)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "nonblocking_accept", scope: !353, file: !120, line: 65, baseType: !114, size: 1, offset: 2373, flags: DIFlagBitField, extraData: i64 2368)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "listen", scope: !353, file: !120, line: 66, baseType: !114, size: 1, offset: 2374, flags: DIFlagBitField, extraData: i64 2368)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "nonblocking", scope: !353, file: !120, line: 67, baseType: !114, size: 1, offset: 2375, flags: DIFlagBitField, extraData: i64 2368)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !353, file: !120, line: 68, baseType: !114, size: 1, offset: 2376, flags: DIFlagBitField, extraData: i64 2368)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "addr_ntop", scope: !353, file: !120, line: 69, baseType: !114, size: 1, offset: 2377, flags: DIFlagBitField, extraData: i64 2368)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "wildcard", scope: !353, file: !120, line: 70, baseType: !114, size: 1, offset: 2378, flags: DIFlagBitField, extraData: i64 2368)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6only", scope: !353, file: !120, line: 73, baseType: !114, size: 1, offset: 2379, flags: DIFlagBitField, extraData: i64 2368)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "reuseport", scope: !353, file: !120, line: 75, baseType: !114, size: 1, offset: 2380, flags: DIFlagBitField, extraData: i64 2368)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "add_reuseport", scope: !353, file: !120, line: 76, baseType: !114, size: 1, offset: 2381, flags: DIFlagBitField, extraData: i64 2368)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive", scope: !353, file: !120, line: 77, baseType: !114, size: 2, offset: 2382, flags: DIFlagBitField, extraData: i64 2368)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_accept", scope: !353, file: !120, line: 79, baseType: !114, size: 1, offset: 2384, flags: DIFlagBitField, extraData: i64 2368)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "delete_deferred", scope: !353, file: !120, line: 80, baseType: !114, size: 1, offset: 2385, flags: DIFlagBitField, extraData: i64 2368)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "add_deferred", scope: !353, file: !120, line: 81, baseType: !114, size: 1, offset: 2386, flags: DIFlagBitField, extraData: i64 2368)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "fastopen", scope: !353, file: !120, line: 90, baseType: !178, size: 32, offset: 2400)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "sent", scope: !119, file: !120, line: 138, baseType: !273, size: 64, offset: 576)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !119, file: !120, line: 140, baseType: !163, size: 64, offset: 640)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !119, file: !120, line: 142, baseType: !431, size: 64, offset: 704)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_t", file: !118, line: 18, baseType: !433)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_pool_s", file: !434, line: 57, size: 640, elements: !435)
!434 = !DIFile(filename: "src/core/ngx_palloc.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "6555a54b944797708293a47c3c8684b9")
!435 = !{!436, !444, !445, !446, !447, !454, !466}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !433, file: !434, line: 58, baseType: !437, size: 256)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_data_t", file: !434, line: 54, baseType: !438)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !434, line: 49, size: 256, elements: !439)
!439 = !{!440, !441, !442, !443}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !438, file: !434, line: 50, baseType: !188, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !438, file: !434, line: 51, baseType: !188, size: 64, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !438, file: !434, line: 52, baseType: !431, size: 64, offset: 128)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "failed", scope: !438, file: !434, line: 53, baseType: !158, size: 64, offset: 192)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !433, file: !434, line: 59, baseType: !185, size: 64, offset: 256)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !433, file: !434, line: 60, baseType: !431, size: 64, offset: 320)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !433, file: !434, line: 61, baseType: !260, size: 64, offset: 384)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "large", scope: !433, file: !434, line: 62, baseType: !448, size: 64, offset: 448)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_large_t", file: !434, line: 41, baseType: !450)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_pool_large_s", file: !434, line: 43, size: 128, elements: !451)
!451 = !{!452, !453}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !450, file: !434, line: 44, baseType: !448, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !450, file: !434, line: 45, baseType: !91, size: 64, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !433, file: !434, line: 63, baseType: !455, size: 64, offset: 512)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_cleanup_t", file: !434, line: 32, baseType: !457)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_pool_cleanup_s", file: !434, line: 34, size: 192, elements: !458)
!458 = !{!459, !464, !465}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !457, file: !434, line: 35, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_cleanup_pt", file: !434, line: 30, baseType: !461)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{null, !91}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !457, file: !434, line: 36, baseType: !91, size: 64, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !457, file: !434, line: 37, baseType: !455, size: 64, offset: 128)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !433, file: !434, line: 64, baseType: !163, size: 64, offset: 576)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !119, file: !120, line: 144, baseType: !178, size: 32, offset: 768)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !119, file: !120, line: 146, baseType: !357, size: 64, offset: 832)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !119, file: !120, line: 147, baseType: !370, size: 32, offset: 896)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "addr_text", scope: !119, file: !120, line: 148, baseType: !180, size: 128, offset: 960)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_protocol_addr", scope: !119, file: !120, line: 150, baseType: !180, size: 128, offset: 1088)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_protocol_port", scope: !119, file: !120, line: 151, baseType: !473, size: 16, offset: 1216)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !474, line: 123, baseType: !475)
!474 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !112, line: 25, baseType: !476)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !102, line: 40, baseType: !364)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !119, file: !120, line: 154, baseType: !478, size: 64, offset: 1280)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_ssl_connection_t", file: !118, line: 29, baseType: !480)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_ssl_connection_s", file: !481, line: 74, size: 704, elements: !482)
!481 = !DIFile(filename: "src/event/ngx_event_openssl.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "51639b814b1b55c5b35047c033281672")
!482 = !{!483, !488, !492, !493, !494, !495, !496, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !480, file: !481, line: 75, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL", file: !486, line: 184, baseType: !487)
!486 = !DIFile(filename: "/usr/include/openssl/types.h", directory: "", checksumkind: CSK_MD5, checksum: "44f1236065e4ee65cf4cd545c3e12ab9")
!487 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_st", file: !486, line: 184, flags: DIFlagFwdDecl)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "session_ctx", scope: !480, file: !481, line: 76, baseType: !489, size: 64, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_CTX", file: !486, line: 185, baseType: !491)
!491 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_ctx_st", file: !486, line: 185, flags: DIFlagFwdDecl)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !480, file: !481, line: 78, baseType: !97, size: 64, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !480, file: !481, line: 79, baseType: !266, size: 64, offset: 192)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_size", scope: !480, file: !481, line: 80, baseType: !185, size: 64, offset: 256)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !480, file: !481, line: 82, baseType: !382, size: 64, offset: 320)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !480, file: !481, line: 84, baseType: !497, size: 64, offset: 384)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_SESSION", file: !499, line: 231, baseType: !500)
!499 = !DIFile(filename: "/usr/include/openssl/ssl.h", directory: "", checksumkind: CSK_MD5, checksum: "848d42aedd0da44ffda19088217823c7")
!500 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_session_st", file: !499, line: 231, flags: DIFlagFwdDecl)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "save_session", scope: !480, file: !481, line: 85, baseType: !382, size: 64, offset: 448)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "saved_read_handler", scope: !480, file: !481, line: 87, baseType: !153, size: 64, offset: 512)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "saved_write_handler", scope: !480, file: !481, line: 88, baseType: !153, size: 64, offset: 576)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "early_buf", scope: !480, file: !481, line: 90, baseType: !189, size: 8, offset: 640)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "handshaked", scope: !480, file: !481, line: 92, baseType: !114, size: 1, offset: 648, flags: DIFlagBitField, extraData: i64 648)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "renegotiation", scope: !480, file: !481, line: 93, baseType: !114, size: 1, offset: 649, flags: DIFlagBitField, extraData: i64 648)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !480, file: !481, line: 94, baseType: !114, size: 1, offset: 650, flags: DIFlagBitField, extraData: i64 648)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "no_wait_shutdown", scope: !480, file: !481, line: 95, baseType: !114, size: 1, offset: 651, flags: DIFlagBitField, extraData: i64 648)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "no_send_shutdown", scope: !480, file: !481, line: 96, baseType: !114, size: 1, offset: 652, flags: DIFlagBitField, extraData: i64 648)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_buffer_set", scope: !480, file: !481, line: 97, baseType: !114, size: 1, offset: 653, flags: DIFlagBitField, extraData: i64 648)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "try_early_data", scope: !480, file: !481, line: 98, baseType: !114, size: 1, offset: 654, flags: DIFlagBitField, extraData: i64 648)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "in_early", scope: !480, file: !481, line: 99, baseType: !114, size: 1, offset: 655, flags: DIFlagBitField, extraData: i64 648)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "early_preread", scope: !480, file: !481, line: 100, baseType: !114, size: 1, offset: 656, flags: DIFlagBitField, extraData: i64 648)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "write_blocked", scope: !480, file: !481, line: 101, baseType: !114, size: 1, offset: 657, flags: DIFlagBitField, extraData: i64 648)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "udp", scope: !119, file: !120, line: 157, baseType: !516, size: 64, offset: 1344)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_udp_connection_t", file: !118, line: 30, baseType: !518)
!518 = !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_udp_connection_s", file: !118, line: 30, flags: DIFlagFwdDecl)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "local_sockaddr", scope: !119, file: !120, line: 159, baseType: !357, size: 64, offset: 1408)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "local_socklen", scope: !119, file: !120, line: 160, baseType: !370, size: 32, offset: 1472)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !119, file: !120, line: 162, baseType: !266, size: 64, offset: 1536)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !119, file: !120, line: 164, baseType: !234, size: 128, offset: 1600)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !119, file: !120, line: 166, baseType: !199, size: 64, offset: 1728)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "requests", scope: !119, file: !120, line: 168, baseType: !158, size: 64, offset: 1792)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "buffered", scope: !119, file: !120, line: 170, baseType: !114, size: 8, offset: 1856, flags: DIFlagBitField, extraData: i64 1856)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "log_error", scope: !119, file: !120, line: 172, baseType: !114, size: 3, offset: 1864, flags: DIFlagBitField, extraData: i64 1856)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "timedout", scope: !119, file: !120, line: 174, baseType: !114, size: 1, offset: 1867, flags: DIFlagBitField, extraData: i64 1856)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !119, file: !120, line: 175, baseType: !114, size: 1, offset: 1868, flags: DIFlagBitField, extraData: i64 1856)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "destroyed", scope: !119, file: !120, line: 176, baseType: !114, size: 1, offset: 1869, flags: DIFlagBitField, extraData: i64 1856)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !119, file: !120, line: 178, baseType: !114, size: 1, offset: 1870, flags: DIFlagBitField, extraData: i64 1856)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "reusable", scope: !119, file: !120, line: 179, baseType: !114, size: 1, offset: 1871, flags: DIFlagBitField, extraData: i64 1856)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !119, file: !120, line: 180, baseType: !114, size: 1, offset: 1872, flags: DIFlagBitField, extraData: i64 1856)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !119, file: !120, line: 181, baseType: !114, size: 1, offset: 1873, flags: DIFlagBitField, extraData: i64 1856)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "sendfile", scope: !119, file: !120, line: 183, baseType: !114, size: 1, offset: 1874, flags: DIFlagBitField, extraData: i64 1856)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "sndlowat", scope: !119, file: !120, line: 184, baseType: !114, size: 1, offset: 1875, flags: DIFlagBitField, extraData: i64 1856)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_nodelay", scope: !119, file: !120, line: 185, baseType: !114, size: 2, offset: 1876, flags: DIFlagBitField, extraData: i64 1856)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_nopush", scope: !119, file: !120, line: 186, baseType: !114, size: 2, offset: 1878, flags: DIFlagBitField, extraData: i64 1856)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "need_last_buf", scope: !119, file: !120, line: 188, baseType: !114, size: 1, offset: 1880, flags: DIFlagBitField, extraData: i64 1856)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !107, file: !108, line: 376, baseType: !540, size: 64, offset: 128)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "main_conf", scope: !107, file: !108, line: 377, baseType: !540, size: 64, offset: 192)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "srv_conf", scope: !107, file: !108, line: 378, baseType: !540, size: 64, offset: 256)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "loc_conf", scope: !107, file: !108, line: 379, baseType: !540, size: 64, offset: 320)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "read_event_handler", scope: !107, file: !108, line: 381, baseType: !545, size: 64, offset: 384)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_event_handler_pt", file: !108, line: 368, baseType: !546)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DISubroutineType(types: !548)
!548 = !{null, !104}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "write_event_handler", scope: !107, file: !108, line: 382, baseType: !545, size: 64, offset: 448)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !107, file: !108, line: 385, baseType: !551, size: 64, offset: 512)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_cache_t", file: !106, line: 18, baseType: !553)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_cache_s", file: !554, line: 65, size: 4800, elements: !555)
!554 = !DIFile(filename: "src/http/ngx_http_cache.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "04ea2ebc84c597718a4782ab3cabf19d")
!555 = !{!556, !557, !567, !568, !570, !571, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !729, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !553, file: !554, line: 66, baseType: !282, size: 1600)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !553, file: !554, line: 67, baseType: !558, size: 320, offset: 1600)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_array_t", file: !559, line: 22, baseType: !560)
!559 = !DIFile(filename: "src/core/ngx_array.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "225c765b8c2d594417b07329b35d9ae4")
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !559, line: 16, size: 320, elements: !561)
!561 = !{!562, !563, !564, !565, !566}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !560, file: !559, line: 17, baseType: !91, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "nelts", scope: !560, file: !559, line: 18, baseType: !158, size: 64, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !560, file: !559, line: 19, baseType: !185, size: 64, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "nalloc", scope: !560, file: !559, line: 20, baseType: !158, size: 64, offset: 192)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !560, file: !559, line: 21, baseType: !431, size: 64, offset: 256)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "crc32", scope: !553, file: !554, line: 68, baseType: !111, size: 32, offset: 1920)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !553, file: !554, line: 69, baseType: !569, size: 128, offset: 1952)
!569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 128, elements: !34)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !553, file: !554, line: 70, baseType: !569, size: 128, offset: 2080)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !553, file: !554, line: 72, baseType: !572, size: 64, offset: 2240)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_file_uniq_t", file: !177, line: 18, baseType: !573)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !190, line: 49, baseType: !574)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !102, line: 149, baseType: !161)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "valid_sec", scope: !553, file: !554, line: 73, baseType: !202, size: 64, offset: 2304)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "updating_sec", scope: !553, file: !554, line: 74, baseType: !202, size: 64, offset: 2368)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "error_sec", scope: !553, file: !554, line: 75, baseType: !202, size: 64, offset: 2432)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "last_modified", scope: !553, file: !554, line: 76, baseType: !202, size: 64, offset: 2496)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !553, file: !554, line: 77, baseType: !202, size: 64, offset: 2560)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "etag", scope: !553, file: !554, line: 79, baseType: !180, size: 128, offset: 2624)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "vary", scope: !553, file: !554, line: 80, baseType: !180, size: 128, offset: 2752)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "variant", scope: !553, file: !554, line: 81, baseType: !569, size: 128, offset: 2880)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "header_start", scope: !553, file: !554, line: 83, baseType: !185, size: 64, offset: 3008)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "body_start", scope: !553, file: !554, line: 84, baseType: !185, size: 64, offset: 3072)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !553, file: !554, line: 85, baseType: !273, size: 64, offset: 3136)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "fs_size", scope: !553, file: !554, line: 86, baseType: !273, size: 64, offset: 3200)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "min_uses", scope: !553, file: !554, line: 88, baseType: !158, size: 64, offset: 3264)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !553, file: !554, line: 89, baseType: !158, size: 64, offset: 3328)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "valid_msec", scope: !553, file: !554, line: 90, baseType: !158, size: 64, offset: 3392)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "vary_tag", scope: !553, file: !554, line: 91, baseType: !158, size: 64, offset: 3456)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !553, file: !554, line: 93, baseType: !266, size: 64, offset: 3520)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "file_cache", scope: !553, file: !554, line: 95, baseType: !593, size: 64, offset: 3584)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_file_cache_t", file: !106, line: 19, baseType: !595)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_file_cache_s", file: !554, line: 157, size: 1088, elements: !596)
!596 = !{!597, !612, !670, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !728}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "sh", scope: !595, file: !554, line: 158, baseType: !598, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_file_cache_sh_t", file: !554, line: 154, baseType: !600)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !554, line: 145, size: 960, elements: !601)
!601 = !{!602, !603, !604, !605, !608, !609, !610, !611}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "rbtree", scope: !600, file: !554, line: 146, baseType: !397, size: 192)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !600, file: !554, line: 147, baseType: !221, size: 320, offset: 192)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !600, file: !554, line: 148, baseType: !234, size: 128, offset: 512)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "cold", scope: !600, file: !554, line: 149, baseType: !606, size: 64, offset: 640)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_atomic_t", file: !200, line: 106, baseType: !607)
!607 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !199)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "loading", scope: !600, file: !554, line: 150, baseType: !606, size: 64, offset: 704)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !600, file: !554, line: 151, baseType: !273, size: 64, offset: 768)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !600, file: !554, line: 152, baseType: !158, size: 64, offset: 832)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !600, file: !554, line: 153, baseType: !158, size: 64, offset: 896)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "shpool", scope: !595, file: !554, line: 159, baseType: !613, size: 64, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_slab_pool_t", file: !615, line: 59, baseType: !616)
!615 = !DIFile(filename: "src/core/ngx_slab.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "6137611cd598fa2ecc498e6967a03177")
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !615, line: 34, size: 1600, elements: !617)
!617 = !{!618, !625, !626, !627, !635, !636, !637, !646, !647, !648, !649, !665, !666, !667, !668, !669}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !616, file: !615, line: 35, baseType: !619, size: 128)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_shmtx_sh_t", file: !620, line: 21, baseType: !621)
!620 = !DIFile(filename: "src/core/ngx_shmtx.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "56a332e5761f46e2bb83cbdaf8b18a9f")
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !620, line: 16, size: 128, elements: !622)
!622 = !{!623, !624}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !621, file: !620, line: 17, baseType: !606, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !621, file: !620, line: 19, baseType: !606, size: 64, offset: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "min_size", scope: !616, file: !615, line: 37, baseType: !185, size: 64, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "min_shift", scope: !616, file: !615, line: 38, baseType: !185, size: 64, offset: 192)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !616, file: !615, line: 40, baseType: !628, size: 64, offset: 256)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_slab_page_t", file: !615, line: 16, baseType: !630)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_slab_page_s", file: !615, line: 18, size: 192, elements: !631)
!631 = !{!632, !633, !634}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "slab", scope: !630, file: !615, line: 19, baseType: !159, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !630, file: !615, line: 20, baseType: !628, size: 64, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !630, file: !615, line: 21, baseType: !159, size: 64, offset: 128)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !616, file: !615, line: 41, baseType: !628, size: 64, offset: 320)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !616, file: !615, line: 42, baseType: !629, size: 192, offset: 384)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !616, file: !615, line: 44, baseType: !638, size: 64, offset: 576)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_slab_stat_t", file: !615, line: 31, baseType: !640)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !615, line: 25, size: 256, elements: !641)
!641 = !{!642, !643, !644, !645}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !640, file: !615, line: 26, baseType: !158, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !640, file: !615, line: 27, baseType: !158, size: 64, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "reqs", scope: !640, file: !615, line: 29, baseType: !158, size: 64, offset: 128)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "fails", scope: !640, file: !615, line: 30, baseType: !158, size: 64, offset: 192)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "pfree", scope: !616, file: !615, line: 45, baseType: !158, size: 64, offset: 640)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !616, file: !615, line: 47, baseType: !188, size: 64, offset: 704)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !616, file: !615, line: 48, baseType: !188, size: 64, offset: 768)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !616, file: !615, line: 50, baseType: !650, size: 512, offset: 832)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_shmtx_t", file: !620, line: 37, baseType: !651)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !620, line: 24, size: 512, elements: !652)
!652 = !{!653, !655, !656, !657, !664}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !651, file: !620, line: 26, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !651, file: !620, line: 28, baseType: !654, size: 64, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !651, file: !620, line: 29, baseType: !158, size: 64, offset: 128)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !651, file: !620, line: 30, baseType: !658, size: 256, offset: 192)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "sem_t", file: !659, line: 39, baseType: !660)
!659 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/semaphore.h", directory: "", checksumkind: CSK_MD5, checksum: "f0ec69aef73516c696d526041269f8fd")
!660 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !659, line: 35, size: 256, elements: !661)
!661 = !{!662, !663}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !660, file: !659, line: 37, baseType: !3, size: 256)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !660, file: !659, line: 38, baseType: !103, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "spin", scope: !651, file: !620, line: 36, baseType: !158, size: 64, offset: 448)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "log_ctx", scope: !616, file: !615, line: 52, baseType: !188, size: 64, offset: 1344)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "zero", scope: !616, file: !615, line: 53, baseType: !189, size: 8, offset: 1408)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "log_nomem", scope: !616, file: !615, line: 55, baseType: !114, size: 1, offset: 1416, flags: DIFlagBitField, extraData: i64 1416)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !616, file: !615, line: 57, baseType: !91, size: 64, offset: 1472)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !616, file: !615, line: 58, baseType: !91, size: 64, offset: 1536)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !595, file: !554, line: 161, baseType: !671, size: 64, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_path_t", file: !284, line: 62, baseType: !673)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !284, line: 50, size: 768, elements: !674)
!674 = !{!675, !676, !677, !679, !684, !686, !688, !689, !690}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !673, file: !284, line: 51, baseType: !180, size: 128)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !673, file: !284, line: 52, baseType: !185, size: 64, offset: 128)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !673, file: !284, line: 53, baseType: !678, size: 192, offset: 192)
!678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 192, elements: !324)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "manager", scope: !673, file: !284, line: 55, baseType: !680, size: 64, offset: 384)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_path_manager_pt", file: !284, line: 45, baseType: !681)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DISubroutineType(types: !683)
!683 = !{!392, !91}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "purger", scope: !673, file: !284, line: 56, baseType: !685, size: 64, offset: 448)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_path_purger_pt", file: !284, line: 46, baseType: !681)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "loader", scope: !673, file: !284, line: 57, baseType: !687, size: 64, offset: 512)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_path_loader_pt", file: !284, line: 47, baseType: !461)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !673, file: !284, line: 58, baseType: !91, size: 64, offset: 576)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "conf_file", scope: !673, file: !284, line: 60, baseType: !188, size: 64, offset: 640)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !673, file: !284, line: 61, baseType: !158, size: 64, offset: 704)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "max_size", scope: !595, file: !554, line: 163, baseType: !273, size: 64, offset: 192)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "bsize", scope: !595, file: !554, line: 164, baseType: !185, size: 64, offset: 256)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "inactive", scope: !595, file: !554, line: 166, baseType: !202, size: 64, offset: 320)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "fail_time", scope: !595, file: !554, line: 168, baseType: !202, size: 64, offset: 384)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !595, file: !554, line: 170, baseType: !158, size: 64, offset: 448)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "loader_files", scope: !595, file: !554, line: 171, baseType: !158, size: 64, offset: 512)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !595, file: !554, line: 172, baseType: !392, size: 64, offset: 576)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "loader_sleep", scope: !595, file: !554, line: 173, baseType: !392, size: 64, offset: 640)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "loader_threshold", scope: !595, file: !554, line: 174, baseType: !392, size: 64, offset: 704)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "manager_files", scope: !595, file: !554, line: 176, baseType: !158, size: 64, offset: 768)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "manager_sleep", scope: !595, file: !554, line: 177, baseType: !392, size: 64, offset: 832)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "manager_threshold", scope: !595, file: !554, line: 178, baseType: !392, size: 64, offset: 896)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "shm_zone", scope: !595, file: !554, line: 180, baseType: !704, size: 64, offset: 960)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_shm_zone_t", file: !706, line: 31, baseType: !707)
!706 = !DIFile(filename: "src/core/ngx_cycle.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "084646d0d3ecf791b89c14281fd46376")
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_shm_zone_s", file: !706, line: 37, size: 704, elements: !708)
!708 = !{!709, !710, !720, !725, !726, !727}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !707, file: !706, line: 38, baseType: !91, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "shm", scope: !707, file: !706, line: 39, baseType: !711, size: 384, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_shm_t", file: !712, line: 22, baseType: !713)
!712 = !DIFile(filename: "src/os/unix/ngx_shmem.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "bf27d4781f3b25ce5eb9a764f55ea2d4")
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !712, line: 16, size: 384, elements: !714)
!714 = !{!715, !716, !717, !718, !719}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !713, file: !712, line: 17, baseType: !188, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !713, file: !712, line: 18, baseType: !185, size: 64, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !713, file: !712, line: 19, baseType: !180, size: 128, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !713, file: !712, line: 20, baseType: !163, size: 64, offset: 256)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "exists", scope: !713, file: !712, line: 21, baseType: !158, size: 64, offset: 320)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !707, file: !706, line: 40, baseType: !721, size: 64, offset: 448)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_shm_zone_init_pt", file: !706, line: 33, baseType: !722)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{!97, !704, !91}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !707, file: !706, line: 41, baseType: !91, size: 64, offset: 512)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !707, file: !706, line: 42, baseType: !91, size: 64, offset: 576)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "noreuse", scope: !707, file: !706, line: 43, baseType: !158, size: 64, offset: 640)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "use_temp_path", scope: !595, file: !554, line: 182, baseType: !158, size: 64, offset: 1024)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !553, file: !554, line: 96, baseType: !730, size: 64, offset: 3648)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_file_cache_node_t", file: !554, line: 62, baseType: !732)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !554, line: 39, size: 960, elements: !733)
!733 = !{!734, !735, !736, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !732, file: !554, line: 40, baseType: !221, size: 320)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !732, file: !554, line: 41, baseType: !234, size: 128, offset: 320)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !732, file: !554, line: 43, baseType: !737, size: 64, offset: 448)
!737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 64, elements: !738)
!738 = !{!739}
!739 = !DISubrange(count: 8)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !732, file: !554, line: 46, baseType: !114, size: 20, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "uses", scope: !732, file: !554, line: 47, baseType: !114, size: 10, offset: 532, flags: DIFlagBitField, extraData: i64 512)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "valid_msec", scope: !732, file: !554, line: 48, baseType: !114, size: 10, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !732, file: !554, line: 49, baseType: !114, size: 10, offset: 554, flags: DIFlagBitField, extraData: i64 544)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "exists", scope: !732, file: !554, line: 50, baseType: !114, size: 1, offset: 564, flags: DIFlagBitField, extraData: i64 544)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "updating", scope: !732, file: !554, line: 51, baseType: !114, size: 1, offset: 565, flags: DIFlagBitField, extraData: i64 544)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "deleting", scope: !732, file: !554, line: 52, baseType: !114, size: 1, offset: 566, flags: DIFlagBitField, extraData: i64 544)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "purged", scope: !732, file: !554, line: 53, baseType: !114, size: 1, offset: 567, flags: DIFlagBitField, extraData: i64 544)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !732, file: !554, line: 56, baseType: !572, size: 64, offset: 576)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "expire", scope: !732, file: !554, line: 57, baseType: !202, size: 64, offset: 640)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "valid_sec", scope: !732, file: !554, line: 58, baseType: !202, size: 64, offset: 704)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "body_start", scope: !732, file: !554, line: 59, baseType: !185, size: 64, offset: 768)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "fs_size", scope: !732, file: !554, line: 60, baseType: !273, size: 64, offset: 832)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "lock_time", scope: !732, file: !554, line: 61, baseType: !392, size: 64, offset: 896)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "lock_timeout", scope: !553, file: !554, line: 102, baseType: !392, size: 64, offset: 3712)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "lock_age", scope: !553, file: !554, line: 103, baseType: !392, size: 64, offset: 3776)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "lock_time", scope: !553, file: !554, line: 104, baseType: !392, size: 64, offset: 3840)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "wait_time", scope: !553, file: !554, line: 105, baseType: !392, size: 64, offset: 3904)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "wait_event", scope: !553, file: !554, line: 107, baseType: !125, size: 768, offset: 3968)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !553, file: !554, line: 109, baseType: !114, size: 1, offset: 4736, flags: DIFlagBitField, extraData: i64 4736)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "waiting", scope: !553, file: !554, line: 110, baseType: !114, size: 1, offset: 4737, flags: DIFlagBitField, extraData: i64 4736)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "updated", scope: !553, file: !554, line: 112, baseType: !114, size: 1, offset: 4738, flags: DIFlagBitField, extraData: i64 4736)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "updating", scope: !553, file: !554, line: 113, baseType: !114, size: 1, offset: 4739, flags: DIFlagBitField, extraData: i64 4736)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "exists", scope: !553, file: !554, line: 114, baseType: !114, size: 1, offset: 4740, flags: DIFlagBitField, extraData: i64 4736)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file", scope: !553, file: !554, line: 115, baseType: !114, size: 1, offset: 4741, flags: DIFlagBitField, extraData: i64 4736)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "purged", scope: !553, file: !554, line: 116, baseType: !114, size: 1, offset: 4742, flags: DIFlagBitField, extraData: i64 4736)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "reading", scope: !553, file: !554, line: 117, baseType: !114, size: 1, offset: 4743, flags: DIFlagBitField, extraData: i64 4736)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !553, file: !554, line: 118, baseType: !114, size: 1, offset: 4744, flags: DIFlagBitField, extraData: i64 4736)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "background", scope: !553, file: !554, line: 119, baseType: !114, size: 1, offset: 4745, flags: DIFlagBitField, extraData: i64 4736)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "stale_updating", scope: !553, file: !554, line: 121, baseType: !114, size: 1, offset: 4746, flags: DIFlagBitField, extraData: i64 4736)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "stale_error", scope: !553, file: !554, line: 122, baseType: !114, size: 1, offset: 4747, flags: DIFlagBitField, extraData: i64 4736)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "upstream", scope: !107, file: !108, line: 388, baseType: !772, size: 64, offset: 576)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_t", file: !106, line: 17, baseType: !774)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_upstream_s", file: !775, line: 319, size: 8960, elements: !776)
!775 = !DIFile(filename: "src/http/ngx_http_upstream.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "c0fceda7aff0a351f062ef07edbc2de2")
!776 = !{!777, !782, !783, !832, !911, !912, !934, !943, !1226, !1227, !1228, !1229, !1230, !1231, !1271, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1452, !1456, !1457, !1461, !1462, !1463, !1464, !1465, !1469, !1473, !1477, !1478, !1492, !1493, !1494, !1495, !1496, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "read_event_handler", scope: !774, file: !775, line: 320, baseType: !778, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_handler_pt", file: !775, line: 315, baseType: !779)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DISubroutineType(types: !781)
!781 = !{null, !104, !772}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "write_event_handler", scope: !774, file: !775, line: 321, baseType: !778, size: 64, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !774, file: !775, line: 323, baseType: !784, size: 1024, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_peer_connection_t", file: !785, line: 22, baseType: !786)
!785 = !DIFile(filename: "src/event/ngx_event_connect.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "ac5aedde14d2cb26bc31b0019c79e36b")
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_peer_connection_s", file: !785, line: 36, size: 1024, elements: !787)
!787 = !{!788, !789, !790, !791, !793, !794, !795, !801, !806, !808, !809, !811, !816, !825, !826, !827, !828, !829, !830, !831}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !786, file: !785, line: 37, baseType: !116, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !786, file: !785, line: 39, baseType: !357, size: 64, offset: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !786, file: !785, line: 40, baseType: !370, size: 32, offset: 128)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !786, file: !785, line: 41, baseType: !792, size: 64, offset: 192)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "tries", scope: !786, file: !785, line: 43, baseType: !158, size: 64, offset: 256)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !786, file: !785, line: 44, baseType: !392, size: 64, offset: 320)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !786, file: !785, line: 46, baseType: !796, size: 64, offset: 384)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_get_peer_pt", file: !785, line: 24, baseType: !797)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{!97, !800, !91}
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !786, file: !785, line: 47, baseType: !802, size: 64, offset: 448)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_free_peer_pt", file: !785, line: 26, baseType: !803)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DISubroutineType(types: !805)
!805 = !{null, !800, !91, !158}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !786, file: !785, line: 48, baseType: !807, size: 64, offset: 512)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_notify_peer_pt", file: !785, line: 28, baseType: !803)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !786, file: !785, line: 49, baseType: !91, size: 64, offset: 576)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "set_session", scope: !786, file: !785, line: 52, baseType: !810, size: 64, offset: 640)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_set_peer_session_pt", file: !785, line: 30, baseType: !797)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "save_session", scope: !786, file: !785, line: 53, baseType: !812, size: 64, offset: 704)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_save_peer_session_pt", file: !785, line: 32, baseType: !813)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DISubroutineType(types: !815)
!815 = !{null, !800, !91}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !786, file: !785, line: 56, baseType: !817, size: 64, offset: 768)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_addr_t", file: !819, line: 78, baseType: !820)
!819 = !DIFile(filename: "src/core/ngx_inet.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "6d8b5de9d803e9eabdd54c00fd750bd0")
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !819, line: 74, size: 256, elements: !821)
!821 = !{!822, !823, !824}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !820, file: !819, line: 75, baseType: !357, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !820, file: !819, line: 76, baseType: !370, size: 32, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !820, file: !819, line: 77, baseType: !180, size: 128, offset: 128)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !786, file: !785, line: 58, baseType: !178, size: 32, offset: 832)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "rcvbuf", scope: !786, file: !785, line: 59, baseType: !178, size: 32, offset: 864)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !786, file: !785, line: 61, baseType: !163, size: 64, offset: 896)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "cached", scope: !786, file: !785, line: 63, baseType: !114, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !786, file: !785, line: 64, baseType: !114, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "so_keepalive", scope: !786, file: !785, line: 65, baseType: !114, size: 1, offset: 962, flags: DIFlagBitField, extraData: i64 960)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "log_error", scope: !786, file: !785, line: 68, baseType: !114, size: 2, offset: 963, flags: DIFlagBitField, extraData: i64 960)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !774, file: !775, line: 325, baseType: !833, size: 64, offset: 1152)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_pipe_t", file: !835, line: 17, baseType: !836)
!835 = !DIFile(filename: "src/event/ngx_event_pipe.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "d3e71392e0da0dbb3c5c631f1da185c7")
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_event_pipe_s", file: !835, line: 25, size: 2240, elements: !837)
!837 = !{!838, !839, !840, !841, !842, !844, !845, !846, !847, !848, !853, !854, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !910}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "upstream", scope: !836, file: !835, line: 26, baseType: !116, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "downstream", scope: !836, file: !835, line: 27, baseType: !116, size: 64, offset: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "free_raw_bufs", scope: !836, file: !835, line: 29, baseType: !260, size: 64, offset: 128)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !836, file: !835, line: 30, baseType: !260, size: 64, offset: 192)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "last_in", scope: !836, file: !835, line: 31, baseType: !843, size: 64, offset: 256)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "writing", scope: !836, file: !835, line: 33, baseType: !260, size: 64, offset: 320)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !836, file: !835, line: 35, baseType: !260, size: 64, offset: 384)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !836, file: !835, line: 36, baseType: !260, size: 64, offset: 448)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !836, file: !835, line: 37, baseType: !260, size: 64, offset: 512)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "input_filter", scope: !836, file: !835, line: 44, baseType: !849, size: 64, offset: 576)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_pipe_input_filter_pt", file: !835, line: 19, baseType: !850)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{!97, !833, !266}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "input_ctx", scope: !836, file: !835, line: 45, baseType: !91, size: 64, offset: 640)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "output_filter", scope: !836, file: !835, line: 47, baseType: !855, size: 64, offset: 704)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_pipe_output_filter_pt", file: !835, line: 21, baseType: !856)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DISubroutineType(types: !858)
!858 = !{!97, !91, !260}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "output_ctx", scope: !836, file: !835, line: 48, baseType: !91, size: 64, offset: 768)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !836, file: !835, line: 57, baseType: !114, size: 1, offset: 832, flags: DIFlagBitField, extraData: i64 832)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "cacheable", scope: !836, file: !835, line: 58, baseType: !114, size: 1, offset: 833, flags: DIFlagBitField, extraData: i64 832)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "single_buf", scope: !836, file: !835, line: 59, baseType: !114, size: 1, offset: 834, flags: DIFlagBitField, extraData: i64 832)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "free_bufs", scope: !836, file: !835, line: 60, baseType: !114, size: 1, offset: 835, flags: DIFlagBitField, extraData: i64 832)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_done", scope: !836, file: !835, line: 61, baseType: !114, size: 1, offset: 836, flags: DIFlagBitField, extraData: i64 832)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_error", scope: !836, file: !835, line: 62, baseType: !114, size: 1, offset: 837, flags: DIFlagBitField, extraData: i64 832)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_eof", scope: !836, file: !835, line: 63, baseType: !114, size: 1, offset: 838, flags: DIFlagBitField, extraData: i64 832)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_blocked", scope: !836, file: !835, line: 64, baseType: !114, size: 1, offset: 839, flags: DIFlagBitField, extraData: i64 832)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "downstream_done", scope: !836, file: !835, line: 65, baseType: !114, size: 1, offset: 840, flags: DIFlagBitField, extraData: i64 832)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "downstream_error", scope: !836, file: !835, line: 66, baseType: !114, size: 1, offset: 841, flags: DIFlagBitField, extraData: i64 832)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "cyclic_temp_file", scope: !836, file: !835, line: 67, baseType: !114, size: 1, offset: 842, flags: DIFlagBitField, extraData: i64 832)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "aio", scope: !836, file: !835, line: 68, baseType: !114, size: 1, offset: 843, flags: DIFlagBitField, extraData: i64 832)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !836, file: !835, line: 70, baseType: !97, size: 64, offset: 896)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !836, file: !835, line: 71, baseType: !874, size: 128, offset: 960)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_bufs_t", file: !263, line: 68, baseType: !875)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !263, line: 65, size: 128, elements: !876)
!876 = !{!877, !878}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !875, file: !263, line: 66, baseType: !97, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !875, file: !263, line: 67, baseType: !185, size: 64, offset: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !836, file: !835, line: 72, baseType: !279, size: 64, offset: 1088)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "busy_size", scope: !836, file: !835, line: 74, baseType: !251, size: 64, offset: 1152)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "read_length", scope: !836, file: !835, line: 76, baseType: !273, size: 64, offset: 1216)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !836, file: !835, line: 77, baseType: !273, size: 64, offset: 1280)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "max_temp_file_size", scope: !836, file: !835, line: 79, baseType: !273, size: 64, offset: 1344)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file_write_size", scope: !836, file: !835, line: 80, baseType: !251, size: 64, offset: 1408)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "read_timeout", scope: !836, file: !835, line: 82, baseType: !392, size: 64, offset: 1472)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "send_timeout", scope: !836, file: !835, line: 83, baseType: !392, size: 64, offset: 1536)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "send_lowat", scope: !836, file: !835, line: 84, baseType: !251, size: 64, offset: 1600)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !836, file: !835, line: 86, baseType: !431, size: 64, offset: 1664)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !836, file: !835, line: 87, baseType: !163, size: 64, offset: 1728)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "preread_bufs", scope: !836, file: !835, line: 89, baseType: !260, size: 64, offset: 1792)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "preread_size", scope: !836, file: !835, line: 90, baseType: !185, size: 64, offset: 1856)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "buf_to_file", scope: !836, file: !835, line: 91, baseType: !266, size: 64, offset: 1920)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "limit_rate", scope: !836, file: !835, line: 93, baseType: !185, size: 64, offset: 1984)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "start_sec", scope: !836, file: !835, line: 94, baseType: !202, size: 64, offset: 2048)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file", scope: !836, file: !835, line: 96, baseType: !896, size: 64, offset: 2112)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_temp_file_t", file: !284, line: 84, baseType: !898)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !284, line: 71, size: 1984, elements: !899)
!899 = !{!900, !901, !902, !903, !904, !905, !906, !907, !908, !909}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !898, file: !284, line: 72, baseType: !282, size: 1600)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !898, file: !284, line: 73, baseType: !273, size: 64, offset: 1600)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !898, file: !284, line: 74, baseType: !671, size: 64, offset: 1664)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !898, file: !284, line: 75, baseType: !431, size: 64, offset: 1728)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "warn", scope: !898, file: !284, line: 76, baseType: !218, size: 64, offset: 1792)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !898, file: !284, line: 78, baseType: !158, size: 64, offset: 1856)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "log_level", scope: !898, file: !284, line: 80, baseType: !114, size: 8, offset: 1920, flags: DIFlagBitField, extraData: i64 1920)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "persistent", scope: !898, file: !284, line: 81, baseType: !114, size: 1, offset: 1928, flags: DIFlagBitField, extraData: i64 1920)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "clean", scope: !898, file: !284, line: 82, baseType: !114, size: 1, offset: 1929, flags: DIFlagBitField, extraData: i64 1920)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "thread_write", scope: !898, file: !284, line: 83, baseType: !114, size: 1, offset: 1930, flags: DIFlagBitField, extraData: i64 1920)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !836, file: !835, line: 98, baseType: !178, size: 32, offset: 2176)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "request_bufs", scope: !774, file: !775, line: 327, baseType: !260, size: 64, offset: 1216)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !774, file: !775, line: 329, baseType: !913, size: 832, offset: 1280)
!913 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_output_chain_ctx_t", file: !263, line: 71, baseType: !914)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_output_chain_ctx_s", file: !263, line: 78, size: 832, elements: !915)
!915 = !{!916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !933}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !914, file: !263, line: 79, baseType: !266, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !914, file: !263, line: 80, baseType: !260, size: 64, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !914, file: !263, line: 81, baseType: !260, size: 64, offset: 128)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !914, file: !263, line: 82, baseType: !260, size: 64, offset: 192)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "sendfile", scope: !914, file: !263, line: 84, baseType: !114, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "directio", scope: !914, file: !263, line: 85, baseType: !114, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "unaligned", scope: !914, file: !263, line: 86, baseType: !114, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "need_in_memory", scope: !914, file: !263, line: 87, baseType: !114, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "need_in_temp", scope: !914, file: !263, line: 88, baseType: !114, size: 1, offset: 260, flags: DIFlagBitField, extraData: i64 256)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "aio", scope: !914, file: !263, line: 89, baseType: !114, size: 1, offset: 261, flags: DIFlagBitField, extraData: i64 256)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !914, file: !263, line: 104, baseType: !273, size: 64, offset: 320)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !914, file: !263, line: 106, baseType: !431, size: 64, offset: 384)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !914, file: !263, line: 107, baseType: !97, size: 64, offset: 448)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !914, file: !263, line: 108, baseType: !874, size: 128, offset: 512)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !914, file: !263, line: 109, baseType: !279, size: 64, offset: 640)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "output_filter", scope: !914, file: !263, line: 111, baseType: !932, size: 64, offset: 704)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_output_chain_filter_pt", file: !263, line: 73, baseType: !856)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "filter_ctx", scope: !914, file: !263, line: 112, baseType: !91, size: 64, offset: 768)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !774, file: !775, line: 330, baseType: !935, size: 320, offset: 2112)
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_chain_writer_ctx_t", file: !263, line: 122, baseType: !936)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !263, line: 116, size: 320, elements: !937)
!937 = !{!938, !939, !940, !941, !942}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !936, file: !263, line: 117, baseType: !260, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !936, file: !263, line: 118, baseType: !843, size: 64, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !936, file: !263, line: 119, baseType: !116, size: 64, offset: 128)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !936, file: !263, line: 120, baseType: !431, size: 64, offset: 192)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !936, file: !263, line: 121, baseType: !273, size: 64, offset: 256)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !774, file: !775, line: 332, baseType: !944, size: 64, offset: 2432)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_conf_t", file: !775, line: 243, baseType: !946)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !775, line: 149, size: 3904, elements: !947)
!947 = !{!948, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1168, !1169, !1170, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1221, !1222, !1223, !1224, !1225}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "upstream", scope: !946, file: !775, line: 150, baseType: !949, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_srv_conf_t", file: !775, line: 79, baseType: !951)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_upstream_srv_conf_s", file: !775, line: 121, size: 832, elements: !952)
!952 = !{!953, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !951, file: !775, line: 122, baseType: !954, size: 192)
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_peer_t", file: !775, line: 91, baseType: !955)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !775, line: 87, size: 192, elements: !956)
!956 = !{!957, !1105, !1110}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "init_upstream", scope: !955, file: !775, line: 88, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_init_pt", file: !775, line: 81, baseType: !959)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DISubroutineType(types: !961)
!961 = !{!97, !962, !949}
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_conf_t", file: !118, line: 16, baseType: !964)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_conf_s", file: !173, line: 116, size: 768, elements: !965)
!965 = !{!966, !967, !969, !1087, !1088, !1089, !1098, !1099, !1100, !1101, !1102, !1104}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !964, file: !173, line: 117, baseType: !218, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !964, file: !173, line: 118, baseType: !968, size: 64, offset: 64)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "cycle", scope: !964, file: !173, line: 120, baseType: !970, size: 64, offset: 128)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_cycle_t", file: !118, line: 17, baseType: !972)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_cycle_s", file: !706, line: 47, size: 5184, elements: !973)
!973 = !{!974, !977, !978, !979, !980, !981, !983, !984, !985, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1085, !1086}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "conf_ctx", scope: !972, file: !706, line: 48, baseType: !975, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !972, file: !706, line: 49, baseType: !431, size: 64, offset: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !972, file: !706, line: 51, baseType: !163, size: 64, offset: 128)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "new_log", scope: !972, file: !706, line: 52, baseType: !164, size: 640, offset: 192)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "log_use_stderr", scope: !972, file: !706, line: 54, baseType: !158, size: 64, offset: 832)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !972, file: !706, line: 56, baseType: !982, size: 64, offset: 896)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "free_connections", scope: !972, file: !706, line: 57, baseType: !116, size: 64, offset: 960)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "free_connection_n", scope: !972, file: !706, line: 58, baseType: !158, size: 64, offset: 1024)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !972, file: !706, line: 60, baseType: !986, size: 64, offset: 1088)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_module_t", file: !118, line: 15, baseType: !989)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_module_s", file: !990, line: 222, size: 1600, elements: !991)
!990 = !DIFile(filename: "src/core/ngx_module.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "1b2032f87974a892f93f4098e8fc0619")
!991 = !{!992, !993, !994, !995, !996, !997, !998, !1001, !1002, !1016, !1017, !1021, !1025, !1026, !1027, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_index", scope: !989, file: !990, line: 223, baseType: !158, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !989, file: !990, line: 224, baseType: !158, size: 64, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !989, file: !990, line: 226, baseType: !218, size: 64, offset: 128)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "spare0", scope: !989, file: !990, line: 228, baseType: !158, size: 64, offset: 192)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "spare1", scope: !989, file: !990, line: 229, baseType: !158, size: 64, offset: 256)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !989, file: !990, line: 231, baseType: !158, size: 64, offset: 320)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !989, file: !990, line: 232, baseType: !999, size: 64, offset: 384)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !989, file: !990, line: 234, baseType: !91, size: 64, offset: 448)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !989, file: !990, line: 235, baseType: !1003, size: 64, offset: 512)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_command_t", file: !118, line: 22, baseType: !1005)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_command_s", file: !173, line: 77, size: 448, elements: !1006)
!1006 = !{!1007, !1008, !1009, !1013, !1014, !1015}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1005, file: !173, line: 78, baseType: !180, size: 128)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1005, file: !173, line: 79, baseType: !158, size: 64, offset: 128)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1005, file: !173, line: 80, baseType: !1010, size: 64, offset: 192)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!218, !962, !1003, !91}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !1005, file: !173, line: 81, baseType: !158, size: 64, offset: 256)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1005, file: !173, line: 82, baseType: !158, size: 64, offset: 320)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "post", scope: !1005, file: !173, line: 83, baseType: !91, size: 64, offset: 384)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !989, file: !990, line: 236, baseType: !158, size: 64, offset: 576)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "init_master", scope: !989, file: !990, line: 238, baseType: !1018, size: 64, offset: 640)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!97, !163}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "init_module", scope: !989, file: !990, line: 240, baseType: !1022, size: 64, offset: 704)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!97, !970}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "init_process", scope: !989, file: !990, line: 242, baseType: !1022, size: 64, offset: 768)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "init_thread", scope: !989, file: !990, line: 243, baseType: !1022, size: 64, offset: 832)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "exit_thread", scope: !989, file: !990, line: 244, baseType: !1028, size: 64, offset: 896)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{null, !970}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "exit_process", scope: !989, file: !990, line: 245, baseType: !1028, size: 64, offset: 960)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "exit_master", scope: !989, file: !990, line: 247, baseType: !1028, size: 64, offset: 1024)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook0", scope: !989, file: !990, line: 249, baseType: !159, size: 64, offset: 1088)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook1", scope: !989, file: !990, line: 250, baseType: !159, size: 64, offset: 1152)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook2", scope: !989, file: !990, line: 251, baseType: !159, size: 64, offset: 1216)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook3", scope: !989, file: !990, line: 252, baseType: !159, size: 64, offset: 1280)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook4", scope: !989, file: !990, line: 253, baseType: !159, size: 64, offset: 1344)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook5", scope: !989, file: !990, line: 254, baseType: !159, size: 64, offset: 1408)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook6", scope: !989, file: !990, line: 255, baseType: !159, size: 64, offset: 1472)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook7", scope: !989, file: !990, line: 256, baseType: !159, size: 64, offset: 1536)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "modules_n", scope: !972, file: !706, line: 61, baseType: !158, size: 64, offset: 1152)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "modules_used", scope: !972, file: !706, line: 62, baseType: !158, size: 64, offset: 1216)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "reusable_connections_queue", scope: !972, file: !706, line: 64, baseType: !234, size: 128, offset: 1280)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "reusable_connections_n", scope: !972, file: !706, line: 65, baseType: !158, size: 64, offset: 1408)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "listening", scope: !972, file: !706, line: 67, baseType: !558, size: 320, offset: 1472)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "paths", scope: !972, file: !706, line: 68, baseType: !558, size: 320, offset: 1792)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "config_dump", scope: !972, file: !706, line: 70, baseType: !558, size: 320, offset: 2112)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "config_dump_rbtree", scope: !972, file: !706, line: 71, baseType: !397, size: 192, offset: 2432)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "config_dump_sentinel", scope: !972, file: !706, line: 72, baseType: !221, size: 320, offset: 2624)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "open_files", scope: !972, file: !706, line: 74, baseType: !1051, size: 448, offset: 2944)
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_list_t", file: !1052, line: 31, baseType: !1053)
!1052 = !DIFile(filename: "src/core/ngx_list.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "580525d954b127a1c35170a83ca4d8b1")
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1052, line: 25, size: 448, elements: !1054)
!1054 = !{!1055, !1063, !1064, !1065, !1066}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1053, file: !1052, line: 26, baseType: !1056, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_list_part_t", file: !1052, line: 16, baseType: !1058)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_list_part_s", file: !1052, line: 18, size: 192, elements: !1059)
!1059 = !{!1060, !1061, !1062}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1058, file: !1052, line: 19, baseType: !91, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "nelts", scope: !1058, file: !1052, line: 20, baseType: !158, size: 64, offset: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1058, file: !1052, line: 21, baseType: !1056, size: 64, offset: 128)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !1053, file: !1052, line: 27, baseType: !1057, size: 192, offset: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1053, file: !1052, line: 28, baseType: !185, size: 64, offset: 256)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "nalloc", scope: !1053, file: !1052, line: 29, baseType: !158, size: 64, offset: 320)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !1053, file: !1052, line: 30, baseType: !431, size: 64, offset: 384)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "shared_memory", scope: !972, file: !706, line: 75, baseType: !1051, size: 448, offset: 3392)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "connection_n", scope: !972, file: !706, line: 77, baseType: !158, size: 64, offset: 3840)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "files_n", scope: !972, file: !706, line: 78, baseType: !158, size: 64, offset: 3904)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "connections", scope: !972, file: !706, line: 80, baseType: !116, size: 64, offset: 3968)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "read_events", scope: !972, file: !706, line: 81, baseType: !124, size: 64, offset: 4032)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "write_events", scope: !972, file: !706, line: 82, baseType: !124, size: 64, offset: 4096)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "old_cycle", scope: !972, file: !706, line: 84, baseType: !970, size: 64, offset: 4160)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "conf_file", scope: !972, file: !706, line: 86, baseType: !180, size: 128, offset: 4224)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "conf_param", scope: !972, file: !706, line: 87, baseType: !180, size: 128, offset: 4352)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "conf_prefix", scope: !972, file: !706, line: 88, baseType: !180, size: 128, offset: 4480)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !972, file: !706, line: 89, baseType: !180, size: 128, offset: 4608)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "lock_file", scope: !972, file: !706, line: 90, baseType: !180, size: 128, offset: 4736)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "hostname", scope: !972, file: !706, line: 91, baseType: !180, size: 128, offset: 4864)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "intercept_error_log_handler", scope: !972, file: !706, line: 93, baseType: !1081, size: 64, offset: 4992)
!1081 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_log_intercept_pt", file: !706, line: 34, baseType: !1082)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!97, !163, !158, !188, !185}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "intercept_error_log_data", scope: !972, file: !706, line: 94, baseType: !91, size: 64, offset: 5056)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "entered_logger", scope: !972, file: !706, line: 95, baseType: !114, size: 32, offset: 5120)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !964, file: !173, line: 121, baseType: !431, size: 64, offset: 192)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "temp_pool", scope: !964, file: !173, line: 122, baseType: !431, size: 64, offset: 256)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "conf_file", scope: !964, file: !173, line: 123, baseType: !1090, size: 64, offset: 320)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_conf_file_t", file: !173, line: 103, baseType: !1092)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !173, line: 98, size: 1792, elements: !1093)
!1093 = !{!1094, !1095, !1096, !1097}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1092, file: !173, line: 99, baseType: !282, size: 1600)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1092, file: !173, line: 100, baseType: !266, size: 64, offset: 1600)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !1092, file: !173, line: 101, baseType: !266, size: 64, offset: 1664)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1092, file: !173, line: 102, baseType: !158, size: 64, offset: 1728)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !964, file: !173, line: 124, baseType: !163, size: 64, offset: 384)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !964, file: !173, line: 126, baseType: !91, size: 64, offset: 448)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "module_type", scope: !964, file: !173, line: 127, baseType: !158, size: 64, offset: 512)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_type", scope: !964, file: !173, line: 128, baseType: !158, size: 64, offset: 576)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !964, file: !173, line: 130, baseType: !1103, size: 64, offset: 640)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_conf_handler_pt", file: !173, line: 112, baseType: !1010)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "handler_conf", scope: !964, file: !173, line: 131, baseType: !91, size: 64, offset: 704)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !955, file: !775, line: 89, baseType: !1106, size: 64, offset: 64)
!1106 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_init_peer_pt", file: !775, line: 83, baseType: !1107)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!97, !104, !949}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !955, file: !775, line: 90, baseType: !91, size: 64, offset: 128)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "srv_conf", scope: !951, file: !775, line: 123, baseType: !540, size: 64, offset: 192)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "servers", scope: !951, file: !775, line: 125, baseType: !968, size: 64, offset: 256)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !951, file: !775, line: 127, baseType: !158, size: 64, offset: 320)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !951, file: !775, line: 128, baseType: !180, size: 128, offset: 384)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "file_name", scope: !951, file: !775, line: 129, baseType: !188, size: 64, offset: 512)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !951, file: !775, line: 130, baseType: !158, size: 64, offset: 576)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !951, file: !775, line: 131, baseType: !473, size: 16, offset: 640)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "no_port", scope: !951, file: !775, line: 132, baseType: !158, size: 64, offset: 704)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "shm_zone", scope: !951, file: !775, line: 135, baseType: !704, size: 64, offset: 768)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "connect_timeout", scope: !946, file: !775, line: 152, baseType: !392, size: 64, offset: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "send_timeout", scope: !946, file: !775, line: 153, baseType: !392, size: 64, offset: 128)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "read_timeout", scope: !946, file: !775, line: 154, baseType: !392, size: 64, offset: 192)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "next_upstream_timeout", scope: !946, file: !775, line: 155, baseType: !392, size: 64, offset: 256)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "send_lowat", scope: !946, file: !775, line: 157, baseType: !185, size: 64, offset: 320)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_size", scope: !946, file: !775, line: 158, baseType: !185, size: 64, offset: 384)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "limit_rate", scope: !946, file: !775, line: 159, baseType: !185, size: 64, offset: 448)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "busy_buffers_size", scope: !946, file: !775, line: 161, baseType: !185, size: 64, offset: 512)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "max_temp_file_size", scope: !946, file: !775, line: 162, baseType: !185, size: 64, offset: 576)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file_write_size", scope: !946, file: !775, line: 163, baseType: !185, size: 64, offset: 640)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "busy_buffers_size_conf", scope: !946, file: !775, line: 165, baseType: !185, size: 64, offset: 704)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "max_temp_file_size_conf", scope: !946, file: !775, line: 166, baseType: !185, size: 64, offset: 768)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file_write_size_conf", scope: !946, file: !775, line: 167, baseType: !185, size: 64, offset: 832)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !946, file: !775, line: 169, baseType: !874, size: 128, offset: 896)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_headers", scope: !946, file: !775, line: 171, baseType: !158, size: 64, offset: 1024)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "next_upstream", scope: !946, file: !775, line: 172, baseType: !158, size: 64, offset: 1088)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "store_access", scope: !946, file: !775, line: 173, baseType: !158, size: 64, offset: 1152)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "next_upstream_tries", scope: !946, file: !775, line: 174, baseType: !158, size: 64, offset: 1216)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "buffering", scope: !946, file: !775, line: 175, baseType: !1139, size: 64, offset: 1280)
!1139 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_flag_t", file: !98, line: 80, baseType: !99)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "request_buffering", scope: !946, file: !775, line: 176, baseType: !1139, size: 64, offset: 1344)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "pass_request_headers", scope: !946, file: !775, line: 177, baseType: !1139, size: 64, offset: 1408)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "pass_request_body", scope: !946, file: !775, line: 178, baseType: !1139, size: 64, offset: 1472)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_client_abort", scope: !946, file: !775, line: 180, baseType: !1139, size: 64, offset: 1536)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "intercept_errors", scope: !946, file: !775, line: 181, baseType: !1139, size: 64, offset: 1600)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "cyclic_temp_file", scope: !946, file: !775, line: 182, baseType: !1139, size: 64, offset: 1664)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "force_ranges", scope: !946, file: !775, line: 183, baseType: !1139, size: 64, offset: 1728)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "temp_path", scope: !946, file: !775, line: 185, baseType: !671, size: 64, offset: 1792)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "hide_headers_hash", scope: !946, file: !775, line: 187, baseType: !1149, size: 128, offset: 1856)
!1149 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_hash_t", file: !1150, line: 26, baseType: !1151)
!1150 = !DIFile(filename: "src/core/ngx_hash.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "0105a354ed20d0c1188bbf16af851351")
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1150, line: 23, size: 128, elements: !1152)
!1152 = !{!1153, !1167}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "buckets", scope: !1151, file: !1150, line: 24, baseType: !1154, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_hash_elt_t", file: !1150, line: 20, baseType: !1157)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1150, line: 16, size: 128, elements: !1158)
!1158 = !{!1159, !1160, !1163}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1157, file: !1150, line: 17, baseType: !91, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1157, file: !1150, line: 18, baseType: !1161, size: 16, offset: 64)
!1161 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_short", file: !190, line: 34, baseType: !1162)
!1162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_short", file: !102, line: 32, baseType: !364)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1157, file: !1150, line: 19, baseType: !1164, size: 8, offset: 80)
!1164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 8, elements: !1165)
!1165 = !{!1166}
!1166 = !DISubrange(count: 1)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1151, file: !1150, line: 25, baseType: !158, size: 64, offset: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "hide_headers", scope: !946, file: !775, line: 188, baseType: !968, size: 64, offset: 1984)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "pass_headers", scope: !946, file: !775, line: 189, baseType: !968, size: 64, offset: 2048)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !946, file: !775, line: 191, baseType: !1171, size: 64, offset: 2112)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_local_t", file: !775, line: 146, baseType: !1173)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !775, line: 140, size: 192, elements: !1174)
!1174 = !{!1175, !1176, !1187}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1173, file: !775, line: 141, baseType: !817, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1173, file: !775, line: 142, baseType: !1177, size: 64, offset: 64)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_complex_value_t", file: !1179, line: 71, baseType: !1180)
!1179 = !DIFile(filename: "src/http/ngx_http_script.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "c578244e54828180ff4c16989ec8b484")
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1179, line: 66, size: 320, elements: !1181)
!1181 = !{!1182, !1183, !1185, !1186}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1180, file: !1179, line: 67, baseType: !180, size: 128)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "flushes", scope: !1180, file: !1179, line: 68, baseType: !1184, size: 64, offset: 128)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "lengths", scope: !1180, file: !1179, line: 69, baseType: !91, size: 64, offset: 192)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1180, file: !1179, line: 70, baseType: !91, size: 64, offset: 256)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !1173, file: !775, line: 144, baseType: !158, size: 64, offset: 128)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "socket_keepalive", scope: !946, file: !775, line: 192, baseType: !1139, size: 64, offset: 2176)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "cache_zone", scope: !946, file: !775, line: 195, baseType: !704, size: 64, offset: 2240)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "cache_value", scope: !946, file: !775, line: 196, baseType: !1177, size: 64, offset: 2304)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "cache_min_uses", scope: !946, file: !775, line: 198, baseType: !158, size: 64, offset: 2368)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "cache_use_stale", scope: !946, file: !775, line: 199, baseType: !158, size: 64, offset: 2432)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "cache_methods", scope: !946, file: !775, line: 200, baseType: !158, size: 64, offset: 2496)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "cache_max_range_offset", scope: !946, file: !775, line: 202, baseType: !273, size: 64, offset: 2560)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "cache_lock", scope: !946, file: !775, line: 204, baseType: !1139, size: 64, offset: 2624)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "cache_lock_timeout", scope: !946, file: !775, line: 205, baseType: !392, size: 64, offset: 2688)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "cache_lock_age", scope: !946, file: !775, line: 206, baseType: !392, size: 64, offset: 2752)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "cache_revalidate", scope: !946, file: !775, line: 208, baseType: !1139, size: 64, offset: 2816)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "cache_convert_head", scope: !946, file: !775, line: 209, baseType: !1139, size: 64, offset: 2880)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "cache_background_update", scope: !946, file: !775, line: 210, baseType: !1139, size: 64, offset: 2944)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "cache_valid", scope: !946, file: !775, line: 212, baseType: !968, size: 64, offset: 3008)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "cache_bypass", scope: !946, file: !775, line: 213, baseType: !968, size: 64, offset: 3072)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "cache_purge", scope: !946, file: !775, line: 214, baseType: !968, size: 64, offset: 3136)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "no_cache", scope: !946, file: !775, line: 215, baseType: !968, size: 64, offset: 3200)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "store_lengths", scope: !946, file: !775, line: 218, baseType: !968, size: 64, offset: 3264)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "store_values", scope: !946, file: !775, line: 219, baseType: !968, size: 64, offset: 3328)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !946, file: !775, line: 222, baseType: !178, size: 2, offset: 3392, flags: DIFlagBitField, extraData: i64 3392)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !946, file: !775, line: 224, baseType: !178, size: 2, offset: 3394, flags: DIFlagBitField, extraData: i64 3392)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "intercept_404", scope: !946, file: !775, line: 225, baseType: !114, size: 1, offset: 3396, flags: DIFlagBitField, extraData: i64 3392)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "change_buffering", scope: !946, file: !775, line: 226, baseType: !114, size: 1, offset: 3397, flags: DIFlagBitField, extraData: i64 3392)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "pass_trailers", scope: !946, file: !775, line: 227, baseType: !114, size: 1, offset: 3398, flags: DIFlagBitField, extraData: i64 3392)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_output", scope: !946, file: !775, line: 228, baseType: !114, size: 1, offset: 3399, flags: DIFlagBitField, extraData: i64 3392)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !946, file: !775, line: 231, baseType: !1214, size: 64, offset: 3456)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_ssl_t", file: !118, line: 28, baseType: !1216)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_ssl_s", file: !481, line: 67, size: 192, elements: !1217)
!1217 = !{!1218, !1219, !1220}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !1216, file: !481, line: 68, baseType: !489, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !1216, file: !481, line: 69, baseType: !163, size: 64, offset: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_size", scope: !1216, file: !481, line: 70, baseType: !185, size: 64, offset: 128)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_session_reuse", scope: !946, file: !775, line: 232, baseType: !1139, size: 64, offset: 3520)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_name", scope: !946, file: !775, line: 234, baseType: !1177, size: 64, offset: 3584)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_server_name", scope: !946, file: !775, line: 235, baseType: !1139, size: 64, offset: 3648)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_verify", scope: !946, file: !775, line: 236, baseType: !1139, size: 64, offset: 3712)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !946, file: !775, line: 239, baseType: !180, size: 128, offset: 3776)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "upstream", scope: !774, file: !775, line: 333, baseType: !949, size: 64, offset: 2496)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "caches", scope: !774, file: !775, line: 335, baseType: !968, size: 64, offset: 2560)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "connect_timeout", scope: !774, file: !775, line: 339, baseType: !392, size: 64, offset: 2624)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "send_timeout", scope: !774, file: !775, line: 340, baseType: !392, size: 64, offset: 2688)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "read_timeout", scope: !774, file: !775, line: 341, baseType: !392, size: 64, offset: 2752)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "headers_in", scope: !774, file: !775, line: 343, baseType: !1232, size: 3072, offset: 2816)
!1232 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_headers_in_t", file: !775, line: 296, baseType: !1233)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !775, line: 256, size: 3072, elements: !1234)
!1234 = !{!1235, !1236, !1237, !1238, !1239, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !1233, file: !775, line: 257, baseType: !1051, size: 448)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "trailers", scope: !1233, file: !775, line: 258, baseType: !1051, size: 448, offset: 448)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "status_n", scope: !1233, file: !775, line: 260, baseType: !158, size: 64, offset: 896)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "status_line", scope: !1233, file: !775, line: 261, baseType: !180, size: 128, offset: 960)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1233, file: !775, line: 263, baseType: !1240, size: 64, offset: 1088)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_table_elt_t", file: !1150, line: 97, baseType: !1242)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1150, line: 92, size: 384, elements: !1243)
!1243 = !{!1244, !1245, !1246, !1247}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1242, file: !1150, line: 93, baseType: !158, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1242, file: !1150, line: 94, baseType: !180, size: 128, offset: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1242, file: !1150, line: 95, baseType: !180, size: 128, offset: 192)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "lowcase_key", scope: !1242, file: !1150, line: 96, baseType: !188, size: 64, offset: 320)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !1233, file: !775, line: 264, baseType: !1240, size: 64, offset: 1152)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !1233, file: !775, line: 265, baseType: !1240, size: 64, offset: 1216)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !1233, file: !775, line: 266, baseType: !1240, size: 64, offset: 1280)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1233, file: !775, line: 268, baseType: !1240, size: 64, offset: 1344)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "etag", scope: !1233, file: !775, line: 269, baseType: !1240, size: 64, offset: 1408)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "x_accel_expires", scope: !1233, file: !775, line: 270, baseType: !1240, size: 64, offset: 1472)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "x_accel_redirect", scope: !1233, file: !775, line: 271, baseType: !1240, size: 64, offset: 1536)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "x_accel_limit_rate", scope: !1233, file: !775, line: 272, baseType: !1240, size: 64, offset: 1600)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "content_type", scope: !1233, file: !775, line: 274, baseType: !1240, size: 64, offset: 1664)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "content_length", scope: !1233, file: !775, line: 275, baseType: !1240, size: 64, offset: 1728)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "last_modified", scope: !1233, file: !775, line: 277, baseType: !1240, size: 64, offset: 1792)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !1233, file: !775, line: 278, baseType: !1240, size: 64, offset: 1856)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "accept_ranges", scope: !1233, file: !775, line: 279, baseType: !1240, size: 64, offset: 1920)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "www_authenticate", scope: !1233, file: !775, line: 280, baseType: !1240, size: 64, offset: 1984)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_encoding", scope: !1233, file: !775, line: 281, baseType: !1240, size: 64, offset: 2048)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "vary", scope: !1233, file: !775, line: 282, baseType: !1240, size: 64, offset: 2112)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "content_encoding", scope: !1233, file: !775, line: 285, baseType: !1240, size: 64, offset: 2176)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "cache_control", scope: !1233, file: !775, line: 288, baseType: !558, size: 320, offset: 2240)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "cookies", scope: !1233, file: !775, line: 289, baseType: !558, size: 320, offset: 2560)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "content_length_n", scope: !1233, file: !775, line: 291, baseType: !273, size: 64, offset: 2880)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "last_modified_time", scope: !1233, file: !775, line: 292, baseType: !202, size: 64, offset: 2944)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "connection_close", scope: !1233, file: !775, line: 294, baseType: !114, size: 1, offset: 3008, flags: DIFlagBitField, extraData: i64 3008)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "chunked", scope: !1233, file: !775, line: 295, baseType: !114, size: 1, offset: 3009, flags: DIFlagBitField, extraData: i64 3008)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !774, file: !775, line: 345, baseType: !1272, size: 64, offset: 5888)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_resolved_t", file: !775, line: 312, baseType: !1274)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !775, line: 299, size: 704, elements: !1275)
!1275 = !{!1276, !1277, !1278, !1279, !1280, !1291, !1292, !1293, !1294}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1274, file: !775, line: 300, baseType: !180, size: 128)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1274, file: !775, line: 301, baseType: !473, size: 16, offset: 128)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "no_port", scope: !1274, file: !775, line: 302, baseType: !158, size: 64, offset: 192)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !1274, file: !775, line: 304, baseType: !158, size: 64, offset: 256)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !1274, file: !775, line: 305, baseType: !1281, size: 64, offset: 320)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_addr_t", file: !1283, line: 67, baseType: !1284)
!1283 = !DIFile(filename: "src/core/ngx_resolver.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "f052cfe8812cf8cb9c2edba7fbbb264b")
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1283, line: 61, size: 320, elements: !1285)
!1285 = !{!1286, !1287, !1288, !1289, !1290}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !1284, file: !1283, line: 62, baseType: !357, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !1284, file: !1283, line: 63, baseType: !370, size: 32, offset: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1284, file: !1283, line: 64, baseType: !180, size: 128, offset: 128)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1284, file: !1283, line: 65, baseType: !1161, size: 16, offset: 256)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1284, file: !1283, line: 66, baseType: !1161, size: 16, offset: 272)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !1274, file: !775, line: 307, baseType: !357, size: 64, offset: 384)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !1274, file: !775, line: 308, baseType: !370, size: 32, offset: 448)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1274, file: !775, line: 309, baseType: !180, size: 128, offset: 512)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !1274, file: !775, line: 311, baseType: !1295, size: 64, offset: 640)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_ctx_t", file: !1283, line: 56, baseType: !1297)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_resolver_ctx_s", file: !1283, line: 195, size: 1792, elements: !1298)
!1298 = !{!1299, !1300, !1333, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1415, !1416, !1417, !1430, !1435, !1436, !1437, !1438, !1439, !1440, !1441}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1297, file: !1283, line: 196, baseType: !1295, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "resolver", scope: !1297, file: !1283, line: 197, baseType: !1301, size: 64, offset: 64)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_t", file: !1283, line: 40, baseType: !1303)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_resolver_s", file: !1283, line: 148, size: 4096, elements: !1304)
!1304 = !{!1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1303, file: !1283, line: 150, baseType: !124, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !1303, file: !1283, line: 151, baseType: !91, size: 64, offset: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !1303, file: !1283, line: 152, baseType: !163, size: 64, offset: 128)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !1303, file: !1283, line: 155, baseType: !97, size: 64, offset: 192)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "connections", scope: !1303, file: !1283, line: 158, baseType: !558, size: 320, offset: 256)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "last_connection", scope: !1303, file: !1283, line: 159, baseType: !158, size: 64, offset: 576)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "name_rbtree", scope: !1303, file: !1283, line: 161, baseType: !397, size: 192, offset: 640)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "name_sentinel", scope: !1303, file: !1283, line: 162, baseType: !221, size: 320, offset: 832)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "srv_rbtree", scope: !1303, file: !1283, line: 164, baseType: !397, size: 192, offset: 1152)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "srv_sentinel", scope: !1303, file: !1283, line: 165, baseType: !221, size: 320, offset: 1344)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "addr_rbtree", scope: !1303, file: !1283, line: 167, baseType: !397, size: 192, offset: 1664)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "addr_sentinel", scope: !1303, file: !1283, line: 168, baseType: !221, size: 320, offset: 1856)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "name_resend_queue", scope: !1303, file: !1283, line: 170, baseType: !234, size: 128, offset: 2176)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "srv_resend_queue", scope: !1303, file: !1283, line: 171, baseType: !234, size: 128, offset: 2304)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "addr_resend_queue", scope: !1303, file: !1283, line: 172, baseType: !234, size: 128, offset: 2432)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "name_expire_queue", scope: !1303, file: !1283, line: 174, baseType: !234, size: 128, offset: 2560)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "srv_expire_queue", scope: !1303, file: !1283, line: 175, baseType: !234, size: 128, offset: 2688)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "addr_expire_queue", scope: !1303, file: !1283, line: 176, baseType: !234, size: 128, offset: 2816)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6", scope: !1303, file: !1283, line: 179, baseType: !158, size: 64, offset: 2944)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "addr6_rbtree", scope: !1303, file: !1283, line: 180, baseType: !397, size: 192, offset: 3008)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "addr6_sentinel", scope: !1303, file: !1283, line: 181, baseType: !221, size: 320, offset: 3200)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "addr6_resend_queue", scope: !1303, file: !1283, line: 182, baseType: !234, size: 128, offset: 3520)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "addr6_expire_queue", scope: !1303, file: !1283, line: 183, baseType: !234, size: 128, offset: 3648)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "resend_timeout", scope: !1303, file: !1283, line: 186, baseType: !202, size: 64, offset: 3776)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_timeout", scope: !1303, file: !1283, line: 187, baseType: !202, size: 64, offset: 3840)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "expire", scope: !1303, file: !1283, line: 188, baseType: !202, size: 64, offset: 3904)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1303, file: !1283, line: 189, baseType: !202, size: 64, offset: 3968)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "log_level", scope: !1303, file: !1283, line: 191, baseType: !158, size: 64, offset: 4032)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1297, file: !1283, line: 198, baseType: !1334, size: 64, offset: 128)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_node_t", file: !1283, line: 145, baseType: !1336)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1283, line: 92, size: 1472, elements: !1337)
!1337 = !{!1338, !1339, !1340, !1341, !1357, !1358, !1359, !1360, !1361, !1378, !1379, !1380, !1381, !1382, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1336, file: !1283, line: 93, baseType: !221, size: 320)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !1336, file: !1283, line: 94, baseType: !234, size: 128, offset: 320)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1336, file: !1283, line: 97, baseType: !188, size: 64, offset: 448)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "addr6", scope: !1336, file: !1283, line: 101, baseType: !1342, size: 128, offset: 512)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !474, line: 219, size: 128, elements: !1343)
!1343 = !{!1344}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !1342, file: !474, line: 226, baseType: !1345, size: 128)
!1345 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1342, file: !474, line: 221, size: 128, elements: !1346)
!1346 = !{!1347, !1351, !1353}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !1345, file: !474, line: 223, baseType: !1348, size: 128)
!1348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1349, size: 128, elements: !34)
!1349 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !112, line: 24, baseType: !1350)
!1350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !102, line: 38, baseType: !192)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !1345, file: !474, line: 224, baseType: !1352, size: 128)
!1352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !475, size: 128, elements: !738)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !1345, file: !474, line: 225, baseType: !1354, size: 128)
!1354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 128, elements: !1355)
!1355 = !{!1356}
!1356 = !DISubrange(count: 4)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "nlen", scope: !1336, file: !1283, line: 104, baseType: !1161, size: 16, offset: 640)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "qlen", scope: !1336, file: !1283, line: 105, baseType: !1161, size: 16, offset: 656)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "query", scope: !1336, file: !1283, line: 107, baseType: !188, size: 64, offset: 704)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "query6", scope: !1336, file: !1283, line: 109, baseType: !188, size: 64, offset: 768)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1336, file: !1283, line: 117, baseType: !1362, size: 64, offset: 832)
!1362 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1336, file: !1283, line: 112, size: 64, elements: !1363)
!1363 = !{!1364, !1366, !1368, !1369}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1362, file: !1283, line: 113, baseType: !1365, size: 32)
!1365 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !474, line: 30, baseType: !111)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !1362, file: !1283, line: 114, baseType: !1367, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "cname", scope: !1362, file: !1283, line: 115, baseType: !188, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "srvs", scope: !1362, file: !1283, line: 116, baseType: !1370, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_srv_t", file: !1283, line: 75, baseType: !1372)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1283, line: 70, size: 192, elements: !1373)
!1373 = !{!1374, !1375, !1376, !1377}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1372, file: !1283, line: 71, baseType: !180, size: 128)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1372, file: !1283, line: 72, baseType: !1161, size: 16, offset: 128)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1372, file: !1283, line: 73, baseType: !1161, size: 16, offset: 144)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1372, file: !1283, line: 74, baseType: !1161, size: 16, offset: 160)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1336, file: !1283, line: 119, baseType: !189, size: 8, offset: 896)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !1336, file: !1283, line: 120, baseType: !1161, size: 16, offset: 912)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "nsrvs", scope: !1336, file: !1283, line: 121, baseType: !1161, size: 16, offset: 928)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "cnlen", scope: !1336, file: !1283, line: 122, baseType: !1161, size: 16, offset: 944)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "u6", scope: !1336, file: !1283, line: 128, baseType: !1383, size: 128, offset: 960)
!1383 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1336, file: !1283, line: 125, size: 128, elements: !1384)
!1384 = !{!1385, !1386}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "addr6", scope: !1383, file: !1283, line: 126, baseType: !1342, size: 128)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "addrs6", scope: !1383, file: !1283, line: 127, baseType: !1387, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs6", scope: !1336, file: !1283, line: 130, baseType: !1161, size: 16, offset: 1088)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "expire", scope: !1336, file: !1283, line: 133, baseType: !202, size: 64, offset: 1152)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1336, file: !1283, line: 134, baseType: !202, size: 64, offset: 1216)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !1336, file: !1283, line: 135, baseType: !111, size: 32, offset: 1280)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "tcp", scope: !1336, file: !1283, line: 137, baseType: !114, size: 1, offset: 1312, flags: DIFlagBitField, extraData: i64 1312)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "tcp6", scope: !1336, file: !1283, line: 139, baseType: !114, size: 1, offset: 1313, flags: DIFlagBitField, extraData: i64 1312)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "last_connection", scope: !1336, file: !1283, line: 142, baseType: !158, size: 64, offset: 1344)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "waiting", scope: !1336, file: !1283, line: 144, baseType: !1295, size: 64, offset: 1408)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !1297, file: !1283, line: 201, baseType: !97, size: 64, offset: 192)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1297, file: !1283, line: 203, baseType: !97, size: 64, offset: 256)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1297, file: !1283, line: 204, baseType: !180, size: 128, offset: 320)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "service", scope: !1297, file: !1283, line: 205, baseType: !180, size: 128, offset: 448)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1297, file: !1283, line: 207, baseType: !202, size: 64, offset: 576)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !1297, file: !1283, line: 208, baseType: !158, size: 64, offset: 640)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !1297, file: !1283, line: 209, baseType: !1281, size: 64, offset: 704)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1297, file: !1283, line: 210, baseType: !1282, size: 320, offset: 768)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "sin", scope: !1297, file: !1283, line: 211, baseType: !1405, size: 128, offset: 1088)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !474, line: 245, size: 128, elements: !1406)
!1406 = !{!1407, !1408, !1409, !1413}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !1405, file: !474, line: 247, baseType: !362, size: 16)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !1405, file: !474, line: 248, baseType: !473, size: 16, offset: 16)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !1405, file: !474, line: 249, baseType: !1410, size: 32, offset: 32)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !474, line: 31, size: 32, elements: !1411)
!1411 = !{!1412}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !1410, file: !474, line: 33, baseType: !1365, size: 32)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !1405, file: !474, line: 252, baseType: !1414, size: 64, offset: 64)
!1414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 64, elements: !738)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1297, file: !1283, line: 213, baseType: !158, size: 64, offset: 1216)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "nsrvs", scope: !1297, file: !1283, line: 214, baseType: !158, size: 64, offset: 1280)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "srvs", scope: !1297, file: !1283, line: 215, baseType: !1418, size: 64, offset: 1344)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_srv_name_t", file: !1283, line: 89, baseType: !1420)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1283, line: 78, size: 448, elements: !1421)
!1421 = !{!1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1420, file: !1283, line: 79, baseType: !180, size: 128)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1420, file: !1283, line: 80, baseType: !1161, size: 16, offset: 128)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1420, file: !1283, line: 81, baseType: !1161, size: 16, offset: 144)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1420, file: !1283, line: 82, baseType: !1161, size: 16, offset: 160)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !1420, file: !1283, line: 84, baseType: !1295, size: 64, offset: 192)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1420, file: !1283, line: 85, baseType: !97, size: 64, offset: 256)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !1420, file: !1283, line: 87, baseType: !158, size: 64, offset: 320)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !1420, file: !1283, line: 88, baseType: !817, size: 64, offset: 384)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1297, file: !1283, line: 217, baseType: !1431, size: 64, offset: 1408)
!1431 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_handler_pt", file: !1283, line: 58, baseType: !1432)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{null, !1295}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1297, file: !1283, line: 218, baseType: !91, size: 64, offset: 1472)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1297, file: !1283, line: 219, baseType: !392, size: 64, offset: 1536)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "quick", scope: !1297, file: !1283, line: 221, baseType: !114, size: 1, offset: 1600, flags: DIFlagBitField, extraData: i64 1600)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "async", scope: !1297, file: !1283, line: 222, baseType: !114, size: 1, offset: 1601, flags: DIFlagBitField, extraData: i64 1600)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "cancelable", scope: !1297, file: !1283, line: 223, baseType: !114, size: 1, offset: 1602, flags: DIFlagBitField, extraData: i64 1600)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "recursion", scope: !1297, file: !1283, line: 224, baseType: !158, size: 64, offset: 1664)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1297, file: !1283, line: 225, baseType: !124, size: 64, offset: 1728)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "from_client", scope: !774, file: !775, line: 347, baseType: !267, size: 640, offset: 5952)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !774, file: !775, line: 349, baseType: !267, size: 640, offset: 6592)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !774, file: !775, line: 350, baseType: !273, size: 64, offset: 7232)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "out_bufs", scope: !774, file: !775, line: 352, baseType: !260, size: 64, offset: 7296)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "busy_bufs", scope: !774, file: !775, line: 353, baseType: !260, size: 64, offset: 7360)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "free_bufs", scope: !774, file: !775, line: 354, baseType: !260, size: 64, offset: 7424)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "input_filter_init", scope: !774, file: !775, line: 356, baseType: !1449, size: 64, offset: 7488)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{!97, !91}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "input_filter", scope: !774, file: !775, line: 357, baseType: !1453, size: 64, offset: 7552)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{!97, !91, !251}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "input_filter_ctx", scope: !774, file: !775, line: 358, baseType: !91, size: 64, offset: 7616)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "create_key", scope: !774, file: !775, line: 361, baseType: !1458, size: 64, offset: 7680)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{!97, !104}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "create_request", scope: !774, file: !775, line: 363, baseType: !1458, size: 64, offset: 7744)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "reinit_request", scope: !774, file: !775, line: 364, baseType: !1458, size: 64, offset: 7808)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "process_header", scope: !774, file: !775, line: 365, baseType: !1458, size: 64, offset: 7872)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "abort_request", scope: !774, file: !775, line: 366, baseType: !546, size: 64, offset: 7936)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "finalize_request", scope: !774, file: !775, line: 367, baseType: !1466, size: 64, offset: 8000)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{null, !104, !97}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "rewrite_redirect", scope: !774, file: !775, line: 369, baseType: !1470, size: 64, offset: 8064)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!97, !104, !1240, !185}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "rewrite_cookie", scope: !774, file: !775, line: 371, baseType: !1474, size: 64, offset: 8128)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{!97, !104, !1240}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !774, file: !775, line: 374, baseType: !392, size: 64, offset: 8192)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !774, file: !775, line: 376, baseType: !1479, size: 64, offset: 8256)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_state_t", file: !775, line: 70, baseType: !1481)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !775, line: 59, size: 576, elements: !1482)
!1482 = !{!1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1481, file: !775, line: 60, baseType: !158, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "response_time", scope: !1481, file: !775, line: 61, baseType: !392, size: 64, offset: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !1481, file: !775, line: 62, baseType: !392, size: 64, offset: 128)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "header_time", scope: !1481, file: !775, line: 63, baseType: !392, size: 64, offset: 192)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "queue_time", scope: !1481, file: !775, line: 64, baseType: !392, size: 64, offset: 256)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "response_length", scope: !1481, file: !775, line: 65, baseType: !273, size: 64, offset: 320)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_received", scope: !1481, file: !775, line: 66, baseType: !273, size: 64, offset: 384)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_sent", scope: !1481, file: !775, line: 67, baseType: !273, size: 64, offset: 448)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !1481, file: !775, line: 69, baseType: !792, size: 64, offset: 512)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !774, file: !775, line: 378, baseType: !180, size: 128, offset: 8320)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "schema", scope: !774, file: !775, line: 379, baseType: !180, size: 128, offset: 8448)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "uri", scope: !774, file: !775, line: 380, baseType: !180, size: 128, offset: 8576)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_name", scope: !774, file: !775, line: 383, baseType: !180, size: 128, offset: 8704)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !774, file: !775, line: 386, baseType: !1497, size: 64, offset: 8832)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_cleanup_pt", file: !108, line: 330, baseType: !461)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !774, file: !775, line: 388, baseType: !114, size: 1, offset: 8896, flags: DIFlagBitField, extraData: i64 8896)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "cacheable", scope: !774, file: !775, line: 389, baseType: !114, size: 1, offset: 8897, flags: DIFlagBitField, extraData: i64 8896)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "accel", scope: !774, file: !775, line: 390, baseType: !114, size: 1, offset: 8898, flags: DIFlagBitField, extraData: i64 8896)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !774, file: !775, line: 391, baseType: !114, size: 1, offset: 8899, flags: DIFlagBitField, extraData: i64 8896)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "cache_status", scope: !774, file: !775, line: 393, baseType: !114, size: 3, offset: 8900, flags: DIFlagBitField, extraData: i64 8896)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "buffering", scope: !774, file: !775, line: 396, baseType: !114, size: 1, offset: 8903, flags: DIFlagBitField, extraData: i64 8896)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive", scope: !774, file: !775, line: 397, baseType: !114, size: 1, offset: 8904, flags: DIFlagBitField, extraData: i64 8896)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "upgrade", scope: !774, file: !775, line: 398, baseType: !114, size: 1, offset: 8905, flags: DIFlagBitField, extraData: i64 8896)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "request_sent", scope: !774, file: !775, line: 400, baseType: !114, size: 1, offset: 8906, flags: DIFlagBitField, extraData: i64 8896)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_sent", scope: !774, file: !775, line: 401, baseType: !114, size: 1, offset: 8907, flags: DIFlagBitField, extraData: i64 8896)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_blocked", scope: !774, file: !775, line: 402, baseType: !114, size: 1, offset: 8908, flags: DIFlagBitField, extraData: i64 8896)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "header_sent", scope: !774, file: !775, line: 403, baseType: !114, size: 1, offset: 8909, flags: DIFlagBitField, extraData: i64 8896)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_states", scope: !107, file: !108, line: 389, baseType: !968, size: 64, offset: 640)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !107, file: !108, line: 392, baseType: !431, size: 64, offset: 704)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "header_in", scope: !107, file: !108, line: 393, baseType: !266, size: 64, offset: 768)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "headers_in", scope: !107, file: !108, line: 395, baseType: !1515, size: 3008, offset: 832)
!1515 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_headers_in_t", file: !108, line: 251, baseType: !1516)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !108, line: 181, size: 3008, elements: !1517)
!1517 = !{!1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !1516, file: !108, line: 182, baseType: !1051, size: 448)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1516, file: !108, line: 184, baseType: !1240, size: 64, offset: 448)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !1516, file: !108, line: 185, baseType: !1240, size: 64, offset: 512)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "if_modified_since", scope: !1516, file: !108, line: 186, baseType: !1240, size: 64, offset: 576)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "if_unmodified_since", scope: !1516, file: !108, line: 187, baseType: !1240, size: 64, offset: 640)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "if_match", scope: !1516, file: !108, line: 188, baseType: !1240, size: 64, offset: 704)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "if_none_match", scope: !1516, file: !108, line: 189, baseType: !1240, size: 64, offset: 768)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "user_agent", scope: !1516, file: !108, line: 190, baseType: !1240, size: 64, offset: 832)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "referer", scope: !1516, file: !108, line: 191, baseType: !1240, size: 64, offset: 896)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "content_length", scope: !1516, file: !108, line: 192, baseType: !1240, size: 64, offset: 960)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "content_range", scope: !1516, file: !108, line: 193, baseType: !1240, size: 64, offset: 1024)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "content_type", scope: !1516, file: !108, line: 194, baseType: !1240, size: 64, offset: 1088)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1516, file: !108, line: 196, baseType: !1240, size: 64, offset: 1152)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "if_range", scope: !1516, file: !108, line: 197, baseType: !1240, size: 64, offset: 1216)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_encoding", scope: !1516, file: !108, line: 199, baseType: !1240, size: 64, offset: 1280)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "te", scope: !1516, file: !108, line: 200, baseType: !1240, size: 64, offset: 1344)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "expect", scope: !1516, file: !108, line: 201, baseType: !1240, size: 64, offset: 1408)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "upgrade", scope: !1516, file: !108, line: 202, baseType: !1240, size: 64, offset: 1472)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "accept_encoding", scope: !1516, file: !108, line: 205, baseType: !1240, size: 64, offset: 1536)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "via", scope: !1516, file: !108, line: 206, baseType: !1240, size: 64, offset: 1600)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "authorization", scope: !1516, file: !108, line: 209, baseType: !1240, size: 64, offset: 1664)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive", scope: !1516, file: !108, line: 211, baseType: !1240, size: 64, offset: 1728)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "x_forwarded_for", scope: !1516, file: !108, line: 214, baseType: !558, size: 320, offset: 1792)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1516, file: !108, line: 233, baseType: !180, size: 128, offset: 2112)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "passwd", scope: !1516, file: !108, line: 234, baseType: !180, size: 128, offset: 2240)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "cookies", scope: !1516, file: !108, line: 236, baseType: !558, size: 320, offset: 2368)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !1516, file: !108, line: 238, baseType: !180, size: 128, offset: 2688)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "content_length_n", scope: !1516, file: !108, line: 239, baseType: !273, size: 64, offset: 2816)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive_n", scope: !1516, file: !108, line: 240, baseType: !202, size: 64, offset: 2880)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "connection_type", scope: !1516, file: !108, line: 242, baseType: !114, size: 2, offset: 2944, flags: DIFlagBitField, extraData: i64 2944)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "chunked", scope: !1516, file: !108, line: 243, baseType: !114, size: 1, offset: 2946, flags: DIFlagBitField, extraData: i64 2944)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "msie", scope: !1516, file: !108, line: 244, baseType: !114, size: 1, offset: 2947, flags: DIFlagBitField, extraData: i64 2944)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "msie6", scope: !1516, file: !108, line: 245, baseType: !114, size: 1, offset: 2948, flags: DIFlagBitField, extraData: i64 2944)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "opera", scope: !1516, file: !108, line: 246, baseType: !114, size: 1, offset: 2949, flags: DIFlagBitField, extraData: i64 2944)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "gecko", scope: !1516, file: !108, line: 247, baseType: !114, size: 1, offset: 2950, flags: DIFlagBitField, extraData: i64 2944)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "chrome", scope: !1516, file: !108, line: 248, baseType: !114, size: 1, offset: 2951, flags: DIFlagBitField, extraData: i64 2944)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "safari", scope: !1516, file: !108, line: 249, baseType: !114, size: 1, offset: 2952, flags: DIFlagBitField, extraData: i64 2944)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "konqueror", scope: !1516, file: !108, line: 250, baseType: !114, size: 1, offset: 2953, flags: DIFlagBitField, extraData: i64 2944)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "headers_out", scope: !107, file: !108, line: 396, baseType: !1557, size: 3264, offset: 3840)
!1557 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_headers_out_t", file: !108, line: 289, baseType: !1558)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !108, line: 254, size: 3264, elements: !1559)
!1559 = !{!1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !1558, file: !108, line: 255, baseType: !1051, size: 448)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "trailers", scope: !1558, file: !108, line: 256, baseType: !1051, size: 448, offset: 448)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1558, file: !108, line: 258, baseType: !158, size: 64, offset: 896)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "status_line", scope: !1558, file: !108, line: 259, baseType: !180, size: 128, offset: 960)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !1558, file: !108, line: 261, baseType: !1240, size: 64, offset: 1088)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !1558, file: !108, line: 262, baseType: !1240, size: 64, offset: 1152)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "content_length", scope: !1558, file: !108, line: 263, baseType: !1240, size: 64, offset: 1216)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "content_encoding", scope: !1558, file: !108, line: 264, baseType: !1240, size: 64, offset: 1280)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !1558, file: !108, line: 265, baseType: !1240, size: 64, offset: 1344)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "refresh", scope: !1558, file: !108, line: 266, baseType: !1240, size: 64, offset: 1408)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "last_modified", scope: !1558, file: !108, line: 267, baseType: !1240, size: 64, offset: 1472)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "content_range", scope: !1558, file: !108, line: 268, baseType: !1240, size: 64, offset: 1536)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "accept_ranges", scope: !1558, file: !108, line: 269, baseType: !1240, size: 64, offset: 1600)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "www_authenticate", scope: !1558, file: !108, line: 270, baseType: !1240, size: 64, offset: 1664)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1558, file: !108, line: 271, baseType: !1240, size: 64, offset: 1728)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "etag", scope: !1558, file: !108, line: 272, baseType: !1240, size: 64, offset: 1792)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "override_charset", scope: !1558, file: !108, line: 274, baseType: !792, size: 64, offset: 1856)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_len", scope: !1558, file: !108, line: 276, baseType: !185, size: 64, offset: 1920)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "content_type", scope: !1558, file: !108, line: 277, baseType: !180, size: 128, offset: 1984)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !1558, file: !108, line: 278, baseType: !180, size: 128, offset: 2112)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_lowcase", scope: !1558, file: !108, line: 279, baseType: !188, size: 64, offset: 2240)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_hash", scope: !1558, file: !108, line: 280, baseType: !158, size: 64, offset: 2304)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "cache_control", scope: !1558, file: !108, line: 282, baseType: !558, size: 320, offset: 2368)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1558, file: !108, line: 283, baseType: !558, size: 320, offset: 2688)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "content_length_n", scope: !1558, file: !108, line: 285, baseType: !273, size: 64, offset: 3008)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "content_offset", scope: !1558, file: !108, line: 286, baseType: !273, size: 64, offset: 3072)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "date_time", scope: !1558, file: !108, line: 287, baseType: !202, size: 64, offset: 3136)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "last_modified_time", scope: !1558, file: !108, line: 288, baseType: !202, size: 64, offset: 3200)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "request_body", scope: !107, file: !108, line: 398, baseType: !1589, size: 64, offset: 7104)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_request_body_t", file: !108, line: 304, baseType: !1591)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !108, line: 294, size: 576, elements: !1592)
!1592 = !{!1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1608}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file", scope: !1591, file: !108, line: 295, baseType: !896, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !1591, file: !108, line: 296, baseType: !260, size: 64, offset: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1591, file: !108, line: 297, baseType: !266, size: 64, offset: 128)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "rest", scope: !1591, file: !108, line: 298, baseType: !273, size: 64, offset: 192)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "received", scope: !1591, file: !108, line: 299, baseType: !273, size: 64, offset: 256)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1591, file: !108, line: 300, baseType: !260, size: 64, offset: 320)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !1591, file: !108, line: 301, baseType: !260, size: 64, offset: 384)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "chunked", scope: !1591, file: !108, line: 302, baseType: !1601, size: 64, offset: 448)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_chunked_t", file: !106, line: 21, baseType: !1603)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_chunked_s", file: !106, line: 59, size: 192, elements: !1604)
!1604 = !{!1605, !1606, !1607}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1603, file: !106, line: 60, baseType: !158, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1603, file: !106, line: 61, baseType: !273, size: 64, offset: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1603, file: !106, line: 62, baseType: !273, size: 64, offset: 128)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "post_handler", scope: !1591, file: !108, line: 303, baseType: !1609, size: 64, offset: 512)
!1609 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_client_body_handler_pt", file: !108, line: 292, baseType: !546)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "lingering_time", scope: !107, file: !108, line: 400, baseType: !202, size: 64, offset: 7168)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "start_sec", scope: !107, file: !108, line: 401, baseType: !202, size: 64, offset: 7232)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "start_msec", scope: !107, file: !108, line: 402, baseType: !392, size: 64, offset: 7296)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !107, file: !108, line: 404, baseType: !158, size: 64, offset: 7360)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "http_version", scope: !107, file: !108, line: 405, baseType: !158, size: 64, offset: 7424)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "request_line", scope: !107, file: !108, line: 407, baseType: !180, size: 128, offset: 7488)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "uri", scope: !107, file: !108, line: 408, baseType: !180, size: 128, offset: 7616)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !107, file: !108, line: 409, baseType: !180, size: 128, offset: 7744)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "exten", scope: !107, file: !108, line: 410, baseType: !180, size: 128, offset: 7872)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "unparsed_uri", scope: !107, file: !108, line: 411, baseType: !180, size: 128, offset: 8000)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "method_name", scope: !107, file: !108, line: 413, baseType: !180, size: 128, offset: 8128)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "http_protocol", scope: !107, file: !108, line: 414, baseType: !180, size: 128, offset: 8256)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "schema", scope: !107, file: !108, line: 415, baseType: !180, size: 128, offset: 8384)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !107, file: !108, line: 417, baseType: !260, size: 64, offset: 8512)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !107, file: !108, line: 418, baseType: !104, size: 64, offset: 8576)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !107, file: !108, line: 419, baseType: !104, size: 64, offset: 8640)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "postponed", scope: !107, file: !108, line: 420, baseType: !1627, size: 64, offset: 8704)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_postponed_request_t", file: !108, line: 350, baseType: !1629)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_postponed_request_s", file: !108, line: 352, size: 192, elements: !1630)
!1630 = !{!1631, !1632, !1633}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1629, file: !108, line: 353, baseType: !104, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !1629, file: !108, line: 354, baseType: !260, size: 64, offset: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1629, file: !108, line: 355, baseType: !1627, size: 64, offset: 128)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "post_subrequest", scope: !107, file: !108, line: 421, baseType: !1635, size: 64, offset: 8768)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_post_subrequest_t", file: !108, line: 347, baseType: !1637)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !108, line: 344, size: 128, elements: !1638)
!1638 = !{!1639, !1644}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1637, file: !108, line: 345, baseType: !1640, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_post_subrequest_pt", file: !108, line: 341, baseType: !1641)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!97, !104, !91, !97}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1637, file: !108, line: 346, baseType: !91, size: 64, offset: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "posted_requests", scope: !107, file: !108, line: 422, baseType: !1646, size: 64, offset: 8832)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_posted_request_t", file: !108, line: 359, baseType: !1648)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_posted_request_s", file: !108, line: 361, size: 128, elements: !1649)
!1649 = !{!1650, !1651}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1648, file: !108, line: 362, baseType: !104, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1648, file: !108, line: 363, baseType: !1646, size: 64, offset: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "phase_handler", scope: !107, file: !108, line: 424, baseType: !97, size: 64, offset: 8896)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "content_handler", scope: !107, file: !108, line: 425, baseType: !1654, size: 64, offset: 8960)
!1654 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_handler_pt", file: !108, line: 367, baseType: !1458)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "access_code", scope: !107, file: !108, line: 426, baseType: !158, size: 64, offset: 9024)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "variables", scope: !107, file: !108, line: 428, baseType: !1657, size: 64, offset: 9088)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_variable_value_t", file: !1659, line: 17, baseType: !1660)
!1659 = !DIFile(filename: "src/http/ngx_http_variables.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "8a2cbae62e5b0b58d6be14fb066f5b31")
!1660 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_variable_value_t", file: !181, line: 37, baseType: !1661)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !181, line: 28, size: 128, elements: !1662)
!1662 = !{!1663, !1664, !1665, !1666, !1667, !1668}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1661, file: !181, line: 29, baseType: !114, size: 28, flags: DIFlagBitField, extraData: i64 0)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1661, file: !181, line: 31, baseType: !114, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "no_cacheable", scope: !1661, file: !181, line: 32, baseType: !114, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "not_found", scope: !1661, file: !181, line: 33, baseType: !114, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "escape", scope: !1661, file: !181, line: 34, baseType: !114, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1661, file: !181, line: 36, baseType: !188, size: 64, offset: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "limit_rate", scope: !107, file: !108, line: 436, baseType: !185, size: 64, offset: 9152)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "limit_rate_after", scope: !107, file: !108, line: 437, baseType: !185, size: 64, offset: 9216)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !107, file: !108, line: 440, baseType: !185, size: 64, offset: 9280)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "request_length", scope: !107, file: !108, line: 442, baseType: !273, size: 64, offset: 9344)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "err_status", scope: !107, file: !108, line: 444, baseType: !158, size: 64, offset: 9408)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "http_connection", scope: !107, file: !108, line: 446, baseType: !1675, size: 64, offset: 9472)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_connection_t", file: !108, line: 327, baseType: !1677)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !108, line: 309, size: 448, elements: !1678)
!1678 = !{!1679, !1853, !1854, !1855, !1856, !1857, !1858, !1859}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "addr_conf", scope: !1677, file: !108, line: 310, baseType: !1680, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_addr_conf_t", file: !108, line: 307, baseType: !1682)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_addr_conf_s", file: !1683, line: 233, size: 192, elements: !1684)
!1683 = !DIFile(filename: "src/http/ngx_http_core_module.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "01bbc621c19214151ccc7d6928049534")
!1684 = !{!1685, !1824, !1850, !1851, !1852}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "default_server", scope: !1682, file: !1683, line: 235, baseType: !1686, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_core_srv_conf_t", file: !1683, line: 210, baseType: !1688)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1683, line: 180, size: 1344, elements: !1689)
!1689 = !{!1690, !1691, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "server_names", scope: !1688, file: !1683, line: 182, baseType: !558, size: 320)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !1688, file: !1683, line: 185, baseType: !1692, size: 64, offset: 320)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_conf_ctx_t", file: !1694, line: 21, baseType: !1695)
!1694 = !DIFile(filename: "src/http/ngx_http_config.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "f0f323751ab5b63196467d991a0424cd")
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1694, line: 17, size: 192, elements: !1696)
!1696 = !{!1697, !1698, !1699}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "main_conf", scope: !1695, file: !1694, line: 18, baseType: !540, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "srv_conf", scope: !1695, file: !1694, line: 19, baseType: !540, size: 64, offset: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "loc_conf", scope: !1695, file: !1694, line: 20, baseType: !540, size: 64, offset: 128)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "file_name", scope: !1688, file: !1683, line: 187, baseType: !188, size: 64, offset: 384)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1688, file: !1683, line: 188, baseType: !158, size: 64, offset: 448)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "server_name", scope: !1688, file: !1683, line: 190, baseType: !180, size: 128, offset: 512)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "connection_pool_size", scope: !1688, file: !1683, line: 192, baseType: !185, size: 64, offset: 640)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "request_pool_size", scope: !1688, file: !1683, line: 193, baseType: !185, size: 64, offset: 704)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "client_header_buffer_size", scope: !1688, file: !1683, line: 194, baseType: !185, size: 64, offset: 768)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "large_client_header_buffers", scope: !1688, file: !1683, line: 196, baseType: !874, size: 128, offset: 832)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "client_header_timeout", scope: !1688, file: !1683, line: 198, baseType: !392, size: 64, offset: 960)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_invalid_headers", scope: !1688, file: !1683, line: 200, baseType: !1139, size: 64, offset: 1024)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "merge_slashes", scope: !1688, file: !1683, line: 201, baseType: !1139, size: 64, offset: 1088)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "underscores_in_headers", scope: !1688, file: !1683, line: 202, baseType: !1139, size: 64, offset: 1152)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "listen", scope: !1688, file: !1683, line: 204, baseType: !114, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "named_locations", scope: !1688, file: !1683, line: 209, baseType: !1713, size: 64, offset: 1280)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_core_loc_conf_t", file: !1683, line: 64, baseType: !1716)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_core_loc_conf_s", file: !1683, line: 301, size: 5184, elements: !1717)
!1717 = !{!1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1716, file: !1683, line: 302, baseType: !180, size: 128)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "noname", scope: !1716, file: !1683, line: 308, baseType: !114, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "lmt_excpt", scope: !1716, file: !1683, line: 309, baseType: !114, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1716, file: !1683, line: 310, baseType: !114, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "exact_match", scope: !1716, file: !1683, line: 312, baseType: !114, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "noregex", scope: !1716, file: !1683, line: 313, baseType: !114, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "auto_redirect", scope: !1716, file: !1683, line: 315, baseType: !114, size: 1, offset: 133, flags: DIFlagBitField, extraData: i64 128)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_disable_msie6", scope: !1716, file: !1683, line: 317, baseType: !114, size: 2, offset: 134, flags: DIFlagBitField, extraData: i64 128)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_disable_degradation", scope: !1716, file: !1683, line: 318, baseType: !114, size: 2, offset: 136, flags: DIFlagBitField, extraData: i64 128)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "static_locations", scope: !1716, file: !1683, line: 321, baseType: !1728, size: 64, offset: 192)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_location_tree_node_t", file: !1683, line: 63, baseType: !1730)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_location_tree_node_s", file: !1683, line: 455, size: 384, elements: !1731)
!1731 = !{!1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !1730, file: !1683, line: 456, baseType: !1728, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !1730, file: !1683, line: 457, baseType: !1728, size: 64, offset: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !1730, file: !1683, line: 458, baseType: !1728, size: 64, offset: 128)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "exact", scope: !1730, file: !1683, line: 460, baseType: !1714, size: 64, offset: 192)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "inclusive", scope: !1730, file: !1683, line: 461, baseType: !1714, size: 64, offset: 256)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "auto_redirect", scope: !1730, file: !1683, line: 463, baseType: !189, size: 8, offset: 320)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1730, file: !1683, line: 464, baseType: !189, size: 8, offset: 328)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1730, file: !1683, line: 465, baseType: !1164, size: 8, offset: 336)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "loc_conf", scope: !1716, file: !1683, line: 327, baseType: !540, size: 64, offset: 256)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "limit_except", scope: !1716, file: !1683, line: 329, baseType: !111, size: 32, offset: 320)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "limit_except_loc_conf", scope: !1716, file: !1683, line: 330, baseType: !540, size: 64, offset: 384)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1716, file: !1683, line: 332, baseType: !1654, size: 64, offset: 448)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1716, file: !1683, line: 335, baseType: !185, size: 64, offset: 512)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1716, file: !1683, line: 336, baseType: !180, size: 128, offset: 576)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "post_action", scope: !1716, file: !1683, line: 337, baseType: !180, size: 128, offset: 704)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "root_lengths", scope: !1716, file: !1683, line: 339, baseType: !968, size: 64, offset: 832)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "root_values", scope: !1716, file: !1683, line: 340, baseType: !968, size: 64, offset: 896)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1716, file: !1683, line: 342, baseType: !968, size: 64, offset: 960)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "types_hash", scope: !1716, file: !1683, line: 343, baseType: !1149, size: 128, offset: 1024)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "default_type", scope: !1716, file: !1683, line: 344, baseType: !180, size: 128, offset: 1152)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "client_max_body_size", scope: !1716, file: !1683, line: 346, baseType: !273, size: 64, offset: 1280)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "directio", scope: !1716, file: !1683, line: 347, baseType: !273, size: 64, offset: 1344)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "directio_alignment", scope: !1716, file: !1683, line: 348, baseType: !273, size: 64, offset: 1408)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "client_body_buffer_size", scope: !1716, file: !1683, line: 350, baseType: !185, size: 64, offset: 1472)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "send_lowat", scope: !1716, file: !1683, line: 351, baseType: !185, size: 64, offset: 1536)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "postpone_output", scope: !1716, file: !1683, line: 352, baseType: !185, size: 64, offset: 1600)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "limit_rate", scope: !1716, file: !1683, line: 353, baseType: !185, size: 64, offset: 1664)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "limit_rate_after", scope: !1716, file: !1683, line: 354, baseType: !185, size: 64, offset: 1728)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "sendfile_max_chunk", scope: !1716, file: !1683, line: 355, baseType: !185, size: 64, offset: 1792)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "read_ahead", scope: !1716, file: !1683, line: 356, baseType: !185, size: 64, offset: 1856)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "subrequest_output_buffer_size", scope: !1716, file: !1683, line: 357, baseType: !185, size: 64, offset: 1920)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "client_body_timeout", scope: !1716, file: !1683, line: 360, baseType: !392, size: 64, offset: 1984)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "send_timeout", scope: !1716, file: !1683, line: 361, baseType: !392, size: 64, offset: 2048)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive_timeout", scope: !1716, file: !1683, line: 362, baseType: !392, size: 64, offset: 2112)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "lingering_time", scope: !1716, file: !1683, line: 363, baseType: !392, size: 64, offset: 2176)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "lingering_timeout", scope: !1716, file: !1683, line: 364, baseType: !392, size: 64, offset: 2240)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "resolver_timeout", scope: !1716, file: !1683, line: 365, baseType: !392, size: 64, offset: 2304)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "resolver", scope: !1716, file: !1683, line: 367, baseType: !1301, size: 64, offset: 2368)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive_header", scope: !1716, file: !1683, line: 369, baseType: !202, size: 64, offset: 2432)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive_requests", scope: !1716, file: !1683, line: 371, baseType: !158, size: 64, offset: 2496)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive_disable", scope: !1716, file: !1683, line: 372, baseType: !158, size: 64, offset: 2560)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "satisfy", scope: !1716, file: !1683, line: 373, baseType: !158, size: 64, offset: 2624)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "lingering_close", scope: !1716, file: !1683, line: 374, baseType: !158, size: 64, offset: 2688)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "if_modified_since", scope: !1716, file: !1683, line: 375, baseType: !158, size: 64, offset: 2752)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "max_ranges", scope: !1716, file: !1683, line: 376, baseType: !158, size: 64, offset: 2816)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "client_body_in_file_only", scope: !1716, file: !1683, line: 377, baseType: !158, size: 64, offset: 2880)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "client_body_in_single_buffer", scope: !1716, file: !1683, line: 379, baseType: !1139, size: 64, offset: 2944)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !1716, file: !1683, line: 381, baseType: !1139, size: 64, offset: 3008)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "sendfile", scope: !1716, file: !1683, line: 382, baseType: !1139, size: 64, offset: 3072)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "aio", scope: !1716, file: !1683, line: 383, baseType: !1139, size: 64, offset: 3136)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "aio_write", scope: !1716, file: !1683, line: 384, baseType: !1139, size: 64, offset: 3200)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_nopush", scope: !1716, file: !1683, line: 385, baseType: !1139, size: 64, offset: 3264)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_nodelay", scope: !1716, file: !1683, line: 386, baseType: !1139, size: 64, offset: 3328)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "reset_timedout_connection", scope: !1716, file: !1683, line: 387, baseType: !1139, size: 64, offset: 3392)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "absolute_redirect", scope: !1716, file: !1683, line: 388, baseType: !1139, size: 64, offset: 3456)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "server_name_in_redirect", scope: !1716, file: !1683, line: 389, baseType: !1139, size: 64, offset: 3520)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "port_in_redirect", scope: !1716, file: !1683, line: 390, baseType: !1139, size: 64, offset: 3584)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "msie_padding", scope: !1716, file: !1683, line: 391, baseType: !1139, size: 64, offset: 3648)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "msie_refresh", scope: !1716, file: !1683, line: 392, baseType: !1139, size: 64, offset: 3712)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "log_not_found", scope: !1716, file: !1683, line: 393, baseType: !1139, size: 64, offset: 3776)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "log_subrequest", scope: !1716, file: !1683, line: 394, baseType: !1139, size: 64, offset: 3840)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "recursive_error_pages", scope: !1716, file: !1683, line: 395, baseType: !1139, size: 64, offset: 3904)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "server_tokens", scope: !1716, file: !1683, line: 396, baseType: !158, size: 64, offset: 3968)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "chunked_transfer_encoding", scope: !1716, file: !1683, line: 397, baseType: !1139, size: 64, offset: 4032)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "etag", scope: !1716, file: !1683, line: 398, baseType: !1139, size: 64, offset: 4096)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_vary", scope: !1716, file: !1683, line: 401, baseType: !1139, size: 64, offset: 4160)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_http_version", scope: !1716, file: !1683, line: 403, baseType: !158, size: 64, offset: 4224)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_proxied", scope: !1716, file: !1683, line: 404, baseType: !158, size: 64, offset: 4288)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "disable_symlinks", scope: !1716, file: !1683, line: 417, baseType: !158, size: 64, offset: 4352)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "disable_symlinks_from", scope: !1716, file: !1683, line: 418, baseType: !1177, size: 64, offset: 4416)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "error_pages", scope: !1716, file: !1683, line: 421, baseType: !968, size: 64, offset: 4480)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "client_body_temp_path", scope: !1716, file: !1683, line: 423, baseType: !671, size: 64, offset: 4544)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "open_file_cache", scope: !1716, file: !1683, line: 425, baseType: !1805, size: 64, offset: 4608)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_open_file_cache_t", file: !1807, line: 99, baseType: !1808)
!1807 = !DIFile(filename: "src/core/ngx_open_file_cache.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "9c6498ea78aa56a4d896aeb1ed7e8fdf")
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1807, line: 91, size: 832, elements: !1809)
!1809 = !{!1810, !1811, !1812, !1813, !1814, !1815}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "rbtree", scope: !1808, file: !1807, line: 92, baseType: !397, size: 192)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !1808, file: !1807, line: 93, baseType: !221, size: 320, offset: 192)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "expire_queue", scope: !1808, file: !1807, line: 94, baseType: !234, size: 128, offset: 512)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !1808, file: !1807, line: 96, baseType: !158, size: 64, offset: 640)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1808, file: !1807, line: 97, baseType: !158, size: 64, offset: 704)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "inactive", scope: !1808, file: !1807, line: 98, baseType: !202, size: 64, offset: 768)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "open_file_cache_valid", scope: !1716, file: !1683, line: 426, baseType: !202, size: 64, offset: 4672)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "open_file_cache_min_uses", scope: !1716, file: !1683, line: 427, baseType: !158, size: 64, offset: 4736)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "open_file_cache_errors", scope: !1716, file: !1683, line: 428, baseType: !1139, size: 64, offset: 4800)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "open_file_cache_events", scope: !1716, file: !1683, line: 429, baseType: !1139, size: 64, offset: 4864)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "error_log", scope: !1716, file: !1683, line: 431, baseType: !163, size: 64, offset: 4928)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "types_hash_max_size", scope: !1716, file: !1683, line: 433, baseType: !158, size: 64, offset: 4992)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "types_hash_bucket_size", scope: !1716, file: !1683, line: 434, baseType: !158, size: 64, offset: 5056)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "locations", scope: !1716, file: !1683, line: 436, baseType: !239, size: 64, offset: 5120)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_names", scope: !1682, file: !1683, line: 237, baseType: !1825, size: 64, offset: 64)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_virtual_names_t", file: !1683, line: 230, baseType: !1827)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1683, line: 225, size: 384, elements: !1828)
!1828 = !{!1829, !1842, !1843}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "names", scope: !1827, file: !1683, line: 226, baseType: !1830, size: 256)
!1830 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_hash_combined_t", file: !1150, line: 49, baseType: !1831)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1150, line: 45, size: 256, elements: !1832)
!1832 = !{!1833, !1834, !1841}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1831, file: !1150, line: 46, baseType: !1149, size: 128)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "wc_head", scope: !1831, file: !1150, line: 47, baseType: !1835, size: 64, offset: 128)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_hash_wildcard_t", file: !1150, line: 32, baseType: !1837)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1150, line: 29, size: 192, elements: !1838)
!1838 = !{!1839, !1840}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1837, file: !1150, line: 30, baseType: !1149, size: 128)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1837, file: !1150, line: 31, baseType: !91, size: 64, offset: 128)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "wc_tail", scope: !1831, file: !1150, line: 48, baseType: !1835, size: 64, offset: 192)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "nregex", scope: !1827, file: !1683, line: 228, baseType: !158, size: 64, offset: 256)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "regex", scope: !1827, file: !1683, line: 229, baseType: !1844, size: 64, offset: 320)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_server_name_t", file: !1683, line: 222, baseType: !1846)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1683, line: 216, size: 192, elements: !1847)
!1847 = !{!1848, !1849}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !1846, file: !1683, line: 220, baseType: !1686, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1846, file: !1683, line: 221, baseType: !180, size: 128, offset: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !1682, file: !1683, line: 239, baseType: !114, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "http2", scope: !1682, file: !1683, line: 240, baseType: !114, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_protocol", scope: !1682, file: !1683, line: 241, baseType: !114, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "conf_ctx", scope: !1677, file: !108, line: 311, baseType: !1692, size: 64, offset: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_servername", scope: !1677, file: !108, line: 314, baseType: !792, size: 64, offset: 128)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !1677, file: !108, line: 320, baseType: !260, size: 64, offset: 192)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "nbusy", scope: !1677, file: !108, line: 321, baseType: !97, size: 64, offset: 256)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1677, file: !108, line: 323, baseType: !260, size: 64, offset: 320)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !1677, file: !108, line: 325, baseType: !114, size: 1, offset: 384, flags: DIFlagBitField, extraData: i64 384)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_protocol", scope: !1677, file: !108, line: 326, baseType: !114, size: 1, offset: 385, flags: DIFlagBitField, extraData: i64 384)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !107, file: !108, line: 447, baseType: !1861, size: 64, offset: 9536)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_v2_stream_t", file: !106, line: 22, baseType: !1863)
!1863 = !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_v2_stream_s", file: !106, line: 22, flags: DIFlagFwdDecl)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "log_handler", scope: !107, file: !108, line: 449, baseType: !1865, size: 64, offset: 9600)
!1865 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_log_handler_pt", file: !106, line: 26, baseType: !1866)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!188, !104, !104, !188, !185}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !107, file: !108, line: 451, baseType: !1870, size: 64, offset: 9664)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_cleanup_t", file: !108, line: 332, baseType: !1872)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_cleanup_s", file: !108, line: 334, size: 192, elements: !1873)
!1873 = !{!1874, !1875, !1876}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1872, file: !108, line: 335, baseType: !1498, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1872, file: !108, line: 336, baseType: !91, size: 64, offset: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1872, file: !108, line: 337, baseType: !1870, size: 64, offset: 128)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !107, file: !108, line: 453, baseType: !114, size: 16, offset: 9728, flags: DIFlagBitField, extraData: i64 9728)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "subrequests", scope: !107, file: !108, line: 454, baseType: !114, size: 8, offset: 9744, flags: DIFlagBitField, extraData: i64 9728)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !107, file: !108, line: 455, baseType: !114, size: 8, offset: 9752, flags: DIFlagBitField, extraData: i64 9728)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "aio", scope: !107, file: !108, line: 457, baseType: !114, size: 1, offset: 9760, flags: DIFlagBitField, extraData: i64 9728)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "http_state", scope: !107, file: !108, line: 459, baseType: !114, size: 4, offset: 9761, flags: DIFlagBitField, extraData: i64 9728)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "complex_uri", scope: !107, file: !108, line: 462, baseType: !114, size: 1, offset: 9765, flags: DIFlagBitField, extraData: i64 9728)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "quoted_uri", scope: !107, file: !108, line: 465, baseType: !114, size: 1, offset: 9766, flags: DIFlagBitField, extraData: i64 9728)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "plus_in_uri", scope: !107, file: !108, line: 468, baseType: !114, size: 1, offset: 9767, flags: DIFlagBitField, extraData: i64 9728)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "space_in_uri", scope: !107, file: !108, line: 471, baseType: !114, size: 1, offset: 9768, flags: DIFlagBitField, extraData: i64 9728)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "invalid_header", scope: !107, file: !108, line: 473, baseType: !114, size: 1, offset: 9769, flags: DIFlagBitField, extraData: i64 9728)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "add_uri_to_alias", scope: !107, file: !108, line: 475, baseType: !114, size: 1, offset: 9770, flags: DIFlagBitField, extraData: i64 9728)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "valid_location", scope: !107, file: !108, line: 476, baseType: !114, size: 1, offset: 9771, flags: DIFlagBitField, extraData: i64 9728)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "valid_unparsed_uri", scope: !107, file: !108, line: 477, baseType: !114, size: 1, offset: 9772, flags: DIFlagBitField, extraData: i64 9728)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "uri_changed", scope: !107, file: !108, line: 478, baseType: !114, size: 1, offset: 9773, flags: DIFlagBitField, extraData: i64 9728)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "uri_changes", scope: !107, file: !108, line: 479, baseType: !114, size: 4, offset: 9774, flags: DIFlagBitField, extraData: i64 9728)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_in_single_buf", scope: !107, file: !108, line: 481, baseType: !114, size: 1, offset: 9778, flags: DIFlagBitField, extraData: i64 9728)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_in_file_only", scope: !107, file: !108, line: 482, baseType: !114, size: 1, offset: 9779, flags: DIFlagBitField, extraData: i64 9728)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_in_persistent_file", scope: !107, file: !108, line: 483, baseType: !114, size: 1, offset: 9780, flags: DIFlagBitField, extraData: i64 9728)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_in_clean_file", scope: !107, file: !108, line: 484, baseType: !114, size: 1, offset: 9781, flags: DIFlagBitField, extraData: i64 9728)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_file_group_access", scope: !107, file: !108, line: 485, baseType: !114, size: 1, offset: 9782, flags: DIFlagBitField, extraData: i64 9728)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_file_log_level", scope: !107, file: !108, line: 486, baseType: !114, size: 3, offset: 9783, flags: DIFlagBitField, extraData: i64 9728)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_no_buffering", scope: !107, file: !108, line: 487, baseType: !114, size: 1, offset: 9786, flags: DIFlagBitField, extraData: i64 9728)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "subrequest_in_memory", scope: !107, file: !108, line: 489, baseType: !114, size: 1, offset: 9787, flags: DIFlagBitField, extraData: i64 9728)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "waited", scope: !107, file: !108, line: 490, baseType: !114, size: 1, offset: 9788, flags: DIFlagBitField, extraData: i64 9728)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "cached", scope: !107, file: !108, line: 493, baseType: !114, size: 1, offset: 9789, flags: DIFlagBitField, extraData: i64 9728)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_tested", scope: !107, file: !108, line: 497, baseType: !114, size: 1, offset: 9790, flags: DIFlagBitField, extraData: i64 9728)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_ok", scope: !107, file: !108, line: 498, baseType: !114, size: 1, offset: 9791, flags: DIFlagBitField, extraData: i64 9728)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_vary", scope: !107, file: !108, line: 499, baseType: !114, size: 1, offset: 9792, flags: DIFlagBitField, extraData: i64 9728)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !107, file: !108, line: 506, baseType: !114, size: 1, offset: 9793, flags: DIFlagBitField, extraData: i64 9728)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "bypass_cache", scope: !107, file: !108, line: 507, baseType: !114, size: 1, offset: 9794, flags: DIFlagBitField, extraData: i64 9728)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "no_cache", scope: !107, file: !108, line: 508, baseType: !114, size: 1, offset: 9795, flags: DIFlagBitField, extraData: i64 9728)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "limit_conn_set", scope: !107, file: !108, line: 515, baseType: !114, size: 1, offset: 9796, flags: DIFlagBitField, extraData: i64 9728)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "limit_req_set", scope: !107, file: !108, line: 516, baseType: !114, size: 1, offset: 9797, flags: DIFlagBitField, extraData: i64 9728)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "pipeline", scope: !107, file: !108, line: 522, baseType: !114, size: 1, offset: 9798, flags: DIFlagBitField, extraData: i64 9728)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "chunked", scope: !107, file: !108, line: 523, baseType: !114, size: 1, offset: 9799, flags: DIFlagBitField, extraData: i64 9728)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "header_only", scope: !107, file: !108, line: 524, baseType: !114, size: 1, offset: 9800, flags: DIFlagBitField, extraData: i64 9728)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "expect_trailers", scope: !107, file: !108, line: 525, baseType: !114, size: 1, offset: 9801, flags: DIFlagBitField, extraData: i64 9728)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive", scope: !107, file: !108, line: 526, baseType: !114, size: 1, offset: 9802, flags: DIFlagBitField, extraData: i64 9728)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "lingering_close", scope: !107, file: !108, line: 527, baseType: !114, size: 1, offset: 9803, flags: DIFlagBitField, extraData: i64 9728)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "discard_body", scope: !107, file: !108, line: 528, baseType: !114, size: 1, offset: 9804, flags: DIFlagBitField, extraData: i64 9728)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "reading_body", scope: !107, file: !108, line: 529, baseType: !114, size: 1, offset: 9805, flags: DIFlagBitField, extraData: i64 9728)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !107, file: !108, line: 530, baseType: !114, size: 1, offset: 9806, flags: DIFlagBitField, extraData: i64 9728)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "error_page", scope: !107, file: !108, line: 531, baseType: !114, size: 1, offset: 9807, flags: DIFlagBitField, extraData: i64 9728)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "filter_finalize", scope: !107, file: !108, line: 532, baseType: !114, size: 1, offset: 9808, flags: DIFlagBitField, extraData: i64 9728)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "post_action", scope: !107, file: !108, line: 533, baseType: !114, size: 1, offset: 9809, flags: DIFlagBitField, extraData: i64 9728)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "request_complete", scope: !107, file: !108, line: 534, baseType: !114, size: 1, offset: 9810, flags: DIFlagBitField, extraData: i64 9728)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "request_output", scope: !107, file: !108, line: 535, baseType: !114, size: 1, offset: 9811, flags: DIFlagBitField, extraData: i64 9728)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "header_sent", scope: !107, file: !108, line: 536, baseType: !114, size: 1, offset: 9812, flags: DIFlagBitField, extraData: i64 9728)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "expect_tested", scope: !107, file: !108, line: 537, baseType: !114, size: 1, offset: 9813, flags: DIFlagBitField, extraData: i64 9728)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "root_tested", scope: !107, file: !108, line: 538, baseType: !114, size: 1, offset: 9814, flags: DIFlagBitField, extraData: i64 9728)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !107, file: !108, line: 539, baseType: !114, size: 1, offset: 9815, flags: DIFlagBitField, extraData: i64 9728)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "logged", scope: !107, file: !108, line: 540, baseType: !114, size: 1, offset: 9816, flags: DIFlagBitField, extraData: i64 9728)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "buffered", scope: !107, file: !108, line: 542, baseType: !114, size: 4, offset: 9817, flags: DIFlagBitField, extraData: i64 9728)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "main_filter_need_in_memory", scope: !107, file: !108, line: 544, baseType: !114, size: 1, offset: 9821, flags: DIFlagBitField, extraData: i64 9728)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "filter_need_in_memory", scope: !107, file: !108, line: 545, baseType: !114, size: 1, offset: 9822, flags: DIFlagBitField, extraData: i64 9728)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "filter_need_temporary", scope: !107, file: !108, line: 546, baseType: !114, size: 1, offset: 9823, flags: DIFlagBitField, extraData: i64 9728)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_body", scope: !107, file: !108, line: 547, baseType: !114, size: 1, offset: 9824, flags: DIFlagBitField, extraData: i64 9728)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "allow_ranges", scope: !107, file: !108, line: 548, baseType: !114, size: 1, offset: 9825, flags: DIFlagBitField, extraData: i64 9728)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "subrequest_ranges", scope: !107, file: !108, line: 549, baseType: !114, size: 1, offset: 9826, flags: DIFlagBitField, extraData: i64 9728)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "single_range", scope: !107, file: !108, line: 550, baseType: !114, size: 1, offset: 9827, flags: DIFlagBitField, extraData: i64 9728)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "disable_not_modified", scope: !107, file: !108, line: 551, baseType: !114, size: 1, offset: 9828, flags: DIFlagBitField, extraData: i64 9728)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "stat_reading", scope: !107, file: !108, line: 552, baseType: !114, size: 1, offset: 9829, flags: DIFlagBitField, extraData: i64 9728)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "stat_writing", scope: !107, file: !108, line: 553, baseType: !114, size: 1, offset: 9830, flags: DIFlagBitField, extraData: i64 9728)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "stat_processing", scope: !107, file: !108, line: 554, baseType: !114, size: 1, offset: 9831, flags: DIFlagBitField, extraData: i64 9728)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "background", scope: !107, file: !108, line: 556, baseType: !114, size: 1, offset: 9832, flags: DIFlagBitField, extraData: i64 9728)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "health_check", scope: !107, file: !108, line: 557, baseType: !114, size: 1, offset: 9833, flags: DIFlagBitField, extraData: i64 9728)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !107, file: !108, line: 561, baseType: !158, size: 64, offset: 9856)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "header_hash", scope: !107, file: !108, line: 563, baseType: !158, size: 64, offset: 9920)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "lowcase_index", scope: !107, file: !108, line: 564, baseType: !158, size: 64, offset: 9984)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "lowcase_header", scope: !107, file: !108, line: 565, baseType: !1947, size: 256, offset: 10048)
!1947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 256, elements: !5)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "header_name_start", scope: !107, file: !108, line: 567, baseType: !188, size: 64, offset: 10304)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "header_name_end", scope: !107, file: !108, line: 568, baseType: !188, size: 64, offset: 10368)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "header_start", scope: !107, file: !108, line: 569, baseType: !188, size: 64, offset: 10432)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "header_end", scope: !107, file: !108, line: 570, baseType: !188, size: 64, offset: 10496)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "uri_start", scope: !107, file: !108, line: 577, baseType: !188, size: 64, offset: 10560)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "uri_end", scope: !107, file: !108, line: 578, baseType: !188, size: 64, offset: 10624)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "uri_ext", scope: !107, file: !108, line: 579, baseType: !188, size: 64, offset: 10688)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "args_start", scope: !107, file: !108, line: 580, baseType: !188, size: 64, offset: 10752)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "request_start", scope: !107, file: !108, line: 581, baseType: !188, size: 64, offset: 10816)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "request_end", scope: !107, file: !108, line: 582, baseType: !188, size: 64, offset: 10880)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "method_end", scope: !107, file: !108, line: 583, baseType: !188, size: 64, offset: 10944)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "schema_start", scope: !107, file: !108, line: 584, baseType: !188, size: 64, offset: 11008)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "schema_end", scope: !107, file: !108, line: 585, baseType: !188, size: 64, offset: 11072)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "host_start", scope: !107, file: !108, line: 586, baseType: !188, size: 64, offset: 11136)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "host_end", scope: !107, file: !108, line: 587, baseType: !188, size: 64, offset: 11200)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "port_start", scope: !107, file: !108, line: 588, baseType: !188, size: 64, offset: 11264)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "port_end", scope: !107, file: !108, line: 589, baseType: !188, size: 64, offset: 11328)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "http_minor", scope: !107, file: !108, line: 591, baseType: !114, size: 16, offset: 11392, flags: DIFlagBitField, extraData: i64 11392)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "http_major", scope: !107, file: !108, line: 592, baseType: !114, size: 16, offset: 11408, flags: DIFlagBitField, extraData: i64 11392)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_lua_srv_conf_t", file: !93, line: 153, baseType: !1969)
!1969 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "ngx_http_lua_srv_conf_u", file: !93, line: 278, size: 768, elements: !1970)
!1970 = !{!1971, !1983}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "srv", scope: !1969, file: !93, line: 292, baseType: !1972, size: 768)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1969, file: !93, line: 280, size: 768, elements: !1973)
!1973 = !{!1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_cert_handler", scope: !1972, file: !93, line: 281, baseType: !92, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_cert_src", scope: !1972, file: !93, line: 282, baseType: !180, size: 128, offset: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_cert_src_key", scope: !1972, file: !93, line: 283, baseType: !188, size: 64, offset: 192)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_sess_store_handler", scope: !1972, file: !93, line: 285, baseType: !92, size: 64, offset: 256)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_sess_store_src", scope: !1972, file: !93, line: 286, baseType: !180, size: 128, offset: 320)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_sess_store_src_key", scope: !1972, file: !93, line: 287, baseType: !188, size: 64, offset: 448)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_sess_fetch_handler", scope: !1972, file: !93, line: 289, baseType: !92, size: 64, offset: 512)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_sess_fetch_src", scope: !1972, file: !93, line: 290, baseType: !180, size: 128, offset: 576)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_sess_fetch_src_key", scope: !1972, file: !93, line: 291, baseType: !188, size: 64, offset: 704)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "balancer", scope: !1969, file: !93, line: 300, baseType: !1984, size: 256)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1969, file: !93, line: 295, size: 256, elements: !1985)
!1985 = !{!1986, !1987, !1988}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1984, file: !93, line: 296, baseType: !180, size: 128)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "src_key", scope: !1984, file: !93, line: 297, baseType: !188, size: 64, offset: 128)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1984, file: !93, line: 299, baseType: !92, size: 64, offset: 192)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_State", file: !1991, line: 51, baseType: !1992)
!1991 = !DIFile(filename: "luajit-root/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spa/linux-ubuntu22.04-zen2/clang-18.0.0/openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/luajit/include/luajit-2.1/lua.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build", checksumkind: CSK_MD5, checksum: "255fa697efe8afbe3c913e4a8fc1e62f")
!1992 = !DICompositeType(tag: DW_TAG_structure_type, name: "lua_State", file: !1991, line: 51, flags: DIFlagFwdDecl)
!1993 = !{!0, !7, !12, !17, !22, !24, !26, !31, !36, !41, !43, !45, !47, !49, !54, !59, !64, !69, !71, !73, !78, !83}
!1994 = !{i32 7, !"Dwarf Version", i32 5}
!1995 = !{i32 2, !"Debug Info Version", i32 3}
!1996 = !{i32 1, !"wchar_size", i32 4}
!1997 = !{i32 8, !"PIC Level", i32 2}
!1998 = !{i32 7, !"PIE Level", i32 2}
!1999 = !{i32 7, !"uwtable", i32 2}
!2000 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!2001 = distinct !DISubprogram(name: "ngx_http_lua_ssl_sess_store_handler_file", scope: !2, file: !2, line: 35, type: !95, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !2002)
!2002 = !{!2003, !2004, !2005, !2006}
!2003 = !DILocalVariable(name: "r", arg: 1, scope: !2001, file: !2, line: 35, type: !104)
!2004 = !DILocalVariable(name: "lscf", arg: 2, scope: !2001, file: !2, line: 36, type: !1967)
!2005 = !DILocalVariable(name: "L", arg: 3, scope: !2001, file: !2, line: 36, type: !1989)
!2006 = !DILocalVariable(name: "rc", scope: !2001, file: !2, line: 38, type: !97)
!2007 = !{!2008, !2008, i64 0}
!2008 = !{!"any pointer", !2009, i64 0}
!2009 = !{!"omnipotent char", !2010, i64 0}
!2010 = !{!"Simple C/C++ TBAA"}
!2011 = !DILocation(line: 35, column: 62, scope: !2001)
!2012 = !DILocation(line: 36, column: 30, scope: !2001)
!2013 = !DILocation(line: 36, column: 47, scope: !2001)
!2014 = !DILocation(line: 38, column: 5, scope: !2001)
!2015 = !DILocation(line: 38, column: 25, scope: !2001)
!2016 = !DILocation(line: 40, column: 38, scope: !2001)
!2017 = !DILocation(line: 40, column: 41, scope: !2001)
!2018 = !{!2019, !2008, i64 8}
!2019 = !{!"ngx_http_request_s", !2020, i64 0, !2008, i64 8, !2008, i64 16, !2008, i64 24, !2008, i64 32, !2008, i64 40, !2008, i64 48, !2008, i64 56, !2008, i64 64, !2008, i64 72, !2008, i64 80, !2008, i64 88, !2008, i64 96, !2021, i64 104, !2027, i64 480, !2008, i64 888, !2024, i64 896, !2024, i64 904, !2024, i64 912, !2024, i64 920, !2024, i64 928, !2026, i64 936, !2026, i64 952, !2026, i64 968, !2026, i64 984, !2026, i64 1000, !2026, i64 1016, !2026, i64 1032, !2026, i64 1048, !2008, i64 1064, !2008, i64 1072, !2008, i64 1080, !2008, i64 1088, !2008, i64 1096, !2008, i64 1104, !2024, i64 1112, !2008, i64 1120, !2024, i64 1128, !2008, i64 1136, !2024, i64 1144, !2024, i64 1152, !2024, i64 1160, !2024, i64 1168, !2024, i64 1176, !2008, i64 1184, !2008, i64 1192, !2008, i64 1200, !2008, i64 1208, !2020, i64 1216, !2020, i64 1218, !2020, i64 1219, !2020, i64 1220, !2020, i64 1220, !2020, i64 1220, !2020, i64 1220, !2020, i64 1220, !2020, i64 1221, !2020, i64 1221, !2020, i64 1221, !2020, i64 1221, !2020, i64 1221, !2020, i64 1221, !2020, i64 1221, !2020, i64 1222, !2020, i64 1222, !2020, i64 1222, !2020, i64 1222, !2020, i64 1222, !2020, i64 1222, !2020, i64 1223, !2020, i64 1223, !2020, i64 1223, !2020, i64 1223, !2020, i64 1223, !2020, i64 1223, !2020, i64 1224, !2020, i64 1224, !2020, i64 1224, !2020, i64 1224, !2020, i64 1224, !2020, i64 1224, !2020, i64 1224, !2020, i64 1224, !2020, i64 1225, !2020, i64 1225, !2020, i64 1225, !2020, i64 1225, !2020, i64 1225, !2020, i64 1225, !2020, i64 1225, !2020, i64 1225, !2020, i64 1226, !2020, i64 1226, !2020, i64 1226, !2020, i64 1226, !2020, i64 1226, !2020, i64 1226, !2020, i64 1226, !2020, i64 1226, !2020, i64 1227, !2020, i64 1227, !2020, i64 1227, !2020, i64 1227, !2020, i64 1227, !2020, i64 1228, !2020, i64 1228, !2020, i64 1228, !2020, i64 1228, !2020, i64 1228, !2020, i64 1228, !2020, i64 1228, !2020, i64 1228, !2020, i64 1229, !2020, i64 1229, !2024, i64 1232, !2024, i64 1240, !2024, i64 1248, !2009, i64 1256, !2008, i64 1288, !2008, i64 1296, !2008, i64 1304, !2008, i64 1312, !2008, i64 1320, !2008, i64 1328, !2008, i64 1336, !2008, i64 1344, !2008, i64 1352, !2008, i64 1360, !2008, i64 1368, !2008, i64 1376, !2008, i64 1384, !2008, i64 1392, !2008, i64 1400, !2008, i64 1408, !2008, i64 1416, !2020, i64 1424, !2020, i64 1426}
!2020 = !{!"int", !2009, i64 0}
!2021 = !{!"", !2022, i64 0, !2008, i64 56, !2008, i64 64, !2008, i64 72, !2008, i64 80, !2008, i64 88, !2008, i64 96, !2008, i64 104, !2008, i64 112, !2008, i64 120, !2008, i64 128, !2008, i64 136, !2008, i64 144, !2008, i64 152, !2008, i64 160, !2008, i64 168, !2008, i64 176, !2008, i64 184, !2008, i64 192, !2008, i64 200, !2008, i64 208, !2008, i64 216, !2025, i64 224, !2026, i64 264, !2026, i64 280, !2025, i64 296, !2026, i64 336, !2024, i64 352, !2024, i64 360, !2020, i64 368, !2020, i64 368, !2020, i64 368, !2020, i64 368, !2020, i64 368, !2020, i64 368, !2020, i64 368, !2020, i64 369, !2020, i64 369}
!2022 = !{!"", !2008, i64 0, !2023, i64 8, !2024, i64 32, !2024, i64 40, !2008, i64 48}
!2023 = !{!"ngx_list_part_s", !2008, i64 0, !2024, i64 8, !2008, i64 16}
!2024 = !{!"long", !2009, i64 0}
!2025 = !{!"", !2008, i64 0, !2024, i64 8, !2024, i64 16, !2024, i64 24, !2008, i64 32}
!2026 = !{!"", !2024, i64 0, !2008, i64 8}
!2027 = !{!"", !2022, i64 0, !2022, i64 56, !2024, i64 112, !2026, i64 120, !2008, i64 136, !2008, i64 144, !2008, i64 152, !2008, i64 160, !2008, i64 168, !2008, i64 176, !2008, i64 184, !2008, i64 192, !2008, i64 200, !2008, i64 208, !2008, i64 216, !2008, i64 224, !2008, i64 232, !2024, i64 240, !2026, i64 248, !2026, i64 264, !2008, i64 280, !2024, i64 288, !2025, i64 296, !2025, i64 336, !2024, i64 376, !2024, i64 384, !2024, i64 392, !2024, i64 400}
!2028 = !DILocation(line: 40, column: 53, scope: !2001)
!2029 = !{!2030, !2008, i64 80}
!2030 = !{!"ngx_connection_s", !2008, i64 0, !2008, i64 8, !2008, i64 16, !2020, i64 24, !2008, i64 32, !2008, i64 40, !2008, i64 48, !2008, i64 56, !2008, i64 64, !2024, i64 72, !2008, i64 80, !2008, i64 88, !2020, i64 96, !2008, i64 104, !2020, i64 112, !2026, i64 120, !2026, i64 136, !2031, i64 152, !2008, i64 160, !2008, i64 168, !2008, i64 176, !2020, i64 184, !2008, i64 192, !2032, i64 200, !2024, i64 216, !2024, i64 224, !2020, i64 232, !2020, i64 233, !2020, i64 233, !2020, i64 233, !2020, i64 233, !2020, i64 233, !2020, i64 233, !2020, i64 234, !2020, i64 234, !2020, i64 234, !2020, i64 234, !2020, i64 234, !2020, i64 234, !2020, i64 235}
!2031 = !{!"short", !2009, i64 0}
!2032 = !{!"ngx_queue_s", !2008, i64 0, !2008, i64 8}
!2033 = !DILocation(line: 40, column: 58, scope: !2001)
!2034 = !DILocation(line: 41, column: 38, scope: !2001)
!2035 = !DILocation(line: 41, column: 48, scope: !2001)
!2036 = !DILocation(line: 41, column: 67, scope: !2001)
!2037 = !{!2009, !2009, i64 0}
!2038 = !DILocation(line: 42, column: 38, scope: !2001)
!2039 = !DILocation(line: 42, column: 48, scope: !2001)
!2040 = !DILocation(line: 40, column: 10, scope: !2001)
!2041 = !DILocation(line: 40, column: 8, scope: !2001)
!2042 = !{!2024, !2024, i64 0}
!2043 = !DILocation(line: 43, column: 9, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2001, file: !2, line: 43, column: 9)
!2045 = !DILocation(line: 43, column: 12, scope: !2044)
!2046 = !DILocation(line: 43, column: 9, scope: !2001)
!2047 = !DILocation(line: 44, column: 16, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2044, file: !2, line: 43, column: 23)
!2049 = !DILocation(line: 44, column: 9, scope: !2048)
!2050 = !DILocation(line: 50, column: 49, scope: !2001)
!2051 = !DILocation(line: 50, column: 52, scope: !2001)
!2052 = !DILocation(line: 50, column: 12, scope: !2001)
!2053 = !DILocation(line: 50, column: 5, scope: !2001)
!2054 = !DILocation(line: 51, column: 1, scope: !2001)
!2055 = !DISubprogram(name: "ngx_http_lua_cache_loadfile", scope: !2056, file: !2056, line: 18, type: !2057, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2056 = !DIFile(filename: "../ngx_lua-0.10.15/src/ngx_http_lua_cache.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "b3b505c453ea00f183475af81038edb2")
!2057 = !DISubroutineType(types: !2058)
!2058 = !{!97, !163, !1989, !2059, !2059}
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!2061 = distinct !DISubprogram(name: "ngx_http_lua_ssl_sess_store_by_chunk", scope: !2, file: !2, line: 356, type: !2062, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !2064)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!97, !1989, !104}
!2064 = !{!2065, !2066, !2067, !2068, !2069, !2070}
!2065 = !DILocalVariable(name: "L", arg: 1, scope: !2061, file: !2, line: 356, type: !1989)
!2066 = !DILocalVariable(name: "r", arg: 2, scope: !2061, file: !2, line: 356, type: !104)
!2067 = !DILocalVariable(name: "len", scope: !2061, file: !2, line: 358, type: !185)
!2068 = !DILocalVariable(name: "err_msg", scope: !2061, file: !2, line: 359, type: !188)
!2069 = !DILocalVariable(name: "rc", scope: !2061, file: !2, line: 360, type: !97)
!2070 = !DILocalVariable(name: "ctx", scope: !2061, file: !2, line: 361, type: !2071)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_lua_ctx_t", file: !93, line: 597, baseType: !2073)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_lua_ctx_s", file: !93, line: 483, size: 3200, elements: !2074)
!2074 = !{!2075, !2082, !2083, !2084, !2119, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "vm_state", scope: !2073, file: !93, line: 485, baseType: !2076, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_lua_vm_state_t", file: !93, line: 480, baseType: !2078)
!2078 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !93, line: 477, size: 128, elements: !2079)
!2079 = !{!2080, !2081}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "vm", scope: !2078, file: !93, line: 478, baseType: !1989, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2078, file: !93, line: 479, baseType: !97, size: 64, offset: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2073, file: !93, line: 487, baseType: !104, size: 64, offset: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "resume_handler", scope: !2073, file: !93, line: 488, baseType: !1654, size: 64, offset: 128)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "cur_co_ctx", scope: !2073, file: !93, line: 490, baseType: !2085, size: 64, offset: 192)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_lua_co_ctx_t", file: !93, line: 403, baseType: !2087)
!2087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_lua_co_ctx_s", file: !93, line: 418, size: 1600, elements: !2088)
!2088 = !{!2089, !2090, !2091, !2092, !2099, !2100, !2102, !2105, !2106, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2087, file: !93, line: 419, baseType: !91, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "co", scope: !2087, file: !93, line: 421, baseType: !1989, size: 64, offset: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "parent_co_ctx", scope: !2087, file: !93, line: 422, baseType: !2085, size: 64, offset: 128)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "zombie_child_threads", scope: !2087, file: !93, line: 424, baseType: !2093, size: 64, offset: 192)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_lua_posted_thread_t", file: !93, line: 405, baseType: !2095)
!2095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_lua_posted_thread_s", file: !93, line: 407, size: 128, elements: !2096)
!2096 = !{!2097, !2098}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "co_ctx", scope: !2095, file: !93, line: 408, baseType: !2085, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2095, file: !93, line: 409, baseType: !2093, size: 64, offset: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2087, file: !93, line: 426, baseType: !1498, size: 64, offset: 256)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "sr_statuses", scope: !2087, file: !93, line: 428, baseType: !2101, size: 64, offset: 320)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "sr_headers", scope: !2087, file: !93, line: 430, baseType: !2103, size: 64, offset: 384)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "sr_bodies", scope: !2087, file: !93, line: 432, baseType: !792, size: 64, offset: 448)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "sr_flags", scope: !2087, file: !93, line: 434, baseType: !2107, size: 64, offset: 512)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "nsubreqs", scope: !2087, file: !93, line: 436, baseType: !114, size: 32, offset: 576)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "pending_subreqs", scope: !2087, file: !93, line: 439, baseType: !114, size: 32, offset: 608)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !2087, file: !93, line: 442, baseType: !125, size: 768, offset: 640)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "sem_wait_queue", scope: !2087, file: !93, line: 444, baseType: !234, size: 128, offset: 1408)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "co_ref", scope: !2087, file: !93, line: 451, baseType: !178, size: 32, offset: 1536)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "waited_by_parent", scope: !2087, file: !93, line: 458, baseType: !114, size: 1, offset: 1568, flags: DIFlagBitField, extraData: i64 1568)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "co_status", scope: !2087, file: !93, line: 461, baseType: !114, size: 3, offset: 1569, flags: DIFlagBitField, extraData: i64 1568)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "flushing", scope: !2087, file: !93, line: 463, baseType: !114, size: 1, offset: 1572, flags: DIFlagBitField, extraData: i64 1568)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "is_uthread", scope: !2087, file: !93, line: 467, baseType: !114, size: 1, offset: 1573, flags: DIFlagBitField, extraData: i64 1568)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "thread_spawn_yielded", scope: !2087, file: !93, line: 470, baseType: !114, size: 1, offset: 1574, flags: DIFlagBitField, extraData: i64 1568)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "sem_resume_status", scope: !2087, file: !93, line: 473, baseType: !114, size: 1, offset: 1575, flags: DIFlagBitField, extraData: i64 1568)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "user_co_ctx", scope: !2073, file: !93, line: 493, baseType: !2120, size: 64, offset: 256)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "entry_co_ctx", scope: !2073, file: !93, line: 496, baseType: !2086, size: 1600, offset: 320)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "on_abort_co_ctx", scope: !2073, file: !93, line: 499, baseType: !2085, size: 64, offset: 1920)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_ref", scope: !2073, file: !93, line: 502, baseType: !178, size: 32, offset: 1984)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "flushing_coros", scope: !2073, file: !93, line: 506, baseType: !114, size: 32, offset: 2016)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !2073, file: !93, line: 509, baseType: !260, size: 64, offset: 2048)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "free_bufs", scope: !2073, file: !93, line: 510, baseType: !260, size: 64, offset: 2112)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "busy_bufs", scope: !2073, file: !93, line: 511, baseType: !260, size: 64, offset: 2176)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "free_recv_bufs", scope: !2073, file: !93, line: 512, baseType: !260, size: 64, offset: 2240)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2073, file: !93, line: 514, baseType: !1497, size: 64, offset: 2304)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "free_cleanup", scope: !2073, file: !93, line: 516, baseType: !1870, size: 64, offset: 2368)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !2073, file: !93, line: 518, baseType: !260, size: 64, offset: 2432)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "last_body", scope: !2073, file: !93, line: 521, baseType: !843, size: 64, offset: 2496)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "exec_uri", scope: !2073, file: !93, line: 523, baseType: !180, size: 128, offset: 2560)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "exec_args", scope: !2073, file: !93, line: 524, baseType: !180, size: 128, offset: 2688)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2073, file: !93, line: 526, baseType: !97, size: 64, offset: 2816)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "downstream", scope: !2073, file: !93, line: 528, baseType: !91, size: 64, offset: 2880)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2073, file: !93, line: 532, baseType: !158, size: 64, offset: 2944)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "posted_threads", scope: !2073, file: !93, line: 536, baseType: !2093, size: 64, offset: 3008)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "uthreads", scope: !2073, file: !93, line: 538, baseType: !178, size: 32, offset: 3072)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2073, file: !93, line: 540, baseType: !475, size: 16, offset: 3104)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "run_post_subrequest", scope: !2073, file: !93, line: 544, baseType: !114, size: 1, offset: 3120, flags: DIFlagBitField, extraData: i64 3120)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "waiting_more_body", scope: !2073, file: !93, line: 548, baseType: !114, size: 1, offset: 3121, flags: DIFlagBitField, extraData: i64 3120)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "co_op", scope: !2073, file: !93, line: 552, baseType: !114, size: 2, offset: 3122, flags: DIFlagBitField, extraData: i64 3120)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "exited", scope: !2073, file: !93, line: 554, baseType: !114, size: 1, offset: 3124, flags: DIFlagBitField, extraData: i64 3120)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "eof", scope: !2073, file: !93, line: 556, baseType: !114, size: 1, offset: 3125, flags: DIFlagBitField, extraData: i64 3120)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "capture", scope: !2073, file: !93, line: 559, baseType: !114, size: 1, offset: 3126, flags: DIFlagBitField, extraData: i64 3120)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "read_body_done", scope: !2073, file: !93, line: 565, baseType: !114, size: 1, offset: 3127, flags: DIFlagBitField, extraData: i64 3120)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "headers_set", scope: !2073, file: !93, line: 569, baseType: !114, size: 1, offset: 3128, flags: DIFlagBitField, extraData: i64 3120)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "mime_set", scope: !2073, file: !93, line: 571, baseType: !114, size: 1, offset: 3129, flags: DIFlagBitField, extraData: i64 3120)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "entered_rewrite_phase", scope: !2073, file: !93, line: 574, baseType: !114, size: 1, offset: 3130, flags: DIFlagBitField, extraData: i64 3120)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "entered_access_phase", scope: !2073, file: !93, line: 575, baseType: !114, size: 1, offset: 3131, flags: DIFlagBitField, extraData: i64 3120)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "entered_content_phase", scope: !2073, file: !93, line: 576, baseType: !114, size: 1, offset: 3132, flags: DIFlagBitField, extraData: i64 3120)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "buffering", scope: !2073, file: !93, line: 578, baseType: !114, size: 1, offset: 3133, flags: DIFlagBitField, extraData: i64 3120)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "no_abort", scope: !2073, file: !93, line: 580, baseType: !114, size: 1, offset: 3134, flags: DIFlagBitField, extraData: i64 3120)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "header_sent", scope: !2073, file: !93, line: 583, baseType: !114, size: 1, offset: 3135, flags: DIFlagBitField, extraData: i64 3120)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "seen_last_in_filter", scope: !2073, file: !93, line: 590, baseType: !114, size: 1, offset: 3136, flags: DIFlagBitField, extraData: i64 3120)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "seen_last_for_subreq", scope: !2073, file: !93, line: 591, baseType: !114, size: 1, offset: 3137, flags: DIFlagBitField, extraData: i64 3120)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "writing_raw_req_socket", scope: !2073, file: !93, line: 592, baseType: !114, size: 1, offset: 3138, flags: DIFlagBitField, extraData: i64 3120)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_raw_req_socket", scope: !2073, file: !93, line: 594, baseType: !114, size: 1, offset: 3139, flags: DIFlagBitField, extraData: i64 3120)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "seen_body_data", scope: !2073, file: !93, line: 596, baseType: !114, size: 1, offset: 3140, flags: DIFlagBitField, extraData: i64 3120)
!2161 = !DILocation(line: 356, column: 49, scope: !2061)
!2162 = !DILocation(line: 356, column: 72, scope: !2061)
!2163 = !DILocation(line: 358, column: 5, scope: !2061)
!2164 = !DILocation(line: 358, column: 30, scope: !2061)
!2165 = !DILocation(line: 359, column: 5, scope: !2061)
!2166 = !DILocation(line: 359, column: 30, scope: !2061)
!2167 = !DILocation(line: 360, column: 5, scope: !2061)
!2168 = !DILocation(line: 360, column: 30, scope: !2061)
!2169 = !DILocation(line: 361, column: 5, scope: !2061)
!2170 = !DILocation(line: 361, column: 30, scope: !2061)
!2171 = !DILocation(line: 363, column: 11, scope: !2061)
!2172 = !{!2019, !2008, i64 16}
!2173 = !{!2174, !2024, i64 0}
!2174 = !{!"ngx_module_s", !2024, i64 0, !2024, i64 8, !2008, i64 16, !2024, i64 24, !2024, i64 32, !2024, i64 40, !2008, i64 48, !2008, i64 56, !2008, i64 64, !2024, i64 72, !2008, i64 80, !2008, i64 88, !2008, i64 96, !2008, i64 104, !2008, i64 112, !2008, i64 120, !2008, i64 128, !2024, i64 136, !2024, i64 144, !2024, i64 152, !2024, i64 160, !2024, i64 168, !2024, i64 176, !2024, i64 184, !2024, i64 192}
!2175 = !DILocation(line: 363, column: 9, scope: !2061)
!2176 = !DILocation(line: 365, column: 9, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2061, file: !2, line: 365, column: 9)
!2178 = !DILocation(line: 365, column: 13, scope: !2177)
!2179 = !DILocation(line: 365, column: 9, scope: !2061)
!2180 = !DILocation(line: 366, column: 39, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2177, file: !2, line: 365, column: 22)
!2182 = !DILocation(line: 366, column: 15, scope: !2181)
!2183 = !DILocation(line: 366, column: 13, scope: !2181)
!2184 = !DILocation(line: 367, column: 13, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2181, file: !2, line: 367, column: 13)
!2186 = !DILocation(line: 367, column: 17, scope: !2185)
!2187 = !DILocation(line: 367, column: 13, scope: !2181)
!2188 = !DILocation(line: 368, column: 16, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2185, file: !2, line: 367, column: 26)
!2190 = !DILocation(line: 369, column: 43, scope: !2189)
!2191 = !DILocation(line: 369, column: 46, scope: !2189)
!2192 = !DILocation(line: 369, column: 13, scope: !2189)
!2193 = !DILocation(line: 370, column: 20, scope: !2189)
!2194 = !DILocation(line: 370, column: 13, scope: !2189)
!2195 = !DILocation(line: 373, column: 5, scope: !2181)
!2196 = !DILocation(line: 375, column: 32, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2177, file: !2, line: 373, column: 12)
!2198 = !DILocation(line: 375, column: 35, scope: !2197)
!2199 = !DILocation(line: 375, column: 38, scope: !2197)
!2200 = !DILocation(line: 375, column: 9, scope: !2197)
!2201 = !DILocation(line: 378, column: 5, scope: !2061)
!2202 = !DILocation(line: 378, column: 10, scope: !2061)
!2203 = !DILocation(line: 378, column: 32, scope: !2061)
!2204 = !DILocation(line: 379, column: 5, scope: !2061)
!2205 = !DILocation(line: 379, column: 10, scope: !2061)
!2206 = !DILocation(line: 379, column: 18, scope: !2061)
!2207 = !{!2208, !2031, i64 388}
!2208 = !{!"ngx_http_lua_ctx_s", !2008, i64 0, !2008, i64 8, !2008, i64 16, !2008, i64 24, !2008, i64 32, !2209, i64 40, !2008, i64 240, !2020, i64 248, !2020, i64 252, !2008, i64 256, !2008, i64 264, !2008, i64 272, !2008, i64 280, !2008, i64 288, !2008, i64 296, !2008, i64 304, !2008, i64 312, !2026, i64 320, !2026, i64 336, !2024, i64 352, !2008, i64 360, !2024, i64 368, !2008, i64 376, !2020, i64 384, !2031, i64 388, !2020, i64 390, !2020, i64 390, !2020, i64 390, !2020, i64 390, !2020, i64 390, !2020, i64 390, !2020, i64 390, !2020, i64 391, !2020, i64 391, !2020, i64 391, !2020, i64 391, !2020, i64 391, !2020, i64 391, !2020, i64 391, !2020, i64 391, !2020, i64 392, !2020, i64 392, !2020, i64 392, !2020, i64 392, !2020, i64 392}
!2209 = !{!"ngx_http_lua_co_ctx_s", !2008, i64 0, !2008, i64 8, !2008, i64 16, !2008, i64 24, !2008, i64 32, !2008, i64 40, !2008, i64 48, !2008, i64 56, !2008, i64 64, !2020, i64 72, !2020, i64 76, !2210, i64 80, !2032, i64 176, !2020, i64 192, !2020, i64 196, !2020, i64 196, !2020, i64 196, !2020, i64 196, !2020, i64 196, !2020, i64 196}
!2210 = !{!"ngx_event_s", !2008, i64 0, !2020, i64 8, !2020, i64 8, !2020, i64 8, !2020, i64 8, !2020, i64 8, !2020, i64 8, !2020, i64 8, !2020, i64 8, !2020, i64 9, !2020, i64 9, !2020, i64 9, !2020, i64 9, !2020, i64 9, !2020, i64 9, !2020, i64 9, !2020, i64 9, !2020, i64 10, !2020, i64 10, !2020, i64 10, !2020, i64 10, !2020, i64 10, !2020, i64 10, !2008, i64 16, !2024, i64 24, !2008, i64 32, !2211, i64 40, !2032, i64 80}
!2211 = !{!"ngx_rbtree_node_s", !2024, i64 0, !2008, i64 8, !2008, i64 16, !2008, i64 24, !2009, i64 32, !2009, i64 33}
!2212 = !DILocation(line: 382, column: 26, scope: !2061)
!2213 = !DILocation(line: 382, column: 29, scope: !2061)
!2214 = !DILocation(line: 382, column: 5, scope: !2061)
!2215 = !DILocation(line: 397, column: 5, scope: !2061)
!2216 = !DILocation(line: 398, column: 16, scope: !2061)
!2217 = !DILocation(line: 398, column: 5, scope: !2061)
!2218 = !DILocation(line: 401, column: 20, scope: !2061)
!2219 = !DILocation(line: 401, column: 10, scope: !2061)
!2220 = !DILocation(line: 401, column: 8, scope: !2061)
!2221 = !DILocation(line: 403, column: 16, scope: !2061)
!2222 = !DILocation(line: 403, column: 5, scope: !2061)
!2223 = !DILocation(line: 407, column: 9, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2061, file: !2, line: 407, column: 9)
!2225 = !DILocation(line: 407, column: 12, scope: !2224)
!2226 = !DILocation(line: 407, column: 9, scope: !2061)
!2227 = !DILocation(line: 409, column: 44, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2224, file: !2, line: 407, column: 18)
!2229 = !DILocation(line: 409, column: 30, scope: !2228)
!2230 = !DILocation(line: 409, column: 17, scope: !2228)
!2231 = !DILocation(line: 411, column: 13, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2228, file: !2, line: 411, column: 13)
!2233 = !DILocation(line: 411, column: 21, scope: !2232)
!2234 = !DILocation(line: 411, column: 13, scope: !2228)
!2235 = !DILocation(line: 412, column: 21, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2232, file: !2, line: 411, column: 30)
!2237 = !DILocation(line: 413, column: 17, scope: !2236)
!2238 = !DILocation(line: 414, column: 9, scope: !2236)
!2239 = !DILocation(line: 416, column: 9, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2228, file: !2, line: 416, column: 9)
!2241 = !{!2242, !2024, i64 0}
!2242 = !{!"ngx_log_s", !2024, i64 0, !2008, i64 8, !2024, i64 16, !2024, i64 24, !2008, i64 32, !2008, i64 40, !2008, i64 48, !2008, i64 56, !2008, i64 64, !2008, i64 72}
!2243 = !DILocation(line: 416, column: 9, scope: !2228)
!2244 = !DILocation(line: 419, column: 20, scope: !2228)
!2245 = !DILocation(line: 419, column: 9, scope: !2228)
!2246 = !DILocation(line: 420, column: 39, scope: !2228)
!2247 = !DILocation(line: 420, column: 42, scope: !2228)
!2248 = !DILocation(line: 420, column: 9, scope: !2228)
!2249 = !DILocation(line: 422, column: 9, scope: !2228)
!2250 = !DILocation(line: 425, column: 16, scope: !2061)
!2251 = !DILocation(line: 425, column: 5, scope: !2061)
!2252 = !DILocation(line: 426, column: 35, scope: !2061)
!2253 = !DILocation(line: 426, column: 38, scope: !2061)
!2254 = !DILocation(line: 426, column: 5, scope: !2061)
!2255 = !DILocation(line: 427, column: 12, scope: !2061)
!2256 = !DILocation(line: 427, column: 5, scope: !2061)
!2257 = !DILocation(line: 428, column: 1, scope: !2061)
!2258 = distinct !DISubprogram(name: "ngx_http_lua_ssl_sess_store_handler_inline", scope: !2, file: !2, line: 56, type: !95, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !2259)
!2259 = !{!2260, !2261, !2262, !2263}
!2260 = !DILocalVariable(name: "r", arg: 1, scope: !2258, file: !2, line: 56, type: !104)
!2261 = !DILocalVariable(name: "lscf", arg: 2, scope: !2258, file: !2, line: 57, type: !1967)
!2262 = !DILocalVariable(name: "L", arg: 3, scope: !2258, file: !2, line: 57, type: !1989)
!2263 = !DILocalVariable(name: "rc", scope: !2258, file: !2, line: 59, type: !97)
!2264 = !DILocation(line: 56, column: 64, scope: !2258)
!2265 = !DILocation(line: 57, column: 30, scope: !2258)
!2266 = !DILocation(line: 57, column: 47, scope: !2258)
!2267 = !DILocation(line: 59, column: 5, scope: !2258)
!2268 = !DILocation(line: 59, column: 25, scope: !2258)
!2269 = !DILocation(line: 61, column: 40, scope: !2258)
!2270 = !DILocation(line: 61, column: 43, scope: !2258)
!2271 = !DILocation(line: 61, column: 55, scope: !2258)
!2272 = !DILocation(line: 61, column: 60, scope: !2258)
!2273 = !DILocation(line: 62, column: 40, scope: !2258)
!2274 = !DILocation(line: 62, column: 50, scope: !2258)
!2275 = !DILocation(line: 62, column: 69, scope: !2258)
!2276 = !DILocation(line: 63, column: 40, scope: !2258)
!2277 = !DILocation(line: 63, column: 50, scope: !2258)
!2278 = !DILocation(line: 63, column: 69, scope: !2258)
!2279 = !DILocation(line: 64, column: 40, scope: !2258)
!2280 = !DILocation(line: 64, column: 50, scope: !2258)
!2281 = !DILocation(line: 61, column: 10, scope: !2258)
!2282 = !DILocation(line: 61, column: 8, scope: !2258)
!2283 = !DILocation(line: 66, column: 9, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2258, file: !2, line: 66, column: 9)
!2285 = !DILocation(line: 66, column: 12, scope: !2284)
!2286 = !DILocation(line: 66, column: 9, scope: !2258)
!2287 = !DILocation(line: 67, column: 16, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2284, file: !2, line: 66, column: 23)
!2289 = !DILocation(line: 67, column: 9, scope: !2288)
!2290 = !DILocation(line: 73, column: 49, scope: !2258)
!2291 = !DILocation(line: 73, column: 52, scope: !2258)
!2292 = !DILocation(line: 73, column: 12, scope: !2258)
!2293 = !DILocation(line: 73, column: 5, scope: !2258)
!2294 = !DILocation(line: 74, column: 1, scope: !2258)
!2295 = !DISubprogram(name: "ngx_http_lua_cache_loadbuffer", scope: !2056, file: !2056, line: 15, type: !2296, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{!97, !163, !1989, !2059, !185, !2059, !999}
!2298 = distinct !DISubprogram(name: "ngx_http_lua_ssl_sess_store_by_lua_block", scope: !2, file: !2, line: 78, type: !1011, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !2299)
!2299 = !{!2300, !2301, !2302, !2303, !2304}
!2300 = !DILocalVariable(name: "cf", arg: 1, scope: !2298, file: !2, line: 78, type: !962)
!2301 = !DILocalVariable(name: "cmd", arg: 2, scope: !2298, file: !2, line: 78, type: !1003)
!2302 = !DILocalVariable(name: "conf", arg: 3, scope: !2298, file: !2, line: 79, type: !91)
!2303 = !DILocalVariable(name: "rv", scope: !2298, file: !2, line: 81, type: !218)
!2304 = !DILocalVariable(name: "save", scope: !2298, file: !2, line: 82, type: !963)
!2305 = !DILocation(line: 78, column: 54, scope: !2298)
!2306 = !DILocation(line: 78, column: 73, scope: !2298)
!2307 = !DILocation(line: 79, column: 11, scope: !2298)
!2308 = !DILocation(line: 81, column: 5, scope: !2298)
!2309 = !DILocation(line: 81, column: 18, scope: !2298)
!2310 = !DILocation(line: 82, column: 5, scope: !2298)
!2311 = !DILocation(line: 82, column: 18, scope: !2298)
!2312 = !DILocation(line: 84, column: 13, scope: !2298)
!2313 = !DILocation(line: 84, column: 12, scope: !2298)
!2314 = !{i64 0, i64 8, !2007, i64 8, i64 8, !2007, i64 16, i64 8, !2007, i64 24, i64 8, !2007, i64 32, i64 8, !2007, i64 40, i64 8, !2007, i64 48, i64 8, !2007, i64 56, i64 8, !2007, i64 64, i64 8, !2042, i64 72, i64 8, !2042, i64 80, i64 8, !2007, i64 88, i64 8, !2007}
!2315 = !DILocation(line: 85, column: 5, scope: !2298)
!2316 = !DILocation(line: 85, column: 9, scope: !2298)
!2317 = !DILocation(line: 85, column: 17, scope: !2298)
!2318 = !{!2319, !2008, i64 80}
!2319 = !{!"ngx_conf_s", !2008, i64 0, !2008, i64 8, !2008, i64 16, !2008, i64 24, !2008, i64 32, !2008, i64 40, !2008, i64 48, !2008, i64 56, !2024, i64 64, !2024, i64 72, !2008, i64 80, !2008, i64 88}
!2320 = !DILocation(line: 86, column: 24, scope: !2298)
!2321 = !DILocation(line: 86, column: 5, scope: !2298)
!2322 = !DILocation(line: 86, column: 9, scope: !2298)
!2323 = !DILocation(line: 86, column: 22, scope: !2298)
!2324 = !{!2319, !2008, i64 88}
!2325 = !DILocation(line: 88, column: 44, scope: !2298)
!2326 = !DILocation(line: 88, column: 48, scope: !2298)
!2327 = !DILocation(line: 88, column: 10, scope: !2298)
!2328 = !DILocation(line: 88, column: 8, scope: !2298)
!2329 = !DILocation(line: 90, column: 6, scope: !2298)
!2330 = !DILocation(line: 90, column: 11, scope: !2298)
!2331 = !DILocation(line: 92, column: 12, scope: !2298)
!2332 = !DILocation(line: 93, column: 1, scope: !2298)
!2333 = !DILocation(line: 92, column: 5, scope: !2298)
!2334 = distinct !DISubprogram(name: "ngx_http_lua_ssl_sess_store_by_lua", scope: !2, file: !2, line: 98, type: !1011, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !2335)
!2335 = !{!2336, !2337, !2338, !2339, !2340, !2341, !2342}
!2336 = !DILocalVariable(name: "cf", arg: 1, scope: !2334, file: !2, line: 98, type: !962)
!2337 = !DILocalVariable(name: "cmd", arg: 2, scope: !2334, file: !2, line: 98, type: !1003)
!2338 = !DILocalVariable(name: "conf", arg: 3, scope: !2334, file: !2, line: 99, type: !91)
!2339 = !DILocalVariable(name: "p", scope: !2334, file: !2, line: 101, type: !188)
!2340 = !DILocalVariable(name: "name", scope: !2334, file: !2, line: 102, type: !188)
!2341 = !DILocalVariable(name: "value", scope: !2334, file: !2, line: 103, type: !792)
!2342 = !DILocalVariable(name: "lscf", scope: !2334, file: !2, line: 104, type: !1967)
!2343 = !DILocation(line: 98, column: 48, scope: !2334)
!2344 = !DILocation(line: 98, column: 67, scope: !2334)
!2345 = !DILocation(line: 99, column: 11, scope: !2334)
!2346 = !DILocation(line: 101, column: 5, scope: !2334)
!2347 = !DILocation(line: 101, column: 34, scope: !2334)
!2348 = !DILocation(line: 102, column: 5, scope: !2334)
!2349 = !DILocation(line: 102, column: 34, scope: !2334)
!2350 = !DILocation(line: 103, column: 5, scope: !2334)
!2351 = !DILocation(line: 103, column: 34, scope: !2334)
!2352 = !DILocation(line: 104, column: 5, scope: !2334)
!2353 = !DILocation(line: 104, column: 34, scope: !2334)
!2354 = !DILocation(line: 104, column: 41, scope: !2334)
!2355 = !DILocation(line: 109, column: 9, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2334, file: !2, line: 109, column: 9)
!2357 = !DILocation(line: 109, column: 14, scope: !2356)
!2358 = !{!2359, !2008, i64 48}
!2359 = !{!"ngx_command_s", !2026, i64 0, !2024, i64 16, !2008, i64 24, !2024, i64 32, !2024, i64 40, !2008, i64 48}
!2360 = !DILocation(line: 109, column: 19, scope: !2356)
!2361 = !DILocation(line: 109, column: 9, scope: !2334)
!2362 = !DILocation(line: 110, column: 9, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2356, file: !2, line: 109, column: 28)
!2364 = !DILocation(line: 113, column: 9, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2334, file: !2, line: 113, column: 9)
!2366 = !DILocation(line: 113, column: 19, scope: !2365)
!2367 = !DILocation(line: 113, column: 9, scope: !2334)
!2368 = !DILocation(line: 114, column: 9, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2365, file: !2, line: 113, column: 43)
!2370 = !DILocation(line: 117, column: 31, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2334, file: !2, line: 117, column: 9)
!2372 = !DILocation(line: 117, column: 35, scope: !2371)
!2373 = !{!2319, !2008, i64 48}
!2374 = !DILocation(line: 117, column: 9, scope: !2371)
!2375 = !DILocation(line: 117, column: 40, scope: !2371)
!2376 = !DILocation(line: 117, column: 9, scope: !2334)
!2377 = !DILocation(line: 118, column: 9, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2371, file: !2, line: 117, column: 51)
!2379 = !DILocation(line: 121, column: 13, scope: !2334)
!2380 = !DILocation(line: 121, column: 17, scope: !2334)
!2381 = !{!2319, !2008, i64 8}
!2382 = !DILocation(line: 121, column: 23, scope: !2334)
!2383 = !{!2025, !2008, i64 0}
!2384 = !DILocation(line: 121, column: 11, scope: !2334)
!2385 = !DILocation(line: 124, column: 44, scope: !2334)
!2386 = !DILocation(line: 124, column: 49, scope: !2334)
!2387 = !DILocation(line: 123, column: 5, scope: !2334)
!2388 = !DILocation(line: 123, column: 15, scope: !2334)
!2389 = !DILocation(line: 123, column: 38, scope: !2334)
!2390 = !DILocation(line: 126, column: 9, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2334, file: !2, line: 126, column: 9)
!2392 = !DILocation(line: 126, column: 14, scope: !2391)
!2393 = !DILocation(line: 126, column: 19, scope: !2391)
!2394 = !DILocation(line: 126, column: 9, scope: !2334)
!2395 = !DILocation(line: 129, column: 41, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2391, file: !2, line: 126, column: 64)
!2397 = !DILocation(line: 129, column: 45, scope: !2396)
!2398 = !{!2319, !2008, i64 24}
!2399 = !DILocation(line: 129, column: 51, scope: !2396)
!2400 = !DILocation(line: 129, column: 60, scope: !2396)
!2401 = !{!2026, !2008, i64 8}
!2402 = !DILocation(line: 130, column: 41, scope: !2396)
!2403 = !DILocation(line: 130, column: 50, scope: !2396)
!2404 = !{!2026, !2024, i64 0}
!2405 = !DILocation(line: 129, column: 16, scope: !2396)
!2406 = !DILocation(line: 129, column: 14, scope: !2396)
!2407 = !DILocation(line: 131, column: 13, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2396, file: !2, line: 131, column: 13)
!2409 = !DILocation(line: 131, column: 18, scope: !2408)
!2410 = !DILocation(line: 131, column: 13, scope: !2396)
!2411 = !DILocation(line: 132, column: 13, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2408, file: !2, line: 131, column: 27)
!2413 = !DILocation(line: 135, column: 45, scope: !2396)
!2414 = !DILocation(line: 135, column: 9, scope: !2396)
!2415 = !DILocation(line: 135, column: 19, scope: !2396)
!2416 = !DILocation(line: 135, column: 38, scope: !2396)
!2417 = !DILocation(line: 135, column: 43, scope: !2396)
!2418 = !DILocation(line: 136, column: 44, scope: !2396)
!2419 = !DILocation(line: 136, column: 9, scope: !2396)
!2420 = !DILocation(line: 136, column: 19, scope: !2396)
!2421 = !DILocation(line: 136, column: 38, scope: !2396)
!2422 = !DILocation(line: 136, column: 42, scope: !2396)
!2423 = !DILocation(line: 138, column: 24, scope: !2396)
!2424 = !DILocation(line: 138, column: 28, scope: !2396)
!2425 = !DILocation(line: 138, column: 13, scope: !2396)
!2426 = !DILocation(line: 138, column: 11, scope: !2396)
!2427 = !DILocation(line: 139, column: 13, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2396, file: !2, line: 139, column: 13)
!2429 = !DILocation(line: 139, column: 15, scope: !2428)
!2430 = !DILocation(line: 139, column: 13, scope: !2396)
!2431 = !DILocation(line: 140, column: 13, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2428, file: !2, line: 139, column: 24)
!2433 = !DILocation(line: 143, column: 44, scope: !2396)
!2434 = !DILocation(line: 143, column: 9, scope: !2396)
!2435 = !DILocation(line: 143, column: 19, scope: !2396)
!2436 = !DILocation(line: 143, column: 42, scope: !2396)
!2437 = !DILocation(line: 145, column: 13, scope: !2396)
!2438 = !DILocation(line: 145, column: 11, scope: !2396)
!2439 = !DILocation(line: 146, column: 37, scope: !2396)
!2440 = !DILocation(line: 146, column: 40, scope: !2396)
!2441 = !DILocation(line: 146, column: 49, scope: !2396)
!2442 = !DILocation(line: 146, column: 55, scope: !2396)
!2443 = !DILocation(line: 146, column: 64, scope: !2396)
!2444 = !DILocation(line: 146, column: 13, scope: !2396)
!2445 = !DILocation(line: 146, column: 11, scope: !2396)
!2446 = !DILocation(line: 147, column: 10, scope: !2396)
!2447 = !DILocation(line: 147, column: 12, scope: !2396)
!2448 = !DILocation(line: 149, column: 5, scope: !2396)
!2449 = !DILocation(line: 152, column: 9, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2391, file: !2, line: 149, column: 12)
!2451 = !DILocation(line: 152, column: 19, scope: !2450)
!2452 = !DILocation(line: 152, column: 40, scope: !2450)
!2453 = !{i64 0, i64 8, !2042, i64 8, i64 8, !2007}
!2454 = !DILocation(line: 154, column: 24, scope: !2450)
!2455 = !DILocation(line: 154, column: 28, scope: !2450)
!2456 = !DILocation(line: 154, column: 13, scope: !2450)
!2457 = !DILocation(line: 154, column: 11, scope: !2450)
!2458 = !DILocation(line: 157, column: 13, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2450, file: !2, line: 157, column: 13)
!2460 = !DILocation(line: 157, column: 15, scope: !2459)
!2461 = !DILocation(line: 157, column: 13, scope: !2450)
!2462 = !DILocation(line: 158, column: 13, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2459, file: !2, line: 157, column: 24)
!2464 = !DILocation(line: 161, column: 44, scope: !2450)
!2465 = !DILocation(line: 161, column: 9, scope: !2450)
!2466 = !DILocation(line: 161, column: 19, scope: !2450)
!2467 = !DILocation(line: 161, column: 42, scope: !2450)
!2468 = !DILocation(line: 163, column: 13, scope: !2450)
!2469 = !DILocation(line: 163, column: 11, scope: !2450)
!2470 = !DILocation(line: 165, column: 13, scope: !2450)
!2471 = !DILocation(line: 165, column: 11, scope: !2450)
!2472 = !DILocation(line: 166, column: 37, scope: !2450)
!2473 = !DILocation(line: 166, column: 40, scope: !2450)
!2474 = !DILocation(line: 166, column: 49, scope: !2450)
!2475 = !DILocation(line: 166, column: 55, scope: !2450)
!2476 = !DILocation(line: 166, column: 64, scope: !2450)
!2477 = !DILocation(line: 166, column: 13, scope: !2450)
!2478 = !DILocation(line: 166, column: 11, scope: !2450)
!2479 = !DILocation(line: 167, column: 10, scope: !2450)
!2480 = !DILocation(line: 167, column: 12, scope: !2450)
!2481 = !DILocation(line: 170, column: 5, scope: !2334)
!2482 = !DILocation(line: 171, column: 1, scope: !2334)
!2483 = !DISubprogram(name: "ngx_http_lua_conf_lua_block_parse", scope: !2484, file: !2484, line: 70, type: !2485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2484 = !DIFile(filename: "../ngx_lua-0.10.15/src/ngx_http_lua_directive.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "1b46a540e8226fe5f42c1fc59edb76b9")
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!218, !962, !1003}
!2487 = !DISubprogram(name: "ngx_http_lua_ssl_init", scope: !2488, file: !2488, line: 38, type: !1019, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2488 = !DIFile(filename: "../ngx_lua-0.10.15/src/ngx_http_lua_ssl.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "c3edbaa7cc7bd5b26d0cf3c24ed49775")
!2489 = !DISubprogram(name: "ngx_http_lua_rebase_path", scope: !85, file: !85, line: 146, type: !2490, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{!188, !431, !188, !185}
!2492 = !DISubprogram(name: "strlen", scope: !2493, file: !2493, line: 407, type: !2494, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2493 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!2494 = !DISubroutineType(types: !2495)
!2495 = !{!161, !999}
!2496 = !DISubprogram(name: "ngx_palloc", scope: !434, file: !434, line: 79, type: !2497, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{!91, !431, !185}
!2499 = !DISubprogram(name: "ngx_http_lua_digest_hex", scope: !85, file: !85, line: 174, type: !2500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!188, !188, !2059, !178}
!2502 = distinct !DISubprogram(name: "ngx_http_lua_ssl_sess_store_handler", scope: !2, file: !2, line: 176, type: !2503, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !2505)
!2503 = !DISubroutineType(types: !2504)
!2504 = !{!178, !484, !497}
!2505 = !{!2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2532, !2533, !2534}
!2506 = !DILocalVariable(name: "ssl_conn", arg: 1, scope: !2502, file: !2, line: 176, type: !484)
!2507 = !DILocalVariable(name: "sess", arg: 2, scope: !2502, file: !2, line: 177, type: !497)
!2508 = !DILocalVariable(name: "sess_id", scope: !2502, file: !2, line: 179, type: !2059)
!2509 = !DILocalVariable(name: "sess_id_len", scope: !2502, file: !2, line: 180, type: !114)
!2510 = !DILocalVariable(name: "L", scope: !2502, file: !2, line: 181, type: !1989)
!2511 = !DILocalVariable(name: "rc", scope: !2502, file: !2, line: 182, type: !97)
!2512 = !DILocalVariable(name: "c", scope: !2502, file: !2, line: 183, type: !116)
!2513 = !DILocalVariable(name: "fc", scope: !2502, file: !2, line: 183, type: !116)
!2514 = !DILocalVariable(name: "r", scope: !2502, file: !2, line: 184, type: !104)
!2515 = !DILocalVariable(name: "hc", scope: !2502, file: !2, line: 185, type: !1675)
!2516 = !DILocalVariable(name: "cctx", scope: !2502, file: !2, line: 186, type: !2517)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_lua_ssl_ctx_t", file: !2488, line: 35, baseType: !2519)
!2519 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2488, line: 17, size: 448, elements: !2520)
!2520 = !{!2521, !2522, !2523, !2525, !2526, !2527, !2528, !2529, !2530, !2531}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !2519, file: !2488, line: 18, baseType: !116, size: 64)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2519, file: !2488, line: 19, baseType: !104, size: 64, offset: 64)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2519, file: !2488, line: 20, baseType: !2524, size: 64, offset: 128)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !2519, file: !2488, line: 22, baseType: !497, size: 64, offset: 192)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "session_id", scope: !2519, file: !2488, line: 25, baseType: !180, size: 128, offset: 256)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2519, file: !2488, line: 27, baseType: !178, size: 32, offset: 384)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2519, file: !2488, line: 30, baseType: !114, size: 1, offset: 416, flags: DIFlagBitField, extraData: i64 416)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "aborted", scope: !2519, file: !2488, line: 31, baseType: !114, size: 1, offset: 417, flags: DIFlagBitField, extraData: i64 416)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "entered_cert_handler", scope: !2519, file: !2488, line: 33, baseType: !114, size: 1, offset: 418, flags: DIFlagBitField, extraData: i64 416)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "entered_sess_fetch_handler", scope: !2519, file: !2488, line: 34, baseType: !114, size: 1, offset: 419, flags: DIFlagBitField, extraData: i64 416)
!2532 = !DILocalVariable(name: "lscf", scope: !2502, file: !2, line: 187, type: !1967)
!2533 = !DILocalVariable(name: "clcf", scope: !2502, file: !2, line: 188, type: !1714)
!2534 = !DILabel(scope: !2502, name: "failed", file: !2, line: 307)
!2535 = !DILocation(line: 176, column: 53, scope: !2502)
!2536 = !DILocation(line: 177, column: 24, scope: !2502)
!2537 = !DILocation(line: 179, column: 5, scope: !2502)
!2538 = !DILocation(line: 179, column: 38, scope: !2502)
!2539 = !DILocation(line: 180, column: 5, scope: !2502)
!2540 = !DILocation(line: 180, column: 38, scope: !2502)
!2541 = !DILocation(line: 181, column: 5, scope: !2502)
!2542 = !DILocation(line: 181, column: 38, scope: !2502)
!2543 = !DILocation(line: 182, column: 5, scope: !2502)
!2544 = !DILocation(line: 182, column: 38, scope: !2502)
!2545 = !DILocation(line: 183, column: 5, scope: !2502)
!2546 = !DILocation(line: 183, column: 38, scope: !2502)
!2547 = !DILocation(line: 183, column: 42, scope: !2502)
!2548 = !DILocation(line: 184, column: 5, scope: !2502)
!2549 = !DILocation(line: 184, column: 38, scope: !2502)
!2550 = !DILocation(line: 185, column: 5, scope: !2502)
!2551 = !DILocation(line: 185, column: 38, scope: !2502)
!2552 = !DILocation(line: 186, column: 5, scope: !2502)
!2553 = !DILocation(line: 186, column: 38, scope: !2502)
!2554 = !DILocation(line: 187, column: 5, scope: !2502)
!2555 = !DILocation(line: 187, column: 38, scope: !2502)
!2556 = !DILocation(line: 188, column: 5, scope: !2502)
!2557 = !DILocation(line: 188, column: 38, scope: !2502)
!2558 = !DILocation(line: 190, column: 9, scope: !2502)
!2559 = !{!2020, !2020, i64 0}
!2560 = !DILocation(line: 190, column: 7, scope: !2502)
!2561 = !DILocation(line: 195, column: 12, scope: !2502)
!2562 = !{!2030, !2008, i64 160}
!2563 = !{!2564, !2008, i64 0}
!2564 = !{!"ngx_ssl_connection_s", !2008, i64 0, !2008, i64 8, !2024, i64 16, !2008, i64 24, !2024, i64 32, !2008, i64 40, !2008, i64 48, !2008, i64 56, !2008, i64 64, !2008, i64 72, !2009, i64 80, !2020, i64 81, !2020, i64 81, !2020, i64 81, !2020, i64 81, !2020, i64 81, !2020, i64 81, !2020, i64 81, !2020, i64 81, !2020, i64 82, !2020, i64 82}
!2565 = !DILocation(line: 195, column: 10, scope: !2502)
!2566 = !DILocation(line: 199, column: 10, scope: !2502)
!2567 = !DILocation(line: 199, column: 13, scope: !2502)
!2568 = !{!2030, !2008, i64 0}
!2569 = !DILocation(line: 199, column: 8, scope: !2502)
!2570 = !DILocation(line: 201, column: 10, scope: !2502)
!2571 = !DILocation(line: 201, column: 8, scope: !2502)
!2572 = !DILocation(line: 202, column: 9, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2502, file: !2, line: 202, column: 9)
!2574 = !DILocation(line: 202, column: 12, scope: !2573)
!2575 = !DILocation(line: 202, column: 9, scope: !2502)
!2576 = !DILocation(line: 203, column: 9, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2573, file: !2, line: 202, column: 21)
!2578 = !DILocation(line: 206, column: 5, scope: !2502)
!2579 = !DILocation(line: 206, column: 9, scope: !2502)
!2580 = !DILocation(line: 206, column: 14, scope: !2502)
!2581 = !DILocation(line: 206, column: 22, scope: !2502)
!2582 = !{!2242, !2008, i64 32}
!2583 = !DILocation(line: 207, column: 21, scope: !2502)
!2584 = !DILocation(line: 207, column: 5, scope: !2502)
!2585 = !DILocation(line: 207, column: 9, scope: !2502)
!2586 = !DILocation(line: 207, column: 14, scope: !2502)
!2587 = !DILocation(line: 207, column: 19, scope: !2502)
!2588 = !{!2242, !2008, i64 40}
!2589 = !DILocation(line: 209, column: 5, scope: !2502)
!2590 = !DILocation(line: 209, column: 9, scope: !2502)
!2591 = !DILocation(line: 209, column: 21, scope: !2502)
!2592 = !DILocation(line: 209, column: 24, scope: !2502)
!2593 = !DILocation(line: 210, column: 21, scope: !2502)
!2594 = !DILocation(line: 210, column: 24, scope: !2502)
!2595 = !{!2030, !2008, i64 64}
!2596 = !DILocation(line: 210, column: 5, scope: !2502)
!2597 = !DILocation(line: 210, column: 9, scope: !2502)
!2598 = !DILocation(line: 210, column: 19, scope: !2502)
!2599 = !DILocation(line: 212, column: 42, scope: !2502)
!2600 = !DILocation(line: 212, column: 9, scope: !2502)
!2601 = !DILocation(line: 212, column: 7, scope: !2502)
!2602 = !DILocation(line: 213, column: 9, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2502, file: !2, line: 213, column: 9)
!2604 = !DILocation(line: 213, column: 11, scope: !2603)
!2605 = !DILocation(line: 213, column: 9, scope: !2502)
!2606 = !DILocation(line: 214, column: 9, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2603, file: !2, line: 213, column: 20)
!2608 = !DILocation(line: 217, column: 20, scope: !2502)
!2609 = !DILocation(line: 217, column: 24, scope: !2502)
!2610 = !{!2611, !2008, i64 8}
!2611 = !{!"", !2008, i64 0, !2008, i64 8, !2008, i64 16, !2008, i64 24, !2024, i64 32, !2008, i64 40, !2020, i64 48, !2020, i64 48}
!2612 = !DILocation(line: 217, column: 34, scope: !2502)
!2613 = !{!2614, !2008, i64 0}
!2614 = !{!"", !2008, i64 0, !2008, i64 8, !2008, i64 16}
!2615 = !DILocation(line: 217, column: 5, scope: !2502)
!2616 = !DILocation(line: 217, column: 8, scope: !2502)
!2617 = !DILocation(line: 217, column: 18, scope: !2502)
!2618 = !{!2019, !2008, i64 24}
!2619 = !DILocation(line: 218, column: 19, scope: !2502)
!2620 = !DILocation(line: 218, column: 23, scope: !2502)
!2621 = !DILocation(line: 218, column: 33, scope: !2502)
!2622 = !{!2614, !2008, i64 8}
!2623 = !DILocation(line: 218, column: 5, scope: !2502)
!2624 = !DILocation(line: 218, column: 8, scope: !2502)
!2625 = !DILocation(line: 218, column: 17, scope: !2502)
!2626 = !{!2019, !2008, i64 32}
!2627 = !DILocation(line: 219, column: 19, scope: !2502)
!2628 = !DILocation(line: 219, column: 23, scope: !2502)
!2629 = !DILocation(line: 219, column: 33, scope: !2502)
!2630 = !{!2614, !2008, i64 16}
!2631 = !DILocation(line: 219, column: 5, scope: !2502)
!2632 = !DILocation(line: 219, column: 8, scope: !2502)
!2633 = !DILocation(line: 219, column: 17, scope: !2502)
!2634 = !{!2019, !2008, i64 40}
!2635 = !DILocation(line: 221, column: 21, scope: !2502)
!2636 = !DILocation(line: 221, column: 24, scope: !2502)
!2637 = !DILocation(line: 221, column: 29, scope: !2502)
!2638 = !{!2242, !2008, i64 8}
!2639 = !DILocation(line: 221, column: 5, scope: !2502)
!2640 = !DILocation(line: 221, column: 9, scope: !2502)
!2641 = !DILocation(line: 221, column: 14, scope: !2502)
!2642 = !DILocation(line: 221, column: 19, scope: !2502)
!2643 = !DILocation(line: 222, column: 26, scope: !2502)
!2644 = !DILocation(line: 222, column: 29, scope: !2502)
!2645 = !DILocation(line: 222, column: 34, scope: !2502)
!2646 = !DILocation(line: 222, column: 5, scope: !2502)
!2647 = !DILocation(line: 222, column: 9, scope: !2502)
!2648 = !DILocation(line: 222, column: 14, scope: !2502)
!2649 = !DILocation(line: 222, column: 24, scope: !2502)
!2650 = !DILocation(line: 223, column: 15, scope: !2502)
!2651 = !DILocation(line: 223, column: 18, scope: !2502)
!2652 = !DILocation(line: 223, column: 5, scope: !2502)
!2653 = !DILocation(line: 223, column: 9, scope: !2502)
!2654 = !DILocation(line: 223, column: 13, scope: !2502)
!2655 = !DILocation(line: 225, column: 12, scope: !2502)
!2656 = !DILocation(line: 225, column: 10, scope: !2502)
!2657 = !DILocation(line: 231, column: 5, scope: !2502)
!2658 = !{!2659, !2008, i64 616}
!2659 = !{!"ngx_http_core_loc_conf_s", !2026, i64 0, !2020, i64 16, !2020, i64 16, !2020, i64 16, !2020, i64 16, !2020, i64 16, !2020, i64 16, !2020, i64 16, !2020, i64 17, !2008, i64 24, !2008, i64 32, !2020, i64 40, !2008, i64 48, !2008, i64 56, !2024, i64 64, !2026, i64 72, !2026, i64 88, !2008, i64 104, !2008, i64 112, !2008, i64 120, !2660, i64 128, !2026, i64 144, !2024, i64 160, !2024, i64 168, !2024, i64 176, !2024, i64 184, !2024, i64 192, !2024, i64 200, !2024, i64 208, !2024, i64 216, !2024, i64 224, !2024, i64 232, !2024, i64 240, !2024, i64 248, !2024, i64 256, !2024, i64 264, !2024, i64 272, !2024, i64 280, !2024, i64 288, !2008, i64 296, !2024, i64 304, !2024, i64 312, !2024, i64 320, !2024, i64 328, !2024, i64 336, !2024, i64 344, !2024, i64 352, !2024, i64 360, !2024, i64 368, !2024, i64 376, !2024, i64 384, !2024, i64 392, !2024, i64 400, !2024, i64 408, !2024, i64 416, !2024, i64 424, !2024, i64 432, !2024, i64 440, !2024, i64 448, !2024, i64 456, !2024, i64 464, !2024, i64 472, !2024, i64 480, !2024, i64 488, !2024, i64 496, !2024, i64 504, !2024, i64 512, !2024, i64 520, !2024, i64 528, !2024, i64 536, !2024, i64 544, !2008, i64 552, !2008, i64 560, !2008, i64 568, !2008, i64 576, !2024, i64 584, !2024, i64 592, !2024, i64 600, !2024, i64 608, !2008, i64 616, !2024, i64 624, !2024, i64 632, !2008, i64 640}
!2660 = !{!"", !2008, i64 0, !2024, i64 8}
!2661 = !{!2242, !2008, i64 72}
!2662 = !{!2242, !2008, i64 48}
!2663 = !{!2242, !2008, i64 56}
!2664 = !DILocation(line: 231, column: 5, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2502, file: !2, line: 231, column: 5)
!2666 = !DILocation(line: 231, column: 5, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2665, file: !2, line: 231, column: 5)
!2668 = !DILocation(line: 249, column: 9, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2502, file: !2, line: 249, column: 9)
!2670 = !DILocation(line: 249, column: 14, scope: !2669)
!2671 = !DILocation(line: 249, column: 9, scope: !2502)
!2672 = !DILocation(line: 250, column: 28, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2669, file: !2, line: 249, column: 23)
!2674 = !DILocation(line: 250, column: 31, scope: !2673)
!2675 = !{!2030, !2008, i64 88}
!2676 = !DILocation(line: 250, column: 16, scope: !2673)
!2677 = !DILocation(line: 250, column: 14, scope: !2673)
!2678 = !DILocation(line: 251, column: 13, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2673, file: !2, line: 251, column: 13)
!2680 = !DILocation(line: 251, column: 18, scope: !2679)
!2681 = !DILocation(line: 251, column: 13, scope: !2673)
!2682 = !DILocation(line: 252, column: 13, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2679, file: !2, line: 251, column: 27)
!2684 = !DILocation(line: 254, column: 5, scope: !2673)
!2685 = !DILocation(line: 257, column: 34, scope: !2502)
!2686 = !DILocation(line: 257, column: 15, scope: !2502)
!2687 = !DILocation(line: 257, column: 13, scope: !2502)
!2688 = !DILocation(line: 263, column: 24, scope: !2502)
!2689 = !DILocation(line: 263, column: 5, scope: !2502)
!2690 = !DILocation(line: 263, column: 11, scope: !2502)
!2691 = !DILocation(line: 263, column: 22, scope: !2502)
!2692 = !{!2693, !2008, i64 0}
!2693 = !{!"", !2008, i64 0, !2008, i64 8, !2008, i64 16, !2008, i64 24, !2026, i64 32, !2020, i64 48, !2020, i64 52, !2020, i64 52, !2020, i64 52, !2020, i64 52}
!2694 = !DILocation(line: 264, column: 21, scope: !2502)
!2695 = !DILocation(line: 264, column: 5, scope: !2502)
!2696 = !DILocation(line: 264, column: 11, scope: !2502)
!2697 = !DILocation(line: 264, column: 19, scope: !2502)
!2698 = !{!2693, !2008, i64 8}
!2699 = !DILocation(line: 265, column: 21, scope: !2502)
!2700 = !DILocation(line: 265, column: 5, scope: !2502)
!2701 = !DILocation(line: 265, column: 11, scope: !2502)
!2702 = !DILocation(line: 265, column: 19, scope: !2502)
!2703 = !{!2693, !2008, i64 24}
!2704 = !DILocation(line: 266, column: 40, scope: !2502)
!2705 = !DILocation(line: 266, column: 5, scope: !2502)
!2706 = !DILocation(line: 266, column: 11, scope: !2502)
!2707 = !DILocation(line: 266, column: 22, scope: !2502)
!2708 = !DILocation(line: 266, column: 27, scope: !2502)
!2709 = !{!2693, !2008, i64 40}
!2710 = !DILocation(line: 267, column: 28, scope: !2502)
!2711 = !DILocation(line: 267, column: 5, scope: !2502)
!2712 = !DILocation(line: 267, column: 11, scope: !2502)
!2713 = !DILocation(line: 267, column: 22, scope: !2502)
!2714 = !DILocation(line: 267, column: 26, scope: !2502)
!2715 = !{!2693, !2024, i64 32}
!2716 = !DILocation(line: 268, column: 5, scope: !2502)
!2717 = !DILocation(line: 268, column: 11, scope: !2502)
!2718 = !DILocation(line: 268, column: 16, scope: !2502)
!2719 = !DILocation(line: 272, column: 25, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2502, file: !2, line: 272, column: 9)
!2721 = !DILocation(line: 272, column: 28, scope: !2720)
!2722 = !DILocation(line: 272, column: 33, scope: !2720)
!2723 = !DILocation(line: 272, column: 45, scope: !2720)
!2724 = !DILocation(line: 272, column: 73, scope: !2720)
!2725 = !DILocation(line: 272, column: 9, scope: !2720)
!2726 = !DILocation(line: 273, column: 9, scope: !2720)
!2727 = !DILocation(line: 272, column: 9, scope: !2502)
!2728 = !DILocation(line: 275, column: 38, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2720, file: !2, line: 274, column: 5)
!2730 = !DILocation(line: 275, column: 41, scope: !2729)
!2731 = !DILocation(line: 275, column: 9, scope: !2729)
!2732 = !DILocation(line: 276, column: 9, scope: !2729)
!2733 = !DILocation(line: 279, column: 12, scope: !2502)
!2734 = !DILocation(line: 279, column: 10, scope: !2502)
!2735 = !DILocation(line: 282, column: 33, scope: !2502)
!2736 = !DILocation(line: 282, column: 9, scope: !2502)
!2737 = !DILocation(line: 282, column: 7, scope: !2502)
!2738 = !DILocation(line: 284, column: 5, scope: !2502)
!2739 = !DILocation(line: 284, column: 8, scope: !2502)
!2740 = !DILocation(line: 284, column: 13, scope: !2502)
!2741 = !DILocation(line: 284, column: 20, scope: !2502)
!2742 = !{!2242, !2008, i64 64}
!2743 = !DILocation(line: 286, column: 10, scope: !2502)
!2744 = !DILocation(line: 286, column: 20, scope: !2502)
!2745 = !DILocation(line: 286, column: 43, scope: !2502)
!2746 = !DILocation(line: 286, column: 46, scope: !2502)
!2747 = !DILocation(line: 286, column: 52, scope: !2502)
!2748 = !DILocation(line: 286, column: 8, scope: !2502)
!2749 = !DILocation(line: 288, column: 9, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2502, file: !2, line: 288, column: 9)
!2751 = !DILocation(line: 288, column: 12, scope: !2750)
!2752 = !DILocation(line: 288, column: 22, scope: !2750)
!2753 = !DILocation(line: 288, column: 25, scope: !2750)
!2754 = !DILocation(line: 288, column: 28, scope: !2750)
!2755 = !DILocation(line: 288, column: 9, scope: !2502)
!2756 = !DILocation(line: 289, column: 9, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2750, file: !2, line: 288, column: 42)
!2758 = !DILocation(line: 289, column: 15, scope: !2757)
!2759 = !DILocation(line: 289, column: 20, scope: !2757)
!2760 = !DILocation(line: 295, column: 9, scope: !2757)
!2761 = !DILocation(line: 295, column: 12, scope: !2757)
!2762 = !DILocation(line: 295, column: 17, scope: !2757)
!2763 = !DILocation(line: 295, column: 24, scope: !2757)
!2764 = !DILocation(line: 301, column: 9, scope: !2757)
!2765 = !DILocation(line: 288, column: 31, scope: !2750)
!2766 = !DILocation(line: 307, column: 1, scope: !2502)
!2767 = !DILocation(line: 309, column: 9, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2502, file: !2, line: 309, column: 9)
!2769 = !DILocation(line: 309, column: 11, scope: !2768)
!2770 = !DILocation(line: 309, column: 14, scope: !2768)
!2771 = !DILocation(line: 309, column: 17, scope: !2768)
!2772 = !{!2019, !2008, i64 88}
!2773 = !DILocation(line: 309, column: 9, scope: !2502)
!2774 = !DILocation(line: 310, column: 40, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2768, file: !2, line: 309, column: 23)
!2776 = !DILocation(line: 310, column: 9, scope: !2775)
!2777 = !DILocation(line: 311, column: 5, scope: !2775)
!2778 = !DILocation(line: 313, column: 9, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2502, file: !2, line: 313, column: 9)
!2780 = !DILocation(line: 313, column: 9, scope: !2502)
!2781 = !DILocation(line: 314, column: 44, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2779, file: !2, line: 313, column: 13)
!2783 = !DILocation(line: 314, column: 9, scope: !2782)
!2784 = !DILocation(line: 315, column: 5, scope: !2782)
!2785 = !DILocation(line: 317, column: 5, scope: !2502)
!2786 = !DILocation(line: 318, column: 1, scope: !2502)
!2787 = !DISubprogram(name: "SSL_get_ex_data", scope: !499, file: !499, line: 2158, type: !2788, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{!91, !2790, !178}
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !485)
!2792 = !DISubprogram(name: "ngx_http_lua_create_fake_connection", scope: !85, file: !85, line: 238, type: !2793, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{!116, !431}
!2795 = distinct !DISubprogram(name: "ngx_http_lua_log_ssl_sess_store_error", scope: !2, file: !2, line: 322, type: !208, scopeLine: 323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !2796)
!2796 = !{!2797, !2798, !2799, !2800, !2801}
!2797 = !DILocalVariable(name: "log", arg: 1, scope: !2795, file: !2, line: 322, type: !163)
!2798 = !DILocalVariable(name: "buf", arg: 2, scope: !2795, file: !2, line: 322, type: !188)
!2799 = !DILocalVariable(name: "len", arg: 3, scope: !2795, file: !2, line: 322, type: !185)
!2800 = !DILocalVariable(name: "p", scope: !2795, file: !2, line: 324, type: !188)
!2801 = !DILocalVariable(name: "c", scope: !2795, file: !2, line: 325, type: !116)
!2802 = !DILocation(line: 322, column: 50, scope: !2795)
!2803 = !DILocation(line: 322, column: 63, scope: !2795)
!2804 = !DILocation(line: 322, column: 75, scope: !2795)
!2805 = !DILocation(line: 324, column: 5, scope: !2795)
!2806 = !DILocation(line: 324, column: 26, scope: !2795)
!2807 = !DILocation(line: 325, column: 5, scope: !2795)
!2808 = !DILocation(line: 325, column: 26, scope: !2795)
!2809 = !DILocation(line: 327, column: 9, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2795, file: !2, line: 327, column: 9)
!2811 = !DILocation(line: 327, column: 14, scope: !2810)
!2812 = !DILocation(line: 327, column: 9, scope: !2795)
!2813 = !DILocation(line: 328, column: 26, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2810, file: !2, line: 327, column: 22)
!2815 = !DILocation(line: 328, column: 31, scope: !2814)
!2816 = !DILocation(line: 328, column: 49, scope: !2814)
!2817 = !DILocation(line: 328, column: 54, scope: !2814)
!2818 = !DILocation(line: 328, column: 13, scope: !2814)
!2819 = !DILocation(line: 328, column: 11, scope: !2814)
!2820 = !DILocation(line: 329, column: 16, scope: !2814)
!2821 = !DILocation(line: 329, column: 20, scope: !2814)
!2822 = !DILocation(line: 329, column: 18, scope: !2814)
!2823 = !DILocation(line: 329, column: 13, scope: !2814)
!2824 = !DILocation(line: 330, column: 15, scope: !2814)
!2825 = !DILocation(line: 330, column: 13, scope: !2814)
!2826 = !DILocation(line: 331, column: 5, scope: !2814)
!2827 = !DILocation(line: 333, column: 22, scope: !2795)
!2828 = !DILocation(line: 333, column: 27, scope: !2795)
!2829 = !DILocation(line: 333, column: 9, scope: !2795)
!2830 = !DILocation(line: 333, column: 7, scope: !2795)
!2831 = !DILocation(line: 334, column: 12, scope: !2795)
!2832 = !DILocation(line: 334, column: 16, scope: !2795)
!2833 = !DILocation(line: 334, column: 14, scope: !2795)
!2834 = !DILocation(line: 334, column: 9, scope: !2795)
!2835 = !DILocation(line: 335, column: 11, scope: !2795)
!2836 = !DILocation(line: 335, column: 9, scope: !2795)
!2837 = !DILocation(line: 337, column: 9, scope: !2795)
!2838 = !DILocation(line: 337, column: 14, scope: !2795)
!2839 = !DILocation(line: 337, column: 7, scope: !2795)
!2840 = !DILocation(line: 339, column: 9, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2795, file: !2, line: 339, column: 9)
!2842 = !DILocation(line: 339, column: 12, scope: !2841)
!2843 = !DILocation(line: 339, column: 22, scope: !2841)
!2844 = !{!2030, !2024, i64 120}
!2845 = !DILocation(line: 339, column: 9, scope: !2795)
!2846 = !DILocation(line: 340, column: 26, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2841, file: !2, line: 339, column: 27)
!2848 = !DILocation(line: 340, column: 31, scope: !2847)
!2849 = !DILocation(line: 340, column: 53, scope: !2847)
!2850 = !DILocation(line: 340, column: 56, scope: !2847)
!2851 = !DILocation(line: 340, column: 13, scope: !2847)
!2852 = !DILocation(line: 340, column: 11, scope: !2847)
!2853 = !DILocation(line: 341, column: 16, scope: !2847)
!2854 = !DILocation(line: 341, column: 20, scope: !2847)
!2855 = !DILocation(line: 341, column: 18, scope: !2847)
!2856 = !DILocation(line: 341, column: 13, scope: !2847)
!2857 = !DILocation(line: 342, column: 15, scope: !2847)
!2858 = !DILocation(line: 342, column: 13, scope: !2847)
!2859 = !DILocation(line: 343, column: 5, scope: !2847)
!2860 = !DILocation(line: 345, column: 9, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2795, file: !2, line: 345, column: 9)
!2862 = !DILocation(line: 345, column: 11, scope: !2861)
!2863 = !DILocation(line: 345, column: 14, scope: !2861)
!2864 = !DILocation(line: 345, column: 17, scope: !2861)
!2865 = !DILocation(line: 345, column: 27, scope: !2861)
!2866 = !DILocation(line: 345, column: 30, scope: !2861)
!2867 = !DILocation(line: 345, column: 33, scope: !2861)
!2868 = !DILocation(line: 345, column: 44, scope: !2861)
!2869 = !DILocation(line: 345, column: 54, scope: !2861)
!2870 = !{!2871, !2024, i64 32}
!2871 = !{!"ngx_listening_s", !2020, i64 0, !2008, i64 8, !2020, i64 16, !2024, i64 24, !2026, i64 32, !2020, i64 48, !2020, i64 52, !2020, i64 56, !2020, i64 60, !2020, i64 64, !2020, i64 68, !2020, i64 72, !2008, i64 80, !2008, i64 88, !2242, i64 96, !2008, i64 176, !2024, i64 184, !2024, i64 192, !2024, i64 200, !2008, i64 208, !2008, i64 216, !2872, i64 224, !2211, i64 248, !2024, i64 288, !2020, i64 296, !2020, i64 296, !2020, i64 296, !2020, i64 296, !2020, i64 296, !2020, i64 296, !2020, i64 296, !2020, i64 296, !2020, i64 297, !2020, i64 297, !2020, i64 297, !2020, i64 297, !2020, i64 297, !2020, i64 297, !2020, i64 297, !2020, i64 298, !2020, i64 298, !2020, i64 298, !2020, i64 300}
!2872 = !{!"ngx_rbtree_s", !2008, i64 0, !2008, i64 8, !2008, i64 16}
!2873 = !DILocation(line: 345, column: 9, scope: !2795)
!2874 = !DILocation(line: 346, column: 26, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2861, file: !2, line: 345, column: 59)
!2876 = !DILocation(line: 346, column: 31, scope: !2875)
!2877 = !DILocation(line: 346, column: 53, scope: !2875)
!2878 = !DILocation(line: 346, column: 56, scope: !2875)
!2879 = !DILocation(line: 346, column: 67, scope: !2875)
!2880 = !DILocation(line: 346, column: 13, scope: !2875)
!2881 = !DILocation(line: 346, column: 11, scope: !2875)
!2882 = !DILocation(line: 347, column: 15, scope: !2875)
!2883 = !DILocation(line: 347, column: 13, scope: !2875)
!2884 = !DILocation(line: 348, column: 5, scope: !2875)
!2885 = !DILocation(line: 350, column: 12, scope: !2795)
!2886 = !DILocation(line: 351, column: 1, scope: !2795)
!2887 = !DILocation(line: 350, column: 5, scope: !2795)
!2888 = !DISubprogram(name: "ngx_http_lua_create_fake_request", scope: !85, file: !85, line: 240, type: !2889, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{!104, !116}
!2891 = !DISubprogram(name: "ngx_pcalloc", scope: !434, file: !434, line: 81, type: !2497, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2892 = !DISubprogram(name: "SSL_SESSION_get_id", scope: !499, file: !499, line: 1752, type: !2893, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{!2895, !2897, !2899}
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !498)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!2900 = !DISubprogram(name: "SSL_set_ex_data", scope: !499, file: !499, line: 2157, type: !2901, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{!178, !484, !178, !91}
!2903 = !DISubprogram(name: "ngx_ssl_error", scope: !481, file: !481, line: 268, type: !2904, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{null, !158, !163, !2906, !218, null}
!2906 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_err_t", file: !2907, line: 16, baseType: !178)
!2907 = !DIFile(filename: "src/os/unix/ngx_errno.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "30ed2ad8bb523aef1235abc1478ad7cf")
!2908 = distinct !DISubprogram(name: "ngx_http_lua_get_lua_vm", scope: !85, file: !85, line: 325, type: !2909, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !2911)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!1989, !104, !2071}
!2911 = !{!2912, !2913, !2914}
!2912 = !DILocalVariable(name: "r", arg: 1, scope: !2908, file: !85, line: 325, type: !104)
!2913 = !DILocalVariable(name: "ctx", arg: 2, scope: !2908, file: !85, line: 325, type: !2071)
!2914 = !DILocalVariable(name: "lmcf", scope: !2908, file: !85, line: 327, type: !2915)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_lua_main_conf_t", file: !93, line: 152, baseType: !2917)
!2917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_lua_main_conf_s", file: !93, line: 175, size: 2432, elements: !2918)
!2918 = !{!2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2941, !2942, !2943, !2944, !2948, !2949, !2950, !2951, !2952, !2956, !2957, !2958, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "lua", scope: !2917, file: !93, line: 176, baseType: !1989, size: 64)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "vm_cleanup", scope: !2917, file: !93, line: 177, baseType: !455, size: 64, offset: 64)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "lua_path", scope: !2917, file: !93, line: 179, baseType: !180, size: 128, offset: 128)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "lua_cpath", scope: !2917, file: !93, line: 180, baseType: !180, size: 128, offset: 256)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "cycle", scope: !2917, file: !93, line: 182, baseType: !970, size: 64, offset: 384)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !2917, file: !93, line: 183, baseType: !431, size: 64, offset: 448)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "load_resty_core", scope: !2917, file: !93, line: 185, baseType: !1139, size: 64, offset: 512)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "max_pending_timers", scope: !2917, file: !93, line: 187, baseType: !97, size: 64, offset: 576)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "pending_timers", scope: !2917, file: !93, line: 188, baseType: !97, size: 64, offset: 640)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "max_running_timers", scope: !2917, file: !93, line: 190, baseType: !97, size: 64, offset: 704)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "running_timers", scope: !2917, file: !93, line: 191, baseType: !97, size: 64, offset: 768)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "watcher", scope: !2917, file: !93, line: 193, baseType: !116, size: 64, offset: 832)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "shm_zones", scope: !2917, file: !93, line: 206, baseType: !968, size: 64, offset: 896)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "shdict_zones", scope: !2917, file: !93, line: 208, baseType: !968, size: 64, offset: 960)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "preload_hooks", scope: !2917, file: !93, line: 210, baseType: !968, size: 64, offset: 1024)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "postponed_to_rewrite_phase_end", scope: !2917, file: !93, line: 212, baseType: !1139, size: 64, offset: 1088)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "postponed_to_access_phase_end", scope: !2917, file: !93, line: 213, baseType: !1139, size: 64, offset: 1152)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "init_handler", scope: !2917, file: !93, line: 215, baseType: !2937, size: 64, offset: 1216)
!2937 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_lua_main_conf_handler_pt", file: !93, line: 163, baseType: !2938)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = !DISubroutineType(types: !2940)
!2940 = !{!97, !163, !2915, !1989}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "init_src", scope: !2917, file: !93, line: 216, baseType: !180, size: 128, offset: 1280)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "init_worker_handler", scope: !2917, file: !93, line: 218, baseType: !2937, size: 64, offset: 1408)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "init_worker_src", scope: !2917, file: !93, line: 219, baseType: !180, size: 128, offset: 1472)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "balancer_peer_data", scope: !2917, file: !93, line: 221, baseType: !2945, size: 64, offset: 1600)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_lua_balancer_peer_data_t", file: !93, line: 157, baseType: !2947)
!2947 = !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_lua_balancer_peer_data_s", file: !93, line: 156, flags: DIFlagFwdDecl)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "body_filter_chain", scope: !2917, file: !93, line: 228, baseType: !260, size: 64, offset: 1664)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "setby_args", scope: !2917, file: !93, line: 235, baseType: !1657, size: 64, offset: 1728)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "setby_nargs", scope: !2917, file: !93, line: 242, baseType: !185, size: 64, offset: 1792)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "shm_zones_inited", scope: !2917, file: !93, line: 249, baseType: !158, size: 64, offset: 1856)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "sema_mm", scope: !2917, file: !93, line: 251, baseType: !2953, size: 64, offset: 1920)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_lua_sema_mm_t", file: !93, line: 160, baseType: !2955)
!2955 = !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_lua_sema_mm_s", file: !93, line: 160, flags: DIFlagFwdDecl)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_trim_cycle", scope: !2917, file: !93, line: 253, baseType: !158, size: 64, offset: 1984)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_trim_req_count", scope: !2917, file: !93, line: 255, baseType: !158, size: 64, offset: 2048)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "busy_buf_ptrs", scope: !2917, file: !93, line: 259, baseType: !2959, size: 64, offset: 2112)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "busy_buf_ptr_count", scope: !2917, file: !93, line: 260, baseType: !97, size: 64, offset: 2176)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "host_var_index", scope: !2917, file: !93, line: 263, baseType: !97, size: 64, offset: 2240)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "set_sa_restart", scope: !2917, file: !93, line: 265, baseType: !1139, size: 64, offset: 2304)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "requires_header_filter", scope: !2917, file: !93, line: 267, baseType: !114, size: 1, offset: 2368, flags: DIFlagBitField, extraData: i64 2368)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "requires_body_filter", scope: !2917, file: !93, line: 268, baseType: !114, size: 1, offset: 2369, flags: DIFlagBitField, extraData: i64 2368)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "requires_capture_filter", scope: !2917, file: !93, line: 269, baseType: !114, size: 1, offset: 2370, flags: DIFlagBitField, extraData: i64 2368)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "requires_rewrite", scope: !2917, file: !93, line: 270, baseType: !114, size: 1, offset: 2371, flags: DIFlagBitField, extraData: i64 2368)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "requires_access", scope: !2917, file: !93, line: 271, baseType: !114, size: 1, offset: 2372, flags: DIFlagBitField, extraData: i64 2368)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "requires_log", scope: !2917, file: !93, line: 272, baseType: !114, size: 1, offset: 2373, flags: DIFlagBitField, extraData: i64 2368)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "requires_shm", scope: !2917, file: !93, line: 273, baseType: !114, size: 1, offset: 2374, flags: DIFlagBitField, extraData: i64 2368)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "requires_capture_log", scope: !2917, file: !93, line: 274, baseType: !114, size: 1, offset: 2375, flags: DIFlagBitField, extraData: i64 2368)
!2971 = !DILocation(line: 325, column: 45, scope: !2908)
!2972 = !DILocation(line: 325, column: 68, scope: !2908)
!2973 = !DILocation(line: 327, column: 5, scope: !2908)
!2974 = !DILocation(line: 327, column: 34, scope: !2908)
!2975 = !DILocation(line: 329, column: 9, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2908, file: !85, line: 329, column: 9)
!2977 = !DILocation(line: 329, column: 13, scope: !2976)
!2978 = !DILocation(line: 329, column: 9, scope: !2908)
!2979 = !DILocation(line: 330, column: 15, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2976, file: !85, line: 329, column: 22)
!2981 = !DILocation(line: 330, column: 13, scope: !2980)
!2982 = !DILocation(line: 331, column: 5, scope: !2980)
!2983 = !DILocation(line: 333, column: 9, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2908, file: !85, line: 333, column: 9)
!2985 = !DILocation(line: 333, column: 13, scope: !2984)
!2986 = !DILocation(line: 333, column: 16, scope: !2984)
!2987 = !DILocation(line: 333, column: 21, scope: !2984)
!2988 = !{!2208, !2008, i64 0}
!2989 = !DILocation(line: 333, column: 9, scope: !2908)
!2990 = !DILocation(line: 334, column: 16, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2984, file: !85, line: 333, column: 31)
!2992 = !DILocation(line: 334, column: 21, scope: !2991)
!2993 = !DILocation(line: 334, column: 31, scope: !2991)
!2994 = !{!2660, !2008, i64 0}
!2995 = !DILocation(line: 334, column: 9, scope: !2991)
!2996 = !DILocation(line: 337, column: 12, scope: !2908)
!2997 = !DILocation(line: 337, column: 10, scope: !2908)
!2998 = !DILocation(line: 343, column: 12, scope: !2908)
!2999 = !DILocation(line: 343, column: 18, scope: !2908)
!3000 = !{!3001, !2008, i64 0}
!3001 = !{!"ngx_http_lua_main_conf_s", !2008, i64 0, !2008, i64 8, !2026, i64 16, !2026, i64 32, !2008, i64 48, !2008, i64 56, !2024, i64 64, !2024, i64 72, !2024, i64 80, !2024, i64 88, !2024, i64 96, !2008, i64 104, !2008, i64 112, !2008, i64 120, !2008, i64 128, !2024, i64 136, !2024, i64 144, !2008, i64 152, !2026, i64 160, !2008, i64 176, !2026, i64 184, !2008, i64 200, !2008, i64 208, !2008, i64 216, !2024, i64 224, !2024, i64 232, !2008, i64 240, !2024, i64 248, !2024, i64 256, !2008, i64 264, !2024, i64 272, !2024, i64 280, !2024, i64 288, !2020, i64 296, !2020, i64 296, !2020, i64 296, !2020, i64 296, !2020, i64 296, !2020, i64 296, !2020, i64 296, !2020, i64 296}
!3002 = !DILocation(line: 343, column: 5, scope: !2908)
!3003 = !DILocation(line: 344, column: 1, scope: !2908)
!3004 = !DISubprogram(name: "ngx_http_lua_free_fake_request", scope: !85, file: !85, line: 231, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3005 = !DISubprogram(name: "ngx_http_lua_close_fake_connection", scope: !85, file: !85, line: 229, type: !384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3006 = distinct !DISubprogram(name: "ngx_http_lua_ffi_ssl_get_serialized_session", scope: !2, file: !2, line: 436, type: !3007, scopeLine: 438, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !3010)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{!178, !104, !188, !3009}
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!3010 = !{!3011, !3012, !3013, !3014, !3015, !3016, !3017}
!3011 = !DILocalVariable(name: "r", arg: 1, scope: !3006, file: !2, line: 436, type: !104)
!3012 = !DILocalVariable(name: "buf", arg: 2, scope: !3006, file: !2, line: 437, type: !188)
!3013 = !DILocalVariable(name: "err", arg: 3, scope: !3006, file: !2, line: 437, type: !3009)
!3014 = !DILocalVariable(name: "ssl_conn", scope: !3006, file: !2, line: 439, type: !484)
!3015 = !DILocalVariable(name: "c", scope: !3006, file: !2, line: 440, type: !116)
!3016 = !DILocalVariable(name: "session", scope: !3006, file: !2, line: 441, type: !497)
!3017 = !DILocalVariable(name: "cctx", scope: !3006, file: !2, line: 442, type: !2517)
!3018 = !DILocation(line: 436, column: 65, scope: !3006)
!3019 = !DILocation(line: 437, column: 13, scope: !3006)
!3020 = !DILocation(line: 437, column: 25, scope: !3006)
!3021 = !DILocation(line: 439, column: 5, scope: !3006)
!3022 = !DILocation(line: 439, column: 38, scope: !3006)
!3023 = !DILocation(line: 440, column: 5, scope: !3006)
!3024 = !DILocation(line: 440, column: 38, scope: !3006)
!3025 = !DILocation(line: 441, column: 5, scope: !3006)
!3026 = !DILocation(line: 441, column: 38, scope: !3006)
!3027 = !DILocation(line: 442, column: 5, scope: !3006)
!3028 = !DILocation(line: 442, column: 38, scope: !3006)
!3029 = !DILocation(line: 444, column: 9, scope: !3006)
!3030 = !DILocation(line: 444, column: 12, scope: !3006)
!3031 = !DILocation(line: 444, column: 7, scope: !3006)
!3032 = !DILocation(line: 446, column: 9, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !3006, file: !2, line: 446, column: 9)
!3034 = !DILocation(line: 446, column: 11, scope: !3033)
!3035 = !DILocation(line: 446, column: 19, scope: !3033)
!3036 = !DILocation(line: 446, column: 22, scope: !3033)
!3037 = !DILocation(line: 446, column: 25, scope: !3033)
!3038 = !DILocation(line: 446, column: 29, scope: !3033)
!3039 = !DILocation(line: 446, column: 9, scope: !3006)
!3040 = !DILocation(line: 447, column: 10, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3033, file: !2, line: 446, column: 38)
!3042 = !DILocation(line: 447, column: 14, scope: !3041)
!3043 = !DILocation(line: 448, column: 9, scope: !3041)
!3044 = !DILocation(line: 451, column: 16, scope: !3006)
!3045 = !DILocation(line: 451, column: 19, scope: !3006)
!3046 = !DILocation(line: 451, column: 24, scope: !3006)
!3047 = !DILocation(line: 451, column: 14, scope: !3006)
!3048 = !DILocation(line: 452, column: 9, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3006, file: !2, line: 452, column: 9)
!3050 = !DILocation(line: 452, column: 18, scope: !3049)
!3051 = !DILocation(line: 452, column: 9, scope: !3006)
!3052 = !DILocation(line: 453, column: 10, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3049, file: !2, line: 452, column: 27)
!3054 = !DILocation(line: 453, column: 14, scope: !3053)
!3055 = !DILocation(line: 454, column: 9, scope: !3053)
!3056 = !DILocation(line: 459, column: 12, scope: !3006)
!3057 = !DILocation(line: 459, column: 10, scope: !3006)
!3058 = !DILocation(line: 460, column: 9, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !3006, file: !2, line: 460, column: 9)
!3060 = !DILocation(line: 460, column: 14, scope: !3059)
!3061 = !DILocation(line: 460, column: 9, scope: !3006)
!3062 = !DILocation(line: 461, column: 10, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3059, file: !2, line: 460, column: 23)
!3064 = !DILocation(line: 461, column: 14, scope: !3063)
!3065 = !DILocation(line: 462, column: 9, scope: !3063)
!3066 = !DILocation(line: 465, column: 15, scope: !3006)
!3067 = !DILocation(line: 465, column: 21, scope: !3006)
!3068 = !DILocation(line: 465, column: 13, scope: !3006)
!3069 = !DILocation(line: 466, column: 9, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3006, file: !2, line: 466, column: 9)
!3071 = !DILocation(line: 466, column: 17, scope: !3070)
!3072 = !DILocation(line: 466, column: 9, scope: !3006)
!3073 = !DILocation(line: 467, column: 10, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3070, file: !2, line: 466, column: 26)
!3075 = !DILocation(line: 467, column: 14, scope: !3074)
!3076 = !DILocation(line: 468, column: 9, scope: !3074)
!3077 = !DILocation(line: 471, column: 25, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3006, file: !2, line: 471, column: 9)
!3079 = !DILocation(line: 471, column: 9, scope: !3078)
!3080 = !DILocation(line: 471, column: 40, scope: !3078)
!3081 = !DILocation(line: 471, column: 9, scope: !3006)
!3082 = !DILocation(line: 472, column: 10, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3078, file: !2, line: 471, column: 46)
!3084 = !DILocation(line: 472, column: 14, scope: !3083)
!3085 = !DILocation(line: 473, column: 9, scope: !3083)
!3086 = !DILocation(line: 476, column: 5, scope: !3006)
!3087 = !DILocation(line: 477, column: 1, scope: !3006)
!3088 = !DISubprogram(name: "i2d_SSL_SESSION", scope: !499, file: !499, line: 1764, type: !3089, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3089 = !DISubroutineType(types: !3090)
!3090 = !{!178, !2897, !3091}
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3092, size: 64)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!3093 = distinct !DISubprogram(name: "ngx_http_lua_ffi_ssl_get_serialized_session_size", scope: !2, file: !2, line: 482, type: !3094, scopeLine: 484, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !3096)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!178, !104, !3009}
!3096 = !{!3097, !3098, !3099, !3100, !3101, !3102, !3103}
!3097 = !DILocalVariable(name: "r", arg: 1, scope: !3093, file: !2, line: 482, type: !104)
!3098 = !DILocalVariable(name: "err", arg: 2, scope: !3093, file: !2, line: 483, type: !3009)
!3099 = !DILocalVariable(name: "len", scope: !3093, file: !2, line: 485, type: !178)
!3100 = !DILocalVariable(name: "ssl_conn", scope: !3093, file: !2, line: 486, type: !484)
!3101 = !DILocalVariable(name: "c", scope: !3093, file: !2, line: 487, type: !116)
!3102 = !DILocalVariable(name: "session", scope: !3093, file: !2, line: 488, type: !497)
!3103 = !DILocalVariable(name: "cctx", scope: !3093, file: !2, line: 489, type: !2517)
!3104 = !DILocation(line: 482, column: 70, scope: !3093)
!3105 = !DILocation(line: 483, column: 12, scope: !3093)
!3106 = !DILocation(line: 485, column: 5, scope: !3093)
!3107 = !DILocation(line: 485, column: 38, scope: !3093)
!3108 = !DILocation(line: 486, column: 5, scope: !3093)
!3109 = !DILocation(line: 486, column: 38, scope: !3093)
!3110 = !DILocation(line: 487, column: 5, scope: !3093)
!3111 = !DILocation(line: 487, column: 38, scope: !3093)
!3112 = !DILocation(line: 488, column: 5, scope: !3093)
!3113 = !DILocation(line: 488, column: 38, scope: !3093)
!3114 = !DILocation(line: 489, column: 5, scope: !3093)
!3115 = !DILocation(line: 489, column: 38, scope: !3093)
!3116 = !DILocation(line: 491, column: 9, scope: !3093)
!3117 = !DILocation(line: 491, column: 12, scope: !3093)
!3118 = !DILocation(line: 491, column: 7, scope: !3093)
!3119 = !DILocation(line: 493, column: 9, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3093, file: !2, line: 493, column: 9)
!3121 = !DILocation(line: 493, column: 11, scope: !3120)
!3122 = !DILocation(line: 493, column: 19, scope: !3120)
!3123 = !DILocation(line: 493, column: 22, scope: !3120)
!3124 = !DILocation(line: 493, column: 25, scope: !3120)
!3125 = !DILocation(line: 493, column: 29, scope: !3120)
!3126 = !DILocation(line: 493, column: 9, scope: !3093)
!3127 = !DILocation(line: 494, column: 10, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3120, file: !2, line: 493, column: 38)
!3129 = !DILocation(line: 494, column: 14, scope: !3128)
!3130 = !DILocation(line: 495, column: 9, scope: !3128)
!3131 = !DILocation(line: 498, column: 16, scope: !3093)
!3132 = !DILocation(line: 498, column: 19, scope: !3093)
!3133 = !DILocation(line: 498, column: 24, scope: !3093)
!3134 = !DILocation(line: 498, column: 14, scope: !3093)
!3135 = !DILocation(line: 499, column: 9, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3093, file: !2, line: 499, column: 9)
!3137 = !DILocation(line: 499, column: 18, scope: !3136)
!3138 = !DILocation(line: 499, column: 9, scope: !3093)
!3139 = !DILocation(line: 500, column: 10, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3136, file: !2, line: 499, column: 27)
!3141 = !DILocation(line: 500, column: 14, scope: !3140)
!3142 = !DILocation(line: 501, column: 9, scope: !3140)
!3143 = !DILocation(line: 505, column: 12, scope: !3093)
!3144 = !DILocation(line: 505, column: 10, scope: !3093)
!3145 = !DILocation(line: 506, column: 9, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3093, file: !2, line: 506, column: 9)
!3147 = !DILocation(line: 506, column: 14, scope: !3146)
!3148 = !DILocation(line: 506, column: 9, scope: !3093)
!3149 = !DILocation(line: 507, column: 10, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3146, file: !2, line: 506, column: 23)
!3151 = !DILocation(line: 507, column: 14, scope: !3150)
!3152 = !DILocation(line: 508, column: 9, scope: !3150)
!3153 = !DILocation(line: 511, column: 15, scope: !3093)
!3154 = !DILocation(line: 511, column: 21, scope: !3093)
!3155 = !DILocation(line: 511, column: 13, scope: !3093)
!3156 = !DILocation(line: 512, column: 9, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3093, file: !2, line: 512, column: 9)
!3158 = !DILocation(line: 512, column: 17, scope: !3157)
!3159 = !DILocation(line: 512, column: 9, scope: !3093)
!3160 = !DILocation(line: 513, column: 10, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3157, file: !2, line: 512, column: 26)
!3162 = !DILocation(line: 513, column: 14, scope: !3161)
!3163 = !DILocation(line: 514, column: 9, scope: !3161)
!3164 = !DILocation(line: 517, column: 27, scope: !3093)
!3165 = !DILocation(line: 517, column: 11, scope: !3093)
!3166 = !DILocation(line: 517, column: 9, scope: !3093)
!3167 = !DILocation(line: 518, column: 9, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3093, file: !2, line: 518, column: 9)
!3169 = !DILocation(line: 518, column: 13, scope: !3168)
!3170 = !DILocation(line: 518, column: 9, scope: !3093)
!3171 = !DILocation(line: 519, column: 10, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3168, file: !2, line: 518, column: 19)
!3173 = !DILocation(line: 519, column: 14, scope: !3172)
!3174 = !DILocation(line: 520, column: 9, scope: !3172)
!3175 = !DILocation(line: 523, column: 12, scope: !3093)
!3176 = !DILocation(line: 523, column: 5, scope: !3093)
!3177 = !DILocation(line: 524, column: 1, scope: !3093)
!3178 = distinct !DISubprogram(name: "ngx_http_lua_ffi_ssl_get_session_id", scope: !2, file: !2, line: 530, type: !3007, scopeLine: 532, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !3179)
!3179 = !{!3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187}
!3180 = !DILocalVariable(name: "r", arg: 1, scope: !3178, file: !2, line: 530, type: !104)
!3181 = !DILocalVariable(name: "buf", arg: 2, scope: !3178, file: !2, line: 531, type: !188)
!3182 = !DILocalVariable(name: "err", arg: 3, scope: !3178, file: !2, line: 531, type: !3009)
!3183 = !DILocalVariable(name: "id_len", scope: !3178, file: !2, line: 533, type: !178)
!3184 = !DILocalVariable(name: "id", scope: !3178, file: !2, line: 534, type: !188)
!3185 = !DILocalVariable(name: "ssl_conn", scope: !3178, file: !2, line: 535, type: !484)
!3186 = !DILocalVariable(name: "c", scope: !3178, file: !2, line: 536, type: !116)
!3187 = !DILocalVariable(name: "cctx", scope: !3178, file: !2, line: 537, type: !2517)
!3188 = !DILocation(line: 530, column: 57, scope: !3178)
!3189 = !DILocation(line: 531, column: 13, scope: !3178)
!3190 = !DILocation(line: 531, column: 25, scope: !3178)
!3191 = !DILocation(line: 533, column: 5, scope: !3178)
!3192 = !DILocation(line: 533, column: 38, scope: !3178)
!3193 = !DILocation(line: 534, column: 5, scope: !3178)
!3194 = !DILocation(line: 534, column: 38, scope: !3178)
!3195 = !DILocation(line: 535, column: 5, scope: !3178)
!3196 = !DILocation(line: 535, column: 38, scope: !3178)
!3197 = !DILocation(line: 536, column: 5, scope: !3178)
!3198 = !DILocation(line: 536, column: 38, scope: !3178)
!3199 = !DILocation(line: 537, column: 5, scope: !3178)
!3200 = !DILocation(line: 537, column: 38, scope: !3178)
!3201 = !DILocation(line: 539, column: 9, scope: !3178)
!3202 = !DILocation(line: 539, column: 12, scope: !3178)
!3203 = !DILocation(line: 539, column: 7, scope: !3178)
!3204 = !DILocation(line: 541, column: 9, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3178, file: !2, line: 541, column: 9)
!3206 = !DILocation(line: 541, column: 11, scope: !3205)
!3207 = !DILocation(line: 541, column: 19, scope: !3205)
!3208 = !DILocation(line: 541, column: 22, scope: !3205)
!3209 = !DILocation(line: 541, column: 25, scope: !3205)
!3210 = !DILocation(line: 541, column: 29, scope: !3205)
!3211 = !DILocation(line: 541, column: 9, scope: !3178)
!3212 = !DILocation(line: 542, column: 10, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3205, file: !2, line: 541, column: 38)
!3214 = !DILocation(line: 542, column: 14, scope: !3213)
!3215 = !DILocation(line: 543, column: 9, scope: !3213)
!3216 = !DILocation(line: 546, column: 16, scope: !3178)
!3217 = !DILocation(line: 546, column: 19, scope: !3178)
!3218 = !DILocation(line: 546, column: 24, scope: !3178)
!3219 = !DILocation(line: 546, column: 14, scope: !3178)
!3220 = !DILocation(line: 547, column: 9, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3178, file: !2, line: 547, column: 9)
!3222 = !DILocation(line: 547, column: 18, scope: !3221)
!3223 = !DILocation(line: 547, column: 9, scope: !3178)
!3224 = !DILocation(line: 548, column: 10, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3221, file: !2, line: 547, column: 27)
!3226 = !DILocation(line: 548, column: 14, scope: !3225)
!3227 = !DILocation(line: 549, column: 9, scope: !3225)
!3228 = !DILocation(line: 553, column: 12, scope: !3178)
!3229 = !DILocation(line: 553, column: 10, scope: !3178)
!3230 = !DILocation(line: 554, column: 9, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3178, file: !2, line: 554, column: 9)
!3232 = !DILocation(line: 554, column: 14, scope: !3231)
!3233 = !DILocation(line: 554, column: 9, scope: !3178)
!3234 = !DILocation(line: 555, column: 10, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3231, file: !2, line: 554, column: 23)
!3236 = !DILocation(line: 555, column: 14, scope: !3235)
!3237 = !DILocation(line: 556, column: 9, scope: !3235)
!3238 = !DILocation(line: 559, column: 10, scope: !3178)
!3239 = !DILocation(line: 559, column: 16, scope: !3178)
!3240 = !DILocation(line: 559, column: 27, scope: !3178)
!3241 = !DILocation(line: 559, column: 8, scope: !3178)
!3242 = !DILocation(line: 560, column: 9, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3178, file: !2, line: 560, column: 9)
!3244 = !DILocation(line: 560, column: 12, scope: !3243)
!3245 = !DILocation(line: 560, column: 9, scope: !3178)
!3246 = !DILocation(line: 561, column: 10, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3243, file: !2, line: 560, column: 21)
!3248 = !DILocation(line: 561, column: 14, scope: !3247)
!3249 = !DILocation(line: 562, column: 9, scope: !3247)
!3250 = !DILocation(line: 565, column: 14, scope: !3178)
!3251 = !DILocation(line: 565, column: 20, scope: !3178)
!3252 = !DILocation(line: 565, column: 31, scope: !3178)
!3253 = !DILocation(line: 565, column: 12, scope: !3178)
!3254 = !DILocation(line: 566, column: 9, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3178, file: !2, line: 566, column: 9)
!3256 = !DILocation(line: 566, column: 16, scope: !3255)
!3257 = !DILocation(line: 566, column: 9, scope: !3178)
!3258 = !DILocation(line: 567, column: 10, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3255, file: !2, line: 566, column: 22)
!3260 = !DILocation(line: 567, column: 14, scope: !3259)
!3261 = !DILocation(line: 568, column: 9, scope: !3259)
!3262 = !DILocation(line: 571, column: 18, scope: !3178)
!3263 = !DILocation(line: 571, column: 23, scope: !3178)
!3264 = !DILocation(line: 571, column: 27, scope: !3178)
!3265 = !DILocation(line: 571, column: 5, scope: !3178)
!3266 = !DILocation(line: 573, column: 5, scope: !3178)
!3267 = !DILocation(line: 574, column: 1, scope: !3178)
!3268 = !DISubprogram(name: "ngx_hex_dump", scope: !181, file: !181, line: 183, type: !3269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!188, !188, !188, !185}
!3271 = distinct !DISubprogram(name: "ngx_http_lua_ffi_ssl_get_session_id_size", scope: !2, file: !2, line: 579, type: !3094, scopeLine: 581, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !3272)
!3272 = !{!3273, !3274, !3275, !3276, !3277}
!3273 = !DILocalVariable(name: "r", arg: 1, scope: !3271, file: !2, line: 579, type: !104)
!3274 = !DILocalVariable(name: "err", arg: 2, scope: !3271, file: !2, line: 580, type: !3009)
!3275 = !DILocalVariable(name: "ssl_conn", scope: !3271, file: !2, line: 582, type: !484)
!3276 = !DILocalVariable(name: "c", scope: !3271, file: !2, line: 583, type: !116)
!3277 = !DILocalVariable(name: "cctx", scope: !3271, file: !2, line: 584, type: !2517)
!3278 = !DILocation(line: 579, column: 62, scope: !3271)
!3279 = !DILocation(line: 580, column: 12, scope: !3271)
!3280 = !DILocation(line: 582, column: 5, scope: !3271)
!3281 = !DILocation(line: 582, column: 38, scope: !3271)
!3282 = !DILocation(line: 583, column: 5, scope: !3271)
!3283 = !DILocation(line: 583, column: 38, scope: !3271)
!3284 = !DILocation(line: 584, column: 5, scope: !3271)
!3285 = !DILocation(line: 584, column: 38, scope: !3271)
!3286 = !DILocation(line: 586, column: 9, scope: !3271)
!3287 = !DILocation(line: 586, column: 12, scope: !3271)
!3288 = !DILocation(line: 586, column: 7, scope: !3271)
!3289 = !DILocation(line: 588, column: 9, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3271, file: !2, line: 588, column: 9)
!3291 = !DILocation(line: 588, column: 11, scope: !3290)
!3292 = !DILocation(line: 588, column: 19, scope: !3290)
!3293 = !DILocation(line: 588, column: 22, scope: !3290)
!3294 = !DILocation(line: 588, column: 25, scope: !3290)
!3295 = !DILocation(line: 588, column: 29, scope: !3290)
!3296 = !DILocation(line: 588, column: 9, scope: !3271)
!3297 = !DILocation(line: 589, column: 10, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3290, file: !2, line: 588, column: 38)
!3299 = !DILocation(line: 589, column: 14, scope: !3298)
!3300 = !DILocation(line: 590, column: 9, scope: !3298)
!3301 = !DILocation(line: 593, column: 16, scope: !3271)
!3302 = !DILocation(line: 593, column: 19, scope: !3271)
!3303 = !DILocation(line: 593, column: 24, scope: !3271)
!3304 = !DILocation(line: 593, column: 14, scope: !3271)
!3305 = !DILocation(line: 594, column: 9, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3271, file: !2, line: 594, column: 9)
!3307 = !DILocation(line: 594, column: 18, scope: !3306)
!3308 = !DILocation(line: 594, column: 9, scope: !3271)
!3309 = !DILocation(line: 595, column: 10, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3306, file: !2, line: 594, column: 27)
!3311 = !DILocation(line: 595, column: 14, scope: !3310)
!3312 = !DILocation(line: 596, column: 9, scope: !3310)
!3313 = !DILocation(line: 600, column: 12, scope: !3271)
!3314 = !DILocation(line: 600, column: 10, scope: !3271)
!3315 = !DILocation(line: 601, column: 9, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3271, file: !2, line: 601, column: 9)
!3317 = !DILocation(line: 601, column: 14, scope: !3316)
!3318 = !DILocation(line: 601, column: 9, scope: !3271)
!3319 = !DILocation(line: 602, column: 10, scope: !3320)
!3320 = distinct !DILexicalBlock(scope: !3316, file: !2, line: 601, column: 23)
!3321 = !DILocation(line: 602, column: 14, scope: !3320)
!3322 = !DILocation(line: 603, column: 9, scope: !3320)
!3323 = !DILocation(line: 606, column: 9, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3271, file: !2, line: 606, column: 9)
!3325 = !DILocation(line: 606, column: 15, scope: !3324)
!3326 = !DILocation(line: 606, column: 26, scope: !3324)
!3327 = !DILocation(line: 606, column: 30, scope: !3324)
!3328 = !DILocation(line: 606, column: 9, scope: !3271)
!3329 = !DILocation(line: 607, column: 10, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3324, file: !2, line: 606, column: 36)
!3331 = !DILocation(line: 607, column: 14, scope: !3330)
!3332 = !DILocation(line: 608, column: 9, scope: !3330)
!3333 = !DILocation(line: 615, column: 16, scope: !3271)
!3334 = !DILocation(line: 615, column: 22, scope: !3271)
!3335 = !DILocation(line: 615, column: 33, scope: !3271)
!3336 = !DILocation(line: 615, column: 14, scope: !3271)
!3337 = !DILocation(line: 615, column: 12, scope: !3271)
!3338 = !DILocation(line: 615, column: 5, scope: !3271)
!3339 = !DILocation(line: 616, column: 1, scope: !3271)
!3340 = !DISubprogram(name: "ngx_snprintf", scope: !181, file: !181, line: 154, type: !3341, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3341 = !DISubroutineType(types: !3342)
!3342 = !{!188, !188, !185, !999, null}
!3343 = distinct !DISubprogram(name: "ngx_http_lua_create_ctx", scope: !85, file: !85, line: 275, type: !3344, scopeLine: 276, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !3346)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!2071, !104}
!3346 = !{!3347, !3348, !3349, !3350, !3351, !3402}
!3347 = !DILocalVariable(name: "r", arg: 1, scope: !3343, file: !85, line: 275, type: !104)
!3348 = !DILocalVariable(name: "L", scope: !3343, file: !85, line: 277, type: !1989)
!3349 = !DILocalVariable(name: "ctx", scope: !3343, file: !85, line: 278, type: !2071)
!3350 = !DILocalVariable(name: "cln", scope: !3343, file: !85, line: 279, type: !455)
!3351 = !DILocalVariable(name: "llcf", scope: !3343, file: !85, line: 280, type: !3352)
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_lua_loc_conf_t", file: !93, line: 383, baseType: !3354)
!3354 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !93, line: 304, size: 4416, elements: !3355)
!3355 = !{!3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !3354, file: !93, line: 306, baseType: !1214, size: 64)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_protocols", scope: !3354, file: !93, line: 307, baseType: !158, size: 64, offset: 64)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_ciphers", scope: !3354, file: !93, line: 308, baseType: !180, size: 128, offset: 128)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_verify_depth", scope: !3354, file: !93, line: 309, baseType: !158, size: 64, offset: 256)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_trusted_certificate", scope: !3354, file: !93, line: 310, baseType: !180, size: 128, offset: 320)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_crl", scope: !3354, file: !93, line: 311, baseType: !180, size: 128, offset: 448)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "force_read_body", scope: !3354, file: !93, line: 314, baseType: !1139, size: 64, offset: 576)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "enable_code_cache", scope: !3354, file: !93, line: 317, baseType: !1139, size: 64, offset: 640)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "http10_buffering", scope: !3354, file: !93, line: 320, baseType: !1139, size: 64, offset: 704)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "rewrite_handler", scope: !3354, file: !93, line: 322, baseType: !1654, size: 64, offset: 768)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "access_handler", scope: !3354, file: !93, line: 323, baseType: !1654, size: 64, offset: 832)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "content_handler", scope: !3354, file: !93, line: 324, baseType: !1654, size: 64, offset: 896)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "log_handler", scope: !3354, file: !93, line: 325, baseType: !1654, size: 64, offset: 960)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "header_filter_handler", scope: !3354, file: !93, line: 326, baseType: !1654, size: 64, offset: 1024)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "body_filter_handler", scope: !3354, file: !93, line: 328, baseType: !3371, size: 64, offset: 1088)
!3371 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_output_body_filter_pt", file: !1683, line: 513, baseType: !3372)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{!97, !104, !260}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "rewrite_chunkname", scope: !3354, file: !93, line: 330, baseType: !188, size: 64, offset: 1152)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "rewrite_src", scope: !3354, file: !93, line: 331, baseType: !1178, size: 320, offset: 1216)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "rewrite_src_key", scope: !3354, file: !93, line: 335, baseType: !188, size: 64, offset: 1536)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "access_chunkname", scope: !3354, file: !93, line: 337, baseType: !188, size: 64, offset: 1600)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "access_src", scope: !3354, file: !93, line: 338, baseType: !1178, size: 320, offset: 1664)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "access_src_key", scope: !3354, file: !93, line: 342, baseType: !188, size: 64, offset: 1984)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "content_chunkname", scope: !3354, file: !93, line: 344, baseType: !188, size: 64, offset: 2048)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "content_src", scope: !3354, file: !93, line: 345, baseType: !1178, size: 320, offset: 2112)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "content_src_key", scope: !3354, file: !93, line: 349, baseType: !188, size: 64, offset: 2432)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "log_chunkname", scope: !3354, file: !93, line: 352, baseType: !188, size: 64, offset: 2496)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "log_src", scope: !3354, file: !93, line: 353, baseType: !1178, size: 320, offset: 2560)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "log_src_key", scope: !3354, file: !93, line: 356, baseType: !188, size: 64, offset: 2880)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "header_filter_src", scope: !3354, file: !93, line: 358, baseType: !1178, size: 320, offset: 2944)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "header_filter_src_key", scope: !3354, file: !93, line: 362, baseType: !188, size: 64, offset: 3264)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "body_filter_src", scope: !3354, file: !93, line: 366, baseType: !1178, size: 320, offset: 3328)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "body_filter_src_key", scope: !3354, file: !93, line: 367, baseType: !188, size: 64, offset: 3648)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive_timeout", scope: !3354, file: !93, line: 369, baseType: !392, size: 64, offset: 3712)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "connect_timeout", scope: !3354, file: !93, line: 370, baseType: !392, size: 64, offset: 3776)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "send_timeout", scope: !3354, file: !93, line: 371, baseType: !392, size: 64, offset: 3840)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "read_timeout", scope: !3354, file: !93, line: 372, baseType: !392, size: 64, offset: 3904)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "send_lowat", scope: !3354, file: !93, line: 374, baseType: !185, size: 64, offset: 3968)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_size", scope: !3354, file: !93, line: 375, baseType: !185, size: 64, offset: 4032)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "pool_size", scope: !3354, file: !93, line: 377, baseType: !158, size: 64, offset: 4096)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "transform_underscores_in_resp_headers", scope: !3354, file: !93, line: 379, baseType: !1139, size: 64, offset: 4160)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "log_socket_errors", scope: !3354, file: !93, line: 380, baseType: !1139, size: 64, offset: 4224)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "check_client_abort", scope: !3354, file: !93, line: 381, baseType: !1139, size: 64, offset: 4288)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "use_default_type", scope: !3354, file: !93, line: 382, baseType: !1139, size: 64, offset: 4352)
!3402 = !DILocalVariable(name: "lmcf", scope: !3343, file: !85, line: 281, type: !2915)
!3403 = !DILocation(line: 275, column: 45, scope: !3343)
!3404 = !DILocation(line: 277, column: 5, scope: !3343)
!3405 = !DILocation(line: 277, column: 34, scope: !3343)
!3406 = !DILocation(line: 278, column: 5, scope: !3343)
!3407 = !DILocation(line: 278, column: 34, scope: !3343)
!3408 = !DILocation(line: 279, column: 5, scope: !3343)
!3409 = !DILocation(line: 279, column: 34, scope: !3343)
!3410 = !DILocation(line: 280, column: 5, scope: !3343)
!3411 = !DILocation(line: 280, column: 34, scope: !3343)
!3412 = !DILocation(line: 281, column: 5, scope: !3343)
!3413 = !DILocation(line: 281, column: 34, scope: !3343)
!3414 = !DILocation(line: 283, column: 22, scope: !3343)
!3415 = !DILocation(line: 283, column: 25, scope: !3343)
!3416 = !DILocation(line: 283, column: 11, scope: !3343)
!3417 = !DILocation(line: 283, column: 9, scope: !3343)
!3418 = !DILocation(line: 284, column: 9, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3343, file: !85, line: 284, column: 9)
!3420 = !DILocation(line: 284, column: 13, scope: !3419)
!3421 = !DILocation(line: 284, column: 9, scope: !3343)
!3422 = !DILocation(line: 285, column: 9, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3419, file: !85, line: 284, column: 22)
!3424 = !DILocation(line: 288, column: 27, scope: !3343)
!3425 = !DILocation(line: 288, column: 30, scope: !3343)
!3426 = !DILocation(line: 288, column: 5, scope: !3343)
!3427 = !DILocation(line: 289, column: 5, scope: !3343)
!3428 = !DILocation(line: 291, column: 12, scope: !3343)
!3429 = !DILocation(line: 291, column: 10, scope: !3343)
!3430 = !DILocation(line: 292, column: 10, scope: !3431)
!3431 = distinct !DILexicalBlock(scope: !3343, file: !85, line: 292, column: 9)
!3432 = !DILocation(line: 292, column: 16, scope: !3431)
!3433 = !{!3434, !2024, i64 80}
!3434 = !{!"", !2008, i64 0, !2024, i64 8, !2026, i64 16, !2024, i64 32, !2026, i64 40, !2026, i64 56, !2024, i64 72, !2024, i64 80, !2024, i64 88, !2008, i64 96, !2008, i64 104, !2008, i64 112, !2008, i64 120, !2008, i64 128, !2008, i64 136, !2008, i64 144, !3435, i64 152, !2008, i64 192, !2008, i64 200, !3435, i64 208, !2008, i64 248, !2008, i64 256, !3435, i64 264, !2008, i64 304, !2008, i64 312, !3435, i64 320, !2008, i64 360, !3435, i64 368, !2008, i64 408, !3435, i64 416, !2008, i64 456, !2024, i64 464, !2024, i64 472, !2024, i64 480, !2024, i64 488, !2024, i64 496, !2024, i64 504, !2024, i64 512, !2024, i64 520, !2024, i64 528, !2024, i64 536, !2024, i64 544}
!3435 = !{!"", !2026, i64 0, !2008, i64 16, !2008, i64 24, !2008, i64 32}
!3436 = !DILocation(line: 292, column: 34, scope: !3431)
!3437 = !DILocation(line: 292, column: 37, scope: !3431)
!3438 = !DILocation(line: 292, column: 40, scope: !3431)
!3439 = !DILocation(line: 292, column: 52, scope: !3431)
!3440 = !{!2030, !2020, i64 24}
!3441 = !DILocation(line: 292, column: 55, scope: !3431)
!3442 = !DILocation(line: 292, column: 9, scope: !3343)
!3443 = !DILocation(line: 293, column: 16, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3431, file: !85, line: 292, column: 77)
!3445 = !DILocation(line: 293, column: 14, scope: !3444)
!3446 = !DILocation(line: 299, column: 34, scope: !3444)
!3447 = !DILocation(line: 299, column: 40, scope: !3444)
!3448 = !DILocation(line: 299, column: 45, scope: !3444)
!3449 = !DILocation(line: 299, column: 51, scope: !3444)
!3450 = !{!3001, !2008, i64 48}
!3451 = !DILocation(line: 299, column: 58, scope: !3444)
!3452 = !DILocation(line: 299, column: 61, scope: !3444)
!3453 = !DILocation(line: 299, column: 67, scope: !3444)
!3454 = !DILocation(line: 300, column: 34, scope: !3444)
!3455 = !DILocation(line: 300, column: 37, scope: !3444)
!3456 = !DILocation(line: 300, column: 49, scope: !3444)
!3457 = !DILocation(line: 299, column: 13, scope: !3444)
!3458 = !DILocation(line: 299, column: 11, scope: !3444)
!3459 = !DILocation(line: 301, column: 13, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3444, file: !85, line: 301, column: 13)
!3461 = !DILocation(line: 301, column: 15, scope: !3460)
!3462 = !DILocation(line: 301, column: 13, scope: !3444)
!3463 = !DILocation(line: 302, column: 13, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3465, file: !85, line: 302, column: 13)
!3465 = distinct !DILexicalBlock(scope: !3460, file: !85, line: 301, column: 24)
!3466 = !DILocation(line: 302, column: 13, scope: !3465)
!3467 = !DILocation(line: 304, column: 13, scope: !3465)
!3468 = !DILocation(line: 307, column: 13, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !3444, file: !85, line: 307, column: 13)
!3470 = !DILocation(line: 307, column: 19, scope: !3469)
!3471 = !{!3001, !2008, i64 152}
!3472 = !DILocation(line: 307, column: 13, scope: !3444)
!3473 = !DILocation(line: 308, column: 17, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3475, file: !85, line: 308, column: 17)
!3475 = distinct !DILexicalBlock(scope: !3469, file: !85, line: 307, column: 33)
!3476 = !DILocation(line: 308, column: 23, scope: !3474)
!3477 = !DILocation(line: 308, column: 36, scope: !3474)
!3478 = !DILocation(line: 308, column: 39, scope: !3474)
!3479 = !DILocation(line: 308, column: 51, scope: !3474)
!3480 = !DILocation(line: 308, column: 56, scope: !3474)
!3481 = !DILocation(line: 308, column: 62, scope: !3474)
!3482 = !DILocation(line: 308, column: 65, scope: !3474)
!3483 = !DILocation(line: 308, column: 17, scope: !3475)
!3484 = !DILocation(line: 310, column: 17, scope: !3485)
!3485 = distinct !DILexicalBlock(scope: !3474, file: !85, line: 308, column: 76)
!3486 = !DILocation(line: 312, column: 9, scope: !3475)
!3487 = !DILocation(line: 314, column: 25, scope: !3444)
!3488 = !DILocation(line: 314, column: 30, scope: !3444)
!3489 = !{!3490, !2008, i64 8}
!3490 = !{!"ngx_pool_cleanup_s", !2008, i64 0, !2008, i64 8, !2008, i64 16}
!3491 = !DILocation(line: 314, column: 9, scope: !3444)
!3492 = !DILocation(line: 314, column: 14, scope: !3444)
!3493 = !DILocation(line: 314, column: 23, scope: !3444)
!3494 = !DILocation(line: 316, column: 5, scope: !3444)
!3495 = !DILocation(line: 317, column: 9, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3431, file: !85, line: 316, column: 12)
!3497 = !DILocation(line: 317, column: 14, scope: !3496)
!3498 = !DILocation(line: 317, column: 23, scope: !3496)
!3499 = !DILocation(line: 320, column: 12, scope: !3343)
!3500 = !DILocation(line: 320, column: 5, scope: !3343)
!3501 = !DILocation(line: 321, column: 1, scope: !3343)
!3502 = !DISubprogram(name: "ngx_http_lua_finalize_request", scope: !85, file: !85, line: 224, type: !1467, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3503 = !DISubprogram(name: "ngx_http_lua_reset_ctx", scope: !85, file: !85, line: 160, type: !3504, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{null, !104, !1989, !2071}
!3506 = distinct !DISubprogram(name: "ngx_http_lua_set_req", scope: !85, file: !85, line: 368, type: !3507, scopeLine: 369, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !3509)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{null, !1989, !104}
!3509 = !{!3510, !3511}
!3510 = !DILocalVariable(name: "L", arg: 1, scope: !3506, file: !85, line: 368, type: !1989)
!3511 = !DILocalVariable(name: "r", arg: 2, scope: !3506, file: !85, line: 368, type: !104)
!3512 = !DILocation(line: 368, column: 33, scope: !3506)
!3513 = !DILocation(line: 368, column: 56, scope: !3506)
!3514 = !DILocation(line: 371, column: 19, scope: !3506)
!3515 = !DILocation(line: 371, column: 31, scope: !3506)
!3516 = !DILocation(line: 371, column: 5, scope: !3506)
!3517 = !DILocation(line: 376, column: 1, scope: !3506)
!3518 = !DISubprogram(name: "lua_pushcclosure", scope: !1991, file: !1991, line: 169, type: !3519, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3519 = !DISubroutineType(types: !3520)
!3520 = !{null, !1989, !3521, !178}
!3521 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_CFunction", file: !1991, line: 53, baseType: !3522)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DISubroutineType(types: !3524)
!3524 = !{!178, !1989}
!3525 = !DISubprogram(name: "lua_insert", scope: !1991, file: !1991, line: 125, type: !3526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3526 = !DISubroutineType(types: !3527)
!3527 = !{null, !1989, !178}
!3528 = !DISubprogram(name: "lua_pcall", scope: !1991, file: !1991, line: 203, type: !3529, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{!178, !1989, !178, !178, !178}
!3531 = !DISubprogram(name: "lua_remove", scope: !1991, file: !1991, line: 124, type: !3526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3532 = !DISubprogram(name: "lua_tolstring", scope: !1991, file: !1991, line: 150, type: !3533, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3533 = !DISubroutineType(types: !3534)
!3534 = !{!999, !1989, !178, !3535}
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!3536 = !DISubprogram(name: "ngx_log_error_core", scope: !166, file: !166, line: 90, type: !3537, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3537 = !DISubroutineType(types: !3538)
!3538 = !{null, !158, !163, !2906, !999, null}
!3539 = !DISubprogram(name: "lua_settop", scope: !1991, file: !1991, line: 122, type: !3526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3540 = distinct !DISubprogram(name: "ngx_http_lua_init_ctx", scope: !85, file: !85, line: 264, type: !3541, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !3543)
!3541 = !DISubroutineType(types: !3542)
!3542 = !{null, !104, !2071}
!3543 = !{!3544, !3545}
!3544 = !DILocalVariable(name: "r", arg: 1, scope: !3540, file: !85, line: 264, type: !104)
!3545 = !DILocalVariable(name: "ctx", arg: 2, scope: !3540, file: !85, line: 264, type: !2071)
!3546 = !DILocation(line: 264, column: 43, scope: !3540)
!3547 = !DILocation(line: 264, column: 66, scope: !3540)
!3548 = !DILocation(line: 266, column: 5, scope: !3540)
!3549 = !DILocation(line: 267, column: 5, scope: !3540)
!3550 = !DILocation(line: 267, column: 10, scope: !3540)
!3551 = !DILocation(line: 267, column: 18, scope: !3540)
!3552 = !{!2208, !2020, i64 248}
!3553 = !DILocation(line: 268, column: 5, scope: !3540)
!3554 = !DILocation(line: 268, column: 10, scope: !3540)
!3555 = !DILocation(line: 268, column: 23, scope: !3540)
!3556 = !DILocation(line: 268, column: 30, scope: !3540)
!3557 = !{!2208, !2020, i64 232}
!3558 = !DILocation(line: 269, column: 5, scope: !3540)
!3559 = !DILocation(line: 269, column: 10, scope: !3540)
!3560 = !DILocation(line: 269, column: 25, scope: !3540)
!3561 = !{!2208, !2008, i64 16}
!3562 = !DILocation(line: 270, column: 20, scope: !3540)
!3563 = !DILocation(line: 270, column: 5, scope: !3540)
!3564 = !DILocation(line: 270, column: 10, scope: !3540)
!3565 = !DILocation(line: 270, column: 18, scope: !3540)
!3566 = !{!2208, !2008, i64 8}
!3567 = !DILocation(line: 271, column: 1, scope: !3540)
!3568 = !DISubprogram(name: "ngx_http_lua_init_vm", scope: !85, file: !85, line: 139, type: !3569, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3569 = !DISubroutineType(types: !3570)
!3570 = !{!1989, !1989, !970, !431, !2915, !163, !3571}
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!3572 = !DISubprogram(name: "lua_setexdata", scope: !1991, file: !1991, line: 248, type: !3573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3573 = !DISubroutineType(types: !3574)
!3574 = !{null, !1989, !91}
