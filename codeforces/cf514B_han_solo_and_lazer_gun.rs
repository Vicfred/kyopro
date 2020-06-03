// https://codeforces.com/problemset/problem/514/B
// math, implementation
use std::io;
use std::collections::HashSet;

#[derive(Eq,PartialEq,Hash)]
struct Point {
    x: i64,
    y: i64,
}

fn gcd(a: i64, b: i64) -> i64 {
    if b == 0 {
        return a;
    } else {
        return gcd(b,a%b);
    }
}

fn main() {
    let mut line = String::new();

    io::stdin()
        .read_line(&mut line)
        .unwrap();

    let words: Vec<i64> =
        line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    let n = words[0] as usize;
    let x = words[1];
    let y = words[2];

    let mut storm_troopers = Vec::<Vec<i64>>::new();

    for _ in 0..n {
        let mut line = String::new();

        io::stdin()
            .read_line(&mut line)
            .unwrap();

        let st: Vec<i64> =
            line
            .split_whitespace()
            .map(|x| x.parse().unwrap())
            .collect();

        storm_troopers.push(st);
    }

    let mut slopes = HashSet::<Point>::new();

    for st in &storm_troopers {
        let mut dx = x-st[0];
        let mut dy = y-st[1];
        let factor = gcd(dx,dy);
        dx /= factor;
        dy /= factor;
        if dx <= 0 {
            dx *= -1;
            dy *= -1;
        }
        slopes.insert(Point{x: dx,y: dy});
    }
    println!("{}", slopes.len());

}

