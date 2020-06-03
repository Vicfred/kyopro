// https://codeforces.com/problemset/problem/472/A
// simple math
use std::io;

fn main() {
    let mut n = String::new();

    io::stdin()
        .read_line(&mut n)
        .unwrap();

    let n: i64 = n.trim().parse().unwrap();

    println!("{} {}", n%2+8, n-(n%2+8));
}
