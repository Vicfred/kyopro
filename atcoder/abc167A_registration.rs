// Vicfred
// https://atcoder.jp/contests/abc167/tasks/abc167_a
// implementation
use std::io;

fn main() {
    let mut s = String::new();

    io::stdin()
        .read_line(&mut s)
        .unwrap();

    let s = s.trim();

    let mut t = String::new();

    io::stdin()
        .read_line(&mut t)
        .unwrap();

    let t = t.trim();

    if &s[0..] == &t[0..t.len()-1] {
        println!("Yes");
    } else {
        println!("No");
    }
}
