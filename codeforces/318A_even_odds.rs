// https://codeforces.com/problemset/problem/318/A
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
    let k = words[1];

    if k <= (n+1)/2 {
        println!("{}", 2*k-1);
    } else {
        println!("{}", 2*(k-(n+1)/2));
    }
}
