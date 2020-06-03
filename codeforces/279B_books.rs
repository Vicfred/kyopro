// https://codeforces.com/problemset/problem/279/B
// two pointers
use std::io;

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

    let n = words[0];
    let t = words[1];

    let mut line = String::new();

    io::stdin()
        .read_line(&mut line)
        .unwrap();

    let a: Vec<i64> =
        line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    let mut prev: usize = 0;

    let mut sum = [0;100005];
    let mut maxima = 0;

    for i in 1..=n {
        sum[i as usize] = sum[(i-1) as usize] + a[(i-1) as usize];

        if sum[i as usize]-sum[prev] > t {
            prev += 1;
        }

        maxima = std::cmp::max(i-(prev as i64), maxima);
    }

    println!("{}", maxima);
}

