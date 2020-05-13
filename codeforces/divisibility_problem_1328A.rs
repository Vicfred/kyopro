// https://codeforces.com/problemset/problem/1328/A
// simple math
use std::io;

fn main() {
    let mut t = String::new();

    io::stdin()
        .read_line(&mut t)
        .unwrap();

    let t: i64 = t.trim().parse().unwrap();

for _ in 0..t {
    let mut line = String::new();

    io::stdin()
        .read_line(&mut line)
        .unwrap();

    let words: Vec<i64> =
        line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    let a = words[0];
    let b = words[1];

    if a%b == 0 {
        println!("0");
    } else {
        println!("{}", b-a%b);
    }
}
}
