// Vicfred
// https://atcoder.jp/contests/abc159/tasks/abc159_d
// math
use std::io;
use std::collections::HashMap;

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

    let a: Vec<i64> =
        line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    let mut balls = HashMap::new();

    for ball in &a {
        let counter = balls.entry(ball).or_insert(0);
        *counter += 1;
    }

    let mut ways = 0;
    for ball in balls.keys() {
        let n: i64 = balls[ball];
        ways += n*(n-1)/2;
    }

    for i in 0..n as usize {
        println!("{}", ways - balls[&a[i]] + 1);
    }
}

