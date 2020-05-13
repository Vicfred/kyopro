// https://codeforces.com/problemset/problem/144/A
// implementation, greedy
use std::io;

fn main() {
    let mut n = String::new();
    
    io::stdin()
        .read_line(&mut n)
        .unwrap();

    let n: usize = n.trim().parse().unwrap();

    let mut line = String::new();

    io::stdin()
        .read_line(&mut line)
        .unwrap();

    let words: Vec<i64> =
        line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    let mut maxima = -1;
    let mut minima = 101;

    for item in &words {
        if *item > maxima {
            maxima = *item;
        }
        if *item < minima {
            minima = *item;
        }
    }

    let mut answer = 0;

    for (idx, item) in words.clone().into_iter().enumerate() {
        if item == maxima {
            answer += idx;
            break;
        }
    }

    for (idx, item) in words.clone().into_iter().rev().enumerate() {
        if item == minima {
            answer += idx;
            break;
        }
    }

    if answer >= n {
        answer -= 1;
    }

    println!("{}", answer);
}

