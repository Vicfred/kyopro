// https://codeforces.com/problemset/problem/71/A
use std::io;

fn main() {
    let mut input = String::new();

    io::stdin().read_line(&mut input).expect("");

    let mut n = input.trim().parse::<i32>().unwrap();

    while n > 0 {
        let mut word = String::new();
        io::stdin().read_line(&mut word).expect("");
        if word.len() > 12 {
            println!(
                "{}{}{}",
                &word[0..1],
                word.len() - 4,
                &word[word.len() - 3..word.len() - 1]
            );
        } else {
            println!("{}", &word[..word.len() - 1])
        }
        n -= 1;
    }
}
