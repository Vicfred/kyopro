// vicfred
// https://atcoder.jp/contests/abc157/tasks/abc157_b
// simulation
use std::io;
use std::collections::HashSet;

fn main() {
    let mut A = Vec::<Vec<i64>>::new();
    for _ in 0..3 {
        let mut line = String::new();

        io::stdin()
            .read_line(&mut line)
            .unwrap();

        let words: Vec<i64> =
            line
            .split_whitespace()
            .map(|x| x.parse().unwrap())
            .collect();

        A.push(words);
    }

    let mut N = String::new();

    io::stdin()
        .read_line(&mut N)
        .unwrap();

    let N: i64 = N.trim().parse().unwrap();

    let mut bingo = HashSet::new();

    for _ in 0..N {
        let mut b = String::new();

        io::stdin()
            .read_line(&mut b)
            .unwrap();

        let b: i64 = b.trim().parse().unwrap();
        bingo.insert(b);
    }

    let row1: HashSet<_> = [A[0][0], A[0][1], A[0][2]].iter().cloned().collect();
    let row2: HashSet<_> = [A[1][0], A[1][1], A[1][2]].iter().cloned().collect();
    let row3: HashSet<_> = [A[2][0], A[2][1], A[2][2]].iter().cloned().collect();
    let col1: HashSet<_> = [A[0][0], A[1][0], A[2][0]].iter().cloned().collect();
    let col2: HashSet<_> = [A[0][1], A[1][1], A[2][1]].iter().cloned().collect();
    let col3: HashSet<_> = [A[0][2], A[1][2], A[2][2]].iter().cloned().collect();
    let dia1: HashSet<_> = [A[0][0], A[1][1], A[2][2]].iter().cloned().collect();
    let dia2: HashSet<_> = [A[0][2], A[1][1], A[2][0]].iter().cloned().collect();

    let mut ans = false;
    if row1.is_subset(&bingo) ||
        row2.is_subset(&bingo) ||
        row3.is_subset(&bingo) ||
        col1.is_subset(&bingo) ||
        col2.is_subset(&bingo) ||
        col3.is_subset(&bingo) ||
        dia1.is_subset(&bingo) ||
        dia2.is_subset(&bingo) {
        ans = true;
    }

    if ans {
        println!("Yes");
    } else {
        println!("No");
    }
}

