// Vicfred
// https://codeforces.com/problemset/problem/550/A
// greedy
use std::io;

fn main() {
    let mut s = String::new();

    io::stdin()
        .read_line(&mut s)
        .unwrap();

    let s = s.trim();

    let s: Vec<char> = s.chars().collect();

    let mut fin: usize = s.len();
    let mut found = false;

    for i in 0..s.len()-1 as usize {
        if s[i] == 'A' && s[i+1] == 'B' {
            fin = i+2;
            break;
        }
    }

    for i in fin..s.len()-1 as usize {
        if s[i] == 'B' && s[i+1] == 'A' {
            found = true;
        }
    }

    fin = s.len();

    for i in 0..s.len()-1 as usize {
        if s[i] == 'B' && s[i+1] == 'A' {
            fin = i+2;
            break;
        }
    }

    for i in fin..s.len()-1 as usize {
        if s[i] == 'A' && s[i+1] == 'B' {
            found = true;
        }
    }

    if found {
        println!("YES");
    } else {
        println!("NO");
    }
}

