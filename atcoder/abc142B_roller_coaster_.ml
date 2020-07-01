(* unihernandez22
 * https://atcoder.jp/contests/abc142/tasks/abc142_b
 * implementation, simulation
 * *)

Scanf.scanf "%d %d\n" @@ fun n k ->
    Printf.printf "%d\n" @@ Array.fold_left ( + ) 0 @@
    Array.init n @@ fun _ -> Scanf.scanf "%d " @@ fun h -> if h >= k then 1 else 0

