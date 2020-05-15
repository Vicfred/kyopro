// https://codeforces.com/problemset/problem/133/A
use std::io;

fn main() {
    let mut p = String::new();

    io::stdin().read_line(&mut p).unwrap();

    if p.contains("H") || p.contains("Q") || p.contains("9") {
        println!("YES");
    } else {
        println!("NO");
    }
}
