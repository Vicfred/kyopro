// https://codeforces.com/problemset/problem/466/A
// simple math
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
    let a = words[2];
    let b = words[3];

    let sale: f64 = b as f64/m as f64;

    if sale < a as f64 {
        let mut ans = (n as f64/m as f64).floor() as i64*b;
        let minima = std::cmp::min((n%m)*a, b);
        ans += minima;
        println!("{}", ans);
    } else {
        println!("{}", n*a);
    }
}

