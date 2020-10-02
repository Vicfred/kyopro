// unihernandez22
// https://codeforces.com/contest/1426/problem/A
// math

use std::io::stdin;

fn main() {
    let mut line = String::new();
    stdin().read_line(&mut line).unwrap();
    let t: i64 = line.trim().parse().unwrap();
    
    for _ in 0 .. t {
        let mut line = String::new();
        stdin().read_line(&mut line).unwrap();
        let words: Vec<i64> = line
            .split_whitespace()
            .map(|x| x.parse().unwrap())
            .collect();

        let n = words[0];
        let x = words[1];

        if n <= 2 {
            println!("{}", 1);
        } else {
            println!("{}", ((n-2+x-1)/x)+1);
        }
    }
}
