; ModuleID = 'test.rs'
target datalayout = "e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%str_slice = type { i8*, i64 }
%"struct.test::Bencher<[]>[#11]" = type { i64, i64, i64, i64 }
%"struct.core::str::Chars<[]>[#3]" = type { %"struct.core::slice::Items<[u8]>[#3]" }
%"struct.core::slice::Items<[u8]>[#3]" = type { i8*, i8*, %"struct.core::kinds::marker::ContravariantLifetime<[]>[#3]" }
%"struct.core::kinds::marker::ContravariantLifetime<[]>[#3]" = type {}
%"struct.utf8char::Utf8Chars<[]>[#18]" = type { %"struct.core::slice::Items<[u8]>[#3]" }
%"struct.collections::vec::Vec<[collections::string::String]>[#6]" = type { i64, i64, %"struct.collections::string::String<[]>[#6]"* }
%"struct.collections::string::String<[]>[#6]" = type { %"struct.collections::vec::Vec<[u8]>[#6]" }
%"struct.collections::vec::Vec<[u8]>[#6]" = type { i64, i64, i8* }
%"struct.test::TestDescAndFn<[]>[#11]" = type { %"struct.test::TestDesc<[]>[#11]", %"enum.test::TestFn<[]>[#11]" }
%"struct.test::TestDesc<[]>[#11]" = type { %"enum.test::TestName<[]>[#11]", i8, i8 }
%"enum.test::TestName<[]>[#11]" = type { i8, [7 x i8], [3 x i64] }
%"enum.test::TestFn<[]>[#11]" = type { i8, [7 x i8], [2 x i64] }
%"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]" = type { i64, void (i32, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*)*, [2 x i64] }
%"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]" = type {}

@"str\22str\22(1395)" = internal constant [315 x i8] c"                                                                                                                                                                                                                                                                                                                           "
@_ZN5SPACE20h45cd958379d36460jaaE = internal constant %str_slice { i8* getelementptr inbounds ([315 x i8]* @"str\22str\22(1395)", i32 0, i32 0), i64 315 }
@"str\22str\22(1670)" = internal constant [13 x i8] c"str_usv_chars"
@"str\22str\22(1671)" = internal constant [14 x i8] c"str_utf8_chars"
@"str\22str\22(1672)" = internal constant [31 x i8] c"bench_count_leading_utf8_spaces"
@"str\22str\22(1673)" = internal constant [31 x i8] c"bench_count_leading_char_spaces"
@const = private constant { { { { i8, %str_slice, [8 x i8] }, i1, i1, [6 x i8] }, { i8, void (%"struct.test::Bencher<[]>[#11]"*)*, [8 x i8] } }, { { { i8, %str_slice, [8 x i8] }, i1, i1, [6 x i8] }, { i8, void (%"struct.test::Bencher<[]>[#11]"*)*, [8 x i8] } }, { { { i8, %str_slice, [8 x i8] }, i1, i1, [6 x i8] }, { i8, void (%"struct.test::Bencher<[]>[#11]"*)*, [8 x i8] } }, { { { i8, %str_slice, [8 x i8] }, i1, i1, [6 x i8] }, { i8, void (%"struct.test::Bencher<[]>[#11]"*)*, [8 x i8] } } } { { { { i8, %str_slice, [8 x i8] }, i1, i1, [6 x i8] }, { i8, void (%"struct.test::Bencher<[]>[#11]"*)*, [8 x i8] } } { { { i8, %str_slice, [8 x i8] }, i1, i1, [6 x i8] } { { i8, %str_slice, [8 x i8] } { i8 0, %str_slice { i8* getelementptr inbounds ([13 x i8]* @"str\22str\22(1670)", i32 0, i32 0), i64 13 }, [8 x i8] undef }, i1 false, i1 false, [6 x i8] undef }, { i8, void (%"struct.test::Bencher<[]>[#11]"*)*, [8 x i8] } { i8 1, void (%"struct.test::Bencher<[]>[#11]"*)* @_ZN13str_usv_chars20hfd14fee2bd611864CaaE, [8 x i8] undef } }, { { { i8, %str_slice, [8 x i8] }, i1, i1, [6 x i8] }, { i8, void (%"struct.test::Bencher<[]>[#11]"*)*, [8 x i8] } } { { { i8, %str_slice, [8 x i8] }, i1, i1, [6 x i8] } { { i8, %str_slice, [8 x i8] } { i8 0, %str_slice { i8* getelementptr inbounds ([14 x i8]* @"str\22str\22(1671)", i32 0, i32 0), i64 14 }, [8 x i8] undef }, i1 false, i1 false, [6 x i8] undef }, { i8, void (%"struct.test::Bencher<[]>[#11]"*)*, [8 x i8] } { i8 1, void (%"struct.test::Bencher<[]>[#11]"*)* @_ZN14str_utf8_chars20h5459595818700a6babaE, [8 x i8] undef } }, { { { i8, %str_slice, [8 x i8] }, i1, i1, [6 x i8] }, { i8, void (%"struct.test::Bencher<[]>[#11]"*)*, [8 x i8] } } { { { i8, %str_slice, [8 x i8] }, i1, i1, [6 x i8] } { { i8, %str_slice, [8 x i8] } { i8 0, %str_slice { i8* getelementptr inbounds ([31 x i8]* @"str\22str\22(1672)", i32 0, i32 0), i64 31 }, [8 x i8] undef }, i1 false, i1 false, [6 x i8] undef }, { i8, void (%"struct.test::Bencher<[]>[#11]"*)*, [8 x i8] } { i8 1, void (%"struct.test::Bencher<[]>[#11]"*)* @_ZN31bench_count_leading_utf8_spaces20h67fbada554663c88lcaE, [8 x i8] undef } }, { { { i8, %str_slice, [8 x i8] }, i1, i1, [6 x i8] }, { i8, void (%"struct.test::Bencher<[]>[#11]"*)*, [8 x i8] } } { { { i8, %str_slice, [8 x i8] }, i1, i1, [6 x i8] } { { i8, %str_slice, [8 x i8] } { i8 0, %str_slice { i8* getelementptr inbounds ([31 x i8]* @"str\22str\22(1673)", i32 0, i32 0), i64 31 }, [8 x i8] undef }, i1 false, i1 false, [6 x i8] undef }, { i8, void (%"struct.test::Bencher<[]>[#11]"*)*, [8 x i8] } { i8 1, void (%"struct.test::Bencher<[]>[#11]"*)* @_ZN31bench_count_leading_char_spaces20hc0fd090cc9ec2311hdaE, [8 x i8] undef } } }

; Function Attrs: uwtable
define void @_ZN13str_usv_chars20hfd14fee2bd611864CaaE(%"struct.test::Bencher<[]>[#11]"* noalias nocapture dereferenceable(32)) unnamed_addr #0 {
entry-block:
  %dummy.i.i = alloca {}, align 8
  %iter.i = alloca %"struct.core::str::Chars<[]>[#3]", align 8
  %1 = getelementptr inbounds %"struct.test::Bencher<[]>[#11]"* %0, i64 0, i32 1
  %2 = tail call i64 @_ZN15precise_time_ns20h967042282428adebhraE()
  store i64 %2, i64* %1, align 8
  %3 = getelementptr inbounds %"struct.test::Bencher<[]>[#11]"* %0, i64 0, i32 0
  %4 = load i64* %3, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %_ZN7Bencher4iter20h6732410158626673121E.exit, label %for_body.lr.ph.i

for_body.lr.ph.i:                                 ; preds = %entry-block
  %6 = bitcast {}* %dummy.i.i to i8*
  %7 = bitcast %"struct.core::str::Chars<[]>[#3]"* %iter.i to i8*
  %8 = getelementptr inbounds %"struct.core::str::Chars<[]>[#3]"* %iter.i, i64 0, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.core::str::Chars<[]>[#3]"* %iter.i, i64 0, i32 0, i32 1
  br label %for_body.i

for_body.i:                                       ; preds = %_ZN13str_usv_chars12closure.1434E.exit, %for_body.lr.ph.i
  %10 = phi i64 [ 0, %for_body.lr.ph.i ], [ %13, %_ZN13str_usv_chars12closure.1434E.exit ]
  call void @llvm.lifetime.start(i64 16, i8* %7)
  store i8* getelementptr inbounds ([315 x i8]* @"str\22str\22(1395)", i64 0, i64 0), i8** %8, align 8
  store i8* getelementptr inbounds ([315 x i8]* @"str\22str\22(1395)", i64 1, i64 0), i8** %9, align 8
  br label %match_case5.i

match_case5.i:                                    ; preds = %match_case5.i, %for_body.i
  %11 = call fastcc { i8, [3 x i8], [1 x i32] } @"_ZN3str39Chars$LT$$x27a$GT$.Iterator$LT$char$GT$4next20heb43cd62f5f277f6QmaE"(%"struct.core::str::Chars<[]>[#3]"* noalias dereferenceable(16) %iter.i)
  %newret.i = extractvalue { i8, [3 x i8], [1 x i32] } %11, 0
  %newret18.i = extractvalue { i8, [3 x i8], [1 x i32] } %11, 2
  %.fca.2.0.extract10.i = extractvalue [1 x i32] %newret18.i, 0
  %cond.i = icmp eq i8 %newret.i, 1
  %12 = icmp eq i32 %.fca.2.0.extract10.i, 32
  %or.cond = and i1 %cond.i, %12
  br i1 %or.cond, label %match_case5.i, label %_ZN13str_usv_chars12closure.1434E.exit

_ZN13str_usv_chars12closure.1434E.exit:           ; preds = %match_case5.i
  %13 = add i64 %10, 1
  call void @llvm.lifetime.end(i64 16, i8* %7)
  call void @llvm.lifetime.start(i64 0, i8* %6) #5
  call void asm "", "r,~{dirflag},~{fpsr},~{flags}"({}* %dummy.i.i) #5
  call void @llvm.lifetime.end(i64 0, i8* %6) #5
  %exitcond.i = icmp eq i64 %13, %4
  br i1 %exitcond.i, label %_ZN7Bencher4iter20h6732410158626673121E.exit.loopexit, label %for_body.i

_ZN7Bencher4iter20h6732410158626673121E.exit.loopexit: ; preds = %_ZN13str_usv_chars12closure.1434E.exit
  br label %_ZN7Bencher4iter20h6732410158626673121E.exit

_ZN7Bencher4iter20h6732410158626673121E.exit:     ; preds = %_ZN7Bencher4iter20h6732410158626673121E.exit.loopexit, %entry-block
  %14 = getelementptr inbounds %"struct.test::Bencher<[]>[#11]"* %0, i64 0, i32 2
  %15 = call i64 @_ZN15precise_time_ns20h967042282428adebhraE()
  store i64 %15, i64* %14, align 8
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) unnamed_addr #1

declare i64 @_ZN15precise_time_ns20h967042282428adebhraE() unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i8, [3 x i8], [1 x i32] } @"_ZN3str39Chars$LT$$x27a$GT$.Iterator$LT$char$GT$4next20heb43cd62f5f277f6QmaE"(%"struct.core::str::Chars<[]>[#3]"* noalias nocapture dereferenceable(16)) unnamed_addr #3 {
entry-block:
  %1 = getelementptr inbounds %"struct.core::str::Chars<[]>[#3]"* %0, i64 0, i32 0, i32 0
  %2 = getelementptr inbounds %"struct.core::str::Chars<[]>[#3]"* %0, i64 0, i32 0, i32 1
  %3 = load i8** %1, align 8
  %4 = load i8** %2, align 8
  %5 = icmp eq i8* %3, %4
  br i1 %5, label %clean_custom_, label %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h6622297534391848569E.exit"

"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h6622297534391848569E.exit": ; preds = %entry-block
  %6 = getelementptr inbounds i8* %3, i64 1
  store i8* %6, i8** %1, align 8
  %7 = icmp eq i8* %3, null
  br i1 %7, label %clean_custom_, label %match_else

match_else:                                       ; preds = %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h6622297534391848569E.exit"
  %8 = load i8* %3, align 1
  %9 = icmp slt i8 %8, 0
  br i1 %9, label %cond, label %next

next:                                             ; preds = %match_else
  %10 = zext i8 %8 to i32
  br label %clean_custom_

cond:                                             ; preds = %match_else
  %11 = and i8 %8, 31
  %12 = zext i8 %11 to i32
  %13 = icmp eq i8* %6, %4
  br i1 %13, label %_ZN3str11unwrap_or_020h29ca9fa7e82b00a7EqaE.exit16, label %match_case.i14

match_case.i14:                                   ; preds = %cond
  %14 = getelementptr inbounds i8* %3, i64 2
  store i8* %14, i8** %1, align 8
  %15 = load i8* %6, align 1
  %phitmp = and i8 %15, 63
  %phitmp20 = zext i8 %phitmp to i32
  br label %_ZN3str11unwrap_or_020h29ca9fa7e82b00a7EqaE.exit16

_ZN3str11unwrap_or_020h29ca9fa7e82b00a7EqaE.exit16: ; preds = %cond, %match_case.i14
  %16 = phi i8* [ %14, %match_case.i14 ], [ %4, %cond ]
  %__make_return_pointer.0.i15 = phi i32 [ %phitmp20, %match_case.i14 ], [ 0, %cond ]
  %17 = shl nuw nsw i32 %12, 6
  %18 = or i32 %__make_return_pointer.0.i15, %17
  %19 = icmp ugt i8 %8, -33
  br i1 %19, label %then-block-867-, label %clean_custom_

clean_custom_:                                    ; preds = %entry-block, %_ZN3str11unwrap_or_020h29ca9fa7e82b00a7EqaE.exit16, %_ZN3str11unwrap_or_020h29ca9fa7e82b00a7EqaE.exit10, %_ZN3str11unwrap_or_020h29ca9fa7e82b00a7EqaE.exit, %next, %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h6622297534391848569E.exit"
  %__make_return_pointer.sroa.0.0 = phi i8 [ 1, %next ], [ 0, %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h6622297534391848569E.exit" ], [ 1, %_ZN3str11unwrap_or_020h29ca9fa7e82b00a7EqaE.exit ], [ 1, %_ZN3str11unwrap_or_020h29ca9fa7e82b00a7EqaE.exit10 ], [ 1, %_ZN3str11unwrap_or_020h29ca9fa7e82b00a7EqaE.exit16 ], [ 0, %entry-block ]
  %__make_return_pointer.sroa.7.0 = phi i32 [ %10, %next ], [ undef, %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h6622297534391848569E.exit" ], [ %36, %_ZN3str11unwrap_or_020h29ca9fa7e82b00a7EqaE.exit ], [ %27, %_ZN3str11unwrap_or_020h29ca9fa7e82b00a7EqaE.exit10 ], [ %18, %_ZN3str11unwrap_or_020h29ca9fa7e82b00a7EqaE.exit16 ], [ undef, %entry-block ]
  %newret = insertvalue { i8, [3 x i8], [1 x i32] } undef, i8 %__make_return_pointer.sroa.0.0, 0
  %oldret3 = insertvalue [1 x i32] undef, i32 %__make_return_pointer.sroa.7.0, 0
  %newret4 = insertvalue { i8, [3 x i8], [1 x i32] } %newret, [1 x i32] %oldret3, 2
  ret { i8, [3 x i8], [1 x i32] } %newret4

then-block-867-:                                  ; preds = %_ZN3str11unwrap_or_020h29ca9fa7e82b00a7EqaE.exit16
  %20 = icmp eq i8* %16, %4
  br i1 %20, label %_ZN3str11unwrap_or_020h29ca9fa7e82b00a7EqaE.exit10, label %match_case.i8

match_case.i8:                                    ; preds = %then-block-867-
  %21 = getelementptr inbounds i8* %16, i64 1
  store i8* %21, i8** %1, align 8
  %22 = load i8* %16, align 1
  %phitmp21 = and i8 %22, 63
  %phitmp22 = zext i8 %phitmp21 to i32
  br label %_ZN3str11unwrap_or_020h29ca9fa7e82b00a7EqaE.exit10

_ZN3str11unwrap_or_020h29ca9fa7e82b00a7EqaE.exit10: ; preds = %then-block-867-, %match_case.i8
  %23 = phi i8* [ %21, %match_case.i8 ], [ %4, %then-block-867- ]
  %__make_return_pointer.0.i9 = phi i32 [ %phitmp22, %match_case.i8 ], [ 0, %then-block-867- ]
  %24 = shl nuw nsw i32 %__make_return_pointer.0.i15, 6
  %25 = or i32 %__make_return_pointer.0.i9, %24
  %26 = shl nuw nsw i32 %12, 12
  %27 = or i32 %25, %26
  %28 = icmp ugt i8 %8, -17
  br i1 %28, label %then-block-911-, label %clean_custom_

then-block-911-:                                  ; preds = %_ZN3str11unwrap_or_020h29ca9fa7e82b00a7EqaE.exit10
  %29 = icmp eq i8* %23, %4
  br i1 %29, label %_ZN3str11unwrap_or_020h29ca9fa7e82b00a7EqaE.exit, label %match_case.i

match_case.i:                                     ; preds = %then-block-911-
  %30 = getelementptr inbounds i8* %23, i64 1
  store i8* %30, i8** %1, align 8
  %31 = load i8* %23, align 1
  %phitmp23 = and i8 %31, 63
  %phitmp24 = zext i8 %phitmp23 to i32
  br label %_ZN3str11unwrap_or_020h29ca9fa7e82b00a7EqaE.exit

_ZN3str11unwrap_or_020h29ca9fa7e82b00a7EqaE.exit: ; preds = %then-block-911-, %match_case.i
  %__make_return_pointer.0.i = phi i32 [ %phitmp24, %match_case.i ], [ 0, %then-block-911- ]
  %32 = shl nuw nsw i32 %12, 18
  %33 = and i32 %32, 1835008
  %34 = shl nuw nsw i32 %25, 6
  %35 = or i32 %34, %33
  %36 = or i32 %35, %__make_return_pointer.0.i
  br label %clean_custom_
}

; Function Attrs: uwtable
define void @_ZN14str_utf8_chars20h5459595818700a6babaE(%"struct.test::Bencher<[]>[#11]"* noalias nocapture dereferenceable(32)) unnamed_addr #0 {
entry-block:
  %dummy.i.i = alloca {}, align 8
  %iter.i = alloca %"struct.utf8char::Utf8Chars<[]>[#18]", align 8
  %1 = getelementptr inbounds %"struct.test::Bencher<[]>[#11]"* %0, i64 0, i32 1
  %2 = tail call i64 @_ZN15precise_time_ns20h967042282428adebhraE()
  store i64 %2, i64* %1, align 8
  %3 = getelementptr inbounds %"struct.test::Bencher<[]>[#11]"* %0, i64 0, i32 0
  %4 = load i64* %3, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %_ZN7Bencher4iter20h6732410158626673121E.exit, label %for_body.lr.ph.i

for_body.lr.ph.i:                                 ; preds = %entry-block
  %6 = bitcast {}* %dummy.i.i to i8*
  %7 = bitcast %"struct.utf8char::Utf8Chars<[]>[#18]"* %iter.i to i8*
  %8 = getelementptr inbounds %"struct.utf8char::Utf8Chars<[]>[#18]"* %iter.i, i64 0, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.utf8char::Utf8Chars<[]>[#18]"* %iter.i, i64 0, i32 0, i32 1
  br label %for_body.i

for_body.i:                                       ; preds = %_ZN14str_utf8_chars12closure.1554E.exit, %for_body.lr.ph.i
  %10 = phi i64 [ 0, %for_body.lr.ph.i ], [ %13, %_ZN14str_utf8_chars12closure.1554E.exit ]
  call void @llvm.lifetime.start(i64 16, i8* %7)
  store i8* getelementptr inbounds ([315 x i8]* @"str\22str\22(1395)", i64 0, i64 0), i8** %8, align 8
  store i8* getelementptr inbounds ([315 x i8]* @"str\22str\22(1395)", i64 1, i64 0), i8** %9, align 8
  br label %match_case5.i

match_case5.i:                                    ; preds = %match_case5.i, %for_body.i
  %11 = call fastcc { i8, [4 x i8] } @"_ZN47Utf8Chars$LT$$x27a$GT$.Iterator$LT$Utf8Char$GT$4next20h6b9e8c5a524cd9d4KsaE"(%"struct.utf8char::Utf8Chars<[]>[#18]"* noalias dereferenceable(16) %iter.i)
  %newret.i = extractvalue { i8, [4 x i8] } %11, 0
  %newret16.i = extractvalue { i8, [4 x i8] } %11, 1
  %.fca.2.0.extract4.i = extractvalue [4 x i8] %newret16.i, 0
  %.fca.2.1.extract6.i = extractvalue [4 x i8] %newret16.i, 1
  %.fca.2.2.extract8.i = extractvalue [4 x i8] %newret16.i, 2
  %.fca.2.3.extract10.i = extractvalue [4 x i8] %newret16.i, 3
  %autoref.i.sroa.5.1.insert.ext = zext i8 %.fca.2.0.extract4.i to i32
  %autoref.i.sroa.5.2.insert.ext = zext i8 %.fca.2.1.extract6.i to i32
  %autoref.i.sroa.5.2.insert.shift = shl nuw nsw i32 %autoref.i.sroa.5.2.insert.ext, 8
  %autoref.i.sroa.5.3.insert.ext = zext i8 %.fca.2.2.extract8.i to i32
  %autoref.i.sroa.5.3.insert.shift = shl nuw nsw i32 %autoref.i.sroa.5.3.insert.ext, 16
  %autoref.i.sroa.5.3.insert.mask = or i32 %autoref.i.sroa.5.2.insert.shift, %autoref.i.sroa.5.1.insert.ext
  %autoref.i.sroa.5.3.insert.insert = or i32 %autoref.i.sroa.5.3.insert.mask, %autoref.i.sroa.5.3.insert.shift
  %autoref.i.sroa.5.4.insert.ext = zext i8 %.fca.2.3.extract10.i to i32
  %autoref.i.sroa.5.4.insert.shift = shl nuw i32 %autoref.i.sroa.5.4.insert.ext, 24
  %autoref.i.sroa.5.4.insert.insert = or i32 %autoref.i.sroa.5.3.insert.insert, %autoref.i.sroa.5.4.insert.shift
  %cond.i = icmp eq i8 %newret.i, 1
  %12 = icmp eq i32 %autoref.i.sroa.5.4.insert.insert, 32
  %or.cond = and i1 %cond.i, %12
  br i1 %or.cond, label %match_case5.i, label %_ZN14str_utf8_chars12closure.1554E.exit

_ZN14str_utf8_chars12closure.1554E.exit:          ; preds = %match_case5.i
  %13 = add i64 %10, 1
  call void @llvm.lifetime.end(i64 16, i8* %7)
  call void @llvm.lifetime.start(i64 0, i8* %6) #5
  call void asm "", "r,~{dirflag},~{fpsr},~{flags}"({}* %dummy.i.i) #5
  call void @llvm.lifetime.end(i64 0, i8* %6) #5
  %exitcond.i = icmp eq i64 %13, %4
  br i1 %exitcond.i, label %_ZN7Bencher4iter20h6732410158626673121E.exit.loopexit, label %for_body.i

_ZN7Bencher4iter20h6732410158626673121E.exit.loopexit: ; preds = %_ZN14str_utf8_chars12closure.1554E.exit
  br label %_ZN7Bencher4iter20h6732410158626673121E.exit

_ZN7Bencher4iter20h6732410158626673121E.exit:     ; preds = %_ZN7Bencher4iter20h6732410158626673121E.exit.loopexit, %entry-block
  %14 = getelementptr inbounds %"struct.test::Bencher<[]>[#11]"* %0, i64 0, i32 2
  %15 = call i64 @_ZN15precise_time_ns20h967042282428adebhraE()
  store i64 %15, i64* %14, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i8, [4 x i8] } @"_ZN47Utf8Chars$LT$$x27a$GT$.Iterator$LT$Utf8Char$GT$4next20h6b9e8c5a524cd9d4KsaE"(%"struct.utf8char::Utf8Chars<[]>[#18]"* noalias nocapture dereferenceable(16)) unnamed_addr #3 {
entry-block:
  %1 = getelementptr inbounds %"struct.utf8char::Utf8Chars<[]>[#18]"* %0, i64 0, i32 0, i32 0
  %2 = getelementptr inbounds %"struct.utf8char::Utf8Chars<[]>[#18]"* %0, i64 0, i32 0, i32 1
  %3 = load i8** %1, align 8
  %4 = load i8** %2, align 8
  %5 = icmp eq i8* %3, %4
  br i1 %5, label %clean_custom_, label %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h6622297534391848569E.exit"

"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h6622297534391848569E.exit": ; preds = %entry-block
  %6 = getelementptr inbounds i8* %3, i64 1
  store i8* %6, i8** %1, align 8
  %7 = icmp eq i8* %3, null
  br i1 %7, label %clean_custom_, label %match_case

match_case:                                       ; preds = %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h6622297534391848569E.exit"
  %8 = load i8* %3, align 1
  %9 = icmp sgt i8 %8, -1
  br i1 %9, label %clean_custom_, label %compare_next

compare_next:                                     ; preds = %match_case
  %10 = and i8 %8, -32
  %11 = icmp eq i8 %10, -64
  br i1 %11, label %match_case9, label %compare_next10

match_case9:                                      ; preds = %compare_next
  %12 = icmp eq i8* %6, %4
  br i1 %12, label %clean_custom_, label %match_case21

compare_next10:                                   ; preds = %compare_next
  %13 = and i8 %8, -16
  %14 = icmp eq i8 %13, -32
  br i1 %14, label %match_case11, label %compare_next12

match_case11:                                     ; preds = %compare_next10
  %15 = icmp eq i8* %6, %4
  br i1 %15, label %clean_custom_, label %match_case30

compare_next12:                                   ; preds = %compare_next10
  %16 = and i8 %8, -8
  %17 = icmp ne i8 %16, -16
  %18 = icmp eq i8* %6, %4
  %or.cond = or i1 %17, %18
  br i1 %or.cond, label %clean_custom_, label %match_case49

match_case21:                                     ; preds = %match_case9
  %19 = getelementptr inbounds i8* %3, i64 2
  store i8* %19, i8** %1, align 8
  %20 = load i8* %6, align 1
  br label %clean_custom_

clean_custom_:                                    ; preds = %compare_next12, %match_case, %match_case58, %match_case49, %match_case30, %match_case11, %match_case9, %entry-block, %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h6622297534391848569E.exit", %match_case68, %match_case39, %match_case21
  %__make_return_pointer.sroa.0.0 = phi i8 [ 0, %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h6622297534391848569E.exit" ], [ 1, %match_case21 ], [ 1, %match_case39 ], [ 1, %match_case68 ], [ 0, %compare_next12 ], [ 0, %entry-block ], [ 0, %match_case9 ], [ 0, %match_case11 ], [ 0, %match_case30 ], [ 0, %match_case49 ], [ 0, %match_case58 ], [ 1, %match_case ]
  %__make_return_pointer.sroa.13.0 = phi i8 [ undef, %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h6622297534391848569E.exit" ], [ %8, %match_case21 ], [ %8, %match_case39 ], [ %8, %match_case68 ], [ undef, %compare_next12 ], [ undef, %entry-block ], [ undef, %match_case9 ], [ undef, %match_case11 ], [ undef, %match_case30 ], [ undef, %match_case49 ], [ undef, %match_case58 ], [ %8, %match_case ]
  %__make_return_pointer.sroa.18.0 = phi i8 [ undef, %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h6622297534391848569E.exit" ], [ %20, %match_case21 ], [ %26, %match_case39 ], [ %30, %match_case68 ], [ undef, %compare_next12 ], [ undef, %entry-block ], [ undef, %match_case9 ], [ undef, %match_case11 ], [ undef, %match_case30 ], [ undef, %match_case49 ], [ undef, %match_case58 ], [ 0, %match_case ]
  %__make_return_pointer.sroa.23.0 = phi i8 [ undef, %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h6622297534391848569E.exit" ], [ 0, %match_case21 ], [ %28, %match_case39 ], [ %34, %match_case68 ], [ undef, %compare_next12 ], [ undef, %entry-block ], [ undef, %match_case9 ], [ undef, %match_case11 ], [ undef, %match_case30 ], [ undef, %match_case49 ], [ undef, %match_case58 ], [ 0, %match_case ]
  %__make_return_pointer.sroa.28.0 = phi i8 [ undef, %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h6622297534391848569E.exit" ], [ 0, %match_case21 ], [ 0, %match_case39 ], [ %36, %match_case68 ], [ undef, %compare_next12 ], [ undef, %entry-block ], [ undef, %match_case9 ], [ undef, %match_case11 ], [ undef, %match_case30 ], [ undef, %match_case49 ], [ undef, %match_case58 ], [ 0, %match_case ]
  %newret = insertvalue { i8, [4 x i8] } undef, i8 %__make_return_pointer.sroa.0.0, 0
  %21 = insertvalue [4 x i8] undef, i8 %__make_return_pointer.sroa.13.0, 0
  %22 = insertvalue [4 x i8] %21, i8 %__make_return_pointer.sroa.18.0, 1
  %23 = insertvalue [4 x i8] %22, i8 %__make_return_pointer.sroa.23.0, 2
  %oldret1 = insertvalue [4 x i8] %23, i8 %__make_return_pointer.sroa.28.0, 3
  %newret2 = insertvalue { i8, [4 x i8] } %newret, [4 x i8] %oldret1, 1
  ret { i8, [4 x i8] } %newret2

match_case30:                                     ; preds = %match_case11
  %24 = getelementptr inbounds i8* %3, i64 2
  store i8* %24, i8** %1, align 8
  %25 = icmp eq i8* %24, %4
  br i1 %25, label %clean_custom_, label %match_case39

match_case39:                                     ; preds = %match_case30
  %26 = load i8* %6, align 1
  %27 = getelementptr inbounds i8* %3, i64 3
  store i8* %27, i8** %1, align 8
  %28 = load i8* %24, align 1
  br label %clean_custom_

match_case49:                                     ; preds = %compare_next12
  %29 = getelementptr inbounds i8* %3, i64 2
  store i8* %29, i8** %1, align 8
  %30 = load i8* %6, align 1
  %31 = icmp eq i8* %29, %4
  br i1 %31, label %clean_custom_, label %match_case58

match_case58:                                     ; preds = %match_case49
  %32 = getelementptr inbounds i8* %3, i64 3
  store i8* %32, i8** %1, align 8
  %33 = icmp eq i8* %32, %4
  br i1 %33, label %clean_custom_, label %match_case68

match_case68:                                     ; preds = %match_case58
  %34 = load i8* %29, align 1
  %35 = getelementptr inbounds i8* %3, i64 4
  store i8* %35, i8** %1, align 8
  %36 = load i8* %32, align 1
  br label %clean_custom_
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @_ZN25count_leading_utf8_spaces20ha8aedd1a751b2171IbaE(%str_slice* noalias nocapture dereferenceable(16)) unnamed_addr #4 {
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
  br i1 %8, label %match_case5.i, label %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h6622297534391848569E.exit.i"

"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h6622297534391848569E.exit.i": ; preds = %while_cond
  %9 = getelementptr inbounds i8* %7, i64 1
  %10 = icmp eq i8* %7, null
  br i1 %10, label %match_case5.i, label %match_case.i1

match_case.i1:                                    ; preds = %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h6622297534391848569E.exit.i"
  %11 = load i8* %7, align 1
  %12 = icmp sgt i8 %11, -1
  br i1 %12, label %match_case5.i, label %compare_next.i

compare_next.i:                                   ; preds = %match_case.i1
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
  br i1 %18, label %match_case5.i, label %match_case30.i

compare_next12.i:                                 ; preds = %compare_next10.i
  %19 = and i8 %11, -8
  %20 = icmp ne i8 %19, -16
  %21 = icmp eq i8* %9, %5
  %or.cond.i = or i1 %20, %21
  br i1 %or.cond.i, label %match_case5.i, label %match_case49.i

match_case21.i:                                   ; preds = %match_case9.i
  %22 = getelementptr inbounds i8* %7, i64 2
  %23 = load i8* %9, align 1
  br label %match_case5.i

match_case30.i:                                   ; preds = %match_case11.i
  %24 = getelementptr inbounds i8* %7, i64 2
  %25 = icmp eq i8* %24, %5
  br i1 %25, label %match_case5.i, label %match_case39.i

match_case39.i:                                   ; preds = %match_case30.i
  %26 = load i8* %9, align 1
  %27 = getelementptr inbounds i8* %7, i64 3
  %28 = load i8* %24, align 1
  br label %match_case5.i

match_case49.i:                                   ; preds = %compare_next12.i
  %29 = getelementptr inbounds i8* %7, i64 2
  %30 = load i8* %9, align 1
  %31 = icmp eq i8* %29, %5
  br i1 %31, label %match_case5.i, label %match_case58.i

match_case58.i:                                   ; preds = %match_case49.i
  %32 = getelementptr inbounds i8* %7, i64 3
  %33 = icmp eq i8* %32, %5
  br i1 %33, label %match_case5.i, label %match_case68.i

match_case68.i:                                   ; preds = %match_case58.i
  %34 = load i8* %29, align 1
  %35 = getelementptr inbounds i8* %7, i64 4
  %36 = load i8* %32, align 1
  %phitmp = zext i8 %36 to i32
  %phitmp10 = shl nuw i32 %phitmp, 24
  br label %match_case5.i

match_case5.i:                                    ; preds = %match_case68.i, %match_case58.i, %match_case49.i, %match_case39.i, %match_case30.i, %match_case21.i, %compare_next12.i, %match_case11.i, %match_case9.i, %match_case.i1, %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h6622297534391848569E.exit.i", %while_cond
  %37 = phi i8* [ %9, %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h6622297534391848569E.exit.i" ], [ %22, %match_case21.i ], [ %27, %match_case39.i ], [ %35, %match_case68.i ], [ %9, %compare_next12.i ], [ %5, %while_cond ], [ %5, %match_case9.i ], [ %5, %match_case11.i ], [ %5, %match_case30.i ], [ %5, %match_case49.i ], [ %5, %match_case58.i ], [ %9, %match_case.i1 ]
  %__make_return_pointer.sroa.0.0.i = phi i1 [ false, %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h6622297534391848569E.exit.i" ], [ true, %match_case21.i ], [ true, %match_case39.i ], [ true, %match_case68.i ], [ false, %compare_next12.i ], [ false, %while_cond ], [ false, %match_case9.i ], [ false, %match_case11.i ], [ false, %match_case30.i ], [ false, %match_case49.i ], [ false, %match_case58.i ], [ true, %match_case.i1 ]
  %__make_return_pointer.sroa.13.0.i = phi i8 [ undef, %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h6622297534391848569E.exit.i" ], [ %11, %match_case21.i ], [ %11, %match_case39.i ], [ %11, %match_case68.i ], [ undef, %compare_next12.i ], [ undef, %while_cond ], [ undef, %match_case9.i ], [ undef, %match_case11.i ], [ undef, %match_case30.i ], [ undef, %match_case49.i ], [ undef, %match_case58.i ], [ %11, %match_case.i1 ]
  %__make_return_pointer.sroa.18.0.i = phi i8 [ undef, %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h6622297534391848569E.exit.i" ], [ %23, %match_case21.i ], [ %26, %match_case39.i ], [ %30, %match_case68.i ], [ undef, %compare_next12.i ], [ undef, %while_cond ], [ undef, %match_case9.i ], [ undef, %match_case11.i ], [ undef, %match_case30.i ], [ undef, %match_case49.i ], [ undef, %match_case58.i ], [ 0, %match_case.i1 ]
  %__make_return_pointer.sroa.23.0.i = phi i8 [ undef, %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h6622297534391848569E.exit.i" ], [ 0, %match_case21.i ], [ %28, %match_case39.i ], [ %34, %match_case68.i ], [ undef, %compare_next12.i ], [ undef, %while_cond ], [ undef, %match_case9.i ], [ undef, %match_case11.i ], [ undef, %match_case30.i ], [ undef, %match_case49.i ], [ undef, %match_case58.i ], [ 0, %match_case.i1 ]
  %__make_return_pointer.sroa.28.0.i = phi i32 [ 0, %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h6622297534391848569E.exit.i" ], [ 0, %match_case21.i ], [ 0, %match_case39.i ], [ %phitmp10, %match_case68.i ], [ 0, %compare_next12.i ], [ 0, %while_cond ], [ 0, %match_case9.i ], [ 0, %match_case11.i ], [ 0, %match_case30.i ], [ 0, %match_case49.i ], [ 0, %match_case58.i ], [ 0, %match_case.i1 ]
  %autoref.sroa.5.1.insert.ext = zext i8 %__make_return_pointer.sroa.13.0.i to i32
  %autoref.sroa.5.2.insert.ext = zext i8 %__make_return_pointer.sroa.18.0.i to i32
  %autoref.sroa.5.2.insert.shift = shl nuw nsw i32 %autoref.sroa.5.2.insert.ext, 8
  %autoref.sroa.5.2.insert.insert = or i32 %autoref.sroa.5.2.insert.shift, %autoref.sroa.5.1.insert.ext
  %autoref.sroa.5.3.insert.ext = zext i8 %__make_return_pointer.sroa.23.0.i to i32
  %autoref.sroa.5.3.insert.shift = shl nuw nsw i32 %autoref.sroa.5.3.insert.ext, 16
  %autoref.sroa.5.3.insert.insert = or i32 %autoref.sroa.5.2.insert.insert, %__make_return_pointer.sroa.28.0.i
  %autoref.sroa.5.4.insert.insert = or i32 %autoref.sroa.5.3.insert.insert, %autoref.sroa.5.3.insert.shift
  %38 = icmp eq i32 %autoref.sroa.5.4.insert.insert, 32
  %or.cond = and i1 %__make_return_pointer.sroa.0.0.i, %38
  br i1 %or.cond, label %while_cond, label %while_exit
}

; Function Attrs: uwtable
define void @_ZN31bench_count_leading_utf8_spaces20h67fbada554663c88lcaE(%"struct.test::Bencher<[]>[#11]"* noalias nocapture dereferenceable(32)) unnamed_addr #0 {
entry-block:
  %dummy.i.i = alloca {}, align 8
  %arg.i = alloca %str_slice, align 8
  %1 = getelementptr inbounds %"struct.test::Bencher<[]>[#11]"* %0, i64 0, i32 1
  %2 = tail call i64 @_ZN15precise_time_ns20h967042282428adebhraE()
  store i64 %2, i64* %1, align 8
  %3 = getelementptr inbounds %"struct.test::Bencher<[]>[#11]"* %0, i64 0, i32 0
  %4 = load i64* %3, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %_ZN7Bencher4iter20h6732410158626673121E.exit, label %for_body.lr.ph.i

for_body.lr.ph.i:                                 ; preds = %entry-block
  %6 = bitcast {}* %dummy.i.i to i8*
  %7 = bitcast %str_slice* %arg.i to i8*
  br label %for_body.i

for_body.i:                                       ; preds = %for_body.i, %for_body.lr.ph.i
  %8 = phi i64 [ 0, %for_body.lr.ph.i ], [ %9, %for_body.i ]
  %9 = add i64 %8, 1
  call void @llvm.lifetime.start(i64 16, i8* %7)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast (%str_slice* @_ZN5SPACE20h45cd958379d36460jaaE to i8*), i64 16, i32 8, i1 false)
  call fastcc void @_ZN25count_leading_utf8_spaces20ha8aedd1a751b2171IbaE(%str_slice* noalias nocapture dereferenceable(16) %arg.i)
  call void @llvm.lifetime.start(i64 0, i8* %6) #5
  call void asm "", "r,~{dirflag},~{fpsr},~{flags}"({}* %dummy.i.i) #5
  call void @llvm.lifetime.end(i64 0, i8* %6) #5
  %exitcond.i = icmp eq i64 %9, %4
  br i1 %exitcond.i, label %_ZN7Bencher4iter20h6732410158626673121E.exit.loopexit, label %for_body.i

_ZN7Bencher4iter20h6732410158626673121E.exit.loopexit: ; preds = %for_body.i
  br label %_ZN7Bencher4iter20h6732410158626673121E.exit

_ZN7Bencher4iter20h6732410158626673121E.exit:     ; preds = %_ZN7Bencher4iter20h6732410158626673121E.exit.loopexit, %entry-block
  %10 = getelementptr inbounds %"struct.test::Bencher<[]>[#11]"* %0, i64 0, i32 2
  %11 = call i64 @_ZN15precise_time_ns20h967042282428adebhraE()
  store i64 %11, i64* %10, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @_ZN25count_leading_char_spaces20h861bcb547ed72d3aEcaE(%str_slice* noalias nocapture dereferenceable(16)) unnamed_addr #4 {
entry-block:
  %.sroa.0.0..sroa_idx.i = getelementptr inbounds %str_slice* %0, i64 0, i32 0
  %.sroa.0.0.copyload.i = load i8** %.sroa.0.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa_idx6.i = getelementptr inbounds %str_slice* %0, i64 0, i32 1
  %.sroa.4.0.copyload.i = load i64* %.sroa.4.0..sroa_idx6.i, align 8
  %1 = getelementptr inbounds i8* %.sroa.0.0.copyload.i, i64 %.sroa.4.0.copyload.i
  br label %while_cond

while_exit:                                       ; preds = %while_cond, %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h6622297534391848569E.exit.i", %match_case5.i
  %2 = bitcast %str_slice* %0 to i8*
  tail call void @llvm.lifetime.end(i64 16, i8* %2)
  ret void

while_cond:                                       ; preds = %match_case5.i, %entry-block
  %.sroa.0.0.copyload.i10 = phi i8* [ %.sroa.0.0.copyload.i, %entry-block ], [ %.sroa.0.0.copyload.i9, %match_case5.i ]
  %3 = icmp eq i8* %.sroa.0.0.copyload.i10, %1
  br i1 %3, label %while_exit, label %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h6622297534391848569E.exit.i"

"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h6622297534391848569E.exit.i": ; preds = %while_cond
  %4 = getelementptr inbounds i8* %.sroa.0.0.copyload.i10, i64 1
  %5 = icmp eq i8* %.sroa.0.0.copyload.i10, null
  br i1 %5, label %while_exit, label %match_else.i

match_else.i:                                     ; preds = %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next20h6622297534391848569E.exit.i"
  %6 = load i8* %.sroa.0.0.copyload.i10, align 1
  %7 = icmp slt i8 %6, 0
  br i1 %7, label %cond.i1, label %next.i

next.i:                                           ; preds = %match_else.i
  %8 = zext i8 %6 to i32
  br label %match_case5.i

cond.i1:                                          ; preds = %match_else.i
  %9 = and i8 %6, 31
  %10 = zext i8 %9 to i32
  %11 = icmp eq i8* %4, %1
  br i1 %11, label %_ZN3str11unwrap_or_020h29ca9fa7e82b00a7EqaE.exit16.i, label %match_case.i14.i

match_case.i14.i:                                 ; preds = %cond.i1
  %12 = getelementptr inbounds i8* %.sroa.0.0.copyload.i10, i64 2
  %13 = load i8* %4, align 1
  %phitmp.i = and i8 %13, 63
  %phitmp20.i = zext i8 %phitmp.i to i32
  br label %_ZN3str11unwrap_or_020h29ca9fa7e82b00a7EqaE.exit16.i

_ZN3str11unwrap_or_020h29ca9fa7e82b00a7EqaE.exit16.i: ; preds = %match_case.i14.i, %cond.i1
  %.sroa.0.0.copyload.i13 = phi i8* [ %12, %match_case.i14.i ], [ %1, %cond.i1 ]
  %__make_return_pointer.0.i15.i = phi i32 [ %phitmp20.i, %match_case.i14.i ], [ 0, %cond.i1 ]
  %14 = shl nuw nsw i32 %10, 6
  %15 = or i32 %__make_return_pointer.0.i15.i, %14
  %16 = icmp ugt i8 %6, -33
  br i1 %16, label %then-block-867-.i, label %match_case5.i

then-block-867-.i:                                ; preds = %_ZN3str11unwrap_or_020h29ca9fa7e82b00a7EqaE.exit16.i
  %17 = icmp eq i8* %.sroa.0.0.copyload.i13, %1
  br i1 %17, label %_ZN3str11unwrap_or_020h29ca9fa7e82b00a7EqaE.exit10.i, label %match_case.i8.i

match_case.i8.i:                                  ; preds = %then-block-867-.i
  %18 = getelementptr inbounds i8* %.sroa.0.0.copyload.i13, i64 1
  %19 = load i8* %.sroa.0.0.copyload.i13, align 1
  %phitmp21.i = and i8 %19, 63
  %phitmp22.i = zext i8 %phitmp21.i to i32
  br label %_ZN3str11unwrap_or_020h29ca9fa7e82b00a7EqaE.exit10.i

_ZN3str11unwrap_or_020h29ca9fa7e82b00a7EqaE.exit10.i: ; preds = %match_case.i8.i, %then-block-867-.i
  %.sroa.0.0.copyload.i12 = phi i8* [ %18, %match_case.i8.i ], [ %.sroa.0.0.copyload.i13, %then-block-867-.i ]
  %20 = phi i8* [ %18, %match_case.i8.i ], [ %1, %then-block-867-.i ]
  %__make_return_pointer.0.i9.i = phi i32 [ %phitmp22.i, %match_case.i8.i ], [ 0, %then-block-867-.i ]
  %21 = shl nuw nsw i32 %__make_return_pointer.0.i15.i, 6
  %22 = or i32 %__make_return_pointer.0.i9.i, %21
  %23 = shl nuw nsw i32 %10, 12
  %24 = or i32 %22, %23
  %25 = icmp ugt i8 %6, -17
  br i1 %25, label %then-block-911-.i, label %match_case5.i

then-block-911-.i:                                ; preds = %_ZN3str11unwrap_or_020h29ca9fa7e82b00a7EqaE.exit10.i
  %26 = icmp eq i8* %20, %1
  br i1 %26, label %_ZN3str11unwrap_or_020h29ca9fa7e82b00a7EqaE.exit.i, label %match_case.i.i

match_case.i.i:                                   ; preds = %then-block-911-.i
  %27 = getelementptr inbounds i8* %20, i64 1
  %28 = load i8* %20, align 1
  %phitmp23.i = and i8 %28, 63
  %phitmp24.i = zext i8 %phitmp23.i to i32
  br label %_ZN3str11unwrap_or_020h29ca9fa7e82b00a7EqaE.exit.i

_ZN3str11unwrap_or_020h29ca9fa7e82b00a7EqaE.exit.i: ; preds = %match_case.i.i, %then-block-911-.i
  %.sroa.0.0.copyload.i11 = phi i8* [ %27, %match_case.i.i ], [ %.sroa.0.0.copyload.i12, %then-block-911-.i ]
  %__make_return_pointer.0.i.i = phi i32 [ %phitmp24.i, %match_case.i.i ], [ 0, %then-block-911-.i ]
  %29 = shl nuw nsw i32 %10, 18
  %30 = and i32 %29, 1835008
  %31 = shl nuw nsw i32 %22, 6
  %32 = or i32 %31, %30
  %33 = or i32 %32, %__make_return_pointer.0.i.i
  br label %match_case5.i

match_case5.i:                                    ; preds = %_ZN3str11unwrap_or_020h29ca9fa7e82b00a7EqaE.exit.i, %_ZN3str11unwrap_or_020h29ca9fa7e82b00a7EqaE.exit10.i, %_ZN3str11unwrap_or_020h29ca9fa7e82b00a7EqaE.exit16.i, %next.i
  %.sroa.0.0.copyload.i9 = phi i8* [ %4, %next.i ], [ %.sroa.0.0.copyload.i11, %_ZN3str11unwrap_or_020h29ca9fa7e82b00a7EqaE.exit.i ], [ %.sroa.0.0.copyload.i12, %_ZN3str11unwrap_or_020h29ca9fa7e82b00a7EqaE.exit10.i ], [ %.sroa.0.0.copyload.i13, %_ZN3str11unwrap_or_020h29ca9fa7e82b00a7EqaE.exit16.i ]
  %__make_return_pointer.sroa.7.0.i = phi i32 [ %8, %next.i ], [ %33, %_ZN3str11unwrap_or_020h29ca9fa7e82b00a7EqaE.exit.i ], [ %24, %_ZN3str11unwrap_or_020h29ca9fa7e82b00a7EqaE.exit10.i ], [ %15, %_ZN3str11unwrap_or_020h29ca9fa7e82b00a7EqaE.exit16.i ]
  %34 = icmp eq i32 %__make_return_pointer.sroa.7.0.i, 32
  br i1 %34, label %while_cond, label %while_exit
}

; Function Attrs: uwtable
define void @_ZN31bench_count_leading_char_spaces20hc0fd090cc9ec2311hdaE(%"struct.test::Bencher<[]>[#11]"* noalias nocapture dereferenceable(32)) unnamed_addr #0 {
entry-block:
  %dummy.i.i = alloca {}, align 8
  %arg.i = alloca %str_slice, align 8
  %1 = getelementptr inbounds %"struct.test::Bencher<[]>[#11]"* %0, i64 0, i32 1
  %2 = tail call i64 @_ZN15precise_time_ns20h967042282428adebhraE()
  store i64 %2, i64* %1, align 8
  %3 = getelementptr inbounds %"struct.test::Bencher<[]>[#11]"* %0, i64 0, i32 0
  %4 = load i64* %3, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %_ZN7Bencher4iter20h6732410158626673121E.exit, label %for_body.lr.ph.i

for_body.lr.ph.i:                                 ; preds = %entry-block
  %6 = bitcast {}* %dummy.i.i to i8*
  %7 = bitcast %str_slice* %arg.i to i8*
  br label %for_body.i

for_body.i:                                       ; preds = %for_body.i, %for_body.lr.ph.i
  %8 = phi i64 [ 0, %for_body.lr.ph.i ], [ %9, %for_body.i ]
  %9 = add i64 %8, 1
  call void @llvm.lifetime.start(i64 16, i8* %7)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast (%str_slice* @_ZN5SPACE20h45cd958379d36460jaaE to i8*), i64 16, i32 8, i1 false)
  call fastcc void @_ZN25count_leading_char_spaces20h861bcb547ed72d3aEcaE(%str_slice* noalias nocapture dereferenceable(16) %arg.i)
  call void @llvm.lifetime.start(i64 0, i8* %6) #5
  call void asm "", "r,~{dirflag},~{fpsr},~{flags}"({}* %dummy.i.i) #5
  call void @llvm.lifetime.end(i64 0, i8* %6) #5
  %exitcond.i = icmp eq i64 %9, %4
  br i1 %exitcond.i, label %_ZN7Bencher4iter20h6732410158626673121E.exit.loopexit, label %for_body.i

_ZN7Bencher4iter20h6732410158626673121E.exit.loopexit: ; preds = %for_body.i
  br label %_ZN7Bencher4iter20h6732410158626673121E.exit

_ZN7Bencher4iter20h6732410158626673121E.exit:     ; preds = %_ZN7Bencher4iter20h6732410158626673121E.exit.loopexit, %entry-block
  %10 = getelementptr inbounds %"struct.test::Bencher<[]>[#11]"* %0, i64 0, i32 2
  %11 = call i64 @_ZN15precise_time_ns20h967042282428adebhraE()
  store i64 %11, i64* %10, align 8
  ret void
}

; Function Attrs: uwtable
define internal void @_ZN6__test4main20h259775692ac21a6dJdaE() unnamed_addr #0 {
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
  store %"struct.test::TestDescAndFn<[]>[#11]"* bitcast ({ { { { i8, %str_slice, [8 x i8] }, i1, i1, [6 x i8] }, { i8, void (%"struct.test::Bencher<[]>[#11]"*)*, [8 x i8] } }, { { { i8, %str_slice, [8 x i8] }, i1, i1, [6 x i8] }, { i8, void (%"struct.test::Bencher<[]>[#11]"*)*, [8 x i8] } }, { { { i8, %str_slice, [8 x i8] }, i1, i1, [6 x i8] }, { i8, void (%"struct.test::Bencher<[]>[#11]"*)*, [8 x i8] } }, { { { i8, %str_slice, [8 x i8] }, i1, i1, [6 x i8] }, { i8, void (%"struct.test::Bencher<[]>[#11]"*)*, [8 x i8] } } }* @const to %"struct.test::TestDescAndFn<[]>[#11]"*), %"struct.test::TestDescAndFn<[]>[#11]"** %10, align 8
  %11 = getelementptr inbounds { %"struct.test::TestDescAndFn<[]>[#11]"*, i64 }* %__adjust1, i64 0, i32 1
  store i64 4, i64* %11, align 8
  invoke void @_ZN16test_main_static20hde078a77ef38ea445ybE({ %"struct.collections::string::String<[]>[#6]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust, { %"struct.test::TestDescAndFn<[]>[#11]"*, i64 }* noalias nocapture dereferenceable(16) %__adjust1)
          to label %normal-return2 unwind label %unwind_ast_225_3

resume:                                           ; preds = %for_exit.i.i, %unwind_ast_225_3
  call void @llvm.lifetime.end(i64 24, i8* %1)
  resume { i8*, i32 } %23

normal-return2:                                   ; preds = %normal-return
  %12 = getelementptr inbounds %"struct.collections::vec::Vec<[collections::string::String]>[#6]"* %0, i64 0, i32 1
  %13 = load i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %"_ZN56collections..vec..Vec$LT$collections..string..String$GT$14glue_drop.162117he5ecd15ca5ad27d2E.exit21", label %then-block-1382-.i.i11

then-block-1382-.i.i11:                           ; preds = %normal-return2
  %15 = getelementptr inbounds %"struct.collections::string::String<[]>[#6]"* %3, i64 %5
  %16 = icmp eq i64 %5, 0
  br i1 %16, label %for_exit.i.i12, label %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next21h14723657141698177404E.exit.i.i13.preheader"

"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next21h14723657141698177404E.exit.i.i13.preheader": ; preds = %then-block-1382-.i.i11
  br label %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next21h14723657141698177404E.exit.i.i13"

for_exit.i.i12.loopexit:                          ; preds = %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next21h14723657141698177404E.exit.i.i13", %for_loopback.backedge.i.i17
  br label %for_exit.i.i12

for_exit.i.i12:                                   ; preds = %for_exit.i.i12.loopexit, %then-block-1382-.i.i11
  %17 = bitcast %"struct.collections::string::String<[]>[#6]"* %3 to i8*
  tail call void @je_dallocx(i8* %17, i32 3)
  br label %"_ZN56collections..vec..Vec$LT$collections..string..String$GT$14glue_drop.162117he5ecd15ca5ad27d2E.exit21"

"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next21h14723657141698177404E.exit.i.i13": ; preds = %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next21h14723657141698177404E.exit.i.i13.preheader", %for_loopback.backedge.i.i17
  %18 = phi %"struct.collections::string::String<[]>[#6]"* [ %19, %for_loopback.backedge.i.i17 ], [ %3, %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next21h14723657141698177404E.exit.i.i13.preheader" ]
  %19 = getelementptr inbounds %"struct.collections::string::String<[]>[#6]"* %18, i64 1
  %20 = icmp eq %"struct.collections::string::String<[]>[#6]"* %18, null
  br i1 %20, label %for_exit.i.i12.loopexit, label %for_body.i.i16

for_body.i.i16:                                   ; preds = %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next21h14723657141698177404E.exit.i.i13"
  %tmp.sroa.5.0..sroa_idx5.i.i.i14 = getelementptr inbounds %"struct.collections::string::String<[]>[#6]"* %18, i64 0, i32 0, i32 1
  %tmp.sroa.5.0.copyload.i.i.i15 = load i64* %tmp.sroa.5.0..sroa_idx5.i.i.i14, align 8
  %21 = icmp eq i64 %tmp.sroa.5.0.copyload.i.i.i15, 0
  br i1 %21, label %for_loopback.backedge.i.i17, label %then-block-1382-.i.i.i.i.i20

for_loopback.backedge.i.i17:                      ; preds = %then-block-1382-.i.i.i.i.i20, %for_body.i.i16
  %22 = icmp eq %"struct.collections::string::String<[]>[#6]"* %19, %15
  br i1 %22, label %for_exit.i.i12.loopexit, label %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next21h14723657141698177404E.exit.i.i13"

then-block-1382-.i.i.i.i.i20:                     ; preds = %for_body.i.i16
  %tmp.sroa.6.0..sroa_idx9.i.i.i18 = getelementptr inbounds %"struct.collections::string::String<[]>[#6]"* %18, i64 0, i32 0, i32 2
  %tmp.sroa.6.0.copyload.i.i.i19 = load i8** %tmp.sroa.6.0..sroa_idx9.i.i.i18, align 8
  tail call void @je_dallocx(i8* %tmp.sroa.6.0.copyload.i.i.i19, i32 0)
  br label %for_loopback.backedge.i.i17

"_ZN56collections..vec..Vec$LT$collections..string..String$GT$14glue_drop.162117he5ecd15ca5ad27d2E.exit21": ; preds = %normal-return2, %for_exit.i.i12
  call void @llvm.lifetime.end(i64 24, i8* %1)
  ret void

unwind_ast_225_3:                                 ; preds = %normal-return
  %23 = landingpad { i8*, i32 } personality i32 (i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*)* @rust_eh_personality
          cleanup
  %24 = getelementptr inbounds %"struct.collections::vec::Vec<[collections::string::String]>[#6]"* %0, i64 0, i32 1
  %25 = load i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %resume, label %then-block-1382-.i.i

then-block-1382-.i.i:                             ; preds = %unwind_ast_225_3
  %27 = getelementptr inbounds %"struct.collections::string::String<[]>[#6]"* %3, i64 %5
  %28 = icmp eq i64 %5, 0
  br i1 %28, label %for_exit.i.i, label %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next21h14723657141698177404E.exit.i.i.preheader"

"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next21h14723657141698177404E.exit.i.i.preheader": ; preds = %then-block-1382-.i.i
  br label %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next21h14723657141698177404E.exit.i.i"

for_exit.i.i.loopexit:                            ; preds = %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next21h14723657141698177404E.exit.i.i", %for_loopback.backedge.i.i
  br label %for_exit.i.i

for_exit.i.i:                                     ; preds = %for_exit.i.i.loopexit, %then-block-1382-.i.i
  %29 = bitcast %"struct.collections::string::String<[]>[#6]"* %3 to i8*
  tail call void @je_dallocx(i8* %29, i32 3)
  br label %resume

"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next21h14723657141698177404E.exit.i.i": ; preds = %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next21h14723657141698177404E.exit.i.i.preheader", %for_loopback.backedge.i.i
  %30 = phi %"struct.collections::string::String<[]>[#6]"* [ %31, %for_loopback.backedge.i.i ], [ %3, %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next21h14723657141698177404E.exit.i.i.preheader" ]
  %31 = getelementptr inbounds %"struct.collections::string::String<[]>[#6]"* %30, i64 1
  %32 = icmp eq %"struct.collections::string::String<[]>[#6]"* %30, null
  br i1 %32, label %for_exit.i.i.loopexit, label %for_body.i.i

for_body.i.i:                                     ; preds = %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next21h14723657141698177404E.exit.i.i"
  %tmp.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds %"struct.collections::string::String<[]>[#6]"* %30, i64 0, i32 0, i32 1
  %tmp.sroa.5.0.copyload.i.i.i = load i64* %tmp.sroa.5.0..sroa_idx5.i.i.i, align 8
  %33 = icmp eq i64 %tmp.sroa.5.0.copyload.i.i.i, 0
  br i1 %33, label %for_loopback.backedge.i.i, label %then-block-1382-.i.i.i.i.i

for_loopback.backedge.i.i:                        ; preds = %then-block-1382-.i.i.i.i.i, %for_body.i.i
  %34 = icmp eq %"struct.collections::string::String<[]>[#6]"* %31, %27
  br i1 %34, label %for_exit.i.i.loopexit, label %"_ZN5slice57Items$LT$$x27a$C$$x20T$GT$.Iterator$LT$$BP$$x27a$x20T$GT$4next21h14723657141698177404E.exit.i.i"

then-block-1382-.i.i.i.i.i:                       ; preds = %for_body.i.i
  %tmp.sroa.6.0..sroa_idx9.i.i.i = getelementptr inbounds %"struct.collections::string::String<[]>[#6]"* %30, i64 0, i32 0, i32 2
  %tmp.sroa.6.0.copyload.i.i.i = load i8** %tmp.sroa.6.0..sroa_idx9.i.i.i, align 8
  tail call void @je_dallocx(i8* %tmp.sroa.6.0.copyload.i.i.i, i32 0)
  br label %for_loopback.backedge.i.i
}

define i64 @main(i64, i8**) unnamed_addr #2 {
top:
  %2 = tail call i64 @_ZN10lang_start20h20b5eb8c6190ecbe8oeE(i8* bitcast (void ()* @_ZN6__test4main20h259775692ac21a6dJdaE to i8*), i64 %0, i8** %1)
  ret i64 %2
}

declare i64 @_ZN10lang_start20h20b5eb8c6190ecbe8oeE(i8*, i64, i8**) unnamed_addr #2

declare void @_ZN16test_main_static20hde078a77ef38ea445ybE({ %"struct.collections::string::String<[]>[#6]"*, i64 }* noalias nocapture dereferenceable(16), { %"struct.test::TestDescAndFn<[]>[#11]"*, i64 }* noalias nocapture dereferenceable(16)) unnamed_addr #2

declare void @_ZN2os4args20h75fd1971ba54cbdd6FgE(%"struct.collections::vec::Vec<[collections::string::String]>[#6]"* noalias nocapture sret dereferenceable(24)) unnamed_addr #2

declare i32 @rust_eh_personality(i32, i32, i64, %"struct.rustrt::libunwind::_Unwind_Exception<[]>[#9]"*, %"enum.rustrt::libunwind::_Unwind_Context<[]>[#9]"*) unnamed_addr #2

declare void @je_dallocx(i8*, i32) unnamed_addr #2

attributes #0 = { uwtable "split-stack" }
attributes #1 = { nounwind "split-stack" }
attributes #2 = { "split-stack" }
attributes #3 = { inlinehint nounwind uwtable "split-stack" }
attributes #4 = { noinline nounwind uwtable "split-stack" }
attributes #5 = { nounwind }
