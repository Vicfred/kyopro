// https://codeforces.com/problemset/problem/581/A
// math
use std::io;

fn main() {
    let mut line = String::new();

    io::stdin()
        .read_line(&mut line)
        .unwrap();
    
    let words: Vec<i64> =
        line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    let a = words[0];
    let b = words[1];

    println!("{} {}", std::cmp::min(a,b), i64::abs((a-b)/2));
}

