// unihernandez22
// https://codeforces.com/contest/545/problem/D
// greedy

use std::io;

fn main() {
    io::stdin()
        .read_line(&mut String::new())
        .unwrap();

    let mut line = String::new();
 
    io::stdin()
        .read_line(&mut line)
        .unwrap();
 
    let mut words: Vec<i64> = line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    words.sort();

    let mut suma = 0;
    let mut answer = 0;
    for i in words {
        if suma <= i {
            suma += i;
            answer += 1;
        }
    }

    println!("{}", answer);
}
