// https://codeforces.com/problemset/problem/492/B
// binary search
use std::io;

fn check(lanterns: &Vec<i64>, d: f64, l: i64) -> bool {
    let mut current = 0;
    if (lanterns[0] as f64) > d {
        return false;
    }

    for lantern in lanterns {
        let distance: f64 = f64::abs((current-*lantern) as f64);
        if distance/2.0 > d {
            return false;
        }
        current = *lantern;
    }

    let distance: f64 = f64::abs((current-l) as f64);
    if distance > d {
        return false;
    }

    return true;
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

    let _n = words[0];
    let l = words[1];

    let mut line = String::new();

    io::stdin()
        .read_line(&mut line)
        .unwrap();

    let mut a: Vec<i64> =
        line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    a.sort();

    let mut maxima = l as f64;
    let mut minima = 0.0;
    let mut current = f64::abs(maxima+minima)/2.0;

    for _ in 0..10000 {
        current = f64::abs(maxima+minima)/2.0;
        let result = check(&a, current, l);
        if result {
            maxima = current;
        } else {
            minima = current;
        }
    }

    println!("{:.9}", current);
}
