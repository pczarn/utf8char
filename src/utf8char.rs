#![feature(macro_rules)]

// Helper macro for unit tests
macro_rules! iter_eq {
    ($i:expr, $s:expr) => {
        {
            let i: Vec<_> = $i.collect();
            let s = $s;
            assert_eq!(i.as_slice(), s.as_slice());
        }
    }
}

pub struct Utf8Char {
    data: [u8, ..4]
}

impl Utf8Char {
    #[inline]
    pub fn from_char(c: char) -> Utf8Char {
        let mut buf = [0, ..4];
        c.encode_utf8(buf.as_mut_slice());
        Utf8Char { data: buf }
    }

    #[inline]
    pub unsafe fn from_raw(buf: [u8, ..4]) -> Utf8Char {
        Utf8Char { data: buf }
    }

    #[inline]
    pub fn into_raw(self) -> [u8, ..4] {
        self.data
    }
}

impl PartialEq for Utf8Char {
    fn eq(&self, other: &Utf8Char) -> bool {
        self.data == other.data
    }
}

#[deriving(Clone)]
pub struct Utf8Chars<'a> {
    iter: std::slice::Items<'a, u8>
}

macro_rules! next {
    ($iter:expr) => {
        match $iter.next() {
            Some(&b) => b,
            None => 0,
        }
    }
}

impl<'a> Iterator<Utf8Char> for Utf8Chars<'a> {
    #[inline]
    fn next(&mut self) -> Option<Utf8Char> {
        let iter = &mut self.iter;
        unsafe {
            match iter.next() {
                Some(&b) => match b {
                    0x00..0x7f => Some(Utf8Char::from_raw([b, 0, 0, 0])),
                    0xC0..0xDF => Some(Utf8Char::from_raw([b, next!(iter), 0, 0])),
                    0xE0..0xEF => Some(Utf8Char::from_raw([b, next!(iter), next!(iter), 0])),
                    0xF0..0xF7 => Some(Utf8Char::from_raw([b, next!(iter), next!(iter), next!(iter)])),

                    // Unreachable for valid utf8 (good case for an attribute marking it)
                    _ => None
                },
                None => None,
            }
        }
    }
}

pub trait Utf8StrExt<'a> {
    fn utf8_chars(self) -> Utf8Chars<'a>;
}

impl<'a> Utf8StrExt<'a> for &'a str {
    #[inline]
    fn utf8_chars(self) -> Utf8Chars<'a> {
        Utf8Chars{ iter: self.as_bytes().iter() }
    }
}
