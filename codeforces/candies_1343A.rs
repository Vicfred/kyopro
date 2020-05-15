// https://codeforces.com/problemset/problem/1343/A
// math
use std::io;

fn main() {
    let mut t = String::new();

    io::stdin()
        .read_line(&mut t)
        .unwrap();

    let t: i64 = t.trim().parse().unwrap();
    
    for _ in 0..t {
        let mut n = String::new();

        io::stdin()
            .read_line(&mut n)
            .unwrap();

        let n: i64 = n.trim().parse().unwrap();

        for bit in 2..=31 {
            // 2^bit
            if n%((1<<bit)-1) == 0 {
                println!("{}", n/((1<<bit)-1));
                break;
            }
        }
    }
}
