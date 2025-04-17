// vicfred
// https://atcoder.jp/contests/abc166/tasks/abc166_c
use std::io;

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

    let n = words[0];
    let m = words[1];

    let mut line = String::new();

    io::stdin()
        .read_line(&mut line)
        .unwrap();

    let h: Vec<i64> =
        line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();


    let mut graph = [0;100005];

    for _ in 0..m {
        let mut line = String::new();

        io::stdin()
            .read_line(&mut line)
            .unwrap();

        let words: Vec<usize> =
            line
            .split_whitespace()
            .map(|x| x.parse().unwrap())
            .collect();

        let a = words[0]-1;
        let b = words[1]-1;

        if h[a] < h[b] {
            graph[a] = 1;
        } else if h[b] < h[a] {
            graph[b] = 1;
        } else {
            graph[a] = 1;
            graph[b] = 1;
        }
    }

    let mut answer = 0;
    for item in 0..n as usize {
        if graph[item] == 0 {
            answer += 1;
        }
    }

    println!("{}", answer);
}

