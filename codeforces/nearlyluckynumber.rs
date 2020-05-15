//https://codeforces.com/problemset/problem/110/A
use std::io;

fn main() {
    let mut n = String::new();

    io::stdin()
        .read_line(&mut n)
        .unwrap();

    let mut lucky = 0;

    for ch in n.chars() {
        if ch == '4' || ch == '7' {
            lucky += 1;
        }
    }

    if lucky == 4 || lucky == 7 {
        println!("YES");
    } else {
        println!("NO");
    }
}

