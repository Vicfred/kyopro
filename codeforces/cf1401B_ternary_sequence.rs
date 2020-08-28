// Vicfred
// https://codeforces.com/contest/1401/problem/B
use std::io;

fn main() {
    let mut t = String::new();

    io::stdin()
        .read_line(&mut t)
        .unwrap();

    let t = t.trim().parse().unwrap();

    //println!("{}", t);

    for _ in 0..t {
        let mut line = String::new();

        io::stdin()
            .read_line(&mut line)
            .unwrap();

        let words: Vec<i64> =
            line
            .split_whitespace()
            .map(|x| x.parse().unwrap())
            .collect();

        let mut a = Vec::new();

        a.push(words[0]);
        a.push(words[1]);
        a.push(words[2]);

        //println!("{} {} {}", a[0], a[1], a[2]);

        let mut line = String::new();

        io::stdin()
            .read_line(&mut line)
            .unwrap();

        let words: Vec<i64> =
            line
            .split_whitespace()
            .map(|x| x.parse().unwrap())
            .collect();

        let mut b = Vec::new();

        b.push(words[0]);
        b.push(words[1]);
        b.push(words[2]);

        //println!("{} {} {}", b[0], b[1], b[2]);

        let mut ans = 0;

        if a[2] > 0 {
            let taken = std::cmp::min(b[1],a[2]);
            a[2] -= taken;
            b[1] -= taken;

            ans += taken*2;
        }

        if a[2] > 0 {
            let taken = std::cmp::min(b[2],a[2]);
            a[2] -= taken;
            b[2] -= taken;
        }

        if a[2] > 0 {
            let taken = std::cmp::min(b[0],a[2]);
            a[2] -= taken;
            b[0] -= taken;
        }

        if a[1] > 0 {
            let taken = std::cmp::min(b[1],a[1]);
            a[1] -= taken;
            b[1] -= taken;
        }

        if a[1] > 0 {
            let taken = std::cmp::min(b[0],a[1]);
            a[1] -= taken;
            b[0] -= taken;
        }

        if a[1] > 0 {
            let taken = std::cmp::min(b[2],a[1]);
            a[1] -= taken;
            b[2] -= taken;
            ans += taken*(-2);
        }

        println!("{}", ans);
    }
}

