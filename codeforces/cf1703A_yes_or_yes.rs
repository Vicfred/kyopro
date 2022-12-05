// Vicfred
// https://codeforces.com/contest/1703/problem/A
// implementation
use std::io;

fn main() {
    let mut t = String::new();
    io::stdin().read_line(&mut t).unwrap();

    let t: i64 = t.trim().parse().unwrap();

    for _ in 0..t {
        let mut s = String::new();
        io::stdin().read_line(&mut s).unwrap();
        if s.trim().to_lowercase() == "yes" {
            println!("YES");
        } else {
            println!("NO");
        }
    }
}
