(* Vicfred
 * https://atcoder.jp/contests/abc135/tasks/abc135_b
 * greedy
 * *)
let n = Scanf.scanf "%d\n" ( + ) 0
let ps = Array.init n @@ fun _ -> Scanf.scanf " %d" ( + ) 0
let main =
    print_endline @@ 
    if ( >= ) 2 @@
    Array.fold_left ( + ) 0 @@
    Array.init n @@ fun i -> if (i + 1) != ps.(i) then 1 else 0
    then "YES"
    else "NO"

