// Vicfred
// https://codeforces.com/problemset/problem/577/A
use std::io;

fn main() {
    let mut line = String::new();

    io::stdin()
        .read_line(&mut line)
        .unwrap();

    let words: Vec<i64> =
        line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    let n = words[0];
    let x = words[1];

    let limit: i64 = f64::sqrt(x as f64) as i64;

    let mut ans = 0;

    for d in 1..=limit {
        if x%d == 0 && d <= n && x/d <= n {
            ans += 1;
        }
    }

    if x != 1 {
        ans *= 2;
    }

    if limit*limit == x && x != 1 && ans > 0 {
        ans -= 1;
    }

    println!("{}", ans);
}

