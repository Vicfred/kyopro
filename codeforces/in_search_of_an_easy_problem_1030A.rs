// https://codeforces.com/problemset/problem/1030/A
use std::io;

fn main() {
    io::stdin()
        .read_line(&mut String::new())
        .unwrap();

    let mut line = String::new();

    io::stdin()
        .read_line(&mut line)
        .unwrap();

    let words: Vec<i64> =
        line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .filter(|x| x != &0)
        .collect();

    if words.len() > 0 {
        println!("HARD");
    } else {
        println!("EASY");
    }

}

