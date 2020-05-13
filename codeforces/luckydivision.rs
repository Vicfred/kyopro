// https://codeforces.com/problemset/problem/122/A
use std::io;

fn main() {
    let mut n = String::new();

    io::stdin().read_line(&mut n).unwrap();

    let n: i64 = n.trim().parse().unwrap();

    let lucky = [4, 7, 44, 47, 74, 444, 447, 474, 477, 744, 747, 777];

    let mut flag = false;

    for d in lucky.iter() {
        if n % d == 0 {
            flag = true;
            break;
        }
    }

    if flag {
        println!("YES");
    } else {
        println!("NO");
    }
}
