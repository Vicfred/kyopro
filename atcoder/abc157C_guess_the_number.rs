// uninhm
// https://atcoder.jp/contests/abc157/tasks/abc157_c
// implementation

use std::io::stdin;
use std::collections::HashMap;

fn digits(mut n: i64) -> Vec<i64> {
    let mut ans = Vec::<i64>::new();
    while n > 0 {
        ans.push(n % 10);
        n /= 10;
    }
    ans.reverse();
    return ans;
}

fn main() {
    let mut line = String::new();
    stdin().read_line(&mut line).unwrap();

    let words: Vec<i64> = line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    let n = words[0];
    let m = words[1];

    let mut value = HashMap::new();
    let mut impossible = false;

    for _ in 0..m {
        let mut line = String::new();
        stdin().read_line(&mut line).unwrap();

        let words: Vec<i64> = line
            .split_whitespace()
            .map(|x| x.parse().unwrap())
            .collect();
        
        let s = words[0];
        let c = words[1];

        if value.contains_key(&s) && value.get(&s).unwrap() != &c {
            impossible = true;
        } else {
            value.insert(s, c);
        }
    }
    if value.contains_key(&1) && value.get(&1).unwrap() == &0 && n < 1 {
        impossible = true;
    }

    if impossible {
        println!("-1");
        return;
    }

    if n == 1 && m == 0 {
        println!("0");
        return;
    }
    
    if n == 1 && m == 1 && value.contains_key(&1) && value.get(&1).unwrap() == &0 {
        println!("0");
        return;
    }

    let base: i64 = 10;
    for num in base.pow((n-1) as u32)..base.pow(n as u32) {
        let mut digit = vec![0];
        digit.append(&mut digits(num));
        let mut valid = true;
        for i in 1..=n {
            if value.contains_key(&i) && value.get(&i).unwrap() != &digit[i as usize] {
                valid = false;
            }
        }
        if valid {
            println!("{}", num);
            return;
        }
    }
    println!("-1");
}
