// https://codeforces.com/problemset/problem/58/A
use std::io;

fn main() {
    let mut s = String::new();

    io::stdin().read_line(&mut s).unwrap();

    let s = s.trim();

    let hello = "hello";

    let mut idx = 0;

    for ch in s.chars() {
        if idx >= 5 {
            break;
        }
        if ch.to_string() == &hello[idx..idx + 1] {
            idx += 1;
        }
    }

    if idx == 5 {
        println!("YES");
    } else {
        println!("NO");
    }
}
