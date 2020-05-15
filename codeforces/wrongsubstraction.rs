// https://codeforces.com/problemset/problem/977/A
use std::io;

fn decrease(n: i64) -> i64 {
    if n % 10 != 0 {
        n-1
    } else {
        n/10
    }
}

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

    let mut n = words[0];
    let k = words[1];

    for _ in 0..k {
        n = decrease(n);
    }

    println!("{}", n);
}

