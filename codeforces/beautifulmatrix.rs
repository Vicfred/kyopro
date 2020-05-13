// https://codeforces.com/problemset/problem/263/A
use std::io;

fn main() {
    let mut matrix = Vec::<Vec<i32>>::new();
    for _ in 0..5 {
        let mut line = String::new();

        io::stdin().read_line(&mut line).unwrap();

        let words: Vec<i32> = line
            .split_whitespace()
            .map(|x| x.parse().unwrap())
            .collect();

        matrix.push(words);
    }

    let mut n: i32 = 0;
    let mut m: i32 = 0;

    for i in 0..5 {
        for j in 0..5 {
            if 1 == matrix[i][j] {
                n = i as i32;
                m = j as i32;
            }
        }
    }

    println!("{}", i32::abs(n - 2) + i32::abs(m - 2));
}
