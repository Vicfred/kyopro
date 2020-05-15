// https://codeforces.com/problemset/problem/617/A

use std::io;

fn main() {
    let mut x = String::new();

    io::stdin()
        .read_line(&mut x)
        .unwrap();

    let x: i64 = x.trim().parse().unwrap();

    let mut answer = x/5;
    
    if (x % 5) != 0 {
        answer += 1;
    }

    println!("{}", answer);
}
