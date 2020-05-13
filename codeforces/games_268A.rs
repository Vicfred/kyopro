// https://codeforces.com/problemset/problem/268/A
// brute force
use std::io;

fn main() {
    let mut n = String::new();

    io::stdin()
        .read_line(&mut n)
        .unwrap();

    let n: i64 = n.trim().parse().unwrap();

    let mut teams = Vec::<Vec<i64>>::new();

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

        teams.push(words);
    }

    let mut answer = 0;

    for (i, _team) in teams.clone().iter().enumerate() {
        // home uniform color
        let color = teams[i][0];
        for (j, _item) in teams.clone().iter().enumerate() {
            // guest uniform color
            if teams[j][1] == color {
                answer += 1;
            }
        }
    }

    println!("{}", answer);
}

