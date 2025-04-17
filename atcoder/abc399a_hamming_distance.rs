// vicfred
// https://atcoder.jp/contests/abc399/tasks/abc399_a
// implementation
use std::io;

fn main() {
    // Read and discard the first integer (n)
    let mut input = String::new();
    io::stdin().read_line(&mut input).unwrap();
    
    // Read string s
    let mut s = String::new();
    io::stdin().read_line(&mut s).unwrap();
    let s = s.trim();
    
    // Read string t
    let mut t = String::new();
    io::stdin().read_line(&mut t).unwrap();
    let t = t.trim();
    
    // Count the number of positions where characters differ
    let diff_count = s.chars().zip(t.chars())
                      .filter(|(s_char, t_char)| s_char != t_char)
                      .count();
    
    println!("{}", diff_count);
}
