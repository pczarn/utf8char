extern crate test;
extern crate utf8char;
use test::Bencher;
use utf8char::Utf8Char;
use utf8char::Utf8StrExt;

static SPACE: &'static str = "                                                                                                                                                                                                                                                                                                                           ";

#[bench]
fn str_usv_chars(b: &mut Bencher) {
    let mut iter = SPACE.chars();
    let c = Some(' ');
    b.iter(|| {
        while iter.next() == c {}
    })
}

#[bench]
fn str_utf8_chars(b: &mut Bencher) {
    let mut iter = SPACE.utf8_chars();
    let c = Some(unsafe{Utf8Char::from_raw([b' ', 0, 0, 0])});
    b.iter(|| {
        while iter.next() == c {}
    })
}

#[inline(never)]
fn count_leading_spaces(s: &str) -> uint {
    let mut iter = s.utf8_chars();
    let mut i = 0;
    let c = Some(unsafe{Utf8Char::from_raw([b' ', 0, 0, 0])});
    while iter.next() == c {i += 1;} i
}

#[test]
fn test_count_leading_spaces() {
    count_leading_spaces(SPACE);
}
