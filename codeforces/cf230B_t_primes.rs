// https://codeforces.com/problemset/problem/230/B
// Eratosthenes sieve, binary search
use std::io;

fn is_square(x: f64) -> bool {
    let sr: f64 = x.sqrt();

    (sr - sr.floor()) == 0.0
}

fn primes_lt(bound: usize) -> Vec<usize> {
    let mut primes: Vec<bool> = (0..bound + 1).map(|num| num == 2 || num & 1 != 0).collect();
    let mut num = 3usize;
    while num * num <= bound {        
        let mut j = num * num;
        while j <= bound {
            primes[j] = false;
            j += num;
        }
        num += 2;
    }
    primes.into_iter().enumerate().skip(2).filter_map(|(i, p)| if p {Some(i)} else {None}).collect::<Vec<usize>>()
}

fn main() {
    let mut n = String::new();

    io::stdin()
        .read_line(&mut n)
        .unwrap();

    let _n: i64 = n.trim().parse().unwrap();

    let mut line = String::new();

    io::stdin()
        .read_line(&mut line)
        .unwrap();

    let words: Vec<i64> =
        line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    let primes = primes_lt(1_000_001);

    for x in words {
        if x == 1 || !is_square(x as f64) {
            println!("NO");
            continue;
        }

        let square = (x as f64).sqrt() as usize;
        match primes.binary_search(&square) {
            Ok(_) => println!("YES"),
            _ => println!("NO")
        }
    }
}

