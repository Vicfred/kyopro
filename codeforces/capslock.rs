// https://codeforces.com/problemset/problem/131/A
use std::io;

fn main() {
    let mut word = String::new();

    io::stdin()
        .read_line(&mut word)
        .unwrap();

    let mut uppercase = 0;

    for ch in word.chars() {
        if ch.is_uppercase() {
            uppercase += 1;
        }
    }

    let word = word.trim();
    let first = word.chars().next().unwrap();

    if uppercase == word.len() || (uppercase == word.len() - 1 && first.is_lowercase() ) {
        for ch in word.chars() {
            if ch.is_uppercase() {
                print!("{}",ch.to_lowercase());
            } else {
                print!("{}",ch.to_uppercase());
            }
        }
        println!();
    } else {
        println!("{}", word);
    }
}
