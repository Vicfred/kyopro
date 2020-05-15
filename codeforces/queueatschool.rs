// https://codeforces.com/problemset/problem/266/B

use std::io;

fn main() {
    let mut line = String::new();

    io::stdin()
        .read_line(&mut line)
        .unwrap();

    let words: Vec<i64> =
        line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    let n = words[0];
    let t = words[1];

    let mut s = String::new();

    io::stdin()
        .read_line(&mut s)
        .unwrap();

    let mut s: Vec<char> =
        s.chars().collect();

    let mut time = 0;

    while time < t {
        let mut idx: usize = 0;
        loop {
            if idx as i64 >= n+1 {
                break;
            }
            if s[idx] == 'B' && s[idx+1] == 'G' {
                s[idx] = 'G';
                s[idx+1] = 'B';
                idx += 2;
            } else {
                idx += 1;
            }
        }
        time += 1;
    }

    let answer: String = s.into_iter().collect();
    print!("{}", answer);
}

