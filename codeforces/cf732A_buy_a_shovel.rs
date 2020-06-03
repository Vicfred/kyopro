// https://codeforces.com/problemset/problem/732/A
// math
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

    let k = words[0];
    let r = words[1];

    for i in 1..=9 {
        if i*k%10 == r || i*k%10 == 0 {
            println!("{}", i);
            break;
        }
    }
}

