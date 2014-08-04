; ModuleID = 'test.rs'
target datalayout = "e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%str_slice = type { i8*, i64 }
%"struct.test::Bencher<[]>[#11]" = type { i64, i64, i64, i64 }
%"struct.collections::vec::Vec<[collections::string::String]>[#6]" = type { i64, i64, %"struct.collections::string::String<[]>[#6]"* }
%"struct.collections::string::String<[]>[#6]" = type { %"struct.collections::vec::Vec<[u8]>[#6]" }
%"struct.collections::vec::Vec<[u8]>[#6]" = type { i64, i64, i8* }
%"struct.test::TestDescAndFn<[]>[#11]" = type { %"struct.test::TestDesc<[]>[#11]", %"enum.test::TestFn<[]>[#11]" }
%"struct.test::TestDesc<[]>[#11]" = type { %"enum.test::TestName<[]>[#11]", i8, i8 }
%"enum.test::TestName<[]>[#11]" = type { i8, [7 x i8], [3 x i64] }
%"enum.test::TestFn<[]>[#11]" = type { i8, [7 x i8], [2 x i64] }
%"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]" = type { i64, void (i32, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*)*, [2 x i64] }
%"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]" = type {}

@"str\22str\22(1387)" = internal constant [315 x i8] c"                                                                                                                                                                                                                                                                                                                           "
@_ZN5SPACE20h8d9a3b14e4a94958jaaE = internal unnamed_addr constant %str_slice { i8* getelementptr inbounds ([315 x i8]* @"str\22str\22(1387)", i32 0, i32 0), i64 315 }
@"str\22str\22(1659)" = internal constant [31 x i8] c"bench_count_leading_utf8_spaces"
@"str\22str\22(1660)" = internal constant [31 x i8] c"bench_count_leading_char_spaces"
@const = private constant { { { { i8, %str_slice, [8 x i8] }, i1, i1, [6 x i8] }, { i8, void (%"struct.test::Bencher<[]>[#11]"*)*, [8 x i8] } }, { { { i8, %str_slice, [8 x i8] }, i1, i1, [6 x i8] }, { i8, void (%"struct.test::Bencher<[]>[#11]"*)*, [8 x i8] } } } { { { { i8, %str_slice, [8 x i8] }, i1, i1, [6 x i8] }, { i8, void (%"struct.test::Bencher<[]>[#11]"*)*, [8 x i8] } } { { { i8, %str_slice, [8 x i8] }, i1, i1, [6 x i8] } { { i8, %str_slice, [8 x i8] } { i8 0, %str_slice { i8* getelementptr inbounds ([31 x i8]* @"str\22str\22(1659)", i32 0, i32 0), i64 31 }, [8 x i8] undef }, i1 false, i1 false, [6 x i8] undef }, { i8, void (%"struct.test::Bencher<[]>[#11]"*)*, [8 x i8] } { i8 1, void (%"struct.test::Bencher<[]>[#11]"*)* @_ZN31bench_count_leading_utf8_spaces20h0aea00d1604c7a4efbaE, [8 x i8] undef } }, { { { i8, %str_slice, [8 x i8] }, i1, i1, [6 x i8] }, { i8, void (%"struct.test::Bencher<[]>[#11]"*)*, [8 x i8] } } { { { i8, %str_slice, [8 x i8] }, i1, i1, [6 x i8] } { { i8, %str_slice, [8 x i8] } { i8 0, %str_slice { i8* getelementptr inbounds ([31 x i8]* @"str\22str\22(1660)", i32 0, i32 0), i64 31 }, [8 x i8] undef }, i1 false, i1 false, [6 x i8] undef }, { i8, void (%"struct.test::Bencher<[]>[#11]"*)*, [8 x i8] } { i8 1, void (%"struct.test::Bencher<[]>[#11]"*)* @_ZN31bench_count_leading_char_spaces20he84c2a0cd65db352bcaE, [8 x i8] undef } } }

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @_ZN25count_leading_utf8_spaces20h398631f22717a0cfCaaE(%str_slice* noalias nocapture dereferenceable(16)) unnamed_addr #0 {
entry-block:
  %1 = getelementptr inbounds %str_slice* %0, i64 0, i32 0
  %2 = load i8** %1, align 8
  %3 = getelementptr inbounds %str_slice* %0, i64 0, i32 1
  %4 = load i64* %3, align 8
  %5 = getelementptr inbounds i8* %2, i64 %4
  br label %while_cond

while_exit:                                       ; preds = %match_case5.i
  %6 = bitcast %str_slice* %0 to i8*
  tail call void @llvm.lifetime.end(i64 16, i8* %6)
  ret void

while_cond:                                       ; preds = %match_case5.i, %entry-block
  %7 = phi i8* [ %2, %entry-block ], [ %37, %match_case5.i ]
  %8 = icmp eq i8* %7, %5
  br i1 %8, label %match_case5.i, label %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next21h11119282894853510210E.exit.i"

"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next21h11119282894853510210E.exit.i": ; preds = %while_cond
  %9 = getelementptr inbounds i8* %7, i64 1
  %10 = icmp eq i8* %7, null
  br i1 %10, label %match_case5.i, label %match_case.i3

match_case.i3:                                    ; preds = %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next21h11119282894853510210E.exit.i"
  %11 = load i8* %7, align 1
  %12 = icmp sgt i8 %11, -1
  br i1 %12, label %match_case5.i, label %compare_next.i

compare_next.i:                                   ; preds = %match_case.i3
  %13 = and i8 %11, -32
  %14 = icmp eq i8 %13, -64
  br i1 %14, label %match_case9.i, label %compare_next10.i

match_case9.i:                                    ; preds = %compare_next.i
  %15 = icmp eq i8* %9, %5
  br i1 %15, label %match_case5.i, label %match_case21.i

compare_next10.i:                                 ; preds = %compare_next.i
  %16 = and i8 %11, -16
  %17 = icmp eq i8 %16, -32
  br i1 %17, label %match_case11.i, label %compare_next12.i

match_case11.i:                                   ; preds = %compare_next10.i
  %18 = icmp eq i8* %9, %5
  br i1 %18, label %match_case5.i, label %match_case31.i

compare_next12.i:                                 ; preds = %compare_next10.i
  %19 = and i8 %11, -8
  %20 = icmp ne i8 %19, -16
  %21 = icmp eq i8* %9, %5
  %or.cond.i = or i1 %20, %21
  br i1 %or.cond.i, label %match_case5.i, label %match_case50.i

match_case21.i:                                   ; preds = %match_case9.i
  %22 = getelementptr inbounds i8* %7, i64 2
  %23 = load i8* %9, align 1
  br label %match_case5.i

match_case31.i:                                   ; preds = %match_case11.i
  %24 = getelementptr inbounds i8* %7, i64 2
  %25 = icmp eq i8* %24, %5
  br i1 %25, label %match_case5.i, label %match_case40.i

match_case40.i:                                   ; preds = %match_case31.i
  %26 = load i8* %9, align 1
  %27 = getelementptr inbounds i8* %7, i64 3
  %28 = load i8* %24, align 1
  br label %match_case5.i

match_case50.i:                                   ; preds = %compare_next12.i
  %29 = getelementptr inbounds i8* %7, i64 2
  %30 = load i8* %9, align 1
  %31 = icmp eq i8* %29, %5
  br i1 %31, label %match_case5.i, label %match_case59.i

match_case59.i:                                   ; preds = %match_case50.i
  %32 = getelementptr inbounds i8* %7, i64 3
  %33 = icmp eq i8* %32, %5
  br i1 %33, label %match_case5.i, label %match_case69.i

match_case69.i:                                   ; preds = %match_case59.i
  %34 = load i8* %29, align 1
  %35 = getelementptr inbounds i8* %7, i64 4
  %36 = load i8* %32, align 1
  %phitmp = zext i8 %36 to i32
  %phitmp12 = shl nuw i32 %phitmp, 24
  br label %match_case5.i

match_case5.i:                                    ; preds = %match_case69.i, %match_case59.i, %match_case50.i, %match_case40.i, %match_case31.i, %match_case21.i, %compare_next12.i, %match_case11.i, %match_case9.i, %match_case.i3, %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next21h11119282894853510210E.exit.i", %while_cond
  %37 = phi i8* [ %9, %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next21h11119282894853510210E.exit.i" ], [ %9, %compare_next12.i ], [ %5, %while_cond ], [ %5, %match_case9.i ], [ %5, %match_case11.i ], [ %5, %match_case31.i ], [ %5, %match_case50.i ], [ %5, %match_case59.i ], [ %9, %match_case.i3 ], [ %35, %match_case69.i ], [ %27, %match_case40.i ], [ %22, %match_case21.i ]
  %__make_return_pointer.sroa.0.0.i = phi i1 [ false, %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next21h11119282894853510210E.exit.i" ], [ false, %compare_next12.i ], [ false, %while_cond ], [ false, %match_case9.i ], [ false, %match_case11.i ], [ false, %match_case31.i ], [ false, %match_case50.i ], [ false, %match_case59.i ], [ true, %match_case.i3 ], [ true, %match_case69.i ], [ true, %match_case40.i ], [ true, %match_case21.i ]
  %__make_return_pointer.sroa.10.0.i = phi i8 [ undef, %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next21h11119282894853510210E.exit.i" ], [ undef, %compare_next12.i ], [ undef, %while_cond ], [ undef, %match_case9.i ], [ undef, %match_case11.i ], [ undef, %match_case31.i ], [ undef, %match_case50.i ], [ undef, %match_case59.i ], [ %11, %match_case.i3 ], [ %11, %match_case69.i ], [ %11, %match_case40.i ], [ %11, %match_case21.i ]
  %__make_return_pointer.sroa.12.0.i = phi i8 [ undef, %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next21h11119282894853510210E.exit.i" ], [ undef, %compare_next12.i ], [ undef, %while_cond ], [ undef, %match_case9.i ], [ undef, %match_case11.i ], [ undef, %match_case31.i ], [ undef, %match_case50.i ], [ undef, %match_case59.i ], [ 0, %match_case.i3 ], [ %30, %match_case69.i ], [ %26, %match_case40.i ], [ %23, %match_case21.i ]
  %__make_return_pointer.sroa.14.0.i = phi i8 [ undef, %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next21h11119282894853510210E.exit.i" ], [ undef, %compare_next12.i ], [ undef, %while_cond ], [ undef, %match_case9.i ], [ undef, %match_case11.i ], [ undef, %match_case31.i ], [ undef, %match_case50.i ], [ undef, %match_case59.i ], [ 0, %match_case.i3 ], [ %34, %match_case69.i ], [ %28, %match_case40.i ], [ 0, %match_case21.i ]
  %__make_return_pointer.sroa.16.0.i = phi i32 [ 0, %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next21h11119282894853510210E.exit.i" ], [ 0, %compare_next12.i ], [ 0, %while_cond ], [ 0, %match_case9.i ], [ 0, %match_case11.i ], [ 0, %match_case31.i ], [ 0, %match_case50.i ], [ 0, %match_case59.i ], [ 0, %match_case.i3 ], [ %phitmp12, %match_case69.i ], [ 0, %match_case40.i ], [ 0, %match_case21.i ]
  %autoref.sroa.5.1.insert.ext = zext i8 %__make_return_pointer.sroa.10.0.i to i32
  %autoref.sroa.5.2.insert.ext = zext i8 %__make_return_pointer.sroa.12.0.i to i32
  %autoref.sroa.5.2.insert.shift = shl nuw nsw i32 %autoref.sroa.5.2.insert.ext, 8
  %autoref.sroa.5.2.insert.insert = or i32 %autoref.sroa.5.2.insert.shift, %autoref.sroa.5.1.insert.ext
  %autoref.sroa.5.3.insert.ext = zext i8 %__make_return_pointer.sroa.14.0.i to i32
  %autoref.sroa.5.3.insert.shift = shl nuw nsw i32 %autoref.sroa.5.3.insert.ext, 16
  %autoref.sroa.5.3.insert.insert = or i32 %autoref.sroa.5.2.insert.insert, %__make_return_pointer.sroa.16.0.i
  %autoref.sroa.5.4.insert.insert = or i32 %autoref.sroa.5.3.insert.insert, %autoref.sroa.5.3.insert.shift
  %38 = icmp eq i32 %autoref.sroa.5.4.insert.insert, 32
  %or.cond = and i1 %__make_return_pointer.sroa.0.0.i, %38
  br i1 %or.cond, label %while_cond, label %while_exit
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) unnamed_addr #1

; Function Attrs: uwtable
define void @_ZN31bench_count_leading_utf8_spaces20h0aea00d1604c7a4efbaE(%"struct.test::Bencher<[]>[#11]"* noalias nocapture dereferenceable(32)) unnamed_addr #2 {
entry-block:
  %dummy.i.i = alloca {}, align 8
  %arg.i = alloca %str_slice, align 8
  %1 = getelementptr inbounds %"struct.test::Bencher<[]>[#11]"* %0, i64 0, i32 1
  %2 = tail call i64 @_ZN15precise_time_ns20h967042282428adebhraE()
  store i64 %2, i64* %1, align 8
  %3 = getelementptr inbounds %"struct.test::Bencher<[]>[#11]"* %0, i64 0, i32 0
  %4 = load i64* %3, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %_ZN7Bencher4iter20h8639068344303171751E.exit, label %for_body.lr.ph.i

for_body.lr.ph.i:                                 ; preds = %entry-block
  %6 = bitcast {}* %dummy.i.i to i8*
  %7 = bitcast %str_slice* %arg.i to i8*
  br label %for_body.i

for_body.i:                                       ; preds = %for_body.i, %for_body.lr.ph.i
  %8 = phi i64 [ 0, %for_body.lr.ph.i ], [ %9, %for_body.i ]
  %9 = add i64 %8, 1
  call void @llvm.lifetime.start(i64 16, i8* %7)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast (%str_slice* @_ZN5SPACE20h8d9a3b14e4a94958jaaE to i8*), i64 16, i32 8, i1 false)
  call fastcc void @_ZN25count_leading_utf8_spaces20h398631f22717a0cfCaaE(%str_slice* noalias nocapture dereferenceable(16) %arg.i)
  call void @llvm.lifetime.start(i64 0, i8* %6) #4
  call void asm "", "r,~{dirflag},~{fpsr},~{flags}"({}* %dummy.i.i) #4
  call void @llvm.lifetime.end(i64 0, i8* %6) #4
  %exitcond.i = icmp eq i64 %9, %4
  br i1 %exitcond.i, label %_ZN7Bencher4iter20h8639068344303171751E.exit.loopexit, label %for_body.i

_ZN7Bencher4iter20h8639068344303171751E.exit.loopexit: ; preds = %for_body.i
  br label %_ZN7Bencher4iter20h8639068344303171751E.exit

_ZN7Bencher4iter20h8639068344303171751E.exit:     ; preds = %_ZN7Bencher4iter20h8639068344303171751E.exit.loopexit, %entry-block
  %10 = getelementptr inbounds %"struct.test::Bencher<[]>[#11]"* %0, i64 0, i32 2
  %11 = call i64 @_ZN15precise_time_ns20h967042282428adebhraE()
  store i64 %11, i64* %10, align 8
  ret void
}

declare i64 @_ZN15precise_time_ns20h967042282428adebhraE() unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @_ZN25count_leading_char_spaces20hc3a7abcd57f65237ybaE(%str_slice* noalias nocapture dereferenceable(16)) unnamed_addr #0 {
entry-block:
  %.sroa.0.0..sroa_idx.i = getelementptr inbounds %str_slice* %0, i64 0, i32 0
  %.sroa.0.0.copyload.i = load i8** %.sroa.0.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa_idx6.i = getelementptr inbounds %str_slice* %0, i64 0, i32 1
  %.sroa.4.0.copyload.i = load i64* %.sroa.4.0..sroa_idx6.i, align 8
  %1 = getelementptr inbounds i8* %.sroa.0.0.copyload.i, i64 %.sroa.4.0.copyload.i
  br label %while_cond

while_exit:                                       ; preds = %while_cond, %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next21h11119282894853510210E.exit.i", %match_case5.i
  %2 = bitcast %str_slice* %0 to i8*
  tail call void @llvm.lifetime.end(i64 16, i8* %2)
  ret void

while_cond:                                       ; preds = %match_case5.i, %entry-block
  %.sroa.0.0.copyload.i14 = phi i8* [ %.sroa.0.0.copyload.i, %entry-block ], [ %.sroa.0.0.copyload.i13, %match_case5.i ]
  %3 = icmp eq i8* %.sroa.0.0.copyload.i14, %1
  br i1 %3, label %while_exit, label %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next21h11119282894853510210E.exit.i"

"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next21h11119282894853510210E.exit.i": ; preds = %while_cond
  %4 = getelementptr inbounds i8* %.sroa.0.0.copyload.i14, i64 1
  %5 = icmp eq i8* %.sroa.0.0.copyload.i14, null
  br i1 %5, label %while_exit, label %match_else.i

match_else.i:                                     ; preds = %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next21h11119282894853510210E.exit.i"
  %6 = load i8* %.sroa.0.0.copyload.i14, align 1
  %7 = icmp slt i8 %6, 0
  br i1 %7, label %cond.i5, label %next.i

next.i:                                           ; preds = %match_else.i
  %8 = zext i8 %6 to i32
  br label %match_case5.i

cond.i5:                                          ; preds = %match_else.i
  %9 = and i8 %6, 31
  %10 = zext i8 %9 to i32
  %11 = icmp eq i8* %4, %1
  br i1 %11, label %_ZN3str11unwrap_or_020ha6c46358a6c48ebfvtaE.exit16.i, label %match_case.i14.i

match_case.i14.i:                                 ; preds = %cond.i5
  %12 = getelementptr inbounds i8* %.sroa.0.0.copyload.i14, i64 2
  %13 = load i8* %4, align 1
  %phitmp.i = and i8 %13, 63
  %phitmp20.i = zext i8 %phitmp.i to i32
  br label %_ZN3str11unwrap_or_020ha6c46358a6c48ebfvtaE.exit16.i

_ZN3str11unwrap_or_020ha6c46358a6c48ebfvtaE.exit16.i: ; preds = %match_case.i14.i, %cond.i5
  %.sroa.0.0.copyload.i17 = phi i8* [ %12, %match_case.i14.i ], [ %1, %cond.i5 ]
  %__make_return_pointer.0.i15.i = phi i32 [ %phitmp20.i, %match_case.i14.i ], [ 0, %cond.i5 ]
  %14 = shl nuw nsw i32 %10, 6
  %15 = or i32 %__make_return_pointer.0.i15.i, %14
  %16 = icmp ugt i8 %6, -33
  br i1 %16, label %then-block-1115-.i, label %match_case5.i

then-block-1115-.i:                               ; preds = %_ZN3str11unwrap_or_020ha6c46358a6c48ebfvtaE.exit16.i
  %17 = icmp eq i8* %.sroa.0.0.copyload.i17, %1
  br i1 %17, label %_ZN3str11unwrap_or_020ha6c46358a6c48ebfvtaE.exit10.i, label %match_case.i8.i

match_case.i8.i:                                  ; preds = %then-block-1115-.i
  %18 = getelementptr inbounds i8* %.sroa.0.0.copyload.i17, i64 1
  %19 = load i8* %.sroa.0.0.copyload.i17, align 1
  %phitmp21.i = and i8 %19, 63
  %phitmp22.i = zext i8 %phitmp21.i to i32
  br label %_ZN3str11unwrap_or_020ha6c46358a6c48ebfvtaE.exit10.i

_ZN3str11unwrap_or_020ha6c46358a6c48ebfvtaE.exit10.i: ; preds = %match_case.i8.i, %then-block-1115-.i
  %.sroa.0.0.copyload.i16 = phi i8* [ %18, %match_case.i8.i ], [ %.sroa.0.0.copyload.i17, %then-block-1115-.i ]
  %20 = phi i8* [ %18, %match_case.i8.i ], [ %1, %then-block-1115-.i ]
  %__make_return_pointer.0.i9.i = phi i32 [ %phitmp22.i, %match_case.i8.i ], [ 0, %then-block-1115-.i ]
  %21 = shl nuw nsw i32 %__make_return_pointer.0.i15.i, 6
  %22 = or i32 %__make_return_pointer.0.i9.i, %21
  %23 = shl nuw nsw i32 %10, 12
  %24 = or i32 %22, %23
  %25 = icmp ugt i8 %6, -17
  br i1 %25, label %then-block-1159-.i, label %match_case5.i

then-block-1159-.i:                               ; preds = %_ZN3str11unwrap_or_020ha6c46358a6c48ebfvtaE.exit10.i
  %26 = icmp eq i8* %20, %1
  br i1 %26, label %_ZN3str11unwrap_or_020ha6c46358a6c48ebfvtaE.exit.i, label %match_case.i.i

match_case.i.i:                                   ; preds = %then-block-1159-.i
  %27 = getelementptr inbounds i8* %20, i64 1
  %28 = load i8* %20, align 1
  %phitmp23.i = and i8 %28, 63
  %phitmp24.i = zext i8 %phitmp23.i to i32
  br label %_ZN3str11unwrap_or_020ha6c46358a6c48ebfvtaE.exit.i

_ZN3str11unwrap_or_020ha6c46358a6c48ebfvtaE.exit.i: ; preds = %match_case.i.i, %then-block-1159-.i
  %.sroa.0.0.copyload.i15 = phi i8* [ %27, %match_case.i.i ], [ %.sroa.0.0.copyload.i16, %then-block-1159-.i ]
  %__make_return_pointer.0.i.i = phi i32 [ %phitmp24.i, %match_case.i.i ], [ 0, %then-block-1159-.i ]
  %29 = shl nuw nsw i32 %10, 18
  %30 = and i32 %29, 1835008
  %31 = shl nuw nsw i32 %22, 6
  %32 = or i32 %31, %30
  %33 = or i32 %32, %__make_return_pointer.0.i.i
  br label %match_case5.i

match_case5.i:                                    ; preds = %_ZN3str11unwrap_or_020ha6c46358a6c48ebfvtaE.exit.i, %_ZN3str11unwrap_or_020ha6c46358a6c48ebfvtaE.exit10.i, %_ZN3str11unwrap_or_020ha6c46358a6c48ebfvtaE.exit16.i, %next.i
  %.sroa.0.0.copyload.i13 = phi i8* [ %4, %next.i ], [ %.sroa.0.0.copyload.i15, %_ZN3str11unwrap_or_020ha6c46358a6c48ebfvtaE.exit.i ], [ %.sroa.0.0.copyload.i16, %_ZN3str11unwrap_or_020ha6c46358a6c48ebfvtaE.exit10.i ], [ %.sroa.0.0.copyload.i17, %_ZN3str11unwrap_or_020ha6c46358a6c48ebfvtaE.exit16.i ]
  %__make_return_pointer.sroa.7.0.i = phi i32 [ %8, %next.i ], [ %33, %_ZN3str11unwrap_or_020ha6c46358a6c48ebfvtaE.exit.i ], [ %24, %_ZN3str11unwrap_or_020ha6c46358a6c48ebfvtaE.exit10.i ], [ %15, %_ZN3str11unwrap_or_020ha6c46358a6c48ebfvtaE.exit16.i ]
  %34 = icmp eq i32 %__make_return_pointer.sroa.7.0.i, 32
  br i1 %34, label %while_cond, label %while_exit
}

; Function Attrs: uwtable
define void @_ZN31bench_count_leading_char_spaces20he84c2a0cd65db352bcaE(%"struct.test::Bencher<[]>[#11]"* noalias nocapture dereferenceable(32)) unnamed_addr #2 {
entry-block:
  %dummy.i.i = alloca {}, align 8
  %arg.i = alloca %str_slice, align 8
  %1 = getelementptr inbounds %"struct.test::Bencher<[]>[#11]"* %0, i64 0, i32 1
  %2 = tail call i64 @_ZN15precise_time_ns20h967042282428adebhraE()
  store i64 %2, i64* %1, align 8
  %3 = getelementptr inbounds %"struct.test::Bencher<[]>[#11]"* %0, i64 0, i32 0
  %4 = load i64* %3, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %_ZN7Bencher4iter20h8639068344303171751E.exit, label %for_body.lr.ph.i

for_body.lr.ph.i:                                 ; preds = %entry-block
  %6 = bitcast {}* %dummy.i.i to i8*
  %7 = bitcast %str_slice* %arg.i to i8*
  br label %for_body.i

for_body.i:                                       ; preds = %for_body.i, %for_body.lr.ph.i
  %8 = phi i64 [ 0, %for_body.lr.ph.i ], [ %9, %for_body.i ]
  %9 = add i64 %8, 1
  call void @llvm.lifetime.start(i64 16, i8* %7)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast (%str_slice* @_ZN5SPACE20h8d9a3b14e4a94958jaaE to i8*), i64 16, i32 8, i1 false)
  call fastcc void @_ZN25count_leading_char_spaces20hc3a7abcd57f65237ybaE(%str_slice* noalias nocapture dereferenceable(16) %arg.i)
  call void @llvm.lifetime.start(i64 0, i8* %6) #4
  call void asm "", "r,~{dirflag},~{fpsr},~{flags}"({}* %dummy.i.i) #4
  call void @llvm.lifetime.end(i64 0, i8* %6) #4
  %exitcond.i = icmp eq i64 %9, %4
  br i1 %exitcond.i, label %_ZN7Bencher4iter20h8639068344303171751E.exit.loopexit, label %for_body.i

_ZN7Bencher4iter20h8639068344303171751E.exit.loopexit: ; preds = %for_body.i
  br label %_ZN7Bencher4iter20h8639068344303171751E.exit

_ZN7Bencher4iter20h8639068344303171751E.exit:     ; preds = %_ZN7Bencher4iter20h8639068344303171751E.exit.loopexit, %entry-block
  %10 = getelementptr inbounds %"struct.test::Bencher<[]>[#11]"* %0, i64 0, i32 2
  %11 = call i64 @_ZN15precise_time_ns20h967042282428adebhraE()
  store i64 %11, i64* %10, align 8
  ret void
}

; Function Attrs: uwtable
define internal void @_ZN6__test4main20h535cfaa75706990bBcaE() unnamed_addr #2 {
normal-return:
  %0 = alloca %"struct.collections::vec::Vec<[collections::string::String]>[#6]", align 8
  %__adjust = alloca { %"struct.collections::string::String<[]>[#6]"*, i64 }, align 8
  %__adjust1 = alloca { %"struct.test::TestDescAndFn<[]>[#11]"*, i64 }, align 8
  %1 = bitcast %"struct.collections::vec::Vec<[collections::string::String]>[#6]"* %0 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1)
  call void @_ZN2os4args20h75fd1971ba54cbdd6FgE(%"struct.collections::vec::Vec<[collections::string::String]>[#6]"* noalias nocapture sret dereferenceable(24) %0)
  %2 = getelementptr inbounds %"struct.collections::vec::Vec<[collections::string::String]>[#6]"* %0, i64 0, i32 2
  %3 = load %"struct.collections::string::String<[]>[#6]"** %2, align 8
  %4 = getelementptr inbounds %"struct.collections::vec::Vec<[collections::string::String]>[#6]"* %0, i64 0, i32 0
  %5 = load i64* %4, align 8
  %6 = bitcast { %"struct.collections::string::String<[]>[#6]"*, i64 }* %__adjust to i8*
  call void @llvm.lifetime.start(i64 16, i8* %6)
  %7 = getelementptr inbounds { %"struct.collections::string::String<[]>[#6]"*, i64 }* %__adjust, i64 0, i32 0
  store %"struct.collections::string::String<[]>[#6]"* %3, %"struct.collections::string::String<[]>[#6]"** %7, align 8
  %8 = getelementptr inbounds { %"struct.collections::string::String<[]>[#6]"*, i64 }* %__adjust, i64 0, i32 1
  store i64 %5, i64* %8, align 8
  %9 = bitcast { %"struct.test::TestDescAndFn<[]>[#11]"*, i64 }* %__adjust1 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %9)
  %10 = getelementptr inbounds { %"struct.test::TestDescAndFn<[]>[#11]"*, i64 }* %__adjust1, i64 0, i32 0
  store %"struct.test::TestDescAndFn<[]>[#11]"* bitcast ({ { { { i8, %str_slice, [8 x i8] }, i1, i1, [6 x i8] }, { i8, void (%"struct.test::Bencher<[]>[#11]"*)*, [8 x i8] } }, { { { i8, %str_slice, [8 x i8] }, i1, i1, [6 x i8] }, { i8, void (%"struct.test::Bencher<[]>[#11]"*)*, [8 x i8] } } }* @const to %"struct.test::TestDescAndFn<[]>[#11]"*), %"struct.test::TestDescAndFn<[]>[#11]"** %10, align 8
  %11 = getelementptr inbounds { %"struct.test::TestDescAndFn<[]>[#11]"*, i64 }* %__adjust1, i64 0, i32 1
  store i64 2, i64* %11, align 8
  invoke void @_ZN16test_main_static20hde078a77ef38ea445ybE({ %"struct.collections::string::String<[]>[#6]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust, { %"struct.test::TestDescAndFn<[]>[#11]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust1)
          to label %normal-return2 unwind label %unwind_ast_155_3

resume:                                           ; preds = %for_exit.i.i, %unwind_ast_155_3
  call void @llvm.lifetime.end(i64 24, i8* %1)
  resume { i8*, i32 } %23

normal-return2:                                   ; preds = %normal-return
  %12 = getelementptr inbounds %"struct.collections::vec::Vec<[collections::string::String]>[#6]"* %0, i64 0, i32 1
  %13 = load i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %"_ZN56collections..vec..Vec$LT$collections..string..String$GT$14glue_drop.161017h06b37c7794b5fe3bE.exit21", label %then-block-1292-.i.i11

then-block-1292-.i.i11:                           ; preds = %normal-return2
  %15 = getelementptr inbounds %"struct.collections::string::String<[]>[#6]"* %3, i64 %5
  %16 = icmp eq i64 %5, 0
  br i1 %16, label %for_exit.i.i12, label %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h1112974070329689718E.exit.i.i13.preheader"

"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h1112974070329689718E.exit.i.i13.preheader": ; preds = %then-block-1292-.i.i11
  br label %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h1112974070329689718E.exit.i.i13"

for_exit.i.i12.loopexit:                          ; preds = %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h1112974070329689718E.exit.i.i13", %for_loopback.backedge.i.i17
  br label %for_exit.i.i12

for_exit.i.i12:                                   ; preds = %for_exit.i.i12.loopexit, %then-block-1292-.i.i11
  %17 = bitcast %"struct.collections::string::String<[]>[#6]"* %3 to i8*
  tail call void @je_dallocx(i8* %17, i32 3)
  br label %"_ZN56collections..vec..Vec$LT$collections..string..String$GT$14glue_drop.161017h06b37c7794b5fe3bE.exit21"

"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h1112974070329689718E.exit.i.i13": ; preds = %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h1112974070329689718E.exit.i.i13.preheader", %for_loopback.backedge.i.i17
  %18 = phi %"struct.collections::string::String<[]>[#6]"* [ %19, %for_loopback.backedge.i.i17 ], [ %3, %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h1112974070329689718E.exit.i.i13.preheader" ]
  %19 = getelementptr inbounds %"struct.collections::string::String<[]>[#6]"* %18, i64 1
  %20 = icmp eq %"struct.collections::string::String<[]>[#6]"* %18, null
  br i1 %20, label %for_exit.i.i12.loopexit, label %for_body.i.i16

for_body.i.i16:                                   ; preds = %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h1112974070329689718E.exit.i.i13"
  %tmp.sroa.5.0..sroa_idx5.i.i.i14 = getelementptr inbounds %"struct.collections::string::String<[]>[#6]"* %18, i64 0, i32 0, i32 1
  %tmp.sroa.5.0.copyload.i.i.i15 = load i64* %tmp.sroa.5.0..sroa_idx5.i.i.i14, align 8
  %21 = icmp eq i64 %tmp.sroa.5.0.copyload.i.i.i15, 0
  br i1 %21, label %for_loopback.backedge.i.i17, label %then-block-1292-.i.i.i.i.i20

for_loopback.backedge.i.i17:                      ; preds = %then-block-1292-.i.i.i.i.i20, %for_body.i.i16
  %22 = icmp eq %"struct.collections::string::String<[]>[#6]"* %19, %15
  br i1 %22, label %for_exit.i.i12.loopexit, label %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h1112974070329689718E.exit.i.i13"

then-block-1292-.i.i.i.i.i20:                     ; preds = %for_body.i.i16
  %tmp.sroa.6.0..sroa_idx9.i.i.i18 = getelementptr inbounds %"struct.collections::string::String<[]>[#6]"* %18, i64 0, i32 0, i32 2
  %tmp.sroa.6.0.copyload.i.i.i19 = load i8** %tmp.sroa.6.0..sroa_idx9.i.i.i18, align 8
  tail call void @je_dallocx(i8* %tmp.sroa.6.0.copyload.i.i.i19, i32 0)
  br label %for_loopback.backedge.i.i17

"_ZN56collections..vec..Vec$LT$collections..string..String$GT$14glue_drop.161017h06b37c7794b5fe3bE.exit21": ; preds = %normal-return2, %for_exit.i.i12
  call void @llvm.lifetime.end(i64 24, i8* %1)
  ret void

unwind_ast_155_3:                                 ; preds = %normal-return
  %23 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  %24 = getelementptr inbounds %"struct.collections::vec::Vec<[collections::string::String]>[#6]"* %0, i64 0, i32 1
  %25 = load i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %resume, label %then-block-1292-.i.i

then-block-1292-.i.i:                             ; preds = %unwind_ast_155_3
  %27 = getelementptr inbounds %"struct.collections::string::String<[]>[#6]"* %3, i64 %5
  %28 = icmp eq i64 %5, 0
  br i1 %28, label %for_exit.i.i, label %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h1112974070329689718E.exit.i.i.preheader"

"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h1112974070329689718E.exit.i.i.preheader": ; preds = %then-block-1292-.i.i
  br label %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h1112974070329689718E.exit.i.i"

for_exit.i.i.loopexit:                            ; preds = %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h1112974070329689718E.exit.i.i", %for_loopback.backedge.i.i
  br label %for_exit.i.i

for_exit.i.i:                                     ; preds = %for_exit.i.i.loopexit, %then-block-1292-.i.i
  %29 = bitcast %"struct.collections::string::String<[]>[#6]"* %3 to i8*
  tail call void @je_dallocx(i8* %29, i32 3)
  br label %resume

"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h1112974070329689718E.exit.i.i": ; preds = %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h1112974070329689718E.exit.i.i.preheader", %for_loopback.backedge.i.i
  %30 = phi %"struct.collections::string::String<[]>[#6]"* [ %31, %for_loopback.backedge.i.i ], [ %3, %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h1112974070329689718E.exit.i.i.preheader" ]
  %31 = getelementptr inbounds %"struct.collections::string::String<[]>[#6]"* %30, i64 1
  %32 = icmp eq %"struct.collections::string::String<[]>[#6]"* %30, null
  br i1 %32, label %for_exit.i.i.loopexit, label %for_body.i.i

for_body.i.i:                                     ; preds = %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h1112974070329689718E.exit.i.i"
  %tmp.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds %"struct.collections::string::String<[]>[#6]"* %30, i64 0, i32 0, i32 1
  %tmp.sroa.5.0.copyload.i.i.i = load i64* %tmp.sroa.5.0..sroa_idx5.i.i.i, align 8
  %33 = icmp eq i64 %tmp.sroa.5.0.copyload.i.i.i, 0
  br i1 %33, label %for_loopback.backedge.i.i, label %then-block-1292-.i.i.i.i.i

for_loopback.backedge.i.i:                        ; preds = %then-block-1292-.i.i.i.i.i, %for_body.i.i
  %34 = icmp eq %"struct.collections::string::String<[]>[#6]"* %31, %27
  br i1 %34, label %for_exit.i.i.loopexit, label %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h1112974070329689718E.exit.i.i"

then-block-1292-.i.i.i.i.i:                       ; preds = %for_body.i.i
  %tmp.sroa.6.0..sroa_idx9.i.i.i = getelementptr inbounds %"struct.collections::string::String<[]>[#6]"* %30, i64 0, i32 0, i32 2
  %tmp.sroa.6.0.copyload.i.i.i = load i8** %tmp.sroa.6.0..sroa_idx9.i.i.i, align 8
  tail call void @je_dallocx(i8* %tmp.sroa.6.0.copyload.i.i.i, i32 0)
  br label %for_loopback.backedge.i.i
}

define i64 @main(i64, i8**) unnamed_addr #3 {
top:
  %2 = tail call i64 @_ZN10lang_start20h20b5eb8c6190ecbe8oeE(i8* bitcast (void ()* @_ZN6__test4main20h535cfaa75706990bBcaE to i8*), i64 %0, i8** %1)
  ret i64 %2
}

declare i64 @_ZN10lang_start20h20b5eb8c6190ecbe8oeE(i8*, i64, i8**) unnamed_addr #3

declare void @_ZN16test_main_static20hde078a77ef38ea445ybE({ %"struct.collections::string::String<[]>[#6]"*, i64 }* noalias nocapture dereferenceable(16), { %"struct.test::TestDescAndFn<[]>[#11]"*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #3

declare void @_ZN2os4args20h75fd1971ba54cbdd6FgE(%"struct.collections::vec::Vec<[collections::string::String]>[#6]"* noalias nocapture sret dereferenceable(24)) unnamed_addr #3

declare i32 @rust_eh_personality(i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*) unnamed_addr #3

declare void @je_dallocx(i8*, i32) unnamed_addr #3

attributes #0 = { noinline nounwind uwtable "split-stack" }
attributes #1 = { nounwind "split-stack" }
attributes #2 = { uwtable "split-stack" }
attributes #3 = { "split-stack" }
attributes #4 = { nounwind }
