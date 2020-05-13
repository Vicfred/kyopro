// https://codeforces.com/problemset/problem/116/A
use std::io;

fn main() {
    let mut n = String::new();

    io::stdin().read_line(&mut n).unwrap();

    let n: i64 = n.trim().parse().unwrap();

    let mut maxima = -1;
    let mut capacity = 0;

    for _ in 0..n {
        let mut line = String::new();

        io::stdin().read_line(&mut line).unwrap();

        let words: Vec<i64> = line
            .split_whitespace()
            .map(|x| x.parse().unwrap())
            .collect();

        let a = words[0];
        let b = words[1];

        capacity += b - a;
        maxima = std::cmp::max(maxima, capacity);
    }

    println!("{}", maxima);
}
