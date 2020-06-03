// https://codeforces.com/problemset/problem/489/C
// greedy, implementation
use std::io;
use std::char;

fn reverse(cadena: &String) -> String {
    let mut ans = String::from("");
    for ch in cadena.chars().rev() {
        ans.push(ch);
    }
    ans
}

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

    let m = words[0] as usize;
    let mut s = words[1];
    let mut _t = words[1];

    if s == 0 && m != 1 {
        println!("-1 -1");
        return;
    }

    if s == 0 && m == 1 {
        println!("0 0");
        return;
    }

    // lets construct maxima
    let mut maxima = String::from("");

    while s > 0 {
        if s >= 9 {
            maxima = format!("9{}", maxima);
            s -= 9;
        } else {
            maxima = format!("{}{}", maxima, s);
            s -= s;
        }
    }
    
    if maxima.len() > m {
        println!("-1 -1");
        return;
    }

    while maxima.len() < m {
        maxima = format!("{}0", maxima);
    }

    // lets construct minima
    let mut chars: Vec<char> = reverse(&maxima).chars().collect();
    let mut minima = String::from("");

    if chars[0] == '0' {
        chars[0] = '1';
        for i in 1..chars.len() {
            if chars[i] != '0' {
                chars[i] = char::from_digit(chars[i].to_digit(10).unwrap()-1,10).unwrap();
                break;
            }
        }
    }

    for ch in chars {
        minima.push(ch);
    }

    println!("{} {}", minima, maxima);
}

