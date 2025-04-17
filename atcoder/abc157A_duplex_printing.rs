// vicfred
// https://atcoder.jp/contests/abc157/tasks/abc157_a
// implementation
use std::io;

fn main() {
    let mut n = String::new();

    io::stdin()
        .read_line(&mut n)
        .unwrap();

    let n: i64 = n.trim().parse().unwrap();
    
    println!("{}", (n+1)/2);
}

