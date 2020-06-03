// https://codeforces.com/problemset/problem/460/A
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

    let n = words[0];
    let m = words[1];

    println!("{}", (n*m-1)/(m-1));
}

