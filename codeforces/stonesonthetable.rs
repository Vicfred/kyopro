// https://codeforces.com/problemset/problem/266/A
use std::io;

fn main() {
    let mut n = String::new();

    io::stdin().read_line(&mut n).unwrap();

    let mut stones = String::new();

    io::stdin().read_line(&mut stones).unwrap();

    let mut idx: usize = 0;

    let mut answer = 0;

    while idx < stones.len() - 1 {
        if &stones[idx..idx + 1] == &stones[idx + 1..idx + 2] {
            idx += 1;
            answer += 1;
        } else {
            idx += 1;
        }
    }

    println!("{}", answer);
}
