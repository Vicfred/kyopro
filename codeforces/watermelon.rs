// https://codeforces.com/problemset/problem/4/A
use std::io;

fn main() {
    let mut guess = String::new();
    io::stdin().read_line(&mut guess).unwrap();
    let w: i32 = guess.trim().parse().unwrap();
    println!("{}", if w >= 4 && w % 2 == 0 { "YES" } else { "NO" });
}
