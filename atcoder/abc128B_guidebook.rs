// Vicfred
// https://atcoder.jp/contests/abc128/tasks/abc128_b
// implementation, sorting
use std::io;
use std::cmp::Ordering;

#[derive(Eq,PartialEq)]
struct Restaurant {
    name: String,
    score: i64,
    index: i64,
}

impl PartialOrd for Restaurant {
    fn partial_cmp(&self, other: &Self) -> Option<Ordering> {
        if self.name == other.name {
            Some(self.score.cmp(&other.score).reverse())
        } else {
            Some(self.name.cmp(&other.name))
        }
    }
}

impl Ord for Restaurant {
    fn cmp(&self, other: &Restaurant) -> Ordering {
        if self.name == other.name {
            self.score.cmp(&other.score).reverse()
        } else {
            self.name.cmp(&other.name)
        }
    }
}

impl Restaurant {
    fn new(name: String, score: i64, index: i64) -> Self {
        Self{name, score, index}
    }
}

fn main() {
    let mut n = String::new();

    io::stdin()
        .read_line(&mut n)
        .unwrap();

    let n = n.trim().parse::<i64>().unwrap();

    let mut restaurants = Vec::<Restaurant>::new();
    for idx in 1..n+1 {
        let mut line = String::new();

        io::stdin()
            .read_line(&mut line)
            .unwrap();

        let words: Vec<&str> =
            line
            .split_whitespace()
            .collect();

        let name = words[0].to_string();
        let score: i64 = words[1].parse().unwrap();

        restaurants.push(Restaurant::new(name, score, idx));
    }
    restaurants.sort();

    for item in restaurants {
        println!("{}", item.index);
    }
}

