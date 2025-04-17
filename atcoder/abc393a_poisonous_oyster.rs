// vicfred
// https://atcoder.jp/contests/abc393/tasks/abc393_a
// implementation
use std::io;

fn main() {
    let mut input = String::new();
    
    // Read a single line with two words
    io::stdin().read_line(&mut input).unwrap();
    
    // Split input into two words and trim whitespace
    let words: Vec<&str> = input.trim().split_whitespace().collect();
    let s1 = words[0];
    let s2 = words[1];
    
    // Check conditions and print corresponding values
    if s1 == "fine" && s2 == "fine" {
        println!("4");
    } else if s1 == "fine" && s2 == "sick" {
        println!("3");
    } else if s1 == "sick" && s2 == "fine" {
        println!("2");
    } else if s1 == "sick" && s2 == "sick" {
        println!("1");
    }
}
