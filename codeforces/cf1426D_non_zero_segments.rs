// Vicfred & uninhm
// https://codeforces.com/contest/1426/problem/D
// greedy

use std::io::stdin;
use std::collections::BTreeSet;

fn main() {
    let mut line = String::new();
    stdin().read_line(&mut line).unwrap();
    let n: i64 = line.trim().parse().unwrap();

    line = String::new();
    stdin().read_line(&mut line).unwrap();
    let a: Vec<i64> = line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    let mut rbt = BTreeSet::new();
    let mut prefix: i64 = 0;
    let mut ans: i64 = 0;

    rbt.insert(0);

    for x in a {
        prefix += x;
        if rbt.contains(&prefix) {
            ans += 1;
            rbt.clear();
            rbt.insert(0);
            prefix = x;
        }
        rbt.insert(prefix);
    }

    println!("{}", ans);
}
