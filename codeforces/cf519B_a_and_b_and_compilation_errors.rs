// https://codeforces.com/problemset/problem/519/B
// map, sorting
use std::io;
use std::collections::HashMap;

fn print_missing(first: &HashMap<i64,i64>, second: &HashMap<i64,i64>) {
    for (key, value) in first {
        match second.get(key) {
            Some(item) => {
                if item != value {
                    println!("{}", key);
                }
            }
            None => println!("{}", key),
        }
    }
}

fn fill_map_with_vector(first: &mut HashMap<i64, i64>, values: &Vec<i64>) {
    for item in values {
        let count = first.entry(*item).or_insert(0);
        *count += 1;
    }
}

fn main() {
    let mut n = String::new();

    io::stdin()
        .read_line(&mut n)
        .unwrap();

    let _n: i64 = n.trim().parse().unwrap();

    let mut line = String::new();

    io::stdin()
        .read_line(&mut line)
        .unwrap();

    let a: Vec<i64> =
        line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    let mut line = String::new();

    io::stdin()
        .read_line(&mut line)
        .unwrap();

    let b: Vec<i64> =
        line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    let mut line = String::new();

    io::stdin()
        .read_line(&mut line)
        .unwrap();

    let c: Vec<i64> =
        line
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    let mut errors_first = HashMap::new();
    let mut errors_second = HashMap::new();
    let mut errors_third = HashMap::new();

    fill_map_with_vector(&mut errors_first, &a);
    fill_map_with_vector(&mut errors_second, &b);
    fill_map_with_vector(&mut errors_third, &c);

    print_missing(&errors_first, &errors_second);
    print_missing(&errors_second, &errors_third);
}

