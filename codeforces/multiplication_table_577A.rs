// Vicfred
// https://codeforces.com/problemset/problem/577/A
// brute force
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
    let x = words[1];

    let mut ans = 0;

    for d in 1..=n {
        if x%d == 0 &&  x/d <= n {
            ans += 1;
        }
    }

    println!("{}", ans);
}

