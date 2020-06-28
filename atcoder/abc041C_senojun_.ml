(* Vicfred
 * https://atcoder.jp/contests/abc041/tasks/abc041_c
 * sorting
 * *)
let n = Scanf.scanf " %d" (+) 0
let a_s = Array.init n @@ fun i -> Scanf.scanf " %d" @@ fun a -> -a, i + 1
let _ = Array.(sort compare a_s; iter (fun (_, i) -> Printf.printf "%d\n" i) a_s)

