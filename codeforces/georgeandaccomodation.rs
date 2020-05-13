// https://codeforces.com/problemset/problem/467/A
use std::io;

fn main() {
    let mut n = String::new();

    io::stdin()
        .read_line(&mut n)
        .unwrap();

    let n: i64 = n.trim().parse().unwrap();

    let mut answer = 0;

    for _ in 0..n {
        let mut line = String::new();

        io::stdin()
            .read_line(&mut line)
            .unwrap();

        let words: Vec<i64> =
            line
            .split_whitespace()
            .map(|x| x.parse().unwrap())
            .collect();

        let p = words[0];
        let q = words[1];

        if (q - p) >= 2 {
            answer += 1;
        }
    }

    println!("{}", answer);
}

