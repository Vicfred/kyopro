// https://codeforces.com/problemset/problem/479/A
use std::io;

fn main() {
    let mut a = String::new();
    let mut b = String::new();
    let mut c = String::new();

    io::stdin().read_line(&mut a).unwrap();

    io::stdin().read_line(&mut b).unwrap();

    io::stdin().read_line(&mut c).unwrap();

    let a: i64 = a.trim().parse().unwrap();
    let b: i64 = b.trim().parse().unwrap();
    let c: i64 = c.trim().parse().unwrap();

    println!(
        "{}",
        [
            (a + b) * c,
            a * b + c,
            a + b * c,
            a + b + c,
            a * b * c,
            a * (b + c)
        ]
        .iter()
        .max()
        .unwrap()
    );
}
