// https://codeforces.com/problemset/problem/520/B
// BFS
use std::io;
use std::collections::VecDeque;

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

    // distance in the graph
    let mut distance = [1<<30;1000005];
    distance[n as usize] = 0;

    // queue for the BFS
    let mut q = VecDeque::<i64>::new();
    q.push_back(n);

    // BFS
    while !q.is_empty() {
        let u = q.pop_front().unwrap();

        // neighbors of u
        // visit them and update their distance
        let v = (2*u) as usize;
        let x = (u-1) as usize;

        if distance[v] == 1<<30 && (v as i64) < 2*m {
            distance[v] = distance[u as usize] + 1;
            q.push_back(v as i64);
        }

        if distance[x] == 1<<30 && x > 0 {
            distance[x] = distance[u as usize] + 1;
            q.push_back(u-1);
        }
    }

    println!("{}", distance[m as usize]);
}

