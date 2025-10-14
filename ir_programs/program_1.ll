; ModuleID = 'program_1.bc'
source_filename = "../ngx_lua-0.10.15/src/ngx_http_lua_bodyfilterby.c"
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
%struct.ngx_log_s = type { i64, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ngx_http_lua_main_conf_s = type { ptr, ptr, %struct.ngx_str_t, %struct.ngx_str_t, ptr, ptr, i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr, i64, i64, ptr, %struct.ngx_str_t, ptr, %struct.ngx_str_t, ptr, ptr, ptr, i64, i64, ptr, i64, i64, ptr, i64, i64, i64, i8 }
%struct.ngx_http_lua_loc_conf_t = type { ptr, i64, %struct.ngx_str_t, i64, %struct.ngx_str_t, %struct.ngx_str_t, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ngx_http_complex_value_t, ptr, ptr, %struct.ngx_http_complex_value_t, ptr, ptr, %struct.ngx_http_complex_value_t, ptr, ptr, %struct.ngx_http_complex_value_t, ptr, %struct.ngx_http_complex_value_t, ptr, %struct.ngx_http_complex_value_t, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ngx_http_complex_value_t = type { %struct.ngx_str_t, ptr, ptr, ptr }
%struct.ngx_http_lua_ctx_s = type <{ ptr, ptr, ptr, ptr, ptr, %struct.ngx_http_lua_co_ctx_s, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ngx_str_t, %struct.ngx_str_t, i64, ptr, i64, ptr, i32, i16, i24, [6 x i8] }>
%struct.ngx_http_lua_co_ctx_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.ngx_event_s, %struct.ngx_queue_s, i32, i8 }
%struct.ngx_event_s = type { ptr, i24, ptr, i64, ptr, %struct.ngx_rbtree_node_s, %struct.ngx_queue_s }
%struct.ngx_rbtree_node_s = type { i64, ptr, ptr, ptr, i8, i8 }
%struct.ngx_http_lua_vm_state_t = type { ptr, i64 }
%struct.ngx_chain_s = type { ptr, ptr }
%struct.ngx_buf_s = type { ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, i16, i32 }
%struct.ngx_http_cleanup_s = type { ptr, ptr, ptr }
%struct.ngx_pool_cleanup_s = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [15 x i8] c"unknown reason\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [39 x i8] c"failed to run body_filter_by_lua*: %*s\00", align 1, !dbg !7
@ngx_http_lua_module = external global %struct.ngx_module_s, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"=body_filter_by_lua\00", align 1, !dbg !12
@ngx_http_top_body_filter = external global ptr, align 8
@ngx_http_next_body_filter = internal global ptr null, align 8, !dbg !17
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !41
@.str.4 = private unnamed_addr constant [14 x i8] c"bad index: %d\00", align 1, !dbg !46
@.str.5 = private unnamed_addr constant [24 x i8] c"bad chunk data type: %s\00", align 1, !dbg !51
@.str.6 = private unnamed_addr constant [10 x i8] c"no memory\00", align 1, !dbg !56
@.str.7 = private unnamed_addr constant [28 x i8] c"failed to initialize Lua VM\00", align 1, !dbg !61

; Function Attrs: nounwind uwtable
define dso_local i64 @ngx_http_lua_body_filter_by_chunk(ptr noundef %L, ptr noundef %r, ptr noundef %in) #0 !dbg !1930 {
entry:
  %retval = alloca i64, align 8
  %L.addr = alloca ptr, align 8
  %r.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %rc = alloca i64, align 8
  %err_msg = alloca ptr, align 8
  %len = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %L, ptr %L.addr, align 8, !tbaa !1944
    #dbg_declare(ptr %L.addr, !1938, !DIExpression(), !1948)
  store ptr %r, ptr %r.addr, align 8, !tbaa !1944
    #dbg_declare(ptr %r.addr, !1939, !DIExpression(), !1949)
  store ptr %in, ptr %in.addr, align 8, !tbaa !1944
    #dbg_declare(ptr %in.addr, !1940, !DIExpression(), !1950)
  call void @llvm.lifetime.start.p0(i64 8, ptr %rc) #6, !dbg !1951
    #dbg_declare(ptr %rc, !1941, !DIExpression(), !1952)
  call void @llvm.lifetime.start.p0(i64 8, ptr %err_msg) #6, !dbg !1953
    #dbg_declare(ptr %err_msg, !1942, !DIExpression(), !1954)
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #6, !dbg !1955
    #dbg_declare(ptr %len, !1943, !DIExpression(), !1956)
  %0 = load ptr, ptr %L.addr, align 8, !dbg !1957, !tbaa !1944
  %1 = load ptr, ptr %r.addr, align 8, !dbg !1958, !tbaa !1944
  %2 = load ptr, ptr %in.addr, align 8, !dbg !1959, !tbaa !1944
  call void @ngx_http_lua_body_filter_by_lua_env(ptr noundef %0, ptr noundef %1, ptr noundef %2), !dbg !1960
  %3 = load ptr, ptr %L.addr, align 8, !dbg !1961, !tbaa !1944
  call void @lua_pushcclosure(ptr noundef %3, ptr noundef @ngx_http_lua_traceback, i32 noundef 0), !dbg !1961
  %4 = load ptr, ptr %L.addr, align 8, !dbg !1962, !tbaa !1944
  call void @lua_insert(ptr noundef %4, i32 noundef 1), !dbg !1963
  %5 = load ptr, ptr %L.addr, align 8, !dbg !1964, !tbaa !1944
  %call = call i32 @lua_pcall(ptr noundef %5, i32 noundef 0, i32 noundef 1, i32 noundef 1), !dbg !1965
  %conv = sext i32 %call to i64, !dbg !1965
  store i64 %conv, ptr %rc, align 8, !dbg !1966, !tbaa !1967
  %6 = load ptr, ptr %L.addr, align 8, !dbg !1969, !tbaa !1944
  call void @lua_remove(ptr noundef %6, i32 noundef 1), !dbg !1970
  %7 = load i64, ptr %rc, align 8, !dbg !1971, !tbaa !1967
  %cmp = icmp ne i64 %7, 0, !dbg !1973
  br i1 %cmp, label %if.then, label %if.end12, !dbg !1974

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %L.addr, align 8, !dbg !1975, !tbaa !1944
  %call2 = call ptr @lua_tolstring(ptr noundef %8, i32 noundef -1, ptr noundef %len), !dbg !1977
  store ptr %call2, ptr %err_msg, align 8, !dbg !1978, !tbaa !1944
  %9 = load ptr, ptr %err_msg, align 8, !dbg !1979, !tbaa !1944
  %cmp3 = icmp eq ptr %9, null, !dbg !1981
  br i1 %cmp3, label %if.then5, label %if.end, !dbg !1982

if.then5:                                         ; preds = %if.then
  store ptr @.str, ptr %err_msg, align 8, !dbg !1983, !tbaa !1944
  store i64 14, ptr %len, align 8, !dbg !1985, !tbaa !1967
  br label %if.end, !dbg !1986

if.end:                                           ; preds = %if.then5, %if.then
  %10 = load ptr, ptr %r.addr, align 8, !dbg !1987, !tbaa !1944
  %connection = getelementptr inbounds %struct.ngx_http_request_s, ptr %10, i32 0, i32 1, !dbg !1987
  %11 = load ptr, ptr %connection, align 8, !dbg !1987, !tbaa !1989
  %log = getelementptr inbounds %struct.ngx_connection_s, ptr %11, i32 0, i32 10, !dbg !1987
  %12 = load ptr, ptr %log, align 8, !dbg !1987, !tbaa !1998
  %log_level = getelementptr inbounds %struct.ngx_log_s, ptr %12, i32 0, i32 0, !dbg !1987
  %13 = load i64, ptr %log_level, align 8, !dbg !1987, !tbaa !2002
  %cmp6 = icmp uge i64 %13, 4, !dbg !1987
  br i1 %cmp6, label %if.then8, label %if.end11, !dbg !2004

if.then8:                                         ; preds = %if.end
  %14 = load ptr, ptr %r.addr, align 8, !dbg !1987, !tbaa !1944
  %connection9 = getelementptr inbounds %struct.ngx_http_request_s, ptr %14, i32 0, i32 1, !dbg !1987
  %15 = load ptr, ptr %connection9, align 8, !dbg !1987, !tbaa !1989
  %log10 = getelementptr inbounds %struct.ngx_connection_s, ptr %15, i32 0, i32 10, !dbg !1987
  %16 = load ptr, ptr %log10, align 8, !dbg !1987, !tbaa !1998
  %17 = load i64, ptr %len, align 8, !dbg !1987, !tbaa !1967
  %18 = load ptr, ptr %err_msg, align 8, !dbg !1987, !tbaa !1944
  call void (i64, ptr, i32, ptr, ...) @ngx_log_error_core(i64 noundef 4, ptr noundef %16, i32 noundef 0, ptr noundef @.str.1, i64 noundef %17, ptr noundef %18), !dbg !1987
  br label %if.end11, !dbg !1987

if.end11:                                         ; preds = %if.then8, %if.end
  %19 = load ptr, ptr %L.addr, align 8, !dbg !2005, !tbaa !1944
  call void @lua_settop(ptr noundef %19, i32 noundef 0), !dbg !2006
  store i64 -1, ptr %retval, align 8, !dbg !2007
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2007

if.end12:                                         ; preds = %entry
  %20 = load ptr, ptr %L.addr, align 8, !dbg !2008, !tbaa !1944
  %call13 = call i64 @lua_tointeger(ptr noundef %20, i32 noundef -1), !dbg !2009
  store i64 %call13, ptr %rc, align 8, !dbg !2010, !tbaa !1967
  %21 = load ptr, ptr %L.addr, align 8, !dbg !2011, !tbaa !1944
  call void @lua_settop(ptr noundef %21, i32 noundef 0), !dbg !2012
  %22 = load i64, ptr %rc, align 8, !dbg !2013, !tbaa !1967
  %cmp14 = icmp eq i64 %22, -1, !dbg !2015
  br i1 %cmp14, label %if.then18, label %lor.lhs.false, !dbg !2016

lor.lhs.false:                                    ; preds = %if.end12
  %23 = load i64, ptr %rc, align 8, !dbg !2017, !tbaa !1967
  %cmp16 = icmp sge i64 %23, 300, !dbg !2018
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !2019

if.then18:                                        ; preds = %lor.lhs.false, %if.end12
  store i64 -1, ptr %retval, align 8, !dbg !2020
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2020

if.end19:                                         ; preds = %lor.lhs.false
  store i64 0, ptr %retval, align 8, !dbg !2022
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2022

cleanup:                                          ; preds = %if.end19, %if.then18, %if.end11
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #6, !dbg !2023
  call void @llvm.lifetime.end.p0(i64 8, ptr %err_msg) #6, !dbg !2023
  call void @llvm.lifetime.end.p0(i64 8, ptr %rc) #6, !dbg !2023
  %24 = load i64, ptr %retval, align 8, !dbg !2023
  ret i64 %24, !dbg !2023
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal void @ngx_http_lua_body_filter_by_lua_env(ptr noundef %L, ptr noundef %r, ptr noundef %in) #0 !dbg !2024 {
entry:
  %L.addr = alloca ptr, align 8
  %r.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %lmcf = alloca ptr, align 8
  store ptr %L, ptr %L.addr, align 8, !tbaa !1944
    #dbg_declare(ptr %L.addr, !2028, !DIExpression(), !2089)
  store ptr %r, ptr %r.addr, align 8, !tbaa !1944
    #dbg_declare(ptr %r.addr, !2029, !DIExpression(), !2090)
  store ptr %in, ptr %in.addr, align 8, !tbaa !1944
    #dbg_declare(ptr %in.addr, !2030, !DIExpression(), !2091)
  call void @llvm.lifetime.start.p0(i64 8, ptr %lmcf) #6, !dbg !2092
    #dbg_declare(ptr %lmcf, !2031, !DIExpression(), !2093)
  %0 = load ptr, ptr %L.addr, align 8, !dbg !2094, !tbaa !1944
  %1 = load ptr, ptr %r.addr, align 8, !dbg !2095, !tbaa !1944
  call void @ngx_http_lua_set_req(ptr noundef %0, ptr noundef %1), !dbg !2096
  %2 = load ptr, ptr %r.addr, align 8, !dbg !2097, !tbaa !1944
  %main_conf = getelementptr inbounds %struct.ngx_http_request_s, ptr %2, i32 0, i32 3, !dbg !2097
  %3 = load ptr, ptr %main_conf, align 8, !dbg !2097, !tbaa !2098
  %4 = load i64, ptr @ngx_http_lua_module, align 8, !dbg !2097, !tbaa !2099
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %4, !dbg !2097
  %5 = load ptr, ptr %arrayidx, align 8, !dbg !2097, !tbaa !1944
  store ptr %5, ptr %lmcf, align 8, !dbg !2101, !tbaa !1944
  %6 = load ptr, ptr %in.addr, align 8, !dbg !2102, !tbaa !1944
  %7 = load ptr, ptr %lmcf, align 8, !dbg !2103, !tbaa !1944
  %body_filter_chain = getelementptr inbounds %struct.ngx_http_lua_main_conf_s, ptr %7, i32 0, i32 22, !dbg !2104
  store ptr %6, ptr %body_filter_chain, align 8, !dbg !2105, !tbaa !2106
  call void @llvm.lifetime.end.p0(i64 8, ptr %lmcf) #6, !dbg !2108
  ret void, !dbg !2108
}

declare !dbg !2109 void @lua_pushcclosure(ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @ngx_http_lua_traceback(ptr noundef) #2

declare !dbg !2116 void @lua_insert(ptr noundef, i32 noundef) #2

declare !dbg !2119 i32 @lua_pcall(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare !dbg !2122 void @lua_remove(ptr noundef, i32 noundef) #2

declare !dbg !2123 ptr @lua_tolstring(ptr noundef, i32 noundef, ptr noundef) #2

declare !dbg !2127 void @ngx_log_error_core(i64 noundef, ptr noundef, i32 noundef, ptr noundef, ...) #2

declare !dbg !2132 void @lua_settop(ptr noundef, i32 noundef) #2

declare !dbg !2133 i64 @lua_tointeger(ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local i64 @ngx_http_lua_body_filter_inline(ptr noundef %r, ptr noundef %in) #0 !dbg !2139 {
entry:
  %retval = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %L = alloca ptr, align 8
  %rc = alloca i64, align 8
  %llcf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !1944
    #dbg_declare(ptr %r.addr, !2141, !DIExpression(), !2192)
  store ptr %in, ptr %in.addr, align 8, !tbaa !1944
    #dbg_declare(ptr %in.addr, !2142, !DIExpression(), !2193)
  call void @llvm.lifetime.start.p0(i64 8, ptr %L) #6, !dbg !2194
    #dbg_declare(ptr %L, !2143, !DIExpression(), !2195)
  call void @llvm.lifetime.start.p0(i64 8, ptr %rc) #6, !dbg !2196
    #dbg_declare(ptr %rc, !2144, !DIExpression(), !2197)
  call void @llvm.lifetime.start.p0(i64 8, ptr %llcf) #6, !dbg !2198
    #dbg_declare(ptr %llcf, !2145, !DIExpression(), !2199)
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2200, !tbaa !1944
  %loc_conf = getelementptr inbounds %struct.ngx_http_request_s, ptr %0, i32 0, i32 5, !dbg !2200
  %1 = load ptr, ptr %loc_conf, align 8, !dbg !2200, !tbaa !2201
  %2 = load i64, ptr @ngx_http_lua_module, align 8, !dbg !2200, !tbaa !2099
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %2, !dbg !2200
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !2200, !tbaa !1944
  store ptr %3, ptr %llcf, align 8, !dbg !2202, !tbaa !1944
  %4 = load ptr, ptr %r.addr, align 8, !dbg !2203, !tbaa !1944
  %call = call ptr @ngx_http_lua_get_lua_vm(ptr noundef %4, ptr noundef null), !dbg !2204
  store ptr %call, ptr %L, align 8, !dbg !2205, !tbaa !1944
  %5 = load ptr, ptr %r.addr, align 8, !dbg !2206, !tbaa !1944
  %connection = getelementptr inbounds %struct.ngx_http_request_s, ptr %5, i32 0, i32 1, !dbg !2207
  %6 = load ptr, ptr %connection, align 8, !dbg !2207, !tbaa !1989
  %log = getelementptr inbounds %struct.ngx_connection_s, ptr %6, i32 0, i32 10, !dbg !2208
  %7 = load ptr, ptr %log, align 8, !dbg !2208, !tbaa !1998
  %8 = load ptr, ptr %L, align 8, !dbg !2209, !tbaa !1944
  %9 = load ptr, ptr %llcf, align 8, !dbg !2210, !tbaa !1944
  %body_filter_src = getelementptr inbounds %struct.ngx_http_lua_loc_conf_t, ptr %9, i32 0, i32 29, !dbg !2211
  %value = getelementptr inbounds %struct.ngx_http_complex_value_t, ptr %body_filter_src, i32 0, i32 0, !dbg !2212
  %data = getelementptr inbounds %struct.ngx_str_t, ptr %value, i32 0, i32 1, !dbg !2213
  %10 = load ptr, ptr %data, align 8, !dbg !2213, !tbaa !2214
  %11 = load ptr, ptr %llcf, align 8, !dbg !2217, !tbaa !1944
  %body_filter_src1 = getelementptr inbounds %struct.ngx_http_lua_loc_conf_t, ptr %11, i32 0, i32 29, !dbg !2218
  %value2 = getelementptr inbounds %struct.ngx_http_complex_value_t, ptr %body_filter_src1, i32 0, i32 0, !dbg !2219
  %len = getelementptr inbounds %struct.ngx_str_t, ptr %value2, i32 0, i32 0, !dbg !2220
  %12 = load i64, ptr %len, align 8, !dbg !2220, !tbaa !2221
  %13 = load ptr, ptr %llcf, align 8, !dbg !2222, !tbaa !1944
  %body_filter_src_key = getelementptr inbounds %struct.ngx_http_lua_loc_conf_t, ptr %13, i32 0, i32 30, !dbg !2223
  %14 = load ptr, ptr %body_filter_src_key, align 8, !dbg !2223, !tbaa !2224
  %call3 = call i64 @ngx_http_lua_cache_loadbuffer(ptr noundef %7, ptr noundef %8, ptr noundef %10, i64 noundef %12, ptr noundef %14, ptr noundef @.str.2), !dbg !2225
  store i64 %call3, ptr %rc, align 8, !dbg !2226, !tbaa !1967
  %15 = load i64, ptr %rc, align 8, !dbg !2227, !tbaa !1967
  %cmp = icmp ne i64 %15, 0, !dbg !2229
  br i1 %cmp, label %if.then, label %if.end, !dbg !2230

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !2231
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2231

if.end:                                           ; preds = %entry
  %16 = load ptr, ptr %L, align 8, !dbg !2233, !tbaa !1944
  %17 = load ptr, ptr %r.addr, align 8, !dbg !2234, !tbaa !1944
  %18 = load ptr, ptr %in.addr, align 8, !dbg !2235, !tbaa !1944
  %call4 = call i64 @ngx_http_lua_body_filter_by_chunk(ptr noundef %16, ptr noundef %17, ptr noundef %18), !dbg !2236
  store i64 %call4, ptr %rc, align 8, !dbg !2237, !tbaa !1967
  %19 = load i64, ptr %rc, align 8, !dbg !2238, !tbaa !1967
  %cmp5 = icmp ne i64 %19, 0, !dbg !2240
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !2241

if.then6:                                         ; preds = %if.end
  store i64 -1, ptr %retval, align 8, !dbg !2242
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2242

if.end7:                                          ; preds = %if.end
  store i64 0, ptr %retval, align 8, !dbg !2244
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2244

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %llcf) #6, !dbg !2245
  call void @llvm.lifetime.end.p0(i64 8, ptr %rc) #6, !dbg !2245
  call void @llvm.lifetime.end.p0(i64 8, ptr %L) #6, !dbg !2245
  %20 = load i64, ptr %retval, align 8, !dbg !2245
  ret i64 %20, !dbg !2245
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @ngx_http_lua_get_lua_vm(ptr noundef %r, ptr noundef %ctx) #3 !dbg !2246 {
entry:
  %retval = alloca ptr, align 8
  %r.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %lmcf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !1944
    #dbg_declare(ptr %r.addr, !2340, !DIExpression(), !2343)
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !1944
    #dbg_declare(ptr %ctx.addr, !2341, !DIExpression(), !2344)
  call void @llvm.lifetime.start.p0(i64 8, ptr %lmcf) #6, !dbg !2345
    #dbg_declare(ptr %lmcf, !2342, !DIExpression(), !2346)
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !2347, !tbaa !1944
  %cmp = icmp eq ptr %0, null, !dbg !2349
  br i1 %cmp, label %if.then, label %if.end, !dbg !2350

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %r.addr, align 8, !dbg !2351, !tbaa !1944
  %ctx1 = getelementptr inbounds %struct.ngx_http_request_s, ptr %1, i32 0, i32 2, !dbg !2351
  %2 = load ptr, ptr %ctx1, align 8, !dbg !2351, !tbaa !2353
  %3 = load i64, ptr @ngx_http_lua_module, align 8, !dbg !2351, !tbaa !2099
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %3, !dbg !2351
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !2351, !tbaa !1944
  store ptr %4, ptr %ctx.addr, align 8, !dbg !2354, !tbaa !1944
  br label %if.end, !dbg !2355

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %ctx.addr, align 8, !dbg !2356, !tbaa !1944
  %tobool = icmp ne ptr %5, null, !dbg !2356
  br i1 %tobool, label %land.lhs.true, label %if.end5, !dbg !2358

land.lhs.true:                                    ; preds = %if.end
  %6 = load ptr, ptr %ctx.addr, align 8, !dbg !2359, !tbaa !1944
  %vm_state = getelementptr inbounds %struct.ngx_http_lua_ctx_s, ptr %6, i32 0, i32 0, !dbg !2360
  %7 = load ptr, ptr %vm_state, align 8, !dbg !2360, !tbaa !2361
  %tobool2 = icmp ne ptr %7, null, !dbg !2359
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !2366

if.then3:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %ctx.addr, align 8, !dbg !2367, !tbaa !1944
  %vm_state4 = getelementptr inbounds %struct.ngx_http_lua_ctx_s, ptr %8, i32 0, i32 0, !dbg !2369
  %9 = load ptr, ptr %vm_state4, align 8, !dbg !2369, !tbaa !2361
  %vm = getelementptr inbounds %struct.ngx_http_lua_vm_state_t, ptr %9, i32 0, i32 0, !dbg !2370
  %10 = load ptr, ptr %vm, align 8, !dbg !2370, !tbaa !2371
  store ptr %10, ptr %retval, align 8, !dbg !2373
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2373

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !2374, !tbaa !1944
  %main_conf = getelementptr inbounds %struct.ngx_http_request_s, ptr %11, i32 0, i32 3, !dbg !2374
  %12 = load ptr, ptr %main_conf, align 8, !dbg !2374, !tbaa !2098
  %13 = load i64, ptr @ngx_http_lua_module, align 8, !dbg !2374, !tbaa !2099
  %arrayidx6 = getelementptr inbounds ptr, ptr %12, i64 %13, !dbg !2374
  %14 = load ptr, ptr %arrayidx6, align 8, !dbg !2374, !tbaa !1944
  store ptr %14, ptr %lmcf, align 8, !dbg !2375, !tbaa !1944
  %15 = load ptr, ptr %lmcf, align 8, !dbg !2376, !tbaa !1944
  %lua = getelementptr inbounds %struct.ngx_http_lua_main_conf_s, ptr %15, i32 0, i32 0, !dbg !2377
  %16 = load ptr, ptr %lua, align 8, !dbg !2377, !tbaa !2378
  store ptr %16, ptr %retval, align 8, !dbg !2379
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2379

cleanup:                                          ; preds = %if.end5, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %lmcf) #6, !dbg !2380
  %17 = load ptr, ptr %retval, align 8, !dbg !2380
  ret ptr %17, !dbg !2380
}

declare !dbg !2381 i64 @ngx_http_lua_cache_loadbuffer(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local i64 @ngx_http_lua_body_filter_file(ptr noundef %r, ptr noundef %in) #0 !dbg !2387 {
entry:
  %retval = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %L = alloca ptr, align 8
  %rc = alloca i64, align 8
  %script_path = alloca ptr, align 8
  %llcf = alloca ptr, align 8
  %eval_src = alloca %struct.ngx_str_t, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !1944
    #dbg_declare(ptr %r.addr, !2389, !DIExpression(), !2396)
  store ptr %in, ptr %in.addr, align 8, !tbaa !1944
    #dbg_declare(ptr %in.addr, !2390, !DIExpression(), !2397)
  call void @llvm.lifetime.start.p0(i64 8, ptr %L) #6, !dbg !2398
    #dbg_declare(ptr %L, !2391, !DIExpression(), !2399)
  call void @llvm.lifetime.start.p0(i64 8, ptr %rc) #6, !dbg !2400
    #dbg_declare(ptr %rc, !2392, !DIExpression(), !2401)
  call void @llvm.lifetime.start.p0(i64 8, ptr %script_path) #6, !dbg !2402
    #dbg_declare(ptr %script_path, !2393, !DIExpression(), !2403)
  call void @llvm.lifetime.start.p0(i64 8, ptr %llcf) #6, !dbg !2404
    #dbg_declare(ptr %llcf, !2394, !DIExpression(), !2405)
  call void @llvm.lifetime.start.p0(i64 16, ptr %eval_src) #6, !dbg !2406
    #dbg_declare(ptr %eval_src, !2395, !DIExpression(), !2407)
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2408, !tbaa !1944
  %loc_conf = getelementptr inbounds %struct.ngx_http_request_s, ptr %0, i32 0, i32 5, !dbg !2408
  %1 = load ptr, ptr %loc_conf, align 8, !dbg !2408, !tbaa !2201
  %2 = load i64, ptr @ngx_http_lua_module, align 8, !dbg !2408, !tbaa !2099
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %2, !dbg !2408
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !2408, !tbaa !1944
  store ptr %3, ptr %llcf, align 8, !dbg !2409, !tbaa !1944
  %4 = load ptr, ptr %r.addr, align 8, !dbg !2410, !tbaa !1944
  %5 = load ptr, ptr %llcf, align 8, !dbg !2412, !tbaa !1944
  %body_filter_src = getelementptr inbounds %struct.ngx_http_lua_loc_conf_t, ptr %5, i32 0, i32 29, !dbg !2413
  %call = call i64 @ngx_http_complex_value(ptr noundef %4, ptr noundef %body_filter_src, ptr noundef %eval_src), !dbg !2414
  %cmp = icmp ne i64 %call, 0, !dbg !2415
  br i1 %cmp, label %if.then, label %if.end, !dbg !2416

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !2417
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2417

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %r.addr, align 8, !dbg !2419, !tbaa !1944
  %pool = getelementptr inbounds %struct.ngx_http_request_s, ptr %6, i32 0, i32 11, !dbg !2420
  %7 = load ptr, ptr %pool, align 8, !dbg !2420, !tbaa !2421
  %data = getelementptr inbounds %struct.ngx_str_t, ptr %eval_src, i32 0, i32 1, !dbg !2422
  %8 = load ptr, ptr %data, align 8, !dbg !2422, !tbaa !2423
  %len = getelementptr inbounds %struct.ngx_str_t, ptr %eval_src, i32 0, i32 0, !dbg !2424
  %9 = load i64, ptr %len, align 8, !dbg !2424, !tbaa !2425
  %call1 = call ptr @ngx_http_lua_rebase_path(ptr noundef %7, ptr noundef %8, i64 noundef %9), !dbg !2426
  store ptr %call1, ptr %script_path, align 8, !dbg !2427, !tbaa !1944
  %10 = load ptr, ptr %script_path, align 8, !dbg !2428, !tbaa !1944
  %cmp2 = icmp eq ptr %10, null, !dbg !2430
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !2431

if.then3:                                         ; preds = %if.end
  store i64 -1, ptr %retval, align 8, !dbg !2432
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2432

if.end4:                                          ; preds = %if.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !2434, !tbaa !1944
  %call5 = call ptr @ngx_http_lua_get_lua_vm(ptr noundef %11, ptr noundef null), !dbg !2435
  store ptr %call5, ptr %L, align 8, !dbg !2436, !tbaa !1944
  %12 = load ptr, ptr %r.addr, align 8, !dbg !2437, !tbaa !1944
  %connection = getelementptr inbounds %struct.ngx_http_request_s, ptr %12, i32 0, i32 1, !dbg !2438
  %13 = load ptr, ptr %connection, align 8, !dbg !2438, !tbaa !1989
  %log = getelementptr inbounds %struct.ngx_connection_s, ptr %13, i32 0, i32 10, !dbg !2439
  %14 = load ptr, ptr %log, align 8, !dbg !2439, !tbaa !1998
  %15 = load ptr, ptr %L, align 8, !dbg !2440, !tbaa !1944
  %16 = load ptr, ptr %script_path, align 8, !dbg !2441, !tbaa !1944
  %17 = load ptr, ptr %llcf, align 8, !dbg !2442, !tbaa !1944
  %body_filter_src_key = getelementptr inbounds %struct.ngx_http_lua_loc_conf_t, ptr %17, i32 0, i32 30, !dbg !2443
  %18 = load ptr, ptr %body_filter_src_key, align 8, !dbg !2443, !tbaa !2224
  %call6 = call i64 @ngx_http_lua_cache_loadfile(ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef %18), !dbg !2444
  store i64 %call6, ptr %rc, align 8, !dbg !2445, !tbaa !1967
  %19 = load i64, ptr %rc, align 8, !dbg !2446, !tbaa !1967
  %cmp7 = icmp ne i64 %19, 0, !dbg !2448
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !2449

if.then8:                                         ; preds = %if.end4
  store i64 -1, ptr %retval, align 8, !dbg !2450
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2450

if.end9:                                          ; preds = %if.end4
  %20 = load ptr, ptr %L, align 8, !dbg !2452, !tbaa !1944
  %21 = load ptr, ptr %r.addr, align 8, !dbg !2453, !tbaa !1944
  %22 = load ptr, ptr %in.addr, align 8, !dbg !2454, !tbaa !1944
  %call10 = call i64 @ngx_http_lua_body_filter_by_chunk(ptr noundef %20, ptr noundef %21, ptr noundef %22), !dbg !2455
  store i64 %call10, ptr %rc, align 8, !dbg !2456, !tbaa !1967
  %23 = load i64, ptr %rc, align 8, !dbg !2457, !tbaa !1967
  %cmp11 = icmp ne i64 %23, 0, !dbg !2459
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !2460

if.then12:                                        ; preds = %if.end9
  store i64 -1, ptr %retval, align 8, !dbg !2461
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2461

if.end13:                                         ; preds = %if.end9
  store i64 0, ptr %retval, align 8, !dbg !2463
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2463

cleanup:                                          ; preds = %if.end13, %if.then12, %if.then8, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %eval_src) #6, !dbg !2464
  call void @llvm.lifetime.end.p0(i64 8, ptr %llcf) #6, !dbg !2464
  call void @llvm.lifetime.end.p0(i64 8, ptr %script_path) #6, !dbg !2464
  call void @llvm.lifetime.end.p0(i64 8, ptr %rc) #6, !dbg !2464
  call void @llvm.lifetime.end.p0(i64 8, ptr %L) #6, !dbg !2464
  %24 = load i64, ptr %retval, align 8, !dbg !2464
  ret i64 %24, !dbg !2464
}

declare !dbg !2465 i64 @ngx_http_complex_value(ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !2468 ptr @ngx_http_lua_rebase_path(ptr noundef, ptr noundef, i64 noundef) #2

declare !dbg !2471 i64 @ngx_http_lua_cache_loadfile(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local i64 @ngx_http_lua_body_filter_init() #0 !dbg !2474 {
entry:
  %0 = load ptr, ptr @ngx_http_top_body_filter, align 8, !dbg !2477, !tbaa !1944
  store ptr %0, ptr @ngx_http_next_body_filter, align 8, !dbg !2478, !tbaa !1944
  store ptr @ngx_http_lua_body_filter, ptr @ngx_http_top_body_filter, align 8, !dbg !2479, !tbaa !1944
  ret i64 0, !dbg !2480
}

; Function Attrs: nounwind uwtable
define internal i64 @ngx_http_lua_body_filter(ptr noundef %r, ptr noundef %in) #0 !dbg !2481 {
entry:
  %retval = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %llcf = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %rc = alloca i64, align 8
  %old_context = alloca i16, align 2
  %cln = alloca ptr, align 8
  %out = alloca ptr, align 8
  %lmcf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !1944
    #dbg_declare(ptr %r.addr, !2483, !DIExpression(), !2492)
  store ptr %in, ptr %in.addr, align 8, !tbaa !1944
    #dbg_declare(ptr %in.addr, !2484, !DIExpression(), !2493)
  call void @llvm.lifetime.start.p0(i64 8, ptr %llcf) #6, !dbg !2494
    #dbg_declare(ptr %llcf, !2485, !DIExpression(), !2495)
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #6, !dbg !2496
    #dbg_declare(ptr %ctx, !2486, !DIExpression(), !2497)
  call void @llvm.lifetime.start.p0(i64 8, ptr %rc) #6, !dbg !2498
    #dbg_declare(ptr %rc, !2487, !DIExpression(), !2499)
  call void @llvm.lifetime.start.p0(i64 2, ptr %old_context) #6, !dbg !2500
    #dbg_declare(ptr %old_context, !2488, !DIExpression(), !2501)
  call void @llvm.lifetime.start.p0(i64 8, ptr %cln) #6, !dbg !2502
    #dbg_declare(ptr %cln, !2489, !DIExpression(), !2503)
  call void @llvm.lifetime.start.p0(i64 8, ptr %out) #6, !dbg !2504
    #dbg_declare(ptr %out, !2490, !DIExpression(), !2505)
  call void @llvm.lifetime.start.p0(i64 8, ptr %lmcf) #6, !dbg !2506
    #dbg_declare(ptr %lmcf, !2491, !DIExpression(), !2507)
  %0 = load ptr, ptr %in.addr, align 8, !dbg !2508, !tbaa !1944
  %cmp = icmp eq ptr %0, null, !dbg !2510
  br i1 %cmp, label %if.then, label %if.end, !dbg !2511

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @ngx_http_next_body_filter, align 8, !dbg !2512, !tbaa !1944
  %2 = load ptr, ptr %r.addr, align 8, !dbg !2514, !tbaa !1944
  %3 = load ptr, ptr %in.addr, align 8, !dbg !2515, !tbaa !1944
  %call = call i64 %1(ptr noundef %2, ptr noundef %3), !dbg !2512
  store i64 %call, ptr %retval, align 8, !dbg !2516
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup48, !dbg !2516

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %r.addr, align 8, !dbg !2517, !tbaa !1944
  %loc_conf = getelementptr inbounds %struct.ngx_http_request_s, ptr %4, i32 0, i32 5, !dbg !2517
  %5 = load ptr, ptr %loc_conf, align 8, !dbg !2517, !tbaa !2201
  %6 = load i64, ptr @ngx_http_lua_module, align 8, !dbg !2517, !tbaa !2099
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %6, !dbg !2517
  %7 = load ptr, ptr %arrayidx, align 8, !dbg !2517, !tbaa !1944
  store ptr %7, ptr %llcf, align 8, !dbg !2518, !tbaa !1944
  %8 = load ptr, ptr %llcf, align 8, !dbg !2519, !tbaa !1944
  %body_filter_handler = getelementptr inbounds %struct.ngx_http_lua_loc_conf_t, ptr %8, i32 0, i32 14, !dbg !2521
  %9 = load ptr, ptr %body_filter_handler, align 8, !dbg !2521, !tbaa !2522
  %cmp1 = icmp eq ptr %9, null, !dbg !2523
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !2524

if.then2:                                         ; preds = %if.end
  %10 = load ptr, ptr @ngx_http_next_body_filter, align 8, !dbg !2525, !tbaa !1944
  %11 = load ptr, ptr %r.addr, align 8, !dbg !2527, !tbaa !1944
  %12 = load ptr, ptr %in.addr, align 8, !dbg !2528, !tbaa !1944
  %call3 = call i64 %10(ptr noundef %11, ptr noundef %12), !dbg !2525
  store i64 %call3, ptr %retval, align 8, !dbg !2529
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup48, !dbg !2529

if.end4:                                          ; preds = %if.end
  %13 = load ptr, ptr %r.addr, align 8, !dbg !2530, !tbaa !1944
  %ctx5 = getelementptr inbounds %struct.ngx_http_request_s, ptr %13, i32 0, i32 2, !dbg !2530
  %14 = load ptr, ptr %ctx5, align 8, !dbg !2530, !tbaa !2353
  %15 = load i64, ptr @ngx_http_lua_module, align 8, !dbg !2530, !tbaa !2099
  %arrayidx6 = getelementptr inbounds ptr, ptr %14, i64 %15, !dbg !2530
  %16 = load ptr, ptr %arrayidx6, align 8, !dbg !2530, !tbaa !1944
  store ptr %16, ptr %ctx, align 8, !dbg !2531, !tbaa !1944
  %17 = load ptr, ptr %ctx, align 8, !dbg !2532, !tbaa !1944
  %cmp7 = icmp eq ptr %17, null, !dbg !2534
  br i1 %cmp7, label %if.then8, label %if.end13, !dbg !2535

if.then8:                                         ; preds = %if.end4
  %18 = load ptr, ptr %r.addr, align 8, !dbg !2536, !tbaa !1944
  %call9 = call ptr @ngx_http_lua_create_ctx(ptr noundef %18), !dbg !2538
  store ptr %call9, ptr %ctx, align 8, !dbg !2539, !tbaa !1944
  %19 = load ptr, ptr %ctx, align 8, !dbg !2540, !tbaa !1944
  %cmp10 = icmp eq ptr %19, null, !dbg !2542
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !2543

if.then11:                                        ; preds = %if.then8
  store i64 -1, ptr %retval, align 8, !dbg !2544
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup48, !dbg !2544

if.end12:                                         ; preds = %if.then8
  br label %if.end13, !dbg !2546

if.end13:                                         ; preds = %if.end12, %if.end4
  %20 = load ptr, ptr %ctx, align 8, !dbg !2547, !tbaa !1944
  %seen_last_in_filter = getelementptr inbounds %struct.ngx_http_lua_ctx_s, ptr %20, i32 0, i32 25, !dbg !2549
  %bf.load = load i32, ptr %seen_last_in_filter, align 2, !dbg !2549
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !2549
  %bf.clear = and i32 %bf.lshr, 1, !dbg !2549
  %tobool = icmp ne i32 %bf.clear, 0, !dbg !2547
  br i1 %tobool, label %if.then14, label %if.end19, !dbg !2550

if.then14:                                        ; preds = %if.end13
  br label %for.cond, !dbg !2551

for.cond:                                         ; preds = %for.inc, %if.then14
  %21 = load ptr, ptr %in.addr, align 8, !dbg !2553, !tbaa !1944
  %tobool15 = icmp ne ptr %21, null, !dbg !2556
  br i1 %tobool15, label %for.body, label %for.end, !dbg !2556

for.body:                                         ; preds = %for.cond
  %22 = load ptr, ptr %in.addr, align 8, !dbg !2557, !tbaa !1944
  %buf = getelementptr inbounds %struct.ngx_chain_s, ptr %22, i32 0, i32 0, !dbg !2559
  %23 = load ptr, ptr %buf, align 8, !dbg !2559, !tbaa !2560
  %last = getelementptr inbounds %struct.ngx_buf_s, ptr %23, i32 0, i32 1, !dbg !2562
  %24 = load ptr, ptr %last, align 8, !dbg !2562, !tbaa !2563
  %25 = load ptr, ptr %in.addr, align 8, !dbg !2565, !tbaa !1944
  %buf16 = getelementptr inbounds %struct.ngx_chain_s, ptr %25, i32 0, i32 0, !dbg !2566
  %26 = load ptr, ptr %buf16, align 8, !dbg !2566, !tbaa !2560
  %pos = getelementptr inbounds %struct.ngx_buf_s, ptr %26, i32 0, i32 0, !dbg !2567
  store ptr %24, ptr %pos, align 8, !dbg !2568, !tbaa !2569
  %27 = load ptr, ptr %in.addr, align 8, !dbg !2570, !tbaa !1944
  %buf17 = getelementptr inbounds %struct.ngx_chain_s, ptr %27, i32 0, i32 0, !dbg !2571
  %28 = load ptr, ptr %buf17, align 8, !dbg !2571, !tbaa !2560
  %file_last = getelementptr inbounds %struct.ngx_buf_s, ptr %28, i32 0, i32 3, !dbg !2572
  %29 = load i64, ptr %file_last, align 8, !dbg !2572, !tbaa !2573
  %30 = load ptr, ptr %in.addr, align 8, !dbg !2574, !tbaa !1944
  %buf18 = getelementptr inbounds %struct.ngx_chain_s, ptr %30, i32 0, i32 0, !dbg !2575
  %31 = load ptr, ptr %buf18, align 8, !dbg !2575, !tbaa !2560
  %file_pos = getelementptr inbounds %struct.ngx_buf_s, ptr %31, i32 0, i32 2, !dbg !2576
  store i64 %29, ptr %file_pos, align 8, !dbg !2577, !tbaa !2578
  br label %for.inc, !dbg !2579

for.inc:                                          ; preds = %for.body
  %32 = load ptr, ptr %in.addr, align 8, !dbg !2580, !tbaa !1944
  %next = getelementptr inbounds %struct.ngx_chain_s, ptr %32, i32 0, i32 1, !dbg !2581
  %33 = load ptr, ptr %next, align 8, !dbg !2581, !tbaa !2582
  store ptr %33, ptr %in.addr, align 8, !dbg !2583, !tbaa !1944
  br label %for.cond, !dbg !2584, !llvm.loop !2585

for.end:                                          ; preds = %for.cond
  store i64 0, ptr %retval, align 8, !dbg !2588
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup48, !dbg !2588

if.end19:                                         ; preds = %if.end13
  %34 = load ptr, ptr %ctx, align 8, !dbg !2589, !tbaa !1944
  %cleanup = getelementptr inbounds %struct.ngx_http_lua_ctx_s, ptr %34, i32 0, i32 13, !dbg !2591
  %35 = load ptr, ptr %cleanup, align 8, !dbg !2591, !tbaa !2592
  %cmp20 = icmp eq ptr %35, null, !dbg !2593
  br i1 %cmp20, label %if.then21, label %if.end28, !dbg !2594

if.then21:                                        ; preds = %if.end19
  %36 = load ptr, ptr %r.addr, align 8, !dbg !2595, !tbaa !1944
  %call22 = call ptr @ngx_http_cleanup_add(ptr noundef %36, i64 noundef 0), !dbg !2597
  store ptr %call22, ptr %cln, align 8, !dbg !2598, !tbaa !1944
  %37 = load ptr, ptr %cln, align 8, !dbg !2599, !tbaa !1944
  %cmp23 = icmp eq ptr %37, null, !dbg !2601
  br i1 %cmp23, label %if.then24, label %if.end25, !dbg !2602

if.then24:                                        ; preds = %if.then21
  store i64 -1, ptr %retval, align 8, !dbg !2603
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup48, !dbg !2603

if.end25:                                         ; preds = %if.then21
  %38 = load ptr, ptr %cln, align 8, !dbg !2605, !tbaa !1944
  %handler = getelementptr inbounds %struct.ngx_http_cleanup_s, ptr %38, i32 0, i32 0, !dbg !2606
  store ptr @ngx_http_lua_request_cleanup_handler, ptr %handler, align 8, !dbg !2607, !tbaa !2608
  %39 = load ptr, ptr %ctx, align 8, !dbg !2610, !tbaa !1944
  %40 = load ptr, ptr %cln, align 8, !dbg !2611, !tbaa !1944
  %data = getelementptr inbounds %struct.ngx_http_cleanup_s, ptr %40, i32 0, i32 1, !dbg !2612
  store ptr %39, ptr %data, align 8, !dbg !2613, !tbaa !2614
  %41 = load ptr, ptr %cln, align 8, !dbg !2615, !tbaa !1944
  %handler26 = getelementptr inbounds %struct.ngx_http_cleanup_s, ptr %41, i32 0, i32 0, !dbg !2616
  %42 = load ptr, ptr %ctx, align 8, !dbg !2617, !tbaa !1944
  %cleanup27 = getelementptr inbounds %struct.ngx_http_lua_ctx_s, ptr %42, i32 0, i32 13, !dbg !2618
  store ptr %handler26, ptr %cleanup27, align 8, !dbg !2619, !tbaa !2592
  br label %if.end28, !dbg !2620

if.end28:                                         ; preds = %if.end25, %if.end19
  %43 = load ptr, ptr %ctx, align 8, !dbg !2621, !tbaa !1944
  %context = getelementptr inbounds %struct.ngx_http_lua_ctx_s, ptr %43, i32 0, i32 24, !dbg !2622
  %44 = load i16, ptr %context, align 4, !dbg !2622, !tbaa !2623
  store i16 %44, ptr %old_context, align 2, !dbg !2624, !tbaa !2625
  %45 = load ptr, ptr %ctx, align 8, !dbg !2626, !tbaa !1944
  %context29 = getelementptr inbounds %struct.ngx_http_lua_ctx_s, ptr %45, i32 0, i32 24, !dbg !2627
  store i16 64, ptr %context29, align 4, !dbg !2628, !tbaa !2623
  %46 = load ptr, ptr %llcf, align 8, !dbg !2629, !tbaa !1944
  %body_filter_handler30 = getelementptr inbounds %struct.ngx_http_lua_loc_conf_t, ptr %46, i32 0, i32 14, !dbg !2630
  %47 = load ptr, ptr %body_filter_handler30, align 8, !dbg !2630, !tbaa !2522
  %48 = load ptr, ptr %r.addr, align 8, !dbg !2631, !tbaa !1944
  %49 = load ptr, ptr %in.addr, align 8, !dbg !2632, !tbaa !1944
  %call31 = call i64 %47(ptr noundef %48, ptr noundef %49), !dbg !2629
  store i64 %call31, ptr %rc, align 8, !dbg !2633, !tbaa !1967
  %50 = load i16, ptr %old_context, align 2, !dbg !2634, !tbaa !2625
  %51 = load ptr, ptr %ctx, align 8, !dbg !2635, !tbaa !1944
  %context32 = getelementptr inbounds %struct.ngx_http_lua_ctx_s, ptr %51, i32 0, i32 24, !dbg !2636
  store i16 %50, ptr %context32, align 4, !dbg !2637, !tbaa !2623
  %52 = load i64, ptr %rc, align 8, !dbg !2638, !tbaa !1967
  %cmp33 = icmp ne i64 %52, 0, !dbg !2640
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !2641

if.then34:                                        ; preds = %if.end28
  store i64 -1, ptr %retval, align 8, !dbg !2642
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup48, !dbg !2642

if.end35:                                         ; preds = %if.end28
  %53 = load ptr, ptr %r.addr, align 8, !dbg !2644, !tbaa !1944
  %main_conf = getelementptr inbounds %struct.ngx_http_request_s, ptr %53, i32 0, i32 3, !dbg !2644
  %54 = load ptr, ptr %main_conf, align 8, !dbg !2644, !tbaa !2098
  %55 = load i64, ptr @ngx_http_lua_module, align 8, !dbg !2644, !tbaa !2099
  %arrayidx36 = getelementptr inbounds ptr, ptr %54, i64 %55, !dbg !2644
  %56 = load ptr, ptr %arrayidx36, align 8, !dbg !2644, !tbaa !1944
  store ptr %56, ptr %lmcf, align 8, !dbg !2645, !tbaa !1944
  %57 = load ptr, ptr %lmcf, align 8, !dbg !2646, !tbaa !1944
  %body_filter_chain = getelementptr inbounds %struct.ngx_http_lua_main_conf_s, ptr %57, i32 0, i32 22, !dbg !2647
  %58 = load ptr, ptr %body_filter_chain, align 8, !dbg !2647, !tbaa !2106
  store ptr %58, ptr %out, align 8, !dbg !2648, !tbaa !1944
  %59 = load ptr, ptr %in.addr, align 8, !dbg !2649, !tbaa !1944
  %60 = load ptr, ptr %out, align 8, !dbg !2651, !tbaa !1944
  %cmp37 = icmp eq ptr %59, %60, !dbg !2652
  br i1 %cmp37, label %if.then38, label %if.end40, !dbg !2653

if.then38:                                        ; preds = %if.end35
  %61 = load ptr, ptr @ngx_http_next_body_filter, align 8, !dbg !2654, !tbaa !1944
  %62 = load ptr, ptr %r.addr, align 8, !dbg !2656, !tbaa !1944
  %63 = load ptr, ptr %in.addr, align 8, !dbg !2657, !tbaa !1944
  %call39 = call i64 %61(ptr noundef %62, ptr noundef %63), !dbg !2654
  store i64 %call39, ptr %retval, align 8, !dbg !2658
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup48, !dbg !2658

if.end40:                                         ; preds = %if.end35
  %64 = load ptr, ptr %out, align 8, !dbg !2659, !tbaa !1944
  %cmp41 = icmp eq ptr %64, null, !dbg !2661
  br i1 %cmp41, label %if.then42, label %if.end43, !dbg !2662

if.then42:                                        ; preds = %if.end40
  store i64 0, ptr %retval, align 8, !dbg !2663
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup48, !dbg !2663

if.end43:                                         ; preds = %if.end40
  %65 = load ptr, ptr @ngx_http_next_body_filter, align 8, !dbg !2665, !tbaa !1944
  %66 = load ptr, ptr %r.addr, align 8, !dbg !2666, !tbaa !1944
  %67 = load ptr, ptr %out, align 8, !dbg !2667, !tbaa !1944
  %call44 = call i64 %65(ptr noundef %66, ptr noundef %67), !dbg !2665
  store i64 %call44, ptr %rc, align 8, !dbg !2668, !tbaa !1967
  %68 = load i64, ptr %rc, align 8, !dbg !2669, !tbaa !1967
  %cmp45 = icmp eq i64 %68, -1, !dbg !2671
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !2672

if.then46:                                        ; preds = %if.end43
  store i64 -1, ptr %retval, align 8, !dbg !2673
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup48, !dbg !2673

if.end47:                                         ; preds = %if.end43
  %69 = load ptr, ptr %r.addr, align 8, !dbg !2675, !tbaa !1944
  %pool = getelementptr inbounds %struct.ngx_http_request_s, ptr %69, i32 0, i32 11, !dbg !2676
  %70 = load ptr, ptr %pool, align 8, !dbg !2676, !tbaa !2421
  %71 = load ptr, ptr %ctx, align 8, !dbg !2677, !tbaa !1944
  %free_bufs = getelementptr inbounds %struct.ngx_http_lua_ctx_s, ptr %71, i32 0, i32 10, !dbg !2678
  %72 = load ptr, ptr %ctx, align 8, !dbg !2679, !tbaa !1944
  %busy_bufs = getelementptr inbounds %struct.ngx_http_lua_ctx_s, ptr %72, i32 0, i32 11, !dbg !2680
  call void @ngx_chain_update_chains(ptr noundef %70, ptr noundef %free_bufs, ptr noundef %busy_bufs, ptr noundef %out, ptr noundef @ngx_http_lua_module), !dbg !2681
  %73 = load i64, ptr %rc, align 8, !dbg !2682, !tbaa !1967
  store i64 %73, ptr %retval, align 8, !dbg !2683
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup48, !dbg !2683

cleanup48:                                        ; preds = %if.end47, %if.then46, %if.then42, %if.then38, %if.then34, %if.then24, %for.end, %if.then11, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %lmcf) #6, !dbg !2684
  call void @llvm.lifetime.end.p0(i64 8, ptr %out) #6, !dbg !2684
  call void @llvm.lifetime.end.p0(i64 8, ptr %cln) #6, !dbg !2684
  call void @llvm.lifetime.end.p0(i64 2, ptr %old_context) #6, !dbg !2684
  call void @llvm.lifetime.end.p0(i64 8, ptr %rc) #6, !dbg !2684
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #6, !dbg !2684
  call void @llvm.lifetime.end.p0(i64 8, ptr %llcf) #6, !dbg !2684
  %74 = load i64, ptr %retval, align 8, !dbg !2684
  ret i64 %74, !dbg !2684
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ngx_http_lua_body_filter_param_get(ptr noundef %L, ptr noundef %r) #0 !dbg !2685 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca ptr, align 8
  %r.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  %p = alloca ptr, align 8
  %size = alloca i64, align 8
  %cl = alloca ptr, align 8
  %b = alloca ptr, align 8
  %idx = alloca i32, align 4
  %in = alloca ptr, align 8
  %lmcf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %L, ptr %L.addr, align 8, !tbaa !1944
    #dbg_declare(ptr %L.addr, !2689, !DIExpression(), !2699)
  store ptr %r, ptr %r.addr, align 8, !tbaa !1944
    #dbg_declare(ptr %r.addr, !2690, !DIExpression(), !2700)
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #6, !dbg !2701
    #dbg_declare(ptr %data, !2691, !DIExpression(), !2702)
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #6, !dbg !2701
    #dbg_declare(ptr %p, !2692, !DIExpression(), !2703)
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #6, !dbg !2704
    #dbg_declare(ptr %size, !2693, !DIExpression(), !2705)
  call void @llvm.lifetime.start.p0(i64 8, ptr %cl) #6, !dbg !2706
    #dbg_declare(ptr %cl, !2694, !DIExpression(), !2707)
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #6, !dbg !2708
    #dbg_declare(ptr %b, !2695, !DIExpression(), !2709)
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #6, !dbg !2710
    #dbg_declare(ptr %idx, !2696, !DIExpression(), !2711)
  call void @llvm.lifetime.start.p0(i64 8, ptr %in) #6, !dbg !2712
    #dbg_declare(ptr %in, !2697, !DIExpression(), !2713)
  call void @llvm.lifetime.start.p0(i64 8, ptr %lmcf) #6, !dbg !2714
    #dbg_declare(ptr %lmcf, !2698, !DIExpression(), !2715)
  %0 = load ptr, ptr %L.addr, align 8, !dbg !2716, !tbaa !1944
  %call = call i64 @luaL_checkinteger(ptr noundef %0, i32 noundef 2), !dbg !2716
  %conv = trunc i64 %call to i32, !dbg !2716
  store i32 %conv, ptr %idx, align 4, !dbg !2717, !tbaa !2718
  %1 = load i32, ptr %idx, align 4, !dbg !2719, !tbaa !2718
  %cmp = icmp ne i32 %1, 1, !dbg !2721
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2722

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %idx, align 4, !dbg !2723, !tbaa !2718
  %cmp2 = icmp ne i32 %2, 2, !dbg !2724
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2725

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %L.addr, align 8, !dbg !2726, !tbaa !1944
  call void @lua_pushnil(ptr noundef %3), !dbg !2728
  store i32 1, ptr %retval, align 4, !dbg !2729
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2729

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load ptr, ptr %r.addr, align 8, !dbg !2730, !tbaa !1944
  %main_conf = getelementptr inbounds %struct.ngx_http_request_s, ptr %4, i32 0, i32 3, !dbg !2730
  %5 = load ptr, ptr %main_conf, align 8, !dbg !2730, !tbaa !2098
  %6 = load i64, ptr @ngx_http_lua_module, align 8, !dbg !2730, !tbaa !2099
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %6, !dbg !2730
  %7 = load ptr, ptr %arrayidx, align 8, !dbg !2730, !tbaa !1944
  store ptr %7, ptr %lmcf, align 8, !dbg !2731, !tbaa !1944
  %8 = load ptr, ptr %lmcf, align 8, !dbg !2732, !tbaa !1944
  %body_filter_chain = getelementptr inbounds %struct.ngx_http_lua_main_conf_s, ptr %8, i32 0, i32 22, !dbg !2733
  %9 = load ptr, ptr %body_filter_chain, align 8, !dbg !2733, !tbaa !2106
  store ptr %9, ptr %in, align 8, !dbg !2734, !tbaa !1944
  %10 = load i32, ptr %idx, align 4, !dbg !2735, !tbaa !2718
  %cmp4 = icmp eq i32 %10, 2, !dbg !2737
  br i1 %cmp4, label %if.then6, label %if.end16, !dbg !2738

if.then6:                                         ; preds = %if.end
  %11 = load ptr, ptr %in, align 8, !dbg !2739, !tbaa !1944
  store ptr %11, ptr %cl, align 8, !dbg !2742, !tbaa !1944
  br label %for.cond, !dbg !2743

for.cond:                                         ; preds = %for.inc, %if.then6
  %12 = load ptr, ptr %cl, align 8, !dbg !2744, !tbaa !1944
  %tobool = icmp ne ptr %12, null, !dbg !2746
  br i1 %tobool, label %for.body, label %for.end, !dbg !2746

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %cl, align 8, !dbg !2747, !tbaa !1944
  %buf = getelementptr inbounds %struct.ngx_chain_s, ptr %13, i32 0, i32 0, !dbg !2750
  %14 = load ptr, ptr %buf, align 8, !dbg !2750, !tbaa !2560
  %last_buf = getelementptr inbounds %struct.ngx_buf_s, ptr %14, i32 0, i32 9, !dbg !2751
  %bf.load = load i16, ptr %last_buf, align 8, !dbg !2751
  %bf.lshr = lshr i16 %bf.load, 7, !dbg !2751
  %bf.clear = and i16 %bf.lshr, 1, !dbg !2751
  %bf.cast = zext i16 %bf.clear to i32, !dbg !2751
  %tobool7 = icmp ne i32 %bf.cast, 0, !dbg !2747
  br i1 %tobool7, label %if.then14, label %lor.lhs.false, !dbg !2752

lor.lhs.false:                                    ; preds = %for.body
  %15 = load ptr, ptr %cl, align 8, !dbg !2753, !tbaa !1944
  %buf8 = getelementptr inbounds %struct.ngx_chain_s, ptr %15, i32 0, i32 0, !dbg !2754
  %16 = load ptr, ptr %buf8, align 8, !dbg !2754, !tbaa !2560
  %last_in_chain = getelementptr inbounds %struct.ngx_buf_s, ptr %16, i32 0, i32 9, !dbg !2755
  %bf.load9 = load i16, ptr %last_in_chain, align 8, !dbg !2755
  %bf.lshr10 = lshr i16 %bf.load9, 8, !dbg !2755
  %bf.clear11 = and i16 %bf.lshr10, 1, !dbg !2755
  %bf.cast12 = zext i16 %bf.clear11 to i32, !dbg !2755
  %tobool13 = icmp ne i32 %bf.cast12, 0, !dbg !2753
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !2756

if.then14:                                        ; preds = %lor.lhs.false, %for.body
  %17 = load ptr, ptr %L.addr, align 8, !dbg !2757, !tbaa !1944
  call void @lua_pushboolean(ptr noundef %17, i32 noundef 1), !dbg !2759
  store i32 1, ptr %retval, align 4, !dbg !2760
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2760

if.end15:                                         ; preds = %lor.lhs.false
  br label %for.inc, !dbg !2761

for.inc:                                          ; preds = %if.end15
  %18 = load ptr, ptr %cl, align 8, !dbg !2762, !tbaa !1944
  %next = getelementptr inbounds %struct.ngx_chain_s, ptr %18, i32 0, i32 1, !dbg !2763
  %19 = load ptr, ptr %next, align 8, !dbg !2763, !tbaa !2582
  store ptr %19, ptr %cl, align 8, !dbg !2764, !tbaa !1944
  br label %for.cond, !dbg !2765, !llvm.loop !2766

for.end:                                          ; preds = %for.cond
  %20 = load ptr, ptr %L.addr, align 8, !dbg !2768, !tbaa !1944
  call void @lua_pushboolean(ptr noundef %20, i32 noundef 0), !dbg !2769
  store i32 1, ptr %retval, align 4, !dbg !2770
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2770

if.end16:                                         ; preds = %if.end
  store i64 0, ptr %size, align 8, !dbg !2771, !tbaa !1967
  %21 = load ptr, ptr %in, align 8, !dbg !2772, !tbaa !1944
  %cmp17 = icmp eq ptr %21, null, !dbg !2774
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !2775

if.then19:                                        ; preds = %if.end16
  %22 = load ptr, ptr %L.addr, align 8, !dbg !2776, !tbaa !1944
  call void @lua_pushlstring(ptr noundef %22, ptr noundef @.str.3, i64 noundef 0), !dbg !2776
  store i32 1, ptr %retval, align 4, !dbg !2778
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2778

if.end20:                                         ; preds = %if.end16
  %23 = load ptr, ptr %in, align 8, !dbg !2779, !tbaa !1944
  %next21 = getelementptr inbounds %struct.ngx_chain_s, ptr %23, i32 0, i32 1, !dbg !2781
  %24 = load ptr, ptr %next21, align 8, !dbg !2781, !tbaa !2582
  %cmp22 = icmp eq ptr %24, null, !dbg !2782
  br i1 %cmp22, label %if.then24, label %if.end27, !dbg !2783

if.then24:                                        ; preds = %if.end20
  %25 = load ptr, ptr %in, align 8, !dbg !2784, !tbaa !1944
  %buf25 = getelementptr inbounds %struct.ngx_chain_s, ptr %25, i32 0, i32 0, !dbg !2786
  %26 = load ptr, ptr %buf25, align 8, !dbg !2786, !tbaa !2560
  store ptr %26, ptr %b, align 8, !dbg !2787, !tbaa !1944
  %27 = load ptr, ptr %L.addr, align 8, !dbg !2788, !tbaa !1944
  %28 = load ptr, ptr %b, align 8, !dbg !2789, !tbaa !1944
  %pos = getelementptr inbounds %struct.ngx_buf_s, ptr %28, i32 0, i32 0, !dbg !2790
  %29 = load ptr, ptr %pos, align 8, !dbg !2790, !tbaa !2569
  %30 = load ptr, ptr %b, align 8, !dbg !2791, !tbaa !1944
  %last = getelementptr inbounds %struct.ngx_buf_s, ptr %30, i32 0, i32 1, !dbg !2792
  %31 = load ptr, ptr %last, align 8, !dbg !2792, !tbaa !2563
  %32 = load ptr, ptr %b, align 8, !dbg !2793, !tbaa !1944
  %pos26 = getelementptr inbounds %struct.ngx_buf_s, ptr %32, i32 0, i32 0, !dbg !2794
  %33 = load ptr, ptr %pos26, align 8, !dbg !2794, !tbaa !2569
  %sub.ptr.lhs.cast = ptrtoint ptr %31 to i64, !dbg !2795
  %sub.ptr.rhs.cast = ptrtoint ptr %33 to i64, !dbg !2795
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2795
  call void @lua_pushlstring(ptr noundef %27, ptr noundef %29, i64 noundef %sub.ptr.sub), !dbg !2796
  store i32 1, ptr %retval, align 4, !dbg !2797
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2797

if.end27:                                         ; preds = %if.end20
  %34 = load ptr, ptr %in, align 8, !dbg !2798, !tbaa !1944
  store ptr %34, ptr %cl, align 8, !dbg !2800, !tbaa !1944
  br label %for.cond28, !dbg !2801

for.cond28:                                       ; preds = %for.inc52, %if.end27
  %35 = load ptr, ptr %cl, align 8, !dbg !2802, !tbaa !1944
  %tobool29 = icmp ne ptr %35, null, !dbg !2804
  br i1 %tobool29, label %for.body30, label %for.end54, !dbg !2804

for.body30:                                       ; preds = %for.cond28
  %36 = load ptr, ptr %cl, align 8, !dbg !2805, !tbaa !1944
  %buf31 = getelementptr inbounds %struct.ngx_chain_s, ptr %36, i32 0, i32 0, !dbg !2807
  %37 = load ptr, ptr %buf31, align 8, !dbg !2807, !tbaa !2560
  store ptr %37, ptr %b, align 8, !dbg !2808, !tbaa !1944
  %38 = load ptr, ptr %b, align 8, !dbg !2809, !tbaa !1944
  %last32 = getelementptr inbounds %struct.ngx_buf_s, ptr %38, i32 0, i32 1, !dbg !2810
  %39 = load ptr, ptr %last32, align 8, !dbg !2810, !tbaa !2563
  %40 = load ptr, ptr %b, align 8, !dbg !2811, !tbaa !1944
  %pos33 = getelementptr inbounds %struct.ngx_buf_s, ptr %40, i32 0, i32 0, !dbg !2812
  %41 = load ptr, ptr %pos33, align 8, !dbg !2812, !tbaa !2569
  %sub.ptr.lhs.cast34 = ptrtoint ptr %39 to i64, !dbg !2813
  %sub.ptr.rhs.cast35 = ptrtoint ptr %41 to i64, !dbg !2813
  %sub.ptr.sub36 = sub i64 %sub.ptr.lhs.cast34, %sub.ptr.rhs.cast35, !dbg !2813
  %42 = load i64, ptr %size, align 8, !dbg !2814, !tbaa !1967
  %add = add i64 %42, %sub.ptr.sub36, !dbg !2814
  store i64 %add, ptr %size, align 8, !dbg !2814, !tbaa !1967
  %43 = load ptr, ptr %b, align 8, !dbg !2815, !tbaa !1944
  %last_buf37 = getelementptr inbounds %struct.ngx_buf_s, ptr %43, i32 0, i32 9, !dbg !2817
  %bf.load38 = load i16, ptr %last_buf37, align 8, !dbg !2817
  %bf.lshr39 = lshr i16 %bf.load38, 7, !dbg !2817
  %bf.clear40 = and i16 %bf.lshr39, 1, !dbg !2817
  %bf.cast41 = zext i16 %bf.clear40 to i32, !dbg !2817
  %tobool42 = icmp ne i32 %bf.cast41, 0, !dbg !2815
  br i1 %tobool42, label %if.then50, label %lor.lhs.false43, !dbg !2818

lor.lhs.false43:                                  ; preds = %for.body30
  %44 = load ptr, ptr %b, align 8, !dbg !2819, !tbaa !1944
  %last_in_chain44 = getelementptr inbounds %struct.ngx_buf_s, ptr %44, i32 0, i32 9, !dbg !2820
  %bf.load45 = load i16, ptr %last_in_chain44, align 8, !dbg !2820
  %bf.lshr46 = lshr i16 %bf.load45, 8, !dbg !2820
  %bf.clear47 = and i16 %bf.lshr46, 1, !dbg !2820
  %bf.cast48 = zext i16 %bf.clear47 to i32, !dbg !2820
  %tobool49 = icmp ne i32 %bf.cast48, 0, !dbg !2819
  br i1 %tobool49, label %if.then50, label %if.end51, !dbg !2821

if.then50:                                        ; preds = %lor.lhs.false43, %for.body30
  br label %for.end54, !dbg !2822

if.end51:                                         ; preds = %lor.lhs.false43
  br label %for.inc52, !dbg !2824

for.inc52:                                        ; preds = %if.end51
  %45 = load ptr, ptr %cl, align 8, !dbg !2825, !tbaa !1944
  %next53 = getelementptr inbounds %struct.ngx_chain_s, ptr %45, i32 0, i32 1, !dbg !2826
  %46 = load ptr, ptr %next53, align 8, !dbg !2826, !tbaa !2582
  store ptr %46, ptr %cl, align 8, !dbg !2827, !tbaa !1944
  br label %for.cond28, !dbg !2828, !llvm.loop !2829

for.end54:                                        ; preds = %if.then50, %for.cond28
  %47 = load ptr, ptr %L.addr, align 8, !dbg !2831, !tbaa !1944
  %48 = load i64, ptr %size, align 8, !dbg !2832, !tbaa !1967
  %call55 = call ptr @lua_newuserdata(ptr noundef %47, i64 noundef %48), !dbg !2833
  store ptr %call55, ptr %data, align 8, !dbg !2834, !tbaa !1944
  %49 = load ptr, ptr %data, align 8, !dbg !2835, !tbaa !1944
  store ptr %49, ptr %p, align 8, !dbg !2837, !tbaa !1944
  %50 = load ptr, ptr %in, align 8, !dbg !2838, !tbaa !1944
  store ptr %50, ptr %cl, align 8, !dbg !2839, !tbaa !1944
  br label %for.cond56, !dbg !2840

for.cond56:                                       ; preds = %for.inc86, %for.end54
  %51 = load ptr, ptr %cl, align 8, !dbg !2841, !tbaa !1944
  %tobool57 = icmp ne ptr %51, null, !dbg !2843
  br i1 %tobool57, label %for.body58, label %for.end88, !dbg !2843

for.body58:                                       ; preds = %for.cond56
  %52 = load ptr, ptr %cl, align 8, !dbg !2844, !tbaa !1944
  %buf59 = getelementptr inbounds %struct.ngx_chain_s, ptr %52, i32 0, i32 0, !dbg !2846
  %53 = load ptr, ptr %buf59, align 8, !dbg !2846, !tbaa !2560
  store ptr %53, ptr %b, align 8, !dbg !2847, !tbaa !1944
  %54 = load ptr, ptr %p, align 8, !dbg !2848, !tbaa !1944
  %55 = load ptr, ptr %b, align 8, !dbg !2848, !tbaa !1944
  %pos60 = getelementptr inbounds %struct.ngx_buf_s, ptr %55, i32 0, i32 0, !dbg !2848
  %56 = load ptr, ptr %pos60, align 8, !dbg !2848, !tbaa !2569
  %57 = load ptr, ptr %b, align 8, !dbg !2848, !tbaa !1944
  %last61 = getelementptr inbounds %struct.ngx_buf_s, ptr %57, i32 0, i32 1, !dbg !2848
  %58 = load ptr, ptr %last61, align 8, !dbg !2848, !tbaa !2563
  %59 = load ptr, ptr %b, align 8, !dbg !2848, !tbaa !1944
  %pos62 = getelementptr inbounds %struct.ngx_buf_s, ptr %59, i32 0, i32 0, !dbg !2848
  %60 = load ptr, ptr %pos62, align 8, !dbg !2848, !tbaa !2569
  %sub.ptr.lhs.cast63 = ptrtoint ptr %58 to i64, !dbg !2848
  %sub.ptr.rhs.cast64 = ptrtoint ptr %60 to i64, !dbg !2848
  %sub.ptr.sub65 = sub i64 %sub.ptr.lhs.cast63, %sub.ptr.rhs.cast64, !dbg !2848
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %54, ptr align 1 %56, i64 %sub.ptr.sub65, i1 false), !dbg !2848
  %61 = load ptr, ptr %b, align 8, !dbg !2848, !tbaa !1944
  %last66 = getelementptr inbounds %struct.ngx_buf_s, ptr %61, i32 0, i32 1, !dbg !2848
  %62 = load ptr, ptr %last66, align 8, !dbg !2848, !tbaa !2563
  %63 = load ptr, ptr %b, align 8, !dbg !2848, !tbaa !1944
  %pos67 = getelementptr inbounds %struct.ngx_buf_s, ptr %63, i32 0, i32 0, !dbg !2848
  %64 = load ptr, ptr %pos67, align 8, !dbg !2848, !tbaa !2569
  %sub.ptr.lhs.cast68 = ptrtoint ptr %62 to i64, !dbg !2848
  %sub.ptr.rhs.cast69 = ptrtoint ptr %64 to i64, !dbg !2848
  %sub.ptr.sub70 = sub i64 %sub.ptr.lhs.cast68, %sub.ptr.rhs.cast69, !dbg !2848
  %add.ptr = getelementptr inbounds i8, ptr %54, i64 %sub.ptr.sub70, !dbg !2848
  store ptr %add.ptr, ptr %p, align 8, !dbg !2849, !tbaa !1944
  %65 = load ptr, ptr %b, align 8, !dbg !2850, !tbaa !1944
  %last_buf71 = getelementptr inbounds %struct.ngx_buf_s, ptr %65, i32 0, i32 9, !dbg !2852
  %bf.load72 = load i16, ptr %last_buf71, align 8, !dbg !2852
  %bf.lshr73 = lshr i16 %bf.load72, 7, !dbg !2852
  %bf.clear74 = and i16 %bf.lshr73, 1, !dbg !2852
  %bf.cast75 = zext i16 %bf.clear74 to i32, !dbg !2852
  %tobool76 = icmp ne i32 %bf.cast75, 0, !dbg !2850
  br i1 %tobool76, label %if.then84, label %lor.lhs.false77, !dbg !2853

lor.lhs.false77:                                  ; preds = %for.body58
  %66 = load ptr, ptr %b, align 8, !dbg !2854, !tbaa !1944
  %last_in_chain78 = getelementptr inbounds %struct.ngx_buf_s, ptr %66, i32 0, i32 9, !dbg !2855
  %bf.load79 = load i16, ptr %last_in_chain78, align 8, !dbg !2855
  %bf.lshr80 = lshr i16 %bf.load79, 8, !dbg !2855
  %bf.clear81 = and i16 %bf.lshr80, 1, !dbg !2855
  %bf.cast82 = zext i16 %bf.clear81 to i32, !dbg !2855
  %tobool83 = icmp ne i32 %bf.cast82, 0, !dbg !2854
  br i1 %tobool83, label %if.then84, label %if.end85, !dbg !2856

if.then84:                                        ; preds = %lor.lhs.false77, %for.body58
  br label %for.end88, !dbg !2857

if.end85:                                         ; preds = %lor.lhs.false77
  br label %for.inc86, !dbg !2859

for.inc86:                                        ; preds = %if.end85
  %67 = load ptr, ptr %cl, align 8, !dbg !2860, !tbaa !1944
  %next87 = getelementptr inbounds %struct.ngx_chain_s, ptr %67, i32 0, i32 1, !dbg !2861
  %68 = load ptr, ptr %next87, align 8, !dbg !2861, !tbaa !2582
  store ptr %68, ptr %cl, align 8, !dbg !2862, !tbaa !1944
  br label %for.cond56, !dbg !2863, !llvm.loop !2864

for.end88:                                        ; preds = %if.then84, %for.cond56
  %69 = load ptr, ptr %L.addr, align 8, !dbg !2866, !tbaa !1944
  %70 = load ptr, ptr %data, align 8, !dbg !2867, !tbaa !1944
  %71 = load i64, ptr %size, align 8, !dbg !2868, !tbaa !1967
  call void @lua_pushlstring(ptr noundef %69, ptr noundef %70, i64 noundef %71), !dbg !2869
  store i32 1, ptr %retval, align 4, !dbg !2870
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2870

cleanup:                                          ; preds = %for.end88, %if.then24, %if.then19, %for.end, %if.then14, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %lmcf) #6, !dbg !2871
  call void @llvm.lifetime.end.p0(i64 8, ptr %in) #6, !dbg !2871
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #6, !dbg !2871
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #6, !dbg !2871
  call void @llvm.lifetime.end.p0(i64 8, ptr %cl) #6, !dbg !2871
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #6, !dbg !2871
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #6, !dbg !2871
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #6, !dbg !2871
  %72 = load i32, ptr %retval, align 4, !dbg !2871
  ret i32 %72, !dbg !2871
}

declare !dbg !2872 i64 @luaL_checkinteger(ptr noundef, i32 noundef) #2

declare !dbg !2874 void @lua_pushnil(ptr noundef) #2

declare !dbg !2877 void @lua_pushboolean(ptr noundef, i32 noundef) #2

declare !dbg !2878 void @lua_pushlstring(ptr noundef, ptr noundef, i64 noundef) #2

declare !dbg !2881 ptr @lua_newuserdata(ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @ngx_http_lua_body_filter_param_set(ptr noundef %L, ptr noundef %r, ptr noundef %ctx) #0 !dbg !2884 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca ptr, align 8
  %r.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %type = alloca i32, align 4
  %idx = alloca i32, align 4
  %found = alloca i32, align 4
  %data = alloca ptr, align 8
  %size = alloca i64, align 8
  %last = alloca i32, align 4
  %flush = alloca i32, align 4
  %b = alloca ptr, align 8
  %cl = alloca ptr, align 8
  %in = alloca ptr, align 8
  %lmcf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %L, ptr %L.addr, align 8, !tbaa !1944
    #dbg_declare(ptr %L.addr, !2888, !DIExpression(), !2903)
  store ptr %r, ptr %r.addr, align 8, !tbaa !1944
    #dbg_declare(ptr %r.addr, !2889, !DIExpression(), !2904)
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !1944
    #dbg_declare(ptr %ctx.addr, !2890, !DIExpression(), !2905)
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #6, !dbg !2906
    #dbg_declare(ptr %type, !2891, !DIExpression(), !2907)
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #6, !dbg !2908
    #dbg_declare(ptr %idx, !2892, !DIExpression(), !2909)
  call void @llvm.lifetime.start.p0(i64 4, ptr %found) #6, !dbg !2910
    #dbg_declare(ptr %found, !2893, !DIExpression(), !2911)
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #6, !dbg !2912
    #dbg_declare(ptr %data, !2894, !DIExpression(), !2913)
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #6, !dbg !2914
    #dbg_declare(ptr %size, !2895, !DIExpression(), !2915)
  call void @llvm.lifetime.start.p0(i64 4, ptr %last) #6, !dbg !2916
    #dbg_declare(ptr %last, !2896, !DIExpression(), !2917)
  call void @llvm.lifetime.start.p0(i64 4, ptr %flush) #6, !dbg !2918
    #dbg_declare(ptr %flush, !2897, !DIExpression(), !2919)
  store i32 0, ptr %flush, align 4, !dbg !2919, !tbaa !2718
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #6, !dbg !2920
    #dbg_declare(ptr %b, !2898, !DIExpression(), !2921)
  call void @llvm.lifetime.start.p0(i64 8, ptr %cl) #6, !dbg !2922
    #dbg_declare(ptr %cl, !2899, !DIExpression(), !2923)
  call void @llvm.lifetime.start.p0(i64 8, ptr %in) #6, !dbg !2924
    #dbg_declare(ptr %in, !2900, !DIExpression(), !2925)
  call void @llvm.lifetime.start.p0(i64 8, ptr %lmcf) #6, !dbg !2926
    #dbg_declare(ptr %lmcf, !2901, !DIExpression(), !2927)
  %0 = load ptr, ptr %L.addr, align 8, !dbg !2928, !tbaa !1944
  %call = call i64 @luaL_checkinteger(ptr noundef %0, i32 noundef 2), !dbg !2928
  %conv = trunc i64 %call to i32, !dbg !2928
  store i32 %conv, ptr %idx, align 4, !dbg !2929, !tbaa !2718
  %1 = load i32, ptr %idx, align 4, !dbg !2930, !tbaa !2718
  %cmp = icmp ne i32 %1, 1, !dbg !2932
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2933

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %idx, align 4, !dbg !2934, !tbaa !2718
  %cmp2 = icmp ne i32 %2, 2, !dbg !2935
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2936

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %L.addr, align 8, !dbg !2937, !tbaa !1944
  %4 = load i32, ptr %idx, align 4, !dbg !2939, !tbaa !2718
  %call4 = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %3, ptr noundef @.str.4, i32 noundef %4), !dbg !2940
  store i32 %call4, ptr %retval, align 4, !dbg !2941
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2941

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load ptr, ptr %r.addr, align 8, !dbg !2942, !tbaa !1944
  %main_conf = getelementptr inbounds %struct.ngx_http_request_s, ptr %5, i32 0, i32 3, !dbg !2942
  %6 = load ptr, ptr %main_conf, align 8, !dbg !2942, !tbaa !2098
  %7 = load i64, ptr @ngx_http_lua_module, align 8, !dbg !2942, !tbaa !2099
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %7, !dbg !2942
  %8 = load ptr, ptr %arrayidx, align 8, !dbg !2942, !tbaa !1944
  store ptr %8, ptr %lmcf, align 8, !dbg !2943, !tbaa !1944
  %9 = load i32, ptr %idx, align 4, !dbg !2944, !tbaa !2718
  %cmp5 = icmp eq i32 %9, 2, !dbg !2946
  br i1 %cmp5, label %if.then7, label %if.end88, !dbg !2947

if.then7:                                         ; preds = %if.end
  %10 = load ptr, ptr %L.addr, align 8, !dbg !2948, !tbaa !1944
  %call8 = call i32 @lua_toboolean(ptr noundef %10, i32 noundef 3), !dbg !2950
  store i32 %call8, ptr %last, align 4, !dbg !2951, !tbaa !2718
  %11 = load ptr, ptr %lmcf, align 8, !dbg !2952, !tbaa !1944
  %body_filter_chain = getelementptr inbounds %struct.ngx_http_lua_main_conf_s, ptr %11, i32 0, i32 22, !dbg !2953
  %12 = load ptr, ptr %body_filter_chain, align 8, !dbg !2953, !tbaa !2106
  store ptr %12, ptr %in, align 8, !dbg !2954, !tbaa !1944
  %13 = load i32, ptr %last, align 4, !dbg !2955, !tbaa !2718
  %tobool = icmp ne i32 %13, 0, !dbg !2955
  br i1 %tobool, label %if.then9, label %if.else27, !dbg !2957

if.then9:                                         ; preds = %if.then7
  %14 = load ptr, ptr %ctx.addr, align 8, !dbg !2958, !tbaa !1944
  %seen_last_in_filter = getelementptr inbounds %struct.ngx_http_lua_ctx_s, ptr %14, i32 0, i32 25, !dbg !2960
  %bf.load = load i32, ptr %seen_last_in_filter, align 2, !dbg !2961
  %bf.clear = and i32 %bf.load, -65537, !dbg !2961
  %bf.set = or i32 %bf.clear, 65536, !dbg !2961
  store i32 %bf.set, ptr %seen_last_in_filter, align 2, !dbg !2961
  %15 = load ptr, ptr %in, align 8, !dbg !2962, !tbaa !1944
  store ptr %15, ptr %cl, align 8, !dbg !2964, !tbaa !1944
  br label %for.cond, !dbg !2965

for.cond:                                         ; preds = %for.inc, %if.then9
  %16 = load ptr, ptr %cl, align 8, !dbg !2966, !tbaa !1944
  %tobool10 = icmp ne ptr %16, null, !dbg !2968
  br i1 %tobool10, label %for.body, label %for.end, !dbg !2968

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %cl, align 8, !dbg !2969, !tbaa !1944
  %next = getelementptr inbounds %struct.ngx_chain_s, ptr %17, i32 0, i32 1, !dbg !2972
  %18 = load ptr, ptr %next, align 8, !dbg !2972, !tbaa !2582
  %cmp11 = icmp eq ptr %18, null, !dbg !2973
  br i1 %cmp11, label %if.then13, label %if.end25, !dbg !2974

if.then13:                                        ; preds = %for.body
  %19 = load ptr, ptr %r.addr, align 8, !dbg !2975, !tbaa !1944
  %20 = load ptr, ptr %r.addr, align 8, !dbg !2978, !tbaa !1944
  %main = getelementptr inbounds %struct.ngx_http_request_s, ptr %20, i32 0, i32 30, !dbg !2979
  %21 = load ptr, ptr %main, align 8, !dbg !2979, !tbaa !2980
  %cmp14 = icmp eq ptr %19, %21, !dbg !2981
  br i1 %cmp14, label %if.then16, label %if.else, !dbg !2982

if.then16:                                        ; preds = %if.then13
  %22 = load ptr, ptr %cl, align 8, !dbg !2983, !tbaa !1944
  %buf = getelementptr inbounds %struct.ngx_chain_s, ptr %22, i32 0, i32 0, !dbg !2985
  %23 = load ptr, ptr %buf, align 8, !dbg !2985, !tbaa !2560
  %last_buf = getelementptr inbounds %struct.ngx_buf_s, ptr %23, i32 0, i32 9, !dbg !2986
  %bf.load17 = load i16, ptr %last_buf, align 8, !dbg !2987
  %bf.clear18 = and i16 %bf.load17, -129, !dbg !2987
  %bf.set19 = or i16 %bf.clear18, 128, !dbg !2987
  store i16 %bf.set19, ptr %last_buf, align 8, !dbg !2987
  br label %if.end24, !dbg !2988

if.else:                                          ; preds = %if.then13
  %24 = load ptr, ptr %cl, align 8, !dbg !2989, !tbaa !1944
  %buf20 = getelementptr inbounds %struct.ngx_chain_s, ptr %24, i32 0, i32 0, !dbg !2991
  %25 = load ptr, ptr %buf20, align 8, !dbg !2991, !tbaa !2560
  %last_in_chain = getelementptr inbounds %struct.ngx_buf_s, ptr %25, i32 0, i32 9, !dbg !2992
  %bf.load21 = load i16, ptr %last_in_chain, align 8, !dbg !2993
  %bf.clear22 = and i16 %bf.load21, -257, !dbg !2993
  %bf.set23 = or i16 %bf.clear22, 256, !dbg !2993
  store i16 %bf.set23, ptr %last_in_chain, align 8, !dbg !2993
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then16
  br label %for.end, !dbg !2994

if.end25:                                         ; preds = %for.body
  br label %for.inc, !dbg !2995

for.inc:                                          ; preds = %if.end25
  %26 = load ptr, ptr %cl, align 8, !dbg !2996, !tbaa !1944
  %next26 = getelementptr inbounds %struct.ngx_chain_s, ptr %26, i32 0, i32 1, !dbg !2997
  %27 = load ptr, ptr %next26, align 8, !dbg !2997, !tbaa !2582
  store ptr %27, ptr %cl, align 8, !dbg !2998, !tbaa !1944
  br label %for.cond, !dbg !2999, !llvm.loop !3000

for.end:                                          ; preds = %if.end24, %for.cond
  br label %if.end87, !dbg !3002

if.else27:                                        ; preds = %if.then7
  store i32 0, ptr %found, align 4, !dbg !3003, !tbaa !2718
  %28 = load ptr, ptr %in, align 8, !dbg !3005, !tbaa !1944
  store ptr %28, ptr %cl, align 8, !dbg !3007, !tbaa !1944
  br label %for.cond28, !dbg !3008

for.cond28:                                       ; preds = %for.inc80, %if.else27
  %29 = load ptr, ptr %cl, align 8, !dbg !3009, !tbaa !1944
  %tobool29 = icmp ne ptr %29, null, !dbg !3011
  br i1 %tobool29, label %for.body30, label %for.end82, !dbg !3011

for.body30:                                       ; preds = %for.cond28
  %30 = load ptr, ptr %cl, align 8, !dbg !3012, !tbaa !1944
  %buf31 = getelementptr inbounds %struct.ngx_chain_s, ptr %30, i32 0, i32 0, !dbg !3014
  %31 = load ptr, ptr %buf31, align 8, !dbg !3014, !tbaa !2560
  store ptr %31, ptr %b, align 8, !dbg !3015, !tbaa !1944
  %32 = load ptr, ptr %b, align 8, !dbg !3016, !tbaa !1944
  %last_buf32 = getelementptr inbounds %struct.ngx_buf_s, ptr %32, i32 0, i32 9, !dbg !3018
  %bf.load33 = load i16, ptr %last_buf32, align 8, !dbg !3018
  %bf.lshr = lshr i16 %bf.load33, 7, !dbg !3018
  %bf.clear34 = and i16 %bf.lshr, 1, !dbg !3018
  %bf.cast = zext i16 %bf.clear34 to i32, !dbg !3018
  %tobool35 = icmp ne i32 %bf.cast, 0, !dbg !3016
  br i1 %tobool35, label %if.then36, label %if.end41, !dbg !3019

if.then36:                                        ; preds = %for.body30
  %33 = load ptr, ptr %b, align 8, !dbg !3020, !tbaa !1944
  %last_buf37 = getelementptr inbounds %struct.ngx_buf_s, ptr %33, i32 0, i32 9, !dbg !3022
  %bf.load38 = load i16, ptr %last_buf37, align 8, !dbg !3023
  %bf.clear39 = and i16 %bf.load38, -129, !dbg !3023
  %bf.set40 = or i16 %bf.clear39, 0, !dbg !3023
  store i16 %bf.set40, ptr %last_buf37, align 8, !dbg !3023
  store i32 1, ptr %found, align 4, !dbg !3024, !tbaa !2718
  br label %if.end41, !dbg !3025

if.end41:                                         ; preds = %if.then36, %for.body30
  %34 = load ptr, ptr %b, align 8, !dbg !3026, !tbaa !1944
  %last_in_chain42 = getelementptr inbounds %struct.ngx_buf_s, ptr %34, i32 0, i32 9, !dbg !3028
  %bf.load43 = load i16, ptr %last_in_chain42, align 8, !dbg !3028
  %bf.lshr44 = lshr i16 %bf.load43, 8, !dbg !3028
  %bf.clear45 = and i16 %bf.lshr44, 1, !dbg !3028
  %bf.cast46 = zext i16 %bf.clear45 to i32, !dbg !3028
  %tobool47 = icmp ne i32 %bf.cast46, 0, !dbg !3026
  br i1 %tobool47, label %if.then48, label %if.end53, !dbg !3029

if.then48:                                        ; preds = %if.end41
  %35 = load ptr, ptr %b, align 8, !dbg !3030, !tbaa !1944
  %last_in_chain49 = getelementptr inbounds %struct.ngx_buf_s, ptr %35, i32 0, i32 9, !dbg !3032
  %bf.load50 = load i16, ptr %last_in_chain49, align 8, !dbg !3033
  %bf.clear51 = and i16 %bf.load50, -257, !dbg !3033
  %bf.set52 = or i16 %bf.clear51, 0, !dbg !3033
  store i16 %bf.set52, ptr %last_in_chain49, align 8, !dbg !3033
  store i32 1, ptr %found, align 4, !dbg !3034, !tbaa !2718
  br label %if.end53, !dbg !3035

if.end53:                                         ; preds = %if.then48, %if.end41
  %36 = load i32, ptr %found, align 4, !dbg !3036, !tbaa !2718
  %tobool54 = icmp ne i32 %36, 0, !dbg !3036
  br i1 %tobool54, label %land.lhs.true55, label %if.end79, !dbg !3038

land.lhs.true55:                                  ; preds = %if.end53
  %37 = load ptr, ptr %b, align 8, !dbg !3039, !tbaa !1944
  %last56 = getelementptr inbounds %struct.ngx_buf_s, ptr %37, i32 0, i32 1, !dbg !3040
  %38 = load ptr, ptr %last56, align 8, !dbg !3040, !tbaa !2563
  %39 = load ptr, ptr %b, align 8, !dbg !3041, !tbaa !1944
  %pos = getelementptr inbounds %struct.ngx_buf_s, ptr %39, i32 0, i32 0, !dbg !3042
  %40 = load ptr, ptr %pos, align 8, !dbg !3042, !tbaa !2569
  %cmp57 = icmp eq ptr %38, %40, !dbg !3043
  br i1 %cmp57, label %land.lhs.true59, label %if.end79, !dbg !3044

land.lhs.true59:                                  ; preds = %land.lhs.true55
  %41 = load ptr, ptr %b, align 8, !dbg !3045, !tbaa !1944
  %temporary = getelementptr inbounds %struct.ngx_buf_s, ptr %41, i32 0, i32 9, !dbg !3045
  %bf.load60 = load i16, ptr %temporary, align 8, !dbg !3045
  %bf.clear61 = and i16 %bf.load60, 1, !dbg !3045
  %bf.cast62 = zext i16 %bf.clear61 to i32, !dbg !3045
  %tobool63 = icmp ne i32 %bf.cast62, 0, !dbg !3045
  br i1 %tobool63, label %if.end79, label %lor.lhs.false, !dbg !3045

lor.lhs.false:                                    ; preds = %land.lhs.true59
  %42 = load ptr, ptr %b, align 8, !dbg !3045, !tbaa !1944
  %memory = getelementptr inbounds %struct.ngx_buf_s, ptr %42, i32 0, i32 9, !dbg !3045
  %bf.load64 = load i16, ptr %memory, align 8, !dbg !3045
  %bf.lshr65 = lshr i16 %bf.load64, 1, !dbg !3045
  %bf.clear66 = and i16 %bf.lshr65, 1, !dbg !3045
  %bf.cast67 = zext i16 %bf.clear66 to i32, !dbg !3045
  %tobool68 = icmp ne i32 %bf.cast67, 0, !dbg !3045
  br i1 %tobool68, label %if.end79, label %lor.lhs.false69, !dbg !3045

lor.lhs.false69:                                  ; preds = %lor.lhs.false
  %43 = load ptr, ptr %b, align 8, !dbg !3045, !tbaa !1944
  %mmap = getelementptr inbounds %struct.ngx_buf_s, ptr %43, i32 0, i32 9, !dbg !3045
  %bf.load70 = load i16, ptr %mmap, align 8, !dbg !3045
  %bf.lshr71 = lshr i16 %bf.load70, 2, !dbg !3045
  %bf.clear72 = and i16 %bf.lshr71, 1, !dbg !3045
  %bf.cast73 = zext i16 %bf.clear72 to i32, !dbg !3045
  %tobool74 = icmp ne i32 %bf.cast73, 0, !dbg !3045
  br i1 %tobool74, label %if.end79, label %if.then75, !dbg !3046

if.then75:                                        ; preds = %lor.lhs.false69
  %44 = load ptr, ptr %b, align 8, !dbg !3047, !tbaa !1944
  %sync = getelementptr inbounds %struct.ngx_buf_s, ptr %44, i32 0, i32 9, !dbg !3049
  %bf.load76 = load i16, ptr %sync, align 8, !dbg !3050
  %bf.clear77 = and i16 %bf.load76, -65, !dbg !3050
  %bf.set78 = or i16 %bf.clear77, 64, !dbg !3050
  store i16 %bf.set78, ptr %sync, align 8, !dbg !3050
  br label %if.end79, !dbg !3051

if.end79:                                         ; preds = %if.then75, %lor.lhs.false69, %lor.lhs.false, %land.lhs.true59, %land.lhs.true55, %if.end53
  br label %for.inc80, !dbg !3052

for.inc80:                                        ; preds = %if.end79
  %45 = load ptr, ptr %cl, align 8, !dbg !3053, !tbaa !1944
  %next81 = getelementptr inbounds %struct.ngx_chain_s, ptr %45, i32 0, i32 1, !dbg !3054
  %46 = load ptr, ptr %next81, align 8, !dbg !3054, !tbaa !2582
  store ptr %46, ptr %cl, align 8, !dbg !3055, !tbaa !1944
  br label %for.cond28, !dbg !3056, !llvm.loop !3057

for.end82:                                        ; preds = %for.cond28
  %47 = load ptr, ptr %ctx.addr, align 8, !dbg !3059, !tbaa !1944
  %seen_last_in_filter83 = getelementptr inbounds %struct.ngx_http_lua_ctx_s, ptr %47, i32 0, i32 25, !dbg !3060
  %bf.load84 = load i32, ptr %seen_last_in_filter83, align 2, !dbg !3061
  %bf.clear85 = and i32 %bf.load84, -65537, !dbg !3061
  %bf.set86 = or i32 %bf.clear85, 0, !dbg !3061
  store i32 %bf.set86, ptr %seen_last_in_filter83, align 2, !dbg !3061
  br label %if.end87

if.end87:                                         ; preds = %for.end82, %for.end
  store i32 0, ptr %retval, align 4, !dbg !3062
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3062

if.end88:                                         ; preds = %if.end
  %48 = load ptr, ptr %L.addr, align 8, !dbg !3063, !tbaa !1944
  %call89 = call i32 @lua_type(ptr noundef %48, i32 noundef 3), !dbg !3064
  store i32 %call89, ptr %type, align 4, !dbg !3065, !tbaa !2718
  %49 = load i32, ptr %type, align 4, !dbg !3066, !tbaa !2718
  switch i32 %49, label %sw.default [
    i32 4, label %sw.bb
    i32 3, label %sw.bb
    i32 0, label %sw.bb91
    i32 5, label %sw.bb125
  ], !dbg !3067

sw.bb:                                            ; preds = %if.end88, %if.end88
  %50 = load ptr, ptr %L.addr, align 8, !dbg !3068, !tbaa !1944
  %call90 = call ptr @lua_tolstring(ptr noundef %50, i32 noundef 3, ptr noundef %size), !dbg !3070
  store ptr %call90, ptr %data, align 8, !dbg !3071, !tbaa !1944
  br label %sw.epilog, !dbg !3072

sw.bb91:                                          ; preds = %if.end88
  %51 = load ptr, ptr %lmcf, align 8, !dbg !3073, !tbaa !1944
  %body_filter_chain92 = getelementptr inbounds %struct.ngx_http_lua_main_conf_s, ptr %51, i32 0, i32 22, !dbg !3074
  %52 = load ptr, ptr %body_filter_chain92, align 8, !dbg !3074, !tbaa !2106
  store ptr %52, ptr %in, align 8, !dbg !3075, !tbaa !1944
  store i32 0, ptr %last, align 4, !dbg !3076, !tbaa !2718
  %53 = load ptr, ptr %in, align 8, !dbg !3077, !tbaa !1944
  store ptr %53, ptr %cl, align 8, !dbg !3079, !tbaa !1944
  br label %for.cond93, !dbg !3080

for.cond93:                                       ; preds = %for.inc122, %sw.bb91
  %54 = load ptr, ptr %cl, align 8, !dbg !3081, !tbaa !1944
  %tobool94 = icmp ne ptr %54, null, !dbg !3083
  br i1 %tobool94, label %for.body95, label %for.end124, !dbg !3083

for.body95:                                       ; preds = %for.cond93
  %55 = load ptr, ptr %cl, align 8, !dbg !3084, !tbaa !1944
  %buf96 = getelementptr inbounds %struct.ngx_chain_s, ptr %55, i32 0, i32 0, !dbg !3086
  %56 = load ptr, ptr %buf96, align 8, !dbg !3086, !tbaa !2560
  store ptr %56, ptr %b, align 8, !dbg !3087, !tbaa !1944
  %57 = load ptr, ptr %b, align 8, !dbg !3088, !tbaa !1944
  %flush97 = getelementptr inbounds %struct.ngx_buf_s, ptr %57, i32 0, i32 9, !dbg !3090
  %bf.load98 = load i16, ptr %flush97, align 8, !dbg !3090
  %bf.lshr99 = lshr i16 %bf.load98, 5, !dbg !3090
  %bf.clear100 = and i16 %bf.lshr99, 1, !dbg !3090
  %bf.cast101 = zext i16 %bf.clear100 to i32, !dbg !3090
  %tobool102 = icmp ne i32 %bf.cast101, 0, !dbg !3088
  br i1 %tobool102, label %if.then103, label %if.end104, !dbg !3091

if.then103:                                       ; preds = %for.body95
  store i32 1, ptr %flush, align 4, !dbg !3092, !tbaa !2718
  br label %if.end104, !dbg !3094

if.end104:                                        ; preds = %if.then103, %for.body95
  %58 = load ptr, ptr %b, align 8, !dbg !3095, !tbaa !1944
  %last_in_chain105 = getelementptr inbounds %struct.ngx_buf_s, ptr %58, i32 0, i32 9, !dbg !3097
  %bf.load106 = load i16, ptr %last_in_chain105, align 8, !dbg !3097
  %bf.lshr107 = lshr i16 %bf.load106, 8, !dbg !3097
  %bf.clear108 = and i16 %bf.lshr107, 1, !dbg !3097
  %bf.cast109 = zext i16 %bf.clear108 to i32, !dbg !3097
  %tobool110 = icmp ne i32 %bf.cast109, 0, !dbg !3095
  br i1 %tobool110, label %if.then118, label %lor.lhs.false111, !dbg !3098

lor.lhs.false111:                                 ; preds = %if.end104
  %59 = load ptr, ptr %b, align 8, !dbg !3099, !tbaa !1944
  %last_buf112 = getelementptr inbounds %struct.ngx_buf_s, ptr %59, i32 0, i32 9, !dbg !3100
  %bf.load113 = load i16, ptr %last_buf112, align 8, !dbg !3100
  %bf.lshr114 = lshr i16 %bf.load113, 7, !dbg !3100
  %bf.clear115 = and i16 %bf.lshr114, 1, !dbg !3100
  %bf.cast116 = zext i16 %bf.clear115 to i32, !dbg !3100
  %tobool117 = icmp ne i32 %bf.cast116, 0, !dbg !3099
  br i1 %tobool117, label %if.then118, label %if.end119, !dbg !3101

if.then118:                                       ; preds = %lor.lhs.false111, %if.end104
  store i32 1, ptr %last, align 4, !dbg !3102, !tbaa !2718
  br label %if.end119, !dbg !3104

if.end119:                                        ; preds = %if.then118, %lor.lhs.false111
  %60 = load ptr, ptr %b, align 8, !dbg !3105, !tbaa !1944
  %last120 = getelementptr inbounds %struct.ngx_buf_s, ptr %60, i32 0, i32 1, !dbg !3106
  %61 = load ptr, ptr %last120, align 8, !dbg !3106, !tbaa !2563
  %62 = load ptr, ptr %b, align 8, !dbg !3107, !tbaa !1944
  %pos121 = getelementptr inbounds %struct.ngx_buf_s, ptr %62, i32 0, i32 0, !dbg !3108
  store ptr %61, ptr %pos121, align 8, !dbg !3109, !tbaa !2569
  br label %for.inc122, !dbg !3110

for.inc122:                                       ; preds = %if.end119
  %63 = load ptr, ptr %cl, align 8, !dbg !3111, !tbaa !1944
  %next123 = getelementptr inbounds %struct.ngx_chain_s, ptr %63, i32 0, i32 1, !dbg !3112
  %64 = load ptr, ptr %next123, align 8, !dbg !3112, !tbaa !2582
  store ptr %64, ptr %cl, align 8, !dbg !3113, !tbaa !1944
  br label %for.cond93, !dbg !3114, !llvm.loop !3115

for.end124:                                       ; preds = %for.cond93
  br label %done, !dbg !3117

sw.bb125:                                         ; preds = %if.end88
  %65 = load ptr, ptr %L.addr, align 8, !dbg !3118, !tbaa !1944
  %call126 = call i64 @ngx_http_lua_calc_strlen_in_table(ptr noundef %65, i32 noundef 3, i32 noundef 3, i32 noundef 1), !dbg !3119
  store i64 %call126, ptr %size, align 8, !dbg !3120, !tbaa !1967
  store ptr null, ptr %data, align 8, !dbg !3121, !tbaa !1944
  br label %sw.epilog, !dbg !3122

sw.default:                                       ; preds = %if.end88
  %66 = load ptr, ptr %L.addr, align 8, !dbg !3123, !tbaa !1944
  %67 = load ptr, ptr %L.addr, align 8, !dbg !3124, !tbaa !1944
  %68 = load i32, ptr %type, align 4, !dbg !3125, !tbaa !2718
  %call127 = call ptr @lua_typename(ptr noundef %67, i32 noundef %68), !dbg !3126
  %call128 = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %66, ptr noundef @.str.5, ptr noundef %call127), !dbg !3127
  store i32 %call128, ptr %retval, align 4, !dbg !3128
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3128

sw.epilog:                                        ; preds = %sw.bb125, %sw.bb
  %69 = load ptr, ptr %lmcf, align 8, !dbg !3129, !tbaa !1944
  %body_filter_chain129 = getelementptr inbounds %struct.ngx_http_lua_main_conf_s, ptr %69, i32 0, i32 22, !dbg !3130
  %70 = load ptr, ptr %body_filter_chain129, align 8, !dbg !3130, !tbaa !2106
  store ptr %70, ptr %in, align 8, !dbg !3131, !tbaa !1944
  store i32 0, ptr %last, align 4, !dbg !3132, !tbaa !2718
  %71 = load ptr, ptr %in, align 8, !dbg !3133, !tbaa !1944
  store ptr %71, ptr %cl, align 8, !dbg !3135, !tbaa !1944
  br label %for.cond130, !dbg !3136

for.cond130:                                      ; preds = %for.inc161, %sw.epilog
  %72 = load ptr, ptr %cl, align 8, !dbg !3137, !tbaa !1944
  %tobool131 = icmp ne ptr %72, null, !dbg !3139
  br i1 %tobool131, label %for.body132, label %for.end163, !dbg !3139

for.body132:                                      ; preds = %for.cond130
  %73 = load ptr, ptr %cl, align 8, !dbg !3140, !tbaa !1944
  %buf133 = getelementptr inbounds %struct.ngx_chain_s, ptr %73, i32 0, i32 0, !dbg !3142
  %74 = load ptr, ptr %buf133, align 8, !dbg !3142, !tbaa !2560
  store ptr %74, ptr %b, align 8, !dbg !3143, !tbaa !1944
  %75 = load ptr, ptr %b, align 8, !dbg !3144, !tbaa !1944
  %flush134 = getelementptr inbounds %struct.ngx_buf_s, ptr %75, i32 0, i32 9, !dbg !3146
  %bf.load135 = load i16, ptr %flush134, align 8, !dbg !3146
  %bf.lshr136 = lshr i16 %bf.load135, 5, !dbg !3146
  %bf.clear137 = and i16 %bf.lshr136, 1, !dbg !3146
  %bf.cast138 = zext i16 %bf.clear137 to i32, !dbg !3146
  %tobool139 = icmp ne i32 %bf.cast138, 0, !dbg !3144
  br i1 %tobool139, label %if.then140, label %if.end141, !dbg !3147

if.then140:                                       ; preds = %for.body132
  store i32 1, ptr %flush, align 4, !dbg !3148, !tbaa !2718
  br label %if.end141, !dbg !3150

if.end141:                                        ; preds = %if.then140, %for.body132
  %76 = load ptr, ptr %b, align 8, !dbg !3151, !tbaa !1944
  %last_buf142 = getelementptr inbounds %struct.ngx_buf_s, ptr %76, i32 0, i32 9, !dbg !3153
  %bf.load143 = load i16, ptr %last_buf142, align 8, !dbg !3153
  %bf.lshr144 = lshr i16 %bf.load143, 7, !dbg !3153
  %bf.clear145 = and i16 %bf.lshr144, 1, !dbg !3153
  %bf.cast146 = zext i16 %bf.clear145 to i32, !dbg !3153
  %tobool147 = icmp ne i32 %bf.cast146, 0, !dbg !3151
  br i1 %tobool147, label %if.then155, label %lor.lhs.false148, !dbg !3154

lor.lhs.false148:                                 ; preds = %if.end141
  %77 = load ptr, ptr %b, align 8, !dbg !3155, !tbaa !1944
  %last_in_chain149 = getelementptr inbounds %struct.ngx_buf_s, ptr %77, i32 0, i32 9, !dbg !3156
  %bf.load150 = load i16, ptr %last_in_chain149, align 8, !dbg !3156
  %bf.lshr151 = lshr i16 %bf.load150, 8, !dbg !3156
  %bf.clear152 = and i16 %bf.lshr151, 1, !dbg !3156
  %bf.cast153 = zext i16 %bf.clear152 to i32, !dbg !3156
  %tobool154 = icmp ne i32 %bf.cast153, 0, !dbg !3155
  br i1 %tobool154, label %if.then155, label %if.end156, !dbg !3157

if.then155:                                       ; preds = %lor.lhs.false148, %if.end141
  store i32 1, ptr %last, align 4, !dbg !3158, !tbaa !2718
  br label %if.end156, !dbg !3160

if.end156:                                        ; preds = %if.then155, %lor.lhs.false148
  %78 = load ptr, ptr %cl, align 8, !dbg !3161, !tbaa !1944
  %buf157 = getelementptr inbounds %struct.ngx_chain_s, ptr %78, i32 0, i32 0, !dbg !3162
  %79 = load ptr, ptr %buf157, align 8, !dbg !3162, !tbaa !2560
  %last158 = getelementptr inbounds %struct.ngx_buf_s, ptr %79, i32 0, i32 1, !dbg !3163
  %80 = load ptr, ptr %last158, align 8, !dbg !3163, !tbaa !2563
  %81 = load ptr, ptr %cl, align 8, !dbg !3164, !tbaa !1944
  %buf159 = getelementptr inbounds %struct.ngx_chain_s, ptr %81, i32 0, i32 0, !dbg !3165
  %82 = load ptr, ptr %buf159, align 8, !dbg !3165, !tbaa !2560
  %pos160 = getelementptr inbounds %struct.ngx_buf_s, ptr %82, i32 0, i32 0, !dbg !3166
  store ptr %80, ptr %pos160, align 8, !dbg !3167, !tbaa !2569
  br label %for.inc161, !dbg !3168

for.inc161:                                       ; preds = %if.end156
  %83 = load ptr, ptr %cl, align 8, !dbg !3169, !tbaa !1944
  %next162 = getelementptr inbounds %struct.ngx_chain_s, ptr %83, i32 0, i32 1, !dbg !3170
  %84 = load ptr, ptr %next162, align 8, !dbg !3170, !tbaa !2582
  store ptr %84, ptr %cl, align 8, !dbg !3171, !tbaa !1944
  br label %for.cond130, !dbg !3172, !llvm.loop !3173

for.end163:                                       ; preds = %for.cond130
  %85 = load i64, ptr %size, align 8, !dbg !3175, !tbaa !1967
  %cmp164 = icmp eq i64 %85, 0, !dbg !3177
  br i1 %cmp164, label %if.then166, label %if.end167, !dbg !3178

if.then166:                                       ; preds = %for.end163
  br label %done, !dbg !3179

if.end167:                                        ; preds = %for.end163
  %86 = load ptr, ptr %r.addr, align 8, !dbg !3181, !tbaa !1944
  %connection = getelementptr inbounds %struct.ngx_http_request_s, ptr %86, i32 0, i32 1, !dbg !3182
  %87 = load ptr, ptr %connection, align 8, !dbg !3182, !tbaa !1989
  %log = getelementptr inbounds %struct.ngx_connection_s, ptr %87, i32 0, i32 10, !dbg !3183
  %88 = load ptr, ptr %log, align 8, !dbg !3183, !tbaa !1998
  %89 = load ptr, ptr %r.addr, align 8, !dbg !3184, !tbaa !1944
  %pool = getelementptr inbounds %struct.ngx_http_request_s, ptr %89, i32 0, i32 11, !dbg !3185
  %90 = load ptr, ptr %pool, align 8, !dbg !3185, !tbaa !2421
  %91 = load ptr, ptr %ctx.addr, align 8, !dbg !3186, !tbaa !1944
  %free_bufs = getelementptr inbounds %struct.ngx_http_lua_ctx_s, ptr %91, i32 0, i32 10, !dbg !3187
  %92 = load i64, ptr %size, align 8, !dbg !3188, !tbaa !1967
  %call168 = call ptr @ngx_http_lua_chain_get_free_buf(ptr noundef %88, ptr noundef %90, ptr noundef %free_bufs, i64 noundef %92), !dbg !3189
  store ptr %call168, ptr %cl, align 8, !dbg !3190, !tbaa !1944
  %93 = load ptr, ptr %cl, align 8, !dbg !3191, !tbaa !1944
  %cmp169 = icmp eq ptr %93, null, !dbg !3193
  br i1 %cmp169, label %if.then171, label %if.end173, !dbg !3194

if.then171:                                       ; preds = %if.end167
  %94 = load ptr, ptr %L.addr, align 8, !dbg !3195, !tbaa !1944
  %call172 = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %94, ptr noundef @.str.6), !dbg !3197
  store i32 %call172, ptr %retval, align 4, !dbg !3198
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3198

if.end173:                                        ; preds = %if.end167
  %95 = load i32, ptr %type, align 4, !dbg !3199, !tbaa !2718
  %cmp174 = icmp eq i32 %95, 5, !dbg !3201
  br i1 %cmp174, label %if.then176, label %if.else182, !dbg !3202

if.then176:                                       ; preds = %if.end173
  %96 = load ptr, ptr %L.addr, align 8, !dbg !3203, !tbaa !1944
  %97 = load ptr, ptr %cl, align 8, !dbg !3205, !tbaa !1944
  %buf177 = getelementptr inbounds %struct.ngx_chain_s, ptr %97, i32 0, i32 0, !dbg !3206
  %98 = load ptr, ptr %buf177, align 8, !dbg !3206, !tbaa !2560
  %last178 = getelementptr inbounds %struct.ngx_buf_s, ptr %98, i32 0, i32 1, !dbg !3207
  %99 = load ptr, ptr %last178, align 8, !dbg !3207, !tbaa !2563
  %call179 = call ptr @ngx_http_lua_copy_str_in_table(ptr noundef %96, i32 noundef 3, ptr noundef %99), !dbg !3208
  %100 = load ptr, ptr %cl, align 8, !dbg !3209, !tbaa !1944
  %buf180 = getelementptr inbounds %struct.ngx_chain_s, ptr %100, i32 0, i32 0, !dbg !3210
  %101 = load ptr, ptr %buf180, align 8, !dbg !3210, !tbaa !2560
  %last181 = getelementptr inbounds %struct.ngx_buf_s, ptr %101, i32 0, i32 1, !dbg !3211
  store ptr %call179, ptr %last181, align 8, !dbg !3212, !tbaa !2563
  br label %if.end187, !dbg !3213

if.else182:                                       ; preds = %if.end173
  %102 = load ptr, ptr %cl, align 8, !dbg !3214, !tbaa !1944
  %buf183 = getelementptr inbounds %struct.ngx_chain_s, ptr %102, i32 0, i32 0, !dbg !3214
  %103 = load ptr, ptr %buf183, align 8, !dbg !3214, !tbaa !2560
  %pos184 = getelementptr inbounds %struct.ngx_buf_s, ptr %103, i32 0, i32 0, !dbg !3214
  %104 = load ptr, ptr %pos184, align 8, !dbg !3214, !tbaa !2569
  %105 = load ptr, ptr %data, align 8, !dbg !3214, !tbaa !1944
  %106 = load i64, ptr %size, align 8, !dbg !3214, !tbaa !1967
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %104, ptr align 1 %105, i64 %106, i1 false), !dbg !3214
  %107 = load i64, ptr %size, align 8, !dbg !3214, !tbaa !1967
  %add.ptr = getelementptr inbounds i8, ptr %104, i64 %107, !dbg !3214
  %108 = load ptr, ptr %cl, align 8, !dbg !3216, !tbaa !1944
  %buf185 = getelementptr inbounds %struct.ngx_chain_s, ptr %108, i32 0, i32 0, !dbg !3217
  %109 = load ptr, ptr %buf185, align 8, !dbg !3217, !tbaa !2560
  %last186 = getelementptr inbounds %struct.ngx_buf_s, ptr %109, i32 0, i32 1, !dbg !3218
  store ptr %add.ptr, ptr %last186, align 8, !dbg !3219, !tbaa !2563
  br label %if.end187

if.end187:                                        ; preds = %if.else182, %if.then176
  br label %done, !dbg !3220

done:                                             ; preds = %if.end187, %if.then166, %for.end124
    #dbg_label(!2902, !3221)
  %110 = load i32, ptr %last, align 4, !dbg !3222, !tbaa !2718
  %tobool188 = icmp ne i32 %110, 0, !dbg !3222
  br i1 %tobool188, label %if.then191, label %lor.lhs.false189, !dbg !3224

lor.lhs.false189:                                 ; preds = %done
  %111 = load i32, ptr %flush, align 4, !dbg !3225, !tbaa !2718
  %tobool190 = icmp ne i32 %111, 0, !dbg !3225
  br i1 %tobool190, label %if.then191, label %if.end237, !dbg !3226

if.then191:                                       ; preds = %lor.lhs.false189, %done
  %112 = load ptr, ptr %cl, align 8, !dbg !3227, !tbaa !1944
  %cmp192 = icmp eq ptr %112, null, !dbg !3230
  br i1 %cmp192, label %if.then194, label %if.end205, !dbg !3231

if.then194:                                       ; preds = %if.then191
  %113 = load ptr, ptr %r.addr, align 8, !dbg !3232, !tbaa !1944
  %connection195 = getelementptr inbounds %struct.ngx_http_request_s, ptr %113, i32 0, i32 1, !dbg !3234
  %114 = load ptr, ptr %connection195, align 8, !dbg !3234, !tbaa !1989
  %log196 = getelementptr inbounds %struct.ngx_connection_s, ptr %114, i32 0, i32 10, !dbg !3235
  %115 = load ptr, ptr %log196, align 8, !dbg !3235, !tbaa !1998
  %116 = load ptr, ptr %r.addr, align 8, !dbg !3236, !tbaa !1944
  %pool197 = getelementptr inbounds %struct.ngx_http_request_s, ptr %116, i32 0, i32 11, !dbg !3237
  %117 = load ptr, ptr %pool197, align 8, !dbg !3237, !tbaa !2421
  %118 = load ptr, ptr %ctx.addr, align 8, !dbg !3238, !tbaa !1944
  %free_bufs198 = getelementptr inbounds %struct.ngx_http_lua_ctx_s, ptr %118, i32 0, i32 10, !dbg !3239
  %call199 = call ptr @ngx_http_lua_chain_get_free_buf(ptr noundef %115, ptr noundef %117, ptr noundef %free_bufs198, i64 noundef 0), !dbg !3240
  store ptr %call199, ptr %cl, align 8, !dbg !3241, !tbaa !1944
  %119 = load ptr, ptr %cl, align 8, !dbg !3242, !tbaa !1944
  %cmp200 = icmp eq ptr %119, null, !dbg !3244
  br i1 %cmp200, label %if.then202, label %if.end204, !dbg !3245

if.then202:                                       ; preds = %if.then194
  %120 = load ptr, ptr %L.addr, align 8, !dbg !3246, !tbaa !1944
  %call203 = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %120, ptr noundef @.str.6), !dbg !3248
  store i32 %call203, ptr %retval, align 4, !dbg !3249
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3249

if.end204:                                        ; preds = %if.then194
  br label %if.end205, !dbg !3250

if.end205:                                        ; preds = %if.end204, %if.then191
  %121 = load i32, ptr %last, align 4, !dbg !3251, !tbaa !2718
  %tobool206 = icmp ne i32 %121, 0, !dbg !3251
  br i1 %tobool206, label %if.then207, label %if.end228, !dbg !3253

if.then207:                                       ; preds = %if.end205
  %122 = load ptr, ptr %ctx.addr, align 8, !dbg !3254, !tbaa !1944
  %seen_last_in_filter208 = getelementptr inbounds %struct.ngx_http_lua_ctx_s, ptr %122, i32 0, i32 25, !dbg !3256
  %bf.load209 = load i32, ptr %seen_last_in_filter208, align 2, !dbg !3257
  %bf.clear210 = and i32 %bf.load209, -65537, !dbg !3257
  %bf.set211 = or i32 %bf.clear210, 65536, !dbg !3257
  store i32 %bf.set211, ptr %seen_last_in_filter208, align 2, !dbg !3257
  %123 = load ptr, ptr %r.addr, align 8, !dbg !3258, !tbaa !1944
  %124 = load ptr, ptr %r.addr, align 8, !dbg !3260, !tbaa !1944
  %main212 = getelementptr inbounds %struct.ngx_http_request_s, ptr %124, i32 0, i32 30, !dbg !3261
  %125 = load ptr, ptr %main212, align 8, !dbg !3261, !tbaa !2980
  %cmp213 = icmp eq ptr %123, %125, !dbg !3262
  br i1 %cmp213, label %if.then215, label %if.else221, !dbg !3263

if.then215:                                       ; preds = %if.then207
  %126 = load ptr, ptr %cl, align 8, !dbg !3264, !tbaa !1944
  %buf216 = getelementptr inbounds %struct.ngx_chain_s, ptr %126, i32 0, i32 0, !dbg !3266
  %127 = load ptr, ptr %buf216, align 8, !dbg !3266, !tbaa !2560
  %last_buf217 = getelementptr inbounds %struct.ngx_buf_s, ptr %127, i32 0, i32 9, !dbg !3267
  %bf.load218 = load i16, ptr %last_buf217, align 8, !dbg !3268
  %bf.clear219 = and i16 %bf.load218, -129, !dbg !3268
  %bf.set220 = or i16 %bf.clear219, 128, !dbg !3268
  store i16 %bf.set220, ptr %last_buf217, align 8, !dbg !3268
  br label %if.end227, !dbg !3269

if.else221:                                       ; preds = %if.then207
  %128 = load ptr, ptr %cl, align 8, !dbg !3270, !tbaa !1944
  %buf222 = getelementptr inbounds %struct.ngx_chain_s, ptr %128, i32 0, i32 0, !dbg !3272
  %129 = load ptr, ptr %buf222, align 8, !dbg !3272, !tbaa !2560
  %last_in_chain223 = getelementptr inbounds %struct.ngx_buf_s, ptr %129, i32 0, i32 9, !dbg !3273
  %bf.load224 = load i16, ptr %last_in_chain223, align 8, !dbg !3274
  %bf.clear225 = and i16 %bf.load224, -257, !dbg !3274
  %bf.set226 = or i16 %bf.clear225, 256, !dbg !3274
  store i16 %bf.set226, ptr %last_in_chain223, align 8, !dbg !3274
  br label %if.end227

if.end227:                                        ; preds = %if.else221, %if.then215
  br label %if.end228, !dbg !3275

if.end228:                                        ; preds = %if.end227, %if.end205
  %130 = load i32, ptr %flush, align 4, !dbg !3276, !tbaa !2718
  %tobool229 = icmp ne i32 %130, 0, !dbg !3276
  br i1 %tobool229, label %if.then230, label %if.end236, !dbg !3278

if.then230:                                       ; preds = %if.end228
  %131 = load ptr, ptr %cl, align 8, !dbg !3279, !tbaa !1944
  %buf231 = getelementptr inbounds %struct.ngx_chain_s, ptr %131, i32 0, i32 0, !dbg !3281
  %132 = load ptr, ptr %buf231, align 8, !dbg !3281, !tbaa !2560
  %flush232 = getelementptr inbounds %struct.ngx_buf_s, ptr %132, i32 0, i32 9, !dbg !3282
  %bf.load233 = load i16, ptr %flush232, align 8, !dbg !3283
  %bf.clear234 = and i16 %bf.load233, -33, !dbg !3283
  %bf.set235 = or i16 %bf.clear234, 32, !dbg !3283
  store i16 %bf.set235, ptr %flush232, align 8, !dbg !3283
  br label %if.end236, !dbg !3284

if.end236:                                        ; preds = %if.then230, %if.end228
  br label %if.end237, !dbg !3285

if.end237:                                        ; preds = %if.end236, %lor.lhs.false189
  %133 = load ptr, ptr %cl, align 8, !dbg !3286, !tbaa !1944
  %134 = load ptr, ptr %lmcf, align 8, !dbg !3287, !tbaa !1944
  %body_filter_chain238 = getelementptr inbounds %struct.ngx_http_lua_main_conf_s, ptr %134, i32 0, i32 22, !dbg !3288
  store ptr %133, ptr %body_filter_chain238, align 8, !dbg !3289, !tbaa !2106
  store i32 0, ptr %retval, align 4, !dbg !3290
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3290

cleanup:                                          ; preds = %if.end237, %if.then202, %if.then171, %sw.default, %if.end87, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %lmcf) #6, !dbg !3291
  call void @llvm.lifetime.end.p0(i64 8, ptr %in) #6, !dbg !3291
  call void @llvm.lifetime.end.p0(i64 8, ptr %cl) #6, !dbg !3291
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #6, !dbg !3291
  call void @llvm.lifetime.end.p0(i64 4, ptr %flush) #6, !dbg !3291
  call void @llvm.lifetime.end.p0(i64 4, ptr %last) #6, !dbg !3291
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #6, !dbg !3291
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #6, !dbg !3291
  call void @llvm.lifetime.end.p0(i64 4, ptr %found) #6, !dbg !3291
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #6, !dbg !3291
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #6, !dbg !3291
  %135 = load i32, ptr %retval, align 4, !dbg !3291
  ret i32 %135, !dbg !3291
}

declare !dbg !3292 i32 @luaL_error(ptr noundef, ptr noundef, ...) #2

declare !dbg !3295 i32 @lua_toboolean(ptr noundef, i32 noundef) #2

declare !dbg !3298 i32 @lua_type(ptr noundef, i32 noundef) #2

declare !dbg !3299 i64 @ngx_http_lua_calc_strlen_in_table(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare !dbg !3303 ptr @lua_typename(ptr noundef, i32 noundef) #2

declare !dbg !3306 ptr @ngx_http_lua_chain_get_free_buf(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

declare !dbg !3309 ptr @ngx_http_lua_copy_str_in_table(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @ngx_http_lua_set_req(ptr noundef %L, ptr noundef %r) #3 !dbg !3312 {
entry:
  %L.addr = alloca ptr, align 8
  %r.addr = alloca ptr, align 8
  store ptr %L, ptr %L.addr, align 8, !tbaa !1944
    #dbg_declare(ptr %L.addr, !3316, !DIExpression(), !3318)
  store ptr %r, ptr %r.addr, align 8, !tbaa !1944
    #dbg_declare(ptr %r.addr, !3317, !DIExpression(), !3319)
  %0 = load ptr, ptr %L.addr, align 8, !dbg !3320, !tbaa !1944
  %1 = load ptr, ptr %r.addr, align 8, !dbg !3321, !tbaa !1944
  call void @lua_setexdata(ptr noundef %0, ptr noundef %1), !dbg !3322
  ret void, !dbg !3323
}

declare !dbg !3324 void @lua_setexdata(ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @ngx_http_lua_create_ctx(ptr noundef %r) #3 !dbg !3327 {
entry:
  %retval = alloca ptr, align 8
  %r.addr = alloca ptr, align 8
  %L = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %cln = alloca ptr, align 8
  %llcf = alloca ptr, align 8
  %lmcf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !1944
    #dbg_declare(ptr %r.addr, !3331, !DIExpression(), !3337)
  call void @llvm.lifetime.start.p0(i64 8, ptr %L) #6, !dbg !3338
    #dbg_declare(ptr %L, !3332, !DIExpression(), !3339)
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #6, !dbg !3340
    #dbg_declare(ptr %ctx, !3333, !DIExpression(), !3341)
  call void @llvm.lifetime.start.p0(i64 8, ptr %cln) #6, !dbg !3342
    #dbg_declare(ptr %cln, !3334, !DIExpression(), !3343)
  call void @llvm.lifetime.start.p0(i64 8, ptr %llcf) #6, !dbg !3344
    #dbg_declare(ptr %llcf, !3335, !DIExpression(), !3345)
  call void @llvm.lifetime.start.p0(i64 8, ptr %lmcf) #6, !dbg !3346
    #dbg_declare(ptr %lmcf, !3336, !DIExpression(), !3347)
  %0 = load ptr, ptr %r.addr, align 8, !dbg !3348, !tbaa !1944
  %pool = getelementptr inbounds %struct.ngx_http_request_s, ptr %0, i32 0, i32 11, !dbg !3349
  %1 = load ptr, ptr %pool, align 8, !dbg !3349, !tbaa !2421
  %call = call ptr @ngx_palloc(ptr noundef %1, i64 noundef 400), !dbg !3350
  store ptr %call, ptr %ctx, align 8, !dbg !3351, !tbaa !1944
  %2 = load ptr, ptr %ctx, align 8, !dbg !3352, !tbaa !1944
  %cmp = icmp eq ptr %2, null, !dbg !3354
  br i1 %cmp, label %if.then, label %if.end, !dbg !3355

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !3356
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3356

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %r.addr, align 8, !dbg !3358, !tbaa !1944
  %4 = load ptr, ptr %ctx, align 8, !dbg !3359, !tbaa !1944
  call void @ngx_http_lua_init_ctx(ptr noundef %3, ptr noundef %4), !dbg !3360
  %5 = load ptr, ptr %ctx, align 8, !dbg !3361, !tbaa !1944
  %6 = load ptr, ptr %r.addr, align 8, !dbg !3361, !tbaa !1944
  %ctx1 = getelementptr inbounds %struct.ngx_http_request_s, ptr %6, i32 0, i32 2, !dbg !3361
  %7 = load ptr, ptr %ctx1, align 8, !dbg !3361, !tbaa !2353
  %8 = load i64, ptr @ngx_http_lua_module, align 8, !dbg !3361, !tbaa !2099
  %arrayidx = getelementptr inbounds ptr, ptr %7, i64 %8, !dbg !3361
  store ptr %5, ptr %arrayidx, align 8, !dbg !3361, !tbaa !1944
  %9 = load ptr, ptr %r.addr, align 8, !dbg !3362, !tbaa !1944
  %loc_conf = getelementptr inbounds %struct.ngx_http_request_s, ptr %9, i32 0, i32 5, !dbg !3362
  %10 = load ptr, ptr %loc_conf, align 8, !dbg !3362, !tbaa !2201
  %11 = load i64, ptr @ngx_http_lua_module, align 8, !dbg !3362, !tbaa !2099
  %arrayidx2 = getelementptr inbounds ptr, ptr %10, i64 %11, !dbg !3362
  %12 = load ptr, ptr %arrayidx2, align 8, !dbg !3362, !tbaa !1944
  store ptr %12, ptr %llcf, align 8, !dbg !3363, !tbaa !1944
  %13 = load ptr, ptr %llcf, align 8, !dbg !3364, !tbaa !1944
  %enable_code_cache = getelementptr inbounds %struct.ngx_http_lua_loc_conf_t, ptr %13, i32 0, i32 7, !dbg !3366
  %14 = load i64, ptr %enable_code_cache, align 8, !dbg !3366, !tbaa !3367
  %tobool = icmp ne i64 %14, 0, !dbg !3364
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !3368

land.lhs.true:                                    ; preds = %if.end
  %15 = load ptr, ptr %r.addr, align 8, !dbg !3369, !tbaa !1944
  %connection = getelementptr inbounds %struct.ngx_http_request_s, ptr %15, i32 0, i32 1, !dbg !3370
  %16 = load ptr, ptr %connection, align 8, !dbg !3370, !tbaa !1989
  %fd = getelementptr inbounds %struct.ngx_connection_s, ptr %16, i32 0, i32 3, !dbg !3371
  %17 = load i32, ptr %fd, align 8, !dbg !3371, !tbaa !3372
  %cmp3 = icmp ne i32 %17, -1, !dbg !3373
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !3374

if.then4:                                         ; preds = %land.lhs.true
  %18 = load ptr, ptr %r.addr, align 8, !dbg !3375, !tbaa !1944
  %main_conf = getelementptr inbounds %struct.ngx_http_request_s, ptr %18, i32 0, i32 3, !dbg !3375
  %19 = load ptr, ptr %main_conf, align 8, !dbg !3375, !tbaa !2098
  %20 = load i64, ptr @ngx_http_lua_module, align 8, !dbg !3375, !tbaa !2099
  %arrayidx5 = getelementptr inbounds ptr, ptr %19, i64 %20, !dbg !3375
  %21 = load ptr, ptr %arrayidx5, align 8, !dbg !3375, !tbaa !1944
  store ptr %21, ptr %lmcf, align 8, !dbg !3377, !tbaa !1944
  %22 = load ptr, ptr %lmcf, align 8, !dbg !3378, !tbaa !1944
  %lua = getelementptr inbounds %struct.ngx_http_lua_main_conf_s, ptr %22, i32 0, i32 0, !dbg !3379
  %23 = load ptr, ptr %lua, align 8, !dbg !3379, !tbaa !2378
  %24 = load ptr, ptr %lmcf, align 8, !dbg !3380, !tbaa !1944
  %cycle = getelementptr inbounds %struct.ngx_http_lua_main_conf_s, ptr %24, i32 0, i32 4, !dbg !3381
  %25 = load ptr, ptr %cycle, align 8, !dbg !3381, !tbaa !3382
  %26 = load ptr, ptr %r.addr, align 8, !dbg !3383, !tbaa !1944
  %pool6 = getelementptr inbounds %struct.ngx_http_request_s, ptr %26, i32 0, i32 11, !dbg !3384
  %27 = load ptr, ptr %pool6, align 8, !dbg !3384, !tbaa !2421
  %28 = load ptr, ptr %lmcf, align 8, !dbg !3385, !tbaa !1944
  %29 = load ptr, ptr %r.addr, align 8, !dbg !3386, !tbaa !1944
  %connection7 = getelementptr inbounds %struct.ngx_http_request_s, ptr %29, i32 0, i32 1, !dbg !3387
  %30 = load ptr, ptr %connection7, align 8, !dbg !3387, !tbaa !1989
  %log = getelementptr inbounds %struct.ngx_connection_s, ptr %30, i32 0, i32 10, !dbg !3388
  %31 = load ptr, ptr %log, align 8, !dbg !3388, !tbaa !1998
  %call8 = call ptr @ngx_http_lua_init_vm(ptr noundef %23, ptr noundef %25, ptr noundef %27, ptr noundef %28, ptr noundef %31, ptr noundef %cln), !dbg !3389
  store ptr %call8, ptr %L, align 8, !dbg !3390, !tbaa !1944
  %32 = load ptr, ptr %L, align 8, !dbg !3391, !tbaa !1944
  %cmp9 = icmp eq ptr %32, null, !dbg !3393
  br i1 %cmp9, label %if.then10, label %if.end18, !dbg !3394

if.then10:                                        ; preds = %if.then4
  %33 = load ptr, ptr %r.addr, align 8, !dbg !3395, !tbaa !1944
  %connection11 = getelementptr inbounds %struct.ngx_http_request_s, ptr %33, i32 0, i32 1, !dbg !3395
  %34 = load ptr, ptr %connection11, align 8, !dbg !3395, !tbaa !1989
  %log12 = getelementptr inbounds %struct.ngx_connection_s, ptr %34, i32 0, i32 10, !dbg !3395
  %35 = load ptr, ptr %log12, align 8, !dbg !3395, !tbaa !1998
  %log_level = getelementptr inbounds %struct.ngx_log_s, ptr %35, i32 0, i32 0, !dbg !3395
  %36 = load i64, ptr %log_level, align 8, !dbg !3395, !tbaa !2002
  %cmp13 = icmp uge i64 %36, 4, !dbg !3395
  br i1 %cmp13, label %if.then14, label %if.end17, !dbg !3398

if.then14:                                        ; preds = %if.then10
  %37 = load ptr, ptr %r.addr, align 8, !dbg !3395, !tbaa !1944
  %connection15 = getelementptr inbounds %struct.ngx_http_request_s, ptr %37, i32 0, i32 1, !dbg !3395
  %38 = load ptr, ptr %connection15, align 8, !dbg !3395, !tbaa !1989
  %log16 = getelementptr inbounds %struct.ngx_connection_s, ptr %38, i32 0, i32 10, !dbg !3395
  %39 = load ptr, ptr %log16, align 8, !dbg !3395, !tbaa !1998
  call void (i64, ptr, i32, ptr, ...) @ngx_log_error_core(i64 noundef 4, ptr noundef %39, i32 noundef 0, ptr noundef @.str.7), !dbg !3395
  br label %if.end17, !dbg !3395

if.end17:                                         ; preds = %if.then14, %if.then10
  store ptr null, ptr %retval, align 8, !dbg !3399
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3399

if.end18:                                         ; preds = %if.then4
  %40 = load ptr, ptr %lmcf, align 8, !dbg !3400, !tbaa !1944
  %init_handler = getelementptr inbounds %struct.ngx_http_lua_main_conf_s, ptr %40, i32 0, i32 17, !dbg !3402
  %41 = load ptr, ptr %init_handler, align 8, !dbg !3402, !tbaa !3403
  %tobool19 = icmp ne ptr %41, null, !dbg !3400
  br i1 %tobool19, label %if.then20, label %if.end28, !dbg !3404

if.then20:                                        ; preds = %if.end18
  %42 = load ptr, ptr %lmcf, align 8, !dbg !3405, !tbaa !1944
  %init_handler21 = getelementptr inbounds %struct.ngx_http_lua_main_conf_s, ptr %42, i32 0, i32 17, !dbg !3408
  %43 = load ptr, ptr %init_handler21, align 8, !dbg !3408, !tbaa !3403
  %44 = load ptr, ptr %r.addr, align 8, !dbg !3409, !tbaa !1944
  %connection22 = getelementptr inbounds %struct.ngx_http_request_s, ptr %44, i32 0, i32 1, !dbg !3410
  %45 = load ptr, ptr %connection22, align 8, !dbg !3410, !tbaa !1989
  %log23 = getelementptr inbounds %struct.ngx_connection_s, ptr %45, i32 0, i32 10, !dbg !3411
  %46 = load ptr, ptr %log23, align 8, !dbg !3411, !tbaa !1998
  %47 = load ptr, ptr %lmcf, align 8, !dbg !3412, !tbaa !1944
  %48 = load ptr, ptr %L, align 8, !dbg !3413, !tbaa !1944
  %call24 = call i64 %43(ptr noundef %46, ptr noundef %47, ptr noundef %48), !dbg !3405
  %cmp25 = icmp ne i64 %call24, 0, !dbg !3414
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !3415

if.then26:                                        ; preds = %if.then20
  store ptr null, ptr %retval, align 8, !dbg !3416
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3416

if.end27:                                         ; preds = %if.then20
  br label %if.end28, !dbg !3418

if.end28:                                         ; preds = %if.end27, %if.end18
  %49 = load ptr, ptr %cln, align 8, !dbg !3419, !tbaa !1944
  %data = getelementptr inbounds %struct.ngx_pool_cleanup_s, ptr %49, i32 0, i32 1, !dbg !3420
  %50 = load ptr, ptr %data, align 8, !dbg !3420, !tbaa !3421
  %51 = load ptr, ptr %ctx, align 8, !dbg !3423, !tbaa !1944
  %vm_state = getelementptr inbounds %struct.ngx_http_lua_ctx_s, ptr %51, i32 0, i32 0, !dbg !3424
  store ptr %50, ptr %vm_state, align 8, !dbg !3425, !tbaa !2361
  br label %if.end30, !dbg !3426

if.else:                                          ; preds = %land.lhs.true, %if.end
  %52 = load ptr, ptr %ctx, align 8, !dbg !3427, !tbaa !1944
  %vm_state29 = getelementptr inbounds %struct.ngx_http_lua_ctx_s, ptr %52, i32 0, i32 0, !dbg !3429
  store ptr null, ptr %vm_state29, align 8, !dbg !3430, !tbaa !2361
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.end28
  %53 = load ptr, ptr %ctx, align 8, !dbg !3431, !tbaa !1944
  store ptr %53, ptr %retval, align 8, !dbg !3432
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3432

cleanup:                                          ; preds = %if.end30, %if.then26, %if.end17, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %lmcf) #6, !dbg !3433
  call void @llvm.lifetime.end.p0(i64 8, ptr %llcf) #6, !dbg !3433
  call void @llvm.lifetime.end.p0(i64 8, ptr %cln) #6, !dbg !3433
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #6, !dbg !3433
  call void @llvm.lifetime.end.p0(i64 8, ptr %L) #6, !dbg !3433
  %54 = load ptr, ptr %retval, align 8, !dbg !3433
  ret ptr %54, !dbg !3433
}

declare !dbg !3434 ptr @ngx_http_cleanup_add(ptr noundef, i64 noundef) #2

declare void @ngx_http_lua_request_cleanup_handler(ptr noundef) #2

declare !dbg !3437 void @ngx_chain_update_chains(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !3440 ptr @ngx_palloc(ptr noundef, i64 noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @ngx_http_lua_init_ctx(ptr noundef %r, ptr noundef %ctx) #3 !dbg !3443 {
entry:
  %r.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8, !tbaa !1944
    #dbg_declare(ptr %r.addr, !3447, !DIExpression(), !3449)
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !1944
    #dbg_declare(ptr %ctx.addr, !3448, !DIExpression(), !3450)
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !3451, !tbaa !1944
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 400, i1 false), !dbg !3451
  %1 = load ptr, ptr %ctx.addr, align 8, !dbg !3452, !tbaa !1944
  %ctx_ref = getelementptr inbounds %struct.ngx_http_lua_ctx_s, ptr %1, i32 0, i32 7, !dbg !3453
  store i32 -2, ptr %ctx_ref, align 8, !dbg !3454, !tbaa !3455
  %2 = load ptr, ptr %ctx.addr, align 8, !dbg !3456, !tbaa !1944
  %entry_co_ctx = getelementptr inbounds %struct.ngx_http_lua_ctx_s, ptr %2, i32 0, i32 5, !dbg !3457
  %co_ref = getelementptr inbounds %struct.ngx_http_lua_co_ctx_s, ptr %entry_co_ctx, i32 0, i32 13, !dbg !3458
  store i32 -2, ptr %co_ref, align 8, !dbg !3459, !tbaa !3460
  %3 = load ptr, ptr %ctx.addr, align 8, !dbg !3461, !tbaa !1944
  %resume_handler = getelementptr inbounds %struct.ngx_http_lua_ctx_s, ptr %3, i32 0, i32 2, !dbg !3462
  store ptr @ngx_http_lua_wev_handler, ptr %resume_handler, align 8, !dbg !3463, !tbaa !3464
  %4 = load ptr, ptr %r.addr, align 8, !dbg !3465, !tbaa !1944
  %5 = load ptr, ptr %ctx.addr, align 8, !dbg !3466, !tbaa !1944
  %request = getelementptr inbounds %struct.ngx_http_lua_ctx_s, ptr %5, i32 0, i32 1, !dbg !3467
  store ptr %4, ptr %request, align 8, !dbg !3468, !tbaa !3469
  ret void, !dbg !3470
}

declare !dbg !3471 ptr @ngx_http_lua_init_vm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare i64 @ngx_http_lua_wev_handler(ptr noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!19}
!llvm.module.flags = !{!1923, !1924, !1925, !1926, !1927, !1928}
!llvm.ident = !{!1929}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 122, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "../ngx_lua-0.10.15/src/ngx_http_lua_bodyfilterby.c", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "6b07ee5e363d5976df2634d754e8f883")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 15)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 126, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 39)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 166, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 20)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "ngx_http_next_body_filter", scope: !19, file: !2, line: 32, type: !67, isLocal: true, isDefinition: true)
!19 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !20, globals: !40, splitDebugInlining: false, nameTableKind: None)
!20 = !{!21, !27, !28, !34, !35, !36, !38}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !23, line: 33, baseType: !24)
!23 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !25, line: 31, baseType: !26)
!25 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!26 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_int_t", file: !29, line: 78, baseType: !30)
!29 = !DIFile(filename: "src/core/ngx_config.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "1030e66de4bc6fae79f292da1593286a")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !31, line: 267, baseType: !32)
!31 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intptr_t", file: !25, line: 207, baseType: !33)
!33 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_buf_tag_t", file: !37, line: 16, baseType: !27)
!37 = !DIFile(filename: "src/core/ngx_buf.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "6fc45f3cccbbf41b239dcfa9e2c5b7b1")
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_socket_t", file: !39, line: 17, baseType: !34)
!39 = !DIFile(filename: "src/os/unix/ngx_socket.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "ad64fd7b9f2b4876e8c9dcdeeb2305ce")
!40 = !{!0, !7, !12, !41, !46, !51, !56, !17, !61}
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(scope: null, file: !2, line: 387, type: !43, isLocal: true, isDefinition: true)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 1)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(scope: null, file: !2, line: 450, type: !48, isLocal: true, isDefinition: true)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 14)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(scope: null, file: !2, line: 554, type: !53, isLocal: true, isDefinition: true)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 24)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(scope: null, file: !2, line: 586, type: !58, isLocal: true, isDefinition: true)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 10)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(scope: null, file: !63, line: 302, type: !64, isLocal: true, isDefinition: true)
!63 = !DIFile(filename: "../ngx_lua-0.10.15/src/ngx_http_lua_util.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "263bda79d27023d44c17ea175243cd3d")
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 28)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_output_body_filter_pt", file: !68, line: 513, baseType: !69)
!68 = !DIFile(filename: "src/http/ngx_http_core_module.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "01bbc621c19214151ccc7d6928049534")
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DISubroutineType(types: !71)
!71 = !{!28, !72, !219}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_request_t", file: !74, line: 16, baseType: !75)
!74 = !DIFile(filename: "src/http/ngx_http.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "936639e5730ac898b9486f4f53b5f2f5")
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_request_s", file: !76, line: 371, size: 11456, elements: !77)
!76 = !DIFile(filename: "src/http/ngx_http_request.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "1757f93ddb5cd3c545713a957f23192d")
!77 = !{!78, !83, !493, !495, !496, !497, !498, !503, !504, !730, !1468, !1469, !1470, !1471, !1513, !1545, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1591, !1602, !1609, !1610, !1612, !1613, !1626, !1627, !1628, !1629, !1630, !1631, !1816, !1820, !1825, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !75, file: !76, line: 372, baseType: !79, size: 32)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !80, line: 26, baseType: !81)
!80 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !25, line: 42, baseType: !82)
!82 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !75, file: !76, line: 374, baseType: !84, size: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_connection_t", file: !86, line: 26, baseType: !87)
!86 = !DIFile(filename: "src/core/ngx_core.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "1c4d8383f329aa1de050d17038ecb169")
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_connection_s", file: !88, line: 124, size: 1920, elements: !89)
!88 = !DIFile(filename: "src/core/ngx_connection.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "bf513a87e959064e14502903e9282b0e")
!89 = !{!90, !91, !202, !203, !204, !212, !214, !302, !307, !382, !383, !384, !421, !422, !423, !424, !425, !426, !431, !469, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !87, file: !88, line: 125, baseType: !27, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !87, file: !88, line: 126, baseType: !92, size: 64, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_t", file: !86, line: 24, baseType: !94)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_event_s", file: !95, line: 30, size: 768, elements: !96)
!95 = !DIFile(filename: "src/event/ngx_event.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "c79f651cc4aca504d9d912404beb8bf3")
!96 = !{!97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !125, !130, !181, !194}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !94, file: !95, line: 31, baseType: !27, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !94, file: !95, line: 33, baseType: !82, size: 1, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !94, file: !95, line: 35, baseType: !82, size: 1, offset: 65, flags: DIFlagBitField, extraData: i64 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "instance", scope: !94, file: !95, line: 38, baseType: !82, size: 1, offset: 66, flags: DIFlagBitField, extraData: i64 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !94, file: !95, line: 44, baseType: !82, size: 1, offset: 67, flags: DIFlagBitField, extraData: i64 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !94, file: !95, line: 46, baseType: !82, size: 1, offset: 68, flags: DIFlagBitField, extraData: i64 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !94, file: !95, line: 49, baseType: !82, size: 1, offset: 69, flags: DIFlagBitField, extraData: i64 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "oneshot", scope: !94, file: !95, line: 51, baseType: !82, size: 1, offset: 70, flags: DIFlagBitField, extraData: i64 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !94, file: !95, line: 54, baseType: !82, size: 1, offset: 71, flags: DIFlagBitField, extraData: i64 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "eof", scope: !94, file: !95, line: 56, baseType: !82, size: 1, offset: 72, flags: DIFlagBitField, extraData: i64 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !94, file: !95, line: 57, baseType: !82, size: 1, offset: 73, flags: DIFlagBitField, extraData: i64 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "timedout", scope: !94, file: !95, line: 59, baseType: !82, size: 1, offset: 74, flags: DIFlagBitField, extraData: i64 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "timer_set", scope: !94, file: !95, line: 60, baseType: !82, size: 1, offset: 75, flags: DIFlagBitField, extraData: i64 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "delayed", scope: !94, file: !95, line: 62, baseType: !82, size: 1, offset: 76, flags: DIFlagBitField, extraData: i64 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_accept", scope: !94, file: !95, line: 64, baseType: !82, size: 1, offset: 77, flags: DIFlagBitField, extraData: i64 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "pending_eof", scope: !94, file: !95, line: 67, baseType: !82, size: 1, offset: 78, flags: DIFlagBitField, extraData: i64 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "posted", scope: !94, file: !95, line: 69, baseType: !82, size: 1, offset: 79, flags: DIFlagBitField, extraData: i64 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "closed", scope: !94, file: !95, line: 71, baseType: !82, size: 1, offset: 80, flags: DIFlagBitField, extraData: i64 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !94, file: !95, line: 74, baseType: !82, size: 1, offset: 81, flags: DIFlagBitField, extraData: i64 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "resolver", scope: !94, file: !95, line: 75, baseType: !82, size: 1, offset: 82, flags: DIFlagBitField, extraData: i64 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "skip_socket_leak_check", scope: !94, file: !95, line: 77, baseType: !82, size: 1, offset: 83, flags: DIFlagBitField, extraData: i64 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "cancelable", scope: !94, file: !95, line: 80, baseType: !82, size: 1, offset: 84, flags: DIFlagBitField, extraData: i64 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !94, file: !95, line: 110, baseType: !82, size: 1, offset: 85, flags: DIFlagBitField, extraData: i64 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !94, file: !95, line: 113, baseType: !121, size: 64, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_handler_pt", file: !86, line: 32, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DISubroutineType(types: !124)
!124 = !{null, !92}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !94, file: !95, line: 120, baseType: !126, size: 64, offset: 192)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_uint_t", file: !29, line: 79, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !128, line: 90, baseType: !129)
!128 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!129 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !94, file: !95, line: 122, baseType: !131, size: 64, offset: 256)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_log_t", file: !86, line: 20, baseType: !133)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_log_s", file: !134, line: 50, size: 640, elements: !135)
!134 = !DIFile(filename: "src/core/ngx_log.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "f35895306f847777914ce99ffeccfabd")
!135 = !{!136, !137, !160, !163, !167, !172, !173, !178, !179, !180}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "log_level", scope: !133, file: !134, line: 51, baseType: !126, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !133, file: !134, line: 52, baseType: !138, size: 64, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_open_file_t", file: !86, line: 21, baseType: !140)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_open_file_s", file: !141, line: 89, size: 320, elements: !142)
!141 = !DIFile(filename: "src/core/ngx_conf_file.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "6ae6b72e2fd6bbb6ecc9de2e6386072c")
!142 = !{!143, !146, !155, !159}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !140, file: !141, line: 90, baseType: !144, size: 32)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_fd_t", file: !145, line: 16, baseType: !34)
!145 = !DIFile(filename: "src/os/unix/ngx_files.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "7b9a751e8c1ad1afef5467d60ed94e69")
!146 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !140, file: !141, line: 91, baseType: !147, size: 128, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_str_t", file: !148, line: 19, baseType: !149)
!148 = !DIFile(filename: "src/core/ngx_string.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "aecf67ab89c624000ba2e2684dbcfdc8")
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !148, line: 16, size: 128, elements: !150)
!150 = !{!151, !154}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !149, file: !148, line: 17, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !153, line: 29, baseType: !129)
!153 = !DIFile(filename: "/usr/include/glob.h", directory: "", checksumkind: CSK_MD5, checksum: "fe493b50b1dc220fe9bcfb4d648abdef")
!154 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !149, file: !148, line: 18, baseType: !21, size: 64, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !140, file: !141, line: 93, baseType: !156, size: 64, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{null, !138, !131}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !140, file: !141, line: 94, baseType: !27, size: 64, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !133, file: !134, line: 54, baseType: !161, size: 64, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_atomic_uint_t", file: !162, line: 98, baseType: !129)
!162 = !DIFile(filename: "src/os/unix/ngx_atomic.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "eac8f0294f941da9268c3a72c9fca0e1")
!163 = !DIDerivedType(tag: DW_TAG_member, name: "disk_full_time", scope: !133, file: !134, line: 56, baseType: !164, size: 64, offset: 192)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !165, line: 10, baseType: !166)
!165 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !25, line: 160, baseType: !33)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !133, file: !134, line: 58, baseType: !168, size: 64, offset: 256)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_log_handler_pt", file: !134, line: 45, baseType: !169)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DISubroutineType(types: !171)
!171 = !{!21, !131, !21, !152}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !133, file: !134, line: 59, baseType: !27, size: 64, offset: 320)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !133, file: !134, line: 61, baseType: !174, size: 64, offset: 384)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_log_writer_pt", file: !134, line: 46, baseType: !175)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DISubroutineType(types: !177)
!177 = !{null, !131, !126, !21, !152}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "wdata", scope: !133, file: !134, line: 62, baseType: !27, size: 64, offset: 448)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !133, file: !134, line: 70, baseType: !35, size: 64, offset: 512)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !133, file: !134, line: 72, baseType: !131, size: 64, offset: 576)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !94, file: !95, line: 124, baseType: !182, size: 320, offset: 320)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_rbtree_node_t", file: !183, line: 20, baseType: !184)
!183 = !DIFile(filename: "src/core/ngx_rbtree.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "ee5b3151c1c48b156833d321f8e1946a")
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_rbtree_node_s", file: !183, line: 22, size: 320, elements: !185)
!185 = !{!186, !188, !190, !191, !192, !193}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !184, file: !183, line: 23, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_rbtree_key_t", file: !183, line: 16, baseType: !126)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !184, file: !183, line: 24, baseType: !189, size: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !184, file: !183, line: 25, baseType: !189, size: 64, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !184, file: !183, line: 26, baseType: !189, size: 64, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !184, file: !183, line: 27, baseType: !22, size: 8, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !184, file: !183, line: 28, baseType: !22, size: 8, offset: 264)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !94, file: !95, line: 127, baseType: !195, size: 128, offset: 640)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_queue_t", file: !196, line: 16, baseType: !197)
!196 = !DIFile(filename: "src/core/ngx_queue.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "2c59b395537893ba5e88100999d73c03")
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_queue_s", file: !196, line: 18, size: 128, elements: !198)
!198 = !{!199, !201}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !197, file: !196, line: 19, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !197, file: !196, line: 20, baseType: !200, size: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !87, file: !88, line: 127, baseType: !92, size: 64, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !87, file: !88, line: 129, baseType: !38, size: 32, offset: 192)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !87, file: !88, line: 131, baseType: !205, size: 64, offset: 256)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_recv_pt", file: !206, line: 19, baseType: !207)
!206 = !DIFile(filename: "src/os/unix/ngx_os.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "f9335bbb6e5d9856f7d75990ec765c0d")
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{!210, !84, !21, !152}
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !23, line: 108, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !25, line: 194, baseType: !33)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "send", scope: !87, file: !88, line: 132, baseType: !213, size: 64, offset: 320)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_send_pt", file: !206, line: 22, baseType: !207)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "recv_chain", scope: !87, file: !88, line: 133, baseType: !215, size: 64, offset: 384)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_recv_chain_pt", file: !206, line: 20, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{!210, !84, !219, !231}
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_chain_t", file: !86, line: 19, baseType: !221)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_chain_s", file: !37, line: 59, size: 128, elements: !222)
!222 = !{!223, !301}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !221, file: !37, line: 60, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_buf_t", file: !37, line: 18, baseType: !226)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_buf_s", file: !37, line: 20, size: 640, elements: !227)
!227 = !{!228, !229, !230, !233, !234, !235, !236, !237, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !226, file: !37, line: 21, baseType: !21, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !226, file: !37, line: 22, baseType: !21, size: 64, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "file_pos", scope: !226, file: !37, line: 23, baseType: !231, size: 64, offset: 128)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !23, line: 87, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !25, line: 153, baseType: !33)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "file_last", scope: !226, file: !37, line: 24, baseType: !231, size: 64, offset: 192)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !226, file: !37, line: 26, baseType: !21, size: 64, offset: 256)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !226, file: !37, line: 27, baseType: !21, size: 64, offset: 320)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !226, file: !37, line: 28, baseType: !36, size: 64, offset: 384)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !226, file: !37, line: 29, baseType: !238, size: 64, offset: 448)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_file_t", file: !86, line: 23, baseType: !240)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_file_s", file: !241, line: 16, size: 1600, elements: !242)
!241 = !DIFile(filename: "src/core/ngx_file.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "25b6ae7999feb045abc19bb7a7bd4ab8")
!242 = !{!243, !244, !245, !283, !284, !285, !286, !287}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !240, file: !241, line: 17, baseType: !144, size: 32)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !240, file: !241, line: 18, baseType: !147, size: 128, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !240, file: !241, line: 19, baseType: !246, size: 1152, offset: 192)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_file_info_t", file: !145, line: 17, baseType: !247)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !248, line: 26, size: 1152, elements: !249)
!248 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!249 = !{!250, !252, !254, !256, !258, !260, !262, !263, !264, !266, !268, !270, !277, !278, !279}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !247, file: !248, line: 31, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !25, line: 145, baseType: !129)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !247, file: !248, line: 36, baseType: !253, size: 64, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !25, line: 148, baseType: !129)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !247, file: !248, line: 44, baseType: !255, size: 64, offset: 128)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !25, line: 151, baseType: !129)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !247, file: !248, line: 45, baseType: !257, size: 32, offset: 192)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !25, line: 150, baseType: !82)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !247, file: !248, line: 47, baseType: !259, size: 32, offset: 224)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !25, line: 146, baseType: !82)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !247, file: !248, line: 48, baseType: !261, size: 32, offset: 256)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !25, line: 147, baseType: !82)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !247, file: !248, line: 50, baseType: !34, size: 32, offset: 288)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !247, file: !248, line: 52, baseType: !251, size: 64, offset: 320)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !247, file: !248, line: 57, baseType: !265, size: 64, offset: 384)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !25, line: 152, baseType: !33)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !247, file: !248, line: 61, baseType: !267, size: 64, offset: 448)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !25, line: 175, baseType: !33)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !247, file: !248, line: 63, baseType: !269, size: 64, offset: 512)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !25, line: 180, baseType: !33)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !247, file: !248, line: 74, baseType: !271, size: 128, offset: 576)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !272, line: 11, size: 128, elements: !273)
!272 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!273 = !{!274, !275}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !271, file: !272, line: 16, baseType: !166, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !271, file: !272, line: 21, baseType: !276, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !25, line: 197, baseType: !33)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !247, file: !248, line: 75, baseType: !271, size: 128, offset: 704)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !247, file: !248, line: 76, baseType: !271, size: 128, offset: 832)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !247, file: !248, line: 89, baseType: !280, size: 192, offset: 960)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 192, elements: !281)
!281 = !{!282}
!282 = !DISubrange(count: 3)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !240, file: !241, line: 21, baseType: !231, size: 64, offset: 1344)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "sys_offset", scope: !240, file: !241, line: 22, baseType: !231, size: 64, offset: 1408)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !240, file: !241, line: 24, baseType: !131, size: 64, offset: 1472)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "valid_info", scope: !240, file: !241, line: 37, baseType: !82, size: 1, offset: 1536, flags: DIFlagBitField, extraData: i64 1536)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "directio", scope: !240, file: !241, line: 38, baseType: !82, size: 1, offset: 1537, flags: DIFlagBitField, extraData: i64 1536)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "shadow", scope: !226, file: !37, line: 30, baseType: !224, size: 64, offset: 512)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "temporary", scope: !226, file: !37, line: 34, baseType: !82, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "memory", scope: !226, file: !37, line: 40, baseType: !82, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !226, file: !37, line: 43, baseType: !82, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "recycled", scope: !226, file: !37, line: 45, baseType: !82, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "in_file", scope: !226, file: !37, line: 46, baseType: !82, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !226, file: !37, line: 47, baseType: !82, size: 1, offset: 581, flags: DIFlagBitField, extraData: i64 576)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !226, file: !37, line: 48, baseType: !82, size: 1, offset: 582, flags: DIFlagBitField, extraData: i64 576)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "last_buf", scope: !226, file: !37, line: 49, baseType: !82, size: 1, offset: 583, flags: DIFlagBitField, extraData: i64 576)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "last_in_chain", scope: !226, file: !37, line: 50, baseType: !82, size: 1, offset: 584, flags: DIFlagBitField, extraData: i64 576)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "last_shadow", scope: !226, file: !37, line: 52, baseType: !82, size: 1, offset: 585, flags: DIFlagBitField, extraData: i64 576)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file", scope: !226, file: !37, line: 53, baseType: !82, size: 1, offset: 586, flags: DIFlagBitField, extraData: i64 576)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !226, file: !37, line: 55, baseType: !34, size: 32, offset: 608)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !221, file: !37, line: 61, baseType: !219, size: 64, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "send_chain", scope: !87, file: !88, line: 134, baseType: !303, size: 64, offset: 448)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_send_chain_pt", file: !206, line: 23, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!219, !84, !219, !231}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "listening", scope: !87, file: !88, line: 136, baseType: !308, size: 64, offset: 512)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_listening_t", file: !88, line: 16, baseType: !310)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_listening_s", file: !88, line: 18, size: 2432, elements: !311)
!311 = !{!312, !313, !323, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !340, !341, !342, !343, !344, !345, !348, !349, !350, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !310, file: !88, line: 19, baseType: !38, size: 32)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !310, file: !88, line: 21, baseType: !314, size: 64, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !316, line: 180, size: 128, elements: !317)
!316 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!317 = !{!318, !322}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !315, file: !316, line: 182, baseType: !319, size: 16)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !320, line: 28, baseType: !321)
!320 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!321 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !315, file: !316, line: 183, baseType: !48, size: 112, offset: 16)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !310, file: !88, line: 22, baseType: !324, size: 32, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !31, line: 274, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !25, line: 210, baseType: !82)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "addr_text_max_len", scope: !310, file: !88, line: 23, baseType: !152, size: 64, offset: 192)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "addr_text", scope: !310, file: !88, line: 24, baseType: !147, size: 128, offset: 256)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !310, file: !88, line: 26, baseType: !34, size: 32, offset: 384)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "backlog", scope: !310, file: !88, line: 28, baseType: !34, size: 32, offset: 416)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "rcvbuf", scope: !310, file: !88, line: 29, baseType: !34, size: 32, offset: 448)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "sndbuf", scope: !310, file: !88, line: 30, baseType: !34, size: 32, offset: 480)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "keepidle", scope: !310, file: !88, line: 32, baseType: !34, size: 32, offset: 512)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "keepintvl", scope: !310, file: !88, line: 33, baseType: !34, size: 32, offset: 544)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "keepcnt", scope: !310, file: !88, line: 34, baseType: !34, size: 32, offset: 576)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !310, file: !88, line: 38, baseType: !336, size: 64, offset: 640)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_connection_handler_pt", file: !86, line: 33, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !84}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "servers", scope: !310, file: !88, line: 40, baseType: !27, size: 64, offset: 704)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !310, file: !88, line: 42, baseType: !132, size: 640, offset: 768)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "logp", scope: !310, file: !88, line: 43, baseType: !131, size: 64, offset: 1408)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "pool_size", scope: !310, file: !88, line: 45, baseType: !152, size: 64, offset: 1472)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "post_accept_buffer_size", scope: !310, file: !88, line: 47, baseType: !152, size: 64, offset: 1536)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "post_accept_timeout", scope: !310, file: !88, line: 49, baseType: !346, size: 64, offset: 1600)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_msec_t", file: !347, line: 16, baseType: !187)
!347 = !DIFile(filename: "src/os/unix/ngx_time.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "dcb54d32e6c10d0319e2777a5d39953b")
!348 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !310, file: !88, line: 51, baseType: !308, size: 64, offset: 1664)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !310, file: !88, line: 52, baseType: !84, size: 64, offset: 1728)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "rbtree", scope: !310, file: !88, line: 54, baseType: !351, size: 192, offset: 1792)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_rbtree_t", file: !183, line: 32, baseType: !352)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_rbtree_s", file: !183, line: 37, size: 192, elements: !353)
!353 = !{!354, !355, !356}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !352, file: !183, line: 38, baseType: !189, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !352, file: !183, line: 39, baseType: !189, size: 64, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "insert", scope: !352, file: !183, line: 40, baseType: !357, size: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_rbtree_insert_pt", file: !183, line: 34, baseType: !358)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !189, !189, !189}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !310, file: !88, line: 55, baseType: !182, size: 320, offset: 1984)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !310, file: !88, line: 57, baseType: !126, size: 64, offset: 2304)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !310, file: !88, line: 59, baseType: !82, size: 1, offset: 2368, flags: DIFlagBitField, extraData: i64 2368)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "remain", scope: !310, file: !88, line: 60, baseType: !82, size: 1, offset: 2369, flags: DIFlagBitField, extraData: i64 2368)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "ignore", scope: !310, file: !88, line: 61, baseType: !82, size: 1, offset: 2370, flags: DIFlagBitField, extraData: i64 2368)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !310, file: !88, line: 63, baseType: !82, size: 1, offset: 2371, flags: DIFlagBitField, extraData: i64 2368)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "inherited", scope: !310, file: !88, line: 64, baseType: !82, size: 1, offset: 2372, flags: DIFlagBitField, extraData: i64 2368)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "nonblocking_accept", scope: !310, file: !88, line: 65, baseType: !82, size: 1, offset: 2373, flags: DIFlagBitField, extraData: i64 2368)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "listen", scope: !310, file: !88, line: 66, baseType: !82, size: 1, offset: 2374, flags: DIFlagBitField, extraData: i64 2368)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "nonblocking", scope: !310, file: !88, line: 67, baseType: !82, size: 1, offset: 2375, flags: DIFlagBitField, extraData: i64 2368)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !310, file: !88, line: 68, baseType: !82, size: 1, offset: 2376, flags: DIFlagBitField, extraData: i64 2368)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "addr_ntop", scope: !310, file: !88, line: 69, baseType: !82, size: 1, offset: 2377, flags: DIFlagBitField, extraData: i64 2368)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "wildcard", scope: !310, file: !88, line: 70, baseType: !82, size: 1, offset: 2378, flags: DIFlagBitField, extraData: i64 2368)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6only", scope: !310, file: !88, line: 73, baseType: !82, size: 1, offset: 2379, flags: DIFlagBitField, extraData: i64 2368)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "reuseport", scope: !310, file: !88, line: 75, baseType: !82, size: 1, offset: 2380, flags: DIFlagBitField, extraData: i64 2368)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "add_reuseport", scope: !310, file: !88, line: 76, baseType: !82, size: 1, offset: 2381, flags: DIFlagBitField, extraData: i64 2368)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive", scope: !310, file: !88, line: 77, baseType: !82, size: 2, offset: 2382, flags: DIFlagBitField, extraData: i64 2368)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_accept", scope: !310, file: !88, line: 79, baseType: !82, size: 1, offset: 2384, flags: DIFlagBitField, extraData: i64 2368)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "delete_deferred", scope: !310, file: !88, line: 80, baseType: !82, size: 1, offset: 2385, flags: DIFlagBitField, extraData: i64 2368)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "add_deferred", scope: !310, file: !88, line: 81, baseType: !82, size: 1, offset: 2386, flags: DIFlagBitField, extraData: i64 2368)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "fastopen", scope: !310, file: !88, line: 90, baseType: !34, size: 32, offset: 2400)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "sent", scope: !87, file: !88, line: 138, baseType: !231, size: 64, offset: 576)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !87, file: !88, line: 140, baseType: !131, size: 64, offset: 640)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !87, file: !88, line: 142, baseType: !385, size: 64, offset: 704)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_t", file: !86, line: 18, baseType: !387)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_pool_s", file: !388, line: 57, size: 640, elements: !389)
!388 = !DIFile(filename: "src/core/ngx_palloc.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "6555a54b944797708293a47c3c8684b9")
!389 = !{!390, !398, !399, !400, !401, !408, !420}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !387, file: !388, line: 58, baseType: !391, size: 256)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_data_t", file: !388, line: 54, baseType: !392)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !388, line: 49, size: 256, elements: !393)
!393 = !{!394, !395, !396, !397}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !392, file: !388, line: 50, baseType: !21, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !392, file: !388, line: 51, baseType: !21, size: 64, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !392, file: !388, line: 52, baseType: !385, size: 64, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "failed", scope: !392, file: !388, line: 53, baseType: !126, size: 64, offset: 192)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !387, file: !388, line: 59, baseType: !152, size: 64, offset: 256)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !387, file: !388, line: 60, baseType: !385, size: 64, offset: 320)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !387, file: !388, line: 61, baseType: !219, size: 64, offset: 384)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "large", scope: !387, file: !388, line: 62, baseType: !402, size: 64, offset: 448)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_large_t", file: !388, line: 41, baseType: !404)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_pool_large_s", file: !388, line: 43, size: 128, elements: !405)
!405 = !{!406, !407}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !404, file: !388, line: 44, baseType: !402, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !404, file: !388, line: 45, baseType: !27, size: 64, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !387, file: !388, line: 63, baseType: !409, size: 64, offset: 512)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_cleanup_t", file: !388, line: 32, baseType: !411)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_pool_cleanup_s", file: !388, line: 34, size: 192, elements: !412)
!412 = !{!413, !418, !419}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !411, file: !388, line: 35, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_cleanup_pt", file: !388, line: 30, baseType: !415)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DISubroutineType(types: !417)
!417 = !{null, !27}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !411, file: !388, line: 36, baseType: !27, size: 64, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !411, file: !388, line: 37, baseType: !409, size: 64, offset: 128)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !387, file: !388, line: 64, baseType: !131, size: 64, offset: 576)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !87, file: !88, line: 144, baseType: !34, size: 32, offset: 768)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !87, file: !88, line: 146, baseType: !314, size: 64, offset: 832)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !87, file: !88, line: 147, baseType: !324, size: 32, offset: 896)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "addr_text", scope: !87, file: !88, line: 148, baseType: !147, size: 128, offset: 960)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_protocol_addr", scope: !87, file: !88, line: 150, baseType: !147, size: 128, offset: 1088)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_protocol_port", scope: !87, file: !88, line: 151, baseType: !427, size: 16, offset: 1216)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !428, line: 123, baseType: !429)
!428 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !80, line: 25, baseType: !430)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !25, line: 40, baseType: !321)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !87, file: !88, line: 154, baseType: !432, size: 64, offset: 1280)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_ssl_connection_t", file: !86, line: 29, baseType: !434)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_ssl_connection_s", file: !435, line: 74, size: 704, elements: !436)
!435 = !DIFile(filename: "src/event/ngx_event_openssl.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "51639b814b1b55c5b35047c033281672")
!436 = !{!437, !442, !446, !447, !448, !449, !450, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !434, file: !435, line: 75, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL", file: !440, line: 184, baseType: !441)
!440 = !DIFile(filename: "/usr/include/openssl/types.h", directory: "", checksumkind: CSK_MD5, checksum: "44f1236065e4ee65cf4cd545c3e12ab9")
!441 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_st", file: !440, line: 184, flags: DIFlagFwdDecl)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "session_ctx", scope: !434, file: !435, line: 76, baseType: !443, size: 64, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_CTX", file: !440, line: 185, baseType: !445)
!445 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_ctx_st", file: !440, line: 185, flags: DIFlagFwdDecl)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !434, file: !435, line: 78, baseType: !28, size: 64, offset: 128)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !434, file: !435, line: 79, baseType: !224, size: 64, offset: 192)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_size", scope: !434, file: !435, line: 80, baseType: !152, size: 64, offset: 256)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !434, file: !435, line: 82, baseType: !336, size: 64, offset: 320)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !434, file: !435, line: 84, baseType: !451, size: 64, offset: 384)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_SESSION", file: !453, line: 231, baseType: !454)
!453 = !DIFile(filename: "/usr/include/openssl/ssl.h", directory: "", checksumkind: CSK_MD5, checksum: "848d42aedd0da44ffda19088217823c7")
!454 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_session_st", file: !453, line: 231, flags: DIFlagFwdDecl)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "save_session", scope: !434, file: !435, line: 85, baseType: !336, size: 64, offset: 448)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "saved_read_handler", scope: !434, file: !435, line: 87, baseType: !121, size: 64, offset: 512)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "saved_write_handler", scope: !434, file: !435, line: 88, baseType: !121, size: 64, offset: 576)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "early_buf", scope: !434, file: !435, line: 90, baseType: !22, size: 8, offset: 640)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "handshaked", scope: !434, file: !435, line: 92, baseType: !82, size: 1, offset: 648, flags: DIFlagBitField, extraData: i64 648)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "renegotiation", scope: !434, file: !435, line: 93, baseType: !82, size: 1, offset: 649, flags: DIFlagBitField, extraData: i64 648)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !434, file: !435, line: 94, baseType: !82, size: 1, offset: 650, flags: DIFlagBitField, extraData: i64 648)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "no_wait_shutdown", scope: !434, file: !435, line: 95, baseType: !82, size: 1, offset: 651, flags: DIFlagBitField, extraData: i64 648)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "no_send_shutdown", scope: !434, file: !435, line: 96, baseType: !82, size: 1, offset: 652, flags: DIFlagBitField, extraData: i64 648)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_buffer_set", scope: !434, file: !435, line: 97, baseType: !82, size: 1, offset: 653, flags: DIFlagBitField, extraData: i64 648)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "try_early_data", scope: !434, file: !435, line: 98, baseType: !82, size: 1, offset: 654, flags: DIFlagBitField, extraData: i64 648)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "in_early", scope: !434, file: !435, line: 99, baseType: !82, size: 1, offset: 655, flags: DIFlagBitField, extraData: i64 648)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "early_preread", scope: !434, file: !435, line: 100, baseType: !82, size: 1, offset: 656, flags: DIFlagBitField, extraData: i64 648)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "write_blocked", scope: !434, file: !435, line: 101, baseType: !82, size: 1, offset: 657, flags: DIFlagBitField, extraData: i64 648)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "udp", scope: !87, file: !88, line: 157, baseType: !470, size: 64, offset: 1344)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_udp_connection_t", file: !86, line: 30, baseType: !472)
!472 = !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_udp_connection_s", file: !86, line: 30, flags: DIFlagFwdDecl)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "local_sockaddr", scope: !87, file: !88, line: 159, baseType: !314, size: 64, offset: 1408)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "local_socklen", scope: !87, file: !88, line: 160, baseType: !324, size: 32, offset: 1472)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !87, file: !88, line: 162, baseType: !224, size: 64, offset: 1536)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !87, file: !88, line: 164, baseType: !195, size: 128, offset: 1600)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !87, file: !88, line: 166, baseType: !161, size: 64, offset: 1728)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "requests", scope: !87, file: !88, line: 168, baseType: !126, size: 64, offset: 1792)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "buffered", scope: !87, file: !88, line: 170, baseType: !82, size: 8, offset: 1856, flags: DIFlagBitField, extraData: i64 1856)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "log_error", scope: !87, file: !88, line: 172, baseType: !82, size: 3, offset: 1864, flags: DIFlagBitField, extraData: i64 1856)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "timedout", scope: !87, file: !88, line: 174, baseType: !82, size: 1, offset: 1867, flags: DIFlagBitField, extraData: i64 1856)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !87, file: !88, line: 175, baseType: !82, size: 1, offset: 1868, flags: DIFlagBitField, extraData: i64 1856)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "destroyed", scope: !87, file: !88, line: 176, baseType: !82, size: 1, offset: 1869, flags: DIFlagBitField, extraData: i64 1856)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !87, file: !88, line: 178, baseType: !82, size: 1, offset: 1870, flags: DIFlagBitField, extraData: i64 1856)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "reusable", scope: !87, file: !88, line: 179, baseType: !82, size: 1, offset: 1871, flags: DIFlagBitField, extraData: i64 1856)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !87, file: !88, line: 180, baseType: !82, size: 1, offset: 1872, flags: DIFlagBitField, extraData: i64 1856)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !87, file: !88, line: 181, baseType: !82, size: 1, offset: 1873, flags: DIFlagBitField, extraData: i64 1856)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "sendfile", scope: !87, file: !88, line: 183, baseType: !82, size: 1, offset: 1874, flags: DIFlagBitField, extraData: i64 1856)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "sndlowat", scope: !87, file: !88, line: 184, baseType: !82, size: 1, offset: 1875, flags: DIFlagBitField, extraData: i64 1856)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_nodelay", scope: !87, file: !88, line: 185, baseType: !82, size: 2, offset: 1876, flags: DIFlagBitField, extraData: i64 1856)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_nopush", scope: !87, file: !88, line: 186, baseType: !82, size: 2, offset: 1878, flags: DIFlagBitField, extraData: i64 1856)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "need_last_buf", scope: !87, file: !88, line: 188, baseType: !82, size: 1, offset: 1880, flags: DIFlagBitField, extraData: i64 1856)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !75, file: !76, line: 376, baseType: !494, size: 64, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "main_conf", scope: !75, file: !76, line: 377, baseType: !494, size: 64, offset: 192)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "srv_conf", scope: !75, file: !76, line: 378, baseType: !494, size: 64, offset: 256)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "loc_conf", scope: !75, file: !76, line: 379, baseType: !494, size: 64, offset: 320)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "read_event_handler", scope: !75, file: !76, line: 381, baseType: !499, size: 64, offset: 384)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_event_handler_pt", file: !76, line: 368, baseType: !500)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{null, !72}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "write_event_handler", scope: !75, file: !76, line: 382, baseType: !499, size: 64, offset: 448)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !75, file: !76, line: 385, baseType: !505, size: 64, offset: 512)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_cache_t", file: !74, line: 18, baseType: !507)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_cache_s", file: !508, line: 65, size: 4800, elements: !509)
!508 = !DIFile(filename: "src/http/ngx_http_cache.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "04ea2ebc84c597718a4782ab3cabf19d")
!509 = !{!510, !511, !521, !522, !526, !527, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !688, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !507, file: !508, line: 66, baseType: !239, size: 1600)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !507, file: !508, line: 67, baseType: !512, size: 320, offset: 1600)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_array_t", file: !513, line: 22, baseType: !514)
!513 = !DIFile(filename: "src/core/ngx_array.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "225c765b8c2d594417b07329b35d9ae4")
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !513, line: 16, size: 320, elements: !515)
!515 = !{!516, !517, !518, !519, !520}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !514, file: !513, line: 17, baseType: !27, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "nelts", scope: !514, file: !513, line: 18, baseType: !126, size: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !514, file: !513, line: 19, baseType: !152, size: 64, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "nalloc", scope: !514, file: !513, line: 20, baseType: !126, size: 64, offset: 192)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !514, file: !513, line: 21, baseType: !385, size: 64, offset: 256)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "crc32", scope: !507, file: !508, line: 68, baseType: !79, size: 32, offset: 1920)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !507, file: !508, line: 69, baseType: !523, size: 128, offset: 1952)
!523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 128, elements: !524)
!524 = !{!525}
!525 = !DISubrange(count: 16)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !507, file: !508, line: 70, baseType: !523, size: 128, offset: 2080)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !507, file: !508, line: 72, baseType: !528, size: 64, offset: 2240)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_file_uniq_t", file: !145, line: 18, baseType: !529)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !23, line: 49, baseType: !530)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !25, line: 149, baseType: !129)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "valid_sec", scope: !507, file: !508, line: 73, baseType: !164, size: 64, offset: 2304)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "updating_sec", scope: !507, file: !508, line: 74, baseType: !164, size: 64, offset: 2368)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "error_sec", scope: !507, file: !508, line: 75, baseType: !164, size: 64, offset: 2432)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "last_modified", scope: !507, file: !508, line: 76, baseType: !164, size: 64, offset: 2496)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !507, file: !508, line: 77, baseType: !164, size: 64, offset: 2560)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "etag", scope: !507, file: !508, line: 79, baseType: !147, size: 128, offset: 2624)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "vary", scope: !507, file: !508, line: 80, baseType: !147, size: 128, offset: 2752)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "variant", scope: !507, file: !508, line: 81, baseType: !523, size: 128, offset: 2880)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "header_start", scope: !507, file: !508, line: 83, baseType: !152, size: 64, offset: 3008)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "body_start", scope: !507, file: !508, line: 84, baseType: !152, size: 64, offset: 3072)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !507, file: !508, line: 85, baseType: !231, size: 64, offset: 3136)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "fs_size", scope: !507, file: !508, line: 86, baseType: !231, size: 64, offset: 3200)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "min_uses", scope: !507, file: !508, line: 88, baseType: !126, size: 64, offset: 3264)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !507, file: !508, line: 89, baseType: !126, size: 64, offset: 3328)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "valid_msec", scope: !507, file: !508, line: 90, baseType: !126, size: 64, offset: 3392)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "vary_tag", scope: !507, file: !508, line: 91, baseType: !126, size: 64, offset: 3456)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !507, file: !508, line: 93, baseType: !224, size: 64, offset: 3520)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "file_cache", scope: !507, file: !508, line: 95, baseType: !549, size: 64, offset: 3584)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_file_cache_t", file: !74, line: 19, baseType: !551)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_file_cache_s", file: !508, line: 157, size: 1088, elements: !552)
!552 = !{!553, !568, !629, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !687}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "sh", scope: !551, file: !508, line: 158, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_file_cache_sh_t", file: !508, line: 154, baseType: !556)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !508, line: 145, size: 960, elements: !557)
!557 = !{!558, !559, !560, !561, !564, !565, !566, !567}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "rbtree", scope: !556, file: !508, line: 146, baseType: !351, size: 192)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !556, file: !508, line: 147, baseType: !182, size: 320, offset: 192)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !556, file: !508, line: 148, baseType: !195, size: 128, offset: 512)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "cold", scope: !556, file: !508, line: 149, baseType: !562, size: 64, offset: 640)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_atomic_t", file: !162, line: 106, baseType: !563)
!563 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !161)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "loading", scope: !556, file: !508, line: 150, baseType: !562, size: 64, offset: 704)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !556, file: !508, line: 151, baseType: !231, size: 64, offset: 768)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !556, file: !508, line: 152, baseType: !126, size: 64, offset: 832)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !556, file: !508, line: 153, baseType: !126, size: 64, offset: 896)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "shpool", scope: !551, file: !508, line: 159, baseType: !569, size: 64, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_slab_pool_t", file: !571, line: 59, baseType: !572)
!571 = !DIFile(filename: "src/core/ngx_slab.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "6137611cd598fa2ecc498e6967a03177")
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !571, line: 34, size: 1600, elements: !573)
!573 = !{!574, !581, !582, !583, !591, !592, !593, !602, !603, !604, !605, !624, !625, !626, !627, !628}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !572, file: !571, line: 35, baseType: !575, size: 128)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_shmtx_sh_t", file: !576, line: 21, baseType: !577)
!576 = !DIFile(filename: "src/core/ngx_shmtx.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "56a332e5761f46e2bb83cbdaf8b18a9f")
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !576, line: 16, size: 128, elements: !578)
!578 = !{!579, !580}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !577, file: !576, line: 17, baseType: !562, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !577, file: !576, line: 19, baseType: !562, size: 64, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "min_size", scope: !572, file: !571, line: 37, baseType: !152, size: 64, offset: 128)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "min_shift", scope: !572, file: !571, line: 38, baseType: !152, size: 64, offset: 192)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !572, file: !571, line: 40, baseType: !584, size: 64, offset: 256)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_slab_page_t", file: !571, line: 16, baseType: !586)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_slab_page_s", file: !571, line: 18, size: 192, elements: !587)
!587 = !{!588, !589, !590}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "slab", scope: !586, file: !571, line: 19, baseType: !127, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !586, file: !571, line: 20, baseType: !584, size: 64, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !586, file: !571, line: 21, baseType: !127, size: 64, offset: 128)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !572, file: !571, line: 41, baseType: !584, size: 64, offset: 320)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !572, file: !571, line: 42, baseType: !585, size: 192, offset: 384)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !572, file: !571, line: 44, baseType: !594, size: 64, offset: 576)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_slab_stat_t", file: !571, line: 31, baseType: !596)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !571, line: 25, size: 256, elements: !597)
!597 = !{!598, !599, !600, !601}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !596, file: !571, line: 26, baseType: !126, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !596, file: !571, line: 27, baseType: !126, size: 64, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "reqs", scope: !596, file: !571, line: 29, baseType: !126, size: 64, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "fails", scope: !596, file: !571, line: 30, baseType: !126, size: 64, offset: 192)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "pfree", scope: !572, file: !571, line: 45, baseType: !126, size: 64, offset: 640)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !572, file: !571, line: 47, baseType: !21, size: 64, offset: 704)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !572, file: !571, line: 48, baseType: !21, size: 64, offset: 768)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !572, file: !571, line: 50, baseType: !606, size: 512, offset: 832)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_shmtx_t", file: !576, line: 37, baseType: !607)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !576, line: 24, size: 512, elements: !608)
!608 = !{!609, !611, !612, !613, !623}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !607, file: !576, line: 26, baseType: !610, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !607, file: !576, line: 28, baseType: !610, size: 64, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !607, file: !576, line: 29, baseType: !126, size: 64, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !607, file: !576, line: 30, baseType: !614, size: 256, offset: 192)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "sem_t", file: !615, line: 39, baseType: !616)
!615 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/semaphore.h", directory: "", checksumkind: CSK_MD5, checksum: "f0ec69aef73516c696d526041269f8fd")
!616 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !615, line: 35, size: 256, elements: !617)
!617 = !{!618, !622}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !616, file: !615, line: 37, baseType: !619, size: 256)
!619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !620)
!620 = !{!621}
!621 = !DISubrange(count: 32)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !616, file: !615, line: 38, baseType: !33, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "spin", scope: !607, file: !576, line: 36, baseType: !126, size: 64, offset: 448)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "log_ctx", scope: !572, file: !571, line: 52, baseType: !21, size: 64, offset: 1344)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "zero", scope: !572, file: !571, line: 53, baseType: !22, size: 8, offset: 1408)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "log_nomem", scope: !572, file: !571, line: 55, baseType: !82, size: 1, offset: 1416, flags: DIFlagBitField, extraData: i64 1416)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !572, file: !571, line: 57, baseType: !27, size: 64, offset: 1472)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !572, file: !571, line: 58, baseType: !27, size: 64, offset: 1536)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !551, file: !508, line: 161, baseType: !630, size: 64, offset: 128)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_path_t", file: !241, line: 62, baseType: !632)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !241, line: 50, size: 768, elements: !633)
!633 = !{!634, !635, !636, !638, !643, !645, !647, !648, !649}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !632, file: !241, line: 51, baseType: !147, size: 128)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !632, file: !241, line: 52, baseType: !152, size: 64, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !632, file: !241, line: 53, baseType: !637, size: 192, offset: 192)
!637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 192, elements: !281)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "manager", scope: !632, file: !241, line: 55, baseType: !639, size: 64, offset: 384)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_path_manager_pt", file: !241, line: 45, baseType: !640)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{!346, !27}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "purger", scope: !632, file: !241, line: 56, baseType: !644, size: 64, offset: 448)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_path_purger_pt", file: !241, line: 46, baseType: !640)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "loader", scope: !632, file: !241, line: 57, baseType: !646, size: 64, offset: 512)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_path_loader_pt", file: !241, line: 47, baseType: !415)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !632, file: !241, line: 58, baseType: !27, size: 64, offset: 576)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "conf_file", scope: !632, file: !241, line: 60, baseType: !21, size: 64, offset: 640)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !632, file: !241, line: 61, baseType: !126, size: 64, offset: 704)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "max_size", scope: !551, file: !508, line: 163, baseType: !231, size: 64, offset: 192)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "bsize", scope: !551, file: !508, line: 164, baseType: !152, size: 64, offset: 256)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "inactive", scope: !551, file: !508, line: 166, baseType: !164, size: 64, offset: 320)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "fail_time", scope: !551, file: !508, line: 168, baseType: !164, size: 64, offset: 384)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !551, file: !508, line: 170, baseType: !126, size: 64, offset: 448)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "loader_files", scope: !551, file: !508, line: 171, baseType: !126, size: 64, offset: 512)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !551, file: !508, line: 172, baseType: !346, size: 64, offset: 576)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "loader_sleep", scope: !551, file: !508, line: 173, baseType: !346, size: 64, offset: 640)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "loader_threshold", scope: !551, file: !508, line: 174, baseType: !346, size: 64, offset: 704)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "manager_files", scope: !551, file: !508, line: 176, baseType: !126, size: 64, offset: 768)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "manager_sleep", scope: !551, file: !508, line: 177, baseType: !346, size: 64, offset: 832)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "manager_threshold", scope: !551, file: !508, line: 178, baseType: !346, size: 64, offset: 896)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "shm_zone", scope: !551, file: !508, line: 180, baseType: !663, size: 64, offset: 960)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_shm_zone_t", file: !665, line: 31, baseType: !666)
!665 = !DIFile(filename: "src/core/ngx_cycle.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "084646d0d3ecf791b89c14281fd46376")
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_shm_zone_s", file: !665, line: 37, size: 704, elements: !667)
!667 = !{!668, !669, !679, !684, !685, !686}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !666, file: !665, line: 38, baseType: !27, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "shm", scope: !666, file: !665, line: 39, baseType: !670, size: 384, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_shm_t", file: !671, line: 22, baseType: !672)
!671 = !DIFile(filename: "src/os/unix/ngx_shmem.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "bf27d4781f3b25ce5eb9a764f55ea2d4")
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !671, line: 16, size: 384, elements: !673)
!673 = !{!674, !675, !676, !677, !678}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !672, file: !671, line: 17, baseType: !21, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !672, file: !671, line: 18, baseType: !152, size: 64, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !672, file: !671, line: 19, baseType: !147, size: 128, offset: 128)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !672, file: !671, line: 20, baseType: !131, size: 64, offset: 256)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "exists", scope: !672, file: !671, line: 21, baseType: !126, size: 64, offset: 320)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !666, file: !665, line: 40, baseType: !680, size: 64, offset: 448)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_shm_zone_init_pt", file: !665, line: 33, baseType: !681)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DISubroutineType(types: !683)
!683 = !{!28, !663, !27}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !666, file: !665, line: 41, baseType: !27, size: 64, offset: 512)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !666, file: !665, line: 42, baseType: !27, size: 64, offset: 576)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "noreuse", scope: !666, file: !665, line: 43, baseType: !126, size: 64, offset: 640)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "use_temp_path", scope: !551, file: !508, line: 182, baseType: !126, size: 64, offset: 1024)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !507, file: !508, line: 96, baseType: !689, size: 64, offset: 3648)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_file_cache_node_t", file: !508, line: 62, baseType: !691)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !508, line: 39, size: 960, elements: !692)
!692 = !{!693, !694, !695, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !691, file: !508, line: 40, baseType: !182, size: 320)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !691, file: !508, line: 41, baseType: !195, size: 128, offset: 320)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !691, file: !508, line: 43, baseType: !696, size: 64, offset: 448)
!696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 64, elements: !697)
!697 = !{!698}
!698 = !DISubrange(count: 8)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !691, file: !508, line: 46, baseType: !82, size: 20, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "uses", scope: !691, file: !508, line: 47, baseType: !82, size: 10, offset: 532, flags: DIFlagBitField, extraData: i64 512)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "valid_msec", scope: !691, file: !508, line: 48, baseType: !82, size: 10, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !691, file: !508, line: 49, baseType: !82, size: 10, offset: 554, flags: DIFlagBitField, extraData: i64 544)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "exists", scope: !691, file: !508, line: 50, baseType: !82, size: 1, offset: 564, flags: DIFlagBitField, extraData: i64 544)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "updating", scope: !691, file: !508, line: 51, baseType: !82, size: 1, offset: 565, flags: DIFlagBitField, extraData: i64 544)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "deleting", scope: !691, file: !508, line: 52, baseType: !82, size: 1, offset: 566, flags: DIFlagBitField, extraData: i64 544)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "purged", scope: !691, file: !508, line: 53, baseType: !82, size: 1, offset: 567, flags: DIFlagBitField, extraData: i64 544)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !691, file: !508, line: 56, baseType: !528, size: 64, offset: 576)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "expire", scope: !691, file: !508, line: 57, baseType: !164, size: 64, offset: 640)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "valid_sec", scope: !691, file: !508, line: 58, baseType: !164, size: 64, offset: 704)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "body_start", scope: !691, file: !508, line: 59, baseType: !152, size: 64, offset: 768)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "fs_size", scope: !691, file: !508, line: 60, baseType: !231, size: 64, offset: 832)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "lock_time", scope: !691, file: !508, line: 61, baseType: !346, size: 64, offset: 896)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "lock_timeout", scope: !507, file: !508, line: 102, baseType: !346, size: 64, offset: 3712)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "lock_age", scope: !507, file: !508, line: 103, baseType: !346, size: 64, offset: 3776)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "lock_time", scope: !507, file: !508, line: 104, baseType: !346, size: 64, offset: 3840)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "wait_time", scope: !507, file: !508, line: 105, baseType: !346, size: 64, offset: 3904)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "wait_event", scope: !507, file: !508, line: 107, baseType: !93, size: 768, offset: 3968)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !507, file: !508, line: 109, baseType: !82, size: 1, offset: 4736, flags: DIFlagBitField, extraData: i64 4736)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "waiting", scope: !507, file: !508, line: 110, baseType: !82, size: 1, offset: 4737, flags: DIFlagBitField, extraData: i64 4736)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "updated", scope: !507, file: !508, line: 112, baseType: !82, size: 1, offset: 4738, flags: DIFlagBitField, extraData: i64 4736)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "updating", scope: !507, file: !508, line: 113, baseType: !82, size: 1, offset: 4739, flags: DIFlagBitField, extraData: i64 4736)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "exists", scope: !507, file: !508, line: 114, baseType: !82, size: 1, offset: 4740, flags: DIFlagBitField, extraData: i64 4736)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file", scope: !507, file: !508, line: 115, baseType: !82, size: 1, offset: 4741, flags: DIFlagBitField, extraData: i64 4736)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "purged", scope: !507, file: !508, line: 116, baseType: !82, size: 1, offset: 4742, flags: DIFlagBitField, extraData: i64 4736)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "reading", scope: !507, file: !508, line: 117, baseType: !82, size: 1, offset: 4743, flags: DIFlagBitField, extraData: i64 4736)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !507, file: !508, line: 118, baseType: !82, size: 1, offset: 4744, flags: DIFlagBitField, extraData: i64 4736)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "background", scope: !507, file: !508, line: 119, baseType: !82, size: 1, offset: 4745, flags: DIFlagBitField, extraData: i64 4736)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "stale_updating", scope: !507, file: !508, line: 121, baseType: !82, size: 1, offset: 4746, flags: DIFlagBitField, extraData: i64 4736)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "stale_error", scope: !507, file: !508, line: 122, baseType: !82, size: 1, offset: 4747, flags: DIFlagBitField, extraData: i64 4736)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "upstream", scope: !75, file: !76, line: 388, baseType: !731, size: 64, offset: 576)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_t", file: !74, line: 17, baseType: !733)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_upstream_s", file: !734, line: 319, size: 8960, elements: !735)
!734 = !DIFile(filename: "src/http/ngx_http_upstream.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "c0fceda7aff0a351f062ef07edbc2de2")
!735 = !{!736, !741, !742, !791, !870, !871, !893, !902, !1183, !1184, !1185, !1186, !1187, !1188, !1228, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1409, !1413, !1414, !1418, !1419, !1420, !1421, !1422, !1426, !1430, !1434, !1435, !1449, !1450, !1451, !1452, !1453, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "read_event_handler", scope: !733, file: !734, line: 320, baseType: !737, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_handler_pt", file: !734, line: 315, baseType: !738)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{null, !72, !731}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "write_event_handler", scope: !733, file: !734, line: 321, baseType: !737, size: 64, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !733, file: !734, line: 323, baseType: !743, size: 1024, offset: 128)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_peer_connection_t", file: !744, line: 22, baseType: !745)
!744 = !DIFile(filename: "src/event/ngx_event_connect.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "ac5aedde14d2cb26bc31b0019c79e36b")
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_peer_connection_s", file: !744, line: 36, size: 1024, elements: !746)
!746 = !{!747, !748, !749, !750, !752, !753, !754, !760, !765, !767, !768, !770, !775, !784, !785, !786, !787, !788, !789, !790}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !745, file: !744, line: 37, baseType: !84, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !745, file: !744, line: 39, baseType: !314, size: 64, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !745, file: !744, line: 40, baseType: !324, size: 32, offset: 128)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !745, file: !744, line: 41, baseType: !751, size: 64, offset: 192)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "tries", scope: !745, file: !744, line: 43, baseType: !126, size: 64, offset: 256)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !745, file: !744, line: 44, baseType: !346, size: 64, offset: 320)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !745, file: !744, line: 46, baseType: !755, size: 64, offset: 384)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_get_peer_pt", file: !744, line: 24, baseType: !756)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!28, !759, !27}
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !745, file: !744, line: 47, baseType: !761, size: 64, offset: 448)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_free_peer_pt", file: !744, line: 26, baseType: !762)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DISubroutineType(types: !764)
!764 = !{null, !759, !27, !126}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !745, file: !744, line: 48, baseType: !766, size: 64, offset: 512)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_notify_peer_pt", file: !744, line: 28, baseType: !762)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !745, file: !744, line: 49, baseType: !27, size: 64, offset: 576)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "set_session", scope: !745, file: !744, line: 52, baseType: !769, size: 64, offset: 640)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_set_peer_session_pt", file: !744, line: 30, baseType: !756)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "save_session", scope: !745, file: !744, line: 53, baseType: !771, size: 64, offset: 704)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_save_peer_session_pt", file: !744, line: 32, baseType: !772)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{null, !759, !27}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !745, file: !744, line: 56, baseType: !776, size: 64, offset: 768)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_addr_t", file: !778, line: 78, baseType: !779)
!778 = !DIFile(filename: "src/core/ngx_inet.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "6d8b5de9d803e9eabdd54c00fd750bd0")
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !778, line: 74, size: 256, elements: !780)
!780 = !{!781, !782, !783}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !779, file: !778, line: 75, baseType: !314, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !779, file: !778, line: 76, baseType: !324, size: 32, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !779, file: !778, line: 77, baseType: !147, size: 128, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !745, file: !744, line: 58, baseType: !34, size: 32, offset: 832)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "rcvbuf", scope: !745, file: !744, line: 59, baseType: !34, size: 32, offset: 864)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !745, file: !744, line: 61, baseType: !131, size: 64, offset: 896)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "cached", scope: !745, file: !744, line: 63, baseType: !82, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !745, file: !744, line: 64, baseType: !82, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "so_keepalive", scope: !745, file: !744, line: 65, baseType: !82, size: 1, offset: 962, flags: DIFlagBitField, extraData: i64 960)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "log_error", scope: !745, file: !744, line: 68, baseType: !82, size: 2, offset: 963, flags: DIFlagBitField, extraData: i64 960)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !733, file: !734, line: 325, baseType: !792, size: 64, offset: 1152)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_pipe_t", file: !794, line: 17, baseType: !795)
!794 = !DIFile(filename: "src/event/ngx_event_pipe.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "d3e71392e0da0dbb3c5c631f1da185c7")
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_event_pipe_s", file: !794, line: 25, size: 2240, elements: !796)
!796 = !{!797, !798, !799, !800, !801, !803, !804, !805, !806, !807, !812, !813, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !869}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "upstream", scope: !795, file: !794, line: 26, baseType: !84, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "downstream", scope: !795, file: !794, line: 27, baseType: !84, size: 64, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "free_raw_bufs", scope: !795, file: !794, line: 29, baseType: !219, size: 64, offset: 128)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !795, file: !794, line: 30, baseType: !219, size: 64, offset: 192)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "last_in", scope: !795, file: !794, line: 31, baseType: !802, size: 64, offset: 256)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "writing", scope: !795, file: !794, line: 33, baseType: !219, size: 64, offset: 320)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !795, file: !794, line: 35, baseType: !219, size: 64, offset: 384)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !795, file: !794, line: 36, baseType: !219, size: 64, offset: 448)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !795, file: !794, line: 37, baseType: !219, size: 64, offset: 512)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "input_filter", scope: !795, file: !794, line: 44, baseType: !808, size: 64, offset: 576)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_pipe_input_filter_pt", file: !794, line: 19, baseType: !809)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{!28, !792, !224}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "input_ctx", scope: !795, file: !794, line: 45, baseType: !27, size: 64, offset: 640)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "output_filter", scope: !795, file: !794, line: 47, baseType: !814, size: 64, offset: 704)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_pipe_output_filter_pt", file: !794, line: 21, baseType: !815)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DISubroutineType(types: !817)
!817 = !{!28, !27, !219}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "output_ctx", scope: !795, file: !794, line: 48, baseType: !27, size: 64, offset: 768)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !795, file: !794, line: 57, baseType: !82, size: 1, offset: 832, flags: DIFlagBitField, extraData: i64 832)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "cacheable", scope: !795, file: !794, line: 58, baseType: !82, size: 1, offset: 833, flags: DIFlagBitField, extraData: i64 832)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "single_buf", scope: !795, file: !794, line: 59, baseType: !82, size: 1, offset: 834, flags: DIFlagBitField, extraData: i64 832)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "free_bufs", scope: !795, file: !794, line: 60, baseType: !82, size: 1, offset: 835, flags: DIFlagBitField, extraData: i64 832)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_done", scope: !795, file: !794, line: 61, baseType: !82, size: 1, offset: 836, flags: DIFlagBitField, extraData: i64 832)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_error", scope: !795, file: !794, line: 62, baseType: !82, size: 1, offset: 837, flags: DIFlagBitField, extraData: i64 832)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_eof", scope: !795, file: !794, line: 63, baseType: !82, size: 1, offset: 838, flags: DIFlagBitField, extraData: i64 832)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_blocked", scope: !795, file: !794, line: 64, baseType: !82, size: 1, offset: 839, flags: DIFlagBitField, extraData: i64 832)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "downstream_done", scope: !795, file: !794, line: 65, baseType: !82, size: 1, offset: 840, flags: DIFlagBitField, extraData: i64 832)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "downstream_error", scope: !795, file: !794, line: 66, baseType: !82, size: 1, offset: 841, flags: DIFlagBitField, extraData: i64 832)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "cyclic_temp_file", scope: !795, file: !794, line: 67, baseType: !82, size: 1, offset: 842, flags: DIFlagBitField, extraData: i64 832)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "aio", scope: !795, file: !794, line: 68, baseType: !82, size: 1, offset: 843, flags: DIFlagBitField, extraData: i64 832)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !795, file: !794, line: 70, baseType: !28, size: 64, offset: 896)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !795, file: !794, line: 71, baseType: !833, size: 128, offset: 960)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_bufs_t", file: !37, line: 68, baseType: !834)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 65, size: 128, elements: !835)
!835 = !{!836, !837}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !834, file: !37, line: 66, baseType: !28, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !834, file: !37, line: 67, baseType: !152, size: 64, offset: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !795, file: !794, line: 72, baseType: !36, size: 64, offset: 1088)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "busy_size", scope: !795, file: !794, line: 74, baseType: !210, size: 64, offset: 1152)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "read_length", scope: !795, file: !794, line: 76, baseType: !231, size: 64, offset: 1216)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !795, file: !794, line: 77, baseType: !231, size: 64, offset: 1280)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "max_temp_file_size", scope: !795, file: !794, line: 79, baseType: !231, size: 64, offset: 1344)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file_write_size", scope: !795, file: !794, line: 80, baseType: !210, size: 64, offset: 1408)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "read_timeout", scope: !795, file: !794, line: 82, baseType: !346, size: 64, offset: 1472)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "send_timeout", scope: !795, file: !794, line: 83, baseType: !346, size: 64, offset: 1536)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "send_lowat", scope: !795, file: !794, line: 84, baseType: !210, size: 64, offset: 1600)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !795, file: !794, line: 86, baseType: !385, size: 64, offset: 1664)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !795, file: !794, line: 87, baseType: !131, size: 64, offset: 1728)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "preread_bufs", scope: !795, file: !794, line: 89, baseType: !219, size: 64, offset: 1792)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "preread_size", scope: !795, file: !794, line: 90, baseType: !152, size: 64, offset: 1856)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "buf_to_file", scope: !795, file: !794, line: 91, baseType: !224, size: 64, offset: 1920)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "limit_rate", scope: !795, file: !794, line: 93, baseType: !152, size: 64, offset: 1984)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "start_sec", scope: !795, file: !794, line: 94, baseType: !164, size: 64, offset: 2048)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file", scope: !795, file: !794, line: 96, baseType: !855, size: 64, offset: 2112)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_temp_file_t", file: !241, line: 84, baseType: !857)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !241, line: 71, size: 1984, elements: !858)
!858 = !{!859, !860, !861, !862, !863, !864, !865, !866, !867, !868}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !857, file: !241, line: 72, baseType: !239, size: 1600)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !857, file: !241, line: 73, baseType: !231, size: 64, offset: 1600)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !857, file: !241, line: 74, baseType: !630, size: 64, offset: 1664)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !857, file: !241, line: 75, baseType: !385, size: 64, offset: 1728)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "warn", scope: !857, file: !241, line: 76, baseType: !35, size: 64, offset: 1792)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !857, file: !241, line: 78, baseType: !126, size: 64, offset: 1856)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "log_level", scope: !857, file: !241, line: 80, baseType: !82, size: 8, offset: 1920, flags: DIFlagBitField, extraData: i64 1920)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "persistent", scope: !857, file: !241, line: 81, baseType: !82, size: 1, offset: 1928, flags: DIFlagBitField, extraData: i64 1920)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "clean", scope: !857, file: !241, line: 82, baseType: !82, size: 1, offset: 1929, flags: DIFlagBitField, extraData: i64 1920)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "thread_write", scope: !857, file: !241, line: 83, baseType: !82, size: 1, offset: 1930, flags: DIFlagBitField, extraData: i64 1920)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !795, file: !794, line: 98, baseType: !34, size: 32, offset: 2176)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "request_bufs", scope: !733, file: !734, line: 327, baseType: !219, size: 64, offset: 1216)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !733, file: !734, line: 329, baseType: !872, size: 832, offset: 1280)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_output_chain_ctx_t", file: !37, line: 71, baseType: !873)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_output_chain_ctx_s", file: !37, line: 78, size: 832, elements: !874)
!874 = !{!875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !892}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !873, file: !37, line: 79, baseType: !224, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !873, file: !37, line: 80, baseType: !219, size: 64, offset: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !873, file: !37, line: 81, baseType: !219, size: 64, offset: 128)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !873, file: !37, line: 82, baseType: !219, size: 64, offset: 192)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "sendfile", scope: !873, file: !37, line: 84, baseType: !82, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "directio", scope: !873, file: !37, line: 85, baseType: !82, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "unaligned", scope: !873, file: !37, line: 86, baseType: !82, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "need_in_memory", scope: !873, file: !37, line: 87, baseType: !82, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "need_in_temp", scope: !873, file: !37, line: 88, baseType: !82, size: 1, offset: 260, flags: DIFlagBitField, extraData: i64 256)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "aio", scope: !873, file: !37, line: 89, baseType: !82, size: 1, offset: 261, flags: DIFlagBitField, extraData: i64 256)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !873, file: !37, line: 104, baseType: !231, size: 64, offset: 320)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !873, file: !37, line: 106, baseType: !385, size: 64, offset: 384)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !873, file: !37, line: 107, baseType: !28, size: 64, offset: 448)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !873, file: !37, line: 108, baseType: !833, size: 128, offset: 512)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !873, file: !37, line: 109, baseType: !36, size: 64, offset: 640)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "output_filter", scope: !873, file: !37, line: 111, baseType: !891, size: 64, offset: 704)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_output_chain_filter_pt", file: !37, line: 73, baseType: !815)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "filter_ctx", scope: !873, file: !37, line: 112, baseType: !27, size: 64, offset: 768)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !733, file: !734, line: 330, baseType: !894, size: 320, offset: 2112)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_chain_writer_ctx_t", file: !37, line: 122, baseType: !895)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 116, size: 320, elements: !896)
!896 = !{!897, !898, !899, !900, !901}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !895, file: !37, line: 117, baseType: !219, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !895, file: !37, line: 118, baseType: !802, size: 64, offset: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !895, file: !37, line: 119, baseType: !84, size: 64, offset: 128)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !895, file: !37, line: 120, baseType: !385, size: 64, offset: 192)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !895, file: !37, line: 121, baseType: !231, size: 64, offset: 256)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !733, file: !734, line: 332, baseType: !903, size: 64, offset: 2432)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_conf_t", file: !734, line: 243, baseType: !905)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !734, line: 149, size: 3904, elements: !906)
!906 = !{!907, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1125, !1126, !1127, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1178, !1179, !1180, !1181, !1182}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "upstream", scope: !905, file: !734, line: 150, baseType: !908, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_srv_conf_t", file: !734, line: 79, baseType: !910)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_upstream_srv_conf_s", file: !734, line: 121, size: 832, elements: !911)
!911 = !{!912, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !910, file: !734, line: 122, baseType: !913, size: 192)
!913 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_peer_t", file: !734, line: 91, baseType: !914)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !734, line: 87, size: 192, elements: !915)
!915 = !{!916, !1064, !1069}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "init_upstream", scope: !914, file: !734, line: 88, baseType: !917, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_init_pt", file: !734, line: 81, baseType: !918)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DISubroutineType(types: !920)
!920 = !{!28, !921, !908}
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_conf_t", file: !86, line: 16, baseType: !923)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_conf_s", file: !141, line: 116, size: 768, elements: !924)
!924 = !{!925, !926, !928, !1046, !1047, !1048, !1057, !1058, !1059, !1060, !1061, !1063}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !923, file: !141, line: 117, baseType: !35, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !923, file: !141, line: 118, baseType: !927, size: 64, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "cycle", scope: !923, file: !141, line: 120, baseType: !929, size: 64, offset: 128)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_cycle_t", file: !86, line: 17, baseType: !931)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_cycle_s", file: !665, line: 47, size: 5184, elements: !932)
!932 = !{!933, !936, !937, !938, !939, !940, !942, !943, !944, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1044, !1045}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "conf_ctx", scope: !931, file: !665, line: 48, baseType: !934, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !931, file: !665, line: 49, baseType: !385, size: 64, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !931, file: !665, line: 51, baseType: !131, size: 64, offset: 128)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "new_log", scope: !931, file: !665, line: 52, baseType: !132, size: 640, offset: 192)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "log_use_stderr", scope: !931, file: !665, line: 54, baseType: !126, size: 64, offset: 832)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !931, file: !665, line: 56, baseType: !941, size: 64, offset: 896)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "free_connections", scope: !931, file: !665, line: 57, baseType: !84, size: 64, offset: 960)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "free_connection_n", scope: !931, file: !665, line: 58, baseType: !126, size: 64, offset: 1024)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !931, file: !665, line: 60, baseType: !945, size: 64, offset: 1088)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_module_t", file: !86, line: 15, baseType: !948)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_module_s", file: !949, line: 222, size: 1600, elements: !950)
!949 = !DIFile(filename: "src/core/ngx_module.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "1b2032f87974a892f93f4098e8fc0619")
!950 = !{!951, !952, !953, !954, !955, !956, !957, !960, !961, !975, !976, !980, !984, !985, !986, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_index", scope: !948, file: !949, line: 223, baseType: !126, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !948, file: !949, line: 224, baseType: !126, size: 64, offset: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !948, file: !949, line: 226, baseType: !35, size: 64, offset: 128)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "spare0", scope: !948, file: !949, line: 228, baseType: !126, size: 64, offset: 192)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "spare1", scope: !948, file: !949, line: 229, baseType: !126, size: 64, offset: 256)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !948, file: !949, line: 231, baseType: !126, size: 64, offset: 320)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !948, file: !949, line: 232, baseType: !958, size: 64, offset: 384)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !948, file: !949, line: 234, baseType: !27, size: 64, offset: 448)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !948, file: !949, line: 235, baseType: !962, size: 64, offset: 512)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_command_t", file: !86, line: 22, baseType: !964)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_command_s", file: !141, line: 77, size: 448, elements: !965)
!965 = !{!966, !967, !968, !972, !973, !974}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !964, file: !141, line: 78, baseType: !147, size: 128)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !964, file: !141, line: 79, baseType: !126, size: 64, offset: 128)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !964, file: !141, line: 80, baseType: !969, size: 64, offset: 192)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DISubroutineType(types: !971)
!971 = !{!35, !921, !962, !27}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !964, file: !141, line: 81, baseType: !126, size: 64, offset: 256)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !964, file: !141, line: 82, baseType: !126, size: 64, offset: 320)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "post", scope: !964, file: !141, line: 83, baseType: !27, size: 64, offset: 384)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !948, file: !949, line: 236, baseType: !126, size: 64, offset: 576)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "init_master", scope: !948, file: !949, line: 238, baseType: !977, size: 64, offset: 640)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DISubroutineType(types: !979)
!979 = !{!28, !131}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "init_module", scope: !948, file: !949, line: 240, baseType: !981, size: 64, offset: 704)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DISubroutineType(types: !983)
!983 = !{!28, !929}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "init_process", scope: !948, file: !949, line: 242, baseType: !981, size: 64, offset: 768)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "init_thread", scope: !948, file: !949, line: 243, baseType: !981, size: 64, offset: 832)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "exit_thread", scope: !948, file: !949, line: 244, baseType: !987, size: 64, offset: 896)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DISubroutineType(types: !989)
!989 = !{null, !929}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "exit_process", scope: !948, file: !949, line: 245, baseType: !987, size: 64, offset: 960)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "exit_master", scope: !948, file: !949, line: 247, baseType: !987, size: 64, offset: 1024)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook0", scope: !948, file: !949, line: 249, baseType: !127, size: 64, offset: 1088)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook1", scope: !948, file: !949, line: 250, baseType: !127, size: 64, offset: 1152)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook2", scope: !948, file: !949, line: 251, baseType: !127, size: 64, offset: 1216)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook3", scope: !948, file: !949, line: 252, baseType: !127, size: 64, offset: 1280)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook4", scope: !948, file: !949, line: 253, baseType: !127, size: 64, offset: 1344)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook5", scope: !948, file: !949, line: 254, baseType: !127, size: 64, offset: 1408)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook6", scope: !948, file: !949, line: 255, baseType: !127, size: 64, offset: 1472)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook7", scope: !948, file: !949, line: 256, baseType: !127, size: 64, offset: 1536)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "modules_n", scope: !931, file: !665, line: 61, baseType: !126, size: 64, offset: 1152)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "modules_used", scope: !931, file: !665, line: 62, baseType: !126, size: 64, offset: 1216)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "reusable_connections_queue", scope: !931, file: !665, line: 64, baseType: !195, size: 128, offset: 1280)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "reusable_connections_n", scope: !931, file: !665, line: 65, baseType: !126, size: 64, offset: 1408)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "listening", scope: !931, file: !665, line: 67, baseType: !512, size: 320, offset: 1472)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "paths", scope: !931, file: !665, line: 68, baseType: !512, size: 320, offset: 1792)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "config_dump", scope: !931, file: !665, line: 70, baseType: !512, size: 320, offset: 2112)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "config_dump_rbtree", scope: !931, file: !665, line: 71, baseType: !351, size: 192, offset: 2432)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "config_dump_sentinel", scope: !931, file: !665, line: 72, baseType: !182, size: 320, offset: 2624)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "open_files", scope: !931, file: !665, line: 74, baseType: !1010, size: 448, offset: 2944)
!1010 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_list_t", file: !1011, line: 31, baseType: !1012)
!1011 = !DIFile(filename: "src/core/ngx_list.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "580525d954b127a1c35170a83ca4d8b1")
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1011, line: 25, size: 448, elements: !1013)
!1013 = !{!1014, !1022, !1023, !1024, !1025}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1012, file: !1011, line: 26, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_list_part_t", file: !1011, line: 16, baseType: !1017)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_list_part_s", file: !1011, line: 18, size: 192, elements: !1018)
!1018 = !{!1019, !1020, !1021}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1017, file: !1011, line: 19, baseType: !27, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "nelts", scope: !1017, file: !1011, line: 20, baseType: !126, size: 64, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1017, file: !1011, line: 21, baseType: !1015, size: 64, offset: 128)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !1012, file: !1011, line: 27, baseType: !1016, size: 192, offset: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1012, file: !1011, line: 28, baseType: !152, size: 64, offset: 256)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "nalloc", scope: !1012, file: !1011, line: 29, baseType: !126, size: 64, offset: 320)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !1012, file: !1011, line: 30, baseType: !385, size: 64, offset: 384)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "shared_memory", scope: !931, file: !665, line: 75, baseType: !1010, size: 448, offset: 3392)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "connection_n", scope: !931, file: !665, line: 77, baseType: !126, size: 64, offset: 3840)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "files_n", scope: !931, file: !665, line: 78, baseType: !126, size: 64, offset: 3904)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "connections", scope: !931, file: !665, line: 80, baseType: !84, size: 64, offset: 3968)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "read_events", scope: !931, file: !665, line: 81, baseType: !92, size: 64, offset: 4032)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "write_events", scope: !931, file: !665, line: 82, baseType: !92, size: 64, offset: 4096)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "old_cycle", scope: !931, file: !665, line: 84, baseType: !929, size: 64, offset: 4160)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "conf_file", scope: !931, file: !665, line: 86, baseType: !147, size: 128, offset: 4224)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "conf_param", scope: !931, file: !665, line: 87, baseType: !147, size: 128, offset: 4352)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "conf_prefix", scope: !931, file: !665, line: 88, baseType: !147, size: 128, offset: 4480)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !931, file: !665, line: 89, baseType: !147, size: 128, offset: 4608)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "lock_file", scope: !931, file: !665, line: 90, baseType: !147, size: 128, offset: 4736)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "hostname", scope: !931, file: !665, line: 91, baseType: !147, size: 128, offset: 4864)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "intercept_error_log_handler", scope: !931, file: !665, line: 93, baseType: !1040, size: 64, offset: 4992)
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_log_intercept_pt", file: !665, line: 34, baseType: !1041)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!28, !131, !126, !21, !152}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "intercept_error_log_data", scope: !931, file: !665, line: 94, baseType: !27, size: 64, offset: 5056)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "entered_logger", scope: !931, file: !665, line: 95, baseType: !82, size: 32, offset: 5120)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !923, file: !141, line: 121, baseType: !385, size: 64, offset: 192)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "temp_pool", scope: !923, file: !141, line: 122, baseType: !385, size: 64, offset: 256)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "conf_file", scope: !923, file: !141, line: 123, baseType: !1049, size: 64, offset: 320)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_conf_file_t", file: !141, line: 103, baseType: !1051)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !141, line: 98, size: 1792, elements: !1052)
!1052 = !{!1053, !1054, !1055, !1056}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1051, file: !141, line: 99, baseType: !239, size: 1600)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1051, file: !141, line: 100, baseType: !224, size: 64, offset: 1600)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !1051, file: !141, line: 101, baseType: !224, size: 64, offset: 1664)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1051, file: !141, line: 102, baseType: !126, size: 64, offset: 1728)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !923, file: !141, line: 124, baseType: !131, size: 64, offset: 384)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !923, file: !141, line: 126, baseType: !27, size: 64, offset: 448)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "module_type", scope: !923, file: !141, line: 127, baseType: !126, size: 64, offset: 512)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_type", scope: !923, file: !141, line: 128, baseType: !126, size: 64, offset: 576)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !923, file: !141, line: 130, baseType: !1062, size: 64, offset: 640)
!1062 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_conf_handler_pt", file: !141, line: 112, baseType: !969)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "handler_conf", scope: !923, file: !141, line: 131, baseType: !27, size: 64, offset: 704)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !914, file: !734, line: 89, baseType: !1065, size: 64, offset: 64)
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_init_peer_pt", file: !734, line: 83, baseType: !1066)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!28, !72, !908}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !914, file: !734, line: 90, baseType: !27, size: 64, offset: 128)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "srv_conf", scope: !910, file: !734, line: 123, baseType: !494, size: 64, offset: 192)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "servers", scope: !910, file: !734, line: 125, baseType: !927, size: 64, offset: 256)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !910, file: !734, line: 127, baseType: !126, size: 64, offset: 320)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !910, file: !734, line: 128, baseType: !147, size: 128, offset: 384)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "file_name", scope: !910, file: !734, line: 129, baseType: !21, size: 64, offset: 512)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !910, file: !734, line: 130, baseType: !126, size: 64, offset: 576)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !910, file: !734, line: 131, baseType: !427, size: 16, offset: 640)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "no_port", scope: !910, file: !734, line: 132, baseType: !126, size: 64, offset: 704)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "shm_zone", scope: !910, file: !734, line: 135, baseType: !663, size: 64, offset: 768)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "connect_timeout", scope: !905, file: !734, line: 152, baseType: !346, size: 64, offset: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "send_timeout", scope: !905, file: !734, line: 153, baseType: !346, size: 64, offset: 128)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "read_timeout", scope: !905, file: !734, line: 154, baseType: !346, size: 64, offset: 192)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "next_upstream_timeout", scope: !905, file: !734, line: 155, baseType: !346, size: 64, offset: 256)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "send_lowat", scope: !905, file: !734, line: 157, baseType: !152, size: 64, offset: 320)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_size", scope: !905, file: !734, line: 158, baseType: !152, size: 64, offset: 384)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "limit_rate", scope: !905, file: !734, line: 159, baseType: !152, size: 64, offset: 448)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "busy_buffers_size", scope: !905, file: !734, line: 161, baseType: !152, size: 64, offset: 512)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "max_temp_file_size", scope: !905, file: !734, line: 162, baseType: !152, size: 64, offset: 576)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file_write_size", scope: !905, file: !734, line: 163, baseType: !152, size: 64, offset: 640)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "busy_buffers_size_conf", scope: !905, file: !734, line: 165, baseType: !152, size: 64, offset: 704)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "max_temp_file_size_conf", scope: !905, file: !734, line: 166, baseType: !152, size: 64, offset: 768)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file_write_size_conf", scope: !905, file: !734, line: 167, baseType: !152, size: 64, offset: 832)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !905, file: !734, line: 169, baseType: !833, size: 128, offset: 896)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_headers", scope: !905, file: !734, line: 171, baseType: !126, size: 64, offset: 1024)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "next_upstream", scope: !905, file: !734, line: 172, baseType: !126, size: 64, offset: 1088)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "store_access", scope: !905, file: !734, line: 173, baseType: !126, size: 64, offset: 1152)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "next_upstream_tries", scope: !905, file: !734, line: 174, baseType: !126, size: 64, offset: 1216)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "buffering", scope: !905, file: !734, line: 175, baseType: !1098, size: 64, offset: 1280)
!1098 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_flag_t", file: !29, line: 80, baseType: !30)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "request_buffering", scope: !905, file: !734, line: 176, baseType: !1098, size: 64, offset: 1344)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "pass_request_headers", scope: !905, file: !734, line: 177, baseType: !1098, size: 64, offset: 1408)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "pass_request_body", scope: !905, file: !734, line: 178, baseType: !1098, size: 64, offset: 1472)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_client_abort", scope: !905, file: !734, line: 180, baseType: !1098, size: 64, offset: 1536)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "intercept_errors", scope: !905, file: !734, line: 181, baseType: !1098, size: 64, offset: 1600)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "cyclic_temp_file", scope: !905, file: !734, line: 182, baseType: !1098, size: 64, offset: 1664)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "force_ranges", scope: !905, file: !734, line: 183, baseType: !1098, size: 64, offset: 1728)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "temp_path", scope: !905, file: !734, line: 185, baseType: !630, size: 64, offset: 1792)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "hide_headers_hash", scope: !905, file: !734, line: 187, baseType: !1108, size: 128, offset: 1856)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_hash_t", file: !1109, line: 26, baseType: !1110)
!1109 = !DIFile(filename: "src/core/ngx_hash.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "0105a354ed20d0c1188bbf16af851351")
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1109, line: 23, size: 128, elements: !1111)
!1111 = !{!1112, !1124}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "buckets", scope: !1110, file: !1109, line: 24, baseType: !1113, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_hash_elt_t", file: !1109, line: 20, baseType: !1116)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1109, line: 16, size: 128, elements: !1117)
!1117 = !{!1118, !1119, !1122}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1116, file: !1109, line: 17, baseType: !27, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1116, file: !1109, line: 18, baseType: !1120, size: 16, offset: 64)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_short", file: !23, line: 34, baseType: !1121)
!1121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_short", file: !25, line: 32, baseType: !321)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1116, file: !1109, line: 19, baseType: !1123, size: 8, offset: 80)
!1123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 8, elements: !44)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1110, file: !1109, line: 25, baseType: !126, size: 64, offset: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "hide_headers", scope: !905, file: !734, line: 188, baseType: !927, size: 64, offset: 1984)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "pass_headers", scope: !905, file: !734, line: 189, baseType: !927, size: 64, offset: 2048)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !905, file: !734, line: 191, baseType: !1128, size: 64, offset: 2112)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_local_t", file: !734, line: 146, baseType: !1130)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !734, line: 140, size: 192, elements: !1131)
!1131 = !{!1132, !1133, !1144}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1130, file: !734, line: 141, baseType: !776, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1130, file: !734, line: 142, baseType: !1134, size: 64, offset: 64)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_complex_value_t", file: !1136, line: 71, baseType: !1137)
!1136 = !DIFile(filename: "src/http/ngx_http_script.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "c578244e54828180ff4c16989ec8b484")
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1136, line: 66, size: 320, elements: !1138)
!1138 = !{!1139, !1140, !1142, !1143}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1137, file: !1136, line: 67, baseType: !147, size: 128)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "flushes", scope: !1137, file: !1136, line: 68, baseType: !1141, size: 64, offset: 128)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "lengths", scope: !1137, file: !1136, line: 69, baseType: !27, size: 64, offset: 192)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1137, file: !1136, line: 70, baseType: !27, size: 64, offset: 256)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !1130, file: !734, line: 144, baseType: !126, size: 64, offset: 128)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "socket_keepalive", scope: !905, file: !734, line: 192, baseType: !1098, size: 64, offset: 2176)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "cache_zone", scope: !905, file: !734, line: 195, baseType: !663, size: 64, offset: 2240)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "cache_value", scope: !905, file: !734, line: 196, baseType: !1134, size: 64, offset: 2304)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "cache_min_uses", scope: !905, file: !734, line: 198, baseType: !126, size: 64, offset: 2368)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "cache_use_stale", scope: !905, file: !734, line: 199, baseType: !126, size: 64, offset: 2432)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "cache_methods", scope: !905, file: !734, line: 200, baseType: !126, size: 64, offset: 2496)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "cache_max_range_offset", scope: !905, file: !734, line: 202, baseType: !231, size: 64, offset: 2560)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "cache_lock", scope: !905, file: !734, line: 204, baseType: !1098, size: 64, offset: 2624)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "cache_lock_timeout", scope: !905, file: !734, line: 205, baseType: !346, size: 64, offset: 2688)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "cache_lock_age", scope: !905, file: !734, line: 206, baseType: !346, size: 64, offset: 2752)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "cache_revalidate", scope: !905, file: !734, line: 208, baseType: !1098, size: 64, offset: 2816)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "cache_convert_head", scope: !905, file: !734, line: 209, baseType: !1098, size: 64, offset: 2880)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "cache_background_update", scope: !905, file: !734, line: 210, baseType: !1098, size: 64, offset: 2944)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "cache_valid", scope: !905, file: !734, line: 212, baseType: !927, size: 64, offset: 3008)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "cache_bypass", scope: !905, file: !734, line: 213, baseType: !927, size: 64, offset: 3072)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "cache_purge", scope: !905, file: !734, line: 214, baseType: !927, size: 64, offset: 3136)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "no_cache", scope: !905, file: !734, line: 215, baseType: !927, size: 64, offset: 3200)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "store_lengths", scope: !905, file: !734, line: 218, baseType: !927, size: 64, offset: 3264)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "store_values", scope: !905, file: !734, line: 219, baseType: !927, size: 64, offset: 3328)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !905, file: !734, line: 222, baseType: !34, size: 2, offset: 3392, flags: DIFlagBitField, extraData: i64 3392)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !905, file: !734, line: 224, baseType: !34, size: 2, offset: 3394, flags: DIFlagBitField, extraData: i64 3392)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "intercept_404", scope: !905, file: !734, line: 225, baseType: !82, size: 1, offset: 3396, flags: DIFlagBitField, extraData: i64 3392)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "change_buffering", scope: !905, file: !734, line: 226, baseType: !82, size: 1, offset: 3397, flags: DIFlagBitField, extraData: i64 3392)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "pass_trailers", scope: !905, file: !734, line: 227, baseType: !82, size: 1, offset: 3398, flags: DIFlagBitField, extraData: i64 3392)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_output", scope: !905, file: !734, line: 228, baseType: !82, size: 1, offset: 3399, flags: DIFlagBitField, extraData: i64 3392)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !905, file: !734, line: 231, baseType: !1171, size: 64, offset: 3456)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_ssl_t", file: !86, line: 28, baseType: !1173)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_ssl_s", file: !435, line: 67, size: 192, elements: !1174)
!1174 = !{!1175, !1176, !1177}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !1173, file: !435, line: 68, baseType: !443, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !1173, file: !435, line: 69, baseType: !131, size: 64, offset: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_size", scope: !1173, file: !435, line: 70, baseType: !152, size: 64, offset: 128)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_session_reuse", scope: !905, file: !734, line: 232, baseType: !1098, size: 64, offset: 3520)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_name", scope: !905, file: !734, line: 234, baseType: !1134, size: 64, offset: 3584)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_server_name", scope: !905, file: !734, line: 235, baseType: !1098, size: 64, offset: 3648)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_verify", scope: !905, file: !734, line: 236, baseType: !1098, size: 64, offset: 3712)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !905, file: !734, line: 239, baseType: !147, size: 128, offset: 3776)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "upstream", scope: !733, file: !734, line: 333, baseType: !908, size: 64, offset: 2496)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "caches", scope: !733, file: !734, line: 335, baseType: !927, size: 64, offset: 2560)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "connect_timeout", scope: !733, file: !734, line: 339, baseType: !346, size: 64, offset: 2624)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "send_timeout", scope: !733, file: !734, line: 340, baseType: !346, size: 64, offset: 2688)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "read_timeout", scope: !733, file: !734, line: 341, baseType: !346, size: 64, offset: 2752)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "headers_in", scope: !733, file: !734, line: 343, baseType: !1189, size: 3072, offset: 2816)
!1189 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_headers_in_t", file: !734, line: 296, baseType: !1190)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !734, line: 256, size: 3072, elements: !1191)
!1191 = !{!1192, !1193, !1194, !1195, !1196, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !1190, file: !734, line: 257, baseType: !1010, size: 448)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "trailers", scope: !1190, file: !734, line: 258, baseType: !1010, size: 448, offset: 448)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "status_n", scope: !1190, file: !734, line: 260, baseType: !126, size: 64, offset: 896)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "status_line", scope: !1190, file: !734, line: 261, baseType: !147, size: 128, offset: 960)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1190, file: !734, line: 263, baseType: !1197, size: 64, offset: 1088)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_table_elt_t", file: !1109, line: 97, baseType: !1199)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1109, line: 92, size: 384, elements: !1200)
!1200 = !{!1201, !1202, !1203, !1204}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1199, file: !1109, line: 93, baseType: !126, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1199, file: !1109, line: 94, baseType: !147, size: 128, offset: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1199, file: !1109, line: 95, baseType: !147, size: 128, offset: 192)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "lowcase_key", scope: !1199, file: !1109, line: 96, baseType: !21, size: 64, offset: 320)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !1190, file: !734, line: 264, baseType: !1197, size: 64, offset: 1152)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !1190, file: !734, line: 265, baseType: !1197, size: 64, offset: 1216)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !1190, file: !734, line: 266, baseType: !1197, size: 64, offset: 1280)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1190, file: !734, line: 268, baseType: !1197, size: 64, offset: 1344)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "etag", scope: !1190, file: !734, line: 269, baseType: !1197, size: 64, offset: 1408)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "x_accel_expires", scope: !1190, file: !734, line: 270, baseType: !1197, size: 64, offset: 1472)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "x_accel_redirect", scope: !1190, file: !734, line: 271, baseType: !1197, size: 64, offset: 1536)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "x_accel_limit_rate", scope: !1190, file: !734, line: 272, baseType: !1197, size: 64, offset: 1600)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "content_type", scope: !1190, file: !734, line: 274, baseType: !1197, size: 64, offset: 1664)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "content_length", scope: !1190, file: !734, line: 275, baseType: !1197, size: 64, offset: 1728)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "last_modified", scope: !1190, file: !734, line: 277, baseType: !1197, size: 64, offset: 1792)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !1190, file: !734, line: 278, baseType: !1197, size: 64, offset: 1856)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "accept_ranges", scope: !1190, file: !734, line: 279, baseType: !1197, size: 64, offset: 1920)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "www_authenticate", scope: !1190, file: !734, line: 280, baseType: !1197, size: 64, offset: 1984)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_encoding", scope: !1190, file: !734, line: 281, baseType: !1197, size: 64, offset: 2048)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "vary", scope: !1190, file: !734, line: 282, baseType: !1197, size: 64, offset: 2112)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "content_encoding", scope: !1190, file: !734, line: 285, baseType: !1197, size: 64, offset: 2176)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "cache_control", scope: !1190, file: !734, line: 288, baseType: !512, size: 320, offset: 2240)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "cookies", scope: !1190, file: !734, line: 289, baseType: !512, size: 320, offset: 2560)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "content_length_n", scope: !1190, file: !734, line: 291, baseType: !231, size: 64, offset: 2880)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "last_modified_time", scope: !1190, file: !734, line: 292, baseType: !164, size: 64, offset: 2944)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "connection_close", scope: !1190, file: !734, line: 294, baseType: !82, size: 1, offset: 3008, flags: DIFlagBitField, extraData: i64 3008)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "chunked", scope: !1190, file: !734, line: 295, baseType: !82, size: 1, offset: 3009, flags: DIFlagBitField, extraData: i64 3008)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !733, file: !734, line: 345, baseType: !1229, size: 64, offset: 5888)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_resolved_t", file: !734, line: 312, baseType: !1231)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !734, line: 299, size: 704, elements: !1232)
!1232 = !{!1233, !1234, !1235, !1236, !1237, !1248, !1249, !1250, !1251}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1231, file: !734, line: 300, baseType: !147, size: 128)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1231, file: !734, line: 301, baseType: !427, size: 16, offset: 128)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "no_port", scope: !1231, file: !734, line: 302, baseType: !126, size: 64, offset: 192)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !1231, file: !734, line: 304, baseType: !126, size: 64, offset: 256)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !1231, file: !734, line: 305, baseType: !1238, size: 64, offset: 320)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_addr_t", file: !1240, line: 67, baseType: !1241)
!1240 = !DIFile(filename: "src/core/ngx_resolver.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "f052cfe8812cf8cb9c2edba7fbbb264b")
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1240, line: 61, size: 320, elements: !1242)
!1242 = !{!1243, !1244, !1245, !1246, !1247}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !1241, file: !1240, line: 62, baseType: !314, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !1241, file: !1240, line: 63, baseType: !324, size: 32, offset: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1241, file: !1240, line: 64, baseType: !147, size: 128, offset: 128)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1241, file: !1240, line: 65, baseType: !1120, size: 16, offset: 256)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1241, file: !1240, line: 66, baseType: !1120, size: 16, offset: 272)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !1231, file: !734, line: 307, baseType: !314, size: 64, offset: 384)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !1231, file: !734, line: 308, baseType: !324, size: 32, offset: 448)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1231, file: !734, line: 309, baseType: !147, size: 128, offset: 512)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !1231, file: !734, line: 311, baseType: !1252, size: 64, offset: 640)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_ctx_t", file: !1240, line: 56, baseType: !1254)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_resolver_ctx_s", file: !1240, line: 195, size: 1792, elements: !1255)
!1255 = !{!1256, !1257, !1290, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1372, !1373, !1374, !1387, !1392, !1393, !1394, !1395, !1396, !1397, !1398}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1254, file: !1240, line: 196, baseType: !1252, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "resolver", scope: !1254, file: !1240, line: 197, baseType: !1258, size: 64, offset: 64)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_t", file: !1240, line: 40, baseType: !1260)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_resolver_s", file: !1240, line: 148, size: 4096, elements: !1261)
!1261 = !{!1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1260, file: !1240, line: 150, baseType: !92, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !1260, file: !1240, line: 151, baseType: !27, size: 64, offset: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !1260, file: !1240, line: 152, baseType: !131, size: 64, offset: 128)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !1260, file: !1240, line: 155, baseType: !28, size: 64, offset: 192)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "connections", scope: !1260, file: !1240, line: 158, baseType: !512, size: 320, offset: 256)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "last_connection", scope: !1260, file: !1240, line: 159, baseType: !126, size: 64, offset: 576)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "name_rbtree", scope: !1260, file: !1240, line: 161, baseType: !351, size: 192, offset: 640)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "name_sentinel", scope: !1260, file: !1240, line: 162, baseType: !182, size: 320, offset: 832)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "srv_rbtree", scope: !1260, file: !1240, line: 164, baseType: !351, size: 192, offset: 1152)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "srv_sentinel", scope: !1260, file: !1240, line: 165, baseType: !182, size: 320, offset: 1344)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "addr_rbtree", scope: !1260, file: !1240, line: 167, baseType: !351, size: 192, offset: 1664)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "addr_sentinel", scope: !1260, file: !1240, line: 168, baseType: !182, size: 320, offset: 1856)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "name_resend_queue", scope: !1260, file: !1240, line: 170, baseType: !195, size: 128, offset: 2176)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "srv_resend_queue", scope: !1260, file: !1240, line: 171, baseType: !195, size: 128, offset: 2304)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "addr_resend_queue", scope: !1260, file: !1240, line: 172, baseType: !195, size: 128, offset: 2432)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "name_expire_queue", scope: !1260, file: !1240, line: 174, baseType: !195, size: 128, offset: 2560)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "srv_expire_queue", scope: !1260, file: !1240, line: 175, baseType: !195, size: 128, offset: 2688)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "addr_expire_queue", scope: !1260, file: !1240, line: 176, baseType: !195, size: 128, offset: 2816)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6", scope: !1260, file: !1240, line: 179, baseType: !126, size: 64, offset: 2944)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "addr6_rbtree", scope: !1260, file: !1240, line: 180, baseType: !351, size: 192, offset: 3008)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "addr6_sentinel", scope: !1260, file: !1240, line: 181, baseType: !182, size: 320, offset: 3200)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "addr6_resend_queue", scope: !1260, file: !1240, line: 182, baseType: !195, size: 128, offset: 3520)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "addr6_expire_queue", scope: !1260, file: !1240, line: 183, baseType: !195, size: 128, offset: 3648)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "resend_timeout", scope: !1260, file: !1240, line: 186, baseType: !164, size: 64, offset: 3776)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_timeout", scope: !1260, file: !1240, line: 187, baseType: !164, size: 64, offset: 3840)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "expire", scope: !1260, file: !1240, line: 188, baseType: !164, size: 64, offset: 3904)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1260, file: !1240, line: 189, baseType: !164, size: 64, offset: 3968)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "log_level", scope: !1260, file: !1240, line: 191, baseType: !126, size: 64, offset: 4032)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1254, file: !1240, line: 198, baseType: !1291, size: 64, offset: 128)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_node_t", file: !1240, line: 145, baseType: !1293)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1240, line: 92, size: 1472, elements: !1294)
!1294 = !{!1295, !1296, !1297, !1298, !1314, !1315, !1316, !1317, !1318, !1335, !1336, !1337, !1338, !1339, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1293, file: !1240, line: 93, baseType: !182, size: 320)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !1293, file: !1240, line: 94, baseType: !195, size: 128, offset: 320)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1293, file: !1240, line: 97, baseType: !21, size: 64, offset: 448)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "addr6", scope: !1293, file: !1240, line: 101, baseType: !1299, size: 128, offset: 512)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !428, line: 219, size: 128, elements: !1300)
!1300 = !{!1301}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !1299, file: !428, line: 226, baseType: !1302, size: 128)
!1302 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1299, file: !428, line: 221, size: 128, elements: !1303)
!1303 = !{!1304, !1308, !1310}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !1302, file: !428, line: 223, baseType: !1305, size: 128)
!1305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1306, size: 128, elements: !524)
!1306 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !80, line: 24, baseType: !1307)
!1307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !25, line: 38, baseType: !26)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !1302, file: !428, line: 224, baseType: !1309, size: 128)
!1309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 128, elements: !697)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !1302, file: !428, line: 225, baseType: !1311, size: 128)
!1311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 128, elements: !1312)
!1312 = !{!1313}
!1313 = !DISubrange(count: 4)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "nlen", scope: !1293, file: !1240, line: 104, baseType: !1120, size: 16, offset: 640)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "qlen", scope: !1293, file: !1240, line: 105, baseType: !1120, size: 16, offset: 656)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "query", scope: !1293, file: !1240, line: 107, baseType: !21, size: 64, offset: 704)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "query6", scope: !1293, file: !1240, line: 109, baseType: !21, size: 64, offset: 768)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1293, file: !1240, line: 117, baseType: !1319, size: 64, offset: 832)
!1319 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1293, file: !1240, line: 112, size: 64, elements: !1320)
!1320 = !{!1321, !1323, !1325, !1326}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1319, file: !1240, line: 113, baseType: !1322, size: 32)
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !428, line: 30, baseType: !79)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !1319, file: !1240, line: 114, baseType: !1324, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "cname", scope: !1319, file: !1240, line: 115, baseType: !21, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "srvs", scope: !1319, file: !1240, line: 116, baseType: !1327, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_srv_t", file: !1240, line: 75, baseType: !1329)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1240, line: 70, size: 192, elements: !1330)
!1330 = !{!1331, !1332, !1333, !1334}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1329, file: !1240, line: 71, baseType: !147, size: 128)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1329, file: !1240, line: 72, baseType: !1120, size: 16, offset: 128)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1329, file: !1240, line: 73, baseType: !1120, size: 16, offset: 144)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1329, file: !1240, line: 74, baseType: !1120, size: 16, offset: 160)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1293, file: !1240, line: 119, baseType: !22, size: 8, offset: 896)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !1293, file: !1240, line: 120, baseType: !1120, size: 16, offset: 912)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "nsrvs", scope: !1293, file: !1240, line: 121, baseType: !1120, size: 16, offset: 928)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "cnlen", scope: !1293, file: !1240, line: 122, baseType: !1120, size: 16, offset: 944)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "u6", scope: !1293, file: !1240, line: 128, baseType: !1340, size: 128, offset: 960)
!1340 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1293, file: !1240, line: 125, size: 128, elements: !1341)
!1341 = !{!1342, !1343}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "addr6", scope: !1340, file: !1240, line: 126, baseType: !1299, size: 128)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "addrs6", scope: !1340, file: !1240, line: 127, baseType: !1344, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs6", scope: !1293, file: !1240, line: 130, baseType: !1120, size: 16, offset: 1088)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "expire", scope: !1293, file: !1240, line: 133, baseType: !164, size: 64, offset: 1152)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1293, file: !1240, line: 134, baseType: !164, size: 64, offset: 1216)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !1293, file: !1240, line: 135, baseType: !79, size: 32, offset: 1280)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "tcp", scope: !1293, file: !1240, line: 137, baseType: !82, size: 1, offset: 1312, flags: DIFlagBitField, extraData: i64 1312)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "tcp6", scope: !1293, file: !1240, line: 139, baseType: !82, size: 1, offset: 1313, flags: DIFlagBitField, extraData: i64 1312)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "last_connection", scope: !1293, file: !1240, line: 142, baseType: !126, size: 64, offset: 1344)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "waiting", scope: !1293, file: !1240, line: 144, baseType: !1252, size: 64, offset: 1408)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !1254, file: !1240, line: 201, baseType: !28, size: 64, offset: 192)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1254, file: !1240, line: 203, baseType: !28, size: 64, offset: 256)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1254, file: !1240, line: 204, baseType: !147, size: 128, offset: 320)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "service", scope: !1254, file: !1240, line: 205, baseType: !147, size: 128, offset: 448)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1254, file: !1240, line: 207, baseType: !164, size: 64, offset: 576)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !1254, file: !1240, line: 208, baseType: !126, size: 64, offset: 640)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !1254, file: !1240, line: 209, baseType: !1238, size: 64, offset: 704)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1254, file: !1240, line: 210, baseType: !1239, size: 320, offset: 768)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "sin", scope: !1254, file: !1240, line: 211, baseType: !1362, size: 128, offset: 1088)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !428, line: 245, size: 128, elements: !1363)
!1363 = !{!1364, !1365, !1366, !1370}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !1362, file: !428, line: 247, baseType: !319, size: 16)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !1362, file: !428, line: 248, baseType: !427, size: 16, offset: 16)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !1362, file: !428, line: 249, baseType: !1367, size: 32, offset: 32)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !428, line: 31, size: 32, elements: !1368)
!1368 = !{!1369}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !1367, file: !428, line: 33, baseType: !1322, size: 32)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !1362, file: !428, line: 252, baseType: !1371, size: 64, offset: 64)
!1371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 64, elements: !697)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1254, file: !1240, line: 213, baseType: !126, size: 64, offset: 1216)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "nsrvs", scope: !1254, file: !1240, line: 214, baseType: !126, size: 64, offset: 1280)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "srvs", scope: !1254, file: !1240, line: 215, baseType: !1375, size: 64, offset: 1344)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_srv_name_t", file: !1240, line: 89, baseType: !1377)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1240, line: 78, size: 448, elements: !1378)
!1378 = !{!1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1377, file: !1240, line: 79, baseType: !147, size: 128)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1377, file: !1240, line: 80, baseType: !1120, size: 16, offset: 128)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1377, file: !1240, line: 81, baseType: !1120, size: 16, offset: 144)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1377, file: !1240, line: 82, baseType: !1120, size: 16, offset: 160)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !1377, file: !1240, line: 84, baseType: !1252, size: 64, offset: 192)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1377, file: !1240, line: 85, baseType: !28, size: 64, offset: 256)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !1377, file: !1240, line: 87, baseType: !126, size: 64, offset: 320)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !1377, file: !1240, line: 88, baseType: !776, size: 64, offset: 384)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1254, file: !1240, line: 217, baseType: !1388, size: 64, offset: 1408)
!1388 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_handler_pt", file: !1240, line: 58, baseType: !1389)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{null, !1252}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1254, file: !1240, line: 218, baseType: !27, size: 64, offset: 1472)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1254, file: !1240, line: 219, baseType: !346, size: 64, offset: 1536)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "quick", scope: !1254, file: !1240, line: 221, baseType: !82, size: 1, offset: 1600, flags: DIFlagBitField, extraData: i64 1600)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "async", scope: !1254, file: !1240, line: 222, baseType: !82, size: 1, offset: 1601, flags: DIFlagBitField, extraData: i64 1600)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "cancelable", scope: !1254, file: !1240, line: 223, baseType: !82, size: 1, offset: 1602, flags: DIFlagBitField, extraData: i64 1600)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "recursion", scope: !1254, file: !1240, line: 224, baseType: !126, size: 64, offset: 1664)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1254, file: !1240, line: 225, baseType: !92, size: 64, offset: 1728)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "from_client", scope: !733, file: !734, line: 347, baseType: !225, size: 640, offset: 5952)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !733, file: !734, line: 349, baseType: !225, size: 640, offset: 6592)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !733, file: !734, line: 350, baseType: !231, size: 64, offset: 7232)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "out_bufs", scope: !733, file: !734, line: 352, baseType: !219, size: 64, offset: 7296)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "busy_bufs", scope: !733, file: !734, line: 353, baseType: !219, size: 64, offset: 7360)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "free_bufs", scope: !733, file: !734, line: 354, baseType: !219, size: 64, offset: 7424)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "input_filter_init", scope: !733, file: !734, line: 356, baseType: !1406, size: 64, offset: 7488)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!28, !27}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "input_filter", scope: !733, file: !734, line: 357, baseType: !1410, size: 64, offset: 7552)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!28, !27, !210}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "input_filter_ctx", scope: !733, file: !734, line: 358, baseType: !27, size: 64, offset: 7616)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "create_key", scope: !733, file: !734, line: 361, baseType: !1415, size: 64, offset: 7680)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!28, !72}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "create_request", scope: !733, file: !734, line: 363, baseType: !1415, size: 64, offset: 7744)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "reinit_request", scope: !733, file: !734, line: 364, baseType: !1415, size: 64, offset: 7808)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "process_header", scope: !733, file: !734, line: 365, baseType: !1415, size: 64, offset: 7872)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "abort_request", scope: !733, file: !734, line: 366, baseType: !500, size: 64, offset: 7936)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "finalize_request", scope: !733, file: !734, line: 367, baseType: !1423, size: 64, offset: 8000)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{null, !72, !28}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "rewrite_redirect", scope: !733, file: !734, line: 369, baseType: !1427, size: 64, offset: 8064)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!28, !72, !1197, !152}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "rewrite_cookie", scope: !733, file: !734, line: 371, baseType: !1431, size: 64, offset: 8128)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!28, !72, !1197}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !733, file: !734, line: 374, baseType: !346, size: 64, offset: 8192)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !733, file: !734, line: 376, baseType: !1436, size: 64, offset: 8256)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_upstream_state_t", file: !734, line: 70, baseType: !1438)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !734, line: 59, size: 576, elements: !1439)
!1439 = !{!1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1438, file: !734, line: 60, baseType: !126, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "response_time", scope: !1438, file: !734, line: 61, baseType: !346, size: 64, offset: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !1438, file: !734, line: 62, baseType: !346, size: 64, offset: 128)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "header_time", scope: !1438, file: !734, line: 63, baseType: !346, size: 64, offset: 192)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "queue_time", scope: !1438, file: !734, line: 64, baseType: !346, size: 64, offset: 256)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "response_length", scope: !1438, file: !734, line: 65, baseType: !231, size: 64, offset: 320)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_received", scope: !1438, file: !734, line: 66, baseType: !231, size: 64, offset: 384)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_sent", scope: !1438, file: !734, line: 67, baseType: !231, size: 64, offset: 448)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !1438, file: !734, line: 69, baseType: !751, size: 64, offset: 512)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !733, file: !734, line: 378, baseType: !147, size: 128, offset: 8320)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "schema", scope: !733, file: !734, line: 379, baseType: !147, size: 128, offset: 8448)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "uri", scope: !733, file: !734, line: 380, baseType: !147, size: 128, offset: 8576)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_name", scope: !733, file: !734, line: 383, baseType: !147, size: 128, offset: 8704)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !733, file: !734, line: 386, baseType: !1454, size: 64, offset: 8832)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_cleanup_pt", file: !76, line: 330, baseType: !415)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !733, file: !734, line: 388, baseType: !82, size: 1, offset: 8896, flags: DIFlagBitField, extraData: i64 8896)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "cacheable", scope: !733, file: !734, line: 389, baseType: !82, size: 1, offset: 8897, flags: DIFlagBitField, extraData: i64 8896)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "accel", scope: !733, file: !734, line: 390, baseType: !82, size: 1, offset: 8898, flags: DIFlagBitField, extraData: i64 8896)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !733, file: !734, line: 391, baseType: !82, size: 1, offset: 8899, flags: DIFlagBitField, extraData: i64 8896)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "cache_status", scope: !733, file: !734, line: 393, baseType: !82, size: 3, offset: 8900, flags: DIFlagBitField, extraData: i64 8896)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "buffering", scope: !733, file: !734, line: 396, baseType: !82, size: 1, offset: 8903, flags: DIFlagBitField, extraData: i64 8896)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive", scope: !733, file: !734, line: 397, baseType: !82, size: 1, offset: 8904, flags: DIFlagBitField, extraData: i64 8896)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "upgrade", scope: !733, file: !734, line: 398, baseType: !82, size: 1, offset: 8905, flags: DIFlagBitField, extraData: i64 8896)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "request_sent", scope: !733, file: !734, line: 400, baseType: !82, size: 1, offset: 8906, flags: DIFlagBitField, extraData: i64 8896)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_sent", scope: !733, file: !734, line: 401, baseType: !82, size: 1, offset: 8907, flags: DIFlagBitField, extraData: i64 8896)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_blocked", scope: !733, file: !734, line: 402, baseType: !82, size: 1, offset: 8908, flags: DIFlagBitField, extraData: i64 8896)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "header_sent", scope: !733, file: !734, line: 403, baseType: !82, size: 1, offset: 8909, flags: DIFlagBitField, extraData: i64 8896)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_states", scope: !75, file: !76, line: 389, baseType: !927, size: 64, offset: 640)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !75, file: !76, line: 392, baseType: !385, size: 64, offset: 704)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "header_in", scope: !75, file: !76, line: 393, baseType: !224, size: 64, offset: 768)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "headers_in", scope: !75, file: !76, line: 395, baseType: !1472, size: 3008, offset: 832)
!1472 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_headers_in_t", file: !76, line: 251, baseType: !1473)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !76, line: 181, size: 3008, elements: !1474)
!1474 = !{!1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !1473, file: !76, line: 182, baseType: !1010, size: 448)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1473, file: !76, line: 184, baseType: !1197, size: 64, offset: 448)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !1473, file: !76, line: 185, baseType: !1197, size: 64, offset: 512)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "if_modified_since", scope: !1473, file: !76, line: 186, baseType: !1197, size: 64, offset: 576)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "if_unmodified_since", scope: !1473, file: !76, line: 187, baseType: !1197, size: 64, offset: 640)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "if_match", scope: !1473, file: !76, line: 188, baseType: !1197, size: 64, offset: 704)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "if_none_match", scope: !1473, file: !76, line: 189, baseType: !1197, size: 64, offset: 768)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "user_agent", scope: !1473, file: !76, line: 190, baseType: !1197, size: 64, offset: 832)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "referer", scope: !1473, file: !76, line: 191, baseType: !1197, size: 64, offset: 896)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "content_length", scope: !1473, file: !76, line: 192, baseType: !1197, size: 64, offset: 960)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "content_range", scope: !1473, file: !76, line: 193, baseType: !1197, size: 64, offset: 1024)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "content_type", scope: !1473, file: !76, line: 194, baseType: !1197, size: 64, offset: 1088)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1473, file: !76, line: 196, baseType: !1197, size: 64, offset: 1152)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "if_range", scope: !1473, file: !76, line: 197, baseType: !1197, size: 64, offset: 1216)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_encoding", scope: !1473, file: !76, line: 199, baseType: !1197, size: 64, offset: 1280)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "te", scope: !1473, file: !76, line: 200, baseType: !1197, size: 64, offset: 1344)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "expect", scope: !1473, file: !76, line: 201, baseType: !1197, size: 64, offset: 1408)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "upgrade", scope: !1473, file: !76, line: 202, baseType: !1197, size: 64, offset: 1472)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "accept_encoding", scope: !1473, file: !76, line: 205, baseType: !1197, size: 64, offset: 1536)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "via", scope: !1473, file: !76, line: 206, baseType: !1197, size: 64, offset: 1600)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "authorization", scope: !1473, file: !76, line: 209, baseType: !1197, size: 64, offset: 1664)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive", scope: !1473, file: !76, line: 211, baseType: !1197, size: 64, offset: 1728)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "x_forwarded_for", scope: !1473, file: !76, line: 214, baseType: !512, size: 320, offset: 1792)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1473, file: !76, line: 233, baseType: !147, size: 128, offset: 2112)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "passwd", scope: !1473, file: !76, line: 234, baseType: !147, size: 128, offset: 2240)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "cookies", scope: !1473, file: !76, line: 236, baseType: !512, size: 320, offset: 2368)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !1473, file: !76, line: 238, baseType: !147, size: 128, offset: 2688)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "content_length_n", scope: !1473, file: !76, line: 239, baseType: !231, size: 64, offset: 2816)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive_n", scope: !1473, file: !76, line: 240, baseType: !164, size: 64, offset: 2880)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "connection_type", scope: !1473, file: !76, line: 242, baseType: !82, size: 2, offset: 2944, flags: DIFlagBitField, extraData: i64 2944)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "chunked", scope: !1473, file: !76, line: 243, baseType: !82, size: 1, offset: 2946, flags: DIFlagBitField, extraData: i64 2944)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "msie", scope: !1473, file: !76, line: 244, baseType: !82, size: 1, offset: 2947, flags: DIFlagBitField, extraData: i64 2944)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "msie6", scope: !1473, file: !76, line: 245, baseType: !82, size: 1, offset: 2948, flags: DIFlagBitField, extraData: i64 2944)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "opera", scope: !1473, file: !76, line: 246, baseType: !82, size: 1, offset: 2949, flags: DIFlagBitField, extraData: i64 2944)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "gecko", scope: !1473, file: !76, line: 247, baseType: !82, size: 1, offset: 2950, flags: DIFlagBitField, extraData: i64 2944)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "chrome", scope: !1473, file: !76, line: 248, baseType: !82, size: 1, offset: 2951, flags: DIFlagBitField, extraData: i64 2944)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "safari", scope: !1473, file: !76, line: 249, baseType: !82, size: 1, offset: 2952, flags: DIFlagBitField, extraData: i64 2944)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "konqueror", scope: !1473, file: !76, line: 250, baseType: !82, size: 1, offset: 2953, flags: DIFlagBitField, extraData: i64 2944)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "headers_out", scope: !75, file: !76, line: 396, baseType: !1514, size: 3264, offset: 3840)
!1514 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_headers_out_t", file: !76, line: 289, baseType: !1515)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !76, line: 254, size: 3264, elements: !1516)
!1516 = !{!1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !1515, file: !76, line: 255, baseType: !1010, size: 448)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "trailers", scope: !1515, file: !76, line: 256, baseType: !1010, size: 448, offset: 448)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1515, file: !76, line: 258, baseType: !126, size: 64, offset: 896)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "status_line", scope: !1515, file: !76, line: 259, baseType: !147, size: 128, offset: 960)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !1515, file: !76, line: 261, baseType: !1197, size: 64, offset: 1088)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !1515, file: !76, line: 262, baseType: !1197, size: 64, offset: 1152)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "content_length", scope: !1515, file: !76, line: 263, baseType: !1197, size: 64, offset: 1216)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "content_encoding", scope: !1515, file: !76, line: 264, baseType: !1197, size: 64, offset: 1280)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !1515, file: !76, line: 265, baseType: !1197, size: 64, offset: 1344)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "refresh", scope: !1515, file: !76, line: 266, baseType: !1197, size: 64, offset: 1408)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "last_modified", scope: !1515, file: !76, line: 267, baseType: !1197, size: 64, offset: 1472)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "content_range", scope: !1515, file: !76, line: 268, baseType: !1197, size: 64, offset: 1536)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "accept_ranges", scope: !1515, file: !76, line: 269, baseType: !1197, size: 64, offset: 1600)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "www_authenticate", scope: !1515, file: !76, line: 270, baseType: !1197, size: 64, offset: 1664)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1515, file: !76, line: 271, baseType: !1197, size: 64, offset: 1728)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "etag", scope: !1515, file: !76, line: 272, baseType: !1197, size: 64, offset: 1792)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "override_charset", scope: !1515, file: !76, line: 274, baseType: !751, size: 64, offset: 1856)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_len", scope: !1515, file: !76, line: 276, baseType: !152, size: 64, offset: 1920)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "content_type", scope: !1515, file: !76, line: 277, baseType: !147, size: 128, offset: 1984)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !1515, file: !76, line: 278, baseType: !147, size: 128, offset: 2112)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_lowcase", scope: !1515, file: !76, line: 279, baseType: !21, size: 64, offset: 2240)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_hash", scope: !1515, file: !76, line: 280, baseType: !126, size: 64, offset: 2304)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "cache_control", scope: !1515, file: !76, line: 282, baseType: !512, size: 320, offset: 2368)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1515, file: !76, line: 283, baseType: !512, size: 320, offset: 2688)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "content_length_n", scope: !1515, file: !76, line: 285, baseType: !231, size: 64, offset: 3008)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "content_offset", scope: !1515, file: !76, line: 286, baseType: !231, size: 64, offset: 3072)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "date_time", scope: !1515, file: !76, line: 287, baseType: !164, size: 64, offset: 3136)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "last_modified_time", scope: !1515, file: !76, line: 288, baseType: !164, size: 64, offset: 3200)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "request_body", scope: !75, file: !76, line: 398, baseType: !1546, size: 64, offset: 7104)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_request_body_t", file: !76, line: 304, baseType: !1548)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !76, line: 294, size: 576, elements: !1549)
!1549 = !{!1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1565}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file", scope: !1548, file: !76, line: 295, baseType: !855, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !1548, file: !76, line: 296, baseType: !219, size: 64, offset: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1548, file: !76, line: 297, baseType: !224, size: 64, offset: 128)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "rest", scope: !1548, file: !76, line: 298, baseType: !231, size: 64, offset: 192)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "received", scope: !1548, file: !76, line: 299, baseType: !231, size: 64, offset: 256)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1548, file: !76, line: 300, baseType: !219, size: 64, offset: 320)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !1548, file: !76, line: 301, baseType: !219, size: 64, offset: 384)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "chunked", scope: !1548, file: !76, line: 302, baseType: !1558, size: 64, offset: 448)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_chunked_t", file: !74, line: 21, baseType: !1560)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_chunked_s", file: !74, line: 59, size: 192, elements: !1561)
!1561 = !{!1562, !1563, !1564}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1560, file: !74, line: 60, baseType: !126, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1560, file: !74, line: 61, baseType: !231, size: 64, offset: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1560, file: !74, line: 62, baseType: !231, size: 64, offset: 128)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "post_handler", scope: !1548, file: !76, line: 303, baseType: !1566, size: 64, offset: 512)
!1566 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_client_body_handler_pt", file: !76, line: 292, baseType: !500)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "lingering_time", scope: !75, file: !76, line: 400, baseType: !164, size: 64, offset: 7168)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "start_sec", scope: !75, file: !76, line: 401, baseType: !164, size: 64, offset: 7232)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "start_msec", scope: !75, file: !76, line: 402, baseType: !346, size: 64, offset: 7296)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !75, file: !76, line: 404, baseType: !126, size: 64, offset: 7360)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "http_version", scope: !75, file: !76, line: 405, baseType: !126, size: 64, offset: 7424)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "request_line", scope: !75, file: !76, line: 407, baseType: !147, size: 128, offset: 7488)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "uri", scope: !75, file: !76, line: 408, baseType: !147, size: 128, offset: 7616)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !75, file: !76, line: 409, baseType: !147, size: 128, offset: 7744)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "exten", scope: !75, file: !76, line: 410, baseType: !147, size: 128, offset: 7872)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "unparsed_uri", scope: !75, file: !76, line: 411, baseType: !147, size: 128, offset: 8000)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "method_name", scope: !75, file: !76, line: 413, baseType: !147, size: 128, offset: 8128)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "http_protocol", scope: !75, file: !76, line: 414, baseType: !147, size: 128, offset: 8256)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "schema", scope: !75, file: !76, line: 415, baseType: !147, size: 128, offset: 8384)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !75, file: !76, line: 417, baseType: !219, size: 64, offset: 8512)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !75, file: !76, line: 418, baseType: !72, size: 64, offset: 8576)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !75, file: !76, line: 419, baseType: !72, size: 64, offset: 8640)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "postponed", scope: !75, file: !76, line: 420, baseType: !1584, size: 64, offset: 8704)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_postponed_request_t", file: !76, line: 350, baseType: !1586)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_postponed_request_s", file: !76, line: 352, size: 192, elements: !1587)
!1587 = !{!1588, !1589, !1590}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1586, file: !76, line: 353, baseType: !72, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !1586, file: !76, line: 354, baseType: !219, size: 64, offset: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1586, file: !76, line: 355, baseType: !1584, size: 64, offset: 128)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "post_subrequest", scope: !75, file: !76, line: 421, baseType: !1592, size: 64, offset: 8768)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_post_subrequest_t", file: !76, line: 347, baseType: !1594)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !76, line: 344, size: 128, elements: !1595)
!1595 = !{!1596, !1601}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1594, file: !76, line: 345, baseType: !1597, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_post_subrequest_pt", file: !76, line: 341, baseType: !1598)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!28, !72, !27, !28}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1594, file: !76, line: 346, baseType: !27, size: 64, offset: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "posted_requests", scope: !75, file: !76, line: 422, baseType: !1603, size: 64, offset: 8832)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_posted_request_t", file: !76, line: 359, baseType: !1605)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_posted_request_s", file: !76, line: 361, size: 128, elements: !1606)
!1606 = !{!1607, !1608}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1605, file: !76, line: 362, baseType: !72, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1605, file: !76, line: 363, baseType: !1603, size: 64, offset: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "phase_handler", scope: !75, file: !76, line: 424, baseType: !28, size: 64, offset: 8896)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "content_handler", scope: !75, file: !76, line: 425, baseType: !1611, size: 64, offset: 8960)
!1611 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_handler_pt", file: !76, line: 367, baseType: !1415)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "access_code", scope: !75, file: !76, line: 426, baseType: !126, size: 64, offset: 9024)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "variables", scope: !75, file: !76, line: 428, baseType: !1614, size: 64, offset: 9088)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_variable_value_t", file: !1616, line: 17, baseType: !1617)
!1616 = !DIFile(filename: "src/http/ngx_http_variables.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "8a2cbae62e5b0b58d6be14fb066f5b31")
!1617 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_variable_value_t", file: !148, line: 37, baseType: !1618)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !148, line: 28, size: 128, elements: !1619)
!1619 = !{!1620, !1621, !1622, !1623, !1624, !1625}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1618, file: !148, line: 29, baseType: !82, size: 28, flags: DIFlagBitField, extraData: i64 0)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1618, file: !148, line: 31, baseType: !82, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "no_cacheable", scope: !1618, file: !148, line: 32, baseType: !82, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "not_found", scope: !1618, file: !148, line: 33, baseType: !82, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "escape", scope: !1618, file: !148, line: 34, baseType: !82, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1618, file: !148, line: 36, baseType: !21, size: 64, offset: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "limit_rate", scope: !75, file: !76, line: 436, baseType: !152, size: 64, offset: 9152)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "limit_rate_after", scope: !75, file: !76, line: 437, baseType: !152, size: 64, offset: 9216)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !75, file: !76, line: 440, baseType: !152, size: 64, offset: 9280)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "request_length", scope: !75, file: !76, line: 442, baseType: !231, size: 64, offset: 9344)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "err_status", scope: !75, file: !76, line: 444, baseType: !126, size: 64, offset: 9408)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "http_connection", scope: !75, file: !76, line: 446, baseType: !1632, size: 64, offset: 9472)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_connection_t", file: !76, line: 327, baseType: !1634)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !76, line: 309, size: 448, elements: !1635)
!1635 = !{!1636, !1809, !1810, !1811, !1812, !1813, !1814, !1815}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "addr_conf", scope: !1634, file: !76, line: 310, baseType: !1637, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_addr_conf_t", file: !76, line: 307, baseType: !1639)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_addr_conf_s", file: !68, line: 233, size: 192, elements: !1640)
!1640 = !{!1641, !1780, !1806, !1807, !1808}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "default_server", scope: !1639, file: !68, line: 235, baseType: !1642, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_core_srv_conf_t", file: !68, line: 210, baseType: !1644)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !68, line: 180, size: 1344, elements: !1645)
!1645 = !{!1646, !1647, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "server_names", scope: !1644, file: !68, line: 182, baseType: !512, size: 320)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !1644, file: !68, line: 185, baseType: !1648, size: 64, offset: 320)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_conf_ctx_t", file: !1650, line: 21, baseType: !1651)
!1650 = !DIFile(filename: "src/http/ngx_http_config.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "f0f323751ab5b63196467d991a0424cd")
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1650, line: 17, size: 192, elements: !1652)
!1652 = !{!1653, !1654, !1655}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "main_conf", scope: !1651, file: !1650, line: 18, baseType: !494, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "srv_conf", scope: !1651, file: !1650, line: 19, baseType: !494, size: 64, offset: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "loc_conf", scope: !1651, file: !1650, line: 20, baseType: !494, size: 64, offset: 128)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "file_name", scope: !1644, file: !68, line: 187, baseType: !21, size: 64, offset: 384)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1644, file: !68, line: 188, baseType: !126, size: 64, offset: 448)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "server_name", scope: !1644, file: !68, line: 190, baseType: !147, size: 128, offset: 512)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "connection_pool_size", scope: !1644, file: !68, line: 192, baseType: !152, size: 64, offset: 640)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "request_pool_size", scope: !1644, file: !68, line: 193, baseType: !152, size: 64, offset: 704)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "client_header_buffer_size", scope: !1644, file: !68, line: 194, baseType: !152, size: 64, offset: 768)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "large_client_header_buffers", scope: !1644, file: !68, line: 196, baseType: !833, size: 128, offset: 832)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "client_header_timeout", scope: !1644, file: !68, line: 198, baseType: !346, size: 64, offset: 960)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_invalid_headers", scope: !1644, file: !68, line: 200, baseType: !1098, size: 64, offset: 1024)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "merge_slashes", scope: !1644, file: !68, line: 201, baseType: !1098, size: 64, offset: 1088)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "underscores_in_headers", scope: !1644, file: !68, line: 202, baseType: !1098, size: 64, offset: 1152)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "listen", scope: !1644, file: !68, line: 204, baseType: !82, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "named_locations", scope: !1644, file: !68, line: 209, baseType: !1669, size: 64, offset: 1280)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_core_loc_conf_t", file: !68, line: 64, baseType: !1672)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_core_loc_conf_s", file: !68, line: 301, size: 5184, elements: !1673)
!1673 = !{!1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1672, file: !68, line: 302, baseType: !147, size: 128)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "noname", scope: !1672, file: !68, line: 308, baseType: !82, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "lmt_excpt", scope: !1672, file: !68, line: 309, baseType: !82, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1672, file: !68, line: 310, baseType: !82, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "exact_match", scope: !1672, file: !68, line: 312, baseType: !82, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "noregex", scope: !1672, file: !68, line: 313, baseType: !82, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "auto_redirect", scope: !1672, file: !68, line: 315, baseType: !82, size: 1, offset: 133, flags: DIFlagBitField, extraData: i64 128)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_disable_msie6", scope: !1672, file: !68, line: 317, baseType: !82, size: 2, offset: 134, flags: DIFlagBitField, extraData: i64 128)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_disable_degradation", scope: !1672, file: !68, line: 318, baseType: !82, size: 2, offset: 136, flags: DIFlagBitField, extraData: i64 128)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "static_locations", scope: !1672, file: !68, line: 321, baseType: !1684, size: 64, offset: 192)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_location_tree_node_t", file: !68, line: 63, baseType: !1686)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_location_tree_node_s", file: !68, line: 455, size: 384, elements: !1687)
!1687 = !{!1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !1686, file: !68, line: 456, baseType: !1684, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !1686, file: !68, line: 457, baseType: !1684, size: 64, offset: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !1686, file: !68, line: 458, baseType: !1684, size: 64, offset: 128)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "exact", scope: !1686, file: !68, line: 460, baseType: !1670, size: 64, offset: 192)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "inclusive", scope: !1686, file: !68, line: 461, baseType: !1670, size: 64, offset: 256)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "auto_redirect", scope: !1686, file: !68, line: 463, baseType: !22, size: 8, offset: 320)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1686, file: !68, line: 464, baseType: !22, size: 8, offset: 328)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1686, file: !68, line: 465, baseType: !1123, size: 8, offset: 336)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "loc_conf", scope: !1672, file: !68, line: 327, baseType: !494, size: 64, offset: 256)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "limit_except", scope: !1672, file: !68, line: 329, baseType: !79, size: 32, offset: 320)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "limit_except_loc_conf", scope: !1672, file: !68, line: 330, baseType: !494, size: 64, offset: 384)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1672, file: !68, line: 332, baseType: !1611, size: 64, offset: 448)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1672, file: !68, line: 335, baseType: !152, size: 64, offset: 512)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1672, file: !68, line: 336, baseType: !147, size: 128, offset: 576)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "post_action", scope: !1672, file: !68, line: 337, baseType: !147, size: 128, offset: 704)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "root_lengths", scope: !1672, file: !68, line: 339, baseType: !927, size: 64, offset: 832)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "root_values", scope: !1672, file: !68, line: 340, baseType: !927, size: 64, offset: 896)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1672, file: !68, line: 342, baseType: !927, size: 64, offset: 960)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "types_hash", scope: !1672, file: !68, line: 343, baseType: !1108, size: 128, offset: 1024)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "default_type", scope: !1672, file: !68, line: 344, baseType: !147, size: 128, offset: 1152)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "client_max_body_size", scope: !1672, file: !68, line: 346, baseType: !231, size: 64, offset: 1280)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "directio", scope: !1672, file: !68, line: 347, baseType: !231, size: 64, offset: 1344)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "directio_alignment", scope: !1672, file: !68, line: 348, baseType: !231, size: 64, offset: 1408)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "client_body_buffer_size", scope: !1672, file: !68, line: 350, baseType: !152, size: 64, offset: 1472)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "send_lowat", scope: !1672, file: !68, line: 351, baseType: !152, size: 64, offset: 1536)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "postpone_output", scope: !1672, file: !68, line: 352, baseType: !152, size: 64, offset: 1600)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "limit_rate", scope: !1672, file: !68, line: 353, baseType: !152, size: 64, offset: 1664)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "limit_rate_after", scope: !1672, file: !68, line: 354, baseType: !152, size: 64, offset: 1728)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "sendfile_max_chunk", scope: !1672, file: !68, line: 355, baseType: !152, size: 64, offset: 1792)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "read_ahead", scope: !1672, file: !68, line: 356, baseType: !152, size: 64, offset: 1856)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "subrequest_output_buffer_size", scope: !1672, file: !68, line: 357, baseType: !152, size: 64, offset: 1920)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "client_body_timeout", scope: !1672, file: !68, line: 360, baseType: !346, size: 64, offset: 1984)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "send_timeout", scope: !1672, file: !68, line: 361, baseType: !346, size: 64, offset: 2048)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive_timeout", scope: !1672, file: !68, line: 362, baseType: !346, size: 64, offset: 2112)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "lingering_time", scope: !1672, file: !68, line: 363, baseType: !346, size: 64, offset: 2176)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "lingering_timeout", scope: !1672, file: !68, line: 364, baseType: !346, size: 64, offset: 2240)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "resolver_timeout", scope: !1672, file: !68, line: 365, baseType: !346, size: 64, offset: 2304)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "resolver", scope: !1672, file: !68, line: 367, baseType: !1258, size: 64, offset: 2368)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive_header", scope: !1672, file: !68, line: 369, baseType: !164, size: 64, offset: 2432)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive_requests", scope: !1672, file: !68, line: 371, baseType: !126, size: 64, offset: 2496)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive_disable", scope: !1672, file: !68, line: 372, baseType: !126, size: 64, offset: 2560)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "satisfy", scope: !1672, file: !68, line: 373, baseType: !126, size: 64, offset: 2624)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "lingering_close", scope: !1672, file: !68, line: 374, baseType: !126, size: 64, offset: 2688)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "if_modified_since", scope: !1672, file: !68, line: 375, baseType: !126, size: 64, offset: 2752)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "max_ranges", scope: !1672, file: !68, line: 376, baseType: !126, size: 64, offset: 2816)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "client_body_in_file_only", scope: !1672, file: !68, line: 377, baseType: !126, size: 64, offset: 2880)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "client_body_in_single_buffer", scope: !1672, file: !68, line: 379, baseType: !1098, size: 64, offset: 2944)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !1672, file: !68, line: 381, baseType: !1098, size: 64, offset: 3008)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "sendfile", scope: !1672, file: !68, line: 382, baseType: !1098, size: 64, offset: 3072)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "aio", scope: !1672, file: !68, line: 383, baseType: !1098, size: 64, offset: 3136)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "aio_write", scope: !1672, file: !68, line: 384, baseType: !1098, size: 64, offset: 3200)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_nopush", scope: !1672, file: !68, line: 385, baseType: !1098, size: 64, offset: 3264)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_nodelay", scope: !1672, file: !68, line: 386, baseType: !1098, size: 64, offset: 3328)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "reset_timedout_connection", scope: !1672, file: !68, line: 387, baseType: !1098, size: 64, offset: 3392)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "absolute_redirect", scope: !1672, file: !68, line: 388, baseType: !1098, size: 64, offset: 3456)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "server_name_in_redirect", scope: !1672, file: !68, line: 389, baseType: !1098, size: 64, offset: 3520)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "port_in_redirect", scope: !1672, file: !68, line: 390, baseType: !1098, size: 64, offset: 3584)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "msie_padding", scope: !1672, file: !68, line: 391, baseType: !1098, size: 64, offset: 3648)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "msie_refresh", scope: !1672, file: !68, line: 392, baseType: !1098, size: 64, offset: 3712)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "log_not_found", scope: !1672, file: !68, line: 393, baseType: !1098, size: 64, offset: 3776)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "log_subrequest", scope: !1672, file: !68, line: 394, baseType: !1098, size: 64, offset: 3840)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "recursive_error_pages", scope: !1672, file: !68, line: 395, baseType: !1098, size: 64, offset: 3904)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "server_tokens", scope: !1672, file: !68, line: 396, baseType: !126, size: 64, offset: 3968)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "chunked_transfer_encoding", scope: !1672, file: !68, line: 397, baseType: !1098, size: 64, offset: 4032)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "etag", scope: !1672, file: !68, line: 398, baseType: !1098, size: 64, offset: 4096)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_vary", scope: !1672, file: !68, line: 401, baseType: !1098, size: 64, offset: 4160)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_http_version", scope: !1672, file: !68, line: 403, baseType: !126, size: 64, offset: 4224)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_proxied", scope: !1672, file: !68, line: 404, baseType: !126, size: 64, offset: 4288)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "disable_symlinks", scope: !1672, file: !68, line: 417, baseType: !126, size: 64, offset: 4352)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "disable_symlinks_from", scope: !1672, file: !68, line: 418, baseType: !1134, size: 64, offset: 4416)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "error_pages", scope: !1672, file: !68, line: 421, baseType: !927, size: 64, offset: 4480)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "client_body_temp_path", scope: !1672, file: !68, line: 423, baseType: !630, size: 64, offset: 4544)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "open_file_cache", scope: !1672, file: !68, line: 425, baseType: !1761, size: 64, offset: 4608)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_open_file_cache_t", file: !1763, line: 99, baseType: !1764)
!1763 = !DIFile(filename: "src/core/ngx_open_file_cache.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "9c6498ea78aa56a4d896aeb1ed7e8fdf")
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1763, line: 91, size: 832, elements: !1765)
!1765 = !{!1766, !1767, !1768, !1769, !1770, !1771}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "rbtree", scope: !1764, file: !1763, line: 92, baseType: !351, size: 192)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !1764, file: !1763, line: 93, baseType: !182, size: 320, offset: 192)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "expire_queue", scope: !1764, file: !1763, line: 94, baseType: !195, size: 128, offset: 512)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !1764, file: !1763, line: 96, baseType: !126, size: 64, offset: 640)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1764, file: !1763, line: 97, baseType: !126, size: 64, offset: 704)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "inactive", scope: !1764, file: !1763, line: 98, baseType: !164, size: 64, offset: 768)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "open_file_cache_valid", scope: !1672, file: !68, line: 426, baseType: !164, size: 64, offset: 4672)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "open_file_cache_min_uses", scope: !1672, file: !68, line: 427, baseType: !126, size: 64, offset: 4736)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "open_file_cache_errors", scope: !1672, file: !68, line: 428, baseType: !1098, size: 64, offset: 4800)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "open_file_cache_events", scope: !1672, file: !68, line: 429, baseType: !1098, size: 64, offset: 4864)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "error_log", scope: !1672, file: !68, line: 431, baseType: !131, size: 64, offset: 4928)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "types_hash_max_size", scope: !1672, file: !68, line: 433, baseType: !126, size: 64, offset: 4992)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "types_hash_bucket_size", scope: !1672, file: !68, line: 434, baseType: !126, size: 64, offset: 5056)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "locations", scope: !1672, file: !68, line: 436, baseType: !200, size: 64, offset: 5120)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_names", scope: !1639, file: !68, line: 237, baseType: !1781, size: 64, offset: 64)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_virtual_names_t", file: !68, line: 230, baseType: !1783)
!1783 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !68, line: 225, size: 384, elements: !1784)
!1784 = !{!1785, !1798, !1799}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "names", scope: !1783, file: !68, line: 226, baseType: !1786, size: 256)
!1786 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_hash_combined_t", file: !1109, line: 49, baseType: !1787)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1109, line: 45, size: 256, elements: !1788)
!1788 = !{!1789, !1790, !1797}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1787, file: !1109, line: 46, baseType: !1108, size: 128)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "wc_head", scope: !1787, file: !1109, line: 47, baseType: !1791, size: 64, offset: 128)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_hash_wildcard_t", file: !1109, line: 32, baseType: !1793)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1109, line: 29, size: 192, elements: !1794)
!1794 = !{!1795, !1796}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1793, file: !1109, line: 30, baseType: !1108, size: 128)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1793, file: !1109, line: 31, baseType: !27, size: 64, offset: 128)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "wc_tail", scope: !1787, file: !1109, line: 48, baseType: !1791, size: 64, offset: 192)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "nregex", scope: !1783, file: !68, line: 228, baseType: !126, size: 64, offset: 256)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "regex", scope: !1783, file: !68, line: 229, baseType: !1800, size: 64, offset: 320)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_server_name_t", file: !68, line: 222, baseType: !1802)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !68, line: 216, size: 192, elements: !1803)
!1803 = !{!1804, !1805}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !1802, file: !68, line: 220, baseType: !1642, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1802, file: !68, line: 221, baseType: !147, size: 128, offset: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !1639, file: !68, line: 239, baseType: !82, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "http2", scope: !1639, file: !68, line: 240, baseType: !82, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_protocol", scope: !1639, file: !68, line: 241, baseType: !82, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "conf_ctx", scope: !1634, file: !76, line: 311, baseType: !1648, size: 64, offset: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_servername", scope: !1634, file: !76, line: 314, baseType: !751, size: 64, offset: 128)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !1634, file: !76, line: 320, baseType: !219, size: 64, offset: 192)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "nbusy", scope: !1634, file: !76, line: 321, baseType: !28, size: 64, offset: 256)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1634, file: !76, line: 323, baseType: !219, size: 64, offset: 320)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !1634, file: !76, line: 325, baseType: !82, size: 1, offset: 384, flags: DIFlagBitField, extraData: i64 384)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_protocol", scope: !1634, file: !76, line: 326, baseType: !82, size: 1, offset: 385, flags: DIFlagBitField, extraData: i64 384)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !75, file: !76, line: 447, baseType: !1817, size: 64, offset: 9536)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_v2_stream_t", file: !74, line: 22, baseType: !1819)
!1819 = !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_v2_stream_s", file: !74, line: 22, flags: DIFlagFwdDecl)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "log_handler", scope: !75, file: !76, line: 449, baseType: !1821, size: 64, offset: 9600)
!1821 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_log_handler_pt", file: !74, line: 26, baseType: !1822)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{!21, !72, !72, !21, !152}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !75, file: !76, line: 451, baseType: !1826, size: 64, offset: 9664)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_cleanup_t", file: !76, line: 332, baseType: !1828)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_cleanup_s", file: !76, line: 334, size: 192, elements: !1829)
!1829 = !{!1830, !1831, !1832}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1828, file: !76, line: 335, baseType: !1455, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1828, file: !76, line: 336, baseType: !27, size: 64, offset: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1828, file: !76, line: 337, baseType: !1826, size: 64, offset: 128)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !75, file: !76, line: 453, baseType: !82, size: 16, offset: 9728, flags: DIFlagBitField, extraData: i64 9728)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "subrequests", scope: !75, file: !76, line: 454, baseType: !82, size: 8, offset: 9744, flags: DIFlagBitField, extraData: i64 9728)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !75, file: !76, line: 455, baseType: !82, size: 8, offset: 9752, flags: DIFlagBitField, extraData: i64 9728)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "aio", scope: !75, file: !76, line: 457, baseType: !82, size: 1, offset: 9760, flags: DIFlagBitField, extraData: i64 9728)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "http_state", scope: !75, file: !76, line: 459, baseType: !82, size: 4, offset: 9761, flags: DIFlagBitField, extraData: i64 9728)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "complex_uri", scope: !75, file: !76, line: 462, baseType: !82, size: 1, offset: 9765, flags: DIFlagBitField, extraData: i64 9728)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "quoted_uri", scope: !75, file: !76, line: 465, baseType: !82, size: 1, offset: 9766, flags: DIFlagBitField, extraData: i64 9728)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "plus_in_uri", scope: !75, file: !76, line: 468, baseType: !82, size: 1, offset: 9767, flags: DIFlagBitField, extraData: i64 9728)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "space_in_uri", scope: !75, file: !76, line: 471, baseType: !82, size: 1, offset: 9768, flags: DIFlagBitField, extraData: i64 9728)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "invalid_header", scope: !75, file: !76, line: 473, baseType: !82, size: 1, offset: 9769, flags: DIFlagBitField, extraData: i64 9728)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "add_uri_to_alias", scope: !75, file: !76, line: 475, baseType: !82, size: 1, offset: 9770, flags: DIFlagBitField, extraData: i64 9728)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "valid_location", scope: !75, file: !76, line: 476, baseType: !82, size: 1, offset: 9771, flags: DIFlagBitField, extraData: i64 9728)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "valid_unparsed_uri", scope: !75, file: !76, line: 477, baseType: !82, size: 1, offset: 9772, flags: DIFlagBitField, extraData: i64 9728)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "uri_changed", scope: !75, file: !76, line: 478, baseType: !82, size: 1, offset: 9773, flags: DIFlagBitField, extraData: i64 9728)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "uri_changes", scope: !75, file: !76, line: 479, baseType: !82, size: 4, offset: 9774, flags: DIFlagBitField, extraData: i64 9728)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_in_single_buf", scope: !75, file: !76, line: 481, baseType: !82, size: 1, offset: 9778, flags: DIFlagBitField, extraData: i64 9728)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_in_file_only", scope: !75, file: !76, line: 482, baseType: !82, size: 1, offset: 9779, flags: DIFlagBitField, extraData: i64 9728)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_in_persistent_file", scope: !75, file: !76, line: 483, baseType: !82, size: 1, offset: 9780, flags: DIFlagBitField, extraData: i64 9728)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_in_clean_file", scope: !75, file: !76, line: 484, baseType: !82, size: 1, offset: 9781, flags: DIFlagBitField, extraData: i64 9728)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_file_group_access", scope: !75, file: !76, line: 485, baseType: !82, size: 1, offset: 9782, flags: DIFlagBitField, extraData: i64 9728)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_file_log_level", scope: !75, file: !76, line: 486, baseType: !82, size: 3, offset: 9783, flags: DIFlagBitField, extraData: i64 9728)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "request_body_no_buffering", scope: !75, file: !76, line: 487, baseType: !82, size: 1, offset: 9786, flags: DIFlagBitField, extraData: i64 9728)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "subrequest_in_memory", scope: !75, file: !76, line: 489, baseType: !82, size: 1, offset: 9787, flags: DIFlagBitField, extraData: i64 9728)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "waited", scope: !75, file: !76, line: 490, baseType: !82, size: 1, offset: 9788, flags: DIFlagBitField, extraData: i64 9728)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "cached", scope: !75, file: !76, line: 493, baseType: !82, size: 1, offset: 9789, flags: DIFlagBitField, extraData: i64 9728)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_tested", scope: !75, file: !76, line: 497, baseType: !82, size: 1, offset: 9790, flags: DIFlagBitField, extraData: i64 9728)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_ok", scope: !75, file: !76, line: 498, baseType: !82, size: 1, offset: 9791, flags: DIFlagBitField, extraData: i64 9728)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "gzip_vary", scope: !75, file: !76, line: 499, baseType: !82, size: 1, offset: 9792, flags: DIFlagBitField, extraData: i64 9728)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !75, file: !76, line: 506, baseType: !82, size: 1, offset: 9793, flags: DIFlagBitField, extraData: i64 9728)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "bypass_cache", scope: !75, file: !76, line: 507, baseType: !82, size: 1, offset: 9794, flags: DIFlagBitField, extraData: i64 9728)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "no_cache", scope: !75, file: !76, line: 508, baseType: !82, size: 1, offset: 9795, flags: DIFlagBitField, extraData: i64 9728)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "limit_conn_set", scope: !75, file: !76, line: 515, baseType: !82, size: 1, offset: 9796, flags: DIFlagBitField, extraData: i64 9728)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "limit_req_set", scope: !75, file: !76, line: 516, baseType: !82, size: 1, offset: 9797, flags: DIFlagBitField, extraData: i64 9728)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "pipeline", scope: !75, file: !76, line: 522, baseType: !82, size: 1, offset: 9798, flags: DIFlagBitField, extraData: i64 9728)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "chunked", scope: !75, file: !76, line: 523, baseType: !82, size: 1, offset: 9799, flags: DIFlagBitField, extraData: i64 9728)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "header_only", scope: !75, file: !76, line: 524, baseType: !82, size: 1, offset: 9800, flags: DIFlagBitField, extraData: i64 9728)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "expect_trailers", scope: !75, file: !76, line: 525, baseType: !82, size: 1, offset: 9801, flags: DIFlagBitField, extraData: i64 9728)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive", scope: !75, file: !76, line: 526, baseType: !82, size: 1, offset: 9802, flags: DIFlagBitField, extraData: i64 9728)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "lingering_close", scope: !75, file: !76, line: 527, baseType: !82, size: 1, offset: 9803, flags: DIFlagBitField, extraData: i64 9728)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "discard_body", scope: !75, file: !76, line: 528, baseType: !82, size: 1, offset: 9804, flags: DIFlagBitField, extraData: i64 9728)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "reading_body", scope: !75, file: !76, line: 529, baseType: !82, size: 1, offset: 9805, flags: DIFlagBitField, extraData: i64 9728)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !75, file: !76, line: 530, baseType: !82, size: 1, offset: 9806, flags: DIFlagBitField, extraData: i64 9728)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "error_page", scope: !75, file: !76, line: 531, baseType: !82, size: 1, offset: 9807, flags: DIFlagBitField, extraData: i64 9728)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "filter_finalize", scope: !75, file: !76, line: 532, baseType: !82, size: 1, offset: 9808, flags: DIFlagBitField, extraData: i64 9728)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "post_action", scope: !75, file: !76, line: 533, baseType: !82, size: 1, offset: 9809, flags: DIFlagBitField, extraData: i64 9728)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "request_complete", scope: !75, file: !76, line: 534, baseType: !82, size: 1, offset: 9810, flags: DIFlagBitField, extraData: i64 9728)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "request_output", scope: !75, file: !76, line: 535, baseType: !82, size: 1, offset: 9811, flags: DIFlagBitField, extraData: i64 9728)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "header_sent", scope: !75, file: !76, line: 536, baseType: !82, size: 1, offset: 9812, flags: DIFlagBitField, extraData: i64 9728)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "expect_tested", scope: !75, file: !76, line: 537, baseType: !82, size: 1, offset: 9813, flags: DIFlagBitField, extraData: i64 9728)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "root_tested", scope: !75, file: !76, line: 538, baseType: !82, size: 1, offset: 9814, flags: DIFlagBitField, extraData: i64 9728)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !75, file: !76, line: 539, baseType: !82, size: 1, offset: 9815, flags: DIFlagBitField, extraData: i64 9728)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "logged", scope: !75, file: !76, line: 540, baseType: !82, size: 1, offset: 9816, flags: DIFlagBitField, extraData: i64 9728)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "buffered", scope: !75, file: !76, line: 542, baseType: !82, size: 4, offset: 9817, flags: DIFlagBitField, extraData: i64 9728)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "main_filter_need_in_memory", scope: !75, file: !76, line: 544, baseType: !82, size: 1, offset: 9821, flags: DIFlagBitField, extraData: i64 9728)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "filter_need_in_memory", scope: !75, file: !76, line: 545, baseType: !82, size: 1, offset: 9822, flags: DIFlagBitField, extraData: i64 9728)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "filter_need_temporary", scope: !75, file: !76, line: 546, baseType: !82, size: 1, offset: 9823, flags: DIFlagBitField, extraData: i64 9728)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_body", scope: !75, file: !76, line: 547, baseType: !82, size: 1, offset: 9824, flags: DIFlagBitField, extraData: i64 9728)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "allow_ranges", scope: !75, file: !76, line: 548, baseType: !82, size: 1, offset: 9825, flags: DIFlagBitField, extraData: i64 9728)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "subrequest_ranges", scope: !75, file: !76, line: 549, baseType: !82, size: 1, offset: 9826, flags: DIFlagBitField, extraData: i64 9728)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "single_range", scope: !75, file: !76, line: 550, baseType: !82, size: 1, offset: 9827, flags: DIFlagBitField, extraData: i64 9728)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "disable_not_modified", scope: !75, file: !76, line: 551, baseType: !82, size: 1, offset: 9828, flags: DIFlagBitField, extraData: i64 9728)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "stat_reading", scope: !75, file: !76, line: 552, baseType: !82, size: 1, offset: 9829, flags: DIFlagBitField, extraData: i64 9728)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "stat_writing", scope: !75, file: !76, line: 553, baseType: !82, size: 1, offset: 9830, flags: DIFlagBitField, extraData: i64 9728)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "stat_processing", scope: !75, file: !76, line: 554, baseType: !82, size: 1, offset: 9831, flags: DIFlagBitField, extraData: i64 9728)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "background", scope: !75, file: !76, line: 556, baseType: !82, size: 1, offset: 9832, flags: DIFlagBitField, extraData: i64 9728)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "health_check", scope: !75, file: !76, line: 557, baseType: !82, size: 1, offset: 9833, flags: DIFlagBitField, extraData: i64 9728)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !75, file: !76, line: 561, baseType: !126, size: 64, offset: 9856)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "header_hash", scope: !75, file: !76, line: 563, baseType: !126, size: 64, offset: 9920)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "lowcase_index", scope: !75, file: !76, line: 564, baseType: !126, size: 64, offset: 9984)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "lowcase_header", scope: !75, file: !76, line: 565, baseType: !1903, size: 256, offset: 10048)
!1903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 256, elements: !620)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "header_name_start", scope: !75, file: !76, line: 567, baseType: !21, size: 64, offset: 10304)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "header_name_end", scope: !75, file: !76, line: 568, baseType: !21, size: 64, offset: 10368)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "header_start", scope: !75, file: !76, line: 569, baseType: !21, size: 64, offset: 10432)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "header_end", scope: !75, file: !76, line: 570, baseType: !21, size: 64, offset: 10496)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "uri_start", scope: !75, file: !76, line: 577, baseType: !21, size: 64, offset: 10560)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "uri_end", scope: !75, file: !76, line: 578, baseType: !21, size: 64, offset: 10624)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "uri_ext", scope: !75, file: !76, line: 579, baseType: !21, size: 64, offset: 10688)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "args_start", scope: !75, file: !76, line: 580, baseType: !21, size: 64, offset: 10752)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "request_start", scope: !75, file: !76, line: 581, baseType: !21, size: 64, offset: 10816)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "request_end", scope: !75, file: !76, line: 582, baseType: !21, size: 64, offset: 10880)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "method_end", scope: !75, file: !76, line: 583, baseType: !21, size: 64, offset: 10944)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "schema_start", scope: !75, file: !76, line: 584, baseType: !21, size: 64, offset: 11008)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "schema_end", scope: !75, file: !76, line: 585, baseType: !21, size: 64, offset: 11072)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "host_start", scope: !75, file: !76, line: 586, baseType: !21, size: 64, offset: 11136)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "host_end", scope: !75, file: !76, line: 587, baseType: !21, size: 64, offset: 11200)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "port_start", scope: !75, file: !76, line: 588, baseType: !21, size: 64, offset: 11264)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "port_end", scope: !75, file: !76, line: 589, baseType: !21, size: 64, offset: 11328)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "http_minor", scope: !75, file: !76, line: 591, baseType: !82, size: 16, offset: 11392, flags: DIFlagBitField, extraData: i64 11392)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "http_major", scope: !75, file: !76, line: 592, baseType: !82, size: 16, offset: 11408, flags: DIFlagBitField, extraData: i64 11392)
!1923 = !{i32 7, !"Dwarf Version", i32 5}
!1924 = !{i32 2, !"Debug Info Version", i32 3}
!1925 = !{i32 1, !"wchar_size", i32 4}
!1926 = !{i32 8, !"PIC Level", i32 2}
!1927 = !{i32 7, !"PIE Level", i32 2}
!1928 = !{i32 7, !"uwtable", i32 2}
!1929 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!1930 = distinct !DISubprogram(name: "ngx_http_lua_body_filter_by_chunk", scope: !2, file: !2, line: 85, type: !1931, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1937)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{!28, !1933, !72, !219}
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_State", file: !1935, line: 51, baseType: !1936)
!1935 = !DIFile(filename: "luajit-root/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spa/linux-ubuntu22.04-zen2/clang-18.0.0/openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/luajit/include/luajit-2.1/lua.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build", checksumkind: CSK_MD5, checksum: "255fa697efe8afbe3c913e4a8fc1e62f")
!1936 = !DICompositeType(tag: DW_TAG_structure_type, name: "lua_State", file: !1935, line: 51, flags: DIFlagFwdDecl)
!1937 = !{!1938, !1939, !1940, !1941, !1942, !1943}
!1938 = !DILocalVariable(name: "L", arg: 1, scope: !1930, file: !2, line: 85, type: !1933)
!1939 = !DILocalVariable(name: "r", arg: 2, scope: !1930, file: !2, line: 85, type: !72)
!1940 = !DILocalVariable(name: "in", arg: 3, scope: !1930, file: !2, line: 86, type: !219)
!1941 = !DILocalVariable(name: "rc", scope: !1930, file: !2, line: 88, type: !28)
!1942 = !DILocalVariable(name: "err_msg", scope: !1930, file: !2, line: 89, type: !21)
!1943 = !DILocalVariable(name: "len", scope: !1930, file: !2, line: 90, type: !152)
!1944 = !{!1945, !1945, i64 0}
!1945 = !{!"any pointer", !1946, i64 0}
!1946 = !{!"omnipotent char", !1947, i64 0}
!1947 = !{!"Simple C/C++ TBAA"}
!1948 = !DILocation(line: 85, column: 46, scope: !1930)
!1949 = !DILocation(line: 85, column: 69, scope: !1930)
!1950 = !DILocation(line: 86, column: 18, scope: !1930)
!1951 = !DILocation(line: 88, column: 5, scope: !1930)
!1952 = !DILocation(line: 88, column: 22, scope: !1930)
!1953 = !DILocation(line: 89, column: 5, scope: !1930)
!1954 = !DILocation(line: 89, column: 22, scope: !1930)
!1955 = !DILocation(line: 90, column: 5, scope: !1930)
!1956 = !DILocation(line: 90, column: 22, scope: !1930)
!1957 = !DILocation(line: 96, column: 41, scope: !1930)
!1958 = !DILocation(line: 96, column: 44, scope: !1930)
!1959 = !DILocation(line: 96, column: 47, scope: !1930)
!1960 = !DILocation(line: 96, column: 5, scope: !1930)
!1961 = !DILocation(line: 103, column: 5, scope: !1930)
!1962 = !DILocation(line: 104, column: 16, scope: !1930)
!1963 = !DILocation(line: 104, column: 5, scope: !1930)
!1964 = !DILocation(line: 107, column: 20, scope: !1930)
!1965 = !DILocation(line: 107, column: 10, scope: !1930)
!1966 = !DILocation(line: 107, column: 8, scope: !1930)
!1967 = !{!1968, !1968, i64 0}
!1968 = !{!"long", !1946, i64 0}
!1969 = !DILocation(line: 109, column: 16, scope: !1930)
!1970 = !DILocation(line: 109, column: 5, scope: !1930)
!1971 = !DILocation(line: 116, column: 9, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1930, file: !2, line: 116, column: 9)
!1973 = !DILocation(line: 116, column: 12, scope: !1972)
!1974 = !DILocation(line: 116, column: 9, scope: !1930)
!1975 = !DILocation(line: 119, column: 44, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1972, file: !2, line: 116, column: 18)
!1977 = !DILocation(line: 119, column: 30, scope: !1976)
!1978 = !DILocation(line: 119, column: 17, scope: !1976)
!1979 = !DILocation(line: 121, column: 13, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1976, file: !2, line: 121, column: 13)
!1981 = !DILocation(line: 121, column: 21, scope: !1980)
!1982 = !DILocation(line: 121, column: 13, scope: !1976)
!1983 = !DILocation(line: 122, column: 21, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1980, file: !2, line: 121, column: 30)
!1985 = !DILocation(line: 123, column: 17, scope: !1984)
!1986 = !DILocation(line: 124, column: 9, scope: !1984)
!1987 = !DILocation(line: 126, column: 9, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1976, file: !2, line: 126, column: 9)
!1989 = !{!1990, !1945, i64 8}
!1990 = !{!"ngx_http_request_s", !1991, i64 0, !1945, i64 8, !1945, i64 16, !1945, i64 24, !1945, i64 32, !1945, i64 40, !1945, i64 48, !1945, i64 56, !1945, i64 64, !1945, i64 72, !1945, i64 80, !1945, i64 88, !1945, i64 96, !1992, i64 104, !1997, i64 480, !1945, i64 888, !1968, i64 896, !1968, i64 904, !1968, i64 912, !1968, i64 920, !1968, i64 928, !1996, i64 936, !1996, i64 952, !1996, i64 968, !1996, i64 984, !1996, i64 1000, !1996, i64 1016, !1996, i64 1032, !1996, i64 1048, !1945, i64 1064, !1945, i64 1072, !1945, i64 1080, !1945, i64 1088, !1945, i64 1096, !1945, i64 1104, !1968, i64 1112, !1945, i64 1120, !1968, i64 1128, !1945, i64 1136, !1968, i64 1144, !1968, i64 1152, !1968, i64 1160, !1968, i64 1168, !1968, i64 1176, !1945, i64 1184, !1945, i64 1192, !1945, i64 1200, !1945, i64 1208, !1991, i64 1216, !1991, i64 1218, !1991, i64 1219, !1991, i64 1220, !1991, i64 1220, !1991, i64 1220, !1991, i64 1220, !1991, i64 1220, !1991, i64 1221, !1991, i64 1221, !1991, i64 1221, !1991, i64 1221, !1991, i64 1221, !1991, i64 1221, !1991, i64 1221, !1991, i64 1222, !1991, i64 1222, !1991, i64 1222, !1991, i64 1222, !1991, i64 1222, !1991, i64 1222, !1991, i64 1223, !1991, i64 1223, !1991, i64 1223, !1991, i64 1223, !1991, i64 1223, !1991, i64 1223, !1991, i64 1224, !1991, i64 1224, !1991, i64 1224, !1991, i64 1224, !1991, i64 1224, !1991, i64 1224, !1991, i64 1224, !1991, i64 1224, !1991, i64 1225, !1991, i64 1225, !1991, i64 1225, !1991, i64 1225, !1991, i64 1225, !1991, i64 1225, !1991, i64 1225, !1991, i64 1225, !1991, i64 1226, !1991, i64 1226, !1991, i64 1226, !1991, i64 1226, !1991, i64 1226, !1991, i64 1226, !1991, i64 1226, !1991, i64 1226, !1991, i64 1227, !1991, i64 1227, !1991, i64 1227, !1991, i64 1227, !1991, i64 1227, !1991, i64 1228, !1991, i64 1228, !1991, i64 1228, !1991, i64 1228, !1991, i64 1228, !1991, i64 1228, !1991, i64 1228, !1991, i64 1228, !1991, i64 1229, !1991, i64 1229, !1968, i64 1232, !1968, i64 1240, !1968, i64 1248, !1946, i64 1256, !1945, i64 1288, !1945, i64 1296, !1945, i64 1304, !1945, i64 1312, !1945, i64 1320, !1945, i64 1328, !1945, i64 1336, !1945, i64 1344, !1945, i64 1352, !1945, i64 1360, !1945, i64 1368, !1945, i64 1376, !1945, i64 1384, !1945, i64 1392, !1945, i64 1400, !1945, i64 1408, !1945, i64 1416, !1991, i64 1424, !1991, i64 1426}
!1991 = !{!"int", !1946, i64 0}
!1992 = !{!"", !1993, i64 0, !1945, i64 56, !1945, i64 64, !1945, i64 72, !1945, i64 80, !1945, i64 88, !1945, i64 96, !1945, i64 104, !1945, i64 112, !1945, i64 120, !1945, i64 128, !1945, i64 136, !1945, i64 144, !1945, i64 152, !1945, i64 160, !1945, i64 168, !1945, i64 176, !1945, i64 184, !1945, i64 192, !1945, i64 200, !1945, i64 208, !1945, i64 216, !1995, i64 224, !1996, i64 264, !1996, i64 280, !1995, i64 296, !1996, i64 336, !1968, i64 352, !1968, i64 360, !1991, i64 368, !1991, i64 368, !1991, i64 368, !1991, i64 368, !1991, i64 368, !1991, i64 368, !1991, i64 368, !1991, i64 369, !1991, i64 369}
!1993 = !{!"", !1945, i64 0, !1994, i64 8, !1968, i64 32, !1968, i64 40, !1945, i64 48}
!1994 = !{!"ngx_list_part_s", !1945, i64 0, !1968, i64 8, !1945, i64 16}
!1995 = !{!"", !1945, i64 0, !1968, i64 8, !1968, i64 16, !1968, i64 24, !1945, i64 32}
!1996 = !{!"", !1968, i64 0, !1945, i64 8}
!1997 = !{!"", !1993, i64 0, !1993, i64 56, !1968, i64 112, !1996, i64 120, !1945, i64 136, !1945, i64 144, !1945, i64 152, !1945, i64 160, !1945, i64 168, !1945, i64 176, !1945, i64 184, !1945, i64 192, !1945, i64 200, !1945, i64 208, !1945, i64 216, !1945, i64 224, !1945, i64 232, !1968, i64 240, !1996, i64 248, !1996, i64 264, !1945, i64 280, !1968, i64 288, !1995, i64 296, !1995, i64 336, !1968, i64 376, !1968, i64 384, !1968, i64 392, !1968, i64 400}
!1998 = !{!1999, !1945, i64 80}
!1999 = !{!"ngx_connection_s", !1945, i64 0, !1945, i64 8, !1945, i64 16, !1991, i64 24, !1945, i64 32, !1945, i64 40, !1945, i64 48, !1945, i64 56, !1945, i64 64, !1968, i64 72, !1945, i64 80, !1945, i64 88, !1991, i64 96, !1945, i64 104, !1991, i64 112, !1996, i64 120, !1996, i64 136, !2000, i64 152, !1945, i64 160, !1945, i64 168, !1945, i64 176, !1991, i64 184, !1945, i64 192, !2001, i64 200, !1968, i64 216, !1968, i64 224, !1991, i64 232, !1991, i64 233, !1991, i64 233, !1991, i64 233, !1991, i64 233, !1991, i64 233, !1991, i64 233, !1991, i64 234, !1991, i64 234, !1991, i64 234, !1991, i64 234, !1991, i64 234, !1991, i64 234, !1991, i64 235}
!2000 = !{!"short", !1946, i64 0}
!2001 = !{!"ngx_queue_s", !1945, i64 0, !1945, i64 8}
!2002 = !{!2003, !1968, i64 0}
!2003 = !{!"ngx_log_s", !1968, i64 0, !1945, i64 8, !1968, i64 16, !1968, i64 24, !1945, i64 32, !1945, i64 40, !1945, i64 48, !1945, i64 56, !1945, i64 64, !1945, i64 72}
!2004 = !DILocation(line: 126, column: 9, scope: !1976)
!2005 = !DILocation(line: 129, column: 20, scope: !1976)
!2006 = !DILocation(line: 129, column: 9, scope: !1976)
!2007 = !DILocation(line: 131, column: 9, scope: !1976)
!2008 = !DILocation(line: 136, column: 36, scope: !1930)
!2009 = !DILocation(line: 136, column: 22, scope: !1930)
!2010 = !DILocation(line: 136, column: 8, scope: !1930)
!2011 = !DILocation(line: 140, column: 16, scope: !1930)
!2012 = !DILocation(line: 140, column: 5, scope: !1930)
!2013 = !DILocation(line: 142, column: 9, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !1930, file: !2, line: 142, column: 9)
!2015 = !DILocation(line: 142, column: 12, scope: !2014)
!2016 = !DILocation(line: 142, column: 25, scope: !2014)
!2017 = !DILocation(line: 142, column: 28, scope: !2014)
!2018 = !DILocation(line: 142, column: 31, scope: !2014)
!2019 = !DILocation(line: 142, column: 9, scope: !1930)
!2020 = !DILocation(line: 143, column: 9, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2014, file: !2, line: 142, column: 61)
!2022 = !DILocation(line: 146, column: 5, scope: !1930)
!2023 = !DILocation(line: 147, column: 1, scope: !1930)
!2024 = distinct !DISubprogram(name: "ngx_http_lua_body_filter_by_lua_env", scope: !2, file: !2, line: 47, type: !2025, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !2027)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{null, !1933, !72, !219}
!2027 = !{!2028, !2029, !2030, !2031}
!2028 = !DILocalVariable(name: "L", arg: 1, scope: !2024, file: !2, line: 47, type: !1933)
!2029 = !DILocalVariable(name: "r", arg: 2, scope: !2024, file: !2, line: 47, type: !72)
!2030 = !DILocalVariable(name: "in", arg: 3, scope: !2024, file: !2, line: 48, type: !219)
!2031 = !DILocalVariable(name: "lmcf", scope: !2024, file: !2, line: 50, type: !2032)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_lua_main_conf_t", file: !2034, line: 152, baseType: !2035)
!2034 = !DIFile(filename: "../ngx_lua-0.10.15/src/ngx_http_lua_common.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "24448ae47d4689905dbf6863a08ccbf0")
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_lua_main_conf_s", file: !2034, line: 175, size: 2432, elements: !2036)
!2036 = !{!2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2059, !2060, !2061, !2062, !2066, !2067, !2068, !2069, !2070, !2074, !2075, !2076, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "lua", scope: !2035, file: !2034, line: 176, baseType: !1933, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "vm_cleanup", scope: !2035, file: !2034, line: 177, baseType: !409, size: 64, offset: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "lua_path", scope: !2035, file: !2034, line: 179, baseType: !147, size: 128, offset: 128)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "lua_cpath", scope: !2035, file: !2034, line: 180, baseType: !147, size: 128, offset: 256)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "cycle", scope: !2035, file: !2034, line: 182, baseType: !929, size: 64, offset: 384)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !2035, file: !2034, line: 183, baseType: !385, size: 64, offset: 448)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "load_resty_core", scope: !2035, file: !2034, line: 185, baseType: !1098, size: 64, offset: 512)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "max_pending_timers", scope: !2035, file: !2034, line: 187, baseType: !28, size: 64, offset: 576)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "pending_timers", scope: !2035, file: !2034, line: 188, baseType: !28, size: 64, offset: 640)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "max_running_timers", scope: !2035, file: !2034, line: 190, baseType: !28, size: 64, offset: 704)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "running_timers", scope: !2035, file: !2034, line: 191, baseType: !28, size: 64, offset: 768)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "watcher", scope: !2035, file: !2034, line: 193, baseType: !84, size: 64, offset: 832)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "shm_zones", scope: !2035, file: !2034, line: 206, baseType: !927, size: 64, offset: 896)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "shdict_zones", scope: !2035, file: !2034, line: 208, baseType: !927, size: 64, offset: 960)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "preload_hooks", scope: !2035, file: !2034, line: 210, baseType: !927, size: 64, offset: 1024)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "postponed_to_rewrite_phase_end", scope: !2035, file: !2034, line: 212, baseType: !1098, size: 64, offset: 1088)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "postponed_to_access_phase_end", scope: !2035, file: !2034, line: 213, baseType: !1098, size: 64, offset: 1152)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "init_handler", scope: !2035, file: !2034, line: 215, baseType: !2055, size: 64, offset: 1216)
!2055 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_lua_main_conf_handler_pt", file: !2034, line: 163, baseType: !2056)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{!28, !131, !2032, !1933}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "init_src", scope: !2035, file: !2034, line: 216, baseType: !147, size: 128, offset: 1280)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "init_worker_handler", scope: !2035, file: !2034, line: 218, baseType: !2055, size: 64, offset: 1408)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "init_worker_src", scope: !2035, file: !2034, line: 219, baseType: !147, size: 128, offset: 1472)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "balancer_peer_data", scope: !2035, file: !2034, line: 221, baseType: !2063, size: 64, offset: 1600)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_lua_balancer_peer_data_t", file: !2034, line: 157, baseType: !2065)
!2065 = !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_lua_balancer_peer_data_s", file: !2034, line: 156, flags: DIFlagFwdDecl)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "body_filter_chain", scope: !2035, file: !2034, line: 228, baseType: !219, size: 64, offset: 1664)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "setby_args", scope: !2035, file: !2034, line: 235, baseType: !1614, size: 64, offset: 1728)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "setby_nargs", scope: !2035, file: !2034, line: 242, baseType: !152, size: 64, offset: 1792)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "shm_zones_inited", scope: !2035, file: !2034, line: 249, baseType: !126, size: 64, offset: 1856)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "sema_mm", scope: !2035, file: !2034, line: 251, baseType: !2071, size: 64, offset: 1920)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_lua_sema_mm_t", file: !2034, line: 160, baseType: !2073)
!2073 = !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_lua_sema_mm_s", file: !2034, line: 160, flags: DIFlagFwdDecl)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_trim_cycle", scope: !2035, file: !2034, line: 253, baseType: !126, size: 64, offset: 1984)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_trim_req_count", scope: !2035, file: !2034, line: 255, baseType: !126, size: 64, offset: 2048)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "busy_buf_ptrs", scope: !2035, file: !2034, line: 259, baseType: !2077, size: 64, offset: 2112)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "busy_buf_ptr_count", scope: !2035, file: !2034, line: 260, baseType: !28, size: 64, offset: 2176)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "host_var_index", scope: !2035, file: !2034, line: 263, baseType: !28, size: 64, offset: 2240)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "set_sa_restart", scope: !2035, file: !2034, line: 265, baseType: !1098, size: 64, offset: 2304)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "requires_header_filter", scope: !2035, file: !2034, line: 267, baseType: !82, size: 1, offset: 2368, flags: DIFlagBitField, extraData: i64 2368)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "requires_body_filter", scope: !2035, file: !2034, line: 268, baseType: !82, size: 1, offset: 2369, flags: DIFlagBitField, extraData: i64 2368)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "requires_capture_filter", scope: !2035, file: !2034, line: 269, baseType: !82, size: 1, offset: 2370, flags: DIFlagBitField, extraData: i64 2368)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "requires_rewrite", scope: !2035, file: !2034, line: 270, baseType: !82, size: 1, offset: 2371, flags: DIFlagBitField, extraData: i64 2368)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "requires_access", scope: !2035, file: !2034, line: 271, baseType: !82, size: 1, offset: 2372, flags: DIFlagBitField, extraData: i64 2368)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "requires_log", scope: !2035, file: !2034, line: 272, baseType: !82, size: 1, offset: 2373, flags: DIFlagBitField, extraData: i64 2368)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "requires_shm", scope: !2035, file: !2034, line: 273, baseType: !82, size: 1, offset: 2374, flags: DIFlagBitField, extraData: i64 2368)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "requires_capture_log", scope: !2035, file: !2034, line: 274, baseType: !82, size: 1, offset: 2375, flags: DIFlagBitField, extraData: i64 2368)
!2089 = !DILocation(line: 47, column: 48, scope: !2024)
!2090 = !DILocation(line: 47, column: 71, scope: !2024)
!2091 = !DILocation(line: 48, column: 18, scope: !2024)
!2092 = !DILocation(line: 50, column: 5, scope: !2024)
!2093 = !DILocation(line: 50, column: 34, scope: !2024)
!2094 = !DILocation(line: 52, column: 26, scope: !2024)
!2095 = !DILocation(line: 52, column: 29, scope: !2024)
!2096 = !DILocation(line: 52, column: 5, scope: !2024)
!2097 = !DILocation(line: 54, column: 12, scope: !2024)
!2098 = !{!1990, !1945, i64 24}
!2099 = !{!2100, !1968, i64 0}
!2100 = !{!"ngx_module_s", !1968, i64 0, !1968, i64 8, !1945, i64 16, !1968, i64 24, !1968, i64 32, !1968, i64 40, !1945, i64 48, !1945, i64 56, !1945, i64 64, !1968, i64 72, !1945, i64 80, !1945, i64 88, !1945, i64 96, !1945, i64 104, !1945, i64 112, !1945, i64 120, !1945, i64 128, !1968, i64 136, !1968, i64 144, !1968, i64 152, !1968, i64 160, !1968, i64 168, !1968, i64 176, !1968, i64 184, !1968, i64 192}
!2101 = !DILocation(line: 54, column: 10, scope: !2024)
!2102 = !DILocation(line: 55, column: 31, scope: !2024)
!2103 = !DILocation(line: 55, column: 5, scope: !2024)
!2104 = !DILocation(line: 55, column: 11, scope: !2024)
!2105 = !DILocation(line: 55, column: 29, scope: !2024)
!2106 = !{!2107, !1945, i64 208}
!2107 = !{!"ngx_http_lua_main_conf_s", !1945, i64 0, !1945, i64 8, !1996, i64 16, !1996, i64 32, !1945, i64 48, !1945, i64 56, !1968, i64 64, !1968, i64 72, !1968, i64 80, !1968, i64 88, !1968, i64 96, !1945, i64 104, !1945, i64 112, !1945, i64 120, !1945, i64 128, !1968, i64 136, !1968, i64 144, !1945, i64 152, !1996, i64 160, !1945, i64 176, !1996, i64 184, !1945, i64 200, !1945, i64 208, !1945, i64 216, !1968, i64 224, !1968, i64 232, !1945, i64 240, !1968, i64 248, !1968, i64 256, !1945, i64 264, !1968, i64 272, !1968, i64 280, !1968, i64 288, !1991, i64 296, !1991, i64 296, !1991, i64 296, !1991, i64 296, !1991, i64 296, !1991, i64 296, !1991, i64 296, !1991, i64 296}
!2108 = !DILocation(line: 81, column: 1, scope: !2024)
!2109 = !DISubprogram(name: "lua_pushcclosure", scope: !1935, file: !1935, line: 169, type: !2110, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{null, !1933, !2112, !34}
!2112 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_CFunction", file: !1935, line: 53, baseType: !2113)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{!34, !1933}
!2116 = !DISubprogram(name: "lua_insert", scope: !1935, file: !1935, line: 125, type: !2117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{null, !1933, !34}
!2119 = !DISubprogram(name: "lua_pcall", scope: !1935, file: !1935, line: 203, type: !2120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!34, !1933, !34, !34, !34}
!2122 = !DISubprogram(name: "lua_remove", scope: !1935, file: !1935, line: 124, type: !2117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2123 = !DISubprogram(name: "lua_tolstring", scope: !1935, file: !1935, line: 150, type: !2124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!958, !1933, !34, !2126}
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!2127 = !DISubprogram(name: "ngx_log_error_core", scope: !134, file: !134, line: 90, type: !2128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{null, !126, !131, !2130, !958, null}
!2130 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_err_t", file: !2131, line: 16, baseType: !34)
!2131 = !DIFile(filename: "src/os/unix/ngx_errno.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "30ed2ad8bb523aef1235abc1478ad7cf")
!2132 = !DISubprogram(name: "lua_settop", scope: !1935, file: !1935, line: 122, type: !2117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2133 = !DISubprogram(name: "lua_tointeger", scope: !1935, file: !1935, line: 148, type: !2134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!2136, !1933, !34}
!2136 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Integer", file: !1935, line: 104, baseType: !2137)
!2137 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !2138, line: 59, baseType: !33)
!2138 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!2139 = distinct !DISubprogram(name: "ngx_http_lua_body_filter_inline", scope: !2, file: !2, line: 151, type: !70, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !2140)
!2140 = !{!2141, !2142, !2143, !2144, !2145}
!2141 = !DILocalVariable(name: "r", arg: 1, scope: !2139, file: !2, line: 151, type: !72)
!2142 = !DILocalVariable(name: "in", arg: 2, scope: !2139, file: !2, line: 151, type: !219)
!2143 = !DILocalVariable(name: "L", scope: !2139, file: !2, line: 153, type: !1933)
!2144 = !DILocalVariable(name: "rc", scope: !2139, file: !2, line: 154, type: !28)
!2145 = !DILocalVariable(name: "llcf", scope: !2139, file: !2, line: 155, type: !2146)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_lua_loc_conf_t", file: !2034, line: 383, baseType: !2148)
!2148 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2034, line: 304, size: 4416, elements: !2149)
!2149 = !{!2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !2148, file: !2034, line: 306, baseType: !1171, size: 64)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_protocols", scope: !2148, file: !2034, line: 307, baseType: !126, size: 64, offset: 64)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_ciphers", scope: !2148, file: !2034, line: 308, baseType: !147, size: 128, offset: 128)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_verify_depth", scope: !2148, file: !2034, line: 309, baseType: !126, size: 64, offset: 256)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_trusted_certificate", scope: !2148, file: !2034, line: 310, baseType: !147, size: 128, offset: 320)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_crl", scope: !2148, file: !2034, line: 311, baseType: !147, size: 128, offset: 448)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "force_read_body", scope: !2148, file: !2034, line: 314, baseType: !1098, size: 64, offset: 576)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "enable_code_cache", scope: !2148, file: !2034, line: 317, baseType: !1098, size: 64, offset: 640)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "http10_buffering", scope: !2148, file: !2034, line: 320, baseType: !1098, size: 64, offset: 704)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "rewrite_handler", scope: !2148, file: !2034, line: 322, baseType: !1611, size: 64, offset: 768)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "access_handler", scope: !2148, file: !2034, line: 323, baseType: !1611, size: 64, offset: 832)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "content_handler", scope: !2148, file: !2034, line: 324, baseType: !1611, size: 64, offset: 896)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "log_handler", scope: !2148, file: !2034, line: 325, baseType: !1611, size: 64, offset: 960)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "header_filter_handler", scope: !2148, file: !2034, line: 326, baseType: !1611, size: 64, offset: 1024)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "body_filter_handler", scope: !2148, file: !2034, line: 328, baseType: !67, size: 64, offset: 1088)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "rewrite_chunkname", scope: !2148, file: !2034, line: 330, baseType: !21, size: 64, offset: 1152)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "rewrite_src", scope: !2148, file: !2034, line: 331, baseType: !1135, size: 320, offset: 1216)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "rewrite_src_key", scope: !2148, file: !2034, line: 335, baseType: !21, size: 64, offset: 1536)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "access_chunkname", scope: !2148, file: !2034, line: 337, baseType: !21, size: 64, offset: 1600)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "access_src", scope: !2148, file: !2034, line: 338, baseType: !1135, size: 320, offset: 1664)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "access_src_key", scope: !2148, file: !2034, line: 342, baseType: !21, size: 64, offset: 1984)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "content_chunkname", scope: !2148, file: !2034, line: 344, baseType: !21, size: 64, offset: 2048)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "content_src", scope: !2148, file: !2034, line: 345, baseType: !1135, size: 320, offset: 2112)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "content_src_key", scope: !2148, file: !2034, line: 349, baseType: !21, size: 64, offset: 2432)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "log_chunkname", scope: !2148, file: !2034, line: 352, baseType: !21, size: 64, offset: 2496)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "log_src", scope: !2148, file: !2034, line: 353, baseType: !1135, size: 320, offset: 2560)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "log_src_key", scope: !2148, file: !2034, line: 356, baseType: !21, size: 64, offset: 2880)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "header_filter_src", scope: !2148, file: !2034, line: 358, baseType: !1135, size: 320, offset: 2944)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "header_filter_src_key", scope: !2148, file: !2034, line: 362, baseType: !21, size: 64, offset: 3264)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "body_filter_src", scope: !2148, file: !2034, line: 366, baseType: !1135, size: 320, offset: 3328)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "body_filter_src_key", scope: !2148, file: !2034, line: 367, baseType: !21, size: 64, offset: 3648)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive_timeout", scope: !2148, file: !2034, line: 369, baseType: !346, size: 64, offset: 3712)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "connect_timeout", scope: !2148, file: !2034, line: 370, baseType: !346, size: 64, offset: 3776)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "send_timeout", scope: !2148, file: !2034, line: 371, baseType: !346, size: 64, offset: 3840)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "read_timeout", scope: !2148, file: !2034, line: 372, baseType: !346, size: 64, offset: 3904)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "send_lowat", scope: !2148, file: !2034, line: 374, baseType: !152, size: 64, offset: 3968)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_size", scope: !2148, file: !2034, line: 375, baseType: !152, size: 64, offset: 4032)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "pool_size", scope: !2148, file: !2034, line: 377, baseType: !126, size: 64, offset: 4096)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "transform_underscores_in_resp_headers", scope: !2148, file: !2034, line: 379, baseType: !1098, size: 64, offset: 4160)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "log_socket_errors", scope: !2148, file: !2034, line: 380, baseType: !1098, size: 64, offset: 4224)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "check_client_abort", scope: !2148, file: !2034, line: 381, baseType: !1098, size: 64, offset: 4288)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "use_default_type", scope: !2148, file: !2034, line: 382, baseType: !1098, size: 64, offset: 4352)
!2192 = !DILocation(line: 151, column: 53, scope: !2139)
!2193 = !DILocation(line: 151, column: 69, scope: !2139)
!2194 = !DILocation(line: 153, column: 5, scope: !2139)
!2195 = !DILocation(line: 153, column: 34, scope: !2139)
!2196 = !DILocation(line: 154, column: 5, scope: !2139)
!2197 = !DILocation(line: 154, column: 34, scope: !2139)
!2198 = !DILocation(line: 155, column: 5, scope: !2139)
!2199 = !DILocation(line: 155, column: 34, scope: !2139)
!2200 = !DILocation(line: 157, column: 12, scope: !2139)
!2201 = !{!1990, !1945, i64 40}
!2202 = !DILocation(line: 157, column: 10, scope: !2139)
!2203 = !DILocation(line: 159, column: 33, scope: !2139)
!2204 = !DILocation(line: 159, column: 9, scope: !2139)
!2205 = !DILocation(line: 159, column: 7, scope: !2139)
!2206 = !DILocation(line: 162, column: 40, scope: !2139)
!2207 = !DILocation(line: 162, column: 43, scope: !2139)
!2208 = !DILocation(line: 162, column: 55, scope: !2139)
!2209 = !DILocation(line: 162, column: 60, scope: !2139)
!2210 = !DILocation(line: 163, column: 40, scope: !2139)
!2211 = !DILocation(line: 163, column: 46, scope: !2139)
!2212 = !DILocation(line: 163, column: 62, scope: !2139)
!2213 = !DILocation(line: 163, column: 68, scope: !2139)
!2214 = !{!2215, !1945, i64 424}
!2215 = !{!"", !1945, i64 0, !1968, i64 8, !1996, i64 16, !1968, i64 32, !1996, i64 40, !1996, i64 56, !1968, i64 72, !1968, i64 80, !1968, i64 88, !1945, i64 96, !1945, i64 104, !1945, i64 112, !1945, i64 120, !1945, i64 128, !1945, i64 136, !1945, i64 144, !2216, i64 152, !1945, i64 192, !1945, i64 200, !2216, i64 208, !1945, i64 248, !1945, i64 256, !2216, i64 264, !1945, i64 304, !1945, i64 312, !2216, i64 320, !1945, i64 360, !2216, i64 368, !1945, i64 408, !2216, i64 416, !1945, i64 456, !1968, i64 464, !1968, i64 472, !1968, i64 480, !1968, i64 488, !1968, i64 496, !1968, i64 504, !1968, i64 512, !1968, i64 520, !1968, i64 528, !1968, i64 536, !1968, i64 544}
!2216 = !{!"", !1996, i64 0, !1945, i64 16, !1945, i64 24, !1945, i64 32}
!2217 = !DILocation(line: 164, column: 40, scope: !2139)
!2218 = !DILocation(line: 164, column: 46, scope: !2139)
!2219 = !DILocation(line: 164, column: 62, scope: !2139)
!2220 = !DILocation(line: 164, column: 68, scope: !2139)
!2221 = !{!2215, !1968, i64 416}
!2222 = !DILocation(line: 165, column: 40, scope: !2139)
!2223 = !DILocation(line: 165, column: 46, scope: !2139)
!2224 = !{!2215, !1945, i64 456}
!2225 = !DILocation(line: 162, column: 10, scope: !2139)
!2226 = !DILocation(line: 162, column: 8, scope: !2139)
!2227 = !DILocation(line: 167, column: 9, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2139, file: !2, line: 167, column: 9)
!2229 = !DILocation(line: 167, column: 12, scope: !2228)
!2230 = !DILocation(line: 167, column: 9, scope: !2139)
!2231 = !DILocation(line: 168, column: 9, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2228, file: !2, line: 167, column: 23)
!2233 = !DILocation(line: 171, column: 44, scope: !2139)
!2234 = !DILocation(line: 171, column: 47, scope: !2139)
!2235 = !DILocation(line: 171, column: 50, scope: !2139)
!2236 = !DILocation(line: 171, column: 10, scope: !2139)
!2237 = !DILocation(line: 171, column: 8, scope: !2139)
!2238 = !DILocation(line: 175, column: 9, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2139, file: !2, line: 175, column: 9)
!2240 = !DILocation(line: 175, column: 12, scope: !2239)
!2241 = !DILocation(line: 175, column: 9, scope: !2139)
!2242 = !DILocation(line: 176, column: 9, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2239, file: !2, line: 175, column: 23)
!2244 = !DILocation(line: 179, column: 5, scope: !2139)
!2245 = !DILocation(line: 180, column: 1, scope: !2139)
!2246 = distinct !DISubprogram(name: "ngx_http_lua_get_lua_vm", scope: !63, file: !63, line: 325, type: !2247, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !2339)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{!1933, !72, !2249}
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_lua_ctx_t", file: !2034, line: 597, baseType: !2251)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_lua_ctx_s", file: !2034, line: 483, size: 3200, elements: !2252)
!2252 = !{!2253, !2260, !2261, !2262, !2297, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "vm_state", scope: !2251, file: !2034, line: 485, baseType: !2254, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_lua_vm_state_t", file: !2034, line: 480, baseType: !2256)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2034, line: 477, size: 128, elements: !2257)
!2257 = !{!2258, !2259}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "vm", scope: !2256, file: !2034, line: 478, baseType: !1933, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2256, file: !2034, line: 479, baseType: !28, size: 64, offset: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2251, file: !2034, line: 487, baseType: !72, size: 64, offset: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "resume_handler", scope: !2251, file: !2034, line: 488, baseType: !1611, size: 64, offset: 128)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "cur_co_ctx", scope: !2251, file: !2034, line: 490, baseType: !2263, size: 64, offset: 192)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_lua_co_ctx_t", file: !2034, line: 403, baseType: !2265)
!2265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_lua_co_ctx_s", file: !2034, line: 418, size: 1600, elements: !2266)
!2266 = !{!2267, !2268, !2269, !2270, !2277, !2278, !2280, !2283, !2284, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2265, file: !2034, line: 419, baseType: !27, size: 64)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "co", scope: !2265, file: !2034, line: 421, baseType: !1933, size: 64, offset: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "parent_co_ctx", scope: !2265, file: !2034, line: 422, baseType: !2263, size: 64, offset: 128)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "zombie_child_threads", scope: !2265, file: !2034, line: 424, baseType: !2271, size: 64, offset: 192)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_http_lua_posted_thread_t", file: !2034, line: 405, baseType: !2273)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_http_lua_posted_thread_s", file: !2034, line: 407, size: 128, elements: !2274)
!2274 = !{!2275, !2276}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "co_ctx", scope: !2273, file: !2034, line: 408, baseType: !2263, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2273, file: !2034, line: 409, baseType: !2271, size: 64, offset: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2265, file: !2034, line: 426, baseType: !1455, size: 64, offset: 256)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "sr_statuses", scope: !2265, file: !2034, line: 428, baseType: !2279, size: 64, offset: 320)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "sr_headers", scope: !2265, file: !2034, line: 430, baseType: !2281, size: 64, offset: 384)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "sr_bodies", scope: !2265, file: !2034, line: 432, baseType: !751, size: 64, offset: 448)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "sr_flags", scope: !2265, file: !2034, line: 434, baseType: !2285, size: 64, offset: 512)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "nsubreqs", scope: !2265, file: !2034, line: 436, baseType: !82, size: 32, offset: 576)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "pending_subreqs", scope: !2265, file: !2034, line: 439, baseType: !82, size: 32, offset: 608)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !2265, file: !2034, line: 442, baseType: !93, size: 768, offset: 640)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "sem_wait_queue", scope: !2265, file: !2034, line: 444, baseType: !195, size: 128, offset: 1408)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "co_ref", scope: !2265, file: !2034, line: 451, baseType: !34, size: 32, offset: 1536)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "waited_by_parent", scope: !2265, file: !2034, line: 458, baseType: !82, size: 1, offset: 1568, flags: DIFlagBitField, extraData: i64 1568)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "co_status", scope: !2265, file: !2034, line: 461, baseType: !82, size: 3, offset: 1569, flags: DIFlagBitField, extraData: i64 1568)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "flushing", scope: !2265, file: !2034, line: 463, baseType: !82, size: 1, offset: 1572, flags: DIFlagBitField, extraData: i64 1568)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "is_uthread", scope: !2265, file: !2034, line: 467, baseType: !82, size: 1, offset: 1573, flags: DIFlagBitField, extraData: i64 1568)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "thread_spawn_yielded", scope: !2265, file: !2034, line: 470, baseType: !82, size: 1, offset: 1574, flags: DIFlagBitField, extraData: i64 1568)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "sem_resume_status", scope: !2265, file: !2034, line: 473, baseType: !82, size: 1, offset: 1575, flags: DIFlagBitField, extraData: i64 1568)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "user_co_ctx", scope: !2251, file: !2034, line: 493, baseType: !2298, size: 64, offset: 256)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "entry_co_ctx", scope: !2251, file: !2034, line: 496, baseType: !2264, size: 1600, offset: 320)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "on_abort_co_ctx", scope: !2251, file: !2034, line: 499, baseType: !2263, size: 64, offset: 1920)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_ref", scope: !2251, file: !2034, line: 502, baseType: !34, size: 32, offset: 1984)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "flushing_coros", scope: !2251, file: !2034, line: 506, baseType: !82, size: 32, offset: 2016)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !2251, file: !2034, line: 509, baseType: !219, size: 64, offset: 2048)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "free_bufs", scope: !2251, file: !2034, line: 510, baseType: !219, size: 64, offset: 2112)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "busy_bufs", scope: !2251, file: !2034, line: 511, baseType: !219, size: 64, offset: 2176)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "free_recv_bufs", scope: !2251, file: !2034, line: 512, baseType: !219, size: 64, offset: 2240)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2251, file: !2034, line: 514, baseType: !1454, size: 64, offset: 2304)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "free_cleanup", scope: !2251, file: !2034, line: 516, baseType: !1826, size: 64, offset: 2368)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !2251, file: !2034, line: 518, baseType: !219, size: 64, offset: 2432)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "last_body", scope: !2251, file: !2034, line: 521, baseType: !802, size: 64, offset: 2496)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "exec_uri", scope: !2251, file: !2034, line: 523, baseType: !147, size: 128, offset: 2560)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "exec_args", scope: !2251, file: !2034, line: 524, baseType: !147, size: 128, offset: 2688)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2251, file: !2034, line: 526, baseType: !28, size: 64, offset: 2816)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "downstream", scope: !2251, file: !2034, line: 528, baseType: !27, size: 64, offset: 2880)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2251, file: !2034, line: 532, baseType: !126, size: 64, offset: 2944)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "posted_threads", scope: !2251, file: !2034, line: 536, baseType: !2271, size: 64, offset: 3008)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "uthreads", scope: !2251, file: !2034, line: 538, baseType: !34, size: 32, offset: 3072)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2251, file: !2034, line: 540, baseType: !429, size: 16, offset: 3104)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "run_post_subrequest", scope: !2251, file: !2034, line: 544, baseType: !82, size: 1, offset: 3120, flags: DIFlagBitField, extraData: i64 3120)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "waiting_more_body", scope: !2251, file: !2034, line: 548, baseType: !82, size: 1, offset: 3121, flags: DIFlagBitField, extraData: i64 3120)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "co_op", scope: !2251, file: !2034, line: 552, baseType: !82, size: 2, offset: 3122, flags: DIFlagBitField, extraData: i64 3120)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "exited", scope: !2251, file: !2034, line: 554, baseType: !82, size: 1, offset: 3124, flags: DIFlagBitField, extraData: i64 3120)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "eof", scope: !2251, file: !2034, line: 556, baseType: !82, size: 1, offset: 3125, flags: DIFlagBitField, extraData: i64 3120)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "capture", scope: !2251, file: !2034, line: 559, baseType: !82, size: 1, offset: 3126, flags: DIFlagBitField, extraData: i64 3120)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "read_body_done", scope: !2251, file: !2034, line: 565, baseType: !82, size: 1, offset: 3127, flags: DIFlagBitField, extraData: i64 3120)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "headers_set", scope: !2251, file: !2034, line: 569, baseType: !82, size: 1, offset: 3128, flags: DIFlagBitField, extraData: i64 3120)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "mime_set", scope: !2251, file: !2034, line: 571, baseType: !82, size: 1, offset: 3129, flags: DIFlagBitField, extraData: i64 3120)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "entered_rewrite_phase", scope: !2251, file: !2034, line: 574, baseType: !82, size: 1, offset: 3130, flags: DIFlagBitField, extraData: i64 3120)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "entered_access_phase", scope: !2251, file: !2034, line: 575, baseType: !82, size: 1, offset: 3131, flags: DIFlagBitField, extraData: i64 3120)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "entered_content_phase", scope: !2251, file: !2034, line: 576, baseType: !82, size: 1, offset: 3132, flags: DIFlagBitField, extraData: i64 3120)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "buffering", scope: !2251, file: !2034, line: 578, baseType: !82, size: 1, offset: 3133, flags: DIFlagBitField, extraData: i64 3120)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "no_abort", scope: !2251, file: !2034, line: 580, baseType: !82, size: 1, offset: 3134, flags: DIFlagBitField, extraData: i64 3120)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "header_sent", scope: !2251, file: !2034, line: 583, baseType: !82, size: 1, offset: 3135, flags: DIFlagBitField, extraData: i64 3120)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "seen_last_in_filter", scope: !2251, file: !2034, line: 590, baseType: !82, size: 1, offset: 3136, flags: DIFlagBitField, extraData: i64 3120)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "seen_last_for_subreq", scope: !2251, file: !2034, line: 591, baseType: !82, size: 1, offset: 3137, flags: DIFlagBitField, extraData: i64 3120)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "writing_raw_req_socket", scope: !2251, file: !2034, line: 592, baseType: !82, size: 1, offset: 3138, flags: DIFlagBitField, extraData: i64 3120)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_raw_req_socket", scope: !2251, file: !2034, line: 594, baseType: !82, size: 1, offset: 3139, flags: DIFlagBitField, extraData: i64 3120)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "seen_body_data", scope: !2251, file: !2034, line: 596, baseType: !82, size: 1, offset: 3140, flags: DIFlagBitField, extraData: i64 3120)
!2339 = !{!2340, !2341, !2342}
!2340 = !DILocalVariable(name: "r", arg: 1, scope: !2246, file: !63, line: 325, type: !72)
!2341 = !DILocalVariable(name: "ctx", arg: 2, scope: !2246, file: !63, line: 325, type: !2249)
!2342 = !DILocalVariable(name: "lmcf", scope: !2246, file: !63, line: 327, type: !2032)
!2343 = !DILocation(line: 325, column: 45, scope: !2246)
!2344 = !DILocation(line: 325, column: 68, scope: !2246)
!2345 = !DILocation(line: 327, column: 5, scope: !2246)
!2346 = !DILocation(line: 327, column: 34, scope: !2246)
!2347 = !DILocation(line: 329, column: 9, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2246, file: !63, line: 329, column: 9)
!2349 = !DILocation(line: 329, column: 13, scope: !2348)
!2350 = !DILocation(line: 329, column: 9, scope: !2246)
!2351 = !DILocation(line: 330, column: 15, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2348, file: !63, line: 329, column: 22)
!2353 = !{!1990, !1945, i64 16}
!2354 = !DILocation(line: 330, column: 13, scope: !2352)
!2355 = !DILocation(line: 331, column: 5, scope: !2352)
!2356 = !DILocation(line: 333, column: 9, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2246, file: !63, line: 333, column: 9)
!2358 = !DILocation(line: 333, column: 13, scope: !2357)
!2359 = !DILocation(line: 333, column: 16, scope: !2357)
!2360 = !DILocation(line: 333, column: 21, scope: !2357)
!2361 = !{!2362, !1945, i64 0}
!2362 = !{!"ngx_http_lua_ctx_s", !1945, i64 0, !1945, i64 8, !1945, i64 16, !1945, i64 24, !1945, i64 32, !2363, i64 40, !1945, i64 240, !1991, i64 248, !1991, i64 252, !1945, i64 256, !1945, i64 264, !1945, i64 272, !1945, i64 280, !1945, i64 288, !1945, i64 296, !1945, i64 304, !1945, i64 312, !1996, i64 320, !1996, i64 336, !1968, i64 352, !1945, i64 360, !1968, i64 368, !1945, i64 376, !1991, i64 384, !2000, i64 388, !1991, i64 390, !1991, i64 390, !1991, i64 390, !1991, i64 390, !1991, i64 390, !1991, i64 390, !1991, i64 390, !1991, i64 391, !1991, i64 391, !1991, i64 391, !1991, i64 391, !1991, i64 391, !1991, i64 391, !1991, i64 391, !1991, i64 391, !1991, i64 392, !1991, i64 392, !1991, i64 392, !1991, i64 392, !1991, i64 392}
!2363 = !{!"ngx_http_lua_co_ctx_s", !1945, i64 0, !1945, i64 8, !1945, i64 16, !1945, i64 24, !1945, i64 32, !1945, i64 40, !1945, i64 48, !1945, i64 56, !1945, i64 64, !1991, i64 72, !1991, i64 76, !2364, i64 80, !2001, i64 176, !1991, i64 192, !1991, i64 196, !1991, i64 196, !1991, i64 196, !1991, i64 196, !1991, i64 196, !1991, i64 196}
!2364 = !{!"ngx_event_s", !1945, i64 0, !1991, i64 8, !1991, i64 8, !1991, i64 8, !1991, i64 8, !1991, i64 8, !1991, i64 8, !1991, i64 8, !1991, i64 8, !1991, i64 9, !1991, i64 9, !1991, i64 9, !1991, i64 9, !1991, i64 9, !1991, i64 9, !1991, i64 9, !1991, i64 9, !1991, i64 10, !1991, i64 10, !1991, i64 10, !1991, i64 10, !1991, i64 10, !1991, i64 10, !1945, i64 16, !1968, i64 24, !1945, i64 32, !2365, i64 40, !2001, i64 80}
!2365 = !{!"ngx_rbtree_node_s", !1968, i64 0, !1945, i64 8, !1945, i64 16, !1945, i64 24, !1946, i64 32, !1946, i64 33}
!2366 = !DILocation(line: 333, column: 9, scope: !2246)
!2367 = !DILocation(line: 334, column: 16, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2357, file: !63, line: 333, column: 31)
!2369 = !DILocation(line: 334, column: 21, scope: !2368)
!2370 = !DILocation(line: 334, column: 31, scope: !2368)
!2371 = !{!2372, !1945, i64 0}
!2372 = !{!"", !1945, i64 0, !1968, i64 8}
!2373 = !DILocation(line: 334, column: 9, scope: !2368)
!2374 = !DILocation(line: 337, column: 12, scope: !2246)
!2375 = !DILocation(line: 337, column: 10, scope: !2246)
!2376 = !DILocation(line: 343, column: 12, scope: !2246)
!2377 = !DILocation(line: 343, column: 18, scope: !2246)
!2378 = !{!2107, !1945, i64 0}
!2379 = !DILocation(line: 343, column: 5, scope: !2246)
!2380 = !DILocation(line: 344, column: 1, scope: !2246)
!2381 = !DISubprogram(name: "ngx_http_lua_cache_loadbuffer", scope: !2382, file: !2382, line: 15, type: !2383, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2382 = !DIFile(filename: "../ngx_lua-0.10.15/src/ngx_http_lua_cache.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "b3b505c453ea00f183475af81038edb2")
!2383 = !DISubroutineType(types: !2384)
!2384 = !{!28, !131, !1933, !2385, !152, !2385, !958}
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!2387 = distinct !DISubprogram(name: "ngx_http_lua_body_filter_file", scope: !2, file: !2, line: 184, type: !70, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !2388)
!2388 = !{!2389, !2390, !2391, !2392, !2393, !2394, !2395}
!2389 = !DILocalVariable(name: "r", arg: 1, scope: !2387, file: !2, line: 184, type: !72)
!2390 = !DILocalVariable(name: "in", arg: 2, scope: !2387, file: !2, line: 184, type: !219)
!2391 = !DILocalVariable(name: "L", scope: !2387, file: !2, line: 186, type: !1933)
!2392 = !DILocalVariable(name: "rc", scope: !2387, file: !2, line: 187, type: !28)
!2393 = !DILocalVariable(name: "script_path", scope: !2387, file: !2, line: 188, type: !21)
!2394 = !DILocalVariable(name: "llcf", scope: !2387, file: !2, line: 189, type: !2146)
!2395 = !DILocalVariable(name: "eval_src", scope: !2387, file: !2, line: 190, type: !147)
!2396 = !DILocation(line: 184, column: 51, scope: !2387)
!2397 = !DILocation(line: 184, column: 67, scope: !2387)
!2398 = !DILocation(line: 186, column: 5, scope: !2387)
!2399 = !DILocation(line: 186, column: 38, scope: !2387)
!2400 = !DILocation(line: 187, column: 5, scope: !2387)
!2401 = !DILocation(line: 187, column: 38, scope: !2387)
!2402 = !DILocation(line: 188, column: 5, scope: !2387)
!2403 = !DILocation(line: 188, column: 38, scope: !2387)
!2404 = !DILocation(line: 189, column: 5, scope: !2387)
!2405 = !DILocation(line: 189, column: 38, scope: !2387)
!2406 = !DILocation(line: 190, column: 5, scope: !2387)
!2407 = !DILocation(line: 190, column: 38, scope: !2387)
!2408 = !DILocation(line: 192, column: 12, scope: !2387)
!2409 = !DILocation(line: 192, column: 10, scope: !2387)
!2410 = !DILocation(line: 195, column: 32, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2387, file: !2, line: 195, column: 9)
!2412 = !DILocation(line: 195, column: 36, scope: !2411)
!2413 = !DILocation(line: 195, column: 42, scope: !2411)
!2414 = !DILocation(line: 195, column: 9, scope: !2411)
!2415 = !DILocation(line: 196, column: 9, scope: !2411)
!2416 = !DILocation(line: 195, column: 9, scope: !2387)
!2417 = !DILocation(line: 198, column: 9, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2411, file: !2, line: 197, column: 5)
!2419 = !DILocation(line: 201, column: 44, scope: !2387)
!2420 = !DILocation(line: 201, column: 47, scope: !2387)
!2421 = !{!1990, !1945, i64 88}
!2422 = !DILocation(line: 201, column: 62, scope: !2387)
!2423 = !{!1996, !1945, i64 8}
!2424 = !DILocation(line: 202, column: 53, scope: !2387)
!2425 = !{!1996, !1968, i64 0}
!2426 = !DILocation(line: 201, column: 19, scope: !2387)
!2427 = !DILocation(line: 201, column: 17, scope: !2387)
!2428 = !DILocation(line: 204, column: 9, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2387, file: !2, line: 204, column: 9)
!2430 = !DILocation(line: 204, column: 21, scope: !2429)
!2431 = !DILocation(line: 204, column: 9, scope: !2387)
!2432 = !DILocation(line: 205, column: 9, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2429, file: !2, line: 204, column: 30)
!2434 = !DILocation(line: 208, column: 33, scope: !2387)
!2435 = !DILocation(line: 208, column: 9, scope: !2387)
!2436 = !DILocation(line: 208, column: 7, scope: !2387)
!2437 = !DILocation(line: 211, column: 38, scope: !2387)
!2438 = !DILocation(line: 211, column: 41, scope: !2387)
!2439 = !DILocation(line: 211, column: 53, scope: !2387)
!2440 = !DILocation(line: 211, column: 58, scope: !2387)
!2441 = !DILocation(line: 211, column: 61, scope: !2387)
!2442 = !DILocation(line: 212, column: 38, scope: !2387)
!2443 = !DILocation(line: 212, column: 44, scope: !2387)
!2444 = !DILocation(line: 211, column: 10, scope: !2387)
!2445 = !DILocation(line: 211, column: 8, scope: !2387)
!2446 = !DILocation(line: 213, column: 9, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2387, file: !2, line: 213, column: 9)
!2448 = !DILocation(line: 213, column: 12, scope: !2447)
!2449 = !DILocation(line: 213, column: 9, scope: !2387)
!2450 = !DILocation(line: 214, column: 9, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2447, file: !2, line: 213, column: 23)
!2452 = !DILocation(line: 220, column: 44, scope: !2387)
!2453 = !DILocation(line: 220, column: 47, scope: !2387)
!2454 = !DILocation(line: 220, column: 50, scope: !2387)
!2455 = !DILocation(line: 220, column: 10, scope: !2387)
!2456 = !DILocation(line: 220, column: 8, scope: !2387)
!2457 = !DILocation(line: 222, column: 9, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2387, file: !2, line: 222, column: 9)
!2459 = !DILocation(line: 222, column: 12, scope: !2458)
!2460 = !DILocation(line: 222, column: 9, scope: !2387)
!2461 = !DILocation(line: 223, column: 9, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2458, file: !2, line: 222, column: 23)
!2463 = !DILocation(line: 226, column: 5, scope: !2387)
!2464 = !DILocation(line: 227, column: 1, scope: !2387)
!2465 = !DISubprogram(name: "ngx_http_complex_value", scope: !1136, file: !1136, line: 208, type: !2466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!28, !72, !1134, !751}
!2468 = !DISubprogram(name: "ngx_http_lua_rebase_path", scope: !63, file: !63, line: 146, type: !2469, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2469 = !DISubroutineType(types: !2470)
!2470 = !{!21, !385, !21, !152}
!2471 = !DISubprogram(name: "ngx_http_lua_cache_loadfile", scope: !2382, file: !2382, line: 18, type: !2472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{!28, !131, !1933, !2385, !2385}
!2474 = distinct !DISubprogram(name: "ngx_http_lua_body_filter_init", scope: !2, file: !2, line: 333, type: !2475, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!28}
!2477 = !DILocation(line: 336, column: 33, scope: !2474)
!2478 = !DILocation(line: 336, column: 31, scope: !2474)
!2479 = !DILocation(line: 337, column: 30, scope: !2474)
!2480 = !DILocation(line: 339, column: 5, scope: !2474)
!2481 = distinct !DISubprogram(name: "ngx_http_lua_body_filter", scope: !2, file: !2, line: 231, type: !70, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !2482)
!2482 = !{!2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491}
!2483 = !DILocalVariable(name: "r", arg: 1, scope: !2481, file: !2, line: 231, type: !72)
!2484 = !DILocalVariable(name: "in", arg: 2, scope: !2481, file: !2, line: 231, type: !219)
!2485 = !DILocalVariable(name: "llcf", scope: !2481, file: !2, line: 233, type: !2146)
!2486 = !DILocalVariable(name: "ctx", scope: !2481, file: !2, line: 234, type: !2249)
!2487 = !DILocalVariable(name: "rc", scope: !2481, file: !2, line: 235, type: !28)
!2488 = !DILocalVariable(name: "old_context", scope: !2481, file: !2, line: 236, type: !429)
!2489 = !DILocalVariable(name: "cln", scope: !2481, file: !2, line: 237, type: !1826)
!2490 = !DILocalVariable(name: "out", scope: !2481, file: !2, line: 238, type: !219)
!2491 = !DILocalVariable(name: "lmcf", scope: !2481, file: !2, line: 239, type: !2032)
!2492 = !DILocation(line: 231, column: 46, scope: !2481)
!2493 = !DILocation(line: 231, column: 62, scope: !2481)
!2494 = !DILocation(line: 233, column: 5, scope: !2481)
!2495 = !DILocation(line: 233, column: 34, scope: !2481)
!2496 = !DILocation(line: 234, column: 5, scope: !2481)
!2497 = !DILocation(line: 234, column: 34, scope: !2481)
!2498 = !DILocation(line: 235, column: 5, scope: !2481)
!2499 = !DILocation(line: 235, column: 34, scope: !2481)
!2500 = !DILocation(line: 236, column: 5, scope: !2481)
!2501 = !DILocation(line: 236, column: 34, scope: !2481)
!2502 = !DILocation(line: 237, column: 5, scope: !2481)
!2503 = !DILocation(line: 237, column: 34, scope: !2481)
!2504 = !DILocation(line: 238, column: 5, scope: !2481)
!2505 = !DILocation(line: 238, column: 34, scope: !2481)
!2506 = !DILocation(line: 239, column: 5, scope: !2481)
!2507 = !DILocation(line: 239, column: 34, scope: !2481)
!2508 = !DILocation(line: 244, column: 9, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2481, file: !2, line: 244, column: 9)
!2510 = !DILocation(line: 244, column: 12, scope: !2509)
!2511 = !DILocation(line: 244, column: 9, scope: !2481)
!2512 = !DILocation(line: 245, column: 16, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2509, file: !2, line: 244, column: 21)
!2514 = !DILocation(line: 245, column: 42, scope: !2513)
!2515 = !DILocation(line: 245, column: 45, scope: !2513)
!2516 = !DILocation(line: 245, column: 9, scope: !2513)
!2517 = !DILocation(line: 248, column: 12, scope: !2481)
!2518 = !DILocation(line: 248, column: 10, scope: !2481)
!2519 = !DILocation(line: 250, column: 9, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2481, file: !2, line: 250, column: 9)
!2521 = !DILocation(line: 250, column: 15, scope: !2520)
!2522 = !{!2215, !1945, i64 136}
!2523 = !DILocation(line: 250, column: 35, scope: !2520)
!2524 = !DILocation(line: 250, column: 9, scope: !2481)
!2525 = !DILocation(line: 252, column: 16, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2520, file: !2, line: 250, column: 44)
!2527 = !DILocation(line: 252, column: 42, scope: !2526)
!2528 = !DILocation(line: 252, column: 45, scope: !2526)
!2529 = !DILocation(line: 252, column: 9, scope: !2526)
!2530 = !DILocation(line: 255, column: 11, scope: !2481)
!2531 = !DILocation(line: 255, column: 9, scope: !2481)
!2532 = !DILocation(line: 259, column: 9, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2481, file: !2, line: 259, column: 9)
!2534 = !DILocation(line: 259, column: 13, scope: !2533)
!2535 = !DILocation(line: 259, column: 9, scope: !2481)
!2536 = !DILocation(line: 260, column: 39, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2533, file: !2, line: 259, column: 22)
!2538 = !DILocation(line: 260, column: 15, scope: !2537)
!2539 = !DILocation(line: 260, column: 13, scope: !2537)
!2540 = !DILocation(line: 261, column: 13, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2537, file: !2, line: 261, column: 13)
!2542 = !DILocation(line: 261, column: 17, scope: !2541)
!2543 = !DILocation(line: 261, column: 13, scope: !2537)
!2544 = !DILocation(line: 262, column: 13, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2541, file: !2, line: 261, column: 26)
!2546 = !DILocation(line: 264, column: 5, scope: !2537)
!2547 = !DILocation(line: 266, column: 9, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2481, file: !2, line: 266, column: 9)
!2549 = !DILocation(line: 266, column: 14, scope: !2548)
!2550 = !DILocation(line: 266, column: 9, scope: !2481)
!2551 = !DILocation(line: 267, column: 9, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2548, file: !2, line: 266, column: 35)
!2553 = !DILocation(line: 267, column: 26, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2555, file: !2, line: 267, column: 9)
!2555 = distinct !DILexicalBlock(scope: !2552, file: !2, line: 267, column: 9)
!2556 = !DILocation(line: 267, column: 9, scope: !2555)
!2557 = !DILocation(line: 269, column: 28, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2554, file: !2, line: 267, column: 45)
!2559 = !DILocation(line: 269, column: 32, scope: !2558)
!2560 = !{!2561, !1945, i64 0}
!2561 = !{!"ngx_chain_s", !1945, i64 0, !1945, i64 8}
!2562 = !DILocation(line: 269, column: 37, scope: !2558)
!2563 = !{!2564, !1945, i64 8}
!2564 = !{!"ngx_buf_s", !1945, i64 0, !1945, i64 8, !1968, i64 16, !1968, i64 24, !1945, i64 32, !1945, i64 40, !1945, i64 48, !1945, i64 56, !1945, i64 64, !1991, i64 72, !1991, i64 72, !1991, i64 72, !1991, i64 72, !1991, i64 72, !1991, i64 72, !1991, i64 72, !1991, i64 72, !1991, i64 73, !1991, i64 73, !1991, i64 73, !1991, i64 76}
!2565 = !DILocation(line: 269, column: 13, scope: !2558)
!2566 = !DILocation(line: 269, column: 17, scope: !2558)
!2567 = !DILocation(line: 269, column: 22, scope: !2558)
!2568 = !DILocation(line: 269, column: 26, scope: !2558)
!2569 = !{!2564, !1945, i64 0}
!2570 = !DILocation(line: 270, column: 33, scope: !2558)
!2571 = !DILocation(line: 270, column: 37, scope: !2558)
!2572 = !DILocation(line: 270, column: 42, scope: !2558)
!2573 = !{!2564, !1968, i64 24}
!2574 = !DILocation(line: 270, column: 13, scope: !2558)
!2575 = !DILocation(line: 270, column: 17, scope: !2558)
!2576 = !DILocation(line: 270, column: 22, scope: !2558)
!2577 = !DILocation(line: 270, column: 31, scope: !2558)
!2578 = !{!2564, !1968, i64 16}
!2579 = !DILocation(line: 271, column: 9, scope: !2558)
!2580 = !DILocation(line: 267, column: 35, scope: !2554)
!2581 = !DILocation(line: 267, column: 39, scope: !2554)
!2582 = !{!2561, !1945, i64 8}
!2583 = !DILocation(line: 267, column: 33, scope: !2554)
!2584 = !DILocation(line: 267, column: 9, scope: !2554)
!2585 = distinct !{!2585, !2556, !2586, !2587}
!2586 = !DILocation(line: 271, column: 9, scope: !2555)
!2587 = !{!"llvm.loop.mustprogress"}
!2588 = !DILocation(line: 273, column: 9, scope: !2552)
!2589 = !DILocation(line: 276, column: 9, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2481, file: !2, line: 276, column: 9)
!2591 = !DILocation(line: 276, column: 14, scope: !2590)
!2592 = !{!2362, !1945, i64 288}
!2593 = !DILocation(line: 276, column: 22, scope: !2590)
!2594 = !DILocation(line: 276, column: 9, scope: !2481)
!2595 = !DILocation(line: 277, column: 36, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2590, file: !2, line: 276, column: 31)
!2597 = !DILocation(line: 277, column: 15, scope: !2596)
!2598 = !DILocation(line: 277, column: 13, scope: !2596)
!2599 = !DILocation(line: 278, column: 13, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2596, file: !2, line: 278, column: 13)
!2601 = !DILocation(line: 278, column: 17, scope: !2600)
!2602 = !DILocation(line: 278, column: 13, scope: !2596)
!2603 = !DILocation(line: 279, column: 13, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2600, file: !2, line: 278, column: 26)
!2605 = !DILocation(line: 282, column: 9, scope: !2596)
!2606 = !DILocation(line: 282, column: 14, scope: !2596)
!2607 = !DILocation(line: 282, column: 22, scope: !2596)
!2608 = !{!2609, !1945, i64 0}
!2609 = !{!"ngx_http_cleanup_s", !1945, i64 0, !1945, i64 8, !1945, i64 16}
!2610 = !DILocation(line: 283, column: 21, scope: !2596)
!2611 = !DILocation(line: 283, column: 9, scope: !2596)
!2612 = !DILocation(line: 283, column: 14, scope: !2596)
!2613 = !DILocation(line: 283, column: 19, scope: !2596)
!2614 = !{!2609, !1945, i64 8}
!2615 = !DILocation(line: 284, column: 25, scope: !2596)
!2616 = !DILocation(line: 284, column: 30, scope: !2596)
!2617 = !DILocation(line: 284, column: 9, scope: !2596)
!2618 = !DILocation(line: 284, column: 14, scope: !2596)
!2619 = !DILocation(line: 284, column: 22, scope: !2596)
!2620 = !DILocation(line: 285, column: 5, scope: !2596)
!2621 = !DILocation(line: 287, column: 19, scope: !2481)
!2622 = !DILocation(line: 287, column: 24, scope: !2481)
!2623 = !{!2362, !2000, i64 388}
!2624 = !DILocation(line: 287, column: 17, scope: !2481)
!2625 = !{!2000, !2000, i64 0}
!2626 = !DILocation(line: 288, column: 5, scope: !2481)
!2627 = !DILocation(line: 288, column: 10, scope: !2481)
!2628 = !DILocation(line: 288, column: 18, scope: !2481)
!2629 = !DILocation(line: 291, column: 10, scope: !2481)
!2630 = !DILocation(line: 291, column: 16, scope: !2481)
!2631 = !DILocation(line: 291, column: 36, scope: !2481)
!2632 = !DILocation(line: 291, column: 39, scope: !2481)
!2633 = !DILocation(line: 291, column: 8, scope: !2481)
!2634 = !DILocation(line: 295, column: 20, scope: !2481)
!2635 = !DILocation(line: 295, column: 5, scope: !2481)
!2636 = !DILocation(line: 295, column: 10, scope: !2481)
!2637 = !DILocation(line: 295, column: 18, scope: !2481)
!2638 = !DILocation(line: 297, column: 9, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2481, file: !2, line: 297, column: 9)
!2640 = !DILocation(line: 297, column: 12, scope: !2639)
!2641 = !DILocation(line: 297, column: 9, scope: !2481)
!2642 = !DILocation(line: 298, column: 9, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2639, file: !2, line: 297, column: 23)
!2644 = !DILocation(line: 301, column: 12, scope: !2481)
!2645 = !DILocation(line: 301, column: 10, scope: !2481)
!2646 = !DILocation(line: 302, column: 11, scope: !2481)
!2647 = !DILocation(line: 302, column: 17, scope: !2481)
!2648 = !DILocation(line: 302, column: 9, scope: !2481)
!2649 = !DILocation(line: 304, column: 9, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2481, file: !2, line: 304, column: 9)
!2651 = !DILocation(line: 304, column: 15, scope: !2650)
!2652 = !DILocation(line: 304, column: 12, scope: !2650)
!2653 = !DILocation(line: 304, column: 9, scope: !2481)
!2654 = !DILocation(line: 305, column: 16, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2650, file: !2, line: 304, column: 20)
!2656 = !DILocation(line: 305, column: 42, scope: !2655)
!2657 = !DILocation(line: 305, column: 45, scope: !2655)
!2658 = !DILocation(line: 305, column: 9, scope: !2655)
!2659 = !DILocation(line: 308, column: 9, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2481, file: !2, line: 308, column: 9)
!2661 = !DILocation(line: 308, column: 13, scope: !2660)
!2662 = !DILocation(line: 308, column: 9, scope: !2481)
!2663 = !DILocation(line: 311, column: 9, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2660, file: !2, line: 308, column: 22)
!2665 = !DILocation(line: 315, column: 10, scope: !2481)
!2666 = !DILocation(line: 315, column: 36, scope: !2481)
!2667 = !DILocation(line: 315, column: 39, scope: !2481)
!2668 = !DILocation(line: 315, column: 8, scope: !2481)
!2669 = !DILocation(line: 316, column: 9, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2481, file: !2, line: 316, column: 9)
!2671 = !DILocation(line: 316, column: 12, scope: !2670)
!2672 = !DILocation(line: 316, column: 9, scope: !2481)
!2673 = !DILocation(line: 317, column: 9, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2670, file: !2, line: 316, column: 26)
!2675 = !DILocation(line: 321, column: 29, scope: !2481)
!2676 = !DILocation(line: 321, column: 32, scope: !2481)
!2677 = !DILocation(line: 325, column: 30, scope: !2481)
!2678 = !DILocation(line: 325, column: 35, scope: !2481)
!2679 = !DILocation(line: 325, column: 47, scope: !2481)
!2680 = !DILocation(line: 325, column: 52, scope: !2481)
!2681 = !DILocation(line: 321, column: 5, scope: !2481)
!2682 = !DILocation(line: 328, column: 12, scope: !2481)
!2683 = !DILocation(line: 328, column: 5, scope: !2481)
!2684 = !DILocation(line: 329, column: 1, scope: !2481)
!2685 = distinct !DISubprogram(name: "ngx_http_lua_body_filter_param_get", scope: !2, file: !2, line: 344, type: !2686, scopeLine: 345, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !2688)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{!34, !1933, !72}
!2688 = !{!2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698}
!2689 = !DILocalVariable(name: "L", arg: 1, scope: !2685, file: !2, line: 344, type: !1933)
!2690 = !DILocalVariable(name: "r", arg: 2, scope: !2685, file: !2, line: 344, type: !72)
!2691 = !DILocalVariable(name: "data", scope: !2685, file: !2, line: 346, type: !21)
!2692 = !DILocalVariable(name: "p", scope: !2685, file: !2, line: 346, type: !21)
!2693 = !DILocalVariable(name: "size", scope: !2685, file: !2, line: 347, type: !152)
!2694 = !DILocalVariable(name: "cl", scope: !2685, file: !2, line: 348, type: !219)
!2695 = !DILocalVariable(name: "b", scope: !2685, file: !2, line: 349, type: !224)
!2696 = !DILocalVariable(name: "idx", scope: !2685, file: !2, line: 350, type: !34)
!2697 = !DILocalVariable(name: "in", scope: !2685, file: !2, line: 351, type: !219)
!2698 = !DILocalVariable(name: "lmcf", scope: !2685, file: !2, line: 353, type: !2032)
!2699 = !DILocation(line: 344, column: 47, scope: !2685)
!2700 = !DILocation(line: 344, column: 70, scope: !2685)
!2701 = !DILocation(line: 346, column: 5, scope: !2685)
!2702 = !DILocation(line: 346, column: 26, scope: !2685)
!2703 = !DILocation(line: 346, column: 33, scope: !2685)
!2704 = !DILocation(line: 347, column: 5, scope: !2685)
!2705 = !DILocation(line: 347, column: 26, scope: !2685)
!2706 = !DILocation(line: 348, column: 5, scope: !2685)
!2707 = !DILocation(line: 348, column: 26, scope: !2685)
!2708 = !DILocation(line: 349, column: 5, scope: !2685)
!2709 = !DILocation(line: 349, column: 26, scope: !2685)
!2710 = !DILocation(line: 350, column: 5, scope: !2685)
!2711 = !DILocation(line: 350, column: 26, scope: !2685)
!2712 = !DILocation(line: 351, column: 5, scope: !2685)
!2713 = !DILocation(line: 351, column: 26, scope: !2685)
!2714 = !DILocation(line: 353, column: 5, scope: !2685)
!2715 = !DILocation(line: 353, column: 34, scope: !2685)
!2716 = !DILocation(line: 355, column: 11, scope: !2685)
!2717 = !DILocation(line: 355, column: 9, scope: !2685)
!2718 = !{!1991, !1991, i64 0}
!2719 = !DILocation(line: 359, column: 9, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2685, file: !2, line: 359, column: 9)
!2721 = !DILocation(line: 359, column: 13, scope: !2720)
!2722 = !DILocation(line: 359, column: 18, scope: !2720)
!2723 = !DILocation(line: 359, column: 21, scope: !2720)
!2724 = !DILocation(line: 359, column: 25, scope: !2720)
!2725 = !DILocation(line: 359, column: 9, scope: !2685)
!2726 = !DILocation(line: 360, column: 21, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2720, file: !2, line: 359, column: 31)
!2728 = !DILocation(line: 360, column: 9, scope: !2727)
!2729 = !DILocation(line: 361, column: 9, scope: !2727)
!2730 = !DILocation(line: 364, column: 12, scope: !2685)
!2731 = !DILocation(line: 364, column: 10, scope: !2685)
!2732 = !DILocation(line: 365, column: 10, scope: !2685)
!2733 = !DILocation(line: 365, column: 16, scope: !2685)
!2734 = !DILocation(line: 365, column: 8, scope: !2685)
!2735 = !DILocation(line: 367, column: 9, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2685, file: !2, line: 367, column: 9)
!2737 = !DILocation(line: 367, column: 13, scope: !2736)
!2738 = !DILocation(line: 367, column: 9, scope: !2685)
!2739 = !DILocation(line: 370, column: 19, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2741, file: !2, line: 370, column: 9)
!2741 = distinct !DILexicalBlock(scope: !2736, file: !2, line: 367, column: 19)
!2742 = !DILocation(line: 370, column: 17, scope: !2740)
!2743 = !DILocation(line: 370, column: 14, scope: !2740)
!2744 = !DILocation(line: 370, column: 23, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2740, file: !2, line: 370, column: 9)
!2746 = !DILocation(line: 370, column: 9, scope: !2740)
!2747 = !DILocation(line: 371, column: 17, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2749, file: !2, line: 371, column: 17)
!2749 = distinct !DILexicalBlock(scope: !2745, file: !2, line: 370, column: 42)
!2750 = !DILocation(line: 371, column: 21, scope: !2748)
!2751 = !DILocation(line: 371, column: 26, scope: !2748)
!2752 = !DILocation(line: 371, column: 35, scope: !2748)
!2753 = !DILocation(line: 371, column: 38, scope: !2748)
!2754 = !DILocation(line: 371, column: 42, scope: !2748)
!2755 = !DILocation(line: 371, column: 47, scope: !2748)
!2756 = !DILocation(line: 371, column: 17, scope: !2749)
!2757 = !DILocation(line: 372, column: 33, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2748, file: !2, line: 371, column: 62)
!2759 = !DILocation(line: 372, column: 17, scope: !2758)
!2760 = !DILocation(line: 373, column: 17, scope: !2758)
!2761 = !DILocation(line: 375, column: 9, scope: !2749)
!2762 = !DILocation(line: 370, column: 32, scope: !2745)
!2763 = !DILocation(line: 370, column: 36, scope: !2745)
!2764 = !DILocation(line: 370, column: 30, scope: !2745)
!2765 = !DILocation(line: 370, column: 9, scope: !2745)
!2766 = distinct !{!2766, !2746, !2767, !2587}
!2767 = !DILocation(line: 375, column: 9, scope: !2740)
!2768 = !DILocation(line: 377, column: 25, scope: !2741)
!2769 = !DILocation(line: 377, column: 9, scope: !2741)
!2770 = !DILocation(line: 378, column: 9, scope: !2741)
!2771 = !DILocation(line: 383, column: 10, scope: !2685)
!2772 = !DILocation(line: 385, column: 9, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2685, file: !2, line: 385, column: 9)
!2774 = !DILocation(line: 385, column: 12, scope: !2773)
!2775 = !DILocation(line: 385, column: 9, scope: !2685)
!2776 = !DILocation(line: 387, column: 9, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2773, file: !2, line: 385, column: 21)
!2778 = !DILocation(line: 388, column: 9, scope: !2777)
!2779 = !DILocation(line: 391, column: 9, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2685, file: !2, line: 391, column: 9)
!2781 = !DILocation(line: 391, column: 13, scope: !2780)
!2782 = !DILocation(line: 391, column: 18, scope: !2780)
!2783 = !DILocation(line: 391, column: 9, scope: !2685)
!2784 = !DILocation(line: 395, column: 13, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2780, file: !2, line: 391, column: 27)
!2786 = !DILocation(line: 395, column: 17, scope: !2785)
!2787 = !DILocation(line: 395, column: 11, scope: !2785)
!2788 = !DILocation(line: 396, column: 25, scope: !2785)
!2789 = !DILocation(line: 396, column: 37, scope: !2785)
!2790 = !DILocation(line: 396, column: 40, scope: !2785)
!2791 = !DILocation(line: 396, column: 45, scope: !2785)
!2792 = !DILocation(line: 396, column: 48, scope: !2785)
!2793 = !DILocation(line: 396, column: 55, scope: !2785)
!2794 = !DILocation(line: 396, column: 58, scope: !2785)
!2795 = !DILocation(line: 396, column: 53, scope: !2785)
!2796 = !DILocation(line: 396, column: 9, scope: !2785)
!2797 = !DILocation(line: 397, column: 9, scope: !2785)
!2798 = !DILocation(line: 402, column: 15, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2685, file: !2, line: 402, column: 5)
!2800 = !DILocation(line: 402, column: 13, scope: !2799)
!2801 = !DILocation(line: 402, column: 10, scope: !2799)
!2802 = !DILocation(line: 402, column: 19, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2799, file: !2, line: 402, column: 5)
!2804 = !DILocation(line: 402, column: 5, scope: !2799)
!2805 = !DILocation(line: 403, column: 13, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2803, file: !2, line: 402, column: 38)
!2807 = !DILocation(line: 403, column: 17, scope: !2806)
!2808 = !DILocation(line: 403, column: 11, scope: !2806)
!2809 = !DILocation(line: 405, column: 17, scope: !2806)
!2810 = !DILocation(line: 405, column: 20, scope: !2806)
!2811 = !DILocation(line: 405, column: 27, scope: !2806)
!2812 = !DILocation(line: 405, column: 30, scope: !2806)
!2813 = !DILocation(line: 405, column: 25, scope: !2806)
!2814 = !DILocation(line: 405, column: 14, scope: !2806)
!2815 = !DILocation(line: 407, column: 13, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2806, file: !2, line: 407, column: 13)
!2817 = !DILocation(line: 407, column: 16, scope: !2816)
!2818 = !DILocation(line: 407, column: 25, scope: !2816)
!2819 = !DILocation(line: 407, column: 28, scope: !2816)
!2820 = !DILocation(line: 407, column: 31, scope: !2816)
!2821 = !DILocation(line: 407, column: 13, scope: !2806)
!2822 = !DILocation(line: 408, column: 13, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2816, file: !2, line: 407, column: 46)
!2824 = !DILocation(line: 410, column: 5, scope: !2806)
!2825 = !DILocation(line: 402, column: 28, scope: !2803)
!2826 = !DILocation(line: 402, column: 32, scope: !2803)
!2827 = !DILocation(line: 402, column: 26, scope: !2803)
!2828 = !DILocation(line: 402, column: 5, scope: !2803)
!2829 = distinct !{!2829, !2804, !2830, !2587}
!2830 = !DILocation(line: 410, column: 5, scope: !2799)
!2831 = !DILocation(line: 412, column: 39, scope: !2685)
!2832 = !DILocation(line: 412, column: 42, scope: !2685)
!2833 = !DILocation(line: 412, column: 23, scope: !2685)
!2834 = !DILocation(line: 412, column: 10, scope: !2685)
!2835 = !DILocation(line: 414, column: 14, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2685, file: !2, line: 414, column: 5)
!2837 = !DILocation(line: 414, column: 12, scope: !2836)
!2838 = !DILocation(line: 414, column: 25, scope: !2836)
!2839 = !DILocation(line: 414, column: 23, scope: !2836)
!2840 = !DILocation(line: 414, column: 10, scope: !2836)
!2841 = !DILocation(line: 414, column: 29, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2836, file: !2, line: 414, column: 5)
!2843 = !DILocation(line: 414, column: 5, scope: !2836)
!2844 = !DILocation(line: 415, column: 13, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2842, file: !2, line: 414, column: 48)
!2846 = !DILocation(line: 415, column: 17, scope: !2845)
!2847 = !DILocation(line: 415, column: 11, scope: !2845)
!2848 = !DILocation(line: 416, column: 13, scope: !2845)
!2849 = !DILocation(line: 416, column: 11, scope: !2845)
!2850 = !DILocation(line: 418, column: 13, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2845, file: !2, line: 418, column: 13)
!2852 = !DILocation(line: 418, column: 16, scope: !2851)
!2853 = !DILocation(line: 418, column: 25, scope: !2851)
!2854 = !DILocation(line: 418, column: 28, scope: !2851)
!2855 = !DILocation(line: 418, column: 31, scope: !2851)
!2856 = !DILocation(line: 418, column: 13, scope: !2845)
!2857 = !DILocation(line: 419, column: 13, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2851, file: !2, line: 418, column: 46)
!2859 = !DILocation(line: 421, column: 5, scope: !2845)
!2860 = !DILocation(line: 414, column: 38, scope: !2842)
!2861 = !DILocation(line: 414, column: 42, scope: !2842)
!2862 = !DILocation(line: 414, column: 36, scope: !2842)
!2863 = !DILocation(line: 414, column: 5, scope: !2842)
!2864 = distinct !{!2864, !2843, !2865, !2587}
!2865 = !DILocation(line: 421, column: 5, scope: !2836)
!2866 = !DILocation(line: 423, column: 21, scope: !2685)
!2867 = !DILocation(line: 423, column: 33, scope: !2685)
!2868 = !DILocation(line: 423, column: 39, scope: !2685)
!2869 = !DILocation(line: 423, column: 5, scope: !2685)
!2870 = !DILocation(line: 424, column: 5, scope: !2685)
!2871 = !DILocation(line: 425, column: 1, scope: !2685)
!2872 = !DISubprogram(name: "luaL_checkinteger", scope: !2873, file: !2873, line: 41, type: !2134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2873 = !DIFile(filename: "luajit-root/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spa/linux-ubuntu22.04-zen2/clang-18.0.0/openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/luajit/include/luajit-2.1/lauxlib.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build", checksumkind: CSK_MD5, checksum: "fe4d1fbdf3f9191994e146a57f8e7a12")
!2874 = !DISubprogram(name: "lua_pushnil", scope: !1935, file: !1935, line: 161, type: !2875, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{null, !1933}
!2877 = !DISubprogram(name: "lua_pushboolean", scope: !1935, file: !1935, line: 170, type: !2117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2878 = !DISubprogram(name: "lua_pushlstring", scope: !1935, file: !1935, line: 164, type: !2879, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2879 = !DISubroutineType(types: !2880)
!2880 = !{null, !1933, !958, !152}
!2881 = !DISubprogram(name: "lua_newuserdata", scope: !1935, file: !1935, line: 183, type: !2882, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{!27, !1933, !152}
!2884 = distinct !DISubprogram(name: "ngx_http_lua_body_filter_param_set", scope: !2, file: !2, line: 429, type: !2885, scopeLine: 431, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !2887)
!2885 = !DISubroutineType(types: !2886)
!2886 = !{!34, !1933, !72, !2249}
!2887 = !{!2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902}
!2888 = !DILocalVariable(name: "L", arg: 1, scope: !2884, file: !2, line: 429, type: !1933)
!2889 = !DILocalVariable(name: "r", arg: 2, scope: !2884, file: !2, line: 429, type: !72)
!2890 = !DILocalVariable(name: "ctx", arg: 3, scope: !2884, file: !2, line: 430, type: !2249)
!2891 = !DILocalVariable(name: "type", scope: !2884, file: !2, line: 432, type: !34)
!2892 = !DILocalVariable(name: "idx", scope: !2884, file: !2, line: 433, type: !34)
!2893 = !DILocalVariable(name: "found", scope: !2884, file: !2, line: 434, type: !34)
!2894 = !DILocalVariable(name: "data", scope: !2884, file: !2, line: 435, type: !21)
!2895 = !DILocalVariable(name: "size", scope: !2884, file: !2, line: 436, type: !152)
!2896 = !DILocalVariable(name: "last", scope: !2884, file: !2, line: 437, type: !82)
!2897 = !DILocalVariable(name: "flush", scope: !2884, file: !2, line: 438, type: !82)
!2898 = !DILocalVariable(name: "b", scope: !2884, file: !2, line: 439, type: !224)
!2899 = !DILocalVariable(name: "cl", scope: !2884, file: !2, line: 440, type: !219)
!2900 = !DILocalVariable(name: "in", scope: !2884, file: !2, line: 441, type: !219)
!2901 = !DILocalVariable(name: "lmcf", scope: !2884, file: !2, line: 443, type: !2032)
!2902 = !DILabel(scope: !2884, name: "done", file: !2, line: 596)
!2903 = !DILocation(line: 429, column: 47, scope: !2884)
!2904 = !DILocation(line: 429, column: 70, scope: !2884)
!2905 = !DILocation(line: 430, column: 25, scope: !2884)
!2906 = !DILocation(line: 432, column: 5, scope: !2884)
!2907 = !DILocation(line: 432, column: 30, scope: !2884)
!2908 = !DILocation(line: 433, column: 5, scope: !2884)
!2909 = !DILocation(line: 433, column: 30, scope: !2884)
!2910 = !DILocation(line: 434, column: 5, scope: !2884)
!2911 = !DILocation(line: 434, column: 30, scope: !2884)
!2912 = !DILocation(line: 435, column: 5, scope: !2884)
!2913 = !DILocation(line: 435, column: 30, scope: !2884)
!2914 = !DILocation(line: 436, column: 5, scope: !2884)
!2915 = !DILocation(line: 436, column: 30, scope: !2884)
!2916 = !DILocation(line: 437, column: 5, scope: !2884)
!2917 = !DILocation(line: 437, column: 30, scope: !2884)
!2918 = !DILocation(line: 438, column: 5, scope: !2884)
!2919 = !DILocation(line: 438, column: 30, scope: !2884)
!2920 = !DILocation(line: 439, column: 5, scope: !2884)
!2921 = !DILocation(line: 439, column: 30, scope: !2884)
!2922 = !DILocation(line: 440, column: 5, scope: !2884)
!2923 = !DILocation(line: 440, column: 30, scope: !2884)
!2924 = !DILocation(line: 441, column: 5, scope: !2884)
!2925 = !DILocation(line: 441, column: 30, scope: !2884)
!2926 = !DILocation(line: 443, column: 5, scope: !2884)
!2927 = !DILocation(line: 443, column: 34, scope: !2884)
!2928 = !DILocation(line: 445, column: 11, scope: !2884)
!2929 = !DILocation(line: 445, column: 9, scope: !2884)
!2930 = !DILocation(line: 449, column: 9, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2884, file: !2, line: 449, column: 9)
!2932 = !DILocation(line: 449, column: 13, scope: !2931)
!2933 = !DILocation(line: 449, column: 18, scope: !2931)
!2934 = !DILocation(line: 449, column: 21, scope: !2931)
!2935 = !DILocation(line: 449, column: 25, scope: !2931)
!2936 = !DILocation(line: 449, column: 9, scope: !2884)
!2937 = !DILocation(line: 450, column: 27, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2931, file: !2, line: 449, column: 31)
!2939 = !DILocation(line: 450, column: 47, scope: !2938)
!2940 = !DILocation(line: 450, column: 16, scope: !2938)
!2941 = !DILocation(line: 450, column: 9, scope: !2938)
!2942 = !DILocation(line: 453, column: 12, scope: !2884)
!2943 = !DILocation(line: 453, column: 10, scope: !2884)
!2944 = !DILocation(line: 455, column: 9, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2884, file: !2, line: 455, column: 9)
!2946 = !DILocation(line: 455, column: 13, scope: !2945)
!2947 = !DILocation(line: 455, column: 9, scope: !2884)
!2948 = !DILocation(line: 457, column: 30, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2945, file: !2, line: 455, column: 19)
!2950 = !DILocation(line: 457, column: 16, scope: !2949)
!2951 = !DILocation(line: 457, column: 14, scope: !2949)
!2952 = !DILocation(line: 459, column: 14, scope: !2949)
!2953 = !DILocation(line: 459, column: 20, scope: !2949)
!2954 = !DILocation(line: 459, column: 12, scope: !2949)
!2955 = !DILocation(line: 461, column: 13, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2949, file: !2, line: 461, column: 13)
!2957 = !DILocation(line: 461, column: 13, scope: !2949)
!2958 = !DILocation(line: 462, column: 13, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2956, file: !2, line: 461, column: 19)
!2960 = !DILocation(line: 462, column: 18, scope: !2959)
!2961 = !DILocation(line: 462, column: 38, scope: !2959)
!2962 = !DILocation(line: 467, column: 23, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2959, file: !2, line: 467, column: 13)
!2964 = !DILocation(line: 467, column: 21, scope: !2963)
!2965 = !DILocation(line: 467, column: 18, scope: !2963)
!2966 = !DILocation(line: 467, column: 27, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2963, file: !2, line: 467, column: 13)
!2968 = !DILocation(line: 467, column: 13, scope: !2963)
!2969 = !DILocation(line: 468, column: 21, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2971, file: !2, line: 468, column: 21)
!2971 = distinct !DILexicalBlock(scope: !2967, file: !2, line: 467, column: 46)
!2972 = !DILocation(line: 468, column: 25, scope: !2970)
!2973 = !DILocation(line: 468, column: 30, scope: !2970)
!2974 = !DILocation(line: 468, column: 21, scope: !2971)
!2975 = !DILocation(line: 469, column: 25, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2977, file: !2, line: 469, column: 25)
!2977 = distinct !DILexicalBlock(scope: !2970, file: !2, line: 468, column: 39)
!2978 = !DILocation(line: 469, column: 30, scope: !2976)
!2979 = !DILocation(line: 469, column: 33, scope: !2976)
!2980 = !{!1990, !1945, i64 1072}
!2981 = !DILocation(line: 469, column: 27, scope: !2976)
!2982 = !DILocation(line: 469, column: 25, scope: !2977)
!2983 = !DILocation(line: 470, column: 25, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2976, file: !2, line: 469, column: 39)
!2985 = !DILocation(line: 470, column: 29, scope: !2984)
!2986 = !DILocation(line: 470, column: 34, scope: !2984)
!2987 = !DILocation(line: 470, column: 43, scope: !2984)
!2988 = !DILocation(line: 472, column: 21, scope: !2984)
!2989 = !DILocation(line: 473, column: 25, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2976, file: !2, line: 472, column: 28)
!2991 = !DILocation(line: 473, column: 29, scope: !2990)
!2992 = !DILocation(line: 473, column: 34, scope: !2990)
!2993 = !DILocation(line: 473, column: 48, scope: !2990)
!2994 = !DILocation(line: 476, column: 21, scope: !2977)
!2995 = !DILocation(line: 478, column: 13, scope: !2971)
!2996 = !DILocation(line: 467, column: 36, scope: !2967)
!2997 = !DILocation(line: 467, column: 40, scope: !2967)
!2998 = !DILocation(line: 467, column: 34, scope: !2967)
!2999 = !DILocation(line: 467, column: 13, scope: !2967)
!3000 = distinct !{!3000, !2968, !3001, !2587}
!3001 = !DILocation(line: 478, column: 13, scope: !2963)
!3002 = !DILocation(line: 480, column: 9, scope: !2959)
!3003 = !DILocation(line: 483, column: 19, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !2956, file: !2, line: 480, column: 16)
!3005 = !DILocation(line: 485, column: 23, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !3004, file: !2, line: 485, column: 13)
!3007 = !DILocation(line: 485, column: 21, scope: !3006)
!3008 = !DILocation(line: 485, column: 18, scope: !3006)
!3009 = !DILocation(line: 485, column: 27, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !3006, file: !2, line: 485, column: 13)
!3011 = !DILocation(line: 485, column: 13, scope: !3006)
!3012 = !DILocation(line: 486, column: 21, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !3010, file: !2, line: 485, column: 46)
!3014 = !DILocation(line: 486, column: 25, scope: !3013)
!3015 = !DILocation(line: 486, column: 19, scope: !3013)
!3016 = !DILocation(line: 488, column: 21, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !3013, file: !2, line: 488, column: 21)
!3018 = !DILocation(line: 488, column: 24, scope: !3017)
!3019 = !DILocation(line: 488, column: 21, scope: !3013)
!3020 = !DILocation(line: 489, column: 21, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !3017, file: !2, line: 488, column: 34)
!3022 = !DILocation(line: 489, column: 24, scope: !3021)
!3023 = !DILocation(line: 489, column: 33, scope: !3021)
!3024 = !DILocation(line: 490, column: 27, scope: !3021)
!3025 = !DILocation(line: 491, column: 17, scope: !3021)
!3026 = !DILocation(line: 493, column: 21, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !3013, file: !2, line: 493, column: 21)
!3028 = !DILocation(line: 493, column: 24, scope: !3027)
!3029 = !DILocation(line: 493, column: 21, scope: !3013)
!3030 = !DILocation(line: 494, column: 21, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !3027, file: !2, line: 493, column: 39)
!3032 = !DILocation(line: 494, column: 24, scope: !3031)
!3033 = !DILocation(line: 494, column: 38, scope: !3031)
!3034 = !DILocation(line: 495, column: 27, scope: !3031)
!3035 = !DILocation(line: 496, column: 17, scope: !3031)
!3036 = !DILocation(line: 498, column: 21, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3013, file: !2, line: 498, column: 21)
!3038 = !DILocation(line: 498, column: 27, scope: !3037)
!3039 = !DILocation(line: 498, column: 30, scope: !3037)
!3040 = !DILocation(line: 498, column: 33, scope: !3037)
!3041 = !DILocation(line: 498, column: 41, scope: !3037)
!3042 = !DILocation(line: 498, column: 44, scope: !3037)
!3043 = !DILocation(line: 498, column: 38, scope: !3037)
!3044 = !DILocation(line: 498, column: 48, scope: !3037)
!3045 = !DILocation(line: 498, column: 52, scope: !3037)
!3046 = !DILocation(line: 498, column: 21, scope: !3013)
!3047 = !DILocation(line: 501, column: 21, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !3037, file: !2, line: 498, column: 74)
!3049 = !DILocation(line: 501, column: 24, scope: !3048)
!3050 = !DILocation(line: 501, column: 29, scope: !3048)
!3051 = !DILocation(line: 502, column: 17, scope: !3048)
!3052 = !DILocation(line: 503, column: 13, scope: !3013)
!3053 = !DILocation(line: 485, column: 36, scope: !3010)
!3054 = !DILocation(line: 485, column: 40, scope: !3010)
!3055 = !DILocation(line: 485, column: 34, scope: !3010)
!3056 = !DILocation(line: 485, column: 13, scope: !3010)
!3057 = distinct !{!3057, !3011, !3058, !2587}
!3058 = !DILocation(line: 503, column: 13, scope: !3006)
!3059 = !DILocation(line: 505, column: 13, scope: !3004)
!3060 = !DILocation(line: 505, column: 18, scope: !3004)
!3061 = !DILocation(line: 505, column: 38, scope: !3004)
!3062 = !DILocation(line: 508, column: 9, scope: !2949)
!3063 = !DILocation(line: 513, column: 21, scope: !2884)
!3064 = !DILocation(line: 513, column: 12, scope: !2884)
!3065 = !DILocation(line: 513, column: 10, scope: !2884)
!3066 = !DILocation(line: 515, column: 13, scope: !2884)
!3067 = !DILocation(line: 515, column: 5, scope: !2884)
!3068 = !DILocation(line: 518, column: 41, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !2884, file: !2, line: 515, column: 19)
!3070 = !DILocation(line: 518, column: 27, scope: !3069)
!3071 = !DILocation(line: 518, column: 14, scope: !3069)
!3072 = !DILocation(line: 519, column: 9, scope: !3069)
!3073 = !DILocation(line: 524, column: 14, scope: !3069)
!3074 = !DILocation(line: 524, column: 20, scope: !3069)
!3075 = !DILocation(line: 524, column: 12, scope: !3069)
!3076 = !DILocation(line: 526, column: 14, scope: !3069)
!3077 = !DILocation(line: 528, column: 19, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3069, file: !2, line: 528, column: 9)
!3079 = !DILocation(line: 528, column: 17, scope: !3078)
!3080 = !DILocation(line: 528, column: 14, scope: !3078)
!3081 = !DILocation(line: 528, column: 23, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3078, file: !2, line: 528, column: 9)
!3083 = !DILocation(line: 528, column: 9, scope: !3078)
!3084 = !DILocation(line: 529, column: 17, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3082, file: !2, line: 528, column: 42)
!3086 = !DILocation(line: 529, column: 21, scope: !3085)
!3087 = !DILocation(line: 529, column: 15, scope: !3085)
!3088 = !DILocation(line: 531, column: 17, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3085, file: !2, line: 531, column: 17)
!3090 = !DILocation(line: 531, column: 20, scope: !3089)
!3091 = !DILocation(line: 531, column: 17, scope: !3085)
!3092 = !DILocation(line: 532, column: 23, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3089, file: !2, line: 531, column: 27)
!3094 = !DILocation(line: 533, column: 13, scope: !3093)
!3095 = !DILocation(line: 535, column: 17, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !3085, file: !2, line: 535, column: 17)
!3097 = !DILocation(line: 535, column: 20, scope: !3096)
!3098 = !DILocation(line: 535, column: 34, scope: !3096)
!3099 = !DILocation(line: 535, column: 37, scope: !3096)
!3100 = !DILocation(line: 535, column: 40, scope: !3096)
!3101 = !DILocation(line: 535, column: 17, scope: !3085)
!3102 = !DILocation(line: 536, column: 22, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3096, file: !2, line: 535, column: 50)
!3104 = !DILocation(line: 537, column: 13, scope: !3103)
!3105 = !DILocation(line: 540, column: 22, scope: !3085)
!3106 = !DILocation(line: 540, column: 25, scope: !3085)
!3107 = !DILocation(line: 540, column: 13, scope: !3085)
!3108 = !DILocation(line: 540, column: 16, scope: !3085)
!3109 = !DILocation(line: 540, column: 20, scope: !3085)
!3110 = !DILocation(line: 541, column: 9, scope: !3085)
!3111 = !DILocation(line: 528, column: 32, scope: !3082)
!3112 = !DILocation(line: 528, column: 36, scope: !3082)
!3113 = !DILocation(line: 528, column: 30, scope: !3082)
!3114 = !DILocation(line: 528, column: 9, scope: !3082)
!3115 = distinct !{!3115, !3083, !3116, !2587}
!3116 = !DILocation(line: 541, column: 9, scope: !3078)
!3117 = !DILocation(line: 545, column: 9, scope: !3069)
!3118 = !DILocation(line: 548, column: 50, scope: !3069)
!3119 = !DILocation(line: 548, column: 16, scope: !3069)
!3120 = !DILocation(line: 548, column: 14, scope: !3069)
!3121 = !DILocation(line: 550, column: 14, scope: !3069)
!3122 = !DILocation(line: 551, column: 9, scope: !3069)
!3123 = !DILocation(line: 554, column: 27, scope: !3069)
!3124 = !DILocation(line: 555, column: 40, scope: !3069)
!3125 = !DILocation(line: 555, column: 43, scope: !3069)
!3126 = !DILocation(line: 555, column: 27, scope: !3069)
!3127 = !DILocation(line: 554, column: 16, scope: !3069)
!3128 = !DILocation(line: 554, column: 9, scope: !3069)
!3129 = !DILocation(line: 558, column: 10, scope: !2884)
!3130 = !DILocation(line: 558, column: 16, scope: !2884)
!3131 = !DILocation(line: 558, column: 8, scope: !2884)
!3132 = !DILocation(line: 560, column: 10, scope: !2884)
!3133 = !DILocation(line: 562, column: 15, scope: !3134)
!3134 = distinct !DILexicalBlock(scope: !2884, file: !2, line: 562, column: 5)
!3135 = !DILocation(line: 562, column: 13, scope: !3134)
!3136 = !DILocation(line: 562, column: 10, scope: !3134)
!3137 = !DILocation(line: 562, column: 19, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3134, file: !2, line: 562, column: 5)
!3139 = !DILocation(line: 562, column: 5, scope: !3134)
!3140 = !DILocation(line: 563, column: 13, scope: !3141)
!3141 = distinct !DILexicalBlock(scope: !3138, file: !2, line: 562, column: 38)
!3142 = !DILocation(line: 563, column: 17, scope: !3141)
!3143 = !DILocation(line: 563, column: 11, scope: !3141)
!3144 = !DILocation(line: 565, column: 13, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !3141, file: !2, line: 565, column: 13)
!3146 = !DILocation(line: 565, column: 16, scope: !3145)
!3147 = !DILocation(line: 565, column: 13, scope: !3141)
!3148 = !DILocation(line: 566, column: 19, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3145, file: !2, line: 565, column: 23)
!3150 = !DILocation(line: 567, column: 9, scope: !3149)
!3151 = !DILocation(line: 569, column: 13, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3141, file: !2, line: 569, column: 13)
!3153 = !DILocation(line: 569, column: 16, scope: !3152)
!3154 = !DILocation(line: 569, column: 25, scope: !3152)
!3155 = !DILocation(line: 569, column: 28, scope: !3152)
!3156 = !DILocation(line: 569, column: 31, scope: !3152)
!3157 = !DILocation(line: 569, column: 13, scope: !3141)
!3158 = !DILocation(line: 570, column: 18, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3152, file: !2, line: 569, column: 46)
!3160 = !DILocation(line: 571, column: 9, scope: !3159)
!3161 = !DILocation(line: 574, column: 24, scope: !3141)
!3162 = !DILocation(line: 574, column: 28, scope: !3141)
!3163 = !DILocation(line: 574, column: 33, scope: !3141)
!3164 = !DILocation(line: 574, column: 9, scope: !3141)
!3165 = !DILocation(line: 574, column: 13, scope: !3141)
!3166 = !DILocation(line: 574, column: 18, scope: !3141)
!3167 = !DILocation(line: 574, column: 22, scope: !3141)
!3168 = !DILocation(line: 575, column: 5, scope: !3141)
!3169 = !DILocation(line: 562, column: 28, scope: !3138)
!3170 = !DILocation(line: 562, column: 32, scope: !3138)
!3171 = !DILocation(line: 562, column: 26, scope: !3138)
!3172 = !DILocation(line: 562, column: 5, scope: !3138)
!3173 = distinct !{!3173, !3139, !3174, !2587}
!3174 = !DILocation(line: 575, column: 5, scope: !3134)
!3175 = !DILocation(line: 579, column: 9, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !2884, file: !2, line: 579, column: 9)
!3177 = !DILocation(line: 579, column: 14, scope: !3176)
!3178 = !DILocation(line: 579, column: 9, scope: !2884)
!3179 = !DILocation(line: 580, column: 9, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3176, file: !2, line: 579, column: 20)
!3181 = !DILocation(line: 583, column: 42, scope: !2884)
!3182 = !DILocation(line: 583, column: 45, scope: !2884)
!3183 = !DILocation(line: 583, column: 57, scope: !2884)
!3184 = !DILocation(line: 583, column: 62, scope: !2884)
!3185 = !DILocation(line: 583, column: 65, scope: !2884)
!3186 = !DILocation(line: 584, column: 43, scope: !2884)
!3187 = !DILocation(line: 584, column: 48, scope: !2884)
!3188 = !DILocation(line: 584, column: 59, scope: !2884)
!3189 = !DILocation(line: 583, column: 10, scope: !2884)
!3190 = !DILocation(line: 583, column: 8, scope: !2884)
!3191 = !DILocation(line: 585, column: 9, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !2884, file: !2, line: 585, column: 9)
!3193 = !DILocation(line: 585, column: 12, scope: !3192)
!3194 = !DILocation(line: 585, column: 9, scope: !2884)
!3195 = !DILocation(line: 586, column: 27, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3192, file: !2, line: 585, column: 21)
!3197 = !DILocation(line: 586, column: 16, scope: !3196)
!3198 = !DILocation(line: 586, column: 9, scope: !3196)
!3199 = !DILocation(line: 589, column: 9, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !2884, file: !2, line: 589, column: 9)
!3201 = !DILocation(line: 589, column: 14, scope: !3200)
!3202 = !DILocation(line: 589, column: 9, scope: !2884)
!3203 = !DILocation(line: 590, column: 56, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3200, file: !2, line: 589, column: 29)
!3205 = !DILocation(line: 590, column: 62, scope: !3204)
!3206 = !DILocation(line: 590, column: 66, scope: !3204)
!3207 = !DILocation(line: 590, column: 71, scope: !3204)
!3208 = !DILocation(line: 590, column: 25, scope: !3204)
!3209 = !DILocation(line: 590, column: 9, scope: !3204)
!3210 = !DILocation(line: 590, column: 13, scope: !3204)
!3211 = !DILocation(line: 590, column: 18, scope: !3204)
!3212 = !DILocation(line: 590, column: 23, scope: !3204)
!3213 = !DILocation(line: 592, column: 5, scope: !3204)
!3214 = !DILocation(line: 593, column: 25, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3200, file: !2, line: 592, column: 12)
!3216 = !DILocation(line: 593, column: 9, scope: !3215)
!3217 = !DILocation(line: 593, column: 13, scope: !3215)
!3218 = !DILocation(line: 593, column: 18, scope: !3215)
!3219 = !DILocation(line: 593, column: 23, scope: !3215)
!3220 = !DILocation(line: 589, column: 17, scope: !3200)
!3221 = !DILocation(line: 596, column: 1, scope: !2884)
!3222 = !DILocation(line: 598, column: 9, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !2884, file: !2, line: 598, column: 9)
!3224 = !DILocation(line: 598, column: 14, scope: !3223)
!3225 = !DILocation(line: 598, column: 17, scope: !3223)
!3226 = !DILocation(line: 598, column: 9, scope: !2884)
!3227 = !DILocation(line: 599, column: 13, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3229, file: !2, line: 599, column: 13)
!3229 = distinct !DILexicalBlock(scope: !3223, file: !2, line: 598, column: 24)
!3230 = !DILocation(line: 599, column: 16, scope: !3228)
!3231 = !DILocation(line: 599, column: 13, scope: !3229)
!3232 = !DILocation(line: 600, column: 50, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3228, file: !2, line: 599, column: 25)
!3234 = !DILocation(line: 600, column: 53, scope: !3233)
!3235 = !DILocation(line: 600, column: 65, scope: !3233)
!3236 = !DILocation(line: 601, column: 50, scope: !3233)
!3237 = !DILocation(line: 601, column: 53, scope: !3233)
!3238 = !DILocation(line: 602, column: 51, scope: !3233)
!3239 = !DILocation(line: 602, column: 56, scope: !3233)
!3240 = !DILocation(line: 600, column: 18, scope: !3233)
!3241 = !DILocation(line: 600, column: 16, scope: !3233)
!3242 = !DILocation(line: 603, column: 17, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3233, file: !2, line: 603, column: 17)
!3244 = !DILocation(line: 603, column: 20, scope: !3243)
!3245 = !DILocation(line: 603, column: 17, scope: !3233)
!3246 = !DILocation(line: 604, column: 35, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3243, file: !2, line: 603, column: 29)
!3248 = !DILocation(line: 604, column: 24, scope: !3247)
!3249 = !DILocation(line: 604, column: 17, scope: !3247)
!3250 = !DILocation(line: 606, column: 9, scope: !3233)
!3251 = !DILocation(line: 608, column: 13, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3229, file: !2, line: 608, column: 13)
!3253 = !DILocation(line: 608, column: 13, scope: !3229)
!3254 = !DILocation(line: 609, column: 13, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3252, file: !2, line: 608, column: 19)
!3256 = !DILocation(line: 609, column: 18, scope: !3255)
!3257 = !DILocation(line: 609, column: 38, scope: !3255)
!3258 = !DILocation(line: 611, column: 17, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3255, file: !2, line: 611, column: 17)
!3260 = !DILocation(line: 611, column: 22, scope: !3259)
!3261 = !DILocation(line: 611, column: 25, scope: !3259)
!3262 = !DILocation(line: 611, column: 19, scope: !3259)
!3263 = !DILocation(line: 611, column: 17, scope: !3255)
!3264 = !DILocation(line: 612, column: 17, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !3259, file: !2, line: 611, column: 31)
!3266 = !DILocation(line: 612, column: 21, scope: !3265)
!3267 = !DILocation(line: 612, column: 26, scope: !3265)
!3268 = !DILocation(line: 612, column: 35, scope: !3265)
!3269 = !DILocation(line: 614, column: 13, scope: !3265)
!3270 = !DILocation(line: 615, column: 17, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3259, file: !2, line: 614, column: 20)
!3272 = !DILocation(line: 615, column: 21, scope: !3271)
!3273 = !DILocation(line: 615, column: 26, scope: !3271)
!3274 = !DILocation(line: 615, column: 40, scope: !3271)
!3275 = !DILocation(line: 617, column: 9, scope: !3255)
!3276 = !DILocation(line: 619, column: 13, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !3229, file: !2, line: 619, column: 13)
!3278 = !DILocation(line: 619, column: 13, scope: !3229)
!3279 = !DILocation(line: 620, column: 13, scope: !3280)
!3280 = distinct !DILexicalBlock(scope: !3277, file: !2, line: 619, column: 20)
!3281 = !DILocation(line: 620, column: 17, scope: !3280)
!3282 = !DILocation(line: 620, column: 22, scope: !3280)
!3283 = !DILocation(line: 620, column: 28, scope: !3280)
!3284 = !DILocation(line: 621, column: 9, scope: !3280)
!3285 = !DILocation(line: 622, column: 5, scope: !3229)
!3286 = !DILocation(line: 624, column: 31, scope: !2884)
!3287 = !DILocation(line: 624, column: 5, scope: !2884)
!3288 = !DILocation(line: 624, column: 11, scope: !2884)
!3289 = !DILocation(line: 624, column: 29, scope: !2884)
!3290 = !DILocation(line: 626, column: 5, scope: !2884)
!3291 = !DILocation(line: 627, column: 1, scope: !2884)
!3292 = !DISubprogram(name: "luaL_error", scope: !2873, file: !2873, line: 53, type: !3293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{!34, !1933, !958, null}
!3295 = !DISubprogram(name: "lua_toboolean", scope: !1935, file: !1935, line: 149, type: !3296, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3296 = !DISubroutineType(types: !3297)
!3297 = !{!34, !1933, !34}
!3298 = !DISubprogram(name: "lua_type", scope: !1935, file: !1935, line: 140, type: !3296, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3299 = !DISubprogram(name: "ngx_http_lua_calc_strlen_in_table", scope: !3300, file: !3300, line: 17, type: !3301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3300 = !DIFile(filename: "../ngx_lua-0.10.15/src/ngx_http_lua_output.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "ca89fc049958f39503e276d9c85aba33")
!3301 = !DISubroutineType(types: !3302)
!3302 = !{!152, !1933, !34, !34, !82}
!3303 = !DISubprogram(name: "lua_typename", scope: !1935, file: !1935, line: 141, type: !3304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{!958, !1933, !34}
!3306 = !DISubprogram(name: "ngx_http_lua_chain_get_free_buf", scope: !63, file: !63, line: 193, type: !3307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!219, !131, !385, !802, !152}
!3309 = !DISubprogram(name: "ngx_http_lua_copy_str_in_table", scope: !3300, file: !3300, line: 20, type: !3310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3310 = !DISubroutineType(types: !3311)
!3311 = !{!21, !1933, !34, !21}
!3312 = distinct !DISubprogram(name: "ngx_http_lua_set_req", scope: !63, file: !63, line: 368, type: !3313, scopeLine: 369, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !3315)
!3313 = !DISubroutineType(types: !3314)
!3314 = !{null, !1933, !72}
!3315 = !{!3316, !3317}
!3316 = !DILocalVariable(name: "L", arg: 1, scope: !3312, file: !63, line: 368, type: !1933)
!3317 = !DILocalVariable(name: "r", arg: 2, scope: !3312, file: !63, line: 368, type: !72)
!3318 = !DILocation(line: 368, column: 33, scope: !3312)
!3319 = !DILocation(line: 368, column: 56, scope: !3312)
!3320 = !DILocation(line: 371, column: 19, scope: !3312)
!3321 = !DILocation(line: 371, column: 31, scope: !3312)
!3322 = !DILocation(line: 371, column: 5, scope: !3312)
!3323 = !DILocation(line: 376, column: 1, scope: !3312)
!3324 = !DISubprogram(name: "lua_setexdata", scope: !1935, file: !1935, line: 248, type: !3325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{null, !1933, !27}
!3327 = distinct !DISubprogram(name: "ngx_http_lua_create_ctx", scope: !63, file: !63, line: 275, type: !3328, scopeLine: 276, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !3330)
!3328 = !DISubroutineType(types: !3329)
!3329 = !{!2249, !72}
!3330 = !{!3331, !3332, !3333, !3334, !3335, !3336}
!3331 = !DILocalVariable(name: "r", arg: 1, scope: !3327, file: !63, line: 275, type: !72)
!3332 = !DILocalVariable(name: "L", scope: !3327, file: !63, line: 277, type: !1933)
!3333 = !DILocalVariable(name: "ctx", scope: !3327, file: !63, line: 278, type: !2249)
!3334 = !DILocalVariable(name: "cln", scope: !3327, file: !63, line: 279, type: !409)
!3335 = !DILocalVariable(name: "llcf", scope: !3327, file: !63, line: 280, type: !2146)
!3336 = !DILocalVariable(name: "lmcf", scope: !3327, file: !63, line: 281, type: !2032)
!3337 = !DILocation(line: 275, column: 45, scope: !3327)
!3338 = !DILocation(line: 277, column: 5, scope: !3327)
!3339 = !DILocation(line: 277, column: 34, scope: !3327)
!3340 = !DILocation(line: 278, column: 5, scope: !3327)
!3341 = !DILocation(line: 278, column: 34, scope: !3327)
!3342 = !DILocation(line: 279, column: 5, scope: !3327)
!3343 = !DILocation(line: 279, column: 34, scope: !3327)
!3344 = !DILocation(line: 280, column: 5, scope: !3327)
!3345 = !DILocation(line: 280, column: 34, scope: !3327)
!3346 = !DILocation(line: 281, column: 5, scope: !3327)
!3347 = !DILocation(line: 281, column: 34, scope: !3327)
!3348 = !DILocation(line: 283, column: 22, scope: !3327)
!3349 = !DILocation(line: 283, column: 25, scope: !3327)
!3350 = !DILocation(line: 283, column: 11, scope: !3327)
!3351 = !DILocation(line: 283, column: 9, scope: !3327)
!3352 = !DILocation(line: 284, column: 9, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3327, file: !63, line: 284, column: 9)
!3354 = !DILocation(line: 284, column: 13, scope: !3353)
!3355 = !DILocation(line: 284, column: 9, scope: !3327)
!3356 = !DILocation(line: 285, column: 9, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !3353, file: !63, line: 284, column: 22)
!3358 = !DILocation(line: 288, column: 27, scope: !3327)
!3359 = !DILocation(line: 288, column: 30, scope: !3327)
!3360 = !DILocation(line: 288, column: 5, scope: !3327)
!3361 = !DILocation(line: 289, column: 5, scope: !3327)
!3362 = !DILocation(line: 291, column: 12, scope: !3327)
!3363 = !DILocation(line: 291, column: 10, scope: !3327)
!3364 = !DILocation(line: 292, column: 10, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3327, file: !63, line: 292, column: 9)
!3366 = !DILocation(line: 292, column: 16, scope: !3365)
!3367 = !{!2215, !1968, i64 80}
!3368 = !DILocation(line: 292, column: 34, scope: !3365)
!3369 = !DILocation(line: 292, column: 37, scope: !3365)
!3370 = !DILocation(line: 292, column: 40, scope: !3365)
!3371 = !DILocation(line: 292, column: 52, scope: !3365)
!3372 = !{!1999, !1991, i64 24}
!3373 = !DILocation(line: 292, column: 55, scope: !3365)
!3374 = !DILocation(line: 292, column: 9, scope: !3327)
!3375 = !DILocation(line: 293, column: 16, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !3365, file: !63, line: 292, column: 77)
!3377 = !DILocation(line: 293, column: 14, scope: !3376)
!3378 = !DILocation(line: 299, column: 34, scope: !3376)
!3379 = !DILocation(line: 299, column: 40, scope: !3376)
!3380 = !DILocation(line: 299, column: 45, scope: !3376)
!3381 = !DILocation(line: 299, column: 51, scope: !3376)
!3382 = !{!2107, !1945, i64 48}
!3383 = !DILocation(line: 299, column: 58, scope: !3376)
!3384 = !DILocation(line: 299, column: 61, scope: !3376)
!3385 = !DILocation(line: 299, column: 67, scope: !3376)
!3386 = !DILocation(line: 300, column: 34, scope: !3376)
!3387 = !DILocation(line: 300, column: 37, scope: !3376)
!3388 = !DILocation(line: 300, column: 49, scope: !3376)
!3389 = !DILocation(line: 299, column: 13, scope: !3376)
!3390 = !DILocation(line: 299, column: 11, scope: !3376)
!3391 = !DILocation(line: 301, column: 13, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3376, file: !63, line: 301, column: 13)
!3393 = !DILocation(line: 301, column: 15, scope: !3392)
!3394 = !DILocation(line: 301, column: 13, scope: !3376)
!3395 = !DILocation(line: 302, column: 13, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3397, file: !63, line: 302, column: 13)
!3397 = distinct !DILexicalBlock(scope: !3392, file: !63, line: 301, column: 24)
!3398 = !DILocation(line: 302, column: 13, scope: !3397)
!3399 = !DILocation(line: 304, column: 13, scope: !3397)
!3400 = !DILocation(line: 307, column: 13, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3376, file: !63, line: 307, column: 13)
!3402 = !DILocation(line: 307, column: 19, scope: !3401)
!3403 = !{!2107, !1945, i64 152}
!3404 = !DILocation(line: 307, column: 13, scope: !3376)
!3405 = !DILocation(line: 308, column: 17, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3407, file: !63, line: 308, column: 17)
!3407 = distinct !DILexicalBlock(scope: !3401, file: !63, line: 307, column: 33)
!3408 = !DILocation(line: 308, column: 23, scope: !3406)
!3409 = !DILocation(line: 308, column: 36, scope: !3406)
!3410 = !DILocation(line: 308, column: 39, scope: !3406)
!3411 = !DILocation(line: 308, column: 51, scope: !3406)
!3412 = !DILocation(line: 308, column: 56, scope: !3406)
!3413 = !DILocation(line: 308, column: 62, scope: !3406)
!3414 = !DILocation(line: 308, column: 65, scope: !3406)
!3415 = !DILocation(line: 308, column: 17, scope: !3407)
!3416 = !DILocation(line: 310, column: 17, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3406, file: !63, line: 308, column: 76)
!3418 = !DILocation(line: 312, column: 9, scope: !3407)
!3419 = !DILocation(line: 314, column: 25, scope: !3376)
!3420 = !DILocation(line: 314, column: 30, scope: !3376)
!3421 = !{!3422, !1945, i64 8}
!3422 = !{!"ngx_pool_cleanup_s", !1945, i64 0, !1945, i64 8, !1945, i64 16}
!3423 = !DILocation(line: 314, column: 9, scope: !3376)
!3424 = !DILocation(line: 314, column: 14, scope: !3376)
!3425 = !DILocation(line: 314, column: 23, scope: !3376)
!3426 = !DILocation(line: 316, column: 5, scope: !3376)
!3427 = !DILocation(line: 317, column: 9, scope: !3428)
!3428 = distinct !DILexicalBlock(scope: !3365, file: !63, line: 316, column: 12)
!3429 = !DILocation(line: 317, column: 14, scope: !3428)
!3430 = !DILocation(line: 317, column: 23, scope: !3428)
!3431 = !DILocation(line: 320, column: 12, scope: !3327)
!3432 = !DILocation(line: 320, column: 5, scope: !3327)
!3433 = !DILocation(line: 321, column: 1, scope: !3327)
!3434 = !DISubprogram(name: "ngx_http_cleanup_add", scope: !68, file: !68, line: 509, type: !3435, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{!1826, !72, !152}
!3437 = !DISubprogram(name: "ngx_chain_update_chains", scope: !37, file: !37, line: 163, type: !3438, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{null, !385, !802, !802, !802, !36}
!3440 = !DISubprogram(name: "ngx_palloc", scope: !388, file: !388, line: 79, type: !3441, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3441 = !DISubroutineType(types: !3442)
!3442 = !{!27, !385, !152}
!3443 = distinct !DISubprogram(name: "ngx_http_lua_init_ctx", scope: !63, file: !63, line: 264, type: !3444, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !3446)
!3444 = !DISubroutineType(types: !3445)
!3445 = !{null, !72, !2249}
!3446 = !{!3447, !3448}
!3447 = !DILocalVariable(name: "r", arg: 1, scope: !3443, file: !63, line: 264, type: !72)
!3448 = !DILocalVariable(name: "ctx", arg: 2, scope: !3443, file: !63, line: 264, type: !2249)
!3449 = !DILocation(line: 264, column: 43, scope: !3443)
!3450 = !DILocation(line: 264, column: 66, scope: !3443)
!3451 = !DILocation(line: 266, column: 5, scope: !3443)
!3452 = !DILocation(line: 267, column: 5, scope: !3443)
!3453 = !DILocation(line: 267, column: 10, scope: !3443)
!3454 = !DILocation(line: 267, column: 18, scope: !3443)
!3455 = !{!2362, !1991, i64 248}
!3456 = !DILocation(line: 268, column: 5, scope: !3443)
!3457 = !DILocation(line: 268, column: 10, scope: !3443)
!3458 = !DILocation(line: 268, column: 23, scope: !3443)
!3459 = !DILocation(line: 268, column: 30, scope: !3443)
!3460 = !{!2362, !1991, i64 232}
!3461 = !DILocation(line: 269, column: 5, scope: !3443)
!3462 = !DILocation(line: 269, column: 10, scope: !3443)
!3463 = !DILocation(line: 269, column: 25, scope: !3443)
!3464 = !{!2362, !1945, i64 16}
!3465 = !DILocation(line: 270, column: 20, scope: !3443)
!3466 = !DILocation(line: 270, column: 5, scope: !3443)
!3467 = !DILocation(line: 270, column: 10, scope: !3443)
!3468 = !DILocation(line: 270, column: 18, scope: !3443)
!3469 = !{!2362, !1945, i64 8}
!3470 = !DILocation(line: 271, column: 1, scope: !3443)
!3471 = !DISubprogram(name: "ngx_http_lua_init_vm", scope: !63, file: !63, line: 139, type: !3472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{!1933, !1933, !929, !385, !2032, !131, !3474}
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
