// https://codeforces.com/problemset/problem/1325/B
// greedy, set data structure
use std::io;
use std::collections::HashSet;

fn main() {
    let mut t = String::new();

    io::stdin()
        .read_line(&mut t)
        .unwrap();

    let t: i64 = t.trim().parse().unwrap();

    for _ in 0..t {
        let mut n = String::new();

        io::stdin()
            .read_line(&mut n)
            .unwrap();

        let mut line = String::new();

        io::stdin()
            .read_line(&mut line)
            .unwrap();

        let a: HashSet<i64> =
            line
            .split_whitespace()
            .map(|x| x.parse().unwrap())
            .collect();

        println!("{}", a.len());
    }
}

