; ModuleID = 'program_4.bc'
source_filename = "src/extended/script_wrapper_visitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GtScriptWrapperVisitor = type { %struct.GtNodeVisitor, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.GtNodeVisitor = type { ptr, ptr }

@gt_script_wrapper_visitor_class.nvc = internal global ptr null, align 8, !dbg !0
@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [297 x i8] c"Assertion failed: (%s), function %s, file %s, line %d.\0AThis is a bug, please report it at\0Ahttps://github.com/genometools/genometools/issues\0APlease make sure you are running the latest release which can be found at\0Ahttp://genometools.org/pub/\0AYou can check your version number with `gt -version`.\0A\00", align 1, !dbg !15
@.str.1 = private unnamed_addr constant [3 x i8] c"nv\00", align 1, !dbg !21
@__func__.script_wrapper_visitor_free = private unnamed_addr constant [28 x i8] c"script_wrapper_visitor_free\00", align 1, !dbg !26
@.str.2 = private unnamed_addr constant [38 x i8] c"src/extended/script_wrapper_visitor.c\00", align 1, !dbg !32
@.str.3 = private unnamed_addr constant [30 x i8] c"!err || !gt_error_is_set(err)\00", align 1, !dbg !37
@__func__.script_wrapper_visitor_comment_node = private unnamed_addr constant [36 x i8] c"script_wrapper_visitor_comment_node\00", align 1, !dbg !42
@__func__.script_wrapper_visitor_feature_node = private unnamed_addr constant [36 x i8] c"script_wrapper_visitor_feature_node\00", align 1, !dbg !47
@__func__.script_wrapper_visitor_region_node = private unnamed_addr constant [35 x i8] c"script_wrapper_visitor_region_node\00", align 1, !dbg !49
@__func__.script_wrapper_visitor_sequence_node = private unnamed_addr constant [37 x i8] c"script_wrapper_visitor_sequence_node\00", align 1, !dbg !54
@__func__.script_wrapper_visitor_eof_node = private unnamed_addr constant [32 x i8] c"script_wrapper_visitor_eof_node\00", align 1, !dbg !59
@__func__.script_wrapper_visitor_meta_node = private unnamed_addr constant [33 x i8] c"script_wrapper_visitor_meta_node\00", align 1, !dbg !64

; Function Attrs: nounwind uwtable
define ptr @gt_script_wrapper_visitor_class() #0 !dbg !2 {
entry:
  call void @gt_class_alloc_lock_enter_func(), !dbg !76
  %0 = load ptr, ptr @gt_script_wrapper_visitor_class.nvc, align 8, !dbg !77, !tbaa !79
  %tobool = icmp ne ptr %0, null, !dbg !77
  br i1 %tobool, label %if.end, label %if.then, !dbg !83

if.then:                                          ; preds = %entry
  %call = call ptr @gt_node_visitor_class_new(i64 noundef 72, ptr noundef @script_wrapper_visitor_free, ptr noundef @script_wrapper_visitor_comment_node, ptr noundef @script_wrapper_visitor_feature_node, ptr noundef @script_wrapper_visitor_region_node, ptr noundef @script_wrapper_visitor_sequence_node, ptr noundef @script_wrapper_visitor_eof_node), !dbg !84
  store ptr %call, ptr @gt_script_wrapper_visitor_class.nvc, align 8, !dbg !86, !tbaa !79
  %1 = load ptr, ptr @gt_script_wrapper_visitor_class.nvc, align 8, !dbg !87, !tbaa !79
  call void @gt_node_visitor_class_set_meta_node_func(ptr noundef %1, ptr noundef @script_wrapper_visitor_meta_node), !dbg !88
  br label %if.end, !dbg !89

if.end:                                           ; preds = %if.then, %entry
  call void @gt_class_alloc_lock_leave_func(), !dbg !90
  %2 = load ptr, ptr @gt_script_wrapper_visitor_class.nvc, align 8, !dbg !91, !tbaa !79
  ret ptr %2, !dbg !92
}

declare !dbg !93 void @gt_class_alloc_lock_enter_func() #1

declare !dbg !97 ptr @gt_node_visitor_class_new(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal void @script_wrapper_visitor_free(ptr noundef %nv) #0 !dbg !161 {
entry:
  %nv.addr = alloca ptr, align 8
  %swv = alloca ptr, align 8
  store ptr %nv, ptr %nv.addr, align 8, !tbaa !79
    #dbg_declare(ptr %nv.addr, !163, !DIExpression(), !208)
  call void @llvm.lifetime.start.p0(i64 8, ptr %swv) #4, !dbg !209
    #dbg_declare(ptr %swv, !164, !DIExpression(), !210)
  br label %do.body, !dbg !211

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %nv.addr, align 8, !dbg !212, !tbaa !79
  %tobool = icmp ne ptr %0, null, !dbg !212
  br i1 %tobool, label %if.end, label %if.then, !dbg !215

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !216, !tbaa !79
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @__func__.script_wrapper_visitor_free, ptr noundef @.str.2, i32 noundef 42), !dbg !216
  call void @abort() #5, !dbg !216
  unreachable, !dbg !216

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !215

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !215

do.end:                                           ; preds = %do.cond
  %call1 = call ptr @gt_script_wrapper_visitor_class(), !dbg !218
  %2 = load ptr, ptr %nv.addr, align 8, !dbg !218, !tbaa !79
  %call2 = call ptr @gt_node_visitor_cast(ptr noundef %call1, ptr noundef %2), !dbg !218
  store ptr %call2, ptr %swv, align 8, !dbg !219, !tbaa !79
  %3 = load ptr, ptr %swv, align 8, !dbg !220, !tbaa !79
  %free_func = getelementptr inbounds %struct.GtScriptWrapperVisitor, ptr %3, i32 0, i32 7, !dbg !222
  %4 = load ptr, ptr %free_func, align 8, !dbg !222, !tbaa !223
  %tobool3 = icmp ne ptr %4, null, !dbg !220
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !226

if.then4:                                         ; preds = %do.end
  %5 = load ptr, ptr %swv, align 8, !dbg !227, !tbaa !79
  %free_func5 = getelementptr inbounds %struct.GtScriptWrapperVisitor, ptr %5, i32 0, i32 7, !dbg !228
  %6 = load ptr, ptr %free_func5, align 8, !dbg !228, !tbaa !223
  call void %6(ptr noundef null), !dbg !227
  br label %if.end6, !dbg !227

if.end6:                                          ; preds = %if.then4, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %swv) #4, !dbg !229
  ret void, !dbg !229
}

; Function Attrs: nounwind uwtable
define internal i32 @script_wrapper_visitor_comment_node(ptr noundef %nv, ptr noundef %cn, ptr noundef %err) #0 !dbg !230 {
entry:
  %nv.addr = alloca ptr, align 8
  %cn.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %swv = alloca ptr, align 8
  %had_err = alloca i32, align 4
  store ptr %nv, ptr %nv.addr, align 8, !tbaa !79
    #dbg_declare(ptr %nv.addr, !232, !DIExpression(), !237)
  store ptr %cn, ptr %cn.addr, align 8, !tbaa !79
    #dbg_declare(ptr %cn.addr, !233, !DIExpression(), !238)
  store ptr %err, ptr %err.addr, align 8, !tbaa !79
    #dbg_declare(ptr %err.addr, !234, !DIExpression(), !239)
  call void @llvm.lifetime.start.p0(i64 8, ptr %swv) #4, !dbg !240
    #dbg_declare(ptr %swv, !235, !DIExpression(), !241)
  call void @llvm.lifetime.start.p0(i64 4, ptr %had_err) #4, !dbg !242
    #dbg_declare(ptr %had_err, !236, !DIExpression(), !243)
  store i32 0, ptr %had_err, align 4, !dbg !243, !tbaa !244
  br label %do.body, !dbg !246

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %err.addr, align 8, !dbg !247, !tbaa !79
  %tobool = icmp ne ptr %0, null, !dbg !247
  br i1 %tobool, label %lor.lhs.false, label %if.end, !dbg !247

lor.lhs.false:                                    ; preds = %do.body
  %1 = load ptr, ptr %err.addr, align 8, !dbg !247, !tbaa !79
  %call = call zeroext i1 @gt_error_is_set(ptr noundef %1), !dbg !247
  br i1 %call, label %if.then, label %if.end, !dbg !250

if.then:                                          ; preds = %lor.lhs.false
  %2 = load ptr, ptr @stderr, align 8, !dbg !251, !tbaa !79
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.3, ptr noundef @__func__.script_wrapper_visitor_comment_node, ptr noundef @.str.2, i32 noundef 80), !dbg !251
  call void @abort() #5, !dbg !251
  unreachable, !dbg !251

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.cond, !dbg !250

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !250

do.end:                                           ; preds = %do.cond
  %call2 = call ptr @gt_script_wrapper_visitor_class(), !dbg !253
  %3 = load ptr, ptr %nv.addr, align 8, !dbg !253, !tbaa !79
  %call3 = call ptr @gt_node_visitor_cast(ptr noundef %call2, ptr noundef %3), !dbg !253
  store ptr %call3, ptr %swv, align 8, !dbg !254, !tbaa !79
  %4 = load ptr, ptr %swv, align 8, !dbg !255, !tbaa !79
  %comment_node_func = getelementptr inbounds %struct.GtScriptWrapperVisitor, ptr %4, i32 0, i32 1, !dbg !257
  %5 = load ptr, ptr %comment_node_func, align 8, !dbg !257, !tbaa !258
  %tobool4 = icmp ne ptr %5, null, !dbg !255
  br i1 %tobool4, label %if.then5, label %if.end8, !dbg !259

if.then5:                                         ; preds = %do.end
  %6 = load ptr, ptr %swv, align 8, !dbg !260, !tbaa !79
  %comment_node_func6 = getelementptr inbounds %struct.GtScriptWrapperVisitor, ptr %6, i32 0, i32 1, !dbg !261
  %7 = load ptr, ptr %comment_node_func6, align 8, !dbg !261, !tbaa !258
  %8 = load ptr, ptr %cn.addr, align 8, !dbg !262, !tbaa !79
  %9 = load ptr, ptr %err.addr, align 8, !dbg !263, !tbaa !79
  %call7 = call i32 %7(ptr noundef %8, ptr noundef %9), !dbg !260
  store i32 %call7, ptr %had_err, align 4, !dbg !264, !tbaa !244
  br label %if.end8, !dbg !265

if.end8:                                          ; preds = %if.then5, %do.end
  %10 = load i32, ptr %had_err, align 4, !dbg !266, !tbaa !244
  call void @llvm.lifetime.end.p0(i64 4, ptr %had_err) #4, !dbg !267
  call void @llvm.lifetime.end.p0(i64 8, ptr %swv) #4, !dbg !267
  ret i32 %10, !dbg !268
}

; Function Attrs: nounwind uwtable
define internal i32 @script_wrapper_visitor_feature_node(ptr noundef %nv, ptr noundef %fn, ptr noundef %err) #0 !dbg !269 {
entry:
  %nv.addr = alloca ptr, align 8
  %fn.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %swv = alloca ptr, align 8
  %had_err = alloca i32, align 4
  store ptr %nv, ptr %nv.addr, align 8, !tbaa !79
    #dbg_declare(ptr %nv.addr, !271, !DIExpression(), !276)
  store ptr %fn, ptr %fn.addr, align 8, !tbaa !79
    #dbg_declare(ptr %fn.addr, !272, !DIExpression(), !277)
  store ptr %err, ptr %err.addr, align 8, !tbaa !79
    #dbg_declare(ptr %err.addr, !273, !DIExpression(), !278)
  call void @llvm.lifetime.start.p0(i64 8, ptr %swv) #4, !dbg !279
    #dbg_declare(ptr %swv, !274, !DIExpression(), !280)
  call void @llvm.lifetime.start.p0(i64 4, ptr %had_err) #4, !dbg !281
    #dbg_declare(ptr %had_err, !275, !DIExpression(), !282)
  store i32 0, ptr %had_err, align 4, !dbg !282, !tbaa !244
  br label %do.body, !dbg !283

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %err.addr, align 8, !dbg !284, !tbaa !79
  %tobool = icmp ne ptr %0, null, !dbg !284
  br i1 %tobool, label %lor.lhs.false, label %if.end, !dbg !284

lor.lhs.false:                                    ; preds = %do.body
  %1 = load ptr, ptr %err.addr, align 8, !dbg !284, !tbaa !79
  %call = call zeroext i1 @gt_error_is_set(ptr noundef %1), !dbg !284
  br i1 %call, label %if.then, label %if.end, !dbg !287

if.then:                                          ; preds = %lor.lhs.false
  %2 = load ptr, ptr @stderr, align 8, !dbg !288, !tbaa !79
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.3, ptr noundef @__func__.script_wrapper_visitor_feature_node, ptr noundef @.str.2, i32 noundef 54), !dbg !288
  call void @abort() #5, !dbg !288
  unreachable, !dbg !288

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.cond, !dbg !287

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !287

do.end:                                           ; preds = %do.cond
  %call2 = call ptr @gt_script_wrapper_visitor_class(), !dbg !290
  %3 = load ptr, ptr %nv.addr, align 8, !dbg !290, !tbaa !79
  %call3 = call ptr @gt_node_visitor_cast(ptr noundef %call2, ptr noundef %3), !dbg !290
  store ptr %call3, ptr %swv, align 8, !dbg !291, !tbaa !79
  %4 = load ptr, ptr %swv, align 8, !dbg !292, !tbaa !79
  %feature_node_func = getelementptr inbounds %struct.GtScriptWrapperVisitor, ptr %4, i32 0, i32 2, !dbg !294
  %5 = load ptr, ptr %feature_node_func, align 8, !dbg !294, !tbaa !295
  %tobool4 = icmp ne ptr %5, null, !dbg !292
  br i1 %tobool4, label %if.then5, label %if.end8, !dbg !296

if.then5:                                         ; preds = %do.end
  %6 = load ptr, ptr %swv, align 8, !dbg !297, !tbaa !79
  %feature_node_func6 = getelementptr inbounds %struct.GtScriptWrapperVisitor, ptr %6, i32 0, i32 2, !dbg !298
  %7 = load ptr, ptr %feature_node_func6, align 8, !dbg !298, !tbaa !295
  %8 = load ptr, ptr %fn.addr, align 8, !dbg !299, !tbaa !79
  %9 = load ptr, ptr %err.addr, align 8, !dbg !300, !tbaa !79
  %call7 = call i32 %7(ptr noundef %8, ptr noundef %9), !dbg !297
  store i32 %call7, ptr %had_err, align 4, !dbg !301, !tbaa !244
  br label %if.end8, !dbg !302

if.end8:                                          ; preds = %if.then5, %do.end
  %10 = load i32, ptr %had_err, align 4, !dbg !303, !tbaa !244
  call void @llvm.lifetime.end.p0(i64 4, ptr %had_err) #4, !dbg !304
  call void @llvm.lifetime.end.p0(i64 8, ptr %swv) #4, !dbg !304
  ret i32 %10, !dbg !305
}

; Function Attrs: nounwind uwtable
define internal i32 @script_wrapper_visitor_region_node(ptr noundef %nv, ptr noundef %rn, ptr noundef %err) #0 !dbg !306 {
entry:
  %nv.addr = alloca ptr, align 8
  %rn.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %swv = alloca ptr, align 8
  %had_err = alloca i32, align 4
  store ptr %nv, ptr %nv.addr, align 8, !tbaa !79
    #dbg_declare(ptr %nv.addr, !308, !DIExpression(), !313)
  store ptr %rn, ptr %rn.addr, align 8, !tbaa !79
    #dbg_declare(ptr %rn.addr, !309, !DIExpression(), !314)
  store ptr %err, ptr %err.addr, align 8, !tbaa !79
    #dbg_declare(ptr %err.addr, !310, !DIExpression(), !315)
  call void @llvm.lifetime.start.p0(i64 8, ptr %swv) #4, !dbg !316
    #dbg_declare(ptr %swv, !311, !DIExpression(), !317)
  call void @llvm.lifetime.start.p0(i64 4, ptr %had_err) #4, !dbg !318
    #dbg_declare(ptr %had_err, !312, !DIExpression(), !319)
  store i32 0, ptr %had_err, align 4, !dbg !319, !tbaa !244
  br label %do.body, !dbg !320

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %err.addr, align 8, !dbg !321, !tbaa !79
  %tobool = icmp ne ptr %0, null, !dbg !321
  br i1 %tobool, label %lor.lhs.false, label %if.end, !dbg !321

lor.lhs.false:                                    ; preds = %do.body
  %1 = load ptr, ptr %err.addr, align 8, !dbg !321, !tbaa !79
  %call = call zeroext i1 @gt_error_is_set(ptr noundef %1), !dbg !321
  br i1 %call, label %if.then, label %if.end, !dbg !324

if.then:                                          ; preds = %lor.lhs.false
  %2 = load ptr, ptr @stderr, align 8, !dbg !325, !tbaa !79
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.3, ptr noundef @__func__.script_wrapper_visitor_region_node, ptr noundef @.str.2, i32 noundef 67), !dbg !325
  call void @abort() #5, !dbg !325
  unreachable, !dbg !325

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.cond, !dbg !324

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !324

do.end:                                           ; preds = %do.cond
  %call2 = call ptr @gt_script_wrapper_visitor_class(), !dbg !327
  %3 = load ptr, ptr %nv.addr, align 8, !dbg !327, !tbaa !79
  %call3 = call ptr @gt_node_visitor_cast(ptr noundef %call2, ptr noundef %3), !dbg !327
  store ptr %call3, ptr %swv, align 8, !dbg !328, !tbaa !79
  %4 = load ptr, ptr %swv, align 8, !dbg !329, !tbaa !79
  %region_node_func = getelementptr inbounds %struct.GtScriptWrapperVisitor, ptr %4, i32 0, i32 3, !dbg !331
  %5 = load ptr, ptr %region_node_func, align 8, !dbg !331, !tbaa !332
  %tobool4 = icmp ne ptr %5, null, !dbg !329
  br i1 %tobool4, label %if.then5, label %if.end8, !dbg !333

if.then5:                                         ; preds = %do.end
  %6 = load ptr, ptr %swv, align 8, !dbg !334, !tbaa !79
  %region_node_func6 = getelementptr inbounds %struct.GtScriptWrapperVisitor, ptr %6, i32 0, i32 3, !dbg !335
  %7 = load ptr, ptr %region_node_func6, align 8, !dbg !335, !tbaa !332
  %8 = load ptr, ptr %rn.addr, align 8, !dbg !336, !tbaa !79
  %9 = load ptr, ptr %err.addr, align 8, !dbg !337, !tbaa !79
  %call7 = call i32 %7(ptr noundef %8, ptr noundef %9), !dbg !334
  store i32 %call7, ptr %had_err, align 4, !dbg !338, !tbaa !244
  br label %if.end8, !dbg !339

if.end8:                                          ; preds = %if.then5, %do.end
  %10 = load i32, ptr %had_err, align 4, !dbg !340, !tbaa !244
  call void @llvm.lifetime.end.p0(i64 4, ptr %had_err) #4, !dbg !341
  call void @llvm.lifetime.end.p0(i64 8, ptr %swv) #4, !dbg !341
  ret i32 %10, !dbg !342
}

; Function Attrs: nounwind uwtable
define internal i32 @script_wrapper_visitor_sequence_node(ptr noundef %nv, ptr noundef %sn, ptr noundef %err) #0 !dbg !343 {
entry:
  %nv.addr = alloca ptr, align 8
  %sn.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %swv = alloca ptr, align 8
  %had_err = alloca i32, align 4
  store ptr %nv, ptr %nv.addr, align 8, !tbaa !79
    #dbg_declare(ptr %nv.addr, !345, !DIExpression(), !350)
  store ptr %sn, ptr %sn.addr, align 8, !tbaa !79
    #dbg_declare(ptr %sn.addr, !346, !DIExpression(), !351)
  store ptr %err, ptr %err.addr, align 8, !tbaa !79
    #dbg_declare(ptr %err.addr, !347, !DIExpression(), !352)
  call void @llvm.lifetime.start.p0(i64 8, ptr %swv) #4, !dbg !353
    #dbg_declare(ptr %swv, !348, !DIExpression(), !354)
  call void @llvm.lifetime.start.p0(i64 4, ptr %had_err) #4, !dbg !355
    #dbg_declare(ptr %had_err, !349, !DIExpression(), !356)
  store i32 0, ptr %had_err, align 4, !dbg !356, !tbaa !244
  br label %do.body, !dbg !357

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %err.addr, align 8, !dbg !358, !tbaa !79
  %tobool = icmp ne ptr %0, null, !dbg !358
  br i1 %tobool, label %lor.lhs.false, label %if.end, !dbg !358

lor.lhs.false:                                    ; preds = %do.body
  %1 = load ptr, ptr %err.addr, align 8, !dbg !358, !tbaa !79
  %call = call zeroext i1 @gt_error_is_set(ptr noundef %1), !dbg !358
  br i1 %call, label %if.then, label %if.end, !dbg !361

if.then:                                          ; preds = %lor.lhs.false
  %2 = load ptr, ptr @stderr, align 8, !dbg !362, !tbaa !79
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.3, ptr noundef @__func__.script_wrapper_visitor_sequence_node, ptr noundef @.str.2, i32 noundef 93), !dbg !362
  call void @abort() #5, !dbg !362
  unreachable, !dbg !362

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.cond, !dbg !361

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !361

do.end:                                           ; preds = %do.cond
  %call2 = call ptr @gt_script_wrapper_visitor_class(), !dbg !364
  %3 = load ptr, ptr %nv.addr, align 8, !dbg !364, !tbaa !79
  %call3 = call ptr @gt_node_visitor_cast(ptr noundef %call2, ptr noundef %3), !dbg !364
  store ptr %call3, ptr %swv, align 8, !dbg !365, !tbaa !79
  %4 = load ptr, ptr %swv, align 8, !dbg !366, !tbaa !79
  %sequence_node_func = getelementptr inbounds %struct.GtScriptWrapperVisitor, ptr %4, i32 0, i32 4, !dbg !368
  %5 = load ptr, ptr %sequence_node_func, align 8, !dbg !368, !tbaa !369
  %tobool4 = icmp ne ptr %5, null, !dbg !366
  br i1 %tobool4, label %if.then5, label %if.end8, !dbg !370

if.then5:                                         ; preds = %do.end
  %6 = load ptr, ptr %swv, align 8, !dbg !371, !tbaa !79
  %sequence_node_func6 = getelementptr inbounds %struct.GtScriptWrapperVisitor, ptr %6, i32 0, i32 4, !dbg !372
  %7 = load ptr, ptr %sequence_node_func6, align 8, !dbg !372, !tbaa !369
  %8 = load ptr, ptr %sn.addr, align 8, !dbg !373, !tbaa !79
  %9 = load ptr, ptr %err.addr, align 8, !dbg !374, !tbaa !79
  %call7 = call i32 %7(ptr noundef %8, ptr noundef %9), !dbg !371
  store i32 %call7, ptr %had_err, align 4, !dbg !375, !tbaa !244
  br label %if.end8, !dbg !376

if.end8:                                          ; preds = %if.then5, %do.end
  %10 = load i32, ptr %had_err, align 4, !dbg !377, !tbaa !244
  call void @llvm.lifetime.end.p0(i64 4, ptr %had_err) #4, !dbg !378
  call void @llvm.lifetime.end.p0(i64 8, ptr %swv) #4, !dbg !378
  ret i32 %10, !dbg !379
}

; Function Attrs: nounwind uwtable
define internal i32 @script_wrapper_visitor_eof_node(ptr noundef %nv, ptr noundef %rn, ptr noundef %err) #0 !dbg !380 {
entry:
  %nv.addr = alloca ptr, align 8
  %rn.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %swv = alloca ptr, align 8
  %had_err = alloca i32, align 4
  store ptr %nv, ptr %nv.addr, align 8, !tbaa !79
    #dbg_declare(ptr %nv.addr, !382, !DIExpression(), !387)
  store ptr %rn, ptr %rn.addr, align 8, !tbaa !79
    #dbg_declare(ptr %rn.addr, !383, !DIExpression(), !388)
  store ptr %err, ptr %err.addr, align 8, !tbaa !79
    #dbg_declare(ptr %err.addr, !384, !DIExpression(), !389)
  call void @llvm.lifetime.start.p0(i64 8, ptr %swv) #4, !dbg !390
    #dbg_declare(ptr %swv, !385, !DIExpression(), !391)
  call void @llvm.lifetime.start.p0(i64 4, ptr %had_err) #4, !dbg !392
    #dbg_declare(ptr %had_err, !386, !DIExpression(), !393)
  store i32 0, ptr %had_err, align 4, !dbg !393, !tbaa !244
  br label %do.body, !dbg !394

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %err.addr, align 8, !dbg !395, !tbaa !79
  %tobool = icmp ne ptr %0, null, !dbg !395
  br i1 %tobool, label %lor.lhs.false, label %if.end, !dbg !395

lor.lhs.false:                                    ; preds = %do.body
  %1 = load ptr, ptr %err.addr, align 8, !dbg !395, !tbaa !79
  %call = call zeroext i1 @gt_error_is_set(ptr noundef %1), !dbg !395
  br i1 %call, label %if.then, label %if.end, !dbg !398

if.then:                                          ; preds = %lor.lhs.false
  %2 = load ptr, ptr @stderr, align 8, !dbg !399, !tbaa !79
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.3, ptr noundef @__func__.script_wrapper_visitor_eof_node, ptr noundef @.str.2, i32 noundef 119), !dbg !399
  call void @abort() #5, !dbg !399
  unreachable, !dbg !399

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.cond, !dbg !398

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !398

do.end:                                           ; preds = %do.cond
  %call2 = call ptr @gt_script_wrapper_visitor_class(), !dbg !401
  %3 = load ptr, ptr %nv.addr, align 8, !dbg !401, !tbaa !79
  %call3 = call ptr @gt_node_visitor_cast(ptr noundef %call2, ptr noundef %3), !dbg !401
  store ptr %call3, ptr %swv, align 8, !dbg !402, !tbaa !79
  %4 = load ptr, ptr %swv, align 8, !dbg !403, !tbaa !79
  %eof_node_func = getelementptr inbounds %struct.GtScriptWrapperVisitor, ptr %4, i32 0, i32 6, !dbg !405
  %5 = load ptr, ptr %eof_node_func, align 8, !dbg !405, !tbaa !406
  %tobool4 = icmp ne ptr %5, null, !dbg !403
  br i1 %tobool4, label %if.then5, label %if.end8, !dbg !407

if.then5:                                         ; preds = %do.end
  %6 = load ptr, ptr %swv, align 8, !dbg !408, !tbaa !79
  %eof_node_func6 = getelementptr inbounds %struct.GtScriptWrapperVisitor, ptr %6, i32 0, i32 6, !dbg !409
  %7 = load ptr, ptr %eof_node_func6, align 8, !dbg !409, !tbaa !406
  %8 = load ptr, ptr %rn.addr, align 8, !dbg !410, !tbaa !79
  %9 = load ptr, ptr %err.addr, align 8, !dbg !411, !tbaa !79
  %call7 = call i32 %7(ptr noundef %8, ptr noundef %9), !dbg !408
  store i32 %call7, ptr %had_err, align 4, !dbg !412, !tbaa !244
  br label %if.end8, !dbg !413

if.end8:                                          ; preds = %if.then5, %do.end
  %10 = load i32, ptr %had_err, align 4, !dbg !414, !tbaa !244
  call void @llvm.lifetime.end.p0(i64 4, ptr %had_err) #4, !dbg !415
  call void @llvm.lifetime.end.p0(i64 8, ptr %swv) #4, !dbg !415
  ret i32 %10, !dbg !416
}

declare !dbg !417 void @gt_node_visitor_class_set_meta_node_func(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @script_wrapper_visitor_meta_node(ptr noundef %nv, ptr noundef %rn, ptr noundef %err) #0 !dbg !424 {
entry:
  %nv.addr = alloca ptr, align 8
  %rn.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %swv = alloca ptr, align 8
  %had_err = alloca i32, align 4
  store ptr %nv, ptr %nv.addr, align 8, !tbaa !79
    #dbg_declare(ptr %nv.addr, !426, !DIExpression(), !431)
  store ptr %rn, ptr %rn.addr, align 8, !tbaa !79
    #dbg_declare(ptr %rn.addr, !427, !DIExpression(), !432)
  store ptr %err, ptr %err.addr, align 8, !tbaa !79
    #dbg_declare(ptr %err.addr, !428, !DIExpression(), !433)
  call void @llvm.lifetime.start.p0(i64 8, ptr %swv) #4, !dbg !434
    #dbg_declare(ptr %swv, !429, !DIExpression(), !435)
  call void @llvm.lifetime.start.p0(i64 4, ptr %had_err) #4, !dbg !436
    #dbg_declare(ptr %had_err, !430, !DIExpression(), !437)
  store i32 0, ptr %had_err, align 4, !dbg !437, !tbaa !244
  br label %do.body, !dbg !438

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %err.addr, align 8, !dbg !439, !tbaa !79
  %tobool = icmp ne ptr %0, null, !dbg !439
  br i1 %tobool, label %lor.lhs.false, label %if.end, !dbg !439

lor.lhs.false:                                    ; preds = %do.body
  %1 = load ptr, ptr %err.addr, align 8, !dbg !439, !tbaa !79
  %call = call zeroext i1 @gt_error_is_set(ptr noundef %1), !dbg !439
  br i1 %call, label %if.then, label %if.end, !dbg !442

if.then:                                          ; preds = %lor.lhs.false
  %2 = load ptr, ptr @stderr, align 8, !dbg !443, !tbaa !79
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.3, ptr noundef @__func__.script_wrapper_visitor_meta_node, ptr noundef @.str.2, i32 noundef 106), !dbg !443
  call void @abort() #5, !dbg !443
  unreachable, !dbg !443

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.cond, !dbg !442

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !442

do.end:                                           ; preds = %do.cond
  %call2 = call ptr @gt_script_wrapper_visitor_class(), !dbg !445
  %3 = load ptr, ptr %nv.addr, align 8, !dbg !445, !tbaa !79
  %call3 = call ptr @gt_node_visitor_cast(ptr noundef %call2, ptr noundef %3), !dbg !445
  store ptr %call3, ptr %swv, align 8, !dbg !446, !tbaa !79
  %4 = load ptr, ptr %swv, align 8, !dbg !447, !tbaa !79
  %meta_node_func = getelementptr inbounds %struct.GtScriptWrapperVisitor, ptr %4, i32 0, i32 5, !dbg !449
  %5 = load ptr, ptr %meta_node_func, align 8, !dbg !449, !tbaa !450
  %tobool4 = icmp ne ptr %5, null, !dbg !447
  br i1 %tobool4, label %if.then5, label %if.end8, !dbg !451

if.then5:                                         ; preds = %do.end
  %6 = load ptr, ptr %swv, align 8, !dbg !452, !tbaa !79
  %meta_node_func6 = getelementptr inbounds %struct.GtScriptWrapperVisitor, ptr %6, i32 0, i32 5, !dbg !453
  %7 = load ptr, ptr %meta_node_func6, align 8, !dbg !453, !tbaa !450
  %8 = load ptr, ptr %rn.addr, align 8, !dbg !454, !tbaa !79
  %9 = load ptr, ptr %err.addr, align 8, !dbg !455, !tbaa !79
  %call7 = call i32 %7(ptr noundef %8, ptr noundef %9), !dbg !452
  store i32 %call7, ptr %had_err, align 4, !dbg !456, !tbaa !244
  br label %if.end8, !dbg !457

if.end8:                                          ; preds = %if.then5, %do.end
  %10 = load i32, ptr %had_err, align 4, !dbg !458, !tbaa !244
  call void @llvm.lifetime.end.p0(i64 4, ptr %had_err) #4, !dbg !459
  call void @llvm.lifetime.end.p0(i64 8, ptr %swv) #4, !dbg !459
  ret i32 %10, !dbg !460
}

declare !dbg !461 void @gt_class_alloc_lock_leave_func() #1

; Function Attrs: nounwind uwtable
define ptr @gt_script_wrapper_visitor_new(ptr noundef %cn, ptr noundef %fn, ptr noundef %rn, ptr noundef %sn, ptr noundef %mn, ptr noundef %en, ptr noundef %free_func) #0 !dbg !462 {
entry:
  %cn.addr = alloca ptr, align 8
  %fn.addr = alloca ptr, align 8
  %rn.addr = alloca ptr, align 8
  %sn.addr = alloca ptr, align 8
  %mn.addr = alloca ptr, align 8
  %en.addr = alloca ptr, align 8
  %free_func.addr = alloca ptr, align 8
  %nv = alloca ptr, align 8
  %swv = alloca ptr, align 8
  store ptr %cn, ptr %cn.addr, align 8, !tbaa !79
    #dbg_declare(ptr %cn.addr, !466, !DIExpression(), !475)
  store ptr %fn, ptr %fn.addr, align 8, !tbaa !79
    #dbg_declare(ptr %fn.addr, !467, !DIExpression(), !476)
  store ptr %rn, ptr %rn.addr, align 8, !tbaa !79
    #dbg_declare(ptr %rn.addr, !468, !DIExpression(), !477)
  store ptr %sn, ptr %sn.addr, align 8, !tbaa !79
    #dbg_declare(ptr %sn.addr, !469, !DIExpression(), !478)
  store ptr %mn, ptr %mn.addr, align 8, !tbaa !79
    #dbg_declare(ptr %mn.addr, !470, !DIExpression(), !479)
  store ptr %en, ptr %en.addr, align 8, !tbaa !79
    #dbg_declare(ptr %en.addr, !471, !DIExpression(), !480)
  store ptr %free_func, ptr %free_func.addr, align 8, !tbaa !79
    #dbg_declare(ptr %free_func.addr, !472, !DIExpression(), !481)
  call void @llvm.lifetime.start.p0(i64 8, ptr %nv) #4, !dbg !482
    #dbg_declare(ptr %nv, !473, !DIExpression(), !483)
  call void @llvm.lifetime.start.p0(i64 8, ptr %swv) #4, !dbg !484
    #dbg_declare(ptr %swv, !474, !DIExpression(), !485)
  %call = call ptr @gt_script_wrapper_visitor_class(), !dbg !486
  %call1 = call ptr @gt_node_visitor_create(ptr noundef %call), !dbg !487
  store ptr %call1, ptr %nv, align 8, !dbg !488, !tbaa !79
  %call2 = call ptr @gt_script_wrapper_visitor_class(), !dbg !489
  %0 = load ptr, ptr %nv, align 8, !dbg !489, !tbaa !79
  %call3 = call ptr @gt_node_visitor_cast(ptr noundef %call2, ptr noundef %0), !dbg !489
  store ptr %call3, ptr %swv, align 8, !dbg !490, !tbaa !79
  %1 = load ptr, ptr %cn.addr, align 8, !dbg !491, !tbaa !79
  %2 = load ptr, ptr %swv, align 8, !dbg !492, !tbaa !79
  %comment_node_func = getelementptr inbounds %struct.GtScriptWrapperVisitor, ptr %2, i32 0, i32 1, !dbg !493
  store ptr %1, ptr %comment_node_func, align 8, !dbg !494, !tbaa !258
  %3 = load ptr, ptr %fn.addr, align 8, !dbg !495, !tbaa !79
  %4 = load ptr, ptr %swv, align 8, !dbg !496, !tbaa !79
  %feature_node_func = getelementptr inbounds %struct.GtScriptWrapperVisitor, ptr %4, i32 0, i32 2, !dbg !497
  store ptr %3, ptr %feature_node_func, align 8, !dbg !498, !tbaa !295
  %5 = load ptr, ptr %rn.addr, align 8, !dbg !499, !tbaa !79
  %6 = load ptr, ptr %swv, align 8, !dbg !500, !tbaa !79
  %region_node_func = getelementptr inbounds %struct.GtScriptWrapperVisitor, ptr %6, i32 0, i32 3, !dbg !501
  store ptr %5, ptr %region_node_func, align 8, !dbg !502, !tbaa !332
  %7 = load ptr, ptr %sn.addr, align 8, !dbg !503, !tbaa !79
  %8 = load ptr, ptr %swv, align 8, !dbg !504, !tbaa !79
  %sequence_node_func = getelementptr inbounds %struct.GtScriptWrapperVisitor, ptr %8, i32 0, i32 4, !dbg !505
  store ptr %7, ptr %sequence_node_func, align 8, !dbg !506, !tbaa !369
  %9 = load ptr, ptr %mn.addr, align 8, !dbg !507, !tbaa !79
  %10 = load ptr, ptr %swv, align 8, !dbg !508, !tbaa !79
  %meta_node_func = getelementptr inbounds %struct.GtScriptWrapperVisitor, ptr %10, i32 0, i32 5, !dbg !509
  store ptr %9, ptr %meta_node_func, align 8, !dbg !510, !tbaa !450
  %11 = load ptr, ptr %en.addr, align 8, !dbg !511, !tbaa !79
  %12 = load ptr, ptr %swv, align 8, !dbg !512, !tbaa !79
  %eof_node_func = getelementptr inbounds %struct.GtScriptWrapperVisitor, ptr %12, i32 0, i32 6, !dbg !513
  store ptr %11, ptr %eof_node_func, align 8, !dbg !514, !tbaa !406
  %13 = load ptr, ptr %free_func.addr, align 8, !dbg !515, !tbaa !79
  %14 = load ptr, ptr %swv, align 8, !dbg !516, !tbaa !79
  %free_func4 = getelementptr inbounds %struct.GtScriptWrapperVisitor, ptr %14, i32 0, i32 7, !dbg !517
  store ptr %13, ptr %free_func4, align 8, !dbg !518, !tbaa !223
  %15 = load ptr, ptr %nv, align 8, !dbg !519, !tbaa !79
  call void @llvm.lifetime.end.p0(i64 8, ptr %swv) #4, !dbg !520
  call void @llvm.lifetime.end.p0(i64 8, ptr %nv) #4, !dbg !520
  ret ptr %15, !dbg !521
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #2

declare !dbg !522 ptr @gt_node_visitor_create(ptr noundef) #1

declare !dbg !525 ptr @gt_node_visitor_cast(ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #2

declare !dbg !528 i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noreturn nounwind
declare !dbg !592 void @abort() #3

declare !dbg !594 zeroext i1 @gt_error_is_set(ptr noundef) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.dbg.cu = !{!11}
!llvm.module.flags = !{!70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "nvc", scope: !2, file: !3, line: 128, type: !69, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "gt_script_wrapper_visitor_class", scope: !3, file: !3, line: 126, type: !4, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11)
!3 = !DIFile(filename: "src/extended/script_wrapper_visitor.c", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "e8888cc57e05c110614f95be816463e5")
!4 = !DISubroutineType(types: !5)
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtNodeVisitorClass", file: !9, line: 67, baseType: !10)
!9 = !DIFile(filename: "src/extended/node_visitor_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "500f2847f6803702c23b27c7a511e246")
!10 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtNodeVisitorClass", file: !9, line: 67, flags: DIFlagFwdDecl)
!11 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !12, globals: !14, splitDebugInlining: false, nameTableKind: None)
!12 = !{!13}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!14 = !{!0, !15, !21, !26, !32, !37, !42, !47, !49, !54, !59, !64}
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(scope: null, file: !3, line: 42, type: !17, isLocal: true, isDefinition: true)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 2376, elements: !19)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!19 = !{!20}
!20 = !DISubrange(count: 297)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(scope: null, file: !3, line: 42, type: !23, isLocal: true, isDefinition: true)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 24, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 3)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(scope: null, file: !3, line: 42, type: !28, isLocal: true, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 224, elements: !30)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!30 = !{!31}
!31 = !DISubrange(count: 28)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !3, line: 42, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 304, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 38)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !3, line: 80, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 240, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 30)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !3, line: 80, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 288, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 36)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !3, line: 54, type: !44, isLocal: true, isDefinition: true)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !3, line: 67, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 280, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 35)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !3, line: 93, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 296, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 37)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !3, line: 119, type: !61, isLocal: true, isDefinition: true)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 256, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 32)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !3, line: 106, type: !66, isLocal: true, isDefinition: true)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 264, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 33)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!70 = !{i32 7, !"Dwarf Version", i32 5}
!71 = !{i32 2, !"Debug Info Version", i32 3}
!72 = !{i32 1, !"wchar_size", i32 4}
!73 = !{i32 8, !"PIC Level", i32 2}
!74 = !{i32 7, !"uwtable", i32 2}
!75 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!76 = !DILocation(line: 129, column: 3, scope: !2)
!77 = !DILocation(line: 130, column: 8, scope: !78)
!78 = distinct !DILexicalBlock(scope: !2, file: !3, line: 130, column: 7)
!79 = !{!80, !80, i64 0}
!80 = !{!"any pointer", !81, i64 0}
!81 = !{!"omnipotent char", !82, i64 0}
!82 = !{!"Simple C/C++ TBAA"}
!83 = !DILocation(line: 130, column: 7, scope: !2)
!84 = !DILocation(line: 131, column: 11, scope: !85)
!85 = distinct !DILexicalBlock(scope: !78, file: !3, line: 130, column: 13)
!86 = !DILocation(line: 131, column: 9, scope: !85)
!87 = !DILocation(line: 138, column: 46, scope: !85)
!88 = !DILocation(line: 138, column: 5, scope: !85)
!89 = !DILocation(line: 140, column: 3, scope: !85)
!90 = !DILocation(line: 141, column: 3, scope: !2)
!91 = !DILocation(line: 142, column: 10, scope: !2)
!92 = !DILocation(line: 142, column: 3, scope: !2)
!93 = !DISubprogram(name: "gt_class_alloc_lock_enter_func", scope: !94, file: !94, line: 31, type: !95, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!94 = !DIFile(filename: "src/core/class_alloc_lock.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "625e82882b5f26cf8a14de5849419f41")
!95 = !DISubroutineType(types: !96)
!96 = !{null}
!97 = !DISubprogram(name: "gt_node_visitor_class_new", scope: !9, file: !9, line: 75, type: !98, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!98 = !DISubroutineType(types: !99)
!99 = !{!69, !100, !103, !116, !129, !137, !145, !153}
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !101, line: 70, baseType: !102)
!101 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!102 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtNodeVisitorFreeFunc", file: !9, line: 54, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{null, !107}
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtNodeVisitor", file: !9, line: 22, baseType: !109)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GtNodeVisitor", file: !9, line: 70, size: 128, elements: !110)
!110 = !{!111, !112}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "c_class", scope: !109, file: !9, line: 71, baseType: !6, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "members", scope: !109, file: !9, line: 72, baseType: !113, size: 64, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtNodeVisitorMembers", file: !9, line: 68, baseType: !115)
!115 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtNodeVisitorMembers", file: !9, line: 68, flags: DIFlagFwdDecl)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtNodeVisitorCommentNodeFunc", file: !9, line: 55, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DISubroutineType(types: !119)
!119 = !{!120, !107, !121, !125}
!120 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtCommentNode", file: !123, line: 25, baseType: !124)
!123 = !DIFile(filename: "src/extended/comment_node_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "80844168e4f34f91065dd12a35100762")
!124 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtCommentNode", file: !123, line: 25, flags: DIFlagFwdDecl)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtError", file: !127, line: 44, baseType: !128)
!127 = !DIFile(filename: "src/core/error_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "0ad6f2e2c3b3d359d3ae1d5a6962bc56")
!128 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtError", file: !127, line: 44, flags: DIFlagFwdDecl)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtNodeVisitorFeatureNodeFunc", file: !9, line: 57, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{!120, !107, !133, !125}
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtFeatureNode", file: !135, line: 61, baseType: !136)
!135 = !DIFile(filename: "src/extended/feature_node_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "8d9f1b07cc008e77bf422e0e72b408f4")
!136 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtFeatureNode", file: !135, line: 61, flags: DIFlagFwdDecl)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtNodeVisitorRegionNodeFunc", file: !9, line: 61, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DISubroutineType(types: !140)
!140 = !{!120, !107, !141, !125}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtRegionNode", file: !143, line: 23, baseType: !144)
!143 = !DIFile(filename: "src/extended/region_node_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "79c3d05ff7f3319fa3173a77d4ebf1db")
!144 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtRegionNode", file: !143, line: 23, flags: DIFlagFwdDecl)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtNodeVisitorSequenceNodeFunc", file: !9, line: 63, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{!120, !107, !149, !125}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtSequenceNode", file: !151, line: 23, baseType: !152)
!151 = !DIFile(filename: "src/extended/sequence_node_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "26952bfc0a74aff8da5152f9df9b4c67")
!152 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtSequenceNode", file: !151, line: 23, flags: DIFlagFwdDecl)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtNodeVisitorEOFNodeFunc", file: !9, line: 65, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DISubroutineType(types: !156)
!156 = !{!120, !107, !157, !125}
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtEOFNode", file: !159, line: 24, baseType: !160)
!159 = !DIFile(filename: "src/extended/eof_node_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "40074f13eaf95ceb5c8749017c1d19a7")
!160 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtEOFNode", file: !159, line: 24, flags: DIFlagFwdDecl)
!161 = distinct !DISubprogram(name: "script_wrapper_visitor_free", scope: !3, file: !3, line: 39, type: !105, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !162)
!162 = !{!163, !164}
!163 = !DILocalVariable(name: "nv", arg: 1, scope: !161, file: !3, line: 39, type: !107)
!164 = !DILocalVariable(name: "swv", scope: !161, file: !3, line: 41, type: !165)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtScriptWrapperVisitor", file: !167, line: 22, baseType: !168)
!167 = !DIFile(filename: "src/extended/script_wrapper_visitor_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "8b627ee5ca4fe639992d4f5e5e03b221")
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GtScriptWrapperVisitor", file: !3, line: 23, size: 576, elements: !169)
!169 = !{!170, !172, !177, !182, !187, !192, !201, !206}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "parent_instance", scope: !168, file: !3, line: 24, baseType: !171, size: 128)
!171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "comment_node_func", scope: !168, file: !3, line: 25, baseType: !173, size: 64, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtScriptWrapperVisitorCommentNodeFunc", file: !167, line: 27, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DISubroutineType(types: !176)
!176 = !{!120, !121, !125}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "feature_node_func", scope: !168, file: !3, line: 26, baseType: !178, size: 64, offset: 192)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtScriptWrapperVisitorFeatureNodeFunc", file: !167, line: 29, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DISubroutineType(types: !181)
!181 = !{!120, !133, !125}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "region_node_func", scope: !168, file: !3, line: 27, baseType: !183, size: 64, offset: 256)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtScriptWrapperVisitorRegionNodeFunc", file: !167, line: 31, baseType: !184)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{!120, !141, !125}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "sequence_node_func", scope: !168, file: !3, line: 28, baseType: !188, size: 64, offset: 320)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtScriptWrapperVisitorSequenceNodeFunc", file: !167, line: 33, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!120, !149, !125}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "meta_node_func", scope: !168, file: !3, line: 29, baseType: !193, size: 64, offset: 384)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtScriptWrapperVisitorMetaNodeFunc", file: !167, line: 35, baseType: !194)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!120, !197, !125}
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtMetaNode", file: !199, line: 25, baseType: !200)
!199 = !DIFile(filename: "src/extended/meta_node_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "a88f43f6df31e763e554501f417296c0")
!200 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtMetaNode", file: !199, line: 25, flags: DIFlagFwdDecl)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "eof_node_func", scope: !168, file: !3, line: 30, baseType: !202, size: 64, offset: 448)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtScriptWrapperVisitorEOFNodeFunc", file: !167, line: 37, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DISubroutineType(types: !205)
!205 = !{!120, !157, !125}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "free_func", scope: !168, file: !3, line: 31, baseType: !207, size: 64, offset: 512)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtScriptWrapperVisitorFreeFunc", file: !167, line: 26, baseType: !104)
!208 = !DILocation(line: 39, column: 56, scope: !161)
!209 = !DILocation(line: 41, column: 3, scope: !161)
!210 = !DILocation(line: 41, column: 27, scope: !161)
!211 = !DILocation(line: 42, column: 3, scope: !161)
!212 = !DILocation(line: 42, column: 3, scope: !213)
!213 = distinct !DILexicalBlock(scope: !214, file: !3, line: 42, column: 3)
!214 = distinct !DILexicalBlock(scope: !161, file: !3, line: 42, column: 3)
!215 = !DILocation(line: 42, column: 3, scope: !214)
!216 = !DILocation(line: 42, column: 3, scope: !217)
!217 = distinct !DILexicalBlock(scope: !213, file: !3, line: 42, column: 3)
!218 = !DILocation(line: 43, column: 10, scope: !161)
!219 = !DILocation(line: 43, column: 8, scope: !161)
!220 = !DILocation(line: 44, column: 7, scope: !221)
!221 = distinct !DILexicalBlock(scope: !161, file: !3, line: 44, column: 7)
!222 = !DILocation(line: 44, column: 12, scope: !221)
!223 = !{!224, !80, i64 64}
!224 = !{!"GtScriptWrapperVisitor", !225, i64 0, !80, i64 16, !80, i64 24, !80, i64 32, !80, i64 40, !80, i64 48, !80, i64 56, !80, i64 64}
!225 = !{!"GtNodeVisitor", !80, i64 0, !80, i64 8}
!226 = !DILocation(line: 44, column: 7, scope: !161)
!227 = !DILocation(line: 45, column: 5, scope: !221)
!228 = !DILocation(line: 45, column: 10, scope: !221)
!229 = !DILocation(line: 46, column: 1, scope: !161)
!230 = distinct !DISubprogram(name: "script_wrapper_visitor_comment_node", scope: !3, file: !3, line: 74, type: !118, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !231)
!231 = !{!232, !233, !234, !235, !236}
!232 = !DILocalVariable(name: "nv", arg: 1, scope: !230, file: !3, line: 74, type: !107)
!233 = !DILocalVariable(name: "cn", arg: 2, scope: !230, file: !3, line: 75, type: !121)
!234 = !DILocalVariable(name: "err", arg: 3, scope: !230, file: !3, line: 76, type: !125)
!235 = !DILocalVariable(name: "swv", scope: !230, file: !3, line: 78, type: !165)
!236 = !DILocalVariable(name: "had_err", scope: !230, file: !3, line: 79, type: !120)
!237 = !DILocation(line: 74, column: 63, scope: !230)
!238 = !DILocation(line: 75, column: 63, scope: !230)
!239 = !DILocation(line: 76, column: 57, scope: !230)
!240 = !DILocation(line: 78, column: 3, scope: !230)
!241 = !DILocation(line: 78, column: 27, scope: !230)
!242 = !DILocation(line: 79, column: 3, scope: !230)
!243 = !DILocation(line: 79, column: 7, scope: !230)
!244 = !{!245, !245, i64 0}
!245 = !{!"int", !81, i64 0}
!246 = !DILocation(line: 80, column: 3, scope: !230)
!247 = !DILocation(line: 80, column: 3, scope: !248)
!248 = distinct !DILexicalBlock(scope: !249, file: !3, line: 80, column: 3)
!249 = distinct !DILexicalBlock(scope: !230, file: !3, line: 80, column: 3)
!250 = !DILocation(line: 80, column: 3, scope: !249)
!251 = !DILocation(line: 80, column: 3, scope: !252)
!252 = distinct !DILexicalBlock(scope: !248, file: !3, line: 80, column: 3)
!253 = !DILocation(line: 81, column: 9, scope: !230)
!254 = !DILocation(line: 81, column: 7, scope: !230)
!255 = !DILocation(line: 82, column: 7, scope: !256)
!256 = distinct !DILexicalBlock(scope: !230, file: !3, line: 82, column: 7)
!257 = !DILocation(line: 82, column: 12, scope: !256)
!258 = !{!224, !80, i64 16}
!259 = !DILocation(line: 82, column: 7, scope: !230)
!260 = !DILocation(line: 83, column: 15, scope: !256)
!261 = !DILocation(line: 83, column: 20, scope: !256)
!262 = !DILocation(line: 83, column: 38, scope: !256)
!263 = !DILocation(line: 83, column: 42, scope: !256)
!264 = !DILocation(line: 83, column: 13, scope: !256)
!265 = !DILocation(line: 83, column: 5, scope: !256)
!266 = !DILocation(line: 84, column: 10, scope: !230)
!267 = !DILocation(line: 85, column: 1, scope: !230)
!268 = !DILocation(line: 84, column: 3, scope: !230)
!269 = distinct !DISubprogram(name: "script_wrapper_visitor_feature_node", scope: !3, file: !3, line: 48, type: !131, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !270)
!270 = !{!271, !272, !273, !274, !275}
!271 = !DILocalVariable(name: "nv", arg: 1, scope: !269, file: !3, line: 48, type: !107)
!272 = !DILocalVariable(name: "fn", arg: 2, scope: !269, file: !3, line: 49, type: !133)
!273 = !DILocalVariable(name: "err", arg: 3, scope: !269, file: !3, line: 50, type: !125)
!274 = !DILocalVariable(name: "swv", scope: !269, file: !3, line: 52, type: !165)
!275 = !DILocalVariable(name: "had_err", scope: !269, file: !3, line: 53, type: !120)
!276 = !DILocation(line: 48, column: 63, scope: !269)
!277 = !DILocation(line: 49, column: 63, scope: !269)
!278 = !DILocation(line: 50, column: 57, scope: !269)
!279 = !DILocation(line: 52, column: 3, scope: !269)
!280 = !DILocation(line: 52, column: 27, scope: !269)
!281 = !DILocation(line: 53, column: 3, scope: !269)
!282 = !DILocation(line: 53, column: 7, scope: !269)
!283 = !DILocation(line: 54, column: 3, scope: !269)
!284 = !DILocation(line: 54, column: 3, scope: !285)
!285 = distinct !DILexicalBlock(scope: !286, file: !3, line: 54, column: 3)
!286 = distinct !DILexicalBlock(scope: !269, file: !3, line: 54, column: 3)
!287 = !DILocation(line: 54, column: 3, scope: !286)
!288 = !DILocation(line: 54, column: 3, scope: !289)
!289 = distinct !DILexicalBlock(scope: !285, file: !3, line: 54, column: 3)
!290 = !DILocation(line: 55, column: 9, scope: !269)
!291 = !DILocation(line: 55, column: 7, scope: !269)
!292 = !DILocation(line: 56, column: 7, scope: !293)
!293 = distinct !DILexicalBlock(scope: !269, file: !3, line: 56, column: 7)
!294 = !DILocation(line: 56, column: 12, scope: !293)
!295 = !{!224, !80, i64 24}
!296 = !DILocation(line: 56, column: 7, scope: !269)
!297 = !DILocation(line: 57, column: 15, scope: !293)
!298 = !DILocation(line: 57, column: 20, scope: !293)
!299 = !DILocation(line: 57, column: 38, scope: !293)
!300 = !DILocation(line: 57, column: 42, scope: !293)
!301 = !DILocation(line: 57, column: 13, scope: !293)
!302 = !DILocation(line: 57, column: 5, scope: !293)
!303 = !DILocation(line: 58, column: 10, scope: !269)
!304 = !DILocation(line: 59, column: 1, scope: !269)
!305 = !DILocation(line: 58, column: 3, scope: !269)
!306 = distinct !DISubprogram(name: "script_wrapper_visitor_region_node", scope: !3, file: !3, line: 61, type: !139, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !307)
!307 = !{!308, !309, !310, !311, !312}
!308 = !DILocalVariable(name: "nv", arg: 1, scope: !306, file: !3, line: 61, type: !107)
!309 = !DILocalVariable(name: "rn", arg: 2, scope: !306, file: !3, line: 62, type: !141)
!310 = !DILocalVariable(name: "err", arg: 3, scope: !306, file: !3, line: 63, type: !125)
!311 = !DILocalVariable(name: "swv", scope: !306, file: !3, line: 65, type: !165)
!312 = !DILocalVariable(name: "had_err", scope: !306, file: !3, line: 66, type: !120)
!313 = !DILocation(line: 61, column: 62, scope: !306)
!314 = !DILocation(line: 62, column: 61, scope: !306)
!315 = !DILocation(line: 63, column: 56, scope: !306)
!316 = !DILocation(line: 65, column: 3, scope: !306)
!317 = !DILocation(line: 65, column: 27, scope: !306)
!318 = !DILocation(line: 66, column: 3, scope: !306)
!319 = !DILocation(line: 66, column: 7, scope: !306)
!320 = !DILocation(line: 67, column: 3, scope: !306)
!321 = !DILocation(line: 67, column: 3, scope: !322)
!322 = distinct !DILexicalBlock(scope: !323, file: !3, line: 67, column: 3)
!323 = distinct !DILexicalBlock(scope: !306, file: !3, line: 67, column: 3)
!324 = !DILocation(line: 67, column: 3, scope: !323)
!325 = !DILocation(line: 67, column: 3, scope: !326)
!326 = distinct !DILexicalBlock(scope: !322, file: !3, line: 67, column: 3)
!327 = !DILocation(line: 68, column: 9, scope: !306)
!328 = !DILocation(line: 68, column: 7, scope: !306)
!329 = !DILocation(line: 69, column: 7, scope: !330)
!330 = distinct !DILexicalBlock(scope: !306, file: !3, line: 69, column: 7)
!331 = !DILocation(line: 69, column: 12, scope: !330)
!332 = !{!224, !80, i64 32}
!333 = !DILocation(line: 69, column: 7, scope: !306)
!334 = !DILocation(line: 70, column: 15, scope: !330)
!335 = !DILocation(line: 70, column: 20, scope: !330)
!336 = !DILocation(line: 70, column: 37, scope: !330)
!337 = !DILocation(line: 70, column: 41, scope: !330)
!338 = !DILocation(line: 70, column: 13, scope: !330)
!339 = !DILocation(line: 70, column: 5, scope: !330)
!340 = !DILocation(line: 71, column: 10, scope: !306)
!341 = !DILocation(line: 72, column: 1, scope: !306)
!342 = !DILocation(line: 71, column: 3, scope: !306)
!343 = distinct !DISubprogram(name: "script_wrapper_visitor_sequence_node", scope: !3, file: !3, line: 87, type: !147, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !344)
!344 = !{!345, !346, !347, !348, !349}
!345 = !DILocalVariable(name: "nv", arg: 1, scope: !343, file: !3, line: 87, type: !107)
!346 = !DILocalVariable(name: "sn", arg: 2, scope: !343, file: !3, line: 88, type: !149)
!347 = !DILocalVariable(name: "err", arg: 3, scope: !343, file: !3, line: 89, type: !125)
!348 = !DILocalVariable(name: "swv", scope: !343, file: !3, line: 91, type: !165)
!349 = !DILocalVariable(name: "had_err", scope: !343, file: !3, line: 92, type: !120)
!350 = !DILocation(line: 87, column: 64, scope: !343)
!351 = !DILocation(line: 88, column: 65, scope: !343)
!352 = !DILocation(line: 89, column: 58, scope: !343)
!353 = !DILocation(line: 91, column: 3, scope: !343)
!354 = !DILocation(line: 91, column: 27, scope: !343)
!355 = !DILocation(line: 92, column: 3, scope: !343)
!356 = !DILocation(line: 92, column: 7, scope: !343)
!357 = !DILocation(line: 93, column: 3, scope: !343)
!358 = !DILocation(line: 93, column: 3, scope: !359)
!359 = distinct !DILexicalBlock(scope: !360, file: !3, line: 93, column: 3)
!360 = distinct !DILexicalBlock(scope: !343, file: !3, line: 93, column: 3)
!361 = !DILocation(line: 93, column: 3, scope: !360)
!362 = !DILocation(line: 93, column: 3, scope: !363)
!363 = distinct !DILexicalBlock(scope: !359, file: !3, line: 93, column: 3)
!364 = !DILocation(line: 94, column: 9, scope: !343)
!365 = !DILocation(line: 94, column: 7, scope: !343)
!366 = !DILocation(line: 95, column: 7, scope: !367)
!367 = distinct !DILexicalBlock(scope: !343, file: !3, line: 95, column: 7)
!368 = !DILocation(line: 95, column: 12, scope: !367)
!369 = !{!224, !80, i64 40}
!370 = !DILocation(line: 95, column: 7, scope: !343)
!371 = !DILocation(line: 96, column: 15, scope: !367)
!372 = !DILocation(line: 96, column: 20, scope: !367)
!373 = !DILocation(line: 96, column: 39, scope: !367)
!374 = !DILocation(line: 96, column: 43, scope: !367)
!375 = !DILocation(line: 96, column: 13, scope: !367)
!376 = !DILocation(line: 96, column: 5, scope: !367)
!377 = !DILocation(line: 97, column: 10, scope: !343)
!378 = !DILocation(line: 98, column: 1, scope: !343)
!379 = !DILocation(line: 97, column: 3, scope: !343)
!380 = distinct !DISubprogram(name: "script_wrapper_visitor_eof_node", scope: !3, file: !3, line: 113, type: !155, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !381)
!381 = !{!382, !383, !384, !385, !386}
!382 = !DILocalVariable(name: "nv", arg: 1, scope: !380, file: !3, line: 113, type: !107)
!383 = !DILocalVariable(name: "rn", arg: 2, scope: !380, file: !3, line: 114, type: !157)
!384 = !DILocalVariable(name: "err", arg: 3, scope: !380, file: !3, line: 115, type: !125)
!385 = !DILocalVariable(name: "swv", scope: !380, file: !3, line: 117, type: !165)
!386 = !DILocalVariable(name: "had_err", scope: !380, file: !3, line: 118, type: !120)
!387 = !DILocation(line: 113, column: 59, scope: !380)
!388 = !DILocation(line: 114, column: 55, scope: !380)
!389 = !DILocation(line: 115, column: 53, scope: !380)
!390 = !DILocation(line: 117, column: 3, scope: !380)
!391 = !DILocation(line: 117, column: 27, scope: !380)
!392 = !DILocation(line: 118, column: 3, scope: !380)
!393 = !DILocation(line: 118, column: 7, scope: !380)
!394 = !DILocation(line: 119, column: 3, scope: !380)
!395 = !DILocation(line: 119, column: 3, scope: !396)
!396 = distinct !DILexicalBlock(scope: !397, file: !3, line: 119, column: 3)
!397 = distinct !DILexicalBlock(scope: !380, file: !3, line: 119, column: 3)
!398 = !DILocation(line: 119, column: 3, scope: !397)
!399 = !DILocation(line: 119, column: 3, scope: !400)
!400 = distinct !DILexicalBlock(scope: !396, file: !3, line: 119, column: 3)
!401 = !DILocation(line: 120, column: 9, scope: !380)
!402 = !DILocation(line: 120, column: 7, scope: !380)
!403 = !DILocation(line: 121, column: 7, scope: !404)
!404 = distinct !DILexicalBlock(scope: !380, file: !3, line: 121, column: 7)
!405 = !DILocation(line: 121, column: 12, scope: !404)
!406 = !{!224, !80, i64 56}
!407 = !DILocation(line: 121, column: 7, scope: !380)
!408 = !DILocation(line: 122, column: 15, scope: !404)
!409 = !DILocation(line: 122, column: 20, scope: !404)
!410 = !DILocation(line: 122, column: 34, scope: !404)
!411 = !DILocation(line: 122, column: 38, scope: !404)
!412 = !DILocation(line: 122, column: 13, scope: !404)
!413 = !DILocation(line: 122, column: 5, scope: !404)
!414 = !DILocation(line: 123, column: 10, scope: !380)
!415 = !DILocation(line: 124, column: 1, scope: !380)
!416 = !DILocation(line: 123, column: 3, scope: !380)
!417 = !DISubprogram(name: "gt_node_visitor_class_set_meta_node_func", scope: !9, file: !9, line: 82, type: !418, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!418 = !DISubroutineType(types: !419)
!419 = !{null, !69, !420}
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtNodeVisitorMetaNodeFunc", file: !9, line: 59, baseType: !421)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DISubroutineType(types: !423)
!423 = !{!120, !107, !197, !125}
!424 = distinct !DISubprogram(name: "script_wrapper_visitor_meta_node", scope: !3, file: !3, line: 100, type: !422, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !425)
!425 = !{!426, !427, !428, !429, !430}
!426 = !DILocalVariable(name: "nv", arg: 1, scope: !424, file: !3, line: 100, type: !107)
!427 = !DILocalVariable(name: "rn", arg: 2, scope: !424, file: !3, line: 101, type: !197)
!428 = !DILocalVariable(name: "err", arg: 3, scope: !424, file: !3, line: 102, type: !125)
!429 = !DILocalVariable(name: "swv", scope: !424, file: !3, line: 104, type: !165)
!430 = !DILocalVariable(name: "had_err", scope: !424, file: !3, line: 105, type: !120)
!431 = !DILocation(line: 100, column: 60, scope: !424)
!432 = !DILocation(line: 101, column: 57, scope: !424)
!433 = !DILocation(line: 102, column: 54, scope: !424)
!434 = !DILocation(line: 104, column: 3, scope: !424)
!435 = !DILocation(line: 104, column: 27, scope: !424)
!436 = !DILocation(line: 105, column: 3, scope: !424)
!437 = !DILocation(line: 105, column: 7, scope: !424)
!438 = !DILocation(line: 106, column: 3, scope: !424)
!439 = !DILocation(line: 106, column: 3, scope: !440)
!440 = distinct !DILexicalBlock(scope: !441, file: !3, line: 106, column: 3)
!441 = distinct !DILexicalBlock(scope: !424, file: !3, line: 106, column: 3)
!442 = !DILocation(line: 106, column: 3, scope: !441)
!443 = !DILocation(line: 106, column: 3, scope: !444)
!444 = distinct !DILexicalBlock(scope: !440, file: !3, line: 106, column: 3)
!445 = !DILocation(line: 107, column: 9, scope: !424)
!446 = !DILocation(line: 107, column: 7, scope: !424)
!447 = !DILocation(line: 108, column: 7, scope: !448)
!448 = distinct !DILexicalBlock(scope: !424, file: !3, line: 108, column: 7)
!449 = !DILocation(line: 108, column: 12, scope: !448)
!450 = !{!224, !80, i64 48}
!451 = !DILocation(line: 108, column: 7, scope: !424)
!452 = !DILocation(line: 109, column: 15, scope: !448)
!453 = !DILocation(line: 109, column: 20, scope: !448)
!454 = !DILocation(line: 109, column: 35, scope: !448)
!455 = !DILocation(line: 109, column: 39, scope: !448)
!456 = !DILocation(line: 109, column: 13, scope: !448)
!457 = !DILocation(line: 109, column: 5, scope: !448)
!458 = !DILocation(line: 110, column: 10, scope: !424)
!459 = !DILocation(line: 111, column: 1, scope: !424)
!460 = !DILocation(line: 110, column: 3, scope: !424)
!461 = !DISubprogram(name: "gt_class_alloc_lock_leave_func", scope: !94, file: !94, line: 41, type: !95, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!462 = distinct !DISubprogram(name: "gt_script_wrapper_visitor_new", scope: !3, file: !3, line: 146, type: !463, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !465)
!463 = !DISubroutineType(types: !464)
!464 = !{!107, !173, !178, !183, !188, !193, !202, !207}
!465 = !{!466, !467, !468, !469, !470, !471, !472, !473, !474}
!466 = !DILocalVariable(name: "cn", arg: 1, scope: !462, file: !3, line: 146, type: !173)
!467 = !DILocalVariable(name: "fn", arg: 2, scope: !462, file: !3, line: 147, type: !178)
!468 = !DILocalVariable(name: "rn", arg: 3, scope: !462, file: !3, line: 148, type: !183)
!469 = !DILocalVariable(name: "sn", arg: 4, scope: !462, file: !3, line: 149, type: !188)
!470 = !DILocalVariable(name: "mn", arg: 5, scope: !462, file: !3, line: 150, type: !193)
!471 = !DILocalVariable(name: "en", arg: 6, scope: !462, file: !3, line: 151, type: !202)
!472 = !DILocalVariable(name: "free_func", arg: 7, scope: !462, file: !3, line: 152, type: !207)
!473 = !DILocalVariable(name: "nv", scope: !462, file: !3, line: 154, type: !107)
!474 = !DILocalVariable(name: "swv", scope: !462, file: !3, line: 155, type: !165)
!475 = !DILocation(line: 146, column: 69, scope: !462)
!476 = !DILocation(line: 147, column: 69, scope: !462)
!477 = !DILocation(line: 148, column: 68, scope: !462)
!478 = !DILocation(line: 149, column: 70, scope: !462)
!479 = !DILocation(line: 150, column: 66, scope: !462)
!480 = !DILocation(line: 151, column: 65, scope: !462)
!481 = !DILocation(line: 152, column: 62, scope: !462)
!482 = !DILocation(line: 154, column: 3, scope: !462)
!483 = !DILocation(line: 154, column: 18, scope: !462)
!484 = !DILocation(line: 155, column: 3, scope: !462)
!485 = !DILocation(line: 155, column: 27, scope: !462)
!486 = !DILocation(line: 156, column: 31, scope: !462)
!487 = !DILocation(line: 156, column: 8, scope: !462)
!488 = !DILocation(line: 156, column: 6, scope: !462)
!489 = !DILocation(line: 158, column: 9, scope: !462)
!490 = !DILocation(line: 158, column: 7, scope: !462)
!491 = !DILocation(line: 159, column: 28, scope: !462)
!492 = !DILocation(line: 159, column: 3, scope: !462)
!493 = !DILocation(line: 159, column: 8, scope: !462)
!494 = !DILocation(line: 159, column: 26, scope: !462)
!495 = !DILocation(line: 160, column: 28, scope: !462)
!496 = !DILocation(line: 160, column: 3, scope: !462)
!497 = !DILocation(line: 160, column: 8, scope: !462)
!498 = !DILocation(line: 160, column: 26, scope: !462)
!499 = !DILocation(line: 161, column: 27, scope: !462)
!500 = !DILocation(line: 161, column: 3, scope: !462)
!501 = !DILocation(line: 161, column: 8, scope: !462)
!502 = !DILocation(line: 161, column: 25, scope: !462)
!503 = !DILocation(line: 162, column: 29, scope: !462)
!504 = !DILocation(line: 162, column: 3, scope: !462)
!505 = !DILocation(line: 162, column: 8, scope: !462)
!506 = !DILocation(line: 162, column: 27, scope: !462)
!507 = !DILocation(line: 163, column: 25, scope: !462)
!508 = !DILocation(line: 163, column: 3, scope: !462)
!509 = !DILocation(line: 163, column: 8, scope: !462)
!510 = !DILocation(line: 163, column: 23, scope: !462)
!511 = !DILocation(line: 164, column: 24, scope: !462)
!512 = !DILocation(line: 164, column: 3, scope: !462)
!513 = !DILocation(line: 164, column: 8, scope: !462)
!514 = !DILocation(line: 164, column: 22, scope: !462)
!515 = !DILocation(line: 165, column: 20, scope: !462)
!516 = !DILocation(line: 165, column: 3, scope: !462)
!517 = !DILocation(line: 165, column: 8, scope: !462)
!518 = !DILocation(line: 165, column: 18, scope: !462)
!519 = !DILocation(line: 166, column: 10, scope: !462)
!520 = !DILocation(line: 167, column: 1, scope: !462)
!521 = !DILocation(line: 166, column: 3, scope: !462)
!522 = !DISubprogram(name: "gt_node_visitor_create", scope: !9, file: !9, line: 84, type: !523, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!523 = !DISubroutineType(types: !524)
!524 = !{!107, !6}
!525 = !DISubprogram(name: "gt_node_visitor_cast", scope: !9, file: !9, line: 85, type: !526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!526 = !DISubroutineType(types: !527)
!527 = !{!13, !6, !107}
!528 = !DISubprogram(name: "fprintf", scope: !529, file: !529, line: 350, type: !530, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!529 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!530 = !DISubroutineType(types: !531)
!531 = !{!120, !532, !590, null}
!532 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !533)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !535, line: 7, baseType: !536)
!535 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !537, line: 49, size: 1728, elements: !538)
!537 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!538 = !{!539, !540, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !555, !557, !558, !559, !563, !565, !567, !571, !574, !576, !579, !582, !583, !584, !585, !586}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !536, file: !537, line: 51, baseType: !120, size: 32)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !536, file: !537, line: 54, baseType: !541, size: 64, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !536, file: !537, line: 55, baseType: !541, size: 64, offset: 128)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !536, file: !537, line: 56, baseType: !541, size: 64, offset: 192)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !536, file: !537, line: 57, baseType: !541, size: 64, offset: 256)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !536, file: !537, line: 58, baseType: !541, size: 64, offset: 320)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !536, file: !537, line: 59, baseType: !541, size: 64, offset: 384)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !536, file: !537, line: 60, baseType: !541, size: 64, offset: 448)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !536, file: !537, line: 61, baseType: !541, size: 64, offset: 512)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !536, file: !537, line: 64, baseType: !541, size: 64, offset: 576)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !536, file: !537, line: 65, baseType: !541, size: 64, offset: 640)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !536, file: !537, line: 66, baseType: !541, size: 64, offset: 704)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !536, file: !537, line: 68, baseType: !553, size: 64, offset: 768)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !537, line: 36, flags: DIFlagFwdDecl)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !536, file: !537, line: 70, baseType: !556, size: 64, offset: 832)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !536, file: !537, line: 72, baseType: !120, size: 32, offset: 896)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !536, file: !537, line: 73, baseType: !120, size: 32, offset: 928)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !536, file: !537, line: 74, baseType: !560, size: 64, offset: 960)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !561, line: 152, baseType: !562)
!561 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!562 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !536, file: !537, line: 77, baseType: !564, size: 16, offset: 1024)
!564 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !536, file: !537, line: 78, baseType: !566, size: 8, offset: 1040)
!566 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !536, file: !537, line: 79, baseType: !568, size: 8, offset: 1048)
!568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 8, elements: !569)
!569 = !{!570}
!570 = !DISubrange(count: 1)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !536, file: !537, line: 81, baseType: !572, size: 64, offset: 1088)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !537, line: 43, baseType: null)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !536, file: !537, line: 89, baseType: !575, size: 64, offset: 1152)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !561, line: 153, baseType: !562)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !536, file: !537, line: 91, baseType: !577, size: 64, offset: 1216)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !537, line: 37, flags: DIFlagFwdDecl)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !536, file: !537, line: 92, baseType: !580, size: 64, offset: 1280)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !537, line: 38, flags: DIFlagFwdDecl)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !536, file: !537, line: 93, baseType: !556, size: 64, offset: 1344)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !536, file: !537, line: 94, baseType: !13, size: 64, offset: 1408)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !536, file: !537, line: 95, baseType: !100, size: 64, offset: 1472)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !536, file: !537, line: 96, baseType: !120, size: 32, offset: 1536)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !536, file: !537, line: 98, baseType: !587, size: 160, offset: 1568)
!587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 160, elements: !588)
!588 = !{!589}
!589 = !DISubrange(count: 20)
!590 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !591)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!592 = !DISubprogram(name: "abort", scope: !593, file: !593, line: 598, type: !95, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!593 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!594 = !DISubprogram(name: "gt_error_is_set", scope: !127, file: !127, line: 64, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!595 = !DISubroutineType(types: !596)
!596 = !{!597, !598}
!597 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
