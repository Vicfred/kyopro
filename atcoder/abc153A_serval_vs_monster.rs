// unihernandez22
// https://atcoder.jp/contests/abc153/tasks/abc153_a
// math

use std::io::stdin;

fn main() {
    let mut s = String::new();
    stdin().read_line(&mut s).unwrap();

    let words: Vec<i64> = s
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    let h = words[0];
    let a = words[1];

    println!("{}", (h + a-1) / a);
}
