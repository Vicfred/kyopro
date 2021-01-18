// uninhm
// https://codeforces.com/contest/1324/problem/D
// math, binary search

use std::io;
 
fn main() {
    let mut n = String::new();
    io::stdin().read_line(&mut n).unwrap();
    let n: i64 = n.trim().parse().unwrap();
 
    let mut a = String::new();
    io::stdin().read_line(&mut a).unwrap();
    let a: Vec<i64> = a
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();
 
    let mut b = String::new();
    io::stdin().read_line(&mut b).unwrap();
    let b: Vec<i64> = b
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();
 
    let mut c = Vec::<i64>::new();
 
    for i in 0..n as usize {
        c.push(a[i] - b[i]);
    }
 
    c.sort();
 
    let mut answer = 0;
 
    for i in 0..n {
        let match_ = (-c[i as usize])+1;
        let mut min = i;
        let mut max = n;
        while max - min > 1 {
            let mid = (min + max) / 2;
            if c[mid as usize] < match_ {
                min = mid;
            } else {
                max = mid;
            }
        }
        answer += n - max;
    }
 
    println!("{}", answer);
}
