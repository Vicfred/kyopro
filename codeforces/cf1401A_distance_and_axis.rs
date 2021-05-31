// Vicfred
// https://codeforces.com/contest/1401/problem/A
// implementation

use std::io;

fn main() {
    let mut t = String::new();

    io::stdin()
        .read_line(&mut t)
        .unwrap();

    let t = t.trim().parse().unwrap();

    for _ in 0..t {
        let mut line = String::new();

        io::stdin()
            .read_line(&mut line)
            .unwrap();

        let words: Vec<i64> =
            line
            .split_whitespace()
            .map(|x| x.parse().unwrap())
            .collect();

        let a = words[0];
        let b = words[1];

        if b <= a {
            if a%2 == b%2 {
                println!("0");
            } else {
                println!("1");
            }
        } else {
            println!("{}", b - a);
        }
    }
}

