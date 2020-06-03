// https://codeforces.com/problemset/problem/579/A
// bit manipulation
use std::io;

fn main() {
    let mut n = String::new();

    io::stdin()
        .read_line(&mut n)
        .unwrap();

    let n: i64 = n.trim().parse().unwrap();

    let mut ans = 0;

    // count how many bits n has turned on
    for bit in 0..64 {
        if (n & (1<<bit)) > 0 {
            ans += 1;
        }
    }

    println!("{}", ans);
}

