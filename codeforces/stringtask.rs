// https://codeforces.com/problemset/problem/118/A
use std::io;

fn main() {
    let mut input = String::new();

    io::stdin().read_line(&mut input).expect("");

    let first_step: String = input
        .to_ascii_lowercase()
        .chars()
        .map(|s| match s {
            'a' => ' ',
            'o' => ' ',
            'y' => ' ',
            'e' => ' ',
            'u' => ' ',
            'i' => ' ',
            x => x,
        })
        .collect();

    let first_step: String = first_step.split_whitespace().collect();

    for item in first_step.chars() {
        print!(".");
        print!("{}", item);
    }
    println!("");
}
