// https://codeforces.com/problemset/problem/337/A
use std::io;

fn main() {
    let mut line = String::new();

    io::stdin().read_line(&mut line).unwrap();

    let words: Vec<i64> = line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    let n = words[0];

    let mut line = String::new();

    io::stdin().read_line(&mut line).unwrap();

    let mut f: Vec<i64> = line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    f.sort();

    let mut minima = 999;

    let iter = f.windows(n as usize);

    for x in iter {
        minima = std::cmp::min(minima, x.last().unwrap() - x[0]);
    }

    println!("{}", minima);
}

