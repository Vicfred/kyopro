// vicfred && uninhm
// https://codeforces.com/contest/1426/problem/C
// greedy

use std::io::stdin;
use std::cmp::min;

fn readint() -> i64 {
    let mut line = String::new();
    stdin().read_line(&mut line).unwrap();
    return line.trim().parse().unwrap();
}

fn main() {
    let t = readint();
    
    for _ in 0 .. t {
        let n = readint();

        let mut minima = std::i64::MAX;
        let mut i = 1;
        while i * i <= n {
            minima = min(i + (n - i - 1) / i, minima);
            i += 1;
        }
        println!("{}", minima);
    }
}
