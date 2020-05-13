// unihernandez22
// https://codeforces.com/problemset/problem/230/A
// greedy, sorting

use std::cmp::Ordering;
use std::io::stdin;

fn main() {
    let mut line = String::new();
    stdin().read_line(&mut line).unwrap();

    let words: Vec<i32> = line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    let mut s = words[0];
    let n = words[1];

    let mut dragons = Vec::<Vec<i32>>::new();

    for _ in 0..n {
        let mut line = String::new();
        stdin().read_line(&mut line).unwrap();

        let words: Vec<i32> = line
            .split_whitespace()
            .map(|x| x.parse().unwrap())
            .collect();

        let mut dragon = Vec::new();
        dragon.push(words[0]);
        dragon.push(words[1]);
        dragons.push(dragon);
    }

    dragons.sort_by(|a, b| {
        if a.get(0).unwrap() > b.get(0).unwrap() {
            return Ordering::Greater;
        } else if a.get(0).unwrap() < b.get(0).unwrap() {
            return Ordering::Less;
        } else {
            return Ordering::Equal;
        }
    });

    let mut answer = "YES";

    for i in dragons {
        if s - i.get(0).unwrap() > 0 {
            s += i.get(1).unwrap();
        } else {
            answer = "NO";
        }
    }

    println!("{}", answer);
}
