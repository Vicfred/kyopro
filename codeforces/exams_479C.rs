// https://codeforces.com/problemset/problem/479/C
// greedy
use std::io;

fn main() {
    let mut n = String::new();

    io::stdin()
        .read_line(&mut n)
        .unwrap();

    let n: i64 = n.trim().parse().unwrap();

    let mut exams = Vec::<Vec<i64>>::new();

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

        exams.push(words);
    }

    exams.sort();

    let mut last = -1;
    for exam in exams {
        if exam[1] >= last {
            last = exam[1];
        } else {
            last = exam[0];
        }
    }

    println!("{}", last);
}
