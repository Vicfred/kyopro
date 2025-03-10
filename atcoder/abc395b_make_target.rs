use std::io;

fn create_grid(n: usize) {
    let mut grid = vec![vec!['#'; n + 1]; n + 1];
    
    for i in 1..=n {
        let j = n + 1 - i;
        if i <= j {
            for k in i..=j {
                for l in i..=j {
                    grid[k][l] = if i % 2 == 1 { '#' } else { '.' };
                }
            }
        }
    }
    
    for i in 1..=n {
        println!("{}", grid[i][1..].iter().collect::<String>());
    }
}

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input).unwrap();
    let n: usize = input.trim().parse().unwrap();
    create_grid(n);
}
