// uninhm
// https://codeforces.com/problemset/problem/1195/c
// dp

use std::io::stdin;
use std::cmp::max;

fn main() {
    let mut n = String::new();
    stdin().read_line(&mut n).unwrap();
    let n: i64 = n.trim().parse().unwrap();

    let mut line = String::new();
    stdin().read_line(&mut line).unwrap();

    let a: Vec<i64> = line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();
    
    line = String::new();
    stdin().read_line(&mut line).unwrap();

    let b: Vec<i64> = line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    let mut x = 0;
    let mut y = 0;
    let mut z = 0;
    let mut tempx;
    let mut tempy;

    for i in 0..n as usize {
        tempx = x;
        tempy = y;
        x = max(y+a[i], z+a[i]);
        y = max(tempx+b[i], z+b[i]);
        z = max(tempx, tempy);
    }

    println!("{}", max(x, max(y, z)));
}
