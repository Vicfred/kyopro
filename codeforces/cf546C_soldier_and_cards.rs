// Vicfred
// https://codeforces.com/problemset/problem/546/C
// simulation

use std::io;
use std::collections::HashSet;
use std::collections::VecDeque;

#[derive(Debug,PartialEq,Eq,PartialOrd,Ord,Hash)]
struct Pair(i64, i64);

fn main() {
    let mut n = String::new();

    io::stdin()
        .read_line(&mut n)
        .unwrap();

    let mut line = String::new();

    io::stdin()
        .read_line(&mut line)
        .unwrap();

    let mut a: VecDeque<i64> =
        line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    a.pop_front();

    let mut line = String::new();

    io::stdin()
        .read_line(&mut line)
        .unwrap();

    let mut b: VecDeque<i64> =
        line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    b.pop_front();

    let mut ans = 0;

    let mut states = HashSet::new();

    states.insert(Pair(1,2));

    while !a.is_empty() && !b.is_empty() {
        ans += 1;

        let x = a.pop_front().unwrap();
        let y = b.pop_front().unwrap();

        if x > y {
            a.push_back(y);
            a.push_back(x);
        } else {
            b.push_back(x);
            b.push_back(y);
        }

        if ans > 200 {
            println!("-1");
            return;
        }
    }

    let winner = if a.is_empty() {2} else {1};

    println!("{} {}", ans, winner);
}

