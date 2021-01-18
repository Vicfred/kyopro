// uninhm
// https://codeforces.com/problemset/problem/401/C
// simulation

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

    let mut n = words[0];
    let mut m = words[1];

    let mut ans = String::new();

    while m > n && n > 0 && m > 0 {
        ans.push_str("110");
        n -= 1;
        m -= 2;
    }
    
    if m >= n {
        while n > 0 && m > 0 {
            ans.push_str("10");
            n -= 1;
            m -= 1;
        }
    } else {
        while n > 0 && m > 0 {
            ans.push_str("01");
            n -= 1;
            m -= 1;
        }
    }

    if n > 1 || m > 2 {
        println!("-1");
        return;
    }

    print!("{}", ans);
    for _ in 0..m {
        print!("1");
    }
    for _ in 0..n {
        print!("0");
    }
    println!();
}

