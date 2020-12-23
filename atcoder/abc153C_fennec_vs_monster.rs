// uninhm
// https://atcoder.jp/contests/abc153/tasks/abc153_c
// greedy

use std::io::stdin;

fn main() {
    let mut s = String::new();
    stdin().read_line(&mut s).unwrap();

    let words: Vec<i64> = s
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    let n = words[0];
    let k = words[1];

    s = String::new();
    stdin().read_line(&mut s).unwrap();

    let mut h: Vec<i64> = s
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    h.sort();
    for _ in 0..k {
        h.pop();
    }

    let mut ans = 0;
    for i in h {
        ans += i;
    }

    println!("{}", ans);
}
