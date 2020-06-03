// https://codeforces.com/problemset/problem/228/A
// counting, set
use std::io;
use std::collections::HashSet;

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

    let mut horseshoes = HashSet::new();

    for item in words {
        horseshoes.insert(item);
    }

    println!("{}", 4-horseshoes.len());
}

