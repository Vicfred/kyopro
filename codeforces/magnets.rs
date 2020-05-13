// https://codeforces.com/problemset/problem/344/A
use std::io;

fn main() {
    let mut n = String::new();

    io::stdin()
        .read_line(&mut n)
        .unwrap();

    let n = n.trim().parse().unwrap();

    let mut last = String::from("");

    let mut count = 0;

    for _ in 0..n {
        let mut magnet = String::new();

        io::stdin()
            .read_line(&mut magnet)
            .unwrap();

        magnet = magnet.trim().to_string();

        if last == "" {
            count += 1;
        } else if &last[1..2] == &magnet[0..1] {
            count += 1
        }

        last = magnet;
    }

    println!("{}", count);
}

