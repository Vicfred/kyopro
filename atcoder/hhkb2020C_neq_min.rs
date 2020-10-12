// unihernandez22
// https://atcoder.jp/contests/hhkb2020/tasks/hhkb2020_c
// data structures

use std::io::stdin;
use std::collections::BTreeSet;

fn main() {
    let mut line = String::new();
    stdin().read_line(&mut line).unwrap();
    let n: i64 = line.trim().parse().unwrap();

    line = String::new();
    stdin().read_line(&mut line).unwrap();
    let p: Vec<i64> = line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    let mut bts = BTreeSet::new();
    
    for i in 0 .. n+1 {
        bts.insert(i);
    }

    for i in &p {
        bts.remove(i);
        println!("{}", bts.iter().next().unwrap());
    }
}
