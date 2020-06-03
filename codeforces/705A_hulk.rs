// https://codeforces.com/problemset/problem/705/A
// basic string manipulation
use std::io;

fn main() {
    let mut n = String::new();

    io::stdin()
        .read_line(&mut n)
        .unwrap();

    let n: i64 = n.trim().parse().unwrap();

    let mut phrase = String::from("I hate");

    let feelings = [" that I love", " that I hate"];
    if n > 1 {
        for idx in 0..n-1 {
            phrase.push_str(feelings[((idx as i64)%2) as usize]);
        }
    }

    phrase.push_str(" it");
    println!("{}", phrase);
}

