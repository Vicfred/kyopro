// https://codeforces.com/problemset/problem/270/A
// simple math
use std::io;

fn main() {
    let mut t = String::new();

    io::stdin()
        .read_line(&mut t)
        .unwrap();

    let t: i64 = t.trim().parse().unwrap();

for _ in 0..t {
    let mut a = String::new();

    io::stdin()
        .read_line(&mut a)
        .unwrap();

    let a: i64 = a.trim().parse().unwrap();

    if 360%(180-a) == 0 {
        println!("YES");
    } else {
        println!("NO");
    }
}
}

