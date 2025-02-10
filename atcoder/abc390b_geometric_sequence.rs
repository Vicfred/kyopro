// Vicfred
// https://atcoder.jp/contests/abc390/tasks/abc390_b
// math, implementation
use std::io;

fn main() {
    let mut line1 = String::new();

    io::stdin().read_line(&mut line1).unwrap();

    let N : i64 = line1.trim().parse().unwrap();

    let mut line2 = String::new();

    io::stdin().read_line(&mut line2).unwrap();

    let mut A : Vec<i64> =
        line2
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    let mut valid : bool = true;
    for i in 0..(N-2) as usize {
        if A[i] * A[i + 2] != A[i + 1] * A[i + 1] {
            valid = false;
            break;
        }
    }
    if valid {
        println!("Yes");
    }
    else {
        println!("No");
    }
}
