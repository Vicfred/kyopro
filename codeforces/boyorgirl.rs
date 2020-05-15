// https://codeforces.com/problemset/problem/236/A
use std::collections::HashMap;
use std::io;

fn main() {
    let mut letters = HashMap::new();
    let mut username = String::new();

    io::stdin().read_line(&mut username).unwrap();

    for ch in username.chars() {
        letters.insert(ch, 1);
    }

    if letters.len() % 2 == 0 {
        println!("CHAT WITH HER!");
    } else {
        println!("IGNORE HIM!");
    }
}
