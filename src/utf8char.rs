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
    pub data: [u8, ..4]
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
    #[inline]
    fn eq(&self, other: &Utf8Char) -> bool {
        unsafe {
            let a: u32 = std::mem::transmute(self.data);
            let b: u32 = std::mem::transmute(other.data);
            a == b
        }
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
            None => return None,
        }
    }
}

impl<'a> Iterator<Utf8Char> for Utf8Chars<'a> {
    #[inline]
    fn next(&mut self) -> Option<Utf8Char> {
        let iter = &mut self.iter;
        let leading = next!(iter);
        let buf = match leading {
            0x00..0x7f => [leading, 0, 0, 0],
            0xC0..0xDF => [leading, next!(iter), 0, 0],
            0xE0..0xEF => [leading, next!(iter), next!(iter), 0],
            0xF0..0xF7 => [leading, next!(iter), next!(iter), next!(iter)],

            // Unreachable for valid utf8 (good case for an attribute)
            _ => return None
        };
        unsafe {
            Some(Utf8Char::from_raw(buf))
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
