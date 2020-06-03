// https://codeforces.com/problemset/problem/515/C
// greedy
use std::io;
use std::collections::HashMap;

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

    let line = line.trim();

    let mut a: Vec<char> = line.chars().collect();

    a.sort();
    a.reverse();

    let mut translate = HashMap::new();

    translate.insert('0',"");
    translate.insert('1',"");
    translate.insert('2',"2");
    translate.insert('3',"3");
    translate.insert('4',"322");
    translate.insert('5',"5");
    translate.insert('6',"53");
    translate.insert('7',"7");
    translate.insert('8',"7222");
    translate.insert('9',"7332");

    let mut ans = String::from("");

    for ch in a {
        ans.push_str(translate.get(&ch).unwrap());
    } 

    let mut fin: Vec<char> = ans.chars().collect();
    fin.sort();
    fin.reverse();

    println!("{}", fin.into_iter().collect::<String>());
}

