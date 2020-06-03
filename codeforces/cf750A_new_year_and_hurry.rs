// https://codeforces.com/problemset/problem/750/A
// binary search
use std::io;

fn cumulative(n: i64) -> i64 {
    let mut sum = 0;
    for i in 1..n+1 {
        sum += i*5;
    }
    sum
}

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
    let k = words[1];

    let mut left = 0;
    let mut right = n;

    while left <= right {
        let middle = (right+left)/2;
        if (cumulative(middle)+k) <= 240 {
            left = middle+1;
        } else {
            right = middle-1;
        }
    }
    println!("{}", right);
}

