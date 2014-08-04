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
