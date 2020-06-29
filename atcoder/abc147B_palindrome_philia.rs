// Vicfred
// https://atcoder.jp/contests/abc147/tasks/abc147_b
// string manipulation
use std::io;

fn main() {
    let mut s = String::new();

    io::stdin()
        .read_line(&mut s)
        .unwrap();

    let s = s.trim();

    let n = s.len();
    let s: Vec<char> = s.chars().collect();

    let mut answer = 0;

    for i in 0..n as usize {
        if s[i] != s[n-i-1] {
            answer += 1;
        }
    }

    println!("{}", answer/2);

}


