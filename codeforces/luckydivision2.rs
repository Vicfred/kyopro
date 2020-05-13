// https://codeforces.com/problemset/problem/122/A
use std::io;

fn is_lucky(n: u32) -> bool {
    let decimal = format!("{}", n);
    decimal.chars().all(|x| x == '4' || x == '7')
}

fn main() {
    let mut n = String::new();

    io::stdin().read_line(&mut n).unwrap();

    let n: i64 = n.trim().parse().unwrap();

    let mut lucky = Vec::<i64>::new();

    for i in 1..1001 {
        if is_lucky(i) {
            lucky.push(i as i64);
        }
    }

    let mut flag = false;

    for d in lucky {
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
