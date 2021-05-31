// Vicfred
// https://codeforces.com/contest/1511/problem/C
// data structures
use std::io::stdin;

fn main() {
    let mut line = String::new();
    stdin().read_line(&mut line).unwrap();

    let words: Vec<i64> = line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    let n = words[0];
    let q = words[1];

    let mut line = String::new();
    stdin().read_line(&mut line).unwrap();

    let a: Vec<i64> = line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    let mut line = String::new();
    stdin().read_line(&mut line).unwrap();

    let t: Vec<i64> = line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    let mut deck = [0; 51]; // map color => position
    for idx in 0 .. n {
        if deck[a[idx as usize] as usize] == 0 {
            deck[a[idx as usize] as usize] = idx + 1;
        }
    }

    for color in t {
        print!("{} ", deck[color as usize]);
        for idx in 1 .. 51 {
            if deck[idx as usize] < deck[color as usize] {
                deck[idx as usize] += 1;
            }
        }
        deck[color as usize] = 1;
    }
    println!("");
}

