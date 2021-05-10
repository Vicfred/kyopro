// Vicfred
// https://codeforces.com/contest/1511/problem/A
// greedy

use std::io::stdin;

fn main() {
    let mut line = String::new();
    stdin().read_line(&mut line).unwrap();
    let t: i64 = line.trim().parse().unwrap();

    for _ in 0 .. t {
        let mut line = String::new();
        stdin().read_line(&mut line).unwrap();
        let _n: i64 = line.trim().parse().unwrap();

        let mut line = String::new();
        stdin().read_line(&mut line).unwrap();
        let r: Vec<i64> = line
            .split_whitespace()
            .map(|x| x.parse().unwrap())
            .collect();

        let mut ans = 0;
        for x in r {
            if x != 2 {
                ans += 1;
            }
        }

        println!("{}", ans);
    }
}

