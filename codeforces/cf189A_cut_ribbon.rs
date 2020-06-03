// https://codeforces.com/problemset/problem/189/A
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
    let a = words[1];
    let b = words[2];
    let c = words[3];

    let mut maxima = -1;
    for i in 0..4001 {
        for j in 0..4001 {
            let m = n - a*i - b*j;
            if m >= 0 && m%c == 0 {
                maxima = std::cmp::max(maxima, i+j+m/c);
            }
        }
    }

    println!("{}", maxima);
}
