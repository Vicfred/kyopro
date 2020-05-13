// https://codeforces.com/problemset/problem/112/A
use std::io;

fn main() {
    let mut first = String::new();

    io::stdin().read_line(&mut first).unwrap();

    let first = first.to_ascii_lowercase();

    let mut second = String::new();

    io::stdin().read_line(&mut second).unwrap();

    let second = second.to_ascii_lowercase();

    if first < second {
        println!("-1");
    } else if first > second {
        println!("1");
    } else {
        println!("0");
    }
}
