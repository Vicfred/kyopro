// https://codeforces.com/problemset/problem/492/B
// greedy, sorting
use std::io;

fn check(lanterns: &Vec<i64>, l: i64) -> f64 {
    let mut current = 0;
    let mut maxima: f64 = f64::abs(lanterns[0] as f64);

    for lantern in lanterns {
        let distance: f64 = f64::abs((current-*lantern) as f64);
        if distance/2.0 > maxima {
            maxima = distance/2.0;
        }
        current = *lantern;
    }

    let distance: f64 = f64::abs((current-l) as f64);
    if distance > maxima {
        maxima = distance;
    }

    return maxima;
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

    println!("{}", check(&a, l));
}
