// unihernandez22
// https://codeforces.com/contest/732/problem/A
// brute force

use std::io;

fn main() {
    let mut s = String::new();
    io::stdin()
        .read_line(&mut s)
        .unwrap();

    let words: Vec<i64> = s
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    for i in 1..10 {
        if i * words[0] % 10 == words[1] || i * words[0] % 10 == 0 {
            println!("{}", i);
            break;
        }
    }
}
