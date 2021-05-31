// uninhm
// https://codeforces.com/problemset/problem/580/A

use std::io;

fn main() {
    io::stdin().read_line(&mut String::new()).unwrap();

    let mut s = String::new();
    io::stdin().read_line(&mut s).unwrap();

    let words: Vec<i64> = s.split_whitespace().map(|x| x.parse().unwrap()).collect();

    let mut iterable = words.iter();
    let mut total = 1;
    let mut max = 0;

    let mut value = iterable.next();
    let mut next = iterable.next();
    while next != None {
        if next.unwrap() >= value.unwrap() {
            total += 1;
        } else if total > max {
            max = total;
            total = 1;
        } else {
            total = 1;
        }
        value = next;
        next = iterable.next()
    }
    if max < total {
        max = total;
    }
    println!("{}", max);
}
