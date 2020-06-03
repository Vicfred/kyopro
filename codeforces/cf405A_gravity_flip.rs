// https://codeforces.com/problemset/problem/405/A
// sorting
use std::io;

fn main() {
    io::stdin()
        .read_line(&mut String::new())
        .unwrap();

    let mut line = String::new();

    io::stdin()
        .read_line(&mut line)
        .unwrap();

    let mut words: Vec<i64> =
        line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    words.sort();

    for item in words {
        print!("{} ", item)
    } println!();
}

