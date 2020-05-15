// https://codeforces.com/problemset/problem/136/A
use std::io;

fn main() {
    let mut n = String::new();

    io::stdin()
        .read_line(&mut n)
        .unwrap();

    let n: i64 = n.trim().parse().unwrap();
    
    let mut line = String::new();

    io::stdin()
        .read_line(&mut line)
        .unwrap();

    let words: Vec<i64> =
        line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    let words: Vec<i64> =
        words.iter().map(|x| x-1).collect();

    let mut friends = [0;100];

    for i in 0..n {
        friends[words[i as usize] as usize] = i;
    }

    for i in 0..n {
        print!("{} ", friends[i as usize] + 1);
    } println!();
}
