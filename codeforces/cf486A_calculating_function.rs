// https://codeforces.com/problemset/problem/486/A
// simple math
use std::io;

fn main() {
    let mut n = String::new();

    io::stdin()
        .read_line(&mut n)
        .unwrap();

    let n: i64 = n.trim().parse().unwrap();

    if n%2 == 0 {
        println!("{}", n/2);
    } else {
        println!("{}",(n+1)/2*-1);
    }
}
