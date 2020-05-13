// https://codeforces.com/problemset/problem/1/A
use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input).expect("error");
    let words: Vec<i64> = input
        .split_whitespace()
        .map(|s| s.parse().unwrap())
        .collect();

    println!(
        "{}",
        ((words[0] + words[2] - 1) / words[2]) * ((words[1] + words[2] - 1) / words[2])
    );
}
