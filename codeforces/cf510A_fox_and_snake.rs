// https://codeforces.com/problemset/problem/510/A
// implementation
use std::io;

fn main() {
    let mut line = String::new();

    io::stdin()
        .read_line(&mut line)
        .unwrap();

    let words: Vec<i64> =
        line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    let mut n = words[0];
    let m = words[1];
    let mut direction = true;

    while n > 0 {
        if n%2 == 1 {
            for _ in 0..m {
                print!("#");
            } println!();
        } else {
            if direction {
                for _ in 0..m-1 {
                    print!(".");
                } println!("#");
                direction = !direction;
            } else {
                print!("#");
                for _ in 0..m-1 {
                    print!(".");
                } println!();
                direction = !direction;
            }
        }
        n -= 1;
    }
}
