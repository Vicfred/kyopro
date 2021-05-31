// uninhm
// https://codeforces.com/problemset/problem/1335/A
// math

use std::io;

fn main() {
    let mut t = String::new();
    io::stdin().read_line(&mut t).unwrap();
    let t: i64 = t.trim().parse().unwrap();

    for _ in 0..t {
        let mut n = String::new();
        io::stdin().read_line(&mut n).unwrap();
        let n: i64 = n.trim().parse().unwrap();
        println!("{}", (n-1)/2);
    }
}
