// https://codeforces.com/problemset/problem/698/A
// greedy
use std::io;

fn main() {
    let mut n = String::new();

    io::stdin()
        .read_line(&mut n)
        .unwrap();

    let _n: i64 = n.trim().parse().unwrap();

    let mut line = String::new();

    io::stdin()
        .read_line(&mut line)
        .unwrap();

    let a: Vec<i64> =
        line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    let mut last = 0;
    let mut ans = 0;

    for day in a {
        let available = day&(!last);
        if available == 0 {
            last = 0;
            ans += 1;
        } else if available != 3 {
            last = available;
        } else if last != 0 {
            last = !last;
        }
    }

    println!("{}", ans);
}
