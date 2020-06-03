// https://codeforces.com/problemset/problem/469/A
// implementation, simulation
use std::io;

fn main() {
    let mut levels = [0; 101];

    let mut n = String::new();

    io::stdin()
        .read_line(&mut n)
        .unwrap();

    let n: i64 = n.trim().parse().unwrap();

    let mut alice = String::new();

    io::stdin()
        .read_line(&mut alice)
        .unwrap();

    let alice: String = alice.chars().skip(2).collect();

    let alice: Vec<i64> =
        alice
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    for x in alice {
        levels[x as usize] = 1;
    }

    let mut bob = String::new();

    io::stdin()
        .read_line(&mut bob)
        .unwrap();
    
    let bob: String = bob.chars().skip(2).collect();

    let bob: Vec<i64> =
        bob
        .split_whitespace()
        .map(|x| x.parse().unwrap())
        .collect();

    for x in bob {
        levels[x as usize] = 1;
    }

    let mut flag = true;

    for x in 1..n+1 {
        if levels[x as usize] == 0 {
            flag = false;
            break;
        }
    }

    if flag {
        println!("I become the guy.");
    } else {
        println!("Oh, my keyboard!");
    }
}

