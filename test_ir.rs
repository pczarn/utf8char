extern crate utf8char;
use utf8char::Utf8Char;
use utf8char::Utf8StrExt;

static SPACE: &'static str = "                                                                                                                                                                                                                                                                                                                           ";

#[inline(never)]
fn count_leading_spaces(s: &str) -> uint {
    let mut iter = s.utf8_chars();
    let mut i = 0;
    let c = Some(unsafe{Utf8Char::from_raw([b' ', 0, 0, 0])});
    while iter.next() == c {i += 1;} i
}

fn main() {
    count_leading_spaces(SPACE);
}
