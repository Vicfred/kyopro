// tuenti 2020 problem 2
use std::io;
use std::collections::HashSet;

fn main() {
    let mut c = String::new();

    io::stdin()
        .read_line(&mut c)
        .unwrap();

    let c: i64 = c.trim().parse().unwrap();

    for kase in 1..=c {
        let mut n = String::new();

        io::stdin()
            .read_line(&mut n)
            .unwrap();

        let n: i64 = n.trim().parse().unwrap();

        let mut losers = HashSet::new();
        let mut maxima = 0;

        for _ in 0..n {
            let mut line = String::new();

            io::stdin()
                .read_line(&mut line)
                .unwrap();

            let words: Vec<i64> =
                line
                .split_whitespace()
                .map(|x| x.parse().unwrap())
                .collect();

            let a = words[0];
            let b = words[1];
            let r = words[2];

            maxima = std::cmp::max(a,std::cmp::max(b,maxima));

            losers.insert(if r == 1 {b} else {a});
        }
        
        for player in 1..=maxima {
            if !losers.contains(&player) {
                println!("Case #{}: {}", kase, player);
                break;
            }
        }
    }
}
