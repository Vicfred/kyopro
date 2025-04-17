(*(* vicfred
 * https://atcoder.jp/contests/abc077/tasks/abc077_b
 * binary search
 * *)
let rec upper_bound l r p =
    if r <= 1 + l then l
    else let m = (l + r) / 2 in
    if p m
    then upper_bound m r p
    else upper_bound l m p

let main = Scanf.scanf "%d\n" @@ fun n ->
    let m = upper_bound 0 (n + 1) @@ fun m -> m * m <= n in
    Printf.printf "%d\n" @@ m * m

