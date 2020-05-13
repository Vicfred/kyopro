// https://codeforces.com/problemset/problem/734/A
use std::io;
use std::collections::HashMap;

fn main() {
    io::stdin()
        .read_line(&mut String::new())
        .unwrap();

    let mut s = String::new();

    io::stdin()
        .read_line(&mut s)
        .unwrap();

    let s = s.trim();

    let mut games = HashMap::new();

    games.insert('A', 0);
    games.insert('D', 0);

    for ch in s.chars() {
        let counter = games.entry(ch).or_insert(0);
        *counter += 1;
    }

    let anton = games.get(&'A').unwrap();
    let danik = games.get(&'D').unwrap();

    if anton > danik {
        println!("Anton");
    } else if anton < danik {
        println!("Danik");
    } else {
        println!("Friendship");
    }

}
