// https://codeforces.com/problemset/problem/141/A
use std::io;
use std::collections::HashMap;

fn main() {
    let mut guest = String::new();
    let mut host = String::new();
    let mut letters = String::new();

    io::stdin()
        .read_line(&mut guest)
        .unwrap();

    let guest = guest.trim().to_string();

    io::stdin()
        .read_line(&mut host)
        .unwrap();

    let host = host.trim().to_string();

    io::stdin()
        .read_line(&mut letters)
        .unwrap();

    let letters = letters.trim().to_string();

    let mut original = HashMap::new();
    let mut pile = HashMap::new();

    for ch in guest.chars() {
        let counter = original.entry(ch).or_insert(0);
        *counter += 1;
    }

    for ch in host.chars() {
        let counter = original.entry(ch).or_insert(0);
        *counter += 1;
    }

    for ch in letters.chars() {
        let counter = pile.entry(ch).or_insert(0);
        *counter += 1;
    }

    if original == pile {
        println!("YES");
    } else {
        println!("NO");
    }
}
