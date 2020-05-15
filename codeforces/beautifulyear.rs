// https://codeforces.com/problemset/problem/271/A
use std::collections::HashSet;
use std::io;

fn main() {
    let mut year = String::new();

    io::stdin().read_line(&mut year).unwrap();

    let mut year: i64 = year.trim().parse().unwrap();

    loop {
        year += 1;

        let name = year.to_string();
        let size = name.len();

        let mut characters = HashSet::new();

        for ch in name.chars() {
            characters.insert(ch);
        }

        if characters.len() == size {
            println!("{}", name);
            break;
        }
    }
}
