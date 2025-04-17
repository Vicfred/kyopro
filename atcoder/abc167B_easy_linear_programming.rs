// vicfred
// https://atcoder.jp/contests/abc167/tasks/abc167_b
// sorting, greedy
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

    let mut k = words[3];

    let mut taken = 0;
    let mut idx = 0;

    while k > 0 {
        if idx == 0 {
            taken += std::cmp::min(words[idx],k);
        }
        if idx == 2 {
            taken -= k;
        }
        k -= words[idx];
        idx += 1;
    }

    println!("{}", taken);
}

