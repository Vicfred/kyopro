// uninhm
// https://codeforces.com/contest/1401/problem/C
// math

use std::io::stdin;

fn main() {
    let mut t = String::new();
    stdin().read_line(&mut t).unwrap();
    let t: i64 = t.trim().parse().unwrap();

    for _ in 0 .. t {
        let mut n = String::new();
        stdin().read_line(&mut n).unwrap();
        let n: i64 = n.trim().parse().unwrap();

        let mut line = String::new();
        stdin().read_line(&mut line).unwrap();

        let a: Vec<i64> = line
            .split_whitespace()
            .map(|x| x.parse().unwrap())
            .collect();

        let mut b = a.clone();

        b.sort();

        let m = b[0];

        let mut flag = true;
        for i in 0 .. n as usize {
            if a[i] != b[i] && a[i] % m != 0 {
                flag = false;
                break;
            }
        }
        println!("{}",
            if flag {
                "YES"
            } else {
                "NO"
            }
        );
    }
}
