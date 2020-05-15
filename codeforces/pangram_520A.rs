// https://codeforces.com/problemset/problem/520/A
// basic string manipulation, set
use std::io;
use std::collections::HashSet;

fn main() {
    io::stdin()
        .read_line(&mut String::new())
        .unwrap();

    let mut line = String::new();

    io::stdin()
        .read_line(&mut line)
        .unwrap();

    let mut line: String = line
        .trim()
        .to_string();

    line.make_ascii_lowercase();

    let mut letters = HashSet::new();

    for ch in line.chars() {
        letters.insert(ch);
    }

    let alphabet = "abcdefghijklmnopqrstuvwxyz";

    let mut flag = true;

    for ch in alphabet.chars() {
        match letters.get(&ch) {
            Some(_) => continue,
            None => {
                flag = false;
                break;
            },
        }
    }

    if flag {
        println!("YES");
    } else  {
        println!("NO");
    }
}
