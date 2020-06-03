// https://codeforces.com/problemset/problem/443/A
// string parsing, counting
use std::io;
use std::collections::HashSet;

fn main() {
    let mut line = String::new();

    io::stdin()
        .read_line(&mut line)
        .unwrap();

    let line: String = line.trim().to_string();

    let line: String = 
        line
        .chars()
        .filter(|x| x != &'{' && x != &'}')
        .collect();

    let words: Vec<&str> =
        line
        .split(", ")
        .collect();

    let mut letters = HashSet::new();

    for item in &words {
        letters.insert(item);
    }

    let mut answer = letters.len();

    if words[0] == "" {
        answer -= 1
    }

    println!("{}", answer);

}

