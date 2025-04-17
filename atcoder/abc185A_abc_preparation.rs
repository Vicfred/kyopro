// vicfred
// https://atcoder.jp/contests/abc185/tasks/abc185_a
// implementation
use std::io;
use std::cmp::min;

fn main() {
    let mut line = String::new();

    io::stdin()
        .read_line(&mut line)
        .unwrap();

    let a: Vec<i64> =
        line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    let ans = min(min(a[0], a[1]), min(a[2], a[3]));

    println!("{}", ans);
}

