// https://codeforces.com/problemset/problem/339/B
// modular arithmetic, implementation
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

    let mut line = String::new();

    io::stdin()
        .read_line(&mut line)
        .unwrap();

    let a: Vec<i64> =
        line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    let mut last = 1;
    let mut answer = 0;

    for house in a {
        answer += (n+house-last)%n;
        last = house;
    }

    println!("{}", answer);
}

