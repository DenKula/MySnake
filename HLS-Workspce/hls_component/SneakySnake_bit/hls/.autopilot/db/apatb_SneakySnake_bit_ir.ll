; ModuleID = '/home/deniz/Projects/SneakySnake/HLS-Workspce/hls_component/SneakySnake_bit/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_uint<256>" = type { %"struct.ap_int_base<256, false>" }
%"struct.ap_int_base<256, false>" = type { %"struct.ssdm_int<256, false>" }
%"struct.ssdm_int<256, false>" = type { i256 }

; Function Attrs: argmemonly noinline willreturn
define i32 @apatb_SneakySnake_bit_ir(i32 %ReadLength, %"struct.ap_uint<256>"* noalias nocapture nonnull readonly dereferenceable(32) %ReadSeq, %"struct.ap_uint<256>"* noalias nocapture nonnull readonly dereferenceable(32) %RefSeq, i32 %EditThreshold, i32 %KmerSize) local_unnamed_addr #0 {
entry:
  %ReadSeq_copy = alloca i256, align 512
  %RefSeq_copy = alloca i256, align 512
  call fastcc void @copy_in(%"struct.ap_uint<256>"* nonnull %ReadSeq, i256* nonnull align 512 %ReadSeq_copy, %"struct.ap_uint<256>"* nonnull %RefSeq, i256* nonnull align 512 %RefSeq_copy)
  %0 = call i32 @apatb_SneakySnake_bit_hw(i32 %ReadLength, i256* %ReadSeq_copy, i256* %RefSeq_copy, i32 %EditThreshold, i32 %KmerSize)
  call void @copy_back(%"struct.ap_uint<256>"* %ReadSeq, i256* %ReadSeq_copy, %"struct.ap_uint<256>"* %RefSeq, i256* %RefSeq_copy)
  ret i32 %0
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in(%"struct.ap_uint<256>"* noalias readonly "unpacked"="0", i256* noalias nocapture align 512 "unpacked"="1.0", %"struct.ap_uint<256>"* noalias readonly "unpacked"="2", i256* noalias nocapture align 512 "unpacked"="3.0") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<256>.37"(i256* align 512 %1, %"struct.ap_uint<256>"* %0)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<256>.37"(i256* align 512 %3, %"struct.ap_uint<256>"* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out(%"struct.ap_uint<256>"* noalias "unpacked"="0", i256* noalias nocapture readonly align 512 "unpacked"="1.0", %"struct.ap_uint<256>"* noalias "unpacked"="2", i256* noalias nocapture readonly align 512 "unpacked"="3.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<256>"(%"struct.ap_uint<256>"* %0, i256* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<256>"(%"struct.ap_uint<256>"* %2, i256* align 512 %3)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<256>"(%"struct.ap_uint<256>"* noalias "unpacked"="0" %dst, i256* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"struct.ap_uint<256>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0.0.04 = getelementptr %"struct.ap_uint<256>", %"struct.ap_uint<256>"* %dst, i64 0, i32 0, i32 0, i32 0
  %1 = load i256, i256* %src, align 512
  store i256 %1, i256* %dst.0.0.04, align 32
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<256>.37"(i256* noalias nocapture align 512 "unpacked"="0.0" %dst, %"struct.ap_uint<256>"* noalias readonly "unpacked"="1" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"struct.ap_uint<256>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0.0.03 = getelementptr %"struct.ap_uint<256>", %"struct.ap_uint<256>"* %src, i64 0, i32 0, i32 0, i32 0
  %1 = load i256, i256* %src.0.0.03, align 32
  store i256 %1, i256* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

declare i8* @malloc(i64)

declare void @free(i8*)

declare i32 @apatb_SneakySnake_bit_hw(i32, i256*, i256*, i32, i32)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back(%"struct.ap_uint<256>"* noalias "unpacked"="0", i256* noalias nocapture readonly align 512 "unpacked"="1.0", %"struct.ap_uint<256>"* noalias "unpacked"="2", i256* noalias nocapture readonly align 512 "unpacked"="3.0") unnamed_addr #2 {
entry:
  ret void
}

declare i32 @SneakySnake_bit_hw_stub(i32, %"struct.ap_uint<256>"* noalias nocapture nonnull readonly, %"struct.ap_uint<256>"* noalias nocapture nonnull readonly, i32, i32)

define i32 @SneakySnake_bit_hw_stub_wrapper(i32, i256*, i256*, i32, i32) #4 {
entry:
  %5 = call i8* @malloc(i64 32)
  %6 = bitcast i8* %5 to %"struct.ap_uint<256>"*
  %7 = call i8* @malloc(i64 32)
  %8 = bitcast i8* %7 to %"struct.ap_uint<256>"*
  call void @copy_out(%"struct.ap_uint<256>"* %6, i256* %1, %"struct.ap_uint<256>"* %8, i256* %2)
  %9 = call i32 @SneakySnake_bit_hw_stub(i32 %0, %"struct.ap_uint<256>"* %6, %"struct.ap_uint<256>"* %8, i32 %3, i32 %4)
  call void @copy_in(%"struct.ap_uint<256>"* %6, i256* %1, %"struct.ap_uint<256>"* %8, i256* %2)
  call void @free(i8* %5)
  call void @free(i8* %7)
  ret i32 %9
}

attributes #0 = { argmemonly noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
