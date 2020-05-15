// https://codeforces.com/problemset/problem/677/A
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

    let h = words[1];

    let mut line = String::new();

    io::stdin()
        .read_line(&mut line)
        .unwrap();

    let friends: Vec<i64> =
        line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    let mut counter = 0;

    for friend in friends {
        if friend > h {
            counter += 2;
        } else {
            counter += 1;
        }
    }

    println!("{}", counter);
}

