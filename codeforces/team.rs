// https://codeforces.com/problemset/problem/231/A
use std::io;

fn main() {
    let mut n = String::new();

    io::stdin().read_line(&mut n).unwrap();

    let mut n = n.trim().parse::<i32>().unwrap();

    let mut answer = 0;

    while n > 0 {
        let mut line = String::new();

        io::stdin().read_line(&mut line).unwrap();

        let words: Vec<i64> = line
            .split_whitespace()
            .map(|s| s.parse().unwrap())
            .collect();

        let mut sum = 0;
        for item in words {
            sum += item;
        }

        if sum >= 2 {
            answer += 1;
        }

        n -= 1;
    }

    println!("{}", answer);
}
