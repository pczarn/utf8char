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
    let c = Some(Utf8Char::from_char(' '));
    b.iter(|| {
        while iter.next() == c {}
    })
}
