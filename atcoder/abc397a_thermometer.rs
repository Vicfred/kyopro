use std::io;

fn main() {
    // Read input from stdin
    let mut input = String::new();
    io::stdin()
        .read_line(&mut input)
        .expect("Failed to read line");
    
    // Parse input as float
    let x: f32 = input.trim().parse().expect("Please enter a valid number");
    
    // Apply conditional logic and print result
    if x >= 38.0 {
        println!("1");
    } else if x >= 37.5 {
        println!("2");
    } else {
        println!("3");
    }
}
