(*(* vicfred
 * https://atcoder.jp/contests/abc138/tasks/abc138_b
 * implementation
 * *)
let n = Scanf.scanf "%d\n" ( + ) 0
let a = Array.init n @@ fun _ -> Scanf.scanf " %f" ( +. ) 0.0
let main = Printf.printf "%.9f\n" @@
((/.) 1.0) @@
Array.fold_left (fun x y -> x +. (1.0 /. y)) 0.0 a

