// https://codeforces.com/problemset/problem/230/A
// greedy, sorting
use std::io;

#[derive(PartialOrd, Ord, PartialEq, Eq)]
struct Pair<T> {
    x: T,
    y: T
}

impl<T> Pair<T> {
    fn new(x: T, y: T) -> Self {
        Self{x, y}
    }
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

    let s = words[0];
    let n = words[1];

    let mut dragons = Vec::<Pair<i64>>::new();

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

        dragons.push(Pair::new(words[0], words[1]));
    }

    dragons.sort();

    let mut current = s;
    let mut lost = false;

    for dragon in &dragons {
        if current > dragon.x {
            current += dragon.y;
        } else {
            lost = true;
            break;
        }
    }

    if lost {
        println!("NO");
    } else {
        println!("YES");
    }
}

