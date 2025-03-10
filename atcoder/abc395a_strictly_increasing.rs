use std::io;

fn strictly_increasing(a: &[i32]) -> bool {
    a.windows(2).all(|w| w[0] < w[1])
}

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input).unwrap();
    let _n: usize = input.trim().parse().unwrap();
    
    input.clear();
    io::stdin().read_line(&mut input).unwrap();
    let a: Vec<i32> = input.trim().split_whitespace()
                           .map(|x| x.parse().unwrap())
                           .collect();
    
    println!("{}", if strictly_increasing(&a) { "Yes" } else { "No" });
}
