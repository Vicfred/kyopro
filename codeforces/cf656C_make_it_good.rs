// https://codeforces.com/problemset/problem/1385/C
use std::io::stdin;

fn find_good_vector(n: usize, a: Vec<u64>) -> Vec<u64> {
    let mut peek: usize = n - 1;
    for i in (0..n - 1).rev() {
        if a[i] < a[i+1] {
            break;
        }
        peek = i;
    }

    let mut pos = peek;
    for i in (0..peek).rev() {
        if a[i] > a[i+1] {
            break;
        }
        pos = i;
    }

    return (&a[0..pos]).to_vec();
}

fn main() {
    let mut aux = String::new();
    stdin().read_line(&mut aux).unwrap();

    let t: usize = aux.trim().parse().unwrap();
    for _test in 0..t {
        let mut case_data: [String; 2] = [String::new(), String::new()];
        for i in 0..2 {
            stdin().read_line(&mut case_data[i]).unwrap();
        }
        let n: usize = case_data[0].trim().parse().unwrap();
        let a: Vec<u64> = case_data[1].split_whitespace()
                                      .map(|x| x.parse().unwrap())
                                      .collect();
        let result = find_good_vector(n, a).len();
        println!("{}", result);
    }
}
