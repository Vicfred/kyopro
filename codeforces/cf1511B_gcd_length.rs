// Vicfred
// https://codeforces.com/contest/1511/problem/B
// math, greedy
use std::io::stdin;

fn main() {
    let mut line = String::new();
    stdin().read_line(&mut line).unwrap();
    let t: i64 = line.trim().parse().unwrap();

    for _ in 0 .. t {
        let mut line = String::new();
        stdin().read_line(&mut line).unwrap();
        let words: Vec<i64> = line
            .split_whitespace()
            .map(|x| x.parse().unwrap())
            .collect();
        
        let a = words[0];
        let b = words[1];
        let c = words[2];

        print!("1");
        for _ in 0 .. a - 1 {
            print!("0");
        } 
        print!(" ");
        print!("1");
        for _ in 0 .. b - c {
            print!("1");
        }
        for _ in 0 .. c - 1 {
            print!("0");
        }
        println!();
    }
}

