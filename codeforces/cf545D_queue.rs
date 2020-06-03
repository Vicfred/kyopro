// https://codeforces.com/problemset/problem/545/D
// greedy
use std::io;

fn main() {
    let mut n = String::new();

    io::stdin()
        .read_line(&mut n)
        .unwrap();

    let n: i64 = n.trim().parse().unwrap();

    let mut line = String::new();

    io::stdin()
        .read_line(&mut line)
        .unwrap();

    let mut t: Vec<i64> =
        line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    t.sort_by(|a,b| b.partial_cmp(a).unwrap());

    let mut ans: usize = 0;
    let mut time = 0;

    while !t.is_empty() {
        let client = t.pop().unwrap();
        if time <= client {
            ans += 1;
            time += client;
        }
    }

    println!("{}", ans);
}

