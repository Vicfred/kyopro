// uninhm
// https://codeforces.com/contest/705/problem/A
// recursion

use std::io::stdin;

fn recursiva(n: i32) -> String {
    if n == 1 {
        return String::from("I hate ");
    } else {
        let mut a = recursiva(n - 1);

        if n % 2 == 0 {
            a.push_str("that I love ");
            return a;
        } else {
            a.push_str("that I hate ");
            return a;
        }
    }
}

fn main() {
    let mut line = String::new();
    stdin().read_line(&mut line).expect("Error al leer");
    let line: i32 = line.trim().parse().expect("Error en el int");

    let mut a = recursiva(line);
    a.push_str("it");

    println!("{}", a);
}
