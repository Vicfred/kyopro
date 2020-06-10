// unihernandez22
// https://atcoder.jp/contests/abc152/tasks/abc152_b
// implementation

use std::io::stdin;

fn main() {
    let mut s = String::new();
    stdin().read_line(&mut s).unwrap();

    let words: Vec<char> = s
        .trim()
        .chars()
        .filter(|&x| x != ' ')
        .collect();

    let mut ans: [String; 2] = [String::new(), String::new()];

    for _ in 0..words[1].to_digit(10).unwrap() {
        ans[0].push(words[0]);
    }
    for _ in 0..words[0].to_digit(10).unwrap() {
        ans[1].push(words[1]);
    }
    ans.sort();

    println!("{}", ans[0]);
}
