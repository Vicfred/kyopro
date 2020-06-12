// unihernandez22
// https://atcoder.jp/contests/abc153/tasks/abc153_b
// greedy

use std::io::stdin;

fn main() {
    let mut s = String::new();
    stdin().read_line(&mut s).unwrap();

    let words: Vec<i64> = s
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    let h = words[0];

    s = String::new();
    stdin().read_line(&mut s).unwrap();

    let a: Vec<i64> = s
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    let mut max_attack: i64 = 0;

    for i in a {
        max_attack += i;
    }

    if max_attack >= h {
        println!("Yes");
    } else {
        println!("No");
    }
}
