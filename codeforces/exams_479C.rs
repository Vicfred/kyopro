// unihernandez22
// https://codeforces.com/contest/479/problem/C
// greedy

use std::io::stdin;

fn main() {
    let mut n = String::new();
    stdin().read_line(&mut n).unwrap();
    let n: i16 = n.trim().parse().unwrap();

    let mut input = Vec::<Vec<i32>>::new();

    for _ in 0..n {
        let mut s = String::new();
        stdin().read_line(&mut s).unwrap();
        
        let words: Vec<i32> = s
            .split_whitespace()
            .map(|x| x.parse().unwrap())
            .collect();

        input.push(words)
    }

    input.sort();

    let mut c: i32 = 0;

    for i in input {
        if i[1] < c {
            c = i[0];
        } else {
            c = i[1];
        }
    }

    println!("{}", c)
}
