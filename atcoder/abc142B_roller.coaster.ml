(* vicfred
 * https://atcoder.jp/contests/abc142/tasks/abc142_b
 * implementation, simulation
 * *)
let n, k = Scanf.scanf "%d %d\n" @@ fun n k -> n, k
let cs = Array.init n @@ fun _ -> Scanf.scanf "%d " @@ fun h -> if h >= k then 1 else 0
let main = Printf.printf "%d\n" @@ Array.fold_left ( + ) 0 cs 

