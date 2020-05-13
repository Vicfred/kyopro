// https://codeforces.com/problemset/problem/160/A
use std::io;

fn main() {
    let mut n = String::new();

    io::stdin().read_line(&mut n).unwrap();

    //let n: i64 = n.trim().parse().unwrap();

    let mut line = String::new();

    io::stdin().read_line(&mut line).unwrap();

    let mut a: Vec<i64> = line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    a.sort_by(|x, y| y.cmp(x));

    let mut total = 0;

    for item in a.clone() {
        total += item;
    }

    let mut mine = 0;
    let mut answer = 0;

    for item in a {
        let twin = total - mine;
        if mine > twin {
            break;
        } else {
            mine += item;
            answer += 1;
        }
    }

    println!("{}", answer);
}
