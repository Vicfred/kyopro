// https://codeforces.com/contest/706/problem/B
// binary search
use std::io;

fn main() {
    let mut n = String::new();

    io::stdin()
        .read_line(&mut n)
        .unwrap();

    let _n: i64 = n.trim().parse().unwrap();

    let mut line = String::new();

    io::stdin()
        .read_line(&mut line)
        .unwrap();

    let mut x: Vec<i64> =
        line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    x.sort();

    let mut q = String::new();

    io::stdin()
        .read_line(&mut q)
        .unwrap();

    let q: i64 = q.trim().parse().unwrap();

    for _ in 0..q {
        let mut m = String::new();

        io::stdin()
            .read_line(&mut m)
            .unwrap();

        let m: i64 = m.trim().parse().unwrap();

        let mut left: i64 = -1;
        let mut right: i64 = x.len() as i64;
        while (right-left) > 1 {
            let middle = (left+right)/2;
            if x[middle as usize] <= m {
                left = middle;
            } else {
                right = middle;
            }
        }
        println!("{}", right);
    }
}

