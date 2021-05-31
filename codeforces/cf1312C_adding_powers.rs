// uninhm
// https://codeforces.com/contest/1312/problem/C
// greedy, math

use std::io::stdin;

fn main() {
    let mut t = String::new();
    stdin().read_line(&mut t).unwrap();
    let t = t.trim().parse().unwrap();

    for _ in 0..t {
        let mut line = String::new();
        stdin().read_line(&mut line).unwrap();

        let mut words: Vec<i64> = line
            .split_whitespace()
            .map(|x| x.parse().unwrap())
            .collect();
        
        let n = words[0];
        let k = words[1];
        
        line = String::new();
        stdin().read_line(&mut line).unwrap();

        let mut a: Vec<i64> = line
            .split_whitespace()
            .map(|x| x.parse().unwrap())
            .collect();

        let mut ans = "YES";
        while a.iter().any(|&x| x != 0) {
            let b = a.iter().map(|x| x%k).filter(|&x| x != 0).collect::<Vec<i64>>();
            if b > vec![1] {
                ans = "NO";
                break;
            }
            a = a.iter().map(|x| x/k as i64).collect();
        }
        println!("{}", ans);
    }
}
