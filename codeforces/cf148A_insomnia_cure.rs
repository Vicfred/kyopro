// https://codeforces.com/problemset/problem/148/A
// implementation, simulation, simple math
use std::io;

fn main() {
    let mut k = String::new();

    io::stdin()
        .read_line(&mut k)
        .unwrap();

    let k: i64 = k.trim().parse().unwrap();

    let mut l = String::new();

    io::stdin()
        .read_line(&mut l)
        .unwrap();

    let l: i64 = l.trim().parse().unwrap();

    let mut m = String::new();

    io::stdin()
        .read_line(&mut m)
        .unwrap();

    let m: i64 = m.trim().parse().unwrap();

    let mut n = String::new();

    io::stdin()
        .read_line(&mut n)
        .unwrap();

    let n: i64 = n.trim().parse().unwrap();

    let mut d = String::new();

    io::stdin()
        .read_line(&mut d)
        .unwrap();

    let d: i64 = d.trim().parse().unwrap();

    let mut dragons = 0;

    for idx in 1..d+1 {
        if idx % k == 0
            || idx % l == 0
            || idx % m == 0
            || idx % n == 0 {
            dragons += 1;
        }
    }

    println!("{}", dragons);
}

