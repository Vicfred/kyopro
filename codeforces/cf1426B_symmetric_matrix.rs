// Vicfred & unihernandez22
// https://codeforces.com/contest/1426/problem/B
// greedy

use std::io::stdin;

fn readvec() -> Vec<i64> {
    let mut line = String::new();
    stdin().read_line(&mut line).unwrap();
    let words: Vec<i64> = line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();
    return words;
}

fn main() {
    let mut t = String::new();
    stdin().read_line(&mut t).unwrap();
    let t: i64 = t.trim().parse().unwrap();

    for _ in 0 .. t {
        let line = readvec();
        let n = line[0];
        let m = line[1];

        let mut found = false;
        for _ in 0 .. n {
            let line = readvec();
            let b = line[1];
            let line = readvec();
            let c = line[0];

            if b == c {
                found = true;
            }
        }

        if m % 2 == 1 {
            found = false;
        }

        if found {
            println!("YES");
        } else {
            println!("NO");
        }
    }
}
