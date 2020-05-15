// https://codeforces.com/problemset/problem/50/A
use std::io;

fn main() {
    let mut input = String::new();

    io::stdin().read_line(&mut input).unwrap();

    let words: Vec<i32> = input
        .split_whitespace()
        .map(|s| s.parse().unwrap())
        .collect();

    let n = words[0];
    let m = words[1];

    println!("{}", n * m / 2 as i32);
}
