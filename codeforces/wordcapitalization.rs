// https://codeforces.com/problemset/problem/281/A
use std::io;

fn main() {
    let mut word = String::new();

    io::stdin().read_line(&mut word).unwrap();

    print!("{}", &word[..1].to_uppercase());
    print!("{}", &word[1..word.len()]);
}
