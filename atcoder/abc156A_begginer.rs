// uninhm
// https://atcoder.jp/contests/abc156/tasks/abc156_a
// math

use std::io::stdin;

fn main() {
    let mut line = String::new();
    stdin().read_line(&mut line).unwrap();
    
    let words: Vec<i64> = line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    let n = words[0];
    let r = words[1];

    if n >= 10 {
        println!("{}", r);
    } else {
        println!("{}", r + 100 * (10 - n))
    }
}
