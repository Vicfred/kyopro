// uninhm
// https://codeforces.com/problemset/problem/479/A
// implementation

use std::io;

fn main() {
    let (mut a, mut b, mut c) = (String::new(), String::new(), String::new());
    io::stdin().read_line(&mut a).unwrap();
    io::stdin().read_line(&mut b).unwrap();
    io::stdin().read_line(&mut c).unwrap();
    let a: i64 = a.trim().parse().unwrap();
    let b: i64 = b.trim().parse().unwrap();
    let c: i64 = c.trim().parse().unwrap();

    let posibles: [i64; 6] = [
        (a + b) * c,
        a * (b + c),
        a + b + c,
        a * b + c,
        a + b * c,
        a * b * c,
    ];

    let max = posibles.iter().max().unwrap();

    println!("{}", max);
}
