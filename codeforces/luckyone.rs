// tuenti 2020 problem 2
use std::io;

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
        let mut first = true;

        let mut best = -1;

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

            if first {
                best = if r == 1 {a} else {b};
                first = false;
            }

            if r == 1 && b == best {
                best = a;
            }
            else if r == 0 && a == best {
                best = b;
            }
        }
        println!("Case #{}: {}", kase, best);
    }
}
