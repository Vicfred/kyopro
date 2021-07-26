// Vicfred
// https://codeforces.com/contest/1509/problem/A
// greedy
use std::io::stdin;

fn main() {
    let mut line = String::new();
    stdin().read_line(&mut line).unwrap();
    let t: i64 = line.trim().parse().unwrap();

for _ in 0 .. t {
    let mut line = String::new();
    stdin().read_line(&mut line).unwrap();
    let _n: i64 = line.trim().parse().unwrap();

    let mut line = String::new();
        stdin().read_line(&mut line).unwrap();
    let mut a: Vec<i64> = line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    a.sort_by(|x, y| (x%2).cmp(&(y%2)));

    for item in a {
        print!("{} ", item);
    }
    println!();

}
}

