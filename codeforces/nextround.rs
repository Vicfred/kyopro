// https://codeforces.com/problemset/problem/158/A
use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input).expect("error");
    let words: Vec<usize> = input
        .split_whitespace()
        .map(|s| s.parse().unwrap())
        .collect();
    let k: usize = words[1];

    let mut input = String::new();
    io::stdin().read_line(&mut input).expect("error");
    let mut words: Vec<i64> = input
        .split_whitespace()
        .map(|s| s.parse().unwrap())
        .collect();

    let minima = words[k as usize - 1];

    let mut count = 0;

    for item in words {
        if item >= minima && item > 0 {
            count += 1;
        }
    }

    println!("{}", count);
}
