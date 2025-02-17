// Vicfred
// https://atcoder.jp/contests/abc393/tasks/abc393_a
// implementation

use std::io;

fn count_abc_triplets(s: &str) -> i32 {
    let n = s.len();
    let mut triples = 0;
    
    for i in 0..n {
        for j in i + 1..n {
            for k in j + 1..n {
                if j - i != k - j {
                    continue;
                }
                if s.chars().nth(i) == Some('A') && s.chars().nth(j) == Some('B') && s.chars().nth(k) == Some('C') {
                    triples += 1;
                }
            }
        }
    }
    triples
}

fn main() {
    // Read input string
    let mut input = String::new();
    io::stdin().read_line(&mut input).expect("Failed to read line");
    let input = input.trim();
    println!("{}", count_abc_triplets(input));
}
