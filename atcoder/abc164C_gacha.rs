// vicfred
// https://atcoder.jp/contests/abc164/tasks/abc164_c
// set
use std::io;
use std::collections::HashSet;

fn main() {
    let mut n = String::new();

    io::stdin()
        .read_line(&mut n)
        .unwrap();

    let n: i64 = n.trim().parse().unwrap();

    let mut kinds = HashSet::new();
    for _ in 0..n {
        let mut s = String::new();

        io::stdin()
            .read_line(&mut s)
            .unwrap();

        kinds.insert(s);
    }
    
    println!("{}", kinds.len());
}

