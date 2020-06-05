// Vicfred
// https://atcoder.jp/contests/abc156/tasks/abc156_b
// simulation
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

    let mut n = words[0];
    let k = words[1];

    let mut digits = 0;

    while n > 0 {
        n /= k;
        digits += 1;
    }

    println!("{}", digits);
}

