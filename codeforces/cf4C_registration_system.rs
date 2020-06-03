// https://codeforces.com/problemset/problem/4/C
//
use std::io;
use std::collections::HashMap;

fn main() {
    let mut n = String::new();

    io::stdin()
        .read_line(&mut n)
        .unwrap();

    let n = n.trim().parse().unwrap();

    let mut names = HashMap::new();

    for _ in 0..n {
        let mut username = String::new();

        io::stdin()
            .read_line(&mut username)
            .unwrap();

        let username = username.trim().to_string();

        let count = names.entry(username.clone()).or_insert(0);

        if *count == 0 {
            println!("OK");
        } else {
            println!("{}{}", username, count);
        }
        *count += 1;
    }
}

