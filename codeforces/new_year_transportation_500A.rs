// unihernandez22
// https://codeforces.com/contest/500/problem/A
// implementation

use std::io::stdin;

fn main() {
    let mut line = String::new();
    stdin().read_line(&mut line).unwrap();

    let words: Vec<i64> = line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    let t = words[1];
    
    line = String::new();
    stdin().read_line(&mut line).unwrap();

    let a: Vec<i64> = line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();
    
    let mut i = 0;
    while i < t {
        if i+1 == t {
            println!("YES");
            return;
        }
        i += a[i as usize];
    }
    println!("NO");
}
