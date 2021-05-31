// uninhm
// https://codeforces.com/problemset/problem/677/A

use std::io::stdin;

fn main() {
    let mut line = String::new();
    stdin().read_line(&mut line).unwrap();

    let words: Vec<i32> = line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    let h = words[1];

    let mut line = String::new();
    stdin().read_line(&mut line).unwrap();

    let words: Vec<i32> = line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    let mut total = 0;

    for i in words {
        if i > h {
            total += 2;
        } else {
            total += 1;
        }
    }

    println!("{}", total);
}
