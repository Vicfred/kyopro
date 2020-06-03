// https://codeforces.com/problemset/problem/25/A
// implementation, simulation
use std::io;

fn main() {
    io::stdin().read_line(&mut String::new()).unwrap();

    let mut line = String::new();

    io::stdin().read_line(&mut line).unwrap();

    let words: Vec<i64> = line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    let guess: Vec<i64> = words.
        clone()
        .into_iter()
        .filter(|x| x % 2 == 0)
        .collect();

    let mut answer = 1;

    let mut evenness = 0;

    if guess.len() > 1 {
        evenness = 1;
    }

    for (idx, item) in words.into_iter().enumerate() {
        if item % 2 == evenness {
            answer = idx;
        }
    }

    println!("{}", answer + 1);
}
