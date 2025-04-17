// vicfred
// https://atcoder.jp/contests/abc160/tasks/abc160_a
// implementation
use std::io;

fn main() {
    let mut s = String::new();

    io::stdin()
        .read_line(&mut s)
        .unwrap();

    let s = s.trim();

    let s: Vec<char> = s.chars().collect();

    if &s[2] == &s[3] && &s[4] == &s[5] {
        println!("Yes");
    } else {
        println!("No");
    }

}

