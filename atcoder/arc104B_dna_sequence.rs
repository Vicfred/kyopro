// uninhm
// https://atcoder.jp/contests/arc104/tasks/arc104_b
// string manipulation

use std::io::stdin;

fn main() {
    let mut line = String::new();
    stdin().read_line(&mut line).unwrap();
    let words: Vec<&str> = line
        .split_whitespace()
        .collect();

    let n: i64 = words[0]
        .trim().parse().unwrap();

    let s: &str = words[1].trim();

    let mut ans: i64 = 0;
    let (mut a, mut t, mut c, mut g):
        (i64, i64, i64, i64);

    let mut x: char;

    for i in 0 .. n as usize {
        a = 0; t = 0; c = 0; g = 0;
        for j in i .. n as usize {
            x = s.as_bytes()[j] as char;
            if x == 'A' {
                a += 1;
            } else if x == 'T' {
                t += 1;
            } else if x == 'C' {
                c += 1;
            } else if x == 'G' {
                g += 1;
            }

            if a == t && c == g {
                ans += 1;
            }
        }
    }
    println!("{}", ans);
}
