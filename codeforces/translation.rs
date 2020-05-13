// https://codeforces.com/problemset/problem/41/A
use std::io;

fn main() {
    let mut s = String::new();

    io::stdin()
        .read_line(&mut s)
        .unwrap();

    let s: String = s.trim().chars().rev().collect();

    let mut t = String::new();

    io::stdin()
        .read_line(&mut t)
        .unwrap();

    let t = t.trim();

    if s == t {
        println!("YES");
    } else {
        println!("NO");
    }

}

