// https://codeforces.com/problemset/problem/580/A
use std::io;

fn main() {
    io::stdin().read_line(&mut String::new()).unwrap();

    let mut line = String::new();

    io::stdin().read_line(&mut line).unwrap();

    let words: Vec<i64> = line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    let mut maxima = 1;

    let mut current = 1;

    for (i, item) in words.iter().enumerate() {
        if i + 1 >= words.len() {
            break;
        }
        if words[i + 1] >= *item {
            current += 1;
            maxima = std::cmp::max(maxima, current);
        } else {
            current = 1;
        }
    }
    println!("{}", maxima);
}
