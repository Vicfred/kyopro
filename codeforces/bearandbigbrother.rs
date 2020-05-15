// https://codeforces.com/problemset/problem/791/A
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

    let mut a = words[0];
    let mut b = words[1];

    let mut years = 0;

    loop {
        if a > b {
            break;
        }
        a *= 3;
        b *= 2;
        years += 1;
    }

    println!("{}", years);
}

