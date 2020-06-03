//https://codeforces.com/problemset/problem/785/A
// implementation, map
use std::io;
use std::collections::HashMap;

fn main() {
    let mut n = String::new();

    io::stdin()
        .read_line(&mut n)
        .unwrap();

    let n: i64 = n.trim().parse().unwrap();

    let mut answer = 0;

    let mut polyhedrons = HashMap::new();
    polyhedrons.insert("Tetrahedron", 4);
    polyhedrons.insert("Cube", 6);
    polyhedrons.insert("Octahedron", 8);
    polyhedrons.insert("Dodecahedron", 12);
    polyhedrons.insert("Icosahedron", 20);

    for _ in 0..n {
        let mut line = String::new();

        io::stdin()
            .read_line(&mut line)
            .unwrap();

        let line = line.trim();

        answer += polyhedrons.get(line).unwrap();
    }

    println!("{}", answer);
}
