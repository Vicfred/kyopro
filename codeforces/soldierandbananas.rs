// https://codeforces.com/problemset/problem/546/A
use std::io;

fn main() {
    let mut input = String::new();

    io::stdin().read_line(&mut input).unwrap();

    let words: Vec<i64> = input
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    let k = words[0];
    let n = words[1];
    let w = words[2];

    let mut total = w * (w + 1) / 2 * k;

    let borrow = total - n;

    let answer = std::cmp::max(0, borrow);

    println!("{}", answer);
}
