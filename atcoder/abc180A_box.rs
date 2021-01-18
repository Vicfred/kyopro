// uninhm
// https://atcoder.jp/contests/abc180/tasks/abc180_a
// implementation

use std::io::stdin;

fn main() {
    let mut line = String::new();
    stdin().read_line(&mut line).unwrap();

    let w: Vec<i64> = line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();
    
    println!("{}", w[0] - w[1] + w[2]);
}
