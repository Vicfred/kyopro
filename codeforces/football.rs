// https://codeforces.com/problemset/problem/96/A
use std::io;

fn main() {
    let mut line = String::new();

    io::stdin().read_line(&mut line).unwrap();

    if line.contains("1111111") || line.contains("0000000") {
        println!("YES");
    } else {
        println!("NO");
    }
}
