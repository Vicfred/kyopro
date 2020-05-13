// https://codeforces.com/problemset/problem/282/A
use std::io;

fn main() {
    let mut n = String::new();

    io::stdin().read_line(&mut n).unwrap();

    let mut n = n.trim().parse::<i32>().unwrap();

    let mut x = 0;

    while n > 0 {
        let mut statement = String::new();

        io::stdin().read_line(&mut statement).unwrap();

        if statement.contains("+") {
            x += 1;
        } else {
            x -= 1;
        }

        n -= 1;
    }

    println!("{}", x);
}
