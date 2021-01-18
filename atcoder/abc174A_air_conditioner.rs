// uninhm
// https://atcoder.jp/contests/abc174/tasks/abc174_a
// implementation

use std::io::stdin;

fn main() {
    let mut x = String::new();
    stdin().read_line(&mut x).unwrap();
    let x: i64 = x.trim().parse().unwrap();
    println!("{}",
        if x >= 30 { "Yes" }
        else { "No" }
    );
}
