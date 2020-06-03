// https://codeforces.com/problemset/problem/61/A
// implementation, simulation
use std::io;

fn main() {
    let mut a = String::new();

    io::stdin()
        .read_line(&mut a)
        .unwrap();

    let a = a.trim();

    let mut b = String::new();

    io::stdin()
        .read_line(&mut b)
        .unwrap();

    let b = b.trim();

    let mut iter = b.chars();

    let mut answer = String::from("");

    for ch in a.chars() {
        if ch == iter.next().unwrap() {
            answer.push_str("0");
        } else {
            answer.push_str("1");
        }
    }

    println!("{}", answer);
}

