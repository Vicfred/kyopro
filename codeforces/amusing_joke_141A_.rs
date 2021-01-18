// uninhm
// https://codeforces.com/problemset/problem/141/A
// implementation

use std::io::stdin;

fn main() {
    let mut inputs: [String; 3] = [String::new(), String::new(), String::new()];
    for i in 0..3 {
        stdin().read_line(&mut inputs[i]).unwrap();
    }

    let mut a: Vec<char> = Vec::new();
    let mut b: Vec<char> = inputs[2].trim().chars().collect();

    for i in inputs[0].trim().chars() {
        a.push(i);
    }

    for i in inputs[1].trim().chars() {
        a.push(i);
    }

    a.sort();
    b.sort();

    println!("{}", if a == b { "YES" } else { "NO" });
}
