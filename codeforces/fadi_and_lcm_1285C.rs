// Vicfred
// https://codeforces.com/problemset/problem/1285/C
// math
use std::io;

fn gcd(a: i64, b: i64) -> i64 {
    if b == 0 {
        a
    } else {
        gcd(b,a%b)
    }
}

fn lcm(a: i64, b: i64) -> i64 {
    (a*b)/gcd(a,b)
}

fn main() {
    let mut n = String::new();

    io::stdin()
        .read_line(&mut n)
        .unwrap();

    let n: i64 = n.trim().parse().unwrap();

    let mut maxima = -1;

    let limit = f64::sqrt(n as f64) as i64;

    for d in 1..=limit {
        if n%d == 0 {
            if lcm(d,n/d) == n {
                maxima = std::cmp::max(maxima,d);
            }
        }
    }

    println!("{} {}", maxima, n/maxima);
}

