extern crate test;
extern crate utf8char;
use test::Bencher;
use utf8char::Utf8Char;
use utf8char::Utf8StrExt;

use std::mem;
use std::slice;

static SPACE: &'static str = "                                                                                                                                                                                                                                                                                                                           ";
static UTF8SPACE: Utf8Char = Utf8Char { data: [b' ', 0, 0, 0] };
static CHARSPACE: char = ' ';

#[inline(never)]
fn count_leading_utf8_spaces(s: &str) -> uint {
    let mut iter = s.utf8_chars();
    let mut i = 0;
    let c = Some(UTF8SPACE);
    while iter.next() == c {i += 1;} i
}

#[bench]
fn bench_count_leading_utf8_spaces(b: &mut Bencher) {
    b.iter(|| {
        count_leading_utf8_spaces(SPACE);
    })
}

#[inline(never)]
fn count_leading_char_spaces(s: &str) -> uint {
    let mut iter = s.chars();
    let mut i = 0;
    let c = Some(CHARSPACE);
    while iter.next() == c {i += 1;} i
}

#[bench]
fn str_indexing(b: &mut Bencher) {
    let s = "aabaacedddddddddd";
    let mut i = 0u;
    b.iter(|| {
        test::black_box(s.char_at(i));
        i = (i + 7) & 15;
    });
}

#[bench]
fn vec_of_char_indexing(b: &mut Bencher) {
    let s = "aabaacedddddddddd";
    let mut i = 0u;
    let s: Vec<char> = s.chars().collect();
    b.iter(|| {
        test::black_box(s.get(i));
        i = (i + 7) & 15;
    });
}

static TEST_STR: &'static str = "aabaaceddddddąćz";

#[bench]
fn string_to_vec_of_char(b: &mut Bencher) {
    let mut s = TEST_STR.to_string();
    let nchars = s.as_slice().chars().count();
    s.reserve(nchars * 4);

    b.iter(|| {
        let mut str_end = unsafe {
            (s.as_slice().as_ptr() as *mut char).offset(nchars as int)
        };
        let mut p = str_end;

        for c in s.as_slice().chars().rev() {
            unsafe {
                p = p.offset(-1);
                *p = c;
            }
        }

        let mut p2 = p as *mut u8;
        unsafe {
            slice::raw::buf_as_slice(p as *const char, nchars, |vec| {
                for &c in vec.iter() {
                    let n = c.encode_utf8(mem::transmute((p2, 4u)));
                    p2 = p2.offset(n as int);
                    p = p.offset(1);
                }
            });
        }
    });
}

#[bench]
fn string_to_vec_of_utf8char(b: &mut Bencher) {
    #[inline]
    fn unwrap_or_0(opt: Option<&u8>) -> u8 {
        match opt {
            Some(&byte) => byte,
            None => 0,
        }
    }

    let mut s = TEST_STR.to_string();
    let nchars = s.as_slice().chars().count();
    s.reserve(nchars * 4);

    b.iter(|| unsafe {
        let mut str_end = unsafe {
            (s.as_slice().as_ptr() as *mut [u8, ..4]).offset(nchars as int)
        };
        let mut p = str_end;

        let mut bytes = s.as_bytes().iter().rev();
        loop {
            match bytes.next() {
                Some(&c) => {
                    p = p.offset(-1);

                    if c < 128 {
                        *p = [c, 0, 0, 0];
                    } else {
                        let c2 = unwrap_or_0(bytes.next());
                        if c2 & 192 == 128 { // cont
                            let c3 = unwrap_or_0(bytes.next());
                            if c3 & 192 == 128 { // cont
                                *p = [unwrap_or_0(bytes.next()), c3, c2, c];
                            } else {
                                *p = [c3, c2, c, 0]
                            }
                        } else {
                            *p = [c2, c, 0, 0];
                        }
                    }
                }
                None => break
            }
        }

        let mut p2 = p as *mut u8;

        slice::raw::buf_as_slice(p as *const Utf8Char, nchars, |vec| {
            for &c in vec.iter() {
                match c {
                    Utf8Char { data: [a @ 0x00..0x7f, _, _, _] } => {
                        *p2 = a;
                        p2 = p2.offset(1);
                    }
                    Utf8Char { data: [a @ 0xC0..0xDF, b, _, _] } => {
                        *p2 = a;
                        *p2.offset(1) = b;
                        p2 = p2.offset(2);
                    }
                    Utf8Char { data: [a @ 0xE0..0xEF, b, c, _] } => {
                        *p2 = a;
                        *p2.offset(1) = b;
                        *p2.offset(2) = c;
                        p2 = p2.offset(3);
                    }
                    Utf8Char { data: [a @ 0xF0..0xF7, b, c, d] } => {
                        *p2 = a;
                        *p2.offset(1) = b;
                        *p2.offset(2) = c;
                        *p2.offset(3) = d;
                        p2 = p2.offset(4);
                    }
                    _ => ()
                }
            }
        });
    });
}

#[bench]
fn bench_count_leading_char_spaces(b: &mut Bencher) {
    b.iter(|| {
        count_leading_char_spaces(SPACE);
    })
}
