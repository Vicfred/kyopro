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

    let mut iterable = words.iter();

    let mut value = iterable.next();

    while value != None {
        let a = *value.unwrap();
        value = iterable.next();
        let b = match value {
            None => -1,
            Some(n) => *n,
        };
        if b >= a {
            current += 1;
            maxima = std::cmp::max(maxima, current);
        } else {
            current = 1;
        }
    }

    println!("{}", maxima);
}
