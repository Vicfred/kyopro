// https://codeforces.com/problemset/problem/208/A
// basic string manipulation
use std::io;

fn main() {
    let mut song = String::new();

    io::stdin()
        .read_line(&mut song)
        .unwrap();

    let song = song.trim();

    let words: Vec<&str> = 
        song
        .split("WUB")
        .filter(|x| x.to_string() != "")
        .collect();

    for word in words {
        print!("{} ", word)
    } println!();
}

