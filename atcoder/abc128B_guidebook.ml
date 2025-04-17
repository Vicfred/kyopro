(* vicfred
 * https://atcoder.jp/contests/abc128/tasks/abc128_b
 * implementation
 * *)
let n = Scanf.scanf " %d" ( + ) 0
let restaurants = Array.init n @@ fun i -> Scanf.scanf " %s %d" @@ fun a b -> a, -b, i + 1
let main = Array.sort compare restaurants; Array.iter (fun (_, _, i) -> Printf.printf "%d\n" i) restaurants

