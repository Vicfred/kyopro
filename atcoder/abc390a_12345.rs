// vicfred
// https://atcoder.jp/contests/abc390/tasks/abc390_a
// implementation
use std::io;

fn main() {
    let mut line = String::new();

    io::stdin().read_line(&mut line).unwrap();

    let mut A: Vec<i64> = line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    for i in 0..4 {
        // XOR swap
        // https://en.wikipedia.org/wiki/XOR_swap_algorithm
        A[i] = A[i + 1] ^ A[i];
        A[i + 1] = A[i] ^ A[i + 1];
        A[i] = A[i + 1] ^ A[i];
        let mut valid: bool = true;
        // println!("{} {} {} {} {}", A[0], A[1], A[2], A[3], A[4]);
        for j in 0i64..5i64 {
            if A[j as usize] != j + 1 {
                valid = false;
                // println!("failed at {}: {}", j, A[j]);
            }
        }
        if valid {
            println!("Yes");
            return;
        }
        A[i] = A[i + 1] ^ A[i];
        A[i + 1] = A[i] ^ A[i + 1];
        A[i] = A[i + 1] ^ A[i];
    }
    println!("No");
}
