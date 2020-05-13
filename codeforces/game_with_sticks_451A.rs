// https://codeforces.com/problemset/problem/451/A
// greedy
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

    let minima = std::cmp::min(n,m);
    
    if minima%2 == 0 {
        println!("Malvika");
    } else {
        println!("Akshat");
    }
}

