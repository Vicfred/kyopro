// unihernandez22
// https://codeforces.com/problemset/problem/515/C
// greedy

use std::io::stdin;

fn main() {
    stdin().read_line(&mut String::new());

    let mut a = String::new();
    stdin().read_line(&mut a).unwrap();
    let a = a.trim();

    let a: Vec<char> = a
        .chars()
        .filter(|x| x != &'0' && x != &'1')
        .collect();

    let mut c = String::new();

    for i in a {
        let b = i.to_string();
        let b = b.as_str();
        c.push_str( match i {
            '4' => "223",
            '6' => "53",
            '8' => "7222",
            '9' => "2337",
            _ => b
        });
    }

    let mut c: Vec<u32> = c.chars().map(|x| x.to_digit(10 as u32).unwrap()).collect();

    c.sort();
    c.reverse();

    for i in c {
        print!("{}", i);
    }
    println!();
}
