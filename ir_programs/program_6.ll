; ModuleID = 'program_6.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/qs8-vaddc/gen/minmax-avx-mul16-ld64-x32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.1 = type { [4 x i32], [8 x i16], [8 x i16], [8 x i16], [8 x i16], i32, i32, [8 x i8], [8 x i16], [16 x i8], [16 x i8] }
%struct.__mm_loadl_epi64_struct = type { i64 }
%struct.__storeu_si128 = type { <2 x i64> }
%struct.__mm_storel_epi64_struct = type { i64 }

; Function Attrs: nounwind uwtable
define hidden void @xnn_qs8_vaddc_minmax_ukernel__avx_mul16_ld64_x32(i64 noundef %n, ptr noundef %input_a, ptr noundef %input_b, ptr noundef %output, ptr noalias noundef align 64 dereferenceable(384) %params) #0 {
entry:
  %n.addr = alloca i64, align 8
  %input_a.addr = alloca ptr, align 8
  %input_b.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %vbias = alloca <2 x i64>, align 16
  %va_multiplier_lo = alloca <2 x i64>, align 16
  %va_multiplier_hi = alloca <2 x i64>, align 16
  %vshift = alloca <2 x i64>, align 16
  %voutput_zero_point = alloca <2 x i64>, align 16
  %voutput_min = alloca <2 x i64>, align 16
  %voutput_max = alloca <2 x i64>, align 16
  %va01234567 = alloca <2 x i64>, align 16
  %va89ABCDEF = alloca <2 x i64>, align 16
  %vaGHIJKLMN = alloca <2 x i64>, align 16
  %vaOPQRSTUV = alloca <2 x i64>, align 16
  %vaprod01234567hi = alloca <2 x i64>, align 16
  %vaprod01234567lo = alloca <2 x i64>, align 16
  %vaprod89ABCDEFhi = alloca <2 x i64>, align 16
  %vaprod89ABCDEFlo = alloca <2 x i64>, align 16
  %vaprodGHIJKLMNhi = alloca <2 x i64>, align 16
  %vaprodGHIJKLMNlo = alloca <2 x i64>, align 16
  %vaprodOPQRSTUVhi = alloca <2 x i64>, align 16
  %vaprodOPQRSTUVlo = alloca <2 x i64>, align 16
  %vacc0123 = alloca <2 x i64>, align 16
  %vacc4567 = alloca <2 x i64>, align 16
  %vacc89AB = alloca <2 x i64>, align 16
  %vaccCDEF = alloca <2 x i64>, align 16
  %vaccGHIJ = alloca <2 x i64>, align 16
  %vaccKLMN = alloca <2 x i64>, align 16
  %vaccOPQR = alloca <2 x i64>, align 16
  %vaccSTUV = alloca <2 x i64>, align 16
  %vout01234567 = alloca <2 x i64>, align 16
  %vout89ABCDEF = alloca <2 x i64>, align 16
  %voutGHIJKLMN = alloca <2 x i64>, align 16
  %voutOPQRSTUV = alloca <2 x i64>, align 16
  %vout0123456789ABCDEF = alloca <2 x i64>, align 16
  %voutGHIJKLMNOPQRSTUV = alloca <2 x i64>, align 16
  %va0123456798 = alloca <2 x i64>, align 16
  %vaprod01234567hi102 = alloca <2 x i64>, align 16
  %vaprod01234567lo104 = alloca <2 x i64>, align 16
  %vacc0123111 = alloca <2 x i64>, align 16
  %vacc4567114 = alloca <2 x i64>, align 16
  %vout01234567119 = alloca <2 x i64>, align 16
  %vout0123456701234567 = alloca <2 x i64>, align 16
  store i64 %n, ptr %n.addr, align 8, !tbaa !5
  store ptr %input_a, ptr %input_a.addr, align 8, !tbaa !9
  store ptr %input_b, ptr %input_b.addr, align 8, !tbaa !9
  store ptr %output, ptr %output.addr, align 8, !tbaa !9
  store ptr %params, ptr %params.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vbias) #5
  %0 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %b_multiplier = getelementptr inbounds %struct.anon.1, ptr %0, i32 0, i32 6
  %1 = load i32, ptr %b_multiplier, align 4, !tbaa !11
  %2 = load ptr, ptr %input_b.addr, align 8, !tbaa !9
  %3 = load i8, ptr %2, align 1, !tbaa !11
  %conv = sext i8 %3 to i32
  %mul = mul i32 %1, %conv
  %call = call <2 x i64> @_mm_cvtsi32_si128(i32 noundef %mul)
  %4 = bitcast <2 x i64> %call to <4 x i32>
  %permil = shufflevector <4 x i32> %4, <4 x i32> poison, <4 x i32> zeroinitializer
  %5 = bitcast <4 x i32> %permil to <2 x i64>
  %6 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %bias = getelementptr inbounds %struct.anon.1, ptr %6, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i32], ptr %bias, i64 0, i64 0
  %call1 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay)
  %call2 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %5, <2 x i64> noundef %call1)
  store <2 x i64> %call2, ptr %vbias, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %va_multiplier_lo) #5
  %7 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %a_multiplier_lo = getelementptr inbounds %struct.anon.1, ptr %7, i32 0, i32 1
  %arraydecay3 = getelementptr inbounds [8 x i16], ptr %a_multiplier_lo, i64 0, i64 0
  %call4 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay3)
  store <2 x i64> %call4, ptr %va_multiplier_lo, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %va_multiplier_hi) #5
  %8 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %a_multiplier_hi = getelementptr inbounds %struct.anon.1, ptr %8, i32 0, i32 2
  %arraydecay5 = getelementptr inbounds [8 x i16], ptr %a_multiplier_hi, i64 0, i64 0
  %call6 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay5)
  store <2 x i64> %call6, ptr %va_multiplier_hi, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vshift) #5
  %9 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %shift = getelementptr inbounds %struct.anon.1, ptr %9, i32 0, i32 5
  %10 = load i32, ptr %shift, align 16, !tbaa !11
  %call7 = call <2 x i64> @_mm_cvtsi32_si128(i32 noundef %10)
  store <2 x i64> %call7, ptr %vshift, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_zero_point) #5
  %11 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_zero_point = getelementptr inbounds %struct.anon.1, ptr %11, i32 0, i32 8
  %arraydecay8 = getelementptr inbounds [8 x i16], ptr %output_zero_point, i64 0, i64 0
  %call9 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay8)
  store <2 x i64> %call9, ptr %voutput_zero_point, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_min) #5
  %12 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_min = getelementptr inbounds %struct.anon.1, ptr %12, i32 0, i32 9
  %arraydecay10 = getelementptr inbounds [16 x i8], ptr %output_min, i64 0, i64 0
  %call11 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay10)
  store <2 x i64> %call11, ptr %voutput_min, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_max) #5
  %13 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_max = getelementptr inbounds %struct.anon.1, ptr %13, i32 0, i32 10
  %arraydecay12 = getelementptr inbounds [16 x i8], ptr %output_max, i64 0, i64 0
  %call13 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay12)
  store <2 x i64> %call13, ptr %voutput_max, align 16, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp = icmp uge i64 %14, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %va01234567) #5
  %15 = load ptr, ptr %input_a.addr, align 8, !tbaa !9
  %call15 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %15)
  %call16 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %call15)
  store <2 x i64> %call16, ptr %va01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %va89ABCDEF) #5
  %16 = load ptr, ptr %input_a.addr, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds i8, ptr %16, i64 8
  %call17 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %add.ptr)
  %call18 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %call17)
  store <2 x i64> %call18, ptr %va89ABCDEF, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vaGHIJKLMN) #5
  %17 = load ptr, ptr %input_a.addr, align 8, !tbaa !9
  %add.ptr19 = getelementptr inbounds i8, ptr %17, i64 16
  %call20 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %add.ptr19)
  %call21 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %call20)
  store <2 x i64> %call21, ptr %vaGHIJKLMN, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vaOPQRSTUV) #5
  %18 = load ptr, ptr %input_a.addr, align 8, !tbaa !9
  %add.ptr22 = getelementptr inbounds i8, ptr %18, i64 24
  %call23 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %add.ptr22)
  %call24 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %call23)
  store <2 x i64> %call24, ptr %vaOPQRSTUV, align 16, !tbaa !11
  %19 = load ptr, ptr %input_a.addr, align 8, !tbaa !9
  %add.ptr25 = getelementptr inbounds i8, ptr %19, i64 32
  store ptr %add.ptr25, ptr %input_a.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vaprod01234567hi) #5
  %20 = load <2 x i64>, ptr %va01234567, align 16, !tbaa !11
  %21 = load <2 x i64>, ptr %va_multiplier_lo, align 16, !tbaa !11
  %call26 = call <2 x i64> @_mm_mulhi_epu16(<2 x i64> noundef %20, <2 x i64> noundef %21)
  store <2 x i64> %call26, ptr %vaprod01234567hi, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vaprod01234567lo) #5
  %22 = load <2 x i64>, ptr %va01234567, align 16, !tbaa !11
  %23 = load <2 x i64>, ptr %va_multiplier_lo, align 16, !tbaa !11
  %call27 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %22, <2 x i64> noundef %23)
  store <2 x i64> %call27, ptr %vaprod01234567lo, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vaprod89ABCDEFhi) #5
  %24 = load <2 x i64>, ptr %va89ABCDEF, align 16, !tbaa !11
  %25 = load <2 x i64>, ptr %va_multiplier_lo, align 16, !tbaa !11
  %call28 = call <2 x i64> @_mm_mulhi_epu16(<2 x i64> noundef %24, <2 x i64> noundef %25)
  store <2 x i64> %call28, ptr %vaprod89ABCDEFhi, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vaprod89ABCDEFlo) #5
  %26 = load <2 x i64>, ptr %va89ABCDEF, align 16, !tbaa !11
  %27 = load <2 x i64>, ptr %va_multiplier_lo, align 16, !tbaa !11
  %call29 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %26, <2 x i64> noundef %27)
  store <2 x i64> %call29, ptr %vaprod89ABCDEFlo, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vaprodGHIJKLMNhi) #5
  %28 = load <2 x i64>, ptr %vaGHIJKLMN, align 16, !tbaa !11
  %29 = load <2 x i64>, ptr %va_multiplier_lo, align 16, !tbaa !11
  %call30 = call <2 x i64> @_mm_mulhi_epu16(<2 x i64> noundef %28, <2 x i64> noundef %29)
  store <2 x i64> %call30, ptr %vaprodGHIJKLMNhi, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vaprodGHIJKLMNlo) #5
  %30 = load <2 x i64>, ptr %vaGHIJKLMN, align 16, !tbaa !11
  %31 = load <2 x i64>, ptr %va_multiplier_lo, align 16, !tbaa !11
  %call31 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %30, <2 x i64> noundef %31)
  store <2 x i64> %call31, ptr %vaprodGHIJKLMNlo, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vaprodOPQRSTUVhi) #5
  %32 = load <2 x i64>, ptr %vaOPQRSTUV, align 16, !tbaa !11
  %33 = load <2 x i64>, ptr %va_multiplier_lo, align 16, !tbaa !11
  %call32 = call <2 x i64> @_mm_mulhi_epu16(<2 x i64> noundef %32, <2 x i64> noundef %33)
  store <2 x i64> %call32, ptr %vaprodOPQRSTUVhi, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vaprodOPQRSTUVlo) #5
  %34 = load <2 x i64>, ptr %vaOPQRSTUV, align 16, !tbaa !11
  %35 = load <2 x i64>, ptr %va_multiplier_lo, align 16, !tbaa !11
  %call33 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %34, <2 x i64> noundef %35)
  store <2 x i64> %call33, ptr %vaprodOPQRSTUVlo, align 16, !tbaa !11
  %36 = load <2 x i64>, ptr %vaprod01234567hi, align 16, !tbaa !11
  %37 = load <2 x i64>, ptr %va01234567, align 16, !tbaa !11
  %38 = load <2 x i64>, ptr %va_multiplier_hi, align 16, !tbaa !11
  %call34 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %37, <2 x i64> noundef %38)
  %call35 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %36, <2 x i64> noundef %call34)
  store <2 x i64> %call35, ptr %vaprod01234567hi, align 16, !tbaa !11
  %39 = load <2 x i64>, ptr %vaprod89ABCDEFhi, align 16, !tbaa !11
  %40 = load <2 x i64>, ptr %va89ABCDEF, align 16, !tbaa !11
  %41 = load <2 x i64>, ptr %va_multiplier_hi, align 16, !tbaa !11
  %call36 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %40, <2 x i64> noundef %41)
  %call37 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %39, <2 x i64> noundef %call36)
  store <2 x i64> %call37, ptr %vaprod89ABCDEFhi, align 16, !tbaa !11
  %42 = load <2 x i64>, ptr %vaprodGHIJKLMNhi, align 16, !tbaa !11
  %43 = load <2 x i64>, ptr %vaGHIJKLMN, align 16, !tbaa !11
  %44 = load <2 x i64>, ptr %va_multiplier_hi, align 16, !tbaa !11
  %call38 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %43, <2 x i64> noundef %44)
  %call39 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %42, <2 x i64> noundef %call38)
  store <2 x i64> %call39, ptr %vaprodGHIJKLMNhi, align 16, !tbaa !11
  %45 = load <2 x i64>, ptr %vaprodOPQRSTUVhi, align 16, !tbaa !11
  %46 = load <2 x i64>, ptr %vaOPQRSTUV, align 16, !tbaa !11
  %47 = load <2 x i64>, ptr %va_multiplier_hi, align 16, !tbaa !11
  %call40 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %46, <2 x i64> noundef %47)
  %call41 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %45, <2 x i64> noundef %call40)
  store <2 x i64> %call41, ptr %vaprodOPQRSTUVhi, align 16, !tbaa !11
  %48 = load <2 x i64>, ptr %vaprod01234567hi, align 16, !tbaa !11
  %49 = load <2 x i64>, ptr %va01234567, align 16, !tbaa !11
  %call42 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %49, i32 noundef 15)
  %50 = load <2 x i64>, ptr %va_multiplier_lo, align 16, !tbaa !11
  %call43 = call <2 x i64> @_mm_and_si128(<2 x i64> noundef %call42, <2 x i64> noundef %50)
  %call44 = call <2 x i64> @_mm_sub_epi16(<2 x i64> noundef %48, <2 x i64> noundef %call43)
  store <2 x i64> %call44, ptr %vaprod01234567hi, align 16, !tbaa !11
  %51 = load <2 x i64>, ptr %vaprod89ABCDEFhi, align 16, !tbaa !11
  %52 = load <2 x i64>, ptr %va89ABCDEF, align 16, !tbaa !11
  %call45 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %52, i32 noundef 15)
  %53 = load <2 x i64>, ptr %va_multiplier_lo, align 16, !tbaa !11
  %call46 = call <2 x i64> @_mm_and_si128(<2 x i64> noundef %call45, <2 x i64> noundef %53)
  %call47 = call <2 x i64> @_mm_sub_epi16(<2 x i64> noundef %51, <2 x i64> noundef %call46)
  store <2 x i64> %call47, ptr %vaprod89ABCDEFhi, align 16, !tbaa !11
  %54 = load <2 x i64>, ptr %vaprodGHIJKLMNhi, align 16, !tbaa !11
  %55 = load <2 x i64>, ptr %vaGHIJKLMN, align 16, !tbaa !11
  %call48 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %55, i32 noundef 15)
  %56 = load <2 x i64>, ptr %va_multiplier_lo, align 16, !tbaa !11
  %call49 = call <2 x i64> @_mm_and_si128(<2 x i64> noundef %call48, <2 x i64> noundef %56)
  %call50 = call <2 x i64> @_mm_sub_epi16(<2 x i64> noundef %54, <2 x i64> noundef %call49)
  store <2 x i64> %call50, ptr %vaprodGHIJKLMNhi, align 16, !tbaa !11
  %57 = load <2 x i64>, ptr %vaprodOPQRSTUVhi, align 16, !tbaa !11
  %58 = load <2 x i64>, ptr %vaOPQRSTUV, align 16, !tbaa !11
  %call51 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %58, i32 noundef 15)
  %59 = load <2 x i64>, ptr %va_multiplier_lo, align 16, !tbaa !11
  %call52 = call <2 x i64> @_mm_and_si128(<2 x i64> noundef %call51, <2 x i64> noundef %59)
  %call53 = call <2 x i64> @_mm_sub_epi16(<2 x i64> noundef %57, <2 x i64> noundef %call52)
  store <2 x i64> %call53, ptr %vaprodOPQRSTUVhi, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc0123) #5
  %60 = load <2 x i64>, ptr %vbias, align 16, !tbaa !11
  %61 = load <2 x i64>, ptr %vaprod01234567lo, align 16, !tbaa !11
  %62 = load <2 x i64>, ptr %vaprod01234567hi, align 16, !tbaa !11
  %call54 = call <2 x i64> @_mm_unpacklo_epi16(<2 x i64> noundef %61, <2 x i64> noundef %62)
  %call55 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %60, <2 x i64> noundef %call54)
  store <2 x i64> %call55, ptr %vacc0123, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc4567) #5
  %63 = load <2 x i64>, ptr %vbias, align 16, !tbaa !11
  %64 = load <2 x i64>, ptr %vaprod01234567lo, align 16, !tbaa !11
  %65 = load <2 x i64>, ptr %vaprod01234567hi, align 16, !tbaa !11
  %call56 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %64, <2 x i64> noundef %65)
  %call57 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %63, <2 x i64> noundef %call56)
  store <2 x i64> %call57, ptr %vacc4567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc89AB) #5
  %66 = load <2 x i64>, ptr %vbias, align 16, !tbaa !11
  %67 = load <2 x i64>, ptr %vaprod89ABCDEFlo, align 16, !tbaa !11
  %68 = load <2 x i64>, ptr %vaprod89ABCDEFhi, align 16, !tbaa !11
  %call58 = call <2 x i64> @_mm_unpacklo_epi16(<2 x i64> noundef %67, <2 x i64> noundef %68)
  %call59 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %66, <2 x i64> noundef %call58)
  store <2 x i64> %call59, ptr %vacc89AB, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vaccCDEF) #5
  %69 = load <2 x i64>, ptr %vbias, align 16, !tbaa !11
  %70 = load <2 x i64>, ptr %vaprod89ABCDEFlo, align 16, !tbaa !11
  %71 = load <2 x i64>, ptr %vaprod89ABCDEFhi, align 16, !tbaa !11
  %call60 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %70, <2 x i64> noundef %71)
  %call61 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %69, <2 x i64> noundef %call60)
  store <2 x i64> %call61, ptr %vaccCDEF, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vaccGHIJ) #5
  %72 = load <2 x i64>, ptr %vbias, align 16, !tbaa !11
  %73 = load <2 x i64>, ptr %vaprodGHIJKLMNlo, align 16, !tbaa !11
  %74 = load <2 x i64>, ptr %vaprodGHIJKLMNhi, align 16, !tbaa !11
  %call62 = call <2 x i64> @_mm_unpacklo_epi16(<2 x i64> noundef %73, <2 x i64> noundef %74)
  %call63 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %72, <2 x i64> noundef %call62)
  store <2 x i64> %call63, ptr %vaccGHIJ, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vaccKLMN) #5
  %75 = load <2 x i64>, ptr %vbias, align 16, !tbaa !11
  %76 = load <2 x i64>, ptr %vaprodGHIJKLMNlo, align 16, !tbaa !11
  %77 = load <2 x i64>, ptr %vaprodGHIJKLMNhi, align 16, !tbaa !11
  %call64 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %76, <2 x i64> noundef %77)
  %call65 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %75, <2 x i64> noundef %call64)
  store <2 x i64> %call65, ptr %vaccKLMN, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vaccOPQR) #5
  %78 = load <2 x i64>, ptr %vbias, align 16, !tbaa !11
  %79 = load <2 x i64>, ptr %vaprodOPQRSTUVlo, align 16, !tbaa !11
  %80 = load <2 x i64>, ptr %vaprodOPQRSTUVhi, align 16, !tbaa !11
  %call66 = call <2 x i64> @_mm_unpacklo_epi16(<2 x i64> noundef %79, <2 x i64> noundef %80)
  %call67 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %78, <2 x i64> noundef %call66)
  store <2 x i64> %call67, ptr %vaccOPQR, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vaccSTUV) #5
  %81 = load <2 x i64>, ptr %vbias, align 16, !tbaa !11
  %82 = load <2 x i64>, ptr %vaprodOPQRSTUVlo, align 16, !tbaa !11
  %83 = load <2 x i64>, ptr %vaprodOPQRSTUVhi, align 16, !tbaa !11
  %call68 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %82, <2 x i64> noundef %83)
  %call69 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %81, <2 x i64> noundef %call68)
  store <2 x i64> %call69, ptr %vaccSTUV, align 16, !tbaa !11
  %84 = load <2 x i64>, ptr %vacc0123, align 16, !tbaa !11
  %85 = load <2 x i64>, ptr %vshift, align 16, !tbaa !11
  %call70 = call <2 x i64> @_mm_sra_epi32(<2 x i64> noundef %84, <2 x i64> noundef %85)
  store <2 x i64> %call70, ptr %vacc0123, align 16, !tbaa !11
  %86 = load <2 x i64>, ptr %vacc4567, align 16, !tbaa !11
  %87 = load <2 x i64>, ptr %vshift, align 16, !tbaa !11
  %call71 = call <2 x i64> @_mm_sra_epi32(<2 x i64> noundef %86, <2 x i64> noundef %87)
  store <2 x i64> %call71, ptr %vacc4567, align 16, !tbaa !11
  %88 = load <2 x i64>, ptr %vacc89AB, align 16, !tbaa !11
  %89 = load <2 x i64>, ptr %vshift, align 16, !tbaa !11
  %call72 = call <2 x i64> @_mm_sra_epi32(<2 x i64> noundef %88, <2 x i64> noundef %89)
  store <2 x i64> %call72, ptr %vacc89AB, align 16, !tbaa !11
  %90 = load <2 x i64>, ptr %vaccCDEF, align 16, !tbaa !11
  %91 = load <2 x i64>, ptr %vshift, align 16, !tbaa !11
  %call73 = call <2 x i64> @_mm_sra_epi32(<2 x i64> noundef %90, <2 x i64> noundef %91)
  store <2 x i64> %call73, ptr %vaccCDEF, align 16, !tbaa !11
  %92 = load <2 x i64>, ptr %vaccGHIJ, align 16, !tbaa !11
  %93 = load <2 x i64>, ptr %vshift, align 16, !tbaa !11
  %call74 = call <2 x i64> @_mm_sra_epi32(<2 x i64> noundef %92, <2 x i64> noundef %93)
  store <2 x i64> %call74, ptr %vaccGHIJ, align 16, !tbaa !11
  %94 = load <2 x i64>, ptr %vaccKLMN, align 16, !tbaa !11
  %95 = load <2 x i64>, ptr %vshift, align 16, !tbaa !11
  %call75 = call <2 x i64> @_mm_sra_epi32(<2 x i64> noundef %94, <2 x i64> noundef %95)
  store <2 x i64> %call75, ptr %vaccKLMN, align 16, !tbaa !11
  %96 = load <2 x i64>, ptr %vaccOPQR, align 16, !tbaa !11
  %97 = load <2 x i64>, ptr %vshift, align 16, !tbaa !11
  %call76 = call <2 x i64> @_mm_sra_epi32(<2 x i64> noundef %96, <2 x i64> noundef %97)
  store <2 x i64> %call76, ptr %vaccOPQR, align 16, !tbaa !11
  %98 = load <2 x i64>, ptr %vaccSTUV, align 16, !tbaa !11
  %99 = load <2 x i64>, ptr %vshift, align 16, !tbaa !11
  %call77 = call <2 x i64> @_mm_sra_epi32(<2 x i64> noundef %98, <2 x i64> noundef %99)
  store <2 x i64> %call77, ptr %vaccSTUV, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout01234567) #5
  %100 = load <2 x i64>, ptr %vacc0123, align 16, !tbaa !11
  %101 = load <2 x i64>, ptr %vacc4567, align 16, !tbaa !11
  %call78 = call <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %100, <2 x i64> noundef %101)
  %102 = load <2 x i64>, ptr %voutput_zero_point, align 16, !tbaa !11
  %call79 = call <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %call78, <2 x i64> noundef %102)
  store <2 x i64> %call79, ptr %vout01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout89ABCDEF) #5
  %103 = load <2 x i64>, ptr %vacc89AB, align 16, !tbaa !11
  %104 = load <2 x i64>, ptr %vaccCDEF, align 16, !tbaa !11
  %call80 = call <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %103, <2 x i64> noundef %104)
  %105 = load <2 x i64>, ptr %voutput_zero_point, align 16, !tbaa !11
  %call81 = call <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %call80, <2 x i64> noundef %105)
  store <2 x i64> %call81, ptr %vout89ABCDEF, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutGHIJKLMN) #5
  %106 = load <2 x i64>, ptr %vaccGHIJ, align 16, !tbaa !11
  %107 = load <2 x i64>, ptr %vaccKLMN, align 16, !tbaa !11
  %call82 = call <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %106, <2 x i64> noundef %107)
  %108 = load <2 x i64>, ptr %voutput_zero_point, align 16, !tbaa !11
  %call83 = call <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %call82, <2 x i64> noundef %108)
  store <2 x i64> %call83, ptr %voutGHIJKLMN, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutOPQRSTUV) #5
  %109 = load <2 x i64>, ptr %vaccOPQR, align 16, !tbaa !11
  %110 = load <2 x i64>, ptr %vaccSTUV, align 16, !tbaa !11
  %call84 = call <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %109, <2 x i64> noundef %110)
  %111 = load <2 x i64>, ptr %voutput_zero_point, align 16, !tbaa !11
  %call85 = call <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %call84, <2 x i64> noundef %111)
  store <2 x i64> %call85, ptr %voutOPQRSTUV, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout0123456789ABCDEF) #5
  %112 = load <2 x i64>, ptr %vout01234567, align 16, !tbaa !11
  %113 = load <2 x i64>, ptr %vout89ABCDEF, align 16, !tbaa !11
  %call86 = call <2 x i64> @_mm_packs_epi16(<2 x i64> noundef %112, <2 x i64> noundef %113)
  store <2 x i64> %call86, ptr %vout0123456789ABCDEF, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutGHIJKLMNOPQRSTUV) #5
  %114 = load <2 x i64>, ptr %voutGHIJKLMN, align 16, !tbaa !11
  %115 = load <2 x i64>, ptr %voutOPQRSTUV, align 16, !tbaa !11
  %call87 = call <2 x i64> @_mm_packs_epi16(<2 x i64> noundef %114, <2 x i64> noundef %115)
  store <2 x i64> %call87, ptr %voutGHIJKLMNOPQRSTUV, align 16, !tbaa !11
  %116 = load <2 x i64>, ptr %vout0123456789ABCDEF, align 16, !tbaa !11
  %117 = load <2 x i64>, ptr %voutput_min, align 16, !tbaa !11
  %call88 = call <2 x i64> @_mm_max_epi8(<2 x i64> noundef %116, <2 x i64> noundef %117)
  store <2 x i64> %call88, ptr %vout0123456789ABCDEF, align 16, !tbaa !11
  %118 = load <2 x i64>, ptr %voutGHIJKLMNOPQRSTUV, align 16, !tbaa !11
  %119 = load <2 x i64>, ptr %voutput_min, align 16, !tbaa !11
  %call89 = call <2 x i64> @_mm_max_epi8(<2 x i64> noundef %118, <2 x i64> noundef %119)
  store <2 x i64> %call89, ptr %voutGHIJKLMNOPQRSTUV, align 16, !tbaa !11
  %120 = load <2 x i64>, ptr %vout0123456789ABCDEF, align 16, !tbaa !11
  %121 = load <2 x i64>, ptr %voutput_max, align 16, !tbaa !11
  %call90 = call <2 x i64> @_mm_min_epi8(<2 x i64> noundef %120, <2 x i64> noundef %121)
  store <2 x i64> %call90, ptr %vout0123456789ABCDEF, align 16, !tbaa !11
  %122 = load <2 x i64>, ptr %voutGHIJKLMNOPQRSTUV, align 16, !tbaa !11
  %123 = load <2 x i64>, ptr %voutput_max, align 16, !tbaa !11
  %call91 = call <2 x i64> @_mm_min_epi8(<2 x i64> noundef %122, <2 x i64> noundef %123)
  store <2 x i64> %call91, ptr %voutGHIJKLMNOPQRSTUV, align 16, !tbaa !11
  %124 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %125 = load <2 x i64>, ptr %vout0123456789ABCDEF, align 16, !tbaa !11
  call void @_mm_storeu_si128(ptr noundef %124, <2 x i64> noundef %125)
  %126 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr92 = getelementptr inbounds i8, ptr %126, i64 16
  %127 = load <2 x i64>, ptr %voutGHIJKLMNOPQRSTUV, align 16, !tbaa !11
  call void @_mm_storeu_si128(ptr noundef %add.ptr92, <2 x i64> noundef %127)
  %128 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr93 = getelementptr inbounds i8, ptr %128, i64 32
  store ptr %add.ptr93, ptr %output.addr, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutGHIJKLMNOPQRSTUV) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout0123456789ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutOPQRSTUV) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutGHIJKLMN) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout89ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vaccSTUV) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vaccOPQR) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vaccKLMN) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vaccGHIJ) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vaccCDEF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc89AB) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc4567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc0123) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vaprodOPQRSTUVlo) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vaprodOPQRSTUVhi) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vaprodGHIJKLMNlo) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vaprodGHIJKLMNhi) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vaprod89ABCDEFlo) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vaprod89ABCDEFhi) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vaprod01234567lo) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vaprod01234567hi) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vaOPQRSTUV) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vaGHIJKLMN) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %va89ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %va01234567) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %129 = load i64, ptr %n.addr, align 8, !tbaa !5
  %sub = sub i64 %129, 32
  store i64 %sub, ptr %n.addr, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %130 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp94 = icmp ne i64 %130, 0
  %lnot = xor i1 %cmp94, true
  %lnot96 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot96 to i32
  %conv97 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv97, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end159

if.then:                                          ; preds = %for.end
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  call void @llvm.lifetime.start.p0(i64 16, ptr %va0123456798) #5
  %131 = load ptr, ptr %input_a.addr, align 8, !tbaa !9
  %call99 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %131)
  %call100 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %call99)
  store <2 x i64> %call100, ptr %va0123456798, align 16, !tbaa !11
  %132 = load ptr, ptr %input_a.addr, align 8, !tbaa !9
  %add.ptr101 = getelementptr inbounds i8, ptr %132, i64 8
  store ptr %add.ptr101, ptr %input_a.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vaprod01234567hi102) #5
  %133 = load <2 x i64>, ptr %va0123456798, align 16, !tbaa !11
  %134 = load <2 x i64>, ptr %va_multiplier_lo, align 16, !tbaa !11
  %call103 = call <2 x i64> @_mm_mulhi_epu16(<2 x i64> noundef %133, <2 x i64> noundef %134)
  store <2 x i64> %call103, ptr %vaprod01234567hi102, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vaprod01234567lo104) #5
  %135 = load <2 x i64>, ptr %va0123456798, align 16, !tbaa !11
  %136 = load <2 x i64>, ptr %va_multiplier_lo, align 16, !tbaa !11
  %call105 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %135, <2 x i64> noundef %136)
  store <2 x i64> %call105, ptr %vaprod01234567lo104, align 16, !tbaa !11
  %137 = load <2 x i64>, ptr %vaprod01234567hi102, align 16, !tbaa !11
  %138 = load <2 x i64>, ptr %va0123456798, align 16, !tbaa !11
  %139 = load <2 x i64>, ptr %va_multiplier_hi, align 16, !tbaa !11
  %call106 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %138, <2 x i64> noundef %139)
  %call107 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %137, <2 x i64> noundef %call106)
  store <2 x i64> %call107, ptr %vaprod01234567hi102, align 16, !tbaa !11
  %140 = load <2 x i64>, ptr %vaprod01234567hi102, align 16, !tbaa !11
  %141 = load <2 x i64>, ptr %va0123456798, align 16, !tbaa !11
  %call108 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %141, i32 noundef 15)
  %142 = load <2 x i64>, ptr %va_multiplier_lo, align 16, !tbaa !11
  %call109 = call <2 x i64> @_mm_and_si128(<2 x i64> noundef %call108, <2 x i64> noundef %142)
  %call110 = call <2 x i64> @_mm_sub_epi16(<2 x i64> noundef %140, <2 x i64> noundef %call109)
  store <2 x i64> %call110, ptr %vaprod01234567hi102, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc0123111) #5
  %143 = load <2 x i64>, ptr %vbias, align 16, !tbaa !11
  %144 = load <2 x i64>, ptr %vaprod01234567lo104, align 16, !tbaa !11
  %145 = load <2 x i64>, ptr %vaprod01234567hi102, align 16, !tbaa !11
  %call112 = call <2 x i64> @_mm_unpacklo_epi16(<2 x i64> noundef %144, <2 x i64> noundef %145)
  %call113 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %143, <2 x i64> noundef %call112)
  store <2 x i64> %call113, ptr %vacc0123111, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc4567114) #5
  %146 = load <2 x i64>, ptr %vbias, align 16, !tbaa !11
  %147 = load <2 x i64>, ptr %vaprod01234567lo104, align 16, !tbaa !11
  %148 = load <2 x i64>, ptr %vaprod01234567hi102, align 16, !tbaa !11
  %call115 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %147, <2 x i64> noundef %148)
  %call116 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %146, <2 x i64> noundef %call115)
  store <2 x i64> %call116, ptr %vacc4567114, align 16, !tbaa !11
  %149 = load <2 x i64>, ptr %vacc0123111, align 16, !tbaa !11
  %150 = load <2 x i64>, ptr %vshift, align 16, !tbaa !11
  %call117 = call <2 x i64> @_mm_sra_epi32(<2 x i64> noundef %149, <2 x i64> noundef %150)
  store <2 x i64> %call117, ptr %vacc0123111, align 16, !tbaa !11
  %151 = load <2 x i64>, ptr %vacc4567114, align 16, !tbaa !11
  %152 = load <2 x i64>, ptr %vshift, align 16, !tbaa !11
  %call118 = call <2 x i64> @_mm_sra_epi32(<2 x i64> noundef %151, <2 x i64> noundef %152)
  store <2 x i64> %call118, ptr %vacc4567114, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout01234567119) #5
  %153 = load <2 x i64>, ptr %vacc0123111, align 16, !tbaa !11
  %154 = load <2 x i64>, ptr %vacc4567114, align 16, !tbaa !11
  %call120 = call <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %153, <2 x i64> noundef %154)
  %155 = load <2 x i64>, ptr %voutput_zero_point, align 16, !tbaa !11
  %call121 = call <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %call120, <2 x i64> noundef %155)
  store <2 x i64> %call121, ptr %vout01234567119, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout0123456701234567) #5
  %156 = load <2 x i64>, ptr %vout01234567119, align 16, !tbaa !11
  %157 = load <2 x i64>, ptr %vout01234567119, align 16, !tbaa !11
  %call122 = call <2 x i64> @_mm_packs_epi16(<2 x i64> noundef %156, <2 x i64> noundef %157)
  store <2 x i64> %call122, ptr %vout0123456701234567, align 16, !tbaa !11
  %158 = load <2 x i64>, ptr %vout0123456701234567, align 16, !tbaa !11
  %159 = load <2 x i64>, ptr %voutput_min, align 16, !tbaa !11
  %call123 = call <2 x i64> @_mm_max_epi8(<2 x i64> noundef %158, <2 x i64> noundef %159)
  store <2 x i64> %call123, ptr %vout0123456701234567, align 16, !tbaa !11
  %160 = load <2 x i64>, ptr %vout0123456701234567, align 16, !tbaa !11
  %161 = load <2 x i64>, ptr %voutput_max, align 16, !tbaa !11
  %call124 = call <2 x i64> @_mm_min_epi8(<2 x i64> noundef %160, <2 x i64> noundef %161)
  store <2 x i64> %call124, ptr %vout0123456701234567, align 16, !tbaa !11
  %162 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp125 = icmp uge i64 %162, 8
  %lnot127 = xor i1 %cmp125, true
  %lnot129 = xor i1 %lnot127, true
  %lnot.ext130 = zext i1 %lnot129 to i32
  %conv131 = sext i32 %lnot.ext130 to i64
  %expval132 = call i64 @llvm.expect.i64(i64 %conv131, i64 1)
  %tobool133 = icmp ne i64 %expval132, 0
  br i1 %tobool133, label %if.then134, label %if.else

if.then134:                                       ; preds = %do.body
  %163 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %164 = load <2 x i64>, ptr %vout0123456701234567, align 16, !tbaa !11
  call void @_mm_storel_epi64(ptr noundef %163, <2 x i64> noundef %164)
  %165 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr135 = getelementptr inbounds i8, ptr %165, i64 8
  store ptr %add.ptr135, ptr %output.addr, align 8, !tbaa !9
  %166 = load i64, ptr %n.addr, align 8, !tbaa !5
  %sub136 = sub i64 %166, 8
  store i64 %sub136, ptr %n.addr, align 8, !tbaa !5
  br label %if.end156

if.else:                                          ; preds = %do.body
  %167 = load i64, ptr %n.addr, align 8, !tbaa !5
  %and = and i64 %167, 4
  %tobool137 = icmp ne i64 %and, 0
  br i1 %tobool137, label %if.then138, label %if.end

if.then138:                                       ; preds = %if.else
  %168 = load <2 x i64>, ptr %vout0123456701234567, align 16, !tbaa !11
  %call139 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %168)
  %169 = load ptr, ptr %output.addr, align 8, !tbaa !9
  store i32 %call139, ptr %169, align 4, !tbaa !14
  %170 = load <2 x i64>, ptr %vout0123456701234567, align 16, !tbaa !11
  %call140 = call <2 x i64> @_mm_srli_epi64(<2 x i64> noundef %170, i32 noundef 32)
  store <2 x i64> %call140, ptr %vout0123456701234567, align 16, !tbaa !11
  %171 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr141 = getelementptr inbounds i8, ptr %171, i64 4
  store ptr %add.ptr141, ptr %output.addr, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then138, %if.else
  %172 = load i64, ptr %n.addr, align 8, !tbaa !5
  %and142 = and i64 %172, 2
  %tobool143 = icmp ne i64 %and142, 0
  br i1 %tobool143, label %if.then144, label %if.end149

if.then144:                                       ; preds = %if.end
  %173 = load <2 x i64>, ptr %vout0123456701234567, align 16, !tbaa !11
  %174 = bitcast <2 x i64> %173 to <8 x i16>
  %175 = extractelement <8 x i16> %174, i64 0
  %conv145 = zext i16 %175 to i32
  %conv146 = trunc i32 %conv145 to i16
  %176 = load ptr, ptr %output.addr, align 8, !tbaa !9
  store i16 %conv146, ptr %176, align 2, !tbaa !16
  %177 = load <2 x i64>, ptr %vout0123456701234567, align 16, !tbaa !11
  %call147 = call <2 x i64> @_mm_srli_epi32(<2 x i64> noundef %177, i32 noundef 16)
  store <2 x i64> %call147, ptr %vout0123456701234567, align 16, !tbaa !11
  %178 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr148 = getelementptr inbounds i8, ptr %178, i64 2
  store ptr %add.ptr148, ptr %output.addr, align 8, !tbaa !9
  br label %if.end149

if.end149:                                        ; preds = %if.then144, %if.end
  %179 = load i64, ptr %n.addr, align 8, !tbaa !5
  %and150 = and i64 %179, 1
  %tobool151 = icmp ne i64 %and150, 0
  br i1 %tobool151, label %if.then152, label %if.end155

if.then152:                                       ; preds = %if.end149
  %180 = load <2 x i64>, ptr %vout0123456701234567, align 16, !tbaa !11
  %181 = bitcast <2 x i64> %180 to <16 x i8>
  %182 = extractelement <16 x i8> %181, i64 0
  %conv153 = zext i8 %182 to i32
  %conv154 = trunc i32 %conv153 to i8
  %183 = load ptr, ptr %output.addr, align 8, !tbaa !9
  store i8 %conv154, ptr %183, align 1, !tbaa !11
  br label %if.end155

if.end155:                                        ; preds = %if.then152, %if.end149
  store i64 0, ptr %n.addr, align 8, !tbaa !5
  br label %if.end156

if.end156:                                        ; preds = %if.end155, %if.then134
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout0123456701234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout01234567119) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc4567114) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc0123111) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vaprod01234567lo104) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vaprod01234567hi102) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %va0123456798) #5
  br label %do.cond

do.cond:                                          ; preds = %if.end156
  %184 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp157 = icmp ne i64 %184, 0
  br i1 %cmp157, label %do.body, label %do.end, !llvm.loop !18

do.end:                                           ; preds = %do.cond
  br label %if.end159

if.end159:                                        ; preds = %do.end, %for.end
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_max) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_min) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_zero_point) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vshift) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %va_multiplier_hi) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %va_multiplier_lo) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vbias) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_add_epi32(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !11
  %3 = bitcast <2 x i64> %2 to <4 x i32>
  %add = add <4 x i32> %1, %3
  %4 = bitcast <4 x i32> %add to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_cvtsi32_si128(i32 noundef %__a) #2 {
entry:
  %__a.addr = alloca i32, align 4
  %.compoundliteral = alloca <4 x i32>, align 16
  store i32 %__a, ptr %__a.addr, align 4, !tbaa !14
  %0 = load i32, ptr %__a.addr, align 4, !tbaa !14
  %vecinit = insertelement <4 x i32> undef, i32 %0, i32 0
  %vecinit1 = insertelement <4 x i32> %vecinit, i32 0, i32 1
  %vecinit2 = insertelement <4 x i32> %vecinit1, i32 0, i32 2
  %vecinit3 = insertelement <4 x i32> %vecinit2, i32 0, i32 3
  store <4 x i32> %vecinit3, ptr %.compoundliteral, align 16, !tbaa !11
  %1 = load <4 x i32>, ptr %.compoundliteral, align 16, !tbaa !11
  %2 = bitcast <4 x i32> %1 to <2 x i64>
  ret <2 x i64> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_load_si128(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %1 = load <2 x i64>, ptr %0, align 16, !tbaa !11
  ret <2 x i64> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %__V) #2 {
entry:
  %__V.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__V, ptr %__V.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__V.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = load <2 x i64>, ptr %__V.addr, align 16, !tbaa !11
  %3 = bitcast <2 x i64> %2 to <16 x i8>
  %shuffle = shufflevector <16 x i8> %1, <16 x i8> %3, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %conv = sext <8 x i8> %shuffle to <8 x i16>
  %4 = bitcast <8 x i16> %conv to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_loadl_epi64(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  %.compoundliteral = alloca <2 x i64>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__u = getelementptr inbounds %struct.__mm_loadl_epi64_struct, ptr %0, i32 0, i32 0
  %1 = load i64, ptr %__u, align 1, !tbaa !11
  %vecinit = insertelement <2 x i64> undef, i64 %1, i32 0
  %vecinit1 = insertelement <2 x i64> %vecinit, i64 0, i32 1
  store <2 x i64> %vecinit1, ptr %.compoundliteral, align 16, !tbaa !11
  %2 = load <2 x i64>, ptr %.compoundliteral, align 16, !tbaa !11
  ret <2 x i64> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_mulhi_epu16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !11
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %4 = call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %1, <8 x i16> %3)
  %5 = bitcast <8 x i16> %4 to <2 x i64>
  ret <2 x i64> %5
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !11
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %mul = mul <8 x i16> %1, %3
  %4 = bitcast <8 x i16> %mul to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_add_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !11
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %add = add <8 x i16> %1, %3
  %4 = bitcast <8 x i16> %add to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_sub_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !11
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %sub = sub <8 x i16> %1, %3
  %4 = bitcast <8 x i16> %sub to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_and_si128(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !11
  %and = and <2 x i64> %0, %1
  ret <2 x i64> %and
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %__a, i32 noundef %__count) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__count.addr = alloca i32, align 4
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store i32 %__count, ptr %__count.addr, align 4, !tbaa !14
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load i32, ptr %__count.addr, align 4, !tbaa !14
  %3 = call <8 x i16> @llvm.x86.sse2.psrai.w(<8 x i16> %1, i32 %2)
  %4 = bitcast <8 x i16> %3 to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_unpacklo_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !11
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %shuffle = shufflevector <8 x i16> %1, <8 x i16> %3, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %4 = bitcast <8 x i16> %shuffle to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !11
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %shuffle = shufflevector <8 x i16> %1, <8 x i16> %3, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %4 = bitcast <8 x i16> %shuffle to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_sra_epi32(<2 x i64> noundef %__a, <2 x i64> noundef %__count) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__count.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <2 x i64> %__count, ptr %__count.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %2 = load <2 x i64>, ptr %__count.addr, align 16, !tbaa !11
  %3 = bitcast <2 x i64> %2 to <4 x i32>
  %4 = call <4 x i32> @llvm.x86.sse2.psra.d(<4 x i32> %1, <4 x i32> %3)
  %5 = bitcast <4 x i32> %4 to <2 x i64>
  ret <2 x i64> %5
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !11
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %elt.sat = call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %1, <8 x i16> %3)
  %4 = bitcast <8 x i16> %elt.sat to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !11
  %3 = bitcast <2 x i64> %2 to <4 x i32>
  %4 = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %1, <4 x i32> %3)
  %5 = bitcast <8 x i16> %4 to <2 x i64>
  ret <2 x i64> %5
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_packs_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !11
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %4 = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %1, <8 x i16> %3)
  %5 = bitcast <16 x i8> %4 to <2 x i64>
  ret <2 x i64> %5
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_max_epi8(<2 x i64> noundef %__V1, <2 x i64> noundef %__V2) #2 {
entry:
  %__V1.addr = alloca <2 x i64>, align 16
  %__V2.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__V1, ptr %__V1.addr, align 16, !tbaa !11
  store <2 x i64> %__V2, ptr %__V2.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__V1.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = load <2 x i64>, ptr %__V2.addr, align 16, !tbaa !11
  %3 = bitcast <2 x i64> %2 to <16 x i8>
  %elt.max = call <16 x i8> @llvm.smax.v16i8(<16 x i8> %1, <16 x i8> %3)
  %4 = bitcast <16 x i8> %elt.max to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_min_epi8(<2 x i64> noundef %__V1, <2 x i64> noundef %__V2) #2 {
entry:
  %__V1.addr = alloca <2 x i64>, align 16
  %__V2.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__V1, ptr %__V1.addr, align 16, !tbaa !11
  store <2 x i64> %__V2, ptr %__V2.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__V1.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = load <2 x i64>, ptr %__V2.addr, align 16, !tbaa !11
  %3 = bitcast <2 x i64> %2 to <16 x i8>
  %elt.min = call <16 x i8> @llvm.smin.v16i8(<16 x i8> %1, <16 x i8> %3)
  %4 = bitcast <16 x i8> %elt.min to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_storeu_si128(ptr noundef %__p, <2 x i64> noundef %__b) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  %__b.addr = alloca <2 x i64>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !11
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__v = getelementptr inbounds %struct.__storeu_si128, ptr %1, i32 0, i32 0
  store <2 x i64> %0, ptr %__v, align 1, !tbaa !11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_storel_epi64(ptr noundef %__p, <2 x i64> noundef %__a) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  %__a.addr = alloca <2 x i64>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %vecext = extractelement <2 x i64> %0, i32 0
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__u = getelementptr inbounds %struct.__mm_storel_epi64_struct, ptr %1, i32 0, i32 0
  store i64 %vecext, ptr %__u, align 1, !tbaa !11
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @_mm_cvtsi128_si32(<2 x i64> noundef %__a) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b = alloca <4 x i32>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %__b) #5
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  store <4 x i32> %1, ptr %__b, align 16, !tbaa !11
  %2 = load <4 x i32>, ptr %__b, align 16, !tbaa !11
  %vecext = extractelement <4 x i32> %2, i32 0
  call void @llvm.lifetime.end.p0(i64 16, ptr %__b) #5
  ret i32 %vecext
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_srli_epi64(<2 x i64> noundef %__a, i32 noundef %__count) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__count.addr = alloca i32, align 4
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store i32 %__count, ptr %__count.addr, align 4, !tbaa !14
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = load i32, ptr %__count.addr, align 4, !tbaa !14
  %2 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %0, i32 %1)
  ret <2 x i64> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_srli_epi32(<2 x i64> noundef %__a, i32 noundef %__count) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__count.addr = alloca i32, align 4
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store i32 %__count, ptr %__count.addr, align 4, !tbaa !14
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %2 = load i32, ptr %__count.addr, align 4, !tbaa !14
  %3 = call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %1, i32 %2)
  %4 = bitcast <4 x i32> %3 to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16>, <8 x i16>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.psrai.w(<8 x i16>, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.psra.d(<4 x i32>, <4 x i32>) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16>, <8 x i16>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16>, <8 x i16>) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.smax.v16i8(<16 x i8>, <16 x i8>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.smin.v16i8(<16 x i8>, <16 x i8>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64>, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32>, i32) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { alwaysinline nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!7, !7, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !7, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"short", !7, i64 0}
!18 = distinct !{!18, !13}
