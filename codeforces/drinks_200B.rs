// https://codeforces.com/problemset/problem/200/B
// simple math
use std::io;

fn main() {
    let mut n = String::new();

    io::stdin()
        .read_line(&mut n)
        .unwrap();

    let n: i64 = n.trim().parse().unwrap();

    let mut line = String::new();

    io::stdin()
        .read_line(&mut line)
        .unwrap();

    let words: Vec<i64> =
        line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    let mut total: f64 = 0.0;

    let factor: f64 = 1.0/(n as f64);

    for item in words {
        total += (item as f64)*0.1*factor;
    }

    println!("{}", total*10.0);
}

