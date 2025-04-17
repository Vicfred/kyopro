(*(* vicfred
 * https://atcoder.jp/contests/abc137/tasks/abc137_b
 * implementation
 * *)

let rec solve i n =
    if i > n then Printf.printf "\n" else
        (Printf.printf "%d " i; solve (i+1) n);;

Scanf.scanf "%d %d" @@ fun k x ->
    solve (x - k + 1) (x + k - 1);;

