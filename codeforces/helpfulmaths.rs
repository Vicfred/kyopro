// https://codeforces.com/problemset/problem/339/A
use std::io;

fn main() {
    let mut input = String::new();

    io::stdin().read_line(&mut input).unwrap();

    let mut numbers = [0; 4];

    for letter in input.chars() {
        match letter {
            '1' => numbers[1] += 1,
            '2' => numbers[2] += 1,
            '3' => numbers[3] += 1,
            _ => {}
        }
    }

    let mut answer = String::new();

    for _ in 0..numbers[1] {
        answer.push('1');
        answer.push('+');
    }
    for _ in 0..numbers[2] {
        answer.push('2');
        answer.push('+');
    }
    for _ in 0..numbers[3] {
        answer.push('3');
        answer.push('+');
    }

    println!("{}", &answer[..answer.len() - 1]);
}
