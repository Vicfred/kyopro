// unihernandez22
// https://codeforces.com/problemset/problem/344/A

use std::io::stdin;

fn main() {
    let mut n = String::new();
    stdin().read_line(&mut n).unwrap();
    let mut n: i64 = n.trim().parse().unwrap();

    let mut total = 0;
    let mut last = String::new();

    while n > 0 {
        let mut x = String::new();
        stdin().read_line(&mut x).unwrap();
        let x = x.trim().to_string();
        if last != x {
            total += 1;
        }

        last = x;
        n -= 1;
    }

    println!("{}", if total > 0 { total } else { 1 });
}
