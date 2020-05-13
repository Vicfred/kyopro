// unihernandez22
// https://codeforces.com/problemset/problem/750/A
// binary search

use std::io::stdin;

fn check(num: i64, k: i64) -> bool {
    let mut time = 240 - k;
    for i in 1..num + 1 {
        time -= i * 5;
    }

    if time >= 0 {
        return true;
    }
    return false;
}

fn main() {
    let mut line = String::new();
    stdin().read_line(&mut line).unwrap();

    let words: Vec<i64> = line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    let mut min = 0;
    let mut max = words[0] + 1;

    while max - min > 1 {
        let current = (min + max) / 2;
        if check(current, words[1]) {
            min = current;
        } else {
            max = current;
        }
    }

    println!("{}", min);
}
