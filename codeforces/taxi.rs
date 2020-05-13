// https://codeforces.com/problemset/problem/158/B
use std::collections::HashMap;
use std::io;

fn main() {
    let mut n = String::new();

    io::stdin().read_line(&mut n).unwrap();

    let mut line = String::new();

    io::stdin().read_line(&mut line).unwrap();

    let s: Vec<i64> = line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    let mut groups = HashMap::new();
    groups.insert(1, 0);
    groups.insert(2, 0);
    groups.insert(3, 0);
    groups.insert(4, 0);

    for item in &s {
        let count = groups.entry(*item).or_insert(0);
        *count += 1;
    }

    let a = std::cmp::max(groups.get(&1).unwrap() - groups.get(&3).unwrap(), 0);

    let answer = groups.get(&3).unwrap()
        + groups.get(&4).unwrap()
        + (a + 2 * groups.get(&2).unwrap() + 3) / 4;

    println!("{}", answer);
}
