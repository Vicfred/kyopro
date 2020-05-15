// https://codeforces.com/problemset/problem/69/A
use std::io;

fn main() {
    let mut n = String::new();

    io::stdin().read_line(&mut n).unwrap();

    let n: usize = n.trim().parse().unwrap();

    let mut x = 0;
    let mut y = 0;
    let mut z = 0;

    for _ in 0..n {
        let mut coords = String::new();

        io::stdin().read_line(&mut coords).unwrap();

        let coords: Vec<i64> = coords
            .split_whitespace()
            .map(|x| x.parse().unwrap())
            .collect();

        x += coords[0];
        y += coords[1];
        z += coords[2];
    }

    if x == 0 && y == 0 && z == 0 {
        println!("YES");
    } else {
        println!("NO");
    }
}
