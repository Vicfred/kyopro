// https://codeforces.com/problemset/problem/59/A
use std::io;

fn main() {
    let mut s = String::new();

    io::stdin().read_line(&mut s).unwrap();

    let s = s.trim();

    let mut upper = 0;
    let mut lower = 0;

    for ch in s.chars() {
        if ch.is_lowercase() {
            lower += 1;
        } else {
            upper += 1;
        }
    }
    if upper > lower {
        println!("{}", s.to_uppercase());
    } else {
        println!("{}", s.to_lowercase());
    }
}
