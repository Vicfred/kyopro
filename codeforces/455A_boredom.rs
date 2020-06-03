// https://codeforces.com/problemset/problem/455/A
// dynamic programming
use std::io;

fn main() {
    let mut n = String::new();

    io::stdin()
        .read_line(&mut n)
        .unwrap();

    let _n: i64 = n.trim().parse().unwrap();

    let mut line = String::new();

    io::stdin()
        .read_line(&mut line)
        .unwrap();

    let a: Vec<i64> =
        line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    let mut points: [i64;100501] = [0;100501];

    for item in a {
        points[item as usize] += item;
    }

    for i in (0..100000).rev() {
        points[i] = std::cmp::max(points[i+1], points[i+2]+points[i]);
    }

    println!("{}", points[0]);
}

