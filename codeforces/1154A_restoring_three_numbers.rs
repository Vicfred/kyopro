// unihernandez22
// https://codeforces.com/problemset/problem/1154/A
// math

use std::io::stdin;

fn main() {
    let mut s = String::new();
    stdin().read_line(&mut s).unwrap();
    let mut words: Vec<i32> = s
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    words.sort();

    println!("{} {} {}", words[3]-words[0], words[3]-words[1], words[3]-words[2])
}
