// unihernandez22
// https://atcoder.jp/contests/abc181/tasks/abc181_b
// math

use std::io::stdin;

fn main() {
    let mut line = String::new();
    stdin().read_line(&mut line).unwrap();
    let n = line.trim().parse::<i64>().unwrap();

    let mut a: f64;
    let mut b: f64;
    let mut words: Vec<f64>;
    let mut ans: i64 = 0;

    for _ in 0 .. n {
        line = String::new();
        stdin().read_line(&mut line).unwrap();
        words = line
            .split_whitespace()
            .map(|x| x.parse().unwrap())
            .collect();

        a = words[0];
        b = words[1];

        ans += (((a+b)/2.0)*(b-a+1.0)) as i64;
    }

    println!("{}", ans);
}
