// https://www.spoj.com/problems/AGGRCOW/
// binary search
use std::io;

fn check(stalls: &Vec<i64>, cows: i64, distance: i64) -> bool {
    let mut settled = 0;
    let mut iter = stalls.iter();
    let mut last = iter.next();
    settled += 1;

    //println!("Acomode una vaca en {}", last.unwrap());

    for stall in stalls {
        //println!("Intentando en {}", stall);
        if stall-last.unwrap() < distance {
            continue;
        }
        //println!("Acomode una vaca en {}", stall);
        last = Some(stall);
        settled += 1;
        if settled >= cows {
            break;
        }
    }

    //println!("acomode {} vacas de {}", settled, cows);

    if settled < cows {
        return false;
    }
    return true;
}

fn main() {
    let mut t = String::new();

    io::stdin()
        .read_line(&mut t)
        .unwrap();

    let t: i64 = t.trim().parse().unwrap();

    for _ in 0..t {

        let mut line = String::new();

        io::stdin()
            .read_line(&mut line)
            .unwrap();

        let words: Vec<i64> =
            line
            .split_whitespace()
            .map(|x| x.parse().unwrap())
            .collect();

        let n = words[0];
        let c = words[1];

        let mut x = Vec::<i64>::new();

        for _ in 0..n {
            let mut stall = String::new();

            io::stdin()
                .read_line(&mut stall)
                .unwrap();

            let stall = stall.trim().parse().unwrap();

            x.push(stall);
        }

        x.sort();

        let mut left = 0;
        let mut right = x[x.len()-1];
        let mut answer = 0;
        
        while right-left > 1 {
            let middle = (left+right)/2;
            if check(&x, c, middle) {
                left = middle;
                answer = middle;
            } else {
                right = middle;
            }
        }
        println!("{}", answer);
    }
}
